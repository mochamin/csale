{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit custandcpun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids;

type
  Tcustncpfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    DBGrid1:TDBGrid;//f308
    DBGrid2:TDBGrid;//f30C
    Panel2:TPanel;//f310
    Label2:TLabel;//f314
    Label3:TLabel;//f318
    Label4:TLabel;//f31C
    cari:TEdit;//f320
    procedure FormCreate;
    procedure cariChange;
    //procedure FormKeyDown(?:?; ?:?);
    //procedure cariKeyDown(?:?; ?:?);
    //procedure DBGrid1KeyDown(?:?; ?:?);
    //procedure DBGrid2KeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005DAA6C
procedure Tcustncpfrm.FormCreate;
begin
{*
 005DAA6C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DAA71    mov        eax,dword ptr [eax]
 005DAA73    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DAA79    call       005D8634
 005DAA7E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DAA83    mov        eax,dword ptr [eax]
 005DAA85    mov        eax,dword ptr [eax+0BC]; Tdm.custpicview:TZReadOnlyQuery
 005DAA8B    call       005D8618
 005DAA90    ret
*}
end;

//005DAA94
//procedure sub_005DAA94(?:Tcustncpfrm);
//begin
{*
 005DAA94    push       ebp
 005DAA95    mov        ebp,esp
 005DAA97    mov        ecx,7
 005DAA9C    push       0
 005DAA9E    push       0
 005DAAA0    dec        ecx
<005DAAA1    jne        005DAA9C
 005DAAA3    push       ecx
 005DAAA4    push       ebx
 005DAAA5    push       esi
 005DAAA6    mov        ebx,eax
 005DAAA8    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005DAAAE    xor        eax,eax
 005DAAB0    push       ebp
 005DAAB1    push       5DABEA
 005DAAB6    push       dword ptr fs:[eax]
 005DAAB9    mov        dword ptr fs:[eax],esp
 005DAABC    mov        eax,dword ptr [esi]
 005DAABE    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DAAC4    call       TDataSet.Edit
 005DAAC9    mov        eax,dword ptr [esi]
 005DAACB    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DAAD1    mov        edx,5DAC00; 'cu_id'
 005DAAD6    call       TDataSet.FieldByName
 005DAADB    lea        edx,[ebp-14]
 005DAADE    mov        ecx,dword ptr [eax]
 005DAAE0    call       dword ptr [ecx+60]; TField.GetAsString
 005DAAE3    mov        edx,dword ptr [ebp-14]
 005DAAE6    lea        eax,[ebp-10]
 005DAAE9    call       @VarFromLStr
 005DAAEE    lea        eax,[ebp-10]
 005DAAF1    push       eax
 005DAAF2    mov        eax,dword ptr [esi]
 005DAAF4    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DAAFA    mov        edx,5DAC10; 'bd_sendto'
 005DAAFF    call       TDataSet.FieldByName
 005DAB04    pop        edx
 005DAB05    mov        ecx,dword ptr [eax]
 005DAB07    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DAB0D    mov        eax,dword ptr [esi]
 005DAB0F    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DAB15    mov        edx,5DAC24; 'cu_nama'
 005DAB1A    call       TDataSet.FieldByName
 005DAB1F    lea        edx,[ebp-28]
 005DAB22    mov        ecx,dword ptr [eax]
 005DAB24    call       dword ptr [ecx+60]; TField.GetAsString
 005DAB27    mov        edx,dword ptr [ebp-28]
 005DAB2A    lea        eax,[ebp-24]
 005DAB2D    call       @VarFromLStr
 005DAB32    lea        eax,[ebp-24]
 005DAB35    push       eax
 005DAB36    mov        eax,dword ptr [esi]
 005DAB38    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DAB3E    mov        edx,5DAC34; 'bd_sendto_nama'
 005DAB43    call       TDataSet.FieldByName
 005DAB48    pop        edx
 005DAB49    mov        ecx,dword ptr [eax]
 005DAB4B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DAB51    mov        eax,dword ptr [esi]
 005DAB53    mov        eax,dword ptr [eax+0BC]; Tdm.custpicview:TZReadOnlyQuery
 005DAB59    mov        edx,5DAC4C; 'cp_id'
 005DAB5E    call       TDataSet.FieldByName
 005DAB63    lea        edx,[ebp-3C]
 005DAB66    mov        ecx,dword ptr [eax]
 005DAB68    call       dword ptr [ecx+60]; TField.GetAsString
 005DAB6B    mov        edx,dword ptr [ebp-3C]
 005DAB6E    lea        eax,[ebp-38]
 005DAB71    call       @VarFromLStr
 005DAB76    lea        eax,[ebp-38]
 005DAB79    push       eax
 005DAB7A    mov        eax,dword ptr [esi]
 005DAB7C    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DAB82    mov        edx,5DAC5C; 'bd_up'
 005DAB87    call       TDataSet.FieldByName
 005DAB8C    pop        edx
 005DAB8D    mov        ecx,dword ptr [eax]
 005DAB8F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DAB95    mov        eax,dword ptr [esi]
 005DAB97    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DAB9D    mov        edx,dword ptr [eax]
 005DAB9F    call       dword ptr [edx+24C]; TDataSet.Post
 005DABA5    mov        eax,ebx
 005DABA7    call       TCustomForm.Close
 005DABAC    xor        eax,eax
 005DABAE    pop        edx
 005DABAF    pop        ecx
 005DABB0    pop        ecx
 005DABB1    mov        dword ptr fs:[eax],edx
 005DABB4    push       5DABF1
 005DABB9    lea        eax,[ebp-3C]
 005DABBC    call       @LStrClr
 005DABC1    lea        eax,[ebp-38]
 005DABC4    call       @VarClr
 005DABC9    lea        eax,[ebp-28]
 005DABCC    call       @LStrClr
 005DABD1    lea        eax,[ebp-24]
 005DABD4    call       @VarClr
 005DABD9    lea        eax,[ebp-14]
 005DABDC    call       @LStrClr
 005DABE1    lea        eax,[ebp-10]
 005DABE4    call       @VarClr
 005DABE9    ret
<005DABEA    jmp        @HandleFinally
<005DABEF    jmp        005DABB9
 005DABF1    pop        esi
 005DABF2    pop        ebx
 005DABF3    mov        esp,ebp
 005DABF5    pop        ebp
 005DABF6    ret
*}
//end;

//005DAC64
procedure Tcustncpfrm.cariChange;
begin
{*
 005DAC64    push       ebp
 005DAC65    mov        ebp,esp
 005DAC67    xor        ecx,ecx
 005DAC69    push       ecx
 005DAC6A    push       ecx
 005DAC6B    push       ecx
 005DAC6C    push       ecx
 005DAC6D    push       ecx
 005DAC6E    push       ecx
 005DAC6F    push       ebx
 005DAC70    push       esi
 005DAC71    mov        esi,eax
 005DAC73    xor        eax,eax
 005DAC75    push       ebp
 005DAC76    push       5DAD19
 005DAC7B    push       dword ptr fs:[eax]
 005DAC7E    mov        dword ptr fs:[eax],esp
 005DAC81    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DAC86    mov        eax,dword ptr [eax]
 005DAC88    mov        ebx,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DAC8E    mov        eax,ebx
 005DAC90    call       TZReadOnlyQuery.GetSQL
 005DAC95    mov        edx,5DAD30; 'select * from customer where cu_nama like (:nama) order by cu_id DESC '
 005DAC9A    mov        ecx,dword ptr [eax]
 005DAC9C    call       dword ptr [ecx+2C]
 005DAC9F    push       5DAD80; '%'
 005DACA4    lea        edx,[ebp-18]
 005DACA7    mov        eax,dword ptr [esi+320]; Tcustncpfrm.cari:TEdit
 005DACAD    call       TControl.GetText
 005DACB2    push       dword ptr [ebp-18]
 005DACB5    push       5DAD80; '%'
 005DACBA    lea        eax,[ebp-14]
 005DACBD    mov        edx,3
 005DACC2    call       @LStrCatN
 005DACC7    mov        edx,dword ptr [ebp-14]
 005DACCA    lea        eax,[ebp-10]
 005DACCD    call       @VarFromLStr
 005DACD2    lea        eax,[ebp-10]
 005DACD5    push       eax
 005DACD6    mov        edx,5DAD8C; 'nama'
 005DACDB    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005DACE1    call       TParams.ParamByName
 005DACE6    pop        edx
 005DACE7    call       TParam.SetAsVariant
 005DACEC    mov        eax,ebx
 005DACEE    call       TDataSet.Open
 005DACF3    xor        eax,eax
 005DACF5    pop        edx
 005DACF6    pop        ecx
 005DACF7    pop        ecx
 005DACF8    mov        dword ptr fs:[eax],edx
 005DACFB    push       5DAD20
 005DAD00    lea        eax,[ebp-18]
 005DAD03    call       @LStrClr
 005DAD08    lea        eax,[ebp-14]
 005DAD0B    call       @LStrClr
 005DAD10    lea        eax,[ebp-10]
 005DAD13    call       @VarClr
 005DAD18    ret
<005DAD19    jmp        @HandleFinally
<005DAD1E    jmp        005DAD00
 005DAD20    pop        esi
 005DAD21    pop        ebx
 005DAD22    mov        esp,ebp
 005DAD24    pop        ebp
 005DAD25    ret
*}
end;

//005DAD94
//procedure Tcustncpfrm.FormKeyDown(?:?; ?:?);
//begin
{*
 005DAD94    push       ebp
 005DAD95    mov        ebp,esp
 005DAD97    cmp        word ptr [ecx],1B
>005DAD9B    jne        005DADA2
 005DAD9D    call       TCustomForm.Close
 005DADA2    pop        ebp
 005DADA3    ret        4
*}
//end;

//005DADA8
//procedure Tcustncpfrm.cariKeyDown(?:?; ?:?);
//begin
{*
 005DADA8    push       ebp
 005DADA9    mov        ebp,esp
 005DADAB    push       ebx
 005DADAC    push       esi
 005DADAD    mov        ebx,ecx
 005DADAF    mov        esi,eax
 005DADB1    cmp        word ptr [ebx],1B
>005DADB5    jne        005DADBE
 005DADB7    mov        eax,esi
 005DADB9    call       TCustomForm.Close
 005DADBE    cmp        word ptr [ebx],0D
>005DADC2    jne        005DADCB
 005DADC4    mov        eax,esi
 005DADC6    call       005DAA94
 005DADCB    cmp        word ptr [ebx],28
>005DADCF    jne        005DADF1
 005DADD1    mov        eax,dword ptr [esi+308]; Tcustncpfrm.DBGrid1:TDBGrid
 005DADD7    mov        edx,dword ptr [eax]
 005DADD9    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005DADDF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DADE4    mov        eax,dword ptr [eax]
 005DADE6    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005DADEC    call       TDataSet.Next
 005DADF1    pop        esi
 005DADF2    pop        ebx
 005DADF3    pop        ebp
 005DADF4    ret        4
*}
//end;

//005DADF8
//procedure Tcustncpfrm.DBGrid1KeyDown(?:?; ?:?);
//begin
{*
 005DADF8    push       ebp
 005DADF9    mov        ebp,esp
 005DADFB    push       ebx
 005DADFC    push       esi
 005DADFD    mov        esi,ecx
 005DADFF    mov        ebx,eax
 005DAE01    cmp        word ptr [esi],1B
>005DAE05    jne        005DAE0E
 005DAE07    mov        eax,ebx
 005DAE09    call       TCustomForm.Close
 005DAE0E    cmp        word ptr [esi],0D
>005DAE12    jne        005DAE1B
 005DAE14    mov        eax,ebx
 005DAE16    call       005DAA94
 005DAE1B    pop        esi
 005DAE1C    pop        ebx
 005DAE1D    pop        ebp
 005DAE1E    ret        4
*}
//end;

//005DAE24
//procedure Tcustncpfrm.DBGrid2KeyDown(?:?; ?:?);
//begin
{*
 005DAE24    push       ebp
 005DAE25    mov        ebp,esp
 005DAE27    push       ebx
 005DAE28    push       esi
 005DAE29    mov        esi,ecx
 005DAE2B    mov        ebx,eax
 005DAE2D    cmp        word ptr [esi],1B
>005DAE31    jne        005DAE3A
 005DAE33    mov        eax,ebx
 005DAE35    call       TCustomForm.Close
 005DAE3A    cmp        word ptr [esi],0D
>005DAE3E    jne        005DAE47
 005DAE40    mov        eax,ebx
 005DAE42    call       005DAA94
 005DAE47    pop        esi
 005DAE48    pop        ebx
 005DAE49    pop        ebp
 005DAE4A    ret        4
*}
//end;

end.