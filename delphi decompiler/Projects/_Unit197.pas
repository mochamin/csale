{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit197;

interface

uses
  Classes, Windows, Graphics;

type
  pg_CS = record //size = 8
  f0:String;;

implementation

//00510FFC
//function sub_00510FFC(?:IInterface; ?:AnsiString):?;
//begin
{*
 00510FFC    push       ebp
 00510FFD    mov        ebp,esp
 00510FFF    add        esp,0FFFFFFF4
 00511002    push       ebx
 00511003    xor        ecx,ecx
 00511005    mov        dword ptr [ebp-0C],ecx
 00511008    mov        dword ptr [ebp-8],edx
 0051100B    mov        dword ptr [ebp-4],eax
 0051100E    mov        eax,dword ptr [ebp-4]
 00511011    call       @IntfAddRef
 00511016    mov        eax,dword ptr [ebp-8]
 00511019    call       @LStrAddRef
 0051101E    xor        eax,eax
 00511020    push       ebp
 00511021    push       511323
 00511026    push       dword ptr fs:[eax]
 00511029    mov        dword ptr fs:[eax],esp
 0051102C    lea        edx,[ebp-0C]
 0051102F    mov        eax,dword ptr [ebp-8]
 00511032    call       LowerCase
 00511037    mov        edx,dword ptr [ebp-0C]
 0051103A    lea        eax,[ebp-8]
 0051103D    call       @LStrLAsg
 00511042    mov        eax,dword ptr [ebp-8]
 00511045    mov        edx,51133C; 'interval'
 0051104A    call       @LStrCmp
>0051104F    je         0051108D
 00511051    mov        eax,dword ptr [ebp-8]
 00511054    mov        edx,511350; 'char'
 00511059    call       @LStrCmp
>0051105E    je         0051108D
 00511060    mov        eax,dword ptr [ebp-8]
 00511063    mov        edx,511360; 'varchar'
 00511068    call       @LStrCmp
>0051106D    je         0051108D
 0051106F    mov        eax,dword ptr [ebp-8]
 00511072    mov        edx,511370; 'bit'
 00511077    call       @LStrCmp
>0051107C    je         0051108D
 0051107E    mov        eax,dword ptr [ebp-8]
 00511081    mov        edx,51137C; 'varbit'
 00511086    call       @LStrCmp
>0051108B    jne        00511094
 0051108D    mov        bl,9
>0051108F    jmp        00511300
 00511094    mov        eax,dword ptr [ebp-8]
 00511097    mov        edx,51138C; 'text'
 0051109C    call       @LStrCmp
>005110A1    jne        005110AA
 005110A3    mov        bl,0F
>005110A5    jmp        00511300
 005110AA    mov        eax,dword ptr [ebp-8]
 005110AD    mov        edx,51139C; 'oid'
 005110B2    call       @LStrCmp
>005110B7    jne        005110D6
 005110B9    mov        eax,dword ptr [ebp-4]
 005110BC    mov        edx,dword ptr [eax]
 005110BE    call       dword ptr [edx+94]
 005110C4    test       al,al
>005110C6    je         005110CF
 005110C8    mov        bl,11
>005110CA    jmp        00511300
 005110CF    mov        bl,4
>005110D1    jmp        00511300
 005110D6    mov        eax,dword ptr [ebp-8]
 005110D9    mov        edx,5113A8; 'name'
 005110DE    call       @LStrCmp
>005110E3    jne        005110EC
 005110E5    mov        bl,9
>005110E7    jmp        00511300
 005110EC    mov        eax,dword ptr [ebp-8]
 005110EF    mov        edx,5113B8; 'cidr'
 005110F4    call       @LStrCmp
>005110F9    jne        00511102
 005110FB    mov        bl,9
>005110FD    jmp        00511300
 00511102    mov        eax,dword ptr [ebp-8]
 00511105    mov        edx,5113C8; 'inet'
 0051110A    call       @LStrCmp
>0051110F    jne        00511118
 00511111    mov        bl,9
>00511113    jmp        00511300
 00511118    mov        eax,dword ptr [ebp-8]
 0051111B    mov        edx,5113D8; 'macaddr'
 00511120    call       @LStrCmp
>00511125    jne        0051112E
 00511127    mov        bl,9
>00511129    jmp        00511300
 0051112E    mov        eax,dword ptr [ebp-8]
 00511131    mov        edx,5113E8; 'int2'
 00511136    call       @LStrCmp
>0051113B    jne        00511144
 0051113D    mov        bl,3
>0051113F    jmp        00511300
 00511144    mov        eax,dword ptr [ebp-8]
 00511147    mov        edx,5113F8; 'int4'
 0051114C    call       @LStrCmp
>00511151    jne        0051115A
 00511153    mov        bl,4
>00511155    jmp        00511300
 0051115A    mov        eax,dword ptr [ebp-8]
 0051115D    mov        edx,511408; 'int8'
 00511162    call       @LStrCmp
>00511167    jne        00511170
 00511169    mov        bl,5
>0051116B    jmp        00511300
 00511170    mov        eax,dword ptr [ebp-8]
 00511173    mov        edx,511418; 'float4'
 00511178    call       @LStrCmp
>0051117D    jne        00511186
 0051117F    mov        bl,6
>00511181    jmp        00511300
 00511186    mov        eax,dword ptr [ebp-8]
 00511189    mov        edx,511428; 'float8'
 0051118E    call       @LStrCmp
>00511193    je         005111B3
 00511195    mov        eax,dword ptr [ebp-8]
 00511198    mov        edx,511438; 'decimal'
 0051119D    call       @LStrCmp
>005111A2    je         005111B3
 005111A4    mov        eax,dword ptr [ebp-8]
 005111A7    mov        edx,511448; 'numeric'
 005111AC    call       @LStrCmp
>005111B1    jne        005111BA
 005111B3    mov        bl,7
>005111B5    jmp        00511300
 005111BA    mov        eax,dword ptr [ebp-8]
 005111BD    mov        edx,511458; 'money'
 005111C2    call       @LStrCmp
>005111C7    jne        005111D0
 005111C9    mov        bl,7
>005111CB    jmp        00511300
 005111D0    mov        eax,dword ptr [ebp-8]
 005111D3    mov        edx,511468; 'bool'
 005111D8    call       @LStrCmp
>005111DD    jne        005111E6
 005111DF    mov        bl,1
>005111E1    jmp        00511300
 005111E6    mov        eax,dword ptr [ebp-8]
 005111E9    mov        edx,511478; 'date'
 005111EE    call       @LStrCmp
>005111F3    jne        005111FC
 005111F5    mov        bl,0C
>005111F7    jmp        00511300
 005111FC    mov        eax,dword ptr [ebp-8]
 005111FF    mov        edx,511488; 'time'
 00511204    call       @LStrCmp
>00511209    jne        00511212
 0051120B    mov        bl,0D
>0051120D    jmp        00511300
 00511212    mov        eax,dword ptr [ebp-8]
 00511215    mov        edx,511498; 'datetime'
 0051121A    call       @LStrCmp
>0051121F    je         0051124E
 00511221    mov        eax,dword ptr [ebp-8]
 00511224    mov        edx,5114AC; 'timestamp'
 00511229    call       @LStrCmp
>0051122E    je         0051124E
 00511230    mov        eax,dword ptr [ebp-8]
 00511233    mov        edx,5114C0; 'timestamptz'
 00511238    call       @LStrCmp
>0051123D    je         0051124E
 0051123F    mov        eax,dword ptr [ebp-8]
 00511242    mov        edx,5114D4; 'abstime'
 00511247    call       @LStrCmp
>0051124C    jne        00511255
 0051124E    mov        bl,0E
>00511250    jmp        00511300
 00511255    mov        eax,dword ptr [ebp-8]
 00511258    mov        edx,5114E4; 'regproc'
 0051125D    call       @LStrCmp
>00511262    jne        0051126B
 00511264    mov        bl,9
>00511266    jmp        00511300
 0051126B    mov        eax,dword ptr [ebp-8]
 0051126E    mov        edx,5114F4; 'bytea'
 00511273    call       @LStrCmp
>00511278    jne        00511291
 0051127A    mov        eax,dword ptr [ebp-4]
 0051127D    mov        edx,dword ptr [eax]
 0051127F    call       dword ptr [edx+94]
 00511285    test       al,al
>00511287    je         0051128D
 00511289    mov        bl,0B
>0051128B    jmp        00511300
 0051128D    mov        bl,11
>0051128F    jmp        00511300
 00511291    mov        eax,dword ptr [ebp-8]
 00511294    mov        edx,511504; 'bpchar'
 00511299    call       @LStrCmp
>0051129E    jne        005112A4
 005112A0    mov        bl,9
>005112A2    jmp        00511300
 005112A4    mov        eax,dword ptr [ebp-8]
 005112A7    mov        edx,511514; 'int2vector'
 005112AC    call       @LStrCmp
>005112B1    je         005112D1
 005112B3    mov        eax,dword ptr [ebp-8]
 005112B6    mov        edx,511528; 'oidvector'
 005112BB    call       @LStrCmp
>005112C0    je         005112D1
 005112C2    mov        eax,dword ptr [ebp-8]
 005112C5    mov        edx,51153C; '_aclitem'
 005112CA    call       @LStrCmp
>005112CF    jne        005112D5
 005112D1    mov        bl,0F
>005112D3    jmp        00511300
 005112D5    cmp        dword ptr [ebp-8],0
>005112D9    je         005112FE
 005112DB    mov        eax,1
 005112E0    mov        edx,dword ptr [ebp-8]
 005112E3    dec        eax
 005112E4    test       edx,edx
>005112E6    je         005112ED
 005112E8    cmp        eax,dword ptr [edx-4]
>005112EB    jb         005112F2
 005112ED    call       @BoundErr
 005112F2    inc        eax
 005112F3    cmp        byte ptr [edx+eax-1],5F
>005112F8    jne        005112FE
 005112FA    mov        bl,0F
>005112FC    jmp        00511300
 005112FE    xor        ebx,ebx
 00511300    xor        eax,eax
 00511302    pop        edx
 00511303    pop        ecx
 00511304    pop        ecx
 00511305    mov        dword ptr fs:[eax],edx
 00511308    push       51132A
 0051130D    lea        eax,[ebp-0C]
 00511310    mov        edx,2
 00511315    call       @LStrArrayClr
 0051131A    lea        eax,[ebp-4]
 0051131D    call       @IntfClear
 00511322    ret
<00511323    jmp        @HandleFinally
<00511328    jmp        0051130D
 0051132A    mov        eax,ebx
 0051132C    pop        ebx
 0051132D    mov        esp,ebp
 0051132F    pop        ebp
 00511330    ret
*}
//end;

//00511548
//function sub_00511548(?:IInterface; ?:?):?;
//begin
{*
 00511548    push       ebp
 00511549    mov        ebp,esp
 0051154B    push       ecx
 0051154C    push       ebx
 0051154D    mov        ebx,edx
 0051154F    mov        dword ptr [ebp-4],eax
 00511552    mov        eax,dword ptr [ebp-4]
 00511555    call       @IntfAddRef
 0051155A    xor        eax,eax
 0051155C    push       ebp
 0051155D    push       51170D
 00511562    push       dword ptr fs:[eax]
 00511565    mov        dword ptr fs:[eax],esp
 00511568    cmp        ebx,2BD
>0051156E    jg         005115F5
>00511574    je         005116B2
 0051157A    cmp        ebx,17
>0051157D    jg         005115B4
>0051157F    je         005116A6
 00511585    add        ebx,0FFFFFFF0
 00511588    cmp        ebx,6
>0051158B    ja         005116F5
 00511591    jmp        dword ptr [ebx*4+511598]
 00511591    dd         5116BA
 00511591    dd         5116D2
 00511591    dd         51167F
 00511591    dd         51169E
 00511591    dd         5116AA
 00511591    dd         5116A2
 00511591    dd         5116ED
 005115B4    cmp        ebx,1E
>005115B7    jg         005115DB
>005115B9    je         005116ED
 005115BF    sub        ebx,18
>005115C2    je         005116CE
 005115C8    dec        ebx
>005115C9    je         00511683
 005115CF    dec        ebx
>005115D0    je         00511687
>005115D6    jmp        005116F5
 005115DB    sub        ebx,28B
>005115E1    je         005116F1
 005115E7    sub        ebx,31
>005115EA    je         005116AE
>005115F0    jmp        005116F5
 005115F5    cmp        ebx,43B
>005115FB    jg         0051164C
>005115FD    je         005116C2
 00511603    cmp        ebx,412
>00511609    jg         0051163A
>0051160B    je         005116E9
 00511611    sub        ebx,2BE
>00511617    je         005116C6
 0051161D    sub        ebx,58
>00511620    je         005116B6
 00511626    add        ebx,0FFFFFF2E
 0051162C    sub        ebx,1D
>0051162F    jb         005116F1
>00511635    jmp        005116F5
 0051163A    sub        ebx,413
>00511640    je         0051167F
 00511642    sub        ebx,27
>00511645    je         005116BE
>00511647    jmp        005116F5
 0051164C    cmp        ebx,618
>00511652    jg         0051166D
>00511654    je         005116CA
 00511656    sub        ebx,45A
>0051165C    je         005116C6
 0051165E    sub        ebx,46
>00511661    je         005116C6
 00511663    sub        ebx,2
>00511666    je         0051167F
>00511668    jmp        005116F5
 0051166D    sub        ebx,61A
>00511673    je         005116CA
 00511675    sub        ebx,8A
>0051167B    je         005116B2
>0051167D    jmp        005116F5
 0051167F    mov        bl,9
>00511681    jmp        005116F7
 00511683    mov        bl,0F
>00511685    jmp        005116F7
 00511687    mov        eax,dword ptr [ebp-4]
 0051168A    mov        edx,dword ptr [eax]
 0051168C    call       dword ptr [edx+94]
 00511692    test       al,al
>00511694    je         0051169A
 00511696    mov        bl,11
>00511698    jmp        005116F7
 0051169A    mov        bl,4
>0051169C    jmp        005116F7
 0051169E    mov        bl,9
>005116A0    jmp        005116F7
 005116A2    mov        bl,3
>005116A4    jmp        005116F7
 005116A6    mov        bl,4
>005116A8    jmp        005116F7
 005116AA    mov        bl,5
>005116AC    jmp        005116F7
 005116AE    mov        bl,6
>005116B0    jmp        005116F7
 005116B2    mov        bl,7
>005116B4    jmp        005116F7
 005116B6    mov        bl,6
>005116B8    jmp        005116F7
 005116BA    mov        bl,1
>005116BC    jmp        005116F7
 005116BE    mov        bl,0C
>005116C0    jmp        005116F7
 005116C2    mov        bl,0D
>005116C4    jmp        005116F7
 005116C6    mov        bl,0E
>005116C8    jmp        005116F7
 005116CA    mov        bl,9
>005116CC    jmp        005116F7
 005116CE    mov        bl,9
>005116D0    jmp        005116F7
 005116D2    mov        eax,dword ptr [ebp-4]
 005116D5    mov        edx,dword ptr [eax]
 005116D7    call       dword ptr [edx+94]
 005116DD    test       al,al
>005116DF    je         005116E5
 005116E1    mov        bl,0B
>005116E3    jmp        005116F7
 005116E5    mov        bl,11
>005116E7    jmp        005116F7
 005116E9    mov        bl,9
>005116EB    jmp        005116F7
 005116ED    mov        bl,0F
>005116EF    jmp        005116F7
 005116F1    mov        bl,0F
>005116F3    jmp        005116F7
 005116F5    xor        ebx,ebx
 005116F7    xor        eax,eax
 005116F9    pop        edx
 005116FA    pop        ecx
 005116FB    pop        ecx
 005116FC    mov        dword ptr fs:[eax],edx
 005116FF    push       511714
 00511704    lea        eax,[ebp-4]
 00511707    call       @IntfClear
 0051170C    ret
<0051170D    jmp        @HandleFinally
<00511712    jmp        00511704
 00511714    mov        eax,ebx
 00511716    pop        ebx
 00511717    pop        ecx
 00511718    pop        ebp
 00511719    ret
*}
//end;

//0051171C
//procedure sub_0051171C(?:AnsiString; ?:?);
//begin
{*
 0051171C    push       ebp
 0051171D    mov        ebp,esp
 0051171F    add        esp,0FFFFFFF4
 00511722    push       ebx
 00511723    push       esi
 00511724    push       edi
 00511725    mov        dword ptr [ebp-8],edx
 00511728    mov        dword ptr [ebp-4],eax
 0051172B    mov        eax,dword ptr [ebp-4]
 0051172E    call       @LStrAddRef
 00511733    xor        eax,eax
 00511735    push       ebp
 00511736    push       511838
 0051173B    push       dword ptr fs:[eax]
 0051173E    mov        dword ptr fs:[eax],esp
 00511741    mov        eax,dword ptr [ebp-4]
 00511744    call       @LStrLen
 00511749    mov        dword ptr [ebp-0C],eax
 0051174C    mov        eax,dword ptr [ebp-4]
 0051174F    call       @LStrToPChar
 00511754    mov        ebx,eax
 00511756    mov        esi,2
 0051175B    mov        edi,dword ptr [ebp-0C]
 0051175E    test       edi,edi
>00511760    jle        0051178C
 00511762    mov        al,byte ptr [ebx]
 00511764    test       al,al
>00511766    je         00511770
 00511768    sub        al,27
>0051176A    je         00511770
 0051176C    sub        al,35
>0051176E    jne        0051177C
 00511770    add        esi,4
>00511773    jno        0051177A
 00511775    call       @IntOver
>0051177A    jmp        00511786
 0051177C    add        esi,1
>0051177F    jno        00511786
 00511781    call       @IntOver
 00511786    add        ebx,1
 00511789    dec        edi
<0051178A    jne        00511762
 0051178C    mov        eax,dword ptr [ebp-4]
 0051178F    call       @LStrToPChar
 00511794    mov        ebx,eax
 00511796    mov        eax,dword ptr [ebp-8]
 00511799    mov        edx,esi
 0051179B    call       @LStrSetLength
 005117A0    mov        eax,dword ptr [ebp-8]
 005117A3    mov        eax,dword ptr [eax]
 005117A5    call       @LStrToPChar
 005117AA    mov        esi,eax
 005117AC    mov        byte ptr [esi],27
 005117AF    add        esi,1
 005117B2    mov        edi,dword ptr [ebp-0C]
 005117B5    test       edi,edi
>005117B7    jle        0051181F
 005117B9    mov        al,byte ptr [ebx]
 005117BB    mov        edx,eax
 005117BD    test       dl,dl
>005117BF    je         005117CB
 005117C1    sub        dl,27
>005117C4    je         005117CB
 005117C6    sub        dl,35
>005117C9    jne        00511814
 005117CB    mov        byte ptr [esi],5C
 005117CE    xor        eax,eax
 005117D0    mov        al,byte ptr [ebx]
 005117D2    shr        eax,6
 005117D5    add        eax,30
>005117D8    jno        005117DF
 005117DA    call       @IntOver
 005117DF    mov        byte ptr [esi+1],al
 005117E2    xor        eax,eax
 005117E4    mov        al,byte ptr [ebx]
 005117E6    shr        eax,3
 005117E9    and        eax,7
 005117EC    add        eax,30
>005117EF    jno        005117F6
 005117F1    call       @IntOver
 005117F6    mov        byte ptr [esi+2],al
 005117F9    mov        al,byte ptr [ebx]
 005117FB    and        al,7
 005117FD    and        eax,0FF
 00511802    add        eax,30
>00511805    jno        0051180C
 00511807    call       @IntOver
 0051180C    mov        byte ptr [esi+3],al
 0051180F    add        esi,4
>00511812    jmp        00511819
 00511814    mov        byte ptr [esi],al
 00511816    add        esi,1
 00511819    add        ebx,1
 0051181C    dec        edi
<0051181D    jne        005117B9
 0051181F    mov        byte ptr [esi],27
 00511822    xor        eax,eax
 00511824    pop        edx
 00511825    pop        ecx
 00511826    pop        ecx
 00511827    mov        dword ptr fs:[eax],edx
 0051182A    push       51183F
 0051182F    lea        eax,[ebp-4]
 00511832    call       @LStrClr
 00511837    ret
<00511838    jmp        @HandleFinally
<0051183D    jmp        0051182F
 0051183F    pop        edi
 00511840    pop        esi
 00511841    pop        ebx
 00511842    mov        esp,ebp
 00511844    pop        ebp
 00511845    ret
*}
//end;

//00511848
//function sub_00511848(?:String):?;
//begin
{*
 00511848    push       ebp
 00511849    mov        ebp,esp
 0051184B    add        esp,0FFFFFFF0
 0051184E    push       ebx
 0051184F    push       esi
 00511850    push       edi
 00511851    xor        edx,edx
 00511853    mov        dword ptr [ebp-0C],edx
 00511856    mov        dword ptr [ebp-10],edx
 00511859    mov        edi,eax
 0051185B    xor        eax,eax
 0051185D    push       ebp
 0051185E    push       51198F
 00511863    push       dword ptr fs:[eax]
 00511866    mov        dword ptr fs:[eax],esp
 00511869    mov        byte ptr [ebp-1],26
 0051186D    xor        ebx,ebx
>0051186F    jmp        005118C3
 00511871    lea        edx,[ebp-0C]
 00511874    mov        eax,edi
 00511876    call       UpperCase
 0051187B    mov        eax,dword ptr [ebp-0C]
 0051187E    push       eax
 0051187F    cmp        ebx,26
>00511882    jbe        00511889
 00511884    call       @BoundErr
 00511889    mov        eax,dword ptr [esi*8+616244]; gvar_00616244:array[39] of pg_CS
 00511890    lea        edx,[ebp-10]
 00511893    call       UpperCase
 00511898    mov        edx,dword ptr [ebp-10]
 0051189B    pop        eax
 0051189C    call       @LStrCmp
>005118A1    jne        005118B9
 005118A3    cmp        ebx,26
>005118A6    jbe        005118AD
 005118A8    call       @BoundErr
 005118AD    mov        al,byte ptr [esi*8+616248]
 005118B4    mov        byte ptr [ebp-1],al
>005118B7    jmp        005118D9
 005118B9    add        ebx,1
>005118BC    jno        005118C3
 005118BE    call       @IntOver
 005118C3    mov        esi,ebx
 005118C5    cmp        esi,26
>005118C8    jbe        005118CF
 005118CA    call       @BoundErr
 005118CF    cmp        byte ptr [esi*8+616248],26
<005118D7    jne        00511871
 005118D9    cmp        byte ptr [ebp-1],26
>005118DD    jne        00511974
 005118E3    xor        ebx,ebx
 005118E5    xor        eax,eax
 005118E7    mov        dword ptr [ebp-8],eax
>005118EA    jmp        0051195A
 005118EC    cmp        ebx,26
>005118EF    jbe        005118F6
 005118F1    call       @BoundErr
 005118F6    mov        eax,dword ptr [esi*8+616244]; gvar_00616244:array[39] of pg_CS
 005118FD    mov        edx,edi
 005118FF    call       @LStrPos
 00511904    test       eax,eax
>00511906    jle        00511950
 00511908    cmp        ebx,26
>0051190B    jbe        00511912
 0051190D    call       @BoundErr
 00511912    mov        eax,dword ptr [esi*8+616244]; gvar_00616244:array[39] of pg_CS
 00511919    call       @LStrLen
 0051191E    cmp        eax,dword ptr [ebp-8]
>00511921    jl         00511950
 00511923    cmp        ebx,26
>00511926    jbe        0051192D
 00511928    call       @BoundErr
 0051192D    mov        eax,dword ptr [esi*8+616244]; gvar_00616244:array[39] of pg_CS
 00511934    call       @LStrLen
 00511939    mov        dword ptr [ebp-8],eax
 0051193C    cmp        ebx,26
>0051193F    jbe        00511946
 00511941    call       @BoundErr
 00511946    mov        al,byte ptr [esi*8+616248]
 0051194D    mov        byte ptr [ebp-1],al
 00511950    add        ebx,1
>00511953    jno        0051195A
 00511955    call       @IntOver
 0051195A    mov        esi,ebx
 0051195C    cmp        esi,26
>0051195F    jbe        00511966
 00511961    call       @BoundErr
 00511966    cmp        byte ptr [esi*8+616248],26
<0051196E    jne        005118EC
 00511974    xor        eax,eax
 00511976    pop        edx
 00511977    pop        ecx
 00511978    pop        ecx
 00511979    mov        dword ptr fs:[eax],edx
 0051197C    push       511996
 00511981    lea        eax,[ebp-10]
 00511984    mov        edx,2
 00511989    call       @LStrArrayClr
 0051198E    ret
<0051198F    jmp        @HandleFinally
<00511994    jmp        00511981
 00511996    mov        al,byte ptr [ebp-1]
 00511999    pop        edi
 0051199A    pop        esi
 0051199B    pop        ebx
 0051199C    mov        esp,ebp
 0051199E    pop        ebp
 0051199F    ret
*}
//end;

//005119A0
//function sub_005119A0(?:?; ?:PChar; ?:?):?;
//begin
{*
 005119A0    test       edx,edx
>005119A2    jne        005119A6
 005119A4    xor        eax,eax
 005119A6    and        ecx,7F
 005119A9    cmp        ecx,22
>005119AC    ja         00511C54
 005119B2    mov        cl,byte ptr [ecx+5119BF]
 005119B8    jmp        dword ptr [ecx*4+5119E2]
 005119B8    db         0
 005119B8    db         6
 005119B8    db         7
 005119B8    db         7
 005119B8    db         8
 005119B8    db         7
 005119B8    db         1
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         0
 005119B8    db         2
 005119B8    db         3
 005119B8    db         4
 005119B8    db         5
 005119B8    db         0
 005119B8    db         9
 005119B8    db         1
 005119B8    dd         511C54
 005119B8    dd         511A0A
 005119B8    dd         511A91
 005119B8    dd         511ACA
 005119B8    dd         511AF3
 005119B8    dd         511B19
 005119B8    dd         511B3F
 005119B8    dd         511B87
 005119B8    dd         511BB0
 005119B8    dd         511C03
 00511A0A    cmp        eax,2
>00511A0D    jge        00511A75
 00511A0F    cmp        edx,80
>00511A15    jl         00511A75
 00511A17    cmp        edx,0FC
>00511A1D    jl         00511A29
 00511A1F    mov        eax,6
>00511A24    jmp        00511C56
 00511A29    cmp        edx,0F8
>00511A2F    jl         00511A3B
 00511A31    mov        eax,5
>00511A36    jmp        00511C56
 00511A3B    cmp        edx,0F0
>00511A41    jl         00511A4D
 00511A43    mov        eax,4
>00511A48    jmp        00511C56
 00511A4D    cmp        edx,0E0
>00511A53    jl         00511A5F
 00511A55    mov        eax,3
>00511A5A    jmp        00511C56
 00511A5F    cmp        edx,0C0
>00511A65    jl         00511C56
 00511A6B    mov        eax,2
>00511A70    jmp        00511C56
 00511A75    cmp        eax,2
>00511A78    jle        00511A8E
 00511A7A    cmp        edx,7F
>00511A7D    jle        00511A8E
 00511A7F    sub        eax,1
>00511A82    jno        00511A89
 00511A84    call       @IntOver
>00511A89    jmp        00511C56
 00511A8E    xor        eax,eax
 00511A90    ret
 00511A91    cmp        eax,2
>00511A94    jge        00511AB8
 00511A96    cmp        edx,80
>00511A9C    jle        00511AB8
 00511A9E    cmp        edx,9F
>00511AA4    jle        00511AAE
 00511AA6    cmp        edx,0E0
>00511AAC    jl         00511AB8
 00511AAE    mov        eax,2
>00511AB3    jmp        00511C56
 00511AB8    cmp        eax,2
>00511ABB    jne        00511AC7
 00511ABD    mov        eax,1
>00511AC2    jmp        00511C56
 00511AC7    xor        eax,eax
 00511AC9    ret
 00511ACA    cmp        eax,2
>00511ACD    jge        00511AE1
 00511ACF    cmp        edx,0A0
>00511AD5    jle        00511AE1
 00511AD7    mov        eax,2
>00511ADC    jmp        00511C56
 00511AE1    cmp        eax,2
>00511AE4    jne        00511AF0
 00511AE6    mov        eax,1
>00511AEB    jmp        00511C56
 00511AF0    xor        eax,eax
 00511AF2    ret
 00511AF3    cmp        eax,2
>00511AF6    jge        00511B07
 00511AF8    cmp        edx,7F
>00511AFB    jle        00511B07
 00511AFD    mov        eax,2
>00511B02    jmp        00511C56
 00511B07    cmp        eax,2
>00511B0A    jne        00511B16
 00511B0C    mov        eax,1
>00511B11    jmp        00511C56
 00511B16    xor        eax,eax
 00511B18    ret
 00511B19    cmp        eax,2
>00511B1C    jge        00511B2D
 00511B1E    cmp        edx,7F
>00511B21    jle        00511B2D
 00511B23    mov        eax,2
>00511B28    jmp        00511C56
 00511B2D    cmp        eax,2
>00511B30    jne        00511B3C
 00511B32    mov        eax,1
>00511B37    jmp        00511C56
 00511B3C    xor        eax,eax
 00511B3E    ret
 00511B3F    cmp        eax,3
>00511B42    jge        00511B56
 00511B44    cmp        edx,8F
>00511B4A    jne        00511B56
 00511B4C    mov        eax,3
>00511B51    jmp        00511C56
 00511B56    cmp        eax,2
>00511B59    je         00511B75
 00511B5B    cmp        edx,8E
>00511B61    je         00511B6B
 00511B63    cmp        edx,0A0
>00511B69    jle        00511B75
 00511B6B    mov        eax,2
>00511B70    jmp        00511C56
 00511B75    cmp        eax,2
>00511B78    jne        00511B84
 00511B7A    mov        eax,1
>00511B7F    jmp        00511C56
 00511B84    xor        eax,eax
 00511B86    ret
 00511B87    cmp        eax,2
>00511B8A    jge        00511B9E
 00511B8C    cmp        edx,0A0
>00511B92    jle        00511B9E
 00511B94    mov        eax,2
>00511B99    jmp        00511C56
 00511B9E    cmp        eax,2
>00511BA1    jne        00511BAD
 00511BA3    mov        eax,1
>00511BA8    jmp        00511C56
 00511BAD    xor        eax,eax
 00511BAF    ret
 00511BB0    cmp        eax,4
>00511BB3    jge        00511BC7
 00511BB5    cmp        edx,8E
>00511BBB    jne        00511BC7
 00511BBD    mov        eax,4
>00511BC2    jmp        00511C56
 00511BC7    cmp        eax,4
>00511BCA    jne        00511BDB
 00511BCC    cmp        edx,0A0
>00511BD2    jle        00511BDB
 00511BD4    mov        eax,3
>00511BD9    jmp        00511C56
 00511BDB    cmp        eax,3
>00511BDE    je         00511BE5
 00511BE0    cmp        eax,2
>00511BE3    jge        00511BF4
 00511BE5    cmp        edx,0A0
>00511BEB    jle        00511BF4
 00511BED    mov        eax,2
>00511BF2    jmp        00511C56
 00511BF4    cmp        eax,2
>00511BF7    jne        00511C00
 00511BF9    mov        eax,1
>00511BFE    jmp        00511C56
 00511C00    xor        eax,eax
 00511C02    ret
 00511C03    cmp        eax,2
>00511C06    jge        00511C17
 00511C08    cmp        edx,80
>00511C0E    jle        00511C17
 00511C10    mov        eax,2
>00511C15    jmp        00511C56
 00511C17    cmp        eax,2
>00511C1A    jne        00511C34
 00511C1C    cmp        edx,30
>00511C1F    jl         00511C2D
 00511C21    cmp        edx,39
>00511C24    jg         00511C2D
 00511C26    mov        eax,3
>00511C2B    jmp        00511C56
 00511C2D    mov        eax,1
>00511C32    jmp        00511C56
 00511C34    cmp        eax,3
>00511C37    jne        00511C51
 00511C39    cmp        edx,30
>00511C3C    jl         00511C4A
 00511C3E    cmp        edx,39
>00511C41    jg         00511C4A
 00511C43    mov        eax,1
>00511C48    jmp        00511C56
 00511C4A    mov        eax,3
>00511C4F    jmp        00511C56
 00511C51    xor        eax,eax
 00511C53    ret
 00511C54    xor        eax,eax
 00511C56    ret
*}
//end;

//00511C58
//procedure sub_00511C58(?:?; ?:AnsiString; ?:?);
//begin
{*
 00511C58    push       ebp
 00511C59    mov        ebp,esp
 00511C5B    add        esp,0FFFFFFE8
 00511C5E    push       ebx
 00511C5F    push       esi
 00511C60    mov        dword ptr [ebp-0C],ecx
 00511C63    mov        dword ptr [ebp-8],edx
 00511C66    mov        byte ptr [ebp-1],al
 00511C69    mov        eax,dword ptr [ebp-8]
 00511C6C    call       @LStrAddRef
 00511C71    xor        eax,eax
 00511C73    push       ebp
 00511C74    push       511DC4
 00511C79    push       dword ptr fs:[eax]
 00511C7C    mov        dword ptr fs:[eax],esp
 00511C7F    mov        eax,dword ptr [ebp-8]
 00511C82    call       @LStrLen
 00511C87    mov        dword ptr [ebp-10],eax
 00511C8A    mov        eax,dword ptr [ebp-8]
 00511C8D    call       @LStrToPChar
 00511C92    mov        ebx,eax
 00511C94    mov        dword ptr [ebp-14],2
 00511C9B    xor        eax,eax
 00511C9D    mov        esi,dword ptr [ebp-10]
 00511CA0    test       esi,esi
>00511CA2    jle        00511CE2
 00511CA4    xor        edx,edx
 00511CA6    mov        dl,byte ptr [ebx]
 00511CA8    mov        cl,byte ptr [ebp-1]
 00511CAB    call       005119A0
 00511CB0    mov        dl,byte ptr [ebx]
 00511CB2    test       dl,dl
>00511CB4    je         00511CC4
 00511CB6    sub        dl,27
>00511CB9    je         00511CC4
 00511CBB    cmp        byte ptr [ebx],5C
>00511CBE    jne        00511CD1
 00511CC0    test       eax,eax
>00511CC2    jne        00511CD1
 00511CC4    add        dword ptr [ebp-14],4
>00511CC8    jno        00511CCF
 00511CCA    call       @IntOver
>00511CCF    jmp        00511CDC
 00511CD1    add        dword ptr [ebp-14],1
>00511CD5    jno        00511CDC
 00511CD7    call       @IntOver
 00511CDC    add        ebx,1
 00511CDF    dec        esi
<00511CE0    jne        00511CA4
 00511CE2    mov        eax,dword ptr [ebp-8]
 00511CE5    call       @LStrToPChar
 00511CEA    mov        ebx,eax
 00511CEC    mov        eax,dword ptr [ebp-0C]
 00511CEF    mov        edx,dword ptr [ebp-14]
 00511CF2    call       @LStrSetLength
 00511CF7    mov        eax,dword ptr [ebp-0C]
 00511CFA    mov        eax,dword ptr [eax]
 00511CFC    call       @LStrToPChar
 00511D01    mov        dword ptr [ebp-18],eax
 00511D04    mov        eax,dword ptr [ebp-18]
 00511D07    mov        byte ptr [eax],27
 00511D0A    add        dword ptr [ebp-18],1
 00511D0E    xor        eax,eax
 00511D10    mov        esi,dword ptr [ebp-10]
 00511D13    test       esi,esi
>00511D15    jle        00511DA8
 00511D1B    xor        edx,edx
 00511D1D    mov        dl,byte ptr [ebx]
 00511D1F    mov        cl,byte ptr [ebp-1]
 00511D22    call       005119A0
 00511D27    mov        dl,byte ptr [ebx]
 00511D29    test       dl,dl
>00511D2B    je         00511D3B
 00511D2D    sub        dl,27
>00511D30    je         00511D3B
 00511D32    cmp        byte ptr [ebx],5C
>00511D35    jne        00511D93
 00511D37    test       eax,eax
>00511D39    jne        00511D93
 00511D3B    mov        edx,dword ptr [ebp-18]
 00511D3E    mov        byte ptr [edx],5C
 00511D41    xor        edx,edx
 00511D43    mov        dl,byte ptr [ebx]
 00511D45    shr        edx,6
 00511D48    add        edx,30
>00511D4B    jno        00511D52
 00511D4D    call       @IntOver
 00511D52    mov        ecx,dword ptr [ebp-18]
 00511D55    mov        byte ptr [ecx+1],dl
 00511D58    xor        edx,edx
 00511D5A    mov        dl,byte ptr [ebx]
 00511D5C    shr        edx,3
 00511D5F    and        edx,7
 00511D62    add        edx,30
>00511D65    jno        00511D6C
 00511D67    call       @IntOver
 00511D6C    mov        ecx,dword ptr [ebp-18]
 00511D6F    mov        byte ptr [ecx+2],dl
 00511D72    mov        dl,byte ptr [ebx]
 00511D74    and        dl,7
 00511D77    and        edx,0FF
 00511D7D    add        edx,30
>00511D80    jno        00511D87
 00511D82    call       @IntOver
 00511D87    mov        ecx,dword ptr [ebp-18]
 00511D8A    mov        byte ptr [ecx+3],dl
 00511D8D    add        dword ptr [ebp-18],4
>00511D91    jmp        00511D9E
 00511D93    mov        edx,dword ptr [ebp-18]
 00511D96    mov        cl,byte ptr [ebx]
 00511D98    mov        byte ptr [edx],cl
 00511D9A    add        dword ptr [ebp-18],1
 00511D9E    add        ebx,1
 00511DA1    dec        esi
<00511DA2    jne        00511D1B
 00511DA8    mov        eax,dword ptr [ebp-18]
 00511DAB    mov        byte ptr [eax],27
 00511DAE    xor        eax,eax
 00511DB0    pop        edx
 00511DB1    pop        ecx
 00511DB2    pop        ecx
 00511DB3    mov        dword ptr fs:[eax],edx
 00511DB6    push       511DCB
 00511DBB    lea        eax,[ebp-8]
 00511DBE    call       @LStrClr
 00511DC3    ret
<00511DC4    jmp        @HandleFinally
<00511DC9    jmp        00511DBB
 00511DCB    pop        esi
 00511DCC    pop        ebx
 00511DCD    mov        esp,ebp
 00511DCF    pop        ebp
 00511DD0    ret
*}
//end;

//00511DD4
//procedure sub_00511DD4(?:AnsiString; ?:AnsiString);
//begin
{*
 00511DD4    push       ebp
 00511DD5    mov        ebp,esp
 00511DD7    add        esp,0FFFFFFF8
 00511DDA    push       ebx
 00511DDB    push       esi
 00511DDC    push       edi
 00511DDD    mov        dword ptr [ebp-8],edx
 00511DE0    mov        dword ptr [ebp-4],eax
 00511DE3    mov        eax,dword ptr [ebp-4]
 00511DE6    call       @LStrAddRef
 00511DEB    xor        eax,eax
 00511DED    push       ebp
 00511DEE    push       511EDF
 00511DF3    push       dword ptr fs:[eax]
 00511DF6    mov        dword ptr fs:[eax],esp
 00511DF9    mov        eax,dword ptr [ebp-4]
 00511DFC    call       @LStrLen
 00511E01    mov        esi,eax
 00511E03    mov        eax,dword ptr [ebp-4]
 00511E06    call       @LStrToPChar
 00511E0B    mov        ebx,eax
 00511E0D    mov        eax,dword ptr [ebp-8]
 00511E10    mov        edx,esi
 00511E12    call       @LStrSetLength
 00511E17    xor        edi,edi
 00511E19    mov        eax,dword ptr [ebp-8]
 00511E1C    mov        eax,dword ptr [eax]
 00511E1E    call       @LStrToPChar
 00511E23    test       esi,esi
>00511E25    jle        00511EBF
 00511E2B    cmp        byte ptr [ebx],5C
>00511E2E    jne        00511E99
 00511E30    add        ebx,1
 00511E33    mov        dl,byte ptr [ebx]
 00511E35    sub        dl,27
>00511E38    je         00511E3F
 00511E3A    sub        dl,35
>00511E3D    jne        00511E52
 00511E3F    mov        dl,byte ptr [ebx]
 00511E41    mov        byte ptr [eax],dl
 00511E43    add        ebx,1
 00511E46    sub        esi,2
>00511E49    jno        00511E50
 00511E4B    call       @IntOver
>00511E50    jmp        00511EAA
 00511E52    xor        edx,edx
 00511E54    mov        dl,byte ptr [ebx]
 00511E56    sub        edx,30
>00511E59    jno        00511E60
 00511E5B    call       @IntOver
 00511E60    shl        edx,6
 00511E63    xor        ecx,ecx
 00511E65    mov        cl,byte ptr [ebx+1]
 00511E68    sub        ecx,30
>00511E6B    jno        00511E72
 00511E6D    call       @IntOver
 00511E72    shl        ecx,3
 00511E75    or         edx,ecx
 00511E77    xor        ecx,ecx
 00511E79    mov        cl,byte ptr [ebx+2]
 00511E7C    sub        ecx,30
>00511E7F    jno        00511E86
 00511E81    call       @IntOver
 00511E86    or         edx,ecx
 00511E88    mov        byte ptr [eax],dl
 00511E8A    add        ebx,3
 00511E8D    sub        esi,4
>00511E90    jno        00511E97
 00511E92    call       @IntOver
>00511E97    jmp        00511EAA
 00511E99    mov        dl,byte ptr [ebx]
 00511E9B    mov        byte ptr [eax],dl
 00511E9D    add        ebx,1
 00511EA0    sub        esi,1
>00511EA3    jno        00511EAA
 00511EA5    call       @IntOver
 00511EAA    add        eax,1
 00511EAD    add        edi,1
>00511EB0    jno        00511EB7
 00511EB2    call       @IntOver
 00511EB7    test       esi,esi
<00511EB9    jg         00511E2B
 00511EBF    mov        eax,dword ptr [ebp-8]
 00511EC2    mov        edx,edi
 00511EC4    call       @LStrSetLength
 00511EC9    xor        eax,eax
 00511ECB    pop        edx
 00511ECC    pop        ecx
 00511ECD    pop        ecx
 00511ECE    mov        dword ptr fs:[eax],edx
 00511ED1    push       511EE6
 00511ED6    lea        eax,[ebp-4]
 00511ED9    call       @LStrClr
 00511EDE    ret
<00511EDF    jmp        @HandleFinally
<00511EE4    jmp        00511ED6
 00511EE6    pop        edi
 00511EE7    pop        esi
 00511EE8    pop        ebx
 00511EE9    pop        ecx
 00511EEA    pop        ecx
 00511EEB    pop        ebp
 00511EEC    ret
*}
//end;

//00511EF0
//procedure sub_00511EF0(?:IZConnection; ?:IZPostgreSQLPlainDriver; ?:dword; ?:?; ?:?; ?:?);
//begin
{*
 00511EF0    push       ebp
 00511EF1    mov        ebp,esp
 00511EF3    push       ecx
 00511EF4    mov        ecx,5
 00511EF9    push       0
 00511EFB    push       0
 00511EFD    dec        ecx
<00511EFE    jne        00511EF9
 00511F00    xchg       ecx,dword ptr [ebp-4]
 00511F03    push       ebx
 00511F04    push       esi
 00511F05    push       edi
 00511F06    mov        esi,ecx
 00511F08    mov        dword ptr [ebp-8],edx
 00511F0B    mov        dword ptr [ebp-4],eax
 00511F0E    mov        edi,dword ptr [ebp+8]
 00511F11    mov        eax,dword ptr [ebp-4]
 00511F14    call       @IntfAddRef
 00511F19    mov        eax,dword ptr [ebp-8]
 00511F1C    call       @IntfAddRef
 00511F21    mov        eax,dword ptr [ebp+0C]
 00511F24    call       @LStrAddRef
 00511F29    xor        eax,eax
 00511F2B    push       ebp
 00511F2C    push       512081
 00511F31    push       dword ptr fs:[eax]
 00511F34    mov        dword ptr fs:[eax],esp
 00511F37    test       esi,esi
>00511F39    je         00511F5A
 00511F3B    mov        edx,esi
 00511F3D    mov        eax,dword ptr [ebp-8]
 00511F40    mov        ecx,dword ptr [eax]
 00511F42    call       dword ptr [ecx+58]
 00511F45    lea        edx,[ebp-14]
 00511F48    call       StrPas
 00511F4D    mov        eax,dword ptr [ebp-14]
 00511F50    lea        edx,[ebp-0C]
 00511F53    call       Trim
>00511F58    jmp        00511F62
 00511F5A    lea        eax,[ebp-0C]
 00511F5D    call       @LStrClr
 00511F62    cmp        dword ptr [ebp-0C],0
>00511F66    je         00511F98
 00511F68    test       edi,edi
>00511F6A    je         00511F90
 00511F6C    mov        cl,43
 00511F6E    mov        edx,edi
 00511F70    mov        eax,dword ptr [ebp-8]
 00511F73    mov        ebx,dword ptr [eax]
 00511F75    call       dword ptr [ebx+0AC]
 00511F7B    lea        edx,[ebp-18]
 00511F7E    call       StrPas
 00511F83    mov        eax,dword ptr [ebp-18]
 00511F86    lea        edx,[ebp-10]
 00511F89    call       Trim
>00511F8E    jmp        00511F98
 00511F90    lea        eax,[ebp-10]
 00511F93    call       @LStrClr
 00511F98    cmp        dword ptr [ebp-0C],0
>00511F9C    je         0051204E
 00511FA2    cmp        dword ptr [ebp-4],0
>00511FA6    je         00511FBC
 00511FA8    mov        eax,dword ptr [ebp-4]
 00511FAB    mov        edx,dword ptr [eax]
 00511FAD    call       dword ptr [edx+34]
 00511FB0    test       al,al
>00511FB2    je         00511FBC
 00511FB4    mov        eax,dword ptr [ebp-4]
 00511FB7    mov        edx,dword ptr [eax]
 00511FB9    call       dword ptr [edx+3C]
 00511FBC    mov        eax,dword ptr [ebp+0C]
 00511FBF    push       eax
 00511FC0    push       0
 00511FC2    mov        eax,dword ptr [ebp-0C]
 00511FC5    push       eax
 00511FC6    lea        edx,[ebp-1C]
 00511FC9    mov        eax,dword ptr [ebp-8]
 00511FCC    mov        ecx,dword ptr [eax]
 00511FCE    call       dword ptr [ecx+0C]
 00511FD1    mov        ecx,dword ptr [ebp-1C]
 00511FD4    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00511FD9    mov        eax,dword ptr [eax]
 00511FDB    mov        dl,byte ptr [ebp+10]
 00511FDE    mov        ebx,dword ptr [eax]
 00511FE0    call       dword ptr [ebx+40]
 00511FE3    test       edi,edi
>00511FE5    je         00511FF4
 00511FE7    mov        edx,edi
 00511FE9    mov        eax,dword ptr [ebp-8]
 00511FEC    mov        ecx,dword ptr [eax]
 00511FEE    call       dword ptr [ecx+0EC]
 00511FF4    mov        edx,esi
 00511FF6    mov        eax,dword ptr [ebp-8]
 00511FF9    mov        ecx,dword ptr [eax]
 00511FFB    call       dword ptr [ecx+54]
 00511FFE    cmp        al,1
>00512000    jne        0051200C
 00512002    mov        edx,esi
 00512004    mov        eax,dword ptr [ebp-8]
 00512007    mov        ecx,dword ptr [eax]
 00512009    call       dword ptr [ecx+2C]
 0051200C    lea        eax,[ebp-20]
 0051200F    push       eax
 00512010    lea        edx,[ebp-24]
 00512013    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 00512018    call       LoadResString
 0051201D    mov        eax,dword ptr [ebp-24]
 00512020    push       eax
 00512021    mov        eax,dword ptr [ebp-0C]
 00512024    mov        dword ptr [ebp-2C],eax
 00512027    mov        byte ptr [ebp-28],0B
 0051202B    lea        edx,[ebp-2C]
 0051202E    xor        ecx,ecx
 00512030    pop        eax
 00512031    call       Format
 00512036    mov        eax,dword ptr [ebp-20]
 00512039    push       eax
 0051203A    mov        ecx,dword ptr [ebp-10]
 0051203D    mov        dl,1
 0051203F    mov        eax,[004C6D20]; EZSQLException
 00512044    call       EZSQLException.Create; EZSQLException.Create
 00512049    call       @RaiseExcept
 0051204E    xor        eax,eax
 00512050    pop        edx
 00512051    pop        ecx
 00512052    pop        ecx
 00512053    mov        dword ptr fs:[eax],edx
 00512056    push       512088
 0051205B    lea        eax,[ebp-24]
 0051205E    mov        edx,7
 00512063    call       @LStrArrayClr
 00512068    lea        eax,[ebp-8]
 0051206B    call       @IntfClear
 00512070    lea        eax,[ebp-4]
 00512073    call       @IntfClear
 00512078    lea        eax,[ebp+0C]
 0051207B    call       @LStrClr
 00512080    ret
<00512081    jmp        @HandleFinally
<00512086    jmp        0051205B
 00512088    pop        edi
 00512089    pop        esi
 0051208A    pop        ebx
 0051208B    mov        esp,ebp
 0051208D    pop        ebp
 0051208E    ret        0C
*}
//end;

//00512094
//function sub_00512094(?:AnsiString):?;
//begin
{*
 00512094    push       ebp
 00512095    mov        ebp,esp
 00512097    push       0
 00512099    push       0
 0051209B    push       0
 0051209D    push       ebx
 0051209E    push       esi
 0051209F    mov        dword ptr [ebp-4],eax
 005120A2    mov        eax,dword ptr [ebp-4]
 005120A5    call       @LStrAddRef
 005120AA    xor        eax,eax
 005120AC    push       ebp
 005120AD    push       512152
 005120B2    push       dword ptr fs:[eax]
 005120B5    mov        dword ptr fs:[eax],esp
 005120B8    lea        eax,[ebp-8]
 005120BB    call       @LStrClr
 005120C0    mov        eax,dword ptr [ebp-4]
 005120C3    call       @LStrLen
 005120C8    mov        esi,eax
 005120CA    test       esi,esi
>005120CC    jle        0051211E
 005120CE    mov        ebx,1
 005120D3    mov        eax,dword ptr [ebp-4]
 005120D6    dec        ebx
 005120D7    test       eax,eax
>005120D9    je         005120E0
 005120DB    cmp        ebx,dword ptr [eax-4]
>005120DE    jb         005120E5
 005120E0    call       @BoundErr
 005120E5    inc        ebx
 005120E6    mov        al,byte ptr [eax+ebx-1]
 005120EA    add        al,0D0
 005120EC    sub        al,0A
>005120EE    jae        0051211E
 005120F0    lea        eax,[ebp-0C]
 005120F3    mov        edx,dword ptr [ebp-4]
 005120F6    dec        ebx
 005120F7    test       edx,edx
>005120F9    je         00512100
 005120FB    cmp        ebx,dword ptr [edx-4]
>005120FE    jb         00512105
 00512100    call       @BoundErr
 00512105    inc        ebx
 00512106    mov        dl,byte ptr [edx+ebx-1]
 0051210A    call       @LStrFromChar
 0051210F    mov        edx,dword ptr [ebp-0C]
 00512112    lea        eax,[ebp-8]
 00512115    call       @LStrCat
 0051211A    inc        ebx
 0051211B    dec        esi
<0051211C    jne        005120D3
 0051211E    xor        edx,edx
 00512120    mov        eax,dword ptr [ebp-8]
 00512123    call       StrToIntDef
 00512128    mov        ebx,eax
 0051212A    cmp        ebx,0FFFF
>00512130    jbe        00512137
 00512132    call       @BoundErr
 00512137    xor        eax,eax
 00512139    pop        edx
 0051213A    pop        ecx
 0051213B    pop        ecx
 0051213C    mov        dword ptr fs:[eax],edx
 0051213F    push       512159
 00512144    lea        eax,[ebp-0C]
 00512147    mov        edx,3
 0051214C    call       @LStrArrayClr
 00512151    ret
<00512152    jmp        @HandleFinally
<00512157    jmp        00512144
 00512159    mov        eax,ebx
 0051215B    pop        esi
 0051215C    pop        ebx
 0051215D    mov        esp,ebp
 0051215F    pop        ebp
 00512160    ret
*}
//end;

Initialization
Finalization
//00512164
{*
 00512164    push       ebp
 00512165    mov        ebp,esp
 00512167    xor        eax,eax
 00512169    push       ebp
 0051216A    push       5121A0
 0051216F    push       dword ptr fs:[eax]
 00512172    mov        dword ptr fs:[eax],esp
 00512175    inc        dword ptr ds:[61E510]
>0051217B    jne        00512192
 0051217D    mov        eax,616244; gvar_00616244:array[39] of pg_CS
 00512182    mov        ecx,27
 00512187    mov        edx,dword ptr ds:[510D64]; pg_CS
 0051218D    call       @FinalizeArray
 00512192    xor        eax,eax
 00512194    pop        edx
 00512195    pop        ecx
 00512196    pop        ecx
 00512197    mov        dword ptr fs:[eax],edx
 0051219A    push       5121A7
 0051219F    ret
<005121A0    jmp        @HandleFinally
<005121A5    jmp        0051219F
 005121A7    pop        ebp
 005121A8    ret
*}
end.