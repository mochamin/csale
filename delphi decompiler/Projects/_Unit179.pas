{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit179;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZInterbaseNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_00520024:?; virtual;
  end;

implementation

{$R *.DFM}

//00520024
//function sub_00520024:?;
//begin
{*
 00520024    push       ebp
 00520025    mov        ebp,esp
 00520027    push       ebx
 00520028    push       esi
 00520029    mov        esi,eax
 0052002B    mov        eax,esi
 0052002D    call       004EBCD0
 00520032    mov        ebx,eax
 00520034    mov        edx,520348
 00520039    mov        eax,esi
 0052003B    call       004EBE38
 00520040    mov        [0061E548],eax; gvar_0061E548
 00520045    mov        edx,520354
 0052004A    mov        eax,esi
 0052004C    call       004EBE38
 00520051    mov        [0061E54C],eax; gvar_0061E54C
 00520056    mov        edx,520368
 0052005B    mov        eax,esi
 0052005D    call       004EBE38
 00520062    mov        [0061E550],eax; gvar_0061E550
 00520067    mov        edx,520378
 0052006C    mov        eax,esi
 0052006E    call       004EBE38
 00520073    mov        [0061E5EC],eax; gvar_0061E5EC
 00520078    mov        edx,520388
 0052007D    mov        eax,esi
 0052007F    call       004EBE38
 00520084    mov        [0061E5A0],eax; gvar_0061E5A0
 00520089    mov        edx,52039C
 0052008E    mov        eax,esi
 00520090    call       004EBE38
 00520095    mov        [0061E5A4],eax; gvar_0061E5A4
 0052009A    mov        edx,5203B0
 0052009F    mov        eax,esi
 005200A1    call       004EBE38
 005200A6    mov        [0061E5A8],eax; gvar_0061E5A8
 005200AB    mov        edx,5203C8
 005200B0    mov        eax,esi
 005200B2    call       004EBE38
 005200B7    mov        [0061E5AC],eax; gvar_0061E5AC
 005200BC    mov        edx,5203E0
 005200C1    mov        eax,esi
 005200C3    call       004EBE38
 005200C8    mov        [0061E5B0],eax; gvar_0061E5B0
 005200CD    mov        edx,5203F4
 005200D2    mov        eax,esi
 005200D4    call       004EBE38
 005200D9    mov        [0061E5B4],eax; gvar_0061E5B4
 005200DE    mov        edx,520408
 005200E3    mov        eax,esi
 005200E5    call       004EBE38
 005200EA    mov        [0061E5C0],eax; gvar_0061E5C0
 005200EF    mov        edx,520418
 005200F4    mov        eax,esi
 005200F6    call       004EBE38
 005200FB    mov        [0061E5B8],eax; gvar_0061E5B8
 00520100    mov        edx,520428
 00520105    mov        eax,esi
 00520107    call       004EBE38
 0052010C    mov        [0061E5C4],eax; gvar_0061E5C4
 00520111    mov        edx,520438
 00520116    mov        eax,esi
 00520118    call       004EBE38
 0052011D    mov        [0061E5C8],eax; gvar_0061E5C8
 00520122    mov        edx,520448
 00520127    mov        eax,esi
 00520129    call       004EBE38
 0052012E    mov        [0061E5CC],eax; gvar_0061E5CC
 00520133    mov        edx,520458
 00520138    mov        eax,esi
 0052013A    call       004EBE38
 0052013F    mov        [0061E5D0],eax; gvar_0061E5D0
 00520144    mov        edx,520468
 00520149    mov        eax,esi
 0052014B    call       004EBE38
 00520150    mov        [0061E5BC],eax; gvar_0061E5BC
 00520155    mov        edx,52047C
 0052015A    mov        eax,esi
 0052015C    call       004EBE38
 00520161    mov        [0061E5E8],eax; gvar_0061E5E8
 00520166    mov        edx,52048C
 0052016B    mov        eax,esi
 0052016D    call       004EBE38
 00520172    mov        [0061E5E4],eax; gvar_0061E5E4
 00520177    mov        edx,52049C
 0052017C    mov        eax,esi
 0052017E    call       004EBE38
 00520183    mov        [0061E590],eax; gvar_0061E590
 00520188    mov        edx,5204B4
 0052018D    mov        eax,esi
 0052018F    call       004EBE38
 00520194    mov        [0061E584],eax; gvar_0061E584
 00520199    mov        edx,5204C8
 0052019E    mov        eax,esi
 005201A0    call       004EBE38
 005201A5    mov        [0061E580],eax; gvar_0061E580
 005201AA    mov        edx,5204DC
 005201AF    mov        eax,esi
 005201B1    call       004EBE38
 005201B6    mov        [0061E598],eax; gvar_0061E598
 005201BB    mov        edx,5204F8
 005201C0    mov        eax,esi
 005201C2    call       004EBE38
 005201C7    mov        [0061E58C],eax; gvar_0061E58C
 005201CC    mov        edx,520508
 005201D1    mov        eax,esi
 005201D3    call       004EBE38
 005201D8    mov        [0061E59C],eax; gvar_0061E59C
 005201DD    mov        edx,52051C
 005201E2    mov        eax,esi
 005201E4    call       004EBE38
 005201E9    mov        [0061E570],eax; gvar_0061E570
 005201EE    mov        edx,520538
 005201F3    mov        eax,esi
 005201F5    call       004EBE38
 005201FA    mov        [0061E574],eax; gvar_0061E574
 005201FF    mov        edx,520554
 00520204    mov        eax,esi
 00520206    call       004EBE38
 0052020B    mov        [0061E594],eax; gvar_0061E594
 00520210    mov        edx,520568
 00520215    mov        eax,esi
 00520217    call       004EBE38
 0052021C    mov        [0061E57C],eax; gvar_0061E57C
 00520221    mov        edx,520580
 00520226    mov        eax,esi
 00520228    call       004EBE38
 0052022D    mov        [0061E578],eax; gvar_0061E578
 00520232    mov        edx,520594
 00520237    mov        eax,esi
 00520239    call       004EBE38
 0052023E    mov        [0061E588],eax; gvar_0061E588
 00520243    mov        edx,5205B0
 00520248    mov        eax,esi
 0052024A    call       004EBE38
 0052024F    mov        [0061E53C],eax; gvar_0061E53C
 00520254    mov        edx,5205C4
 00520259    mov        eax,esi
 0052025B    call       004EBE38
 00520260    mov        [0061E538],eax; gvar_0061E538
 00520265    mov        edx,5205D8
 0052026A    mov        eax,esi
 0052026C    call       004EBE38
 00520271    mov        [0061E534],eax; gvar_0061E534
 00520276    mov        edx,5205EC
 0052027B    mov        eax,esi
 0052027D    call       004EBE38
 00520282    mov        [0061E540],eax; gvar_0061E540
 00520287    mov        edx,520600
 0052028C    mov        eax,esi
 0052028E    call       004EBE38
 00520293    mov        [0061E56C],eax; gvar_0061E56C
 00520298    mov        edx,520618
 0052029D    mov        eax,esi
 0052029F    call       004EBE38
 005202A4    mov        [0061E558],eax; gvar_0061E558
 005202A9    mov        edx,52062C
 005202AE    mov        eax,esi
 005202B0    call       004EBE38
 005202B5    mov        [0061E554],eax; gvar_0061E554
 005202BA    mov        edx,520644
 005202BF    mov        eax,esi
 005202C1    call       004EBE38
 005202C6    mov        [0061E564],eax; gvar_0061E564
 005202CB    mov        edx,52065C
 005202D0    mov        eax,esi
 005202D2    call       004EBE38
 005202D7    mov        [0061E568],eax; gvar_0061E568
 005202DC    mov        edx,520674
 005202E1    mov        eax,esi
 005202E3    call       004EBE38
 005202E8    mov        [0061E55C],eax; gvar_0061E55C
 005202ED    mov        edx,520690
 005202F2    mov        eax,esi
 005202F4    call       004EBE38
 005202F9    mov        [0061E5E0],eax; gvar_0061E5E0
 005202FE    mov        edx,5206A4
 00520303    mov        eax,esi
 00520305    call       004EBE38
 0052030A    mov        [0061E5D4],eax; gvar_0061E5D4
 0052030F    mov        edx,5206B4
 00520314    mov        eax,esi
 00520316    call       004EBE38
 0052031B    mov        [0061E5D8],eax; gvar_0061E5D8
 00520320    mov        edx,5206C8
 00520325    mov        eax,esi
 00520327    call       004EBE38
 0052032C    mov        [0061E5DC],eax; gvar_0061E5DC
 00520331    mov        edx,5206D8
 00520336    mov        eax,esi
 00520338    call       004EBE38
 0052033D    mov        [0061E544],eax; gvar_0061E544
 00520342    mov        eax,ebx
 00520344    pop        esi
 00520345    pop        ebx
 00520346    pop        ebp
 00520347    ret
*}
//end;

Initialization
//00520728
{*
 00520728    push       ebp
 00520729    mov        ebp,esp
 0052072B    push       ecx
 0052072C    sub        dword ptr ds:[61E5F4],1
>00520733    jae        00520753
 00520735    push       0
 00520737    mov        eax,520760; 'gds32.dll'
 0052073C    mov        dword ptr [ebp-4],eax
 0052073F    lea        ecx,[ebp-4]
 00520742    mov        dl,1
 00520744    mov        eax,[0051FD98]; TZInterbaseNativeLibraryLoader
 00520749    call       TZSybaseNativeLibraryLoader.Create; TZInterbaseNativeLibraryLoader.Create
 0052074E    mov        [0061E5F0],eax; gvar_0061E5F0:TZInterbaseNativeLibraryLoader
 00520753    pop        ecx
 00520754    pop        ebp
 00520755    ret
*}
Finalization
//005206E4
{*
 005206E4    push       ebp
 005206E5    mov        ebp,esp
 005206E7    xor        eax,eax
 005206E9    push       ebp
 005206EA    push       52071E
 005206EF    push       dword ptr fs:[eax]
 005206F2    mov        dword ptr fs:[eax],esp
 005206F5    inc        dword ptr ds:[61E5F4]
>005206FB    jne        00520710
 005206FD    cmp        dword ptr ds:[61E5F0],0; gvar_0061E5F0:TZInterbaseNativeLibraryLoader
>00520704    je         00520710
 00520706    mov        eax,[0061E5F0]; gvar_0061E5F0:TZInterbaseNativeLibraryLoader
 0052070B    call       TObject.Free
 00520710    xor        eax,eax
 00520712    pop        edx
 00520713    pop        ecx
 00520714    pop        ecx
 00520715    mov        dword ptr fs:[eax],edx
 00520718    push       520725
 0052071D    ret
<0052071E    jmp        @HandleFinally
<00520723    jmp        0052071D
 00520725    pop        ebp
 00520726    ret
*}
end.