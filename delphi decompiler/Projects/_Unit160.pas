{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit160;

interface

uses
  Classes, Windows, Graphics, ZTokenizer, _Unit159, _Unit146;

type
  TZPostgreSQLNumberState = class(TZNumberState)
  public
    //procedure sub_0051CF0C(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZPostgreSQLQuoteState = class(TZMySQLQuoteState)
  public
    //procedure sub_0051D0D8(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZPostgreSQLCommentState = class(TZCppCommentState)
  public
    //procedure sub_0051D10C(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZPostgreSQLSymbolState = class(TZSymbolState)
    //constructor Create(?:TZPostgreSQLSymbolState; _Dv__:Boolean);
  end;
  TZPostgreSQLWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZPostgreSQLWordState; _Dv__:Boolean);
  end;
  TZPostgreSQLTokenizer = class(TZTokenizer)
    //constructor Create(?:TZPostgreSQLTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0051CE74
//procedure sub_0051CE74(?:AnsiString; ?:?);
//begin
{*
 0051CE74    push       ebp
 0051CE75    mov        ebp,esp
 0051CE77    push       0
 0051CE79    push       ebx
 0051CE7A    push       esi
 0051CE7B    push       edi
 0051CE7C    mov        ebx,eax
 0051CE7E    mov        esi,dword ptr [ebp+8]
 0051CE81    dec        esi
 0051CE82    xor        eax,eax
 0051CE84    push       ebp
 0051CE85    push       51CEFD
 0051CE8A    push       dword ptr fs:[eax]
 0051CE8D    mov        dword ptr fs:[eax],esp
 0051CE90    mov        eax,ebx
 0051CE92    call       @LStrClr
 0051CE97    mov        byte ptr [esi],0
>0051CE9A    jmp        0051CED1
 0051CE9C    mov        al,byte ptr [esi]
 0051CE9E    add        al,0D0
 0051CEA0    sub        al,0A
>0051CEA2    jae        0051CEBD
 0051CEA4    lea        eax,[ebp-4]
 0051CEA7    mov        dl,byte ptr [esi]
 0051CEA9    call       @LStrFromChar
 0051CEAE    mov        edx,dword ptr [ebp-4]
 0051CEB1    mov        eax,ebx
 0051CEB3    call       @LStrCat
 0051CEB8    mov        byte ptr [esi],0
>0051CEBB    jmp        0051CED1
 0051CEBD    mov        eax,dword ptr [ebp+8]
 0051CEC0    mov        eax,dword ptr [eax-8]
 0051CEC3    mov        cx,1
 0051CEC7    or         edx,0FFFFFFFF
 0051CECA    mov        ebx,dword ptr [eax]
 0051CECC    call       dword ptr [ebx+14]
>0051CECF    jmp        0051CEE7
 0051CED1    mov        edx,esi
 0051CED3    mov        eax,dword ptr [ebp+8]
 0051CED6    mov        eax,dword ptr [eax-8]
 0051CED9    mov        ecx,1
 0051CEDE    mov        edi,dword ptr [eax]
 0051CEE0    call       dword ptr [edi+0C]
 0051CEE3    test       eax,eax
<0051CEE5    jg         0051CE9C
 0051CEE7    xor        eax,eax
 0051CEE9    pop        edx
 0051CEEA    pop        ecx
 0051CEEB    pop        ecx
 0051CEEC    mov        dword ptr fs:[eax],edx
 0051CEEF    push       51CF04
 0051CEF4    lea        eax,[ebp-4]
 0051CEF7    call       @LStrClr
 0051CEFC    ret
<0051CEFD    jmp        @HandleFinally
<0051CF02    jmp        0051CEF4
 0051CF04    pop        edi
 0051CF05    pop        esi
 0051CF06    pop        ebx
 0051CF07    pop        ecx
 0051CF08    pop        ebp
 0051CF09    ret
*}
//end;

//0051CF0C
//procedure sub_0051CF0C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051CF0C    push       ebp
 0051CF0D    mov        ebp,esp
 0051CF0F    push       ecx
 0051CF10    mov        ecx,4
 0051CF15    push       0
 0051CF17    push       0
 0051CF19    dec        ecx
<0051CF1A    jne        0051CF15
 0051CF1C    xchg       ecx,dword ptr [ebp-4]
 0051CF1F    push       ebx
 0051CF20    push       esi
 0051CF21    push       edi
 0051CF22    mov        byte ptr [ebp-9],cl
 0051CF25    mov        dword ptr [ebp-8],edx
 0051CF28    mov        esi,dword ptr [ebp+8]
 0051CF2B    xor        eax,eax
 0051CF2D    push       ebp
 0051CF2E    push       51D0BC
 0051CF33    push       dword ptr fs:[eax]
 0051CF36    mov        dword ptr fs:[eax],esp
 0051CF39    cmp        byte ptr [ebp-9],2E
 0051CF3D    sete       bl
 0051CF40    mov        eax,esi
 0051CF42    mov        dl,byte ptr [ebp-9]
 0051CF45    call       @LStrFromChar
 0051CF4A    mov        byte ptr [esi+4],0
 0051CF4E    mov        byte ptr [ebp-1],0
 0051CF52    test       bl,bl
>0051CF54    jne        0051CF9A
 0051CF56    push       ebp
 0051CF57    lea        eax,[ebp-10]
 0051CF5A    call       0051CE74
 0051CF5F    pop        ecx
 0051CF60    mov        edx,dword ptr [ebp-10]
 0051CF63    mov        eax,esi
 0051CF65    call       @LStrCat
 0051CF6A    cmp        byte ptr [ebp-1],2E
 0051CF6E    sete       bl
 0051CF71    test       bl,bl
>0051CF73    je         0051CF9A
 0051CF75    lea        edx,[ebp-0A]
 0051CF78    mov        ecx,1
 0051CF7D    mov        eax,dword ptr [ebp-8]
 0051CF80    mov        edi,dword ptr [eax]
 0051CF82    call       dword ptr [edi+0C]
 0051CF85    lea        eax,[ebp-14]
 0051CF88    mov        dl,byte ptr [ebp-0A]
 0051CF8B    call       @LStrFromChar
 0051CF90    mov        edx,dword ptr [ebp-14]
 0051CF93    mov        eax,esi
 0051CF95    call       @LStrCat
 0051CF9A    test       bl,bl
>0051CF9C    je         0051CFB2
 0051CF9E    push       ebp
 0051CF9F    lea        eax,[ebp-18]
 0051CFA2    call       0051CE74
 0051CFA7    pop        ecx
 0051CFA8    mov        edx,dword ptr [ebp-18]
 0051CFAB    mov        eax,esi
 0051CFAD    call       @LStrCat
 0051CFB2    mov        al,byte ptr [ebp-1]
 0051CFB5    sub        al,45
>0051CFB7    je         0051CFC1
 0051CFB9    sub        al,20
>0051CFBB    jne        0051D065
 0051CFC1    lea        edx,[ebp-0A]
 0051CFC4    mov        ecx,1
 0051CFC9    mov        eax,dword ptr [ebp-8]
 0051CFCC    mov        ebx,dword ptr [eax]
 0051CFCE    call       dword ptr [ebx+0C]
 0051CFD1    lea        eax,[ebp-1C]
 0051CFD4    mov        dl,byte ptr [ebp-0A]
 0051CFD7    call       @LStrFromChar
 0051CFDC    mov        edx,dword ptr [ebp-1C]
 0051CFDF    mov        eax,esi
 0051CFE1    call       @LStrCat
 0051CFE6    mov        bl,1
 0051CFE8    lea        edx,[ebp-0A]
 0051CFEB    mov        ecx,1
 0051CFF0    mov        eax,dword ptr [ebp-8]
 0051CFF3    mov        edi,dword ptr [eax]
 0051CFF5    call       dword ptr [edi+0C]
 0051CFF8    mov        al,byte ptr [ebp-0A]
 0051CFFB    sub        al,2B
>0051CFFD    je         0051D009
 0051CFFF    sub        al,2
>0051D001    je         0051D009
 0051D003    add        al,0FD
 0051D005    sub        al,0A
>0051D007    jae        0051D034
 0051D009    push       dword ptr [esi]
 0051D00B    lea        eax,[ebp-20]
 0051D00E    mov        dl,byte ptr [ebp-0A]
 0051D011    call       @LStrFromChar
 0051D016    push       dword ptr [ebp-20]
 0051D019    push       ebp
 0051D01A    lea        eax,[ebp-24]
 0051D01D    call       0051CE74
 0051D022    pop        ecx
 0051D023    push       dword ptr [ebp-24]
 0051D026    mov        eax,esi
 0051D028    mov        edx,3
 0051D02D    call       @LStrCatN
>0051D032    jmp        0051D065
 0051D034    push       esi
 0051D035    mov        eax,dword ptr [esi]
 0051D037    call       @LStrLen
 0051D03C    mov        ecx,eax
 0051D03E    sub        ecx,1
>0051D041    jno        0051D048
 0051D043    call       @IntOver
 0051D048    mov        eax,dword ptr [esi]
 0051D04A    mov        edx,1
 0051D04F    call       @LStrCopy
 0051D054    mov        cx,1
 0051D058    mov        edx,0FFFFFFFE
 0051D05D    mov        eax,dword ptr [ebp-8]
 0051D060    mov        edi,dword ptr [eax]
 0051D062    call       dword ptr [edi+14]
 0051D065    mov        eax,dword ptr [esi]
 0051D067    mov        edx,51D0D4; '.'
 0051D06C    call       @LStrCmp
>0051D071    jne        0051D093
 0051D073    mov        eax,dword ptr [ebp+0C]
 0051D076    mov        ebx,dword ptr [eax+41C]
 0051D07C    test       ebx,ebx
>0051D07E    je         0051D0A1
 0051D080    mov        eax,dword ptr [ebp+0C]
 0051D083    push       eax
 0051D084    push       esi
 0051D085    mov        eax,ebx
 0051D087    mov        cl,byte ptr [ebp-9]
 0051D08A    mov        edx,dword ptr [ebp-8]
 0051D08D    mov        ebx,dword ptr [eax]
 0051D08F    call       dword ptr [ebx]
>0051D091    jmp        0051D0A1
 0051D093    test       bl,bl
>0051D095    je         0051D09D
 0051D097    mov        byte ptr [esi+4],2
>0051D09B    jmp        0051D0A1
 0051D09D    mov        byte ptr [esi+4],3
 0051D0A1    xor        eax,eax
 0051D0A3    pop        edx
 0051D0A4    pop        ecx
 0051D0A5    pop        ecx
 0051D0A6    mov        dword ptr fs:[eax],edx
 0051D0A9    push       51D0C3
 0051D0AE    lea        eax,[ebp-24]
 0051D0B1    mov        edx,6
 0051D0B6    call       @LStrArrayClr
 0051D0BB    ret
<0051D0BC    jmp        @HandleFinally
<0051D0C1    jmp        0051D0AE
 0051D0C3    pop        edi
 0051D0C4    pop        esi
 0051D0C5    pop        ebx
 0051D0C6    mov        esp,ebp
 0051D0C8    pop        ebp
 0051D0C9    ret        8
*}
//end;

//0051D0D8
//procedure sub_0051D0D8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051D0D8    push       ebp
 0051D0D9    mov        ebp,esp
 0051D0DB    push       ecx
 0051D0DC    push       ebx
 0051D0DD    push       esi
 0051D0DE    push       edi
 0051D0DF    mov        ebx,ecx
 0051D0E1    mov        dword ptr [ebp-4],edx
 0051D0E4    mov        esi,eax
 0051D0E6    mov        edi,dword ptr [ebp+8]
 0051D0E9    mov        eax,dword ptr [ebp+0C]
 0051D0EC    push       eax
 0051D0ED    push       edi
 0051D0EE    mov        ecx,ebx
 0051D0F0    mov        edx,dword ptr [ebp-4]
 0051D0F3    mov        eax,esi
 0051D0F5    call       00506E60
 0051D0FA    cmp        bl,22
>0051D0FD    jne        0051D103
 0051D0FF    mov        byte ptr [edi+4],9
 0051D103    pop        edi
 0051D104    pop        esi
 0051D105    pop        ebx
 0051D106    pop        ecx
 0051D107    pop        ebp
 0051D108    ret        8
*}
//end;

//0051D10C
//procedure sub_0051D10C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051D10C    push       ebp
 0051D10D    mov        ebp,esp
 0051D10F    add        esp,0FFFFFFEC
 0051D112    push       ebx
 0051D113    push       esi
 0051D114    push       edi
 0051D115    xor        ebx,ebx
 0051D117    mov        dword ptr [ebp-14],ebx
 0051D11A    mov        dword ptr [ebp-10],ebx
 0051D11D    mov        ebx,ecx
 0051D11F    mov        dword ptr [ebp-8],edx
 0051D122    mov        dword ptr [ebp-4],eax
 0051D125    mov        esi,dword ptr [ebp+8]
 0051D128    xor        eax,eax
 0051D12A    push       ebp
 0051D12B    push       51D233
 0051D130    push       dword ptr fs:[eax]
 0051D133    mov        dword ptr fs:[eax],esp
 0051D136    mov        byte ptr [esi+4],0
 0051D13A    mov        eax,esi
 0051D13C    mov        edx,ebx
 0051D13E    call       @LStrFromChar
 0051D143    cmp        bl,2D
>0051D146    jne        0051D19A
 0051D148    lea        edx,[ebp-9]
 0051D14B    mov        ecx,1
 0051D150    mov        eax,dword ptr [ebp-8]
 0051D153    mov        edi,dword ptr [eax]
 0051D155    call       dword ptr [edi+0C]
 0051D158    test       eax,eax
>0051D15A    jle        0051D185
 0051D15C    cmp        byte ptr [ebp-9],2D
>0051D160    jne        0051D185
 0051D162    mov        byte ptr [esi+4],0C
 0051D166    lea        ecx,[ebp-10]
 0051D169    mov        edx,dword ptr [ebp-8]
 0051D16C    mov        eax,dword ptr [ebp-4]
 0051D16F    call       004C0DB0
 0051D174    mov        ecx,dword ptr [ebp-10]
 0051D177    mov        eax,esi
 0051D179    mov        edx,51D24C; '--'
 0051D17E    call       @LStrCat3
>0051D183    jmp        0051D1EF
 0051D185    test       eax,eax
>0051D187    jle        0051D1EF
 0051D189    mov        cx,1
 0051D18D    or         edx,0FFFFFFFF
 0051D190    mov        eax,dword ptr [ebp-8]
 0051D193    mov        edi,dword ptr [eax]
 0051D195    call       dword ptr [edi+14]
>0051D198    jmp        0051D1EF
 0051D19A    cmp        bl,2F
>0051D19D    jne        0051D1EF
 0051D19F    lea        edx,[ebp-9]
 0051D1A2    mov        ecx,1
 0051D1A7    mov        eax,dword ptr [ebp-8]
 0051D1AA    mov        edi,dword ptr [eax]
 0051D1AC    call       dword ptr [edi+0C]
 0051D1AF    test       eax,eax
>0051D1B1    jle        0051D1DC
 0051D1B3    cmp        byte ptr [ebp-9],2A
>0051D1B7    jne        0051D1DC
 0051D1B9    mov        byte ptr [esi+4],0C
 0051D1BD    lea        ecx,[ebp-14]
 0051D1C0    mov        edx,dword ptr [ebp-8]
 0051D1C3    mov        eax,dword ptr [ebp-4]
 0051D1C6    call       004C0D28
 0051D1CB    mov        ecx,dword ptr [ebp-14]
 0051D1CE    mov        eax,esi
 0051D1D0    mov        edx,51D258; '/*'
 0051D1D5    call       @LStrCat3
>0051D1DA    jmp        0051D1EF
 0051D1DC    test       eax,eax
>0051D1DE    jle        0051D1EF
 0051D1E0    mov        cx,1
 0051D1E4    or         edx,0FFFFFFFF
 0051D1E7    mov        eax,dword ptr [ebp-8]
 0051D1EA    mov        edi,dword ptr [eax]
 0051D1EC    call       dword ptr [edi+14]
 0051D1EF    cmp        byte ptr [esi+4],0
>0051D1F3    jne        0051D218
 0051D1F5    mov        eax,dword ptr [ebp+0C]
 0051D1F8    cmp        dword ptr [eax+41C],0
>0051D1FF    je         0051D218
 0051D201    mov        eax,dword ptr [ebp+0C]
 0051D204    push       eax
 0051D205    push       esi
 0051D206    mov        eax,dword ptr [ebp+0C]
 0051D209    mov        eax,dword ptr [eax+41C]
 0051D20F    mov        ecx,ebx
 0051D211    mov        edx,dword ptr [ebp-8]
 0051D214    mov        ebx,dword ptr [eax]
 0051D216    call       dword ptr [ebx]
 0051D218    xor        eax,eax
 0051D21A    pop        edx
 0051D21B    pop        ecx
 0051D21C    pop        ecx
 0051D21D    mov        dword ptr fs:[eax],edx
 0051D220    push       51D23A
 0051D225    lea        eax,[ebp-14]
 0051D228    mov        edx,2
 0051D22D    call       @LStrArrayClr
 0051D232    ret
<0051D233    jmp        @HandleFinally
<0051D238    jmp        0051D225
 0051D23A    pop        edi
 0051D23B    pop        esi
 0051D23C    pop        ebx
 0051D23D    mov        esp,ebp
 0051D23F    pop        ebp
 0051D240    ret        8
*}
//end;

//0051D25C
//constructor TZPostgreSQLSymbolState.Create(?:TZPostgreSQLSymbolState; _Dv__:Boolean);
//begin
{*
 0051D25C    push       ebp
 0051D25D    mov        ebp,esp
 0051D25F    push       ebx
 0051D260    push       esi
 0051D261    test       dl,dl
>0051D263    je         0051D26D
 0051D265    add        esp,0FFFFFFF0
 0051D268    call       @ClassCreate
 0051D26D    mov        ebx,edx
 0051D26F    mov        esi,eax
 0051D271    xor        edx,edx
 0051D273    mov        eax,esi
 0051D275    call       004C15E4
 0051D27A    mov        edx,51D2DC; '<='
 0051D27F    mov        eax,esi
 0051D281    mov        ecx,dword ptr [eax]
 0051D283    call       dword ptr [ecx+4]; TZPostgreSQLSymbolState.sub_004C1658
 0051D286    mov        edx,51D2E8; '>='
 0051D28B    mov        eax,esi
 0051D28D    mov        ecx,dword ptr [eax]
 0051D28F    call       dword ptr [ecx+4]; TZPostgreSQLSymbolState.sub_004C1658
 0051D292    mov        edx,51D2F4; '<>'
 0051D297    mov        eax,esi
 0051D299    mov        ecx,dword ptr [eax]
 0051D29B    call       dword ptr [ecx+4]; TZPostgreSQLSymbolState.sub_004C1658
 0051D29E    mov        edx,51D300; '<<'
 0051D2A3    mov        eax,esi
 0051D2A5    mov        ecx,dword ptr [eax]
 0051D2A7    call       dword ptr [ecx+4]; TZPostgreSQLSymbolState.sub_004C1658
 0051D2AA    mov        edx,51D30C; '>>'
 0051D2AF    mov        eax,esi
 0051D2B1    mov        ecx,dword ptr [eax]
 0051D2B3    call       dword ptr [ecx+4]; TZPostgreSQLSymbolState.sub_004C1658
 0051D2B6    mov        eax,esi
 0051D2B8    test       bl,bl
>0051D2BA    je         0051D2CB
 0051D2BC    call       @AfterConstruction
 0051D2C1    pop        dword ptr fs:[0]
 0051D2C8    add        esp,0C
 0051D2CB    mov        eax,esi
 0051D2CD    pop        esi
 0051D2CE    pop        ebx
 0051D2CF    pop        ebp
 0051D2D0    ret
*}
//end;

//0051D310
//constructor TZPostgreSQLWordState.Create(?:TZPostgreSQLWordState; _Dv__:Boolean);
//begin
{*
 0051D310    push       ebp
 0051D311    mov        ebp,esp
 0051D313    push       ebx
 0051D314    push       esi
 0051D315    test       dl,dl
>0051D317    je         0051D321
 0051D319    add        esp,0FFFFFFF0
 0051D31C    call       @ClassCreate
 0051D321    mov        ebx,edx
 0051D323    mov        esi,eax
 0051D325    push       0
 0051D327    mov        cl,0FF
 0051D329    xor        edx,edx
 0051D32B    mov        eax,esi
 0051D32D    call       004C18EC
 0051D332    push       1
 0051D334    mov        cl,7A
 0051D336    mov        dl,61
 0051D338    mov        eax,esi
 0051D33A    call       004C18EC
 0051D33F    push       1
 0051D341    mov        cl,5A
 0051D343    mov        dl,41
 0051D345    mov        eax,esi
 0051D347    call       004C18EC
 0051D34C    push       1
 0051D34E    mov        cl,39
 0051D350    mov        dl,30
 0051D352    mov        eax,esi
 0051D354    call       004C18EC
 0051D359    push       1
 0051D35B    mov        cl,5F
 0051D35D    mov        dl,5F
 0051D35F    mov        eax,esi
 0051D361    call       004C18EC
 0051D366    push       1
 0051D368    mov        cl,0FF
 0051D36A    mov        dl,0C0
 0051D36C    mov        eax,esi
 0051D36E    call       004C18EC
 0051D373    mov        eax,esi
 0051D375    test       bl,bl
>0051D377    je         0051D388
 0051D379    call       @AfterConstruction
 0051D37E    pop        dword ptr fs:[0]
 0051D385    add        esp,0C
 0051D388    mov        eax,esi
 0051D38A    pop        esi
 0051D38B    pop        ebx
 0051D38C    pop        ebp
 0051D38D    ret
*}
//end;

//0051D390
//constructor TZPostgreSQLTokenizer.Create(?:TZPostgreSQLTokenizer; _Dv__:Boolean);
//begin
{*
 0051D390    push       ebp
 0051D391    mov        ebp,esp
 0051D393    push       ebx
 0051D394    push       esi
 0051D395    test       dl,dl
>0051D397    je         0051D3A1
 0051D399    add        esp,0FFFFFFF0
 0051D39C    call       @ClassCreate
 0051D3A1    mov        ebx,edx
 0051D3A3    mov        esi,eax
 0051D3A5    mov        dl,1
 0051D3A7    mov        eax,[004C0658]; TZWhitespaceState
 0051D3AC    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 0051D3B1    mov        dword ptr [esi+420],eax; TZPostgreSQLTokenizer.?f420:TZWhitespaceState
 0051D3B7    mov        dl,1
 0051D3B9    mov        eax,[0051CD30]; TZPostgreSQLSymbolState
 0051D3BE    call       TZPostgreSQLSymbolState.Create; TZPostgreSQLSymbolState.Create
 0051D3C3    mov        dword ptr [esi+41C],eax; TZPostgreSQLTokenizer.?f41C:TZGenericSQLSymbolState
 0051D3C9    mov        dl,1
 0051D3CB    mov        eax,[0051CBEC]; TZPostgreSQLNumberState
 0051D3D0    call       TObject.Create; TZPostgreSQLNumberState.Create
 0051D3D5    mov        dword ptr [esi+414],eax; TZPostgreSQLTokenizer.?f414:TZNumberState
 0051D3DB    mov        dl,1
 0051D3DD    mov        eax,[0051CC54]; TZPostgreSQLQuoteState
 0051D3E2    call       TObject.Create; TZPostgreSQLQuoteState.Create
 0051D3E7    mov        dword ptr [esi+418],eax; TZPostgreSQLTokenizer.?f418:TZGenericSQLQuoteState
 0051D3ED    mov        dl,1
 0051D3EF    mov        eax,[0051CD9C]; TZPostgreSQLWordState
 0051D3F4    call       TZPostgreSQLWordState.Create; TZPostgreSQLWordState.Create
 0051D3F9    mov        dword ptr [esi+424],eax; TZPostgreSQLTokenizer.?f424:TZGenericSQLWordState
 0051D3FF    mov        dl,1
 0051D401    mov        eax,[0051CCC4]; TZPostgreSQLCommentState
 0051D406    call       TObject.Create; TZPostgreSQLCommentState.Create
 0051D40B    mov        dword ptr [esi+410],eax; TZPostgreSQLTokenizer.?f410:TZCppCommentState
 0051D411    mov        eax,dword ptr [esi+41C]; TZPostgreSQLTokenizer.?f41C:TZGenericSQLSymbolState
 0051D417    push       eax
 0051D418    mov        cl,0FF
 0051D41A    xor        edx,edx
 0051D41C    mov        eax,esi
 0051D41E    call       004C19C8
 0051D423    mov        eax,dword ptr [esi+420]; TZPostgreSQLTokenizer.?f420:TZWhitespaceState
 0051D429    push       eax
 0051D42A    mov        cl,20
 0051D42C    xor        edx,edx
 0051D42E    mov        eax,esi
 0051D430    call       004C19C8
 0051D435    mov        eax,dword ptr [esi+424]; TZPostgreSQLTokenizer.?f424:TZGenericSQLWordState
 0051D43B    push       eax
 0051D43C    mov        cl,7A
 0051D43E    mov        dl,61
 0051D440    mov        eax,esi
 0051D442    call       004C19C8
 0051D447    mov        eax,dword ptr [esi+424]; TZPostgreSQLTokenizer.?f424:TZGenericSQLWordState
 0051D44D    push       eax
 0051D44E    mov        cl,5A
 0051D450    mov        dl,41
 0051D452    mov        eax,esi
 0051D454    call       004C19C8
 0051D459    mov        eax,dword ptr [esi+424]; TZPostgreSQLTokenizer.?f424:TZGenericSQLWordState
 0051D45F    push       eax
 0051D460    mov        cl,0FF
 0051D462    mov        dl,0C0
 0051D464    mov        eax,esi
 0051D466    call       004C19C8
 0051D46B    mov        eax,dword ptr [esi+424]; TZPostgreSQLTokenizer.?f424:TZGenericSQLWordState
 0051D471    push       eax
 0051D472    mov        cl,5F
 0051D474    mov        dl,5F
 0051D476    mov        eax,esi
 0051D478    call       004C19C8
 0051D47D    mov        eax,dword ptr [esi+414]; TZPostgreSQLTokenizer.?f414:TZNumberState
 0051D483    push       eax
 0051D484    mov        cl,39
 0051D486    mov        dl,30
 0051D488    mov        eax,esi
 0051D48A    call       004C19C8
 0051D48F    mov        eax,dword ptr [esi+414]; TZPostgreSQLTokenizer.?f414:TZNumberState
 0051D495    push       eax
 0051D496    mov        cl,2E
 0051D498    mov        dl,2E
 0051D49A    mov        eax,esi
 0051D49C    call       004C19C8
 0051D4A1    mov        eax,dword ptr [esi+418]; TZPostgreSQLTokenizer.?f418:TZGenericSQLQuoteState
 0051D4A7    push       eax
 0051D4A8    mov        cl,22
 0051D4AA    mov        dl,22
 0051D4AC    mov        eax,esi
 0051D4AE    call       004C19C8
 0051D4B3    mov        eax,dword ptr [esi+418]; TZPostgreSQLTokenizer.?f418:TZGenericSQLQuoteState
 0051D4B9    push       eax
 0051D4BA    mov        cl,27
 0051D4BC    mov        dl,27
 0051D4BE    mov        eax,esi
 0051D4C0    call       004C19C8
 0051D4C5    mov        eax,dword ptr [esi+410]; TZPostgreSQLTokenizer.?f410:TZCppCommentState
 0051D4CB    push       eax
 0051D4CC    mov        cl,2F
 0051D4CE    mov        dl,2F
 0051D4D0    mov        eax,esi
 0051D4D2    call       004C19C8
 0051D4D7    mov        eax,dword ptr [esi+410]; TZPostgreSQLTokenizer.?f410:TZCppCommentState
 0051D4DD    push       eax
 0051D4DE    mov        cl,2D
 0051D4E0    mov        dl,2D
 0051D4E2    mov        eax,esi
 0051D4E4    call       004C19C8
 0051D4E9    mov        eax,esi
 0051D4EB    test       bl,bl
>0051D4ED    je         0051D4FE
 0051D4EF    call       @AfterConstruction
 0051D4F4    pop        dword ptr fs:[0]
 0051D4FB    add        esp,0C
 0051D4FE    mov        eax,esi
 0051D500    pop        esi
 0051D501    pop        ebx
 0051D502    pop        ebp
 0051D503    ret
*}
//end;

end.