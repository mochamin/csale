{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcInterbase6;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainInterbaseDriver, ZPlainFirebirdDriver, _Unit139;

type
  TZInterbase6Driver = class(TZAbstractDriver)
  public
    f18:IZInterbase6PlainDriver;//f18
    f1C:IZInterbase5PlainDriver;//f1C
    f20:IZFirebird10PlainDriver;//f20
    f24:IZFirebird15PlainDriver;//f24
    f28:IZFirebird20PlainDriver;//f28
    f2C:IZFirebird21PlainDriver;//f2C
    f30:IZFirebird15PlainDriver;//f30
    f34:IZFirebird20PlainDriver;//f34
    f38:IZFirebird21PlainDriver;//f38
    //procedure sub_005394F0(?:?); virtual;
    //procedure sub_00539048(?:?; ?:?; ?:?); virtual;
    //function sub_00539284():?; virtual;
    //function sub_0053928C():?; virtual;
    //procedure sub_00539290(?:?); virtual;
    //procedure sub_005392D0(?:?); virtual;
    //constructor Create(?:TZInterbase6Driver; _Dv__:Boolean);
  end;
  TZInterbase6Connection = class(TZAbstractConnection)
  public
    f34:Integer;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    //f40:?;//f40
    f94:IZInterbasePlainDriver;//f94
    f98:byte;//f98
    destructor Destroy; virtual;
    //procedure sub_00539CC0(?:?; ?:?); virtual;
    //procedure sub_0053A180(?:?; ?:?; ?:?); virtual;
    //procedure sub_0053A1D0(?:?; ?:?; ?:?); virtual;
    //procedure sub_0053A5F4(?:?; ?:?; ?:?); virtual;
    procedure sub_00539914; virtual;
    procedure sub_0053A220; virtual;
    //function sub_0053A2E8:?; virtual;
    procedure sub_00539D90; virtual;
    procedure sub_00539710; virtual;
    procedure sub_0053A334; virtual;
    //constructor Create(?:TZInterbase6Connection; _Dv__:Boolean; ?:TZInterbase6Driver; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZInterbase6CachedResolver = class(TZGenericCachedResolver)
  public
    //procedure sub_0053A630(?:?; ?:?); virtual;
  end;
  TZInterbase6Sequence = class(TZAbstractSequence)
  public
    procedure sub_0053A724; virtual;
    procedure sub_0053A910; virtual;
    //procedure sub_0053A88C(?:?); virtual;
    //procedure sub_0053AA84(?:?); virtual;
  end;

implementation

{$R *.DFM}

//00539048
//procedure sub_00539048(?:?; ?:?; ?:?);
//begin
{*
 00539048    push       ebp
 00539049    mov        ebp,esp
 0053904B    push       0
 0053904D    push       0
 0053904F    push       0
 00539051    push       0
 00539053    push       0
 00539055    push       0
 00539057    push       0
 00539059    push       ebx
 0053905A    push       esi
 0053905B    push       edi
 0053905C    mov        edi,ecx
 0053905E    mov        esi,edx
 00539060    mov        ebx,eax
 00539062    xor        eax,eax
 00539064    push       ebp
 00539065    push       53913C
 0053906A    push       dword ptr fs:[eax]
 0053906D    mov        dword ptr fs:[eax],esp
 00539070    mov        dl,1
 00539072    mov        eax,[0041C8E4]; TStringList
 00539077    call       TObject.Create; TStringList.Create
 0053907C    mov        dword ptr [ebp-4],eax
 0053907F    xor        eax,eax
 00539081    push       ebp
 00539082    push       539112
 00539087    push       dword ptr fs:[eax]
 0053908A    mov        dword ptr fs:[eax],esp
 0053908D    lea        eax,[ebp-18]
 00539090    push       eax
 00539091    lea        eax,[ebp-0C]
 00539094    push       eax
 00539095    lea        eax,[ebp-10]
 00539098    push       eax
 00539099    lea        eax,[ebp-14]
 0053909C    push       eax
 0053909D    mov        eax,dword ptr [ebp-4]
 005390A0    push       eax
 005390A1    lea        ecx,[ebp-8]
 005390A4    mov        edx,edi
 005390A6    mov        eax,esi
 005390A8    call       004D28A4
 005390AD    lea        ecx,[ebp-1C]
 005390B0    mov        edx,esi
 005390B2    mov        eax,ebx
 005390B4    call       0053930C
 005390B9    push       esi
 005390BA    mov        eax,dword ptr [ebp-1C]
 005390BD    push       eax
 005390BE    mov        eax,dword ptr [ebp-8]
 005390C1    push       eax
 005390C2    mov        eax,dword ptr [ebp-18]
 005390C5    push       eax
 005390C6    mov        eax,dword ptr [ebp-0C]
 005390C9    push       eax
 005390CA    mov        eax,dword ptr [ebp-10]
 005390CD    push       eax
 005390CE    mov        eax,dword ptr [ebp-14]
 005390D1    push       eax
 005390D2    mov        eax,dword ptr [ebp-4]
 005390D5    push       eax
 005390D6    mov        ecx,ebx
 005390D8    test       ecx,ecx
>005390DA    je         005390DF
 005390DC    sub        ecx,0FFFFFFEC
 005390DF    mov        dl,1
 005390E1    mov        eax,[00538E5C]; TZInterbase6Connection
 005390E6    call       TZInterbase6Connection.Create; TZInterbase6Connection.Create
 005390EB    mov        edx,eax
 005390ED    test       edx,edx
>005390EF    je         005390F4
 005390F1    sub        edx,0FFFFFFD0
 005390F4    mov        eax,dword ptr [ebp+8]
 005390F7    call       @IntfCopy
 005390FC    xor        eax,eax
 005390FE    pop        edx
 005390FF    pop        ecx
 00539100    pop        ecx
 00539101    mov        dword ptr fs:[eax],edx
 00539104    push       539119
 00539109    mov        eax,dword ptr [ebp-4]
 0053910C    call       TObject.Free
 00539111    ret
<00539112    jmp        @HandleFinally
<00539117    jmp        00539109
 00539119    xor        eax,eax
 0053911B    pop        edx
 0053911C    pop        ecx
 0053911D    pop        ecx
 0053911E    mov        dword ptr fs:[eax],edx
 00539121    push       539143
 00539126    lea        eax,[ebp-1C]
 00539129    call       @IntfClear
 0053912E    lea        eax,[ebp-14]
 00539131    mov        edx,4
 00539136    call       @LStrArrayClr
 0053913B    ret
<0053913C    jmp        @HandleFinally
<00539141    jmp        00539126
 00539143    pop        edi
 00539144    pop        esi
 00539145    pop        ebx
 00539146    mov        esp,ebp
 00539148    pop        ebp
 00539149    ret        4
*}
//end;

//0053914C
//constructor TZInterbase6Driver.Create(?:TZInterbase6Driver; _Dv__:Boolean);
//begin
{*
 0053914C    push       ebp
 0053914D    mov        ebp,esp
 0053914F    push       ebx
 00539150    push       esi
 00539151    test       dl,dl
>00539153    je         0053915D
 00539155    add        esp,0FFFFFFF0
 00539158    call       @ClassCreate
 0053915D    mov        ebx,edx
 0053915F    mov        esi,eax
 00539161    mov        dl,1
 00539163    mov        eax,[005213F4]; TZInterbase6PlainDriver
 00539168    call       TZInterbase6PlainDriver.Create; TZInterbase6PlainDriver.Create
 0053916D    mov        edx,eax
 0053916F    test       edx,edx
>00539171    je         00539176
 00539173    sub        edx,0FFFFFFF0
 00539176    lea        eax,[esi+18]; TZInterbase6Driver.?f18:IZInterbase6PlainDriver
 00539179    call       @IntfCopy
 0053917E    mov        dl,1
 00539180    mov        eax,[005217CC]; TZInterbase5PlainDriver
 00539185    call       TZInterbase5PlainDriver.Create; TZInterbase5PlainDriver.Create
 0053918A    mov        edx,eax
 0053918C    test       edx,edx
>0053918E    je         00539193
 00539190    sub        edx,0FFFFFFF0
 00539193    lea        eax,[esi+1C]; TZInterbase6Driver.?f1C:IZInterbase5PlainDriver
 00539196    call       @IntfCopy
 0053919B    mov        dl,1
 0053919D    mov        eax,[00524D68]; TZFirebird10PlainDriver
 005391A2    call       TZFirebird10PlainDriver.Create; TZFirebird10PlainDriver.Create
 005391A7    mov        edx,eax
 005391A9    test       edx,edx
>005391AB    je         005391B0
 005391AD    sub        edx,0FFFFFFF0
 005391B0    lea        eax,[esi+20]; TZInterbase6Driver.?f20:IZFirebird10PlainDriver
 005391B3    call       @IntfCopy
 005391B8    mov        dl,1
 005391BA    mov        eax,[0052514C]; TZFirebird15PlainDriver
 005391BF    call       TZFirebird15PlainDriver.Create; TZFirebird15PlainDriver.Create
 005391C4    mov        edx,eax
 005391C6    test       edx,edx
>005391C8    je         005391CD
 005391CA    sub        edx,0FFFFFFF0
 005391CD    lea        eax,[esi+24]; TZInterbase6Driver.?f24:IZFirebird15PlainDriver
 005391D0    call       @IntfCopy
 005391D5    mov        dl,1
 005391D7    mov        eax,[005255BC]; TZFirebird20PlainDriver
 005391DC    call       TZFirebird20PlainDriver.Create; TZFirebird20PlainDriver.Create
 005391E1    mov        edx,eax
 005391E3    test       edx,edx
>005391E5    je         005391EA
 005391E7    sub        edx,0FFFFFFF0
 005391EA    lea        eax,[esi+28]; TZInterbase6Driver.?f28:IZFirebird20PlainDriver
 005391ED    call       @IntfCopy
 005391F2    mov        dl,1
 005391F4    mov        eax,[00525A2C]; TZFirebird21PlainDriver
 005391F9    call       TZFirebird21PlainDriver.Create; TZFirebird21PlainDriver.Create
 005391FE    mov        edx,eax
 00539200    test       edx,edx
>00539202    je         00539207
 00539204    sub        edx,0FFFFFFF0
 00539207    lea        eax,[esi+2C]; TZInterbase6Driver.?f2C:IZFirebird21PlainDriver
 0053920A    call       @IntfCopy
 0053920F    mov        dl,1
 00539211    mov        eax,[005251C8]; TZFirebirdD15PlainDriver
 00539216    call       TZFirebird15PlainDriver.Create; TZFirebirdD15PlainDriver.Create
 0053921B    mov        edx,eax
 0053921D    test       edx,edx
>0053921F    je         00539224
 00539221    sub        edx,0FFFFFFF0
 00539224    lea        eax,[esi+30]; TZInterbase6Driver.?f30:IZFirebird15PlainDriver
 00539227    call       @IntfCopy
 0053922C    mov        dl,1
 0053922E    mov        eax,[00525638]; TZFirebirdD20PlainDriver
 00539233    call       TZFirebird20PlainDriver.Create; TZFirebirdD20PlainDriver.Create
 00539238    mov        edx,eax
 0053923A    test       edx,edx
>0053923C    je         00539241
 0053923E    sub        edx,0FFFFFFF0
 00539241    lea        eax,[esi+34]; TZInterbase6Driver.?f34:IZFirebird20PlainDriver
 00539244    call       @IntfCopy
 00539249    mov        dl,1
 0053924B    mov        eax,[00525AA8]; TZFirebirdD21PlainDriver
 00539250    call       TZFirebird21PlainDriver.Create; TZFirebirdD21PlainDriver.Create
 00539255    mov        edx,eax
 00539257    test       edx,edx
>00539259    je         0053925E
 0053925B    sub        edx,0FFFFFFF0
 0053925E    lea        eax,[esi+38]; TZInterbase6Driver.?f38:IZFirebird21PlainDriver
 00539261    call       @IntfCopy
 00539266    mov        eax,esi
 00539268    test       bl,bl
>0053926A    je         0053927B
 0053926C    call       @AfterConstruction
 00539271    pop        dword ptr fs:[0]
 00539278    add        esp,0C
 0053927B    mov        eax,esi
 0053927D    pop        esi
 0053927E    pop        ebx
 0053927F    pop        ebp
 00539280    ret
*}
//end;

//00539284
//function sub_00539284():?;
//begin
{*
 00539284    mov        eax,1
 00539289    ret
*}
//end;

//0053928C
//function sub_0053928C():?;
//begin
{*
 0053928C    xor        eax,eax
 0053928E    ret
*}
//end;

//00539290
//procedure sub_00539290(?:?);
//begin
{*
 00539290    push       ebp
 00539291    mov        ebp,esp
 00539293    push       ebx
 00539294    push       esi
 00539295    mov        esi,edx
 00539297    mov        ebx,eax
 00539299    cmp        dword ptr [ebx+0C],0; TZInterbase6Driver.?fC:IZTokenizer
>0053929D    jne        005392BF
 0053929F    mov        dl,1
 005392A1    mov        eax,[00530CDC]; TZInterbaseTokenizer
 005392A6    call       TZInterbaseTokenizer.Create; TZInterbaseTokenizer.Create
 005392AB    mov        edx,eax
 005392AD    test       edx,edx
>005392AF    je         005392B7
 005392B1    sub        edx,0FFFFFBD8
 005392B7    lea        eax,[ebx+0C]; TZInterbase6Driver.?fC:IZTokenizer
 005392BA    call       @IntfCopy
 005392BF    mov        eax,esi
 005392C1    mov        edx,dword ptr [ebx+0C]; TZInterbase6Driver.?fC:IZTokenizer
 005392C4    call       @IntfCopy
 005392C9    pop        esi
 005392CA    pop        ebx
 005392CB    pop        ebp
 005392CC    ret
*}
//end;

//005392D0
//procedure sub_005392D0(?:?);
//begin
{*
 005392D0    push       ebp
 005392D1    mov        ebp,esp
 005392D3    push       ebx
 005392D4    push       esi
 005392D5    mov        esi,edx
 005392D7    mov        ebx,eax
 005392D9    cmp        dword ptr [ebx+10],0; TZInterbase6Driver.?f10:IZStatementAnalyser
>005392DD    jne        005392FC
 005392DF    mov        dl,1
 005392E1    mov        eax,[00531034]; TZInterbaseStatementAnalyser
 005392E6    call       TZGenericStatementAnalyser.Create; TZInterbaseStatementAnalyser.Create
 005392EB    mov        edx,eax
 005392ED    test       edx,edx
>005392EF    je         005392F4
 005392F1    sub        edx,0FFFFFFE0
 005392F4    lea        eax,[ebx+10]; TZInterbase6Driver.?f10:IZStatementAnalyser
 005392F7    call       @IntfCopy
 005392FC    mov        eax,esi
 005392FE    mov        edx,dword ptr [ebx+10]; TZInterbase6Driver.?f10:IZStatementAnalyser
 00539301    call       @IntfCopy
 00539306    pop        esi
 00539307    pop        ebx
 00539308    pop        ebp
 00539309    ret
*}
//end;

//0053930C
//procedure sub_0053930C(?:TZInterbase6Driver; ?:?; ?:?);
//begin
{*
 0053930C    push       ebp
 0053930D    mov        ebp,esp
 0053930F    push       ecx
 00539310    mov        ecx,5
 00539315    push       0
 00539317    push       0
 00539319    dec        ecx
<0053931A    jne        00539315
 0053931C    xchg       ecx,dword ptr [ebp-4]
 0053931F    push       ebx
 00539320    push       esi
 00539321    push       edi
 00539322    mov        esi,ecx
 00539324    mov        edi,edx
 00539326    mov        ebx,eax
 00539328    xor        eax,eax
 0053932A    push       ebp
 0053932B    push       5394E1
 00539330    push       dword ptr fs:[eax]
 00539333    mov        dword ptr fs:[eax],esp
 00539336    lea        edx,[ebp-8]
 00539339    mov        eax,ebx
 0053933B    mov        ecx,dword ptr [eax]
 0053933D    call       dword ptr [ecx]; TZInterbase6Driver.sub_005394F0
 0053933F    mov        edx,dword ptr [ebp-8]
 00539342    lea        ecx,[ebp-4]
 00539345    mov        eax,edi
 00539347    call       004D263C
 0053934C    lea        edx,[ebp-0C]
 0053934F    mov        eax,dword ptr [ebx+1C]; TZInterbase6Driver.?f1C:IZInterbase5PlainDriver
 00539352    mov        ecx,dword ptr [eax]
 00539354    call       dword ptr [ecx+0C]
 00539357    mov        edx,dword ptr [ebp-0C]
 0053935A    mov        eax,dword ptr [ebp-4]
 0053935D    call       @LStrCmp
>00539362    jne        00539373
 00539364    mov        eax,esi
 00539366    mov        edx,dword ptr [ebx+1C]; TZInterbase6Driver.?f1C:IZInterbase5PlainDriver
 00539369    call       @IntfCopy
>0053936E    jmp        005394A9
 00539373    lea        edx,[ebp-10]
 00539376    mov        eax,dword ptr [ebx+18]; TZInterbase6Driver.?f18:IZInterbase6PlainDriver
 00539379    mov        ecx,dword ptr [eax]
 0053937B    call       dword ptr [ecx+0C]
 0053937E    mov        edx,dword ptr [ebp-10]
 00539381    mov        eax,dword ptr [ebp-4]
 00539384    call       @LStrCmp
>00539389    jne        0053939A
 0053938B    mov        eax,esi
 0053938D    mov        edx,dword ptr [ebx+18]; TZInterbase6Driver.?f18:IZInterbase6PlainDriver
 00539390    call       @IntfCopy
>00539395    jmp        005394A9
 0053939A    lea        edx,[ebp-14]
 0053939D    mov        eax,dword ptr [ebx+20]; TZInterbase6Driver.?f20:IZFirebird10PlainDriver
 005393A0    mov        ecx,dword ptr [eax]
 005393A2    call       dword ptr [ecx+0C]
 005393A5    mov        edx,dword ptr [ebp-14]
 005393A8    mov        eax,dword ptr [ebp-4]
 005393AB    call       @LStrCmp
>005393B0    jne        005393C1
 005393B2    mov        eax,esi
 005393B4    mov        edx,dword ptr [ebx+20]; TZInterbase6Driver.?f20:IZFirebird10PlainDriver
 005393B7    call       @IntfCopy
>005393BC    jmp        005394A9
 005393C1    lea        edx,[ebp-18]
 005393C4    mov        eax,dword ptr [ebx+24]; TZInterbase6Driver.?f24:IZFirebird15PlainDriver
 005393C7    mov        ecx,dword ptr [eax]
 005393C9    call       dword ptr [ecx+0C]
 005393CC    mov        edx,dword ptr [ebp-18]
 005393CF    mov        eax,dword ptr [ebp-4]
 005393D2    call       @LStrCmp
>005393D7    jne        005393E8
 005393D9    mov        eax,esi
 005393DB    mov        edx,dword ptr [ebx+24]; TZInterbase6Driver.?f24:IZFirebird15PlainDriver
 005393DE    call       @IntfCopy
>005393E3    jmp        005394A9
 005393E8    lea        edx,[ebp-1C]
 005393EB    mov        eax,dword ptr [ebx+28]; TZInterbase6Driver.?f28:IZFirebird20PlainDriver
 005393EE    mov        ecx,dword ptr [eax]
 005393F0    call       dword ptr [ecx+0C]
 005393F3    mov        edx,dword ptr [ebp-1C]
 005393F6    mov        eax,dword ptr [ebp-4]
 005393F9    call       @LStrCmp
>005393FE    jne        0053940F
 00539400    mov        eax,esi
 00539402    mov        edx,dword ptr [ebx+28]; TZInterbase6Driver.?f28:IZFirebird20PlainDriver
 00539405    call       @IntfCopy
>0053940A    jmp        005394A9
 0053940F    lea        edx,[ebp-20]
 00539412    mov        eax,dword ptr [ebx+2C]; TZInterbase6Driver.?f2C:IZFirebird21PlainDriver
 00539415    mov        ecx,dword ptr [eax]
 00539417    call       dword ptr [ecx+0C]
 0053941A    mov        edx,dword ptr [ebp-20]
 0053941D    mov        eax,dword ptr [ebp-4]
 00539420    call       @LStrCmp
>00539425    jne        00539433
 00539427    mov        eax,esi
 00539429    mov        edx,dword ptr [ebx+2C]; TZInterbase6Driver.?f2C:IZFirebird21PlainDriver
 0053942C    call       @IntfCopy
>00539431    jmp        005394A9
 00539433    lea        edx,[ebp-24]
 00539436    mov        eax,dword ptr [ebx+30]; TZInterbase6Driver.?f30:IZFirebird15PlainDriver
 00539439    mov        ecx,dword ptr [eax]
 0053943B    call       dword ptr [ecx+0C]
 0053943E    mov        edx,dword ptr [ebp-24]
 00539441    mov        eax,dword ptr [ebp-4]
 00539444    call       @LStrCmp
>00539449    jne        00539457
 0053944B    mov        eax,esi
 0053944D    mov        edx,dword ptr [ebx+30]; TZInterbase6Driver.?f30:IZFirebird15PlainDriver
 00539450    call       @IntfCopy
>00539455    jmp        005394A9
 00539457    lea        edx,[ebp-28]
 0053945A    mov        eax,dword ptr [ebx+34]; TZInterbase6Driver.?f34:IZFirebird20PlainDriver
 0053945D    mov        ecx,dword ptr [eax]
 0053945F    call       dword ptr [ecx+0C]
 00539462    mov        edx,dword ptr [ebp-28]
 00539465    mov        eax,dword ptr [ebp-4]
 00539468    call       @LStrCmp
>0053946D    jne        0053947B
 0053946F    mov        eax,esi
 00539471    mov        edx,dword ptr [ebx+34]; TZInterbase6Driver.?f34:IZFirebird20PlainDriver
 00539474    call       @IntfCopy
>00539479    jmp        005394A9
 0053947B    lea        edx,[ebp-2C]
 0053947E    mov        eax,dword ptr [ebx+38]; TZInterbase6Driver.?f38:IZFirebird21PlainDriver
 00539481    mov        ecx,dword ptr [eax]
 00539483    call       dword ptr [ecx+0C]
 00539486    mov        edx,dword ptr [ebp-2C]
 00539489    mov        eax,dword ptr [ebp-4]
 0053948C    call       @LStrCmp
>00539491    jne        0053949F
 00539493    mov        eax,esi
 00539495    mov        edx,dword ptr [ebx+38]; TZInterbase6Driver.?f38:IZFirebird21PlainDriver
 00539498    call       @IntfCopy
>0053949D    jmp        005394A9
 0053949F    mov        eax,esi
 005394A1    mov        edx,dword ptr [ebx+18]; TZInterbase6Driver.?f18:IZInterbase6PlainDriver
 005394A4    call       @IntfCopy
 005394A9    mov        eax,dword ptr [esi]
 005394AB    mov        edx,dword ptr [eax]
 005394AD    call       dword ptr [edx+14]
 005394B0    xor        eax,eax
 005394B2    pop        edx
 005394B3    pop        ecx
 005394B4    pop        ecx
 005394B5    mov        dword ptr fs:[eax],edx
 005394B8    push       5394E8
 005394BD    lea        eax,[ebp-2C]
 005394C0    mov        edx,9
 005394C5    call       @LStrArrayClr
 005394CA    lea        eax,[ebp-8]
 005394CD    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 005394D3    call       @DynArrayClear
 005394D8    lea        eax,[ebp-4]
 005394DB    call       @LStrClr
 005394E0    ret
<005394E1    jmp        @HandleFinally
<005394E6    jmp        005394BD
 005394E8    pop        edi
 005394E9    pop        esi
 005394EA    pop        ebx
 005394EB    mov        esp,ebp
 005394ED    pop        ebp
 005394EE    ret
*}
//end;

//005394F0
//procedure sub_005394F0(?:?);
//begin
{*
 005394F0    push       ebp
 005394F1    mov        ebp,esp
 005394F3    push       ebx
 005394F4    mov        ebx,edx
 005394F6    push       9
 005394F8    mov        eax,ebx
 005394FA    mov        ecx,1
 005394FF    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00539505    call       @DynArraySetLength
 0053950A    add        esp,4
 0053950D    xor        eax,eax
 0053950F    mov        edx,dword ptr [ebx]
 00539511    test       edx,edx
>00539513    je         0053951A
 00539515    cmp        eax,dword ptr [edx-4]
>00539518    jb         0053951F
 0053951A    call       @BoundErr
 0053951F    lea        eax,[edx+eax*4]
 00539522    mov        edx,539648; 'interbase-5'
 00539527    call       @LStrAsg
 0053952C    mov        eax,1
 00539531    mov        edx,dword ptr [ebx]
 00539533    test       edx,edx
>00539535    je         0053953C
 00539537    cmp        eax,dword ptr [edx-4]
>0053953A    jb         00539541
 0053953C    call       @BoundErr
 00539541    lea        eax,[edx+eax*4]
 00539544    mov        edx,53965C; 'interbase-6'
 00539549    call       @LStrAsg
 0053954E    mov        eax,2
 00539553    mov        edx,dword ptr [ebx]
 00539555    test       edx,edx
>00539557    je         0053955E
 00539559    cmp        eax,dword ptr [edx-4]
>0053955C    jb         00539563
 0053955E    call       @BoundErr
 00539563    lea        eax,[edx+eax*4]
 00539566    mov        edx,539670; 'firebird-1.0'
 0053956B    call       @LStrAsg
 00539570    mov        eax,3
 00539575    mov        edx,dword ptr [ebx]
 00539577    test       edx,edx
>00539579    je         00539580
 0053957B    cmp        eax,dword ptr [edx-4]
>0053957E    jb         00539585
 00539580    call       @BoundErr
 00539585    lea        eax,[edx+eax*4]
 00539588    mov        edx,539688; 'firebird-1.5'
 0053958D    call       @LStrAsg
 00539592    mov        eax,4
 00539597    mov        edx,dword ptr [ebx]
 00539599    test       edx,edx
>0053959B    je         005395A2
 0053959D    cmp        eax,dword ptr [edx-4]
>005395A0    jb         005395A7
 005395A2    call       @BoundErr
 005395A7    lea        eax,[edx+eax*4]
 005395AA    mov        edx,5396A0; 'firebird-2.0'
 005395AF    call       @LStrAsg
 005395B4    mov        eax,5
 005395B9    mov        edx,dword ptr [ebx]
 005395BB    test       edx,edx
>005395BD    je         005395C4
 005395BF    cmp        eax,dword ptr [edx-4]
>005395C2    jb         005395C9
 005395C4    call       @BoundErr
 005395C9    lea        eax,[edx+eax*4]
 005395CC    mov        edx,5396B8; 'firebird-2.1'
 005395D1    call       @LStrAsg
 005395D6    mov        eax,6
 005395DB    mov        edx,dword ptr [ebx]
 005395DD    test       edx,edx
>005395DF    je         005395E6
 005395E1    cmp        eax,dword ptr [edx-4]
>005395E4    jb         005395EB
 005395E6    call       @BoundErr
 005395EB    lea        eax,[edx+eax*4]
 005395EE    mov        edx,5396D0; 'firebirdd-1.5'
 005395F3    call       @LStrAsg
 005395F8    mov        eax,7
 005395FD    mov        edx,dword ptr [ebx]
 005395FF    test       edx,edx
>00539601    je         00539608
 00539603    cmp        eax,dword ptr [edx-4]
>00539606    jb         0053960D
 00539608    call       @BoundErr
 0053960D    lea        eax,[edx+eax*4]
 00539610    mov        edx,5396E8; 'firebirdd-2.0'
 00539615    call       @LStrAsg
 0053961A    mov        eax,8
 0053961F    mov        edx,dword ptr [ebx]
 00539621    test       edx,edx
>00539623    je         0053962A
 00539625    cmp        eax,dword ptr [edx-4]
>00539628    jb         0053962F
 0053962A    call       @BoundErr
 0053962F    lea        eax,[edx+eax*4]
 00539632    mov        edx,539700; 'firebirdd-2.1'
 00539637    call       @LStrAsg
 0053963C    pop        ebx
 0053963D    pop        ebp
 0053963E    ret
*}
//end;

//00539710
procedure sub_00539710;
begin
{*
 00539710    push       ebp
 00539711    mov        ebp,esp
 00539713    xor        ecx,ecx
 00539715    push       ecx
 00539716    push       ecx
 00539717    push       ecx
 00539718    push       ecx
 00539719    push       ecx
 0053971A    push       ecx
 0053971B    push       ecx
 0053971C    push       ecx
 0053971D    push       ebx
 0053971E    push       esi
 0053971F    mov        ebx,eax
 00539721    xor        eax,eax
 00539723    push       ebp
 00539724    push       53989C
 00539729    push       dword ptr fs:[eax]
 0053972C    mov        dword ptr fs:[eax],esp
 0053972F    cmp        byte ptr [ebx+2B],0; TZInterbase6Connection.?f2B:byte
>00539733    jne        00539879
 00539739    cmp        dword ptr [ebx+3C],0; TZInterbase6Connection.?f3C:dword
>0053973D    je         00539804
 00539743    cmp        byte ptr [ebx+28],0; TZInterbase6Connection.?f28:byte
>00539747    je         0053979C
 00539749    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053974C    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053974F    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539755    mov        esi,dword ptr [eax]
 00539757    call       dword ptr [esi+64]
 0053975A    lea        eax,[ebp-4]
 0053975D    push       eax
 0053975E    mov        eax,dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 00539761    mov        dword ptr [ebp-0C],eax
 00539764    mov        byte ptr [ebp-8],0B
 00539768    lea        edx,[ebp-0C]
 0053976B    xor        ecx,ecx
 0053976D    mov        eax,5398B4; 'COMMITT TRANSACTION \"%s\"'
 00539772    call       Format
 00539777    mov        eax,dword ptr [ebp-4]
 0053977A    push       eax
 0053977B    lea        edx,[ebp-10]
 0053977E    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539784    mov        ecx,dword ptr [eax]
 00539786    call       dword ptr [ecx+0C]
 00539789    mov        ecx,dword ptr [ebp-10]
 0053978C    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00539791    mov        eax,dword ptr [eax]
 00539793    mov        dl,2
 00539795    mov        esi,dword ptr [eax]
 00539797    call       dword ptr [esi+3C]
>0053979A    jmp        005397ED
 0053979C    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053979F    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 005397A2    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 005397A8    mov        esi,dword ptr [eax]
 005397AA    call       dword ptr [esi+58]
 005397AD    lea        eax,[ebp-14]
 005397B0    push       eax
 005397B1    mov        eax,dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 005397B4    mov        dword ptr [ebp-0C],eax
 005397B7    mov        byte ptr [ebp-8],0B
 005397BB    lea        edx,[ebp-0C]
 005397BE    xor        ecx,ecx
 005397C0    mov        eax,5398D8; 'ROLLBACK TRANSACTION \"%s\"'
 005397C5    call       Format
 005397CA    mov        eax,dword ptr [ebp-14]
 005397CD    push       eax
 005397CE    lea        edx,[ebp-18]
 005397D1    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 005397D7    mov        ecx,dword ptr [eax]
 005397D9    call       dword ptr [ecx+0C]
 005397DC    mov        ecx,dword ptr [ebp-18]
 005397DF    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005397E4    mov        eax,dword ptr [eax]
 005397E6    mov        dl,2
 005397E8    mov        esi,dword ptr [eax]
 005397EA    call       dword ptr [esi+3C]
 005397ED    xor        eax,eax
 005397EF    mov        dword ptr [ebx+3C],eax; TZInterbase6Connection.?f3C:dword
 005397F2    push       0
 005397F4    mov        cl,1
 005397F6    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 005397F9    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 005397FF    call       00532ED0
 00539804    cmp        dword ptr [ebx+38],0; TZInterbase6Connection.?f38:dword
>00539808    je         00539832
 0053980A    lea        ecx,[ebx+38]; TZInterbase6Connection.?f38:dword
 0053980D    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539810    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539816    mov        esi,dword ptr [eax]
 00539818    call       dword ptr [esi+1C]
 0053981B    xor        eax,eax
 0053981D    mov        dword ptr [ebx+38],eax; TZInterbase6Connection.?f38:dword
 00539820    push       0
 00539822    mov        cl,1
 00539824    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539827    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053982D    call       00532ED0
 00539832    lea        eax,[ebp-1C]
 00539835    push       eax
 00539836    mov        eax,dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 00539839    mov        dword ptr [ebp-0C],eax
 0053983C    mov        byte ptr [ebp-8],0B
 00539840    lea        edx,[ebp-0C]
 00539843    xor        ecx,ecx
 00539845    mov        eax,5398FC; 'DISCONNECT FROM \"%s\"'
 0053984A    call       Format
 0053984F    mov        eax,dword ptr [ebp-1C]
 00539852    push       eax
 00539853    lea        edx,[ebp-20]
 00539856    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053985C    mov        ecx,dword ptr [eax]
 0053985E    call       dword ptr [ecx+0C]
 00539861    mov        ecx,dword ptr [ebp-20]
 00539864    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00539869    mov        eax,dword ptr [eax]
 0053986B    xor        edx,edx
 0053986D    mov        esi,dword ptr [eax]
 0053986F    call       dword ptr [esi+3C]
 00539872    mov        eax,ebx
 00539874    call       004DE1A4
 00539879    xor        eax,eax
 0053987B    pop        edx
 0053987C    pop        ecx
 0053987D    pop        ecx
 0053987E    mov        dword ptr fs:[eax],edx
 00539881    push       5398A3
 00539886    lea        eax,[ebp-20]
 00539889    mov        edx,5
 0053988E    call       @LStrArrayClr
 00539893    lea        eax,[ebp-4]
 00539896    call       @LStrClr
 0053989B    ret
<0053989C    jmp        @HandleFinally
<005398A1    jmp        00539886
 005398A3    pop        esi
 005398A4    pop        ebx
 005398A5    mov        esp,ebp
 005398A7    pop        ebp
 005398A8    ret
*}
end;

//00539914
procedure sub_00539914;
begin
{*
 00539914    push       ebp
 00539915    mov        ebp,esp
 00539917    push       0
 00539919    push       ebx
 0053991A    push       esi
 0053991B    mov        ebx,eax
 0053991D    xor        eax,eax
 0053991F    push       ebp
 00539920    push       5399B5
 00539925    push       dword ptr fs:[eax]
 00539928    mov        dword ptr fs:[eax],esp
 0053992B    cmp        byte ptr [ebx+2B],0; TZInterbase6Connection.?f2B:byte
>0053992F    jne        0053999F
 00539931    cmp        dword ptr [ebx+3C],0; TZInterbase6Connection.?f3C:dword
>00539935    je         0053999F
 00539937    cmp        byte ptr [ebx+98],0; TZInterbase6Connection.?f98:byte
>0053993E    je         00539958
 00539940    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 00539943    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539946    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053994C    mov        esi,dword ptr [eax]
 0053994E    call       dword ptr [esi+64]
 00539951    xor        eax,eax
 00539953    mov        dword ptr [ebx+3C],eax; TZInterbase6Connection.?f3C:dword
>00539956    jmp        00539969
 00539958    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053995B    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053995E    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539964    mov        esi,dword ptr [eax]
 00539966    call       dword ptr [esi+60]
 00539969    push       0
 0053996B    mov        cl,2
 0053996D    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539970    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539976    call       00532ED0
 0053997B    push       5399CC; 'TRANSACTION COMMIT'
 00539980    lea        edx,[ebp-4]
 00539983    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539989    mov        ecx,dword ptr [eax]
 0053998B    call       dword ptr [ecx+0C]
 0053998E    mov        ecx,dword ptr [ebp-4]
 00539991    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00539996    mov        eax,dword ptr [eax]
 00539998    mov        dl,2
 0053999A    mov        ebx,dword ptr [eax]
 0053999C    call       dword ptr [ebx+3C]
 0053999F    xor        eax,eax
 005399A1    pop        edx
 005399A2    pop        ecx
 005399A3    pop        ecx
 005399A4    mov        dword ptr fs:[eax],edx
 005399A7    push       5399BC
 005399AC    lea        eax,[ebp-4]
 005399AF    call       @LStrClr
 005399B4    ret
<005399B5    jmp        @HandleFinally
<005399BA    jmp        005399AC
 005399BC    pop        esi
 005399BD    pop        ebx
 005399BE    pop        ecx
 005399BF    pop        ebp
 005399C0    ret
*}
end;

//005399E0
//constructor TZInterbase6Connection.Create(?:TZInterbase6Connection; _Dv__:Boolean; ?:TZInterbase6Driver; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005399E0    push       ebp
 005399E1    mov        ebp,esp
 005399E3    push       ecx
 005399E4    mov        ecx,5
 005399E9    push       0
 005399EB    push       0
 005399ED    dec        ecx
<005399EE    jne        005399E9
 005399F0    push       ecx
 005399F1    xchg       ecx,dword ptr [ebp-4]
 005399F4    push       ebx
 005399F5    push       esi
 005399F6    push       edi
 005399F7    test       dl,dl
>005399F9    je         00539A03
 005399FB    add        esp,0FFFFFFF0
 005399FE    call       @ClassCreate
 00539A03    mov        dword ptr [ebp-8],ecx
 00539A06    mov        byte ptr [ebp-1],dl
 00539A09    mov        ebx,eax
 00539A0B    mov        esi,dword ptr [ebp+8]
 00539A0E    mov        edi,dword ptr [ebp+24]
 00539A11    mov        eax,dword ptr [ebp-8]
 00539A14    call       @IntfAddRef
 00539A19    mov        eax,dword ptr [ebp+20]
 00539A1C    call       @IntfAddRef
 00539A21    xor        eax,eax
 00539A23    push       ebp
 00539A24    push       539BC2
 00539A29    push       dword ptr fs:[eax]
 00539A2C    mov        dword ptr fs:[eax],esp
 00539A2F    push       edi
 00539A30    mov        eax,dword ptr [ebp+1C]
 00539A33    push       eax
 00539A34    mov        eax,dword ptr [ebp+18]
 00539A37    push       eax
 00539A38    mov        eax,dword ptr [ebp+14]
 00539A3B    push       eax
 00539A3C    mov        eax,dword ptr [ebp+10]
 00539A3F    push       eax
 00539A40    mov        eax,dword ptr [ebp+0C]
 00539A43    push       eax
 00539A44    push       esi
 00539A45    push       edi
 00539A46    push       esi
 00539A47    mov        ecx,ebx
 00539A49    mov        dl,1
 00539A4B    mov        eax,[0052B060]; TZInterbase6DatabaseMetadata
 00539A50    call       TZInterbase6DatabaseMetadata.Create; TZInterbase6DatabaseMetadata.Create
 00539A55    push       eax
 00539A56    mov        ecx,dword ptr [ebp-8]
 00539A59    xor        edx,edx
 00539A5B    mov        eax,ebx
 00539A5D    call       004DDD88
 00539A62    lea        ecx,[ebp-18]
 00539A65    mov        edx,539BF4; 'hard_commit'
 00539A6A    mov        eax,esi
 00539A6C    call       TStrings.GetValue
 00539A71    mov        eax,dword ptr [ebp-18]
 00539A74    call       004BEFC0
 00539A79    mov        byte ptr [ebx+98],al; TZInterbase6Connection.?f98:byte
 00539A7F    lea        eax,[ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539A85    mov        edx,dword ptr [ebp+20]
 00539A88    call       @IntfCopy
 00539A8D    cmp        dword ptr [ebx+14],0; TZInterbase6Connection.?f14:dword
>00539A91    jne        00539A9A
 00539A93    mov        dword ptr [ebx+14],0BEA; TZInterbase6Connection.?f14:dword
 00539A9A    lea        edx,[ebp-1C]
 00539A9D    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539AA3    mov        ecx,dword ptr [eax]
 00539AA5    call       dword ptr [ecx+0C]
 00539AA8    mov        eax,dword ptr [ebp-1C]
 00539AAB    mov        edx,539C08; 'interbase-5'
 00539AB0    call       @LStrCmp
>00539AB5    jne        00539ABF
 00539AB7    mov        word ptr [ebx+34],1; TZInterbase6Connection.?f34:Integer
>00539ABD    jmp        00539AC5
 00539ABF    mov        word ptr [ebx+34],3; TZInterbase6Connection.?f34:Integer
 00539AC5    lea        ecx,[ebp-20]
 00539AC8    mov        edx,539C1C; 'dialect'
 00539ACD    mov        eax,esi
 00539ACF    call       TStrings.GetValue
 00539AD4    mov        eax,dword ptr [ebp-20]
 00539AD7    lea        edx,[ebp-14]
 00539ADA    call       Trim
 00539ADF    cmp        dword ptr [ebp-14],0
>00539AE3    je         00539B01
 00539AE5    movzx      edx,word ptr [ebx+34]; TZInterbase6Connection.?f34:Integer
 00539AE9    mov        eax,dword ptr [ebp-14]
 00539AEC    call       StrToIntDef
 00539AF1    cmp        eax,0FFFF
>00539AF6    jbe        00539AFD
 00539AF8    call       @BoundErr
 00539AFD    mov        word ptr [ebx+34],ax; TZInterbase6Connection.?f34:Integer
 00539B01    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539B04    mov        ecx,dword ptr [ebp+10]
 00539B07    mov        edx,539C2C; 'isc_dpb_username'
 00539B0C    call       TStrings.SetValue
 00539B11    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539B14    mov        ecx,dword ptr [ebp+0C]
 00539B17    mov        edx,539C48; 'isc_dpb_password'
 00539B1C    call       TStrings.SetValue
 00539B21    lea        ecx,[ebp-24]
 00539B24    mov        edx,539C64; 'codepage'
 00539B29    mov        eax,esi
 00539B2B    call       TStrings.GetValue
 00539B30    mov        eax,dword ptr [ebp-24]
 00539B33    lea        edx,[ebp-10]
 00539B36    call       Trim
 00539B3B    cmp        dword ptr [ebp-10],0
>00539B3F    je         00539B5C
 00539B41    lea        edx,[ebp-28]
 00539B44    mov        eax,dword ptr [ebp-10]
 00539B47    call       UpperCase
 00539B4C    mov        ecx,dword ptr [ebp-28]
 00539B4F    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539B52    mov        edx,539C78; 'isc_dpb_lc_ctype'
 00539B57    call       TStrings.SetValue
 00539B5C    lea        ecx,[ebp-2C]
 00539B5F    mov        edx,539C94; 'rolename'
 00539B64    mov        eax,esi
 00539B66    call       TStrings.GetValue
 00539B6B    mov        eax,dword ptr [ebp-2C]
 00539B6E    lea        edx,[ebp-0C]
 00539B71    call       Trim
 00539B76    cmp        dword ptr [ebp-0C],0
>00539B7A    je         00539B97
 00539B7C    lea        edx,[ebp-30]
 00539B7F    mov        eax,dword ptr [ebp-0C]
 00539B82    call       UpperCase
 00539B87    mov        ecx,dword ptr [ebp-30]
 00539B8A    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539B8D    mov        edx,539CA8; 'isc_dpb_sql_role_name'
 00539B92    call       TStrings.SetValue
 00539B97    xor        eax,eax
 00539B99    pop        edx
 00539B9A    pop        ecx
 00539B9B    pop        ecx
 00539B9C    mov        dword ptr fs:[eax],edx
 00539B9F    push       539BC9
 00539BA4    lea        eax,[ebp-30]
 00539BA7    mov        edx,0A
 00539BAC    call       @LStrArrayClr
 00539BB1    lea        eax,[ebp-8]
 00539BB4    call       @IntfClear
 00539BB9    lea        eax,[ebp+20]
 00539BBC    call       @IntfClear
 00539BC1    ret
<00539BC2    jmp        @HandleFinally
<00539BC7    jmp        00539BA4
 00539BC9    mov        eax,ebx
 00539BCB    cmp        byte ptr [ebp-1],0
>00539BCF    je         00539BE0
 00539BD1    call       @AfterConstruction
 00539BD6    pop        dword ptr fs:[0]
 00539BDD    add        esp,0C
 00539BE0    mov        eax,ebx
 00539BE2    pop        edi
 00539BE3    pop        esi
 00539BE4    pop        ebx
 00539BE5    mov        esp,ebp
 00539BE7    pop        ebp
 00539BE8    ret        20
*}
//end;

//00539CC0
//procedure sub_00539CC0(?:?; ?:?);
//begin
{*
 00539CC0    push       ebp
 00539CC1    mov        ebp,esp
 00539CC3    push       ebx
 00539CC4    push       esi
 00539CC5    push       edi
 00539CC6    mov        edi,ecx
 00539CC8    mov        esi,edx
 00539CCA    mov        ebx,eax
 00539CCC    mov        eax,ebx
 00539CCE    mov        edx,dword ptr [eax]
 00539CD0    call       dword ptr [edx+44]; TZInterbase6Connection.sub_004DE1AC
 00539CD3    test       al,al
>00539CD5    je         00539CDE
 00539CD7    mov        eax,ebx
 00539CD9    mov        edx,dword ptr [eax]
 00539CDB    call       dword ptr [edx+3C]; TZInterbase6Connection.sub_00539D90
 00539CDE    push       esi
 00539CDF    mov        ecx,ebx
 00539CE1    test       ecx,ecx
>00539CE3    je         00539CE8
 00539CE5    sub        ecx,0FFFFFFD0
 00539CE8    mov        dl,1
 00539CEA    mov        eax,[00528624]; TZInterbase6Statement
 00539CEF    call       TZInterbase6Statement.Create; TZInterbase6Statement.Create
 00539CF4    mov        edx,eax
 00539CF6    test       edx,edx
>00539CF8    je         00539CFD
 00539CFA    sub        edx,0FFFFFFBC
 00539CFD    mov        eax,edi
 00539CFF    call       @IntfCopy
 00539D04    pop        edi
 00539D05    pop        esi
 00539D06    pop        ebx
 00539D07    pop        ebp
 00539D08    ret
*}
//end;

//00539D0C
destructor TZInterbase6Connection.Destroy;
begin
{*
 00539D0C    push       ebp
 00539D0D    mov        ebp,esp
 00539D0F    push       ebx
 00539D10    push       esi
 00539D11    call       @BeforeDestruction
 00539D16    mov        ebx,edx
 00539D18    mov        esi,eax
 00539D1A    cmp        byte ptr [esi+2B],0; TZInterbase6Connection.?f2B:byte
>00539D1E    jne        00539D27
 00539D20    mov        eax,esi
 00539D22    mov        edx,dword ptr [eax]
 00539D24    call       dword ptr [edx+40]; TZInterbase6Connection.sub_00539710
 00539D27    mov        edx,ebx
 00539D29    and        dl,0FC
 00539D2C    mov        eax,esi
 00539D2E    call       TZAbstractConnection.Destroy
 00539D33    test       bl,bl
>00539D35    jle        00539D3E
 00539D37    mov        eax,esi
 00539D39    call       @ClassDestroy
 00539D3E    pop        esi
 00539D3F    pop        ebx
 00539D40    pop        ebp
 00539D41    ret
*}
end;

//00539D44
//function sub_00539D44(?:dword):?;
//begin
{*
 00539D44    add        eax,38
 00539D47    ret
*}
//end;

//00539D50
//procedure sub_00539D50(?:dword; ?:?);
//begin
{*
 00539D50    push       ebp
 00539D51    mov        ebp,esp
 00539D53    push       ebx
 00539D54    push       esi
 00539D55    mov        esi,edx
 00539D57    mov        ebx,eax
 00539D59    mov        eax,esi
 00539D5B    mov        edx,dword ptr [ebx+94]
 00539D61    call       @IntfCopy
 00539D66    pop        esi
 00539D67    pop        ebx
 00539D68    pop        ebp
 00539D69    ret
*}
//end;

//00539D90
procedure sub_00539D90;
begin
{*
 00539D90    push       ebp
 00539D91    mov        ebp,esp
 00539D93    add        esp,0FFFFFDC0
 00539D99    push       ebx
 00539D9A    push       esi
 00539D9B    xor        edx,edx
 00539D9D    mov        dword ptr [ebp-23C],edx
 00539DA3    mov        dword ptr [ebp-240],edx
 00539DA9    mov        dword ptr [ebp-220],edx
 00539DAF    mov        dword ptr [ebp-238],edx
 00539DB5    mov        dword ptr [ebp-234],edx
 00539DBB    mov        dword ptr [ebp-21C],edx
 00539DC1    mov        dword ptr [ebp-218],edx
 00539DC7    mov        dword ptr [ebp-214],edx
 00539DCD    mov        dword ptr [ebp-20C],edx
 00539DD3    mov        dword ptr [ebp-210],edx
 00539DD9    mov        ebx,eax
 00539DDB    xor        eax,eax
 00539DDD    push       ebp
 00539DDE    push       53A0C2
 00539DE3    push       dword ptr fs:[eax]
 00539DE6    mov        dword ptr fs:[eax],esp
 00539DE9    cmp        byte ptr [ebx+2B],0; TZInterbase6Connection.?f2B:byte
>00539DED    je         0053A094
 00539DF3    cmp        byte ptr [ebx+2A],1; TZInterbase6Connection.?f2A:byte
>00539DF7    jne        00539E0F
 00539DF9    mov        ecx,53A0D8; 'Isolation level do not capable'
 00539DFE    mov        dl,1
 00539E00    mov        eax,[004C6D20]; EZSQLException
 00539E05    call       EZSQLException.Create; EZSQLException.Create
 00539E0A    call       @RaiseExcept
 00539E0F    lea        ecx,[ebx+34]; TZInterbase6Connection.?f34:Integer
 00539E12    lea        edx,[ebp-6]
 00539E15    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539E18    call       00532420
 00539E1D    mov        dword ptr [ebp-4],eax
 00539E20    cmp        dword ptr [ebx+10],0; TZInterbase6Connection.?f10:String
>00539E24    je         00539EA5
 00539E26    mov        esi,dword ptr [ebx+14]; TZInterbase6Connection.?f14:dword
 00539E29    cmp        esi,0BEA
>00539E2F    je         00539E77
 00539E31    push       dword ptr [ebx+10]; TZInterbase6Connection.?f10:String
 00539E34    push       53A100; '/'
 00539E39    lea        edx,[ebp-210]
 00539E3F    mov        eax,esi
 00539E41    call       IntToStr
 00539E46    push       dword ptr [ebp-210]
 00539E4C    push       53A10C; ':'
 00539E51    push       dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 00539E54    lea        eax,[ebp-20C]
 00539E5A    mov        edx,5
 00539E5F    call       @LStrCatN
 00539E64    mov        edx,dword ptr [ebp-20C]
 00539E6A    lea        eax,[ebp-207]
 00539E70    call       StrPCopy
>00539E75    jmp        00539EB3
 00539E77    push       dword ptr [ebx+10]; TZInterbase6Connection.?f10:String
 00539E7A    push       53A10C; ':'
 00539E7F    push       dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 00539E82    lea        eax,[ebp-214]
 00539E88    mov        edx,3
 00539E8D    call       @LStrCatN
 00539E92    mov        edx,dword ptr [ebp-214]
 00539E98    lea        eax,[ebp-207]
 00539E9E    call       StrPCopy
>00539EA3    jmp        00539EB3
 00539EA5    mov        edx,dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 00539EA8    lea        eax,[ebp-207]
 00539EAE    call       StrPCopy
 00539EB3    xor        eax,eax
 00539EB5    push       ebp
 00539EB6    push       53A08D
 00539EBB    push       dword ptr fs:[eax]
 00539EBE    mov        dword ptr fs:[eax],esp
 00539EC1    lea        ecx,[ebp-218]
 00539EC7    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539ECA    mov        edx,53A118; 'createNewDatabase'
 00539ECF    call       TStrings.GetValue
 00539ED4    cmp        dword ptr [ebp-218],0
>00539EDB    je         00539F7F
 00539EE1    lea        ecx,[ebp-21C]
 00539EE7    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539EEA    mov        edx,53A118; 'createNewDatabase'
 00539EEF    call       TStrings.GetValue
 00539EF4    mov        edx,dword ptr [ebp-21C]
 00539EFA    mov        eax,ebx
 00539EFC    call       0053A570
 00539F01    lea        eax,[ebp-220]
 00539F07    push       eax
 00539F08    lea        ecx,[ebp-234]
 00539F0E    mov        eax,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 00539F11    mov        edx,53A118; 'createNewDatabase'
 00539F16    call       TStrings.GetValue
 00539F1B    mov        eax,dword ptr [ebp-234]
 00539F21    mov        dword ptr [ebp-230],eax
 00539F27    mov        byte ptr [ebp-22C],0B
 00539F2E    mov        eax,dword ptr [ebx+1C]; TZInterbase6Connection.?f1C:String
 00539F31    mov        dword ptr [ebp-228],eax
 00539F37    mov        byte ptr [ebp-224],0B
 00539F3E    lea        edx,[ebp-230]
 00539F44    mov        ecx,1
 00539F49    mov        eax,53A134; 'CREATE DATABASE \"%s\" AS USER \"%s\"'
 00539F4E    call       Format
 00539F53    mov        eax,dword ptr [ebp-220]
 00539F59    push       eax
 00539F5A    lea        edx,[ebp-238]
 00539F60    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539F66    mov        ecx,dword ptr [eax]
 00539F68    call       dword ptr [ecx+0C]
 00539F6B    mov        ecx,dword ptr [ebp-238]
 00539F71    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00539F76    mov        eax,dword ptr [eax]
 00539F78    xor        edx,edx
 00539F7A    mov        esi,dword ptr [eax]
 00539F7C    call       dword ptr [esi+3C]
 00539F7F    xor        eax,eax
 00539F81    mov        dword ptr [ebx+38],eax; TZInterbase6Connection.?f38:dword
 00539F84    lea        eax,[ebp-207]
 00539F8A    push       eax
 00539F8B    lea        eax,[ebx+38]; TZInterbase6Connection.?f38:dword
 00539F8E    push       eax
 00539F8F    movzx      eax,word ptr [ebp-6]
 00539F93    add        eax,8000
 00539F98    cmp        eax,0FFFF
>00539F9D    jbe        00539FA4
 00539F9F    call       @BoundErr
 00539FA4    add        eax,0FFFF8000
 00539FA9    push       eax
 00539FAA    mov        eax,dword ptr [ebp-4]
 00539FAD    push       eax
 00539FAE    lea        eax,[ebp-207]
 00539FB4    call       StrLen
 00539FB9    mov        ecx,eax
 00539FBB    test       ecx,ecx
>00539FBD    js         00539FCD
 00539FBF    add        ecx,8000
 00539FC5    cmp        ecx,0FFFF
>00539FCB    jbe        00539FD2
 00539FCD    call       @BoundErr
 00539FD2    add        ecx,0FFFF8000
 00539FD8    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539FDB    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539FE1    mov        esi,dword ptr [eax]
 00539FE3    call       dword ptr [esi+18]
 00539FE6    push       0
 00539FE8    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 00539FEB    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 00539FF1    xor        ecx,ecx
 00539FF3    call       00532ED0
 00539FF8    lea        eax,[ebp-23C]
 00539FFE    push       eax
 00539FFF    mov        eax,dword ptr [ebx+18]; TZInterbase6Connection.?f18:String
 0053A002    mov        dword ptr [ebp-230],eax
 0053A008    mov        byte ptr [ebp-22C],0B
 0053A00F    mov        eax,dword ptr [ebx+1C]; TZInterbase6Connection.?f1C:String
 0053A012    mov        dword ptr [ebp-228],eax
 0053A018    mov        byte ptr [ebp-224],0B
 0053A01F    lea        edx,[ebp-230]
 0053A025    mov        ecx,1
 0053A02A    mov        eax,53A160; 'CONNECT TO \"%s\" AS USER \"%s\"'
 0053A02F    call       Format
 0053A034    mov        eax,dword ptr [ebp-23C]
 0053A03A    push       eax
 0053A03B    lea        edx,[ebp-240]
 0053A041    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A047    mov        ecx,dword ptr [eax]
 0053A049    call       dword ptr [ecx+0C]
 0053A04C    mov        ecx,dword ptr [ebp-240]
 0053A052    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053A057    mov        eax,dword ptr [eax]
 0053A059    xor        edx,edx
 0053A05B    mov        esi,dword ptr [eax]
 0053A05D    call       dword ptr [esi+3C]
 0053A060    cmp        byte ptr [ebx+98],0; TZInterbase6Connection.?f98:byte
>0053A067    jne        0053A070
 0053A069    mov        eax,ebx
 0053A06B    mov        edx,dword ptr [eax]
 0053A06D    call       dword ptr [edx+70]; TZInterbase6Connection.sub_0053A334
 0053A070    mov        eax,ebx
 0053A072    call       004DDF38
 0053A077    xor        eax,eax
 0053A079    pop        edx
 0053A07A    pop        ecx
 0053A07B    pop        ecx
 0053A07C    mov        dword ptr fs:[eax],edx
 0053A07F    push       53A094
 0053A084    mov        eax,dword ptr [ebp-4]
 0053A087    call       StrDispose
 0053A08C    ret
<0053A08D    jmp        @HandleFinally
<0053A092    jmp        0053A084
 0053A094    xor        eax,eax
 0053A096    pop        edx
 0053A097    pop        ecx
 0053A098    pop        ecx
 0053A099    mov        dword ptr fs:[eax],edx
 0053A09C    push       53A0C9
 0053A0A1    lea        eax,[ebp-240]
 0053A0A7    mov        edx,4
 0053A0AC    call       @LStrArrayClr
 0053A0B1    lea        eax,[ebp-220]
 0053A0B7    mov        edx,6
 0053A0BC    call       @LStrArrayClr
 0053A0C1    ret
<0053A0C2    jmp        @HandleFinally
<0053A0C7    jmp        0053A0A1
 0053A0C9    pop        esi
 0053A0CA    pop        ebx
 0053A0CB    mov        esp,ebp
 0053A0CD    pop        ebp
 0053A0CE    ret
*}
end;

//0053A180
//procedure sub_0053A180(?:?; ?:?; ?:?);
//begin
{*
 0053A180    push       ebp
 0053A181    mov        ebp,esp
 0053A183    push       ebx
 0053A184    push       esi
 0053A185    push       edi
 0053A186    mov        edi,ecx
 0053A188    mov        esi,edx
 0053A18A    mov        ebx,eax
 0053A18C    mov        eax,ebx
 0053A18E    mov        edx,dword ptr [eax]
 0053A190    call       dword ptr [edx+44]; TZInterbase6Connection.sub_004DE1AC
 0053A193    test       al,al
>0053A195    je         0053A19E
 0053A197    mov        eax,ebx
 0053A199    mov        edx,dword ptr [eax]
 0053A19B    call       dword ptr [edx+3C]; TZInterbase6Connection.sub_00539D90
 0053A19E    push       esi
 0053A19F    push       edi
 0053A1A0    mov        ecx,ebx
 0053A1A2    test       ecx,ecx
>0053A1A4    je         0053A1A9
 0053A1A6    sub        ecx,0FFFFFFD0
 0053A1A9    mov        dl,1
 0053A1AB    mov        eax,[00528710]; TZInterbase6PreparedStatement
 0053A1B0    call       TZInterbase6PreparedStatement.Create; TZInterbase6PreparedStatement.Create
 0053A1B5    mov        edx,eax
 0053A1B7    test       edx,edx
>0053A1B9    je         0053A1BE
 0053A1BB    sub        edx,0FFFFFFA4
 0053A1BE    mov        eax,dword ptr [ebp+8]
 0053A1C1    call       @IntfCopy
 0053A1C6    pop        edi
 0053A1C7    pop        esi
 0053A1C8    pop        ebx
 0053A1C9    pop        ebp
 0053A1CA    ret        4
*}
//end;

//0053A1D0
//procedure sub_0053A1D0(?:?; ?:?; ?:?);
//begin
{*
 0053A1D0    push       ebp
 0053A1D1    mov        ebp,esp
 0053A1D3    push       ebx
 0053A1D4    push       esi
 0053A1D5    push       edi
 0053A1D6    mov        edi,ecx
 0053A1D8    mov        esi,edx
 0053A1DA    mov        ebx,eax
 0053A1DC    mov        eax,ebx
 0053A1DE    mov        edx,dword ptr [eax]
 0053A1E0    call       dword ptr [edx+44]; TZInterbase6Connection.sub_004DE1AC
 0053A1E3    test       al,al
>0053A1E5    je         0053A1EE
 0053A1E7    mov        eax,ebx
 0053A1E9    mov        edx,dword ptr [eax]
 0053A1EB    call       dword ptr [edx+3C]; TZInterbase6Connection.sub_00539D90
 0053A1EE    push       esi
 0053A1EF    push       edi
 0053A1F0    mov        ecx,ebx
 0053A1F2    test       ecx,ecx
>0053A1F4    je         0053A1F9
 0053A1F6    sub        ecx,0FFFFFFD0
 0053A1F9    mov        dl,1
 0053A1FB    mov        eax,[00528880]; TZInterbase6CallableStatement
 0053A200    call       TZInterbase6CallableStatement.Create; TZInterbase6CallableStatement.Create
 0053A205    mov        edx,eax
 0053A207    test       edx,edx
>0053A209    je         0053A20E
 0053A20B    sub        edx,0FFFFFF8C
 0053A20E    mov        eax,dword ptr [ebp+8]
 0053A211    call       @IntfCopy
 0053A216    pop        edi
 0053A217    pop        esi
 0053A218    pop        ebx
 0053A219    pop        ebp
 0053A21A    ret        4
*}
//end;

//0053A220
procedure sub_0053A220;
begin
{*
 0053A220    push       ebp
 0053A221    mov        ebp,esp
 0053A223    push       0
 0053A225    push       ebx
 0053A226    push       esi
 0053A227    mov        ebx,eax
 0053A229    xor        eax,eax
 0053A22B    push       ebp
 0053A22C    push       53A2BB
 0053A231    push       dword ptr fs:[eax]
 0053A234    mov        dword ptr fs:[eax],esp
 0053A237    cmp        dword ptr [ebx+3C],0; TZInterbase6Connection.?f3C:dword
>0053A23B    je         0053A2A5
 0053A23D    cmp        byte ptr [ebx+98],0; TZInterbase6Connection.?f98:byte
>0053A244    je         0053A25E
 0053A246    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053A249    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A24C    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A252    mov        esi,dword ptr [eax]
 0053A254    call       dword ptr [esi+58]
 0053A257    xor        eax,eax
 0053A259    mov        dword ptr [ebx+3C],eax; TZInterbase6Connection.?f3C:dword
>0053A25C    jmp        0053A26F
 0053A25E    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053A261    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A264    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A26A    mov        esi,dword ptr [eax]
 0053A26C    call       dword ptr [esi+5C]
 0053A26F    push       0
 0053A271    mov        cl,4
 0053A273    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A276    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A27C    call       00532ED0
 0053A281    push       53A2D0; 'TRANSACTION ROLLBACK'
 0053A286    lea        edx,[ebp-4]
 0053A289    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A28F    mov        ecx,dword ptr [eax]
 0053A291    call       dword ptr [ecx+0C]
 0053A294    mov        ecx,dword ptr [ebp-4]
 0053A297    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053A29C    mov        eax,dword ptr [eax]
 0053A29E    mov        dl,2
 0053A2A0    mov        ebx,dword ptr [eax]
 0053A2A2    call       dword ptr [ebx+3C]
 0053A2A5    xor        eax,eax
 0053A2A7    pop        edx
 0053A2A8    pop        ecx
 0053A2A9    pop        ecx
 0053A2AA    mov        dword ptr fs:[eax],edx
 0053A2AD    push       53A2C2
 0053A2B2    lea        eax,[ebp-4]
 0053A2B5    call       @LStrClr
 0053A2BA    ret
<0053A2BB    jmp        @HandleFinally
<0053A2C0    jmp        0053A2B2
 0053A2C2    pop        esi
 0053A2C3    pop        ebx
 0053A2C4    pop        ecx
 0053A2C5    pop        ebp
 0053A2C6    ret
*}
end;

//0053A2E8
//function sub_0053A2E8:?;
//begin
{*
 0053A2E8    push       ebp
 0053A2E9    mov        ebp,esp
 0053A2EB    add        esp,0FFFFFBFC
 0053A2F1    push       ebx
 0053A2F2    mov        byte ptr [ebp-1],5
 0053A2F6    push       1
 0053A2F8    lea        edx,[ebp-1]
 0053A2FB    push       edx
 0053A2FC    push       200
 0053A301    lea        edx,[ebp-401]
 0053A307    push       edx
 0053A308    lea        ecx,[eax+38]; TZInterbase6Connection.?f38:dword
 0053A30B    lea        edx,[eax+40]; TZInterbase6Connection.?f40:?
 0053A30E    mov        eax,dword ptr [eax+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A314    mov        ebx,dword ptr [eax]
 0053A316    call       dword ptr [ebx+24]
 0053A319    cmp        eax,14000191
>0053A31E    jl         0053A32C
 0053A320    cmp        eax,14000197
>0053A325    jg         0053A32C
 0053A327    or         eax,0FFFFFFFF
>0053A32A    jmp        0053A32E
 0053A32C    xor        eax,eax
 0053A32E    pop        ebx
 0053A32F    mov        esp,ebp
 0053A331    pop        ebp
 0053A332    ret
*}
//end;

//0053A334
procedure sub_0053A334;
begin
{*
 0053A334    push       ebp
 0053A335    mov        ebp,esp
 0053A337    add        esp,0FFFFFFF4
 0053A33A    push       ebx
 0053A33B    push       esi
 0053A33C    xor        edx,edx
 0053A33E    mov        dword ptr [ebp-0C],edx
 0053A341    mov        ebx,eax
 0053A343    xor        eax,eax
 0053A345    push       ebp
 0053A346    push       53A499
 0053A34B    push       dword ptr fs:[eax]
 0053A34E    mov        dword ptr fs:[eax],esp
 0053A351    xor        eax,eax
 0053A353    mov        dword ptr [ebp-8],eax
 0053A356    mov        dl,1
 0053A358    mov        eax,[0041C8E4]; TStringList
 0053A35D    call       TObject.Create; TStringList.Create
 0053A362    mov        dword ptr [ebp-4],eax
 0053A365    mov        edx,53A4B0; 'isc_tpb_version3'
 0053A36A    mov        eax,dword ptr [ebp-4]
 0053A36D    mov        ecx,dword ptr [eax]
 0053A36F    call       dword ptr [ecx+38]; TStringList.Add
 0053A372    mov        al,byte ptr [ebx+2A]; TZInterbase6Connection.?f2A:byte
 0053A375    sub        al,2
>0053A377    je         0053A383
 0053A379    dec        al
>0053A37B    je         0053A3AC
 0053A37D    dec        al
>0053A37F    je         0053A3C8
>0053A381    jmp        0053A3D7
 0053A383    mov        edx,53A4CC; 'isc_tpb_read_committed'
 0053A388    mov        eax,dword ptr [ebp-4]
 0053A38B    mov        ecx,dword ptr [eax]
 0053A38D    call       dword ptr [ecx+38]; TStringList.Add
 0053A390    mov        edx,53A4EC; 'isc_tpb_rec_version'
 0053A395    mov        eax,dword ptr [ebp-4]
 0053A398    mov        ecx,dword ptr [eax]
 0053A39A    call       dword ptr [ecx+38]; TStringList.Add
 0053A39D    mov        edx,53A508; 'isc_tpb_nowait'
 0053A3A2    mov        eax,dword ptr [ebp-4]
 0053A3A5    mov        ecx,dword ptr [eax]
 0053A3A7    call       dword ptr [ecx+38]; TStringList.Add
>0053A3AA    jmp        0053A3EA
 0053A3AC    mov        edx,53A520; 'isc_tpb_concurrency'
 0053A3B1    mov        eax,dword ptr [ebp-4]
 0053A3B4    mov        ecx,dword ptr [eax]
 0053A3B6    call       dword ptr [ecx+38]; TStringList.Add
 0053A3B9    mov        edx,53A508; 'isc_tpb_nowait'
 0053A3BE    mov        eax,dword ptr [ebp-4]
 0053A3C1    mov        ecx,dword ptr [eax]
 0053A3C3    call       dword ptr [ecx+38]; TStringList.Add
>0053A3C6    jmp        0053A3EA
 0053A3C8    mov        edx,53A53C; 'isc_tpb_consistency'
 0053A3CD    mov        eax,dword ptr [ebp-4]
 0053A3D0    mov        ecx,dword ptr [eax]
 0053A3D2    call       dword ptr [ecx+38]; TStringList.Add
>0053A3D5    jmp        0053A3EA
 0053A3D7    mov        eax,dword ptr [ebp-4]
 0053A3DA    mov        edx,dword ptr [eax]
 0053A3DC    call       dword ptr [edx+44]; TStringList.Clear
 0053A3DF    mov        edx,dword ptr [ebx+24]; TZInterbase6Connection.?f24:dword
 0053A3E2    mov        eax,dword ptr [ebp-4]
 0053A3E5    mov        ecx,dword ptr [eax]
 0053A3E7    call       dword ptr [ecx+40]; TStrings.AddStrings
 0053A3EA    xor        eax,eax
 0053A3EC    push       ebp
 0053A3ED    push       53A47C
 0053A3F2    push       dword ptr fs:[eax]
 0053A3F5    mov        dword ptr fs:[eax],esp
 0053A3F8    lea        edx,[ebx+38]; TZInterbase6Connection.?f38:dword
 0053A3FB    mov        eax,dword ptr [ebp-4]
 0053A3FE    call       005327A8
 0053A403    mov        dword ptr [ebp-8],eax
 0053A406    push       1
 0053A408    mov        eax,dword ptr [ebp-8]
 0053A40B    push       eax
 0053A40C    lea        ecx,[ebx+3C]; TZInterbase6Connection.?f3C:dword
 0053A40F    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A412    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A418    mov        esi,dword ptr [eax]
 0053A41A    call       dword ptr [esi+54]
 0053A41D    push       0
 0053A41F    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A422    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A428    mov        cl,2
 0053A42A    call       00532ED0
 0053A42F    push       53A558; 'TRANSACTION STARTED.'
 0053A434    lea        edx,[ebp-0C]
 0053A437    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A43D    mov        ecx,dword ptr [eax]
 0053A43F    call       dword ptr [ecx+0C]
 0053A442    mov        ecx,dword ptr [ebp-0C]
 0053A445    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053A44A    mov        eax,dword ptr [eax]
 0053A44C    mov        dl,2
 0053A44E    mov        ebx,dword ptr [eax]
 0053A450    call       dword ptr [ebx+3C]
 0053A453    xor        eax,eax
 0053A455    pop        edx
 0053A456    pop        ecx
 0053A457    pop        ecx
 0053A458    mov        dword ptr fs:[eax],edx
 0053A45B    push       53A483
 0053A460    mov        eax,dword ptr [ebp-4]
 0053A463    call       TObject.Free
 0053A468    mov        eax,dword ptr [ebp-8]
 0053A46B    mov        eax,dword ptr [eax+8]
 0053A46E    call       StrDispose
 0053A473    mov        eax,dword ptr [ebp-8]
 0053A476    call       @FreeMem
 0053A47B    ret
<0053A47C    jmp        @HandleFinally
<0053A481    jmp        0053A460
 0053A483    xor        eax,eax
 0053A485    pop        edx
 0053A486    pop        ecx
 0053A487    pop        ecx
 0053A488    mov        dword ptr fs:[eax],edx
 0053A48B    push       53A4A0
 0053A490    lea        eax,[ebp-0C]
 0053A493    call       @LStrClr
 0053A498    ret
<0053A499    jmp        @HandleFinally
<0053A49E    jmp        0053A490
 0053A4A0    pop        esi
 0053A4A1    pop        ebx
 0053A4A2    mov        esp,ebp
 0053A4A4    pop        ebp
 0053A4A5    ret
*}
end;

//0053A570
//procedure sub_0053A570(?:TZInterbase6Connection; ?:AnsiString);
//begin
{*
 0053A570    push       ebp
 0053A571    mov        ebp,esp
 0053A573    add        esp,0FFFFFFF8
 0053A576    push       ebx
 0053A577    push       esi
 0053A578    push       edi
 0053A579    mov        esi,edx
 0053A57B    mov        ebx,eax
 0053A57D    mov        eax,ebx
 0053A57F    mov        edx,dword ptr [eax]
 0053A581    call       dword ptr [edx+40]; TZInterbase6Connection.sub_00539710
 0053A584    xor        eax,eax
 0053A586    mov        dword ptr [ebp-4],eax
 0053A589    xor        eax,eax
 0053A58B    mov        dword ptr [ebp-8],eax
 0053A58E    lea        eax,[ebp-8]
 0053A591    push       eax
 0053A592    push       0
 0053A594    mov        eax,esi
 0053A596    call       @LStrToPChar
 0053A59B    push       eax
 0053A59C    mov        ax,word ptr [ebx+34]; TZInterbase6Connection.?f34:Integer
 0053A5A0    push       eax
 0053A5A1    push       0
 0053A5A3    lea        ecx,[ebp-4]
 0053A5A6    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A5A9    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A5AF    mov        edi,dword ptr [eax]
 0053A5B1    call       dword ptr [edi+80]
 0053A5B7    push       esi
 0053A5B8    mov        cl,3
 0053A5BA    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A5BD    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A5C3    call       00532ED0
 0053A5C8    lea        ecx,[ebp-4]
 0053A5CB    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A5CE    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A5D4    mov        edi,dword ptr [eax]
 0053A5D6    call       dword ptr [edi+1C]
 0053A5D9    push       esi
 0053A5DA    mov        cl,3
 0053A5DC    lea        edx,[ebx+40]; TZInterbase6Connection.?f40:?
 0053A5DF    mov        eax,dword ptr [ebx+94]; TZInterbase6Connection.?f94:IZInterbasePlainDriver
 0053A5E5    call       00532ED0
 0053A5EA    pop        edi
 0053A5EB    pop        esi
 0053A5EC    pop        ebx
 0053A5ED    pop        ecx
 0053A5EE    pop        ecx
 0053A5EF    pop        ebp
 0053A5F0    ret
*}
//end;

//0053A5F4
//procedure sub_0053A5F4(?:?; ?:?; ?:?);
//begin
{*
 0053A5F4    push       ebp
 0053A5F5    mov        ebp,esp
 0053A5F7    push       ebx
 0053A5F8    push       esi
 0053A5F9    push       edi
 0053A5FA    mov        edi,ecx
 0053A5FC    mov        esi,edx
 0053A5FE    mov        ebx,eax
 0053A600    push       esi
 0053A601    push       edi
 0053A602    mov        ecx,ebx
 0053A604    test       ecx,ecx
>0053A606    je         0053A60B
 0053A608    sub        ecx,0FFFFFFD0
 0053A60B    mov        dl,1
 0053A60D    mov        eax,[00538FC0]; TZInterbase6Sequence
 0053A612    call       TZPostgreSQLSequence.Create; TZInterbase6Sequence.Create
 0053A617    mov        edx,eax
 0053A619    test       edx,edx
>0053A61B    je         0053A620
 0053A61D    sub        edx,0FFFFFFE8
 0053A620    mov        eax,dword ptr [ebp+8]
 0053A623    call       @IntfCopy
 0053A628    pop        edi
 0053A629    pop        esi
 0053A62A    pop        ebx
 0053A62B    pop        ebp
 0053A62C    ret        4
*}
//end;

//0053A630
//procedure sub_0053A630(?:?; ?:?);
//begin
{*
 0053A630    push       ebp
 0053A631    mov        ebp,esp
 0053A633    push       0
 0053A635    push       0
 0053A637    push       ebx
 0053A638    push       esi
 0053A639    push       edi
 0053A63A    mov        ebx,ecx
 0053A63C    mov        edi,edx
 0053A63E    mov        esi,eax
 0053A640    xor        eax,eax
 0053A642    push       ebp
 0053A643    push       53A6CF
 0053A648    push       dword ptr fs:[eax]
 0053A64B    mov        dword ptr fs:[eax],esp
 0053A64E    mov        ecx,ebx
 0053A650    mov        edx,edi
 0053A652    mov        eax,esi
 0053A654    call       004CF1FC
 0053A659    cmp        dword ptr [ebx],0
>0053A65C    je         0053A6B4
 0053A65E    lea        edx,[ebp-4]
 0053A661    mov        eax,dword ptr [ebx]
 0053A663    call       UpperCase
 0053A668    mov        edx,dword ptr [ebp-4]
 0053A66B    mov        eax,53A6E8; 'FROM'
 0053A670    call       @LStrPos
 0053A675    mov        esi,eax
 0053A677    test       esi,esi
>0053A679    jle        0053A6A8
 0053A67B    lea        eax,[ebp-8]
 0053A67E    push       eax
 0053A67F    mov        ecx,esi
 0053A681    add        ecx,3
>0053A684    jno        0053A68B
 0053A686    call       @IntOver
 0053A68B    mov        eax,dword ptr [ebx]
 0053A68D    mov        edx,1
 0053A692    call       @LStrCopy
 0053A697    mov        edx,dword ptr [ebp-8]
 0053A69A    mov        eax,ebx
 0053A69C    mov        ecx,53A6F8; ' RDB$DATABASE'
 0053A6A1    call       @LStrCat3
>0053A6A6    jmp        0053A6B4
 0053A6A8    mov        eax,ebx
 0053A6AA    mov        edx,53A710; ' FROM RDB$DATABASE'
 0053A6AF    call       @LStrCat
 0053A6B4    xor        eax,eax
 0053A6B6    pop        edx
 0053A6B7    pop        ecx
 0053A6B8    pop        ecx
 0053A6B9    mov        dword ptr fs:[eax],edx
 0053A6BC    push       53A6D6
 0053A6C1    lea        eax,[ebp-8]
 0053A6C4    mov        edx,2
 0053A6C9    call       @LStrArrayClr
 0053A6CE    ret
<0053A6CF    jmp        @HandleFinally
<0053A6D4    jmp        0053A6C1
 0053A6D6    pop        edi
 0053A6D7    pop        esi
 0053A6D8    pop        ebx
 0053A6D9    pop        ecx
 0053A6DA    pop        ecx
 0053A6DB    pop        ebp
 0053A6DC    ret
*}
//end;

//0053A724
procedure sub_0053A724;
begin
{*
 0053A724    push       ebp
 0053A725    mov        ebp,esp
 0053A727    add        esp,0FFFFFFD4
 0053A72A    push       ebx
 0053A72B    push       esi
 0053A72C    xor        edx,edx
 0053A72E    mov        dword ptr [ebp-14],edx
 0053A731    mov        dword ptr [ebp-28],edx
 0053A734    mov        dword ptr [ebp-2C],edx
 0053A737    mov        dword ptr [ebp-0C],edx
 0053A73A    mov        dword ptr [ebp-10],edx
 0053A73D    mov        ebx,eax
 0053A73F    xor        eax,eax
 0053A741    push       ebp
 0053A742    push       53A813
 0053A747    push       dword ptr fs:[eax]
 0053A74A    mov        dword ptr fs:[eax],esp
 0053A74D    lea        edx,[ebp-0C]
 0053A750    mov        eax,dword ptr [ebx+14]; TZInterbase6Sequence.?f14:IZConnection
 0053A753    mov        ecx,dword ptr [eax]
 0053A755    call       dword ptr [ecx+0C]
 0053A758    lea        eax,[ebp-14]
 0053A75B    push       eax
 0053A75C    lea        edx,[ebp-28]
 0053A75F    mov        eax,ebx
 0053A761    mov        ecx,dword ptr [eax]
 0053A763    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053A765    mov        eax,dword ptr [ebp-28]
 0053A768    mov        dword ptr [ebp-24],eax
 0053A76B    mov        byte ptr [ebp-20],0B
 0053A76F    lea        edx,[ebp-2C]
 0053A772    mov        eax,ebx
 0053A774    mov        ecx,dword ptr [eax]
 0053A776    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053A778    mov        eax,dword ptr [ebp-2C]
 0053A77B    mov        dword ptr [ebp-1C],eax
 0053A77E    mov        byte ptr [ebp-18],0B
 0053A782    lea        edx,[ebp-24]
 0053A785    mov        ecx,1
 0053A78A    mov        eax,53A830; 'SELECT GEN_ID(\"%s\", 0) FROM rdb$generators WHERE rdb$generators.rdb$generator_name = '%s''
 0053A78F    call       Format
 0053A794    mov        edx,dword ptr [ebp-14]
 0053A797    lea        ecx,[ebp-10]
 0053A79A    mov        eax,dword ptr [ebp-0C]
 0053A79D    mov        esi,dword ptr [eax]
 0053A79F    call       dword ptr [esi+0C]
 0053A7A2    mov        eax,dword ptr [ebp-10]
 0053A7A5    mov        edx,dword ptr [eax]
 0053A7A7    call       dword ptr [edx+0C]
 0053A7AA    test       al,al
>0053A7AC    je         0053A7C3
 0053A7AE    mov        edx,1
 0053A7B3    mov        eax,dword ptr [ebp-10]
 0053A7B6    mov        ecx,dword ptr [eax]
 0053A7B8    call       dword ptr [ecx+38]
 0053A7BB    mov        dword ptr [ebp-8],eax
 0053A7BE    mov        dword ptr [ebp-4],edx
>0053A7C1    jmp        0053A7D0
 0053A7C3    mov        eax,ebx
 0053A7C5    call       004DE300
 0053A7CA    mov        dword ptr [ebp-8],eax
 0053A7CD    mov        dword ptr [ebp-4],edx
 0053A7D0    mov        eax,dword ptr [ebp-10]
 0053A7D3    mov        edx,dword ptr [eax]
 0053A7D5    call       dword ptr [edx+10]
 0053A7D8    mov        eax,dword ptr [ebp-0C]
 0053A7DB    mov        edx,dword ptr [eax]
 0053A7DD    call       dword ptr [edx+14]
 0053A7E0    xor        eax,eax
 0053A7E2    pop        edx
 0053A7E3    pop        ecx
 0053A7E4    pop        ecx
 0053A7E5    mov        dword ptr fs:[eax],edx
 0053A7E8    push       53A81A
 0053A7ED    lea        eax,[ebp-2C]
 0053A7F0    mov        edx,2
 0053A7F5    call       @LStrArrayClr
 0053A7FA    lea        eax,[ebp-14]
 0053A7FD    call       @LStrClr
 0053A802    lea        eax,[ebp-10]
 0053A805    call       @IntfClear
 0053A80A    lea        eax,[ebp-0C]
 0053A80D    call       @IntfClear
 0053A812    ret
<0053A813    jmp        @HandleFinally
<0053A818    jmp        0053A7ED
 0053A81A    mov        eax,dword ptr [ebp-8]
 0053A81D    mov        edx,dword ptr [ebp-4]
 0053A820    pop        esi
 0053A821    pop        ebx
 0053A822    mov        esp,ebp
 0053A824    pop        ebp
 0053A825    ret
*}
end;

//0053A88C
//procedure sub_0053A88C(?:?);
//begin
{*
 0053A88C    push       ebp
 0053A88D    mov        ebp,esp
 0053A88F    add        esp,0FFFFFFF4
 0053A892    push       ebx
 0053A893    push       esi
 0053A894    xor        ecx,ecx
 0053A896    mov        dword ptr [ebp-0C],ecx
 0053A899    mov        esi,edx
 0053A89B    mov        ebx,eax
 0053A89D    xor        eax,eax
 0053A89F    push       ebp
 0053A8A0    push       53A8E4
 0053A8A5    push       dword ptr fs:[eax]
 0053A8A8    mov        dword ptr fs:[eax],esp
 0053A8AB    push       esi
 0053A8AC    lea        edx,[ebp-0C]
 0053A8AF    mov        eax,ebx
 0053A8B1    mov        ecx,dword ptr [eax]
 0053A8B3    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053A8B5    mov        eax,dword ptr [ebp-0C]
 0053A8B8    mov        dword ptr [ebp-8],eax
 0053A8BB    mov        byte ptr [ebp-4],0B
 0053A8BF    lea        edx,[ebp-8]
 0053A8C2    xor        ecx,ecx
 0053A8C4    mov        eax,53A8FC; ' GEN_ID(\"%s\", 0) '
 0053A8C9    call       Format
 0053A8CE    xor        eax,eax
 0053A8D0    pop        edx
 0053A8D1    pop        ecx
 0053A8D2    pop        ecx
 0053A8D3    mov        dword ptr fs:[eax],edx
 0053A8D6    push       53A8EB
 0053A8DB    lea        eax,[ebp-0C]
 0053A8DE    call       @LStrClr
 0053A8E3    ret
<0053A8E4    jmp        @HandleFinally
<0053A8E9    jmp        0053A8DB
 0053A8EB    pop        esi
 0053A8EC    pop        ebx
 0053A8ED    mov        esp,ebp
 0053A8EF    pop        ebp
 0053A8F0    ret
*}
//end;

//0053A910
procedure sub_0053A910;
begin
{*
 0053A910    push       ebp
 0053A911    mov        ebp,esp
 0053A913    add        esp,0FFFFFFCC
 0053A916    push       ebx
 0053A917    push       esi
 0053A918    xor        edx,edx
 0053A91A    mov        dword ptr [ebp-14],edx
 0053A91D    mov        dword ptr [ebp-30],edx
 0053A920    mov        dword ptr [ebp-34],edx
 0053A923    mov        dword ptr [ebp-0C],edx
 0053A926    mov        dword ptr [ebp-10],edx
 0053A929    mov        ebx,eax
 0053A92B    xor        eax,eax
 0053A92D    push       ebp
 0053A92E    push       53AA0D
 0053A933    push       dword ptr fs:[eax]
 0053A936    mov        dword ptr fs:[eax],esp
 0053A939    lea        edx,[ebp-0C]
 0053A93C    mov        eax,dword ptr [ebx+14]; TZInterbase6Sequence.?f14:IZConnection
 0053A93F    mov        ecx,dword ptr [eax]
 0053A941    call       dword ptr [ecx+0C]
 0053A944    lea        eax,[ebp-14]
 0053A947    push       eax
 0053A948    lea        edx,[ebp-30]
 0053A94B    mov        eax,ebx
 0053A94D    mov        ecx,dword ptr [eax]
 0053A94F    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053A951    mov        eax,dword ptr [ebp-30]
 0053A954    mov        dword ptr [ebp-2C],eax
 0053A957    mov        byte ptr [ebp-28],0B
 0053A95B    mov        eax,ebx
 0053A95D    mov        edx,dword ptr [eax]
 0053A95F    call       dword ptr [edx+4]; TZInterbase6Sequence.sub_004DE2FC
 0053A962    mov        dword ptr [ebp-24],eax
 0053A965    mov        byte ptr [ebp-20],0
 0053A969    lea        edx,[ebp-34]
 0053A96C    mov        eax,ebx
 0053A96E    mov        ecx,dword ptr [eax]
 0053A970    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053A972    mov        eax,dword ptr [ebp-34]
 0053A975    mov        dword ptr [ebp-1C],eax
 0053A978    mov        byte ptr [ebp-18],0B
 0053A97C    lea        edx,[ebp-2C]
 0053A97F    mov        ecx,2
 0053A984    mov        eax,53AA28; 'SELECT GEN_ID(\"%s\", %d) FROM rdb$generators WHERE rdb$generators.rdb$generator_name = '%s''
 0053A989    call       Format
 0053A98E    mov        edx,dword ptr [ebp-14]
 0053A991    lea        ecx,[ebp-10]
 0053A994    mov        eax,dword ptr [ebp-0C]
 0053A997    mov        esi,dword ptr [eax]
 0053A999    call       dword ptr [esi+0C]
 0053A99C    mov        eax,dword ptr [ebp-10]
 0053A99F    mov        edx,dword ptr [eax]
 0053A9A1    call       dword ptr [edx+0C]
 0053A9A4    test       al,al
>0053A9A6    je         0053A9BD
 0053A9A8    mov        edx,1
 0053A9AD    mov        eax,dword ptr [ebp-10]
 0053A9B0    mov        ecx,dword ptr [eax]
 0053A9B2    call       dword ptr [ecx+38]
 0053A9B5    mov        dword ptr [ebp-8],eax
 0053A9B8    mov        dword ptr [ebp-4],edx
>0053A9BB    jmp        0053A9CA
 0053A9BD    mov        eax,ebx
 0053A9BF    call       004DE31C
 0053A9C4    mov        dword ptr [ebp-8],eax
 0053A9C7    mov        dword ptr [ebp-4],edx
 0053A9CA    mov        eax,dword ptr [ebp-10]
 0053A9CD    mov        edx,dword ptr [eax]
 0053A9CF    call       dword ptr [edx+10]
 0053A9D2    mov        eax,dword ptr [ebp-0C]
 0053A9D5    mov        edx,dword ptr [eax]
 0053A9D7    call       dword ptr [edx+14]
 0053A9DA    xor        eax,eax
 0053A9DC    pop        edx
 0053A9DD    pop        ecx
 0053A9DE    pop        ecx
 0053A9DF    mov        dword ptr fs:[eax],edx
 0053A9E2    push       53AA14
 0053A9E7    lea        eax,[ebp-34]
 0053A9EA    mov        edx,2
 0053A9EF    call       @LStrArrayClr
 0053A9F4    lea        eax,[ebp-14]
 0053A9F7    call       @LStrClr
 0053A9FC    lea        eax,[ebp-10]
 0053A9FF    call       @IntfClear
 0053AA04    lea        eax,[ebp-0C]
 0053AA07    call       @IntfClear
 0053AA0C    ret
<0053AA0D    jmp        @HandleFinally
<0053AA12    jmp        0053A9E7
 0053AA14    mov        eax,dword ptr [ebp-8]
 0053AA17    mov        edx,dword ptr [ebp-4]
 0053AA1A    pop        esi
 0053AA1B    pop        ebx
 0053AA1C    mov        esp,ebp
 0053AA1E    pop        ebp
 0053AA1F    ret
*}
end;

//0053AA84
//procedure sub_0053AA84(?:?);
//begin
{*
 0053AA84    push       ebp
 0053AA85    mov        ebp,esp
 0053AA87    add        esp,0FFFFFFEC
 0053AA8A    push       ebx
 0053AA8B    push       esi
 0053AA8C    xor        ecx,ecx
 0053AA8E    mov        dword ptr [ebp-14],ecx
 0053AA91    mov        esi,edx
 0053AA93    mov        ebx,eax
 0053AA95    xor        eax,eax
 0053AA97    push       ebp
 0053AA98    push       53AAED
 0053AA9D    push       dword ptr fs:[eax]
 0053AAA0    mov        dword ptr fs:[eax],esp
 0053AAA3    push       esi
 0053AAA4    lea        edx,[ebp-14]
 0053AAA7    mov        eax,ebx
 0053AAA9    mov        ecx,dword ptr [eax]
 0053AAAB    call       dword ptr [ecx]; TZInterbase6Sequence.sub_004DE2E4
 0053AAAD    mov        eax,dword ptr [ebp-14]
 0053AAB0    mov        dword ptr [ebp-10],eax
 0053AAB3    mov        byte ptr [ebp-0C],0B
 0053AAB7    mov        eax,ebx
 0053AAB9    mov        edx,dword ptr [eax]
 0053AABB    call       dword ptr [edx+4]; TZInterbase6Sequence.sub_004DE2FC
 0053AABE    mov        dword ptr [ebp-8],eax
 0053AAC1    mov        byte ptr [ebp-4],0
 0053AAC5    lea        edx,[ebp-10]
 0053AAC8    mov        ecx,1
 0053AACD    mov        eax,53AB04; ' GEN_ID(\"%s\", %d) '
 0053AAD2    call       Format
 0053AAD7    xor        eax,eax
 0053AAD9    pop        edx
 0053AADA    pop        ecx
 0053AADB    pop        ecx
 0053AADC    mov        dword ptr fs:[eax],edx
 0053AADF    push       53AAF4
 0053AAE4    lea        eax,[ebp-14]
 0053AAE7    call       @LStrClr
 0053AAEC    ret
<0053AAED    jmp        @HandleFinally
<0053AAF2    jmp        0053AAE4
 0053AAF4    pop        esi
 0053AAF5    pop        ebx
 0053AAF6    mov        esp,ebp
 0053AAF8    pop        ebp
 0053AAF9    ret
*}
//end;

Initialization
//0053AB78
{*
 0053AB78    push       ebp
 0053AB79    mov        ebp,esp
 0053AB7B    xor        eax,eax
 0053AB7D    push       ebp
 0053AB7E    push       53ABD1
 0053AB83    push       dword ptr fs:[eax]
 0053AB86    mov        dword ptr fs:[eax],esp
 0053AB89    sub        dword ptr ds:[61EA78],1
>0053AB90    jae        0053ABC3
 0053AB92    mov        dl,1
 0053AB94    mov        eax,[00538A48]; TZInterbase6Driver
 0053AB99    call       TZInterbase6Driver.Create; TZInterbase6Driver.Create
 0053AB9E    mov        edx,eax
 0053ABA0    test       edx,edx
>0053ABA2    je         0053ABA7
 0053ABA4    sub        edx,0FFFFFFEC
 0053ABA7    mov        eax,61EA74; gvar_0061EA74:IInterface
 0053ABAC    call       @IntfCopy
 0053ABB1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053ABB6    mov        eax,dword ptr [eax]
 0053ABB8    mov        edx,dword ptr ds:[61EA74]; gvar_0061EA74:IInterface
 0053ABBE    mov        ecx,dword ptr [eax]
 0053ABC0    call       dword ptr [ecx+20]
 0053ABC3    xor        eax,eax
 0053ABC5    pop        edx
 0053ABC6    pop        ecx
 0053ABC7    pop        ecx
 0053ABC8    mov        dword ptr fs:[eax],edx
 0053ABCB    push       53ABD8
 0053ABD0    ret
<0053ABD1    jmp        @HandleFinally
<0053ABD6    jmp        0053ABD0
 0053ABD8    pop        ebp
 0053ABD9    ret
*}
Finalization
//0053AB18
{*
 0053AB18    push       ebp
 0053AB19    mov        ebp,esp
 0053AB1B    xor        eax,eax
 0053AB1D    push       ebp
 0053AB1E    push       53AB6F
 0053AB23    push       dword ptr fs:[eax]
 0053AB26    mov        dword ptr fs:[eax],esp
 0053AB29    inc        dword ptr ds:[61EA78]
>0053AB2F    jne        0053AB61
 0053AB31    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053AB36    cmp        dword ptr [eax],0
>0053AB39    je         0053AB4D
 0053AB3B    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053AB40    mov        eax,dword ptr [eax]
 0053AB42    mov        edx,dword ptr ds:[61EA74]; gvar_0061EA74:IInterface
 0053AB48    mov        ecx,dword ptr [eax]
 0053AB4A    call       dword ptr [ecx+24]
 0053AB4D    mov        eax,61EA74; gvar_0061EA74:IInterface
 0053AB52    call       @IntfClear
 0053AB57    mov        eax,61EA74; gvar_0061EA74:IInterface
 0053AB5C    call       @IntfClear
 0053AB61    xor        eax,eax
 0053AB63    pop        edx
 0053AB64    pop        ecx
 0053AB65    pop        ecx
 0053AB66    mov        dword ptr fs:[eax],edx
 0053AB69    push       53AB76
 0053AB6E    ret
<0053AB6F    jmp        @HandleFinally
<0053AB74    jmp        0053AB6E
 0053AB76    pop        ebp
 0053AB77    ret
*}
end.