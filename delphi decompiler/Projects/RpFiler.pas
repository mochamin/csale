{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpFiler;

interface

uses
  Classes, Windows, Graphics, RpBase, SysUtils, RpDefine;

type
  TRvNDRWriter = class(TBaseReport)
  public
    fA10:TColor;//fA10
    fA14:TBrushStyle;//fA14
    fA15:byte;//fA15
    //fA18:?;//fA18
    fA58:dword;//fA58
    fA5C:byte;//fA5C
    fA60:dword;//fA60
    fA64:dword;//fA64
    fA68:?Double;//fA68
    fA6C:dword;//fA6C
    fA90:byte;//fA90
    fA91:byte;//fA91
    fA92:byte;//fA92
    fA93:byte;//fA93
    fA94:byte;//fA94
    fA95:byte;//fA95
    fA96:word;//fA96
    fA98:byte;//fA98
    fAA0:dword;//fAA0
    fAA8:TColor;//fAA8
    fAAC:byte;//fAAC
    fAAD:TPenStyle;//fAAD
    fAB0:?Double;//fAB0
    fAB4:dword;//fAB4
    fAB8:byte;//fAB8
    fABC:Pointer;//fABC
    fAC0:Longint;//fAC0
    fAC4:byte;//fAC4
    fAC8:dword;//fAC8
    fACC:dword;//fACC
    fAD0:dword;//fAD0
    fAD4:dword;//fAD4
    //fAD8:?;//fAD8
    fB00:dword;//fB00
    fB04:dword;//fB04
    fB08:TMemoryStream;//fB08
    fB0C:TMemoryStream;//fB0C
    fB10:TFileName;//fB10
    StreamMode:TStreamMode;//fB14
    AccuracyMethod:TAccuracyMethod;//fB15
    fB16:byte;//fB16
    fB18:Int64;//fB18
    fB1C:dword;//fB1C
    fB20:Int64;//fB20
    fB24:dword;//fB24
    fB28:TStringList;//fB28
    fB2C:byte;//fB2C
    //fB30:?;//fB30
    fB32:word;//fB32
    fB34:dword;//fB34
    destructor Destroy; virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_00589250; virtual;
    //function sub_0058AA18():?; virtual;
    //procedure sub_0058A3CC(?:?; ?:?); virtual;
    //procedure sub_0058A5AC(?:?; ?:?; ?:?); virtual;
    //procedure sub_0058A758(?:?; ?:?); virtual;
    //procedure sub_0058A8FC(?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_0058AA1C; virtual;
    //procedure sub_0058A31C(?:?); virtual;
    procedure sub_0058A2A0; virtual;
    //procedure SetScaleX(?:?; ?:?); virtual;
    //procedure SetScaleY(?:?; ?:?); virtual;
    procedure SetTextBKMode; virtual;
    //procedure SetOrientation(?:?); virtual;
    //procedure sub_0058B250(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AA2C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AA88(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AAE4(?:?); virtual;
    procedure sub_0058AB18(); virtual;
    //procedure sub_0058ABD0(?:?); virtual;
    //procedure sub_0058AB9C(?:?); virtual;
    //procedure sub_0058AC04(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AC80(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058ACFC(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AD4C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058ADA0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AE80(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AEE4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058AF60(?:?; ?:?); virtual;
    //procedure sub_0058AFB4(?:?; ?:?); virtual;
    //procedure sub_0058B008(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B088(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B100(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B1FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B2A4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B330(?:?; ?:?); virtual;
    //procedure sub_0058B374(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0058B3DC(?:?); virtual;
    //procedure sub_0058B44C(?:?; ?:?); virtual;
    procedure sub_0058B548; virtual;
    procedure sub_0058B578; virtual;
    procedure sub_0058B5A8; virtual;
    //procedure sub_0058BD6C(?:?); virtual;
    //procedure sub_0058BE1C(?:?); virtual;
    //procedure sub_0058BED0(?:?); virtual;
    procedure sub_0058B5D8; virtual;
    procedure sub_0058BA84; virtual;
    procedure sub_0058BC10; virtual;
    procedure sub_0058BCE8; virtual;
    //function sub_0058A354(?:?):?; virtual;
    procedure sub_0058BD08; virtual;
    //procedure sub_0058C168(?:?; ?:?); virtual;
    //procedure sub_0058C25C(?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//0058918C
constructor TRvNDRWriter.Create(AOwner:TComponent);
begin
{*
 0058918C    push       ebx
 0058918D    push       esi
 0058918E    test       dl,dl
>00589190    je         0058919A
 00589192    add        esp,0FFFFFFF0
 00589195    call       @ClassCreate
 0058919A    mov        ebx,edx
 0058919C    mov        esi,eax
 0058919E    xor        edx,edx
 005891A0    mov        eax,esi
 005891A2    call       TBaseReport.Create
 005891A7    lea        eax,[esi+0B10]; TRvNDRWriter.?fB10:TFileName
 005891AD    call       @LStrClr
 005891B2    mov        byte ptr [esi+0B14],0; TRvNDRWriter.StreamMode:TStreamMode
 005891B9    mov        byte ptr [esi+0B16],0; TRvNDRWriter.?fB16:byte
 005891C0    mov        byte ptr [esi+0AB8],0; TRvNDRWriter.?fAB8:byte
 005891C7    mov        byte ptr [esi+0B15],1; TRvNDRWriter.AccuracyMethod:TAccuracyMethod
 005891CE    mov        dl,1
 005891D0    mov        eax,[0041C8E4]; TStringList
 005891D5    call       TObject.Create; TStringList.Create
 005891DA    mov        dword ptr [esi+0B28],eax; TRvNDRWriter.?fB28:TStringList
 005891E0    mov        eax,esi
 005891E2    test       bl,bl
>005891E4    je         005891F5
 005891E6    call       @AfterConstruction
 005891EB    pop        dword ptr fs:[0]
 005891F2    add        esp,0C
 005891F5    mov        eax,esi
 005891F7    pop        esi
 005891F8    pop        ebx
 005891F9    ret
*}
end;

//005891FC
destructor TRvNDRWriter.Destroy;
begin
{*
 005891FC    push       ebx
 005891FD    push       esi
 005891FE    call       @BeforeDestruction
 00589203    mov        ebx,edx
 00589205    mov        esi,eax
 00589207    lea        eax,[esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058920D    call       FreeAndNil
 00589212    mov        edx,ebx
 00589214    and        dl,0FC
 00589217    mov        eax,esi
 00589219    call       TBaseReport.Destroy
 0058921E    test       bl,bl
>00589220    jle        00589229
 00589222    mov        eax,esi
 00589224    call       @ClassDestroy
 00589229    pop        esi
 0058922A    pop        ebx
 0058922B    ret
*}
end;

//0058922C
//procedure sub_0058922C(?:?);
//begin
{*
 0058922C    push       ebx
 0058922D    mov        ebx,eax
 0058922F    cmp        word ptr [ebx+0ACA],0
>00589237    je         00589245
 00589239    mov        eax,dword ptr [ebx+0ACC]
 0058923F    call       dword ptr [ebx+0AC8]
 00589245    mov        eax,ebx
 00589247    call       00589660
 0058924C    pop        ebx
 0058924D    ret
*}
//end;

//00589250
procedure sub_00589250;
begin
{*
 00589250    push       ebx
 00589251    mov        ebx,eax
 00589253    mov        eax,ebx
 00589255    call       005881AC
 0058925A    cmp        byte ptr [ebx+785],0; TRvNDRWriter.?f785:byte
>00589261    jne        0058926A
 00589263    mov        eax,ebx
 00589265    call       00589788
 0058926A    pop        ebx
 0058926B    ret
*}
end;

//0058926C
//procedure sub_0058926C(?:?);
//begin
{*
 0058926C    push       ebx
 0058926D    mov        ebx,eax
 0058926F    cmp        word ptr [ebx+0AD2],0
>00589277    je         00589285
 00589279    mov        eax,dword ptr [ebx+0AD4]
 0058927F    call       dword ptr [ebx+0AD0]
 00589285    mov        eax,ebx
 00589287    call       00589B5C
 0058928C    pop        ebx
 0058928D    ret
*}
//end;

//00589290
//procedure sub_00589290(?:TRvNDRWriter; ?:Longint);
//begin
{*
 00589290    push       ecx
 00589291    mov        byte ptr [esp],dl
 00589294    cmp        byte ptr [eax+0B16],0; TRvNDRWriter.?fB16:byte
>0058929B    jne        005892A9
 0058929D    mov        edx,esp
 0058929F    mov        ecx,1
 005892A4    call       005895F8
 005892A9    pop        edx
 005892AA    ret
*}
//end;

//005892AC
//procedure sub_005892AC(?:TRvNDRWriter; ?:?);
//begin
{*
 005892AC    push       ecx
 005892AD    mov        word ptr [esp],dx
 005892B1    cmp        byte ptr [eax+0B16],0; TRvNDRWriter.?fB16:byte
>005892B8    jne        005892C6
 005892BA    mov        edx,esp
 005892BC    mov        ecx,2
 005892C1    call       005895F8
 005892C6    pop        edx
 005892C7    ret
*}
//end;

//005892C8
//procedure sub_005892C8(?:TRvNDRWriter; ?:Int64);
//begin
{*
 005892C8    push       ecx
 005892C9    mov        dword ptr [esp],edx
 005892CC    cmp        byte ptr [eax+0B16],0; TRvNDRWriter.?fB16:byte
>005892D3    jne        005892E1
 005892D5    mov        edx,esp
 005892D7    mov        ecx,4
 005892DC    call       005895F8
 005892E1    pop        edx
 005892E2    ret
*}
//end;

//005892E4
//procedure sub_005892E4(?:TRvNDRWriter; ?:AnsiString);
//begin
{*
 005892E4    push       ebp
 005892E5    mov        ebp,esp
 005892E7    push       ecx
 005892E8    push       ebx
 005892E9    push       esi
 005892EA    push       edi
 005892EB    mov        dword ptr [ebp-4],edx
 005892EE    mov        esi,eax
 005892F0    mov        eax,dword ptr [ebp-4]
 005892F3    call       @LStrAddRef
 005892F8    xor        eax,eax
 005892FA    push       ebp
 005892FB    push       589379
 00589300    push       dword ptr fs:[eax]
 00589303    mov        dword ptr fs:[eax],esp
 00589306    cmp        byte ptr [esi+0B16],0; TRvNDRWriter.?fB16:byte
>0058930D    jne        00589363
 0058930F    mov        eax,dword ptr [ebp-4]
 00589312    call       @LStrLen
 00589317    mov        ebx,eax
 00589319    cmp        bx,0C0
>0058931E    jae        0058932B
 00589320    mov        edx,ebx
 00589322    mov        eax,esi
 00589324    call       00589290
>00589329    jmp        0058934A
 0058932B    lea        edi,[ebx+0C000]
 00589331    mov        edx,edi
 00589333    shr        dx,8
 00589337    mov        eax,esi
 00589339    call       00589290
 0058933E    mov        edx,edi
 00589340    and        dl,0FF
 00589343    mov        eax,esi
 00589345    call       00589290
 0058934A    test       bx,bx
>0058934D    jbe        00589363
 0058934F    lea        eax,[ebp-4]
 00589352    call       @UniqueStringA
 00589357    mov        edx,eax
 00589359    movzx      ecx,bx
 0058935C    mov        eax,esi
 0058935E    call       005895F8
 00589363    xor        eax,eax
 00589365    pop        edx
 00589366    pop        ecx
 00589367    pop        ecx
 00589368    mov        dword ptr fs:[eax],edx
 0058936B    push       589380
 00589370    lea        eax,[ebp-4]
 00589373    call       @LStrClr
 00589378    ret
<00589379    jmp        @HandleFinally
<0058937E    jmp        00589370
 00589380    pop        edi
 00589381    pop        esi
 00589382    pop        ebx
 00589383    pop        ecx
 00589384    pop        ebp
 00589385    ret
*}
//end;

//00589388
//procedure sub_00589388(?:TRvNDRWriter; ?:?);
//begin
{*
 00589388    push       ebp
 00589389    mov        ebp,esp
 0058938B    push       ecx
 0058938C    cmp        byte ptr [eax+0B16],0; TRvNDRWriter.?fB16:byte
>00589393    jne        005893A9
 00589395    fld        qword ptr [ebp+8]
 00589398    fstp       dword ptr [ebp-4]
 0058939B    wait
 0058939C    lea        edx,[ebp-4]
 0058939F    mov        ecx,4
 005893A4    call       005895F8
 005893A9    pop        ecx
 005893AA    pop        ebp
 005893AB    ret        8
*}
//end;

//005893B0
//procedure sub_005893B0(?:TRvNDRWriter; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005893B0    push       ebp
 005893B1    mov        ebp,esp
 005893B3    push       ebx
 005893B4    mov        ebx,eax
 005893B6    push       dword ptr [ebp+14]
 005893B9    push       dword ptr [ebp+10]
 005893BC    mov        eax,ebx
 005893BE    call       00586138
 005893C3    fadd       qword ptr [ebx+900]; TRvNDRWriter.?f900:?Double
 005893C9    fmul       qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 005893CF    fdiv       dword ptr ds:[589418]; 100:Single
 005893D5    add        esp,0FFFFFFF8
 005893D8    fstp       qword ptr [esp]
 005893DB    wait
 005893DC    mov        eax,ebx
 005893DE    call       00589388
 005893E3    push       dword ptr [ebp+0C]
 005893E6    push       dword ptr [ebp+8]
 005893E9    mov        eax,ebx
 005893EB    call       00586154
 005893F0    fadd       qword ptr [ebx+908]; TRvNDRWriter.?f908:?Double
 005893F6    fmul       qword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 005893FC    fdiv       dword ptr ds:[589418]; 100:Single
 00589402    add        esp,0FFFFFFF8
 00589405    fstp       qword ptr [esp]
 00589408    wait
 00589409    mov        eax,ebx
 0058940B    call       00589388
 00589410    pop        ebx
 00589411    pop        ebp
 00589412    ret        10
*}
//end;

//0058941C
//procedure sub_0058941C(?:TRvNDRWriter; ?:TBitmap);
//begin
{*
 0058941C    push       ebp
 0058941D    mov        ebp,esp
 0058941F    push       ecx
 00589420    push       ebx
 00589421    push       esi
 00589422    push       edi
 00589423    mov        esi,edx
 00589425    mov        edi,eax
 00589427    cmp        byte ptr [edi+0B16],0; TRvNDRWriter.?fB16:byte
>0058942E    jne        0058954C
 00589434    cmp        dword ptr [edi+0B04],0; TRvNDRWriter.?fB04:dword
>0058943B    jne        00589458
 0058943D    mov        eax,dword ptr [edi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589443    mov        edx,dword ptr [eax]
 00589445    call       dword ptr [edx]; TStream.GetSize
 00589447    add        eax,dword ptr [edi+0AC0]; TRvNDRWriter.?fAC0:Longint
 0058944D    inc        eax
 0058944E    mov        dword ptr [edi+0B00],eax; TRvNDRWriter.?fB00:dword
 00589454    xor        ebx,ebx
>00589456    jmp        00589466
 00589458    mov        eax,dword ptr [edi+0B04]; TRvNDRWriter.?fB04:dword
 0058945E    mov        dword ptr [edi+0B00],eax; TRvNDRWriter.?fB00:dword
 00589464    mov        bl,80
 00589466    mov        eax,esi
 00589468    mov        edx,dword ptr ds:[42A4BC]; TBitmap
 0058946E    call       @IsClass
 00589473    test       al,al
>00589475    je         00589483
 00589477    lea        edx,[ebx+1]
 0058947A    mov        eax,edi
 0058947C    call       00589290
>00589481    jmp        005894C7
 00589483    mov        eax,esi
 00589485    mov        edx,dword ptr ds:[42A37C]; TMetafile
 0058948B    call       @IsClass
 00589490    test       al,al
>00589492    je         005894A0
 00589494    lea        edx,[ebx+2]
 00589497    mov        eax,edi
 00589499    call       00589290
>0058949E    jmp        005894C7
 005894A0    mov        eax,esi
 005894A2    mov        edx,dword ptr ds:[42A600]; TIcon
 005894A8    call       @IsClass
 005894AD    test       al,al
>005894AF    je         005894BD
 005894B1    lea        edx,[ebx+3]
 005894B4    mov        eax,edi
 005894B6    call       00589290
>005894BB    jmp        005894C7
 005894BD    lea        edx,[ebx+4]
 005894C0    mov        eax,edi
 005894C2    call       00589290
 005894C7    mov        eax,dword ptr [edi+0B04]; TRvNDRWriter.?fB04:dword
 005894CD    test       eax,eax
>005894CF    jne        0058953B
 005894D1    mov        dl,1
 005894D3    mov        eax,[0041CBF8]; TMemoryStream
 005894D8    call       TObject.Create; TMemoryStream.Create
 005894DD    mov        dword ptr [ebp-4],eax
 005894E0    xor        eax,eax
 005894E2    push       ebp
 005894E3    push       589534
 005894E8    push       dword ptr fs:[eax]
 005894EB    mov        dword ptr fs:[eax],esp
 005894EE    mov        edx,dword ptr [ebp-4]
 005894F1    mov        eax,esi
 005894F3    mov        ecx,dword ptr [eax]
 005894F5    call       dword ptr [ecx+58]; TBitmap.SaveToStream
 005894F8    mov        eax,dword ptr [ebp-4]
 005894FB    mov        edx,dword ptr [eax]
 005894FD    call       dword ptr [edx]; TStream.GetSize
 005894FF    mov        edx,eax
 00589501    mov        eax,edi
 00589503    call       005892C8
 00589508    mov        eax,dword ptr [ebp-4]
 0058950B    mov        edx,dword ptr [eax]
 0058950D    call       dword ptr [edx]; TStream.GetSize
 0058950F    mov        ecx,eax
 00589511    mov        eax,dword ptr [ebp-4]
 00589514    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 00589517    mov        eax,edi
 00589519    call       005895F8
 0058951E    xor        eax,eax
 00589520    pop        edx
 00589521    pop        ecx
 00589522    pop        ecx
 00589523    mov        dword ptr fs:[eax],edx
 00589526    push       58954C
 0058952B    mov        eax,dword ptr [ebp-4]
 0058952E    call       TObject.Free
 00589533    ret
<00589534    jmp        @HandleFinally
<00589539    jmp        0058952B
 0058953B    mov        edx,eax
 0058953D    mov        eax,edi
 0058953F    call       005892C8
 00589544    xor        eax,eax
 00589546    mov        dword ptr [edi+0B04],eax; TRvNDRWriter.?fB04:dword
 0058954C    pop        edi
 0058954D    pop        esi
 0058954E    pop        ebx
 0058954F    pop        ecx
 00589550    pop        ebp
 00589551    ret
*}
//end;

//00589554
//procedure sub_00589554(?:TRvNDRWriter; ?:?);
//begin
{*
 00589554    push       ebx
 00589555    push       esi
 00589556    push       edi
 00589557    add        esp,0FFFFFFF8
 0058955A    mov        esi,edx
 0058955C    lea        edi,[esp]
 0058955F    movs       dword ptr [edi],dword ptr [esi]
 00589560    movs       dword ptr [edi],dword ptr [esi]
 00589561    mov        ebx,eax
 00589563    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>0058956A    jne        00589596
 0058956C    mov        edx,dword ptr [esp]
 0058956F    mov        eax,ebx
 00589571    call       005860A8
 00589576    add        esp,0FFFFFFF8
 00589579    fstp       qword ptr [esp]
 0058957C    wait
 0058957D    mov        edx,dword ptr [esp+0C]
 00589581    mov        eax,ebx
 00589583    call       005860D4
 00589588    add        esp,0FFFFFFF8
 0058958B    fstp       qword ptr [esp]
 0058958E    wait
 0058958F    mov        eax,ebx
 00589591    call       005893B0
 00589596    pop        ecx
 00589597    pop        edx
 00589598    pop        edi
 00589599    pop        esi
 0058959A    pop        ebx
 0058959B    ret
*}
//end;

//0058959C
//procedure sub_0058959C(?:TRvNDRWriter; ?:?);
//begin
{*
 0058959C    push       ebx
 0058959D    push       esi
 0058959E    push       edi
 0058959F    add        esp,0FFFFFFF0
 005895A2    mov        esi,edx
 005895A4    lea        edi,[esp]
 005895A7    movs       dword ptr [edi],dword ptr [esi]
 005895A8    movs       dword ptr [edi],dword ptr [esi]
 005895A9    movs       dword ptr [edi],dword ptr [esi]
 005895AA    movs       dword ptr [edi],dword ptr [esi]
 005895AB    mov        ebx,eax
 005895AD    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>005895B4    jne        005895CA
 005895B6    mov        edx,esp
 005895B8    mov        eax,ebx
 005895BA    call       00589554
 005895BF    lea        edx,[esp+8]
 005895C3    mov        eax,ebx
 005895C5    call       00589554
 005895CA    add        esp,10
 005895CD    pop        edi
 005895CE    pop        esi
 005895CF    pop        ebx
 005895D0    ret
*}
//end;

//005895D4
//procedure sub_005895D4(?:TRvNDRWriter);
//begin
{*
 005895D4    push       ebx
 005895D5    mov        ebx,eax
 005895D7    mov        edx,dword ptr [ebx+0ABC]; TRvNDRWriter.?fABC:Pointer
 005895DD    mov        ecx,dword ptr [ebx+0AC0]; TRvNDRWriter.?fAC0:Longint
 005895E3    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 005895E9    call       TStream.WriteBuffer
 005895EE    xor        eax,eax
 005895F0    mov        dword ptr [ebx+0AC0],eax; TRvNDRWriter.?fAC0:Longint
 005895F6    pop        ebx
 005895F7    ret
*}
//end;

//005895F8
//procedure sub_005895F8(?:TRvNDRWriter; ?:Single; ?:Longint);
//begin
{*
 005895F8    push       ebx
 005895F9    push       esi
 005895FA    push       edi
 005895FB    mov        esi,ecx
 005895FD    mov        edi,edx
 005895FF    mov        ebx,eax
 00589601    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>00589608    jne        0058965B
 0058960A    test       esi,esi
>0058960C    je         0058965B
 0058960E    mov        eax,dword ptr [ebx+0AC0]; TRvNDRWriter.?fAC0:Longint
 00589614    add        eax,esi
 00589616    cmp        eax,4000
>0058961B    jle        00589624
 0058961D    mov        eax,ebx
 0058961F    call       005895D4
 00589624    cmp        esi,4000
>0058962A    jle        0058963D
 0058962C    mov        edx,edi
 0058962E    mov        ecx,esi
 00589630    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589636    call       TStream.WriteBuffer
>0058963B    jmp        0058965B
 0058963D    mov        eax,dword ptr [ebx+0ABC]; TRvNDRWriter.?fABC:Pointer
 00589643    mov        edx,dword ptr [ebx+0AC0]; TRvNDRWriter.?fAC0:Longint
 00589649    lea        edx,[eax+edx]
 0058964C    mov        eax,edi
 0058964E    mov        ecx,esi
 00589650    call       Move
 00589655    add        dword ptr [ebx+0AC0],esi; TRvNDRWriter.?fAC0:Longint
 0058965B    pop        edi
 0058965C    pop        esi
 0058965D    pop        ebx
 0058965E    ret
*}
//end;

//00589660
//procedure sub_00589660(?:TRvNDRWriter);
//begin
{*
 00589660    push       ebx
 00589661    push       esi
 00589662    mov        ebx,eax
 00589664    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>0058966B    jne        00589784
 00589671    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>00589678    je         00589784
 0058967E    mov        eax,ebx
 00589680    call       00584D84
 00589685    test       al,al
>00589687    jne        00589784
 0058968D    mov        eax,ebx
 0058968F    mov        edx,dword ptr [eax]
 00589691    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00589694    mov        esi,dword ptr [eax+14]
 00589697    mov        eax,esi
 00589699    call       TBrush.GetColor
 0058969E    cmp        eax,dword ptr [ebx+0A10]; TRvNDRWriter.?fA10:TColor
>005896A4    jne        005896AF
 005896A6    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>005896AD    je         005896D5
 005896AF    mov        dl,29
 005896B1    mov        eax,ebx
 005896B3    call       00589290
 005896B8    mov        eax,esi
 005896BA    call       TBrush.GetColor
 005896BF    mov        edx,eax
 005896C1    mov        eax,ebx
 005896C3    call       005892C8
 005896C8    mov        eax,esi
 005896CA    call       TBrush.GetColor
 005896CF    mov        dword ptr [ebx+0A10],eax; TRvNDRWriter.?fA10:TColor
 005896D5    mov        eax,esi
 005896D7    call       TBrush.GetStyle
 005896DC    cmp        al,byte ptr [ebx+0A14]; TRvNDRWriter.?fA14:TBrushStyle
>005896E2    jne        005896ED
 005896E4    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>005896EB    je         00589713
 005896ED    mov        dl,2A
 005896EF    mov        eax,ebx
 005896F1    call       00589290
 005896F6    mov        eax,esi
 005896F8    call       TBrush.GetStyle
 005896FD    mov        edx,eax
 005896FF    mov        eax,ebx
 00589701    call       00589290
 00589706    mov        eax,esi
 00589708    call       TBrush.GetStyle
 0058970D    mov        byte ptr [ebx+0A14],al; TRvNDRWriter.?fA14:TBrushStyle
 00589713    mov        eax,esi
 00589715    call       TBrush.GetBitmap
 0058971A    test       eax,eax
>0058971C    je         0058972E
 0058971E    mov        eax,esi
 00589720    call       TBrush.GetBitmap
 00589725    mov        edx,dword ptr [eax]
 00589727    call       dword ptr [edx+1C]; TBitmap.GetEmpty
 0058972A    test       al,al
>0058972C    je         0058975B
 0058972E    cmp        byte ptr [ebx+0A15],0; TRvNDRWriter.?fA15:byte
>00589735    jne        00589740
 00589737    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>0058973E    je         00589784
 00589740    mov        dl,2B
 00589742    mov        eax,ebx
 00589744    call       00589290
 00589749    xor        edx,edx
 0058974B    mov        eax,ebx
 0058974D    call       00589290
 00589752    mov        byte ptr [ebx+0A15],0; TRvNDRWriter.?fA15:byte
>00589759    jmp        00589784
 0058975B    mov        dl,2B
 0058975D    mov        eax,ebx
 0058975F    call       00589290
 00589764    mov        dl,1
 00589766    mov        eax,ebx
 00589768    call       00589290
 0058976D    mov        eax,esi
 0058976F    call       TBrush.GetBitmap
 00589774    mov        edx,eax
 00589776    mov        eax,ebx
 00589778    call       0058941C
 0058977D    mov        byte ptr [ebx+0A15],1; TRvNDRWriter.?fA15:byte
 00589784    pop        esi
 00589785    pop        ebx
 00589786    ret
*}
//end;

//00589788
//procedure sub_00589788(?:TRvNDRWriter);
//begin
{*
 00589788    push       ebp
 00589789    mov        ebp,esp
 0058978B    add        esp,0FFFFFFF4
 0058978E    push       ebx
 0058978F    push       esi
 00589790    push       edi
 00589791    xor        edx,edx
 00589793    mov        dword ptr [ebp-0C],edx
 00589796    mov        edi,eax
 00589798    xor        eax,eax
 0058979A    push       ebp
 0058979B    push       589AFA
 005897A0    push       dword ptr fs:[eax]
 005897A3    mov        dword ptr fs:[eax],esp
 005897A6    cmp        byte ptr [edi+0B16],0; TRvNDRWriter.?fB16:byte
>005897AD    jne        00589AE4
 005897B3    cmp        byte ptr [edi+8FD],0; TRvNDRWriter.?f8FD:byte
>005897BA    je         00589AE4
 005897C0    mov        eax,edi
 005897C2    call       00584D84
 005897C7    test       al,al
>005897C9    jne        00589AE4
 005897CF    lea        esi,[edi+6E0]; TRvNDRWriter.?f6E0:?
 005897D5    xor        ebx,ebx
 005897D7    mov        eax,esi
 005897D9    lea        edx,[edi+0A18]; TRvNDRWriter.?fA18:?
 005897DF    xor        ecx,ecx
 005897E1    mov        cl,byte ptr [eax]
 005897E3    inc        ecx
 005897E4    call       @AStrCmp
>005897E9    jne        005897F4
 005897EB    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>005897F2    je         00589822
 005897F4    mov        dl,33
 005897F6    mov        eax,edi
 005897F8    call       00589290
 005897FD    lea        eax,[ebp-0C]
 00589800    mov        edx,esi
 00589802    call       @LStrFromString
 00589807    mov        edx,dword ptr [ebp-0C]
 0058980A    mov        eax,edi
 0058980C    call       005892E4
 00589811    lea        eax,[edi+0A18]; TRvNDRWriter.?fA18:?
 00589817    mov        edx,esi
 00589819    mov        cl,3C
 0058981B    call       @PStrNCpy
 00589820    mov        bl,1
 00589822    mov        eax,dword ptr [esi+40]
 00589825    cmp        eax,dword ptr [edi+0A58]; TRvNDRWriter.?fA58:dword
>0058982B    jne        00589836
 0058982D    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589834    je         00589852
 00589836    mov        dl,34
 00589838    mov        eax,edi
 0058983A    call       00589290
 0058983F    mov        edx,dword ptr [esi+40]
 00589842    mov        eax,edi
 00589844    call       005892C8
 00589849    mov        eax,dword ptr [esi+40]
 0058984C    mov        dword ptr [edi+0A58],eax; TRvNDRWriter.?fA58:dword
 00589852    mov        al,byte ptr [esi+44]
 00589855    cmp        al,byte ptr [edi+0A5C]; TRvNDRWriter.?fA5C:byte
>0058985B    jne        00589866
 0058985D    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589864    je         00589884
 00589866    mov        dl,35
 00589868    mov        eax,edi
 0058986A    call       00589290
 0058986F    mov        dl,byte ptr [esi+44]
 00589872    mov        eax,edi
 00589874    call       00589290
 00589879    mov        al,byte ptr [esi+44]
 0058987C    mov        byte ptr [edi+0A5C],al; TRvNDRWriter.?fA5C:byte
 00589882    mov        bl,1
 00589884    mov        eax,dword ptr [esi+88]
 0058988A    cmp        eax,dword ptr [edi+0AA0]; TRvNDRWriter.?fAA0:dword
>00589890    jne        0058989B
 00589892    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589899    je         005898BF
 0058989B    mov        dl,3F
 0058989D    mov        eax,edi
 0058989F    call       00589290
 005898A4    mov        dl,byte ptr [esi+88]
 005898AA    mov        eax,edi
 005898AC    call       00589290
 005898B1    mov        eax,dword ptr [esi+88]
 005898B7    mov        dword ptr [edi+0AA0],eax; TRvNDRWriter.?fAA0:dword
 005898BD    mov        bl,1
 005898BF    mov        al,byte ptr [esi+78]
 005898C2    cmp        al,byte ptr [edi+0A90]; TRvNDRWriter.?fA90:byte
>005898C8    jne        005898D3
 005898CA    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>005898D1    je         005898F1
 005898D3    mov        dl,37
 005898D5    mov        eax,edi
 005898D7    call       00589290
 005898DC    mov        dl,byte ptr [esi+78]
 005898DF    mov        eax,edi
 005898E1    call       00589290
 005898E6    mov        al,byte ptr [esi+78]
 005898E9    mov        byte ptr [edi+0A90],al; TRvNDRWriter.?fA90:byte
 005898EF    mov        bl,1
 005898F1    mov        al,byte ptr [esi+7A]
 005898F4    cmp        al,byte ptr [edi+0A92]; TRvNDRWriter.?fA92:byte
>005898FA    jne        00589905
 005898FC    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589903    je         00589923
 00589905    mov        dl,39
 00589907    mov        eax,edi
 00589909    call       00589290
 0058990E    mov        dl,byte ptr [esi+7A]
 00589911    mov        eax,edi
 00589913    call       00589290
 00589918    mov        al,byte ptr [esi+7A]
 0058991B    mov        byte ptr [edi+0A92],al; TRvNDRWriter.?fA92:byte
 00589921    mov        bl,1
 00589923    mov        al,byte ptr [esi+79]
 00589926    cmp        al,byte ptr [edi+0A91]; TRvNDRWriter.?fA91:byte
>0058992C    jne        00589937
 0058992E    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589935    je         00589955
 00589937    mov        dl,38
 00589939    mov        eax,edi
 0058993B    call       00589290
 00589940    mov        dl,byte ptr [esi+79]
 00589943    mov        eax,edi
 00589945    call       00589290
 0058994A    mov        al,byte ptr [esi+79]
 0058994D    mov        byte ptr [edi+0A91],al; TRvNDRWriter.?fA91:byte
 00589953    mov        bl,1
 00589955    mov        al,byte ptr [esi+7B]
 00589958    cmp        al,byte ptr [edi+0A93]; TRvNDRWriter.?fA93:byte
>0058995E    jne        00589969
 00589960    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589967    je         00589987
 00589969    mov        dl,3A
 0058996B    mov        eax,edi
 0058996D    call       00589290
 00589972    mov        dl,byte ptr [esi+7B]
 00589975    mov        eax,edi
 00589977    call       00589290
 0058997C    mov        al,byte ptr [esi+7B]
 0058997F    mov        byte ptr [edi+0A93],al; TRvNDRWriter.?fA93:byte
 00589985    mov        bl,1
 00589987    mov        al,byte ptr [esi+7D]
 0058998A    cmp        al,byte ptr [edi+0A95]; TRvNDRWriter.?fA95:byte
>00589990    jne        0058999B
 00589992    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589999    je         005899B7
 0058999B    mov        dl,3B
 0058999D    mov        eax,edi
 0058999F    call       00589290
 005899A4    mov        dl,byte ptr [esi+7D]
 005899A7    mov        eax,edi
 005899A9    call       00589290
 005899AE    mov        al,byte ptr [esi+7D]
 005899B1    mov        byte ptr [edi+0A95],al; TRvNDRWriter.?fA95:byte
 005899B7    mov        al,byte ptr [esi+7C]
 005899BA    cmp        al,byte ptr [edi+0A94]; TRvNDRWriter.?fA94:byte
>005899C0    jne        005899CB
 005899C2    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>005899C9    je         005899E7
 005899CB    mov        dl,3C
 005899CD    mov        eax,edi
 005899CF    call       00589290
 005899D4    mov        dl,byte ptr [esi+7C]
 005899D7    mov        eax,edi
 005899D9    call       00589290
 005899DE    mov        al,byte ptr [esi+7C]
 005899E1    mov        byte ptr [edi+0A94],al; TRvNDRWriter.?fA94:byte
 005899E7    mov        ax,word ptr [esi+7E]
 005899EB    cmp        ax,word ptr [edi+0A96]; TRvNDRWriter.?fA96:word
>005899F2    jne        005899FD
 005899F4    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>005899FB    je         00589A1C
 005899FD    mov        dl,3D
 005899FF    mov        eax,edi
 00589A01    call       00589290
 00589A06    mov        dx,word ptr [esi+7E]
 00589A0A    mov        eax,edi
 00589A0C    call       005892AC
 00589A11    mov        ax,word ptr [esi+7E]
 00589A15    mov        word ptr [edi+0A96],ax; TRvNDRWriter.?fA96:word
 00589A1C    mov        al,byte ptr [esi+80]
 00589A22    cmp        al,byte ptr [edi+0A98]; TRvNDRWriter.?fA98:byte
>00589A28    jne        00589A33
 00589A2A    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589A31    je         00589A55
 00589A33    mov        dl,3E
 00589A35    mov        eax,edi
 00589A37    call       00589290
 00589A3C    mov        dl,byte ptr [esi+80]
 00589A42    mov        eax,edi
 00589A44    call       00589290
 00589A49    mov        al,byte ptr [esi+80]
 00589A4F    mov        byte ptr [edi+0A98],al; TRvNDRWriter.?fA98:byte
 00589A55    fld        qword ptr [esi+50]
 00589A58    fcomp      qword ptr [edi+0A68]; TRvNDRWriter.?fA68:?Double
 00589A5E    fnstsw     al
 00589A60    sahf
>00589A61    jne        00589A70
 00589A63    cmp        byte ptr [edi+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589A6A    jne        00589A70
 00589A6C    test       bl,bl
>00589A6E    je         00589AE4
 00589A70    mov        dl,36
 00589A72    mov        eax,edi
 00589A74    call       00589290
 00589A79    push       dword ptr [esi+54]
 00589A7C    push       dword ptr [esi+50]
 00589A7F    mov        eax,edi
 00589A81    call       00589388
 00589A86    mov        byte ptr [edi+0B16],1; TRvNDRWriter.?fB16:byte
 00589A8D    mov        edx,589B10; 'abcdefg hijklmnop qrstuv wxyz ABCDEFG HIJKLMNOP QRSTUV WXYZ 0123456789'
 00589A92    mov        eax,edi
 00589A94    mov        ecx,dword ptr [eax]
 00589A96    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 00589A9C    fmul       dword ptr ds:[589B58]; 100:Single
 00589AA2    fdiv       qword ptr [edi+978]; TRvNDRWriter.?f978:?Double
 00589AA8    fstp       qword ptr [ebp-8]
 00589AAB    wait
 00589AAC    mov        byte ptr [edi+0B16],0; TRvNDRWriter.?fB16:byte
 00589AB3    push       dword ptr [ebp-4]
 00589AB6    push       dword ptr [ebp-8]
 00589AB9    mov        eax,edi
 00589ABB    call       00589388
 00589AC0    mov        eax,dword ptr [esi+48]
 00589AC3    mov        dword ptr [edi+0A60],eax; TRvNDRWriter.?fA60:dword
 00589AC9    mov        eax,dword ptr [esi+4C]
 00589ACC    mov        dword ptr [edi+0A64],eax; TRvNDRWriter.?fA64:dword
 00589AD2    mov        eax,dword ptr [esi+50]
 00589AD5    mov        dword ptr [edi+0A68],eax; TRvNDRWriter.?fA68:?Double
 00589ADB    mov        eax,dword ptr [esi+54]
 00589ADE    mov        dword ptr [edi+0A6C],eax; TRvNDRWriter.?fA6C:dword
 00589AE4    xor        eax,eax
 00589AE6    pop        edx
 00589AE7    pop        ecx
 00589AE8    pop        ecx
 00589AE9    mov        dword ptr fs:[eax],edx
 00589AEC    push       589B01
 00589AF1    lea        eax,[ebp-0C]
 00589AF4    call       @LStrClr
 00589AF9    ret
<00589AFA    jmp        @HandleFinally
<00589AFF    jmp        00589AF1
 00589B01    pop        edi
 00589B02    pop        esi
 00589B03    pop        ebx
 00589B04    mov        esp,ebp
 00589B06    pop        ebp
 00589B07    ret
*}
//end;

//00589B5C
//procedure sub_00589B5C(?:TRvNDRWriter);
//begin
{*
 00589B5C    push       ebx
 00589B5D    push       esi
 00589B5E    add        esp,0FFFFFFF4
 00589B61    mov        ebx,eax
 00589B63    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>00589B6A    jne        00589C9F
 00589B70    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>00589B77    je         00589C9F
 00589B7D    mov        eax,ebx
 00589B7F    call       00584D84
 00589B84    test       al,al
>00589B86    jne        00589C9F
 00589B8C    mov        eax,ebx
 00589B8E    mov        edx,dword ptr [eax]
 00589B90    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00589B93    mov        esi,dword ptr [eax+10]
 00589B96    mov        eax,esi
 00589B98    call       TPen.GetColor
 00589B9D    cmp        eax,dword ptr [ebx+0AA8]; TRvNDRWriter.?fAA8:TColor
>00589BA3    jne        00589BAE
 00589BA5    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589BAC    je         00589BD4
 00589BAE    mov        dl,47
 00589BB0    mov        eax,ebx
 00589BB2    call       00589290
 00589BB7    mov        eax,esi
 00589BB9    call       TPen.GetColor
 00589BBE    mov        edx,eax
 00589BC0    mov        eax,ebx
 00589BC2    call       005892C8
 00589BC7    mov        eax,esi
 00589BC9    call       TPen.GetColor
 00589BCE    mov        dword ptr [ebx+0AA8],eax; TRvNDRWriter.?fAA8:TColor
 00589BD4    mov        al,byte ptr [esi+18]
 00589BD7    cmp        al,byte ptr [ebx+0AAC]; TRvNDRWriter.?fAAC:byte
>00589BDD    jne        00589BE8
 00589BDF    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589BE6    je         00589C04
 00589BE8    mov        dl,48
 00589BEA    mov        eax,ebx
 00589BEC    call       00589290
 00589BF1    mov        dl,byte ptr [esi+18]
 00589BF4    mov        eax,ebx
 00589BF6    call       00589290
 00589BFB    mov        al,byte ptr [esi+18]
 00589BFE    mov        byte ptr [ebx+0AAC],al; TRvNDRWriter.?fAAC:byte
 00589C04    mov        eax,esi
 00589C06    call       TPen.GetStyle
 00589C0B    cmp        al,byte ptr [ebx+0AAD]; TRvNDRWriter.?fAAD:TPenStyle
>00589C11    jne        00589C1C
 00589C13    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589C1A    je         00589C42
 00589C1C    mov        dl,49
 00589C1E    mov        eax,ebx
 00589C20    call       00589290
 00589C25    mov        eax,esi
 00589C27    call       TPen.GetStyle
 00589C2C    mov        edx,eax
 00589C2E    mov        eax,ebx
 00589C30    call       00589290
 00589C35    mov        eax,esi
 00589C37    call       TPen.GetStyle
 00589C3C    mov        byte ptr [ebx+0AAD],al; TRvNDRWriter.?fAAD:TPenStyle
 00589C42    mov        eax,esi
 00589C44    call       TPen.GetWidth
 00589C49    mov        dword ptr [esp+8],eax
 00589C4D    fild       dword ptr [esp+8]
 00589C51    fild       dword ptr [ebx+8DC]; TRvNDRWriter.?f8DC:Single
 00589C57    fdivp      st(1),st
 00589C59    fstp       qword ptr [esp]
 00589C5C    wait
 00589C5D    fld        qword ptr [esp]
 00589C60    fcomp      qword ptr [ebx+0AB0]; TRvNDRWriter.?fAB0:?Double
 00589C66    fnstsw     al
 00589C68    sahf
>00589C69    jne        00589C74
 00589C6B    cmp        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
>00589C72    je         00589C9F
 00589C74    mov        dl,4A
 00589C76    mov        eax,ebx
 00589C78    call       00589290
 00589C7D    push       dword ptr [esp+4]
 00589C81    push       dword ptr [esp+4]
 00589C85    mov        eax,ebx
 00589C87    call       00589388
 00589C8C    mov        eax,dword ptr [esp]
 00589C8F    mov        dword ptr [ebx+0AB0],eax; TRvNDRWriter.?fAB0:?Double
 00589C95    mov        eax,dword ptr [esp+4]
 00589C99    mov        dword ptr [ebx+0AB4],eax; TRvNDRWriter.?fAB4:dword
 00589C9F    add        esp,0C
 00589CA2    pop        esi
 00589CA3    pop        ebx
 00589CA4    ret
*}
//end;

//00589CA8
//procedure sub_00589CA8(?:TRvNDRWriter);
//begin
{*
 00589CA8    push       ebx
 00589CA9    mov        ebx,eax
 00589CAB    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>00589CB2    jne        00589EF6
 00589CB8    mov        dl,5A
 00589CBA    mov        eax,ebx
 00589CBC    call       00589290
 00589CC1    mov        dx,7E1
 00589CC5    mov        eax,ebx
 00589CC7    call       005892AC
 00589CCC    mov        edx,dword ptr [ebx+96C]; TRvNDRWriter.?f96C:String
 00589CD2    mov        eax,ebx
 00589CD4    call       005892E4
 00589CD9    mov        eax,ebx
 00589CDB    call       005895D4
 00589CE0    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589CE6    call       TStream.GetPosition
 00589CEB    mov        dword ptr [ebx+0B20],eax; TRvNDRWriter.?fB20:Int64
 00589CF1    xor        edx,edx
 00589CF3    mov        eax,ebx
 00589CF5    call       005892AC
 00589CFA    mov        dx,word ptr [ebx+910]; TRvNDRWriter.?f910:Integer
 00589D01    mov        eax,ebx
 00589D03    call       005892AC
 00589D08    mov        dx,word ptr [ebx+914]; TRvNDRWriter.?f914:Integer
 00589D0F    mov        eax,ebx
 00589D11    call       005892AC
 00589D16    mov        eax,ebx
 00589D18    call       00584D2C
 00589D1D    test       al,al
>00589D1F    je         00589D65
 00589D21    push       dword ptr [ebx+99C]; TRvNDRWriter.?f99C:dword
 00589D27    push       dword ptr [ebx+998]; TRvNDRWriter.?f998:?Double
 00589D2D    mov        eax,ebx
 00589D2F    call       00586138
 00589D34    add        esp,0FFFFFFF8
 00589D37    fstp       qword ptr [esp]
 00589D3A    wait
 00589D3B    mov        eax,ebx
 00589D3D    call       00589388
 00589D42    push       dword ptr [ebx+994]; TRvNDRWriter.?f994:dword
 00589D48    push       dword ptr [ebx+990]; TRvNDRWriter.?f990:?Double
 00589D4E    mov        eax,ebx
 00589D50    call       00586154
 00589D55    add        esp,0FFFFFFF8
 00589D58    fstp       qword ptr [esp]
 00589D5B    wait
 00589D5C    mov        eax,ebx
 00589D5E    call       00589388
>00589D63    jmp        00589DAB
 00589D65    mov        eax,ebx
 00589D67    call       005846EC
 00589D6C    add        esp,0FFFFFFF8
 00589D6F    fstp       qword ptr [esp]
 00589D72    wait
 00589D73    mov        eax,ebx
 00589D75    call       00586138
 00589D7A    add        esp,0FFFFFFF8
 00589D7D    fstp       qword ptr [esp]
 00589D80    wait
 00589D81    mov        eax,ebx
 00589D83    call       00589388
 00589D88    mov        eax,ebx
 00589D8A    call       00584684
 00589D8F    add        esp,0FFFFFFF8
 00589D92    fstp       qword ptr [esp]
 00589D95    wait
 00589D96    mov        eax,ebx
 00589D98    call       00586154
 00589D9D    add        esp,0FFFFFFF8
 00589DA0    fstp       qword ptr [esp]
 00589DA3    wait
 00589DA4    mov        eax,ebx
 00589DA6    call       00589388
 00589DAB    push       dword ptr [ebx+7EC]; TRvNDRWriter.?f7EC:dword
 00589DB1    push       dword ptr [ebx+7E8]; TRvNDRWriter.?f7E8:?Double
 00589DB7    mov        eax,ebx
 00589DB9    call       00589388
 00589DBE    push       dword ptr [ebx+7F4]; TRvNDRWriter.?f7F4:dword
 00589DC4    push       dword ptr [ebx+7F0]; TRvNDRWriter.?f7F0:?Double
 00589DCA    mov        eax,ebx
 00589DCC    call       00589388
 00589DD1    push       dword ptr [ebx+7FC]; TRvNDRWriter.?f7FC:dword
 00589DD7    push       dword ptr [ebx+7F8]; TRvNDRWriter.?f7F8:?Double
 00589DDD    mov        eax,ebx
 00589DDF    call       00589388
 00589DE4    push       dword ptr [ebx+804]; TRvNDRWriter.?f804:dword
 00589DEA    push       dword ptr [ebx+800]; TRvNDRWriter.?f800:?Double
 00589DF0    mov        eax,ebx
 00589DF2    call       00589388
 00589DF7    mov        dl,byte ptr [ebx+971]; TRvNDRWriter.?f971:byte
 00589DFD    mov        eax,ebx
 00589DFF    call       00589290
 00589E04    mov        eax,ebx
 00589E06    call       00584D2C
 00589E0B    test       al,al
>00589E0D    jne        00589E1A
 00589E0F    mov        eax,ebx
 00589E11    call       00584844
 00589E16    test       eax,eax
>00589E18    jne        00589E6F
 00589E1A    mov        dx,109
 00589E1E    mov        eax,ebx
 00589E20    call       005892AC
 00589E25    mov        eax,ebx
 00589E27    call       00585EFC
 00589E2C    mov        edx,eax
 00589E2E    mov        eax,ebx
 00589E30    call       00589290
 00589E35    mov        eax,ebx
 00589E37    call       00585ED0
 00589E3C    mov        edx,eax
 00589E3E    mov        eax,ebx
 00589E40    call       00589290
 00589E45    mov        dx,1
 00589E49    mov        eax,ebx
 00589E4B    call       005892AC
 00589E50    mov        dx,1
 00589E54    mov        eax,ebx
 00589E56    call       005892AC
 00589E5B    xor        edx,edx
 00589E5D    mov        eax,ebx
 00589E5F    call       005892AC
 00589E64    xor        edx,edx
 00589E66    mov        eax,ebx
 00589E68    call       005892AC
>00589E6D    jmp        00589EE9
 00589E6F    mov        eax,ebx
 00589E71    call       00584844
 00589E76    mov        dx,word ptr [eax+38]
 00589E7A    mov        eax,ebx
 00589E7C    call       005892AC
 00589E81    mov        eax,ebx
 00589E83    call       00585EFC
 00589E88    mov        edx,eax
 00589E8A    mov        eax,ebx
 00589E8C    call       00589290
 00589E91    mov        eax,ebx
 00589E93    call       00585ED0
 00589E98    mov        edx,eax
 00589E9A    mov        eax,ebx
 00589E9C    call       00589290
 00589EA1    mov        eax,ebx
 00589EA3    call       00584844
 00589EA8    mov        dx,word ptr [eax+36]
 00589EAC    mov        eax,ebx
 00589EAE    call       005892AC
 00589EB3    mov        eax,ebx
 00589EB5    call       00584844
 00589EBA    mov        dx,word ptr [eax+2E]
 00589EBE    mov        eax,ebx
 00589EC0    call       005892AC
 00589EC5    mov        eax,ebx
 00589EC7    call       00584844
 00589ECC    mov        dx,word ptr [eax+32]
 00589ED0    mov        eax,ebx
 00589ED2    call       005892AC
 00589ED7    mov        eax,ebx
 00589ED9    call       00584844
 00589EDE    mov        dx,word ptr [eax+30]
 00589EE2    mov        eax,ebx
 00589EE4    call       005892AC
 00589EE9    mov        edx,dword ptr [ebx+858]; TRvNDRWriter.?f858:String
 00589EEF    mov        eax,ebx
 00589EF1    call       005892E4
 00589EF6    pop        ebx
 00589EF7    ret
*}
//end;

//00589EF8
//procedure sub_00589EF8(?:TRvNDRWriter);
//begin
{*
 00589EF8    push       ebx
 00589EF9    push       esi
 00589EFA    mov        ebx,eax
 00589EFC    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>00589F03    jne        00589F5C
 00589F05    cmp        dword ptr [ebx+0B20],0; TRvNDRWriter.?fB20:Int64
>00589F0C    jle        00589F5C
 00589F0E    mov        eax,ebx
 00589F10    call       005895D4
 00589F15    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589F1B    call       TStream.GetPosition
 00589F20    mov        esi,eax
 00589F22    mov        eax,dword ptr [ebx+0B20]; TRvNDRWriter.?fB20:Int64
 00589F28    cdq
 00589F29    push       edx
 00589F2A    push       eax
 00589F2B    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589F31    call       TStream.SetPosition
 00589F36    lea        edx,[ebx+790]; TRvNDRWriter.?f790:dword
 00589F3C    mov        ecx,2
 00589F41    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589F47    call       TStream.WriteBuffer
 00589F4C    mov        eax,esi
 00589F4E    cdq
 00589F4F    push       edx
 00589F50    push       eax
 00589F51    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589F57    call       TStream.SetPosition
 00589F5C    pop        esi
 00589F5D    pop        ebx
 00589F5E    ret
*}
//end;

//00589F60
//procedure sub_00589F60(?:TRvNDRWriter);
//begin
{*
 00589F60    push       ebp
 00589F61    mov        ebp,esp
 00589F63    add        esp,0FFFFFFEC
 00589F66    push       ebx
 00589F67    push       esi
 00589F68    push       edi
 00589F69    xor        edx,edx
 00589F6B    mov        dword ptr [ebp-14],edx
 00589F6E    mov        ebx,eax
 00589F70    xor        eax,eax
 00589F72    push       ebp
 00589F73    push       58A13B
 00589F78    push       dword ptr fs:[eax]
 00589F7B    mov        dword ptr fs:[eax],esp
 00589F7E    cmp        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
>00589F85    jne        0058A125
 00589F8B    cmp        byte ptr [ebx+8D8],0; TRvNDRWriter.?f8D8:byte
>00589F92    jne        0058A125
 00589F98    mov        eax,ebx
 00589F9A    call       005895D4
 00589F9F    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 00589FA5    call       TStream.GetPosition
 00589FAA    mov        esi,eax
 00589FAC    mov        dl,50
 00589FAE    mov        eax,ebx
 00589FB0    call       00589290
 00589FB5    mov        edx,dword ptr [ebx+0B18]; TRvNDRWriter.?fB18:Int64
 00589FBB    mov        eax,ebx
 00589FBD    call       005892C8
 00589FC2    mov        dword ptr [ebx+0B18],esi; TRvNDRWriter.?fB18:Int64
 00589FC8    mov        eax,ebx
 00589FCA    call       005895D4
 00589FCF    add        esi,5
 00589FD2    mov        dword ptr [ebx+0B1C],esi; TRvNDRWriter.?fB1C:dword
 00589FD8    xor        edx,edx
 00589FDA    mov        eax,ebx
 00589FDC    call       005892C8
 00589FE1    mov        dx,word ptr [ebx+0B24]; TRvNDRWriter.?fB24:dword
 00589FE8    mov        eax,ebx
 00589FEA    call       005892AC
 00589FEF    mov        byte ptr [ebx+0B16],1; TRvNDRWriter.?fB16:byte
 00589FF6    mov        eax,ebx
 00589FF8    call       005846EC
 00589FFD    add        esp,0FFFFFFF8
 0058A000    fstp       qword ptr [esp]
 0058A003    wait
 0058A004    mov        eax,ebx
 0058A006    call       00586138
 0058A00B    fstp       qword ptr [ebp-8]
 0058A00E    wait
 0058A00F    mov        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
 0058A016    push       dword ptr [ebp-4]
 0058A019    push       dword ptr [ebp-8]
 0058A01C    mov        eax,ebx
 0058A01E    call       00589388
 0058A023    mov        eax,ebx
 0058A025    call       00584684
 0058A02A    add        esp,0FFFFFFF8
 0058A02D    fstp       qword ptr [esp]
 0058A030    wait
 0058A031    mov        eax,ebx
 0058A033    call       00586154
 0058A038    add        esp,0FFFFFFF8
 0058A03B    fstp       qword ptr [esp]
 0058A03E    wait
 0058A03F    mov        eax,ebx
 0058A041    call       00589388
 0058A046    mov        byte ptr [ebx+0AB8],1; TRvNDRWriter.?fAB8:byte
 0058A04D    mov        eax,ebx
 0058A04F    call       00589660
 0058A054    mov        eax,ebx
 0058A056    call       00589788
 0058A05B    mov        eax,ebx
 0058A05D    call       00589B5C
 0058A062    mov        byte ptr [ebx+0AB8],0; TRvNDRWriter.?fAB8:byte
 0058A069    push       dword ptr [ebx+97C]; TRvNDRWriter.?f97C:dword
 0058A06F    push       dword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 0058A075    mov        eax,ebx
 0058A077    mov        edx,dword ptr [eax]
 0058A079    call       dword ptr [edx+80]; TRvNDRWriter.SetScaleX
 0058A07F    push       dword ptr [ebx+984]; TRvNDRWriter.?f984:dword
 0058A085    push       dword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 0058A08B    mov        eax,ebx
 0058A08D    mov        edx,dword ptr [eax]
 0058A08F    call       dword ptr [edx+84]; TRvNDRWriter.SetScaleY
 0058A095    mov        dl,byte ptr [ebx+970]; TRvNDRWriter.?f970:byte
 0058A09B    mov        eax,ebx
 0058A09D    mov        ecx,dword ptr [eax]
 0058A09F    call       dword ptr [ecx+88]; TRvNDRWriter.SetTextBKMode
 0058A0A5    mov        eax,ebx
 0058A0A7    call       00584BC8
 0058A0AC    mov        edx,eax
 0058A0AE    mov        eax,ebx
 0058A0B0    mov        ecx,dword ptr [eax]
 0058A0B2    call       dword ptr [ecx+7C]; TRvNDRWriter.sub_0058A2A0
 0058A0B5    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058A0BB    mov        edx,dword ptr [eax]
 0058A0BD    call       dword ptr [edx+14]; TStringList.GetCount
 0058A0C0    dec        eax
 0058A0C1    test       eax,eax
>0058A0C3    jl         0058A125
 0058A0C5    inc        eax
 0058A0C6    mov        dword ptr [ebp-10],eax
 0058A0C9    xor        esi,esi
 0058A0CB    mov        dl,25
 0058A0CD    mov        eax,ebx
 0058A0CF    call       00589290
 0058A0D4    lea        ecx,[ebp-14]
 0058A0D7    mov        edx,esi
 0058A0D9    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058A0DF    mov        edi,dword ptr [eax]
 0058A0E1    call       dword ptr [edi+0C]; TStringList.Get
 0058A0E4    mov        edx,dword ptr [ebp-14]
 0058A0E7    mov        eax,ebx
 0058A0E9    call       005892E4
 0058A0EE    mov        edx,esi
 0058A0F0    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058A0F6    mov        ecx,dword ptr [eax]
 0058A0F8    call       dword ptr [ecx+18]; TStringList.GetObject
 0058A0FB    mov        dword ptr [ebp-0C],eax
 0058A0FE    mov        dl,4
 0058A100    mov        eax,ebx
 0058A102    call       00589290
 0058A107    mov        dl,0FE
 0058A109    mov        eax,ebx
 0058A10B    call       00589290
 0058A110    lea        edx,[ebp-0C]
 0058A113    mov        ecx,4
 0058A118    mov        eax,ebx
 0058A11A    call       005895F8
 0058A11F    inc        esi
 0058A120    dec        dword ptr [ebp-10]
<0058A123    jne        0058A0CB
 0058A125    xor        eax,eax
 0058A127    pop        edx
 0058A128    pop        ecx
 0058A129    pop        ecx
 0058A12A    mov        dword ptr fs:[eax],edx
 0058A12D    push       58A142
 0058A132    lea        eax,[ebp-14]
 0058A135    call       @LStrClr
 0058A13A    ret
<0058A13B    jmp        @HandleFinally
<0058A140    jmp        0058A132
 0058A142    pop        edi
 0058A143    pop        esi
 0058A144    pop        ebx
 0058A145    mov        esp,ebp
 0058A147    pop        ebp
 0058A148    ret
*}
//end;

//0058A14C
//procedure sub_0058A14C(?:TRvNDRWriter; ?:?);
//begin
{*
 0058A14C    push       ebx
 0058A14D    push       esi
 0058A14E    push       edi
 0058A14F    push       ecx
 0058A150    mov        ebx,edx
 0058A152    mov        edi,eax
 0058A154    cmp        byte ptr [edi+0B16],0; TRvNDRWriter.?fB16:byte
>0058A15B    jne        0058A1D0
 0058A15D    cmp        byte ptr [edi+8D8],0; TRvNDRWriter.?f8D8:byte
>0058A164    jne        0058A16F
 0058A166    mov        dl,52
 0058A168    mov        eax,edi
 0058A16A    call       00589290
 0058A16F    cmp        dword ptr [edi+0B1C],0; TRvNDRWriter.?fB1C:dword
>0058A176    jle        0058A1D0
 0058A178    mov        eax,edi
 0058A17A    call       005895D4
 0058A17F    mov        eax,dword ptr [edi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058A185    call       TStream.GetPosition
 0058A18A    mov        esi,eax
 0058A18C    mov        eax,dword ptr [edi+0B1C]; TRvNDRWriter.?fB1C:dword
 0058A192    cdq
 0058A193    push       edx
 0058A194    push       eax
 0058A195    mov        eax,dword ptr [edi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058A19B    call       TStream.SetPosition
 0058A1A0    test       bl,bl
>0058A1A2    je         0058A1AB
 0058A1A4    xor        eax,eax
 0058A1A6    mov        dword ptr [esp],eax
>0058A1A9    jmp        0058A1AE
 0058A1AB    mov        dword ptr [esp],esi
 0058A1AE    mov        edx,esp
 0058A1B0    mov        ecx,4
 0058A1B5    mov        eax,dword ptr [edi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058A1BB    call       TStream.WriteBuffer
 0058A1C0    mov        eax,esi
 0058A1C2    cdq
 0058A1C3    push       edx
 0058A1C4    push       eax
 0058A1C5    mov        eax,dword ptr [edi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058A1CB    call       TStream.SetPosition
 0058A1D0    pop        edx
 0058A1D1    pop        edi
 0058A1D2    pop        esi
 0058A1D3    pop        ebx
 0058A1D4    ret
*}
//end;

//0058A1D8
//procedure TRvNDRWriter.SetScaleX(?:?; ?:?);
//begin
{*
 0058A1D8    push       ebp
 0058A1D9    mov        ebp,esp
 0058A1DB    push       ebx
 0058A1DC    mov        ebx,eax
 0058A1DE    push       dword ptr [ebp+0C]
 0058A1E1    push       dword ptr [ebp+8]
 0058A1E4    mov        eax,ebx
 0058A1E6    call       00584B64
 0058A1EB    mov        eax,ebx
 0058A1ED    call       00584D84
 0058A1F2    test       al,al
>0058A1F4    jne        0058A21B
 0058A1F6    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A1FD    je         0058A21B
 0058A1FF    mov        dl,1C
 0058A201    mov        eax,ebx
 0058A203    call       00589290
 0058A208    push       dword ptr [ebx+97C]; TRvNDRWriter.?f97C:dword
 0058A20E    push       dword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 0058A214    mov        eax,ebx
 0058A216    call       00589388
 0058A21B    pop        ebx
 0058A21C    pop        ebp
 0058A21D    ret        8
*}
//end;

//0058A220
//procedure TRvNDRWriter.SetScaleY(?:?; ?:?);
//begin
{*
 0058A220    push       ebp
 0058A221    mov        ebp,esp
 0058A223    push       ebx
 0058A224    mov        ebx,eax
 0058A226    push       dword ptr [ebp+0C]
 0058A229    push       dword ptr [ebp+8]
 0058A22C    mov        eax,ebx
 0058A22E    call       00584B80
 0058A233    mov        eax,ebx
 0058A235    call       00584D84
 0058A23A    test       al,al
>0058A23C    jne        0058A263
 0058A23E    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A245    je         0058A263
 0058A247    mov        dl,1D
 0058A249    mov        eax,ebx
 0058A24B    call       00589290
 0058A250    push       dword ptr [ebx+984]; TRvNDRWriter.?f984:dword
 0058A256    push       dword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 0058A25C    mov        eax,ebx
 0058A25E    call       00589388
 0058A263    pop        ebx
 0058A264    pop        ebp
 0058A265    ret        8
*}
//end;

//0058A268
procedure TRvNDRWriter.SetTextBKMode;
begin
{*
 0058A268    push       ebx
 0058A269    mov        ebx,eax
 0058A26B    mov        eax,ebx
 0058A26D    call       00584B9C
 0058A272    mov        eax,ebx
 0058A274    call       00584D84
 0058A279    test       al,al
>0058A27B    jne        0058A29C
 0058A27D    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A284    je         0058A29C
 0058A286    mov        dl,1A
 0058A288    mov        eax,ebx
 0058A28A    call       00589290
 0058A28F    mov        dl,byte ptr [ebx+970]; TRvNDRWriter.?f970:byte
 0058A295    mov        eax,ebx
 0058A297    call       00589290
 0058A29C    pop        ebx
 0058A29D    ret
*}
end;

//0058A2A0
procedure sub_0058A2A0;
begin
{*
 0058A2A0    push       ebx
 0058A2A1    mov        ebx,eax
 0058A2A3    mov        eax,ebx
 0058A2A5    call       00584BA4
 0058A2AA    mov        eax,ebx
 0058A2AC    call       00584D84
 0058A2B1    test       al,al
>0058A2B3    jne        0058A2E2
 0058A2B5    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A2BC    je         0058A2E2
 0058A2BE    mov        dl,1B
 0058A2C0    mov        eax,ebx
 0058A2C2    call       00589290
 0058A2C7    mov        eax,ebx
 0058A2C9    mov        edx,dword ptr [eax]
 0058A2CB    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058A2CE    call       TCanvas.GetHandle
 0058A2D3    push       eax
 0058A2D4    call       gdi32.GetBkColor
 0058A2D9    mov        edx,eax
 0058A2DB    mov        eax,ebx
 0058A2DD    call       005892C8
 0058A2E2    pop        ebx
 0058A2E3    ret
*}
end;

//0058A2E4
//procedure TRvNDRWriter.SetOrientation(?:?);
//begin
{*
 0058A2E4    push       ebx
 0058A2E5    push       esi
 0058A2E6    mov        ebx,edx
 0058A2E8    mov        esi,eax
 0058A2EA    mov        edx,ebx
 0058A2EC    mov        eax,esi
 0058A2EE    call       00584754
 0058A2F3    mov        eax,esi
 0058A2F5    call       00584D84
 0058A2FA    test       al,al
>0058A2FC    jne        0058A319
 0058A2FE    cmp        byte ptr [esi+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A305    je         0058A319
 0058A307    mov        dl,57
 0058A309    mov        eax,esi
 0058A30B    call       00589290
 0058A310    mov        edx,ebx
 0058A312    mov        eax,esi
 0058A314    call       00589290
 0058A319    pop        esi
 0058A31A    pop        ebx
 0058A31B    ret
*}
//end;

//0058A31C
//procedure sub_0058A31C(?:?);
//begin
{*
 0058A31C    push       ebx
 0058A31D    push       esi
 0058A31E    mov        ebx,edx
 0058A320    mov        esi,eax
 0058A322    mov        edx,ebx
 0058A324    mov        eax,esi
 0058A326    call       00584DB0
 0058A32B    mov        eax,esi
 0058A32D    call       00584D84
 0058A332    test       al,al
>0058A334    jne        0058A351
 0058A336    cmp        byte ptr [esi+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A33D    je         0058A351
 0058A33F    mov        dl,23
 0058A341    mov        eax,esi
 0058A343    call       00589290
 0058A348    mov        edx,ebx
 0058A34A    mov        eax,esi
 0058A34C    call       00589290
 0058A351    pop        esi
 0058A352    pop        ebx
 0058A353    ret
*}
//end;

//0058A354
//function sub_0058A354(?:?):?;
//begin
{*
 0058A354    push       ebp
 0058A355    mov        ebp,esp
 0058A357    push       ecx
 0058A358    push       ebx
 0058A359    push       esi
 0058A35A    mov        dword ptr [ebp-4],edx
 0058A35D    mov        esi,eax
 0058A35F    mov        eax,dword ptr [ebp-4]
 0058A362    call       @LStrAddRef
 0058A367    xor        eax,eax
 0058A369    push       ebp
 0058A36A    push       58A3BE
 0058A36F    push       dword ptr fs:[eax]
 0058A372    mov        dword ptr fs:[eax],esp
 0058A375    mov        edx,dword ptr [ebp-4]
 0058A378    mov        eax,esi
 0058A37A    call       00585DF8
 0058A37F    mov        ebx,eax
 0058A381    mov        eax,esi
 0058A383    call       00584D84
 0058A388    test       al,al
>0058A38A    jne        0058A3A8
 0058A38C    cmp        byte ptr [esi+8FD],0; TRvNDRWriter.?f8FD:byte
>0058A393    je         0058A3A8
 0058A395    mov        dl,58
 0058A397    mov        eax,esi
 0058A399    call       00589290
 0058A39E    mov        edx,dword ptr [ebp-4]
 0058A3A1    mov        eax,esi
 0058A3A3    call       005892E4
 0058A3A8    xor        eax,eax
 0058A3AA    pop        edx
 0058A3AB    pop        ecx
 0058A3AC    pop        ecx
 0058A3AD    mov        dword ptr fs:[eax],edx
 0058A3B0    push       58A3C5
 0058A3B5    lea        eax,[ebp-4]
 0058A3B8    call       @LStrClr
 0058A3BD    ret
<0058A3BE    jmp        @HandleFinally
<0058A3C3    jmp        0058A3B5
 0058A3C5    mov        eax,ebx
 0058A3C7    pop        esi
 0058A3C8    pop        ebx
 0058A3C9    pop        ecx
 0058A3CA    pop        ebp
 0058A3CB    ret
*}
//end;

//0058A3CC
//procedure sub_0058A3CC(?:?; ?:?);
//begin
{*
 0058A3CC    push       ebp
 0058A3CD    mov        ebp,esp
 0058A3CF    add        esp,0FFFFFFE8
 0058A3D2    push       esi
 0058A3D3    mov        dword ptr [ebp-4],edx
 0058A3D6    mov        esi,eax
 0058A3D8    mov        eax,dword ptr [ebp-4]
 0058A3DB    call       @LStrAddRef
 0058A3E0    xor        eax,eax
 0058A3E2    push       ebp
 0058A3E3    push       58A568
 0058A3E8    push       dword ptr fs:[eax]
 0058A3EB    mov        dword ptr fs:[eax],esp
 0058A3EE    mov        eax,esi
 0058A3F0    call       00584BE8
 0058A3F5    mov        eax,esi
 0058A3F7    call       00584D84
 0058A3FC    test       al,al
>0058A3FE    jne        0058A552
 0058A404    cmp        byte ptr [esi+0B15],0; TRvNDRWriter.AccuracyMethod:TAccuracyMethod
>0058A40B    jne        0058A4AC
 0058A411    cmp        word ptr [esi+75E],0; TRvNDRWriter.?f75E:?Float
>0058A419    jne        0058A4AC
 0058A41F    mov        edx,dword ptr [ebp-4]
 0058A422    mov        eax,58A580; 'ý$RPC'
 0058A427    call       @LStrPos
 0058A42C    test       eax,eax
>0058A42E    jne        0058A4AC
 0058A430    mov        edx,dword ptr [ebp-4]
 0058A433    mov        eax,58A590; ''
 0058A438    call       @LStrPos
 0058A43D    test       eax,eax
>0058A43F    jne        0058A4AC
 0058A441    mov        edx,dword ptr [ebp-4]
 0058A444    mov        eax,58A59C; ' '
 0058A449    call       @LStrPos
 0058A44E    test       eax,eax
>0058A450    je         0058A4AC
 0058A452    mov        edx,dword ptr [ebp-4]
 0058A455    mov        eax,esi
 0058A457    mov        ecx,dword ptr [eax]
 0058A459    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 0058A45F    fmul       dword ptr ds:[58A5A0]; 10000:Single
 0058A465    fld        qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A46B    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A471    fdivp      st(1),st
 0058A473    fstp       qword ptr [ebp-10]
 0058A476    wait
 0058A477    push       dword ptr [ebp-0C]
 0058A47A    push       dword ptr [ebp-10]
 0058A47D    mov        eax,esi
 0058A47F    call       00586138
 0058A484    fdiv       dword ptr ds:[58A5A4]; 2:Single
 0058A48A    fsubr      qword ptr [ebp+8]
 0058A48D    fstp       qword ptr [ebp-18]
 0058A490    wait
 0058A491    push       dword ptr [ebp-14]
 0058A494    push       dword ptr [ebp-18]
 0058A497    push       dword ptr [ebp-0C]
 0058A49A    push       dword ptr [ebp-10]
 0058A49D    mov        edx,dword ptr [ebp-4]
 0058A4A0    mov        eax,esi
 0058A4A2    mov        ecx,dword ptr [eax]
 0058A4A4    call       dword ptr [ecx+70]; TRvNDRWriter.sub_0058A8FC
>0058A4A7    jmp        0058A54B
 0058A4AC    mov        dl,17
 0058A4AE    mov        eax,esi
 0058A4B0    call       00589290
 0058A4B5    fld        qword ptr [esi+8A8]; TRvNDRWriter.?f8A8:?Double
 0058A4BB    fadd       qword ptr [esi+908]; TRvNDRWriter.?f908:?Double
 0058A4C1    fmul       qword ptr [esi+980]; TRvNDRWriter.?f980:?Double
 0058A4C7    fdiv       dword ptr ds:[58A5A8]; 100:Single
 0058A4CD    add        esp,0FFFFFFF8
 0058A4D0    fstp       qword ptr [esp]
 0058A4D3    wait
 0058A4D4    mov        eax,esi
 0058A4D6    call       00589388
 0058A4DB    mov        edx,dword ptr [ebp-4]
 0058A4DE    mov        eax,esi
 0058A4E0    call       005892E4
 0058A4E5    fld        qword ptr [ebp+8]
 0058A4E8    fadd       qword ptr [esi+900]; TRvNDRWriter.?f900:?Double
 0058A4EE    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A4F4    fdiv       dword ptr ds:[58A5A8]; 100:Single
 0058A4FA    add        esp,0FFFFFFF8
 0058A4FD    fstp       qword ptr [esp]
 0058A500    wait
 0058A501    mov        eax,esi
 0058A503    call       00589388
 0058A508    fld        qword ptr [ebp+8]
 0058A50B    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A511    fdiv       dword ptr ds:[58A5A8]; 100:Single
 0058A517    fstp       qword ptr [esi+8A0]; TRvNDRWriter.?f8A0:?Double
 0058A51D    wait
 0058A51E    mov        edx,dword ptr [ebp-4]
 0058A521    mov        eax,esi
 0058A523    mov        ecx,dword ptr [eax]
 0058A525    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 0058A52B    fdiv       dword ptr ds:[58A5A4]; 2:Single
 0058A531    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A537    fdiv       dword ptr ds:[58A5A8]; 100:Single
 0058A53D    add        esp,0FFFFFFF8
 0058A540    fstp       qword ptr [esp]
 0058A543    wait
 0058A544    mov        eax,esi
 0058A546    call       00583BF8
 0058A54B    mov        eax,esi
 0058A54D    call       00588AAC
 0058A552    xor        eax,eax
 0058A554    pop        edx
 0058A555    pop        ecx
 0058A556    pop        ecx
 0058A557    mov        dword ptr fs:[eax],edx
 0058A55A    push       58A56F
 0058A55F    lea        eax,[ebp-4]
 0058A562    call       @LStrClr
 0058A567    ret
<0058A568    jmp        @HandleFinally
<0058A56D    jmp        0058A55F
 0058A56F    pop        esi
 0058A570    mov        esp,ebp
 0058A572    pop        ebp
 0058A573    ret        8
*}
//end;

//0058A5AC
//procedure sub_0058A5AC(?:?; ?:?; ?:?);
//begin
{*
 0058A5AC    push       ebp
 0058A5AD    mov        ebp,esp
 0058A5AF    push       ecx
 0058A5B0    push       esi
 0058A5B1    mov        dword ptr [ebp-4],edx
 0058A5B4    mov        esi,eax
 0058A5B6    mov        eax,dword ptr [ebp-4]
 0058A5B9    call       @LStrAddRef
 0058A5BE    xor        eax,eax
 0058A5C0    push       ebp
 0058A5C1    push       58A71B
 0058A5C6    push       dword ptr fs:[eax]
 0058A5C9    mov        dword ptr fs:[eax],esp
 0058A5CC    mov        eax,esi
 0058A5CE    call       00584BE8
 0058A5D3    mov        eax,esi
 0058A5D5    call       00584D84
 0058A5DA    test       al,al
>0058A5DC    jne        0058A705
 0058A5E2    cmp        byte ptr [esi+0B15],0; TRvNDRWriter.AccuracyMethod:TAccuracyMethod
>0058A5E9    jne        0058A665
 0058A5EB    cmp        word ptr [esi+75E],0; TRvNDRWriter.?f75E:?Float
>0058A5F3    jne        0058A665
 0058A5F5    mov        edx,dword ptr [ebp-4]
 0058A5F8    mov        eax,58A730; 'ý$RPC'
 0058A5FD    call       @LStrPos
 0058A602    test       eax,eax
>0058A604    jne        0058A665
 0058A606    mov        edx,dword ptr [ebp-4]
 0058A609    mov        eax,58A740; ''
 0058A60E    call       @LStrPos
 0058A613    test       eax,eax
>0058A615    jne        0058A665
 0058A617    mov        edx,dword ptr [ebp-4]
 0058A61A    mov        eax,58A74C; ' '
 0058A61F    call       @LStrPos
 0058A624    test       eax,eax
>0058A626    je         0058A665
 0058A628    push       dword ptr [ebp+0C]
 0058A62B    push       dword ptr [ebp+8]
 0058A62E    mov        edx,dword ptr [ebp-4]
 0058A631    mov        eax,esi
 0058A633    mov        ecx,dword ptr [eax]
 0058A635    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 0058A63B    fmul       dword ptr ds:[58A750]; 10000:Single
 0058A641    fld        qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A647    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A64D    fdivp      st(1),st
 0058A64F    add        esp,0FFFFFFF8
 0058A652    fstp       qword ptr [esp]
 0058A655    wait
 0058A656    mov        edx,dword ptr [ebp-4]
 0058A659    mov        eax,esi
 0058A65B    mov        ecx,dword ptr [eax]
 0058A65D    call       dword ptr [ecx+70]; TRvNDRWriter.sub_0058A8FC
>0058A660    jmp        0058A6FE
 0058A665    mov        dl,18
 0058A667    mov        eax,esi
 0058A669    call       00589290
 0058A66E    fld        qword ptr [esi+8A8]; TRvNDRWriter.?f8A8:?Double
 0058A674    fadd       qword ptr [esi+908]; TRvNDRWriter.?f908:?Double
 0058A67A    fmul       qword ptr [esi+980]; TRvNDRWriter.?f980:?Double
 0058A680    fdiv       dword ptr ds:[58A754]; 100:Single
 0058A686    add        esp,0FFFFFFF8
 0058A689    fstp       qword ptr [esp]
 0058A68C    wait
 0058A68D    mov        eax,esi
 0058A68F    call       00589388
 0058A694    mov        edx,dword ptr [ebp-4]
 0058A697    mov        eax,esi
 0058A699    call       005892E4
 0058A69E    fld        qword ptr [ebp+8]
 0058A6A1    fadd       qword ptr [esi+900]; TRvNDRWriter.?f900:?Double
 0058A6A7    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A6AD    fdiv       dword ptr ds:[58A754]; 100:Single
 0058A6B3    add        esp,0FFFFFFF8
 0058A6B6    fstp       qword ptr [esp]
 0058A6B9    wait
 0058A6BA    mov        eax,esi
 0058A6BC    call       00589388
 0058A6C1    fld        qword ptr [ebp+8]
 0058A6C4    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A6CA    fdiv       dword ptr ds:[58A754]; 100:Single
 0058A6D0    fstp       qword ptr [esi+8A0]; TRvNDRWriter.?f8A0:?Double
 0058A6D6    wait
 0058A6D7    mov        edx,dword ptr [ebp-4]
 0058A6DA    mov        eax,esi
 0058A6DC    mov        ecx,dword ptr [eax]
 0058A6DE    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 0058A6E4    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A6EA    fdiv       dword ptr ds:[58A754]; 100:Single
 0058A6F0    add        esp,0FFFFFFF8
 0058A6F3    fstp       qword ptr [esp]
 0058A6F6    wait
 0058A6F7    mov        eax,esi
 0058A6F9    call       00583BF8
 0058A6FE    mov        eax,esi
 0058A700    call       00588AAC
 0058A705    xor        eax,eax
 0058A707    pop        edx
 0058A708    pop        ecx
 0058A709    pop        ecx
 0058A70A    mov        dword ptr fs:[eax],edx
 0058A70D    push       58A722
 0058A712    lea        eax,[ebp-4]
 0058A715    call       @LStrClr
 0058A71A    ret
<0058A71B    jmp        @HandleFinally
<0058A720    jmp        0058A712
 0058A722    pop        esi
 0058A723    pop        ecx
 0058A724    pop        ebp
 0058A725    ret        8
*}
//end;

//0058A758
//procedure sub_0058A758(?:?; ?:?);
//begin
{*
 0058A758    push       ebp
 0058A759    mov        ebp,esp
 0058A75B    add        esp,0FFFFFFE8
 0058A75E    push       esi
 0058A75F    mov        dword ptr [ebp-4],edx
 0058A762    mov        esi,eax
 0058A764    mov        eax,dword ptr [ebp-4]
 0058A767    call       @LStrAddRef
 0058A76C    xor        eax,eax
 0058A76E    push       ebp
 0058A76F    push       58A8BE
 0058A774    push       dword ptr fs:[eax]
 0058A777    mov        dword ptr fs:[eax],esp
 0058A77A    mov        eax,esi
 0058A77C    call       00584BE8
 0058A781    mov        eax,esi
 0058A783    call       00584D84
 0058A788    test       al,al
>0058A78A    jne        0058A8A8
 0058A790    cmp        byte ptr [esi+0B15],0; TRvNDRWriter.AccuracyMethod:TAccuracyMethod
>0058A797    jne        0058A82F
 0058A79D    cmp        word ptr [esi+75E],0; TRvNDRWriter.?f75E:?Float
>0058A7A5    jne        0058A82F
 0058A7AB    mov        edx,dword ptr [ebp-4]
 0058A7AE    mov        eax,58A8D4; 'ý$RPC'
 0058A7B3    call       @LStrPos
 0058A7B8    test       eax,eax
>0058A7BA    jne        0058A82F
 0058A7BC    mov        edx,dword ptr [ebp-4]
 0058A7BF    mov        eax,58A8E4; ''
 0058A7C4    call       @LStrPos
 0058A7C9    test       eax,eax
>0058A7CB    jne        0058A82F
 0058A7CD    mov        edx,dword ptr [ebp-4]
 0058A7D0    mov        eax,58A8F0; ' '
 0058A7D5    call       @LStrPos
 0058A7DA    test       eax,eax
>0058A7DC    je         0058A82F
 0058A7DE    mov        edx,dword ptr [ebp-4]
 0058A7E1    mov        eax,esi
 0058A7E3    mov        ecx,dword ptr [eax]
 0058A7E5    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 0058A7EB    fmul       dword ptr ds:[58A8F4]; 10000:Single
 0058A7F1    fld        qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A7F7    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A7FD    fdivp      st(1),st
 0058A7FF    fstp       qword ptr [ebp-10]
 0058A802    wait
 0058A803    push       dword ptr [ebp-0C]
 0058A806    push       dword ptr [ebp-10]
 0058A809    mov        eax,esi
 0058A80B    call       00586138
 0058A810    fsubr      qword ptr [ebp+8]
 0058A813    fstp       qword ptr [ebp-18]
 0058A816    wait
 0058A817    push       dword ptr [ebp-14]
 0058A81A    push       dword ptr [ebp-18]
 0058A81D    push       dword ptr [ebp-0C]
 0058A820    push       dword ptr [ebp-10]
 0058A823    mov        edx,dword ptr [ebp-4]
 0058A826    mov        eax,esi
 0058A828    mov        ecx,dword ptr [eax]
 0058A82A    call       dword ptr [ecx+70]; TRvNDRWriter.sub_0058A8FC
>0058A82D    jmp        0058A8A1
 0058A82F    mov        dl,19
 0058A831    mov        eax,esi
 0058A833    call       00589290
 0058A838    fld        qword ptr [esi+8A8]; TRvNDRWriter.?f8A8:?Double
 0058A83E    fadd       qword ptr [esi+908]; TRvNDRWriter.?f908:?Double
 0058A844    fmul       qword ptr [esi+980]; TRvNDRWriter.?f980:?Double
 0058A84A    fdiv       dword ptr ds:[58A8F8]; 100:Single
 0058A850    add        esp,0FFFFFFF8
 0058A853    fstp       qword ptr [esp]
 0058A856    wait
 0058A857    mov        eax,esi
 0058A859    call       00589388
 0058A85E    mov        edx,dword ptr [ebp-4]
 0058A861    mov        eax,esi
 0058A863    call       005892E4
 0058A868    fld        qword ptr [ebp+8]
 0058A86B    fadd       qword ptr [esi+900]; TRvNDRWriter.?f900:?Double
 0058A871    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A877    fdiv       dword ptr ds:[58A8F8]; 100:Single
 0058A87D    add        esp,0FFFFFFF8
 0058A880    fstp       qword ptr [esp]
 0058A883    wait
 0058A884    mov        eax,esi
 0058A886    call       00589388
 0058A88B    fld        qword ptr [ebp+8]
 0058A88E    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 0058A894    fdiv       dword ptr ds:[58A8F8]; 100:Single
 0058A89A    fstp       qword ptr [esi+8A0]; TRvNDRWriter.?f8A0:?Double
 0058A8A0    wait
 0058A8A1    mov        eax,esi
 0058A8A3    call       00588AAC
 0058A8A8    xor        eax,eax
 0058A8AA    pop        edx
 0058A8AB    pop        ecx
 0058A8AC    pop        ecx
 0058A8AD    mov        dword ptr fs:[eax],edx
 0058A8B0    push       58A8C5
 0058A8B5    lea        eax,[ebp-4]
 0058A8B8    call       @LStrClr
 0058A8BD    ret
<0058A8BE    jmp        @HandleFinally
<0058A8C3    jmp        0058A8B5
 0058A8C5    pop        esi
 0058A8C6    mov        esp,ebp
 0058A8C8    pop        ebp
 0058A8C9    ret        8
*}
//end;

//0058A8FC
//procedure sub_0058A8FC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058A8FC    push       ebp
 0058A8FD    mov        ebp,esp
 0058A8FF    push       ecx
 0058A900    push       ebx
 0058A901    mov        dword ptr [ebp-4],edx
 0058A904    mov        ebx,eax
 0058A906    mov        eax,dword ptr [ebp-4]
 0058A909    call       @LStrAddRef
 0058A90E    xor        eax,eax
 0058A910    push       ebp
 0058A911    push       58AA05
 0058A916    push       dword ptr fs:[eax]
 0058A919    mov        dword ptr fs:[eax],esp
 0058A91C    mov        eax,ebx
 0058A91E    call       00584BE8
 0058A923    mov        eax,ebx
 0058A925    call       00584D84
 0058A92A    test       al,al
>0058A92C    jne        0058A9EF
 0058A932    mov        dl,21
 0058A934    mov        eax,ebx
 0058A936    call       00589290
 0058A93B    fld        qword ptr [ebx+8A8]; TRvNDRWriter.?f8A8:?Double
 0058A941    fadd       qword ptr [ebx+908]; TRvNDRWriter.?f908:?Double
 0058A947    fmul       qword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 0058A94D    fdiv       dword ptr ds:[58AA14]; 100:Single
 0058A953    add        esp,0FFFFFFF8
 0058A956    fstp       qword ptr [esp]
 0058A959    wait
 0058A95A    mov        eax,ebx
 0058A95C    call       00589388
 0058A961    mov        edx,dword ptr [ebp-4]
 0058A964    mov        eax,ebx
 0058A966    call       005892E4
 0058A96B    fld        qword ptr [ebp+10]
 0058A96E    fadd       qword ptr [ebx+900]; TRvNDRWriter.?f900:?Double
 0058A974    fmul       qword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 0058A97A    fdiv       dword ptr ds:[58AA14]; 100:Single
 0058A980    add        esp,0FFFFFFF8
 0058A983    fstp       qword ptr [esp]
 0058A986    wait
 0058A987    mov        eax,ebx
 0058A989    call       00589388
 0058A98E    push       dword ptr [ebp+0C]
 0058A991    push       dword ptr [ebp+8]
 0058A994    mov        eax,ebx
 0058A996    call       00586138
 0058A99B    fmul       qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 0058A9A1    fdiv       dword ptr ds:[58AA14]; 100:Single
 0058A9A7    add        esp,0FFFFFFF8
 0058A9AA    fstp       qword ptr [esp]
 0058A9AD    wait
 0058A9AE    mov        eax,ebx
 0058A9B0    call       00589388
 0058A9B5    fld        qword ptr [ebp+10]
 0058A9B8    fmul       qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 0058A9BE    fdiv       dword ptr ds:[58AA14]; 100:Single
 0058A9C4    fstp       qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 0058A9CA    wait
 0058A9CB    fld        qword ptr [ebp+8]
 0058A9CE    fmul       qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 0058A9D4    fdiv       dword ptr ds:[58AA14]; 100:Single
 0058A9DA    add        esp,0FFFFFFF8
 0058A9DD    fstp       qword ptr [esp]
 0058A9E0    wait
 0058A9E1    mov        eax,ebx
 0058A9E3    call       00583BF8
 0058A9E8    mov        eax,ebx
 0058A9EA    call       00588AAC
 0058A9EF    xor        eax,eax
 0058A9F1    pop        edx
 0058A9F2    pop        ecx
 0058A9F3    pop        ecx
 0058A9F4    mov        dword ptr fs:[eax],edx
 0058A9F7    push       58AA0C
 0058A9FC    lea        eax,[ebp-4]
 0058A9FF    call       @LStrClr
 0058AA04    ret
<0058AA05    jmp        @HandleFinally
<0058AA0A    jmp        0058A9FC
 0058AA0C    pop        ebx
 0058AA0D    pop        ecx
 0058AA0E    pop        ebp
 0058AA0F    ret        10
*}
//end;

//0058AA18
//function sub_0058AA18():?;
//begin
{*
 0058AA18    mov        al,2
 0058AA1A    ret
*}
//end;

//0058AA1C
procedure sub_0058AA1C;
begin
{*
 0058AA1C    push       ebx
 0058AA1D    mov        ebx,eax
 0058AA1F    mov        eax,ebx
 0058AA21    call       00588A98
 0058AA26    mov        edx,dword ptr [eax]
 0058AA28    call       dword ptr [edx]
 0058AA2A    pop        ebx
 0058AA2B    ret
*}
end;

//0058AA2C
//procedure sub_0058AA2C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AA2C    push       ebp
 0058AA2D    mov        ebp,esp
 0058AA2F    push       ebx
 0058AA30    push       esi
 0058AA31    push       edi
 0058AA32    mov        edi,ecx
 0058AA34    mov        esi,edx
 0058AA36    mov        ebx,eax
 0058AA38    mov        eax,ebx
 0058AA3A    call       00584BE8
 0058AA3F    mov        eax,ebx
 0058AA41    call       00584D84
 0058AA46    test       al,al
>0058AA48    jne        0058AA80
 0058AA4A    mov        dl,2
 0058AA4C    mov        eax,ebx
 0058AA4E    call       00589290
 0058AA53    mov        edx,edi
 0058AA55    mov        eax,ebx
 0058AA57    call       0058941C
 0058AA5C    mov        edx,esi
 0058AA5E    mov        eax,ebx
 0058AA60    call       0058959C
 0058AA65    mov        edx,dword ptr [ebp+0C]
 0058AA68    mov        eax,ebx
 0058AA6A    call       0058959C
 0058AA6F    mov        edx,dword ptr [ebp+8]
 0058AA72    mov        eax,ebx
 0058AA74    call       005892C8
 0058AA79    mov        eax,ebx
 0058AA7B    call       00588AAC
 0058AA80    pop        edi
 0058AA81    pop        esi
 0058AA82    pop        ebx
 0058AA83    pop        ebp
 0058AA84    ret        8
*}
//end;

//0058AA88
//procedure sub_0058AA88(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AA88    push       ebp
 0058AA89    mov        ebp,esp
 0058AA8B    push       ebx
 0058AA8C    push       esi
 0058AA8D    push       edi
 0058AA8E    mov        ebx,ecx
 0058AA90    mov        esi,edx
 0058AA92    mov        edi,eax
 0058AA94    mov        eax,edi
 0058AA96    call       00584BE8
 0058AA9B    mov        eax,edi
 0058AA9D    call       00584D84
 0058AAA2    test       al,al
>0058AAA4    jne        0058AADD
 0058AAA6    mov        dl,9
 0058AAA8    mov        eax,edi
 0058AAAA    call       00589290
 0058AAAF    push       dword ptr [ebp+14]
 0058AAB2    push       dword ptr [ebp+10]
 0058AAB5    push       dword ptr [ebp+0C]
 0058AAB8    push       dword ptr [ebp+8]
 0058AABB    mov        eax,edi
 0058AABD    call       005893B0
 0058AAC2    mov        edx,esi
 0058AAC4    mov        eax,edi
 0058AAC6    call       005892C8
 0058AACB    xor        edx,edx
 0058AACD    mov        dl,bl
 0058AACF    mov        eax,edi
 0058AAD1    call       005892C8
 0058AAD6    mov        eax,edi
 0058AAD8    call       00588AAC
 0058AADD    pop        edi
 0058AADE    pop        esi
 0058AADF    pop        ebx
 0058AAE0    pop        ebp
 0058AAE1    ret        10
*}
//end;

//0058AAE4
//procedure sub_0058AAE4(?:?);
//begin
{*
 0058AAE4    push       ebx
 0058AAE5    push       esi
 0058AAE6    mov        esi,edx
 0058AAE8    mov        ebx,eax
 0058AAEA    mov        eax,ebx
 0058AAEC    call       00584BE8
 0058AAF1    mov        eax,ebx
 0058AAF3    call       00584D84
 0058AAF8    test       al,al
>0058AAFA    jne        0058AB15
 0058AAFC    mov        dl,0A
 0058AAFE    mov        eax,ebx
 0058AB00    call       00589290
 0058AB05    mov        edx,esi
 0058AB07    mov        eax,ebx
 0058AB09    call       0058959C
 0058AB0E    mov        eax,ebx
 0058AB10    call       00588AAC
 0058AB15    pop        esi
 0058AB16    pop        ebx
 0058AB17    ret
*}
//end;

//0058AB18
procedure sub_0058AB18();
begin
{*
 0058AB18    push       ebp
 0058AB19    mov        ebp,esp
 0058AB1B    push       0
 0058AB1D    push       ebx
 0058AB1E    xor        eax,eax
 0058AB20    push       ebp
 0058AB21    push       58AB5C
 0058AB26    push       dword ptr fs:[eax]
 0058AB29    mov        dword ptr fs:[eax],esp
 0058AB2C    mov        ebx,dword ptr ds:[61B830]
 0058AB32    mov        ebx,dword ptr [ebx]
 0058AB34    lea        edx,[ebp-4]
 0058AB37    mov        eax,58AB74; 'CopyRect() not supported in file mode.'
 0058AB3C    call       ebx
 0058AB3E    mov        eax,dword ptr [ebp-4]
 0058AB41    call       00579798
 0058AB46    xor        eax,eax
 0058AB48    pop        edx
 0058AB49    pop        ecx
 0058AB4A    pop        ecx
 0058AB4B    mov        dword ptr fs:[eax],edx
 0058AB4E    push       58AB63
 0058AB53    lea        eax,[ebp-4]
 0058AB56    call       @LStrClr
 0058AB5B    ret
<0058AB5C    jmp        @HandleFinally
<0058AB61    jmp        0058AB53
 0058AB63    pop        ebx
 0058AB64    pop        ecx
 0058AB65    pop        ebp
 0058AB66    ret        4
*}
end;

//0058AB9C
//procedure sub_0058AB9C(?:?);
//begin
{*
 0058AB9C    push       ebx
 0058AB9D    push       esi
 0058AB9E    mov        esi,edx
 0058ABA0    mov        ebx,eax
 0058ABA2    mov        eax,ebx
 0058ABA4    call       00584BE8
 0058ABA9    mov        eax,ebx
 0058ABAB    call       00584D84
 0058ABB0    test       al,al
>0058ABB2    jne        0058ABCD
 0058ABB4    mov        dl,6
 0058ABB6    mov        eax,ebx
 0058ABB8    call       00589290
 0058ABBD    mov        edx,esi
 0058ABBF    mov        eax,ebx
 0058ABC1    call       0058959C
 0058ABC6    mov        eax,ebx
 0058ABC8    call       00588AAC
 0058ABCD    pop        esi
 0058ABCE    pop        ebx
 0058ABCF    ret
*}
//end;

//0058ABD0
//procedure sub_0058ABD0(?:?);
//begin
{*
 0058ABD0    push       ebx
 0058ABD1    push       esi
 0058ABD2    mov        esi,edx
 0058ABD4    mov        ebx,eax
 0058ABD6    mov        eax,ebx
 0058ABD8    call       00584BE8
 0058ABDD    mov        eax,ebx
 0058ABDF    call       00584D84
 0058ABE4    test       al,al
>0058ABE6    jne        0058AC01
 0058ABE8    mov        dl,8
 0058ABEA    mov        eax,ebx
 0058ABEC    call       00589290
 0058ABF1    mov        edx,esi
 0058ABF3    mov        eax,ebx
 0058ABF5    call       0058959C
 0058ABFA    mov        eax,ebx
 0058ABFC    call       00588AAC
 0058AC01    pop        esi
 0058AC02    pop        ebx
 0058AC03    ret
*}
//end;

//0058AC04
//procedure sub_0058AC04(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AC04    push       ebp
 0058AC05    mov        ebp,esp
 0058AC07    push       ebx
 0058AC08    mov        ebx,eax
 0058AC0A    mov        eax,ebx
 0058AC0C    call       00584BE8
 0058AC11    mov        eax,ebx
 0058AC13    call       00584D84
 0058AC18    test       al,al
>0058AC1A    jne        0058AC78
 0058AC1C    mov        dl,1
 0058AC1E    mov        eax,ebx
 0058AC20    call       00589290
 0058AC25    push       dword ptr [ebp+44]
 0058AC28    push       dword ptr [ebp+40]
 0058AC2B    push       dword ptr [ebp+3C]
 0058AC2E    push       dword ptr [ebp+38]
 0058AC31    mov        eax,ebx
 0058AC33    call       005893B0
 0058AC38    push       dword ptr [ebp+34]
 0058AC3B    push       dword ptr [ebp+30]
 0058AC3E    push       dword ptr [ebp+2C]
 0058AC41    push       dword ptr [ebp+28]
 0058AC44    mov        eax,ebx
 0058AC46    call       005893B0
 0058AC4B    push       dword ptr [ebp+24]
 0058AC4E    push       dword ptr [ebp+20]
 0058AC51    push       dword ptr [ebp+1C]
 0058AC54    push       dword ptr [ebp+18]
 0058AC57    mov        eax,ebx
 0058AC59    call       005893B0
 0058AC5E    push       dword ptr [ebp+14]
 0058AC61    push       dword ptr [ebp+10]
 0058AC64    push       dword ptr [ebp+0C]
 0058AC67    push       dword ptr [ebp+8]
 0058AC6A    mov        eax,ebx
 0058AC6C    call       005893B0
 0058AC71    mov        eax,ebx
 0058AC73    call       00588AAC
 0058AC78    pop        ebx
 0058AC79    pop        ebp
 0058AC7A    ret        40
*}
//end;

//0058AC80
//procedure sub_0058AC80(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AC80    push       ebp
 0058AC81    mov        ebp,esp
 0058AC83    push       ebx
 0058AC84    mov        ebx,eax
 0058AC86    mov        eax,ebx
 0058AC88    call       00584BE8
 0058AC8D    mov        eax,ebx
 0058AC8F    call       00584D84
 0058AC94    test       al,al
>0058AC96    jne        0058ACF4
 0058AC98    mov        dl,3
 0058AC9A    mov        eax,ebx
 0058AC9C    call       00589290
 0058ACA1    push       dword ptr [ebp+44]
 0058ACA4    push       dword ptr [ebp+40]
 0058ACA7    push       dword ptr [ebp+3C]
 0058ACAA    push       dword ptr [ebp+38]
 0058ACAD    mov        eax,ebx
 0058ACAF    call       005893B0
 0058ACB4    push       dword ptr [ebp+34]
 0058ACB7    push       dword ptr [ebp+30]
 0058ACBA    push       dword ptr [ebp+2C]
 0058ACBD    push       dword ptr [ebp+28]
 0058ACC0    mov        eax,ebx
 0058ACC2    call       005893B0
 0058ACC7    push       dword ptr [ebp+24]
 0058ACCA    push       dword ptr [ebp+20]
 0058ACCD    push       dword ptr [ebp+1C]
 0058ACD0    push       dword ptr [ebp+18]
 0058ACD3    mov        eax,ebx
 0058ACD5    call       005893B0
 0058ACDA    push       dword ptr [ebp+14]
 0058ACDD    push       dword ptr [ebp+10]
 0058ACE0    push       dword ptr [ebp+0C]
 0058ACE3    push       dword ptr [ebp+8]
 0058ACE6    mov        eax,ebx
 0058ACE8    call       005893B0
 0058ACED    mov        eax,ebx
 0058ACEF    call       00588AAC
 0058ACF4    pop        ebx
 0058ACF5    pop        ebp
 0058ACF6    ret        40
*}
//end;

//0058ACFC
//procedure sub_0058ACFC(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058ACFC    push       ebp
 0058ACFD    mov        ebp,esp
 0058ACFF    push       ebx
 0058AD00    push       esi
 0058AD01    mov        esi,edx
 0058AD03    mov        ebx,eax
 0058AD05    mov        eax,ebx
 0058AD07    call       00584BE8
 0058AD0C    mov        eax,ebx
 0058AD0E    call       00584D84
 0058AD13    test       al,al
>0058AD15    jne        0058AD43
 0058AD17    mov        dl,5
 0058AD19    mov        eax,ebx
 0058AD1B    call       00589290
 0058AD20    mov        edx,esi
 0058AD22    mov        eax,ebx
 0058AD24    call       0058941C
 0058AD29    push       dword ptr [ebp+14]
 0058AD2C    push       dword ptr [ebp+10]
 0058AD2F    push       dword ptr [ebp+0C]
 0058AD32    push       dword ptr [ebp+8]
 0058AD35    mov        eax,ebx
 0058AD37    call       005893B0
 0058AD3C    mov        eax,ebx
 0058AD3E    call       00588AAC
 0058AD43    pop        esi
 0058AD44    pop        ebx
 0058AD45    pop        ebp
 0058AD46    ret        10
*}
//end;

//0058AD4C
//procedure sub_0058AD4C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AD4C    push       ebp
 0058AD4D    mov        ebp,esp
 0058AD4F    push       ebx
 0058AD50    mov        ebx,eax
 0058AD52    mov        eax,ebx
 0058AD54    call       00584BE8
 0058AD59    mov        eax,ebx
 0058AD5B    call       00584D84
 0058AD60    test       al,al
>0058AD62    jne        0058AD9A
 0058AD64    mov        dl,7
 0058AD66    mov        eax,ebx
 0058AD68    call       00589290
 0058AD6D    push       dword ptr [ebp+24]
 0058AD70    push       dword ptr [ebp+20]
 0058AD73    push       dword ptr [ebp+1C]
 0058AD76    push       dword ptr [ebp+18]
 0058AD79    mov        eax,ebx
 0058AD7B    call       005893B0
 0058AD80    push       dword ptr [ebp+14]
 0058AD83    push       dword ptr [ebp+10]
 0058AD86    push       dword ptr [ebp+0C]
 0058AD89    push       dword ptr [ebp+8]
 0058AD8C    mov        eax,ebx
 0058AD8E    call       005893B0
 0058AD93    mov        eax,ebx
 0058AD95    call       00588AAC
 0058AD9A    pop        ebx
 0058AD9B    pop        ebp
 0058AD9C    ret        20
*}
//end;

//0058ADA0
//procedure sub_0058ADA0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058ADA0    push       ebp
 0058ADA1    mov        ebp,esp
 0058ADA3    add        esp,0FFFFFFF0
 0058ADA6    push       ebx
 0058ADA7    mov        ebx,eax
 0058ADA9    mov        eax,ebx
 0058ADAB    call       00584BE8
 0058ADB0    mov        eax,ebx
 0058ADB2    call       00584D84
 0058ADB7    test       al,al
>0058ADB9    jne        0058AE76
 0058ADBF    mov        eax,dword ptr [ebx+7D0]; TRvNDRWriter.?f7D0:?Double
 0058ADC5    mov        dword ptr [ebp-8],eax
 0058ADC8    mov        eax,dword ptr [ebx+7D4]; TRvNDRWriter.?f7D4:dword
 0058ADCE    mov        dword ptr [ebp-4],eax
 0058ADD1    mov        eax,dword ptr [ebx+7D8]; TRvNDRWriter.?f7D8:?Double
 0058ADD7    mov        dword ptr [ebp-10],eax
 0058ADDA    mov        eax,dword ptr [ebx+7DC]; TRvNDRWriter.?f7DC:dword
 0058ADE0    mov        dword ptr [ebp-0C],eax
 0058ADE3    cmp        byte ptr [ebx+7E0],0; TRvNDRWriter.?f7E0:byte
>0058ADEA    je         0058AE0A
 0058ADEC    mov        dl,0B
 0058ADEE    mov        eax,ebx
 0058ADF0    call       00589290
 0058ADF5    push       dword ptr [ebp+14]
 0058ADF8    push       dword ptr [ebp+10]
 0058ADFB    push       dword ptr [ebp+0C]
 0058ADFE    push       dword ptr [ebp+8]
 0058AE01    mov        eax,ebx
 0058AE03    call       005893B0
>0058AE08    jmp        0058AE6F
 0058AE0A    push       dword ptr [ebp+14]
 0058AE0D    push       dword ptr [ebp+10]
 0058AE10    push       dword ptr [ebp+0C]
 0058AE13    push       dword ptr [ebp+8]
 0058AE16    mov        eax,ebx
 0058AE18    call       0058598C
 0058AE1D    test       al,al
>0058AE1F    jne        0058AE6F
 0058AE21    mov        dl,0C
 0058AE23    mov        eax,ebx
 0058AE25    call       00589290
 0058AE2A    mov        eax,ebx
 0058AE2C    call       00584B04
 0058AE31    fsubr      qword ptr [ebp-8]
 0058AE34    add        esp,0FFFFFFF8
 0058AE37    fstp       qword ptr [esp]
 0058AE3A    wait
 0058AE3B    mov        eax,ebx
 0058AE3D    call       00584B44
 0058AE42    fsubr      qword ptr [ebp-10]
 0058AE45    add        esp,0FFFFFFF8
 0058AE48    fstp       qword ptr [esp]
 0058AE4B    wait
 0058AE4C    mov        eax,ebx
 0058AE4E    call       005893B0
 0058AE53    mov        dl,0B
 0058AE55    mov        eax,ebx
 0058AE57    call       00589290
 0058AE5C    push       dword ptr [ebp+14]
 0058AE5F    push       dword ptr [ebp+10]
 0058AE62    push       dword ptr [ebp+0C]
 0058AE65    push       dword ptr [ebp+8]
 0058AE68    mov        eax,ebx
 0058AE6A    call       005893B0
 0058AE6F    mov        eax,ebx
 0058AE71    call       00588AAC
 0058AE76    pop        ebx
 0058AE77    mov        esp,ebp
 0058AE79    pop        ebp
 0058AE7A    ret        10
*}
//end;

//0058AE80
//procedure sub_0058AE80(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AE80    push       ebp
 0058AE81    mov        ebp,esp
 0058AE83    push       ebx
 0058AE84    mov        ebx,eax
 0058AE86    mov        eax,ebx
 0058AE88    call       00584BE8
 0058AE8D    mov        eax,ebx
 0058AE8F    call       00584D84
 0058AE94    test       al,al
>0058AE96    jne        0058AEDF
 0058AE98    cmp        byte ptr [ebx+7E0],0; TRvNDRWriter.?f7E0:byte
>0058AE9F    je         0058AEBD
 0058AEA1    mov        dl,0C
 0058AEA3    mov        eax,ebx
 0058AEA5    call       00589290
 0058AEAA    push       dword ptr [ebp+14]
 0058AEAD    push       dword ptr [ebp+10]
 0058AEB0    push       dword ptr [ebp+0C]
 0058AEB3    push       dword ptr [ebp+8]
 0058AEB6    mov        eax,ebx
 0058AEB8    call       005893B0
 0058AEBD    mov        eax,ebx
 0058AEBF    call       00584B04
 0058AEC4    fadd       qword ptr [ebp+10]
 0058AEC7    fstp       qword ptr [ebx+7D0]; TRvNDRWriter.?f7D0:?Double
 0058AECD    wait
 0058AECE    mov        eax,ebx
 0058AED0    call       00584B44
 0058AED5    fadd       qword ptr [ebp+8]
 0058AED8    fstp       qword ptr [ebx+7D8]; TRvNDRWriter.?f7D8:?Double
 0058AEDE    wait
 0058AEDF    pop        ebx
 0058AEE0    pop        ebp
 0058AEE1    ret        10
*}
//end;

//0058AEE4
//procedure sub_0058AEE4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058AEE4    push       ebp
 0058AEE5    mov        ebp,esp
 0058AEE7    push       ebx
 0058AEE8    mov        ebx,eax
 0058AEEA    mov        eax,ebx
 0058AEEC    call       00584BE8
 0058AEF1    mov        eax,ebx
 0058AEF3    call       00584D84
 0058AEF8    test       al,al
>0058AEFA    jne        0058AF58
 0058AEFC    mov        dl,0D
 0058AEFE    mov        eax,ebx
 0058AF00    call       00589290
 0058AF05    push       dword ptr [ebp+44]
 0058AF08    push       dword ptr [ebp+40]
 0058AF0B    push       dword ptr [ebp+3C]
 0058AF0E    push       dword ptr [ebp+38]
 0058AF11    mov        eax,ebx
 0058AF13    call       005893B0
 0058AF18    push       dword ptr [ebp+34]
 0058AF1B    push       dword ptr [ebp+30]
 0058AF1E    push       dword ptr [ebp+2C]
 0058AF21    push       dword ptr [ebp+28]
 0058AF24    mov        eax,ebx
 0058AF26    call       005893B0
 0058AF2B    push       dword ptr [ebp+24]
 0058AF2E    push       dword ptr [ebp+20]
 0058AF31    push       dword ptr [ebp+1C]
 0058AF34    push       dword ptr [ebp+18]
 0058AF37    mov        eax,ebx
 0058AF39    call       005893B0
 0058AF3E    push       dword ptr [ebp+14]
 0058AF41    push       dword ptr [ebp+10]
 0058AF44    push       dword ptr [ebp+0C]
 0058AF47    push       dword ptr [ebp+8]
 0058AF4A    mov        eax,ebx
 0058AF4C    call       005893B0
 0058AF51    mov        eax,ebx
 0058AF53    call       00588AAC
 0058AF58    pop        ebx
 0058AF59    pop        ebp
 0058AF5A    ret        40
*}
//end;

//0058AF60
//procedure sub_0058AF60(?:?; ?:?);
//begin
{*
 0058AF60    push       ebx
 0058AF61    push       esi
 0058AF62    push       edi
 0058AF63    push       ebp
 0058AF64    mov        ebx,ecx
 0058AF66    mov        ebp,edx
 0058AF68    mov        esi,eax
 0058AF6A    mov        eax,esi
 0058AF6C    call       00584BE8
 0058AF71    mov        eax,esi
 0058AF73    call       00584D84
 0058AF78    test       al,al
>0058AF7A    jne        0058AFAD
 0058AF7C    mov        dl,0E
 0058AF7E    mov        eax,esi
 0058AF80    call       00589290
 0058AF85    mov        edx,ebx
 0058AF87    mov        eax,esi
 0058AF89    call       005892AC
 0058AF8E    mov        edi,ebx
 0058AF90    test       edi,edi
>0058AF92    jl         0058AFA6
 0058AF94    inc        edi
 0058AF95    mov        ebx,ebp
 0058AF97    mov        edx,ebx
 0058AF99    mov        eax,esi
 0058AF9B    call       00589554
 0058AFA0    add        ebx,8
 0058AFA3    dec        edi
<0058AFA4    jne        0058AF97
 0058AFA6    mov        eax,esi
 0058AFA8    call       00588AAC
 0058AFAD    pop        ebp
 0058AFAE    pop        edi
 0058AFAF    pop        esi
 0058AFB0    pop        ebx
 0058AFB1    ret
*}
//end;

//0058AFB4
//procedure sub_0058AFB4(?:?; ?:?);
//begin
{*
 0058AFB4    push       ebx
 0058AFB5    push       esi
 0058AFB6    push       edi
 0058AFB7    push       ebp
 0058AFB8    mov        ebx,ecx
 0058AFBA    mov        ebp,edx
 0058AFBC    mov        esi,eax
 0058AFBE    mov        eax,esi
 0058AFC0    call       00584BE8
 0058AFC5    mov        eax,esi
 0058AFC7    call       00584D84
 0058AFCC    test       al,al
>0058AFCE    jne        0058B001
 0058AFD0    mov        dl,0F
 0058AFD2    mov        eax,esi
 0058AFD4    call       00589290
 0058AFD9    mov        edx,ebx
 0058AFDB    mov        eax,esi
 0058AFDD    call       005892AC
 0058AFE2    mov        edi,ebx
 0058AFE4    test       edi,edi
>0058AFE6    jl         0058AFFA
 0058AFE8    inc        edi
 0058AFE9    mov        ebx,ebp
 0058AFEB    mov        edx,ebx
 0058AFED    mov        eax,esi
 0058AFEF    call       00589554
 0058AFF4    add        ebx,8
 0058AFF7    dec        edi
<0058AFF8    jne        0058AFEB
 0058AFFA    mov        eax,esi
 0058AFFC    call       00588AAC
 0058B001    pop        ebp
 0058B002    pop        edi
 0058B003    pop        esi
 0058B004    pop        ebx
 0058B005    ret
*}
//end;

//0058B008
//procedure sub_0058B008(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B008    push       ebp
 0058B009    mov        ebp,esp
 0058B00B    push       ebx
 0058B00C    push       esi
 0058B00D    mov        esi,edx
 0058B00F    mov        ebx,eax
 0058B011    mov        eax,ebx
 0058B013    call       00584BE8
 0058B018    mov        eax,ebx
 0058B01A    call       00584D84
 0058B01F    test       al,al
>0058B021    jne        0058B07F
 0058B023    mov        dl,22
 0058B025    mov        eax,ebx
 0058B027    call       00589290
 0058B02C    mov        dl,byte ptr [ebx+9A0]; TRvNDRWriter.?f9A0:byte
 0058B032    mov        eax,ebx
 0058B034    call       00589290
 0058B039    mov        dl,10
 0058B03B    mov        eax,ebx
 0058B03D    call       00589290
 0058B042    mov        edx,esi
 0058B044    mov        eax,ebx
 0058B046    call       0058941C
 0058B04B    push       dword ptr [ebp+24]
 0058B04E    push       dword ptr [ebp+20]
 0058B051    push       dword ptr [ebp+1C]
 0058B054    push       dword ptr [ebp+18]
 0058B057    mov        eax,ebx
 0058B059    call       005893B0
 0058B05E    push       dword ptr [ebp+14]
 0058B061    push       dword ptr [ebp+10]
 0058B064    mov        eax,ebx
 0058B066    call       00589388
 0058B06B    push       dword ptr [ebp+0C]
 0058B06E    push       dword ptr [ebp+8]
 0058B071    mov        eax,ebx
 0058B073    call       00589388
 0058B078    mov        eax,ebx
 0058B07A    call       00588AAC
 0058B07F    pop        esi
 0058B080    pop        ebx
 0058B081    pop        ebp
 0058B082    ret        20
*}
//end;

//0058B088
//procedure sub_0058B088(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B088    push       ebp
 0058B089    mov        ebp,esp
 0058B08B    push       ebx
 0058B08C    push       esi
 0058B08D    mov        esi,edx
 0058B08F    mov        ebx,eax
 0058B091    mov        eax,ebx
 0058B093    call       00584BE8
 0058B098    mov        eax,ebx
 0058B09A    call       00584D84
 0058B09F    test       al,al
>0058B0A1    jne        0058B0F8
 0058B0A3    mov        dl,22
 0058B0A5    mov        eax,ebx
 0058B0A7    call       00589290
 0058B0AC    mov        dl,byte ptr [ebx+9A0]; TRvNDRWriter.?f9A0:byte
 0058B0B2    mov        eax,ebx
 0058B0B4    call       00589290
 0058B0B9    mov        dl,11
 0058B0BB    mov        eax,ebx
 0058B0BD    call       00589290
 0058B0C2    mov        edx,esi
 0058B0C4    mov        eax,ebx
 0058B0C6    call       0058941C
 0058B0CB    push       dword ptr [ebp+24]
 0058B0CE    push       dword ptr [ebp+20]
 0058B0D1    push       dword ptr [ebp+1C]
 0058B0D4    push       dword ptr [ebp+18]
 0058B0D7    mov        eax,ebx
 0058B0D9    call       005893B0
 0058B0DE    push       dword ptr [ebp+14]
 0058B0E1    push       dword ptr [ebp+10]
 0058B0E4    push       dword ptr [ebp+0C]
 0058B0E7    push       dword ptr [ebp+8]
 0058B0EA    mov        eax,ebx
 0058B0EC    call       005893B0
 0058B0F1    mov        eax,ebx
 0058B0F3    call       00588AAC
 0058B0F8    pop        esi
 0058B0F9    pop        ebx
 0058B0FA    pop        ebp
 0058B0FB    ret        20
*}
//end;

//0058B100
//procedure sub_0058B100(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B100    push       ebp
 0058B101    mov        ebp,esp
 0058B103    push       ecx
 0058B104    push       ebx
 0058B105    push       esi
 0058B106    mov        dword ptr [ebp-4],ecx
 0058B109    mov        esi,edx
 0058B10B    mov        ebx,eax
 0058B10D    mov        eax,dword ptr [ebp-4]
 0058B110    call       @LStrAddRef
 0058B115    xor        eax,eax
 0058B117    push       ebp
 0058B118    push       58B1EB
 0058B11D    push       dword ptr fs:[eax]
 0058B120    mov        dword ptr fs:[eax],esp
 0058B123    mov        eax,ebx
 0058B125    call       00584BE8
 0058B12A    mov        eax,ebx
 0058B12C    call       00584D84
 0058B131    test       al,al
>0058B133    jne        0058B1D5
 0058B139    mov        dl,22
 0058B13B    mov        eax,ebx
 0058B13D    call       00589290
 0058B142    mov        dl,byte ptr [ebx+9A0]; TRvNDRWriter.?f9A0:byte
 0058B148    mov        eax,ebx
 0058B14A    call       00589290
 0058B14F    mov        dl,24
 0058B151    mov        eax,ebx
 0058B153    call       00589290
 0058B158    mov        eax,esi
 0058B15A    mov        edx,dword ptr [eax]
 0058B15C    call       dword ptr [edx]
 0058B15E    push       eax
 0058B15F    mov        eax,esi
 0058B161    call       TStream.GetPosition
 0058B166    pop        edx
 0058B167    sub        edx,eax
 0058B169    mov        eax,ebx
 0058B16B    call       005892C8
 0058B170    mov        eax,ebx
 0058B172    call       005895D4
 0058B177    mov        eax,esi
 0058B179    mov        edx,dword ptr [eax]
 0058B17B    call       dword ptr [edx]
 0058B17D    push       edx
 0058B17E    push       eax
 0058B17F    mov        eax,esi
 0058B181    call       TStream.GetPosition
 0058B186    sub        dword ptr [esp],eax
 0058B189    sbb        dword ptr [esp+4],edx
 0058B18D    pop        eax
 0058B18E    pop        edx
 0058B18F    push       edx
 0058B190    push       eax
 0058B191    mov        edx,esi
 0058B193    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058B199    call       TStream.CopyFrom
 0058B19E    mov        edx,dword ptr [ebp-4]
 0058B1A1    mov        eax,ebx
 0058B1A3    call       005892E4
 0058B1A8    push       dword ptr [ebp+24]
 0058B1AB    push       dword ptr [ebp+20]
 0058B1AE    push       dword ptr [ebp+1C]
 0058B1B1    push       dword ptr [ebp+18]
 0058B1B4    mov        eax,ebx
 0058B1B6    call       005893B0
 0058B1BB    push       dword ptr [ebp+14]
 0058B1BE    push       dword ptr [ebp+10]
 0058B1C1    push       dword ptr [ebp+0C]
 0058B1C4    push       dword ptr [ebp+8]
 0058B1C7    mov        eax,ebx
 0058B1C9    call       005893B0
 0058B1CE    mov        eax,ebx
 0058B1D0    call       00588AAC
 0058B1D5    xor        eax,eax
 0058B1D7    pop        edx
 0058B1D8    pop        ecx
 0058B1D9    pop        ecx
 0058B1DA    mov        dword ptr fs:[eax],edx
 0058B1DD    push       58B1F2
 0058B1E2    lea        eax,[ebp-4]
 0058B1E5    call       @LStrClr
 0058B1EA    ret
<0058B1EB    jmp        @HandleFinally
<0058B1F0    jmp        0058B1E2
 0058B1F2    pop        esi
 0058B1F3    pop        ebx
 0058B1F4    pop        ecx
 0058B1F5    pop        ebp
 0058B1F6    ret        20
*}
//end;

//0058B1FC
//procedure sub_0058B1FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B1FC    push       ebp
 0058B1FD    mov        ebp,esp
 0058B1FF    push       ebx
 0058B200    mov        ebx,eax
 0058B202    mov        eax,ebx
 0058B204    call       00584BE8
 0058B209    mov        eax,ebx
 0058B20B    call       00584D84
 0058B210    test       al,al
>0058B212    jne        0058B24A
 0058B214    mov        dl,12
 0058B216    mov        eax,ebx
 0058B218    call       00589290
 0058B21D    push       dword ptr [ebp+24]
 0058B220    push       dword ptr [ebp+20]
 0058B223    push       dword ptr [ebp+1C]
 0058B226    push       dword ptr [ebp+18]
 0058B229    mov        eax,ebx
 0058B22B    call       005893B0
 0058B230    push       dword ptr [ebp+14]
 0058B233    push       dword ptr [ebp+10]
 0058B236    push       dword ptr [ebp+0C]
 0058B239    push       dword ptr [ebp+8]
 0058B23C    mov        eax,ebx
 0058B23E    call       005893B0
 0058B243    mov        eax,ebx
 0058B245    call       00588AAC
 0058B24A    pop        ebx
 0058B24B    pop        ebp
 0058B24C    ret        20
*}
//end;

//0058B250
//procedure sub_0058B250(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B250    push       ebp
 0058B251    mov        ebp,esp
 0058B253    push       ebx
 0058B254    mov        ebx,eax
 0058B256    mov        eax,ebx
 0058B258    call       00584BE8
 0058B25D    mov        eax,ebx
 0058B25F    call       00584D84
 0058B264    test       al,al
>0058B266    jne        0058B29E
 0058B268    mov        dl,13
 0058B26A    mov        eax,ebx
 0058B26C    call       00589290
 0058B271    push       dword ptr [ebp+24]
 0058B274    push       dword ptr [ebp+20]
 0058B277    push       dword ptr [ebp+1C]
 0058B27A    push       dword ptr [ebp+18]
 0058B27D    mov        eax,ebx
 0058B27F    call       005893B0
 0058B284    push       dword ptr [ebp+14]
 0058B287    push       dword ptr [ebp+10]
 0058B28A    push       dword ptr [ebp+0C]
 0058B28D    push       dword ptr [ebp+8]
 0058B290    mov        eax,ebx
 0058B292    call       005893B0
 0058B297    mov        eax,ebx
 0058B299    call       00588AAC
 0058B29E    pop        ebx
 0058B29F    pop        ebp
 0058B2A0    ret        20
*}
//end;

//0058B2A4
//procedure sub_0058B2A4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B2A4    push       ebp
 0058B2A5    mov        ebp,esp
 0058B2A7    push       ebx
 0058B2A8    mov        ebx,eax
 0058B2AA    mov        eax,ebx
 0058B2AC    call       00584BE8
 0058B2B1    mov        eax,ebx
 0058B2B3    call       00584D84
 0058B2B8    test       al,al
>0058B2BA    jne        0058B328
 0058B2BC    mov        dl,14
 0058B2BE    mov        eax,ebx
 0058B2C0    call       00589290
 0058B2C5    push       dword ptr [ebp+34]
 0058B2C8    push       dword ptr [ebp+30]
 0058B2CB    push       dword ptr [ebp+2C]
 0058B2CE    push       dword ptr [ebp+28]
 0058B2D1    mov        eax,ebx
 0058B2D3    call       005893B0
 0058B2D8    push       dword ptr [ebp+24]
 0058B2DB    push       dword ptr [ebp+20]
 0058B2DE    push       dword ptr [ebp+1C]
 0058B2E1    push       dword ptr [ebp+18]
 0058B2E4    mov        eax,ebx
 0058B2E6    call       005893B0
 0058B2EB    push       dword ptr [ebp+14]
 0058B2EE    push       dword ptr [ebp+10]
 0058B2F1    mov        eax,ebx
 0058B2F3    call       00586138
 0058B2F8    add        esp,0FFFFFFF8
 0058B2FB    fstp       qword ptr [esp]
 0058B2FE    wait
 0058B2FF    mov        eax,ebx
 0058B301    call       00589388
 0058B306    push       dword ptr [ebp+0C]
 0058B309    push       dword ptr [ebp+8]
 0058B30C    mov        eax,ebx
 0058B30E    call       00586154
 0058B313    add        esp,0FFFFFFF8
 0058B316    fstp       qword ptr [esp]
 0058B319    wait
 0058B31A    mov        eax,ebx
 0058B31C    call       00589388
 0058B321    mov        eax,ebx
 0058B323    call       00588AAC
 0058B328    pop        ebx
 0058B329    pop        ebp
 0058B32A    ret        30
*}
//end;

//0058B330
//procedure sub_0058B330(?:?; ?:?);
//begin
{*
 0058B330    push       ebx
 0058B331    push       esi
 0058B332    push       edi
 0058B333    mov        edi,ecx
 0058B335    mov        esi,edx
 0058B337    mov        ebx,eax
 0058B339    mov        eax,ebx
 0058B33B    call       00584BE8
 0058B340    mov        eax,ebx
 0058B342    call       00584D84
 0058B347    test       al,al
>0058B349    jne        0058B36D
 0058B34B    mov        dl,15
 0058B34D    mov        eax,ebx
 0058B34F    call       00589290
 0058B354    mov        edx,edi
 0058B356    mov        eax,ebx
 0058B358    call       0058941C
 0058B35D    mov        edx,esi
 0058B35F    mov        eax,ebx
 0058B361    call       0058959C
 0058B366    mov        eax,ebx
 0058B368    call       00588AAC
 0058B36D    pop        edi
 0058B36E    pop        esi
 0058B36F    pop        ebx
 0058B370    ret
*}
//end;

//0058B374
//procedure sub_0058B374(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058B374    push       ebp
 0058B375    mov        ebp,esp
 0058B377    add        esp,0FFFFFFF0
 0058B37A    push       ebx
 0058B37B    push       esi
 0058B37C    push       edi
 0058B37D    mov        esi,edx
 0058B37F    lea        edi,[ebp-10]
 0058B382    movs       dword ptr [edi],dword ptr [esi]
 0058B383    movs       dword ptr [edi],dword ptr [esi]
 0058B384    movs       dword ptr [edi],dword ptr [esi]
 0058B385    movs       dword ptr [edi],dword ptr [esi]
 0058B386    mov        esi,ecx
 0058B388    mov        ebx,eax
 0058B38A    mov        eax,ebx
 0058B38C    call       00584BE8
 0058B391    mov        eax,ebx
 0058B393    call       00584D84
 0058B398    test       al,al
>0058B39A    jne        0058B3D2
 0058B39C    mov        dl,16
 0058B39E    mov        eax,ebx
 0058B3A0    call       00589290
 0058B3A5    lea        edx,[ebp-10]
 0058B3A8    mov        eax,ebx
 0058B3AA    call       0058959C
 0058B3AF    push       dword ptr [ebp+14]
 0058B3B2    push       dword ptr [ebp+10]
 0058B3B5    push       dword ptr [ebp+0C]
 0058B3B8    push       dword ptr [ebp+8]
 0058B3BB    mov        eax,ebx
 0058B3BD    call       005893B0
 0058B3C2    mov        edx,esi
 0058B3C4    mov        eax,ebx
 0058B3C6    call       005892E4
 0058B3CB    mov        eax,ebx
 0058B3CD    call       00588AAC
 0058B3D2    pop        edi
 0058B3D3    pop        esi
 0058B3D4    pop        ebx
 0058B3D5    mov        esp,ebp
 0058B3D7    pop        ebp
 0058B3D8    ret        10
*}
//end;

//0058B3DC
//procedure sub_0058B3DC(?:?);
//begin
{*
 0058B3DC    push       ebp
 0058B3DD    mov        ebp,esp
 0058B3DF    push       ecx
 0058B3E0    push       ebx
 0058B3E1    mov        dword ptr [ebp-4],edx
 0058B3E4    mov        ebx,eax
 0058B3E6    mov        eax,dword ptr [ebp-4]
 0058B3E9    call       @LStrAddRef
 0058B3EE    xor        eax,eax
 0058B3F0    push       ebp
 0058B3F1    push       58B43E
 0058B3F6    push       dword ptr fs:[eax]
 0058B3F9    mov        dword ptr fs:[eax],esp
 0058B3FC    mov        eax,ebx
 0058B3FE    call       00584BE8
 0058B403    mov        eax,ebx
 0058B405    call       00584D84
 0058B40A    test       al,al
>0058B40C    jne        0058B428
 0058B40E    mov        dl,1E
 0058B410    mov        eax,ebx
 0058B412    call       00589290
 0058B417    mov        edx,dword ptr [ebp-4]
 0058B41A    mov        eax,ebx
 0058B41C    call       005892E4
 0058B421    mov        eax,ebx
 0058B423    call       00588AAC
 0058B428    xor        eax,eax
 0058B42A    pop        edx
 0058B42B    pop        ecx
 0058B42C    pop        ecx
 0058B42D    mov        dword ptr fs:[eax],edx
 0058B430    push       58B445
 0058B435    lea        eax,[ebp-4]
 0058B438    call       @LStrClr
 0058B43D    ret
<0058B43E    jmp        @HandleFinally
<0058B443    jmp        0058B435
 0058B445    pop        ebx
 0058B446    pop        ecx
 0058B447    pop        ebp
 0058B448    ret
*}
//end;

//0058B44C
//procedure sub_0058B44C(?:?; ?:?);
//begin
{*
 0058B44C    push       ebp
 0058B44D    mov        ebp,esp
 0058B44F    add        esp,0FFFFFFEC
 0058B452    push       ebx
 0058B453    push       esi
 0058B454    push       edi
 0058B455    mov        dword ptr [ebp-0C],ecx
 0058B458    mov        dword ptr [ebp-8],edx
 0058B45B    mov        dword ptr [ebp-4],eax
 0058B45E    mov        eax,dword ptr [ebp-4]
 0058B461    call       00584BE8
 0058B466    mov        eax,dword ptr [ebp-4]
 0058B469    call       00584D84
 0058B46E    test       al,al
>0058B470    jne        0058B53F
 0058B476    mov        dl,1F
 0058B478    mov        eax,dword ptr [ebp-4]
 0058B47B    call       00589290
 0058B480    cmp        dword ptr [ebp-0C],0
>0058B484    jne        0058B49C
 0058B486    mov        eax,dword ptr [ebp-8]
 0058B489    mov        edx,dword ptr [eax]
 0058B48B    call       dword ptr [edx]
 0058B48D    mov        ebx,eax
 0058B48F    mov        eax,dword ptr [ebp-8]
 0058B492    call       TStream.GetPosition
 0058B497    sub        ebx,eax
 0058B499    mov        dword ptr [ebp-0C],ebx
 0058B49C    mov        edx,dword ptr [ebp-0C]
 0058B49F    mov        eax,dword ptr [ebp-4]
 0058B4A2    call       005892C8
 0058B4A7    mov        eax,1000
 0058B4AC    call       @GetMem
 0058B4B1    mov        dword ptr [ebp-10],eax
 0058B4B4    xor        eax,eax
 0058B4B6    push       ebp
 0058B4B7    push       58B538
 0058B4BC    push       dword ptr fs:[eax]
 0058B4BF    mov        dword ptr fs:[eax],esp
 0058B4C2    mov        eax,dword ptr [ebp-0C]
 0058B4C5    test       eax,eax
>0058B4C7    jns        0058B4CE
 0058B4C9    add        eax,0FFF
 0058B4CE    sar        eax,0C
 0058B4D1    inc        eax
 0058B4D2    mov        dword ptr [ebp-14],eax
 0058B4D5    mov        esi,dword ptr [ebp-14]
 0058B4D8    test       esi,esi
>0058B4DA    jle        0058B522
 0058B4DC    mov        edi,1
 0058B4E1    cmp        edi,dword ptr [ebp-14]
>0058B4E4    jne        0058B4FB
 0058B4E6    mov        ebx,dword ptr [ebp-0C]
 0058B4E9    and        ebx,80000FFF
>0058B4EF    jns        0058B500
 0058B4F1    dec        ebx
 0058B4F2    or         ebx,0FFFFF000
 0058B4F8    inc        ebx
>0058B4F9    jmp        0058B500
 0058B4FB    mov        ebx,1000
 0058B500    test       ebx,ebx
>0058B502    jle        0058B51E
 0058B504    mov        edx,dword ptr [ebp-10]
 0058B507    mov        ecx,ebx
 0058B509    mov        eax,dword ptr [ebp-8]
 0058B50C    call       TStream.ReadBuffer
 0058B511    mov        edx,dword ptr [ebp-10]
 0058B514    mov        ecx,ebx
 0058B516    mov        eax,dword ptr [ebp-4]
 0058B519    call       005895F8
 0058B51E    inc        edi
 0058B51F    dec        esi
<0058B520    jne        0058B4E1
 0058B522    xor        eax,eax
 0058B524    pop        edx
 0058B525    pop        ecx
 0058B526    pop        ecx
 0058B527    mov        dword ptr fs:[eax],edx
 0058B52A    push       58B53F
 0058B52F    mov        eax,dword ptr [ebp-10]
 0058B532    call       @FreeMem
 0058B537    ret
<0058B538    jmp        @HandleFinally
<0058B53D    jmp        0058B52F
 0058B53F    pop        edi
 0058B540    pop        esi
 0058B541    pop        ebx
 0058B542    mov        esp,ebp
 0058B544    pop        ebp
 0058B545    ret
*}
//end;

//0058B548
procedure sub_0058B548;
begin
{*
 0058B548    push       ebx
 0058B549    mov        ebx,eax
 0058B54B    cmp        byte ptr [ebx+0AC4],54; TRvNDRWriter.?fAC4:byte
>0058B552    je         0058B576
 0058B554    mov        eax,ebx
 0058B556    call       00584BE8
 0058B55B    mov        eax,ebx
 0058B55D    call       00584D84
 0058B562    test       al,al
>0058B564    jne        0058B576
 0058B566    mov        dl,54
 0058B568    mov        eax,ebx
 0058B56A    call       00589290
 0058B56F    mov        byte ptr [ebx+0AC4],54; TRvNDRWriter.?fAC4:byte
 0058B576    pop        ebx
 0058B577    ret
*}
end;

//0058B578
procedure sub_0058B578;
begin
{*
 0058B578    push       ebx
 0058B579    mov        ebx,eax
 0058B57B    cmp        byte ptr [ebx+0AC4],55; TRvNDRWriter.?fAC4:byte
>0058B582    je         0058B5A6
 0058B584    mov        eax,ebx
 0058B586    call       00584BE8
 0058B58B    mov        eax,ebx
 0058B58D    call       00584D84
 0058B592    test       al,al
>0058B594    jne        0058B5A6
 0058B596    mov        dl,55
 0058B598    mov        eax,ebx
 0058B59A    call       00589290
 0058B59F    mov        byte ptr [ebx+0AC4],55; TRvNDRWriter.?fAC4:byte
 0058B5A6    pop        ebx
 0058B5A7    ret
*}
end;

//0058B5A8
procedure sub_0058B5A8;
begin
{*
 0058B5A8    push       ebx
 0058B5A9    mov        ebx,eax
 0058B5AB    cmp        byte ptr [ebx+0AC4],56; TRvNDRWriter.?fAC4:byte
>0058B5B2    je         0058B5D6
 0058B5B4    mov        eax,ebx
 0058B5B6    call       00584BE8
 0058B5BB    mov        eax,ebx
 0058B5BD    call       00584D84
 0058B5C2    test       al,al
>0058B5C4    jne        0058B5D6
 0058B5C6    mov        dl,56
 0058B5C8    mov        eax,ebx
 0058B5CA    call       00589290
 0058B5CF    mov        byte ptr [ebx+0AC4],56; TRvNDRWriter.?fAC4:byte
 0058B5D6    pop        ebx
 0058B5D7    ret
*}
end;

//0058B5D8
procedure sub_0058B5D8;
begin
{*
 0058B5D8    push       ebp
 0058B5D9    mov        ebp,esp
 0058B5DB    add        esp,0FFFFFEDC
 0058B5E1    push       ebx
 0058B5E2    push       esi
 0058B5E3    push       edi
 0058B5E4    xor        edx,edx
 0058B5E6    mov        dword ptr [ebp-124],edx
 0058B5EC    mov        dword ptr [ebp-120],edx
 0058B5F2    mov        dword ptr [ebp-4],eax
 0058B5F5    xor        eax,eax
 0058B5F7    push       ebp
 0058B5F8    push       58BA46
 0058B5FD    push       dword ptr fs:[eax]
 0058B600    mov        dword ptr fs:[eax],esp
 0058B603    mov        eax,dword ptr [ebp-4]
 0058B606    call       00584C94
 0058B60B    call       Now
 0058B610    mov        eax,dword ptr [ebp-4]
 0058B613    fstp       qword ptr [eax+8C8]; TRvNDRWriter.?f8C8:?Double
 0058B619    wait
 0058B61A    mov        eax,dword ptr [ebp-4]
 0058B61D    mov        byte ptr [eax+0AC4],56; TRvNDRWriter.?fAC4:byte
 0058B624    mov        eax,dword ptr [ebp-4]
 0058B627    xor        edx,edx
 0058B629    mov        dword ptr [eax+0B08],edx; TRvNDRWriter.?fB08:TMemoryStream
 0058B62F    mov        eax,dword ptr [ebp-4]
 0058B632    xor        edx,edx
 0058B634    mov        dword ptr [eax+8D4],edx; TRvNDRWriter.?f8D4:dword
 0058B63A    mov        eax,dword ptr [ebp-4]
 0058B63D    xor        edx,edx
 0058B63F    mov        dword ptr [eax+0B24],edx; TRvNDRWriter.?fB24:dword
 0058B645    mov        eax,dword ptr [ebp-4]
 0058B648    xor        edx,edx
 0058B64A    mov        dword ptr [eax+0B18],edx; TRvNDRWriter.?fB18:Int64
 0058B650    mov        eax,dword ptr [ebp-4]
 0058B653    xor        edx,edx
 0058B655    mov        dword ptr [eax+0B1C],edx; TRvNDRWriter.?fB1C:dword
 0058B65B    mov        eax,dword ptr [ebp-4]
 0058B65E    xor        edx,edx
 0058B660    mov        dword ptr [eax+0B20],edx; TRvNDRWriter.?fB20:Int64
 0058B666    mov        eax,dword ptr [ebp-4]
 0058B669    xor        edx,edx
 0058B66B    mov        dword ptr [eax+790],edx; TRvNDRWriter.?f790:dword
 0058B671    mov        eax,dword ptr [ebp-4]
 0058B674    mov        eax,dword ptr [eax+0B28]; TRvNDRWriter.?fB28:TStringList
 0058B67A    mov        edx,dword ptr [eax]
 0058B67C    call       dword ptr [edx+44]; TStringList.Clear
 0058B67F    mov        eax,dword ptr [ebp-4]
 0058B682    add        eax,0AD8; TRvNDRWriter.?fAD8:?
 0058B687    xor        ecx,ecx
 0058B689    mov        edx,28
 0058B68E    call       @FillChar
 0058B693    mov        eax,dword ptr [ebp-4]
 0058B696    mov        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
 0058B69D    mov        eax,dword ptr [ebp-4]
 0058B6A0    mov        edx,dword ptr [eax]
 0058B6A2    call       dword ptr [edx+38]; TRvNDRWriter.sub_00583DD0
 0058B6A5    xor        edx,edx
 0058B6A7    push       ebp
 0058B6A8    push       58B7EE
 0058B6AD    push       dword ptr fs:[edx]
 0058B6B0    mov        dword ptr fs:[edx],esp
 0058B6B3    mov        eax,dword ptr [ebp-4]
 0058B6B6    mov        al,byte ptr [eax+0B14]; TRvNDRWriter.StreamMode:TStreamMode
 0058B6BC    sub        al,1
>0058B6BE    jb         0058B6D7
>0058B6C0    je         0058B778
 0058B6C6    dec        al
>0058B6C8    je         0058B79D
 0058B6CE    dec        al
>0058B6D0    je         0058B6F1
>0058B6D2    jmp        0058B7E4
 0058B6D7    mov        dl,1
 0058B6D9    mov        eax,[0041CBF8]; TMemoryStream
 0058B6DE    call       TObject.Create; TMemoryStream.Create
 0058B6E3    mov        edx,dword ptr [ebp-4]
 0058B6E6    mov        dword ptr [edx+0B08],eax; TRvNDRWriter.?fB08:TMemoryStream
>0058B6EC    jmp        0058B7E4
 0058B6F1    mov        dword ptr [ebp-9],565203
 0058B6F8    lea        eax,[ebp-11B]
 0058B6FE    push       eax
 0058B6FF    push       80
 0058B704    call       kernel32.GetTempPathA
 0058B709    mov        edx,eax
 0058B70B    lea        eax,[ebp-11C]
 0058B711    call       @SetLength
 0058B716    lea        eax,[ebp-9A]
 0058B71C    push       eax
 0058B71D    push       0
 0058B71F    lea        eax,[ebp-8]
 0058B722    push       eax
 0058B723    lea        eax,[ebp-11B]
 0058B729    push       eax
 0058B72A    call       kernel32.GetTempFileNameA
 0058B72F    lea        edx,[ebp-120]
 0058B735    lea        eax,[ebp-9A]
 0058B73B    call       StrPas
 0058B740    mov        edx,dword ptr [ebp-120]
 0058B746    mov        eax,dword ptr [ebp-4]
 0058B749    add        eax,0B10; TRvNDRWriter.?fB10:TFileName
 0058B74E    call       @LStrAsg
 0058B753    push       0FFFF
 0058B758    mov        eax,dword ptr [ebp-4]
 0058B75B    mov        ecx,dword ptr [eax+0B10]; TRvNDRWriter.?fB10:TFileName
 0058B761    mov        dl,1
 0058B763    mov        eax,[0041CB08]; TFileStream
 0058B768    call       TFileStream.Create; TFileStream.Create
 0058B76D    mov        edx,dword ptr [ebp-4]
 0058B770    mov        dword ptr [edx+0B08],eax; TRvNDRWriter.?fB08:TMemoryStream
>0058B776    jmp        0058B7E4
 0058B778    push       0FFFF
 0058B77D    mov        eax,dword ptr [ebp-4]
 0058B780    mov        ecx,dword ptr [eax+0B10]; TRvNDRWriter.?fB10:TFileName
 0058B786    mov        dl,1
 0058B788    mov        eax,[0041CB08]; TFileStream
 0058B78D    call       TFileStream.Create; TFileStream.Create
 0058B792    mov        edx,dword ptr [ebp-4]
 0058B795    mov        dword ptr [edx+0B08],eax; TRvNDRWriter.?fB08:TMemoryStream
>0058B79B    jmp        0058B7E4
 0058B79D    mov        eax,dword ptr [ebp-4]
 0058B7A0    cmp        dword ptr [eax+0B0C],0; TRvNDRWriter.?fB0C:TMemoryStream
>0058B7A7    jne        0058B7C9
 0058B7A9    mov        ebx,dword ptr ds:[61B830]
 0058B7AF    mov        ebx,dword ptr [ebx]
 0058B7B1    lea        edx,[ebp-124]
 0058B7B7    mov        eax,58BA5C; 'StreamMode is smUser but Stream is nil'
 0058B7BC    call       ebx
 0058B7BE    mov        eax,dword ptr [ebp-124]
 0058B7C4    call       00579798
 0058B7C9    mov        eax,dword ptr [ebp-4]
 0058B7CC    mov        eax,dword ptr [eax+0B0C]; TRvNDRWriter.?fB0C:TMemoryStream
 0058B7D2    mov        edx,dword ptr [ebp-4]
 0058B7D5    mov        dword ptr [edx+0B08],eax; TRvNDRWriter.?fB08:TMemoryStream
 0058B7DB    push       0
 0058B7DD    push       0
 0058B7DF    call       TStream.SetPosition
 0058B7E4    xor        eax,eax
 0058B7E6    pop        edx
 0058B7E7    pop        ecx
 0058B7E8    pop        ecx
 0058B7E9    mov        dword ptr fs:[eax],edx
>0058B7EC    jmp        0058B822
<0058B7EE    jmp        @HandleOnException
 0058B7F3    dd        1
 0058B7F7    dd        41BD08;EStreamError
 0058B7FB    dd        58B7FF
 0058B7FF    mov        eax,dword ptr [ebp-4]
 0058B802    cmp        byte ptr [eax+0B14],2; TRvNDRWriter.StreamMode:TStreamMode
>0058B809    je         0058B818
 0058B80B    mov        eax,dword ptr [ebp-4]
 0058B80E    add        eax,0B08; TRvNDRWriter.?fB08:TMemoryStream
 0058B813    call       FreeAndNil
 0058B818    call       @RaiseAgain
 0058B81D    call       @DoneExcept
 0058B822    mov        eax,4000
 0058B827    call       @GetMem
 0058B82C    mov        edx,dword ptr [ebp-4]
 0058B82F    mov        dword ptr [edx+0ABC],eax; TRvNDRWriter.?fABC:Pointer
 0058B835    mov        eax,dword ptr [ebp-4]
 0058B838    xor        edx,edx
 0058B83A    mov        dword ptr [eax+0AC0],edx; TRvNDRWriter.?fAC0:Longint
 0058B840    mov        eax,dword ptr [ebp-4]
 0058B843    call       00585D90
 0058B848    mov        eax,dword ptr [ebp-4]
 0058B84B    mov        byte ptr [eax+8FD],1; TRvNDRWriter.?f8FD:byte
 0058B852    mov        eax,dword ptr [ebp-4]
 0058B855    call       00589CA8
 0058B85A    mov        eax,dword ptr [ebp-4]
 0058B85D    mov        byte ptr [eax+0B16],1; TRvNDRWriter.?fB16:byte
 0058B864    mov        eax,dword ptr [ebp-4]
 0058B867    call       00584D2C
 0058B86C    test       al,al
>0058B86E    jne        0058B885
 0058B870    call       005807DC
 0058B875    test       eax,eax
>0058B877    je         0058B885
 0058B879    mov        eax,dword ptr [ebp-4]
 0058B87C    cmp        dword ptr [eax+9BC],0; TRvNDRWriter.?f9BC:TRPRenderDevice
>0058B883    je         0058B8DE
 0058B885    mov        eax,dword ptr [ebp-4]
 0058B888    cmp        dword ptr [eax+9BC],0; TRvNDRWriter.?f9BC:TRPRenderDevice
>0058B88F    jne        0058B8B0
 0058B891    mov        eax,dword ptr [ebp-4]
 0058B894    mov        byte ptr [eax+0B2C],1; TRvNDRWriter.?fB2C:byte
 0058B89B    mov        dl,1
 0058B89D    mov        eax,[0057DC90]; TRPRenderDevice
 0058B8A2    call       TRPRenderDevice.Create; TRPRenderDevice.Create
 0058B8A7    mov        edx,dword ptr [ebp-4]
 0058B8AA    mov        dword ptr [edx+9BC],eax; TRvNDRWriter.?f9BC:TRPRenderDevice
 0058B8B0    mov        eax,dword ptr [ebp-4]
 0058B8B3    call       00588A98
 0058B8B8    mov        edx,dword ptr [eax]
 0058B8BA    call       dword ptr [edx+4]
 0058B8BD    mov        edx,dword ptr [ebp-4]
 0058B8C0    mov        dword ptr [edx+8DC],eax; TRvNDRWriter.?f8DC:Single
 0058B8C6    mov        eax,dword ptr [ebp-4]
 0058B8C9    call       00588A98
 0058B8CE    mov        edx,dword ptr [eax]
 0058B8D0    call       dword ptr [edx+8]
 0058B8D3    mov        edx,dword ptr [ebp-4]
 0058B8D6    mov        dword ptr [edx+8E0],eax; TRvNDRWriter.?f8E0:Single
>0058B8DC    jmp        0058B8EA
 0058B8DE    call       005807DC
 0058B8E3    mov        dl,1
 0058B8E5    call       0057EDB4
 0058B8EA    mov        eax,dword ptr [ebp-4]
 0058B8ED    mov        edx,dword ptr [eax]
 0058B8EF    call       dword ptr [edx+58]; TRvNDRWriter.sub_005887FC
 0058B8F2    mov        eax,dword ptr [ebp-4]
 0058B8F5    mov        edx,dword ptr [eax]
 0058B8F7    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058B8FA    mov        eax,dword ptr [eax+14]
 0058B8FD    mov        edx,dword ptr [ebp-4]
 0058B900    mov        ecx,dword ptr [eax+8]
 0058B903    mov        dword ptr [edx+0AC8],ecx; TRvNDRWriter.?fAC8:dword
 0058B909    mov        ecx,dword ptr [eax+0C]
 0058B90C    mov        dword ptr [edx+0ACC],ecx; TRvNDRWriter.?fACC:dword
 0058B912    mov        eax,dword ptr [ebp-4]
 0058B915    mov        edx,dword ptr [eax]
 0058B917    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058B91A    mov        eax,dword ptr [eax+14]
 0058B91D    mov        edx,dword ptr [ebp-4]
 0058B920    mov        dword ptr [eax+0C],edx
 0058B923    mov        dword ptr [eax+8],58922C; sub_0058922C
 0058B92A    mov        eax,dword ptr [ebp-4]
 0058B92D    mov        edx,dword ptr [eax]
 0058B92F    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058B932    mov        eax,dword ptr [eax+10]
 0058B935    mov        edx,dword ptr [ebp-4]
 0058B938    mov        ecx,dword ptr [eax+8]
 0058B93B    mov        dword ptr [edx+0AD0],ecx; TRvNDRWriter.?fAD0:dword
 0058B941    mov        ecx,dword ptr [eax+0C]
 0058B944    mov        dword ptr [edx+0AD4],ecx; TRvNDRWriter.?fAD4:dword
 0058B94A    mov        eax,dword ptr [ebp-4]
 0058B94D    mov        edx,dword ptr [eax]
 0058B94F    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058B952    mov        eax,dword ptr [eax+10]
 0058B955    mov        edx,dword ptr [ebp-4]
 0058B958    mov        dword ptr [eax+0C],edx
 0058B95B    mov        dword ptr [eax+8],58926C; sub_0058926C
 0058B962    mov        eax,dword ptr [ebp-4]
 0058B965    call       00586EF0
 0058B96A    mov        eax,dword ptr [ebp-4]
 0058B96D    call       005854EC
 0058B972    mov        eax,dword ptr [ebp-4]
 0058B975    call       00586E9C
 0058B97A    mov        eax,dword ptr [ebp-4]
 0058B97D    inc        dword ptr [eax+8D4]; TRvNDRWriter.?f8D4:dword
 0058B983    mov        eax,dword ptr [ebp-4]
 0058B986    mov        edx,dword ptr [eax+8D4]; TRvNDRWriter.?f8D4:dword
 0058B98C    mov        eax,dword ptr [ebp-4]
 0058B98F    call       00584E94
 0058B994    test       al,al
>0058B996    je         0058B9A8
 0058B998    mov        eax,dword ptr [ebp-4]
 0058B99B    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058B9A2    jne        0058B9A8
 0058B9A4    xor        ebx,ebx
>0058B9A6    jmp        0058B9AA
 0058B9A8    mov        bl,1
 0058B9AA    mov        eax,dword ptr [ebp-4]
 0058B9AD    mov        byte ptr [eax+8D8],bl; TRvNDRWriter.?f8D8:byte
 0058B9B3    test       bl,bl
>0058B9B5    jne        0058B9C9
 0058B9B7    mov        eax,dword ptr [ebp-4]
 0058B9BA    inc        dword ptr [eax+790]; TRvNDRWriter.?f790:dword
 0058B9C0    mov        eax,dword ptr [ebp-4]
 0058B9C3    inc        dword ptr [eax+0B24]; TRvNDRWriter.?fB24:dword
 0058B9C9    mov        eax,dword ptr [ebp-4]
 0058B9CC    call       005851F4
 0058B9D1    mov        eax,dword ptr [ebp-4]
 0058B9D4    mov        byte ptr [eax+0B16],0; TRvNDRWriter.?fB16:byte
 0058B9DB    mov        eax,dword ptr [ebp-4]
 0058B9DE    call       00589F60
 0058B9E3    mov        eax,dword ptr [ebp-4]
 0058B9E6    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058B9ED    jne        0058BA00
 0058B9EF    mov        eax,dword ptr [ebp-4]
 0058B9F2    mov        edx,dword ptr [eax+7BC]; TRvNDRWriter.?f7BC:TList
 0058B9F8    mov        eax,dword ptr [ebp-4]
 0058B9FB    call       00583CFC
 0058BA00    mov        eax,dword ptr [ebp-4]
 0058BA03    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058BA0A    jne        0058BA14
 0058BA0C    mov        eax,dword ptr [ebp-4]
 0058BA0F    mov        edx,dword ptr [eax]
 0058BA11    call       dword ptr [edx+40]; TRvNDRWriter.sub_00583E28
 0058BA14    mov        eax,dword ptr [ebp-4]
 0058BA17    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058BA1E    jne        0058BA28
 0058BA20    mov        eax,dword ptr [ebp-4]
 0058BA23    mov        edx,dword ptr [eax]
 0058BA25    call       dword ptr [edx+48]; TRvNDRWriter.sub_00583E68
 0058BA28    xor        eax,eax
 0058BA2A    pop        edx
 0058BA2B    pop        ecx
 0058BA2C    pop        ecx
 0058BA2D    mov        dword ptr fs:[eax],edx
 0058BA30    push       58BA4D
 0058BA35    lea        eax,[ebp-124]
 0058BA3B    mov        edx,2
 0058BA40    call       @LStrArrayClr
 0058BA45    ret
<0058BA46    jmp        @HandleFinally
<0058BA4B    jmp        0058BA35
 0058BA4D    pop        edi
 0058BA4E    pop        esi
 0058BA4F    pop        ebx
 0058BA50    mov        esp,ebp
 0058BA52    pop        ebp
 0058BA53    ret
*}
end;

//0058BA84
procedure sub_0058BA84;
begin
{*
 0058BA84    push       ebp
 0058BA85    mov        ebp,esp
 0058BA87    push       ecx
 0058BA88    mov        dword ptr [ebp-4],eax
 0058BA8B    xor        edx,edx
 0058BA8D    push       ebp
 0058BA8E    push       58BC03
 0058BA93    push       dword ptr fs:[edx]
 0058BA96    mov        dword ptr fs:[edx],esp
 0058BA99    mov        eax,dword ptr [ebp-4]
 0058BA9C    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058BAA3    jne        0058BAAD
 0058BAA5    mov        eax,dword ptr [ebp-4]
 0058BAA8    mov        edx,dword ptr [eax]
 0058BAAA    call       dword ptr [edx+4C]; TRvNDRWriter.sub_00583E88
 0058BAAD    mov        eax,dword ptr [ebp-4]
 0058BAB0    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
>0058BAB7    jne        0058BACA
 0058BAB9    mov        eax,dword ptr [ebp-4]
 0058BABC    mov        edx,dword ptr [eax+7C0]; TRvNDRWriter.?f7C0:TList
 0058BAC2    mov        eax,dword ptr [ebp-4]
 0058BAC5    call       00583CFC
 0058BACA    mov        dl,1
 0058BACC    mov        eax,dword ptr [ebp-4]
 0058BACF    call       0058A14C
 0058BAD4    mov        eax,dword ptr [ebp-4]
 0058BAD7    call       00589EF8
 0058BADC    mov        eax,dword ptr [ebp-4]
 0058BADF    call       005895D4
 0058BAE4    mov        eax,dword ptr [ebp-4]
 0058BAE7    mov        eax,dword ptr [eax+0ABC]; TRvNDRWriter.?fABC:Pointer
 0058BAED    call       @FreeMem
 0058BAF2    xor        eax,eax
 0058BAF4    pop        edx
 0058BAF5    pop        ecx
 0058BAF6    pop        ecx
 0058BAF7    mov        dword ptr fs:[eax],edx
 0058BAFA    push       58BC0D
 0058BAFF    mov        eax,dword ptr [ebp-4]
 0058BB02    mov        edx,dword ptr [eax]
 0058BB04    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058BB07    mov        eax,dword ptr [eax+14]
 0058BB0A    mov        edx,dword ptr [ebp-4]
 0058BB0D    mov        ecx,dword ptr [edx+0AC8]; TRvNDRWriter.?fAC8:dword
 0058BB13    mov        dword ptr [eax+8],ecx
 0058BB16    mov        ecx,dword ptr [edx+0ACC]; TRvNDRWriter.?fACC:dword
 0058BB1C    mov        dword ptr [eax+0C],ecx
 0058BB1F    mov        eax,dword ptr [ebp-4]
 0058BB22    mov        edx,dword ptr [eax]
 0058BB24    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058BB27    mov        eax,dword ptr [eax+10]
 0058BB2A    mov        edx,dword ptr [ebp-4]
 0058BB2D    mov        ecx,dword ptr [edx+0AD0]; TRvNDRWriter.?fAD0:dword
 0058BB33    mov        dword ptr [eax+8],ecx
 0058BB36    mov        ecx,dword ptr [edx+0AD4]; TRvNDRWriter.?fAD4:dword
 0058BB3C    mov        dword ptr [eax+0C],ecx
 0058BB3F    mov        eax,dword ptr [ebp-4]
 0058BB42    mov        edx,dword ptr [eax]
 0058BB44    call       dword ptr [edx+5C]; TRvNDRWriter.sub_0058884C
 0058BB47    mov        eax,dword ptr [ebp-4]
 0058BB4A    call       00587BC0
 0058BB4F    mov        eax,dword ptr [ebp-4]
 0058BB52    call       005856D4
 0058BB57    mov        eax,dword ptr [ebp-4]
 0058BB5A    cmp        byte ptr [eax+0B2C],0; TRvNDRWriter.?fB2C:byte
>0058BB61    je         0058BB7A
 0058BB63    mov        eax,dword ptr [ebp-4]
 0058BB66    mov        byte ptr [eax+0B2C],0; TRvNDRWriter.?fB2C:byte
 0058BB6D    mov        eax,dword ptr [ebp-4]
 0058BB70    add        eax,9BC; TRvNDRWriter.?f9BC:TRPRenderDevice
 0058BB75    call       FreeAndNil
 0058BB7A    xor        edx,edx
 0058BB7C    push       ebp
 0058BB7D    push       58BBFB
 0058BB82    push       dword ptr fs:[edx]
 0058BB85    mov        dword ptr fs:[edx],esp
 0058BB88    mov        eax,dword ptr [ebp-4]
 0058BB8B    cmp        byte ptr [eax+0B14],0; TRvNDRWriter.StreamMode:TStreamMode
>0058BB92    jne        0058BBB6
 0058BB94    mov        eax,dword ptr [ebp-4]
 0058BB97    mov        eax,dword ptr [eax+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058BB9D    mov        edx,dword ptr ds:[41CBF8]; TMemoryStream
 0058BBA3    call       @AsClass
 0058BBA8    mov        edx,dword ptr [ebp-4]
 0058BBAB    mov        edx,dword ptr [edx+0B10]; TRvNDRWriter.?fB10:TFileName
 0058BBB1    call       TCustomMemoryStream.SaveToFile
 0058BBB6    mov        eax,dword ptr [ebp-4]
 0058BBB9    cmp        byte ptr [eax+0B14],2; TRvNDRWriter.StreamMode:TStreamMode
>0058BBC0    je         0058BBDB
 0058BBC2    mov        eax,dword ptr [ebp-4]
 0058BBC5    cmp        dword ptr [eax+0B08],0; TRvNDRWriter.?fB08:TMemoryStream
>0058BBCC    je         0058BBDB
 0058BBCE    mov        eax,dword ptr [ebp-4]
 0058BBD1    add        eax,0B08; TRvNDRWriter.?fB08:TMemoryStream
 0058BBD6    call       FreeAndNil
 0058BBDB    xor        eax,eax
 0058BBDD    pop        edx
 0058BBDE    pop        ecx
 0058BBDF    pop        ecx
 0058BBE0    mov        dword ptr fs:[eax],edx
 0058BBE3    push       58BC02
 0058BBE8    mov        eax,dword ptr [ebp-4]
 0058BBEB    mov        byte ptr [eax+8FD],0; TRvNDRWriter.?f8FD:byte
 0058BBF2    mov        eax,dword ptr [ebp-4]
 0058BBF5    mov        edx,dword ptr [eax]
 0058BBF7    call       dword ptr [edx+3C]; TRvNDRWriter.sub_00583E08
 0058BBFA    ret
<0058BBFB    jmp        @HandleFinally
<0058BC00    jmp        0058BBE8
 0058BC02    ret
<0058BC03    jmp        @HandleFinally
<0058BC08    jmp        0058BAFF
 0058BC0D    pop        ecx
 0058BC0E    pop        ebp
 0058BC0F    ret
*}
end;

//0058BC10
procedure sub_0058BC10;
begin
{*
 0058BC10    push       ebx
 0058BC11    push       esi
 0058BC12    mov        ebx,eax
 0058BC14    mov        eax,ebx
 0058BC16    mov        edx,dword ptr [eax]
 0058BC18    call       dword ptr [edx+4C]; TRvNDRWriter.sub_00583E88
 0058BC1B    mov        edx,dword ptr [ebx+7C0]; TRvNDRWriter.?f7C0:TList
 0058BC21    mov        eax,ebx
 0058BC23    call       00583CFC
 0058BC28    xor        edx,edx
 0058BC2A    mov        eax,ebx
 0058BC2C    call       0058A14C
 0058BC31    mov        byte ptr [ebx+0B16],1; TRvNDRWriter.?fB16:byte
 0058BC38    mov        eax,ebx
 0058BC3A    call       005850F8
 0058BC3F    mov        eax,ebx
 0058BC41    call       00584D2C
 0058BC46    test       al,al
>0058BC48    jne        0058BC51
 0058BC4A    mov        eax,ebx
 0058BC4C    call       005855B4
 0058BC51    mov        byte ptr [ebx+0B16],0; TRvNDRWriter.?fB16:byte
 0058BC58    cmp        byte ptr [ebx+8D8],0; TRvNDRWriter.?f8D8:byte
>0058BC5F    jne        0058BC6D
 0058BC61    inc        dword ptr [ebx+790]; TRvNDRWriter.?f790:dword
 0058BC67    inc        dword ptr [ebx+0B24]; TRvNDRWriter.?fB24:dword
 0058BC6D    mov        eax,ebx
 0058BC6F    call       00589F60
 0058BC74    cmp        word ptr [ebx+0B32],0; TRvNDRWriter.?fB32:word
>0058BC7C    je         0058BCB8
 0058BC7E    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058BC84    call       TStream.GetPosition
 0058BC89    mov        esi,eax
 0058BC8B    push       0
 0058BC8D    push       0
 0058BC8F    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058BC95    call       TStream.SetPosition
 0058BC9A    mov        edx,ebx
 0058BC9C    mov        eax,dword ptr [ebx+0B34]; TRvNDRWriter.?fB34:dword
 0058BCA2    call       dword ptr [ebx+0B30]
 0058BCA8    mov        eax,esi
 0058BCAA    cdq
 0058BCAB    push       edx
 0058BCAC    push       eax
 0058BCAD    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058BCB3    call       TStream.SetPosition
 0058BCB8    mov        edx,dword ptr [ebx+7BC]; TRvNDRWriter.?f7BC:TList
 0058BCBE    mov        eax,ebx
 0058BCC0    call       00583CFC
 0058BCC5    mov        eax,ebx
 0058BCC7    mov        edx,dword ptr [eax]
 0058BCC9    call       dword ptr [edx+40]; TRvNDRWriter.sub_00583E28
 0058BCCC    cmp        dword ptr [ebx+8EC],1; TRvNDRWriter.?f8EC:dword
>0058BCD3    jle        0058BCDC
 0058BCD5    mov        eax,ebx
 0058BCD7    mov        edx,dword ptr [eax]
 0058BCD9    call       dword ptr [edx+44]; TRvNDRWriter.sub_00583E48
 0058BCDC    mov        eax,ebx
 0058BCDE    mov        edx,dword ptr [eax]
 0058BCE0    call       dword ptr [edx+48]; TRvNDRWriter.sub_00583E68
 0058BCE3    pop        esi
 0058BCE4    pop        ebx
 0058BCE5    ret
*}
end;

//0058BCE8
procedure sub_0058BCE8;
begin
{*
 0058BCE8    push       ebx
 0058BCE9    mov        ebx,eax
 0058BCEB    mov        eax,ebx
 0058BCED    call       00584D60
 0058BCF2    mov        eax,dword ptr [ebx+0B18]; TRvNDRWriter.?fB18:Int64
 0058BCF8    cdq
 0058BCF9    push       edx
 0058BCFA    push       eax
 0058BCFB    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058BD01    call       TStream.SetPosition
 0058BD06    pop        ebx
 0058BD07    ret
*}
end;

//0058BD08
procedure sub_0058BD08;
begin
{*
 0058BD08    push       ebx
 0058BD09    mov        ebx,eax
 0058BD0B    mov        eax,ebx
 0058BD0D    call       005861AC
 0058BD12    cmp        byte ptr [ebx+8FD],0; TRvNDRWriter.?f8FD:byte
>0058BD19    je         0058BD68
 0058BD1B    mov        eax,ebx
 0058BD1D    call       00584D84
 0058BD22    test       al,al
>0058BD24    jne        0058BD68
 0058BD26    mov        dl,53
 0058BD28    mov        eax,ebx
 0058BD2A    call       00589290
 0058BD2F    push       dword ptr [ebx+844]; TRvNDRWriter.?f844:dword
 0058BD35    push       dword ptr [ebx+840]; TRvNDRWriter.?f840:?Double
 0058BD3B    mov        eax,ebx
 0058BD3D    call       00589388
 0058BD42    push       dword ptr [ebx+84C]; TRvNDRWriter.?f84C:dword
 0058BD48    push       dword ptr [ebx+848]; TRvNDRWriter.?f848:?Double
 0058BD4E    mov        eax,ebx
 0058BD50    call       00589388
 0058BD55    push       dword ptr [ebx+854]; TRvNDRWriter.?f854:dword
 0058BD5B    push       dword ptr [ebx+850]; TRvNDRWriter.?f850:?Double
 0058BD61    mov        eax,ebx
 0058BD63    call       00589388
 0058BD68    pop        ebx
 0058BD69    ret
*}
end;

//0058BD6C
//procedure sub_0058BD6C(?:?);
//begin
{*
 0058BD6C    push       ebp
 0058BD6D    mov        ebp,esp
 0058BD6F    push       0
 0058BD71    push       0
 0058BD73    xor        ecx,ecx
 0058BD75    push       ebp
 0058BD76    push       58BDD6
 0058BD7B    push       dword ptr fs:[ecx]
 0058BD7E    mov        dword ptr fs:[ecx],esp
 0058BD81    cmp        edx,1
>0058BD84    jl         0058BD96
 0058BD86    cmp        edx,0A
>0058BD89    jg         0058BD96
 0058BD8B    xor        ecx,ecx
 0058BD8D    mov        dword ptr [eax+edx*4+0AD4],ecx
>0058BD94    jmp        0058BDBB
 0058BD96    lea        edx,[ebp-8]
 0058BD99    mov        eax,0A
 0058BD9E    call       IntToStr
 0058BDA3    mov        ecx,dword ptr [ebp-8]
 0058BDA6    lea        eax,[ebp-4]
 0058BDA9    mov        edx,58BDEC; 'UnregisterGraphic: Index must be between 1 and '
 0058BDAE    call       @LStrCat3
 0058BDB3    mov        eax,dword ptr [ebp-4]
 0058BDB6    call       00579798
 0058BDBB    xor        eax,eax
 0058BDBD    pop        edx
 0058BDBE    pop        ecx
 0058BDBF    pop        ecx
 0058BDC0    mov        dword ptr fs:[eax],edx
 0058BDC3    push       58BDDD
 0058BDC8    lea        eax,[ebp-8]
 0058BDCB    mov        edx,2
 0058BDD0    call       @LStrArrayClr
 0058BDD5    ret
<0058BDD6    jmp        @HandleFinally
<0058BDDB    jmp        0058BDC8
 0058BDDD    pop        ecx
 0058BDDE    pop        ecx
 0058BDDF    pop        ebp
 0058BDE0    ret
*}
//end;

//0058BE1C
//procedure sub_0058BE1C(?:?);
//begin
{*
 0058BE1C    push       ebp
 0058BE1D    mov        ebp,esp
 0058BE1F    push       0
 0058BE21    push       0
 0058BE23    xor        ecx,ecx
 0058BE25    push       ebp
 0058BE26    push       58BE8A
 0058BE2B    push       dword ptr fs:[ecx]
 0058BE2E    mov        dword ptr fs:[ecx],esp
 0058BE31    cmp        edx,1
>0058BE34    jl         0058BE4A
 0058BE36    cmp        edx,0A
>0058BE39    jg         0058BE4A
 0058BE3B    mov        ecx,dword ptr [eax+0B00]; TRvNDRWriter.?fB00:dword
 0058BE41    mov        dword ptr [eax+edx*4+0AD4],ecx
>0058BE48    jmp        0058BE6F
 0058BE4A    lea        edx,[ebp-8]
 0058BE4D    mov        eax,0A
 0058BE52    call       IntToStr
 0058BE57    mov        ecx,dword ptr [ebp-8]
 0058BE5A    lea        eax,[ebp-4]
 0058BE5D    mov        edx,58BEA0; 'RegisterGraphic: Index must be between 1 and '
 0058BE62    call       @LStrCat3
 0058BE67    mov        eax,dword ptr [ebp-4]
 0058BE6A    call       00579798
 0058BE6F    xor        eax,eax
 0058BE71    pop        edx
 0058BE72    pop        ecx
 0058BE73    pop        ecx
 0058BE74    mov        dword ptr fs:[eax],edx
 0058BE77    push       58BE91
 0058BE7C    lea        eax,[ebp-8]
 0058BE7F    mov        edx,2
 0058BE84    call       @LStrArrayClr
 0058BE89    ret
<0058BE8A    jmp        @HandleFinally
<0058BE8F    jmp        0058BE7C
 0058BE91    pop        ecx
 0058BE92    pop        ecx
 0058BE93    pop        ebp
 0058BE94    ret
*}
//end;

//0058BED0
//procedure sub_0058BED0(?:?);
//begin
{*
 0058BED0    push       ebp
 0058BED1    mov        ebp,esp
 0058BED3    push       0
 0058BED5    push       0
 0058BED7    xor        ecx,ecx
 0058BED9    push       ebp
 0058BEDA    push       58BF3E
 0058BEDF    push       dword ptr fs:[ecx]
 0058BEE2    mov        dword ptr fs:[ecx],esp
 0058BEE5    cmp        edx,1
>0058BEE8    jl         0058BEFE
 0058BEEA    cmp        edx,0A
>0058BEED    jg         0058BEFE
 0058BEEF    mov        edx,dword ptr [eax+edx*4+0AD4]
 0058BEF6    mov        dword ptr [eax+0B04],edx; TRvNDRWriter.?fB04:dword
>0058BEFC    jmp        0058BF23
 0058BEFE    lea        edx,[ebp-8]
 0058BF01    mov        eax,0A
 0058BF06    call       IntToStr
 0058BF0B    mov        ecx,dword ptr [ebp-8]
 0058BF0E    lea        eax,[ebp-4]
 0058BF11    mov        edx,58BF54; 'ReuseGraphic: Index must be between 1 and '
 0058BF16    call       @LStrCat3
 0058BF1B    mov        eax,dword ptr [ebp-4]
 0058BF1E    call       00579798
 0058BF23    xor        eax,eax
 0058BF25    pop        edx
 0058BF26    pop        ecx
 0058BF27    pop        ecx
 0058BF28    mov        dword ptr fs:[eax],edx
 0058BF2B    push       58BF45
 0058BF30    lea        eax,[ebp-8]
 0058BF33    mov        edx,2
 0058BF38    call       @LStrArrayClr
 0058BF3D    ret
<0058BF3E    jmp        @HandleFinally
<0058BF43    jmp        0058BF30
 0058BF45    pop        ecx
 0058BF46    pop        ecx
 0058BF47    pop        ebp
 0058BF48    ret
*}
//end;

//0058BF80
//function sub_0058BF80(?:TRvNDRWriter; ?:AnsiString):?;
//begin
{*
 0058BF80    push       ebp
 0058BF81    mov        ebp,esp
 0058BF83    add        esp,0FFFFFFF0
 0058BF86    push       ebx
 0058BF87    push       esi
 0058BF88    push       edi
 0058BF89    xor        ecx,ecx
 0058BF8B    mov        dword ptr [ebp-10],ecx
 0058BF8E    mov        dword ptr [ebp-8],edx
 0058BF91    mov        dword ptr [ebp-4],eax
 0058BF94    mov        eax,dword ptr [ebp-8]
 0058BF97    call       @LStrAddRef
 0058BF9C    xor        eax,eax
 0058BF9E    push       ebp
 0058BF9F    push       58C012
 0058BFA4    push       dword ptr fs:[eax]
 0058BFA7    mov        dword ptr fs:[eax],esp
 0058BFAA    mov        dword ptr [ebp-0C],0FFFFFFFF
 0058BFB1    mov        eax,dword ptr [ebp-4]
 0058BFB4    mov        eax,dword ptr [eax+0B28]; TRvNDRWriter.?fB28:TStringList
 0058BFBA    mov        edx,dword ptr [eax]
 0058BFBC    call       dword ptr [edx+14]; TStringList.GetCount
 0058BFBF    mov        esi,eax
 0058BFC1    dec        esi
 0058BFC2    test       esi,esi
>0058BFC4    jl         0058BFF4
 0058BFC6    inc        esi
 0058BFC7    xor        ebx,ebx
 0058BFC9    lea        ecx,[ebp-10]
 0058BFCC    mov        eax,dword ptr [ebp-4]
 0058BFCF    mov        eax,dword ptr [eax+0B28]; TRvNDRWriter.?fB28:TStringList
 0058BFD5    mov        edx,ebx
 0058BFD7    mov        edi,dword ptr [eax]
 0058BFD9    call       dword ptr [edi+0C]; TStringList.Get
 0058BFDC    mov        eax,dword ptr [ebp-10]
 0058BFDF    mov        edx,dword ptr [ebp-8]
 0058BFE2    call       CompareText
 0058BFE7    test       eax,eax
>0058BFE9    jne        0058BFF0
 0058BFEB    mov        dword ptr [ebp-0C],ebx
>0058BFEE    jmp        0058BFF4
 0058BFF0    inc        ebx
 0058BFF1    dec        esi
<0058BFF2    jne        0058BFC9
 0058BFF4    xor        eax,eax
 0058BFF6    pop        edx
 0058BFF7    pop        ecx
 0058BFF8    pop        ecx
 0058BFF9    mov        dword ptr fs:[eax],edx
 0058BFFC    push       58C019
 0058C001    lea        eax,[ebp-10]
 0058C004    call       @LStrClr
 0058C009    lea        eax,[ebp-8]
 0058C00C    call       @LStrClr
 0058C011    ret
<0058C012    jmp        @HandleFinally
<0058C017    jmp        0058C001
 0058C019    mov        eax,dword ptr [ebp-0C]
 0058C01C    pop        edi
 0058C01D    pop        esi
 0058C01E    pop        ebx
 0058C01F    mov        esp,ebp
 0058C021    pop        ebp
 0058C022    ret
*}
//end;

//0058C024
//procedure sub_0058C024(?:TRvNDRWriter; ?:AnsiString; ?:AnsiString; ?:?; ?:?);
//begin
{*
 0058C024    push       ebp
 0058C025    mov        ebp,esp
 0058C027    add        esp,0FFFFFF78
 0058C02D    push       ebx
 0058C02E    push       esi
 0058C02F    mov        dword ptr [ebp-8],ecx
 0058C032    mov        dword ptr [ebp-4],edx
 0058C035    mov        ebx,eax
 0058C037    mov        eax,dword ptr [ebp-4]
 0058C03A    call       @LStrAddRef
 0058C03F    mov        eax,dword ptr [ebp-8]
 0058C042    call       @LStrAddRef
 0058C047    xor        eax,eax
 0058C049    push       ebp
 0058C04A    push       58C156
 0058C04F    push       dword ptr fs:[eax]
 0058C052    mov        dword ptr fs:[eax],esp
 0058C055    mov        dl,25
 0058C057    mov        eax,ebx
 0058C059    call       00589290
 0058C05E    mov        edx,dword ptr [ebp-4]
 0058C061    mov        eax,ebx
 0058C063    call       005892E4
 0058C068    mov        eax,ebx
 0058C06A    call       005895D4
 0058C06F    lea        eax,[ebp-88]
 0058C075    xor        ecx,ecx
 0058C077    mov        edx,80
 0058C07C    call       @FillChar
 0058C081    cmp        byte ptr [ebp+0C],0
>0058C085    je         0058C0ED
 0058C087    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C08D    mov        edx,dword ptr [eax]
 0058C08F    call       dword ptr [edx]; TStream.GetSize
 0058C091    neg        eax
 0058C093    adc        edx,0
 0058C096    neg        edx
 0058C098    mov        ecx,eax
 0058C09A    mov        edx,dword ptr [ebp-4]
 0058C09D    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C0A3    mov        esi,dword ptr [eax]
 0058C0A5    call       dword ptr [esi+3C]; TStringList.AddObject
 0058C0A8    mov        eax,dword ptr [ebp-8]
 0058C0AB    call       @LStrLen
 0058C0B0    mov        edx,eax
 0058C0B2    mov        eax,ebx
 0058C0B4    call       00589290
 0058C0B9    mov        eax,dword ptr [ebp-8]
 0058C0BC    call       @LStrLen
 0058C0C1    mov        edx,eax
 0058C0C3    mov        eax,ebx
 0058C0C5    call       00589290
 0058C0CA    cmp        dword ptr [ebp-8],0
>0058C0CE    je         0058C134
 0058C0D0    mov        eax,dword ptr [ebp-8]
 0058C0D3    call       @LStrLen
 0058C0D8    push       eax
 0058C0D9    lea        eax,[ebp-8]
 0058C0DC    call       @UniqueStringA
 0058C0E1    mov        edx,eax
 0058C0E3    mov        eax,ebx
 0058C0E5    pop        ecx
 0058C0E6    call       005895F8
>0058C0EB    jmp        0058C134
 0058C0ED    mov        eax,dword ptr [ebx+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C0F3    mov        edx,dword ptr [eax]
 0058C0F5    call       dword ptr [edx]; TStream.GetSize
 0058C0F7    mov        ecx,eax
 0058C0F9    mov        edx,dword ptr [ebp-4]
 0058C0FC    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C102    mov        esi,dword ptr [eax]
 0058C104    call       dword ptr [esi+3C]; TStringList.AddObject
 0058C107    mov        dl,80
 0058C109    mov        eax,ebx
 0058C10B    call       00589290
 0058C110    mov        dl,0FF
 0058C112    mov        eax,ebx
 0058C114    call       00589290
 0058C119    mov        eax,dword ptr [ebp+8]
 0058C11C    mov        dword ptr [ebp-88],eax
 0058C122    lea        edx,[ebp-88]
 0058C128    mov        ecx,80
 0058C12D    mov        eax,ebx
 0058C12F    call       005895F8
 0058C134    mov        eax,ebx
 0058C136    call       00588AAC
 0058C13B    xor        eax,eax
 0058C13D    pop        edx
 0058C13E    pop        ecx
 0058C13F    pop        ecx
 0058C140    mov        dword ptr fs:[eax],edx
 0058C143    push       58C15D
 0058C148    lea        eax,[ebp-8]
 0058C14B    mov        edx,2
 0058C150    call       @LStrArrayClr
 0058C155    ret
<0058C156    jmp        @HandleFinally
<0058C15B    jmp        0058C148
 0058C15D    pop        esi
 0058C15E    pop        ebx
 0058C15F    mov        esp,ebp
 0058C161    pop        ebp
 0058C162    ret        8
*}
//end;

//0058C168
//procedure sub_0058C168(?:?; ?:?);
//begin
{*
 0058C168    push       ebp
 0058C169    mov        ebp,esp
 0058C16B    push       ecx
 0058C16C    push       ebx
 0058C16D    push       esi
 0058C16E    push       edi
 0058C16F    mov        esi,ecx
 0058C171    mov        dword ptr [ebp-4],edx
 0058C174    mov        ebx,eax
 0058C176    mov        eax,dword ptr [ebp-4]
 0058C179    call       @LStrAddRef
 0058C17E    xor        eax,eax
 0058C180    push       ebp
 0058C181    push       58C230
 0058C186    push       dword ptr fs:[eax]
 0058C189    mov        dword ptr fs:[eax],esp
 0058C18C    mov        eax,ebx
 0058C18E    call       00584BE8
 0058C193    mov        eax,ebx
 0058C195    call       00584D84
 0058C19A    test       al,al
>0058C19C    jne        0058C21A
 0058C19E    push       58C248; 'ý$RPCVü'
 0058C1A3    push       dword ptr [ebp-4]
 0058C1A6    push       58C258; 'û'
 0058C1AB    mov        eax,esi
 0058C1AD    mov        edx,3
 0058C1B2    call       @LStrCatN
 0058C1B7    mov        edx,dword ptr [ebp-4]
 0058C1BA    mov        eax,ebx
 0058C1BC    call       0058BF80
 0058C1C1    mov        esi,eax
 0058C1C3    test       esi,esi
>0058C1C5    jge        0058C1D9
 0058C1C7    push       0
 0058C1C9    push       0
 0058C1CB    xor        ecx,ecx
 0058C1CD    mov        edx,dword ptr [ebp-4]
 0058C1D0    mov        eax,ebx
 0058C1D2    call       0058C024
>0058C1D7    jmp        0058C21A
 0058C1D9    mov        edx,esi
 0058C1DB    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C1E1    mov        ecx,dword ptr [eax]
 0058C1E3    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C1E6    test       eax,eax
>0058C1E8    jge        0058C21A
 0058C1EA    mov        edx,esi
 0058C1EC    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C1F2    mov        ecx,dword ptr [eax]
 0058C1F4    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C1F7    cdq
 0058C1F8    xor        eax,edx
 0058C1FA    sub        eax,edx
 0058C1FC    mov        edi,eax
 0058C1FE    mov        edx,esi
 0058C200    mov        eax,dword ptr [ebx+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C206    mov        ecx,dword ptr [eax]
 0058C208    call       dword ptr [ecx+48]; TStringList.Delete
 0058C20B    push       0
 0058C20D    push       edi
 0058C20E    xor        ecx,ecx
 0058C210    mov        edx,dword ptr [ebp-4]
 0058C213    mov        eax,ebx
 0058C215    call       0058C024
 0058C21A    xor        eax,eax
 0058C21C    pop        edx
 0058C21D    pop        ecx
 0058C21E    pop        ecx
 0058C21F    mov        dword ptr fs:[eax],edx
 0058C222    push       58C237
 0058C227    lea        eax,[ebp-4]
 0058C22A    call       @LStrClr
 0058C22F    ret
<0058C230    jmp        @HandleFinally
<0058C235    jmp        0058C227
 0058C237    pop        edi
 0058C238    pop        esi
 0058C239    pop        ebx
 0058C23A    pop        ecx
 0058C23B    pop        ebp
 0058C23C    ret
*}
//end;

//0058C25C
//procedure sub_0058C25C(?:?; ?:?);
//begin
{*
 0058C25C    push       ebp
 0058C25D    mov        ebp,esp
 0058C25F    add        esp,0FFFFFFF4
 0058C262    push       ebx
 0058C263    push       esi
 0058C264    push       edi
 0058C265    mov        dword ptr [ebp-8],ecx
 0058C268    mov        dword ptr [ebp-4],edx
 0058C26B    mov        esi,eax
 0058C26D    mov        eax,dword ptr [ebp-4]
 0058C270    call       @LStrAddRef
 0058C275    mov        eax,dword ptr [ebp-8]
 0058C278    call       @LStrAddRef
 0058C27D    xor        eax,eax
 0058C27F    push       ebp
 0058C280    push       58C3E2
 0058C285    push       dword ptr fs:[eax]
 0058C288    mov        dword ptr fs:[eax],esp
 0058C28B    mov        eax,esi
 0058C28D    call       00584BE8
 0058C292    mov        eax,esi
 0058C294    call       00584D84
 0058C299    test       al,al
>0058C29B    jne        0058C3C7
 0058C2A1    mov        edx,dword ptr [ebp-4]
 0058C2A4    mov        eax,esi
 0058C2A6    call       0058BF80
 0058C2AB    mov        edi,eax
 0058C2AD    test       edi,edi
>0058C2AF    jge        0058C2C7
 0058C2B1    push       1
 0058C2B3    push       0
 0058C2B5    mov        ecx,dword ptr [ebp-8]
 0058C2B8    mov        edx,dword ptr [ebp-4]
 0058C2BB    mov        eax,esi
 0058C2BD    call       0058C024
>0058C2C2    jmp        0058C3C7
 0058C2C7    mov        edx,edi
 0058C2C9    mov        eax,dword ptr [esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C2CF    mov        ecx,dword ptr [eax]
 0058C2D1    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C2D4    test       eax,eax
>0058C2D6    jge        0058C2FB
 0058C2D8    mov        edx,edi
 0058C2DA    mov        eax,dword ptr [esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C2E0    mov        ecx,dword ptr [eax]
 0058C2E2    call       dword ptr [ecx+48]; TStringList.Delete
 0058C2E5    push       1
 0058C2E7    push       0
 0058C2E9    mov        ecx,dword ptr [ebp-8]
 0058C2EC    mov        edx,dword ptr [ebp-4]
 0058C2EF    mov        eax,esi
 0058C2F1    call       0058C024
>0058C2F6    jmp        0058C3C7
 0058C2FB    mov        eax,esi
 0058C2FD    call       005895D4
 0058C302    mov        edx,edi
 0058C304    mov        ebx,dword ptr [esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C30A    mov        eax,ebx
 0058C30C    mov        ecx,dword ptr [eax]
 0058C30E    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C311    mov        ecx,eax
 0058C313    neg        ecx
 0058C315    mov        edx,edi
 0058C317    mov        eax,ebx
 0058C319    mov        ebx,dword ptr [eax]
 0058C31B    call       dword ptr [ebx+24]; TStringList.PutObject
 0058C31E    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C324    call       TStream.GetPosition
 0058C329    mov        ebx,eax
 0058C32B    mov        edx,edi
 0058C32D    mov        eax,dword ptr [esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C333    mov        ecx,dword ptr [eax]
 0058C335    call       dword ptr [ecx+18]; TStringList.GetObject
 0058C338    cdq
 0058C339    xor        eax,edx
 0058C33B    sub        eax,edx
 0058C33D    cdq
 0058C33E    push       edx
 0058C33F    push       eax
 0058C340    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C346    call       TStream.SetPosition
 0058C34B    mov        byte ptr [ebp-9],80
 0058C34F    lea        edx,[ebp-9]
 0058C352    mov        ecx,1
 0058C357    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C35D    call       TStream.WriteBuffer
 0058C362    mov        eax,dword ptr [ebp-8]
 0058C365    call       @LStrLen
 0058C36A    mov        byte ptr [ebp-9],al
 0058C36D    cmp        byte ptr [ebp-9],80
>0058C371    jbe        0058C377
 0058C373    mov        byte ptr [ebp-9],80
 0058C377    lea        edx,[ebp-9]
 0058C37A    mov        ecx,1
 0058C37F    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C385    call       TStream.WriteBuffer
 0058C38A    cmp        byte ptr [ebp-9],0
>0058C38E    jbe        0058C3AA
 0058C390    lea        eax,[ebp-8]
 0058C393    call       @UniqueStringA
 0058C398    mov        edx,eax
 0058C39A    xor        ecx,ecx
 0058C39C    mov        cl,byte ptr [ebp-9]
 0058C39F    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C3A5    call       TStream.WriteBuffer
 0058C3AA    mov        eax,ebx
 0058C3AC    cdq
 0058C3AD    push       edx
 0058C3AE    push       eax
 0058C3AF    mov        eax,dword ptr [esi+0B08]; TRvNDRWriter.?fB08:TMemoryStream
 0058C3B5    call       TStream.SetPosition
 0058C3BA    mov        edx,edi
 0058C3BC    mov        eax,dword ptr [esi+0B28]; TRvNDRWriter.?fB28:TStringList
 0058C3C2    mov        ecx,dword ptr [eax]
 0058C3C4    call       dword ptr [ecx+48]; TStringList.Delete
 0058C3C7    xor        eax,eax
 0058C3C9    pop        edx
 0058C3CA    pop        ecx
 0058C3CB    pop        ecx
 0058C3CC    mov        dword ptr fs:[eax],edx
 0058C3CF    push       58C3E9
 0058C3D4    lea        eax,[ebp-8]
 0058C3D7    mov        edx,2
 0058C3DC    call       @LStrArrayClr
 0058C3E1    ret
<0058C3E2    jmp        @HandleFinally
<0058C3E7    jmp        0058C3D4
 0058C3E9    pop        edi
 0058C3EA    pop        esi
 0058C3EB    pop        ebx
 0058C3EC    mov        esp,ebp
 0058C3EE    pop        ebp
 0058C3EF    ret
*}
//end;

end.