{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZExpression;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZVariant, ZTokenizer, _Unit231;

type
  TZExpressionError = class(Exception)
  end;
  TZExecutionStack = class(TObject)
  public
    f4:TZVariantDynArray;//f4
    f8:dword;//f8
    fC:dword;//fC
    //constructor Create(?:TZExecutionStack; _Dv__:Boolean);
  end;
  TZExpression = class(TInterfacedObject)
  public
    fC:IZTokenizer;//fC
    f10:IZVariablesList;//f10
    f14:IZFunctionsList;//f14
    f18:IZVariantManager;//f18
    f1C:TZExpressionParser;//f1C
    f20:byte;//f20
    destructor Destroy; virtual;
    //constructor Create(?:TZExpression; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00567FAC
//constructor TZExecutionStack.Create(?:TZExecutionStack; _Dv__:Boolean);
//begin
{*
 00567FAC    push       ebp
 00567FAD    mov        ebp,esp
 00567FAF    push       ebx
 00567FB0    push       esi
 00567FB1    push       edi
 00567FB2    test       dl,dl
>00567FB4    je         00567FBE
 00567FB6    add        esp,0FFFFFFF0
 00567FB9    call       @ClassCreate
 00567FBE    mov        ebx,edx
 00567FC0    mov        edi,eax
 00567FC2    mov        esi,64
 00567FC7    mov        dword ptr [edi+0C],esi; TZExecutionStack.?fC:dword
 00567FCA    push       esi
 00567FCB    lea        eax,[edi+4]; TZExecutionStack.?f4:TZVariantDynArray
 00567FCE    mov        ecx,1
 00567FD3    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00567FD9    call       @DynArraySetLength
 00567FDE    add        esp,4
 00567FE1    xor        eax,eax
 00567FE3    mov        dword ptr [edi+8],eax; TZExecutionStack.?f8:dword
 00567FE6    mov        eax,edi
 00567FE8    test       bl,bl
>00567FEA    je         00567FFB
 00567FEC    call       @AfterConstruction
 00567FF1    pop        dword ptr fs:[0]
 00567FF8    add        esp,0C
 00567FFB    mov        eax,edi
 00567FFD    pop        edi
 00567FFE    pop        esi
 00567FFF    pop        ebx
 00568000    pop        ebp
 00568001    ret
*}
//end;

//00568004
//procedure sub_00568004(?:?; ?:?; ?:TZVariant);
//begin
{*
 00568004    push       ebp
 00568005    mov        ebp,esp
 00568007    push       0
 00568009    push       ebx
 0056800A    push       esi
 0056800B    push       edi
 0056800C    mov        edi,ecx
 0056800E    mov        esi,edx
 00568010    mov        ebx,eax
 00568012    xor        eax,eax
 00568014    push       ebp
 00568015    push       56808F
 0056801A    push       dword ptr fs:[eax]
 0056801D    mov        dword ptr fs:[eax],esp
 00568020    cmp        esi,dword ptr [ebx+8]
>00568023    jl         00568046
 00568025    lea        edx,[ebp-4]
 00568028    mov        eax,[0061B330]; ^#122.sResString6:TResStringRec
 0056802D    call       LoadResString
 00568032    mov        ecx,dword ptr [ebp-4]
 00568035    mov        dl,1
 00568037    mov        eax,[00567C80]; TZExpressionError
 0056803C    call       Exception.Create; TZExpressionError.Create
 00568041    call       @RaiseExcept
 00568046    mov        eax,edi
 00568048    mov        edx,dword ptr [ebx+8]
 0056804B    sub        edx,esi
>0056804D    jno        00568054
 0056804F    call       @IntOver
 00568054    sub        edx,1
>00568057    jno        0056805E
 00568059    call       @IntOver
 0056805E    imul       edx,edx,0B
>00568061    jno        00568068
 00568063    call       @IntOver
 00568068    mov        ecx,dword ptr [ebx+4]
 0056806B    lea        edx,[ecx+edx*4]
 0056806E    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00568074    call       @CopyRecord
 00568079    xor        eax,eax
 0056807B    pop        edx
 0056807C    pop        ecx
 0056807D    pop        ecx
 0056807E    mov        dword ptr fs:[eax],edx
 00568081    push       568096
 00568086    lea        eax,[ebp-4]
 00568089    call       @LStrClr
 0056808E    ret
<0056808F    jmp        @HandleFinally
<00568094    jmp        00568086
 00568096    pop        edi
 00568097    pop        esi
 00568098    pop        ebx
 00568099    pop        ecx
 0056809A    pop        ebp
 0056809B    ret
*}
//end;

//005681FC
//constructor TZExpression.Create(?:TZExpression; _Dv__:Boolean);
//begin
{*
 005681FC    push       ebp
 005681FD    mov        ebp,esp
 005681FF    push       ebx
 00568200    push       esi
 00568201    test       dl,dl
>00568203    je         0056820D
 00568205    add        esp,0FFFFFFF0
 00568208    call       @ClassCreate
 0056820D    mov        ebx,edx
 0056820F    mov        esi,eax
 00568211    mov        dl,1
 00568213    mov        eax,[00561FEC]; TZExpressionTokenizer
 00568218    call       TZExpressionTokenizer.Create; TZExpressionTokenizer.Create
 0056821D    mov        edx,eax
 0056821F    test       edx,edx
>00568221    je         00568229
 00568223    sub        edx,0FFFFFBD8
 00568229    lea        eax,[esi+0C]; TZExpression.?fC:IZTokenizer
 0056822C    call       @IntfCopy
 00568231    mov        dl,1
 00568233    mov        eax,[00563D28]; TZVariablesList
 00568238    call       TZVariablesList.Create; TZVariablesList.Create
 0056823D    mov        edx,eax
 0056823F    test       edx,edx
>00568241    je         00568246
 00568243    sub        edx,0FFFFFFF0
 00568246    lea        eax,[esi+10]; TZExpression.?f10:IZVariablesList
 00568249    call       @IntfCopy
 0056824E    mov        dl,1
 00568250    mov        eax,[00565034]; TZDefaultFunctionsList
 00568255    call       TZDefaultFunctionsList.Create; TZDefaultFunctionsList.Create
 0056825A    mov        edx,eax
 0056825C    test       edx,edx
>0056825E    je         00568263
 00568260    sub        edx,0FFFFFFF0
 00568263    lea        eax,[esi+14]; TZExpression.?f14:IZFunctionsList
 00568266    call       @IntfCopy
 0056826B    mov        dl,1
 0056826D    mov        eax,[004C44F8]; TZSoftVariantManager
 00568272    call       TObject.Create; TZSoftVariantManager.Create
 00568277    mov        edx,eax
 00568279    test       edx,edx
>0056827B    je         00568280
 0056827D    sub        edx,0FFFFFFF4
 00568280    lea        eax,[esi+18]; TZExpression.?f18:IZVariantManager
 00568283    call       @IntfCopy
 00568288    mov        ecx,dword ptr [esi+0C]; TZExpression.?fC:IZTokenizer
 0056828B    mov        dl,1
 0056828D    mov        eax,[00562A74]; TZExpressionParser
 00568292    call       TZExpressionParser.Create; TZExpressionParser.Create
 00568297    mov        dword ptr [esi+1C],eax; TZExpression.?f1C:TZExpressionParser
 0056829A    mov        byte ptr [esi+20],1; TZExpression.?f20:byte
 0056829E    mov        eax,esi
 005682A0    test       bl,bl
>005682A2    je         005682B3
 005682A4    call       @AfterConstruction
 005682A9    pop        dword ptr fs:[0]
 005682B0    add        esp,0C
 005682B3    mov        eax,esi
 005682B5    pop        esi
 005682B6    pop        ebx
 005682B7    pop        ebp
 005682B8    ret
*}
//end;

//005682BC
destructor TZExpression.Destroy;
begin
{*
 005682BC    push       ebp
 005682BD    mov        ebp,esp
 005682BF    push       ebx
 005682C0    push       esi
 005682C1    call       @BeforeDestruction
 005682C6    mov        ebx,edx
 005682C8    mov        esi,eax
 005682CA    lea        eax,[esi+0C]; TZExpression.?fC:IZTokenizer
 005682CD    call       @IntfClear
 005682D2    lea        eax,[esi+10]; TZExpression.?f10:IZVariablesList
 005682D5    call       @IntfClear
 005682DA    lea        eax,[esi+14]; TZExpression.?f14:IZFunctionsList
 005682DD    call       @IntfClear
 005682E2    lea        eax,[esi+18]; TZExpression.?f18:IZVariantManager
 005682E5    call       @IntfClear
 005682EA    mov        eax,dword ptr [esi+1C]; TZExpression.?f1C:TZExpressionParser
 005682ED    call       TObject.Free
 005682F2    mov        edx,ebx
 005682F4    and        dl,0FC
 005682F7    mov        eax,esi
 005682F9    call       TObject.Destroy
 005682FE    test       bl,bl
>00568300    jle        00568309
 00568302    mov        eax,esi
 00568304    call       @ClassDestroy
 00568309    pop        esi
 0056830A    pop        ebx
 0056830B    pop        ebp
 0056830C    ret
*}
end;

end.