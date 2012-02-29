{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit144;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZASANativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0054DBD8:?; virtual;
  end;

implementation

{$R *.DFM}

//0054DBD8
//function sub_0054DBD8:?;
//begin
{*
 0054DBD8    push       ebp
 0054DBD9    mov        ebp,esp
 0054DBDB    push       ebx
 0054DBDC    push       esi
 0054DBDD    mov        esi,eax
 0054DBDF    mov        eax,esi
 0054DBE1    call       004EBCD0
 0054DBE6    mov        ebx,eax
 0054DBE8    mov        edx,54DECC
 0054DBED    mov        eax,esi
 0054DBEF    call       004EBE38
 0054DBF4    mov        [0061ED20],eax; gvar_0061ED20
 0054DBF9    mov        edx,54DEE0
 0054DBFE    mov        eax,esi
 0054DC00    call       004EBE38
 0054DC05    mov        [0061ED24],eax; gvar_0061ED24
 0054DC0A    mov        edx,54DEE8
 0054DC0F    mov        eax,esi
 0054DC11    call       004EBE38
 0054DC16    mov        [0061ED28],eax; gvar_0061ED28
 0054DC1B    mov        edx,54DEF0
 0054DC20    mov        eax,esi
 0054DC22    call       004EBE38
 0054DC27    mov        [0061ED2C],eax; gvar_0061ED2C
 0054DC2C    mov        edx,54DF04
 0054DC31    mov        eax,esi
 0054DC33    call       004EBE38
 0054DC38    mov        [0061ED30],eax; gvar_0061ED30
 0054DC3D    mov        edx,54DF1C
 0054DC42    mov        eax,esi
 0054DC44    call       004EBE38
 0054DC49    mov        [0061ED34],eax; gvar_0061ED34
 0054DC4E    mov        edx,54DF2C
 0054DC53    mov        eax,esi
 0054DC55    call       004EBE38
 0054DC5A    mov        [0061ED38],eax; gvar_0061ED38
 0054DC5F    mov        edx,54DF3C
 0054DC64    mov        eax,esi
 0054DC66    call       004EBE38
 0054DC6B    mov        [0061ED3C],eax; gvar_0061ED3C
 0054DC70    mov        edx,54DF4C
 0054DC75    mov        eax,esi
 0054DC77    call       004EBE38
 0054DC7C    mov        [0061ED40],eax; gvar_0061ED40
 0054DC81    mov        edx,54DF60
 0054DC86    mov        eax,esi
 0054DC88    call       004EBE38
 0054DC8D    mov        [0061ED44],eax; gvar_0061ED44
 0054DC92    mov        edx,54DF74
 0054DC97    mov        eax,esi
 0054DC99    call       004EBE38
 0054DC9E    mov        [0061ED48],eax; gvar_0061ED48
 0054DCA3    mov        edx,54DF80
 0054DCA8    mov        eax,esi
 0054DCAA    call       004EBE38
 0054DCAF    mov        [0061ED54],eax; gvar_0061ED54
 0054DCB4    mov        edx,54DF8C
 0054DCB9    mov        eax,esi
 0054DCBB    call       004EBE38
 0054DCC0    mov        [0061ED5C],eax; gvar_0061ED5C
 0054DCC5    mov        edx,54DF9C
 0054DCCA    mov        eax,esi
 0054DCCC    call       004EBE38
 0054DCD1    mov        [0061ED58],eax; gvar_0061ED58
 0054DCD6    mov        edx,54DFB0
 0054DCDB    mov        eax,esi
 0054DCDD    call       004EBE38
 0054DCE2    mov        [0061ED4C],eax; gvar_0061ED4C
 0054DCE7    mov        edx,54DFBC
 0054DCEC    mov        eax,esi
 0054DCEE    call       004EBE38
 0054DCF3    mov        [0061ED50],eax; gvar_0061ED50
 0054DCF8    mov        edx,54DFD0
 0054DCFD    mov        eax,esi
 0054DCFF    call       004EBE38
 0054DD04    mov        [0061ED60],eax; gvar_0061ED60
 0054DD09    mov        edx,54DFE0
 0054DD0E    mov        eax,esi
 0054DD10    call       004EBE38
 0054DD15    mov        [0061ED68],eax; gvar_0061ED68
 0054DD1A    mov        edx,54DFF0
 0054DD1F    mov        eax,esi
 0054DD21    call       004EBE38
 0054DD26    mov        [0061ED6C],eax; gvar_0061ED6C
 0054DD2B    mov        edx,54E004
 0054DD30    mov        eax,esi
 0054DD32    call       004EBE38
 0054DD37    mov        [0061ED64],eax; gvar_0061ED64
 0054DD3C    mov        edx,54E01C
 0054DD41    mov        eax,esi
 0054DD43    call       004EBE38
 0054DD48    mov        [0061ED70],eax; gvar_0061ED70
 0054DD4D    mov        edx,54E034
 0054DD52    mov        eax,esi
 0054DD54    call       004EBE38
 0054DD59    mov        [0061ED74],eax; gvar_0061ED74
 0054DD5E    mov        edx,54E040
 0054DD63    mov        eax,esi
 0054DD65    call       004EBE38
 0054DD6A    mov        [0061ED78],eax; gvar_0061ED78
 0054DD6F    mov        edx,54E04C
 0054DD74    mov        eax,esi
 0054DD76    call       004EBE38
 0054DD7B    mov        [0061ED7C],eax; gvar_0061ED7C
 0054DD80    mov        edx,54E058
 0054DD85    mov        eax,esi
 0054DD87    call       004EBE38
 0054DD8C    mov        [0061ED80],eax; gvar_0061ED80
 0054DD91    mov        edx,54E064
 0054DD96    mov        eax,esi
 0054DD98    call       004EBE38
 0054DD9D    mov        [0061ED84],eax; gvar_0061ED84
 0054DDA2    mov        edx,54E074
 0054DDA7    mov        eax,esi
 0054DDA9    call       004EBE38
 0054DDAE    mov        [0061ED88],eax; gvar_0061ED88
 0054DDB3    mov        edx,54E084
 0054DDB8    mov        eax,esi
 0054DDBA    call       004EBE38
 0054DDBF    mov        [0061ED8C],eax; gvar_0061ED8C
 0054DDC4    mov        edx,54E094
 0054DDC9    mov        eax,esi
 0054DDCB    call       004EBE38
 0054DDD0    mov        [0061ED90],eax; gvar_0061ED90
 0054DDD5    mov        edx,54E0A0
 0054DDDA    mov        eax,esi
 0054DDDC    call       004EBE38
 0054DDE1    mov        [0061ED94],eax; gvar_0061ED94
 0054DDE6    mov        edx,54E0AC
 0054DDEB    mov        eax,esi
 0054DDED    call       004EBE38
 0054DDF2    mov        [0061ED9C],eax; gvar_0061ED9C
 0054DDF7    mov        edx,54E0BC
 0054DDFC    mov        eax,esi
 0054DDFE    call       004EBE38
 0054DE03    mov        [0061EDA0],eax; gvar_0061EDA0
 0054DE08    mov        edx,54E0CC
 0054DE0D    mov        eax,esi
 0054DE0F    call       004EBE38
 0054DE14    mov        [0061ED98],eax; gvar_0061ED98
 0054DE19    mov        edx,54E0E0
 0054DE1E    mov        eax,esi
 0054DE20    call       004EBE38
 0054DE25    mov        [0061EDA4],eax; gvar_0061EDA4
 0054DE2A    mov        edx,54E0EC
 0054DE2F    mov        eax,esi
 0054DE31    call       004EBE38
 0054DE36    mov        [0061EDA8],eax; gvar_0061EDA8
 0054DE3B    mov        edx,54E0FC
 0054DE40    mov        eax,esi
 0054DE42    call       004EBE38
 0054DE47    mov        [0061EDAC],eax; gvar_0061EDAC
 0054DE4C    mov        edx,54E110
 0054DE51    mov        eax,esi
 0054DE53    call       004EBE38
 0054DE58    mov        [0061EDB0],eax; gvar_0061EDB0
 0054DE5D    mov        edx,54E120
 0054DE62    mov        eax,esi
 0054DE64    call       004EBE38
 0054DE69    mov        [0061EDB4],eax; gvar_0061EDB4
 0054DE6E    mov        edx,54E130
 0054DE73    mov        eax,esi
 0054DE75    call       004EBE38
 0054DE7A    mov        [0061EDBC],eax; gvar_0061EDBC
 0054DE7F    mov        edx,54E140
 0054DE84    mov        eax,esi
 0054DE86    call       004EBE38
 0054DE8B    mov        [0061EDC0],eax; gvar_0061EDC0
 0054DE90    mov        edx,54E154
 0054DE95    mov        eax,esi
 0054DE97    call       004EBE38
 0054DE9C    mov        [0061EDB8],eax; gvar_0061EDB8
 0054DEA1    mov        edx,54E16C
 0054DEA6    mov        eax,esi
 0054DEA8    call       004EBE38
 0054DEAD    mov        [0061EDC4],eax; gvar_0061EDC4
 0054DEB2    mov        edx,54E178
 0054DEB7    mov        eax,esi
 0054DEB9    call       004EBE38
 0054DEBE    mov        [0061EDC8],eax; gvar_0061EDC8
 0054DEC3    mov        eax,ebx
 0054DEC5    pop        esi
 0054DEC6    pop        ebx
 0054DEC7    pop        ebp
 0054DEC8    ret
*}
//end;

Initialization
//0054E1D0
{*
 0054E1D0    push       ebp
 0054E1D1    mov        ebp,esp
 0054E1D3    push       ecx
 0054E1D4    sub        dword ptr ds:[61EDD0],1
>0054E1DB    jae        0054E202
 0054E1DD    xor        eax,eax
 0054E1DF    mov        [0061EDCC],eax; gvar_0061EDCC:TZASANativeLibraryLoader
 0054E1E4    push       0
 0054E1E6    mov        eax,54E210; 'DBLIB7.DLL'
 0054E1EB    mov        dword ptr [ebp-4],eax
 0054E1EE    lea        ecx,[ebp-4]
 0054E1F1    mov        dl,1
 0054E1F3    mov        eax,[0054DB60]; TZASANativeLibraryLoader
 0054E1F8    call       TZSybaseNativeLibraryLoader.Create; TZASANativeLibraryLoader.Create
 0054E1FD    mov        [0061EDCC],eax; gvar_0061EDCC:TZASANativeLibraryLoader
 0054E202    pop        ecx
 0054E203    pop        ebp
 0054E204    ret
*}
Finalization
//0054E18C
{*
 0054E18C    push       ebp
 0054E18D    mov        ebp,esp
 0054E18F    xor        eax,eax
 0054E191    push       ebp
 0054E192    push       54E1C6
 0054E197    push       dword ptr fs:[eax]
 0054E19A    mov        dword ptr fs:[eax],esp
 0054E19D    inc        dword ptr ds:[61EDD0]
>0054E1A3    jne        0054E1B8
 0054E1A5    cmp        dword ptr ds:[61EDCC],0; gvar_0061EDCC:TZASANativeLibraryLoader
>0054E1AC    je         0054E1B8
 0054E1AE    mov        eax,[0061EDCC]; gvar_0061EDCC:TZASANativeLibraryLoader
 0054E1B3    call       TObject.Free
 0054E1B8    xor        eax,eax
 0054E1BA    pop        edx
 0054E1BB    pop        ecx
 0054E1BC    pop        ecx
 0054E1BD    mov        dword ptr fs:[eax],edx
 0054E1C0    push       54E1CD
 0054E1C5    ret
<0054E1C6    jmp        @HandleFinally
<0054E1CB    jmp        0054E1C5
 0054E1CD    pop        ebp
 0054E1CE    ret
*}
end.