{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit76;

interface

uses
  Classes, Windows, Graphics;

type
  TRPBaseFontHandler = class(TObject)
  public
    constructor sub_0057D414; virtual;
    procedure @AbstractError(); virtual;
  end;
  TRPTrueTypeFontHandler = class(TRPBaseFontHandler)
  public
    constructor Create; virtual;
    //function sub_0057D524(?:?; ?:?; ?:?):?; virtual;
  end;
  TRPNonProportionalFontHandler = class(TRPBaseFontHandler)
  public
    f4:dword;//f4
    constructor Create; virtual;
    //function sub_0057D688(?:?; ?:?; ?:?):?; virtual;
  end;
  TRPFontManager = class(TObject)
  public
    f4:TStringList;//f4
    destructor Destroy; virtual;
    constructor Create; virtual;
  end;

implementation

{$R *.DFM}

//0057D414
constructor sub_0057D414;
begin
{*
 0057D414    test       dl,dl
>0057D416    je         0057D420
 0057D418    add        esp,0FFFFFFF0
 0057D41B    call       @ClassCreate
 0057D420    test       dl,dl
>0057D422    je         0057D433
 0057D424    call       @AfterConstruction
 0057D429    pop        dword ptr fs:[0]
 0057D430    add        esp,0C
 0057D433    ret
*}
end;

//0057D434
constructor TRPTrueTypeFontHandler.Create;
begin
{*
 0057D434    push       ebp
 0057D435    mov        ebp,esp
 0057D437    add        esp,0FFFFF3F4
 0057D43D    push       ebx
 0057D43E    test       dl,dl
>0057D440    je         0057D44A
 0057D442    add        esp,0FFFFFFF0
 0057D445    call       @ClassCreate
 0057D44A    mov        ebx,ecx
 0057D44C    mov        byte ptr [ebp-5],dl
 0057D44F    mov        dword ptr [ebp-4],eax
 0057D452    mov        ecx,ebx
 0057D454    xor        edx,edx
 0057D456    mov        eax,dword ptr [ebp-4]
 0057D459    call       0057D414
 0057D45E    mov        dl,1
 0057D460    mov        eax,[0042A4BC]; TBitmap
 0057D465    call       TBitmap.Create; TBitmap.Create
 0057D46A    mov        dword ptr [ebp-0C],eax
 0057D46D    xor        eax,eax
 0057D46F    push       ebp
 0057D470    push       57D4D9
 0057D475    push       dword ptr fs:[eax]
 0057D478    mov        dword ptr fs:[eax],esp
 0057D47B    mov        eax,dword ptr [ebp-0C]
 0057D47E    call       TBitmap.GetCanvas
 0057D483    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057D486    mov        edx,ebx
 0057D488    mov        ecx,dword ptr [eax]
 0057D48A    call       dword ptr [ecx+8]; TFont.Assign
 0057D48D    mov        eax,dword ptr [ebp-0C]
 0057D490    call       TBitmap.GetCanvas
 0057D495    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057D498    mov        edx,0FFFFFDA8
 0057D49D    call       TFont.SetHeight
 0057D4A2    lea        eax,[ebp-0C0C]
 0057D4A8    push       eax
 0057D4A9    push       0FF
 0057D4AE    push       0
 0057D4B0    mov        eax,dword ptr [ebp-0C]
 0057D4B3    call       TBitmap.GetCanvas
 0057D4B8    call       TCanvas.GetHandle
 0057D4BD    push       eax
 0057D4BE    call       gdi32.GetCharABCWidthsA
 0057D4C3    xor        eax,eax
 0057D4C5    pop        edx
 0057D4C6    pop        ecx
 0057D4C7    pop        ecx
 0057D4C8    mov        dword ptr fs:[eax],edx
 0057D4CB    push       57D4E0
 0057D4D0    mov        eax,dword ptr [ebp-0C]
 0057D4D3    call       TObject.Free
 0057D4D8    ret
<0057D4D9    jmp        @HandleFinally
<0057D4DE    jmp        0057D4D0
 0057D4E0    xor        edx,edx
 0057D4E2    lea        eax,[ebp-0C0C]
 0057D4E8    mov        ecx,dword ptr [eax]
 0057D4EA    add        ecx,dword ptr [eax+4]
 0057D4ED    add        ecx,dword ptr [eax+8]
 0057D4F0    mov        ebx,dword ptr [ebp-4]
 0057D4F3    mov        dword ptr [ebx+edx*4+4],ecx
 0057D4F7    inc        edx
 0057D4F8    add        eax,0C
 0057D4FB    cmp        edx,100
<0057D501    jne        0057D4E8
 0057D503    mov        eax,dword ptr [ebp-4]
 0057D506    cmp        byte ptr [ebp-5],0
>0057D50A    je         0057D51B
 0057D50C    call       @AfterConstruction
 0057D511    pop        dword ptr fs:[0]
 0057D518    add        esp,0C
 0057D51B    mov        eax,dword ptr [ebp-4]
 0057D51E    pop        ebx
 0057D51F    mov        esp,ebp
 0057D521    pop        ebp
 0057D522    ret
*}
end;

//0057D524
//function sub_0057D524(?:?; ?:?; ?:?):?;
//begin
{*
 0057D524    push       ebp
 0057D525    mov        ebp,esp
 0057D527    add        esp,0FFFFFFF4
 0057D52A    push       ebx
 0057D52B    push       esi
 0057D52C    mov        dword ptr [ebp-8],ecx
 0057D52F    mov        dword ptr [ebp-4],edx
 0057D532    mov        esi,eax
 0057D534    mov        eax,dword ptr [ebp-4]
 0057D537    call       @LStrAddRef
 0057D53C    xor        eax,eax
 0057D53E    push       ebp
 0057D53F    push       57D59E
 0057D544    push       dword ptr fs:[eax]
 0057D547    mov        dword ptr fs:[eax],esp
 0057D54A    xor        ebx,ebx
 0057D54C    mov        eax,dword ptr [ebp-4]
 0057D54F    call       @LStrLen
 0057D554    test       eax,eax
>0057D556    jle        0057D56D
 0057D558    mov        edx,1
 0057D55D    mov        ecx,dword ptr [ebp-4]
 0057D560    movzx      ecx,byte ptr [ecx+edx-1]
 0057D565    add        ebx,dword ptr [esi+ecx*4+4]
 0057D569    inc        edx
 0057D56A    dec        eax
<0057D56B    jne        0057D55D
 0057D56D    mov        dword ptr [ebp-0C],ebx
 0057D570    fild       dword ptr [ebp-0C]
 0057D573    fmul       qword ptr [ebp+8]
 0057D576    fild       dword ptr [ebp-8]
 0057D579    fmulp      st(1),st
 0057D57B    fdiv       dword ptr ds:[57D5B0]; 43200:Single
 0057D581    call       @ROUND
 0057D586    mov        ebx,eax
 0057D588    xor        eax,eax
 0057D58A    pop        edx
 0057D58B    pop        ecx
 0057D58C    pop        ecx
 0057D58D    mov        dword ptr fs:[eax],edx
 0057D590    push       57D5A5
 0057D595    lea        eax,[ebp-4]
 0057D598    call       @LStrClr
 0057D59D    ret
<0057D59E    jmp        @HandleFinally
<0057D5A3    jmp        0057D595
 0057D5A5    mov        eax,ebx
 0057D5A7    pop        esi
 0057D5A8    pop        ebx
 0057D5A9    mov        esp,ebp
 0057D5AB    pop        ebp
 0057D5AC    ret        8
*}
//end;

//0057D5B4
constructor TRPNonProportionalFontHandler.Create;
begin
{*
 0057D5B4    push       ebp
 0057D5B5    mov        ebp,esp
 0057D5B7    add        esp,0FFFFFFE8
 0057D5BA    push       ebx
 0057D5BB    test       dl,dl
>0057D5BD    je         0057D5C7
 0057D5BF    add        esp,0FFFFFFF0
 0057D5C2    call       @ClassCreate
 0057D5C7    mov        ebx,ecx
 0057D5C9    mov        byte ptr [ebp-5],dl
 0057D5CC    mov        dword ptr [ebp-4],eax
 0057D5CF    mov        ecx,ebx
 0057D5D1    xor        edx,edx
 0057D5D3    mov        eax,dword ptr [ebp-4]
 0057D5D6    call       0057D414
 0057D5DB    mov        dl,1
 0057D5DD    mov        eax,[0042A4BC]; TBitmap
 0057D5E2    call       TBitmap.Create; TBitmap.Create
 0057D5E7    mov        dword ptr [ebp-0C],eax
 0057D5EA    xor        eax,eax
 0057D5EC    push       ebp
 0057D5ED    push       57D65F
 0057D5F2    push       dword ptr fs:[eax]
 0057D5F5    mov        dword ptr fs:[eax],esp
 0057D5F8    mov        eax,dword ptr [ebp-0C]
 0057D5FB    call       TBitmap.GetCanvas
 0057D600    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057D603    mov        edx,ebx
 0057D605    mov        ecx,dword ptr [eax]
 0057D607    call       dword ptr [ecx+8]; TFont.Assign
 0057D60A    mov        eax,dword ptr [ebp-0C]
 0057D60D    call       TBitmap.GetCanvas
 0057D612    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057D615    mov        edx,0FFFFFDA8
 0057D61A    call       TFont.SetHeight
 0057D61F    lea        eax,[ebp-18]
 0057D622    push       eax
 0057D623    push       41
 0057D625    push       41
 0057D627    mov        eax,dword ptr [ebp-0C]
 0057D62A    call       TBitmap.GetCanvas
 0057D62F    call       TCanvas.GetHandle
 0057D634    push       eax
 0057D635    call       gdi32.GetCharABCWidthsA
 0057D63A    mov        eax,dword ptr [ebp-18]
 0057D63D    add        eax,dword ptr [ebp-14]
 0057D640    add        eax,dword ptr [ebp-10]
 0057D643    mov        edx,dword ptr [ebp-4]
 0057D646    mov        dword ptr [edx+4],eax; TRPNonProportionalFontHandler.?f4:dword
 0057D649    xor        eax,eax
 0057D64B    pop        edx
 0057D64C    pop        ecx
 0057D64D    pop        ecx
 0057D64E    mov        dword ptr fs:[eax],edx
 0057D651    push       57D666
 0057D656    mov        eax,dword ptr [ebp-0C]
 0057D659    call       TObject.Free
 0057D65E    ret
<0057D65F    jmp        @HandleFinally
<0057D664    jmp        0057D656
 0057D666    mov        eax,dword ptr [ebp-4]
 0057D669    cmp        byte ptr [ebp-5],0
>0057D66D    je         0057D67E
 0057D66F    call       @AfterConstruction
 0057D674    pop        dword ptr fs:[0]
 0057D67B    add        esp,0C
 0057D67E    mov        eax,dword ptr [ebp-4]
 0057D681    pop        ebx
 0057D682    mov        esp,ebp
 0057D684    pop        ebp
 0057D685    ret
*}
end;

//0057D688
//function sub_0057D688(?:?; ?:?; ?:?):?;
//begin
{*
 0057D688    push       ebp
 0057D689    mov        ebp,esp
 0057D68B    add        esp,0FFFFFFF4
 0057D68E    push       ebx
 0057D68F    push       esi
 0057D690    mov        esi,ecx
 0057D692    mov        dword ptr [ebp-4],edx
 0057D695    mov        ebx,eax
 0057D697    mov        eax,dword ptr [ebp-4]
 0057D69A    call       @LStrAddRef
 0057D69F    xor        eax,eax
 0057D6A1    push       ebp
 0057D6A2    push       57D6EC
 0057D6A7    push       dword ptr fs:[eax]
 0057D6AA    mov        dword ptr fs:[eax],esp
 0057D6AD    mov        eax,dword ptr [ebp-4]
 0057D6B0    call       @LStrLen
 0057D6B5    imul       dword ptr [ebx+4]; TRPNonProportionalFontHandler.?f4:dword
 0057D6B8    mov        dword ptr [ebp-8],eax
 0057D6BB    fild       dword ptr [ebp-8]
 0057D6BE    fmul       qword ptr [ebp+8]
 0057D6C1    mov        dword ptr [ebp-0C],esi
 0057D6C4    fild       dword ptr [ebp-0C]
 0057D6C7    fmulp      st(1),st
 0057D6C9    fdiv       dword ptr ds:[57D700]; 43200:Single
 0057D6CF    call       @ROUND
 0057D6D4    mov        ebx,eax
 0057D6D6    xor        eax,eax
 0057D6D8    pop        edx
 0057D6D9    pop        ecx
 0057D6DA    pop        ecx
 0057D6DB    mov        dword ptr fs:[eax],edx
 0057D6DE    push       57D6F3
 0057D6E3    lea        eax,[ebp-4]
 0057D6E6    call       @LStrClr
 0057D6EB    ret
<0057D6EC    jmp        @HandleFinally
<0057D6F1    jmp        0057D6E3
 0057D6F3    mov        eax,ebx
 0057D6F5    pop        esi
 0057D6F6    pop        ebx
 0057D6F7    mov        esp,ebp
 0057D6F9    pop        ebp
 0057D6FA    ret        8
*}
//end;

//0057D704
constructor TRPFontManager.Create;
begin
{*
 0057D704    push       ebx
 0057D705    push       esi
 0057D706    push       edi
 0057D707    test       dl,dl
>0057D709    je         0057D713
 0057D70B    add        esp,0FFFFFFF0
 0057D70E    call       @ClassCreate
 0057D713    mov        ebx,edx
 0057D715    mov        edi,eax
 0057D717    xor        edx,edx
 0057D719    mov        eax,edi
 0057D71B    call       TObject.Create
 0057D720    mov        dl,1
 0057D722    mov        eax,[0041C8E4]; TStringList
 0057D727    call       TObject.Create; TStringList.Create
 0057D72C    mov        esi,eax
 0057D72E    mov        dword ptr [edi+4],esi; TRPFontManager.?f4:TStringList
 0057D731    mov        eax,esi
 0057D733    mov        dl,1
 0057D735    call       TStringList.SetSorted
 0057D73A    mov        eax,edi
 0057D73C    test       bl,bl
>0057D73E    je         0057D74F
 0057D740    call       @AfterConstruction
 0057D745    pop        dword ptr fs:[0]
 0057D74C    add        esp,0C
 0057D74F    mov        eax,edi
 0057D751    pop        edi
 0057D752    pop        esi
 0057D753    pop        ebx
 0057D754    ret
*}
end;

//0057D758
destructor TRPFontManager.Destroy;
begin
{*
 0057D758    push       ebx
 0057D759    push       esi
 0057D75A    push       edi
 0057D75B    push       ebp
 0057D75C    call       @BeforeDestruction
 0057D761    mov        ebx,edx
 0057D763    mov        esi,eax
 0057D765    mov        eax,dword ptr [esi+4]; TRPFontManager.?f4:TStringList
 0057D768    mov        edx,dword ptr [eax]
 0057D76A    call       dword ptr [edx+14]; TStringList.GetCount
 0057D76D    mov        ebp,eax
 0057D76F    dec        ebp
 0057D770    test       ebp,ebp
>0057D772    jl         0057D78A
 0057D774    inc        ebp
 0057D775    xor        edi,edi
 0057D777    mov        eax,dword ptr [esi+4]; TRPFontManager.?f4:TStringList
 0057D77A    mov        edx,edi
 0057D77C    mov        ecx,dword ptr [eax]
 0057D77E    call       dword ptr [ecx+18]; TStringList.GetObject
 0057D781    call       TObject.Free
 0057D786    inc        edi
 0057D787    dec        ebp
<0057D788    jne        0057D777
 0057D78A    lea        eax,[esi+4]; TRPFontManager.?f4:TStringList
 0057D78D    call       FreeAndNil
 0057D792    mov        edx,ebx
 0057D794    and        dl,0FC
 0057D797    mov        eax,esi
 0057D799    call       TObject.Destroy
 0057D79E    test       bl,bl
>0057D7A0    jle        0057D7A9
 0057D7A2    mov        eax,esi
 0057D7A4    call       @ClassDestroy
 0057D7A9    pop        ebp
 0057D7AA    pop        edi
 0057D7AB    pop        esi
 0057D7AC    pop        ebx
 0057D7AD    ret
*}
end;

//0057D7B0
//procedure sub_0057D7B0(?:TRPFontManager; ?:?; ?:AnsiString);
//begin
{*
 0057D7B0    push       ebp
 0057D7B1    mov        ebp,esp
 0057D7B3    push       0
 0057D7B5    push       0
 0057D7B7    push       ebx
 0057D7B8    push       esi
 0057D7B9    mov        esi,ecx
 0057D7BB    mov        ebx,edx
 0057D7BD    xor        eax,eax
 0057D7BF    push       ebp
 0057D7C0    push       57D877
 0057D7C5    push       dword ptr fs:[eax]
 0057D7C8    mov        dword ptr fs:[eax],esp
 0057D7CB    lea        edx,[ebp-4]
 0057D7CE    mov        eax,ebx
 0057D7D0    call       TFont.GetName
 0057D7D5    push       dword ptr [ebp-4]
 0057D7D8    push       57D88C; '|'
 0057D7DD    mov        eax,ebx
 0057D7DF    call       TFont.GetCharset
 0057D7E4    and        eax,0FF
 0057D7E9    lea        edx,[ebp-8]
 0057D7EC    call       IntToStr
 0057D7F1    push       dword ptr [ebp-8]
 0057D7F4    mov        eax,esi
 0057D7F6    mov        edx,3
 0057D7FB    call       @LStrCatN
 0057D800    mov        eax,ebx
 0057D802    call       TFont.GetStyle
 0057D807    test       al,1
>0057D809    je         0057D817
 0057D80B    mov        eax,esi
 0057D80D    mov        edx,57D898; '|B'
 0057D812    call       @LStrCat
 0057D817    mov        eax,ebx
 0057D819    call       TFont.GetStyle
 0057D81E    test       al,2
>0057D820    je         0057D82E
 0057D822    mov        eax,esi
 0057D824    mov        edx,57D8A4; '|I'
 0057D829    call       @LStrCat
 0057D82E    mov        eax,ebx
 0057D830    call       TFont.GetPitch
 0057D835    dec        al
>0057D837    je         0057D83F
 0057D839    dec        al
>0057D83B    je         0057D84D
>0057D83D    jmp        0057D859
 0057D83F    mov        eax,esi
 0057D841    mov        edx,57D8B0; '|V'
 0057D846    call       @LStrCat
>0057D84B    jmp        0057D859
 0057D84D    mov        eax,esi
 0057D84F    mov        edx,57D8BC; '|F'
 0057D854    call       @LStrCat
 0057D859    xor        eax,eax
 0057D85B    pop        edx
 0057D85C    pop        ecx
 0057D85D    pop        ecx
 0057D85E    mov        dword ptr fs:[eax],edx
 0057D861    push       57D87E
 0057D866    lea        eax,[ebp-8]
 0057D869    call       @LStrClr
 0057D86E    lea        eax,[ebp-4]
 0057D871    call       @LStrClr
 0057D876    ret
<0057D877    jmp        @HandleFinally
<0057D87C    jmp        0057D866
 0057D87E    pop        esi
 0057D87F    pop        ebx
 0057D880    pop        ecx
 0057D881    pop        ecx
 0057D882    pop        ebp
 0057D883    ret
*}
//end;

//0057D8C0
//function sub_0057D8C0(?:TRPFontManager; ?:?):?;
//begin
{*
 0057D8C0    push       ebp
 0057D8C1    mov        ebp,esp
 0057D8C3    add        esp,0FFFFFFAC
 0057D8C6    push       ebx
 0057D8C7    xor        ecx,ecx
 0057D8C9    mov        dword ptr [ebp-54],ecx
 0057D8CC    mov        dword ptr [ebp-50],ecx
 0057D8CF    mov        dword ptr [ebp-8],edx
 0057D8D2    mov        dword ptr [ebp-4],eax
 0057D8D5    xor        eax,eax
 0057D8D7    push       ebp
 0057D8D8    push       57DA53
 0057D8DD    push       dword ptr fs:[eax]
 0057D8E0    mov        dword ptr fs:[eax],esp
 0057D8E3    mov        eax,[0061EFC4]; gvar_0061EFC4:TCriticalSection
 0057D8E8    call       TCriticalSection.Enter
 0057D8ED    xor        eax,eax
 0057D8EF    push       ebp
 0057D8F0    push       57D954
 0057D8F5    push       dword ptr fs:[eax]
 0057D8F8    mov        dword ptr fs:[eax],esp
 0057D8FB    lea        ecx,[ebp-50]
 0057D8FE    mov        edx,dword ptr [ebp-8]
 0057D901    mov        eax,dword ptr [ebp-4]
 0057D904    call       0057D7B0
 0057D909    mov        edx,dword ptr [ebp-50]
 0057D90C    lea        ecx,[ebp-10]
 0057D90F    mov        eax,dword ptr [ebp-4]
 0057D912    mov        eax,dword ptr [eax+4]; TRPFontManager.?f4:TStringList
 0057D915    mov        ebx,dword ptr [eax]
 0057D917    call       dword ptr [ebx+8C]; TStringList.Find
 0057D91D    test       al,al
>0057D91F    je         0057D93C
 0057D921    mov        eax,dword ptr [ebp-4]
 0057D924    mov        eax,dword ptr [eax+4]; TRPFontManager.?f4:TStringList
 0057D927    mov        edx,dword ptr [ebp-10]
 0057D92A    mov        ecx,dword ptr [eax]
 0057D92C    call       dword ptr [ecx+18]; TStringList.GetObject
 0057D92F    mov        dword ptr [ebp-0C],eax
 0057D932    call       @TryFinallyExit
>0057D937    jmp        0057DA38
 0057D93C    xor        eax,eax
 0057D93E    pop        edx
 0057D93F    pop        ecx
 0057D940    pop        ecx
 0057D941    mov        dword ptr fs:[eax],edx
 0057D944    push       57D95B
 0057D949    mov        eax,[0061EFC4]; gvar_0061EFC4:TCriticalSection
 0057D94E    call       TCriticalSection.Leave
 0057D953    ret
<0057D954    jmp        @HandleFinally
<0057D959    jmp        0057D949
 0057D95B    mov        dl,1
 0057D95D    mov        eax,[0042A4BC]; TBitmap
 0057D962    call       TBitmap.Create; TBitmap.Create
 0057D967    mov        dword ptr [ebp-14],eax
 0057D96A    xor        eax,eax
 0057D96C    push       ebp
 0057D96D    push       57D9B8
 0057D972    push       dword ptr fs:[eax]
 0057D975    mov        dword ptr fs:[eax],esp
 0057D978    mov        eax,dword ptr [ebp-14]
 0057D97B    call       TBitmap.GetCanvas
 0057D980    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057D983    mov        edx,dword ptr [ebp-8]
 0057D986    mov        ecx,dword ptr [eax]
 0057D988    call       dword ptr [ecx+8]; TFont.Assign
 0057D98B    lea        eax,[ebp-4C]
 0057D98E    push       eax
 0057D98F    mov        eax,dword ptr [ebp-14]
 0057D992    call       TBitmap.GetCanvas
 0057D997    call       TCanvas.GetHandle
 0057D99C    push       eax
 0057D99D    call       gdi32.GetTextMetricsA
 0057D9A2    xor        eax,eax
 0057D9A4    pop        edx
 0057D9A5    pop        ecx
 0057D9A6    pop        ecx
 0057D9A7    mov        dword ptr fs:[eax],edx
 0057D9AA    push       57D9BF
 0057D9AF    mov        eax,dword ptr [ebp-14]
 0057D9B2    call       TObject.Free
 0057D9B7    ret
<0057D9B8    jmp        @HandleFinally
<0057D9BD    jmp        0057D9AF
 0057D9BF    xor        eax,eax
 0057D9C1    mov        dword ptr [ebp-0C],eax
 0057D9C4    xor        eax,eax
 0057D9C6    push       ebp
 0057D9C7    push       57DA31
 0057D9CC    push       dword ptr fs:[eax]
 0057D9CF    mov        dword ptr fs:[eax],esp
 0057D9D2    test       byte ptr [ebp-19],1
>0057D9D6    jne        0057D9EC
 0057D9D8    mov        ecx,dword ptr [ebp-8]
 0057D9DB    mov        dl,1
 0057D9DD    mov        eax,[0057D340]; TRPNonProportionalFontHandler
 0057D9E2    call       TRPNonProportionalFontHandler.Create; TRPNonProportionalFontHandler.Create
 0057D9E7    mov        dword ptr [ebp-0C],eax
>0057D9EA    jmp        0057D9FE
 0057D9EC    mov        ecx,dword ptr [ebp-8]
 0057D9EF    mov        dl,1
 0057D9F1    mov        eax,[0057D2D4]; TRPTrueTypeFontHandler
 0057D9F6    call       TRPTrueTypeFontHandler.Create; TRPTrueTypeFontHandler.Create
 0057D9FB    mov        dword ptr [ebp-0C],eax
 0057D9FE    xor        eax,eax
 0057DA00    pop        edx
 0057DA01    pop        ecx
 0057DA02    pop        ecx
 0057DA03    mov        dword ptr fs:[eax],edx
 0057DA06    push       57DA38
 0057DA0B    cmp        dword ptr [ebp-0C],0
>0057DA0F    je         0057DA30
 0057DA11    lea        ecx,[ebp-54]
 0057DA14    mov        edx,dword ptr [ebp-8]
 0057DA17    mov        eax,dword ptr [ebp-4]
 0057DA1A    call       0057D7B0
 0057DA1F    mov        edx,dword ptr [ebp-54]
 0057DA22    mov        eax,dword ptr [ebp-4]
 0057DA25    mov        eax,dword ptr [eax+4]; TRPFontManager.?f4:TStringList
 0057DA28    mov        ecx,dword ptr [ebp-0C]
 0057DA2B    mov        ebx,dword ptr [eax]
 0057DA2D    call       dword ptr [ebx+3C]; TStringList.AddObject
 0057DA30    ret
<0057DA31    jmp        @HandleFinally
<0057DA36    jmp        0057DA0B
 0057DA38    xor        eax,eax
 0057DA3A    pop        edx
 0057DA3B    pop        ecx
 0057DA3C    pop        ecx
 0057DA3D    mov        dword ptr fs:[eax],edx
 0057DA40    push       57DA5A
 0057DA45    lea        eax,[ebp-54]
 0057DA48    mov        edx,2
 0057DA4D    call       @LStrArrayClr
 0057DA52    ret
<0057DA53    jmp        @HandleFinally
<0057DA58    jmp        0057DA45
 0057DA5A    mov        eax,dword ptr [ebp-0C]
 0057DA5D    pop        ebx
 0057DA5E    mov        esp,ebp
 0057DA60    pop        ebp
 0057DA61    ret
*}
//end;

//0057DA64
//function sub_0057DA64(?:TRPFontManager; ?:?; ?:?):?;
//begin
{*
 0057DA64    push       ebp
 0057DA65    mov        ebp,esp
 0057DA67    add        esp,0FFFFFFF4
 0057DA6A    push       ebx
 0057DA6B    push       esi
 0057DA6C    push       edi
 0057DA6D    mov        dword ptr [ebp-4],ecx
 0057DA70    mov        ebx,edx
 0057DA72    mov        esi,eax
 0057DA74    mov        eax,dword ptr [ebp-4]
 0057DA77    call       @LStrAddRef
 0057DA7C    xor        eax,eax
 0057DA7E    push       ebp
 0057DA7F    push       57DAE3
 0057DA84    push       dword ptr fs:[eax]
 0057DA87    mov        dword ptr fs:[eax],esp
 0057DA8A    cmp        dword ptr [ebx+1C],0
 0057DA8E    mov        eax,ebx
 0057DA90    call       TFont.GetHeight
 0057DA95    cdq
 0057DA96    xor        eax,edx
 0057DA98    sub        eax,edx
 0057DA9A    shl        eax,3
 0057DA9D    lea        eax,[eax+eax*8]
 0057DAA0    mov        dword ptr [ebp-8],eax
 0057DAA3    fild       dword ptr [ebp-8]
 0057DAA6    mov        edi,dword ptr [ebx+1C]
 0057DAA9    mov        dword ptr [ebp-0C],edi
 0057DAAC    fild       dword ptr [ebp-0C]
 0057DAAF    fdivp      st(1),st
 0057DAB1    add        esp,0FFFFFFF8
 0057DAB4    fstp       qword ptr [esp]
 0057DAB7    wait
 0057DAB8    mov        edx,ebx
 0057DABA    mov        eax,esi
 0057DABC    call       0057D8C0
 0057DAC1    mov        ecx,edi
 0057DAC3    mov        edx,dword ptr [ebp-4]
 0057DAC6    mov        ebx,dword ptr [eax]
 0057DAC8    call       dword ptr [ebx+4]
 0057DACB    mov        ebx,eax
 0057DACD    xor        eax,eax
 0057DACF    pop        edx
 0057DAD0    pop        ecx
 0057DAD1    pop        ecx
 0057DAD2    mov        dword ptr fs:[eax],edx
 0057DAD5    push       57DAEA
 0057DADA    lea        eax,[ebp-4]
 0057DADD    call       @LStrClr
 0057DAE2    ret
<0057DAE3    jmp        @HandleFinally
<0057DAE8    jmp        0057DADA
 0057DAEA    mov        eax,ebx
 0057DAEC    pop        edi
 0057DAED    pop        esi
 0057DAEE    pop        ebx
 0057DAEF    mov        esp,ebp
 0057DAF1    pop        ebp
 0057DAF2    ret
*}
//end;

Initialization
//0057DB38
{*
 0057DB38    sub        dword ptr ds:[61EFC0],1
>0057DB3F    jae        0057DB63
 0057DB41    mov        dl,1
 0057DB43    mov        eax,[004351B0]; TCriticalSection
 0057DB48    call       TCriticalSection.Create; TCriticalSection.Create
 0057DB4D    mov        [0061EFC4],eax; gvar_0061EFC4:TCriticalSection
 0057DB52    mov        dl,1
 0057DB54    mov        eax,[0057D3B4]; TRPFontManager
 0057DB59    call       TRPFontManager.Create; TRPFontManager.Create
 0057DB5E    mov        [0061EFBC],eax; gvar_0061EFBC:TRPFontManager
 0057DB63    ret
*}
Finalization
//0057DAF4
{*
 0057DAF4    push       ebp
 0057DAF5    mov        ebp,esp
 0057DAF7    xor        eax,eax
 0057DAF9    push       ebp
 0057DAFA    push       57DB2F
 0057DAFF    push       dword ptr fs:[eax]
 0057DB02    mov        dword ptr fs:[eax],esp
 0057DB05    inc        dword ptr ds:[61EFC0]
>0057DB0B    jne        0057DB21
 0057DB0D    mov        eax,61EFBC; gvar_0061EFBC:TRPFontManager
 0057DB12    call       FreeAndNil
 0057DB17    mov        eax,61EFC4; gvar_0061EFC4:TCriticalSection
 0057DB1C    call       FreeAndNil
 0057DB21    xor        eax,eax
 0057DB23    pop        edx
 0057DB24    pop        ecx
 0057DB25    pop        ecx
 0057DB26    mov        dword ptr fs:[eax],edx
 0057DB29    push       57DB36
 0057DB2E    ret
<0057DB2F    jmp        @HandleFinally
<0057DB34    jmp        0057DB2E
 0057DB36    pop        ebp
 0057DB37    ret
*}
end.