{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpRenderCanvas;

interface

uses
  Classes, Windows, Graphics, RpRender;

type
  TRvRenderCanvas = class(TRPRenderStream)
  public
    f88:dword;//f88
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_00590690(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590734(?:?); virtual;
    //procedure sub_00590780(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590760(?:?; ?:?; ?:?); virtual;
    //procedure sub_00590A48(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_00590C08; virtual;
    //procedure sub_00590C28(?:?; ?:?; ?:?); virtual;
    //procedure sub_00590C44(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590C84(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590D30(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590DF4(?:?; ?:?); virtual;
    //procedure sub_00590DD4(?:?; ?:?); virtual;
    //procedure sub_0059147C(?:?; ?:?; ?:?); virtual;
    //procedure sub_00590CCC(?:?); virtual;
    procedure sub_00591268(); virtual;
    //procedure sub_005910C8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590F44(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00591534(?:?; ?:?); virtual;
    //procedure sub_00590A04(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005912BC(?:?; ?:?; ?:?); virtual;
    //procedure sub_005912D8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00590BEC(?:?); virtual;
    //procedure sub_00591554(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0059149C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_005909D8(); virtual;
    procedure sub_005909E0; virtual;
    procedure sub_00590CC4(); virtual;
    procedure sub_00590CC8(); virtual;
    procedure sub_00591294(); virtual;
    procedure @AbstractError(); virtual;
  end;

implementation

{$R *.DFM}

//00590690
//procedure sub_00590690(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590690    push       ebp
 00590691    mov        ebp,esp
 00590693    push       ebx
 00590694    mov        ebx,eax
 00590696    push       dword ptr [ebp+34]
 00590699    push       dword ptr [ebp+30]
 0059069C    mov        eax,ebx
 0059069E    mov        edx,dword ptr [eax]
 005906A0    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005906A6    push       eax
 005906A7    push       dword ptr [ebp+2C]
 005906AA    push       dword ptr [ebp+28]
 005906AD    mov        eax,ebx
 005906AF    mov        edx,dword ptr [eax]
 005906B1    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005906B7    push       eax
 005906B8    push       dword ptr [ebp+24]
 005906BB    push       dword ptr [ebp+20]
 005906BE    mov        eax,ebx
 005906C0    mov        edx,dword ptr [eax]
 005906C2    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005906C8    push       eax
 005906C9    push       dword ptr [ebp+1C]
 005906CC    push       dword ptr [ebp+18]
 005906CF    mov        eax,ebx
 005906D1    mov        edx,dword ptr [eax]
 005906D3    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005906D9    push       eax
 005906DA    push       dword ptr [ebp+14]
 005906DD    push       dword ptr [ebp+10]
 005906E0    mov        eax,ebx
 005906E2    mov        edx,dword ptr [eax]
 005906E4    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005906EA    push       eax
 005906EB    push       dword ptr [ebp+0C]
 005906EE    push       dword ptr [ebp+8]
 005906F1    mov        eax,ebx
 005906F3    mov        edx,dword ptr [eax]
 005906F5    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005906FB    push       eax
 005906FC    push       dword ptr [ebp+3C]
 005906FF    push       dword ptr [ebp+38]
 00590702    mov        eax,ebx
 00590704    mov        edx,dword ptr [eax]
 00590706    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 0059070C    push       eax
 0059070D    push       dword ptr [ebp+44]
 00590710    push       dword ptr [ebp+40]
 00590713    mov        eax,ebx
 00590715    mov        edx,dword ptr [eax]
 00590717    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059071D    push       eax
 0059071E    mov        eax,ebx
 00590720    mov        edx,dword ptr [eax]
 00590722    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590728    pop        edx
 00590729    pop        ecx
 0059072A    call       TCanvas.Arc
 0059072F    pop        ebx
 00590730    pop        ebp
 00590731    ret        40
*}
//end;

//00590734
//procedure sub_00590734(?:?);
//begin
{*
 00590734    push       ebx
 00590735    push       esi
 00590736    mov        esi,edx
 00590738    mov        ebx,eax
 0059073A    mov        eax,ebx
 0059073C    mov        edx,dword ptr [eax]
 0059073E    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590744    mov        eax,dword ptr [eax+14]
 00590747    push       eax
 00590748    mov        eax,esi
 0059074A    mov        edx,dword ptr ds:[429D9C]; TBrush
 00590750    call       @AsClass
 00590755    mov        edx,eax
 00590757    pop        eax
 00590758    mov        ecx,dword ptr [eax]
 0059075A    call       dword ptr [ecx+8]
 0059075D    pop        esi
 0059075E    pop        ebx
 0059075F    ret
*}
//end;

//00590760
//procedure sub_00590760(?:?; ?:?; ?:?);
//begin
{*
 00590760    push       ebp
 00590761    mov        ebp,esp
 00590763    push       dword ptr [ebp+14]
 00590766    push       dword ptr [ebp+10]
 00590769    push       dword ptr [ebp+0C]
 0059076C    push       dword ptr [ebp+8]
 0059076F    mov        ecx,6
 00590774    call       00590E14
 00590779    pop        ebp
 0059077A    ret        10
*}
//end;

//00590780
//procedure sub_00590780(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590780    push       ebp
 00590781    mov        ebp,esp
 00590783    push       ebx
 00590784    mov        ebx,eax
 00590786    push       dword ptr [ebp+34]
 00590789    push       dword ptr [ebp+30]
 0059078C    mov        eax,ebx
 0059078E    mov        edx,dword ptr [eax]
 00590790    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590796    push       eax
 00590797    push       dword ptr [ebp+2C]
 0059079A    push       dword ptr [ebp+28]
 0059079D    mov        eax,ebx
 0059079F    mov        edx,dword ptr [eax]
 005907A1    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005907A7    push       eax
 005907A8    push       dword ptr [ebp+24]
 005907AB    push       dword ptr [ebp+20]
 005907AE    mov        eax,ebx
 005907B0    mov        edx,dword ptr [eax]
 005907B2    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005907B8    push       eax
 005907B9    push       dword ptr [ebp+1C]
 005907BC    push       dword ptr [ebp+18]
 005907BF    mov        eax,ebx
 005907C1    mov        edx,dword ptr [eax]
 005907C3    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005907C9    push       eax
 005907CA    push       dword ptr [ebp+14]
 005907CD    push       dword ptr [ebp+10]
 005907D0    mov        eax,ebx
 005907D2    mov        edx,dword ptr [eax]
 005907D4    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005907DA    push       eax
 005907DB    push       dword ptr [ebp+0C]
 005907DE    push       dword ptr [ebp+8]
 005907E1    mov        eax,ebx
 005907E3    mov        edx,dword ptr [eax]
 005907E5    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005907EB    push       eax
 005907EC    push       dword ptr [ebp+3C]
 005907EF    push       dword ptr [ebp+38]
 005907F2    mov        eax,ebx
 005907F4    mov        edx,dword ptr [eax]
 005907F6    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005907FC    push       eax
 005907FD    push       dword ptr [ebp+44]
 00590800    push       dword ptr [ebp+40]
 00590803    mov        eax,ebx
 00590805    mov        edx,dword ptr [eax]
 00590807    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059080D    push       eax
 0059080E    mov        eax,ebx
 00590810    mov        edx,dword ptr [eax]
 00590812    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590818    pop        edx
 00590819    pop        ecx
 0059081A    call       TCanvas.Chord
 0059081F    pop        ebx
 00590820    pop        ebp
 00590821    ret        40
*}
//end;

//00590824
constructor TRvRenderCanvas.Create(AOwner:TComponent);
begin
{*
 00590824    push       ebx
 00590825    push       esi
 00590826    test       dl,dl
>00590828    je         00590832
 0059082A    add        esp,0FFFFFFF0
 0059082D    call       @ClassCreate
 00590832    mov        ebx,edx
 00590834    mov        esi,eax
 00590836    xor        edx,edx
 00590838    mov        eax,esi
 0059083A    call       TRPRender.Create
 0059083F    mov        eax,esi
 00590841    test       bl,bl
>00590843    je         00590854
 00590845    call       @AfterConstruction
 0059084A    pop        dword ptr fs:[0]
 00590851    add        esp,0C
 00590854    mov        eax,esi
 00590856    pop        esi
 00590857    pop        ebx
 00590858    ret
*}
end;

//0059085C
//function sub_0059085C(?:TRvRenderPreview):?;
//begin
{*
 0059085C    push       ebp
 0059085D    mov        ebp,esp
 0059085F    add        esp,0FFFFFFC0
 00590862    push       ebx
 00590863    push       esi
 00590864    xor        edx,edx
 00590866    mov        dword ptr [ebp-40],edx
 00590869    mov        ebx,eax
 0059086B    xor        eax,eax
 0059086D    push       ebp
 0059086E    push       5909BD
 00590873    push       dword ptr fs:[eax]
 00590876    mov        dword ptr fs:[eax],esp
 00590879    mov        eax,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 0059087C    cmp        byte ptr [eax+165],0
>00590883    jne        0059088E
 00590885    cmp        byte ptr [eax+164],0
>0059088C    je         005908C5
 0059088E    push       0
 00590890    push       0
 00590892    mov        eax,ebx
 00590894    mov        edx,dword ptr [eax]
 00590896    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 0059089C    mov        esi,eax
 0059089E    fld        tbyte ptr ds:[5909CC]; 1,667:Extended
 005908A4    mov        eax,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 005908A7    fdivr      qword ptr [eax+138]
 005908AD    add        esp,0FFFFFFF8
 005908B0    fstp       qword ptr [esp]
 005908B3    wait
 005908B4    mov        eax,ebx
 005908B6    mov        edx,dword ptr [eax]
 005908B8    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005908BE    sub        esi,eax
 005908C0    mov        dword ptr [ebp-3C],esi
>005908C3    jmp        005908F3
 005908C5    push       0
 005908C7    push       0
 005908C9    mov        eax,ebx
 005908CB    mov        edx,dword ptr [eax]
 005908CD    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005908D3    mov        esi,eax
 005908D5    mov        eax,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 005908D8    push       dword ptr [eax+13C]
 005908DE    push       dword ptr [eax+138]
 005908E4    mov        eax,ebx
 005908E6    mov        edx,dword ptr [eax]
 005908E8    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005908EE    sub        esi,eax
 005908F0    mov        dword ptr [ebp-3C],esi
 005908F3    xor        eax,eax
 005908F5    mov        dword ptr [ebp-38],eax
 005908F8    mov        esi,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 005908FB    movsx      eax,word ptr [esi+166]
 00590902    add        eax,eax
 00590904    lea        eax,[eax+eax*4]
 00590907    mov        dword ptr [ebp-34],eax
 0059090A    xor        eax,eax
 0059090C    mov        dword ptr [ebp-30],eax
 0059090F    cmp        byte ptr [esi+160],0
>00590916    je         00590921
 00590918    mov        dword ptr [ebp-2C],2BC
>0059091F    jmp        00590928
 00590921    mov        dword ptr [ebp-2C],190
 00590928    mov        al,byte ptr [esi+162]
 0059092E    mov        byte ptr [ebp-28],al
 00590931    mov        al,byte ptr [esi+161]
 00590937    mov        byte ptr [ebp-27],al
 0059093A    mov        al,byte ptr [esi+163]
 00590940    mov        byte ptr [ebp-26],al
 00590943    mov        al,byte ptr [esi+170]
 00590949    call       00579C5C
 0059094E    mov        byte ptr [ebp-25],al
 00590951    lea        eax,[ebp-40]
 00590954    mov        edx,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 00590957    add        edx,0E8
 0059095D    call       @LStrFromString
 00590962    mov        edx,dword ptr [ebp-40]
 00590965    lea        eax,[ebp-20]
 00590968    call       StrPCopy
 0059096D    mov        byte ptr [ebp-22],0
 00590971    mov        byte ptr [ebp-24],0
 00590975    mov        byte ptr [ebp-23],0
 00590979    mov        eax,dword ptr [ebx+70]; TRvRenderPreview.?f70:dword
 0059097C    mov        al,byte ptr [eax+12C]
 00590982    dec        al
>00590984    je         0059098C
 00590986    dec        al
>00590988    je         00590992
>0059098A    jmp        00590998
 0059098C    mov        byte ptr [ebp-21],2
>00590990    jmp        0059099C
 00590992    mov        byte ptr [ebp-21],1
>00590996    jmp        0059099C
 00590998    mov        byte ptr [ebp-21],0
 0059099C    lea        eax,[ebp-3C]
 0059099F    push       eax
 005909A0    call       gdi32.CreateFontIndirectA
 005909A5    mov        ebx,eax
 005909A7    xor        eax,eax
 005909A9    pop        edx
 005909AA    pop        ecx
 005909AB    pop        ecx
 005909AC    mov        dword ptr fs:[eax],edx
 005909AF    push       5909C4
 005909B4    lea        eax,[ebp-40]
 005909B7    call       @LStrClr
 005909BC    ret
<005909BD    jmp        @HandleFinally
<005909C2    jmp        005909B4
 005909C4    mov        eax,ebx
 005909C6    pop        esi
 005909C7    pop        ebx
 005909C8    mov        esp,ebp
 005909CA    pop        ebp
 005909CB    ret
*}
//end;

//005909D8
procedure sub_005909D8();
begin
{*
 005909D8    call       00590014
 005909DD    ret
*}
end;

//005909E0
procedure sub_005909E0;
begin
{*
 005909E0    push       ebx
 005909E1    mov        ebx,eax
 005909E3    mov        eax,ebx
 005909E5    call       00590018
 005909EA    mov        eax,dword ptr [ebx+88]; TRvRenderCanvas.?f88:dword
 005909F0    test       eax,eax
>005909F2    je         00590A02
 005909F4    push       eax
 005909F5    call       gdi32.DeleteObject
 005909FA    xor        eax,eax
 005909FC    mov        dword ptr [ebx+88],eax; TRvRenderCanvas.?f88:dword
 00590A02    pop        ebx
 00590A03    ret
*}
end;

//00590A04
//procedure sub_00590A04(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590A04    push       ebp
 00590A05    mov        ebp,esp
 00590A07    push       ebx
 00590A08    push       esi
 00590A09    mov        esi,edx
 00590A0B    mov        ebx,eax
 00590A0D    push       esi
 00590A0E    push       dword ptr [ebp+0C]
 00590A11    push       dword ptr [ebp+8]
 00590A14    mov        eax,ebx
 00590A16    mov        edx,dword ptr [eax]
 00590A18    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590A1E    push       eax
 00590A1F    push       dword ptr [ebp+14]
 00590A22    push       dword ptr [ebp+10]
 00590A25    mov        eax,ebx
 00590A27    mov        edx,dword ptr [eax]
 00590A29    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590A2F    push       eax
 00590A30    mov        eax,ebx
 00590A32    mov        edx,dword ptr [eax]
 00590A34    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590A3A    pop        edx
 00590A3B    pop        ecx
 00590A3C    call       TCanvas.Draw
 00590A41    pop        esi
 00590A42    pop        ebx
 00590A43    pop        ebp
 00590A44    ret        10
*}
//end;

//00590A48
//procedure sub_00590A48(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590A48    push       ebp
 00590A49    mov        ebp,esp
 00590A4B    add        esp,0FFFFFFE0
 00590A4E    push       ebx
 00590A4F    push       esi
 00590A50    push       edi
 00590A51    mov        ebx,eax
 00590A53    fld        qword ptr [ebp+20]
 00590A56    fcomp      qword ptr [ebp+10]
 00590A59    fnstsw     al
 00590A5B    sahf
>00590A5C    jbe        00590A78
 00590A5E    mov        eax,dword ptr [ebp+10]
 00590A61    mov        dword ptr [ebp-8],eax
 00590A64    mov        eax,dword ptr [ebp+14]
 00590A67    mov        dword ptr [ebp-4],eax
 00590A6A    mov        eax,dword ptr [ebp+20]
 00590A6D    mov        dword ptr [ebp-10],eax
 00590A70    mov        eax,dword ptr [ebp+24]
 00590A73    mov        dword ptr [ebp-0C],eax
>00590A76    jmp        00590A90
 00590A78    mov        eax,dword ptr [ebp+20]
 00590A7B    mov        dword ptr [ebp-8],eax
 00590A7E    mov        eax,dword ptr [ebp+24]
 00590A81    mov        dword ptr [ebp-4],eax
 00590A84    mov        eax,dword ptr [ebp+10]
 00590A87    mov        dword ptr [ebp-10],eax
 00590A8A    mov        eax,dword ptr [ebp+14]
 00590A8D    mov        dword ptr [ebp-0C],eax
 00590A90    fld        qword ptr [ebp+18]
 00590A93    fcomp      qword ptr [ebp+8]
 00590A96    fnstsw     al
 00590A98    sahf
>00590A99    jbe        00590AB5
 00590A9B    mov        eax,dword ptr [ebp+8]
 00590A9E    mov        dword ptr [ebp-18],eax
 00590AA1    mov        eax,dword ptr [ebp+0C]
 00590AA4    mov        dword ptr [ebp-14],eax
 00590AA7    mov        eax,dword ptr [ebp+18]
 00590AAA    mov        dword ptr [ebp-20],eax
 00590AAD    mov        eax,dword ptr [ebp+1C]
 00590AB0    mov        dword ptr [ebp-1C],eax
>00590AB3    jmp        00590ACD
 00590AB5    mov        eax,dword ptr [ebp+18]
 00590AB8    mov        dword ptr [ebp-18],eax
 00590ABB    mov        eax,dword ptr [ebp+1C]
 00590ABE    mov        dword ptr [ebp-14],eax
 00590AC1    mov        eax,dword ptr [ebp+8]
 00590AC4    mov        dword ptr [ebp-20],eax
 00590AC7    mov        eax,dword ptr [ebp+0C]
 00590ACA    mov        dword ptr [ebp-1C],eax
 00590ACD    mov        eax,ebx
 00590ACF    mov        edx,dword ptr [eax]
 00590AD1    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590AD7    mov        eax,dword ptr [eax+10]
 00590ADA    call       TPen.GetStyle
 00590ADF    cmp        al,5
>00590AE1    jne        00590AEC
 00590AE3    xor        esi,esi
 00590AE5    xor        edi,edi
>00590AE7    jmp        00590B7D
 00590AEC    mov        eax,ebx
 00590AEE    mov        edx,dword ptr [eax]
 00590AF0    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590AF6    mov        eax,dword ptr [eax+10]
 00590AF9    call       TPen.GetStyle
 00590AFE    cmp        al,6
>00590B00    je         00590B08
 00590B02    cmp        byte ptr [ebx+50],1; TRvRenderPreview.?f50:byte
>00590B06    jne        00590B11
 00590B08    xor        esi,esi
 00590B0A    mov        edi,1
>00590B0F    jmp        00590B7D
 00590B11    cmp        byte ptr [ebx+50],0; TRvRenderPreview.?f50:byte
>00590B15    jne        00590B4A
 00590B17    mov        eax,ebx
 00590B19    mov        edx,dword ptr [eax]
 00590B1B    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590B21    mov        eax,dword ptr [eax+10]
 00590B24    call       TPen.GetWidth
 00590B29    mov        esi,eax
 00590B2B    sar        esi,1
>00590B2D    jns        00590B32
 00590B2F    adc        esi,0
 00590B32    mov        eax,ebx
 00590B34    mov        edx,dword ptr [eax]
 00590B36    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590B3C    mov        eax,dword ptr [eax+10]
 00590B3F    call       TPen.GetWidth
 00590B44    mov        edi,eax
 00590B46    sub        edi,esi
>00590B48    jmp        00590B7D
 00590B4A    mov        eax,ebx
 00590B4C    mov        edx,dword ptr [eax]
 00590B4E    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590B54    mov        eax,dword ptr [eax+10]
 00590B57    call       TPen.GetWidth
 00590B5C    mov        esi,eax
 00590B5E    neg        esi
 00590B60    sar        esi,1
>00590B62    jns        00590B67
 00590B64    adc        esi,0
 00590B67    mov        eax,ebx
 00590B69    mov        edx,dword ptr [eax]
 00590B6B    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590B71    mov        eax,dword ptr [eax+10]
 00590B74    call       TPen.GetWidth
 00590B79    mov        edi,esi
 00590B7B    sub        edi,eax
 00590B7D    push       dword ptr [ebp-0C]
 00590B80    push       dword ptr [ebp-10]
 00590B83    mov        eax,ebx
 00590B85    mov        edx,dword ptr [eax]
 00590B87    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590B8D    sub        eax,edi
 00590B8F    add        eax,2
 00590B92    push       eax
 00590B93    push       dword ptr [ebp-1C]
 00590B96    push       dword ptr [ebp-20]
 00590B99    mov        eax,ebx
 00590B9B    mov        edx,dword ptr [eax]
 00590B9D    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590BA3    sub        eax,edi
 00590BA5    add        eax,2
 00590BA8    push       eax
 00590BA9    push       dword ptr [ebp-14]
 00590BAC    push       dword ptr [ebp-18]
 00590BAF    mov        eax,ebx
 00590BB1    mov        edx,dword ptr [eax]
 00590BB3    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590BB9    add        eax,esi
 00590BBB    push       eax
 00590BBC    push       dword ptr [ebp-4]
 00590BBF    push       dword ptr [ebp-8]
 00590BC2    mov        eax,ebx
 00590BC4    mov        edx,dword ptr [eax]
 00590BC6    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590BCC    add        esi,eax
 00590BCE    push       esi
 00590BCF    mov        eax,ebx
 00590BD1    mov        edx,dword ptr [eax]
 00590BD3    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590BD9    pop        edx
 00590BDA    pop        ecx
 00590BDB    call       TCanvas.Ellipse
 00590BE0    pop        edi
 00590BE1    pop        esi
 00590BE2    pop        ebx
 00590BE3    mov        esp,ebp
 00590BE5    pop        ebp
 00590BE6    ret        20
*}
//end;

//00590BEC
//procedure sub_00590BEC(?:?);
//begin
{*
 00590BEC    push       ebx
 00590BED    push       esi
 00590BEE    mov        esi,edx
 00590BF0    mov        ebx,eax
 00590BF2    mov        eax,ebx
 00590BF4    mov        edx,dword ptr [eax]
 00590BF6    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590BFC    mov        edx,esi
 00590BFE    call       TCanvas.FillRect
 00590C03    pop        esi
 00590C04    pop        ebx
 00590C05    ret
*}
//end;

//00590C08
procedure sub_00590C08;
begin
{*
 00590C08    push       ebx
 00590C09    mov        ebx,eax
 00590C0B    mov        eax,dword ptr [ebx+88]; TRvRenderPreview.?f88:dword
 00590C11    push       eax
 00590C12    call       gdi32.DeleteObject
 00590C17    mov        eax,ebx
 00590C19    call       0059085C
 00590C1E    mov        dword ptr [ebx+88],eax; TRvRenderPreview.?f88:dword
 00590C24    pop        ebx
 00590C25    ret
*}
end;

//00590C28
//procedure sub_00590C28(?:?; ?:?; ?:?);
//begin
{*
 00590C28    push       ebp
 00590C29    mov        ebp,esp
 00590C2B    push       dword ptr [ebp+14]
 00590C2E    push       dword ptr [ebp+10]
 00590C31    push       dword ptr [ebp+0C]
 00590C34    push       dword ptr [ebp+8]
 00590C37    xor        ecx,ecx
 00590C39    call       00590E14
 00590C3E    pop        ebp
 00590C3F    ret        10
*}
//end;

//00590C44
//procedure sub_00590C44(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590C44    push       ebp
 00590C45    mov        ebp,esp
 00590C47    push       ebx
 00590C48    mov        ebx,eax
 00590C4A    push       dword ptr [ebp+0C]
 00590C4D    push       dword ptr [ebp+8]
 00590C50    mov        eax,ebx
 00590C52    mov        edx,dword ptr [eax]
 00590C54    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590C5A    push       eax
 00590C5B    push       dword ptr [ebp+14]
 00590C5E    push       dword ptr [ebp+10]
 00590C61    mov        eax,ebx
 00590C63    mov        edx,dword ptr [eax]
 00590C65    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590C6B    push       eax
 00590C6C    mov        eax,ebx
 00590C6E    mov        edx,dword ptr [eax]
 00590C70    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590C76    pop        edx
 00590C77    pop        ecx
 00590C78    call       TCanvas.LineTo
 00590C7D    pop        ebx
 00590C7E    pop        ebp
 00590C7F    ret        10
*}
//end;

//00590C84
//procedure sub_00590C84(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590C84    push       ebp
 00590C85    mov        ebp,esp
 00590C87    push       ebx
 00590C88    mov        ebx,eax
 00590C8A    push       dword ptr [ebp+0C]
 00590C8D    push       dword ptr [ebp+8]
 00590C90    mov        eax,ebx
 00590C92    mov        edx,dword ptr [eax]
 00590C94    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590C9A    push       eax
 00590C9B    push       dword ptr [ebp+14]
 00590C9E    push       dword ptr [ebp+10]
 00590CA1    mov        eax,ebx
 00590CA3    mov        edx,dword ptr [eax]
 00590CA5    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590CAB    push       eax
 00590CAC    mov        eax,ebx
 00590CAE    mov        edx,dword ptr [eax]
 00590CB0    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590CB6    pop        edx
 00590CB7    pop        ecx
 00590CB8    call       TCanvas.MoveTo
 00590CBD    pop        ebx
 00590CBE    pop        ebp
 00590CBF    ret        10
*}
//end;

//00590CC4
procedure sub_00590CC4();
begin
{*
 00590CC4    ret
*}
end;

//00590CC8
procedure sub_00590CC8();
begin
{*
 00590CC8    ret
*}
end;

//00590CCC
//procedure sub_00590CCC(?:?);
//begin
{*
 00590CCC    push       ebx
 00590CCD    push       esi
 00590CCE    mov        esi,edx
 00590CD0    mov        ebx,eax
 00590CD2    mov        eax,ebx
 00590CD4    mov        edx,dword ptr [eax]
 00590CD6    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590CDC    mov        eax,dword ptr [eax+10]
 00590CDF    push       eax
 00590CE0    mov        eax,esi
 00590CE2    mov        edx,dword ptr ds:[429C9C]; TPen
 00590CE8    call       @AsClass
 00590CED    mov        edx,eax
 00590CEF    pop        eax
 00590CF0    mov        ecx,dword ptr [eax]
 00590CF2    call       dword ptr [ecx+8]
 00590CF5    push       dword ptr [ebx+4C]; TRvRenderPreview.?f4C:dword
 00590CF8    push       dword ptr [ebx+48]; TRvRenderPreview.?f48:?Double
 00590CFB    mov        eax,ebx
 00590CFD    mov        edx,dword ptr [eax]
 00590CFF    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590D05    mov        esi,eax
 00590D07    push       0
 00590D09    push       0
 00590D0B    mov        eax,ebx
 00590D0D    mov        edx,dword ptr [eax]
 00590D0F    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590D15    sub        esi,eax
 00590D17    push       esi
 00590D18    mov        eax,ebx
 00590D1A    mov        edx,dword ptr [eax]
 00590D1C    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590D22    mov        eax,dword ptr [eax+10]
 00590D25    pop        edx
 00590D26    call       TPen.SetWidth
 00590D2B    pop        esi
 00590D2C    pop        ebx
 00590D2D    ret
*}
//end;

//00590D30
//procedure sub_00590D30(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590D30    push       ebp
 00590D31    mov        ebp,esp
 00590D33    push       ebx
 00590D34    mov        ebx,eax
 00590D36    push       dword ptr [ebp+34]
 00590D39    push       dword ptr [ebp+30]
 00590D3C    mov        eax,ebx
 00590D3E    mov        edx,dword ptr [eax]
 00590D40    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590D46    push       eax
 00590D47    push       dword ptr [ebp+2C]
 00590D4A    push       dword ptr [ebp+28]
 00590D4D    mov        eax,ebx
 00590D4F    mov        edx,dword ptr [eax]
 00590D51    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590D57    push       eax
 00590D58    push       dword ptr [ebp+24]
 00590D5B    push       dword ptr [ebp+20]
 00590D5E    mov        eax,ebx
 00590D60    mov        edx,dword ptr [eax]
 00590D62    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590D68    push       eax
 00590D69    push       dword ptr [ebp+1C]
 00590D6C    push       dword ptr [ebp+18]
 00590D6F    mov        eax,ebx
 00590D71    mov        edx,dword ptr [eax]
 00590D73    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590D79    push       eax
 00590D7A    push       dword ptr [ebp+14]
 00590D7D    push       dword ptr [ebp+10]
 00590D80    mov        eax,ebx
 00590D82    mov        edx,dword ptr [eax]
 00590D84    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590D8A    push       eax
 00590D8B    push       dword ptr [ebp+0C]
 00590D8E    push       dword ptr [ebp+8]
 00590D91    mov        eax,ebx
 00590D93    mov        edx,dword ptr [eax]
 00590D95    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590D9B    push       eax
 00590D9C    push       dword ptr [ebp+3C]
 00590D9F    push       dword ptr [ebp+38]
 00590DA2    mov        eax,ebx
 00590DA4    mov        edx,dword ptr [eax]
 00590DA6    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00590DAC    push       eax
 00590DAD    push       dword ptr [ebp+44]
 00590DB0    push       dword ptr [ebp+40]
 00590DB3    mov        eax,ebx
 00590DB5    mov        edx,dword ptr [eax]
 00590DB7    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 00590DBD    push       eax
 00590DBE    mov        eax,ebx
 00590DC0    mov        edx,dword ptr [eax]
 00590DC2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590DC8    pop        edx
 00590DC9    pop        ecx
 00590DCA    call       TCanvas.Pie
 00590DCF    pop        ebx
 00590DD0    pop        ebp
 00590DD1    ret        40
*}
//end;

//00590DD4
//procedure sub_00590DD4(?:?; ?:?);
//begin
{*
 00590DD4    push       ebx
 00590DD5    push       esi
 00590DD6    push       edi
 00590DD7    mov        edi,ecx
 00590DD9    mov        esi,edx
 00590DDB    mov        ebx,eax
 00590DDD    mov        eax,ebx
 00590DDF    mov        edx,dword ptr [eax]
 00590DE1    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590DE7    mov        edx,esi
 00590DE9    mov        ecx,edi
 00590DEB    call       TCanvas.Polygon
 00590DF0    pop        edi
 00590DF1    pop        esi
 00590DF2    pop        ebx
 00590DF3    ret
*}
//end;

//00590DF4
//procedure sub_00590DF4(?:?; ?:?);
//begin
{*
 00590DF4    push       ebx
 00590DF5    push       esi
 00590DF6    push       edi
 00590DF7    mov        edi,ecx
 00590DF9    mov        esi,edx
 00590DFB    mov        ebx,eax
 00590DFD    mov        eax,ebx
 00590DFF    mov        edx,dword ptr [eax]
 00590E01    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00590E07    mov        edx,esi
 00590E09    mov        ecx,edi
 00590E0B    call       TCanvas.Polyline
 00590E10    pop        edi
 00590E11    pop        esi
 00590E12    pop        ebx
 00590E13    ret
*}
//end;

//00590E14
//procedure sub_00590E14(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590E14    push       ebp
 00590E15    mov        ebp,esp
 00590E17    push       ecx
 00590E18    push       ebx
 00590E19    push       esi
 00590E1A    push       edi
 00590E1B    mov        esi,ecx
 00590E1D    mov        dword ptr [ebp-4],edx
 00590E20    mov        ebx,eax
 00590E22    mov        eax,dword ptr [ebp-4]
 00590E25    call       @LStrAddRef
 00590E2A    xor        eax,eax
 00590E2C    push       ebp
 00590E2D    push       590F32
 00590E32    push       dword ptr fs:[eax]
 00590E35    mov        dword ptr fs:[eax],esp
 00590E38    or         esi,0
 00590E3B    or         esi,18
 00590E3E    cmp        dword ptr [ebp-4],0
>00590E42    je         00590F1C
 00590E48    mov        eax,dword ptr [ebx+88]
 00590E4E    push       eax
 00590E4F    mov        eax,ebx
 00590E51    mov        edx,dword ptr [eax]
 00590E53    call       dword ptr [edx+0D0]
 00590E59    call       TCanvas.GetHandle
 00590E5E    push       eax
 00590E5F    call       gdi32.SelectObject
 00590E64    mov        edi,eax
 00590E66    mov        eax,dword ptr [ebx+70]
 00590E69    mov        eax,dword ptr [eax+128]
 00590E6F    call       ColorToRGB
 00590E74    push       eax
 00590E75    mov        eax,ebx
 00590E77    mov        edx,dword ptr [eax]
 00590E79    call       dword ptr [edx+0D0]
 00590E7F    call       TCanvas.GetHandle
 00590E84    push       eax
 00590E85    call       gdi32.SetTextColor
 00590E8A    push       esi
 00590E8B    mov        eax,ebx
 00590E8D    mov        edx,dword ptr [eax]
 00590E8F    call       dword ptr [edx+0D0]
 00590E95    call       TCanvas.GetHandle
 00590E9A    push       eax
 00590E9B    call       gdi32.SetTextAlign
 00590EA0    push       1
 00590EA2    mov        eax,ebx
 00590EA4    mov        edx,dword ptr [eax]
 00590EA6    call       dword ptr [edx+0D0]
 00590EAC    call       TCanvas.GetHandle
 00590EB1    push       eax
 00590EB2    call       gdi32.SetBkMode
 00590EB7    push       0
 00590EB9    mov        eax,dword ptr [ebp-4]
 00590EBC    call       @LStrLen
 00590EC1    push       eax
 00590EC2    mov        eax,dword ptr [ebp-4]
 00590EC5    call       @LStrToPChar
 00590ECA    push       eax
 00590ECB    push       0
 00590ECD    push       0
 00590ECF    push       dword ptr [ebp+0C]
 00590ED2    push       dword ptr [ebp+8]
 00590ED5    mov        eax,ebx
 00590ED7    mov        edx,dword ptr [eax]
 00590ED9    call       dword ptr [edx+0B8]
 00590EDF    push       eax
 00590EE0    push       dword ptr [ebp+14]
 00590EE3    push       dword ptr [ebp+10]
 00590EE6    mov        eax,ebx
 00590EE8    mov        edx,dword ptr [eax]
 00590EEA    call       dword ptr [edx+0B4]
 00590EF0    push       eax
 00590EF1    mov        eax,ebx
 00590EF3    mov        edx,dword ptr [eax]
 00590EF5    call       dword ptr [edx+0D0]
 00590EFB    call       TCanvas.GetHandle
 00590F00    push       eax
 00590F01    call       gdi32.ExtTextOutA
 00590F06    push       edi
 00590F07    mov        eax,ebx
 00590F09    mov        edx,dword ptr [eax]
 00590F0B    call       dword ptr [edx+0D0]
 00590F11    call       TCanvas.GetHandle
 00590F16    push       eax
 00590F17    call       gdi32.SelectObject
 00590F1C    xor        eax,eax
 00590F1E    pop        edx
 00590F1F    pop        ecx
 00590F20    pop        ecx
 00590F21    mov        dword ptr fs:[eax],edx
 00590F24    push       590F39
 00590F29    lea        eax,[ebp-4]
 00590F2C    call       @LStrClr
 00590F31    ret
<00590F32    jmp        @HandleFinally
<00590F37    jmp        00590F29
 00590F39    pop        edi
 00590F3A    pop        esi
 00590F3B    pop        ebx
 00590F3C    pop        ecx
 00590F3D    pop        ebp
 00590F3E    ret        10
*}
//end;

//00590F44
//procedure sub_00590F44(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00590F44    push       ebp
 00590F45    mov        ebp,esp
 00590F47    add        esp,0FFFFFFE0
 00590F4A    push       ebx
 00590F4B    push       esi
 00590F4C    push       edi
 00590F4D    mov        ebx,edx
 00590F4F    mov        esi,eax
 00590F51    mov        eax,ebx
 00590F53    mov        edx,dword ptr [eax]
 00590F55    call       dword ptr [edx+64]
 00590F58    lea        ecx,[ebp-0C]
 00590F5B    lea        edx,[ebp-8]
 00590F5E    call       GetDIBSizes
 00590F63    mov        eax,dword ptr [ebp-8]
 00590F66    call       @GetMem
 00590F6B    mov        dword ptr [ebp-4],eax
 00590F6E    xor        eax,eax
 00590F70    push       ebp
 00590F71    push       5910B8
 00590F76    push       dword ptr fs:[eax]
 00590F79    mov        dword ptr fs:[eax],esp
 00590F7C    cmp        dword ptr [ebp-0C],0FFFF
>00590F83    jae        00590F97
 00590F85    mov        eax,dword ptr [ebp-0C]
 00590F88    call       @GetMem
 00590F8D    mov        dword ptr [ebp-10],eax
 00590F90    xor        eax,eax
 00590F92    mov        dword ptr [ebp-14],eax
>00590F95    jmp        00590FB1
 00590F97    mov        eax,dword ptr [ebp-0C]
 00590F9A    push       eax
 00590F9B    push       2
 00590F9D    call       kernel32.GlobalAlloc
 00590FA2    mov        dword ptr [ebp-14],eax
 00590FA5    mov        eax,dword ptr [ebp-14]
 00590FA8    push       eax
 00590FA9    call       kernel32.GlobalLock
 00590FAE    mov        dword ptr [ebp-10],eax
 00590FB1    xor        eax,eax
 00590FB3    push       ebp
 00590FB4    push       591098
 00590FB9    push       dword ptr fs:[eax]
 00590FBC    mov        dword ptr fs:[eax],esp
 00590FBF    mov        eax,dword ptr [ebp-10]
 00590FC2    push       eax
 00590FC3    mov        eax,ebx
 00590FC5    mov        edx,dword ptr [eax]
 00590FC7    call       dword ptr [edx+24]
 00590FCA    push       eax
 00590FCB    mov        eax,ebx
 00590FCD    mov        edx,dword ptr [eax]
 00590FCF    call       dword ptr [edx+64]
 00590FD2    mov        ecx,dword ptr [ebp-4]
 00590FD5    pop        edx
 00590FD6    call       GetDIB
 00590FDB    mov        edi,dword ptr [ebp-4]
 00590FDE    mov        dword ptr [ebp-18],0CC0020
 00590FE5    mov        eax,dword ptr [ebp-18]
 00590FE8    push       eax
 00590FE9    push       0
 00590FEB    mov        eax,dword ptr [ebp-4]
 00590FEE    push       eax
 00590FEF    mov        eax,dword ptr [ebp-10]
 00590FF2    push       eax
 00590FF3    mov        eax,dword ptr [edi+8]
 00590FF6    push       eax
 00590FF7    mov        eax,dword ptr [edi+4]
 00590FFA    push       eax
 00590FFB    push       0
 00590FFD    push       0
 00590FFF    mov        eax,ebx
 00591001    mov        edx,dword ptr [eax]
 00591003    call       dword ptr [edx+20]
 00591006    mov        dword ptr [ebp-1C],eax
 00591009    fild       dword ptr [ebp-1C]
 0059100C    fmul       qword ptr [ebp+8]
 0059100F    call       @ROUND
 00591014    push       eax
 00591015    mov        eax,ebx
 00591017    mov        edx,dword ptr [eax]
 00591019    call       dword ptr [edx+2C]
 0059101C    mov        dword ptr [ebp-20],eax
 0059101F    fild       dword ptr [ebp-20]
 00591022    fmul       qword ptr [ebp+10]
 00591025    call       @ROUND
 0059102A    push       eax
 0059102B    push       dword ptr [ebp+1C]
 0059102E    push       dword ptr [ebp+18]
 00591031    mov        eax,esi
 00591033    mov        edx,dword ptr [eax]
 00591035    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 0059103B    push       eax
 0059103C    push       dword ptr [ebp+24]
 0059103F    push       dword ptr [ebp+20]
 00591042    mov        eax,esi
 00591044    mov        edx,dword ptr [eax]
 00591046    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059104C    push       eax
 0059104D    mov        eax,esi
 0059104F    mov        edx,dword ptr [eax]
 00591051    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591057    call       TCanvas.GetHandle
 0059105C    push       eax
 0059105D    call       gdi32.StretchDIBits
 00591062    xor        eax,eax
 00591064    pop        edx
 00591065    pop        ecx
 00591066    pop        ecx
 00591067    mov        dword ptr fs:[eax],edx
 0059106A    push       59109F
 0059106F    cmp        dword ptr [ebp-0C],0FFFF
>00591076    jae        00591085
 00591078    mov        edx,dword ptr [ebp-0C]
 0059107B    mov        eax,dword ptr [ebp-10]
 0059107E    call       @FreeMem
>00591083    jmp        00591097
 00591085    mov        eax,dword ptr [ebp-14]
 00591088    push       eax
 00591089    call       kernel32.GlobalUnlock
 0059108E    mov        eax,dword ptr [ebp-14]
 00591091    push       eax
 00591092    call       kernel32.GlobalFree
 00591097    ret
<00591098    jmp        @HandleFinally
<0059109D    jmp        0059106F
 0059109F    xor        eax,eax
 005910A1    pop        edx
 005910A2    pop        ecx
 005910A3    pop        ecx
 005910A4    mov        dword ptr fs:[eax],edx
 005910A7    push       5910BF
 005910AC    mov        edx,dword ptr [ebp-8]
 005910AF    mov        eax,dword ptr [ebp-4]
 005910B2    call       @FreeMem
 005910B7    ret
<005910B8    jmp        @HandleFinally
<005910BD    jmp        005910AC
 005910BF    pop        edi
 005910C0    pop        esi
 005910C1    pop        ebx
 005910C2    mov        esp,ebp
 005910C4    pop        ebp
 005910C5    ret        20
*}
//end;

//005910C8
//procedure sub_005910C8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005910C8    push       ebp
 005910C9    mov        ebp,esp
 005910CB    add        esp,0FFFFFFE8
 005910CE    push       ebx
 005910CF    push       esi
 005910D0    mov        esi,edx
 005910D2    mov        ebx,eax
 005910D4    mov        eax,esi
 005910D6    mov        edx,dword ptr [eax]
 005910D8    call       dword ptr [edx+64]
 005910DB    lea        ecx,[ebp-0C]
 005910DE    lea        edx,[ebp-8]
 005910E1    call       GetDIBSizes
 005910E6    mov        eax,dword ptr [ebp-8]
 005910E9    call       @GetMem
 005910EE    mov        dword ptr [ebp-4],eax
 005910F1    xor        eax,eax
 005910F3    push       ebp
 005910F4    push       591259
 005910F9    push       dword ptr fs:[eax]
 005910FC    mov        dword ptr fs:[eax],esp
 005910FF    cmp        dword ptr [ebp-0C],0FFFF
>00591106    jae        0059111A
 00591108    mov        eax,dword ptr [ebp-0C]
 0059110B    call       @GetMem
 00591110    mov        dword ptr [ebp-10],eax
 00591113    xor        eax,eax
 00591115    mov        dword ptr [ebp-14],eax
>00591118    jmp        00591134
 0059111A    mov        eax,dword ptr [ebp-0C]
 0059111D    push       eax
 0059111E    push       2
 00591120    call       kernel32.GlobalAlloc
 00591125    mov        dword ptr [ebp-14],eax
 00591128    mov        eax,dword ptr [ebp-14]
 0059112B    push       eax
 0059112C    call       kernel32.GlobalLock
 00591131    mov        dword ptr [ebp-10],eax
 00591134    xor        eax,eax
 00591136    push       ebp
 00591137    push       591239
 0059113C    push       dword ptr fs:[eax]
 0059113F    mov        dword ptr fs:[eax],esp
 00591142    mov        eax,dword ptr [ebp-10]
 00591145    push       eax
 00591146    mov        eax,esi
 00591148    mov        edx,dword ptr [eax]
 0059114A    call       dword ptr [edx+24]
 0059114D    push       eax
 0059114E    mov        eax,esi
 00591150    mov        edx,dword ptr [eax]
 00591152    call       dword ptr [edx+64]
 00591155    mov        ecx,dword ptr [ebp-4]
 00591158    pop        edx
 00591159    call       GetDIB
 0059115E    mov        esi,dword ptr [ebp-4]
 00591161    mov        dword ptr [ebp-18],0CC0020
 00591168    mov        eax,dword ptr [ebp-18]
 0059116B    push       eax
 0059116C    push       0
 0059116E    mov        eax,dword ptr [ebp-4]
 00591171    push       eax
 00591172    mov        eax,dword ptr [ebp-10]
 00591175    push       eax
 00591176    mov        eax,dword ptr [esi+8]
 00591179    push       eax
 0059117A    mov        eax,dword ptr [esi+4]
 0059117D    push       eax
 0059117E    push       0
 00591180    push       0
 00591182    push       dword ptr [ebp+0C]
 00591185    push       dword ptr [ebp+8]
 00591188    mov        eax,ebx
 0059118A    mov        edx,dword ptr [eax]
 0059118C    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00591192    mov        esi,eax
 00591194    push       dword ptr [ebp+1C]
 00591197    push       dword ptr [ebp+18]
 0059119A    mov        eax,ebx
 0059119C    mov        edx,dword ptr [eax]
 0059119E    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005911A4    sub        esi,eax
 005911A6    push       esi
 005911A7    push       dword ptr [ebp+14]
 005911AA    push       dword ptr [ebp+10]
 005911AD    mov        eax,ebx
 005911AF    mov        edx,dword ptr [eax]
 005911B1    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005911B7    mov        esi,eax
 005911B9    push       dword ptr [ebp+24]
 005911BC    push       dword ptr [ebp+20]
 005911BF    mov        eax,ebx
 005911C1    mov        edx,dword ptr [eax]
 005911C3    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005911C9    sub        esi,eax
 005911CB    push       esi
 005911CC    push       dword ptr [ebp+1C]
 005911CF    push       dword ptr [ebp+18]
 005911D2    mov        eax,ebx
 005911D4    mov        edx,dword ptr [eax]
 005911D6    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005911DC    push       eax
 005911DD    push       dword ptr [ebp+24]
 005911E0    push       dword ptr [ebp+20]
 005911E3    mov        eax,ebx
 005911E5    mov        edx,dword ptr [eax]
 005911E7    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005911ED    push       eax
 005911EE    mov        eax,ebx
 005911F0    mov        edx,dword ptr [eax]
 005911F2    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005911F8    call       TCanvas.GetHandle
 005911FD    push       eax
 005911FE    call       gdi32.StretchDIBits
 00591203    xor        eax,eax
 00591205    pop        edx
 00591206    pop        ecx
 00591207    pop        ecx
 00591208    mov        dword ptr fs:[eax],edx
 0059120B    push       591240
 00591210    cmp        dword ptr [ebp-0C],0FFFF
>00591217    jae        00591226
 00591219    mov        edx,dword ptr [ebp-0C]
 0059121C    mov        eax,dword ptr [ebp-10]
 0059121F    call       @FreeMem
>00591224    jmp        00591238
 00591226    mov        eax,dword ptr [ebp-14]
 00591229    push       eax
 0059122A    call       kernel32.GlobalUnlock
 0059122F    mov        eax,dword ptr [ebp-14]
 00591232    push       eax
 00591233    call       kernel32.GlobalFree
 00591238    ret
<00591239    jmp        @HandleFinally
<0059123E    jmp        00591210
 00591240    xor        eax,eax
 00591242    pop        edx
 00591243    pop        ecx
 00591244    pop        ecx
 00591245    mov        dword ptr fs:[eax],edx
 00591248    push       591260
 0059124D    mov        edx,dword ptr [ebp-8]
 00591250    mov        eax,dword ptr [ebp-4]
 00591253    call       @FreeMem
 00591258    ret
<00591259    jmp        @HandleFinally
<0059125E    jmp        0059124D
 00591260    pop        esi
 00591261    pop        ebx
 00591262    mov        esp,ebp
 00591264    pop        ebp
 00591265    ret        20
*}
//end;

//00591268
procedure sub_00591268();
begin
{*
 00591268    push       ebp
 00591269    mov        ebp,esp
 0059126B    xor        eax,eax
 0059126D    push       ebp
 0059126E    push       591287
 00591273    push       dword ptr fs:[eax]
 00591276    mov        dword ptr fs:[eax],esp
 00591279    xor        eax,eax
 0059127B    pop        edx
 0059127C    pop        ecx
 0059127D    pop        ecx
 0059127E    mov        dword ptr fs:[eax],edx
 00591281    push       59128E
 00591286    ret
<00591287    jmp        @HandleFinally
<0059128C    jmp        00591286
 0059128E    pop        ebp
 0059128F    ret        20
*}
end;

//00591294
procedure sub_00591294();
begin
{*
 00591294    push       ebp
 00591295    mov        ebp,esp
 00591297    xor        eax,eax
 00591299    push       ebp
 0059129A    push       5912B3
 0059129F    push       dword ptr fs:[eax]
 005912A2    mov        dword ptr fs:[eax],esp
 005912A5    xor        eax,eax
 005912A7    pop        edx
 005912A8    pop        ecx
 005912A9    pop        ecx
 005912AA    mov        dword ptr fs:[eax],edx
 005912AD    push       5912BA
 005912B2    ret
<005912B3    jmp        @HandleFinally
<005912B8    jmp        005912B2
 005912BA    pop        ebp
 005912BB    ret
*}
end;

//005912BC
//procedure sub_005912BC(?:?; ?:?; ?:?);
//begin
{*
 005912BC    push       ebp
 005912BD    mov        ebp,esp
 005912BF    push       dword ptr [ebp+1C]
 005912C2    push       dword ptr [ebp+18]
 005912C5    push       dword ptr [ebp+14]
 005912C8    push       dword ptr [ebp+10]
 005912CB    xor        ecx,ecx
 005912CD    call       00590E14
 005912D2    pop        ebp
 005912D3    ret        18
*}
//end;

//005912D8
//procedure sub_005912D8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005912D8    push       ebp
 005912D9    mov        ebp,esp
 005912DB    add        esp,0FFFFFFE0
 005912DE    push       ebx
 005912DF    push       esi
 005912E0    push       edi
 005912E1    mov        ebx,eax
 005912E3    fld        qword ptr [ebp+20]
 005912E6    fcomp      qword ptr [ebp+10]
 005912E9    fnstsw     al
 005912EB    sahf
>005912EC    jbe        00591308
 005912EE    mov        eax,dword ptr [ebp+10]
 005912F1    mov        dword ptr [ebp-8],eax
 005912F4    mov        eax,dword ptr [ebp+14]
 005912F7    mov        dword ptr [ebp-4],eax
 005912FA    mov        eax,dword ptr [ebp+20]
 005912FD    mov        dword ptr [ebp-10],eax
 00591300    mov        eax,dword ptr [ebp+24]
 00591303    mov        dword ptr [ebp-0C],eax
>00591306    jmp        00591320
 00591308    mov        eax,dword ptr [ebp+20]
 0059130B    mov        dword ptr [ebp-8],eax
 0059130E    mov        eax,dword ptr [ebp+24]
 00591311    mov        dword ptr [ebp-4],eax
 00591314    mov        eax,dword ptr [ebp+10]
 00591317    mov        dword ptr [ebp-10],eax
 0059131A    mov        eax,dword ptr [ebp+14]
 0059131D    mov        dword ptr [ebp-0C],eax
 00591320    fld        qword ptr [ebp+18]
 00591323    fcomp      qword ptr [ebp+8]
 00591326    fnstsw     al
 00591328    sahf
>00591329    jbe        00591345
 0059132B    mov        eax,dword ptr [ebp+8]
 0059132E    mov        dword ptr [ebp-18],eax
 00591331    mov        eax,dword ptr [ebp+0C]
 00591334    mov        dword ptr [ebp-14],eax
 00591337    mov        eax,dword ptr [ebp+18]
 0059133A    mov        dword ptr [ebp-20],eax
 0059133D    mov        eax,dword ptr [ebp+1C]
 00591340    mov        dword ptr [ebp-1C],eax
>00591343    jmp        0059135D
 00591345    mov        eax,dword ptr [ebp+18]
 00591348    mov        dword ptr [ebp-18],eax
 0059134B    mov        eax,dword ptr [ebp+1C]
 0059134E    mov        dword ptr [ebp-14],eax
 00591351    mov        eax,dword ptr [ebp+8]
 00591354    mov        dword ptr [ebp-20],eax
 00591357    mov        eax,dword ptr [ebp+0C]
 0059135A    mov        dword ptr [ebp-1C],eax
 0059135D    mov        eax,ebx
 0059135F    mov        edx,dword ptr [eax]
 00591361    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591367    mov        eax,dword ptr [eax+10]
 0059136A    call       TPen.GetStyle
 0059136F    cmp        al,5
>00591371    jne        0059137C
 00591373    xor        esi,esi
 00591375    xor        edi,edi
>00591377    jmp        0059140D
 0059137C    mov        eax,ebx
 0059137E    mov        edx,dword ptr [eax]
 00591380    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591386    mov        eax,dword ptr [eax+10]
 00591389    call       TPen.GetStyle
 0059138E    cmp        al,6
>00591390    je         00591398
 00591392    cmp        byte ptr [ebx+50],1; TRvRenderPreview.?f50:byte
>00591396    jne        005913A1
 00591398    xor        esi,esi
 0059139A    mov        edi,1
>0059139F    jmp        0059140D
 005913A1    cmp        byte ptr [ebx+50],0; TRvRenderPreview.?f50:byte
>005913A5    jne        005913DA
 005913A7    mov        eax,ebx
 005913A9    mov        edx,dword ptr [eax]
 005913AB    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005913B1    mov        eax,dword ptr [eax+10]
 005913B4    call       TPen.GetWidth
 005913B9    mov        esi,eax
 005913BB    sar        esi,1
>005913BD    jns        005913C2
 005913BF    adc        esi,0
 005913C2    mov        eax,ebx
 005913C4    mov        edx,dword ptr [eax]
 005913C6    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005913CC    mov        eax,dword ptr [eax+10]
 005913CF    call       TPen.GetWidth
 005913D4    mov        edi,eax
 005913D6    sub        edi,esi
>005913D8    jmp        0059140D
 005913DA    mov        eax,ebx
 005913DC    mov        edx,dword ptr [eax]
 005913DE    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 005913E4    mov        eax,dword ptr [eax+10]
 005913E7    call       TPen.GetWidth
 005913EC    mov        esi,eax
 005913EE    neg        esi
 005913F0    sar        esi,1
>005913F2    jns        005913F7
 005913F4    adc        esi,0
 005913F7    mov        eax,ebx
 005913F9    mov        edx,dword ptr [eax]
 005913FB    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591401    mov        eax,dword ptr [eax+10]
 00591404    call       TPen.GetWidth
 00591409    mov        edi,esi
 0059140B    sub        edi,eax
 0059140D    push       dword ptr [ebp-0C]
 00591410    push       dword ptr [ebp-10]
 00591413    mov        eax,ebx
 00591415    mov        edx,dword ptr [eax]
 00591417    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059141D    sub        eax,edi
 0059141F    add        eax,2
 00591422    push       eax
 00591423    push       dword ptr [ebp-1C]
 00591426    push       dword ptr [ebp-20]
 00591429    mov        eax,ebx
 0059142B    mov        edx,dword ptr [eax]
 0059142D    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00591433    sub        eax,edi
 00591435    add        eax,2
 00591438    push       eax
 00591439    push       dword ptr [ebp-14]
 0059143C    push       dword ptr [ebp-18]
 0059143F    mov        eax,ebx
 00591441    mov        edx,dword ptr [eax]
 00591443    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00591449    add        eax,esi
 0059144B    push       eax
 0059144C    push       dword ptr [ebp-4]
 0059144F    push       dword ptr [ebp-8]
 00591452    mov        eax,ebx
 00591454    mov        edx,dword ptr [eax]
 00591456    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059145C    add        esi,eax
 0059145E    push       esi
 0059145F    mov        eax,ebx
 00591461    mov        edx,dword ptr [eax]
 00591463    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591469    pop        edx
 0059146A    pop        ecx
 0059146B    call       TCanvas.Rectangle
 00591470    pop        edi
 00591471    pop        esi
 00591472    pop        ebx
 00591473    mov        esp,ebp
 00591475    pop        ebp
 00591476    ret        20
*}
//end;

//0059147C
//procedure sub_0059147C(?:?; ?:?; ?:?);
//begin
{*
 0059147C    push       ebp
 0059147D    mov        ebp,esp
 0059147F    push       dword ptr [ebp+14]
 00591482    push       dword ptr [ebp+10]
 00591485    push       dword ptr [ebp+0C]
 00591488    push       dword ptr [ebp+8]
 0059148B    mov        ecx,2
 00591490    call       00590E14
 00591495    pop        ebp
 00591496    ret        10
*}
//end;

//0059149C
//procedure sub_0059149C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0059149C    push       ebp
 0059149D    mov        ebp,esp
 0059149F    add        esp,0FFFFFFF8
 005914A2    push       ebx
 005914A3    mov        ebx,eax
 005914A5    push       dword ptr [ebp+24]
 005914A8    push       dword ptr [ebp+20]
 005914AB    mov        eax,ebx
 005914AD    mov        edx,dword ptr [eax]
 005914AF    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005914B5    push       eax
 005914B6    push       dword ptr [ebp+1C]
 005914B9    push       dword ptr [ebp+18]
 005914BC    mov        eax,ebx
 005914BE    mov        edx,dword ptr [eax]
 005914C0    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005914C6    push       eax
 005914C7    mov        eax,ebx
 005914C9    mov        edx,dword ptr [eax]
 005914CB    call       dword ptr [edx+0A0]; TRvRenderPreview.sub_005937A0
 005914D1    mov        dword ptr [ebp-4],eax
 005914D4    fild       dword ptr [ebp-4]
 005914D7    fmul       qword ptr [ebp+10]
 005914DA    call       @ROUND
 005914DF    push       eax
 005914E0    mov        eax,ebx
 005914E2    mov        edx,dword ptr [eax]
 005914E4    call       dword ptr [edx+0A4]; TRvRenderPreview.sub_005937AC
 005914EA    mov        dword ptr [ebp-8],eax
 005914ED    fild       dword ptr [ebp-8]
 005914F0    fmul       qword ptr [ebp+8]
 005914F3    call       @ROUND
 005914F8    push       eax
 005914F9    push       dword ptr [ebp+2C]
 005914FC    push       dword ptr [ebp+28]
 005914FF    mov        eax,ebx
 00591501    mov        edx,dword ptr [eax]
 00591503    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 00591509    push       eax
 0059150A    push       dword ptr [ebp+34]
 0059150D    push       dword ptr [ebp+30]
 00591510    mov        eax,ebx
 00591512    mov        edx,dword ptr [eax]
 00591514    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 0059151A    push       eax
 0059151B    mov        eax,ebx
 0059151D    mov        edx,dword ptr [eax]
 0059151F    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591525    pop        edx
 00591526    pop        ecx
 00591527    call       TCanvas.RoundRect
 0059152C    pop        ebx
 0059152D    pop        ecx
 0059152E    pop        ecx
 0059152F    pop        ebp
 00591530    ret        30
*}
//end;

//00591534
//procedure sub_00591534(?:?; ?:?);
//begin
{*
 00591534    push       ebx
 00591535    push       esi
 00591536    push       edi
 00591537    mov        edi,ecx
 00591539    mov        esi,edx
 0059153B    mov        ebx,eax
 0059153D    mov        eax,ebx
 0059153F    mov        edx,dword ptr [eax]
 00591541    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 00591547    mov        edx,esi
 00591549    mov        ecx,edi
 0059154B    call       TCanvas.StretchDraw
 00591550    pop        edi
 00591551    pop        esi
 00591552    pop        ebx
 00591553    ret
*}
//end;

//00591554
//procedure sub_00591554(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00591554    push       ebp
 00591555    mov        ebp,esp
 00591557    add        esp,0FFFFFFEC
 0059155A    push       ebx
 0059155B    push       esi
 0059155C    push       edi
 0059155D    mov        esi,edx
 0059155F    lea        edi,[ebp-14]
 00591562    movs       dword ptr [edi],dword ptr [esi]
 00591563    movs       dword ptr [edi],dword ptr [esi]
 00591564    movs       dword ptr [edi],dword ptr [esi]
 00591565    movs       dword ptr [edi],dword ptr [esi]
 00591566    mov        dword ptr [ebp-4],ecx
 00591569    mov        ebx,eax
 0059156B    mov        eax,dword ptr [ebp-4]
 0059156E    call       @LStrAddRef
 00591573    xor        eax,eax
 00591575    push       ebp
 00591576    push       591611
 0059157B    push       dword ptr fs:[eax]
 0059157E    mov        dword ptr fs:[eax],esp
 00591581    mov        eax,ebx
 00591583    mov        edx,dword ptr [eax]
 00591585    call       dword ptr [edx+0D0]; TRvRenderPreview.sub_00591DE8
 0059158B    mov        esi,eax
 0059158D    push       18
 0059158F    mov        eax,esi
 00591591    call       TCanvas.GetHandle
 00591596    push       eax
 00591597    call       gdi32.SetTextAlign
 0059159C    mov        di,4
 005915A0    mov        eax,dword ptr [esi+14]
 005915A3    call       TBrush.GetStyle
 005915A8    cmp        al,1
>005915AA    je         005915B0
 005915AC    or         di,2
 005915B0    push       0
 005915B2    mov        eax,dword ptr [ebp-4]
 005915B5    call       @LStrLen
 005915BA    push       eax
 005915BB    lea        eax,[ebp-4]
 005915BE    call       @UniqueStringA
 005915C3    push       eax
 005915C4    lea        eax,[ebp-14]
 005915C7    push       eax
 005915C8    movzx      eax,di
 005915CB    push       eax
 005915CC    push       dword ptr [ebp+0C]
 005915CF    push       dword ptr [ebp+8]
 005915D2    mov        eax,ebx
 005915D4    mov        edx,dword ptr [eax]
 005915D6    call       dword ptr [edx+0B8]; TRvRenderPreview.sub_00593914
 005915DC    push       eax
 005915DD    push       dword ptr [ebp+14]
 005915E0    push       dword ptr [ebp+10]
 005915E3    mov        eax,ebx
 005915E5    mov        edx,dword ptr [eax]
 005915E7    call       dword ptr [edx+0B4]; TRvRenderPreview.sub_005938CC
 005915ED    push       eax
 005915EE    mov        eax,esi
 005915F0    call       TCanvas.GetHandle
 005915F5    push       eax
 005915F6    call       gdi32.ExtTextOutA
 005915FB    xor        eax,eax
 005915FD    pop        edx
 005915FE    pop        ecx
 005915FF    pop        ecx
 00591600    mov        dword ptr fs:[eax],edx
 00591603    push       591618
 00591608    lea        eax,[ebp-4]
 0059160B    call       @LStrClr
 00591610    ret
<00591611    jmp        @HandleFinally
<00591616    jmp        00591608
 00591618    pop        edi
 00591619    pop        esi
 0059161A    pop        ebx
 0059161B    mov        esp,ebp
 0059161D    pop        ebp
 0059161E    ret        10
*}
//end;

end.