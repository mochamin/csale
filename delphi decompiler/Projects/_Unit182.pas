{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit182;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZFirebirdNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_005240F8:?; virtual;
  end;

implementation

{$R *.DFM}

//005240F8
//function sub_005240F8:?;
//begin
{*
 005240F8    push       ebp
 005240F9    mov        ebp,esp
 005240FB    push       ebx
 005240FC    push       esi
 005240FD    mov        esi,eax
 005240FF    mov        eax,esi
 00524101    call       004EBCD0
 00524106    mov        ebx,eax
 00524108    mov        edx,5244A4
 0052410D    mov        eax,esi
 0052410F    call       004EBE38
 00524114    mov        [0061E988],eax; gvar_0061E988
 00524119    mov        edx,5244B0
 0052411E    mov        eax,esi
 00524120    call       004EBE38
 00524125    mov        [0061E98C],eax; gvar_0061E98C
 0052412A    mov        edx,5244C4
 0052412F    mov        eax,esi
 00524131    call       004EBE38
 00524136    mov        [0061E990],eax; gvar_0061E990
 0052413B    mov        edx,5244D4
 00524140    mov        eax,esi
 00524142    call       004EBE38
 00524147    mov        [0061E994],eax; gvar_0061E994
 0052414C    mov        edx,5244E4
 00524151    mov        eax,esi
 00524153    call       004EBE38
 00524158    mov        [0061EA30],eax; gvar_0061EA30
 0052415D    mov        edx,5244F4
 00524162    mov        eax,esi
 00524164    call       004EBE38
 00524169    mov        [0061E9E4],eax; gvar_0061E9E4
 0052416E    mov        edx,524508
 00524173    mov        eax,esi
 00524175    call       004EBE38
 0052417A    mov        [0061E9E8],eax; gvar_0061E9E8
 0052417F    mov        edx,52451C
 00524184    mov        eax,esi
 00524186    call       004EBE38
 0052418B    mov        [0061E9EC],eax; gvar_0061E9EC
 00524190    mov        edx,524534
 00524195    mov        eax,esi
 00524197    call       004EBE38
 0052419C    mov        [0061E9F0],eax; gvar_0061E9F0
 005241A1    mov        edx,52454C
 005241A6    mov        eax,esi
 005241A8    call       004EBE38
 005241AD    mov        [0061E9F4],eax; gvar_0061E9F4
 005241B2    mov        edx,524560
 005241B7    mov        eax,esi
 005241B9    call       004EBE38
 005241BE    mov        [0061E9F8],eax; gvar_0061E9F8
 005241C3    mov        edx,524574
 005241C8    mov        eax,esi
 005241CA    call       004EBE38
 005241CF    mov        [0061EA04],eax; gvar_0061EA04
 005241D4    mov        edx,524584
 005241D9    mov        eax,esi
 005241DB    call       004EBE38
 005241E0    mov        [0061E9FC],eax; gvar_0061E9FC
 005241E5    mov        edx,524594
 005241EA    mov        eax,esi
 005241EC    call       004EBE38
 005241F1    mov        [0061EA08],eax; gvar_0061EA08
 005241F6    mov        edx,5245A4
 005241FB    mov        eax,esi
 005241FD    call       004EBE38
 00524202    mov        [0061EA0C],eax; gvar_0061EA0C
 00524207    mov        edx,5245B4
 0052420C    mov        eax,esi
 0052420E    call       004EBE38
 00524213    mov        [0061EA10],eax; gvar_0061EA10
 00524218    mov        edx,5245C4
 0052421D    mov        eax,esi
 0052421F    call       004EBE38
 00524224    mov        [0061EA14],eax; gvar_0061EA14
 00524229    mov        edx,5245D4
 0052422E    mov        eax,esi
 00524230    call       004EBE38
 00524235    mov        [0061EA00],eax; gvar_0061EA00
 0052423A    mov        edx,5245E8
 0052423F    mov        eax,esi
 00524241    call       004EBE38
 00524246    mov        [0061EA2C],eax; gvar_0061EA2C
 0052424B    mov        edx,5245F8
 00524250    mov        eax,esi
 00524252    call       004EBE38
 00524257    mov        [0061EA28],eax; gvar_0061EA28
 0052425C    mov        edx,524608
 00524261    mov        eax,esi
 00524263    call       004EBE38
 00524268    mov        [0061E9D4],eax; gvar_0061E9D4
 0052426D    mov        edx,524620
 00524272    mov        eax,esi
 00524274    call       004EBE38
 00524279    mov        [0061E9C8],eax; gvar_0061E9C8
 0052427E    mov        edx,524634
 00524283    mov        eax,esi
 00524285    call       004EBE38
 0052428A    mov        [0061E9C4],eax; gvar_0061E9C4
 0052428F    mov        edx,524648
 00524294    mov        eax,esi
 00524296    call       004EBE38
 0052429B    mov        [0061E9DC],eax; gvar_0061E9DC
 005242A0    mov        edx,524664
 005242A5    mov        eax,esi
 005242A7    call       004EBE38
 005242AC    mov        [0061E9D0],eax; gvar_0061E9D0
 005242B1    mov        edx,524674
 005242B6    mov        eax,esi
 005242B8    call       004EBE38
 005242BD    mov        [0061E9E0],eax; gvar_0061E9E0
 005242C2    mov        edx,524688
 005242C7    mov        eax,esi
 005242C9    call       004EBE38
 005242CE    mov        [0061E9B4],eax; gvar_0061E9B4
 005242D3    mov        edx,5246A4
 005242D8    mov        eax,esi
 005242DA    call       004EBE38
 005242DF    mov        [0061E9B8],eax; gvar_0061E9B8
 005242E4    mov        edx,5246C0
 005242E9    mov        eax,esi
 005242EB    call       004EBE38
 005242F0    mov        [0061E9D8],eax; gvar_0061E9D8
 005242F5    mov        edx,5246D4
 005242FA    mov        eax,esi
 005242FC    call       004EBE38
 00524301    mov        [0061E9C0],eax; gvar_0061E9C0
 00524306    mov        edx,5246EC
 0052430B    mov        eax,esi
 0052430D    call       004EBE38
 00524312    mov        [0061E9BC],eax; gvar_0061E9BC
 00524317    mov        edx,524700
 0052431C    mov        eax,esi
 0052431E    call       004EBE38
 00524323    mov        [0061E9CC],eax; gvar_0061E9CC
 00524328    mov        edx,52471C
 0052432D    mov        eax,esi
 0052432F    call       004EBE38
 00524334    mov        [0061E97C],eax; gvar_0061E97C
 00524339    mov        edx,524730
 0052433E    mov        eax,esi
 00524340    call       004EBE38
 00524345    mov        [0061E978],eax; gvar_0061E978
 0052434A    mov        edx,524744
 0052434F    mov        eax,esi
 00524351    call       004EBE38
 00524356    mov        [0061E974],eax; gvar_0061E974
 0052435B    mov        edx,524758
 00524360    mov        eax,esi
 00524362    call       004EBE38
 00524367    mov        [0061E980],eax; gvar_0061E980
 0052436C    mov        edx,52476C
 00524371    mov        eax,esi
 00524373    call       004EBE38
 00524378    mov        [0061E9B0],eax; gvar_0061E9B0
 0052437D    mov        edx,524784
 00524382    mov        eax,esi
 00524384    call       004EBE38
 00524389    mov        [0061E99C],eax; gvar_0061E99C
 0052438E    mov        edx,524798
 00524393    mov        eax,esi
 00524395    call       004EBE38
 0052439A    mov        [0061E998],eax; gvar_0061E998
 0052439F    mov        edx,5247B0
 005243A4    mov        eax,esi
 005243A6    call       004EBE38
 005243AB    mov        [0061E9A8],eax; gvar_0061E9A8
 005243B0    mov        edx,5247C8
 005243B5    mov        eax,esi
 005243B7    call       004EBE38
 005243BC    mov        [0061E9AC],eax; gvar_0061E9AC
 005243C1    mov        edx,5247E0
 005243C6    mov        eax,esi
 005243C8    call       004EBE38
 005243CD    mov        [0061E9A0],eax; gvar_0061E9A0
 005243D2    mov        edx,5247FC
 005243D7    mov        eax,esi
 005243D9    call       004EBE38
 005243DE    mov        [0061EA24],eax; gvar_0061EA24
 005243E3    mov        edx,524810
 005243E8    mov        eax,esi
 005243EA    call       004EBE38
 005243EF    mov        [0061EA18],eax; gvar_0061EA18
 005243F4    mov        edx,524820
 005243F9    mov        eax,esi
 005243FB    call       004EBE38
 00524400    mov        [0061EA1C],eax; gvar_0061EA1C
 00524405    mov        edx,524834
 0052440A    mov        eax,esi
 0052440C    call       004EBE38
 00524411    mov        [0061EA20],eax; gvar_0061EA20
 00524416    mov        edx,524844
 0052441B    mov        eax,esi
 0052441D    call       004EBE38
 00524422    mov        [0061E984],eax; gvar_0061E984
 00524427    mov        edx,524850
 0052442C    mov        eax,esi
 0052442E    call       004EBE38
 00524433    mov        [0061E9A4],eax; gvar_0061E9A4
 00524438    mov        edx,524868
 0052443D    mov        eax,esi
 0052443F    call       004EBE38
 00524444    mov        [0061EA38],eax; gvar_0061EA38
 00524449    mov        edx,52487C
 0052444E    mov        eax,esi
 00524450    call       004EBE38
 00524455    mov        [0061EA40],eax; gvar_0061EA40
 0052445A    mov        edx,524890
 0052445F    mov        eax,esi
 00524461    call       004EBE38
 00524466    mov        [0061EA48],eax; gvar_0061EA48
 0052446B    mov        edx,5248A8
 00524470    mov        eax,esi
 00524472    call       004EBE38
 00524477    mov        [0061EA34],eax; gvar_0061EA34
 0052447C    mov        edx,5248BC
 00524481    mov        eax,esi
 00524483    call       004EBE38
 00524488    mov        [0061EA3C],eax; gvar_0061EA3C
 0052448D    mov        edx,5248D0
 00524492    mov        eax,esi
 00524494    call       004EBE38
 00524499    mov        [0061EA44],eax; gvar_0061EA44
 0052449E    mov        eax,ebx
 005244A0    pop        esi
 005244A1    pop        ebx
 005244A2    pop        ebp
 005244A3    ret
*}
//end;

Initialization
//00524940
{*
 00524940    push       ebp
 00524941    mov        ebp,esp
 00524943    add        esp,0FFFFFFF8
 00524946    sub        dword ptr ds:[61EA54],1
>0052494D    jae        0052499B
 0052494F    push       1
 00524951    mov        eax,5249A8; 'fbclient21.dll'
 00524956    mov        dword ptr [ebp-8],eax
 00524959    mov        eax,5249C0; 'fbclient.dll'
 0052495E    mov        dword ptr [ebp-4],eax
 00524961    lea        ecx,[ebp-8]
 00524964    mov        dl,1
 00524966    mov        eax,[0052407C]; TZFirebirdNativeLibraryLoader
 0052496B    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00524970    mov        [0061EA4C],eax; gvar_0061EA4C:TZFirebirdNativeLibraryLoader
 00524975    push       1
 00524977    mov        eax,5249D8; 'fbclientd21.dll'
 0052497C    mov        dword ptr [ebp-8],eax
 0052497F    mov        eax,5249F0; 'fbclientd.dll'
 00524984    mov        dword ptr [ebp-4],eax
 00524987    lea        ecx,[ebp-8]
 0052498A    mov        dl,1
 0052498C    mov        eax,[0052407C]; TZFirebirdNativeLibraryLoader
 00524991    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00524996    mov        [0061EA50],eax; gvar_0061EA50:TZFirebirdNativeLibraryLoader
 0052499B    pop        ecx
 0052499C    pop        ecx
 0052499D    pop        ebp
 0052499E    ret
*}
Finalization
//005248E8
{*
 005248E8    push       ebp
 005248E9    mov        ebp,esp
 005248EB    xor        eax,eax
 005248ED    push       ebp
 005248EE    push       524935
 005248F3    push       dword ptr fs:[eax]
 005248F6    mov        dword ptr fs:[eax],esp
 005248F9    inc        dword ptr ds:[61EA54]
>005248FF    jne        00524927
 00524901    cmp        dword ptr ds:[61EA4C],0; gvar_0061EA4C:TZFirebirdNativeLibraryLoader
>00524908    je         00524914
 0052490A    mov        eax,[0061EA4C]; gvar_0061EA4C:TZFirebirdNativeLibraryLoader
 0052490F    call       TObject.Free
 00524914    cmp        dword ptr ds:[61EA50],0; gvar_0061EA50:TZFirebirdNativeLibraryLoader
>0052491B    je         00524927
 0052491D    mov        eax,[0061EA50]; gvar_0061EA50:TZFirebirdNativeLibraryLoader
 00524922    call       TObject.Free
 00524927    xor        eax,eax
 00524929    pop        edx
 0052492A    pop        ecx
 0052492B    pop        ecx
 0052492C    mov        dword ptr fs:[eax],edx
 0052492F    push       52493C
 00524934    ret
<00524935    jmp        @HandleFinally
<0052493A    jmp        00524934
 0052493C    pop        ebp
 0052493D    ret
*}
end.