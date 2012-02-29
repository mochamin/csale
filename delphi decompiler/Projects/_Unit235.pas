{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit235;

interface

uses
  Classes, Windows, Graphics;


implementation

//005690A4
//function sub_005690A4(?:?):?;
//begin
{*
 005690A4    and        eax,7F
 005690A7    cmp        eax,11
>005690AA    ja         00569122
 005690AC    jmp        dword ptr [eax*4+5690B3]
 005690AC    dd         569122
 005690AC    dd         5690FB
 005690AC    dd         5690FE
 005690AC    dd         5690FE
 005690AC    dd         569101
 005690AC    dd         569104
 005690AC    dd         569107
 005690AC    dd         569107
 005690AC    dd         569107
 005690AC    dd         56910A
 005690AC    dd         56911F
 005690AC    dd         56910D
 005690AC    dd         569110
 005690AC    dd         569113
 005690AC    dd         569116
 005690AC    dd         569119
 005690AC    dd         56911F
 005690AC    dd         56911C
 005690FB    mov        al,5
 005690FD    ret
 005690FE    mov        al,2
 00569100    ret
 00569101    mov        al,3
 00569103    ret
 00569104    mov        al,19
 00569106    ret
 00569107    mov        al,6
 00569109    ret
 0056910A    mov        al,1
 0056910C    ret
 0056910D    mov        al,0C
 0056910F    ret
 00569110    mov        al,9
 00569112    ret
 00569113    mov        al,0A
 00569115    ret
 00569116    mov        al,0B
 00569118    ret
 00569119    mov        al,10
 0056911B    ret
 0056911C    mov        al,0F
 0056911E    ret
 0056911F    mov        al,18
 00569121    ret
 00569122    xor        eax,eax
 00569124    ret
*}
//end;

//00569128
//function sub_00569128(?:TFieldType):?;
//begin
{*
 00569128    and        eax,7F
 0056912B    cmp        eax,19
>0056912E    ja         005691CD
 00569134    jmp        dword ptr [eax*4+56913B]
 00569134    dd         5691CD
 00569134    dd         5691B5
 00569134    dd         5691A6
 00569134    dd         5691A9
 00569134    dd         5691CD
 00569134    dd         5691A3
 00569134    dd         5691AC
 00569134    dd         5691B2
 00569134    dd         5691CD
 00569134    dd         5691BB
 00569134    dd         5691BE
 00569134    dd         5691C1
 00569134    dd         5691B8
 00569134    dd         5691CD
 00569134    dd         5691A9
 00569134    dd         5691C7
 00569134    dd         5691C4
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CD
 00569134    dd         5691CA
 00569134    dd         5691AF
 005691A3    mov        al,1
 005691A5    ret
 005691A6    mov        al,3
 005691A8    ret
 005691A9    mov        al,4
 005691AB    ret
 005691AC    mov        al,7
 005691AE    ret
 005691AF    mov        al,5
 005691B1    ret
 005691B2    mov        al,8
 005691B4    ret
 005691B5    mov        al,9
 005691B7    ret
 005691B8    mov        al,0B
 005691BA    ret
 005691BB    mov        al,0C
 005691BD    ret
 005691BE    mov        al,0D
 005691C0    ret
 005691C1    mov        al,0E
 005691C3    ret
 005691C4    mov        al,0F
 005691C6    ret
 005691C7    mov        al,11
 005691C9    ret
 005691CA    mov        al,0A
 005691CC    ret
 005691CD    xor        eax,eax
 005691CF    ret
*}
//end;

//005691D0
//function sub_005691D0(?:TFields):?;
//begin
{*
 005691D0    push       ebp
 005691D1    mov        ebp,esp
 005691D3    add        esp,0FFFFFFF0
 005691D6    push       ebx
 005691D7    push       esi
 005691D8    push       edi
 005691D9    xor        edx,edx
 005691DB    mov        dword ptr [ebp-10],edx
 005691DE    mov        dword ptr [ebp-4],eax
 005691E1    xor        eax,eax
 005691E3    push       ebp
 005691E4    push       5692BF
 005691E9    push       dword ptr fs:[eax]
 005691EC    mov        dword ptr fs:[eax],esp
 005691EF    mov        dl,1
 005691F1    mov        eax,[00433048]; TObjectList
 005691F6    call       TObjectList.Create; TObjectList.Create
 005691FB    mov        dword ptr [ebp-8],eax
 005691FE    mov        eax,dword ptr [ebp-4]
 00569201    call       TFields.GetCount
 00569206    mov        edi,eax
 00569208    sub        edi,1
>0056920B    jno        00569212
 0056920D    call       @IntOver
 00569212    test       edi,edi
>00569214    jl         005692A9
 0056921A    inc        edi
 0056921B    mov        dword ptr [ebp-0C],0
 00569222    mov        edx,dword ptr [ebp-0C]
 00569225    mov        eax,dword ptr [ebp-4]
 00569228    call       TFields.GetField
 0056922D    mov        esi,eax
 0056922F    mov        dl,1
 00569231    mov        eax,[004D5F00]; TZColumnInfo
 00569236    call       TZColumnInfo.Create; TZColumnInfo.Create
 0056923B    mov        ebx,eax
 0056923D    mov        al,byte ptr [esi+40]; TField.FDataType:TFieldType
 00569240    call       00569128
 00569245    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 00569248    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 0056924B    mov        edx,dword ptr [esi+38]; TField.?f38:String
 0056924E    call       @LStrAsg
 00569253    mov        eax,esi
 00569255    mov        edx,dword ptr [eax]
 00569257    call       dword ptr [edx+88]; TField.GetSize
 0056925D    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 00569260    cmp        byte ptr [ebx+2C],0A; TZColumnInfo.?f2C:byte
>00569264    jne        0056927B
 00569266    mov        eax,esi
 00569268    mov        edx,dword ptr [eax]
 0056926A    call       dword ptr [edx+88]; TField.GetSize
 00569270    cmp        eax,2800
>00569275    jle        0056927B
 00569277    mov        byte ptr [ebx+2C],10; TZColumnInfo.?f2C:byte
 0056927B    xor        eax,eax
 0056927D    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 00569280    lea        edx,[ebp-10]
 00569283    mov        eax,esi
 00569285    call       TField.GetDisplayName
 0056928A    mov        edx,dword ptr [ebp-10]
 0056928D    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 00569290    call       @LStrAsg
 00569295    mov        edx,ebx
 00569297    mov        eax,dword ptr [ebp-8]
 0056929A    call       00433178
 0056929F    inc        dword ptr [ebp-0C]
 005692A2    dec        edi
<005692A3    jne        00569222
 005692A9    xor        eax,eax
 005692AB    pop        edx
 005692AC    pop        ecx
 005692AD    pop        ecx
 005692AE    mov        dword ptr fs:[eax],edx
 005692B1    push       5692C6
 005692B6    lea        eax,[ebp-10]
 005692B9    call       @LStrClr
 005692BE    ret
<005692BF    jmp        @HandleFinally
<005692C4    jmp        005692B6
 005692C6    mov        eax,dword ptr [ebp-8]
 005692C9    pop        edi
 005692CA    pop        esi
 005692CB    pop        ebx
 005692CC    mov        esp,ebp
 005692CE    pop        ebp
 005692CF    ret
*}
//end;

//005692D0
//procedure sub_005692D0(?:IZCachedResultSet; ?:TIntegerDynArray; ?:TFields; ?:?);
//begin
{*
 005692D0    push       ebp
 005692D1    mov        ebp,esp
 005692D3    add        esp,0FFFFFFD4
 005692D6    push       ebx
 005692D7    push       esi
 005692D8    xor        ebx,ebx
 005692DA    mov        dword ptr [ebp-2C],ebx
 005692DD    mov        dword ptr [ebp-28],ebx
 005692E0    mov        dword ptr [ebp-24],ebx
 005692E3    mov        dword ptr [ebp-20],ebx
 005692E6    mov        dword ptr [ebp-0C],ecx
 005692E9    mov        dword ptr [ebp-8],edx
 005692EC    mov        dword ptr [ebp-4],eax
 005692EF    mov        eax,dword ptr [ebp-4]
 005692F2    call       @IntfAddRef
 005692F7    xor        eax,eax
 005692F9    push       ebp
 005692FA    push       5695F6
 005692FF    push       dword ptr fs:[eax]
 00569302    mov        dword ptr fs:[eax],esp
 00569305    mov        eax,dword ptr [ebp-4]
 00569308    mov        edx,dword ptr [eax]
 0056930A    call       dword ptr [edx+0F4]
 00569310    mov        edx,dword ptr [ebp+8]
 00569313    mov        edx,dword ptr [edx+24]
 00569316    mov        dword ptr [edx],eax
 00569318    lea        edx,[ebp-20]
 0056931B    mov        eax,dword ptr [ebp-4]
 0056931E    mov        ecx,dword ptr [eax]
 00569320    call       dword ptr [ecx+0CC]
 00569326    mov        eax,dword ptr [ebp-20]
 00569329    mov        edx,dword ptr [eax]
 0056932B    call       dword ptr [edx+0C]
 0056932E    mov        dword ptr [ebp-18],eax
 00569331    mov        eax,dword ptr [ebp-0C]
 00569334    call       TFields.GetCount
 00569339    sub        eax,1
>0056933C    jno        00569343
 0056933E    call       @IntOver
 00569343    test       eax,eax
>00569345    jl         005695BA
 0056934B    inc        eax
 0056934C    mov        dword ptr [ebp-1C],eax
 0056934F    mov        dword ptr [ebp-10],0
 00569356    mov        edx,dword ptr [ebp-10]
 00569359    mov        eax,dword ptr [ebp-0C]
 0056935C    call       TFields.GetField
 00569361    mov        ebx,eax
 00569363    mov        al,byte ptr [ebx+42]; TField.FieldKind:TFieldKind
 00569366    test       al,al
>00569368    je         00569372
 0056936A    sub        al,3
>0056936C    jne        005695AE
 00569372    mov        eax,ebx
 00569374    mov        edx,dword ptr [eax]
 00569376    call       dword ptr [edx+7C]; TField.GetFieldNo
 00569379    mov        esi,eax
 0056937B    mov        edx,ebx
 0056937D    mov        eax,dword ptr [ebp-8]
 00569380    call       0056BB08
 00569385    mov        dword ptr [ebp-14],eax
 00569388    cmp        esi,1
>0056938B    jl         005695AE
 00569391    cmp        esi,dword ptr [ebp-18]
>00569394    jg         005695AE
 0056939A    xor        eax,eax
 0056939C    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 0056939F    cmp        eax,19
>005693A2    ja         00569597
 005693A8    jmp        dword ptr [eax*4+5693AF]
 005693A8    dd         569597
 005693A8    dd         5694C9
 005693A8    dd         569433
 005693A8    dd         56944F
 005693A8    dd         569597
 005693A8    dd         569417
 005693A8    dd         56946B
 005693A8    dd         5694A8
 005693A8    dd         569597
 005693A8    dd         569522
 005693A8    dd         569540
 005693A8    dd         56955E
 005693A8    dd         569505
 005693A8    dd         569597
 005693A8    dd         56944F
 005693A8    dd         56957C
 005693A8    dd         56957C
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         569597
 005693A8    dd         5694E5
 005693A8    dd         56948C
 00569417    mov        edx,esi
 00569419    mov        eax,dword ptr [ebp-4]
 0056941C    mov        ecx,dword ptr [eax]
 0056941E    call       dword ptr [ecx+28]
 00569421    mov        ecx,eax
 00569423    mov        edx,dword ptr [ebp-14]
 00569426    mov        eax,dword ptr [ebp+8]
 00569429    call       004CBA88
>0056942E    jmp        00569597
 00569433    mov        edx,esi
 00569435    mov        eax,dword ptr [ebp-4]
 00569438    mov        ecx,dword ptr [eax]
 0056943A    call       dword ptr [ecx+30]
 0056943D    mov        ecx,eax
 0056943F    mov        edx,dword ptr [ebp-14]
 00569442    mov        eax,dword ptr [ebp+8]
 00569445    call       004CBE2C
>0056944A    jmp        00569597
 0056944F    mov        edx,esi
 00569451    mov        eax,dword ptr [ebp-4]
 00569454    mov        ecx,dword ptr [eax]
 00569456    call       dword ptr [ecx+34]
 00569459    mov        ecx,eax
 0056945B    mov        edx,dword ptr [ebp-14]
 0056945E    mov        eax,dword ptr [ebp+8]
 00569461    call       004CBFF8
>00569466    jmp        00569597
 0056946B    mov        edx,esi
 0056946D    mov        eax,dword ptr [ebp-4]
 00569470    mov        ecx,dword ptr [eax]
 00569472    call       dword ptr [ecx+40]
 00569475    add        esp,0FFFFFFF8
 00569478    fstp       qword ptr [esp]
 0056947B    wait
 0056947C    mov        edx,dword ptr [ebp-14]
 0056947F    mov        eax,dword ptr [ebp+8]
 00569482    call       004CC604
>00569487    jmp        00569597
 0056948C    mov        edx,esi
 0056948E    mov        eax,dword ptr [ebp-4]
 00569491    mov        ecx,dword ptr [eax]
 00569493    call       dword ptr [ecx+38]
 00569496    push       edx
 00569497    push       eax
 00569498    mov        edx,dword ptr [ebp-14]
 0056949B    mov        eax,dword ptr [ebp+8]
 0056949E    call       004CC1D4
>005694A3    jmp        00569597
 005694A8    mov        edx,esi
 005694AA    mov        eax,dword ptr [ebp-4]
 005694AD    mov        ecx,dword ptr [eax]
 005694AF    call       dword ptr [ecx+44]
 005694B2    add        esp,0FFFFFFF4
 005694B5    fstp       tbyte ptr [esp]
 005694B8    wait
 005694B9    mov        edx,dword ptr [ebp-14]
 005694BC    mov        eax,dword ptr [ebp+8]
 005694BF    call       004CC82C
>005694C4    jmp        00569597
 005694C9    mov        edx,esi
 005694CB    mov        eax,dword ptr [ebp-4]
 005694CE    mov        ecx,dword ptr [eax]
 005694D0    call       dword ptr [ecx+1C]
 005694D3    mov        ecx,eax
 005694D5    mov        edx,dword ptr [ebp-14]
 005694D8    mov        eax,dword ptr [ebp+8]
 005694DB    call       004CCA60
>005694E0    jmp        00569597
 005694E5    lea        ecx,[ebp-24]
 005694E8    mov        edx,esi
 005694EA    mov        eax,dword ptr [ebp-4]
 005694ED    mov        ebx,dword ptr [eax]
 005694EF    call       dword ptr [ebx+24]
 005694F2    mov        ecx,dword ptr [ebp-24]
 005694F5    mov        edx,dword ptr [ebp-14]
 005694F8    mov        eax,dword ptr [ebp+8]
 005694FB    call       004CCF68
>00569500    jmp        00569597
 00569505    lea        ecx,[ebp-28]
 00569508    mov        edx,esi
 0056950A    mov        eax,dword ptr [ebp-4]
 0056950D    mov        ebx,dword ptr [eax]
 0056950F    call       dword ptr [ebx+48]
 00569512    mov        ecx,dword ptr [ebp-28]
 00569515    mov        edx,dword ptr [ebp-14]
 00569518    mov        eax,dword ptr [ebp+8]
 0056951B    call       004CD104
>00569520    jmp        00569597
 00569522    mov        edx,esi
 00569524    mov        eax,dword ptr [ebp-4]
 00569527    mov        ecx,dword ptr [eax]
 00569529    call       dword ptr [ecx+4C]
 0056952C    add        esp,0FFFFFFF8
 0056952F    fstp       qword ptr [esp]
 00569532    wait
 00569533    mov        edx,dword ptr [ebp-14]
 00569536    mov        eax,dword ptr [ebp+8]
 00569539    call       004CD300
>0056953E    jmp        00569597
 00569540    mov        edx,esi
 00569542    mov        eax,dword ptr [ebp-4]
 00569545    mov        ecx,dword ptr [eax]
 00569547    call       dword ptr [ecx+50]
 0056954A    add        esp,0FFFFFFF8
 0056954D    fstp       qword ptr [esp]
 00569550    wait
 00569551    mov        edx,dword ptr [ebp-14]
 00569554    mov        eax,dword ptr [ebp+8]
 00569557    call       004CD450
>0056955C    jmp        00569597
 0056955E    mov        edx,esi
 00569560    mov        eax,dword ptr [ebp-4]
 00569563    mov        ecx,dword ptr [eax]
 00569565    call       dword ptr [ecx+54]
 00569568    add        esp,0FFFFFFF8
 0056956B    fstp       qword ptr [esp]
 0056956E    wait
 0056956F    mov        edx,dword ptr [ebp-14]
 00569572    mov        eax,dword ptr [ebp+8]
 00569575    call       004CD584
>0056957A    jmp        00569597
 0056957C    lea        ecx,[ebp-2C]
 0056957F    mov        edx,esi
 00569581    mov        eax,dword ptr [ebp-4]
 00569584    mov        ebx,dword ptr [eax]
 00569586    call       dword ptr [ebx+64]
 00569589    mov        ecx,dword ptr [ebp-2C]
 0056958C    mov        edx,dword ptr [ebp-14]
 0056958F    mov        eax,dword ptr [ebp+8]
 00569592    call       004CD824
 00569597    mov        eax,dword ptr [ebp-4]
 0056959A    mov        edx,dword ptr [eax]
 0056959C    call       dword ptr [edx+14]
 0056959F    test       al,al
>005695A1    je         005695AE
 005695A3    mov        edx,dword ptr [ebp-14]
 005695A6    mov        eax,dword ptr [ebp+8]
 005695A9    call       004CB9E4
 005695AE    inc        dword ptr [ebp-10]
 005695B1    dec        dword ptr [ebp-1C]
<005695B4    jne        00569356
 005695BA    xor        eax,eax
 005695BC    pop        edx
 005695BD    pop        ecx
 005695BE    pop        ecx
 005695BF    mov        dword ptr fs:[eax],edx
 005695C2    push       5695FD
 005695C7    lea        eax,[ebp-2C]
 005695CA    call       @IntfClear
 005695CF    lea        eax,[ebp-28]
 005695D2    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 005695D8    call       @DynArrayClear
 005695DD    lea        eax,[ebp-24]
 005695E0    call       @WStrClr
 005695E5    lea        eax,[ebp-20]
 005695E8    call       @IntfClear
 005695ED    lea        eax,[ebp-4]
 005695F0    call       @IntfClear
 005695F5    ret
<005695F6    jmp        @HandleFinally
<005695FB    jmp        005695C7
 005695FD    pop        esi
 005695FE    pop        ebx
 005695FF    mov        esp,ebp
 00569601    pop        ebp
 00569602    ret        4
*}
//end;

//00569608
//procedure sub_00569608(?:IZCachedResultSet; ?:TIntegerDynArray; ?:TFields; ?:?);
//begin
{*
 00569608    push       ebp
 00569609    mov        ebp,esp
 0056960B    add        esp,0FFFFFFD0
 0056960E    push       ebx
 0056960F    push       esi
 00569610    xor        ebx,ebx
 00569612    mov        dword ptr [ebp-30],ebx
 00569615    mov        dword ptr [ebp-2C],ebx
 00569618    mov        dword ptr [ebp-28],ebx
 0056961B    mov        dword ptr [ebp-0C],ecx
 0056961E    mov        dword ptr [ebp-8],edx
 00569621    mov        dword ptr [ebp-4],eax
 00569624    mov        eax,dword ptr [ebp-4]
 00569627    call       @IntfAddRef
 0056962C    xor        eax,eax
 0056962E    push       ebp
 0056962F    push       5699F6
 00569634    push       dword ptr fs:[eax]
 00569637    mov        dword ptr fs:[eax],esp
 0056963A    mov        byte ptr [ebp-11],0
 0056963E    mov        eax,dword ptr [ebp-4]
 00569641    mov        edx,dword ptr [eax]
 00569643    call       dword ptr [edx+0F4]
 00569649    mov        edx,dword ptr [ebp+8]
 0056964C    mov        edx,dword ptr [edx+24]
 0056964F    mov        dword ptr [edx],eax
 00569651    lea        edx,[ebp-28]
 00569654    mov        eax,dword ptr [ebp-4]
 00569657    mov        ecx,dword ptr [eax]
 00569659    call       dword ptr [ecx+0CC]
 0056965F    mov        eax,dword ptr [ebp-28]
 00569662    mov        edx,dword ptr [eax]
 00569664    call       dword ptr [edx+0C]
 00569667    mov        dword ptr [ebp-1C],eax
 0056966A    mov        eax,dword ptr [ebp-0C]
 0056966D    call       TFields.GetCount
 00569672    sub        eax,1
>00569675    jno        0056967C
 00569677    call       @IntOver
 0056967C    test       eax,eax
>0056967E    jl         005699C2
 00569684    inc        eax
 00569685    mov        dword ptr [ebp-24],eax
 00569688    mov        dword ptr [ebp-10],0
 0056968F    mov        edx,dword ptr [ebp-10]
 00569692    mov        eax,dword ptr [ebp-0C]
 00569695    call       TFields.GetField
 0056969A    mov        ebx,eax
 0056969C    cmp        byte ptr [ebx+42],0; TField.FieldKind:TFieldKind
>005696A0    jne        005699B6
 005696A6    mov        eax,ebx
 005696A8    mov        edx,dword ptr [eax]
 005696AA    call       dword ptr [edx+7C]; TField.GetFieldNo
 005696AD    mov        dword ptr [ebp-18],eax
 005696B0    mov        edx,ebx
 005696B2    mov        eax,dword ptr [ebp-8]
 005696B5    call       0056BB08
 005696BA    mov        esi,eax
 005696BC    cmp        dword ptr [ebp-18],1
>005696C0    jl         005699B6
 005696C6    mov        eax,dword ptr [ebp-18]
 005696C9    cmp        eax,dword ptr [ebp-1C]
>005696CC    jg         005699B6
 005696D2    xor        eax,eax
 005696D4    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 005696D7    cmp        eax,19
>005696DA    ja         005699A2
 005696E0    jmp        dword ptr [eax*4+5696E7]
 005696E0    dd         5699A2
 005696E0    dd         569825
 005696E0    dd         569771
 005696E0    dd         569793
 005696E0    dd         5699A2
 005696E0    dd         56974F
 005696E0    dd         5697B5
 005696E0    dd         5697FE
 005696E0    dd         5699A2
 005696E0    dd         569895
 005696E0    dd         5698BC
 005696E0    dd         5698E3
 005696E0    dd         56986E
 005696E0    dd         5699A2
 005696E0    dd         569793
 005696E0    dd         569956
 005696E0    dd         56990A
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         5699A2
 005696E0    dd         569847
 005696E0    dd         5697DC
 0056974F    lea        ecx,[ebp-11]
 00569752    mov        edx,esi
 00569754    mov        eax,dword ptr [ebp+8]
 00569757    call       004C9D40
 0056975C    mov        ecx,eax
 0056975E    mov        edx,dword ptr [ebp-18]
 00569761    mov        eax,dword ptr [ebp-4]
 00569764    mov        ebx,dword ptr [eax]
 00569766    call       dword ptr [ebx+134]
>0056976C    jmp        005699A2
 00569771    lea        ecx,[ebp-11]
 00569774    mov        edx,esi
 00569776    mov        eax,dword ptr [ebp+8]
 00569779    call       004CA254
 0056977E    mov        ecx,eax
 00569780    mov        edx,dword ptr [ebp-18]
 00569783    mov        eax,dword ptr [ebp-4]
 00569786    mov        ebx,dword ptr [eax]
 00569788    call       dword ptr [ebx+13C]
>0056978E    jmp        005699A2
 00569793    lea        ecx,[ebp-11]
 00569796    mov        edx,esi
 00569798    mov        eax,dword ptr [ebp+8]
 0056979B    call       004CA4EC
 005697A0    mov        ecx,eax
 005697A2    mov        edx,dword ptr [ebp-18]
 005697A5    mov        eax,dword ptr [ebp-4]
 005697A8    mov        ebx,dword ptr [eax]
 005697AA    call       dword ptr [ebx+140]
>005697B0    jmp        005699A2
 005697B5    lea        ecx,[ebp-11]
 005697B8    mov        edx,esi
 005697BA    mov        eax,dword ptr [ebp+8]
 005697BD    call       004CAB20
 005697C2    add        esp,0FFFFFFF8
 005697C5    fstp       qword ptr [esp]
 005697C8    wait
 005697C9    mov        edx,dword ptr [ebp-18]
 005697CC    mov        eax,dword ptr [ebp-4]
 005697CF    mov        ecx,dword ptr [eax]
 005697D1    call       dword ptr [ecx+14C]
>005697D7    jmp        005699A2
 005697DC    lea        ecx,[ebp-11]
 005697DF    mov        edx,esi
 005697E1    mov        eax,dword ptr [ebp+8]
 005697E4    call       004CA704
 005697E9    push       edx
 005697EA    push       eax
 005697EB    mov        edx,dword ptr [ebp-18]
 005697EE    mov        eax,dword ptr [ebp-4]
 005697F1    mov        ecx,dword ptr [eax]
 005697F3    call       dword ptr [ecx+144]
>005697F9    jmp        005699A2
 005697FE    lea        ecx,[ebp-11]
 00569801    mov        edx,esi
 00569803    mov        eax,dword ptr [ebp+8]
 00569806    call       004CAD30
 0056980B    add        esp,0FFFFFFF4
 0056980E    fstp       tbyte ptr [esp]
 00569811    wait
 00569812    mov        edx,dword ptr [ebp-18]
 00569815    mov        eax,dword ptr [ebp-4]
 00569818    mov        ecx,dword ptr [eax]
 0056981A    call       dword ptr [ecx+150]
>00569820    jmp        005699A2
 00569825    lea        ecx,[ebp-11]
 00569828    mov        edx,esi
 0056982A    mov        eax,dword ptr [ebp+8]
 0056982D    call       004C970C
 00569832    mov        ecx,eax
 00569834    mov        edx,dword ptr [ebp-18]
 00569837    mov        eax,dword ptr [ebp-4]
 0056983A    mov        ebx,dword ptr [eax]
 0056983C    call       dword ptr [ebx+154]
>00569842    jmp        005699A2
 00569847    lea        eax,[ebp-2C]
 0056984A    push       eax
 0056984B    lea        ecx,[ebp-11]
 0056984E    mov        edx,esi
 00569850    mov        eax,dword ptr [ebp+8]
 00569853    call       004C9BDC
 00569858    mov        ecx,dword ptr [ebp-2C]
 0056985B    mov        edx,dword ptr [ebp-18]
 0056985E    mov        eax,dword ptr [ebp-4]
 00569861    mov        ebx,dword ptr [eax]
 00569863    call       dword ptr [ebx+15C]
>00569869    jmp        005699A2
 0056986E    lea        eax,[ebp-30]
 00569871    push       eax
 00569872    lea        ecx,[ebp-11]
 00569875    mov        edx,esi
 00569877    mov        eax,dword ptr [ebp+8]
 0056987A    call       004CAF54
 0056987F    mov        ecx,dword ptr [ebp-30]
 00569882    mov        edx,dword ptr [ebp-18]
 00569885    mov        eax,dword ptr [ebp-4]
 00569888    mov        ebx,dword ptr [eax]
 0056988A    call       dword ptr [ebx+160]
>00569890    jmp        005699A2
 00569895    lea        ecx,[ebp-11]
 00569898    mov        edx,esi
 0056989A    mov        eax,dword ptr [ebp+8]
 0056989D    call       004CB110
 005698A2    add        esp,0FFFFFFF8
 005698A5    fstp       qword ptr [esp]
 005698A8    wait
 005698A9    mov        edx,dword ptr [ebp-18]
 005698AC    mov        eax,dword ptr [ebp-4]
 005698AF    mov        ecx,dword ptr [eax]
 005698B1    call       dword ptr [ecx+164]
>005698B7    jmp        005699A2
 005698BC    lea        ecx,[ebp-11]
 005698BF    mov        edx,esi
 005698C1    mov        eax,dword ptr [ebp+8]
 005698C4    call       004CB24C
 005698C9    add        esp,0FFFFFFF8
 005698CC    fstp       qword ptr [esp]
 005698CF    wait
 005698D0    mov        edx,dword ptr [ebp-18]
 005698D3    mov        eax,dword ptr [ebp-4]
 005698D6    mov        ecx,dword ptr [eax]
 005698D8    call       dword ptr [ecx+168]
>005698DE    jmp        005699A2
 005698E3    lea        ecx,[ebp-11]
 005698E6    mov        edx,esi
 005698E8    mov        eax,dword ptr [ebp+8]
 005698EB    call       004CB380
 005698F0    add        esp,0FFFFFFF8
 005698F3    fstp       qword ptr [esp]
 005698F6    wait
 005698F7    mov        edx,dword ptr [ebp-18]
 005698FA    mov        eax,dword ptr [ebp-4]
 005698FD    mov        ecx,dword ptr [eax]
 005698FF    call       dword ptr [ecx+16C]
>00569905    jmp        005699A2
 0056990A    lea        ecx,[ebp-11]
 0056990D    mov        edx,esi
 0056990F    mov        eax,dword ptr [ebp+8]
 00569912    call       004CB49C
 00569917    mov        dword ptr [ebp-20],eax
 0056991A    xor        eax,eax
 0056991C    push       ebp
 0056991D    push       56994F
 00569922    push       dword ptr fs:[eax]
 00569925    mov        dword ptr fs:[eax],esp
 00569928    mov        ecx,dword ptr [ebp-20]
 0056992B    mov        edx,dword ptr [ebp-18]
 0056992E    mov        eax,dword ptr [ebp-4]
 00569931    mov        ebx,dword ptr [eax]
 00569933    call       dword ptr [ebx+170]
 00569939    xor        eax,eax
 0056993B    pop        edx
 0056993C    pop        ecx
 0056993D    pop        ecx
 0056993E    mov        dword ptr fs:[eax],edx
 00569941    push       5699A2
 00569946    mov        eax,dword ptr [ebp-20]
 00569949    call       TObject.Free
 0056994E    ret
<0056994F    jmp        @HandleFinally
<00569954    jmp        00569946
 00569956    lea        ecx,[ebp-11]
 00569959    mov        edx,esi
 0056995B    mov        eax,dword ptr [ebp+8]
 0056995E    call       004CB520
 00569963    mov        dword ptr [ebp-20],eax
 00569966    xor        eax,eax
 00569968    push       ebp
 00569969    push       56999B
 0056996E    push       dword ptr fs:[eax]
 00569971    mov        dword ptr fs:[eax],esp
 00569974    mov        ecx,dword ptr [ebp-20]
 00569977    mov        edx,dword ptr [ebp-18]
 0056997A    mov        eax,dword ptr [ebp-4]
 0056997D    mov        ebx,dword ptr [eax]
 0056997F    call       dword ptr [ebx+178]
 00569985    xor        eax,eax
 00569987    pop        edx
 00569988    pop        ecx
 00569989    pop        ecx
 0056998A    mov        dword ptr fs:[eax],edx
 0056998D    push       5699A2
 00569992    mov        eax,dword ptr [ebp-20]
 00569995    call       TObject.Free
 0056999A    ret
<0056999B    jmp        @HandleFinally
<005699A0    jmp        00569992
 005699A2    cmp        byte ptr [ebp-11],0
>005699A6    je         005699B6
 005699A8    mov        edx,dword ptr [ebp-18]
 005699AB    mov        eax,dword ptr [ebp-4]
 005699AE    mov        ecx,dword ptr [eax]
 005699B0    call       dword ptr [ecx+130]
 005699B6    inc        dword ptr [ebp-10]
 005699B9    dec        dword ptr [ebp-24]
<005699BC    jne        0056968F
 005699C2    xor        eax,eax
 005699C4    pop        edx
 005699C5    pop        ecx
 005699C6    pop        ecx
 005699C7    mov        dword ptr fs:[eax],edx
 005699CA    push       5699FD
 005699CF    lea        eax,[ebp-30]
 005699D2    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 005699D8    call       @DynArrayClear
 005699DD    lea        eax,[ebp-2C]
 005699E0    call       @WStrClr
 005699E5    lea        eax,[ebp-28]
 005699E8    call       @IntfClear
 005699ED    lea        eax,[ebp-4]
 005699F0    call       @IntfClear
 005699F5    ret
<005699F6    jmp        @HandleFinally
<005699FB    jmp        005699CF
 005699FD    pop        esi
 005699FE    pop        ebx
 005699FF    mov        esp,ebp
 00569A01    pop        ebp
 00569A02    ret        4
*}
//end;

//00569A08
//procedure sub_00569A08(?:TZAbstractRODataset; ?:AnsiString; ?:?; ?:?);
//begin
{*
 00569A08    push       ebp
 00569A09    mov        ebp,esp
 00569A0B    add        esp,0FFFFFFD8
 00569A0E    push       ebx
 00569A0F    push       esi
 00569A10    push       edi
 00569A11    xor        ebx,ebx
 00569A13    mov        dword ptr [ebp-1C],ebx
 00569A16    mov        dword ptr [ebp-20],ebx
 00569A19    mov        dword ptr [ebp-10],ebx
 00569A1C    mov        dword ptr [ebp-8],ecx
 00569A1F    mov        ebx,edx
 00569A21    mov        dword ptr [ebp-4],eax
 00569A24    xor        eax,eax
 00569A26    push       ebp
 00569A27    push       569C33
 00569A2C    push       dword ptr fs:[eax]
 00569A2F    mov        dword ptr fs:[eax],esp
 00569A32    mov        eax,dword ptr [ebp-8]
 00569A35    mov        byte ptr [eax],1
 00569A38    xor        eax,eax
 00569A3A    mov        dword ptr [ebp-14],eax
 00569A3D    mov        eax,dword ptr [ebp-14]
 00569A40    push       eax
 00569A41    mov        eax,dword ptr [ebp+8]
 00569A44    mov        ecx,1
 00569A49    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00569A4F    call       @DynArraySetLength
 00569A54    add        esp,4
 00569A57    mov        cl,byte ptr ds:[569C44]; 0x6A
 00569A5D    mov        edx,ebx
 00569A5F    mov        eax,[0061EF6C]; gvar_0061EF6C:IInterface
 00569A64    mov        ebx,dword ptr [eax]
 00569A66    call       dword ptr [ebx+0C]
 00569A69    mov        dword ptr [ebp-0C],eax
 00569A6C    xor        eax,eax
 00569A6E    push       ebp
 00569A6F    push       569BED
 00569A74    push       dword ptr fs:[eax]
 00569A77    mov        dword ptr fs:[eax],esp
 00569A7A    mov        eax,dword ptr [ebp-0C]
 00569A7D    mov        edx,dword ptr [eax]
 00569A7F    call       dword ptr [edx+14]
 00569A82    sub        eax,1
>00569A85    jno        00569A8C
 00569A87    call       @IntOver
 00569A8C    test       eax,eax
>00569A8E    jl         00569BD7
 00569A94    inc        eax
 00569A95    mov        dword ptr [ebp-18],eax
 00569A98    xor        esi,esi
 00569A9A    mov        edx,esi
 00569A9C    mov        eax,dword ptr [ebp-0C]
 00569A9F    mov        ecx,dword ptr [eax]
 00569AA1    call       dword ptr [ecx+18]
 00569AA4    mov        ebx,eax
 00569AA6    lea        ecx,[ebp-10]
 00569AA9    mov        edx,esi
 00569AAB    mov        eax,dword ptr [ebp-0C]
 00569AAE    mov        edi,dword ptr [eax]
 00569AB0    call       dword ptr [edi+0C]
 00569AB3    xor        edi,edi
 00569AB5    mov        eax,ebx
 00569AB7    sub        al,7
>00569AB9    je         00569ABF
 00569ABB    sub        al,2
>00569ABD    jne        00569AD1
 00569ABF    mov        edx,dword ptr [ebp-10]
 00569AC2    mov        eax,dword ptr [ebp-4]
 00569AC5    call       TDataSet.FieldByName
 00569ACA    mov        edi,eax
>00569ACC    jmp        00569B68
 00569AD1    cmp        bl,5
>00569AD4    jne        00569B0C
 00569AD6    xor        edx,edx
 00569AD8    mov        eax,dword ptr [ebp-10]
 00569ADB    call       StrToIntDef
 00569AE0    mov        ebx,eax
 00569AE2    mov        eax,dword ptr [ebp-4]
 00569AE5    mov        eax,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 00569AE8    call       TFields.GetCount
 00569AED    cmp        ebx,eax
>00569AEF    jge        00569B0C
 00569AF1    xor        edx,edx
 00569AF3    mov        eax,dword ptr [ebp-10]
 00569AF6    call       StrToIntDef
 00569AFB    mov        edx,eax
 00569AFD    mov        eax,dword ptr [ebp-4]
 00569B00    mov        eax,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 00569B03    call       TFields.GetField
 00569B08    mov        edi,eax
>00569B0A    jmp        00569B68
 00569B0C    mov        eax,dword ptr [ebp-10]
 00569B0F    mov        edx,569C50; ','
 00569B14    call       @LStrCmp
>00569B19    je         00569B68
 00569B1B    mov        eax,dword ptr [ebp-10]
 00569B1E    mov        edx,569C5C; ';'
 00569B23    call       @LStrCmp
>00569B28    je         00569B68
 00569B2A    lea        eax,[ebp-1C]
 00569B2D    push       eax
 00569B2E    lea        edx,[ebp-20]
 00569B31    mov        eax,[0061C208]; ^#122.sResString69:TResStringRec
 00569B36    call       LoadResString
 00569B3B    mov        eax,dword ptr [ebp-20]
 00569B3E    push       eax
 00569B3F    mov        eax,dword ptr [ebp-10]
 00569B42    mov        dword ptr [ebp-28],eax
 00569B45    mov        byte ptr [ebp-24],0B
 00569B49    lea        edx,[ebp-28]
 00569B4C    xor        ecx,ecx
 00569B4E    pop        eax
 00569B4F    call       Format
 00569B54    mov        ecx,dword ptr [ebp-1C]
 00569B57    mov        dl,1
 00569B59    mov        eax,[0057089C]; EZDatabaseError
 00569B5E    call       EZDatabaseError.Create; EZDatabaseError.Create
 00569B63    call       @RaiseExcept
 00569B68    test       edi,edi
>00569B6A    je         00569BCD
 00569B6C    mov        eax,dword ptr [ebp-8]
 00569B6F    cmp        byte ptr [eax],0
>00569B72    je         00569B7A
 00569B74    cmp        byte ptr [edi+42],0; TField.FieldKind:TFieldKind
>00569B78    je         00569B7E
 00569B7A    xor        eax,eax
>00569B7C    jmp        00569B80
 00569B7E    mov        al,1
 00569B80    mov        edx,dword ptr [ebp-8]
 00569B83    mov        byte ptr [edx],al
 00569B85    add        dword ptr [ebp-14],1
>00569B89    jno        00569B90
 00569B8B    call       @IntOver
 00569B90    mov        eax,dword ptr [ebp-14]
 00569B93    push       eax
 00569B94    mov        eax,dword ptr [ebp+8]
 00569B97    mov        ecx,1
 00569B9C    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00569BA2    call       @DynArraySetLength
 00569BA7    add        esp,4
 00569BAA    mov        eax,dword ptr [ebp-14]
 00569BAD    sub        eax,1
>00569BB0    jno        00569BB7
 00569BB2    call       @IntOver
 00569BB7    mov        edx,dword ptr [ebp+8]
 00569BBA    mov        edx,dword ptr [edx]
 00569BBC    test       edx,edx
>00569BBE    je         00569BC5
 00569BC0    cmp        eax,dword ptr [edx-4]
>00569BC3    jb         00569BCA
 00569BC5    call       @BoundErr
 00569BCA    mov        dword ptr [edx+eax*4],edi
 00569BCD    inc        esi
 00569BCE    dec        dword ptr [ebp-18]
<00569BD1    jne        00569A9A
 00569BD7    xor        eax,eax
 00569BD9    pop        edx
 00569BDA    pop        ecx
 00569BDB    pop        ecx
 00569BDC    mov        dword ptr fs:[eax],edx
 00569BDF    push       569BF4
 00569BE4    mov        eax,dword ptr [ebp-0C]
 00569BE7    call       TObject.Free
 00569BEC    ret
<00569BED    jmp        @HandleFinally
<00569BF2    jmp        00569BE4
 00569BF4    mov        eax,dword ptr [ebp+8]
 00569BF7    mov        eax,dword ptr [eax]
 00569BF9    call       @DynArrayLength
 00569BFE    test       eax,eax
>00569C00    jne        00569C10
 00569C02    mov        eax,dword ptr [ebp+8]
 00569C05    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00569C0B    call       @DynArrayClear
 00569C10    xor        eax,eax
 00569C12    pop        edx
 00569C13    pop        ecx
 00569C14    pop        ecx
 00569C15    mov        dword ptr fs:[eax],edx
 00569C18    push       569C3A
 00569C1D    lea        eax,[ebp-20]
 00569C20    mov        edx,2
 00569C25    call       @LStrArrayClr
 00569C2A    lea        eax,[ebp-10]
 00569C2D    call       @LStrClr
 00569C32    ret
<00569C33    jmp        @HandleFinally
<00569C38    jmp        00569C1D
 00569C3A    pop        edi
 00569C3B    pop        esi
 00569C3C    pop        ebx
 00569C3D    mov        esp,ebp
 00569C3F    pop        ebp
 00569C40    ret        4
*}
//end;

//00569C60
//procedure sub_00569C60(?:TZAbstractDataset; ?:IZExpression; ?:TObjectDynArray);
//begin
{*
 00569C60    push       ebp
 00569C61    mov        ebp,esp
 00569C63    push       ecx
 00569C64    mov        ecx,4
 00569C69    push       0
 00569C6B    push       0
 00569C6D    dec        ecx
<00569C6E    jne        00569C69
 00569C70    xchg       ecx,dword ptr [ebp-4]
 00569C73    push       ebx
 00569C74    push       esi
 00569C75    mov        dword ptr [ebp-0C],ecx
 00569C78    mov        dword ptr [ebp-8],edx
 00569C7B    mov        dword ptr [ebp-4],eax
 00569C7E    mov        eax,dword ptr [ebp-8]
 00569C81    call       @IntfAddRef
 00569C86    xor        eax,eax
 00569C88    push       ebp
 00569C89    push       569DB2
 00569C8E    push       dword ptr fs:[eax]
 00569C91    mov        dword ptr fs:[eax],esp
 00569C94    lea        edx,[ebp-14]
 00569C97    mov        eax,dword ptr [ebp-8]
 00569C9A    mov        ecx,dword ptr [eax]
 00569C9C    call       dword ptr [ecx+14]
 00569C9F    cmp        dword ptr [ebp-14],0
>00569CA3    je         00569D59
 00569CA9    lea        edx,[ebp-18]
 00569CAC    mov        eax,dword ptr [ebp-8]
 00569CAF    mov        ecx,dword ptr [eax]
 00569CB1    call       dword ptr [ecx+24]
 00569CB4    mov        eax,dword ptr [ebp-18]
 00569CB7    mov        edx,dword ptr [eax]
 00569CB9    call       dword ptr [edx+0C]
 00569CBC    push       eax
 00569CBD    mov        eax,dword ptr [ebp-0C]
 00569CC0    mov        ecx,1
 00569CC5    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00569CCB    call       @DynArraySetLength
 00569CD0    add        esp,4
 00569CD3    lea        edx,[ebp-1C]
 00569CD6    mov        eax,dword ptr [ebp-8]
 00569CD9    mov        ecx,dword ptr [eax]
 00569CDB    call       dword ptr [ecx+24]
 00569CDE    mov        eax,dword ptr [ebp-1C]
 00569CE1    mov        edx,dword ptr [eax]
 00569CE3    call       dword ptr [edx+0C]
 00569CE6    sub        eax,1
>00569CE9    jno        00569CF0
 00569CEB    call       @IntOver
 00569CF0    test       eax,eax
>00569CF2    jl         00569D71
 00569CF4    inc        eax
 00569CF5    mov        dword ptr [ebp-10],eax
 00569CF8    xor        ebx,ebx
 00569CFA    lea        edx,[ebp-24]
 00569CFD    mov        eax,dword ptr [ebp-8]
 00569D00    mov        ecx,dword ptr [eax]
 00569D02    call       dword ptr [ecx+24]
 00569D05    mov        eax,dword ptr [ebp-24]
 00569D08    lea        ecx,[ebp-20]
 00569D0B    mov        edx,ebx
 00569D0D    mov        esi,dword ptr [eax]
 00569D0F    call       dword ptr [esi+10]
 00569D12    mov        edx,dword ptr [ebp-20]
 00569D15    mov        eax,dword ptr [ebp-4]
 00569D18    call       TDataSet.FindField
 00569D1D    test       eax,eax
>00569D1F    je         00569D39
 00569D21    mov        edx,dword ptr [ebp-0C]
 00569D24    mov        edx,dword ptr [edx]
 00569D26    test       edx,edx
>00569D28    je         00569D2F
 00569D2A    cmp        ebx,dword ptr [edx-4]
>00569D2D    jb         00569D34
 00569D2F    call       @BoundErr
 00569D34    mov        dword ptr [edx+ebx*4],eax
>00569D37    jmp        00569D51
 00569D39    mov        eax,dword ptr [ebp-0C]
 00569D3C    mov        eax,dword ptr [eax]
 00569D3E    test       eax,eax
>00569D40    je         00569D47
 00569D42    cmp        ebx,dword ptr [eax-4]
>00569D45    jb         00569D4C
 00569D47    call       @BoundErr
 00569D4C    xor        edx,edx
 00569D4E    mov        dword ptr [eax+ebx*4],edx
 00569D51    inc        ebx
 00569D52    dec        dword ptr [ebp-10]
<00569D55    jne        00569CFA
>00569D57    jmp        00569D71
 00569D59    push       0
 00569D5B    mov        eax,dword ptr [ebp-0C]
 00569D5E    mov        ecx,1
 00569D63    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00569D69    call       @DynArraySetLength
 00569D6E    add        esp,4
 00569D71    xor        eax,eax
 00569D73    pop        edx
 00569D74    pop        ecx
 00569D75    pop        ecx
 00569D76    mov        dword ptr fs:[eax],edx
 00569D79    push       569DB9
 00569D7E    lea        eax,[ebp-24]
 00569D81    call       @IntfClear
 00569D86    lea        eax,[ebp-20]
 00569D89    call       @LStrClr
 00569D8E    lea        eax,[ebp-1C]
 00569D91    mov        edx,dword ptr ds:[567D50]; IZVariablesList
 00569D97    mov        ecx,2
 00569D9C    call       @FinalizeArray
 00569DA1    lea        eax,[ebp-14]
 00569DA4    call       @LStrClr
 00569DA9    lea        eax,[ebp-8]
 00569DAC    call       @IntfClear
 00569DB1    ret
<00569DB2    jmp        @HandleFinally
<00569DB7    jmp        00569D7E
 00569DB9    pop        esi
 00569DBA    pop        ebx
 00569DBB    mov        esp,ebp
 00569DBD    pop        ebp
 00569DBE    ret
*}
//end;

//00569DC0
//procedure sub_00569DC0(?:TObjectDynArray; ?:IZResultSet; ?:TZVariantDynArray);
//begin
{*
 00569DC0    push       ebp
 00569DC1    mov        ebp,esp
 00569DC3    add        esp,0FFFFFFE4
 00569DC6    push       ebx
 00569DC7    push       esi
 00569DC8    push       edi
 00569DC9    xor        ebx,ebx
 00569DCB    mov        dword ptr [ebp-1C],ebx
 00569DCE    mov        dword ptr [ebp-18],ebx
 00569DD1    mov        dword ptr [ebp-14],ebx
 00569DD4    mov        dword ptr [ebp-0C],ecx
 00569DD7    mov        dword ptr [ebp-8],edx
 00569DDA    mov        dword ptr [ebp-4],eax
 00569DDD    mov        eax,dword ptr [ebp-8]
 00569DE0    call       @IntfAddRef
 00569DE5    xor        eax,eax
 00569DE7    push       ebp
 00569DE8    push       56A0B6
 00569DED    push       dword ptr fs:[eax]
 00569DF0    mov        dword ptr fs:[eax],esp
 00569DF3    mov        eax,dword ptr [ebp-4]
 00569DF6    call       @DynArrayHigh
 00569DFB    mov        esi,eax
 00569DFD    test       esi,esi
>00569DFF    jl         0056A088
 00569E05    inc        esi
 00569E06    xor        ebx,ebx
 00569E08    mov        eax,dword ptr [ebp-4]
 00569E0B    test       eax,eax
>00569E0D    je         00569E14
 00569E0F    cmp        ebx,dword ptr [eax-4]
>00569E12    jb         00569E19
 00569E14    call       @BoundErr
 00569E19    mov        eax,dword ptr [eax+ebx*4]
 00569E1C    mov        edx,dword ptr [eax]
 00569E1E    call       dword ptr [edx+7C]
 00569E21    mov        dword ptr [ebp-10],eax
 00569E24    mov        eax,dword ptr [ebp-4]
 00569E27    test       eax,eax
>00569E29    je         00569E30
 00569E2B    cmp        ebx,dword ptr [eax-4]
>00569E2E    jb         00569E35
 00569E30    call       @BoundErr
 00569E35    mov        eax,dword ptr [eax+ebx*4]
 00569E38    movzx      eax,byte ptr [eax+40]
 00569E3C    cmp        eax,19
>00569E3F    ja         0056A022
 00569E45    mov        al,byte ptr [eax+569E52]
 00569E4B    jmp        dword ptr [eax*4+569E6C]
 00569E4B    db         0
 00569E4B    db         1
 00569E4B    db         3
 00569E4B    db         3
 00569E4B    db         0
 00569E4B    db         2
 00569E4B    db         4
 00569E4B    db         6
 00569E4B    db         0
 00569E4B    db         7
 00569E4B    db         7
 00569E4B    db         7
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         3
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         0
 00569E4B    db         8
 00569E4B    db         5
 00569E4B    dd         56A022
 00569E4B    dd         569E90
 00569E4B    dd         569EC4
 00569E4B    dd         569EF4
 00569E4B    dd         569F25
 00569E4B    dd         569F5A
 00569E4B    dd         569F8A
 00569E4B    dd         569FBF
 00569E4B    dd         569FF1
 00569E90    lea        ecx,[ebp-14]
 00569E93    mov        edx,dword ptr [ebp-10]
 00569E96    mov        eax,dword ptr [ebp-8]
 00569E99    mov        edi,dword ptr [eax]
 00569E9B    call       dword ptr [edi+20]
 00569E9E    mov        ecx,dword ptr [ebp-14]
 00569EA1    imul       eax,ebx,0B
>00569EA4    jno        00569EAB
 00569EA6    call       @IntOver
 00569EAB    mov        edx,dword ptr [ebp-0C]
 00569EAE    mov        edx,dword ptr [edx]
 00569EB0    lea        edx,[edx+eax*4]
 00569EB3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569EB8    mov        eax,dword ptr [eax]
 00569EBA    mov        edi,dword ptr [eax]
 00569EBC    call       dword ptr [edi+50]
>00569EBF    jmp        0056A051
 00569EC4    mov        edx,dword ptr [ebp-10]
 00569EC7    mov        eax,dword ptr [ebp-8]
 00569ECA    mov        ecx,dword ptr [eax]
 00569ECC    call       dword ptr [ecx+28]
 00569ECF    mov        ecx,eax
 00569ED1    imul       eax,ebx,0B
>00569ED4    jno        00569EDB
 00569ED6    call       @IntOver
 00569EDB    mov        edx,dword ptr [ebp-0C]
 00569EDE    mov        edx,dword ptr [edx]
 00569EE0    lea        edx,[edx+eax*4]
 00569EE3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569EE8    mov        eax,dword ptr [eax]
 00569EEA    mov        edi,dword ptr [eax]
 00569EEC    call       dword ptr [edi+44]
>00569EEF    jmp        0056A051
 00569EF4    mov        edx,dword ptr [ebp-10]
 00569EF7    mov        eax,dword ptr [ebp-8]
 00569EFA    mov        ecx,dword ptr [eax]
 00569EFC    call       dword ptr [ecx+34]
 00569EFF    cdq
 00569F00    push       edx
 00569F01    push       eax
 00569F02    imul       eax,ebx,0B
>00569F05    jno        00569F0C
 00569F07    call       @IntOver
 00569F0C    mov        edx,dword ptr [ebp-0C]
 00569F0F    mov        edx,dword ptr [edx]
 00569F11    lea        edx,[edx+eax*4]
 00569F14    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569F19    mov        eax,dword ptr [eax]
 00569F1B    mov        ecx,dword ptr [eax]
 00569F1D    call       dword ptr [ecx+48]
>00569F20    jmp        0056A051
 00569F25    mov        edx,dword ptr [ebp-10]
 00569F28    mov        eax,dword ptr [ebp-8]
 00569F2B    mov        ecx,dword ptr [eax]
 00569F2D    call       dword ptr [ecx+40]
 00569F30    add        esp,0FFFFFFF4
 00569F33    fstp       tbyte ptr [esp]
 00569F36    wait
 00569F37    imul       eax,ebx,0B
>00569F3A    jno        00569F41
 00569F3C    call       @IntOver
 00569F41    mov        edx,dword ptr [ebp-0C]
 00569F44    mov        edx,dword ptr [edx]
 00569F46    lea        edx,[edx+eax*4]
 00569F49    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569F4E    mov        eax,dword ptr [eax]
 00569F50    mov        ecx,dword ptr [eax]
 00569F52    call       dword ptr [ecx+4C]
>00569F55    jmp        0056A051
 00569F5A    mov        edx,dword ptr [ebp-10]
 00569F5D    mov        eax,dword ptr [ebp-8]
 00569F60    mov        ecx,dword ptr [eax]
 00569F62    call       dword ptr [ecx+38]
 00569F65    push       edx
 00569F66    push       eax
 00569F67    imul       eax,ebx,0B
>00569F6A    jno        00569F71
 00569F6C    call       @IntOver
 00569F71    mov        edx,dword ptr [ebp-0C]
 00569F74    mov        edx,dword ptr [edx]
 00569F76    lea        edx,[edx+eax*4]
 00569F79    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569F7E    mov        eax,dword ptr [eax]
 00569F80    mov        ecx,dword ptr [eax]
 00569F82    call       dword ptr [ecx+48]
>00569F85    jmp        0056A051
 00569F8A    mov        edx,dword ptr [ebp-10]
 00569F8D    mov        eax,dword ptr [ebp-8]
 00569F90    mov        ecx,dword ptr [eax]
 00569F92    call       dword ptr [ecx+44]
 00569F95    add        esp,0FFFFFFF4
 00569F98    fstp       tbyte ptr [esp]
 00569F9B    wait
 00569F9C    imul       eax,ebx,0B
>00569F9F    jno        00569FA6
 00569FA1    call       @IntOver
 00569FA6    mov        edx,dword ptr [ebp-0C]
 00569FA9    mov        edx,dword ptr [edx]
 00569FAB    lea        edx,[edx+eax*4]
 00569FAE    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569FB3    mov        eax,dword ptr [eax]
 00569FB5    mov        ecx,dword ptr [eax]
 00569FB7    call       dword ptr [ecx+4C]
>00569FBA    jmp        0056A051
 00569FBF    mov        edx,dword ptr [ebp-10]
 00569FC2    mov        eax,dword ptr [ebp-8]
 00569FC5    mov        ecx,dword ptr [eax]
 00569FC7    call       dword ptr [ecx+54]
 00569FCA    add        esp,0FFFFFFF8
 00569FCD    fstp       qword ptr [esp]
 00569FD0    wait
 00569FD1    imul       eax,ebx,0B
>00569FD4    jno        00569FDB
 00569FD6    call       @IntOver
 00569FDB    mov        edx,dword ptr [ebp-0C]
 00569FDE    mov        edx,dword ptr [edx]
 00569FE0    lea        edx,[edx+eax*4]
 00569FE3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00569FE8    mov        eax,dword ptr [eax]
 00569FEA    mov        ecx,dword ptr [eax]
 00569FEC    call       dword ptr [ecx+58]
>00569FEF    jmp        0056A051
 00569FF1    lea        ecx,[ebp-18]
 00569FF4    mov        edx,dword ptr [ebp-10]
 00569FF7    mov        eax,dword ptr [ebp-8]
 00569FFA    mov        edi,dword ptr [eax]
 00569FFC    call       dword ptr [edi+24]
 00569FFF    mov        ecx,dword ptr [ebp-18]
 0056A002    imul       eax,ebx,0B
>0056A005    jno        0056A00C
 0056A007    call       @IntOver
 0056A00C    mov        edx,dword ptr [ebp-0C]
 0056A00F    mov        edx,dword ptr [edx]
 0056A011    lea        edx,[edx+eax*4]
 0056A014    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A019    mov        eax,dword ptr [eax]
 0056A01B    mov        edi,dword ptr [eax]
 0056A01D    call       dword ptr [edi+54]
>0056A020    jmp        0056A051
 0056A022    lea        ecx,[ebp-1C]
 0056A025    mov        edx,dword ptr [ebp-10]
 0056A028    mov        eax,dword ptr [ebp-8]
 0056A02B    mov        edi,dword ptr [eax]
 0056A02D    call       dword ptr [edi+20]
 0056A030    mov        ecx,dword ptr [ebp-1C]
 0056A033    imul       eax,ebx,0B
>0056A036    jno        0056A03D
 0056A038    call       @IntOver
 0056A03D    mov        edx,dword ptr [ebp-0C]
 0056A040    mov        edx,dword ptr [edx]
 0056A042    lea        edx,[edx+eax*4]
 0056A045    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A04A    mov        eax,dword ptr [eax]
 0056A04C    mov        edi,dword ptr [eax]
 0056A04E    call       dword ptr [edi+50]
 0056A051    mov        eax,dword ptr [ebp-8]
 0056A054    mov        edx,dword ptr [eax]
 0056A056    call       dword ptr [edx+14]
 0056A059    test       al,al
>0056A05B    je         0056A080
 0056A05D    imul       eax,ebx,0B
>0056A060    jno        0056A067
 0056A062    call       @IntOver
 0056A067    mov        edx,dword ptr [ebp-0C]
 0056A06A    mov        edx,dword ptr [edx]
 0056A06C    lea        eax,[edx+eax*4]
 0056A06F    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 0056A075    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056A07B    call       @CopyRecord
 0056A080    inc        ebx
 0056A081    dec        esi
<0056A082    jne        00569E08
 0056A088    xor        eax,eax
 0056A08A    pop        edx
 0056A08B    pop        ecx
 0056A08C    pop        ecx
 0056A08D    mov        dword ptr fs:[eax],edx
 0056A090    push       56A0BD
 0056A095    lea        eax,[ebp-1C]
 0056A098    call       @LStrClr
 0056A09D    lea        eax,[ebp-18]
 0056A0A0    call       @WStrClr
 0056A0A5    lea        eax,[ebp-14]
 0056A0A8    call       @LStrClr
 0056A0AD    lea        eax,[ebp-8]
 0056A0B0    call       @IntfClear
 0056A0B5    ret
<0056A0B6    jmp        @HandleFinally
<0056A0BB    jmp        0056A095
 0056A0BD    pop        edi
 0056A0BE    pop        esi
 0056A0BF    pop        ebx
 0056A0C0    mov        esp,ebp
 0056A0C2    pop        ebp
 0056A0C3    ret
*}
//end;

//0056A0C4
//procedure sub_0056A0C4(?:TObjectDynArray; ?:TIntegerDynArray; ?:TZRowAccessor; ?:?);
//begin
{*
 0056A0C4    push       ebp
 0056A0C5    mov        ebp,esp
 0056A0C7    add        esp,0FFFFFFE4
 0056A0CA    push       ebx
 0056A0CB    push       esi
 0056A0CC    push       edi
 0056A0CD    xor        ebx,ebx
 0056A0CF    mov        dword ptr [ebp-1C],ebx
 0056A0D2    mov        dword ptr [ebp-18],ebx
 0056A0D5    mov        dword ptr [ebp-14],ebx
 0056A0D8    mov        dword ptr [ebp-0C],ecx
 0056A0DB    mov        dword ptr [ebp-8],edx
 0056A0DE    mov        dword ptr [ebp-4],eax
 0056A0E1    xor        eax,eax
 0056A0E3    push       ebp
 0056A0E4    push       56A3B5
 0056A0E9    push       dword ptr fs:[eax]
 0056A0EC    mov        dword ptr fs:[eax],esp
 0056A0EF    mov        byte ptr [ebp-0D],0
 0056A0F3    mov        eax,dword ptr [ebp-4]
 0056A0F6    call       @DynArrayHigh
 0056A0FB    mov        esi,eax
 0056A0FD    test       esi,esi
>0056A0FF    jl         0056A38F
 0056A105    inc        esi
 0056A106    xor        ebx,ebx
 0056A108    mov        eax,dword ptr [ebp-8]
 0056A10B    test       eax,eax
>0056A10D    je         0056A114
 0056A10F    cmp        ebx,dword ptr [eax-4]
>0056A112    jb         0056A119
 0056A114    call       @BoundErr
 0056A119    mov        edi,dword ptr [eax+ebx*4]
 0056A11C    mov        eax,dword ptr [ebp-4]
 0056A11F    test       eax,eax
>0056A121    je         0056A128
 0056A123    cmp        ebx,dword ptr [eax-4]
>0056A126    jb         0056A12D
 0056A128    call       @BoundErr
 0056A12D    mov        eax,dword ptr [eax+ebx*4]
 0056A130    movzx      eax,byte ptr [eax+40]
 0056A134    cmp        eax,19
>0056A137    ja         0056A32C
 0056A13D    mov        al,byte ptr [eax+56A14A]
 0056A143    jmp        dword ptr [eax*4+56A164]
 0056A143    db         0
 0056A143    db         1
 0056A143    db         3
 0056A143    db         3
 0056A143    db         0
 0056A143    db         2
 0056A143    db         4
 0056A143    db         6
 0056A143    db         0
 0056A143    db         7
 0056A143    db         7
 0056A143    db         7
 0056A143    db         0
 0056A143    db         0
 0056A143    db         3
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         0
 0056A143    db         8
 0056A143    db         5
 0056A143    dd         56A32C
 0056A143    dd         56A188
 0056A143    dd         56A1BF
 0056A143    dd         56A1F1
 0056A143    dd         56A224
 0056A143    dd         56A25B
 0056A143    dd         56A28D
 0056A143    dd         56A2C4
 0056A143    dd         56A2F8
 0056A188    lea        eax,[ebp-14]
 0056A18B    push       eax
 0056A18C    lea        ecx,[ebp-0D]
 0056A18F    mov        edx,edi
 0056A191    mov        eax,dword ptr [ebp-0C]
 0056A194    call       004C9818
 0056A199    mov        ecx,dword ptr [ebp-14]
 0056A19C    imul       eax,ebx,0B
>0056A19F    jno        0056A1A6
 0056A1A1    call       @IntOver
 0056A1A6    mov        edx,dword ptr [ebp+8]
 0056A1A9    mov        edx,dword ptr [edx]
 0056A1AB    lea        edx,[edx+eax*4]
 0056A1AE    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A1B3    mov        eax,dword ptr [eax]
 0056A1B5    mov        edi,dword ptr [eax]
 0056A1B7    call       dword ptr [edi+50]
>0056A1BA    jmp        0056A35E
 0056A1BF    lea        ecx,[ebp-0D]
 0056A1C2    mov        edx,edi
 0056A1C4    mov        eax,dword ptr [ebp-0C]
 0056A1C7    call       004C9D40
 0056A1CC    mov        ecx,eax
 0056A1CE    imul       eax,ebx,0B
>0056A1D1    jno        0056A1D8
 0056A1D3    call       @IntOver
 0056A1D8    mov        edx,dword ptr [ebp+8]
 0056A1DB    mov        edx,dword ptr [edx]
 0056A1DD    lea        edx,[edx+eax*4]
 0056A1E0    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A1E5    mov        eax,dword ptr [eax]
 0056A1E7    mov        edi,dword ptr [eax]
 0056A1E9    call       dword ptr [edi+44]
>0056A1EC    jmp        0056A35E
 0056A1F1    lea        ecx,[ebp-0D]
 0056A1F4    mov        edx,edi
 0056A1F6    mov        eax,dword ptr [ebp-0C]
 0056A1F9    call       004CA4EC
 0056A1FE    cdq
 0056A1FF    push       edx
 0056A200    push       eax
 0056A201    imul       eax,ebx,0B
>0056A204    jno        0056A20B
 0056A206    call       @IntOver
 0056A20B    mov        edx,dword ptr [ebp+8]
 0056A20E    mov        edx,dword ptr [edx]
 0056A210    lea        edx,[edx+eax*4]
 0056A213    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A218    mov        eax,dword ptr [eax]
 0056A21A    mov        ecx,dword ptr [eax]
 0056A21C    call       dword ptr [ecx+48]
>0056A21F    jmp        0056A35E
 0056A224    lea        ecx,[ebp-0D]
 0056A227    mov        edx,edi
 0056A229    mov        eax,dword ptr [ebp-0C]
 0056A22C    call       004CAB20
 0056A231    add        esp,0FFFFFFF4
 0056A234    fstp       tbyte ptr [esp]
 0056A237    wait
 0056A238    imul       eax,ebx,0B
>0056A23B    jno        0056A242
 0056A23D    call       @IntOver
 0056A242    mov        edx,dword ptr [ebp+8]
 0056A245    mov        edx,dword ptr [edx]
 0056A247    lea        edx,[edx+eax*4]
 0056A24A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A24F    mov        eax,dword ptr [eax]
 0056A251    mov        ecx,dword ptr [eax]
 0056A253    call       dword ptr [ecx+4C]
>0056A256    jmp        0056A35E
 0056A25B    lea        ecx,[ebp-0D]
 0056A25E    mov        edx,edi
 0056A260    mov        eax,dword ptr [ebp-0C]
 0056A263    call       004CA704
 0056A268    push       edx
 0056A269    push       eax
 0056A26A    imul       eax,ebx,0B
>0056A26D    jno        0056A274
 0056A26F    call       @IntOver
 0056A274    mov        edx,dword ptr [ebp+8]
 0056A277    mov        edx,dword ptr [edx]
 0056A279    lea        edx,[edx+eax*4]
 0056A27C    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A281    mov        eax,dword ptr [eax]
 0056A283    mov        ecx,dword ptr [eax]
 0056A285    call       dword ptr [ecx+48]
>0056A288    jmp        0056A35E
 0056A28D    lea        ecx,[ebp-0D]
 0056A290    mov        edx,edi
 0056A292    mov        eax,dword ptr [ebp-0C]
 0056A295    call       004CAD30
 0056A29A    add        esp,0FFFFFFF4
 0056A29D    fstp       tbyte ptr [esp]
 0056A2A0    wait
 0056A2A1    imul       eax,ebx,0B
>0056A2A4    jno        0056A2AB
 0056A2A6    call       @IntOver
 0056A2AB    mov        edx,dword ptr [ebp+8]
 0056A2AE    mov        edx,dword ptr [edx]
 0056A2B0    lea        edx,[edx+eax*4]
 0056A2B3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A2B8    mov        eax,dword ptr [eax]
 0056A2BA    mov        ecx,dword ptr [eax]
 0056A2BC    call       dword ptr [ecx+4C]
>0056A2BF    jmp        0056A35E
 0056A2C4    lea        ecx,[ebp-0D]
 0056A2C7    mov        edx,edi
 0056A2C9    mov        eax,dword ptr [ebp-0C]
 0056A2CC    call       004CB380
 0056A2D1    add        esp,0FFFFFFF8
 0056A2D4    fstp       qword ptr [esp]
 0056A2D7    wait
 0056A2D8    imul       eax,ebx,0B
>0056A2DB    jno        0056A2E2
 0056A2DD    call       @IntOver
 0056A2E2    mov        edx,dword ptr [ebp+8]
 0056A2E5    mov        edx,dword ptr [edx]
 0056A2E7    lea        edx,[edx+eax*4]
 0056A2EA    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A2EF    mov        eax,dword ptr [eax]
 0056A2F1    mov        ecx,dword ptr [eax]
 0056A2F3    call       dword ptr [ecx+58]
>0056A2F6    jmp        0056A35E
 0056A2F8    lea        eax,[ebp-18]
 0056A2FB    push       eax
 0056A2FC    lea        ecx,[ebp-0D]
 0056A2FF    mov        edx,edi
 0056A301    mov        eax,dword ptr [ebp-0C]
 0056A304    call       004C9BDC
 0056A309    mov        ecx,dword ptr [ebp-18]
 0056A30C    imul       eax,ebx,0B
>0056A30F    jno        0056A316
 0056A311    call       @IntOver
 0056A316    mov        edx,dword ptr [ebp+8]
 0056A319    mov        edx,dword ptr [edx]
 0056A31B    lea        edx,[edx+eax*4]
 0056A31E    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A323    mov        eax,dword ptr [eax]
 0056A325    mov        edi,dword ptr [eax]
 0056A327    call       dword ptr [edi+54]
>0056A32A    jmp        0056A35E
 0056A32C    lea        eax,[ebp-1C]
 0056A32F    push       eax
 0056A330    lea        ecx,[ebp-0D]
 0056A333    mov        edx,edi
 0056A335    mov        eax,dword ptr [ebp-0C]
 0056A338    call       004C9818
 0056A33D    mov        ecx,dword ptr [ebp-1C]
 0056A340    imul       eax,ebx,0B
>0056A343    jno        0056A34A
 0056A345    call       @IntOver
 0056A34A    mov        edx,dword ptr [ebp+8]
 0056A34D    mov        edx,dword ptr [edx]
 0056A34F    lea        edx,[edx+eax*4]
 0056A352    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A357    mov        eax,dword ptr [eax]
 0056A359    mov        edi,dword ptr [eax]
 0056A35B    call       dword ptr [edi+50]
 0056A35E    cmp        byte ptr [ebp-0D],0
>0056A362    je         0056A387
 0056A364    imul       eax,ebx,0B
>0056A367    jno        0056A36E
 0056A369    call       @IntOver
 0056A36E    mov        edx,dword ptr [ebp+8]
 0056A371    mov        edx,dword ptr [edx]
 0056A373    lea        eax,[edx+eax*4]
 0056A376    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 0056A37C    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056A382    call       @CopyRecord
 0056A387    inc        ebx
 0056A388    dec        esi
<0056A389    jne        0056A108
 0056A38F    xor        eax,eax
 0056A391    pop        edx
 0056A392    pop        ecx
 0056A393    pop        ecx
 0056A394    mov        dword ptr fs:[eax],edx
 0056A397    push       56A3BC
 0056A39C    lea        eax,[ebp-1C]
 0056A39F    call       @LStrClr
 0056A3A4    lea        eax,[ebp-18]
 0056A3A7    call       @WStrClr
 0056A3AC    lea        eax,[ebp-14]
 0056A3AF    call       @LStrClr
 0056A3B4    ret
<0056A3B5    jmp        @HandleFinally
<0056A3BA    jmp        0056A39C
 0056A3BC    pop        edi
 0056A3BD    pop        esi
 0056A3BE    pop        ebx
 0056A3BF    mov        esp,ebp
 0056A3C1    pop        ebp
 0056A3C2    ret        4
*}
//end;

//0056A3C8
//procedure sub_0056A3C8(?:TObjectDynArray; ?:IZResultSet; ?:?);
//begin
{*
 0056A3C8    push       ebp
 0056A3C9    mov        ebp,esp
 0056A3CB    add        esp,0FFFFFFBC
 0056A3CE    push       ebx
 0056A3CF    push       esi
 0056A3D0    push       edi
 0056A3D1    xor        ebx,ebx
 0056A3D3    mov        dword ptr [ebp-44],ebx
 0056A3D6    mov        dword ptr [ebp-40],ebx
 0056A3D9    mov        dword ptr [ebp-8],ecx
 0056A3DC    mov        dword ptr [ebp-4],edx
 0056A3DF    mov        esi,eax
 0056A3E1    mov        eax,dword ptr [ebp-4]
 0056A3E4    call       @IntfAddRef
 0056A3E9    mov        eax,dword ptr [ebp-8]
 0056A3EC    call       @IntfAddRef
 0056A3F1    lea        eax,[ebp-3C]
 0056A3F4    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056A3FA    call       @InitializeRecord
 0056A3FF    xor        eax,eax
 0056A401    push       ebp
 0056A402    push       56A6AC
 0056A407    push       dword ptr fs:[eax]
 0056A40A    mov        dword ptr fs:[eax],esp
 0056A40D    mov        eax,esi
 0056A40F    call       @DynArrayLength
 0056A414    sub        eax,1
>0056A417    jno        0056A41E
 0056A419    call       @IntOver
 0056A41E    test       eax,eax
>0056A420    jl         0056A670
 0056A426    inc        eax
 0056A427    mov        dword ptr [ebp-10],eax
 0056A42A    xor        ebx,ebx
 0056A42C    test       esi,esi
>0056A42E    je         0056A435
 0056A430    cmp        ebx,dword ptr [esi-4]
>0056A433    jb         0056A43A
 0056A435    call       @BoundErr
 0056A43A    cmp        dword ptr [esi+ebx*4],0
>0056A43E    je         0056A666
 0056A444    test       esi,esi
>0056A446    je         0056A44D
 0056A448    cmp        ebx,dword ptr [esi-4]
>0056A44B    jb         0056A452
 0056A44D    call       @BoundErr
 0056A452    mov        eax,dword ptr [esi+ebx*4]
 0056A455    mov        edx,dword ptr [eax]
 0056A457    call       dword ptr [edx+7C]
 0056A45A    mov        dword ptr [ebp-0C],eax
 0056A45D    mov        edx,dword ptr [ebp-0C]
 0056A460    mov        eax,dword ptr [ebp-4]
 0056A463    mov        ecx,dword ptr [eax]
 0056A465    call       dword ptr [ecx+18]
 0056A468    test       al,al
>0056A46A    jne        0056A64A
 0056A470    test       esi,esi
>0056A472    je         0056A479
 0056A474    cmp        ebx,dword ptr [esi-4]
>0056A477    jb         0056A47E
 0056A479    call       @BoundErr
 0056A47E    mov        eax,dword ptr [esi+ebx*4]
 0056A481    movzx      eax,byte ptr [eax+40]
 0056A485    cmp        eax,19
>0056A488    ja         0056A61B
 0056A48E    mov        al,byte ptr [eax+56A49B]
 0056A494    jmp        dword ptr [eax*4+56A4B5]
 0056A494    db         0
 0056A494    db         0
 0056A494    db         2
 0056A494    db         2
 0056A494    db         0
 0056A494    db         1
 0056A494    db         3
 0056A494    db         5
 0056A494    db         0
 0056A494    db         6
 0056A494    db         7
 0056A494    db         8
 0056A494    db         0
 0056A494    db         0
 0056A494    db         2
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         0
 0056A494    db         9
 0056A494    db         4
 0056A494    dd         56A61B
 0056A494    dd         56A4DD
 0056A494    dd         56A4FE
 0056A494    dd         56A520
 0056A494    dd         56A546
 0056A494    dd         56A567
 0056A494    dd         56A58D
 0056A494    dd         56A5B3
 0056A494    dd         56A5D6
 0056A494    dd         56A5F9
 0056A4DD    mov        edx,dword ptr [ebp-0C]
 0056A4E0    mov        eax,dword ptr [ebp-4]
 0056A4E3    mov        ecx,dword ptr [eax]
 0056A4E5    call       dword ptr [ecx+28]
 0056A4E8    mov        ecx,eax
 0056A4EA    lea        edx,[ebp-3C]
 0056A4ED    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A4F2    mov        eax,dword ptr [eax]
 0056A4F4    mov        edi,dword ptr [eax]
 0056A4F6    call       dword ptr [edi+44]
>0056A4F9    jmp        0056A63B
 0056A4FE    mov        edx,dword ptr [ebp-0C]
 0056A501    mov        eax,dword ptr [ebp-4]
 0056A504    mov        ecx,dword ptr [eax]
 0056A506    call       dword ptr [ecx+34]
 0056A509    cdq
 0056A50A    push       edx
 0056A50B    push       eax
 0056A50C    lea        edx,[ebp-3C]
 0056A50F    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A514    mov        eax,dword ptr [eax]
 0056A516    mov        ecx,dword ptr [eax]
 0056A518    call       dword ptr [ecx+48]
>0056A51B    jmp        0056A63B
 0056A520    mov        edx,dword ptr [ebp-0C]
 0056A523    mov        eax,dword ptr [ebp-4]
 0056A526    mov        ecx,dword ptr [eax]
 0056A528    call       dword ptr [ecx+40]
 0056A52B    add        esp,0FFFFFFF4
 0056A52E    fstp       tbyte ptr [esp]
 0056A531    wait
 0056A532    lea        edx,[ebp-3C]
 0056A535    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A53A    mov        eax,dword ptr [eax]
 0056A53C    mov        ecx,dword ptr [eax]
 0056A53E    call       dword ptr [ecx+4C]
>0056A541    jmp        0056A63B
 0056A546    mov        edx,dword ptr [ebp-0C]
 0056A549    mov        eax,dword ptr [ebp-4]
 0056A54C    mov        ecx,dword ptr [eax]
 0056A54E    call       dword ptr [ecx+38]
 0056A551    push       edx
 0056A552    push       eax
 0056A553    lea        edx,[ebp-3C]
 0056A556    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A55B    mov        eax,dword ptr [eax]
 0056A55D    mov        ecx,dword ptr [eax]
 0056A55F    call       dword ptr [ecx+48]
>0056A562    jmp        0056A63B
 0056A567    mov        edx,dword ptr [ebp-0C]
 0056A56A    mov        eax,dword ptr [ebp-4]
 0056A56D    mov        ecx,dword ptr [eax]
 0056A56F    call       dword ptr [ecx+44]
 0056A572    add        esp,0FFFFFFF4
 0056A575    fstp       tbyte ptr [esp]
 0056A578    wait
 0056A579    lea        edx,[ebp-3C]
 0056A57C    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A581    mov        eax,dword ptr [eax]
 0056A583    mov        ecx,dword ptr [eax]
 0056A585    call       dword ptr [ecx+4C]
>0056A588    jmp        0056A63B
 0056A58D    mov        edx,dword ptr [ebp-0C]
 0056A590    mov        eax,dword ptr [ebp-4]
 0056A593    mov        ecx,dword ptr [eax]
 0056A595    call       dword ptr [ecx+4C]
 0056A598    add        esp,0FFFFFFF8
 0056A59B    fstp       qword ptr [esp]
 0056A59E    wait
 0056A59F    lea        edx,[ebp-3C]
 0056A5A2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A5A7    mov        eax,dword ptr [eax]
 0056A5A9    mov        ecx,dword ptr [eax]
 0056A5AB    call       dword ptr [ecx+58]
>0056A5AE    jmp        0056A63B
 0056A5B3    mov        edx,dword ptr [ebp-0C]
 0056A5B6    mov        eax,dword ptr [ebp-4]
 0056A5B9    mov        ecx,dword ptr [eax]
 0056A5BB    call       dword ptr [ecx+50]
 0056A5BE    add        esp,0FFFFFFF8
 0056A5C1    fstp       qword ptr [esp]
 0056A5C4    wait
 0056A5C5    lea        edx,[ebp-3C]
 0056A5C8    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A5CD    mov        eax,dword ptr [eax]
 0056A5CF    mov        ecx,dword ptr [eax]
 0056A5D1    call       dword ptr [ecx+58]
>0056A5D4    jmp        0056A63B
 0056A5D6    mov        edx,dword ptr [ebp-0C]
 0056A5D9    mov        eax,dword ptr [ebp-4]
 0056A5DC    mov        ecx,dword ptr [eax]
 0056A5DE    call       dword ptr [ecx+54]
 0056A5E1    add        esp,0FFFFFFF8
 0056A5E4    fstp       qword ptr [esp]
 0056A5E7    wait
 0056A5E8    lea        edx,[ebp-3C]
 0056A5EB    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A5F0    mov        eax,dword ptr [eax]
 0056A5F2    mov        ecx,dword ptr [eax]
 0056A5F4    call       dword ptr [ecx+58]
>0056A5F7    jmp        0056A63B
 0056A5F9    lea        ecx,[ebp-40]
 0056A5FC    mov        edx,dword ptr [ebp-0C]
 0056A5FF    mov        eax,dword ptr [ebp-4]
 0056A602    mov        edi,dword ptr [eax]
 0056A604    call       dword ptr [edi+24]
 0056A607    mov        ecx,dword ptr [ebp-40]
 0056A60A    lea        edx,[ebp-3C]
 0056A60D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A612    mov        eax,dword ptr [eax]
 0056A614    mov        edi,dword ptr [eax]
 0056A616    call       dword ptr [edi+54]
>0056A619    jmp        0056A63B
 0056A61B    lea        ecx,[ebp-44]
 0056A61E    mov        edx,dword ptr [ebp-0C]
 0056A621    mov        eax,dword ptr [ebp-4]
 0056A624    mov        edi,dword ptr [eax]
 0056A626    call       dword ptr [edi+20]
 0056A629    mov        ecx,dword ptr [ebp-44]
 0056A62C    lea        edx,[ebp-3C]
 0056A62F    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A634    mov        eax,dword ptr [eax]
 0056A636    mov        edi,dword ptr [eax]
 0056A638    call       dword ptr [edi+50]
 0056A63B    lea        ecx,[ebp-3C]
 0056A63E    mov        edx,ebx
 0056A640    mov        eax,dword ptr [ebp-8]
 0056A643    mov        edi,dword ptr [eax]
 0056A645    call       dword ptr [edi+18]
>0056A648    jmp        0056A666
 0056A64A    lea        edx,[ebp-3C]
 0056A64D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0056A652    mov        eax,dword ptr [eax]
 0056A654    mov        ecx,dword ptr [eax]
 0056A656    call       dword ptr [ecx+10]
 0056A659    lea        ecx,[ebp-3C]
 0056A65C    mov        edx,ebx
 0056A65E    mov        eax,dword ptr [ebp-8]
 0056A661    mov        edi,dword ptr [eax]
 0056A663    call       dword ptr [edi+18]
 0056A666    inc        ebx
 0056A667    dec        dword ptr [ebp-10]
<0056A66A    jne        0056A42C
 0056A670    xor        eax,eax
 0056A672    pop        edx
 0056A673    pop        ecx
 0056A674    pop        ecx
 0056A675    mov        dword ptr fs:[eax],edx
 0056A678    push       56A6B3
 0056A67D    lea        eax,[ebp-44]
 0056A680    call       @LStrClr
 0056A685    lea        eax,[ebp-40]
 0056A688    call       @WStrClr
 0056A68D    lea        eax,[ebp-3C]
 0056A690    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056A696    call       @FinalizeRecord
 0056A69B    lea        eax,[ebp-8]
 0056A69E    call       @IntfClear
 0056A6A3    lea        eax,[ebp-4]
 0056A6A6    call       @IntfClear
 0056A6AB    ret
<0056A6AC    jmp        @HandleFinally
<0056A6B1    jmp        0056A67D
 0056A6B3    pop        edi
 0056A6B4    pop        esi
 0056A6B5    pop        ebx
 0056A6B6    mov        esp,ebp
 0056A6B8    pop        ebp
 0056A6B9    ret
*}
//end;

//0056A6BC
//function sub_0056A6BC(?:TZVariantDynArray; ?:TZVariantDynArray; ?:?; ?:?):?;
//begin
{*
 0056A6BC    push       ebp
 0056A6BD    mov        ebp,esp
 0056A6BF    push       0
 0056A6C1    push       0
 0056A6C3    push       0
 0056A6C5    push       0
 0056A6C7    push       0
 0056A6C9    push       0
 0056A6CB    push       0
 0056A6CD    push       ebx
 0056A6CE    push       esi
 0056A6CF    push       edi
 0056A6D0    mov        byte ptr [ebp-9],cl
 0056A6D3    mov        dword ptr [ebp-8],edx
 0056A6D6    mov        dword ptr [ebp-4],eax
 0056A6D9    xor        eax,eax
 0056A6DB    push       ebp
 0056A6DC    push       56A87E
 0056A6E1    push       dword ptr fs:[eax]
 0056A6E4    mov        dword ptr fs:[eax],esp
 0056A6E7    mov        byte ptr [ebp-0A],1
 0056A6EB    mov        eax,dword ptr [ebp-4]
 0056A6EE    call       @DynArrayHigh
 0056A6F3    mov        esi,eax
 0056A6F5    test       esi,esi
>0056A6F7    jl         0056A863
 0056A6FD    inc        esi
 0056A6FE    xor        ebx,ebx
 0056A700    cmp        byte ptr [ebp+8],0
>0056A704    je         0056A7AD
 0056A70A    imul       eax,ebx,0B
>0056A70D    jno        0056A714
 0056A70F    call       @IntOver
 0056A714    mov        edx,dword ptr [ebp-4]
 0056A717    lea        edx,[edx+eax*4]
 0056A71A    lea        ecx,[ebp-18]
 0056A71D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A722    mov        eax,dword ptr [eax]
 0056A724    mov        edi,dword ptr [eax]
 0056A726    call       dword ptr [edi+30]
 0056A729    mov        eax,dword ptr [ebp-18]
 0056A72C    lea        edx,[ebp-10]
 0056A72F    call       AnsiUpperCase
 0056A734    imul       eax,ebx,0B
>0056A737    jno        0056A73E
 0056A739    call       @IntOver
 0056A73E    mov        edx,dword ptr [ebp-8]
 0056A741    lea        edx,[edx+eax*4]
 0056A744    lea        ecx,[ebp-1C]
 0056A747    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A74C    mov        eax,dword ptr [eax]
 0056A74E    mov        edi,dword ptr [eax]
 0056A750    call       dword ptr [edi+30]
 0056A753    mov        eax,dword ptr [ebp-1C]
 0056A756    lea        edx,[ebp-14]
 0056A759    call       AnsiUpperCase
 0056A75E    cmp        byte ptr [ebp-9],0
>0056A762    je         0056A799
 0056A764    mov        eax,dword ptr [ebp-10]
 0056A767    call       @LStrLen
 0056A76C    test       eax,eax
>0056A76E    jns        0056A775
 0056A770    call       @BoundErr
 0056A775    push       eax
 0056A776    mov        eax,dword ptr [ebp-10]
 0056A779    call       @LStrToPChar
 0056A77E    push       eax
 0056A77F    mov        eax,dword ptr [ebp-14]
 0056A782    call       @LStrToPChar
 0056A787    pop        edx
 0056A788    pop        ecx
 0056A789    call       AnsiStrLComp
 0056A78E    test       eax,eax
 0056A790    sete       byte ptr [ebp-0A]
>0056A794    jmp        0056A855
 0056A799    mov        eax,dword ptr [ebp-10]
 0056A79C    mov        edx,dword ptr [ebp-14]
 0056A79F    call       @LStrCmp
 0056A7A4    sete       byte ptr [ebp-0A]
>0056A7A8    jmp        0056A855
 0056A7AD    cmp        byte ptr [ebp-9],0
>0056A7B1    je         0056A823
 0056A7B3    imul       eax,ebx,0B
>0056A7B6    jno        0056A7BD
 0056A7B8    call       @IntOver
 0056A7BD    mov        edx,dword ptr [ebp-4]
 0056A7C0    lea        edx,[edx+eax*4]
 0056A7C3    lea        ecx,[ebp-10]
 0056A7C6    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A7CB    mov        eax,dword ptr [eax]
 0056A7CD    mov        edi,dword ptr [eax]
 0056A7CF    call       dword ptr [edi+30]
 0056A7D2    imul       eax,ebx,0B
>0056A7D5    jno        0056A7DC
 0056A7D7    call       @IntOver
 0056A7DC    mov        edx,dword ptr [ebp-8]
 0056A7DF    lea        edx,[edx+eax*4]
 0056A7E2    lea        ecx,[ebp-14]
 0056A7E5    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A7EA    mov        eax,dword ptr [eax]
 0056A7EC    mov        edi,dword ptr [eax]
 0056A7EE    call       dword ptr [edi+30]
 0056A7F1    mov        eax,dword ptr [ebp-10]
 0056A7F4    call       @LStrLen
 0056A7F9    test       eax,eax
>0056A7FB    jns        0056A802
 0056A7FD    call       @BoundErr
 0056A802    push       eax
 0056A803    mov        eax,dword ptr [ebp-10]
 0056A806    call       @LStrToPChar
 0056A80B    push       eax
 0056A80C    mov        eax,dword ptr [ebp-14]
 0056A80F    call       @LStrToPChar
 0056A814    pop        edx
 0056A815    pop        ecx
 0056A816    call       AnsiStrLComp
 0056A81B    test       eax,eax
 0056A81D    sete       byte ptr [ebp-0A]
>0056A821    jmp        0056A855
 0056A823    imul       eax,ebx,0B
>0056A826    jno        0056A82D
 0056A828    call       @IntOver
 0056A82D    mov        edx,dword ptr [ebp-8]
 0056A830    lea        ecx,[edx+eax*4]
 0056A833    imul       eax,ebx,0B
>0056A836    jno        0056A83D
 0056A838    call       @IntOver
 0056A83D    mov        edx,dword ptr [ebp-4]
 0056A840    lea        edx,[edx+eax*4]
 0056A843    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A848    mov        eax,dword ptr [eax]
 0056A84A    mov        edi,dword ptr [eax]
 0056A84C    call       dword ptr [edi+20]
 0056A84F    test       eax,eax
 0056A851    sete       byte ptr [ebp-0A]
 0056A855    cmp        byte ptr [ebp-0A],0
>0056A859    je         0056A863
 0056A85B    inc        ebx
 0056A85C    dec        esi
<0056A85D    jne        0056A700
 0056A863    xor        eax,eax
 0056A865    pop        edx
 0056A866    pop        ecx
 0056A867    pop        ecx
 0056A868    mov        dword ptr fs:[eax],edx
 0056A86B    push       56A885
 0056A870    lea        eax,[ebp-1C]
 0056A873    mov        edx,4
 0056A878    call       @LStrArrayClr
 0056A87D    ret
<0056A87E    jmp        @HandleFinally
<0056A883    jmp        0056A870
 0056A885    mov        al,byte ptr [ebp-0A]
 0056A888    pop        edi
 0056A889    pop        esi
 0056A88A    pop        ebx
 0056A88B    mov        esp,ebp
 0056A88D    pop        ebp
 0056A88E    ret        4
*}
//end;

//0056A894
//procedure sub_0056A894(?:TObjectDynArray; ?:TZVariantDynArray; ?:IZResultSet; ?:?; ?:?);
//begin
{*
 0056A894    push       ebp
 0056A895    mov        ebp,esp
 0056A897    push       ecx
 0056A898    mov        ecx,36
 0056A89D    push       0
 0056A89F    push       0
 0056A8A1    dec        ecx
<0056A8A2    jne        0056A89D
 0056A8A4    xchg       ecx,dword ptr [ebp-4]
 0056A8A7    push       ebx
 0056A8A8    push       esi
 0056A8A9    push       edi
 0056A8AA    mov        dword ptr [ebp-8],ecx
 0056A8AD    mov        esi,edx
 0056A8AF    mov        dword ptr [ebp-4],eax
 0056A8B2    mov        eax,dword ptr [ebp-8]
 0056A8B5    call       @IntfAddRef
 0056A8BA    xor        eax,eax
 0056A8BC    push       ebp
 0056A8BD    push       56AE85
 0056A8C2    push       dword ptr fs:[eax]
 0056A8C5    mov        dword ptr fs:[eax],esp
 0056A8C8    mov        eax,dword ptr [ebp-4]
 0056A8CB    call       @DynArrayHigh
 0056A8D0    test       eax,eax
>0056A8D2    jl         0056ADD5
 0056A8D8    inc        eax
 0056A8D9    mov        dword ptr [ebp-0C],eax
 0056A8DC    xor        ebx,ebx
 0056A8DE    mov        eax,dword ptr [ebp-4]
 0056A8E1    test       eax,eax
>0056A8E3    je         0056A8EA
 0056A8E5    cmp        ebx,dword ptr [eax-4]
>0056A8E8    jb         0056A8EF
 0056A8EA    call       @BoundErr
 0056A8EF    mov        edi,dword ptr [eax+ebx*4]
 0056A8F2    imul       eax,ebx,0B
>0056A8F5    jno        0056A8FC
 0056A8F7    call       @IntOver
 0056A8FC    mov        edx,dword ptr [esi]
 0056A8FE    cmp        byte ptr [edx+eax*4],0
>0056A902    je         0056ADCB
 0056A908    lea        edx,[ebp-10]
 0056A90B    mov        eax,dword ptr [ebp-8]
 0056A90E    mov        ecx,dword ptr [eax]
 0056A910    call       dword ptr [ecx+0CC]
 0056A916    mov        eax,dword ptr [ebp-10]
 0056A919    push       eax
 0056A91A    mov        eax,edi
 0056A91C    mov        edx,dword ptr [eax]
 0056A91E    call       dword ptr [edx+7C]
 0056A921    mov        edx,eax
 0056A923    pop        eax
 0056A924    mov        ecx,dword ptr [eax]
 0056A926    call       dword ptr [ecx+48]
 0056A929    cmp        byte ptr [ebp+0C],0
>0056A92D    je         0056AAA1
 0056A933    cmp        al,0A
>0056A935    jne        0056AA24
 0056A93B    lea        eax,[ebp-3C]
 0056A93E    push       eax
 0056A93F    imul       eax,ebx,0B
>0056A942    jno        0056A949
 0056A944    call       @IntOver
 0056A949    mov        edx,dword ptr [esi]
 0056A94B    lea        edx,[edx+eax*4]
 0056A94E    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056A953    mov        eax,dword ptr [eax]
 0056A955    mov        cl,5
 0056A957    mov        edi,dword ptr [eax]
 0056A959    call       dword ptr [edi+14]
 0056A95C    lea        edx,[ebp-3C]
 0056A95F    imul       eax,ebx,0B
>0056A962    jno        0056A969
 0056A964    call       @IntOver
 0056A969    mov        ecx,dword ptr [esi]
 0056A96B    lea        eax,[ecx+eax*4]
 0056A96E    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056A974    call       @CopyRecord
 0056A979    cmp        byte ptr [ebp+8],0
>0056A97D    je         0056ADCB
 0056A983    imul       eax,ebx,0B
>0056A986    jno        0056A98D
 0056A988    call       @IntOver
 0056A98D    mov        edx,dword ptr [esi]
 0056A98F    cmp        byte ptr [edx+eax*4],4
>0056A993    jne        0056A9EF
 0056A995    imul       eax,ebx,0B
>0056A998    jno        0056A99F
 0056A99A    call       @IntOver
 0056A99F    mov        edx,dword ptr [esi]
 0056A9A1    mov        eax,dword ptr [edx+eax*4+14]
 0056A9A5    lea        edx,[ebp-40]
 0056A9A8    call       UpperCase
 0056A9AD    mov        edx,dword ptr [ebp-40]
 0056A9B0    imul       eax,ebx,0B
>0056A9B3    jno        0056A9BA
 0056A9B5    call       @IntOver
 0056A9BA    mov        ecx,dword ptr [esi]
 0056A9BC    lea        eax,[ecx+eax*4+14]
 0056A9C0    call       @LStrAsg
 0056A9C5    imul       eax,ebx,0B
>0056A9C8    jno        0056A9CF
 0056A9CA    call       @IntOver
 0056A9CF    mov        edx,dword ptr [esi]
 0056A9D1    lea        eax,[edx+eax*4+18]
 0056A9D5    imul       edx,ebx,0B
>0056A9D8    jno        0056A9DF
 0056A9DA    call       @IntOver
 0056A9DF    mov        ecx,dword ptr [esi]
 0056A9E1    mov        edx,dword ptr [ecx+edx*4+14]
 0056A9E5    call       @WStrFromLStr
>0056A9EA    jmp        0056ADCB
 0056A9EF    imul       eax,ebx,0B
>0056A9F2    jno        0056A9F9
 0056A9F4    call       @IntOver
 0056A9F9    mov        edx,dword ptr [esi]
 0056A9FB    mov        eax,dword ptr [edx+eax*4+18]
 0056A9FF    lea        edx,[ebp-44]
 0056AA02    call       WideUpperCase
 0056AA07    mov        edx,dword ptr [ebp-44]
 0056AA0A    imul       eax,ebx,0B
>0056AA0D    jno        0056AA14
 0056AA0F    call       @IntOver
 0056AA14    mov        ecx,dword ptr [esi]
 0056AA16    lea        eax,[ecx+eax*4+18]
 0056AA1A    call       @WStrAsg
>0056AA1F    jmp        0056ADCB
 0056AA24    lea        eax,[ebp-70]
 0056AA27    push       eax
 0056AA28    imul       eax,ebx,0B
>0056AA2B    jno        0056AA32
 0056AA2D    call       @IntOver
 0056AA32    mov        edx,dword ptr [esi]
 0056AA34    lea        edx,[edx+eax*4]
 0056AA37    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AA3C    mov        eax,dword ptr [eax]
 0056AA3E    mov        cl,4
 0056AA40    mov        edi,dword ptr [eax]
 0056AA42    call       dword ptr [edi+14]
 0056AA45    lea        edx,[ebp-70]
 0056AA48    imul       eax,ebx,0B
>0056AA4B    jno        0056AA52
 0056AA4D    call       @IntOver
 0056AA52    mov        ecx,dword ptr [esi]
 0056AA54    lea        eax,[ecx+eax*4]
 0056AA57    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056AA5D    call       @CopyRecord
 0056AA62    cmp        byte ptr [ebp+8],0
>0056AA66    je         0056ADCB
 0056AA6C    imul       eax,ebx,0B
>0056AA6F    jno        0056AA76
 0056AA71    call       @IntOver
 0056AA76    mov        edx,dword ptr [esi]
 0056AA78    mov        eax,dword ptr [edx+eax*4+14]
 0056AA7C    lea        edx,[ebp-74]
 0056AA7F    call       AnsiUpperCase
 0056AA84    mov        edx,dword ptr [ebp-74]
 0056AA87    imul       eax,ebx,0B
>0056AA8A    jno        0056AA91
 0056AA8C    call       @IntOver
 0056AA91    mov        ecx,dword ptr [esi]
 0056AA93    lea        eax,[ecx+eax*4+14]
 0056AA97    call       @LStrAsg
>0056AA9C    jmp        0056ADCB
 0056AAA1    and        eax,7F
 0056AAA4    cmp        eax,0E
>0056AAA7    ja         0056AD05
 0056AAAD    mov        al,byte ptr [eax+56AABA]
 0056AAB3    jmp        dword ptr [eax*4+56AAC9]
 0056AAB3    db         0
 0056AAB3    db         1
 0056AAB3    db         2
 0056AAB3    db         2
 0056AAB3    db         2
 0056AAB3    db         2
 0056AAB3    db         3
 0056AAB3    db         3
 0056AAB3    db         3
 0056AAB3    db         0
 0056AAB3    db         4
 0056AAB3    db         0
 0056AAB3    db         5
 0056AAB3    db         5
 0056AAB3    db         5
 0056AAB3    dd         56AD05
 0056AAB3    dd         56AAE1
 0056AAB3    dd         56AB2A
 0056AAB3    dd         56AB73
 0056AAB3    dd         56ABBC
 0056AAB3    dd         56ACBC
 0056AAE1    lea        eax,[ebp-0A0]
 0056AAE7    push       eax
 0056AAE8    imul       eax,ebx,0B
>0056AAEB    jno        0056AAF2
 0056AAED    call       @IntOver
 0056AAF2    mov        edx,dword ptr [esi]
 0056AAF4    lea        edx,[edx+eax*4]
 0056AAF7    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AAFC    mov        eax,dword ptr [eax]
 0056AAFE    mov        cl,1
 0056AB00    mov        edi,dword ptr [eax]
 0056AB02    call       dword ptr [edi+14]
 0056AB05    lea        edx,[ebp-0A0]
 0056AB0B    imul       eax,ebx,0B
>0056AB0E    jno        0056AB15
 0056AB10    call       @IntOver
 0056AB15    mov        ecx,dword ptr [esi]
 0056AB17    lea        eax,[ecx+eax*4]
 0056AB1A    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056AB20    call       @CopyRecord
>0056AB25    jmp        0056ADCB
 0056AB2A    lea        eax,[ebp-0CC]
 0056AB30    push       eax
 0056AB31    imul       eax,ebx,0B
>0056AB34    jno        0056AB3B
 0056AB36    call       @IntOver
 0056AB3B    mov        edx,dword ptr [esi]
 0056AB3D    lea        edx,[edx+eax*4]
 0056AB40    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AB45    mov        eax,dword ptr [eax]
 0056AB47    mov        cl,2
 0056AB49    mov        edi,dword ptr [eax]
 0056AB4B    call       dword ptr [edi+14]
 0056AB4E    lea        edx,[ebp-0CC]
 0056AB54    imul       eax,ebx,0B
>0056AB57    jno        0056AB5E
 0056AB59    call       @IntOver
 0056AB5E    mov        ecx,dword ptr [esi]
 0056AB60    lea        eax,[ecx+eax*4]
 0056AB63    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056AB69    call       @CopyRecord
>0056AB6E    jmp        0056ADCB
 0056AB73    lea        eax,[ebp-0F8]
 0056AB79    push       eax
 0056AB7A    imul       eax,ebx,0B
>0056AB7D    jno        0056AB84
 0056AB7F    call       @IntOver
 0056AB84    mov        edx,dword ptr [esi]
 0056AB86    lea        edx,[edx+eax*4]
 0056AB89    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AB8E    mov        eax,dword ptr [eax]
 0056AB90    mov        cl,3
 0056AB92    mov        edi,dword ptr [eax]
 0056AB94    call       dword ptr [edi+14]
 0056AB97    lea        edx,[ebp-0F8]
 0056AB9D    imul       eax,ebx,0B
>0056ABA0    jno        0056ABA7
 0056ABA2    call       @IntOver
 0056ABA7    mov        ecx,dword ptr [esi]
 0056ABA9    lea        eax,[ecx+eax*4]
 0056ABAC    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056ABB2    call       @CopyRecord
>0056ABB7    jmp        0056ADCB
 0056ABBC    cmp        byte ptr [ebp+8],0
>0056ABC0    je         0056AC73
 0056ABC6    imul       eax,ebx,0B
>0056ABC9    jno        0056ABD0
 0056ABCB    call       @IntOver
 0056ABD0    mov        edx,dword ptr [esi]
 0056ABD2    cmp        byte ptr [edx+eax*4],4
>0056ABD6    jne        0056AC38
 0056ABD8    imul       eax,ebx,0B
>0056ABDB    jno        0056ABE2
 0056ABDD    call       @IntOver
 0056ABE2    mov        edx,dword ptr [esi]
 0056ABE4    mov        eax,dword ptr [edx+eax*4+14]
 0056ABE8    lea        edx,[ebp-0FC]
 0056ABEE    call       UpperCase
 0056ABF3    mov        edx,dword ptr [ebp-0FC]
 0056ABF9    imul       eax,ebx,0B
>0056ABFC    jno        0056AC03
 0056ABFE    call       @IntOver
 0056AC03    mov        ecx,dword ptr [esi]
 0056AC05    lea        eax,[ecx+eax*4+14]
 0056AC09    call       @LStrAsg
 0056AC0E    imul       eax,ebx,0B
>0056AC11    jno        0056AC18
 0056AC13    call       @IntOver
 0056AC18    mov        edx,dword ptr [esi]
 0056AC1A    lea        eax,[edx+eax*4+18]
 0056AC1E    imul       edx,ebx,0B
>0056AC21    jno        0056AC28
 0056AC23    call       @IntOver
 0056AC28    mov        ecx,dword ptr [esi]
 0056AC2A    mov        edx,dword ptr [ecx+edx*4+14]
 0056AC2E    call       @WStrFromLStr
>0056AC33    jmp        0056ADCB
 0056AC38    imul       eax,ebx,0B
>0056AC3B    jno        0056AC42
 0056AC3D    call       @IntOver
 0056AC42    mov        edx,dword ptr [esi]
 0056AC44    mov        eax,dword ptr [edx+eax*4+18]
 0056AC48    lea        edx,[ebp-100]
 0056AC4E    call       WideUpperCase
 0056AC53    mov        edx,dword ptr [ebp-100]
 0056AC59    imul       eax,ebx,0B
>0056AC5C    jno        0056AC63
 0056AC5E    call       @IntOver
 0056AC63    mov        ecx,dword ptr [esi]
 0056AC65    lea        eax,[ecx+eax*4+18]
 0056AC69    call       @WStrAsg
>0056AC6E    jmp        0056ADCB
 0056AC73    lea        eax,[ebp-12C]
 0056AC79    push       eax
 0056AC7A    imul       eax,ebx,0B
>0056AC7D    jno        0056AC84
 0056AC7F    call       @IntOver
 0056AC84    mov        edx,dword ptr [esi]
 0056AC86    lea        edx,[edx+eax*4]
 0056AC89    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AC8E    mov        eax,dword ptr [eax]
 0056AC90    mov        cl,5
 0056AC92    mov        edi,dword ptr [eax]
 0056AC94    call       dword ptr [edi+14]
 0056AC97    lea        edx,[ebp-12C]
 0056AC9D    imul       eax,ebx,0B
>0056ACA0    jno        0056ACA7
 0056ACA2    call       @IntOver
 0056ACA7    mov        ecx,dword ptr [esi]
 0056ACA9    lea        eax,[ecx+eax*4]
 0056ACAC    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056ACB2    call       @CopyRecord
>0056ACB7    jmp        0056ADCB
 0056ACBC    lea        eax,[ebp-158]
 0056ACC2    push       eax
 0056ACC3    imul       eax,ebx,0B
>0056ACC6    jno        0056ACCD
 0056ACC8    call       @IntOver
 0056ACCD    mov        edx,dword ptr [esi]
 0056ACCF    lea        edx,[edx+eax*4]
 0056ACD2    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056ACD7    mov        eax,dword ptr [eax]
 0056ACD9    mov        cl,6
 0056ACDB    mov        edi,dword ptr [eax]
 0056ACDD    call       dword ptr [edi+14]
 0056ACE0    lea        edx,[ebp-158]
 0056ACE6    imul       eax,ebx,0B
>0056ACE9    jno        0056ACF0
 0056ACEB    call       @IntOver
 0056ACF0    mov        ecx,dword ptr [esi]
 0056ACF2    lea        eax,[ecx+eax*4]
 0056ACF5    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056ACFB    call       @CopyRecord
>0056AD00    jmp        0056ADCB
 0056AD05    cmp        byte ptr [ebp+8],0
>0056AD09    je         0056AD87
 0056AD0B    lea        eax,[ebp-184]
 0056AD11    push       eax
 0056AD12    imul       eax,ebx,0B
>0056AD15    jno        0056AD1C
 0056AD17    call       @IntOver
 0056AD1C    mov        edx,dword ptr [esi]
 0056AD1E    lea        edx,[edx+eax*4]
 0056AD21    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056AD26    mov        eax,dword ptr [eax]
 0056AD28    mov        cl,4
 0056AD2A    mov        edi,dword ptr [eax]
 0056AD2C    call       dword ptr [edi+14]
 0056AD2F    lea        edx,[ebp-184]
 0056AD35    imul       eax,ebx,0B
>0056AD38    jno        0056AD3F
 0056AD3A    call       @IntOver
 0056AD3F    mov        ecx,dword ptr [esi]
 0056AD41    lea        eax,[ecx+eax*4]
 0056AD44    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056AD4A    call       @CopyRecord
 0056AD4F    imul       eax,ebx,0B
>0056AD52    jno        0056AD59
 0056AD54    call       @IntOver
 0056AD59    mov        edx,dword ptr [esi]
 0056AD5B    mov        eax,dword ptr [edx+eax*4+14]
 0056AD5F    lea        edx,[ebp-188]
 0056AD65    call       AnsiUpperCase
 0056AD6A    mov        edx,dword ptr [ebp-188]
 0056AD70    imul       eax,ebx,0B
>0056AD73    jno        0056AD7A
 0056AD75    call       @IntOver
 0056AD7A    mov        ecx,dword ptr [esi]
 0056AD7C    lea        eax,[ecx+eax*4+14]
 0056AD80    call       @LStrAsg
>0056AD85    jmp        0056ADCB
 0056AD87    lea        eax,[ebp-1B4]
 0056AD8D    push       eax
 0056AD8E    imul       eax,ebx,0B
>0056AD91    jno        0056AD98
 0056AD93    call       @IntOver
 0056AD98    mov        edx,dword ptr [esi]
 0056AD9A    lea        edx,[edx+eax*4]
 0056AD9D    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0056ADA2    mov        eax,dword ptr [eax]
 0056ADA4    mov        cl,4
 0056ADA6    mov        edi,dword ptr [eax]
 0056ADA8    call       dword ptr [edi+14]
 0056ADAB    lea        edx,[ebp-1B4]
 0056ADB1    imul       eax,ebx,0B
>0056ADB4    jno        0056ADBB
 0056ADB6    call       @IntOver
 0056ADBB    mov        ecx,dword ptr [esi]
 0056ADBD    lea        eax,[ecx+eax*4]
 0056ADC0    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0056ADC6    call       @CopyRecord
 0056ADCB    inc        ebx
 0056ADCC    dec        dword ptr [ebp-0C]
<0056ADCF    jne        0056A8DE
 0056ADD5    xor        eax,eax
 0056ADD7    pop        edx
 0056ADD8    pop        ecx
 0056ADD9    pop        ecx
 0056ADDA    mov        dword ptr fs:[eax],edx
 0056ADDD    push       56AE8F
 0056ADE2    lea        eax,[ebp-1B4]
 0056ADE8    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056ADEE    call       @FinalizeRecord
 0056ADF3    lea        eax,[ebp-188]
 0056ADF9    call       @LStrClr
 0056ADFE    lea        eax,[ebp-184]
 0056AE04    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056AE0A    mov        ecx,3
 0056AE0F    call       @FinalizeArray
 0056AE14    lea        eax,[ebp-100]
 0056AE1A    call       @WStrClr
 0056AE1F    lea        eax,[ebp-0FC]
 0056AE25    call       @LStrClr
 0056AE2A    lea        eax,[ebp-0F8]
 0056AE30    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056AE36    mov        ecx,3
 0056AE3B    call       @FinalizeArray
 0056AE40    lea        eax,[ebp-74]
 0056AE43    call       @LStrClr
 0056AE48    lea        eax,[ebp-70]
 0056AE4B    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056AE51    call       @FinalizeRecord
 0056AE56    lea        eax,[ebp-44]
 0056AE59    call       @WStrClr
 0056AE5E    lea        eax,[ebp-40]
 0056AE61    call       @LStrClr
 0056AE66    lea        eax,[ebp-3C]
 0056AE69    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056AE6F    call       @FinalizeRecord
 0056AE74    lea        eax,[ebp-10]
 0056AE77    call       @IntfClear
 0056AE7C    lea        eax,[ebp-8]
 0056AE7F    call       @IntfClear
 0056AE84    ret
<0056AE85    jmp        @HandleFinally
<0056AE8A    jmp        0056ADE2
 0056AE8F    pop        edi
 0056AE90    pop        esi
 0056AE91    pop        ebx
 0056AE92    mov        esp,ebp
 0056AE94    pop        ebp
 0056AE95    ret        8
*}
//end;

//0056AE98
//function sub_0056AE98(?:TObjectDynArray; ?:TZVariantDynArray; ?:IZResultSet; ?:?; ?:?):?;
//begin
{*
 0056AE98    push       ebp
 0056AE99    mov        ebp,esp
 0056AE9B    push       ecx
 0056AE9C    mov        ecx,7
 0056AEA1    push       0
 0056AEA3    push       0
 0056AEA5    dec        ecx
<0056AEA6    jne        0056AEA1
 0056AEA8    xchg       ecx,dword ptr [ebp-4]
 0056AEAB    push       ebx
 0056AEAC    push       esi
 0056AEAD    mov        dword ptr [ebp-0C],ecx
 0056AEB0    mov        dword ptr [ebp-8],edx
 0056AEB3    mov        dword ptr [ebp-4],eax
 0056AEB6    mov        eax,dword ptr [ebp-0C]
 0056AEB9    call       @IntfAddRef
 0056AEBE    xor        eax,eax
 0056AEC0    push       ebp
 0056AEC1    push       56B238
 0056AEC6    push       dword ptr fs:[eax]
 0056AEC9    mov        dword ptr fs:[eax],esp
 0056AECC    mov        bl,1
 0056AECE    mov        eax,dword ptr [ebp-8]
 0056AED1    call       @DynArrayHigh
 0056AED6    test       eax,eax
>0056AED8    jl         0056B1E3
 0056AEDE    inc        eax
 0056AEDF    mov        dword ptr [ebp-18],eax
 0056AEE2    xor        esi,esi
 0056AEE4    mov        eax,dword ptr [ebp-4]
 0056AEE7    test       eax,eax
>0056AEE9    je         0056AEF0
 0056AEEB    cmp        esi,dword ptr [eax-4]
>0056AEEE    jb         0056AEF5
 0056AEF0    call       @BoundErr
 0056AEF5    mov        eax,dword ptr [eax+esi*4]
 0056AEF8    mov        edx,dword ptr [eax]
 0056AEFA    call       dword ptr [edx+7C]
 0056AEFD    mov        ebx,eax
 0056AEFF    imul       eax,esi,0B
>0056AF02    jno        0056AF09
 0056AF04    call       @IntOver
 0056AF09    mov        edx,dword ptr [ebp-8]
 0056AF0C    cmp        byte ptr [edx+eax*4],0
>0056AF10    jne        0056AF2B
 0056AF12    mov        edx,ebx
 0056AF14    mov        eax,dword ptr [ebp-0C]
 0056AF17    mov        ecx,dword ptr [eax]
 0056AF19    call       dword ptr [ecx+18]
 0056AF1C    mov        ebx,eax
 0056AF1E    test       bl,bl
>0056AF20    je         0056B1E3
>0056AF26    jmp        0056B1D9
 0056AF2B    lea        edx,[ebp-1C]
 0056AF2E    mov        eax,dword ptr [ebp-0C]
 0056AF31    mov        ecx,dword ptr [eax]
 0056AF33    call       dword ptr [ecx+0CC]
 0056AF39    mov        eax,dword ptr [ebp-1C]
 0056AF3C    mov        edx,ebx
 0056AF3E    mov        ecx,dword ptr [eax]
 0056AF40    call       dword ptr [ecx+48]
 0056AF43    cmp        byte ptr [ebp+0C],0
>0056AF47    je         0056AFFA
 0056AF4D    cmp        al,0A
>0056AF4F    jne        0056AF84
 0056AF51    lea        eax,[ebp-10]
 0056AF54    imul       edx,esi,0B
>0056AF57    jno        0056AF5E
 0056AF59    call       @IntOver
 0056AF5E    mov        ecx,dword ptr [ebp-8]
 0056AF61    mov        edx,dword ptr [ecx+edx*4+18]
 0056AF65    call       @LStrFromWStr
 0056AF6A    lea        ecx,[ebp-20]
 0056AF6D    mov        edx,ebx
 0056AF6F    mov        eax,dword ptr [ebp-0C]
 0056AF72    mov        ebx,dword ptr [eax]
 0056AF74    call       dword ptr [ebx+24]
 0056AF77    mov        edx,dword ptr [ebp-20]
 0056AF7A    lea        eax,[ebp-14]
 0056AF7D    call       @LStrFromWStr
>0056AF82    jmp        0056AFAA
 0056AF84    lea        eax,[ebp-10]
 0056AF87    imul       edx,esi,0B
>0056AF8A    jno        0056AF91
 0056AF8C    call       @IntOver
 0056AF91    mov        ecx,dword ptr [ebp-8]
 0056AF94    mov        edx,dword ptr [ecx+edx*4+14]
 0056AF98    call       @LStrLAsg
 0056AF9D    lea        ecx,[ebp-14]
 0056AFA0    mov        edx,ebx
 0056AFA2    mov        eax,dword ptr [ebp-0C]
 0056AFA5    mov        ebx,dword ptr [eax]
 0056AFA7    call       dword ptr [ebx+20]
 0056AFAA    cmp        byte ptr [ebp+8],0
>0056AFAE    je         0056AFC6
 0056AFB0    lea        edx,[ebp-24]
 0056AFB3    mov        eax,dword ptr [ebp-14]
 0056AFB6    call       AnsiUpperCase
 0056AFBB    mov        edx,dword ptr [ebp-24]
 0056AFBE    lea        eax,[ebp-14]
 0056AFC1    call       @LStrLAsg
 0056AFC6    mov        eax,dword ptr [ebp-10]
 0056AFC9    call       @LStrLen
 0056AFCE    test       eax,eax
>0056AFD0    jns        0056AFD7
 0056AFD2    call       @BoundErr
 0056AFD7    push       eax
 0056AFD8    mov        eax,dword ptr [ebp-10]
 0056AFDB    call       @LStrToPChar
 0056AFE0    push       eax
 0056AFE1    mov        eax,dword ptr [ebp-14]
 0056AFE4    call       @LStrToPChar
 0056AFE9    pop        edx
 0056AFEA    pop        ecx
 0056AFEB    call       AnsiStrLComp
 0056AFF0    test       eax,eax
 0056AFF2    sete       bl
>0056AFF5    jmp        0056B1BD
 0056AFFA    and        eax,7F
 0056AFFD    cmp        eax,0E
>0056B000    ja         0056B154
 0056B006    mov        al,byte ptr [eax+56B013]
 0056B00C    jmp        dword ptr [eax*4+56B022]
 0056B00C    db         0
 0056B00C    db         1
 0056B00C    db         2
 0056B00C    db         2
 0056B00C    db         2
 0056B00C    db         2
 0056B00C    db         3
 0056B00C    db         3
 0056B00C    db         3
 0056B00C    db         0
 0056B00C    db         5
 0056B00C    db         0
 0056B00C    db         4
 0056B00C    db         4
 0056B00C    db         4
 0056B00C    dd         56B154
 0056B00C    dd         56B03A
 0056B00C    dd         56B05F
 0056B00C    dd         56B08A
 0056B00C    dd         56B0BE
 0056B00C    dd         56B0E6
 0056B03A    mov        edx,ebx
 0056B03C    mov        eax,dword ptr [ebp-0C]
 0056B03F    mov        ecx,dword ptr [eax]
 0056B041    call       dword ptr [ecx+28]
 0056B044    imul       edx,esi,0B
>0056B047    jno        0056B04E
 0056B049    call       @IntOver
 0056B04E    mov        ecx,dword ptr [ebp-8]
 0056B051    cmp        al,byte ptr [ecx+edx*4+1]
 0056B055    sete       al
 0056B058    mov        ebx,eax
>0056B05A    jmp        0056B1BD
 0056B05F    mov        edx,ebx
 0056B061    mov        eax,dword ptr [ebp-0C]
 0056B064    mov        ecx,dword ptr [eax]
 0056B066    call       dword ptr [ecx+38]
 0056B069    imul       ecx,esi,0B
>0056B06C    jno        0056B073
 0056B06E    call       @IntOver
 0056B073    mov        ebx,dword ptr [ebp-8]
 0056B076    cmp        edx,dword ptr [ebx+ecx*4+6]
>0056B07A    jne        0056B080
 0056B07C    cmp        eax,dword ptr [ebx+ecx*4+2]
 0056B080    sete       al
 0056B083    mov        ebx,eax
>0056B085    jmp        0056B1BD
 0056B08A    mov        edx,ebx
 0056B08C    mov        eax,dword ptr [ebp-0C]
 0056B08F    mov        ecx,dword ptr [eax]
 0056B091    call       dword ptr [ecx+44]
 0056B094    imul       eax,esi,0B
>0056B097    jno        0056B09E
 0056B099    call       @IntOver
 0056B09E    mov        edx,dword ptr [ebp-8]
 0056B0A1    fld        tbyte ptr [edx+eax*4+0A]
 0056B0A5    fsubrp     st(1),st
 0056B0A7    fabs
 0056B0A9    fld        tbyte ptr ds:[56B24C]; 1E-5:Extended
 0056B0AF    fcompp
 0056B0B1    fnstsw     al
 0056B0B3    sahf
 0056B0B4    seta       al
 0056B0B7    mov        ebx,eax
>0056B0B9    jmp        0056B1BD
 0056B0BE    mov        edx,ebx
 0056B0C0    mov        eax,dword ptr [ebp-0C]
 0056B0C3    mov        ecx,dword ptr [eax]
 0056B0C5    call       dword ptr [ecx+54]
 0056B0C8    imul       eax,esi,0B
>0056B0CB    jno        0056B0D2
 0056B0CD    call       @IntOver
 0056B0D2    mov        edx,dword ptr [ebp-8]
 0056B0D5    fcomp      qword ptr [edx+eax*4+1C]
 0056B0D9    fnstsw     al
 0056B0DB    sahf
 0056B0DC    sete       al
 0056B0DF    mov        ebx,eax
>0056B0E1    jmp        0056B1BD
 0056B0E6    cmp        byte ptr [ebp+8],0
>0056B0EA    je         0056B127
 0056B0EC    lea        ecx,[ebp-2C]
 0056B0EF    mov        edx,ebx
 0056B0F1    mov        eax,dword ptr [ebp-0C]
 0056B0F4    mov        ebx,dword ptr [eax]
 0056B0F6    call       dword ptr [ebx+24]
 0056B0F9    mov        eax,dword ptr [ebp-2C]
 0056B0FC    lea        edx,[ebp-28]
 0056B0FF    call       WideUpperCase
 0056B104    mov        edx,dword ptr [ebp-28]
 0056B107    imul       eax,esi,0B
>0056B10A    jno        0056B111
 0056B10C    call       @IntOver
 0056B111    mov        ecx,dword ptr [ebp-8]
 0056B114    mov        eax,dword ptr [ecx+eax*4+18]
 0056B118    call       @WStrCmp
 0056B11D    sete       al
 0056B120    mov        ebx,eax
>0056B122    jmp        0056B1BD
 0056B127    lea        ecx,[ebp-30]
 0056B12A    mov        edx,ebx
 0056B12C    mov        eax,dword ptr [ebp-0C]
 0056B12F    mov        ebx,dword ptr [eax]
 0056B131    call       dword ptr [ebx+24]
 0056B134    mov        edx,dword ptr [ebp-30]
 0056B137    imul       eax,esi,0B
>0056B13A    jno        0056B141
 0056B13C    call       @IntOver
 0056B141    mov        ecx,dword ptr [ebp-8]
 0056B144    mov        eax,dword ptr [ecx+eax*4+18]
 0056B148    call       @WStrCmp
 0056B14D    sete       al
 0056B150    mov        ebx,eax
>0056B152    jmp        0056B1BD
 0056B154    cmp        byte ptr [ebp+8],0
>0056B158    je         0056B192
 0056B15A    lea        ecx,[ebp-38]
 0056B15D    mov        edx,ebx
 0056B15F    mov        eax,dword ptr [ebp-0C]
 0056B162    mov        ebx,dword ptr [eax]
 0056B164    call       dword ptr [ebx+20]
 0056B167    mov        eax,dword ptr [ebp-38]
 0056B16A    lea        edx,[ebp-34]
 0056B16D    call       AnsiUpperCase
 0056B172    mov        edx,dword ptr [ebp-34]
 0056B175    imul       eax,esi,0B
>0056B178    jno        0056B17F
 0056B17A    call       @IntOver
 0056B17F    mov        ecx,dword ptr [ebp-8]
 0056B182    mov        eax,dword ptr [ecx+eax*4+14]
 0056B186    call       @LStrCmp
 0056B18B    sete       al
 0056B18E    mov        ebx,eax
>0056B190    jmp        0056B1BD
 0056B192    lea        ecx,[ebp-3C]
 0056B195    mov        edx,ebx
 0056B197    mov        eax,dword ptr [ebp-0C]
 0056B19A    mov        ebx,dword ptr [eax]
 0056B19C    call       dword ptr [ebx+20]
 0056B19F    mov        edx,dword ptr [ebp-3C]
 0056B1A2    imul       eax,esi,0B
>0056B1A5    jno        0056B1AC
 0056B1A7    call       @IntOver
 0056B1AC    mov        ecx,dword ptr [ebp-8]
 0056B1AF    mov        eax,dword ptr [ecx+eax*4+14]
 0056B1B3    call       @LStrCmp
 0056B1B8    sete       al
 0056B1BB    mov        ebx,eax
 0056B1BD    test       bl,bl
>0056B1BF    je         0056B1CD
 0056B1C1    mov        eax,dword ptr [ebp-0C]
 0056B1C4    mov        edx,dword ptr [eax]
 0056B1C6    call       dword ptr [edx+14]
 0056B1C9    test       al,al
>0056B1CB    je         0056B1D1
 0056B1CD    xor        eax,eax
>0056B1CF    jmp        0056B1D3
 0056B1D1    mov        al,1
 0056B1D3    mov        ebx,eax
 0056B1D5    test       bl,bl
>0056B1D7    je         0056B1E3
 0056B1D9    inc        esi
 0056B1DA    dec        dword ptr [ebp-18]
<0056B1DD    jne        0056AEE4
 0056B1E3    xor        eax,eax
 0056B1E5    pop        edx
 0056B1E6    pop        ecx
 0056B1E7    pop        ecx
 0056B1E8    mov        dword ptr fs:[eax],edx
 0056B1EB    push       56B23F
 0056B1F0    lea        eax,[ebp-3C]
 0056B1F3    mov        edx,3
 0056B1F8    call       @LStrArrayClr
 0056B1FD    lea        eax,[ebp-30]
 0056B200    mov        edx,3
 0056B205    call       @WStrArrayClr
 0056B20A    lea        eax,[ebp-24]
 0056B20D    call       @LStrClr
 0056B212    lea        eax,[ebp-20]
 0056B215    call       @WStrClr
 0056B21A    lea        eax,[ebp-1C]
 0056B21D    call       @IntfClear
 0056B222    lea        eax,[ebp-14]
 0056B225    mov        edx,2
 0056B22A    call       @LStrArrayClr
 0056B22F    lea        eax,[ebp-0C]
 0056B232    call       @IntfClear
 0056B237    ret
<0056B238    jmp        @HandleFinally
<0056B23D    jmp        0056B1F0
 0056B23F    mov        eax,ebx
 0056B241    pop        esi
 0056B242    pop        ebx
 0056B243    mov        esp,ebp
 0056B245    pop        ebp
 0056B246    ret        8
*}
//end;

//0056B258
//procedure sub_0056B258(?:TFields; ?:AnsiString);
//begin
{*
 0056B258    push       ebp
 0056B259    mov        ebp,esp
 0056B25B    add        esp,0FFFFFFF8
 0056B25E    push       ebx
 0056B25F    push       esi
 0056B260    push       edi
 0056B261    xor        ecx,ecx
 0056B263    mov        dword ptr [ebp-8],ecx
 0056B266    mov        dword ptr [ebp-4],edx
 0056B269    mov        esi,eax
 0056B26B    xor        eax,eax
 0056B26D    push       ebp
 0056B26E    push       56B35C
 0056B273    push       dword ptr fs:[eax]
 0056B276    mov        dword ptr fs:[eax],esp
 0056B279    mov        eax,dword ptr [ebp-4]
 0056B27C    call       @LStrClr
 0056B281    mov        eax,esi
 0056B283    call       TFields.GetCount
 0056B288    mov        edi,eax
 0056B28A    sub        edi,1
>0056B28D    jno        0056B294
 0056B28F    call       @IntOver
 0056B294    test       edi,edi
>0056B296    jl         0056B346
 0056B29C    inc        edi
 0056B29D    xor        ebx,ebx
 0056B29F    mov        edx,ebx
 0056B2A1    mov        eax,esi
 0056B2A3    call       TFields.GetField
 0056B2A8    cmp        byte ptr [eax+42],0; TField.FieldKind:TFieldKind
>0056B2AC    jne        0056B33E
 0056B2B2    mov        edx,ebx
 0056B2B4    mov        eax,esi
 0056B2B6    call       TFields.GetField
 0056B2BB    mov        al,byte ptr [eax+40]; TField.FDataType:TFieldType
 0056B2BE    sub        al,0C
>0056B2C0    je         0056B33E
 0056B2C2    add        al,0FD
 0056B2C4    sub        al,2
>0056B2C6    jb         0056B33E
 0056B2C8    mov        eax,dword ptr [ebp-4]
 0056B2CB    cmp        dword ptr [eax],0
>0056B2CE    je         0056B2E0
 0056B2D0    mov        eax,dword ptr [ebp-4]
 0056B2D3    mov        edx,56B374; ','
 0056B2D8    call       @LStrCat
 0056B2DD    mov        eax,dword ptr [ebp-4]
 0056B2E0    mov        edx,ebx
 0056B2E2    mov        eax,esi
 0056B2E4    call       TFields.GetField
 0056B2E9    mov        edx,dword ptr [eax+38]; TField.?f38:String
 0056B2EC    lea        eax,[ebp-8]
 0056B2EF    call       @LStrLAsg
 0056B2F4    mov        edx,dword ptr [ebp-8]
 0056B2F7    mov        eax,56B380; ' '
 0056B2FC    call       @LStrPos
 0056B301    test       eax,eax
>0056B303    jg         0056B316
 0056B305    mov        edx,dword ptr [ebp-8]
 0056B308    mov        eax,56B38C; '-'
 0056B30D    call       @LStrPos
 0056B312    test       eax,eax
>0056B314    jle        0056B330
 0056B316    push       56B398; '\"'
 0056B31B    push       dword ptr [ebp-8]
 0056B31E    push       56B398; '\"'
 0056B323    lea        eax,[ebp-8]
 0056B326    mov        edx,3
 0056B32B    call       @LStrCatN
 0056B330    mov        eax,dword ptr [ebp-4]
 0056B333    mov        edx,dword ptr [ebp-8]
 0056B336    call       @LStrCat
 0056B33B    mov        eax,dword ptr [ebp-4]
 0056B33E    inc        ebx
 0056B33F    dec        edi
<0056B340    jne        0056B29F
 0056B346    xor        eax,eax
 0056B348    pop        edx
 0056B349    pop        ecx
 0056B34A    pop        ecx
 0056B34B    mov        dword ptr fs:[eax],edx
 0056B34E    push       56B363
 0056B353    lea        eax,[ebp-8]
 0056B356    call       @LStrClr
 0056B35B    ret
<0056B35C    jmp        @HandleFinally
<0056B361    jmp        0056B353
 0056B363    pop        edi
 0056B364    pop        esi
 0056B365    pop        ebx
 0056B366    pop        ecx
 0056B367    pop        ecx
 0056B368    pop        ebp
 0056B369    ret
*}
//end;

//0056B39C
//procedure sub_0056B39C(?:?; ?:Pointer; ?:?; ?:?);
//begin
{*
 0056B39C    push       ebp
 0056B39D    mov        ebp,esp
 0056B39F    add        esp,0FFFFFFF8
 0056B3A2    push       ebx
 0056B3A3    push       esi
 0056B3A4    mov        esi,edx
 0056B3A6    mov        ebx,eax
 0056B3A8    push       dword ptr [ebp+0C]
 0056B3AB    push       dword ptr [ebp+8]
 0056B3AE    lea        eax,[ebp-8]
 0056B3B1    call       DateTimeToTimeStamp
 0056B3B6    sub        bl,9
>0056B3B9    je         0056B3C1
 0056B3BB    dec        bl
>0056B3BD    je         0056B3C8
>0056B3BF    jmp        0056B3CF
 0056B3C1    mov        eax,dword ptr [ebp-4]
 0056B3C4    mov        dword ptr [esi],eax
>0056B3C6    jmp        0056B3DA
 0056B3C8    mov        eax,dword ptr [ebp-8]
 0056B3CB    mov        dword ptr [esi],eax
>0056B3CD    jmp        0056B3DA
 0056B3CF    lea        eax,[ebp-8]
 0056B3D2    call       TimeStampToMSecs
 0056B3D7    fstp       qword ptr [esi]
 0056B3D9    wait
 0056B3DA    pop        esi
 0056B3DB    pop        ebx
 0056B3DC    pop        ecx
 0056B3DD    pop        ecx
 0056B3DE    pop        ebp
 0056B3DF    ret        8
*}
//end;

//0056B3E4
//procedure sub_0056B3E4(?:?; ?:?);
//begin
{*
 0056B3E4    push       ebp
 0056B3E5    mov        ebp,esp
 0056B3E7    add        esp,0FFFFFFF0
 0056B3EA    push       ebx
 0056B3EB    push       esi
 0056B3EC    push       edi
 0056B3ED    mov        ebx,edx
 0056B3EF    sub        al,9
>0056B3F1    je         0056B3F9
 0056B3F3    dec        al
>0056B3F5    je         0056B405
>0056B3F7    jmp        0056B413
 0056B3F9    xor        eax,eax
 0056B3FB    mov        dword ptr [ebp-10],eax
 0056B3FE    mov        eax,dword ptr [ebx]
 0056B400    mov        dword ptr [ebp-0C],eax
>0056B403    jmp        0056B450
 0056B405    mov        eax,dword ptr [ebx]
 0056B407    mov        dword ptr [ebp-10],eax
 0056B40A    mov        dword ptr [ebp-0C],0A955A
>0056B411    jmp        0056B450
 0056B413    xor        eax,eax
 0056B415    push       ebp
 0056B416    push       56B43C
 0056B41B    push       dword ptr fs:[eax]
 0056B41E    mov        dword ptr fs:[eax],esp
 0056B421    fld        qword ptr [ebx]
 0056B423    add        esp,0FFFFFFF8
 0056B426    fistp      qword ptr [esp]
 0056B429    wait
 0056B42A    lea        eax,[ebp-10]
 0056B42D    call       MSecsToTimeStamp
 0056B432    xor        eax,eax
 0056B434    pop        edx
 0056B435    pop        ecx
 0056B436    pop        ecx
 0056B437    mov        dword ptr fs:[eax],edx
>0056B43A    jmp        0056B450
<0056B43C    jmp        @HandleAnyException
 0056B441    xor        eax,eax
 0056B443    mov        dword ptr [ebp-10],eax
 0056B446    xor        eax,eax
 0056B448    mov        dword ptr [ebp-0C],eax
 0056B44B    call       @DoneExcept
 0056B450    lea        eax,[ebp-10]
 0056B453    call       TimeStampToDateTime
 0056B458    fstp       qword ptr [ebp-8]
 0056B45B    wait
 0056B45C    fld        qword ptr [ebp-8]
 0056B45F    pop        edi
 0056B460    pop        esi
 0056B461    pop        ebx
 0056B462    mov        esp,ebp
 0056B464    pop        ebp
 0056B465    ret
*}
//end;

//0056B468
//function sub_0056B468(?:Pointer; ?:IZResultSet; ?:Pointer):?;
//begin
{*
 0056B468    push       ebp
 0056B469    mov        ebp,esp
 0056B46B    push       ecx
 0056B46C    mov        ecx,9
 0056B471    push       0
 0056B473    push       0
 0056B475    dec        ecx
<0056B476    jne        0056B471
 0056B478    xchg       ecx,dword ptr [ebp-4]
 0056B47B    push       ebx
 0056B47C    push       esi
 0056B47D    mov        dword ptr [ebp-8],ecx
 0056B480    mov        dword ptr [ebp-4],edx
 0056B483    mov        esi,eax
 0056B485    mov        eax,dword ptr [ebp-4]
 0056B488    call       @IntfAddRef
 0056B48D    xor        eax,eax
 0056B48F    push       ebp
 0056B490    push       56B754
 0056B495    push       dword ptr fs:[eax]
 0056B498    mov        dword ptr fs:[eax],esp
 0056B49B    xor        ebx,ebx
 0056B49D    mov        eax,esi
 0056B49F    mov        edx,dword ptr [eax]
 0056B4A1    call       dword ptr [edx+7C]
 0056B4A4    dec        eax
>0056B4A5    jl         0056B719
 0056B4AB    xor        eax,eax
 0056B4AD    mov        al,byte ptr [esi+40]
 0056B4B0    cmp        eax,19
>0056B4B3    ja         0056B6EA
 0056B4B9    mov        al,byte ptr [eax+56B4C6]
 0056B4BF    jmp        dword ptr [eax*4+56B4E0]
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         2
 0056B4BF    db         2
 0056B4BF    db         0
 0056B4BF    db         1
 0056B4BF    db         3
 0056B4BF    db         5
 0056B4BF    db         0
 0056B4BF    db         6
 0056B4BF    db         7
 0056B4BF    db         8
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         2
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         0
 0056B4BF    db         9
 0056B4BF    db         4
 0056B4BF    dd         56B6EA
 0056B4BF    dd         56B508
 0056B4BF    dd         56B52D
 0056B4BF    dd         56B552
 0056B4BF    dd         56B587
 0056B4BF    dd         56B5ED
 0056B4BF    dd         56B630
 0056B4BF    dd         56B65B
 0056B4BF    dd         56B686
 0056B4BF    dd         56B6AE
 0056B508    mov        eax,esi
 0056B50A    mov        edx,dword ptr [eax]
 0056B50C    call       dword ptr [edx+7C]
 0056B50F    mov        edx,eax
 0056B511    mov        eax,dword ptr [ebp-4]
 0056B514    mov        ecx,dword ptr [eax]
 0056B516    call       dword ptr [ecx+28]
 0056B519    mov        ebx,eax
 0056B51B    mov        eax,dword ptr [ebp-8]
 0056B51E    mov        edx,dword ptr [eax]
 0056B520    call       dword ptr [edx+44]
 0056B523    cmp        bl,al
 0056B525    sete       bl
>0056B528    jmp        0056B719
 0056B52D    mov        eax,esi
 0056B52F    mov        edx,dword ptr [eax]
 0056B531    call       dword ptr [edx+7C]
 0056B534    mov        edx,eax
 0056B536    mov        eax,dword ptr [ebp-4]
 0056B539    mov        ecx,dword ptr [eax]
 0056B53B    call       dword ptr [ecx+34]
 0056B53E    mov        ebx,eax
 0056B540    mov        eax,dword ptr [ebp-8]
 0056B543    mov        edx,dword ptr [eax]
 0056B545    call       dword ptr [edx+58]
 0056B548    cmp        ebx,eax
 0056B54A    sete       bl
>0056B54D    jmp        0056B719
 0056B552    mov        eax,esi
 0056B554    mov        edx,dword ptr [eax]
 0056B556    call       dword ptr [edx+7C]
 0056B559    mov        edx,eax
 0056B55B    mov        eax,dword ptr [ebp-4]
 0056B55E    mov        ecx,dword ptr [eax]
 0056B560    call       dword ptr [ecx+3C]
 0056B563    fstp       dword ptr [ebp-0C]
 0056B566    wait
 0056B567    mov        eax,dword ptr [ebp-8]
 0056B56A    mov        edx,dword ptr [eax]
 0056B56C    call       dword ptr [edx+54]
 0056B56F    fsubr      dword ptr [ebp-0C]
 0056B572    fabs
 0056B574    fld        tbyte ptr ds:[56B764]; 1E-5:Extended
 0056B57A    fcompp
 0056B57C    fnstsw     al
 0056B57E    sahf
 0056B57F    seta       bl
>0056B582    jmp        0056B719
 0056B587    mov        eax,dword ptr [ebp-8]
 0056B58A    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 0056B590    call       @IsClass
 0056B595    test       al,al
>0056B597    je         0056B5C8
 0056B599    mov        eax,esi
 0056B59B    mov        edx,dword ptr [eax]
 0056B59D    call       dword ptr [edx+7C]
 0056B5A0    mov        edx,eax
 0056B5A2    mov        eax,dword ptr [ebp-4]
 0056B5A5    mov        ecx,dword ptr [eax]
 0056B5A7    call       dword ptr [ecx+38]
 0056B5AA    push       edx
 0056B5AB    push       eax
 0056B5AC    mov        eax,dword ptr [ebp-8]
 0056B5AF    call       TLargeintField.GetAsLargeint
 0056B5B4    cmp        edx,dword ptr [esp+4]
>0056B5B8    jne        0056B5BD
 0056B5BA    cmp        eax,dword ptr [esp]
 0056B5BD    sete       bl
 0056B5C0    add        esp,8
>0056B5C3    jmp        0056B719
 0056B5C8    mov        eax,esi
 0056B5CA    mov        edx,dword ptr [eax]
 0056B5CC    call       dword ptr [edx+7C]
 0056B5CF    mov        edx,eax
 0056B5D1    mov        eax,dword ptr [ebp-4]
 0056B5D4    mov        ecx,dword ptr [eax]
 0056B5D6    call       dword ptr [ecx+34]
 0056B5D9    mov        ebx,eax
 0056B5DB    mov        eax,dword ptr [ebp-8]
 0056B5DE    mov        edx,dword ptr [eax]
 0056B5E0    call       dword ptr [edx+58]
 0056B5E3    cmp        ebx,eax
 0056B5E5    sete       bl
>0056B5E8    jmp        0056B719
 0056B5ED    mov        eax,esi
 0056B5EF    mov        edx,dword ptr [eax]
 0056B5F1    call       dword ptr [edx+7C]
 0056B5F4    mov        edx,eax
 0056B5F6    mov        eax,dword ptr [ebp-4]
 0056B5F9    mov        ecx,dword ptr [eax]
 0056B5FB    call       dword ptr [ecx+44]
 0056B5FE    fmul       dword ptr ds:[56B770]; 10000:Single
 0056B604    fstp       tbyte ptr [ebp-18]
 0056B607    wait
 0056B608    mov        eax,dword ptr [ebp-8]
 0056B60B    mov        edx,dword ptr [eax]
 0056B60D    call       dword ptr [edx+4C]
 0056B610    fld        tbyte ptr [ebp-18]
 0056B613    fsubrp     st(1),st
 0056B615    fdiv       dword ptr ds:[56B770]; 10000:Single
 0056B61B    fabs
 0056B61D    fld        tbyte ptr ds:[56B764]; 1E-5:Extended
 0056B623    fcompp
 0056B625    fnstsw     al
 0056B627    sahf
 0056B628    seta       bl
>0056B62B    jmp        0056B719
 0056B630    mov        eax,esi
 0056B632    mov        edx,dword ptr [eax]
 0056B634    call       dword ptr [edx+7C]
 0056B637    mov        edx,eax
 0056B639    mov        eax,dword ptr [ebp-4]
 0056B63C    mov        ecx,dword ptr [eax]
 0056B63E    call       dword ptr [ecx+4C]
 0056B641    fstp       qword ptr [ebp-20]
 0056B644    wait
 0056B645    mov        eax,dword ptr [ebp-8]
 0056B648    mov        edx,dword ptr [eax]
 0056B64A    call       dword ptr [edx+50]
 0056B64D    fcomp      qword ptr [ebp-20]
 0056B650    fnstsw     al
 0056B652    sahf
 0056B653    sete       bl
>0056B656    jmp        0056B719
 0056B65B    mov        eax,esi
 0056B65D    mov        edx,dword ptr [eax]
 0056B65F    call       dword ptr [edx+7C]
 0056B662    mov        edx,eax
 0056B664    mov        eax,dword ptr [ebp-4]
 0056B667    mov        ecx,dword ptr [eax]
 0056B669    call       dword ptr [ecx+50]
 0056B66C    fstp       qword ptr [ebp-20]
 0056B66F    wait
 0056B670    mov        eax,dword ptr [ebp-8]
 0056B673    mov        edx,dword ptr [eax]
 0056B675    call       dword ptr [edx+50]
 0056B678    fcomp      qword ptr [ebp-20]
 0056B67B    fnstsw     al
 0056B67D    sahf
 0056B67E    sete       bl
>0056B681    jmp        0056B719
 0056B686    mov        eax,esi
 0056B688    mov        edx,dword ptr [eax]
 0056B68A    call       dword ptr [edx+7C]
 0056B68D    mov        edx,eax
 0056B68F    mov        eax,dword ptr [ebp-4]
 0056B692    mov        ecx,dword ptr [eax]
 0056B694    call       dword ptr [ecx+54]
 0056B697    fstp       qword ptr [ebp-20]
 0056B69A    wait
 0056B69B    mov        eax,dword ptr [ebp-8]
 0056B69E    mov        edx,dword ptr [eax]
 0056B6A0    call       dword ptr [edx+50]
 0056B6A3    fcomp      qword ptr [ebp-20]
 0056B6A6    fnstsw     al
 0056B6A8    sahf
 0056B6A9    sete       bl
>0056B6AC    jmp        0056B719
 0056B6AE    mov        eax,esi
 0056B6B0    mov        edx,dword ptr [eax]
 0056B6B2    call       dword ptr [edx+7C]
 0056B6B5    mov        edx,eax
 0056B6B7    lea        ecx,[ebp-34]
 0056B6BA    mov        eax,dword ptr [ebp-4]
 0056B6BD    mov        ebx,dword ptr [eax]
 0056B6BF    call       dword ptr [ebx+24]
 0056B6C2    mov        edx,dword ptr [ebp-34]
 0056B6C5    lea        eax,[ebp-30]
 0056B6C8    call       @VarFromWStr
 0056B6CD    lea        eax,[ebp-30]
 0056B6D0    push       eax
 0056B6D1    lea        edx,[ebp-44]
 0056B6D4    mov        eax,dword ptr [ebp-8]
 0056B6D7    mov        ecx,dword ptr [eax]
 0056B6D9    call       dword ptr [ecx+64]
 0056B6DC    lea        edx,[ebp-44]
 0056B6DF    pop        eax
 0056B6E0    call       @VarCmpEQ
 0056B6E5    sete       bl
>0056B6E8    jmp        0056B719
 0056B6EA    mov        eax,esi
 0056B6EC    mov        edx,dword ptr [eax]
 0056B6EE    call       dword ptr [edx+7C]
 0056B6F1    mov        edx,eax
 0056B6F3    lea        ecx,[ebp-48]
 0056B6F6    mov        eax,dword ptr [ebp-4]
 0056B6F9    mov        ebx,dword ptr [eax]
 0056B6FB    call       dword ptr [ebx+20]
 0056B6FE    mov        eax,dword ptr [ebp-48]
 0056B701    push       eax
 0056B702    lea        edx,[ebp-4C]
 0056B705    mov        eax,dword ptr [ebp-8]
 0056B708    mov        ecx,dword ptr [eax]
 0056B70A    call       dword ptr [ecx+60]
 0056B70D    mov        edx,dword ptr [ebp-4C]
 0056B710    pop        eax
 0056B711    call       @LStrCmp
 0056B716    sete       bl
 0056B719    xor        eax,eax
 0056B71B    pop        edx
 0056B71C    pop        ecx
 0056B71D    pop        ecx
 0056B71E    mov        dword ptr fs:[eax],edx
 0056B721    push       56B75B
 0056B726    lea        eax,[ebp-4C]
 0056B729    mov        edx,2
 0056B72E    call       @LStrArrayClr
 0056B733    lea        eax,[ebp-44]
 0056B736    call       @VarClr
 0056B73B    lea        eax,[ebp-34]
 0056B73E    call       @WStrClr
 0056B743    lea        eax,[ebp-30]
 0056B746    call       @VarClr
 0056B74B    lea        eax,[ebp-4]
 0056B74E    call       @IntfClear
 0056B753    ret
<0056B754    jmp        @HandleFinally
<0056B759    jmp        0056B726
 0056B75B    mov        eax,ebx
 0056B75D    pop        esi
 0056B75E    pop        ebx
 0056B75F    mov        esp,ebp
 0056B761    pop        ebp
 0056B762    ret
*}
//end;

//0056B774
//procedure sub_0056B774(?:TZAbstractRODataset; ?:String; ?:?; ?:?; ?:?);
//begin
{*
 0056B774    push       ebp
 0056B775    mov        ebp,esp
 0056B777    add        esp,0FFFFFFC8
 0056B77A    push       ebx
 0056B77B    push       esi
 0056B77C    push       edi
 0056B77D    xor        ebx,ebx
 0056B77F    mov        dword ptr [ebp-2C],ebx
 0056B782    mov        dword ptr [ebp-30],ebx
 0056B785    mov        dword ptr [ebp-28],ebx
 0056B788    mov        dword ptr [ebp-24],ebx
 0056B78B    mov        dword ptr [ebp-20],ebx
 0056B78E    mov        dword ptr [ebp-18],ebx
 0056B791    mov        dword ptr [ebp-8],ecx
 0056B794    mov        esi,edx
 0056B796    mov        dword ptr [ebp-4],eax
 0056B799    xor        eax,eax
 0056B79B    push       ebp
 0056B79C    push       56BA50
 0056B7A1    push       dword ptr fs:[eax]
 0056B7A4    mov        dword ptr fs:[eax],esp
 0056B7A7    mov        eax,dword ptr [ebp+8]
 0056B7AA    mov        byte ptr [eax],1
 0056B7AD    xor        ebx,ebx
 0056B7AF    push       ebx
 0056B7B0    mov        eax,dword ptr [ebp-8]
 0056B7B3    mov        ecx,1
 0056B7B8    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 0056B7BE    call       @DynArraySetLength
 0056B7C3    add        esp,4
 0056B7C6    push       ebx
 0056B7C7    mov        eax,dword ptr [ebp+0C]
 0056B7CA    mov        ecx,1
 0056B7CF    mov        edx,dword ptr ds:[407380]; TBooleanDynArray
 0056B7D5    call       @DynArraySetLength
 0056B7DA    add        esp,4
 0056B7DD    mov        cl,byte ptr ds:[56BA60]; 0x6A
 0056B7E3    mov        edx,esi
 0056B7E5    mov        eax,[0061EF6C]; gvar_0061EF6C:IInterface
 0056B7EA    mov        esi,dword ptr [eax]
 0056B7EC    call       dword ptr [esi+0C]
 0056B7EF    mov        dword ptr [ebp-10],eax
 0056B7F2    xor        edx,edx
 0056B7F4    push       ebp
 0056B7F5    push       56BA26
 0056B7FA    push       dword ptr fs:[edx]
 0056B7FD    mov        dword ptr fs:[edx],esp
 0056B800    mov        eax,dword ptr [ebp-10]
 0056B803    mov        edx,dword ptr [eax]
 0056B805    call       dword ptr [edx+14]
 0056B808    sub        eax,1
>0056B80B    jno        0056B812
 0056B80D    call       @IntOver
 0056B812    test       eax,eax
>0056B814    jl         0056BA10
 0056B81A    inc        eax
 0056B81B    mov        dword ptr [ebp-1C],eax
 0056B81E    mov        dword ptr [ebp-0C],0
 0056B825    mov        edx,dword ptr [ebp-0C]
 0056B828    mov        eax,dword ptr [ebp-10]
 0056B82B    mov        ecx,dword ptr [eax]
 0056B82D    call       dword ptr [ecx+18]
 0056B830    mov        byte ptr [ebp-11],al
 0056B833    lea        ecx,[ebp-18]
 0056B836    mov        edx,dword ptr [ebp-0C]
 0056B839    mov        eax,dword ptr [ebp-10]
 0056B83C    mov        esi,dword ptr [eax]
 0056B83E    call       dword ptr [esi+0C]
 0056B841    xor        esi,esi
 0056B843    lea        edx,[ebp-20]
 0056B846    mov        eax,dword ptr [ebp-18]
 0056B849    call       UpperCase
 0056B84E    mov        eax,dword ptr [ebp-20]
 0056B851    mov        edx,56BA6C; 'DESC'
 0056B856    call       @LStrCmp
>0056B85B    je         0056B877
 0056B85D    lea        edx,[ebp-24]
 0056B860    mov        eax,dword ptr [ebp-18]
 0056B863    call       UpperCase
 0056B868    mov        eax,dword ptr [ebp-24]
 0056B86B    mov        edx,56BA7C; 'ASC'
 0056B870    call       @LStrCmp
>0056B875    jne        0056B8BD
 0056B877    test       ebx,ebx
>0056B879    jle        0056B8BD
 0056B87B    lea        edx,[ebp-28]
 0056B87E    mov        eax,dword ptr [ebp-18]
 0056B881    call       UpperCase
 0056B886    mov        eax,dword ptr [ebp-28]
 0056B889    mov        edx,56BA6C; 'DESC'
 0056B88E    call       @LStrCmp
 0056B893    setne      al
 0056B896    mov        edx,ebx
 0056B898    sub        edx,1
>0056B89B    jno        0056B8A2
 0056B89D    call       @IntOver
 0056B8A2    mov        ecx,dword ptr [ebp+0C]
 0056B8A5    mov        ecx,dword ptr [ecx]
 0056B8A7    test       ecx,ecx
>0056B8A9    je         0056B8B0
 0056B8AB    cmp        edx,dword ptr [ecx-4]
>0056B8AE    jb         0056B8B5
 0056B8B0    call       @BoundErr
 0056B8B5    mov        byte ptr [ecx+edx],al
>0056B8B8    jmp        0056B972
 0056B8BD    mov        al,byte ptr [ebp-11]
 0056B8C0    sub        al,7
>0056B8C2    je         0056B8C8
 0056B8C4    sub        al,2
>0056B8C6    jne        0056B8DA
 0056B8C8    mov        edx,dword ptr [ebp-18]
 0056B8CB    mov        eax,dword ptr [ebp-4]
 0056B8CE    call       TDataSet.FieldByName
 0056B8D3    mov        esi,eax
>0056B8D5    jmp        0056B972
 0056B8DA    cmp        byte ptr [ebp-11],5
>0056B8DE    jne        0056B916
 0056B8E0    xor        edx,edx
 0056B8E2    mov        eax,dword ptr [ebp-18]
 0056B8E5    call       StrToIntDef
 0056B8EA    mov        edi,eax
 0056B8EC    mov        eax,dword ptr [ebp-4]
 0056B8EF    mov        eax,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 0056B8F2    call       TFields.GetCount
 0056B8F7    cmp        edi,eax
>0056B8F9    jge        0056B916
 0056B8FB    xor        edx,edx
 0056B8FD    mov        eax,dword ptr [ebp-18]
 0056B900    call       StrToIntDef
 0056B905    mov        edx,eax
 0056B907    mov        eax,dword ptr [ebp-4]
 0056B90A    mov        eax,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 0056B90D    call       TFields.GetField
 0056B912    mov        esi,eax
>0056B914    jmp        0056B972
 0056B916    mov        eax,dword ptr [ebp-18]
 0056B919    mov        edx,56BA88; ','
 0056B91E    call       @LStrCmp
>0056B923    je         0056B972
 0056B925    mov        eax,dword ptr [ebp-18]
 0056B928    mov        edx,56BA94; ';'
 0056B92D    call       @LStrCmp
>0056B932    je         0056B972
 0056B934    lea        eax,[ebp-2C]
 0056B937    push       eax
 0056B938    lea        edx,[ebp-30]
 0056B93B    mov        eax,[0061C208]; ^#122.sResString69:TResStringRec
 0056B940    call       LoadResString
 0056B945    mov        eax,dword ptr [ebp-30]
 0056B948    push       eax
 0056B949    mov        eax,dword ptr [ebp-18]
 0056B94C    mov        dword ptr [ebp-38],eax
 0056B94F    mov        byte ptr [ebp-34],0B
 0056B953    lea        edx,[ebp-38]
 0056B956    xor        ecx,ecx
 0056B958    pop        eax
 0056B959    call       Format
 0056B95E    mov        ecx,dword ptr [ebp-2C]
 0056B961    mov        dl,1
 0056B963    mov        eax,[0057089C]; EZDatabaseError
 0056B968    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056B96D    call       @RaiseExcept
 0056B972    test       esi,esi
>0056B974    je         0056BA04
 0056B97A    mov        eax,dword ptr [ebp+8]
 0056B97D    cmp        byte ptr [eax],0
>0056B980    je         0056B988
 0056B982    cmp        byte ptr [esi+42],0
>0056B986    je         0056B98C
 0056B988    xor        eax,eax
>0056B98A    jmp        0056B98E
 0056B98C    mov        al,1
 0056B98E    mov        edx,dword ptr [ebp+8]
 0056B991    mov        byte ptr [edx],al
 0056B993    add        ebx,1
>0056B996    jno        0056B99D
 0056B998    call       @IntOver
 0056B99D    push       ebx
 0056B99E    mov        eax,dword ptr [ebp-8]
 0056B9A1    mov        ecx,1
 0056B9A6    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 0056B9AC    call       @DynArraySetLength
 0056B9B1    add        esp,4
 0056B9B4    push       ebx
 0056B9B5    mov        eax,dword ptr [ebp+0C]
 0056B9B8    mov        ecx,1
 0056B9BD    mov        edx,dword ptr ds:[407380]; TBooleanDynArray
 0056B9C3    call       @DynArraySetLength
 0056B9C8    add        esp,4
 0056B9CB    mov        eax,ebx
 0056B9CD    sub        eax,1
>0056B9D0    jno        0056B9D7
 0056B9D2    call       @IntOver
 0056B9D7    mov        edx,dword ptr [ebp-8]
 0056B9DA    mov        edx,dword ptr [edx]
 0056B9DC    test       edx,edx
>0056B9DE    je         0056B9E5
 0056B9E0    cmp        eax,dword ptr [edx-4]
>0056B9E3    jb         0056B9EA
 0056B9E5    call       @BoundErr
 0056B9EA    mov        dword ptr [edx+eax*4],esi
 0056B9ED    mov        edx,dword ptr [ebp+0C]
 0056B9F0    mov        edx,dword ptr [edx]
 0056B9F2    test       edx,edx
>0056B9F4    je         0056B9FB
 0056B9F6    cmp        eax,dword ptr [edx-4]
>0056B9F9    jb         0056BA00
 0056B9FB    call       @BoundErr
 0056BA00    mov        byte ptr [edx+eax],1
 0056BA04    inc        dword ptr [ebp-0C]
 0056BA07    dec        dword ptr [ebp-1C]
<0056BA0A    jne        0056B825
 0056BA10    xor        eax,eax
 0056BA12    pop        edx
 0056BA13    pop        ecx
 0056BA14    pop        ecx
 0056BA15    mov        dword ptr fs:[eax],edx
 0056BA18    push       56BA2D
 0056BA1D    mov        eax,dword ptr [ebp-10]
 0056BA20    call       TObject.Free
 0056BA25    ret
<0056BA26    jmp        @HandleFinally
<0056BA2B    jmp        0056BA1D
 0056BA2D    xor        eax,eax
 0056BA2F    pop        edx
 0056BA30    pop        ecx
 0056BA31    pop        ecx
 0056BA32    mov        dword ptr fs:[eax],edx
 0056BA35    push       56BA57
 0056BA3A    lea        eax,[ebp-30]
 0056BA3D    mov        edx,5
 0056BA42    call       @LStrArrayClr
 0056BA47    lea        eax,[ebp-18]
 0056BA4A    call       @LStrClr
 0056BA4F    ret
<0056BA50    jmp        @HandleFinally
<0056BA55    jmp        0056BA3A
 0056BA57    pop        edi
 0056BA58    pop        esi
 0056BA59    pop        ebx
 0056BA5A    mov        esp,ebp
 0056BA5C    pop        ebp
 0056BA5D    ret        8
*}
//end;

//0056BA98
//procedure sub_0056BA98(?:TFields; ?:TIntegerDynArray);
//begin
{*
 0056BA98    push       ebp
 0056BA99    mov        ebp,esp
 0056BA9B    push       ecx
 0056BA9C    push       ebx
 0056BA9D    push       esi
 0056BA9E    push       edi
 0056BA9F    mov        dword ptr [ebp-4],edx
 0056BAA2    mov        edi,eax
 0056BAA4    mov        eax,edi
 0056BAA6    call       TFields.GetCount
 0056BAAB    push       eax
 0056BAAC    mov        eax,dword ptr [ebp-4]
 0056BAAF    mov        ecx,1
 0056BAB4    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0056BABA    call       @DynArraySetLength
 0056BABF    add        esp,4
 0056BAC2    mov        eax,edi
 0056BAC4    call       TFields.GetCount
 0056BAC9    mov        esi,eax
 0056BACB    sub        esi,1
>0056BACE    jno        0056BAD5
 0056BAD0    call       @IntOver
 0056BAD5    test       esi,esi
>0056BAD7    jl         0056BAFF
 0056BAD9    inc        esi
 0056BADA    xor        ebx,ebx
 0056BADC    mov        edx,ebx
 0056BADE    mov        eax,edi
 0056BAE0    call       TFields.GetField
 0056BAE5    mov        edx,dword ptr [ebp-4]
 0056BAE8    mov        edx,dword ptr [edx]
 0056BAEA    test       edx,edx
>0056BAEC    je         0056BAF3
 0056BAEE    cmp        ebx,dword ptr [edx-4]
>0056BAF1    jb         0056BAF8
 0056BAF3    call       @BoundErr
 0056BAF8    mov        dword ptr [edx+ebx*4],eax
 0056BAFB    inc        ebx
 0056BAFC    dec        esi
<0056BAFD    jne        0056BADC
 0056BAFF    pop        edi
 0056BB00    pop        esi
 0056BB01    pop        ebx
 0056BB02    pop        ecx
 0056BB03    pop        ebp
 0056BB04    ret
*}
//end;

//0056BB08
//function sub_0056BB08(?:TIntegerDynArray; ?:TField):?;
//begin
{*
 0056BB08    push       ebp
 0056BB09    mov        ebp,esp
 0056BB0B    push       ecx
 0056BB0C    push       ebx
 0056BB0D    push       esi
 0056BB0E    mov        esi,edx
 0056BB10    mov        ebx,eax
 0056BB12    mov        dword ptr [ebp-4],0FFFFFFFF
 0056BB19    mov        eax,ebx
 0056BB1B    call       @DynArrayHigh
 0056BB20    mov        edx,eax
 0056BB22    test       edx,edx
>0056BB24    jl         0056BB53
 0056BB26    inc        edx
 0056BB27    xor        eax,eax
 0056BB29    test       ebx,ebx
>0056BB2B    je         0056BB32
 0056BB2D    cmp        eax,dword ptr [ebx-4]
>0056BB30    jb         0056BB37
 0056BB32    call       @BoundErr
 0056BB37    mov        ecx,dword ptr [ebx+eax*4]
 0056BB3A    cmp        ecx,esi
>0056BB3C    jne        0056BB4F
 0056BB3E    mov        edx,eax
 0056BB40    add        edx,1
>0056BB43    jno        0056BB4A
 0056BB45    call       @IntOver
 0056BB4A    mov        dword ptr [ebp-4],edx
>0056BB4D    jmp        0056BB53
 0056BB4F    inc        eax
 0056BB50    dec        edx
<0056BB51    jne        0056BB29
 0056BB53    mov        eax,dword ptr [ebp-4]
 0056BB56    pop        esi
 0056BB57    pop        ebx
 0056BB58    pop        ecx
 0056BB59    pop        ebp
 0056BB5A    ret
*}
//end;

//0056BB5C
//procedure sub_0056BB5C(?:TIntegerDynArray; ?:TObjectDynArray; ?:TIntegerDynArray);
//begin
{*
 0056BB5C    push       ebp
 0056BB5D    mov        ebp,esp
 0056BB5F    add        esp,0FFFFFFF8
 0056BB62    push       ebx
 0056BB63    push       esi
 0056BB64    push       edi
 0056BB65    mov        edi,ecx
 0056BB67    mov        dword ptr [ebp-8],edx
 0056BB6A    mov        dword ptr [ebp-4],eax
 0056BB6D    cmp        dword ptr [ebp-8],0
>0056BB71    jne        0056BB82
 0056BB73    mov        eax,edi
 0056BB75    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0056BB7B    call       @DynArrayClear
>0056BB80    jmp        0056BBE3
 0056BB82    mov        eax,dword ptr [ebp-8]
 0056BB85    call       @DynArrayLength
 0056BB8A    push       eax
 0056BB8B    mov        eax,edi
 0056BB8D    mov        ecx,1
 0056BB92    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0056BB98    call       @DynArraySetLength
 0056BB9D    add        esp,4
 0056BBA0    mov        eax,dword ptr [edi]
 0056BBA2    call       @DynArrayHigh
 0056BBA7    mov        esi,eax
 0056BBA9    test       esi,esi
>0056BBAB    jl         0056BBE3
 0056BBAD    inc        esi
 0056BBAE    xor        ebx,ebx
 0056BBB0    mov        eax,dword ptr [ebp-8]
 0056BBB3    test       eax,eax
>0056BBB5    je         0056BBBC
 0056BBB7    cmp        ebx,dword ptr [eax-4]
>0056BBBA    jb         0056BBC1
 0056BBBC    call       @BoundErr
 0056BBC1    mov        edx,dword ptr [eax+ebx*4]
 0056BBC4    mov        eax,dword ptr [ebp-4]
 0056BBC7    call       0056BB08
 0056BBCC    mov        edx,dword ptr [edi]
 0056BBCE    test       edx,edx
>0056BBD0    je         0056BBD7
 0056BBD2    cmp        ebx,dword ptr [edx-4]
>0056BBD5    jb         0056BBDC
 0056BBD7    call       @BoundErr
 0056BBDC    mov        dword ptr [edx+ebx*4],eax
 0056BBDF    inc        ebx
 0056BBE0    dec        esi
<0056BBE1    jne        0056BBB0
 0056BBE3    pop        edi
 0056BBE4    pop        esi
 0056BBE5    pop        ebx
 0056BBE6    pop        ecx
 0056BBE7    pop        ecx
 0056BBE8    pop        ebp
 0056BBE9    ret
*}
//end;

Initialization
//0056BC30
{*
 0056BC30    push       ebp
 0056BC31    mov        ebp,esp
 0056BC33    xor        eax,eax
 0056BC35    push       ebp
 0056BC36    push       56BC7A
 0056BC3B    push       dword ptr fs:[eax]
 0056BC3E    mov        dword ptr fs:[eax],esp
 0056BC41    sub        dword ptr ds:[61EF70],1
>0056BC48    jae        0056BC6C
 0056BC4A    mov        dl,1
 0056BC4C    mov        eax,[004C7BC0]; TZGenericSQLTokenizer
 0056BC51    call       TZGenericSQLTokenizer.Create; TZGenericSQLTokenizer.Create
 0056BC56    mov        edx,eax
 0056BC58    test       edx,edx
>0056BC5A    je         0056BC62
 0056BC5C    sub        edx,0FFFFFBD8
 0056BC62    mov        eax,61EF6C; gvar_0061EF6C:IInterface
 0056BC67    call       @IntfCopy
 0056BC6C    xor        eax,eax
 0056BC6E    pop        edx
 0056BC6F    pop        ecx
 0056BC70    pop        ecx
 0056BC71    mov        dword ptr fs:[eax],edx
 0056BC74    push       56BC81
 0056BC79    ret
<0056BC7A    jmp        @HandleFinally
<0056BC7F    jmp        0056BC79
 0056BC81    pop        ebp
 0056BC82    ret
*}
Finalization
//0056BBEC
{*
 0056BBEC    push       ebp
 0056BBED    mov        ebp,esp
 0056BBEF    xor        eax,eax
 0056BBF1    push       ebp
 0056BBF2    push       56BC27
 0056BBF7    push       dword ptr fs:[eax]
 0056BBFA    mov        dword ptr fs:[eax],esp
 0056BBFD    inc        dword ptr ds:[61EF70]
>0056BC03    jne        0056BC19
 0056BC05    mov        eax,61EF6C; gvar_0061EF6C:IInterface
 0056BC0A    call       @IntfClear
 0056BC0F    mov        eax,61EF6C; gvar_0061EF6C:IInterface
 0056BC14    call       @IntfClear
 0056BC19    xor        eax,eax
 0056BC1B    pop        edx
 0056BC1C    pop        ecx
 0056BC1D    pop        ecx
 0056BC1E    mov        dword ptr fs:[eax],edx
 0056BC21    push       56BC2E
 0056BC26    ret
<0056BC27    jmp        @HandleFinally
<0056BC2C    jmp        0056BC26
 0056BC2E    pop        ebp
 0056BC2F    ret
*}
end.