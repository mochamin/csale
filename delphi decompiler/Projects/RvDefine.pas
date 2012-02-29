{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvDefine;

interface

uses
  Classes, Windows, Graphics, SysUtils;

type
  ERaveClass = class(Exception)
  end;
  ERaveException = class(Exception)
  end;
  TLineWidthType = (wtPoints, wtPixels);
  TDisplayOn = (doParent, doAll, doPreviewOnly, doPrinterOnly);
  TGotoMode = (gmGotoDone, gmGotoNotDone, gmCallEach);
  TRaveFillStyle = (fsSolid, fsClear, fsHorizontal, fsVertical, fsFDiagonal, fsBDiagonal, fsCross, fsDiagCross, fsNone);
  TRaveCalcType = (ctCount, ctSum, ctMin, ctMax, ctAverage);
  TRaveBinName = record //size = 8
  f0:String;;
  TRavePrinterDuplex = (pdSimplex, pdHorizontal, pdVertical, pdDefault);
  TRavePrinterCollate = (pcFalse, pcTrue, pcDefault);
  TRavePrinterResolution = (prDraft, prLow, prMedium, prHigh, prDefault);

implementation

{$R *.DFM}

//005998CC
//procedure sub_005998CC(?:AnsiString);
//begin
{*
 005998CC    push       ebp
 005998CD    mov        ebp,esp
 005998CF    push       ecx
 005998D0    mov        dword ptr [ebp-4],eax
 005998D3    mov        eax,dword ptr [ebp-4]
 005998D6    call       @LStrAddRef
 005998DB    xor        eax,eax
 005998DD    push       ebp
 005998DE    push       599913
 005998E3    push       dword ptr fs:[eax]
 005998E6    mov        dword ptr fs:[eax],esp
 005998E9    mov        ecx,dword ptr [ebp-4]
 005998EC    mov        dl,1
 005998EE    mov        eax,[005993D8]; ERaveException
 005998F3    call       Exception.Create; ERaveException.Create
 005998F8    call       @RaiseExcept
 005998FD    xor        eax,eax
 005998FF    pop        edx
 00599900    pop        ecx
 00599901    pop        ecx
 00599902    mov        dword ptr fs:[eax],edx
 00599905    push       59991A
 0059990A    lea        eax,[ebp-4]
 0059990D    call       @LStrClr
 00599912    ret
<00599913    jmp        @HandleFinally
<00599918    jmp        0059990A
 0059991A    pop        ecx
 0059991B    pop        ebp
 0059991C    ret
*}
//end;

Initialization
//0059997C
{*
 0059997C    push       ebp
 0059997D    mov        ebp,esp
 0059997F    push       0
 00599981    push       0
 00599983    xor        eax,eax
 00599985    push       ebp
 00599986    push       5999D7
 0059998B    push       dword ptr fs:[eax]
 0059998E    mov        dword ptr fs:[eax],esp
 00599991    sub        dword ptr ds:[61F01C],1
>00599998    jae        005999BC
 0059999A    lea        edx,[ebp-8]
 0059999D    xor        eax,eax
 0059999F    call       ParamStr
 005999A4    mov        eax,dword ptr [ebp-8]
 005999A7    lea        edx,[ebp-4]
 005999AA    call       ExtractFilePath
 005999AF    mov        edx,dword ptr [ebp-4]
 005999B2    mov        eax,61F010; gvar_0061F010:AnsiString
 005999B7    call       @LStrAsg
 005999BC    xor        eax,eax
 005999BE    pop        edx
 005999BF    pop        ecx
 005999C0    pop        ecx
 005999C1    mov        dword ptr fs:[eax],edx
 005999C4    push       5999DE
 005999C9    lea        eax,[ebp-8]
 005999CC    mov        edx,2
 005999D1    call       @LStrArrayClr
 005999D6    ret
<005999D7    jmp        @HandleFinally
<005999DC    jmp        005999C9
 005999DE    pop        ecx
 005999DF    pop        ecx
 005999E0    pop        ebp
 005999E1    ret
*}
Finalization
//00599920
{*
 00599920    push       ebp
 00599921    mov        ebp,esp
 00599923    xor        eax,eax
 00599925    push       ebp
 00599926    push       599970
 0059992B    push       dword ptr fs:[eax]
 0059992E    mov        dword ptr fs:[eax],esp
 00599931    inc        dword ptr ds:[61F01C]
>00599937    jne        00599962
 00599939    mov        eax,61F010; gvar_0061F010:AnsiString
 0059993E    call       @LStrClr
 00599943    mov        eax,617098; ^'Rave Reports 5.0'
 00599948    call       @LStrClr
 0059994D    mov        eax,617028; gvar_00617028:array[14] of TRaveBinName
 00599952    mov        ecx,0E
 00599957    mov        edx,dword ptr ds:[59965C]; TRaveBinName
 0059995D    call       @FinalizeArray
 00599962    xor        eax,eax
 00599964    pop        edx
 00599965    pop        ecx
 00599966    pop        ecx
 00599967    mov        dword ptr fs:[eax],edx
 0059996A    push       599977
 0059996F    ret
<00599970    jmp        @HandleFinally
<00599975    jmp        0059996F
 00599977    pop        ebp
 00599978    ret
*}
end.