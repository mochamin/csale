{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit belisupun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls, RpRave, RpSystem, RpConDS, DBGrids;

type
  Tbelisupfrm = class(TForm)
    Panel1:TPanel;//f2F8
    title:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnsimpan:TSpeedButton;//f310
    btnbatal:TSpeedButton;//f314
    pnheader:TPanel;//f318
    Panel6:TPanel;//f31C
    po:TDBEdit;//f320
    Label2:TLabel;//f324
    Label3:TLabel;//f328
    looksupp:TDBLookupComboBox;//f32C
    SpeedButton6:TSpeedButton;//f330
    Label4:TLabel;//f334
    lookpic:TDBLookupComboBox;//f338
    SpeedButton3:TSpeedButton;//f33C
    rpPO:TRvProject;//f340
    RvSystem1:TRvSystem;//f344
    rdbeli:TRvDataSetConnection;//f348
    rdbelidetail:TRvDataSetConnection;//f34C
    rdsupplierpic:TRvDataSetConnection;//f350
    rdsupplier:TRvDataSetConnection;//f354
    dbtgl:TDBEdit;//f358
    Label5:TLabel;//f35C
    SpeedButton1:TSpeedButton;//f360
    griditem:TDBGrid;//f364
    Label6:TLabel;//f368
    dbdue:TDBEdit;//f36C
    SpeedButton2:TSpeedButton;//f370
    rdfootnote:TRvDataSetConnection;//f374
    rdCustomer:TRvDataSetConnection;//f378
    rdcustpic:TRvDataSetConnection;//f37C
    Label7:TLabel;//f380
    lookbayar:TDBComboBox;//f384
    dbisbelilsg:TDBEdit;//f388
    Label8:TLabel;//f38C
    Label1:TLabel;//f390
    DBLookupComboBox1:TDBLookupComboBox;//f394
    SpeedButton4:TSpeedButton;//f398
    procedure btntambahClick;
    procedure btnsimpanClick;
    procedure FormCreate;
    procedure SpeedButton6Click;
    procedure looksuppClick;
    procedure btnbatalClick;
    //procedure gridKeyDown(?:?; ?:?);
    procedure gridEnter;
    procedure SpeedButton1Click;
    //procedure griditemKeyDown(?:?; ?:?);
    procedure SpeedButton2Click;
    procedure FormActivate;
    procedure SpeedButton4Click;
  end;

implementation

{$R *.DFM}

//005DBD28
//procedure sub_005DBD28(?:Tbelisupfrm);
//begin
{*
 005DBD28    push       ebp
 005DBD29    mov        ebp,esp
 005DBD2B    mov        ecx,2C
 005DBD30    push       0
 005DBD32    push       0
 005DBD34    dec        ecx
<005DBD35    jne        005DBD30
 005DBD37    push       ebx
 005DBD38    push       esi
 005DBD39    mov        esi,eax
 005DBD3B    xor        eax,eax
 005DBD3D    push       ebp
 005DBD3E    push       5DC26C
 005DBD43    push       dword ptr fs:[eax]
 005DBD46    mov        dword ptr fs:[eax],esp
 005DBD49    xor        eax,eax
 005DBD4B    mov        dword ptr [ebp-8],eax
 005DBD4E    mov        dword ptr [ebp-4],eax
 005DBD51    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DBD56    mov        eax,dword ptr [eax]
 005DBD58    mov        ebx,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DBD5E    mov        eax,ebx
 005DBD60    call       TDataSet.First
>005DBD65    jmp        005DBDA6
 005DBD67    fld        qword ptr [ebp-8]
 005DBD6A    lea        eax,[ebp-18]
 005DBD6D    call       @VarFromReal
 005DBD72    lea        eax,[ebp-18]
 005DBD75    push       eax
 005DBD76    mov        edx,5DC284; 'bd_total'
 005DBD7B    mov        eax,ebx
 005DBD7D    call       TDataSet.FieldByName
 005DBD82    lea        edx,[ebp-28]
 005DBD85    mov        ecx,dword ptr [eax]
 005DBD87    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DBD8A    lea        edx,[ebp-28]
 005DBD8D    pop        eax
 005DBD8E    call       @VarAdd
 005DBD93    lea        eax,[ebp-18]
 005DBD96    call       @VarToReal
 005DBD9B    fstp       qword ptr [ebp-8]
 005DBD9E    wait
 005DBD9F    mov        eax,ebx
 005DBDA1    call       TDataSet.Next
 005DBDA6    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<005DBDAD    je         005DBD67
 005DBDAF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DBDB4    mov        eax,dword ptr [eax]
 005DBDB6    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 005DBDBC    call       005D8634
 005DBDC1    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DBDC6    mov        eax,dword ptr [eax]
 005DBDC8    mov        ebx,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 005DBDCE    mov        eax,dword ptr [esi+384]; Tbelisupfrm.lookbayar:TDBComboBox
 005DBDD4    mov        edx,dword ptr [eax]
 005DBDD6    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005DBDDC    test       eax,eax
>005DBDDE    jne        005DBF09
 005DBDE4    mov        eax,ebx
 005DBDE6    call       TDataSet.Append
 005DBDEB    mov        edx,5DC298; 'gl_akun'
 005DBDF0    mov        eax,ebx
 005DBDF2    call       TDataSet.FieldByName
 005DBDF7    push       eax
 005DBDF8    lea        eax,[ebp-38]
 005DBDFB    mov        edx,5DC2A8; '210-20'
 005DBE00    call       @VarFromLStr
 005DBE05    lea        edx,[ebp-38]
 005DBE08    pop        eax
 005DBE09    mov        ecx,dword ptr [eax]
 005DBE0B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBE11    mov        edx,5DC2B8; 'gl_amount'
 005DBE16    mov        eax,ebx
 005DBE18    call       TDataSet.FieldByName
 005DBE1D    push       eax
 005DBE1E    fld        qword ptr [ebp-8]
 005DBE21    lea        eax,[ebp-48]
 005DBE24    call       @VarFromReal
 005DBE29    lea        edx,[ebp-48]
 005DBE2C    pop        eax
 005DBE2D    mov        ecx,dword ptr [eax]
 005DBE2F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBE35    mov        edx,5DC2CC; 'gl_kredit'
 005DBE3A    mov        eax,ebx
 005DBE3C    call       TDataSet.FieldByName
 005DBE41    push       eax
 005DBE42    fld        qword ptr [ebp-8]
 005DBE45    lea        eax,[ebp-58]
 005DBE48    call       @VarFromReal
 005DBE4D    lea        edx,[ebp-58]
 005DBE50    pop        eax
 005DBE51    mov        ecx,dword ptr [eax]
 005DBE53    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBE59    lea        edx,[ebp-6C]
 005DBE5C    mov        eax,dword ptr [esi+320]; Tbelisupfrm.po:TDBEdit
 005DBE62    call       TCustomMaskEdit.GetText
 005DBE67    mov        edx,dword ptr [ebp-6C]
 005DBE6A    lea        eax,[ebp-68]
 005DBE6D    call       @VarFromLStr
 005DBE72    lea        eax,[ebp-68]
 005DBE75    push       eax
 005DBE76    mov        edx,5DC2E0; 'gl_ref'
 005DBE7B    mov        eax,ebx
 005DBE7D    call       TDataSet.FieldByName
 005DBE82    pop        edx
 005DBE83    mov        ecx,dword ptr [eax]
 005DBE85    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBE8B    mov        edx,5DC2F0; 'gl_tgl'
 005DBE90    mov        eax,ebx
 005DBE92    call       TDataSet.FieldByName
 005DBE97    push       eax
 005DBE98    call       Date
 005DBE9D    lea        eax,[ebp-7C]
 005DBEA0    call       @VarFromTDateTime
 005DBEA5    lea        edx,[ebp-7C]
 005DBEA8    pop        eax
 005DBEA9    mov        ecx,dword ptr [eax]
 005DBEAB    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBEB1    mov        edx,5DC300; 'gl_desc'
 005DBEB6    mov        eax,ebx
 005DBEB8    call       TDataSet.FieldByName
 005DBEBD    push       eax
 005DBEBE    mov        eax,dword ptr [esi+32C]; Tbelisupfrm.looksupp:TDBLookupComboBox
 005DBEC4    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005DBECA    lea        eax,[ebp-90]
 005DBED0    mov        edx,5DC310; 'Pembelian,'
 005DBED5    call       @LStrCat3
 005DBEDA    mov        edx,dword ptr [ebp-90]
 005DBEE0    lea        eax,[ebp-8C]
 005DBEE6    call       @VarFromLStr
 005DBEEB    lea        edx,[ebp-8C]
 005DBEF1    pop        eax
 005DBEF2    mov        ecx,dword ptr [eax]
 005DBEF4    call       dword ptr [ecx+0B4]
 005DBEFA    mov        eax,ebx
 005DBEFC    mov        edx,dword ptr [eax]
 005DBEFE    call       dword ptr [edx+24C]; TDataSet.Post
>005DBF04    jmp        005DC053
 005DBF09    mov        eax,ebx
 005DBF0B    call       TDataSet.Append
 005DBF10    mov        edx,5DC298; 'gl_akun'
 005DBF15    mov        eax,ebx
 005DBF17    call       TDataSet.FieldByName
 005DBF1C    push       eax
 005DBF1D    lea        eax,[ebp-0A0]
 005DBF23    mov        edx,5DC324; '110-20'
 005DBF28    call       @VarFromLStr
 005DBF2D    lea        edx,[ebp-0A0]
 005DBF33    pop        eax
 005DBF34    mov        ecx,dword ptr [eax]
 005DBF36    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBF3C    mov        edx,5DC2B8; 'gl_amount'
 005DBF41    mov        eax,ebx
 005DBF43    call       TDataSet.FieldByName
 005DBF48    push       eax
 005DBF49    fld        qword ptr [ebp-8]
 005DBF4C    fmul       dword ptr ds:[5DC32C]; -1:Single
 005DBF52    lea        eax,[ebp-0B0]
 005DBF58    call       @VarFromReal
 005DBF5D    lea        edx,[ebp-0B0]
 005DBF63    pop        eax
 005DBF64    mov        ecx,dword ptr [eax]
 005DBF66    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBF6C    mov        edx,5DC2CC; 'gl_kredit'
 005DBF71    mov        eax,ebx
 005DBF73    call       TDataSet.FieldByName
 005DBF78    push       eax
 005DBF79    fld        qword ptr [ebp-8]
 005DBF7C    lea        eax,[ebp-0C0]
 005DBF82    call       @VarFromReal
 005DBF87    lea        edx,[ebp-0C0]
 005DBF8D    pop        eax
 005DBF8E    mov        ecx,dword ptr [eax]
 005DBF90    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBF96    lea        edx,[ebp-0D4]
 005DBF9C    mov        eax,dword ptr [esi+320]; Tbelisupfrm.po:TDBEdit
 005DBFA2    call       TCustomMaskEdit.GetText
 005DBFA7    mov        edx,dword ptr [ebp-0D4]
 005DBFAD    lea        eax,[ebp-0D0]
 005DBFB3    call       @VarFromLStr
 005DBFB8    lea        eax,[ebp-0D0]
 005DBFBE    push       eax
 005DBFBF    mov        edx,5DC2E0; 'gl_ref'
 005DBFC4    mov        eax,ebx
 005DBFC6    call       TDataSet.FieldByName
 005DBFCB    pop        edx
 005DBFCC    mov        ecx,dword ptr [eax]
 005DBFCE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DBFD4    mov        edx,5DC2F0; 'gl_tgl'
 005DBFD9    mov        eax,ebx
 005DBFDB    call       TDataSet.FieldByName
 005DBFE0    push       eax
 005DBFE1    call       Date
 005DBFE6    lea        eax,[ebp-0E4]
 005DBFEC    call       @VarFromTDateTime
 005DBFF1    lea        edx,[ebp-0E4]
 005DBFF7    pop        eax
 005DBFF8    mov        ecx,dword ptr [eax]
 005DBFFA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC000    mov        edx,5DC300; 'gl_desc'
 005DC005    mov        eax,ebx
 005DC007    call       TDataSet.FieldByName
 005DC00C    push       eax
 005DC00D    mov        eax,dword ptr [esi+32C]; Tbelisupfrm.looksupp:TDBLookupComboBox
 005DC013    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005DC019    lea        eax,[ebp-0F8]
 005DC01F    mov        edx,5DC310; 'Pembelian,'
 005DC024    call       @LStrCat3
 005DC029    mov        edx,dword ptr [ebp-0F8]
 005DC02F    lea        eax,[ebp-0F4]
 005DC035    call       @VarFromLStr
 005DC03A    lea        edx,[ebp-0F4]
 005DC040    pop        eax
 005DC041    mov        ecx,dword ptr [eax]
 005DC043    call       dword ptr [ecx+0B4]
 005DC049    mov        eax,ebx
 005DC04B    mov        edx,dword ptr [eax]
 005DC04D    call       dword ptr [edx+24C]; TDataSet.Post
 005DC053    mov        eax,ebx
 005DC055    call       TDataSet.Append
 005DC05A    mov        edx,5DC298; 'gl_akun'
 005DC05F    mov        eax,ebx
 005DC061    call       TDataSet.FieldByName
 005DC066    push       eax
 005DC067    lea        eax,[ebp-108]
 005DC06D    mov        edx,5DC338; '140-10'
 005DC072    call       @VarFromLStr
 005DC077    lea        edx,[ebp-108]
 005DC07D    pop        eax
 005DC07E    mov        ecx,dword ptr [eax]
 005DC080    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC086    mov        edx,5DC2B8; 'gl_amount'
 005DC08B    mov        eax,ebx
 005DC08D    call       TDataSet.FieldByName
 005DC092    push       eax
 005DC093    fld        qword ptr [ebp-8]
 005DC096    lea        eax,[ebp-118]
 005DC09C    call       @VarFromReal
 005DC0A1    lea        edx,[ebp-118]
 005DC0A7    pop        eax
 005DC0A8    mov        ecx,dword ptr [eax]
 005DC0AA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC0B0    mov        edx,5DC348; 'gl_debet'
 005DC0B5    mov        eax,ebx
 005DC0B7    call       TDataSet.FieldByName
 005DC0BC    push       eax
 005DC0BD    fld        qword ptr [ebp-8]
 005DC0C0    lea        eax,[ebp-128]
 005DC0C6    call       @VarFromReal
 005DC0CB    lea        edx,[ebp-128]
 005DC0D1    pop        eax
 005DC0D2    mov        ecx,dword ptr [eax]
 005DC0D4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC0DA    lea        edx,[ebp-13C]
 005DC0E0    mov        eax,dword ptr [esi+320]; Tbelisupfrm.po:TDBEdit
 005DC0E6    call       TCustomMaskEdit.GetText
 005DC0EB    mov        edx,dword ptr [ebp-13C]
 005DC0F1    lea        eax,[ebp-138]
 005DC0F7    call       @VarFromLStr
 005DC0FC    lea        eax,[ebp-138]
 005DC102    push       eax
 005DC103    mov        edx,5DC2E0; 'gl_ref'
 005DC108    mov        eax,ebx
 005DC10A    call       TDataSet.FieldByName
 005DC10F    pop        edx
 005DC110    mov        ecx,dword ptr [eax]
 005DC112    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC118    mov        edx,5DC2F0; 'gl_tgl'
 005DC11D    mov        eax,ebx
 005DC11F    call       TDataSet.FieldByName
 005DC124    push       eax
 005DC125    call       Date
 005DC12A    lea        eax,[ebp-14C]
 005DC130    call       @VarFromTDateTime
 005DC135    lea        edx,[ebp-14C]
 005DC13B    pop        eax
 005DC13C    mov        ecx,dword ptr [eax]
 005DC13E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DC144    mov        edx,5DC300; 'gl_desc'
 005DC149    mov        eax,ebx
 005DC14B    call       TDataSet.FieldByName
 005DC150    push       eax
 005DC151    mov        eax,dword ptr [esi+32C]; Tbelisupfrm.looksupp:TDBLookupComboBox
 005DC157    mov        ecx,dword ptr [eax+268]; TDBLookupComboBox.?f268:String
 005DC15D    lea        eax,[ebp-160]
 005DC163    mov        edx,5DC310; 'Pembelian,'
 005DC168    call       @LStrCat3
 005DC16D    mov        edx,dword ptr [ebp-160]
 005DC173    lea        eax,[ebp-15C]
 005DC179    call       @VarFromLStr
 005DC17E    lea        edx,[ebp-15C]
 005DC184    pop        eax
 005DC185    mov        ecx,dword ptr [eax]
 005DC187    call       dword ptr [ecx+0B4]
 005DC18D    mov        eax,ebx
 005DC18F    mov        edx,dword ptr [eax]
 005DC191    call       dword ptr [edx+24C]; TDataSet.Post
 005DC197    mov        eax,ebx
 005DC199    call       0056F648
 005DC19E    xor        eax,eax
 005DC1A0    pop        edx
 005DC1A1    pop        ecx
 005DC1A2    pop        ecx
 005DC1A3    mov        dword ptr fs:[eax],edx
 005DC1A6    push       5DC276
 005DC1AB    lea        eax,[ebp-160]
 005DC1B1    call       @LStrClr
 005DC1B6    lea        eax,[ebp-15C]
 005DC1BC    mov        edx,dword ptr ds:[401114]; Variant
 005DC1C2    mov        ecx,2
 005DC1C7    call       @FinalizeArray
 005DC1CC    lea        eax,[ebp-13C]
 005DC1D2    call       @LStrClr
 005DC1D7    lea        eax,[ebp-138]
 005DC1DD    mov        edx,dword ptr ds:[401114]; Variant
 005DC1E3    mov        ecx,4
 005DC1E8    call       @FinalizeArray
 005DC1ED    lea        eax,[ebp-0F8]
 005DC1F3    call       @LStrClr
 005DC1F8    lea        eax,[ebp-0F4]
 005DC1FE    mov        edx,dword ptr ds:[401114]; Variant
 005DC204    mov        ecx,2
 005DC209    call       @FinalizeArray
 005DC20E    lea        eax,[ebp-0D4]
 005DC214    call       @LStrClr
 005DC219    lea        eax,[ebp-0D0]
 005DC21F    mov        edx,dword ptr ds:[401114]; Variant
 005DC225    mov        ecx,4
 005DC22A    call       @FinalizeArray
 005DC22F    lea        eax,[ebp-90]
 005DC235    call       @LStrClr
 005DC23A    lea        eax,[ebp-8C]
 005DC240    mov        edx,dword ptr ds:[401114]; Variant
 005DC246    mov        ecx,2
 005DC24B    call       @FinalizeArray
 005DC250    lea        eax,[ebp-6C]
 005DC253    call       @LStrClr
 005DC258    lea        eax,[ebp-68]
 005DC25B    mov        edx,dword ptr ds:[401114]; Variant
 005DC261    mov        ecx,6
 005DC266    call       @FinalizeArray
 005DC26B    ret
<005DC26C    jmp        @HandleFinally
<005DC271    jmp        005DC1AB
 005DC276    pop        esi
 005DC277    pop        ebx
 005DC278    mov        esp,ebp
 005DC27A    pop        ebp
 005DC27B    ret
*}
//end;

//005DC354
procedure sub_005DC354;
begin
{*
 005DC354    push       ebp
 005DC355    mov        ebp,esp
 005DC357    push       0
 005DC359    push       ebx
 005DC35A    xor        eax,eax
 005DC35C    push       ebp
 005DC35D    push       5DC3DC
 005DC362    push       dword ptr fs:[eax]
 005DC365    mov        dword ptr fs:[eax],esp
 005DC368    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC36D    mov        eax,dword ptr [eax]
 005DC36F    mov        ebx,dword ptr [eax+0F0]; Tdm.footnote:TZQuery
 005DC375    mov        eax,ebx
 005DC377    call       TZReadOnlyQuery.GetSQL
 005DC37C    mov        edx,5DC3F0; 'select * from foot_note where fn_supplier_id = (:spid) '
 005DC381    mov        ecx,dword ptr [eax]
 005DC383    call       dword ptr [ecx+2C]
 005DC386    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC38B    mov        eax,dword ptr [eax]
 005DC38D    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DC393    mov        edx,5DC430; 'be_supplier_id'
 005DC398    call       TDataSet.FieldByName
 005DC39D    lea        edx,[ebp-4]
 005DC3A0    mov        ecx,dword ptr [eax]
 005DC3A2    call       dword ptr [ecx+60]; TField.GetAsString
 005DC3A5    mov        eax,dword ptr [ebp-4]
 005DC3A8    push       eax
 005DC3A9    mov        edx,5DC448; 'spid'
 005DC3AE    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005DC3B4    call       TParams.ParamByName
 005DC3B9    pop        edx
 005DC3BA    call       TParam.SetAsString
 005DC3BF    mov        eax,ebx
 005DC3C1    call       TDataSet.Open
 005DC3C6    xor        eax,eax
 005DC3C8    pop        edx
 005DC3C9    pop        ecx
 005DC3CA    pop        ecx
 005DC3CB    mov        dword ptr fs:[eax],edx
 005DC3CE    push       5DC3E3
 005DC3D3    lea        eax,[ebp-4]
 005DC3D6    call       @LStrClr
 005DC3DB    ret
<005DC3DC    jmp        @HandleFinally
<005DC3E1    jmp        005DC3D3
 005DC3E3    pop        ebx
 005DC3E4    pop        ecx
 005DC3E5    pop        ebp
 005DC3E6    ret
*}
end;

//005DC450
//procedure sub_005DC450(?:Tbelisupfrm);
//begin
{*
 005DC450    push       ebp
 005DC451    mov        ebp,esp
 005DC453    mov        ecx,0D
 005DC458    push       0
 005DC45A    push       0
 005DC45C    dec        ecx
<005DC45D    jne        005DC458
 005DC45F    push       ecx
 005DC460    push       ebx
 005DC461    push       esi
 005DC462    push       edi
 005DC463    mov        esi,eax
 005DC465    xor        eax,eax
 005DC467    push       ebp
 005DC468    push       5DC810
 005DC46D    push       dword ptr fs:[eax]
 005DC470    mov        dword ptr fs:[eax],esp
 005DC473    lea        eax,[ebp-20]
 005DC476    push       eax
 005DC477    call       Date
 005DC47C    add        esp,0FFFFFFF8
 005DC47F    fstp       qword ptr [esp]
 005DC482    wait
 005DC483    lea        eax,[ebp-24]
 005DC486    call       DateToStr
 005DC48B    mov        eax,dword ptr [ebp-24]
 005DC48E    mov        ecx,2
 005DC493    mov        edx,4
 005DC498    call       AnsiMidStr
 005DC49D    mov        eax,dword ptr [ebp-20]
 005DC4A0    call       StrToInt
 005DC4A5    mov        edi,eax
 005DC4A7    call       Date
 005DC4AC    add        esp,0FFFFFFF8
 005DC4AF    fstp       qword ptr [esp]
 005DC4B2    wait
 005DC4B3    lea        eax,[ebp-28]
 005DC4B6    call       DateToStr
 005DC4BB    mov        eax,dword ptr [ebp-28]
 005DC4BE    lea        ecx,[ebp-14]
 005DC4C1    mov        edx,4
 005DC4C6    call       RightStr
 005DC4CB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC4D0    mov        eax,dword ptr [eax]
 005DC4D2    mov        ebx,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DC4D8    mov        eax,[0061BF04]; ^gvar_0061F8EC
 005DC4DD    cmp        dword ptr [eax],0
>005DC4E0    jne        005DC4FC
 005DC4E2    mov        eax,ebx
 005DC4E4    call       TZReadOnlyQuery.GetSQL
 005DC4E9    mov        edx,5DC828; 'SELECT * FROM beli where be_islangsung=0 ORDER BY be_id DESC LIMIT 1'
 005DC4EE    mov        ecx,dword ptr [eax]
 005DC4F0    call       dword ptr [ecx+2C]
 005DC4F3    mov        eax,ebx
 005DC4F5    call       TDataSet.Open
>005DC4FA    jmp        005DC51E
 005DC4FC    mov        eax,[0061BF04]; ^gvar_0061F8EC
 005DC501    cmp        dword ptr [eax],1
>005DC504    jne        005DC51E
 005DC506    mov        eax,ebx
 005DC508    call       TZReadOnlyQuery.GetSQL
 005DC50D    mov        edx,5DC878; 'SELECT * FROM beli where be_islangsung=1 ORDER BY be_id DESC LIMIT 1'
 005DC512    mov        ecx,dword ptr [eax]
 005DC514    call       dword ptr [ecx+2C]
 005DC517    mov        eax,ebx
 005DC519    call       TDataSet.Open
 005DC51E    mov        edx,5DC8C8; 'be_kode'
 005DC523    mov        eax,ebx
 005DC525    call       TDataSet.FieldByName
 005DC52A    lea        edx,[ebp-38]
 005DC52D    mov        ecx,dword ptr [eax]
 005DC52F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DC532    lea        edx,[ebp-38]
 005DC535    lea        eax,[ebp-4]
 005DC538    call       @VarToLStr
 005DC53D    lea        eax,[ebp-3C]
 005DC540    push       eax
 005DC541    mov        edx,5DC8C8; 'be_kode'
 005DC546    mov        eax,ebx
 005DC548    call       TDataSet.FieldByName
 005DC54D    lea        edx,[ebp-50]
 005DC550    mov        ecx,dword ptr [eax]
 005DC552    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DC555    lea        edx,[ebp-50]
 005DC558    lea        eax,[ebp-40]
 005DC55B    call       @VarToLStr
 005DC560    mov        eax,dword ptr [ebp-40]
 005DC563    mov        ecx,2
 005DC568    mov        edx,0B
 005DC56D    call       AnsiMidStr
 005DC572    mov        eax,dword ptr [ebp-3C]
 005DC575    call       StrToInt
 005DC57A    mov        dword ptr [ebp-8],eax
 005DC57D    lea        ecx,[ebp-18]
 005DC580    mov        edx,4
 005DC585    mov        eax,dword ptr [ebp-4]
 005DC588    call       RightStr
 005DC58D    lea        ecx,[ebp-54]
 005DC590    mov        edx,3
 005DC595    mov        eax,dword ptr [ebp-4]
 005DC598    call       LeftStr
 005DC59D    mov        eax,dword ptr [ebp-54]
 005DC5A0    call       StrToInt
 005DC5A5    mov        ebx,eax
 005DC5A7    inc        ebx
 005DC5A8    lea        edx,[ebp-58]
 005DC5AB    mov        eax,ebx
 005DC5AD    call       IntToStr
 005DC5B2    mov        eax,dword ptr [ebp-58]
 005DC5B5    call       @LStrLen
 005DC5BA    dec        eax
>005DC5BB    je         005DC5C5
 005DC5BD    dec        eax
>005DC5BE    je         005DC5D4
 005DC5C0    dec        eax
>005DC5C1    je         005DC5E3
>005DC5C3    jmp        005DC5EB
 005DC5C5    lea        eax,[ebp-10]
 005DC5C8    mov        edx,5DC8D8; '00'
 005DC5CD    call       @LStrLAsg
>005DC5D2    jmp        005DC5EB
 005DC5D4    lea        eax,[ebp-10]
 005DC5D7    mov        edx,5DC8E4; '0'
 005DC5DC    call       @LStrLAsg
>005DC5E1    jmp        005DC5EB
 005DC5E3    lea        eax,[ebp-10]
 005DC5E6    call       @LStrClr
 005DC5EB    lea        edx,[ebp-5C]
 005DC5EE    mov        eax,edi
 005DC5F0    call       IntToStr
 005DC5F5    mov        eax,dword ptr [ebp-5C]
 005DC5F8    call       @LStrLen
 005DC5FD    dec        eax
>005DC5FE    jne        005DC61C
 005DC600    lea        edx,[ebp-60]
 005DC603    mov        eax,edi
 005DC605    call       IntToStr
 005DC60A    mov        ecx,dword ptr [ebp-60]
 005DC60D    lea        eax,[ebp-1C]
 005DC610    mov        edx,5DC8E4; '0'
 005DC615    call       @LStrCat3
>005DC61A    jmp        005DC626
 005DC61C    lea        edx,[ebp-1C]
 005DC61F    mov        eax,edi
 005DC621    call       IntToStr
 005DC626    mov        eax,[0061BF04]; ^gvar_0061F8EC
 005DC62B    cmp        dword ptr [eax],0
>005DC62E    jne        005DC6AA
 005DC630    mov        eax,dword ptr [ebp-14]
 005DC633    mov        edx,dword ptr [ebp-18]
 005DC636    call       @LStrCmp
>005DC63B    je         005DC64F
 005DC63D    lea        eax,[ebp-0C]
 005DC640    mov        ecx,dword ptr [ebp-14]
 005DC643    mov        edx,5DC8F0; '001/SV/PO/01/'
 005DC648    call       @LStrCat3
>005DC64D    jmp        005DC6AA
 005DC64F    cmp        edi,dword ptr [ebp-8]
>005DC652    je         005DC673
 005DC654    push       5DC908; '001/SV/PO/'
 005DC659    push       dword ptr [ebp-1C]
 005DC65C    push       5DC91C; '/'
 005DC661    push       dword ptr [ebp-14]
 005DC664    lea        eax,[ebp-0C]
 005DC667    mov        edx,4
 005DC66C    call       @LStrCatN
>005DC671    jmp        005DC6AA
 005DC673    cmp        edi,dword ptr [ebp-8]
>005DC676    jne        005DC6AA
 005DC678    push       dword ptr [ebp-10]
 005DC67B    lea        edx,[ebp-64]
 005DC67E    mov        eax,ebx
 005DC680    call       IntToStr
 005DC685    push       dword ptr [ebp-64]
 005DC688    push       5DC91C; '/'
 005DC68D    push       5DC928; 'SV/PO/'
 005DC692    push       dword ptr [ebp-1C]
 005DC695    push       5DC91C; '/'
 005DC69A    push       dword ptr [ebp-14]
 005DC69D    lea        eax,[ebp-0C]
 005DC6A0    mov        edx,7
 005DC6A5    call       @LStrCatN
 005DC6AA    mov        eax,[0061BF04]; ^gvar_0061F8EC
 005DC6AF    cmp        dword ptr [eax],1
>005DC6B2    jne        005DC72E
 005DC6B4    mov        eax,dword ptr [ebp-14]
 005DC6B7    mov        edx,dword ptr [ebp-18]
 005DC6BA    call       @LStrCmp
>005DC6BF    je         005DC6D3
 005DC6C1    lea        eax,[ebp-0C]
 005DC6C4    mov        ecx,dword ptr [ebp-14]
 005DC6C7    mov        edx,5DC938; '001/SV/CA/01/'
 005DC6CC    call       @LStrCat3
>005DC6D1    jmp        005DC72E
 005DC6D3    cmp        edi,dword ptr [ebp-8]
>005DC6D6    je         005DC6F7
 005DC6D8    push       5DC950; '001/SV/CA/'
 005DC6DD    push       dword ptr [ebp-1C]
 005DC6E0    push       5DC91C; '/'
 005DC6E5    push       dword ptr [ebp-14]
 005DC6E8    lea        eax,[ebp-0C]
 005DC6EB    mov        edx,4
 005DC6F0    call       @LStrCatN
>005DC6F5    jmp        005DC72E
 005DC6F7    cmp        edi,dword ptr [ebp-8]
>005DC6FA    jne        005DC72E
 005DC6FC    push       dword ptr [ebp-10]
 005DC6FF    lea        edx,[ebp-68]
 005DC702    mov        eax,ebx
 005DC704    call       IntToStr
 005DC709    push       dword ptr [ebp-68]
 005DC70C    push       5DC91C; '/'
 005DC711    push       5DC964; 'SV/CA/'
 005DC716    push       dword ptr [ebp-1C]
 005DC719    push       5DC91C; '/'
 005DC71E    push       dword ptr [ebp-14]
 005DC721    lea        eax,[ebp-0C]
 005DC724    mov        edx,7
 005DC729    call       @LStrCatN
 005DC72E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC733    mov        eax,dword ptr [eax]
 005DC735    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DC73B    call       TDataSet.Append
 005DC740    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC745    mov        eax,dword ptr [eax]
 005DC747    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DC74D    call       TDataSet.Append
 005DC752    mov        eax,[0061BF04]; ^gvar_0061F8EC
 005DC757    cmp        dword ptr [eax],1
>005DC75A    jne        005DC76E
 005DC75C    mov        edx,5DC974; '1'
 005DC761    mov        eax,dword ptr [esi+388]; Tbelisupfrm.dbisbelilsg:TDBEdit
 005DC767    call       TCustomMaskEdit.SetText
>005DC76C    jmp        005DC77E
 005DC76E    mov        edx,5DC8E4; '0'
 005DC773    mov        eax,dword ptr [esi+388]; Tbelisupfrm.dbisbelilsg:TDBEdit
 005DC779    call       TCustomMaskEdit.SetText
 005DC77E    call       Date
 005DC783    add        esp,0FFFFFFF8
 005DC786    fstp       qword ptr [esp]
 005DC789    wait
 005DC78A    lea        eax,[ebp-6C]
 005DC78D    call       DateToStr
 005DC792    mov        edx,dword ptr [ebp-6C]
 005DC795    mov        eax,dword ptr [esi+358]; Tbelisupfrm.dbtgl:TDBEdit
 005DC79B    call       TCustomMaskEdit.SetText
 005DC7A0    mov        edx,dword ptr [ebp-0C]
 005DC7A3    mov        eax,dword ptr [esi+320]; Tbelisupfrm.po:TDBEdit
 005DC7A9    call       TCustomMaskEdit.SetText
 005DC7AE    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DC7B3    mov        eax,dword ptr [eax]
 005DC7B5    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DC7BB    mov        edx,dword ptr [eax]
 005DC7BD    call       dword ptr [edx+24C]; TDataSet.Post
 005DC7C3    xor        eax,eax
 005DC7C5    pop        edx
 005DC7C6    pop        ecx
 005DC7C7    pop        ecx
 005DC7C8    mov        dword ptr fs:[eax],edx
 005DC7CB    push       5DC817
 005DC7D0    lea        eax,[ebp-6C]
 005DC7D3    mov        edx,7
 005DC7D8    call       @LStrArrayClr
 005DC7DD    lea        eax,[ebp-50]
 005DC7E0    call       @VarClr
 005DC7E5    lea        eax,[ebp-40]
 005DC7E8    mov        edx,2
 005DC7ED    call       @LStrArrayClr
 005DC7F2    lea        eax,[ebp-38]
 005DC7F5    call       @VarClr
 005DC7FA    lea        eax,[ebp-28]
 005DC7FD    mov        edx,8
 005DC802    call       @LStrArrayClr
 005DC807    lea        eax,[ebp-4]
 005DC80A    call       @LStrClr
 005DC80F    ret
<005DC810    jmp        @HandleFinally
<005DC815    jmp        005DC7D0
 005DC817    pop        edi
 005DC818    pop        esi
 005DC819    pop        ebx
 005DC81A    mov        esp,ebp
 005DC81C    pop        ebp
 005DC81D    ret
*}
//end;

//005DC978
procedure Tbelisupfrm.btntambahClick;
begin
{*
 005DC978    push       ebx
 005DC979    mov        ebx,eax
 005DC97B    mov        dl,1
 005DC97D    mov        eax,dword ptr [ebx+318]; Tbelisupfrm.pnheader:TPanel
 005DC983    mov        ecx,dword ptr [eax]
 005DC985    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DC988    mov        dl,1
 005DC98A    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DC990    mov        ecx,dword ptr [eax]
 005DC992    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DC995    mov        dl,1
 005DC997    mov        eax,dword ptr [ebx+310]; Tbelisupfrm.btnsimpan:TSpeedButton
 005DC99D    call       TControl.SetVisible
 005DC9A2    mov        dl,1
 005DC9A4    mov        eax,dword ptr [ebx+314]; Tbelisupfrm.btnbatal:TSpeedButton
 005DC9AA    call       TControl.SetVisible
 005DC9AF    xor        edx,edx
 005DC9B1    mov        eax,dword ptr [ebx+358]; Tbelisupfrm.dbtgl:TDBEdit
 005DC9B7    mov        ecx,dword ptr [eax]
 005DC9B9    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DC9BC    mov        eax,ebx
 005DC9BE    call       005DC450
 005DC9C3    pop        ebx
 005DC9C4    ret
*}
end;

//005DC9C8
procedure Tbelisupfrm.btnsimpanClick;
begin
{*
 005DC9C8    push       ebx
 005DC9C9    mov        ebx,eax
 005DC9CB    push       0
 005DC9CD    mov        cx,word ptr ds:[5DCAB8]; 0x3
 005DC9D4    mov        dl,3
 005DC9D6    mov        eax,5DCAC4; 'Simpan Record?'
 005DC9DB    call       MessageDlg
 005DC9E0    cmp        eax,6
>005DC9E3    jne        005DCAB5
 005DC9E9    mov        eax,dword ptr [ebx+384]; Tbelisupfrm.lookbayar:TDBComboBox
 005DC9EF    mov        edx,dword ptr [eax]
 005DC9F1    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 005DC9F7    inc        eax
>005DC9F8    jne        005DCA22
 005DC9FA    push       0
 005DC9FC    mov        cx,word ptr ds:[5DCAD4]; 0x4
 005DCA03    xor        edx,edx
 005DCA05    mov        eax,5DCAE0; 'tipe Pembayaran harap diisi!'
 005DCA0A    call       MessageDlg
 005DCA0F    mov        eax,dword ptr [ebx+384]; Tbelisupfrm.lookbayar:TDBComboBox
 005DCA15    mov        edx,dword ptr [eax]
 005DCA17    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005DCA1D    call       Abort
 005DCA22    mov        eax,ebx
 005DCA24    call       005DBD28
 005DCA29    mov        eax,ebx
 005DCA2B    call       005DC354
 005DCA30    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCA35    mov        eax,dword ptr [eax]
 005DCA37    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DCA3D    call       0056F648
 005DCA42    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCA47    mov        eax,dword ptr [eax]
 005DCA49    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DCA4F    call       0056F648
 005DCA54    xor        edx,edx
 005DCA56    mov        eax,dword ptr [ebx+310]; Tbelisupfrm.btnsimpan:TSpeedButton
 005DCA5C    call       TControl.SetVisible
 005DCA61    xor        edx,edx
 005DCA63    mov        eax,dword ptr [ebx+314]; Tbelisupfrm.btnbatal:TSpeedButton
 005DCA69    call       TControl.SetVisible
 005DCA6E    xor        edx,edx
 005DCA70    mov        eax,dword ptr [ebx+318]; Tbelisupfrm.pnheader:TPanel
 005DCA76    mov        ecx,dword ptr [eax]
 005DCA78    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DCA7B    xor        edx,edx
 005DCA7D    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCA83    mov        ecx,dword ptr [eax]
 005DCA85    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DCA88    mov        edx,5DCB08; 'po.rav'
 005DCA8D    mov        eax,dword ptr [ebx+340]; Tbelisupfrm.rpPO:TRvProject
 005DCA93    call       TRvProject.SetProjectFile
 005DCA98    mov        cl,1
 005DCA9A    mov        edx,5DCB08; 'po.rav'
 005DCA9F    mov        eax,dword ptr [ebx+340]; Tbelisupfrm.rpPO:TRvProject
 005DCAA5    call       005D84D0
 005DCAAA    mov        eax,dword ptr [ebx+340]; Tbelisupfrm.rpPO:TRvProject
 005DCAB0    call       005D8484
 005DCAB5    pop        ebx
 005DCAB6    ret
*}
end;

//005DCB10
procedure Tbelisupfrm.FormCreate;
begin
{*
 005DCB10    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB15    mov        eax,dword ptr [eax]
 005DCB17    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DCB1D    call       005D8634
 005DCB22    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB27    mov        eax,dword ptr [eax]
 005DCB29    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DCB2F    call       005D8634
 005DCB34    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB39    mov        eax,dword ptr [eax]
 005DCB3B    mov        eax,dword ptr [eax+0A4]; Tdm.supplier:TZQuery
 005DCB41    call       005D8634
 005DCB46    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB4B    mov        eax,dword ptr [eax]
 005DCB4D    mov        eax,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005DCB53    call       005D8634
 005DCB58    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB5D    mov        eax,dword ptr [eax]
 005DCB5F    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 005DCB65    call       005D8634
 005DCB6A    ret
*}
end;

//005DCB6C
procedure Tbelisupfrm.SpeedButton6Click;
begin
{*
 005DCB6C    mov        eax,[0061B6B8]
 005DCB71    mov        eax,dword ptr [eax]
 005DCB73    mov        edx,dword ptr ds:[5D98F8]; Tsupplierfrm
 005DCB79    call       005D859C
 005DCB7E    ret
*}
end;

//005DCB80
procedure Tbelisupfrm.looksuppClick;
begin
{*
 005DCB80    push       ebp
 005DCB81    mov        ebp,esp
 005DCB83    push       0
 005DCB85    push       0
 005DCB87    push       ebx
 005DCB88    push       esi
 005DCB89    mov        esi,eax
 005DCB8B    xor        eax,eax
 005DCB8D    push       ebp
 005DCB8E    push       5DCC01
 005DCB93    push       dword ptr fs:[eax]
 005DCB96    mov        dword ptr fs:[eax],esp
 005DCB99    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCB9E    mov        eax,dword ptr [eax]
 005DCBA0    mov        ebx,dword ptr [eax+0B0]; Tdm.supplierpic:TZQuery
 005DCBA6    mov        eax,dword ptr [esi+32C]; Tbelisupfrm.looksupp:TDBLookupComboBox
 005DCBAC    add        eax,240; TDBLookupComboBox.?f240:Variant
 005DCBB1    call       @VarToInteger
 005DCBB6    lea        edx,[ebp-8]
 005DCBB9    call       IntToStr
 005DCBBE    mov        ecx,dword ptr [ebp-8]
 005DCBC1    lea        eax,[ebp-4]
 005DCBC4    mov        edx,5DCC18; 'SELECT * FROM supplier_pic WHERE sp_supplier = '
 005DCBC9    call       @LStrCat3
 005DCBCE    mov        eax,dword ptr [ebp-4]
 005DCBD1    push       eax
 005DCBD2    mov        eax,ebx
 005DCBD4    call       TZReadOnlyQuery.GetSQL
 005DCBD9    pop        edx
 005DCBDA    mov        ecx,dword ptr [eax]
 005DCBDC    call       dword ptr [ecx+2C]
 005DCBDF    mov        eax,ebx
 005DCBE1    call       TDataSet.Open
 005DCBE6    xor        eax,eax
 005DCBE8    pop        edx
 005DCBE9    pop        ecx
 005DCBEA    pop        ecx
 005DCBEB    mov        dword ptr fs:[eax],edx
 005DCBEE    push       5DCC08
 005DCBF3    lea        eax,[ebp-8]
 005DCBF6    mov        edx,2
 005DCBFB    call       @LStrArrayClr
 005DCC00    ret
<005DCC01    jmp        @HandleFinally
<005DCC06    jmp        005DCBF3
 005DCC08    pop        esi
 005DCC09    pop        ebx
 005DCC0A    pop        ecx
 005DCC0B    pop        ecx
 005DCC0C    pop        ebp
 005DCC0D    ret
*}
end;

//005DCC48
procedure Tbelisupfrm.btnbatalClick;
begin
{*
 005DCC48    push       ebx
 005DCC49    mov        ebx,eax
 005DCC4B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCC50    mov        eax,dword ptr [eax]
 005DCC52    mov        eax,dword ptr [eax+0AC]; Tdm.beli:TZQuery
 005DCC58    call       005D86A0
 005DCC5D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCC62    mov        eax,dword ptr [eax]
 005DCC64    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DCC6A    call       0056F70C
 005DCC6F    xor        edx,edx
 005DCC71    mov        eax,dword ptr [ebx+314]; Tbelisupfrm.btnbatal:TSpeedButton
 005DCC77    call       TControl.SetVisible
 005DCC7C    xor        edx,edx
 005DCC7E    mov        eax,dword ptr [ebx+310]; Tbelisupfrm.btnsimpan:TSpeedButton
 005DCC84    call       TControl.SetVisible
 005DCC89    xor        edx,edx
 005DCC8B    mov        eax,dword ptr [ebx+318]; Tbelisupfrm.pnheader:TPanel
 005DCC91    mov        ecx,dword ptr [eax]
 005DCC93    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DCC96    xor        edx,edx
 005DCC98    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCC9E    mov        ecx,dword ptr [eax]
 005DCCA0    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DCCA3    pop        ebx
 005DCCA4    ret
*}
end;

//005DCCA8
//procedure Tbelisupfrm.gridKeyDown(?:?; ?:?);
//begin
{*
 005DCCA8    push       ebp
 005DCCA9    mov        ebp,esp
 005DCCAB    push       ebx
 005DCCAC    push       esi
 005DCCAD    mov        esi,ecx
 005DCCAF    mov        ebx,eax
 005DCCB1    cmp        word ptr [esi],2E
>005DCCB5    jne        005DCCC9
 005DCCB7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCCBC    mov        eax,dword ptr [eax]
 005DCCBE    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DCCC4    call       005D85D0
 005DCCC9    cmp        word ptr [esi],0D
>005DCCCD    jne        005DCCFD
 005DCCCF    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCCD5    call       TCustomDBGrid.GetSelectedField
 005DCCDA    mov        eax,dword ptr [eax+38]; TField.?f38:String
 005DCCDD    mov        edx,5DCD40; 'bd_sendto_nama'
 005DCCE2    call       @LStrCmp
>005DCCE7    jne        005DCCFD
 005DCCE9    mov        eax,[0061BC80]
 005DCCEE    mov        eax,dword ptr [eax]
 005DCCF0    mov        edx,dword ptr ds:[5DA7D8]; Tcustncpfrm
 005DCCF6    call       005D859C
>005DCCFB    jmp        005DCD2F
 005DCCFD    cmp        word ptr [esi],0D
>005DCD01    jne        005DCD2F
 005DCD03    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCD09    call       TCustomDBGrid.GetSelectedField
 005DCD0E    mov        eax,dword ptr [eax+38]; TField.?f38:String
 005DCD11    mov        edx,5DCD40; 'bd_sendto_nama'
 005DCD16    call       @LStrCmp
>005DCD1B    je         005DCD2F
 005DCD1D    mov        eax,[0061C3BC]
 005DCD22    mov        eax,dword ptr [eax]
 005DCD24    mov        edx,dword ptr ds:[5D9F1C]; Tbarangviewfrm
 005DCD2A    call       005D859C
 005DCD2F    pop        esi
 005DCD30    pop        ebx
 005DCD31    pop        ebp
 005DCD32    ret        4
*}
//end;

//005DCD50
procedure Tbelisupfrm.gridEnter;
begin
{*
 005DCD50    ret
*}
end;

//005DCD54
procedure Tbelisupfrm.SpeedButton1Click;
begin
{*
 005DCD54    mov        dl,1
 005DCD56    mov        eax,dword ptr [eax+358]; Tbelisupfrm.dbtgl:TDBEdit
 005DCD5C    mov        ecx,dword ptr [eax]
 005DCD5E    call       dword ptr [ecx+64]; TControl.SetEnabled
 005DCD61    ret
*}
end;

//005DCD64
//procedure Tbelisupfrm.griditemKeyDown(?:?; ?:?);
//begin
{*
 005DCD64    push       ebp
 005DCD65    mov        ebp,esp
 005DCD67    push       ebx
 005DCD68    push       esi
 005DCD69    mov        esi,ecx
 005DCD6B    mov        ebx,eax
 005DCD6D    cmp        word ptr [esi],2E
>005DCD71    jne        005DCD85
 005DCD73    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DCD78    mov        eax,dword ptr [eax]
 005DCD7A    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DCD80    call       005D85D0
 005DCD85    cmp        word ptr [esi],0D
>005DCD89    jne        005DCDB9
 005DCD8B    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCD91    call       TCustomDBGrid.GetSelectedField
 005DCD96    mov        eax,dword ptr [eax+38]; TField.?f38:String
 005DCD99    mov        edx,5DCDFC; 'bd_sendto_nama'
 005DCD9E    call       @LStrCmp
>005DCDA3    jne        005DCDB9
 005DCDA5    mov        eax,[0061BC80]
 005DCDAA    mov        eax,dword ptr [eax]
 005DCDAC    mov        edx,dword ptr ds:[5DA7D8]; Tcustncpfrm
 005DCDB2    call       005D859C
>005DCDB7    jmp        005DCDEB
 005DCDB9    cmp        word ptr [esi],0D
>005DCDBD    jne        005DCDEB
 005DCDBF    mov        eax,dword ptr [ebx+364]; Tbelisupfrm.griditem:TDBGrid
 005DCDC5    call       TCustomDBGrid.GetSelectedField
 005DCDCA    mov        eax,dword ptr [eax+38]; TField.?f38:String
 005DCDCD    mov        edx,5DCDFC; 'bd_sendto_nama'
 005DCDD2    call       @LStrCmp
>005DCDD7    je         005DCDEB
 005DCDD9    mov        eax,[0061C3BC]
 005DCDDE    mov        eax,dword ptr [eax]
 005DCDE0    mov        edx,dword ptr ds:[5D9F1C]; Tbarangviewfrm
 005DCDE6    call       005D859C
 005DCDEB    pop        esi
 005DCDEC    pop        ebx
 005DCDED    pop        ebp
 005DCDEE    ret        4
*}
//end;

//005DCE0C
procedure Tbelisupfrm.SpeedButton2Click;
begin
{*
 005DCE0C    mov        eax,[0061C420]
 005DCE11    mov        eax,dword ptr [eax]
 005DCE13    mov        edx,dword ptr ds:[5DAE88]; Tcalendarfrm
 005DCE19    call       005D859C
 005DCE1E    ret
*}
end;

//005DCE20
procedure Tbelisupfrm.FormActivate;
begin
{*
 005DCE20    mov        edx,dword ptr ds:[61BF04]; ^gvar_0061F8EC
 005DCE26    cmp        dword ptr [edx],0
>005DCE29    jne        005DCE3C
 005DCE2B    mov        edx,5DCE58; ' Pembelian via Supplier '
 005DCE30    mov        eax,dword ptr [eax+2FC]; Tbelisupfrm.title:TLabel
 005DCE36    call       TControl.SetText
 005DCE3B    ret
 005DCE3C    mov        edx,5DCE7C; ' Pembelian Langsung '
 005DCE41    mov        eax,dword ptr [eax+2FC]; Tbelisupfrm.title:TLabel
 005DCE47    call       TControl.SetText
 005DCE4C    ret
*}
end;

//005DCE94
procedure Tbelisupfrm.SpeedButton4Click;
begin
{*
 005DCE94    mov        eax,[0061BF34]
 005DCE99    mov        eax,dword ptr [eax]
 005DCE9B    mov        edx,dword ptr ds:[5DB4D8]; Tprojectfrm
 005DCEA1    call       005D859C
 005DCEA6    ret
*}
end;

end.