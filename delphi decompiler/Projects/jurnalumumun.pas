{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit jurnalumumun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons, DBCtrls;

type
  Tjurnalumumfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    pntop:TPanel;//f308
    DBGrid1:TDBGrid;//f30C
    Panel3:TPanel;//f310
    btnbatal:TSpeedButton;//f314
    btnsimpan:TSpeedButton;//f318
    btntambah:TSpeedButton;//f31C
    dbref:TDBEdit;//f320
    Label2:TLabel;//f324
    Label3:TLabel;//f328
    dbtgl:TDBEdit;//f32C
    DBEdit3:TDBEdit;//f330
    Label4:TLabel;//f334
    //procedure DBGrid1KeyDown(?:?; ?:?);
    procedure btntambahClick;
    procedure pntopExit;
    procedure FormActivate;
    procedure btnsimpanClick;
    procedure btnbatalClick;
  end;

implementation

{$R *.DFM}

//00610D9C
procedure sub_00610D9C;
begin
{*
 00610D9C    push       ebp
 00610D9D    mov        ebp,esp
 00610D9F    mov        ecx,0C
 00610DA4    push       0
 00610DA6    push       0
 00610DA8    dec        ecx
<00610DA9    jne        00610DA4
 00610DAB    push       ebx
 00610DAC    push       esi
 00610DAD    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 00610DB3    xor        eax,eax
 00610DB5    push       ebp
 00610DB6    push       610F65
 00610DBB    push       dword ptr fs:[eax]
 00610DBE    mov        dword ptr fs:[eax],esp
 00610DC1    mov        eax,dword ptr [esi]
 00610DC3    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610DC9    call       005D8634
 00610DCE    mov        eax,dword ptr [esi]
 00610DD0    mov        ebx,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 00610DD6    mov        eax,ebx
 00610DD8    call       TDataSet.First
>00610DDD    jmp        00610F37
 00610DE2    mov        eax,dword ptr [esi]
 00610DE4    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610DEA    call       TDataSet.Append
 00610DEF    mov        edx,610F7C; 'jl_akun'
 00610DF4    mov        eax,ebx
 00610DF6    call       TDataSet.FieldByName
 00610DFB    lea        edx,[ebp-10]
 00610DFE    mov        ecx,dword ptr [eax]
 00610E00    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610E03    lea        eax,[ebp-10]
 00610E06    push       eax
 00610E07    mov        eax,dword ptr [esi]
 00610E09    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610E0F    mov        edx,610F8C; 'gl_akun'
 00610E14    call       TDataSet.FieldByName
 00610E19    pop        edx
 00610E1A    mov        ecx,dword ptr [eax]
 00610E1C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610E22    mov        eax,dword ptr [esi]
 00610E24    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 00610E2A    mov        edx,610F9C; 'ju_kode'
 00610E2F    call       TDataSet.FieldByName
 00610E34    lea        edx,[ebp-20]
 00610E37    mov        ecx,dword ptr [eax]
 00610E39    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610E3C    lea        eax,[ebp-20]
 00610E3F    push       eax
 00610E40    mov        eax,dword ptr [esi]
 00610E42    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610E48    mov        edx,610FAC; 'gl_ref'
 00610E4D    call       TDataSet.FieldByName
 00610E52    pop        edx
 00610E53    mov        ecx,dword ptr [eax]
 00610E55    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610E5B    mov        edx,610FBC; 'jl_debet'
 00610E60    mov        eax,ebx
 00610E62    call       TDataSet.FieldByName
 00610E67    lea        edx,[ebp-30]
 00610E6A    mov        ecx,dword ptr [eax]
 00610E6C    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610E6F    lea        eax,[ebp-30]
 00610E72    push       eax
 00610E73    mov        eax,dword ptr [esi]
 00610E75    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610E7B    mov        edx,610FD0; 'gl_debet'
 00610E80    call       TDataSet.FieldByName
 00610E85    pop        edx
 00610E86    mov        ecx,dword ptr [eax]
 00610E88    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610E8E    mov        edx,610FE4; 'jl_kredit'
 00610E93    mov        eax,ebx
 00610E95    call       TDataSet.FieldByName
 00610E9A    lea        edx,[ebp-40]
 00610E9D    mov        ecx,dword ptr [eax]
 00610E9F    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610EA2    lea        eax,[ebp-40]
 00610EA5    push       eax
 00610EA6    mov        eax,dword ptr [esi]
 00610EA8    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610EAE    mov        edx,610FF8; 'gl_kredit'
 00610EB3    call       TDataSet.FieldByName
 00610EB8    pop        edx
 00610EB9    mov        ecx,dword ptr [eax]
 00610EBB    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610EC1    mov        eax,dword ptr [esi]
 00610EC3    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610EC9    mov        edx,61100C; 'gl_tgl'
 00610ECE    call       TDataSet.FieldByName
 00610ED3    push       eax
 00610ED4    call       Date
 00610ED9    lea        eax,[ebp-50]
 00610EDC    call       @VarFromTDateTime
 00610EE1    lea        edx,[ebp-50]
 00610EE4    pop        eax
 00610EE5    mov        ecx,dword ptr [eax]
 00610EE7    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610EED    mov        edx,61101C; 'jl_amount'
 00610EF2    mov        eax,ebx
 00610EF4    call       TDataSet.FieldByName
 00610EF9    lea        edx,[ebp-60]
 00610EFC    mov        ecx,dword ptr [eax]
 00610EFE    call       dword ptr [ecx+64]; TField.GetAsVariant
 00610F01    lea        eax,[ebp-60]
 00610F04    push       eax
 00610F05    mov        eax,dword ptr [esi]
 00610F07    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610F0D    mov        edx,611030; 'gl_amount'
 00610F12    call       TDataSet.FieldByName
 00610F17    pop        edx
 00610F18    mov        ecx,dword ptr [eax]
 00610F1A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 00610F20    mov        eax,dword ptr [esi]
 00610F22    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 00610F28    mov        edx,dword ptr [eax]
 00610F2A    call       dword ptr [edx+24C]; TDataSet.Post
 00610F30    mov        eax,ebx
 00610F32    call       TDataSet.Next
 00610F37    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<00610F3E    je         00610DE2
 00610F44    xor        eax,eax
 00610F46    pop        edx
 00610F47    pop        ecx
 00610F48    pop        ecx
 00610F49    mov        dword ptr fs:[eax],edx
 00610F4C    push       610F6C
 00610F51    lea        eax,[ebp-60]
 00610F54    mov        edx,dword ptr ds:[401114]; Variant
 00610F5A    mov        ecx,6
 00610F5F    call       @FinalizeArray
 00610F64    ret
<00610F65    jmp        @HandleFinally
<00610F6A    jmp        00610F51
 00610F6C    pop        esi
 00610F6D    pop        ebx
 00610F6E    mov        esp,ebp
 00610F70    pop        ebp
 00610F71    ret
*}
end;

//0061103C
//procedure sub_0061103C(?:Tjurnalumumfrm);
//begin
{*
 0061103C    push       ebp
 0061103D    mov        ebp,esp
 0061103F    mov        ecx,5
 00611044    push       0
 00611046    push       0
 00611048    dec        ecx
<00611049    jne        00611044
 0061104B    push       ecx
 0061104C    push       ebx
 0061104D    push       esi
 0061104E    mov        esi,eax
 00611050    xor        eax,eax
 00611052    push       ebp
 00611053    push       611161
 00611058    push       dword ptr fs:[eax]
 0061105B    mov        dword ptr fs:[eax],esp
 0061105E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611063    mov        eax,dword ptr [eax]
 00611065    mov        ebx,dword ptr [eax+0A10]; Tdm.juref:TZQuery
 0061106B    mov        eax,ebx
 0061106D    call       TZReadOnlyQuery.GetSQL
 00611072    mov        edx,611178; 'select * from jurnal_umum order by ju_id desc limit 1 '
 00611077    mov        ecx,dword ptr [eax]
 00611079    call       dword ptr [ecx+2C]
 0061107C    mov        eax,ebx
 0061107E    call       TDataSet.Open
 00611083    mov        edx,6111B8; 'ju_kode'
 00611088    mov        eax,ebx
 0061108A    call       TDataSet.FieldByName
 0061108F    lea        edx,[ebp-18]
 00611092    mov        ecx,dword ptr [eax]
 00611094    call       dword ptr [ecx+64]; TField.GetAsVariant
 00611097    lea        edx,[ebp-18]
 0061109A    lea        eax,[ebp-8]
 0061109D    call       @VarToLStr
 006110A2    mov        eax,dword ptr [ebp-8]
 006110A5    lea        ecx,[ebp-4]
 006110A8    mov        edx,8
 006110AD    call       RightStr
 006110B2    mov        eax,dword ptr [ebp-4]
 006110B5    call       StrToInt
 006110BA    inc        eax
 006110BB    mov        ebx,eax
 006110BD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006110C2    mov        eax,dword ptr [eax]
 006110C4    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 006110CA    call       TDataSet.Append
 006110CF    lea        eax,[ebp-20]
 006110D2    push       eax
 006110D3    mov        dword ptr [ebp-28],ebx
 006110D6    mov        byte ptr [ebp-24],0
 006110DA    lea        edx,[ebp-28]
 006110DD    xor        ecx,ecx
 006110DF    mov        eax,6111C8; '%8.8d'
 006110E4    call       Format
 006110E9    mov        ecx,dword ptr [ebp-20]
 006110EC    lea        eax,[ebp-1C]
 006110EF    mov        edx,6111D8; 'JU'
 006110F4    call       @LStrCat3
 006110F9    mov        edx,dword ptr [ebp-1C]
 006110FC    mov        eax,dword ptr [esi+320]; Tjurnalumumfrm.dbref:TDBEdit
 00611102    call       TCustomMaskEdit.SetText
 00611107    call       Date
 0061110C    add        esp,0FFFFFFF8
 0061110F    fstp       qword ptr [esp]
 00611112    wait
 00611113    lea        eax,[ebp-2C]
 00611116    call       DateToStr
 0061111B    mov        edx,dword ptr [ebp-2C]
 0061111E    mov        eax,dword ptr [esi+32C]; Tjurnalumumfrm.dbtgl:TDBEdit
 00611124    call       TCustomMaskEdit.SetText
 00611129    xor        eax,eax
 0061112B    pop        edx
 0061112C    pop        ecx
 0061112D    pop        ecx
 0061112E    mov        dword ptr fs:[eax],edx
 00611131    push       611168
 00611136    lea        eax,[ebp-2C]
 00611139    call       @LStrClr
 0061113E    lea        eax,[ebp-20]
 00611141    mov        edx,2
 00611146    call       @LStrArrayClr
 0061114B    lea        eax,[ebp-18]
 0061114E    call       @VarClr
 00611153    lea        eax,[ebp-8]
 00611156    mov        edx,2
 0061115B    call       @LStrArrayClr
 00611160    ret
<00611161    jmp        @HandleFinally
<00611166    jmp        00611136
 00611168    pop        esi
 00611169    pop        ebx
 0061116A    mov        esp,ebp
 0061116C    pop        ebp
 0061116D    ret
*}
//end;

//006111DC
//procedure Tjurnalumumfrm.DBGrid1KeyDown(?:?; ?:?);
//begin
{*
 006111DC    push       ebp
 006111DD    mov        ebp,esp
 006111DF    cmp        word ptr [ecx],0D
>006111E3    jne        006111F7
 006111E5    mov        eax,[0061B240]; ^gvar_0061FB88:Takunviewfrm
 006111EA    mov        eax,dword ptr [eax]
 006111EC    mov        edx,dword ptr ds:[610568]; Takunviewfrm
 006111F2    call       005D859C
 006111F7    pop        ebp
 006111F8    ret        4
*}
//end;

//006111FC
procedure Tjurnalumumfrm.btntambahClick;
begin
{*
 006111FC    push       ebx
 006111FD    mov        ebx,eax
 006111FF    mov        eax,ebx
 00611201    call       0061103C
 00611206    mov        dl,1
 00611208    mov        eax,dword ptr [ebx+318]; Tjurnalumumfrm.btnsimpan:TSpeedButton
 0061120E    call       TControl.SetVisible
 00611213    mov        dl,1
 00611215    mov        eax,dword ptr [ebx+314]; Tjurnalumumfrm.btnbatal:TSpeedButton
 0061121B    call       TControl.SetVisible
 00611220    pop        ebx
 00611221    ret
*}
end;

//00611224
procedure Tjurnalumumfrm.pntopExit;
begin
{*
 00611224    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611229    mov        eax,dword ptr [eax]
 0061122B    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 00611231    mov        edx,dword ptr [eax]
 00611233    call       dword ptr [edx+24C]; TDataSet.Post
 00611239    ret
*}
end;

//0061123C
procedure Tjurnalumumfrm.FormActivate;
begin
{*
 0061123C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611241    mov        eax,dword ptr [eax]
 00611243    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 00611249    call       005D8634
 0061124E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611253    mov        eax,dword ptr [eax]
 00611255    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 0061125B    call       005D8634
 00611260    ret
*}
end;

//00611264
procedure Tjurnalumumfrm.btnsimpanClick;
begin
{*
 00611264    push       ebx
 00611265    mov        ebx,eax
 00611267    push       0
 00611269    mov        cx,word ptr ds:[61131C]; 0x3
 00611270    mov        dl,3
 00611272    mov        eax,611328; 'Posting Jurnal?'
 00611277    call       MessageDlg
 0061127C    cmp        eax,6
>0061127F    jne        00611318
 00611285    mov        eax,ebx
 00611287    call       00610D9C
 0061128C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00611291    mov        eax,dword ptr [eax]
 00611293    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 00611299    call       TDataSet.Edit
 0061129E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006112A3    mov        eax,dword ptr [eax]
 006112A5    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 006112AB    mov        edx,dword ptr [eax]
 006112AD    call       dword ptr [edx+24C]; TDataSet.Post
 006112B3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006112B8    mov        eax,dword ptr [eax]
 006112BA    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 006112C0    call       0056F648
 006112C5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006112CA    mov        eax,dword ptr [eax]
 006112CC    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 006112D2    call       TDataSet.Edit
 006112D7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006112DC    mov        eax,dword ptr [eax]
 006112DE    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 006112E4    mov        edx,dword ptr [eax]
 006112E6    call       dword ptr [edx+24C]; TDataSet.Post
 006112EC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006112F1    mov        eax,dword ptr [eax]
 006112F3    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 006112F9    call       0056F648
 006112FE    xor        edx,edx
 00611300    mov        eax,dword ptr [ebx+318]; Tjurnalumumfrm.btnsimpan:TSpeedButton
 00611306    call       TControl.SetVisible
 0061130B    xor        edx,edx
 0061130D    mov        eax,dword ptr [ebx+314]; Tjurnalumumfrm.btnbatal:TSpeedButton
 00611313    call       TControl.SetVisible
 00611318    pop        ebx
 00611319    ret
*}
end;

//00611338
procedure Tjurnalumumfrm.btnbatalClick;
begin
{*
 00611338    push       ebx
 00611339    mov        ebx,eax
 0061133B    push       0
 0061133D    mov        cx,word ptr ds:[611398]; 0x3
 00611344    mov        dl,3
 00611346    mov        eax,6113A4; 'Batalkan Posting?'
 0061134B    call       MessageDlg
 00611350    cmp        eax,6
>00611353    jne        00611393
 00611355    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0061135A    mov        eax,dword ptr [eax]
 0061135C    mov        eax,dword ptr [eax+9F4]; Tdm.jurnalumum:TZQuery
 00611362    call       0056F70C
 00611367    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0061136C    mov        eax,dword ptr [eax]
 0061136E    mov        eax,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 00611374    call       0056F70C
 00611379    xor        edx,edx
 0061137B    mov        eax,dword ptr [ebx+318]; Tjurnalumumfrm.btnsimpan:TSpeedButton
 00611381    call       TControl.SetVisible
 00611386    xor        edx,edx
 00611388    mov        eax,dword ptr [ebx+314]; Tjurnalumumfrm.btnbatal:TSpeedButton
 0061138E    call       TControl.SetVisible
 00611393    pop        ebx
 00611394    ret
*}
end;

end.