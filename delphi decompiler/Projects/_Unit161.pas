{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit161;

interface

uses
  Classes, Windows, Graphics, _Unit160, _Unit146, _Unit149, ZTokenizer;

type
  TZOracleNumberState = class(TZPostgreSQLNumberState)
  end;
  TZOracleQuoteState = class(TZGenericSQLQuoteState)
  end;
  TZOracleCommentState = class(TZSybaseCommentState)
  end;
  TZOracleSymbolState = class(TZSymbolState)
    //constructor Create(?:TZOracleSymbolState; _Dv__:Boolean);
  end;
  TZOracleWordState = class(TZGenericSQLWordState)
    //constructor Create(?:TZOracleWordState; _Dv__:Boolean);
  end;
  TZOracleTokenizer = class(TZTokenizer)
    //constructor Create(?:TZOracleTokenizer; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0054BBF8
//constructor TZOracleSymbolState.Create(?:TZOracleSymbolState; _Dv__:Boolean);
//begin
{*
 0054BBF8    push       ebp
 0054BBF9    mov        ebp,esp
 0054BBFB    push       ebx
 0054BBFC    push       esi
 0054BBFD    test       dl,dl
>0054BBFF    je         0054BC09
 0054BC01    add        esp,0FFFFFFF0
 0054BC04    call       @ClassCreate
 0054BC09    mov        ebx,edx
 0054BC0B    mov        esi,eax
 0054BC0D    xor        edx,edx
 0054BC0F    mov        eax,esi
 0054BC11    call       004C15E4
 0054BC16    mov        edx,54BC78; '<='
 0054BC1B    mov        eax,esi
 0054BC1D    mov        ecx,dword ptr [eax]
 0054BC1F    call       dword ptr [ecx+4]; TZOracleSymbolState.sub_004C1658
 0054BC22    mov        edx,54BC84; '>='
 0054BC27    mov        eax,esi
 0054BC29    mov        ecx,dword ptr [eax]
 0054BC2B    call       dword ptr [ecx+4]; TZOracleSymbolState.sub_004C1658
 0054BC2E    mov        edx,54BC90; '<>'
 0054BC33    mov        eax,esi
 0054BC35    mov        ecx,dword ptr [eax]
 0054BC37    call       dword ptr [ecx+4]; TZOracleSymbolState.sub_004C1658
 0054BC3A    mov        edx,54BC9C; '!='
 0054BC3F    mov        eax,esi
 0054BC41    mov        ecx,dword ptr [eax]
 0054BC43    call       dword ptr [ecx+4]; TZOracleSymbolState.sub_004C1658
 0054BC46    mov        edx,54BCA8; '||'
 0054BC4B    mov        eax,esi
 0054BC4D    mov        ecx,dword ptr [eax]
 0054BC4F    call       dword ptr [ecx+4]; TZOracleSymbolState.sub_004C1658
 0054BC52    mov        eax,esi
 0054BC54    test       bl,bl
>0054BC56    je         0054BC67
 0054BC58    call       @AfterConstruction
 0054BC5D    pop        dword ptr fs:[0]
 0054BC64    add        esp,0C
 0054BC67    mov        eax,esi
 0054BC69    pop        esi
 0054BC6A    pop        ebx
 0054BC6B    pop        ebp
 0054BC6C    ret
*}
//end;

//0054BCAC
//constructor TZOracleWordState.Create(?:TZOracleWordState; _Dv__:Boolean);
//begin
{*
 0054BCAC    push       ebp
 0054BCAD    mov        ebp,esp
 0054BCAF    push       ebx
 0054BCB0    push       esi
 0054BCB1    test       dl,dl
>0054BCB3    je         0054BCBD
 0054BCB5    add        esp,0FFFFFFF0
 0054BCB8    call       @ClassCreate
 0054BCBD    mov        ebx,edx
 0054BCBF    mov        esi,eax
 0054BCC1    push       0
 0054BCC3    mov        cl,0FF
 0054BCC5    xor        edx,edx
 0054BCC7    mov        eax,esi
 0054BCC9    call       004C18EC
 0054BCCE    push       1
 0054BCD0    mov        cl,7A
 0054BCD2    mov        dl,61
 0054BCD4    mov        eax,esi
 0054BCD6    call       004C18EC
 0054BCDB    push       1
 0054BCDD    mov        cl,5A
 0054BCDF    mov        dl,41
 0054BCE1    mov        eax,esi
 0054BCE3    call       004C18EC
 0054BCE8    push       1
 0054BCEA    mov        cl,39
 0054BCEC    mov        dl,30
 0054BCEE    mov        eax,esi
 0054BCF0    call       004C18EC
 0054BCF5    push       1
 0054BCF7    mov        cl,5F
 0054BCF9    mov        dl,5F
 0054BCFB    mov        eax,esi
 0054BCFD    call       004C18EC
 0054BD02    push       1
 0054BD04    mov        cl,24
 0054BD06    mov        dl,24
 0054BD08    mov        eax,esi
 0054BD0A    call       004C18EC
 0054BD0F    push       1
 0054BD11    mov        cl,23
 0054BD13    mov        dl,23
 0054BD15    mov        eax,esi
 0054BD17    call       004C18EC
 0054BD1C    push       1
 0054BD1E    mov        cl,40
 0054BD20    mov        dl,40
 0054BD22    mov        eax,esi
 0054BD24    call       004C18EC
 0054BD29    mov        eax,esi
 0054BD2B    test       bl,bl
>0054BD2D    je         0054BD3E
 0054BD2F    call       @AfterConstruction
 0054BD34    pop        dword ptr fs:[0]
 0054BD3B    add        esp,0C
 0054BD3E    mov        eax,esi
 0054BD40    pop        esi
 0054BD41    pop        ebx
 0054BD42    pop        ebp
 0054BD43    ret
*}
//end;

//0054BD44
//constructor TZOracleTokenizer.Create(?:TZOracleTokenizer; _Dv__:Boolean);
//begin
{*
 0054BD44    push       ebp
 0054BD45    mov        ebp,esp
 0054BD47    push       ebx
 0054BD48    push       esi
 0054BD49    test       dl,dl
>0054BD4B    je         0054BD55
 0054BD4D    add        esp,0FFFFFFF0
 0054BD50    call       @ClassCreate
 0054BD55    mov        ebx,edx
 0054BD57    mov        esi,eax
 0054BD59    mov        dl,1
 0054BD5B    mov        eax,[004C0658]; TZWhitespaceState
 0054BD60    call       TZWhitespaceState.Create; TZWhitespaceState.Create
 0054BD65    mov        dword ptr [esi+420],eax; TZOracleTokenizer.?f420:TZWhitespaceState
 0054BD6B    mov        dl,1
 0054BD6D    mov        eax,[0054BAC0]; TZOracleSymbolState
 0054BD72    call       TZOracleSymbolState.Create; TZOracleSymbolState.Create
 0054BD77    mov        dword ptr [esi+41C],eax; TZOracleTokenizer.?f41C:TZGenericSQLSymbolState
 0054BD7D    mov        dl,1
 0054BD7F    mov        eax,[0054B988]; TZOracleNumberState
 0054BD84    call       TObject.Create; TZOracleNumberState.Create
 0054BD89    mov        dword ptr [esi+414],eax; TZOracleTokenizer.?f414:TZNumberState
 0054BD8F    mov        dl,1
 0054BD91    mov        eax,[0054B9EC]; TZOracleQuoteState
 0054BD96    call       TObject.Create; TZOracleQuoteState.Create
 0054BD9B    mov        dword ptr [esi+418],eax; TZOracleTokenizer.?f418:TZGenericSQLQuoteState
 0054BDA1    mov        dl,1
 0054BDA3    mov        eax,[0054BB28]; TZOracleWordState
 0054BDA8    call       TZOracleWordState.Create; TZOracleWordState.Create
 0054BDAD    mov        dword ptr [esi+424],eax; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BDB3    mov        dl,1
 0054BDB5    mov        eax,[0054BA58]; TZOracleCommentState
 0054BDBA    call       TObject.Create; TZOracleCommentState.Create
 0054BDBF    mov        dword ptr [esi+410],eax; TZOracleTokenizer.?f410:TZCppCommentState
 0054BDC5    mov        eax,dword ptr [esi+41C]; TZOracleTokenizer.?f41C:TZGenericSQLSymbolState
 0054BDCB    push       eax
 0054BDCC    mov        cl,0FF
 0054BDCE    xor        edx,edx
 0054BDD0    mov        eax,esi
 0054BDD2    call       004C19C8
 0054BDD7    mov        eax,dword ptr [esi+420]; TZOracleTokenizer.?f420:TZWhitespaceState
 0054BDDD    push       eax
 0054BDDE    mov        cl,20
 0054BDE0    xor        edx,edx
 0054BDE2    mov        eax,esi
 0054BDE4    call       004C19C8
 0054BDE9    mov        eax,dword ptr [esi+424]; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BDEF    push       eax
 0054BDF0    mov        cl,7A
 0054BDF2    mov        dl,61
 0054BDF4    mov        eax,esi
 0054BDF6    call       004C19C8
 0054BDFB    mov        eax,dword ptr [esi+424]; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BE01    push       eax
 0054BE02    mov        cl,5A
 0054BE04    mov        dl,41
 0054BE06    mov        eax,esi
 0054BE08    call       004C19C8
 0054BE0D    mov        eax,dword ptr [esi+424]; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BE13    push       eax
 0054BE14    mov        cl,5F
 0054BE16    mov        dl,5F
 0054BE18    mov        eax,esi
 0054BE1A    call       004C19C8
 0054BE1F    mov        eax,dword ptr [esi+424]; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BE25    push       eax
 0054BE26    mov        cl,24
 0054BE28    mov        dl,24
 0054BE2A    mov        eax,esi
 0054BE2C    call       004C19C8
 0054BE31    mov        eax,dword ptr [esi+424]; TZOracleTokenizer.?f424:TZGenericSQLWordState
 0054BE37    push       eax
 0054BE38    mov        cl,23
 0054BE3A    mov        dl,23
 0054BE3C    mov        eax,esi
 0054BE3E    call       004C19C8
 0054BE43    mov        eax,dword ptr [esi+414]; TZOracleTokenizer.?f414:TZNumberState
 0054BE49    push       eax
 0054BE4A    mov        cl,39
 0054BE4C    mov        dl,30
 0054BE4E    mov        eax,esi
 0054BE50    call       004C19C8
 0054BE55    mov        eax,dword ptr [esi+414]; TZOracleTokenizer.?f414:TZNumberState
 0054BE5B    push       eax
 0054BE5C    mov        cl,2E
 0054BE5E    mov        dl,2E
 0054BE60    mov        eax,esi
 0054BE62    call       004C19C8
 0054BE67    mov        eax,dword ptr [esi+418]; TZOracleTokenizer.?f418:TZGenericSQLQuoteState
 0054BE6D    push       eax
 0054BE6E    mov        cl,22
 0054BE70    mov        dl,22
 0054BE72    mov        eax,esi
 0054BE74    call       004C19C8
 0054BE79    mov        eax,dword ptr [esi+418]; TZOracleTokenizer.?f418:TZGenericSQLQuoteState
 0054BE7F    push       eax
 0054BE80    mov        cl,27
 0054BE82    mov        dl,27
 0054BE84    mov        eax,esi
 0054BE86    call       004C19C8
 0054BE8B    mov        eax,dword ptr [esi+410]; TZOracleTokenizer.?f410:TZCppCommentState
 0054BE91    push       eax
 0054BE92    mov        cl,2F
 0054BE94    mov        dl,2F
 0054BE96    mov        eax,esi
 0054BE98    call       004C19C8
 0054BE9D    mov        eax,dword ptr [esi+410]; TZOracleTokenizer.?f410:TZCppCommentState
 0054BEA3    push       eax
 0054BEA4    mov        cl,2D
 0054BEA6    mov        dl,2D
 0054BEA8    mov        eax,esi
 0054BEAA    call       004C19C8
 0054BEAF    mov        eax,esi
 0054BEB1    test       bl,bl
>0054BEB3    je         0054BEC4
 0054BEB5    call       @AfterConstruction
 0054BEBA    pop        dword ptr fs:[0]
 0054BEC1    add        esp,0C
 0054BEC4    mov        eax,esi
 0054BEC6    pop        esi
 0054BEC7    pop        ebx
 0054BEC8    pop        ebp
 0054BEC9    ret
*}
//end;

end.