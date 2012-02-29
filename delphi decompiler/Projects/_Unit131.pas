{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit131;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZIterator = class(TZAbstractObject)
  public
    f10:IZCollection;//f10
  end;
  TZCollection = class(TZAbstractObject)
  public
    f10:dword;//f10
    f14:dword;//f14
    f18:Integer;//f18
    destructor Destroy; virtual;
    //procedure sub_004BD570(?:?); virtual;
    //procedure sub_004BDE28(?:?); virtual;
    //constructor Create(?:TZCollection; _Dv__:Boolean);
  end;
  TZUnmodifiableCollection = class(TZAbstractObject)
  public
    f10:IZCollection;//f10
    destructor Destroy; virtual;
    //procedure sub_004BE044(?:?); virtual;
    //procedure sub_004BE20C(?:?); virtual;
    //constructor Create(?:TZUnmodifiableCollection; _Dv__:Boolean);
  end;
  TZHashMap = class(TZAbstractObject)
  public
    f10:IZCollection;//f10
    f14:IZCollection;//f14
    f18:IZCollection;//f18
    f1C:IZCollection;//f1C
    destructor Destroy; virtual;
    //procedure sub_004BE324(?:?); virtual;
    //constructor Create(?:TZHashMap; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004BD344
//constructor TZCollection.Create(?:TZCollection; _Dv__:Boolean);
//begin
{*
 004BD344    test       dl,dl
>004BD346    je         004BD350
 004BD348    add        esp,0FFFFFFF0
 004BD34B    call       @ClassCreate
 004BD350    test       dl,dl
>004BD352    je         004BD363
 004BD354    call       @AfterConstruction
 004BD359    pop        dword ptr fs:[0]
 004BD360    add        esp,0C
 004BD363    ret
*}
//end;

//004BD364
destructor TZCollection.Destroy;
begin
{*
 004BD364    push       ebp
 004BD365    mov        ebp,esp
 004BD367    push       ebx
 004BD368    push       esi
 004BD369    call       @BeforeDestruction
 004BD36E    mov        ebx,edx
 004BD370    mov        esi,eax
 004BD372    mov        eax,esi
 004BD374    call       004BD758
 004BD379    test       bl,bl
>004BD37B    jle        004BD384
 004BD37D    mov        eax,esi
 004BD37F    call       @ClassDestroy
 004BD384    pop        esi
 004BD385    pop        ebx
 004BD386    pop        ebp
 004BD387    ret
*}
end;

//004BD388
//function sub_004BD388:?;
//begin
{*
 004BD388    mov        eax,dword ptr [ebp+4]
 004BD38B    ret
*}
//end;

//004BD38C
//procedure sub_004BD38C(?:TZCollection; ?:AnsiString; ?:?);
//begin
{*
 004BD38C    push       ebp
 004BD38D    mov        ebp,esp
 004BD38F    add        esp,0FFFFFFF8
 004BD392    push       ebx
 004BD393    push       esi
 004BD394    mov        esi,ecx
 004BD396    mov        ebx,edx
 004BD398    call       004BD388
 004BD39D    push       eax
 004BD39E    mov        dword ptr [ebp-8],esi
 004BD3A1    mov        byte ptr [ebp-4],0
 004BD3A5    lea        eax,[ebp-8]
 004BD3A8    push       eax
 004BD3A9    push       0
 004BD3AB    mov        ecx,ebx
 004BD3AD    mov        dl,1
 004BD3AF    mov        eax,[0041C038]; EListError
 004BD3B4    call       Exception.CreateFmt; EListError.Create
<004BD3B9    jmp        @RaiseExcept
*}
//end;

//004BD400
//procedure sub_004BD400(?:TZCollection; ?:?);
//begin
{*
 004BD400    push       ebp
 004BD401    mov        ebp,esp
 004BD403    push       0
 004BD405    push       ebx
 004BD406    push       esi
 004BD407    mov        esi,edx
 004BD409    mov        ebx,eax
 004BD40B    xor        eax,eax
 004BD40D    push       ebp
 004BD40E    push       4BD4A9
 004BD413    push       dword ptr fs:[eax]
 004BD416    mov        dword ptr fs:[eax],esp
 004BD419    cmp        esi,dword ptr [ebx+14]; TZCollection.?f14:dword
>004BD41C    jl         004BD426
 004BD41E    cmp        esi,7FFFFFF
>004BD424    jle        004BD43F
 004BD426    lea        edx,[ebp-4]
 004BD429    mov        eax,[0061BB04]; ^#122.sResString1:TResStringRec
 004BD42E    call       LoadResString
 004BD433    mov        edx,dword ptr [ebp-4]
 004BD436    mov        ecx,esi
 004BD438    mov        eax,dword ptr [ebx]
 004BD43A    call       004BD38C
 004BD43F    cmp        esi,dword ptr [ebx+18]; TZCollection.?f18:Integer
>004BD442    je         004BD493
 004BD444    imul       edx,esi,4
>004BD447    jno        004BD44E
 004BD449    call       @IntOver
 004BD44E    lea        eax,[ebx+10]; TZCollection.?f10:dword
 004BD451    call       @ReallocMem
 004BD456    mov        eax,dword ptr [ebx+18]; TZCollection.?f18:Integer
 004BD459    cmp        esi,eax
>004BD45B    jle        004BD490
 004BD45D    mov        edx,dword ptr [ebx+14]; TZCollection.?f14:dword
 004BD460    cmp        edx,7FFFFFE
>004BD466    jbe        004BD46D
 004BD468    call       @BoundErr
 004BD46D    mov        ecx,dword ptr [ebx+10]; TZCollection.?f10:dword
 004BD470    lea        edx,[ecx+edx*4]
 004BD473    mov        ecx,esi
 004BD475    sub        ecx,eax
>004BD477    jno        004BD47E
 004BD479    call       @IntOver
 004BD47E    imul       eax,ecx,4
>004BD481    jno        004BD488
 004BD483    call       @IntOver
 004BD488    xor        ecx,ecx
 004BD48A    xchg       eax,edx
 004BD48B    call       @FillChar
 004BD490    mov        dword ptr [ebx+18],esi; TZCollection.?f18:Integer
 004BD493    xor        eax,eax
 004BD495    pop        edx
 004BD496    pop        ecx
 004BD497    pop        ecx
 004BD498    mov        dword ptr fs:[eax],edx
 004BD49B    push       4BD4B0
 004BD4A0    lea        eax,[ebp-4]
 004BD4A3    call       @LStrClr
 004BD4A8    ret
<004BD4A9    jmp        @HandleFinally
<004BD4AE    jmp        004BD4A0
 004BD4B0    pop        esi
 004BD4B1    pop        ebx
 004BD4B2    pop        ecx
 004BD4B3    pop        ebp
 004BD4B4    ret
*}
//end;

//004BD4B8
//procedure sub_004BD4B8(?:TZCollection; ?:?);
//begin
{*
 004BD4B8    push       ebp
 004BD4B9    mov        ebp,esp
 004BD4BB    add        esp,0FFFFFFF8
 004BD4BE    push       ebx
 004BD4BF    push       esi
 004BD4C0    push       edi
 004BD4C1    xor        ecx,ecx
 004BD4C3    mov        dword ptr [ebp-8],ecx
 004BD4C6    mov        esi,edx
 004BD4C8    mov        ebx,eax
 004BD4CA    xor        eax,eax
 004BD4CC    push       ebp
 004BD4CD    push       4BD55F
 004BD4D2    push       dword ptr fs:[eax]
 004BD4D5    mov        dword ptr fs:[eax],esp
 004BD4D8    test       esi,esi
>004BD4DA    jl         004BD4E4
 004BD4DC    cmp        esi,7FFFFFF
>004BD4E2    jle        004BD4FD
 004BD4E4    lea        edx,[ebp-8]
 004BD4E7    mov        eax,[0061B7E8]; ^#122.sResString2:TResStringRec
 004BD4EC    call       LoadResString
 004BD4F1    mov        edx,dword ptr [ebp-8]
 004BD4F4    mov        ecx,esi
 004BD4F6    mov        eax,dword ptr [ebx]
 004BD4F8    call       004BD38C
 004BD4FD    cmp        esi,dword ptr [ebx+18]; TZCollection.?f18:Integer
>004BD500    jle        004BD50B
 004BD502    mov        edx,esi
 004BD504    mov        eax,ebx
 004BD506    call       004BD400
 004BD50B    mov        eax,dword ptr [ebx+14]; TZCollection.?f14:dword
 004BD50E    cmp        esi,eax
>004BD510    jge        004BD546
 004BD512    sub        eax,1
>004BD515    jno        004BD51C
 004BD517    call       @IntOver
 004BD51C    mov        edi,esi
 004BD51E    sub        edi,eax
>004BD520    jg         004BD546
 004BD522    dec        edi
 004BD523    mov        dword ptr [ebp-4],eax
 004BD526    mov        eax,dword ptr [ebp-4]
 004BD529    cmp        eax,7FFFFFE
>004BD52E    jbe        004BD535
 004BD530    call       @BoundErr
 004BD535    mov        edx,dword ptr [ebx+10]; TZCollection.?f10:dword
 004BD538    lea        eax,[edx+eax*4]
 004BD53B    call       @IntfClear
 004BD540    dec        dword ptr [ebp-4]
 004BD543    inc        edi
<004BD544    jne        004BD526
 004BD546    mov        dword ptr [ebx+14],esi; TZCollection.?f14:dword
 004BD549    xor        eax,eax
 004BD54B    pop        edx
 004BD54C    pop        ecx
 004BD54D    pop        ecx
 004BD54E    mov        dword ptr fs:[eax],edx
 004BD551    push       4BD566
 004BD556    lea        eax,[ebp-8]
 004BD559    call       @LStrClr
 004BD55E    ret
<004BD55F    jmp        @HandleFinally
<004BD564    jmp        004BD556
 004BD566    pop        edi
 004BD567    pop        esi
 004BD568    pop        ebx
 004BD569    pop        ecx
 004BD56A    pop        ecx
 004BD56B    pop        ebp
 004BD56C    ret
*}
//end;

//004BD570
//procedure sub_004BD570(?:?);
//begin
{*
 004BD570    push       ebp
 004BD571    mov        ebp,esp
 004BD573    xor        ecx,ecx
 004BD575    push       ecx
 004BD576    push       ecx
 004BD577    push       ecx
 004BD578    push       ecx
 004BD579    push       ecx
 004BD57A    push       ebx
 004BD57B    push       esi
 004BD57C    push       edi
 004BD57D    mov        dword ptr [ebp-8],edx
 004BD580    mov        dword ptr [ebp-4],eax
 004BD583    xor        eax,eax
 004BD585    push       ebp
 004BD586    push       4BD65F
 004BD58B    push       dword ptr fs:[eax]
 004BD58E    mov        dword ptr fs:[eax],esp
 004BD591    mov        dl,1
 004BD593    mov        eax,[004BCEAC]; TZCollection
 004BD598    call       TZCollection.Create; TZCollection.Create
 004BD59D    mov        edx,eax
 004BD59F    test       edx,edx
>004BD5A1    je         004BD5A6
 004BD5A3    sub        edx,0FFFFFFE4
 004BD5A6    lea        eax,[ebp-0C]
 004BD5A9    call       @IntfCopy
 004BD5AE    mov        eax,dword ptr [ebp-4]
 004BD5B1    mov        esi,dword ptr [eax+14]; TZCollection.?f14:dword
 004BD5B4    sub        esi,1
>004BD5B7    jno        004BD5BE
 004BD5B9    call       @IntOver
 004BD5BE    test       esi,esi
>004BD5C0    jl         004BD62E
 004BD5C2    inc        esi
 004BD5C3    xor        ebx,ebx
 004BD5C5    lea        eax,[ebp-10]
 004BD5C8    call       @IntfClear
 004BD5CD    push       eax
 004BD5CE    push       4BD670
 004BD5D3    mov        edi,ebx
 004BD5D5    cmp        edi,7FFFFFE
>004BD5DB    jbe        004BD5E2
 004BD5DD    call       @BoundErr
 004BD5E2    mov        eax,dword ptr [ebp-4]
 004BD5E5    mov        eax,dword ptr [eax+10]; TZCollection.?f10:dword
 004BD5E8    mov        eax,dword ptr [eax+edi*4]
 004BD5EB    push       eax
 004BD5EC    mov        eax,dword ptr [eax]
 004BD5EE    call       dword ptr [eax]
 004BD5F0    test       eax,eax
>004BD5F2    jne        004BD60C
 004BD5F4    lea        edx,[ebp-14]
 004BD5F7    mov        eax,dword ptr [ebp-10]
 004BD5FA    mov        ecx,dword ptr [eax]
 004BD5FC    call       dword ptr [ecx+14]
 004BD5FF    mov        edx,dword ptr [ebp-14]
 004BD602    mov        eax,dword ptr [ebp-0C]
 004BD605    mov        ecx,dword ptr [eax]
 004BD607    call       dword ptr [ecx+3C]
>004BD60A    jmp        004BD62A
 004BD60C    cmp        ebx,7FFFFFE
>004BD612    jbe        004BD619
 004BD614    call       @BoundErr
 004BD619    mov        eax,dword ptr [ebp-4]
 004BD61C    mov        eax,dword ptr [eax+10]; TZCollection.?f10:dword
 004BD61F    mov        edx,dword ptr [eax+edi*4]
 004BD622    mov        eax,dword ptr [ebp-0C]
 004BD625    mov        ecx,dword ptr [eax]
 004BD627    call       dword ptr [ecx+3C]
 004BD62A    inc        ebx
 004BD62B    dec        esi
<004BD62C    jne        004BD5C5
 004BD62E    mov        eax,dword ptr [ebp-8]
 004BD631    mov        edx,dword ptr [ebp-0C]
 004BD634    call       @IntfCopy
 004BD639    xor        eax,eax
 004BD63B    pop        edx
 004BD63C    pop        ecx
 004BD63D    pop        ecx
 004BD63E    mov        dword ptr fs:[eax],edx
 004BD641    push       4BD666
 004BD646    lea        eax,[ebp-14]
 004BD649    call       @IntfClear
 004BD64E    lea        eax,[ebp-10]
 004BD651    call       @IntfClear
 004BD656    lea        eax,[ebp-0C]
 004BD659    call       @IntfClear
 004BD65E    ret
<004BD65F    jmp        @HandleFinally
<004BD664    jmp        004BD646
 004BD666    pop        edi
 004BD667    pop        esi
 004BD668    pop        ebx
 004BD669    mov        esp,ebp
 004BD66B    pop        ebp
 004BD66C    ret
*}
//end;

//004BD758
//procedure sub_004BD758(?:TZCollection);
//begin
{*
 004BD758    push       ebp
 004BD759    mov        ebp,esp
 004BD75B    push       ebx
 004BD75C    mov        ebx,eax
 004BD75E    xor        edx,edx
 004BD760    mov        eax,ebx
 004BD762    call       004BD4B8
 004BD767    xor        edx,edx
 004BD769    mov        eax,ebx
 004BD76B    call       004BD400
 004BD770    pop        ebx
 004BD771    pop        ebp
 004BD772    ret
*}
//end;

//004BDE28
//procedure sub_004BDE28(?:?);
//begin
{*
 004BDE28    push       ebp
 004BDE29    mov        ebp,esp
 004BDE2B    add        esp,0FFFFFFE8
 004BDE2E    push       ebx
 004BDE2F    push       esi
 004BDE30    push       edi
 004BDE31    xor        ecx,ecx
 004BDE33    mov        dword ptr [ebp-10],ecx
 004BDE36    mov        dword ptr [ebp-0C],ecx
 004BDE39    mov        dword ptr [ebp-8],ecx
 004BDE3C    mov        ebx,edx
 004BDE3E    mov        dword ptr [ebp-4],eax
 004BDE41    xor        eax,eax
 004BDE43    push       ebp
 004BDE44    push       4BDF42
 004BDE49    push       dword ptr fs:[eax]
 004BDE4C    mov        dword ptr fs:[eax],esp
 004BDE4F    mov        eax,ebx
 004BDE51    call       @LStrClr
 004BDE56    mov        eax,dword ptr [ebp-4]
 004BDE59    mov        edi,dword ptr [eax+14]; TZCollection.?f14:dword
 004BDE5C    sub        edi,1
>004BDE5F    jno        004BDE66
 004BDE61    call       @IntOver
 004BDE66    test       edi,edi
>004BDE68    jl         004BDF07
 004BDE6E    inc        edi
 004BDE6F    xor        esi,esi
 004BDE71    test       esi,esi
>004BDE73    jle        004BDE81
 004BDE75    mov        eax,ebx
 004BDE77    mov        edx,4BDF58; ','
 004BDE7C    call       @LStrCat
 004BDE81    lea        eax,[ebp-8]
 004BDE84    call       @IntfClear
 004BDE89    push       eax
 004BDE8A    push       4BDF5C
 004BDE8F    cmp        esi,7FFFFFE
>004BDE95    jbe        004BDE9C
 004BDE97    call       @BoundErr
 004BDE9C    mov        eax,dword ptr [ebp-4]
 004BDE9F    mov        eax,dword ptr [eax+10]; TZCollection.?f10:dword
 004BDEA2    mov        eax,dword ptr [eax+esi*4]
 004BDEA5    push       eax
 004BDEA6    mov        eax,dword ptr [eax]
 004BDEA8    call       dword ptr [eax]
 004BDEAA    test       eax,eax
>004BDEAC    jne        004BDEC5
 004BDEAE    lea        edx,[ebp-0C]
 004BDEB1    mov        eax,dword ptr [ebp-8]
 004BDEB4    mov        ecx,dword ptr [eax]
 004BDEB6    call       dword ptr [ecx+18]
 004BDEB9    mov        edx,dword ptr [ebp-0C]
 004BDEBC    mov        eax,ebx
 004BDEBE    call       @LStrCat
>004BDEC3    jmp        004BDEFF
 004BDEC5    lea        eax,[ebp-10]
 004BDEC8    push       eax
 004BDEC9    cmp        esi,7FFFFFE
>004BDECF    jbe        004BDED6
 004BDED1    call       @BoundErr
 004BDED6    mov        eax,dword ptr [ebp-4]
 004BDED9    mov        eax,dword ptr [eax+10]; TZCollection.?f10:dword
 004BDEDC    mov        eax,dword ptr [eax+esi*4]
 004BDEDF    mov        dword ptr [ebp-18],eax
 004BDEE2    mov        byte ptr [ebp-14],5
 004BDEE6    lea        edx,[ebp-18]
 004BDEE9    xor        ecx,ecx
 004BDEEB    mov        eax,4BDF74; '<%p>'
 004BDEF0    call       Format
 004BDEF5    mov        edx,dword ptr [ebp-10]
 004BDEF8    mov        eax,ebx
 004BDEFA    call       @LStrCat
 004BDEFF    inc        esi
 004BDF00    dec        edi
<004BDF01    jne        004BDE71
 004BDF07    push       4BDF84; '['
 004BDF0C    push       dword ptr [ebx]
 004BDF0E    push       4BDF90; ']'
 004BDF13    mov        eax,ebx
 004BDF15    mov        edx,3
 004BDF1A    call       @LStrCatN
 004BDF1F    xor        eax,eax
 004BDF21    pop        edx
 004BDF22    pop        ecx
 004BDF23    pop        ecx
 004BDF24    mov        dword ptr fs:[eax],edx
 004BDF27    push       4BDF49
 004BDF2C    lea        eax,[ebp-10]
 004BDF2F    mov        edx,2
 004BDF34    call       @LStrArrayClr
 004BDF39    lea        eax,[ebp-8]
 004BDF3C    call       @IntfClear
 004BDF41    ret
<004BDF42    jmp        @HandleFinally
<004BDF47    jmp        004BDF2C
 004BDF49    pop        edi
 004BDF4A    pop        esi
 004BDF4B    pop        ebx
 004BDF4C    mov        esp,ebp
 004BDF4E    pop        ebp
 004BDF4F    ret
*}
//end;

//004BDF94
//constructor TZUnmodifiableCollection.Create(?:TZUnmodifiableCollection; _Dv__:Boolean);
//begin
{*
 004BDF94    push       ebp
 004BDF95    mov        ebp,esp
 004BDF97    push       ecx
 004BDF98    push       ebx
 004BDF99    push       esi
 004BDF9A    test       dl,dl
>004BDF9C    je         004BDFA6
 004BDF9E    add        esp,0FFFFFFF0
 004BDFA1    call       @ClassCreate
 004BDFA6    mov        dword ptr [ebp-4],ecx
 004BDFA9    mov        ebx,edx
 004BDFAB    mov        esi,eax
 004BDFAD    mov        eax,dword ptr [ebp-4]
 004BDFB0    call       @IntfAddRef
 004BDFB5    xor        eax,eax
 004BDFB7    push       ebp
 004BDFB8    push       4BDFED
 004BDFBD    push       dword ptr fs:[eax]
 004BDFC0    mov        dword ptr fs:[eax],esp
 004BDFC3    xor        edx,edx
 004BDFC5    mov        eax,esi
 004BDFC7    call       TObject.Create
 004BDFCC    lea        eax,[esi+10]; TZUnmodifiableCollection.?f10:IZCollection
 004BDFCF    mov        edx,dword ptr [ebp-4]
 004BDFD2    call       @IntfCopy
 004BDFD7    xor        eax,eax
 004BDFD9    pop        edx
 004BDFDA    pop        ecx
 004BDFDB    pop        ecx
 004BDFDC    mov        dword ptr fs:[eax],edx
 004BDFDF    push       4BDFF4
 004BDFE4    lea        eax,[ebp-4]
 004BDFE7    call       @IntfClear
 004BDFEC    ret
<004BDFED    jmp        @HandleFinally
<004BDFF2    jmp        004BDFE4
 004BDFF4    mov        eax,esi
 004BDFF6    test       bl,bl
>004BDFF8    je         004BE009
 004BDFFA    call       @AfterConstruction
 004BDFFF    pop        dword ptr fs:[0]
 004BE006    add        esp,0C
 004BE009    mov        eax,esi
 004BE00B    pop        esi
 004BE00C    pop        ebx
 004BE00D    pop        ecx
 004BE00E    pop        ebp
 004BE00F    ret
*}
//end;

//004BE010
destructor TZUnmodifiableCollection.Destroy;
begin
{*
 004BE010    push       ebp
 004BE011    mov        ebp,esp
 004BE013    push       ebx
 004BE014    push       esi
 004BE015    call       @BeforeDestruction
 004BE01A    mov        ebx,edx
 004BE01C    mov        esi,eax
 004BE01E    lea        eax,[esi+10]; TZUnmodifiableCollection.?f10:IZCollection
 004BE021    call       @IntfClear
 004BE026    mov        edx,ebx
 004BE028    and        dl,0FC
 004BE02B    mov        eax,esi
 004BE02D    call       TObject.Destroy
 004BE032    test       bl,bl
>004BE034    jle        004BE03D
 004BE036    mov        eax,esi
 004BE038    call       @ClassDestroy
 004BE03D    pop        esi
 004BE03E    pop        ebx
 004BE03F    pop        ebp
 004BE040    ret
*}
end;

//004BE044
//procedure sub_004BE044(?:?);
//begin
{*
 004BE044    push       ebp
 004BE045    mov        ebp,esp
 004BE047    push       ebx
 004BE048    push       esi
 004BE049    mov        esi,edx
 004BE04B    mov        ebx,eax
 004BE04D    mov        ecx,dword ptr [ebx+10]; TZUnmodifiableCollection.?f10:IZCollection
 004BE050    mov        dl,1
 004BE052    mov        eax,[004BD094]; TZUnmodifiableCollection
 004BE057    call       TZUnmodifiableCollection.Create; TZUnmodifiableCollection.Create
 004BE05C    mov        edx,eax
 004BE05E    test       edx,edx
>004BE060    je         004BE065
 004BE062    sub        edx,0FFFFFFF8
 004BE065    mov        eax,esi
 004BE067    call       @IntfCopy
 004BE06C    pop        esi
 004BE06D    pop        ebx
 004BE06E    pop        ebp
 004BE06F    ret
*}
//end;

//004BE20C
//procedure sub_004BE20C(?:?);
//begin
{*
 004BE20C    push       ebp
 004BE20D    mov        ebp,esp
 004BE20F    push       ebx
 004BE210    push       esi
 004BE211    mov        esi,edx
 004BE213    mov        ebx,eax
 004BE215    mov        edx,esi
 004BE217    mov        eax,dword ptr [ebx+10]; TZUnmodifiableCollection.?f10:IZCollection
 004BE21A    mov        ecx,dword ptr [eax]
 004BE21C    call       dword ptr [ecx+18]
 004BE21F    pop        esi
 004BE220    pop        ebx
 004BE221    pop        ebp
 004BE222    ret
*}
//end;

//004BE224
//constructor TZHashMap.Create(?:TZHashMap; _Dv__:Boolean);
//begin
{*
 004BE224    push       ebp
 004BE225    mov        ebp,esp
 004BE227    push       ebx
 004BE228    push       esi
 004BE229    test       dl,dl
>004BE22B    je         004BE235
 004BE22D    add        esp,0FFFFFFF0
 004BE230    call       @ClassCreate
 004BE235    mov        ebx,edx
 004BE237    mov        esi,eax
 004BE239    xor        edx,edx
 004BE23B    mov        eax,esi
 004BE23D    call       TObject.Create
 004BE242    mov        dl,1
 004BE244    mov        eax,[004BCEAC]; TZCollection
 004BE249    call       TZCollection.Create; TZCollection.Create
 004BE24E    mov        edx,eax
 004BE250    test       edx,edx
>004BE252    je         004BE257
 004BE254    sub        edx,0FFFFFFE4
 004BE257    lea        eax,[esi+10]; TZHashMap.?f10:IZCollection
 004BE25A    call       @IntfCopy
 004BE25F    mov        dl,1
 004BE261    mov        eax,[004BCEAC]; TZCollection
 004BE266    call       TZCollection.Create; TZCollection.Create
 004BE26B    mov        edx,eax
 004BE26D    test       edx,edx
>004BE26F    je         004BE274
 004BE271    sub        edx,0FFFFFFE4
 004BE274    lea        eax,[esi+18]; TZHashMap.?f18:IZCollection
 004BE277    call       @IntfCopy
 004BE27C    mov        ecx,dword ptr [esi+10]; TZHashMap.?f10:IZCollection
 004BE27F    mov        dl,1
 004BE281    mov        eax,[004BD094]; TZUnmodifiableCollection
 004BE286    call       TZUnmodifiableCollection.Create; TZUnmodifiableCollection.Create
 004BE28B    mov        edx,eax
 004BE28D    test       edx,edx
>004BE28F    je         004BE294
 004BE291    sub        edx,0FFFFFFEC
 004BE294    lea        eax,[esi+14]; TZHashMap.?f14:IZCollection
 004BE297    call       @IntfCopy
 004BE29C    mov        ecx,dword ptr [esi+18]; TZHashMap.?f18:IZCollection
 004BE29F    mov        dl,1
 004BE2A1    mov        eax,[004BD094]; TZUnmodifiableCollection
 004BE2A6    call       TZUnmodifiableCollection.Create; TZUnmodifiableCollection.Create
 004BE2AB    mov        edx,eax
 004BE2AD    test       edx,edx
>004BE2AF    je         004BE2B4
 004BE2B1    sub        edx,0FFFFFFEC
 004BE2B4    lea        eax,[esi+1C]; TZHashMap.?f1C:IZCollection
 004BE2B7    call       @IntfCopy
 004BE2BC    mov        eax,esi
 004BE2BE    test       bl,bl
>004BE2C0    je         004BE2D1
 004BE2C2    call       @AfterConstruction
 004BE2C7    pop        dword ptr fs:[0]
 004BE2CE    add        esp,0C
 004BE2D1    mov        eax,esi
 004BE2D3    pop        esi
 004BE2D4    pop        ebx
 004BE2D5    pop        ebp
 004BE2D6    ret
*}
//end;

//004BE2D8
destructor TZHashMap.Destroy;
begin
{*
 004BE2D8    push       ebp
 004BE2D9    mov        ebp,esp
 004BE2DB    push       ebx
 004BE2DC    push       esi
 004BE2DD    call       @BeforeDestruction
 004BE2E2    mov        ebx,edx
 004BE2E4    mov        esi,eax
 004BE2E6    lea        eax,[esi+14]; TZHashMap.?f14:IZCollection
 004BE2E9    call       @IntfClear
 004BE2EE    lea        eax,[esi+1C]; TZHashMap.?f1C:IZCollection
 004BE2F1    call       @IntfClear
 004BE2F6    lea        eax,[esi+10]; TZHashMap.?f10:IZCollection
 004BE2F9    call       @IntfClear
 004BE2FE    lea        eax,[esi+18]; TZHashMap.?f18:IZCollection
 004BE301    call       @IntfClear
 004BE306    mov        edx,ebx
 004BE308    and        dl,0FC
 004BE30B    mov        eax,esi
 004BE30D    call       TObject.Destroy
 004BE312    test       bl,bl
>004BE314    jle        004BE31D
 004BE316    mov        eax,esi
 004BE318    call       @ClassDestroy
 004BE31D    pop        esi
 004BE31E    pop        ebx
 004BE31F    pop        ebp
 004BE320    ret
*}
end;

//004BE324
//procedure sub_004BE324(?:?);
//begin
{*
 004BE324    push       ebp
 004BE325    mov        ebp,esp
 004BE327    xor        ecx,ecx
 004BE329    push       ecx
 004BE32A    push       ecx
 004BE32B    push       ecx
 004BE32C    push       ecx
 004BE32D    push       ebx
 004BE32E    push       esi
 004BE32F    push       edi
 004BE330    mov        edi,edx
 004BE332    mov        esi,eax
 004BE334    xor        eax,eax
 004BE336    push       ebp
 004BE337    push       4BE3D9
 004BE33C    push       dword ptr fs:[eax]
 004BE33F    mov        dword ptr fs:[eax],esp
 004BE342    mov        dl,1
 004BE344    mov        eax,[004BD220]; TZHashMap
 004BE349    call       TZHashMap.Create; TZHashMap.Create
 004BE34E    mov        ebx,eax
 004BE350    lea        edx,[ebp-4]
 004BE353    mov        eax,dword ptr [esi+10]; TZHashMap.?f10:IZCollection
 004BE356    mov        ecx,dword ptr [eax]
 004BE358    call       dword ptr [ecx+14]
 004BE35B    mov        edx,dword ptr [ebp-4]
 004BE35E    lea        eax,[ebx+10]; TZHashMap.?f10:IZCollection
 004BE361    call       @IntfCopy
 004BE366    lea        edx,[ebp-8]
 004BE369    mov        eax,dword ptr [esi+14]; TZHashMap.?f14:IZCollection
 004BE36C    mov        ecx,dword ptr [eax]
 004BE36E    call       dword ptr [ecx+14]
 004BE371    mov        edx,dword ptr [ebp-8]
 004BE374    lea        eax,[ebx+14]; TZHashMap.?f14:IZCollection
 004BE377    call       @IntfCopy
 004BE37C    lea        edx,[ebp-0C]
 004BE37F    mov        eax,dword ptr [esi+18]; TZHashMap.?f18:IZCollection
 004BE382    mov        ecx,dword ptr [eax]
 004BE384    call       dword ptr [ecx+14]
 004BE387    mov        edx,dword ptr [ebp-0C]
 004BE38A    lea        eax,[ebx+18]; TZHashMap.?f18:IZCollection
 004BE38D    call       @IntfCopy
 004BE392    lea        edx,[ebp-10]
 004BE395    mov        eax,dword ptr [esi+1C]; TZHashMap.?f1C:IZCollection
 004BE398    mov        ecx,dword ptr [eax]
 004BE39A    call       dword ptr [ecx+14]
 004BE39D    mov        edx,dword ptr [ebp-10]
 004BE3A0    lea        eax,[ebx+1C]; TZHashMap.?f1C:IZCollection
 004BE3A3    call       @IntfCopy
 004BE3A8    mov        eax,edi
 004BE3AA    mov        edx,ebx
 004BE3AC    test       edx,edx
>004BE3AE    je         004BE3B3
 004BE3B0    sub        edx,0FFFFFFF8
 004BE3B3    call       @IntfCopy
 004BE3B8    xor        eax,eax
 004BE3BA    pop        edx
 004BE3BB    pop        ecx
 004BE3BC    pop        ecx
 004BE3BD    mov        dword ptr fs:[eax],edx
 004BE3C0    push       4BE3E0
 004BE3C5    lea        eax,[ebp-10]
 004BE3C8    mov        edx,dword ptr ds:[4011A8]; IInterface
 004BE3CE    mov        ecx,4
 004BE3D3    call       @FinalizeArray
 004BE3D8    ret
<004BE3D9    jmp        @HandleFinally
<004BE3DE    jmp        004BE3C5
 004BE3E0    pop        edi
 004BE3E1    pop        esi
 004BE3E2    pop        ebx
 004BE3E3    mov        esp,ebp
 004BE3E5    pop        ebp
 004BE3E6    ret
*}
//end;

//004BE3E8
//procedure sub_004BE3E8(?:TZHashMap; ?:IInterface; ?:?);
//begin
{*
 004BE3E8    push       ebp
 004BE3E9    mov        ebp,esp
 004BE3EB    push       ecx
 004BE3EC    push       ebx
 004BE3ED    push       esi
 004BE3EE    mov        dword ptr [ebp-4],ecx
 004BE3F1    mov        ebx,eax
 004BE3F3    mov        eax,dword ptr [ebx+10]
 004BE3F6    mov        ecx,dword ptr [eax]
 004BE3F8    call       dword ptr [ecx+28]
 004BE3FB    mov        esi,eax
 004BE3FD    test       esi,esi
>004BE3FF    jl         004BE410
 004BE401    mov        ecx,dword ptr [ebp-4]
 004BE404    mov        edx,esi
 004BE406    mov        eax,dword ptr [ebx+18]
 004BE409    mov        ebx,dword ptr [eax]
 004BE40B    call       dword ptr [ebx+20]
>004BE40E    jmp        004BE418
 004BE410    mov        eax,dword ptr [ebp-4]
 004BE413    call       @IntfClear
 004BE418    pop        esi
 004BE419    pop        ebx
 004BE41A    pop        ecx
 004BE41B    pop        ebp
 004BE41C    ret
*}
//end;

//004BE420
//procedure sub_004BE420(?:TZHashMap; ?:IInterface; ?:?);
//begin
{*
 004BE420    push       ebp
 004BE421    mov        ebp,esp
 004BE423    push       ecx
 004BE424    push       ebx
 004BE425    push       esi
 004BE426    mov        dword ptr [ebp-4],ecx
 004BE429    mov        esi,edx
 004BE42B    mov        ebx,eax
 004BE42D    mov        edx,esi
 004BE42F    mov        eax,dword ptr [ebx+10]
 004BE432    mov        ecx,dword ptr [eax]
 004BE434    call       dword ptr [ecx+28]
 004BE437    test       eax,eax
>004BE439    jl         004BE44A
 004BE43B    mov        ecx,dword ptr [ebp-4]
 004BE43E    mov        edx,eax
 004BE440    mov        eax,dword ptr [ebx+18]
 004BE443    mov        ebx,dword ptr [eax]
 004BE445    call       dword ptr [ebx+24]
>004BE448    jmp        004BE45F
 004BE44A    mov        edx,esi
 004BE44C    mov        eax,dword ptr [ebx+10]
 004BE44F    mov        ecx,dword ptr [eax]
 004BE451    call       dword ptr [ecx+3C]
 004BE454    mov        edx,dword ptr [ebp-4]
 004BE457    mov        eax,dword ptr [ebx+18]
 004BE45A    mov        ecx,dword ptr [eax]
 004BE45C    call       dword ptr [ecx+3C]
 004BE45F    pop        esi
 004BE460    pop        ebx
 004BE461    pop        ecx
 004BE462    pop        ebp
 004BE463    ret
*}
//end;

//004BE514
//procedure sub_004BE514(?:TZHashMap);
//begin
{*
 004BE514    push       ebp
 004BE515    mov        ebp,esp
 004BE517    push       ebx
 004BE518    mov        ebx,eax
 004BE51A    mov        eax,dword ptr [ebx+10]; TZHashMap.?f10:IZCollection
 004BE51D    mov        edx,dword ptr [eax]
 004BE51F    call       dword ptr [edx+50]
 004BE522    mov        eax,dword ptr [ebx+18]; TZHashMap.?f18:IZCollection
 004BE525    mov        edx,dword ptr [eax]
 004BE527    call       dword ptr [edx+50]
 004BE52A    pop        ebx
 004BE52B    pop        ebp
 004BE52C    ret
*}
//end;

end.