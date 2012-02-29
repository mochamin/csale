{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit184;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZFirebirdNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_00522E30:?; virtual;
  end;

implementation

{$R *.DFM}

//00522E30
//function sub_00522E30:?;
//begin
{*
 00522E30    push       ebp
 00522E31    mov        ebp,esp
 00522E33    push       ebx
 00522E34    push       esi
 00522E35    mov        esi,eax
 00522E37    mov        eax,esi
 00522E39    call       004EBCD0
 00522E3E    mov        ebx,eax
 00522E40    mov        edx,5231CC
 00522E45    mov        eax,esi
 00522E47    call       004EBE38
 00522E4C    mov        [0061E7C8],eax; gvar_0061E7C8
 00522E51    mov        edx,5231D8
 00522E56    mov        eax,esi
 00522E58    call       004EBE38
 00522E5D    mov        [0061E7CC],eax; gvar_0061E7CC
 00522E62    mov        edx,5231EC
 00522E67    mov        eax,esi
 00522E69    call       004EBE38
 00522E6E    mov        [0061E7D0],eax; gvar_0061E7D0
 00522E73    mov        edx,5231FC
 00522E78    mov        eax,esi
 00522E7A    call       004EBE38
 00522E7F    mov        [0061E86C],eax; gvar_0061E86C
 00522E84    mov        edx,52320C
 00522E89    mov        eax,esi
 00522E8B    call       004EBE38
 00522E90    mov        [0061E820],eax; gvar_0061E820
 00522E95    mov        edx,523220
 00522E9A    mov        eax,esi
 00522E9C    call       004EBE38
 00522EA1    mov        [0061E824],eax; gvar_0061E824
 00522EA6    mov        edx,523234
 00522EAB    mov        eax,esi
 00522EAD    call       004EBE38
 00522EB2    mov        [0061E828],eax; gvar_0061E828
 00522EB7    mov        edx,52324C
 00522EBC    mov        eax,esi
 00522EBE    call       004EBE38
 00522EC3    mov        [0061E82C],eax; gvar_0061E82C
 00522EC8    mov        edx,523264
 00522ECD    mov        eax,esi
 00522ECF    call       004EBE38
 00522ED4    mov        [0061E830],eax; gvar_0061E830
 00522ED9    mov        edx,523278
 00522EDE    mov        eax,esi
 00522EE0    call       004EBE38
 00522EE5    mov        [0061E834],eax; gvar_0061E834
 00522EEA    mov        edx,52328C
 00522EEF    mov        eax,esi
 00522EF1    call       004EBE38
 00522EF6    mov        [0061E840],eax; gvar_0061E840
 00522EFB    mov        edx,52329C
 00522F00    mov        eax,esi
 00522F02    call       004EBE38
 00522F07    mov        [0061E838],eax; gvar_0061E838
 00522F0C    mov        edx,5232AC
 00522F11    mov        eax,esi
 00522F13    call       004EBE38
 00522F18    mov        [0061E844],eax; gvar_0061E844
 00522F1D    mov        edx,5232BC
 00522F22    mov        eax,esi
 00522F24    call       004EBE38
 00522F29    mov        [0061E848],eax; gvar_0061E848
 00522F2E    mov        edx,5232CC
 00522F33    mov        eax,esi
 00522F35    call       004EBE38
 00522F3A    mov        [0061E84C],eax; gvar_0061E84C
 00522F3F    mov        edx,5232DC
 00522F44    mov        eax,esi
 00522F46    call       004EBE38
 00522F4B    mov        [0061E850],eax; gvar_0061E850
 00522F50    mov        edx,5232EC
 00522F55    mov        eax,esi
 00522F57    call       004EBE38
 00522F5C    mov        [0061E83C],eax; gvar_0061E83C
 00522F61    mov        edx,523300
 00522F66    mov        eax,esi
 00522F68    call       004EBE38
 00522F6D    mov        [0061E868],eax; gvar_0061E868
 00522F72    mov        edx,523310
 00522F77    mov        eax,esi
 00522F79    call       004EBE38
 00522F7E    mov        [0061E864],eax; gvar_0061E864
 00522F83    mov        edx,523320
 00522F88    mov        eax,esi
 00522F8A    call       004EBE38
 00522F8F    mov        [0061E810],eax; gvar_0061E810
 00522F94    mov        edx,523338
 00522F99    mov        eax,esi
 00522F9B    call       004EBE38
 00522FA0    mov        [0061E804],eax; gvar_0061E804
 00522FA5    mov        edx,52334C
 00522FAA    mov        eax,esi
 00522FAC    call       004EBE38
 00522FB1    mov        [0061E800],eax; gvar_0061E800
 00522FB6    mov        edx,523360
 00522FBB    mov        eax,esi
 00522FBD    call       004EBE38
 00522FC2    mov        [0061E818],eax; gvar_0061E818
 00522FC7    mov        edx,52337C
 00522FCC    mov        eax,esi
 00522FCE    call       004EBE38
 00522FD3    mov        [0061E80C],eax; gvar_0061E80C
 00522FD8    mov        edx,52338C
 00522FDD    mov        eax,esi
 00522FDF    call       004EBE38
 00522FE4    mov        [0061E81C],eax; gvar_0061E81C
 00522FE9    mov        edx,5233A0
 00522FEE    mov        eax,esi
 00522FF0    call       004EBE38
 00522FF5    mov        [0061E7F0],eax; gvar_0061E7F0
 00522FFA    mov        edx,5233BC
 00522FFF    mov        eax,esi
 00523001    call       004EBE38
 00523006    mov        [0061E7F4],eax; gvar_0061E7F4
 0052300B    mov        edx,5233D8
 00523010    mov        eax,esi
 00523012    call       004EBE38
 00523017    mov        [0061E814],eax; gvar_0061E814
 0052301C    mov        edx,5233EC
 00523021    mov        eax,esi
 00523023    call       004EBE38
 00523028    mov        [0061E7FC],eax; gvar_0061E7FC
 0052302D    mov        edx,523404
 00523032    mov        eax,esi
 00523034    call       004EBE38
 00523039    mov        [0061E7F8],eax; gvar_0061E7F8
 0052303E    mov        edx,523418
 00523043    mov        eax,esi
 00523045    call       004EBE38
 0052304A    mov        [0061E808],eax; gvar_0061E808
 0052304F    mov        edx,523434
 00523054    mov        eax,esi
 00523056    call       004EBE38
 0052305B    mov        [0061E7BC],eax; gvar_0061E7BC
 00523060    mov        edx,523448
 00523065    mov        eax,esi
 00523067    call       004EBE38
 0052306C    mov        [0061E7B8],eax; gvar_0061E7B8
 00523071    mov        edx,52345C
 00523076    mov        eax,esi
 00523078    call       004EBE38
 0052307D    mov        [0061E7B4],eax; gvar_0061E7B4
 00523082    mov        edx,523470
 00523087    mov        eax,esi
 00523089    call       004EBE38
 0052308E    mov        [0061E7C0],eax; gvar_0061E7C0
 00523093    mov        edx,523484
 00523098    mov        eax,esi
 0052309A    call       004EBE38
 0052309F    mov        [0061E7EC],eax; gvar_0061E7EC
 005230A4    mov        edx,52349C
 005230A9    mov        eax,esi
 005230AB    call       004EBE38
 005230B0    mov        [0061E7D8],eax; gvar_0061E7D8
 005230B5    mov        edx,5234B0
 005230BA    mov        eax,esi
 005230BC    call       004EBE38
 005230C1    mov        [0061E7D4],eax; gvar_0061E7D4
 005230C6    mov        edx,5234C8
 005230CB    mov        eax,esi
 005230CD    call       004EBE38
 005230D2    mov        [0061E7E4],eax; gvar_0061E7E4
 005230D7    mov        edx,5234E0
 005230DC    mov        eax,esi
 005230DE    call       004EBE38
 005230E3    mov        [0061E7E8],eax; gvar_0061E7E8
 005230E8    mov        edx,5234F8
 005230ED    mov        eax,esi
 005230EF    call       004EBE38
 005230F4    mov        [0061E7DC],eax; gvar_0061E7DC
 005230F9    mov        edx,523514
 005230FE    mov        eax,esi
 00523100    call       004EBE38
 00523105    mov        [0061E860],eax; gvar_0061E860
 0052310A    mov        edx,523528
 0052310F    mov        eax,esi
 00523111    call       004EBE38
 00523116    mov        [0061E854],eax; gvar_0061E854
 0052311B    mov        edx,523538
 00523120    mov        eax,esi
 00523122    call       004EBE38
 00523127    mov        [0061E858],eax; gvar_0061E858
 0052312C    mov        edx,52354C
 00523131    mov        eax,esi
 00523133    call       004EBE38
 00523138    mov        [0061E85C],eax; gvar_0061E85C
 0052313D    mov        edx,52355C
 00523142    mov        eax,esi
 00523144    call       004EBE38
 00523149    mov        [0061E7C4],eax; gvar_0061E7C4
 0052314E    mov        edx,523568
 00523153    mov        eax,esi
 00523155    call       004EBE38
 0052315A    mov        [0061E7E0],eax; gvar_0061E7E0
 0052315F    mov        edx,523580
 00523164    mov        eax,esi
 00523166    call       004EBE38
 0052316B    mov        [0061E874],eax; gvar_0061E874
 00523170    mov        edx,523594
 00523175    mov        eax,esi
 00523177    call       004EBE38
 0052317C    mov        [0061E87C],eax; gvar_0061E87C
 00523181    mov        edx,5235A8
 00523186    mov        eax,esi
 00523188    call       004EBE38
 0052318D    mov        [0061E884],eax; gvar_0061E884
 00523192    mov        edx,5235C0
 00523197    mov        eax,esi
 00523199    call       004EBE38
 0052319E    mov        [0061E870],eax; gvar_0061E870
 005231A3    mov        edx,5235D4
 005231A8    mov        eax,esi
 005231AA    call       004EBE38
 005231AF    mov        [0061E878],eax; gvar_0061E878
 005231B4    mov        edx,5235E8
 005231B9    mov        eax,esi
 005231BB    call       004EBE38
 005231C0    mov        [0061E880],eax; gvar_0061E880
 005231C5    mov        eax,ebx
 005231C7    pop        esi
 005231C8    pop        ebx
 005231C9    pop        ebp
 005231CA    ret
*}
//end;

Initialization
//00523658
{*
 00523658    push       ebp
 00523659    mov        ebp,esp
 0052365B    add        esp,0FFFFFFF8
 0052365E    sub        dword ptr ds:[61E890],1
>00523665    jae        005236B3
 00523667    push       1
 00523669    mov        eax,5236C0; 'fbclient15.dll'
 0052366E    mov        dword ptr [ebp-8],eax
 00523671    mov        eax,5236D8; 'fbclient.dll'
 00523676    mov        dword ptr [ebp-4],eax
 00523679    lea        ecx,[ebp-8]
 0052367C    mov        dl,1
 0052367E    mov        eax,[00522DB4]; TZFirebirdNativeLibraryLoader
 00523683    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 00523688    mov        [0061E888],eax; gvar_0061E888:TZFirebirdNativeLibraryLoader
 0052368D    push       1
 0052368F    mov        eax,5236F0; 'fbclientd15.dll'
 00523694    mov        dword ptr [ebp-8],eax
 00523697    mov        eax,523708; 'fbclientd.dll'
 0052369C    mov        dword ptr [ebp-4],eax
 0052369F    lea        ecx,[ebp-8]
 005236A2    mov        dl,1
 005236A4    mov        eax,[00522DB4]; TZFirebirdNativeLibraryLoader
 005236A9    call       TZSybaseNativeLibraryLoader.Create; TZFirebirdNativeLibraryLoader.Create
 005236AE    mov        [0061E88C],eax; gvar_0061E88C:TZFirebirdNativeLibraryLoader
 005236B3    pop        ecx
 005236B4    pop        ecx
 005236B5    pop        ebp
 005236B6    ret
*}
Finalization
//00523600
{*
 00523600    push       ebp
 00523601    mov        ebp,esp
 00523603    xor        eax,eax
 00523605    push       ebp
 00523606    push       52364D
 0052360B    push       dword ptr fs:[eax]
 0052360E    mov        dword ptr fs:[eax],esp
 00523611    inc        dword ptr ds:[61E890]
>00523617    jne        0052363F
 00523619    cmp        dword ptr ds:[61E888],0; gvar_0061E888:TZFirebirdNativeLibraryLoader
>00523620    je         0052362C
 00523622    mov        eax,[0061E888]; gvar_0061E888:TZFirebirdNativeLibraryLoader
 00523627    call       TObject.Free
 0052362C    cmp        dword ptr ds:[61E88C],0; gvar_0061E88C:TZFirebirdNativeLibraryLoader
>00523633    je         0052363F
 00523635    mov        eax,[0061E88C]; gvar_0061E88C:TZFirebirdNativeLibraryLoader
 0052363A    call       TObject.Free
 0052363F    xor        eax,eax
 00523641    pop        edx
 00523642    pop        ecx
 00523643    pop        ecx
 00523644    mov        dword ptr fs:[eax],edx
 00523647    push       523654
 0052364C    ret
<0052364D    jmp        @HandleFinally
<00523652    jmp        0052364C
 00523654    pop        ebp
 00523655    ret
*}
end.