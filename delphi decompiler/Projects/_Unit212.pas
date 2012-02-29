{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit212;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZMSSqlNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    procedure sub_004EE584; virtual;
    //function sub_004ED358:?; virtual;
  end;

implementation

{$R *.DFM}

//004ED1A8
//function sub_004ED1A8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004ED1A8    push       ebp
 004ED1A9    mov        ebp,esp
 004ED1AB    push       ebx
 004ED1AC    mov        edx,dword ptr ds:[4EE6DC]; TDBLibError
 004ED1B2    mov        eax,18
 004ED1B7    call       @New
 004ED1BC    mov        ebx,eax
 004ED1BE    mov        eax,dword ptr [ebp+8]
 004ED1C1    mov        dword ptr [ebx],eax
 004ED1C3    mov        eax,dword ptr [ebp+0C]
 004ED1C6    mov        dword ptr [ebx+4],eax
 004ED1C9    mov        eax,dword ptr [ebp+10]
 004ED1CC    mov        dword ptr [ebx+8],eax
 004ED1CF    mov        eax,dword ptr [ebp+14]
 004ED1D2    mov        dword ptr [ebx+0C],eax
 004ED1D5    lea        eax,[ebx+10]
 004ED1D8    mov        edx,dword ptr [ebp+18]
 004ED1DB    call       @LStrFromPChar
 004ED1E0    lea        eax,[ebx+14]
 004ED1E3    mov        edx,dword ptr [ebp+1C]
 004ED1E6    call       @LStrFromPChar
 004ED1EB    mov        edx,ebx
 004ED1ED    mov        eax,[0061E27C]; gvar_0061E27C:TList
 004ED1F2    call       TList.Add
 004ED1F7    mov        eax,2
 004ED1FC    pop        ebx
 004ED1FD    pop        ebp
 004ED1FE    ret
*}
//end;

//004ED200
//function sub_004ED200(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004ED200    push       ebp
 004ED201    mov        ebp,esp
 004ED203    push       ebx
 004ED204    mov        edx,dword ptr ds:[4EE708]; TDBLibMessage
 004ED20A    mov        eax,20
 004ED20F    call       @New
 004ED214    mov        ebx,eax
 004ED216    mov        eax,dword ptr [ebp+8]
 004ED219    mov        dword ptr [ebx],eax
 004ED21B    mov        eax,dword ptr [ebp+0C]
 004ED21E    mov        dword ptr [ebx+4],eax
 004ED221    mov        eax,dword ptr [ebp+10]
 004ED224    mov        dword ptr [ebx+8],eax
 004ED227    mov        eax,dword ptr [ebp+14]
 004ED22A    mov        dword ptr [ebx+0C],eax
 004ED22D    lea        eax,[ebx+10]
 004ED230    mov        edx,dword ptr [ebp+18]
 004ED233    call       @LStrFromPChar
 004ED238    lea        eax,[ebx+14]
 004ED23B    mov        edx,dword ptr [ebp+1C]
 004ED23E    call       @LStrFromPChar
 004ED243    lea        eax,[ebx+18]
 004ED246    mov        edx,dword ptr [ebp+20]
 004ED249    call       @LStrFromPChar
 004ED24E    mov        ax,word ptr [ebp+24]
 004ED252    mov        word ptr [ebx+1C],ax
 004ED256    mov        edx,ebx
 004ED258    mov        eax,[0061E280]; gvar_0061E280:TList
 004ED25D    call       TList.Add
 004ED262    xor        eax,eax
 004ED264    pop        ebx
 004ED265    pop        ebp
 004ED266    ret
*}
//end;

//004ED358
//function sub_004ED358:?;
//begin
{*
 004ED358    push       ebp
 004ED359    mov        ebp,esp
 004ED35B    push       ebx
 004ED35C    push       esi
 004ED35D    mov        esi,eax
 004ED35F    mov        eax,esi
 004ED361    call       004EBCD0
 004ED366    mov        ebx,eax
 004ED368    test       bl,bl
>004ED36A    je         004EDE05
 004ED370    mov        edx,4EDE0C
 004ED375    mov        eax,esi
 004ED377    call       004EBE38
 004ED37C    mov        [0061E004],eax; gvar_0061E004
 004ED381    mov        edx,4EDE18
 004ED386    mov        eax,esi
 004ED388    call       004EBE38
 004ED38D    mov        [0061E008],eax; gvar_0061E008
 004ED392    mov        edx,4EDE24
 004ED397    mov        eax,esi
 004ED399    call       004EBE38
 004ED39E    mov        [0061E00C],eax; gvar_0061E00C
 004ED3A3    mov        edx,4EDE34
 004ED3A8    mov        eax,esi
 004ED3AA    call       004EBE38
 004ED3AF    mov        [0061E010],eax; gvar_0061E010
 004ED3B4    mov        edx,4EDE44
 004ED3B9    mov        eax,esi
 004ED3BB    call       004EBE38
 004ED3C0    mov        [0061E014],eax; gvar_0061E014
 004ED3C5    mov        edx,4EDE50
 004ED3CA    mov        eax,esi
 004ED3CC    call       004EBE38
 004ED3D1    mov        [0061E018],eax; gvar_0061E018
 004ED3D6    mov        edx,4EDE64
 004ED3DB    mov        eax,esi
 004ED3DD    call       004EBE38
 004ED3E2    mov        [0061E01C],eax; gvar_0061E01C
 004ED3E7    mov        edx,4EDE74
 004ED3EC    mov        eax,esi
 004ED3EE    call       004EBE38
 004ED3F3    mov        [0061E020],eax; gvar_0061E020
 004ED3F8    mov        edx,4EDE80
 004ED3FD    mov        eax,esi
 004ED3FF    call       004EBE38
 004ED404    mov        [0061E024],eax; gvar_0061E024
 004ED409    mov        edx,4EDE8C
 004ED40E    mov        eax,esi
 004ED410    call       004EBE38
 004ED415    mov        [0061E028],eax; gvar_0061E028
 004ED41A    mov        edx,4EDE98
 004ED41F    mov        eax,esi
 004ED421    call       004EBE38
 004ED426    mov        [0061E02C],eax; gvar_0061E02C
 004ED42B    mov        edx,4EDEA4
 004ED430    mov        eax,esi
 004ED432    call       004EBE38
 004ED437    mov        [0061E030],eax; gvar_0061E030
 004ED43C    mov        edx,4EDEB0
 004ED441    mov        eax,esi
 004ED443    call       004EBE38
 004ED448    mov        [0061E034],eax; gvar_0061E034
 004ED44D    mov        edx,4EDEBC
 004ED452    mov        eax,esi
 004ED454    call       004EBE38
 004ED459    mov        [0061E038],eax; gvar_0061E038
 004ED45E    mov        edx,4EDEC8
 004ED463    mov        eax,esi
 004ED465    call       004EBE38
 004ED46A    mov        [0061E03C],eax; gvar_0061E03C
 004ED46F    mov        edx,4EDED4
 004ED474    mov        eax,esi
 004ED476    call       004EBE38
 004ED47B    mov        [0061E040],eax; gvar_0061E040
 004ED480    mov        edx,4EDEE0
 004ED485    mov        eax,esi
 004ED487    call       004EBE38
 004ED48C    mov        [0061E044],eax; gvar_0061E044
 004ED491    mov        edx,4EDEEC
 004ED496    mov        eax,esi
 004ED498    call       004EBE38
 004ED49D    mov        [0061E048],eax; gvar_0061E048
 004ED4A2    mov        edx,4EDEF8
 004ED4A7    mov        eax,esi
 004ED4A9    call       004EBE38
 004ED4AE    mov        [0061E04C],eax; gvar_0061E04C
 004ED4B3    mov        edx,4EDF04
 004ED4B8    mov        eax,esi
 004ED4BA    call       004EBE38
 004ED4BF    mov        [0061E050],eax; gvar_0061E050
 004ED4C4    mov        edx,4EDF10
 004ED4C9    mov        eax,esi
 004ED4CB    call       004EBE38
 004ED4D0    mov        [0061E054],eax; gvar_0061E054
 004ED4D5    mov        edx,4EDF1C
 004ED4DA    mov        eax,esi
 004ED4DC    call       004EBE38
 004ED4E1    mov        [0061E058],eax; gvar_0061E058
 004ED4E6    mov        edx,4EDF28
 004ED4EB    mov        eax,esi
 004ED4ED    call       004EBE38
 004ED4F2    mov        [0061E05C],eax; gvar_0061E05C
 004ED4F7    mov        edx,4EDF34
 004ED4FC    mov        eax,esi
 004ED4FE    call       004EBE38
 004ED503    mov        [0061E060],eax; gvar_0061E060
 004ED508    mov        edx,4EDF44
 004ED50D    mov        eax,esi
 004ED50F    call       004EBE38
 004ED514    mov        [0061E064],eax; gvar_0061E064
 004ED519    mov        edx,4EDF50
 004ED51E    mov        eax,esi
 004ED520    call       004EBE38
 004ED525    mov        [0061E068],eax; gvar_0061E068
 004ED52A    mov        edx,4EDF5C
 004ED52F    mov        eax,esi
 004ED531    call       004EBE38
 004ED536    mov        [0061E06C],eax; gvar_0061E06C
 004ED53B    mov        edx,4EDF68
 004ED540    mov        eax,esi
 004ED542    call       004EBE38
 004ED547    mov        [0061E070],eax; gvar_0061E070
 004ED54C    mov        edx,4EDF78
 004ED551    mov        eax,esi
 004ED553    call       004EBE38
 004ED558    mov        [0061E074],eax; gvar_0061E074
 004ED55D    mov        edx,4EDF80
 004ED562    mov        eax,esi
 004ED564    call       004EBE38
 004ED569    mov        [0061E078],eax; gvar_0061E078
 004ED56E    mov        edx,4EDF88
 004ED573    mov        eax,esi
 004ED575    call       004EBE38
 004ED57A    mov        [0061E07C],eax; gvar_0061E07C
 004ED57F    mov        edx,4EDF94
 004ED584    mov        eax,esi
 004ED586    call       004EBE38
 004ED58B    mov        [0061E080],eax; gvar_0061E080
 004ED590    mov        edx,4EDFA0
 004ED595    mov        eax,esi
 004ED597    call       004EBE38
 004ED59C    mov        [0061E084],eax; gvar_0061E084
 004ED5A1    mov        edx,4EDFAC
 004ED5A6    mov        eax,esi
 004ED5A8    call       004EBE38
 004ED5AD    mov        [0061E088],eax; gvar_0061E088
 004ED5B2    mov        edx,4EDFB4
 004ED5B7    mov        eax,esi
 004ED5B9    call       004EBE38
 004ED5BE    mov        [0061E08C],eax; gvar_0061E08C
 004ED5C3    mov        edx,4EDFC0
 004ED5C8    mov        eax,esi
 004ED5CA    call       004EBE38
 004ED5CF    mov        [0061E090],eax; gvar_0061E090
 004ED5D4    mov        edx,4EDFCC
 004ED5D9    mov        eax,esi
 004ED5DB    call       004EBE38
 004ED5E0    mov        [0061E094],eax; gvar_0061E094
 004ED5E5    mov        edx,4EDFD8
 004ED5EA    mov        eax,esi
 004ED5EC    call       004EBE38
 004ED5F1    mov        [0061E098],eax; gvar_0061E098
 004ED5F6    mov        edx,4EDFE0
 004ED5FB    mov        eax,esi
 004ED5FD    call       004EBE38
 004ED602    mov        [0061E09C],eax; gvar_0061E09C
 004ED607    mov        edx,4EDFEC
 004ED60C    mov        eax,esi
 004ED60E    call       004EBE38
 004ED613    mov        [0061E0A0],eax; gvar_0061E0A0
 004ED618    mov        edx,4EDFF8
 004ED61D    mov        eax,esi
 004ED61F    call       004EBE38
 004ED624    mov        [0061E0A4],eax; gvar_0061E0A4
 004ED629    mov        edx,4EE004
 004ED62E    mov        eax,esi
 004ED630    call       004EBE38
 004ED635    mov        [0061E0A8],eax; gvar_0061E0A8
 004ED63A    mov        edx,4EE010
 004ED63F    mov        eax,esi
 004ED641    call       004EBE38
 004ED646    mov        [0061E0AC],eax; gvar_0061E0AC
 004ED64B    mov        edx,4EE018
 004ED650    mov        eax,esi
 004ED652    call       004EBE38
 004ED657    mov        [0061E0B0],eax; gvar_0061E0B0
 004ED65C    mov        edx,4EE024
 004ED661    mov        eax,esi
 004ED663    call       004EBE38
 004ED668    mov        [0061E0B4],eax; gvar_0061E0B4
 004ED66D    mov        edx,4EE030
 004ED672    mov        eax,esi
 004ED674    call       004EBE38
 004ED679    mov        [0061E0B8],eax; gvar_0061E0B8
 004ED67E    mov        edx,4EE038
 004ED683    mov        eax,esi
 004ED685    call       004EBE38
 004ED68A    mov        [0061E0BC],eax; gvar_0061E0BC
 004ED68F    mov        edx,4EE044
 004ED694    mov        eax,esi
 004ED696    call       004EBE38
 004ED69B    mov        [0061E0C0],eax; gvar_0061E0C0
 004ED6A0    mov        edx,4EE050
 004ED6A5    mov        eax,esi
 004ED6A7    call       004EBE38
 004ED6AC    mov        [0061E0C4],eax; gvar_0061E0C4
 004ED6B1    mov        edx,4EE05C
 004ED6B6    mov        eax,esi
 004ED6B8    call       004EBE38
 004ED6BD    mov        [0061E0C8],eax; gvar_0061E0C8
 004ED6C2    mov        edx,4EE068
 004ED6C7    mov        eax,esi
 004ED6C9    call       004EBE38
 004ED6CE    mov        [0061E0CC],eax; gvar_0061E0CC
 004ED6D3    mov        edx,4EE074
 004ED6D8    mov        eax,esi
 004ED6DA    call       004EBE38
 004ED6DF    mov        [0061E0D0],eax; gvar_0061E0D0
 004ED6E4    mov        edx,4EE080
 004ED6E9    mov        eax,esi
 004ED6EB    call       004EBE38
 004ED6F0    mov        [0061E0D4],eax; gvar_0061E0D4
 004ED6F5    mov        edx,4EE08C
 004ED6FA    mov        eax,esi
 004ED6FC    call       004EBE38
 004ED701    mov        [0061E0D8],eax; gvar_0061E0D8
 004ED706    mov        edx,4EE098
 004ED70B    mov        eax,esi
 004ED70D    call       004EBE38
 004ED712    mov        [0061E0DC],eax; gvar_0061E0DC
 004ED717    mov        edx,4EE0A4
 004ED71C    mov        eax,esi
 004ED71E    call       004EBE38
 004ED723    mov        [0061E0E0],eax; gvar_0061E0E0
 004ED728    mov        edx,4EE0AC
 004ED72D    mov        eax,esi
 004ED72F    call       004EBE38
 004ED734    mov        [0061E0E4],eax; gvar_0061E0E4
 004ED739    mov        edx,4EE0B8
 004ED73E    mov        eax,esi
 004ED740    call       004EBE38
 004ED745    mov        [0061E0E8],eax; gvar_0061E0E8
 004ED74A    mov        edx,4EE0C4
 004ED74F    mov        eax,esi
 004ED751    call       004EBE38
 004ED756    mov        [0061E0EC],eax; gvar_0061E0EC
 004ED75B    mov        edx,4EE0D0
 004ED760    mov        eax,esi
 004ED762    call       004EBE38
 004ED767    mov        [0061E0F0],eax; gvar_0061E0F0
 004ED76C    mov        edx,4EE0E0
 004ED771    mov        eax,esi
 004ED773    call       004EBE38
 004ED778    mov        [0061E0F4],eax; gvar_0061E0F4
 004ED77D    mov        edx,4EE0F0
 004ED782    mov        eax,esi
 004ED784    call       004EBE38
 004ED789    mov        [0061E0F8],eax; gvar_0061E0F8
 004ED78E    mov        edx,4EE100
 004ED793    mov        eax,esi
 004ED795    call       004EBE38
 004ED79A    mov        [0061E0FC],eax; gvar_0061E0FC
 004ED79F    mov        edx,4EE110
 004ED7A4    mov        eax,esi
 004ED7A6    call       004EBE38
 004ED7AB    mov        [0061E100],eax; gvar_0061E100
 004ED7B0    mov        edx,4EE120
 004ED7B5    mov        eax,esi
 004ED7B7    call       004EBE38
 004ED7BC    mov        [0061E104],eax; gvar_0061E104
 004ED7C1    mov        edx,4EE130
 004ED7C6    mov        eax,esi
 004ED7C8    call       004EBE38
 004ED7CD    mov        [0061E108],eax; gvar_0061E108
 004ED7D2    mov        edx,4EE140
 004ED7D7    mov        eax,esi
 004ED7D9    call       004EBE38
 004ED7DE    mov        [0061E10C],eax; gvar_0061E10C
 004ED7E3    mov        edx,4EE150
 004ED7E8    mov        eax,esi
 004ED7EA    call       004EBE38
 004ED7EF    mov        [0061E110],eax; gvar_0061E110
 004ED7F4    mov        edx,4EE158
 004ED7F9    mov        eax,esi
 004ED7FB    call       004EBE38
 004ED800    mov        [0061E114],eax; gvar_0061E114
 004ED805    mov        edx,4EE164
 004ED80A    mov        eax,esi
 004ED80C    call       004EBE38
 004ED811    mov        [0061E118],eax; gvar_0061E118
 004ED816    mov        edx,4EE170
 004ED81B    mov        eax,esi
 004ED81D    call       004EBE38
 004ED822    mov        [0061E11C],eax; gvar_0061E11C
 004ED827    mov        edx,4EE17C
 004ED82C    mov        eax,esi
 004ED82E    call       004EBE38
 004ED833    mov        [0061E120],eax; gvar_0061E120
 004ED838    mov        edx,4EE184
 004ED83D    mov        eax,esi
 004ED83F    call       004EBE38
 004ED844    mov        [0061E124],eax; gvar_0061E124
 004ED849    mov        edx,4EE18C
 004ED84E    mov        eax,esi
 004ED850    call       004EBE38
 004ED855    mov        [0061E128],eax; gvar_0061E128
 004ED85A    mov        edx,4EE198
 004ED85F    mov        eax,esi
 004ED861    call       004EBE38
 004ED866    mov        [0061E12C],eax; gvar_0061E12C
 004ED86B    mov        edx,4EE1A8
 004ED870    mov        eax,esi
 004ED872    call       004EBE38
 004ED877    mov        [0061E130],eax; gvar_0061E130
 004ED87C    mov        edx,4EE1B8
 004ED881    mov        eax,esi
 004ED883    call       004EBE38
 004ED888    mov        [0061E134],eax; gvar_0061E134
 004ED88D    mov        edx,4EE1C0
 004ED892    mov        eax,esi
 004ED894    call       004EBE38
 004ED899    mov        [0061E138],eax; gvar_0061E138
 004ED89E    mov        edx,4EE1CC
 004ED8A3    mov        eax,esi
 004ED8A5    call       004EBE38
 004ED8AA    mov        [0061E13C],eax; gvar_0061E13C
 004ED8AF    mov        edx,4EE1D8
 004ED8B4    mov        eax,esi
 004ED8B6    call       004EBE38
 004ED8BB    mov        [0061E140],eax; gvar_0061E140
 004ED8C0    mov        edx,4EE1E4
 004ED8C5    mov        eax,esi
 004ED8C7    call       004EBE38
 004ED8CC    mov        [0061E144],eax; gvar_0061E144
 004ED8D1    mov        edx,4EE1F0
 004ED8D6    mov        eax,esi
 004ED8D8    call       004EBE38
 004ED8DD    mov        [0061E148],eax; gvar_0061E148
 004ED8E2    mov        edx,4EE1FC
 004ED8E7    mov        eax,esi
 004ED8E9    call       004EBE38
 004ED8EE    mov        [0061E14C],eax; gvar_0061E14C
 004ED8F3    mov        edx,4EE20C
 004ED8F8    mov        eax,esi
 004ED8FA    call       004EBE38
 004ED8FF    mov        [0061E150],eax; gvar_0061E150
 004ED904    mov        edx,4EE218
 004ED909    mov        eax,esi
 004ED90B    call       004EBE38
 004ED910    mov        [0061E154],eax; gvar_0061E154
 004ED915    mov        edx,4EE224
 004ED91A    mov        eax,esi
 004ED91C    call       004EBE38
 004ED921    mov        [0061E158],eax; gvar_0061E158
 004ED926    mov        edx,4EE230
 004ED92B    mov        eax,esi
 004ED92D    call       004EBE38
 004ED932    mov        [0061E15C],eax; gvar_0061E15C
 004ED937    mov        edx,4EE23C
 004ED93C    mov        eax,esi
 004ED93E    call       004EBE38
 004ED943    mov        [0061E160],eax; gvar_0061E160
 004ED948    mov        edx,4EE24C
 004ED94D    mov        eax,esi
 004ED94F    call       004EBE38
 004ED954    mov        [0061E164],eax; gvar_0061E164
 004ED959    mov        edx,4EE25C
 004ED95E    mov        eax,esi
 004ED960    call       004EBE38
 004ED965    mov        [0061E168],eax; gvar_0061E168
 004ED96A    mov        edx,4EE264
 004ED96F    mov        eax,esi
 004ED971    call       004EBE38
 004ED976    mov        [0061E16C],eax; gvar_0061E16C
 004ED97B    mov        edx,4EE270
 004ED980    mov        eax,esi
 004ED982    call       004EBE38
 004ED987    mov        [0061E170],eax; gvar_0061E170
 004ED98C    mov        edx,4EE27C
 004ED991    mov        eax,esi
 004ED993    call       004EBE38
 004ED998    mov        [0061E174],eax; gvar_0061E174
 004ED99D    mov        edx,4EE284
 004ED9A2    mov        eax,esi
 004ED9A4    call       004EBE38
 004ED9A9    mov        [0061E178],eax; gvar_0061E178
 004ED9AE    mov        edx,4EE290
 004ED9B3    mov        eax,esi
 004ED9B5    call       004EBE38
 004ED9BA    mov        [0061E17C],eax; gvar_0061E17C
 004ED9BF    mov        edx,4EE298
 004ED9C4    mov        eax,esi
 004ED9C6    call       004EBE38
 004ED9CB    mov        [0061E180],eax; gvar_0061E180
 004ED9D0    mov        edx,4EE2A4
 004ED9D5    mov        eax,esi
 004ED9D7    call       004EBE38
 004ED9DC    mov        [0061E184],eax; gvar_0061E184
 004ED9E1    mov        edx,4EE2B0
 004ED9E6    mov        eax,esi
 004ED9E8    call       004EBE38
 004ED9ED    mov        [0061E188],eax; gvar_0061E188
 004ED9F2    mov        edx,4EE2B8
 004ED9F7    mov        eax,esi
 004ED9F9    call       004EBE38
 004ED9FE    mov        [0061E18C],eax; gvar_0061E18C
 004EDA03    mov        edx,4EE2C4
 004EDA08    mov        eax,esi
 004EDA0A    call       004EBE38
 004EDA0F    mov        [0061E190],eax; gvar_0061E190
 004EDA14    mov        edx,4EE2D0
 004EDA19    mov        eax,esi
 004EDA1B    call       004EBE38
 004EDA20    mov        [0061E194],eax; gvar_0061E194
 004EDA25    mov        edx,4EE2DC
 004EDA2A    mov        eax,esi
 004EDA2C    call       004EBE38
 004EDA31    mov        [0061E198],eax; gvar_0061E198
 004EDA36    mov        edx,4EE2E8
 004EDA3B    mov        eax,esi
 004EDA3D    call       004EBE38
 004EDA42    mov        [0061E19C],eax; gvar_0061E19C
 004EDA47    mov        edx,4EE2F8
 004EDA4C    mov        eax,esi
 004EDA4E    call       004EBE38
 004EDA53    mov        [0061E1A0],eax; gvar_0061E1A0
 004EDA58    mov        edx,4EE304
 004EDA5D    mov        eax,esi
 004EDA5F    call       004EBE38
 004EDA64    mov        [0061E1A4],eax; gvar_0061E1A4
 004EDA69    mov        edx,4EE310
 004EDA6E    mov        eax,esi
 004EDA70    call       004EBE38
 004EDA75    mov        [0061E1A8],eax; gvar_0061E1A8
 004EDA7A    mov        edx,4EE318
 004EDA7F    mov        eax,esi
 004EDA81    call       004EBE38
 004EDA86    mov        [0061E1AC],eax; gvar_0061E1AC
 004EDA8B    mov        edx,4EE324
 004EDA90    mov        eax,esi
 004EDA92    call       004EBE38
 004EDA97    mov        [0061E1B0],eax; gvar_0061E1B0
 004EDA9C    mov        edx,4EE330
 004EDAA1    mov        eax,esi
 004EDAA3    call       004EBE38
 004EDAA8    mov        [0061E1B4],eax; gvar_0061E1B4
 004EDAAD    mov        edx,4EE33C
 004EDAB2    mov        eax,esi
 004EDAB4    call       004EBE38
 004EDAB9    mov        [0061E1B8],eax; gvar_0061E1B8
 004EDABE    mov        edx,4EE344
 004EDAC3    mov        eax,esi
 004EDAC5    call       004EBE38
 004EDACA    mov        [0061E1BC],eax; gvar_0061E1BC
 004EDACF    mov        edx,4EE350
 004EDAD4    mov        eax,esi
 004EDAD6    call       004EBE38
 004EDADB    mov        [0061E1C0],eax; gvar_0061E1C0
 004EDAE0    mov        edx,4EE358
 004EDAE5    mov        eax,esi
 004EDAE7    call       004EBE38
 004EDAEC    mov        [0061E1C4],eax; gvar_0061E1C4
 004EDAF1    mov        edx,4EE364
 004EDAF6    mov        eax,esi
 004EDAF8    call       004EBE38
 004EDAFD    mov        [0061E1C8],eax; gvar_0061E1C8
 004EDB02    mov        edx,4EE370
 004EDB07    mov        eax,esi
 004EDB09    call       004EBE38
 004EDB0E    mov        [0061E1CC],eax; gvar_0061E1CC
 004EDB13    mov        edx,4EE37C
 004EDB18    mov        eax,esi
 004EDB1A    call       004EBE38
 004EDB1F    mov        [0061E1D0],eax; gvar_0061E1D0
 004EDB24    mov        edx,4EE388
 004EDB29    mov        eax,esi
 004EDB2B    call       004EBE38
 004EDB30    mov        [0061E1D4],eax; gvar_0061E1D4
 004EDB35    mov        edx,4EE394
 004EDB3A    mov        eax,esi
 004EDB3C    call       004EBE38
 004EDB41    mov        [0061E1D8],eax; gvar_0061E1D8
 004EDB46    mov        edx,4EE3A0
 004EDB4B    mov        eax,esi
 004EDB4D    call       004EBE38
 004EDB52    mov        [0061E1DC],eax; gvar_0061E1DC
 004EDB57    mov        edx,4EE3AC
 004EDB5C    mov        eax,esi
 004EDB5E    call       004EBE38
 004EDB63    mov        [0061E1E0],eax; gvar_0061E1E0
 004EDB68    mov        edx,4EE3B4
 004EDB6D    mov        eax,esi
 004EDB6F    call       004EBE38
 004EDB74    mov        [0061E1E4],eax; gvar_0061E1E4
 004EDB79    mov        edx,4EE3C0
 004EDB7E    mov        eax,esi
 004EDB80    call       004EBE38
 004EDB85    mov        [0061E1E8],eax; gvar_0061E1E8
 004EDB8A    mov        edx,4EE3CC
 004EDB8F    mov        eax,esi
 004EDB91    call       004EBE38
 004EDB96    mov        [0061E1EC],eax; gvar_0061E1EC
 004EDB9B    mov        edx,4EE3D8
 004EDBA0    mov        eax,esi
 004EDBA2    call       004EBE38
 004EDBA7    mov        [0061E1F0],eax; gvar_0061E1F0
 004EDBAC    mov        edx,4EE3E4
 004EDBB1    mov        eax,esi
 004EDBB3    call       004EBE38
 004EDBB8    mov        [0061E1F4],eax; gvar_0061E1F4
 004EDBBD    mov        edx,4EE3F0
 004EDBC2    mov        eax,esi
 004EDBC4    call       004EBE38
 004EDBC9    mov        [0061E1F8],eax; gvar_0061E1F8
 004EDBCE    mov        edx,4EE3FC
 004EDBD3    mov        eax,esi
 004EDBD5    call       004EBE38
 004EDBDA    mov        [0061E1FC],eax; gvar_0061E1FC
 004EDBDF    mov        edx,4EE40C
 004EDBE4    mov        eax,esi
 004EDBE6    call       004EBE38
 004EDBEB    mov        [0061E200],eax; gvar_0061E200
 004EDBF0    mov        edx,4EE418
 004EDBF5    mov        eax,esi
 004EDBF7    call       004EBE38
 004EDBFC    mov        [0061E204],eax; gvar_0061E204
 004EDC01    mov        edx,4EE428
 004EDC06    mov        eax,esi
 004EDC08    call       004EBE38
 004EDC0D    mov        [0061E208],eax; gvar_0061E208
 004EDC12    mov        edx,4EE434
 004EDC17    mov        eax,esi
 004EDC19    call       004EBE38
 004EDC1E    mov        [0061E20C],eax; gvar_0061E20C
 004EDC23    mov        edx,4EE444
 004EDC28    mov        eax,esi
 004EDC2A    call       004EBE38
 004EDC2F    mov        [0061E210],eax; gvar_0061E210
 004EDC34    mov        edx,4EE454
 004EDC39    mov        eax,esi
 004EDC3B    call       004EBE38
 004EDC40    mov        [0061E214],eax; gvar_0061E214
 004EDC45    mov        edx,4EE460
 004EDC4A    mov        eax,esi
 004EDC4C    call       004EBE38
 004EDC51    mov        [0061E218],eax; gvar_0061E218
 004EDC56    mov        edx,4EE46C
 004EDC5B    mov        eax,esi
 004EDC5D    call       004EBE38
 004EDC62    mov        [0061E21C],eax; gvar_0061E21C
 004EDC67    mov        edx,4EE478
 004EDC6C    mov        eax,esi
 004EDC6E    call       004EBE38
 004EDC73    mov        [0061E220],eax; gvar_0061E220
 004EDC78    mov        edx,4EE488
 004EDC7D    mov        eax,esi
 004EDC7F    call       004EBE38
 004EDC84    mov        [0061E224],eax; gvar_0061E224
 004EDC89    mov        edx,4EE494
 004EDC8E    mov        eax,esi
 004EDC90    call       004EBE38
 004EDC95    mov        [0061E228],eax; gvar_0061E228
 004EDC9A    mov        edx,4EE49C
 004EDC9F    mov        eax,esi
 004EDCA1    call       004EBE38
 004EDCA6    mov        [0061E22C],eax; gvar_0061E22C
 004EDCAB    mov        edx,4EE4A8
 004EDCB0    mov        eax,esi
 004EDCB2    call       004EBE38
 004EDCB7    mov        [0061E230],eax; gvar_0061E230
 004EDCBC    mov        edx,4EE4B4
 004EDCC1    mov        eax,esi
 004EDCC3    call       004EBE38
 004EDCC8    mov        [0061E234],eax; gvar_0061E234
 004EDCCD    mov        edx,4EE4C0
 004EDCD2    mov        eax,esi
 004EDCD4    call       004EBE38
 004EDCD9    mov        [0061E238],eax; gvar_0061E238
 004EDCDE    mov        edx,4EE4CC
 004EDCE3    mov        eax,esi
 004EDCE5    call       004EBE38
 004EDCEA    mov        [0061E23C],eax; gvar_0061E23C
 004EDCEF    mov        edx,4EE4D8
 004EDCF4    mov        eax,esi
 004EDCF6    call       004EBE38
 004EDCFB    mov        [0061E240],eax; gvar_0061E240
 004EDD00    mov        edx,4EE4E4
 004EDD05    mov        eax,esi
 004EDD07    call       004EBE38
 004EDD0C    mov        [0061E244],eax; gvar_0061E244
 004EDD11    mov        edx,4EE4F0
 004EDD16    mov        eax,esi
 004EDD18    call       004EBE38
 004EDD1D    mov        [0061E248],eax; gvar_0061E248
 004EDD22    mov        edx,4EE4FC
 004EDD27    mov        eax,esi
 004EDD29    call       004EBE38
 004EDD2E    mov        [0061E24C],eax; gvar_0061E24C
 004EDD33    mov        edx,4EE508
 004EDD38    mov        eax,esi
 004EDD3A    call       004EBE38
 004EDD3F    mov        [0061E250],eax; gvar_0061E250
 004EDD44    mov        edx,4EE510
 004EDD49    mov        eax,esi
 004EDD4B    call       004EBE38
 004EDD50    mov        [0061E254],eax; gvar_0061E254
 004EDD55    mov        edx,4EE518
 004EDD5A    mov        eax,esi
 004EDD5C    call       004EBE38
 004EDD61    mov        [0061E258],eax; gvar_0061E258
 004EDD66    mov        edx,4EE528
 004EDD6B    mov        eax,esi
 004EDD6D    call       004EBE38
 004EDD72    mov        [0061E25C],eax; gvar_0061E25C
 004EDD77    mov        edx,4EE538
 004EDD7C    mov        eax,esi
 004EDD7E    call       004EBE38
 004EDD83    mov        [0061E260],eax; gvar_0061E260
 004EDD88    mov        edx,4EE544
 004EDD8D    mov        eax,esi
 004EDD8F    call       004EBE38
 004EDD94    mov        [0061E264],eax; gvar_0061E264
 004EDD99    mov        edx,4EE54C
 004EDD9E    mov        eax,esi
 004EDDA0    call       004EBE38
 004EDDA5    mov        [0061E268],eax; gvar_0061E268
 004EDDAA    mov        edx,4EE558
 004EDDAF    mov        eax,esi
 004EDDB1    call       004EBE38
 004EDDB6    mov        [0061E26C],eax; gvar_0061E26C
 004EDDBB    mov        edx,4EE568
 004EDDC0    mov        eax,esi
 004EDDC2    call       004EBE38
 004EDDC7    mov        [0061E270],eax; gvar_0061E270
 004EDDCC    mov        edx,4EE574
 004EDDD1    mov        eax,esi
 004EDDD3    call       004EBE38
 004EDDD8    mov        [0061E274],eax; gvar_0061E274
 004EDDDD    call       dword ptr ds:[61E168]
 004EDDE3    push       4ED1A8; sub_004ED1A8
 004EDDE8    call       dword ptr ds:[61E004]
 004EDDEE    pop        ecx
 004EDDEF    mov        [00616010],eax; gvar_00616010
 004EDDF4    push       4ED200; sub_004ED200
 004EDDF9    call       dword ptr ds:[61E008]
 004EDDFF    pop        ecx
 004EDE00    mov        [00616014],eax; gvar_00616014
 004EDE05    mov        eax,ebx
 004EDE07    pop        esi
 004EDE08    pop        ebx
 004EDE09    pop        ebp
 004EDE0A    ret
*}
//end;

//004EE584
procedure sub_004EE584;
begin
{*
 004EE584    push       ebp
 004EE585    mov        ebp,esp
 004EE587    push       ebx
 004EE588    mov        ebx,eax
 004EE58A    mov        eax,[00616010]; gvar_00616010
 004EE58F    push       eax
 004EE590    call       dword ptr ds:[61E004]
 004EE596    pop        ecx
 004EE597    mov        eax,[00616014]; gvar_00616014
 004EE59C    push       eax
 004EE59D    call       dword ptr ds:[61E008]
 004EE5A3    pop        ecx
 004EE5A4    call       dword ptr ds:[61E128]
 004EE5AA    call       dword ptr ds:[61E124]
 004EE5B0    mov        eax,ebx
 004EE5B2    call       004EBE10
 004EE5B7    pop        ebx
 004EE5B8    pop        ebp
 004EE5B9    ret
*}
end;

Initialization
//004EE674
{*
 004EE674    push       ebp
 004EE675    mov        ebp,esp
 004EE677    push       ecx
 004EE678    sub        dword ptr ds:[61E284],1
>004EE67F    jae        004EE6C1
 004EE681    mov        dl,1
 004EE683    mov        eax,[0041C260]; TList
 004EE688    call       TObject.Create; TList.Create
 004EE68D    mov        [0061E27C],eax; gvar_0061E27C:TList
 004EE692    mov        dl,1
 004EE694    mov        eax,[0041C260]; TList
 004EE699    call       TObject.Create; TList.Create
 004EE69E    mov        [0061E280],eax; gvar_0061E280:TList
 004EE6A3    push       0
 004EE6A5    mov        eax,4EE6CC; 'ntwdblib.dll'
 004EE6AA    mov        dword ptr [ebp-4],eax
 004EE6AD    lea        ecx,[ebp-4]
 004EE6B0    mov        dl,1
 004EE6B2    mov        eax,[004ED2E0]; TZMSSqlNativeLibraryLoader
 004EE6B7    call       TZSybaseNativeLibraryLoader.Create; TZMSSqlNativeLibraryLoader.Create
 004EE6BC    mov        [0061E278],eax; gvar_0061E278:TZMSSqlNativeLibraryLoader
 004EE6C1    pop        ecx
 004EE6C2    pop        ebp
 004EE6C3    ret
*}
Finalization
//004EE5BC
{*
 004EE5BC    push       ebp
 004EE5BD    mov        ebp,esp
 004EE5BF    push       ebx
 004EE5C0    push       esi
 004EE5C1    mov        ebx,61E280; gvar_0061E280:TList
 004EE5C6    mov        esi,61E27C; gvar_0061E27C:TList
 004EE5CB    xor        eax,eax
 004EE5CD    push       ebp
 004EE5CE    push       4EE668
 004EE5D3    push       dword ptr fs:[eax]
 004EE5D6    mov        dword ptr fs:[eax],esp
 004EE5D9    inc        dword ptr ds:[61E284]
>004EE5DF    jne        004EE65A
 004EE5E1    cmp        dword ptr ds:[61E278],0; gvar_0061E278:TZMSSqlNativeLibraryLoader
>004EE5E8    je         004EE60F
 004EE5EA    mov        eax,[0061E278]; gvar_0061E278:TZMSSqlNativeLibraryLoader
 004EE5EF    call       TObject.Free
>004EE5F4    jmp        004EE60F
 004EE5F6    xor        edx,edx
 004EE5F8    mov        eax,dword ptr [ebx]
 004EE5FA    call       TList.Get
 004EE5FF    xor        edx,edx
 004EE601    call       @FreeMem
 004EE606    xor        edx,edx
 004EE608    mov        eax,dword ptr [ebx]
 004EE60A    call       TList.Delete
 004EE60F    mov        eax,dword ptr [ebx]
 004EE611    cmp        dword ptr [eax+8],0; TList.FCount:Integer
<004EE615    jg         004EE5F6
 004EE617    cmp        dword ptr [ebx],0
>004EE61A    je         004EE642
 004EE61C    mov        eax,dword ptr [ebx]
 004EE61E    call       TObject.Free
 004EE623    xor        eax,eax
 004EE625    mov        dword ptr [ebx],eax
>004EE627    jmp        004EE642
 004EE629    xor        edx,edx
 004EE62B    mov        eax,dword ptr [esi]
 004EE62D    call       TList.Get
 004EE632    xor        edx,edx
 004EE634    call       @FreeMem
 004EE639    xor        edx,edx
 004EE63B    mov        eax,dword ptr [esi]
 004EE63D    call       TList.Delete
 004EE642    mov        eax,dword ptr [esi]
 004EE644    cmp        dword ptr [eax+8],0; TList.FCount:Integer
<004EE648    jg         004EE629
 004EE64A    cmp        dword ptr [esi],0
>004EE64D    je         004EE65A
 004EE64F    mov        eax,dword ptr [esi]
 004EE651    call       TObject.Free
 004EE656    xor        eax,eax
 004EE658    mov        dword ptr [esi],eax
 004EE65A    xor        eax,eax
 004EE65C    pop        edx
 004EE65D    pop        ecx
 004EE65E    pop        ecx
 004EE65F    mov        dword ptr fs:[eax],edx
 004EE662    push       4EE66F
 004EE667    ret
<004EE668    jmp        @HandleFinally
<004EE66D    jmp        004EE667
 004EE66F    pop        esi
 004EE670    pop        ebx
 004EE671    pop        ebp
 004EE672    ret
*}
end.