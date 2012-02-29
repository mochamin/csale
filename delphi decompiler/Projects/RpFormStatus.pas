{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpFormStatus;

interface

uses
  Classes, Windows, Graphics, Forms, StdCtrls;

type
  TRpStatusForm = class(TForm)
    CancelButton:TButton;//f2F8
    StatusLabel:TLabel;//f2FC
    //procedure CancelButtonClick(?:?);
  public
    f300:dword;//f300
    f304:byte;//f304
  end;

implementation

{$R *.DFM}

//00596F14
//procedure TRpStatusForm.CancelButtonClick(?:?);
//begin
{*
 00596F14    push       ebx
 00596F15    push       esi
 00596F16    mov        esi,edx
 00596F18    mov        ebx,eax
 00596F1A    mov        eax,esi
 00596F1C    mov        edx,dword ptr ds:[4524EC]; TButton
 00596F22    call       @AsClass
 00596F27    cmp        dword ptr [eax+214],2; TButton.ModalResult:TModalResult
>00596F2E    jne        00596F41
 00596F30    mov        eax,dword ptr [ebx+300]; TRpStatusForm.?f300:dword
 00596F36    mov        eax,dword ptr [eax+38]
 00596F39    call       00584D50
 00596F3E    pop        esi
 00596F3F    pop        ebx
 00596F40    ret
 00596F41    mov        byte ptr [ebx+304],1; TRpStatusForm.?f304:byte
 00596F48    pop        esi
 00596F49    pop        ebx
 00596F4A    ret
*}
//end;

end.