{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit167;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZSQLiteNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0053B2EC:?; virtual;
  end;

implementation

{$R *.DFM}

//0053B2EC
//function sub_0053B2EC:?;
//begin
{*
 0053B2EC    push       ebp
 0053B2ED    mov        ebp,esp
 0053B2EF    push       ebx
 0053B2F0    push       esi
 0053B2F1    mov        esi,eax
 0053B2F3    mov        eax,esi
 0053B2F5    call       004EBCD0
 0053B2FA    mov        ebx,eax
 0053B2FC    mov        edx,53B558
 0053B301    mov        eax,esi
 0053B303    call       004EBE38
 0053B308    mov        [0061EB1C],eax; gvar_0061EB1C
 0053B30D    mov        edx,53B568
 0053B312    mov        eax,esi
 0053B314    call       004EBE38
 0053B319    mov        [0061EB20],eax; gvar_0061EB20
 0053B31E    mov        edx,53B578
 0053B323    mov        eax,esi
 0053B325    call       004EBE38
 0053B32A    mov        [0061EB24],eax; gvar_0061EB24
 0053B32F    mov        edx,53B590
 0053B334    mov        eax,esi
 0053B336    call       004EBE38
 0053B33B    mov        [0061EB28],eax; gvar_0061EB28
 0053B340    mov        edx,53B5A4
 0053B345    mov        eax,esi
 0053B347    call       004EBE38
 0053B34C    mov        [0061EB2C],eax; gvar_0061EB2C
 0053B351    mov        edx,53B5B8
 0053B356    mov        eax,esi
 0053B358    call       004EBE38
 0053B35D    mov        [0061EB30],eax; gvar_0061EB30
 0053B362    mov        edx,53B5D0
 0053B367    mov        eax,esi
 0053B369    call       004EBE38
 0053B36E    mov        [0061EB34],eax; gvar_0061EB34
 0053B373    mov        edx,53B5E0
 0053B378    mov        eax,esi
 0053B37A    call       004EBE38
 0053B37F    mov        [0061EB3C],eax; gvar_0061EB3C
 0053B384    mov        edx,53B5FC
 0053B389    mov        eax,esi
 0053B38B    call       004EBE38
 0053B390    mov        [0061EB40],eax; gvar_0061EB40
 0053B395    mov        edx,53B60C
 0053B39A    mov        eax,esi
 0053B39C    call       004EBE38
 0053B3A1    mov        [0061EB38],eax; gvar_0061EB38
 0053B3A6    mov        edx,53B61C
 0053B3AB    mov        eax,esi
 0053B3AD    call       004EBE38
 0053B3B2    mov        [0061EB44],eax; gvar_0061EB44
 0053B3B7    mov        edx,53B630
 0053B3BC    mov        eax,esi
 0053B3BE    call       004EBE38
 0053B3C3    mov        [0061EB48],eax; gvar_0061EB48
 0053B3C8    mov        edx,53B644
 0053B3CD    mov        eax,esi
 0053B3CF    call       004EBE38
 0053B3D4    mov        [0061EB4C],eax; gvar_0061EB4C
 0053B3D9    mov        edx,53B65C
 0053B3DE    mov        eax,esi
 0053B3E0    call       004EBE38
 0053B3E5    mov        [0061EB50],eax; gvar_0061EB50
 0053B3EA    mov        edx,53B674
 0053B3EF    mov        eax,esi
 0053B3F1    call       004EBE38
 0053B3F6    mov        [0061EB54],eax; gvar_0061EB54
 0053B3FB    mov        edx,53B688
 0053B400    mov        eax,esi
 0053B402    call       004EBE38
 0053B407    mov        [0061EB58],eax; gvar_0061EB58
 0053B40C    mov        edx,53B69C
 0053B411    mov        eax,esi
 0053B413    call       004EBE38
 0053B418    mov        [0061EB5C],eax; gvar_0061EB5C
 0053B41D    mov        edx,53B6AC
 0053B422    mov        eax,esi
 0053B424    call       004EBE38
 0053B429    mov        [0061EB60],eax; gvar_0061EB60
 0053B42E    mov        edx,53B6C0
 0053B433    mov        eax,esi
 0053B435    call       004EBE38
 0053B43A    mov        [0061EB64],eax; gvar_0061EB64
 0053B43F    mov        edx,53B6D8
 0053B444    mov        eax,esi
 0053B446    call       004EBE38
 0053B44B    mov        [0061EB68],eax; gvar_0061EB68
 0053B450    mov        edx,53B6EC
 0053B455    mov        eax,esi
 0053B457    call       004EBE38
 0053B45C    mov        [0061EB6C],eax; gvar_0061EB6C
 0053B461    mov        edx,53B704
 0053B466    mov        eax,esi
 0053B468    call       004EBE38
 0053B46D    mov        [0061EB70],eax; gvar_0061EB70
 0053B472    mov        edx,53B71C
 0053B477    mov        eax,esi
 0053B479    call       004EBE38
 0053B47E    mov        [0061EB74],eax; gvar_0061EB74
 0053B483    mov        edx,53B730
 0053B488    mov        eax,esi
 0053B48A    call       004EBE38
 0053B48F    mov        [0061EB78],eax; gvar_0061EB78
 0053B494    mov        edx,53B74C
 0053B499    mov        eax,esi
 0053B49B    call       004EBE38
 0053B4A0    mov        [0061EB7C],eax; gvar_0061EB7C
 0053B4A5    mov        edx,53B764
 0053B4AA    mov        eax,esi
 0053B4AC    call       004EBE38
 0053B4B1    mov        [0061EB80],eax; gvar_0061EB80
 0053B4B6    mov        edx,53B77C
 0053B4BB    mov        eax,esi
 0053B4BD    call       004EBE38
 0053B4C2    mov        [0061EB84],eax; gvar_0061EB84
 0053B4C7    mov        edx,53B78C
 0053B4CC    mov        eax,esi
 0053B4CE    call       004EBE38
 0053B4D3    mov        [0061EB88],eax; gvar_0061EB88
 0053B4D8    mov        edx,53B79C
 0053B4DD    mov        eax,esi
 0053B4DF    call       004EBE38
 0053B4E4    mov        [0061EB8C],eax; gvar_0061EB8C
 0053B4E9    mov        edx,53B7AC
 0053B4EE    mov        eax,esi
 0053B4F0    call       004EBE38
 0053B4F5    mov        [0061EB90],eax; gvar_0061EB90
 0053B4FA    mov        edx,53B7C0
 0053B4FF    mov        eax,esi
 0053B501    call       004EBE38
 0053B506    mov        [0061EB94],eax; gvar_0061EB94
 0053B50B    mov        edx,53B7D0
 0053B510    mov        eax,esi
 0053B512    call       004EBE38
 0053B517    mov        [0061EB9C],eax; gvar_0061EB9C
 0053B51C    mov        edx,53B7EC
 0053B521    mov        eax,esi
 0053B523    call       004EBE38
 0053B528    mov        [0061EBA0],eax; gvar_0061EBA0
 0053B52D    mov        edx,53B800
 0053B532    mov        eax,esi
 0053B534    call       004EBE38
 0053B539    mov        [0061EBA4],eax; gvar_0061EBA4
 0053B53E    mov        edx,53B810
 0053B543    mov        eax,esi
 0053B545    call       004EBE38
 0053B54A    mov        [0061EBA8],eax; gvar_0061EBA8
 0053B54F    mov        eax,ebx
 0053B551    pop        esi
 0053B552    pop        ebx
 0053B553    pop        ebp
 0053B554    ret
*}
//end;

Initialization
//0053B860
{*
 0053B860    push       ebp
 0053B861    mov        ebp,esp
 0053B863    push       ecx
 0053B864    sub        dword ptr ds:[61EBB0],1
>0053B86B    jae        0053B88B
 0053B86D    push       0
 0053B86F    mov        eax,53B898; 'sqlite3.dll'
 0053B874    mov        dword ptr [ebp-4],eax
 0053B877    lea        ecx,[ebp-4]
 0053B87A    mov        dl,1
 0053B87C    mov        eax,[0053B274]; TZSQLiteNativeLibraryLoader
 0053B881    call       TZSybaseNativeLibraryLoader.Create; TZSQLiteNativeLibraryLoader.Create
 0053B886    mov        [0061EBAC],eax; gvar_0061EBAC:TZSQLiteNativeLibraryLoader
 0053B88B    pop        ecx
 0053B88C    pop        ebp
 0053B88D    ret
*}
Finalization
//0053B81C
{*
 0053B81C    push       ebp
 0053B81D    mov        ebp,esp
 0053B81F    xor        eax,eax
 0053B821    push       ebp
 0053B822    push       53B856
 0053B827    push       dword ptr fs:[eax]
 0053B82A    mov        dword ptr fs:[eax],esp
 0053B82D    inc        dword ptr ds:[61EBB0]
>0053B833    jne        0053B848
 0053B835    cmp        dword ptr ds:[61EBAC],0; gvar_0061EBAC:TZSQLiteNativeLibraryLoader
>0053B83C    je         0053B848
 0053B83E    mov        eax,[0061EBAC]; gvar_0061EBAC:TZSQLiteNativeLibraryLoader
 0053B843    call       TObject.Free
 0053B848    xor        eax,eax
 0053B84A    pop        edx
 0053B84B    pop        ecx
 0053B84C    pop        ecx
 0053B84D    mov        dword ptr fs:[eax],edx
 0053B850    push       53B85D
 0053B855    ret
<0053B856    jmp        @HandleFinally
<0053B85B    jmp        0053B855
 0053B85D    pop        ebp
 0053B85E    ret
*}
end.