{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit194;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZPostgreSQLNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0050E650:?; virtual;
  end;

implementation

{$R *.DFM}

//0050E650
//function sub_0050E650:?;
//begin
{*
 0050E650    push       ebp
 0050E651    mov        ebp,esp
 0050E653    push       ebx
 0050E654    push       esi
 0050E655    mov        esi,eax
 0050E657    mov        eax,esi
 0050E659    call       004EBCD0
 0050E65E    mov        ebx,eax
 0050E660    mov        edx,50EA84
 0050E665    mov        eax,esi
 0050E667    call       004EBE38
 0050E66C    mov        [0061E2F8],eax; gvar_0061E2F8
 0050E671    mov        edx,50EA90
 0050E676    mov        eax,esi
 0050E678    call       004EBE38
 0050E67D    mov        [0061E2FC],eax; gvar_0061E2FC
 0050E682    mov        edx,50EAA0
 0050E687    mov        eax,esi
 0050E689    call       004EBE38
 0050E68E    mov        [0061E300],eax; gvar_0061E300
 0050E693    mov        edx,50EAB0
 0050E698    mov        eax,esi
 0050E69A    call       004EBE38
 0050E69F    mov        [0061E304],eax; gvar_0061E304
 0050E6A4    mov        edx,50EABC
 0050E6A9    mov        eax,esi
 0050E6AB    call       004EBE38
 0050E6B0    mov        [0061E308],eax; gvar_0061E308
 0050E6B5    mov        edx,50EAC4
 0050E6BA    mov        eax,esi
 0050E6BC    call       004EBE38
 0050E6C1    mov        [0061E30C],eax; gvar_0061E30C
 0050E6C6    mov        edx,50EAD4
 0050E6CB    mov        eax,esi
 0050E6CD    call       004EBE38
 0050E6D2    mov        [0061E310],eax; gvar_0061E310
 0050E6D7    mov        edx,50EADC
 0050E6DC    mov        eax,esi
 0050E6DE    call       004EBE38
 0050E6E3    mov        [0061E314],eax; gvar_0061E314
 0050E6E8    mov        edx,50EAE4
 0050E6ED    mov        eax,esi
 0050E6EF    call       004EBE38
 0050E6F4    mov        [0061E318],eax; gvar_0061E318
 0050E6F9    mov        edx,50EAEC
 0050E6FE    mov        eax,esi
 0050E700    call       004EBE38
 0050E705    mov        [0061E31C],eax; gvar_0061E31C
 0050E70A    mov        edx,50EAF4
 0050E70F    mov        eax,esi
 0050E711    call       004EBE38
 0050E716    mov        [0061E320],eax; gvar_0061E320
 0050E71B    mov        edx,50EAFC
 0050E720    mov        eax,esi
 0050E722    call       004EBE38
 0050E727    mov        [0061E324],eax; gvar_0061E324
 0050E72C    mov        edx,50EB04
 0050E731    mov        eax,esi
 0050E733    call       004EBE38
 0050E738    mov        [0061E328],eax; gvar_0061E328
 0050E73D    mov        edx,50EB10
 0050E742    mov        eax,esi
 0050E744    call       004EBE38
 0050E749    mov        [0061E32C],eax; gvar_0061E32C
 0050E74E    mov        edx,50EB1C
 0050E753    mov        eax,esi
 0050E755    call       004EBE38
 0050E75A    mov        [0061E330],eax; gvar_0061E330
 0050E75F    mov        edx,50EB2C
 0050E764    mov        eax,esi
 0050E766    call       004EBE38
 0050E76B    mov        [0061E334],eax; gvar_0061E334
 0050E770    mov        edx,50EB38
 0050E775    mov        eax,esi
 0050E777    call       004EBE38
 0050E77C    mov        [0061E338],eax; gvar_0061E338
 0050E781    mov        edx,50EB48
 0050E786    mov        eax,esi
 0050E788    call       004EBE38
 0050E78D    mov        [0061E33C],eax; gvar_0061E33C
 0050E792    mov        edx,50EB50
 0050E797    mov        eax,esi
 0050E799    call       004EBE38
 0050E79E    mov        [0061E340],eax; gvar_0061E340
 0050E7A3    mov        edx,50EB5C
 0050E7A8    mov        eax,esi
 0050E7AA    call       004EBE38
 0050E7AF    mov        [0061E344],eax; gvar_0061E344
 0050E7B4    mov        edx,50EB74
 0050E7B9    mov        eax,esi
 0050E7BB    call       004EBE38
 0050E7C0    mov        [0061E348],eax; gvar_0061E348
 0050E7C5    mov        edx,50EB7C
 0050E7CA    mov        eax,esi
 0050E7CC    call       004EBE38
 0050E7D1    mov        [0061E34C],eax; gvar_0061E34C
 0050E7D6    mov        edx,50EB88
 0050E7DB    mov        eax,esi
 0050E7DD    call       004EBE38
 0050E7E2    mov        [0061E350],eax; gvar_0061E350
 0050E7E7    mov        edx,50EB98
 0050E7EC    mov        eax,esi
 0050E7EE    call       004EBE38
 0050E7F3    mov        [0061E354],eax; gvar_0061E354
 0050E7F8    mov        edx,50EBA4
 0050E7FD    mov        eax,esi
 0050E7FF    call       004EBE38
 0050E804    mov        [0061E358],eax; gvar_0061E358
 0050E809    mov        edx,50EBB0
 0050E80E    mov        eax,esi
 0050E810    call       004EBE38
 0050E815    mov        [0061E35C],eax; gvar_0061E35C
 0050E81A    mov        edx,50EBBC
 0050E81F    mov        eax,esi
 0050E821    call       004EBE38
 0050E826    mov        [0061E360],eax; gvar_0061E360
 0050E82B    mov        edx,50EBCC
 0050E830    mov        eax,esi
 0050E832    call       004EBE38
 0050E837    mov        [0061E364],eax; gvar_0061E364
 0050E83C    mov        edx,50EBD8
 0050E841    mov        eax,esi
 0050E843    call       004EBE38
 0050E848    mov        [0061E368],eax; gvar_0061E368
 0050E84D    mov        edx,50EBE4
 0050E852    mov        eax,esi
 0050E854    call       004EBE38
 0050E859    mov        [0061E36C],eax; gvar_0061E36C
 0050E85E    mov        edx,50EBF4
 0050E863    mov        eax,esi
 0050E865    call       004EBE38
 0050E86A    mov        [0061E370],eax; gvar_0061E370
 0050E86F    mov        edx,50EC00
 0050E874    mov        eax,esi
 0050E876    call       004EBE38
 0050E87B    mov        [0061E374],eax; gvar_0061E374
 0050E880    mov        edx,50EC0C
 0050E885    mov        eax,esi
 0050E887    call       004EBE38
 0050E88C    mov        [0061E378],eax; gvar_0061E378
 0050E891    mov        edx,50EC14
 0050E896    mov        eax,esi
 0050E898    call       004EBE38
 0050E89D    mov        [0061E37C],eax; gvar_0061E37C
 0050E8A2    mov        edx,50EC24
 0050E8A7    mov        eax,esi
 0050E8A9    call       004EBE38
 0050E8AE    mov        [0061E380],eax; gvar_0061E380
 0050E8B3    mov        edx,50EC3C
 0050E8B8    mov        eax,esi
 0050E8BA    call       004EBE38
 0050E8BF    mov        [0061E384],eax; gvar_0061E384
 0050E8C4    mov        edx,50EC48
 0050E8C9    mov        eax,esi
 0050E8CB    call       004EBE38
 0050E8D0    mov        [0061E388],eax; gvar_0061E388
 0050E8D5    mov        edx,50EC54
 0050E8DA    mov        eax,esi
 0050E8DC    call       004EBE38
 0050E8E1    mov        [0061E38C],eax; gvar_0061E38C
 0050E8E6    mov        edx,50EC64
 0050E8EB    mov        eax,esi
 0050E8ED    call       004EBE38
 0050E8F2    mov        [0061E390],eax; gvar_0061E390
 0050E8F7    mov        edx,50EC6C
 0050E8FC    mov        eax,esi
 0050E8FE    call       004EBE38
 0050E903    mov        [0061E394],eax; gvar_0061E394
 0050E908    mov        edx,50EC78
 0050E90D    mov        eax,esi
 0050E90F    call       004EBE38
 0050E914    mov        [0061E398],eax; gvar_0061E398
 0050E919    mov        edx,50EC80
 0050E91E    mov        eax,esi
 0050E920    call       004EBE38
 0050E925    mov        [0061E39C],eax; gvar_0061E39C
 0050E92A    mov        edx,50EC88
 0050E92F    mov        eax,esi
 0050E931    call       004EBE38
 0050E936    mov        [0061E3A0],eax; gvar_0061E3A0
 0050E93B    mov        edx,50EC90
 0050E940    mov        eax,esi
 0050E942    call       004EBE38
 0050E947    mov        [0061E3A4],eax; gvar_0061E3A4
 0050E94C    mov        edx,50EC9C
 0050E951    mov        eax,esi
 0050E953    call       004EBE38
 0050E958    mov        [0061E3A8],eax; gvar_0061E3A8
 0050E95D    mov        edx,50ECA8
 0050E962    mov        eax,esi
 0050E964    call       004EBE38
 0050E969    mov        [0061E3AC],eax; gvar_0061E3AC
 0050E96E    mov        edx,50ECB4
 0050E973    mov        eax,esi
 0050E975    call       004EBE38
 0050E97A    mov        [0061E3B0],eax; gvar_0061E3B0
 0050E97F    mov        edx,50ECC0
 0050E984    mov        eax,esi
 0050E986    call       004EBE38
 0050E98B    mov        [0061E3B4],eax; gvar_0061E3B4
 0050E990    mov        edx,50ECCC
 0050E995    mov        eax,esi
 0050E997    call       004EBE38
 0050E99C    mov        [0061E3B8],eax; gvar_0061E3B8
 0050E9A1    mov        edx,50ECD8
 0050E9A6    mov        eax,esi
 0050E9A8    call       004EBE38
 0050E9AD    mov        [0061E3BC],eax; gvar_0061E3BC
 0050E9B2    mov        edx,50ECE4
 0050E9B7    mov        eax,esi
 0050E9B9    call       004EBE38
 0050E9BE    mov        [0061E3C0],eax; gvar_0061E3C0
 0050E9C3    mov        edx,50ECEC
 0050E9C8    mov        eax,esi
 0050E9CA    call       004EBE38
 0050E9CF    mov        [0061E3C4],eax; gvar_0061E3C4
 0050E9D4    mov        edx,50ED00
 0050E9D9    mov        eax,esi
 0050E9DB    call       004EBE38
 0050E9E0    mov        [0061E3C8],eax; gvar_0061E3C8
 0050E9E5    mov        edx,50ED08
 0050E9EA    mov        eax,esi
 0050E9EC    call       004EBE38
 0050E9F1    mov        [0061E3CC],eax; gvar_0061E3CC
 0050E9F6    mov        edx,50ED14
 0050E9FB    mov        eax,esi
 0050E9FD    call       004EBE38
 0050EA02    mov        [0061E3D0],eax; gvar_0061E3D0
 0050EA07    mov        edx,50ED1C
 0050EA0C    mov        eax,esi
 0050EA0E    call       004EBE38
 0050EA13    mov        [0061E3D4],eax; gvar_0061E3D4
 0050EA18    mov        edx,50ED28
 0050EA1D    mov        eax,esi
 0050EA1F    call       004EBE38
 0050EA24    mov        [0061E3D8],eax; gvar_0061E3D8
 0050EA29    mov        edx,50ED34
 0050EA2E    mov        eax,esi
 0050EA30    call       004EBE38
 0050EA35    mov        [0061E3DC],eax; gvar_0061E3DC
 0050EA3A    mov        edx,50ED40
 0050EA3F    mov        eax,esi
 0050EA41    call       004EBE38
 0050EA46    mov        [0061E3E0],eax; gvar_0061E3E0
 0050EA4B    mov        edx,50ED48
 0050EA50    mov        eax,esi
 0050EA52    call       004EBE38
 0050EA57    mov        [0061E3E4],eax; gvar_0061E3E4
 0050EA5C    mov        edx,50ED54
 0050EA61    mov        eax,esi
 0050EA63    call       004EBE38
 0050EA68    mov        [0061E3E8],eax; gvar_0061E3E8
 0050EA6D    mov        edx,50ED60
 0050EA72    mov        eax,esi
 0050EA74    call       004EBE38
 0050EA79    mov        [0061E3EC],eax; gvar_0061E3EC
 0050EA7E    mov        eax,ebx
 0050EA80    pop        esi
 0050EA81    pop        ebx
 0050EA82    pop        ebp
 0050EA83    ret
*}
//end;

Initialization
//0050EDB0
{*
 0050EDB0    push       ebp
 0050EDB1    mov        ebp,esp
 0050EDB3    add        esp,0FFFFFFF8
 0050EDB6    sub        dword ptr ds:[61E3F4],1
>0050EDBD    jae        0050EDE5
 0050EDBF    push       1
 0050EDC1    mov        eax,50EDF4; 'libpq74.dll'
 0050EDC6    mov        dword ptr [ebp-8],eax
 0050EDC9    mov        eax,50EE08; 'libpq.dll'
 0050EDCE    mov        dword ptr [ebp-4],eax
 0050EDD1    lea        ecx,[ebp-8]
 0050EDD4    mov        dl,1
 0050EDD6    mov        eax,[0050E5D4]; TZPostgreSQLNativeLibraryLoader
 0050EDDB    call       TZSybaseNativeLibraryLoader.Create; TZPostgreSQLNativeLibraryLoader.Create
 0050EDE0    mov        [0061E3F0],eax; gvar_0061E3F0:TZPostgreSQLNativeLibraryLoader
 0050EDE5    pop        ecx
 0050EDE6    pop        ecx
 0050EDE7    pop        ebp
 0050EDE8    ret
*}
Finalization
//0050ED6C
{*
 0050ED6C    push       ebp
 0050ED6D    mov        ebp,esp
 0050ED6F    xor        eax,eax
 0050ED71    push       ebp
 0050ED72    push       50EDA6
 0050ED77    push       dword ptr fs:[eax]
 0050ED7A    mov        dword ptr fs:[eax],esp
 0050ED7D    inc        dword ptr ds:[61E3F4]
>0050ED83    jne        0050ED98
 0050ED85    cmp        dword ptr ds:[61E3F0],0; gvar_0061E3F0:TZPostgreSQLNativeLibraryLoader
>0050ED8C    je         0050ED98
 0050ED8E    mov        eax,[0061E3F0]; gvar_0061E3F0:TZPostgreSQLNativeLibraryLoader
 0050ED93    call       TObject.Free
 0050ED98    xor        eax,eax
 0050ED9A    pop        edx
 0050ED9B    pop        ecx
 0050ED9C    pop        ecx
 0050ED9D    mov        dword ptr fs:[eax],edx
 0050EDA0    push       50EDAD
 0050EDA5    ret
<0050EDA6    jmp        @HandleFinally
<0050EDAB    jmp        0050EDA5
 0050EDAD    pop        ebp
 0050EDAE    ret
*}
end.