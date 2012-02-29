{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit171;

interface

uses
  Classes, Windows, Graphics;


implementation

//0053CD94
//function sub_0053CD94(?:AnsiString; ?:?; ?:?):?;
//begin
{*
 0053CD94    push       ebp
 0053CD95    mov        ebp,esp
 0053CD97    push       0
 0053CD99    push       0
 0053CD9B    push       0
 0053CD9D    push       0
 0053CD9F    push       0
 0053CDA1    push       0
 0053CDA3    push       0
 0053CDA5    push       ebx
 0053CDA6    push       esi
 0053CDA7    push       edi
 0053CDA8    mov        dword ptr [ebp-8],ecx
 0053CDAB    mov        esi,edx
 0053CDAD    mov        dword ptr [ebp-4],eax
 0053CDB0    mov        eax,dword ptr [ebp-4]
 0053CDB3    call       @LStrAddRef
 0053CDB8    xor        eax,eax
 0053CDBA    push       ebp
 0053CDBB    push       53D140
 0053CDC0    push       dword ptr fs:[eax]
 0053CDC3    mov        dword ptr fs:[eax],esp
 0053CDC6    lea        edx,[ebp-14]
 0053CDC9    mov        eax,dword ptr [ebp-4]
 0053CDCC    call       UpperCase
 0053CDD1    mov        edx,dword ptr [ebp-14]
 0053CDD4    lea        eax,[ebp-4]
 0053CDD7    call       @LStrLAsg
 0053CDDC    mov        bl,9
 0053CDDE    xor        eax,eax
 0053CDE0    mov        dword ptr [esi],eax
 0053CDE2    mov        eax,dword ptr [ebp-8]
 0053CDE5    xor        edx,edx
 0053CDE7    mov        dword ptr [eax],edx
 0053CDE9    mov        edx,dword ptr [ebp-4]
 0053CDEC    mov        eax,53D158; '('
 0053CDF1    call       @LStrPos
 0053CDF6    mov        edi,eax
 0053CDF8    mov        edx,dword ptr [ebp-4]
 0053CDFB    mov        eax,53D164; ')'
 0053CE00    call       @LStrPos
 0053CE05    mov        dword ptr [ebp-0C],eax
 0053CE08    test       edi,edi
>0053CE0A    jle        0053CEE9
 0053CE10    cmp        dword ptr [ebp-0C],0
>0053CE14    jle        0053CEE9
 0053CE1A    lea        eax,[ebp-10]
 0053CE1D    push       eax
 0053CE1E    mov        ecx,dword ptr [ebp-0C]
 0053CE21    sub        ecx,edi
>0053CE23    jno        0053CE2A
 0053CE25    call       @IntOver
 0053CE2A    sub        ecx,1
>0053CE2D    jno        0053CE34
 0053CE2F    call       @IntOver
 0053CE34    mov        edx,edi
 0053CE36    add        edx,1
>0053CE39    jno        0053CE40
 0053CE3B    call       @IntOver
 0053CE40    mov        eax,dword ptr [ebp-4]
 0053CE43    call       @LStrCopy
 0053CE48    lea        eax,[ebp-4]
 0053CE4B    push       eax
 0053CE4C    mov        ecx,edi
 0053CE4E    sub        ecx,1
>0053CE51    jno        0053CE58
 0053CE53    call       @IntOver
 0053CE58    mov        edx,1
 0053CE5D    mov        eax,dword ptr [ebp-4]
 0053CE60    call       @LStrCopy
 0053CE65    mov        edx,dword ptr [ebp-10]
 0053CE68    mov        eax,53D170; ','
 0053CE6D    call       @LStrPos
 0053CE72    mov        edi,eax
 0053CE74    test       edi,edi
>0053CE76    jle        0053CEDD
 0053CE78    lea        eax,[ebp-18]
 0053CE7B    push       eax
 0053CE7C    mov        ecx,edi
 0053CE7E    sub        ecx,1
>0053CE81    jno        0053CE88
 0053CE83    call       @IntOver
 0053CE88    mov        edx,1
 0053CE8D    mov        eax,dword ptr [ebp-10]
 0053CE90    call       @LStrCopy
 0053CE95    mov        eax,dword ptr [ebp-18]
 0053CE98    xor        edx,edx
 0053CE9A    call       StrToIntDef
 0053CE9F    mov        dword ptr [esi],eax
 0053CEA1    lea        eax,[ebp-1C]
 0053CEA4    push       eax
 0053CEA5    mov        eax,dword ptr [ebp-10]
 0053CEA8    call       @LStrLen
 0053CEAD    mov        ecx,eax
 0053CEAF    sub        ecx,edi
>0053CEB1    jno        0053CEB8
 0053CEB3    call       @IntOver
 0053CEB8    mov        edx,edi
 0053CEBA    add        edx,1
>0053CEBD    jno        0053CEC4
 0053CEBF    call       @IntOver
 0053CEC4    mov        eax,dword ptr [ebp-10]
 0053CEC7    call       @LStrCopy
 0053CECC    mov        eax,dword ptr [ebp-1C]
 0053CECF    xor        edx,edx
 0053CED1    call       StrToIntDef
 0053CED6    mov        edx,dword ptr [ebp-8]
 0053CED9    mov        dword ptr [edx],eax
>0053CEDB    jmp        0053CEE9
 0053CEDD    xor        edx,edx
 0053CEDF    mov        eax,dword ptr [ebp-10]
 0053CEE2    call       StrToIntDef
 0053CEE7    mov        dword ptr [esi],eax
 0053CEE9    mov        edx,53D17C; 'BOOL'
 0053CEEE    mov        eax,dword ptr [ebp-4]
 0053CEF1    call       004BEDE8
 0053CEF6    test       al,al
>0053CEF8    je         0053CF01
 0053CEFA    mov        bl,1
>0053CEFC    jmp        0053D0E6
 0053CF01    mov        eax,dword ptr [ebp-4]
 0053CF04    mov        edx,53D18C; 'TINYINT'
 0053CF09    call       @LStrCmp
>0053CF0E    jne        0053CF17
 0053CF10    mov        bl,2
>0053CF12    jmp        0053D0E6
 0053CF17    mov        eax,dword ptr [ebp-4]
 0053CF1A    mov        edx,53D19C; 'SMALLINT'
 0053CF1F    call       @LStrCmp
>0053CF24    jne        0053CF2D
 0053CF26    mov        bl,3
>0053CF28    jmp        0053D0E6
 0053CF2D    mov        eax,dword ptr [ebp-4]
 0053CF30    mov        edx,53D1B0; 'MEDIUMINT'
 0053CF35    call       @LStrCmp
>0053CF3A    jne        0053CF43
 0053CF3C    mov        bl,4
>0053CF3E    jmp        0053D0E6
 0053CF43    mov        edx,53D1C4; 'INT'
 0053CF48    mov        eax,dword ptr [ebp-4]
 0053CF4B    call       004BEDE8
 0053CF50    test       al,al
>0053CF52    je         0053CF5B
 0053CF54    mov        bl,4
>0053CF56    jmp        0053D0E6
 0053CF5B    mov        eax,dword ptr [ebp-4]
 0053CF5E    mov        edx,53D1D0; 'BIGINT'
 0053CF63    call       @LStrCmp
>0053CF68    jne        0053CF71
 0053CF6A    mov        bl,5
>0053CF6C    jmp        0053D0E6
 0053CF71    mov        edx,53D1E0; 'REAL'
 0053CF76    mov        eax,dword ptr [ebp-4]
 0053CF79    call       004BEDE8
 0053CF7E    test       al,al
>0053CF80    je         0053CF89
 0053CF82    mov        bl,7
>0053CF84    jmp        0053D0E6
 0053CF89    mov        edx,53D1F0; 'FLOAT'
 0053CF8E    mov        eax,dword ptr [ebp-4]
 0053CF91    call       004BEDE8
 0053CF96    test       al,al
>0053CF98    je         0053CFA1
 0053CF9A    mov        bl,7
>0053CF9C    jmp        0053D0E6
 0053CFA1    mov        eax,dword ptr [ebp-4]
 0053CFA4    mov        edx,53D200; 'NUMERIC'
 0053CFA9    call       @LStrCmp
>0053CFAE    je         0053CFCE
 0053CFB0    mov        eax,dword ptr [ebp-4]
 0053CFB3    mov        edx,53D210; 'DECIMAL'
 0053CFB8    call       @LStrCmp
>0053CFBD    je         0053CFCE
 0053CFBF    mov        eax,dword ptr [ebp-4]
 0053CFC2    mov        edx,53D220; 'NUMBER'
 0053CFC7    call       @LStrCmp
>0053CFCC    jne        0053CFD5
 0053CFCE    mov        bl,7
>0053CFD0    jmp        0053D0E6
 0053CFD5    mov        edx,53D230; 'DOUB'
 0053CFDA    mov        eax,dword ptr [ebp-4]
 0053CFDD    call       004BEDE8
 0053CFE2    test       al,al
>0053CFE4    je         0053CFED
 0053CFE6    mov        bl,7
>0053CFE8    jmp        0053D0E6
 0053CFED    mov        eax,dword ptr [ebp-4]
 0053CFF0    mov        edx,53D240; 'MONEY'
 0053CFF5    call       @LStrCmp
>0053CFFA    jne        0053D003
 0053CFFC    mov        bl,8
>0053CFFE    jmp        0053D0E6
 0053D003    mov        edx,53D250; 'CHAR'
 0053D008    mov        eax,dword ptr [ebp-4]
 0053D00B    call       004BEDE8
 0053D010    test       al,al
>0053D012    je         0053D01B
 0053D014    mov        bl,9
>0053D016    jmp        0053D0E6
 0053D01B    mov        eax,dword ptr [ebp-4]
 0053D01E    mov        edx,53D260; 'VARCHAR'
 0053D023    call       @LStrCmp
>0053D028    jne        0053D031
 0053D02A    mov        bl,9
>0053D02C    jmp        0053D0E6
 0053D031    mov        eax,dword ptr [ebp-4]
 0053D034    mov        edx,53D270; 'VARBINARY'
 0053D039    call       @LStrCmp
>0053D03E    jne        0053D047
 0053D040    mov        bl,0B
>0053D042    jmp        0053D0E6
 0053D047    mov        eax,dword ptr [ebp-4]
 0053D04A    mov        edx,53D284; 'BINARY'
 0053D04F    call       @LStrCmp
>0053D054    jne        0053D05D
 0053D056    mov        bl,0B
>0053D058    jmp        0053D0E6
 0053D05D    mov        eax,dword ptr [ebp-4]
 0053D060    mov        edx,53D294; 'DATE'
 0053D065    call       @LStrCmp
>0053D06A    jne        0053D070
 0053D06C    mov        bl,0C
>0053D06E    jmp        0053D0E6
 0053D070    mov        eax,dword ptr [ebp-4]
 0053D073    mov        edx,53D2A4; 'TIME'
 0053D078    call       @LStrCmp
>0053D07D    jne        0053D083
 0053D07F    mov        bl,0D
>0053D081    jmp        0053D0E6
 0053D083    mov        eax,dword ptr [ebp-4]
 0053D086    mov        edx,53D2B4; 'TIMESTAMP'
 0053D08B    call       @LStrCmp
>0053D090    jne        0053D096
 0053D092    mov        bl,0E
>0053D094    jmp        0053D0E6
 0053D096    mov        eax,dword ptr [ebp-4]
 0053D099    mov        edx,53D2C8; 'DATETIME'
 0053D09E    call       @LStrCmp
>0053D0A3    jne        0053D0A9
 0053D0A5    mov        bl,0E
>0053D0A7    jmp        0053D0E6
 0053D0A9    mov        edx,dword ptr [ebp-4]
 0053D0AC    mov        eax,53D2DC; 'BLOB'
 0053D0B1    call       @LStrPos
 0053D0B6    test       eax,eax
>0053D0B8    jle        0053D0BE
 0053D0BA    mov        bl,11
>0053D0BC    jmp        0053D0E6
 0053D0BE    mov        edx,dword ptr [ebp-4]
 0053D0C1    mov        eax,53D2EC; 'CLOB'
 0053D0C6    call       @LStrPos
 0053D0CB    test       eax,eax
>0053D0CD    jle        0053D0D3
 0053D0CF    mov        bl,0F
>0053D0D1    jmp        0053D0E6
 0053D0D3    mov        edx,dword ptr [ebp-4]
 0053D0D6    mov        eax,53D2FC; 'TEXT'
 0053D0DB    call       @LStrPos
 0053D0E0    test       eax,eax
>0053D0E2    jle        0053D0E6
 0053D0E4    mov        bl,0F
 0053D0E6    cmp        bl,4
>0053D0E9    jne        0053D10D
 0053D0EB    cmp        dword ptr [esi],0
>0053D0EE    je         0053D10D
 0053D0F0    cmp        dword ptr [esi],2
>0053D0F3    jg         0053D0F9
 0053D0F5    mov        bl,2
>0053D0F7    jmp        0053D10D
 0053D0F9    cmp        dword ptr [esi],4
>0053D0FC    jg         0053D102
 0053D0FE    mov        bl,3
>0053D100    jmp        0053D10D
 0053D102    cmp        dword ptr [esi],9
>0053D105    jg         0053D10B
 0053D107    mov        bl,4
>0053D109    jmp        0053D10D
 0053D10B    mov        bl,5
 0053D10D    cmp        bl,9
>0053D110    jne        0053D11D
 0053D112    cmp        dword ptr [esi],0
>0053D115    jne        0053D11D
 0053D117    mov        dword ptr [esi],0FF
 0053D11D    xor        eax,eax
 0053D11F    pop        edx
 0053D120    pop        ecx
 0053D121    pop        ecx
 0053D122    mov        dword ptr fs:[eax],edx
 0053D125    push       53D147
 0053D12A    lea        eax,[ebp-1C]
 0053D12D    mov        edx,4
 0053D132    call       @LStrArrayClr
 0053D137    lea        eax,[ebp-4]
 0053D13A    call       @LStrClr
 0053D13F    ret
<0053D140    jmp        @HandleFinally
<0053D145    jmp        0053D12A
 0053D147    mov        eax,ebx
 0053D149    pop        edi
 0053D14A    pop        esi
 0053D14B    pop        ebx
 0053D14C    mov        esp,ebp
 0053D14E    pop        ebp
 0053D14F    ret
*}
//end;

//0053D304
//procedure sub_0053D304(?:IZSQLitePlainDriver; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053D304    push       ebp
 0053D305    mov        ebp,esp
 0053D307    push       0
 0053D309    push       0
 0053D30B    push       0
 0053D30D    push       0
 0053D30F    push       0
 0053D311    push       0
 0053D313    push       0
 0053D315    push       0
 0053D317    push       ebx
 0053D318    push       esi
 0053D319    mov        esi,ecx
 0053D31B    mov        ebx,edx
 0053D31D    mov        dword ptr [ebp-4],eax
 0053D320    mov        eax,dword ptr [ebp-4]
 0053D323    call       @IntfAddRef
 0053D328    mov        eax,dword ptr [ebp+8]
 0053D32B    call       @LStrAddRef
 0053D330    xor        eax,eax
 0053D332    push       ebp
 0053D333    push       53D427
 0053D338    push       dword ptr fs:[eax]
 0053D33B    mov        dword ptr fs:[eax],esp
 0053D33E    test       esi,esi
>0053D340    je         0053D363
 0053D342    lea        edx,[ebp-0C]
 0053D345    mov        eax,esi
 0053D347    call       StrPas
 0053D34C    mov        eax,dword ptr [ebp-0C]
 0053D34F    lea        edx,[ebp-8]
 0053D352    call       Trim
 0053D357    mov        edx,esi
 0053D359    mov        eax,dword ptr [ebp-4]
 0053D35C    mov        ecx,dword ptr [eax]
 0053D35E    call       dword ptr [ecx+4C]
>0053D361    jmp        0053D36B
 0053D363    lea        eax,[ebp-8]
 0053D366    call       @LStrClr
 0053D36B    mov        eax,ebx
 0053D36D    test       eax,eax
>0053D36F    je         0053D3FC
 0053D375    add        eax,0FFFFFF9C
 0053D378    sub        eax,2
>0053D37B    jb         0053D3FC
 0053D37D    cmp        dword ptr [ebp-8],0
>0053D381    jne        0053D395
 0053D383    mov        edx,ebx
 0053D385    mov        eax,dword ptr [ebp-4]
 0053D388    mov        ecx,dword ptr [eax]
 0053D38A    call       dword ptr [ecx+30]
 0053D38D    lea        edx,[ebp-8]
 0053D390    call       StrPas
 0053D395    mov        eax,dword ptr [ebp+8]
 0053D398    push       eax
 0053D399    push       ebx
 0053D39A    mov        eax,dword ptr [ebp-8]
 0053D39D    push       eax
 0053D39E    lea        edx,[ebp-10]
 0053D3A1    mov        eax,dword ptr [ebp-4]
 0053D3A4    mov        ecx,dword ptr [eax]
 0053D3A6    call       dword ptr [ecx+0C]
 0053D3A9    mov        ecx,dword ptr [ebp-10]
 0053D3AC    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053D3B1    mov        eax,dword ptr [eax]
 0053D3B3    mov        dl,byte ptr [ebp+0C]
 0053D3B6    mov        esi,dword ptr [eax]
 0053D3B8    call       dword ptr [esi+40]
 0053D3BB    lea        eax,[ebp-14]
 0053D3BE    push       eax
 0053D3BF    lea        edx,[ebp-18]
 0053D3C2    mov        eax,[0061C5CC]; ^#122.sResString0:TResStringRec
 0053D3C7    call       LoadResString
 0053D3CC    mov        eax,dword ptr [ebp-18]
 0053D3CF    push       eax
 0053D3D0    mov        eax,dword ptr [ebp-8]
 0053D3D3    mov        dword ptr [ebp-20],eax
 0053D3D6    mov        byte ptr [ebp-1C],0B
 0053D3DA    lea        edx,[ebp-20]
 0053D3DD    xor        ecx,ecx
 0053D3DF    pop        eax
 0053D3E0    call       Format
 0053D3E5    mov        eax,dword ptr [ebp-14]
 0053D3E8    push       eax
 0053D3E9    mov        ecx,ebx
 0053D3EB    mov        dl,1
 0053D3ED    mov        eax,[004C6D20]; EZSQLException
 0053D3F2    call       EZSQLException.Create; EZSQLException.Create
 0053D3F7    call       @RaiseExcept
 0053D3FC    xor        eax,eax
 0053D3FE    pop        edx
 0053D3FF    pop        ecx
 0053D400    pop        ecx
 0053D401    mov        dword ptr fs:[eax],edx
 0053D404    push       53D42E
 0053D409    lea        eax,[ebp-18]
 0053D40C    mov        edx,5
 0053D411    call       @LStrArrayClr
 0053D416    lea        eax,[ebp-4]
 0053D419    call       @IntfClear
 0053D41E    lea        eax,[ebp+8]
 0053D421    call       @LStrClr
 0053D426    ret
<0053D427    jmp        @HandleFinally
<0053D42C    jmp        0053D409
 0053D42E    pop        esi
 0053D42F    pop        ebx
 0053D430    mov        esp,ebp
 0053D432    pop        ebp
 0053D433    ret        8
*}
//end;

//0053D438
//procedure sub_0053D438(?:AnsiString; ?:?);
//begin
{*
 0053D438    push       ebp
 0053D439    mov        ebp,esp
 0053D43B    add        esp,0FFFFFFF8
 0053D43E    push       ebx
 0053D43F    push       esi
 0053D440    push       edi
 0053D441    mov        dword ptr [ebp-8],edx
 0053D444    mov        dword ptr [ebp-4],eax
 0053D447    mov        eax,dword ptr [ebp-4]
 0053D44A    call       @LStrAddRef
 0053D44F    xor        eax,eax
 0053D451    push       ebp
 0053D452    push       53D52C
 0053D457    push       dword ptr fs:[eax]
 0053D45A    mov        dword ptr fs:[eax],esp
 0053D45D    mov        eax,dword ptr [ebp-4]
 0053D460    call       @LStrLen
 0053D465    mov        edi,eax
 0053D467    mov        eax,dword ptr [ebp-4]
 0053D46A    call       @LStrToPChar
 0053D46F    mov        ebx,eax
 0053D471    mov        esi,2
 0053D476    mov        eax,edi
 0053D478    test       eax,eax
>0053D47A    jle        0053D4A8
 0053D47C    mov        dl,byte ptr [ebx]
 0053D47E    test       dl,dl
>0053D480    je         0053D48C
 0053D482    sub        dl,25
>0053D485    je         0053D48C
 0053D487    sub        dl,2
>0053D48A    jne        0053D498
 0053D48C    add        esi,2
>0053D48F    jno        0053D496
 0053D491    call       @IntOver
>0053D496    jmp        0053D4A2
 0053D498    add        esi,1
>0053D49B    jno        0053D4A2
 0053D49D    call       @IntOver
 0053D4A2    add        ebx,1
 0053D4A5    dec        eax
<0053D4A6    jne        0053D47C
 0053D4A8    mov        eax,dword ptr [ebp-4]
 0053D4AB    call       @LStrToPChar
 0053D4B0    mov        ebx,eax
 0053D4B2    mov        eax,dword ptr [ebp-8]
 0053D4B5    mov        edx,esi
 0053D4B7    call       @LStrSetLength
 0053D4BC    mov        eax,dword ptr [ebp-8]
 0053D4BF    mov        eax,dword ptr [eax]
 0053D4C1    call       @LStrToPChar
 0053D4C6    mov        esi,eax
 0053D4C8    mov        byte ptr [esi],27
 0053D4CB    add        esi,1
 0053D4CE    mov        eax,edi
 0053D4D0    test       eax,eax
>0053D4D2    jle        0053D513
 0053D4D4    mov        dl,byte ptr [ebx]
 0053D4D6    test       dl,dl
>0053D4D8    jne        0053D4E6
 0053D4DA    mov        byte ptr [esi],25
 0053D4DD    mov        byte ptr [esi+1],30
 0053D4E1    add        esi,2
>0053D4E4    jmp        0053D50D
 0053D4E6    cmp        dl,25
>0053D4E9    jne        0053D4F7
 0053D4EB    mov        byte ptr [esi],25
 0053D4EE    mov        byte ptr [esi+1],25
 0053D4F2    add        esi,2
>0053D4F5    jmp        0053D50D
 0053D4F7    cmp        dl,27
>0053D4FA    jne        0053D508
 0053D4FC    mov        byte ptr [esi],27
 0053D4FF    mov        byte ptr [esi+1],27
 0053D503    add        esi,2
>0053D506    jmp        0053D50D
 0053D508    mov        byte ptr [esi],dl
 0053D50A    add        esi,1
 0053D50D    add        ebx,1
 0053D510    dec        eax
<0053D511    jne        0053D4D4
 0053D513    mov        byte ptr [esi],27
 0053D516    xor        eax,eax
 0053D518    pop        edx
 0053D519    pop        ecx
 0053D51A    pop        ecx
 0053D51B    mov        dword ptr fs:[eax],edx
 0053D51E    push       53D533
 0053D523    lea        eax,[ebp-4]
 0053D526    call       @LStrClr
 0053D52B    ret
<0053D52C    jmp        @HandleFinally
<0053D531    jmp        0053D523
 0053D533    pop        edi
 0053D534    pop        esi
 0053D535    pop        ebx
 0053D536    pop        ecx
 0053D537    pop        ecx
 0053D538    pop        ebp
 0053D539    ret
*}
//end;

//0053D53C
//procedure sub_0053D53C(?:AnsiString; ?:AnsiString);
//begin
{*
 0053D53C    push       ebp
 0053D53D    mov        ebp,esp
 0053D53F    add        esp,0FFFFFFF8
 0053D542    push       ebx
 0053D543    push       esi
 0053D544    push       edi
 0053D545    mov        dword ptr [ebp-8],edx
 0053D548    mov        dword ptr [ebp-4],eax
 0053D54B    mov        eax,dword ptr [ebp-4]
 0053D54E    call       @LStrAddRef
 0053D553    xor        eax,eax
 0053D555    push       ebp
 0053D556    push       53D5F6
 0053D55B    push       dword ptr fs:[eax]
 0053D55E    mov        dword ptr fs:[eax],esp
 0053D561    mov        eax,dword ptr [ebp-4]
 0053D564    call       @LStrLen
 0053D569    mov        esi,eax
 0053D56B    mov        eax,dword ptr [ebp-4]
 0053D56E    call       @LStrToPChar
 0053D573    mov        ebx,eax
 0053D575    mov        eax,dword ptr [ebp-8]
 0053D578    mov        edx,esi
 0053D57A    call       @LStrSetLength
 0053D57F    xor        edi,edi
 0053D581    mov        eax,dword ptr [ebp-8]
 0053D584    mov        eax,dword ptr [eax]
 0053D586    call       @LStrToPChar
 0053D58B    test       esi,esi
>0053D58D    jle        0053D5D6
 0053D58F    cmp        byte ptr [ebx],25
>0053D592    jne        0053D5B4
 0053D594    add        ebx,1
 0053D597    cmp        byte ptr [ebx],30
>0053D59A    je         0053D5A2
 0053D59C    mov        dl,byte ptr [ebx]
 0053D59E    mov        byte ptr [eax],dl
>0053D5A0    jmp        0053D5A5
 0053D5A2    mov        byte ptr [eax],0
 0053D5A5    add        ebx,1
 0053D5A8    sub        esi,2
>0053D5AB    jno        0053D5B2
 0053D5AD    call       @IntOver
>0053D5B2    jmp        0053D5C5
 0053D5B4    mov        dl,byte ptr [ebx]
 0053D5B6    mov        byte ptr [eax],dl
 0053D5B8    add        ebx,1
 0053D5BB    sub        esi,1
>0053D5BE    jno        0053D5C5
 0053D5C0    call       @IntOver
 0053D5C5    add        eax,1
 0053D5C8    add        edi,1
>0053D5CB    jno        0053D5D2
 0053D5CD    call       @IntOver
 0053D5D2    test       esi,esi
<0053D5D4    jg         0053D58F
 0053D5D6    mov        eax,dword ptr [ebp-8]
 0053D5D9    mov        edx,edi
 0053D5DB    call       @LStrSetLength
 0053D5E0    xor        eax,eax
 0053D5E2    pop        edx
 0053D5E3    pop        ecx
 0053D5E4    pop        ecx
 0053D5E5    mov        dword ptr fs:[eax],edx
 0053D5E8    push       53D5FD
 0053D5ED    lea        eax,[ebp-4]
 0053D5F0    call       @LStrClr
 0053D5F5    ret
<0053D5F6    jmp        @HandleFinally
<0053D5FB    jmp        0053D5ED
 0053D5FD    pop        edi
 0053D5FE    pop        esi
 0053D5FF    pop        ebx
 0053D600    pop        ecx
 0053D601    pop        ecx
 0053D602    pop        ebp
 0053D603    ret
*}
//end;

end.