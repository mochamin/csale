{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit passchangeun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons;

type
  Tpasschangefrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Panel3:TPanel;//f30C
    SpeedButton2:TSpeedButton;//f310
    SpeedButton1:TSpeedButton;//f314
    Label7:TLabel;//f318
    oldpwd:TEdit;//f31C
    Label2:TLabel;//f320
    newpwd:TEdit;//f324
    repeatpwd:TEdit;//f328
    Label3:TLabel;//f32C
    procedure oldpwdChange;
    procedure SpeedButton1Click;
  end;

implementation

{$R *.DFM}

//005E2B84
//procedure sub_005E2B84(?:Tpasschangefrm);
//begin
{*
 005E2B84    push       ebp
 005E2B85    mov        ebp,esp
 005E2B87    push       0
 005E2B89    push       0
 005E2B8B    push       0
 005E2B8D    push       ebx
 005E2B8E    mov        ebx,eax
 005E2B90    xor        eax,eax
 005E2B92    push       ebp
 005E2B93    push       5E2C48
 005E2B98    push       dword ptr fs:[eax]
 005E2B9B    mov        dword ptr fs:[eax],esp
 005E2B9E    lea        edx,[ebp-4]
 005E2BA1    mov        eax,dword ptr [ebx+324]; Tpasschangefrm.newpwd:TEdit
 005E2BA7    call       TControl.GetText
 005E2BAC    cmp        dword ptr [ebp-4],0
>005E2BB0    jne        005E2BDA
 005E2BB2    push       0
 005E2BB4    mov        cx,word ptr ds:[5E2C54]; 0x4
 005E2BBB    mov        dl,1
 005E2BBD    mov        eax,5E2C60; 'password tidak boleh kosong'
 005E2BC2    call       MessageDlg
 005E2BC7    mov        eax,dword ptr [ebx+324]; Tpasschangefrm.newpwd:TEdit
 005E2BCD    mov        edx,dword ptr [eax]
 005E2BCF    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E2BD5    call       Abort
 005E2BDA    lea        edx,[ebp-8]
 005E2BDD    mov        eax,dword ptr [ebx+324]; Tpasschangefrm.newpwd:TEdit
 005E2BE3    call       TControl.GetText
 005E2BE8    mov        eax,dword ptr [ebp-8]
 005E2BEB    push       eax
 005E2BEC    lea        edx,[ebp-0C]
 005E2BEF    mov        eax,dword ptr [ebx+328]; Tpasschangefrm.repeatpwd:TEdit
 005E2BF5    call       TControl.GetText
 005E2BFA    mov        edx,dword ptr [ebp-0C]
 005E2BFD    pop        eax
 005E2BFE    call       @LStrCmp
>005E2C03    je         005E2C2D
 005E2C05    push       0
 005E2C07    mov        cx,word ptr ds:[5E2C54]; 0x4
 005E2C0E    mov        dl,1
 005E2C10    mov        eax,5E2C84; 'password tidak cocok'
 005E2C15    call       MessageDlg
 005E2C1A    mov        eax,dword ptr [ebx+328]; Tpasschangefrm.repeatpwd:TEdit
 005E2C20    mov        edx,dword ptr [eax]
 005E2C22    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E2C28    call       Abort
 005E2C2D    xor        eax,eax
 005E2C2F    pop        edx
 005E2C30    pop        ecx
 005E2C31    pop        ecx
 005E2C32    mov        dword ptr fs:[eax],edx
 005E2C35    push       5E2C4F
 005E2C3A    lea        eax,[ebp-0C]
 005E2C3D    mov        edx,3
 005E2C42    call       @LStrArrayClr
 005E2C47    ret
<005E2C48    jmp        @HandleFinally
<005E2C4D    jmp        005E2C3A
 005E2C4F    pop        ebx
 005E2C50    mov        esp,ebp
 005E2C52    pop        ebp
 005E2C53    ret
*}
//end;

//005E2C9C
procedure Tpasschangefrm.oldpwdChange;
begin
{*
 005E2C9C    push       ebp
 005E2C9D    mov        ebp,esp
 005E2C9F    xor        ecx,ecx
 005E2CA1    push       ecx
 005E2CA2    push       ecx
 005E2CA3    push       ecx
 005E2CA4    push       ecx
 005E2CA5    push       ecx
 005E2CA6    push       ebx
 005E2CA7    push       esi
 005E2CA8    mov        ebx,eax
 005E2CAA    xor        eax,eax
 005E2CAC    push       ebp
 005E2CAD    push       5E2D70
 005E2CB2    push       dword ptr fs:[eax]
 005E2CB5    mov        dword ptr fs:[eax],esp
 005E2CB8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2CBD    mov        eax,dword ptr [eax]
 005E2CBF    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2CC2    call       TDataSet.GetActive
 005E2CC7    test       al,al
>005E2CC9    jne        005E2CDF
 005E2CCB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2CD0    mov        eax,dword ptr [eax]
 005E2CD2    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2CD5    mov        dl,1
 005E2CD7    mov        ecx,dword ptr [eax]
 005E2CD9    call       dword ptr [ecx+178]; TDataSet.SetActive
 005E2CDF    mov        al,[005E2D80]; 0x1
 005E2CE4    push       eax
 005E2CE5    lea        edx,[ebp-14]
 005E2CE8    mov        eax,dword ptr [ebx+31C]; Tpasschangefrm.oldpwd:TEdit
 005E2CEE    call       TControl.GetText
 005E2CF3    mov        edx,dword ptr [ebp-14]
 005E2CF6    lea        eax,[ebp-10]
 005E2CF9    call       @VarFromLStr
 005E2CFE    lea        ecx,[ebp-10]
 005E2D01    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2D06    mov        eax,dword ptr [eax]
 005E2D08    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2D0B    mov        edx,5E2D8C; 'us_password'
 005E2D10    mov        esi,dword ptr [eax]
 005E2D12    call       dword ptr [esi+244]; TZAbstractRODataset.Locate
 005E2D18    cmp        al,1
>005E2D1A    jne        005E2D38
 005E2D1C    mov        dl,1
 005E2D1E    mov        eax,dword ptr [ebx+324]; Tpasschangefrm.newpwd:TEdit
 005E2D24    call       TControl.SetVisible
 005E2D29    mov        dl,1
 005E2D2B    mov        eax,dword ptr [ebx+328]; Tpasschangefrm.repeatpwd:TEdit
 005E2D31    call       TControl.SetVisible
>005E2D36    jmp        005E2D52
 005E2D38    xor        edx,edx
 005E2D3A    mov        eax,dword ptr [ebx+324]; Tpasschangefrm.newpwd:TEdit
 005E2D40    call       TControl.SetVisible
 005E2D45    xor        edx,edx
 005E2D47    mov        eax,dword ptr [ebx+328]; Tpasschangefrm.repeatpwd:TEdit
 005E2D4D    call       TControl.SetVisible
 005E2D52    xor        eax,eax
 005E2D54    pop        edx
 005E2D55    pop        ecx
 005E2D56    pop        ecx
 005E2D57    mov        dword ptr fs:[eax],edx
 005E2D5A    push       5E2D77
 005E2D5F    lea        eax,[ebp-14]
 005E2D62    call       @LStrClr
 005E2D67    lea        eax,[ebp-10]
 005E2D6A    call       @VarClr
 005E2D6F    ret
<005E2D70    jmp        @HandleFinally
<005E2D75    jmp        005E2D5F
 005E2D77    pop        esi
 005E2D78    pop        ebx
 005E2D79    mov        esp,ebp
 005E2D7B    pop        ebp
 005E2D7C    ret
*}
end;

//005E2D98
procedure Tpasschangefrm.SpeedButton1Click;
begin
{*
 005E2D98    call       005E2B84
 005E2D9D    push       0
 005E2D9F    mov        cx,word ptr ds:[5E2DF0]; 0x3
 005E2DA6    mov        dl,3
 005E2DA8    mov        eax,5E2DFC; 'Simpan perubahan password?'
 005E2DAD    call       MessageDlg
 005E2DB2    cmp        eax,6
>005E2DB5    jne        005E2DED
 005E2DB7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2DBC    mov        eax,dword ptr [eax]
 005E2DBE    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2DC1    mov        edx,dword ptr [eax]
 005E2DC3    call       dword ptr [edx+24C]; TDataSet.Post
 005E2DC9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2DCE    mov        eax,dword ptr [eax]
 005E2DD0    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2DD3    call       0056F648
 005E2DD8    push       0
 005E2DDA    mov        cx,word ptr ds:[5E2E18]; 0x4
 005E2DE1    xor        edx,edx
 005E2DE3    mov        eax,5E2E24; 'Password telah berubah, password baru aktif setelah \rAnda keluar dari mERP.'
 005E2DE8    call       MessageDlg
 005E2DED    ret
*}
end;

end.