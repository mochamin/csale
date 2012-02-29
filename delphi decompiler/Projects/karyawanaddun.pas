{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit karyawanaddun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
  Tkaryawanaddfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btntambah:TSpeedButton;//f30C
    btnbatal:TSpeedButton;//f310
    btnsimpan:TSpeedButton;//f314
    pagebio:TPageControl;//f318
    tab1:TTabSheet;//f31C
    tab2:TTabSheet;//f320
    noninduk:TDBEdit;//f324
    namadepan:TDBEdit;//f328
    namabelakang:TDBEdit;//f32C
    jk:TDBComboBox;//f330
    tempatlahir:TDBEdit;//f334
    tgllahir:TDBEdit;//f338
    status:TDBComboBox;//f33C
    alamat:TDBMemo;//f340
    kota:TDBEdit;//f344
    hp:TDBEdit;//f348
    email:TDBEdit;//f34C
    Label12:TLabel;//f350
    Label11:TLabel;//f354
    Label10:TLabel;//f358
    Label9:TLabel;//f35C
    Label7:TLabel;//f360
    Label6:TLabel;//f364
    Label5:TLabel;//f368
    Label8:TLabel;//f36C
    Label4:TLabel;//f370
    Label3:TLabel;//f374
    Label2:TLabel;//f378
    Label14:TLabel;//f37C
    mulaikerja:TDBEdit;//f380
    Label15:TLabel;//f384
    brhntikerja:TDBEdit;//f388
    Label16:TLabel;//f38C
    limit:TDBEdit;//f390
    Label17:TLabel;//f394
    dpt:TDBLookupComboBox;//f398
    Label18:TLabel;//f39C
    levelgaji:TDBLookupComboBox;//f3A0
    Label19:TLabel;//f3A4
    metodabayar:TDBComboBox;//f3A8
    namabank:TDBLookupComboBox;//f3AC
    Label20:TLabel;//f3B0
    Label21:TLabel;//f3B4
    norek:TDBEdit;//f3B8
    SpeedButton1:TSpeedButton;//f3BC
    SpeedButton2:TSpeedButton;//f3C0
    SpeedButton4:TSpeedButton;//f3C4
    Bevel1:TBevel;//f3C8
    Label13:TLabel;//f3CC
    Label22:TLabel;//f3D0
    Label23:TLabel;//f3D4
    SpeedButton5:TSpeedButton;//f3D8
    ptkp:TDBLookupComboBox;//f3DC
    npwp:TDBEdit;//f3E0
    tglnpwp:TDBEdit;//f3E4
    Label24:TLabel;//f3E8
    jtbn:TDBLookupComboBox;//f3EC
    SpeedButton6:TSpeedButton;//f3F0
    procedure btntambahClick;
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure FormActivate;
    procedure SpeedButton6Click;
    procedure SpeedButton2Click;
    procedure tab2Enter;
    procedure SpeedButton4Click;
    procedure SpeedButton5Click;
    procedure SpeedButton1Click;
  end;

implementation

{$R *.DFM}

//0060D0A4
procedure Tkaryawanaddfrm.btntambahClick;
begin
{*
 0060D0A4    push       ebx
 0060D0A5    mov        ebx,eax
 0060D0A7    mov        dl,1
 0060D0A9    mov        eax,dword ptr [ebx+314]; Tkaryawanaddfrm.btnsimpan:TSpeedButton
 0060D0AF    call       TControl.SetVisible
 0060D0B4    mov        dl,1
 0060D0B6    mov        eax,dword ptr [ebx+310]; Tkaryawanaddfrm.btnbatal:TSpeedButton
 0060D0BC    call       TControl.SetVisible
 0060D0C1    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D0C6    mov        eax,dword ptr [eax]
 0060D0C8    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D0CE    call       TDataSet.Append
 0060D0D3    mov        eax,dword ptr [ebx+324]; Tkaryawanaddfrm.noninduk:TDBEdit
 0060D0D9    mov        edx,dword ptr [eax]
 0060D0DB    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 0060D0E1    pop        ebx
 0060D0E2    ret
*}
end;

//0060D0E4
procedure Tkaryawanaddfrm.btnsimpanClick;
begin
{*
 0060D0E4    push       ebp
 0060D0E5    mov        ebp,esp
 0060D0E7    xor        ecx,ecx
 0060D0E9    push       ecx
 0060D0EA    push       ecx
 0060D0EB    push       ecx
 0060D0EC    push       ecx
 0060D0ED    push       ecx
 0060D0EE    push       ecx
 0060D0EF    push       ebx
 0060D0F0    mov        ebx,eax
 0060D0F2    xor        eax,eax
 0060D0F4    push       ebp
 0060D0F5    push       60D2E3
 0060D0FA    push       dword ptr fs:[eax]
 0060D0FD    mov        dword ptr fs:[eax],esp
 0060D100    lea        edx,[ebp-4]
 0060D103    mov        eax,dword ptr [ebx+324]; Tkaryawanaddfrm.noninduk:TDBEdit
 0060D109    call       TCustomMaskEdit.GetText
 0060D10E    mov        eax,dword ptr [ebp-4]
 0060D111    call       @LStrLen
 0060D116    test       eax,eax
>0060D118    jne        0060D154
 0060D11A    mov        eax,60D2F8; 'No Induk Harus diisi!'
 0060D11F    call       ShowMessage
 0060D124    mov        eax,dword ptr [ebx+318]; Tkaryawanaddfrm.pagebio:TPageControl
 0060D12A    call       TPageControl.GetActivePageIndex
 0060D12F    dec        eax
>0060D130    jne        0060D141
 0060D132    mov        cl,1
 0060D134    mov        dl,1
 0060D136    mov        eax,dword ptr [ebx+318]; Tkaryawanaddfrm.pagebio:TPageControl
 0060D13C    call       TPageControl.SelectNextPage
 0060D141    mov        eax,dword ptr [ebx+324]; Tkaryawanaddfrm.noninduk:TDBEdit
 0060D147    mov        edx,dword ptr [eax]
 0060D149    call       dword ptr [edx+0C4]; TWinControl.SetFocus
>0060D14F    jmp        0060D2BD
 0060D154    push       0
 0060D156    mov        cx,word ptr ds:[60D310]; 0x3
 0060D15D    mov        dl,3
 0060D15F    mov        eax,60D31C; 'Simpan Data ini? '
 0060D164    call       MessageDlg
 0060D169    cmp        eax,6
>0060D16C    jne        0060D2BD
 0060D172    mov        eax,[0061B554]
 0060D177    cmp        dword ptr [eax],1
>0060D17A    jne        0060D24B
 0060D180    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D185    mov        eax,dword ptr [eax]
 0060D187    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D18D    call       TDataSet.Edit
 0060D192    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D197    mov        eax,dword ptr [eax]
 0060D199    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D19F    mov        edx,dword ptr [eax]
 0060D1A1    call       dword ptr [edx+24C]; TDataSet.Post
 0060D1A7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D1AC    mov        eax,dword ptr [eax]
 0060D1AE    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D1B4    call       0056F648
 0060D1B9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D1BE    mov        eax,dword ptr [eax]
 0060D1C0    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D1C6    call       TDataSet.Edit
 0060D1CB    lea        edx,[ebp-18]
 0060D1CE    mov        eax,dword ptr [ebx+324]; Tkaryawanaddfrm.noninduk:TDBEdit
 0060D1D4    call       TCustomMaskEdit.GetText
 0060D1D9    mov        edx,dword ptr [ebp-18]
 0060D1DC    lea        eax,[ebp-14]
 0060D1DF    call       @VarFromLStr
 0060D1E4    lea        eax,[ebp-14]
 0060D1E7    push       eax
 0060D1E8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D1ED    mov        eax,dword ptr [eax]
 0060D1EF    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D1F5    mov        edx,60D338; 'kd_no_induk'
 0060D1FA    call       TDataSet.FieldByName
 0060D1FF    pop        edx
 0060D200    mov        ecx,dword ptr [eax]
 0060D202    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060D208    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D20D    mov        eax,dword ptr [eax]
 0060D20F    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D215    mov        edx,dword ptr [eax]
 0060D217    call       dword ptr [edx+24C]; TDataSet.Post
 0060D21D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D222    mov        eax,dword ptr [eax]
 0060D224    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D22A    call       0056F648
 0060D22F    xor        edx,edx
 0060D231    mov        eax,dword ptr [ebx+314]; Tkaryawanaddfrm.btnsimpan:TSpeedButton
 0060D237    call       TControl.SetVisible
 0060D23C    xor        edx,edx
 0060D23E    mov        eax,dword ptr [ebx+310]; Tkaryawanaddfrm.btnbatal:TSpeedButton
 0060D244    call       TControl.SetVisible
>0060D249    jmp        0060D2BD
 0060D24B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D250    mov        eax,dword ptr [eax]
 0060D252    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D258    call       TDataSet.Edit
 0060D25D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D262    mov        eax,dword ptr [eax]
 0060D264    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D26A    mov        edx,dword ptr [eax]
 0060D26C    call       dword ptr [edx+24C]; TDataSet.Post
 0060D272    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D277    mov        eax,dword ptr [eax]
 0060D279    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D27F    call       0056F648
 0060D284    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D289    mov        eax,dword ptr [eax]
 0060D28B    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D291    call       TDataSet.Edit
 0060D296    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D29B    mov        eax,dword ptr [eax]
 0060D29D    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D2A3    mov        edx,dword ptr [eax]
 0060D2A5    call       dword ptr [edx+24C]; TDataSet.Post
 0060D2AB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D2B0    mov        eax,dword ptr [eax]
 0060D2B2    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D2B8    call       0056F648
 0060D2BD    xor        eax,eax
 0060D2BF    pop        edx
 0060D2C0    pop        ecx
 0060D2C1    pop        ecx
 0060D2C2    mov        dword ptr fs:[eax],edx
 0060D2C5    push       60D2EA
 0060D2CA    lea        eax,[ebp-18]
 0060D2CD    call       @LStrClr
 0060D2D2    lea        eax,[ebp-14]
 0060D2D5    call       @VarClr
 0060D2DA    lea        eax,[ebp-4]
 0060D2DD    call       @LStrClr
 0060D2E2    ret
<0060D2E3    jmp        @HandleFinally
<0060D2E8    jmp        0060D2CA
 0060D2EA    pop        ebx
 0060D2EB    mov        esp,ebp
 0060D2ED    pop        ebp
 0060D2EE    ret
*}
end;

//0060D344
procedure Tkaryawanaddfrm.btnbatalClick;
begin
{*
 0060D344    push       ebx
 0060D345    mov        ebx,eax
 0060D347    push       0
 0060D349    mov        cx,word ptr ds:[60D3A4]; 0x3
 0060D350    mov        dl,3
 0060D352    mov        eax,60D3B0; 'Simpan Data ini? '
 0060D357    call       MessageDlg
 0060D35C    cmp        eax,6
>0060D35F    jne        0060D39F
 0060D361    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D366    mov        eax,dword ptr [eax]
 0060D368    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D36E    call       0056F70C
 0060D373    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D378    mov        eax,dword ptr [eax]
 0060D37A    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060D380    call       0056F70C
 0060D385    xor        edx,edx
 0060D387    mov        eax,dword ptr [ebx+314]; Tkaryawanaddfrm.btnsimpan:TSpeedButton
 0060D38D    call       TControl.SetVisible
 0060D392    xor        edx,edx
 0060D394    mov        eax,dword ptr [ebx+310]; Tkaryawanaddfrm.btnbatal:TSpeedButton
 0060D39A    call       TControl.SetVisible
 0060D39F    pop        ebx
 0060D3A0    ret
*}
end;

//0060D3C4
procedure Tkaryawanaddfrm.FormActivate;
begin
{*
 0060D3C4    push       ebx
 0060D3C5    mov        ebx,eax
 0060D3C7    xor        edx,edx
 0060D3C9    mov        eax,dword ptr [ebx+318]; Tkaryawanaddfrm.pagebio:TPageControl
 0060D3CF    call       TPageControl.SetActivePageIndex
 0060D3D4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D3D9    mov        eax,dword ptr [eax]
 0060D3DB    mov        eax,dword ptr [eax+654]; Tdm.jobdes:TZQuery
 0060D3E1    call       005D8634
 0060D3E6    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D3EB    mov        eax,dword ptr [eax]
 0060D3ED    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060D3F3    call       005D8634
 0060D3F8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D3FD    mov        eax,dword ptr [eax]
 0060D3FF    mov        eax,dword ptr [eax+6EC]; Tdm.dept:TZQuery
 0060D405    call       005D8634
 0060D40A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D40F    mov        eax,dword ptr [eax]
 0060D411    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060D417    call       005D8634
 0060D41C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D421    mov        eax,dword ptr [eax]
 0060D423    mov        eax,dword ptr [eax+704]; Tdm.bank:TZQuery
 0060D429    call       005D8634
 0060D42E    mov        eax,[0061B554]
 0060D433    cmp        dword ptr [eax],1
>0060D436    jne        0060D446
 0060D438    mov        eax,dword ptr [ebx+324]; Tkaryawanaddfrm.noninduk:TDBEdit
 0060D43E    mov        edx,dword ptr [eax]
 0060D440    call       dword ptr [edx+0C4]; TWinControl.SetFocus
 0060D446    pop        ebx
 0060D447    ret
*}
end;

//0060D448
procedure Tkaryawanaddfrm.SpeedButton6Click;
begin
{*
 0060D448    mov        eax,[0061B35C]
 0060D44D    mov        eax,dword ptr [eax]
 0060D44F    mov        edx,dword ptr ds:[609718]; Tjobdesfrm
 0060D455    call       005D859C
 0060D45A    ret
*}
end;

//0060D45C
procedure Tkaryawanaddfrm.SpeedButton2Click;
begin
{*
 0060D45C    mov        eax,[0061B53C]
 0060D461    mov        eax,dword ptr [eax]
 0060D463    mov        edx,dword ptr ds:[60B22C]; Tsalarylevelfrm
 0060D469    call       005D859C
 0060D46E    ret
*}
end;

//0060D470
procedure Tkaryawanaddfrm.tab2Enter;
begin
{*
 0060D470    mov        eax,[0061B554]
 0060D475    cmp        dword ptr [eax],1
>0060D478    jne        0060D48F
 0060D47A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060D47F    mov        eax,dword ptr [eax]
 0060D481    mov        eax,dword ptr [eax+658]; Tdm.karyawan:TZQuery
 0060D487    mov        edx,dword ptr [eax]
 0060D489    call       dword ptr [edx+24C]; TDataSet.Post
 0060D48F    ret
*}
end;

//0060D490
procedure Tkaryawanaddfrm.SpeedButton4Click;
begin
{*
 0060D490    mov        eax,[0061BEAC]
 0060D495    mov        eax,dword ptr [eax]
 0060D497    mov        edx,dword ptr ds:[60BAA8]; Tbankfrm
 0060D49D    call       005D859C
 0060D4A2    ret
*}
end;

//0060D4A4
procedure Tkaryawanaddfrm.SpeedButton5Click;
begin
{*
 0060D4A4    mov        eax,[0061C118]
 0060D4A9    mov        eax,dword ptr [eax]
 0060D4AB    mov        edx,dword ptr ds:[60C150]; Tptkpfrm
 0060D4B1    call       005D859C
 0060D4B6    ret
*}
end;

//0060D4B8
procedure Tkaryawanaddfrm.SpeedButton1Click;
begin
{*
 0060D4B8    mov        eax,[0061B320]
 0060D4BD    mov        eax,dword ptr [eax]
 0060D4BF    mov        edx,dword ptr ds:[60C798]; Tdeptfrm
 0060D4C5    call       005D859C
 0060D4CA    ret
*}
end;

end.