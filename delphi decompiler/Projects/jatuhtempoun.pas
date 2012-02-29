{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit jatuhtempoun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  Tjatuhtempofrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    tgl:TDateTimePicker;//f308
    Panel3:TPanel;//f30C
    SpeedButton4:TSpeedButton;//f310
    procedure FormCreate;
    procedure SpeedButton4Click;
    procedure FormActivate;
  end;

implementation

{$R *.DFM}

//005E5800
procedure Tjatuhtempofrm.FormCreate;
begin
{*
 005E5800    push       ebx
 005E5801    mov        ebx,eax
 005E5803    call       Date
 005E5808    add        esp,0FFFFFFF8
 005E580B    fstp       qword ptr [esp]
 005E580E    wait
 005E580F    mov        eax,dword ptr [ebx+308]; Tjatuhtempofrm.tgl:TDateTimePicker
 005E5815    call       TCommonCalendar.SetDate
 005E581A    pop        ebx
 005E581B    ret
*}
end;

//005E581C
procedure Tjatuhtempofrm.SpeedButton4Click;
begin
{*
 005E581C    push       ebp
 005E581D    mov        ebp,esp
 005E581F    xor        ecx,ecx
 005E5821    push       ecx
 005E5822    push       ecx
 005E5823    push       ecx
 005E5824    push       ecx
 005E5825    push       ebx
 005E5826    mov        ebx,eax
 005E5828    xor        eax,eax
 005E582A    push       ebp
 005E582B    push       5E589C
 005E5830    push       dword ptr fs:[eax]
 005E5833    mov        dword ptr fs:[eax],esp
 005E5836    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E583B    mov        eax,dword ptr [eax]
 005E583D    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E5843    call       TDataSet.Edit
 005E5848    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E584D    mov        eax,dword ptr [eax]
 005E584F    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E5855    mov        edx,5E58B0; 'be_due'
 005E585A    call       TDataSet.FieldByName
 005E585F    push       eax
 005E5860    mov        eax,dword ptr [ebx+308]; Tjatuhtempofrm.tgl:TDateTimePicker
 005E5866    call       TCommonCalendar.GetDate
 005E586B    lea        eax,[ebp-10]
 005E586E    call       @VarFromReal
 005E5873    lea        edx,[ebp-10]
 005E5876    pop        eax
 005E5877    mov        ecx,dword ptr [eax]
 005E5879    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E587F    mov        eax,ebx
 005E5881    call       TCustomForm.Close
 005E5886    xor        eax,eax
 005E5888    pop        edx
 005E5889    pop        ecx
 005E588A    pop        ecx
 005E588B    mov        dword ptr fs:[eax],edx
 005E588E    push       5E58A3
 005E5893    lea        eax,[ebp-10]
 005E5896    call       @VarClr
 005E589B    ret
<005E589C    jmp        @HandleFinally
<005E58A1    jmp        005E5893
 005E58A3    pop        ebx
 005E58A4    mov        esp,ebp
 005E58A6    pop        ebp
 005E58A7    ret
*}
end;

//005E58B8
procedure Tjatuhtempofrm.FormActivate;
begin
{*
 005E58B8    push       ebp
 005E58B9    mov        ebp,esp
 005E58BB    mov        ecx,6
 005E58C0    push       0
 005E58C2    push       0
 005E58C4    dec        ecx
<005E58C5    jne        005E58C0
 005E58C7    push       ebx
 005E58C8    mov        ebx,eax
 005E58CA    xor        eax,eax
 005E58CC    push       ebp
 005E58CD    push       5E5968
 005E58D2    push       dword ptr fs:[eax]
 005E58D5    mov        dword ptr fs:[eax],esp
 005E58D8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E58DD    mov        eax,dword ptr [eax]
 005E58DF    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E58E5    mov        edx,5E597C; 'be_due'
 005E58EA    call       TDataSet.FieldByName
 005E58EF    lea        edx,[ebp-10]
 005E58F2    mov        ecx,dword ptr [eax]
 005E58F4    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E58F7    lea        eax,[ebp-10]
 005E58FA    push       eax
 005E58FB    lea        eax,[ebp-20]
 005E58FE    call       Null
 005E5903    lea        edx,[ebp-20]
 005E5906    pop        eax
 005E5907    call       @VarCmpNE
>005E590C    je         005E5947
 005E590E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E5913    mov        eax,dword ptr [eax]
 005E5915    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E591B    mov        edx,5E597C; 'be_due'
 005E5920    call       TDataSet.FieldByName
 005E5925    lea        edx,[ebp-30]
 005E5928    mov        ecx,dword ptr [eax]
 005E592A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E592D    lea        eax,[ebp-30]
 005E5930    call       @VarToReal
 005E5935    add        esp,0FFFFFFF8
 005E5938    fstp       qword ptr [esp]
 005E593B    wait
 005E593C    mov        eax,dword ptr [ebx+308]; Tjatuhtempofrm.tgl:TDateTimePicker
 005E5942    call       TCommonCalendar.SetDate
 005E5947    xor        eax,eax
 005E5949    pop        edx
 005E594A    pop        ecx
 005E594B    pop        ecx
 005E594C    mov        dword ptr fs:[eax],edx
 005E594F    push       5E596F
 005E5954    lea        eax,[ebp-30]
 005E5957    mov        edx,dword ptr ds:[401114]; Variant
 005E595D    mov        ecx,3
 005E5962    call       @FinalizeArray
 005E5967    ret
<005E5968    jmp        @HandleFinally
<005E596D    jmp        005E5954
 005E596F    pop        ebx
 005E5970    mov        esp,ebp
 005E5972    pop        ebp
 005E5973    ret
*}
end;

end.