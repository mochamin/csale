{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit215;

interface

uses
  Classes, Windows, Graphics;


implementation

//004EF94C
//function sub_004EF94C(?:?):?;
//begin
{*
 004EF94C    movsx      eax,ax
 004EF94F    cmp        eax,1
>004EF952    jg         004EF991
>004EF954    je         004EF9BC
 004EF956    add        eax,0B
 004EF959    cmp        eax,0A
>004EF95C    ja         004EF9DA
 004EF95E    jmp        dword ptr [eax*4+4EF965]
 004EF95E    dd         4EF9D4
 004EF95E    dd         4EF9D1
 004EF95E    dd         4EF9BC
 004EF95E    dd         4EF9BC
 004EF95E    dd         4EF9BF
 004EF95E    dd         4EF9C2
 004EF95E    dd         4EF9DA
 004EF95E    dd         4EF9D4
 004EF95E    dd         4EF9D4
 004EF95E    dd         4EF9D7
 004EF95E    dd         4EF9D1
 004EF991    cmp        eax,6
>004EF994    jge        004EF9A5
 004EF996    add        eax,0FFFFFFFE
 004EF999    sub        eax,2
>004EF99C    jb         004EF9CB
>004EF99E    je         004EF9C8
 004EF9A0    dec        eax
>004EF9A1    je         004EF9C5
>004EF9A3    jmp        004EF9DA
 004EF9A5    add        eax,0FFFFFFFA
 004EF9A8    sub        eax,3
>004EF9AB    jb         004EF9CB
 004EF9AD    sub        eax,2
>004EF9B0    je         004EF9CE
 004EF9B2    dec        eax
>004EF9B3    je         004EF9BC
 004EF9B5    sub        eax,51
>004EF9B8    je         004EF9CE
>004EF9BA    jmp        004EF9DA
 004EF9BC    mov        al,9
 004EF9BE    ret
 004EF9BF    mov        al,1
 004EF9C1    ret
 004EF9C2    mov        al,3
 004EF9C4    ret
 004EF9C5    mov        al,3
 004EF9C7    ret
 004EF9C8    mov        al,4
 004EF9CA    ret
 004EF9CB    mov        al,7
 004EF9CD    ret
 004EF9CE    mov        al,0E
 004EF9D0    ret
 004EF9D1    mov        al,0F
 004EF9D3    ret
 004EF9D4    mov        al,11
 004EF9D6    ret
 004EF9D7    mov        al,0B
 004EF9D9    ret
 004EF9DA    xor        eax,eax
 004EF9DC    ret
*}
//end;

//004EF9E0
//function sub_004EF9E0(?:?):?;
//begin
{*
 004EF9E0    movsx      eax,ax
 004EF9E3    cmp        eax,38
>004EF9E6    jg         004EFA4D
>004EF9E8    je         004EFA79
 004EF9EE    add        eax,0FFFFFFDE
 004EF9F1    cmp        eax,12
>004EF9F4    ja         004EFA97
 004EF9FA    jmp        dword ptr [eax*4+4EFA01]
 004EF9FA    dd         4EFA91
 004EF9FA    dd         4EFA8E
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA94
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA6D
 004EF9FA    dd         4EFA73
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA70
 004EF9FA    dd         4EFA97
 004EF9FA    dd         4EFA76
 004EFA4D    cmp        eax,3D
>004EFA50    jg         004EFA61
>004EFA52    je         004EFA8B
 004EFA54    sub        eax,3A
>004EFA57    je         004EFA88
 004EFA59    dec        eax
>004EFA5A    je         004EFA7C
 004EFA5C    dec        eax
>004EFA5D    je         004EFA85
>004EFA5F    jmp        004EFA97
 004EFA61    sub        eax,3E
>004EFA64    je         004EFA7F
 004EFA66    sub        eax,3C
>004EFA69    je         004EFA82
>004EFA6B    jmp        004EFA97
 004EFA6D    mov        al,9
 004EFA6F    ret
 004EFA70    mov        al,1
 004EFA72    ret
 004EFA73    mov        al,3
 004EFA75    ret
 004EFA76    mov        al,3
 004EFA78    ret
 004EFA79    mov        al,4
 004EFA7B    ret
 004EFA7C    mov        al,7
 004EFA7E    ret
 004EFA7F    mov        al,7
 004EFA81    ret
 004EFA82    mov        al,7
 004EFA84    ret
 004EFA85    mov        al,7
 004EFA87    ret
 004EFA88    mov        al,0E
 004EFA8A    ret
 004EFA8B    mov        al,0E
 004EFA8D    ret
 004EFA8E    mov        al,0F
 004EFA90    ret
 004EFA91    mov        al,11
 004EFA93    ret
 004EFA94    mov        al,11
 004EFA96    ret
 004EFA97    xor        eax,eax
 004EFA99    ret
*}
//end;

//004EFA9C
//function sub_004EFA9C(?:?; ?:?):?;
//begin
{*
 004EFA9C    or         edx,0FFFFFFFF
 004EFA9F    and        eax,7F
 004EFAA2    cmp        eax,11
>004EFAA5    ja         004EFB77
 004EFAAB    jmp        dword ptr [eax*4+4EFAB2]
 004EFAAB    dd         4EFB77
 004EFAAB    dd         4EFAFA
 004EFAAB    dd         4EFB02
 004EFAAB    dd         4EFB0A
 004EFAAB    dd         4EFB12
 004EFAAB    dd         4EFB1A
 004EFAAB    dd         4EFB22
 004EFAAB    dd         4EFB2A
 004EFAAB    dd         4EFB32
 004EFAAB    dd         4EFB3A
 004EFAAB    dd         4EFB77
 004EFAAB    dd         4EFB42
 004EFAAB    dd         4EFB4A
 004EFAAB    dd         4EFB52
 004EFAAB    dd         4EFB5A
 004EFAAB    dd         4EFB62
 004EFAAB    dd         4EFB6A
 004EFAAB    dd         4EFB72
 004EFAFA    mov        edx,32
 004EFAFF    mov        eax,edx
 004EFB01    ret
 004EFB02    mov        edx,30
 004EFB07    mov        eax,edx
 004EFB09    ret
 004EFB0A    mov        edx,34
 004EFB0F    mov        eax,edx
 004EFB11    ret
 004EFB12    mov        edx,38
 004EFB17    mov        eax,edx
 004EFB19    ret
 004EFB1A    mov        edx,3E
 004EFB1F    mov        eax,edx
 004EFB21    ret
 004EFB22    mov        edx,3E
 004EFB27    mov        eax,edx
 004EFB29    ret
 004EFB2A    mov        edx,3E
 004EFB2F    mov        eax,edx
 004EFB31    ret
 004EFB32    mov        edx,3E
 004EFB37    mov        eax,edx
 004EFB39    ret
 004EFB3A    mov        edx,2F
 004EFB3F    mov        eax,edx
 004EFB41    ret
 004EFB42    mov        edx,2D
 004EFB47    mov        eax,edx
 004EFB49    ret
 004EFB4A    mov        edx,3D
 004EFB4F    mov        eax,edx
 004EFB51    ret
 004EFB52    mov        edx,3D
 004EFB57    mov        eax,edx
 004EFB59    ret
 004EFB5A    mov        edx,3D
 004EFB5F    mov        eax,edx
 004EFB61    ret
 004EFB62    mov        edx,23
 004EFB67    mov        eax,edx
 004EFB69    ret
 004EFB6A    mov        edx,22
 004EFB6F    mov        eax,edx
 004EFB71    ret
 004EFB72    mov        edx,22
 004EFB77    mov        eax,edx
 004EFB79    ret
*}
//end;

//004EFB7C
//procedure sub_004EFB7C(?:?; ?:?; ?:?);
//begin
{*
 004EFB7C    push       ebp
 004EFB7D    mov        ebp,esp
 004EFB7F    push       ecx
 004EFB80    mov        ecx,0B
 004EFB85    push       0
 004EFB87    push       0
 004EFB89    dec        ecx
<004EFB8A    jne        004EFB85
 004EFB8C    xchg       ecx,dword ptr [ebp-4]
 004EFB8F    push       ebx
 004EFB90    push       esi
 004EFB91    push       edi
 004EFB92    mov        esi,eax
 004EFB94    lea        edi,[ebp-38]
 004EFB97    push       ecx
 004EFB98    mov        ecx,0B
 004EFB9D    rep movs   dword ptr [edi],dword ptr [esi]
 004EFB9F    pop        ecx
 004EFBA0    mov        esi,ecx
 004EFBA2    mov        ebx,edx
 004EFBA4    lea        eax,[ebp-38]
 004EFBA7    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004EFBAD    call       0040585C
 004EFBB2    xor        eax,eax
 004EFBB4    push       ebp
 004EFBB5    push       4EFF74
 004EFBBA    push       dword ptr fs:[eax]
 004EFBBD    mov        dword ptr fs:[eax],esp
 004EFBC0    lea        eax,[ebp-4]
 004EFBC3    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004EFBC9    call       @DynArrayClear
 004EFBCE    lea        edx,[ebp-38]
 004EFBD1    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004EFBD6    mov        eax,dword ptr [eax]
 004EFBD8    mov        ecx,dword ptr [eax]
 004EFBDA    call       dword ptr [ecx+0C]
 004EFBDD    test       al,al
>004EFBDF    je         004EFBF2
 004EFBE1    mov        eax,esi
 004EFBE3    mov        edx,4EFF8C; 'NULL'
 004EFBE8    call       @LStrAsg
>004EFBED    jmp        004EFF10
 004EFBF2    xor        eax,eax
 004EFBF4    mov        al,bl
 004EFBF6    cmp        eax,11
>004EFBF9    ja         004EFF04
 004EFBFF    jmp        dword ptr [eax*4+4EFC06]
 004EFBFF    dd         4EFF04
 004EFBFF    dd         4EFC4E
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC83
 004EFBFF    dd         4EFC99
 004EFBFF    dd         4EFF04
 004EFBFF    dd         4EFCBC
 004EFBFF    dd         4EFD3D
 004EFBFF    dd         4EFD7E
 004EFBFF    dd         4EFDBF
 004EFBFF    dd         4EFE00
 004EFBFF    dd         4EFE00
 004EFBFF    dd         4EFE74
 004EFC4E    lea        edx,[ebp-38]
 004EFC51    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFC56    mov        eax,dword ptr [eax]
 004EFC58    mov        ecx,dword ptr [eax]
 004EFC5A    call       dword ptr [ecx+24]
 004EFC5D    test       al,al
>004EFC5F    je         004EFC72
 004EFC61    mov        eax,esi
 004EFC63    mov        edx,4EFF9C; '1'
 004EFC68    call       @LStrAsg
>004EFC6D    jmp        004EFF10
 004EFC72    mov        eax,esi
 004EFC74    mov        edx,4EFFA8; '0'
 004EFC79    call       @LStrAsg
>004EFC7E    jmp        004EFF10
 004EFC83    mov        ecx,esi
 004EFC85    lea        edx,[ebp-38]
 004EFC88    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFC8D    mov        eax,dword ptr [eax]
 004EFC8F    mov        ebx,dword ptr [eax]
 004EFC91    call       dword ptr [ebx+30]
>004EFC94    jmp        004EFF10
 004EFC99    lea        ecx,[ebp-3C]
 004EFC9C    lea        edx,[ebp-38]
 004EFC9F    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFCA4    mov        eax,dword ptr [eax]
 004EFCA6    mov        ebx,dword ptr [eax]
 004EFCA8    call       dword ptr [ebx+30]
 004EFCAB    mov        eax,dword ptr [ebp-3C]
 004EFCAE    mov        ecx,esi
 004EFCB0    mov        dl,27
 004EFCB2    call       AnsiQuotedStr
>004EFCB7    jmp        004EFF10
 004EFCBC    lea        ecx,[ebp-40]
 004EFCBF    lea        edx,[ebp-38]
 004EFCC2    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFCC7    mov        eax,dword ptr [eax]
 004EFCC9    mov        ebx,dword ptr [eax]
 004EFCCB    call       dword ptr [ebx+30]
 004EFCCE    mov        eax,dword ptr [ebp-40]
 004EFCD1    lea        edx,[ebp-4]
 004EFCD4    call       004BF678
 004EFCD9    mov        eax,dword ptr [ebp-4]
 004EFCDC    call       @DynArrayLength
 004EFCE1    test       eax,eax
>004EFCE3    jne        004EFCF6
 004EFCE5    mov        eax,esi
 004EFCE7    mov        edx,4EFF8C; 'NULL'
 004EFCEC    call       @LStrAsg
>004EFCF1    jmp        004EFF10
 004EFCF6    mov        eax,dword ptr [ebp-4]
 004EFCF9    call       @DynArrayLength
 004EFCFE    imul       edx,eax,2
>004EFD01    jno        004EFD08
 004EFD03    call       @IntOver
 004EFD08    mov        eax,esi
 004EFD0A    call       @LStrSetLength
 004EFD0F    mov        eax,dword ptr [ebp-4]
 004EFD12    call       @DynArrayLength
 004EFD17    push       eax
 004EFD18    mov        eax,dword ptr [esi]
 004EFD1A    call       @LStrToPChar
 004EFD1F    mov        edx,eax
 004EFD21    mov        eax,dword ptr [ebp-4]
 004EFD24    pop        ecx
 004EFD25    call       BinToHex
 004EFD2A    mov        ecx,dword ptr [esi]
 004EFD2C    mov        eax,esi
 004EFD2E    mov        edx,4EFFB4; '0x'
 004EFD33    call       @LStrCat3
>004EFD38    jmp        004EFF10
 004EFD3D    push       4EFFC0; '''
 004EFD42    lea        edx,[ebp-38]
 004EFD45    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFD4A    mov        eax,dword ptr [eax]
 004EFD4C    mov        ecx,dword ptr [eax]
 004EFD4E    call       dword ptr [ecx+38]
 004EFD51    add        esp,0FFFFFFF8
 004EFD54    fstp       qword ptr [esp]
 004EFD57    wait
 004EFD58    lea        edx,[ebp-44]
 004EFD5B    mov        eax,4EFFCC; 'yyyymmdd'
 004EFD60    call       FormatDateTime
 004EFD65    push       dword ptr [ebp-44]
 004EFD68    push       4EFFC0; '''
 004EFD6D    mov        eax,esi
 004EFD6F    mov        edx,3
 004EFD74    call       @LStrCatN
>004EFD79    jmp        004EFF10
 004EFD7E    push       4EFFC0; '''
 004EFD83    lea        edx,[ebp-38]
 004EFD86    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFD8B    mov        eax,dword ptr [eax]
 004EFD8D    mov        ecx,dword ptr [eax]
 004EFD8F    call       dword ptr [ecx+38]
 004EFD92    add        esp,0FFFFFFF8
 004EFD95    fstp       qword ptr [esp]
 004EFD98    wait
 004EFD99    lea        edx,[ebp-48]
 004EFD9C    mov        eax,4EFFE0; 'hh\":\"mm\":\"ss\":\"zzz'
 004EFDA1    call       FormatDateTime
 004EFDA6    push       dword ptr [ebp-48]
 004EFDA9    push       4EFFC0; '''
 004EFDAE    mov        eax,esi
 004EFDB0    mov        edx,3
 004EFDB5    call       @LStrCatN
>004EFDBA    jmp        004EFF10
 004EFDBF    push       4EFFC0; '''
 004EFDC4    lea        edx,[ebp-38]
 004EFDC7    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004EFDCC    mov        eax,dword ptr [eax]
 004EFDCE    mov        ecx,dword ptr [eax]
 004EFDD0    call       dword ptr [ecx+38]
 004EFDD3    add        esp,0FFFFFFF8
 004EFDD6    fstp       qword ptr [esp]
 004EFDD9    wait
 004EFDDA    lea        edx,[ebp-4C]
 004EFDDD    mov        eax,4EFFFC; 'yyyymmdd hh\":\"mm\":\"ss\":\"zzz'
 004EFDE2    call       FormatDateTime
 004EFDE7    push       dword ptr [ebp-4C]
 004EFDEA    push       4EFFC0; '''
 004EFDEF    mov        eax,esi
 004EFDF1    mov        edx,3
 004EFDF6    call       @LStrCatN
>004EFDFB    jmp        004EFF10
 004EFE00    lea        ecx,[ebp-50]
 004EFE03    lea        edx,[ebp-38]
 004EFE06    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004EFE0B    mov        eax,dword ptr [eax]
 004EFE0D    mov        ebx,dword ptr [eax]
 004EFE0F    call       dword ptr [ebx+40]
 004EFE12    mov        edx,dword ptr [ebp-50]
 004EFE15    lea        eax,[ebp-8]
 004EFE18    mov        ecx,4F0018; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 004EFE1D    call       @IntfCast
 004EFE22    mov        eax,dword ptr [ebp-8]
 004EFE25    mov        edx,dword ptr [eax]
 004EFE27    call       dword ptr [edx+0C]
 004EFE2A    test       al,al
>004EFE2C    jne        004EFE63
 004EFE2E    mov        al,[004F0028]; 0x1
 004EFE33    push       eax
 004EFE34    lea        eax,[ebp-54]
 004EFE37    push       eax
 004EFE38    lea        edx,[ebp-58]
 004EFE3B    mov        eax,dword ptr [ebp-8]
 004EFE3E    mov        ecx,dword ptr [eax]
 004EFE40    call       dword ptr [ecx+18]
 004EFE43    mov        eax,dword ptr [ebp-58]
 004EFE46    xor        ecx,ecx
 004EFE48    mov        edx,4F0034; '\0'
 004EFE4D    call       StringReplace
 004EFE52    mov        eax,dword ptr [ebp-54]
 004EFE55    mov        ecx,esi
 004EFE57    mov        dl,27
 004EFE59    call       AnsiQuotedStr
>004EFE5E    jmp        004EFF10
 004EFE63    mov        eax,esi
 004EFE65    mov        edx,4EFF8C; 'NULL'
 004EFE6A    call       @LStrAsg
>004EFE6F    jmp        004EFF10
 004EFE74    lea        ecx,[ebp-5C]
 004EFE77    lea        edx,[ebp-38]
 004EFE7A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004EFE7F    mov        eax,dword ptr [eax]
 004EFE81    mov        ebx,dword ptr [eax]
 004EFE83    call       dword ptr [ebx+40]
 004EFE86    mov        edx,dword ptr [ebp-5C]
 004EFE89    lea        eax,[ebp-8]
 004EFE8C    mov        ecx,4F0018; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 004EFE91    call       @IntfCast
 004EFE96    mov        eax,dword ptr [ebp-8]
 004EFE99    mov        edx,dword ptr [eax]
 004EFE9B    call       dword ptr [edx+0C]
 004EFE9E    test       al,al
>004EFEA0    jne        004EFEF6
 004EFEA2    lea        edx,[ebp-0C]
 004EFEA5    mov        eax,dword ptr [ebp-8]
 004EFEA8    mov        ecx,dword ptr [eax]
 004EFEAA    call       dword ptr [ecx+18]
 004EFEAD    mov        eax,dword ptr [ebp-0C]
 004EFEB0    call       @LStrLen
 004EFEB5    imul       edx,eax,2
>004EFEB8    jno        004EFEBF
 004EFEBA    call       @IntOver
 004EFEBF    mov        eax,esi
 004EFEC1    call       @LStrSetLength
 004EFEC6    mov        eax,dword ptr [ebp-0C]
 004EFEC9    call       @LStrLen
 004EFECE    push       eax
 004EFECF    mov        eax,dword ptr [esi]
 004EFED1    call       @LStrToPChar
 004EFED6    push       eax
 004EFED7    mov        eax,dword ptr [ebp-0C]
 004EFEDA    call       @LStrToPChar
 004EFEDF    pop        edx
 004EFEE0    pop        ecx
 004EFEE1    call       BinToHex
 004EFEE6    mov        ecx,dword ptr [esi]
 004EFEE8    mov        eax,esi
 004EFEEA    mov        edx,4EFFB4; '0x'
 004EFEEF    call       @LStrCat3
>004EFEF4    jmp        004EFF10
 004EFEF6    mov        eax,esi
 004EFEF8    mov        edx,4EFF8C; 'NULL'
 004EFEFD    call       @LStrAsg
>004EFF02    jmp        004EFF10
 004EFF04    mov        eax,esi
 004EFF06    mov        edx,4EFF8C; 'NULL'
 004EFF0B    call       @LStrAsg
 004EFF10    xor        eax,eax
 004EFF12    pop        edx
 004EFF13    pop        ecx
 004EFF14    pop        ecx
 004EFF15    mov        dword ptr fs:[eax],edx
 004EFF18    push       4EFF7B
 004EFF1D    lea        eax,[ebp-5C]
 004EFF20    call       @IntfClear
 004EFF25    lea        eax,[ebp-58]
 004EFF28    mov        edx,2
 004EFF2D    call       @LStrArrayClr
 004EFF32    lea        eax,[ebp-50]
 004EFF35    call       @IntfClear
 004EFF3A    lea        eax,[ebp-4C]
 004EFF3D    mov        edx,5
 004EFF42    call       @LStrArrayClr
 004EFF47    lea        eax,[ebp-38]
 004EFF4A    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004EFF50    call       @FinalizeRecord
 004EFF55    lea        eax,[ebp-0C]
 004EFF58    call       @LStrClr
 004EFF5D    lea        eax,[ebp-8]
 004EFF60    call       @IntfClear
 004EFF65    lea        eax,[ebp-4]
 004EFF68    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004EFF6E    call       @DynArrayClear
 004EFF73    ret
<004EFF74    jmp        @HandleFinally
<004EFF79    jmp        004EFF1D
 004EFF7B    pop        edi
 004EFF7C    pop        esi
 004EFF7D    pop        ebx
 004EFF7E    mov        esp,ebp
 004EFF80    pop        ebp
 004EFF81    ret
*}
//end;

end.