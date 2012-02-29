{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit barangviewun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBGrids, Buttons;

type
  Tbarangviewfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    gridview:TDBGrid;//f30C
    Label2:TLabel;//f310
    cari:TEdit;//f314
    SpeedButton1:TSpeedButton;//f318
    procedure SpeedButton1Click;
    procedure FormActivate;
    procedure cariChange;
    procedure FormCreate;
    //procedure cariKeyDown(?:?; ?:?);
    //procedure gridviewKeyPress(?:?; ?:?);
    //procedure gridviewKeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005DA1C0
procedure Tbarangviewfrm.SpeedButton1Click;
begin
{*
 005DA1C0    push       esi
 005DA1C1    mov        esi,eax
 005DA1C3    mov        eax,dword ptr [esi+314]; Tbarangviewfrm.cari:TEdit
 005DA1C9    mov        edx,dword ptr [eax]
 005DA1CB    call       dword ptr [edx+0E0]; TCustomEdit.Clear
 005DA1D1    pop        esi
 005DA1D2    ret
*}
end;

//005DA1D4
//procedure sub_005DA1D4(?:Tbarangviewfrm);
//begin
{*
 005DA1D4    push       ebp
 005DA1D5    mov        ebp,esp
 005DA1D7    xor        ecx,ecx
 005DA1D9    push       ecx
 005DA1DA    push       ecx
 005DA1DB    push       ecx
 005DA1DC    push       ecx
 005DA1DD    push       ecx
 005DA1DE    push       ecx
 005DA1DF    push       ecx
 005DA1E0    push       ecx
 005DA1E1    push       ebx
 005DA1E2    push       esi
 005DA1E3    mov        ebx,eax
 005DA1E5    mov        esi,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005DA1EB    xor        eax,eax
 005DA1ED    push       ebp
 005DA1EE    push       5DA2B0
 005DA1F3    push       dword ptr fs:[eax]
 005DA1F6    mov        dword ptr fs:[eax],esp
 005DA1F9    mov        eax,dword ptr [esi]
 005DA1FB    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DA201    call       TDataSet.Edit
 005DA206    mov        eax,dword ptr [esi]
 005DA208    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA20E    mov        edx,5DA2C8; 'br_id'
 005DA213    call       TDataSet.FieldByName
 005DA218    lea        edx,[ebp-10]
 005DA21B    mov        ecx,dword ptr [eax]
 005DA21D    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA220    lea        eax,[ebp-10]
 005DA223    push       eax
 005DA224    mov        eax,dword ptr [esi]
 005DA226    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DA22C    mov        edx,5DA2D8; 'bd_kd_barang'
 005DA231    call       TDataSet.FieldByName
 005DA236    pop        edx
 005DA237    mov        ecx,dword ptr [eax]
 005DA239    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA23F    mov        eax,dword ptr [esi]
 005DA241    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA247    mov        edx,5DA2F0; 'br_nama'
 005DA24C    call       TDataSet.FieldByName
 005DA251    lea        edx,[ebp-20]
 005DA254    mov        ecx,dword ptr [eax]
 005DA256    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA259    lea        eax,[ebp-20]
 005DA25C    push       eax
 005DA25D    mov        eax,dword ptr [esi]
 005DA25F    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DA265    mov        edx,5DA300; 'bd_nama_barang'
 005DA26A    call       TDataSet.FieldByName
 005DA26F    pop        edx
 005DA270    mov        ecx,dword ptr [eax]
 005DA272    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA278    mov        eax,dword ptr [esi]
 005DA27A    mov        eax,dword ptr [eax+0B4]; Tdm.belidetail:TZQuery
 005DA280    mov        edx,dword ptr [eax]
 005DA282    call       dword ptr [edx+24C]; TDataSet.Post
 005DA288    mov        eax,ebx
 005DA28A    call       TCustomForm.Close
 005DA28F    xor        eax,eax
 005DA291    pop        edx
 005DA292    pop        ecx
 005DA293    pop        ecx
 005DA294    mov        dword ptr fs:[eax],edx
 005DA297    push       5DA2B7
 005DA29C    lea        eax,[ebp-20]
 005DA29F    mov        edx,dword ptr ds:[401114]; Variant
 005DA2A5    mov        ecx,2
 005DA2AA    call       @FinalizeArray
 005DA2AF    ret
<005DA2B0    jmp        @HandleFinally
<005DA2B5    jmp        005DA29C
 005DA2B7    pop        esi
 005DA2B8    pop        ebx
 005DA2B9    mov        esp,ebp
 005DA2BB    pop        ebp
 005DA2BC    ret
*}
//end;

//005DA310
//procedure sub_005DA310(?:Tbarangviewfrm);
//begin
{*
 005DA310    push       ebp
 005DA311    mov        ebp,esp
 005DA313    mov        ecx,0A
 005DA318    push       0
 005DA31A    push       0
 005DA31C    dec        ecx
<005DA31D    jne        005DA318
 005DA31F    push       ebx
 005DA320    push       esi
 005DA321    mov        esi,eax
 005DA323    mov        ebx,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 005DA329    xor        eax,eax
 005DA32B    push       ebp
 005DA32C    push       5DA48C
 005DA331    push       dword ptr fs:[eax]
 005DA334    mov        dword ptr fs:[eax],esp
 005DA337    mov        eax,dword ptr [ebx]
 005DA339    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA33F    call       TDataSet.Edit
 005DA344    mov        eax,dword ptr [ebx]
 005DA346    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA34C    mov        edx,5DA4A4; 'br_id'
 005DA351    call       TDataSet.FieldByName
 005DA356    lea        edx,[ebp-10]
 005DA359    mov        ecx,dword ptr [eax]
 005DA35B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA35E    lea        eax,[ebp-10]
 005DA361    push       eax
 005DA362    mov        eax,dword ptr [ebx]
 005DA364    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA36A    mov        edx,5DA4B4; 'qd_kd_barang'
 005DA36F    call       TDataSet.FieldByName
 005DA374    pop        edx
 005DA375    mov        ecx,dword ptr [eax]
 005DA377    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA37D    mov        eax,dword ptr [ebx]
 005DA37F    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA385    mov        edx,5DA4CC; 'br_nama'
 005DA38A    call       TDataSet.FieldByName
 005DA38F    lea        edx,[ebp-20]
 005DA392    mov        ecx,dword ptr [eax]
 005DA394    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA397    lea        eax,[ebp-20]
 005DA39A    push       eax
 005DA39B    mov        eax,dword ptr [ebx]
 005DA39D    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA3A3    mov        edx,5DA4DC; 'qd_nama_barang'
 005DA3A8    call       TDataSet.FieldByName
 005DA3AD    pop        edx
 005DA3AE    mov        ecx,dword ptr [eax]
 005DA3B0    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA3B6    mov        eax,dword ptr [ebx]
 005DA3B8    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA3BE    mov        edx,5DA4F4; 'br_type'
 005DA3C3    call       TDataSet.FieldByName
 005DA3C8    lea        edx,[ebp-30]
 005DA3CB    mov        ecx,dword ptr [eax]
 005DA3CD    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA3D0    lea        eax,[ebp-30]
 005DA3D3    push       eax
 005DA3D4    mov        eax,dword ptr [ebx]
 005DA3D6    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA3DC    mov        edx,5DA504; 'qd_type'
 005DA3E1    call       TDataSet.FieldByName
 005DA3E6    pop        edx
 005DA3E7    mov        ecx,dword ptr [eax]
 005DA3E9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA3EF    mov        eax,dword ptr [ebx]
 005DA3F1    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA3F7    mov        edx,5DA514; 'br_unit'
 005DA3FC    call       TDataSet.FieldByName
 005DA401    lea        edx,[ebp-40]
 005DA404    mov        ecx,dword ptr [eax]
 005DA406    call       dword ptr [ecx+64]; TField.GetAsVariant
 005DA409    lea        eax,[ebp-40]
 005DA40C    push       eax
 005DA40D    mov        eax,dword ptr [ebx]
 005DA40F    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA415    mov        edx,5DA524; 'qd_unit'
 005DA41A    call       TDataSet.FieldByName
 005DA41F    pop        edx
 005DA420    mov        ecx,dword ptr [eax]
 005DA422    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA428    mov        eax,dword ptr [ebx]
 005DA42A    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA430    mov        edx,5DA534; 'qd_tgl'
 005DA435    call       TDataSet.FieldByName
 005DA43A    push       eax
 005DA43B    call       Date
 005DA440    lea        eax,[ebp-50]
 005DA443    call       @VarFromTDateTime
 005DA448    lea        edx,[ebp-50]
 005DA44B    pop        eax
 005DA44C    mov        ecx,dword ptr [eax]
 005DA44E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005DA454    mov        eax,dword ptr [ebx]
 005DA456    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 005DA45C    mov        edx,dword ptr [eax]
 005DA45E    call       dword ptr [edx+24C]; TDataSet.Post
 005DA464    mov        eax,esi
 005DA466    call       TCustomForm.Close
 005DA46B    xor        eax,eax
 005DA46D    pop        edx
 005DA46E    pop        ecx
 005DA46F    pop        ecx
 005DA470    mov        dword ptr fs:[eax],edx
 005DA473    push       5DA493
 005DA478    lea        eax,[ebp-50]
 005DA47B    mov        edx,dword ptr ds:[401114]; Variant
 005DA481    mov        ecx,5
 005DA486    call       @FinalizeArray
 005DA48B    ret
<005DA48C    jmp        @HandleFinally
<005DA491    jmp        005DA478
 005DA493    pop        esi
 005DA494    pop        ebx
 005DA495    mov        esp,ebp
 005DA497    pop        ebp
 005DA498    ret
*}
//end;

//005DA53C
procedure Tbarangviewfrm.FormActivate;
begin
{*
 005DA53C    mov        eax,dword ptr [eax+314]; Tbarangviewfrm.cari:TEdit
 005DA542    mov        edx,dword ptr [eax]
 005DA544    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005DA54A    ret
*}
end;

//005DA54C
procedure Tbarangviewfrm.cariChange;
begin
{*
 005DA54C    push       ebp
 005DA54D    mov        ebp,esp
 005DA54F    xor        ecx,ecx
 005DA551    push       ecx
 005DA552    push       ecx
 005DA553    push       ecx
 005DA554    push       ecx
 005DA555    push       ecx
 005DA556    push       ecx
 005DA557    push       ebx
 005DA558    push       esi
 005DA559    mov        esi,eax
 005DA55B    xor        eax,eax
 005DA55D    push       ebp
 005DA55E    push       5DA601
 005DA563    push       dword ptr fs:[eax]
 005DA566    mov        dword ptr fs:[eax],esp
 005DA569    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DA56E    mov        eax,dword ptr [eax]
 005DA570    mov        ebx,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA576    mov        eax,ebx
 005DA578    call       TZReadOnlyQuery.GetSQL
 005DA57D    mov        edx,5DA618; 'SELECT * FROM barang WHERE br_nama LIKE (:br) OR br_type like (:br) ORDER BY br_id DESC '
 005DA582    mov        ecx,dword ptr [eax]
 005DA584    call       dword ptr [ecx+2C]
 005DA587    push       5DA67C; '%'
 005DA58C    lea        edx,[ebp-18]
 005DA58F    mov        eax,dword ptr [esi+314]; Tbarangviewfrm.cari:TEdit
 005DA595    call       TControl.GetText
 005DA59A    push       dword ptr [ebp-18]
 005DA59D    push       5DA67C; '%'
 005DA5A2    lea        eax,[ebp-14]
 005DA5A5    mov        edx,3
 005DA5AA    call       @LStrCatN
 005DA5AF    mov        edx,dword ptr [ebp-14]
 005DA5B2    lea        eax,[ebp-10]
 005DA5B5    call       @VarFromLStr
 005DA5BA    lea        eax,[ebp-10]
 005DA5BD    push       eax
 005DA5BE    mov        edx,5DA688; 'br'
 005DA5C3    mov        eax,dword ptr [ebx+1B4]; TZQuery.?f1B4:TParams
 005DA5C9    call       TParams.ParamByName
 005DA5CE    pop        edx
 005DA5CF    call       TParam.SetAsVariant
 005DA5D4    mov        eax,ebx
 005DA5D6    call       TDataSet.Open
 005DA5DB    xor        eax,eax
 005DA5DD    pop        edx
 005DA5DE    pop        ecx
 005DA5DF    pop        ecx
 005DA5E0    mov        dword ptr fs:[eax],edx
 005DA5E3    push       5DA608
 005DA5E8    lea        eax,[ebp-18]
 005DA5EB    call       @LStrClr
 005DA5F0    lea        eax,[ebp-14]
 005DA5F3    call       @LStrClr
 005DA5F8    lea        eax,[ebp-10]
 005DA5FB    call       @VarClr
 005DA600    ret
<005DA601    jmp        @HandleFinally
<005DA606    jmp        005DA5E8
 005DA608    pop        esi
 005DA609    pop        ebx
 005DA60A    mov        esp,ebp
 005DA60C    pop        ebp
 005DA60D    ret
*}
end;

//005DA68C
procedure Tbarangviewfrm.FormCreate;
begin
{*
 005DA68C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DA691    mov        eax,dword ptr [eax]
 005DA693    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA699    call       005D8634
 005DA69E    ret
*}
end;

//005DA6A0
//procedure Tbarangviewfrm.cariKeyDown(?:?; ?:?);
//begin
{*
 005DA6A0    push       ebp
 005DA6A1    mov        ebp,esp
 005DA6A3    push       ebx
 005DA6A4    push       esi
 005DA6A5    mov        esi,ecx
 005DA6A7    mov        ebx,eax
 005DA6A9    cmp        word ptr [esi],28
>005DA6AD    jne        005DA6CF
 005DA6AF    mov        eax,dword ptr [ebx+30C]; Tbarangviewfrm.gridview:TDBGrid
 005DA6B5    mov        edx,dword ptr [eax]
 005DA6B7    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005DA6BD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005DA6C2    mov        eax,dword ptr [eax]
 005DA6C4    mov        eax,dword ptr [eax+98]; Tdm.barang:TZQuery
 005DA6CA    call       TDataSet.Next
 005DA6CF    cmp        word ptr [esi],0D
>005DA6D3    jne        005DA6DC
 005DA6D5    mov        eax,ebx
 005DA6D7    call       005DA1D4
 005DA6DC    pop        esi
 005DA6DD    pop        ebx
 005DA6DE    pop        ebp
 005DA6DF    ret        4
*}
//end;

//005DA6E4
//procedure Tbarangviewfrm.gridviewKeyPress(?:?; ?:?);
//begin
{*
 005DA6E4    push       ebp
 005DA6E5    mov        ebp,esp
 005DA6E7    push       0
 005DA6E9    push       ebx
 005DA6EA    push       esi
 005DA6EB    mov        esi,ecx
 005DA6ED    mov        ebx,eax
 005DA6EF    xor        eax,eax
 005DA6F1    push       ebp
 005DA6F2    push       5DA770
 005DA6F7    push       dword ptr fs:[eax]
 005DA6FA    mov        dword ptr fs:[eax],esp
 005DA6FD    mov        al,byte ptr [esi]
 005DA6FF    add        al,0D0
 005DA701    sub        al,0A
>005DA703    jb         005DA713
 005DA705    mov        al,byte ptr [esi]
 005DA707    add        al,0BF
 005DA709    sub        al,1A
>005DA70B    jb         005DA713
 005DA70D    add        al,0FA
 005DA70F    sub        al,1A
>005DA711    jae        005DA75A
 005DA713    mov        eax,dword ptr [ebx+314]; Tbarangviewfrm.cari:TEdit
 005DA719    mov        edx,dword ptr [eax]
 005DA71B    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005DA721    mov        eax,dword ptr [ebx+314]; Tbarangviewfrm.cari:TEdit
 005DA727    mov        edx,dword ptr [eax]
 005DA729    call       dword ptr [edx+0E0]; TCustomEdit.Clear
 005DA72F    lea        eax,[ebp-4]
 005DA732    mov        dl,byte ptr [esi]
 005DA734    call       @LStrFromChar
 005DA739    mov        edx,dword ptr [ebp-4]
 005DA73C    mov        eax,dword ptr [ebx+314]; Tbarangviewfrm.cari:TEdit
 005DA742    call       TControl.SetText
 005DA747    mov        edx,1
 005DA74C    mov        eax,dword ptr [ebx+314]; Tbarangviewfrm.cari:TEdit
 005DA752    mov        ecx,dword ptr [eax]
 005DA754    call       dword ptr [ecx+0DC]; TCustomEdit.SetSelStart
 005DA75A    xor        eax,eax
 005DA75C    pop        edx
 005DA75D    pop        ecx
 005DA75E    pop        ecx
 005DA75F    mov        dword ptr fs:[eax],edx
 005DA762    push       5DA777
 005DA767    lea        eax,[ebp-4]
 005DA76A    call       @LStrClr
 005DA76F    ret
<005DA770    jmp        @HandleFinally
<005DA775    jmp        005DA767
 005DA777    pop        esi
 005DA778    pop        ebx
 005DA779    pop        ecx
 005DA77A    pop        ebp
 005DA77B    ret
*}
//end;

//005DA77C
//procedure Tbarangviewfrm.gridviewKeyDown(?:?; ?:?);
//begin
{*
 005DA77C    push       ebp
 005DA77D    mov        ebp,esp
 005DA77F    cmp        word ptr [ecx],0D
>005DA783    jne        005DA79C
 005DA785    mov        edx,dword ptr ds:[61BCD8]; ^gvar_0061F8F4
 005DA78B    cmp        dword ptr [edx],1
>005DA78E    jne        005DA797
 005DA790    call       005DA310
>005DA795    jmp        005DA79C
 005DA797    call       005DA1D4
 005DA79C    pop        ebp
 005DA79D    ret        4
*}
//end;

end.