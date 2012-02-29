{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit146;

interface

uses
  Classes, Windows, Graphics, ZTokenizer;

type
  TZGenericSQLSymbolState = class(TZSymbolState)
    //constructor Create(?:TZGenericSQLSymbolState; _Dv__:Boolean);
  end;
  TZGenericSQLWordState = class(TZWordState)
  public
    //procedure sub_004C7DEC(?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZGenericSQLWordState; _Dv__:Boolean);
  end;
  TZGenericSQLQuoteState = class(TZQuoteState)
  public
    //procedure sub_004C7E78(?:?; ?:?; ?:?); virtual;
    //procedure sub_004C7F3C(?:?; ?:?; ?:?); virtual;
    //procedure sub_004C7F74(?:?; ?:?; ?:?); virtual;
  end;
  TZGenericSQLTokenizer = class(TZTokenizer)
    //constructor Create(?:TZGenericSQLTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004C7C30
//constructor TZGenericSQLSymbolState.Create(?:TZGenericSQLSymbolState; _Dv__:Boolean);
//begin
{*
 004C7C30    push       ebp
 004C7C31    mov        ebp,esp
 004C7C33    push       ebx
 004C7C34    push       esi
 004C7C35    test       dl,dl
>004C7C37    je         004C7C41
 004C7C39    add        esp,0FFFFFFF0
 004C7C3C    call       @ClassCreate
 004C7C41    mov        ebx,edx
 004C7C43    mov        esi,eax
 004C7C45    xor        edx,edx
 004C7C47    mov        eax,esi
 004C7C49    call       004C15E4
 004C7C4E    mov        edx,4C7CB0; '<='
 004C7C53    mov        eax,esi
 004C7C55    mov        ecx,dword ptr [eax]
 004C7C57    call       dword ptr [ecx+4]; TZGenericSQLSymbolState.sub_004C1658
 004C7C5A    mov        edx,4C7CBC; '>='
 004C7C5F    mov        eax,esi
 004C7C61    mov        ecx,dword ptr [eax]
 004C7C63    call       dword ptr [ecx+4]; TZGenericSQLSymbolState.sub_004C1658
 004C7C66    mov        edx,4C7CC8; '<>'
 004C7C6B    mov        eax,esi
 004C7C6D    mov        ecx,dword ptr [eax]
 004C7C6F    call       dword ptr [ecx+4]; TZGenericSQLSymbolState.sub_004C1658
 004C7C72    mov        edx,4C7CD4; '<<'
 004C7C77    mov        eax,esi
 004C7C79    mov        ecx,dword ptr [eax]
 004C7C7B    call       dword ptr [ecx+4]; TZGenericSQLSymbolState.sub_004C1658
 004C7C7E    mov        edx,4C7CE0; '>>'
 004C7C83    mov        eax,esi
 004C7C85    mov        ecx,dword ptr [eax]
 004C7C87    call       dword ptr [ecx+4]; TZGenericSQLSymbolState.sub_004C1658
 004C7C8A    mov        eax,esi
 004C7C8C    test       bl,bl
>004C7C8E    je         004C7C9F
 004C7C90    call       @AfterConstruction
 004C7C95    pop        dword ptr fs:[0]
 004C7C9C    add        esp,0C
 004C7C9F    mov        eax,esi
 004C7CA1    pop        esi
 004C7CA2    pop        ebx
 004C7CA3    pop        ebp
 004C7CA4    ret
*}
//end;

//004C7CE4
//constructor TZGenericSQLWordState.Create(?:TZGenericSQLWordState; _Dv__:Boolean);
//begin
{*
 004C7CE4    push       ebp
 004C7CE5    mov        ebp,esp
 004C7CE7    push       ebx
 004C7CE8    push       esi
 004C7CE9    test       dl,dl
>004C7CEB    je         004C7CF5
 004C7CED    add        esp,0FFFFFFF0
 004C7CF0    call       @ClassCreate
 004C7CF5    mov        ebx,edx
 004C7CF7    mov        esi,eax
 004C7CF9    push       0
 004C7CFB    mov        cl,0FF
 004C7CFD    xor        edx,edx
 004C7CFF    mov        eax,esi
 004C7D01    call       004C18EC
 004C7D06    push       1
 004C7D08    mov        cl,7A
 004C7D0A    mov        dl,61
 004C7D0C    mov        eax,esi
 004C7D0E    call       004C18EC
 004C7D13    push       1
 004C7D15    mov        cl,5A
 004C7D17    mov        dl,41
 004C7D19    mov        eax,esi
 004C7D1B    call       004C18EC
 004C7D20    push       1
 004C7D22    mov        cl,39
 004C7D24    mov        dl,30
 004C7D26    mov        eax,esi
 004C7D28    call       004C18EC
 004C7D2D    push       1
 004C7D2F    mov        cl,24
 004C7D31    mov        dl,24
 004C7D33    mov        eax,esi
 004C7D35    call       004C18EC
 004C7D3A    push       1
 004C7D3C    mov        cl,5F
 004C7D3E    mov        dl,5F
 004C7D40    mov        eax,esi
 004C7D42    call       004C18EC
 004C7D47    push       1
 004C7D49    mov        cl,0FF
 004C7D4B    mov        dl,0C0
 004C7D4D    mov        eax,esi
 004C7D4F    call       004C18EC
 004C7D54    mov        eax,esi
 004C7D56    test       bl,bl
>004C7D58    je         004C7D69
 004C7D5A    call       @AfterConstruction
 004C7D5F    pop        dword ptr fs:[0]
 004C7D66    add        esp,0C
 004C7D69    mov        eax,esi
 004C7D6B    pop        esi
 004C7D6C    pop        ebx
 004C7D6D    pop        ebp
 004C7D6E    ret
*}
//end;

//004C7DEC
//procedure sub_004C7DEC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004C7DEC    push       ebp
 004C7DED    mov        ebp,esp
 004C7DEF    add        esp,0FFFFFFF8
 004C7DF2    push       ebx
 004C7DF3    push       esi
 004C7DF4    push       edi
 004C7DF5    xor        ebx,ebx
 004C7DF7    mov        dword ptr [ebp-8],ebx
 004C7DFA    mov        byte ptr [ebp-1],cl
 004C7DFD    mov        esi,edx
 004C7DFF    mov        ebx,eax
 004C7E01    mov        edi,dword ptr [ebp+8]
 004C7E04    xor        eax,eax
 004C7E06    push       ebp
 004C7E07    push       4C7E65
 004C7E0C    push       dword ptr fs:[eax]
 004C7E0F    mov        dword ptr fs:[eax],esp
 004C7E12    mov        eax,dword ptr [ebp+0C]
 004C7E15    push       eax
 004C7E16    push       edi
 004C7E17    mov        cl,byte ptr [ebp-1]
 004C7E1A    mov        edx,esi
 004C7E1C    mov        eax,ebx
 004C7E1E    call       004C1834
 004C7E23    lea        edx,[ebp-8]
 004C7E26    mov        eax,dword ptr [edi]
 004C7E28    call       UpperCase
 004C7E2D    mov        esi,9
 004C7E32    mov        ebx,6156F4; gvar_006156F4:array[9] of String
 004C7E37    mov        eax,dword ptr [ebp-8]
 004C7E3A    mov        edx,dword ptr [ebx]
 004C7E3C    call       @LStrCmp
>004C7E41    jne        004C7E49
 004C7E43    mov        byte ptr [edi+4],0A
>004C7E47    jmp        004C7E4F
 004C7E49    add        ebx,4
 004C7E4C    dec        esi
<004C7E4D    jne        004C7E37
 004C7E4F    xor        eax,eax
 004C7E51    pop        edx
 004C7E52    pop        ecx
 004C7E53    pop        ecx
 004C7E54    mov        dword ptr fs:[eax],edx
 004C7E57    push       4C7E6C
 004C7E5C    lea        eax,[ebp-8]
 004C7E5F    call       @LStrClr
 004C7E64    ret
<004C7E65    jmp        @HandleFinally
<004C7E6A    jmp        004C7E5C
 004C7E6C    pop        edi
 004C7E6D    pop        esi
 004C7E6E    pop        ebx
 004C7E6F    pop        ecx
 004C7E70    pop        ecx
 004C7E71    pop        ebp
 004C7E72    ret        8
*}
//end;

//004C7E78
//procedure sub_004C7E78(?:?; ?:?; ?:?);
//begin
{*
 004C7E78    push       ebp
 004C7E79    mov        ebp,esp
 004C7E7B    add        esp,0FFFFFFF4
 004C7E7E    push       ebx
 004C7E7F    push       esi
 004C7E80    push       edi
 004C7E81    xor        ebx,ebx
 004C7E83    mov        dword ptr [ebp-0C],ebx
 004C7E86    mov        ebx,ecx
 004C7E88    mov        dword ptr [ebp-4],edx
 004C7E8B    mov        esi,dword ptr [ebp+8]
 004C7E8E    xor        eax,eax
 004C7E90    push       ebp
 004C7E91    push       4C7F2A
 004C7E96    push       dword ptr fs:[eax]
 004C7E99    mov        dword ptr fs:[eax],esp
 004C7E9C    mov        eax,esi
 004C7E9E    mov        edx,ebx
 004C7EA0    call       @LStrFromChar
 004C7EA5    mov        byte ptr [ebp-6],0
>004C7EA9    jmp        004C7EF1
 004C7EAB    cmp        bl,byte ptr [ebp-6]
>004C7EAE    jne        004C7EC6
 004C7EB0    cmp        bl,byte ptr [ebp-5]
>004C7EB3    je         004C7EC6
 004C7EB5    mov        cx,1
 004C7EB9    or         edx,0FFFFFFFF
 004C7EBC    mov        eax,dword ptr [ebp-4]
 004C7EBF    mov        edi,dword ptr [eax]
 004C7EC1    call       dword ptr [edi+14]
>004C7EC4    jmp        004C7F05
 004C7EC6    lea        eax,[ebp-0C]
 004C7EC9    mov        dl,byte ptr [ebp-5]
 004C7ECC    call       @LStrFromChar
 004C7ED1    mov        edx,dword ptr [ebp-0C]
 004C7ED4    mov        eax,esi
 004C7ED6    call       @LStrCat
 004C7EDB    cmp        bl,byte ptr [ebp-6]
>004C7EDE    jne        004C7EEB
 004C7EE0    cmp        bl,byte ptr [ebp-5]
>004C7EE3    jne        004C7EEB
 004C7EE5    mov        byte ptr [ebp-6],0
>004C7EE9    jmp        004C7EF1
 004C7EEB    mov        al,byte ptr [ebp-5]
 004C7EEE    mov        byte ptr [ebp-6],al
 004C7EF1    lea        edx,[ebp-5]
 004C7EF4    mov        ecx,1
 004C7EF9    mov        eax,dword ptr [ebp-4]
 004C7EFC    mov        edi,dword ptr [eax]
 004C7EFE    call       dword ptr [edi+0C]
 004C7F01    test       eax,eax
<004C7F03    jg         004C7EAB
 004C7F05    cmp        bl,22
>004C7F08    jne        004C7F10
 004C7F0A    mov        byte ptr [esi+4],9
>004C7F0E    jmp        004C7F14
 004C7F10    mov        byte ptr [esi+4],7
 004C7F14    xor        eax,eax
 004C7F16    pop        edx
 004C7F17    pop        ecx
 004C7F18    pop        ecx
 004C7F19    mov        dword ptr fs:[eax],edx
 004C7F1C    push       4C7F31
 004C7F21    lea        eax,[ebp-0C]
 004C7F24    call       @LStrClr
 004C7F29    ret
<004C7F2A    jmp        @HandleFinally
<004C7F2F    jmp        004C7F21
 004C7F31    pop        edi
 004C7F32    pop        esi
 004C7F33    pop        ebx
 004C7F34    mov        esp,ebp
 004C7F36    pop        ebp
 004C7F37    ret        8
*}
//end;

//004C7F3C
//procedure sub_004C7F3C(?:?; ?:?; ?:?);
//begin
{*
 004C7F3C    push       ebp
 004C7F3D    mov        ebp,esp
 004C7F3F    push       ebx
 004C7F40    push       esi
 004C7F41    push       edi
 004C7F42    mov        ebx,ecx
 004C7F44    mov        esi,edx
 004C7F46    mov        edi,dword ptr [ebp+8]
 004C7F49    mov        eax,ebx
 004C7F4B    sub        al,22
>004C7F4D    je         004C7F57
 004C7F4F    sub        al,5
>004C7F51    je         004C7F57
 004C7F53    sub        al,39
>004C7F55    jne        004C7F64
 004C7F57    mov        ecx,edi
 004C7F59    mov        edx,ebx
 004C7F5B    mov        eax,esi
 004C7F5D    call       AnsiQuotedStr
>004C7F62    jmp        004C7F6D
 004C7F64    mov        eax,edi
 004C7F66    mov        edx,esi
 004C7F68    call       @LStrAsg
 004C7F6D    pop        edi
 004C7F6E    pop        esi
 004C7F6F    pop        ebx
 004C7F70    pop        ebp
 004C7F71    ret        4
*}
//end;

//004C7F74
//procedure sub_004C7F74(?:?; ?:?; ?:?);
//begin
{*
 004C7F74    push       ebp
 004C7F75    mov        ebp,esp
 004C7F77    push       ebx
 004C7F78    push       esi
 004C7F79    mov        ebx,ecx
 004C7F7B    mov        esi,edx
 004C7F7D    mov        eax,esi
 004C7F7F    call       @LStrLen
 004C7F84    cmp        eax,2
>004C7F87    jl         004C7FE8
 004C7F89    mov        edx,ebx
 004C7F8B    sub        dl,22
>004C7F8E    je         004C7F9A
 004C7F90    sub        dl,5
>004C7F93    je         004C7F9A
 004C7F95    sub        dl,39
>004C7F98    jne        004C7FE8
 004C7F9A    mov        edx,1
 004C7F9F    dec        edx
 004C7FA0    test       esi,esi
>004C7FA2    je         004C7FA9
 004C7FA4    cmp        edx,dword ptr [esi-4]
>004C7FA7    jb         004C7FAE
 004C7FA9    call       @BoundErr
 004C7FAE    inc        edx
 004C7FAF    cmp        bl,byte ptr [esi+edx-1]
>004C7FB3    jne        004C7FE8
 004C7FB5    dec        eax
 004C7FB6    test       esi,esi
>004C7FB8    je         004C7FBF
 004C7FBA    cmp        eax,dword ptr [esi-4]
>004C7FBD    jb         004C7FC4
 004C7FBF    call       @BoundErr
 004C7FC4    inc        eax
 004C7FC5    cmp        bl,byte ptr [esi+eax-1]
>004C7FC9    jne        004C7FE8
 004C7FCB    cmp        eax,2
>004C7FCE    jle        004C7FDE
 004C7FD0    mov        ecx,dword ptr [ebp+8]
 004C7FD3    mov        edx,ebx
 004C7FD5    mov        eax,esi
 004C7FD7    call       AnsiDequotedStr
>004C7FDC    jmp        004C7FF2
 004C7FDE    mov        eax,dword ptr [ebp+8]
 004C7FE1    call       @LStrClr
>004C7FE6    jmp        004C7FF2
 004C7FE8    mov        eax,dword ptr [ebp+8]
 004C7FEB    mov        edx,esi
 004C7FED    call       @LStrAsg
 004C7FF2    pop        esi
 004C7FF3    pop        ebx
 004C7FF4    pop        ebp
 004C7FF5    ret        4
*}
//end;

//004C7FF8
//constructor TZGenericSQLTokenizer.Create(?:TZGenericSQLTokenizer; _Dv__:Boolean);
//begin
{*
 004C7FF8    push       ebp
 004C7FF9    mov        ebp,esp
 004C7FFB    push       ebx
 004C7FFC    push       esi
 004C7FFD    test       dl,dl
>004C7FFF    je         004C8009
 004C8001    add        esp,0FFFFFFF0
 004C8004    call       @ClassCreate
 004C8009    mov        ebx,edx
 004C800B    mov        esi,eax
 004C800D    mov        dl,1
 004C800F    mov        eax,[004C02CC]; TZNumberState
 004C8014    call       TObject.Create; TZNumberState.Create
 004C8019    mov        dword ptr [esi+414],eax; TZGenericSQLTokenizer.?f414:TZNumberState
 004C801F    mov        dl,1
 004C8021    mov        eax,[004C7B50]; TZGenericSQLQuoteState
 004C8026    call       TObject.Create; TZGenericSQLQuoteState.Create
 004C802B    mov        dword ptr [esi+418],eax; TZGenericSQLTokenizer.?f418:TZGenericSQLQuoteState
 004C8031    mov        dl,1
 004C8033    mov        eax,[004C0658]; TZWhitespaceState
 004C8038    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 004C803D    mov        dword ptr [esi+420],eax; TZGenericSQLTokenizer.?f420:TZWhitespaceState
 004C8043    mov        dl,1
 004C8045    mov        eax,[004C03F4]; TZCppCommentState
 004C804A    call       TObject.Create; TZCppCommentState.Create
 004C804F    mov        dword ptr [esi+410],eax; TZGenericSQLTokenizer.?f410:TZCppCommentState
 004C8055    mov        dl,1
 004C8057    mov        eax,[004C7A7C]; TZGenericSQLSymbolState
 004C805C    call       TZGenericSQLSymbolState.Create; TZGenericSQLSymbolState.Create
 004C8061    mov        dword ptr [esi+41C],eax; TZGenericSQLTokenizer.?f41C:TZGenericSQLSymbolState
 004C8067    mov        dl,1
 004C8069    mov        eax,[004C7AE8]; TZGenericSQLWordState
 004C806E    call       TZGenericSQLWordState.Create; TZGenericSQLWordState.Create
 004C8073    mov        dword ptr [esi+424],eax; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C8079    mov        eax,dword ptr [esi+41C]; TZGenericSQLTokenizer.?f41C:TZGenericSQLSymbolState
 004C807F    push       eax
 004C8080    mov        cl,0FF
 004C8082    xor        edx,edx
 004C8084    mov        eax,esi
 004C8086    call       004C19C8
 004C808B    mov        eax,dword ptr [esi+420]; TZGenericSQLTokenizer.?f420:TZWhitespaceState
 004C8091    push       eax
 004C8092    mov        cl,20
 004C8094    xor        edx,edx
 004C8096    mov        eax,esi
 004C8098    call       004C19C8
 004C809D    mov        eax,dword ptr [esi+424]; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C80A3    push       eax
 004C80A4    mov        cl,7A
 004C80A6    mov        dl,61
 004C80A8    mov        eax,esi
 004C80AA    call       004C19C8
 004C80AF    mov        eax,dword ptr [esi+424]; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C80B5    push       eax
 004C80B6    mov        cl,5A
 004C80B8    mov        dl,41
 004C80BA    mov        eax,esi
 004C80BC    call       004C19C8
 004C80C1    mov        eax,dword ptr [esi+424]; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C80C7    push       eax
 004C80C8    mov        cl,0FF
 004C80CA    mov        dl,0C0
 004C80CC    mov        eax,esi
 004C80CE    call       004C19C8
 004C80D3    mov        eax,dword ptr [esi+424]; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C80D9    push       eax
 004C80DA    mov        cl,5F
 004C80DC    mov        dl,5F
 004C80DE    mov        eax,esi
 004C80E0    call       004C19C8
 004C80E5    mov        eax,dword ptr [esi+424]; TZGenericSQLTokenizer.?f424:TZGenericSQLWordState
 004C80EB    push       eax
 004C80EC    mov        cl,24
 004C80EE    mov        dl,24
 004C80F0    mov        eax,esi
 004C80F2    call       004C19C8
 004C80F7    mov        eax,dword ptr [esi+414]; TZGenericSQLTokenizer.?f414:TZNumberState
 004C80FD    push       eax
 004C80FE    mov        cl,39
 004C8100    mov        dl,30
 004C8102    mov        eax,esi
 004C8104    call       004C19C8
 004C8109    mov        eax,dword ptr [esi+414]; TZGenericSQLTokenizer.?f414:TZNumberState
 004C810F    push       eax
 004C8110    mov        cl,2E
 004C8112    mov        dl,2E
 004C8114    mov        eax,esi
 004C8116    call       004C19C8
 004C811B    mov        eax,dword ptr [esi+418]; TZGenericSQLTokenizer.?f418:TZGenericSQLQuoteState
 004C8121    push       eax
 004C8122    mov        cl,22
 004C8124    mov        dl,22
 004C8126    mov        eax,esi
 004C8128    call       004C19C8
 004C812D    mov        eax,dword ptr [esi+418]; TZGenericSQLTokenizer.?f418:TZGenericSQLQuoteState
 004C8133    push       eax
 004C8134    mov        cl,27
 004C8136    mov        dl,27
 004C8138    mov        eax,esi
 004C813A    call       004C19C8
 004C813F    mov        eax,dword ptr [esi+418]; TZGenericSQLTokenizer.?f418:TZGenericSQLQuoteState
 004C8145    push       eax
 004C8146    mov        cl,60
 004C8148    mov        dl,60
 004C814A    mov        eax,esi
 004C814C    call       004C19C8
 004C8151    mov        eax,dword ptr [esi+410]; TZGenericSQLTokenizer.?f410:TZCppCommentState
 004C8157    push       eax
 004C8158    mov        cl,2F
 004C815A    mov        dl,2F
 004C815C    mov        eax,esi
 004C815E    call       004C19C8
 004C8163    mov        eax,esi
 004C8165    test       bl,bl
>004C8167    je         004C8178
 004C8169    call       @AfterConstruction
 004C816E    pop        dword ptr fs:[0]
 004C8175    add        esp,0C
 004C8178    mov        eax,esi
 004C817A    pop        esi
 004C817B    pop        ebx
 004C817C    pop        ebp
 004C817D    ret
*}
//end;

Initialization
Finalization
//004C8180
{*
 004C8180    push       ebp
 004C8181    mov        ebp,esp
 004C8183    xor        eax,eax
 004C8185    push       ebp
 004C8186    push       4C81BC
 004C818B    push       dword ptr fs:[eax]
 004C818E    mov        dword ptr fs:[eax],esp
 004C8191    inc        dword ptr ds:[61DD18]
>004C8197    jne        004C81AE
 004C8199    mov        eax,6156F4; gvar_006156F4:array[9] of String
 004C819E    mov        ecx,9
 004C81A3    mov        edx,dword ptr ds:[4010F8]; String
 004C81A9    call       @FinalizeArray
 004C81AE    xor        eax,eax
 004C81B0    pop        edx
 004C81B1    pop        ecx
 004C81B2    pop        ecx
 004C81B3    mov        dword ptr fs:[eax],edx
 004C81B6    push       4C81C3
 004C81BB    ret
<004C81BC    jmp        @HandleFinally
<004C81C1    jmp        004C81BB
 004C81C3    pop        ebp
 004C81C4    ret
*}
end.