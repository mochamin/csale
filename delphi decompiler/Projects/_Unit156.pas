{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit156;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZOracleNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_005436A0:?; virtual;
  end;

implementation

{$R *.DFM}

//005436A0
//function sub_005436A0:?;
//begin
{*
 005436A0    push       ebp
 005436A1    mov        ebp,esp
 005436A3    push       ebx
 005436A4    push       esi
 005436A5    mov        esi,eax
 005436A7    mov        eax,esi
 005436A9    call       004EBCD0
 005436AE    mov        ebx,eax
 005436B0    mov        edx,543B70
 005436B5    mov        eax,esi
 005436B7    call       004EBE38
 005436BC    mov        [0061EBE4],eax; gvar_0061EBE4
 005436C1    mov        edx,543B80
 005436C6    mov        eax,esi
 005436C8    call       004EBE38
 005436CD    mov        [0061EBDC],eax; gvar_0061EBDC
 005436D2    mov        edx,543B90
 005436D7    mov        eax,esi
 005436D9    call       004EBE38
 005436DE    mov        [0061EBE0],eax; gvar_0061EBE0
 005436E3    mov        edx,543B9C
 005436E8    mov        eax,esi
 005436EA    call       004EBE38
 005436EF    mov        [0061EBE8],eax; gvar_0061EBE8
 005436F4    mov        edx,543BAC
 005436F9    mov        eax,esi
 005436FB    call       004EBE38
 00543700    mov        [0061EC00],eax; gvar_0061EC00
 00543705    mov        edx,543BBC
 0054370A    mov        eax,esi
 0054370C    call       004EBE38
 00543711    mov        [0061EBF0],eax; gvar_0061EBF0
 00543716    mov        edx,543BC8
 0054371B    mov        eax,esi
 0054371D    call       004EBE38
 00543722    mov        [0061EC14],eax; gvar_0061EC14
 00543727    mov        edx,543BD4
 0054372C    mov        eax,esi
 0054372E    call       004EBE38
 00543733    mov        [0061EC50],eax; gvar_0061EC50
 00543738    mov        edx,543BE8
 0054373D    mov        eax,esi
 0054373F    call       004EBE38
 00543744    mov        [0061EC54],eax; gvar_0061EC54
 00543749    mov        edx,543BFC
 0054374E    mov        eax,esi
 00543750    call       004EBE38
 00543755    mov        [0061EC04],eax; gvar_0061EC04
 0054375A    mov        edx,543C08
 0054375F    mov        eax,esi
 00543761    call       004EBE38
 00543766    mov        [0061EBEC],eax; gvar_0061EBEC
 0054376B    mov        edx,543C18
 00543770    mov        eax,esi
 00543772    call       004EBE38
 00543777    mov        [0061EBFC],eax; gvar_0061EBFC
 0054377C    mov        edx,543C28
 00543781    mov        eax,esi
 00543783    call       004EBE38
 00543788    mov        [0061EC60],eax; gvar_0061EC60
 0054378D    mov        edx,543C3C
 00543792    mov        eax,esi
 00543794    call       004EBE38
 00543799    mov        [0061EC48],eax; gvar_0061EC48
 0054379E    mov        edx,543C48
 005437A3    mov        eax,esi
 005437A5    call       004EBE38
 005437AA    mov        [0061EC4C],eax; gvar_0061EC4C
 005437AF    mov        edx,543C54
 005437B4    mov        eax,esi
 005437B6    call       004EBE38
 005437BB    mov        [0061EBF4],eax; gvar_0061EBF4
 005437C0    mov        edx,543C64
 005437C5    mov        eax,esi
 005437C7    call       004EBE38
 005437CC    mov        [0061EBF8],eax; gvar_0061EBF8
 005437D1    mov        edx,543C74
 005437D6    mov        eax,esi
 005437D8    call       004EBE38
 005437DD    mov        [0061EBD8],eax; gvar_0061EBD8
 005437E2    mov        edx,543C88
 005437E7    mov        eax,esi
 005437E9    call       004EBE38
 005437EE    mov        [0061EC2C],eax; gvar_0061EC2C
 005437F3    mov        edx,543C98
 005437F8    mov        eax,esi
 005437FA    call       004EBE38
 005437FF    mov        [0061EC30],eax; gvar_0061EC30
 00543804    mov        edx,543CA8
 00543809    mov        eax,esi
 0054380B    call       004EBE38
 00543810    mov        [0061EC34],eax; gvar_0061EC34
 00543815    mov        edx,543CBC
 0054381A    mov        eax,esi
 0054381C    call       004EBE38
 00543821    mov        [0061EC38],eax; gvar_0061EC38
 00543826    mov        edx,543CCC
 0054382B    mov        eax,esi
 0054382D    call       004EBE38
 00543832    mov        [0061EC3C],eax; gvar_0061EC3C
 00543837    mov        edx,543CDC
 0054383C    mov        eax,esi
 0054383E    call       004EBE38
 00543843    mov        [0061EC40],eax; gvar_0061EC40
 00543848    mov        edx,543CEC
 0054384D    mov        eax,esi
 0054384F    call       004EBE38
 00543854    mov        [0061EC08],eax; gvar_0061EC08
 00543859    mov        edx,543CFC
 0054385E    mov        eax,esi
 00543860    call       004EBE38
 00543865    mov        [0061EC0C],eax; gvar_0061EC0C
 0054386A    mov        edx,543D0C
 0054386F    mov        eax,esi
 00543871    call       004EBE38
 00543876    mov        [0061EC18],eax; gvar_0061EC18
 0054387B    mov        edx,543D1C
 00543880    mov        eax,esi
 00543882    call       004EBE38
 00543887    mov        [0061EC58],eax; gvar_0061EC58
 0054388C    mov        edx,543D30
 00543891    mov        eax,esi
 00543893    call       004EBE38
 00543898    mov        [0061EC5C],eax; gvar_0061EC5C
 0054389D    mov        edx,543D44
 005438A2    mov        eax,esi
 005438A4    call       004EBE38
 005438A9    mov        [0061EC10],eax; gvar_0061EC10
 005438AE    mov        edx,543D50
 005438B3    mov        eax,esi
 005438B5    call       004EBE38
 005438BA    mov        [0061ECF0],eax; gvar_0061ECF0
 005438BF    mov        edx,543D64
 005438C4    mov        eax,esi
 005438C6    call       004EBE38
 005438CB    mov        [0061EC1C],eax; gvar_0061EC1C
 005438D0    mov        edx,543D74
 005438D5    mov        eax,esi
 005438D7    call       004EBE38
 005438DC    mov        [0061EC20],eax; gvar_0061EC20
 005438E1    mov        edx,543D8C
 005438E6    mov        eax,esi
 005438E8    call       004EBE38
 005438ED    mov        [0061EC24],eax; gvar_0061EC24
 005438F2    mov        edx,543D9C
 005438F7    mov        eax,esi
 005438F9    call       004EBE38
 005438FE    mov        [0061EC28],eax; gvar_0061EC28
 00543903    mov        edx,543DAC
 00543908    mov        eax,esi
 0054390A    call       004EBE38
 0054390F    mov        [0061EC64],eax; gvar_0061EC64
 00543914    mov        edx,543DBC
 00543919    mov        eax,esi
 0054391B    call       004EBE38
 00543920    mov        [0061EC98],eax; gvar_0061EC98
 00543925    mov        edx,543DCC
 0054392A    mov        eax,esi
 0054392C    call       004EBE38
 00543931    mov        [0061EC9C],eax; gvar_0061EC9C
 00543936    mov        edx,543DDC
 0054393B    mov        eax,esi
 0054393D    call       004EBE38
 00543942    mov        [0061ECA4],eax; gvar_0061ECA4
 00543947    mov        edx,543DE8
 0054394C    mov        eax,esi
 0054394E    call       004EBE38
 00543953    mov        [0061ECAC],eax; gvar_0061ECAC
 00543958    mov        edx,543E00
 0054395D    mov        eax,esi
 0054395F    call       004EBE38
 00543964    mov        [0061ECB0],eax; gvar_0061ECB0
 00543969    mov        edx,543E18
 0054396E    mov        eax,esi
 00543970    call       004EBE38
 00543975    mov        [0061ECB4],eax; gvar_0061ECB4
 0054397A    mov        edx,543E24
 0054397F    mov        eax,esi
 00543981    call       004EBE38
 00543986    mov        [0061ECB8],eax; gvar_0061ECB8
 0054398B    mov        edx,543E38
 00543990    mov        eax,esi
 00543992    call       004EBE38
 00543997    mov        [0061ECBC],eax; gvar_0061ECBC
 0054399C    mov        edx,543E4C
 005439A1    mov        eax,esi
 005439A3    call       004EBE38
 005439A8    mov        [0061ECC0],eax; gvar_0061ECC0
 005439AD    mov        edx,543E60
 005439B2    mov        eax,esi
 005439B4    call       004EBE38
 005439B9    mov        [0061ECC4],eax; gvar_0061ECC4
 005439BE    mov        edx,543E74
 005439C3    mov        eax,esi
 005439C5    call       004EBE38
 005439CA    mov        [0061ECCC],eax; gvar_0061ECCC
 005439CF    mov        edx,543E84
 005439D4    mov        eax,esi
 005439D6    call       004EBE38
 005439DB    mov        [0061ECD8],eax; gvar_0061ECD8
 005439E0    mov        edx,543E98
 005439E5    mov        eax,esi
 005439E7    call       004EBE38
 005439EC    mov        [0061ECDC],eax; gvar_0061ECDC
 005439F1    mov        edx,543EAC
 005439F6    mov        eax,esi
 005439F8    call       004EBE38
 005439FD    mov        [0061ECE4],eax; gvar_0061ECE4
 00543A02    mov        edx,543EB8
 00543A07    mov        eax,esi
 00543A09    call       004EBE38
 00543A0E    mov        [0061ECE8],eax; gvar_0061ECE8
 00543A13    mov        edx,543EC4
 00543A18    mov        eax,esi
 00543A1A    call       004EBE38
 00543A1F    mov        [0061ECEC],eax; gvar_0061ECEC
 00543A24    mov        edx,543ED0
 00543A29    mov        eax,esi
 00543A2B    call       004EBE38
 00543A30    mov        [0061ECA8],eax; gvar_0061ECA8
 00543A35    mov        edx,543EE8
 00543A3A    mov        eax,esi
 00543A3C    call       004EBE38
 00543A41    mov        [0061ECC8],eax; gvar_0061ECC8
 00543A46    mov        edx,543EFC
 00543A4B    mov        eax,esi
 00543A4D    call       004EBE38
 00543A52    mov        [0061ECA0],eax; gvar_0061ECA0
 00543A57    mov        edx,543F08
 00543A5C    mov        eax,esi
 00543A5E    call       004EBE38
 00543A63    mov        [0061ECD0],eax; gvar_0061ECD0
 00543A68    mov        edx,543F18
 00543A6D    mov        eax,esi
 00543A6F    call       004EBE38
 00543A74    mov        [0061ECD4],eax; gvar_0061ECD4
 00543A79    mov        edx,543F2C
 00543A7E    mov        eax,esi
 00543A80    call       004EBE38
 00543A85    mov        [0061ECE0],eax; gvar_0061ECE0
 00543A8A    mov        edx,543F38
 00543A8F    mov        eax,esi
 00543A91    call       004EBE38
 00543A96    mov        [0061EC68],eax; gvar_0061EC68
 00543A9B    mov        edx,543F4C
 00543AA0    mov        eax,esi
 00543AA2    call       004EBE38
 00543AA7    mov        [0061EC6C],eax; gvar_0061EC6C
 00543AAC    mov        edx,543F60
 00543AB1    mov        eax,esi
 00543AB3    call       004EBE38
 00543AB8    mov        [0061EC70],eax; gvar_0061EC70
 00543ABD    mov        edx,543F74
 00543AC2    mov        eax,esi
 00543AC4    call       004EBE38
 00543AC9    mov        [0061EC74],eax; gvar_0061EC74
 00543ACE    mov        edx,543F88
 00543AD3    mov        eax,esi
 00543AD5    call       004EBE38
 00543ADA    mov        [0061EC78],eax; gvar_0061EC78
 00543ADF    mov        edx,543F9C
 00543AE4    mov        eax,esi
 00543AE6    call       004EBE38
 00543AEB    mov        [0061EC7C],eax; gvar_0061EC7C
 00543AF0    mov        edx,543FB0
 00543AF5    mov        eax,esi
 00543AF7    call       004EBE38
 00543AFC    mov        [0061EC80],eax; gvar_0061EC80
 00543B01    mov        edx,543FC4
 00543B06    mov        eax,esi
 00543B08    call       004EBE38
 00543B0D    mov        [0061EC84],eax; gvar_0061EC84
 00543B12    mov        edx,543FE4
 00543B17    mov        eax,esi
 00543B19    call       004EBE38
 00543B1E    mov        [0061EC88],eax; gvar_0061EC88
 00543B23    mov        edx,543FFC
 00543B28    mov        eax,esi
 00543B2A    call       004EBE38
 00543B2F    mov        [0061EC8C],eax; gvar_0061EC8C
 00543B34    mov        edx,544014
 00543B39    mov        eax,esi
 00543B3B    call       004EBE38
 00543B40    mov        [0061EC90],eax; gvar_0061EC90
 00543B45    mov        edx,544028
 00543B4A    mov        eax,esi
 00543B4C    call       004EBE38
 00543B51    mov        [0061EC94],eax; gvar_0061EC94
 00543B56    mov        edx,544044
 00543B5B    mov        eax,esi
 00543B5D    call       004EBE38
 00543B62    mov        [0061EC44],eax; gvar_0061EC44
 00543B67    mov        eax,ebx
 00543B69    pop        esi
 00543B6A    pop        ebx
 00543B6B    pop        ebp
 00543B6C    ret
*}
//end;

Initialization
//00544098
{*
 00544098    push       ebp
 00544099    mov        ebp,esp
 0054409B    push       ecx
 0054409C    sub        dword ptr ds:[61ECF8],1
>005440A3    jae        005440C3
 005440A5    push       0
 005440A7    mov        eax,5440D0; 'oci.dll'
 005440AC    mov        dword ptr [ebp-4],eax
 005440AF    lea        ecx,[ebp-4]
 005440B2    mov        dl,1
 005440B4    mov        eax,[00543628]; TZOracleNativeLibraryLoader
 005440B9    call       TZSybaseNativeLibraryLoader.Create; TZOracleNativeLibraryLoader.Create
 005440BE    mov        [0061ECF4],eax; gvar_0061ECF4:TZOracleNativeLibraryLoader
 005440C3    pop        ecx
 005440C4    pop        ebp
 005440C5    ret
*}
Finalization
//00544054
{*
 00544054    push       ebp
 00544055    mov        ebp,esp
 00544057    xor        eax,eax
 00544059    push       ebp
 0054405A    push       54408E
 0054405F    push       dword ptr fs:[eax]
 00544062    mov        dword ptr fs:[eax],esp
 00544065    inc        dword ptr ds:[61ECF8]
>0054406B    jne        00544080
 0054406D    cmp        dword ptr ds:[61ECF4],0; gvar_0061ECF4:TZOracleNativeLibraryLoader
>00544074    je         00544080
 00544076    mov        eax,[0061ECF4]; gvar_0061ECF4:TZOracleNativeLibraryLoader
 0054407B    call       TObject.Free
 00544080    xor        eax,eax
 00544082    pop        edx
 00544083    pop        ecx
 00544084    pop        ecx
 00544085    mov        dword ptr fs:[eax],edx
 00544088    push       544095
 0054408D    ret
<0054408E    jmp        @HandleFinally
<00544093    jmp        0054408D
 00544095    pop        ebp
 00544096    ret
*}
end.