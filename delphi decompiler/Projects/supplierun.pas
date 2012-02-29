{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit supplierun;

interface

uses
  Classes, Windows, Graphics, listrep, StdCtrls, Buttons;

type
  Tsupplierfrm = class(Tlistrepfrm)
    cari:TEdit;//f338
    Label2:TLabel;//f33C
    SpeedButton8:TSpeedButton;//f340
    SpeedButton9:TSpeedButton;//f344
    SpeedButton10:TSpeedButton;//f348
    procedure cariChange;
    procedure FormCreate;
    procedure SpeedButton4Click;
    procedure SpeedButton3Click;
    procedure SpeedButton5Click;
    procedure SpeedButton6Click;
    procedure DBGrid1DblClick;
    procedure SpeedButton9Click;
    procedure SpeedButton10Click;
  end;

implementation

{$R *.DFM}

//005D9BA4
procedure sub_005D9BA4;
begin
{*
 005D9BA4    push       ebp
 005D9BA5    mov        ebp,esp
 005D9BA7    push       0
 005D9BA9    push       0
 005D9BAB    push       ebx
 005D9BAC    xor        eax,eax
 005D9BAE    push       ebp
 005D9BAF    push       5D9C3B
 005D9BB4    push       dword ptr fs:[eax]
 005D9BB7    mov        dword ptr fs:[eax],esp
 005D9BBA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9BBF    mov        eax,dword ptr [eax]
 005D9BC1    mov        ebx,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005D9BC7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9BCC    mov        eax,dword ptr [eax]
 005D9BCE    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9BD4    mov        edx,5D9C50; 'sp_id'
 005D9BD9    call       TDataSet.FieldByName
 005D9BDE    lea        edx,[ebp-8]
 005D9BE1    mov        ecx,dword ptr [eax]
 005D9BE3    call       dword ptr [ecx+60]; TField.GetAsString
 005D9BE6    mov        ecx,dword ptr [ebp-8]
 005D9BE9    lea        eax,[ebp-4]
 005D9BEC    mov        edx,5D9C60; 'SELECT * FROM supplier_pic WHERE sp_supplier = '
 005D9BF1    call       @LStrCat3
 005D9BF6    mov        eax,dword ptr [ebp-4]
 005D9BF9    push       eax
 005D9BFA    mov        eax,ebx
 005D9BFC    call       TZReadOnlyQuery.GetSQL
 005D9C01    pop        edx
 005D9C02    mov        ecx,dword ptr [eax]
 005D9C04    call       dword ptr [ecx+2C]
 005D9C07    mov        eax,ebx
 005D9C09    call       TDataSet.Open
 005D9C0E    mov        eax,[0061B360]
 005D9C13    mov        eax,dword ptr [eax]
 005D9C15    mov        edx,dword ptr ds:[5D945C]; Tsupplierpicfrm
 005D9C1B    call       005D859C
 005D9C20    xor        eax,eax
 005D9C22    pop        edx
 005D9C23    pop        ecx
 005D9C24    pop        ecx
 005D9C25    mov        dword ptr fs:[eax],edx
 005D9C28    push       5D9C42
 005D9C2D    lea        eax,[ebp-8]
 005D9C30    mov        edx,2
 005D9C35    call       @LStrArrayClr
 005D9C3A    ret
<005D9C3B    jmp        @HandleFinally
<005D9C40    jmp        005D9C2D
 005D9C42    pop        ebx
 005D9C43    pop        ecx
 005D9C44    pop        ecx
 005D9C45    pop        ebp
 005D9C46    ret
*}
end;

//005D9C90
procedure Tsupplierfrm.cariChange;
begin
{*
 005D9C90    push       ebp
 005D9C91    mov        ebp,esp
 005D9C93    xor        ecx,ecx
 005D9C95    push       ecx
 005D9C96    push       ecx
 005D9C97    push       ecx
 005D9C98    push       ecx
 005D9C99    push       ecx
 005D9C9A    push       ebx
 005D9C9B    mov        ebx,eax
 005D9C9D    xor        eax,eax
 005D9C9F    push       ebp
 005D9CA0    push       5D9D05
 005D9CA5    push       dword ptr fs:[eax]
 005D9CA8    mov        dword ptr fs:[eax],esp
 005D9CAB    mov        al,[005D9D14]; 0x3
 005D9CB0    push       eax
 005D9CB1    lea        edx,[ebp-14]
 005D9CB4    mov        eax,dword ptr [ebx+338]; Tsupplierfrm.cari:TEdit
 005D9CBA    call       TControl.GetText
 005D9CBF    mov        edx,dword ptr [ebp-14]
 005D9CC2    lea        eax,[ebp-10]
 005D9CC5    call       @VarFromLStr
 005D9CCA    lea        ecx,[ebp-10]
 005D9CCD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9CD2    mov        eax,dword ptr [eax]
 005D9CD4    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9CDA    mov        edx,5D9D20; 'sp_name'
 005D9CDF    mov        ebx,dword ptr [eax]
 005D9CE1    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005D9CE7    xor        eax,eax
 005D9CE9    pop        edx
 005D9CEA    pop        ecx
 005D9CEB    pop        ecx
 005D9CEC    mov        dword ptr fs:[eax],edx
 005D9CEF    push       5D9D0C
 005D9CF4    lea        eax,[ebp-14]
 005D9CF7    call       @LStrClr
 005D9CFC    lea        eax,[ebp-10]
 005D9CFF    call       @VarClr
 005D9D04    ret
<005D9D05    jmp        @HandleFinally
<005D9D0A    jmp        005D9CF4
 005D9D0C    pop        ebx
 005D9D0D    mov        esp,ebp
 005D9D0F    pop        ebp
 005D9D10    ret
*}
end;

//005D9D28
procedure Tsupplierfrm.FormCreate;
begin
{*
 005D9D28    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9D2D    mov        eax,dword ptr [eax]
 005D9D2F    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9D35    call       005D8634
 005D9D3A    ret
*}
end;

//005D9D3C
procedure Tsupplierfrm.SpeedButton4Click;
begin
{*
 005D9D3C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9D41    mov        eax,dword ptr [eax]
 005D9D43    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9D49    call       TDataSet.Append
 005D9D4E    mov        eax,[0061BA08]
 005D9D53    mov        eax,dword ptr [eax]
 005D9D55    mov        edx,dword ptr ds:[5D8D0C]; Tsupplieraddfrm
 005D9D5B    call       005D859C
 005D9D60    ret
*}
end;

//005D9D64
procedure Tsupplierfrm.SpeedButton3Click;
begin
{*
 005D9D64    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9D69    mov        eax,dword ptr [eax]
 005D9D6B    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9D71    call       TDataSet.Edit
 005D9D76    mov        eax,[0061BA08]
 005D9D7B    mov        eax,dword ptr [eax]
 005D9D7D    mov        edx,dword ptr ds:[5D8D0C]; Tsupplieraddfrm
 005D9D83    call       005D859C
 005D9D88    ret
*}
end;

//005D9D8C
procedure Tsupplierfrm.SpeedButton5Click;
begin
{*
 005D9D8C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9D91    mov        eax,dword ptr [eax]
 005D9D93    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9D99    call       005D85D0
 005D9D9E    ret
*}
end;

//005D9DA0
procedure Tsupplierfrm.SpeedButton6Click;
begin
{*
 005D9DA0    push       ebx
 005D9DA1    mov        ebx,eax
 005D9DA3    mov        eax,ebx
 005D9DA5    call       Tlistrepfrm.SpeedButton6Click
 005D9DAA    mov        eax,ebx
 005D9DAC    call       005D9BA4
 005D9DB1    pop        ebx
 005D9DB2    ret
*}
end;

//005D9DB4
procedure Tsupplierfrm.DBGrid1DblClick;
begin
{*
 005D9DB4    call       005D9BA4
 005D9DB9    ret
*}
end;

//005D9DBC
procedure Tsupplierfrm.SpeedButton9Click;
begin
{*
 005D9DBC    call       005D9BA4
 005D9DC1    ret
*}
end;

//005D9DC4
procedure Tsupplierfrm.SpeedButton10Click;
begin
{*
 005D9DC4    push       ebp
 005D9DC5    mov        ebp,esp
 005D9DC7    xor        ecx,ecx
 005D9DC9    push       ecx
 005D9DCA    push       ecx
 005D9DCB    push       ecx
 005D9DCC    push       ecx
 005D9DCD    push       ecx
 005D9DCE    push       ebx
 005D9DCF    xor        eax,eax
 005D9DD1    push       ebp
 005D9DD2    push       5D9E76
 005D9DD7    push       dword ptr fs:[eax]
 005D9DDA    mov        dword ptr fs:[eax],esp
 005D9DDD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9DE2    mov        eax,dword ptr [eax]
 005D9DE4    mov        ebx,dword ptr [eax+0F0]; Tdm.footnote:TZQuery
 005D9DEA    mov        eax,ebx
 005D9DEC    call       TZReadOnlyQuery.GetSQL
 005D9DF1    mov        edx,5D9E8C; 'select * from foot_note where fn_supplier_id like (:id) '
 005D9DF6    mov        ecx,dword ptr [eax]
 005D9DF8    call       dword ptr [ecx+2C]
 005D9DFB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005D9E00    mov        eax,dword ptr [eax]
 005D9E02    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005D9E08    mov        edx,5D9ED0; 'sp_id'
 005D9E0D    call       TDataSet.FieldByName
 005D9E12    lea        edx,[ebp-14]
 005D9E15    mov        ecx,dword ptr [eax]
 005D9E17    call       dword ptr [ecx+60]; TField.GetAsString
 005D9E1A    mov        edx,dword ptr [ebp-14]
 005D9E1D    lea        eax,[ebp-10]
 005D9E20    call       @VarFromLStr
 005D9E25    lea        eax,[ebp-10]
 005D9E28    push       eax
 005D9E29    mov        edx,5D9EE0; 'id'
 005D9E2E    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005D9E34    call       TParams.ParamByName
 005D9E39    pop        edx
 005D9E3A    call       TParam.SetAsVariant
 005D9E3F    mov        eax,ebx
 005D9E41    call       TDataSet.Open
 005D9E46    mov        eax,[0061B80C]
 005D9E4B    mov        eax,dword ptr [eax]
 005D9E4D    mov        edx,dword ptr ds:[5D96DC]; Tfootnotefrm
 005D9E53    call       005D859C
 005D9E58    xor        eax,eax
 005D9E5A    pop        edx
 005D9E5B    pop        ecx
 005D9E5C    pop        ecx
 005D9E5D    mov        dword ptr fs:[eax],edx
 005D9E60    push       5D9E7D
 005D9E65    lea        eax,[ebp-14]
 005D9E68    call       @LStrClr
 005D9E6D    lea        eax,[ebp-10]
 005D9E70    call       @VarClr
 005D9E75    ret
<005D9E76    jmp        @HandleFinally
<005D9E7B    jmp        005D9E65
 005D9E7D    pop        ebx
 005D9E7E    mov        esp,ebp
 005D9E80    pop        ebp
 005D9E81    ret
*}
end;

end.