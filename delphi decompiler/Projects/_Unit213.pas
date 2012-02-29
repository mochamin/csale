{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit213;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZSybaseNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    procedure sub_004ED058; virtual;
    //function sub_004EC020:?; virtual;
  end;

implementation

{$R *.DFM}

//004EBEF8
//function sub_004EBEF8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004EBEF8    push       ebp
 004EBEF9    mov        ebp,esp
 004EBEFB    push       ebx
 004EBEFC    mov        edx,dword ptr ds:[4EE6DC]; TDBLibError
 004EBF02    mov        eax,18
 004EBF07    call       @New
 004EBF0C    mov        ebx,eax
 004EBF0E    mov        eax,dword ptr [ebp+8]
 004EBF11    mov        dword ptr [ebx],eax
 004EBF13    mov        eax,dword ptr [ebp+0C]
 004EBF16    mov        dword ptr [ebx+4],eax
 004EBF19    mov        eax,dword ptr [ebp+10]
 004EBF1C    mov        dword ptr [ebx+8],eax
 004EBF1F    mov        eax,dword ptr [ebp+14]
 004EBF22    mov        dword ptr [ebx+0C],eax
 004EBF25    lea        eax,[ebx+10]
 004EBF28    mov        edx,dword ptr [ebp+18]
 004EBF2B    call       @LStrFromPChar
 004EBF30    lea        eax,[ebx+14]
 004EBF33    mov        edx,dword ptr [ebp+1C]
 004EBF36    call       @LStrFromPChar
 004EBF3B    mov        edx,ebx
 004EBF3D    mov        eax,[0061DFF8]; gvar_0061DFF8:TList
 004EBF42    call       TList.Add
 004EBF47    mov        eax,2
 004EBF4C    pop        ebx
 004EBF4D    pop        ebp
 004EBF4E    ret        18
*}
//end;

//004EBF54
//function sub_004EBF54(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004EBF54    push       ebp
 004EBF55    mov        ebp,esp
 004EBF57    push       ebx
 004EBF58    mov        edx,dword ptr ds:[4EE708]; TDBLibMessage
 004EBF5E    mov        eax,20
 004EBF63    call       @New
 004EBF68    mov        ebx,eax
 004EBF6A    mov        eax,dword ptr [ebp+8]
 004EBF6D    mov        dword ptr [ebx],eax
 004EBF6F    mov        eax,dword ptr [ebp+0C]
 004EBF72    mov        dword ptr [ebx+4],eax
 004EBF75    mov        eax,dword ptr [ebp+10]
 004EBF78    mov        dword ptr [ebx+8],eax
 004EBF7B    mov        eax,dword ptr [ebp+14]
 004EBF7E    mov        dword ptr [ebx+0C],eax
 004EBF81    lea        eax,[ebx+10]
 004EBF84    mov        edx,dword ptr [ebp+18]
 004EBF87    call       @LStrFromPChar
 004EBF8C    lea        eax,[ebx+14]
 004EBF8F    mov        edx,dword ptr [ebp+1C]
 004EBF92    call       @LStrFromPChar
 004EBF97    lea        eax,[ebx+18]
 004EBF9A    mov        edx,dword ptr [ebp+20]
 004EBF9D    call       @LStrFromPChar
 004EBFA2    mov        ax,word ptr [ebp+24]
 004EBFA6    mov        word ptr [ebx+1C],ax
 004EBFAA    mov        edx,ebx
 004EBFAC    mov        eax,[0061DFFC]; gvar_0061DFFC:TList
 004EBFB1    call       TList.Add
 004EBFB6    xor        eax,eax
 004EBFB8    pop        ebx
 004EBFB9    pop        ebp
 004EBFBA    ret        20
*}
//end;

//004EC020
//function sub_004EC020:?;
//begin
{*
 004EC020    push       ebp
 004EC021    mov        ebp,esp
 004EC023    push       ebx
 004EC024    push       esi
 004EC025    mov        esi,eax
 004EC027    mov        eax,esi
 004EC029    call       004EBCD0
 004EC02E    mov        ebx,eax
 004EC030    test       bl,bl
>004EC032    je         004EC9BB
 004EC038    mov        edx,4EC9C4
 004EC03D    mov        eax,esi
 004EC03F    call       004EBE38
 004EC044    mov        [0061DDC0],eax; gvar_0061DDC0
 004EC049    mov        edx,4EC9D0
 004EC04E    mov        eax,esi
 004EC050    call       004EBE38
 004EC055    mov        [0061DDC4],eax; gvar_0061DDC4
 004EC05A    mov        edx,4EC9DC
 004EC05F    mov        eax,esi
 004EC061    call       004EBE38
 004EC066    mov        [0061DDC8],eax; gvar_0061DDC8
 004EC06B    mov        edx,4EC9E8
 004EC070    mov        eax,esi
 004EC072    call       004EBE38
 004EC077    mov        [0061DDCC],eax; gvar_0061DDCC
 004EC07C    mov        edx,4EC9F4
 004EC081    mov        eax,esi
 004EC083    call       004EBE38
 004EC088    mov        [0061DDD0],eax; gvar_0061DDD0
 004EC08D    mov        edx,4ECA08
 004EC092    mov        eax,esi
 004EC094    call       004EBE38
 004EC099    mov        [0061DDD4],eax; gvar_0061DDD4
 004EC09E    mov        edx,4ECA18
 004EC0A3    mov        eax,esi
 004EC0A5    call       004EBE38
 004EC0AA    mov        [0061DDD8],eax; gvar_0061DDD8
 004EC0AF    mov        edx,4ECA24
 004EC0B4    mov        eax,esi
 004EC0B6    call       004EBE38
 004EC0BB    mov        [0061DDDC],eax; gvar_0061DDDC
 004EC0C0    mov        edx,4ECA30
 004EC0C5    mov        eax,esi
 004EC0C7    call       004EBE38
 004EC0CC    mov        [0061DDE0],eax; gvar_0061DDE0
 004EC0D1    mov        edx,4ECA3C
 004EC0D6    mov        eax,esi
 004EC0D8    call       004EBE38
 004EC0DD    mov        [0061DDE4],eax; gvar_0061DDE4
 004EC0E2    mov        edx,4ECA48
 004EC0E7    mov        eax,esi
 004EC0E9    call       004EBE38
 004EC0EE    mov        [0061DDE8],eax; gvar_0061DDE8
 004EC0F3    mov        edx,4ECA54
 004EC0F8    mov        eax,esi
 004EC0FA    call       004EBE38
 004EC0FF    mov        [0061DDEC],eax; gvar_0061DDEC
 004EC104    mov        edx,4ECA60
 004EC109    mov        eax,esi
 004EC10B    call       004EBE38
 004EC110    mov        [0061DDF0],eax; gvar_0061DDF0
 004EC115    mov        edx,4ECA6C
 004EC11A    mov        eax,esi
 004EC11C    call       004EBE38
 004EC121    mov        [0061DDF4],eax; gvar_0061DDF4
 004EC126    mov        edx,4ECA78
 004EC12B    mov        eax,esi
 004EC12D    call       004EBE38
 004EC132    mov        [0061DDF8],eax; gvar_0061DDF8
 004EC137    mov        edx,4ECA84
 004EC13C    mov        eax,esi
 004EC13E    call       004EBE38
 004EC143    mov        [0061DDFC],eax; gvar_0061DDFC
 004EC148    mov        edx,4ECA90
 004EC14D    mov        eax,esi
 004EC14F    call       004EBE38
 004EC154    mov        [0061DE00],eax; gvar_0061DE00
 004EC159    mov        edx,4ECA9C
 004EC15E    mov        eax,esi
 004EC160    call       004EBE38
 004EC165    mov        [0061DE04],eax; gvar_0061DE04
 004EC16A    mov        edx,4ECAA8
 004EC16F    mov        eax,esi
 004EC171    call       004EBE38
 004EC176    mov        [0061DE08],eax; gvar_0061DE08
 004EC17B    mov        edx,4ECAB4
 004EC180    mov        eax,esi
 004EC182    call       004EBE38
 004EC187    mov        [0061DE0C],eax; gvar_0061DE0C
 004EC18C    mov        edx,4ECAC0
 004EC191    mov        eax,esi
 004EC193    call       004EBE38
 004EC198    mov        [0061DE10],eax; gvar_0061DE10
 004EC19D    mov        edx,4ECACC
 004EC1A2    mov        eax,esi
 004EC1A4    call       004EBE38
 004EC1A9    mov        [0061DE14],eax; gvar_0061DE14
 004EC1AE    mov        edx,4ECAD8
 004EC1B3    mov        eax,esi
 004EC1B5    call       004EBE38
 004EC1BA    mov        [0061DE18],eax; gvar_0061DE18
 004EC1BF    mov        edx,4ECAE8
 004EC1C4    mov        eax,esi
 004EC1C6    call       004EBE38
 004EC1CB    mov        [0061DE1C],eax; gvar_0061DE1C
 004EC1D0    mov        edx,4ECAF4
 004EC1D5    mov        eax,esi
 004EC1D7    call       004EBE38
 004EC1DC    mov        [0061DE20],eax; gvar_0061DE20
 004EC1E1    mov        edx,4ECB00
 004EC1E6    mov        eax,esi
 004EC1E8    call       004EBE38
 004EC1ED    mov        [0061DE24],eax; gvar_0061DE24
 004EC1F2    mov        edx,4ECB10
 004EC1F7    mov        eax,esi
 004EC1F9    call       004EBE38
 004EC1FE    mov        [0061DE28],eax; gvar_0061DE28
 004EC203    mov        edx,4ECB18
 004EC208    mov        eax,esi
 004EC20A    call       004EBE38
 004EC20F    mov        [0061DE2C],eax; gvar_0061DE2C
 004EC214    mov        edx,4ECB20
 004EC219    mov        eax,esi
 004EC21B    call       004EBE38
 004EC220    mov        [0061DE30],eax; gvar_0061DE30
 004EC225    mov        edx,4ECB2C
 004EC22A    mov        eax,esi
 004EC22C    call       004EBE38
 004EC231    mov        [0061DE34],eax; gvar_0061DE34
 004EC236    mov        edx,4ECB38
 004EC23B    mov        eax,esi
 004EC23D    call       004EBE38
 004EC242    mov        [0061DE38],eax; gvar_0061DE38
 004EC247    mov        edx,4ECB44
 004EC24C    mov        eax,esi
 004EC24E    call       004EBE38
 004EC253    mov        [0061DE3C],eax; gvar_0061DE3C
 004EC258    mov        edx,4ECB4C
 004EC25D    mov        eax,esi
 004EC25F    call       004EBE38
 004EC264    mov        [0061DE40],eax; gvar_0061DE40
 004EC269    mov        edx,4ECB58
 004EC26E    mov        eax,esi
 004EC270    call       004EBE38
 004EC275    mov        [0061DE44],eax; gvar_0061DE44
 004EC27A    mov        edx,4ECB64
 004EC27F    mov        eax,esi
 004EC281    call       004EBE38
 004EC286    mov        [0061DE48],eax; gvar_0061DE48
 004EC28B    mov        edx,4ECB70
 004EC290    mov        eax,esi
 004EC292    call       004EBE38
 004EC297    mov        [0061DE4C],eax; gvar_0061DE4C
 004EC29C    mov        edx,4ECB78
 004EC2A1    mov        eax,esi
 004EC2A3    call       004EBE38
 004EC2A8    mov        [0061DE50],eax; gvar_0061DE50
 004EC2AD    mov        edx,4ECB84
 004EC2B2    mov        eax,esi
 004EC2B4    call       004EBE38
 004EC2B9    mov        [0061DE54],eax; gvar_0061DE54
 004EC2BE    mov        edx,4ECB90
 004EC2C3    mov        eax,esi
 004EC2C5    call       004EBE38
 004EC2CA    mov        [0061DE58],eax; gvar_0061DE58
 004EC2CF    mov        edx,4ECB9C
 004EC2D4    mov        eax,esi
 004EC2D6    call       004EBE38
 004EC2DB    mov        [0061DE5C],eax; gvar_0061DE5C
 004EC2E0    mov        edx,4ECBA8
 004EC2E5    mov        eax,esi
 004EC2E7    call       004EBE38
 004EC2EC    mov        [0061DE60],eax; gvar_0061DE60
 004EC2F1    mov        edx,4ECBB0
 004EC2F6    mov        eax,esi
 004EC2F8    call       004EBE38
 004EC2FD    mov        [0061DE64],eax; gvar_0061DE64
 004EC302    mov        edx,4ECBBC
 004EC307    mov        eax,esi
 004EC309    call       004EBE38
 004EC30E    mov        [0061DE68],eax; gvar_0061DE68
 004EC313    mov        edx,4ECBC8
 004EC318    mov        eax,esi
 004EC31A    call       004EBE38
 004EC31F    mov        [0061DE6C],eax; gvar_0061DE6C
 004EC324    mov        edx,4ECBD0
 004EC329    mov        eax,esi
 004EC32B    call       004EBE38
 004EC330    mov        [0061DE70],eax; gvar_0061DE70
 004EC335    mov        edx,4ECBDC
 004EC33A    mov        eax,esi
 004EC33C    call       004EBE38
 004EC341    mov        [0061DE74],eax; gvar_0061DE74
 004EC346    mov        edx,4ECBE8
 004EC34B    mov        eax,esi
 004EC34D    call       004EBE38
 004EC352    mov        [0061DE78],eax; gvar_0061DE78
 004EC357    mov        edx,4ECBF4
 004EC35C    mov        eax,esi
 004EC35E    call       004EBE38
 004EC363    mov        [0061DE7C],eax; gvar_0061DE7C
 004EC368    mov        edx,4ECC00
 004EC36D    mov        eax,esi
 004EC36F    call       004EBE38
 004EC374    mov        [0061DE80],eax; gvar_0061DE80
 004EC379    mov        edx,4ECC0C
 004EC37E    mov        eax,esi
 004EC380    call       004EBE38
 004EC385    mov        [0061DE84],eax; gvar_0061DE84
 004EC38A    mov        edx,4ECC18
 004EC38F    mov        eax,esi
 004EC391    call       004EBE38
 004EC396    mov        [0061DE88],eax; gvar_0061DE88
 004EC39B    mov        edx,4ECC24
 004EC3A0    mov        eax,esi
 004EC3A2    call       004EBE38
 004EC3A7    mov        [0061DE8C],eax; gvar_0061DE8C
 004EC3AC    mov        edx,4ECC30
 004EC3B1    mov        eax,esi
 004EC3B3    call       004EBE38
 004EC3B8    mov        [0061DE90],eax; gvar_0061DE90
 004EC3BD    mov        edx,4ECC38
 004EC3C2    mov        eax,esi
 004EC3C4    call       004EBE38
 004EC3C9    mov        [0061DE94],eax; gvar_0061DE94
 004EC3CE    mov        edx,4ECC44
 004EC3D3    mov        eax,esi
 004EC3D5    call       004EBE38
 004EC3DA    mov        [0061DE98],eax; gvar_0061DE98
 004EC3DF    mov        edx,4ECC50
 004EC3E4    mov        eax,esi
 004EC3E6    call       004EBE38
 004EC3EB    mov        [0061DE9C],eax; gvar_0061DE9C
 004EC3F0    mov        edx,4ECC5C
 004EC3F5    mov        eax,esi
 004EC3F7    call       004EBE38
 004EC3FC    mov        [0061DEA0],eax; gvar_0061DEA0
 004EC401    mov        edx,4ECC6C
 004EC406    mov        eax,esi
 004EC408    call       004EBE38
 004EC40D    mov        [0061DEA4],eax; gvar_0061DEA4
 004EC412    mov        edx,4ECC7C
 004EC417    mov        eax,esi
 004EC419    call       004EBE38
 004EC41E    mov        [0061DEA8],eax; gvar_0061DEA8
 004EC423    mov        edx,4ECC8C
 004EC428    mov        eax,esi
 004EC42A    call       004EBE38
 004EC42F    mov        [0061DEAC],eax; gvar_0061DEAC
 004EC434    mov        edx,4ECC9C
 004EC439    mov        eax,esi
 004EC43B    call       004EBE38
 004EC440    mov        [0061DEB0],eax; gvar_0061DEB0
 004EC445    mov        edx,4ECCAC
 004EC44A    mov        eax,esi
 004EC44C    call       004EBE38
 004EC451    mov        [0061DEB4],eax; gvar_0061DEB4
 004EC456    mov        edx,4ECCBC
 004EC45B    mov        eax,esi
 004EC45D    call       004EBE38
 004EC462    mov        [0061DEB8],eax; gvar_0061DEB8
 004EC467    mov        edx,4ECCC4
 004EC46C    mov        eax,esi
 004EC46E    call       004EBE38
 004EC473    mov        [0061DEBC],eax; gvar_0061DEBC
 004EC478    mov        edx,4ECCD0
 004EC47D    mov        eax,esi
 004EC47F    call       004EBE38
 004EC484    mov        [0061DEC0],eax; gvar_0061DEC0
 004EC489    mov        edx,4ECCDC
 004EC48E    mov        eax,esi
 004EC490    call       004EBE38
 004EC495    mov        [0061DEC4],eax; gvar_0061DEC4
 004EC49A    mov        edx,4ECCE4
 004EC49F    mov        eax,esi
 004EC4A1    call       004EBE38
 004EC4A6    mov        [0061DEC8],eax; gvar_0061DEC8
 004EC4AB    mov        edx,4ECCEC
 004EC4B0    mov        eax,esi
 004EC4B2    call       004EBE38
 004EC4B7    mov        [0061DECC],eax; gvar_0061DECC
 004EC4BC    mov        edx,4ECCF4
 004EC4C1    mov        eax,esi
 004EC4C3    call       004EBE38
 004EC4C8    mov        [0061DED0],eax; gvar_0061DED0
 004EC4CD    mov        edx,4ECD00
 004EC4D2    mov        eax,esi
 004EC4D4    call       004EBE38
 004EC4D9    mov        [0061DED4],eax; gvar_0061DED4
 004EC4DE    mov        edx,4ECD0C
 004EC4E3    mov        eax,esi
 004EC4E5    call       004EBE38
 004EC4EA    mov        [0061DED8],eax; gvar_0061DED8
 004EC4EF    mov        edx,4ECD18
 004EC4F4    mov        eax,esi
 004EC4F6    call       004EBE38
 004EC4FB    mov        [0061DEDC],eax; gvar_0061DEDC
 004EC500    mov        edx,4ECD24
 004EC505    mov        eax,esi
 004EC507    call       004EBE38
 004EC50C    mov        [0061DEE0],eax; gvar_0061DEE0
 004EC511    mov        edx,4ECD30
 004EC516    mov        eax,esi
 004EC518    call       004EBE38
 004EC51D    mov        [0061DEE4],eax; gvar_0061DEE4
 004EC522    mov        edx,4ECD40
 004EC527    mov        eax,esi
 004EC529    call       004EBE38
 004EC52E    mov        [0061DEE8],eax; gvar_0061DEE8
 004EC533    mov        edx,4ECD4C
 004EC538    mov        eax,esi
 004EC53A    call       004EBE38
 004EC53F    mov        [0061DEEC],eax; gvar_0061DEEC
 004EC544    mov        edx,4ECD58
 004EC549    mov        eax,esi
 004EC54B    call       004EBE38
 004EC550    mov        [0061DEF0],eax; gvar_0061DEF0
 004EC555    mov        edx,4ECD64
 004EC55A    mov        eax,esi
 004EC55C    call       004EBE38
 004EC561    mov        [0061DEF4],eax; gvar_0061DEF4
 004EC566    mov        edx,4ECD74
 004EC56B    mov        eax,esi
 004EC56D    call       004EBE38
 004EC572    mov        [0061DEF8],eax; gvar_0061DEF8
 004EC577    mov        edx,4ECD84
 004EC57C    mov        eax,esi
 004EC57E    call       004EBE38
 004EC583    mov        [0061DEFC],eax; gvar_0061DEFC
 004EC588    mov        edx,4ECD8C
 004EC58D    mov        eax,esi
 004EC58F    call       004EBE38
 004EC594    mov        [0061DF00],eax; gvar_0061DF00
 004EC599    mov        edx,4ECD98
 004EC59E    mov        eax,esi
 004EC5A0    call       004EBE38
 004EC5A5    mov        [0061DF04],eax; gvar_0061DF04
 004EC5AA    mov        edx,4ECDA0
 004EC5AF    mov        eax,esi
 004EC5B1    call       004EBE38
 004EC5B6    mov        [0061DF08],eax; gvar_0061DF08
 004EC5BB    mov        edx,4ECDAC
 004EC5C0    mov        eax,esi
 004EC5C2    call       004EBE38
 004EC5C7    mov        [0061DF0C],eax; gvar_0061DF0C
 004EC5CC    mov        edx,4ECDB4
 004EC5D1    mov        eax,esi
 004EC5D3    call       004EBE38
 004EC5D8    mov        [0061DF10],eax; gvar_0061DF10
 004EC5DD    mov        edx,4ECDC0
 004EC5E2    mov        eax,esi
 004EC5E4    call       004EBE38
 004EC5E9    mov        [0061DF14],eax; gvar_0061DF14
 004EC5EE    mov        edx,4ECDCC
 004EC5F3    mov        eax,esi
 004EC5F5    call       004EBE38
 004EC5FA    mov        [0061DF18],eax; gvar_0061DF18
 004EC5FF    mov        edx,4ECDD4
 004EC604    mov        eax,esi
 004EC606    call       004EBE38
 004EC60B    mov        [0061DF1C],eax; gvar_0061DF1C
 004EC610    mov        edx,4ECDE0
 004EC615    mov        eax,esi
 004EC617    call       004EBE38
 004EC61C    mov        [0061DF20],eax; gvar_0061DF20
 004EC621    mov        edx,4ECDEC
 004EC626    mov        eax,esi
 004EC628    call       004EBE38
 004EC62D    mov        [0061DF24],eax; gvar_0061DF24
 004EC632    mov        edx,4ECDF8
 004EC637    mov        eax,esi
 004EC639    call       004EBE38
 004EC63E    mov        [0061DF28],eax; gvar_0061DF28
 004EC643    mov        edx,4ECE04
 004EC648    mov        eax,esi
 004EC64A    call       004EBE38
 004EC64F    mov        [0061DF2C],eax; gvar_0061DF2C
 004EC654    mov        edx,4ECE14
 004EC659    mov        eax,esi
 004EC65B    call       004EBE38
 004EC660    mov        [0061DF30],eax; gvar_0061DF30
 004EC665    mov        edx,4ECE20
 004EC66A    mov        eax,esi
 004EC66C    call       004EBE38
 004EC671    mov        [0061DF34],eax; gvar_0061DF34
 004EC676    mov        edx,4ECE2C
 004EC67B    mov        eax,esi
 004EC67D    call       004EBE38
 004EC682    mov        [0061DF38],eax; gvar_0061DF38
 004EC687    mov        edx,4ECE34
 004EC68C    mov        eax,esi
 004EC68E    call       004EBE38
 004EC693    mov        [0061DF3C],eax; gvar_0061DF3C
 004EC698    mov        edx,4ECE40
 004EC69D    mov        eax,esi
 004EC69F    call       004EBE38
 004EC6A4    mov        [0061DF40],eax; gvar_0061DF40
 004EC6A9    mov        edx,4ECE4C
 004EC6AE    mov        eax,esi
 004EC6B0    call       004EBE38
 004EC6B5    mov        [0061DF44],eax; gvar_0061DF44
 004EC6BA    mov        edx,4ECE54
 004EC6BF    mov        eax,esi
 004EC6C1    call       004EBE38
 004EC6C6    mov        [0061DF48],eax; gvar_0061DF48
 004EC6CB    mov        edx,4ECE60
 004EC6D0    mov        eax,esi
 004EC6D2    call       004EBE38
 004EC6D7    mov        [0061DF4C],eax; gvar_0061DF4C
 004EC6DC    mov        edx,4ECE68
 004EC6E1    mov        eax,esi
 004EC6E3    call       004EBE38
 004EC6E8    mov        [0061DF50],eax; gvar_0061DF50
 004EC6ED    mov        edx,4ECE74
 004EC6F2    mov        eax,esi
 004EC6F4    call       004EBE38
 004EC6F9    mov        [0061DF54],eax; gvar_0061DF54
 004EC6FE    mov        edx,4ECE80
 004EC703    mov        eax,esi
 004EC705    call       004EBE38
 004EC70A    mov        [0061DF58],eax; gvar_0061DF58
 004EC70F    mov        edx,4ECE8C
 004EC714    mov        eax,esi
 004EC716    call       004EBE38
 004EC71B    mov        [0061DF5C],eax; gvar_0061DF5C
 004EC720    mov        edx,4ECE98
 004EC725    mov        eax,esi
 004EC727    call       004EBE38
 004EC72C    mov        [0061DF60],eax; gvar_0061DF60
 004EC731    mov        edx,4ECEA4
 004EC736    mov        eax,esi
 004EC738    call       004EBE38
 004EC73D    mov        [0061DF64],eax; gvar_0061DF64
 004EC742    mov        edx,4ECEB0
 004EC747    mov        eax,esi
 004EC749    call       004EBE38
 004EC74E    mov        [0061DF68],eax; gvar_0061DF68
 004EC753    mov        edx,4ECEBC
 004EC758    mov        eax,esi
 004EC75A    call       004EBE38
 004EC75F    mov        [0061DF6C],eax; gvar_0061DF6C
 004EC764    mov        edx,4ECEC4
 004EC769    mov        eax,esi
 004EC76B    call       004EBE38
 004EC770    mov        [0061DF70],eax; gvar_0061DF70
 004EC775    mov        edx,4ECED0
 004EC77A    mov        eax,esi
 004EC77C    call       004EBE38
 004EC781    mov        [0061DF74],eax; gvar_0061DF74
 004EC786    mov        edx,4ECEDC
 004EC78B    mov        eax,esi
 004EC78D    call       004EBE38
 004EC792    mov        [0061DF78],eax; gvar_0061DF78
 004EC797    mov        edx,4ECEE8
 004EC79C    mov        eax,esi
 004EC79E    call       004EBE38
 004EC7A3    mov        [0061DF7C],eax; gvar_0061DF7C
 004EC7A8    mov        edx,4ECEF4
 004EC7AD    mov        eax,esi
 004EC7AF    call       004EBE38
 004EC7B4    mov        [0061DF80],eax; gvar_0061DF80
 004EC7B9    mov        edx,4ECF00
 004EC7BE    mov        eax,esi
 004EC7C0    call       004EBE38
 004EC7C5    mov        [0061DF84],eax; gvar_0061DF84
 004EC7CA    mov        edx,4ECF0C
 004EC7CF    mov        eax,esi
 004EC7D1    call       004EBE38
 004EC7D6    mov        [0061DF88],eax; gvar_0061DF88
 004EC7DB    mov        edx,4ECF1C
 004EC7E0    mov        eax,esi
 004EC7E2    call       004EBE38
 004EC7E7    mov        [0061DF8C],eax; gvar_0061DF8C
 004EC7EC    mov        edx,4ECF28
 004EC7F1    mov        eax,esi
 004EC7F3    call       004EBE38
 004EC7F8    mov        [0061DF90],eax; gvar_0061DF90
 004EC7FD    mov        edx,4ECF38
 004EC802    mov        eax,esi
 004EC804    call       004EBE38
 004EC809    mov        [0061DF94],eax; gvar_0061DF94
 004EC80E    mov        edx,4ECF44
 004EC813    mov        eax,esi
 004EC815    call       004EBE38
 004EC81A    mov        [0061DF98],eax; gvar_0061DF98
 004EC81F    mov        edx,4ECF50
 004EC824    mov        eax,esi
 004EC826    call       004EBE38
 004EC82B    mov        [0061DF9C],eax; gvar_0061DF9C
 004EC830    mov        edx,4ECF5C
 004EC835    mov        eax,esi
 004EC837    call       004EBE38
 004EC83C    mov        [0061DFA0],eax; gvar_0061DFA0
 004EC841    mov        edx,4ECF6C
 004EC846    mov        eax,esi
 004EC848    call       004EBE38
 004EC84D    mov        [0061DFA4],eax; gvar_0061DFA4
 004EC852    mov        edx,4ECF78
 004EC857    mov        eax,esi
 004EC859    call       004EBE38
 004EC85E    mov        [0061DFA8],eax; gvar_0061DFA8
 004EC863    mov        edx,4ECF80
 004EC868    mov        eax,esi
 004EC86A    call       004EBE38
 004EC86F    mov        [0061DFAC],eax; gvar_0061DFAC
 004EC874    mov        edx,4ECF8C
 004EC879    mov        eax,esi
 004EC87B    call       004EBE38
 004EC880    mov        [0061DFB0],eax; gvar_0061DFB0
 004EC885    mov        edx,4ECF98
 004EC88A    mov        eax,esi
 004EC88C    call       004EBE38
 004EC891    mov        [0061DFB4],eax; gvar_0061DFB4
 004EC896    mov        edx,4ECFA4
 004EC89B    mov        eax,esi
 004EC89D    call       004EBE38
 004EC8A2    mov        [0061DFB8],eax; gvar_0061DFB8
 004EC8A7    mov        edx,4ECFB0
 004EC8AC    mov        eax,esi
 004EC8AE    call       004EBE38
 004EC8B3    mov        [0061DFBC],eax; gvar_0061DFBC
 004EC8B8    mov        edx,4ECFBC
 004EC8BD    mov        eax,esi
 004EC8BF    call       004EBE38
 004EC8C4    mov        [0061DFC0],eax; gvar_0061DFC0
 004EC8C9    mov        edx,4ECFC8
 004EC8CE    mov        eax,esi
 004EC8D0    call       004EBE38
 004EC8D5    mov        [0061DFC4],eax; gvar_0061DFC4
 004EC8DA    mov        edx,4ECFD4
 004EC8DF    mov        eax,esi
 004EC8E1    call       004EBE38
 004EC8E6    mov        [0061DFC8],eax; gvar_0061DFC8
 004EC8EB    mov        edx,4ECFE0
 004EC8F0    mov        eax,esi
 004EC8F2    call       004EBE38
 004EC8F7    mov        [0061DFCC],eax; gvar_0061DFCC
 004EC8FC    mov        edx,4ECFEC
 004EC901    mov        eax,esi
 004EC903    call       004EBE38
 004EC908    mov        [0061DFD0],eax; gvar_0061DFD0
 004EC90D    mov        edx,4ECFF4
 004EC912    mov        eax,esi
 004EC914    call       004EBE38
 004EC919    mov        [0061DFD4],eax; gvar_0061DFD4
 004EC91E    mov        edx,4ECFFC
 004EC923    mov        eax,esi
 004EC925    call       004EBE38
 004EC92A    mov        [0061DFD8],eax; gvar_0061DFD8
 004EC92F    mov        edx,4ED00C
 004EC934    mov        eax,esi
 004EC936    call       004EBE38
 004EC93B    mov        [0061DFDC],eax; gvar_0061DFDC
 004EC940    mov        edx,4ED01C
 004EC945    mov        eax,esi
 004EC947    call       004EBE38
 004EC94C    mov        [0061DFE0],eax; gvar_0061DFE0
 004EC951    mov        edx,4ED028
 004EC956    mov        eax,esi
 004EC958    call       004EBE38
 004EC95D    mov        [0061DFE4],eax; gvar_0061DFE4
 004EC962    mov        edx,4ED030
 004EC967    mov        eax,esi
 004EC969    call       004EBE38
 004EC96E    mov        [0061DFE8],eax; gvar_0061DFE8
 004EC973    mov        edx,4ED03C
 004EC978    mov        eax,esi
 004EC97A    call       004EBE38
 004EC97F    mov        [0061DFEC],eax; gvar_0061DFEC
 004EC984    mov        edx,4ED04C
 004EC989    mov        eax,esi
 004EC98B    call       004EBE38
 004EC990    mov        [0061DFF0],eax; gvar_0061DFF0
 004EC995    call       dword ptr ds:[61DEFC]
 004EC99B    push       4EBEF8; sub_004EBEF8
 004EC9A0    call       dword ptr ds:[61DDC4]
 004EC9A6    mov        [00616008],eax; gvar_00616008
 004EC9AB    push       4EBF54; sub_004EBF54
 004EC9B0    call       dword ptr ds:[61DDC8]
 004EC9B6    mov        [0061600C],eax; gvar_0061600C
 004EC9BB    mov        eax,ebx
 004EC9BD    pop        esi
 004EC9BE    pop        ebx
 004EC9BF    pop        ebp
 004EC9C0    ret
*}
//end;

//004ED058
procedure sub_004ED058;
begin
{*
 004ED058    push       ebp
 004ED059    mov        ebp,esp
 004ED05B    push       ebx
 004ED05C    mov        ebx,eax
 004ED05E    mov        eax,[00616008]; gvar_00616008
 004ED063    push       eax
 004ED064    call       dword ptr ds:[61DDC4]
 004ED06A    mov        eax,[0061600C]; gvar_0061600C
 004ED06F    push       eax
 004ED070    call       dword ptr ds:[61DDC8]
 004ED076    call       dword ptr ds:[61DEC8]
 004ED07C    mov        eax,ebx
 004ED07E    call       004EBE10
 004ED083    pop        ebx
 004ED084    pop        ebp
 004ED085    ret
*}
end;

Initialization
//004ED140
{*
 004ED140    push       ebp
 004ED141    mov        ebp,esp
 004ED143    push       ecx
 004ED144    sub        dword ptr ds:[61E000],1
>004ED14B    jae        004ED18D
 004ED14D    mov        dl,1
 004ED14F    mov        eax,[0041C260]; TList
 004ED154    call       TObject.Create; TList.Create
 004ED159    mov        [0061DFF8],eax; gvar_0061DFF8:TList
 004ED15E    mov        dl,1
 004ED160    mov        eax,[0041C260]; TList
 004ED165    call       TObject.Create; TList.Create
 004ED16A    mov        [0061DFFC],eax; gvar_0061DFFC:TList
 004ED16F    push       0
 004ED171    mov        eax,4ED198; 'libsybdb.dll'
 004ED176    mov        dword ptr [ebp-4],eax
 004ED179    lea        ecx,[ebp-4]
 004ED17C    mov        dl,1
 004ED17E    mov        eax,[004EBE80]; TZSybaseNativeLibraryLoader
 004ED183    call       TZSybaseNativeLibraryLoader.Create; TZSybaseNativeLibraryLoader.Create
 004ED188    mov        [0061DFF4],eax; gvar_0061DFF4:TZSybaseNativeLibraryLoader
 004ED18D    pop        ecx
 004ED18E    pop        ebp
 004ED18F    ret
*}
Finalization
//004ED088
{*
 004ED088    push       ebp
 004ED089    mov        ebp,esp
 004ED08B    push       ebx
 004ED08C    push       esi
 004ED08D    mov        ebx,61DFFC; gvar_0061DFFC:TList
 004ED092    mov        esi,61DFF8; gvar_0061DFF8:TList
 004ED097    xor        eax,eax
 004ED099    push       ebp
 004ED09A    push       4ED134
 004ED09F    push       dword ptr fs:[eax]
 004ED0A2    mov        dword ptr fs:[eax],esp
 004ED0A5    inc        dword ptr ds:[61E000]
>004ED0AB    jne        004ED126
 004ED0AD    cmp        dword ptr ds:[61DFF4],0; gvar_0061DFF4:TZSybaseNativeLibraryLoader
>004ED0B4    je         004ED0DB
 004ED0B6    mov        eax,[0061DFF4]; gvar_0061DFF4:TZSybaseNativeLibraryLoader
 004ED0BB    call       TObject.Free
>004ED0C0    jmp        004ED0DB
 004ED0C2    xor        edx,edx
 004ED0C4    mov        eax,dword ptr [ebx]
 004ED0C6    call       TList.Get
 004ED0CB    xor        edx,edx
 004ED0CD    call       @FreeMem
 004ED0D2    xor        edx,edx
 004ED0D4    mov        eax,dword ptr [ebx]
 004ED0D6    call       TList.Delete
 004ED0DB    mov        eax,dword ptr [ebx]
 004ED0DD    cmp        dword ptr [eax+8],0; TList.FCount:Integer
<004ED0E1    jg         004ED0C2
 004ED0E3    cmp        dword ptr [ebx],0
>004ED0E6    je         004ED10E
 004ED0E8    mov        eax,dword ptr [ebx]
 004ED0EA    call       TObject.Free
 004ED0EF    xor        eax,eax
 004ED0F1    mov        dword ptr [ebx],eax
>004ED0F3    jmp        004ED10E
 004ED0F5    xor        edx,edx
 004ED0F7    mov        eax,dword ptr [esi]
 004ED0F9    call       TList.Get
 004ED0FE    xor        edx,edx
 004ED100    call       @FreeMem
 004ED105    xor        edx,edx
 004ED107    mov        eax,dword ptr [esi]
 004ED109    call       TList.Delete
 004ED10E    mov        eax,dword ptr [esi]
 004ED110    cmp        dword ptr [eax+8],0; TList.FCount:Integer
<004ED114    jg         004ED0F5
 004ED116    cmp        dword ptr [esi],0
>004ED119    je         004ED126
 004ED11B    mov        eax,dword ptr [esi]
 004ED11D    call       TObject.Free
 004ED122    xor        eax,eax
 004ED124    mov        dword ptr [esi],eax
 004ED126    xor        eax,eax
 004ED128    pop        edx
 004ED129    pop        ecx
 004ED12A    pop        ecx
 004ED12B    mov        dword ptr fs:[eax],edx
 004ED12E    push       4ED13B
 004ED133    ret
<004ED134    jmp        @HandleFinally
<004ED139    jmp        004ED133
 004ED13B    pop        esi
 004ED13C    pop        ebx
 004ED13D    pop        ebp
 004ED13E    ret
*}
end.