{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit229;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZFunctionsList = class(TInterfacedObject)
  public
    fC:IZCollection;//fC
    destructor Destroy; virtual;
  end;
  TZAbstractFunction = class(TInterfacedObject)
  public
    fC:String;//fC
    procedure @AbstractError(); virtual;
  end;
  TZTimeFunction = class(TZAbstractFunction)
  public
    //procedure sub_00565910(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZTimeFunction; _Dv__:Boolean);
  end;
  TZEmptyFunction = class(TZAbstractFunction)
  public
    //procedure sub_005659CC(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZEmptyFunction; _Dv__:Boolean);
  end;
  TZTrimFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567640(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZTrimFunction; _Dv__:Boolean);
  end;
  TZValFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567738(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZValFunction; _Dv__:Boolean);
  end;
  TZDtosFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567824(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZDtosFunction; _Dv__:Boolean);
  end;
  TZCtodFunction = class(TZAbstractFunction)
  public
    //procedure sub_0056793C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZCtodFunction; _Dv__:Boolean);
  end;
  TZMinFunction = class(TZAbstractFunction)
  public
    //procedure sub_00565AB4(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZMinFunction; _Dv__:Boolean);
  end;
  TZMaxFunction = class(TZAbstractFunction)
  public
    //procedure sub_00565C24(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZMaxFunction; _Dv__:Boolean);
  end;
  TZIIFFunction = class(TZAbstractFunction)
  public
    //procedure sub_00565D94(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZIIFFunction; _Dv__:Boolean);
  end;
  TZSUMFunction = class(TZAbstractFunction)
  public
    //procedure sub_00565E94(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZSUMFunction; _Dv__:Boolean);
  end;
  TZEFunction = class(TZAbstractFunction)
  public
    //procedure sub_0056600C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZEFunction; _Dv__:Boolean);
  end;
  TZPIFunction = class(TZAbstractFunction)
  public
    //procedure sub_005660D4(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZPIFunction; _Dv__:Boolean);
  end;
  TZRndFunction = class(TZAbstractFunction)
  public
    //procedure sub_0056618C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZRndFunction; _Dv__:Boolean);
  end;
  TZAbsFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566244(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZAbsFunction; _Dv__:Boolean);
  end;
  TZAcosFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566378(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZAcosFunction; _Dv__:Boolean);
  end;
  TZAsinFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566474(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZAsinFunction; _Dv__:Boolean);
  end;
  TZAtanFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566570(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZAtanFunction; _Dv__:Boolean);
  end;
  TZCeilFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566664(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZCeilFunction; _Dv__:Boolean);
  end;
  TZFloorFunction = class(TZAbstractFunction)
  public
    //procedure sub_0056675C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZFloorFunction; _Dv__:Boolean);
  end;
  TZCosFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566850(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZCosFunction; _Dv__:Boolean);
  end;
  TZSinFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566944(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZSinFunction; _Dv__:Boolean);
  end;
  TZTanFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566A38(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZTanFunction; _Dv__:Boolean);
  end;
  TZExpFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566B30(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZExpFunction; _Dv__:Boolean);
  end;
  TZLogFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566C24(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZLogFunction; _Dv__:Boolean);
  end;
  TZLog10Function = class(TZAbstractFunction)
  public
    //procedure sub_00566D1C(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZLog10Function; _Dv__:Boolean);
  end;
  TZRoundFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566E18(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZRoundFunction; _Dv__:Boolean);
  end;
  TZSqrFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566F04(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZSqrFunction; _Dv__:Boolean);
  end;
  TZUpperFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567100(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZUpperFunction; _Dv__:Boolean);
  end;
  TZLowerFunction = class(TZAbstractFunction)
  public
    //procedure sub_00566FF8(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZLowerFunction; _Dv__:Boolean);
  end;
  TZConcatFunction = class(TZAbstractFunction)
  public
    //procedure sub_005674A0(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZConcatFunction; _Dv__:Boolean);
  end;
  TZSubStrFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567208(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZSubStrFunction; _Dv__:Boolean);
  end;
  TZStrPosFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567368(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZStrPosFunction; _Dv__:Boolean);
  end;
  TZLeftFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567A30(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZLeftFunction; _Dv__:Boolean);
  end;
  TZRightFunction = class(TZAbstractFunction)
  public
    //procedure sub_00567B64(?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZRightFunction; _Dv__:Boolean);
  end;
  TZDefaultFunctionsList = class(TZFunctionsList)
    //constructor Create(?:TZDefaultFunctionsList; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00565098
//constructor sub_00565098(?:?; _Dv__:Boolean);
//begin
{*
 00565098    push       ebp
 00565099    mov        ebp,esp
 0056509B    push       ebx
 0056509C    push       esi
 0056509D    test       dl,dl
>0056509F    je         005650A9
 005650A1    add        esp,0FFFFFFF0
 005650A4    call       @ClassCreate
 005650A9    mov        ebx,edx
 005650AB    mov        esi,eax
 005650AD    mov        dl,1
 005650AF    mov        eax,[004BCEAC]; TZCollection
 005650B4    call       TZCollection.Create; TZCollection.Create
 005650B9    mov        edx,eax
 005650BB    test       edx,edx
>005650BD    je         005650C2
 005650BF    sub        edx,0FFFFFFE4
 005650C2    lea        eax,[esi+0C]
 005650C5    call       @IntfCopy
 005650CA    mov        eax,esi
 005650CC    test       bl,bl
>005650CE    je         005650DF
 005650D0    call       @AfterConstruction
 005650D5    pop        dword ptr fs:[0]
 005650DC    add        esp,0C
 005650DF    mov        eax,esi
 005650E1    pop        esi
 005650E2    pop        ebx
 005650E3    pop        ebp
 005650E4    ret
*}
//end;

//005650E8
destructor TZFunctionsList.Destroy;
begin
{*
 005650E8    push       ebp
 005650E9    mov        ebp,esp
 005650EB    push       ebx
 005650EC    push       esi
 005650ED    call       @BeforeDestruction
 005650F2    mov        ebx,edx
 005650F4    mov        esi,eax
 005650F6    lea        eax,[esi+0C]; TZFunctionsList.?fC:IZCollection
 005650F9    call       @IntfClear
 005650FE    mov        edx,ebx
 00565100    and        dl,0FC
 00565103    mov        eax,esi
 00565105    call       TObject.Destroy
 0056510A    test       bl,bl
>0056510C    jle        00565115
 0056510E    mov        eax,esi
 00565110    call       @ClassDestroy
 00565115    pop        esi
 00565116    pop        ebx
 00565117    pop        ebp
 00565118    ret
*}
end;

//005653C0
//constructor TZDefaultFunctionsList.Create(?:TZDefaultFunctionsList; _Dv__:Boolean);
//begin
{*
 005653C0    push       ebp
 005653C1    mov        ebp,esp
 005653C3    push       ebx
 005653C4    push       esi
 005653C5    test       dl,dl
>005653C7    je         005653D1
 005653C9    add        esp,0FFFFFFF0
 005653CC    call       @ClassCreate
 005653D1    mov        ebx,edx
 005653D3    mov        esi,eax
 005653D5    xor        edx,edx
 005653D7    mov        eax,esi
 005653D9    call       00565098
 005653DE    mov        dl,1
 005653E0    mov        eax,[0056436C]; TZTimeFunction
 005653E5    call       TZTimeFunction.Create; TZTimeFunction.Create
 005653EA    mov        edx,eax
 005653EC    test       edx,edx
>005653EE    je         005653F3
 005653F0    sub        edx,0FFFFFFF8
 005653F3    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005653F6    mov        ecx,dword ptr [eax]
 005653F8    call       dword ptr [ecx+3C]
 005653FB    mov        dl,1
 005653FD    mov        eax,[005643CC]; TZEmptyFunction
 00565402    call       TZEmptyFunction.Create; TZEmptyFunction.Create
 00565407    mov        edx,eax
 00565409    test       edx,edx
>0056540B    je         00565410
 0056540D    sub        edx,0FFFFFFF8
 00565410    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565413    mov        ecx,dword ptr [eax]
 00565415    call       dword ptr [ecx+3C]
 00565418    mov        dl,1
 0056541A    mov        eax,[005645AC]; TZMinFunction
 0056541F    call       TZMinFunction.Create; TZMinFunction.Create
 00565424    mov        edx,eax
 00565426    test       edx,edx
>00565428    je         0056542D
 0056542A    sub        edx,0FFFFFFF8
 0056542D    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565430    mov        ecx,dword ptr [eax]
 00565432    call       dword ptr [ecx+3C]
 00565435    mov        dl,1
 00565437    mov        eax,[0056460C]; TZMaxFunction
 0056543C    call       TZMaxFunction.Create; TZMaxFunction.Create
 00565441    mov        edx,eax
 00565443    test       edx,edx
>00565445    je         0056544A
 00565447    sub        edx,0FFFFFFF8
 0056544A    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056544D    mov        ecx,dword ptr [eax]
 0056544F    call       dword ptr [ecx+3C]
 00565452    mov        dl,1
 00565454    mov        eax,[0056466C]; TZIIFFunction
 00565459    call       TZIIFFunction.Create; TZIIFFunction.Create
 0056545E    mov        edx,eax
 00565460    test       edx,edx
>00565462    je         00565467
 00565464    sub        edx,0FFFFFFF8
 00565467    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056546A    mov        ecx,dword ptr [eax]
 0056546C    call       dword ptr [ecx+3C]
 0056546F    mov        dl,1
 00565471    mov        eax,[005646CC]; TZSUMFunction
 00565476    call       TZSUMFunction.Create; TZSUMFunction.Create
 0056547B    mov        edx,eax
 0056547D    test       edx,edx
>0056547F    je         00565484
 00565481    sub        edx,0FFFFFFF8
 00565484    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565487    mov        ecx,dword ptr [eax]
 00565489    call       dword ptr [ecx+3C]
 0056548C    mov        dl,1
 0056548E    mov        eax,[0056472C]; TZEFunction
 00565493    call       TZEFunction.Create; TZEFunction.Create
 00565498    mov        edx,eax
 0056549A    test       edx,edx
>0056549C    je         005654A1
 0056549E    sub        edx,0FFFFFFF8
 005654A1    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005654A4    mov        ecx,dword ptr [eax]
 005654A6    call       dword ptr [ecx+3C]
 005654A9    mov        dl,1
 005654AB    mov        eax,[00564788]; TZPIFunction
 005654B0    call       TZPIFunction.Create; TZPIFunction.Create
 005654B5    mov        edx,eax
 005654B7    test       edx,edx
>005654B9    je         005654BE
 005654BB    sub        edx,0FFFFFFF8
 005654BE    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005654C1    mov        ecx,dword ptr [eax]
 005654C3    call       dword ptr [ecx+3C]
 005654C6    mov        dl,1
 005654C8    mov        eax,[005647E8]; TZRndFunction
 005654CD    call       TZRndFunction.Create; TZRndFunction.Create
 005654D2    mov        edx,eax
 005654D4    test       edx,edx
>005654D6    je         005654DB
 005654D8    sub        edx,0FFFFFFF8
 005654DB    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005654DE    mov        ecx,dword ptr [eax]
 005654E0    call       dword ptr [ecx+3C]
 005654E3    mov        dl,1
 005654E5    mov        eax,[00564848]; TZAbsFunction
 005654EA    call       TZAbsFunction.Create; TZAbsFunction.Create
 005654EF    mov        edx,eax
 005654F1    test       edx,edx
>005654F3    je         005654F8
 005654F5    sub        edx,0FFFFFFF8
 005654F8    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005654FB    mov        ecx,dword ptr [eax]
 005654FD    call       dword ptr [ecx+3C]
 00565500    mov        dl,1
 00565502    mov        eax,[005648A8]; TZAcosFunction
 00565507    call       TZAcosFunction.Create; TZAcosFunction.Create
 0056550C    mov        edx,eax
 0056550E    test       edx,edx
>00565510    je         00565515
 00565512    sub        edx,0FFFFFFF8
 00565515    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565518    mov        ecx,dword ptr [eax]
 0056551A    call       dword ptr [ecx+3C]
 0056551D    mov        dl,1
 0056551F    mov        eax,[00564908]; TZAsinFunction
 00565524    call       TZAsinFunction.Create; TZAsinFunction.Create
 00565529    mov        edx,eax
 0056552B    test       edx,edx
>0056552D    je         00565532
 0056552F    sub        edx,0FFFFFFF8
 00565532    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565535    mov        ecx,dword ptr [eax]
 00565537    call       dword ptr [ecx+3C]
 0056553A    mov        dl,1
 0056553C    mov        eax,[00564968]; TZAtanFunction
 00565541    call       TZAtanFunction.Create; TZAtanFunction.Create
 00565546    mov        edx,eax
 00565548    test       edx,edx
>0056554A    je         0056554F
 0056554C    sub        edx,0FFFFFFF8
 0056554F    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565552    mov        ecx,dword ptr [eax]
 00565554    call       dword ptr [ecx+3C]
 00565557    mov        dl,1
 00565559    mov        eax,[005649C8]; TZCeilFunction
 0056555E    call       TZCeilFunction.Create; TZCeilFunction.Create
 00565563    mov        edx,eax
 00565565    test       edx,edx
>00565567    je         0056556C
 00565569    sub        edx,0FFFFFFF8
 0056556C    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056556F    mov        ecx,dword ptr [eax]
 00565571    call       dword ptr [ecx+3C]
 00565574    mov        dl,1
 00565576    mov        eax,[00564A28]; TZFloorFunction
 0056557B    call       TZFloorFunction.Create; TZFloorFunction.Create
 00565580    mov        edx,eax
 00565582    test       edx,edx
>00565584    je         00565589
 00565586    sub        edx,0FFFFFFF8
 00565589    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056558C    mov        ecx,dword ptr [eax]
 0056558E    call       dword ptr [ecx+3C]
 00565591    mov        dl,1
 00565593    mov        eax,[00564A88]; TZCosFunction
 00565598    call       TZCosFunction.Create; TZCosFunction.Create
 0056559D    mov        edx,eax
 0056559F    test       edx,edx
>005655A1    je         005655A6
 005655A3    sub        edx,0FFFFFFF8
 005655A6    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005655A9    mov        ecx,dword ptr [eax]
 005655AB    call       dword ptr [ecx+3C]
 005655AE    mov        dl,1
 005655B0    mov        eax,[00564AE8]; TZSinFunction
 005655B5    call       TZSinFunction.Create; TZSinFunction.Create
 005655BA    mov        edx,eax
 005655BC    test       edx,edx
>005655BE    je         005655C3
 005655C0    sub        edx,0FFFFFFF8
 005655C3    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005655C6    mov        ecx,dword ptr [eax]
 005655C8    call       dword ptr [ecx+3C]
 005655CB    mov        dl,1
 005655CD    mov        eax,[00564B48]; TZTanFunction
 005655D2    call       TZTanFunction.Create; TZTanFunction.Create
 005655D7    mov        edx,eax
 005655D9    test       edx,edx
>005655DB    je         005655E0
 005655DD    sub        edx,0FFFFFFF8
 005655E0    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005655E3    mov        ecx,dword ptr [eax]
 005655E5    call       dword ptr [ecx+3C]
 005655E8    mov        dl,1
 005655EA    mov        eax,[00564BA8]; TZExpFunction
 005655EF    call       TZExpFunction.Create; TZExpFunction.Create
 005655F4    mov        edx,eax
 005655F6    test       edx,edx
>005655F8    je         005655FD
 005655FA    sub        edx,0FFFFFFF8
 005655FD    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565600    mov        ecx,dword ptr [eax]
 00565602    call       dword ptr [ecx+3C]
 00565605    mov        dl,1
 00565607    mov        eax,[00564C08]; TZLogFunction
 0056560C    call       TZLogFunction.Create; TZLogFunction.Create
 00565611    mov        edx,eax
 00565613    test       edx,edx
>00565615    je         0056561A
 00565617    sub        edx,0FFFFFFF8
 0056561A    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056561D    mov        ecx,dword ptr [eax]
 0056561F    call       dword ptr [ecx+3C]
 00565622    mov        dl,1
 00565624    mov        eax,[00564C68]; TZLog10Function
 00565629    call       TZLog10Function.Create; TZLog10Function.Create
 0056562E    mov        edx,eax
 00565630    test       edx,edx
>00565632    je         00565637
 00565634    sub        edx,0FFFFFFF8
 00565637    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056563A    mov        ecx,dword ptr [eax]
 0056563C    call       dword ptr [ecx+3C]
 0056563F    mov        dl,1
 00565641    mov        eax,[00564CC8]; TZRoundFunction
 00565646    call       TZRoundFunction.Create; TZRoundFunction.Create
 0056564B    mov        edx,eax
 0056564D    test       edx,edx
>0056564F    je         00565654
 00565651    sub        edx,0FFFFFFF8
 00565654    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565657    mov        ecx,dword ptr [eax]
 00565659    call       dword ptr [ecx+3C]
 0056565C    mov        dl,1
 0056565E    mov        eax,[00564D28]; TZSqrFunction
 00565663    call       TZSqrFunction.Create; TZSqrFunction.Create
 00565668    mov        edx,eax
 0056566A    test       edx,edx
>0056566C    je         00565671
 0056566E    sub        edx,0FFFFFFF8
 00565671    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565674    mov        ecx,dword ptr [eax]
 00565676    call       dword ptr [ecx+3C]
 00565679    mov        dl,1
 0056567B    mov        eax,[00564D88]; TZUpperFunction
 00565680    call       TZUpperFunction.Create; TZUpperFunction.Create
 00565685    mov        edx,eax
 00565687    test       edx,edx
>00565689    je         0056568E
 0056568B    sub        edx,0FFFFFFF8
 0056568E    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565691    mov        ecx,dword ptr [eax]
 00565693    call       dword ptr [ecx+3C]
 00565696    mov        dl,1
 00565698    mov        eax,[00564DE8]; TZLowerFunction
 0056569D    call       TZLowerFunction.Create; TZLowerFunction.Create
 005656A2    mov        edx,eax
 005656A4    test       edx,edx
>005656A6    je         005656AB
 005656A8    sub        edx,0FFFFFFF8
 005656AB    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005656AE    mov        ecx,dword ptr [eax]
 005656B0    call       dword ptr [ecx+3C]
 005656B3    mov        dl,1
 005656B5    mov        eax,[00564E48]; TZConcatFunction
 005656BA    call       TZConcatFunction.Create; TZConcatFunction.Create
 005656BF    mov        edx,eax
 005656C1    test       edx,edx
>005656C3    je         005656C8
 005656C5    sub        edx,0FFFFFFF8
 005656C8    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005656CB    mov        ecx,dword ptr [eax]
 005656CD    call       dword ptr [ecx+3C]
 005656D0    mov        dl,1
 005656D2    mov        eax,[00564EAC]; TZSubStrFunction
 005656D7    call       TZSubStrFunction.Create; TZSubStrFunction.Create
 005656DC    mov        edx,eax
 005656DE    test       edx,edx
>005656E0    je         005656E5
 005656E2    sub        edx,0FFFFFFF8
 005656E5    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005656E8    mov        ecx,dword ptr [eax]
 005656EA    call       dword ptr [ecx+3C]
 005656ED    mov        dl,1
 005656EF    mov        eax,[00564F10]; TZStrPosFunction
 005656F4    call       TZStrPosFunction.Create; TZStrPosFunction.Create
 005656F9    mov        edx,eax
 005656FB    test       edx,edx
>005656FD    je         00565702
 005656FF    sub        edx,0FFFFFFF8
 00565702    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565705    mov        ecx,dword ptr [eax]
 00565707    call       dword ptr [ecx+3C]
 0056570A    mov        dl,1
 0056570C    mov        eax,[0056442C]; TZTrimFunction
 00565711    call       TZTrimFunction.Create; TZTrimFunction.Create
 00565716    mov        edx,eax
 00565718    test       edx,edx
>0056571A    je         0056571F
 0056571C    sub        edx,0FFFFFFF8
 0056571F    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565722    mov        ecx,dword ptr [eax]
 00565724    call       dword ptr [ecx+3C]
 00565727    mov        dl,1
 00565729    mov        eax,[0056448C]; TZValFunction
 0056572E    call       TZValFunction.Create; TZValFunction.Create
 00565733    mov        edx,eax
 00565735    test       edx,edx
>00565737    je         0056573C
 00565739    sub        edx,0FFFFFFF8
 0056573C    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056573F    mov        ecx,dword ptr [eax]
 00565741    call       dword ptr [ecx+3C]
 00565744    mov        dl,1
 00565746    mov        eax,[005644EC]; TZDtosFunction
 0056574B    call       TZDtosFunction.Create; TZDtosFunction.Create
 00565750    mov        edx,eax
 00565752    test       edx,edx
>00565754    je         00565759
 00565756    sub        edx,0FFFFFFF8
 00565759    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 0056575C    mov        ecx,dword ptr [eax]
 0056575E    call       dword ptr [ecx+3C]
 00565761    mov        dl,1
 00565763    mov        eax,[0056454C]; TZCtodFunction
 00565768    call       TZCtodFunction.Create; TZCtodFunction.Create
 0056576D    mov        edx,eax
 0056576F    test       edx,edx
>00565771    je         00565776
 00565773    sub        edx,0FFFFFFF8
 00565776    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565779    mov        ecx,dword ptr [eax]
 0056577B    call       dword ptr [ecx+3C]
 0056577E    mov        dl,1
 00565780    mov        eax,[00564F74]; TZLeftFunction
 00565785    call       TZLeftFunction.Create; TZLeftFunction.Create
 0056578A    mov        edx,eax
 0056578C    test       edx,edx
>0056578E    je         00565793
 00565790    sub        edx,0FFFFFFF8
 00565793    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 00565796    mov        ecx,dword ptr [eax]
 00565798    call       dword ptr [ecx+3C]
 0056579B    mov        dl,1
 0056579D    mov        eax,[00564FD4]; TZRightFunction
 005657A2    call       TZRightFunction.Create; TZRightFunction.Create
 005657A7    mov        edx,eax
 005657A9    test       edx,edx
>005657AB    je         005657B0
 005657AD    sub        edx,0FFFFFFF8
 005657B0    mov        eax,dword ptr [esi+0C]; TZDefaultFunctionsList.?fC:IZCollection
 005657B3    mov        ecx,dword ptr [eax]
 005657B5    call       dword ptr [ecx+3C]
 005657B8    mov        eax,esi
 005657BA    test       bl,bl
>005657BC    je         005657CD
 005657BE    call       @AfterConstruction
 005657C3    pop        dword ptr fs:[0]
 005657CA    add        esp,0C
 005657CD    mov        eax,esi
 005657CF    pop        esi
 005657D0    pop        ebx
 005657D1    pop        ebp
 005657D2    ret
*}
//end;

//005657EC
//function sub_005657EC(?:TZAbstractFunction; ?:?; ?:?):?;
//begin
{*
 005657EC    push       ebp
 005657ED    mov        ebp,esp
 005657EF    push       ecx
 005657F0    mov        ecx,8
 005657F5    push       0
 005657F7    push       0
 005657F9    dec        ecx
<005657FA    jne        005657F5
 005657FC    xchg       ecx,dword ptr [ebp-4]
 005657FF    push       ebx
 00565800    push       esi
 00565801    mov        esi,ecx
 00565803    mov        ebx,edx
 00565805    xor        eax,eax
 00565807    push       ebp
 00565808    push       5658AE
 0056580D    push       dword ptr fs:[eax]
 00565810    mov        dword ptr fs:[eax],esp
 00565813    lea        ecx,[ebp-2C]
 00565816    xor        edx,edx
 00565818    mov        eax,ebx
 0056581A    call       00568004
 0056581F    lea        edx,[ebp-2C]
 00565822    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00565827    mov        eax,dword ptr [eax]
 00565829    mov        ecx,dword ptr [eax]
 0056582B    call       dword ptr [ecx+28]
 0056582E    push       eax
 0056582F    sar        eax,1F
 00565832    cmp        eax,edx
 00565834    pop        eax
>00565835    je         0056583C
 00565837    call       @BoundErr
 0056583C    mov        ebx,eax
 0056583E    cmp        esi,ebx
>00565840    je         00565885
 00565842    lea        eax,[ebp-30]
 00565845    push       eax
 00565846    lea        edx,[ebp-34]
 00565849    mov        eax,[0061AEF0]; ^#122.sResString15:TResStringRec
 0056584E    call       LoadResString
 00565853    mov        eax,dword ptr [ebp-34]
 00565856    mov        dword ptr [ebp-44],esi
 00565859    mov        byte ptr [ebp-40],0
 0056585D    mov        dword ptr [ebp-3C],ebx
 00565860    mov        byte ptr [ebp-38],0
 00565864    lea        edx,[ebp-44]
 00565867    mov        ecx,1
 0056586C    call       Format
 00565871    mov        ecx,dword ptr [ebp-30]
 00565874    mov        dl,1
 00565876    mov        eax,[00567C80]; TZExpressionError
 0056587B    call       Exception.Create; TZExpressionError.Create
 00565880    call       @RaiseExcept
 00565885    xor        eax,eax
 00565887    pop        edx
 00565888    pop        ecx
 00565889    pop        ecx
 0056588A    mov        dword ptr fs:[eax],edx
 0056588D    push       5658B5
 00565892    lea        eax,[ebp-34]
 00565895    mov        edx,2
 0056589A    call       @LStrArrayClr
 0056589F    lea        eax,[ebp-2C]
 005658A2    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005658A8    call       @FinalizeRecord
 005658AD    ret
<005658AE    jmp        @HandleFinally
<005658B3    jmp        00565892
 005658B5    mov        eax,ebx
 005658B7    pop        esi
 005658B8    pop        ebx
 005658B9    mov        esp,ebp
 005658BB    pop        ebp
 005658BC    ret
*}
//end;

//005658C0
//constructor TZTimeFunction.Create(?:TZTimeFunction; _Dv__:Boolean);
//begin
{*
 005658C0    push       ebp
 005658C1    mov        ebp,esp
 005658C3    push       ebx
 005658C4    push       esi
 005658C5    test       dl,dl
>005658C7    je         005658D1
 005658C9    add        esp,0FFFFFFF0
 005658CC    call       @ClassCreate
 005658D1    mov        ebx,edx
 005658D3    mov        esi,eax
 005658D5    lea        eax,[esi+0C]; TZTimeFunction.?fC:String
 005658D8    mov        edx,565908; 'TIME'
 005658DD    call       @LStrAsg
 005658E2    mov        eax,esi
 005658E4    test       bl,bl
>005658E6    je         005658F7
 005658E8    call       @AfterConstruction
 005658ED    pop        dword ptr fs:[0]
 005658F4    add        esp,0C
 005658F7    mov        eax,esi
 005658F9    pop        esi
 005658FA    pop        ebx
 005658FB    pop        ebp
 005658FC    ret
*}
//end;

//00565910
//procedure sub_00565910(?:?; ?:?; ?:?);
//begin
{*
 00565910    push       ebp
 00565911    mov        ebp,esp
 00565913    push       ecx
 00565914    push       ebx
 00565915    push       esi
 00565916    mov        dword ptr [ebp-4],ecx
 00565919    mov        esi,edx
 0056591B    mov        ebx,eax
 0056591D    mov        eax,dword ptr [ebp-4]
 00565920    call       @IntfAddRef
 00565925    xor        eax,eax
 00565927    push       ebp
 00565928    push       56596B
 0056592D    push       dword ptr fs:[eax]
 00565930    mov        dword ptr fs:[eax],esp
 00565933    xor        ecx,ecx
 00565935    mov        edx,esi
 00565937    mov        eax,ebx
 00565939    call       005657EC
 0056593E    call       Now
 00565943    add        esp,0FFFFFFF8
 00565946    fstp       qword ptr [esp]
 00565949    wait
 0056594A    mov        edx,dword ptr [ebp+8]
 0056594D    mov        eax,dword ptr [ebp-4]
 00565950    mov        ecx,dword ptr [eax]
 00565952    call       dword ptr [ecx+58]
 00565955    xor        eax,eax
 00565957    pop        edx
 00565958    pop        ecx
 00565959    pop        ecx
 0056595A    mov        dword ptr fs:[eax],edx
 0056595D    push       565972
 00565962    lea        eax,[ebp-4]
 00565965    call       @IntfClear
 0056596A    ret
<0056596B    jmp        @HandleFinally
<00565970    jmp        00565962
 00565972    pop        esi
 00565973    pop        ebx
 00565974    pop        ecx
 00565975    pop        ebp
 00565976    ret        4
*}
//end;

//0056597C
//constructor TZEmptyFunction.Create(?:TZEmptyFunction; _Dv__:Boolean);
//begin
{*
 0056597C    push       ebp
 0056597D    mov        ebp,esp
 0056597F    push       ebx
 00565980    push       esi
 00565981    test       dl,dl
>00565983    je         0056598D
 00565985    add        esp,0FFFFFFF0
 00565988    call       @ClassCreate
 0056598D    mov        ebx,edx
 0056598F    mov        esi,eax
 00565991    lea        eax,[esi+0C]; TZEmptyFunction.?fC:String
 00565994    mov        edx,5659C4; 'EMPTY'
 00565999    call       @LStrAsg
 0056599E    mov        eax,esi
 005659A0    test       bl,bl
>005659A2    je         005659B3
 005659A4    call       @AfterConstruction
 005659A9    pop        dword ptr fs:[0]
 005659B0    add        esp,0C
 005659B3    mov        eax,esi
 005659B5    pop        esi
 005659B6    pop        ebx
 005659B7    pop        ebp
 005659B8    ret
*}
//end;

//005659CC
//procedure sub_005659CC(?:?; ?:?; ?:?);
//begin
{*
 005659CC    push       ebp
 005659CD    mov        ebp,esp
 005659CF    add        esp,0FFFFFFD0
 005659D2    push       ebx
 005659D3    push       esi
 005659D4    mov        dword ptr [ebp-4],ecx
 005659D7    mov        esi,edx
 005659D9    mov        ebx,eax
 005659DB    mov        eax,dword ptr [ebp-4]
 005659DE    call       @IntfAddRef
 005659E3    lea        eax,[ebp-30]
 005659E6    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005659EC    call       @InitializeRecord
 005659F1    xor        eax,eax
 005659F3    push       ebp
 005659F4    push       565A58
 005659F9    push       dword ptr fs:[eax]
 005659FC    mov        dword ptr fs:[eax],esp
 005659FF    mov        ecx,1
 00565A04    mov        edx,esi
 00565A06    mov        eax,ebx
 00565A08    call       005657EC
 00565A0D    lea        ecx,[ebp-30]
 00565A10    mov        edx,1
 00565A15    mov        eax,esi
 00565A17    call       00568004
 00565A1C    lea        edx,[ebp-30]
 00565A1F    mov        eax,dword ptr [ebp-4]
 00565A22    mov        ecx,dword ptr [eax]
 00565A24    call       dword ptr [ecx+0C]
 00565A27    mov        ecx,eax
 00565A29    mov        edx,dword ptr [ebp+8]
 00565A2C    mov        eax,dword ptr [ebp-4]
 00565A2F    mov        ebx,dword ptr [eax]
 00565A31    call       dword ptr [ebx+44]
 00565A34    xor        eax,eax
 00565A36    pop        edx
 00565A37    pop        ecx
 00565A38    pop        ecx
 00565A39    mov        dword ptr fs:[eax],edx
 00565A3C    push       565A5F
 00565A41    lea        eax,[ebp-30]
 00565A44    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565A4A    call       @FinalizeRecord
 00565A4F    lea        eax,[ebp-4]
 00565A52    call       @IntfClear
 00565A57    ret
<00565A58    jmp        @HandleFinally
<00565A5D    jmp        00565A41
 00565A5F    pop        esi
 00565A60    pop        ebx
 00565A61    mov        esp,ebp
 00565A63    pop        ebp
 00565A64    ret        4
*}
//end;

//00565A68
//constructor TZMinFunction.Create(?:TZMinFunction; _Dv__:Boolean);
//begin
{*
 00565A68    push       ebp
 00565A69    mov        ebp,esp
 00565A6B    push       ebx
 00565A6C    push       esi
 00565A6D    test       dl,dl
>00565A6F    je         00565A79
 00565A71    add        esp,0FFFFFFF0
 00565A74    call       @ClassCreate
 00565A79    mov        ebx,edx
 00565A7B    mov        esi,eax
 00565A7D    lea        eax,[esi+0C]; TZMinFunction.?fC:String
 00565A80    mov        edx,565AB0; 'MIN'
 00565A85    call       @LStrAsg
 00565A8A    mov        eax,esi
 00565A8C    test       bl,bl
>00565A8E    je         00565A9F
 00565A90    call       @AfterConstruction
 00565A95    pop        dword ptr fs:[0]
 00565A9C    add        esp,0C
 00565A9F    mov        eax,esi
 00565AA1    pop        esi
 00565AA2    pop        ebx
 00565AA3    pop        ebp
 00565AA4    ret
*}
//end;

//00565AB4
//procedure sub_00565AB4(?:?; ?:?; ?:?);
//begin
{*
 00565AB4    push       ebp
 00565AB5    mov        ebp,esp
 00565AB7    push       ecx
 00565AB8    mov        ecx,0C
 00565ABD    push       0
 00565ABF    push       0
 00565AC1    dec        ecx
<00565AC2    jne        00565ABD
 00565AC4    xchg       ecx,dword ptr [ebp-4]
 00565AC7    push       ebx
 00565AC8    push       esi
 00565AC9    push       edi
 00565ACA    mov        dword ptr [ebp-8],ecx
 00565ACD    mov        dword ptr [ebp-4],edx
 00565AD0    mov        eax,dword ptr [ebp-8]
 00565AD3    call       @IntfAddRef
 00565AD8    lea        eax,[ebp-34]
 00565ADB    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565AE1    call       @InitializeRecord
 00565AE6    xor        eax,eax
 00565AE8    push       ebp
 00565AE9    push       565BC7
 00565AEE    push       dword ptr fs:[eax]
 00565AF1    mov        dword ptr fs:[eax],esp
 00565AF4    lea        ecx,[ebp-60]
 00565AF7    xor        edx,edx
 00565AF9    mov        eax,dword ptr [ebp-4]
 00565AFC    call       00568004
 00565B01    lea        edx,[ebp-60]
 00565B04    mov        eax,dword ptr [ebp-8]
 00565B07    mov        ecx,dword ptr [eax]
 00565B09    call       dword ptr [ecx+28]
 00565B0C    push       eax
 00565B0D    sar        eax,1F
 00565B10    cmp        eax,edx
 00565B12    pop        eax
>00565B13    je         00565B1A
 00565B15    call       @BoundErr
 00565B1A    mov        ebx,eax
 00565B1C    cmp        ebx,2
>00565B1F    jge        00565B42
 00565B21    lea        edx,[ebp-64]
 00565B24    mov        eax,[0061BBDC]; ^#122.sResString16:TResStringRec
 00565B29    call       LoadResString
 00565B2E    mov        ecx,dword ptr [ebp-64]
 00565B31    mov        dl,1
 00565B33    mov        eax,[00567C80]; TZExpressionError
 00565B38    call       Exception.Create; TZExpressionError.Create
 00565B3D    call       @RaiseExcept
 00565B42    mov        ecx,dword ptr [ebp+8]
 00565B45    mov        edx,ebx
 00565B47    mov        eax,dword ptr [ebp-4]
 00565B4A    call       00568004
 00565B4F    sub        ebx,1
>00565B52    jno        00565B59
 00565B54    call       @IntOver
 00565B59    test       ebx,ebx
>00565B5B    jle        00565B96
 00565B5D    mov        esi,1
 00565B62    lea        ecx,[ebp-34]
 00565B65    mov        edx,esi
 00565B67    mov        eax,dword ptr [ebp-4]
 00565B6A    call       00568004
 00565B6F    lea        ecx,[ebp-34]
 00565B72    mov        edx,dword ptr [ebp+8]
 00565B75    mov        eax,dword ptr [ebp-8]
 00565B78    mov        edi,dword ptr [eax]
 00565B7A    call       dword ptr [edi+20]
 00565B7D    test       eax,eax
>00565B7F    jle        00565B92
 00565B81    mov        eax,dword ptr [ebp+8]
 00565B84    lea        edx,[ebp-34]
 00565B87    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00565B8D    call       @CopyRecord
 00565B92    inc        esi
 00565B93    dec        ebx
<00565B94    jne        00565B62
 00565B96    xor        eax,eax
 00565B98    pop        edx
 00565B99    pop        ecx
 00565B9A    pop        ecx
 00565B9B    mov        dword ptr fs:[eax],edx
 00565B9E    push       565BCE
 00565BA3    lea        eax,[ebp-64]
 00565BA6    call       @LStrClr
 00565BAB    lea        eax,[ebp-60]
 00565BAE    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565BB4    mov        ecx,2
 00565BB9    call       @FinalizeArray
 00565BBE    lea        eax,[ebp-8]
 00565BC1    call       @IntfClear
 00565BC6    ret
<00565BC7    jmp        @HandleFinally
<00565BCC    jmp        00565BA3
 00565BCE    pop        edi
 00565BCF    pop        esi
 00565BD0    pop        ebx
 00565BD1    mov        esp,ebp
 00565BD3    pop        ebp
 00565BD4    ret        4
*}
//end;

//00565BD8
//constructor TZMaxFunction.Create(?:TZMaxFunction; _Dv__:Boolean);
//begin
{*
 00565BD8    push       ebp
 00565BD9    mov        ebp,esp
 00565BDB    push       ebx
 00565BDC    push       esi
 00565BDD    test       dl,dl
>00565BDF    je         00565BE9
 00565BE1    add        esp,0FFFFFFF0
 00565BE4    call       @ClassCreate
 00565BE9    mov        ebx,edx
 00565BEB    mov        esi,eax
 00565BED    lea        eax,[esi+0C]; TZMaxFunction.?fC:String
 00565BF0    mov        edx,565C20; 'MAX'
 00565BF5    call       @LStrAsg
 00565BFA    mov        eax,esi
 00565BFC    test       bl,bl
>00565BFE    je         00565C0F
 00565C00    call       @AfterConstruction
 00565C05    pop        dword ptr fs:[0]
 00565C0C    add        esp,0C
 00565C0F    mov        eax,esi
 00565C11    pop        esi
 00565C12    pop        ebx
 00565C13    pop        ebp
 00565C14    ret
*}
//end;

//00565C24
//procedure sub_00565C24(?:?; ?:?; ?:?);
//begin
{*
 00565C24    push       ebp
 00565C25    mov        ebp,esp
 00565C27    push       ecx
 00565C28    mov        ecx,0C
 00565C2D    push       0
 00565C2F    push       0
 00565C31    dec        ecx
<00565C32    jne        00565C2D
 00565C34    xchg       ecx,dword ptr [ebp-4]
 00565C37    push       ebx
 00565C38    push       esi
 00565C39    push       edi
 00565C3A    mov        dword ptr [ebp-8],ecx
 00565C3D    mov        dword ptr [ebp-4],edx
 00565C40    mov        eax,dword ptr [ebp-8]
 00565C43    call       @IntfAddRef
 00565C48    lea        eax,[ebp-34]
 00565C4B    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565C51    call       @InitializeRecord
 00565C56    xor        eax,eax
 00565C58    push       ebp
 00565C59    push       565D37
 00565C5E    push       dword ptr fs:[eax]
 00565C61    mov        dword ptr fs:[eax],esp
 00565C64    lea        ecx,[ebp-60]
 00565C67    xor        edx,edx
 00565C69    mov        eax,dword ptr [ebp-4]
 00565C6C    call       00568004
 00565C71    lea        edx,[ebp-60]
 00565C74    mov        eax,dword ptr [ebp-8]
 00565C77    mov        ecx,dword ptr [eax]
 00565C79    call       dword ptr [ecx+28]
 00565C7C    push       eax
 00565C7D    sar        eax,1F
 00565C80    cmp        eax,edx
 00565C82    pop        eax
>00565C83    je         00565C8A
 00565C85    call       @BoundErr
 00565C8A    mov        ebx,eax
 00565C8C    cmp        ebx,2
>00565C8F    jge        00565CB2
 00565C91    lea        edx,[ebp-64]
 00565C94    mov        eax,[0061BBDC]; ^#122.sResString16:TResStringRec
 00565C99    call       LoadResString
 00565C9E    mov        ecx,dword ptr [ebp-64]
 00565CA1    mov        dl,1
 00565CA3    mov        eax,[00567C80]; TZExpressionError
 00565CA8    call       Exception.Create; TZExpressionError.Create
 00565CAD    call       @RaiseExcept
 00565CB2    mov        ecx,dword ptr [ebp+8]
 00565CB5    mov        edx,ebx
 00565CB7    mov        eax,dword ptr [ebp-4]
 00565CBA    call       00568004
 00565CBF    sub        ebx,1
>00565CC2    jno        00565CC9
 00565CC4    call       @IntOver
 00565CC9    test       ebx,ebx
>00565CCB    jle        00565D06
 00565CCD    mov        esi,1
 00565CD2    lea        ecx,[ebp-34]
 00565CD5    mov        edx,esi
 00565CD7    mov        eax,dword ptr [ebp-4]
 00565CDA    call       00568004
 00565CDF    lea        ecx,[ebp-34]
 00565CE2    mov        edx,dword ptr [ebp+8]
 00565CE5    mov        eax,dword ptr [ebp-8]
 00565CE8    mov        edi,dword ptr [eax]
 00565CEA    call       dword ptr [edi+20]
 00565CED    test       eax,eax
>00565CEF    jge        00565D02
 00565CF1    mov        eax,dword ptr [ebp+8]
 00565CF4    lea        edx,[ebp-34]
 00565CF7    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00565CFD    call       @CopyRecord
 00565D02    inc        esi
 00565D03    dec        ebx
<00565D04    jne        00565CD2
 00565D06    xor        eax,eax
 00565D08    pop        edx
 00565D09    pop        ecx
 00565D0A    pop        ecx
 00565D0B    mov        dword ptr fs:[eax],edx
 00565D0E    push       565D3E
 00565D13    lea        eax,[ebp-64]
 00565D16    call       @LStrClr
 00565D1B    lea        eax,[ebp-60]
 00565D1E    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565D24    mov        ecx,2
 00565D29    call       @FinalizeArray
 00565D2E    lea        eax,[ebp-8]
 00565D31    call       @IntfClear
 00565D36    ret
<00565D37    jmp        @HandleFinally
<00565D3C    jmp        00565D13
 00565D3E    pop        edi
 00565D3F    pop        esi
 00565D40    pop        ebx
 00565D41    mov        esp,ebp
 00565D43    pop        ebp
 00565D44    ret        4
*}
//end;

//00565D48
//constructor TZIIFFunction.Create(?:TZIIFFunction; _Dv__:Boolean);
//begin
{*
 00565D48    push       ebp
 00565D49    mov        ebp,esp
 00565D4B    push       ebx
 00565D4C    push       esi
 00565D4D    test       dl,dl
>00565D4F    je         00565D59
 00565D51    add        esp,0FFFFFFF0
 00565D54    call       @ClassCreate
 00565D59    mov        ebx,edx
 00565D5B    mov        esi,eax
 00565D5D    lea        eax,[esi+0C]; TZIIFFunction.?fC:String
 00565D60    mov        edx,565D90; 'IIF'
 00565D65    call       @LStrAsg
 00565D6A    mov        eax,esi
 00565D6C    test       bl,bl
>00565D6E    je         00565D7F
 00565D70    call       @AfterConstruction
 00565D75    pop        dword ptr fs:[0]
 00565D7C    add        esp,0C
 00565D7F    mov        eax,esi
 00565D81    pop        esi
 00565D82    pop        ebx
 00565D83    pop        ebp
 00565D84    ret
*}
//end;

//00565D94
//procedure sub_00565D94(?:?; ?:?; ?:?);
//begin
{*
 00565D94    push       ebp
 00565D95    mov        ebp,esp
 00565D97    push       ecx
 00565D98    mov        ecx,5
 00565D9D    push       0
 00565D9F    push       0
 00565DA1    dec        ecx
<00565DA2    jne        00565D9D
 00565DA4    push       ecx
 00565DA5    xchg       ecx,dword ptr [ebp-4]
 00565DA8    push       ebx
 00565DA9    push       esi
 00565DAA    mov        dword ptr [ebp-4],ecx
 00565DAD    mov        ebx,edx
 00565DAF    mov        esi,eax
 00565DB1    mov        eax,dword ptr [ebp-4]
 00565DB4    call       @IntfAddRef
 00565DB9    xor        eax,eax
 00565DBB    push       ebp
 00565DBC    push       565E37
 00565DC1    push       dword ptr fs:[eax]
 00565DC4    mov        dword ptr fs:[eax],esp
 00565DC7    mov        ecx,3
 00565DCC    mov        edx,ebx
 00565DCE    mov        eax,esi
 00565DD0    call       005657EC
 00565DD5    lea        ecx,[ebp-30]
 00565DD8    mov        edx,3
 00565DDD    mov        eax,ebx
 00565DDF    call       00568004
 00565DE4    lea        edx,[ebp-30]
 00565DE7    mov        eax,dword ptr [ebp-4]
 00565DEA    mov        ecx,dword ptr [eax]
 00565DEC    call       dword ptr [ecx+24]
 00565DEF    test       al,al
>00565DF1    je         00565E04
 00565DF3    mov        ecx,dword ptr [ebp+8]
 00565DF6    mov        edx,2
 00565DFB    mov        eax,ebx
 00565DFD    call       00568004
>00565E02    jmp        00565E13
 00565E04    mov        ecx,dword ptr [ebp+8]
 00565E07    mov        edx,1
 00565E0C    mov        eax,ebx
 00565E0E    call       00568004
 00565E13    xor        eax,eax
 00565E15    pop        edx
 00565E16    pop        ecx
 00565E17    pop        ecx
 00565E18    mov        dword ptr fs:[eax],edx
 00565E1B    push       565E3E
 00565E20    lea        eax,[ebp-30]
 00565E23    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565E29    call       @FinalizeRecord
 00565E2E    lea        eax,[ebp-4]
 00565E31    call       @IntfClear
 00565E36    ret
<00565E37    jmp        @HandleFinally
<00565E3C    jmp        00565E20
 00565E3E    pop        esi
 00565E3F    pop        ebx
 00565E40    mov        esp,ebp
 00565E42    pop        ebp
 00565E43    ret        4
*}
//end;

//00565E48
//constructor TZSUMFunction.Create(?:TZSUMFunction; _Dv__:Boolean);
//begin
{*
 00565E48    push       ebp
 00565E49    mov        ebp,esp
 00565E4B    push       ebx
 00565E4C    push       esi
 00565E4D    test       dl,dl
>00565E4F    je         00565E59
 00565E51    add        esp,0FFFFFFF0
 00565E54    call       @ClassCreate
 00565E59    mov        ebx,edx
 00565E5B    mov        esi,eax
 00565E5D    lea        eax,[esi+0C]; TZSUMFunction.?fC:String
 00565E60    mov        edx,565E90; 'SUM'
 00565E65    call       @LStrAsg
 00565E6A    mov        eax,esi
 00565E6C    test       bl,bl
>00565E6E    je         00565E7F
 00565E70    call       @AfterConstruction
 00565E75    pop        dword ptr fs:[0]
 00565E7C    add        esp,0C
 00565E7F    mov        eax,esi
 00565E81    pop        esi
 00565E82    pop        ebx
 00565E83    pop        ebp
 00565E84    ret
*}
//end;

//00565E94
//procedure sub_00565E94(?:?; ?:?; ?:?);
//begin
{*
 00565E94    push       ebp
 00565E95    mov        ebp,esp
 00565E97    push       ecx
 00565E98    mov        ecx,11
 00565E9D    push       0
 00565E9F    push       0
 00565EA1    dec        ecx
<00565EA2    jne        00565E9D
 00565EA4    push       ecx
 00565EA5    xchg       ecx,dword ptr [ebp-4]
 00565EA8    push       ebx
 00565EA9    push       esi
 00565EAA    push       edi
 00565EAB    mov        dword ptr [ebp-8],ecx
 00565EAE    mov        dword ptr [ebp-4],edx
 00565EB1    mov        esi,dword ptr [ebp+8]
 00565EB4    mov        eax,dword ptr [ebp-8]
 00565EB7    call       @IntfAddRef
 00565EBC    xor        eax,eax
 00565EBE    push       ebp
 00565EBF    push       565FAE
 00565EC4    push       dword ptr fs:[eax]
 00565EC7    mov        dword ptr fs:[eax],esp
 00565ECA    lea        ecx,[ebp-34]
 00565ECD    xor        edx,edx
 00565ECF    mov        eax,dword ptr [ebp-4]
 00565ED2    call       00568004
 00565ED7    lea        edx,[ebp-34]
 00565EDA    mov        eax,dword ptr [ebp-8]
 00565EDD    mov        ecx,dword ptr [eax]
 00565EDF    call       dword ptr [ecx+28]
 00565EE2    push       eax
 00565EE3    sar        eax,1F
 00565EE6    cmp        eax,edx
 00565EE8    pop        eax
>00565EE9    je         00565EF0
 00565EEB    call       @BoundErr
 00565EF0    mov        ebx,eax
 00565EF2    cmp        ebx,2
>00565EF5    jge        00565F18
 00565EF7    lea        edx,[ebp-38]
 00565EFA    mov        eax,[0061BBDC]; ^#122.sResString16:TResStringRec
 00565EFF    call       LoadResString
 00565F04    mov        ecx,dword ptr [ebp-38]
 00565F07    mov        dl,1
 00565F09    mov        eax,[00567C80]; TZExpressionError
 00565F0E    call       Exception.Create; TZExpressionError.Create
 00565F13    call       @RaiseExcept
 00565F18    mov        ecx,esi
 00565F1A    mov        edx,ebx
 00565F1C    mov        eax,dword ptr [ebp-4]
 00565F1F    call       00568004
 00565F24    sub        ebx,1
>00565F27    jno        00565F2E
 00565F29    call       @IntOver
 00565F2E    cmp        ebx,1
>00565F31    jl         00565F6C
 00565F33    lea        eax,[ebp-64]
 00565F36    push       eax
 00565F37    lea        ecx,[ebp-90]
 00565F3D    mov        edx,ebx
 00565F3F    mov        eax,dword ptr [ebp-4]
 00565F42    call       00568004
 00565F47    lea        ecx,[ebp-90]
 00565F4D    mov        edx,esi
 00565F4F    mov        eax,dword ptr [ebp-8]
 00565F52    mov        edi,dword ptr [eax]
 00565F54    call       dword ptr [edi+64]
 00565F57    lea        edx,[ebp-64]
 00565F5A    mov        eax,esi
 00565F5C    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00565F62    call       @CopyRecord
 00565F67    dec        ebx
 00565F68    test       ebx,ebx
<00565F6A    jne        00565F33
 00565F6C    xor        eax,eax
 00565F6E    pop        edx
 00565F6F    pop        ecx
 00565F70    pop        ecx
 00565F71    mov        dword ptr fs:[eax],edx
 00565F74    push       565FB5
 00565F79    lea        eax,[ebp-90]
 00565F7F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565F85    mov        ecx,2
 00565F8A    call       @FinalizeArray
 00565F8F    lea        eax,[ebp-38]
 00565F92    call       @LStrClr
 00565F97    lea        eax,[ebp-34]
 00565F9A    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00565FA0    call       @FinalizeRecord
 00565FA5    lea        eax,[ebp-8]
 00565FA8    call       @IntfClear
 00565FAD    ret
<00565FAE    jmp        @HandleFinally
<00565FB3    jmp        00565F79
 00565FB5    pop        edi
 00565FB6    pop        esi
 00565FB7    pop        ebx
 00565FB8    mov        esp,ebp
 00565FBA    pop        ebp
 00565FBB    ret        4
*}
//end;

//00565FC0
//constructor TZEFunction.Create(?:TZEFunction; _Dv__:Boolean);
//begin
{*
 00565FC0    push       ebp
 00565FC1    mov        ebp,esp
 00565FC3    push       ebx
 00565FC4    push       esi
 00565FC5    test       dl,dl
>00565FC7    je         00565FD1
 00565FC9    add        esp,0FFFFFFF0
 00565FCC    call       @ClassCreate
 00565FD1    mov        ebx,edx
 00565FD3    mov        esi,eax
 00565FD5    lea        eax,[esi+0C]; TZEFunction.?fC:String
 00565FD8    mov        edx,566008; 'E'
 00565FDD    call       @LStrAsg
 00565FE2    mov        eax,esi
 00565FE4    test       bl,bl
>00565FE6    je         00565FF7
 00565FE8    call       @AfterConstruction
 00565FED    pop        dword ptr fs:[0]
 00565FF4    add        esp,0C
 00565FF7    mov        eax,esi
 00565FF9    pop        esi
 00565FFA    pop        ebx
 00565FFB    pop        ebp
 00565FFC    ret
*}
//end;

//0056600C
//procedure sub_0056600C(?:?; ?:?; ?:?);
//begin
{*
 0056600C    push       ebp
 0056600D    mov        ebp,esp
 0056600F    push       ecx
 00566010    push       ebx
 00566011    push       esi
 00566012    mov        dword ptr [ebp-4],ecx
 00566015    mov        esi,edx
 00566017    mov        ebx,eax
 00566019    mov        eax,dword ptr [ebp-4]
 0056601C    call       @IntfAddRef
 00566021    xor        eax,eax
 00566023    push       ebp
 00566024    push       56606D
 00566029    push       dword ptr fs:[eax]
 0056602C    mov        dword ptr fs:[eax],esp
 0056602F    xor        ecx,ecx
 00566031    mov        edx,esi
 00566033    mov        eax,ebx
 00566035    call       005657EC
 0056603A    fld        tbyte ptr ds:[56607C]; 1:Extended
 00566040    call       @EXP
 00566045    add        esp,0FFFFFFF4
 00566048    fstp       tbyte ptr [esp]
 0056604B    wait
 0056604C    mov        edx,dword ptr [ebp+8]
 0056604F    mov        eax,dword ptr [ebp-4]
 00566052    mov        ecx,dword ptr [eax]
 00566054    call       dword ptr [ecx+4C]
 00566057    xor        eax,eax
 00566059    pop        edx
 0056605A    pop        ecx
 0056605B    pop        ecx
 0056605C    mov        dword ptr fs:[eax],edx
 0056605F    push       566074
 00566064    lea        eax,[ebp-4]
 00566067    call       @IntfClear
 0056606C    ret
<0056606D    jmp        @HandleFinally
<00566072    jmp        00566064
 00566074    pop        esi
 00566075    pop        ebx
 00566076    pop        ecx
 00566077    pop        ebp
 00566078    ret        4
*}
//end;

//00566088
//constructor TZPIFunction.Create(?:TZPIFunction; _Dv__:Boolean);
//begin
{*
 00566088    push       ebp
 00566089    mov        ebp,esp
 0056608B    push       ebx
 0056608C    push       esi
 0056608D    test       dl,dl
>0056608F    je         00566099
 00566091    add        esp,0FFFFFFF0
 00566094    call       @ClassCreate
 00566099    mov        ebx,edx
 0056609B    mov        esi,eax
 0056609D    lea        eax,[esi+0C]; TZPIFunction.?fC:String
 005660A0    mov        edx,5660D0; 'PI'
 005660A5    call       @LStrAsg
 005660AA    mov        eax,esi
 005660AC    test       bl,bl
>005660AE    je         005660BF
 005660B0    call       @AfterConstruction
 005660B5    pop        dword ptr fs:[0]
 005660BC    add        esp,0C
 005660BF    mov        eax,esi
 005660C1    pop        esi
 005660C2    pop        ebx
 005660C3    pop        ebp
 005660C4    ret
*}
//end;

//005660D4
//procedure sub_005660D4(?:?; ?:?; ?:?);
//begin
{*
 005660D4    push       ebp
 005660D5    mov        ebp,esp
 005660D7    push       ecx
 005660D8    push       ebx
 005660D9    push       esi
 005660DA    mov        dword ptr [ebp-4],ecx
 005660DD    mov        esi,edx
 005660DF    mov        ebx,eax
 005660E1    mov        eax,dword ptr [ebp-4]
 005660E4    call       @IntfAddRef
 005660E9    xor        eax,eax
 005660EB    push       ebp
 005660EC    push       566132
 005660F1    push       dword ptr fs:[eax]
 005660F4    mov        dword ptr fs:[eax],esp
 005660F7    xor        ecx,ecx
 005660F9    mov        edx,esi
 005660FB    mov        eax,ebx
 005660FD    call       005657EC
 00566102    push       4000
 00566107    push       0C90FDAA2
 0056610C    push       2168C235
 00566111    mov        edx,dword ptr [ebp+8]
 00566114    mov        eax,dword ptr [ebp-4]
 00566117    mov        ecx,dword ptr [eax]
 00566119    call       dword ptr [ecx+4C]
 0056611C    xor        eax,eax
 0056611E    pop        edx
 0056611F    pop        ecx
 00566120    pop        ecx
 00566121    mov        dword ptr fs:[eax],edx
 00566124    push       566139
 00566129    lea        eax,[ebp-4]
 0056612C    call       @IntfClear
 00566131    ret
<00566132    jmp        @HandleFinally
<00566137    jmp        00566129
 00566139    pop        esi
 0056613A    pop        ebx
 0056613B    pop        ecx
 0056613C    pop        ebp
 0056613D    ret        4
*}
//end;

//00566140
//constructor TZRndFunction.Create(?:TZRndFunction; _Dv__:Boolean);
//begin
{*
 00566140    push       ebp
 00566141    mov        ebp,esp
 00566143    push       ebx
 00566144    push       esi
 00566145    test       dl,dl
>00566147    je         00566151
 00566149    add        esp,0FFFFFFF0
 0056614C    call       @ClassCreate
 00566151    mov        ebx,edx
 00566153    mov        esi,eax
 00566155    lea        eax,[esi+0C]; TZRndFunction.?fC:String
 00566158    mov        edx,566188; 'RND'
 0056615D    call       @LStrAsg
 00566162    mov        eax,esi
 00566164    test       bl,bl
>00566166    je         00566177
 00566168    call       @AfterConstruction
 0056616D    pop        dword ptr fs:[0]
 00566174    add        esp,0C
 00566177    mov        eax,esi
 00566179    pop        esi
 0056617A    pop        ebx
 0056617B    pop        ebp
 0056617C    ret
*}
//end;

//0056618C
//procedure sub_0056618C(?:?; ?:?; ?:?);
//begin
{*
 0056618C    push       ebp
 0056618D    mov        ebp,esp
 0056618F    push       ecx
 00566190    push       ebx
 00566191    push       esi
 00566192    mov        dword ptr [ebp-4],ecx
 00566195    mov        esi,edx
 00566197    mov        ebx,eax
 00566199    mov        eax,dword ptr [ebp-4]
 0056619C    call       @IntfAddRef
 005661A1    xor        eax,eax
 005661A3    push       ebp
 005661A4    push       5661E7
 005661A9    push       dword ptr fs:[eax]
 005661AC    mov        dword ptr fs:[eax],esp
 005661AF    xor        ecx,ecx
 005661B1    mov        edx,esi
 005661B3    mov        eax,ebx
 005661B5    call       005657EC
 005661BA    call       @RandExt
 005661BF    add        esp,0FFFFFFF4
 005661C2    fstp       tbyte ptr [esp]
 005661C5    wait
 005661C6    mov        edx,dword ptr [ebp+8]
 005661C9    mov        eax,dword ptr [ebp-4]
 005661CC    mov        ecx,dword ptr [eax]
 005661CE    call       dword ptr [ecx+4C]
 005661D1    xor        eax,eax
 005661D3    pop        edx
 005661D4    pop        ecx
 005661D5    pop        ecx
 005661D6    mov        dword ptr fs:[eax],edx
 005661D9    push       5661EE
 005661DE    lea        eax,[ebp-4]
 005661E1    call       @IntfClear
 005661E6    ret
<005661E7    jmp        @HandleFinally
<005661EC    jmp        005661DE
 005661EE    pop        esi
 005661EF    pop        ebx
 005661F0    pop        ecx
 005661F1    pop        ebp
 005661F2    ret        4
*}
//end;

//005661F8
//constructor TZAbsFunction.Create(?:TZAbsFunction; _Dv__:Boolean);
//begin
{*
 005661F8    push       ebp
 005661F9    mov        ebp,esp
 005661FB    push       ebx
 005661FC    push       esi
 005661FD    test       dl,dl
>005661FF    je         00566209
 00566201    add        esp,0FFFFFFF0
 00566204    call       @ClassCreate
 00566209    mov        ebx,edx
 0056620B    mov        esi,eax
 0056620D    lea        eax,[esi+0C]; TZAbsFunction.?fC:String
 00566210    mov        edx,566240; 'ABS'
 00566215    call       @LStrAsg
 0056621A    mov        eax,esi
 0056621C    test       bl,bl
>0056621E    je         0056622F
 00566220    call       @AfterConstruction
 00566225    pop        dword ptr fs:[0]
 0056622C    add        esp,0C
 0056622F    mov        eax,esi
 00566231    pop        esi
 00566232    pop        ebx
 00566233    pop        ebp
 00566234    ret
*}
//end;

//00566244
//procedure sub_00566244(?:?; ?:?; ?:?);
//begin
{*
 00566244    push       ebp
 00566245    mov        ebp,esp
 00566247    add        esp,0FFFFFFD0
 0056624A    push       ebx
 0056624B    push       esi
 0056624C    push       edi
 0056624D    mov        dword ptr [ebp-4],ecx
 00566250    mov        esi,edx
 00566252    mov        ebx,eax
 00566254    mov        edi,dword ptr [ebp+8]
 00566257    mov        eax,dword ptr [ebp-4]
 0056625A    call       @IntfAddRef
 0056625F    lea        eax,[ebp-30]
 00566262    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566268    call       @InitializeRecord
 0056626D    xor        eax,eax
 0056626F    push       ebp
 00566270    push       566316
 00566275    push       dword ptr fs:[eax]
 00566278    mov        dword ptr fs:[eax],esp
 0056627B    mov        ecx,1
 00566280    mov        edx,esi
 00566282    mov        eax,ebx
 00566284    call       005657EC
 00566289    lea        ecx,[ebp-30]
 0056628C    mov        edx,1
 00566291    mov        eax,esi
 00566293    call       00568004
 00566298    mov        al,byte ptr [ebp-30]
 0056629B    cmp        al,2
>0056629D    jne        005662C6
 0056629F    mov        eax,dword ptr [ebp-2E]
 005662A2    mov        edx,dword ptr [ebp-2A]
 005662A5    test       edx,edx
>005662A7    jge        005662B8
 005662A9    xor        ecx,ecx
 005662AB    neg        eax
 005662AD    xchg       ecx,edx
 005662AF    sbb        edx,ecx
>005662B1    jno        005662B8
 005662B3    call       @IntOver
 005662B8    push       edx
 005662B9    push       eax
 005662BA    mov        edx,edi
 005662BC    mov        eax,dword ptr [ebp-4]
 005662BF    mov        ecx,dword ptr [eax]
 005662C1    call       dword ptr [ecx+48]
>005662C4    jmp        005662F2
 005662C6    cmp        al,3
>005662C8    jne        005662E2
 005662CA    fld        tbyte ptr [ebp-26]
 005662CD    fabs
 005662CF    add        esp,0FFFFFFF4
 005662D2    fstp       tbyte ptr [esp]
 005662D5    wait
 005662D6    mov        edx,edi
 005662D8    mov        eax,dword ptr [ebp-4]
 005662DB    mov        ecx,dword ptr [eax]
 005662DD    call       dword ptr [ecx+4C]
>005662E0    jmp        005662F2
 005662E2    mov        eax,edi
 005662E4    lea        edx,[ebp-30]
 005662E7    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 005662ED    call       @CopyRecord
 005662F2    xor        eax,eax
 005662F4    pop        edx
 005662F5    pop        ecx
 005662F6    pop        ecx
 005662F7    mov        dword ptr fs:[eax],edx
 005662FA    push       56631D
 005662FF    lea        eax,[ebp-30]
 00566302    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566308    call       @FinalizeRecord
 0056630D    lea        eax,[ebp-4]
 00566310    call       @IntfClear
 00566315    ret
<00566316    jmp        @HandleFinally
<0056631B    jmp        005662FF
 0056631D    pop        edi
 0056631E    pop        esi
 0056631F    pop        ebx
 00566320    mov        esp,ebp
 00566322    pop        ebp
 00566323    ret        4
*}
//end;

//00566328
//constructor TZAcosFunction.Create(?:TZAcosFunction; _Dv__:Boolean);
//begin
{*
 00566328    push       ebp
 00566329    mov        ebp,esp
 0056632B    push       ebx
 0056632C    push       esi
 0056632D    test       dl,dl
>0056632F    je         00566339
 00566331    add        esp,0FFFFFFF0
 00566334    call       @ClassCreate
 00566339    mov        ebx,edx
 0056633B    mov        esi,eax
 0056633D    lea        eax,[esi+0C]; TZAcosFunction.?fC:String
 00566340    mov        edx,566370; 'ACOS'
 00566345    call       @LStrAsg
 0056634A    mov        eax,esi
 0056634C    test       bl,bl
>0056634E    je         0056635F
 00566350    call       @AfterConstruction
 00566355    pop        dword ptr fs:[0]
 0056635C    add        esp,0C
 0056635F    mov        eax,esi
 00566361    pop        esi
 00566362    pop        ebx
 00566363    pop        ebp
 00566364    ret
*}
//end;

//00566378
//procedure sub_00566378(?:?; ?:?; ?:?);
//begin
{*
 00566378    push       ebp
 00566379    mov        ebp,esp
 0056637B    push       ecx
 0056637C    mov        ecx,5
 00566381    push       0
 00566383    push       0
 00566385    dec        ecx
<00566386    jne        00566381
 00566388    push       ecx
 00566389    xchg       ecx,dword ptr [ebp-4]
 0056638C    push       ebx
 0056638D    push       esi
 0056638E    mov        dword ptr [ebp-4],ecx
 00566391    mov        esi,edx
 00566393    mov        ebx,eax
 00566395    mov        eax,dword ptr [ebp-4]
 00566398    call       @IntfAddRef
 0056639D    xor        eax,eax
 0056639F    push       ebp
 005663A0    push       566415
 005663A5    push       dword ptr fs:[eax]
 005663A8    mov        dword ptr fs:[eax],esp
 005663AB    mov        ecx,1
 005663B0    mov        edx,esi
 005663B2    mov        eax,ebx
 005663B4    call       005657EC
 005663B9    lea        ecx,[ebp-30]
 005663BC    mov        edx,1
 005663C1    mov        eax,esi
 005663C3    call       00568004
 005663C8    lea        edx,[ebp-30]
 005663CB    mov        eax,dword ptr [ebp-4]
 005663CE    mov        ecx,dword ptr [eax]
 005663D0    call       dword ptr [ecx+2C]
 005663D3    add        esp,0FFFFFFF4
 005663D6    fstp       tbyte ptr [esp]
 005663D9    wait
 005663DA    call       ArcCos
 005663DF    add        esp,0FFFFFFF4
 005663E2    fstp       tbyte ptr [esp]
 005663E5    wait
 005663E6    mov        edx,dword ptr [ebp+8]
 005663E9    mov        eax,dword ptr [ebp-4]
 005663EC    mov        ecx,dword ptr [eax]
 005663EE    call       dword ptr [ecx+4C]
 005663F1    xor        eax,eax
 005663F3    pop        edx
 005663F4    pop        ecx
 005663F5    pop        ecx
 005663F6    mov        dword ptr fs:[eax],edx
 005663F9    push       56641C
 005663FE    lea        eax,[ebp-30]
 00566401    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566407    call       @FinalizeRecord
 0056640C    lea        eax,[ebp-4]
 0056640F    call       @IntfClear
 00566414    ret
<00566415    jmp        @HandleFinally
<0056641A    jmp        005663FE
 0056641C    pop        esi
 0056641D    pop        ebx
 0056641E    mov        esp,ebp
 00566420    pop        ebp
 00566421    ret        4
*}
//end;

//00566424
//constructor TZAsinFunction.Create(?:TZAsinFunction; _Dv__:Boolean);
//begin
{*
 00566424    push       ebp
 00566425    mov        ebp,esp
 00566427    push       ebx
 00566428    push       esi
 00566429    test       dl,dl
>0056642B    je         00566435
 0056642D    add        esp,0FFFFFFF0
 00566430    call       @ClassCreate
 00566435    mov        ebx,edx
 00566437    mov        esi,eax
 00566439    lea        eax,[esi+0C]; TZAsinFunction.?fC:String
 0056643C    mov        edx,56646C; 'ASIN'
 00566441    call       @LStrAsg
 00566446    mov        eax,esi
 00566448    test       bl,bl
>0056644A    je         0056645B
 0056644C    call       @AfterConstruction
 00566451    pop        dword ptr fs:[0]
 00566458    add        esp,0C
 0056645B    mov        eax,esi
 0056645D    pop        esi
 0056645E    pop        ebx
 0056645F    pop        ebp
 00566460    ret
*}
//end;

//00566474
//procedure sub_00566474(?:?; ?:?; ?:?);
//begin
{*
 00566474    push       ebp
 00566475    mov        ebp,esp
 00566477    push       ecx
 00566478    mov        ecx,5
 0056647D    push       0
 0056647F    push       0
 00566481    dec        ecx
<00566482    jne        0056647D
 00566484    push       ecx
 00566485    xchg       ecx,dword ptr [ebp-4]
 00566488    push       ebx
 00566489    push       esi
 0056648A    mov        dword ptr [ebp-4],ecx
 0056648D    mov        esi,edx
 0056648F    mov        ebx,eax
 00566491    mov        eax,dword ptr [ebp-4]
 00566494    call       @IntfAddRef
 00566499    xor        eax,eax
 0056649B    push       ebp
 0056649C    push       566511
 005664A1    push       dword ptr fs:[eax]
 005664A4    mov        dword ptr fs:[eax],esp
 005664A7    mov        ecx,1
 005664AC    mov        edx,esi
 005664AE    mov        eax,ebx
 005664B0    call       005657EC
 005664B5    lea        ecx,[ebp-30]
 005664B8    mov        edx,1
 005664BD    mov        eax,esi
 005664BF    call       00568004
 005664C4    lea        edx,[ebp-30]
 005664C7    mov        eax,dword ptr [ebp-4]
 005664CA    mov        ecx,dword ptr [eax]
 005664CC    call       dword ptr [ecx+2C]
 005664CF    add        esp,0FFFFFFF4
 005664D2    fstp       tbyte ptr [esp]
 005664D5    wait
 005664D6    call       ArcSin
 005664DB    add        esp,0FFFFFFF4
 005664DE    fstp       tbyte ptr [esp]
 005664E1    wait
 005664E2    mov        edx,dword ptr [ebp+8]
 005664E5    mov        eax,dword ptr [ebp-4]
 005664E8    mov        ecx,dword ptr [eax]
 005664EA    call       dword ptr [ecx+4C]
 005664ED    xor        eax,eax
 005664EF    pop        edx
 005664F0    pop        ecx
 005664F1    pop        ecx
 005664F2    mov        dword ptr fs:[eax],edx
 005664F5    push       566518
 005664FA    lea        eax,[ebp-30]
 005664FD    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566503    call       @FinalizeRecord
 00566508    lea        eax,[ebp-4]
 0056650B    call       @IntfClear
 00566510    ret
<00566511    jmp        @HandleFinally
<00566516    jmp        005664FA
 00566518    pop        esi
 00566519    pop        ebx
 0056651A    mov        esp,ebp
 0056651C    pop        ebp
 0056651D    ret        4
*}
//end;

//00566520
//constructor TZAtanFunction.Create(?:TZAtanFunction; _Dv__:Boolean);
//begin
{*
 00566520    push       ebp
 00566521    mov        ebp,esp
 00566523    push       ebx
 00566524    push       esi
 00566525    test       dl,dl
>00566527    je         00566531
 00566529    add        esp,0FFFFFFF0
 0056652C    call       @ClassCreate
 00566531    mov        ebx,edx
 00566533    mov        esi,eax
 00566535    lea        eax,[esi+0C]; TZAtanFunction.?fC:String
 00566538    mov        edx,566568; 'ATAN'
 0056653D    call       @LStrAsg
 00566542    mov        eax,esi
 00566544    test       bl,bl
>00566546    je         00566557
 00566548    call       @AfterConstruction
 0056654D    pop        dword ptr fs:[0]
 00566554    add        esp,0C
 00566557    mov        eax,esi
 00566559    pop        esi
 0056655A    pop        ebx
 0056655B    pop        ebp
 0056655C    ret
*}
//end;

//00566570
//procedure sub_00566570(?:?; ?:?; ?:?);
//begin
{*
 00566570    push       ebp
 00566571    mov        ebp,esp
 00566573    push       ecx
 00566574    mov        ecx,5
 00566579    push       0
 0056657B    push       0
 0056657D    dec        ecx
<0056657E    jne        00566579
 00566580    push       ecx
 00566581    xchg       ecx,dword ptr [ebp-4]
 00566584    push       ebx
 00566585    push       esi
 00566586    mov        dword ptr [ebp-4],ecx
 00566589    mov        esi,edx
 0056658B    mov        ebx,eax
 0056658D    mov        eax,dword ptr [ebp-4]
 00566590    call       @IntfAddRef
 00566595    xor        eax,eax
 00566597    push       ebp
 00566598    push       566605
 0056659D    push       dword ptr fs:[eax]
 005665A0    mov        dword ptr fs:[eax],esp
 005665A3    mov        ecx,1
 005665A8    mov        edx,esi
 005665AA    mov        eax,ebx
 005665AC    call       005657EC
 005665B1    lea        ecx,[ebp-30]
 005665B4    mov        edx,1
 005665B9    mov        eax,esi
 005665BB    call       00568004
 005665C0    lea        edx,[ebp-30]
 005665C3    mov        eax,dword ptr [ebp-4]
 005665C6    mov        ecx,dword ptr [eax]
 005665C8    call       dword ptr [ecx+2C]
 005665CB    fld1
 005665CD    fpatan
 005665CF    add        esp,0FFFFFFF4
 005665D2    fstp       tbyte ptr [esp]
 005665D5    wait
 005665D6    mov        edx,dword ptr [ebp+8]
 005665D9    mov        eax,dword ptr [ebp-4]
 005665DC    mov        ecx,dword ptr [eax]
 005665DE    call       dword ptr [ecx+4C]
 005665E1    xor        eax,eax
 005665E3    pop        edx
 005665E4    pop        ecx
 005665E5    pop        ecx
 005665E6    mov        dword ptr fs:[eax],edx
 005665E9    push       56660C
 005665EE    lea        eax,[ebp-30]
 005665F1    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005665F7    call       @FinalizeRecord
 005665FC    lea        eax,[ebp-4]
 005665FF    call       @IntfClear
 00566604    ret
<00566605    jmp        @HandleFinally
<0056660A    jmp        005665EE
 0056660C    pop        esi
 0056660D    pop        ebx
 0056660E    mov        esp,ebp
 00566610    pop        ebp
 00566611    ret        4
*}
//end;

//00566614
//constructor TZCeilFunction.Create(?:TZCeilFunction; _Dv__:Boolean);
//begin
{*
 00566614    push       ebp
 00566615    mov        ebp,esp
 00566617    push       ebx
 00566618    push       esi
 00566619    test       dl,dl
>0056661B    je         00566625
 0056661D    add        esp,0FFFFFFF0
 00566620    call       @ClassCreate
 00566625    mov        ebx,edx
 00566627    mov        esi,eax
 00566629    lea        eax,[esi+0C]; TZCeilFunction.?fC:String
 0056662C    mov        edx,56665C; 'CEIL'
 00566631    call       @LStrAsg
 00566636    mov        eax,esi
 00566638    test       bl,bl
>0056663A    je         0056664B
 0056663C    call       @AfterConstruction
 00566641    pop        dword ptr fs:[0]
 00566648    add        esp,0C
 0056664B    mov        eax,esi
 0056664D    pop        esi
 0056664E    pop        ebx
 0056664F    pop        ebp
 00566650    ret
*}
//end;

//00566664
//procedure sub_00566664(?:?; ?:?; ?:?);
//begin
{*
 00566664    push       ebp
 00566665    mov        ebp,esp
 00566667    push       ecx
 00566668    mov        ecx,5
 0056666D    push       0
 0056666F    push       0
 00566671    dec        ecx
<00566672    jne        0056666D
 00566674    push       ecx
 00566675    xchg       ecx,dword ptr [ebp-4]
 00566678    push       ebx
 00566679    push       esi
 0056667A    mov        dword ptr [ebp-4],ecx
 0056667D    mov        esi,edx
 0056667F    mov        ebx,eax
 00566681    mov        eax,dword ptr [ebp-4]
 00566684    call       @IntfAddRef
 00566689    xor        eax,eax
 0056668B    push       ebp
 0056668C    push       5666FD
 00566691    push       dword ptr fs:[eax]
 00566694    mov        dword ptr fs:[eax],esp
 00566697    mov        ecx,1
 0056669C    mov        edx,esi
 0056669E    mov        eax,ebx
 005666A0    call       005657EC
 005666A5    lea        ecx,[ebp-30]
 005666A8    mov        edx,1
 005666AD    mov        eax,esi
 005666AF    call       00568004
 005666B4    lea        edx,[ebp-30]
 005666B7    mov        eax,dword ptr [ebp-4]
 005666BA    mov        ecx,dword ptr [eax]
 005666BC    call       dword ptr [ecx+2C]
 005666BF    add        esp,0FFFFFFF4
 005666C2    fstp       tbyte ptr [esp]
 005666C5    wait
 005666C6    call       Ceil
 005666CB    cdq
 005666CC    push       edx
 005666CD    push       eax
 005666CE    mov        edx,dword ptr [ebp+8]
 005666D1    mov        eax,dword ptr [ebp-4]
 005666D4    mov        ecx,dword ptr [eax]
 005666D6    call       dword ptr [ecx+48]
 005666D9    xor        eax,eax
 005666DB    pop        edx
 005666DC    pop        ecx
 005666DD    pop        ecx
 005666DE    mov        dword ptr fs:[eax],edx
 005666E1    push       566704
 005666E6    lea        eax,[ebp-30]
 005666E9    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005666EF    call       @FinalizeRecord
 005666F4    lea        eax,[ebp-4]
 005666F7    call       @IntfClear
 005666FC    ret
<005666FD    jmp        @HandleFinally
<00566702    jmp        005666E6
 00566704    pop        esi
 00566705    pop        ebx
 00566706    mov        esp,ebp
 00566708    pop        ebp
 00566709    ret        4
*}
//end;

//0056670C
//constructor TZFloorFunction.Create(?:TZFloorFunction; _Dv__:Boolean);
//begin
{*
 0056670C    push       ebp
 0056670D    mov        ebp,esp
 0056670F    push       ebx
 00566710    push       esi
 00566711    test       dl,dl
>00566713    je         0056671D
 00566715    add        esp,0FFFFFFF0
 00566718    call       @ClassCreate
 0056671D    mov        ebx,edx
 0056671F    mov        esi,eax
 00566721    lea        eax,[esi+0C]; TZFloorFunction.?fC:String
 00566724    mov        edx,566754; 'FLOOR'
 00566729    call       @LStrAsg
 0056672E    mov        eax,esi
 00566730    test       bl,bl
>00566732    je         00566743
 00566734    call       @AfterConstruction
 00566739    pop        dword ptr fs:[0]
 00566740    add        esp,0C
 00566743    mov        eax,esi
 00566745    pop        esi
 00566746    pop        ebx
 00566747    pop        ebp
 00566748    ret
*}
//end;

//0056675C
//procedure sub_0056675C(?:?; ?:?; ?:?);
//begin
{*
 0056675C    push       ebp
 0056675D    mov        ebp,esp
 0056675F    push       ecx
 00566760    mov        ecx,5
 00566765    push       0
 00566767    push       0
 00566769    dec        ecx
<0056676A    jne        00566765
 0056676C    push       ecx
 0056676D    xchg       ecx,dword ptr [ebp-4]
 00566770    push       ebx
 00566771    push       esi
 00566772    mov        dword ptr [ebp-4],ecx
 00566775    mov        esi,edx
 00566777    mov        ebx,eax
 00566779    mov        eax,dword ptr [ebp-4]
 0056677C    call       @IntfAddRef
 00566781    xor        eax,eax
 00566783    push       ebp
 00566784    push       5667F5
 00566789    push       dword ptr fs:[eax]
 0056678C    mov        dword ptr fs:[eax],esp
 0056678F    mov        ecx,1
 00566794    mov        edx,esi
 00566796    mov        eax,ebx
 00566798    call       005657EC
 0056679D    lea        ecx,[ebp-30]
 005667A0    mov        edx,1
 005667A5    mov        eax,esi
 005667A7    call       00568004
 005667AC    lea        edx,[ebp-30]
 005667AF    mov        eax,dword ptr [ebp-4]
 005667B2    mov        ecx,dword ptr [eax]
 005667B4    call       dword ptr [ecx+2C]
 005667B7    add        esp,0FFFFFFF4
 005667BA    fstp       tbyte ptr [esp]
 005667BD    wait
 005667BE    call       Floor
 005667C3    cdq
 005667C4    push       edx
 005667C5    push       eax
 005667C6    mov        edx,dword ptr [ebp+8]
 005667C9    mov        eax,dword ptr [ebp-4]
 005667CC    mov        ecx,dword ptr [eax]
 005667CE    call       dword ptr [ecx+48]
 005667D1    xor        eax,eax
 005667D3    pop        edx
 005667D4    pop        ecx
 005667D5    pop        ecx
 005667D6    mov        dword ptr fs:[eax],edx
 005667D9    push       5667FC
 005667DE    lea        eax,[ebp-30]
 005667E1    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005667E7    call       @FinalizeRecord
 005667EC    lea        eax,[ebp-4]
 005667EF    call       @IntfClear
 005667F4    ret
<005667F5    jmp        @HandleFinally
<005667FA    jmp        005667DE
 005667FC    pop        esi
 005667FD    pop        ebx
 005667FE    mov        esp,ebp
 00566800    pop        ebp
 00566801    ret        4
*}
//end;

//00566804
//constructor TZCosFunction.Create(?:TZCosFunction; _Dv__:Boolean);
//begin
{*
 00566804    push       ebp
 00566805    mov        ebp,esp
 00566807    push       ebx
 00566808    push       esi
 00566809    test       dl,dl
>0056680B    je         00566815
 0056680D    add        esp,0FFFFFFF0
 00566810    call       @ClassCreate
 00566815    mov        ebx,edx
 00566817    mov        esi,eax
 00566819    lea        eax,[esi+0C]; TZCosFunction.?fC:String
 0056681C    mov        edx,56684C; 'COS'
 00566821    call       @LStrAsg
 00566826    mov        eax,esi
 00566828    test       bl,bl
>0056682A    je         0056683B
 0056682C    call       @AfterConstruction
 00566831    pop        dword ptr fs:[0]
 00566838    add        esp,0C
 0056683B    mov        eax,esi
 0056683D    pop        esi
 0056683E    pop        ebx
 0056683F    pop        ebp
 00566840    ret
*}
//end;

//00566850
//procedure sub_00566850(?:?; ?:?; ?:?);
//begin
{*
 00566850    push       ebp
 00566851    mov        ebp,esp
 00566853    push       ecx
 00566854    mov        ecx,5
 00566859    push       0
 0056685B    push       0
 0056685D    dec        ecx
<0056685E    jne        00566859
 00566860    push       ecx
 00566861    xchg       ecx,dword ptr [ebp-4]
 00566864    push       ebx
 00566865    push       esi
 00566866    mov        dword ptr [ebp-4],ecx
 00566869    mov        esi,edx
 0056686B    mov        ebx,eax
 0056686D    mov        eax,dword ptr [ebp-4]
 00566870    call       @IntfAddRef
 00566875    xor        eax,eax
 00566877    push       ebp
 00566878    push       5668E6
 0056687D    push       dword ptr fs:[eax]
 00566880    mov        dword ptr fs:[eax],esp
 00566883    mov        ecx,1
 00566888    mov        edx,esi
 0056688A    mov        eax,ebx
 0056688C    call       005657EC
 00566891    lea        ecx,[ebp-30]
 00566894    mov        edx,1
 00566899    mov        eax,esi
 0056689B    call       00568004
 005668A0    lea        edx,[ebp-30]
 005668A3    mov        eax,dword ptr [ebp-4]
 005668A6    mov        ecx,dword ptr [eax]
 005668A8    call       dword ptr [ecx+2C]
 005668AB    call       @COS
 005668B0    add        esp,0FFFFFFF4
 005668B3    fstp       tbyte ptr [esp]
 005668B6    wait
 005668B7    mov        edx,dword ptr [ebp+8]
 005668BA    mov        eax,dword ptr [ebp-4]
 005668BD    mov        ecx,dword ptr [eax]
 005668BF    call       dword ptr [ecx+4C]
 005668C2    xor        eax,eax
 005668C4    pop        edx
 005668C5    pop        ecx
 005668C6    pop        ecx
 005668C7    mov        dword ptr fs:[eax],edx
 005668CA    push       5668ED
 005668CF    lea        eax,[ebp-30]
 005668D2    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005668D8    call       @FinalizeRecord
 005668DD    lea        eax,[ebp-4]
 005668E0    call       @IntfClear
 005668E5    ret
<005668E6    jmp        @HandleFinally
<005668EB    jmp        005668CF
 005668ED    pop        esi
 005668EE    pop        ebx
 005668EF    mov        esp,ebp
 005668F1    pop        ebp
 005668F2    ret        4
*}
//end;

//005668F8
//constructor TZSinFunction.Create(?:TZSinFunction; _Dv__:Boolean);
//begin
{*
 005668F8    push       ebp
 005668F9    mov        ebp,esp
 005668FB    push       ebx
 005668FC    push       esi
 005668FD    test       dl,dl
>005668FF    je         00566909
 00566901    add        esp,0FFFFFFF0
 00566904    call       @ClassCreate
 00566909    mov        ebx,edx
 0056690B    mov        esi,eax
 0056690D    lea        eax,[esi+0C]; TZSinFunction.?fC:String
 00566910    mov        edx,566940; 'SIN'
 00566915    call       @LStrAsg
 0056691A    mov        eax,esi
 0056691C    test       bl,bl
>0056691E    je         0056692F
 00566920    call       @AfterConstruction
 00566925    pop        dword ptr fs:[0]
 0056692C    add        esp,0C
 0056692F    mov        eax,esi
 00566931    pop        esi
 00566932    pop        ebx
 00566933    pop        ebp
 00566934    ret
*}
//end;

//00566944
//procedure sub_00566944(?:?; ?:?; ?:?);
//begin
{*
 00566944    push       ebp
 00566945    mov        ebp,esp
 00566947    push       ecx
 00566948    mov        ecx,5
 0056694D    push       0
 0056694F    push       0
 00566951    dec        ecx
<00566952    jne        0056694D
 00566954    push       ecx
 00566955    xchg       ecx,dword ptr [ebp-4]
 00566958    push       ebx
 00566959    push       esi
 0056695A    mov        dword ptr [ebp-4],ecx
 0056695D    mov        esi,edx
 0056695F    mov        ebx,eax
 00566961    mov        eax,dword ptr [ebp-4]
 00566964    call       @IntfAddRef
 00566969    xor        eax,eax
 0056696B    push       ebp
 0056696C    push       5669DA
 00566971    push       dword ptr fs:[eax]
 00566974    mov        dword ptr fs:[eax],esp
 00566977    mov        ecx,1
 0056697C    mov        edx,esi
 0056697E    mov        eax,ebx
 00566980    call       005657EC
 00566985    lea        ecx,[ebp-30]
 00566988    mov        edx,1
 0056698D    mov        eax,esi
 0056698F    call       00568004
 00566994    lea        edx,[ebp-30]
 00566997    mov        eax,dword ptr [ebp-4]
 0056699A    mov        ecx,dword ptr [eax]
 0056699C    call       dword ptr [ecx+2C]
 0056699F    call       @SIN
 005669A4    add        esp,0FFFFFFF4
 005669A7    fstp       tbyte ptr [esp]
 005669AA    wait
 005669AB    mov        edx,dword ptr [ebp+8]
 005669AE    mov        eax,dword ptr [ebp-4]
 005669B1    mov        ecx,dword ptr [eax]
 005669B3    call       dword ptr [ecx+4C]
 005669B6    xor        eax,eax
 005669B8    pop        edx
 005669B9    pop        ecx
 005669BA    pop        ecx
 005669BB    mov        dword ptr fs:[eax],edx
 005669BE    push       5669E1
 005669C3    lea        eax,[ebp-30]
 005669C6    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005669CC    call       @FinalizeRecord
 005669D1    lea        eax,[ebp-4]
 005669D4    call       @IntfClear
 005669D9    ret
<005669DA    jmp        @HandleFinally
<005669DF    jmp        005669C3
 005669E1    pop        esi
 005669E2    pop        ebx
 005669E3    mov        esp,ebp
 005669E5    pop        ebp
 005669E6    ret        4
*}
//end;

//005669EC
//constructor TZTanFunction.Create(?:TZTanFunction; _Dv__:Boolean);
//begin
{*
 005669EC    push       ebp
 005669ED    mov        ebp,esp
 005669EF    push       ebx
 005669F0    push       esi
 005669F1    test       dl,dl
>005669F3    je         005669FD
 005669F5    add        esp,0FFFFFFF0
 005669F8    call       @ClassCreate
 005669FD    mov        ebx,edx
 005669FF    mov        esi,eax
 00566A01    lea        eax,[esi+0C]; TZTanFunction.?fC:String
 00566A04    mov        edx,566A34; 'TAN'
 00566A09    call       @LStrAsg
 00566A0E    mov        eax,esi
 00566A10    test       bl,bl
>00566A12    je         00566A23
 00566A14    call       @AfterConstruction
 00566A19    pop        dword ptr fs:[0]
 00566A20    add        esp,0C
 00566A23    mov        eax,esi
 00566A25    pop        esi
 00566A26    pop        ebx
 00566A27    pop        ebp
 00566A28    ret
*}
//end;

//00566A38
//procedure sub_00566A38(?:?; ?:?; ?:?);
//begin
{*
 00566A38    push       ebp
 00566A39    mov        ebp,esp
 00566A3B    push       ecx
 00566A3C    mov        ecx,5
 00566A41    push       0
 00566A43    push       0
 00566A45    dec        ecx
<00566A46    jne        00566A41
 00566A48    push       ecx
 00566A49    xchg       ecx,dword ptr [ebp-4]
 00566A4C    push       ebx
 00566A4D    push       esi
 00566A4E    mov        dword ptr [ebp-4],ecx
 00566A51    mov        esi,edx
 00566A53    mov        ebx,eax
 00566A55    mov        eax,dword ptr [ebp-4]
 00566A58    call       @IntfAddRef
 00566A5D    xor        eax,eax
 00566A5F    push       ebp
 00566A60    push       566AD5
 00566A65    push       dword ptr fs:[eax]
 00566A68    mov        dword ptr fs:[eax],esp
 00566A6B    mov        ecx,1
 00566A70    mov        edx,esi
 00566A72    mov        eax,ebx
 00566A74    call       005657EC
 00566A79    lea        ecx,[ebp-30]
 00566A7C    mov        edx,1
 00566A81    mov        eax,esi
 00566A83    call       00568004
 00566A88    lea        edx,[ebp-30]
 00566A8B    mov        eax,dword ptr [ebp-4]
 00566A8E    mov        ecx,dword ptr [eax]
 00566A90    call       dword ptr [ecx+2C]
 00566A93    add        esp,0FFFFFFF4
 00566A96    fstp       tbyte ptr [esp]
 00566A99    wait
 00566A9A    call       Tan
 00566A9F    add        esp,0FFFFFFF4
 00566AA2    fstp       tbyte ptr [esp]
 00566AA5    wait
 00566AA6    mov        edx,dword ptr [ebp+8]
 00566AA9    mov        eax,dword ptr [ebp-4]
 00566AAC    mov        ecx,dword ptr [eax]
 00566AAE    call       dword ptr [ecx+4C]
 00566AB1    xor        eax,eax
 00566AB3    pop        edx
 00566AB4    pop        ecx
 00566AB5    pop        ecx
 00566AB6    mov        dword ptr fs:[eax],edx
 00566AB9    push       566ADC
 00566ABE    lea        eax,[ebp-30]
 00566AC1    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566AC7    call       @FinalizeRecord
 00566ACC    lea        eax,[ebp-4]
 00566ACF    call       @IntfClear
 00566AD4    ret
<00566AD5    jmp        @HandleFinally
<00566ADA    jmp        00566ABE
 00566ADC    pop        esi
 00566ADD    pop        ebx
 00566ADE    mov        esp,ebp
 00566AE0    pop        ebp
 00566AE1    ret        4
*}
//end;

//00566AE4
//constructor TZExpFunction.Create(?:TZExpFunction; _Dv__:Boolean);
//begin
{*
 00566AE4    push       ebp
 00566AE5    mov        ebp,esp
 00566AE7    push       ebx
 00566AE8    push       esi
 00566AE9    test       dl,dl
>00566AEB    je         00566AF5
 00566AED    add        esp,0FFFFFFF0
 00566AF0    call       @ClassCreate
 00566AF5    mov        ebx,edx
 00566AF7    mov        esi,eax
 00566AF9    lea        eax,[esi+0C]; TZExpFunction.?fC:String
 00566AFC    mov        edx,566B2C; 'EXP'
 00566B01    call       @LStrAsg
 00566B06    mov        eax,esi
 00566B08    test       bl,bl
>00566B0A    je         00566B1B
 00566B0C    call       @AfterConstruction
 00566B11    pop        dword ptr fs:[0]
 00566B18    add        esp,0C
 00566B1B    mov        eax,esi
 00566B1D    pop        esi
 00566B1E    pop        ebx
 00566B1F    pop        ebp
 00566B20    ret
*}
//end;

//00566B30
//procedure sub_00566B30(?:?; ?:?; ?:?);
//begin
{*
 00566B30    push       ebp
 00566B31    mov        ebp,esp
 00566B33    push       ecx
 00566B34    mov        ecx,5
 00566B39    push       0
 00566B3B    push       0
 00566B3D    dec        ecx
<00566B3E    jne        00566B39
 00566B40    push       ecx
 00566B41    xchg       ecx,dword ptr [ebp-4]
 00566B44    push       ebx
 00566B45    push       esi
 00566B46    mov        dword ptr [ebp-4],ecx
 00566B49    mov        esi,edx
 00566B4B    mov        ebx,eax
 00566B4D    mov        eax,dword ptr [ebp-4]
 00566B50    call       @IntfAddRef
 00566B55    xor        eax,eax
 00566B57    push       ebp
 00566B58    push       566BC6
 00566B5D    push       dword ptr fs:[eax]
 00566B60    mov        dword ptr fs:[eax],esp
 00566B63    mov        ecx,1
 00566B68    mov        edx,esi
 00566B6A    mov        eax,ebx
 00566B6C    call       005657EC
 00566B71    lea        ecx,[ebp-30]
 00566B74    mov        edx,1
 00566B79    mov        eax,esi
 00566B7B    call       00568004
 00566B80    lea        edx,[ebp-30]
 00566B83    mov        eax,dword ptr [ebp-4]
 00566B86    mov        ecx,dword ptr [eax]
 00566B88    call       dword ptr [ecx+2C]
 00566B8B    call       @EXP
 00566B90    add        esp,0FFFFFFF4
 00566B93    fstp       tbyte ptr [esp]
 00566B96    wait
 00566B97    mov        edx,dword ptr [ebp+8]
 00566B9A    mov        eax,dword ptr [ebp-4]
 00566B9D    mov        ecx,dword ptr [eax]
 00566B9F    call       dword ptr [ecx+4C]
 00566BA2    xor        eax,eax
 00566BA4    pop        edx
 00566BA5    pop        ecx
 00566BA6    pop        ecx
 00566BA7    mov        dword ptr fs:[eax],edx
 00566BAA    push       566BCD
 00566BAF    lea        eax,[ebp-30]
 00566BB2    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566BB8    call       @FinalizeRecord
 00566BBD    lea        eax,[ebp-4]
 00566BC0    call       @IntfClear
 00566BC5    ret
<00566BC6    jmp        @HandleFinally
<00566BCB    jmp        00566BAF
 00566BCD    pop        esi
 00566BCE    pop        ebx
 00566BCF    mov        esp,ebp
 00566BD1    pop        ebp
 00566BD2    ret        4
*}
//end;

//00566BD8
//constructor TZLogFunction.Create(?:TZLogFunction; _Dv__:Boolean);
//begin
{*
 00566BD8    push       ebp
 00566BD9    mov        ebp,esp
 00566BDB    push       ebx
 00566BDC    push       esi
 00566BDD    test       dl,dl
>00566BDF    je         00566BE9
 00566BE1    add        esp,0FFFFFFF0
 00566BE4    call       @ClassCreate
 00566BE9    mov        ebx,edx
 00566BEB    mov        esi,eax
 00566BED    lea        eax,[esi+0C]; TZLogFunction.?fC:String
 00566BF0    mov        edx,566C20; 'LOG'
 00566BF5    call       @LStrAsg
 00566BFA    mov        eax,esi
 00566BFC    test       bl,bl
>00566BFE    je         00566C0F
 00566C00    call       @AfterConstruction
 00566C05    pop        dword ptr fs:[0]
 00566C0C    add        esp,0C
 00566C0F    mov        eax,esi
 00566C11    pop        esi
 00566C12    pop        ebx
 00566C13    pop        ebp
 00566C14    ret
*}
//end;

//00566C24
//procedure sub_00566C24(?:?; ?:?; ?:?);
//begin
{*
 00566C24    push       ebp
 00566C25    mov        ebp,esp
 00566C27    push       ecx
 00566C28    mov        ecx,5
 00566C2D    push       0
 00566C2F    push       0
 00566C31    dec        ecx
<00566C32    jne        00566C2D
 00566C34    push       ecx
 00566C35    xchg       ecx,dword ptr [ebp-4]
 00566C38    push       ebx
 00566C39    push       esi
 00566C3A    mov        dword ptr [ebp-4],ecx
 00566C3D    mov        esi,edx
 00566C3F    mov        ebx,eax
 00566C41    mov        eax,dword ptr [ebp-4]
 00566C44    call       @IntfAddRef
 00566C49    xor        eax,eax
 00566C4B    push       ebp
 00566C4C    push       566CBB
 00566C51    push       dword ptr fs:[eax]
 00566C54    mov        dword ptr fs:[eax],esp
 00566C57    mov        ecx,1
 00566C5C    mov        edx,esi
 00566C5E    mov        eax,ebx
 00566C60    call       005657EC
 00566C65    lea        ecx,[ebp-30]
 00566C68    mov        edx,1
 00566C6D    mov        eax,esi
 00566C6F    call       00568004
 00566C74    lea        edx,[ebp-30]
 00566C77    mov        eax,dword ptr [ebp-4]
 00566C7A    mov        ecx,dword ptr [eax]
 00566C7C    call       dword ptr [ecx+2C]
 00566C7F    fldln2
 00566C81    fxch       st(1)
 00566C83    fyl2x
 00566C85    add        esp,0FFFFFFF4
 00566C88    fstp       tbyte ptr [esp]
 00566C8B    wait
 00566C8C    mov        edx,dword ptr [ebp+8]
 00566C8F    mov        eax,dword ptr [ebp-4]
 00566C92    mov        ecx,dword ptr [eax]
 00566C94    call       dword ptr [ecx+4C]
 00566C97    xor        eax,eax
 00566C99    pop        edx
 00566C9A    pop        ecx
 00566C9B    pop        ecx
 00566C9C    mov        dword ptr fs:[eax],edx
 00566C9F    push       566CC2
 00566CA4    lea        eax,[ebp-30]
 00566CA7    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566CAD    call       @FinalizeRecord
 00566CB2    lea        eax,[ebp-4]
 00566CB5    call       @IntfClear
 00566CBA    ret
<00566CBB    jmp        @HandleFinally
<00566CC0    jmp        00566CA4
 00566CC2    pop        esi
 00566CC3    pop        ebx
 00566CC4    mov        esp,ebp
 00566CC6    pop        ebp
 00566CC7    ret        4
*}
//end;

//00566CCC
//constructor TZLog10Function.Create(?:TZLog10Function; _Dv__:Boolean);
//begin
{*
 00566CCC    push       ebp
 00566CCD    mov        ebp,esp
 00566CCF    push       ebx
 00566CD0    push       esi
 00566CD1    test       dl,dl
>00566CD3    je         00566CDD
 00566CD5    add        esp,0FFFFFFF0
 00566CD8    call       @ClassCreate
 00566CDD    mov        ebx,edx
 00566CDF    mov        esi,eax
 00566CE1    lea        eax,[esi+0C]; TZLog10Function.?fC:String
 00566CE4    mov        edx,566D14; 'LOG10'
 00566CE9    call       @LStrAsg
 00566CEE    mov        eax,esi
 00566CF0    test       bl,bl
>00566CF2    je         00566D03
 00566CF4    call       @AfterConstruction
 00566CF9    pop        dword ptr fs:[0]
 00566D00    add        esp,0C
 00566D03    mov        eax,esi
 00566D05    pop        esi
 00566D06    pop        ebx
 00566D07    pop        ebp
 00566D08    ret
*}
//end;

//00566D1C
//procedure sub_00566D1C(?:?; ?:?; ?:?);
//begin
{*
 00566D1C    push       ebp
 00566D1D    mov        ebp,esp
 00566D1F    push       ecx
 00566D20    mov        ecx,5
 00566D25    push       0
 00566D27    push       0
 00566D29    dec        ecx
<00566D2A    jne        00566D25
 00566D2C    push       ecx
 00566D2D    xchg       ecx,dword ptr [ebp-4]
 00566D30    push       ebx
 00566D31    push       esi
 00566D32    mov        dword ptr [ebp-4],ecx
 00566D35    mov        esi,edx
 00566D37    mov        ebx,eax
 00566D39    mov        eax,dword ptr [ebp-4]
 00566D3C    call       @IntfAddRef
 00566D41    xor        eax,eax
 00566D43    push       ebp
 00566D44    push       566DB9
 00566D49    push       dword ptr fs:[eax]
 00566D4C    mov        dword ptr fs:[eax],esp
 00566D4F    mov        ecx,1
 00566D54    mov        edx,esi
 00566D56    mov        eax,ebx
 00566D58    call       005657EC
 00566D5D    lea        ecx,[ebp-30]
 00566D60    mov        edx,1
 00566D65    mov        eax,esi
 00566D67    call       00568004
 00566D6C    lea        edx,[ebp-30]
 00566D6F    mov        eax,dword ptr [ebp-4]
 00566D72    mov        ecx,dword ptr [eax]
 00566D74    call       dword ptr [ecx+2C]
 00566D77    add        esp,0FFFFFFF4
 00566D7A    fstp       tbyte ptr [esp]
 00566D7D    wait
 00566D7E    call       Log10
 00566D83    add        esp,0FFFFFFF4
 00566D86    fstp       tbyte ptr [esp]
 00566D89    wait
 00566D8A    mov        edx,dword ptr [ebp+8]
 00566D8D    mov        eax,dword ptr [ebp-4]
 00566D90    mov        ecx,dword ptr [eax]
 00566D92    call       dword ptr [ecx+4C]
 00566D95    xor        eax,eax
 00566D97    pop        edx
 00566D98    pop        ecx
 00566D99    pop        ecx
 00566D9A    mov        dword ptr fs:[eax],edx
 00566D9D    push       566DC0
 00566DA2    lea        eax,[ebp-30]
 00566DA5    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566DAB    call       @FinalizeRecord
 00566DB0    lea        eax,[ebp-4]
 00566DB3    call       @IntfClear
 00566DB8    ret
<00566DB9    jmp        @HandleFinally
<00566DBE    jmp        00566DA2
 00566DC0    pop        esi
 00566DC1    pop        ebx
 00566DC2    mov        esp,ebp
 00566DC4    pop        ebp
 00566DC5    ret        4
*}
//end;

//00566DC8
//constructor TZRoundFunction.Create(?:TZRoundFunction; _Dv__:Boolean);
//begin
{*
 00566DC8    push       ebp
 00566DC9    mov        ebp,esp
 00566DCB    push       ebx
 00566DCC    push       esi
 00566DCD    test       dl,dl
>00566DCF    je         00566DD9
 00566DD1    add        esp,0FFFFFFF0
 00566DD4    call       @ClassCreate
 00566DD9    mov        ebx,edx
 00566DDB    mov        esi,eax
 00566DDD    lea        eax,[esi+0C]; TZRoundFunction.?fC:String
 00566DE0    mov        edx,566E10; 'ROUND'
 00566DE5    call       @LStrAsg
 00566DEA    mov        eax,esi
 00566DEC    test       bl,bl
>00566DEE    je         00566DFF
 00566DF0    call       @AfterConstruction
 00566DF5    pop        dword ptr fs:[0]
 00566DFC    add        esp,0C
 00566DFF    mov        eax,esi
 00566E01    pop        esi
 00566E02    pop        ebx
 00566E03    pop        ebp
 00566E04    ret
*}
//end;

//00566E18
//procedure sub_00566E18(?:?; ?:?; ?:?);
//begin
{*
 00566E18    push       ebp
 00566E19    mov        ebp,esp
 00566E1B    push       ecx
 00566E1C    mov        ecx,5
 00566E21    push       0
 00566E23    push       0
 00566E25    dec        ecx
<00566E26    jne        00566E21
 00566E28    push       ecx
 00566E29    xchg       ecx,dword ptr [ebp-4]
 00566E2C    push       ebx
 00566E2D    push       esi
 00566E2E    mov        dword ptr [ebp-4],ecx
 00566E31    mov        esi,edx
 00566E33    mov        ebx,eax
 00566E35    mov        eax,dword ptr [ebp-4]
 00566E38    call       @IntfAddRef
 00566E3D    xor        eax,eax
 00566E3F    push       ebp
 00566E40    push       566EA9
 00566E45    push       dword ptr fs:[eax]
 00566E48    mov        dword ptr fs:[eax],esp
 00566E4B    mov        ecx,1
 00566E50    mov        edx,esi
 00566E52    mov        eax,ebx
 00566E54    call       005657EC
 00566E59    lea        ecx,[ebp-30]
 00566E5C    mov        edx,1
 00566E61    mov        eax,esi
 00566E63    call       00568004
 00566E68    lea        edx,[ebp-30]
 00566E6B    mov        eax,dword ptr [ebp-4]
 00566E6E    mov        ecx,dword ptr [eax]
 00566E70    call       dword ptr [ecx+2C]
 00566E73    call       @ROUND
 00566E78    push       edx
 00566E79    push       eax
 00566E7A    mov        edx,dword ptr [ebp+8]
 00566E7D    mov        eax,dword ptr [ebp-4]
 00566E80    mov        ecx,dword ptr [eax]
 00566E82    call       dword ptr [ecx+48]
 00566E85    xor        eax,eax
 00566E87    pop        edx
 00566E88    pop        ecx
 00566E89    pop        ecx
 00566E8A    mov        dword ptr fs:[eax],edx
 00566E8D    push       566EB0
 00566E92    lea        eax,[ebp-30]
 00566E95    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566E9B    call       @FinalizeRecord
 00566EA0    lea        eax,[ebp-4]
 00566EA3    call       @IntfClear
 00566EA8    ret
<00566EA9    jmp        @HandleFinally
<00566EAE    jmp        00566E92
 00566EB0    pop        esi
 00566EB1    pop        ebx
 00566EB2    mov        esp,ebp
 00566EB4    pop        ebp
 00566EB5    ret        4
*}
//end;

//00566EB8
//constructor TZSqrFunction.Create(?:TZSqrFunction; _Dv__:Boolean);
//begin
{*
 00566EB8    push       ebp
 00566EB9    mov        ebp,esp
 00566EBB    push       ebx
 00566EBC    push       esi
 00566EBD    test       dl,dl
>00566EBF    je         00566EC9
 00566EC1    add        esp,0FFFFFFF0
 00566EC4    call       @ClassCreate
 00566EC9    mov        ebx,edx
 00566ECB    mov        esi,eax
 00566ECD    lea        eax,[esi+0C]; TZSqrFunction.?fC:String
 00566ED0    mov        edx,566F00; 'SQR'
 00566ED5    call       @LStrAsg
 00566EDA    mov        eax,esi
 00566EDC    test       bl,bl
>00566EDE    je         00566EEF
 00566EE0    call       @AfterConstruction
 00566EE5    pop        dword ptr fs:[0]
 00566EEC    add        esp,0C
 00566EEF    mov        eax,esi
 00566EF1    pop        esi
 00566EF2    pop        ebx
 00566EF3    pop        ebp
 00566EF4    ret
*}
//end;

//00566F04
//procedure sub_00566F04(?:?; ?:?; ?:?);
//begin
{*
 00566F04    push       ebp
 00566F05    mov        ebp,esp
 00566F07    push       ecx
 00566F08    mov        ecx,5
 00566F0D    push       0
 00566F0F    push       0
 00566F11    dec        ecx
<00566F12    jne        00566F0D
 00566F14    push       ecx
 00566F15    xchg       ecx,dword ptr [ebp-4]
 00566F18    push       ebx
 00566F19    push       esi
 00566F1A    mov        dword ptr [ebp-4],ecx
 00566F1D    mov        esi,edx
 00566F1F    mov        ebx,eax
 00566F21    mov        eax,dword ptr [ebp-4]
 00566F24    call       @IntfAddRef
 00566F29    xor        eax,eax
 00566F2B    push       ebp
 00566F2C    push       566F97
 00566F31    push       dword ptr fs:[eax]
 00566F34    mov        dword ptr fs:[eax],esp
 00566F37    mov        ecx,1
 00566F3C    mov        edx,esi
 00566F3E    mov        eax,ebx
 00566F40    call       005657EC
 00566F45    lea        ecx,[ebp-30]
 00566F48    mov        edx,1
 00566F4D    mov        eax,esi
 00566F4F    call       00568004
 00566F54    lea        edx,[ebp-30]
 00566F57    mov        eax,dword ptr [ebp-4]
 00566F5A    mov        ecx,dword ptr [eax]
 00566F5C    call       dword ptr [ecx+2C]
 00566F5F    fsqrt
 00566F61    add        esp,0FFFFFFF4
 00566F64    fstp       tbyte ptr [esp]
 00566F67    wait
 00566F68    mov        edx,dword ptr [ebp+8]
 00566F6B    mov        eax,dword ptr [ebp-4]
 00566F6E    mov        ecx,dword ptr [eax]
 00566F70    call       dword ptr [ecx+4C]
 00566F73    xor        eax,eax
 00566F75    pop        edx
 00566F76    pop        ecx
 00566F77    pop        ecx
 00566F78    mov        dword ptr fs:[eax],edx
 00566F7B    push       566F9E
 00566F80    lea        eax,[ebp-30]
 00566F83    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00566F89    call       @FinalizeRecord
 00566F8E    lea        eax,[ebp-4]
 00566F91    call       @IntfClear
 00566F96    ret
<00566F97    jmp        @HandleFinally
<00566F9C    jmp        00566F80
 00566F9E    pop        esi
 00566F9F    pop        ebx
 00566FA0    mov        esp,ebp
 00566FA2    pop        ebp
 00566FA3    ret        4
*}
//end;

//00566FA8
//constructor TZLowerFunction.Create(?:TZLowerFunction; _Dv__:Boolean);
//begin
{*
 00566FA8    push       ebp
 00566FA9    mov        ebp,esp
 00566FAB    push       ebx
 00566FAC    push       esi
 00566FAD    test       dl,dl
>00566FAF    je         00566FB9
 00566FB1    add        esp,0FFFFFFF0
 00566FB4    call       @ClassCreate
 00566FB9    mov        ebx,edx
 00566FBB    mov        esi,eax
 00566FBD    lea        eax,[esi+0C]; TZLowerFunction.?fC:String
 00566FC0    mov        edx,566FF0; 'LOWER'
 00566FC5    call       @LStrAsg
 00566FCA    mov        eax,esi
 00566FCC    test       bl,bl
>00566FCE    je         00566FDF
 00566FD0    call       @AfterConstruction
 00566FD5    pop        dword ptr fs:[0]
 00566FDC    add        esp,0C
 00566FDF    mov        eax,esi
 00566FE1    pop        esi
 00566FE2    pop        ebx
 00566FE3    pop        ebp
 00566FE4    ret
*}
//end;

//00566FF8
//procedure sub_00566FF8(?:?; ?:?; ?:?);
//begin
{*
 00566FF8    push       ebp
 00566FF9    mov        ebp,esp
 00566FFB    push       ecx
 00566FFC    mov        ecx,6
 00567001    push       0
 00567003    push       0
 00567005    dec        ecx
<00567006    jne        00567001
 00567008    push       ecx
 00567009    xchg       ecx,dword ptr [ebp-4]
 0056700C    push       ebx
 0056700D    push       esi
 0056700E    mov        dword ptr [ebp-4],ecx
 00567011    mov        esi,edx
 00567013    mov        ebx,eax
 00567015    mov        eax,dword ptr [ebp-4]
 00567018    call       @IntfAddRef
 0056701D    xor        eax,eax
 0056701F    push       ebp
 00567020    push       5670A0
 00567025    push       dword ptr fs:[eax]
 00567028    mov        dword ptr fs:[eax],esp
 0056702B    mov        ecx,1
 00567030    mov        edx,esi
 00567032    mov        eax,ebx
 00567034    call       005657EC
 00567039    lea        ecx,[ebp-38]
 0056703C    mov        edx,1
 00567041    mov        eax,esi
 00567043    call       00568004
 00567048    lea        edx,[ebp-38]
 0056704B    lea        ecx,[ebp-0C]
 0056704E    mov        eax,dword ptr [ebp-4]
 00567051    mov        ebx,dword ptr [eax]
 00567053    call       dword ptr [ebx+30]
 00567056    mov        eax,dword ptr [ebp-0C]
 00567059    lea        edx,[ebp-8]
 0056705C    call       AnsiLowerCase
 00567061    mov        ecx,dword ptr [ebp-8]
 00567064    mov        edx,dword ptr [ebp+8]
 00567067    mov        eax,dword ptr [ebp-4]
 0056706A    mov        ebx,dword ptr [eax]
 0056706C    call       dword ptr [ebx+50]
 0056706F    xor        eax,eax
 00567071    pop        edx
 00567072    pop        ecx
 00567073    pop        ecx
 00567074    mov        dword ptr fs:[eax],edx
 00567077    push       5670A7
 0056707C    lea        eax,[ebp-38]
 0056707F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567085    call       @FinalizeRecord
 0056708A    lea        eax,[ebp-0C]
 0056708D    mov        edx,2
 00567092    call       @LStrArrayClr
 00567097    lea        eax,[ebp-4]
 0056709A    call       @IntfClear
 0056709F    ret
<005670A0    jmp        @HandleFinally
<005670A5    jmp        0056707C
 005670A7    pop        esi
 005670A8    pop        ebx
 005670A9    mov        esp,ebp
 005670AB    pop        ebp
 005670AC    ret        4
*}
//end;

//005670B0
//constructor TZUpperFunction.Create(?:TZUpperFunction; _Dv__:Boolean);
//begin
{*
 005670B0    push       ebp
 005670B1    mov        ebp,esp
 005670B3    push       ebx
 005670B4    push       esi
 005670B5    test       dl,dl
>005670B7    je         005670C1
 005670B9    add        esp,0FFFFFFF0
 005670BC    call       @ClassCreate
 005670C1    mov        ebx,edx
 005670C3    mov        esi,eax
 005670C5    lea        eax,[esi+0C]; TZUpperFunction.?fC:String
 005670C8    mov        edx,5670F8; 'UPPER'
 005670CD    call       @LStrAsg
 005670D2    mov        eax,esi
 005670D4    test       bl,bl
>005670D6    je         005670E7
 005670D8    call       @AfterConstruction
 005670DD    pop        dword ptr fs:[0]
 005670E4    add        esp,0C
 005670E7    mov        eax,esi
 005670E9    pop        esi
 005670EA    pop        ebx
 005670EB    pop        ebp
 005670EC    ret
*}
//end;

//00567100
//procedure sub_00567100(?:?; ?:?; ?:?);
//begin
{*
 00567100    push       ebp
 00567101    mov        ebp,esp
 00567103    push       ecx
 00567104    mov        ecx,6
 00567109    push       0
 0056710B    push       0
 0056710D    dec        ecx
<0056710E    jne        00567109
 00567110    push       ecx
 00567111    xchg       ecx,dword ptr [ebp-4]
 00567114    push       ebx
 00567115    push       esi
 00567116    mov        dword ptr [ebp-4],ecx
 00567119    mov        esi,edx
 0056711B    mov        ebx,eax
 0056711D    mov        eax,dword ptr [ebp-4]
 00567120    call       @IntfAddRef
 00567125    xor        eax,eax
 00567127    push       ebp
 00567128    push       5671A8
 0056712D    push       dword ptr fs:[eax]
 00567130    mov        dword ptr fs:[eax],esp
 00567133    mov        ecx,1
 00567138    mov        edx,esi
 0056713A    mov        eax,ebx
 0056713C    call       005657EC
 00567141    lea        ecx,[ebp-38]
 00567144    mov        edx,1
 00567149    mov        eax,esi
 0056714B    call       00568004
 00567150    lea        edx,[ebp-38]
 00567153    lea        ecx,[ebp-0C]
 00567156    mov        eax,dword ptr [ebp-4]
 00567159    mov        ebx,dword ptr [eax]
 0056715B    call       dword ptr [ebx+30]
 0056715E    mov        eax,dword ptr [ebp-0C]
 00567161    lea        edx,[ebp-8]
 00567164    call       AnsiUpperCase
 00567169    mov        ecx,dword ptr [ebp-8]
 0056716C    mov        edx,dword ptr [ebp+8]
 0056716F    mov        eax,dword ptr [ebp-4]
 00567172    mov        ebx,dword ptr [eax]
 00567174    call       dword ptr [ebx+50]
 00567177    xor        eax,eax
 00567179    pop        edx
 0056717A    pop        ecx
 0056717B    pop        ecx
 0056717C    mov        dword ptr fs:[eax],edx
 0056717F    push       5671AF
 00567184    lea        eax,[ebp-38]
 00567187    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056718D    call       @FinalizeRecord
 00567192    lea        eax,[ebp-0C]
 00567195    mov        edx,2
 0056719A    call       @LStrArrayClr
 0056719F    lea        eax,[ebp-4]
 005671A2    call       @IntfClear
 005671A7    ret
<005671A8    jmp        @HandleFinally
<005671AD    jmp        00567184
 005671AF    pop        esi
 005671B0    pop        ebx
 005671B1    mov        esp,ebp
 005671B3    pop        ebp
 005671B4    ret        4
*}
//end;

//005671B8
//constructor TZSubStrFunction.Create(?:TZSubStrFunction; _Dv__:Boolean);
//begin
{*
 005671B8    push       ebp
 005671B9    mov        ebp,esp
 005671BB    push       ebx
 005671BC    push       esi
 005671BD    test       dl,dl
>005671BF    je         005671C9
 005671C1    add        esp,0FFFFFFF0
 005671C4    call       @ClassCreate
 005671C9    mov        ebx,edx
 005671CB    mov        esi,eax
 005671CD    lea        eax,[esi+0C]; TZSubStrFunction.?fC:String
 005671D0    mov        edx,567200; 'SUBSTR'
 005671D5    call       @LStrAsg
 005671DA    mov        eax,esi
 005671DC    test       bl,bl
>005671DE    je         005671EF
 005671E0    call       @AfterConstruction
 005671E5    pop        dword ptr fs:[0]
 005671EC    add        esp,0C
 005671EF    mov        eax,esi
 005671F1    pop        esi
 005671F2    pop        ebx
 005671F3    pop        ebp
 005671F4    ret
*}
//end;

//00567208
//procedure sub_00567208(?:?; ?:?; ?:?);
//begin
{*
 00567208    push       ebp
 00567209    mov        ebp,esp
 0056720B    push       ecx
 0056720C    mov        ecx,11
 00567211    push       0
 00567213    push       0
 00567215    dec        ecx
<00567216    jne        00567211
 00567218    push       ecx
 00567219    xchg       ecx,dword ptr [ebp-4]
 0056721C    push       ebx
 0056721D    push       esi
 0056721E    mov        dword ptr [ebp-4],ecx
 00567221    mov        ebx,edx
 00567223    mov        esi,eax
 00567225    mov        eax,dword ptr [ebp-4]
 00567228    call       @IntfAddRef
 0056722D    xor        eax,eax
 0056722F    push       ebp
 00567230    push       567308
 00567235    push       dword ptr fs:[eax]
 00567238    mov        dword ptr fs:[eax],esp
 0056723B    mov        ecx,3
 00567240    mov        edx,ebx
 00567242    mov        eax,esi
 00567244    call       005657EC
 00567249    lea        eax,[ebp-8]
 0056724C    push       eax
 0056724D    lea        ecx,[ebp-34]
 00567250    mov        edx,1
 00567255    mov        eax,ebx
 00567257    call       00568004
 0056725C    lea        edx,[ebp-34]
 0056725F    mov        eax,dword ptr [ebp-4]
 00567262    mov        ecx,dword ptr [eax]
 00567264    call       dword ptr [ecx+28]
 00567267    push       eax
 00567268    lea        ecx,[ebp-60]
 0056726B    mov        edx,2
 00567270    mov        eax,ebx
 00567272    call       00568004
 00567277    lea        edx,[ebp-60]
 0056727A    mov        eax,dword ptr [ebp-4]
 0056727D    mov        ecx,dword ptr [eax]
 0056727F    call       dword ptr [ecx+28]
 00567282    push       eax
 00567283    lea        ecx,[ebp-90]
 00567289    mov        edx,3
 0056728E    mov        eax,ebx
 00567290    call       00568004
 00567295    lea        edx,[ebp-90]
 0056729B    lea        ecx,[ebp-64]
 0056729E    mov        eax,dword ptr [ebp-4]
 005672A1    mov        ebx,dword ptr [eax]
 005672A3    call       dword ptr [ebx+30]
 005672A6    mov        eax,dword ptr [ebp-64]
 005672A9    pop        edx
 005672AA    pop        ecx
 005672AB    call       @LStrCopy
 005672B0    mov        ecx,dword ptr [ebp-8]
 005672B3    mov        edx,dword ptr [ebp+8]
 005672B6    mov        eax,dword ptr [ebp-4]
 005672B9    mov        ebx,dword ptr [eax]
 005672BB    call       dword ptr [ebx+50]
 005672BE    xor        eax,eax
 005672C0    pop        edx
 005672C1    pop        ecx
 005672C2    pop        ecx
 005672C3    mov        dword ptr fs:[eax],edx
 005672C6    push       56730F
 005672CB    lea        eax,[ebp-90]
 005672D1    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005672D7    call       @FinalizeRecord
 005672DC    lea        eax,[ebp-64]
 005672DF    call       @LStrClr
 005672E4    lea        eax,[ebp-60]
 005672E7    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005672ED    mov        ecx,2
 005672F2    call       @FinalizeArray
 005672F7    lea        eax,[ebp-8]
 005672FA    call       @LStrClr
 005672FF    lea        eax,[ebp-4]
 00567302    call       @IntfClear
 00567307    ret
<00567308    jmp        @HandleFinally
<0056730D    jmp        005672CB
 0056730F    pop        esi
 00567310    pop        ebx
 00567311    mov        esp,ebp
 00567313    pop        ebp
 00567314    ret        4
*}
//end;

//00567318
//constructor TZStrPosFunction.Create(?:TZStrPosFunction; _Dv__:Boolean);
//begin
{*
 00567318    push       ebp
 00567319    mov        ebp,esp
 0056731B    push       ebx
 0056731C    push       esi
 0056731D    test       dl,dl
>0056731F    je         00567329
 00567321    add        esp,0FFFFFFF0
 00567324    call       @ClassCreate
 00567329    mov        ebx,edx
 0056732B    mov        esi,eax
 0056732D    lea        eax,[esi+0C]; TZStrPosFunction.?fC:String
 00567330    mov        edx,567360; 'STRPOS'
 00567335    call       @LStrAsg
 0056733A    mov        eax,esi
 0056733C    test       bl,bl
>0056733E    je         0056734F
 00567340    call       @AfterConstruction
 00567345    pop        dword ptr fs:[0]
 0056734C    add        esp,0C
 0056734F    mov        eax,esi
 00567351    pop        esi
 00567352    pop        ebx
 00567353    pop        ebp
 00567354    ret
*}
//end;

//00567368
//procedure sub_00567368(?:?; ?:?; ?:?);
//begin
{*
 00567368    push       ebp
 00567369    mov        ebp,esp
 0056736B    push       ecx
 0056736C    mov        ecx,0C
 00567371    push       0
 00567373    push       0
 00567375    dec        ecx
<00567376    jne        00567371
 00567378    xchg       ecx,dword ptr [ebp-4]
 0056737B    push       ebx
 0056737C    push       esi
 0056737D    mov        dword ptr [ebp-4],ecx
 00567380    mov        ebx,edx
 00567382    mov        esi,eax
 00567384    mov        eax,dword ptr [ebp-4]
 00567387    call       @IntfAddRef
 0056738C    xor        eax,eax
 0056738E    push       ebp
 0056738F    push       56743F
 00567394    push       dword ptr fs:[eax]
 00567397    mov        dword ptr fs:[eax],esp
 0056739A    mov        ecx,2
 0056739F    mov        edx,ebx
 005673A1    mov        eax,esi
 005673A3    call       005657EC
 005673A8    lea        ecx,[ebp-34]
 005673AB    mov        edx,2
 005673B0    mov        eax,ebx
 005673B2    call       00568004
 005673B7    lea        edx,[ebp-34]
 005673BA    lea        ecx,[ebp-8]
 005673BD    mov        eax,dword ptr [ebp-4]
 005673C0    mov        esi,dword ptr [eax]
 005673C2    call       dword ptr [esi+30]
 005673C5    mov        eax,dword ptr [ebp-8]
 005673C8    push       eax
 005673C9    lea        ecx,[ebp-64]
 005673CC    mov        edx,1
 005673D1    mov        eax,ebx
 005673D3    call       00568004
 005673D8    lea        edx,[ebp-64]
 005673DB    lea        ecx,[ebp-38]
 005673DE    mov        eax,dword ptr [ebp-4]
 005673E1    mov        ebx,dword ptr [eax]
 005673E3    call       dword ptr [ebx+30]
 005673E6    mov        eax,dword ptr [ebp-38]
 005673E9    pop        edx
 005673EA    call       @LStrPos
 005673EF    cdq
 005673F0    push       edx
 005673F1    push       eax
 005673F2    mov        edx,dword ptr [ebp+8]
 005673F5    mov        eax,dword ptr [ebp-4]
 005673F8    mov        ecx,dword ptr [eax]
 005673FA    call       dword ptr [ecx+48]
 005673FD    xor        eax,eax
 005673FF    pop        edx
 00567400    pop        ecx
 00567401    pop        ecx
 00567402    mov        dword ptr fs:[eax],edx
 00567405    push       567446
 0056740A    lea        eax,[ebp-64]
 0056740D    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567413    call       @FinalizeRecord
 00567418    lea        eax,[ebp-38]
 0056741B    call       @LStrClr
 00567420    lea        eax,[ebp-34]
 00567423    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567429    call       @FinalizeRecord
 0056742E    lea        eax,[ebp-8]
 00567431    call       @LStrClr
 00567436    lea        eax,[ebp-4]
 00567439    call       @IntfClear
 0056743E    ret
<0056743F    jmp        @HandleFinally
<00567444    jmp        0056740A
 00567446    pop        esi
 00567447    pop        ebx
 00567448    mov        esp,ebp
 0056744A    pop        ebp
 0056744B    ret        4
*}
//end;

//00567450
//constructor TZConcatFunction.Create(?:TZConcatFunction; _Dv__:Boolean);
//begin
{*
 00567450    push       ebp
 00567451    mov        ebp,esp
 00567453    push       ebx
 00567454    push       esi
 00567455    test       dl,dl
>00567457    je         00567461
 00567459    add        esp,0FFFFFFF0
 0056745C    call       @ClassCreate
 00567461    mov        ebx,edx
 00567463    mov        esi,eax
 00567465    lea        eax,[esi+0C]; TZConcatFunction.?fC:String
 00567468    mov        edx,567498; 'CONCAT'
 0056746D    call       @LStrAsg
 00567472    mov        eax,esi
 00567474    test       bl,bl
>00567476    je         00567487
 00567478    call       @AfterConstruction
 0056747D    pop        dword ptr fs:[0]
 00567484    add        esp,0C
 00567487    mov        eax,esi
 00567489    pop        esi
 0056748A    pop        ebx
 0056748B    pop        ebp
 0056748C    ret
*}
//end;

//005674A0
//procedure sub_005674A0(?:?; ?:?; ?:?);
//begin
{*
 005674A0    push       ebp
 005674A1    mov        ebp,esp
 005674A3    push       ecx
 005674A4    mov        ecx,12
 005674A9    push       0
 005674AB    push       0
 005674AD    dec        ecx
<005674AE    jne        005674A9
 005674B0    xchg       ecx,dword ptr [ebp-4]
 005674B3    push       ebx
 005674B4    push       esi
 005674B5    push       edi
 005674B6    mov        dword ptr [ebp-4],ecx
 005674B9    mov        esi,edx
 005674BB    mov        eax,dword ptr [ebp-4]
 005674BE    call       @IntfAddRef
 005674C3    xor        eax,eax
 005674C5    push       ebp
 005674C6    push       5675E0
 005674CB    push       dword ptr fs:[eax]
 005674CE    mov        dword ptr fs:[eax],esp
 005674D1    lea        ecx,[ebp-34]
 005674D4    xor        edx,edx
 005674D6    mov        eax,esi
 005674D8    call       00568004
 005674DD    lea        edx,[ebp-34]
 005674E0    mov        eax,dword ptr [ebp-4]
 005674E3    mov        ecx,dword ptr [eax]
 005674E5    call       dword ptr [ecx+28]
 005674E8    push       eax
 005674E9    sar        eax,1F
 005674EC    cmp        eax,edx
 005674EE    pop        eax
>005674EF    je         005674F6
 005674F1    call       @BoundErr
 005674F6    mov        ebx,eax
 005674F8    cmp        ebx,2
>005674FB    jge        0056751E
 005674FD    lea        edx,[ebp-38]
 00567500    mov        eax,[0061BBDC]; ^#122.sResString16:TResStringRec
 00567505    call       LoadResString
 0056750A    mov        ecx,dword ptr [ebp-38]
 0056750D    mov        dl,1
 0056750F    mov        eax,[00567C80]; TZExpressionError
 00567514    call       Exception.Create; TZExpressionError.Create
 00567519    call       @RaiseExcept
 0056751E    lea        ecx,[ebp-64]
 00567521    mov        edx,ebx
 00567523    mov        eax,esi
 00567525    call       00568004
 0056752A    lea        edx,[ebp-64]
 0056752D    lea        ecx,[ebp-8]
 00567530    mov        eax,dword ptr [ebp-4]
 00567533    mov        edi,dword ptr [eax]
 00567535    call       dword ptr [edi+30]
 00567538    sub        ebx,1
>0056753B    jno        00567542
 0056753D    call       @IntOver
 00567542    cmp        ebx,1
>00567545    jl         00567577
 00567547    lea        ecx,[ebp-94]
 0056754D    mov        edx,ebx
 0056754F    mov        eax,esi
 00567551    call       00568004
 00567556    lea        edx,[ebp-94]
 0056755C    lea        ecx,[ebp-68]
 0056755F    mov        eax,dword ptr [ebp-4]
 00567562    mov        edi,dword ptr [eax]
 00567564    call       dword ptr [edi+30]
 00567567    mov        edx,dword ptr [ebp-68]
 0056756A    lea        eax,[ebp-8]
 0056756D    call       @LStrCat
 00567572    dec        ebx
 00567573    test       ebx,ebx
<00567575    jne        00567547
 00567577    mov        edx,dword ptr [ebp+8]
 0056757A    mov        ecx,dword ptr [ebp-8]
 0056757D    mov        eax,dword ptr [ebp-4]
 00567580    mov        ebx,dword ptr [eax]
 00567582    call       dword ptr [ebx+50]
 00567585    xor        eax,eax
 00567587    pop        edx
 00567588    pop        ecx
 00567589    pop        ecx
 0056758A    mov        dword ptr fs:[eax],edx
 0056758D    push       5675E7
 00567592    lea        eax,[ebp-94]
 00567598    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056759E    call       @FinalizeRecord
 005675A3    lea        eax,[ebp-68]
 005675A6    call       @LStrClr
 005675AB    lea        eax,[ebp-64]
 005675AE    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005675B4    call       @FinalizeRecord
 005675B9    lea        eax,[ebp-38]
 005675BC    call       @LStrClr
 005675C1    lea        eax,[ebp-34]
 005675C4    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005675CA    call       @FinalizeRecord
 005675CF    lea        eax,[ebp-8]
 005675D2    call       @LStrClr
 005675D7    lea        eax,[ebp-4]
 005675DA    call       @IntfClear
 005675DF    ret
<005675E0    jmp        @HandleFinally
<005675E5    jmp        00567592
 005675E7    pop        edi
 005675E8    pop        esi
 005675E9    pop        ebx
 005675EA    mov        esp,ebp
 005675EC    pop        ebp
 005675ED    ret        4
*}
//end;

//005675F0
//constructor TZTrimFunction.Create(?:TZTrimFunction; _Dv__:Boolean);
//begin
{*
 005675F0    push       ebp
 005675F1    mov        ebp,esp
 005675F3    push       ebx
 005675F4    push       esi
 005675F5    test       dl,dl
>005675F7    je         00567601
 005675F9    add        esp,0FFFFFFF0
 005675FC    call       @ClassCreate
 00567601    mov        ebx,edx
 00567603    mov        esi,eax
 00567605    lea        eax,[esi+0C]; TZTrimFunction.?fC:String
 00567608    mov        edx,567638; 'TRIM'
 0056760D    call       @LStrAsg
 00567612    mov        eax,esi
 00567614    test       bl,bl
>00567616    je         00567627
 00567618    call       @AfterConstruction
 0056761D    pop        dword ptr fs:[0]
 00567624    add        esp,0C
 00567627    mov        eax,esi
 00567629    pop        esi
 0056762A    pop        ebx
 0056762B    pop        ebp
 0056762C    ret
*}
//end;

//00567640
//procedure sub_00567640(?:?; ?:?; ?:?);
//begin
{*
 00567640    push       ebp
 00567641    mov        ebp,esp
 00567643    add        esp,0FFFFFFCC
 00567646    push       ebx
 00567647    push       esi
 00567648    xor        ebx,ebx
 0056764A    mov        dword ptr [ebp-34],ebx
 0056764D    mov        dword ptr [ebp-4],ecx
 00567650    mov        esi,edx
 00567652    mov        ebx,eax
 00567654    mov        eax,dword ptr [ebp-4]
 00567657    call       @IntfAddRef
 0056765C    lea        eax,[ebp-30]
 0056765F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567665    call       @InitializeRecord
 0056766A    xor        eax,eax
 0056766C    push       ebp
 0056766D    push       5676DA
 00567672    push       dword ptr fs:[eax]
 00567675    mov        dword ptr fs:[eax],esp
 00567678    mov        ecx,1
 0056767D    mov        edx,esi
 0056767F    mov        eax,ebx
 00567681    call       005657EC
 00567686    lea        ecx,[ebp-30]
 00567689    mov        edx,1
 0056768E    mov        eax,esi
 00567690    call       00568004
 00567695    lea        edx,[ebp-34]
 00567698    mov        eax,dword ptr [ebp-1C]
 0056769B    call       Trim
 005676A0    mov        ecx,dword ptr [ebp-34]
 005676A3    mov        edx,dword ptr [ebp+8]
 005676A6    mov        eax,dword ptr [ebp-4]
 005676A9    mov        ebx,dword ptr [eax]
 005676AB    call       dword ptr [ebx+50]
 005676AE    xor        eax,eax
 005676B0    pop        edx
 005676B1    pop        ecx
 005676B2    pop        ecx
 005676B3    mov        dword ptr fs:[eax],edx
 005676B6    push       5676E1
 005676BB    lea        eax,[ebp-34]
 005676BE    call       @LStrClr
 005676C3    lea        eax,[ebp-30]
 005676C6    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005676CC    call       @FinalizeRecord
 005676D1    lea        eax,[ebp-4]
 005676D4    call       @IntfClear
 005676D9    ret
<005676DA    jmp        @HandleFinally
<005676DF    jmp        005676BB
 005676E1    pop        esi
 005676E2    pop        ebx
 005676E3    mov        esp,ebp
 005676E5    pop        ebp
 005676E6    ret        4
*}
//end;

//005676EC
//constructor TZValFunction.Create(?:TZValFunction; _Dv__:Boolean);
//begin
{*
 005676EC    push       ebp
 005676ED    mov        ebp,esp
 005676EF    push       ebx
 005676F0    push       esi
 005676F1    test       dl,dl
>005676F3    je         005676FD
 005676F5    add        esp,0FFFFFFF0
 005676F8    call       @ClassCreate
 005676FD    mov        ebx,edx
 005676FF    mov        esi,eax
 00567701    lea        eax,[esi+0C]; TZValFunction.?fC:String
 00567704    mov        edx,567734; 'VAL'
 00567709    call       @LStrAsg
 0056770E    mov        eax,esi
 00567710    test       bl,bl
>00567712    je         00567723
 00567714    call       @AfterConstruction
 00567719    pop        dword ptr fs:[0]
 00567720    add        esp,0C
 00567723    mov        eax,esi
 00567725    pop        esi
 00567726    pop        ebx
 00567727    pop        ebp
 00567728    ret
*}
//end;

//00567738
//procedure sub_00567738(?:?; ?:?; ?:?);
//begin
{*
 00567738    push       ebp
 00567739    mov        ebp,esp
 0056773B    add        esp,0FFFFFFD0
 0056773E    push       ebx
 0056773F    push       esi
 00567740    mov        dword ptr [ebp-4],ecx
 00567743    mov        esi,edx
 00567745    mov        ebx,eax
 00567747    mov        eax,dword ptr [ebp-4]
 0056774A    call       @IntfAddRef
 0056774F    lea        eax,[ebp-30]
 00567752    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567758    call       @InitializeRecord
 0056775D    xor        eax,eax
 0056775F    push       ebp
 00567760    push       5677C5
 00567765    push       dword ptr fs:[eax]
 00567768    mov        dword ptr fs:[eax],esp
 0056776B    mov        ecx,1
 00567770    mov        edx,esi
 00567772    mov        eax,ebx
 00567774    call       005657EC
 00567779    lea        ecx,[ebp-30]
 0056777C    mov        edx,1
 00567781    mov        eax,esi
 00567783    call       00568004
 00567788    push       0
 0056778A    push       0
 0056778C    mov        eax,dword ptr [ebp-1C]
 0056778F    call       StrToInt64Def
 00567794    push       edx
 00567795    push       eax
 00567796    mov        edx,dword ptr [ebp+8]
 00567799    mov        eax,dword ptr [ebp-4]
 0056779C    mov        ecx,dword ptr [eax]
 0056779E    call       dword ptr [ecx+48]
 005677A1    xor        eax,eax
 005677A3    pop        edx
 005677A4    pop        ecx
 005677A5    pop        ecx
 005677A6    mov        dword ptr fs:[eax],edx
 005677A9    push       5677CC
 005677AE    lea        eax,[ebp-30]
 005677B1    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005677B7    call       @FinalizeRecord
 005677BC    lea        eax,[ebp-4]
 005677BF    call       @IntfClear
 005677C4    ret
<005677C5    jmp        @HandleFinally
<005677CA    jmp        005677AE
 005677CC    pop        esi
 005677CD    pop        ebx
 005677CE    mov        esp,ebp
 005677D0    pop        ebp
 005677D1    ret        4
*}
//end;

//005677D4
//constructor TZDtosFunction.Create(?:TZDtosFunction; _Dv__:Boolean);
//begin
{*
 005677D4    push       ebp
 005677D5    mov        ebp,esp
 005677D7    push       ebx
 005677D8    push       esi
 005677D9    test       dl,dl
>005677DB    je         005677E5
 005677DD    add        esp,0FFFFFFF0
 005677E0    call       @ClassCreate
 005677E5    mov        ebx,edx
 005677E7    mov        esi,eax
 005677E9    lea        eax,[esi+0C]; TZDtosFunction.?fC:String
 005677EC    mov        edx,56781C; 'DTOS'
 005677F1    call       @LStrAsg
 005677F6    mov        eax,esi
 005677F8    test       bl,bl
>005677FA    je         0056780B
 005677FC    call       @AfterConstruction
 00567801    pop        dword ptr fs:[0]
 00567808    add        esp,0C
 0056780B    mov        eax,esi
 0056780D    pop        esi
 0056780E    pop        ebx
 0056780F    pop        ebp
 00567810    ret
*}
//end;

//00567824
//procedure sub_00567824(?:?; ?:?; ?:?);
//begin
{*
 00567824    push       ebp
 00567825    mov        ebp,esp
 00567827    add        esp,0FFFFFFCC
 0056782A    push       ebx
 0056782B    push       esi
 0056782C    xor        ebx,ebx
 0056782E    mov        dword ptr [ebp-34],ebx
 00567831    mov        dword ptr [ebp-4],ecx
 00567834    mov        esi,edx
 00567836    mov        ebx,eax
 00567838    mov        eax,dword ptr [ebp-4]
 0056783B    call       @IntfAddRef
 00567840    lea        eax,[ebp-30]
 00567843    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567849    call       @InitializeRecord
 0056784E    xor        eax,eax
 00567850    push       ebp
 00567851    push       5678C6
 00567856    push       dword ptr fs:[eax]
 00567859    mov        dword ptr fs:[eax],esp
 0056785C    mov        ecx,1
 00567861    mov        edx,esi
 00567863    mov        eax,ebx
 00567865    call       005657EC
 0056786A    lea        ecx,[ebp-30]
 0056786D    mov        edx,1
 00567872    mov        eax,esi
 00567874    call       00568004
 00567879    push       dword ptr [ebp-10]
 0056787C    push       dword ptr [ebp-14]
 0056787F    lea        edx,[ebp-34]
 00567882    mov        eax,5678E0; 'yyyymmdd'
 00567887    call       FormatDateTime
 0056788C    mov        ecx,dword ptr [ebp-34]
 0056788F    mov        edx,dword ptr [ebp+8]
 00567892    mov        eax,dword ptr [ebp-4]
 00567895    mov        ebx,dword ptr [eax]
 00567897    call       dword ptr [ebx+50]
 0056789A    xor        eax,eax
 0056789C    pop        edx
 0056789D    pop        ecx
 0056789E    pop        ecx
 0056789F    mov        dword ptr fs:[eax],edx
 005678A2    push       5678CD
 005678A7    lea        eax,[ebp-34]
 005678AA    call       @LStrClr
 005678AF    lea        eax,[ebp-30]
 005678B2    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005678B8    call       @FinalizeRecord
 005678BD    lea        eax,[ebp-4]
 005678C0    call       @IntfClear
 005678C5    ret
<005678C6    jmp        @HandleFinally
<005678CB    jmp        005678A7
 005678CD    pop        esi
 005678CE    pop        ebx
 005678CF    mov        esp,ebp
 005678D1    pop        ebp
 005678D2    ret        4
*}
//end;

//005678EC
//constructor TZCtodFunction.Create(?:TZCtodFunction; _Dv__:Boolean);
//begin
{*
 005678EC    push       ebp
 005678ED    mov        ebp,esp
 005678EF    push       ebx
 005678F0    push       esi
 005678F1    test       dl,dl
>005678F3    je         005678FD
 005678F5    add        esp,0FFFFFFF0
 005678F8    call       @ClassCreate
 005678FD    mov        ebx,edx
 005678FF    mov        esi,eax
 00567901    lea        eax,[esi+0C]; TZCtodFunction.?fC:String
 00567904    mov        edx,567934; 'CTOD'
 00567909    call       @LStrAsg
 0056790E    mov        eax,esi
 00567910    test       bl,bl
>00567912    je         00567923
 00567914    call       @AfterConstruction
 00567919    pop        dword ptr fs:[0]
 00567920    add        esp,0C
 00567923    mov        eax,esi
 00567925    pop        esi
 00567926    pop        ebx
 00567927    pop        ebp
 00567928    ret
*}
//end;

//0056793C
//procedure sub_0056793C(?:?; ?:?; ?:?);
//begin
{*
 0056793C    push       ebp
 0056793D    mov        ebp,esp
 0056793F    add        esp,0FFFFFFD0
 00567942    push       ebx
 00567943    push       esi
 00567944    mov        dword ptr [ebp-4],ecx
 00567947    mov        esi,edx
 00567949    mov        ebx,eax
 0056794B    mov        eax,dword ptr [ebp-4]
 0056794E    call       @IntfAddRef
 00567953    lea        eax,[ebp-30]
 00567956    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0056795C    call       @InitializeRecord
 00567961    xor        eax,eax
 00567963    push       ebp
 00567964    push       5679CE
 00567969    push       dword ptr fs:[eax]
 0056796C    mov        dword ptr fs:[eax],esp
 0056796F    mov        ecx,1
 00567974    mov        edx,esi
 00567976    mov        eax,ebx
 00567978    call       005657EC
 0056797D    lea        ecx,[ebp-30]
 00567980    mov        edx,1
 00567985    mov        eax,esi
 00567987    call       00568004
 0056798C    push       0
 0056798E    push       0
 00567990    mov        eax,dword ptr [ebp-1C]
 00567993    call       StrToDateDef
 00567998    add        esp,0FFFFFFF8
 0056799B    fstp       qword ptr [esp]
 0056799E    wait
 0056799F    mov        edx,dword ptr [ebp+8]
 005679A2    mov        eax,dword ptr [ebp-4]
 005679A5    mov        ecx,dword ptr [eax]
 005679A7    call       dword ptr [ecx+58]
 005679AA    xor        eax,eax
 005679AC    pop        edx
 005679AD    pop        ecx
 005679AE    pop        ecx
 005679AF    mov        dword ptr fs:[eax],edx
 005679B2    push       5679D5
 005679B7    lea        eax,[ebp-30]
 005679BA    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005679C0    call       @FinalizeRecord
 005679C5    lea        eax,[ebp-4]
 005679C8    call       @IntfClear
 005679CD    ret
<005679CE    jmp        @HandleFinally
<005679D3    jmp        005679B7
 005679D5    pop        esi
 005679D6    pop        ebx
 005679D7    mov        esp,ebp
 005679D9    pop        ebp
 005679DA    ret        4
*}
//end;

//005679E0
//constructor TZLeftFunction.Create(?:TZLeftFunction; _Dv__:Boolean);
//begin
{*
 005679E0    push       ebp
 005679E1    mov        ebp,esp
 005679E3    push       ebx
 005679E4    push       esi
 005679E5    test       dl,dl
>005679E7    je         005679F1
 005679E9    add        esp,0FFFFFFF0
 005679EC    call       @ClassCreate
 005679F1    mov        ebx,edx
 005679F3    mov        esi,eax
 005679F5    lea        eax,[esi+0C]; TZLeftFunction.?fC:String
 005679F8    mov        edx,567A28; 'LEFT'
 005679FD    call       @LStrAsg
 00567A02    mov        eax,esi
 00567A04    test       bl,bl
>00567A06    je         00567A17
 00567A08    call       @AfterConstruction
 00567A0D    pop        dword ptr fs:[0]
 00567A14    add        esp,0C
 00567A17    mov        eax,esi
 00567A19    pop        esi
 00567A1A    pop        ebx
 00567A1B    pop        ebp
 00567A1C    ret
*}
//end;

//00567A30
//procedure sub_00567A30(?:?; ?:?; ?:?);
//begin
{*
 00567A30    push       ebp
 00567A31    mov        ebp,esp
 00567A33    add        esp,0FFFFFFA0
 00567A36    push       ebx
 00567A37    push       esi
 00567A38    xor        ebx,ebx
 00567A3A    mov        dword ptr [ebp-60],ebx
 00567A3D    mov        dword ptr [ebp-4],ecx
 00567A40    mov        ebx,edx
 00567A42    mov        esi,eax
 00567A44    mov        eax,dword ptr [ebp-4]
 00567A47    call       @IntfAddRef
 00567A4C    lea        eax,[ebp-30]
 00567A4F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567A55    call       @InitializeRecord
 00567A5A    lea        eax,[ebp-5C]
 00567A5D    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567A63    call       @InitializeRecord
 00567A68    xor        eax,eax
 00567A6A    push       ebp
 00567A6B    push       567B02
 00567A70    push       dword ptr fs:[eax]
 00567A73    mov        dword ptr fs:[eax],esp
 00567A76    mov        ecx,2
 00567A7B    mov        edx,ebx
 00567A7D    mov        eax,esi
 00567A7F    call       005657EC
 00567A84    lea        ecx,[ebp-30]
 00567A87    mov        edx,2
 00567A8C    mov        eax,ebx
 00567A8E    call       00568004
 00567A93    lea        ecx,[ebp-5C]
 00567A96    mov        edx,1
 00567A9B    mov        eax,ebx
 00567A9D    call       00568004
 00567AA2    mov        eax,dword ptr [ebp-5A]
 00567AA5    mov        edx,dword ptr [ebp-56]
 00567AA8    push       eax
 00567AA9    sar        eax,1F
 00567AAC    cmp        eax,edx
 00567AAE    pop        eax
>00567AAF    je         00567AB6
 00567AB1    call       @BoundErr
 00567AB6    mov        edx,eax
 00567AB8    lea        ecx,[ebp-60]
 00567ABB    mov        eax,dword ptr [ebp-1C]
 00567ABE    call       LeftStr
 00567AC3    mov        ecx,dword ptr [ebp-60]
 00567AC6    mov        edx,dword ptr [ebp+8]
 00567AC9    mov        eax,dword ptr [ebp-4]
 00567ACC    mov        ebx,dword ptr [eax]
 00567ACE    call       dword ptr [ebx+50]
 00567AD1    xor        eax,eax
 00567AD3    pop        edx
 00567AD4    pop        ecx
 00567AD5    pop        ecx
 00567AD6    mov        dword ptr fs:[eax],edx
 00567AD9    push       567B09
 00567ADE    lea        eax,[ebp-60]
 00567AE1    call       @LStrClr
 00567AE6    lea        eax,[ebp-5C]
 00567AE9    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567AEF    mov        ecx,2
 00567AF4    call       @FinalizeArray
 00567AF9    lea        eax,[ebp-4]
 00567AFC    call       @IntfClear
 00567B01    ret
<00567B02    jmp        @HandleFinally
<00567B07    jmp        00567ADE
 00567B09    pop        esi
 00567B0A    pop        ebx
 00567B0B    mov        esp,ebp
 00567B0D    pop        ebp
 00567B0E    ret        4
*}
//end;

//00567B14
//constructor TZRightFunction.Create(?:TZRightFunction; _Dv__:Boolean);
//begin
{*
 00567B14    push       ebp
 00567B15    mov        ebp,esp
 00567B17    push       ebx
 00567B18    push       esi
 00567B19    test       dl,dl
>00567B1B    je         00567B25
 00567B1D    add        esp,0FFFFFFF0
 00567B20    call       @ClassCreate
 00567B25    mov        ebx,edx
 00567B27    mov        esi,eax
 00567B29    lea        eax,[esi+0C]; TZRightFunction.?fC:String
 00567B2C    mov        edx,567B5C; 'RIGHT'
 00567B31    call       @LStrAsg
 00567B36    mov        eax,esi
 00567B38    test       bl,bl
>00567B3A    je         00567B4B
 00567B3C    call       @AfterConstruction
 00567B41    pop        dword ptr fs:[0]
 00567B48    add        esp,0C
 00567B4B    mov        eax,esi
 00567B4D    pop        esi
 00567B4E    pop        ebx
 00567B4F    pop        ebp
 00567B50    ret
*}
//end;

//00567B64
//procedure sub_00567B64(?:?; ?:?; ?:?);
//begin
{*
 00567B64    push       ebp
 00567B65    mov        ebp,esp
 00567B67    add        esp,0FFFFFFA0
 00567B6A    push       ebx
 00567B6B    push       esi
 00567B6C    xor        ebx,ebx
 00567B6E    mov        dword ptr [ebp-60],ebx
 00567B71    mov        dword ptr [ebp-4],ecx
 00567B74    mov        ebx,edx
 00567B76    mov        esi,eax
 00567B78    mov        eax,dword ptr [ebp-4]
 00567B7B    call       @IntfAddRef
 00567B80    lea        eax,[ebp-30]
 00567B83    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567B89    call       @InitializeRecord
 00567B8E    lea        eax,[ebp-5C]
 00567B91    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567B97    call       @InitializeRecord
 00567B9C    xor        eax,eax
 00567B9E    push       ebp
 00567B9F    push       567C36
 00567BA4    push       dword ptr fs:[eax]
 00567BA7    mov        dword ptr fs:[eax],esp
 00567BAA    mov        ecx,2
 00567BAF    mov        edx,ebx
 00567BB1    mov        eax,esi
 00567BB3    call       005657EC
 00567BB8    lea        ecx,[ebp-30]
 00567BBB    mov        edx,2
 00567BC0    mov        eax,ebx
 00567BC2    call       00568004
 00567BC7    lea        ecx,[ebp-5C]
 00567BCA    mov        edx,1
 00567BCF    mov        eax,ebx
 00567BD1    call       00568004
 00567BD6    mov        eax,dword ptr [ebp-5A]
 00567BD9    mov        edx,dword ptr [ebp-56]
 00567BDC    push       eax
 00567BDD    sar        eax,1F
 00567BE0    cmp        eax,edx
 00567BE2    pop        eax
>00567BE3    je         00567BEA
 00567BE5    call       @BoundErr
 00567BEA    mov        edx,eax
 00567BEC    lea        ecx,[ebp-60]
 00567BEF    mov        eax,dword ptr [ebp-1C]
 00567BF2    call       RightStr
 00567BF7    mov        ecx,dword ptr [ebp-60]
 00567BFA    mov        edx,dword ptr [ebp+8]
 00567BFD    mov        eax,dword ptr [ebp-4]
 00567C00    mov        ebx,dword ptr [eax]
 00567C02    call       dword ptr [ebx+50]
 00567C05    xor        eax,eax
 00567C07    pop        edx
 00567C08    pop        ecx
 00567C09    pop        ecx
 00567C0A    mov        dword ptr fs:[eax],edx
 00567C0D    push       567C3D
 00567C12    lea        eax,[ebp-60]
 00567C15    call       @LStrClr
 00567C1A    lea        eax,[ebp-5C]
 00567C1D    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00567C23    mov        ecx,2
 00567C28    call       @FinalizeArray
 00567C2D    lea        eax,[ebp-4]
 00567C30    call       @IntfClear
 00567C35    ret
<00567C36    jmp        @HandleFinally
<00567C3B    jmp        00567C12
 00567C3D    pop        esi
 00567C3E    pop        ebx
 00567C3F    mov        esp,ebp
 00567C41    pop        ebp
 00567C42    ret        4
*}
//end;

end.