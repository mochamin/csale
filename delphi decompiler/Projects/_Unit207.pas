{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit207;

interface

uses
  Classes, Windows, Graphics, SysUtils;

type
  EZMySQLSilentException = class(EAbort)
  end;

implementation

{$R *.DFM}

//0050308C
procedure sub_0050308C;
begin
{*
 0050308C    push       ebp
 0050308D    mov        ebp,esp
 0050308F    call       @GetTls
 00503094    add        dword ptr [eax+10],1; threadvar_16
>0050309B    jno        005030A2
 0050309D    call       @IntOver
 005030A2    pop        ebp
 005030A3    ret
*}
end;

//005030A4
procedure sub_005030A4;
begin
{*
 005030A4    push       ebp
 005030A5    mov        ebp,esp
 005030A7    call       @GetTls
 005030AC    sub        dword ptr [eax+10],1; threadvar_16
>005030B3    jno        005030BA
 005030B5    call       @IntOver
 005030BA    pop        ebp
 005030BB    ret
*}
end;

//005030BC
//function sub_005030BC(?:?):Boolean;
//begin
{*
 005030BC    push       ebp
 005030BD    mov        ebp,esp
 005030BF    mov        eax,dword ptr [ebp+8]
 005030C2    test       byte ptr [eax-4],20
 005030C6    sete       al
 005030C9    pop        ebp
 005030CA    ret
*}
//end;

//005030CC
//function sub_005030CC(?:IZMySQLPlainDriver; ?:?; ?:?):?;
//begin
{*
 005030CC    push       ebp
 005030CD    mov        ebp,esp
 005030CF    add        esp,0FFFFFFF8
 005030D2    push       ebx
 005030D3    push       esi
 005030D4    mov        dword ptr [ebp-4],ecx
 005030D7    mov        esi,edx
 005030D9    mov        dword ptr [ebp-8],eax
 005030DC    mov        eax,dword ptr [ebp-8]
 005030DF    call       @IntfAddRef
 005030E4    xor        eax,eax
 005030E6    push       ebp
 005030E7    push       5032E5
 005030EC    push       dword ptr fs:[eax]
 005030EF    mov        dword ptr fs:[eax],esp
 005030F2    mov        edx,esi
 005030F4    mov        eax,dword ptr [ebp-8]
 005030F7    mov        ecx,dword ptr [eax]
 005030F9    call       dword ptr [ecx+134]
 005030FF    and        eax,0FF
 00503104    cmp        eax,0C
>00503107    jg         0050314F
>00503109    je         0050326C
 0050310F    cmp        eax,0B
>00503112    ja         0050329E
 00503118    jmp        dword ptr [eax*4+50311F]
 00503118    dd         503231
 00503118    dd         5031C6
 00503118    dd         5031DF
 00503118    dd         5031F8
 00503118    dd         50322A
 00503118    dd         503260
 00503118    dd         503296
 00503118    dd         50326C
 00503118    dd         503211
 00503118    dd         5031F8
 00503118    dd         503264
 00503118    dd         503268
 0050314F    cmp        eax,0F7
>00503154    jg         00503191
>00503156    je         0050328E
 0050315C    cmp        eax,0F
>0050315F    jg         00503178
>00503161    je         00503282
 00503167    sub        eax,0D
>0050316A    je         005031DF
 0050316C    dec        eax
>0050316D    je         00503264
>00503173    jmp        0050329E
 00503178    sub        eax,10
>0050317B    je         0050327E
 00503181    sub        eax,0E6
>00503186    je         00503231
>0050318C    jmp        0050329E
 00503191    add        eax,0FFFFFF08
 00503196    cmp        eax,7
>00503199    ja         0050329E
 0050319F    jmp        dword ptr [eax*4+5031A6]
 0050319F    dd         503292
 0050319F    dd         503270
 0050319F    dd         503270
 0050319F    dd         503270
 0050319F    dd         503270
 0050319F    dd         503286
 0050319F    dd         50328A
 0050319F    dd         50329A
 005031C6    push       ebp
 005031C7    call       005030BC
 005031CC    pop        ecx
 005031CD    test       al,al
>005031CF    je         005031D8
 005031D1    mov        bl,2
>005031D3    jmp        005032B4
 005031D8    mov        bl,3
>005031DA    jmp        005032B4
 005031DF    push       ebp
 005031E0    call       005030BC
 005031E5    pop        ecx
 005031E6    test       al,al
>005031E8    je         005031F1
 005031EA    mov        bl,3
>005031EC    jmp        005032B4
 005031F1    mov        bl,4
>005031F3    jmp        005032B4
 005031F8    push       ebp
 005031F9    call       005030BC
 005031FE    pop        ecx
 005031FF    test       al,al
>00503201    je         0050320A
 00503203    mov        bl,4
>00503205    jmp        005032B4
 0050320A    mov        bl,5
>0050320C    jmp        005032B4
 00503211    push       ebp
 00503212    call       005030BC
 00503217    pop        ecx
 00503218    test       al,al
>0050321A    je         00503223
 0050321C    mov        bl,5
>0050321E    jmp        005032B4
 00503223    mov        bl,8
>00503225    jmp        005032B4
 0050322A    mov        bl,7
>0050322C    jmp        005032B4
 00503231    mov        edx,esi
 00503233    mov        eax,dword ptr [ebp-8]
 00503236    mov        ecx,dword ptr [eax]
 00503238    call       dword ptr [ecx+158]
 0050323E    test       eax,eax
>00503240    jne        0050325C
 00503242    mov        edx,esi
 00503244    mov        eax,dword ptr [ebp-8]
 00503247    mov        ecx,dword ptr [eax]
 00503249    call       dword ptr [ecx+150]
 0050324F    cmp        eax,0B
>00503252    jge        00503258
 00503254    mov        bl,4
>00503256    jmp        005032B4
 00503258    mov        bl,5
>0050325A    jmp        005032B4
 0050325C    mov        bl,7
>0050325E    jmp        005032B4
 00503260    mov        bl,7
>00503262    jmp        005032B4
 00503264    mov        bl,0C
>00503266    jmp        005032B4
 00503268    mov        bl,0D
>0050326A    jmp        005032B4
 0050326C    mov        bl,0E
>0050326E    jmp        005032B4
 00503270    test       byte ptr [ebp-4],80
>00503274    jne        0050327A
 00503276    mov        bl,0F
>00503278    jmp        005032B4
 0050327A    mov        bl,11
>0050327C    jmp        005032B4
 0050327E    mov        bl,11
>00503280    jmp        005032B4
 00503282    mov        bl,9
>00503284    jmp        005032B4
 00503286    mov        bl,9
>00503288    jmp        005032B4
 0050328A    mov        bl,9
>0050328C    jmp        005032B4
 0050328E    mov        bl,9
>00503290    jmp        005032B4
 00503292    mov        bl,9
>00503294    jmp        005032B4
 00503296    mov        bl,9
>00503298    jmp        005032B4
 0050329A    mov        bl,11
>0050329C    jmp        005032B4
 0050329E    mov        ecx,5032FC; 'Unknown MySQL data type!'
 005032A3    mov        dl,1
 005032A5    mov        eax,[004087B0]; Exception
 005032AA    call       Exception.Create; Exception.Create
 005032AF    call       @RaiseExcept
 005032B4    cmp        bl,9
>005032B7    jne        005032CF
 005032B9    mov        edx,esi
 005032BB    mov        eax,dword ptr [ebp-8]
 005032BE    mov        ecx,dword ptr [eax]
 005032C0    call       dword ptr [ecx+150]
 005032C6    cmp        eax,2000
>005032CB    jle        005032CF
 005032CD    mov        bl,0F
 005032CF    xor        eax,eax
 005032D1    pop        edx
 005032D2    pop        ecx
 005032D3    pop        ecx
 005032D4    mov        dword ptr fs:[eax],edx
 005032D7    push       5032EC
 005032DC    lea        eax,[ebp-8]
 005032DF    call       @IntfClear
 005032E4    ret
<005032E5    jmp        @HandleFinally
<005032EA    jmp        005032DC
 005032EC    mov        eax,ebx
 005032EE    pop        esi
 005032EF    pop        ebx
 005032F0    pop        ecx
 005032F1    pop        ecx
 005032F2    pop        ebp
 005032F3    ret
*}
//end;

//005033C0
//function sub_005033C0(?:AnsiString; ?:AnsiString):?;
//begin
{*
 005033C0    push       ebp
 005033C1    mov        ebp,esp
 005033C3    xor        ecx,ecx
 005033C5    push       ecx
 005033C6    push       ecx
 005033C7    push       ecx
 005033C8    push       ecx
 005033C9    push       ecx
 005033CA    push       ecx
 005033CB    push       ecx
 005033CC    push       ebx
 005033CD    push       esi
 005033CE    push       edi
 005033CF    mov        dword ptr [ebp-8],edx
 005033D2    mov        dword ptr [ebp-4],eax
 005033D5    mov        eax,dword ptr [ebp-4]
 005033D8    call       @LStrAddRef
 005033DD    mov        eax,dword ptr [ebp-8]
 005033E0    call       @LStrAddRef
 005033E5    xor        eax,eax
 005033E7    push       ebp
 005033E8    push       503848
 005033ED    push       dword ptr fs:[eax]
 005033F0    mov        dword ptr fs:[eax],esp
 005033F3    lea        edx,[ebp-14]
 005033F6    mov        eax,dword ptr [ebp-4]
 005033F9    call       UpperCase
 005033FE    mov        edx,dword ptr [ebp-14]
 00503401    lea        eax,[ebp-4]
 00503404    call       @LStrLAsg
 00503409    lea        edx,[ebp-18]
 0050340C    mov        eax,dword ptr [ebp-8]
 0050340F    call       UpperCase
 00503414    mov        edx,dword ptr [ebp-18]
 00503417    lea        eax,[ebp-8]
 0050341A    call       @LStrLAsg
 0050341F    xor        ebx,ebx
 00503421    mov        edx,dword ptr [ebp-4]
 00503424    mov        eax,503860; ' '
 00503429    call       004BEC98
 0050342E    mov        esi,eax
 00503430    test       esi,esi
>00503432    jle        00503451
 00503434    lea        eax,[ebp-4]
 00503437    push       eax
 00503438    mov        ecx,esi
 0050343A    sub        ecx,1
>0050343D    jno        00503444
 0050343F    call       @IntOver
 00503444    mov        edx,1
 00503449    mov        eax,dword ptr [ebp-4]
 0050344C    call       @LStrCopy
 00503451    lea        eax,[ebp-10]
 00503454    call       @LStrClr
 00503459    mov        edx,dword ptr [ebp-8]
 0050345C    mov        eax,503860; ' '
 00503461    call       004BEC98
 00503466    mov        esi,eax
 00503468    test       esi,esi
>0050346A    jle        00503497
 0050346C    lea        eax,[ebp-10]
 0050346F    push       eax
 00503470    mov        eax,dword ptr [ebp-8]
 00503473    call       @LStrLen
 00503478    mov        ecx,eax
 0050347A    sub        ecx,esi
>0050347C    jno        00503483
 0050347E    call       @IntOver
 00503483    mov        edx,esi
 00503485    add        edx,1
>00503488    jno        0050348F
 0050348A    call       @IntOver
 0050348F    mov        eax,dword ptr [ebp-8]
 00503492    call       @LStrCopy
 00503497    mov        edx,dword ptr [ebp-10]
 0050349A    mov        eax,50386C; 'UNSIGNED'
 0050349F    call       @LStrPos
 005034A4    test       eax,eax
 005034A6    setg       byte ptr [ebp-9]
 005034AA    mov        eax,dword ptr [ebp-4]
 005034AD    mov        edx,503880; 'TINYINT'
 005034B2    call       @LStrCmp
>005034B7    jne        005034CD
 005034B9    cmp        byte ptr [ebp-9],0
>005034BD    je         005034C6
 005034BF    mov        bl,3
>005034C1    jmp        00503806
 005034C6    mov        bl,2
>005034C8    jmp        00503806
 005034CD    mov        eax,dword ptr [ebp-4]
 005034D0    mov        edx,503890; 'YEAR'
 005034D5    call       @LStrCmp
>005034DA    jne        005034E3
 005034DC    mov        bl,3
>005034DE    jmp        00503806
 005034E3    mov        eax,dword ptr [ebp-4]
 005034E6    mov        edx,5038A0; 'SMALLINT'
 005034EB    call       @LStrCmp
>005034F0    jne        00503506
 005034F2    cmp        byte ptr [ebp-9],0
>005034F6    je         005034FF
 005034F8    mov        bl,4
>005034FA    jmp        00503806
 005034FF    mov        bl,3
>00503501    jmp        00503806
 00503506    mov        eax,dword ptr [ebp-4]
 00503509    mov        edx,5038B4; 'MEDIUMINT'
 0050350E    call       @LStrCmp
>00503513    jne        0050351C
 00503515    mov        bl,4
>00503517    jmp        00503806
 0050351C    mov        eax,dword ptr [ebp-4]
 0050351F    mov        edx,5038C8; 'INT'
 00503524    call       @LStrCmp
>00503529    je         0050353A
 0050352B    mov        eax,dword ptr [ebp-4]
 0050352E    mov        edx,5038D4; 'INTEGER'
 00503533    call       @LStrCmp
>00503538    jne        0050354E
 0050353A    cmp        byte ptr [ebp-9],0
>0050353E    je         00503547
 00503540    mov        bl,5
>00503542    jmp        00503806
 00503547    mov        bl,4
>00503549    jmp        00503806
 0050354E    mov        eax,dword ptr [ebp-4]
 00503551    mov        edx,5038E4; 'BIGINT'
 00503556    call       @LStrCmp
>0050355B    jne        00503564
 0050355D    mov        bl,5
>0050355F    jmp        00503806
 00503564    mov        eax,dword ptr [ebp-4]
 00503567    mov        edx,5038F4; 'INT24'
 0050356C    call       @LStrCmp
>00503571    jne        0050357A
 00503573    mov        bl,5
>00503575    jmp        00503806
 0050357A    mov        eax,dword ptr [ebp-4]
 0050357D    mov        edx,503904; 'REAL'
 00503582    call       @LStrCmp
>00503587    jne        0050359D
 00503589    cmp        byte ptr [ebp-9],0
>0050358D    je         00503596
 0050358F    mov        bl,7
>00503591    jmp        00503806
 00503596    mov        bl,6
>00503598    jmp        00503806
 0050359D    mov        eax,dword ptr [ebp-4]
 005035A0    mov        edx,503914; 'FLOAT'
 005035A5    call       @LStrCmp
>005035AA    jne        005035B3
 005035AC    mov        bl,7
>005035AE    jmp        00503806
 005035B3    mov        eax,dword ptr [ebp-4]
 005035B6    mov        edx,503924; 'DECIMAL'
 005035BB    call       @LStrCmp
>005035C0    jne        0050361A
 005035C2    mov        edx,503934; ',0)'
 005035C7    mov        eax,dword ptr [ebp-8]
 005035CA    call       004BEE30
 005035CF    test       al,al
>005035D1    je         00503613
 005035D3    lea        eax,[ebp-1C]
 005035D6    push       eax
 005035D7    mov        eax,dword ptr [ebp-8]
 005035DA    call       @LStrLen
 005035DF    mov        ecx,eax
 005035E1    sub        ecx,0B
>005035E4    jno        005035EB
 005035E6    call       @IntOver
 005035EB    mov        edx,9
 005035F0    mov        eax,dword ptr [ebp-8]
 005035F3    call       @LStrCopy
 005035F8    mov        eax,dword ptr [ebp-1C]
 005035FB    call       StrToInt
 00503600    cmp        eax,0A
>00503603    jge        0050360C
 00503605    mov        bl,4
>00503607    jmp        00503806
 0050360C    mov        bl,5
>0050360E    jmp        00503806
 00503613    mov        bl,7
>00503615    jmp        00503806
 0050361A    mov        eax,dword ptr [ebp-4]
 0050361D    mov        edx,503940; 'DOUBLE'
 00503622    call       @LStrCmp
>00503627    jne        00503630
 00503629    mov        bl,7
>0050362B    jmp        00503806
 00503630    mov        eax,dword ptr [ebp-4]
 00503633    mov        edx,503950; 'CHAR'
 00503638    call       @LStrCmp
>0050363D    jne        00503646
 0050363F    mov        bl,9
>00503641    jmp        00503806
 00503646    mov        eax,dword ptr [ebp-4]
 00503649    mov        edx,503960; 'VARCHAR'
 0050364E    call       @LStrCmp
>00503653    jne        0050365C
 00503655    mov        bl,9
>00503657    jmp        00503806
 0050365C    mov        eax,dword ptr [ebp-4]
 0050365F    mov        edx,503970; 'VARBINARY'
 00503664    call       @LStrCmp
>00503669    jne        00503672
 0050366B    mov        bl,0B
>0050366D    jmp        00503806
 00503672    mov        eax,dword ptr [ebp-4]
 00503675    mov        edx,503984; 'BINARY'
 0050367A    call       @LStrCmp
>0050367F    jne        00503688
 00503681    mov        bl,0B
>00503683    jmp        00503806
 00503688    mov        eax,dword ptr [ebp-4]
 0050368B    mov        edx,503994; 'DATE'
 00503690    call       @LStrCmp
>00503695    jne        0050369E
 00503697    mov        bl,0C
>00503699    jmp        00503806
 0050369E    mov        eax,dword ptr [ebp-4]
 005036A1    mov        edx,5039A4; 'TIME'
 005036A6    call       @LStrCmp
>005036AB    jne        005036B4
 005036AD    mov        bl,0D
>005036AF    jmp        00503806
 005036B4    mov        eax,dword ptr [ebp-4]
 005036B7    mov        edx,5039B4; 'TIMESTAMP'
 005036BC    call       @LStrCmp
>005036C1    jne        005036CA
 005036C3    mov        bl,0E
>005036C5    jmp        00503806
 005036CA    mov        eax,dword ptr [ebp-4]
 005036CD    mov        edx,5039C8; 'DATETIME'
 005036D2    call       @LStrCmp
>005036D7    jne        005036E0
 005036D9    mov        bl,0E
>005036DB    jmp        00503806
 005036E0    mov        eax,dword ptr [ebp-4]
 005036E3    mov        edx,5039DC; 'TINYBLOB'
 005036E8    call       @LStrCmp
>005036ED    jne        005036F6
 005036EF    mov        bl,11
>005036F1    jmp        00503806
 005036F6    mov        eax,dword ptr [ebp-4]
 005036F9    mov        edx,5039F0; 'BLOB'
 005036FE    call       @LStrCmp
>00503703    jne        0050370C
 00503705    mov        bl,11
>00503707    jmp        00503806
 0050370C    mov        eax,dword ptr [ebp-4]
 0050370F    mov        edx,503A00; 'MEDIUMBLOB'
 00503714    call       @LStrCmp
>00503719    jne        00503722
 0050371B    mov        bl,11
>0050371D    jmp        00503806
 00503722    mov        eax,dword ptr [ebp-4]
 00503725    mov        edx,503A14; 'LONGBLOB'
 0050372A    call       @LStrCmp
>0050372F    jne        00503738
 00503731    mov        bl,11
>00503733    jmp        00503806
 00503738    mov        eax,dword ptr [ebp-4]
 0050373B    mov        edx,503A28; 'TINYTEXT'
 00503740    call       @LStrCmp
>00503745    jne        0050374E
 00503747    mov        bl,0F
>00503749    jmp        00503806
 0050374E    mov        eax,dword ptr [ebp-4]
 00503751    mov        edx,503A3C; 'TEXT'
 00503756    call       @LStrCmp
>0050375B    jne        00503764
 0050375D    mov        bl,0F
>0050375F    jmp        00503806
 00503764    mov        eax,dword ptr [ebp-4]
 00503767    mov        edx,503A4C; 'MEDIUMTEXT'
 0050376C    call       @LStrCmp
>00503771    jne        0050377A
 00503773    mov        bl,0F
>00503775    jmp        00503806
 0050377A    mov        eax,dword ptr [ebp-4]
 0050377D    mov        edx,503A60; 'LONGTEXT'
 00503782    call       @LStrCmp
>00503787    jne        0050378D
 00503789    mov        bl,0F
>0050378B    jmp        00503806
 0050378D    mov        eax,dword ptr [ebp-4]
 00503790    mov        edx,503A74; 'ENUM'
 00503795    call       @LStrCmp
>0050379A    jne        005037C2
 0050379C    mov        eax,dword ptr [ebp-8]
 0050379F    mov        edx,503A84; 'ENUM('Y','N')'
 005037A4    call       @LStrCmp
>005037A9    je         005037BA
 005037AB    mov        eax,dword ptr [ebp-8]
 005037AE    mov        edx,503A9C; 'ENUM('N','Y')'
 005037B3    call       @LStrCmp
>005037B8    jne        005037BE
 005037BA    mov        bl,1
>005037BC    jmp        00503806
 005037BE    mov        bl,9
>005037C0    jmp        00503806
 005037C2    mov        eax,dword ptr [ebp-4]
 005037C5    mov        edx,503AB4; 'SET'
 005037CA    call       @LStrCmp
>005037CF    jne        005037D5
 005037D1    mov        bl,9
>005037D3    jmp        00503806
 005037D5    mov        eax,dword ptr [ebp-4]
 005037D8    mov        edx,503AC0; 'BIT'
 005037DD    call       @LStrCmp
>005037E2    jne        005037E8
 005037E4    mov        bl,11
>005037E6    jmp        00503806
 005037E8    mov        edi,8
 005037ED    mov        esi,616064; gvar_00616064:array[8] of String
 005037F2    mov        eax,dword ptr [esi]
 005037F4    mov        edx,dword ptr [ebp-4]
 005037F7    call       @LStrCmp
>005037FC    jne        00503800
 005037FE    mov        bl,11
 00503800    add        esi,4
 00503803    dec        edi
<00503804    jne        005037F2
 00503806    test       bl,bl
>00503808    jne        00503820
 0050380A    mov        ecx,503ACC; 'Unknown MySQL data type!'
 0050380F    mov        dl,1
 00503811    mov        eax,[004087B0]; Exception
 00503816    call       Exception.Create; Exception.Create
 0050381B    call       @RaiseExcept
 00503820    xor        eax,eax
 00503822    pop        edx
 00503823    pop        ecx
 00503824    pop        ecx
 00503825    mov        dword ptr fs:[eax],edx
 00503828    push       50384F
 0050382D    lea        eax,[ebp-1C]
 00503830    mov        edx,4
 00503835    call       @LStrArrayClr
 0050383A    lea        eax,[ebp-8]
 0050383D    mov        edx,2
 00503842    call       @LStrArrayClr
 00503847    ret
<00503848    jmp        @HandleFinally
<0050384D    jmp        0050382D
 0050384F    mov        eax,ebx
 00503851    pop        edi
 00503852    pop        esi
 00503853    pop        ebx
 00503854    mov        esp,ebp
 00503856    pop        ebp
 00503857    ret
*}
//end;

//00503AE8
//procedure sub_00503AE8(?:IZMySQLPlainDriver; ?:dword; ?:?; ?:?);
//begin
{*
 00503AE8    push       ebp
 00503AE9    mov        ebp,esp
 00503AEB    push       ecx
 00503AEC    mov        ecx,4
 00503AF1    push       0
 00503AF3    push       0
 00503AF5    dec        ecx
<00503AF6    jne        00503AF1
 00503AF8    push       ecx
 00503AF9    xchg       ecx,dword ptr [ebp-4]
 00503AFC    push       ebx
 00503AFD    push       esi
 00503AFE    mov        byte ptr [ebp-5],cl
 00503B01    mov        ebx,edx
 00503B03    mov        dword ptr [ebp-4],eax
 00503B06    mov        eax,dword ptr [ebp-4]
 00503B09    call       @IntfAddRef
 00503B0E    xor        eax,eax
 00503B10    push       ebp
 00503B11    push       503C2D
 00503B16    push       dword ptr fs:[eax]
 00503B19    mov        dword ptr fs:[eax],esp
 00503B1C    mov        edx,ebx
 00503B1E    mov        eax,dword ptr [ebp-4]
 00503B21    mov        ecx,dword ptr [eax]
 00503B23    call       dword ptr [ecx+48]
 00503B26    lea        edx,[ebp-10]
 00503B29    call       StrPas
 00503B2E    mov        eax,dword ptr [ebp-10]
 00503B31    lea        edx,[ebp-0C]
 00503B34    call       Trim
 00503B39    mov        edx,ebx
 00503B3B    mov        eax,dword ptr [ebp-4]
 00503B3E    mov        ecx,dword ptr [eax]
 00503B40    call       dword ptr [ecx+44]
 00503B43    mov        ebx,eax
 00503B45    test       ebx,ebx
>00503B47    je         00503BFD
 00503B4D    cmp        dword ptr [ebp-0C],0
>00503B51    je         00503BFD
 00503B57    call       @GetTls
 00503B5C    cmp        dword ptr [eax+10],0; threadvar_16
>00503B63    jle        00503B96
 00503B65    mov        eax,dword ptr [ebp-0C]
 00503B68    mov        dword ptr [ebp-18],eax
 00503B6B    mov        byte ptr [ebp-14],0B
 00503B6F    lea        eax,[ebp-18]
 00503B72    push       eax
 00503B73    push       0
 00503B75    lea        edx,[ebp-1C]
 00503B78    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00503B7D    call       LoadResString
 00503B82    mov        ecx,dword ptr [ebp-1C]
 00503B85    mov        dl,1
 00503B87    mov        eax,[00503028]; EZMySQLSilentException
 00503B8C    call       Exception.CreateFmt; EZMySQLSilentException.Create
 00503B91    call       @RaiseExcept
 00503B96    mov        eax,dword ptr [ebp+8]
 00503B99    push       eax
 00503B9A    push       ebx
 00503B9B    mov        eax,dword ptr [ebp-0C]
 00503B9E    push       eax
 00503B9F    lea        edx,[ebp-20]
 00503BA2    mov        eax,dword ptr [ebp-4]
 00503BA5    mov        ecx,dword ptr [eax]
 00503BA7    call       dword ptr [ecx+0C]
 00503BAA    mov        ecx,dword ptr [ebp-20]
 00503BAD    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00503BB2    mov        eax,dword ptr [eax]
 00503BB4    mov        dl,byte ptr [ebp-5]
 00503BB7    mov        esi,dword ptr [eax]
 00503BB9    call       dword ptr [esi+40]
 00503BBC    lea        eax,[ebp-24]
 00503BBF    push       eax
 00503BC0    lea        edx,[ebp-28]
 00503BC3    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00503BC8    call       LoadResString
 00503BCD    mov        eax,dword ptr [ebp-28]
 00503BD0    push       eax
 00503BD1    mov        eax,dword ptr [ebp-0C]
 00503BD4    mov        dword ptr [ebp-18],eax
 00503BD7    mov        byte ptr [ebp-14],0B
 00503BDB    lea        edx,[ebp-18]
 00503BDE    xor        ecx,ecx
 00503BE0    pop        eax
 00503BE1    call       Format
 00503BE6    mov        eax,dword ptr [ebp-24]
 00503BE9    push       eax
 00503BEA    mov        ecx,ebx
 00503BEC    mov        dl,1
 00503BEE    mov        eax,[004C6D20]; EZSQLException
 00503BF3    call       EZSQLException.Create; EZSQLException.Create
 00503BF8    call       @RaiseExcept
 00503BFD    xor        eax,eax
 00503BFF    pop        edx
 00503C00    pop        ecx
 00503C01    pop        ecx
 00503C02    mov        dword ptr fs:[eax],edx
 00503C05    push       503C34
 00503C0A    lea        eax,[ebp-28]
 00503C0D    mov        edx,4
 00503C12    call       @LStrArrayClr
 00503C17    lea        eax,[ebp-10]
 00503C1A    mov        edx,2
 00503C1F    call       @LStrArrayClr
 00503C24    lea        eax,[ebp-4]
 00503C27    call       @IntfClear
 00503C2C    ret
<00503C2D    jmp        @HandleFinally
<00503C32    jmp        00503C0A
 00503C34    pop        esi
 00503C35    pop        ebx
 00503C36    mov        esp,ebp
 00503C38    pop        ebp
 00503C39    ret        4
*}
//end;

//00503C3C
//procedure sub_00503C3C(?:?; ?:?; ?:?);
//begin
{*
 00503C3C    push       ebp
 00503C3D    mov        ebp,esp
 00503C3F    push       ebx
 00503C40    push       esi
 00503C41    push       edi
 00503C42    mov        esi,edx
 00503C44    mov        ebx,eax
 00503C46    mov        eax,ebx
 00503C48    mov        edi,2710
 00503C4D    cdq
 00503C4E    idiv       eax,edi
 00503C50    mov        dword ptr [esi],eax
 00503C52    imul       eax,dword ptr [esi],2710
>00503C58    jno        00503C5F
 00503C5A    call       @IntOver
 00503C5F    mov        edi,ebx
 00503C61    sub        edi,eax
>00503C63    jno        00503C6A
 00503C65    call       @IntOver
 00503C6A    mov        eax,edi
 00503C6C    push       ecx
 00503C6D    mov        ecx,64
 00503C72    cdq
 00503C73    idiv       eax,ecx
 00503C75    pop        ecx
 00503C76    mov        dword ptr [ecx],eax
 00503C78    imul       eax,dword ptr [ecx],64
>00503C7B    jno        00503C82
 00503C7D    call       @IntOver
 00503C82    sub        edi,eax
>00503C84    jno        00503C8B
 00503C86    call       @IntOver
 00503C8B    mov        eax,dword ptr [ebp+8]
 00503C8E    mov        dword ptr [eax],edi
 00503C90    pop        edi
 00503C91    pop        esi
 00503C92    pop        ebx
 00503C93    pop        ebp
 00503C94    ret        4
*}
//end;

//00503C98
//function sub_00503C98:?;
//begin
{*
 00503C98    push       ebp
 00503C99    mov        ebp,esp
 00503C9B    add        esp,0FFFFFFF4
 00503C9E    lea        edx,[ebp-0C]
 00503CA1    push       edx
 00503CA2    lea        ecx,[ebp-8]
 00503CA5    lea        edx,[ebp-4]
 00503CA8    call       00503C3C
 00503CAD    mov        ecx,dword ptr [ebp-0C]
 00503CB0    mov        edx,dword ptr [ebp-8]
 00503CB3    mov        eax,dword ptr [ebp-4]
 00503CB6    call       004C01B0
 00503CBB    mov        esp,ebp
 00503CBD    pop        ebp
 00503CBE    ret
*}
//end;

Initialization
Finalization
//00503CC0
{*
 00503CC0    push       ebp
 00503CC1    mov        ebp,esp
 00503CC3    xor        eax,eax
 00503CC5    push       ebp
 00503CC6    push       503CFC
 00503CCB    push       dword ptr fs:[eax]
 00503CCE    mov        dword ptr fs:[eax],esp
 00503CD1    inc        dword ptr ds:[61E2D8]
>00503CD7    jne        00503CEE
 00503CD9    mov        eax,616064; gvar_00616064:array[8] of String
 00503CDE    mov        ecx,8
 00503CE3    mov        edx,dword ptr ds:[4010F8]; String
 00503CE9    call       @FinalizeArray
 00503CEE    xor        eax,eax
 00503CF0    pop        edx
 00503CF1    pop        ecx
 00503CF2    pop        ecx
 00503CF3    mov        dword ptr fs:[eax],edx
 00503CF6    push       503D03
 00503CFB    ret
<00503CFC    jmp        @HandleFinally
<00503D01    jmp        00503CFB
 00503D03    pop        ebp
 00503D04    ret
*}
end.