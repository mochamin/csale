{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit200;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZPlainPostgreSqlDriver, _Unit139;

type
  TZPostgreSQLStatement = class(TZAbstractStatement)
  public
    f48:dword;//f48
    f4C:IZPostgreSQLPlainDriver;//f4C
    f50:byte;//f50
    destructor Destroy; virtual;
    //procedure sub_005141B0(?:?; ?:?); virtual;
    //function sub_00514268(?:?):?; virtual;
    //function sub_00514354(?:?):?; virtual;
    //constructor Create(?:TZPostgreSQLStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;
  TZPostgreSQLPreparedStatement = class(TZEmulatedPreparedStatement)
  public
    f6C:dword;//f6C
    f70:IZPostgreSQLPlainDriver;//f70
    f74:byte;//f74
    //procedure sub_00514598(?:?); virtual;
    //procedure sub_005145D0(?:?; ?:?); virtual;
    //constructor Create(?:TZPostgreSQLPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;
  TZPostgreSQLCachedResolver = class(TZGenericCachedResolver)
  public
    //function sub_00514B0C(?:?):?; virtual;
  end;

implementation

{$R *.DFM}

//00513F4C
//constructor TZPostgreSQLStatement.Create(?:TZPostgreSQLStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 00513F4C    push       ebp
 00513F4D    mov        ebp,esp
 00513F4F    push       0
 00513F51    push       0
 00513F53    push       0
 00513F55    push       0
 00513F57    push       ebx
 00513F58    push       esi
 00513F59    test       dl,dl
>00513F5B    je         00513F65
 00513F5D    add        esp,0FFFFFFF0
 00513F60    call       @ClassCreate
 00513F65    mov        dword ptr [ebp-4],ecx
 00513F68    mov        ebx,edx
 00513F6A    mov        esi,eax
 00513F6C    mov        eax,dword ptr [ebp-4]
 00513F6F    call       @IntfAddRef
 00513F74    mov        eax,dword ptr [ebp+10]
 00513F77    call       @IntfAddRef
 00513F7C    xor        eax,eax
 00513F7E    push       ebp
 00513F7F    push       514033
 00513F84    push       dword ptr fs:[eax]
 00513F87    mov        dword ptr fs:[eax],esp
 00513F8A    mov        eax,dword ptr [ebp+0C]
 00513F8D    push       eax
 00513F8E    mov        ecx,dword ptr [ebp+10]
 00513F91    xor        edx,edx
 00513F93    mov        eax,esi
 00513F95    call       004DFC94
 00513F9A    mov        eax,dword ptr [ebp+8]
 00513F9D    mov        dword ptr [esi+48],eax; TZPostgreSQLStatement.?f48:dword
 00513FA0    lea        eax,[esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00513FA3    mov        edx,dword ptr [ebp-4]
 00513FA6    call       @IntfCopy
 00513FAB    mov        byte ptr [esi+2D],1; TZPostgreSQLStatement.?f2D:byte
 00513FAF    lea        ecx,[ebp-8]
 00513FB2    mov        eax,dword ptr [esi+3C]; TZPostgreSQLStatement.?f3C:dword
 00513FB5    mov        edx,514064; 'oidasblob'
 00513FBA    call       TStrings.GetValue
 00513FBF    cmp        dword ptr [ebp-8],0
>00513FC3    je         00513FE2
 00513FC5    lea        ecx,[ebp-0C]
 00513FC8    mov        eax,dword ptr [esi+3C]; TZPostgreSQLStatement.?f3C:dword
 00513FCB    mov        edx,514064; 'oidasblob'
 00513FD0    call       TStrings.GetValue
 00513FD5    mov        eax,dword ptr [ebp-0C]
 00513FD8    call       004BEFC0
 00513FDD    mov        byte ptr [esi+50],al; TZPostgreSQLStatement.?f50:byte
>00513FE0    jmp        00514000
 00513FE2    lea        eax,[ebp-10]
 00513FE5    mov        edx,dword ptr [ebp+10]
 00513FE8    mov        ecx,514070; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 00513FED    call       @IntfCast
 00513FF2    mov        eax,dword ptr [ebp-10]
 00513FF5    mov        edx,dword ptr [eax]
 00513FF7    call       dword ptr [edx+94]
 00513FFD    mov        byte ptr [esi+50],al; TZPostgreSQLStatement.?f50:byte
 00514000    xor        eax,eax
 00514002    pop        edx
 00514003    pop        ecx
 00514004    pop        ecx
 00514005    mov        dword ptr fs:[eax],edx
 00514008    push       51403A
 0051400D    lea        eax,[ebp-10]
 00514010    call       @IntfClear
 00514015    lea        eax,[ebp-0C]
 00514018    mov        edx,2
 0051401D    call       @LStrArrayClr
 00514022    lea        eax,[ebp-4]
 00514025    call       @IntfClear
 0051402A    lea        eax,[ebp+10]
 0051402D    call       @IntfClear
 00514032    ret
<00514033    jmp        @HandleFinally
<00514038    jmp        0051400D
 0051403A    mov        eax,esi
 0051403C    test       bl,bl
>0051403E    je         0051404F
 00514040    call       @AfterConstruction
 00514045    pop        dword ptr fs:[0]
 0051404C    add        esp,0C
 0051404F    mov        eax,esi
 00514051    pop        esi
 00514052    pop        ebx
 00514053    mov        esp,ebp
 00514055    pop        ebp
 00514056    ret        0C
*}
//end;

//00514080
destructor TZPostgreSQLStatement.Destroy;
begin
{*
 00514080    push       ebp
 00514081    mov        ebp,esp
 00514083    push       ebx
 00514084    push       esi
 00514085    call       @BeforeDestruction
 0051408A    mov        ebx,edx
 0051408C    mov        esi,eax
 0051408E    mov        edx,ebx
 00514090    and        dl,0FC
 00514093    mov        eax,esi
 00514095    call       TZAbstractStatement.Destroy
 0051409A    test       bl,bl
>0051409C    jle        005140A5
 0051409E    mov        eax,esi
 005140A0    call       @ClassDestroy
 005140A5    pop        esi
 005140A6    pop        ebx
 005140A7    pop        ebp
 005140A8    ret
*}
end;

//005140B0
//procedure sub_005140B0(?:TZPostgreSQLStatement; ?:?; ?:?; ?:?);
//begin
{*
 005140B0    push       ebp
 005140B1    mov        ebp,esp
 005140B3    add        esp,0FFFFFFF8
 005140B6    push       ebx
 005140B7    push       esi
 005140B8    push       edi
 005140B9    xor        ebx,ebx
 005140BB    mov        dword ptr [ebp-8],ebx
 005140BE    mov        dword ptr [ebp-4],ecx
 005140C1    mov        edi,edx
 005140C3    mov        ebx,eax
 005140C5    xor        eax,eax
 005140C7    push       ebp
 005140C8    push       51419E
 005140CD    push       dword ptr fs:[eax]
 005140D0    mov        dword ptr fs:[eax],esp
 005140D3    mov        eax,ebx
 005140D5    test       eax,eax
>005140D7    je         005140DC
 005140D9    sub        eax,0FFFFFFBC
 005140DC    push       eax
 005140DD    push       edi
 005140DE    mov        eax,dword ptr [ebx+48]; TZPostgreSQLStatement.?f48:dword
 005140E1    push       eax
 005140E2    mov        eax,dword ptr [ebp-4]
 005140E5    push       eax
 005140E6    mov        ecx,dword ptr [ebx+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005140E9    mov        dl,1
 005140EB    mov        eax,[005121B4]; TZPostgreSQLResultSet
 005140F0    call       TZPostgreSQLResultSet.Create; TZPostgreSQLResultSet.Create
 005140F5    mov        esi,eax
 005140F7    xor        edx,edx
 005140F9    mov        eax,esi
 005140FB    call       004D4578
 00514100    mov        eax,ebx
 00514102    mov        edx,dword ptr [eax]
 00514104    call       dword ptr [edx+58]; TZPostgreSQLStatement.sub_004DFF74
 00514107    cmp        al,1
>00514109    jne        00514177
 0051410B    push       edi
 0051410C    push       0
 0051410E    mov        ecx,esi
 00514110    test       ecx,ecx
>00514112    je         00514117
 00514114    sub        ecx,0FFFFFFC8
 00514117    mov        dl,1
 00514119    mov        eax,[004D060C]; TZCachedResultSet
 0051411E    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 00514123    mov        edi,eax
 00514125    mov        dl,1
 00514127    mov        eax,edi
 00514129    call       004D4578
 0051412E    lea        edx,[ebp-8]
 00514131    mov        eax,esi
 00514133    mov        ecx,dword ptr [eax]
 00514135    call       dword ptr [ecx+0C4]; TZPostgreSQLResultSet.sub_004D4E80
 0051413B    mov        eax,dword ptr [ebp-8]
 0051413E    push       eax
 0051413F    mov        ecx,ebx
 00514141    test       ecx,ecx
>00514143    je         00514148
 00514145    sub        ecx,0FFFFFFBC
 00514148    mov        dl,1
 0051414A    mov        eax,[00513ED4]; TZPostgreSQLCachedResolver
 0051414F    call       TZGenericCachedResolver.Create; TZPostgreSQLCachedResolver.Create
 00514154    mov        edx,eax
 00514156    test       edx,edx
>00514158    je         0051415D
 0051415A    sub        edx,0FFFFFFD0
 0051415D    mov        eax,edi
 0051415F    call       004D0BDC
 00514164    mov        eax,dword ptr [ebp+8]
 00514167    mov        edx,edi
 00514169    test       edx,edx
>0051416B    je         00514170
 0051416D    sub        edx,0FFFFFFC8
 00514170    call       @IntfCopy
>00514175    jmp        00514188
 00514177    mov        eax,dword ptr [ebp+8]
 0051417A    mov        edx,esi
 0051417C    test       edx,edx
>0051417E    je         00514183
 00514180    sub        edx,0FFFFFFC8
 00514183    call       @IntfCopy
 00514188    xor        eax,eax
 0051418A    pop        edx
 0051418B    pop        ecx
 0051418C    pop        ecx
 0051418D    mov        dword ptr fs:[eax],edx
 00514190    push       5141A5
 00514195    lea        eax,[ebp-8]
 00514198    call       @IntfClear
 0051419D    ret
<0051419E    jmp        @HandleFinally
<005141A3    jmp        00514195
 005141A5    pop        edi
 005141A6    pop        esi
 005141A7    pop        ebx
 005141A8    pop        ecx
 005141A9    pop        ecx
 005141AA    pop        ebp
 005141AB    ret        4
*}
//end;

//005141B0
//procedure sub_005141B0(?:?; ?:?);
//begin
{*
 005141B0    push       ebp
 005141B1    mov        ebp,esp
 005141B3    add        esp,0FFFFFFF4
 005141B6    push       ebx
 005141B7    push       esi
 005141B8    push       edi
 005141B9    xor        ebx,ebx
 005141BB    mov        dword ptr [ebp-0C],ebx
 005141BE    mov        dword ptr [ebp-4],ecx
 005141C1    mov        esi,edx
 005141C3    mov        ebx,eax
 005141C5    xor        eax,eax
 005141C7    push       ebp
 005141C8    push       51425A
 005141CD    push       dword ptr fs:[eax]
 005141D0    mov        dword ptr fs:[eax],esp
 005141D3    mov        eax,dword ptr [ebp-4]
 005141D6    call       @IntfClear
 005141DB    mov        eax,esi
 005141DD    call       @LStrToPChar
 005141E2    mov        ecx,eax
 005141E4    mov        edx,dword ptr [ebx+48]; TZPostgreSQLStatement.?f48:dword
 005141E7    mov        eax,dword ptr [ebx+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005141EA    mov        edi,dword ptr [eax]
 005141EC    call       dword ptr [edi+70]
 005141EF    mov        dword ptr [ebp-8],eax
 005141F2    push       3
 005141F4    push       esi
 005141F5    mov        eax,dword ptr [ebp-8]
 005141F8    push       eax
 005141F9    mov        ecx,dword ptr [ebx+48]; TZPostgreSQLStatement.?f48:dword
 005141FC    mov        edx,dword ptr [ebx+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005141FF    mov        eax,dword ptr [ebx+38]; TZPostgreSQLStatement.?f38:IZConnection
 00514202    call       00511EF0
 00514207    push       esi
 00514208    lea        edx,[ebp-0C]
 0051420B    mov        eax,dword ptr [ebx+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 0051420E    mov        ecx,dword ptr [eax]
 00514210    call       dword ptr [ecx+0C]
 00514213    mov        ecx,dword ptr [ebp-0C]
 00514216    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0051421B    mov        eax,dword ptr [eax]
 0051421D    mov        dl,3
 0051421F    mov        edi,dword ptr [eax]
 00514221    call       dword ptr [edi+3C]
 00514224    cmp        dword ptr [ebp-8],0
>00514228    je         0051423C
 0051422A    mov        eax,dword ptr [ebp-4]
 0051422D    push       eax
 0051422E    mov        ecx,dword ptr [ebp-8]
 00514231    mov        edx,esi
 00514233    mov        eax,ebx
 00514235    call       005140B0
>0051423A    jmp        00514244
 0051423C    mov        eax,dword ptr [ebp-4]
 0051423F    call       @IntfClear
 00514244    xor        eax,eax
 00514246    pop        edx
 00514247    pop        ecx
 00514248    pop        ecx
 00514249    mov        dword ptr fs:[eax],edx
 0051424C    push       514261
 00514251    lea        eax,[ebp-0C]
 00514254    call       @LStrClr
 00514259    ret
<0051425A    jmp        @HandleFinally
<0051425F    jmp        00514251
 00514261    pop        edi
 00514262    pop        esi
 00514263    pop        ebx
 00514264    mov        esp,ebp
 00514266    pop        ebp
 00514267    ret
*}
//end;

//00514268
//function sub_00514268(?:?):?;
//begin
{*
 00514268    push       ebp
 00514269    mov        ebp,esp
 0051426B    add        esp,0FFFFFFF0
 0051426E    push       ebx
 0051426F    push       esi
 00514270    push       edi
 00514271    xor        ecx,ecx
 00514273    mov        dword ptr [ebp-10],ecx
 00514276    mov        dword ptr [ebp-0C],ecx
 00514279    mov        dword ptr [ebp-4],edx
 0051427C    mov        esi,eax
 0051427E    xor        eax,eax
 00514280    push       ebp
 00514281    push       514341
 00514286    push       dword ptr fs:[eax]
 00514289    mov        dword ptr fs:[eax],esp
 0051428C    mov        dword ptr [ebp-8],0FFFFFFFF
 00514293    mov        eax,dword ptr [ebp-4]
 00514296    call       @LStrToPChar
 0051429B    mov        ecx,eax
 0051429D    mov        edx,dword ptr [esi+48]; TZPostgreSQLStatement.?f48:dword
 005142A0    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005142A3    mov        ebx,dword ptr [eax]
 005142A5    call       dword ptr [ebx+70]
 005142A8    mov        edi,eax
 005142AA    push       3
 005142AC    mov        eax,dword ptr [ebp-4]
 005142AF    push       eax
 005142B0    push       edi
 005142B1    mov        ecx,dword ptr [esi+48]; TZPostgreSQLStatement.?f48:dword
 005142B4    mov        edx,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005142B7    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 005142BA    call       00511EF0
 005142BF    mov        eax,dword ptr [ebp-4]
 005142C2    push       eax
 005142C3    lea        edx,[ebp-0C]
 005142C6    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005142C9    mov        ecx,dword ptr [eax]
 005142CB    call       dword ptr [ecx+0C]
 005142CE    mov        ecx,dword ptr [ebp-0C]
 005142D1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005142D6    mov        eax,dword ptr [eax]
 005142D8    mov        dl,3
 005142DA    mov        ebx,dword ptr [eax]
 005142DC    call       dword ptr [ebx+3C]
 005142DF    test       edi,edi
>005142E1    je         00514312
 005142E3    mov        edx,edi
 005142E5    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005142E8    mov        ecx,dword ptr [eax]
 005142EA    call       dword ptr [ecx+0DC]
 005142F0    lea        edx,[ebp-10]
 005142F3    call       StrPas
 005142F8    mov        eax,dword ptr [ebp-10]
 005142FB    xor        edx,edx
 005142FD    call       StrToIntDef
 00514302    mov        dword ptr [ebp-8],eax
 00514305    mov        edx,edi
 00514307    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 0051430A    mov        ecx,dword ptr [eax]
 0051430C    call       dword ptr [ecx+0EC]
 00514312    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 00514315    mov        edx,dword ptr [eax]
 00514317    call       dword ptr [edx+34]
 0051431A    test       al,al
>0051431C    je         00514326
 0051431E    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 00514321    mov        edx,dword ptr [eax]
 00514323    call       dword ptr [edx+38]
 00514326    xor        eax,eax
 00514328    pop        edx
 00514329    pop        ecx
 0051432A    pop        ecx
 0051432B    mov        dword ptr fs:[eax],edx
 0051432E    push       514348
 00514333    lea        eax,[ebp-10]
 00514336    mov        edx,2
 0051433B    call       @LStrArrayClr
 00514340    ret
<00514341    jmp        @HandleFinally
<00514346    jmp        00514333
 00514348    mov        eax,dword ptr [ebp-8]
 0051434B    pop        edi
 0051434C    pop        esi
 0051434D    pop        ebx
 0051434E    mov        esp,ebp
 00514350    pop        ebp
 00514351    ret
*}
//end;

//00514354
//function sub_00514354(?:?):?;
//begin
{*
 00514354    push       ebp
 00514355    mov        ebp,esp
 00514357    xor        ecx,ecx
 00514359    push       ecx
 0051435A    push       ecx
 0051435B    push       ecx
 0051435C    push       ecx
 0051435D    push       ecx
 0051435E    push       ecx
 0051435F    push       ebx
 00514360    push       esi
 00514361    push       edi
 00514362    mov        dword ptr [ebp-4],edx
 00514365    mov        esi,eax
 00514367    xor        eax,eax
 00514369    push       ebp
 0051436A    push       5144A2
 0051436F    push       dword ptr fs:[eax]
 00514372    mov        dword ptr fs:[eax],esp
 00514375    mov        eax,dword ptr [ebp-4]
 00514378    call       @LStrToPChar
 0051437D    mov        ecx,eax
 0051437F    mov        edx,dword ptr [esi+48]; TZPostgreSQLStatement.?f48:dword
 00514382    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00514385    mov        ebx,dword ptr [eax]
 00514387    call       dword ptr [ebx+70]
 0051438A    mov        edi,eax
 0051438C    push       3
 0051438E    mov        eax,dword ptr [ebp-4]
 00514391    push       eax
 00514392    push       edi
 00514393    mov        ecx,dword ptr [esi+48]; TZPostgreSQLStatement.?f48:dword
 00514396    mov        edx,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00514399    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 0051439C    call       00511EF0
 005143A1    mov        eax,dword ptr [ebp-4]
 005143A4    push       eax
 005143A5    lea        edx,[ebp-0C]
 005143A8    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005143AB    mov        ecx,dword ptr [eax]
 005143AD    call       dword ptr [ecx+0C]
 005143B0    mov        ecx,dword ptr [ebp-0C]
 005143B3    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005143B8    mov        eax,dword ptr [eax]
 005143BA    mov        dl,3
 005143BC    mov        ebx,dword ptr [eax]
 005143BE    call       dword ptr [ebx+3C]
 005143C1    mov        edx,edi
 005143C3    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005143C6    mov        ecx,dword ptr [eax]
 005143C8    call       dword ptr [ecx+0A4]
 005143CE    dec        al
>005143D0    je         005143F5
 005143D2    dec        al
>005143D4    jne        0051442A
 005143D6    mov        byte ptr [ebp-5],1
 005143DA    lea        eax,[ebp-10]
 005143DD    push       eax
 005143DE    mov        ecx,edi
 005143E0    mov        edx,dword ptr [ebp-4]
 005143E3    mov        eax,esi
 005143E5    call       005140B0
 005143EA    mov        edx,dword ptr [ebp-10]
 005143ED    mov        eax,esi
 005143EF    mov        ecx,dword ptr [eax]
 005143F1    call       dword ptr [ecx]; TZPostgreSQLStatement.sub_004DFE2C
>005143F3    jmp        0051445D
 005143F5    mov        byte ptr [ebp-5],0
 005143F9    mov        edx,edi
 005143FB    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 005143FE    mov        ecx,dword ptr [eax]
 00514400    call       dword ptr [ecx+0DC]
 00514406    lea        edx,[ebp-14]
 00514409    call       StrPas
 0051440E    mov        eax,dword ptr [ebp-14]
 00514411    xor        edx,edx
 00514413    call       StrToIntDef
 00514418    mov        dword ptr [esi+1C],eax; TZPostgreSQLStatement.?f1C:Integer
 0051441B    mov        edx,edi
 0051441D    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00514420    mov        ecx,dword ptr [eax]
 00514422    call       dword ptr [ecx+0EC]
>00514428    jmp        0051445D
 0051442A    mov        byte ptr [ebp-5],0
 0051442E    mov        edx,edi
 00514430    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00514433    mov        ecx,dword ptr [eax]
 00514435    call       dword ptr [ecx+0DC]
 0051443B    lea        edx,[ebp-18]
 0051443E    call       StrPas
 00514443    mov        eax,dword ptr [ebp-18]
 00514446    xor        edx,edx
 00514448    call       StrToIntDef
 0051444D    mov        dword ptr [esi+1C],eax; TZPostgreSQLStatement.?f1C:Integer
 00514450    mov        edx,edi
 00514452    mov        eax,dword ptr [esi+4C]; TZPostgreSQLStatement.?f4C:IZPostgreSQLPlainDriver
 00514455    mov        ecx,dword ptr [eax]
 00514457    call       dword ptr [ecx+0EC]
 0051445D    cmp        byte ptr [ebp-5],0
>00514461    jne        00514477
 00514463    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 00514466    mov        edx,dword ptr [eax]
 00514468    call       dword ptr [edx+34]
 0051446B    test       al,al
>0051446D    je         00514477
 0051446F    mov        eax,dword ptr [esi+38]; TZPostgreSQLStatement.?f38:IZConnection
 00514472    mov        edx,dword ptr [eax]
 00514474    call       dword ptr [edx+38]
 00514477    xor        eax,eax
 00514479    pop        edx
 0051447A    pop        ecx
 0051447B    pop        ecx
 0051447C    mov        dword ptr fs:[eax],edx
 0051447F    push       5144A9
 00514484    lea        eax,[ebp-18]
 00514487    mov        edx,2
 0051448C    call       @LStrArrayClr
 00514491    lea        eax,[ebp-10]
 00514494    call       @IntfClear
 00514499    lea        eax,[ebp-0C]
 0051449C    call       @LStrClr
 005144A1    ret
<005144A2    jmp        @HandleFinally
<005144A7    jmp        00514484
 005144A9    mov        al,byte ptr [ebp-5]
 005144AC    pop        edi
 005144AD    pop        esi
 005144AE    pop        ebx
 005144AF    mov        esp,ebp
 005144B1    pop        ebp
 005144B2    ret
*}
//end;

//005144B4
//constructor TZPostgreSQLPreparedStatement.Create(?:TZPostgreSQLPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005144B4    push       ebp
 005144B5    mov        ebp,esp
 005144B7    add        esp,0FFFFFFF8
 005144BA    push       ebx
 005144BB    push       esi
 005144BC    xor        ebx,ebx
 005144BE    mov        dword ptr [ebp-8],ebx
 005144C1    test       dl,dl
>005144C3    je         005144CD
 005144C5    add        esp,0FFFFFFF0
 005144C8    call       @ClassCreate
 005144CD    mov        dword ptr [ebp-4],ecx
 005144D0    mov        ebx,edx
 005144D2    mov        esi,eax
 005144D4    mov        eax,dword ptr [ebp-4]
 005144D7    call       @IntfAddRef
 005144DC    mov        eax,dword ptr [ebp+14]
 005144DF    call       @IntfAddRef
 005144E4    xor        eax,eax
 005144E6    push       ebp
 005144E7    push       51455F
 005144EC    push       dword ptr fs:[eax]
 005144EF    mov        dword ptr fs:[eax],esp
 005144F2    mov        eax,dword ptr [ebp+10]
 005144F5    push       eax
 005144F6    mov        eax,dword ptr [ebp+0C]
 005144F9    push       eax
 005144FA    mov        ecx,dword ptr [ebp+14]
 005144FD    xor        edx,edx
 005144FF    mov        eax,esi
 00514501    call       004E0088
 00514506    mov        eax,dword ptr [ebp+8]
 00514509    mov        dword ptr [esi+6C],eax; TZPostgreSQLPreparedStatement.?f6C:dword
 0051450C    lea        eax,[esi+70]; TZPostgreSQLPreparedStatement.?f70:IZPostgreSQLPlainDriver
 0051450F    mov        edx,dword ptr [ebp-4]
 00514512    call       @IntfCopy
 00514517    mov        byte ptr [esi+2D],1; TZPostgreSQLPreparedStatement.?f2D:byte
 0051451B    lea        eax,[ebp-8]
 0051451E    mov        edx,dword ptr [ebp+14]
 00514521    mov        ecx,514588; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 00514526    call       @IntfCast
 0051452B    mov        eax,dword ptr [ebp-8]
 0051452E    mov        edx,dword ptr [eax]
 00514530    call       dword ptr [edx+0AC]
 00514536    mov        byte ptr [esi+74],al; TZPostgreSQLPreparedStatement.?f74:byte
 00514539    xor        eax,eax
 0051453B    pop        edx
 0051453C    pop        ecx
 0051453D    pop        ecx
 0051453E    mov        dword ptr fs:[eax],edx
 00514541    push       514566
 00514546    lea        eax,[ebp-8]
 00514549    call       @IntfClear
 0051454E    lea        eax,[ebp-4]
 00514551    call       @IntfClear
 00514556    lea        eax,[ebp+14]
 00514559    call       @IntfClear
 0051455E    ret
<0051455F    jmp        @HandleFinally
<00514564    jmp        00514546
 00514566    mov        eax,esi
 00514568    test       bl,bl
>0051456A    je         0051457B
 0051456C    call       @AfterConstruction
 00514571    pop        dword ptr fs:[0]
 00514578    add        esp,0C
 0051457B    mov        eax,esi
 0051457D    pop        esi
 0051457E    pop        ebx
 0051457F    pop        ecx
 00514580    pop        ecx
 00514581    pop        ebp
 00514582    ret        10
*}
//end;

//00514598
//procedure sub_00514598(?:?);
//begin
{*
 00514598    push       ebp
 00514599    mov        ebp,esp
 0051459B    push       ebx
 0051459C    push       esi
 0051459D    mov        esi,edx
 0051459F    mov        ebx,eax
 005145A1    mov        eax,dword ptr [ebx+38]; TZPostgreSQLPreparedStatement.?f38:IZConnection
 005145A4    push       eax
 005145A5    mov        eax,dword ptr [ebx+3C]; TZPostgreSQLPreparedStatement.?f3C:dword
 005145A8    push       eax
 005145A9    mov        eax,dword ptr [ebx+6C]; TZPostgreSQLPreparedStatement.?f6C:dword
 005145AC    push       eax
 005145AD    mov        ecx,dword ptr [ebx+70]; TZPostgreSQLPreparedStatement.?f70:IZPostgreSQLPlainDriver
 005145B0    mov        dl,1
 005145B2    mov        eax,[00513BF8]; TZPostgreSQLStatement
 005145B7    call       TZPostgreSQLStatement.Create; TZPostgreSQLStatement.Create
 005145BC    mov        edx,eax
 005145BE    test       edx,edx
>005145C0    je         005145C5
 005145C2    sub        edx,0FFFFFFBC
 005145C5    mov        eax,esi
 005145C7    call       @IntfCopy
 005145CC    pop        esi
 005145CD    pop        ebx
 005145CE    pop        ebp
 005145CF    ret
*}
//end;

//005145D0
//procedure sub_005145D0(?:?; ?:?);
//begin
{*
 005145D0    push       ebp
 005145D1    mov        ebp,esp
 005145D3    push       ecx
 005145D4    mov        ecx,0E
 005145D9    push       0
 005145DB    push       0
 005145DD    dec        ecx
<005145DE    jne        005145D9
 005145E0    xchg       ecx,dword ptr [ebp-4]
 005145E3    push       ebx
 005145E4    push       esi
 005145E5    mov        dword ptr [ebp-4],ecx
 005145E8    mov        esi,edx
 005145EA    mov        ebx,eax
 005145EC    lea        eax,[ebp-40]
 005145EF    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005145F5    call       @InitializeRecord
 005145FA    xor        eax,eax
 005145FC    push       ebp
 005145FD    push       514A23
 00514602    push       dword ptr fs:[eax]
 00514605    mov        dword ptr fs:[eax],esp
 00514608    lea        eax,[ebp-8]
 0051460B    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 00514611    call       @DynArrayClear
 00514616    cmp        esi,dword ptr [ebx+58]; TZPostgreSQLPreparedStatement.?f58:dword
>00514619    jl         0051463C
 0051461B    lea        edx,[ebp-44]
 0051461E    mov        eax,[0061B5C8]; ^#122.sResString47:TResStringRec
 00514623    call       LoadResString
 00514628    mov        ecx,dword ptr [ebp-44]
 0051462B    mov        dl,1
 0051462D    mov        eax,[004C6D20]; EZSQLException
 00514632    call       EZSQLException.Create; EZSQLException.Create
 00514637    call       @RaiseExcept
 0051463C    lea        eax,[ebp-40]
 0051463F    imul       edx,esi,0B
>00514642    jno        00514649
 00514644    call       @IntOver
 00514649    mov        ecx,dword ptr [ebx+4C]; TZPostgreSQLPreparedStatement.?f4C:TZVariantDynArray
 0051464C    lea        edx,[ecx+edx*4]
 0051464F    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00514655    call       @CopyRecord
 0051465A    lea        edx,[ebp-40]
 0051465D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00514662    mov        eax,dword ptr [eax]
 00514664    mov        ecx,dword ptr [eax]
 00514666    call       dword ptr [ecx+0C]
 00514669    test       al,al
>0051466B    je         0051467F
 0051466D    mov        eax,dword ptr [ebp-4]
 00514670    mov        edx,514A38; 'NULL'
 00514675    call       @LStrAsg
>0051467A    jmp        0051499F
 0051467F    mov        eax,dword ptr [ebx+50]; TZPostgreSQLPreparedStatement.?f50:TZSQLTypeArray
 00514682    test       eax,eax
>00514684    je         0051468B
 00514686    cmp        esi,dword ptr [eax-4]
>00514689    jb         00514690
 0051468B    call       @BoundErr
 00514690    movzx      eax,byte ptr [eax+esi]
 00514694    cmp        eax,11
>00514697    ja         0051499F
 0051469D    jmp        dword ptr [eax*4+5146A4]
 0051469D    dd         51499F
 0051469D    dd         5146EC
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         514723
 0051469D    dd         51473A
 0051469D    dd         51499F
 0051469D    dd         51473A
 0051469D    dd         51475F
 0051469D    dd         5147A4
 0051469D    dd         5147E9
 0051469D    dd         51482E
 0051469D    dd         51482E
 0051469D    dd         514889
 005146EC    lea        edx,[ebp-40]
 005146EF    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005146F4    mov        eax,dword ptr [eax]
 005146F6    mov        ecx,dword ptr [eax]
 005146F8    call       dword ptr [ecx+24]
 005146FB    test       al,al
>005146FD    je         00514711
 005146FF    mov        eax,dword ptr [ebp-4]
 00514702    mov        edx,514A48; 'TRUE'
 00514707    call       @LStrAsg
>0051470C    jmp        0051499F
 00514711    mov        eax,dword ptr [ebp-4]
 00514714    mov        edx,514A58; 'FALSE'
 00514719    call       @LStrAsg
>0051471E    jmp        0051499F
 00514723    mov        ecx,dword ptr [ebp-4]
 00514726    lea        edx,[ebp-40]
 00514729    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0051472E    mov        eax,dword ptr [eax]
 00514730    mov        ebx,dword ptr [eax]
 00514732    call       dword ptr [ebx+30]
>00514735    jmp        0051499F
 0051473A    lea        ecx,[ebp-48]
 0051473D    lea        edx,[ebp-40]
 00514740    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00514745    mov        eax,dword ptr [eax]
 00514747    mov        esi,dword ptr [eax]
 00514749    call       dword ptr [esi+30]
 0051474C    mov        edx,dword ptr [ebp-48]
 0051474F    mov        ecx,dword ptr [ebp-4]
 00514752    mov        al,byte ptr [ebx+74]; TZPostgreSQLPreparedStatement.?f74:byte
 00514755    call       00511C58
>0051475A    jmp        0051499F
 0051475F    mov        eax,dword ptr [ebp-4]
 00514762    push       eax
 00514763    lea        edx,[ebp-40]
 00514766    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0051476B    mov        eax,dword ptr [eax]
 0051476D    mov        ecx,dword ptr [eax]
 0051476F    call       dword ptr [ecx+38]
 00514772    add        esp,0FFFFFFF8
 00514775    fstp       qword ptr [esp]
 00514778    wait
 00514779    lea        edx,[ebp-54]
 0051477C    mov        eax,514A68; 'yyyy-mm-dd'
 00514781    call       FormatDateTime
 00514786    mov        eax,dword ptr [ebp-54]
 00514789    mov        dword ptr [ebp-50],eax
 0051478C    mov        byte ptr [ebp-4C],0B
 00514790    lea        edx,[ebp-50]
 00514793    xor        ecx,ecx
 00514795    mov        eax,514A7C; ''%s'::date'
 0051479A    call       Format
>0051479F    jmp        0051499F
 005147A4    mov        eax,dword ptr [ebp-4]
 005147A7    push       eax
 005147A8    lea        edx,[ebp-40]
 005147AB    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005147B0    mov        eax,dword ptr [eax]
 005147B2    mov        ecx,dword ptr [eax]
 005147B4    call       dword ptr [ecx+38]
 005147B7    add        esp,0FFFFFFF8
 005147BA    fstp       qword ptr [esp]
 005147BD    wait
 005147BE    lea        edx,[ebp-58]
 005147C1    mov        eax,514A90; 'hh\":\"mm\":\"ss'
 005147C6    call       FormatDateTime
 005147CB    mov        eax,dword ptr [ebp-58]
 005147CE    mov        dword ptr [ebp-50],eax
 005147D1    mov        byte ptr [ebp-4C],0B
 005147D5    lea        edx,[ebp-50]
 005147D8    xor        ecx,ecx
 005147DA    mov        eax,514AA8; ''%s'::time'
 005147DF    call       Format
>005147E4    jmp        0051499F
 005147E9    mov        eax,dword ptr [ebp-4]
 005147EC    push       eax
 005147ED    lea        edx,[ebp-40]
 005147F0    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005147F5    mov        eax,dword ptr [eax]
 005147F7    mov        ecx,dword ptr [eax]
 005147F9    call       dword ptr [ecx+38]
 005147FC    add        esp,0FFFFFFF8
 005147FF    fstp       qword ptr [esp]
 00514802    wait
 00514803    lea        edx,[ebp-5C]
 00514806    mov        eax,514ABC; 'yyyy-mm-dd hh\":\"mm\":\"ss'
 0051480B    call       FormatDateTime
 00514810    mov        eax,dword ptr [ebp-5C]
 00514813    mov        dword ptr [ebp-50],eax
 00514816    mov        byte ptr [ebp-4C],0B
 0051481A    lea        edx,[ebp-50]
 0051481D    xor        ecx,ecx
 0051481F    mov        eax,514ADC; ''%s'::timestamp'
 00514824    call       Format
>00514829    jmp        0051499F
 0051482E    lea        ecx,[ebp-60]
 00514831    lea        edx,[ebp-40]
 00514834    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00514839    mov        eax,dword ptr [eax]
 0051483B    mov        ebx,dword ptr [eax]
 0051483D    call       dword ptr [ebx+40]
 00514840    mov        edx,dword ptr [ebp-60]
 00514843    lea        eax,[ebp-0C]
 00514846    mov        ecx,514AEC; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 0051484B    call       @IntfCast
 00514850    mov        eax,dword ptr [ebp-0C]
 00514853    mov        edx,dword ptr [eax]
 00514855    call       dword ptr [edx+0C]
 00514858    test       al,al
>0051485A    jne        00514877
 0051485C    lea        edx,[ebp-64]
 0051485F    mov        eax,dword ptr [ebp-0C]
 00514862    mov        ecx,dword ptr [eax]
 00514864    call       dword ptr [ecx+18]
 00514867    mov        eax,dword ptr [ebp-64]
 0051486A    mov        edx,dword ptr [ebp-4]
 0051486D    call       0051171C
>00514872    jmp        0051499F
 00514877    mov        eax,dword ptr [ebp-4]
 0051487A    mov        edx,514A38; 'NULL'
 0051487F    call       @LStrAsg
>00514884    jmp        0051499F
 00514889    lea        ecx,[ebp-68]
 0051488C    lea        edx,[ebp-40]
 0051488F    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00514894    mov        eax,dword ptr [eax]
 00514896    mov        esi,dword ptr [eax]
 00514898    call       dword ptr [esi+40]
 0051489B    mov        edx,dword ptr [ebp-68]
 0051489E    lea        eax,[ebp-0C]
 005148A1    mov        ecx,514AEC; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 005148A6    call       @IntfCast
 005148AB    mov        eax,dword ptr [ebp-0C]
 005148AE    mov        edx,dword ptr [eax]
 005148B0    call       dword ptr [edx+0C]
 005148B3    test       al,al
>005148B5    jne        00514992
 005148BB    lea        edx,[ebp-70]
 005148BE    mov        eax,ebx
 005148C0    call       004E006C
 005148C5    mov        edx,dword ptr [ebp-70]
 005148C8    lea        eax,[ebp-6C]
 005148CB    mov        ecx,514AFC; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 005148D0    call       @IntfCast
 005148D5    mov        eax,dword ptr [ebp-6C]
 005148D8    mov        edx,dword ptr [eax]
 005148DA    call       dword ptr [edx+94]
 005148E0    test       al,al
>005148E2    je         00514973
 005148E8    mov        eax,dword ptr [ebp-0C]
 005148EB    mov        edx,dword ptr [eax]
 005148ED    call       dword ptr [edx+30]
 005148F0    mov        dword ptr [ebp-10],eax
 005148F3    xor        eax,eax
 005148F5    push       ebp
 005148F6    push       51496C
 005148FB    push       dword ptr fs:[eax]
 005148FE    mov        dword ptr fs:[eax],esp
 00514901    push       0
 00514903    push       0
 00514905    mov        eax,dword ptr [ebx+6C]; TZPostgreSQLPreparedStatement.?f6C:dword
 00514908    push       eax
 00514909    push       0
 0051490B    mov        ecx,dword ptr [ebx+70]; TZPostgreSQLPreparedStatement.?f70:IZPostgreSQLPlainDriver
 0051490E    mov        dl,1
 00514910    mov        eax,[0051255C]; TZPostgreSQLBlob
 00514915    call       TZPostgreSQLBlob.Create; TZPostgreSQLBlob.Create
 0051491A    mov        edx,eax
 0051491C    test       edx,edx
>0051491E    je         00514923
 00514920    sub        edx,0FFFFFFD8
 00514923    lea        eax,[ebp-14]
 00514926    call       @IntfCopy
 0051492B    mov        edx,dword ptr [ebp-10]
 0051492E    mov        eax,dword ptr [ebp-14]
 00514931    mov        ecx,dword ptr [eax]
 00514933    call       dword ptr [ecx+34]
 00514936    mov        eax,dword ptr [ebp-14]
 00514939    mov        edx,dword ptr [eax]
 0051493B    call       dword ptr [edx+48]
 0051493E    mov        eax,dword ptr [ebp-14]
 00514941    mov        edx,dword ptr [eax]
 00514943    call       dword ptr [edx+40]
 00514946    mov        edx,dword ptr [ebp-4]
 00514949    call       IntToStr
 0051494E    xor        eax,eax
 00514950    pop        edx
 00514951    pop        ecx
 00514952    pop        ecx
 00514953    mov        dword ptr fs:[eax],edx
 00514956    push       51499F
 0051495B    lea        eax,[ebp-14]
 0051495E    call       @IntfClear
 00514963    mov        eax,dword ptr [ebp-10]
 00514966    call       TObject.Free
 0051496B    ret
<0051496C    jmp        @HandleFinally
<00514971    jmp        0051495B
 00514973    mov        eax,dword ptr [ebp-4]
 00514976    push       eax
 00514977    lea        edx,[ebp-74]
 0051497A    mov        eax,dword ptr [ebp-0C]
 0051497D    mov        ecx,dword ptr [eax]
 0051497F    call       dword ptr [ecx+18]
 00514982    mov        edx,dword ptr [ebp-74]
 00514985    mov        ecx,dword ptr [ebx+6C]; TZPostgreSQLPreparedStatement.?f6C:dword
 00514988    mov        eax,dword ptr [ebx+70]; TZPostgreSQLPreparedStatement.?f70:IZPostgreSQLPlainDriver
 0051498B    mov        ebx,dword ptr [eax]
 0051498D    call       dword ptr [ebx+18]
>00514990    jmp        0051499F
 00514992    mov        eax,dword ptr [ebp-4]
 00514995    mov        edx,514A38; 'NULL'
 0051499A    call       @LStrAsg
 0051499F    xor        eax,eax
 005149A1    pop        edx
 005149A2    pop        ecx
 005149A3    pop        ecx
 005149A4    mov        dword ptr fs:[eax],edx
 005149A7    push       514A2A
 005149AC    lea        eax,[ebp-74]
 005149AF    call       @LStrClr
 005149B4    lea        eax,[ebp-70]
 005149B7    call       @IntfClear
 005149BC    lea        eax,[ebp-6C]
 005149BF    call       @IntfClear
 005149C4    lea        eax,[ebp-68]
 005149C7    call       @IntfClear
 005149CC    lea        eax,[ebp-64]
 005149CF    call       @LStrClr
 005149D4    lea        eax,[ebp-60]
 005149D7    call       @IntfClear
 005149DC    lea        eax,[ebp-5C]
 005149DF    mov        edx,3
 005149E4    call       @LStrArrayClr
 005149E9    lea        eax,[ebp-48]
 005149EC    mov        edx,2
 005149F1    call       @LStrArrayClr
 005149F6    lea        eax,[ebp-40]
 005149F9    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005149FF    call       @FinalizeRecord
 00514A04    lea        eax,[ebp-14]
 00514A07    call       @IntfClear
 00514A0C    lea        eax,[ebp-0C]
 00514A0F    call       @IntfClear
 00514A14    lea        eax,[ebp-8]
 00514A17    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 00514A1D    call       @DynArrayClear
 00514A22    ret
<00514A23    jmp        @HandleFinally
<00514A28    jmp        005149AC
 00514A2A    pop        esi
 00514A2B    pop        ebx
 00514A2C    mov        esp,ebp
 00514A2E    pop        ebp
 00514A2F    ret
*}
//end;

//00514B0C
//function sub_00514B0C(?:?):?;
//begin
{*
 00514B0C    push       ebp
 00514B0D    mov        ebp,esp
 00514B0F    push       0
 00514B11    push       0
 00514B13    push       ebx
 00514B14    push       esi
 00514B15    push       edi
 00514B16    mov        esi,edx
 00514B18    mov        ebx,eax
 00514B1A    xor        eax,eax
 00514B1C    push       ebp
 00514B1D    push       514B93
 00514B22    push       dword ptr fs:[eax]
 00514B25    mov        dword ptr fs:[eax],esp
 00514B28    lea        ecx,[ebp-4]
 00514B2B    mov        edx,esi
 00514B2D    mov        eax,dword ptr [ebx+10]; TZPostgreSQLCachedResolver.?f10:IZResultSetMetadata
 00514B30    mov        edi,dword ptr [eax]
 00514B32    call       dword ptr [edi+40]
 00514B35    cmp        dword ptr [ebp-4],0
>00514B39    je         00514B70
 00514B3B    lea        ecx,[ebp-8]
 00514B3E    mov        edx,esi
 00514B40    mov        eax,dword ptr [ebx+10]; TZPostgreSQLCachedResolver.?f10:IZResultSetMetadata
 00514B43    mov        edi,dword ptr [eax]
 00514B45    call       dword ptr [edi+30]
 00514B48    cmp        dword ptr [ebp-8],0
>00514B4C    je         00514B70
 00514B4E    mov        edx,esi
 00514B50    mov        eax,dword ptr [ebx+10]; TZPostgreSQLCachedResolver.?f10:IZResultSetMetadata
 00514B53    mov        ecx,dword ptr [eax]
 00514B55    call       dword ptr [ecx+18]
 00514B58    test       al,al
>00514B5A    je         00514B70
 00514B5C    mov        edx,esi
 00514B5E    mov        eax,dword ptr [ebx+10]; TZPostgreSQLCachedResolver.?f10:IZResultSetMetadata
 00514B61    mov        ecx,dword ptr [eax]
 00514B63    call       dword ptr [ecx+48]
 00514B66    test       al,al
>00514B68    je         00514B70
 00514B6A    add        al,0F0
 00514B6C    sub        al,2
>00514B6E    jae        00514B74
 00514B70    xor        eax,eax
>00514B72    jmp        00514B76
 00514B74    mov        al,1
 00514B76    mov        ebx,eax
 00514B78    xor        eax,eax
 00514B7A    pop        edx
 00514B7B    pop        ecx
 00514B7C    pop        ecx
 00514B7D    mov        dword ptr fs:[eax],edx
 00514B80    push       514B9A
 00514B85    lea        eax,[ebp-8]
 00514B88    mov        edx,2
 00514B8D    call       @LStrArrayClr
 00514B92    ret
<00514B93    jmp        @HandleFinally
<00514B98    jmp        00514B85
 00514B9A    mov        eax,ebx
 00514B9C    pop        edi
 00514B9D    pop        esi
 00514B9E    pop        ebx
 00514B9F    pop        ecx
 00514BA0    pop        ecx
 00514BA1    pop        ebp
 00514BA2    ret
*}
//end;

end.