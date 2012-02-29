{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit168;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZSQLiteNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0053AC54:?; virtual;
  end;

implementation

{$R *.DFM}

//0053AC54
//function sub_0053AC54:?;
//begin
{*
 0053AC54    push       ebp
 0053AC55    mov        ebp,esp
 0053AC57    push       ebx
 0053AC58    push       esi
 0053AC59    mov        esi,eax
 0053AC5B    mov        eax,esi
 0053AC5D    call       004EBCD0
 0053AC62    mov        ebx,eax
 0053AC64    mov        edx,53AEF0
 0053AC69    mov        eax,esi
 0053AC6B    call       004EBE38
 0053AC70    mov        [0061EA7C],eax; gvar_0061EA7C
 0053AC75    mov        edx,53AEFC
 0053AC7A    mov        eax,esi
 0053AC7C    call       004EBE38
 0053AC81    mov        [0061EA80],eax; gvar_0061EA80
 0053AC86    mov        edx,53AF0C
 0053AC8B    mov        eax,esi
 0053AC8D    call       004EBE38
 0053AC92    mov        [0061EA84],eax; gvar_0061EA84
 0053AC97    mov        edx,53AF18
 0053AC9C    mov        eax,esi
 0053AC9E    call       004EBE38
 0053ACA3    mov        [0061EA88],eax; gvar_0061EA88
 0053ACA8    mov        edx,53AF34
 0053ACAD    mov        eax,esi
 0053ACAF    call       004EBE38
 0053ACB4    mov        [0061EA8C],eax; gvar_0061EA8C
 0053ACB9    mov        edx,53AF44
 0053ACBE    mov        eax,esi
 0053ACC0    call       004EBE38
 0053ACC5    mov        [0061EA90],eax; gvar_0061EA90
 0053ACCA    mov        edx,53AF64
 0053ACCF    mov        eax,esi
 0053ACD1    call       004EBE38
 0053ACD6    mov        [0061EA94],eax; gvar_0061EA94
 0053ACDB    mov        edx,53AF78
 0053ACE0    mov        eax,esi
 0053ACE2    call       004EBE38
 0053ACE7    mov        [0061EA98],eax; gvar_0061EA98
 0053ACEC    mov        edx,53AF8C
 0053ACF1    mov        eax,esi
 0053ACF3    call       004EBE38
 0053ACF8    mov        [0061EA9C],eax; gvar_0061EA9C
 0053ACFD    mov        edx,53AF9C
 0053AD02    mov        eax,esi
 0053AD04    call       004EBE38
 0053AD09    mov        [0061EAA0],eax; gvar_0061EAA0
 0053AD0E    mov        edx,53AFB0
 0053AD13    mov        eax,esi
 0053AD15    call       004EBE38
 0053AD1A    mov        [0061EAA4],eax; gvar_0061EAA4
 0053AD1F    mov        edx,53AFC4
 0053AD24    mov        eax,esi
 0053AD26    call       004EBE38
 0053AD2B    mov        [0061EAA8],eax; gvar_0061EAA8
 0053AD30    mov        edx,53AFD8
 0053AD35    mov        eax,esi
 0053AD37    call       004EBE38
 0053AD3C    mov        [0061EAAC],eax; gvar_0061EAAC
 0053AD41    mov        edx,53AFEC
 0053AD46    mov        eax,esi
 0053AD48    call       004EBE38
 0053AD4D    mov        [0061EAB0],eax; gvar_0061EAB0
 0053AD52    mov        edx,53AFFC
 0053AD57    mov        eax,esi
 0053AD59    call       004EBE38
 0053AD5E    mov        [0061EAB4],eax; gvar_0061EAB4
 0053AD63    mov        edx,53B010
 0053AD68    mov        eax,esi
 0053AD6A    call       004EBE38
 0053AD6F    mov        [0061EAB8],eax; gvar_0061EAB8
 0053AD74    mov        edx,53B024
 0053AD79    mov        eax,esi
 0053AD7B    call       004EBE38
 0053AD80    mov        [0061EABC],eax; gvar_0061EABC
 0053AD85    mov        edx,53B03C
 0053AD8A    mov        eax,esi
 0053AD8C    call       004EBE38
 0053AD91    mov        [0061EAC0],eax; gvar_0061EAC0
 0053AD96    mov        edx,53B054
 0053AD9B    mov        eax,esi
 0053AD9D    call       004EBE38
 0053ADA2    mov        [0061EAC4],eax; gvar_0061EAC4
 0053ADA7    mov        edx,53B06C
 0053ADAC    mov        eax,esi
 0053ADAE    call       004EBE38
 0053ADB3    mov        [0061EAC8],eax; gvar_0061EAC8
 0053ADB8    mov        edx,53B088
 0053ADBD    mov        eax,esi
 0053ADBF    call       004EBE38
 0053ADC4    mov        [0061EACC],eax; gvar_0061EACC
 0053ADC9    mov        edx,53B0A0
 0053ADCE    mov        eax,esi
 0053ADD0    call       004EBE38
 0053ADD5    mov        [0061EAD0],eax; gvar_0061EAD0
 0053ADDA    mov        edx,53B0BC
 0053ADDF    mov        eax,esi
 0053ADE1    call       004EBE38
 0053ADE6    mov        [0061EAD4],eax; gvar_0061EAD4
 0053ADEB    mov        edx,53B0D4
 0053ADF0    mov        eax,esi
 0053ADF2    call       004EBE38
 0053ADF7    mov        [0061EAD8],eax; gvar_0061EAD8
 0053ADFC    mov        edx,53B0E8
 0053AE01    mov        eax,esi
 0053AE03    call       004EBE38
 0053AE08    mov        [0061EADC],eax; gvar_0061EADC
 0053AE0D    mov        edx,53B104
 0053AE12    mov        eax,esi
 0053AE14    call       004EBE38
 0053AE19    mov        [0061EAE0],eax; gvar_0061EAE0
 0053AE1E    mov        edx,53B11C
 0053AE23    mov        eax,esi
 0053AE25    call       004EBE38
 0053AE2A    mov        [0061EAE4],eax; gvar_0061EAE4
 0053AE2F    mov        edx,53B134
 0053AE34    mov        eax,esi
 0053AE36    call       004EBE38
 0053AE3B    mov        [0061EAE8],eax; gvar_0061EAE8
 0053AE40    mov        edx,53B144
 0053AE45    mov        eax,esi
 0053AE47    call       004EBE38
 0053AE4C    mov        [0061EAEC],eax; gvar_0061EAEC
 0053AE51    mov        edx,53B154
 0053AE56    mov        eax,esi
 0053AE58    call       004EBE38
 0053AE5D    mov        [0061EAF0],eax; gvar_0061EAF0
 0053AE62    mov        edx,53B160
 0053AE67    mov        eax,esi
 0053AE69    call       004EBE38
 0053AE6E    mov        [0061EAF4],eax; gvar_0061EAF4
 0053AE73    mov        edx,53B170
 0053AE78    mov        eax,esi
 0053AE7A    call       004EBE38
 0053AE7F    mov        [0061EAF8],eax; gvar_0061EAF8
 0053AE84    mov        edx,53B180
 0053AE89    mov        eax,esi
 0053AE8B    call       004EBE38
 0053AE90    mov        [0061EAFC],eax; gvar_0061EAFC
 0053AE95    mov        edx,53B18C
 0053AE9A    mov        eax,esi
 0053AE9C    call       004EBE38
 0053AEA1    mov        [0061EB00],eax; gvar_0061EB00
 0053AEA6    mov        edx,53B1A4
 0053AEAB    mov        eax,esi
 0053AEAD    call       004EBE38
 0053AEB2    mov        [0061EB04],eax; gvar_0061EB04
 0053AEB7    mov        edx,53B1B8
 0053AEBC    mov        eax,esi
 0053AEBE    call       004EBE38
 0053AEC3    mov        [0061EB08],eax; gvar_0061EB08
 0053AEC8    mov        edx,53B1D0
 0053AECD    mov        eax,esi
 0053AECF    call       004EBE38
 0053AED4    mov        [0061EB0C],eax; gvar_0061EB0C
 0053AED9    mov        edx,53B1E0
 0053AEDE    mov        eax,esi
 0053AEE0    call       004EBE38
 0053AEE5    mov        [0061EB10],eax; gvar_0061EB10
 0053AEEA    mov        eax,ebx
 0053AEEC    pop        esi
 0053AEED    pop        ebx
 0053AEEE    pop        ebp
 0053AEEF    ret
*}
//end;

Initialization
//0053B230
{*
 0053B230    push       ebp
 0053B231    mov        ebp,esp
 0053B233    push       ecx
 0053B234    sub        dword ptr ds:[61EB18],1
>0053B23B    jae        0053B25B
 0053B23D    push       0
 0053B23F    mov        eax,53B268; 'sqlite.dll'
 0053B244    mov        dword ptr [ebp-4],eax
 0053B247    lea        ecx,[ebp-4]
 0053B24A    mov        dl,1
 0053B24C    mov        eax,[0053ABDC]; TZSQLiteNativeLibraryLoader
 0053B251    call       TZSybaseNativeLibraryLoader.Create; TZSQLiteNativeLibraryLoader.Create
 0053B256    mov        [0061EB14],eax; gvar_0061EB14:TZSQLiteNativeLibraryLoader
 0053B25B    pop        ecx
 0053B25C    pop        ebp
 0053B25D    ret
*}
Finalization
//0053B1EC
{*
 0053B1EC    push       ebp
 0053B1ED    mov        ebp,esp
 0053B1EF    xor        eax,eax
 0053B1F1    push       ebp
 0053B1F2    push       53B226
 0053B1F7    push       dword ptr fs:[eax]
 0053B1FA    mov        dword ptr fs:[eax],esp
 0053B1FD    inc        dword ptr ds:[61EB18]
>0053B203    jne        0053B218
 0053B205    cmp        dword ptr ds:[61EB14],0; gvar_0061EB14:TZSQLiteNativeLibraryLoader
>0053B20C    je         0053B218
 0053B20E    mov        eax,[0061EB14]; gvar_0061EB14:TZSQLiteNativeLibraryLoader
 0053B213    call       TObject.Free
 0053B218    xor        eax,eax
 0053B21A    pop        edx
 0053B21B    pop        ecx
 0053B21C    pop        ecx
 0053B21D    mov        dword ptr fs:[eax],edx
 0053B220    push       53B22D
 0053B225    ret
<0053B226    jmp        @HandleFinally
<0053B22B    jmp        0053B225
 0053B22D    pop        ebp
 0053B22E    ret
*}
end.