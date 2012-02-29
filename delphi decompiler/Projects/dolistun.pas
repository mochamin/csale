{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit dolistun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Menus, RpRave, RpSystem, RpConDS;

type
  Tdolistfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    griddo:TDBGrid;//f30C
    Label2:TLabel;//f310
    cari:TEdit;//f314
    popdo:TPopupMenu;//f318
    CetakDeliveryOrder1:TMenuItem;//f31C
    rpDeliver:TRvProject;//f320
    rsdeliver:TRvSystem;//f324
    rdcustdeliver:TRvDataSetConnection;//f328
    rdcustpicdeliver:TRvDataSetConnection;//f32C
    rddeliverydetail:TRvDataSetConnection;//f330
    rddeliver:TRvDataSetConnection;//f334
    N1:TMenuItem;//f338
    HapusDeliveryOrder1:TMenuItem;//f33C
    procedure FormActivate;
    procedure cariChange;
    procedure CetakDeliveryOrder1Click;
    procedure HapusDeliveryOrder1Click;
  end;

implementation

{$R *.DFM}

//00611714
procedure Tdolistfrm.FormActivate;
begin
{*
 00611714    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611719    mov        eax,dword ptr [eax]
 0061171B    mov        eax,dword ptr [eax+0A94]; Tdm.deliveryview:TZQuery
 00611721    call       005D8634
 00611726    ret
*}
end;

//00611728
procedure Tdolistfrm.cariChange;
begin
{*
 00611728    push       ebp
 00611729    mov        ebp,esp
 0061172B    xor        ecx,ecx
 0061172D    push       ecx
 0061172E    push       ecx
 0061172F    push       ecx
 00611730    push       ecx
 00611731    push       ecx
 00611732    push       ecx
 00611733    push       ebx
 00611734    push       esi
 00611735    mov        esi,eax
 00611737    xor        eax,eax
 00611739    push       ebp
 0061173A    push       6117DD
 0061173F    push       dword ptr fs:[eax]
 00611742    mov        dword ptr fs:[eax],esp
 00611745    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0061174A    mov        eax,dword ptr [eax]
 0061174C    mov        ebx,dword ptr [eax+0A94]; Tdm.deliveryview:TZQuery
 00611752    mov        eax,ebx
 00611754    call       TZReadOnlyQuery.GetSQL
 00611759    mov        edx,6117F4; 'select * from do inner join customer on (do_cust_id=cu_id) where cu_nama like (:opsi) or do_kode like (:opsi) or  do_invoice like (:opsi) order by do_id desc '
 0061175E    mov        ecx,dword ptr [eax]
 00611760    call       dword ptr [ecx+2C]
 00611763    push       61189C; '%'
 00611768    lea        edx,[ebp-18]
 0061176B    mov        eax,dword ptr [esi+314]; Tdolistfrm.cari:TEdit
 00611771    call       TControl.GetText
 00611776    push       dword ptr [ebp-18]
 00611779    push       61189C; '%'
 0061177E    lea        eax,[ebp-14]
 00611781    mov        edx,3
 00611786    call       @LStrCatN
 0061178B    mov        edx,dword ptr [ebp-14]
 0061178E    lea        eax,[ebp-10]
 00611791    call       @VarFromLStr
 00611796    lea        eax,[ebp-10]
 00611799    push       eax
 0061179A    mov        edx,6118A8; 'opsi'
 0061179F    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 006117A5    call       TParams.ParamByName
 006117AA    pop        edx
 006117AB    call       TParam.SetAsVariant
 006117B0    mov        eax,ebx
 006117B2    call       TDataSet.Open
 006117B7    xor        eax,eax
 006117B9    pop        edx
 006117BA    pop        ecx
 006117BB    pop        ecx
 006117BC    mov        dword ptr fs:[eax],edx
 006117BF    push       6117E4
 006117C4    lea        eax,[ebp-18]
 006117C7    call       @LStrClr
 006117CC    lea        eax,[ebp-14]
 006117CF    call       @LStrClr
 006117D4    lea        eax,[ebp-10]
 006117D7    call       @VarClr
 006117DC    ret
<006117DD    jmp        @HandleFinally
<006117E2    jmp        006117C4
 006117E4    pop        esi
 006117E5    pop        ebx
 006117E6    mov        esp,ebp
 006117E8    pop        ebp
 006117E9    ret
*}
end;

//006118B0
procedure Tdolistfrm.CetakDeliveryOrder1Click;
begin
{*
 006118B0    push       ebp
 006118B1    mov        ebp,esp
 006118B3    xor        ecx,ecx
 006118B5    push       ecx
 006118B6    push       ecx
 006118B7    push       ecx
 006118B8    push       ecx
 006118B9    push       ebx
 006118BA    push       esi
 006118BB    mov        ebx,eax
 006118BD    xor        eax,eax
 006118BF    push       ebp
 006118C0    push       611962
 006118C5    push       dword ptr fs:[eax]
 006118C8    mov        dword ptr fs:[eax],esp
 006118CB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006118D0    mov        eax,dword ptr [eax]
 006118D2    mov        esi,dword ptr [eax+250]; Tdm.delivery:TZQuery
 006118D8    mov        eax,esi
 006118DA    call       TZReadOnlyQuery.GetSQL
 006118DF    mov        edx,611978; 'select * from do where do_kode = (:kd) '
 006118E4    mov        ecx,dword ptr [eax]
 006118E6    call       dword ptr [ecx+2C]
 006118E9    xor        edx,edx
 006118EB    mov        eax,dword ptr [ebx+30C]; Tdolistfrm.griddo:TDBGrid
 006118F1    call       TCustomDBGrid.GetFields
 006118F6    lea        edx,[ebp-10]
 006118F9    mov        ecx,dword ptr [eax]
 006118FB    call       dword ptr [ecx+64]; TField.GetAsVariant
 006118FE    lea        eax,[ebp-10]
 00611901    push       eax
 00611902    mov        edx,6119A8; 'kd'
 00611907    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 0061190D    call       TParams.ParamByName
 00611912    pop        edx
 00611913    call       TParam.SetAsVariant
 00611918    mov        eax,esi
 0061191A    call       TDataSet.Open
 0061191F    mov        edx,6119B4; 'do.rav'
 00611924    mov        eax,dword ptr [ebx+320]; Tdolistfrm.rpDeliver:TRvProject
 0061192A    call       TRvProject.SetProjectFile
 0061192F    mov        cl,1
 00611931    mov        edx,6119B4; 'do.rav'
 00611936    mov        eax,dword ptr [ebx+320]; Tdolistfrm.rpDeliver:TRvProject
 0061193C    call       005D84D0
 00611941    mov        eax,dword ptr [ebx+320]; Tdolistfrm.rpDeliver:TRvProject
 00611947    call       005D8484
 0061194C    xor        eax,eax
 0061194E    pop        edx
 0061194F    pop        ecx
 00611950    pop        ecx
 00611951    mov        dword ptr fs:[eax],edx
 00611954    push       611969
 00611959    lea        eax,[ebp-10]
 0061195C    call       @VarClr
 00611961    ret
<00611962    jmp        @HandleFinally
<00611967    jmp        00611959
 00611969    pop        esi
 0061196A    pop        ebx
 0061196B    mov        esp,ebp
 0061196D    pop        ebp
 0061196E    ret
*}
end;

//006119BC
procedure Tdolistfrm.HapusDeliveryOrder1Click;
begin
{*
 006119BC    push       ebp
 006119BD    mov        ebp,esp
 006119BF    xor        ecx,ecx
 006119C1    push       ecx
 006119C2    push       ecx
 006119C3    push       ecx
 006119C4    push       ecx
 006119C5    push       ebx
 006119C6    mov        ebx,eax
 006119C8    xor        eax,eax
 006119CA    push       ebp
 006119CB    push       611A8A
 006119D0    push       dword ptr fs:[eax]
 006119D3    mov        dword ptr fs:[eax],esp
 006119D6    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006119DB    mov        eax,dword ptr [eax]
 006119DD    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 006119E3    call       005D8634
 006119E8    push       0
 006119EA    mov        cx,word ptr ds:[611A98]; 0x3
 006119F1    mov        dl,3
 006119F3    mov        eax,611AA4; 'Hapus Transaksi ini?'
 006119F8    call       MessageDlg
 006119FD    cmp        eax,6
>00611A00    jne        00611A74
 00611A02    mov        al,[00611ABC]; 0x1
 00611A07    push       eax
 00611A08    xor        edx,edx
 00611A0A    mov        eax,dword ptr [ebx+30C]; Tdolistfrm.griddo:TDBGrid
 00611A10    call       TCustomDBGrid.GetFields
 00611A15    lea        edx,[ebp-10]
 00611A18    mov        ecx,dword ptr [eax]
 00611A1A    call       dword ptr [ecx+64]; TField.GetAsVariant
 00611A1D    lea        ecx,[ebp-10]
 00611A20    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611A25    mov        eax,dword ptr [eax]
 00611A27    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 00611A2D    mov        edx,611AC8; 'do_kode'
 00611A32    mov        ebx,dword ptr [eax]
 00611A34    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 00611A3A    cmp        al,1
>00611A3C    jne        00611A74
 00611A3E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611A43    mov        eax,dword ptr [eax]
 00611A45    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 00611A4B    call       TDataSet.Delete
 00611A50    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611A55    mov        eax,dword ptr [eax]
 00611A57    mov        eax,dword ptr [eax+250]; Tdm.delivery:TZQuery
 00611A5D    call       0056F648
 00611A62    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611A67    mov        eax,dword ptr [eax]
 00611A69    mov        eax,dword ptr [eax+0A94]; Tdm.deliveryview:TZQuery
 00611A6F    call       TDataSet.Refresh
 00611A74    xor        eax,eax
 00611A76    pop        edx
 00611A77    pop        ecx
 00611A78    pop        ecx
 00611A79    mov        dword ptr fs:[eax],edx
 00611A7C    push       611A91
 00611A81    lea        eax,[ebp-10]
 00611A84    call       @VarClr
 00611A89    ret
<00611A8A    jmp        @HandleFinally
<00611A8F    jmp        00611A81
 00611A91    pop        ebx
 00611A92    mov        esp,ebp
 00611A94    pop        ebp
 00611A95    ret
*}
end;

end.