{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit117;

interface

uses
  Classes, Windows, Graphics, _Unit114, _Unit115, RvClass;

type
  TScopeManager = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:dword;//fC
    f10:TTypeManager;//f10
    f14:TIDManager;//f14
    destructor Destroy; virtual;
    //constructor Create(?:TScopeManager; _Dv__:Boolean; ?:?);
  end;
  TModuleTypeHelper = class(TTypeHelper)
  public
    f4:dword;//f4
    //procedure sub_005C6C00(?:?; ?:?); virtual;
    //procedure sub_005C6C2C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TModuleTypeHelper; _Dv__:Boolean);
  end;
  TRCPUModule = class(TRaveModule)
  public
    f8:TList;//f8
    fC:TStringList;//fC
    f10:TStringList;//f10
    f14:word;//f14
    f16:word;//f16
    f18:?Double;//f18
    f20:TScopeManager;//f20
    f24:TModuleTypeHelper;//f24
    f28:Pointer;//f28
    f2C:dword;//f2C
    f30:Pointer;//f30
    f34:dword;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:TMemoryStream;//f48
    f4C:TStringList;//f4C
    f50:TList;//f50
    f54:dword;//f54
    f58:dword;//f58
    f5C:dword;//f5C
    destructor Destroy; virtual;
    procedure sub_005C72BC; virtual;
    //constructor sub_005C6D40(?:?; ?:?); virtual;
    //constructor sub_005C7008(?:?); virtual;
    //procedure sub_005C7448(?:?); virtual;
    //procedure sub_005C8D94(?:?); virtual;
    //procedure sub_005C85BC(?:?; ?:?); virtual;
    //procedure sub_005C863C(?:?; ?:?); virtual;
    //procedure sub_005C86A8(?:?; ?:?); virtual;
    //function sub_005C8718(?:?):?; virtual;
    //procedure sub_005C8788(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005C87FC(?:?); virtual;
    //procedure sub_005C73A8(?:?; ?:?); virtual;
    //constructor Create(?:TRCPUModule; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005C66D4
//procedure sub_005C66D4(?:?);
//begin
{*
 005C66D4    push       ebx
 005C66D5    push       esi
 005C66D6    push       edi
 005C66D7    push       ebp
 005C66D8    add        esp,0FFFFFFF8
 005C66DB    mov        dword ptr [esp],eax
 005C66DE    mov        eax,dword ptr [esp]
 005C66E1    mov        eax,dword ptr [eax+74]
 005C66E4    mov        edx,dword ptr ds:[5C6638]; TRCPUModule
 005C66EA    call       @AsClass
 005C66EF    mov        edi,eax
 005C66F1    test       edi,edi
>005C66F3    je         005C6772
 005C66F5    mov        eax,edi
 005C66F7    call       005C73DC
 005C66FC    xor        ecx,ecx
 005C66FE    mov        edx,dword ptr [edi+2C]; TRCPUModule.?f2C:dword
 005C6701    call       @FillChar
 005C6706    mov        eax,dword ptr [esp]
 005C6709    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005C670F    call       @IsClass
 005C6714    test       al,al
>005C6716    je         005C6728
 005C6718    mov        eax,dword ptr [esp]
 005C671B    mov        edx,dword ptr [eax+8]
 005C671E    mov        ecx,dword ptr [esp]
 005C6721    mov        eax,edi
 005C6723    mov        ebx,dword ptr [eax]
 005C6725    call       dword ptr [ebx+1C]; TRCPUModule.sub_005C86A8
 005C6728    mov        eax,dword ptr [esp]
 005C672B    call       TComponent.GetComponentCount
 005C6730    mov        ebp,eax
 005C6732    dec        ebp
 005C6733    test       ebp,ebp
>005C6735    jl         005C6772
 005C6737    inc        ebp
 005C6738    mov        dword ptr [esp+4],0
 005C6740    mov        edx,dword ptr [esp+4]
 005C6744    mov        eax,dword ptr [esp]
 005C6747    call       TComponent.GetComponent
 005C674C    mov        edx,dword ptr ds:[5A6884]; TRaveComponent
 005C6752    call       @AsClass
 005C6757    mov        esi,eax
 005C6759    mov        dword ptr ds:[61F8D0],esi; gvar_0061F8D0:TRaveComponent
 005C675F    mov        ecx,esi
 005C6761    mov        edx,dword ptr [esi+8]; TRaveComponent.?f8:TComponentName
 005C6764    mov        eax,edi
 005C6766    mov        ebx,dword ptr [eax]
 005C6768    call       dword ptr [ebx+1C]; TRCPUModule.sub_005C86A8
 005C676B    inc        dword ptr [esp+4]
 005C676F    dec        ebp
<005C6770    jne        005C6740
 005C6772    pop        ecx
 005C6773    pop        edx
 005C6774    pop        ebp
 005C6775    pop        edi
 005C6776    pop        esi
 005C6777    pop        ebx
 005C6778    ret
*}
//end;

//005C677C
//function sub_005C677C(?:AnsiString):?;
//begin
{*
 005C677C    push       ebp
 005C677D    mov        ebp,esp
 005C677F    add        esp,0FFFFFFF8
 005C6782    push       ebx
 005C6783    push       esi
 005C6784    push       edi
 005C6785    xor        edx,edx
 005C6787    mov        dword ptr [ebp-8],edx
 005C678A    mov        dword ptr [ebp-4],eax
 005C678D    mov        eax,dword ptr [ebp-4]
 005C6790    call       @LStrAddRef
 005C6795    xor        eax,eax
 005C6797    push       ebp
 005C6798    push       5C6812
 005C679D    push       dword ptr fs:[eax]
 005C67A0    mov        dword ptr fs:[eax],esp
 005C67A3    xor        edi,edi
 005C67A5    cmp        dword ptr ds:[6172D4],0
>005C67AC    je         005C67F7
 005C67AE    mov        eax,[006172D4]
 005C67B3    mov        esi,dword ptr [eax+8]
 005C67B6    dec        esi
 005C67B7    test       esi,esi
>005C67B9    jl         005C67F7
 005C67BB    inc        esi
 005C67BC    xor        ebx,ebx
 005C67BE    mov        edx,ebx
 005C67C0    mov        eax,[006172D4]
 005C67C5    call       TList.Get
 005C67CA    lea        edx,[ebp-8]
 005C67CD    call       dword ptr [eax]
 005C67CF    mov        eax,dword ptr [ebp-8]
 005C67D2    mov        edx,dword ptr [ebp-4]
 005C67D5    call       AnsiCompareText
 005C67DA    test       eax,eax
>005C67DC    jne        005C67F3
 005C67DE    mov        edx,ebx
 005C67E0    mov        eax,[006172D4]
 005C67E5    call       TList.Get
 005C67EA    mov        dl,1
 005C67EC    call       dword ptr [eax+4]
 005C67EF    mov        edi,eax
>005C67F1    jmp        005C67F7
 005C67F3    inc        ebx
 005C67F4    dec        esi
<005C67F5    jne        005C67BE
 005C67F7    xor        eax,eax
 005C67F9    pop        edx
 005C67FA    pop        ecx
 005C67FB    pop        ecx
 005C67FC    mov        dword ptr fs:[eax],edx
 005C67FF    push       5C6819
 005C6804    lea        eax,[ebp-8]
 005C6807    mov        edx,2
 005C680C    call       @LStrArrayClr
 005C6811    ret
<005C6812    jmp        @HandleFinally
<005C6817    jmp        005C6804
 005C6819    mov        eax,edi
 005C681B    pop        edi
 005C681C    pop        esi
 005C681D    pop        ebx
 005C681E    pop        ecx
 005C681F    pop        ecx
 005C6820    pop        ebp
 005C6821    ret
*}
//end;

//005C6824
//procedure sub_005C6824(?:?);
//begin
{*
 005C6824    push       ebp
 005C6825    mov        ebp,esp
 005C6827    push       0
 005C6829    push       ebx
 005C682A    push       esi
 005C682B    push       edi
 005C682C    mov        edi,eax
 005C682E    xor        eax,eax
 005C6830    push       ebp
 005C6831    push       5C6891
 005C6836    push       dword ptr fs:[eax]
 005C6839    mov        dword ptr fs:[eax],esp
 005C683C    mov        eax,edi
 005C683E    mov        edx,dword ptr [eax]
 005C6840    call       dword ptr [edx+44]
 005C6843    cmp        dword ptr ds:[6172D4],0
>005C684A    je         005C687B
 005C684C    mov        eax,[006172D4]
 005C6851    mov        ebx,dword ptr [eax+8]
 005C6854    dec        ebx
 005C6855    test       ebx,ebx
>005C6857    jl         005C687B
 005C6859    inc        ebx
 005C685A    xor        esi,esi
 005C685C    mov        edx,esi
 005C685E    mov        eax,[006172D4]
 005C6863    call       TList.Get
 005C6868    lea        edx,[ebp-4]
 005C686B    call       dword ptr [eax]
 005C686D    mov        edx,dword ptr [ebp-4]
 005C6870    mov        eax,edi
 005C6872    mov        ecx,dword ptr [eax]
 005C6874    call       dword ptr [ecx+38]
 005C6877    inc        esi
 005C6878    dec        ebx
<005C6879    jne        005C685C
 005C687B    xor        eax,eax
 005C687D    pop        edx
 005C687E    pop        ecx
 005C687F    pop        ecx
 005C6880    mov        dword ptr fs:[eax],edx
 005C6883    push       5C6898
 005C6888    lea        eax,[ebp-4]
 005C688B    call       @LStrClr
 005C6890    ret
<005C6891    jmp        @HandleFinally
<005C6896    jmp        005C6888
 005C6898    pop        edi
 005C6899    pop        esi
 005C689A    pop        ebx
 005C689B    pop        ecx
 005C689C    pop        ebp
 005C689D    ret
*}
//end;

//005C68A0
//procedure sub_005C68A0(?:?);
//begin
{*
 005C68A0    push       ebp
 005C68A1    mov        ebp,esp
 005C68A3    add        esp,0FFFFFFEC
 005C68A6    push       ebx
 005C68A7    push       esi
 005C68A8    push       edi
 005C68A9    xor        edx,edx
 005C68AB    mov        dword ptr [ebp-14],edx
 005C68AE    mov        dword ptr [ebp-4],eax
 005C68B1    xor        eax,eax
 005C68B3    push       ebp
 005C68B4    push       5C69B6
 005C68B9    push       dword ptr fs:[eax]
 005C68BC    mov        dword ptr fs:[eax],esp
 005C68BF    mov        eax,5C69CC; 'Delphi'
 005C68C4    call       005C677C
 005C68C9    mov        dword ptr [ebp-0C],eax
 005C68CC    xor        edx,edx
 005C68CE    push       ebp
 005C68CF    push       5C6999
 005C68D4    push       dword ptr fs:[edx]
 005C68D7    mov        dword ptr fs:[edx],esp
 005C68DA    mov        dl,1
 005C68DC    mov        eax,[005C6638]; TRCPUModule
 005C68E1    call       TRCPUModule.Create; TRCPUModule.Create
 005C68E6    mov        ebx,eax
 005C68E8    mov        eax,dword ptr [ebp-4]
 005C68EB    mov        dword ptr [ebx+54],eax; TRCPUModule.?f54:dword
 005C68EE    mov        eax,ebx
 005C68F0    call       005C7924
 005C68F5    xor        edx,edx
 005C68F7    mov        eax,ebx
 005C68F9    call       005C851C
 005C68FE    mov        eax,dword ptr [ebx+4C]; TRCPUModule.?f4C:TStringList
 005C6901    mov        edx,dword ptr [eax]
 005C6903    call       dword ptr [edx+14]; TStringList.GetCount
 005C6906    dec        eax
 005C6907    test       eax,eax
>005C6909    jl         005C6960
 005C690B    inc        eax
 005C690C    mov        dword ptr [ebp-10],eax
 005C690F    xor        esi,esi
 005C6911    mov        eax,dword ptr [ebx+4C]; TRCPUModule.?f4C:TStringList
 005C6914    mov        edx,esi
 005C6916    mov        ecx,dword ptr [eax]
 005C6918    call       dword ptr [ecx+18]; TStringList.GetObject
 005C691B    mov        dword ptr [ebp-8],eax
 005C691E    lea        ecx,[ebp-14]
 005C6921    mov        eax,dword ptr [ebx+4C]; TRCPUModule.?f4C:TStringList
 005C6924    mov        edx,esi
 005C6926    mov        edi,dword ptr [eax]
 005C6928    call       dword ptr [edi+0C]; TStringList.Get
 005C692B    mov        edx,dword ptr [ebp-14]
 005C692E    mov        eax,ebx
 005C6930    call       005C8BA0
 005C6935    mov        edi,eax
 005C6937    mov        eax,edi
 005C6939    mov        edx,dword ptr ds:[5C5DC4]; TFuncID
 005C693F    call       @IsClass
 005C6944    test       al,al
>005C6946    je         005C6951
 005C6948    mov        eax,dword ptr [edi+1C]
 005C694B    mov        edx,dword ptr [ebp-8]
 005C694E    mov        dword ptr [edx+0C],eax
 005C6951    mov        eax,dword ptr [ebp-8]
 005C6954    mov        edx,dword ptr [ebp-4]
 005C6957    mov        dword ptr [eax+10],edx
 005C695A    inc        esi
 005C695B    dec        dword ptr [ebp-10]
<005C695E    jne        005C6911
 005C6960    mov        eax,dword ptr [ebp-4]
 005C6963    mov        eax,dword ptr [eax+74]
 005C6966    test       eax,eax
>005C6968    je         005C6979
 005C696A    call       TObject.Free
 005C696F    xor        edx,edx
 005C6971    mov        eax,dword ptr [ebp-4]
 005C6974    call       005AB33C
 005C6979    mov        edx,ebx
 005C697B    mov        eax,dword ptr [ebp-4]
 005C697E    call       005AB33C
 005C6983    xor        eax,eax
 005C6985    pop        edx
 005C6986    pop        ecx
 005C6987    pop        ecx
 005C6988    mov        dword ptr fs:[eax],edx
 005C698B    push       5C69A0
 005C6990    mov        eax,dword ptr [ebp-0C]
 005C6993    call       TObject.Free
 005C6998    ret
<005C6999    jmp        @HandleFinally
<005C699E    jmp        005C6990
 005C69A0    xor        eax,eax
 005C69A2    pop        edx
 005C69A3    pop        ecx
 005C69A4    pop        ecx
 005C69A5    mov        dword ptr fs:[eax],edx
 005C69A8    push       5C69BD
 005C69AD    lea        eax,[ebp-14]
 005C69B0    call       @LStrClr
 005C69B5    ret
<005C69B6    jmp        @HandleFinally
<005C69BB    jmp        005C69AD
 005C69BD    pop        edi
 005C69BE    pop        esi
 005C69BF    pop        ebx
 005C69C0    mov        esp,ebp
 005C69C2    pop        ebp
 005C69C3    ret
*}
//end;

//005C69D4
//constructor TScopeManager.Create(?:TScopeManager; _Dv__:Boolean; ?:?);
//begin
{*
 005C69D4    push       ebp
 005C69D5    mov        ebp,esp
 005C69D7    push       ebx
 005C69D8    push       esi
 005C69D9    push       edi
 005C69DA    test       dl,dl
>005C69DC    je         005C69E6
 005C69DE    add        esp,0FFFFFFF0
 005C69E1    call       @ClassCreate
 005C69E6    mov        esi,ecx
 005C69E8    mov        ebx,edx
 005C69EA    mov        edi,eax
 005C69EC    xor        edx,edx
 005C69EE    mov        eax,edi
 005C69F0    call       TObject.Create
 005C69F5    mov        eax,dword ptr [ebp+8]
 005C69F8    mov        dword ptr [edi+8],eax; TScopeManager.?f8:dword
 005C69FB    mov        dword ptr [edi+0C],esi; TScopeManager.?fC:dword
 005C69FE    mov        eax,dword ptr [edi+8]; TScopeManager.?f8:dword
 005C6A01    mov        dword ptr [eax+20],edi
 005C6A04    mov        eax,edi
 005C6A06    call       005C6BBC
 005C6A0B    mov        esi,dword ptr [edi+8]; TScopeManager.?f8:dword
 005C6A0E    mov        eax,dword ptr [esi+24]
 005C6A11    push       eax
 005C6A12    mov        ecx,esi
 005C6A14    mov        dl,1
 005C6A16    mov        eax,[005C24FC]; TTypeManager
 005C6A1B    call       TTypeManager.Create; TTypeManager.Create
 005C6A20    mov        dword ptr [edi+10],eax; TScopeManager.?f10:TTypeManager
 005C6A23    mov        eax,dword ptr [edi+8]; TScopeManager.?f8:dword
 005C6A26    mov        ecx,dword ptr [eax+24]
 005C6A29    mov        dl,1
 005C6A2B    mov        eax,[005C5EE8]; TIDManager
 005C6A30    call       TIDManager.Create; TIDManager.Create
 005C6A35    mov        dword ptr [edi+14],eax; TScopeManager.?f14:TIDManager
 005C6A38    mov        eax,edi
 005C6A3A    test       bl,bl
>005C6A3C    je         005C6A4D
 005C6A3E    call       @AfterConstruction
 005C6A43    pop        dword ptr fs:[0]
 005C6A4A    add        esp,0C
 005C6A4D    mov        eax,edi
 005C6A4F    pop        edi
 005C6A50    pop        esi
 005C6A51    pop        ebx
 005C6A52    pop        ebp
 005C6A53    ret        4
*}
//end;

//005C6A58
destructor TScopeManager.Destroy;
begin
{*
 005C6A58    push       ebx
 005C6A59    push       esi
 005C6A5A    call       @BeforeDestruction
 005C6A5F    mov        ebx,edx
 005C6A61    mov        esi,eax
 005C6A63    lea        eax,[esi+14]; TScopeManager.?f14:TIDManager
 005C6A66    call       FreeAndNil
 005C6A6B    lea        eax,[esi+10]; TScopeManager.?f10:TTypeManager
 005C6A6E    call       FreeAndNil
 005C6A73    mov        edx,ebx
 005C6A75    and        dl,0FC
 005C6A78    mov        eax,esi
 005C6A7A    call       TObject.Destroy
 005C6A7F    test       bl,bl
>005C6A81    jle        005C6A8A
 005C6A83    mov        eax,esi
 005C6A85    call       @ClassDestroy
 005C6A8A    pop        esi
 005C6A8B    pop        ebx
 005C6A8C    ret
*}
end;

//005C6A90
//procedure sub_005C6A90(?:TScopeManager; ?:TStreamHelper);
//begin
{*
 005C6A90    push       ebx
 005C6A91    push       esi
 005C6A92    mov        esi,edx
 005C6A94    mov        ebx,eax
 005C6A96    mov        edx,esi
 005C6A98    mov        eax,dword ptr [ebx+10]; TScopeManager.?f10:TTypeManager
 005C6A9B    call       005C36F8
 005C6AA0    mov        edx,esi
 005C6AA2    mov        eax,dword ptr [ebx+14]; TScopeManager.?f14:TIDManager
 005C6AA5    call       005C6398
 005C6AAA    pop        esi
 005C6AAB    pop        ebx
 005C6AAC    ret
*}
//end;

//005C6AB0
//procedure sub_005C6AB0(?:TScopeManager; ?:TStreamHelper);
//begin
{*
 005C6AB0    push       ebp
 005C6AB1    mov        ebp,esp
 005C6AB3    push       0
 005C6AB5    push       ebx
 005C6AB6    push       esi
 005C6AB7    push       edi
 005C6AB8    mov        esi,edx
 005C6ABA    mov        ebx,eax
 005C6ABC    xor        eax,eax
 005C6ABE    push       ebp
 005C6ABF    push       5C6B14
 005C6AC4    push       dword ptr fs:[eax]
 005C6AC7    mov        dword ptr fs:[eax],esp
 005C6ACA    cmp        dword ptr [ebx+0C],0; TScopeManager.?fC:dword
>005C6ACE    je         005C6AEA
 005C6AD0    mov        edi,dword ptr ds:[61B830]
 005C6AD6    mov        edi,dword ptr [edi]
 005C6AD8    lea        edx,[ebp-4]
 005C6ADB    mov        eax,5C6B2C; 'Cannot save a nested module state.'
 005C6AE0    call       edi
 005C6AE2    mov        eax,dword ptr [ebp-4]
 005C6AE5    call       005C5B78
 005C6AEA    mov        edx,esi
 005C6AEC    mov        eax,dword ptr [ebx+10]; TScopeManager.?f10:TTypeManager
 005C6AEF    call       005C3750
 005C6AF4    mov        edx,esi
 005C6AF6    mov        eax,dword ptr [ebx+14]; TScopeManager.?f14:TIDManager
 005C6AF9    call       005C63F0
 005C6AFE    xor        eax,eax
 005C6B00    pop        edx
 005C6B01    pop        ecx
 005C6B02    pop        ecx
 005C6B03    mov        dword ptr fs:[eax],edx
 005C6B06    push       5C6B1B
 005C6B0B    lea        eax,[ebp-4]
 005C6B0E    call       @LStrClr
 005C6B13    ret
<005C6B14    jmp        @HandleFinally
<005C6B19    jmp        005C6B0B
 005C6B1B    pop        edi
 005C6B1C    pop        esi
 005C6B1D    pop        ebx
 005C6B1E    pop        ecx
 005C6B1F    pop        ebp
 005C6B20    ret
*}
//end;

//005C6B50
//function sub_005C6B50(?:?; ?:AnsiString):?;
//begin
{*
 005C6B50    push       ebp
 005C6B51    mov        ebp,esp
 005C6B53    push       ecx
 005C6B54    push       ebx
 005C6B55    push       esi
 005C6B56    mov        dword ptr [ebp-4],edx
 005C6B59    mov        ebx,eax
 005C6B5B    mov        eax,dword ptr [ebp-4]
 005C6B5E    call       @LStrAddRef
 005C6B63    xor        eax,eax
 005C6B65    push       ebp
 005C6B66    push       5C6BAD
 005C6B6B    push       dword ptr fs:[eax]
 005C6B6E    mov        dword ptr fs:[eax],esp
 005C6B71    mov        edx,dword ptr [ebp-4]
 005C6B74    mov        eax,dword ptr [ebx+14]
 005C6B77    call       005C6494
 005C6B7C    mov        esi,eax
 005C6B7E    test       esi,esi
>005C6B80    jne        005C6B97
 005C6B82    mov        eax,dword ptr [ebx+0C]
 005C6B85    test       eax,eax
>005C6B87    je         005C6B95
 005C6B89    mov        edx,dword ptr [ebp-4]
 005C6B8C    call       005C6B50
 005C6B91    mov        esi,eax
>005C6B93    jmp        005C6B97
 005C6B95    xor        esi,esi
 005C6B97    xor        eax,eax
 005C6B99    pop        edx
 005C6B9A    pop        ecx
 005C6B9B    pop        ecx
 005C6B9C    mov        dword ptr fs:[eax],edx
 005C6B9F    push       5C6BB4
 005C6BA4    lea        eax,[ebp-4]
 005C6BA7    call       @LStrClr
 005C6BAC    ret
<005C6BAD    jmp        @HandleFinally
<005C6BB2    jmp        005C6BA4
 005C6BB4    mov        eax,esi
 005C6BB6    pop        esi
 005C6BB7    pop        ebx
 005C6BB8    pop        ecx
 005C6BB9    pop        ebp
 005C6BBA    ret
*}
//end;

//005C6BBC
//procedure sub_005C6BBC(?:TScopeManager);
//begin
{*
 005C6BBC    xor        edx,edx
 005C6BBE    mov        dword ptr [eax+4],edx; TScopeManager.?f4:dword
 005C6BC1    ret
*}
//end;

//005C6BC4
//constructor TModuleTypeHelper.Create(?:TModuleTypeHelper; _Dv__:Boolean);
//begin
{*
 005C6BC4    push       ebx
 005C6BC5    push       esi
 005C6BC6    push       edi
 005C6BC7    test       dl,dl
>005C6BC9    je         005C6BD3
 005C6BCB    add        esp,0FFFFFFF0
 005C6BCE    call       @ClassCreate
 005C6BD3    mov        esi,ecx
 005C6BD5    mov        ebx,edx
 005C6BD7    mov        edi,eax
 005C6BD9    xor        edx,edx
 005C6BDB    mov        eax,edi
 005C6BDD    call       TObject.Create
 005C6BE2    mov        dword ptr [edi+4],esi; TModuleTypeHelper.?f4:dword
 005C6BE5    mov        eax,edi
 005C6BE7    test       bl,bl
>005C6BE9    je         005C6BFA
 005C6BEB    call       @AfterConstruction
 005C6BF0    pop        dword ptr fs:[0]
 005C6BF7    add        esp,0C
 005C6BFA    mov        eax,edi
 005C6BFC    pop        edi
 005C6BFD    pop        esi
 005C6BFE    pop        ebx
 005C6BFF    ret
*}
//end;

//005C6C00
//procedure sub_005C6C00(?:?; ?:?);
//begin
{*
 005C6C00    push       ebx
 005C6C01    mov        ebx,ecx
 005C6C03    test       edx,edx
>005C6C05    jne        005C6C0F
 005C6C07    test       ebx,ebx
>005C6C09    jne        005C6C0F
 005C6C0B    xor        eax,eax
 005C6C0D    pop        ebx
 005C6C0E    ret
 005C6C0F    test       edx,edx
>005C6C11    jne        005C6C18
 005C6C13    mov        eax,dword ptr [eax+4]; TModuleTypeHelper.?f4:dword
>005C6C16    jmp        005C6C20
 005C6C18    mov        eax,dword ptr [eax+4]; TModuleTypeHelper.?f4:dword
 005C6C1B    call       005C8D40
 005C6C20    mov        edx,ebx
 005C6C22    call       005C8D80
 005C6C27    pop        ebx
 005C6C28    ret
*}
//end;

//005C6C2C
//procedure sub_005C6C2C(?:?; ?:?; ?:?);
//begin
{*
 005C6C2C    push       ebp
 005C6C2D    mov        ebp,esp
 005C6C2F    push       ecx
 005C6C30    push       ebx
 005C6C31    push       esi
 005C6C32    push       edi
 005C6C33    mov        dword ptr [ebp-4],ecx
 005C6C36    mov        edi,edx
 005C6C38    mov        esi,eax
 005C6C3A    mov        eax,dword ptr [edi+0C]
 005C6C3D    mov        edx,dword ptr ds:[5C6638]; TRCPUModule
 005C6C43    call       @AsClass
 005C6C48    mov        ebx,eax
 005C6C4A    mov        edx,ebx
 005C6C4C    mov        eax,dword ptr [esi+4]; TModuleTypeHelper.?f4:dword
 005C6C4F    call       005C8D60
 005C6C54    mov        edx,dword ptr [ebp-4]
 005C6C57    mov        dword ptr [edx],eax
 005C6C59    mov        edx,edi
 005C6C5B    mov        eax,ebx
 005C6C5D    call       005C8D90
 005C6C62    mov        edx,dword ptr [ebp+8]
 005C6C65    mov        dword ptr [edx],eax
 005C6C67    pop        edi
 005C6C68    pop        esi
 005C6C69    pop        ebx
 005C6C6A    pop        ecx
 005C6C6B    pop        ebp
 005C6C6C    ret        4
*}
//end;

//005C6C70
//constructor TRCPUModule.Create(?:TRCPUModule; _Dv__:Boolean);
//begin
{*
 005C6C70    push       ebx
 005C6C71    push       esi
 005C6C72    push       edi
 005C6C73    test       dl,dl
>005C6C75    je         005C6C7F
 005C6C77    add        esp,0FFFFFFF0
 005C6C7A    call       @ClassCreate
 005C6C7F    mov        ebx,edx
 005C6C81    mov        edi,eax
 005C6C83    xor        edx,edx
 005C6C85    mov        eax,edi
 005C6C87    call       TObject.Create
 005C6C8C    mov        ecx,edi
 005C6C8E    mov        dl,1
 005C6C90    mov        eax,[005C65D0]; TModuleTypeHelper
 005C6C95    call       TModuleTypeHelper.Create; TModuleTypeHelper.Create
 005C6C9A    mov        dword ptr [edi+24],eax; TRCPUModule.?f24:TModuleTypeHelper
 005C6C9D    mov        word ptr [edi+14],64; TRCPUModule.?f14:word
 005C6CA3    mov        word ptr [edi+16],1; TRCPUModule.?f16:word
 005C6CA9    call       Now
 005C6CAE    fstp       qword ptr [edi+18]; TRCPUModule.?f18:?Double
 005C6CB1    wait
 005C6CB2    lea        eax,[edi+4]; TRCPUModule.?f4:String
 005C6CB5    mov        edx,5C6D38; 'Module1'
 005C6CBA    call       @LStrAsg
 005C6CBF    mov        dl,1
 005C6CC1    mov        eax,[0041C260]; TList
 005C6CC6    call       TObject.Create; TList.Create
 005C6CCB    mov        dword ptr [edi+8],eax; TRCPUModule.?f8:TList
 005C6CCE    push       edi
 005C6CCF    xor        ecx,ecx
 005C6CD1    mov        dl,1
 005C6CD3    mov        eax,[005C6574]; TScopeManager
 005C6CD8    call       TScopeManager.Create; TScopeManager.Create
 005C6CDD    mov        dword ptr [edi+20],eax; TRCPUModule.?f20:TScopeManager
 005C6CE0    xor        eax,eax
 005C6CE2    mov        dword ptr [edi+2C],eax; TRCPUModule.?f2C:dword
 005C6CE5    xor        eax,eax
 005C6CE7    mov        dword ptr [edi+28],eax; TRCPUModule.?f28:Pointer
 005C6CEA    xor        eax,eax
 005C6CEC    mov        dword ptr [edi+34],eax; TRCPUModule.?f34:dword
 005C6CEF    xor        eax,eax
 005C6CF1    mov        dword ptr [edi+30],eax; TRCPUModule.?f30:Pointer
 005C6CF4    mov        dword ptr [edi+44],4000; TRCPUModule.?f44:dword
 005C6CFB    mov        dl,1
 005C6CFD    mov        eax,[0041C8E4]; TStringList
 005C6D02    call       TObject.Create; TStringList.Create
 005C6D07    mov        esi,eax
 005C6D09    mov        dword ptr [edi+0C],esi; TRCPUModule.?fC:TStringList
 005C6D0C    mov        eax,esi
 005C6D0E    mov        dl,1
 005C6D10    call       TStringList.SetSorted
 005C6D15    mov        eax,edi
 005C6D17    test       bl,bl
>005C6D19    je         005C6D2A
 005C6D1B    call       @AfterConstruction
 005C6D20    pop        dword ptr fs:[0]
 005C6D27    add        esp,0C
 005C6D2A    mov        eax,edi
 005C6D2C    pop        edi
 005C6D2D    pop        esi
 005C6D2E    pop        ebx
 005C6D2F    ret
*}
//end;

//005C6D40
//constructor sub_005C6D40(?:?; ?:?);
//begin
{*
 005C6D40    push       ebp
 005C6D41    mov        ebp,esp
 005C6D43    add        esp,0FFFFFFE8
 005C6D46    push       ebx
 005C6D47    push       esi
 005C6D48    xor        ebx,ebx
 005C6D4A    mov        dword ptr [ebp-18],ebx
 005C6D4D    mov        dword ptr [ebp-14],ebx
 005C6D50    mov        dword ptr [ebp-10],ebx
 005C6D53    test       dl,dl
>005C6D55    je         005C6D5F
 005C6D57    add        esp,0FFFFFFF0
 005C6D5A    call       @ClassCreate
 005C6D5F    mov        ebx,ecx
 005C6D61    mov        byte ptr [ebp-5],dl
 005C6D64    mov        dword ptr [ebp-4],eax
 005C6D67    xor        eax,eax
 005C6D69    push       ebp
 005C6D6A    push       5C6FDC
 005C6D6F    push       dword ptr fs:[eax]
 005C6D72    mov        dword ptr fs:[eax],esp
 005C6D75    xor        edx,edx
 005C6D77    mov        eax,dword ptr [ebp-4]
 005C6D7A    call       TObject.Create
 005C6D7F    mov        eax,dword ptr [ebp-4]
 005C6D82    mov        edx,dword ptr [ebp+8]
 005C6D85    mov        dword ptr [eax+54],edx; TRCPUModule.?f54:dword
 005C6D88    mov        eax,dword ptr [ebp+0C]
 005C6D8B    mov        eax,dword ptr [eax+48]
 005C6D8E    mov        edx,dword ptr [ebp-4]
 005C6D91    mov        dword ptr [edx+58],eax; TRCPUModule.?f58:dword
 005C6D94    mov        ecx,dword ptr [ebp-4]
 005C6D97    mov        dl,1
 005C6D99    mov        eax,[005C65D0]; TModuleTypeHelper
 005C6D9E    call       TModuleTypeHelper.Create; TModuleTypeHelper.Create
 005C6DA3    mov        edx,dword ptr [ebp-4]
 005C6DA6    mov        dword ptr [edx+24],eax; TRCPUModule.?f24:TModuleTypeHelper
 005C6DA9    mov        dl,1
 005C6DAB    mov        eax,[0041C8E4]; TStringList
 005C6DB0    call       TObject.Create; TStringList.Create
 005C6DB5    mov        esi,eax
 005C6DB7    mov        eax,dword ptr [ebp-4]
 005C6DBA    mov        dword ptr [eax+0C],esi; TRCPUModule.?fC:TStringList
 005C6DBD    mov        eax,esi
 005C6DBF    mov        dl,1
 005C6DC1    call       TStringList.SetSorted
 005C6DC6    mov        ecx,ebx
 005C6DC8    mov        dl,1
 005C6DCA    mov        eax,[005A5454]; TStreamHelper
 005C6DCF    call       TStreamHelper.Create; TStreamHelper.Create
 005C6DD4    mov        dword ptr [ebp-0C],eax
 005C6DD7    xor        edx,edx
 005C6DD9    push       ebp
 005C6DDA    push       5C6FBA
 005C6DDF    push       dword ptr fs:[edx]
 005C6DE2    mov        dword ptr fs:[edx],esp
 005C6DE5    lea        edx,[ebp-14]
 005C6DE8    mov        eax,dword ptr [ebp-0C]
 005C6DEB    call       005A61AC
 005C6DF0    mov        edx,dword ptr [ebp-14]
 005C6DF3    mov        eax,dword ptr [ebp-4]
 005C6DF6    add        eax,4; TRCPUModule.?f4:String
 005C6DF9    call       @LStrAsg
 005C6DFE    mov        eax,dword ptr [ebp-0C]
 005C6E01    call       005A6198
 005C6E06    mov        eax,dword ptr [ebp-4]
 005C6E09    lea        edx,[eax+14]; TRCPUModule.?f14:word
 005C6E0C    mov        ecx,2
 005C6E11    mov        eax,dword ptr [ebp-0C]
 005C6E14    call       005A62A0
 005C6E19    mov        eax,dword ptr [ebp-4]
 005C6E1C    lea        edx,[eax+16]; TRCPUModule.?f16:word
 005C6E1F    mov        ecx,2
 005C6E24    mov        eax,dword ptr [ebp-0C]
 005C6E27    call       005A62A0
 005C6E2C    mov        eax,dword ptr [ebp-4]
 005C6E2F    lea        edx,[eax+18]; TRCPUModule.?f18:?Double
 005C6E32    mov        ecx,8
 005C6E37    mov        eax,dword ptr [ebp-0C]
 005C6E3A    call       005A62A0
 005C6E3F    mov        dl,1
 005C6E41    mov        eax,[0041C260]; TList
 005C6E46    call       TObject.Create; TList.Create
 005C6E4B    mov        edx,dword ptr [ebp-4]
 005C6E4E    mov        dword ptr [edx+8],eax; TRCPUModule.?f8:TList
 005C6E51    mov        dl,1
 005C6E53    mov        eax,[0041C8E4]; TStringList
 005C6E58    call       TObject.Create; TStringList.Create
 005C6E5D    mov        edx,dword ptr [ebp-4]
 005C6E60    mov        dword ptr [edx+10],eax; TRCPUModule.?f10:TStringList
 005C6E63    mov        eax,dword ptr [ebp-0C]
 005C6E66    call       005A61E0
 005C6E6B    mov        ebx,eax
 005C6E6D    test       ebx,ebx
>005C6E6F    jle        005C6EDA
 005C6E71    lea        edx,[ebp-10]
 005C6E74    mov        eax,dword ptr [ebp-0C]
 005C6E77    call       005A61AC
 005C6E7C    cmp        dword ptr [ebp-10],0
>005C6E80    je         005C6ECC
 005C6E82    mov        eax,dword ptr [ebp-10]
 005C6E85    cmp        byte ptr [eax],2B
>005C6E88    jne        005C6ECC
 005C6E8A    lea        eax,[ebp-18]
 005C6E8D    push       eax
 005C6E8E    mov        eax,dword ptr [ebp-10]
 005C6E91    call       @LStrLen
 005C6E96    mov        ecx,eax
 005C6E98    dec        ecx
 005C6E99    mov        edx,2
 005C6E9E    mov        eax,dword ptr [ebp-10]
 005C6EA1    call       @LStrCopy
 005C6EA6    mov        edx,dword ptr [ebp-18]
 005C6EA9    mov        eax,dword ptr [ebp-4]
 005C6EAC    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C6EAF    mov        ecx,dword ptr [eax+8]; TList.FCount:Integer
 005C6EB2    mov        eax,dword ptr [ebp-4]
 005C6EB5    mov        eax,dword ptr [eax+10]; TRCPUModule.?f10:TStringList
 005C6EB8    mov        esi,dword ptr [eax]
 005C6EBA    call       dword ptr [esi+3C]; TStringList.AddObject
 005C6EBD    mov        eax,dword ptr [ebp-4]
 005C6EC0    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C6EC3    xor        edx,edx
 005C6EC5    call       TList.Add
>005C6ECA    jmp        005C6ED7
 005C6ECC    mov        edx,dword ptr [ebp-10]
 005C6ECF    mov        eax,dword ptr [ebp-4]
 005C6ED2    call       005C893C
 005C6ED7    dec        ebx
<005C6ED8    jne        005C6E71
 005C6EDA    mov        eax,dword ptr [ebp-4]
 005C6EDD    push       eax
 005C6EDE    xor        ecx,ecx
 005C6EE0    mov        dl,1
 005C6EE2    mov        eax,[005C6574]; TScopeManager
 005C6EE7    call       TScopeManager.Create; TScopeManager.Create
 005C6EEC    mov        ebx,eax
 005C6EEE    mov        eax,dword ptr [ebp-4]
 005C6EF1    mov        dword ptr [eax+20],ebx; TRCPUModule.?f20:TScopeManager
 005C6EF4    mov        eax,ebx
 005C6EF6    mov        edx,dword ptr [ebp-0C]
 005C6EF9    call       005C6A90
 005C6EFE    mov        eax,dword ptr [ebp-0C]
 005C6F01    call       005A61E0
 005C6F06    mov        edx,dword ptr [ebp-4]
 005C6F09    mov        dword ptr [edx+2C],eax; TRCPUModule.?f2C:dword
 005C6F0C    mov        eax,dword ptr [ebp-0C]
 005C6F0F    call       005A61E0
 005C6F14    mov        ebx,eax
 005C6F16    mov        eax,dword ptr [ebp-4]
 005C6F19    mov        dword ptr [eax+34],ebx; TRCPUModule.?f34:dword
 005C6F1C    mov        eax,ebx
 005C6F1E    call       @GetMem
 005C6F23    mov        esi,eax
 005C6F25    mov        eax,dword ptr [ebp-4]
 005C6F28    mov        dword ptr [eax+30],esi; TRCPUModule.?f30:Pointer
 005C6F2B    mov        eax,dword ptr [ebp-4]
 005C6F2E    mov        ecx,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C6F31    mov        edx,esi
 005C6F33    mov        eax,dword ptr [ebp-0C]
 005C6F36    call       005A62A0
 005C6F3B    mov        eax,dword ptr [ebp-0C]
 005C6F3E    call       005A61E0
 005C6F43    mov        edx,dword ptr [ebp-4]
 005C6F46    mov        dword ptr [edx+44],eax; TRCPUModule.?f44:dword
 005C6F49    mov        eax,dword ptr [ebp-0C]
 005C6F4C    call       005A61E0
 005C6F51    mov        edx,dword ptr [ebp-4]
 005C6F54    mov        dword ptr [edx+38],eax; TRCPUModule.?f38:dword
 005C6F57    mov        eax,dword ptr [ebp-0C]
 005C6F5A    call       005A61E0
 005C6F5F    mov        edx,dword ptr [ebp-4]
 005C6F62    mov        dword ptr [edx+3C],eax; TRCPUModule.?f3C:dword
 005C6F65    mov        eax,dword ptr [ebp-0C]
 005C6F68    call       005A61E0
 005C6F6D    mov        edx,dword ptr [ebp-4]
 005C6F70    mov        dword ptr [edx+40],eax; TRCPUModule.?f40:dword
 005C6F73    mov        eax,dword ptr [ebp-0C]
 005C6F76    call       005A61E0
 005C6F7B    mov        ebx,eax
 005C6F7D    test       ebx,ebx
>005C6F7F    jle        005C6FA4
 005C6F81    lea        edx,[ebp-10]
 005C6F84    mov        eax,dword ptr [ebp-0C]
 005C6F87    call       005A61AC
 005C6F8C    mov        eax,dword ptr [ebp-0C]
 005C6F8F    call       005A61E0
 005C6F94    mov        ecx,eax
 005C6F96    mov        edx,dword ptr [ebp-10]
 005C6F99    mov        eax,dword ptr [ebp-4]
 005C6F9C    call       005C8A10
 005C6FA1    dec        ebx
<005C6FA2    jne        005C6F81
 005C6FA4    xor        eax,eax
 005C6FA6    pop        edx
 005C6FA7    pop        ecx
 005C6FA8    pop        ecx
 005C6FA9    mov        dword ptr fs:[eax],edx
 005C6FAC    push       5C6FC1
 005C6FB1    mov        eax,dword ptr [ebp-0C]
 005C6FB4    call       TObject.Free
 005C6FB9    ret
<005C6FBA    jmp        @HandleFinally
<005C6FBF    jmp        005C6FB1
 005C6FC1    xor        eax,eax
 005C6FC3    pop        edx
 005C6FC4    pop        ecx
 005C6FC5    pop        ecx
 005C6FC6    mov        dword ptr fs:[eax],edx
 005C6FC9    push       5C6FE3
 005C6FCE    lea        eax,[ebp-18]
 005C6FD1    mov        edx,3
 005C6FD6    call       @LStrArrayClr
 005C6FDB    ret
<005C6FDC    jmp        @HandleFinally
<005C6FE1    jmp        005C6FCE
 005C6FE3    mov        eax,dword ptr [ebp-4]
 005C6FE6    cmp        byte ptr [ebp-5],0
>005C6FEA    je         005C6FFB
 005C6FEC    call       @AfterConstruction
 005C6FF1    pop        dword ptr fs:[0]
 005C6FF8    add        esp,0C
 005C6FFB    mov        eax,dword ptr [ebp-4]
 005C6FFE    pop        esi
 005C6FFF    pop        ebx
 005C7000    mov        esp,ebp
 005C7002    pop        ebp
 005C7003    ret        8
*}
//end;

//005C7008
//constructor sub_005C7008(?:?);
//begin
{*
 005C7008    push       ebp
 005C7009    mov        ebp,esp
 005C700B    add        esp,0FFFFFFEC
 005C700E    push       ebx
 005C700F    xor        ebx,ebx
 005C7011    mov        dword ptr [ebp-14],ebx
 005C7014    test       dl,dl
>005C7016    je         005C7020
 005C7018    add        esp,0FFFFFFF0
 005C701B    call       @ClassCreate
 005C7020    mov        dword ptr [ebp-0C],ecx
 005C7023    mov        byte ptr [ebp-5],dl
 005C7026    mov        dword ptr [ebp-4],eax
 005C7029    mov        eax,dword ptr [ebp-0C]
 005C702C    call       @LStrAddRef
 005C7031    xor        eax,eax
 005C7033    push       ebp
 005C7034    push       5C70C5
 005C7039    push       dword ptr fs:[eax]
 005C703C    mov        dword ptr fs:[eax],esp
 005C703F    mov        dl,1
 005C7041    mov        eax,[0041CBF8]; TMemoryStream
 005C7046    call       TObject.Create; TMemoryStream.Create
 005C704B    mov        dword ptr [ebp-10],eax
 005C704E    xor        eax,eax
 005C7050    push       ebp
 005C7051    push       5C70A0
 005C7056    push       dword ptr fs:[eax]
 005C7059    mov        dword ptr fs:[eax],esp
 005C705C    lea        eax,[ebp-14]
 005C705F    mov        ecx,5C70F8; '.RVC'
 005C7064    mov        edx,dword ptr [ebp-0C]
 005C7067    call       @LStrCat3
 005C706C    mov        edx,dword ptr [ebp-14]
 005C706F    mov        eax,dword ptr [ebp-10]
 005C7072    call       TMemoryStream.LoadFromFile
 005C7077    mov        eax,dword ptr [ebp+8]
 005C707A    push       eax
 005C707B    push       0
 005C707D    mov        ecx,dword ptr [ebp-10]
 005C7080    xor        edx,edx
 005C7082    mov        eax,dword ptr [ebp-4]
 005C7085    mov        ebx,dword ptr [eax]
 005C7087    call       dword ptr [ebx+4]; TRCPUModule.sub_005C6D40
 005C708A    xor        eax,eax
 005C708C    pop        edx
 005C708D    pop        ecx
 005C708E    pop        ecx
 005C708F    mov        dword ptr fs:[eax],edx
 005C7092    push       5C70A7
 005C7097    mov        eax,dword ptr [ebp-10]
 005C709A    call       TObject.Free
 005C709F    ret
<005C70A0    jmp        @HandleFinally
<005C70A5    jmp        005C7097
 005C70A7    xor        eax,eax
 005C70A9    pop        edx
 005C70AA    pop        ecx
 005C70AB    pop        ecx
 005C70AC    mov        dword ptr fs:[eax],edx
 005C70AF    push       5C70CC
 005C70B4    lea        eax,[ebp-14]
 005C70B7    call       @LStrClr
 005C70BC    lea        eax,[ebp-0C]
 005C70BF    call       @LStrClr
 005C70C4    ret
<005C70C5    jmp        @HandleFinally
<005C70CA    jmp        005C70B4
 005C70CC    mov        eax,dword ptr [ebp-4]
 005C70CF    cmp        byte ptr [ebp-5],0
>005C70D3    je         005C70E4
 005C70D5    call       @AfterConstruction
 005C70DA    pop        dword ptr fs:[0]
 005C70E1    add        esp,0C
 005C70E4    mov        eax,dword ptr [ebp-4]
 005C70E7    pop        ebx
 005C70E8    mov        esp,ebp
 005C70EA    pop        ebp
 005C70EB    ret        4
*}
//end;

//005C7100
destructor TRCPUModule.Destroy;
begin
{*
 005C7100    push       ebx
 005C7101    push       esi
 005C7102    push       edi
 005C7103    push       ebp
 005C7104    call       @BeforeDestruction
 005C7109    mov        ebx,edx
 005C710B    mov        ebp,eax
 005C710D    mov        eax,dword ptr [ebp+58]; TRCPUModule.?f58:dword
 005C7110    mov        eax,dword ptr [eax+0E8]
 005C7116    test       eax,eax
>005C7118    je         005C7121
 005C711A    mov        edx,ebp
 005C711C    call       005A370C
 005C7121    cmp        dword ptr [ebp+48],0; TRCPUModule.?f48:TMemoryStream
>005C7125    je         005C712F
 005C7127    lea        eax,[ebp+48]; TRCPUModule.?f48:TMemoryStream
 005C712A    call       FreeAndNil
 005C712F    lea        eax,[ebp+50]; TRCPUModule.?f50:TList
 005C7132    call       FreeAndNil
 005C7137    lea        eax,[ebp+4C]; TRCPUModule.?f4C:TStringList
 005C713A    call       FreeAndNil
 005C713F    lea        eax,[ebp+8]; TRCPUModule.?f8:TList
 005C7142    call       FreeAndNil
 005C7147    lea        eax,[ebp+20]; TRCPUModule.?f20:TScopeManager
 005C714A    call       FreeAndNil
 005C714F    lea        eax,[ebp+24]; TRCPUModule.?f24:TModuleTypeHelper
 005C7152    call       FreeAndNil
 005C7157    mov        eax,dword ptr [ebp+28]; TRCPUModule.?f28:Pointer
 005C715A    test       eax,eax
>005C715C    je         005C716B
 005C715E    mov        edx,dword ptr [ebp+2C]; TRCPUModule.?f2C:dword
 005C7161    call       @FreeMem
 005C7166    xor        eax,eax
 005C7168    mov        dword ptr [ebp+28],eax; TRCPUModule.?f28:Pointer
 005C716B    mov        eax,dword ptr [ebp+30]; TRCPUModule.?f30:Pointer
 005C716E    test       eax,eax
>005C7170    je         005C717F
 005C7172    mov        edx,dword ptr [ebp+34]; TRCPUModule.?f34:dword
 005C7175    call       @FreeMem
 005C717A    xor        eax,eax
 005C717C    mov        dword ptr [ebp+30],eax; TRCPUModule.?f30:Pointer
 005C717F    mov        eax,dword ptr [ebp+0C]; TRCPUModule.?fC:TStringList
 005C7182    mov        edx,dword ptr [eax]
 005C7184    call       dword ptr [edx+14]; TStringList.GetCount
 005C7187    mov        esi,eax
 005C7189    dec        esi
 005C718A    test       esi,esi
>005C718C    jl         005C71A9
 005C718E    inc        esi
 005C718F    xor        edi,edi
 005C7191    mov        eax,dword ptr [ebp+0C]; TRCPUModule.?fC:TStringList
 005C7194    mov        edx,edi
 005C7196    mov        ecx,dword ptr [eax]
 005C7198    call       dword ptr [ecx+18]; TStringList.GetObject
 005C719B    mov        edx,4
 005C71A0    call       @FreeMem
 005C71A5    inc        edi
 005C71A6    dec        esi
<005C71A7    jne        005C7191
 005C71A9    lea        eax,[ebp+0C]; TRCPUModule.?fC:TStringList
 005C71AC    call       FreeAndNil
 005C71B1    mov        edx,ebx
 005C71B3    and        dl,0FC
 005C71B6    mov        eax,ebp
 005C71B8    call       TObject.Destroy
 005C71BD    test       bl,bl
>005C71BF    jle        005C71C8
 005C71C1    mov        eax,ebp
 005C71C3    call       @ClassDestroy
 005C71C8    pop        ebp
 005C71C9    pop        edi
 005C71CA    pop        esi
 005C71CB    pop        ebx
 005C71CC    ret
*}
end;

//005C71D0
//function sub_005C71D0(?:dword; ?:AnsiString; ?:?):?;
//begin
{*
 005C71D0    push       ebp
 005C71D1    mov        ebp,esp
 005C71D3    add        esp,0FFFFFFF8
 005C71D6    push       ebx
 005C71D7    push       esi
 005C71D8    push       edi
 005C71D9    mov        dword ptr [ebp-4],edx
 005C71DC    mov        edi,eax
 005C71DE    mov        eax,dword ptr [ebp-4]
 005C71E1    call       @LStrAddRef
 005C71E6    xor        eax,eax
 005C71E8    push       ebp
 005C71E9    push       5C72A9
 005C71EE    push       dword ptr fs:[eax]
 005C71F1    mov        dword ptr fs:[eax],esp
 005C71F4    mov        eax,edi
 005C71F6    call       TComponent.GetComponentCount
 005C71FB    mov        esi,eax
 005C71FD    dec        esi
 005C71FE    test       esi,esi
>005C7200    jl         005C7248
 005C7202    inc        esi
 005C7203    xor        ebx,ebx
 005C7205    mov        edx,ebx
 005C7207    mov        eax,edi
 005C7209    call       TComponent.GetComponent
 005C720E    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C7214    call       @IsClass
 005C7219    test       al,al
>005C721B    je         005C7244
 005C721D    mov        edx,ebx
 005C721F    mov        eax,edi
 005C7221    call       TComponent.GetComponent
 005C7226    mov        eax,dword ptr [eax+74]
 005C7229    mov        dword ptr [ebp-8],eax
 005C722C    cmp        dword ptr [ebp-8],0
>005C7230    je         005C7244
 005C7232    mov        eax,dword ptr [ebp-8]
 005C7235    mov        eax,dword ptr [eax+4]
 005C7238    mov        edx,dword ptr [ebp-4]
 005C723B    call       005A5948
 005C7240    test       al,al
>005C7242    jne        005C7293
 005C7244    inc        ebx
 005C7245    dec        esi
<005C7246    jne        005C7205
 005C7248    mov        ebx,dword ptr [edi+4]
 005C724B    mov        eax,ebx
 005C724D    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C7253    call       @IsClass
 005C7258    test       al,al
>005C725A    je         005C7270
 005C725C    mov        eax,dword ptr [ebp+8]
 005C725F    push       eax
 005C7260    mov        eax,ebx
 005C7262    mov        edx,dword ptr [ebp-4]
 005C7265    call       005C71D0
 005C726A    pop        ecx
 005C726B    mov        dword ptr [ebp-8],eax
>005C726E    jmp        005C7293
 005C7270    mov        eax,dword ptr [edi+74]
 005C7273    mov        dword ptr [ebp-8],eax
 005C7276    cmp        dword ptr [ebp-8],0
>005C727A    je         005C7293
 005C727C    mov        eax,dword ptr [ebp-8]
 005C727F    mov        eax,dword ptr [eax+4]
 005C7282    mov        edx,dword ptr [ebp-4]
 005C7285    call       005A5948
 005C728A    test       al,al
>005C728C    jne        005C7293
 005C728E    xor        eax,eax
 005C7290    mov        dword ptr [ebp-8],eax
 005C7293    xor        eax,eax
 005C7295    pop        edx
 005C7296    pop        ecx
 005C7297    pop        ecx
 005C7298    mov        dword ptr fs:[eax],edx
 005C729B    push       5C72B0
 005C72A0    lea        eax,[ebp-4]
 005C72A3    call       @LStrClr
 005C72A8    ret
<005C72A9    jmp        @HandleFinally
<005C72AE    jmp        005C72A0
 005C72B0    mov        eax,dword ptr [ebp-8]
 005C72B3    pop        edi
 005C72B4    pop        esi
 005C72B5    pop        ebx
 005C72B6    pop        ecx
 005C72B7    pop        ecx
 005C72B8    pop        ebp
 005C72B9    ret
*}
//end;

//005C72BC
procedure sub_005C72BC;
begin
{*
 005C72BC    push       ebp
 005C72BD    mov        ebp,esp
 005C72BF    push       0
 005C72C1    push       0
 005C72C3    push       0
 005C72C5    push       ebx
 005C72C6    push       esi
 005C72C7    push       edi
 005C72C8    mov        ebx,eax
 005C72CA    xor        eax,eax
 005C72CC    push       ebp
 005C72CD    push       5C7399
 005C72D2    push       dword ptr fs:[eax]
 005C72D5    mov        dword ptr fs:[eax],esp
 005C72D8    mov        esi,dword ptr [ebx+10]; TRCPUModule.?f10:TStringList
 005C72DB    test       esi,esi
>005C72DD    je         005C737E
 005C72E3    mov        eax,esi
 005C72E5    mov        edx,dword ptr [eax]
 005C72E7    call       dword ptr [edx+14]; TStringList.GetCount
 005C72EA    dec        eax
 005C72EB    test       eax,eax
>005C72ED    jl         005C7376
 005C72F3    inc        eax
 005C72F4    mov        dword ptr [ebp-4],eax
 005C72F7    xor        esi,esi
 005C72F9    mov        eax,dword ptr [ebx+54]; TRCPUModule.?f54:dword
 005C72FC    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005C7302    call       @IsClass
 005C7307    test       al,al
>005C7309    jne        005C731D
 005C730B    mov        eax,dword ptr [ebx+54]; TRCPUModule.?f54:dword
 005C730E    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005C7314    call       @IsClass
 005C7319    test       al,al
>005C731B    je         005C733B
 005C731D    push       ebp
 005C731E    lea        ecx,[ebp-8]
 005C7321    mov        edx,esi
 005C7323    mov        eax,dword ptr [ebx+10]; TRCPUModule.?f10:TStringList
 005C7326    mov        edi,dword ptr [eax]
 005C7328    call       dword ptr [edi+0C]; TStringList.Get
 005C732B    mov        edx,dword ptr [ebp-8]
 005C732E    mov        eax,dword ptr [ebx+54]; TRCPUModule.?f54:dword
 005C7331    call       005C71D0
 005C7336    pop        ecx
 005C7337    mov        edi,eax
>005C7339    jmp        005C735A
 005C733B    push       ebp
 005C733C    lea        ecx,[ebp-0C]
 005C733F    mov        edx,esi
 005C7341    mov        eax,dword ptr [ebx+10]; TRCPUModule.?f10:TStringList
 005C7344    mov        edi,dword ptr [eax]
 005C7346    call       dword ptr [edi+0C]; TStringList.Get
 005C7349    mov        edx,dword ptr [ebp-0C]
 005C734C    mov        eax,dword ptr [ebx+54]; TRCPUModule.?f54:dword
 005C734F    mov        eax,dword ptr [eax+4]
 005C7352    call       005C71D0
 005C7357    pop        ecx
 005C7358    mov        edi,eax
 005C735A    mov        edx,esi
 005C735C    mov        eax,dword ptr [ebx+10]; TRCPUModule.?f10:TStringList
 005C735F    mov        ecx,dword ptr [eax]
 005C7361    call       dword ptr [ecx+18]; TStringList.GetObject
 005C7364    mov        edx,eax
 005C7366    mov        ecx,edi
 005C7368    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C736B    call       TList.Put
 005C7370    inc        esi
 005C7371    dec        dword ptr [ebp-4]
<005C7374    jne        005C72F9
 005C7376    lea        eax,[ebx+10]; TRCPUModule.?f10:TStringList
 005C7379    call       FreeAndNil
 005C737E    xor        eax,eax
 005C7380    pop        edx
 005C7381    pop        ecx
 005C7382    pop        ecx
 005C7383    mov        dword ptr fs:[eax],edx
 005C7386    push       5C73A0
 005C738B    lea        eax,[ebp-0C]
 005C738E    mov        edx,2
 005C7393    call       @LStrArrayClr
 005C7398    ret
<005C7399    jmp        @HandleFinally
<005C739E    jmp        005C738B
 005C73A0    pop        edi
 005C73A1    pop        esi
 005C73A2    pop        ebx
 005C73A3    mov        esp,ebp
 005C73A5    pop        ebp
 005C73A6    ret
*}
end;

//005C73A8
//procedure sub_005C73A8(?:?; ?:?);
//begin
{*
 005C73A8    push       ebx
 005C73A9    push       esi
 005C73AA    mov        ebx,edx
 005C73AC    mov        esi,eax
 005C73AE    test       ebx,ebx
>005C73B0    je         005C73B6
 005C73B2    test       ebx,ebx
>005C73B4    jne        005C73BE
 005C73B6    test       ecx,ecx
>005C73B8    je         005C73D6
 005C73BA    test       ecx,ecx
>005C73BC    je         005C73D6
 005C73BE    mov        eax,dword ptr [esi+8]; TRCPUModule.?f8:TList
 005C73C1    mov        edx,ebx
 005C73C3    call       TList.IndexOf
 005C73C8    test       eax,eax
>005C73CA    jl         005C73D6
 005C73CC    mov        eax,dword ptr [esi+8]; TRCPUModule.?f8:TList
 005C73CF    mov        edx,ebx
 005C73D1    call       TList.Remove
 005C73D6    pop        esi
 005C73D7    pop        ebx
 005C73D8    ret
*}
//end;

//005C73DC
//function sub_005C73DC(?:TRCPUModule):?;
//begin
{*
 005C73DC    push       ebx
 005C73DD    push       esi
 005C73DE    mov        ebx,eax
 005C73E0    cmp        dword ptr [ebx+28],0; TRCPUModule.?f28:Pointer
>005C73E4    jne        005C73FF
 005C73E6    mov        eax,dword ptr [ebx+2C]; TRCPUModule.?f2C:dword
 005C73E9    call       @GetMem
 005C73EE    mov        esi,eax
 005C73F0    mov        dword ptr [ebx+28],esi; TRCPUModule.?f28:Pointer
 005C73F3    mov        eax,esi
 005C73F5    xor        ecx,ecx
 005C73F7    mov        edx,dword ptr [ebx+2C]; TRCPUModule.?f2C:dword
 005C73FA    call       @FillChar
 005C73FF    mov        eax,dword ptr [ebx+28]; TRCPUModule.?f28:Pointer
 005C7402    pop        esi
 005C7403    pop        ebx
 005C7404    ret
*}
//end;

//005C7408
//procedure sub_005C7408(?:TRCPUModule; ?:dword);
//begin
{*
 005C7408    push       ebx
 005C7409    push       esi
 005C740A    push       edi
 005C740B    mov        esi,edx
 005C740D    mov        ebx,eax
 005C740F    mov        eax,dword ptr [ebx+2C]; TRCPUModule.?f2C:dword
 005C7412    cmp        esi,eax
>005C7414    je         005C7426
 005C7416    cmp        dword ptr [ebx+28],0; TRCPUModule.?f28:Pointer
>005C741A    je         005C7426
 005C741C    mov        edx,eax
 005C741E    mov        eax,dword ptr [ebx+28]; TRCPUModule.?f28:Pointer
 005C7421    call       @FreeMem
 005C7426    mov        edi,esi
 005C7428    mov        dword ptr [ebx+2C],edi; TRCPUModule.?f2C:dword
 005C742B    mov        eax,edi
 005C742D    call       @GetMem
 005C7432    mov        esi,eax
 005C7434    mov        dword ptr [ebx+28],esi; TRCPUModule.?f28:Pointer
 005C7437    mov        eax,esi
 005C7439    xor        ecx,ecx
 005C743B    mov        edx,dword ptr [ebx+2C]; TRCPUModule.?f2C:dword
 005C743E    call       @FillChar
 005C7443    pop        edi
 005C7444    pop        esi
 005C7445    pop        ebx
 005C7446    ret
*}
//end;

//005C7448
//procedure sub_005C7448(?:?);
//begin
{*
 005C7448    push       ebp
 005C7449    mov        ebp,esp
 005C744B    add        esp,0FFFFFFEC
 005C744E    push       ebx
 005C744F    push       esi
 005C7450    push       edi
 005C7451    xor        ecx,ecx
 005C7453    mov        dword ptr [ebp-14],ecx
 005C7456    mov        dword ptr [ebp-10],ecx
 005C7459    mov        dword ptr [ebp-4],eax
 005C745C    xor        eax,eax
 005C745E    push       ebp
 005C745F    push       5C76FF
 005C7464    push       dword ptr fs:[eax]
 005C7467    mov        dword ptr fs:[eax],esp
 005C746A    mov        ecx,edx
 005C746C    mov        eax,[005A5454]; TStreamHelper
 005C7471    mov        dl,1
 005C7473    call       TStreamHelper.Create; TStreamHelper.Create
 005C7478    mov        dword ptr [ebp-8],eax
 005C747B    xor        edx,edx
 005C747D    push       ebp
 005C747E    push       5C76DD
 005C7483    push       dword ptr fs:[edx]
 005C7486    mov        dword ptr fs:[edx],esp
 005C7489    mov        eax,dword ptr [ebp-4]
 005C748C    mov        edx,dword ptr [eax+4]; TRCPUModule.?f4:String
 005C748F    mov        eax,dword ptr [ebp-8]
 005C7492    call       005A6054
 005C7497    mov        dl,1A
 005C7499    mov        eax,dword ptr [ebp-8]
 005C749C    call       005A6040
 005C74A1    mov        eax,dword ptr [ebp-4]
 005C74A4    lea        edx,[eax+14]; TRCPUModule.?f14:word
 005C74A7    mov        ecx,2
 005C74AC    mov        eax,dword ptr [ebp-8]
 005C74AF    call       005A618C
 005C74B4    mov        eax,dword ptr [ebp-4]
 005C74B7    lea        edx,[eax+16]; TRCPUModule.?f16:word
 005C74BA    mov        ecx,2
 005C74BF    mov        eax,dword ptr [ebp-8]
 005C74C2    call       005A618C
 005C74C7    mov        eax,dword ptr [ebp-4]
 005C74CA    lea        edx,[eax+18]; TRCPUModule.?f18:?Double
 005C74CD    mov        ecx,8
 005C74D2    mov        eax,dword ptr [ebp-8]
 005C74D5    call       005A618C
 005C74DA    mov        eax,dword ptr [ebp-4]
 005C74DD    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C74E0    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C74E3    mov        eax,dword ptr [ebp-8]
 005C74E6    call       005A60C8
 005C74EB    mov        eax,dword ptr [ebp-4]
 005C74EE    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C74F1    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 005C74F4    dec        esi
 005C74F5    test       esi,esi
>005C74F7    jl         005C7572
 005C74F9    inc        esi
 005C74FA    xor        ebx,ebx
 005C74FC    mov        eax,dword ptr [ebp-4]
 005C74FF    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C7502    mov        edx,ebx
 005C7504    call       TList.Get
 005C7509    test       eax,eax
>005C750B    je         005C7564
 005C750D    mov        eax,dword ptr [ebp-4]
 005C7510    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C7513    mov        edx,ebx
 005C7515    call       TList.Get
 005C751A    cmp        dword ptr [eax+54],0
>005C751E    je         005C754A
 005C7520    mov        eax,dword ptr [ebp-4]
 005C7523    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C7526    mov        edx,ebx
 005C7528    call       TList.Get
 005C752D    mov        ecx,dword ptr [eax+4]
 005C7530    lea        eax,[ebp-10]
 005C7533    mov        edx,5C7718; '+'
 005C7538    call       @LStrCat3
 005C753D    mov        edx,dword ptr [ebp-10]
 005C7540    mov        eax,dword ptr [ebp-8]
 005C7543    call       005A6054
>005C7548    jmp        005C756E
 005C754A    mov        eax,dword ptr [ebp-4]
 005C754D    mov        eax,dword ptr [eax+8]; TRCPUModule.?f8:TList
 005C7550    mov        edx,ebx
 005C7552    call       TList.Get
 005C7557    mov        edx,dword ptr [eax+4]
 005C755A    mov        eax,dword ptr [ebp-8]
 005C755D    call       005A6054
>005C7562    jmp        005C756E
 005C7564    xor        edx,edx
 005C7566    mov        eax,dword ptr [ebp-8]
 005C7569    call       005A6054
 005C756E    inc        ebx
 005C756F    dec        esi
<005C7570    jne        005C74FC
 005C7572    mov        eax,dword ptr [ebp-4]
 005C7575    mov        eax,dword ptr [eax+20]; TRCPUModule.?f20:TScopeManager
 005C7578    mov        edx,dword ptr [ebp-8]
 005C757B    call       005C6AB0
 005C7580    mov        eax,dword ptr [ebp-4]
 005C7583    mov        edx,dword ptr [eax+2C]; TRCPUModule.?f2C:dword
 005C7586    mov        eax,dword ptr [ebp-8]
 005C7589    call       005A60C8
 005C758E    mov        eax,dword ptr [ebp-4]
 005C7591    mov        edx,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C7594    mov        eax,dword ptr [ebp-8]
 005C7597    call       005A60C8
 005C759C    mov        eax,dword ptr [ebp-4]
 005C759F    mov        eax,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C75A2    call       @GetMem
 005C75A7    mov        dword ptr [ebp-0C],eax
 005C75AA    xor        edx,edx
 005C75AC    push       ebp
 005C75AD    push       5C7628
 005C75B2    push       dword ptr fs:[edx]
 005C75B5    mov        dword ptr fs:[edx],esp
 005C75B8    mov        eax,dword ptr [ebp-4]
 005C75BB    mov        ecx,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C75BE    mov        edx,dword ptr [ebp-0C]
 005C75C1    mov        eax,dword ptr [ebp-4]
 005C75C4    mov        eax,dword ptr [eax+30]; TRCPUModule.?f30:Pointer
 005C75C7    call       Move
 005C75CC    mov        eax,dword ptr [ebp-4]
 005C75CF    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C75D2    mov        edx,dword ptr [eax]
 005C75D4    call       dword ptr [edx+14]; TStringList.GetCount
 005C75D7    mov        esi,eax
 005C75D9    dec        esi
 005C75DA    test       esi,esi
>005C75DC    jl         005C75FB
 005C75DE    inc        esi
 005C75DF    xor        ebx,ebx
 005C75E1    mov        eax,dword ptr [ebp-4]
 005C75E4    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C75E7    mov        edx,ebx
 005C75E9    mov        ecx,dword ptr [eax]
 005C75EB    call       dword ptr [ecx+18]; TStringList.GetObject
 005C75EE    mov        eax,dword ptr [eax]
 005C75F0    add        eax,dword ptr [ebp-0C]
 005C75F3    xor        edx,edx
 005C75F5    mov        dword ptr [eax],edx
 005C75F7    inc        ebx
 005C75F8    dec        esi
<005C75F9    jne        005C75E1
 005C75FB    mov        eax,dword ptr [ebp-4]
 005C75FE    mov        ecx,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C7601    mov        edx,dword ptr [ebp-0C]
 005C7604    mov        eax,dword ptr [ebp-8]
 005C7607    call       005A618C
 005C760C    xor        eax,eax
 005C760E    pop        edx
 005C760F    pop        ecx
 005C7610    pop        ecx
 005C7611    mov        dword ptr fs:[eax],edx
 005C7614    push       5C762F
 005C7619    mov        eax,dword ptr [ebp-4]
 005C761C    mov        edx,dword ptr [eax+34]; TRCPUModule.?f34:dword
 005C761F    mov        eax,dword ptr [ebp-0C]
 005C7622    call       @FreeMem
 005C7627    ret
<005C7628    jmp        @HandleFinally
<005C762D    jmp        005C7619
 005C762F    mov        eax,dword ptr [ebp-4]
 005C7632    mov        edx,dword ptr [eax+44]; TRCPUModule.?f44:dword
 005C7635    mov        eax,dword ptr [ebp-8]
 005C7638    call       005A60C8
 005C763D    mov        eax,dword ptr [ebp-4]
 005C7640    mov        edx,dword ptr [eax+38]; TRCPUModule.?f38:dword
 005C7643    mov        eax,dword ptr [ebp-8]
 005C7646    call       005A60C8
 005C764B    mov        eax,dword ptr [ebp-4]
 005C764E    mov        edx,dword ptr [eax+3C]; TRCPUModule.?f3C:dword
 005C7651    mov        eax,dword ptr [ebp-8]
 005C7654    call       005A60C8
 005C7659    mov        eax,dword ptr [ebp-4]
 005C765C    mov        edx,dword ptr [eax+40]; TRCPUModule.?f40:dword
 005C765F    mov        eax,dword ptr [ebp-8]
 005C7662    call       005A60C8
 005C7667    mov        eax,dword ptr [ebp-4]
 005C766A    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C766D    mov        edx,dword ptr [eax]
 005C766F    call       dword ptr [edx+14]; TStringList.GetCount
 005C7672    mov        edx,eax
 005C7674    mov        eax,dword ptr [ebp-8]
 005C7677    call       005A60C8
 005C767C    mov        eax,dword ptr [ebp-4]
 005C767F    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C7682    mov        edx,dword ptr [eax]
 005C7684    call       dword ptr [edx+14]; TStringList.GetCount
 005C7687    mov        esi,eax
 005C7689    dec        esi
 005C768A    test       esi,esi
>005C768C    jl         005C76C7
 005C768E    inc        esi
 005C768F    xor        ebx,ebx
 005C7691    lea        ecx,[ebp-14]
 005C7694    mov        eax,dword ptr [ebp-4]
 005C7697    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C769A    mov        edx,ebx
 005C769C    mov        edi,dword ptr [eax]
 005C769E    call       dword ptr [edi+0C]; TStringList.Get
 005C76A1    mov        edx,dword ptr [ebp-14]
 005C76A4    mov        eax,dword ptr [ebp-8]
 005C76A7    call       005A6054
 005C76AC    mov        eax,dword ptr [ebp-4]
 005C76AF    mov        eax,dword ptr [eax+0C]; TRCPUModule.?fC:TStringList
 005C76B2    mov        edx,ebx
 005C76B4    mov        ecx,dword ptr [eax]
 005C76B6    call       dword ptr [ecx+18]; TStringList.GetObject
 005C76B9    mov        edx,dword ptr [eax]
 005C76BB    mov        eax,dword ptr [ebp-8]
 005C76BE    call       005A60C8
 005C76C3    inc        ebx
 005C76C4    dec        esi
<005C76C5    jne        005C7691
 005C76C7    xor        eax,eax
 005C76C9    pop        edx
 005C76CA    pop        ecx
 005C76CB    pop        ecx
 005C76CC    mov        dword ptr fs:[eax],edx
 005C76CF    push       5C76E4
 005C76D4    mov        eax,dword ptr [ebp-8]
 005C76D7    call       TObject.Free
 005C76DC    ret
<005C76DD    jmp        @HandleFinally
<005C76E2    jmp        005C76D4
 005C76E4    xor        eax,eax
 005C76E6    pop        edx
 005C76E7    pop        ecx
 005C76E8    pop        ecx
 005C76E9    mov        dword ptr fs:[eax],edx
 005C76EC    push       5C7706
 005C76F1    lea        eax,[ebp-14]
 005C76F4    mov        edx,2
 005C76F9    call       @LStrArrayClr
 005C76FE    ret
<005C76FF    jmp        @HandleFinally
<005C7704    jmp        005C76F1
 005C7706    pop        edi
 005C7707    pop        esi
 005C7708    pop        ebx
 005C7709    mov        esp,ebp
 005C770B    pop        ebp
 005C770C    ret
*}
//end;

//005C771C
//procedure sub_005C771C(?:AnsiString; ?:?);
//begin
{*
 005C771C    push       ebp
 005C771D    mov        ebp,esp
 005C771F    push       ecx
 005C7720    push       ebx
 005C7721    mov        dword ptr [ebp-4],eax
 005C7724    mov        eax,dword ptr [ebp-4]
 005C7727    call       @LStrAddRef
 005C772C    xor        eax,eax
 005C772E    push       ebp
 005C772F    push       5C7796
 005C7734    push       dword ptr fs:[eax]
 005C7737    mov        dword ptr fs:[eax],esp
 005C773A    cmp        dword ptr [ebp-4],0
>005C773E    je         005C7762
 005C7740    mov        eax,dword ptr [ebp-4]
 005C7743    call       @LStrLen
 005C7748    push       eax
 005C7749    lea        eax,[ebp-4]
 005C774C    call       @UniqueStringA
 005C7751    mov        edx,eax
 005C7753    mov        eax,dword ptr [ebp+8]
 005C7756    mov        eax,dword ptr [eax-4]
 005C7759    mov        eax,dword ptr [eax+48]
 005C775C    pop        ecx
 005C775D    mov        ebx,dword ptr [eax]
 005C775F    call       dword ptr [ebx+10]
 005C7762    mov        edx,6172D9
 005C7767    mov        eax,dword ptr [ebp+8]
 005C776A    mov        eax,dword ptr [eax-4]
 005C776D    mov        eax,dword ptr [eax+48]
 005C7770    mov        ecx,2
 005C7775    mov        ebx,dword ptr [eax]
 005C7777    call       dword ptr [ebx+10]
 005C777A    mov        eax,dword ptr [ebp+8]
 005C777D    inc        dword ptr [eax-8]
 005C7780    xor        eax,eax
 005C7782    pop        edx
 005C7783    pop        ecx
 005C7784    pop        ecx
 005C7785    mov        dword ptr fs:[eax],edx
 005C7788    push       5C779D
 005C778D    lea        eax,[ebp-4]
 005C7790    call       @LStrClr
 005C7795    ret
<005C7796    jmp        @HandleFinally
<005C779B    jmp        005C778D
 005C779D    pop        ebx
 005C779E    pop        ecx
 005C779F    pop        ebp
 005C77A0    ret
*}
//end;

//005C77A4
//procedure sub_005C77A4(?:TClass; ?:AnsiString; ?:?);
//begin
{*
 005C77A4    push       ebp
 005C77A5    mov        ebp,esp
 005C77A7    add        esp,0FFFFFEFC
 005C77AD    push       ebx
 005C77AE    push       esi
 005C77AF    xor        ecx,ecx
 005C77B1    mov        dword ptr [ebp-4],ecx
 005C77B4    mov        ebx,edx
 005C77B6    mov        esi,eax
 005C77B8    xor        eax,eax
 005C77BA    push       ebp
 005C77BB    push       5C7835
 005C77C0    push       dword ptr fs:[eax]
 005C77C3    mov        dword ptr fs:[eax],esp
 005C77C6    lea        edx,[ebp-104]
 005C77CC    mov        eax,esi
 005C77CE    call       TObject.ClassName
 005C77D3    lea        edx,[ebp-104]
 005C77D9    lea        eax,[ebp-4]
 005C77DC    call       @LStrFromString
 005C77E1    mov        eax,dword ptr [ebp-4]
 005C77E4    mov        edx,ebx
 005C77E6    call       005A7FCC
 005C77EB    cmp        dword ptr [ebx],0
>005C77EE    jne        005C7805
 005C77F0    mov        eax,dword ptr [ebp+8]
 005C77F3    push       eax
 005C77F4    mov        eax,esi
 005C77F6    call       TObject.ClassParent
 005C77FB    mov        edx,ebx
 005C77FD    call       005C77A4
 005C7802    pop        ecx
>005C7803    jmp        005C781F
 005C7805    lea        edx,[ebp-104]
 005C780B    mov        eax,esi
 005C780D    call       TObject.ClassName
 005C7812    lea        edx,[ebp-104]
 005C7818    mov        eax,ebx
 005C781A    call       @LStrFromString
 005C781F    xor        eax,eax
 005C7821    pop        edx
 005C7822    pop        ecx
 005C7823    pop        ecx
 005C7824    mov        dword ptr fs:[eax],edx
 005C7827    push       5C783C
 005C782C    lea        eax,[ebp-4]
 005C782F    call       @LStrClr
 005C7834    ret
<005C7835    jmp        @HandleFinally
<005C783A    jmp        005C782C
 005C783C    pop        esi
 005C783D    pop        ebx
 005C783E    mov        esp,ebp
 005C7840    pop        ebp
 005C7841    ret
*}
//end;

//005C7844
//procedure sub_005C7844(?:dword; ?:TStringList; ?:?);
//begin
{*
 005C7844    push       ebp
 005C7845    mov        ebp,esp
 005C7847    push       0
 005C7849    push       0
 005C784B    push       0
 005C784D    push       ebx
 005C784E    push       esi
 005C784F    push       edi
 005C7850    mov        dword ptr [ebp-4],edx
 005C7853    mov        esi,eax
 005C7855    xor        eax,eax
 005C7857    push       ebp
 005C7858    push       5C7915
 005C785D    push       dword ptr fs:[eax]
 005C7860    mov        dword ptr fs:[eax],esp
 005C7863    mov        eax,esi
 005C7865    call       TComponent.GetComponentCount
 005C786A    mov        edi,eax
 005C786C    dec        edi
 005C786D    test       edi,edi
>005C786F    jl         005C78C0
 005C7871    inc        edi
 005C7872    xor        ebx,ebx
 005C7874    mov        edx,ebx
 005C7876    mov        eax,esi
 005C7878    call       TComponent.GetComponent
 005C787D    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C7883    call       @IsClass
 005C7888    test       al,al
>005C788A    je         005C78BC
 005C788C    mov        edx,ebx
 005C788E    mov        eax,esi
 005C7890    call       TComponent.GetComponent
 005C7895    mov        edx,dword ptr [ebp+8]
 005C7898    mov        edx,dword ptr [edx-4]
 005C789B    cmp        eax,dword ptr [edx+54]
>005C789E    je         005C78BC
 005C78A0    mov        edx,ebx
 005C78A2    mov        eax,esi
 005C78A4    call       TComponent.GetComponent
 005C78A9    lea        edx,[ebp-8]
 005C78AC    call       005AB588
 005C78B1    mov        edx,dword ptr [ebp-8]
 005C78B4    mov        eax,dword ptr [ebp-4]
 005C78B7    mov        ecx,dword ptr [eax]
 005C78B9    call       dword ptr [ecx+38]; TStringList.Add
 005C78BC    inc        ebx
 005C78BD    dec        edi
<005C78BE    jne        005C7874
 005C78C0    mov        ebx,dword ptr [esi+4]
 005C78C3    mov        eax,ebx
 005C78C5    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C78CB    call       @IsClass
 005C78D0    test       al,al
>005C78D2    je         005C78E5
 005C78D4    mov        eax,dword ptr [ebp+8]
 005C78D7    push       eax
 005C78D8    mov        edx,dword ptr [ebp-4]
 005C78DB    mov        eax,ebx
 005C78DD    call       005C7844
 005C78E2    pop        ecx
>005C78E3    jmp        005C78FA
 005C78E5    lea        edx,[ebp-0C]
 005C78E8    mov        eax,esi
 005C78EA    call       005AB588
 005C78EF    mov        edx,dword ptr [ebp-0C]
 005C78F2    mov        eax,dword ptr [ebp-4]
 005C78F5    mov        ecx,dword ptr [eax]
 005C78F7    call       dword ptr [ecx+38]; TStringList.Add
 005C78FA    xor        eax,eax
 005C78FC    pop        edx
 005C78FD    pop        ecx
 005C78FE    pop        ecx
 005C78FF    mov        dword ptr fs:[eax],edx
 005C7902    push       5C791C
 005C7907    lea        eax,[ebp-0C]
 005C790A    mov        edx,2
 005C790F    call       @LStrArrayClr
 005C7914    ret
<005C7915    jmp        @HandleFinally
<005C791A    jmp        005C7907
 005C791C    pop        edi
 005C791D    pop        esi
 005C791E    pop        ebx
 005C791F    mov        esp,ebp
 005C7921    pop        ebp
 005C7922    ret
*}
//end;

//005C7924
//procedure sub_005C7924(?:TRCPUModule);
//begin
{*
 005C7924    push       ebp
 005C7925    mov        ebp,esp
 005C7927    mov        ecx,35
 005C792C    push       0
 005C792E    push       0
 005C7930    dec        ecx
<005C7931    jne        005C792C
 005C7933    push       ecx
 005C7934    push       ebx
 005C7935    push       esi
 005C7936    push       edi
 005C7937    mov        dword ptr [ebp-4],eax
 005C793A    xor        eax,eax
 005C793C    push       ebp
 005C793D    push       5C82E3
 005C7942    push       dword ptr fs:[eax]
 005C7945    mov        dword ptr fs:[eax],esp
 005C7948    mov        eax,dword ptr [ebp-4]
 005C794B    mov        eax,dword ptr [eax+48]; TRCPUModule.?f48:TMemoryStream
 005C794E    test       eax,eax
>005C7950    je         005C7959
 005C7952    call       TMemoryStream.Clear
>005C7957    jmp        005C796B
 005C7959    mov        dl,1
 005C795B    mov        eax,[0041CBF8]; TMemoryStream
 005C7960    call       TObject.Create; TMemoryStream.Create
 005C7965    mov        edx,dword ptr [ebp-4]
 005C7968    mov        dword ptr [edx+48],eax; TRCPUModule.?f48:TMemoryStream
 005C796B    mov        eax,dword ptr [ebp-4]
 005C796E    mov        eax,dword ptr [eax+4C]; TRCPUModule.?f4C:TStringList
 005C7971    test       eax,eax
>005C7973    je         005C797C
 005C7975    mov        edx,dword ptr [eax]
 005C7977    call       dword ptr [edx+44]; TStringList.Clear
>005C797A    jmp        005C798E
 005C797C    mov        dl,1
 005C797E    mov        eax,[0041C8E4]; TStringList
 005C7983    call       TObject.Create; TStringList.Create
 005C7988    mov        edx,dword ptr [ebp-4]
 005C798B    mov        dword ptr [edx+4C],eax; TRCPUModule.?f4C:TStringList
 005C798E    mov        eax,dword ptr [ebp-4]
 005C7991    mov        eax,dword ptr [eax+50]; TRCPUModule.?f50:TList
 005C7994    test       eax,eax
>005C7996    je         005C799F
 005C7998    mov        edx,dword ptr [eax]
 005C799A    call       dword ptr [edx+8]; TList.Clear
>005C799D    jmp        005C79B1
 005C799F    mov        dl,1
 005C79A1    mov        eax,[0041C260]; TList
 005C79A6    call       TObject.Create; TList.Create
 005C79AB    mov        edx,dword ptr [ebp-4]
 005C79AE    mov        dword ptr [edx+50],eax; TRCPUModule.?f50:TList
 005C79B1    xor        eax,eax
 005C79B3    mov        dword ptr [ebp-8],eax
 005C79B6    mov        dl,1
 005C79B8    mov        eax,[0041C8E4]; TStringList
 005C79BD    call       TObject.Create; TStringList.Create
 005C79C2    mov        dword ptr [ebp-0C],eax
 005C79C5    xor        eax,eax
 005C79C7    push       ebp
 005C79C8    push       5C8287
 005C79CD    push       dword ptr fs:[eax]
 005C79D0    mov        dword ptr fs:[eax],esp
 005C79D3    push       ebp
 005C79D4    push       5C82FC; 'module '
 005C79D9    lea        edx,[ebp-3C]
 005C79DC    mov        eax,dword ptr [ebp-4]
 005C79DF    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C79E2    call       005AB588
 005C79E7    push       dword ptr [ebp-3C]
 005C79EA    push       5C830C; ';'
 005C79EF    lea        eax,[ebp-38]
 005C79F2    mov        edx,3
 005C79F7    call       @LStrCatN
 005C79FC    mov        eax,dword ptr [ebp-38]
 005C79FF    call       005C771C
 005C7A04    pop        ecx
 005C7A05    push       ebp
 005C7A06    xor        eax,eax
 005C7A08    call       005C771C
 005C7A0D    pop        ecx
 005C7A0E    push       ebp
 005C7A0F    mov        eax,5C8318; 'definition'
 005C7A14    call       005C771C
 005C7A19    pop        ecx
 005C7A1A    mov        dl,1
 005C7A1C    mov        eax,[0041C8E4]; TStringList
 005C7A21    call       TObject.Create; TStringList.Create
 005C7A26    mov        dword ptr [ebp-28],eax
 005C7A29    xor        eax,eax
 005C7A2B    push       ebp
 005C7A2C    push       5C7BCD
 005C7A31    push       dword ptr fs:[eax]
 005C7A34    mov        dword ptr fs:[eax],esp
 005C7A37    mov        dl,1
 005C7A39    mov        eax,dword ptr [ebp-28]
 005C7A3C    call       TStringList.SetSorted
 005C7A41    mov        eax,dword ptr [ebp-28]
 005C7A44    mov        byte ptr [eax+1D],0; TStringList.FDuplicates:TDuplicates
 005C7A48    mov        edx,5C832C; 'SYSFUNC'
 005C7A4D    mov        eax,dword ptr [ebp-28]
 005C7A50    mov        ecx,dword ptr [eax]
 005C7A52    call       dword ptr [ecx+38]; TStringList.Add
 005C7A55    mov        edx,5C833C; 'RVCLASS'
 005C7A5A    mov        eax,dword ptr [ebp-28]
 005C7A5D    mov        ecx,dword ptr [eax]
 005C7A5F    call       dword ptr [ecx+38]; TStringList.Add
 005C7A62    mov        edx,5C834C; 'RVDATA'
 005C7A67    mov        eax,dword ptr [ebp-28]
 005C7A6A    mov        ecx,dword ptr [eax]
 005C7A6C    call       dword ptr [ecx+38]; TStringList.Add
 005C7A6F    mov        eax,dword ptr [ebp-4]
 005C7A72    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7A75    call       TComponent.GetComponentCount
 005C7A7A    dec        eax
 005C7A7B    test       eax,eax
>005C7A7D    jl         005C7AFC
 005C7A7F    inc        eax
 005C7A80    mov        dword ptr [ebp-2C],eax
 005C7A83    mov        dword ptr [ebp-1C],0
 005C7A8A    mov        eax,dword ptr [ebp-4]
 005C7A8D    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7A90    mov        edx,dword ptr [ebp-1C]
 005C7A93    call       TComponent.GetComponent
 005C7A98    mov        eax,dword ptr [eax]
 005C7A9A    lea        edx,[ebp-144]
 005C7AA0    call       TObject.ClassName
 005C7AA5    lea        edx,[ebp-144]
 005C7AAB    lea        eax,[ebp-44]
 005C7AAE    call       @LStrFromString
 005C7AB3    mov        eax,dword ptr [ebp-44]
 005C7AB6    lea        edx,[ebp-40]
 005C7AB9    call       005A7FCC
 005C7ABE    mov        edx,dword ptr [ebp-40]
 005C7AC1    mov        eax,dword ptr [ebp-4]
 005C7AC4    add        eax,4; TRCPUModule.?f4:String
 005C7AC7    call       @LStrAsg
 005C7ACC    mov        eax,dword ptr [ebp-4]
 005C7ACF    cmp        dword ptr [eax+4],0; TRCPUModule.?f4:String
>005C7AD3    je         005C7AF4
 005C7AD5    lea        edx,[ebp-148]
 005C7ADB    mov        eax,dword ptr [ebp-4]
 005C7ADE    mov        eax,dword ptr [eax+4]; TRCPUModule.?f4:String
 005C7AE1    call       UpperCase
 005C7AE6    mov        edx,dword ptr [ebp-148]
 005C7AEC    mov        eax,dword ptr [ebp-28]
 005C7AEF    mov        ecx,dword ptr [eax]
 005C7AF1    call       dword ptr [ecx+38]; TStringList.Add
 005C7AF4    inc        dword ptr [ebp-1C]
 005C7AF7    dec        dword ptr [ebp-2C]
<005C7AFA    jne        005C7A8A
 005C7AFC    push       ebp
 005C7AFD    xor        eax,eax
 005C7AFF    call       005C771C
 005C7B04    pop        ecx
 005C7B05    push       ebp
 005C7B06    mov        eax,5C835C; 'import'
 005C7B0B    call       005C771C
 005C7B10    pop        ecx
 005C7B11    mov        eax,dword ptr [ebp-28]
 005C7B14    mov        edx,dword ptr [eax]
 005C7B16    call       dword ptr [edx+14]; TStringList.GetCount
 005C7B19    sub        eax,2
 005C7B1C    test       eax,eax
>005C7B1E    jl         005C7B71
 005C7B20    inc        eax
 005C7B21    mov        dword ptr [ebp-2C],eax
 005C7B24    mov        dword ptr [ebp-1C],0
 005C7B2B    push       ebp
 005C7B2C    push       5C836C; '  '
 005C7B31    lea        ecx,[ebp-150]
 005C7B37    mov        edx,dword ptr [ebp-1C]
 005C7B3A    mov        eax,dword ptr [ebp-28]
 005C7B3D    mov        ebx,dword ptr [eax]
 005C7B3F    call       dword ptr [ebx+0C]; TStringList.Get
 005C7B42    push       dword ptr [ebp-150]
 005C7B48    push       5C8378; ','
 005C7B4D    lea        eax,[ebp-14C]
 005C7B53    mov        edx,3
 005C7B58    call       @LStrCatN
 005C7B5D    mov        eax,dword ptr [ebp-14C]
 005C7B63    call       005C771C
 005C7B68    pop        ecx
 005C7B69    inc        dword ptr [ebp-1C]
 005C7B6C    dec        dword ptr [ebp-2C]
<005C7B6F    jne        005C7B2B
 005C7B71    push       ebp
 005C7B72    push       5C836C; '  '
 005C7B77    mov        eax,dword ptr [ebp-28]
 005C7B7A    mov        edx,dword ptr [eax]
 005C7B7C    call       dword ptr [edx+14]; TStringList.GetCount
 005C7B7F    mov        edx,eax
 005C7B81    dec        edx
 005C7B82    lea        ecx,[ebp-158]
 005C7B88    mov        eax,dword ptr [ebp-28]
 005C7B8B    mov        ebx,dword ptr [eax]
 005C7B8D    call       dword ptr [ebx+0C]; TStringList.Get
 005C7B90    push       dword ptr [ebp-158]
 005C7B96    push       5C830C; ';'
 005C7B9B    lea        eax,[ebp-154]
 005C7BA1    mov        edx,3
 005C7BA6    call       @LStrCatN
 005C7BAB    mov        eax,dword ptr [ebp-154]
 005C7BB1    call       005C771C
 005C7BB6    pop        ecx
 005C7BB7    xor        eax,eax
 005C7BB9    pop        edx
 005C7BBA    pop        ecx
 005C7BBB    pop        ecx
 005C7BBC    mov        dword ptr fs:[eax],edx
 005C7BBF    push       5C7BD4
 005C7BC4    lea        eax,[ebp-28]
 005C7BC7    call       FreeAndNil
 005C7BCC    ret
<005C7BCD    jmp        @HandleFinally
<005C7BD2    jmp        005C7BC4
 005C7BD4    xor        ebx,ebx
 005C7BD6    mov        eax,dword ptr [ebp-4]
 005C7BD9    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7BDC    call       TComponent.GetComponentCount
 005C7BE1    dec        eax
 005C7BE2    test       eax,eax
>005C7BE4    jl         005C7C7B
 005C7BEA    inc        eax
 005C7BEB    mov        dword ptr [ebp-2C],eax
 005C7BEE    mov        dword ptr [ebp-1C],0
 005C7BF5    mov        eax,dword ptr [ebp-4]
 005C7BF8    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7BFB    mov        edx,dword ptr [ebp-1C]
 005C7BFE    call       TComponent.GetComponent
 005C7C03    mov        esi,eax
 005C7C05    cmp        dword ptr [esi+8],0; TComponent.?f8:TComponentName
>005C7C09    je         005C7C6F
 005C7C0B    test       bl,bl
>005C7C0D    jne        005C7C26
 005C7C0F    mov        bl,1
 005C7C11    push       ebp
 005C7C12    xor        eax,eax
 005C7C14    call       005C771C
 005C7C19    pop        ecx
 005C7C1A    push       ebp
 005C7C1B    mov        eax,5C8384; 'var'
 005C7C20    call       005C771C
 005C7C25    pop        ecx
 005C7C26    push       ebp
 005C7C27    push       5C836C; '  '
 005C7C2C    push       dword ptr [esi+8]; TComponent.?f8:TComponentName
 005C7C2F    push       5C8390; ': '
 005C7C34    push       ebp
 005C7C35    mov        eax,esi
 005C7C37    call       TObject.ClassInfo
 005C7C3C    lea        edx,[ebp-160]
 005C7C42    call       005C77A4
 005C7C47    pop        ecx
 005C7C48    push       dword ptr [ebp-160]
 005C7C4E    push       5C830C; ';'
 005C7C53    lea        eax,[ebp-15C]
 005C7C59    mov        edx,5
 005C7C5E    call       @LStrCatN
 005C7C63    mov        eax,dword ptr [ebp-15C]
 005C7C69    call       005C771C
 005C7C6E    pop        ecx
 005C7C6F    inc        dword ptr [ebp-1C]
 005C7C72    dec        dword ptr [ebp-2C]
<005C7C75    jne        005C7BF5
 005C7C7B    mov        eax,dword ptr [ebp-4]
 005C7C7E    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7C81    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005C7C87    call       @IsClass
 005C7C8C    test       al,al
>005C7C8E    je         005C7CF8
 005C7C90    test       bl,bl
>005C7C92    jne        005C7CA9
 005C7C94    push       ebp
 005C7C95    xor        eax,eax
 005C7C97    call       005C771C
 005C7C9C    pop        ecx
 005C7C9D    push       ebp
 005C7C9E    mov        eax,5C8384; 'var'
 005C7CA3    call       005C771C
 005C7CA8    pop        ecx
 005C7CA9    push       ebp
 005C7CAA    push       5C836C; '  '
 005C7CAF    mov        eax,dword ptr [ebp-4]
 005C7CB2    mov        ebx,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7CB5    push       dword ptr [ebx+8]
 005C7CB8    push       5C8390; ': '
 005C7CBD    push       ebp
 005C7CBE    mov        eax,ebx
 005C7CC0    call       TObject.ClassInfo
 005C7CC5    lea        edx,[ebp-168]
 005C7CCB    call       005C77A4
 005C7CD0    pop        ecx
 005C7CD1    push       dword ptr [ebp-168]
 005C7CD7    push       5C830C; ';'
 005C7CDC    lea        eax,[ebp-164]
 005C7CE2    mov        edx,5
 005C7CE7    call       @LStrCatN
 005C7CEC    mov        eax,dword ptr [ebp-164]
 005C7CF2    call       005C771C
 005C7CF7    pop        ecx
 005C7CF8    push       ebp
 005C7CF9    xor        eax,eax
 005C7CFB    call       005C771C
 005C7D00    pop        ecx
 005C7D01    push       ebp
 005C7D02    mov        eax,5C839C; 'implementation'
 005C7D07    call       005C771C
 005C7D0C    pop        ecx
 005C7D0D    mov        dl,1
 005C7D0F    mov        eax,[0041C8E4]; TStringList
 005C7D14    call       TObject.Create; TStringList.Create
 005C7D19    mov        dword ptr [ebp-28],eax
 005C7D1C    xor        eax,eax
 005C7D1E    push       ebp
 005C7D1F    push       5C7E6A
 005C7D24    push       dword ptr fs:[eax]
 005C7D27    mov        dword ptr fs:[eax],esp
 005C7D2A    mov        dl,1
 005C7D2C    mov        eax,dword ptr [ebp-28]
 005C7D2F    call       TStringList.SetSorted
 005C7D34    mov        eax,dword ptr [ebp-28]
 005C7D37    mov        byte ptr [eax+1D],0; TStringList.FDuplicates:TDuplicates
 005C7D3B    mov        eax,dword ptr [ebp-4]
 005C7D3E    add        eax,4; TRCPUModule.?f4:String
 005C7D41    call       @LStrClr
 005C7D46    mov        eax,dword ptr [ebp-4]
 005C7D49    mov        ebx,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7D4C    mov        eax,ebx
 005C7D4E    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005C7D54    call       @IsClass
 005C7D59    test       al,al
>005C7D5B    jne        005C7D6E
 005C7D5D    mov        eax,ebx
 005C7D5F    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005C7D65    call       @IsClass
 005C7D6A    test       al,al
>005C7D6C    je         005C7D7C
 005C7D6E    push       ebp
 005C7D6F    mov        eax,ebx
 005C7D71    mov        edx,dword ptr [ebp-28]
 005C7D74    call       005C7844
 005C7D79    pop        ecx
>005C7D7A    jmp        005C7D89
 005C7D7C    push       ebp
 005C7D7D    mov        eax,dword ptr [ebx+4]
 005C7D80    mov        edx,dword ptr [ebp-28]
 005C7D83    call       005C7844
 005C7D88    pop        ecx
 005C7D89    mov        eax,dword ptr [ebp-28]
 005C7D8C    mov        edx,dword ptr [eax]
 005C7D8E    call       dword ptr [edx+14]; TStringList.GetCount
 005C7D91    test       eax,eax
>005C7D93    jle        005C7E54
 005C7D99    push       ebp
 005C7D9A    xor        eax,eax
 005C7D9C    call       005C771C
 005C7DA1    pop        ecx
 005C7DA2    push       ebp
 005C7DA3    mov        eax,5C835C; 'import'
 005C7DA8    call       005C771C
 005C7DAD    pop        ecx
 005C7DAE    mov        eax,dword ptr [ebp-28]
 005C7DB1    mov        edx,dword ptr [eax]
 005C7DB3    call       dword ptr [edx+14]; TStringList.GetCount
 005C7DB6    sub        eax,2
 005C7DB9    test       eax,eax
>005C7DBB    jl         005C7E0E
 005C7DBD    inc        eax
 005C7DBE    mov        dword ptr [ebp-2C],eax
 005C7DC1    mov        dword ptr [ebp-1C],0
 005C7DC8    push       ebp
 005C7DC9    push       5C836C; '  '
 005C7DCE    lea        ecx,[ebp-170]
 005C7DD4    mov        edx,dword ptr [ebp-1C]
 005C7DD7    mov        eax,dword ptr [ebp-28]
 005C7DDA    mov        ebx,dword ptr [eax]
 005C7DDC    call       dword ptr [ebx+0C]; TStringList.Get
 005C7DDF    push       dword ptr [ebp-170]
 005C7DE5    push       5C8378; ','
 005C7DEA    lea        eax,[ebp-16C]
 005C7DF0    mov        edx,3
 005C7DF5    call       @LStrCatN
 005C7DFA    mov        eax,dword ptr [ebp-16C]
 005C7E00    call       005C771C
 005C7E05    pop        ecx
 005C7E06    inc        dword ptr [ebp-1C]
 005C7E09    dec        dword ptr [ebp-2C]
<005C7E0C    jne        005C7DC8
 005C7E0E    push       ebp
 005C7E0F    push       5C836C; '  '
 005C7E14    mov        eax,dword ptr [ebp-28]
 005C7E17    mov        edx,dword ptr [eax]
 005C7E19    call       dword ptr [edx+14]; TStringList.GetCount
 005C7E1C    mov        edx,eax
 005C7E1E    dec        edx
 005C7E1F    lea        ecx,[ebp-178]
 005C7E25    mov        eax,dword ptr [ebp-28]
 005C7E28    mov        ebx,dword ptr [eax]
 005C7E2A    call       dword ptr [ebx+0C]; TStringList.Get
 005C7E2D    push       dword ptr [ebp-178]
 005C7E33    push       5C830C; ';'
 005C7E38    lea        eax,[ebp-174]
 005C7E3E    mov        edx,3
 005C7E43    call       @LStrCatN
 005C7E48    mov        eax,dword ptr [ebp-174]
 005C7E4E    call       005C771C
 005C7E53    pop        ecx
 005C7E54    xor        eax,eax
 005C7E56    pop        edx
 005C7E57    pop        ecx
 005C7E58    pop        ecx
 005C7E59    mov        dword ptr fs:[eax],edx
 005C7E5C    push       5C7E71
 005C7E61    lea        eax,[ebp-28]
 005C7E64    call       FreeAndNil
 005C7E69    ret
<005C7E6A    jmp        @HandleFinally
<005C7E6F    jmp        005C7E61
 005C7E71    push       ebp
 005C7E72    xor        eax,eax
 005C7E74    call       005C771C
 005C7E79    pop        ecx
 005C7E7A    push       ebp
 005C7E7B    mov        eax,5C83B4; 'var ParamString: string;'
 005C7E80    call       005C771C
 005C7E85    pop        ecx
 005C7E86    push       ebp
 005C7E87    mov        eax,5C83D8; '    ParamFloat: extended;'
 005C7E8C    call       005C771C
 005C7E91    pop        ecx
 005C7E92    mov        eax,dword ptr [ebp-4]
 005C7E95    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7E98    call       TComponent.GetComponentCount
 005C7E9D    dec        eax
 005C7E9E    test       eax,eax
>005C7EA0    jl         005C822A
 005C7EA6    inc        eax
 005C7EA7    mov        dword ptr [ebp-2C],eax
 005C7EAA    mov        dword ptr [ebp-1C],0
 005C7EB1    mov        eax,dword ptr [ebp-4]
 005C7EB4    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C7EB7    mov        edx,dword ptr [ebp-1C]
 005C7EBA    call       TComponent.GetComponent
 005C7EBF    mov        esi,eax
 005C7EC1    cmp        dword ptr [esi+8],0; TComponent.?f8:TComponentName
>005C7EC5    je         005C821E
 005C7ECB    push       1
 005C7ECD    mov        eax,dword ptr [esi]
 005C7ECF    call       TObject.ClassType
 005C7ED4    xor        ecx,ecx
 005C7ED6    mov        edx,dword ptr ds:[5C83F4]; 0x3FEFE
 005C7EDC    call       GetPropList
 005C7EE1    mov        dword ptr [ebp-10],eax
 005C7EE4    mov        eax,dword ptr [ebp-10]
 005C7EE7    shl        eax,2
 005C7EEA    call       @GetMem
 005C7EEF    mov        dword ptr [ebp-14],eax
 005C7EF2    xor        eax,eax
 005C7EF4    push       ebp
 005C7EF5    push       5C8217
 005C7EFA    push       dword ptr fs:[eax]
 005C7EFD    mov        dword ptr fs:[eax],esp
 005C7F00    push       1
 005C7F02    mov        eax,dword ptr [esi]
 005C7F04    call       TObject.ClassType
 005C7F09    mov        edx,dword ptr ds:[5C83F4]; 0x3FEFE
 005C7F0F    mov        ecx,dword ptr [ebp-14]
 005C7F12    call       GetPropList
 005C7F17    mov        eax,dword ptr [ebp-10]
 005C7F1A    dec        eax
 005C7F1B    test       eax,eax
>005C7F1D    jl         005C81FB
 005C7F23    inc        eax
 005C7F24    mov        dword ptr [ebp-30],eax
 005C7F27    mov        dword ptr [ebp-20],0
 005C7F2E    mov        eax,dword ptr [ebp-14]
 005C7F31    mov        edx,dword ptr [ebp-20]
 005C7F34    mov        eax,dword ptr [eax+edx*4]
 005C7F37    mov        dword ptr [ebp-18],eax
 005C7F3A    mov        eax,dword ptr [ebp-18]
 005C7F3D    mov        eax,dword ptr [eax]
 005C7F3F    mov        ebx,dword ptr [eax]
 005C7F41    cmp        byte ptr [ebx],7
>005C7F44    jne        005C81EF
 005C7F4A    mov        eax,ebx
 005C7F4C    call       GetTypeData
 005C7F51    mov        eax,dword ptr [eax]
 005C7F53    mov        edx,dword ptr ds:[5A7A20]; TRaveEvent
 005C7F59    call       TObject.InheritsFrom
 005C7F5E    test       al,al
>005C7F60    je         005C81EF
 005C7F66    mov        edx,dword ptr [ebp-18]
 005C7F69    mov        eax,esi
 005C7F6B    call       GetOrdProp
 005C7F70    mov        ebx,eax
 005C7F72    test       ebx,ebx
>005C7F74    je         005C81EF
 005C7F7A    mov        eax,dword ptr [ebp-4]
 005C7F7D    mov        eax,dword ptr [eax+50]; TRCPUModule.?f50:TList
 005C7F80    mov        edx,ebx
 005C7F82    call       TList.Add
 005C7F87    push       ebp
 005C7F88    xor        eax,eax
 005C7F8A    call       005C771C
 005C7F8F    pop        ecx
 005C7F90    push       dword ptr [esi+8]; TComponent.?f8:TComponentName
 005C7F93    push       5C8400; '_'
 005C7F98    lea        eax,[ebp-180]
 005C7F9E    mov        edx,dword ptr [ebp-18]
 005C7FA1    add        edx,1A
 005C7FA4    call       @LStrFromString
 005C7FA9    push       dword ptr [ebp-180]
 005C7FAF    lea        eax,[ebp-17C]
 005C7FB5    mov        edx,3
 005C7FBA    call       @LStrCatN
 005C7FBF    mov        edx,dword ptr [ebp-17C]
 005C7FC5    mov        eax,dword ptr [ebp-4]
 005C7FC8    mov        eax,dword ptr [eax+4C]; TRCPUModule.?f4C:TStringList
 005C7FCB    mov        ecx,ebx
 005C7FCD    mov        edi,dword ptr [eax]
 005C7FCF    call       dword ptr [edi+3C]; TStringList.AddObject
 005C7FD2    push       ebp
 005C7FD3    push       5C840C; 'function '
 005C7FD8    push       dword ptr [esi+8]; TComponent.?f8:TComponentName
 005C7FDB    push       5C8400; '_'
 005C7FE0    lea        eax,[ebp-188]
 005C7FE6    mov        edx,dword ptr [ebp-18]
 005C7FE9    add        edx,1A
 005C7FEC    call       @LStrFromString
 005C7FF1    push       dword ptr [ebp-188]
 005C7FF7    push       5C830C; ';'
 005C7FFC    lea        eax,[ebp-184]
 005C8002    mov        edx,5
 005C8007    call       @LStrCatN
 005C800C    mov        eax,dword ptr [ebp-184]
 005C8012    call       005C771C
 005C8017    pop        ecx
 005C8018    push       ebp
 005C8019    push       5C8420; 'var Self: '
 005C801E    push       ebp
 005C801F    mov        eax,esi
 005C8021    call       TObject.ClassInfo
 005C8026    lea        edx,[ebp-190]
 005C802C    call       005C77A4
 005C8031    pop        ecx
 005C8032    push       dword ptr [ebp-190]
 005C8038    push       5C830C; ';'
 005C803D    lea        eax,[ebp-18C]
 005C8043    mov        edx,3
 005C8048    call       @LStrCatN
 005C804D    mov        eax,dword ptr [ebp-18C]
 005C8053    call       005C771C
 005C8058    pop        ecx
 005C8059    mov        eax,ebx
 005C805B    mov        edx,dword ptr ds:[5A7C10]; TRaveStringEvent
 005C8061    call       @IsClass
 005C8066    test       al,al
>005C8068    je         005C8078
 005C806A    push       ebp
 005C806B    mov        eax,5C8434; '    Value: string;'
 005C8070    call       005C771C
 005C8075    pop        ecx
>005C8076    jmp        005C8095
 005C8078    mov        eax,ebx
 005C807A    mov        edx,dword ptr ds:[5A7C10]; TRaveStringEvent
 005C8080    call       @IsClass
 005C8085    test       al,al
>005C8087    je         005C8095
 005C8089    push       ebp
 005C808A    mov        eax,5C8450; '    Value: extended;'
 005C808F    call       005C771C
 005C8094    pop        ecx
 005C8095    push       ebp
 005C8096    mov        eax,5C8470; 'begin'
 005C809B    call       005C771C
 005C80A0    pop        ecx
 005C80A1    push       ebp
 005C80A2    push       5C8480; '  Self := '
 005C80A7    push       dword ptr [esi+8]; TComponent.?f8:TComponentName
 005C80AA    push       5C830C; ';'
 005C80AF    lea        eax,[ebp-194]
 005C80B5    mov        edx,3
 005C80BA    call       @LStrCatN
 005C80BF    mov        eax,dword ptr [ebp-194]
 005C80C5    call       005C771C
 005C80CA    pop        ecx
 005C80CB    mov        eax,ebx
 005C80CD    mov        edx,dword ptr ds:[5A7C10]; TRaveStringEvent
 005C80D3    call       @IsClass
 005C80D8    test       al,al
>005C80DA    je         005C80EA
 005C80DC    push       ebp
 005C80DD    mov        eax,5C8494; '  Value := ParamString;'
 005C80E2    call       005C771C
 005C80E7    pop        ecx
>005C80E8    jmp        005C8107
 005C80EA    mov        eax,ebx
 005C80EC    mov        edx,dword ptr ds:[5A7CE0]; TRaveFloatEvent
 005C80F2    call       @IsClass
 005C80F7    test       al,al
>005C80F9    je         005C8107
 005C80FB    push       ebp
 005C80FC    mov        eax,5C84B4; '  Value := ParamFloat;'
 005C8101    call       005C771C
 005C8106    pop        ecx
 005C8107    mov        eax,dword ptr [ebp-8]
 005C810A    inc        eax
 005C810B    mov        dword ptr [ebx+14],eax
 005C810E    mov        edx,dword ptr [ebx+8]
 005C8111    mov        eax,dword ptr [ebp-0C]
 005C8114    mov        ecx,dword ptr [eax]
 005C8116    call       dword ptr [ecx+2C]; TStrings.SetTextStr
 005C8119    mov        eax,dword ptr [ebp-0C]
 005C811C    mov        edx,dword ptr [eax]
 005C811E    call       dword ptr [edx+14]; TStringList.GetCount
 005C8121    dec        eax
 005C8122    test       eax,eax
>005C8124    jl         005C816D
 005C8126    inc        eax
 005C8127    mov        dword ptr [ebp-34],eax
 005C812A    mov        dword ptr [ebp-24],0
 005C8131    push       ebp
 005C8132    lea        ecx,[ebp-19C]
 005C8138    mov        edx,dword ptr [ebp-24]
 005C813B    mov        eax,dword ptr [ebp-0C]
 005C813E    mov        edi,dword ptr [eax]
 005C8140    call       dword ptr [edi+0C]; TStringList.Get
 005C8143    mov        ecx,dword ptr [ebp-19C]
 005C8149    lea        eax,[ebp-198]
 005C814F    mov        edx,5C836C; '  '
 005C8154    call       @LStrCat3
 005C8159    mov        eax,dword ptr [ebp-198]
 005C815F    call       005C771C
 005C8164    pop        ecx
 005C8165    inc        dword ptr [ebp-24]
 005C8168    dec        dword ptr [ebp-34]
<005C816B    jne        005C8131
 005C816D    mov        eax,ebx
 005C816F    mov        edx,dword ptr ds:[5A7C10]; TRaveStringEvent
 005C8175    call       @IsClass
 005C817A    test       al,al
>005C817C    je         005C818C
 005C817E    push       ebp
 005C817F    mov        eax,5C84D4; '  ParamString := Value;'
 005C8184    call       005C771C
 005C8189    pop        ecx
>005C818A    jmp        005C81A9
 005C818C    mov        eax,ebx
 005C818E    mov        edx,dword ptr ds:[5A7C10]; TRaveStringEvent
 005C8194    call       @IsClass
 005C8199    test       al,al
>005C819B    je         005C81A9
 005C819D    push       ebp
 005C819E    mov        eax,5C84F4; '  ParamFloat := Value;'
 005C81A3    call       005C771C
 005C81A8    pop        ecx
 005C81A9    push       ebp
 005C81AA    push       5C8514; 'end '
 005C81AF    push       dword ptr [esi+8]; TComponent.?f8:TComponentName
 005C81B2    push       5C8400; '_'
 005C81B7    lea        eax,[ebp-1A4]
 005C81BD    mov        edx,dword ptr [ebp-18]
 005C81C0    add        edx,1A
 005C81C3    call       @LStrFromString
 005C81C8    push       dword ptr [ebp-1A4]
 005C81CE    push       5C830C; ';'
 005C81D3    lea        eax,[ebp-1A0]
 005C81D9    mov        edx,5
 005C81DE    call       @LStrCatN
 005C81E3    mov        eax,dword ptr [ebp-1A0]
 005C81E9    call       005C771C
 005C81EE    pop        ecx
 005C81EF    inc        dword ptr [ebp-20]
 005C81F2    dec        dword ptr [ebp-30]
<005C81F5    jne        005C7F2E
 005C81FB    xor        eax,eax
 005C81FD    pop        edx
 005C81FE    pop        ecx
 005C81FF    pop        ecx
 005C8200    mov        dword ptr fs:[eax],edx
 005C8203    push       5C821E
 005C8208    mov        edx,dword ptr [ebp-10]
 005C820B    shl        edx,2
 005C820E    mov        eax,dword ptr [ebp-14]
 005C8211    call       @FreeMem
 005C8216    ret
<005C8217    jmp        @HandleFinally
<005C821C    jmp        005C8208
 005C821E    inc        dword ptr [ebp-1C]
 005C8221    dec        dword ptr [ebp-2C]
<005C8224    jne        005C7EB1
 005C822A    push       ebp
 005C822B    xor        eax,eax
 005C822D    call       005C771C
 005C8232    pop        ecx
 005C8233    push       ebp
 005C8234    push       5C8514; 'end '
 005C8239    lea        edx,[ebp-1AC]
 005C823F    mov        eax,dword ptr [ebp-4]
 005C8242    mov        eax,dword ptr [eax+54]; TRCPUModule.?f54:dword
 005C8245    call       005AB588
 005C824A    push       dword ptr [ebp-1AC]
 005C8250    push       5C830C; ';'
 005C8255    lea        eax,[ebp-1A8]
 005C825B    mov        edx,3
 005C8260    call       @LStrCatN
 005C8265    mov        eax,dword ptr [ebp-1A8]
 005C826B    call       005C771C
 005C8270    pop        ecx
 005C8271    xor        eax,eax
 005C8273    pop        edx
 005C8274    pop        ecx
 005C8275    pop        ecx
 005C8276    mov        dword ptr fs:[eax],edx
 005C8279    push       5C828E
 005C827E    lea        eax,[ebp-0C]
 005C8281    call       FreeAndNil
 005C8286    ret
<005C8287    jmp        @HandleFinally
<005C828C    jmp        005C827E
 005C828E    push       0
 005C8290    push       0
 005C8292    mov        eax,dword ptr [ebp-4]
 005C8295    mov        eax,dword ptr [eax+48]; TRCPUModule.?f48:TMemoryStream
 005C8298    call       TStream.SetPosition
 005C829D    xor        eax,eax
 005C829F    pop        edx
 005C82A0    pop        ecx
 005C82A1    pop        ecx
 005C82A2    mov        dword ptr fs:[eax],edx
 005C82A5    push       5C82EA
 005C82AA    lea        eax,[ebp-1AC]
 005C82B0    mov        edx,0C
 005C82B5    call       @LStrArrayClr
 005C82BA    lea        eax,[ebp-17C]
 005C82C0    call       @LStrClr
 005C82C5    lea        eax,[ebp-178]
 005C82CB    mov        edx,0D
 005C82D0    call       @LStrArrayClr
 005C82D5    lea        eax,[ebp-44]
 005C82D8    mov        edx,4
 005C82DD    call       @LStrArrayClr
 005C82E2    ret
<005C82E3    jmp        @HandleFinally
<005C82E8    jmp        005C82AA
 005C82EA    pop        edi
 005C82EB    pop        esi
 005C82EC    pop        ebx
 005C82ED    mov        esp,ebp
 005C82EF    pop        ebp
 005C82F0    ret
*}
//end;

//005C851C
//procedure sub_005C851C(?:TRCPUModule; ?:?);
//begin
{*
 005C851C    push       ebp
 005C851D    mov        ebp,esp
 005C851F    push       0
 005C8521    push       ebx
 005C8522    push       esi
 005C8523    push       edi
 005C8524    mov        ebx,edx
 005C8526    mov        esi,eax
 005C8528    xor        eax,eax
 005C852A    push       ebp
 005C852B    push       5C859F
 005C8530    push       dword ptr fs:[eax]
 005C8533    mov        dword ptr fs:[eax],esp
 005C8536    test       bl,bl
>005C8538    je         005C8555
 005C853A    cmp        dword ptr [esi+5C],0; TRCPUModule.?f5C:dword
>005C853E    je         005C8548
 005C8540    lea        eax,[esi+5C]; TRCPUModule.?f5C:dword
 005C8543    call       FreeAndNil
 005C8548    mov        eax,5C85B4; 'Delphi'
 005C854D    call       005C677C
 005C8552    mov        dword ptr [esi+5C],eax; TRCPUModule.?f5C:dword
 005C8555    push       esi
 005C8556    push       ebx
 005C8557    lea        edx,[ebp-4]
 005C855A    mov        eax,dword ptr [esi+54]; TRCPUModule.?f54:dword
 005C855D    call       005AB588
 005C8562    mov        ecx,dword ptr [ebp-4]
 005C8565    mov        edx,dword ptr [esi+48]; TRCPUModule.?f48:TMemoryStream
 005C8568    mov        eax,dword ptr [esi+5C]; TRCPUModule.?f5C:dword
 005C856B    mov        edi,dword ptr [eax]
 005C856D    call       dword ptr [edi+8]
 005C8570    test       bl,bl
>005C8572    jne        005C857C
 005C8574    lea        eax,[esi+5C]; TRCPUModule.?f5C:dword
 005C8577    call       FreeAndNil
 005C857C    mov        eax,dword ptr [esi+20]; TRCPUModule.?f20:TScopeManager
 005C857F    mov        edx,dword ptr [eax+4]; TScopeManager.?f4:dword
 005C8582    mov        eax,esi
 005C8584    call       005C7408
 005C8589    xor        eax,eax
 005C858B    pop        edx
 005C858C    pop        ecx
 005C858D    pop        ecx
 005C858E    mov        dword ptr fs:[eax],edx
 005C8591    push       5C85A6
 005C8596    lea        eax,[ebp-4]
 005C8599    call       @LStrClr
 005C859E    ret
<005C859F    jmp        @HandleFinally
<005C85A4    jmp        005C8596
 005C85A6    pop        edi
 005C85A7    pop        esi
 005C85A8    pop        ebx
 005C85A9    pop        ecx
 005C85AA    pop        ebp
 005C85AB    ret
*}
//end;

//005C85BC
//procedure sub_005C85BC(?:?; ?:?);
//begin
{*
 005C85BC    push       ebp
 005C85BD    mov        ebp,esp
 005C85BF    add        esp,0FFFFFFF8
 005C85C2    push       ebx
 005C85C3    mov        dword ptr [ebp-8],ecx
 005C85C6    mov        dword ptr [ebp-4],edx
 005C85C9    mov        ebx,eax
 005C85CB    mov        eax,dword ptr [ebp-4]
 005C85CE    call       @LStrAddRef
 005C85D3    mov        eax,dword ptr [ebp-8]
 005C85D6    call       @LStrAddRef
 005C85DB    xor        eax,eax
 005C85DD    push       ebp
 005C85DE    push       5C862E
 005C85E3    push       dword ptr fs:[eax]
 005C85E6    mov        dword ptr fs:[eax],esp
 005C85E9    mov        edx,dword ptr [ebp-4]
 005C85EC    mov        eax,ebx
 005C85EE    call       005C8BA0
 005C85F3    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C85F9    call       @AsClass
 005C85FE    mov        edx,eax
 005C8600    mov        eax,ebx
 005C8602    call       005C8874
 005C8607    mov        ebx,eax
 005C8609    mov        eax,ebx
 005C860B    mov        edx,dword ptr [ebp-8]
 005C860E    call       @LStrAsg
 005C8613    xor        eax,eax
 005C8615    pop        edx
 005C8616    pop        ecx
 005C8617    pop        ecx
 005C8618    mov        dword ptr fs:[eax],edx
 005C861B    push       5C8635
 005C8620    lea        eax,[ebp-8]
 005C8623    mov        edx,2
 005C8628    call       @LStrArrayClr
 005C862D    ret
<005C862E    jmp        @HandleFinally
<005C8633    jmp        005C8620
 005C8635    pop        ebx
 005C8636    pop        ecx
 005C8637    pop        ecx
 005C8638    pop        ebp
 005C8639    ret
*}
//end;

//005C863C
//procedure sub_005C863C(?:?; ?:?);
//begin
{*
 005C863C    push       ebp
 005C863D    mov        ebp,esp
 005C863F    push       ecx
 005C8640    push       ebx
 005C8641    push       esi
 005C8642    mov        esi,ecx
 005C8644    mov        dword ptr [ebp-4],edx
 005C8647    mov        ebx,eax
 005C8649    mov        eax,dword ptr [ebp-4]
 005C864C    call       @LStrAddRef
 005C8651    xor        eax,eax
 005C8653    push       ebp
 005C8654    push       5C869C
 005C8659    push       dword ptr fs:[eax]
 005C865C    mov        dword ptr fs:[eax],esp
 005C865F    mov        edx,dword ptr [ebp-4]
 005C8662    mov        eax,ebx
 005C8664    call       005C8BA0
 005C8669    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C866F    call       @AsClass
 005C8674    mov        edx,eax
 005C8676    mov        eax,ebx
 005C8678    call       005C8874
 005C867D    mov        edx,dword ptr [eax]
 005C867F    mov        eax,esi
 005C8681    call       @LStrAsg
 005C8686    xor        eax,eax
 005C8688    pop        edx
 005C8689    pop        ecx
 005C868A    pop        ecx
 005C868B    mov        dword ptr fs:[eax],edx
 005C868E    push       5C86A3
 005C8693    lea        eax,[ebp-4]
 005C8696    call       @LStrClr
 005C869B    ret
<005C869C    jmp        @HandleFinally
<005C86A1    jmp        005C8693
 005C86A3    pop        esi
 005C86A4    pop        ebx
 005C86A5    pop        ecx
 005C86A6    pop        ebp
 005C86A7    ret
*}
//end;

//005C86A8
//procedure sub_005C86A8(?:?; ?:?);
//begin
{*
 005C86A8    push       ebp
 005C86A9    mov        ebp,esp
 005C86AB    push       ecx
 005C86AC    push       ebx
 005C86AD    push       esi
 005C86AE    push       edi
 005C86AF    mov        edi,ecx
 005C86B1    mov        dword ptr [ebp-4],edx
 005C86B4    mov        ebx,eax
 005C86B6    mov        eax,dword ptr [ebp-4]
 005C86B9    call       @LStrAddRef
 005C86BE    xor        eax,eax
 005C86C0    push       ebp
 005C86C1    push       5C8708
 005C86C6    push       dword ptr fs:[eax]
 005C86C9    mov        dword ptr fs:[eax],esp
 005C86CC    mov        edx,dword ptr [ebp-4]
 005C86CF    mov        eax,ebx
 005C86D1    call       005C8BA0
 005C86D6    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C86DC    call       @AsClass
 005C86E1    mov        esi,eax
 005C86E3    test       esi,esi
>005C86E5    je         005C86F2
 005C86E7    mov        edx,esi
 005C86E9    mov        eax,ebx
 005C86EB    call       005C8874
 005C86F0    mov        dword ptr [eax],edi
 005C86F2    xor        eax,eax
 005C86F4    pop        edx
 005C86F5    pop        ecx
 005C86F6    pop        ecx
 005C86F7    mov        dword ptr fs:[eax],edx
 005C86FA    push       5C870F
 005C86FF    lea        eax,[ebp-4]
 005C8702    call       @LStrClr
 005C8707    ret
<005C8708    jmp        @HandleFinally
<005C870D    jmp        005C86FF
 005C870F    pop        edi
 005C8710    pop        esi
 005C8711    pop        ebx
 005C8712    pop        ecx
 005C8713    pop        ebp
 005C8714    ret
*}
//end;

//005C8718
//function sub_005C8718(?:?):?;
//begin
{*
 005C8718    push       ebp
 005C8719    mov        ebp,esp
 005C871B    push       ecx
 005C871C    push       ebx
 005C871D    push       esi
 005C871E    mov        dword ptr [ebp-4],edx
 005C8721    mov        ebx,eax
 005C8723    mov        eax,dword ptr [ebp-4]
 005C8726    call       @LStrAddRef
 005C872B    xor        eax,eax
 005C872D    push       ebp
 005C872E    push       5C8779
 005C8733    push       dword ptr fs:[eax]
 005C8736    mov        dword ptr fs:[eax],esp
 005C8739    mov        edx,dword ptr [ebp-4]
 005C873C    mov        eax,ebx
 005C873E    call       005C8BA0
 005C8743    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C8749    call       @AsClass
 005C874E    mov        esi,eax
 005C8750    test       esi,esi
>005C8752    je         005C8761
 005C8754    mov        edx,esi
 005C8756    mov        eax,ebx
 005C8758    call       005C8874
 005C875D    mov        ebx,dword ptr [eax]
>005C875F    jmp        005C8763
 005C8761    xor        ebx,ebx
 005C8763    xor        eax,eax
 005C8765    pop        edx
 005C8766    pop        ecx
 005C8767    pop        ecx
 005C8768    mov        dword ptr fs:[eax],edx
 005C876B    push       5C8780
 005C8770    lea        eax,[ebp-4]
 005C8773    call       @LStrClr
 005C8778    ret
<005C8779    jmp        @HandleFinally
<005C877E    jmp        005C8770
 005C8780    mov        eax,ebx
 005C8782    pop        esi
 005C8783    pop        ebx
 005C8784    pop        ecx
 005C8785    pop        ebp
 005C8786    ret
*}
//end;

//005C8788
//procedure sub_005C8788(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005C8788    push       ebp
 005C8789    mov        ebp,esp
 005C878B    push       ecx
 005C878C    push       ebx
 005C878D    mov        dword ptr [ebp-4],edx
 005C8790    mov        ebx,eax
 005C8792    mov        eax,dword ptr [ebp-4]
 005C8795    call       @LStrAddRef
 005C879A    xor        eax,eax
 005C879C    push       ebp
 005C879D    push       5C87EF
 005C87A2    push       dword ptr fs:[eax]
 005C87A5    mov        dword ptr fs:[eax],esp
 005C87A8    mov        edx,dword ptr [ebp-4]
 005C87AB    mov        eax,ebx
 005C87AD    call       005C8BA0
 005C87B2    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C87B8    call       @AsClass
 005C87BD    mov        edx,eax
 005C87BF    mov        eax,ebx
 005C87C1    call       005C8874
 005C87C6    mov        edx,dword ptr [ebp+8]
 005C87C9    mov        dword ptr [eax],edx
 005C87CB    mov        edx,dword ptr [ebp+0C]
 005C87CE    mov        dword ptr [eax+4],edx
 005C87D1    mov        dx,word ptr [ebp+10]
 005C87D5    mov        word ptr [eax+8],dx
 005C87D9    xor        eax,eax
 005C87DB    pop        edx
 005C87DC    pop        ecx
 005C87DD    pop        ecx
 005C87DE    mov        dword ptr fs:[eax],edx
 005C87E1    push       5C87F6
 005C87E6    lea        eax,[ebp-4]
 005C87E9    call       @LStrClr
 005C87EE    ret
<005C87EF    jmp        @HandleFinally
<005C87F4    jmp        005C87E6
 005C87F6    pop        ebx
 005C87F7    pop        ecx
 005C87F8    pop        ebp
 005C87F9    ret        0C
*}
//end;

//005C87FC
//procedure sub_005C87FC(?:?);
//begin
{*
 005C87FC    push       ebp
 005C87FD    mov        ebp,esp
 005C87FF    add        esp,0FFFFFFF0
 005C8802    push       ebx
 005C8803    mov        dword ptr [ebp-4],edx
 005C8806    mov        ebx,eax
 005C8808    mov        eax,dword ptr [ebp-4]
 005C880B    call       @LStrAddRef
 005C8810    xor        eax,eax
 005C8812    push       ebp
 005C8813    push       5C8865
 005C8818    push       dword ptr fs:[eax]
 005C881B    mov        dword ptr fs:[eax],esp
 005C881E    mov        edx,dword ptr [ebp-4]
 005C8821    mov        eax,ebx
 005C8823    call       005C8BA0
 005C8828    mov        edx,dword ptr ds:[5C5D00]; TVarID
 005C882E    call       @AsClass
 005C8833    mov        edx,eax
 005C8835    mov        eax,ebx
 005C8837    call       005C8874
 005C883C    mov        edx,dword ptr [eax]
 005C883E    mov        dword ptr [ebp-10],edx
 005C8841    mov        edx,dword ptr [eax+4]
 005C8844    mov        dword ptr [ebp-0C],edx
 005C8847    mov        dx,word ptr [eax+8]
 005C884B    mov        word ptr [ebp-8],dx
 005C884F    xor        eax,eax
 005C8851    pop        edx
 005C8852    pop        ecx
 005C8853    pop        ecx
 005C8854    mov        dword ptr fs:[eax],edx
 005C8857    push       5C886C
 005C885C    lea        eax,[ebp-4]
 005C885F    call       @LStrClr
 005C8864    ret
<005C8865    jmp        @HandleFinally
<005C886A    jmp        005C885C
 005C886C    fld        tbyte ptr [ebp-10]
 005C886F    pop        ebx
 005C8870    mov        esp,ebp
 005C8872    pop        ebp
 005C8873    ret
*}
//end;

//005C8874
//function sub_005C8874(?:TRCPUModule; ?:TVarID):?;
//begin
{*
 005C8874    push       ebx
 005C8875    push       esi
 005C8876    mov        esi,edx
 005C8878    mov        ebx,eax
 005C887A    mov        eax,ebx
 005C887C    call       005C73DC
 005C8881    add        eax,dword ptr [esi+18]; TVarID.?f18:dword
 005C8884    pop        esi
 005C8885    pop        ebx
 005C8886    ret
*}
//end;

//005C8888
//function sub_005C8888(?:dword; ?:?):?;
//begin
{*
 005C8888    push       ebp
 005C8889    mov        ebp,esp
 005C888B    push       ecx
 005C888C    push       ebx
 005C888D    push       esi
 005C888E    push       edi
 005C888F    mov        edi,eax
 005C8891    mov        eax,edi
 005C8893    call       TComponent.GetComponentCount
 005C8898    mov        esi,eax
 005C889A    dec        esi
 005C889B    test       esi,esi
>005C889D    jl         005C88E8
 005C889F    inc        esi
 005C88A0    xor        ebx,ebx
 005C88A2    mov        edx,ebx
 005C88A4    mov        eax,edi
 005C88A6    call       TComponent.GetComponent
 005C88AB    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C88B1    call       @IsClass
 005C88B6    test       al,al
>005C88B8    je         005C88E4
 005C88BA    mov        edx,ebx
 005C88BC    mov        eax,edi
 005C88BE    call       TComponent.GetComponent
 005C88C3    mov        eax,dword ptr [eax+74]
 005C88C6    mov        dword ptr [ebp-4],eax
 005C88C9    cmp        dword ptr [ebp-4],0
>005C88CD    je         005C88E4
 005C88CF    mov        eax,dword ptr [ebp+8]
 005C88D2    mov        edx,dword ptr [eax-4]
 005C88D5    mov        eax,dword ptr [ebp-4]
 005C88D8    mov        eax,dword ptr [eax+4]
 005C88DB    call       005A5948
 005C88E0    test       al,al
>005C88E2    jne        005C8933
 005C88E4    inc        ebx
 005C88E5    dec        esi
<005C88E6    jne        005C88A2
 005C88E8    mov        ebx,dword ptr [edi+4]
 005C88EB    mov        eax,ebx
 005C88ED    mov        edx,dword ptr ds:[5A70B4]; TRaveProjectItem
 005C88F3    call       @IsClass
 005C88F8    test       al,al
>005C88FA    je         005C890D
 005C88FC    mov        eax,dword ptr [ebp+8]
 005C88FF    push       eax
 005C8900    mov        eax,ebx
 005C8902    call       005C8888
 005C8907    pop        ecx
 005C8908    mov        dword ptr [ebp-4],eax
>005C890B    jmp        005C8933
 005C890D    mov        eax,dword ptr [edi+74]
 005C8910    mov        dword ptr [ebp-4],eax
 005C8913    cmp        dword ptr [ebp-4],0
>005C8917    je         005C8933
 005C8919    mov        eax,dword ptr [ebp+8]
 005C891C    mov        edx,dword ptr [eax-4]
 005C891F    mov        eax,dword ptr [ebp-4]
 005C8922    mov        eax,dword ptr [eax+4]
 005C8925    call       005A5948
 005C892A    test       al,al
>005C892C    jne        005C8933
 005C892E    xor        eax,eax
 005C8930    mov        dword ptr [ebp-4],eax
 005C8933    mov        eax,dword ptr [ebp-4]
 005C8936    pop        edi
 005C8937    pop        esi
 005C8938    pop        ebx
 005C8939    pop        ecx
 005C893A    pop        ebp
 005C893B    ret
*}
//end;

//005C893C
//function sub_005C893C(?:TRCPUModule; ?:AnsiString):?;
//begin
{*
 005C893C    push       ebp
 005C893D    mov        ebp,esp
 005C893F    push       ecx
 005C8940    push       ebx
 005C8941    push       esi
 005C8942    mov        dword ptr [ebp-4],edx
 005C8945    mov        ebx,eax
 005C8947    mov        eax,dword ptr [ebp-4]
 005C894A    call       @LStrAddRef
 005C894F    xor        eax,eax
 005C8951    push       ebp
 005C8952    push       5C89FF
 005C8957    push       dword ptr fs:[eax]
 005C895A    mov        dword ptr fs:[eax],esp
 005C895D    cmp        dword ptr [ebx+54],0; TRCPUModule.?f54:dword
>005C8961    je         005C89B1
 005C8963    mov        esi,dword ptr [ebx+54]; TRCPUModule.?f54:dword
 005C8966    mov        eax,esi
 005C8968    mov        edx,dword ptr ds:[5A1434]; TRaveProjectManager
 005C896E    call       @IsClass
 005C8973    test       al,al
>005C8975    jne        005C8988
 005C8977    mov        eax,esi
 005C8979    mov        edx,dword ptr ds:[5A1074]; TRaveReport
 005C897F    call       @IsClass
 005C8984    test       al,al
>005C8986    je         005C8995
 005C8988    push       ebp
 005C8989    mov        eax,esi
 005C898B    call       005C8888
 005C8990    pop        ecx
 005C8991    mov        esi,eax
>005C8993    jmp        005C89A1
 005C8995    push       ebp
 005C8996    mov        eax,dword ptr [esi+4]
 005C8999    call       005C8888
 005C899E    pop        ecx
 005C899F    mov        esi,eax
 005C89A1    test       esi,esi
>005C89A3    je         005C89B3
 005C89A5    mov        edx,esi
 005C89A7    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C89AA    call       TList.Add
>005C89AF    jmp        005C89B3
 005C89B1    xor        esi,esi
 005C89B3    test       esi,esi
>005C89B5    jne        005C89E9
 005C89B7    cmp        dword ptr [ebp-4],0
>005C89BB    je         005C89E9
 005C89BD    mov        eax,dword ptr [ebx+58]; TRCPUModule.?f58:dword
 005C89C0    mov        eax,dword ptr [eax+0E8]
 005C89C6    mov        edx,dword ptr [ebp-4]
 005C89C9    call       005A34A0
 005C89CE    mov        edx,dword ptr ds:[5C6638]; TRCPUModule
 005C89D4    call       @AsClass
 005C89D9    mov        esi,eax
 005C89DB    test       esi,esi
>005C89DD    je         005C89E9
 005C89DF    mov        edx,esi
 005C89E1    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C89E4    call       TList.Add
 005C89E9    xor        eax,eax
 005C89EB    pop        edx
 005C89EC    pop        ecx
 005C89ED    pop        ecx
 005C89EE    mov        dword ptr fs:[eax],edx
 005C89F1    push       5C8A06
 005C89F6    lea        eax,[ebp-4]
 005C89F9    call       @LStrClr
 005C89FE    ret
<005C89FF    jmp        @HandleFinally
<005C8A04    jmp        005C89F6
 005C8A06    mov        eax,esi
 005C8A08    pop        esi
 005C8A09    pop        ebx
 005C8A0A    pop        ecx
 005C8A0B    pop        ebp
 005C8A0C    ret
*}
//end;

//005C8A10
//procedure sub_005C8A10(?:TRCPUModule; ?:AnsiString; ?:?);
//begin
{*
 005C8A10    push       ebp
 005C8A11    mov        ebp,esp
 005C8A13    add        esp,0FFFFFFF8
 005C8A16    push       ebx
 005C8A17    push       esi
 005C8A18    push       edi
 005C8A19    xor        ebx,ebx
 005C8A1B    mov        dword ptr [ebp-8],ebx
 005C8A1E    mov        edi,ecx
 005C8A20    mov        dword ptr [ebp-4],edx
 005C8A23    mov        esi,eax
 005C8A25    mov        eax,dword ptr [ebp-4]
 005C8A28    call       @LStrAddRef
 005C8A2D    xor        eax,eax
 005C8A2F    push       ebp
 005C8A30    push       5C8A7E
 005C8A35    push       dword ptr fs:[eax]
 005C8A38    mov        dword ptr fs:[eax],esp
 005C8A3B    mov        eax,4
 005C8A40    call       @GetMem
 005C8A45    mov        ebx,eax
 005C8A47    mov        eax,ebx
 005C8A49    mov        dword ptr [eax],edi
 005C8A4B    lea        edx,[ebp-8]
 005C8A4E    mov        eax,dword ptr [ebp-4]
 005C8A51    call       UpperCase
 005C8A56    mov        edx,dword ptr [ebp-8]
 005C8A59    mov        ecx,ebx
 005C8A5B    mov        eax,dword ptr [esi+0C]; TRCPUModule.?fC:TStringList
 005C8A5E    mov        ebx,dword ptr [eax]
 005C8A60    call       dword ptr [ebx+3C]; TStringList.AddObject
 005C8A63    xor        eax,eax
 005C8A65    pop        edx
 005C8A66    pop        ecx
 005C8A67    pop        ecx
 005C8A68    mov        dword ptr fs:[eax],edx
 005C8A6B    push       5C8A85
 005C8A70    lea        eax,[ebp-8]
 005C8A73    mov        edx,2
 005C8A78    call       @LStrArrayClr
 005C8A7D    ret
<005C8A7E    jmp        @HandleFinally
<005C8A83    jmp        005C8A70
 005C8A85    pop        edi
 005C8A86    pop        esi
 005C8A87    pop        ebx
 005C8A88    pop        ecx
 005C8A89    pop        ecx
 005C8A8A    pop        ebp
 005C8A8B    ret
*}
//end;

//005C8A8C
//function sub_005C8A8C(?:Pointer; ?:?):?;
//begin
{*
 005C8A8C    push       ebp
 005C8A8D    mov        ebp,esp
 005C8A8F    push       ecx
 005C8A90    push       ebx
 005C8A91    mov        dword ptr [ebp-4],edx
 005C8A94    mov        ebx,eax
 005C8A96    mov        eax,dword ptr [ebp-4]
 005C8A99    call       @LStrAddRef
 005C8A9E    xor        eax,eax
 005C8AA0    push       ebp
 005C8AA1    push       5C8ACF
 005C8AA6    push       dword ptr fs:[eax]
 005C8AA9    mov        dword ptr fs:[eax],esp
 005C8AAC    mov        edx,dword ptr [ebp-4]
 005C8AAF    mov        eax,dword ptr [ebx+20]
 005C8AB2    call       005C6B50
 005C8AB7    mov        ebx,eax
 005C8AB9    xor        eax,eax
 005C8ABB    pop        edx
 005C8ABC    pop        ecx
 005C8ABD    pop        ecx
 005C8ABE    mov        dword ptr fs:[eax],edx
 005C8AC1    push       5C8AD6
 005C8AC6    lea        eax,[ebp-4]
 005C8AC9    call       @LStrClr
 005C8ACE    ret
<005C8ACF    jmp        @HandleFinally
<005C8AD4    jmp        005C8AC6
 005C8AD6    mov        eax,ebx
 005C8AD8    pop        ebx
 005C8AD9    pop        ecx
 005C8ADA    pop        ebp
 005C8ADB    ret
*}
//end;

//005C8ADC
//procedure sub_005C8ADC(?:Pointer; ?:?; ?:?);
//begin
{*
 005C8ADC    push       ebp
 005C8ADD    mov        ebp,esp
 005C8ADF    add        esp,0FFFFFFF0
 005C8AE2    push       ebx
 005C8AE3    push       esi
 005C8AE4    push       edi
 005C8AE5    mov        dword ptr [ebp-4],edx
 005C8AE8    mov        esi,eax
 005C8AEA    mov        eax,dword ptr [ebp+8]
 005C8AED    mov        edx,dword ptr [eax-4]
 005C8AF0    mov        eax,esi
 005C8AF2    call       005C8A8C
 005C8AF7    mov        edx,dword ptr [ebp+8]
 005C8AFA    mov        dword ptr [edx-8],eax
 005C8AFD    mov        eax,dword ptr [ebp+8]
 005C8B00    cmp        dword ptr [eax-8],0
>005C8B04    je         005C8B11
 005C8B06    mov        eax,dword ptr [ebp+8]
 005C8B09    mov        dword ptr [eax-0C],esi
>005C8B0C    jmp        005C8B97
 005C8B11    mov        eax,dword ptr [ebp+8]
 005C8B14    cmp        dword ptr [eax-10],0
>005C8B18    jne        005C8B20
 005C8B1A    cmp        dword ptr [ebp-4],0
>005C8B1E    jne        005C8B97
 005C8B20    mov        eax,dword ptr [esi+8]
 005C8B23    mov        eax,dword ptr [eax+8]
 005C8B26    dec        eax
 005C8B27    test       eax,eax
>005C8B29    jl         005C8B97
 005C8B2B    inc        eax
 005C8B2C    mov        dword ptr [ebp-10],eax
 005C8B2F    mov        dword ptr [ebp-8],0
 005C8B36    mov        edx,dword ptr [ebp-8]
 005C8B39    mov        eax,dword ptr [esi+8]
 005C8B3C    call       TList.Get
 005C8B41    mov        ebx,eax
 005C8B43    test       ebx,ebx
>005C8B45    je         005C8B86
 005C8B47    mov        eax,dword ptr [ebp+8]
 005C8B4A    cmp        dword ptr [eax-10],0
>005C8B4E    je         005C8B76
 005C8B50    lea        ecx,[ebp-0C]
 005C8B53    mov        eax,dword ptr [ebp+8]
 005C8B56    mov        eax,dword ptr [eax-10]
 005C8B59    mov        edx,dword ptr [ebx+4]
 005C8B5C    mov        edi,dword ptr [eax]
 005C8B5E    call       dword ptr [edi+8C]
 005C8B64    test       al,al
>005C8B66    jne        005C8B8F
 005C8B68    mov        eax,dword ptr [ebp+8]
 005C8B6B    mov        eax,dword ptr [eax-10]
 005C8B6E    mov        edx,dword ptr [ebx+4]
 005C8B71    mov        ecx,dword ptr [eax]
 005C8B73    call       dword ptr [ecx+38]
 005C8B76    mov        eax,dword ptr [ebp+8]
 005C8B79    push       eax
 005C8B7A    mov        edx,dword ptr [ebp-4]
 005C8B7D    inc        edx
 005C8B7E    mov        eax,ebx
 005C8B80    call       005C8ADC
 005C8B85    pop        ecx
 005C8B86    mov        eax,dword ptr [ebp+8]
 005C8B89    cmp        dword ptr [eax-8],0
>005C8B8D    jne        005C8B97
 005C8B8F    inc        dword ptr [ebp-8]
 005C8B92    dec        dword ptr [ebp-10]
<005C8B95    jne        005C8B36
 005C8B97    pop        edi
 005C8B98    pop        esi
 005C8B99    pop        ebx
 005C8B9A    mov        esp,ebp
 005C8B9C    pop        ebp
 005C8B9D    ret
*}
//end;

//005C8BA0
//function sub_005C8BA0(?:TRCPUModule; ?:AnsiString):?;
//begin
{*
 005C8BA0    push       ebp
 005C8BA1    mov        ebp,esp
 005C8BA3    add        esp,0FFFFFFEC
 005C8BA6    push       ebx
 005C8BA7    mov        dword ptr [ebp-4],edx
 005C8BAA    mov        ebx,eax
 005C8BAC    mov        eax,dword ptr [ebp-4]
 005C8BAF    call       @LStrAddRef
 005C8BB4    xor        eax,eax
 005C8BB6    push       ebp
 005C8BB7    push       5C8CB3
 005C8BBC    push       dword ptr fs:[eax]
 005C8BBF    mov        dword ptr fs:[eax],esp
 005C8BC2    xor        eax,eax
 005C8BC4    mov        dword ptr [ebp-0C],eax
 005C8BC7    xor        eax,eax
 005C8BC9    mov        dword ptr [ebp-8],eax
 005C8BCC    mov        edx,dword ptr [ebp-4]
 005C8BCF    mov        eax,5C8CCC; '.'
 005C8BD4    call       @LStrPos
 005C8BD9    test       eax,eax
>005C8BDB    jle        005C8BEE
 005C8BDD    mov        dl,1
 005C8BDF    mov        eax,[0041C8E4]; TStringList
 005C8BE4    call       TObject.Create; TStringList.Create
 005C8BE9    mov        dword ptr [ebp-10],eax
>005C8BEC    jmp        005C8BF3
 005C8BEE    xor        eax,eax
 005C8BF0    mov        dword ptr [ebp-10],eax
 005C8BF3    xor        eax,eax
 005C8BF5    push       ebp
 005C8BF6    push       5C8C96
 005C8BFB    push       dword ptr fs:[eax]
 005C8BFE    mov        dword ptr fs:[eax],esp
 005C8C01    cmp        dword ptr [ebp-10],0
>005C8C05    je         005C8C23
 005C8C07    mov        dl,1
 005C8C09    mov        eax,dword ptr [ebp-10]
 005C8C0C    call       TStringList.SetSorted
 005C8C11    mov        eax,dword ptr [ebp-10]
 005C8C14    mov        byte ptr [eax+1D],0; TStringList.FDuplicates:TDuplicates
 005C8C18    mov        edx,dword ptr [ebx+4]; TRCPUModule.?f4:String
 005C8C1B    mov        eax,dword ptr [ebp-10]
 005C8C1E    mov        ecx,dword ptr [eax]
 005C8C20    call       dword ptr [ecx+38]; TStringList.Add
 005C8C23    push       ebp
 005C8C24    xor        edx,edx
 005C8C26    mov        eax,ebx
 005C8C28    call       005C8ADC
 005C8C2D    pop        ecx
 005C8C2E    mov        eax,dword ptr [ebp-8]
 005C8C31    mov        dword ptr [ebp-14],eax
 005C8C34    cmp        dword ptr [ebp-14],0
>005C8C38    je         005C8C80
 005C8C3A    cmp        ebx,dword ptr [ebp-0C]
>005C8C3D    jne        005C8C4A
 005C8C3F    xor        edx,edx
 005C8C41    mov        eax,dword ptr [ebp-14]
 005C8C44    mov        ecx,dword ptr [eax]
 005C8C46    call       dword ptr [ecx]
>005C8C48    jmp        005C8C80
 005C8C4A    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C8C4D    mov        edx,dword ptr [ebp-0C]
 005C8C50    call       TList.IndexOf
 005C8C55    mov        edx,eax
 005C8C57    inc        edx
 005C8C58    mov        eax,dword ptr [ebp-14]
 005C8C5B    mov        ecx,dword ptr [eax]
 005C8C5D    call       dword ptr [ecx]
 005C8C5F    mov        eax,dword ptr [ebp-14]
 005C8C62    cmp        dword ptr [eax+10],1
>005C8C66    jge        005C8C80
 005C8C68    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C8C6B    mov        edx,dword ptr [ebp-0C]
 005C8C6E    call       TList.Add
 005C8C73    mov        eax,dword ptr [ebx+8]; TRCPUModule.?f8:TList
 005C8C76    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C8C79    mov        eax,dword ptr [ebp-14]
 005C8C7C    mov        ecx,dword ptr [eax]
 005C8C7E    call       dword ptr [ecx]
 005C8C80    xor        eax,eax
 005C8C82    pop        edx
 005C8C83    pop        ecx
 005C8C84    pop        ecx
 005C8C85    mov        dword ptr fs:[eax],edx
 005C8C88    push       5C8C9D
 005C8C8D    lea        eax,[ebp-10]
 005C8C90    call       FreeAndNil
 005C8C95    ret
<005C8C96    jmp        @HandleFinally
<005C8C9B    jmp        005C8C8D
 005C8C9D    xor        eax,eax
 005C8C9F    pop        edx
 005C8CA0    pop        ecx
 005C8CA1    pop        ecx
 005C8CA2    mov        dword ptr fs:[eax],edx
 005C8CA5    push       5C8CBA
 005C8CAA    lea        eax,[ebp-4]
 005C8CAD    call       @LStrClr
 005C8CB2    ret
<005C8CB3    jmp        @HandleFinally
<005C8CB8    jmp        005C8CAA
 005C8CBA    mov        eax,dword ptr [ebp-14]
 005C8CBD    pop        ebx
 005C8CBE    mov        esp,ebp
 005C8CC0    pop        ebp
 005C8CC1    ret
*}
//end;

//005C8CD0
//function sub_005C8CD0(?:?; ?:AnsiString):?;
//begin
{*
 005C8CD0    push       ebp
 005C8CD1    mov        ebp,esp
 005C8CD3    add        esp,0FFFFFFF8
 005C8CD6    push       ebx
 005C8CD7    push       esi
 005C8CD8    mov        dword ptr [ebp-4],edx
 005C8CDB    mov        ebx,eax
 005C8CDD    mov        eax,dword ptr [ebp-4]
 005C8CE0    call       @LStrAddRef
 005C8CE5    xor        eax,eax
 005C8CE7    push       ebp
 005C8CE8    push       5C8D2F
 005C8CED    push       dword ptr fs:[eax]
 005C8CF0    mov        dword ptr fs:[eax],esp
 005C8CF3    lea        ecx,[ebp-8]
 005C8CF6    mov        edx,dword ptr [ebp-4]
 005C8CF9    mov        eax,dword ptr [ebx+0C]
 005C8CFC    mov        esi,dword ptr [eax]
 005C8CFE    call       dword ptr [esi+8C]
 005C8D04    test       al,al
>005C8D06    je         005C8D17
 005C8D08    mov        edx,dword ptr [ebp-8]
 005C8D0B    mov        eax,dword ptr [ebx+0C]
 005C8D0E    mov        ecx,dword ptr [eax]
 005C8D10    call       dword ptr [ecx+18]
 005C8D13    mov        ebx,eax
>005C8D15    jmp        005C8D19
 005C8D17    xor        ebx,ebx
 005C8D19    xor        eax,eax
 005C8D1B    pop        edx
 005C8D1C    pop        ecx
 005C8D1D    pop        ecx
 005C8D1E    mov        dword ptr fs:[eax],edx
 005C8D21    push       5C8D36
 005C8D26    lea        eax,[ebp-4]
 005C8D29    call       @LStrClr
 005C8D2E    ret
<005C8D2F    jmp        @HandleFinally
<005C8D34    jmp        005C8D26
 005C8D36    mov        eax,ebx
 005C8D38    pop        esi
 005C8D39    pop        ebx
 005C8D3A    pop        ecx
 005C8D3B    pop        ecx
 005C8D3C    pop        ebp
 005C8D3D    ret
*}
//end;

//005C8D40
//function sub_005C8D40(?:dword; ?:?):?;
//begin
{*
 005C8D40    push       ebx
 005C8D41    push       esi
 005C8D42    mov        esi,edx
 005C8D44    mov        ebx,eax
 005C8D46    test       esi,esi
>005C8D48    jne        005C8D4F
 005C8D4A    mov        eax,ebx
 005C8D4C    pop        esi
 005C8D4D    pop        ebx
 005C8D4E    ret
 005C8D4F    mov        edx,esi
 005C8D51    dec        edx
 005C8D52    mov        eax,dword ptr [ebx+8]
 005C8D55    call       TList.Get
 005C8D5A    pop        esi
 005C8D5B    pop        ebx
 005C8D5C    ret
*}
//end;

//005C8D60
//procedure sub_005C8D60(?:dword; ?:TRCPUModule);
//begin
{*
 005C8D60    push       ebx
 005C8D61    push       esi
 005C8D62    mov        esi,edx
 005C8D64    mov        ebx,eax
 005C8D66    cmp        ebx,esi
>005C8D68    jne        005C8D6F
 005C8D6A    xor        eax,eax
 005C8D6C    pop        esi
 005C8D6D    pop        ebx
 005C8D6E    ret
 005C8D6F    mov        edx,esi
 005C8D71    mov        eax,dword ptr [ebx+8]
 005C8D74    call       TList.IndexOf
 005C8D79    inc        eax
 005C8D7A    pop        esi
 005C8D7B    pop        ebx
 005C8D7C    ret
*}
//end;

//005C8D80
//procedure sub_005C8D80(?:dword; ?:?);
//begin
{*
 005C8D80    mov        eax,dword ptr [eax+20]
 005C8D83    mov        eax,dword ptr [eax+10]
 005C8D86    dec        edx
 005C8D87    call       005C37C4
 005C8D8C    ret
*}
//end;

//005C8D90
//function sub_005C8D90(?:TRCPUModule; ?:?):?;
//begin
{*
 005C8D90    mov        eax,dword ptr [edx+10]
 005C8D93    ret
*}
//end;

//005C8D94
//procedure sub_005C8D94(?:?);
//begin
{*
 005C8D94    push       ebp
 005C8D95    mov        ebp,esp
 005C8D97    push       ecx
 005C8D98    push       ebx
 005C8D99    mov        ebx,eax
 005C8D9B    mov        dword ptr [ebx+38],edx; TRCPUModule.?f38:dword
 005C8D9E    mov        dl,1
 005C8DA0    mov        eax,[005C3810]; TRCPURunner
 005C8DA5    call       TRCPURunner.Create; TRCPURunner.Create
 005C8DAA    mov        dword ptr [ebp-4],eax
 005C8DAD    xor        eax,eax
 005C8DAF    push       ebp
 005C8DB0    push       5C8DDB
 005C8DB5    push       dword ptr fs:[eax]
 005C8DB8    mov        dword ptr fs:[eax],esp
 005C8DBB    mov        edx,ebx
 005C8DBD    mov        eax,dword ptr [ebp-4]
 005C8DC0    call       005C3C40
 005C8DC5    xor        eax,eax
 005C8DC7    pop        edx
 005C8DC8    pop        ecx
 005C8DC9    pop        ecx
 005C8DCA    mov        dword ptr fs:[eax],edx
 005C8DCD    push       5C8DE2
 005C8DD2    mov        eax,dword ptr [ebp-4]
 005C8DD5    call       TObject.Free
 005C8DDA    ret
<005C8DDB    jmp        @HandleFinally
<005C8DE0    jmp        005C8DD2
 005C8DE2    pop        ebx
 005C8DE3    pop        ecx
 005C8DE4    pop        ebp
 005C8DE5    ret
*}
//end;

Initialization
//005C8E24
{*
 005C8E24    sub        dword ptr ds:[61F8CC],1
>005C8E2B    jae        005C8E59
 005C8E2D    mov        eax,[0061B5D0]
 005C8E32    mov        dword ptr [eax],5C6824; sub_005C6824
 005C8E38    mov        eax,[0061C368]
 005C8E3D    mov        dword ptr [eax],5C68A0; sub_005C68A0
 005C8E43    mov        eax,[0061B3B4]
 005C8E48    mov        dword ptr [eax],5C66C0
 005C8E4E    mov        eax,[0061BD74]
 005C8E53    mov        dword ptr [eax],5C66D4; sub_005C66D4
 005C8E59    ret
*}
Finalization
//005C8DE8
{*
 005C8DE8    push       ebp
 005C8DE9    mov        ebp,esp
 005C8DEB    xor        eax,eax
 005C8DED    push       ebp
 005C8DEE    push       5C8E19
 005C8DF3    push       dword ptr fs:[eax]
 005C8DF6    mov        dword ptr fs:[eax],esp
 005C8DF9    inc        dword ptr ds:[61F8CC]
>005C8DFF    jne        005C8E0B
 005C8E01    mov        eax,6172D4
 005C8E06    call       FreeAndNil
 005C8E0B    xor        eax,eax
 005C8E0D    pop        edx
 005C8E0E    pop        ecx
 005C8E0F    pop        ecx
 005C8E10    mov        dword ptr fs:[eax],edx
 005C8E13    push       5C8E20
 005C8E18    ret
<005C8E19    jmp        @HandleFinally
<005C8E1E    jmp        005C8E18
 005C8E20    pop        ebp
 005C8E21    ret
*}
end.