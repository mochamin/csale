{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salaryleveladdun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DBGrids;

type
  Tsalaryleveladdfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    mulaikerja:TDBEdit;//f314
    DBEdit1:TDBEdit;//f318
    Panel3:TPanel;//f31C
    btntambah:TSpeedButton;//f320
    btnbatal:TSpeedButton;//f324
    btnsimpan:TSpeedButton;//f328
    Label4:TLabel;//f32C
    DBEdit2:TDBEdit;//f330
    PageControl1:TPageControl;//f334
    TabSheet1:TTabSheet;//f338
    TabSheet2:TTabSheet;//f33C
    DBGrid1:TDBGrid;//f340
    DBGrid2:TDBGrid;//f344
    procedure btnsimpanClick;
    procedure btnbatalClick;
    procedure btntambahClick;
    //procedure DBGrid2KeyDown(?:?; ?:?);
    procedure FormActivate;
    procedure Panel2Enter;
    procedure Panel2Exit;
    //procedure DBGrid1KeyDown(?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0060AFA8
procedure Tsalaryleveladdfrm.btnsimpanClick;
begin
{*
 0060AFA8    push       ebx
 0060AFA9    mov        ebx,eax
 0060AFAB    push       0
 0060AFAD    mov        cx,word ptr ds:[60B090]; 0x3
 0060AFB4    mov        dl,3
 0060AFB6    mov        eax,60B09C; 'Simpan Record ini?'
 0060AFBB    call       MessageDlg
 0060AFC0    cmp        eax,6
>0060AFC3    jne        0060B08E
 0060AFC9    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AFCE    mov        eax,dword ptr [eax]
 0060AFD0    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060AFD6    call       TDataSet.Edit
 0060AFDB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AFE0    mov        eax,dword ptr [eax]
 0060AFE2    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060AFE8    mov        edx,dword ptr [eax]
 0060AFEA    call       dword ptr [edx+24C]; TDataSet.Post
 0060AFF0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060AFF5    mov        eax,dword ptr [eax]
 0060AFF7    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060AFFD    call       0056F648
 0060B002    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B007    mov        eax,dword ptr [eax]
 0060B009    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B00F    call       TDataSet.Edit
 0060B014    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B019    mov        eax,dword ptr [eax]
 0060B01B    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B021    mov        edx,dword ptr [eax]
 0060B023    call       dword ptr [edx+24C]; TDataSet.Post
 0060B029    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B02E    mov        eax,dword ptr [eax]
 0060B030    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B036    call       0056F648
 0060B03B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B040    mov        eax,dword ptr [eax]
 0060B042    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B048    call       TDataSet.Edit
 0060B04D    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B052    mov        eax,dword ptr [eax]
 0060B054    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B05A    mov        edx,dword ptr [eax]
 0060B05C    call       dword ptr [edx+24C]; TDataSet.Post
 0060B062    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B067    mov        eax,dword ptr [eax]
 0060B069    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B06F    call       0056F648
 0060B074    xor        edx,edx
 0060B076    mov        eax,dword ptr [ebx+328]; Tsalaryleveladdfrm.btnsimpan:TSpeedButton
 0060B07C    call       TControl.SetVisible
 0060B081    xor        edx,edx
 0060B083    mov        eax,dword ptr [ebx+324]; Tsalaryleveladdfrm.btnbatal:TSpeedButton
 0060B089    call       TControl.SetVisible
 0060B08E    pop        ebx
 0060B08F    ret
*}
end;

//0060B0B0
procedure Tsalaryleveladdfrm.btnbatalClick;
begin
{*
 0060B0B0    push       ebx
 0060B0B1    mov        ebx,eax
 0060B0B3    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B0B8    mov        eax,dword ptr [eax]
 0060B0BA    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B0C0    call       005D86A0
 0060B0C5    xor        edx,edx
 0060B0C7    mov        eax,dword ptr [ebx+328]; Tsalaryleveladdfrm.btnsimpan:TSpeedButton
 0060B0CD    call       TControl.SetVisible
 0060B0D2    xor        edx,edx
 0060B0D4    mov        eax,dword ptr [ebx+324]; Tsalaryleveladdfrm.btnbatal:TSpeedButton
 0060B0DA    call       TControl.SetVisible
 0060B0DF    pop        ebx
 0060B0E0    ret
*}
end;

//0060B0E4
procedure Tsalaryleveladdfrm.btntambahClick;
begin
{*
 0060B0E4    push       ebx
 0060B0E5    mov        ebx,eax
 0060B0E7    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B0EC    mov        eax,dword ptr [eax]
 0060B0EE    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B0F4    call       TDataSet.Append
 0060B0F9    mov        dl,1
 0060B0FB    mov        eax,dword ptr [ebx+328]; Tsalaryleveladdfrm.btnsimpan:TSpeedButton
 0060B101    call       TControl.SetVisible
 0060B106    mov        dl,1
 0060B108    mov        eax,dword ptr [ebx+324]; Tsalaryleveladdfrm.btnbatal:TSpeedButton
 0060B10E    call       TControl.SetVisible
 0060B113    pop        ebx
 0060B114    ret
*}
end;

//0060B118
//procedure Tsalaryleveladdfrm.DBGrid2KeyDown(?:?; ?:?);
//begin
{*
 0060B118    push       ebp
 0060B119    mov        ebp,esp
 0060B11B    push       ebx
 0060B11C    mov        ebx,ecx
 0060B11E    cmp        word ptr [ebx],0D
>0060B122    jne        0060B136
 0060B124    mov        eax,[0061C458]
 0060B129    mov        eax,dword ptr [eax]
 0060B12B    mov        edx,dword ptr ds:[609ED4]; Tsalaryleveltambahfrm
 0060B131    call       005D859C
 0060B136    cmp        word ptr [ebx],2E
>0060B13A    jne        0060B14E
 0060B13C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B141    mov        eax,dword ptr [eax]
 0060B143    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B149    call       005D85D0
 0060B14E    pop        ebx
 0060B14F    pop        ebp
 0060B150    ret        4
*}
//end;

//0060B154
procedure Tsalaryleveladdfrm.FormActivate;
begin
{*
 0060B154    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B159    mov        eax,dword ptr [eax]
 0060B15B    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B161    call       005D8634
 0060B166    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B16B    mov        eax,dword ptr [eax]
 0060B16D    mov        eax,dword ptr [eax+888]; Tdm.salary_level_detail_t:TZQuery
 0060B173    call       005D8634
 0060B178    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B17D    mov        eax,dword ptr [eax]
 0060B17F    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B185    call       005D8634
 0060B18A    ret
*}
end;

//0060B18C
procedure Tsalaryleveladdfrm.Panel2Enter;
begin
{*
 0060B18C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B191    mov        eax,dword ptr [eax]
 0060B193    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B199    call       TDataSet.Edit
 0060B19E    ret
*}
end;

//0060B1A0
procedure Tsalaryleveladdfrm.Panel2Exit;
begin
{*
 0060B1A0    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B1A5    mov        eax,dword ptr [eax]
 0060B1A7    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060B1AD    mov        edx,dword ptr [eax]
 0060B1AF    call       dword ptr [edx+24C]; TDataSet.Post
 0060B1B5    ret
*}
end;

//0060B1B8
//procedure Tsalaryleveladdfrm.DBGrid1KeyDown(?:?; ?:?);
//begin
{*
 0060B1B8    push       ebp
 0060B1B9    mov        ebp,esp
 0060B1BB    push       ebx
 0060B1BC    mov        ebx,ecx
 0060B1BE    cmp        word ptr [ebx],0D
>0060B1C2    jne        0060B1D6
 0060B1C4    mov        eax,[0061BCBC]
 0060B1C9    mov        eax,dword ptr [eax]
 0060B1CB    mov        edx,dword ptr ds:[60A73C]; Tpenguranggajifrm
 0060B1D1    call       005D859C
 0060B1D6    cmp        word ptr [ebx],2E
>0060B1DA    jne        0060B1EE
 0060B1DC    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060B1E1    mov        eax,dword ptr [eax]
 0060B1E3    mov        eax,dword ptr [eax+8A0]; Tdm.salary_level_detail_k:TZQuery
 0060B1E9    call       005D85D0
 0060B1EE    pop        ebx
 0060B1EF    pop        ebp
 0060B1F0    ret        4
*}
//end;

end.