{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit143;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZASANativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0054E294:?; virtual;
  end;

implementation

{$R *.DFM}

//0054E294
//function sub_0054E294:?;
//begin
{*
 0054E294    push       ebp
 0054E295    mov        ebp,esp
 0054E297    push       ebx
 0054E298    push       esi
 0054E299    mov        esi,eax
 0054E29B    mov        eax,esi
 0054E29D    call       004EBCD0
 0054E2A2    mov        ebx,eax
 0054E2A4    mov        edx,54E588
 0054E2A9    mov        eax,esi
 0054E2AB    call       004EBE38
 0054E2B0    mov        [0061EDD4],eax; gvar_0061EDD4
 0054E2B5    mov        edx,54E59C
 0054E2BA    mov        eax,esi
 0054E2BC    call       004EBE38
 0054E2C1    mov        [0061EDD8],eax; gvar_0061EDD8
 0054E2C6    mov        edx,54E5A4
 0054E2CB    mov        eax,esi
 0054E2CD    call       004EBE38
 0054E2D2    mov        [0061EDDC],eax; gvar_0061EDDC
 0054E2D7    mov        edx,54E5AC
 0054E2DC    mov        eax,esi
 0054E2DE    call       004EBE38
 0054E2E3    mov        [0061EDE0],eax; gvar_0061EDE0
 0054E2E8    mov        edx,54E5C0
 0054E2ED    mov        eax,esi
 0054E2EF    call       004EBE38
 0054E2F4    mov        [0061EDE4],eax; gvar_0061EDE4
 0054E2F9    mov        edx,54E5D8
 0054E2FE    mov        eax,esi
 0054E300    call       004EBE38
 0054E305    mov        [0061EDF8],eax; gvar_0061EDF8
 0054E30A    mov        edx,54E5E8
 0054E30F    mov        eax,esi
 0054E311    call       004EBE38
 0054E316    mov        [0061EDE8],eax; gvar_0061EDE8
 0054E31B    mov        edx,54E5F8
 0054E320    mov        eax,esi
 0054E322    call       004EBE38
 0054E327    mov        [0061EDEC],eax; gvar_0061EDEC
 0054E32C    mov        edx,54E608
 0054E331    mov        eax,esi
 0054E333    call       004EBE38
 0054E338    mov        [0061EDF0],eax; gvar_0061EDF0
 0054E33D    mov        edx,54E61C
 0054E342    mov        eax,esi
 0054E344    call       004EBE38
 0054E349    mov        [0061EDF4],eax; gvar_0061EDF4
 0054E34E    mov        edx,54E630
 0054E353    mov        eax,esi
 0054E355    call       004EBE38
 0054E35A    mov        [0061EDFC],eax; gvar_0061EDFC
 0054E35F    mov        edx,54E63C
 0054E364    mov        eax,esi
 0054E366    call       004EBE38
 0054E36B    mov        [0061EE0C],eax; gvar_0061EE0C
 0054E370    mov        edx,54E648
 0054E375    mov        eax,esi
 0054E377    call       004EBE38
 0054E37C    mov        [0061EE10],eax; gvar_0061EE10
 0054E381    mov        edx,54E658
 0054E386    mov        eax,esi
 0054E388    call       004EBE38
 0054E38D    mov        [0061EE08],eax; gvar_0061EE08
 0054E392    mov        edx,54E66C
 0054E397    mov        eax,esi
 0054E399    call       004EBE38
 0054E39E    mov        [0061EE00],eax; gvar_0061EE00
 0054E3A3    mov        edx,54E678
 0054E3A8    mov        eax,esi
 0054E3AA    call       004EBE38
 0054E3AF    mov        [0061EE04],eax; gvar_0061EE04
 0054E3B4    mov        edx,54E68C
 0054E3B9    mov        eax,esi
 0054E3BB    call       004EBE38
 0054E3C0    mov        [0061EE14],eax; gvar_0061EE14
 0054E3C5    mov        edx,54E69C
 0054E3CA    mov        eax,esi
 0054E3CC    call       004EBE38
 0054E3D1    mov        [0061EE1C],eax; gvar_0061EE1C
 0054E3D6    mov        edx,54E6AC
 0054E3DB    mov        eax,esi
 0054E3DD    call       004EBE38
 0054E3E2    mov        [0061EE20],eax; gvar_0061EE20
 0054E3E7    mov        edx,54E6C0
 0054E3EC    mov        eax,esi
 0054E3EE    call       004EBE38
 0054E3F3    mov        [0061EE18],eax; gvar_0061EE18
 0054E3F8    mov        edx,54E6D8
 0054E3FD    mov        eax,esi
 0054E3FF    call       004EBE38
 0054E404    mov        [0061EE24],eax; gvar_0061EE24
 0054E409    mov        edx,54E6F0
 0054E40E    mov        eax,esi
 0054E410    call       004EBE38
 0054E415    mov        [0061EE28],eax; gvar_0061EE28
 0054E41A    mov        edx,54E6FC
 0054E41F    mov        eax,esi
 0054E421    call       004EBE38
 0054E426    mov        [0061EE2C],eax; gvar_0061EE2C
 0054E42B    mov        edx,54E708
 0054E430    mov        eax,esi
 0054E432    call       004EBE38
 0054E437    mov        [0061EE30],eax; gvar_0061EE30
 0054E43C    mov        edx,54E714
 0054E441    mov        eax,esi
 0054E443    call       004EBE38
 0054E448    mov        [0061EE34],eax; gvar_0061EE34
 0054E44D    mov        edx,54E720
 0054E452    mov        eax,esi
 0054E454    call       004EBE38
 0054E459    mov        [0061EE38],eax; gvar_0061EE38
 0054E45E    mov        edx,54E730
 0054E463    mov        eax,esi
 0054E465    call       004EBE38
 0054E46A    mov        [0061EE3C],eax; gvar_0061EE3C
 0054E46F    mov        edx,54E740
 0054E474    mov        eax,esi
 0054E476    call       004EBE38
 0054E47B    mov        [0061EE40],eax; gvar_0061EE40
 0054E480    mov        edx,54E750
 0054E485    mov        eax,esi
 0054E487    call       004EBE38
 0054E48C    mov        [0061EE44],eax; gvar_0061EE44
 0054E491    mov        edx,54E75C
 0054E496    mov        eax,esi
 0054E498    call       004EBE38
 0054E49D    mov        [0061EE48],eax; gvar_0061EE48
 0054E4A2    mov        edx,54E768
 0054E4A7    mov        eax,esi
 0054E4A9    call       004EBE38
 0054E4AE    mov        [0061EE50],eax; gvar_0061EE50
 0054E4B3    mov        edx,54E778
 0054E4B8    mov        eax,esi
 0054E4BA    call       004EBE38
 0054E4BF    mov        [0061EE54],eax; gvar_0061EE54
 0054E4C4    mov        edx,54E788
 0054E4C9    mov        eax,esi
 0054E4CB    call       004EBE38
 0054E4D0    mov        [0061EE4C],eax; gvar_0061EE4C
 0054E4D5    mov        edx,54E79C
 0054E4DA    mov        eax,esi
 0054E4DC    call       004EBE38
 0054E4E1    mov        [0061EE58],eax; gvar_0061EE58
 0054E4E6    mov        edx,54E7A8
 0054E4EB    mov        eax,esi
 0054E4ED    call       004EBE38
 0054E4F2    mov        [0061EE5C],eax; gvar_0061EE5C
 0054E4F7    mov        edx,54E7B8
 0054E4FC    mov        eax,esi
 0054E4FE    call       004EBE38
 0054E503    mov        [0061EE60],eax; gvar_0061EE60
 0054E508    mov        edx,54E7CC
 0054E50D    mov        eax,esi
 0054E50F    call       004EBE38
 0054E514    mov        [0061EE64],eax; gvar_0061EE64
 0054E519    mov        edx,54E7DC
 0054E51E    mov        eax,esi
 0054E520    call       004EBE38
 0054E525    mov        [0061EE68],eax; gvar_0061EE68
 0054E52A    mov        edx,54E7EC
 0054E52F    mov        eax,esi
 0054E531    call       004EBE38
 0054E536    mov        [0061EE70],eax; gvar_0061EE70
 0054E53B    mov        edx,54E7FC
 0054E540    mov        eax,esi
 0054E542    call       004EBE38
 0054E547    mov        [0061EE74],eax; gvar_0061EE74
 0054E54C    mov        edx,54E810
 0054E551    mov        eax,esi
 0054E553    call       004EBE38
 0054E558    mov        [0061EE6C],eax; gvar_0061EE6C
 0054E55D    mov        edx,54E828
 0054E562    mov        eax,esi
 0054E564    call       004EBE38
 0054E569    mov        [0061EE78],eax; gvar_0061EE78
 0054E56E    mov        edx,54E834
 0054E573    mov        eax,esi
 0054E575    call       004EBE38
 0054E57A    mov        [0061EE7C],eax; gvar_0061EE7C
 0054E57F    mov        eax,ebx
 0054E581    pop        esi
 0054E582    pop        ebx
 0054E583    pop        ebp
 0054E584    ret
*}
//end;

Initialization
//0054E88C
{*
 0054E88C    push       ebp
 0054E88D    mov        ebp,esp
 0054E88F    push       ecx
 0054E890    sub        dword ptr ds:[61EE84],1
>0054E897    jae        0054E8BE
 0054E899    xor        eax,eax
 0054E89B    mov        [0061EE80],eax; gvar_0061EE80:TZASANativeLibraryLoader
 0054E8A0    push       0
 0054E8A2    mov        eax,54E8CC; 'DBLIB8.DLL'
 0054E8A7    mov        dword ptr [ebp-4],eax
 0054E8AA    lea        ecx,[ebp-4]
 0054E8AD    mov        dl,1
 0054E8AF    mov        eax,[0054E21C]; TZASANativeLibraryLoader
 0054E8B4    call       TZSybaseNativeLibraryLoader.Create; TZASANativeLibraryLoader.Create
 0054E8B9    mov        [0061EE80],eax; gvar_0061EE80:TZASANativeLibraryLoader
 0054E8BE    pop        ecx
 0054E8BF    pop        ebp
 0054E8C0    ret
*}
Finalization
//0054E848
{*
 0054E848    push       ebp
 0054E849    mov        ebp,esp
 0054E84B    xor        eax,eax
 0054E84D    push       ebp
 0054E84E    push       54E882
 0054E853    push       dword ptr fs:[eax]
 0054E856    mov        dword ptr fs:[eax],esp
 0054E859    inc        dword ptr ds:[61EE84]
>0054E85F    jne        0054E874
 0054E861    cmp        dword ptr ds:[61EE80],0; gvar_0061EE80:TZASANativeLibraryLoader
>0054E868    je         0054E874
 0054E86A    mov        eax,[0061EE80]; gvar_0061EE80:TZASANativeLibraryLoader
 0054E86F    call       TObject.Free
 0054E874    xor        eax,eax
 0054E876    pop        edx
 0054E877    pop        ecx
 0054E878    pop        ecx
 0054E879    mov        dword ptr fs:[eax],edx
 0054E87C    push       54E889
 0054E881    ret
<0054E882    jmp        @HandleFinally
<0054E887    jmp        0054E881
 0054E889    pop        ebp
 0054E88A    ret
*}
end.