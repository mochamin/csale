{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit jualun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls, DBGrids, ComCtrls;

type
  Tjualfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel5:TPanel;//f300
    Panel4:TPanel;//f304
    pnheader:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    SpeedButton6:TSpeedButton;//f314
    Label4:TLabel;//f318
    SpeedButton3:TSpeedButton;//f31C
    Label5:TLabel;//f320
    SpeedButton1:TSpeedButton;//f324
    Label6:TLabel;//f328
    notrans:TDBEdit;//f32C
    lookcust:TDBLookupComboBox;//f330
    lookpic:TDBLookupComboBox;//f334
    dbtgl:TDBEdit;//f338
    Panel3:TPanel;//f33C
    btntambah:TSpeedButton;//f340
    btnsimpan:TSpeedButton;//f344
    btnbatal:TSpeedButton;//f348
    gridjual:TDBGrid;//f34C
    dbcash:TDBComboBox;//f350
    Label7:TLabel;//f354
    DBEdit1:TDBEdit;//f358
    Label8:TLabel;//f35C
    tgl:TDateTimePicker;//f360
    Label9:TLabel;//f364
    lookproj:TDBLookupComboBox;//f368
    SpeedButton2:TSpeedButton;//f36C
    Label10:TLabel;//f370
    Button1:TButton;//f374
    Label11:TLabel;//f378
    DBComboBox1:TDBComboBox;//f37C
    //procedure gridjualKeyDown(?:?; ?:?);
    procedure btntambahClick;
    procedure FormCreate;
    procedure lookcustClick;
    procedure btnsimpanClick;
    procedure tglChange;
    procedure SpeedButton1Click;
    procedure btnbatalClick;
    procedure SpeedButton2Click;
    procedure Button1Click;
  end;

implementation

{$R *.DFM}

//005E7648
//procedure sub_005E7648(?:Tjualfrm);
//begin
{*
 005E7648    push       ebp
 005E7649    mov        ebp,esp
 005E764B    mov        ecx,5
 005E7650    push       0
 005E7652    push       0
 005E7654    dec        ecx
<005E7655    jne        005E7650
 005E7657    push       ebx
 005E7658    push       esi
 005E7659    mov        esi,eax
 005E765B    xor        eax,eax
 005E765D    push       ebp
 005E765E    push       5E7769
 005E7663    push       dword ptr fs:[eax]
 005E7666    mov        dword ptr fs:[eax],esp
 005E7669    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E766E    mov        eax,dword ptr [eax]
 005E7670    mov        ebx,dword ptr [eax+0A30]; Tdm.jualref:TZQuery
 005E7676    mov        eax,ebx
 005E7678    call       TZReadOnlyQuery.GetSQL
 005E767D    mov        edx,5E7780; 'SELECT * FROM jual ORDER BY ju_id DESC LIMIT 1'
 005E7682    mov        ecx,dword ptr [eax]
 005E7684    call       dword ptr [ecx+2C]
 005E7687    mov        eax,ebx
 005E7689    call       TDataSet.Open
 005E768E    mov        edx,5E77B8; 'ju_kode'
 005E7693    mov        eax,ebx
 005E7695    call       TDataSet.FieldByName
 005E769A    lea        edx,[ebp-18]
 005E769D    mov        ecx,dword ptr [eax]
 005E769F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E76A2    lea        edx,[ebp-18]
 005E76A5    lea        eax,[ebp-8]
 005E76A8    call       @VarToLStr
 005E76AD    mov        eax,dword ptr [ebp-8]
 005E76B0    lea        ecx,[ebp-4]
 005E76B3    mov        edx,0A
 005E76B8    call       RightStr
 005E76BD    mov        eax,dword ptr [ebp-4]
 005E76C0    call       StrToInt
 005E76C5    inc        eax
 005E76C6    mov        ebx,eax
 005E76C8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E76CD    mov        eax,dword ptr [eax]
 005E76CF    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E76D5    call       TDataSet.Append
 005E76DA    lea        eax,[ebp-20]
 005E76DD    push       eax
 005E76DE    mov        dword ptr [ebp-28],ebx
 005E76E1    mov        byte ptr [ebp-24],0
 005E76E5    lea        edx,[ebp-28]
 005E76E8    xor        ecx,ecx
 005E76EA    mov        eax,5E77C8; '%10.10d'
 005E76EF    call       Format
 005E76F4    mov        ecx,dword ptr [ebp-20]
 005E76F7    lea        eax,[ebp-1C]
 005E76FA    mov        edx,5E77D8; 'JL'
 005E76FF    call       @LStrCat3
 005E7704    mov        edx,dword ptr [ebp-1C]
 005E7707    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E770D    call       TCustomMaskEdit.SetText
 005E7712    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E7717    mov        eax,dword ptr [eax]
 005E7719    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E771F    mov        edx,dword ptr [eax]
 005E7721    call       dword ptr [edx+24C]; TDataSet.Post
 005E7727    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E772C    mov        eax,dword ptr [eax]
 005E772E    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E7734    call       TDataSet.Append
 005E7739    xor        eax,eax
 005E773B    pop        edx
 005E773C    pop        ecx
 005E773D    pop        ecx
 005E773E    mov        dword ptr fs:[eax],edx
 005E7741    push       5E7770
 005E7746    lea        eax,[ebp-20]
 005E7749    mov        edx,2
 005E774E    call       @LStrArrayClr
 005E7753    lea        eax,[ebp-18]
 005E7756    call       @VarClr
 005E775B    lea        eax,[ebp-8]
 005E775E    mov        edx,2
 005E7763    call       @LStrArrayClr
 005E7768    ret
<005E7769    jmp        @HandleFinally
<005E776E    jmp        005E7746
 005E7770    pop        esi
 005E7771    pop        ebx
 005E7772    mov        esp,ebp
 005E7774    pop        ebp
 005E7775    ret
*}
//end;

//005E77DC
//procedure sub_005E77DC(?:Tjualfrm);
//begin
{*
 005E77DC    push       ebp
 005E77DD    mov        ebp,esp
 005E77DF    mov        ecx,0B
 005E77E4    push       0
 005E77E6    push       0
 005E77E8    dec        ecx
<005E77E9    jne        005E77E4
 005E77EB    push       ecx
 005E77EC    push       ebx
 005E77ED    push       esi
 005E77EE    push       edi
 005E77EF    mov        edi,eax
 005E77F1    xor        eax,eax
 005E77F3    push       ebp
 005E77F4    push       5E79B5
 005E77F9    push       dword ptr fs:[eax]
 005E77FC    mov        dword ptr fs:[eax],esp
 005E77FF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E7804    mov        eax,dword ptr [eax]
 005E7806    mov        esi,dword ptr [eax+7CC]; Tdm.fakturpajak:TZQuery
 005E780C    mov        eax,esi
 005E780E    call       TZReadOnlyQuery.GetSQL
 005E7813    mov        edx,5E79CC; 'select * from fakturpajak order by fp_id desc limit 1 '
 005E7818    mov        ecx,dword ptr [eax]
 005E781A    call       dword ptr [ecx+2C]
 005E781D    mov        eax,esi
 005E781F    call       TDataSet.Open
 005E7824    mov        edx,5E7A0C; 'fp_kode'
 005E7829    mov        eax,esi
 005E782B    call       TDataSet.FieldByName
 005E7830    lea        edx,[ebp-14]
 005E7833    mov        ecx,dword ptr [eax]
 005E7835    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7838    lea        edx,[ebp-14]
 005E783B    lea        eax,[ebp-4]
 005E783E    call       @VarToLStr
 005E7843    lea        ecx,[ebp-18]
 005E7846    mov        edx,8
 005E784B    mov        eax,dword ptr [ebp-4]
 005E784E    call       RightStr
 005E7853    mov        eax,dword ptr [ebp-18]
 005E7856    call       StrToInt
 005E785B    mov        ebx,eax
 005E785D    inc        ebx
 005E785E    push       5E7A1C; '010.000-'
 005E7863    call       Date
 005E7868    add        esp,0FFFFFFF8
 005E786B    fstp       qword ptr [esp]
 005E786E    wait
 005E786F    lea        edx,[ebp-1C]
 005E7872    mov        eax,5E7A30; 'YY'
 005E7877    call       FormatDateTime
 005E787C    push       dword ptr [ebp-1C]
 005E787F    push       5E7A3C; '.'
 005E7884    lea        eax,[ebp-20]
 005E7887    push       eax
 005E7888    mov        dword ptr [ebp-28],ebx
 005E788B    mov        byte ptr [ebp-24],0
 005E788F    lea        edx,[ebp-28]
 005E7892    xor        ecx,ecx
 005E7894    mov        eax,5E7A48; '%8.8d'
 005E7899    call       Format
 005E789E    push       dword ptr [ebp-20]
 005E78A1    mov        eax,61FA24; gvar_0061FA24:AnsiString
 005E78A6    mov        edx,4
 005E78AB    call       @LStrCatN
 005E78B0    mov        eax,esi
 005E78B2    call       TDataSet.Append
 005E78B7    mov        edx,5E7A0C; 'fp_kode'
 005E78BC    mov        eax,esi
 005E78BE    call       TDataSet.FieldByName
 005E78C3    push       eax
 005E78C4    lea        eax,[ebp-38]
 005E78C7    mov        edx,dword ptr ds:[61FA24]; gvar_0061FA24:AnsiString
 005E78CD    call       @VarFromLStr
 005E78D2    lea        edx,[ebp-38]
 005E78D5    pop        eax
 005E78D6    mov        ecx,dword ptr [eax]
 005E78D8    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E78DE    mov        edx,5E7A58; 'fp_cust_id'
 005E78E3    mov        eax,esi
 005E78E5    call       TDataSet.FieldByName
 005E78EA    mov        edx,dword ptr [edi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E78F0    add        edx,240; TDBLookupComboBox.?f240:Variant
 005E78F6    mov        ecx,dword ptr [eax]
 005E78F8    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E78FE    lea        edx,[ebp-4C]
 005E7901    mov        eax,dword ptr [edi+32C]; Tjualfrm.notrans:TDBEdit
 005E7907    call       TCustomMaskEdit.GetText
 005E790C    mov        edx,dword ptr [ebp-4C]
 005E790F    lea        eax,[ebp-48]
 005E7912    call       @VarFromLStr
 005E7917    lea        eax,[ebp-48]
 005E791A    push       eax
 005E791B    mov        edx,5E7A6C; 'fp_ref'
 005E7920    mov        eax,esi
 005E7922    call       TDataSet.FieldByName
 005E7927    pop        edx
 005E7928    mov        ecx,dword ptr [eax]
 005E792A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7930    mov        edx,5E7A7C; 'fp_date'
 005E7935    mov        eax,esi
 005E7937    call       TDataSet.FieldByName
 005E793C    push       eax
 005E793D    call       Date
 005E7942    lea        eax,[ebp-5C]
 005E7945    call       @VarFromTDateTime
 005E794A    lea        edx,[ebp-5C]
 005E794D    pop        eax
 005E794E    mov        ecx,dword ptr [eax]
 005E7950    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7956    mov        eax,esi
 005E7958    mov        edx,dword ptr [eax]
 005E795A    call       dword ptr [edx+24C]; TDataSet.Post
 005E7960    mov        eax,esi
 005E7962    call       0056F648
 005E7967    xor        eax,eax
 005E7969    pop        edx
 005E796A    pop        ecx
 005E796B    pop        ecx
 005E796C    mov        dword ptr fs:[eax],edx
 005E796F    push       5E79BC
 005E7974    lea        eax,[ebp-5C]
 005E7977    call       @VarClr
 005E797C    lea        eax,[ebp-4C]
 005E797F    call       @LStrClr
 005E7984    lea        eax,[ebp-48]
 005E7987    mov        edx,dword ptr ds:[401114]; Variant
 005E798D    mov        ecx,2
 005E7992    call       @FinalizeArray
 005E7997    lea        eax,[ebp-20]
 005E799A    mov        edx,3
 005E799F    call       @LStrArrayClr
 005E79A4    lea        eax,[ebp-14]
 005E79A7    call       @VarClr
 005E79AC    lea        eax,[ebp-4]
 005E79AF    call       @LStrClr
 005E79B4    ret
<005E79B5    jmp        @HandleFinally
<005E79BA    jmp        005E7974
 005E79BC    pop        edi
 005E79BD    pop        esi
 005E79BE    pop        ebx
 005E79BF    mov        esp,ebp
 005E79C1    pop        ebp
 005E79C2    ret
*}
//end;

//005E7A84
//procedure sub_005E7A84(?:Tjualfrm);
//begin
{*
 005E7A84    push       ebp
 005E7A85    mov        ebp,esp
 005E7A87    mov        ecx,12
 005E7A8C    push       0
 005E7A8E    push       0
 005E7A90    dec        ecx
<005E7A91    jne        005E7A8C
 005E7A93    push       ecx
 005E7A94    push       ebx
 005E7A95    push       esi
 005E7A96    push       edi
 005E7A97    mov        dword ptr [ebp-4],eax
 005E7A9A    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E7AA0    xor        eax,eax
 005E7AA2    push       ebp
 005E7AA3    push       5E7D32
 005E7AA8    push       dword ptr fs:[eax]
 005E7AAB    mov        dword ptr fs:[eax],esp
 005E7AAE    mov        eax,dword ptr [ebp-4]
 005E7AB1    call       005E77DC
 005E7AB6    mov        eax,dword ptr [esi]
 005E7AB8    mov        ebx,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E7ABE    mov        eax,ebx
 005E7AC0    call       TDataSet.First
>005E7AC5    jmp        005E7D01
 005E7ACA    mov        eax,dword ptr [esi]
 005E7ACC    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7AD2    call       TDataSet.Append
 005E7AD7    mov        eax,dword ptr [esi]
 005E7AD9    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7ADF    mov        edx,5E7D48; 'fd_kode'
 005E7AE4    call       TDataSet.FieldByName
 005E7AE9    push       eax
 005E7AEA    lea        eax,[ebp-14]
 005E7AED    mov        edx,dword ptr ds:[61FA24]; gvar_0061FA24:AnsiString
 005E7AF3    call       @VarFromLStr
 005E7AF8    lea        edx,[ebp-14]
 005E7AFB    pop        eax
 005E7AFC    mov        ecx,dword ptr [eax]
 005E7AFE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7B04    mov        edx,5E7D58; 'jd_kd_barang'
 005E7B09    mov        eax,ebx
 005E7B0B    call       TDataSet.FieldByName
 005E7B10    lea        edx,[ebp-24]
 005E7B13    mov        ecx,dword ptr [eax]
 005E7B15    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7B18    lea        eax,[ebp-24]
 005E7B1B    push       eax
 005E7B1C    mov        eax,dword ptr [esi]
 005E7B1E    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7B24    mov        edx,5E7D70; 'fd_kd_barang'
 005E7B29    call       TDataSet.FieldByName
 005E7B2E    pop        edx
 005E7B2F    mov        ecx,dword ptr [eax]
 005E7B31    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7B37    mov        edx,5E7D88; 'jd_nama_barang'
 005E7B3C    mov        eax,ebx
 005E7B3E    call       TDataSet.FieldByName
 005E7B43    lea        edx,[ebp-34]
 005E7B46    mov        ecx,dword ptr [eax]
 005E7B48    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7B4B    lea        eax,[ebp-34]
 005E7B4E    push       eax
 005E7B4F    mov        eax,dword ptr [esi]
 005E7B51    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7B57    mov        edx,5E7DA0; 'fd_nama_barang'
 005E7B5C    call       TDataSet.FieldByName
 005E7B61    pop        edx
 005E7B62    mov        ecx,dword ptr [eax]
 005E7B64    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7B6A    mov        edx,5E7DB8; 'jd_qty'
 005E7B6F    mov        eax,ebx
 005E7B71    call       TDataSet.FieldByName
 005E7B76    lea        edx,[ebp-44]
 005E7B79    mov        ecx,dword ptr [eax]
 005E7B7B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7B7E    lea        eax,[ebp-44]
 005E7B81    push       eax
 005E7B82    mov        eax,dword ptr [esi]
 005E7B84    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7B8A    mov        edx,5E7DC8; 'fd_qty'
 005E7B8F    call       TDataSet.FieldByName
 005E7B94    pop        edx
 005E7B95    mov        ecx,dword ptr [eax]
 005E7B97    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7B9D    mov        edx,5E7DD8; 'jd_harga_jual'
 005E7BA2    mov        eax,ebx
 005E7BA4    call       TDataSet.FieldByName
 005E7BA9    lea        edx,[ebp-54]
 005E7BAC    mov        ecx,dword ptr [eax]
 005E7BAE    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7BB1    lea        eax,[ebp-54]
 005E7BB4    push       eax
 005E7BB5    mov        eax,dword ptr [esi]
 005E7BB7    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7BBD    mov        edx,5E7DF0; 'fd_harga'
 005E7BC2    call       TDataSet.FieldByName
 005E7BC7    pop        edx
 005E7BC8    mov        ecx,dword ptr [eax]
 005E7BCA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7BD0    mov        edx,5E7E04; 'jd_total'
 005E7BD5    mov        eax,ebx
 005E7BD7    call       TDataSet.FieldByName
 005E7BDC    lea        edx,[ebp-64]
 005E7BDF    mov        ecx,dword ptr [eax]
 005E7BE1    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7BE4    lea        eax,[ebp-64]
 005E7BE7    push       eax
 005E7BE8    mov        eax,dword ptr [esi]
 005E7BEA    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7BF0    mov        edx,5E7E18; 'fd_row_total'
 005E7BF5    call       TDataSet.FieldByName
 005E7BFA    pop        edx
 005E7BFB    mov        ecx,dword ptr [eax]
 005E7BFD    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7C03    mov        eax,dword ptr [esi]
 005E7C05    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7C0B    mov        edx,dword ptr [eax]
 005E7C0D    call       dword ptr [edx+24C]; TDataSet.Post
 005E7C13    mov        eax,dword ptr [esi]
 005E7C15    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E7C1B    call       0056F648
 005E7C20    mov        eax,dword ptr [esi]
 005E7C22    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7C28    call       005D8634
 005E7C2D    mov        al,[005E7E28]; 0x1
 005E7C32    push       eax
 005E7C33    mov        edx,5E7D58; 'jd_kd_barang'
 005E7C38    mov        eax,ebx
 005E7C3A    call       TDataSet.FieldByName
 005E7C3F    lea        edx,[ebp-74]
 005E7C42    mov        ecx,dword ptr [eax]
 005E7C44    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7C47    lea        ecx,[ebp-74]
 005E7C4A    mov        eax,dword ptr [esi]
 005E7C4C    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7C52    mov        edx,5E7E34; 'in_kd_barang'
 005E7C57    mov        edi,dword ptr [eax]
 005E7C59    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 005E7C5F    cmp        al,1
>005E7C61    jne        005E7CFA
 005E7C67    mov        eax,dword ptr [esi]
 005E7C69    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7C6F    call       TDataSet.Edit
 005E7C74    mov        eax,dword ptr [esi]
 005E7C76    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7C7C    mov        edx,5E7E4C; 'in_stock'
 005E7C81    call       TDataSet.FieldByName
 005E7C86    lea        edx,[ebp-84]
 005E7C8C    mov        ecx,dword ptr [eax]
 005E7C8E    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7C91    lea        eax,[ebp-84]
 005E7C97    push       eax
 005E7C98    mov        edx,5E7DB8; 'jd_qty'
 005E7C9D    mov        eax,ebx
 005E7C9F    call       TDataSet.FieldByName
 005E7CA4    lea        edx,[ebp-94]
 005E7CAA    mov        ecx,dword ptr [eax]
 005E7CAC    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7CAF    lea        edx,[ebp-94]
 005E7CB5    pop        eax
 005E7CB6    call       @VarSub
 005E7CBB    lea        eax,[ebp-84]
 005E7CC1    push       eax
 005E7CC2    mov        eax,dword ptr [esi]
 005E7CC4    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7CCA    mov        edx,5E7E4C; 'in_stock'
 005E7CCF    call       TDataSet.FieldByName
 005E7CD4    pop        edx
 005E7CD5    mov        ecx,dword ptr [eax]
 005E7CD7    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7CDD    mov        eax,dword ptr [esi]
 005E7CDF    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7CE5    mov        edx,dword ptr [eax]
 005E7CE7    call       dword ptr [edx+24C]; TDataSet.Post
 005E7CED    mov        eax,dword ptr [esi]
 005E7CEF    mov        eax,dword ptr [eax+0A64]; Tdm.inventoryref:TZQuery
 005E7CF5    call       0056F648
 005E7CFA    mov        eax,ebx
 005E7CFC    call       TDataSet.Next
 005E7D01    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<005E7D08    je         005E7ACA
 005E7D0E    xor        eax,eax
 005E7D10    pop        edx
 005E7D11    pop        ecx
 005E7D12    pop        ecx
 005E7D13    mov        dword ptr fs:[eax],edx
 005E7D16    push       5E7D39
 005E7D1B    lea        eax,[ebp-94]
 005E7D21    mov        edx,dword ptr ds:[401114]; Variant
 005E7D27    mov        ecx,9
 005E7D2C    call       @FinalizeArray
 005E7D31    ret
<005E7D32    jmp        @HandleFinally
<005E7D37    jmp        005E7D1B
 005E7D39    pop        edi
 005E7D3A    pop        esi
 005E7D3B    pop        ebx
 005E7D3C    mov        esp,ebp
 005E7D3E    pop        ebp
 005E7D3F    ret
*}
//end;

//005E7E58
//procedure sub_005E7E58(?:Tjualfrm);
//begin
{*
 005E7E58    push       ebp
 005E7E59    mov        ebp,esp
 005E7E5B    mov        ecx,56
 005E7E60    push       0
 005E7E62    push       0
 005E7E64    dec        ecx
<005E7E65    jne        005E7E60
 005E7E67    push       ecx
 005E7E68    push       ebx
 005E7E69    push       esi
 005E7E6A    push       edi
 005E7E6B    mov        esi,eax
 005E7E6D    mov        edi,61FA04; gvar_0061FA04:?Double
 005E7E72    xor        eax,eax
 005E7E74    push       ebp
 005E7E75    push       5E889D
 005E7E7A    push       dword ptr fs:[eax]
 005E7E7D    mov        dword ptr fs:[eax],esp
 005E7E80    xor        eax,eax
 005E7E82    mov        dword ptr [edi],eax
 005E7E84    mov        dword ptr [edi+4],eax
 005E7E87    xor        eax,eax
 005E7E89    mov        dword ptr ds:[61FA1C],eax; gvar_0061FA1C
 005E7E8F    mov        dword ptr ds:[61FA20],eax; gvar_0061FA20
 005E7E95    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E7E9A    mov        eax,dword ptr [eax]
 005E7E9C    mov        ebx,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E7EA2    mov        eax,ebx
 005E7EA4    call       TDataSet.First
>005E7EA9    jmp        005E7F26
 005E7EAB    fld        qword ptr [edi]
 005E7EAD    lea        eax,[ebp-10]
 005E7EB0    call       @VarFromReal
 005E7EB5    lea        eax,[ebp-10]
 005E7EB8    push       eax
 005E7EB9    mov        edx,5E88B8; 'jd_total'
 005E7EBE    mov        eax,ebx
 005E7EC0    call       TDataSet.FieldByName
 005E7EC5    lea        edx,[ebp-20]
 005E7EC8    mov        ecx,dword ptr [eax]
 005E7ECA    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7ECD    lea        edx,[ebp-20]
 005E7ED0    pop        eax
 005E7ED1    call       @VarAdd
 005E7ED6    lea        eax,[ebp-10]
 005E7ED9    call       @VarToReal
 005E7EDE    fstp       qword ptr [edi]
 005E7EE0    wait
 005E7EE1    fld        qword ptr ds:[61FA0C]
 005E7EE7    lea        eax,[ebp-30]
 005E7EEA    call       @VarFromReal
 005E7EEF    lea        eax,[ebp-30]
 005E7EF2    push       eax
 005E7EF3    mov        edx,5E88CC; 'jd_harga_pokok'
 005E7EF8    mov        eax,ebx
 005E7EFA    call       TDataSet.FieldByName
 005E7EFF    lea        edx,[ebp-40]
 005E7F02    mov        ecx,dword ptr [eax]
 005E7F04    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E7F07    lea        edx,[ebp-40]
 005E7F0A    pop        eax
 005E7F0B    call       @VarAdd
 005E7F10    lea        eax,[ebp-30]
 005E7F13    call       @VarToReal
 005E7F18    fstp       qword ptr ds:[61FA0C]
 005E7F1E    wait
 005E7F1F    mov        eax,ebx
 005E7F21    call       TDataSet.Next
 005E7F26    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<005E7F2D    je         005E7EAB
 005E7F33    fld        qword ptr [edi]
 005E7F35    fmul       dword ptr ds:[5E88DC]; 10:Single
 005E7F3B    fdiv       dword ptr ds:[5E88E0]; 100:Single
 005E7F41    fstp       qword ptr ds:[61FA1C]; gvar_0061FA1C
 005E7F47    wait
 005E7F48    fld        qword ptr [edi]
 005E7F4A    fadd       qword ptr ds:[61FA1C]; gvar_0061FA1C
 005E7F50    fstp       qword ptr ds:[61FA14]
 005E7F56    wait
 005E7F57    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E7F5C    mov        eax,dword ptr [eax]
 005E7F5E    mov        ebx,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 005E7F64    mov        eax,ebx
 005E7F66    call       TDataSet.Open
 005E7F6B    mov        eax,dword ptr [esi+350]; Tjualfrm.dbcash:TDBComboBox
 005E7F71    mov        edx,dword ptr [eax]
 005E7F73    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005E7F79    test       eax,eax
>005E7F7B    jne        005E80B8
 005E7F81    mov        eax,ebx
 005E7F83    call       TDataSet.Append
 005E7F88    mov        edx,5E88EC; 'gl_amount'
 005E7F8D    mov        eax,ebx
 005E7F8F    call       TDataSet.FieldByName
 005E7F94    push       eax
 005E7F95    fld        qword ptr ds:[61FA14]
 005E7F9B    lea        eax,[ebp-50]
 005E7F9E    call       @VarFromReal
 005E7FA3    lea        edx,[ebp-50]
 005E7FA6    pop        eax
 005E7FA7    mov        ecx,dword ptr [eax]
 005E7FA9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7FAF    mov        edx,5E8900; 'gl_debet'
 005E7FB4    mov        eax,ebx
 005E7FB6    call       TDataSet.FieldByName
 005E7FBB    push       eax
 005E7FBC    fld        qword ptr ds:[61FA14]
 005E7FC2    lea        eax,[ebp-60]
 005E7FC5    call       @VarFromReal
 005E7FCA    lea        edx,[ebp-60]
 005E7FCD    pop        eax
 005E7FCE    mov        ecx,dword ptr [eax]
 005E7FD0    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7FD6    mov        edx,5E8914; 'gl_akun'
 005E7FDB    mov        eax,ebx
 005E7FDD    call       TDataSet.FieldByName
 005E7FE2    push       eax
 005E7FE3    lea        eax,[ebp-70]
 005E7FE6    mov        edx,5E8924; '110-20'
 005E7FEB    call       @VarFromLStr
 005E7FF0    lea        edx,[ebp-70]
 005E7FF3    pop        eax
 005E7FF4    mov        ecx,dword ptr [eax]
 005E7FF6    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E7FFC    mov        edx,5E8934; 'gl_tgl'
 005E8001    mov        eax,ebx
 005E8003    call       TDataSet.FieldByName
 005E8008    push       eax
 005E8009    call       Date
 005E800E    lea        eax,[ebp-80]
 005E8011    call       @VarFromTDateTime
 005E8016    lea        edx,[ebp-80]
 005E8019    pop        eax
 005E801A    mov        ecx,dword ptr [eax]
 005E801C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8022    lea        edx,[ebp-94]
 005E8028    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E802E    call       TCustomMaskEdit.GetText
 005E8033    mov        edx,dword ptr [ebp-94]
 005E8039    lea        eax,[ebp-90]
 005E803F    call       @VarFromLStr
 005E8044    lea        eax,[ebp-90]
 005E804A    push       eax
 005E804B    mov        edx,5E8944; 'gl_ref'
 005E8050    mov        eax,ebx
 005E8052    call       TDataSet.FieldByName
 005E8057    pop        edx
 005E8058    mov        ecx,dword ptr [eax]
 005E805A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8060    mov        edx,5E8954; 'gl_desc'
 005E8065    mov        eax,ebx
 005E8067    call       TDataSet.FieldByName
 005E806C    push       eax
 005E806D    mov        eax,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E8073    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005E8079    lea        eax,[ebp-0A8]
 005E807F    mov        edx,5E8964; 'Penjualan,'
 005E8084    call       @LStrCat3
 005E8089    mov        edx,dword ptr [ebp-0A8]
 005E808F    lea        eax,[ebp-0A4]
 005E8095    call       @VarFromLStr
 005E809A    lea        edx,[ebp-0A4]
 005E80A0    pop        eax
 005E80A1    mov        ecx,dword ptr [eax]
 005E80A3    call       dword ptr [ecx+0B4]
 005E80A9    mov        eax,ebx
 005E80AB    mov        edx,dword ptr [eax]
 005E80AD    call       dword ptr [edx+24C]; TDataSet.Post
>005E80B3    jmp        005E8202
 005E80B8    mov        eax,ebx
 005E80BA    call       TDataSet.Append
 005E80BF    mov        edx,5E88EC; 'gl_amount'
 005E80C4    mov        eax,ebx
 005E80C6    call       TDataSet.FieldByName
 005E80CB    push       eax
 005E80CC    fld        qword ptr ds:[61FA14]
 005E80D2    lea        eax,[ebp-0B8]
 005E80D8    call       @VarFromReal
 005E80DD    lea        edx,[ebp-0B8]
 005E80E3    pop        eax
 005E80E4    mov        ecx,dword ptr [eax]
 005E80E6    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E80EC    mov        edx,5E8900; 'gl_debet'
 005E80F1    mov        eax,ebx
 005E80F3    call       TDataSet.FieldByName
 005E80F8    push       eax
 005E80F9    fld        qword ptr ds:[61FA14]
 005E80FF    lea        eax,[ebp-0C8]
 005E8105    call       @VarFromReal
 005E810A    lea        edx,[ebp-0C8]
 005E8110    pop        eax
 005E8111    mov        ecx,dword ptr [eax]
 005E8113    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8119    mov        edx,5E8914; 'gl_akun'
 005E811E    mov        eax,ebx
 005E8120    call       TDataSet.FieldByName
 005E8125    push       eax
 005E8126    lea        eax,[ebp-0D8]
 005E812C    mov        edx,5E8978; '130-20'
 005E8131    call       @VarFromLStr
 005E8136    lea        edx,[ebp-0D8]
 005E813C    pop        eax
 005E813D    mov        ecx,dword ptr [eax]
 005E813F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8145    mov        edx,5E8934; 'gl_tgl'
 005E814A    mov        eax,ebx
 005E814C    call       TDataSet.FieldByName
 005E8151    push       eax
 005E8152    call       Date
 005E8157    lea        eax,[ebp-0E8]
 005E815D    call       @VarFromTDateTime
 005E8162    lea        edx,[ebp-0E8]
 005E8168    pop        eax
 005E8169    mov        ecx,dword ptr [eax]
 005E816B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8171    lea        edx,[ebp-0FC]
 005E8177    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E817D    call       TCustomMaskEdit.GetText
 005E8182    mov        edx,dword ptr [ebp-0FC]
 005E8188    lea        eax,[ebp-0F8]
 005E818E    call       @VarFromLStr
 005E8193    lea        eax,[ebp-0F8]
 005E8199    push       eax
 005E819A    mov        edx,5E8944; 'gl_ref'
 005E819F    mov        eax,ebx
 005E81A1    call       TDataSet.FieldByName
 005E81A6    pop        edx
 005E81A7    mov        ecx,dword ptr [eax]
 005E81A9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E81AF    mov        edx,5E8954; 'gl_desc'
 005E81B4    mov        eax,ebx
 005E81B6    call       TDataSet.FieldByName
 005E81BB    push       eax
 005E81BC    mov        eax,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E81C2    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005E81C8    lea        eax,[ebp-110]
 005E81CE    mov        edx,5E8964; 'Penjualan,'
 005E81D3    call       @LStrCat3
 005E81D8    mov        edx,dword ptr [ebp-110]
 005E81DE    lea        eax,[ebp-10C]
 005E81E4    call       @VarFromLStr
 005E81E9    lea        edx,[ebp-10C]
 005E81EF    pop        eax
 005E81F0    mov        ecx,dword ptr [eax]
 005E81F2    call       dword ptr [ecx+0B4]
 005E81F8    mov        eax,ebx
 005E81FA    mov        edx,dword ptr [eax]
 005E81FC    call       dword ptr [edx+24C]; TDataSet.Post
 005E8202    mov        eax,ebx
 005E8204    call       TDataSet.Append
 005E8209    mov        edx,5E88EC; 'gl_amount'
 005E820E    mov        eax,ebx
 005E8210    call       TDataSet.FieldByName
 005E8215    push       eax
 005E8216    fld        qword ptr ds:[61FA0C]
 005E821C    fmul       dword ptr ds:[5E8980]; -1:Single
 005E8222    lea        eax,[ebp-120]
 005E8228    call       @VarFromReal
 005E822D    lea        edx,[ebp-120]
 005E8233    pop        eax
 005E8234    mov        ecx,dword ptr [eax]
 005E8236    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E823C    mov        edx,5E898C; 'gl_kredit'
 005E8241    mov        eax,ebx
 005E8243    call       TDataSet.FieldByName
 005E8248    push       eax
 005E8249    fld        qword ptr ds:[61FA0C]
 005E824F    lea        eax,[ebp-130]
 005E8255    call       @VarFromReal
 005E825A    lea        edx,[ebp-130]
 005E8260    pop        eax
 005E8261    mov        ecx,dword ptr [eax]
 005E8263    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8269    mov        edx,5E8914; 'gl_akun'
 005E826E    mov        eax,ebx
 005E8270    call       TDataSet.FieldByName
 005E8275    push       eax
 005E8276    lea        eax,[ebp-140]
 005E827C    mov        edx,5E89A0; '140-10'
 005E8281    call       @VarFromLStr
 005E8286    lea        edx,[ebp-140]
 005E828C    pop        eax
 005E828D    mov        ecx,dword ptr [eax]
 005E828F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8295    mov        edx,5E8934; 'gl_tgl'
 005E829A    mov        eax,ebx
 005E829C    call       TDataSet.FieldByName
 005E82A1    push       eax
 005E82A2    call       Date
 005E82A7    lea        eax,[ebp-150]
 005E82AD    call       @VarFromTDateTime
 005E82B2    lea        edx,[ebp-150]
 005E82B8    pop        eax
 005E82B9    mov        ecx,dword ptr [eax]
 005E82BB    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E82C1    lea        edx,[ebp-164]
 005E82C7    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E82CD    call       TCustomMaskEdit.GetText
 005E82D2    mov        edx,dword ptr [ebp-164]
 005E82D8    lea        eax,[ebp-160]
 005E82DE    call       @VarFromLStr
 005E82E3    lea        eax,[ebp-160]
 005E82E9    push       eax
 005E82EA    mov        edx,5E8944; 'gl_ref'
 005E82EF    mov        eax,ebx
 005E82F1    call       TDataSet.FieldByName
 005E82F6    pop        edx
 005E82F7    mov        ecx,dword ptr [eax]
 005E82F9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E82FF    lea        edx,[ebp-17C]
 005E8305    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E830B    call       TCustomMaskEdit.GetText
 005E8310    mov        ecx,dword ptr [ebp-17C]
 005E8316    lea        eax,[ebp-178]
 005E831C    mov        edx,5E89B0; 'Penyesuaian Persediaan pada '
 005E8321    call       @LStrCat3
 005E8326    mov        edx,dword ptr [ebp-178]
 005E832C    lea        eax,[ebp-174]
 005E8332    call       @VarFromLStr
 005E8337    lea        eax,[ebp-174]
 005E833D    push       eax
 005E833E    mov        edx,5E8954; 'gl_desc'
 005E8343    mov        eax,ebx
 005E8345    call       TDataSet.FieldByName
 005E834A    pop        edx
 005E834B    mov        ecx,dword ptr [eax]
 005E834D    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8353    mov        eax,ebx
 005E8355    mov        edx,dword ptr [eax]
 005E8357    call       dword ptr [edx+24C]; TDataSet.Post
 005E835D    mov        eax,ebx
 005E835F    call       TDataSet.Append
 005E8364    mov        edx,5E88EC; 'gl_amount'
 005E8369    mov        eax,ebx
 005E836B    call       TDataSet.FieldByName
 005E8370    push       eax
 005E8371    fld        qword ptr ds:[61FA1C]; gvar_0061FA1C
 005E8377    lea        eax,[ebp-18C]
 005E837D    call       @VarFromReal
 005E8382    lea        edx,[ebp-18C]
 005E8388    pop        eax
 005E8389    mov        ecx,dword ptr [eax]
 005E838B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8391    mov        edx,5E898C; 'gl_kredit'
 005E8396    mov        eax,ebx
 005E8398    call       TDataSet.FieldByName
 005E839D    push       eax
 005E839E    fld        qword ptr ds:[61FA1C]; gvar_0061FA1C
 005E83A4    lea        eax,[ebp-19C]
 005E83AA    call       @VarFromReal
 005E83AF    lea        edx,[ebp-19C]
 005E83B5    pop        eax
 005E83B6    mov        ecx,dword ptr [eax]
 005E83B8    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E83BE    mov        edx,5E8914; 'gl_akun'
 005E83C3    mov        eax,ebx
 005E83C5    call       TDataSet.FieldByName
 005E83CA    push       eax
 005E83CB    lea        eax,[ebp-1AC]
 005E83D1    mov        edx,5E89D8; '210-80'
 005E83D6    call       @VarFromLStr
 005E83DB    lea        edx,[ebp-1AC]
 005E83E1    pop        eax
 005E83E2    mov        ecx,dword ptr [eax]
 005E83E4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E83EA    mov        edx,5E8934; 'gl_tgl'
 005E83EF    mov        eax,ebx
 005E83F1    call       TDataSet.FieldByName
 005E83F6    push       eax
 005E83F7    call       Date
 005E83FC    lea        eax,[ebp-1BC]
 005E8402    call       @VarFromTDateTime
 005E8407    lea        edx,[ebp-1BC]
 005E840D    pop        eax
 005E840E    mov        ecx,dword ptr [eax]
 005E8410    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8416    lea        edx,[ebp-1D0]
 005E841C    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E8422    call       TCustomMaskEdit.GetText
 005E8427    mov        edx,dword ptr [ebp-1D0]
 005E842D    lea        eax,[ebp-1CC]
 005E8433    call       @VarFromLStr
 005E8438    lea        eax,[ebp-1CC]
 005E843E    push       eax
 005E843F    mov        edx,5E8944; 'gl_ref'
 005E8444    mov        eax,ebx
 005E8446    call       TDataSet.FieldByName
 005E844B    pop        edx
 005E844C    mov        ecx,dword ptr [eax]
 005E844E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8454    mov        edx,5E8954; 'gl_desc'
 005E8459    mov        eax,ebx
 005E845B    call       TDataSet.FieldByName
 005E8460    push       eax
 005E8461    mov        eax,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E8467    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005E846D    lea        eax,[ebp-1E4]
 005E8473    mov        edx,5E8964; 'Penjualan,'
 005E8478    call       @LStrCat3
 005E847D    mov        edx,dword ptr [ebp-1E4]
 005E8483    lea        eax,[ebp-1E0]
 005E8489    call       @VarFromLStr
 005E848E    lea        edx,[ebp-1E0]
 005E8494    pop        eax
 005E8495    mov        ecx,dword ptr [eax]
 005E8497    call       dword ptr [ecx+0B4]
 005E849D    mov        eax,ebx
 005E849F    mov        edx,dword ptr [eax]
 005E84A1    call       dword ptr [edx+24C]; TDataSet.Post
 005E84A7    mov        eax,ebx
 005E84A9    call       TDataSet.Append
 005E84AE    mov        edx,5E88EC; 'gl_amount'
 005E84B3    mov        eax,ebx
 005E84B5    call       TDataSet.FieldByName
 005E84BA    push       eax
 005E84BB    fld        qword ptr [edi]
 005E84BD    lea        eax,[ebp-1F4]
 005E84C3    call       @VarFromReal
 005E84C8    lea        edx,[ebp-1F4]
 005E84CE    pop        eax
 005E84CF    mov        ecx,dword ptr [eax]
 005E84D1    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E84D7    mov        edx,5E898C; 'gl_kredit'
 005E84DC    mov        eax,ebx
 005E84DE    call       TDataSet.FieldByName
 005E84E3    push       eax
 005E84E4    fld        qword ptr [edi]
 005E84E6    lea        eax,[ebp-204]
 005E84EC    call       @VarFromReal
 005E84F1    lea        edx,[ebp-204]
 005E84F7    pop        eax
 005E84F8    mov        ecx,dword ptr [eax]
 005E84FA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8500    mov        edx,5E8914; 'gl_akun'
 005E8505    mov        eax,ebx
 005E8507    call       TDataSet.FieldByName
 005E850C    push       eax
 005E850D    lea        eax,[ebp-214]
 005E8513    mov        edx,5E89E8; '410-10'
 005E8518    call       @VarFromLStr
 005E851D    lea        edx,[ebp-214]
 005E8523    pop        eax
 005E8524    mov        ecx,dword ptr [eax]
 005E8526    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E852C    mov        edx,5E8934; 'gl_tgl'
 005E8531    mov        eax,ebx
 005E8533    call       TDataSet.FieldByName
 005E8538    push       eax
 005E8539    call       Date
 005E853E    lea        eax,[ebp-224]
 005E8544    call       @VarFromTDateTime
 005E8549    lea        edx,[ebp-224]
 005E854F    pop        eax
 005E8550    mov        ecx,dword ptr [eax]
 005E8552    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8558    lea        edx,[ebp-238]
 005E855E    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E8564    call       TCustomMaskEdit.GetText
 005E8569    mov        edx,dword ptr [ebp-238]
 005E856F    lea        eax,[ebp-234]
 005E8575    call       @VarFromLStr
 005E857A    lea        eax,[ebp-234]
 005E8580    push       eax
 005E8581    mov        edx,5E8944; 'gl_ref'
 005E8586    mov        eax,ebx
 005E8588    call       TDataSet.FieldByName
 005E858D    pop        edx
 005E858E    mov        ecx,dword ptr [eax]
 005E8590    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8596    mov        edx,5E8954; 'gl_desc'
 005E859B    mov        eax,ebx
 005E859D    call       TDataSet.FieldByName
 005E85A2    push       eax
 005E85A3    mov        eax,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E85A9    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005E85AF    lea        eax,[ebp-24C]
 005E85B5    mov        edx,5E8964; 'Penjualan,'
 005E85BA    call       @LStrCat3
 005E85BF    mov        edx,dword ptr [ebp-24C]
 005E85C5    lea        eax,[ebp-248]
 005E85CB    call       @VarFromLStr
 005E85D0    lea        edx,[ebp-248]
 005E85D6    pop        eax
 005E85D7    mov        ecx,dword ptr [eax]
 005E85D9    call       dword ptr [ecx+0B4]
 005E85DF    mov        eax,ebx
 005E85E1    mov        edx,dword ptr [eax]
 005E85E3    call       dword ptr [edx+24C]; TDataSet.Post
 005E85E9    mov        eax,ebx
 005E85EB    call       TDataSet.Append
 005E85F0    mov        edx,5E88EC; 'gl_amount'
 005E85F5    mov        eax,ebx
 005E85F7    call       TDataSet.FieldByName
 005E85FC    push       eax
 005E85FD    fld        qword ptr ds:[61FA0C]
 005E8603    lea        eax,[ebp-25C]
 005E8609    call       @VarFromReal
 005E860E    lea        edx,[ebp-25C]
 005E8614    pop        eax
 005E8615    mov        ecx,dword ptr [eax]
 005E8617    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E861D    mov        edx,5E8900; 'gl_debet'
 005E8622    mov        eax,ebx
 005E8624    call       TDataSet.FieldByName
 005E8629    push       eax
 005E862A    fld        qword ptr ds:[61FA0C]
 005E8630    lea        eax,[ebp-26C]
 005E8636    call       @VarFromReal
 005E863B    lea        edx,[ebp-26C]
 005E8641    pop        eax
 005E8642    mov        ecx,dword ptr [eax]
 005E8644    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E864A    mov        edx,5E8914; 'gl_akun'
 005E864F    mov        eax,ebx
 005E8651    call       TDataSet.FieldByName
 005E8656    push       eax
 005E8657    lea        eax,[ebp-27C]
 005E865D    mov        edx,5E89F8; '510-10'
 005E8662    call       @VarFromLStr
 005E8667    lea        edx,[ebp-27C]
 005E866D    pop        eax
 005E866E    mov        ecx,dword ptr [eax]
 005E8670    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8676    mov        edx,5E8934; 'gl_tgl'
 005E867B    mov        eax,ebx
 005E867D    call       TDataSet.FieldByName
 005E8682    push       eax
 005E8683    call       Date
 005E8688    lea        eax,[ebp-28C]
 005E868E    call       @VarFromTDateTime
 005E8693    lea        edx,[ebp-28C]
 005E8699    pop        eax
 005E869A    mov        ecx,dword ptr [eax]
 005E869C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E86A2    lea        edx,[ebp-2A0]
 005E86A8    mov        eax,dword ptr [esi+32C]; Tjualfrm.notrans:TDBEdit
 005E86AE    call       TCustomMaskEdit.GetText
 005E86B3    mov        edx,dword ptr [ebp-2A0]
 005E86B9    lea        eax,[ebp-29C]
 005E86BF    call       @VarFromLStr
 005E86C4    lea        eax,[ebp-29C]
 005E86CA    push       eax
 005E86CB    mov        edx,5E8944; 'gl_ref'
 005E86D0    mov        eax,ebx
 005E86D2    call       TDataSet.FieldByName
 005E86D7    pop        edx
 005E86D8    mov        ecx,dword ptr [eax]
 005E86DA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E86E0    mov        edx,5E8954; 'gl_desc'
 005E86E5    mov        eax,ebx
 005E86E7    call       TDataSet.FieldByName
 005E86EC    push       eax
 005E86ED    mov        eax,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E86F3    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005E86F9    lea        eax,[ebp-2B4]
 005E86FF    mov        edx,5E8964; 'Penjualan,'
 005E8704    call       @LStrCat3
 005E8709    mov        edx,dword ptr [ebp-2B4]
 005E870F    lea        eax,[ebp-2B0]
 005E8715    call       @VarFromLStr
 005E871A    lea        edx,[ebp-2B0]
 005E8720    pop        eax
 005E8721    mov        ecx,dword ptr [eax]
 005E8723    call       dword ptr [ecx+0B4]
 005E8729    mov        eax,ebx
 005E872B    mov        edx,dword ptr [eax]
 005E872D    call       dword ptr [edx+24C]; TDataSet.Post
 005E8733    mov        eax,ebx
 005E8735    call       0056F648
 005E873A    xor        eax,eax
 005E873C    pop        edx
 005E873D    pop        ecx
 005E873E    pop        ecx
 005E873F    mov        dword ptr fs:[eax],edx
 005E8742    push       5E88A7
 005E8747    lea        eax,[ebp-2B4]
 005E874D    call       @LStrClr
 005E8752    lea        eax,[ebp-2B0]
 005E8758    call       @VarClr
 005E875D    lea        eax,[ebp-2A0]
 005E8763    call       @LStrClr
 005E8768    lea        eax,[ebp-29C]
 005E876E    mov        edx,dword ptr ds:[401114]; Variant
 005E8774    mov        ecx,5
 005E8779    call       @FinalizeArray
 005E877E    lea        eax,[ebp-24C]
 005E8784    call       @LStrClr
 005E8789    lea        eax,[ebp-248]
 005E878F    call       @VarClr
 005E8794    lea        eax,[ebp-238]
 005E879A    call       @LStrClr
 005E879F    lea        eax,[ebp-234]
 005E87A5    mov        edx,dword ptr ds:[401114]; Variant
 005E87AB    mov        ecx,5
 005E87B0    call       @FinalizeArray
 005E87B5    lea        eax,[ebp-1E4]
 005E87BB    call       @LStrClr
 005E87C0    lea        eax,[ebp-1E0]
 005E87C6    call       @VarClr
 005E87CB    lea        eax,[ebp-1D0]
 005E87D1    call       @LStrClr
 005E87D6    lea        eax,[ebp-1CC]
 005E87DC    mov        edx,dword ptr ds:[401114]; Variant
 005E87E2    mov        ecx,5
 005E87E7    call       @FinalizeArray
 005E87EC    lea        eax,[ebp-17C]
 005E87F2    call       @LStrClr
 005E87F7    lea        eax,[ebp-178]
 005E87FD    call       @LStrClr
 005E8802    lea        eax,[ebp-174]
 005E8808    call       @VarClr
 005E880D    lea        eax,[ebp-164]
 005E8813    call       @LStrClr
 005E8818    lea        eax,[ebp-160]
 005E881E    mov        edx,dword ptr ds:[401114]; Variant
 005E8824    mov        ecx,5
 005E8829    call       @FinalizeArray
 005E882E    lea        eax,[ebp-110]
 005E8834    call       @LStrClr
 005E8839    lea        eax,[ebp-10C]
 005E883F    call       @VarClr
 005E8844    lea        eax,[ebp-0FC]
 005E884A    call       @LStrClr
 005E884F    lea        eax,[ebp-0F8]
 005E8855    mov        edx,dword ptr ds:[401114]; Variant
 005E885B    mov        ecx,5
 005E8860    call       @FinalizeArray
 005E8865    lea        eax,[ebp-0A8]
 005E886B    call       @LStrClr
 005E8870    lea        eax,[ebp-0A4]
 005E8876    call       @VarClr
 005E887B    lea        eax,[ebp-94]
 005E8881    call       @LStrClr
 005E8886    lea        eax,[ebp-90]
 005E888C    mov        edx,dword ptr ds:[401114]; Variant
 005E8892    mov        ecx,9
 005E8897    call       @FinalizeArray
 005E889C    ret
<005E889D    jmp        @HandleFinally
<005E88A2    jmp        005E8747
 005E88A7    pop        edi
 005E88A8    pop        esi
 005E88A9    pop        ebx
 005E88AA    mov        esp,ebp
 005E88AC    pop        ebp
 005E88AD    ret
*}
//end;

//005E8A00
//procedure Tjualfrm.gridjualKeyDown(?:?; ?:?);
//begin
{*
 005E8A00    push       ebp
 005E8A01    mov        ebp,esp
 005E8A03    push       ebx
 005E8A04    mov        ebx,ecx
 005E8A06    cmp        word ptr [ebx],0D
>005E8A0A    jne        005E8A1E
 005E8A0C    mov        eax,[0061B028]
 005E8A11    mov        eax,dword ptr [eax]
 005E8A13    mov        edx,dword ptr ds:[5E6BB8]; Tinventoryviewfrm
 005E8A19    call       005D859C
 005E8A1E    cmp        word ptr [ebx],2E
>005E8A22    jne        005E8A36
 005E8A24    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8A29    mov        eax,dword ptr [eax]
 005E8A2B    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8A31    call       005D85D0
 005E8A36    pop        ebx
 005E8A37    pop        ebp
 005E8A38    ret        4
*}
//end;

//005E8A3C
procedure Tjualfrm.btntambahClick;
begin
{*
 005E8A3C    push       ebx
 005E8A3D    mov        ebx,eax
 005E8A3F    mov        dl,1
 005E8A41    mov        eax,dword ptr [ebx+308]; Tjualfrm.pnheader:TPanel
 005E8A47    mov        ecx,dword ptr [eax]
 005E8A49    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8A4C    mov        dl,1
 005E8A4E    mov        eax,dword ptr [ebx+34C]; Tjualfrm.gridjual:TDBGrid
 005E8A54    mov        ecx,dword ptr [eax]
 005E8A56    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8A59    mov        dl,1
 005E8A5B    mov        eax,dword ptr [ebx+344]; Tjualfrm.btnsimpan:TSpeedButton
 005E8A61    call       TControl.SetVisible
 005E8A66    mov        dl,1
 005E8A68    mov        eax,dword ptr [ebx+348]; Tjualfrm.btnbatal:TSpeedButton
 005E8A6E    call       TControl.SetVisible
 005E8A73    xor        edx,edx
 005E8A75    mov        eax,dword ptr [ebx+338]; Tjualfrm.dbtgl:TDBEdit
 005E8A7B    mov        ecx,dword ptr [eax]
 005E8A7D    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8A80    mov        eax,ebx
 005E8A82    call       005E7648
 005E8A87    pop        ebx
 005E8A88    ret
*}
end;

//005E8A8C
procedure Tjualfrm.FormCreate;
begin
{*
 005E8A8C    push       ebx
 005E8A8D    push       esi
 005E8A8E    mov        ebx,eax
 005E8A90    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E8A96    mov        eax,dword ptr [esi]
 005E8A98    mov        eax,dword ptr [eax+7CC]; Tdm.fakturpajak:TZQuery
 005E8A9E    call       005D8634
 005E8AA3    mov        eax,dword ptr [esi]
 005E8AA5    mov        eax,dword ptr [eax+7D0]; Tdm.fakturpajakdetail:TZQuery
 005E8AAB    call       005D8634
 005E8AB0    mov        eax,dword ptr [esi]
 005E8AB2    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8AB8    call       005D8634
 005E8ABD    mov        eax,dword ptr [esi]
 005E8ABF    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8AC5    call       005D8634
 005E8ACA    mov        eax,dword ptr [esi]
 005E8ACC    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 005E8AD2    call       005D8634
 005E8AD7    mov        eax,dword ptr [esi]
 005E8AD9    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E8ADF    call       005D8634
 005E8AE4    mov        eax,dword ptr [esi]
 005E8AE6    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005E8AEC    call       005D8634
 005E8AF1    call       Date
 005E8AF6    add        esp,0FFFFFFF8
 005E8AF9    fstp       qword ptr [esp]
 005E8AFC    wait
 005E8AFD    mov        eax,dword ptr [ebx+360]; Tjualfrm.tgl:TDateTimePicker
 005E8B03    call       TCommonCalendar.SetDate
 005E8B08    pop        esi
 005E8B09    pop        ebx
 005E8B0A    ret
*}
end;

//005E8B0C
procedure Tjualfrm.lookcustClick;
begin
{*
 005E8B0C    push       ebx
 005E8B0D    push       esi
 005E8B0E    mov        esi,eax
 005E8B10    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8B15    mov        eax,dword ptr [eax]
 005E8B17    mov        ebx,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 005E8B1D    mov        eax,ebx
 005E8B1F    call       TZReadOnlyQuery.GetSQL
 005E8B24    mov        edx,5E8B64; 'select * from custpic where cp_custid = (:id ) '
 005E8B29    mov        ecx,dword ptr [eax]
 005E8B2B    call       dword ptr [ecx+2C]
 005E8B2E    mov        edx,5E8B9C; 'id'
 005E8B33    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E8B39    call       TParams.ParamByName
 005E8B3E    mov        edx,dword ptr [esi+330]; Tjualfrm.lookcust:TDBLookupComboBox
 005E8B44    add        edx,240; TDBLookupComboBox.?f240:Variant
 005E8B4A    call       TParam.SetAsVariant
 005E8B4F    mov        eax,ebx
 005E8B51    call       TDataSet.Open
 005E8B56    pop        esi
 005E8B57    pop        ebx
 005E8B58    ret
*}
end;

//005E8BA0
procedure Tjualfrm.btnsimpanClick;
begin
{*
 005E8BA0    push       ebp
 005E8BA1    mov        ebp,esp
 005E8BA3    xor        ecx,ecx
 005E8BA5    push       ecx
 005E8BA6    push       ecx
 005E8BA7    push       ecx
 005E8BA8    push       ecx
 005E8BA9    push       ecx
 005E8BAA    push       ecx
 005E8BAB    push       ecx
 005E8BAC    push       ecx
 005E8BAD    push       ebx
 005E8BAE    push       esi
 005E8BAF    mov        esi,eax
 005E8BB1    mov        ebx,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E8BB7    xor        eax,eax
 005E8BB9    push       ebp
 005E8BBA    push       5E8D0C
 005E8BBF    push       dword ptr fs:[eax]
 005E8BC2    mov        dword ptr fs:[eax],esp
 005E8BC5    mov        eax,dword ptr [esi+350]; Tjualfrm.dbcash:TDBComboBox
 005E8BCB    mov        edx,dword ptr [eax]
 005E8BCD    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005E8BD3    inc        eax
>005E8BD4    jne        005E8BFE
 005E8BD6    push       0
 005E8BD8    mov        cx,word ptr ds:[5E8D1C]; 0x4
 005E8BDF    xor        edx,edx
 005E8BE1    mov        eax,5E8D28; 'Cash/Piutang Harap diisi!'
 005E8BE6    call       MessageDlg
 005E8BEB    mov        eax,dword ptr [esi+350]; Tjualfrm.dbcash:TDBComboBox
 005E8BF1    mov        edx,dword ptr [eax]
 005E8BF3    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E8BF9    call       Abort
 005E8BFE    mov        eax,esi
 005E8C00    call       005E7E58
 005E8C05    mov        eax,esi
 005E8C07    call       005E7A84
 005E8C0C    mov        eax,dword ptr [ebx]
 005E8C0E    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8C14    call       TDataSet.Edit
 005E8C19    mov        eax,dword ptr [ebx]
 005E8C1B    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8C21    mov        edx,5E8D4C; 'ju_total'
 005E8C26    call       TDataSet.FieldByName
 005E8C2B    push       eax
 005E8C2C    fld        qword ptr ds:[61FA04]; gvar_0061FA04:?Double
 005E8C32    lea        eax,[ebp-10]
 005E8C35    call       @VarFromReal
 005E8C3A    lea        edx,[ebp-10]
 005E8C3D    pop        eax
 005E8C3E    mov        ecx,dword ptr [eax]
 005E8C40    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8C46    mov        eax,dword ptr [ebx]
 005E8C48    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8C4E    mov        edx,5E8D60; 'ju_tax'
 005E8C53    call       TDataSet.FieldByName
 005E8C58    push       eax
 005E8C59    fld        qword ptr ds:[61FA1C]; gvar_0061FA1C
 005E8C5F    lea        eax,[ebp-20]
 005E8C62    call       @VarFromReal
 005E8C67    lea        edx,[ebp-20]
 005E8C6A    pop        eax
 005E8C6B    mov        ecx,dword ptr [eax]
 005E8C6D    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8C73    mov        eax,dword ptr [ebx]
 005E8C75    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8C7B    call       005D8650
 005E8C80    mov        eax,dword ptr [ebx]
 005E8C82    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8C88    call       TDataSet.Edit
 005E8C8D    mov        eax,dword ptr [ebx]
 005E8C8F    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8C95    mov        edx,dword ptr [eax]
 005E8C97    call       dword ptr [edx+24C]; TDataSet.Post
 005E8C9D    mov        eax,dword ptr [ebx]
 005E8C9F    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8CA5    call       0056F648
 005E8CAA    xor        edx,edx
 005E8CAC    mov        eax,dword ptr [esi+338]; Tjualfrm.dbtgl:TDBEdit
 005E8CB2    mov        ecx,dword ptr [eax]
 005E8CB4    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8CB7    xor        edx,edx
 005E8CB9    mov        eax,dword ptr [esi+344]; Tjualfrm.btnsimpan:TSpeedButton
 005E8CBF    call       TControl.SetVisible
 005E8CC4    xor        edx,edx
 005E8CC6    mov        eax,dword ptr [esi+348]; Tjualfrm.btnbatal:TSpeedButton
 005E8CCC    call       TControl.SetVisible
 005E8CD1    xor        edx,edx
 005E8CD3    mov        eax,dword ptr [esi+308]; Tjualfrm.pnheader:TPanel
 005E8CD9    mov        ecx,dword ptr [eax]
 005E8CDB    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8CDE    xor        edx,edx
 005E8CE0    mov        eax,dword ptr [esi+34C]; Tjualfrm.gridjual:TDBGrid
 005E8CE6    mov        ecx,dword ptr [eax]
 005E8CE8    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8CEB    xor        eax,eax
 005E8CED    pop        edx
 005E8CEE    pop        ecx
 005E8CEF    pop        ecx
 005E8CF0    mov        dword ptr fs:[eax],edx
 005E8CF3    push       5E8D13
 005E8CF8    lea        eax,[ebp-20]
 005E8CFB    mov        edx,dword ptr ds:[401114]; Variant
 005E8D01    mov        ecx,2
 005E8D06    call       @FinalizeArray
 005E8D0B    ret
<005E8D0C    jmp        @HandleFinally
<005E8D11    jmp        005E8CF8
 005E8D13    pop        esi
 005E8D14    pop        ebx
 005E8D15    mov        esp,ebp
 005E8D17    pop        ebp
 005E8D18    ret
*}
end;

//005E8D68
procedure Tjualfrm.tglChange;
begin
{*
 005E8D68    push       ebp
 005E8D69    mov        ebp,esp
 005E8D6B    xor        ecx,ecx
 005E8D6D    push       ecx
 005E8D6E    push       ecx
 005E8D6F    push       ecx
 005E8D70    push       ecx
 005E8D71    push       ebx
 005E8D72    mov        ebx,eax
 005E8D74    xor        eax,eax
 005E8D76    push       ebp
 005E8D77    push       5E8DF6
 005E8D7C    push       dword ptr fs:[eax]
 005E8D7F    mov        dword ptr fs:[eax],esp
 005E8D82    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8D87    mov        eax,dword ptr [eax]
 005E8D89    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8D8F    call       TDataSet.Edit
 005E8D94    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8D99    mov        eax,dword ptr [eax]
 005E8D9B    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8DA1    mov        edx,5E8E0C; 'ju_due'
 005E8DA6    call       TDataSet.FieldByName
 005E8DAB    push       eax
 005E8DAC    mov        eax,dword ptr [ebx+360]; Tjualfrm.tgl:TDateTimePicker
 005E8DB2    call       TCommonCalendar.GetDate
 005E8DB7    lea        eax,[ebp-10]
 005E8DBA    call       @VarFromReal
 005E8DBF    lea        edx,[ebp-10]
 005E8DC2    pop        eax
 005E8DC3    mov        ecx,dword ptr [eax]
 005E8DC5    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E8DCB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8DD0    mov        eax,dword ptr [eax]
 005E8DD2    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8DD8    mov        edx,dword ptr [eax]
 005E8DDA    call       dword ptr [edx+24C]; TDataSet.Post
 005E8DE0    xor        eax,eax
 005E8DE2    pop        edx
 005E8DE3    pop        ecx
 005E8DE4    pop        ecx
 005E8DE5    mov        dword ptr fs:[eax],edx
 005E8DE8    push       5E8DFD
 005E8DED    lea        eax,[ebp-10]
 005E8DF0    call       @VarClr
 005E8DF5    ret
<005E8DF6    jmp        @HandleFinally
<005E8DFB    jmp        005E8DED
 005E8DFD    pop        ebx
 005E8DFE    mov        esp,ebp
 005E8E00    pop        ebp
 005E8E01    ret
*}
end;

//005E8E14
procedure Tjualfrm.SpeedButton1Click;
begin
{*
 005E8E14    mov        dl,1
 005E8E16    mov        eax,dword ptr [eax+338]; Tjualfrm.dbtgl:TDBEdit
 005E8E1C    mov        ecx,dword ptr [eax]
 005E8E1E    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8E21    ret
*}
end;

//005E8E24
procedure Tjualfrm.btnbatalClick;
begin
{*
 005E8E24    push       ebx
 005E8E25    mov        ebx,eax
 005E8E27    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8E2C    mov        eax,dword ptr [eax]
 005E8E2E    mov        eax,dword ptr [eax+14C]; Tdm.jual:TZQuery
 005E8E34    call       005D86A0
 005E8E39    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E8E3E    mov        eax,dword ptr [eax]
 005E8E40    mov        eax,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E8E46    call       0056F70C
 005E8E4B    xor        edx,edx
 005E8E4D    mov        eax,dword ptr [ebx+344]; Tjualfrm.btnsimpan:TSpeedButton
 005E8E53    call       TControl.SetVisible
 005E8E58    xor        edx,edx
 005E8E5A    mov        eax,dword ptr [ebx+348]; Tjualfrm.btnbatal:TSpeedButton
 005E8E60    call       TControl.SetVisible
 005E8E65    xor        edx,edx
 005E8E67    mov        eax,dword ptr [ebx+308]; Tjualfrm.pnheader:TPanel
 005E8E6D    mov        ecx,dword ptr [eax]
 005E8E6F    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8E72    xor        edx,edx
 005E8E74    mov        eax,dword ptr [ebx+34C]; Tjualfrm.gridjual:TDBGrid
 005E8E7A    mov        ecx,dword ptr [eax]
 005E8E7C    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E8E7F    pop        ebx
 005E8E80    ret
*}
end;

//005E8E84
procedure Tjualfrm.SpeedButton2Click;
begin
{*
 005E8E84    mov        eax,[0061BF34]
 005E8E89    mov        eax,dword ptr [eax]
 005E8E8B    mov        edx,dword ptr ds:[5DB4D8]; Tprojectfrm
 005E8E91    call       005D859C
 005E8E96    ret
*}
end;

//005E8E98
procedure Tjualfrm.Button1Click;
begin
{*
 005E8E98    call       005E77DC
 005E8E9D    ret
*}
end;

Initialization
Finalization
//005E8EA0
{*
 005E8EA0    push       ebp
 005E8EA1    mov        ebp,esp
 005E8EA3    xor        eax,eax
 005E8EA5    push       ebp
 005E8EA6    push       5E8ED1
 005E8EAB    push       dword ptr fs:[eax]
 005E8EAE    mov        dword ptr fs:[eax],esp
 005E8EB1    inc        dword ptr ds:[61FA28]
>005E8EB7    jne        005E8EC3
 005E8EB9    mov        eax,61FA24; gvar_0061FA24:AnsiString
 005E8EBE    call       @LStrClr
 005E8EC3    xor        eax,eax
 005E8EC5    pop        edx
 005E8EC6    pop        ecx
 005E8EC7    pop        ecx
 005E8EC8    mov        dword ptr fs:[eax],edx
 005E8ECB    push       5E8ED8
 005E8ED0    ret
<005E8ED1    jmp        @HandleFinally
<005E8ED6    jmp        005E8ED0
 005E8ED8    pop        ebp
 005E8ED9    ret
*}
end.