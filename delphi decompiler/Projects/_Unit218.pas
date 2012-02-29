{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit218;

interface

uses
  Classes, Windows, Graphics, _Unit134, Types, ZDbcDbLib, ZPlainDbLibDriver, _Unit139;

type
  TZDBLibResultSet = class(TZAbstractResultSet)
  public
    f3C:String;//f3C
    f40:dword;//f40
    f44:TSmallIntDynArray;//f44
    f48:dword;//f48
    f4C:IZDBLibConnection;//f4C
    f50:IZDBLibPlainDriver;//f50
    destructor Destroy; virtual;
    procedure sub_004F050C; virtual;
    //function sub_004F10E4:?; virtual;
    procedure sub_004F06E4; virtual;
    //function sub_004F07A0(?:?):Boolean; virtual;
    //procedure sub_004F07D4(?:?; ?:?); virtual;
    //function sub_004F0978(?:?):?; virtual;
    //function sub_004F0A38(?:?):?; virtual;
    //function sub_004F0AF4(?:?):?; virtual;
    //function sub_004F0BB8(?:?):?; virtual;
    //procedure sub_004F0C74(?:?); virtual;
    //procedure sub_004F0C9C(?:?); virtual;
    //procedure sub_004F0D5C(?:?); virtual;
    //procedure sub_004F0E24(?:?); virtual;
    //procedure sub_004F0E48(?:?; ?:?); virtual;
    //procedure sub_004F0F04(?:?); virtual;
    //procedure sub_004F0F2C(?:?); virtual;
    //procedure sub_004F0F54(?:?); virtual;
    //procedure sub_004F1054(?:?; ?:?); virtual;
    //function sub_004F10D4():?; virtual;
    //constructor Create(?:TZDBLibResultSet; _Dv__:Boolean; ?:?);
  end;
  TZDBLibCachedResolver = class(TZGenericCachedResolver)
  public
    f30:dword;//f30
    //procedure sub_004F1238(?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZDBLibCachedResolver; _Dv__:Boolean; ?:?);
  end;

implementation

{$R *.DFM}

//004F03CC
//constructor TZDBLibResultSet.Create(?:TZDBLibResultSet; _Dv__:Boolean; ?:?);
//begin
{*
 004F03CC    push       ebp
 004F03CD    mov        ebp,esp
 004F03CF    push       0
 004F03D1    push       0
 004F03D3    push       0
 004F03D5    push       ebx
 004F03D6    push       esi
 004F03D7    test       dl,dl
>004F03D9    je         004F03E3
 004F03DB    add        esp,0FFFFFFF0
 004F03DE    call       @ClassCreate
 004F03E3    mov        dword ptr [ebp-4],ecx
 004F03E6    mov        ebx,edx
 004F03E8    mov        esi,eax
 004F03EA    mov        eax,dword ptr [ebp-4]
 004F03ED    call       @IntfAddRef
 004F03F2    mov        eax,dword ptr [ebp+8]
 004F03F5    call       @LStrAddRef
 004F03FA    xor        eax,eax
 004F03FC    push       ebp
 004F03FD    push       4F04A4
 004F0402    push       dword ptr fs:[eax]
 004F0405    mov        dword ptr fs:[eax],esp
 004F0408    mov        eax,dword ptr [ebp+8]
 004F040B    push       eax
 004F040C    push       0
 004F040E    mov        ecx,dword ptr [ebp-4]
 004F0411    xor        edx,edx
 004F0413    mov        eax,esi
 004F0415    call       004D3FC8
 004F041A    lea        eax,[esi+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F041D    call       @IntfClear
 004F0422    push       eax
 004F0423    push       4F04CC
 004F0428    lea        edx,[ebp-8]
 004F042B    mov        eax,dword ptr [ebp-4]
 004F042E    mov        ecx,dword ptr [eax]
 004F0430    call       dword ptr [ecx+88]
 004F0436    mov        eax,dword ptr [ebp-8]
 004F0439    push       eax
 004F043A    mov        eax,dword ptr [eax]
 004F043C    call       dword ptr [eax]
 004F043E    lea        edx,[ebp-0C]
 004F0441    mov        eax,dword ptr [esi+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0444    mov        ecx,dword ptr [eax]
 004F0446    call       dword ptr [ecx+94]
 004F044C    mov        edx,dword ptr [ebp-0C]
 004F044F    lea        eax,[esi+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0452    call       @IntfCopy
 004F0457    mov        eax,dword ptr [esi+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F045A    mov        edx,dword ptr [eax]
 004F045C    call       dword ptr [edx+98]
 004F0462    mov        dword ptr [esi+40],eax; TZDBLibResultSet.?f40:dword
 004F0465    lea        eax,[esi+3C]; TZDBLibResultSet.?f3C:String
 004F0468    mov        edx,dword ptr [ebp+8]
 004F046B    call       @LStrAsg
 004F0470    mov        eax,esi
 004F0472    mov        edx,dword ptr [eax]
 004F0474    call       dword ptr [edx]; TZDBLibResultSet.sub_004F050C
 004F0476    xor        eax,eax
 004F0478    pop        edx
 004F0479    pop        ecx
 004F047A    pop        ecx
 004F047B    mov        dword ptr fs:[eax],edx
 004F047E    push       4F04AB
 004F0483    lea        eax,[ebp-0C]
 004F0486    call       @IntfClear
 004F048B    lea        eax,[ebp-8]
 004F048E    call       @IntfClear
 004F0493    lea        eax,[ebp-4]
 004F0496    call       @IntfClear
 004F049B    lea        eax,[ebp+8]
 004F049E    call       @LStrClr
 004F04A3    ret
<004F04A4    jmp        @HandleFinally
<004F04A9    jmp        004F0483
 004F04AB    mov        eax,esi
 004F04AD    test       bl,bl
>004F04AF    je         004F04C0
 004F04B1    call       @AfterConstruction
 004F04B6    pop        dword ptr fs:[0]
 004F04BD    add        esp,0C
 004F04C0    mov        eax,esi
 004F04C2    pop        esi
 004F04C3    pop        ebx
 004F04C4    mov        esp,ebp
 004F04C6    pop        ebp
 004F04C7    ret        4
*}
//end;

//004F04DC
destructor TZDBLibResultSet.Destroy;
begin
{*
 004F04DC    push       ebp
 004F04DD    mov        ebp,esp
 004F04DF    push       ebx
 004F04E0    push       esi
 004F04E1    call       @BeforeDestruction
 004F04E6    mov        ebx,edx
 004F04E8    mov        esi,eax
 004F04EA    mov        eax,esi
 004F04EC    mov        edx,dword ptr [eax]
 004F04EE    call       dword ptr [edx+8]; TZDBLibResultSet.sub_004F06E4
 004F04F1    mov        edx,ebx
 004F04F3    and        dl,0FC
 004F04F6    mov        eax,esi
 004F04F8    call       TZAbstractResultSet.Destroy
 004F04FD    test       bl,bl
>004F04FF    jle        004F0508
 004F0501    mov        eax,esi
 004F0503    call       @ClassDestroy
 004F0508    pop        esi
 004F0509    pop        ebx
 004F050A    pop        ebp
 004F050B    ret
*}
end;

//004F050C
procedure sub_004F050C;
begin
{*
 004F050C    push       ebp
 004F050D    mov        ebp,esp
 004F050F    add        esp,0FFFFFFEC
 004F0512    push       ebx
 004F0513    push       esi
 004F0514    push       edi
 004F0515    xor        edx,edx
 004F0517    mov        dword ptr [ebp-14],edx
 004F051A    mov        dword ptr [ebp-8],edx
 004F051D    mov        ebx,eax
 004F051F    xor        eax,eax
 004F0521    push       ebp
 004F0522    push       4F06D4
 004F0527    push       dword ptr fs:[eax]
 004F052A    mov        dword ptr fs:[eax],esp
 004F052D    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0530    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0533    mov        ecx,dword ptr [eax]
 004F0535    call       dword ptr [ecx+7C]
 004F0538    dec        eax
>004F0539    je         004F055C
 004F053B    lea        edx,[ebp-14]
 004F053E    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 004F0543    call       LoadResString
 004F0548    mov        ecx,dword ptr [ebp-14]
 004F054B    mov        dl,1
 004F054D    mov        eax,[004C6D20]; EZSQLException
 004F0552    call       EZSQLException.Create; EZSQLException.Create
 004F0557    call       @RaiseExcept
 004F055C    mov        eax,dword ptr [ebx+28]; TZDBLibResultSet.?f28:dword
 004F055F    mov        edx,dword ptr [eax]
 004F0561    call       dword ptr [edx+8]
 004F0564    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0567    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F056A    mov        ecx,dword ptr [eax]
 004F056C    call       dword ptr [ecx+80]
 004F0572    mov        esi,eax
 004F0574    mov        dword ptr [ebx+48],esi; TZDBLibResultSet.?f48:dword
 004F0577    add        esi,1
>004F057A    jno        004F0581
 004F057C    call       @IntOver
 004F0581    push       esi
 004F0582    lea        eax,[ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0585    mov        ecx,1
 004F058A    mov        edx,dword ptr ds:[407350]; TSmallIntDynArray
 004F0590    call       @DynArraySetLength
 004F0595    add        esp,4
 004F0598    mov        eax,dword ptr [ebx+48]; TZDBLibResultSet.?f48:dword
 004F059B    test       eax,eax
>004F059D    jle        004F06AF
 004F05A3    mov        dword ptr [ebp-10],eax
 004F05A6    mov        dword ptr [ebp-4],1
 004F05AD    mov        ecx,dword ptr [ebp-4]
 004F05B0    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F05B3    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F05B6    mov        esi,dword ptr [eax]
 004F05B8    call       dword ptr [esi+84]
 004F05BE    mov        edx,eax
 004F05C0    lea        eax,[ebp-8]
 004F05C3    call       @LStrFromPChar
 004F05C8    mov        ecx,dword ptr [ebp-4]
 004F05CB    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F05CE    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F05D1    mov        esi,dword ptr [eax]
 004F05D3    call       dword ptr [esi+88]
 004F05D9    mov        dword ptr [ebp-0C],eax
 004F05DC    mov        dl,1
 004F05DE    mov        eax,[004D5F00]; TZColumnInfo
 004F05E3    call       TZColumnInfo.Create; TZColumnInfo.Create
 004F05E8    mov        esi,eax
 004F05EA    lea        eax,[esi+10]; TZColumnInfo.?f10:String
 004F05ED    mov        edx,dword ptr [ebp-8]
 004F05F0    call       @LStrAsg
 004F05F5    lea        eax,[esi+14]; TZColumnInfo.?f14:String
 004F05F8    mov        edx,dword ptr [ebp-8]
 004F05FB    call       @LStrAsg
 004F0600    mov        eax,dword ptr [ebp-0C]
 004F0603    add        eax,8000
 004F0608    cmp        eax,0FFFF
>004F060D    jbe        004F0614
 004F060F    call       @BoundErr
 004F0614    add        eax,0FFFF8000
 004F0619    call       004EF9E0
 004F061E    mov        byte ptr [esi+2C],al; TZColumnInfo.?f2C:byte
 004F0621    mov        eax,dword ptr [ebp-0C]
 004F0624    sub        eax,3C
>004F0627    je         004F0637
 004F0629    sub        eax,32
>004F062C    je         004F0637
 004F062E    sub        eax,0C
>004F0631    je         004F0637
 004F0633    xor        eax,eax
>004F0635    jmp        004F0639
 004F0637    mov        al,1
 004F0639    mov        byte ptr [esi+7],al; TZColumnInfo.?f7:byte
 004F063C    mov        ecx,dword ptr [ebp-4]
 004F063F    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0642    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0645    mov        edi,dword ptr [eax]
 004F0647    call       dword ptr [edi+8C]
 004F064D    mov        dword ptr [esi+1C],eax; TZColumnInfo.?f1C:Integer
 004F0650    xor        eax,eax
 004F0652    mov        dword ptr [esi+20],eax; TZColumnInfo.?f20:dword
 004F0655    cmp        dword ptr [ebp-0C],30
>004F0659    jne        004F0661
 004F065B    mov        byte ptr [esi+9],0; TZColumnInfo.?f9:byte
>004F065F    jmp        004F0665
 004F0661    mov        byte ptr [esi+9],1; TZColumnInfo.?f9:byte
 004F0665    mov        edx,esi
 004F0667    mov        eax,dword ptr [ebx+28]; TZDBLibResultSet.?f28:dword
 004F066A    call       00433178
 004F066F    mov        eax,dword ptr [ebp-4]
 004F0672    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0675    test       edx,edx
>004F0677    je         004F067E
 004F0679    cmp        eax,dword ptr [edx-4]
>004F067C    jb         004F0683
 004F067E    call       @BoundErr
 004F0683    mov        ecx,dword ptr [ebp-0C]
 004F0686    add        ecx,8000
 004F068C    cmp        ecx,0FFFF
>004F0692    jbe        004F0699
 004F0694    call       @BoundErr
 004F0699    add        ecx,0FFFF8000
 004F069F    mov        word ptr [edx+eax*2],cx
 004F06A3    inc        dword ptr [ebp-4]
 004F06A6    dec        dword ptr [ebp-10]
<004F06A9    jne        004F05AD
 004F06AF    mov        eax,ebx
 004F06B1    call       004D4580
 004F06B6    xor        eax,eax
 004F06B8    pop        edx
 004F06B9    pop        ecx
 004F06BA    pop        ecx
 004F06BB    mov        dword ptr fs:[eax],edx
 004F06BE    push       4F06DB
 004F06C3    lea        eax,[ebp-14]
 004F06C6    call       @LStrClr
 004F06CB    lea        eax,[ebp-8]
 004F06CE    call       @LStrClr
 004F06D3    ret
<004F06D4    jmp        @HandleFinally
<004F06D9    jmp        004F06C3
 004F06DB    pop        edi
 004F06DC    pop        esi
 004F06DD    pop        ebx
 004F06DE    mov        esp,ebp
 004F06E0    pop        ebp
 004F06E1    ret
*}
end;

//004F06E4
procedure sub_004F06E4;
begin
{*
 004F06E4    push       ebp
 004F06E5    mov        ebp,esp
 004F06E7    push       ebx
 004F06E8    mov        ebx,eax
 004F06EA    xor        eax,eax
 004F06EC    mov        dword ptr [ebx+40],eax; TZDBLibResultSet.?f40:dword
 004F06EF    push       0
 004F06F1    lea        eax,[ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F06F4    mov        ecx,1
 004F06F9    mov        edx,dword ptr ds:[407350]; TSmallIntDynArray
 004F06FF    call       @DynArraySetLength
 004F0704    add        esp,4
 004F0707    mov        eax,ebx
 004F0709    call       004D4588
 004F070E    pop        ebx
 004F070F    pop        ebp
 004F0710    ret
*}
end;

//004F0714
//procedure sub_004F0714(?:TZDBLibResultSet; ?:?);
//begin
{*
 004F0714    push       ebp
 004F0715    mov        ebp,esp
 004F0717    add        esp,0FFFFFFF0
 004F071A    push       ebx
 004F071B    xor        ecx,ecx
 004F071D    mov        dword ptr [ebp-4],ecx
 004F0720    mov        dword ptr [ebp-8],ecx
 004F0723    mov        ebx,edx
 004F0725    xor        edx,edx
 004F0727    push       ebp
 004F0728    push       4F0791
 004F072D    push       dword ptr fs:[edx]
 004F0730    mov        dword ptr fs:[edx],esp
 004F0733    cmp        ebx,dword ptr [eax+48]; TZDBLibResultSet.?f48:dword
>004F0736    jg         004F073D
 004F0738    cmp        ebx,1
>004F073B    jge        004F0776
 004F073D    lea        eax,[ebp-4]
 004F0740    push       eax
 004F0741    lea        edx,[ebp-8]
 004F0744    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004F0749    call       LoadResString
 004F074E    mov        eax,dword ptr [ebp-8]
 004F0751    mov        dword ptr [ebp-10],ebx
 004F0754    mov        byte ptr [ebp-0C],0
 004F0758    lea        edx,[ebp-10]
 004F075B    xor        ecx,ecx
 004F075D    call       Format
 004F0762    mov        ecx,dword ptr [ebp-4]
 004F0765    mov        dl,1
 004F0767    mov        eax,[004C6D20]; EZSQLException
 004F076C    call       EZSQLException.Create; EZSQLException.Create
 004F0771    call       @RaiseExcept
 004F0776    xor        eax,eax
 004F0778    pop        edx
 004F0779    pop        ecx
 004F077A    pop        ecx
 004F077B    mov        dword ptr fs:[eax],edx
 004F077E    push       4F0798
 004F0783    lea        eax,[ebp-8]
 004F0786    mov        edx,2
 004F078B    call       @LStrArrayClr
 004F0790    ret
<004F0791    jmp        @HandleFinally
<004F0796    jmp        004F0783
 004F0798    pop        ebx
 004F0799    mov        esp,ebp
 004F079B    pop        ebp
 004F079C    ret
*}
//end;

//004F07A0
//function sub_004F07A0(?:?):Boolean;
//begin
{*
 004F07A0    push       ebp
 004F07A1    mov        ebp,esp
 004F07A3    push       ebx
 004F07A4    push       esi
 004F07A5    mov        esi,edx
 004F07A7    mov        ebx,eax
 004F07A9    mov        eax,ebx
 004F07AB    call       004D42AC
 004F07B0    mov        edx,esi
 004F07B2    mov        eax,ebx
 004F07B4    call       004F0714
 004F07B9    mov        ecx,esi
 004F07BB    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F07BE    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F07C1    mov        ebx,dword ptr [eax]
 004F07C3    call       dword ptr [ebx+90]
 004F07C9    test       eax,eax
 004F07CB    sete       al
 004F07CE    pop        esi
 004F07CF    pop        ebx
 004F07D0    pop        ebp
 004F07D1    ret
*}
//end;

//004F07D4
//procedure sub_004F07D4(?:?; ?:?);
//begin
{*
 004F07D4    push       ebp
 004F07D5    mov        ebp,esp
 004F07D7    add        esp,0FFFFFFF4
 004F07DA    push       ebx
 004F07DB    push       esi
 004F07DC    push       edi
 004F07DD    mov        dword ptr [ebp-8],ecx
 004F07E0    mov        dword ptr [ebp-4],edx
 004F07E3    mov        ebx,eax
 004F07E5    mov        eax,ebx
 004F07E7    call       004D42AC
 004F07EC    mov        edx,dword ptr [ebp-4]
 004F07EF    mov        eax,ebx
 004F07F1    call       004F0714
 004F07F6    mov        ecx,dword ptr [ebp-4]
 004F07F9    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F07FC    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F07FF    mov        esi,dword ptr [eax]
 004F0801    call       dword ptr [esi+94]
 004F0807    mov        esi,eax
 004F0809    mov        ecx,dword ptr [ebp-4]
 004F080C    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F080F    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0812    mov        edi,dword ptr [eax]
 004F0814    call       dword ptr [edi+90]
 004F081A    mov        edi,eax
 004F081C    mov        eax,dword ptr [ebp-4]
 004F081F    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0822    test       edx,edx
>004F0824    je         004F082B
 004F0826    cmp        eax,dword ptr [edx-4]
>004F0829    jb         004F0830
 004F082B    call       @BoundErr
 004F0830    movsx      eax,word ptr [edx+eax*2]
 004F0834    mov        dword ptr [ebp-0C],eax
 004F0837    test       edi,edi
 004F0839    sete       al
 004F083C    mov        byte ptr [ebx+34],al; TZDBLibResultSet.?f34:byte
 004F083F    test       edi,edi
>004F0841    je         004F0940
 004F0847    mov        eax,dword ptr [ebp-0C]
 004F084A    sub        eax,22
>004F084D    je         004F08AD
 004F084F    dec        eax
>004F0850    je         004F0863
 004F0852    sub        eax,0C
>004F0855    jne        004F08CE
>004F0857    jmp        004F0863
 004F0859    sub        esi,1
>004F085C    jno        004F0863
 004F085E    call       @IntOver
 004F0863    test       esi,esi
>004F0865    jle        004F0881
 004F0867    mov        eax,edi
 004F0869    add        eax,esi
>004F086B    jno        004F0872
 004F086D    call       @IntOver
 004F0872    sub        eax,1
>004F0875    jno        004F087C
 004F0877    call       @IntOver
 004F087C    cmp        byte ptr [eax],20
<004F087F    je         004F0859
 004F0881    test       esi,esi
>004F0883    jle        004F0948
 004F0889    mov        eax,dword ptr [ebp-8]
 004F088C    mov        edx,esi
 004F088E    call       @LStrSetLength
 004F0893    mov        eax,dword ptr [ebp-8]
 004F0896    mov        eax,dword ptr [eax]
 004F0898    call       @LStrToPChar
 004F089D    mov        edx,eax
 004F089F    mov        eax,edi
 004F08A1    mov        ecx,esi
 004F08A3    call       Move
>004F08A8    jmp        004F0948
 004F08AD    mov        eax,dword ptr [ebp-8]
 004F08B0    mov        edx,esi
 004F08B2    call       @LStrSetLength
 004F08B7    mov        eax,dword ptr [ebp-8]
 004F08BA    mov        eax,dword ptr [eax]
 004F08BC    call       @LStrToPChar
 004F08C1    mov        edx,eax
 004F08C3    mov        eax,edi
 004F08C5    mov        ecx,esi
 004F08C7    call       Move
>004F08CC    jmp        004F0948
 004F08CE    mov        eax,dword ptr [ebp-8]
 004F08D1    mov        edx,0FA1
 004F08D6    call       @LStrSetLength
 004F08DB    push       edi
 004F08DC    push       esi
 004F08DD    push       2F
 004F08DF    mov        eax,dword ptr [ebp-8]
 004F08E2    mov        eax,dword ptr [eax]
 004F08E4    call       @LStrToPChar
 004F08E9    push       eax
 004F08EA    mov        eax,dword ptr [ebp-8]
 004F08ED    mov        eax,dword ptr [eax]
 004F08EF    call       @LStrLen
 004F08F4    push       eax
 004F08F5    mov        ecx,dword ptr [ebp-0C]
 004F08F8    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F08FB    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F08FE    mov        esi,dword ptr [eax]
 004F0900    call       dword ptr [esi+98]
 004F0906    mov        esi,eax
>004F0908    jmp        004F0914
 004F090A    sub        esi,1
>004F090D    jno        004F0914
 004F090F    call       @IntOver
 004F0914    test       esi,esi
>004F0916    jle        004F0934
 004F0918    mov        eax,dword ptr [ebp-8]
 004F091B    mov        eax,dword ptr [eax]
 004F091D    dec        esi
 004F091E    test       eax,eax
>004F0920    je         004F0927
 004F0922    cmp        esi,dword ptr [eax-4]
>004F0925    jb         004F092C
 004F0927    call       @BoundErr
 004F092C    inc        esi
 004F092D    cmp        byte ptr [eax+esi-1],20
<004F0932    je         004F090A
 004F0934    mov        eax,dword ptr [ebp-8]
 004F0937    mov        edx,esi
 004F0939    call       @LStrSetLength
>004F093E    jmp        004F0948
 004F0940    mov        eax,dword ptr [ebp-8]
 004F0943    call       @LStrClr
 004F0948    mov        ecx,4F096C; 'GETSTRING'
 004F094D    mov        dl,4
 004F094F    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0952    mov        ebx,dword ptr [eax]
 004F0954    call       dword ptr [ebx+0A0]
 004F095A    pop        edi
 004F095B    pop        esi
 004F095C    pop        ebx
 004F095D    mov        esp,ebp
 004F095F    pop        ebp
 004F0960    ret
*}
//end;

//004F0978
//function sub_004F0978(?:?):?;
//begin
{*
 004F0978    push       ebp
 004F0979    mov        ebp,esp
 004F097B    add        esp,0FFFFFFF8
 004F097E    push       ebx
 004F097F    push       esi
 004F0980    push       edi
 004F0981    mov        esi,edx
 004F0983    mov        ebx,eax
 004F0985    mov        eax,ebx
 004F0987    call       004D42AC
 004F098C    mov        edx,esi
 004F098E    mov        eax,ebx
 004F0990    call       004F0714
 004F0995    mov        ecx,esi
 004F0997    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F099A    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F099D    mov        edi,dword ptr [eax]
 004F099F    call       dword ptr [edi+94]
 004F09A5    mov        dword ptr [ebp-8],eax
 004F09A8    mov        ecx,esi
 004F09AA    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F09AD    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F09B0    mov        edi,dword ptr [eax]
 004F09B2    call       dword ptr [edi+90]
 004F09B8    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F09BB    test       edx,edx
>004F09BD    je         004F09C4
 004F09BF    cmp        esi,dword ptr [edx-4]
>004F09C2    jb         004F09C9
 004F09C4    call       @BoundErr
 004F09C9    movsx      edx,word ptr [edx+esi*2]
 004F09CD    test       eax,eax
 004F09CF    sete       cl
 004F09D2    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F09D5    mov        byte ptr [ebp-1],0
 004F09D9    test       eax,eax
>004F09DB    je         004F0A06
 004F09DD    cmp        edx,32
>004F09E0    jne        004F09E9
 004F09E2    mov        al,byte ptr [eax]
 004F09E4    mov        byte ptr [ebp-1],al
>004F09E7    jmp        004F0A06
 004F09E9    push       eax
 004F09EA    mov        eax,dword ptr [ebp-8]
 004F09ED    push       eax
 004F09EE    push       32
 004F09F0    lea        eax,[ebp-1]
 004F09F3    push       eax
 004F09F4    push       1
 004F09F6    mov        ecx,edx
 004F09F8    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F09FB    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F09FE    mov        esi,dword ptr [eax]
 004F0A00    call       dword ptr [esi+98]
 004F0A06    mov        ecx,4F0A2C; 'GETBOOLEAN'
 004F0A0B    mov        dl,4
 004F0A0D    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0A10    mov        ebx,dword ptr [eax]
 004F0A12    call       dword ptr [ebx+0A0]
 004F0A18    mov        al,byte ptr [ebp-1]
 004F0A1B    pop        edi
 004F0A1C    pop        esi
 004F0A1D    pop        ebx
 004F0A1E    pop        ecx
 004F0A1F    pop        ecx
 004F0A20    pop        ebp
 004F0A21    ret
*}
//end;

//004F0A38
//function sub_004F0A38(?:?):?;
//begin
{*
 004F0A38    push       ebp
 004F0A39    mov        ebp,esp
 004F0A3B    add        esp,0FFFFFFF8
 004F0A3E    push       ebx
 004F0A3F    push       esi
 004F0A40    push       edi
 004F0A41    mov        esi,edx
 004F0A43    mov        ebx,eax
 004F0A45    mov        eax,ebx
 004F0A47    call       004D42AC
 004F0A4C    mov        edx,esi
 004F0A4E    mov        eax,ebx
 004F0A50    call       004F0714
 004F0A55    mov        ecx,esi
 004F0A57    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0A5A    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0A5D    mov        edi,dword ptr [eax]
 004F0A5F    call       dword ptr [edi+94]
 004F0A65    mov        dword ptr [ebp-8],eax
 004F0A68    mov        ecx,esi
 004F0A6A    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0A6D    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0A70    mov        edi,dword ptr [eax]
 004F0A72    call       dword ptr [edi+90]
 004F0A78    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0A7B    test       edx,edx
>004F0A7D    je         004F0A84
 004F0A7F    cmp        esi,dword ptr [edx-4]
>004F0A82    jb         004F0A89
 004F0A84    call       @BoundErr
 004F0A89    movsx      edx,word ptr [edx+esi*2]
 004F0A8D    test       eax,eax
 004F0A8F    sete       cl
 004F0A92    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0A95    mov        byte ptr [ebp-1],0
 004F0A99    test       eax,eax
>004F0A9B    je         004F0AC6
 004F0A9D    cmp        edx,30
>004F0AA0    jne        004F0AA9
 004F0AA2    mov        al,byte ptr [eax]
 004F0AA4    mov        byte ptr [ebp-1],al
>004F0AA7    jmp        004F0AC6
 004F0AA9    push       eax
 004F0AAA    mov        eax,dword ptr [ebp-8]
 004F0AAD    push       eax
 004F0AAE    push       30
 004F0AB0    lea        eax,[ebp-1]
 004F0AB3    push       eax
 004F0AB4    push       1
 004F0AB6    mov        ecx,edx
 004F0AB8    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0ABB    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0ABE    mov        esi,dword ptr [eax]
 004F0AC0    call       dword ptr [esi+98]
 004F0AC6    mov        ecx,4F0AEC; 'GETBYTE'
 004F0ACB    mov        dl,4
 004F0ACD    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0AD0    mov        ebx,dword ptr [eax]
 004F0AD2    call       dword ptr [ebx+0A0]
 004F0AD8    mov        al,byte ptr [ebp-1]
 004F0ADB    pop        edi
 004F0ADC    pop        esi
 004F0ADD    pop        ebx
 004F0ADE    pop        ecx
 004F0ADF    pop        ecx
 004F0AE0    pop        ebp
 004F0AE1    ret
*}
//end;

//004F0AF4
//function sub_004F0AF4(?:?):?;
//begin
{*
 004F0AF4    push       ebp
 004F0AF5    mov        ebp,esp
 004F0AF7    add        esp,0FFFFFFF8
 004F0AFA    push       ebx
 004F0AFB    push       esi
 004F0AFC    push       edi
 004F0AFD    mov        esi,edx
 004F0AFF    mov        ebx,eax
 004F0B01    mov        eax,ebx
 004F0B03    call       004D42AC
 004F0B08    mov        edx,esi
 004F0B0A    mov        eax,ebx
 004F0B0C    call       004F0714
 004F0B11    mov        ecx,esi
 004F0B13    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0B16    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0B19    mov        edi,dword ptr [eax]
 004F0B1B    call       dword ptr [edi+94]
 004F0B21    mov        dword ptr [ebp-8],eax
 004F0B24    mov        ecx,esi
 004F0B26    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0B29    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0B2C    mov        edi,dword ptr [eax]
 004F0B2E    call       dword ptr [edi+90]
 004F0B34    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0B37    test       edx,edx
>004F0B39    je         004F0B40
 004F0B3B    cmp        esi,dword ptr [edx-4]
>004F0B3E    jb         004F0B45
 004F0B40    call       @BoundErr
 004F0B45    movsx      edx,word ptr [edx+esi*2]
 004F0B49    test       eax,eax
 004F0B4B    sete       cl
 004F0B4E    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0B51    mov        word ptr [ebp-2],0
 004F0B57    test       eax,eax
>004F0B59    je         004F0B86
 004F0B5B    cmp        edx,34
>004F0B5E    jne        004F0B69
 004F0B60    mov        ax,word ptr [eax]
 004F0B63    mov        word ptr [ebp-2],ax
>004F0B67    jmp        004F0B86
 004F0B69    push       eax
 004F0B6A    mov        eax,dword ptr [ebp-8]
 004F0B6D    push       eax
 004F0B6E    push       34
 004F0B70    lea        eax,[ebp-2]
 004F0B73    push       eax
 004F0B74    push       2
 004F0B76    mov        ecx,edx
 004F0B78    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0B7B    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0B7E    mov        esi,dword ptr [eax]
 004F0B80    call       dword ptr [esi+98]
 004F0B86    mov        ecx,4F0BAC; 'GETSHORT'
 004F0B8B    mov        dl,4
 004F0B8D    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0B90    mov        ebx,dword ptr [eax]
 004F0B92    call       dword ptr [ebx+0A0]
 004F0B98    mov        ax,word ptr [ebp-2]
 004F0B9C    pop        edi
 004F0B9D    pop        esi
 004F0B9E    pop        ebx
 004F0B9F    pop        ecx
 004F0BA0    pop        ecx
 004F0BA1    pop        ebp
 004F0BA2    ret
*}
//end;

//004F0BB8
//function sub_004F0BB8(?:?):?;
//begin
{*
 004F0BB8    push       ebp
 004F0BB9    mov        ebp,esp
 004F0BBB    add        esp,0FFFFFFF8
 004F0BBE    push       ebx
 004F0BBF    push       esi
 004F0BC0    push       edi
 004F0BC1    mov        esi,edx
 004F0BC3    mov        ebx,eax
 004F0BC5    mov        eax,ebx
 004F0BC7    call       004D42AC
 004F0BCC    mov        edx,esi
 004F0BCE    mov        eax,ebx
 004F0BD0    call       004F0714
 004F0BD5    mov        ecx,esi
 004F0BD7    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0BDA    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0BDD    mov        edi,dword ptr [eax]
 004F0BDF    call       dword ptr [edi+94]
 004F0BE5    mov        dword ptr [ebp-8],eax
 004F0BE8    mov        ecx,esi
 004F0BEA    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0BED    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0BF0    mov        edi,dword ptr [eax]
 004F0BF2    call       dword ptr [edi+90]
 004F0BF8    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0BFB    test       edx,edx
>004F0BFD    je         004F0C04
 004F0BFF    cmp        esi,dword ptr [edx-4]
>004F0C02    jb         004F0C09
 004F0C04    call       @BoundErr
 004F0C09    movsx      edx,word ptr [edx+esi*2]
 004F0C0D    test       eax,eax
 004F0C0F    sete       cl
 004F0C12    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0C15    xor        ecx,ecx
 004F0C17    mov        dword ptr [ebp-4],ecx
 004F0C1A    test       eax,eax
>004F0C1C    je         004F0C47
 004F0C1E    cmp        edx,38
>004F0C21    jne        004F0C2A
 004F0C23    mov        eax,dword ptr [eax]
 004F0C25    mov        dword ptr [ebp-4],eax
>004F0C28    jmp        004F0C47
 004F0C2A    push       eax
 004F0C2B    mov        eax,dword ptr [ebp-8]
 004F0C2E    push       eax
 004F0C2F    push       38
 004F0C31    lea        eax,[ebp-4]
 004F0C34    push       eax
 004F0C35    push       4
 004F0C37    mov        ecx,edx
 004F0C39    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0C3C    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0C3F    mov        esi,dword ptr [eax]
 004F0C41    call       dword ptr [esi+98]
 004F0C47    mov        ecx,4F0C6C; 'GETINT'
 004F0C4C    mov        dl,4
 004F0C4E    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0C51    mov        ebx,dword ptr [eax]
 004F0C53    call       dword ptr [ebx+0A0]
 004F0C59    mov        eax,dword ptr [ebp-4]
 004F0C5C    pop        edi
 004F0C5D    pop        esi
 004F0C5E    pop        ebx
 004F0C5F    pop        ecx
 004F0C60    pop        ecx
 004F0C61    pop        ebp
 004F0C62    ret
*}
//end;

//004F0C74
//procedure sub_004F0C74(?:?);
//begin
{*
 004F0C74    push       ebp
 004F0C75    mov        ebp,esp
 004F0C77    add        esp,0FFFFFFF8
 004F0C7A    push       ebx
 004F0C7B    push       esi
 004F0C7C    mov        esi,edx
 004F0C7E    mov        ebx,eax
 004F0C80    mov        edx,esi
 004F0C82    mov        eax,ebx
 004F0C84    mov        ecx,dword ptr [eax]
 004F0C86    call       dword ptr [ecx+2C]; TZDBLibResultSet.sub_004F0BB8
 004F0C89    cdq
 004F0C8A    mov        dword ptr [ebp-8],eax
 004F0C8D    mov        dword ptr [ebp-4],edx
 004F0C90    mov        eax,dword ptr [ebp-8]
 004F0C93    mov        edx,dword ptr [ebp-4]
 004F0C96    pop        esi
 004F0C97    pop        ebx
 004F0C98    pop        ecx
 004F0C99    pop        ecx
 004F0C9A    pop        ebp
 004F0C9B    ret
*}
//end;

//004F0C9C
//procedure sub_004F0C9C(?:?);
//begin
{*
 004F0C9C    push       ebp
 004F0C9D    mov        ebp,esp
 004F0C9F    add        esp,0FFFFFFF8
 004F0CA2    push       ebx
 004F0CA3    push       esi
 004F0CA4    push       edi
 004F0CA5    mov        esi,edx
 004F0CA7    mov        ebx,eax
 004F0CA9    mov        eax,ebx
 004F0CAB    call       004D42AC
 004F0CB0    mov        edx,esi
 004F0CB2    mov        eax,ebx
 004F0CB4    call       004F0714
 004F0CB9    mov        ecx,esi
 004F0CBB    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0CBE    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0CC1    mov        edi,dword ptr [eax]
 004F0CC3    call       dword ptr [edi+94]
 004F0CC9    mov        dword ptr [ebp-8],eax
 004F0CCC    mov        ecx,esi
 004F0CCE    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0CD1    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0CD4    mov        edi,dword ptr [eax]
 004F0CD6    call       dword ptr [edi+90]
 004F0CDC    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0CDF    test       edx,edx
>004F0CE1    je         004F0CE8
 004F0CE3    cmp        esi,dword ptr [edx-4]
>004F0CE6    jb         004F0CED
 004F0CE8    call       @BoundErr
 004F0CED    movsx      edx,word ptr [edx+esi*2]
 004F0CF1    test       eax,eax
 004F0CF3    sete       cl
 004F0CF6    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0CF9    xor        ecx,ecx
 004F0CFB    mov        dword ptr [ebp-4],ecx
 004F0CFE    test       eax,eax
>004F0D00    je         004F0D2B
 004F0D02    cmp        edx,3B
>004F0D05    jne        004F0D0E
 004F0D07    mov        eax,dword ptr [eax]
 004F0D09    mov        dword ptr [ebp-4],eax
>004F0D0C    jmp        004F0D2B
 004F0D0E    push       eax
 004F0D0F    mov        eax,dword ptr [ebp-8]
 004F0D12    push       eax
 004F0D13    push       3B
 004F0D15    lea        eax,[ebp-4]
 004F0D18    push       eax
 004F0D19    push       4
 004F0D1B    mov        ecx,edx
 004F0D1D    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0D20    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0D23    mov        esi,dword ptr [eax]
 004F0D25    call       dword ptr [esi+98]
 004F0D2B    mov        ecx,4F0D50; 'GETFLOAT'
 004F0D30    mov        dl,4
 004F0D32    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0D35    mov        ebx,dword ptr [eax]
 004F0D37    call       dword ptr [ebx+0A0]
 004F0D3D    fld        dword ptr [ebp-4]
 004F0D40    pop        edi
 004F0D41    pop        esi
 004F0D42    pop        ebx
 004F0D43    pop        ecx
 004F0D44    pop        ecx
 004F0D45    pop        ebp
 004F0D46    ret
*}
//end;

//004F0D5C
//procedure sub_004F0D5C(?:?);
//begin
{*
 004F0D5C    push       ebp
 004F0D5D    mov        ebp,esp
 004F0D5F    add        esp,0FFFFFFF4
 004F0D62    push       ebx
 004F0D63    push       esi
 004F0D64    push       edi
 004F0D65    mov        esi,edx
 004F0D67    mov        ebx,eax
 004F0D69    mov        eax,ebx
 004F0D6B    call       004D42AC
 004F0D70    mov        edx,esi
 004F0D72    mov        eax,ebx
 004F0D74    call       004F0714
 004F0D79    mov        ecx,esi
 004F0D7B    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0D7E    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0D81    mov        edi,dword ptr [eax]
 004F0D83    call       dword ptr [edi+94]
 004F0D89    mov        dword ptr [ebp-0C],eax
 004F0D8C    mov        ecx,esi
 004F0D8E    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0D91    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0D94    mov        edi,dword ptr [eax]
 004F0D96    call       dword ptr [edi+90]
 004F0D9C    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0D9F    test       edx,edx
>004F0DA1    je         004F0DA8
 004F0DA3    cmp        esi,dword ptr [edx-4]
>004F0DA6    jb         004F0DAD
 004F0DA8    call       @BoundErr
 004F0DAD    movsx      edx,word ptr [edx+esi*2]
 004F0DB1    test       eax,eax
 004F0DB3    sete       cl
 004F0DB6    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0DB9    xor        ecx,ecx
 004F0DBB    mov        dword ptr [ebp-8],ecx
 004F0DBE    mov        dword ptr [ebp-4],ecx
 004F0DC1    test       eax,eax
>004F0DC3    je         004F0DF4
 004F0DC5    cmp        edx,3E
>004F0DC8    jne        004F0DD7
 004F0DCA    mov        edx,dword ptr [eax]
 004F0DCC    mov        dword ptr [ebp-8],edx
 004F0DCF    mov        edx,dword ptr [eax+4]
 004F0DD2    mov        dword ptr [ebp-4],edx
>004F0DD5    jmp        004F0DF4
 004F0DD7    push       eax
 004F0DD8    mov        eax,dword ptr [ebp-0C]
 004F0DDB    push       eax
 004F0DDC    push       3E
 004F0DDE    lea        eax,[ebp-8]
 004F0DE1    push       eax
 004F0DE2    push       8
 004F0DE4    mov        ecx,edx
 004F0DE6    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0DE9    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0DEC    mov        esi,dword ptr [eax]
 004F0DEE    call       dword ptr [esi+98]
 004F0DF4    mov        ecx,4F0E18; 'GETDOUBLE'
 004F0DF9    mov        dl,4
 004F0DFB    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0DFE    mov        ebx,dword ptr [eax]
 004F0E00    call       dword ptr [ebx+0A0]
 004F0E06    fld        qword ptr [ebp-8]
 004F0E09    pop        edi
 004F0E0A    pop        esi
 004F0E0B    pop        ebx
 004F0E0C    mov        esp,ebp
 004F0E0E    pop        ebp
 004F0E0F    ret
*}
//end;

//004F0E24
//procedure sub_004F0E24(?:?);
//begin
{*
 004F0E24    push       ebp
 004F0E25    mov        ebp,esp
 004F0E27    add        esp,0FFFFFFF0
 004F0E2A    push       ebx
 004F0E2B    push       esi
 004F0E2C    mov        esi,edx
 004F0E2E    mov        ebx,eax
 004F0E30    mov        edx,esi
 004F0E32    mov        eax,ebx
 004F0E34    mov        ecx,dword ptr [eax]
 004F0E36    call       dword ptr [ecx+38]; TZDBLibResultSet.sub_004F0D5C
 004F0E39    fstp       tbyte ptr [ebp-10]
 004F0E3C    wait
 004F0E3D    fld        tbyte ptr [ebp-10]
 004F0E40    pop        esi
 004F0E41    pop        ebx
 004F0E42    mov        esp,ebp
 004F0E44    pop        ebp
 004F0E45    ret
*}
//end;

//004F0E48
//procedure sub_004F0E48(?:?; ?:?);
//begin
{*
 004F0E48    push       ebp
 004F0E49    mov        ebp,esp
 004F0E4B    add        esp,0FFFFFFF8
 004F0E4E    push       ebx
 004F0E4F    push       esi
 004F0E50    push       edi
 004F0E51    mov        dword ptr [ebp-4],ecx
 004F0E54    mov        esi,edx
 004F0E56    mov        ebx,eax
 004F0E58    mov        eax,ebx
 004F0E5A    call       004D42AC
 004F0E5F    mov        edx,esi
 004F0E61    mov        eax,ebx
 004F0E63    call       004F0714
 004F0E68    mov        ecx,esi
 004F0E6A    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0E6D    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0E70    mov        edi,dword ptr [eax]
 004F0E72    call       dword ptr [edi+94]
 004F0E78    mov        dword ptr [ebp-8],eax
 004F0E7B    mov        ecx,esi
 004F0E7D    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0E80    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0E83    mov        esi,dword ptr [eax]
 004F0E85    call       dword ptr [esi+90]
 004F0E8B    mov        esi,eax
 004F0E8D    mov        ecx,4F0EF8; 'GETBYTES'
 004F0E92    mov        dl,4
 004F0E94    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F0E97    mov        edi,dword ptr [eax]
 004F0E99    call       dword ptr [edi+0A0]
 004F0E9F    test       esi,esi
 004F0EA1    sete       al
 004F0EA4    mov        byte ptr [ebx+34],al; TZDBLibResultSet.?f34:byte
 004F0EA7    mov        eax,dword ptr [ebp-8]
 004F0EAA    push       eax
 004F0EAB    mov        eax,dword ptr [ebp-4]
 004F0EAE    mov        ecx,1
 004F0EB3    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004F0EB9    call       @DynArraySetLength
 004F0EBE    add        esp,4
 004F0EC1    test       esi,esi
>004F0EC3    je         004F0EE6
 004F0EC5    xor        eax,eax
 004F0EC7    mov        edx,dword ptr [ebp-4]
 004F0ECA    mov        edx,dword ptr [edx]
 004F0ECC    test       edx,edx
>004F0ECE    je         004F0ED5
 004F0ED0    cmp        eax,dword ptr [edx-4]
>004F0ED3    jb         004F0EDA
 004F0ED5    call       @BoundErr
 004F0EDA    add        edx,eax
 004F0EDC    mov        eax,esi
 004F0EDE    mov        ecx,dword ptr [ebp-8]
 004F0EE1    call       Move
 004F0EE6    pop        edi
 004F0EE7    pop        esi
 004F0EE8    pop        ebx
 004F0EE9    pop        ecx
 004F0EEA    pop        ecx
 004F0EEB    pop        ebp
 004F0EEC    ret
*}
//end;

//004F0F04
//procedure sub_004F0F04(?:?);
//begin
{*
 004F0F04    push       ebp
 004F0F05    mov        ebp,esp
 004F0F07    add        esp,0FFFFFFF8
 004F0F0A    push       ebx
 004F0F0B    push       esi
 004F0F0C    mov        esi,edx
 004F0F0E    mov        ebx,eax
 004F0F10    mov        edx,esi
 004F0F12    mov        eax,ebx
 004F0F14    mov        ecx,dword ptr [eax]
 004F0F16    call       dword ptr [ecx+4C]; TZDBLibResultSet.sub_004F0F54
 004F0F19    call       @INT
 004F0F1E    fstp       qword ptr [ebp-8]
 004F0F21    wait
 004F0F22    fld        qword ptr [ebp-8]
 004F0F25    pop        esi
 004F0F26    pop        ebx
 004F0F27    pop        ecx
 004F0F28    pop        ecx
 004F0F29    pop        ebp
 004F0F2A    ret
*}
//end;

//004F0F2C
//procedure sub_004F0F2C(?:?);
//begin
{*
 004F0F2C    push       ebp
 004F0F2D    mov        ebp,esp
 004F0F2F    add        esp,0FFFFFFF8
 004F0F32    push       ebx
 004F0F33    push       esi
 004F0F34    mov        esi,edx
 004F0F36    mov        ebx,eax
 004F0F38    mov        edx,esi
 004F0F3A    mov        eax,ebx
 004F0F3C    mov        ecx,dword ptr [eax]
 004F0F3E    call       dword ptr [ecx+4C]; TZDBLibResultSet.sub_004F0F54
 004F0F41    call       @FRAC
 004F0F46    fstp       qword ptr [ebp-8]
 004F0F49    wait
 004F0F4A    fld        qword ptr [ebp-8]
 004F0F4D    pop        esi
 004F0F4E    pop        ebx
 004F0F4F    pop        ecx
 004F0F50    pop        ecx
 004F0F51    pop        ebp
 004F0F52    ret
*}
//end;

//004F0F54
//procedure sub_004F0F54(?:?);
//begin
{*
 004F0F54    push       ebp
 004F0F55    mov        ebp,esp
 004F0F57    add        esp,0FFFFFFE0
 004F0F5A    push       ebx
 004F0F5B    push       esi
 004F0F5C    push       edi
 004F0F5D    mov        esi,edx
 004F0F5F    mov        ebx,eax
 004F0F61    mov        eax,ebx
 004F0F63    call       004D42AC
 004F0F68    mov        edx,esi
 004F0F6A    mov        eax,ebx
 004F0F6C    call       004F0714
 004F0F71    mov        ecx,esi
 004F0F73    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0F76    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0F79    mov        edi,dword ptr [eax]
 004F0F7B    call       dword ptr [edi+94]
 004F0F81    mov        dword ptr [ebp-0C],eax
 004F0F84    mov        ecx,esi
 004F0F86    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0F89    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0F8C    mov        edi,dword ptr [eax]
 004F0F8E    call       dword ptr [edi+90]
 004F0F94    mov        edx,dword ptr [ebx+44]; TZDBLibResultSet.?f44:TSmallIntDynArray
 004F0F97    test       edx,edx
>004F0F99    je         004F0FA0
 004F0F9B    cmp        esi,dword ptr [edx-4]
>004F0F9E    jb         004F0FA5
 004F0FA0    call       @BoundErr
 004F0FA5    movsx      edx,word ptr [edx+esi*2]
 004F0FA9    test       eax,eax
 004F0FAB    sete       cl
 004F0FAE    mov        byte ptr [ebx+34],cl; TZDBLibResultSet.?f34:byte
 004F0FB1    xor        ecx,ecx
 004F0FB3    mov        dword ptr [ebp-8],ecx
 004F0FB6    mov        dword ptr [ebp-4],ecx
 004F0FB9    test       eax,eax
>004F0FBB    je         004F101B
 004F0FBD    cmp        edx,3D
>004F0FC0    jne        004F0FD1
 004F0FC2    lea        edx,[ebp-14]
 004F0FC5    mov        ecx,8
 004F0FCA    call       Move
>004F0FCF    jmp        004F0FEE
 004F0FD1    push       eax
 004F0FD2    mov        eax,dword ptr [ebp-0C]
 004F0FD5    push       eax
 004F0FD6    push       3D
 004F0FD8    lea        eax,[ebp-14]
 004F0FDB    push       eax
 004F0FDC    push       8
 004F0FDE    mov        ecx,edx
 004F0FE0    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F0FE3    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F0FE6    mov        esi,dword ptr [eax]
 004F0FE8    call       dword ptr [esi+98]
 004F0FEE    mov        eax,dword ptr [ebp-14]
 004F0FF1    add        eax,2
>004F0FF4    jno        004F0FFB
 004F0FF6    call       @IntOver
 004F0FFB    mov        dword ptr [ebp-18],eax
 004F0FFE    fild       dword ptr [ebp-18]
 004F1001    mov        eax,dword ptr [ebp-10]
 004F1004    mov        dword ptr [ebp-20],eax
 004F1007    xor        eax,eax
 004F1009    mov        dword ptr [ebp-1C],eax
 004F100C    fild       qword ptr [ebp-20]
 004F100F    fdiv       dword ptr ds:[4F1038]; 25920000:Single
 004F1015    faddp      st(1),st
 004F1017    fstp       qword ptr [ebp-8]
 004F101A    wait
 004F101B    mov        ecx,4F1044; 'GETTIMESTAMP'
 004F1020    mov        dl,4
 004F1022    mov        eax,dword ptr [ebx+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F1025    mov        ebx,dword ptr [eax]
 004F1027    call       dword ptr [ebx+0A0]
 004F102D    fld        qword ptr [ebp-8]
 004F1030    pop        edi
 004F1031    pop        esi
 004F1032    pop        ebx
 004F1033    mov        esp,ebp
 004F1035    pop        ebp
 004F1036    ret
*}
//end;

//004F1054
//procedure sub_004F1054(?:?; ?:?);
//begin
{*
 004F1054    push       ebp
 004F1055    mov        ebp,esp
 004F1057    add        esp,0FFFFFFF8
 004F105A    push       ebx
 004F105B    push       esi
 004F105C    push       edi
 004F105D    mov        dword ptr [ebp-4],ecx
 004F1060    mov        esi,edx
 004F1062    mov        ebx,eax
 004F1064    mov        eax,ebx
 004F1066    call       004D42AC
 004F106B    mov        edx,esi
 004F106D    mov        eax,ebx
 004F106F    call       004F0714
 004F1074    mov        edx,esi
 004F1076    mov        eax,ebx
 004F1078    call       004D4450
 004F107D    mov        ecx,esi
 004F107F    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F1082    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F1085    mov        edi,dword ptr [eax]
 004F1087    call       dword ptr [edi+94]
 004F108D    mov        dword ptr [ebp-8],eax
 004F1090    mov        ecx,esi
 004F1092    mov        edx,dword ptr [ebx+40]; TZDBLibResultSet.?f40:dword
 004F1095    mov        eax,dword ptr [ebx+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F1098    mov        esi,dword ptr [eax]
 004F109A    call       dword ptr [esi+90]
 004F10A0    mov        esi,eax
 004F10A2    test       esi,esi
 004F10A4    sete       al
 004F10A7    mov        byte ptr [ebx+34],al; TZDBLibResultSet.?f34:byte
 004F10AA    mov        eax,dword ptr [ebp-8]
 004F10AD    push       eax
 004F10AE    mov        ecx,esi
 004F10B0    mov        dl,1
 004F10B2    mov        eax,[004D3F38]; TZAbstractBlob
 004F10B7    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004F10BC    mov        edx,eax
 004F10BE    test       edx,edx
>004F10C0    je         004F10C5
 004F10C2    sub        edx,0FFFFFFE8
 004F10C5    mov        eax,dword ptr [ebp-4]
 004F10C8    call       @IntfCopy
 004F10CD    pop        edi
 004F10CE    pop        esi
 004F10CF    pop        ebx
 004F10D0    pop        ecx
 004F10D1    pop        ecx
 004F10D2    pop        ebp
 004F10D3    ret
*}
//end;

//004F10D4
//function sub_004F10D4():?;
//begin
{*
 004F10D4    push       ebp
 004F10D5    mov        ebp,esp
 004F10D7    push       ebx
 004F10D8    xor        ebx,ebx
 004F10DA    call       004D41B0
 004F10DF    mov        eax,ebx
 004F10E1    pop        ebx
 004F10E2    pop        ebp
 004F10E3    ret
*}
//end;

//004F10E4
//function sub_004F10E4:?;
//begin
{*
 004F10E4    push       ebp
 004F10E5    mov        ebp,esp
 004F10E7    push       0
 004F10E9    push       ebx
 004F10EA    push       esi
 004F10EB    mov        esi,eax
 004F10ED    xor        eax,eax
 004F10EF    push       ebp
 004F10F0    push       4F1174
 004F10F5    push       dword ptr fs:[eax]
 004F10F8    mov        dword ptr fs:[eax],esp
 004F10FB    xor        ebx,ebx
 004F10FD    lea        edx,[ebp-4]
 004F1100    mov        eax,dword ptr [esi+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F1103    mov        ecx,dword ptr [eax]
 004F1105    call       dword ptr [ecx+0C]
 004F1108    mov        eax,dword ptr [ebp-4]
 004F110B    mov        edx,4F118C; 'mssql'
 004F1110    call       @LStrCmp
>004F1115    jne        004F1126
 004F1117    mov        edx,dword ptr [esi+40]; TZDBLibResultSet.?f40:dword
 004F111A    mov        eax,dword ptr [esi+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F111D    mov        ecx,dword ptr [eax]
 004F111F    call       dword ptr [ecx+1C]
 004F1122    test       al,al
>004F1124    jne        004F115E
 004F1126    mov        edx,dword ptr [esi+40]; TZDBLibResultSet.?f40:dword
 004F1129    mov        eax,dword ptr [esi+50]; TZDBLibResultSet.?f50:IZDBLibPlainDriver
 004F112C    mov        ecx,dword ptr [eax]
 004F112E    call       dword ptr [ecx+9C]
 004F1134    sub        eax,0FFFFFFFD
>004F1137    je         004F115E
 004F1139    dec        eax
>004F113A    je         004F115E
 004F113C    dec        eax
>004F113D    je         004F1144
 004F113F    dec        eax
>004F1140    je         004F1148
>004F1142    jmp        004F115C
 004F1144    mov        bl,1
>004F1146    jmp        004F115E
 004F1148    mov        ecx,4F119C; 'NEXT'
 004F114D    mov        dl,4
 004F114F    mov        eax,dword ptr [esi+4C]; TZDBLibResultSet.?f4C:IZDBLibConnection
 004F1152    mov        esi,dword ptr [eax]
 004F1154    call       dword ptr [esi+0A0]
>004F115A    jmp        004F115E
 004F115C    xor        ebx,ebx
 004F115E    xor        eax,eax
 004F1160    pop        edx
 004F1161    pop        ecx
 004F1162    pop        ecx
 004F1163    mov        dword ptr fs:[eax],edx
 004F1166    push       4F117B
 004F116B    lea        eax,[ebp-4]
 004F116E    call       @LStrClr
 004F1173    ret
<004F1174    jmp        @HandleFinally
<004F1179    jmp        004F116B
 004F117B    mov        eax,ebx
 004F117D    pop        esi
 004F117E    pop        ebx
 004F117F    pop        ecx
 004F1180    pop        ebp
 004F1181    ret
*}
//end;

//004F11A4
//constructor TZDBLibCachedResolver.Create(?:TZDBLibCachedResolver; _Dv__:Boolean; ?:?);
//begin
{*
 004F11A4    push       ebp
 004F11A5    mov        ebp,esp
 004F11A7    push       ecx
 004F11A8    push       ebx
 004F11A9    push       esi
 004F11AA    test       dl,dl
>004F11AC    je         004F11B6
 004F11AE    add        esp,0FFFFFFF0
 004F11B1    call       @ClassCreate
 004F11B6    mov        dword ptr [ebp-4],ecx
 004F11B9    mov        ebx,edx
 004F11BB    mov        esi,eax
 004F11BD    mov        eax,dword ptr [ebp-4]
 004F11C0    call       @IntfAddRef
 004F11C5    mov        eax,dword ptr [ebp+8]
 004F11C8    call       @IntfAddRef
 004F11CD    xor        eax,eax
 004F11CF    push       ebp
 004F11D0    push       4F1210
 004F11D5    push       dword ptr fs:[eax]
 004F11D8    mov        dword ptr fs:[eax],esp
 004F11DB    mov        eax,dword ptr [ebp+8]
 004F11DE    push       eax
 004F11DF    mov        ecx,dword ptr [ebp-4]
 004F11E2    xor        edx,edx
 004F11E4    mov        eax,esi
 004F11E6    call       TZGenericCachedResolver.Create
 004F11EB    mov        dword ptr [esi+30],0FFFFFFFF; TZDBLibCachedResolver.?f30:dword
 004F11F2    xor        eax,eax
 004F11F4    pop        edx
 004F11F5    pop        ecx
 004F11F6    pop        ecx
 004F11F7    mov        dword ptr fs:[eax],edx
 004F11FA    push       4F1217
 004F11FF    lea        eax,[ebp-4]
 004F1202    call       @IntfClear
 004F1207    lea        eax,[ebp+8]
 004F120A    call       @IntfClear
 004F120F    ret
<004F1210    jmp        @HandleFinally
<004F1215    jmp        004F11FF
 004F1217    mov        eax,esi
 004F1219    test       bl,bl
>004F121B    je         004F122C
 004F121D    call       @AfterConstruction
 004F1222    pop        dword ptr fs:[0]
 004F1229    add        esp,0C
 004F122C    mov        eax,esi
 004F122E    pop        esi
 004F122F    pop        ebx
 004F1230    pop        ecx
 004F1231    pop        ebp
 004F1232    ret        4
*}
//end;

//004F1238
//procedure sub_004F1238(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F1238    push       ebp
 004F1239    mov        ebp,esp
 004F123B    add        esp,0FFFFFFF0
 004F123E    push       ebx
 004F123F    push       esi
 004F1240    push       edi
 004F1241    xor        ebx,ebx
 004F1243    mov        dword ptr [ebp-0C],ebx
 004F1246    mov        dword ptr [ebp-10],ebx
 004F1249    mov        byte ptr [ebp-5],cl
 004F124C    mov        dword ptr [ebp-4],edx
 004F124F    mov        ebx,eax
 004F1251    mov        eax,dword ptr [ebp-4]
 004F1254    call       @IntfAddRef
 004F1259    xor        eax,eax
 004F125B    push       ebp
 004F125C    push       4F136E
 004F1261    push       dword ptr fs:[eax]
 004F1264    mov        dword ptr fs:[eax],esp
 004F1267    mov        eax,dword ptr [ebp+0C]
 004F126A    push       eax
 004F126B    mov        eax,dword ptr [ebp+8]
 004F126E    push       eax
 004F126F    mov        cl,byte ptr [ebp-5]
 004F1272    mov        edx,dword ptr [ebp-4]
 004F1275    mov        eax,ebx
 004F1277    call       004CF2B8
 004F127C    cmp        dword ptr [ebx+30],0FFFFFFFF; TZDBLibCachedResolver.?f30:dword
>004F1280    jne        004F12B1
 004F1282    xor        eax,eax
 004F1284    mov        dword ptr [ebx+30],eax; TZDBLibCachedResolver.?f30:dword
 004F1287    mov        eax,dword ptr [ebx+10]; TZDBLibCachedResolver.?f10:IZResultSetMetadata
 004F128A    mov        edx,dword ptr [eax]
 004F128C    call       dword ptr [edx+0C]
 004F128F    mov        edi,eax
 004F1291    test       edi,edi
>004F1293    jle        004F12B1
 004F1295    mov        esi,1
 004F129A    mov        eax,dword ptr [ebx+10]; TZDBLibCachedResolver.?f10:IZResultSetMetadata
 004F129D    mov        edx,esi
 004F129F    mov        ecx,dword ptr [eax]
 004F12A1    call       dword ptr [ecx+10]
 004F12A4    test       al,al
>004F12A6    je         004F12AD
 004F12A8    mov        dword ptr [ebx+30],esi; TZDBLibCachedResolver.?f30:dword
>004F12AB    jmp        004F12B1
 004F12AD    inc        esi
 004F12AE    dec        edi
<004F12AF    jne        004F129A
 004F12B1    cmp        byte ptr [ebp-5],2
>004F12B5    jne        004F1348
 004F12BB    cmp        dword ptr [ebx+30],0; TZDBLibCachedResolver.?f30:dword
>004F12BF    jle        004F1348
 004F12C5    mov        edx,dword ptr [ebx+30]; TZDBLibCachedResolver.?f30:dword
 004F12C8    mov        eax,dword ptr [ebp+0C]
 004F12CB    call       004C9638
 004F12D0    test       al,al
>004F12D2    je         004F1348
 004F12D4    lea        edx,[ebp-0C]
 004F12D7    mov        eax,dword ptr [ebx+0C]; TZDBLibCachedResolver.?fC:IZConnection
 004F12DA    mov        ecx,dword ptr [eax]
 004F12DC    call       dword ptr [ecx+0C]
 004F12DF    lea        ecx,[ebp-10]
 004F12E2    mov        edx,4F1388; 'SELECT @@IDENTITY'
 004F12E7    mov        eax,dword ptr [ebp-0C]
 004F12EA    mov        esi,dword ptr [eax]
 004F12EC    call       dword ptr [esi+0C]
 004F12EF    xor        eax,eax
 004F12F1    push       ebp
 004F12F2    push       4F1341
 004F12F7    push       dword ptr fs:[eax]
 004F12FA    mov        dword ptr fs:[eax],esp
 004F12FD    mov        eax,dword ptr [ebp-10]
 004F1300    mov        edx,dword ptr [eax]
 004F1302    call       dword ptr [edx+0C]
 004F1305    test       al,al
>004F1307    je         004F1323
 004F1309    mov        edx,1
 004F130E    mov        eax,dword ptr [ebp-10]
 004F1311    mov        ecx,dword ptr [eax]
 004F1313    call       dword ptr [ecx+38]
 004F1316    push       edx
 004F1317    push       eax
 004F1318    mov        edx,dword ptr [ebx+30]; TZDBLibCachedResolver.?f30:dword
 004F131B    mov        eax,dword ptr [ebp+8]
 004F131E    call       004CC1D4
 004F1323    xor        eax,eax
 004F1325    pop        edx
 004F1326    pop        ecx
 004F1327    pop        ecx
 004F1328    mov        dword ptr fs:[eax],edx
 004F132B    push       4F1348
 004F1330    mov        eax,dword ptr [ebp-10]
 004F1333    mov        edx,dword ptr [eax]
 004F1335    call       dword ptr [edx+10]
 004F1338    mov        eax,dword ptr [ebp-0C]
 004F133B    mov        edx,dword ptr [eax]
 004F133D    call       dword ptr [edx+14]
 004F1340    ret
<004F1341    jmp        @HandleFinally
<004F1346    jmp        004F1330
 004F1348    xor        eax,eax
 004F134A    pop        edx
 004F134B    pop        ecx
 004F134C    pop        ecx
 004F134D    mov        dword ptr fs:[eax],edx
 004F1350    push       4F1375
 004F1355    lea        eax,[ebp-10]
 004F1358    call       @IntfClear
 004F135D    lea        eax,[ebp-0C]
 004F1360    call       @IntfClear
 004F1365    lea        eax,[ebp-4]
 004F1368    call       @IntfClear
 004F136D    ret
<004F136E    jmp        @HandleFinally
<004F1373    jmp        004F1355
 004F1375    pop        edi
 004F1376    pop        esi
 004F1377    pop        ebx
 004F1378    mov        esp,ebp
 004F137A    pop        ebp
 004F137B    ret        8
*}
//end;

end.