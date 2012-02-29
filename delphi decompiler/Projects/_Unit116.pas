{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit116;

interface

uses
  Classes, Windows, Graphics, _Unit117;

type
  TRCPURunner = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:TRCPUModule;//fC
    f10:dword;//f10
    f14:Pointer;//f14
    f18:dword;//f18
    f1C:Pointer;//f1C
    f20:dword;//f20
    f24:byte;//f24
    destructor Destroy; virtual;
    //constructor Create(?:TRCPURunner; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005C3868
//constructor TRCPURunner.Create(?:TRCPURunner; _Dv__:Boolean);
//begin
{*
 005C3868    push       ebx
 005C3869    push       esi
 005C386A    test       dl,dl
>005C386C    je         005C3876
 005C386E    add        esp,0FFFFFFF0
 005C3871    call       @ClassCreate
 005C3876    mov        ebx,edx
 005C3878    mov        esi,eax
 005C387A    xor        edx,edx
 005C387C    mov        eax,esi
 005C387E    call       TObject.Create
 005C3883    mov        eax,esi
 005C3885    test       bl,bl
>005C3887    je         005C3898
 005C3889    call       @AfterConstruction
 005C388E    pop        dword ptr fs:[0]
 005C3895    add        esp,0C
 005C3898    mov        eax,esi
 005C389A    pop        esi
 005C389B    pop        ebx
 005C389C    ret
*}
//end;

//005C38A0
destructor TRCPURunner.Destroy;
begin
{*
 005C38A0    push       ebx
 005C38A1    push       esi
 005C38A2    call       @BeforeDestruction
 005C38A7    mov        ebx,edx
 005C38A9    mov        esi,eax
 005C38AB    mov        edx,ebx
 005C38AD    and        dl,0FC
 005C38B0    mov        eax,esi
 005C38B2    call       TObject.Destroy
 005C38B7    test       bl,bl
>005C38B9    jle        005C38C2
 005C38BB    mov        eax,esi
 005C38BD    call       @ClassDestroy
 005C38C2    pop        esi
 005C38C3    pop        ebx
 005C38C4    ret
*}
end;

//005C38C8
//procedure sub_005C38C8(?:TRCPURunner; ?:?);
//begin
{*
 005C38C8    push       ebp
 005C38C9    mov        ebp,esp
 005C38CB    push       0
 005C38CD    push       ebx
 005C38CE    xor        ecx,ecx
 005C38D0    push       ebp
 005C38D1    push       5C3915
 005C38D6    push       dword ptr fs:[ecx]
 005C38D9    mov        dword ptr fs:[ecx],esp
 005C38DC    sub        dword ptr [eax+4],edx
 005C38DF    cmp        dword ptr [eax+4],0; TRCPURunner.?f4:dword
>005C38E3    jge        005C38FF
 005C38E5    mov        ebx,dword ptr ds:[61B830]
 005C38EB    mov        ebx,dword ptr [ebx]
 005C38ED    lea        edx,[ebp-4]
 005C38F0    mov        eax,5C3928; 'Stack Overflow'
 005C38F5    call       ebx
 005C38F7    mov        eax,dword ptr [ebp-4]
 005C38FA    call       00579798
 005C38FF    xor        eax,eax
 005C3901    pop        edx
 005C3902    pop        ecx
 005C3903    pop        ecx
 005C3904    mov        dword ptr fs:[eax],edx
 005C3907    push       5C391C
 005C390C    lea        eax,[ebp-4]
 005C390F    call       @LStrClr
 005C3914    ret
<005C3915    jmp        @HandleFinally
<005C391A    jmp        005C390C
 005C391C    pop        ebx
 005C391D    pop        ecx
 005C391E    pop        ebp
 005C391F    ret
*}
//end;

//005C3938
//procedure sub_005C3938(?:TRCPURunner; ?:Single; ?:?);
//begin
{*
 005C3938    push       ebx
 005C3939    push       esi
 005C393A    push       edi
 005C393B    mov        esi,ecx
 005C393D    mov        edi,edx
 005C393F    mov        ebx,eax
 005C3941    mov        edx,esi
 005C3943    mov        eax,ebx
 005C3945    call       005C38C8
 005C394A    mov        edx,dword ptr [ebx+14]; TRCPURunner.?f14:Pointer
 005C394D    add        edx,dword ptr [ebx+4]; TRCPURunner.?f4:dword
 005C3950    mov        eax,edi
 005C3952    mov        ecx,esi
 005C3954    call       Move
 005C3959    pop        edi
 005C395A    pop        esi
 005C395B    pop        ebx
 005C395C    ret
*}
//end;

//005C3960
//procedure sub_005C3960(?:TRCPURunner; ?:Single);
//begin
{*
 005C3960    push       ebx
 005C3961    push       esi
 005C3962    mov        esi,edx
 005C3964    mov        ebx,eax
 005C3966    mov        edx,4
 005C396B    mov        eax,ebx
 005C396D    call       005C38C8
 005C3972    mov        eax,dword ptr [esi]
 005C3974    mov        edx,dword ptr [ebx+14]; TRCPURunner.?f14:Pointer
 005C3977    add        edx,dword ptr [ebx+4]; TRCPURunner.?f4:dword
 005C397A    mov        dword ptr [edx],eax
 005C397C    pop        esi
 005C397D    pop        ebx
 005C397E    ret
*}
//end;

//005C3980
//procedure sub_005C3980(?:TRCPURunner; ?:?);
//begin
{*
 005C3980    push       ebx
 005C3981    push       esi
 005C3982    mov        esi,edx
 005C3984    mov        ebx,eax
 005C3986    mov        edx,esi
 005C3988    mov        eax,ebx
 005C398A    call       005C38C8
 005C398F    mov        eax,dword ptr [ebx+14]; TRCPURunner.?f14:Pointer
 005C3992    add        eax,dword ptr [ebx+4]; TRCPURunner.?f4:dword
 005C3995    xor        ecx,ecx
 005C3997    mov        edx,esi
 005C3999    call       @FillChar
 005C399E    pop        esi
 005C399F    pop        ebx
 005C39A0    ret
*}
//end;

//005C39A4
//procedure sub_005C39A4(?:TRCPURunner; ?:?);
//begin
{*
 005C39A4    push       ebp
 005C39A5    mov        ebp,esp
 005C39A7    push       0
 005C39A9    push       ebx
 005C39AA    xor        ecx,ecx
 005C39AC    push       ebp
 005C39AD    push       5C39F3
 005C39B2    push       dword ptr fs:[ecx]
 005C39B5    mov        dword ptr fs:[ecx],esp
 005C39B8    add        dword ptr [eax+4],edx; TRCPURunner.?f4:dword
 005C39BB    mov        edx,dword ptr [eax+4]; TRCPURunner.?f4:dword
 005C39BE    cmp        edx,dword ptr [eax+20]; TRCPURunner.?f20:dword
>005C39C1    jle        005C39DD
 005C39C3    mov        ebx,dword ptr ds:[61B830]
 005C39C9    mov        ebx,dword ptr [ebx]
 005C39CB    lea        edx,[ebp-4]
 005C39CE    mov        eax,5C3A08; 'Stack Underflow'
 005C39D3    call       ebx
 005C39D5    mov        eax,dword ptr [ebp-4]
 005C39D8    call       00579798
 005C39DD    xor        eax,eax
 005C39DF    pop        edx
 005C39E0    pop        ecx
 005C39E1    pop        ecx
 005C39E2    mov        dword ptr fs:[eax],edx
 005C39E5    push       5C39FA
 005C39EA    lea        eax,[ebp-4]
 005C39ED    call       @LStrClr
 005C39F2    ret
<005C39F3    jmp        @HandleFinally
<005C39F8    jmp        005C39EA
 005C39FA    pop        ebx
 005C39FB    pop        ecx
 005C39FC    pop        ebp
 005C39FD    ret
*}
//end;

//005C3A18
//function sub_005C3A18(?:TRCPURunner):?;
//begin
{*
 005C3A18    push       ebx
 005C3A19    mov        edx,dword ptr [eax+14]; TRCPURunner.?f14:Pointer
 005C3A1C    add        edx,dword ptr [eax+4]; TRCPURunner.?f4:dword
 005C3A1F    mov        ebx,dword ptr [edx]
 005C3A21    mov        edx,4
 005C3A26    call       005C39A4
 005C3A2B    mov        eax,ebx
 005C3A2D    pop        ebx
 005C3A2E    ret
*}
//end;

//005C3A30
//function sub_005C3A30(?:TRCPURunner):?;
//begin
{*
 005C3A30    mov        edx,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C3A33    add        edx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C3A36    mov        dl,byte ptr [edx]
 005C3A38    inc        dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C3A3B    mov        eax,edx
 005C3A3D    ret
*}
//end;

//005C3A40
//function sub_005C3A40(?:TRCPURunner):?;
//begin
{*
 005C3A40    push       ebx
 005C3A41    push       esi
 005C3A42    push       ecx
 005C3A43    mov        esi,eax
 005C3A45    mov        eax,esi
 005C3A47    call       005C3A30
 005C3A4C    mov        ebx,eax
 005C3A4E    cmp        bl,80
>005C3A51    jae        005C3A5C
 005C3A53    xor        eax,eax
 005C3A55    mov        al,bl
>005C3A57    jmp        005C3AF6
 005C3A5C    cmp        bl,0C0
>005C3A5F    jae        005C3A7D
 005C3A61    mov        eax,esi
 005C3A63    call       005C3A30
 005C3A68    and        eax,0FF
 005C3A6D    xor        edx,edx
 005C3A6F    mov        dl,bl
 005C3A71    shl        edx,8
 005C3A74    add        eax,edx
 005C3A76    sub        eax,8000
>005C3A7B    jmp        005C3AF6
 005C3A7D    cmp        bl,0E0
>005C3A80    jae        005C3AB2
 005C3A82    mov        eax,esi
 005C3A84    call       005C3A30
 005C3A89    mov        byte ptr [esp],al
 005C3A8C    mov        eax,esi
 005C3A8E    call       005C3A30
 005C3A93    and        eax,0FF
 005C3A98    xor        edx,edx
 005C3A9A    mov        dl,bl
 005C3A9C    shl        edx,8
 005C3A9F    xor        ecx,ecx
 005C3AA1    mov        cl,byte ptr [esp]
 005C3AA4    add        edx,ecx
 005C3AA6    shl        edx,8
 005C3AA9    add        eax,edx
 005C3AAB    sub        eax,0C00000
>005C3AB0    jmp        005C3AF6
 005C3AB2    mov        eax,esi
 005C3AB4    call       005C3A30
 005C3AB9    mov        byte ptr [esp],al
 005C3ABC    mov        eax,esi
 005C3ABE    call       005C3A30
 005C3AC3    mov        byte ptr [esp+1],al
 005C3AC7    mov        eax,esi
 005C3AC9    call       005C3A30
 005C3ACE    and        eax,0FF
 005C3AD3    xor        edx,edx
 005C3AD5    mov        dl,bl
 005C3AD7    shl        edx,8
 005C3ADA    xor        ecx,ecx
 005C3ADC    mov        cl,byte ptr [esp]
 005C3ADF    add        edx,ecx
 005C3AE1    shl        edx,8
 005C3AE4    xor        ecx,ecx
 005C3AE6    mov        cl,byte ptr [esp+1]
 005C3AEA    add        edx,ecx
 005C3AEC    shl        edx,8
 005C3AEF    add        eax,edx
 005C3AF1    sub        eax,0E0000000
 005C3AF6    pop        edx
 005C3AF7    pop        esi
 005C3AF8    pop        ebx
 005C3AF9    ret
*}
//end;

//005C3AFC
//function sub_005C3AFC(?:TRCPURunner):?;
//begin
{*
 005C3AFC    push       ebp
 005C3AFD    mov        ebp,esp
 005C3AFF    push       0
 005C3B01    push       ebx
 005C3B02    push       esi
 005C3B03    push       edi
 005C3B04    mov        esi,eax
 005C3B06    xor        eax,eax
 005C3B08    push       ebp
 005C3B09    push       5C3BC8
 005C3B0E    push       dword ptr fs:[eax]
 005C3B11    mov        dword ptr fs:[eax],esp
 005C3B14    mov        eax,esi
 005C3B16    call       005C3A30
 005C3B1B    mov        ebx,eax
 005C3B1D    mov        eax,ebx
 005C3B1F    and        al,3F
 005C3B21    mov        edi,eax
 005C3B23    and        edi,0FF
 005C3B29    cmp        edi,3F
>005C3B2C    jne        005C3B37
 005C3B2E    mov        eax,esi
 005C3B30    call       005C3A40
 005C3B35    mov        edi,eax
 005C3B37    xor        eax,eax
 005C3B39    mov        al,bl
 005C3B3B    shr        eax,6
 005C3B3E    sub        eax,1
>005C3B41    jb         005C3B4D
>005C3B43    je         005C3B60
 005C3B45    dec        eax
>005C3B46    je         005C3B73
 005C3B48    dec        eax
>005C3B49    je         005C3B7A
>005C3B4B    jmp        005C3B96
 005C3B4D    mov        eax,edi
 005C3B4F    call       005A58B0
 005C3B54    mov        edi,eax
 005C3B56    mov        ebx,dword ptr [esi+14]; TRCPURunner.?f14:Pointer
 005C3B59    add        ebx,dword ptr [esi+8]; TRCPURunner.?f8:dword
 005C3B5C    add        ebx,edi
>005C3B5E    jmp        005C3BB2
 005C3B60    mov        eax,edi
 005C3B62    call       005A58B0
 005C3B67    mov        edi,eax
 005C3B69    mov        ebx,dword ptr [esi+14]; TRCPURunner.?f14:Pointer
 005C3B6C    add        ebx,dword ptr [esi+4]; TRCPURunner.?f4:dword
 005C3B6F    add        ebx,edi
>005C3B71    jmp        005C3BB2
 005C3B73    mov        ebx,dword ptr [esi+18]; TRCPURunner.?f18:dword
 005C3B76    add        ebx,edi
>005C3B78    jmp        005C3BB2
 005C3B7A    mov        eax,esi
 005C3B7C    call       005C3A40
 005C3B81    mov        ebx,eax
 005C3B83    mov        edx,edi
 005C3B85    mov        eax,dword ptr [esi+0C]; TRCPURunner.?fC:TRCPUModule
 005C3B88    call       005C8D40
 005C3B8D    call       005C73DC
 005C3B92    add        ebx,eax
>005C3B94    jmp        005C3BB2
 005C3B96    mov        ebx,dword ptr ds:[61B830]
 005C3B9C    mov        ebx,dword ptr [ebx]
 005C3B9E    lea        edx,[ebp-4]
 005C3BA1    mov        eax,5C3BE0; 'Invalid address mode'
 005C3BA6    call       ebx
 005C3BA8    mov        eax,dword ptr [ebp-4]
 005C3BAB    call       00579798
 005C3BB0    xor        ebx,ebx
 005C3BB2    xor        eax,eax
 005C3BB4    pop        edx
 005C3BB5    pop        ecx
 005C3BB6    pop        ecx
 005C3BB7    mov        dword ptr fs:[eax],edx
 005C3BBA    push       5C3BCF
 005C3BBF    lea        eax,[ebp-4]
 005C3BC2    call       @LStrClr
 005C3BC7    ret
<005C3BC8    jmp        @HandleFinally
<005C3BCD    jmp        005C3BBF
 005C3BCF    mov        eax,ebx
 005C3BD1    pop        edi
 005C3BD2    pop        esi
 005C3BD3    pop        ebx
 005C3BD4    pop        ecx
 005C3BD5    pop        ebp
 005C3BD6    ret
*}
//end;

//005C3BF8
//function sub_005C3BF8(?:TRCPURunner):?;
//begin
{*
 005C3BF8    push       ebx
 005C3BF9    push       esi
 005C3BFA    mov        ebx,eax
 005C3BFC    mov        eax,ebx
 005C3BFE    call       005C3AFC
 005C3C03    mov        esi,eax
 005C3C05    mov        edx,4
 005C3C0A    mov        eax,ebx
 005C3C0C    call       005C38C8
 005C3C11    mov        eax,dword ptr [ebx+14]; TRCPURunner.?f14:Pointer
 005C3C14    add        eax,dword ptr [ebx+4]; TRCPURunner.?f4:dword
 005C3C17    mov        dword ptr [eax],esi
 005C3C19    mov        eax,esi
 005C3C1B    pop        esi
 005C3C1C    pop        ebx
 005C3C1D    ret
*}
//end;

//005C3C20
//procedure sub_005C3C20(?:TRCPURunner; ?:TRCPUModule);
//begin
{*
 005C3C20    push       ebx
 005C3C21    push       esi
 005C3C22    mov        ebx,eax
 005C3C24    mov        esi,edx
 005C3C26    mov        dword ptr [ebx+0C],esi; TRCPURunner.?fC:TRCPUModule
 005C3C29    mov        eax,esi
 005C3C2B    call       005C73DC
 005C3C30    mov        dword ptr [ebx+18],eax; TRCPURunner.?f18:dword
 005C3C33    mov        eax,dword ptr [ebx+0C]; TRCPURunner.?fC:TRCPUModule
 005C3C36    mov        eax,dword ptr [eax+30]; TRCPUModule.?f30:Pointer
 005C3C39    mov        dword ptr [ebx+1C],eax; TRCPURunner.?f1C:Pointer
 005C3C3C    pop        esi
 005C3C3D    pop        ebx
 005C3C3E    ret
*}
//end;

//005C3C40
//procedure sub_005C3C40(?:TRCPURunner; ?:TRCPUModule);
//begin
{*
 005C3C40    push       ebp
 005C3C41    mov        ebp,esp
 005C3C43    add        esp,0FFFFFBA8
 005C3C49    push       ebx
 005C3C4A    push       esi
 005C3C4B    push       edi
 005C3C4C    xor        ecx,ecx
 005C3C4E    mov        dword ptr [ebp-448],ecx
 005C3C54    mov        dword ptr [ebp-44C],ecx
 005C3C5A    mov        dword ptr [ebp-458],ecx
 005C3C60    mov        dword ptr [ebp-40],ecx
 005C3C63    mov        esi,edx
 005C3C65    mov        dword ptr [ebp-4],eax
 005C3C68    xor        eax,eax
 005C3C6A    push       ebp
 005C3C6B    push       5C57C7
 005C3C70    push       dword ptr fs:[eax]
 005C3C73    mov        dword ptr fs:[eax],esp
 005C3C76    mov        eax,dword ptr [ebp-4]
 005C3C79    mov        byte ptr [eax+24],0; TRCPURunner.?f24:byte
 005C3C7D    mov        eax,dword ptr [ebp-4]
 005C3C80    mov        dword ptr [eax+0C],esi; TRCPURunner.?fC:TRCPUModule
 005C3C83    mov        eax,dword ptr [esi+38]; TRCPUModule.?f38:dword
 005C3C86    mov        edx,dword ptr [ebp-4]
 005C3C89    mov        dword ptr [edx+10],eax; TRCPURunner.?f10:dword
 005C3C8C    mov        eax,esi
 005C3C8E    call       005C73DC
 005C3C93    mov        edx,dword ptr [ebp-4]
 005C3C96    mov        dword ptr [edx+18],eax; TRCPURunner.?f18:dword
 005C3C99    mov        eax,dword ptr [esi+30]; TRCPUModule.?f30:Pointer
 005C3C9C    mov        edx,dword ptr [ebp-4]
 005C3C9F    mov        dword ptr [edx+1C],eax; TRCPURunner.?f1C:Pointer
 005C3CA2    mov        eax,dword ptr [esi+44]; TRCPUModule.?f44:dword
 005C3CA5    mov        edx,dword ptr [ebp-4]
 005C3CA8    mov        dword ptr [edx+4],eax; TRCPURunner.?f4:dword
 005C3CAB    mov        edx,dword ptr [ebp-4]
 005C3CAE    mov        dword ptr [edx+8],eax; TRCPURunner.?f8:dword
 005C3CB1    mov        eax,dword ptr [ebp-4]
 005C3CB4    mov        ebx,dword ptr [eax+4]; TRCPURunner.?f4:dword
 005C3CB7    mov        eax,dword ptr [ebp-4]
 005C3CBA    mov        dword ptr [eax+20],ebx; TRCPURunner.?f20:dword
 005C3CBD    mov        eax,ebx
 005C3CBF    call       @GetMem
 005C3CC4    mov        edx,dword ptr [ebp-4]
 005C3CC7    mov        dword ptr [edx+14],eax; TRCPURunner.?f14:Pointer
 005C3CCA    xor        eax,eax
 005C3CCC    mov        dword ptr [ebp-8],eax
 005C3CCF    mov        eax,5C5BCC
 005C3CD4    mov        dword ptr [ebp-38],eax
 005C3CD7    mov        byte ptr [ebp-39],0
 005C3CDB    xor        edx,edx
 005C3CDD    push       ebp
 005C3CDE    push       5C578F
 005C3CE3    push       dword ptr fs:[edx]
 005C3CE6    mov        dword ptr fs:[edx],esp
 005C3CE9    mov        byte ptr [ebp-9],0
 005C3CED    mov        eax,dword ptr [ebp-4]
 005C3CF0    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C3CF3    mov        edx,dword ptr [ebp-4]
 005C3CF6    add        eax,dword ptr [edx+10]; TRCPURunner.?f10:dword
 005C3CF9    mov        bl,byte ptr [eax]
 005C3CFB    mov        eax,dword ptr [ebp-4]
 005C3CFE    inc        dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C3D01    cmp        bl,8D
<005C3D04    je         005C3CED
 005C3D06    xor        eax,eax
 005C3D08    mov        al,bl
 005C3D0A    cmp        eax,90
>005C3D0F    ja         005C5705
 005C3D15    mov        al,byte ptr [eax+5C3D22]
 005C3D1B    jmp        dword ptr [eax*4+5C3DB3]
 005C3D1B    db         0
 005C3D1B    db         1
 005C3D1B    db         2
 005C3D1B    db         3
 005C3D1B    db         4
 005C3D1B    db         5
 005C3D1B    db         6
 005C3D1B    db         7
 005C3D1B    db         8
 005C3D1B    db         9
 005C3D1B    db         10
 005C3D1B    db         11
 005C3D1B    db         12
 005C3D1B    db         13
 005C3D1B    db         14
 005C3D1B    db         15
 005C3D1B    db         16
 005C3D1B    db         17
 005C3D1B    db         18
 005C3D1B    db         19
 005C3D1B    db         20
 005C3D1B    db         21
 005C3D1B    db         22
 005C3D1B    db         23
 005C3D1B    db         24
 005C3D1B    db         25
 005C3D1B    db         26
 005C3D1B    db         27
 005C3D1B    db         28
 005C3D1B    db         29
 005C3D1B    db         30
 005C3D1B    db         31
 005C3D1B    db         32
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         33
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         34
 005C3D1B    db         35
 005C3D1B    db         35
 005C3D1B    db         35
 005C3D1B    db         35
 005C3D1B    db         35
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         36
 005C3D1B    db         37
 005C3D1B    db         38
 005C3D1B    db         39
 005C3D1B    db         39
 005C3D1B    db         39
 005C3D1B    db         39
 005C3D1B    db         39
 005C3D1B    db         39
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         40
 005C3D1B    db         41
 005C3D1B    db         42
 005C3D1B    db         43
 005C3D1B    db         44
 005C3D1B    db         45
 005C3D1B    db         46
 005C3D1B    db         47
 005C3D1B    db         48
 005C3D1B    db         49
 005C3D1B    dd         5C5705
 005C3D1B    dd         5C3E7B
 005C3D1B    dd         5C3E88
 005C3D1B    dd         5C3EAB
 005C3D1B    dd         5C3EC8
 005C3D1B    dd         5C3EEF
 005C3D1B    dd         5C3F1E
 005C3D1B    dd         5C3F6B
 005C3D1B    dd         5C3FCE
 005C3D1B    dd         5C3FE3
 005C3D1B    dd         5C3FFC
 005C3D1B    dd         5C402F
 005C3D1B    dd         5C4063
 005C3D1B    dd         5C408D
 005C3D1B    dd         5C40EA
 005C3D1B    dd         5C4148
 005C3D1B    dd         5C4166
 005C3D1B    dd         5C41A2
 005C3D1B    dd         5C41C4
 005C3D1B    dd         5C4292
 005C3D1B    dd         5C4306
 005C3D1B    dd         5C4363
 005C3D1B    dd         5C4394
 005C3D1B    dd         5C4583
 005C3D1B    dd         5C45B4
 005C3D1B    dd         5C4606
 005C3D1B    dd         5C4639
 005C3D1B    dd         5C466C
 005C3D1B    dd         5C469F
 005C3D1B    dd         5C46D2
 005C3D1B    dd         5C4705
 005C3D1B    dd         5C4738
 005C3D1B    dd         5C475E
 005C3D1B    dd         5C4790
 005C3D1B    dd         5C4B81
 005C3D1B    dd         5C4DB7
 005C3D1B    dd         5C4E3C
 005C3D1B    dd         5C5065
 005C3D1B    dd         5C50A0
 005C3D1B    dd         5C5305
 005C3D1B    dd         5C5395
 005C3D1B    dd         5C54E4
 005C3D1B    dd         5C556E
 005C3D1B    dd         5C55F8
 005C3D1B    dd         5C561C
 005C3D1B    dd         5C5675
 005C3D1B    dd         5C5766
 005C3D1B    dd         5C56B2
 005C3D1B    dd         5C56BB
 005C3D1B    dd         5C5766
 005C3E7B    mov        eax,dword ptr [ebp-4]
 005C3E7E    call       005C3BF8
>005C3E83    jmp        005C5766
 005C3E88    mov        eax,dword ptr [ebp-4]
 005C3E8B    call       005C3A18
 005C3E90    mov        dword ptr [ebp-20],eax
 005C3E93    mov        eax,dword ptr [ebp-4]
 005C3E96    call       005C3BF8
 005C3E9B    lea        edx,[ebp-20]
 005C3E9E    mov        eax,dword ptr [ebp-4]
 005C3EA1    call       005C3960
>005C3EA6    jmp        005C5766
 005C3EAB    mov        eax,dword ptr [ebp-4]
 005C3EAE    call       005C3AFC
 005C3EB3    mov        eax,dword ptr [eax]
 005C3EB5    mov        dword ptr [ebp-18],eax
 005C3EB8    lea        edx,[ebp-18]
 005C3EBB    mov        eax,dword ptr [ebp-4]
 005C3EBE    call       005C3960
>005C3EC3    jmp        005C5766
 005C3EC8    mov        eax,dword ptr [ebp-4]
 005C3ECB    call       005C3A40
 005C3ED0    mov        edi,eax
 005C3ED2    mov        eax,dword ptr [ebp-4]
 005C3ED5    call       005C3AFC
 005C3EDA    mov        dword ptr [ebp-10],eax
 005C3EDD    mov        edx,dword ptr [ebp-10]
 005C3EE0    mov        ecx,edi
 005C3EE2    mov        eax,dword ptr [ebp-4]
 005C3EE5    call       005C3938
>005C3EEA    jmp        005C5766
 005C3EEF    mov        eax,dword ptr [ebp-4]
 005C3EF2    call       005C3A40
 005C3EF7    mov        edi,eax
 005C3EF9    mov        eax,dword ptr [ebp-4]
 005C3EFC    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C3EFF    mov        edx,dword ptr [ebp-4]
 005C3F02    add        eax,dword ptr [edx+10]; TRCPURunner.?f10:dword
 005C3F05    mov        dword ptr [ebp-10],eax
 005C3F08    lea        edx,[ebp-10]
 005C3F0B    mov        eax,dword ptr [ebp-4]
 005C3F0E    call       005C3960
 005C3F13    mov        eax,dword ptr [ebp-4]
 005C3F16    add        dword ptr [eax+10],edi; TRCPURunner.?f10:dword
>005C3F19    jmp        005C5766
 005C3F1E    mov        eax,dword ptr [ebp-4]
 005C3F21    call       005C3A40
 005C3F26    mov        edi,eax
 005C3F28    mov        eax,dword ptr [ebp-4]
 005C3F2B    call       005C3AFC
 005C3F30    mov        dword ptr [ebp-18],eax
 005C3F33    mov        eax,dword ptr [ebp-18]
 005C3F36    mov        edx,dword ptr ds:[4010F8]; String
 005C3F3C    call       @Initialize
 005C3F41    mov        eax,dword ptr [ebp-18]
 005C3F44    mov        edx,dword ptr [ebp-4]
 005C3F47    mov        edx,dword ptr [edx+1C]; TRCPURunner.?f1C:Pointer
 005C3F4A    mov        ecx,dword ptr [ebp-4]
 005C3F4D    add        edx,dword ptr [ecx+10]
 005C3F50    call       @LStrFromPChar
 005C3F55    lea        edx,[ebp-18]
 005C3F58    mov        eax,dword ptr [ebp-4]
 005C3F5B    call       005C3960
 005C3F60    mov        eax,dword ptr [ebp-4]
 005C3F63    add        dword ptr [eax+10],edi; TRCPURunner.?f10:dword
>005C3F66    jmp        005C5766
 005C3F6B    mov        eax,dword ptr [ebp-4]
 005C3F6E    call       005C3A18
 005C3F73    mov        dword ptr [ebp-20],eax
 005C3F76    mov        eax,dword ptr [ebp-4]
 005C3F79    call       005C3A40
 005C3F7E    mov        edi,eax
 005C3F80    mov        eax,dword ptr [ebp-4]
 005C3F83    call       005C3AFC
 005C3F88    mov        dword ptr [ebp-18],eax
 005C3F8B    mov        eax,dword ptr [ebp-18]
 005C3F8E    mov        edx,dword ptr ds:[4010F8]; String
 005C3F94    call       @Initialize
 005C3F99    mov        eax,dword ptr [ebp-18]
 005C3F9C    mov        edx,dword ptr [ebp-4]
 005C3F9F    mov        edx,dword ptr [edx+1C]; TRCPURunner.?f1C:Pointer
 005C3FA2    mov        ecx,dword ptr [ebp-4]
 005C3FA5    add        edx,dword ptr [ecx+10]
 005C3FA8    call       @LStrFromPChar
 005C3FAD    lea        edx,[ebp-18]
 005C3FB0    mov        eax,dword ptr [ebp-4]
 005C3FB3    call       005C3960
 005C3FB8    mov        eax,dword ptr [ebp-4]
 005C3FBB    add        dword ptr [eax+10],edi; TRCPURunner.?f10:dword
 005C3FBE    lea        edx,[ebp-20]
 005C3FC1    mov        eax,dword ptr [ebp-4]
 005C3FC4    call       005C3960
>005C3FC9    jmp        005C5766
 005C3FCE    xor        eax,eax
 005C3FD0    mov        dword ptr [ebp-10],eax
 005C3FD3    lea        edx,[ebp-10]
 005C3FD6    mov        eax,dword ptr [ebp-4]
 005C3FD9    call       005C3960
>005C3FDE    jmp        005C5766
 005C3FE3    mov        eax,dword ptr [ebp-4]
 005C3FE6    call       005C3A40
 005C3FEB    mov        edi,eax
 005C3FED    mov        edx,edi
 005C3FEF    mov        eax,dword ptr [ebp-4]
 005C3FF2    call       005C39A4
>005C3FF7    jmp        005C5766
 005C3FFC    mov        eax,dword ptr [ebp-4]
 005C3FFF    call       005C3A40
 005C4004    mov        edi,eax
 005C4006    mov        eax,dword ptr [ebp-4]
 005C4009    lea        edx,[eax+8]; TRCPURunner.?f8:dword
 005C400C    mov        eax,dword ptr [ebp-4]
 005C400F    call       005C3960
 005C4014    mov        eax,dword ptr [ebp-4]
 005C4017    mov        eax,dword ptr [eax+4]; TRCPURunner.?f4:dword
 005C401A    mov        edx,dword ptr [ebp-4]
 005C401D    mov        dword ptr [edx+8],eax; TRCPURunner.?f8:dword
 005C4020    mov        edx,edi
 005C4022    mov        eax,dword ptr [ebp-4]
 005C4025    call       005C3980
>005C402A    jmp        005C5766
 005C402F    mov        eax,dword ptr [ebp-4]
 005C4032    call       005C3A40
 005C4037    mov        edi,eax
 005C4039    mov        eax,dword ptr [ebp-4]
 005C403C    call       005C3AFC
 005C4041    mov        eax,dword ptr [eax]
 005C4043    mov        dword ptr [ebp-18],eax
 005C4046    mov        eax,dword ptr [ebp-4]
 005C4049    call       005C3AFC
 005C404E    mov        dword ptr [ebp-1C],eax
 005C4051    mov        edx,dword ptr [ebp-1C]
 005C4054    mov        eax,dword ptr [ebp-18]
 005C4057    mov        ecx,edi
 005C4059    call       Move
>005C405E    jmp        005C5766
 005C4063    mov        eax,dword ptr [ebp-4]
 005C4066    call       005C3AFC
 005C406B    mov        eax,dword ptr [eax]
 005C406D    mov        dword ptr [ebp-18],eax
 005C4070    mov        eax,dword ptr [ebp-4]
 005C4073    call       005C3AFC
 005C4078    mov        dword ptr [ebp-1C],eax
 005C407B    mov        eax,dword ptr [ebp-1C]
 005C407E    mov        edx,dword ptr [ebp-18]
 005C4081    mov        edx,dword ptr [edx]
 005C4083    call       @LStrAsg
>005C4088    jmp        005C5766
 005C408D    mov        eax,dword ptr [ebp-4]
 005C4090    call       005C3A40
 005C4095    mov        edi,eax
 005C4097    mov        eax,dword ptr [ebp-4]
 005C409A    call       005C3AFC
 005C409F    mov        eax,dword ptr [eax]
 005C40A1    mov        dword ptr [ebp-18],eax
 005C40A4    mov        eax,dword ptr [ebp-4]
 005C40A7    call       005C3AFC
 005C40AC    mov        dword ptr [ebp-1C],eax
 005C40AF    mov        eax,dword ptr [ebp-4]
 005C40B2    call       005C3A40
 005C40B7    mov        dword ptr [ebp-14],eax
 005C40BA    cmp        dword ptr [ebp-18],0
>005C40BE    jne        005C40D8
 005C40C0    mov        edx,dword ptr [ebp-1C]
 005C40C3    mov        eax,dword ptr [ebp-4]
 005C40C6    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C40C9    add        eax,dword ptr [ebp-14]
 005C40CC    mov        ecx,edi
 005C40CE    call       Move
>005C40D3    jmp        005C5766
 005C40D8    mov        edx,dword ptr [ebp-1C]
 005C40DB    mov        eax,dword ptr [ebp-18]
 005C40DE    mov        ecx,edi
 005C40E0    call       Move
>005C40E5    jmp        005C5766
 005C40EA    mov        eax,dword ptr [ebp-4]
 005C40ED    call       005C3AFC
 005C40F2    mov        eax,dword ptr [eax]
 005C40F4    mov        dword ptr [ebp-18],eax
 005C40F7    mov        eax,dword ptr [ebp-4]
 005C40FA    call       005C3AFC
 005C40FF    mov        dword ptr [ebp-1C],eax
 005C4102    mov        eax,dword ptr [ebp-4]
 005C4105    call       005C3AFC
 005C410A    mov        dword ptr [ebp-14],eax
 005C410D    mov        edx,4
 005C4112    mov        eax,dword ptr [ebp-4]
 005C4115    call       005C38C8
 005C411A    cmp        dword ptr [ebp-10],0
>005C411E    jne        005C4136
 005C4120    mov        eax,dword ptr [ebp-1C]
 005C4123    mov        edx,dword ptr [ebp-4]
 005C4126    mov        edx,dword ptr [edx+1C]; TRCPURunner.?f1C:Pointer
 005C4129    add        edx,dword ptr [ebp-14]
 005C412C    call       @LStrFromPChar
>005C4131    jmp        005C5766
 005C4136    mov        eax,dword ptr [ebp-1C]
 005C4139    mov        edx,dword ptr [ebp-18]
 005C413C    mov        edx,dword ptr [edx]
 005C413E    call       @LStrAsg
>005C4143    jmp        005C5766
 005C4148    mov        eax,dword ptr [ebp-4]
 005C414B    call       005C3AFC
 005C4150    mov        dword ptr [ebp-18],eax
 005C4153    mov        eax,dword ptr [ebp-18]
 005C4156    mov        edx,dword ptr ds:[4010F8]; String
 005C415C    call       @Finalize
>005C4161    jmp        005C5766
 005C4166    mov        eax,dword ptr [ebp-4]
 005C4169    call       005C3AFC
 005C416E    mov        dword ptr [ebp-18],eax
 005C4171    mov        eax,dword ptr [ebp-4]
 005C4174    call       005C3A40
 005C4179    mov        ebx,eax
 005C417B    mov        eax,dword ptr [ebp-4]
 005C417E    call       005C3A40
 005C4183    mov        edi,eax
 005C4185    mov        edx,ebx
 005C4187    mov        eax,esi
 005C4189    call       005C8D40
 005C418E    mov        edx,edi
 005C4190    call       005C8D80
 005C4195    mov        edx,dword ptr [ebp-18]
 005C4198    mov        ecx,dword ptr [eax]
 005C419A    call       dword ptr [ecx+10]
>005C419D    jmp        005C5766
 005C41A2    mov        eax,dword ptr [ebp-4]
 005C41A5    call       005C3AFC
 005C41AA    mov        dword ptr [ebp-10],eax
 005C41AD    mov        eax,dword ptr [ebp-10]
 005C41B0    mov        eax,dword ptr [eax]
 005C41B2    mov        edx,dword ptr [ebp-8]
 005C41B5    mov        dword ptr [ebp+edx*4-440],eax
 005C41BC    inc        dword ptr [ebp-8]
>005C41BF    jmp        005C5766
 005C41C4    mov        eax,dword ptr [ebp-4]
 005C41C7    call       005C3AFC
 005C41CC    mov        eax,dword ptr [eax]
 005C41CE    mov        dword ptr [ebp-18],eax
 005C41D1    mov        eax,dword ptr [ebp-4]
 005C41D4    call       005C3A40
 005C41D9    mov        edi,eax
 005C41DB    mov        ebx,edi
 005C41DD    test       ebx,ebx
>005C41DF    jns        005C41E4
 005C41E1    add        ebx,3
 005C41E4    sar        ebx,2
 005C41E7    mov        eax,ebx
 005C41E9    shl        eax,2
 005C41EC    add        eax,dword ptr [ebp-18]
 005C41EF    mov        dword ptr [ebp-18],eax
 005C41F2    mov        eax,edi
 005C41F4    and        eax,80000003
>005C41F9    jns        005C4200
 005C41FB    dec        eax
 005C41FC    or         eax,0FFFFFFFC
 005C41FF    inc        eax
 005C4200    dec        eax
>005C4201    je         005C420B
 005C4203    dec        eax
>005C4204    je         005C4220
 005C4206    dec        eax
>005C4207    je         005C4235
>005C4209    jmp        005C425B
 005C420B    mov        eax,dword ptr [ebp-18]
 005C420E    movzx      eax,byte ptr [eax]
 005C4211    mov        edx,dword ptr [ebp-8]
 005C4214    mov        dword ptr [ebp+edx*4-440],eax
 005C421B    inc        dword ptr [ebp-8]
>005C421E    jmp        005C425B
 005C4220    mov        eax,dword ptr [ebp-18]
 005C4223    movzx      eax,word ptr [eax]
 005C4226    mov        edx,dword ptr [ebp-8]
 005C4229    mov        dword ptr [ebp+edx*4-440],eax
 005C4230    inc        dword ptr [ebp-8]
>005C4233    jmp        005C425B
 005C4235    mov        eax,dword ptr [ebp-8]
 005C4238    xor        edx,edx
 005C423A    mov        dword ptr [ebp+eax*4-440],edx
 005C4241    mov        eax,dword ptr [ebp-8]
 005C4244    lea        edx,[ebp+eax*4-440]
 005C424B    mov        eax,dword ptr [ebp-18]
 005C424E    mov        ecx,3
 005C4253    call       Move
 005C4258    inc        dword ptr [ebp-8]
 005C425B    mov        eax,ebx
 005C425D    test       eax,eax
>005C425F    jle        005C5766
 005C4265    mov        dword ptr [ebp-20],1
 005C426C    mov        edx,dword ptr [ebp-18]
 005C426F    sub        edx,4
 005C4272    mov        dword ptr [ebp-18],edx
 005C4275    mov        edx,dword ptr [ebp-18]
 005C4278    mov        edx,dword ptr [edx]
 005C427A    mov        ecx,dword ptr [ebp-8]
 005C427D    mov        dword ptr [ebp+ecx*4-440],edx
 005C4284    inc        dword ptr [ebp-8]
 005C4287    inc        dword ptr [ebp-20]
 005C428A    dec        eax
<005C428B    jne        005C426C
>005C428D    jmp        005C5766
 005C4292    mov        eax,dword ptr [ebp-4]
 005C4295    call       005C3A40
 005C429A    mov        edi,eax
 005C429C    mov        eax,dword ptr [ebp-4]
 005C429F    mov        eax,dword ptr [eax+8]; TRCPURunner.?f8:dword
 005C42A2    mov        edx,dword ptr [ebp-4]
 005C42A5    mov        dword ptr [edx+4],eax; TRCPURunner.?f4:dword
 005C42A8    mov        eax,dword ptr [ebp-4]
 005C42AB    call       005C3A18
 005C42B0    mov        edx,dword ptr [ebp-4]
 005C42B3    mov        dword ptr [edx+8],eax; TRCPURunner.?f8:dword
 005C42B6    mov        eax,dword ptr [ebp-4]
 005C42B9    mov        eax,dword ptr [eax+4]; TRCPURunner.?f4:dword
 005C42BC    mov        edx,dword ptr [ebp-4]
 005C42BF    cmp        eax,dword ptr [edx+20]; TRCPURunner.?f20:dword
>005C42C2    jl         005C42CD
 005C42C4    mov        byte ptr [ebp-9],1
>005C42C8    jmp        005C5766
 005C42CD    mov        eax,dword ptr [ebp-4]
 005C42D0    call       005C3A18
 005C42D5    mov        edx,dword ptr [ebp-4]
 005C42D8    mov        dword ptr [edx+10],eax; TRCPURunner.?f10:dword
 005C42DB    mov        eax,dword ptr [ebp-4]
 005C42DE    call       005C3A18
 005C42E3    mov        edx,dword ptr [ebp-4]
 005C42E6    mov        dword ptr [edx+0C],eax; TRCPURunner.?fC:TRCPUModule
 005C42E9    mov        edx,edi
 005C42EB    mov        eax,dword ptr [ebp-4]
 005C42EE    call       005C39A4
 005C42F3    mov        eax,dword ptr [ebp-4]
 005C42F6    mov        edx,dword ptr [eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C42F9    mov        eax,dword ptr [ebp-4]
 005C42FC    call       005C3C20
>005C4301    jmp        005C5766
 005C4306    mov        eax,dword ptr [ebp-4]
 005C4309    call       005C3A40
 005C430E    mov        edi,eax
 005C4310    mov        eax,dword ptr [ebp-4]
 005C4313    mov        eax,dword ptr [eax+8]; TRCPURunner.?f8:dword
 005C4316    mov        edx,dword ptr [ebp-4]
 005C4319    mov        dword ptr [edx+4],eax; TRCPURunner.?f4:dword
 005C431C    mov        eax,dword ptr [ebp-4]
 005C431F    call       005C3A18
 005C4324    mov        edx,dword ptr [ebp-4]
 005C4327    mov        dword ptr [edx+8],eax; TRCPURunner.?f8:dword
 005C432A    mov        eax,dword ptr [ebp-4]
 005C432D    call       005C3A18
 005C4332    mov        edx,dword ptr [ebp-4]
 005C4335    mov        dword ptr [edx+10],eax; TRCPURunner.?f10:dword
 005C4338    mov        eax,dword ptr [ebp-4]
 005C433B    call       005C3A18
 005C4340    mov        edx,dword ptr [ebp-4]
 005C4343    mov        dword ptr [edx+0C],eax; TRCPURunner.?fC:TRCPUModule
 005C4346    mov        edx,edi
 005C4348    mov        eax,dword ptr [ebp-4]
 005C434B    call       005C39A4
 005C4350    mov        eax,dword ptr [ebp-4]
 005C4353    mov        edx,dword ptr [eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C4356    mov        eax,dword ptr [ebp-4]
 005C4359    call       005C3C20
>005C435E    jmp        005C5766
 005C4363    mov        eax,dword ptr [ebp-4]
 005C4366    call       005C3A40
 005C436B    mov        ebx,eax
 005C436D    mov        eax,dword ptr [ebp-4]
 005C4370    lea        edx,[eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C4373    mov        eax,dword ptr [ebp-4]
 005C4376    call       005C3960
 005C437B    mov        eax,dword ptr [ebp-4]
 005C437E    lea        edx,[eax+10]; TRCPURunner.?f10:dword
 005C4381    mov        eax,dword ptr [ebp-4]
 005C4384    call       005C3960
 005C4389    mov        eax,dword ptr [ebp-4]
 005C438C    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C438F    jmp        005C5766
 005C4394    mov        eax,dword ptr [ebp-4]
 005C4397    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C439A    mov        edx,dword ptr [ebp-4]
 005C439D    add        eax,dword ptr [edx+10]; TRCPURunner.?f10:dword
 005C43A0    mov        bl,byte ptr [eax]
 005C43A2    mov        eax,dword ptr [ebp-4]
 005C43A5    inc        dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C43A8    mov        eax,dword ptr [ebp-4]
 005C43AB    call       005C3AFC
 005C43B0    mov        eax,dword ptr [eax]
 005C43B2    mov        dword ptr [ebp-18],eax
 005C43B5    mov        eax,dword ptr [ebp-4]
 005C43B8    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C43BB    mov        edx,dword ptr [ebp-4]
 005C43BE    add        eax,dword ptr [edx+10]; TRCPURunner.?f10:dword
 005C43C1    mov        eax,dword ptr [eax]
 005C43C3    mov        dword ptr [ebp-10],eax
 005C43C6    mov        eax,dword ptr [ebp-4]
 005C43C9    add        dword ptr [eax+10],4; TRCPURunner.?f10:dword
 005C43CD    xor        eax,eax
 005C43CF    mov        al,bl
 005C43D1    cmp        eax,0D
>005C43D4    ja         005C4579
 005C43DA    jmp        dword ptr [eax*4+5C43E1]
 005C43DA    dd         5C4419
 005C43DA    dd         5C4432
 005C43DA    dd         5C444B
 005C43DA    dd         5C4464
 005C43DA    dd         5C447E
 005C43DA    dd         5C4498
 005C43DA    dd         5C44B1
 005C43DA    dd         5C44CB
 005C43DA    dd         5C44E5
 005C43DA    dd         5C44FC
 005C43DA    dd         5C4513
 005C43DA    dd         5C4529
 005C43DA    dd         5C454E
 005C43DA    dd         5C4564
 005C4419    lea        edx,[ebp-440]
 005C441F    mov        ecx,dword ptr [ebp-8]
 005C4422    mov        eax,dword ptr [ebp-10]
 005C4425    call       dword ptr [ebp-38]
 005C4428    mov        edx,dword ptr [ebp-18]
 005C442B    mov        byte ptr [edx],al
>005C442D    jmp        005C4579
 005C4432    lea        edx,[ebp-440]
 005C4438    mov        ecx,dword ptr [ebp-8]
 005C443B    mov        eax,dword ptr [ebp-10]
 005C443E    call       dword ptr [ebp-38]
 005C4441    mov        edx,dword ptr [ebp-18]
 005C4444    mov        byte ptr [edx],al
>005C4446    jmp        005C4579
 005C444B    lea        edx,[ebp-440]
 005C4451    mov        ecx,dword ptr [ebp-8]
 005C4454    mov        eax,dword ptr [ebp-10]
 005C4457    call       dword ptr [ebp-38]
 005C445A    mov        edx,dword ptr [ebp-18]
 005C445D    mov        byte ptr [edx],al
>005C445F    jmp        005C4579
 005C4464    lea        edx,[ebp-440]
 005C446A    mov        ecx,dword ptr [ebp-8]
 005C446D    mov        eax,dword ptr [ebp-10]
 005C4470    call       dword ptr [ebp-38]
 005C4473    mov        edx,dword ptr [ebp-18]
 005C4476    mov        word ptr [edx],ax
>005C4479    jmp        005C4579
 005C447E    lea        edx,[ebp-440]
 005C4484    mov        ecx,dword ptr [ebp-8]
 005C4487    mov        eax,dword ptr [ebp-10]
 005C448A    call       dword ptr [ebp-38]
 005C448D    mov        edx,dword ptr [ebp-18]
 005C4490    mov        word ptr [edx],ax
>005C4493    jmp        005C4579
 005C4498    lea        edx,[ebp-440]
 005C449E    mov        ecx,dword ptr [ebp-8]
 005C44A1    mov        eax,dword ptr [ebp-10]
 005C44A4    call       dword ptr [ebp-38]
 005C44A7    mov        edx,dword ptr [ebp-18]
 005C44AA    mov        dword ptr [edx],eax
>005C44AC    jmp        005C4579
 005C44B1    lea        edx,[ebp-440]
 005C44B7    mov        ecx,dword ptr [ebp-8]
 005C44BA    mov        eax,dword ptr [ebp-10]
 005C44BD    call       dword ptr [ebp-38]
 005C44C0    mov        eax,dword ptr [ebp-18]
 005C44C3    fstp       dword ptr [eax]
 005C44C5    wait
>005C44C6    jmp        005C4579
 005C44CB    lea        edx,[ebp-440]
 005C44D1    mov        ecx,dword ptr [ebp-8]
 005C44D4    mov        eax,dword ptr [ebp-10]
 005C44D7    call       dword ptr [ebp-38]
 005C44DA    mov        eax,dword ptr [ebp-18]
 005C44DD    fstp       qword ptr [eax]
 005C44DF    wait
>005C44E0    jmp        005C4579
 005C44E5    lea        edx,[ebp-440]
 005C44EB    mov        ecx,dword ptr [ebp-8]
 005C44EE    mov        eax,dword ptr [ebp-10]
 005C44F1    call       dword ptr [ebp-38]
 005C44F4    mov        eax,dword ptr [ebp-18]
 005C44F7    fstp       tbyte ptr [eax]
 005C44F9    wait
>005C44FA    jmp        005C4579
 005C44FC    lea        edx,[ebp-440]
 005C4502    mov        ecx,dword ptr [ebp-8]
 005C4505    mov        eax,dword ptr [ebp-10]
 005C4508    call       dword ptr [ebp-38]
 005C450B    mov        eax,dword ptr [ebp-18]
 005C450E    fistp      qword ptr [eax]
 005C4510    wait
>005C4511    jmp        005C4579
 005C4513    lea        edx,[ebp-440]
 005C4519    mov        ecx,dword ptr [ebp-8]
 005C451C    mov        eax,dword ptr [ebp-10]
 005C451F    call       dword ptr [ebp-38]
 005C4522    mov        edx,dword ptr [ebp-18]
 005C4525    mov        byte ptr [edx],al
>005C4527    jmp        005C4579
 005C4529    mov        eax,dword ptr [ebp-18]
 005C452C    mov        edx,dword ptr ds:[4010F8]; String
 005C4532    call       @Initialize
 005C4537    mov        eax,dword ptr [ebp-18]
 005C453A    push       eax
 005C453B    lea        edx,[ebp-440]
 005C4541    mov        ecx,dword ptr [ebp-8]
 005C4544    mov        eax,dword ptr [ebp-10]
 005C4547    call       005C5BDC
>005C454C    jmp        005C4579
 005C454E    lea        edx,[ebp-440]
 005C4554    mov        ecx,dword ptr [ebp-8]
 005C4557    mov        eax,dword ptr [ebp-10]
 005C455A    call       dword ptr [ebp-38]
 005C455D    mov        edx,dword ptr [ebp-18]
 005C4560    mov        dword ptr [edx],eax
>005C4562    jmp        005C4579
 005C4564    mov        eax,dword ptr [ebp-18]
 005C4567    push       eax
 005C4568    lea        edx,[ebp-440]
 005C456E    mov        ecx,dword ptr [ebp-8]
 005C4571    mov        eax,dword ptr [ebp-10]
 005C4574    call       005C5BDC
 005C4579    xor        eax,eax
 005C457B    mov        dword ptr [ebp-8],eax
>005C457E    jmp        005C5766
 005C4583    mov        eax,dword ptr [ebp-4]
 005C4586    mov        eax,dword ptr [eax+1C]; TRCPURunner.?f1C:Pointer
 005C4589    mov        edx,dword ptr [ebp-4]
 005C458C    add        eax,dword ptr [edx+10]; TRCPURunner.?f10:dword
 005C458F    mov        eax,dword ptr [eax]
 005C4591    mov        dword ptr [ebp-10],eax
 005C4594    mov        eax,dword ptr [ebp-4]
 005C4597    add        dword ptr [eax+10],4; TRCPURunner.?f10:dword
 005C459B    lea        edx,[ebp-440]
 005C45A1    mov        ecx,dword ptr [ebp-8]
 005C45A4    mov        eax,dword ptr [ebp-10]
 005C45A7    call       dword ptr [ebp-38]
 005C45AA    xor        eax,eax
 005C45AC    mov        dword ptr [ebp-8],eax
>005C45AF    jmp        005C5766
 005C45B4    mov        eax,dword ptr [ebp-4]
 005C45B7    call       005C3A40
 005C45BC    mov        edi,eax
 005C45BE    mov        eax,dword ptr [ebp-4]
 005C45C1    call       005C3A40
 005C45C6    mov        ebx,eax
 005C45C8    mov        eax,dword ptr [ebp-4]
 005C45CB    lea        edx,[eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C45CE    mov        eax,dword ptr [ebp-4]
 005C45D1    call       005C3960
 005C45D6    mov        eax,dword ptr [ebp-4]
 005C45D9    lea        edx,[eax+10]; TRCPURunner.?f10:dword
 005C45DC    mov        eax,dword ptr [ebp-4]
 005C45DF    call       005C3960
 005C45E4    mov        eax,dword ptr [ebp-4]
 005C45E7    mov        eax,dword ptr [eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C45EA    mov        edx,edi
 005C45EC    call       005C8D40
 005C45F1    mov        edx,eax
 005C45F3    mov        eax,dword ptr [ebp-4]
 005C45F6    call       005C3C20
 005C45FB    mov        eax,dword ptr [ebp-4]
 005C45FE    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4601    jmp        005C5766
 005C4606    mov        eax,dword ptr [ebp-4]
 005C4609    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C460C    mov        eax,dword ptr [ebp-4]
 005C460F    call       005C3A40
 005C4614    mov        dword ptr [ebp-14],eax
 005C4617    mov        eax,dword ptr [ebp-4]
 005C461A    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C461E    jne        005C5766
 005C4624    mov        eax,dword ptr [ebp-14]
 005C4627    call       005A58B0
 005C462C    add        ebx,eax
 005C462E    mov        eax,dword ptr [ebp-4]
 005C4631    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4634    jmp        005C5766
 005C4639    mov        eax,dword ptr [ebp-4]
 005C463C    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C463F    mov        eax,dword ptr [ebp-4]
 005C4642    call       005C3A40
 005C4647    mov        dword ptr [ebp-14],eax
 005C464A    mov        eax,dword ptr [ebp-4]
 005C464D    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C4651    je         005C5766
 005C4657    mov        eax,dword ptr [ebp-14]
 005C465A    call       005A58B0
 005C465F    add        ebx,eax
 005C4661    mov        eax,dword ptr [ebp-4]
 005C4664    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4667    jmp        005C5766
 005C466C    mov        eax,dword ptr [ebp-4]
 005C466F    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C4672    mov        eax,dword ptr [ebp-4]
 005C4675    call       005C3A40
 005C467A    mov        dword ptr [ebp-14],eax
 005C467D    mov        eax,dword ptr [ebp-4]
 005C4680    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C4684    jge        005C5766
 005C468A    mov        eax,dword ptr [ebp-14]
 005C468D    call       005A58B0
 005C4692    add        ebx,eax
 005C4694    mov        eax,dword ptr [ebp-4]
 005C4697    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C469A    jmp        005C5766
 005C469F    mov        eax,dword ptr [ebp-4]
 005C46A2    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C46A5    mov        eax,dword ptr [ebp-4]
 005C46A8    call       005C3A40
 005C46AD    mov        dword ptr [ebp-14],eax
 005C46B0    mov        eax,dword ptr [ebp-4]
 005C46B3    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C46B7    jg         005C5766
 005C46BD    mov        eax,dword ptr [ebp-14]
 005C46C0    call       005A58B0
 005C46C5    add        ebx,eax
 005C46C7    mov        eax,dword ptr [ebp-4]
 005C46CA    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C46CD    jmp        005C5766
 005C46D2    mov        eax,dword ptr [ebp-4]
 005C46D5    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C46D8    mov        eax,dword ptr [ebp-4]
 005C46DB    call       005C3A40
 005C46E0    mov        dword ptr [ebp-14],eax
 005C46E3    mov        eax,dword ptr [ebp-4]
 005C46E6    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C46EA    jle        005C5766
 005C46F0    mov        eax,dword ptr [ebp-14]
 005C46F3    call       005A58B0
 005C46F8    add        ebx,eax
 005C46FA    mov        eax,dword ptr [ebp-4]
 005C46FD    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4700    jmp        005C5766
 005C4705    mov        eax,dword ptr [ebp-4]
 005C4708    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C470B    mov        eax,dword ptr [ebp-4]
 005C470E    call       005C3A40
 005C4713    mov        dword ptr [ebp-14],eax
 005C4716    mov        eax,dword ptr [ebp-4]
 005C4719    cmp        byte ptr [eax+24],0; TRCPURunner.?f24:byte
>005C471D    jl         005C5766
 005C4723    mov        eax,dword ptr [ebp-14]
 005C4726    call       005A58B0
 005C472B    add        ebx,eax
 005C472D    mov        eax,dword ptr [ebp-4]
 005C4730    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4733    jmp        005C5766
 005C4738    mov        eax,dword ptr [ebp-4]
 005C473B    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C473E    mov        eax,dword ptr [ebp-4]
 005C4741    call       005C3A40
 005C4746    mov        dword ptr [ebp-14],eax
 005C4749    mov        eax,dword ptr [ebp-14]
 005C474C    call       005A58B0
 005C4751    add        ebx,eax
 005C4753    mov        eax,dword ptr [ebp-4]
 005C4756    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C4759    jmp        005C5766
 005C475E    mov        eax,dword ptr [ebp-4]
 005C4761    call       005C3A40
 005C4766    mov        edx,eax
 005C4768    mov        eax,dword ptr [ebp-4]
 005C476B    mov        eax,dword ptr [eax+0C]; TRCPURunner.?fC:TRCPUModule
 005C476E    call       005C8D40
 005C4773    mov        edx,eax
 005C4775    mov        eax,dword ptr [ebp-4]
 005C4778    call       005C3C20
 005C477D    mov        eax,dword ptr [ebp-4]
 005C4780    call       005C3A40
 005C4785    mov        edx,dword ptr [ebp-4]
 005C4788    mov        dword ptr [edx+10],eax; TRCPURunner.?f10:dword
>005C478B    jmp        005C5766
 005C4790    mov        eax,dword ptr [ebp-4]
 005C4793    call       005C3A18
 005C4798    mov        dword ptr [ebp-1C],eax
 005C479B    mov        eax,dword ptr [ebp-4]
 005C479E    call       005C3A18
 005C47A3    mov        dword ptr [ebp-18],eax
 005C47A6    mov        eax,dword ptr [ebp-4]
 005C47A9    call       005C3BF8
 005C47AE    mov        edi,eax
 005C47B0    xor        eax,eax
 005C47B2    mov        al,bl
 005C47B4    add        eax,0FFFFFFDF
 005C47B7    cmp        eax,23
>005C47BA    ja         005C5766
 005C47C0    jmp        dword ptr [eax*4+5C47C7]
 005C47C0    dd         5C4857
 005C47C0    dd         5C486B
 005C47C0    dd         5C487F
 005C47C0    dd         5C4893
 005C47C0    dd         5C48A7
 005C47C0    dd         5C48BB
 005C47C0    dd         5C48CF
 005C47C0    dd         5C48E3
 005C47C0    dd         5C48F7
 005C47C0    dd         5C490B
 005C47C0    dd         5C491F
 005C47C0    dd         5C4933
 005C47C0    dd         5C4947
 005C47C0    dd         5C4960
 005C47C0    dd         5C4979
 005C47C0    dd         5C4992
 005C47C0    dd         5C49AB
 005C47C0    dd         5C49C4
 005C47C0    dd         5C49DD
 005C47C0    dd         5C49F6
 005C47C0    dd         5C4A0F
 005C47C0    dd         5C4A28
 005C47C0    dd         5C4A41
 005C47C0    dd         5C4A5A
 005C47C0    dd         5C4A73
 005C47C0    dd         5C4A87
 005C47C0    dd         5C4A9B
 005C47C0    dd         5C4AAF
 005C47C0    dd         5C4AC3
 005C47C0    dd         5C4AD7
 005C47C0    dd         5C4AEB
 005C47C0    dd         5C4B04
 005C47C0    dd         5C4B1D
 005C47C0    dd         5C4B36
 005C47C0    dd         5C4B4F
 005C47C0    dd         5C4B68
 005C4857    mov        eax,dword ptr [ebp-18]
 005C485A    mov        al,byte ptr [eax]
 005C485C    mov        edx,dword ptr [ebp-1C]
 005C485F    cmp        al,byte ptr [edx]
 005C4861    sete       al
 005C4864    mov        byte ptr [edi],al
>005C4866    jmp        005C5766
 005C486B    mov        eax,dword ptr [ebp-18]
 005C486E    mov        al,byte ptr [eax]
 005C4870    mov        edx,dword ptr [ebp-1C]
 005C4873    cmp        al,byte ptr [edx]
 005C4875    setne      al
 005C4878    mov        byte ptr [edi],al
>005C487A    jmp        005C5766
 005C487F    mov        eax,dword ptr [ebp-18]
 005C4882    mov        al,byte ptr [eax]
 005C4884    mov        edx,dword ptr [ebp-1C]
 005C4887    cmp        al,byte ptr [edx]
 005C4889    setb       al
 005C488C    mov        byte ptr [edi],al
>005C488E    jmp        005C5766
 005C4893    mov        eax,dword ptr [ebp-18]
 005C4896    mov        al,byte ptr [eax]
 005C4898    mov        edx,dword ptr [ebp-1C]
 005C489B    cmp        al,byte ptr [edx]
 005C489D    seta       al
 005C48A0    mov        byte ptr [edi],al
>005C48A2    jmp        005C5766
 005C48A7    mov        eax,dword ptr [ebp-18]
 005C48AA    mov        al,byte ptr [eax]
 005C48AC    mov        edx,dword ptr [ebp-1C]
 005C48AF    cmp        al,byte ptr [edx]
 005C48B1    setbe      al
 005C48B4    mov        byte ptr [edi],al
>005C48B6    jmp        005C5766
 005C48BB    mov        eax,dword ptr [ebp-18]
 005C48BE    mov        al,byte ptr [eax]
 005C48C0    mov        edx,dword ptr [ebp-1C]
 005C48C3    cmp        al,byte ptr [edx]
 005C48C5    setae      al
 005C48C8    mov        byte ptr [edi],al
>005C48CA    jmp        005C5766
 005C48CF    mov        eax,dword ptr [ebp-18]
 005C48D2    mov        eax,dword ptr [eax]
 005C48D4    mov        edx,dword ptr [ebp-1C]
 005C48D7    cmp        eax,dword ptr [edx]
 005C48D9    sete       al
 005C48DC    mov        byte ptr [edi],al
>005C48DE    jmp        005C5766
 005C48E3    mov        eax,dword ptr [ebp-18]
 005C48E6    mov        eax,dword ptr [eax]
 005C48E8    mov        edx,dword ptr [ebp-1C]
 005C48EB    cmp        eax,dword ptr [edx]
 005C48ED    setne      al
 005C48F0    mov        byte ptr [edi],al
>005C48F2    jmp        005C5766
 005C48F7    mov        eax,dword ptr [ebp-18]
 005C48FA    mov        eax,dword ptr [eax]
 005C48FC    mov        edx,dword ptr [ebp-1C]
 005C48FF    cmp        eax,dword ptr [edx]
 005C4901    setl       al
 005C4904    mov        byte ptr [edi],al
>005C4906    jmp        005C5766
 005C490B    mov        eax,dword ptr [ebp-18]
 005C490E    mov        eax,dword ptr [eax]
 005C4910    mov        edx,dword ptr [ebp-1C]
 005C4913    cmp        eax,dword ptr [edx]
 005C4915    setg       al
 005C4918    mov        byte ptr [edi],al
>005C491A    jmp        005C5766
 005C491F    mov        eax,dword ptr [ebp-18]
 005C4922    mov        eax,dword ptr [eax]
 005C4924    mov        edx,dword ptr [ebp-1C]
 005C4927    cmp        eax,dword ptr [edx]
 005C4929    setle      al
 005C492C    mov        byte ptr [edi],al
>005C492E    jmp        005C5766
 005C4933    mov        eax,dword ptr [ebp-18]
 005C4936    mov        eax,dword ptr [eax]
 005C4938    mov        edx,dword ptr [ebp-1C]
 005C493B    cmp        eax,dword ptr [edx]
 005C493D    setge      al
 005C4940    mov        byte ptr [edi],al
>005C4942    jmp        005C5766
 005C4947    mov        eax,dword ptr [ebp-18]
 005C494A    fld        tbyte ptr [eax]
 005C494C    mov        eax,dword ptr [ebp-1C]
 005C494F    fld        tbyte ptr [eax]
 005C4951    fcompp
 005C4953    fnstsw     al
 005C4955    sahf
 005C4956    sete       al
 005C4959    mov        byte ptr [edi],al
>005C495B    jmp        005C5766
 005C4960    mov        eax,dword ptr [ebp-18]
 005C4963    fld        tbyte ptr [eax]
 005C4965    mov        eax,dword ptr [ebp-1C]
 005C4968    fld        tbyte ptr [eax]
 005C496A    fcompp
 005C496C    fnstsw     al
 005C496E    sahf
 005C496F    setne      al
 005C4972    mov        byte ptr [edi],al
>005C4974    jmp        005C5766
 005C4979    mov        eax,dword ptr [ebp-18]
 005C497C    fld        tbyte ptr [eax]
 005C497E    mov        eax,dword ptr [ebp-1C]
 005C4981    fld        tbyte ptr [eax]
 005C4983    fcompp
 005C4985    fnstsw     al
 005C4987    sahf
 005C4988    seta       al
 005C498B    mov        byte ptr [edi],al
>005C498D    jmp        005C5766
 005C4992    mov        eax,dword ptr [ebp-18]
 005C4995    fld        tbyte ptr [eax]
 005C4997    mov        eax,dword ptr [ebp-1C]
 005C499A    fld        tbyte ptr [eax]
 005C499C    fcompp
 005C499E    fnstsw     al
 005C49A0    sahf
 005C49A1    setb       al
 005C49A4    mov        byte ptr [edi],al
>005C49A6    jmp        005C5766
 005C49AB    mov        eax,dword ptr [ebp-18]
 005C49AE    fld        tbyte ptr [eax]
 005C49B0    mov        eax,dword ptr [ebp-1C]
 005C49B3    fld        tbyte ptr [eax]
 005C49B5    fcompp
 005C49B7    fnstsw     al
 005C49B9    sahf
 005C49BA    setae      al
 005C49BD    mov        byte ptr [edi],al
>005C49BF    jmp        005C5766
 005C49C4    mov        eax,dword ptr [ebp-18]
 005C49C7    fld        tbyte ptr [eax]
 005C49C9    mov        eax,dword ptr [ebp-1C]
 005C49CC    fld        tbyte ptr [eax]
 005C49CE    fcompp
 005C49D0    fnstsw     al
 005C49D2    sahf
 005C49D3    setbe      al
 005C49D6    mov        byte ptr [edi],al
>005C49D8    jmp        005C5766
 005C49DD    mov        eax,dword ptr [ebp-18]
 005C49E0    fild       qword ptr [eax]
 005C49E2    mov        eax,dword ptr [ebp-1C]
 005C49E5    fild       qword ptr [eax]
 005C49E7    fcompp
 005C49E9    fnstsw     al
 005C49EB    sahf
 005C49EC    sete       al
 005C49EF    mov        byte ptr [edi],al
>005C49F1    jmp        005C5766
 005C49F6    mov        eax,dword ptr [ebp-18]
 005C49F9    fild       qword ptr [eax]
 005C49FB    mov        eax,dword ptr [ebp-1C]
 005C49FE    fild       qword ptr [eax]
 005C4A00    fcompp
 005C4A02    fnstsw     al
 005C4A04    sahf
 005C4A05    setne      al
 005C4A08    mov        byte ptr [edi],al
>005C4A0A    jmp        005C5766
 005C4A0F    mov        eax,dword ptr [ebp-18]
 005C4A12    fild       qword ptr [eax]
 005C4A14    mov        eax,dword ptr [ebp-1C]
 005C4A17    fild       qword ptr [eax]
 005C4A19    fcompp
 005C4A1B    fnstsw     al
 005C4A1D    sahf
 005C4A1E    seta       al
 005C4A21    mov        byte ptr [edi],al
>005C4A23    jmp        005C5766
 005C4A28    mov        eax,dword ptr [ebp-18]
 005C4A2B    fild       qword ptr [eax]
 005C4A2D    mov        eax,dword ptr [ebp-1C]
 005C4A30    fild       qword ptr [eax]
 005C4A32    fcompp
 005C4A34    fnstsw     al
 005C4A36    sahf
 005C4A37    setb       al
 005C4A3A    mov        byte ptr [edi],al
>005C4A3C    jmp        005C5766
 005C4A41    mov        eax,dword ptr [ebp-18]
 005C4A44    fild       qword ptr [eax]
 005C4A46    mov        eax,dword ptr [ebp-1C]
 005C4A49    fild       qword ptr [eax]
 005C4A4B    fcompp
 005C4A4D    fnstsw     al
 005C4A4F    sahf
 005C4A50    setae      al
 005C4A53    mov        byte ptr [edi],al
>005C4A55    jmp        005C5766
 005C4A5A    mov        eax,dword ptr [ebp-18]
 005C4A5D    fild       qword ptr [eax]
 005C4A5F    mov        eax,dword ptr [ebp-1C]
 005C4A62    fild       qword ptr [eax]
 005C4A64    fcompp
 005C4A66    fnstsw     al
 005C4A68    sahf
 005C4A69    setbe      al
 005C4A6C    mov        byte ptr [edi],al
>005C4A6E    jmp        005C5766
 005C4A73    mov        eax,dword ptr [ebp-18]
 005C4A76    mov        al,byte ptr [eax]
 005C4A78    mov        edx,dword ptr [ebp-1C]
 005C4A7B    cmp        al,byte ptr [edx]
 005C4A7D    sete       al
 005C4A80    mov        byte ptr [edi],al
>005C4A82    jmp        005C5766
 005C4A87    mov        eax,dword ptr [ebp-18]
 005C4A8A    mov        al,byte ptr [eax]
 005C4A8C    mov        edx,dword ptr [ebp-1C]
 005C4A8F    cmp        al,byte ptr [edx]
 005C4A91    setne      al
 005C4A94    mov        byte ptr [edi],al
>005C4A96    jmp        005C5766
 005C4A9B    mov        eax,dword ptr [ebp-18]
 005C4A9E    mov        al,byte ptr [eax]
 005C4AA0    mov        edx,dword ptr [ebp-1C]
 005C4AA3    cmp        al,byte ptr [edx]
 005C4AA5    setb       al
 005C4AA8    mov        byte ptr [edi],al
>005C4AAA    jmp        005C5766
 005C4AAF    mov        eax,dword ptr [ebp-18]
 005C4AB2    mov        al,byte ptr [eax]
 005C4AB4    mov        edx,dword ptr [ebp-1C]
 005C4AB7    cmp        al,byte ptr [edx]
 005C4AB9    seta       al
 005C4ABC    mov        byte ptr [edi],al
>005C4ABE    jmp        005C5766
 005C4AC3    mov        eax,dword ptr [ebp-18]
 005C4AC6    mov        al,byte ptr [eax]
 005C4AC8    mov        edx,dword ptr [ebp-1C]
 005C4ACB    cmp        al,byte ptr [edx]
 005C4ACD    setbe      al
 005C4AD0    mov        byte ptr [edi],al
>005C4AD2    jmp        005C5766
 005C4AD7    mov        eax,dword ptr [ebp-18]
 005C4ADA    mov        al,byte ptr [eax]
 005C4ADC    mov        edx,dword ptr [ebp-1C]
 005C4ADF    cmp        al,byte ptr [edx]
 005C4AE1    setae      al
 005C4AE4    mov        byte ptr [edi],al
>005C4AE6    jmp        005C5766
 005C4AEB    mov        eax,dword ptr [ebp-18]
 005C4AEE    mov        eax,dword ptr [eax]
 005C4AF0    mov        edx,dword ptr [ebp-1C]
 005C4AF3    mov        edx,dword ptr [edx]
 005C4AF5    call       @LStrCmp
 005C4AFA    sete       al
 005C4AFD    mov        byte ptr [edi],al
>005C4AFF    jmp        005C5766
 005C4B04    mov        eax,dword ptr [ebp-18]
 005C4B07    mov        eax,dword ptr [eax]
 005C4B09    mov        edx,dword ptr [ebp-1C]
 005C4B0C    mov        edx,dword ptr [edx]
 005C4B0E    call       @LStrCmp
 005C4B13    setne      al
 005C4B16    mov        byte ptr [edi],al
>005C4B18    jmp        005C5766
 005C4B1D    mov        eax,dword ptr [ebp-18]
 005C4B20    mov        eax,dword ptr [eax]
 005C4B22    mov        edx,dword ptr [ebp-1C]
 005C4B25    mov        edx,dword ptr [edx]
 005C4B27    call       @LStrCmp
 005C4B2C    setb       al
 005C4B2F    mov        byte ptr [edi],al
>005C4B31    jmp        005C5766
 005C4B36    mov        eax,dword ptr [ebp-18]
 005C4B39    mov        eax,dword ptr [eax]
 005C4B3B    mov        edx,dword ptr [ebp-1C]
 005C4B3E    mov        edx,dword ptr [edx]
 005C4B40    call       @LStrCmp
 005C4B45    seta       al
 005C4B48    mov        byte ptr [edi],al
>005C4B4A    jmp        005C5766
 005C4B4F    mov        eax,dword ptr [ebp-18]
 005C4B52    mov        eax,dword ptr [eax]
 005C4B54    mov        edx,dword ptr [ebp-1C]
 005C4B57    mov        edx,dword ptr [edx]
 005C4B59    call       @LStrCmp
 005C4B5E    setbe      al
 005C4B61    mov        byte ptr [edi],al
>005C4B63    jmp        005C5766
 005C4B68    mov        eax,dword ptr [ebp-18]
 005C4B6B    mov        eax,dword ptr [eax]
 005C4B6D    mov        edx,dword ptr [ebp-1C]
 005C4B70    mov        edx,dword ptr [edx]
 005C4B72    call       @LStrCmp
 005C4B77    setae      al
 005C4B7A    mov        byte ptr [edi],al
>005C4B7C    jmp        005C5766
 005C4B81    mov        eax,dword ptr [ebp-4]
 005C4B84    call       005C3A18
 005C4B89    mov        dword ptr [ebp-1C],eax
 005C4B8C    mov        eax,dword ptr [ebp-4]
 005C4B8F    call       005C3A18
 005C4B94    mov        dword ptr [ebp-18],eax
 005C4B97    mov        eax,dword ptr [ebp-4]
 005C4B9A    call       005C3BF8
 005C4B9F    mov        edi,eax
 005C4BA1    xor        eax,eax
 005C4BA3    mov        al,bl
 005C4BA5    add        eax,0FFFFFFBB
 005C4BA8    cmp        eax,14
>005C4BAB    ja         005C5766
 005C4BB1    jmp        dword ptr [eax*4+5C4BB8]
 005C4BB1    dd         5C4C0C
 005C4BB1    dd         5C4C29
 005C4BB1    dd         5C4C3A
 005C4BB1    dd         5C4C57
 005C4BB1    dd         5C4C68
 005C4BB1    dd         5C4C79
 005C4BB1    dd         5C4C8A
 005C4BB1    dd         5C4C9E
 005C4BB1    dd         5C4CB2
 005C4BB1    dd         5C4CC3
 005C4BB1    dd         5C4CD4
 005C4BB1    dd         5C4CE5
 005C4BB1    dd         5C4CF8
 005C4BB1    dd         5C4D0B
 005C4BB1    dd         5C4D1F
 005C4BB1    dd         5C4D33
 005C4BB1    dd         5C4D47
 005C4BB1    dd         5C4D5B
 005C4BB1    dd         5C4D6F
 005C4BB1    dd         5C4D83
 005C4BB1    dd         5C4D9D
 005C4C0C    mov        eax,dword ptr [ebp-18]
 005C4C0F    cmp        byte ptr [eax],0
>005C4C12    jne        005C4C20
 005C4C14    mov        eax,dword ptr [ebp-1C]
 005C4C17    cmp        byte ptr [eax],0
>005C4C1A    jne        005C4C20
 005C4C1C    xor        eax,eax
>005C4C1E    jmp        005C4C22
 005C4C20    mov        al,1
 005C4C22    mov        byte ptr [edi],al
>005C4C24    jmp        005C5766
 005C4C29    mov        eax,dword ptr [ebp-18]
 005C4C2C    mov        al,byte ptr [eax]
 005C4C2E    mov        edx,dword ptr [ebp-1C]
 005C4C31    xor        al,byte ptr [edx]
 005C4C33    mov        byte ptr [edi],al
>005C4C35    jmp        005C5766
 005C4C3A    mov        eax,dword ptr [ebp-18]
 005C4C3D    cmp        byte ptr [eax],0
>005C4C40    je         005C4C4A
 005C4C42    mov        eax,dword ptr [ebp-1C]
 005C4C45    cmp        byte ptr [eax],0
>005C4C48    jne        005C4C4E
 005C4C4A    xor        eax,eax
>005C4C4C    jmp        005C4C50
 005C4C4E    mov        al,1
 005C4C50    mov        byte ptr [edi],al
>005C4C52    jmp        005C5766
 005C4C57    mov        eax,dword ptr [ebp-18]
 005C4C5A    mov        eax,dword ptr [eax]
 005C4C5C    mov        edx,dword ptr [ebp-1C]
 005C4C5F    add        eax,dword ptr [edx]
 005C4C61    mov        dword ptr [edi],eax
>005C4C63    jmp        005C5766
 005C4C68    mov        eax,dword ptr [ebp-18]
 005C4C6B    mov        eax,dword ptr [eax]
 005C4C6D    mov        edx,dword ptr [ebp-1C]
 005C4C70    sub        eax,dword ptr [edx]
 005C4C72    mov        dword ptr [edi],eax
>005C4C74    jmp        005C5766
 005C4C79    mov        eax,dword ptr [ebp-18]
 005C4C7C    mov        eax,dword ptr [eax]
 005C4C7E    mov        edx,dword ptr [ebp-1C]
 005C4C81    imul       dword ptr [edx]
 005C4C83    mov        dword ptr [edi],eax
>005C4C85    jmp        005C5766
 005C4C8A    mov        eax,dword ptr [ebp-18]
 005C4C8D    mov        eax,dword ptr [eax]
 005C4C8F    mov        edx,dword ptr [ebp-1C]
 005C4C92    mov        ecx,dword ptr [edx]
 005C4C94    cdq
 005C4C95    idiv       eax,ecx
 005C4C97    mov        dword ptr [edi],eax
>005C4C99    jmp        005C5766
 005C4C9E    mov        eax,dword ptr [ebp-18]
 005C4CA1    mov        eax,dword ptr [eax]
 005C4CA3    mov        edx,dword ptr [ebp-1C]
 005C4CA6    mov        ecx,dword ptr [edx]
 005C4CA8    cdq
 005C4CA9    idiv       eax,ecx
 005C4CAB    mov        dword ptr [edi],edx
>005C4CAD    jmp        005C5766
 005C4CB2    mov        eax,dword ptr [ebp-18]
 005C4CB5    mov        eax,dword ptr [eax]
 005C4CB7    mov        edx,dword ptr [ebp-1C]
 005C4CBA    or         eax,dword ptr [edx]
 005C4CBC    mov        dword ptr [edi],eax
>005C4CBE    jmp        005C5766
 005C4CC3    mov        eax,dword ptr [ebp-18]
 005C4CC6    mov        eax,dword ptr [eax]
 005C4CC8    mov        edx,dword ptr [ebp-1C]
 005C4CCB    xor        eax,dword ptr [edx]
 005C4CCD    mov        dword ptr [edi],eax
>005C4CCF    jmp        005C5766
 005C4CD4    mov        eax,dword ptr [ebp-18]
 005C4CD7    mov        eax,dword ptr [eax]
 005C4CD9    mov        edx,dword ptr [ebp-1C]
 005C4CDC    and        eax,dword ptr [edx]
 005C4CDE    mov        dword ptr [edi],eax
>005C4CE0    jmp        005C5766
 005C4CE5    mov        eax,dword ptr [ebp-1C]
 005C4CE8    mov        ecx,dword ptr [eax]
 005C4CEA    mov        eax,dword ptr [ebp-18]
 005C4CED    mov        eax,dword ptr [eax]
 005C4CEF    shl        eax,cl
 005C4CF1    mov        dword ptr [edi],eax
>005C4CF3    jmp        005C5766
 005C4CF8    mov        eax,dword ptr [ebp-1C]
 005C4CFB    mov        ecx,dword ptr [eax]
 005C4CFD    mov        eax,dword ptr [ebp-18]
 005C4D00    mov        eax,dword ptr [eax]
 005C4D02    shr        eax,cl
 005C4D04    mov        dword ptr [edi],eax
>005C4D06    jmp        005C5766
 005C4D0B    mov        eax,dword ptr [ebp-18]
 005C4D0E    fld        tbyte ptr [eax]
 005C4D10    mov        eax,dword ptr [ebp-1C]
 005C4D13    fld        tbyte ptr [eax]
 005C4D15    faddp      st(1),st
 005C4D17    fstp       tbyte ptr [edi]
 005C4D19    wait
>005C4D1A    jmp        005C5766
 005C4D1F    mov        eax,dword ptr [ebp-18]
 005C4D22    fld        tbyte ptr [eax]
 005C4D24    mov        eax,dword ptr [ebp-1C]
 005C4D27    fld        tbyte ptr [eax]
 005C4D29    fsubp      st(1),st
 005C4D2B    fstp       tbyte ptr [edi]
 005C4D2D    wait
>005C4D2E    jmp        005C5766
 005C4D33    mov        eax,dword ptr [ebp-18]
 005C4D36    fld        tbyte ptr [eax]
 005C4D38    mov        eax,dword ptr [ebp-1C]
 005C4D3B    fld        tbyte ptr [eax]
 005C4D3D    fmulp      st(1),st
 005C4D3F    fstp       tbyte ptr [edi]
 005C4D41    wait
>005C4D42    jmp        005C5766
 005C4D47    mov        eax,dword ptr [ebp-18]
 005C4D4A    fld        tbyte ptr [eax]
 005C4D4C    mov        eax,dword ptr [ebp-1C]
 005C4D4F    fld        tbyte ptr [eax]
 005C4D51    fdivp      st(1),st
 005C4D53    fstp       tbyte ptr [edi]
 005C4D55    wait
>005C4D56    jmp        005C5766
 005C4D5B    mov        eax,dword ptr [ebp-18]
 005C4D5E    fild       qword ptr [eax]
 005C4D60    mov        eax,dword ptr [ebp-1C]
 005C4D63    fild       qword ptr [eax]
 005C4D65    faddp      st(1),st
 005C4D67    fistp      qword ptr [edi]
 005C4D69    wait
>005C4D6A    jmp        005C5766
 005C4D6F    mov        eax,dword ptr [ebp-18]
 005C4D72    fild       qword ptr [eax]
 005C4D74    mov        eax,dword ptr [ebp-1C]
 005C4D77    fild       qword ptr [eax]
 005C4D79    fsubp      st(1),st
 005C4D7B    fistp      qword ptr [edi]
 005C4D7D    wait
>005C4D7E    jmp        005C5766
 005C4D83    mov        eax,dword ptr [ebp-18]
 005C4D86    fild       qword ptr [eax]
 005C4D88    mov        eax,dword ptr [ebp-1C]
 005C4D8B    fild       qword ptr [eax]
 005C4D8D    fmulp      st(1),st
 005C4D8F    fdiv       dword ptr ds:[5C57D8]; 10000:Single
 005C4D95    fistp      qword ptr [edi]
 005C4D97    wait
>005C4D98    jmp        005C5766
 005C4D9D    mov        eax,dword ptr [ebp-18]
 005C4DA0    fild       qword ptr [eax]
 005C4DA2    mov        eax,dword ptr [ebp-1C]
 005C4DA5    fild       qword ptr [eax]
 005C4DA7    fdivp      st(1),st
 005C4DA9    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C4DAF    fistp      qword ptr [edi]
 005C4DB1    wait
>005C4DB2    jmp        005C5766
 005C4DB7    mov        eax,dword ptr [ebp-4]
 005C4DBA    call       005C3A18
 005C4DBF    mov        dword ptr [ebp-18],eax
 005C4DC2    mov        eax,dword ptr [ebp-4]
 005C4DC5    call       005C3BF8
 005C4DCA    mov        edi,eax
 005C4DCC    xor        eax,eax
 005C4DCE    mov        al,bl
 005C4DD0    add        eax,0FFFFFFA6
 005C4DD3    cmp        eax,4
>005C4DD6    ja         005C5766
 005C4DDC    jmp        dword ptr [eax*4+5C4DE3]
 005C4DDC    dd         5C4DF7
 005C4DDC    dd         5C4E02
 005C4DDC    dd         5C4E10
 005C4DDC    dd         5C4E1E
 005C4DDC    dd         5C4E2D
 005C4DF7    mov        al,byte ptr [edi]
 005C4DF9    xor        al,1
 005C4DFB    mov        byte ptr [edi],al
>005C4DFD    jmp        005C5766
 005C4E02    mov        eax,dword ptr [ebp-18]
 005C4E05    mov        eax,dword ptr [eax]
 005C4E07    not        eax
 005C4E09    mov        dword ptr [edi],eax
>005C4E0B    jmp        005C5766
 005C4E10    mov        eax,dword ptr [ebp-18]
 005C4E13    mov        eax,dword ptr [eax]
 005C4E15    neg        eax
 005C4E17    mov        dword ptr [edi],eax
>005C4E19    jmp        005C5766
 005C4E1E    mov        eax,dword ptr [ebp-18]
 005C4E21    fld        tbyte ptr [eax]
 005C4E23    fchs
 005C4E25    fstp       tbyte ptr [edi]
 005C4E27    wait
>005C4E28    jmp        005C5766
 005C4E2D    mov        eax,dword ptr [ebp-18]
 005C4E30    fild       qword ptr [eax]
 005C4E32    fchs
 005C4E34    fistp      qword ptr [edi]
 005C4E36    wait
>005C4E37    jmp        005C5766
 005C4E3C    mov        eax,dword ptr [ebp-4]
 005C4E3F    call       005C3A18
 005C4E44    mov        dword ptr [ebp-18],eax
 005C4E47    mov        eax,dword ptr [ebp-4]
 005C4E4A    call       005C3AFC
 005C4E4F    mov        dword ptr [ebp-1C],eax
 005C4E52    lea        edx,[ebp-1C]
 005C4E55    mov        eax,dword ptr [ebp-4]
 005C4E58    call       005C3960
 005C4E5D    xor        eax,eax
 005C4E5F    mov        al,bl
 005C4E61    add        eax,0FFFFFFA1
 005C4E64    cmp        eax,15
>005C4E67    ja         005C5766
 005C4E6D    jmp        dword ptr [eax*4+5C4E74]
 005C4E6D    dd         5C4ECC
 005C4E6D    dd         5C4EDC
 005C4E6D    dd         5C4EEC
 005C4E6D    dd         5C4EFC
 005C4E6D    dd         5C4F0C
 005C4E6D    dd         5C4F1B
 005C4E6D    dd         5C4F2A
 005C4E6D    dd         5C4F3B
 005C4E6D    dd         5C4F4C
 005C4E6D    dd         5C4F5C
 005C4E6D    dd         5C4F6C
 005C4E6D    dd         5C4F7C
 005C4E6D    dd         5C4F92
 005C4E6D    dd         5C4FAF
 005C4E6D    dd         5C4FCC
 005C4E6D    dd         5C4FDC
 005C4E6D    dd         5C4FF9
 005C4E6D    dd         5C5009
 005C4E6D    dd         5C5019
 005C4E6D    dd         5C502F
 005C4E6D    dd         5C503F
 005C4E6D    dd         5C504F
 005C4ECC    mov        eax,dword ptr [ebp-18]
 005C4ECF    movsx      eax,byte ptr [eax]
 005C4ED2    mov        edx,dword ptr [ebp-1C]
 005C4ED5    mov        dword ptr [edx],eax
>005C4ED7    jmp        005C5766
 005C4EDC    mov        eax,dword ptr [ebp-18]
 005C4EDF    movzx      eax,byte ptr [eax]
 005C4EE2    mov        edx,dword ptr [ebp-1C]
 005C4EE5    mov        dword ptr [edx],eax
>005C4EE7    jmp        005C5766
 005C4EEC    mov        eax,dword ptr [ebp-18]
 005C4EEF    movsx      eax,word ptr [eax]
 005C4EF2    mov        edx,dword ptr [ebp-1C]
 005C4EF5    mov        dword ptr [edx],eax
>005C4EF7    jmp        005C5766
 005C4EFC    mov        eax,dword ptr [ebp-18]
 005C4EFF    movzx      eax,word ptr [eax]
 005C4F02    mov        edx,dword ptr [ebp-1C]
 005C4F05    mov        dword ptr [edx],eax
>005C4F07    jmp        005C5766
 005C4F0C    mov        eax,dword ptr [ebp-18]
 005C4F0F    mov        al,byte ptr [eax]
 005C4F11    mov        edx,dword ptr [ebp-1C]
 005C4F14    mov        byte ptr [edx],al
>005C4F16    jmp        005C5766
 005C4F1B    mov        eax,dword ptr [ebp-18]
 005C4F1E    mov        al,byte ptr [eax]
 005C4F20    mov        edx,dword ptr [ebp-1C]
 005C4F23    mov        byte ptr [edx],al
>005C4F25    jmp        005C5766
 005C4F2A    mov        eax,dword ptr [ebp-18]
 005C4F2D    mov        ax,word ptr [eax]
 005C4F30    mov        edx,dword ptr [ebp-1C]
 005C4F33    mov        word ptr [edx],ax
>005C4F36    jmp        005C5766
 005C4F3B    mov        eax,dword ptr [ebp-18]
 005C4F3E    mov        ax,word ptr [eax]
 005C4F41    mov        edx,dword ptr [ebp-1C]
 005C4F44    mov        word ptr [edx],ax
>005C4F47    jmp        005C5766
 005C4F4C    mov        eax,dword ptr [ebp-18]
 005C4F4F    fild       dword ptr [eax]
 005C4F51    mov        eax,dword ptr [ebp-1C]
 005C4F54    fstp       dword ptr [eax]
 005C4F56    wait
>005C4F57    jmp        005C5766
 005C4F5C    mov        eax,dword ptr [ebp-18]
 005C4F5F    fild       dword ptr [eax]
 005C4F61    mov        eax,dword ptr [ebp-1C]
 005C4F64    fstp       qword ptr [eax]
 005C4F66    wait
>005C4F67    jmp        005C5766
 005C4F6C    mov        eax,dword ptr [ebp-18]
 005C4F6F    fild       dword ptr [eax]
 005C4F71    mov        eax,dword ptr [ebp-1C]
 005C4F74    fstp       tbyte ptr [eax]
 005C4F76    wait
>005C4F77    jmp        005C5766
 005C4F7C    mov        eax,dword ptr [ebp-18]
 005C4F7F    fild       dword ptr [eax]
 005C4F81    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C4F87    mov        eax,dword ptr [ebp-1C]
 005C4F8A    fistp      qword ptr [eax]
 005C4F8C    wait
>005C4F8D    jmp        005C5766
 005C4F92    mov        eax,dword ptr [ebp-18]
 005C4F95    movsx      eax,byte ptr [eax]
 005C4F98    mov        dword ptr [ebp-444],eax
 005C4F9E    fild       dword ptr [ebp-444]
 005C4FA4    mov        eax,dword ptr [ebp-1C]
 005C4FA7    fstp       tbyte ptr [eax]
 005C4FA9    wait
>005C4FAA    jmp        005C5766
 005C4FAF    mov        eax,dword ptr [ebp-18]
 005C4FB2    movzx      eax,byte ptr [eax]
 005C4FB5    mov        dword ptr [ebp-444],eax
 005C4FBB    fild       dword ptr [ebp-444]
 005C4FC1    mov        eax,dword ptr [ebp-1C]
 005C4FC4    fstp       tbyte ptr [eax]
 005C4FC6    wait
>005C4FC7    jmp        005C5766
 005C4FCC    mov        eax,dword ptr [ebp-18]
 005C4FCF    fild       word ptr [eax]
 005C4FD1    mov        eax,dword ptr [ebp-1C]
 005C4FD4    fstp       tbyte ptr [eax]
 005C4FD6    wait
>005C4FD7    jmp        005C5766
 005C4FDC    mov        eax,dword ptr [ebp-18]
 005C4FDF    movzx      eax,word ptr [eax]
 005C4FE2    mov        dword ptr [ebp-444],eax
 005C4FE8    fild       dword ptr [ebp-444]
 005C4FEE    mov        eax,dword ptr [ebp-1C]
 005C4FF1    fstp       tbyte ptr [eax]
 005C4FF3    wait
>005C4FF4    jmp        005C5766
 005C4FF9    mov        eax,dword ptr [ebp-18]
 005C4FFC    fld        dword ptr [eax]
 005C4FFE    mov        eax,dword ptr [ebp-1C]
 005C5001    fstp       tbyte ptr [eax]
 005C5003    wait
>005C5004    jmp        005C5766
 005C5009    mov        eax,dword ptr [ebp-18]
 005C500C    fld        qword ptr [eax]
 005C500E    mov        eax,dword ptr [ebp-1C]
 005C5011    fstp       tbyte ptr [eax]
 005C5013    wait
>005C5014    jmp        005C5766
 005C5019    mov        eax,dword ptr [ebp-18]
 005C501C    fild       qword ptr [eax]
 005C501E    fdiv       dword ptr ds:[5C57D8]; 10000:Single
 005C5024    mov        eax,dword ptr [ebp-1C]
 005C5027    fstp       tbyte ptr [eax]
 005C5029    wait
>005C502A    jmp        005C5766
 005C502F    mov        eax,dword ptr [ebp-18]
 005C5032    fld        tbyte ptr [eax]
 005C5034    mov        eax,dword ptr [ebp-1C]
 005C5037    fstp       dword ptr [eax]
 005C5039    wait
>005C503A    jmp        005C5766
 005C503F    mov        eax,dword ptr [ebp-18]
 005C5042    fld        tbyte ptr [eax]
 005C5044    mov        eax,dword ptr [ebp-1C]
 005C5047    fstp       qword ptr [eax]
 005C5049    wait
>005C504A    jmp        005C5766
 005C504F    mov        eax,dword ptr [ebp-18]
 005C5052    fld        tbyte ptr [eax]
 005C5054    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C505A    mov        eax,dword ptr [ebp-1C]
 005C505D    fistp      qword ptr [eax]
 005C505F    wait
>005C5060    jmp        005C5766
 005C5065    mov        eax,dword ptr [ebp-4]
 005C5068    call       005C3AFC
 005C506D    mov        dword ptr [ebp-18],eax
 005C5070    mov        eax,dword ptr [ebp-4]
 005C5073    call       005C3AFC
 005C5078    mov        dword ptr [ebp-1C],eax
 005C507B    mov        eax,dword ptr [ebp-1C]
 005C507E    mov        edx,dword ptr ds:[4010F8]; String
 005C5084    call       @Initialize
 005C5089    mov        eax,dword ptr [ebp-18]
 005C508C    mov        edx,dword ptr [eax]
 005C508E    mov        eax,dword ptr [ebp-1C]
 005C5091    mov        ecx,1
 005C5096    call       @LStrFromPCharLen
>005C509B    jmp        005C5766
 005C50A0    mov        eax,dword ptr [ebp-4]
 005C50A3    call       005C3A18
 005C50A8    mov        dword ptr [ebp-18],eax
 005C50AB    mov        eax,dword ptr [ebp-4]
 005C50AE    call       005C3A30
 005C50B3    mov        ebx,eax
 005C50B5    mov        eax,dword ptr [ebp-4]
 005C50B8    call       005C3A30
 005C50BD    mov        byte ptr [ebp-31],al
 005C50C0    mov        eax,dword ptr [ebp-4]
 005C50C3    call       005C3AFC
 005C50C8    mov        dword ptr [ebp-1C],eax
 005C50CB    lea        edx,[ebp-1C]
 005C50CE    mov        eax,dword ptr [ebp-4]
 005C50D1    call       005C3960
 005C50D6    xor        eax,eax
 005C50D8    mov        dword ptr [ebp-20],eax
 005C50DB    xor        eax,eax
 005C50DD    mov        dword ptr [ebp-30],eax
 005C50E0    mov        dword ptr [ebp-2C],eax
 005C50E3    mov        word ptr [ebp-28],ax
 005C50E7    xor        eax,eax
 005C50E9    mov        al,bl
 005C50EB    add        eax,0FFFFFFA1
 005C50EE    cmp        eax,12
>005C50F1    ja         005C51FC
 005C50F7    jmp        dword ptr [eax*4+5C50FE]
 005C50F7    dd         5C514A
 005C50F7    dd         5C5158
 005C50F7    dd         5C5166
 005C50F7    dd         5C5174
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C51FC
 005C50F7    dd         5C5182
 005C50F7    dd         5C519A
 005C50F7    dd         5C51B2
 005C50F7    dd         5C51BD
 005C50F7    dd         5C51D5
 005C50F7    dd         5C51E0
 005C50F7    dd         5C51EB
 005C514A    mov        eax,dword ptr [ebp-18]
 005C514D    movsx      eax,byte ptr [eax]
 005C5150    mov        dword ptr [ebp-20],eax
>005C5153    jmp        005C520D
 005C5158    mov        eax,dword ptr [ebp-18]
 005C515B    movzx      eax,byte ptr [eax]
 005C515E    mov        dword ptr [ebp-20],eax
>005C5161    jmp        005C520D
 005C5166    mov        eax,dword ptr [ebp-18]
 005C5169    movsx      eax,word ptr [eax]
 005C516C    mov        dword ptr [ebp-20],eax
>005C516F    jmp        005C520D
 005C5174    mov        eax,dword ptr [ebp-18]
 005C5177    movzx      eax,word ptr [eax]
 005C517A    mov        dword ptr [ebp-20],eax
>005C517D    jmp        005C520D
 005C5182    mov        eax,dword ptr [ebp-18]
 005C5185    movsx      eax,byte ptr [eax]
 005C5188    mov        dword ptr [ebp-444],eax
 005C518E    fild       dword ptr [ebp-444]
 005C5194    fstp       tbyte ptr [ebp-30]
 005C5197    wait
>005C5198    jmp        005C520D
 005C519A    mov        eax,dword ptr [ebp-18]
 005C519D    movzx      eax,byte ptr [eax]
 005C51A0    mov        dword ptr [ebp-444],eax
 005C51A6    fild       dword ptr [ebp-444]
 005C51AC    fstp       tbyte ptr [ebp-30]
 005C51AF    wait
>005C51B0    jmp        005C520D
 005C51B2    mov        eax,dword ptr [ebp-18]
 005C51B5    fild       word ptr [eax]
 005C51B7    fstp       tbyte ptr [ebp-30]
 005C51BA    wait
>005C51BB    jmp        005C520D
 005C51BD    mov        eax,dword ptr [ebp-18]
 005C51C0    movzx      eax,word ptr [eax]
 005C51C3    mov        dword ptr [ebp-444],eax
 005C51C9    fild       dword ptr [ebp-444]
 005C51CF    fstp       tbyte ptr [ebp-30]
 005C51D2    wait
>005C51D3    jmp        005C520D
 005C51D5    mov        eax,dword ptr [ebp-18]
 005C51D8    fld        dword ptr [eax]
 005C51DA    fstp       tbyte ptr [ebp-30]
 005C51DD    wait
>005C51DE    jmp        005C520D
 005C51E0    mov        eax,dword ptr [ebp-18]
 005C51E3    fld        qword ptr [eax]
 005C51E5    fstp       tbyte ptr [ebp-30]
 005C51E8    wait
>005C51E9    jmp        005C520D
 005C51EB    mov        eax,dword ptr [ebp-18]
 005C51EE    fild       qword ptr [eax]
 005C51F0    fdiv       dword ptr ds:[5C57D8]; 10000:Single
 005C51F6    fstp       tbyte ptr [ebp-30]
 005C51F9    wait
>005C51FA    jmp        005C520D
 005C51FC    xor        eax,eax
 005C51FE    mov        dword ptr [ebp-20],eax
 005C5201    xor        eax,eax
 005C5203    mov        dword ptr [ebp-30],eax
 005C5206    mov        dword ptr [ebp-2C],eax
 005C5209    mov        word ptr [ebp-28],ax
 005C520D    xor        eax,eax
 005C520F    mov        al,byte ptr [ebp-31]
 005C5212    add        eax,0FFFFFF9D
 005C5215    cmp        eax,11
>005C5218    ja         005C5766
 005C521E    jmp        dword ptr [eax*4+5C5225]
 005C521E    dd         5C526D
 005C521E    dd         5C527A
 005C521E    dd         5C5287
 005C521E    dd         5C5296
 005C521E    dd         5C52A5
 005C521E    dd         5C52B3
 005C521E    dd         5C5766
 005C521E    dd         5C52C1
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C5766
 005C521E    dd         5C52D5
 005C521E    dd         5C52E3
 005C521E    dd         5C52F1
 005C526D    mov        al,byte ptr [ebp-20]
 005C5270    mov        edx,dword ptr [ebp-1C]
 005C5273    mov        byte ptr [edx],al
>005C5275    jmp        005C5766
 005C527A    mov        al,byte ptr [ebp-20]
 005C527D    mov        edx,dword ptr [ebp-1C]
 005C5280    mov        byte ptr [edx],al
>005C5282    jmp        005C5766
 005C5287    mov        eax,dword ptr [ebp-1C]
 005C528A    mov        dx,word ptr [ebp-20]
 005C528E    mov        word ptr [eax],dx
>005C5291    jmp        005C5766
 005C5296    mov        eax,dword ptr [ebp-1C]
 005C5299    mov        dx,word ptr [ebp-20]
 005C529D    mov        word ptr [eax],dx
>005C52A0    jmp        005C5766
 005C52A5    fild       dword ptr [ebp-20]
 005C52A8    mov        eax,dword ptr [ebp-1C]
 005C52AB    fstp       dword ptr [eax]
 005C52AD    wait
>005C52AE    jmp        005C5766
 005C52B3    fild       dword ptr [ebp-20]
 005C52B6    mov        eax,dword ptr [ebp-1C]
 005C52B9    fstp       qword ptr [eax]
 005C52BB    wait
>005C52BC    jmp        005C5766
 005C52C1    fild       dword ptr [ebp-20]
 005C52C4    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C52CA    mov        eax,dword ptr [ebp-1C]
 005C52CD    fistp      qword ptr [eax]
 005C52CF    wait
>005C52D0    jmp        005C5766
 005C52D5    fld        tbyte ptr [ebp-30]
 005C52D8    mov        eax,dword ptr [ebp-1C]
 005C52DB    fstp       dword ptr [eax]
 005C52DD    wait
>005C52DE    jmp        005C5766
 005C52E3    fld        tbyte ptr [ebp-30]
 005C52E6    mov        eax,dword ptr [ebp-1C]
 005C52E9    fstp       qword ptr [eax]
 005C52EB    wait
>005C52EC    jmp        005C5766
 005C52F1    fld        tbyte ptr [ebp-30]
 005C52F4    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C52FA    mov        eax,dword ptr [ebp-1C]
 005C52FD    fistp      qword ptr [eax]
 005C52FF    wait
>005C5300    jmp        005C5766
 005C5305    mov        eax,ebx
 005C5307    sub        al,79
>005C5309    je         005C530F
 005C530B    sub        al,3
>005C530D    jne        005C5327
 005C530F    mov        eax,dword ptr [ebp-4]
 005C5312    call       005C3A18
 005C5317    mov        dword ptr [ebp-18],eax
 005C531A    mov        eax,dword ptr [ebp-4]
 005C531D    call       005C3A18
 005C5322    mov        dword ptr [ebp-1C],eax
>005C5325    jmp        005C533D
 005C5327    mov        eax,dword ptr [ebp-4]
 005C532A    call       005C3A18
 005C532F    mov        dword ptr [ebp-1C],eax
 005C5332    mov        eax,dword ptr [ebp-4]
 005C5335    call       005C3A18
 005C533A    mov        dword ptr [ebp-18],eax
 005C533D    cmp        bl,79
>005C5340    ja         005C535B
 005C5342    mov        eax,dword ptr [ebp-4]
 005C5345    call       005C3A40
 005C534A    mov        edi,eax
 005C534C    mov        edx,dword ptr [ebp-18]
 005C534F    mov        eax,dword ptr [ebp-1C]
 005C5352    mov        ecx,edi
 005C5354    call       Move
>005C5359    jmp        005C5373
 005C535B    lea        eax,[ebp-40]
 005C535E    mov        edx,dword ptr [ebp-1C]
 005C5361    mov        edx,dword ptr [edx]
 005C5363    call       @LStrLAsg
 005C5368    mov        eax,dword ptr [ebp-18]
 005C536B    mov        edx,dword ptr [ebp-40]
 005C536E    call       @LStrAsg
 005C5373    sub        bl,77
>005C5376    je         005C5766
 005C537C    sub        bl,3
>005C537F    je         005C5766
 005C5385    lea        edx,[ebp-18]
 005C5388    mov        eax,dword ptr [ebp-4]
 005C538B    call       005C3960
>005C5390    jmp        005C5766
 005C5395    mov        eax,dword ptr [ebp-4]
 005C5398    call       005C3A18
 005C539D    mov        dword ptr [ebp-1C],eax
 005C53A0    mov        eax,dword ptr [ebp-4]
 005C53A3    call       005C3A18
 005C53A8    mov        dword ptr [ebp-18],eax
 005C53AB    xor        eax,eax
 005C53AD    mov        al,bl
 005C53AF    add        eax,0FFFFFF83
 005C53B2    cmp        eax,0A
>005C53B5    ja         005C5766
 005C53BB    jmp        dword ptr [eax*4+5C53C2]
 005C53BB    dd         5C53EE
 005C53BB    dd         5C53FD
 005C53BB    dd         5C540C
 005C53BB    dd         5C5420
 005C53BB    dd         5C5437
 005C53BB    dd         5C544E
 005C53BB    dd         5C5465
 005C53BB    dd         5C547C
 005C53BB    dd         5C5493
 005C53BB    dd         5C54AA
 005C53BB    dd         5C54C7
 005C53EE    mov        eax,dword ptr [ebp-1C]
 005C53F1    mov        eax,dword ptr [eax]
 005C53F3    mov        edx,dword ptr [ebp-18]
 005C53F6    add        dword ptr [edx],eax
>005C53F8    jmp        005C5766
 005C53FD    mov        eax,dword ptr [ebp-1C]
 005C5400    mov        eax,dword ptr [eax]
 005C5402    mov        edx,dword ptr [ebp-18]
 005C5405    sub        dword ptr [edx],eax
>005C5407    jmp        005C5766
 005C540C    mov        eax,dword ptr [ebp-18]
 005C540F    mov        eax,dword ptr [eax]
 005C5411    mov        edx,dword ptr [ebp-1C]
 005C5414    imul       dword ptr [edx]
 005C5416    mov        edx,dword ptr [ebp-18]
 005C5419    mov        dword ptr [edx],eax
>005C541B    jmp        005C5766
 005C5420    mov        eax,dword ptr [ebp-18]
 005C5423    fld        tbyte ptr [eax]
 005C5425    mov        eax,dword ptr [ebp-1C]
 005C5428    fld        tbyte ptr [eax]
 005C542A    faddp      st(1),st
 005C542C    mov        eax,dword ptr [ebp-18]
 005C542F    fstp       tbyte ptr [eax]
 005C5431    wait
>005C5432    jmp        005C5766
 005C5437    mov        eax,dword ptr [ebp-18]
 005C543A    fld        tbyte ptr [eax]
 005C543C    mov        eax,dword ptr [ebp-1C]
 005C543F    fld        tbyte ptr [eax]
 005C5441    fsubp      st(1),st
 005C5443    mov        eax,dword ptr [ebp-18]
 005C5446    fstp       tbyte ptr [eax]
 005C5448    wait
>005C5449    jmp        005C5766
 005C544E    mov        eax,dword ptr [ebp-18]
 005C5451    fld        tbyte ptr [eax]
 005C5453    mov        eax,dword ptr [ebp-1C]
 005C5456    fld        tbyte ptr [eax]
 005C5458    fmulp      st(1),st
 005C545A    mov        eax,dword ptr [ebp-18]
 005C545D    fstp       tbyte ptr [eax]
 005C545F    wait
>005C5460    jmp        005C5766
 005C5465    mov        eax,dword ptr [ebp-18]
 005C5468    fld        tbyte ptr [eax]
 005C546A    mov        eax,dword ptr [ebp-1C]
 005C546D    fld        tbyte ptr [eax]
 005C546F    fdivp      st(1),st
 005C5471    mov        eax,dword ptr [ebp-18]
 005C5474    fstp       tbyte ptr [eax]
 005C5476    wait
>005C5477    jmp        005C5766
 005C547C    mov        eax,dword ptr [ebp-18]
 005C547F    fild       qword ptr [eax]
 005C5481    mov        eax,dword ptr [ebp-1C]
 005C5484    fild       qword ptr [eax]
 005C5486    faddp      st(1),st
 005C5488    mov        eax,dword ptr [ebp-18]
 005C548B    fistp      qword ptr [eax]
 005C548D    wait
>005C548E    jmp        005C5766
 005C5493    mov        eax,dword ptr [ebp-18]
 005C5496    fild       qword ptr [eax]
 005C5498    mov        eax,dword ptr [ebp-1C]
 005C549B    fild       qword ptr [eax]
 005C549D    fsubp      st(1),st
 005C549F    mov        eax,dword ptr [ebp-18]
 005C54A2    fistp      qword ptr [eax]
 005C54A4    wait
>005C54A5    jmp        005C5766
 005C54AA    mov        eax,dword ptr [ebp-18]
 005C54AD    fild       qword ptr [eax]
 005C54AF    mov        eax,dword ptr [ebp-1C]
 005C54B2    fild       qword ptr [eax]
 005C54B4    fmulp      st(1),st
 005C54B6    fdiv       dword ptr ds:[5C57D8]; 10000:Single
 005C54BC    mov        eax,dword ptr [ebp-18]
 005C54BF    fistp      qword ptr [eax]
 005C54C1    wait
>005C54C2    jmp        005C5766
 005C54C7    mov        eax,dword ptr [ebp-18]
 005C54CA    fild       qword ptr [eax]
 005C54CC    mov        eax,dword ptr [ebp-1C]
 005C54CF    fild       qword ptr [eax]
 005C54D1    fdivp      st(1),st
 005C54D3    fmul       dword ptr ds:[5C57D8]; 10000:Single
 005C54D9    mov        eax,dword ptr [ebp-18]
 005C54DC    fistp      qword ptr [eax]
 005C54DE    wait
>005C54DF    jmp        005C5766
 005C54E4    mov        eax,dword ptr [ebp-4]
 005C54E7    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C54EA    mov        eax,dword ptr [ebp-4]
 005C54ED    call       005C3A40
 005C54F2    mov        dword ptr [ebp-14],eax
 005C54F5    mov        eax,dword ptr [ebp-4]
 005C54F8    call       005C3A18
 005C54FD    mov        dword ptr [ebp-18],eax
 005C5500    mov        eax,dword ptr [ebp-4]
 005C5503    call       005C3A18
 005C5508    mov        edi,eax
 005C550A    cmp        byte ptr [ebp-39],0
>005C550E    je         005C553C
 005C5510    mov        byte ptr [ebp-39],0
 005C5514    mov        eax,dword ptr [ebp-18]
 005C5517    mov        eax,dword ptr [eax]
 005C5519    cmp        eax,dword ptr [edi]
>005C551B    jl         005C5532
 005C551D    mov        eax,dword ptr [ebp-14]
 005C5520    call       005A58B0
 005C5525    add        ebx,eax
 005C5527    mov        eax,dword ptr [ebp-4]
 005C552A    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C552D    jmp        005C5766
 005C5532    mov        eax,dword ptr [ebp-18]
 005C5535    inc        dword ptr [eax]
>005C5537    jmp        005C5766
 005C553C    mov        eax,dword ptr [ebp-4]
 005C553F    call       005C3A18
 005C5544    mov        dword ptr [ebp-1C],eax
 005C5547    mov        eax,dword ptr [ebp-1C]
 005C554A    mov        eax,dword ptr [eax]
 005C554C    mov        edx,dword ptr [ebp-18]
 005C554F    mov        dword ptr [edx],eax
 005C5551    cmp        eax,dword ptr [edi]
>005C5553    jle        005C5766
 005C5559    mov        eax,dword ptr [ebp-14]
 005C555C    call       005A58B0
 005C5561    add        ebx,eax
 005C5563    mov        eax,dword ptr [ebp-4]
 005C5566    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C5569    jmp        005C5766
 005C556E    mov        eax,dword ptr [ebp-4]
 005C5571    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C5574    mov        eax,dword ptr [ebp-4]
 005C5577    call       005C3A40
 005C557C    mov        dword ptr [ebp-14],eax
 005C557F    mov        eax,dword ptr [ebp-4]
 005C5582    call       005C3A18
 005C5587    mov        dword ptr [ebp-18],eax
 005C558A    mov        eax,dword ptr [ebp-4]
 005C558D    call       005C3A18
 005C5592    mov        edi,eax
 005C5594    cmp        byte ptr [ebp-39],0
>005C5598    je         005C55C6
 005C559A    mov        byte ptr [ebp-39],0
 005C559E    mov        eax,dword ptr [ebp-18]
 005C55A1    mov        eax,dword ptr [eax]
 005C55A3    cmp        eax,dword ptr [edi]
>005C55A5    jg         005C55BC
 005C55A7    mov        eax,dword ptr [ebp-14]
 005C55AA    call       005A58B0
 005C55AF    add        ebx,eax
 005C55B1    mov        eax,dword ptr [ebp-4]
 005C55B4    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C55B7    jmp        005C5766
 005C55BC    mov        eax,dword ptr [ebp-18]
 005C55BF    dec        dword ptr [eax]
>005C55C1    jmp        005C5766
 005C55C6    mov        eax,dword ptr [ebp-4]
 005C55C9    call       005C3A18
 005C55CE    mov        dword ptr [ebp-1C],eax
 005C55D1    mov        eax,dword ptr [ebp-1C]
 005C55D4    mov        eax,dword ptr [eax]
 005C55D6    mov        edx,dword ptr [ebp-18]
 005C55D9    mov        dword ptr [edx],eax
 005C55DB    cmp        eax,dword ptr [edi]
>005C55DD    jge        005C5766
 005C55E3    mov        eax,dword ptr [ebp-14]
 005C55E6    call       005A58B0
 005C55EB    add        ebx,eax
 005C55ED    mov        eax,dword ptr [ebp-4]
 005C55F0    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C55F3    jmp        005C5766
 005C55F8    mov        byte ptr [ebp-39],1
 005C55FC    mov        eax,dword ptr [ebp-4]
 005C55FF    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C5602    mov        eax,dword ptr [ebp-4]
 005C5605    call       005C3A40
 005C560A    call       005A58B0
 005C560F    add        ebx,eax
 005C5611    mov        eax,dword ptr [ebp-4]
 005C5614    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C5617    jmp        005C5766
 005C561C    mov        eax,dword ptr [ebp-4]
 005C561F    call       005C3A18
 005C5624    mov        dword ptr [ebp-18],eax
 005C5627    mov        eax,dword ptr [ebp-4]
 005C562A    call       005C3A18
 005C562F    mov        dword ptr [ebp-20],eax
 005C5632    inc        dword ptr [ebp-20]
 005C5635    mov        eax,dword ptr [ebp-4]
 005C5638    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C563B    mov        eax,dword ptr [ebp-4]
 005C563E    call       005C3A40
 005C5643    mov        dword ptr [ebp-14],eax
 005C5646    mov        eax,dword ptr [ebp-18]
 005C5649    mov        eax,dword ptr [eax]
 005C564B    cmp        eax,dword ptr [ebp-20]
>005C564E    jl         005C5660
 005C5650    lea        edx,[ebp-20]
 005C5653    mov        eax,dword ptr [ebp-4]
 005C5656    call       005C3960
>005C565B    jmp        005C5766
 005C5660    mov        eax,dword ptr [ebp-14]
 005C5663    call       005A58B0
 005C5668    add        ebx,eax
 005C566A    mov        eax,dword ptr [ebp-4]
 005C566D    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C5670    jmp        005C5766
 005C5675    mov        eax,dword ptr [ebp-4]
 005C5678    call       005C3A18
 005C567D    mov        dword ptr [ebp-18],eax
 005C5680    mov        eax,dword ptr [ebp-4]
 005C5683    mov        ebx,dword ptr [eax+10]; TRCPURunner.?f10:dword
 005C5686    mov        eax,dword ptr [ebp-4]
 005C5689    call       005C3A40
 005C568E    mov        dword ptr [ebp-14],eax
 005C5691    mov        eax,dword ptr [ebp-18]
 005C5694    cmp        byte ptr [eax],0
>005C5697    jne        005C5766
 005C569D    mov        eax,dword ptr [ebp-14]
 005C56A0    call       005A58B0
 005C56A5    add        ebx,eax
 005C56A7    mov        eax,dword ptr [ebp-4]
 005C56AA    mov        dword ptr [eax+10],ebx; TRCPURunner.?f10:dword
>005C56AD    jmp        005C5766
 005C56B2    mov        byte ptr [ebp-9],1
>005C56B6    jmp        005C5766
 005C56BB    mov        eax,dword ptr [ebp-4]
 005C56BE    call       005C3A18
 005C56C3    mov        dword ptr [ebp-1C],eax
 005C56C6    mov        eax,dword ptr [ebp-4]
 005C56C9    call       005C3A18
 005C56CE    mov        dword ptr [ebp-18],eax
 005C56D1    mov        eax,dword ptr [ebp-4]
 005C56D4    call       005C3BF8
 005C56D9    mov        edi,eax
 005C56DB    cmp        edi,dword ptr [ebp-18]
>005C56DE    je         005C56F2
 005C56E0    cmp        edi,dword ptr [ebp-1C]
>005C56E3    je         005C56F2
 005C56E5    mov        eax,edi
 005C56E7    mov        edx,dword ptr ds:[4010F8]; String
 005C56ED    call       @Initialize
 005C56F2    mov        eax,dword ptr [ebp-1C]
 005C56F5    mov        ecx,dword ptr [eax]
 005C56F7    mov        eax,dword ptr [ebp-18]
 005C56FA    mov        edx,dword ptr [eax]
 005C56FC    mov        eax,edi
 005C56FE    call       @LStrCat3
>005C5703    jmp        005C5766
 005C5705    lea        eax,[ebp-44C]
 005C570B    push       eax
 005C570C    lea        ecx,[ebp-458]
 005C5712    xor        eax,eax
 005C5714    mov        al,bl
 005C5716    mov        edx,2
 005C571B    call       IntToHex
 005C5720    mov        eax,dword ptr [ebp-458]
 005C5726    mov        dword ptr [ebp-454],eax
 005C572C    mov        byte ptr [ebp-450],0B
 005C5733    lea        edx,[ebp-454]
 005C5739    xor        ecx,ecx
 005C573B    mov        eax,5C57E4; 'Cannot execute command (%s)'
 005C5740    call       Format
 005C5745    mov        eax,dword ptr [ebp-44C]
 005C574B    mov        ebx,dword ptr ds:[61B830]
 005C5751    mov        ebx,dword ptr [ebx]
 005C5753    lea        edx,[ebp-448]
 005C5759    call       ebx
 005C575B    mov        eax,dword ptr [ebp-448]
 005C5761    call       00579798
 005C5766    cmp        byte ptr [ebp-9],0
<005C576A    je         005C3CED
 005C5770    xor        eax,eax
 005C5772    pop        edx
 005C5773    pop        ecx
 005C5774    pop        ecx
 005C5775    mov        dword ptr fs:[eax],edx
 005C5778    push       5C5796
 005C577D    mov        eax,dword ptr [ebp-4]
 005C5780    mov        edx,dword ptr [eax+20]; TRCPURunner.?f20:dword
 005C5783    mov        eax,dword ptr [ebp-4]
 005C5786    mov        eax,dword ptr [eax+14]; TRCPURunner.?f14:Pointer
 005C5789    call       @FreeMem
 005C578E    ret
<005C578F    jmp        @HandleFinally
<005C5794    jmp        005C577D
 005C5796    xor        eax,eax
 005C5798    pop        edx
 005C5799    pop        ecx
 005C579A    pop        ecx
 005C579B    mov        dword ptr fs:[eax],edx
 005C579E    push       5C57CE
 005C57A3    lea        eax,[ebp-458]
 005C57A9    call       @LStrClr
 005C57AE    lea        eax,[ebp-44C]
 005C57B4    mov        edx,2
 005C57B9    call       @LStrArrayClr
 005C57BE    lea        eax,[ebp-40]
 005C57C1    call       @LStrClr
 005C57C6    ret
<005C57C7    jmp        @HandleFinally
<005C57CC    jmp        005C57A3
 005C57CE    pop        edi
 005C57CF    pop        esi
 005C57D0    pop        ebx
 005C57D1    mov        esp,ebp
 005C57D3    pop        ebp
 005C57D4    ret
*}
//end;

//005C5800
//procedure sub_005C5800(?:?; ?:?; ?:?);
//begin
{*
 005C5800    push       ebp
 005C5801    mov        ebp,esp
 005C5803    add        esp,0FFFFFFE8
 005C5806    push       ebx
 005C5807    push       esi
 005C5808    xor        ebx,ebx
 005C580A    mov        dword ptr [ebp-18],ebx
 005C580D    mov        dword ptr [ebp-14],ebx
 005C5810    mov        dword ptr [ebp-10],ebx
 005C5813    mov        esi,ecx
 005C5815    mov        dword ptr [ebp-8],edx
 005C5818    mov        dword ptr [ebp-4],eax
 005C581B    xor        eax,eax
 005C581D    push       ebp
 005C581E    push       5C58D6
 005C5823    push       dword ptr fs:[eax]
 005C5826    mov        dword ptr fs:[eax],esp
 005C5829    cmp        dword ptr ds:[6172B8],0; gvar_006172B8:TStringList
>005C5830    je         005C58BB
 005C5836    lea        edx,[ebp-10]
 005C5839    mov        eax,esi
 005C583B    call       UpperCase
 005C5840    mov        edx,dword ptr [ebp-10]
 005C5843    lea        ecx,[ebp-0C]
 005C5846    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C584B    mov        ebx,dword ptr [eax]
 005C584D    call       dword ptr [ebx+8C]; TStringList.Find
 005C5853    test       al,al
>005C5855    je         005C5873
 005C5857    mov        edx,dword ptr [ebp-0C]
 005C585A    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C585F    mov        ecx,dword ptr [eax]
 005C5861    call       dword ptr [ecx+18]; TStringList.GetObject
 005C5864    mov        edx,dword ptr ds:[41C8E4]; TStringList
 005C586A    call       @AsClass
 005C586F    mov        ebx,eax
>005C5871    jmp        005C58A3
 005C5873    mov        dl,1
 005C5875    mov        eax,[0041C8E4]; TStringList
 005C587A    call       TObject.Create; TStringList.Create
 005C587F    mov        ebx,eax
 005C5881    mov        dl,1
 005C5883    mov        eax,ebx
 005C5885    call       TStringList.SetSorted
 005C588A    lea        edx,[ebp-14]
 005C588D    mov        eax,esi
 005C588F    call       UpperCase
 005C5894    mov        edx,dword ptr [ebp-14]
 005C5897    mov        ecx,ebx
 005C5899    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C589E    mov        esi,dword ptr [eax]
 005C58A0    call       dword ptr [esi+3C]; TStringList.AddObject
 005C58A3    lea        edx,[ebp-18]
 005C58A6    mov        eax,dword ptr [ebp-8]
 005C58A9    call       UpperCase
 005C58AE    mov        edx,dword ptr [ebp-18]
 005C58B1    mov        ecx,dword ptr [ebp-4]
 005C58B4    mov        eax,ebx
 005C58B6    mov        ebx,dword ptr [eax]
 005C58B8    call       dword ptr [ebx+3C]; TStringList.AddObject
 005C58BB    xor        eax,eax
 005C58BD    pop        edx
 005C58BE    pop        ecx
 005C58BF    pop        ecx
 005C58C0    mov        dword ptr fs:[eax],edx
 005C58C3    push       5C58DD
 005C58C8    lea        eax,[ebp-18]
 005C58CB    mov        edx,3
 005C58D0    call       @LStrArrayClr
 005C58D5    ret
<005C58D6    jmp        @HandleFinally
<005C58DB    jmp        005C58C8
 005C58DD    pop        esi
 005C58DE    pop        ebx
 005C58DF    mov        esp,ebp
 005C58E1    pop        ebp
 005C58E2    ret
*}
//end;

//005C58E4
//procedure sub_005C58E4(?:?; ?:?);
//begin
{*
 005C58E4    push       ebp
 005C58E5    mov        ebp,esp
 005C58E7    add        esp,0FFFFFFE4
 005C58EA    push       ebx
 005C58EB    xor        ecx,ecx
 005C58ED    mov        dword ptr [ebp-1C],ecx
 005C58F0    mov        dword ptr [ebp-18],ecx
 005C58F3    mov        dword ptr [ebp-8],edx
 005C58F6    mov        dword ptr [ebp-4],eax
 005C58F9    mov        eax,dword ptr [ebp-4]
 005C58FC    call       @LStrAddRef
 005C5901    mov        eax,dword ptr [ebp-8]
 005C5904    call       @LStrAddRef
 005C5909    xor        eax,eax
 005C590B    push       ebp
 005C590C    push       5C59D5
 005C5911    push       dword ptr fs:[eax]
 005C5914    mov        dword ptr fs:[eax],esp
 005C5917    cmp        dword ptr ds:[6172B8],0; gvar_006172B8:TStringList
>005C591E    je         005C59AD
 005C5924    lea        edx,[ebp-18]
 005C5927    mov        eax,dword ptr [ebp-8]
 005C592A    call       UpperCase
 005C592F    mov        edx,dword ptr [ebp-18]
 005C5932    lea        ecx,[ebp-10]
 005C5935    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C593A    mov        ebx,dword ptr [eax]
 005C593C    call       dword ptr [ebx+8C]; TStringList.Find
 005C5942    test       al,al
>005C5944    je         005C59AD
 005C5946    mov        edx,dword ptr [ebp-10]
 005C5949    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C594E    mov        ecx,dword ptr [eax]
 005C5950    call       dword ptr [ecx+18]; TStringList.GetObject
 005C5953    mov        edx,dword ptr ds:[41C8E4]; TStringList
 005C5959    call       @AsClass
 005C595E    mov        dword ptr [ebp-0C],eax
 005C5961    lea        edx,[ebp-1C]
 005C5964    mov        eax,dword ptr [ebp-4]
 005C5967    call       UpperCase
 005C596C    mov        edx,dword ptr [ebp-1C]
 005C596F    lea        ecx,[ebp-14]
 005C5972    mov        eax,dword ptr [ebp-0C]
 005C5975    mov        ebx,dword ptr [eax]
 005C5977    call       dword ptr [ebx+8C]; TStringList.Find
 005C597D    test       al,al
>005C597F    je         005C59AD
 005C5981    mov        edx,dword ptr [ebp-14]
 005C5984    mov        eax,dword ptr [ebp-0C]
 005C5987    mov        ecx,dword ptr [eax]
 005C5989    call       dword ptr [ecx+48]; TStringList.Delete
 005C598C    mov        eax,dword ptr [ebp-0C]
 005C598F    mov        edx,dword ptr [eax]
 005C5991    call       dword ptr [edx+14]; TStringList.GetCount
 005C5994    test       eax,eax
>005C5996    jne        005C59AD
 005C5998    lea        eax,[ebp-0C]
 005C599B    call       FreeAndNil
 005C59A0    mov        edx,dword ptr [ebp-10]
 005C59A3    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C59A8    mov        ecx,dword ptr [eax]
 005C59AA    call       dword ptr [ecx+48]; TStringList.Delete
 005C59AD    xor        eax,eax
 005C59AF    pop        edx
 005C59B0    pop        ecx
 005C59B1    pop        ecx
 005C59B2    mov        dword ptr fs:[eax],edx
 005C59B5    push       5C59DC
 005C59BA    lea        eax,[ebp-1C]
 005C59BD    mov        edx,2
 005C59C2    call       @LStrArrayClr
 005C59C7    lea        eax,[ebp-8]
 005C59CA    mov        edx,2
 005C59CF    call       @LStrArrayClr
 005C59D4    ret
<005C59D5    jmp        @HandleFinally
<005C59DA    jmp        005C59BA
 005C59DC    pop        ebx
 005C59DD    mov        esp,ebp
 005C59DF    pop        ebp
 005C59E0    ret
*}
//end;

//005C59E4
//procedure sub_005C59E4(?:?);
//begin
{*
 005C59E4    push       ebp
 005C59E5    mov        ebp,esp
 005C59E7    add        esp,0FFFFFFE8
 005C59EA    push       ebx
 005C59EB    push       esi
 005C59EC    xor        edx,edx
 005C59EE    mov        dword ptr [ebp-18],edx
 005C59F1    mov        dword ptr [ebp-14],edx
 005C59F4    mov        dword ptr [ebp-4],eax
 005C59F7    xor        eax,eax
 005C59F9    push       ebp
 005C59FA    push       5C5AB6
 005C59FF    push       dword ptr fs:[eax]
 005C5A02    mov        dword ptr fs:[eax],esp
 005C5A05    cmp        dword ptr ds:[6172B8],0; gvar_006172B8:TStringList
>005C5A0C    je         005C5A9B
 005C5A12    lea        edx,[ebp-14]
 005C5A15    mov        eax,dword ptr [ebp-4]
 005C5A18    mov        eax,dword ptr [eax+4]
 005C5A1B    call       UpperCase
 005C5A20    mov        edx,dword ptr [ebp-14]
 005C5A23    lea        ecx,[ebp-0C]
 005C5A26    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C5A2B    mov        ebx,dword ptr [eax]
 005C5A2D    call       dword ptr [ebx+8C]; TStringList.Find
 005C5A33    test       al,al
>005C5A35    je         005C5A9B
 005C5A37    mov        edx,dword ptr [ebp-0C]
 005C5A3A    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C5A3F    mov        ecx,dword ptr [eax]
 005C5A41    call       dword ptr [ecx+18]; TStringList.GetObject
 005C5A44    mov        edx,dword ptr ds:[41C8E4]; TStringList
 005C5A4A    call       @AsClass
 005C5A4F    mov        dword ptr [ebp-8],eax
 005C5A52    mov        eax,dword ptr [ebp-8]
 005C5A55    mov        edx,dword ptr [eax]
 005C5A57    call       dword ptr [edx+14]; TStringList.GetCount
 005C5A5A    dec        eax
 005C5A5B    test       eax,eax
>005C5A5D    jl         005C5A9B
 005C5A5F    inc        eax
 005C5A60    mov        dword ptr [ebp-10],eax
 005C5A63    xor        ebx,ebx
 005C5A65    lea        ecx,[ebp-18]
 005C5A68    mov        edx,ebx
 005C5A6A    mov        eax,dword ptr [ebp-8]
 005C5A6D    mov        esi,dword ptr [eax]
 005C5A6F    call       dword ptr [esi+0C]; TStringList.Get
 005C5A72    mov        edx,dword ptr [ebp-18]
 005C5A75    mov        eax,dword ptr [ebp-4]
 005C5A78    call       005C8CD0
 005C5A7D    test       eax,eax
>005C5A7F    je         005C5A95
 005C5A81    mov        edx,dword ptr [ebp-4]
 005C5A84    mov        esi,dword ptr [edx+30]
 005C5A87    add        esi,dword ptr [eax]
 005C5A89    mov        edx,ebx
 005C5A8B    mov        eax,dword ptr [ebp-8]
 005C5A8E    mov        ecx,dword ptr [eax]
 005C5A90    call       dword ptr [ecx+18]; TStringList.GetObject
 005C5A93    mov        dword ptr [esi],eax
 005C5A95    inc        ebx
 005C5A96    dec        dword ptr [ebp-10]
<005C5A99    jne        005C5A65
 005C5A9B    xor        eax,eax
 005C5A9D    pop        edx
 005C5A9E    pop        ecx
 005C5A9F    pop        ecx
 005C5AA0    mov        dword ptr fs:[eax],edx
 005C5AA3    push       5C5ABD
 005C5AA8    lea        eax,[ebp-18]
 005C5AAB    mov        edx,2
 005C5AB0    call       @LStrArrayClr
 005C5AB5    ret
<005C5AB6    jmp        @HandleFinally
<005C5ABB    jmp        005C5AA8
 005C5ABD    pop        esi
 005C5ABE    pop        ebx
 005C5ABF    mov        esp,ebp
 005C5AC1    pop        ebp
 005C5AC2    ret
*}
//end;

Initialization
//005C5B14
{*
 005C5B14    sub        dword ptr ds:[61F8C0],1
>005C5B1B    jae        005C5B77
 005C5B1D    mov        dl,1
 005C5B1F    mov        eax,[0041C8E4]; TStringList
 005C5B24    call       TObject.Create; TStringList.Create
 005C5B29    mov        [006172B8],eax; gvar_006172B8:TStringList
 005C5B2E    mov        dl,1
 005C5B30    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C5B35    call       TStringList.SetSorted
 005C5B3A    xor        eax,eax
 005C5B3C    mov        [0061F8BC],eax; gvar_0061F8BC:void
 005C5B41    mov        eax,[0061B408]
 005C5B46    mov        dword ptr [eax],5C5800; sub_005C5800
 005C5B4C    mov        eax,[0061BF48]
 005C5B51    cmp        dword ptr [eax],0
>005C5B54    jne        005C5B61
 005C5B56    mov        eax,[0061BF48]
 005C5B5B    mov        dword ptr [eax],5C5800; sub_005C5800
 005C5B61    mov        eax,[0061C574]
 005C5B66    mov        dword ptr [eax],5C58E4; sub_005C58E4
 005C5B6C    mov        eax,[0061BE30]
 005C5B71    mov        dword ptr [eax],5C59E4; sub_005C59E4
 005C5B77    ret
*}
Finalization
//005C5AC4
{*
 005C5AC4    push       ebp
 005C5AC5    mov        ebp,esp
 005C5AC7    xor        eax,eax
 005C5AC9    push       ebp
 005C5ACA    push       5C5B09
 005C5ACF    push       dword ptr fs:[eax]
 005C5AD2    mov        dword ptr fs:[eax],esp
 005C5AD5    inc        dword ptr ds:[61F8C0]
>005C5ADB    jne        005C5AFB
 005C5ADD    mov        eax,[006172B8]; gvar_006172B8:TStringList
 005C5AE2    call       005A5904
 005C5AE7    mov        eax,6172B8; gvar_006172B8:TStringList
 005C5AEC    call       FreeAndNil
 005C5AF1    mov        eax,61F8BC; gvar_0061F8BC:void
 005C5AF6    call       FreeAndNil
 005C5AFB    xor        eax,eax
 005C5AFD    pop        edx
 005C5AFE    pop        ecx
 005C5AFF    pop        ecx
 005C5B00    mov        dword ptr fs:[eax],edx
 005C5B03    push       5C5B10
 005C5B08    ret
<005C5B09    jmp        @HandleFinally
<005C5B0E    jmp        005C5B08
 005C5B10    pop        ebp
 005C5B11    ret
*}
end.