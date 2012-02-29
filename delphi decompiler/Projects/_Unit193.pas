{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit193;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZPostgreSQLNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0050EE90:?; virtual;
  end;

implementation

{$R *.DFM}

//0050EE90
//function sub_0050EE90:?;
//begin
{*
 0050EE90    push       ebp
 0050EE91    mov        ebp,esp
 0050EE93    push       ebx
 0050EE94    push       esi
 0050EE95    mov        esi,eax
 0050EE97    mov        eax,esi
 0050EE99    call       004EBCD0
 0050EE9E    mov        ebx,eax
 0050EEA0    mov        edx,50F31C
 0050EEA5    mov        eax,esi
 0050EEA7    call       004EBE38
 0050EEAC    mov        [0061E4D8],eax; gvar_0061E4D8
 0050EEB1    mov        edx,50F328
 0050EEB6    mov        eax,esi
 0050EEB8    call       004EBE38
 0050EEBD    mov        [0061E4CC],eax; gvar_0061E4CC
 0050EEC2    mov        edx,50F33C
 0050EEC7    mov        eax,esi
 0050EEC9    call       004EBE38
 0050EECE    mov        [0061E4D0],eax; gvar_0061E4D0
 0050EED3    mov        edx,50F34C
 0050EED8    mov        eax,esi
 0050EEDA    call       004EBE38
 0050EEDF    mov        [0061E4D4],eax; gvar_0061E4D4
 0050EEE4    mov        edx,50F35C
 0050EEE9    mov        eax,esi
 0050EEEB    call       004EBE38
 0050EEF0    mov        [0061E3F8],eax; gvar_0061E3F8
 0050EEF5    mov        edx,50F368
 0050EEFA    mov        eax,esi
 0050EEFC    call       004EBE38
 0050EF01    mov        [0061E3FC],eax; gvar_0061E3FC
 0050EF06    mov        edx,50F378
 0050EF0B    mov        eax,esi
 0050EF0D    call       004EBE38
 0050EF12    mov        [0061E400],eax; gvar_0061E400
 0050EF17    mov        edx,50F388
 0050EF1C    mov        eax,esi
 0050EF1E    call       004EBE38
 0050EF23    mov        [0061E404],eax; gvar_0061E404
 0050EF28    mov        edx,50F394
 0050EF2D    mov        eax,esi
 0050EF2F    call       004EBE38
 0050EF34    mov        [0061E408],eax; gvar_0061E408
 0050EF39    mov        edx,50F39C
 0050EF3E    mov        eax,esi
 0050EF40    call       004EBE38
 0050EF45    mov        [0061E40C],eax; gvar_0061E40C
 0050EF4A    mov        edx,50F3AC
 0050EF4F    mov        eax,esi
 0050EF51    call       004EBE38
 0050EF56    mov        [0061E410],eax; gvar_0061E410
 0050EF5B    mov        edx,50F3B4
 0050EF60    mov        eax,esi
 0050EF62    call       004EBE38
 0050EF67    mov        [0061E414],eax; gvar_0061E414
 0050EF6C    mov        edx,50F3BC
 0050EF71    mov        eax,esi
 0050EF73    call       004EBE38
 0050EF78    mov        [0061E418],eax; gvar_0061E418
 0050EF7D    mov        edx,50F3C4
 0050EF82    mov        eax,esi
 0050EF84    call       004EBE38
 0050EF89    mov        [0061E41C],eax; gvar_0061E41C
 0050EF8E    mov        edx,50F3CC
 0050EF93    mov        eax,esi
 0050EF95    call       004EBE38
 0050EF9A    mov        [0061E420],eax; gvar_0061E420
 0050EF9F    mov        edx,50F3D4
 0050EFA4    mov        eax,esi
 0050EFA6    call       004EBE38
 0050EFAB    mov        [0061E424],eax; gvar_0061E424
 0050EFB0    mov        edx,50F3DC
 0050EFB5    mov        eax,esi
 0050EFB7    call       004EBE38
 0050EFBC    mov        [0061E428],eax; gvar_0061E428
 0050EFC1    mov        edx,50F3E8
 0050EFC6    mov        eax,esi
 0050EFC8    call       004EBE38
 0050EFCD    mov        [0061E42C],eax; gvar_0061E42C
 0050EFD2    mov        edx,50F3F4
 0050EFD7    mov        eax,esi
 0050EFD9    call       004EBE38
 0050EFDE    mov        [0061E430],eax; gvar_0061E430
 0050EFE3    mov        edx,50F404
 0050EFE8    mov        eax,esi
 0050EFEA    call       004EBE38
 0050EFEF    mov        [0061E434],eax; gvar_0061E434
 0050EFF4    mov        edx,50F410
 0050EFF9    mov        eax,esi
 0050EFFB    call       004EBE38
 0050F000    mov        [0061E438],eax; gvar_0061E438
 0050F005    mov        edx,50F420
 0050F00A    mov        eax,esi
 0050F00C    call       004EBE38
 0050F011    mov        [0061E43C],eax; gvar_0061E43C
 0050F016    mov        edx,50F428
 0050F01B    mov        eax,esi
 0050F01D    call       004EBE38
 0050F022    mov        [0061E440],eax; gvar_0061E440
 0050F027    mov        edx,50F434
 0050F02C    mov        eax,esi
 0050F02E    call       004EBE38
 0050F033    mov        [0061E444],eax; gvar_0061E444
 0050F038    mov        edx,50F44C
 0050F03D    mov        eax,esi
 0050F03F    call       004EBE38
 0050F044    mov        [0061E448],eax; gvar_0061E448
 0050F049    mov        edx,50F454
 0050F04E    mov        eax,esi
 0050F050    call       004EBE38
 0050F055    mov        [0061E44C],eax; gvar_0061E44C
 0050F05A    mov        edx,50F460
 0050F05F    mov        eax,esi
 0050F061    call       004EBE38
 0050F066    mov        [0061E450],eax; gvar_0061E450
 0050F06B    mov        edx,50F470
 0050F070    mov        eax,esi
 0050F072    call       004EBE38
 0050F077    mov        [0061E454],eax; gvar_0061E454
 0050F07C    mov        edx,50F47C
 0050F081    mov        eax,esi
 0050F083    call       004EBE38
 0050F088    mov        [0061E458],eax; gvar_0061E458
 0050F08D    mov        edx,50F488
 0050F092    mov        eax,esi
 0050F094    call       004EBE38
 0050F099    mov        [0061E45C],eax; gvar_0061E45C
 0050F09E    mov        edx,50F494
 0050F0A3    mov        eax,esi
 0050F0A5    call       004EBE38
 0050F0AA    mov        [0061E460],eax; gvar_0061E460
 0050F0AF    mov        edx,50F4A4
 0050F0B4    mov        eax,esi
 0050F0B6    call       004EBE38
 0050F0BB    mov        [0061E464],eax; gvar_0061E464
 0050F0C0    mov        edx,50F4B0
 0050F0C5    mov        eax,esi
 0050F0C7    call       004EBE38
 0050F0CC    mov        [0061E468],eax; gvar_0061E468
 0050F0D1    mov        edx,50F4BC
 0050F0D6    mov        eax,esi
 0050F0D8    call       004EBE38
 0050F0DD    mov        [0061E46C],eax; gvar_0061E46C
 0050F0E2    mov        edx,50F4CC
 0050F0E7    mov        eax,esi
 0050F0E9    call       004EBE38
 0050F0EE    mov        [0061E470],eax; gvar_0061E470
 0050F0F3    mov        edx,50F4D8
 0050F0F8    mov        eax,esi
 0050F0FA    call       004EBE38
 0050F0FF    mov        [0061E474],eax; gvar_0061E474
 0050F104    mov        edx,50F4E4
 0050F109    mov        eax,esi
 0050F10B    call       004EBE38
 0050F110    mov        [0061E478],eax; gvar_0061E478
 0050F115    mov        edx,50F4EC
 0050F11A    mov        eax,esi
 0050F11C    call       004EBE38
 0050F121    mov        [0061E47C],eax; gvar_0061E47C
 0050F126    mov        edx,50F4FC
 0050F12B    mov        eax,esi
 0050F12D    call       004EBE38
 0050F132    mov        [0061E480],eax; gvar_0061E480
 0050F137    mov        edx,50F514
 0050F13C    mov        eax,esi
 0050F13E    call       004EBE38
 0050F143    mov        [0061E484],eax; gvar_0061E484
 0050F148    mov        edx,50F528
 0050F14D    mov        eax,esi
 0050F14F    call       004EBE38
 0050F154    mov        [0061E488],eax; gvar_0061E488
 0050F159    mov        edx,50F534
 0050F15E    mov        eax,esi
 0050F160    call       004EBE38
 0050F165    mov        [0061E48C],eax; gvar_0061E48C
 0050F16A    mov        edx,50F540
 0050F16F    mov        eax,esi
 0050F171    call       004EBE38
 0050F176    mov        [0061E490],eax; gvar_0061E490
 0050F17B    mov        edx,50F550
 0050F180    mov        eax,esi
 0050F182    call       004EBE38
 0050F187    mov        [0061E494],eax; gvar_0061E494
 0050F18C    mov        edx,50F558
 0050F191    mov        eax,esi
 0050F193    call       004EBE38
 0050F198    mov        [0061E498],eax; gvar_0061E498
 0050F19D    mov        edx,50F564
 0050F1A2    mov        eax,esi
 0050F1A4    call       004EBE38
 0050F1A9    mov        [0061E49C],eax; gvar_0061E49C
 0050F1AE    mov        edx,50F56C
 0050F1B3    mov        eax,esi
 0050F1B5    call       004EBE38
 0050F1BA    mov        [0061E4A0],eax; gvar_0061E4A0
 0050F1BF    mov        edx,50F574
 0050F1C4    mov        eax,esi
 0050F1C6    call       004EBE38
 0050F1CB    mov        [0061E4A4],eax; gvar_0061E4A4
 0050F1D0    mov        edx,50F57C
 0050F1D5    mov        eax,esi
 0050F1D7    call       004EBE38
 0050F1DC    mov        [0061E4A8],eax; gvar_0061E4A8
 0050F1E1    mov        edx,50F588
 0050F1E6    mov        eax,esi
 0050F1E8    call       004EBE38
 0050F1ED    mov        [0061E4AC],eax; gvar_0061E4AC
 0050F1F2    mov        edx,50F594
 0050F1F7    mov        eax,esi
 0050F1F9    call       004EBE38
 0050F1FE    mov        [0061E4B0],eax; gvar_0061E4B0
 0050F203    mov        edx,50F5A0
 0050F208    mov        eax,esi
 0050F20A    call       004EBE38
 0050F20F    mov        [0061E4B4],eax; gvar_0061E4B4
 0050F214    mov        edx,50F5AC
 0050F219    mov        eax,esi
 0050F21B    call       004EBE38
 0050F220    mov        [0061E4B8],eax; gvar_0061E4B8
 0050F225    mov        edx,50F5B8
 0050F22A    mov        eax,esi
 0050F22C    call       004EBE38
 0050F231    mov        [0061E4BC],eax; gvar_0061E4BC
 0050F236    mov        edx,50F5C4
 0050F23B    mov        eax,esi
 0050F23D    call       004EBE38
 0050F242    mov        [0061E4C0],eax; gvar_0061E4C0
 0050F247    mov        edx,50F5D0
 0050F24C    mov        eax,esi
 0050F24E    call       004EBE38
 0050F253    mov        [0061E4C4],eax; gvar_0061E4C4
 0050F258    mov        edx,50F5D8
 0050F25D    mov        eax,esi
 0050F25F    call       004EBE38
 0050F264    mov        [0061E4C8],eax; gvar_0061E4C8
 0050F269    mov        edx,50F5EC
 0050F26E    mov        eax,esi
 0050F270    call       004EBE38
 0050F275    mov        [0061E4DC],eax; gvar_0061E4DC
 0050F27A    mov        edx,50F5F4
 0050F27F    mov        eax,esi
 0050F281    call       004EBE38
 0050F286    mov        [0061E4E0],eax; gvar_0061E4E0
 0050F28B    mov        edx,50F600
 0050F290    mov        eax,esi
 0050F292    call       004EBE38
 0050F297    mov        [0061E4E4],eax; gvar_0061E4E4
 0050F29C    mov        edx,50F608
 0050F2A1    mov        eax,esi
 0050F2A3    call       004EBE38
 0050F2A8    mov        [0061E4E8],eax; gvar_0061E4E8
 0050F2AD    mov        edx,50F614
 0050F2B2    mov        eax,esi
 0050F2B4    call       004EBE38
 0050F2B9    mov        [0061E4EC],eax; gvar_0061E4EC
 0050F2BE    mov        edx,50F620
 0050F2C3    mov        eax,esi
 0050F2C5    call       004EBE38
 0050F2CA    mov        [0061E4F0],eax; gvar_0061E4F0
 0050F2CF    mov        edx,50F62C
 0050F2D4    mov        eax,esi
 0050F2D6    call       004EBE38
 0050F2DB    mov        [0061E4F4],eax; gvar_0061E4F4
 0050F2E0    mov        edx,50F634
 0050F2E5    mov        eax,esi
 0050F2E7    call       004EBE38
 0050F2EC    mov        [0061E4F8],eax; gvar_0061E4F8
 0050F2F1    mov        edx,50F640
 0050F2F6    mov        eax,esi
 0050F2F8    call       004EBE38
 0050F2FD    mov        [0061E4FC],eax; gvar_0061E4FC
 0050F302    mov        edx,50F64C
 0050F307    mov        eax,esi
 0050F309    call       004EBE38
 0050F30E    mov        [0061E500],eax; gvar_0061E500
 0050F313    mov        eax,ebx
 0050F315    pop        esi
 0050F316    pop        ebx
 0050F317    pop        ebp
 0050F318    ret
*}
//end;

Initialization
//0050F69C
{*
 0050F69C    push       ebp
 0050F69D    mov        ebp,esp
 0050F69F    add        esp,0FFFFFFF8
 0050F6A2    sub        dword ptr ds:[61E508],1
>0050F6A9    jae        0050F6D1
 0050F6AB    push       1
 0050F6AD    mov        eax,50F6E0; 'libpq81.dll'
 0050F6B2    mov        dword ptr [ebp-8],eax
 0050F6B5    mov        eax,50F6F4; 'libpq.dll'
 0050F6BA    mov        dword ptr [ebp-4],eax
 0050F6BD    lea        ecx,[ebp-8]
 0050F6C0    mov        dl,1
 0050F6C2    mov        eax,[0050EE14]; TZPostgreSQLNativeLibraryLoader
 0050F6C7    call       TZSybaseNativeLibraryLoader.Create; TZPostgreSQLNativeLibraryLoader.Create
 0050F6CC    mov        [0061E504],eax; gvar_0061E504:TZPostgreSQLNativeLibraryLoader
 0050F6D1    pop        ecx
 0050F6D2    pop        ecx
 0050F6D3    pop        ebp
 0050F6D4    ret
*}
Finalization
//0050F658
{*
 0050F658    push       ebp
 0050F659    mov        ebp,esp
 0050F65B    xor        eax,eax
 0050F65D    push       ebp
 0050F65E    push       50F692
 0050F663    push       dword ptr fs:[eax]
 0050F666    mov        dword ptr fs:[eax],esp
 0050F669    inc        dword ptr ds:[61E508]
>0050F66F    jne        0050F684
 0050F671    cmp        dword ptr ds:[61E504],0; gvar_0061E504:TZPostgreSQLNativeLibraryLoader
>0050F678    je         0050F684
 0050F67A    mov        eax,[0061E504]; gvar_0061E504:TZPostgreSQLNativeLibraryLoader
 0050F67F    call       TObject.Free
 0050F684    xor        eax,eax
 0050F686    pop        edx
 0050F687    pop        ecx
 0050F688    pop        ecx
 0050F689    mov        dword ptr fs:[eax],edx
 0050F68C    push       50F699
 0050F691    ret
<0050F692    jmp        @HandleFinally
<0050F697    jmp        0050F691
 0050F699    pop        ebp
 0050F69A    ret
*}
end.