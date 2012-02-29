{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit useraddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls;

type
  Tuseraddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel2:TPanel;//f300
    Panel3:TPanel;//f304
    Panel4:TPanel;//f308
    Panel5:TPanel;//f30C
    SpeedButton2:TSpeedButton;//f310
    SpeedButton1:TSpeedButton;//f314
    namadepan:TDBEdit;//f318
    Label2:TLabel;//f31C
    namabelakang:TDBEdit;//f320
    Label3:TLabel;//f324
    Label4:TLabel;//f328
    username:TDBEdit;//f32C
    Label5:TLabel;//f330
    groupakses:TDBLookupComboBox;//f334
    Label6:TLabel;//f338
    pwd:TDBEdit;//f33C
    Label7:TLabel;//f340
    repeatpwd:TEdit;//f344
    procedure FormActivate;
    procedure SpeedButton1Click;
    procedure FormCreate;
    procedure SpeedButton2Click;
  end;

implementation

{$R *.DFM}

//005E1EFC
//procedure sub_005E1EFC(?:Tuseraddfrm);
//begin
{*
 005E1EFC    push       ebp
 005E1EFD    mov        ebp,esp
 005E1EFF    mov        ecx,5
 005E1F04    push       0
 005E1F06    push       0
 005E1F08    dec        ecx
<005E1F09    jne        005E1F04
 005E1F0B    push       ebx
 005E1F0C    push       esi
 005E1F0D    mov        ebx,eax
 005E1F0F    xor        eax,eax
 005E1F11    push       ebp
 005E1F12    push       5E20E2
 005E1F17    push       dword ptr fs:[eax]
 005E1F1A    mov        dword ptr fs:[eax],esp
 005E1F1D    lea        edx,[ebp-4]
 005E1F20    mov        eax,dword ptr [ebx+318]; Tuseraddfrm.namadepan:TDBEdit
 005E1F26    call       TCustomMaskEdit.GetText
 005E1F2B    cmp        dword ptr [ebp-4],0
>005E1F2F    je         005E1F45
 005E1F31    lea        edx,[ebp-8]
 005E1F34    mov        eax,dword ptr [ebx+320]; Tuseraddfrm.namabelakang:TDBEdit
 005E1F3A    call       TCustomMaskEdit.GetText
 005E1F3F    cmp        dword ptr [ebp-8],0
>005E1F43    jne        005E1F6D
 005E1F45    push       0
 005E1F47    mov        cx,word ptr ds:[5E20F0]; 0x4
 005E1F4E    mov        dl,1
 005E1F50    mov        eax,5E20FC; 'Nama Depan atau Nama Belakang tidak boleh kosong'
 005E1F55    call       MessageDlg
 005E1F5A    mov        eax,dword ptr [ebx+318]; Tuseraddfrm.namadepan:TDBEdit
 005E1F60    mov        edx,dword ptr [eax]
 005E1F62    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E1F68    call       Abort
 005E1F6D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E1F72    mov        eax,dword ptr [eax]
 005E1F74    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E1F77    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 005E1F7D    sub        al,3
>005E1F7F    jne        005E2028
 005E1F85    mov        al,[005E2130]; 0x1
 005E1F8A    push       eax
 005E1F8B    lea        edx,[ebp-1C]
 005E1F8E    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E1F94    call       TCustomMaskEdit.GetText
 005E1F99    mov        edx,dword ptr [ebp-1C]
 005E1F9C    lea        eax,[ebp-18]
 005E1F9F    call       @VarFromLStr
 005E1FA4    lea        ecx,[ebp-18]
 005E1FA7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E1FAC    mov        eax,dword ptr [eax]
 005E1FAE    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E1FB1    mov        edx,5E213C; 'us_username'
 005E1FB6    mov        esi,dword ptr [eax]
 005E1FB8    call       dword ptr [esi+244]; TZAbstractRODataset.Locate
 005E1FBE    cmp        al,1
>005E1FC0    jne        005E1FEC
 005E1FC2    push       0
 005E1FC4    mov        cx,word ptr ds:[5E20F0]; 0x4
 005E1FCB    mov        dl,1
 005E1FCD    mov        eax,5E2150; 'username sudah ada, pilih username yang lain'
 005E1FD2    call       MessageDlg
 005E1FD7    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E1FDD    mov        edx,dword ptr [eax]
 005E1FDF    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E1FE5    call       Abort
>005E1FEA    jmp        005E2028
 005E1FEC    lea        edx,[ebp-20]
 005E1FEF    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E1FF5    call       TCustomMaskEdit.GetText
 005E1FFA    cmp        dword ptr [ebp-20],0
>005E1FFE    jne        005E2028
 005E2000    push       0
 005E2002    mov        cx,word ptr ds:[5E20F0]; 0x4
 005E2009    mov        dl,1
 005E200B    mov        eax,5E2188; 'username kosong, isi username'
 005E2010    call       MessageDlg
 005E2015    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E201B    mov        edx,dword ptr [eax]
 005E201D    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 005E2023    call       Abort
 005E2028    mov        eax,dword ptr [ebx+334]; Tuseraddfrm.groupakses:TDBLookupComboBox
 005E202E    cmp        dword ptr [eax+268],0; TDBLookupComboBox.?f268:String
>005E2035    jne        005E2051
 005E2037    push       0
 005E2039    mov        cx,word ptr ds:[5E20F0]; 0x4
 005E2040    mov        dl,1
 005E2042    mov        eax,5E21B0; 'Group Akses harus diisi'
 005E2047    call       MessageDlg
 005E204C    call       Abort
 005E2051    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2056    mov        eax,dword ptr [eax]
 005E2058    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E205B    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 005E2061    sub        al,3
>005E2063    jne        005E20AA
 005E2065    lea        edx,[ebp-24]
 005E2068    mov        eax,dword ptr [ebx+33C]; Tuseraddfrm.pwd:TDBEdit
 005E206E    call       TCustomMaskEdit.GetText
 005E2073    mov        eax,dword ptr [ebp-24]
 005E2076    push       eax
 005E2077    lea        edx,[ebp-28]
 005E207A    mov        eax,dword ptr [ebx+344]; Tuseraddfrm.repeatpwd:TEdit
 005E2080    call       TControl.GetText
 005E2085    mov        edx,dword ptr [ebp-28]
 005E2088    pop        eax
 005E2089    call       @LStrCmp
>005E208E    je         005E20AA
 005E2090    push       0
 005E2092    mov        cx,word ptr ds:[5E20F0]; 0x4
 005E2099    mov        dl,1
 005E209B    mov        eax,5E21D0; 'Password tidak sama!'
 005E20A0    call       MessageDlg
 005E20A5    call       Abort
 005E20AA    xor        eax,eax
 005E20AC    pop        edx
 005E20AD    pop        ecx
 005E20AE    pop        ecx
 005E20AF    mov        dword ptr fs:[eax],edx
 005E20B2    push       5E20E9
 005E20B7    lea        eax,[ebp-28]
 005E20BA    call       @LStrClr
 005E20BF    lea        eax,[ebp-24]
 005E20C2    mov        edx,3
 005E20C7    call       @LStrArrayClr
 005E20CC    lea        eax,[ebp-18]
 005E20CF    call       @VarClr
 005E20D4    lea        eax,[ebp-8]
 005E20D7    mov        edx,2
 005E20DC    call       @LStrArrayClr
 005E20E1    ret
<005E20E2    jmp        @HandleFinally
<005E20E7    jmp        005E20B7
 005E20E9    pop        esi
 005E20EA    pop        ebx
 005E20EB    mov        esp,ebp
 005E20ED    pop        ebp
 005E20EE    ret
*}
//end;

//005E21E8
procedure Tuseraddfrm.FormActivate;
begin
{*
 005E21E8    push       ebx
 005E21E9    mov        ebx,eax
 005E21EB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E21F0    mov        eax,dword ptr [eax]
 005E21F2    mov        eax,dword ptr [eax+60]; Tdm.group:TZQuery
 005E21F5    call       TDataSet.GetActive
 005E21FA    test       al,al
>005E21FC    jne        005E2212
 005E21FE    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2203    mov        eax,dword ptr [eax]
 005E2205    mov        eax,dword ptr [eax+60]; Tdm.group:TZQuery
 005E2208    mov        dl,1
 005E220A    mov        ecx,dword ptr [eax]
 005E220C    call       dword ptr [ecx+178]; TDataSet.SetActive
 005E2212    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2217    mov        eax,dword ptr [eax]
 005E2219    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E221C    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 005E2222    sub        al,2
>005E2224    jne        005E224F
 005E2226    xor        edx,edx
 005E2228    mov        eax,dword ptr [ebx+33C]; Tuseraddfrm.pwd:TDBEdit
 005E222E    mov        ecx,dword ptr [eax]
 005E2230    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E2233    xor        edx,edx
 005E2235    mov        eax,dword ptr [ebx+344]; Tuseraddfrm.repeatpwd:TEdit
 005E223B    mov        ecx,dword ptr [eax]
 005E223D    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E2240    xor        edx,edx
 005E2242    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E2248    mov        ecx,dword ptr [eax]
 005E224A    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E224D    pop        ebx
 005E224E    ret
 005E224F    mov        dl,1
 005E2251    mov        eax,dword ptr [ebx+33C]; Tuseraddfrm.pwd:TDBEdit
 005E2257    mov        ecx,dword ptr [eax]
 005E2259    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E225C    mov        dl,1
 005E225E    mov        eax,dword ptr [ebx+344]; Tuseraddfrm.repeatpwd:TEdit
 005E2264    mov        ecx,dword ptr [eax]
 005E2266    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E2269    mov        dl,1
 005E226B    mov        eax,dword ptr [ebx+32C]; Tuseraddfrm.username:TDBEdit
 005E2271    mov        ecx,dword ptr [eax]
 005E2273    call       dword ptr [ecx+64]; TControl.SetEnabled
 005E2276    pop        ebx
 005E2277    ret
*}
end;

//005E2278
procedure Tuseraddfrm.SpeedButton1Click;
begin
{*
 005E2278    call       005E1EFC
 005E227D    push       0
 005E227F    mov        cx,word ptr ds:[5E22D4]; 0x3
 005E2286    mov        dl,3
 005E2288    mov        eax,5E22E0; 'Simpan Record?'
 005E228D    call       MessageDlg
 005E2292    cmp        eax,6
>005E2295    jne        005E22D1
 005E2297    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E229C    mov        eax,dword ptr [eax]
 005E229E    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E22A1    mov        edx,dword ptr [eax]
 005E22A3    call       dword ptr [edx+24C]; TDataSet.Post
 005E22A9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E22AE    mov        eax,dword ptr [eax]
 005E22B0    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E22B3    call       0056F648
 005E22B8    mov        eax,[0061F980]; gvar_0061F980:Tuseraddfrm
 005E22BD    call       TCustomForm.Close
 005E22C2    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E22C7    mov        eax,dword ptr [eax]
 005E22C9    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E22CC    call       TDataSet.Refresh
 005E22D1    ret
*}
end;

//005E22F0
procedure Tuseraddfrm.FormCreate;
begin
{*
 005E22F0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E22F5    mov        eax,dword ptr [eax]
 005E22F7    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E22FA    call       TDataSet.GetActive
 005E22FF    test       al,al
>005E2301    jne        005E2317
 005E2303    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2308    mov        eax,dword ptr [eax]
 005E230A    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E230D    mov        dl,1
 005E230F    mov        ecx,dword ptr [eax]
 005E2311    call       dword ptr [ecx+178]; TDataSet.SetActive
 005E2317    ret
*}
end;

//005E2318
procedure Tuseraddfrm.SpeedButton2Click;
begin
{*
 005E2318    push       0
 005E231A    mov        cx,word ptr ds:[5E234C]; 0x3
 005E2321    mov        dl,3
 005E2323    mov        eax,5E2358; 'Batalkan Record?'
 005E2328    call       MessageDlg
 005E232D    cmp        eax,6
>005E2330    jne        005E234B
 005E2332    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2337    mov        eax,dword ptr [eax]
 005E2339    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E233C    call       0056F70C
 005E2341    mov        eax,[0061F980]; gvar_0061F980:Tuseraddfrm
 005E2346    call       TCustomForm.Close
 005E234B    ret
*}
end;

end.