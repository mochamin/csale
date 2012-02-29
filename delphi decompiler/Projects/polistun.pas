{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit polistun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Menus, RpConDS, RpRave, RpSystem, Controls;

type
  Tpolistfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Panel2:TPanel;//f2FC
    Panel3:TPanel;//f300
    Label1:TLabel;//f304
    caripn:TPanel;//f308
    Label2:TLabel;//f30C
    cari:TEdit;//f310
    Panel4:TPanel;//f314
    gridpo:TDBGrid;//f318
    popop:TPopupMenu;//f31C
    LihatDetail1:TMenuItem;//f320
    rdpo_beli:TRvDataSetConnection;//f324
    rpPO:TRvProject;//f328
    RvSystem1:TRvSystem;//f32C
    rdpo_supplier:TRvDataSetConnection;//f330
    rdpo_supplierpic:TRvDataSetConnection;//f334
    rdpo_belidetail:TRvDataSetConnection;//f338
    N1:TMenuItem;//f33C
    CetakDeliveryOrderDO1:TMenuItem;//f340
    rdpo_footnote:TRvDataSetConnection;//f344
    rdpo_customer:TRvDataSetConnection;//f348
    rdpo_custpic:TRvDataSetConnection;//f34C
    imagelist:TImageList;//f350
    N2:TMenuItem;//f354
    HapusData1:TMenuItem;//f358
    procedure cariChange;
    procedure FormCreate;
    procedure FormActivate;
    procedure popopPopup;
    //procedure gridpoDrawColumnCell(?:?; ?:?; ?:?; ?:?; ?:?);
    procedure CetakDeliveryOrderDO1Click;
    procedure FormClose;
    procedure LihatDetail1Click;
    procedure HapusData1Click;
  end;

implementation

{$R *.DFM}

//005E60D8
//procedure sub_005E60D8(?:Tpolistfrm);
//begin
{*
 005E60D8    push       ebp
 005E60D9    mov        ebp,esp
 005E60DB    xor        ecx,ecx
 005E60DD    push       ecx
 005E60DE    push       ecx
 005E60DF    push       ecx
 005E60E0    push       ecx
 005E60E1    push       ecx
 005E60E2    push       ebx
 005E60E3    push       esi
 005E60E4    mov        esi,eax
 005E60E6    xor        eax,eax
 005E60E8    push       ebp
 005E60E9    push       5E6213
 005E60EE    push       dword ptr fs:[eax]
 005E60F1    mov        dword ptr fs:[eax],esp
 005E60F4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E60F9    mov        eax,dword ptr [eax]
 005E60FB    mov        ebx,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005E6101    mov        eax,ebx
 005E6103    call       TZReadOnlyQuery.GetSQL
 005E6108    mov        edx,dword ptr [eax]
 005E610A    call       dword ptr [edx+44]
 005E610D    mov        eax,ebx
 005E610F    call       TZReadOnlyQuery.GetSQL
 005E6114    mov        edx,5E6228; 'select * from beli where be_kode like (:kode) order by be_id desc '
 005E6119    mov        ecx,dword ptr [eax]
 005E611B    call       dword ptr [ecx+2C]
 005E611E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E6123    mov        eax,dword ptr [eax]
 005E6125    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E612B    mov        edx,5E6274; 'be_kode'
 005E6130    call       TDataSet.FieldByName
 005E6135    lea        edx,[ebp-10]
 005E6138    mov        ecx,dword ptr [eax]
 005E613A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E613D    lea        eax,[ebp-10]
 005E6140    push       eax
 005E6141    mov        edx,5E6284; 'kode'
 005E6146    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E614C    call       TParams.ParamByName
 005E6151    pop        edx
 005E6152    call       TParam.SetAsVariant
 005E6157    mov        eax,ebx
 005E6159    call       TDataSet.Open
 005E615E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E6163    mov        eax,dword ptr [eax]
 005E6165    mov        ebx,dword ptr [eax+0F0]; Tdm.footnote:TZQuery
 005E616B    mov        eax,ebx
 005E616D    call       TZReadOnlyQuery.GetSQL
 005E6172    mov        edx,dword ptr [eax]
 005E6174    call       dword ptr [edx+44]
 005E6177    mov        eax,ebx
 005E6179    call       TZReadOnlyQuery.GetSQL
 005E617E    mov        edx,5E6294; 'select * from foot_note where fn_supplier_id = (:sup_id) '
 005E6183    mov        ecx,dword ptr [eax]
 005E6185    call       dword ptr [ecx+2C]
 005E6188    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E618D    mov        eax,dword ptr [eax]
 005E618F    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005E6195    mov        edx,5E62D8; 'be_supplier_id'
 005E619A    call       TDataSet.FieldByName
 005E619F    lea        edx,[ebp-14]
 005E61A2    mov        ecx,dword ptr [eax]
 005E61A4    call       dword ptr [ecx+60]; TField.GetAsString
 005E61A7    mov        eax,dword ptr [ebp-14]
 005E61AA    push       eax
 005E61AB    mov        edx,5E62F0; 'sup_id'
 005E61B0    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E61B6    call       TParams.ParamByName
 005E61BB    pop        edx
 005E61BC    call       TParam.SetAsString
 005E61C1    mov        eax,ebx
 005E61C3    call       TDataSet.Open
 005E61C8    mov        eax,dword ptr [esi+328]; Tpolistfrm.rpPO:TRvProject
 005E61CE    mov        edx,5E6300; 'po_list.rav'
 005E61D3    call       TRvProject.SetProjectFile
 005E61D8    mov        eax,dword ptr [esi+328]; Tpolistfrm.rpPO:TRvProject
 005E61DE    mov        cl,1
 005E61E0    mov        edx,5E6300; 'po_list.rav'
 005E61E5    call       005D84D0
 005E61EA    mov        eax,dword ptr [esi+328]; Tpolistfrm.rpPO:TRvProject
 005E61F0    call       005D8484
 005E61F5    xor        eax,eax
 005E61F7    pop        edx
 005E61F8    pop        ecx
 005E61F9    pop        ecx
 005E61FA    mov        dword ptr fs:[eax],edx
 005E61FD    push       5E621A
 005E6202    lea        eax,[ebp-14]
 005E6205    call       @LStrClr
 005E620A    lea        eax,[ebp-10]
 005E620D    call       @VarClr
 005E6212    ret
<005E6213    jmp        @HandleFinally
<005E6218    jmp        005E6202
 005E621A    pop        esi
 005E621B    pop        ebx
 005E621C    mov        esp,ebp
 005E621E    pop        ebp
 005E621F    ret
*}
//end;

//005E630C
procedure sub_005E630C;
begin
{*
 005E630C    push       ebp
 005E630D    mov        ebp,esp
 005E630F    mov        ecx,6
 005E6314    push       0
 005E6316    push       0
 005E6318    dec        ecx
<005E6319    jne        005E6314
 005E631B    push       ebx
 005E631C    xor        eax,eax
 005E631E    push       ebp
 005E631F    push       5E640E
 005E6324    push       dword ptr fs:[eax]
 005E6327    mov        dword ptr fs:[eax],esp
 005E632A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E632F    mov        eax,dword ptr [eax]
 005E6331    mov        ebx,dword ptr [eax+220]; Tdm.orderdetail:TZQuery
 005E6337    mov        eax,ebx
 005E6339    call       TZReadOnlyQuery.GetSQL
 005E633E    mov        edx,5E6424; 'select * from belidetail where bd_kode = (:bdkd) order by bd_id DESC '
 005E6343    mov        ecx,dword ptr [eax]
 005E6345    call       dword ptr [ecx+2C]
 005E6348    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E634D    mov        eax,dword ptr [eax]
 005E634F    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6355    mov        edx,5E6474; 'be_kode'
 005E635A    call       TDataSet.FieldByName
 005E635F    lea        edx,[ebp-10]
 005E6362    mov        ecx,dword ptr [eax]
 005E6364    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6367    lea        eax,[ebp-10]
 005E636A    push       eax
 005E636B    mov        edx,5E6484; 'bdkd'
 005E6370    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E6376    call       TParams.ParamByName
 005E637B    pop        edx
 005E637C    call       TParam.SetAsVariant
 005E6381    mov        eax,ebx
 005E6383    call       TDataSet.Open
 005E6388    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E638D    mov        eax,dword ptr [eax]
 005E638F    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6395    mov        edx,5E6494; 'be_post'
 005E639A    call       TDataSet.FieldByName
 005E639F    lea        edx,[ebp-20]
 005E63A2    mov        ecx,dword ptr [eax]
 005E63A4    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E63A7    lea        eax,[ebp-20]
 005E63AA    push       eax
 005E63AB    lea        eax,[ebp-30]
 005E63AE    mov        edx,1
 005E63B3    mov        cl,1
 005E63B5    call       @VarFromInt
 005E63BA    lea        edx,[ebp-30]
 005E63BD    pop        eax
 005E63BE    call       @VarCmpEQ
>005E63C3    jne        005E63D2
 005E63C5    mov        eax,[0061C2F4]; ^gvar_0061F8F0
 005E63CA    mov        dword ptr [eax],1
>005E63D0    jmp        005E63DB
 005E63D2    mov        eax,[0061C2F4]; ^gvar_0061F8F0
 005E63D7    xor        edx,edx
 005E63D9    mov        dword ptr [eax],edx
 005E63DB    mov        eax,[0061BD08]
 005E63E0    mov        eax,dword ptr [eax]
 005E63E2    mov        edx,dword ptr ds:[5E59BC]; Tdetailorderfrm
 005E63E8    call       005D859C
 005E63ED    xor        eax,eax
 005E63EF    pop        edx
 005E63F0    pop        ecx
 005E63F1    pop        ecx
 005E63F2    mov        dword ptr fs:[eax],edx
 005E63F5    push       5E6415
 005E63FA    lea        eax,[ebp-30]
 005E63FD    mov        edx,dword ptr ds:[401114]; Variant
 005E6403    mov        ecx,3
 005E6408    call       @FinalizeArray
 005E640D    ret
<005E640E    jmp        @HandleFinally
<005E6413    jmp        005E63FA
 005E6415    pop        ebx
 005E6416    mov        esp,ebp
 005E6418    pop        ebp
 005E6419    ret
*}
end;

//005E649C
procedure Tpolistfrm.cariChange;
begin
{*
 005E649C    push       ebp
 005E649D    mov        ebp,esp
 005E649F    xor        ecx,ecx
 005E64A1    push       ecx
 005E64A2    push       ecx
 005E64A3    push       ecx
 005E64A4    push       ecx
 005E64A5    push       ecx
 005E64A6    push       ebx
 005E64A7    push       esi
 005E64A8    mov        esi,eax
 005E64AA    xor        eax,eax
 005E64AC    push       ebp
 005E64AD    push       5E653B
 005E64B2    push       dword ptr fs:[eax]
 005E64B5    mov        dword ptr fs:[eax],esp
 005E64B8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E64BD    mov        eax,dword ptr [eax]
 005E64BF    mov        ebx,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E64C5    mov        eax,ebx
 005E64C7    call       TZReadOnlyQuery.GetSQL
 005E64CC    mov        edx,5E6550; 'select * from beli WHERE be_kode LIKE (:kd) order by be_id desc  LIMIT 100 '
 005E64D1    mov        ecx,dword ptr [eax]
 005E64D3    call       dword ptr [ecx+2C]
 005E64D6    lea        edx,[ebp-14]
 005E64D9    mov        eax,dword ptr [esi+310]; Tpolistfrm.cari:TEdit
 005E64DF    call       TControl.GetText
 005E64E4    lea        eax,[ebp-14]
 005E64E7    mov        edx,5E65A4; '%'
 005E64EC    call       @LStrCat
 005E64F1    mov        edx,dword ptr [ebp-14]
 005E64F4    lea        eax,[ebp-10]
 005E64F7    call       @VarFromLStr
 005E64FC    lea        eax,[ebp-10]
 005E64FF    push       eax
 005E6500    mov        edx,5E65B0; 'kd'
 005E6505    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E650B    call       TParams.ParamByName
 005E6510    pop        edx
 005E6511    call       TParam.SetAsVariant
 005E6516    mov        eax,ebx
 005E6518    call       TDataSet.Open
 005E651D    xor        eax,eax
 005E651F    pop        edx
 005E6520    pop        ecx
 005E6521    pop        ecx
 005E6522    mov        dword ptr fs:[eax],edx
 005E6525    push       5E6542
 005E652A    lea        eax,[ebp-14]
 005E652D    call       @LStrClr
 005E6532    lea        eax,[ebp-10]
 005E6535    call       @VarClr
 005E653A    ret
<005E653B    jmp        @HandleFinally
<005E6540    jmp        005E652A
 005E6542    pop        esi
 005E6543    pop        ebx
 005E6544    mov        esp,ebp
 005E6546    pop        ebp
 005E6547    ret
*}
end;

//005E65B4
procedure Tpolistfrm.FormCreate;
begin
{*
 005E65B4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E65B9    mov        eax,dword ptr [eax]
 005E65BB    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E65C1    call       005D8634
 005E65C6    ret
*}
end;

//005E65C8
procedure Tpolistfrm.FormActivate;
begin
{*
 005E65C8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E65CD    mov        eax,dword ptr [eax]
 005E65CF    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E65D5    call       TDataSet.Refresh
 005E65DA    ret
*}
end;

//005E65DC
procedure Tpolistfrm.popopPopup;
begin
{*
 005E65DC    ret
*}
end;

//005E65E0
//procedure Tpolistfrm.gridpoDrawColumnCell(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005E65E0    push       ebp
 005E65E1    mov        ebp,esp
 005E65E3    add        esp,0FFFFFFC0
 005E65E6    push       ebx
 005E65E7    push       esi
 005E65E8    push       edi
 005E65E9    xor        ebx,ebx
 005E65EB    mov        dword ptr [ebp-30],ebx
 005E65EE    mov        dword ptr [ebp-2C],ebx
 005E65F1    mov        dword ptr [ebp-28],ebx
 005E65F4    mov        dword ptr [ebp-24],ebx
 005E65F7    mov        dword ptr [ebp-40],ebx
 005E65FA    mov        dword ptr [ebp-3C],ebx
 005E65FD    mov        dword ptr [ebp-38],ebx
 005E6600    mov        dword ptr [ebp-34],ebx
 005E6603    mov        dword ptr [ebp-8],ecx
 005E6606    mov        dword ptr [ebp-4],eax
 005E6609    xor        eax,eax
 005E660B    push       ebp
 005E660C    push       5E6762
 005E6611    push       dword ptr fs:[eax]
 005E6614    mov        dword ptr fs:[eax],esp
 005E6617    mov        eax,dword ptr [ebp-8]
 005E661A    mov        esi,eax
 005E661C    lea        edi,[ebp-20]
 005E661F    movs       dword ptr [edi],dword ptr [esi]
 005E6620    movs       dword ptr [edi],dword ptr [esi]
 005E6621    movs       dword ptr [edi],dword ptr [esi]
 005E6622    movs       dword ptr [edi],dword ptr [esi]
 005E6623    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E6628    mov        eax,dword ptr [eax]
 005E662A    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6630    mov        edx,5E677C; 'be_kode'
 005E6635    call       TDataSet.FieldByName
 005E663A    mov        ebx,eax
 005E663C    mov        eax,dword ptr [ebp+0C]
 005E663F    call       TColumn.GetField
 005E6644    cmp        ebx,eax
>005E6646    jne        005E6725
 005E664C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E6651    mov        eax,dword ptr [eax]
 005E6653    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6659    mov        edx,5E678C; 'be_post'
 005E665E    call       TDataSet.FieldByName
 005E6663    lea        edx,[ebp-30]
 005E6666    mov        ecx,dword ptr [eax]
 005E6668    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E666B    lea        eax,[ebp-30]
 005E666E    push       eax
 005E666F    lea        eax,[ebp-40]
 005E6672    mov        edx,1
 005E6677    mov        cl,1
 005E6679    call       @VarFromInt
 005E667E    lea        edx,[ebp-40]
 005E6681    pop        eax
 005E6682    call       @VarCmpEQ
>005E6687    jne        005E6690
 005E6689    mov        ebx,1
>005E668E    jmp        005E6692
 005E6690    xor        ebx,ebx
 005E6692    mov        dl,1
 005E6694    mov        eax,[0042A4BC]; TBitmap
 005E6699    call       TBitmap.Create; TBitmap.Create
 005E669E    mov        dword ptr [ebp-0C],eax
 005E66A1    xor        eax,eax
 005E66A3    push       ebp
 005E66A4    push       5E670C
 005E66A9    push       dword ptr fs:[eax]
 005E66AC    mov        dword ptr fs:[eax],esp
 005E66AF    mov        eax,dword ptr [ebp-4]
 005E66B2    mov        eax,dword ptr [eax+350]; Tpolistfrm.imagelist:TImageList
 005E66B8    mov        ecx,dword ptr [ebp-0C]
 005E66BB    mov        edx,ebx
 005E66BD    call       TCustomImageList.GetBitmap
 005E66C2    mov        eax,dword ptr [ebp-8]
 005E66C5    mov        eax,dword ptr [eax+0C]
 005E66C8    mov        edx,dword ptr [ebp-8]
 005E66CB    sub        eax,dword ptr [edx+4]
 005E66CE    mov        dword ptr [ebp-10],eax
 005E66D1    mov        eax,dword ptr [ebp-8]
 005E66D4    mov        eax,dword ptr [eax]
 005E66D6    add        eax,dword ptr [ebp-10]
 005E66D9    mov        dword ptr [ebp-18],eax
 005E66DC    lea        edx,[ebp-20]
 005E66DF    mov        eax,dword ptr [ebp-4]
 005E66E2    mov        eax,dword ptr [eax+318]; Tpolistfrm.gridpo:TDBGrid
 005E66E8    mov        eax,dword ptr [eax+208]; TDBGrid.FCanvas:TCanvas
 005E66EE    mov        ecx,dword ptr [ebp-0C]
 005E66F1    call       TCanvas.StretchDraw
 005E66F6    xor        eax,eax
 005E66F8    pop        edx
 005E66F9    pop        ecx
 005E66FA    pop        ecx
 005E66FB    mov        dword ptr fs:[eax],edx
 005E66FE    push       5E6713
 005E6703    mov        eax,dword ptr [ebp-0C]
 005E6706    call       TObject.Free
 005E670B    ret
<005E670C    jmp        @HandleFinally
<005E6711    jmp        005E6703
 005E6713    mov        eax,dword ptr [ebp-8]
 005E6716    mov        esi,eax
 005E6718    lea        edi,[ebp-20]
 005E671B    movs       dword ptr [edi],dword ptr [esi]
 005E671C    movs       dword ptr [edi],dword ptr [esi]
 005E671D    movs       dword ptr [edi],dword ptr [esi]
 005E671E    movs       dword ptr [edi],dword ptr [esi]
 005E671F    mov        eax,dword ptr [ebp-10]
 005E6722    add        dword ptr [ebp-20],eax
 005E6725    mov        eax,dword ptr [ebp+0C]
 005E6728    push       eax
 005E6729    mov        al,byte ptr [ebp+8]
 005E672C    push       eax
 005E672D    lea        edx,[ebp-20]
 005E6730    mov        eax,dword ptr [ebp-4]
 005E6733    mov        eax,dword ptr [eax+318]; Tpolistfrm.gridpo:TDBGrid
 005E6739    mov        ecx,dword ptr [ebp+10]
 005E673C    call       TCustomDBGrid.DefaultDrawColumnCell
 005E6741    xor        eax,eax
 005E6743    pop        edx
 005E6744    pop        ecx
 005E6745    pop        ecx
 005E6746    mov        dword ptr fs:[eax],edx
 005E6749    push       5E6769
 005E674E    lea        eax,[ebp-40]
 005E6751    mov        edx,dword ptr ds:[401114]; Variant
 005E6757    mov        ecx,2
 005E675C    call       @FinalizeArray
 005E6761    ret
<005E6762    jmp        @HandleFinally
<005E6767    jmp        005E674E
 005E6769    pop        edi
 005E676A    pop        esi
 005E676B    pop        ebx
 005E676C    mov        esp,ebp
 005E676E    pop        ebp
 005E676F    ret        0C
*}
//end;

//005E6794
procedure Tpolistfrm.CetakDeliveryOrderDO1Click;
begin
{*
 005E6794    mov        eax,[0061C534]
 005E6799    mov        eax,dword ptr [eax]
 005E679B    mov        edx,dword ptr ds:[5E55CC]; Tjatuhtempofrm
 005E67A1    call       005D859C
 005E67A6    ret
*}
end;

//005E67A8
procedure Tpolistfrm.FormClose;
begin
{*
 005E67A8    mov        eax,[0061B41C]; ^gvar_0061F8E4
 005E67AD    xor        edx,edx
 005E67AF    mov        dword ptr [eax],edx
 005E67B1    ret
*}
end;

//005E67B4
procedure Tpolistfrm.LihatDetail1Click;
begin
{*
 005E67B4    mov        edx,dword ptr ds:[61B41C]; ^gvar_0061F8E4
 005E67BA    cmp        dword ptr [edx],1
>005E67BD    jne        005E67C5
 005E67BF    call       005E630C
 005E67C4    ret
 005E67C5    call       005E60D8
 005E67CA    ret
*}
end;

//005E67CC
procedure Tpolistfrm.HapusData1Click;
begin
{*
 005E67CC    push       ebp
 005E67CD    mov        ebp,esp
 005E67CF    mov        ecx,0C
 005E67D4    push       0
 005E67D6    push       0
 005E67D8    dec        ecx
<005E67D9    jne        005E67D4
 005E67DB    push       ecx
 005E67DC    push       ebx
 005E67DD    push       esi
 005E67DE    push       edi
 005E67DF    mov        dword ptr [ebp-4],eax
 005E67E2    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E67E8    xor        eax,eax
 005E67EA    push       ebp
 005E67EB    push       5E6A3D
 005E67F0    push       dword ptr fs:[eax]
 005E67F3    mov        dword ptr fs:[eax],esp
 005E67F6    push       0
 005E67F8    mov        cx,word ptr ds:[5E6A4C]; 0x3
 005E67FF    mov        dl,3
 005E6801    mov        eax,5E6A58; 'Anda Yakin akan menghapus data ini?'
 005E6806    call       MessageDlg
 005E680B    cmp        eax,6
>005E680E    jne        005E6A1C
 005E6814    mov        eax,dword ptr [esi]
 005E6816    mov        eax,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005E681C    call       005D8634
 005E6821    mov        al,[005E6A7C]; 0x1
 005E6826    push       eax
 005E6827    mov        eax,dword ptr [esi]
 005E6829    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E682F    mov        edx,5E6A88; 'be_kode'
 005E6834    call       TDataSet.FieldByName
 005E6839    lea        edx,[ebp-14]
 005E683C    mov        ecx,dword ptr [eax]
 005E683E    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6841    lea        ecx,[ebp-14]
 005E6844    mov        eax,dword ptr [esi]
 005E6846    mov        eax,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005E684C    mov        edx,5E6A98; 'gl_ref'
 005E6851    mov        ebx,dword ptr [eax]
 005E6853    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005E6859    cmp        al,1
>005E685B    jne        005E68BB
 005E685D    mov        eax,dword ptr [esi]
 005E685F    mov        ebx,dword ptr [eax+740]; Tdm.gl_hapus:TZQuery
 005E6865    mov        eax,ebx
 005E6867    call       TDataSet.Open
 005E686C    mov        eax,ebx
 005E686E    call       TZReadOnlyQuery.GetSQL
 005E6873    mov        edx,5E6AA8; 'delete  from general_ledger where gl_ref = (:ref) '
 005E6878    mov        ecx,dword ptr [eax]
 005E687A    call       dword ptr [ecx+2C]
 005E687D    mov        eax,dword ptr [esi]
 005E687F    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6885    mov        edx,5E6A88; 'be_kode'
 005E688A    call       TDataSet.FieldByName
 005E688F    lea        edx,[ebp-24]
 005E6892    mov        ecx,dword ptr [eax]
 005E6894    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6897    lea        eax,[ebp-24]
 005E689A    push       eax
 005E689B    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E68A1    mov        edx,5E6AE4; 'ref'
 005E68A6    call       TParams.ParamByName
 005E68AB    pop        edx
 005E68AC    call       TParam.SetAsVariant
 005E68B1    mov        eax,ebx
 005E68B3    mov        edx,dword ptr [eax]
 005E68B5    call       dword ptr [edx+274]; TZQuery.sub_00572D6C
 005E68BB    mov        eax,dword ptr [esi]
 005E68BD    mov        ebx,dword ptr [eax+79C]; Tdm.belidetailhapus:TZQuery
 005E68C3    mov        eax,ebx
 005E68C5    call       TZReadOnlyQuery.GetSQL
 005E68CA    mov        edx,5E6AF0; 'select * from belidetail where bd_kode = (:kd) '
 005E68CF    mov        ecx,dword ptr [eax]
 005E68D1    call       dword ptr [ecx+2C]
 005E68D4    mov        eax,dword ptr [esi]
 005E68D6    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E68DC    mov        edx,5E6A88; 'be_kode'
 005E68E1    call       TDataSet.FieldByName
 005E68E6    lea        edx,[ebp-34]
 005E68E9    mov        ecx,dword ptr [eax]
 005E68EB    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E68EE    lea        eax,[ebp-34]
 005E68F1    push       eax
 005E68F2    mov        edx,5E6B28; 'kd'
 005E68F7    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E68FD    call       TParams.ParamByName
 005E6902    pop        edx
 005E6903    call       TParam.SetAsVariant
 005E6908    mov        eax,ebx
 005E690A    call       TDataSet.Open
 005E690F    mov        eax,ebx
 005E6911    call       TDataSet.Last
>005E6916    jmp        005E69F5
 005E691B    mov        eax,dword ptr [esi]
 005E691D    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6923    call       005D8634
 005E6928    mov        al,[005E6A7C]; 0x1
 005E692D    push       eax
 005E692E    mov        edx,5E6B34; 'bd_kd_barang'
 005E6933    mov        eax,ebx
 005E6935    call       TDataSet.FieldByName
 005E693A    lea        edx,[ebp-44]
 005E693D    mov        ecx,dword ptr [eax]
 005E693F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6942    lea        ecx,[ebp-44]
 005E6945    mov        eax,dword ptr [esi]
 005E6947    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E694D    mov        edx,5E6B4C; 'in_kd_barang'
 005E6952    mov        edi,dword ptr [eax]
 005E6954    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 005E695A    cmp        al,1
>005E695C    jne        005E69E6
 005E6962    mov        eax,dword ptr [esi]
 005E6964    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E696A    call       TDataSet.Edit
 005E696F    mov        eax,dword ptr [esi]
 005E6971    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E6977    mov        edx,5E6B64; 'in_stock'
 005E697C    call       TDataSet.FieldByName
 005E6981    lea        edx,[ebp-54]
 005E6984    mov        ecx,dword ptr [eax]
 005E6986    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E6989    lea        eax,[ebp-54]
 005E698C    push       eax
 005E698D    mov        edx,5E6B78; 'bd_qty'
 005E6992    mov        eax,ebx
 005E6994    call       TDataSet.FieldByName
 005E6999    lea        edx,[ebp-64]
 005E699C    mov        ecx,dword ptr [eax]
 005E699E    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E69A1    lea        edx,[ebp-64]
 005E69A4    pop        eax
 005E69A5    call       @VarSub
 005E69AA    lea        eax,[ebp-54]
 005E69AD    push       eax
 005E69AE    mov        eax,dword ptr [esi]
 005E69B0    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E69B6    mov        edx,5E6B64; 'in_stock'
 005E69BB    call       TDataSet.FieldByName
 005E69C0    pop        edx
 005E69C1    mov        ecx,dword ptr [eax]
 005E69C3    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E69C9    mov        eax,dword ptr [esi]
 005E69CB    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E69D1    mov        edx,dword ptr [eax]
 005E69D3    call       dword ptr [edx+24C]; TDataSet.Post
 005E69D9    mov        eax,dword ptr [esi]
 005E69DB    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E69E1    call       0056F648
 005E69E6    mov        eax,ebx
 005E69E8    call       TDataSet.Delete
 005E69ED    mov        eax,dword ptr [ebp-4]
 005E69F0    call       TForm.Previous
 005E69F5    cmp        byte ptr [ebx+0A0],0; TZQuery.FBOF:Boolean
<005E69FC    je         005E691B
 005E6A02    mov        eax,dword ptr [esi]
 005E6A04    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6A0A    call       TDataSet.Delete
 005E6A0F    mov        eax,dword ptr [esi]
 005E6A11    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E6A17    call       0056F648
 005E6A1C    xor        eax,eax
 005E6A1E    pop        edx
 005E6A1F    pop        ecx
 005E6A20    pop        ecx
 005E6A21    mov        dword ptr fs:[eax],edx
 005E6A24    push       5E6A44
 005E6A29    lea        eax,[ebp-64]
 005E6A2C    mov        edx,dword ptr ds:[401114]; Variant
 005E6A32    mov        ecx,6
 005E6A37    call       @FinalizeArray
 005E6A3C    ret
<005E6A3D    jmp        @HandleFinally
<005E6A42    jmp        005E6A29
 005E6A44    pop        edi
 005E6A45    pop        esi
 005E6A46    pop        ebx
 005E6A47    mov        esp,ebp
 005E6A49    pop        ebp
 005E6A4A    ret
*}
end;

end.