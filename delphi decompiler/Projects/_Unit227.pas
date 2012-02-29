{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit227;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZPlainAdo, ZPlainDriver, Types;

type
  TZAdoStatement = class(TZAbstractCallableStatement)
  public
    f78:Recordset15;//f78
    f7C:IZPlainDriver;//f7C
    destructor Destroy; virtual;
    //procedure sub_004E5310(?:?; ?:?); virtual;
    //function sub_004E5360(?:?):?; virtual;
    procedure sub_004E5268; virtual;
    //function sub_004E5394(?:?):?; virtual;
    //function sub_004E5768:?; virtual;
    //function sub_004E5614(?:?):?; virtual;
    //constructor Create(?:TZAdoStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;
  TZAdoPreparedStatement = class(TZAdoStatement)
  public
    f80:_Command;//f80
    destructor Destroy; virtual;
    procedure sub_004E5998; virtual;
    //procedure sub_004E59B8(?:?); virtual;
    //procedure sub_004E59D4(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E6324(?:?); virtual;
    //function sub_004E635C:?; virtual;
    //function sub_004E6374:?; virtual;
    procedure sub_004E59B4(); virtual;
    //constructor Create(?:TZAdoPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;
  TZAdoCallableStatement = class(TZAdoPreparedStatement)
  public
    f84:TIntegerDynArray;//f84
    //procedure sub_004E6654(?:?; ?:?); virtual;
    //constructor Create(?:TZAdoCallableStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004E5190
//constructor TZAdoStatement.Create(?:TZAdoStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 004E5190    push       ebp
 004E5191    mov        ebp,esp
 004E5193    push       ecx
 004E5194    push       ebx
 004E5195    push       esi
 004E5196    test       dl,dl
>004E5198    je         004E51A2
 004E519A    add        esp,0FFFFFFF0
 004E519D    call       @ClassCreate
 004E51A2    mov        dword ptr [ebp-4],ecx
 004E51A5    mov        ebx,edx
 004E51A7    mov        esi,eax
 004E51A9    mov        eax,dword ptr [ebp-4]
 004E51AC    call       @IntfAddRef
 004E51B1    mov        eax,dword ptr [ebp+10]
 004E51B4    call       @IntfAddRef
 004E51B9    mov        eax,dword ptr [ebp+0C]
 004E51BC    call       @LStrAddRef
 004E51C1    xor        eax,eax
 004E51C3    push       ebp
 004E51C4    push       4E5214
 004E51C9    push       dword ptr fs:[eax]
 004E51CC    mov        dword ptr fs:[eax],esp
 004E51CF    mov        eax,dword ptr [ebp+0C]
 004E51D2    push       eax
 004E51D3    mov        eax,dword ptr [ebp+8]
 004E51D6    push       eax
 004E51D7    mov        ecx,dword ptr [ebp+10]
 004E51DA    xor        edx,edx
 004E51DC    mov        eax,esi
 004E51DE    call       004E0C98
 004E51E3    lea        eax,[esi+7C]; TZAdoStatement.?f7C:IZPlainDriver
 004E51E6    mov        edx,dword ptr [ebp-4]
 004E51E9    call       @IntfCopy
 004E51EE    xor        eax,eax
 004E51F0    pop        edx
 004E51F1    pop        ecx
 004E51F2    pop        ecx
 004E51F3    mov        dword ptr fs:[eax],edx
 004E51F6    push       4E521B
 004E51FB    lea        eax,[ebp-4]
 004E51FE    call       @IntfClear
 004E5203    lea        eax,[ebp+0C]
 004E5206    call       @LStrClr
 004E520B    lea        eax,[ebp+10]
 004E520E    call       @IntfClear
 004E5213    ret
<004E5214    jmp        @HandleFinally
<004E5219    jmp        004E51FB
 004E521B    mov        eax,esi
 004E521D    test       bl,bl
>004E521F    je         004E5230
 004E5221    call       @AfterConstruction
 004E5226    pop        dword ptr fs:[0]
 004E522D    add        esp,0C
 004E5230    mov        eax,esi
 004E5232    pop        esi
 004E5233    pop        ebx
 004E5234    pop        ecx
 004E5235    pop        ebp
 004E5236    ret        0C
*}
//end;

//004E523C
destructor TZAdoStatement.Destroy;
begin
{*
 004E523C    push       ebp
 004E523D    mov        ebp,esp
 004E523F    push       ebx
 004E5240    push       esi
 004E5241    call       @BeforeDestruction
 004E5246    mov        ebx,edx
 004E5248    mov        esi,eax
 004E524A    mov        edx,ebx
 004E524C    and        dl,0FC
 004E524F    mov        eax,esi
 004E5251    call       TZAbstractPreparedStatement.Destroy
 004E5256    test       bl,bl
>004E5258    jle        004E5261
 004E525A    mov        eax,esi
 004E525C    call       @ClassDestroy
 004E5261    pop        esi
 004E5262    pop        ebx
 004E5263    pop        ebp
 004E5264    ret
*}
end;

//004E5268
procedure sub_004E5268;
begin
{*
 004E5268    push       ebp
 004E5269    mov        ebp,esp
 004E526B    push       ebx
 004E526C    mov        ebx,eax
 004E526E    mov        eax,ebx
 004E5270    call       004DFEB4
 004E5275    lea        eax,[ebx+78]; TZAdoStatement.?f78:Recordset15
 004E5278    call       @IntfClear
 004E527D    pop        ebx
 004E527E    pop        ebp
 004E527F    ret
*}
end;

//004E5280
//function sub_004E5280(?:TZAdoCallableStatement; ?:String):?;
//begin
{*
 004E5280    push       ebp
 004E5281    mov        ebp,esp
 004E5283    push       0
 004E5285    push       0
 004E5287    push       0
 004E5289    push       ebx
 004E528A    mov        ebx,edx
 004E528C    xor        eax,eax
 004E528E    push       ebp
 004E528F    push       4E52F2
 004E5294    push       dword ptr fs:[eax]
 004E5297    mov        dword ptr fs:[eax],esp
 004E529A    lea        eax,[ebp-8]
 004E529D    push       eax
 004E529E    lea        edx,[ebp-0C]
 004E52A1    mov        eax,ebx
 004E52A3    call       TrimLeft
 004E52A8    mov        eax,dword ptr [ebp-0C]
 004E52AB    mov        ecx,6
 004E52B0    mov        edx,1
 004E52B5    call       @LStrCopy
 004E52BA    mov        eax,dword ptr [ebp-8]
 004E52BD    lea        edx,[ebp-4]
 004E52C0    call       UpperCase
 004E52C5    mov        eax,dword ptr [ebp-4]
 004E52C8    mov        edx,4E5308; 'SELECT'
 004E52CD    call       @LStrCmp
 004E52D2    sete       al
 004E52D5    mov        ebx,eax
 004E52D7    xor        eax,eax
 004E52D9    pop        edx
 004E52DA    pop        ecx
 004E52DB    pop        ecx
 004E52DC    mov        dword ptr fs:[eax],edx
 004E52DF    push       4E52F9
 004E52E4    lea        eax,[ebp-0C]
 004E52E7    mov        edx,3
 004E52EC    call       @LStrArrayClr
 004E52F1    ret
<004E52F2    jmp        @HandleFinally
<004E52F7    jmp        004E52E4
 004E52F9    mov        eax,ebx
 004E52FB    pop        ebx
 004E52FC    mov        esp,ebp
 004E52FE    pop        ebp
 004E52FF    ret
*}
//end;

//004E5310
//procedure sub_004E5310(?:?; ?:?);
//begin
{*
 004E5310    push       ebp
 004E5311    mov        ebp,esp
 004E5313    push       ebx
 004E5314    push       esi
 004E5315    push       edi
 004E5316    mov        esi,ecx
 004E5318    mov        edi,edx
 004E531A    mov        ebx,eax
 004E531C    mov        eax,esi
 004E531E    call       @IntfClear
 004E5323    xor        edx,edx
 004E5325    mov        eax,ebx
 004E5327    mov        ecx,dword ptr [eax]
 004E5329    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
 004E532B    mov        dword ptr [ebx+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
 004E5332    mov        edx,edi
 004E5334    mov        eax,ebx
 004E5336    mov        ecx,dword ptr [eax]
 004E5338    call       dword ptr [ecx+34]; TZAdoCallableStatement.sub_004E5394
 004E533B    test       al,al
>004E533D    jne        004E5350
 004E533F    mov        eax,ebx
 004E5341    mov        edx,dword ptr [eax]
 004E5343    call       dword ptr [edx+40]; TZAdoCallableStatement.sub_004E5768
 004E5346    test       al,al
>004E5348    jne        004E5350
 004E534A    cmp        dword ptr [ebx+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
<004E534E    jg         004E533F
 004E5350    mov        eax,esi
 004E5352    mov        edx,dword ptr [ebx+20]; TZAdoCallableStatement.?f20:IZResultSet
 004E5355    call       @IntfCopy
 004E535A    pop        edi
 004E535B    pop        esi
 004E535C    pop        ebx
 004E535D    pop        ebp
 004E535E    ret
*}
//end;

//004E5360
//function sub_004E5360(?:?):?;
//begin
{*
 004E5360    push       ebp
 004E5361    mov        ebp,esp
 004E5363    push       ebx
 004E5364    push       esi
 004E5365    push       edi
 004E5366    mov        edi,edx
 004E5368    mov        ebx,eax
 004E536A    or         esi,0FFFFFFFF
 004E536D    xor        edx,edx
 004E536F    mov        eax,ebx
 004E5371    mov        ecx,dword ptr [eax]
 004E5373    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
 004E5375    mov        dword ptr [ebx+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
 004E537C    mov        edx,edi
 004E537E    mov        eax,ebx
 004E5380    mov        ecx,dword ptr [eax]
 004E5382    call       dword ptr [ecx+34]; TZAdoCallableStatement.sub_004E5394
 004E5385    test       al,al
>004E5387    je         004E538C
 004E5389    mov        esi,dword ptr [ebx+1C]; TZAdoCallableStatement.?f1C:Integer
 004E538C    mov        eax,esi
 004E538E    pop        edi
 004E538F    pop        esi
 004E5390    pop        ebx
 004E5391    pop        ebp
 004E5392    ret
*}
//end;

//004E5394
//function sub_004E5394(?:?):?;
//begin
{*
 004E5394    push       ebp
 004E5395    mov        ebp,esp
 004E5397    mov        ecx,0B
 004E539C    push       0
 004E539E    push       0
 004E53A0    dec        ecx
<004E53A1    jne        004E539C
 004E53A3    push       ecx
 004E53A4    push       ebx
 004E53A5    push       esi
 004E53A6    push       edi
 004E53A7    mov        dword ptr [ebp-8],edx
 004E53AA    mov        dword ptr [ebp-4],eax
 004E53AD    xor        eax,eax
 004E53AF    push       ebp
 004E53B0    push       4E55F3
 004E53B5    push       dword ptr fs:[eax]
 004E53B8    mov        dword ptr fs:[eax],esp
 004E53BB    xor        eax,eax
 004E53BD    push       ebp
 004E53BE    push       4E5542
 004E53C3    push       dword ptr fs:[eax]
 004E53C6    mov        dword ptr fs:[eax],esp
 004E53C9    xor        edx,edx
 004E53CB    mov        eax,dword ptr [ebp-4]
 004E53CE    mov        ecx,dword ptr [eax]
 004E53D0    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
 004E53D2    mov        eax,dword ptr [ebp-4]
 004E53D5    mov        dword ptr [eax+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
 004E53DC    mov        eax,dword ptr [ebp-4]
 004E53DF    add        eax,48; TZAdoCallableStatement.?f48:String
 004E53E2    mov        edx,dword ptr [ebp-8]
 004E53E5    call       @LStrAsg
 004E53EA    mov        edx,dword ptr [ebp-8]
 004E53ED    mov        eax,dword ptr [ebp-4]
 004E53F0    call       004E5280
 004E53F5    test       al,al
>004E53F7    je         004E549B
 004E53FD    lea        edx,[ebp-1C]
 004E5400    mov        eax,[004DE788]; CoRecordset
 004E5405    call       004DE8A8
 004E540A    mov        edx,dword ptr [ebp-1C]
 004E540D    mov        eax,dword ptr [ebp-4]
 004E5410    add        eax,78; TZAdoCallableStatement.?f78:Recordset15
 004E5413    call       @IntfCopy
 004E5418    mov        eax,dword ptr [ebp-4]
 004E541B    mov        eax,dword ptr [eax+10]; TZAdoCallableStatement.?f10:dword
 004E541E    push       eax
 004E541F    mov        eax,dword ptr [ebp-4]
 004E5422    mov        eax,dword ptr [eax+78]; TZAdoCallableStatement.?f78:Recordset15
 004E5425    push       eax
 004E5426    mov        eax,dword ptr [eax]
 004E5428    call       dword ptr [eax+64]
 004E542B    call       @CheckAutoResult
 004E5430    push       20
 004E5432    push       3
 004E5434    push       3
 004E5436    lea        eax,[ebp-34]
 004E5439    mov        edx,dword ptr [ebp-4]
 004E543C    mov        edx,dword ptr [edx+38]; TZAdoCallableStatement.?f38:IZConnection
 004E543F    mov        ecx,4E5604; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004E5444    call       @IntfCast
 004E5449    mov        eax,dword ptr [ebp-34]
 004E544C    lea        edx,[ebp-30]
 004E544F    mov        ecx,dword ptr [eax]
 004E5451    call       dword ptr [ecx+94]
 004E5457    mov        edx,dword ptr [ebp-30]
 004E545A    lea        eax,[ebp-2C]
 004E545D    call       @VarFromDisp
 004E5462    push       dword ptr [ebp-20]
 004E5465    push       dword ptr [ebp-24]
 004E5468    push       dword ptr [ebp-28]
 004E546B    push       dword ptr [ebp-2C]
 004E546E    lea        eax,[ebp-44]
 004E5471    mov        edx,dword ptr [ebp-8]
 004E5474    call       @OleVarFromLStr
 004E5479    push       dword ptr [ebp-38]
 004E547C    push       dword ptr [ebp-3C]
 004E547F    push       dword ptr [ebp-40]
 004E5482    push       dword ptr [ebp-44]
 004E5485    mov        eax,dword ptr [ebp-4]
 004E5488    mov        eax,dword ptr [eax+78]; TZAdoCallableStatement.?f78:Recordset15
 004E548B    push       eax
 004E548C    mov        eax,dword ptr [eax]
 004E548E    call       dword ptr [eax+0A0]
 004E5494    call       @CheckAutoResult
>004E5499    jmp        004E54FE
 004E549B    lea        eax,[ebp-48]
 004E549E    call       @IntfClear
 004E54A3    push       eax
 004E54A4    push       80
 004E54A9    lea        eax,[ebp-18]
 004E54AC    call       @VarClr
 004E54B1    push       eax
 004E54B2    lea        eax,[ebp-4C]
 004E54B5    mov        edx,dword ptr [ebp-8]
 004E54B8    call       @WStrFromLStr
 004E54BD    mov        eax,dword ptr [ebp-4C]
 004E54C0    push       eax
 004E54C1    lea        eax,[ebp-54]
 004E54C4    mov        edx,dword ptr [ebp-4]
 004E54C7    mov        edx,dword ptr [edx+38]; TZAdoCallableStatement.?f38:IZConnection
 004E54CA    mov        ecx,4E5604; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004E54CF    call       @IntfCast
 004E54D4    mov        eax,dword ptr [ebp-54]
 004E54D7    lea        edx,[ebp-50]
 004E54DA    mov        ecx,dword ptr [eax]
 004E54DC    call       dword ptr [ecx+94]
 004E54E2    mov        eax,dword ptr [ebp-50]
 004E54E5    push       eax
 004E54E6    mov        eax,dword ptr [eax]
 004E54E8    call       dword ptr [eax+40]
 004E54EB    call       @CheckAutoResult
 004E54F0    mov        edx,dword ptr [ebp-48]
 004E54F3    mov        eax,dword ptr [ebp-4]
 004E54F6    add        eax,78; TZAdoCallableStatement.?f78:Recordset15
 004E54F9    call       @IntfCopy
 004E54FE    lea        eax,[ebp-18]
 004E5501    call       @VarToInteger
 004E5506    mov        edx,eax
 004E5508    mov        eax,dword ptr [ebp-4]
 004E550B    mov        ecx,dword ptr [eax]
 004E550D    call       dword ptr [ecx+140]; TZAdoCallableStatement.sub_004E5614
 004E5513    mov        ebx,eax
 004E5515    mov        eax,dword ptr [ebp-8]
 004E5518    push       eax
 004E5519    lea        edx,[ebp-58]
 004E551C    mov        eax,dword ptr [ebp-4]
 004E551F    mov        eax,dword ptr [eax+7C]; TZAdoCallableStatement.?f7C:IZPlainDriver
 004E5522    mov        ecx,dword ptr [eax]
 004E5524    call       dword ptr [ecx+0C]
 004E5527    mov        ecx,dword ptr [ebp-58]
 004E552A    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004E552F    mov        eax,dword ptr [eax]
 004E5531    mov        dl,3
 004E5533    mov        esi,dword ptr [eax]
 004E5535    call       dword ptr [esi+3C]
 004E5538    xor        eax,eax
 004E553A    pop        edx
 004E553B    pop        ecx
 004E553C    pop        ecx
 004E553D    mov        dword ptr fs:[eax],edx
>004E5540    jmp        004E5588
<004E5542    jmp        @HandleOnException
 004E5547    dd        1
 004E554B    dd        4087B0;Exception
 004E554F    dd        4E5553
 004E5553    mov        ebx,eax
 004E5555    mov        eax,dword ptr [ebp-8]
 004E5558    push       eax
 004E5559    push       0
 004E555B    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004E555E    push       eax
 004E555F    lea        edx,[ebp-5C]
 004E5562    mov        eax,dword ptr [ebp-4]
 004E5565    mov        eax,dword ptr [eax+7C]; TZAdoCallableStatement.?f7C:IZPlainDriver
 004E5568    mov        ecx,dword ptr [eax]
 004E556A    call       dword ptr [ecx+0C]
 004E556D    mov        ecx,dword ptr [ebp-5C]
 004E5570    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004E5575    mov        eax,dword ptr [eax]
 004E5577    mov        dl,3
 004E5579    mov        ebx,dword ptr [eax]
 004E557B    call       dword ptr [ebx+40]
 004E557E    call       @RaiseAgain
 004E5583    call       @DoneExcept
 004E5588    xor        eax,eax
 004E558A    pop        edx
 004E558B    pop        ecx
 004E558C    pop        ecx
 004E558D    mov        dword ptr fs:[eax],edx
 004E5590    push       4E55FA
 004E5595    lea        eax,[ebp-5C]
 004E5598    mov        edx,2
 004E559D    call       @LStrArrayClr
 004E55A2    lea        eax,[ebp-54]
 004E55A5    call       @IntfClear
 004E55AA    lea        eax,[ebp-50]
 004E55AD    call       @IntfClear
 004E55B2    lea        eax,[ebp-4C]
 004E55B5    call       @WStrClr
 004E55BA    lea        eax,[ebp-48]
 004E55BD    call       @IntfClear
 004E55C2    lea        eax,[ebp-44]
 004E55C5    call       @VarClr
 004E55CA    lea        eax,[ebp-34]
 004E55CD    call       @IntfClear
 004E55D2    lea        eax,[ebp-30]
 004E55D5    call       @IntfClear
 004E55DA    lea        eax,[ebp-2C]
 004E55DD    call       @VarClr
 004E55E2    lea        eax,[ebp-1C]
 004E55E5    call       @IntfClear
 004E55EA    lea        eax,[ebp-18]
 004E55ED    call       @VarClr
 004E55F2    ret
<004E55F3    jmp        @HandleFinally
<004E55F8    jmp        004E5595
 004E55FA    mov        eax,ebx
 004E55FC    pop        edi
 004E55FD    pop        esi
 004E55FE    pop        ebx
 004E55FF    mov        esp,ebp
 004E5601    pop        ebp
 004E5602    ret
*}
//end;

//004E5614
//function sub_004E5614(?:?):?;
//begin
{*
 004E5614    push       ebp
 004E5615    mov        ebp,esp
 004E5617    xor        ecx,ecx
 004E5619    push       ecx
 004E561A    push       ecx
 004E561B    push       ecx
 004E561C    push       ecx
 004E561D    push       ecx
 004E561E    push       ebx
 004E561F    push       esi
 004E5620    push       edi
 004E5621    mov        edi,edx
 004E5623    mov        esi,eax
 004E5625    xor        eax,eax
 004E5627    push       ebp
 004E5628    push       4E5748
 004E562D    push       dword ptr fs:[eax]
 004E5630    mov        dword ptr fs:[eax],esp
 004E5633    xor        ebx,ebx
 004E5635    cmp        dword ptr [esi+78],0; TZAdoCallableStatement.?f78:Recordset15
>004E5639    je         004E571A
 004E563F    lea        eax,[ebp-8]
 004E5642    push       eax
 004E5643    mov        eax,dword ptr [esi+78]; TZAdoCallableStatement.?f78:Recordset15
 004E5646    push       eax
 004E5647    mov        eax,dword ptr [eax]
 004E5649    call       dword ptr [eax+0DC]
 004E564F    call       @CheckAutoResult
 004E5654    mov        eax,dword ptr [ebp-8]
 004E5657    and        eax,1
 004E565A    dec        eax
>004E565B    jne        004E5717
 004E5661    mov        bl,1
 004E5663    mov        eax,dword ptr [esi+48]; TZAdoCallableStatement.?f48:String
 004E5666    push       eax
 004E5667    mov        eax,dword ptr [esi+78]; TZAdoCallableStatement.?f78:Recordset15
 004E566A    push       eax
 004E566B    mov        ecx,esi
 004E566D    test       ecx,ecx
>004E566F    je         004E5674
 004E5671    sub        ecx,0FFFFFFBC
 004E5674    mov        dl,1
 004E5676    mov        eax,[004E2510]; TZAdoResultSet
 004E567B    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E5680    mov        edx,eax
 004E5682    test       edx,edx
>004E5684    je         004E5689
 004E5686    sub        edx,0FFFFFFC8
 004E5689    lea        eax,[ebp-4]
 004E568C    call       @IntfCopy
 004E5691    cmp        byte ptr [esi+2C],1; TZAdoCallableStatement.?f2C:byte
>004E5695    jne        004E570C
 004E5697    mov        eax,dword ptr [esi+48]; TZAdoCallableStatement.?f48:String
 004E569A    push       eax
 004E569B    mov        eax,esi
 004E569D    test       eax,eax
>004E569F    je         004E56A4
 004E56A1    sub        eax,0FFFFFFBC
 004E56A4    push       eax
 004E56A5    lea        edx,[ebp-0C]
 004E56A8    mov        eax,dword ptr [ebp-4]
 004E56AB    mov        ecx,dword ptr [eax]
 004E56AD    call       dword ptr [ecx+0CC]
 004E56B3    mov        eax,dword ptr [ebp-0C]
 004E56B6    push       eax
 004E56B7    lea        eax,[ebp-14]
 004E56BA    mov        edx,dword ptr [esi+38]; TZAdoCallableStatement.?f38:IZConnection
 004E56BD    mov        ecx,4E5758; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004E56C2    call       @IntfCast
 004E56C7    mov        eax,dword ptr [ebp-14]
 004E56CA    lea        edx,[ebp-10]
 004E56CD    mov        ecx,dword ptr [eax]
 004E56CF    call       dword ptr [ecx+94]
 004E56D5    mov        ecx,dword ptr [ebp-10]
 004E56D8    mov        dl,1
 004E56DA    mov        eax,[004E27E8]; TZAdoCachedResolver
 004E56DF    call       TZAdoCachedResolver.Create; TZAdoCachedResolver.Create
 004E56E4    test       eax,eax
>004E56E6    je         004E56EB
 004E56E8    sub        eax,0FFFFFFC8
 004E56EB    push       eax
 004E56EC    mov        ecx,dword ptr [ebp-4]
 004E56EF    mov        dl,1
 004E56F1    mov        eax,[004D060C]; TZCachedResultSet
 004E56F6    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 004E56FB    mov        edx,eax
 004E56FD    test       edx,edx
>004E56FF    je         004E5704
 004E5701    sub        edx,0FFFFFFC8
 004E5704    mov        eax,esi
 004E5706    mov        ecx,dword ptr [eax]
 004E5708    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
>004E570A    jmp        004E571A
 004E570C    mov        edx,dword ptr [ebp-4]
 004E570F    mov        eax,esi
 004E5711    mov        ecx,dword ptr [eax]
 004E5713    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
>004E5715    jmp        004E571A
 004E5717    mov        dword ptr [esi+1C],edi; TZAdoCallableStatement.?f1C:Integer
 004E571A    xor        eax,eax
 004E571C    pop        edx
 004E571D    pop        ecx
 004E571E    pop        ecx
 004E571F    mov        dword ptr fs:[eax],edx
 004E5722    push       4E574F
 004E5727    lea        eax,[ebp-14]
 004E572A    call       @IntfClear
 004E572F    lea        eax,[ebp-10]
 004E5732    call       @IntfClear
 004E5737    lea        eax,[ebp-0C]
 004E573A    call       @IntfClear
 004E573F    lea        eax,[ebp-4]
 004E5742    call       @IntfClear
 004E5747    ret
<004E5748    jmp        @HandleFinally
<004E574D    jmp        004E5727
 004E574F    mov        eax,ebx
 004E5751    pop        edi
 004E5752    pop        esi
 004E5753    pop        ebx
 004E5754    mov        esp,ebp
 004E5756    pop        ebp
 004E5757    ret
*}
//end;

//004E5768
//function sub_004E5768:?;
//begin
{*
 004E5768    push       ebp
 004E5769    mov        ebp,esp
 004E576B    xor        ecx,ecx
 004E576D    push       ecx
 004E576E    push       ecx
 004E576F    push       ecx
 004E5770    push       ecx
 004E5771    push       ecx
 004E5772    push       ebx
 004E5773    push       esi
 004E5774    mov        esi,eax
 004E5776    xor        eax,eax
 004E5778    push       ebp
 004E5779    push       4E57FD
 004E577E    push       dword ptr fs:[eax]
 004E5781    mov        dword ptr fs:[eax],esp
 004E5784    xor        ebx,ebx
 004E5786    xor        edx,edx
 004E5788    mov        eax,esi
 004E578A    mov        ecx,dword ptr [eax]
 004E578C    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
 004E578E    mov        dword ptr [esi+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
 004E5795    cmp        dword ptr [esi+78],0; TZAdoCallableStatement.?f78:Recordset15
>004E5799    je         004E57DF
 004E579B    lea        eax,[ebp-14]
 004E579E    call       @IntfClear
 004E57A3    push       eax
 004E57A4    lea        eax,[ebp-10]
 004E57A7    call       @VarClr
 004E57AC    push       eax
 004E57AD    mov        eax,dword ptr [esi+78]; TZAdoCallableStatement.?f78:Recordset15
 004E57B0    push       eax
 004E57B1    mov        eax,dword ptr [eax]
 004E57B3    call       dword ptr [eax+0F4]
 004E57B9    call       @CheckAutoResult
 004E57BE    mov        edx,dword ptr [ebp-14]
 004E57C1    lea        eax,[esi+78]; TZAdoCallableStatement.?f78:Recordset15
 004E57C4    call       @IntfCopy
 004E57C9    lea        eax,[ebp-10]
 004E57CC    call       @VarToInteger
 004E57D1    mov        edx,eax
 004E57D3    mov        eax,esi
 004E57D5    mov        ecx,dword ptr [eax]
 004E57D7    call       dword ptr [ecx+140]; TZAdoCallableStatement.sub_004E5614
 004E57DD    mov        ebx,eax
 004E57DF    xor        eax,eax
 004E57E1    pop        edx
 004E57E2    pop        ecx
 004E57E3    pop        ecx
 004E57E4    mov        dword ptr fs:[eax],edx
 004E57E7    push       4E5804
 004E57EC    lea        eax,[ebp-14]
 004E57EF    call       @IntfClear
 004E57F4    lea        eax,[ebp-10]
 004E57F7    call       @VarClr
 004E57FC    ret
<004E57FD    jmp        @HandleFinally
<004E5802    jmp        004E57EC
 004E5804    mov        eax,ebx
 004E5806    pop        esi
 004E5807    pop        ebx
 004E5808    mov        esp,ebp
 004E580A    pop        ebp
 004E580B    ret
*}
//end;

//004E580C
//constructor TZAdoPreparedStatement.Create(?:TZAdoPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 004E580C    push       ebp
 004E580D    mov        ebp,esp
 004E580F    push       0
 004E5811    push       0
 004E5813    push       0
 004E5815    push       0
 004E5817    push       0
 004E5819    push       ebx
 004E581A    push       esi
 004E581B    test       dl,dl
>004E581D    je         004E5827
 004E581F    add        esp,0FFFFFFF0
 004E5822    call       @ClassCreate
 004E5827    mov        dword ptr [ebp-4],ecx
 004E582A    mov        ebx,edx
 004E582C    mov        esi,eax
 004E582E    mov        eax,dword ptr [ebp-4]
 004E5831    call       @IntfAddRef
 004E5836    mov        eax,dword ptr [ebp+10]
 004E5839    call       @IntfAddRef
 004E583E    mov        eax,dword ptr [ebp+0C]
 004E5841    call       @LStrAddRef
 004E5846    xor        eax,eax
 004E5848    push       ebp
 004E5849    push       4E5933
 004E584E    push       dword ptr fs:[eax]
 004E5851    mov        dword ptr fs:[eax],esp
 004E5854    lea        edx,[ebp-8]
 004E5857    mov        eax,[004DE730]; CoCommand
 004E585C    call       004DE844
 004E5861    mov        edx,dword ptr [ebp-8]
 004E5864    lea        eax,[esi+80]; TZAdoPreparedStatement.?f80:_Command
 004E586A    call       @IntfCopy
 004E586F    lea        eax,[ebp-0C]
 004E5872    mov        edx,dword ptr [ebp+0C]
 004E5875    call       @WStrFromLStr
 004E587A    mov        eax,dword ptr [ebp-0C]
 004E587D    push       eax
 004E587E    mov        eax,dword ptr [esi+80]; TZAdoPreparedStatement.?f80:_Command
 004E5884    push       eax
 004E5885    mov        eax,dword ptr [eax]
 004E5887    call       dword ptr [eax+30]
 004E588A    call       @CheckAutoResult
 004E588F    mov        eax,dword ptr [ebp+10]
 004E5892    push       eax
 004E5893    mov        eax,dword ptr [ebp+0C]
 004E5896    push       eax
 004E5897    mov        eax,dword ptr [ebp+8]
 004E589A    push       eax
 004E589B    mov        ecx,dword ptr [ebp-4]
 004E589E    xor        edx,edx
 004E58A0    mov        eax,esi
 004E58A2    call       TZAdoStatement.Create
 004E58A7    lea        eax,[ebp-14]
 004E58AA    mov        edx,dword ptr [ebp+10]
 004E58AD    mov        ecx,4E595C; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004E58B2    call       @IntfCast
 004E58B7    mov        eax,dword ptr [ebp-14]
 004E58BA    lea        edx,[ebp-10]
 004E58BD    mov        ecx,dword ptr [eax]
 004E58BF    call       dword ptr [ecx+94]
 004E58C5    mov        eax,dword ptr [ebp-10]
 004E58C8    push       eax
 004E58C9    mov        eax,dword ptr [esi+80]; TZAdoPreparedStatement.?f80:_Command
 004E58CF    push       eax
 004E58D0    mov        eax,dword ptr [eax]
 004E58D2    call       dword ptr [eax+24]
 004E58D5    call       @CheckAutoResult
 004E58DA    push       0FF
 004E58DC    mov        eax,dword ptr [esi+80]; TZAdoPreparedStatement.?f80:_Command
 004E58E2    push       eax
 004E58E3    mov        eax,dword ptr [eax]
 004E58E5    call       dword ptr [eax+40]
 004E58E8    call       @CheckAutoResult
 004E58ED    xor        eax,eax
 004E58EF    pop        edx
 004E58F0    pop        ecx
 004E58F1    pop        ecx
 004E58F2    mov        dword ptr fs:[eax],edx
 004E58F5    push       4E593A
 004E58FA    lea        eax,[ebp-14]
 004E58FD    call       @IntfClear
 004E5902    lea        eax,[ebp-10]
 004E5905    call       @IntfClear
 004E590A    lea        eax,[ebp-0C]
 004E590D    call       @WStrClr
 004E5912    lea        eax,[ebp-8]
 004E5915    call       @IntfClear
 004E591A    lea        eax,[ebp-4]
 004E591D    call       @IntfClear
 004E5922    lea        eax,[ebp+0C]
 004E5925    call       @LStrClr
 004E592A    lea        eax,[ebp+10]
 004E592D    call       @IntfClear
 004E5932    ret
<004E5933    jmp        @HandleFinally
<004E5938    jmp        004E58FA
 004E593A    mov        eax,esi
 004E593C    test       bl,bl
>004E593E    je         004E594F
 004E5940    call       @AfterConstruction
 004E5945    pop        dword ptr fs:[0]
 004E594C    add        esp,0C
 004E594F    mov        eax,esi
 004E5951    pop        esi
 004E5952    pop        ebx
 004E5953    mov        esp,ebp
 004E5955    pop        ebp
 004E5956    ret        0C
*}
//end;

//004E596C
destructor TZAdoPreparedStatement.Destroy;
begin
{*
 004E596C    push       ebp
 004E596D    mov        ebp,esp
 004E596F    push       ebx
 004E5970    push       esi
 004E5971    call       @BeforeDestruction
 004E5976    mov        ebx,edx
 004E5978    mov        esi,eax
 004E597A    mov        edx,ebx
 004E597C    and        dl,0FC
 004E597F    mov        eax,esi
 004E5981    call       TZAdoStatement.Destroy
 004E5986    test       bl,bl
>004E5988    jle        004E5991
 004E598A    mov        eax,esi
 004E598C    call       @ClassDestroy
 004E5991    pop        esi
 004E5992    pop        ebx
 004E5993    pop        ebp
 004E5994    ret
*}
end;

//004E5998
procedure sub_004E5998;
begin
{*
 004E5998    push       ebp
 004E5999    mov        ebp,esp
 004E599B    push       ebx
 004E599C    mov        ebx,eax
 004E599E    mov        eax,ebx
 004E59A0    call       004E5268
 004E59A5    lea        eax,[ebx+80]; TZAdoCallableStatement.?f80:_Command
 004E59AB    call       @IntfClear
 004E59B0    pop        ebx
 004E59B1    pop        ebp
 004E59B2    ret
*}
end;

//004E59B4
procedure sub_004E59B4();
begin
{*
 004E59B4    ret
*}
end;

//004E59B8
//procedure sub_004E59B8(?:?);
//begin
{*
 004E59B8    push       ebp
 004E59B9    mov        ebp,esp
 004E59BB    push       ebx
 004E59BC    push       esi
 004E59BD    mov        esi,edx
 004E59BF    mov        ebx,eax
 004E59C1    mov        edx,esi
 004E59C3    mov        eax,ebx
 004E59C5    call       004E0150
 004E59CA    mov        dword ptr [ebx+58],esi; TZAdoCallableStatement.?f58:dword
 004E59CD    pop        esi
 004E59CE    pop        ebx
 004E59CF    pop        ebp
 004E59D0    ret
*}
//end;

//004E59D4
//procedure sub_004E59D4(?:?; ?:?; ?:?);
//begin
{*
 004E59D4    push       ebp
 004E59D5    mov        ebp,esp
 004E59D7    push       ecx
 004E59D8    mov        ecx,26
 004E59DD    push       0
 004E59DF    push       0
 004E59E1    dec        ecx
<004E59E2    jne        004E59DD
 004E59E4    xchg       ecx,dword ptr [ebp-4]
 004E59E7    push       ebx
 004E59E8    push       esi
 004E59E9    push       edi
 004E59EA    mov        byte ptr [ebp-9],cl
 004E59ED    mov        dword ptr [ebp-8],edx
 004E59F0    mov        dword ptr [ebp-4],eax
 004E59F3    lea        eax,[ebp-6C]
 004E59F6    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E59FC    call       @InitializeRecord
 004E5A01    xor        eax,eax
 004E5A03    push       ebp
 004E5A04    push       4E62C4
 004E5A09    push       dword ptr fs:[eax]
 004E5A0C    mov        dword ptr fs:[eax],esp
 004E5A0F    xor        eax,eax
 004E5A11    mov        dword ptr [ebp-10],eax
 004E5A14    lea        eax,[ebp-70]
 004E5A17    push       eax
 004E5A18    mov        eax,dword ptr [ebp-4]
 004E5A1B    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E5A21    push       eax
 004E5A22    mov        eax,dword ptr [eax]
 004E5A24    call       dword ptr [eax+54]
 004E5A27    call       @CheckAutoResult
 004E5A2C    cmp        dword ptr [ebp-70],4
>004E5A30    jne        004E5A91
 004E5A32    xor        eax,eax
 004E5A34    push       ebp
 004E5A35    push       4E5A82
 004E5A3A    push       dword ptr fs:[eax]
 004E5A3D    mov        dword ptr fs:[eax],esp
 004E5A40    lea        eax,[ebp-70]
 004E5A43    push       eax
 004E5A44    lea        eax,[ebp-74]
 004E5A47    call       @IntfClear
 004E5A4C    push       eax
 004E5A4D    mov        eax,dword ptr [ebp-4]
 004E5A50    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E5A56    push       eax
 004E5A57    mov        eax,dword ptr [eax]
 004E5A59    call       dword ptr [eax+4C]
 004E5A5C    call       @CheckAutoResult
 004E5A61    mov        eax,dword ptr [ebp-74]
 004E5A64    push       eax
 004E5A65    mov        eax,dword ptr [eax]
 004E5A67    call       dword ptr [eax+1C]
 004E5A6A    call       @CheckAutoResult
 004E5A6F    mov        eax,dword ptr [ebp-70]
 004E5A72    mov        dword ptr [ebp-10],eax
 004E5A75    xor        eax,eax
 004E5A77    pop        edx
 004E5A78    pop        ecx
 004E5A79    pop        ecx
 004E5A7A    mov        dword ptr fs:[eax],edx
>004E5A7D    jmp        004E5B6F
<004E5A82    jmp        @HandleAnyException
 004E5A87    call       @DoneExcept
>004E5A8C    jmp        004E5B6F
 004E5A91    lea        eax,[ebp-1C]
 004E5A94    call       @IntfClear
 004E5A99    push       eax
 004E5A9A    lea        eax,[ebp-78]
 004E5A9D    mov        edx,dword ptr [ebp-4]
 004E5AA0    mov        edx,dword ptr [edx+80]; TZAdoCallableStatement.?f80:_Command
 004E5AA6    mov        ecx,4E62D8; ['{00000517-0000-0010-8000-00AA006D2EA4}']
 004E5AAB    call       @IntfCast
 004E5AB0    mov        eax,dword ptr [ebp-78]
 004E5AB3    push       eax
 004E5AB4    mov        eax,dword ptr [eax]
 004E5AB6    call       dword ptr [eax+0C]
 004E5AB9    call       @CheckAutoResult
 004E5ABE    lea        eax,[ebp-20]
 004E5AC1    call       @IntfClear
 004E5AC6    push       eax
 004E5AC7    push       4E62E8
 004E5ACC    mov        eax,dword ptr [ebp-1C]
 004E5ACF    push       eax
 004E5AD0    mov        eax,dword ptr [eax]
 004E5AD2    call       dword ptr [eax]
 004E5AD4    xor        eax,eax
 004E5AD6    mov        dword ptr [ebp-2C],eax
 004E5AD9    xor        ebx,ebx
 004E5ADB    cmp        dword ptr [ebp-20],0
>004E5ADF    je         004E5B6F
 004E5AE5    push       ebx
 004E5AE6    lea        eax,[ebp-2C]
 004E5AE9    push       eax
 004E5AEA    lea        eax,[ebp-28]
 004E5AED    push       eax
 004E5AEE    mov        eax,dword ptr [ebp-20]
 004E5AF1    push       eax
 004E5AF2    mov        eax,dword ptr [eax]
 004E5AF4    call       dword ptr [eax+0C]
 004E5AF7    cmp        eax,80040E4A
>004E5AFC    jne        004E5B37
 004E5AFE    lea        eax,[ebp-24]
 004E5B01    call       @IntfClear
 004E5B06    push       eax
 004E5B07    push       4E62F8
 004E5B0C    mov        eax,dword ptr [ebp-1C]
 004E5B0F    push       eax
 004E5B10    mov        eax,dword ptr [eax]
 004E5B12    call       dword ptr [eax]
 004E5B14    cmp        dword ptr [ebp-24],0
>004E5B18    je         004E5B37
 004E5B1A    push       0
 004E5B1C    mov        eax,dword ptr [ebp-24]
 004E5B1F    push       eax
 004E5B20    mov        eax,dword ptr [eax]
 004E5B22    call       dword ptr [eax+0C]
 004E5B25    push       ebx
 004E5B26    lea        eax,[ebp-2C]
 004E5B29    push       eax
 004E5B2A    lea        eax,[ebp-28]
 004E5B2D    push       eax
 004E5B2E    mov        eax,dword ptr [ebp-20]
 004E5B31    push       eax
 004E5B32    mov        eax,dword ptr [eax]
 004E5B34    call       dword ptr [eax+0C]
 004E5B37    cmp        dword ptr [ebp-2C],0
>004E5B3B    je         004E5B4E
 004E5B3D    mov        eax,dword ptr [ebp-2C]
 004E5B40    push       eax
 004E5B41    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004E5B46    mov        eax,dword ptr [eax]
 004E5B48    push       eax
 004E5B49    mov        eax,dword ptr [eax]
 004E5B4B    call       dword ptr [eax+14]
 004E5B4E    test       ebx,ebx
>004E5B50    je         004E5B60
 004E5B52    push       ebx
 004E5B53    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004E5B58    mov        eax,dword ptr [eax]
 004E5B5A    push       eax
 004E5B5B    mov        eax,dword ptr [eax]
 004E5B5D    call       dword ptr [eax+14]
 004E5B60    mov        eax,dword ptr [ebp-28]
 004E5B63    test       eax,eax
>004E5B65    jns        004E5B6C
 004E5B67    call       @BoundErr
 004E5B6C    mov        dword ptr [ebp-10],eax
 004E5B6F    lea        eax,[ebp-6C]
 004E5B72    mov        edx,dword ptr [ebp+8]
 004E5B75    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E5B7B    call       @CopyRecord
 004E5B80    mov        al,byte ptr [ebp-9]
 004E5B83    add        al,0F1
 004E5B85    sub        al,3
>004E5B87    jae        004E5C59
 004E5B8D    lea        ecx,[ebp-7C]
 004E5B90    mov        edx,dword ptr [ebp+8]
 004E5B93    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E5B98    mov        eax,dword ptr [eax]
 004E5B9A    mov        ebx,dword ptr [eax]
 004E5B9C    call       dword ptr [ebx+40]
 004E5B9F    mov        edx,dword ptr [ebp-7C]
 004E5BA2    lea        eax,[ebp-18]
 004E5BA5    mov        ecx,4E6308; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 004E5BAA    call       @IntfCast
 004E5BAF    mov        al,byte ptr [ebp-9]
 004E5BB2    sub        al,0F
>004E5BB4    je         004E5BC3
 004E5BB6    dec        al
>004E5BB8    je         004E5BEC
 004E5BBA    dec        al
>004E5BBC    je         004E5C1B
>004E5BBE    jmp        004E5C59
 004E5BC3    cmp        dword ptr [ebp-18],0
>004E5BC7    je         004E5BE6
 004E5BC9    lea        edx,[ebp-80]
 004E5BCC    mov        eax,dword ptr [ebp-18]
 004E5BCF    mov        ecx,dword ptr [eax]
 004E5BD1    call       dword ptr [ecx+18]
 004E5BD4    mov        ecx,dword ptr [ebp-80]
 004E5BD7    lea        edx,[ebp-6C]
 004E5BDA    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E5BDF    mov        eax,dword ptr [eax]
 004E5BE1    mov        ebx,dword ptr [eax]
 004E5BE3    call       dword ptr [ebx+50]
 004E5BE6    mov        byte ptr [ebp-9],9
>004E5BEA    jmp        004E5C59
 004E5BEC    cmp        dword ptr [ebp-18],0
>004E5BF0    je         004E5C15
 004E5BF2    lea        edx,[ebp-84]
 004E5BF8    mov        eax,dword ptr [ebp-18]
 004E5BFB    mov        ecx,dword ptr [eax]
 004E5BFD    call       dword ptr [ecx+20]
 004E5C00    mov        ecx,dword ptr [ebp-84]
 004E5C06    lea        edx,[ebp-6C]
 004E5C09    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E5C0E    mov        eax,dword ptr [eax]
 004E5C10    mov        ebx,dword ptr [eax]
 004E5C12    call       dword ptr [ebx+54]
 004E5C15    mov        byte ptr [ebp-9],0A
>004E5C19    jmp        004E5C59
 004E5C1B    cmp        dword ptr [ebp-18],0
>004E5C1F    je         004E5C55
 004E5C21    lea        edx,[ebp-8C]
 004E5C27    mov        eax,dword ptr [ebp-18]
 004E5C2A    mov        ecx,dword ptr [eax]
 004E5C2C    call       dword ptr [ecx+28]
 004E5C2F    mov        eax,dword ptr [ebp-8C]
 004E5C35    lea        edx,[ebp-88]
 004E5C3B    call       004BF648
 004E5C40    mov        ecx,dword ptr [ebp-88]
 004E5C46    lea        edx,[ebp-6C]
 004E5C49    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E5C4E    mov        eax,dword ptr [eax]
 004E5C50    mov        ebx,dword ptr [eax]
 004E5C52    call       dword ptr [ebx+50]
 004E5C55    mov        byte ptr [ebp-9],0B
 004E5C59    xor        eax,eax
 004E5C5B    mov        al,byte ptr [ebp-6C]
 004E5C5E    cmp        eax,6
>004E5C61    ja         004E5D4C
 004E5C67    jmp        dword ptr [eax*4+4E5C6E]
 004E5C67    dd         4E5C8A
 004E5C67    dd         4E5C97
 004E5C67    dd         4E5CB5
 004E5C67    dd         4E5CD2
 004E5C67    dd         4E5CEB
 004E5C67    dd         4E5D10
 004E5C67    dd         4E5D35
 004E5C8A    lea        eax,[ebp-40]
 004E5C8D    call       Null
>004E5C92    jmp        004E5D4C
 004E5C97    lea        edx,[ebp-6C]
 004E5C9A    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5C9F    mov        eax,dword ptr [eax]
 004E5CA1    mov        ecx,dword ptr [eax]
 004E5CA3    call       dword ptr [ecx+24]
 004E5CA6    mov        edx,eax
 004E5CA8    lea        eax,[ebp-40]
 004E5CAB    call       @VarFromBool
>004E5CB0    jmp        004E5D4C
 004E5CB5    lea        edx,[ebp-6C]
 004E5CB8    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5CBD    mov        eax,dword ptr [eax]
 004E5CBF    mov        ecx,dword ptr [eax]
 004E5CC1    call       dword ptr [ecx+28]
 004E5CC4    mov        edx,eax
 004E5CC6    lea        eax,[ebp-40]
 004E5CC9    mov        cl,0FC
 004E5CCB    call       @VarFromInt
>004E5CD0    jmp        004E5D4C
 004E5CD2    lea        edx,[ebp-6C]
 004E5CD5    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5CDA    mov        eax,dword ptr [eax]
 004E5CDC    mov        ecx,dword ptr [eax]
 004E5CDE    call       dword ptr [ecx+2C]
 004E5CE1    lea        eax,[ebp-40]
 004E5CE4    call       @VarFromReal
>004E5CE9    jmp        004E5D4C
 004E5CEB    lea        ecx,[ebp-90]
 004E5CF1    lea        edx,[ebp-6C]
 004E5CF4    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5CF9    mov        eax,dword ptr [eax]
 004E5CFB    mov        ebx,dword ptr [eax]
 004E5CFD    call       dword ptr [ebx+30]
 004E5D00    mov        edx,dword ptr [ebp-90]
 004E5D06    lea        eax,[ebp-40]
 004E5D09    call       @VarFromLStr
>004E5D0E    jmp        004E5D4C
 004E5D10    lea        ecx,[ebp-94]
 004E5D16    lea        edx,[ebp-6C]
 004E5D19    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5D1E    mov        eax,dword ptr [eax]
 004E5D20    mov        ebx,dword ptr [eax]
 004E5D22    call       dword ptr [ebx+34]
 004E5D25    mov        edx,dword ptr [ebp-94]
 004E5D2B    lea        eax,[ebp-40]
 004E5D2E    call       @VarFromWStr
>004E5D33    jmp        004E5D4C
 004E5D35    lea        edx,[ebp-6C]
 004E5D38    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E5D3D    mov        eax,dword ptr [eax]
 004E5D3F    mov        ecx,dword ptr [eax]
 004E5D41    call       dword ptr [ecx+38]
 004E5D44    lea        eax,[ebp-40]
 004E5D47    call       @VarFromTDateTime
 004E5D4C    xor        ebx,ebx
 004E5D4E    cmp        byte ptr [ebp-9],9
>004E5D52    jne        004E5D78
 004E5D54    lea        edx,[ebp-98]
 004E5D5A    lea        eax,[ebp-40]
 004E5D5D    call       VarToStr
 004E5D62    mov        eax,dword ptr [ebp-98]
 004E5D68    call       @LStrLen
 004E5D6D    mov        ebx,eax
 004E5D6F    test       ebx,ebx
>004E5D71    jne        004E5D78
 004E5D73    mov        ebx,1
 004E5D78    cmp        byte ptr [ebp-9],0A
>004E5D7C    jne        004E5DA2
 004E5D7E    lea        edx,[ebp-9C]
 004E5D84    lea        eax,[ebp-40]
 004E5D87    call       VarToWideStr
 004E5D8C    mov        eax,dword ptr [ebp-9C]
 004E5D92    call       @WStrLen
 004E5D97    mov        ebx,eax
 004E5D99    test       ebx,ebx
>004E5D9B    jne        004E5DA2
 004E5D9D    mov        ebx,1
 004E5DA2    cmp        byte ptr [ebp-9],0B
>004E5DA6    jne        004E5E0D
 004E5DA8    lea        edx,[ebp-0A4]
 004E5DAE    lea        eax,[ebp-40]
 004E5DB1    call       VarToStr
 004E5DB6    mov        eax,dword ptr [ebp-0A4]
 004E5DBC    lea        edx,[ebp-0A0]
 004E5DC2    call       004BF678
 004E5DC7    mov        edx,dword ptr [ebp-0A0]
 004E5DCD    lea        eax,[ebp-40]
 004E5DD0    mov        ecx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E5DD6    call       @VarFromDynArray
 004E5DDB    lea        eax,[ebp-40]
 004E5DDE    call       VarType
 004E5DE3    test       ah,20
>004E5DE6    je         004E5E01
 004E5DE8    lea        eax,[ebp-40]
 004E5DEB    mov        edx,1
 004E5DF0    call       VarArrayHighBound
 004E5DF5    mov        ebx,eax
 004E5DF7    add        ebx,1
>004E5DFA    jno        004E5E01
 004E5DFC    call       @IntOver
 004E5E01    test       ebx,ebx
>004E5E03    jne        004E5E0D
 004E5E05    lea        eax,[ebp-40]
 004E5E08    call       Null
 004E5E0D    lea        eax,[ebp-40]
 004E5E10    call       VarIsNull
 004E5E15    test       al,al
>004E5E17    je         004E5E25
 004E5E19    mov        al,byte ptr [ebp-9]
 004E5E1C    call       004E1F40
 004E5E21    mov        esi,eax
>004E5E23    jmp        004E5E34
 004E5E25    lea        eax,[ebp-40]
 004E5E28    call       VarType
 004E5E2D    call       004E2004
 004E5E32    mov        esi,eax
 004E5E34    mov        eax,dword ptr [ebp-8]
 004E5E37    cmp        eax,dword ptr [ebp-10]
>004E5E3A    jg         004E6062
 004E5E40    lea        eax,[ebp-14]
 004E5E43    call       @IntfClear
 004E5E48    push       eax
 004E5E49    lea        eax,[ebp-0B4]
 004E5E4F    mov        edx,dword ptr [ebp-8]
 004E5E52    sub        edx,1
>004E5E55    jno        004E5E5C
 004E5E57    call       @IntOver
 004E5E5C    mov        cl,0FC
 004E5E5E    call       @OleVarFromInt
 004E5E63    push       dword ptr [ebp-0A8]
 004E5E69    push       dword ptr [ebp-0AC]
 004E5E6F    push       dword ptr [ebp-0B0]
 004E5E75    push       dword ptr [ebp-0B4]
 004E5E7B    lea        eax,[ebp-0B8]
 004E5E81    call       @IntfClear
 004E5E86    push       eax
 004E5E87    mov        eax,dword ptr [ebp-4]
 004E5E8A    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E5E90    push       eax
 004E5E91    mov        eax,dword ptr [eax]
 004E5E93    call       dword ptr [eax+4C]
 004E5E96    call       @CheckAutoResult
 004E5E9B    mov        eax,dword ptr [ebp-0B8]
 004E5EA1    push       eax
 004E5EA2    mov        eax,dword ptr [eax]
 004E5EA4    call       dword ptr [eax+30]
 004E5EA7    call       @CheckAutoResult
 004E5EAC    test       esi,esi
>004E5EAE    jns        004E5EB5
 004E5EB0    call       @BoundErr
 004E5EB5    push       esi
 004E5EB6    lea        eax,[ebp-0BC]
 004E5EBC    call       @IntfClear
 004E5EC1    push       eax
 004E5EC2    lea        eax,[ebp-0CC]
 004E5EC8    mov        edx,dword ptr [ebp-8]
 004E5ECB    sub        edx,1
>004E5ECE    jno        004E5ED5
 004E5ED0    call       @IntOver
 004E5ED5    mov        cl,0FC
 004E5ED7    call       @OleVarFromInt
 004E5EDC    push       dword ptr [ebp-0C0]
 004E5EE2    push       dword ptr [ebp-0C4]
 004E5EE8    push       dword ptr [ebp-0C8]
 004E5EEE    push       dword ptr [ebp-0CC]
 004E5EF4    lea        eax,[ebp-0D0]
 004E5EFA    call       @IntfClear
 004E5EFF    push       eax
 004E5F00    mov        eax,dword ptr [ebp-4]
 004E5F03    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E5F09    push       eax
 004E5F0A    mov        eax,dword ptr [eax]
 004E5F0C    call       dword ptr [eax+4C]
 004E5F0F    call       @CheckAutoResult
 004E5F14    mov        eax,dword ptr [ebp-0D0]
 004E5F1A    push       eax
 004E5F1B    mov        eax,dword ptr [eax]
 004E5F1D    call       dword ptr [eax+30]
 004E5F20    call       @CheckAutoResult
 004E5F25    mov        eax,dword ptr [ebp-0BC]
 004E5F2B    push       eax
 004E5F2C    mov        eax,dword ptr [eax]
 004E5F2E    call       dword ptr [eax+34]
 004E5F31    call       @CheckAutoResult
 004E5F36    push       ebx
 004E5F37    lea        eax,[ebp-0D4]
 004E5F3D    call       @IntfClear
 004E5F42    push       eax
 004E5F43    lea        eax,[ebp-0E4]
 004E5F49    mov        edx,dword ptr [ebp-8]
 004E5F4C    sub        edx,1
>004E5F4F    jno        004E5F56
 004E5F51    call       @IntOver
 004E5F56    mov        cl,0FC
 004E5F58    call       @OleVarFromInt
 004E5F5D    push       dword ptr [ebp-0D8]
 004E5F63    push       dword ptr [ebp-0DC]
 004E5F69    push       dword ptr [ebp-0E0]
 004E5F6F    push       dword ptr [ebp-0E4]
 004E5F75    lea        eax,[ebp-0E8]
 004E5F7B    call       @IntfClear
 004E5F80    push       eax
 004E5F81    mov        eax,dword ptr [ebp-4]
 004E5F84    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E5F8A    push       eax
 004E5F8B    mov        eax,dword ptr [eax]
 004E5F8D    call       dword ptr [eax+4C]
 004E5F90    call       @CheckAutoResult
 004E5F95    mov        eax,dword ptr [ebp-0E8]
 004E5F9B    push       eax
 004E5F9C    mov        eax,dword ptr [eax]
 004E5F9E    call       dword ptr [eax+30]
 004E5FA1    call       @CheckAutoResult
 004E5FA6    mov        eax,dword ptr [ebp-0D4]
 004E5FAC    push       eax
 004E5FAD    mov        eax,dword ptr [eax]
 004E5FAF    call       dword ptr [eax+50]
 004E5FB2    call       @CheckAutoResult
 004E5FB7    lea        eax,[ebp-0F8]
 004E5FBD    lea        edx,[ebp-40]
 004E5FC0    call       @OleVarFromVar
 004E5FC5    push       dword ptr [ebp-0EC]
 004E5FCB    push       dword ptr [ebp-0F0]
 004E5FD1    push       dword ptr [ebp-0F4]
 004E5FD7    push       dword ptr [ebp-0F8]
 004E5FDD    lea        eax,[ebp-0FC]
 004E5FE3    call       @IntfClear
 004E5FE8    push       eax
 004E5FE9    lea        eax,[ebp-10C]
 004E5FEF    mov        edx,dword ptr [ebp-8]
 004E5FF2    sub        edx,1
>004E5FF5    jno        004E5FFC
 004E5FF7    call       @IntOver
 004E5FFC    mov        cl,0FC
 004E5FFE    call       @OleVarFromInt
 004E6003    push       dword ptr [ebp-100]
 004E6009    push       dword ptr [ebp-104]
 004E600F    push       dword ptr [ebp-108]
 004E6015    push       dword ptr [ebp-10C]
 004E601B    lea        eax,[ebp-110]
 004E6021    call       @IntfClear
 004E6026    push       eax
 004E6027    mov        eax,dword ptr [ebp-4]
 004E602A    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E6030    push       eax
 004E6031    mov        eax,dword ptr [eax]
 004E6033    call       dword ptr [eax+4C]
 004E6036    call       @CheckAutoResult
 004E603B    mov        eax,dword ptr [ebp-110]
 004E6041    push       eax
 004E6042    mov        eax,dword ptr [eax]
 004E6044    call       dword ptr [eax+30]
 004E6047    call       @CheckAutoResult
 004E604C    mov        eax,dword ptr [ebp-0FC]
 004E6052    push       eax
 004E6053    mov        eax,dword ptr [eax]
 004E6055    call       dword ptr [eax+2C]
 004E6058    call       @CheckAutoResult
>004E605D    jmp        004E6129
 004E6062    lea        eax,[ebp-114]
 004E6068    call       @IntfClear
 004E606D    push       eax
 004E606E    lea        eax,[ebp-124]
 004E6074    lea        edx,[ebp-40]
 004E6077    call       @OleVarFromVar
 004E607C    push       dword ptr [ebp-118]
 004E6082    push       dword ptr [ebp-11C]
 004E6088    push       dword ptr [ebp-120]
 004E608E    push       dword ptr [ebp-124]
 004E6094    push       ebx
 004E6095    push       1
 004E6097    test       esi,esi
>004E6099    jns        004E60A0
 004E609B    call       @BoundErr
 004E60A0    push       esi
 004E60A1    lea        edx,[ebp-130]
 004E60A7    mov        eax,dword ptr [ebp-8]
 004E60AA    call       IntToStr
 004E60AF    mov        ecx,dword ptr [ebp-130]
 004E60B5    lea        eax,[ebp-12C]
 004E60BB    mov        edx,4E6320; 'P'
 004E60C0    call       @LStrCat3
 004E60C5    mov        edx,dword ptr [ebp-12C]
 004E60CB    lea        eax,[ebp-128]
 004E60D1    call       @WStrFromLStr
 004E60D6    mov        eax,dword ptr [ebp-128]
 004E60DC    push       eax
 004E60DD    mov        eax,dword ptr [ebp-4]
 004E60E0    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E60E6    push       eax
 004E60E7    mov        eax,dword ptr [eax]
 004E60E9    call       dword ptr [eax+48]
 004E60EC    call       @CheckAutoResult
 004E60F1    mov        eax,dword ptr [ebp-114]
 004E60F7    push       eax
 004E60F8    lea        eax,[ebp-134]
 004E60FE    call       @IntfClear
 004E6103    push       eax
 004E6104    mov        eax,dword ptr [ebp-4]
 004E6107    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E610D    push       eax
 004E610E    mov        eax,dword ptr [eax]
 004E6110    call       dword ptr [eax+4C]
 004E6113    call       @CheckAutoResult
 004E6118    mov        eax,dword ptr [ebp-134]
 004E611E    push       eax
 004E611F    mov        eax,dword ptr [eax]
 004E6121    call       dword ptr [eax+28]
 004E6124    call       @CheckAutoResult
 004E6129    xor        eax,eax
 004E612B    pop        edx
 004E612C    pop        ecx
 004E612D    pop        ecx
 004E612E    mov        dword ptr fs:[eax],edx
 004E6131    push       4E62CE
 004E6136    lea        eax,[ebp-134]
 004E613C    call       @IntfClear
 004E6141    lea        eax,[ebp-130]
 004E6147    mov        edx,2
 004E614C    call       @LStrArrayClr
 004E6151    lea        eax,[ebp-128]
 004E6157    call       @WStrClr
 004E615C    lea        eax,[ebp-124]
 004E6162    call       @VarClr
 004E6167    lea        eax,[ebp-114]
 004E616D    call       @IntfClear
 004E6172    lea        eax,[ebp-110]
 004E6178    call       @IntfClear
 004E617D    lea        eax,[ebp-10C]
 004E6183    call       @VarClr
 004E6188    lea        eax,[ebp-0FC]
 004E618E    call       @IntfClear
 004E6193    lea        eax,[ebp-0F8]
 004E6199    call       @VarClr
 004E619E    lea        eax,[ebp-0E8]
 004E61A4    call       @IntfClear
 004E61A9    lea        eax,[ebp-0E4]
 004E61AF    call       @VarClr
 004E61B4    lea        eax,[ebp-0D4]
 004E61BA    call       @IntfClear
 004E61BF    lea        eax,[ebp-0D0]
 004E61C5    call       @IntfClear
 004E61CA    lea        eax,[ebp-0CC]
 004E61D0    call       @VarClr
 004E61D5    lea        eax,[ebp-0BC]
 004E61DB    call       @IntfClear
 004E61E0    lea        eax,[ebp-0B8]
 004E61E6    call       @IntfClear
 004E61EB    lea        eax,[ebp-0B4]
 004E61F1    call       @VarClr
 004E61F6    lea        eax,[ebp-0A4]
 004E61FC    call       @LStrClr
 004E6201    lea        eax,[ebp-0A0]
 004E6207    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E620D    call       @DynArrayClear
 004E6212    lea        eax,[ebp-9C]
 004E6218    call       @WStrClr
 004E621D    lea        eax,[ebp-98]
 004E6223    call       @LStrClr
 004E6228    lea        eax,[ebp-94]
 004E622E    call       @WStrClr
 004E6233    lea        eax,[ebp-90]
 004E6239    call       @LStrClr
 004E623E    lea        eax,[ebp-8C]
 004E6244    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E624A    call       @DynArrayClear
 004E624F    lea        eax,[ebp-88]
 004E6255    call       @LStrClr
 004E625A    lea        eax,[ebp-84]
 004E6260    call       @WStrClr
 004E6265    lea        eax,[ebp-80]
 004E6268    call       @LStrClr
 004E626D    lea        eax,[ebp-7C]
 004E6270    call       @IntfClear
 004E6275    lea        eax,[ebp-78]
 004E6278    call       @IntfClear
 004E627D    lea        eax,[ebp-74]
 004E6280    call       @IntfClear
 004E6285    lea        eax,[ebp-6C]
 004E6288    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E628E    call       @FinalizeRecord
 004E6293    lea        eax,[ebp-40]
 004E6296    call       @VarClr
 004E629B    lea        eax,[ebp-24]
 004E629E    call       @IntfClear
 004E62A3    lea        eax,[ebp-20]
 004E62A6    call       @IntfClear
 004E62AB    lea        eax,[ebp-1C]
 004E62AE    call       @IntfClear
 004E62B3    lea        eax,[ebp-18]
 004E62B6    call       @IntfClear
 004E62BB    lea        eax,[ebp-14]
 004E62BE    call       @IntfClear
 004E62C3    ret
<004E62C4    jmp        @HandleFinally
<004E62C9    jmp        004E6136
 004E62CE    pop        edi
 004E62CF    pop        esi
 004E62D0    pop        ebx
 004E62D1    mov        esp,ebp
 004E62D3    pop        ebp
 004E62D4    ret        4
*}
//end;

//004E6324
//procedure sub_004E6324(?:?);
//begin
{*
 004E6324    push       ebp
 004E6325    mov        ebp,esp
 004E6327    push       ebx
 004E6328    push       esi
 004E6329    mov        esi,edx
 004E632B    mov        ebx,eax
 004E632D    mov        eax,ebx
 004E632F    mov        edx,dword ptr [eax]
 004E6331    call       dword ptr [edx+88]; TZAdoCallableStatement.sub_004E6374
 004E6337    test       al,al
>004E6339    jne        004E634C
 004E633B    mov        eax,ebx
 004E633D    mov        edx,dword ptr [eax]
 004E633F    call       dword ptr [edx+40]; TZAdoCallableStatement.sub_004E5768
 004E6342    test       al,al
>004E6344    jne        004E634C
 004E6346    cmp        dword ptr [ebx+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
<004E634A    jg         004E633B
 004E634C    mov        eax,esi
 004E634E    mov        edx,dword ptr [ebx+20]; TZAdoCallableStatement.?f20:IZResultSet
 004E6351    call       @IntfCopy
 004E6356    pop        esi
 004E6357    pop        ebx
 004E6358    pop        ebp
 004E6359    ret
*}
//end;

//004E635C
//function sub_004E635C:?;
//begin
{*
 004E635C    push       ebp
 004E635D    mov        ebp,esp
 004E635F    push       ebx
 004E6360    mov        ebx,eax
 004E6362    mov        eax,ebx
 004E6364    mov        edx,dword ptr [eax]
 004E6366    call       dword ptr [edx+88]; TZAdoCallableStatement.sub_004E6374
 004E636C    mov        eax,dword ptr [ebx+1C]; TZAdoCallableStatement.?f1C:Integer
 004E636F    pop        ebx
 004E6370    pop        ebp
 004E6371    ret
*}
//end;

//004E6374
//function sub_004E6374:?;
//begin
{*
 004E6374    push       ebp
 004E6375    mov        ebp,esp
 004E6377    mov        ecx,7
 004E637C    push       0
 004E637E    push       0
 004E6380    dec        ecx
<004E6381    jne        004E637C
 004E6383    push       ecx
 004E6384    push       ebx
 004E6385    push       esi
 004E6386    push       edi
 004E6387    mov        dword ptr [ebp-4],eax
 004E638A    xor        eax,eax
 004E638C    push       ebp
 004E638D    push       4E658C
 004E6392    push       dword ptr fs:[eax]
 004E6395    mov        dword ptr fs:[eax],esp
 004E6398    xor        edx,edx
 004E639A    mov        eax,dword ptr [ebp-4]
 004E639D    mov        ecx,dword ptr [eax]
 004E639F    call       dword ptr [ecx]; TZAdoCallableStatement.sub_004DFE2C
 004E63A1    mov        eax,dword ptr [ebp-4]
 004E63A4    mov        dword ptr [eax+1C],0FFFFFFFF; TZAdoCallableStatement.?f1C:Integer
 004E63AB    xor        eax,eax
 004E63AD    push       ebp
 004E63AE    push       4E6500
 004E63B3    push       dword ptr fs:[eax]
 004E63B6    mov        dword ptr fs:[eax],esp
 004E63B9    mov        eax,dword ptr [ebp-4]
 004E63BC    mov        edx,dword ptr [eax+48]; TZAdoCallableStatement.?f48:String
 004E63BF    mov        eax,dword ptr [ebp-4]
 004E63C2    call       004E5280
 004E63C7    test       al,al
>004E63C9    je         004E647D
 004E63CF    lea        edx,[ebp-1C]
 004E63D2    mov        eax,[004DE788]; CoRecordset
 004E63D7    call       004DE8A8
 004E63DC    mov        edx,dword ptr [ebp-1C]
 004E63DF    mov        eax,dword ptr [ebp-4]
 004E63E2    add        eax,78; TZAdoCallableStatement.?f78:Recordset15
 004E63E5    call       @IntfCopy
 004E63EA    mov        eax,dword ptr [ebp-4]
 004E63ED    mov        eax,dword ptr [eax+10]; TZAdoCallableStatement.?f10:dword
 004E63F0    push       eax
 004E63F1    mov        eax,dword ptr [ebp-4]
 004E63F4    mov        eax,dword ptr [eax+78]; TZAdoCallableStatement.?f78:Recordset15
 004E63F7    push       eax
 004E63F8    mov        eax,dword ptr [eax]
 004E63FA    call       dword ptr [eax+64]
 004E63FD    call       @CheckAutoResult
 004E6402    lea        eax,[ebp-20]
 004E6405    call       @IntfClear
 004E640A    push       eax
 004E640B    mov        eax,dword ptr [ebp-4]
 004E640E    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E6414    push       eax
 004E6415    mov        eax,dword ptr [eax]
 004E6417    call       dword ptr [eax+20]
 004E641A    call       @CheckAutoResult
 004E641F    mov        eax,dword ptr [ebp-20]
 004E6422    push       eax
 004E6423    mov        eax,dword ptr [ebp-4]
 004E6426    mov        eax,dword ptr [eax+78]; TZAdoCallableStatement.?f78:Recordset15
 004E6429    push       eax
 004E642A    mov        eax,dword ptr [eax]
 004E642C    call       dword ptr [eax+28]
 004E642F    call       @CheckAutoResult
 004E6434    push       20
 004E6436    push       3
 004E6438    push       0
 004E643A    mov        eax,[0061B284]; ^EmptyParam:Variant
 004E643F    push       dword ptr [eax+0C]
 004E6442    push       dword ptr [eax+8]
 004E6445    push       dword ptr [eax+4]
 004E6448    push       dword ptr [eax]
 004E644A    lea        eax,[ebp-30]
 004E644D    mov        edx,dword ptr [ebp-4]
 004E6450    mov        edx,dword ptr [edx+80]; TZAdoCallableStatement.?f80:_Command
 004E6456    call       @VarFromDisp
 004E645B    push       dword ptr [ebp-24]
 004E645E    push       dword ptr [ebp-28]
 004E6461    push       dword ptr [ebp-2C]
 004E6464    push       dword ptr [ebp-30]
 004E6467    mov        eax,dword ptr [ebp-4]
 004E646A    mov        eax,dword ptr [eax+78]; TZAdoCallableStatement.?f78:Recordset15
 004E646D    push       eax
 004E646E    mov        eax,dword ptr [eax]
 004E6470    call       dword ptr [eax+0A0]
 004E6476    call       @CheckAutoResult
>004E647B    jmp        004E64B9
 004E647D    lea        eax,[ebp-34]
 004E6480    call       @IntfClear
 004E6485    push       eax
 004E6486    push       0FF
 004E6488    mov        eax,[0061B284]; ^EmptyParam:Variant
 004E648D    push       eax
 004E648E    lea        eax,[ebp-18]
 004E6491    call       @VarClr
 004E6496    push       eax
 004E6497    mov        eax,dword ptr [ebp-4]
 004E649A    mov        eax,dword ptr [eax+80]; TZAdoCallableStatement.?f80:_Command
 004E64A0    push       eax
 004E64A1    mov        eax,dword ptr [eax]
 004E64A3    call       dword ptr [eax+44]
 004E64A6    call       @CheckAutoResult
 004E64AB    mov        edx,dword ptr [ebp-34]
 004E64AE    mov        eax,dword ptr [ebp-4]
 004E64B1    add        eax,78; TZAdoCallableStatement.?f78:Recordset15
 004E64B4    call       @IntfCopy
 004E64B9    lea        eax,[ebp-18]
 004E64BC    call       @VarToInteger
 004E64C1    mov        edx,eax
 004E64C3    mov        eax,dword ptr [ebp-4]
 004E64C6    mov        ecx,dword ptr [eax]
 004E64C8    call       dword ptr [ecx+140]; TZAdoCallableStatement.sub_004E5614
 004E64CE    mov        ebx,eax
 004E64D0    mov        eax,dword ptr [ebp-4]
 004E64D3    mov        eax,dword ptr [eax+48]; TZAdoCallableStatement.?f48:String
 004E64D6    push       eax
 004E64D7    lea        edx,[ebp-38]
 004E64DA    mov        eax,dword ptr [ebp-4]
 004E64DD    mov        eax,dword ptr [eax+7C]; TZAdoCallableStatement.?f7C:IZPlainDriver
 004E64E0    mov        ecx,dword ptr [eax]
 004E64E2    call       dword ptr [ecx+0C]
 004E64E5    mov        ecx,dword ptr [ebp-38]
 004E64E8    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004E64ED    mov        eax,dword ptr [eax]
 004E64EF    mov        dl,3
 004E64F1    mov        esi,dword ptr [eax]
 004E64F3    call       dword ptr [esi+3C]
 004E64F6    xor        eax,eax
 004E64F8    pop        edx
 004E64F9    pop        ecx
 004E64FA    pop        ecx
 004E64FB    mov        dword ptr fs:[eax],edx
>004E64FE    jmp        004E6549
<004E6500    jmp        @HandleOnException
 004E6505    dd        1
 004E6509    dd        4087B0;Exception
 004E650D    dd        4E6511
 004E6511    mov        ebx,eax
 004E6513    mov        eax,dword ptr [ebp-4]
 004E6516    mov        eax,dword ptr [eax+48]; TZAdoCallableStatement.?f48:String
 004E6519    push       eax
 004E651A    push       0
 004E651C    mov        eax,dword ptr [ebx+4]; Exception.?f4:String
 004E651F    push       eax
 004E6520    lea        edx,[ebp-3C]
 004E6523    mov        eax,dword ptr [ebp-4]
 004E6526    mov        eax,dword ptr [eax+7C]; TZAdoCallableStatement.?f7C:IZPlainDriver
 004E6529    mov        ecx,dword ptr [eax]
 004E652B    call       dword ptr [ecx+0C]
 004E652E    mov        ecx,dword ptr [ebp-3C]
 004E6531    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 004E6536    mov        eax,dword ptr [eax]
 004E6538    mov        dl,3
 004E653A    mov        ebx,dword ptr [eax]
 004E653C    call       dword ptr [ebx+40]
 004E653F    call       @RaiseAgain
 004E6544    call       @DoneExcept
 004E6549    xor        eax,eax
 004E654B    pop        edx
 004E654C    pop        ecx
 004E654D    pop        ecx
 004E654E    mov        dword ptr fs:[eax],edx
 004E6551    push       4E6593
 004E6556    lea        eax,[ebp-3C]
 004E6559    mov        edx,2
 004E655E    call       @LStrArrayClr
 004E6563    lea        eax,[ebp-34]
 004E6566    call       @IntfClear
 004E656B    lea        eax,[ebp-30]
 004E656E    call       @VarClr
 004E6573    lea        eax,[ebp-20]
 004E6576    call       @IntfClear
 004E657B    lea        eax,[ebp-1C]
 004E657E    call       @IntfClear
 004E6583    lea        eax,[ebp-18]
 004E6586    call       @VarClr
 004E658B    ret
<004E658C    jmp        @HandleFinally
<004E6591    jmp        004E6556
 004E6593    mov        eax,ebx
 004E6595    pop        edi
 004E6596    pop        esi
 004E6597    pop        ebx
 004E6598    mov        esp,ebp
 004E659A    pop        ebp
 004E659B    ret
*}
//end;

//004E659C
//constructor TZAdoCallableStatement.Create(?:TZAdoCallableStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 004E659C    push       ebp
 004E659D    mov        ebp,esp
 004E659F    push       ecx
 004E65A0    push       ebx
 004E65A1    push       esi
 004E65A2    test       dl,dl
>004E65A4    je         004E65AE
 004E65A6    add        esp,0FFFFFFF0
 004E65A9    call       @ClassCreate
 004E65AE    mov        dword ptr [ebp-4],ecx
 004E65B1    mov        ebx,edx
 004E65B3    mov        esi,eax
 004E65B5    mov        eax,dword ptr [ebp-4]
 004E65B8    call       @IntfAddRef
 004E65BD    mov        eax,dword ptr [ebp+10]
 004E65C0    call       @IntfAddRef
 004E65C5    mov        eax,dword ptr [ebp+0C]
 004E65C8    call       @LStrAddRef
 004E65CD    xor        eax,eax
 004E65CF    push       ebp
 004E65D0    push       4E662C
 004E65D5    push       dword ptr fs:[eax]
 004E65D8    mov        dword ptr fs:[eax],esp
 004E65DB    mov        eax,dword ptr [ebp+10]
 004E65DE    push       eax
 004E65DF    mov        eax,dword ptr [ebp+0C]
 004E65E2    push       eax
 004E65E3    mov        eax,dword ptr [ebp+8]
 004E65E6    push       eax
 004E65E7    mov        ecx,dword ptr [ebp-4]
 004E65EA    xor        edx,edx
 004E65EC    mov        eax,esi
 004E65EE    call       TZAdoPreparedStatement.Create
 004E65F3    push       4
 004E65F5    mov        eax,dword ptr [esi+80]; TZAdoCallableStatement.?f80:_Command
 004E65FB    push       eax
 004E65FC    mov        eax,dword ptr [eax]
 004E65FE    call       dword ptr [eax+50]
 004E6601    call       @CheckAutoResult
 004E6606    xor        eax,eax
 004E6608    pop        edx
 004E6609    pop        ecx
 004E660A    pop        ecx
 004E660B    mov        dword ptr fs:[eax],edx
 004E660E    push       4E6633
 004E6613    lea        eax,[ebp-4]
 004E6616    call       @IntfClear
 004E661B    lea        eax,[ebp+0C]
 004E661E    call       @LStrClr
 004E6623    lea        eax,[ebp+10]
 004E6626    call       @IntfClear
 004E662B    ret
<004E662C    jmp        @HandleFinally
<004E6631    jmp        004E6613
 004E6633    mov        eax,esi
 004E6635    test       bl,bl
>004E6637    je         004E6648
 004E6639    call       @AfterConstruction
 004E663E    pop        dword ptr fs:[0]
 004E6645    add        esp,0C
 004E6648    mov        eax,esi
 004E664A    pop        esi
 004E664B    pop        ebx
 004E664C    pop        ecx
 004E664D    pop        ebp
 004E664E    ret        0C
*}
//end;

//004E6654
//procedure sub_004E6654(?:?; ?:?);
//begin
{*
 004E6654    push       ebp
 004E6655    mov        ebp,esp
 004E6657    push       ecx
 004E6658    mov        ecx,6
 004E665D    push       0
 004E665F    push       0
 004E6661    dec        ecx
<004E6662    jne        004E665D
 004E6664    xchg       ecx,dword ptr [ebp-4]
 004E6667    push       ebx
 004E6668    push       esi
 004E6669    push       edi
 004E666A    mov        esi,ecx
 004E666C    mov        dword ptr [ebp-4],edx
 004E666F    mov        ebx,eax
 004E6671    xor        eax,eax
 004E6673    push       ebp
 004E6674    push       4E6833
 004E6679    push       dword ptr fs:[eax]
 004E667C    mov        dword ptr fs:[eax],esp
 004E667F    mov        eax,dword ptr [ebp-4]
 004E6682    cmp        eax,dword ptr [ebx+68]; TZAdoCallableStatement.?f68:dword
>004E6685    jle        004E669F
 004E6687    mov        eax,esi
 004E6689    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E668F    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E6695    call       @CopyRecord
>004E669A    jmp        004E67EC
 004E669F    lea        eax,[ebp-18]
 004E66A2    call       @VarClr
 004E66A7    push       eax
 004E66A8    lea        eax,[ebp-1C]
 004E66AB    call       @IntfClear
 004E66B0    push       eax
 004E66B1    lea        eax,[ebp-2C]
 004E66B4    mov        edx,dword ptr [ebp-4]
 004E66B7    sub        edx,1
>004E66BA    jno        004E66C1
 004E66BC    call       @IntOver
 004E66C1    mov        cl,0FC
 004E66C3    call       @OleVarFromInt
 004E66C8    push       dword ptr [ebp-20]
 004E66CB    push       dword ptr [ebp-24]
 004E66CE    push       dword ptr [ebp-28]
 004E66D1    push       dword ptr [ebp-2C]
 004E66D4    lea        eax,[ebp-30]
 004E66D7    call       @IntfClear
 004E66DC    push       eax
 004E66DD    mov        eax,dword ptr [ebx+80]; TZAdoCallableStatement.?f80:_Command
 004E66E3    push       eax
 004E66E4    mov        eax,dword ptr [eax]
 004E66E6    call       dword ptr [eax+4C]
 004E66E9    call       @CheckAutoResult
 004E66EE    mov        eax,dword ptr [ebp-30]
 004E66F1    push       eax
 004E66F2    mov        eax,dword ptr [eax]
 004E66F4    call       dword ptr [eax+30]
 004E66F7    call       @CheckAutoResult
 004E66FC    mov        eax,dword ptr [ebp-1C]
 004E66FF    push       eax
 004E6700    mov        eax,dword ptr [eax]
 004E6702    call       dword ptr [eax+28]
 004E6705    call       @CheckAutoResult
 004E670A    lea        eax,[ebp-18]
 004E670D    call       VarType
 004E6712    movzx      eax,ax
 004E6715    cmp        eax,8
>004E6718    jg         004E6735
>004E671A    je         004E674A
 004E671C    add        eax,0FFFFFFFE
 004E671F    sub        eax,2
>004E6722    jb         004E676B
 004E6724    sub        eax,2
>004E6727    jb         004E67BF
 004E672D    dec        eax
>004E672E    je         004E67A0
>004E6730    jmp        004E67DE
 004E6735    sub        eax,10
>004E6738    je         004E6786
 004E673A    sub        eax,4
>004E673D    je         004E6786
 004E673F    sub        eax,0EC
>004E6744    jne        004E67DE
 004E674A    lea        eax,[ebp-34]
 004E674D    lea        edx,[ebp-18]
 004E6750    call       @VarToLStr
 004E6755    mov        ecx,dword ptr [ebp-34]
 004E6758    mov        edx,esi
 004E675A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E675F    mov        eax,dword ptr [eax]
 004E6761    mov        edi,dword ptr [eax]
 004E6763    call       dword ptr [edi+50]
>004E6766    jmp        004E67EC
 004E676B    lea        eax,[ebp-18]
 004E676E    call       @VarToInteger
 004E6773    cdq
 004E6774    push       edx
 004E6775    push       eax
 004E6776    mov        edx,esi
 004E6778    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E677D    mov        eax,dword ptr [eax]
 004E677F    mov        ecx,dword ptr [eax]
 004E6781    call       dword ptr [ecx+48]
>004E6784    jmp        004E67EC
 004E6786    lea        eax,[ebp-18]
 004E6789    call       @VarToInt64
 004E678E    push       edx
 004E678F    push       eax
 004E6790    mov        edx,esi
 004E6792    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E6797    mov        eax,dword ptr [eax]
 004E6799    mov        ecx,dword ptr [eax]
 004E679B    call       dword ptr [ecx+48]
>004E679E    jmp        004E67EC
 004E67A0    lea        eax,[ebp-18]
 004E67A3    call       @VarToReal
 004E67A8    add        esp,0FFFFFFF8
 004E67AB    fstp       qword ptr [esp]
 004E67AE    wait
 004E67AF    mov        edx,esi
 004E67B1    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E67B6    mov        eax,dword ptr [eax]
 004E67B8    mov        ecx,dword ptr [eax]
 004E67BA    call       dword ptr [ecx+58]
>004E67BD    jmp        004E67EC
 004E67BF    lea        eax,[ebp-18]
 004E67C2    call       @VarToReal
 004E67C7    add        esp,0FFFFFFF4
 004E67CA    fstp       tbyte ptr [esp]
 004E67CD    wait
 004E67CE    mov        edx,esi
 004E67D0    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E67D5    mov        eax,dword ptr [eax]
 004E67D7    mov        ecx,dword ptr [eax]
 004E67D9    call       dword ptr [ecx+4C]
>004E67DC    jmp        004E67EC
 004E67DE    mov        edx,esi
 004E67E0    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E67E5    mov        eax,dword ptr [eax]
 004E67E7    mov        ecx,dword ptr [eax]
 004E67E9    call       dword ptr [ecx+10]
 004E67EC    mov        edx,esi
 004E67EE    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E67F3    mov        eax,dword ptr [eax]
 004E67F5    mov        ecx,dword ptr [eax]
 004E67F7    call       dword ptr [ecx+0C]
 004E67FA    mov        byte ptr [ebx+6C],al; TZAdoCallableStatement.?f6C:byte
 004E67FD    xor        eax,eax
 004E67FF    pop        edx
 004E6800    pop        ecx
 004E6801    pop        ecx
 004E6802    mov        dword ptr fs:[eax],edx
 004E6805    push       4E683A
 004E680A    lea        eax,[ebp-34]
 004E680D    call       @LStrClr
 004E6812    lea        eax,[ebp-30]
 004E6815    call       @IntfClear
 004E681A    lea        eax,[ebp-2C]
 004E681D    call       @VarClr
 004E6822    lea        eax,[ebp-1C]
 004E6825    call       @IntfClear
 004E682A    lea        eax,[ebp-18]
 004E682D    call       @VarClr
 004E6832    ret
<004E6833    jmp        @HandleFinally
<004E6838    jmp        004E680A
 004E683A    pop        edi
 004E683B    pop        esi
 004E683C    pop        ebx
 004E683D    mov        esp,ebp
 004E683F    pop        ebp
 004E6840    ret
*}
//end;

end.