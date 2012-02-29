{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit gudangpickun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  Tgudangpickfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Panel4:TPanel;//f2FC
    Panel5:TPanel;//f300
    Panel2:TPanel;//f304
    Label2:TLabel;//f308
    lookgudang:TDBLookupComboBox;//f30C
    SpeedButton1:TSpeedButton;//f310
    procedure FormCreate;
    procedure SpeedButton1Click;
  end;

implementation

{$R *.DFM}

//005E5114
//procedure sub_005E5114(?:Tgudangpickfrm);
//begin
{*
 005E5114    push       ebp
 005E5115    mov        ebp,esp
 005E5117    mov        ecx,12
 005E511C    push       0
 005E511E    push       0
 005E5120    dec        ecx
<005E5121    jne        005E511C
 005E5123    push       ecx
 005E5124    push       ebx
 005E5125    push       esi
 005E5126    push       edi
 005E5127    mov        dword ptr [ebp-4],eax
 005E512A    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005E5130    xor        eax,eax
 005E5132    push       ebp
 005E5133    push       5E5430
 005E5138    push       dword ptr fs:[eax]
 005E513B    mov        dword ptr fs:[eax],esp
 005E513E    mov        eax,dword ptr [esi]
 005E5140    mov        ebx,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E5146    mov        eax,ebx
 005E5148    call       TDataSet.Edit
 005E514D    mov        edx,5E5448; 'be_post'
 005E5152    mov        eax,ebx
 005E5154    call       TDataSet.FieldByName
 005E5159    push       eax
 005E515A    lea        eax,[ebp-14]
 005E515D    mov        edx,1
 005E5162    mov        cl,1
 005E5164    call       @VarFromInt
 005E5169    lea        edx,[ebp-14]
 005E516C    pop        eax
 005E516D    mov        ecx,dword ptr [eax]
 005E516F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E5175    mov        eax,ebx
 005E5177    mov        edx,dword ptr [eax]
 005E5179    call       dword ptr [edx+24C]; TDataSet.Post
 005E517F    mov        eax,ebx
 005E5181    call       0056F648
 005E5186    mov        eax,dword ptr [esi]
 005E5188    mov        ebx,dword ptr [eax+3C0]; Tdm.bd_inventory:TZQuery
 005E518E    mov        eax,ebx
 005E5190    call       TZReadOnlyQuery.GetSQL
 005E5195    mov        edx,5E5458; 'select * from belidetail where bd_kode = (:k) '
 005E519A    mov        ecx,dword ptr [eax]
 005E519C    call       dword ptr [ecx+2C]
 005E519F    mov        eax,dword ptr [esi]
 005E51A1    mov        eax,dword ptr [eax+184]; Tdm.polist:TZQuery
 005E51A7    mov        edx,5E5490; 'be_kode'
 005E51AC    call       TDataSet.FieldByName
 005E51B1    lea        edx,[ebp-24]
 005E51B4    mov        ecx,dword ptr [eax]
 005E51B6    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E51B9    lea        eax,[ebp-24]
 005E51BC    push       eax
 005E51BD    mov        edx,5E54A0; 'k'
 005E51C2    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005E51C8    call       TParams.ParamByName
 005E51CD    pop        edx
 005E51CE    call       TParam.SetAsVariant
 005E51D3    mov        eax,ebx
 005E51D5    call       TDataSet.Open
 005E51DA    mov        eax,ebx
 005E51DC    call       TDataSet.First
>005E51E1    jmp        005E53E8
 005E51E6    mov        eax,dword ptr [esi]
 005E51E8    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E51EE    call       005D8634
 005E51F3    mov        al,[005E54A4]; 0x1
 005E51F8    push       eax
 005E51F9    mov        edx,5E54B0; 'bd_kd_barang'
 005E51FE    mov        eax,ebx
 005E5200    call       TDataSet.FieldByName
 005E5205    lea        edx,[ebp-34]
 005E5208    mov        ecx,dword ptr [eax]
 005E520A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E520D    lea        ecx,[ebp-34]
 005E5210    mov        eax,dword ptr [esi]
 005E5212    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5218    mov        edx,5E54C8; 'in_kd_barang'
 005E521D    mov        edi,dword ptr [eax]
 005E521F    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 005E5225    cmp        al,1
>005E5227    jne        005E52E9
 005E522D    mov        eax,dword ptr [esi]
 005E522F    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5235    call       TDataSet.Edit
 005E523A    mov        eax,dword ptr [esi]
 005E523C    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5242    mov        edx,5E54E0; 'in_stock'
 005E5247    call       TDataSet.FieldByName
 005E524C    lea        edx,[ebp-44]
 005E524F    mov        ecx,dword ptr [eax]
 005E5251    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E5254    lea        eax,[ebp-44]
 005E5257    push       eax
 005E5258    mov        edx,5E54F4; 'bd_qty'
 005E525D    mov        eax,ebx
 005E525F    call       TDataSet.FieldByName
 005E5264    lea        edx,[ebp-54]
 005E5267    mov        ecx,dword ptr [eax]
 005E5269    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E526C    lea        edx,[ebp-54]
 005E526F    pop        eax
 005E5270    call       @VarAdd
 005E5275    lea        eax,[ebp-44]
 005E5278    push       eax
 005E5279    mov        eax,dword ptr [esi]
 005E527B    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5281    mov        edx,5E54E0; 'in_stock'
 005E5286    call       TDataSet.FieldByName
 005E528B    pop        edx
 005E528C    mov        ecx,dword ptr [eax]
 005E528E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E5294    mov        edx,5E5504; 'bd_harga'
 005E5299    mov        eax,ebx
 005E529B    call       TDataSet.FieldByName
 005E52A0    lea        edx,[ebp-64]
 005E52A3    mov        ecx,dword ptr [eax]
 005E52A5    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E52A8    lea        eax,[ebp-64]
 005E52AB    push       eax
 005E52AC    mov        eax,dword ptr [esi]
 005E52AE    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E52B4    mov        edx,5E5518; 'in_harga'
 005E52B9    call       TDataSet.FieldByName
 005E52BE    pop        edx
 005E52BF    mov        ecx,dword ptr [eax]
 005E52C1    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E52C7    mov        eax,dword ptr [esi]
 005E52C9    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E52CF    mov        edx,dword ptr [eax]
 005E52D1    call       dword ptr [edx+24C]; TDataSet.Post
 005E52D7    mov        eax,dword ptr [esi]
 005E52D9    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E52DF    call       0056F648
>005E52E4    jmp        005E53E1
 005E52E9    mov        eax,dword ptr [esi]
 005E52EB    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E52F1    call       TDataSet.Append
 005E52F6    mov        edx,5E54B0; 'bd_kd_barang'
 005E52FB    mov        eax,ebx
 005E52FD    call       TDataSet.FieldByName
 005E5302    lea        edx,[ebp-74]
 005E5305    mov        ecx,dword ptr [eax]
 005E5307    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E530A    lea        eax,[ebp-74]
 005E530D    push       eax
 005E530E    mov        eax,dword ptr [esi]
 005E5310    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5316    mov        edx,5E54C8; 'in_kd_barang'
 005E531B    call       TDataSet.FieldByName
 005E5320    pop        edx
 005E5321    mov        ecx,dword ptr [eax]
 005E5323    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E5329    mov        eax,dword ptr [esi]
 005E532B    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5331    mov        edx,5E552C; 'in_kd_gudang'
 005E5336    call       TDataSet.FieldByName
 005E533B    mov        edx,dword ptr [ebp-4]
 005E533E    mov        edx,dword ptr [edx+30C]; Tgudangpickfrm.lookgudang:TDBLookupComboBox
 005E5344    add        edx,240; TDBLookupComboBox.?f240:Variant
 005E534A    mov        ecx,dword ptr [eax]
 005E534C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E5352    mov        edx,5E54F4; 'bd_qty'
 005E5357    mov        eax,ebx
 005E5359    call       TDataSet.FieldByName
 005E535E    lea        edx,[ebp-84]
 005E5364    mov        ecx,dword ptr [eax]
 005E5366    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E5369    lea        eax,[ebp-84]
 005E536F    push       eax
 005E5370    mov        eax,dword ptr [esi]
 005E5372    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E5378    mov        edx,5E54E0; 'in_stock'
 005E537D    call       TDataSet.FieldByName
 005E5382    pop        edx
 005E5383    mov        ecx,dword ptr [eax]
 005E5385    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E538B    mov        edx,5E5504; 'bd_harga'
 005E5390    mov        eax,ebx
 005E5392    call       TDataSet.FieldByName
 005E5397    lea        edx,[ebp-94]
 005E539D    mov        ecx,dword ptr [eax]
 005E539F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E53A2    lea        eax,[ebp-94]
 005E53A8    push       eax
 005E53A9    mov        eax,dword ptr [esi]
 005E53AB    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E53B1    mov        edx,5E5518; 'in_harga'
 005E53B6    call       TDataSet.FieldByName
 005E53BB    pop        edx
 005E53BC    mov        ecx,dword ptr [eax]
 005E53BE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E53C4    mov        eax,dword ptr [esi]
 005E53C6    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E53CC    mov        edx,dword ptr [eax]
 005E53CE    call       dword ptr [edx+24C]; TDataSet.Post
 005E53D4    mov        eax,dword ptr [esi]
 005E53D6    mov        eax,dword ptr [eax+344]; Tdm.inventory_post:TZQuery
 005E53DC    call       0056F648
 005E53E1    mov        eax,ebx
 005E53E3    call       TDataSet.Next
 005E53E8    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<005E53EF    je         005E51E6
 005E53F5    mov        eax,dword ptr [esi]
 005E53F7    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E53FD    call       TDataSet.Refresh
 005E5402    mov        eax,5E5544; 'posting selesai...'
 005E5407    call       ShowMessage
 005E540C    xor        eax,eax
 005E540E    pop        edx
 005E540F    pop        ecx
 005E5410    pop        ecx
 005E5411    mov        dword ptr fs:[eax],edx
 005E5414    push       5E5437
 005E5419    lea        eax,[ebp-94]
 005E541F    mov        edx,dword ptr ds:[401114]; Variant
 005E5425    mov        ecx,9
 005E542A    call       @FinalizeArray
 005E542F    ret
<005E5430    jmp        @HandleFinally
<005E5435    jmp        005E5419
 005E5437    pop        edi
 005E5438    pop        esi
 005E5439    pop        ebx
 005E543A    mov        esp,ebp
 005E543C    pop        ebp
 005E543D    ret
*}
//end;

//005E5558
procedure Tgudangpickfrm.FormCreate;
begin
{*
 005E5558    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E555D    mov        eax,dword ptr [eax]
 005E555F    mov        eax,dword ptr [eax+154]; Tdm.gudang:TZQuery
 005E5565    call       005D8634
 005E556A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E556F    mov        eax,dword ptr [eax]
 005E5571    mov        eax,dword ptr [eax+158]; Tdm.inventory:TZQuery
 005E5577    call       005D8634
 005E557C    ret
*}
end;

//005E5580
procedure Tgudangpickfrm.SpeedButton1Click;
begin
{*
 005E5580    push       ebx
 005E5581    mov        ebx,eax
 005E5583    mov        eax,ebx
 005E5585    call       005E5114
 005E558A    mov        eax,ebx
 005E558C    call       TCustomForm.Close
 005E5591    pop        ebx
 005E5592    ret
*}
end;

end.