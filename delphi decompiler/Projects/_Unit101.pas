{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit101;

interface

uses
  Classes, Windows, Graphics;

type
  TRaveStackList = class(TList)
  end;
  TStreamHelper = class(TObject)
  public
    f4:TMemoryStream;//f4
    f8:byte;//f8
    fC:dword;//fC
    f10:TRaveStackList;//f10
    destructor Destroy; virtual;
    //constructor Create(?:TStreamHelper; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005A54B0
//function sub_005A54B0:?;
//begin
{*
 005A54B0    ret
*}
//end;

//005A54B4
//procedure sub_005A54B4(?:?; ?:TRaveComponentList);
//begin
{*
 005A54B4    push       ebx
 005A54B5    push       esi
 005A54B6    mov        ebx,edx
 005A54B8    mov        esi,eax
 005A54BA    mov        edx,dword ptr [esi+8]
 005A54BD    mov        eax,ebx
 005A54BF    call       TList.SetCount
 005A54C4    mov        ecx,dword ptr [ebx+8]; TRaveComponentList.FCount:Integer
 005A54C7    shl        ecx,2
 005A54CA    mov        edx,dword ptr [ebx+4]; TRaveComponentList.FList:PPointerList
 005A54CD    mov        eax,dword ptr [esi+4]
 005A54D0    call       Move
 005A54D5    pop        esi
 005A54D6    pop        ebx
 005A54D7    ret
*}
//end;

//005A54D8
//procedure sub_005A54D8(?:TRaveBaseDataView);
//begin
{*
 005A54D8    push       ebx
 005A54D9    mov        ebx,eax
 005A54DB    mov        eax,ebx
 005A54DD    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005A54E3    call       @IsClass
 005A54E8    test       al,al
>005A54EA    je         005A550B
 005A54EC    mov        eax,dword ptr [ebx+48]; TRaveBaseDataView.?f48:TRaveComponent
 005A54EF    cmp        dword ptr [eax+0E4],0
>005A54F6    je         005A550B
 005A54F8    mov        eax,dword ptr [ebx+48]; TRaveBaseDataView.?f48:TRaveComponent
 005A54FB    mov        eax,dword ptr [eax+0E4]
 005A5501    call       00584D50
 005A5506    call       Abort
 005A550B    pop        ebx
 005A550C    ret
*}
//end;

//005A5510
//procedure sub_005A5510(?:AnsiString; ?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 005A5510    push       ebp
 005A5511    mov        ebp,esp
 005A5513    add        esp,0FFFFFFE8
 005A5516    push       ebx
 005A5517    push       esi
 005A5518    push       edi
 005A5519    xor        ebx,ebx
 005A551B    mov        dword ptr [ebp-18],ebx
 005A551E    mov        dword ptr [ebp-14],ebx
 005A5521    mov        dword ptr [ebp-10],ebx
 005A5524    mov        dword ptr [ebp-8],ecx
 005A5527    mov        dword ptr [ebp-4],edx
 005A552A    mov        esi,eax
 005A552C    mov        eax,dword ptr [ebp-8]
 005A552F    call       @LStrAddRef
 005A5534    xor        eax,eax
 005A5536    push       ebp
 005A5537    push       5A563B
 005A553C    push       dword ptr fs:[eax]
 005A553F    mov        dword ptr fs:[eax],esp
 005A5542    mov        dword ptr [ebp-0C],0FFFFFFFF
 005A5549    mov        eax,dword ptr [ebp-4]
 005A554C    mov        byte ptr [eax],0
 005A554F    xor        edi,edi
 005A5551    xor        ebx,ebx
>005A5553    jmp        005A55A2
 005A5555    inc        edi
 005A5556    mov        eax,dword ptr [esi]
 005A5558    cmp        byte ptr [eax+edi-1],3C
>005A555D    jne        005A5563
 005A555F    mov        bl,1
>005A5561    jmp        005A55A2
 005A5563    mov        eax,dword ptr [esi]
 005A5565    cmp        byte ptr [eax+edi-1],3E
>005A556A    jne        005A5570
 005A556C    xor        ebx,ebx
>005A556E    jmp        005A55A2
 005A5570    test       bl,bl
>005A5572    jne        005A55A2
 005A5574    lea        eax,[ebp-10]
 005A5577    mov        edx,dword ptr [esi]
 005A5579    mov        dl,byte ptr [edx+edi-1]
 005A557D    call       @LStrFromChar
 005A5582    mov        eax,dword ptr [ebp-10]
 005A5585    mov        edx,dword ptr [ebp-8]
 005A5588    call       @LStrPos
 005A558D    test       eax,eax
>005A558F    jle        005A55A2
 005A5591    mov        eax,dword ptr [esi]
 005A5593    mov        al,byte ptr [eax+edi-1]
 005A5597    mov        edx,dword ptr [ebp-4]
 005A559A    mov        byte ptr [edx],al
 005A559C    dec        edi
 005A559D    mov        dword ptr [ebp-0C],edi
>005A55A0    jmp        005A55AD
 005A55A2    mov        eax,dword ptr [esi]
 005A55A4    call       @LStrLen
 005A55A9    cmp        edi,eax
<005A55AB    jl         005A5555
 005A55AD    cmp        dword ptr [ebp-0C],0
>005A55B1    jl         005A5607
 005A55B3    cmp        dword ptr [ebp-0C],0
>005A55B7    jne        005A55C3
 005A55B9    mov        eax,dword ptr [ebp+8]
 005A55BC    call       @LStrClr
>005A55C1    jmp        005A55E1
 005A55C3    lea        eax,[ebp-14]
 005A55C6    push       eax
 005A55C7    mov        eax,dword ptr [esi]
 005A55C9    mov        ecx,dword ptr [ebp-0C]
 005A55CC    mov        edx,1
 005A55D1    call       00590374
 005A55D6    mov        eax,dword ptr [ebp-14]
 005A55D9    mov        edx,dword ptr [ebp+8]
 005A55DC    call       Trim
 005A55E1    mov        ecx,dword ptr [ebp-0C]
 005A55E4    inc        ecx
 005A55E5    mov        eax,esi
 005A55E7    mov        edx,1
 005A55EC    call       00590410
 005A55F1    lea        edx,[ebp-18]
 005A55F4    mov        eax,dword ptr [esi]
 005A55F6    call       Trim
 005A55FB    mov        edx,dword ptr [ebp-18]
 005A55FE    mov        eax,esi
 005A5600    call       @LStrAsg
>005A5605    jmp        005A5618
 005A5607    mov        edx,dword ptr [ebp+8]
 005A560A    mov        eax,dword ptr [esi]
 005A560C    call       Trim
 005A5611    mov        eax,esi
 005A5613    call       @LStrClr
 005A5618    xor        eax,eax
 005A561A    pop        edx
 005A561B    pop        ecx
 005A561C    pop        ecx
 005A561D    mov        dword ptr fs:[eax],edx
 005A5620    push       5A5642
 005A5625    lea        eax,[ebp-18]
 005A5628    mov        edx,3
 005A562D    call       @LStrArrayClr
 005A5632    lea        eax,[ebp-8]
 005A5635    call       @LStrClr
 005A563A    ret
<005A563B    jmp        @HandleFinally
<005A5640    jmp        005A5625
 005A5642    pop        edi
 005A5643    pop        esi
 005A5644    pop        ebx
 005A5645    mov        esp,ebp
 005A5647    pop        ebp
 005A5648    ret        4
*}
//end;

//005A564C
//procedure sub_005A564C(?:AnsiString; ?:AnsiString);
//begin
{*
 005A564C    push       ebp
 005A564D    mov        ebp,esp
 005A564F    add        esp,0FFFFFFF4
 005A5652    push       ebx
 005A5653    push       esi
 005A5654    push       edi
 005A5655    xor        ecx,ecx
 005A5657    mov        dword ptr [ebp-0C],ecx
 005A565A    mov        dword ptr [ebp-8],edx
 005A565D    mov        dword ptr [ebp-4],eax
 005A5660    mov        eax,dword ptr [ebp-4]
 005A5663    call       @LStrAddRef
 005A5668    xor        eax,eax
 005A566A    push       ebp
 005A566B    push       5A56F2
 005A5670    push       dword ptr fs:[eax]
 005A5673    mov        dword ptr fs:[eax],esp
 005A5676    mov        eax,dword ptr [ebp-8]
 005A5679    call       @LStrClr
 005A567E    xor        ebx,ebx
 005A5680    mov        eax,dword ptr [ebp-4]
 005A5683    call       @LStrLen
 005A5688    mov        esi,eax
 005A568A    test       esi,esi
>005A568C    jle        005A56D4
 005A568E    mov        edi,1
 005A5693    mov        eax,dword ptr [ebp-4]
 005A5696    cmp        byte ptr [eax+edi-1],3C
>005A569B    jne        005A56A1
 005A569D    mov        bl,1
>005A569F    jmp        005A56D0
 005A56A1    test       bl,bl
>005A56A3    je         005A56B3
 005A56A5    mov        eax,dword ptr [ebp-4]
 005A56A8    cmp        byte ptr [eax+edi-1],3E
>005A56AD    jne        005A56B3
 005A56AF    xor        ebx,ebx
>005A56B1    jmp        005A56D0
 005A56B3    lea        eax,[ebp-0C]
 005A56B6    mov        edx,dword ptr [ebp-4]
 005A56B9    mov        dl,byte ptr [edx+edi-1]
 005A56BD    call       @LStrFromChar
 005A56C2    mov        edx,dword ptr [ebp-0C]
 005A56C5    mov        eax,dword ptr [ebp-8]
 005A56C8    call       @LStrCat
 005A56CD    mov        eax,dword ptr [ebp-8]
 005A56D0    inc        edi
 005A56D1    dec        esi
<005A56D2    jne        005A5693
 005A56D4    xor        eax,eax
 005A56D6    pop        edx
 005A56D7    pop        ecx
 005A56D8    pop        ecx
 005A56D9    mov        dword ptr fs:[eax],edx
 005A56DC    push       5A56F9
 005A56E1    lea        eax,[ebp-0C]
 005A56E4    call       @LStrClr
 005A56E9    lea        eax,[ebp-4]
 005A56EC    call       @LStrClr
 005A56F1    ret
<005A56F2    jmp        @HandleFinally
<005A56F7    jmp        005A56E1
 005A56F9    pop        edi
 005A56FA    pop        esi
 005A56FB    pop        ebx
 005A56FC    mov        esp,ebp
 005A56FE    pop        ebp
 005A56FF    ret
*}
//end;

//005A5700
//procedure sub_005A5700(?:AnsiString; ?:AnsiString);
//begin
{*
 005A5700    push       ebp
 005A5701    mov        ebp,esp
 005A5703    push       ecx
 005A5704    push       ebx
 005A5705    push       esi
 005A5706    push       edi
 005A5707    mov        edi,edx
 005A5709    mov        dword ptr [ebp-4],eax
 005A570C    mov        eax,dword ptr [ebp-4]
 005A570F    call       @LStrAddRef
 005A5714    xor        eax,eax
 005A5716    push       ebp
 005A5717    push       5A57BA
 005A571C    push       dword ptr fs:[eax]
 005A571F    mov        dword ptr fs:[eax],esp
 005A5722    cmp        dword ptr [ebp-4],0
>005A5726    je         005A573C
 005A5728    mov        eax,dword ptr [ebp-4]
 005A572B    cmp        byte ptr [eax],3C
>005A572E    jne        005A573C
 005A5730    mov        eax,edi
 005A5732    mov        edx,dword ptr [ebp-4]
 005A5735    call       @LStrAsg
>005A573A    jmp        005A57A4
 005A573C    xor        ebx,ebx
 005A573E    mov        eax,dword ptr [ebp-4]
 005A5741    call       @LStrLen
 005A5746    test       eax,eax
>005A5748    jle        005A577B
 005A574A    mov        esi,1
 005A574F    mov        edx,dword ptr [ebp-4]
 005A5752    mov        dl,byte ptr [edx+esi-1]
 005A5756    add        dl,0D0
 005A5759    sub        dl,0A
>005A575C    jb         005A5777
 005A575E    add        dl,0F9
 005A5761    sub        dl,1A
>005A5764    jb         005A5777
 005A5766    sub        dl,4
>005A5769    je         005A5777
 005A576B    add        dl,0FE
 005A576E    sub        dl,1A
>005A5771    jb         005A5777
 005A5773    mov        bl,1
>005A5775    jmp        005A577B
 005A5777    inc        esi
 005A5778    dec        eax
<005A5779    jne        005A574F
 005A577B    test       bl,bl
>005A577D    je         005A579A
 005A577F    push       5A57D0; '<'
 005A5784    push       dword ptr [ebp-4]
 005A5787    push       5A57DC; '>'
 005A578C    mov        eax,edi
 005A578E    mov        edx,3
 005A5793    call       @LStrCatN
>005A5798    jmp        005A57A4
 005A579A    mov        eax,edi
 005A579C    mov        edx,dword ptr [ebp-4]
 005A579F    call       @LStrAsg
 005A57A4    xor        eax,eax
 005A57A6    pop        edx
 005A57A7    pop        ecx
 005A57A8    pop        ecx
 005A57A9    mov        dword ptr fs:[eax],edx
 005A57AC    push       5A57C1
 005A57B1    lea        eax,[ebp-4]
 005A57B4    call       @LStrClr
 005A57B9    ret
<005A57BA    jmp        @HandleFinally
<005A57BF    jmp        005A57B1
 005A57C1    pop        edi
 005A57C2    pop        esi
 005A57C3    pop        ebx
 005A57C4    pop        ecx
 005A57C5    pop        ebp
 005A57C6    ret
*}
//end;

//005A57E0
//procedure sub_005A57E0(?:AnsiString; ?:AnsiString; ?:AnsiString);
//begin
{*
 005A57E0    push       ebp
 005A57E1    mov        ebp,esp
 005A57E3    push       0
 005A57E5    push       0
 005A57E7    push       0
 005A57E9    push       ebx
 005A57EA    push       esi
 005A57EB    push       edi
 005A57EC    mov        edi,ecx
 005A57EE    mov        byte ptr [ebp-1],dl
 005A57F1    mov        esi,eax
 005A57F3    xor        eax,eax
 005A57F5    push       ebp
 005A57F6    push       5A58A1
 005A57FB    push       dword ptr fs:[eax]
 005A57FE    mov        dword ptr fs:[eax],esp
 005A5801    mov        eax,edi
 005A5803    call       @LStrClr
 005A5808    cmp        dword ptr [esi],0
>005A580B    je         005A5886
 005A580D    mov        eax,dword ptr [esi]
 005A580F    mov        al,byte ptr [eax]
 005A5811    cmp        al,byte ptr [ebp-1]
>005A5814    jne        005A5886
 005A5816    mov        ebx,1
>005A581B    jmp        005A5858
 005A581D    inc        ebx
 005A581E    mov        eax,dword ptr [esi]
 005A5820    mov        al,byte ptr [eax+ebx-1]
 005A5824    cmp        al,byte ptr [ebp-1]
>005A5827    jne        005A5840
 005A5829    inc        ebx
 005A582A    mov        eax,dword ptr [esi]
 005A582C    call       @LStrLen
 005A5831    cmp        ebx,eax
>005A5833    jg         005A5863
 005A5835    mov        eax,dword ptr [esi]
 005A5837    mov        al,byte ptr [eax+ebx-1]
 005A583B    cmp        al,byte ptr [ebp-1]
>005A583E    jne        005A5863
 005A5840    lea        eax,[ebp-8]
 005A5843    mov        edx,dword ptr [esi]
 005A5845    mov        dl,byte ptr [edx+ebx-1]
 005A5849    call       @LStrFromChar
 005A584E    mov        edx,dword ptr [ebp-8]
 005A5851    mov        eax,edi
 005A5853    call       @LStrCat
 005A5858    mov        eax,dword ptr [esi]
 005A585A    call       @LStrLen
 005A585F    cmp        ebx,eax
<005A5861    jl         005A581D
 005A5863    mov        ecx,ebx
 005A5865    dec        ecx
 005A5866    mov        eax,esi
 005A5868    mov        edx,1
 005A586D    call       00590410
 005A5872    lea        edx,[ebp-0C]
 005A5875    mov        eax,dword ptr [esi]
 005A5877    call       Trim
 005A587C    mov        edx,dword ptr [ebp-0C]
 005A587F    mov        eax,esi
 005A5881    call       @LStrAsg
 005A5886    xor        eax,eax
 005A5888    pop        edx
 005A5889    pop        ecx
 005A588A    pop        ecx
 005A588B    mov        dword ptr fs:[eax],edx
 005A588E    push       5A58A8
 005A5893    lea        eax,[ebp-0C]
 005A5896    mov        edx,2
 005A589B    call       @LStrArrayClr
 005A58A0    ret
<005A58A1    jmp        @HandleFinally
<005A58A6    jmp        005A5893
 005A58A8    pop        edi
 005A58A9    pop        esi
 005A58AA    pop        ebx
 005A58AB    mov        esp,ebp
 005A58AD    pop        ebp
 005A58AE    ret
*}
//end;

//005A58B0
//function sub_005A58B0(?:?):?;
//begin
{*
 005A58B0    mov        edx,eax
 005A58B2    sar        edx,1
>005A58B4    jns        005A58B9
 005A58B6    adc        edx,0
 005A58B9    test       al,1
>005A58BB    je         005A58C0
 005A58BD    inc        edx
 005A58BE    neg        edx
 005A58C0    mov        eax,edx
 005A58C2    ret
*}
//end;

//005A58C4
//procedure sub_005A58C4(?:TList);
//begin
{*
 005A58C4    push       ebx
 005A58C5    push       esi
 005A58C6    push       edi
 005A58C7    mov        edi,eax
 005A58C9    test       edi,edi
>005A58CB    je         005A58FE
 005A58CD    mov        esi,dword ptr [edi+8]; TList.FCount:Integer
 005A58D0    dec        esi
 005A58D1    test       esi,esi
>005A58D3    jl         005A58F7
 005A58D5    inc        esi
 005A58D6    xor        ebx,ebx
 005A58D8    mov        edx,ebx
 005A58DA    mov        eax,edi
 005A58DC    call       TList.Get
 005A58E1    test       eax,eax
>005A58E3    je         005A58F3
 005A58E5    mov        edx,ebx
 005A58E7    mov        eax,edi
 005A58E9    call       TList.Get
 005A58EE    call       TObject.Free
 005A58F3    inc        ebx
 005A58F4    dec        esi
<005A58F5    jne        005A58D8
 005A58F7    mov        eax,edi
 005A58F9    mov        edx,dword ptr [eax]
 005A58FB    call       dword ptr [edx+8]; TList.Clear
 005A58FE    pop        edi
 005A58FF    pop        esi
 005A5900    pop        ebx
 005A5901    ret
*}
//end;

//005A5904
//procedure sub_005A5904(?:dword);
//begin
{*
 005A5904    push       ebx
 005A5905    push       esi
 005A5906    push       edi
 005A5907    mov        edi,eax
 005A5909    test       edi,edi
>005A590B    je         005A5944
 005A590D    mov        eax,edi
 005A590F    mov        edx,dword ptr [eax]
 005A5911    call       dword ptr [edx+14]
 005A5914    mov        esi,eax
 005A5916    dec        esi
 005A5917    test       esi,esi
>005A5919    jl         005A593D
 005A591B    inc        esi
 005A591C    xor        ebx,ebx
 005A591E    mov        edx,ebx
 005A5920    mov        eax,edi
 005A5922    mov        ecx,dword ptr [eax]
 005A5924    call       dword ptr [ecx+18]
 005A5927    test       eax,eax
>005A5929    je         005A5939
 005A592B    mov        edx,ebx
 005A592D    mov        eax,edi
 005A592F    mov        ecx,dword ptr [eax]
 005A5931    call       dword ptr [ecx+18]
 005A5934    call       TObject.Free
 005A5939    inc        ebx
 005A593A    dec        esi
<005A593B    jne        005A591E
 005A593D    mov        eax,edi
 005A593F    mov        edx,dword ptr [eax]
 005A5941    call       dword ptr [edx+44]
 005A5944    pop        edi
 005A5945    pop        esi
 005A5946    pop        ebx
 005A5947    ret
*}
//end;

//005A5948
//function sub_005A5948(?:AnsiString; ?:AnsiString):?;
//begin
{*
 005A5948    push       ebp
 005A5949    mov        ebp,esp
 005A594B    add        esp,0FFFFFFF8
 005A594E    push       ebx
 005A594F    mov        dword ptr [ebp-8],edx
 005A5952    mov        dword ptr [ebp-4],eax
 005A5955    mov        eax,dword ptr [ebp-4]
 005A5958    call       @LStrAddRef
 005A595D    mov        eax,dword ptr [ebp-8]
 005A5960    call       @LStrAddRef
 005A5965    xor        eax,eax
 005A5967    push       ebp
 005A5968    push       5A59E0
 005A596D    push       dword ptr fs:[eax]
 005A5970    mov        dword ptr fs:[eax],esp
 005A5973    cmp        dword ptr [ebp-4],0
>005A5977    je         005A597F
 005A5979    cmp        dword ptr [ebp-8],0
>005A597D    jne        005A598F
 005A597F    mov        eax,dword ptr [ebp-4]
 005A5982    mov        edx,dword ptr [ebp-8]
 005A5985    call       @LStrCmp
 005A598A    sete       bl
>005A598D    jmp        005A59C5
 005A598F    mov        eax,dword ptr [ebp-8]
 005A5992    call       @LStrLen
 005A5997    push       eax
 005A5998    lea        eax,[ebp-8]
 005A599B    call       @UniqueStringA
 005A59A0    push       eax
 005A59A1    mov        eax,dword ptr [ebp-4]
 005A59A4    call       @LStrLen
 005A59A9    push       eax
 005A59AA    lea        eax,[ebp-4]
 005A59AD    call       @UniqueStringA
 005A59B2    push       eax
 005A59B3    push       1
 005A59B5    push       400
 005A59BA    call       kernel32.CompareStringA
 005A59BF    cmp        eax,2
 005A59C2    sete       bl
 005A59C5    xor        eax,eax
 005A59C7    pop        edx
 005A59C8    pop        ecx
 005A59C9    pop        ecx
 005A59CA    mov        dword ptr fs:[eax],edx
 005A59CD    push       5A59E7
 005A59D2    lea        eax,[ebp-8]
 005A59D5    mov        edx,2
 005A59DA    call       @LStrArrayClr
 005A59DF    ret
<005A59E0    jmp        @HandleFinally
<005A59E5    jmp        005A59D2
 005A59E7    mov        eax,ebx
 005A59E9    pop        ebx
 005A59EA    pop        ecx
 005A59EB    pop        ecx
 005A59EC    pop        ebp
 005A59ED    ret
*}
//end;

//005A59F0
//procedure sub_005A59F0(?:?; ?:AnsiString; ?:?);
//begin
{*
 005A59F0    push       ebp
 005A59F1    mov        ebp,esp
 005A59F3    push       ebx
 005A59F4    push       esi
 005A59F5    mov        esi,edx
 005A59F7    mov        ebx,eax
 005A59F9    fld        qword ptr [ebp+8]
 005A59FC    add        esp,0FFFFFFF4
 005A59FF    fstp       tbyte ptr [esp]
 005A5A02    wait
 005A5A03    push       esi
 005A5A04    xor        ecx,ecx
 005A5A06    mov        cl,bl
 005A5A08    mov        edx,0F
 005A5A0D    mov        al,2
 005A5A0F    call       FloatToStrF
 005A5A14    mov        edx,dword ptr [esi]
 005A5A16    mov        eax,5A5A80; '.'
 005A5A1B    call       @LStrPos
 005A5A20    test       eax,eax
>005A5A22    jle        005A5A70
>005A5A24    jmp        005A5A3B
 005A5A26    mov        eax,dword ptr [esi]
 005A5A28    call       @LStrLen
 005A5A2D    mov        edx,eax
 005A5A2F    mov        eax,esi
 005A5A31    mov        ecx,1
 005A5A36    call       00590410
 005A5A3B    mov        eax,dword ptr [esi]
 005A5A3D    call       @LStrLen
 005A5A42    mov        edx,dword ptr [esi]
 005A5A44    cmp        byte ptr [edx+eax-1],30
<005A5A49    je         005A5A26
 005A5A4B    mov        eax,dword ptr [esi]
 005A5A4D    call       @LStrLen
 005A5A52    mov        edx,dword ptr [esi]
 005A5A54    cmp        byte ptr [edx+eax-1],2E
>005A5A59    jne        005A5A70
 005A5A5B    mov        eax,dword ptr [esi]
 005A5A5D    call       @LStrLen
 005A5A62    mov        edx,eax
 005A5A64    mov        eax,esi
 005A5A66    mov        ecx,1
 005A5A6B    call       00590410
 005A5A70    pop        esi
 005A5A71    pop        ebx
 005A5A72    pop        ebp
 005A5A73    ret        8
*}
//end;

//005A5A84
//function sub_005A5A84(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005A5A84    push       ebp
 005A5A85    mov        ebp,esp
 005A5A87    add        esp,0FFFFFFF8
 005A5A8A    fld        qword ptr [ebp+10]
 005A5A8D    fcomp      qword ptr [ebp+8]
 005A5A90    fnstsw     al
 005A5A92    sahf
>005A5A93    ja         005A5AA3
 005A5A95    mov        eax,dword ptr [ebp+10]
 005A5A98    mov        dword ptr [ebp-8],eax
 005A5A9B    mov        eax,dword ptr [ebp+14]
 005A5A9E    mov        dword ptr [ebp-4],eax
>005A5AA1    jmp        005A5AAF
 005A5AA3    mov        eax,dword ptr [ebp+8]
 005A5AA6    mov        dword ptr [ebp-8],eax
 005A5AA9    mov        eax,dword ptr [ebp+0C]
 005A5AAC    mov        dword ptr [ebp-4],eax
 005A5AAF    fld        qword ptr [ebp-8]
 005A5AB2    pop        ecx
 005A5AB3    pop        ecx
 005A5AB4    pop        ebp
 005A5AB5    ret        10
*}
//end;

//005A5AB8
//function sub_005A5AB8(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005A5AB8    push       ebp
 005A5AB9    mov        ebp,esp
 005A5ABB    add        esp,0FFFFFFF8
 005A5ABE    fld        qword ptr [ebp+10]
 005A5AC1    fcomp      qword ptr [ebp+8]
 005A5AC4    fnstsw     al
 005A5AC6    sahf
>005A5AC7    jb         005A5AD7
 005A5AC9    mov        eax,dword ptr [ebp+10]
 005A5ACC    mov        dword ptr [ebp-8],eax
 005A5ACF    mov        eax,dword ptr [ebp+14]
 005A5AD2    mov        dword ptr [ebp-4],eax
>005A5AD5    jmp        005A5AE3
 005A5AD7    mov        eax,dword ptr [ebp+8]
 005A5ADA    mov        dword ptr [ebp-8],eax
 005A5ADD    mov        eax,dword ptr [ebp+0C]
 005A5AE0    mov        dword ptr [ebp-4],eax
 005A5AE3    fld        qword ptr [ebp-8]
 005A5AE6    pop        ecx
 005A5AE7    pop        ecx
 005A5AE8    pop        ebp
 005A5AE9    ret        10
*}
//end;

//005A5AEC
//function sub_005A5AEC(?:?; ?:?):Boolean;
//begin
{*
 005A5AEC    push       ebp
 005A5AED    mov        ebp,esp
 005A5AEF    fld        qword ptr [ebp+10]
 005A5AF2    fsub       qword ptr [ebp+8]
 005A5AF5    fabs
 005A5AF7    mov        eax,[0061B8B0]; ^gvar_0061700C:?Double
 005A5AFC    fcomp      qword ptr [eax]
 005A5AFE    fnstsw     al
 005A5B00    sahf
 005A5B01    setbe      al
 005A5B04    pop        ebp
 005A5B05    ret        10
*}
//end;

//005A5B08
//function sub_005A5B08(?:?; ?:?):Boolean;
//begin
{*
 005A5B08    push       ebp
 005A5B09    mov        ebp,esp
 005A5B0B    fld        qword ptr [ebp+10]
 005A5B0E    fsub       qword ptr [ebp+8]
 005A5B11    mov        eax,[0061B8B0]; ^gvar_0061700C:?Double
 005A5B16    fcomp      qword ptr [eax]
 005A5B18    fnstsw     al
 005A5B1A    sahf
 005A5B1B    setae      al
 005A5B1E    pop        ebp
 005A5B1F    ret        10
*}
//end;

//005A5B24
//function sub_005A5B24(?:?; ?:?):Boolean;
//begin
{*
 005A5B24    push       ebp
 005A5B25    mov        ebp,esp
 005A5B27    fld        qword ptr [ebp+8]
 005A5B2A    fsub       qword ptr [ebp+10]
 005A5B2D    mov        eax,[0061B8B0]; ^gvar_0061700C:?Double
 005A5B32    fcomp      qword ptr [eax]
 005A5B34    fnstsw     al
 005A5B36    sahf
 005A5B37    setae      al
 005A5B3A    pop        ebp
 005A5B3B    ret        10
*}
//end;

//005A5B40
//function sub_005A5B40(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005A5B40    push       ebp
 005A5B41    mov        ebp,esp
 005A5B43    push       dword ptr [ebp+14]
 005A5B46    push       dword ptr [ebp+10]
 005A5B49    push       dword ptr [ebp+0C]
 005A5B4C    push       dword ptr [ebp+8]
 005A5B4F    call       005A5AEC
 005A5B54    xor        al,1
 005A5B56    pop        ebp
 005A5B57    ret        10
*}
//end;

//005A5B5C
//function sub_005A5B5C(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005A5B5C    push       ebp
 005A5B5D    mov        ebp,esp
 005A5B5F    push       dword ptr [ebp+14]
 005A5B62    push       dword ptr [ebp+10]
 005A5B65    push       dword ptr [ebp+0C]
 005A5B68    push       dword ptr [ebp+8]
 005A5B6B    call       005A5B08
 005A5B70    xor        al,1
 005A5B72    pop        ebp
 005A5B73    ret        10
*}
//end;

//005A5B78
//function sub_005A5B78(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005A5B78    push       ebp
 005A5B79    mov        ebp,esp
 005A5B7B    push       dword ptr [ebp+14]
 005A5B7E    push       dword ptr [ebp+10]
 005A5B81    push       dword ptr [ebp+0C]
 005A5B84    push       dword ptr [ebp+8]
 005A5B87    call       005A5B24
 005A5B8C    xor        al,1
 005A5B8E    pop        ebp
 005A5B8F    ret        10
*}
//end;

//005A5B94
//procedure sub_005A5B94(?:?Double; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005A5B94    push       ebp
 005A5B95    mov        ebp,esp
 005A5B97    mov        edx,dword ptr [ebp+20]
 005A5B9A    mov        dword ptr [eax],edx
 005A5B9C    mov        edx,dword ptr [ebp+24]
 005A5B9F    mov        dword ptr [eax+4],edx
 005A5BA2    mov        edx,dword ptr [ebp+18]
 005A5BA5    mov        dword ptr [eax+8],edx
 005A5BA8    mov        edx,dword ptr [ebp+1C]
 005A5BAB    mov        dword ptr [eax+0C],edx
 005A5BAE    mov        edx,dword ptr [ebp+10]
 005A5BB1    mov        dword ptr [eax+10],edx
 005A5BB4    mov        edx,dword ptr [ebp+14]
 005A5BB7    mov        dword ptr [eax+14],edx
 005A5BBA    mov        edx,dword ptr [ebp+8]
 005A5BBD    mov        dword ptr [eax+18],edx
 005A5BC0    mov        edx,dword ptr [ebp+0C]
 005A5BC3    mov        dword ptr [eax+1C],edx
 005A5BC6    pop        ebp
 005A5BC7    ret        20
*}
//end;

//005A5BCC
//procedure sub_005A5BCC(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005A5BCC    push       ebp
 005A5BCD    mov        ebp,esp
 005A5BCF    mov        edx,dword ptr [ebp+10]
 005A5BD2    mov        dword ptr [eax],edx
 005A5BD4    mov        edx,dword ptr [ebp+14]
 005A5BD7    mov        dword ptr [eax+4],edx
 005A5BDA    mov        edx,dword ptr [ebp+8]
 005A5BDD    mov        dword ptr [eax+8],edx
 005A5BE0    mov        edx,dword ptr [ebp+0C]
 005A5BE3    mov        dword ptr [eax+0C],edx
 005A5BE6    pop        ebp
 005A5BE7    ret        10
*}
//end;

//005A5BEC
//function sub_005A5BEC(?:?; ?:?):?;
//begin
{*
 005A5BEC    push       esi
 005A5BED    push       edi
 005A5BEE    add        esp,0FFFFFFD0
 005A5BF1    mov        esi,edx
 005A5BF3    lea        edi,[esp+20]
 005A5BF7    movs       dword ptr [edi],dword ptr [esi]
 005A5BF8    movs       dword ptr [edi],dword ptr [esi]
 005A5BF9    movs       dword ptr [edi],dword ptr [esi]
 005A5BFA    movs       dword ptr [edi],dword ptr [esi]
 005A5BFB    mov        esi,eax
 005A5BFD    lea        edi,[esp]
 005A5C00    mov        ecx,8
 005A5C05    rep movs   dword ptr [edi],dword ptr [esi]
 005A5C07    push       dword ptr [esp+24]
 005A5C0B    push       dword ptr [esp+24]
 005A5C0F    push       dword ptr [esp+0C]
 005A5C13    push       dword ptr [esp+0C]
 005A5C17    call       005A5B78
 005A5C1C    test       al,al
>005A5C1E    je         005A5C6B
 005A5C20    push       dword ptr [esp+24]
 005A5C24    push       dword ptr [esp+24]
 005A5C28    push       dword ptr [esp+1C]
 005A5C2C    push       dword ptr [esp+1C]
 005A5C30    call       005A5B5C
 005A5C35    test       al,al
>005A5C37    je         005A5C6B
 005A5C39    push       dword ptr [esp+2C]
 005A5C3D    push       dword ptr [esp+2C]
 005A5C41    push       dword ptr [esp+14]
 005A5C45    push       dword ptr [esp+14]
 005A5C49    call       005A5B78
 005A5C4E    test       al,al
>005A5C50    je         005A5C6B
 005A5C52    push       dword ptr [esp+2C]
 005A5C56    push       dword ptr [esp+2C]
 005A5C5A    push       dword ptr [esp+24]
 005A5C5E    push       dword ptr [esp+24]
 005A5C62    call       005A5B5C
 005A5C67    test       al,al
>005A5C69    jne        005A5C6F
 005A5C6B    xor        eax,eax
>005A5C6D    jmp        005A5C71
 005A5C6F    mov        al,1
 005A5C71    add        esp,30
 005A5C74    pop        edi
 005A5C75    pop        esi
 005A5C76    ret
*}
//end;

//005A5C78
//function sub_005A5C78(?:?; ?:?; ?:?):?;
//begin
{*
 005A5C78    push       ebx
 005A5C79    push       esi
 005A5C7A    push       edi
 005A5C7B    add        esp,0FFFFFFC0
 005A5C7E    mov        esi,ecx
 005A5C80    lea        edi,[esp+20]
 005A5C84    mov        ecx,8
 005A5C89    rep movs   dword ptr [edi],dword ptr [esi]
 005A5C8B    mov        esi,edx
 005A5C8D    lea        edi,[esp]
 005A5C90    mov        ecx,8
 005A5C95    rep movs   dword ptr [edi],dword ptr [esi]
 005A5C97    mov        ebx,eax
 005A5C99    push       dword ptr [esp+4]
 005A5C9D    push       dword ptr [esp+4]
 005A5CA1    push       dword ptr [esp+2C]
 005A5CA5    push       dword ptr [esp+2C]
 005A5CA9    call       005A5AB8
 005A5CAE    fstp       qword ptr [ebx]
 005A5CB0    wait
 005A5CB1    push       dword ptr [esp+14]
 005A5CB5    push       dword ptr [esp+14]
 005A5CB9    push       dword ptr [esp+3C]
 005A5CBD    push       dword ptr [esp+3C]
 005A5CC1    call       005A5A84
 005A5CC6    fstp       qword ptr [ebx+10]
 005A5CC9    wait
 005A5CCA    push       dword ptr [esp+0C]
 005A5CCE    push       dword ptr [esp+0C]
 005A5CD2    push       dword ptr [esp+34]
 005A5CD6    push       dword ptr [esp+34]
 005A5CDA    call       005A5AB8
 005A5CDF    fstp       qword ptr [ebx+8]
 005A5CE2    wait
 005A5CE3    push       dword ptr [esp+1C]
 005A5CE7    push       dword ptr [esp+1C]
 005A5CEB    push       dword ptr [esp+44]
 005A5CEF    push       dword ptr [esp+44]
 005A5CF3    call       005A5A84
 005A5CF8    fstp       qword ptr [ebx+18]
 005A5CFB    wait
 005A5CFC    push       dword ptr [ebx+4]
 005A5CFF    push       dword ptr [ebx]
 005A5D01    push       dword ptr [ebx+14]
 005A5D04    push       dword ptr [ebx+10]
 005A5D07    call       005A5B5C
 005A5D0C    test       al,al
>005A5D0E    je         005A5D25
 005A5D10    push       dword ptr [ebx+0C]
 005A5D13    push       dword ptr [ebx+8]
 005A5D16    push       dword ptr [ebx+1C]
 005A5D19    push       dword ptr [ebx+18]
 005A5D1C    call       005A5B5C
 005A5D21    test       al,al
>005A5D23    jne        005A5D29
 005A5D25    xor        eax,eax
>005A5D27    jmp        005A5D2B
 005A5D29    mov        al,1
 005A5D2B    add        esp,40
 005A5D2E    pop        edi
 005A5D2F    pop        esi
 005A5D30    pop        ebx
 005A5D31    ret
*}
//end;

//005A5D34
//procedure sub_005A5D34(?:AnsiString; ?:AnsiString);
//begin
{*
 005A5D34    push       ebp
 005A5D35    mov        ebp,esp
 005A5D37    add        esp,0FFFFFFF0
 005A5D3A    push       ebx
 005A5D3B    push       esi
 005A5D3C    push       edi
 005A5D3D    xor        ecx,ecx
 005A5D3F    mov        dword ptr [ebp-10],ecx
 005A5D42    mov        dword ptr [ebp-0C],ecx
 005A5D45    mov        edi,edx
 005A5D47    mov        dword ptr [ebp-4],eax
 005A5D4A    mov        eax,dword ptr [ebp-4]
 005A5D4D    call       @LStrAddRef
 005A5D52    xor        eax,eax
 005A5D54    push       ebp
 005A5D55    push       5A5E23
 005A5D5A    push       dword ptr fs:[eax]
 005A5D5D    mov        dword ptr fs:[eax],esp
 005A5D60    mov        eax,edi
 005A5D62    call       @LStrClr
 005A5D67    mov        byte ptr [ebp-5],0
 005A5D6B    mov        eax,dword ptr [ebp-4]
 005A5D6E    call       @LStrLen
 005A5D73    mov        esi,eax
 005A5D75    test       esi,esi
>005A5D77    jle        005A5E00
 005A5D7D    mov        ebx,1
 005A5D82    mov        eax,dword ptr [ebp-4]
 005A5D85    cmp        byte ptr [eax+ebx-1],2D
>005A5D8A    jne        005A5D9F
 005A5D8C    cmp        dword ptr [edi],0
>005A5D8F    jne        005A5DFC
 005A5D91    mov        eax,edi
 005A5D93    mov        edx,5A5E3C; '-'
 005A5D98    call       @LStrAsg
>005A5D9D    jmp        005A5DFC
 005A5D9F    mov        eax,dword ptr [ebp-4]
 005A5DA2    mov        al,byte ptr [eax+ebx-1]
 005A5DA6    add        al,0D0
 005A5DA8    sub        al,0A
>005A5DAA    jae        005A5DC7
 005A5DAC    lea        eax,[ebp-0C]
 005A5DAF    mov        edx,dword ptr [ebp-4]
 005A5DB2    mov        dl,byte ptr [edx+ebx-1]
 005A5DB6    call       @LStrFromChar
 005A5DBB    mov        edx,dword ptr [ebp-0C]
 005A5DBE    mov        eax,edi
 005A5DC0    call       @LStrCat
>005A5DC5    jmp        005A5DFC
 005A5DC7    mov        eax,dword ptr [ebp-4]
 005A5DCA    mov        al,byte ptr [eax+ebx-1]
 005A5DCE    mov        edx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 005A5DD4    cmp        al,byte ptr [edx]
>005A5DD6    jne        005A5DFC
 005A5DD8    cmp        byte ptr [ebp-5],0
>005A5DDC    jne        005A5DFC
 005A5DDE    mov        byte ptr [ebp-5],1
 005A5DE2    lea        eax,[ebp-10]
 005A5DE5    mov        edx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 005A5DEB    mov        dl,byte ptr [edx]
 005A5DED    call       @LStrFromChar
 005A5DF2    mov        edx,dword ptr [ebp-10]
 005A5DF5    mov        eax,edi
 005A5DF7    call       @LStrCat
 005A5DFC    inc        ebx
 005A5DFD    dec        esi
<005A5DFE    jne        005A5D82
 005A5E00    xor        eax,eax
 005A5E02    pop        edx
 005A5E03    pop        ecx
 005A5E04    pop        ecx
 005A5E05    mov        dword ptr fs:[eax],edx
 005A5E08    push       5A5E2A
 005A5E0D    lea        eax,[ebp-10]
 005A5E10    mov        edx,2
 005A5E15    call       @LStrArrayClr
 005A5E1A    lea        eax,[ebp-4]
 005A5E1D    call       @LStrClr
 005A5E22    ret
<005A5E23    jmp        @HandleFinally
<005A5E28    jmp        005A5E0D
 005A5E2A    pop        edi
 005A5E2B    pop        esi
 005A5E2C    pop        ebx
 005A5E2D    mov        esp,ebp
 005A5E2F    pop        ebp
 005A5E30    ret
*}
//end;

//005A5E40
//function sub_005A5E40(?:AnsiString; ?:?; ?:?):?;
//begin
{*
 005A5E40    push       ebp
 005A5E41    mov        ebp,esp
 005A5E43    add        esp,0FFFFFFE8
 005A5E46    xor        edx,edx
 005A5E48    mov        dword ptr [ebp-18],edx
 005A5E4B    mov        dword ptr [ebp-4],eax
 005A5E4E    mov        eax,dword ptr [ebp-4]
 005A5E51    call       @LStrAddRef
 005A5E56    xor        eax,eax
 005A5E58    push       ebp
 005A5E59    push       5A5EE1
 005A5E5E    push       dword ptr fs:[eax]
 005A5E61    mov        dword ptr fs:[eax],esp
 005A5E64    mov        eax,[0061C46C]; ^DecimalSeparator:Char
 005A5E69    cmp        byte ptr [eax],2E
>005A5E6C    je         005A5EA2
 005A5E6E    lea        eax,[ebp-18]
 005A5E71    mov        edx,dword ptr ds:[61C46C]; ^DecimalSeparator:Char
 005A5E77    mov        dl,byte ptr [edx]
 005A5E79    call       @LStrFromChar
 005A5E7E    mov        eax,dword ptr [ebp-18]
 005A5E81    mov        edx,dword ptr [ebp-4]
 005A5E84    call       @LStrPos
 005A5E89    mov        dword ptr [ebp-14],eax
 005A5E8C    cmp        dword ptr [ebp-14],0
>005A5E90    jle        005A5EA2
 005A5E92    lea        eax,[ebp-4]
 005A5E95    call       @UniqueStringA
 005A5E9A    mov        edx,dword ptr [ebp-14]
 005A5E9D    mov        byte ptr [eax+edx-1],2E
 005A5EA2    lea        edx,[ebp-14]
 005A5EA5    mov        eax,dword ptr [ebp-4]
 005A5EA8    call       @ValExt
 005A5EAD    fstp       qword ptr [ebp-10]
 005A5EB0    wait
 005A5EB1    cmp        dword ptr [ebp-14],0
>005A5EB5    jle        005A5EC3
 005A5EB7    mov        eax,dword ptr [ebp+8]
 005A5EBA    mov        dword ptr [ebp-10],eax
 005A5EBD    mov        eax,dword ptr [ebp+0C]
 005A5EC0    mov        dword ptr [ebp-0C],eax
 005A5EC3    xor        eax,eax
 005A5EC5    pop        edx
 005A5EC6    pop        ecx
 005A5EC7    pop        ecx
 005A5EC8    mov        dword ptr fs:[eax],edx
 005A5ECB    push       5A5EE8
 005A5ED0    lea        eax,[ebp-18]
 005A5ED3    call       @LStrClr
 005A5ED8    lea        eax,[ebp-4]
 005A5EDB    call       @LStrClr
 005A5EE0    ret
<005A5EE1    jmp        @HandleFinally
<005A5EE6    jmp        005A5ED0
 005A5EE8    fld        qword ptr [ebp-10]
 005A5EEB    mov        esp,ebp
 005A5EED    pop        ebp
 005A5EEE    ret        8
*}
//end;

//005A5EF4
//function sub_005A5EF4(?:TRaveStackList):Boolean;
//begin
{*
 005A5EF4    cmp        dword ptr [eax+8],0; TRaveStackList.FCount:Integer
 005A5EF8    sete       al
 005A5EFB    ret
*}
//end;

//005A5EFC
//function sub_005A5EFC(?:TRaveStackList):?;
//begin
{*
 005A5EFC    mov        edx,dword ptr [eax+8]; TRaveStackList.FCount:Integer
 005A5EFF    test       edx,edx
>005A5F01    jne        005A5F06
 005A5F03    xor        eax,eax
 005A5F05    ret
 005A5F06    dec        edx
 005A5F07    call       TList.Get
 005A5F0C    ret
*}
//end;

//005A5F10
procedure sub_005A5F10;
begin
{*
 005A5F10    call       TList.Add
 005A5F15    ret
*}
end;

//005A5F18
//function sub_005A5F18(?:TRaveStackList):?;
//begin
{*
 005A5F18    push       ebx
 005A5F19    push       esi
 005A5F1A    mov        ebx,eax
 005A5F1C    mov        eax,ebx
 005A5F1E    call       005A5EFC
 005A5F23    mov        esi,eax
 005A5F25    mov        eax,dword ptr [ebx+8]; TRaveStackList.FCount:Integer
 005A5F28    test       eax,eax
>005A5F2A    jle        005A5F36
 005A5F2C    mov        edx,eax
 005A5F2E    dec        edx
 005A5F2F    mov        eax,ebx
 005A5F31    call       TList.Delete
 005A5F36    mov        eax,esi
 005A5F38    pop        esi
 005A5F39    pop        ebx
 005A5F3A    ret
*}
//end;

//005A5F3C
//constructor TStreamHelper.Create(?:TStreamHelper; _Dv__:Boolean);
//begin
{*
 005A5F3C    push       ebx
 005A5F3D    push       esi
 005A5F3E    push       edi
 005A5F3F    test       dl,dl
>005A5F41    je         005A5F4B
 005A5F43    add        esp,0FFFFFFF0
 005A5F46    call       @ClassCreate
 005A5F4B    mov        esi,ecx
 005A5F4D    mov        ebx,edx
 005A5F4F    mov        edi,eax
 005A5F51    xor        edx,edx
 005A5F53    mov        eax,edi
 005A5F55    call       TObject.Create
 005A5F5A    mov        dword ptr [edi+4],esi; TStreamHelper.?f4:TMemoryStream
 005A5F5D    mov        dword ptr [edi+0C],0FFFFFFFF; TStreamHelper.?fC:dword
 005A5F64    mov        dl,1
 005A5F66    mov        eax,[005A53E8]; TRaveStackList
 005A5F6B    call       TObject.Create; TRaveStackList.Create
 005A5F70    mov        dword ptr [edi+10],eax; TStreamHelper.?f10:TRaveStackList
 005A5F73    mov        al,[00617190]
 005A5F78    mov        byte ptr [edi+8],al; TStreamHelper.?f8:byte
 005A5F7B    mov        edx,esi
 005A5F7D    mov        eax,edi
 005A5F7F    call       005A6004
 005A5F84    mov        eax,edi
 005A5F86    test       bl,bl
>005A5F88    je         005A5F99
 005A5F8A    call       @AfterConstruction
 005A5F8F    pop        dword ptr fs:[0]
 005A5F96    add        esp,0C
 005A5F99    mov        eax,edi
 005A5F9B    pop        edi
 005A5F9C    pop        esi
 005A5F9D    pop        ebx
 005A5F9E    ret
*}
//end;

//005A5FA0
destructor TStreamHelper.Destroy;
begin
{*
 005A5FA0    push       ebx
 005A5FA1    push       esi
 005A5FA2    call       @BeforeDestruction
 005A5FA7    mov        ebx,edx
 005A5FA9    mov        esi,eax
>005A5FAB    jmp        005A5FB9
 005A5FAD    mov        eax,esi
 005A5FAF    call       005A5FE4
 005A5FB4    call       TObject.Free
 005A5FB9    mov        eax,dword ptr [esi+10]; TStreamHelper.?f10:TRaveStackList
 005A5FBC    cmp        dword ptr [eax+8],1; TRaveStackList.FCount:Integer
<005A5FC0    jg         005A5FAD
 005A5FC2    lea        eax,[esi+10]; TStreamHelper.?f10:TRaveStackList
 005A5FC5    call       FreeAndNil
 005A5FCA    mov        edx,ebx
 005A5FCC    and        dl,0FC
 005A5FCF    mov        eax,esi
 005A5FD1    call       TObject.Destroy
 005A5FD6    test       bl,bl
>005A5FD8    jle        005A5FE1
 005A5FDA    mov        eax,esi
 005A5FDC    call       @ClassDestroy
 005A5FE1    pop        esi
 005A5FE2    pop        ebx
 005A5FE3    ret
*}
end;

//005A5FE4
//function sub_005A5FE4(?:TStreamHelper):?;
//begin
{*
 005A5FE4    push       ebx
 005A5FE5    push       esi
 005A5FE6    mov        ebx,eax
 005A5FE8    mov        eax,dword ptr [ebx+10]; TStreamHelper.?f10:TRaveStackList
 005A5FEB    call       005A5F18
 005A5FF0    mov        esi,eax
 005A5FF2    mov        eax,dword ptr [ebx+10]; TStreamHelper.?f10:TRaveStackList
 005A5FF5    call       005A5EFC
 005A5FFA    mov        dword ptr [ebx+4],eax; TStreamHelper.?f4:TMemoryStream
 005A5FFD    mov        eax,esi
 005A5FFF    pop        esi
 005A6000    pop        ebx
 005A6001    ret
*}
//end;

//005A6004
//procedure sub_005A6004(?:TStreamHelper; ?:TMemoryStream);
//begin
{*
 005A6004    push       ebx
 005A6005    push       esi
 005A6006    mov        esi,edx
 005A6008    mov        ebx,eax
 005A600A    mov        edx,esi
 005A600C    mov        eax,dword ptr [ebx+10]; TStreamHelper.?f10:TRaveStackList
 005A600F    call       005A5F10
 005A6014    mov        dword ptr [ebx+4],esi; TStreamHelper.?f4:TMemoryStream
 005A6017    pop        esi
 005A6018    pop        ebx
 005A6019    ret
*}
//end;

//005A601C
//procedure sub_005A601C(?:TStreamHelper);
//begin
{*
 005A601C    push       ebx
 005A601D    mov        ebx,eax
 005A601F    mov        eax,dword ptr [ebx+4]
 005A6022    call       TStream.GetPosition
 005A6027    mov        dword ptr [ebx+0C],eax
 005A602A    pop        ebx
 005A602B    ret
*}
//end;

//005A602C
//procedure sub_005A602C(?:TStreamHelper);
//begin
{*
 005A602C    mov        ecx,eax
 005A602E    mov        eax,dword ptr [ecx+0C]
 005A6031    cdq
 005A6032    push       edx
 005A6033    push       eax
 005A6034    mov        eax,dword ptr [ecx+4]
 005A6037    call       TStream.SetPosition
 005A603C    ret
*}
//end;

//005A6040
//procedure sub_005A6040(?:dword; ?:Integer);
//begin
{*
 005A6040    push       ecx
 005A6041    mov        byte ptr [esp],dl
 005A6044    mov        edx,esp
 005A6046    mov        ecx,1
 005A604B    call       005A618C
 005A6050    pop        edx
 005A6051    ret
*}
//end;

//005A6054
//procedure sub_005A6054(?:dword; ?:AnsiString);
//begin
{*
 005A6054    push       ebp
 005A6055    mov        ebp,esp
 005A6057    push       ecx
 005A6058    push       ebx
 005A6059    mov        dword ptr [ebp-4],edx
 005A605C    mov        ebx,eax
 005A605E    mov        eax,dword ptr [ebp-4]
 005A6061    call       @LStrAddRef
 005A6066    xor        eax,eax
 005A6068    push       ebp
 005A6069    push       5A60BC
 005A606E    push       dword ptr fs:[eax]
 005A6071    mov        dword ptr fs:[eax],esp
 005A6074    mov        eax,dword ptr [ebp-4]
 005A6077    call       @LStrLen
 005A607C    mov        edx,eax
 005A607E    mov        eax,ebx
 005A6080    call       005A60C8
 005A6085    cmp        dword ptr [ebp-4],0
>005A6089    je         005A60A6
 005A608B    mov        eax,dword ptr [ebp-4]
 005A608E    call       @LStrLen
 005A6093    push       eax
 005A6094    lea        eax,[ebp-4]
 005A6097    call       @UniqueStringA
 005A609C    mov        edx,eax
 005A609E    mov        eax,ebx
 005A60A0    pop        ecx
 005A60A1    call       005A618C
 005A60A6    xor        eax,eax
 005A60A8    pop        edx
 005A60A9    pop        ecx
 005A60AA    pop        ecx
 005A60AB    mov        dword ptr fs:[eax],edx
 005A60AE    push       5A60C3
 005A60B3    lea        eax,[ebp-4]
 005A60B6    call       @LStrClr
 005A60BB    ret
<005A60BC    jmp        @HandleFinally
<005A60C1    jmp        005A60B3
 005A60C3    pop        ebx
 005A60C4    pop        ecx
 005A60C5    pop        ebp
 005A60C6    ret
*}
//end;

//005A60C8
//procedure sub_005A60C8(?:dword; ?:Integer);
//begin
{*
 005A60C8    push       ebp
 005A60C9    mov        ebp,esp
 005A60CB    push       ecx
 005A60CC    push       ebx
 005A60CD    mov        dword ptr [ebp-4],edx
 005A60D0    mov        ebx,eax
 005A60D2    cmp        dword ptr [ebp-4],80
>005A60D9    jge        005A60EA
 005A60DB    mov        dl,byte ptr [ebp-4]
 005A60DE    mov        eax,ebx
 005A60E0    call       005A6040
>005A60E5    jmp        005A6185
 005A60EA    cmp        dword ptr [ebp-4],4000
>005A60F1    jge        005A6113
 005A60F3    mov        edx,dword ptr [ebp-4]
 005A60F6    shr        dx,8
 005A60FA    add        dl,80
 005A60FD    mov        eax,ebx
 005A60FF    call       005A6040
 005A6104    mov        dl,byte ptr [ebp-4]
 005A6107    and        dl,0FF
 005A610A    mov        eax,ebx
 005A610C    call       005A6040
>005A6111    jmp        005A6185
 005A6113    cmp        dword ptr [ebp-4],200000
>005A611A    jge        005A614A
 005A611C    mov        dl,byte ptr [ebp-2]
 005A611F    and        dl,0FF
 005A6122    add        dl,0C0
 005A6125    mov        eax,ebx
 005A6127    call       005A6040
 005A612C    mov        dx,word ptr [ebp-4]
 005A6130    shr        dx,8
 005A6134    mov        eax,ebx
 005A6136    call       005A6040
 005A613B    mov        dl,byte ptr [ebp-4]
 005A613E    and        dl,0FF
 005A6141    mov        eax,ebx
 005A6143    call       005A6040
>005A6148    jmp        005A6185
 005A614A    mov        dx,word ptr [ebp-2]
 005A614E    shr        dx,8
 005A6152    add        dl,0E0
 005A6155    mov        eax,ebx
 005A6157    call       005A6040
 005A615C    mov        dl,byte ptr [ebp-2]
 005A615F    and        dl,0FF
 005A6162    mov        eax,ebx
 005A6164    call       005A6040
 005A6169    mov        dx,word ptr [ebp-4]
 005A616D    shr        dx,8
 005A6171    mov        eax,ebx
 005A6173    call       005A6040
 005A6178    mov        dl,byte ptr [ebp-4]
 005A617B    and        dl,0FF
 005A617E    mov        eax,ebx
 005A6180    call       005A6040
 005A6185    pop        ebx
 005A6186    pop        ecx
 005A6187    pop        ebp
 005A6188    ret
*}
//end;

//005A618C
//procedure sub_005A618C(?:dword);
//begin
{*
 005A618C    mov        eax,dword ptr [eax+4]
 005A618F    call       TStream.WriteBuffer
 005A6194    ret
*}
//end;

//005A6198
//function sub_005A6198:?;
//begin
{*
 005A6198    push       ecx
 005A6199    mov        edx,esp
 005A619B    mov        ecx,1
 005A61A0    call       005A62A0
 005A61A5    mov        al,byte ptr [esp]
 005A61A8    pop        edx
 005A61A9    ret
*}
//end;

//005A61AC
//procedure sub_005A61AC(?:dword; ?:AnsiString);
//begin
{*
 005A61AC    push       ebx
 005A61AD    push       esi
 005A61AE    push       edi
 005A61AF    mov        edi,edx
 005A61B1    mov        esi,eax
 005A61B3    mov        eax,esi
 005A61B5    call       005A61E0
 005A61BA    mov        ebx,eax
 005A61BC    mov        eax,edi
 005A61BE    mov        edx,ebx
 005A61C0    call       @LStrSetLength
 005A61C5    test       ebx,ebx
>005A61C7    jle        005A61DB
 005A61C9    mov        eax,edi
 005A61CB    call       @UniqueStringA
 005A61D0    mov        edx,eax
 005A61D2    mov        ecx,ebx
 005A61D4    mov        eax,esi
 005A61D6    call       005A62A0
 005A61DB    pop        edi
 005A61DC    pop        esi
 005A61DD    pop        ebx
 005A61DE    ret
*}
//end;

//005A61E0
//function sub_005A61E0(?:dword):?;
//begin
{*
 005A61E0    push       ebx
 005A61E1    push       esi
 005A61E2    push       ecx
 005A61E3    mov        esi,eax
 005A61E5    mov        eax,esi
 005A61E7    call       005A6198
 005A61EC    mov        ebx,eax
 005A61EE    cmp        bl,80
>005A61F1    jae        005A61FC
 005A61F3    xor        eax,eax
 005A61F5    mov        al,bl
>005A61F7    jmp        005A6299
 005A61FC    cmp        bl,0C0
>005A61FF    jae        005A621E
 005A6201    mov        eax,esi
 005A6203    call       005A6198
 005A6208    and        eax,0FF
 005A620D    xor        edx,edx
 005A620F    mov        dl,bl
 005A6211    sub        edx,80
 005A6217    shl        edx,8
 005A621A    add        eax,edx
>005A621C    jmp        005A6299
 005A621E    cmp        bl,0E0
>005A6221    jae        005A6254
 005A6223    mov        eax,esi
 005A6225    call       005A6198
 005A622A    mov        byte ptr [esp],al
 005A622D    mov        eax,esi
 005A622F    call       005A6198
 005A6234    and        eax,0FF
 005A6239    xor        edx,edx
 005A623B    mov        dl,bl
 005A623D    sub        edx,0C0
 005A6243    shl        edx,8
 005A6246    xor        ecx,ecx
 005A6248    mov        cl,byte ptr [esp]
 005A624B    add        edx,ecx
 005A624D    shl        edx,8
 005A6250    add        eax,edx
>005A6252    jmp        005A6299
 005A6254    mov        eax,esi
 005A6256    call       005A6198
 005A625B    mov        byte ptr [esp],al
 005A625E    mov        eax,esi
 005A6260    call       005A6198
 005A6265    mov        byte ptr [esp+1],al
 005A6269    mov        eax,esi
 005A626B    call       005A6198
 005A6270    and        eax,0FF
 005A6275    xor        edx,edx
 005A6277    mov        dl,bl
 005A6279    sub        edx,0E0
 005A627F    shl        edx,8
 005A6282    xor        ecx,ecx
 005A6284    mov        cl,byte ptr [esp]
 005A6287    add        edx,ecx
 005A6289    shl        edx,8
 005A628C    xor        ecx,ecx
 005A628E    mov        cl,byte ptr [esp+1]
 005A6292    add        edx,ecx
 005A6294    shl        edx,8
 005A6297    add        eax,edx
 005A6299    pop        edx
 005A629A    pop        esi
 005A629B    pop        ebx
 005A629C    ret
*}
//end;

//005A62A0
//procedure sub_005A62A0(?:dword);
//begin
{*
 005A62A0    mov        eax,dword ptr [eax+4]
 005A62A3    call       TStream.ReadBuffer
 005A62A8    ret
*}
//end;

//005A62AC
//function sub_005A62AC(?:?):?;
//begin
{*
 005A62AC    push       ebx
 005A62AD    push       esi
 005A62AE    push       ecx
 005A62AF    mov        ebx,eax
 005A62B1    mov        eax,dword ptr [ebx+4]
 005A62B4    call       TStream.GetPosition
 005A62B9    mov        esi,eax
 005A62BB    xor        eax,eax
 005A62BD    mov        dword ptr [esp],eax
 005A62C0    mov        edx,esp
 005A62C2    mov        ecx,4
 005A62C7    mov        eax,dword ptr [ebx+4]
 005A62CA    call       TStream.WriteBuffer
 005A62CF    mov        eax,esi
 005A62D1    pop        edx
 005A62D2    pop        esi
 005A62D3    pop        ebx
 005A62D4    ret
*}
//end;

//005A62D8
//procedure sub_005A62D8(?:?; ?:?);
//begin
{*
 005A62D8    push       ebx
 005A62D9    push       esi
 005A62DA    push       edi
 005A62DB    push       ecx
 005A62DC    mov        edi,edx
 005A62DE    mov        ebx,eax
 005A62E0    mov        eax,dword ptr [ebx+4]
 005A62E3    call       TStream.GetPosition
 005A62E8    mov        esi,eax
 005A62EA    lea        eax,[edi+4]
 005A62ED    mov        edx,esi
 005A62EF    sub        edx,eax
 005A62F1    mov        dword ptr [esp],edx
 005A62F4    mov        eax,edi
 005A62F6    cdq
 005A62F7    push       edx
 005A62F8    push       eax
 005A62F9    mov        eax,dword ptr [ebx+4]
 005A62FC    call       TStream.SetPosition
 005A6301    mov        edx,esp
 005A6303    mov        ecx,4
 005A6308    mov        eax,dword ptr [ebx+4]
 005A630B    call       TStream.WriteBuffer
 005A6310    mov        eax,esi
 005A6312    cdq
 005A6313    push       edx
 005A6314    push       eax
 005A6315    mov        eax,dword ptr [ebx+4]
 005A6318    call       TStream.SetPosition
 005A631D    pop        edx
 005A631E    pop        edi
 005A631F    pop        esi
 005A6320    pop        ebx
 005A6321    ret
*}
//end;

//005A6324
//procedure sub_005A6324(?:?);
//begin
{*
 005A6324    push       ebx
 005A6325    mov        ebx,eax
 005A6327    mov        dl,1
 005A6329    mov        eax,[0041CBF8]; TMemoryStream
 005A632E    call       TObject.Create; TMemoryStream.Create
 005A6333    mov        edx,eax
 005A6335    mov        eax,ebx
 005A6337    call       005A6004
 005A633C    pop        ebx
 005A633D    ret
*}
//end;

//005A6340
//procedure sub_005A6340(?:?);
//begin
{*
 005A6340    push       ebx
 005A6341    push       esi
 005A6342    push       edi
 005A6343    mov        ebx,eax
 005A6345    mov        eax,ebx
 005A6347    call       005A5FE4
 005A634C    mov        esi,eax
 005A634E    mov        dl,byte ptr [ebx+8]
 005A6351    mov        eax,ebx
 005A6353    call       005A6040
 005A6358    mov        eax,ebx
 005A635A    call       005A62AC
 005A635F    mov        edi,eax
 005A6361    push       0
 005A6363    push       0
 005A6365    mov        eax,esi
 005A6367    call       TStream.SetPosition
 005A636C    mov        ecx,dword ptr [ebx+4]
 005A636F    mov        edx,esi
 005A6371    mov        al,byte ptr [ebx+8]
 005A6374    call       dword ptr ds:[617194]
 005A637A    mov        eax,esi
 005A637C    call       TObject.Free
 005A6381    mov        edx,edi
 005A6383    mov        eax,ebx
 005A6385    call       005A62D8
 005A638A    pop        edi
 005A638B    pop        esi
 005A638C    pop        ebx
 005A638D    ret
*}
//end;

//005A6390
//procedure sub_005A6390(?:?);
//begin
{*
 005A6390    push       ebx
 005A6391    push       esi
 005A6392    push       edi
 005A6393    push       ecx
 005A6394    mov        edi,eax
 005A6396    mov        eax,edi
 005A6398    call       005A6198
 005A639D    mov        ebx,eax
 005A639F    mov        edx,esp
 005A63A1    mov        ecx,4
 005A63A6    mov        eax,dword ptr [edi+4]
 005A63A9    call       TStream.ReadBuffer
 005A63AE    mov        dl,1
 005A63B0    mov        eax,[0041CBF8]; TMemoryStream
 005A63B5    call       TObject.Create; TMemoryStream.Create
 005A63BA    mov        esi,eax
 005A63BC    mov        eax,dword ptr [esp]
 005A63BF    cdq
 005A63C0    push       edx
 005A63C1    push       eax
 005A63C2    mov        edx,dword ptr [edi+4]
 005A63C5    mov        eax,esi
 005A63C7    call       TStream.CopyFrom
 005A63CC    test       bl,bl
>005A63CE    jne        005A63DB
 005A63D0    mov        edx,esi
 005A63D2    mov        eax,edi
 005A63D4    call       005A6004
>005A63D9    jmp        005A640F
 005A63DB    mov        dl,1
 005A63DD    mov        eax,[0041CBF8]; TMemoryStream
 005A63E2    call       TObject.Create; TMemoryStream.Create
 005A63E7    mov        edx,eax
 005A63E9    mov        eax,edi
 005A63EB    call       005A6004
 005A63F0    push       0
 005A63F2    push       0
 005A63F4    mov        eax,esi
 005A63F6    call       TStream.SetPosition
 005A63FB    mov        ecx,dword ptr [edi+4]
 005A63FE    mov        edx,esi
 005A6400    mov        eax,ebx
 005A6402    call       dword ptr ds:[617198]
 005A6408    mov        eax,esi
 005A640A    call       TObject.Free
 005A640F    push       0
 005A6411    push       0
 005A6413    mov        eax,dword ptr [edi+4]
 005A6416    call       TStream.SetPosition
 005A641B    pop        edx
 005A641C    pop        edi
 005A641D    pop        esi
 005A641E    pop        ebx
 005A641F    ret
*}
//end;

//005A6420
procedure sub_005A6420;
begin
{*
 005A6420    call       005A5FE4
 005A6425    call       TObject.Free
 005A642A    ret
*}
end;

//005A642C
//function sub_005A642C(?:?):?;
//begin
{*
 005A642C    push       ebx
 005A642D    mov        ebx,eax
 005A642F    mov        eax,dword ptr [ebx+4]
 005A6432    mov        edx,dword ptr [eax]
 005A6434    call       dword ptr [edx]
 005A6436    push       edx
 005A6437    push       eax
 005A6438    mov        eax,dword ptr [ebx+4]
 005A643B    call       TStream.GetPosition
 005A6440    cmp        edx,dword ptr [esp+4]
>005A6444    jne        005A644E
 005A6446    cmp        eax,dword ptr [esp]
 005A6449    setae      al
>005A644C    jmp        005A6451
 005A644E    setge      al
 005A6451    add        esp,8
 005A6454    pop        ebx
 005A6455    ret
*}
//end;

//005A6458
//procedure sub_005A6458(?:?; ?:?);
//begin
{*
 005A6458    push       ebx
 005A6459    push       esi
 005A645A    mov        esi,edx
 005A645C    mov        ebx,eax
 005A645E    movzx      ecx,si
 005A6461    mov        edx,ebx
 005A6463    mov        eax,[0061F87C]; gvar_0061F87C
 005A6468    mov        ebx,dword ptr [eax]
 005A646A    call       dword ptr [ebx+0C]
 005A646D    pop        esi
 005A646E    pop        ebx
 005A646F    ret
*}
//end;

//005A6470
//procedure sub_005A6470(?:?; ?:?);
//begin
{*
 005A6470    push       ebx
 005A6471    push       esi
 005A6472    mov        esi,edx
 005A6474    mov        ebx,eax
 005A6476    movzx      ecx,si
 005A6479    mov        edx,ebx
 005A647B    mov        eax,[0061F880]; gvar_0061F880
 005A6480    mov        ebx,dword ptr [eax]
 005A6482    call       dword ptr [ebx+10]
 005A6485    pop        esi
 005A6486    pop        ebx
 005A6487    ret
*}
//end;

//005A6488
//procedure sub_005A6488(?:?; ?:?; ?:?);
//begin
{*
 005A6488    push       ebp
 005A6489    mov        ebp,esp
 005A648B    add        esp,0FFFFFFF0
 005A648E    push       ebx
 005A648F    push       esi
 005A6490    push       edi
 005A6491    xor        ebx,ebx
 005A6493    mov        dword ptr [ebp-4],ebx
 005A6496    mov        dword ptr [ebp-8],ebx
 005A6499    mov        edi,ecx
 005A649B    mov        esi,edx
 005A649D    mov        ebx,eax
 005A649F    xor        eax,eax
 005A64A1    push       ebp
 005A64A2    push       5A6550
 005A64A7    push       dword ptr fs:[eax]
 005A64AA    mov        dword ptr fs:[eax],esp
 005A64AD    mov        eax,ebx
 005A64AF    sub        al,1
>005A64B1    jb         005A64B9
 005A64B3    dec        al
>005A64B5    je         005A64DE
>005A64B7    jmp        005A64FF
 005A64B9    mov        eax,esi
 005A64BB    mov        edx,dword ptr [eax]
 005A64BD    call       dword ptr [edx]
 005A64BF    push       edx
 005A64C0    push       eax
 005A64C1    mov        eax,esi
 005A64C3    call       TStream.GetPosition
 005A64C8    sub        dword ptr [esp],eax
 005A64CB    sbb        dword ptr [esp+4],edx
 005A64CF    pop        eax
 005A64D0    pop        edx
 005A64D1    push       edx
 005A64D2    push       eax
 005A64D3    mov        edx,esi
 005A64D5    mov        eax,edi
 005A64D7    call       TStream.CopyFrom
>005A64DC    jmp        005A6535
 005A64DE    mov        dword ptr ds:[61F87C],esi; gvar_0061F87C
 005A64E4    mov        dword ptr ds:[61F880],edi; gvar_0061F880
 005A64EA    push       5A6470; sub_005A6470
 005A64EF    mov        ecx,5A6458; sub_005A6458
 005A64F4    mov        dl,0D
 005A64F6    mov        al,8
 005A64F8    call       00599F5C
>005A64FD    jmp        005A6535
 005A64FF    lea        eax,[ebp-8]
 005A6502    push       eax
 005A6503    xor        eax,eax
 005A6505    mov        al,bl
 005A6507    mov        dword ptr [ebp-10],eax
 005A650A    mov        byte ptr [ebp-0C],0
 005A650E    lea        edx,[ebp-10]
 005A6511    xor        ecx,ecx
 005A6513    mov        eax,5A6568; 'Unknown compression method %s'
 005A6518    call       Format
 005A651D    mov        eax,dword ptr [ebp-8]
 005A6520    mov        ebx,dword ptr ds:[61B830]
 005A6526    mov        ebx,dword ptr [ebx]
 005A6528    lea        edx,[ebp-4]
 005A652B    call       ebx
 005A652D    mov        eax,dword ptr [ebp-4]
 005A6530    call       005998CC
 005A6535    xor        eax,eax
 005A6537    pop        edx
 005A6538    pop        ecx
 005A6539    pop        ecx
 005A653A    mov        dword ptr fs:[eax],edx
 005A653D    push       5A6557
 005A6542    lea        eax,[ebp-8]
 005A6545    mov        edx,2
 005A654A    call       @LStrArrayClr
 005A654F    ret
<005A6550    jmp        @HandleFinally
<005A6555    jmp        005A6542
 005A6557    pop        edi
 005A6558    pop        esi
 005A6559    pop        ebx
 005A655A    mov        esp,ebp
 005A655C    pop        ebp
 005A655D    ret
*}
//end;

//005A6588
//procedure sub_005A6588(?:?; ?:?; ?:?);
//begin
{*
 005A6588    push       ebp
 005A6589    mov        ebp,esp
 005A658B    add        esp,0FFFFFFF0
 005A658E    push       ebx
 005A658F    push       esi
 005A6590    push       edi
 005A6591    xor        ebx,ebx
 005A6593    mov        dword ptr [ebp-4],ebx
 005A6596    mov        dword ptr [ebp-8],ebx
 005A6599    mov        edi,ecx
 005A659B    mov        esi,edx
 005A659D    mov        ebx,eax
 005A659F    xor        eax,eax
 005A65A1    push       ebp
 005A65A2    push       5A6650
 005A65A7    push       dword ptr fs:[eax]
 005A65AA    mov        dword ptr fs:[eax],esp
 005A65AD    mov        eax,ebx
 005A65AF    sub        al,1
>005A65B1    jb         005A65B9
 005A65B3    dec        al
>005A65B5    je         005A65DE
>005A65B7    jmp        005A65FF
 005A65B9    mov        eax,esi
 005A65BB    mov        edx,dword ptr [eax]
 005A65BD    call       dword ptr [edx]
 005A65BF    push       edx
 005A65C0    push       eax
 005A65C1    mov        eax,esi
 005A65C3    call       TStream.GetPosition
 005A65C8    sub        dword ptr [esp],eax
 005A65CB    sbb        dword ptr [esp+4],edx
 005A65CF    pop        eax
 005A65D0    pop        edx
 005A65D1    push       edx
 005A65D2    push       eax
 005A65D3    mov        edx,esi
 005A65D5    mov        eax,edi
 005A65D7    call       TStream.CopyFrom
>005A65DC    jmp        005A6635
 005A65DE    mov        dword ptr ds:[61F87C],esi; gvar_0061F87C
 005A65E4    mov        dword ptr ds:[61F880],edi; gvar_0061F880
 005A65EA    push       5A6470; sub_005A6470
 005A65EF    mov        ecx,5A6458; sub_005A6458
 005A65F4    mov        dl,0D
 005A65F6    mov        al,8
 005A65F8    call       0059A238
>005A65FD    jmp        005A6635
 005A65FF    lea        eax,[ebp-8]
 005A6602    push       eax
 005A6603    xor        eax,eax
 005A6605    mov        al,bl
 005A6607    mov        dword ptr [ebp-10],eax
 005A660A    mov        byte ptr [ebp-0C],0
 005A660E    lea        edx,[ebp-10]
 005A6611    xor        ecx,ecx
 005A6613    mov        eax,5A6668; 'Unknown compression method %s'
 005A6618    call       Format
 005A661D    mov        eax,dword ptr [ebp-8]
 005A6620    mov        ebx,dword ptr ds:[61B830]
 005A6626    mov        ebx,dword ptr [ebx]
 005A6628    lea        edx,[ebp-4]
 005A662B    call       ebx
 005A662D    mov        eax,dword ptr [ebp-4]
 005A6630    call       005998CC
 005A6635    xor        eax,eax
 005A6637    pop        edx
 005A6638    pop        ecx
 005A6639    pop        ecx
 005A663A    mov        dword ptr fs:[eax],edx
 005A663D    push       5A6657
 005A6642    lea        eax,[ebp-8]
 005A6645    mov        edx,2
 005A664A    call       @LStrArrayClr
 005A664F    ret
<005A6650    jmp        @HandleFinally
<005A6655    jmp        005A6642
 005A6657    pop        edi
 005A6658    pop        esi
 005A6659    pop        ebx
 005A665A    mov        esp,ebp
 005A665C    pop        ebp
 005A665D    ret
*}
//end;

Initialization
//005A66B8
{*
 005A66B8    sub        dword ptr ds:[61F878],1
>005A66BF    jae        005A66D5
 005A66C1    mov        dword ptr ds:[617194],5A6488
 005A66CB    mov        dword ptr ds:[617198],5A6588
 005A66D5    ret
*}
Finalization
end.