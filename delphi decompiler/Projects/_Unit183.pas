{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit183;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZFirebirdNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_00523794:?; virtual;
  end;

implementation

{$R *.DFM}

//00523794
//function sub_00523794:?;
//begin
{*
 00523794    push       ebp
 00523795    mov        ebp,esp
 00523797    push       ebx
 00523798    push       esi
 00523799    mov        esi,eax
 0052379B    mov        eax,esi
 0052379D    call       004EBCD0
 005237A2    mov        ebx,eax
 005237A4    mov        edx,523B30
 005237A9    mov        eax,esi
 005237AB    call       004EBE38
 005237B0    mov        [0061E8A8],eax; gvar_0061E8A8
 005237B5    mov        edx,523B3C
 005237BA    mov        eax,esi
 005237BC    call       004EBE38
 005237C1    mov        [0061E8AC],eax; gvar_0061E8AC
 005237C6    mov        edx,523B50
 005237CB    mov        eax,esi
 005237CD    call       004EBE38
 005237D2    mov        [0061E8B0],eax; gvar_0061E8B0
 005237D7    mov        edx,523B60
 005237DC    mov        eax,esi
 005237DE    call       004EBE38
 005237E3    mov        [0061E94C],eax; gvar_0061E94C
 005237E8    mov        edx,523B70
 005237ED    mov        eax,esi
 005237EF    call       004EBE38
 005237F4    mov        [0061E900],eax; gvar_0061E900
 005237F9    mov        edx,523B84
 005237FE    mov        eax,esi
 00523800    call       004EBE38
 00523805    mov        [0061E904],eax; gvar_0061E904
 0052380A    mov        edx,523B98
 0052380F    mov        eax,esi
 00523811    call       004EBE38
 00523816    mov        [0061E908],eax; gvar_0061E908
 0052381B    mov        edx,523BB0
 00523820    mov        eax,esi
 00523822    call       004EBE38
 00523827    mov        [0061E90C],eax; gvar_0061E90C
 0052382C    mov        edx,523BC8
 00523831    mov        eax,esi
 00523833    call       004EBE38
 00523838    mov        [0061E910],eax; gvar_0061E910
 0052383D    mov        edx,523BDC
 00523842    mov        eax,esi
 00523844    call       004EBE38
 00523849    mov        [0061E914],eax; gvar_0061E914
 0052384E    mov        edx,523BF0
 00523853    mov        eax,esi
 00523855    call       004EBE38
 0052385A    mov        [0061E920],eax; gvar_0061E920
 0052385F    mov        edx,523C00
 00523864    mov        eax,esi
 00523866    call       004EBE38
 0052386B    mov        [0061E918],eax; gvar_0061E918
 00523870    mov        edx,523C10
 00523875    mov        eax,esi
 00523877    call       004EBE38
 0052387C    mov        [0061E924],eax; gvar_0061E924
 00523881    mov        edx,523C20
 00523886    mov        eax,esi
 00523888    call       004EBE38
 0052388D    mov        [0061E928],eax; gvar_0061E928
 00523892    mov        edx,523C30
 00523897    mov        eax,esi
 00523899    call       004EBE38
 0052389E    mov        [0061E92C],eax; gvar_0061E92C
 005238A3    mov        edx,523C40
 005238A8    mov        eax,esi
 005238AA    call       004EBE38
 005238AF    mov        [0061E930],eax; gvar_0061E930
 005238B4    mov        edx,523C50
 005238B9    mov        eax,esi
 005238BB    call       004EBE38
 005238C0    mov        [0061E91C],eax; gvar_0061E91C
 005238C5    mov        edx,523C64
 005238CA    mov        eax,esi
 005238CC    call       004EBE38
 005238D1    mov        [0061E948],eax; gvar_0061E948
 005238D6    mov        edx,523C74
 005238DB    mov        eax,esi
 005238DD    call       004EBE38
 005238E2    mov        [0061E944],eax; gvar_0061E944
 005238E7    mov        edx,523C84
 005238EC    mov        eax,esi
 005238EE    call       004EBE38
 005238F3    mov        [0061E8F0],eax; gvar_0061E8F0
 005238F8    mov        edx,523C9C
 005238FD    mov        eax,esi
 005238FF    call       004EBE38
 00523904    mov        [0061E8E4],eax; gvar_0061E8E4
 00523909    mov        edx,523CB0
 0052390E    mov        eax,esi
 00523910    call       004EBE38
 00523915    mov        [0061E8E0],eax; gvar_0061E8E0
 0052391A    mov        edx,523CC4
 0052391F    mov        eax,esi
 00523921    call       004EBE38
 00523926    mov        [0061E8F8],eax; gvar_0061E8F8
 0052392B    mov        edx,523CE0
 00523930    mov        eax,esi
 00523932    call       004EBE38
 00523937    mov        [0061E8EC],eax; gvar_0061E8EC
 0052393C    mov        edx,523CF0
 00523941    mov        eax,esi
 00523943    call       004EBE38
 00523948    mov        [0061E8FC],eax; gvar_0061E8FC
 0052394D    mov        edx,523D04
 00523952    mov        eax,esi
 00523954    call       004EBE38
 00523959    mov        [0061E8D0],eax; gvar_0061E8D0
 0052395E    mov        edx,523D20
 00523963    mov        eax,esi
 00523965    call       004EBE38
 0052396A    mov        [0061E8D4],eax; gvar_0061E8D4
 0052396F    mov        edx,523D3C
 00523974    mov        eax,esi
 00523976    call       004EBE38
 0052397B    mov        [0061E8F4],eax; gvar_0061E8F4
 00523980    mov        edx,523D50
 00523985    mov        eax,esi
 00523987    call       004EBE38
 0052398C    mov        [0061E8DC],eax; gvar_0061E8DC
 00523991    mov        edx,523D68
 00523996    mov        eax,esi
 00523998    call       004EBE38
 0052399D    mov        [0061E8D8],eax; gvar_0061E8D8
 005239A2    mov        edx,523D7C
 005239A7    mov        eax,esi
 005239A9    call       004EBE38
 005239AE    mov        [0061E8E8],eax; gvar_0061E8E8
 005239B3    mov        edx,523D98
 005239B8    mov        eax,esi
 005239BA    call       004EBE38
 005239BF    mov        [0061E89C],eax; gvar_0061E89C
 005239C4    mov        edx,523DAC
 005239C9    mov        eax,esi
 005239CB    call       004EBE38
 005239D0    mov        [0061E898],eax; gvar_0061E898
 005239D5    mov        edx,523DC0
 005239DA    mov        eax,esi
 005239DC    call       004EBE38
 005239E1    mov        [0061E894],eax; gvar_0061E894
 005239E6    mov        edx,523DD4
 005239EB    mov        eax,esi
 005239ED    call       004EBE38
 005239F2    mov        [0061E8A0],eax; gvar_0061E8A0
 005239F7    mov        edx,523DE8
 005239FC    mov        eax,esi
 005239FE    call       004EBE38
 00523A03    mov        [0061E8CC],eax; gvar_0061E8CC
 00523A08    mov        edx,523E00
 00523A0D    mov        eax,esi
 00523A0F    call       004EBE38
 00523A14    mov        [0061E8B8],eax; gvar_0061E8B8
 00523A19    mov        edx,523E14
 00523A1E    mov        eax,esi
 00523A20    call       004EBE38
 00523A25    mov        [0061E8B4],eax; gvar_0061E8B4
 00523A2A    mov        edx,523E2C
 00523A2F    mov        eax,esi
 00523A31    call       004EBE38
 00523A36    mov        [0061E8C4],eax; gvar_0061E8C4
 00523A3B    mov        edx,523E44
 00523A40    mov        eax,esi
 00523A42    call       004EBE38
 00523A47    mov        [0061E8C8],eax; gvar_0061E8C8
 00523A4C    mov        edx,523E5C
 00523A51    mov        eax,esi
 00523A53    call       004EBE38
 00523A58    mov        [0061E8BC],eax; gvar_0061E8BC
 00523A5D    mov        edx,523E78
 00523A62    mov        eax,esi
 00523A64    call       004EBE38
 00523A69    mov        [0061E940],eax; gvar_0061E940
 00523A6E    mov        edx,523E8C
 00523A73    mov        eax,esi
 00523A75    call       004EBE38
 00523A7A    mov        [0061E934],eax; gvar_0061E934
 00523A7F    mov        edx,523E9C
 00523A84    mov        eax,esi
 00523A86    call       004EBE38
 00523A8B    mov        [0061E938],eax; gvar_0061E938
 00523A90    mov        edx,523EB0
 00523A95    mov        eax,esi
 00523A97    call       004EBE38
 00523A9C    mov        [0061E93C],eax; gvar_0061E93C
 00523AA1    mov        edx,523EC0
 00523AA6    mov        eax,esi
 00523AA8    call       004EBE38
 00523AAD    mov        [0061E8A4],eax; gvar_0061E8A4
 00523AB2    mov        edx,523ECC
 00523AB7    mov        eax,esi
 00523AB9    call       004EBE38
 00523ABE    mov        [0061E8C0],eax; gvar_0061E8C0
 00523AC3    mov        edx,523EE4
 00523AC8    mov        eax,esi
 00523ACA    call       004EBE38
 00523ACF    mov        [0061E954],eax; gvar_0061E954
 00523AD4    mov        edx,523EF8
 00523AD9    mov        eax,esi
 00523ADB    call       004EBE38
 00523AE0    mov        [0061E95C],eax; gvar_0061E95C
 00523AE5    mov        edx,523F0C
 00523AEA    mov        eax,esi
 00523AEC    call       004EBE38
 00523AF1    mov        [0061E964],eax; gvar_0061E964
 00523AF6    mov        edx,523F24
 00523AFB    mov        eax,esi
 00523AFD    call       004EBE38
 00523B02    mov        [0061E950],eax; gvar_0061E950
 00523B07    mov        edx,523F38
 00523B0C    mov        eax,esi
 00523B0E    call       004EBE38
 00523B13    mov        [0061E958],eax; gvar_0061E958
 00523B18    mov        edx,523F4C
 00523B1D    mov        eax,esi
 00523B1F    call       004EBE38
 00523B24    mov        [0061E960],eax; gvar_0061E960
 00523B29    mov        eax,ebx
 00523B2B    pop        esi
 00523B2C    pop        ebx
 00523B2D    pop        ebp
 00523B2E    ret
*}
//end;

Initialization
//00523FBC
{*
 00523FBC    push       ebp
 00523FBD    mov        ebp,esp
 00523FBF    add        esp,0FFFFFFF8
 00523FC2    sub        dword ptr ds:[61E970],1
>00523FC9    jae        00524017
 00523FCB    push       1
 00523FCD    mov        eax,524024; 'fbclient20.dll'
 00523FD2    mov        dword ptr [ebp-8],eax
 00523FD5    mov        eax,52403C; 'fbclient.dll'
 00523FDA    mov        dword ptr [ebp-4],eax
 00523FDD    lea        ecx,[ebp-8]
 00523FE0    mov        dl,1
 00523FE2    mov        eax,[00523718]; TZFirebirdNativeLibraryLoader
 00523FE7    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00523FEC    mov        [0061E968],eax; gvar_0061E968:TZFirebirdNativeLibraryLoader
 00523FF1    push       1
 00523FF3    mov        eax,524054; 'fbclientd20.dll'
 00523FF8    mov        dword ptr [ebp-8],eax
 00523FFB    mov        eax,52406C; 'fbclientd.dll'
 00524000    mov        dword ptr [ebp-4],eax
 00524003    lea        ecx,[ebp-8]
 00524006    mov        dl,1
 00524008    mov        eax,[00523718]; TZFirebirdNativeLibraryLoader
 0052400D    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00524012    mov        [0061E96C],eax; gvar_0061E96C:TZFirebirdNativeLibraryLoader
 00524017    pop        ecx
 00524018    pop        ecx
 00524019    pop        ebp
 0052401A    ret
*}
Finalization
//00523F64
{*
 00523F64    push       ebp
 00523F65    mov        ebp,esp
 00523F67    xor        eax,eax
 00523F69    push       ebp
 00523F6A    push       523FB1
 00523F6F    push       dword ptr fs:[eax]
 00523F72    mov        dword ptr fs:[eax],esp
 00523F75    inc        dword ptr ds:[61E970]
>00523F7B    jne        00523FA3
 00523F7D    cmp        dword ptr ds:[61E968],0; gvar_0061E968:TZFirebirdNativeLibraryLoader
>00523F84    je         00523F90
 00523F86    mov        eax,[0061E968]; gvar_0061E968:TZFirebirdNativeLibraryLoader
 00523F8B    call       TObject.Free
 00523F90    cmp        dword ptr ds:[61E96C],0; gvar_0061E96C:TZFirebirdNativeLibraryLoader
>00523F97    je         00523FA3
 00523F99    mov        eax,[0061E96C]; gvar_0061E96C:TZFirebirdNativeLibraryLoader
 00523F9E    call       TObject.Free
 00523FA3    xor        eax,eax
 00523FA5    pop        edx
 00523FA6    pop        ecx
 00523FA7    pop        ecx
 00523FA8    mov        dword ptr fs:[eax],edx
 00523FAB    push       523FB8
 00523FB0    ret
<00523FB1    jmp        @HandleFinally
<00523FB6    jmp        00523FB0
 00523FB8    pop        ebp
 00523FB9    ret
*}
end.