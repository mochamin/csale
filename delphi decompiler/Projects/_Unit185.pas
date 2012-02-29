{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit185;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZFirebirdNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0052255C:?; virtual;
  end;

implementation

{$R *.DFM}

//0052255C
//function sub_0052255C:?;
//begin
{*
 0052255C    push       ebp
 0052255D    mov        ebp,esp
 0052255F    push       ebx
 00522560    push       esi
 00522561    mov        esi,eax
 00522563    mov        eax,esi
 00522565    call       004EBCD0
 0052256A    mov        ebx,eax
 0052256C    mov        edx,5228F8
 00522571    mov        eax,esi
 00522573    call       004EBE38
 00522578    mov        [0061E6EC],eax; gvar_0061E6EC
 0052257D    mov        edx,522904
 00522582    mov        eax,esi
 00522584    call       004EBE38
 00522589    mov        [0061E6F0],eax; gvar_0061E6F0
 0052258E    mov        edx,522918
 00522593    mov        eax,esi
 00522595    call       004EBE38
 0052259A    mov        [0061E6F4],eax; gvar_0061E6F4
 0052259F    mov        edx,522928
 005225A4    mov        eax,esi
 005225A6    call       004EBE38
 005225AB    mov        [0061E790],eax; gvar_0061E790
 005225B0    mov        edx,522938
 005225B5    mov        eax,esi
 005225B7    call       004EBE38
 005225BC    mov        [0061E744],eax; gvar_0061E744
 005225C1    mov        edx,52294C
 005225C6    mov        eax,esi
 005225C8    call       004EBE38
 005225CD    mov        [0061E748],eax; gvar_0061E748
 005225D2    mov        edx,522960
 005225D7    mov        eax,esi
 005225D9    call       004EBE38
 005225DE    mov        [0061E74C],eax; gvar_0061E74C
 005225E3    mov        edx,522978
 005225E8    mov        eax,esi
 005225EA    call       004EBE38
 005225EF    mov        [0061E750],eax; gvar_0061E750
 005225F4    mov        edx,522990
 005225F9    mov        eax,esi
 005225FB    call       004EBE38
 00522600    mov        [0061E754],eax; gvar_0061E754
 00522605    mov        edx,5229A4
 0052260A    mov        eax,esi
 0052260C    call       004EBE38
 00522611    mov        [0061E758],eax; gvar_0061E758
 00522616    mov        edx,5229B8
 0052261B    mov        eax,esi
 0052261D    call       004EBE38
 00522622    mov        [0061E764],eax; gvar_0061E764
 00522627    mov        edx,5229C8
 0052262C    mov        eax,esi
 0052262E    call       004EBE38
 00522633    mov        [0061E75C],eax; gvar_0061E75C
 00522638    mov        edx,5229D8
 0052263D    mov        eax,esi
 0052263F    call       004EBE38
 00522644    mov        [0061E768],eax; gvar_0061E768
 00522649    mov        edx,5229E8
 0052264E    mov        eax,esi
 00522650    call       004EBE38
 00522655    mov        [0061E76C],eax; gvar_0061E76C
 0052265A    mov        edx,5229F8
 0052265F    mov        eax,esi
 00522661    call       004EBE38
 00522666    mov        [0061E770],eax; gvar_0061E770
 0052266B    mov        edx,522A08
 00522670    mov        eax,esi
 00522672    call       004EBE38
 00522677    mov        [0061E774],eax; gvar_0061E774
 0052267C    mov        edx,522A18
 00522681    mov        eax,esi
 00522683    call       004EBE38
 00522688    mov        [0061E760],eax; gvar_0061E760
 0052268D    mov        edx,522A2C
 00522692    mov        eax,esi
 00522694    call       004EBE38
 00522699    mov        [0061E78C],eax; gvar_0061E78C
 0052269E    mov        edx,522A3C
 005226A3    mov        eax,esi
 005226A5    call       004EBE38
 005226AA    mov        [0061E788],eax; gvar_0061E788
 005226AF    mov        edx,522A4C
 005226B4    mov        eax,esi
 005226B6    call       004EBE38
 005226BB    mov        [0061E734],eax; gvar_0061E734
 005226C0    mov        edx,522A64
 005226C5    mov        eax,esi
 005226C7    call       004EBE38
 005226CC    mov        [0061E728],eax; gvar_0061E728
 005226D1    mov        edx,522A78
 005226D6    mov        eax,esi
 005226D8    call       004EBE38
 005226DD    mov        [0061E724],eax; gvar_0061E724
 005226E2    mov        edx,522A8C
 005226E7    mov        eax,esi
 005226E9    call       004EBE38
 005226EE    mov        [0061E73C],eax; gvar_0061E73C
 005226F3    mov        edx,522AA8
 005226F8    mov        eax,esi
 005226FA    call       004EBE38
 005226FF    mov        [0061E730],eax; gvar_0061E730
 00522704    mov        edx,522AB8
 00522709    mov        eax,esi
 0052270B    call       004EBE38
 00522710    mov        [0061E740],eax; gvar_0061E740
 00522715    mov        edx,522ACC
 0052271A    mov        eax,esi
 0052271C    call       004EBE38
 00522721    mov        [0061E714],eax; gvar_0061E714
 00522726    mov        edx,522AE8
 0052272B    mov        eax,esi
 0052272D    call       004EBE38
 00522732    mov        [0061E718],eax; gvar_0061E718
 00522737    mov        edx,522B04
 0052273C    mov        eax,esi
 0052273E    call       004EBE38
 00522743    mov        [0061E738],eax; gvar_0061E738
 00522748    mov        edx,522B18
 0052274D    mov        eax,esi
 0052274F    call       004EBE38
 00522754    mov        [0061E720],eax; gvar_0061E720
 00522759    mov        edx,522B30
 0052275E    mov        eax,esi
 00522760    call       004EBE38
 00522765    mov        [0061E71C],eax; gvar_0061E71C
 0052276A    mov        edx,522B44
 0052276F    mov        eax,esi
 00522771    call       004EBE38
 00522776    mov        [0061E72C],eax; gvar_0061E72C
 0052277B    mov        edx,522B60
 00522780    mov        eax,esi
 00522782    call       004EBE38
 00522787    mov        [0061E6E0],eax; gvar_0061E6E0
 0052278C    mov        edx,522B74
 00522791    mov        eax,esi
 00522793    call       004EBE38
 00522798    mov        [0061E6DC],eax; gvar_0061E6DC
 0052279D    mov        edx,522B88
 005227A2    mov        eax,esi
 005227A4    call       004EBE38
 005227A9    mov        [0061E6D8],eax; gvar_0061E6D8
 005227AE    mov        edx,522B9C
 005227B3    mov        eax,esi
 005227B5    call       004EBE38
 005227BA    mov        [0061E6E4],eax; gvar_0061E6E4
 005227BF    mov        edx,522BB0
 005227C4    mov        eax,esi
 005227C6    call       004EBE38
 005227CB    mov        [0061E710],eax; gvar_0061E710
 005227D0    mov        edx,522BC8
 005227D5    mov        eax,esi
 005227D7    call       004EBE38
 005227DC    mov        [0061E6FC],eax; gvar_0061E6FC
 005227E1    mov        edx,522BDC
 005227E6    mov        eax,esi
 005227E8    call       004EBE38
 005227ED    mov        [0061E6F8],eax; gvar_0061E6F8
 005227F2    mov        edx,522BF4
 005227F7    mov        eax,esi
 005227F9    call       004EBE38
 005227FE    mov        [0061E708],eax; gvar_0061E708
 00522803    mov        edx,522C0C
 00522808    mov        eax,esi
 0052280A    call       004EBE38
 0052280F    mov        [0061E70C],eax; gvar_0061E70C
 00522814    mov        edx,522C24
 00522819    mov        eax,esi
 0052281B    call       004EBE38
 00522820    mov        [0061E700],eax; gvar_0061E700
 00522825    mov        edx,522C40
 0052282A    mov        eax,esi
 0052282C    call       004EBE38
 00522831    mov        [0061E784],eax; gvar_0061E784
 00522836    mov        edx,522C54
 0052283B    mov        eax,esi
 0052283D    call       004EBE38
 00522842    mov        [0061E778],eax; gvar_0061E778
 00522847    mov        edx,522C64
 0052284C    mov        eax,esi
 0052284E    call       004EBE38
 00522853    mov        [0061E77C],eax; gvar_0061E77C
 00522858    mov        edx,522C78
 0052285D    mov        eax,esi
 0052285F    call       004EBE38
 00522864    mov        [0061E780],eax; gvar_0061E780
 00522869    mov        edx,522C88
 0052286E    mov        eax,esi
 00522870    call       004EBE38
 00522875    mov        [0061E6E8],eax; gvar_0061E6E8
 0052287A    mov        edx,522C94
 0052287F    mov        eax,esi
 00522881    call       004EBE38
 00522886    mov        [0061E704],eax; gvar_0061E704
 0052288B    mov        edx,522CAC
 00522890    mov        eax,esi
 00522892    call       004EBE38
 00522897    mov        [0061E798],eax; gvar_0061E798
 0052289C    mov        edx,522CC0
 005228A1    mov        eax,esi
 005228A3    call       004EBE38
 005228A8    mov        [0061E7A0],eax; gvar_0061E7A0
 005228AD    mov        edx,522CD4
 005228B2    mov        eax,esi
 005228B4    call       004EBE38
 005228B9    mov        [0061E7A8],eax; gvar_0061E7A8
 005228BE    mov        edx,522CEC
 005228C3    mov        eax,esi
 005228C5    call       004EBE38
 005228CA    mov        [0061E794],eax; gvar_0061E794
 005228CF    mov        edx,522D00
 005228D4    mov        eax,esi
 005228D6    call       004EBE38
 005228DB    mov        [0061E79C],eax; gvar_0061E79C
 005228E0    mov        edx,522D14
 005228E5    mov        eax,esi
 005228E7    call       004EBE38
 005228EC    mov        [0061E7A4],eax; gvar_0061E7A4
 005228F1    mov        eax,ebx
 005228F3    pop        esi
 005228F4    pop        ebx
 005228F5    pop        ebp
 005228F6    ret
*}
//end;

Initialization
//00522D70
{*
 00522D70    push       ebp
 00522D71    mov        ebp,esp
 00522D73    push       ecx
 00522D74    sub        dword ptr ds:[61E7B0],1
>00522D7B    jae        00522D9B
 00522D7D    push       0
 00522D7F    mov        eax,522DA8; 'gds32.dll'
 00522D84    mov        dword ptr [ebp-4],eax
 00522D87    lea        ecx,[ebp-4]
 00522D8A    mov        dl,1
 00522D8C    mov        eax,[005224E0]; TZFirebirdNativeLibraryLoader
 00522D91    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00522D96    mov        [0061E7AC],eax; gvar_0061E7AC:TZFirebirdNativeLibraryLoader
 00522D9B    pop        ecx
 00522D9C    pop        ebp
 00522D9D    ret
*}
Finalization
//00522D2C
{*
 00522D2C    push       ebp
 00522D2D    mov        ebp,esp
 00522D2F    xor        eax,eax
 00522D31    push       ebp
 00522D32    push       522D66
 00522D37    push       dword ptr fs:[eax]
 00522D3A    mov        dword ptr fs:[eax],esp
 00522D3D    inc        dword ptr ds:[61E7B0]
>00522D43    jne        00522D58
 00522D45    cmp        dword ptr ds:[61E7AC],0; gvar_0061E7AC:TZFirebirdNativeLibraryLoader
>00522D4C    je         00522D58
 00522D4E    mov        eax,[0061E7AC]; gvar_0061E7AC:TZFirebirdNativeLibraryLoader
 00522D53    call       TObject.Free
 00522D58    xor        eax,eax
 00522D5A    pop        edx
 00522D5B    pop        ecx
 00522D5C    pop        ecx
 00522D5D    mov        dword ptr fs:[eax],edx
 00522D60    push       522D6D
 00522D65    ret
<00522D66    jmp        @HandleFinally
<00522D6B    jmp        00522D65
 00522D6D    pop        ebp
 00522D6E    ret
*}
end.