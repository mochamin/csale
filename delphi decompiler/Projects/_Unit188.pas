{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit188;

interface

uses
  Classes, Windows, Graphics, _Unit160, _Unit146, ZTokenizer;

type
  TZInterbaseNumberState = class(TZPostgreSQLNumberState)
  end;
  TZInterbaseQuoteState = class(TZGenericSQLQuoteState)
  end;
  TZInterbaseCommentState = class(TZCCommentState)
  end;
  TZInterbaseSymbolState = class(TZSymbolState)
    //constructor Create(?:TZInterbaseSymbolState; _Dv__:Boolean);
  end;
  TZInterbaseWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZInterbaseWordState; _Dv__:Boolean);
  end;
  TZInterbaseTokenizer = class(TZTokenizer)
    //constructor Create(?:TZInterbaseTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00530D4C
//constructor TZInterbaseSymbolState.Create(?:TZInterbaseSymbolState; _Dv__:Boolean);
//begin
{*
 00530D4C    push       ebp
 00530D4D    mov        ebp,esp
 00530D4F    push       ebx
 00530D50    push       esi
 00530D51    test       dl,dl
>00530D53    je         00530D5D
 00530D55    add        esp,0FFFFFFF0
 00530D58    call       @ClassCreate
 00530D5D    mov        ebx,edx
 00530D5F    mov        esi,eax
 00530D61    xor        edx,edx
 00530D63    mov        eax,esi
 00530D65    call       004C15E4
 00530D6A    mov        edx,530DD8; '<='
 00530D6F    mov        eax,esi
 00530D71    mov        ecx,dword ptr [eax]
 00530D73    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530D76    mov        edx,530DE4; '>='
 00530D7B    mov        eax,esi
 00530D7D    mov        ecx,dword ptr [eax]
 00530D7F    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530D82    mov        edx,530DF0; '<>'
 00530D87    mov        eax,esi
 00530D89    mov        ecx,dword ptr [eax]
 00530D8B    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530D8E    mov        edx,530DFC; '!='
 00530D93    mov        eax,esi
 00530D95    mov        ecx,dword ptr [eax]
 00530D97    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530D9A    mov        edx,530E08; '!<'
 00530D9F    mov        eax,esi
 00530DA1    mov        ecx,dword ptr [eax]
 00530DA3    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530DA6    mov        edx,530E14; '!>'
 00530DAB    mov        eax,esi
 00530DAD    mov        ecx,dword ptr [eax]
 00530DAF    call       dword ptr [ecx+4]; TZInterbaseSymbolState.sub_004C1658
 00530DB2    mov        eax,esi
 00530DB4    test       bl,bl
>00530DB6    je         00530DC7
 00530DB8    call       @AfterConstruction
 00530DBD    pop        dword ptr fs:[0]
 00530DC4    add        esp,0C
 00530DC7    mov        eax,esi
 00530DC9    pop        esi
 00530DCA    pop        ebx
 00530DCB    pop        ebp
 00530DCC    ret
*}
//end;

//00530E18
//constructor TZInterbaseWordState.Create(?:TZInterbaseWordState; _Dv__:Boolean);
//begin
{*
 00530E18    push       ebp
 00530E19    mov        ebp,esp
 00530E1B    push       ebx
 00530E1C    push       esi
 00530E1D    test       dl,dl
>00530E1F    je         00530E29
 00530E21    add        esp,0FFFFFFF0
 00530E24    call       @ClassCreate
 00530E29    mov        ebx,edx
 00530E2B    mov        esi,eax
 00530E2D    push       0
 00530E2F    mov        cl,0FF
 00530E31    xor        edx,edx
 00530E33    mov        eax,esi
 00530E35    call       004C18EC
 00530E3A    push       1
 00530E3C    mov        cl,7A
 00530E3E    mov        dl,61
 00530E40    mov        eax,esi
 00530E42    call       004C18EC
 00530E47    push       1
 00530E49    mov        cl,5A
 00530E4B    mov        dl,41
 00530E4D    mov        eax,esi
 00530E4F    call       004C18EC
 00530E54    push       1
 00530E56    mov        cl,39
 00530E58    mov        dl,30
 00530E5A    mov        eax,esi
 00530E5C    call       004C18EC
 00530E61    push       1
 00530E63    mov        cl,5F
 00530E65    mov        dl,5F
 00530E67    mov        eax,esi
 00530E69    call       004C18EC
 00530E6E    push       1
 00530E70    mov        cl,24
 00530E72    mov        dl,24
 00530E74    mov        eax,esi
 00530E76    call       004C18EC
 00530E7B    mov        eax,esi
 00530E7D    test       bl,bl
>00530E7F    je         00530E90
 00530E81    call       @AfterConstruction
 00530E86    pop        dword ptr fs:[0]
 00530E8D    add        esp,0C
 00530E90    mov        eax,esi
 00530E92    pop        esi
 00530E93    pop        ebx
 00530E94    pop        ebp
 00530E95    ret
*}
//end;

//00530E98
//constructor TZInterbaseTokenizer.Create(?:TZInterbaseTokenizer; _Dv__:Boolean);
//begin
{*
 00530E98    push       ebp
 00530E99    mov        ebp,esp
 00530E9B    push       ebx
 00530E9C    push       esi
 00530E9D    test       dl,dl
>00530E9F    je         00530EA9
 00530EA1    add        esp,0FFFFFFF0
 00530EA4    call       @ClassCreate
 00530EA9    mov        ebx,edx
 00530EAB    mov        esi,eax
 00530EAD    mov        dl,1
 00530EAF    mov        eax,[004C0658]; TZWhitespaceState
 00530EB4    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 00530EB9    mov        dword ptr [esi+420],eax; TZInterbaseTokenizer.?f420:TZWhitespaceState
 00530EBF    mov        dl,1
 00530EC1    mov        eax,[00530C08]; TZInterbaseSymbolState
 00530EC6    call       TZInterbaseSymbolState.Create; TZInterbaseSymbolState.Create
 00530ECB    mov        dword ptr [esi+41C],eax; TZInterbaseTokenizer.?f41C:TZGenericSQLSymbolState
 00530ED1    mov        dl,1
 00530ED3    mov        eax,[00530AC8]; TZInterbaseNumberState
 00530ED8    call       TObject.Create; TZInterbaseNumberState.Create
 00530EDD    mov        dword ptr [esi+414],eax; TZInterbaseTokenizer.?f414:TZNumberState
 00530EE3    mov        dl,1
 00530EE5    mov        eax,[00530B30]; TZInterbaseQuoteState
 00530EEA    call       TObject.Create; TZInterbaseQuoteState.Create
 00530EEF    mov        dword ptr [esi+418],eax; TZInterbaseTokenizer.?f418:TZGenericSQLQuoteState
 00530EF5    mov        dl,1
 00530EF7    mov        eax,[00530C74]; TZInterbaseWordState
 00530EFC    call       TZInterbaseWordState.Create; TZInterbaseWordState.Create
 00530F01    mov        dword ptr [esi+424],eax; TZInterbaseTokenizer.?f424:TZGenericSQLWordState
 00530F07    mov        dl,1
 00530F09    mov        eax,[00530BA0]; TZInterbaseCommentState
 00530F0E    call       TObject.Create; TZInterbaseCommentState.Create
 00530F13    mov        dword ptr [esi+410],eax; TZInterbaseTokenizer.?f410:TZCppCommentState
 00530F19    mov        eax,dword ptr [esi+41C]; TZInterbaseTokenizer.?f41C:TZGenericSQLSymbolState
 00530F1F    push       eax
 00530F20    mov        cl,0FF
 00530F22    xor        edx,edx
 00530F24    mov        eax,esi
 00530F26    call       004C19C8
 00530F2B    mov        eax,dword ptr [esi+420]; TZInterbaseTokenizer.?f420:TZWhitespaceState
 00530F31    push       eax
 00530F32    mov        cl,20
 00530F34    xor        edx,edx
 00530F36    mov        eax,esi
 00530F38    call       004C19C8
 00530F3D    mov        eax,dword ptr [esi+424]; TZInterbaseTokenizer.?f424:TZGenericSQLWordState
 00530F43    push       eax
 00530F44    mov        cl,7A
 00530F46    mov        dl,61
 00530F48    mov        eax,esi
 00530F4A    call       004C19C8
 00530F4F    mov        eax,dword ptr [esi+424]; TZInterbaseTokenizer.?f424:TZGenericSQLWordState
 00530F55    push       eax
 00530F56    mov        cl,5A
 00530F58    mov        dl,41
 00530F5A    mov        eax,esi
 00530F5C    call       004C19C8
 00530F61    mov        eax,dword ptr [esi+424]; TZInterbaseTokenizer.?f424:TZGenericSQLWordState
 00530F67    push       eax
 00530F68    mov        cl,5F
 00530F6A    mov        dl,5F
 00530F6C    mov        eax,esi
 00530F6E    call       004C19C8
 00530F73    mov        eax,dword ptr [esi+424]; TZInterbaseTokenizer.?f424:TZGenericSQLWordState
 00530F79    push       eax
 00530F7A    mov        cl,24
 00530F7C    mov        dl,24
 00530F7E    mov        eax,esi
 00530F80    call       004C19C8
 00530F85    mov        eax,dword ptr [esi+414]; TZInterbaseTokenizer.?f414:TZNumberState
 00530F8B    push       eax
 00530F8C    mov        cl,39
 00530F8E    mov        dl,30
 00530F90    mov        eax,esi
 00530F92    call       004C19C8
 00530F97    mov        eax,dword ptr [esi+414]; TZInterbaseTokenizer.?f414:TZNumberState
 00530F9D    push       eax
 00530F9E    mov        cl,2E
 00530FA0    mov        dl,2E
 00530FA2    mov        eax,esi
 00530FA4    call       004C19C8
 00530FA9    mov        eax,dword ptr [esi+418]; TZInterbaseTokenizer.?f418:TZGenericSQLQuoteState
 00530FAF    push       eax
 00530FB0    mov        cl,22
 00530FB2    mov        dl,22
 00530FB4    mov        eax,esi
 00530FB6    call       004C19C8
 00530FBB    mov        eax,dword ptr [esi+418]; TZInterbaseTokenizer.?f418:TZGenericSQLQuoteState
 00530FC1    push       eax
 00530FC2    mov        cl,27
 00530FC4    mov        dl,27
 00530FC6    mov        eax,esi
 00530FC8    call       004C19C8
 00530FCD    mov        eax,dword ptr [esi+410]; TZInterbaseTokenizer.?f410:TZCppCommentState
 00530FD3    push       eax
 00530FD4    mov        cl,2F
 00530FD6    mov        dl,2F
 00530FD8    mov        eax,esi
 00530FDA    call       004C19C8
 00530FDF    mov        eax,esi
 00530FE1    test       bl,bl
>00530FE3    je         00530FF4
 00530FE5    call       @AfterConstruction
 00530FEA    pop        dword ptr fs:[0]
 00530FF1    add        esp,0C
 00530FF4    mov        eax,esi
 00530FF6    pop        esi
 00530FF7    pop        ebx
 00530FF8    pop        ebp
 00530FF9    ret
*}
//end;

end.