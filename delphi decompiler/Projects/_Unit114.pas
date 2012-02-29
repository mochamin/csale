{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit114;

interface

uses
  Classes, Windows, Graphics;

type
  TBaseType = class(TObject)
  public
    f4:byte;//f4
    //f5:?;//f5
    f8:dword;//f8
    fC:dword;//fC
    //function sub_005C2604:?; virtual;
    //constructor sub_005C2558(?:?); virtual;
    //procedure sub_005C25CC(?:?; ?:?); virtual;
    function sub_005C2614:Boolean; virtual;
    //procedure sub_005C261C(?:?); virtual;
  end;
  TSimpleType = class(TBaseType)
  public
    //f14:?;//f14
    //f18:?;//f18
    //function sub_005C26C4:?; virtual;
    //constructor sub_005C2630(?:?); virtual;
    //procedure sub_005C2694(?:?; ?:?); virtual;
  end;
  TEnumeratedType = class(TBaseType)
  public
    //f14:?;//f14
    destructor Destroy; virtual;
    //function sub_005C2780:?; virtual;
    //constructor sub_005C2708(?:?); virtual;
    //procedure sub_005C275C(?:?; ?:?); virtual;
  end;
  TArrayType = class(TBaseType)
  public
    f14:dword;//f14
    f18:TList;//f18
    destructor Destroy; virtual;
    //function sub_005C2A74(?:?):?; virtual;
    //constructor sub_005C27F0(?:?); virtual;
    //procedure sub_005C28E0(?:?; ?:?); virtual;
    procedure sub_005C2A90; virtual;
    //procedure sub_005C2A9C(?:?); virtual;
  end;
  TFuncParam = record //size = 17
  f0:String;;
  TFuncType = class(TBaseType)
  public
    f14:TList;//f14
    f18:dword;//f18
    destructor Destroy; virtual;
    //constructor sub_005C3340(?:?); virtual;
    //procedure sub_005C3478(?:?; ?:?); virtual;
  end;
  TStructureMember = class(TObject)
  public
    f4:dword;//f4
    f8:byte;//f8
    fC:dword;//fC
    //constructor sub_005C2B04(?:?; ?:?); virtual;
    //procedure sub_005C2B78(?:?; ?:?); virtual;
  end;
  TClassMember = class(TStructureMember)
  public
    f10:byte;//f10
    //constructor sub_005C2BBC(?:?; ?:?); virtual;
    //procedure sub_005C2C10(?:?; ?:?); virtual;
  end;
  TMethodMember = class(TClassMember)
  public
    //f14:?;//f14
    //constructor sub_005C2C2C(?:?; ?:?); virtual;
    //procedure sub_005C2C84(?:?; ?:?); virtual;
  end;
  TPropertyMember = class(TClassMember)
  public
    f14:dword;//f14
    f18:dword;//f18
    //constructor sub_005C2CA8(?:?; ?:?); virtual;
    //procedure sub_005C2D04(?:?; ?:?); virtual;
  end;
  TStructureType = class(TBaseType)
  public
    f14:TStringList;//f14
    f18:dword;//f18
    destructor Destroy; virtual;
    //function sub_005C2F00:?; virtual;
    //constructor sub_005C2D64(?:?); virtual;
    //procedure sub_005C2E50(?:?; ?:?); virtual;
    //function sub_005C3020:?; virtual;
    //procedure sub_005C3064(?:?); virtual;
    //function sub_005C2F44(?:AnsiString; ?:?; ?:?; ?:?):?; virtual;
  end;
  TRecordType = class(TStructureType)
  end;
  TClassType = class(TStructureType)
  public
    f1C:dword;//f1C
    f20:TClassType;//f20
    f24:String;//f24
    //function sub_005C31FC():?; virtual;
    //constructor sub_005C30B0(?:?); virtual;
    //procedure sub_005C3180(?:?; ?:?); virtual;
    //function sub_005C3258(?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;
  end;
  TTypeHelper = class(TObject)
  public
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
  end;
  TTypeManager = class(TObject)
  public
    f4:TList;//f4
    f8:dword;//f8
    fC:dword;//fC
    destructor Destroy; virtual;
    //constructor Create(?:TTypeManager; _Dv__:Boolean; ?:?);
  end;

implementation

{$R *.DFM}

//005C2558
//constructor sub_005C2558(?:?);
//begin
{*
 005C2558    push       ebp
 005C2559    mov        ebp,esp
 005C255B    push       ebx
 005C255C    push       esi
 005C255D    push       edi
 005C255E    test       dl,dl
>005C2560    je         005C256A
 005C2562    add        esp,0FFFFFFF0
 005C2565    call       @ClassCreate
 005C256A    mov        ebx,edx
 005C256C    mov        edi,eax
 005C256E    mov        esi,dword ptr [ebp+8]
 005C2571    xor        edx,edx
 005C2573    mov        eax,edi
 005C2575    call       TObject.Create
 005C257A    lea        edx,[edi+5]; TBaseType.?f5:?
 005C257D    mov        ecx,1
 005C2582    mov        eax,esi
 005C2584    call       005A62A0
 005C2589    lea        edx,[edi+8]; TBaseType.?f8:dword
 005C258C    mov        ecx,4
 005C2591    mov        eax,esi
 005C2593    call       005A62A0
 005C2598    lea        edx,[edi+4]; TBaseType.?f4:byte
 005C259B    mov        ecx,1
 005C25A0    mov        eax,esi
 005C25A2    call       005A62A0
 005C25A7    xor        eax,eax
 005C25A9    mov        dword ptr [edi+0C],eax; TBaseType.?fC:dword
 005C25AC    mov        eax,edi
 005C25AE    test       bl,bl
>005C25B0    je         005C25C1
 005C25B2    call       @AfterConstruction
 005C25B7    pop        dword ptr fs:[0]
 005C25BE    add        esp,0C
 005C25C1    mov        eax,edi
 005C25C3    pop        edi
 005C25C4    pop        esi
 005C25C5    pop        ebx
 005C25C6    pop        ebp
 005C25C7    ret        4
*}
//end;

//005C25CC
//procedure sub_005C25CC(?:?; ?:?);
//begin
{*
 005C25CC    push       ebx
 005C25CD    push       esi
 005C25CE    mov        esi,ecx
 005C25D0    mov        ebx,eax
 005C25D2    lea        edx,[ebx+5]; TBaseType.?f5:?
 005C25D5    mov        ecx,1
 005C25DA    mov        eax,esi
 005C25DC    call       005A618C
 005C25E1    lea        edx,[ebx+8]; TBaseType.?f8:dword
 005C25E4    mov        ecx,4
 005C25E9    mov        eax,esi
 005C25EB    call       005A618C
 005C25F0    lea        edx,[ebx+4]; TBaseType.?f4:byte
 005C25F3    mov        ecx,1
 005C25F8    mov        eax,esi
 005C25FA    call       005A618C
 005C25FF    pop        esi
 005C2600    pop        ebx
 005C2601    ret
*}
//end;

//005C2604
//function sub_005C2604:?;
//begin
{*
 005C2604    mov        eax,dword ptr [eax+8]; TFuncType.?f8:dword
 005C2607    ret
*}
//end;

//005C2608
//procedure sub_005C2608(?:?; ?:dword);
//begin
{*
 005C2608    cmp        dword ptr [eax+0C],0
>005C260C    jne        005C2611
 005C260E    mov        dword ptr [eax+0C],edx
 005C2611    ret
*}
//end;

//005C2614
function sub_005C2614:Boolean;
begin
{*
 005C2614    cmp        byte ptr [eax+4],0B; TFuncType.?f4:byte
 005C2618    sete       al
 005C261B    ret
*}
end;

//005C261C
//procedure sub_005C261C(?:?);
//begin
{*
 005C261C    cmp        byte ptr [eax+4],0B; TFuncType.?f4:byte
>005C2620    jne        005C262F
 005C2622    mov        eax,edx
 005C2624    mov        edx,dword ptr ds:[4010F8]; String
 005C262A    call       @Finalize
 005C262F    ret
*}
//end;

//005C2630
//constructor sub_005C2630(?:?);
//begin
{*
 005C2630    push       ebp
 005C2631    mov        ebp,esp
 005C2633    push       ecx
 005C2634    push       ebx
 005C2635    push       esi
 005C2636    test       dl,dl
>005C2638    je         005C2642
 005C263A    add        esp,0FFFFFFF0
 005C263D    call       @ClassCreate
 005C2642    mov        byte ptr [ebp-1],dl
 005C2645    mov        ebx,eax
 005C2647    mov        esi,dword ptr [ebp+8]
 005C264A    push       esi
 005C264B    xor        edx,edx
 005C264D    mov        eax,ebx
 005C264F    call       005C2558
 005C2654    lea        edx,[ebx+14]; TSimpleType.?f14:?
 005C2657    mov        ecx,4
 005C265C    mov        eax,esi
 005C265E    call       005A62A0
 005C2663    lea        edx,[ebx+18]; TSimpleType.?f18:?
 005C2666    mov        ecx,4
 005C266B    mov        eax,esi
 005C266D    call       005A62A0
 005C2672    mov        eax,ebx
 005C2674    cmp        byte ptr [ebp-1],0
>005C2678    je         005C2689
 005C267A    call       @AfterConstruction
 005C267F    pop        dword ptr fs:[0]
 005C2686    add        esp,0C
 005C2689    mov        eax,ebx
 005C268B    pop        esi
 005C268C    pop        ebx
 005C268D    pop        ecx
 005C268E    pop        ebp
 005C268F    ret        4
*}
//end;

//005C2694
//procedure sub_005C2694(?:?; ?:?);
//begin
{*
 005C2694    push       ebx
 005C2695    push       esi
 005C2696    mov        esi,ecx
 005C2698    mov        ebx,eax
 005C269A    mov        ecx,esi
 005C269C    mov        eax,ebx
 005C269E    call       005C25CC
 005C26A3    lea        edx,[ebx+14]; TSimpleType.?f14:?
 005C26A6    mov        ecx,4
 005C26AB    mov        eax,esi
 005C26AD    call       005A618C
 005C26B2    lea        edx,[ebx+18]; TSimpleType.?f18:?
 005C26B5    mov        ecx,4
 005C26BA    mov        eax,esi
 005C26BC    call       005A618C
 005C26C1    pop        esi
 005C26C2    pop        ebx
 005C26C3    ret
*}
//end;

//005C26C4
//function sub_005C26C4:?;
//begin
{*
 005C26C4    cmp        dword ptr [eax+8],0; TSimpleType.?f8:dword
>005C26C8    jne        005C26DC
 005C26CA    xor        edx,edx
 005C26CC    mov        dl,byte ptr [eax+4]; TSimpleType.?f4:byte
 005C26CF    mov        ecx,dword ptr ds:[61BBA8]
 005C26D5    movzx      edx,byte ptr [ecx+edx]
 005C26D9    mov        dword ptr [eax+8],edx; TSimpleType.?f8:dword
 005C26DC    mov        eax,dword ptr [eax+8]; TSimpleType.?f8:dword
 005C26DF    ret
*}
//end;

//005C26E0
destructor TEnumeratedType.Destroy;
begin
{*
 005C26E0    push       ebx
 005C26E1    push       esi
 005C26E2    call       @BeforeDestruction
 005C26E7    mov        ebx,edx
 005C26E9    mov        esi,eax
 005C26EB    mov        edx,ebx
 005C26ED    and        dl,0FC
 005C26F0    mov        eax,esi
 005C26F2    call       TObject.Destroy
 005C26F7    test       bl,bl
>005C26F9    jle        005C2702
 005C26FB    mov        eax,esi
 005C26FD    call       @ClassDestroy
 005C2702    pop        esi
 005C2703    pop        ebx
 005C2704    ret
*}
end;

//005C2708
//constructor sub_005C2708(?:?);
//begin
{*
 005C2708    push       ebp
 005C2709    mov        ebp,esp
 005C270B    push       ecx
 005C270C    push       ebx
 005C270D    push       esi
 005C270E    test       dl,dl
>005C2710    je         005C271A
 005C2712    add        esp,0FFFFFFF0
 005C2715    call       @ClassCreate
 005C271A    mov        byte ptr [ebp-1],dl
 005C271D    mov        ebx,eax
 005C271F    mov        esi,dword ptr [ebp+8]
 005C2722    push       esi
 005C2723    xor        edx,edx
 005C2725    mov        eax,ebx
 005C2727    call       005C2558
 005C272C    lea        edx,[ebx+14]; TEnumeratedType.?f14:?
 005C272F    mov        ecx,1
 005C2734    mov        eax,esi
 005C2736    call       005A62A0
 005C273B    mov        eax,ebx
 005C273D    cmp        byte ptr [ebp-1],0
>005C2741    je         005C2752
 005C2743    call       @AfterConstruction
 005C2748    pop        dword ptr fs:[0]
 005C274F    add        esp,0C
 005C2752    mov        eax,ebx
 005C2754    pop        esi
 005C2755    pop        ebx
 005C2756    pop        ecx
 005C2757    pop        ebp
 005C2758    ret        4
*}
//end;

//005C275C
//procedure sub_005C275C(?:?; ?:?);
//begin
{*
 005C275C    push       ebx
 005C275D    push       esi
 005C275E    mov        esi,ecx
 005C2760    mov        ebx,eax
 005C2762    mov        ecx,esi
 005C2764    mov        eax,ebx
 005C2766    call       005C25CC
 005C276B    lea        edx,[ebx+14]; TEnumeratedType.?f14:?
 005C276E    mov        ecx,1
 005C2773    mov        eax,esi
 005C2775    call       005A618C
 005C277A    pop        esi
 005C277B    pop        ebx
 005C277C    ret
*}
//end;

//005C2780
//function sub_005C2780:?;
//begin
{*
 005C2780    mov        dword ptr [eax+8],1; TEnumeratedType.?f8:dword
 005C2787    mov        eax,1
 005C278C    ret
*}
//end;

//005C2790
destructor TArrayType.Destroy;
begin
{*
 005C2790    push       ebx
 005C2791    push       esi
 005C2792    push       edi
 005C2793    push       ebp
 005C2794    call       @BeforeDestruction
 005C2799    mov        ebx,edx
 005C279B    mov        ebp,eax
>005C279D    jmp        005C27BF
 005C279F    mov        edx,edi
 005C27A1    dec        edx
 005C27A2    mov        eax,esi
 005C27A4    call       TList.Get
 005C27A9    mov        edx,0C
 005C27AE    call       @FreeMem
 005C27B3    mov        eax,dword ptr [ebp+18]; TArrayType.?f18:TList
 005C27B6    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C27B9    dec        edx
 005C27BA    call       TList.Delete
 005C27BF    mov        esi,dword ptr [ebp+18]; TArrayType.?f18:TList
 005C27C2    mov        edi,dword ptr [esi+8]; TList.FCount:Integer
 005C27C5    test       edi,edi
<005C27C7    jg         005C279F
 005C27C9    lea        eax,[ebp+18]; TArrayType.?f18:TList
 005C27CC    call       FreeAndNil
 005C27D1    mov        edx,ebx
 005C27D3    and        dl,0FC
 005C27D6    mov        eax,ebp
 005C27D8    call       TObject.Destroy
 005C27DD    test       bl,bl
>005C27DF    jle        005C27E8
 005C27E1    mov        eax,ebp
 005C27E3    call       @ClassDestroy
 005C27E8    pop        ebp
 005C27E9    pop        edi
 005C27EA    pop        esi
 005C27EB    pop        ebx
 005C27EC    ret
*}
end;

//005C27F0
//constructor sub_005C27F0(?:?);
//begin
{*
 005C27F0    push       ebp
 005C27F1    mov        ebp,esp
 005C27F3    add        esp,0FFFFFFE8
 005C27F6    push       ebx
 005C27F7    push       esi
 005C27F8    push       edi
 005C27F9    test       dl,dl
>005C27FB    je         005C2805
 005C27FD    add        esp,0FFFFFFF0
 005C2800    call       @ClassCreate
 005C2805    mov        dword ptr [ebp-0C],ecx
 005C2808    mov        byte ptr [ebp-5],dl
 005C280B    mov        dword ptr [ebp-4],eax
 005C280E    mov        ebx,dword ptr [ebp+8]
 005C2811    push       ebx
 005C2812    mov        ecx,dword ptr [ebp-0C]
 005C2815    xor        edx,edx
 005C2817    mov        eax,dword ptr [ebp-4]
 005C281A    call       005C2558
 005C281F    mov        dl,1
 005C2821    mov        eax,[0041C260]; TList
 005C2826    call       TObject.Create; TList.Create
 005C282B    mov        edx,dword ptr [ebp-4]
 005C282E    mov        dword ptr [edx+18],eax; TArrayType.?f18:TList
 005C2831    mov        eax,ebx
 005C2833    call       005A61E0
 005C2838    test       eax,eax
>005C283A    jle        005C2894
 005C283C    mov        dword ptr [ebp-18],eax
 005C283F    mov        eax,0C
 005C2844    call       @GetMem
 005C2849    mov        esi,eax
 005C284B    mov        eax,ebx
 005C284D    call       005A61E0
 005C2852    mov        dword ptr [esi],eax
 005C2854    mov        eax,ebx
 005C2856    call       005A61E0
 005C285B    mov        dword ptr [esi+4],eax
 005C285E    mov        eax,ebx
 005C2860    call       005A61E0
 005C2865    mov        dword ptr [ebp-10],eax
 005C2868    mov        eax,ebx
 005C286A    call       005A61E0
 005C286F    mov        dword ptr [ebp-14],eax
 005C2872    mov        ecx,dword ptr [ebp-14]
 005C2875    mov        edx,dword ptr [ebp-10]
 005C2878    mov        eax,dword ptr [ebp-0C]
 005C287B    mov        edi,dword ptr [eax]
 005C287D    call       dword ptr [edi]
 005C287F    mov        dword ptr [esi+8],eax
 005C2882    mov        eax,dword ptr [ebp-4]
 005C2885    mov        eax,dword ptr [eax+18]; TArrayType.?f18:TList
 005C2888    mov        edx,esi
 005C288A    call       TList.Add
 005C288F    dec        dword ptr [ebp-18]
<005C2892    jne        005C283F
 005C2894    mov        eax,ebx
 005C2896    call       005A61E0
 005C289B    mov        dword ptr [ebp-10],eax
 005C289E    mov        eax,ebx
 005C28A0    call       005A61E0
 005C28A5    mov        dword ptr [ebp-14],eax
 005C28A8    mov        ecx,dword ptr [ebp-14]
 005C28AB    mov        edx,dword ptr [ebp-10]
 005C28AE    mov        eax,dword ptr [ebp-0C]
 005C28B1    mov        ebx,dword ptr [eax]
 005C28B3    call       dword ptr [ebx]
 005C28B5    mov        edx,dword ptr [ebp-4]
 005C28B8    mov        dword ptr [edx+14],eax; TArrayType.?f14:dword
 005C28BB    mov        eax,dword ptr [ebp-4]
 005C28BE    cmp        byte ptr [ebp-5],0
>005C28C2    je         005C28D3
 005C28C4    call       @AfterConstruction
 005C28C9    pop        dword ptr fs:[0]
 005C28D0    add        esp,0C
 005C28D3    mov        eax,dword ptr [ebp-4]
 005C28D6    pop        edi
 005C28D7    pop        esi
 005C28D8    pop        ebx
 005C28D9    mov        esp,ebp
 005C28DB    pop        ebp
 005C28DC    ret        4
*}
//end;

//005C28E0
//procedure sub_005C28E0(?:?; ?:?);
//begin
{*
 005C28E0    push       ebx
 005C28E1    push       esi
 005C28E2    push       edi
 005C28E3    add        esp,0FFFFFFEC
 005C28E6    mov        ebx,ecx
 005C28E8    mov        dword ptr [esp+4],edx
 005C28EC    mov        dword ptr [esp],eax
 005C28EF    mov        ecx,ebx
 005C28F1    mov        edx,dword ptr [esp+4]
 005C28F5    mov        eax,dword ptr [esp]
 005C28F8    call       005C25CC
 005C28FD    mov        eax,dword ptr [esp]
 005C2900    mov        eax,dword ptr [eax+18]
 005C2903    mov        edx,dword ptr [eax+8]
 005C2906    mov        eax,ebx
 005C2908    call       005A60C8
 005C290D    mov        eax,dword ptr [esp]
 005C2910    mov        eax,dword ptr [eax+18]
 005C2913    mov        edi,dword ptr [eax+8]
 005C2916    dec        edi
 005C2917    test       edi,edi
>005C2919    jl         005C297A
 005C291B    inc        edi
 005C291C    mov        dword ptr [esp+8],0
 005C2924    mov        eax,dword ptr [esp]
 005C2927    mov        eax,dword ptr [eax+18]
 005C292A    mov        edx,dword ptr [esp+8]
 005C292E    call       TList.Get
 005C2933    mov        esi,eax
 005C2935    mov        edx,dword ptr [esi]
 005C2937    mov        eax,ebx
 005C2939    call       005A60C8
 005C293E    mov        edx,dword ptr [esi+4]
 005C2941    mov        eax,ebx
 005C2943    call       005A60C8
 005C2948    lea        eax,[esp+10]
 005C294C    push       eax
 005C294D    lea        ecx,[esp+10]
 005C2951    mov        edx,dword ptr [esi+8]
 005C2954    mov        eax,dword ptr [esp+8]
 005C2958    mov        esi,dword ptr [eax]
 005C295A    call       dword ptr [esi+4]
 005C295D    mov        edx,dword ptr [esp+0C]
 005C2961    mov        eax,ebx
 005C2963    call       005A60C8
 005C2968    mov        edx,dword ptr [esp+10]
 005C296C    mov        eax,ebx
 005C296E    call       005A60C8
 005C2973    inc        dword ptr [esp+8]
 005C2977    dec        edi
<005C2978    jne        005C2924
 005C297A    lea        eax,[esp+10]
 005C297E    push       eax
 005C297F    lea        ecx,[esp+10]
 005C2983    mov        eax,dword ptr [esp+4]
 005C2987    mov        edx,dword ptr [eax+14]
 005C298A    mov        eax,dword ptr [esp+8]
 005C298E    mov        esi,dword ptr [eax]
 005C2990    call       dword ptr [esi+4]
 005C2993    mov        edx,dword ptr [esp+0C]
 005C2997    mov        eax,ebx
 005C2999    call       005A60C8
 005C299E    mov        edx,dword ptr [esp+10]
 005C29A2    mov        eax,ebx
 005C29A4    call       005A60C8
 005C29A9    add        esp,14
 005C29AC    pop        edi
 005C29AD    pop        esi
 005C29AE    pop        ebx
 005C29AF    ret
*}
//end;

//005C29B0
//function sub_005C29B0(?:TArrayType; ?:?):?;
//begin
{*
 005C29B0    push       ebx
 005C29B1    push       esi
 005C29B2    mov        esi,edx
 005C29B4    mov        ebx,eax
 005C29B6    test       esi,esi
>005C29B8    jl         005C29C5
 005C29BA    mov        eax,ebx
 005C29BC    call       005C2A6C
 005C29C1    cmp        esi,eax
>005C29C3    jl         005C29CA
 005C29C5    xor        eax,eax
 005C29C7    pop        esi
 005C29C8    pop        ebx
 005C29C9    ret
 005C29CA    mov        edx,esi
 005C29CC    mov        eax,dword ptr [ebx+18]; TArrayType.?f18:TList
 005C29CF    call       TList.Get
 005C29D4    mov        eax,dword ptr [eax]
 005C29D6    pop        esi
 005C29D7    pop        ebx
 005C29D8    ret
*}
//end;

//005C29DC
//function sub_005C29DC(?:TArrayType; ?:?):?;
//begin
{*
 005C29DC    push       ebx
 005C29DD    push       esi
 005C29DE    mov        esi,edx
 005C29E0    mov        ebx,eax
 005C29E2    test       esi,esi
>005C29E4    jl         005C29F1
 005C29E6    mov        eax,ebx
 005C29E8    call       005C2A6C
 005C29ED    cmp        esi,eax
>005C29EF    jl         005C29F6
 005C29F1    xor        eax,eax
 005C29F3    pop        esi
 005C29F4    pop        ebx
 005C29F5    ret
 005C29F6    mov        edx,esi
 005C29F8    mov        eax,dword ptr [ebx+18]; TArrayType.?f18:TList
 005C29FB    call       TList.Get
 005C2A00    mov        eax,dword ptr [eax+4]
 005C2A03    pop        esi
 005C2A04    pop        ebx
 005C2A05    ret
*}
//end;

//005C2A08
//function sub_005C2A08(?:TArrayType; ?:?):?;
//begin
{*
 005C2A08    push       ebx
 005C2A09    push       esi
 005C2A0A    mov        esi,edx
 005C2A0C    mov        ebx,eax
 005C2A0E    mov        edx,esi
 005C2A10    mov        eax,ebx
 005C2A12    call       005C29DC
 005C2A17    push       eax
 005C2A18    mov        edx,esi
 005C2A1A    mov        eax,ebx
 005C2A1C    call       005C29B0
 005C2A21    pop        edx
 005C2A22    xchg       eax,edx
 005C2A23    sub        eax,edx
 005C2A25    inc        eax
 005C2A26    pop        esi
 005C2A27    pop        ebx
 005C2A28    ret
*}
//end;

//005C2A2C
//function sub_005C2A2C(?:TArrayType; ?:?):?;
//begin
{*
 005C2A2C    push       ebx
 005C2A2D    push       esi
 005C2A2E    push       edi
 005C2A2F    push       ebp
 005C2A30    mov        esi,edx
 005C2A32    mov        ebx,eax
 005C2A34    mov        eax,ebx
 005C2A36    call       005C2A6C
 005C2A3B    dec        eax
 005C2A3C    cmp        esi,eax
>005C2A3E    jne        005C2A49
 005C2A40    mov        eax,dword ptr [ebx+14]; TArrayType.?f14:dword
 005C2A43    mov        edx,dword ptr [eax]
 005C2A45    call       dword ptr [edx]
>005C2A47    jmp        005C2A65
 005C2A49    lea        edi,[esi+1]
 005C2A4C    mov        edx,edi
 005C2A4E    mov        eax,ebx
 005C2A50    call       005C2A08
 005C2A55    mov        ebp,eax
 005C2A57    mov        edx,edi
 005C2A59    mov        eax,ebx
 005C2A5B    call       005C2A2C
 005C2A60    imul       ebp,eax
 005C2A63    mov        eax,ebp
 005C2A65    pop        ebp
 005C2A66    pop        edi
 005C2A67    pop        esi
 005C2A68    pop        ebx
 005C2A69    ret
*}
//end;

//005C2A6C
//function sub_005C2A6C(?:TArrayType):?;
//begin
{*
 005C2A6C    mov        eax,dword ptr [eax+18]; TArrayType.?f18:TList
 005C2A6F    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 005C2A72    ret
*}
//end;

//005C2A74
//function sub_005C2A74(?:?):?;
//begin
{*
 005C2A74    push       ebx
 005C2A75    mov        ebx,eax
 005C2A77    cmp        dword ptr [ebx+8],0; TArrayType.?f8:dword
>005C2A7B    jne        005C2A8A
 005C2A7D    or         edx,0FFFFFFFF
 005C2A80    mov        eax,ebx
 005C2A82    call       005C2A2C
 005C2A87    mov        dword ptr [ebx+8],eax; TArrayType.?f8:dword
 005C2A8A    mov        eax,dword ptr [ebx+8]; TArrayType.?f8:dword
 005C2A8D    pop        ebx
 005C2A8E    ret
*}
//end;

//005C2A90
procedure sub_005C2A90;
begin
{*
 005C2A90    mov        eax,dword ptr [eax+14]; TArrayType.?f14:dword
 005C2A93    mov        edx,dword ptr [eax]
 005C2A95    call       dword ptr [edx+0C]
 005C2A98    ret
*}
end;

//005C2A9C
//procedure sub_005C2A9C(?:?);
//begin
{*
 005C2A9C    push       ebx
 005C2A9D    push       esi
 005C2A9E    push       edi
 005C2A9F    push       ebp
 005C2AA0    push       ecx
 005C2AA1    mov        edi,edx
 005C2AA3    mov        esi,eax
 005C2AA5    mov        eax,dword ptr [esi+14]; TArrayType.?f14:dword
 005C2AA8    mov        edx,dword ptr [eax]
 005C2AAA    call       dword ptr [edx+0C]
 005C2AAD    test       al,al
>005C2AAF    je         005C2AFB
 005C2AB1    mov        dword ptr [esp],1
 005C2AB8    mov        eax,esi
 005C2ABA    call       005C2A6C
 005C2ABF    mov        ebx,eax
 005C2AC1    dec        ebx
 005C2AC2    test       ebx,ebx
>005C2AC4    jl         005C2ADC
 005C2AC6    inc        ebx
 005C2AC7    xor        ebp,ebp
 005C2AC9    mov        edx,ebp
 005C2ACB    mov        eax,esi
 005C2ACD    call       005C2A08
 005C2AD2    imul       dword ptr [esp]
 005C2AD5    mov        dword ptr [esp],eax
 005C2AD8    inc        ebp
 005C2AD9    dec        ebx
<005C2ADA    jne        005C2AC9
 005C2ADC    mov        eax,dword ptr [esi+14]; TArrayType.?f14:dword
 005C2ADF    mov        edx,dword ptr [eax]
 005C2AE1    call       dword ptr [edx]
 005C2AE3    mov        ebp,eax
 005C2AE5    mov        ebx,dword ptr [esp]
 005C2AE8    test       ebx,ebx
>005C2AEA    jle        005C2AFB
 005C2AEC    mov        edx,edi
 005C2AEE    mov        eax,dword ptr [esi+14]; TArrayType.?f14:dword
 005C2AF1    mov        ecx,dword ptr [eax]
 005C2AF3    call       dword ptr [ecx+10]
 005C2AF6    add        edi,ebp
 005C2AF8    dec        ebx
<005C2AF9    jne        005C2AEC
 005C2AFB    pop        edx
 005C2AFC    pop        ebp
 005C2AFD    pop        edi
 005C2AFE    pop        esi
 005C2AFF    pop        ebx
 005C2B00    ret
*}
//end;

//005C2B04
//constructor sub_005C2B04(?:?; ?:?);
//begin
{*
 005C2B04    push       ebp
 005C2B05    mov        ebp,esp
 005C2B07    add        esp,0FFFFFFF4
 005C2B0A    push       ebx
 005C2B0B    push       esi
 005C2B0C    test       dl,dl
>005C2B0E    je         005C2B18
 005C2B10    add        esp,0FFFFFFF0
 005C2B13    call       @ClassCreate
 005C2B18    mov        dword ptr [ebp-8],ecx
 005C2B1B    mov        byte ptr [ebp-1],dl
 005C2B1E    mov        ebx,eax
 005C2B20    mov        esi,dword ptr [ebp+0C]
 005C2B23    mov        eax,esi
 005C2B25    call       005A6198
 005C2B2A    mov        byte ptr [ebx+8],al; TStructureMember.?f8:byte
 005C2B2D    mov        eax,esi
 005C2B2F    call       005A61E0
 005C2B34    mov        dword ptr [ebp-0C],eax
 005C2B37    mov        eax,esi
 005C2B39    call       005A61E0
 005C2B3E    mov        esi,eax
 005C2B40    mov        ecx,esi
 005C2B42    mov        edx,dword ptr [ebp-0C]
 005C2B45    mov        eax,dword ptr [ebp-8]
 005C2B48    mov        esi,dword ptr [eax]
 005C2B4A    call       dword ptr [esi]
 005C2B4C    mov        dword ptr [ebx+4],eax; TStructureMember.?f4:dword
 005C2B4F    mov        eax,dword ptr [ebp+8]
 005C2B52    mov        dword ptr [ebx+0C],eax; TStructureMember.?fC:dword
 005C2B55    mov        eax,ebx
 005C2B57    cmp        byte ptr [ebp-1],0
>005C2B5B    je         005C2B6C
 005C2B5D    call       @AfterConstruction
 005C2B62    pop        dword ptr fs:[0]
 005C2B69    add        esp,0C
 005C2B6C    mov        eax,ebx
 005C2B6E    pop        esi
 005C2B6F    pop        ebx
 005C2B70    mov        esp,ebp
 005C2B72    pop        ebp
 005C2B73    ret        8
*}
//end;

//005C2B78
//procedure sub_005C2B78(?:?; ?:?);
//begin
{*
 005C2B78    push       ebx
 005C2B79    push       esi
 005C2B7A    push       edi
 005C2B7B    add        esp,0FFFFFFF8
 005C2B7E    mov        esi,ecx
 005C2B80    mov        edi,edx
 005C2B82    mov        ebx,eax
 005C2B84    mov        dl,byte ptr [ebx+8]; TStructureMember.?f8:byte
 005C2B87    mov        eax,esi
 005C2B89    call       005A6040
 005C2B8E    lea        eax,[esp+4]
 005C2B92    push       eax
 005C2B93    lea        ecx,[esp+4]
 005C2B97    mov        edx,dword ptr [ebx+4]; TStructureMember.?f4:dword
 005C2B9A    mov        eax,edi
 005C2B9C    mov        ebx,dword ptr [eax]
 005C2B9E    call       dword ptr [ebx+4]
 005C2BA1    mov        edx,dword ptr [esp]
 005C2BA4    mov        eax,esi
 005C2BA6    call       005A60C8
 005C2BAB    mov        edx,dword ptr [esp+4]
 005C2BAF    mov        eax,esi
 005C2BB1    call       005A60C8
 005C2BB6    pop        ecx
 005C2BB7    pop        edx
 005C2BB8    pop        edi
 005C2BB9    pop        esi
 005C2BBA    pop        ebx
 005C2BBB    ret
*}
//end;

//005C2BBC
//constructor sub_005C2BBC(?:?; ?:?);
//begin
{*
 005C2BBC    push       ebp
 005C2BBD    mov        ebp,esp
 005C2BBF    push       ecx
 005C2BC0    push       ebx
 005C2BC1    push       esi
 005C2BC2    test       dl,dl
>005C2BC4    je         005C2BCE
 005C2BC6    add        esp,0FFFFFFF0
 005C2BC9    call       @ClassCreate
 005C2BCE    mov        byte ptr [ebp-1],dl
 005C2BD1    mov        ebx,eax
 005C2BD3    mov        esi,dword ptr [ebp+0C]
 005C2BD6    push       esi
 005C2BD7    mov        eax,dword ptr [ebp+8]
 005C2BDA    push       eax
 005C2BDB    xor        edx,edx
 005C2BDD    mov        eax,ebx
 005C2BDF    call       005C2B04
 005C2BE4    mov        eax,esi
 005C2BE6    call       005A6198
 005C2BEB    mov        byte ptr [ebx+10],al; TClassMember.?f10:byte
 005C2BEE    mov        eax,ebx
 005C2BF0    cmp        byte ptr [ebp-1],0
>005C2BF4    je         005C2C05
 005C2BF6    call       @AfterConstruction
 005C2BFB    pop        dword ptr fs:[0]
 005C2C02    add        esp,0C
 005C2C05    mov        eax,ebx
 005C2C07    pop        esi
 005C2C08    pop        ebx
 005C2C09    pop        ecx
 005C2C0A    pop        ebp
 005C2C0B    ret        8
*}
//end;

//005C2C10
//procedure sub_005C2C10(?:?; ?:?);
//begin
{*
 005C2C10    push       ebx
 005C2C11    push       esi
 005C2C12    mov        esi,ecx
 005C2C14    mov        ebx,eax
 005C2C16    mov        ecx,esi
 005C2C18    mov        eax,ebx
 005C2C1A    call       005C2B78
 005C2C1F    mov        dl,byte ptr [ebx+10]; TClassMember.?f10:byte
 005C2C22    mov        eax,esi
 005C2C24    call       005A6040
 005C2C29    pop        esi
 005C2C2A    pop        ebx
 005C2C2B    ret
*}
//end;

//005C2C2C
//constructor sub_005C2C2C(?:?; ?:?);
//begin
{*
 005C2C2C    push       ebp
 005C2C2D    mov        ebp,esp
 005C2C2F    push       ecx
 005C2C30    push       ebx
 005C2C31    push       esi
 005C2C32    test       dl,dl
>005C2C34    je         005C2C3E
 005C2C36    add        esp,0FFFFFFF0
 005C2C39    call       @ClassCreate
 005C2C3E    mov        byte ptr [ebp-1],dl
 005C2C41    mov        ebx,eax
 005C2C43    mov        esi,dword ptr [ebp+0C]
 005C2C46    push       esi
 005C2C47    mov        eax,dword ptr [ebp+8]
 005C2C4A    push       eax
 005C2C4B    xor        edx,edx
 005C2C4D    mov        eax,ebx
 005C2C4F    call       005C2BBC
 005C2C54    lea        edx,[ebx+14]; TMethodMember.?f14:?
 005C2C57    mov        ecx,1
 005C2C5C    mov        eax,esi
 005C2C5E    call       005A62A0
 005C2C63    mov        eax,ebx
 005C2C65    cmp        byte ptr [ebp-1],0
>005C2C69    je         005C2C7A
 005C2C6B    call       @AfterConstruction
 005C2C70    pop        dword ptr fs:[0]
 005C2C77    add        esp,0C
 005C2C7A    mov        eax,ebx
 005C2C7C    pop        esi
 005C2C7D    pop        ebx
 005C2C7E    pop        ecx
 005C2C7F    pop        ebp
 005C2C80    ret        8
*}
//end;

//005C2C84
//procedure sub_005C2C84(?:?; ?:?);
//begin
{*
 005C2C84    push       ebx
 005C2C85    push       esi
 005C2C86    mov        esi,ecx
 005C2C88    mov        ebx,eax
 005C2C8A    mov        ecx,esi
 005C2C8C    mov        eax,ebx
 005C2C8E    call       005C2C10
 005C2C93    lea        edx,[ebx+14]; TMethodMember.?f14:?
 005C2C96    mov        ecx,1
 005C2C9B    mov        eax,esi
 005C2C9D    call       005A618C
 005C2CA2    pop        esi
 005C2CA3    pop        ebx
 005C2CA4    ret
*}
//end;

//005C2CA8
//constructor sub_005C2CA8(?:?; ?:?);
//begin
{*
 005C2CA8    push       ebp
 005C2CA9    mov        ebp,esp
 005C2CAB    push       ecx
 005C2CAC    push       ebx
 005C2CAD    push       esi
 005C2CAE    test       dl,dl
>005C2CB0    je         005C2CBA
 005C2CB2    add        esp,0FFFFFFF0
 005C2CB5    call       @ClassCreate
 005C2CBA    mov        byte ptr [ebp-1],dl
 005C2CBD    mov        ebx,eax
 005C2CBF    mov        esi,dword ptr [ebp+0C]
 005C2CC2    push       esi
 005C2CC3    mov        eax,dword ptr [ebp+8]
 005C2CC6    push       eax
 005C2CC7    xor        edx,edx
 005C2CC9    mov        eax,ebx
 005C2CCB    call       005C2BBC
 005C2CD0    mov        eax,esi
 005C2CD2    call       005A61E0
 005C2CD7    mov        dword ptr [ebx+14],eax; TPropertyMember.?f14:dword
 005C2CDA    mov        eax,esi
 005C2CDC    call       005A61E0
 005C2CE1    mov        dword ptr [ebx+18],eax; TPropertyMember.?f18:dword
 005C2CE4    mov        eax,ebx
 005C2CE6    cmp        byte ptr [ebp-1],0
>005C2CEA    je         005C2CFB
 005C2CEC    call       @AfterConstruction
 005C2CF1    pop        dword ptr fs:[0]
 005C2CF8    add        esp,0C
 005C2CFB    mov        eax,ebx
 005C2CFD    pop        esi
 005C2CFE    pop        ebx
 005C2CFF    pop        ecx
 005C2D00    pop        ebp
 005C2D01    ret        8
*}
//end;

//005C2D04
//procedure sub_005C2D04(?:?; ?:?);
//begin
{*
 005C2D04    push       ebx
 005C2D05    push       esi
 005C2D06    mov        esi,ecx
 005C2D08    mov        ebx,eax
 005C2D0A    mov        ecx,esi
 005C2D0C    mov        eax,ebx
 005C2D0E    call       005C2C10
 005C2D13    mov        edx,dword ptr [ebx+14]; TPropertyMember.?f14:dword
 005C2D16    mov        eax,esi
 005C2D18    call       005A60C8
 005C2D1D    mov        edx,dword ptr [ebx+18]; TPropertyMember.?f18:dword
 005C2D20    mov        eax,esi
 005C2D22    call       005A60C8
 005C2D27    pop        esi
 005C2D28    pop        ebx
 005C2D29    ret
*}
//end;

//005C2D2C
destructor TStructureType.Destroy;
begin
{*
 005C2D2C    push       ebx
 005C2D2D    push       esi
 005C2D2E    call       @BeforeDestruction
 005C2D33    mov        ebx,edx
 005C2D35    mov        esi,eax
 005C2D37    mov        eax,dword ptr [esi+14]; TStructureType.?f14:TStringList
 005C2D3A    call       005A5904
 005C2D3F    lea        eax,[esi+14]; TStructureType.?f14:TStringList
 005C2D42    call       FreeAndNil
 005C2D47    mov        edx,ebx
 005C2D49    and        dl,0FC
 005C2D4C    mov        eax,esi
 005C2D4E    call       TObject.Destroy
 005C2D53    test       bl,bl
>005C2D55    jle        005C2D5E
 005C2D57    mov        eax,esi
 005C2D59    call       @ClassDestroy
 005C2D5E    pop        esi
 005C2D5F    pop        ebx
 005C2D60    ret
*}
end;

//005C2D64
//constructor sub_005C2D64(?:?);
//begin
{*
 005C2D64    push       ebp
 005C2D65    mov        ebp,esp
 005C2D67    add        esp,0FFFFFFEC
 005C2D6A    push       ebx
 005C2D6B    push       esi
 005C2D6C    push       edi
 005C2D6D    xor        ebx,ebx
 005C2D6F    mov        dword ptr [ebp-0C],ebx
 005C2D72    test       dl,dl
>005C2D74    je         005C2D7E
 005C2D76    add        esp,0FFFFFFF0
 005C2D79    call       @ClassCreate
 005C2D7E    mov        dword ptr [ebp-8],ecx
 005C2D81    mov        byte ptr [ebp-1],dl
 005C2D84    mov        esi,eax
 005C2D86    mov        ebx,dword ptr [ebp+8]
 005C2D89    xor        eax,eax
 005C2D8B    push       ebp
 005C2D8C    push       5C2E25
 005C2D91    push       dword ptr fs:[eax]
 005C2D94    mov        dword ptr fs:[eax],esp
 005C2D97    push       ebx
 005C2D98    mov        ecx,dword ptr [ebp-8]
 005C2D9B    xor        edx,edx
 005C2D9D    mov        eax,esi
 005C2D9F    call       005C2558
 005C2DA4    mov        dl,1
 005C2DA6    mov        eax,[0041C8E4]; TStringList
 005C2DAB    call       TObject.Create; TStringList.Create
 005C2DB0    mov        dword ptr [esi+14],eax; TRecordType.?f14:TStringList
 005C2DB3    mov        eax,ebx
 005C2DB5    call       005A61E0
 005C2DBA    test       eax,eax
>005C2DBC    jle        005C2E0F
 005C2DBE    mov        dword ptr [ebp-14],eax
 005C2DC1    lea        edx,[ebp-0C]
 005C2DC4    mov        eax,ebx
 005C2DC6    call       005A61AC
 005C2DCB    mov        eax,ebx
 005C2DCD    call       005A601C
 005C2DD2    lea        edx,[ebp-0D]
 005C2DD5    mov        ecx,1
 005C2DDA    mov        eax,ebx
 005C2DDC    call       005A62A0
 005C2DE1    mov        eax,ebx
 005C2DE3    call       005A602C
 005C2DE8    push       ebx
 005C2DE9    push       esi
 005C2DEA    xor        eax,eax
 005C2DEC    mov        al,byte ptr [ebp-0D]
 005C2DEF    mov        eax,dword ptr [eax*4+6172A8]
 005C2DF6    mov        ecx,dword ptr [ebp-8]
 005C2DF9    mov        dl,1
 005C2DFB    call       dword ptr [eax]
 005C2DFD    mov        ecx,eax
 005C2DFF    mov        eax,dword ptr [esi+14]; TRecordType.?f14:TStringList
 005C2E02    mov        edx,dword ptr [ebp-0C]
 005C2E05    mov        edi,dword ptr [eax]
 005C2E07    call       dword ptr [edi+3C]; TStringList.AddObject
 005C2E0A    dec        dword ptr [ebp-14]
<005C2E0D    jne        005C2DC1
 005C2E0F    xor        eax,eax
 005C2E11    pop        edx
 005C2E12    pop        ecx
 005C2E13    pop        ecx
 005C2E14    mov        dword ptr fs:[eax],edx
 005C2E17    push       5C2E2C
 005C2E1C    lea        eax,[ebp-0C]
 005C2E1F    call       @LStrClr
 005C2E24    ret
<005C2E25    jmp        @HandleFinally
<005C2E2A    jmp        005C2E1C
 005C2E2C    mov        eax,esi
 005C2E2E    cmp        byte ptr [ebp-1],0
>005C2E32    je         005C2E43
 005C2E34    call       @AfterConstruction
 005C2E39    pop        dword ptr fs:[0]
 005C2E40    add        esp,0C
 005C2E43    mov        eax,esi
 005C2E45    pop        edi
 005C2E46    pop        esi
 005C2E47    pop        ebx
 005C2E48    mov        esp,ebp
 005C2E4A    pop        ebp
 005C2E4B    ret        4
*}
//end;

//005C2E50
//procedure sub_005C2E50(?:?; ?:?);
//begin
{*
 005C2E50    push       ebp
 005C2E51    mov        ebp,esp
 005C2E53    add        esp,0FFFFFFF0
 005C2E56    push       ebx
 005C2E57    push       esi
 005C2E58    push       edi
 005C2E59    xor        ebx,ebx
 005C2E5B    mov        dword ptr [ebp-10],ebx
 005C2E5E    mov        dword ptr [ebp-8],ecx
 005C2E61    mov        dword ptr [ebp-4],edx
 005C2E64    mov        ebx,eax
 005C2E66    xor        eax,eax
 005C2E68    push       ebp
 005C2E69    push       5C2EEF
 005C2E6E    push       dword ptr fs:[eax]
 005C2E71    mov        dword ptr fs:[eax],esp
 005C2E74    mov        ecx,dword ptr [ebp-8]
 005C2E77    mov        edx,dword ptr [ebp-4]
 005C2E7A    mov        eax,ebx
 005C2E7C    call       005C25CC
 005C2E81    mov        eax,dword ptr [ebx+14]; TStructureType.?f14:TStringList
 005C2E84    mov        edx,dword ptr [eax]
 005C2E86    call       dword ptr [edx+14]; TStringList.GetCount
 005C2E89    mov        edx,eax
 005C2E8B    mov        eax,dword ptr [ebp-8]
 005C2E8E    call       005A60C8
 005C2E93    mov        eax,dword ptr [ebx+14]; TStructureType.?f14:TStringList
 005C2E96    mov        edx,dword ptr [eax]
 005C2E98    call       dword ptr [edx+14]; TStringList.GetCount
 005C2E9B    dec        eax
 005C2E9C    test       eax,eax
>005C2E9E    jl         005C2ED9
 005C2EA0    inc        eax
 005C2EA1    mov        dword ptr [ebp-0C],eax
 005C2EA4    xor        esi,esi
 005C2EA6    lea        ecx,[ebp-10]
 005C2EA9    mov        edx,esi
 005C2EAB    mov        eax,dword ptr [ebx+14]; TStructureType.?f14:TStringList
 005C2EAE    mov        edi,dword ptr [eax]
 005C2EB0    call       dword ptr [edi+0C]; TStringList.Get
 005C2EB3    mov        edx,dword ptr [ebp-10]
 005C2EB6    mov        eax,dword ptr [ebp-8]
 005C2EB9    call       005A6054
 005C2EBE    mov        edx,esi
 005C2EC0    mov        eax,dword ptr [ebx+14]; TStructureType.?f14:TStringList
 005C2EC3    mov        ecx,dword ptr [eax]
 005C2EC5    call       dword ptr [ecx+18]; TStringList.GetObject
 005C2EC8    mov        ecx,dword ptr [ebp-8]
 005C2ECB    mov        edx,dword ptr [ebp-4]
 005C2ECE    mov        edi,dword ptr [eax]
 005C2ED0    call       dword ptr [edi+4]
 005C2ED3    inc        esi
 005C2ED4    dec        dword ptr [ebp-0C]
<005C2ED7    jne        005C2EA6
 005C2ED9    xor        eax,eax
 005C2EDB    pop        edx
 005C2EDC    pop        ecx
 005C2EDD    pop        ecx
 005C2EDE    mov        dword ptr fs:[eax],edx
 005C2EE1    push       5C2EF6
 005C2EE6    lea        eax,[ebp-10]
 005C2EE9    call       @LStrClr
 005C2EEE    ret
<005C2EEF    jmp        @HandleFinally
<005C2EF4    jmp        005C2EE6
 005C2EF6    pop        edi
 005C2EF7    pop        esi
 005C2EF8    pop        ebx
 005C2EF9    mov        esp,ebp
 005C2EFB    pop        ebp
 005C2EFC    ret
*}
//end;

//005C2F00
//function sub_005C2F00:?;
//begin
{*
 005C2F00    push       ebx
 005C2F01    push       esi
 005C2F02    push       edi
 005C2F03    mov        ebx,eax
 005C2F05    cmp        dword ptr [ebx+8],0; TRecordType.?f8:dword
>005C2F09    jne        005C2F3A
 005C2F0B    xor        eax,eax
 005C2F0D    mov        dword ptr [ebx+8],eax; TRecordType.?f8:dword
 005C2F10    mov        eax,dword ptr [ebx+14]; TRecordType.?f14:TStringList
 005C2F13    mov        edx,dword ptr [eax]
 005C2F15    call       dword ptr [edx+14]; TStringList.GetCount
 005C2F18    mov        esi,eax
 005C2F1A    dec        esi
 005C2F1B    test       esi,esi
>005C2F1D    jl         005C2F3A
 005C2F1F    inc        esi
 005C2F20    xor        edi,edi
 005C2F22    mov        edx,edi
 005C2F24    mov        eax,dword ptr [ebx+14]; TRecordType.?f14:TStringList
 005C2F27    mov        ecx,dword ptr [eax]
 005C2F29    call       dword ptr [ecx+18]; TStringList.GetObject
 005C2F2C    mov        eax,dword ptr [eax+4]
 005C2F2F    mov        edx,dword ptr [eax]
 005C2F31    call       dword ptr [edx]
 005C2F33    add        dword ptr [ebx+8],eax; TRecordType.?f8:dword
 005C2F36    inc        edi
 005C2F37    dec        esi
<005C2F38    jne        005C2F22
 005C2F3A    mov        eax,dword ptr [ebx+8]; TRecordType.?f8:dword
 005C2F3D    pop        edi
 005C2F3E    pop        esi
 005C2F3F    pop        ebx
 005C2F40    ret
*}
//end;

//005C2F44
//function sub_005C2F44(?:AnsiString; ?:?; ?:?; ?:?):?;
//begin
{*
 005C2F44    push       ebp
 005C2F45    mov        ebp,esp
 005C2F47    add        esp,0FFFFFFF0
 005C2F4A    push       ebx
 005C2F4B    push       esi
 005C2F4C    push       edi
 005C2F4D    xor        ebx,ebx
 005C2F4F    mov        dword ptr [ebp-10],ebx
 005C2F52    mov        dword ptr [ebp-4],edx
 005C2F55    mov        esi,eax
 005C2F57    mov        eax,dword ptr [ebp-4]
 005C2F5A    call       @LStrAddRef
 005C2F5F    xor        eax,eax
 005C2F61    push       ebp
 005C2F62    push       5C300D
 005C2F67    push       dword ptr fs:[eax]
 005C2F6A    mov        dword ptr fs:[eax],esp
 005C2F6D    mov        eax,dword ptr [ebp+10]
 005C2F70    mov        edx,dword ptr [esi+18]; TStructureType.?f18:dword
 005C2F73    mov        dword ptr [eax],edx
 005C2F75    mov        eax,dword ptr [esi+14]; TStructureType.?f14:TStringList
 005C2F78    mov        edx,dword ptr [eax]
 005C2F7A    call       dword ptr [edx+14]; TStringList.GetCount
 005C2F7D    dec        eax
 005C2F7E    test       eax,eax
>005C2F80    jl         005C2FD6
 005C2F82    inc        eax
 005C2F83    mov        dword ptr [ebp-0C],eax
 005C2F86    xor        ebx,ebx
 005C2F88    mov        edx,ebx
 005C2F8A    mov        eax,dword ptr [esi+14]; TStructureType.?f14:TStringList
 005C2F8D    mov        ecx,dword ptr [eax]
 005C2F8F    call       dword ptr [ecx+18]; TStringList.GetObject
 005C2F92    mov        edx,dword ptr [ebp+0C]
 005C2F95    mov        dword ptr [edx],eax
 005C2F97    lea        ecx,[ebp-10]
 005C2F9A    mov        edx,ebx
 005C2F9C    mov        eax,dword ptr [esi+14]; TStructureType.?f14:TStringList
 005C2F9F    mov        edi,dword ptr [eax]
 005C2FA1    call       dword ptr [edi+0C]; TStringList.Get
 005C2FA4    mov        edx,dword ptr [ebp-10]
 005C2FA7    mov        eax,dword ptr [ebp-4]
 005C2FAA    call       005A5948
 005C2FAF    test       al,al
>005C2FB1    je         005C2FBF
 005C2FB3    mov        byte ptr [ebp-5],1
 005C2FB7    inc        ebx
 005C2FB8    mov        eax,dword ptr [ebp+8]
 005C2FBB    mov        dword ptr [eax],ebx
>005C2FBD    jmp        005C2FEF
 005C2FBF    mov        eax,dword ptr [ebp+0C]
 005C2FC2    mov        eax,dword ptr [eax]
 005C2FC4    mov        eax,dword ptr [eax+4]
 005C2FC7    mov        edx,dword ptr [eax]
 005C2FC9    call       dword ptr [edx]
 005C2FCB    mov        edx,dword ptr [ebp+10]
 005C2FCE    add        dword ptr [edx],eax
 005C2FD0    inc        ebx
 005C2FD1    dec        dword ptr [ebp-0C]
<005C2FD4    jne        005C2F88
 005C2FD6    mov        eax,dword ptr [ebp+10]
 005C2FD9    xor        edx,edx
 005C2FDB    mov        dword ptr [eax],edx
 005C2FDD    mov        eax,dword ptr [ebp+0C]
 005C2FE0    xor        edx,edx
 005C2FE2    mov        dword ptr [eax],edx
 005C2FE4    mov        eax,dword ptr [ebp+8]
 005C2FE7    xor        edx,edx
 005C2FE9    mov        dword ptr [eax],edx
 005C2FEB    mov        byte ptr [ebp-5],0
 005C2FEF    xor        eax,eax
 005C2FF1    pop        edx
 005C2FF2    pop        ecx
 005C2FF3    pop        ecx
 005C2FF4    mov        dword ptr fs:[eax],edx
 005C2FF7    push       5C3014
 005C2FFC    lea        eax,[ebp-10]
 005C2FFF    call       @LStrClr
 005C3004    lea        eax,[ebp-4]
 005C3007    call       @LStrClr
 005C300C    ret
<005C300D    jmp        @HandleFinally
<005C3012    jmp        005C2FFC
 005C3014    mov        al,byte ptr [ebp-5]
 005C3017    pop        edi
 005C3018    pop        esi
 005C3019    pop        ebx
 005C301A    mov        esp,ebp
 005C301C    pop        ebp
 005C301D    ret        0C
*}
//end;

//005C3020
//function sub_005C3020:?;
//begin
{*
 005C3020    push       ebx
 005C3021    push       esi
 005C3022    push       edi
 005C3023    push       ecx
 005C3024    mov        dword ptr [esp],eax
 005C3027    xor        ebx,ebx
 005C3029    mov        eax,dword ptr [esp]
 005C302C    mov        eax,dword ptr [eax+14]
 005C302F    mov        edx,dword ptr [eax]
 005C3031    call       dword ptr [edx+14]
 005C3034    mov        esi,eax
 005C3036    dec        esi
 005C3037    test       esi,esi
>005C3039    jl         005C305D
 005C303B    inc        esi
 005C303C    xor        edi,edi
 005C303E    mov        eax,dword ptr [esp]
 005C3041    mov        eax,dword ptr [eax+14]
 005C3044    mov        edx,edi
 005C3046    mov        ecx,dword ptr [eax]
 005C3048    call       dword ptr [ecx+18]
 005C304B    mov        eax,dword ptr [eax+4]
 005C304E    mov        edx,dword ptr [eax]
 005C3050    call       dword ptr [edx+0C]
 005C3053    mov        ebx,eax
 005C3055    test       bl,bl
>005C3057    jne        005C305D
 005C3059    inc        edi
 005C305A    dec        esi
<005C305B    jne        005C303E
 005C305D    mov        eax,ebx
 005C305F    pop        edx
 005C3060    pop        edi
 005C3061    pop        esi
 005C3062    pop        ebx
 005C3063    ret
*}
//end;

//005C3064
//procedure sub_005C3064(?:?);
//begin
{*
 005C3064    push       ebx
 005C3065    push       esi
 005C3066    push       edi
 005C3067    push       ebp
 005C3068    push       ecx
 005C3069    mov        ebx,edx
 005C306B    mov        dword ptr [esp],eax
 005C306E    mov        eax,dword ptr [esp]
 005C3071    mov        eax,dword ptr [eax+14]
 005C3074    mov        edx,dword ptr [eax]
 005C3076    call       dword ptr [edx+14]
 005C3079    mov        edi,eax
 005C307B    dec        edi
 005C307C    test       edi,edi
>005C307E    jl         005C30A9
 005C3080    inc        edi
 005C3081    xor        ebp,ebp
 005C3083    mov        eax,dword ptr [esp]
 005C3086    mov        eax,dword ptr [eax+14]
 005C3089    mov        edx,ebp
 005C308B    mov        ecx,dword ptr [eax]
 005C308D    call       dword ptr [ecx+18]
 005C3090    mov        esi,eax
 005C3092    mov        edx,ebx
 005C3094    mov        eax,esi
 005C3096    mov        ecx,dword ptr [eax]
 005C3098    call       dword ptr [ecx+10]
 005C309B    mov        eax,esi
 005C309D    mov        edx,dword ptr [eax]
 005C309F    call       dword ptr [edx]
 005C30A1    add        eax,ebx
 005C30A3    mov        ebx,eax
 005C30A5    inc        ebp
 005C30A6    dec        edi
<005C30A7    jne        005C3083
 005C30A9    pop        edx
 005C30AA    pop        ebp
 005C30AB    pop        edi
 005C30AC    pop        esi
 005C30AD    pop        ebx
 005C30AE    ret
*}
//end;

//005C30B0
//constructor sub_005C30B0(?:?);
//begin
{*
 005C30B0    push       ebp
 005C30B1    mov        ebp,esp
 005C30B3    add        esp,0FFFFFFEC
 005C30B6    push       ebx
 005C30B7    push       esi
 005C30B8    xor        ebx,ebx
 005C30BA    mov        dword ptr [ebp-14],ebx
 005C30BD    test       dl,dl
>005C30BF    je         005C30C9
 005C30C1    add        esp,0FFFFFFF0
 005C30C4    call       @ClassCreate
 005C30C9    mov        dword ptr [ebp-8],ecx
 005C30CC    mov        byte ptr [ebp-1],dl
 005C30CF    mov        ebx,eax
 005C30D1    mov        esi,dword ptr [ebp+8]
 005C30D4    xor        eax,eax
 005C30D6    push       ebp
 005C30D7    push       5C3157
 005C30DC    push       dword ptr fs:[eax]
 005C30DF    mov        dword ptr fs:[eax],esp
 005C30E2    push       esi
 005C30E3    mov        ecx,dword ptr [ebp-8]
 005C30E6    xor        edx,edx
 005C30E8    mov        eax,ebx
 005C30EA    call       005C2D64
 005C30EF    mov        byte ptr [ebx+5],5; TClassType.?f5:?
 005C30F3    mov        eax,esi
 005C30F5    call       005A61E0
 005C30FA    mov        dword ptr [ebp-0C],eax
 005C30FD    mov        eax,esi
 005C30FF    call       005A61E0
 005C3104    mov        dword ptr [ebp-10],eax
 005C3107    lea        edx,[ebp-14]
 005C310A    mov        eax,esi
 005C310C    call       005A61AC
 005C3111    mov        edx,dword ptr [ebp-14]
 005C3114    lea        eax,[ebx+24]; TClassType.?f24:String
 005C3117    call       @LStrAsg
 005C311C    mov        eax,esi
 005C311E    call       005A61E0
 005C3123    mov        dword ptr [ebx+1C],eax; TClassType.?f1C:dword
 005C3126    mov        ecx,dword ptr [ebp-10]
 005C3129    mov        edx,dword ptr [ebp-0C]
 005C312C    mov        eax,dword ptr [ebp-8]
 005C312F    mov        esi,dword ptr [eax]
 005C3131    call       dword ptr [esi]
 005C3133    mov        edx,dword ptr ds:[5C2418]; TClassType
 005C3139    call       @AsClass
 005C313E    mov        dword ptr [ebx+20],eax; TClassType.?f20:TClassType
 005C3141    xor        eax,eax
 005C3143    pop        edx
 005C3144    pop        ecx
 005C3145    pop        ecx
 005C3146    mov        dword ptr fs:[eax],edx
 005C3149    push       5C315E
 005C314E    lea        eax,[ebp-14]
 005C3151    call       @LStrClr
 005C3156    ret
<005C3157    jmp        @HandleFinally
<005C315C    jmp        005C314E
 005C315E    mov        eax,ebx
 005C3160    cmp        byte ptr [ebp-1],0
>005C3164    je         005C3175
 005C3166    call       @AfterConstruction
 005C316B    pop        dword ptr fs:[0]
 005C3172    add        esp,0C
 005C3175    mov        eax,ebx
 005C3177    pop        esi
 005C3178    pop        ebx
 005C3179    mov        esp,ebp
 005C317B    pop        ebp
 005C317C    ret        4
*}
//end;

//005C3180
//procedure sub_005C3180(?:?; ?:?);
//begin
{*
 005C3180    push       ebx
 005C3181    push       esi
 005C3182    push       edi
 005C3183    add        esp,0FFFFFFF8
 005C3186    mov        esi,ecx
 005C3188    mov        edi,edx
 005C318A    mov        ebx,eax
 005C318C    mov        ecx,esi
 005C318E    mov        edx,edi
 005C3190    mov        eax,ebx
 005C3192    call       005C2E50
 005C3197    mov        eax,dword ptr [ebx+20]; TClassType.?f20:TClassType
 005C319A    test       eax,eax
>005C319C    je         005C31C7
 005C319E    lea        edx,[esp+4]
 005C31A2    push       edx
 005C31A3    lea        ecx,[esp+4]
 005C31A7    mov        edx,eax
 005C31A9    mov        eax,edi
 005C31AB    mov        edi,dword ptr [eax]
 005C31AD    call       dword ptr [edi+4]
 005C31B0    mov        edx,dword ptr [esp]
 005C31B3    mov        eax,esi
 005C31B5    call       005A60C8
 005C31BA    mov        edx,dword ptr [esp+4]
 005C31BE    mov        eax,esi
 005C31C0    call       005A60C8
>005C31C5    jmp        005C31D9
 005C31C7    xor        edx,edx
 005C31C9    mov        eax,esi
 005C31CB    call       005A60C8
 005C31D0    xor        edx,edx
 005C31D2    mov        eax,esi
 005C31D4    call       005A60C8
 005C31D9    mov        edx,dword ptr [ebx+24]; TClassType.?f24:String
 005C31DC    mov        eax,esi
 005C31DE    call       005A6054
 005C31E3    mov        eax,ebx
 005C31E5    call       005C3204
 005C31EA    mov        edx,eax
 005C31EC    mov        eax,esi
 005C31EE    call       005A60C8
 005C31F3    pop        ecx
 005C31F4    pop        edx
 005C31F5    pop        edi
 005C31F6    pop        esi
 005C31F7    pop        ebx
 005C31F8    ret
*}
//end;

//005C31FC
//function sub_005C31FC():?;
//begin
{*
 005C31FC    mov        eax,4
 005C3201    ret
*}
//end;

//005C3204
//function sub_005C3204(?:TClassType):?;
//begin
{*
 005C3204    push       ebx
 005C3205    push       esi
 005C3206    push       edi
 005C3207    mov        ebx,eax
 005C3209    cmp        dword ptr [ebx+1C],0FFFFFFFF; TClassType.?f1C:dword
>005C320D    jne        005C3251
 005C320F    mov        esi,dword ptr [ebx+20]; TClassType.?f20:TClassType
 005C3212    test       esi,esi
>005C3214    je         005C3222
 005C3216    mov        eax,esi
 005C3218    call       005C3204
 005C321D    mov        dword ptr [ebx+1C],eax; TClassType.?f1C:dword
>005C3220    jmp        005C3227
 005C3222    xor        eax,eax
 005C3224    mov        dword ptr [ebx+1C],eax; TClassType.?f1C:dword
 005C3227    mov        eax,dword ptr [ebx+14]; TClassType.?f14:TStringList
 005C322A    mov        edx,dword ptr [eax]
 005C322C    call       dword ptr [edx+14]; TStringList.GetCount
 005C322F    mov        esi,eax
 005C3231    dec        esi
 005C3232    test       esi,esi
>005C3234    jl         005C3251
 005C3236    inc        esi
 005C3237    xor        edi,edi
 005C3239    mov        edx,edi
 005C323B    mov        eax,dword ptr [ebx+14]; TClassType.?f14:TStringList
 005C323E    mov        ecx,dword ptr [eax]
 005C3240    call       dword ptr [ecx+18]; TStringList.GetObject
 005C3243    mov        eax,dword ptr [eax+4]
 005C3246    mov        edx,dword ptr [eax]
 005C3248    call       dword ptr [edx]
 005C324A    add        dword ptr [ebx+1C],eax; TClassType.?f1C:dword
 005C324D    inc        edi
 005C324E    dec        esi
<005C324F    jne        005C3239
 005C3251    mov        eax,dword ptr [ebx+1C]; TClassType.?f1C:dword
 005C3254    pop        edi
 005C3255    pop        esi
 005C3256    pop        ebx
 005C3257    ret
*}
//end;

//005C3258
//function sub_005C3258(?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 005C3258    push       ebp
 005C3259    mov        ebp,esp
 005C325B    add        esp,0FFFFFFF8
 005C325E    push       ebx
 005C325F    push       esi
 005C3260    push       edi
 005C3261    mov        byte ptr [ebp-5],cl
 005C3264    mov        dword ptr [ebp-4],edx
 005C3267    mov        esi,eax
 005C3269    mov        edi,dword ptr [ebp+10]
 005C326C    mov        eax,dword ptr [ebp-4]
 005C326F    call       @LStrAddRef
 005C3274    xor        eax,eax
 005C3276    push       ebp
 005C3277    push       5C32D3
 005C327C    push       dword ptr fs:[eax]
 005C327F    mov        dword ptr fs:[eax],esp
 005C3282    push       edi
 005C3283    mov        eax,dword ptr [ebp+0C]
 005C3286    push       eax
 005C3287    mov        eax,dword ptr [ebp+8]
 005C328A    push       eax
 005C328B    mov        cl,byte ptr [ebp-5]
 005C328E    mov        edx,dword ptr [ebp-4]
 005C3291    mov        eax,esi
 005C3293    call       005C2F44
 005C3298    mov        ebx,eax
 005C329A    test       bl,bl
>005C329C    jne        005C32BD
 005C329E    cmp        dword ptr [esi+20],0; TClassType.?f20:TClassType
>005C32A2    je         005C32BD
 005C32A4    push       edi
 005C32A5    mov        eax,dword ptr [ebp+0C]
 005C32A8    push       eax
 005C32A9    mov        eax,dword ptr [ebp+8]
 005C32AC    push       eax
 005C32AD    mov        cl,byte ptr [ebp-5]
 005C32B0    mov        edx,dword ptr [ebp-4]
 005C32B3    mov        eax,dword ptr [esi+20]; TClassType.?f20:TClassType
 005C32B6    mov        ebx,dword ptr [eax]
 005C32B8    call       dword ptr [ebx+14]; TClassType.sub_005C3258
 005C32BB    mov        ebx,eax
 005C32BD    xor        eax,eax
 005C32BF    pop        edx
 005C32C0    pop        ecx
 005C32C1    pop        ecx
 005C32C2    mov        dword ptr fs:[eax],edx
 005C32C5    push       5C32DA
 005C32CA    lea        eax,[ebp-4]
 005C32CD    call       @LStrClr
 005C32D2    ret
<005C32D3    jmp        @HandleFinally
<005C32D8    jmp        005C32CA
 005C32DA    mov        eax,ebx
 005C32DC    pop        edi
 005C32DD    pop        esi
 005C32DE    pop        ebx
 005C32DF    pop        ecx
 005C32E0    pop        ecx
 005C32E1    pop        ebp
 005C32E2    ret        0C
*}
//end;

//005C32E8
destructor TFuncType.Destroy;
begin
{*
 005C32E8    push       ebx
 005C32E9    push       esi
 005C32EA    push       edi
 005C32EB    push       ebp
 005C32EC    call       @BeforeDestruction
 005C32F1    mov        ebx,edx
 005C32F3    mov        esi,eax
 005C32F5    mov        eax,dword ptr [esi+14]; TFuncType.?f14:TList
 005C32F8    mov        ebp,dword ptr [eax+8]; TList.FCount:Integer
 005C32FB    dec        ebp
 005C32FC    test       ebp,ebp
>005C32FE    jl         005C331C
 005C3300    inc        ebp
 005C3301    xor        edi,edi
 005C3303    mov        eax,dword ptr [esi+14]; TFuncType.?f14:TList
 005C3306    mov        edx,edi
 005C3308    call       TList.Get
 005C330D    mov        edx,dword ptr ds:[5C2114]; TFuncParam
 005C3313    call       @Dispose
 005C3318    inc        edi
 005C3319    dec        ebp
<005C331A    jne        005C3303
 005C331C    lea        eax,[esi+14]; TFuncType.?f14:TList
 005C331F    call       FreeAndNil
 005C3324    mov        edx,ebx
 005C3326    and        dl,0FC
 005C3329    mov        eax,esi
 005C332B    call       TObject.Destroy
 005C3330    test       bl,bl
>005C3332    jle        005C333B
 005C3334    mov        eax,esi
 005C3336    call       @ClassDestroy
 005C333B    pop        ebp
 005C333C    pop        edi
 005C333D    pop        esi
 005C333E    pop        ebx
 005C333F    ret
*}
end;

//005C3340
//constructor sub_005C3340(?:?);
//begin
{*
 005C3340    push       ebp
 005C3341    mov        ebp,esp
 005C3343    add        esp,0FFFFFFE0
 005C3346    push       ebx
 005C3347    push       esi
 005C3348    push       edi
 005C3349    xor        ebx,ebx
 005C334B    mov        dword ptr [ebp-18],ebx
 005C334E    test       dl,dl
>005C3350    je         005C335A
 005C3352    add        esp,0FFFFFFF0
 005C3355    call       @ClassCreate
 005C335A    mov        dword ptr [ebp-0C],ecx
 005C335D    mov        byte ptr [ebp-5],dl
 005C3360    mov        dword ptr [ebp-4],eax
 005C3363    mov        ebx,dword ptr [ebp+8]
 005C3366    xor        eax,eax
 005C3368    push       ebp
 005C3369    push       5C344C
 005C336E    push       dword ptr fs:[eax]
 005C3371    mov        dword ptr fs:[eax],esp
 005C3374    push       ebx
 005C3375    mov        ecx,dword ptr [ebp-0C]
 005C3378    xor        edx,edx
 005C337A    mov        eax,dword ptr [ebp-4]
 005C337D    call       005C2558
 005C3382    mov        eax,dword ptr [ebp-4]
 005C3385    mov        byte ptr [eax+5],4; TFuncType.?f5:?
 005C3389    mov        dl,1
 005C338B    mov        eax,[0041C260]; TList
 005C3390    call       TObject.Create; TList.Create
 005C3395    mov        edx,dword ptr [ebp-4]
 005C3398    mov        dword ptr [edx+14],eax; TFuncType.?f14:TList
 005C339B    mov        eax,ebx
 005C339D    call       005A61E0
 005C33A2    test       eax,eax
>005C33A4    jle        005C340F
 005C33A6    mov        dword ptr [ebp-20],eax
 005C33A9    lea        edx,[ebp-18]
 005C33AC    mov        eax,ebx
 005C33AE    call       005A61AC
 005C33B3    lea        edx,[ebp-19]
 005C33B6    mov        ecx,1
 005C33BB    mov        eax,ebx
 005C33BD    call       005A62A0
 005C33C2    mov        cl,byte ptr [ebp-19]
 005C33C5    mov        edx,dword ptr [ebp-18]
 005C33C8    mov        eax,dword ptr [ebp-4]
 005C33CB    call       005C3580
 005C33D0    mov        esi,eax
 005C33D2    mov        eax,ebx
 005C33D4    call       005A61E0
 005C33D9    mov        dword ptr [ebp-10],eax
 005C33DC    mov        eax,ebx
 005C33DE    call       005A61E0
 005C33E3    mov        dword ptr [ebp-14],eax
 005C33E6    mov        ecx,dword ptr [ebp-14]
 005C33E9    mov        edx,dword ptr [ebp-10]
 005C33EC    mov        eax,dword ptr [ebp-0C]
 005C33EF    mov        edi,dword ptr [eax]
 005C33F1    call       dword ptr [edi]
 005C33F3    mov        dword ptr [esi+4],eax
 005C33F6    mov        eax,ebx
 005C33F8    call       005A61E0
 005C33FD    mov        dword ptr [esi+9],eax
 005C3400    mov        eax,ebx
 005C3402    call       005A61E0
 005C3407    mov        dword ptr [esi+0D],eax
 005C340A    dec        dword ptr [ebp-20]
<005C340D    jne        005C33A9
 005C340F    mov        eax,ebx
 005C3411    call       005A61E0
 005C3416    mov        dword ptr [ebp-10],eax
 005C3419    mov        eax,ebx
 005C341B    call       005A61E0
 005C3420    mov        dword ptr [ebp-14],eax
 005C3423    mov        ecx,dword ptr [ebp-14]
 005C3426    mov        edx,dword ptr [ebp-10]
 005C3429    mov        eax,dword ptr [ebp-0C]
 005C342C    mov        ebx,dword ptr [eax]
 005C342E    call       dword ptr [ebx]
 005C3430    mov        edx,dword ptr [ebp-4]
 005C3433    mov        dword ptr [edx+18],eax; TFuncType.?f18:dword
 005C3436    xor        eax,eax
 005C3438    pop        edx
 005C3439    pop        ecx
 005C343A    pop        ecx
 005C343B    mov        dword ptr fs:[eax],edx
 005C343E    push       5C3453
 005C3443    lea        eax,[ebp-18]
 005C3446    call       @LStrClr
 005C344B    ret
<005C344C    jmp        @HandleFinally
<005C3451    jmp        005C3443
 005C3453    mov        eax,dword ptr [ebp-4]
 005C3456    cmp        byte ptr [ebp-5],0
>005C345A    je         005C346B
 005C345C    call       @AfterConstruction
 005C3461    pop        dword ptr fs:[0]
 005C3468    add        esp,0C
 005C346B    mov        eax,dword ptr [ebp-4]
 005C346E    pop        edi
 005C346F    pop        esi
 005C3470    pop        ebx
 005C3471    mov        esp,ebp
 005C3473    pop        ebp
 005C3474    ret        4
*}
//end;

//005C3478
//procedure sub_005C3478(?:?; ?:?);
//begin
{*
 005C3478    push       ebx
 005C3479    push       esi
 005C347A    push       edi
 005C347B    push       ebp
 005C347C    add        esp,0FFFFFFEC
 005C347F    mov        ebx,ecx
 005C3481    mov        dword ptr [esp+4],edx
 005C3485    mov        dword ptr [esp],eax
 005C3488    mov        ecx,ebx
 005C348A    mov        edx,dword ptr [esp+4]
 005C348E    mov        eax,dword ptr [esp]
 005C3491    call       005C25CC
 005C3496    mov        eax,dword ptr [esp]
 005C3499    call       005C3638
 005C349E    movzx      edx,ax
 005C34A1    mov        eax,ebx
 005C34A3    call       005A60C8
 005C34A8    mov        eax,dword ptr [esp]
 005C34AB    call       005C3638
 005C34B0    movzx      edi,ax
 005C34B3    dec        edi
 005C34B4    test       edi,edi
>005C34B6    jl         005C352D
 005C34B8    inc        edi
 005C34B9    mov        dword ptr [esp+8],0
 005C34C1    mov        edx,dword ptr [esp+8]
 005C34C5    mov        eax,dword ptr [esp]
 005C34C8    call       005C360C
 005C34CD    mov        esi,eax
 005C34CF    mov        edx,dword ptr [esi]
 005C34D1    mov        eax,ebx
 005C34D3    call       005A6054
 005C34D8    lea        edx,[esi+8]
 005C34DB    mov        ecx,1
 005C34E0    mov        eax,ebx
 005C34E2    call       005A618C
 005C34E7    lea        eax,[esp+10]
 005C34EB    push       eax
 005C34EC    lea        ecx,[esp+10]
 005C34F0    mov        edx,dword ptr [esi+4]
 005C34F3    mov        eax,dword ptr [esp+8]
 005C34F7    mov        ebp,dword ptr [eax]
 005C34F9    call       dword ptr [ebp+4]
 005C34FC    mov        edx,dword ptr [esp+0C]
 005C3500    mov        eax,ebx
 005C3502    call       005A60C8
 005C3507    mov        edx,dword ptr [esp+10]
 005C350B    mov        eax,ebx
 005C350D    call       005A60C8
 005C3512    mov        edx,dword ptr [esi+9]
 005C3515    mov        eax,ebx
 005C3517    call       005A60C8
 005C351C    mov        edx,dword ptr [esi+0D]
 005C351F    mov        eax,ebx
 005C3521    call       005A60C8
 005C3526    inc        dword ptr [esp+8]
 005C352A    dec        edi
<005C352B    jne        005C34C1
 005C352D    mov        eax,dword ptr [esp]
 005C3530    mov        eax,dword ptr [eax+18]
 005C3533    test       eax,eax
>005C3535    je         005C3563
 005C3537    lea        edx,[esp+10]
 005C353B    push       edx
 005C353C    lea        ecx,[esp+10]
 005C3540    mov        edx,eax
 005C3542    mov        eax,dword ptr [esp+8]
 005C3546    mov        esi,dword ptr [eax]
 005C3548    call       dword ptr [esi+4]
 005C354B    mov        edx,dword ptr [esp+0C]
 005C354F    mov        eax,ebx
 005C3551    call       005A60C8
 005C3556    mov        edx,dword ptr [esp+10]
 005C355A    mov        eax,ebx
 005C355C    call       005A60C8
>005C3561    jmp        005C3575
 005C3563    xor        edx,edx
 005C3565    mov        eax,ebx
 005C3567    call       005A60C8
 005C356C    xor        edx,edx
 005C356E    mov        eax,ebx
 005C3570    call       005A60C8
 005C3575    add        esp,14
 005C3578    pop        ebp
 005C3579    pop        edi
 005C357A    pop        esi
 005C357B    pop        ebx
 005C357C    ret
*}
//end;

//005C3580
//function sub_005C3580(?:TFuncType; ?:AnsiString; ?:?):?;
//begin
{*
 005C3580    push       ebp
 005C3581    mov        ebp,esp
 005C3583    add        esp,0FFFFFFF8
 005C3586    push       ebx
 005C3587    push       esi
 005C3588    push       edi
 005C3589    mov        byte ptr [ebp-5],cl
 005C358C    mov        dword ptr [ebp-4],edx
 005C358F    mov        edi,eax
 005C3591    mov        eax,dword ptr [ebp-4]
 005C3594    call       @LStrAddRef
 005C3599    xor        eax,eax
 005C359B    push       ebp
 005C359C    push       5C35FA
 005C35A1    push       dword ptr fs:[eax]
 005C35A4    mov        dword ptr fs:[eax],esp
 005C35A7    mov        edx,dword ptr ds:[5C2114]; TFuncParam
 005C35AD    mov        eax,11
 005C35B2    call       @New
 005C35B7    mov        esi,eax
 005C35B9    mov        ebx,esi
 005C35BB    mov        eax,ebx
 005C35BD    mov        edx,dword ptr [ebp-4]
 005C35C0    call       @LStrAsg
 005C35C5    xor        eax,eax
 005C35C7    mov        dword ptr [ebx+4],eax
 005C35CA    mov        al,byte ptr [ebp-5]
 005C35CD    mov        byte ptr [ebx+8],al
 005C35D0    xor        eax,eax
 005C35D2    mov        dword ptr [ebx+9],eax
 005C35D5    xor        eax,eax
 005C35D7    mov        dword ptr [ebx+0D],eax
 005C35DA    mov        eax,dword ptr [edi+14]; TFuncType.?f14:TList
 005C35DD    mov        edx,esi
 005C35DF    call       TList.Add
 005C35E4    xor        eax,eax
 005C35E6    pop        edx
 005C35E7    pop        ecx
 005C35E8    pop        ecx
 005C35E9    mov        dword ptr fs:[eax],edx
 005C35EC    push       5C3601
 005C35F1    lea        eax,[ebp-4]
 005C35F4    call       @LStrClr
 005C35F9    ret
<005C35FA    jmp        @HandleFinally
<005C35FF    jmp        005C35F1
 005C3601    mov        eax,esi
 005C3603    pop        edi
 005C3604    pop        esi
 005C3605    pop        ebx
 005C3606    pop        ecx
 005C3607    pop        ecx
 005C3608    pop        ebp
 005C3609    ret
*}
//end;

//005C360C
//function sub_005C360C(?:?; ?:?):?;
//begin
{*
 005C360C    push       ebx
 005C360D    push       esi
 005C360E    mov        esi,edx
 005C3610    mov        ebx,eax
 005C3612    test       esi,esi
>005C3614    jl         005C3631
 005C3616    mov        eax,ebx
 005C3618    call       005C3638
 005C361D    movzx      eax,ax
 005C3620    cmp        esi,eax
>005C3622    jge        005C3631
 005C3624    mov        edx,esi
 005C3626    mov        eax,dword ptr [ebx+14]
 005C3629    call       TList.Get
 005C362E    pop        esi
 005C362F    pop        ebx
 005C3630    ret
 005C3631    xor        eax,eax
 005C3633    pop        esi
 005C3634    pop        ebx
 005C3635    ret
*}
//end;

//005C3638
//function sub_005C3638(?:?):?;
//begin
{*
 005C3638    mov        eax,dword ptr [eax+14]
 005C363B    mov        ax,word ptr [eax+8]
 005C363F    ret
*}
//end;

//005C3640
//constructor TTypeManager.Create(?:TTypeManager; _Dv__:Boolean; ?:?);
//begin
{*
 005C3640    push       ebp
 005C3641    mov        ebp,esp
 005C3643    push       ebx
 005C3644    push       esi
 005C3645    push       edi
 005C3646    test       dl,dl
>005C3648    je         005C3652
 005C364A    add        esp,0FFFFFFF0
 005C364D    call       @ClassCreate
 005C3652    mov        esi,ecx
 005C3654    mov        ebx,edx
 005C3656    mov        edi,eax
 005C3658    xor        edx,edx
 005C365A    mov        eax,edi
 005C365C    call       TObject.Create
 005C3661    mov        dword ptr [edi+0C],esi; TTypeManager.?fC:dword
 005C3664    mov        dl,1
 005C3666    mov        eax,[0041C260]; TList
 005C366B    call       TObject.Create; TList.Create
 005C3670    mov        dword ptr [edi+4],eax; TTypeManager.?f4:TList
 005C3673    mov        eax,dword ptr [ebp+8]
 005C3676    mov        dword ptr [edi+8],eax; TTypeManager.?f8:dword
 005C3679    mov        eax,edi
 005C367B    test       bl,bl
>005C367D    je         005C368E
 005C367F    call       @AfterConstruction
 005C3684    pop        dword ptr fs:[0]
 005C368B    add        esp,0C
 005C368E    mov        eax,edi
 005C3690    pop        edi
 005C3691    pop        esi
 005C3692    pop        ebx
 005C3693    pop        ebp
 005C3694    ret        4
*}
//end;

//005C3698
destructor TTypeManager.Destroy;
begin
{*
 005C3698    push       ebx
 005C3699    push       esi
 005C369A    call       @BeforeDestruction
 005C369F    mov        ebx,edx
 005C36A1    mov        esi,eax
 005C36A3    mov        eax,esi
 005C36A5    call       005C36CC
 005C36AA    lea        eax,[esi+4]; TTypeManager.?f4:TList
 005C36AD    call       FreeAndNil
 005C36B2    mov        edx,ebx
 005C36B4    and        dl,0FC
 005C36B7    mov        eax,esi
 005C36B9    call       TObject.Destroy
 005C36BE    test       bl,bl
>005C36C0    jle        005C36C9
 005C36C2    mov        eax,esi
 005C36C4    call       @ClassDestroy
 005C36C9    pop        esi
 005C36CA    pop        ebx
 005C36CB    ret
*}
end;

//005C36CC
//procedure sub_005C36CC(?:TTypeManager);
//begin
{*
 005C36CC    push       ebx
 005C36CD    push       esi
 005C36CE    mov        ebx,dword ptr [eax+4]; TTypeManager.?f4:TList
>005C36D1    jmp        005C36ED
 005C36D3    mov        edx,esi
 005C36D5    dec        edx
 005C36D6    mov        eax,ebx
 005C36D8    call       TList.Get
 005C36DD    call       TObject.Free
 005C36E2    mov        edx,dword ptr [ebx+8]; TList.FCount:Integer
 005C36E5    dec        edx
 005C36E6    mov        eax,ebx
 005C36E8    call       TList.Delete
 005C36ED    mov        esi,dword ptr [ebx+8]; TList.FCount:Integer
 005C36F0    test       esi,esi
<005C36F2    jg         005C36D3
 005C36F4    pop        esi
 005C36F5    pop        ebx
 005C36F6    ret
*}
//end;

//005C36F8
//procedure sub_005C36F8(?:TTypeManager; ?:TStreamHelper);
//begin
{*
 005C36F8    push       ebx
 005C36F9    push       esi
 005C36FA    push       edi
 005C36FB    push       ecx
 005C36FC    mov        ebx,edx
 005C36FE    mov        edi,eax
 005C3700    mov        eax,ebx
 005C3702    call       005A61E0
 005C3707    mov        esi,eax
 005C3709    test       esi,esi
>005C370B    jle        005C374B
 005C370D    mov        eax,ebx
 005C370F    call       005A601C
 005C3714    mov        edx,esp
 005C3716    mov        ecx,1
 005C371B    mov        eax,ebx
 005C371D    call       005A62A0
 005C3722    mov        eax,ebx
 005C3724    call       005A602C
 005C3729    push       ebx
 005C372A    mov        ecx,dword ptr [edi+8]; TTypeManager.?f8:dword
 005C372D    xor        eax,eax
 005C372F    mov        al,byte ptr [esp+4]
 005C3733    mov        eax,dword ptr [eax*4+617290]
 005C373A    mov        dl,1
 005C373C    call       dword ptr [eax+4]
 005C373F    mov        edx,eax
 005C3741    mov        eax,edi
 005C3743    call       005C3798
 005C3748    dec        esi
<005C3749    jne        005C370D
 005C374B    pop        edx
 005C374C    pop        edi
 005C374D    pop        esi
 005C374E    pop        ebx
 005C374F    ret
*}
//end;

//005C3750
//procedure sub_005C3750(?:TTypeManager; ?:TStreamHelper);
//begin
{*
 005C3750    push       ebx
 005C3751    push       esi
 005C3752    push       edi
 005C3753    push       ebp
 005C3754    push       ecx
 005C3755    mov        dword ptr [esp],edx
 005C3758    mov        ebx,eax
 005C375A    mov        eax,dword ptr [ebx+4]; TTypeManager.?f4:TList
 005C375D    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C3760    mov        eax,dword ptr [esp]
 005C3763    call       005A60C8
 005C3768    mov        eax,dword ptr [ebx+4]; TTypeManager.?f4:TList
 005C376B    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 005C376E    dec        esi
 005C376F    test       esi,esi
>005C3771    jl         005C378F
 005C3773    inc        esi
 005C3774    xor        edi,edi
 005C3776    mov        edx,edi
 005C3778    mov        eax,dword ptr [ebx+4]; TTypeManager.?f4:TList
 005C377B    call       TList.Get
 005C3780    mov        ecx,dword ptr [esp]
 005C3783    mov        edx,dword ptr [ebx+8]; TTypeManager.?f8:dword
 005C3786    mov        ebp,dword ptr [eax]
 005C3788    call       dword ptr [ebp+8]
 005C378B    inc        edi
 005C378C    dec        esi
<005C378D    jne        005C3776
 005C378F    pop        edx
 005C3790    pop        ebp
 005C3791    pop        edi
 005C3792    pop        esi
 005C3793    pop        ebx
 005C3794    ret
*}
//end;

//005C3798
//function sub_005C3798(?:TTypeManager; ?:?):?;
//begin
{*
 005C3798    push       ebx
 005C3799    push       esi
 005C379A    mov        esi,edx
 005C379C    mov        ebx,eax
 005C379E    mov        edx,dword ptr [ebx+0C]; TTypeManager.?fC:dword
 005C37A1    mov        eax,esi
 005C37A3    call       005C2608
 005C37A8    mov        eax,dword ptr [ebx+4]; TTypeManager.?f4:TList
 005C37AB    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 005C37AE    inc        eax
 005C37AF    mov        dword ptr [esi+10],eax
 005C37B2    mov        edx,esi
 005C37B4    mov        eax,dword ptr [ebx+4]; TTypeManager.?f4:TList
 005C37B7    call       TList.Add
 005C37BC    mov        eax,esi
 005C37BE    pop        esi
 005C37BF    pop        ebx
 005C37C0    ret
*}
//end;

//005C37C4
//procedure sub_005C37C4(?:?; ?:?);
//begin
{*
 005C37C4    push       ebx
 005C37C5    push       esi
 005C37C6    mov        esi,edx
 005C37C8    mov        ebx,eax
 005C37CA    mov        edx,esi
 005C37CC    mov        eax,dword ptr [ebx+4]
 005C37CF    call       TList.Get
 005C37D4    pop        esi
 005C37D5    pop        ebx
 005C37D6    ret
*}
//end;

end.