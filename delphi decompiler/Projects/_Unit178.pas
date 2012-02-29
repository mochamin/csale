{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit178;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZInterbaseNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_005207E8:?; virtual;
  end;

implementation

{$R *.DFM}

//005207E8
//function sub_005207E8:?;
//begin
{*
 005207E8    push       ebp
 005207E9    mov        ebp,esp
 005207EB    push       ebx
 005207EC    push       esi
 005207ED    mov        esi,eax
 005207EF    mov        eax,esi
 005207F1    call       004EBCD0
 005207F6    mov        ebx,eax
 005207F8    mov        edx,520B84
 005207FD    mov        eax,esi
 005207FF    call       004EBE38
 00520804    mov        [0061E60C],eax; gvar_0061E60C
 00520809    mov        edx,520B90
 0052080E    mov        eax,esi
 00520810    call       004EBE38
 00520815    mov        [0061E610],eax; gvar_0061E610
 0052081A    mov        edx,520BA4
 0052081F    mov        eax,esi
 00520821    call       004EBE38
 00520826    mov        [0061E614],eax; gvar_0061E614
 0052082B    mov        edx,520BB4
 00520830    mov        eax,esi
 00520832    call       004EBE38
 00520837    mov        [0061E6B0],eax; gvar_0061E6B0
 0052083C    mov        edx,520BC4
 00520841    mov        eax,esi
 00520843    call       004EBE38
 00520848    mov        [0061E664],eax; gvar_0061E664
 0052084D    mov        edx,520BD8
 00520852    mov        eax,esi
 00520854    call       004EBE38
 00520859    mov        [0061E668],eax; gvar_0061E668
 0052085E    mov        edx,520BEC
 00520863    mov        eax,esi
 00520865    call       004EBE38
 0052086A    mov        [0061E66C],eax; gvar_0061E66C
 0052086F    mov        edx,520C04
 00520874    mov        eax,esi
 00520876    call       004EBE38
 0052087B    mov        [0061E670],eax; gvar_0061E670
 00520880    mov        edx,520C1C
 00520885    mov        eax,esi
 00520887    call       004EBE38
 0052088C    mov        [0061E674],eax; gvar_0061E674
 00520891    mov        edx,520C30
 00520896    mov        eax,esi
 00520898    call       004EBE38
 0052089D    mov        [0061E678],eax; gvar_0061E678
 005208A2    mov        edx,520C44
 005208A7    mov        eax,esi
 005208A9    call       004EBE38
 005208AE    mov        [0061E684],eax; gvar_0061E684
 005208B3    mov        edx,520C54
 005208B8    mov        eax,esi
 005208BA    call       004EBE38
 005208BF    mov        [0061E67C],eax; gvar_0061E67C
 005208C4    mov        edx,520C64
 005208C9    mov        eax,esi
 005208CB    call       004EBE38
 005208D0    mov        [0061E688],eax; gvar_0061E688
 005208D5    mov        edx,520C74
 005208DA    mov        eax,esi
 005208DC    call       004EBE38
 005208E1    mov        [0061E68C],eax; gvar_0061E68C
 005208E6    mov        edx,520C84
 005208EB    mov        eax,esi
 005208ED    call       004EBE38
 005208F2    mov        [0061E690],eax; gvar_0061E690
 005208F7    mov        edx,520C94
 005208FC    mov        eax,esi
 005208FE    call       004EBE38
 00520903    mov        [0061E694],eax; gvar_0061E694
 00520908    mov        edx,520CA4
 0052090D    mov        eax,esi
 0052090F    call       004EBE38
 00520914    mov        [0061E680],eax; gvar_0061E680
 00520919    mov        edx,520CB8
 0052091E    mov        eax,esi
 00520920    call       004EBE38
 00520925    mov        [0061E6AC],eax; gvar_0061E6AC
 0052092A    mov        edx,520CC8
 0052092F    mov        eax,esi
 00520931    call       004EBE38
 00520936    mov        [0061E6A8],eax; gvar_0061E6A8
 0052093B    mov        edx,520CD8
 00520940    mov        eax,esi
 00520942    call       004EBE38
 00520947    mov        [0061E654],eax; gvar_0061E654
 0052094C    mov        edx,520CF0
 00520951    mov        eax,esi
 00520953    call       004EBE38
 00520958    mov        [0061E648],eax; gvar_0061E648
 0052095D    mov        edx,520D04
 00520962    mov        eax,esi
 00520964    call       004EBE38
 00520969    mov        [0061E644],eax; gvar_0061E644
 0052096E    mov        edx,520D18
 00520973    mov        eax,esi
 00520975    call       004EBE38
 0052097A    mov        [0061E65C],eax; gvar_0061E65C
 0052097F    mov        edx,520D34
 00520984    mov        eax,esi
 00520986    call       004EBE38
 0052098B    mov        [0061E650],eax; gvar_0061E650
 00520990    mov        edx,520D44
 00520995    mov        eax,esi
 00520997    call       004EBE38
 0052099C    mov        [0061E660],eax; gvar_0061E660
 005209A1    mov        edx,520D58
 005209A6    mov        eax,esi
 005209A8    call       004EBE38
 005209AD    mov        [0061E634],eax; gvar_0061E634
 005209B2    mov        edx,520D74
 005209B7    mov        eax,esi
 005209B9    call       004EBE38
 005209BE    mov        [0061E638],eax; gvar_0061E638
 005209C3    mov        edx,520D90
 005209C8    mov        eax,esi
 005209CA    call       004EBE38
 005209CF    mov        [0061E658],eax; gvar_0061E658
 005209D4    mov        edx,520DA4
 005209D9    mov        eax,esi
 005209DB    call       004EBE38
 005209E0    mov        [0061E640],eax; gvar_0061E640
 005209E5    mov        edx,520DBC
 005209EA    mov        eax,esi
 005209EC    call       004EBE38
 005209F1    mov        [0061E63C],eax; gvar_0061E63C
 005209F6    mov        edx,520DD0
 005209FB    mov        eax,esi
 005209FD    call       004EBE38
 00520A02    mov        [0061E64C],eax; gvar_0061E64C
 00520A07    mov        edx,520DEC
 00520A0C    mov        eax,esi
 00520A0E    call       004EBE38
 00520A13    mov        [0061E600],eax; gvar_0061E600
 00520A18    mov        edx,520E00
 00520A1D    mov        eax,esi
 00520A1F    call       004EBE38
 00520A24    mov        [0061E5FC],eax; gvar_0061E5FC
 00520A29    mov        edx,520E14
 00520A2E    mov        eax,esi
 00520A30    call       004EBE38
 00520A35    mov        [0061E5F8],eax; gvar_0061E5F8
 00520A3A    mov        edx,520E28
 00520A3F    mov        eax,esi
 00520A41    call       004EBE38
 00520A46    mov        [0061E604],eax; gvar_0061E604
 00520A4B    mov        edx,520E3C
 00520A50    mov        eax,esi
 00520A52    call       004EBE38
 00520A57    mov        [0061E630],eax; gvar_0061E630
 00520A5C    mov        edx,520E54
 00520A61    mov        eax,esi
 00520A63    call       004EBE38
 00520A68    mov        [0061E61C],eax; gvar_0061E61C
 00520A6D    mov        edx,520E68
 00520A72    mov        eax,esi
 00520A74    call       004EBE38
 00520A79    mov        [0061E618],eax; gvar_0061E618
 00520A7E    mov        edx,520E80
 00520A83    mov        eax,esi
 00520A85    call       004EBE38
 00520A8A    mov        [0061E628],eax; gvar_0061E628
 00520A8F    mov        edx,520E98
 00520A94    mov        eax,esi
 00520A96    call       004EBE38
 00520A9B    mov        [0061E62C],eax; gvar_0061E62C
 00520AA0    mov        edx,520EB0
 00520AA5    mov        eax,esi
 00520AA7    call       004EBE38
 00520AAC    mov        [0061E620],eax; gvar_0061E620
 00520AB1    mov        edx,520ECC
 00520AB6    mov        eax,esi
 00520AB8    call       004EBE38
 00520ABD    mov        [0061E6A4],eax; gvar_0061E6A4
 00520AC2    mov        edx,520EE0
 00520AC7    mov        eax,esi
 00520AC9    call       004EBE38
 00520ACE    mov        [0061E698],eax; gvar_0061E698
 00520AD3    mov        edx,520EF0
 00520AD8    mov        eax,esi
 00520ADA    call       004EBE38
 00520ADF    mov        [0061E69C],eax; gvar_0061E69C
 00520AE4    mov        edx,520F04
 00520AE9    mov        eax,esi
 00520AEB    call       004EBE38
 00520AF0    mov        [0061E6A0],eax; gvar_0061E6A0
 00520AF5    mov        edx,520F14
 00520AFA    mov        eax,esi
 00520AFC    call       004EBE38
 00520B01    mov        [0061E608],eax; gvar_0061E608
 00520B06    mov        edx,520F20
 00520B0B    mov        eax,esi
 00520B0D    call       004EBE38
 00520B12    mov        [0061E624],eax; gvar_0061E624
 00520B17    mov        edx,520F38
 00520B1C    mov        eax,esi
 00520B1E    call       004EBE38
 00520B23    mov        [0061E6B8],eax; gvar_0061E6B8
 00520B28    mov        edx,520F4C
 00520B2D    mov        eax,esi
 00520B2F    call       004EBE38
 00520B34    mov        [0061E6C0],eax; gvar_0061E6C0
 00520B39    mov        edx,520F60
 00520B3E    mov        eax,esi
 00520B40    call       004EBE38
 00520B45    mov        [0061E6C8],eax; gvar_0061E6C8
 00520B4A    mov        edx,520F78
 00520B4F    mov        eax,esi
 00520B51    call       004EBE38
 00520B56    mov        [0061E6B4],eax; gvar_0061E6B4
 00520B5B    mov        edx,520F8C
 00520B60    mov        eax,esi
 00520B62    call       004EBE38
 00520B67    mov        [0061E6BC],eax; gvar_0061E6BC
 00520B6C    mov        edx,520FA0
 00520B71    mov        eax,esi
 00520B73    call       004EBE38
 00520B78    mov        [0061E6C4],eax; gvar_0061E6C4
 00520B7D    mov        eax,ebx
 00520B7F    pop        esi
 00520B80    pop        ebx
 00520B81    pop        ebp
 00520B82    ret
*}
//end;

Initialization
//00520FFC
{*
 00520FFC    push       ebp
 00520FFD    mov        ebp,esp
 00520FFF    push       ecx
 00521000    sub        dword ptr ds:[61E6D0],1
>00521007    jae        00521027
 00521009    push       0
 0052100B    mov        eax,521034; 'gds32.dll'
 00521010    mov        dword ptr [ebp-4],eax
 00521013    lea        ecx,[ebp-4]
 00521016    mov        dl,1
 00521018    mov        eax,[0052076C]; TZInterbaseNativeLibraryLoader
 0052101D    call       TZSybaseNativeLibraryLoader.Create; TZInterbaseNativeLibraryLoader.Create
 00521022    mov        [0061E6CC],eax; gvar_0061E6CC:TZInterbaseNativeLibraryLoader
 00521027    pop        ecx
 00521028    pop        ebp
 00521029    ret
*}
Finalization
//00520FB8
{*
 00520FB8    push       ebp
 00520FB9    mov        ebp,esp
 00520FBB    xor        eax,eax
 00520FBD    push       ebp
 00520FBE    push       520FF2
 00520FC3    push       dword ptr fs:[eax]
 00520FC6    mov        dword ptr fs:[eax],esp
 00520FC9    inc        dword ptr ds:[61E6D0]
>00520FCF    jne        00520FE4
 00520FD1    cmp        dword ptr ds:[61E6CC],0; gvar_0061E6CC:TZInterbaseNativeLibraryLoader
>00520FD8    je         00520FE4
 00520FDA    mov        eax,[0061E6CC]; gvar_0061E6CC:TZInterbaseNativeLibraryLoader
 00520FDF    call       TObject.Free
 00520FE4    xor        eax,eax
 00520FE6    pop        edx
 00520FE7    pop        ecx
 00520FE8    pop        ecx
 00520FE9    mov        dword ptr fs:[eax],edx
 00520FEC    push       520FF9
 00520FF1    ret
<00520FF2    jmp        @HandleFinally
<00520FF7    jmp        00520FF1
 00520FF9    pop        ebp
 00520FFA    ret
*}
end.