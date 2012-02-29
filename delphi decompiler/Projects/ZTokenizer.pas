{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZTokenizer;

interface

uses
  Classes, Windows, Graphics, ZClasses, _Unit146;

type
  TZToken = record //size = 5
  f0:String;;
  TZTokenDynArray = array of TZToken;
  TZTokenizerState = class(TObject)
  public
    procedure @AbstractError(); virtual;
  end;
  TZNumberState = class(TZTokenizerState)
  public
    //procedure sub_004C0920(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZQuoteState = class(TZTokenizerState)
  public
    //procedure sub_004C0ACC(?:?; ?:?; ?:?); virtual;
    //procedure sub_004C0B64(?:?; ?:?; ?:?); virtual;
    //procedure sub_004C0BD4(?:?; ?:?; ?:?); virtual;
  end;
  TZCommentState = class(TZTokenizerState)
  public
    //procedure sub_004C0C70(?:?; ?:?; ?:?); virtual;
  end;
  TZCppCommentState = class(TZCommentState)
  public
    //procedure sub_004C0E98(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZCCommentState = class(TZCppCommentState)
  public
    //procedure sub_004C0FB0(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TZSymbolNodeArray = array of ?;
  TZSymbolNode = class(TObject)
  public
    f4:byte;//f4
    f8:TZSymbolNodeArray;//f8
    fC:byte;//fC
    f10:dword;//f10
    destructor Destroy; virtual;
    //function sub_004C1330(?:?):?; virtual;
    //procedure sub_004C11F0(?:?); virtual;
    //constructor Create(?:TZSymbolNode; _Dv__:Boolean; ?:?);
  end;
  TZSymbolRootNode = class(TZSymbolNode)
  public
    //function sub_004C158C(?:?):?; virtual;
    //procedure sub_004C157C(?:?); virtual;
    //constructor Create(?:TZSymbolRootNode; _Dv__:Boolean);
  end;
  TZSymbolState = class(TZTokenizerState)
  public
    f4:dword;//f4
    destructor Destroy; virtual;
    //procedure sub_004C1668(?:?; ?:?; ?:?); virtual;
    procedure sub_004C1658; virtual;
  end;
  TZWhitespaceState = class(TZTokenizerState)
  public
    //procedure sub_004C1720(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZWhitespaceState; _Dv__:Boolean);
  end;
  TZWordState = class(TZTokenizerState)
  public
    //procedure sub_004C1834(?:?; ?:?; ?:?); virtual;
  end;
  TZTokenizer = class(TZAbstractObject)
  public
    f410:TZCppCommentState;//f410
    f414:TZNumberState;//f414
    f418:TZGenericSQLQuoteState;//f418
    f41C:TZGenericSQLSymbolState;//f41C
    f420:TZWhitespaceState;//f420
    f424:TZGenericSQLWordState;//f424
    destructor Destroy; virtual;
  end;

implementation

{$R *.DFM}

//004C0894
//procedure sub_004C0894(?:AnsiString; ?:?);
//begin
{*
 004C0894    push       ebp
 004C0895    mov        ebp,esp
 004C0897    push       0
 004C0899    push       ebx
 004C089A    push       esi
 004C089B    push       edi
 004C089C    mov        ebx,eax
 004C089E    mov        esi,dword ptr [ebp+8]
 004C08A1    dec        esi
 004C08A2    xor        eax,eax
 004C08A4    push       ebp
 004C08A5    push       4C0913
 004C08AA    push       dword ptr fs:[eax]
 004C08AD    mov        dword ptr fs:[eax],esp
 004C08B0    mov        eax,ebx
 004C08B2    call       @LStrClr
>004C08B7    jmp        004C08F5
 004C08B9    mov        eax,dword ptr [ebp+8]
 004C08BC    mov        byte ptr [eax-2],1
 004C08C0    lea        eax,[ebp-4]
 004C08C3    mov        dl,byte ptr [esi]
 004C08C5    call       @LStrFromChar
 004C08CA    mov        edx,dword ptr [ebp-4]
 004C08CD    mov        eax,ebx
 004C08CF    call       @LStrCat
 004C08D4    mov        edx,esi
 004C08D6    mov        eax,dword ptr [ebp+8]
 004C08D9    mov        eax,dword ptr [eax-8]
 004C08DC    mov        ecx,1
 004C08E1    mov        edi,dword ptr [eax]
 004C08E3    call       dword ptr [edi+0C]
 004C08E6    mov        edx,dword ptr [ebp+8]
 004C08E9    mov        dword ptr [edx-0C],eax
 004C08EC    mov        eax,dword ptr [ebp+8]
 004C08EF    cmp        dword ptr [eax-0C],0
>004C08F3    je         004C08FD
 004C08F5    mov        al,byte ptr [esi]
 004C08F7    add        al,0D0
 004C08F9    sub        al,0A
<004C08FB    jb         004C08B9
 004C08FD    xor        eax,eax
 004C08FF    pop        edx
 004C0900    pop        ecx
 004C0901    pop        ecx
 004C0902    mov        dword ptr fs:[eax],edx
 004C0905    push       4C091A
 004C090A    lea        eax,[ebp-4]
 004C090D    call       @LStrClr
 004C0912    ret
<004C0913    jmp        @HandleFinally
<004C0918    jmp        004C090A
 004C091A    pop        edi
 004C091B    pop        esi
 004C091C    pop        ebx
 004C091D    pop        ecx
 004C091E    pop        ebp
 004C091F    ret
*}
//end;

//004C0920
//procedure sub_004C0920(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004C0920    push       ebp
 004C0921    mov        ebp,esp
 004C0923    add        esp,0FFFFFFE8
 004C0926    push       ebx
 004C0927    push       esi
 004C0928    push       edi
 004C0929    xor        ebx,ebx
 004C092B    mov        dword ptr [ebp-18],ebx
 004C092E    mov        dword ptr [ebp-14],ebx
 004C0931    mov        byte ptr [ebp-1],cl
 004C0934    mov        dword ptr [ebp-8],edx
 004C0937    mov        esi,dword ptr [ebp+8]
 004C093A    xor        eax,eax
 004C093C    push       ebp
 004C093D    push       4C0AA2
 004C0942    push       dword ptr fs:[eax]
 004C0945    mov        dword ptr fs:[eax],esp
 004C0948    xor        eax,eax
 004C094A    mov        dword ptr [ebp-0C],eax
 004C094D    mov        byte ptr [ebp-0D],0
 004C0951    xor        ebx,ebx
 004C0953    mov        byte ptr [ebp-2],0
 004C0957    mov        byte ptr [esi+4],0
 004C095B    mov        eax,esi
 004C095D    call       @LStrClr
 004C0962    cmp        byte ptr [ebp-1],2D
>004C0966    jne        004C098B
 004C0968    lea        edx,[ebp-1]
 004C096B    mov        ecx,1
 004C0970    mov        eax,dword ptr [ebp-8]
 004C0973    mov        edi,dword ptr [eax]
 004C0975    call       dword ptr [edi+0C]
 004C0978    mov        dword ptr [ebp-0C],eax
 004C097B    mov        eax,esi
 004C097D    mov        edx,4C0ABC; '-'
 004C0982    call       @LStrAsg
 004C0987    mov        byte ptr [ebp-0D],1
 004C098B    push       ebp
 004C098C    lea        eax,[ebp-14]
 004C098F    call       004C0894
 004C0994    pop        ecx
 004C0995    mov        edx,dword ptr [ebp-14]
 004C0998    mov        eax,esi
 004C099A    call       @LStrCat
 004C099F    cmp        byte ptr [ebp-1],2E
>004C09A3    jne        004C09E0
 004C09A5    mov        bl,1
 004C09A7    mov        eax,esi
 004C09A9    mov        edx,4C0AC8; '.'
 004C09AE    call       @LStrCat
 004C09B3    lea        edx,[ebp-1]
 004C09B6    mov        ecx,1
 004C09BB    mov        eax,dword ptr [ebp-8]
 004C09BE    mov        edi,dword ptr [eax]
 004C09C0    call       dword ptr [edi+0C]
 004C09C3    mov        dword ptr [ebp-0C],eax
 004C09C6    cmp        dword ptr [ebp-0C],0
>004C09CA    jle        004C09E0
 004C09CC    push       ebp
 004C09CD    lea        eax,[ebp-18]
 004C09D0    call       004C0894
 004C09D5    pop        ecx
 004C09D6    mov        edx,dword ptr [ebp-18]
 004C09D9    mov        eax,esi
 004C09DB    call       @LStrCat
 004C09E0    mov        edx,dword ptr [ebp-0C]
 004C09E3    neg        edx
>004C09E5    jno        004C09EC
 004C09E7    call       @IntOver
 004C09EC    mov        cx,1
 004C09F0    mov        eax,dword ptr [ebp-8]
 004C09F3    mov        edi,dword ptr [eax]
 004C09F5    call       dword ptr [edi+14]
 004C09F8    cmp        byte ptr [ebp-2],0
>004C09FC    jne        004C0A79
 004C09FE    test       byte ptr [ebp-0D],bl
>004C0A01    je         004C0A31
 004C0A03    mov        cx,1
 004C0A07    or         edx,0FFFFFFFF
 004C0A0A    mov        eax,dword ptr [ebp-8]
 004C0A0D    mov        ebx,dword ptr [eax]
 004C0A0F    call       dword ptr [ebx+14]
 004C0A12    mov        eax,dword ptr [ebp+0C]
 004C0A15    mov        ebx,dword ptr [eax+41C]
 004C0A1B    test       ebx,ebx
>004C0A1D    je         004C0A87
 004C0A1F    mov        eax,dword ptr [ebp+0C]
 004C0A22    push       eax
 004C0A23    push       esi
 004C0A24    mov        eax,ebx
 004C0A26    mov        cl,2D
 004C0A28    mov        edx,dword ptr [ebp-8]
 004C0A2B    mov        ebx,dword ptr [eax]
 004C0A2D    call       dword ptr [ebx]
>004C0A2F    jmp        004C0A87
 004C0A31    cmp        byte ptr [ebp-0D],0
>004C0A35    je         004C0A56
 004C0A37    mov        eax,dword ptr [ebp+0C]
 004C0A3A    mov        ebx,dword ptr [eax+41C]
 004C0A40    test       ebx,ebx
>004C0A42    je         004C0A87
 004C0A44    mov        eax,dword ptr [ebp+0C]
 004C0A47    push       eax
 004C0A48    push       esi
 004C0A49    mov        eax,ebx
 004C0A4B    mov        cl,2D
 004C0A4D    mov        edx,dword ptr [ebp-8]
 004C0A50    mov        ebx,dword ptr [eax]
 004C0A52    call       dword ptr [ebx]
>004C0A54    jmp        004C0A87
 004C0A56    test       bl,bl
>004C0A58    je         004C0A87
 004C0A5A    mov        eax,dword ptr [ebp+0C]
 004C0A5D    mov        ebx,dword ptr [eax+41C]
 004C0A63    test       ebx,ebx
>004C0A65    je         004C0A87
 004C0A67    mov        eax,dword ptr [ebp+0C]
 004C0A6A    push       eax
 004C0A6B    push       esi
 004C0A6C    mov        eax,ebx
 004C0A6E    mov        cl,2E
 004C0A70    mov        edx,dword ptr [ebp-8]
 004C0A73    mov        ebx,dword ptr [eax]
 004C0A75    call       dword ptr [ebx]
>004C0A77    jmp        004C0A87
 004C0A79    test       bl,bl
>004C0A7B    je         004C0A83
 004C0A7D    mov        byte ptr [esi+4],2
>004C0A81    jmp        004C0A87
 004C0A83    mov        byte ptr [esi+4],3
 004C0A87    xor        eax,eax
 004C0A89    pop        edx
 004C0A8A    pop        ecx
 004C0A8B    pop        ecx
 004C0A8C    mov        dword ptr fs:[eax],edx
 004C0A8F    push       4C0AA9
 004C0A94    lea        eax,[ebp-18]
 004C0A97    mov        edx,2
 004C0A9C    call       @LStrArrayClr
 004C0AA1    ret
<004C0AA2    jmp        @HandleFinally
<004C0AA7    jmp        004C0A94
 004C0AA9    pop        edi
 004C0AAA    pop        esi
 004C0AAB    pop        ebx
 004C0AAC    mov        esp,ebp
 004C0AAE    pop        ebp
 004C0AAF    ret        8
*}
//end;

//004C0ACC
//procedure sub_004C0ACC(?:?; ?:?; ?:?);
//begin
{*
 004C0ACC    push       ebp
 004C0ACD    mov        ebp,esp
 004C0ACF    push       0
 004C0AD1    push       0
 004C0AD3    push       0
 004C0AD5    push       ebx
 004C0AD6    push       esi
 004C0AD7    push       edi
 004C0AD8    mov        ebx,ecx
 004C0ADA    mov        esi,edx
 004C0ADC    xor        eax,eax
 004C0ADE    push       ebp
 004C0ADF    push       4C0B52
 004C0AE4    push       dword ptr fs:[eax]
 004C0AE7    mov        dword ptr fs:[eax],esp
 004C0AEA    lea        eax,[ebp-8]
 004C0AED    mov        edx,ebx
 004C0AEF    call       @LStrFromChar
 004C0AF4    lea        edx,[ebp-1]
 004C0AF7    mov        ecx,1
 004C0AFC    mov        eax,esi
 004C0AFE    mov        edi,dword ptr [eax]
 004C0B00    call       dword ptr [edi+0C]
 004C0B03    test       eax,eax
>004C0B05    jne        004C0B0A
 004C0B07    mov        byte ptr [ebp-1],bl
 004C0B0A    lea        eax,[ebp-0C]
 004C0B0D    mov        dl,byte ptr [ebp-1]
 004C0B10    call       @LStrFromChar
 004C0B15    mov        edx,dword ptr [ebp-0C]
 004C0B18    lea        eax,[ebp-8]
 004C0B1B    call       @LStrCat
 004C0B20    cmp        bl,byte ptr [ebp-1]
<004C0B23    jne        004C0AF4
 004C0B25    mov        eax,dword ptr [ebp+8]
 004C0B28    mov        byte ptr [eax+4],7
 004C0B2C    mov        eax,dword ptr [ebp+8]
 004C0B2F    mov        edx,dword ptr [ebp-8]
 004C0B32    call       @LStrAsg
 004C0B37    xor        eax,eax
 004C0B39    pop        edx
 004C0B3A    pop        ecx
 004C0B3B    pop        ecx
 004C0B3C    mov        dword ptr fs:[eax],edx
 004C0B3F    push       4C0B59
 004C0B44    lea        eax,[ebp-0C]
 004C0B47    mov        edx,2
 004C0B4C    call       @LStrArrayClr
 004C0B51    ret
<004C0B52    jmp        @HandleFinally
<004C0B57    jmp        004C0B44
 004C0B59    pop        edi
 004C0B5A    pop        esi
 004C0B5B    pop        ebx
 004C0B5C    mov        esp,ebp
 004C0B5E    pop        ebp
 004C0B5F    ret        8
*}
//end;

//004C0B64
//procedure sub_004C0B64(?:?; ?:?; ?:?);
//begin
{*
 004C0B64    push       ebp
 004C0B65    mov        ebp,esp
 004C0B67    push       0
 004C0B69    push       0
 004C0B6B    push       ebx
 004C0B6C    push       esi
 004C0B6D    mov        ebx,ecx
 004C0B6F    mov        esi,edx
 004C0B71    xor        eax,eax
 004C0B73    push       ebp
 004C0B74    push       4C0BC2
 004C0B79    push       dword ptr fs:[eax]
 004C0B7C    mov        dword ptr fs:[eax],esp
 004C0B7F    lea        eax,[ebp-4]
 004C0B82    mov        edx,ebx
 004C0B84    call       @LStrFromChar
 004C0B89    push       dword ptr [ebp-4]
 004C0B8C    push       esi
 004C0B8D    lea        eax,[ebp-8]
 004C0B90    mov        edx,ebx
 004C0B92    call       @LStrFromChar
 004C0B97    push       dword ptr [ebp-8]
 004C0B9A    mov        eax,dword ptr [ebp+8]
 004C0B9D    mov        edx,3
 004C0BA2    call       @LStrCatN
 004C0BA7    xor        eax,eax
 004C0BA9    pop        edx
 004C0BAA    pop        ecx
 004C0BAB    pop        ecx
 004C0BAC    mov        dword ptr fs:[eax],edx
 004C0BAF    push       4C0BC9
 004C0BB4    lea        eax,[ebp-8]
 004C0BB7    mov        edx,2
 004C0BBC    call       @LStrArrayClr
 004C0BC1    ret
<004C0BC2    jmp        @HandleFinally
<004C0BC7    jmp        004C0BB4
 004C0BC9    pop        esi
 004C0BCA    pop        ebx
 004C0BCB    pop        ecx
 004C0BCC    pop        ecx
 004C0BCD    pop        ebp
 004C0BCE    ret        4
*}
//end;

//004C0BD4
//procedure sub_004C0BD4(?:?; ?:?; ?:?);
//begin
{*
 004C0BD4    push       ebp
 004C0BD5    mov        ebp,esp
 004C0BD7    push       ebx
 004C0BD8    push       esi
 004C0BD9    push       edi
 004C0BDA    mov        ebx,ecx
 004C0BDC    mov        edi,edx
 004C0BDE    mov        esi,dword ptr [ebp+8]
 004C0BE1    mov        eax,edi
 004C0BE3    call       @LStrLen
 004C0BE8    cmp        eax,2
>004C0BEB    jl         004C0C60
 004C0BED    mov        eax,1
 004C0BF2    dec        eax
 004C0BF3    test       edi,edi
>004C0BF5    je         004C0BFC
 004C0BF7    cmp        eax,dword ptr [edi-4]
>004C0BFA    jb         004C0C01
 004C0BFC    call       @BoundErr
 004C0C01    inc        eax
 004C0C02    cmp        bl,byte ptr [edi+eax-1]
>004C0C06    jne        004C0C60
 004C0C08    mov        eax,edi
 004C0C0A    call       @LStrLen
 004C0C0F    dec        eax
 004C0C10    test       edi,edi
>004C0C12    je         004C0C19
 004C0C14    cmp        eax,dword ptr [edi-4]
>004C0C17    jb         004C0C1E
 004C0C19    call       @BoundErr
 004C0C1E    inc        eax
 004C0C1F    mov        al,byte ptr [edi+eax-1]
 004C0C23    mov        edx,1
 004C0C28    dec        edx
 004C0C29    test       edi,edi
>004C0C2B    je         004C0C32
 004C0C2D    cmp        edx,dword ptr [edi-4]
>004C0C30    jb         004C0C37
 004C0C32    call       @BoundErr
 004C0C37    inc        edx
 004C0C38    cmp        al,byte ptr [edi+edx-1]
>004C0C3C    jne        004C0C60
 004C0C3E    push       esi
 004C0C3F    mov        eax,edi
 004C0C41    call       @LStrLen
 004C0C46    mov        ecx,eax
 004C0C48    sub        ecx,2
>004C0C4B    jno        004C0C52
 004C0C4D    call       @IntOver
 004C0C52    mov        edx,2
 004C0C57    mov        eax,edi
 004C0C59    call       @LStrCopy
>004C0C5E    jmp        004C0C69
 004C0C60    mov        eax,esi
 004C0C62    mov        edx,edi
 004C0C64    call       @LStrAsg
 004C0C69    pop        edi
 004C0C6A    pop        esi
 004C0C6B    pop        ebx
 004C0C6C    pop        ebp
 004C0C6D    ret        4
*}
//end;

//004C0C70
//procedure sub_004C0C70(?:?; ?:?; ?:?);
//begin
{*
 004C0C70    push       ebp
 004C0C71    mov        ebp,esp
 004C0C73    push       0
 004C0C75    push       0
 004C0C77    push       0
 004C0C79    push       ebx
 004C0C7A    push       esi
 004C0C7B    push       edi
 004C0C7C    mov        byte ptr [ebp-1],cl
 004C0C7F    mov        ebx,edx
 004C0C81    mov        esi,dword ptr [ebp+8]
 004C0C84    xor        eax,eax
 004C0C86    push       ebp
 004C0C87    push       4C0D15
 004C0C8C    push       dword ptr fs:[eax]
 004C0C8F    mov        dword ptr fs:[eax],esp
 004C0C92    lea        eax,[ebp-8]
 004C0C95    mov        dl,byte ptr [ebp-1]
 004C0C98    call       @LStrFromChar
>004C0C9D    jmp        004C0CB5
 004C0C9F    lea        eax,[ebp-0C]
 004C0CA2    mov        dl,byte ptr [ebp-2]
 004C0CA5    call       @LStrFromChar
 004C0CAA    mov        edx,dword ptr [ebp-0C]
 004C0CAD    lea        eax,[ebp-8]
 004C0CB0    call       @LStrCat
 004C0CB5    lea        edx,[ebp-2]
 004C0CB8    mov        ecx,1
 004C0CBD    mov        eax,ebx
 004C0CBF    mov        edi,dword ptr [eax]
 004C0CC1    call       dword ptr [edi+0C]
 004C0CC4    test       eax,eax
>004C0CC6    jle        004C0CD3
 004C0CC8    mov        al,byte ptr [ebp-2]
 004C0CCB    sub        al,0A
>004C0CCD    je         004C0CD3
 004C0CCF    sub        al,3
<004C0CD1    jne        004C0C9F
 004C0CD3    mov        al,byte ptr [ebp-2]
 004C0CD6    sub        al,0A
>004C0CD8    je         004C0CDE
 004C0CDA    sub        al,3
>004C0CDC    jne        004C0CEC
 004C0CDE    mov        cx,1
 004C0CE2    or         edx,0FFFFFFFF
 004C0CE5    mov        eax,ebx
 004C0CE7    mov        ebx,dword ptr [eax]
 004C0CE9    call       dword ptr [ebx+14]
 004C0CEC    mov        byte ptr [esi+4],0C
 004C0CF0    mov        eax,esi
 004C0CF2    mov        edx,dword ptr [ebp-8]
 004C0CF5    call       @LStrAsg
 004C0CFA    xor        eax,eax
 004C0CFC    pop        edx
 004C0CFD    pop        ecx
 004C0CFE    pop        ecx
 004C0CFF    mov        dword ptr fs:[eax],edx
 004C0D02    push       4C0D1C
 004C0D07    lea        eax,[ebp-0C]
 004C0D0A    mov        edx,2
 004C0D0F    call       @LStrArrayClr
 004C0D14    ret
<004C0D15    jmp        @HandleFinally
<004C0D1A    jmp        004C0D07
 004C0D1C    pop        edi
 004C0D1D    pop        esi
 004C0D1E    pop        ebx
 004C0D1F    mov        esp,ebp
 004C0D21    pop        ebp
 004C0D22    ret        8
*}
//end;

//004C0D28
//procedure sub_004C0D28(?:TZCppCommentState; ?:?; ?:AnsiString);
//begin
{*
 004C0D28    push       ebp
 004C0D29    mov        ebp,esp
 004C0D2B    add        esp,0FFFFFFF4
 004C0D2E    push       ebx
 004C0D2F    push       esi
 004C0D30    push       edi
 004C0D31    xor        ebx,ebx
 004C0D33    mov        dword ptr [ebp-0C],ebx
 004C0D36    mov        esi,ecx
 004C0D38    mov        dword ptr [ebp-4],edx
 004C0D3B    xor        eax,eax
 004C0D3D    push       ebp
 004C0D3E    push       4C0DA1
 004C0D43    push       dword ptr fs:[eax]
 004C0D46    mov        dword ptr fs:[eax],esp
 004C0D49    xor        ebx,ebx
 004C0D4B    mov        eax,esi
 004C0D4D    call       @LStrClr
>004C0D52    jmp        004C0D77
 004C0D54    lea        eax,[ebp-0C]
 004C0D57    mov        dl,byte ptr [ebp-5]
 004C0D5A    call       @LStrFromChar
 004C0D5F    mov        edx,dword ptr [ebp-0C]
 004C0D62    mov        eax,esi
 004C0D64    call       @LStrCat
 004C0D69    cmp        bl,2A
>004C0D6C    jne        004C0D74
 004C0D6E    cmp        byte ptr [ebp-5],2F
>004C0D72    je         004C0D8B
 004C0D74    mov        bl,byte ptr [ebp-5]
 004C0D77    lea        edx,[ebp-5]
 004C0D7A    mov        ecx,1
 004C0D7F    mov        eax,dword ptr [ebp-4]
 004C0D82    mov        edi,dword ptr [eax]
 004C0D84    call       dword ptr [edi+0C]
 004C0D87    test       eax,eax
<004C0D89    jg         004C0D54
 004C0D8B    xor        eax,eax
 004C0D8D    pop        edx
 004C0D8E    pop        ecx
 004C0D8F    pop        ecx
 004C0D90    mov        dword ptr fs:[eax],edx
 004C0D93    push       4C0DA8
 004C0D98    lea        eax,[ebp-0C]
 004C0D9B    call       @LStrClr
 004C0DA0    ret
<004C0DA1    jmp        @HandleFinally
<004C0DA6    jmp        004C0D98
 004C0DA8    pop        edi
 004C0DA9    pop        esi
 004C0DAA    pop        ebx
 004C0DAB    mov        esp,ebp
 004C0DAD    pop        ebp
 004C0DAE    ret
*}
//end;

//004C0DB0
//procedure sub_004C0DB0(?:TZCppCommentState; ?:?; ?:AnsiString);
//begin
{*
 004C0DB0    push       ebp
 004C0DB1    mov        ebp,esp
 004C0DB3    push       0
 004C0DB5    push       0
 004C0DB7    push       0
 004C0DB9    push       0
 004C0DBB    push       ebx
 004C0DBC    push       esi
 004C0DBD    push       edi
 004C0DBE    mov        ebx,ecx
 004C0DC0    mov        esi,edx
 004C0DC2    xor        eax,eax
 004C0DC4    push       ebp
 004C0DC5    push       4C0E8A
 004C0DCA    push       dword ptr fs:[eax]
 004C0DCD    mov        dword ptr fs:[eax],esp
 004C0DD0    mov        eax,ebx
 004C0DD2    call       @LStrClr
>004C0DD7    jmp        004C0DEE
 004C0DD9    lea        eax,[ebp-8]
 004C0DDC    mov        dl,byte ptr [ebp-1]
 004C0DDF    call       @LStrFromChar
 004C0DE4    mov        edx,dword ptr [ebp-8]
 004C0DE7    mov        eax,ebx
 004C0DE9    call       @LStrCat
 004C0DEE    lea        edx,[ebp-1]
 004C0DF1    mov        ecx,1
 004C0DF6    mov        eax,esi
 004C0DF8    mov        edi,dword ptr [eax]
 004C0DFA    call       dword ptr [edi+0C]
 004C0DFD    test       eax,eax
>004C0DFF    jle        004C0E0C
 004C0E01    mov        al,byte ptr [ebp-1]
 004C0E04    sub        al,0A
>004C0E06    je         004C0E0C
 004C0E08    sub        al,3
<004C0E0A    jne        004C0DD9
 004C0E0C    mov        al,byte ptr [ebp-1]
 004C0E0F    sub        al,0A
>004C0E11    je         004C0E17
 004C0E13    sub        al,3
>004C0E15    jne        004C0E6F
 004C0E17    lea        eax,[ebp-0C]
 004C0E1A    mov        dl,byte ptr [ebp-1]
 004C0E1D    call       @LStrFromChar
 004C0E22    mov        edx,dword ptr [ebp-0C]
 004C0E25    mov        eax,ebx
 004C0E27    call       @LStrCat
 004C0E2C    lea        edx,[ebp-1]
 004C0E2F    mov        ecx,1
 004C0E34    mov        eax,esi
 004C0E36    mov        edi,dword ptr [eax]
 004C0E38    call       dword ptr [edi+0C]
 004C0E3B    test       eax,eax
>004C0E3D    jle        004C0E6F
 004C0E3F    mov        al,byte ptr [ebp-1]
 004C0E42    sub        al,0A
>004C0E44    je         004C0E4A
 004C0E46    sub        al,3
>004C0E48    jne        004C0E61
 004C0E4A    lea        eax,[ebp-10]
 004C0E4D    mov        dl,byte ptr [ebp-1]
 004C0E50    call       @LStrFromChar
 004C0E55    mov        edx,dword ptr [ebp-10]
 004C0E58    mov        eax,ebx
 004C0E5A    call       @LStrCat
>004C0E5F    jmp        004C0E6F
 004C0E61    mov        cx,1
 004C0E65    or         edx,0FFFFFFFF
 004C0E68    mov        eax,esi
 004C0E6A    mov        ebx,dword ptr [eax]
 004C0E6C    call       dword ptr [ebx+14]
 004C0E6F    xor        eax,eax
 004C0E71    pop        edx
 004C0E72    pop        ecx
 004C0E73    pop        ecx
 004C0E74    mov        dword ptr fs:[eax],edx
 004C0E77    push       4C0E91
 004C0E7C    lea        eax,[ebp-10]
 004C0E7F    mov        edx,3
 004C0E84    call       @LStrArrayClr
 004C0E89    ret
<004C0E8A    jmp        @HandleFinally
<004C0E8F    jmp        004C0E7C
 004C0E91    pop        edi
 004C0E92    pop        esi
 004C0E93    pop        ebx
 004C0E94    mov        esp,ebp
 004C0E96    pop        ebp
 004C0E97    ret
*}
//end;

//004C0E98
//procedure sub_004C0E98(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004C0E98    push       ebp
 004C0E99    mov        ebp,esp
 004C0E9B    add        esp,0FFFFFFEC
 004C0E9E    push       ebx
 004C0E9F    push       esi
 004C0EA0    xor        ebx,ebx
 004C0EA2    mov        dword ptr [ebp-14],ebx
 004C0EA5    mov        dword ptr [ebp-10],ebx
 004C0EA8    mov        byte ptr [ebp-9],cl
 004C0EAB    mov        dword ptr [ebp-8],edx
 004C0EAE    mov        dword ptr [ebp-4],eax
 004C0EB1    mov        ebx,dword ptr [ebp+8]
 004C0EB4    xor        eax,eax
 004C0EB6    push       ebp
 004C0EB7    push       4C0F86
 004C0EBC    push       dword ptr fs:[eax]
 004C0EBF    mov        dword ptr fs:[eax],esp
 004C0EC2    mov        byte ptr [ebx+4],0
 004C0EC6    mov        eax,ebx
 004C0EC8    mov        dl,byte ptr [ebp-9]
 004C0ECB    call       @LStrFromChar
 004C0ED0    lea        edx,[ebp-0A]
 004C0ED3    mov        ecx,1
 004C0ED8    mov        eax,dword ptr [ebp-8]
 004C0EDB    mov        esi,dword ptr [eax]
 004C0EDD    call       dword ptr [esi+0C]
 004C0EE0    test       eax,eax
>004C0EE2    jle        004C0F0D
 004C0EE4    cmp        byte ptr [ebp-0A],2A
>004C0EE8    jne        004C0F0D
 004C0EEA    mov        byte ptr [ebx+4],0C
 004C0EEE    lea        ecx,[ebp-10]
 004C0EF1    mov        edx,dword ptr [ebp-8]
 004C0EF4    mov        eax,dword ptr [ebp-4]
 004C0EF7    call       004C0D28
 004C0EFC    mov        ecx,dword ptr [ebp-10]
 004C0EFF    mov        eax,ebx
 004C0F01    mov        edx,4C0FA0; '/*'
 004C0F06    call       @LStrCat3
>004C0F0B    jmp        004C0F6B
 004C0F0D    test       eax,eax
>004C0F0F    jle        004C0F3A
 004C0F11    cmp        byte ptr [ebp-0A],2F
>004C0F15    jne        004C0F3A
 004C0F17    mov        byte ptr [ebx+4],0C
 004C0F1B    lea        ecx,[ebp-14]
 004C0F1E    mov        edx,dword ptr [ebp-8]
 004C0F21    mov        eax,dword ptr [ebp-4]
 004C0F24    call       004C0DB0
 004C0F29    mov        ecx,dword ptr [ebp-14]
 004C0F2C    mov        eax,ebx
 004C0F2E    mov        edx,4C0FAC; '//'
 004C0F33    call       @LStrCat3
>004C0F38    jmp        004C0F6B
 004C0F3A    test       eax,eax
>004C0F3C    jle        004C0F4D
 004C0F3E    mov        cx,1
 004C0F42    or         edx,0FFFFFFFF
 004C0F45    mov        eax,dword ptr [ebp-8]
 004C0F48    mov        esi,dword ptr [eax]
 004C0F4A    call       dword ptr [esi+14]
 004C0F4D    mov        eax,dword ptr [ebp+0C]
 004C0F50    mov        esi,dword ptr [eax+41C]
 004C0F56    test       esi,esi
>004C0F58    je         004C0F6B
 004C0F5A    mov        eax,dword ptr [ebp+0C]
 004C0F5D    push       eax
 004C0F5E    push       ebx
 004C0F5F    mov        eax,esi
 004C0F61    mov        cl,byte ptr [ebp-9]
 004C0F64    mov        edx,dword ptr [ebp-8]
 004C0F67    mov        ebx,dword ptr [eax]
 004C0F69    call       dword ptr [ebx]
 004C0F6B    xor        eax,eax
 004C0F6D    pop        edx
 004C0F6E    pop        ecx
 004C0F6F    pop        ecx
 004C0F70    mov        dword ptr fs:[eax],edx
 004C0F73    push       4C0F8D
 004C0F78    lea        eax,[ebp-14]
 004C0F7B    mov        edx,2
 004C0F80    call       @LStrArrayClr
 004C0F85    ret
<004C0F86    jmp        @HandleFinally
<004C0F8B    jmp        004C0F78
 004C0F8D    pop        esi
 004C0F8E    pop        ebx
 004C0F8F    mov        esp,ebp
 004C0F91    pop        ebp
 004C0F92    ret        8
*}
//end;

//004C0FB0
//procedure sub_004C0FB0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004C0FB0    push       ebp
 004C0FB1    mov        ebp,esp
 004C0FB3    add        esp,0FFFFFFF0
 004C0FB6    push       ebx
 004C0FB7    push       esi
 004C0FB8    push       edi
 004C0FB9    xor        ebx,ebx
 004C0FBB    mov        dword ptr [ebp-10],ebx
 004C0FBE    mov        ebx,ecx
 004C0FC0    mov        dword ptr [ebp-8],edx
 004C0FC3    mov        dword ptr [ebp-4],eax
 004C0FC6    mov        esi,dword ptr [ebp+8]
 004C0FC9    xor        eax,eax
 004C0FCB    push       ebp
 004C0FCC    push       4C1078
 004C0FD1    push       dword ptr fs:[eax]
 004C0FD4    mov        dword ptr fs:[eax],esp
 004C0FD7    mov        byte ptr [esi+4],0
 004C0FDB    mov        eax,esi
 004C0FDD    mov        edx,ebx
 004C0FDF    call       @LStrFromChar
 004C0FE4    cmp        bl,2F
>004C0FE7    jne        004C1039
 004C0FE9    lea        edx,[ebp-9]
 004C0FEC    mov        ecx,1
 004C0FF1    mov        eax,dword ptr [ebp-8]
 004C0FF4    mov        edi,dword ptr [eax]
 004C0FF6    call       dword ptr [edi+0C]
 004C0FF9    test       eax,eax
>004C0FFB    jle        004C1026
 004C0FFD    cmp        byte ptr [ebp-9],2A
>004C1001    jne        004C1026
 004C1003    mov        byte ptr [esi+4],0C
 004C1007    lea        ecx,[ebp-10]
 004C100A    mov        edx,dword ptr [ebp-8]
 004C100D    mov        eax,dword ptr [ebp-4]
 004C1010    call       004C0D28
 004C1015    mov        ecx,dword ptr [ebp-10]
 004C1018    mov        eax,esi
 004C101A    mov        edx,4C1090; '/*'
 004C101F    call       @LStrCat3
>004C1024    jmp        004C1039
 004C1026    test       eax,eax
>004C1028    jle        004C1039
 004C102A    mov        cx,1
 004C102E    or         edx,0FFFFFFFF
 004C1031    mov        eax,dword ptr [ebp-8]
 004C1034    mov        edi,dword ptr [eax]
 004C1036    call       dword ptr [edi+14]
 004C1039    cmp        byte ptr [esi+4],0
>004C103D    jne        004C1062
 004C103F    mov        eax,dword ptr [ebp+0C]
 004C1042    cmp        dword ptr [eax+41C],0
>004C1049    je         004C1062
 004C104B    mov        eax,dword ptr [ebp+0C]
 004C104E    push       eax
 004C104F    push       esi
 004C1050    mov        eax,dword ptr [ebp+0C]
 004C1053    mov        eax,dword ptr [eax+41C]
 004C1059    mov        ecx,ebx
 004C105B    mov        edx,dword ptr [ebp-8]
 004C105E    mov        ebx,dword ptr [eax]
 004C1060    call       dword ptr [ebx]
 004C1062    xor        eax,eax
 004C1064    pop        edx
 004C1065    pop        ecx
 004C1066    pop        ecx
 004C1067    mov        dword ptr fs:[eax],edx
 004C106A    push       4C107F
 004C106F    lea        eax,[ebp-10]
 004C1072    call       @LStrClr
 004C1077    ret
<004C1078    jmp        @HandleFinally
<004C107D    jmp        004C106F
 004C107F    pop        edi
 004C1080    pop        esi
 004C1081    pop        ebx
 004C1082    mov        esp,ebp
 004C1084    pop        ebp
 004C1085    ret        8
*}
//end;

//004C1094
//constructor TZSymbolNode.Create(?:TZSymbolNode; _Dv__:Boolean; ?:?);
//begin
{*
 004C1094    push       ebp
 004C1095    mov        ebp,esp
 004C1097    push       ebx
 004C1098    push       esi
 004C1099    test       dl,dl
>004C109B    je         004C10A5
 004C109D    add        esp,0FFFFFFF0
 004C10A0    call       @ClassCreate
 004C10A5    mov        ebx,edx
 004C10A7    mov        esi,eax
 004C10A9    mov        dword ptr [esi+10],ecx; TZSymbolNode.?f10:dword
 004C10AC    mov        al,byte ptr [ebp+8]
 004C10AF    mov        byte ptr [esi+4],al; TZSymbolNode.?f4:byte
 004C10B2    mov        byte ptr [esi+0C],0; TZSymbolNode.?fC:byte
 004C10B6    push       100
 004C10BB    lea        eax,[esi+8]; TZSymbolNode.?f8:TZSymbolNodeArray
 004C10BE    mov        ecx,1
 004C10C3    mov        edx,dword ptr ds:[4C04B8]; TZSymbolNodeArray
 004C10C9    call       @DynArraySetLength
 004C10CE    add        esp,4
 004C10D1    mov        eax,esi
 004C10D3    test       bl,bl
>004C10D5    je         004C10E6
 004C10D7    call       @AfterConstruction
 004C10DC    pop        dword ptr fs:[0]
 004C10E3    add        esp,0C
 004C10E6    mov        eax,esi
 004C10E8    pop        esi
 004C10E9    pop        ebx
 004C10EA    pop        ebp
 004C10EB    ret        4
*}
//end;

//004C10F0
destructor TZSymbolNode.Destroy;
begin
{*
 004C10F0    push       ebp
 004C10F1    mov        ebp,esp
 004C10F3    push       ebx
 004C10F4    push       esi
 004C10F5    push       edi
 004C10F6    call       @BeforeDestruction
 004C10FB    mov        ebx,edx
 004C10FD    mov        esi,eax
 004C10FF    xor        edi,edi
 004C1101    mov        eax,dword ptr [esi+8]; TZSymbolNode.?f8:TZSymbolNodeArray
 004C1104    test       eax,eax
>004C1106    je         004C110D
 004C1108    cmp        edi,dword ptr [eax-4]
>004C110B    jb         004C1112
 004C110D    call       @BoundErr
 004C1112    cmp        dword ptr [eax+edi*4],0
>004C1116    je         004C113A
 004C1118    mov        eax,dword ptr [esi+8]; TZSymbolNode.?f8:TZSymbolNodeArray
 004C111B    test       eax,eax
>004C111D    je         004C1124
 004C111F    cmp        edi,dword ptr [eax-4]
>004C1122    jb         004C1129
 004C1124    call       @BoundErr
 004C1129    mov        eax,dword ptr [eax+edi*4]
 004C112C    call       TObject.Free
 004C1131    inc        edi
 004C1132    cmp        edi,100
<004C1138    jne        004C1101
 004C113A    mov        edx,ebx
 004C113C    and        dl,0FC
 004C113F    mov        eax,esi
 004C1141    call       TObject.Destroy
 004C1146    test       bl,bl
>004C1148    jle        004C1151
 004C114A    mov        eax,esi
 004C114C    call       @ClassDestroy
 004C1151    pop        edi
 004C1152    pop        esi
 004C1153    pop        ebx
 004C1154    pop        ebp
 004C1155    ret
*}
end;

//004C1158
//procedure sub_004C1158(?:?; ?:AnsiString);
//begin
{*
 004C1158    push       ebp
 004C1159    mov        ebp,esp
 004C115B    push       0
 004C115D    push       ebx
 004C115E    push       esi
 004C115F    mov        ebx,edx
 004C1161    mov        esi,eax
 004C1163    xor        eax,eax
 004C1165    push       ebp
 004C1166    push       4C11E1
 004C116B    push       dword ptr fs:[eax]
 004C116E    mov        dword ptr fs:[eax],esp
 004C1171    mov        eax,ebx
 004C1173    call       @LStrLen
 004C1178    test       eax,eax
>004C117A    jle        004C11CB
 004C117C    mov        eax,1
 004C1181    dec        eax
 004C1182    test       ebx,ebx
>004C1184    je         004C118B
 004C1186    cmp        eax,dword ptr [ebx-4]
>004C1189    jb         004C1190
 004C118B    call       @BoundErr
 004C1190    inc        eax
 004C1191    mov        dl,byte ptr [ebx+eax-1]
 004C1195    mov        eax,esi
 004C1197    call       004C12B8
 004C119C    mov        esi,eax
 004C119E    lea        eax,[ebp-4]
 004C11A1    push       eax
 004C11A2    mov        eax,ebx
 004C11A4    call       @LStrLen
 004C11A9    mov        ecx,eax
 004C11AB    sub        ecx,1
>004C11AE    jno        004C11B5
 004C11B0    call       @IntOver
 004C11B5    mov        edx,2
 004C11BA    mov        eax,ebx
 004C11BC    call       @LStrCopy
 004C11C1    mov        edx,dword ptr [ebp-4]
 004C11C4    mov        eax,esi
 004C11C6    call       004C1158
 004C11CB    xor        eax,eax
 004C11CD    pop        edx
 004C11CE    pop        ecx
 004C11CF    pop        ecx
 004C11D0    mov        dword ptr fs:[eax],edx
 004C11D3    push       4C11E8
 004C11D8    lea        eax,[ebp-4]
 004C11DB    call       @LStrClr
 004C11E0    ret
<004C11E1    jmp        @HandleFinally
<004C11E6    jmp        004C11D8
 004C11E8    pop        esi
 004C11E9    pop        ebx
 004C11EA    pop        ecx
 004C11EB    pop        ebp
 004C11EC    ret
*}
//end;

//004C11F0
//procedure sub_004C11F0(?:?);
//begin
{*
 004C11F0    push       ebp
 004C11F1    mov        ebp,esp
 004C11F3    push       0
 004C11F5    push       0
 004C11F7    push       ebx
 004C11F8    push       esi
 004C11F9    mov        esi,edx
 004C11FB    mov        ebx,eax
 004C11FD    xor        eax,eax
 004C11FF    push       ebp
 004C1200    push       4C124B
 004C1205    push       dword ptr fs:[eax]
 004C1208    mov        dword ptr fs:[eax],esp
 004C120B    lea        edx,[ebp-4]
 004C120E    mov        eax,dword ptr [ebx+10]; TZSymbolNode.?f10:dword
 004C1211    mov        ecx,dword ptr [eax]
 004C1213    call       dword ptr [ecx+4]
 004C1216    mov        eax,dword ptr [ebp-4]
 004C1219    push       eax
 004C121A    lea        eax,[ebp-8]
 004C121D    mov        dl,byte ptr [ebx+4]; TZSymbolNode.?f4:byte
 004C1220    call       @LStrFromChar
 004C1225    mov        ecx,dword ptr [ebp-8]
 004C1228    mov        eax,esi
 004C122A    pop        edx
 004C122B    call       @LStrCat3
 004C1230    xor        eax,eax
 004C1232    pop        edx
 004C1233    pop        ecx
 004C1234    pop        ecx
 004C1235    mov        dword ptr fs:[eax],edx
 004C1238    push       4C1252
 004C123D    lea        eax,[ebp-8]
 004C1240    mov        edx,2
 004C1245    call       @LStrArrayClr
 004C124A    ret
<004C124B    jmp        @HandleFinally
<004C1250    jmp        004C123D
 004C1252    pop        esi
 004C1253    pop        ebx
 004C1254    pop        ecx
 004C1255    pop        ecx
 004C1256    pop        ebp
 004C1257    ret
*}
//end;

//004C1258
//function sub_004C1258(?:?; ?:?):?;
//begin
{*
 004C1258    push       ebp
 004C1259    mov        ebp,esp
 004C125B    add        esp,0FFFFFFF4
 004C125E    push       ebx
 004C125F    mov        dword ptr [ebp-8],edx
 004C1262    mov        dword ptr [ebp-4],eax
 004C1265    lea        edx,[ebp-9]
 004C1268    mov        ecx,1
 004C126D    mov        eax,dword ptr [ebp-8]
 004C1270    mov        ebx,dword ptr [eax]
 004C1272    call       dword ptr [ebx+0C]
 004C1275    mov        ebx,eax
 004C1277    test       ebx,ebx
>004C1279    jle        004C1287
 004C127B    mov        dl,byte ptr [ebp-9]
 004C127E    mov        eax,dword ptr [ebp-4]
 004C1281    mov        ecx,dword ptr [eax]
 004C1283    call       dword ptr [ecx]
>004C1285    jmp        004C1289
 004C1287    xor        eax,eax
 004C1289    test       eax,eax
>004C128B    jne        004C12A9
 004C128D    mov        edx,ebx
 004C128F    neg        edx
>004C1291    jno        004C1298
 004C1293    call       @IntOver
 004C1298    mov        cx,1
 004C129C    mov        eax,dword ptr [ebp-8]
 004C129F    mov        ebx,dword ptr [eax]
 004C12A1    call       dword ptr [ebx+14]
 004C12A4    mov        eax,dword ptr [ebp-4]
>004C12A7    jmp        004C12B1
 004C12A9    mov        edx,dword ptr [ebp-8]
 004C12AC    call       004C1258
 004C12B1    pop        ebx
 004C12B2    mov        esp,ebp
 004C12B4    pop        ebp
 004C12B5    ret
*}
//end;

//004C12B8
//function sub_004C12B8(?:dword; ?:?):?;
//begin
{*
 004C12B8    push       ebp
 004C12B9    mov        ebp,esp
 004C12BB    push       ecx
 004C12BC    push       ebx
 004C12BD    push       esi
 004C12BE    mov        byte ptr [ebp-1],dl
 004C12C1    mov        esi,eax
 004C12C3    mov        dl,byte ptr [ebp-1]
 004C12C6    mov        eax,esi
 004C12C8    mov        ecx,dword ptr [eax]
 004C12CA    call       dword ptr [ecx]
 004C12CC    test       eax,eax
>004C12CE    jne        004C132B
 004C12D0    xor        ebx,ebx
>004C12D2    jmp        004C12DE
 004C12D4    add        ebx,1
>004C12D7    jno        004C12DE
 004C12D9    call       @IntOver
 004C12DE    mov        edx,dword ptr [esi+8]
 004C12E1    test       edx,edx
>004C12E3    je         004C12EA
 004C12E5    cmp        ebx,dword ptr [edx-4]
>004C12E8    jb         004C12EF
 004C12EA    call       @BoundErr
 004C12EF    cmp        dword ptr [edx+ebx*4],0
>004C12F3    je         004C12FD
 004C12F5    cmp        ebx,0FF
<004C12FB    jle        004C12D4
 004C12FD    cmp        ebx,0FF
>004C1303    jg         004C132B
 004C1305    mov        al,byte ptr [ebp-1]
 004C1308    push       eax
 004C1309    mov        ecx,esi
 004C130B    mov        dl,1
 004C130D    mov        eax,[004C04EC]; TZSymbolNode
 004C1312    call       TZSymbolNode.Create; TZSymbolNode.Create
 004C1317    mov        edx,dword ptr [esi+8]
 004C131A    test       edx,edx
>004C131C    je         004C1323
 004C131E    cmp        ebx,dword ptr [edx-4]
>004C1321    jb         004C1328
 004C1323    call       @BoundErr
 004C1328    mov        dword ptr [edx+ebx*4],eax
 004C132B    pop        esi
 004C132C    pop        ebx
 004C132D    pop        ecx
 004C132E    pop        ebp
 004C132F    ret
*}
//end;

//004C1330
//function sub_004C1330(?:?):?;
//begin
{*
 004C1330    push       esi
 004C1331    push       edi
 004C1332    xor        edi,edi
 004C1334    xor        esi,esi
 004C1336    mov        ecx,dword ptr [eax+8]; TZSymbolNode.?f8:TZSymbolNodeArray
 004C1339    test       ecx,ecx
>004C133B    je         004C1342
 004C133D    cmp        esi,dword ptr [ecx-4]
>004C1340    jb         004C1347
 004C1342    call       @BoundErr
 004C1347    mov        ecx,dword ptr [ecx+esi*4]
 004C134A    test       ecx,ecx
>004C134C    je         004C1353
 004C134E    cmp        dl,byte ptr [ecx+4]
>004C1351    jne        004C1357
 004C1353    mov        edi,ecx
>004C1355    jmp        004C1360
 004C1357    inc        esi
 004C1358    cmp        esi,100
<004C135E    jne        004C1336
 004C1360    mov        eax,edi
 004C1362    pop        edi
 004C1363    pop        esi
 004C1364    ret
*}
//end;

//004C1368
//function sub_004C1368(?:dword; ?:AnsiString):?;
//begin
{*
 004C1368    push       ebp
 004C1369    mov        ebp,esp
 004C136B    push       0
 004C136D    push       ebx
 004C136E    push       esi
 004C136F    mov        ebx,edx
 004C1371    mov        esi,eax
 004C1373    xor        eax,eax
 004C1375    push       ebp
 004C1376    push       4C1406
 004C137B    push       dword ptr fs:[eax]
 004C137E    mov        dword ptr fs:[eax],esp
 004C1381    mov        eax,ebx
 004C1383    call       @LStrLen
 004C1388    test       eax,eax
>004C138A    jle        004C13A7
 004C138C    mov        eax,1
 004C1391    dec        eax
 004C1392    test       ebx,ebx
>004C1394    je         004C139B
 004C1396    cmp        eax,dword ptr [ebx-4]
>004C1399    jb         004C13A0
 004C139B    call       @BoundErr
 004C13A0    inc        eax
 004C13A1    mov        al,byte ptr [ebx+eax-1]
>004C13A5    jmp        004C13A9
 004C13A7    xor        eax,eax
 004C13A9    mov        edx,eax
 004C13AB    mov        eax,esi
 004C13AD    mov        ecx,dword ptr [eax]
 004C13AF    call       dword ptr [ecx]
 004C13B1    mov        esi,eax
 004C13B3    mov        eax,ebx
 004C13B5    call       @LStrLen
 004C13BA    dec        eax
>004C13BB    jle        004C13F0
 004C13BD    test       esi,esi
>004C13BF    je         004C13F0
 004C13C1    lea        eax,[ebp-4]
 004C13C4    push       eax
 004C13C5    mov        eax,ebx
 004C13C7    call       @LStrLen
 004C13CC    mov        ecx,eax
 004C13CE    sub        ecx,1
>004C13D1    jno        004C13D8
 004C13D3    call       @IntOver
 004C13D8    mov        edx,2
 004C13DD    mov        eax,ebx
 004C13DF    call       @LStrCopy
 004C13E4    mov        edx,dword ptr [ebp-4]
 004C13E7    mov        eax,esi
 004C13E9    call       004C1368
 004C13EE    mov        esi,eax
 004C13F0    xor        eax,eax
 004C13F2    pop        edx
 004C13F3    pop        ecx
 004C13F4    pop        ecx
 004C13F5    mov        dword ptr fs:[eax],edx
 004C13F8    push       4C140D
 004C13FD    lea        eax,[ebp-4]
 004C1400    call       @LStrClr
 004C1405    ret
<004C1406    jmp        @HandleFinally
<004C140B    jmp        004C13FD
 004C140D    mov        eax,esi
 004C140F    pop        esi
 004C1410    pop        ebx
 004C1411    pop        ecx
 004C1412    pop        ebp
 004C1413    ret
*}
//end;

//004C1414
//function sub_004C1414(?:?; ?:?):?;
//begin
{*
 004C1414    push       ebp
 004C1415    mov        ebp,esp
 004C1417    push       ebx
 004C1418    push       esi
 004C1419    push       edi
 004C141A    mov        esi,edx
 004C141C    mov        ebx,eax
 004C141E    cmp        byte ptr [ebx+0C],0
>004C1422    jne        004C143E
 004C1424    mov        cx,1
 004C1428    or         edx,0FFFFFFFF
 004C142B    mov        eax,esi
 004C142D    mov        edi,dword ptr [eax]
 004C142F    call       dword ptr [edi+14]
 004C1432    mov        edx,esi
 004C1434    mov        eax,dword ptr [ebx+10]
 004C1437    call       004C1414
>004C143C    jmp        004C1440
 004C143E    mov        eax,ebx
 004C1440    pop        edi
 004C1441    pop        esi
 004C1442    pop        ebx
 004C1443    pop        ebp
 004C1444    ret
*}
//end;

//004C1448
//constructor TZSymbolRootNode.Create(?:TZSymbolRootNode; _Dv__:Boolean);
//begin
{*
 004C1448    push       ebp
 004C1449    mov        ebp,esp
 004C144B    push       ebx
 004C144C    push       esi
 004C144D    push       edi
 004C144E    test       dl,dl
>004C1450    je         004C145A
 004C1452    add        esp,0FFFFFFF0
 004C1455    call       @ClassCreate
 004C145A    mov        ebx,edx
 004C145C    mov        esi,eax
 004C145E    push       0
 004C1460    xor        ecx,ecx
 004C1462    xor        edx,edx
 004C1464    mov        eax,esi
 004C1466    call       TZSymbolNode.Create
 004C146B    xor        edi,edi
 004C146D    mov        eax,edi
 004C146F    push       eax
 004C1470    mov        ecx,esi
 004C1472    mov        dl,1
 004C1474    mov        eax,[004C04EC]; TZSymbolNode
 004C1479    call       TZSymbolNode.Create; TZSymbolNode.Create
 004C147E    mov        edx,dword ptr [esi+8]; TZSymbolRootNode.?f8:TZSymbolNodeArray
 004C1481    test       edx,edx
>004C1483    je         004C148A
 004C1485    cmp        edi,dword ptr [edx-4]
>004C1488    jb         004C148F
 004C148A    call       @BoundErr
 004C148F    mov        dword ptr [edx+edi*4],eax
 004C1492    mov        eax,dword ptr [esi+8]; TZSymbolRootNode.?f8:TZSymbolNodeArray
 004C1495    test       eax,eax
>004C1497    je         004C149E
 004C1499    cmp        edi,dword ptr [eax-4]
>004C149C    jb         004C14A3
 004C149E    call       @BoundErr
 004C14A3    mov        eax,dword ptr [eax+edi*4]
 004C14A6    mov        byte ptr [eax+0C],1
 004C14AA    inc        edi
 004C14AB    cmp        edi,100
<004C14B1    jne        004C146D
 004C14B3    mov        eax,esi
 004C14B5    test       bl,bl
>004C14B7    je         004C14C8
 004C14B9    call       @AfterConstruction
 004C14BE    pop        dword ptr fs:[0]
 004C14C5    add        esp,0C
 004C14C8    mov        eax,esi
 004C14CA    pop        edi
 004C14CB    pop        esi
 004C14CC    pop        ebx
 004C14CD    pop        ebp
 004C14CE    ret
*}
//end;

//004C14D0
//procedure sub_004C14D0(?:dword; ?:?);
//begin
{*
 004C14D0    push       ebp
 004C14D1    mov        ebp,esp
 004C14D3    push       0
 004C14D5    push       ebx
 004C14D6    push       esi
 004C14D7    push       edi
 004C14D8    mov        ebx,edx
 004C14DA    mov        esi,eax
 004C14DC    xor        eax,eax
 004C14DE    push       ebp
 004C14DF    push       4C156D
 004C14E4    push       dword ptr fs:[eax]
 004C14E7    mov        dword ptr fs:[eax],esp
 004C14EA    mov        eax,ebx
 004C14EC    call       @LStrLen
 004C14F1    test       eax,eax
>004C14F3    jle        004C1510
 004C14F5    mov        eax,1
 004C14FA    dec        eax
 004C14FB    test       ebx,ebx
>004C14FD    je         004C1504
 004C14FF    cmp        eax,dword ptr [ebx-4]
>004C1502    jb         004C1509
 004C1504    call       @BoundErr
 004C1509    inc        eax
 004C150A    mov        al,byte ptr [ebx+eax-1]
>004C150E    jmp        004C1512
 004C1510    xor        eax,eax
 004C1512    mov        edx,eax
 004C1514    mov        eax,esi
 004C1516    call       004C12B8
 004C151B    mov        edi,eax
 004C151D    lea        eax,[ebp-4]
 004C1520    push       eax
 004C1521    mov        eax,ebx
 004C1523    call       @LStrLen
 004C1528    mov        ecx,eax
 004C152A    sub        ecx,1
>004C152D    jno        004C1534
 004C152F    call       @IntOver
 004C1534    mov        edx,2
 004C1539    mov        eax,ebx
 004C153B    call       @LStrCopy
 004C1540    mov        edx,dword ptr [ebp-4]
 004C1543    mov        eax,edi
 004C1545    call       004C1158
 004C154A    mov        edx,ebx
 004C154C    mov        eax,esi
 004C154E    call       004C1368
 004C1553    mov        byte ptr [eax+0C],1
 004C1557    xor        eax,eax
 004C1559    pop        edx
 004C155A    pop        ecx
 004C155B    pop        ecx
 004C155C    mov        dword ptr fs:[eax],edx
 004C155F    push       4C1574
 004C1564    lea        eax,[ebp-4]
 004C1567    call       @LStrClr
 004C156C    ret
<004C156D    jmp        @HandleFinally
<004C1572    jmp        004C1564
 004C1574    pop        edi
 004C1575    pop        esi
 004C1576    pop        ebx
 004C1577    pop        ecx
 004C1578    pop        ebp
 004C1579    ret
*}
//end;

//004C157C
//procedure sub_004C157C(?:?);
//begin
{*
 004C157C    push       ebp
 004C157D    mov        ebp,esp
 004C157F    push       ebx
 004C1580    mov        ebx,edx
 004C1582    mov        eax,ebx
 004C1584    call       @LStrClr
 004C1589    pop        ebx
 004C158A    pop        ebp
 004C158B    ret
*}
//end;

//004C158C
//function sub_004C158C(?:?):?;
//begin
{*
 004C158C    and        edx,0FF
 004C1592    mov        eax,dword ptr [eax+8]; TZSymbolRootNode.?f8:TZSymbolNodeArray
 004C1595    test       eax,eax
>004C1597    je         004C159E
 004C1599    cmp        edx,dword ptr [eax-4]
>004C159C    jb         004C15A3
 004C159E    call       @BoundErr
 004C15A3    mov        eax,dword ptr [eax+edx*4]
 004C15A6    ret
*}
//end;

//004C15A8
//procedure sub_004C15A8(?:dword; ?:?; ?:?; ?:?);
//begin
{*
 004C15A8    push       ebp
 004C15A9    mov        ebp,esp
 004C15AB    push       ecx
 004C15AC    push       ebx
 004C15AD    push       esi
 004C15AE    mov        byte ptr [ebp-1],cl
 004C15B1    mov        esi,edx
 004C15B3    mov        dl,byte ptr [ebp-1]
 004C15B6    mov        ecx,dword ptr [eax]
 004C15B8    call       dword ptr [ecx]
 004C15BA    mov        ebx,eax
 004C15BC    mov        edx,esi
 004C15BE    mov        eax,ebx
 004C15C0    call       004C1258
 004C15C5    mov        ebx,eax
 004C15C7    mov        edx,esi
 004C15C9    mov        eax,ebx
 004C15CB    call       004C1414
 004C15D0    mov        ebx,eax
 004C15D2    mov        edx,dword ptr [ebp+8]
 004C15D5    mov        eax,ebx
 004C15D7    mov        ecx,dword ptr [eax]
 004C15D9    call       dword ptr [ecx+4]
 004C15DC    pop        esi
 004C15DD    pop        ebx
 004C15DE    pop        ecx
 004C15DF    pop        ebp
 004C15E0    ret        4
*}
//end;

//004C15E4
//constructor sub_004C15E4(?:?; _Dv__:Boolean);
//begin
{*
 004C15E4    push       ebp
 004C15E5    mov        ebp,esp
 004C15E7    push       ebx
 004C15E8    push       esi
 004C15E9    test       dl,dl
>004C15EB    je         004C15F5
 004C15ED    add        esp,0FFFFFFF0
 004C15F0    call       @ClassCreate
 004C15F5    mov        ebx,edx
 004C15F7    mov        esi,eax
 004C15F9    mov        dl,1
 004C15FB    mov        eax,[004C058C]; TZSymbolRootNode
 004C1600    call       TZSymbolRootNode.Create; TZSymbolRootNode.Create
 004C1605    mov        dword ptr [esi+4],eax
 004C1608    mov        eax,esi
 004C160A    test       bl,bl
>004C160C    je         004C161D
 004C160E    call       @AfterConstruction
 004C1613    pop        dword ptr fs:[0]
 004C161A    add        esp,0C
 004C161D    mov        eax,esi
 004C161F    pop        esi
 004C1620    pop        ebx
 004C1621    pop        ebp
 004C1622    ret
*}
//end;

//004C1624
destructor TZSymbolState.Destroy;
begin
{*
 004C1624    push       ebp
 004C1625    mov        ebp,esp
 004C1627    push       ebx
 004C1628    push       esi
 004C1629    call       @BeforeDestruction
 004C162E    mov        ebx,edx
 004C1630    mov        esi,eax
 004C1632    mov        eax,dword ptr [esi+4]; TZSymbolState.?f4:dword
 004C1635    call       TObject.Free
 004C163A    mov        edx,ebx
 004C163C    and        dl,0FC
 004C163F    mov        eax,esi
 004C1641    call       TObject.Destroy
 004C1646    test       bl,bl
>004C1648    jle        004C1651
 004C164A    mov        eax,esi
 004C164C    call       @ClassDestroy
 004C1651    pop        esi
 004C1652    pop        ebx
 004C1653    pop        ebp
 004C1654    ret
*}
end;

//004C1658
procedure sub_004C1658;
begin
{*
 004C1658    push       ebp
 004C1659    mov        ebp,esp
 004C165B    mov        eax,dword ptr [eax+4]; TZExpressionSymbolState.?f4:dword
 004C165E    call       004C14D0
 004C1663    pop        ebp
 004C1664    ret
*}
end;

//004C1668
//procedure sub_004C1668(?:?; ?:?; ?:?);
//begin
{*
 004C1668    push       ebp
 004C1669    mov        ebp,esp
 004C166B    add        esp,0FFFFFFF8
 004C166E    push       ebx
 004C166F    push       esi
 004C1670    push       edi
 004C1671    xor        ebx,ebx
 004C1673    mov        dword ptr [ebp-8],ebx
 004C1676    mov        byte ptr [ebp-1],cl
 004C1679    mov        edi,edx
 004C167B    mov        ebx,eax
 004C167D    mov        esi,dword ptr [ebp+8]
 004C1680    xor        eax,eax
 004C1682    push       ebp
 004C1683    push       4C16C3
 004C1688    push       dword ptr fs:[eax]
 004C168B    mov        dword ptr fs:[eax],esp
 004C168E    mov        byte ptr [esi+4],6
 004C1692    lea        eax,[ebp-8]
 004C1695    push       eax
 004C1696    mov        cl,byte ptr [ebp-1]
 004C1699    mov        edx,edi
 004C169B    mov        eax,dword ptr [ebx+4]; TZExpressionSymbolState.?f4:dword
 004C169E    call       004C15A8
 004C16A3    mov        edx,dword ptr [ebp-8]
 004C16A6    mov        eax,esi
 004C16A8    call       @LStrAsg
 004C16AD    xor        eax,eax
 004C16AF    pop        edx
 004C16B0    pop        ecx
 004C16B1    pop        ecx
 004C16B2    mov        dword ptr fs:[eax],edx
 004C16B5    push       4C16CA
 004C16BA    lea        eax,[ebp-8]
 004C16BD    call       @LStrClr
 004C16C2    ret
<004C16C3    jmp        @HandleFinally
<004C16C8    jmp        004C16BA
 004C16CA    pop        edi
 004C16CB    pop        esi
 004C16CC    pop        ebx
 004C16CD    pop        ecx
 004C16CE    pop        ecx
 004C16CF    pop        ebp
 004C16D0    ret        8
*}
//end;

//004C16D4
//constructor TZWhitespaceState.Create(?:TZWhitespaceState; _Dv__:Boolean);
//begin
{*
 004C16D4    push       ebp
 004C16D5    mov        ebp,esp
 004C16D7    push       ebx
 004C16D8    push       esi
 004C16D9    test       dl,dl
>004C16DB    je         004C16E5
 004C16DD    add        esp,0FFFFFFF0
 004C16E0    call       @ClassCreate
 004C16E5    mov        ebx,edx
 004C16E7    mov        esi,eax
 004C16E9    push       0
 004C16EB    mov        cl,0FF
 004C16ED    mov        dl,20
 004C16EF    mov        eax,esi
 004C16F1    call       004C17DC
 004C16F6    push       1
 004C16F8    mov        cl,20
 004C16FA    xor        edx,edx
 004C16FC    mov        eax,esi
 004C16FE    call       004C17DC
 004C1703    mov        eax,esi
 004C1705    test       bl,bl
>004C1707    je         004C1718
 004C1709    call       @AfterConstruction
 004C170E    pop        dword ptr fs:[0]
 004C1715    add        esp,0C
 004C1718    mov        eax,esi
 004C171A    pop        esi
 004C171B    pop        ebx
 004C171C    pop        ebp
 004C171D    ret
*}
//end;

//004C1720
//procedure sub_004C1720(?:?; ?:?; ?:?);
//begin
{*
 004C1720    push       ebp
 004C1721    mov        ebp,esp
 004C1723    add        esp,0FFFFFFF0
 004C1726    push       ebx
 004C1727    push       esi
 004C1728    xor        ebx,ebx
 004C172A    mov        dword ptr [ebp-10],ebx
 004C172D    mov        dword ptr [ebp-0C],ebx
 004C1730    mov        ebx,ecx
 004C1732    mov        dword ptr [ebp-4],edx
 004C1735    mov        esi,eax
 004C1737    xor        eax,eax
 004C1739    push       ebp
 004C173A    push       4C17CB
 004C173F    push       dword ptr fs:[eax]
 004C1742    mov        dword ptr fs:[eax],esp
 004C1745    lea        eax,[ebp-0C]
 004C1748    mov        edx,ebx
 004C174A    call       @LStrFromChar
 004C174F    xor        ebx,ebx
 004C1751    lea        edx,[ebp-5]
 004C1754    mov        ecx,1
 004C1759    mov        eax,dword ptr [ebp-4]
 004C175C    mov        ebx,dword ptr [eax]
 004C175E    call       dword ptr [ebx+0C]
 004C1761    mov        ebx,eax
 004C1763    test       ebx,ebx
>004C1765    je         004C178B
 004C1767    xor        eax,eax
 004C1769    mov        al,byte ptr [ebp-5]
 004C176C    cmp        byte ptr [esi+eax+4],0
>004C1771    je         004C178B
 004C1773    lea        eax,[ebp-10]
 004C1776    mov        dl,byte ptr [ebp-5]
 004C1779    call       @LStrFromChar
 004C177E    mov        edx,dword ptr [ebp-10]
 004C1781    lea        eax,[ebp-0C]
 004C1784    call       @LStrCat
<004C1789    jmp        004C1751
 004C178B    test       ebx,ebx
>004C178D    jle        004C179E
 004C178F    mov        cx,1
 004C1793    or         edx,0FFFFFFFF
 004C1796    mov        eax,dword ptr [ebp-4]
 004C1799    mov        ebx,dword ptr [eax]
 004C179B    call       dword ptr [ebx+14]
 004C179E    mov        eax,dword ptr [ebp+8]
 004C17A1    mov        byte ptr [eax+4],0B
 004C17A5    mov        eax,dword ptr [ebp+8]
 004C17A8    mov        edx,dword ptr [ebp-0C]
 004C17AB    call       @LStrAsg
 004C17B0    xor        eax,eax
 004C17B2    pop        edx
 004C17B3    pop        ecx
 004C17B4    pop        ecx
 004C17B5    mov        dword ptr fs:[eax],edx
 004C17B8    push       4C17D2
 004C17BD    lea        eax,[ebp-10]
 004C17C0    mov        edx,2
 004C17C5    call       @LStrArrayClr
 004C17CA    ret
<004C17CB    jmp        @HandleFinally
<004C17D0    jmp        004C17BD
 004C17D2    pop        esi
 004C17D3    pop        ebx
 004C17D4    mov        esp,ebp
 004C17D6    pop        ebp
 004C17D7    ret        8
*}
//end;

//004C17DC
//procedure sub_004C17DC(?:TZWhitespaceState; ?:?; ?:?; ?:?);
//begin
{*
 004C17DC    push       ebp
 004C17DD    mov        ebp,esp
 004C17DF    add        esp,0FFFFFFF4
 004C17E2    push       ebx
 004C17E3    push       esi
 004C17E4    mov        byte ptr [ebp-2],cl
 004C17E7    mov        byte ptr [ebp-1],dl
 004C17EA    mov        esi,eax
 004C17EC    mov        ebx,dword ptr [ebp+8]
 004C17EF    xor        edx,edx
 004C17F1    mov        dl,byte ptr [ebp-1]
 004C17F4    push       edx
 004C17F5    xor        eax,eax
 004C17F7    mov        al,byte ptr [ebp-2]
 004C17FA    mov        dword ptr [ebp-0C],eax
 004C17FD    mov        dword ptr [ebp-8],0FF
 004C1804    lea        eax,[ebp-0C]
 004C1807    mov        edx,1
 004C180C    call       MinIntValue
 004C1811    pop        edx
 004C1812    sub        eax,edx
>004C1814    jl         004C182C
 004C1816    inc        eax
 004C1817    cmp        edx,0FF
>004C181D    jbe        004C1824
 004C181F    call       @BoundErr
 004C1824    mov        byte ptr [esi+edx+4],bl
 004C1828    inc        edx
 004C1829    dec        eax
<004C182A    jne        004C1817
 004C182C    pop        esi
 004C182D    pop        ebx
 004C182E    mov        esp,ebp
 004C1830    pop        ebp
 004C1831    ret        4
*}
//end;

//004C1834
//procedure sub_004C1834(?:?; ?:?; ?:?);
//begin
{*
 004C1834    push       ebp
 004C1835    mov        ebp,esp
 004C1837    add        esp,0FFFFFFF0
 004C183A    push       ebx
 004C183B    push       esi
 004C183C    xor        ebx,ebx
 004C183E    mov        dword ptr [ebp-10],ebx
 004C1841    mov        dword ptr [ebp-0C],ebx
 004C1844    mov        ebx,ecx
 004C1846    mov        dword ptr [ebp-4],edx
 004C1849    mov        esi,eax
 004C184B    xor        eax,eax
 004C184D    push       ebp
 004C184E    push       4C18DD
 004C1853    push       dword ptr fs:[eax]
 004C1856    mov        dword ptr fs:[eax],esp
 004C1859    lea        eax,[ebp-0C]
 004C185C    mov        edx,ebx
 004C185E    call       @LStrFromChar
 004C1863    lea        edx,[ebp-5]
 004C1866    mov        ecx,1
 004C186B    mov        eax,dword ptr [ebp-4]
 004C186E    mov        ebx,dword ptr [eax]
 004C1870    call       dword ptr [ebx+0C]
 004C1873    mov        ebx,eax
 004C1875    test       ebx,ebx
>004C1877    je         004C189D
 004C1879    xor        eax,eax
 004C187B    mov        al,byte ptr [ebp-5]
 004C187E    cmp        byte ptr [esi+eax+4],0
>004C1883    je         004C189D
 004C1885    lea        eax,[ebp-10]
 004C1888    mov        dl,byte ptr [ebp-5]
 004C188B    call       @LStrFromChar
 004C1890    mov        edx,dword ptr [ebp-10]
 004C1893    lea        eax,[ebp-0C]
 004C1896    call       @LStrCat
<004C189B    jmp        004C1863
 004C189D    test       ebx,ebx
>004C189F    jle        004C18B0
 004C18A1    mov        cx,1
 004C18A5    or         edx,0FFFFFFFF
 004C18A8    mov        eax,dword ptr [ebp-4]
 004C18AB    mov        ebx,dword ptr [eax]
 004C18AD    call       dword ptr [ebx+14]
 004C18B0    mov        eax,dword ptr [ebp+8]
 004C18B3    mov        byte ptr [eax+4],9
 004C18B7    mov        eax,dword ptr [ebp+8]
 004C18BA    mov        edx,dword ptr [ebp-0C]
 004C18BD    call       @LStrAsg
 004C18C2    xor        eax,eax
 004C18C4    pop        edx
 004C18C5    pop        ecx
 004C18C6    pop        ecx
 004C18C7    mov        dword ptr fs:[eax],edx
 004C18CA    push       4C18E4
 004C18CF    lea        eax,[ebp-10]
 004C18D2    mov        edx,2
 004C18D7    call       @LStrArrayClr
 004C18DC    ret
<004C18DD    jmp        @HandleFinally
<004C18E2    jmp        004C18CF
 004C18E4    pop        esi
 004C18E5    pop        ebx
 004C18E6    mov        esp,ebp
 004C18E8    pop        ebp
 004C18E9    ret        8
*}
//end;

//004C18EC
//procedure sub_004C18EC(?:TZWordState; ?:?; ?:?; ?:?);
//begin
{*
 004C18EC    push       ebp
 004C18ED    mov        ebp,esp
 004C18EF    add        esp,0FFFFFFF4
 004C18F2    push       ebx
 004C18F3    push       esi
 004C18F4    mov        byte ptr [ebp-2],cl
 004C18F7    mov        byte ptr [ebp-1],dl
 004C18FA    mov        esi,eax
 004C18FC    mov        ebx,dword ptr [ebp+8]
 004C18FF    xor        edx,edx
 004C1901    mov        dl,byte ptr [ebp-1]
 004C1904    push       edx
 004C1905    xor        eax,eax
 004C1907    mov        al,byte ptr [ebp-2]
 004C190A    mov        dword ptr [ebp-0C],eax
 004C190D    mov        dword ptr [ebp-8],0FF
 004C1914    lea        eax,[ebp-0C]
 004C1917    mov        edx,1
 004C191C    call       MinIntValue
 004C1921    pop        edx
 004C1922    sub        eax,edx
>004C1924    jl         004C193C
 004C1926    inc        eax
 004C1927    cmp        edx,0FF
>004C192D    jbe        004C1934
 004C192F    call       @BoundErr
 004C1934    mov        byte ptr [esi+edx+4],bl
 004C1938    inc        edx
 004C1939    dec        eax
<004C193A    jne        004C1927
 004C193C    pop        esi
 004C193D    pop        ebx
 004C193E    mov        esp,ebp
 004C1940    pop        ebp
 004C1941    ret        4
*}
//end;

//004C1944
destructor TZTokenizer.Destroy;
begin
{*
 004C1944    push       ebp
 004C1945    mov        ebp,esp
 004C1947    push       ebx
 004C1948    push       esi
 004C1949    call       @BeforeDestruction
 004C194E    mov        ebx,edx
 004C1950    mov        esi,eax
 004C1952    mov        eax,dword ptr [esi+410]; TZTokenizer.?f410:TZCppCommentState
 004C1958    test       eax,eax
>004C195A    je         004C1961
 004C195C    call       TObject.Free
 004C1961    mov        eax,dword ptr [esi+414]; TZTokenizer.?f414:TZNumberState
 004C1967    test       eax,eax
>004C1969    je         004C1970
 004C196B    call       TObject.Free
 004C1970    mov        eax,dword ptr [esi+418]; TZTokenizer.?f418:TZGenericSQLQuoteState
 004C1976    test       eax,eax
>004C1978    je         004C197F
 004C197A    call       TObject.Free
 004C197F    mov        eax,dword ptr [esi+41C]; TZTokenizer.?f41C:TZGenericSQLSymbolState
 004C1985    test       eax,eax
>004C1987    je         004C198E
 004C1989    call       TObject.Free
 004C198E    mov        eax,dword ptr [esi+420]; TZTokenizer.?f420:TZWhitespaceState
 004C1994    test       eax,eax
>004C1996    je         004C199D
 004C1998    call       TObject.Free
 004C199D    mov        eax,dword ptr [esi+424]; TZTokenizer.?f424:TZGenericSQLWordState
 004C19A3    test       eax,eax
>004C19A5    je         004C19AC
 004C19A7    call       TObject.Free
 004C19AC    mov        edx,ebx
 004C19AE    and        dl,0FC
 004C19B1    mov        eax,esi
 004C19B3    call       TObject.Destroy
 004C19B8    test       bl,bl
>004C19BA    jle        004C19C3
 004C19BC    mov        eax,esi
 004C19BE    call       @ClassDestroy
 004C19C3    pop        esi
 004C19C4    pop        ebx
 004C19C5    pop        ebp
 004C19C6    ret
*}
end;

//004C19C8
//procedure sub_004C19C8(?:TZTokenizer; ?:?; ?:?; ?:?);
//begin
{*
 004C19C8    push       ebp
 004C19C9    mov        ebp,esp
 004C19CB    add        esp,0FFFFFFF4
 004C19CE    push       ebx
 004C19CF    push       esi
 004C19D0    mov        byte ptr [ebp-2],cl
 004C19D3    mov        byte ptr [ebp-1],dl
 004C19D6    mov        ebx,eax
 004C19D8    mov        esi,dword ptr [ebp+8]
 004C19DB    xor        edx,edx
 004C19DD    mov        dl,byte ptr [ebp-1]
 004C19E0    push       edx
 004C19E1    xor        eax,eax
 004C19E3    mov        al,byte ptr [ebp-2]
 004C19E6    mov        dword ptr [ebp-0C],eax
 004C19E9    mov        dword ptr [ebp-8],0FF
 004C19F0    lea        eax,[ebp-0C]
 004C19F3    mov        edx,1
 004C19F8    call       MinIntValue
 004C19FD    pop        edx
 004C19FE    sub        eax,edx
>004C1A00    jl         004C1A18
 004C1A02    inc        eax
 004C1A03    cmp        edx,0FF
>004C1A09    jbe        004C1A10
 004C1A0B    call       @BoundErr
 004C1A10    mov        dword ptr [ebx+edx*4+10],esi
 004C1A14    inc        edx
 004C1A15    dec        eax
<004C1A16    jne        004C1A03
 004C1A18    pop        esi
 004C1A19    pop        ebx
 004C1A1A    mov        esp,ebp
 004C1A1C    pop        ebp
 004C1A1D    ret        4
*}
//end;

end.