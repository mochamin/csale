{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit142;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZASANativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    //function sub_0054E950:?; virtual;
  end;

implementation

{$R *.DFM}

//0054E950
//function sub_0054E950:?;
//begin
{*
 0054E950    push       ebp
 0054E951    mov        ebp,esp
 0054E953    push       ebx
 0054E954    push       esi
 0054E955    mov        esi,eax
 0054E957    mov        eax,esi
 0054E959    call       004EBCD0
 0054E95E    mov        ebx,eax
 0054E960    mov        edx,54EC44
 0054E965    mov        eax,esi
 0054E967    call       004EBE38
 0054E96C    mov        [0061EE88],eax; gvar_0061EE88
 0054E971    mov        edx,54EC58
 0054E976    mov        eax,esi
 0054E978    call       004EBE38
 0054E97D    mov        [0061EE8C],eax; gvar_0061EE8C
 0054E982    mov        edx,54EC60
 0054E987    mov        eax,esi
 0054E989    call       004EBE38
 0054E98E    mov        [0061EE90],eax; gvar_0061EE90
 0054E993    mov        edx,54EC68
 0054E998    mov        eax,esi
 0054E99A    call       004EBE38
 0054E99F    mov        [0061EE94],eax; gvar_0061EE94
 0054E9A4    mov        edx,54EC7C
 0054E9A9    mov        eax,esi
 0054E9AB    call       004EBE38
 0054E9B0    mov        [0061EE98],eax; gvar_0061EE98
 0054E9B5    mov        edx,54EC94
 0054E9BA    mov        eax,esi
 0054E9BC    call       004EBE38
 0054E9C1    mov        [0061EE9C],eax; gvar_0061EE9C
 0054E9C6    mov        edx,54ECA4
 0054E9CB    mov        eax,esi
 0054E9CD    call       004EBE38
 0054E9D2    mov        [0061EEA0],eax; gvar_0061EEA0
 0054E9D7    mov        edx,54ECB4
 0054E9DC    mov        eax,esi
 0054E9DE    call       004EBE38
 0054E9E3    mov        [0061EEA4],eax; gvar_0061EEA4
 0054E9E8    mov        edx,54ECC4
 0054E9ED    mov        eax,esi
 0054E9EF    call       004EBE38
 0054E9F4    mov        [0061EEA8],eax; gvar_0061EEA8
 0054E9F9    mov        edx,54ECD8
 0054E9FE    mov        eax,esi
 0054EA00    call       004EBE38
 0054EA05    mov        [0061EEAC],eax; gvar_0061EEAC
 0054EA0A    mov        edx,54ECEC
 0054EA0F    mov        eax,esi
 0054EA11    call       004EBE38
 0054EA16    mov        [0061EEB0],eax; gvar_0061EEB0
 0054EA1B    mov        edx,54ECF8
 0054EA20    mov        eax,esi
 0054EA22    call       004EBE38
 0054EA27    mov        [0061EEBC],eax; gvar_0061EEBC
 0054EA2C    mov        edx,54ED04
 0054EA31    mov        eax,esi
 0054EA33    call       004EBE38
 0054EA38    mov        [0061EEC4],eax; gvar_0061EEC4
 0054EA3D    mov        edx,54ED14
 0054EA42    mov        eax,esi
 0054EA44    call       004EBE38
 0054EA49    mov        [0061EEC0],eax; gvar_0061EEC0
 0054EA4E    mov        edx,54ED28
 0054EA53    mov        eax,esi
 0054EA55    call       004EBE38
 0054EA5A    mov        [0061EEB4],eax; gvar_0061EEB4
 0054EA5F    mov        edx,54ED34
 0054EA64    mov        eax,esi
 0054EA66    call       004EBE38
 0054EA6B    mov        [0061EEB8],eax; gvar_0061EEB8
 0054EA70    mov        edx,54ED48
 0054EA75    mov        eax,esi
 0054EA77    call       004EBE38
 0054EA7C    mov        [0061EEC8],eax; gvar_0061EEC8
 0054EA81    mov        edx,54ED58
 0054EA86    mov        eax,esi
 0054EA88    call       004EBE38
 0054EA8D    mov        [0061EED0],eax; gvar_0061EED0
 0054EA92    mov        edx,54ED68
 0054EA97    mov        eax,esi
 0054EA99    call       004EBE38
 0054EA9E    mov        [0061EED4],eax; gvar_0061EED4
 0054EAA3    mov        edx,54ED7C
 0054EAA8    mov        eax,esi
 0054EAAA    call       004EBE38
 0054EAAF    mov        [0061EECC],eax; gvar_0061EECC
 0054EAB4    mov        edx,54ED94
 0054EAB9    mov        eax,esi
 0054EABB    call       004EBE38
 0054EAC0    mov        [0061EED8],eax; gvar_0061EED8
 0054EAC5    mov        edx,54EDAC
 0054EACA    mov        eax,esi
 0054EACC    call       004EBE38
 0054EAD1    mov        [0061EEDC],eax; gvar_0061EEDC
 0054EAD6    mov        edx,54EDB8
 0054EADB    mov        eax,esi
 0054EADD    call       004EBE38
 0054EAE2    mov        [0061EEE0],eax; gvar_0061EEE0
 0054EAE7    mov        edx,54EDC4
 0054EAEC    mov        eax,esi
 0054EAEE    call       004EBE38
 0054EAF3    mov        [0061EEE4],eax; gvar_0061EEE4
 0054EAF8    mov        edx,54EDD0
 0054EAFD    mov        eax,esi
 0054EAFF    call       004EBE38
 0054EB04    mov        [0061EEE8],eax; gvar_0061EEE8
 0054EB09    mov        edx,54EDDC
 0054EB0E    mov        eax,esi
 0054EB10    call       004EBE38
 0054EB15    mov        [0061EEEC],eax; gvar_0061EEEC
 0054EB1A    mov        edx,54EDEC
 0054EB1F    mov        eax,esi
 0054EB21    call       004EBE38
 0054EB26    mov        [0061EEF0],eax; gvar_0061EEF0
 0054EB2B    mov        edx,54EDFC
 0054EB30    mov        eax,esi
 0054EB32    call       004EBE38
 0054EB37    mov        [0061EEF4],eax; gvar_0061EEF4
 0054EB3C    mov        edx,54EE0C
 0054EB41    mov        eax,esi
 0054EB43    call       004EBE38
 0054EB48    mov        [0061EEF8],eax; gvar_0061EEF8
 0054EB4D    mov        edx,54EE18
 0054EB52    mov        eax,esi
 0054EB54    call       004EBE38
 0054EB59    mov        [0061EEFC],eax; gvar_0061EEFC
 0054EB5E    mov        edx,54EE24
 0054EB63    mov        eax,esi
 0054EB65    call       004EBE38
 0054EB6A    mov        [0061EF04],eax; gvar_0061EF04
 0054EB6F    mov        edx,54EE34
 0054EB74    mov        eax,esi
 0054EB76    call       004EBE38
 0054EB7B    mov        [0061EF08],eax; gvar_0061EF08
 0054EB80    mov        edx,54EE44
 0054EB85    mov        eax,esi
 0054EB87    call       004EBE38
 0054EB8C    mov        [0061EF00],eax; gvar_0061EF00
 0054EB91    mov        edx,54EE58
 0054EB96    mov        eax,esi
 0054EB98    call       004EBE38
 0054EB9D    mov        [0061EF0C],eax; gvar_0061EF0C
 0054EBA2    mov        edx,54EE64
 0054EBA7    mov        eax,esi
 0054EBA9    call       004EBE38
 0054EBAE    mov        [0061EF10],eax; gvar_0061EF10
 0054EBB3    mov        edx,54EE74
 0054EBB8    mov        eax,esi
 0054EBBA    call       004EBE38
 0054EBBF    mov        [0061EF14],eax; gvar_0061EF14
 0054EBC4    mov        edx,54EE88
 0054EBC9    mov        eax,esi
 0054EBCB    call       004EBE38
 0054EBD0    mov        [0061EF18],eax; gvar_0061EF18
 0054EBD5    mov        edx,54EE98
 0054EBDA    mov        eax,esi
 0054EBDC    call       004EBE38
 0054EBE1    mov        [0061EF1C],eax; gvar_0061EF1C
 0054EBE6    mov        edx,54EEA8
 0054EBEB    mov        eax,esi
 0054EBED    call       004EBE38
 0054EBF2    mov        [0061EF24],eax; gvar_0061EF24
 0054EBF7    mov        edx,54EEB8
 0054EBFC    mov        eax,esi
 0054EBFE    call       004EBE38
 0054EC03    mov        [0061EF28],eax; gvar_0061EF28
 0054EC08    mov        edx,54EECC
 0054EC0D    mov        eax,esi
 0054EC0F    call       004EBE38
 0054EC14    mov        [0061EF20],eax; gvar_0061EF20
 0054EC19    mov        edx,54EEE4
 0054EC1E    mov        eax,esi
 0054EC20    call       004EBE38
 0054EC25    mov        [0061EF2C],eax; gvar_0061EF2C
 0054EC2A    mov        edx,54EEF0
 0054EC2F    mov        eax,esi
 0054EC31    call       004EBE38
 0054EC36    mov        [0061EF30],eax; gvar_0061EF30
 0054EC3B    mov        eax,ebx
 0054EC3D    pop        esi
 0054EC3E    pop        ebx
 0054EC3F    pop        ebp
 0054EC40    ret
*}
//end;

Initialization
//0054EF48
{*
 0054EF48    push       ebp
 0054EF49    mov        ebp,esp
 0054EF4B    push       ecx
 0054EF4C    sub        dword ptr ds:[61EF38],1
>0054EF53    jae        0054EF7A
 0054EF55    xor        eax,eax
 0054EF57    mov        [0061EF34],eax; gvar_0061EF34:TZASANativeLibraryLoader
 0054EF5C    push       0
 0054EF5E    mov        eax,54EF88; 'DBLIB9.DLL'
 0054EF63    mov        dword ptr [ebp-4],eax
 0054EF66    lea        ecx,[ebp-4]
 0054EF69    mov        dl,1
 0054EF6B    mov        eax,[0054E8D8]; TZASANativeLibraryLoader
 0054EF70    call       TZSybaseNativeLibraryLoader.Create; TZASANativeLibraryLoader.Create
 0054EF75    mov        [0061EF34],eax; gvar_0061EF34:TZASANativeLibraryLoader
 0054EF7A    pop        ecx
 0054EF7B    pop        ebp
 0054EF7C    ret
*}
Finalization
//0054EF04
{*
 0054EF04    push       ebp
 0054EF05    mov        ebp,esp
 0054EF07    xor        eax,eax
 0054EF09    push       ebp
 0054EF0A    push       54EF3E
 0054EF0F    push       dword ptr fs:[eax]
 0054EF12    mov        dword ptr fs:[eax],esp
 0054EF15    inc        dword ptr ds:[61EF38]
>0054EF1B    jne        0054EF30
 0054EF1D    cmp        dword ptr ds:[61EF34],0; gvar_0061EF34:TZASANativeLibraryLoader
>0054EF24    je         0054EF30
 0054EF26    mov        eax,[0061EF34]; gvar_0061EF34:TZASANativeLibraryLoader
 0054EF2B    call       TObject.Free
 0054EF30    xor        eax,eax
 0054EF32    pop        edx
 0054EF33    pop        ecx
 0054EF34    pop        ecx
 0054EF35    mov        dword ptr fs:[eax],edx
 0054EF38    push       54EF45
 0054EF3D    ret
<0054EF3E    jmp        @HandleFinally
<0054EF43    jmp        0054EF3D
 0054EF45    pop        ebp
 0054EF46    ret
*}
end.