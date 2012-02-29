{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit userlistun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, DBGrids, StdCtrls, Buttons;

type
  Tuserlistfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Panel2:TPanel;//f2FC
    Panel3:TPanel;//f300
    DBGrid1:TDBGrid;//f304
    Label1:TLabel;//f308
    Panel4:TPanel;//f30C
    Panel5:TPanel;//f310
    btnedit:TSpeedButton;//f314
    btnadd:TSpeedButton;//f318
    SpeedButton3:TSpeedButton;//f31C
    procedure FormCreate;
    procedure btnaddClick;
    procedure SpeedButton3Click;
    procedure btneditClick;
  end;

implementation

{$R *.DFM}

//005E2610
procedure Tuserlistfrm.FormCreate;
begin
{*
 005E2610    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2615    mov        eax,dword ptr [eax]
 005E2617    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E261A    call       TDataSet.GetActive
 005E261F    test       al,al
>005E2621    jne        005E2637
 005E2623    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2628    mov        eax,dword ptr [eax]
 005E262A    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E262D    mov        dl,1
 005E262F    mov        ecx,dword ptr [eax]
 005E2631    call       dword ptr [ecx+178]; TDataSet.SetActive
 005E2637    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E263C    mov        eax,dword ptr [eax]
 005E263E    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E2641    call       TDataSet.GetActive
 005E2646    test       al,al
>005E2648    jne        005E265E
 005E264A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E264F    mov        eax,dword ptr [eax]
 005E2651    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E2654    mov        dl,1
 005E2656    mov        ecx,dword ptr [eax]
 005E2658    call       dword ptr [ecx+178]; TDataSet.SetActive
 005E265E    ret
*}
end;

//005E2660
procedure Tuserlistfrm.btnaddClick;
begin
{*
 005E2660    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2665    mov        eax,dword ptr [eax]
 005E2667    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E266A    call       TDataSet.Append
 005E266F    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E2674    cmp        dword ptr [eax],0
>005E2677    jne        005E26A1
 005E2679    mov        ecx,dword ptr ds:[61B400]; ^gvar_0061F980:Tuseraddfrm
 005E267F    mov        eax,[0061BD04]; ^Application:TApplication
 005E2684    mov        eax,dword ptr [eax]
 005E2686    mov        edx,dword ptr ds:[5E1BF0]; Tuseraddfrm
 005E268C    call       TApplication.CreateForm
 005E2691    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E2696    mov        eax,dword ptr [eax]
 005E2698    mov        edx,dword ptr [eax]
 005E269A    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 005E26A0    ret
 005E26A1    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E26A6    mov        eax,dword ptr [eax]
 005E26A8    mov        edx,dword ptr [eax]
 005E26AA    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 005E26B0    ret
*}
end;

//005E26B4
procedure Tuserlistfrm.SpeedButton3Click;
begin
{*
 005E26B4    push       ebp
 005E26B5    mov        ebp,esp
 005E26B7    mov        ecx,7
 005E26BC    push       0
 005E26BE    push       0
 005E26C0    dec        ecx
<005E26C1    jne        005E26BC
 005E26C3    xor        eax,eax
 005E26C5    push       ebp
 005E26C6    push       5E2792
 005E26CB    push       dword ptr fs:[eax]
 005E26CE    mov        dword ptr fs:[eax],esp
 005E26D1    push       0
 005E26D3    lea        eax,[ebp-14]
 005E26D6    mov        edx,5E27A8; 'Anda Yakin menghapus user '
 005E26DB    call       @VarFromLStr
 005E26E0    lea        eax,[ebp-14]
 005E26E3    push       eax
 005E26E4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E26E9    mov        eax,dword ptr [eax]
 005E26EB    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E26EE    mov        edx,5E27CC; 'us_username'
 005E26F3    call       TDataSet.FieldByName
 005E26F8    lea        edx,[ebp-24]
 005E26FB    mov        ecx,dword ptr [eax]
 005E26FD    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E2700    lea        edx,[ebp-24]
 005E2703    pop        eax
 005E2704    call       @VarAdd
 005E2709    lea        eax,[ebp-14]
 005E270C    push       eax
 005E270D    mov        al,3F
 005E270F    mov        byte ptr [ebp-37],al
 005E2712    mov        byte ptr [ebp-38],1
 005E2716    lea        eax,[ebp-34]
 005E2719    lea        edx,[ebp-38]
 005E271C    call       @VarFromPStr
 005E2721    lea        edx,[ebp-34]
 005E2724    pop        eax
 005E2725    call       @VarAdd
 005E272A    lea        edx,[ebp-14]
 005E272D    lea        eax,[ebp-4]
 005E2730    call       @VarToLStr
 005E2735    mov        eax,dword ptr [ebp-4]
 005E2738    mov        cx,word ptr ds:[5E27D8]; 0x3
 005E273F    mov        dl,3
 005E2741    call       MessageDlg
 005E2746    cmp        eax,6
>005E2749    jne        005E2769
 005E274B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2750    mov        eax,dword ptr [eax]
 005E2752    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2755    call       TDataSet.Delete
 005E275A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E275F    mov        eax,dword ptr [eax]
 005E2761    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2764    call       0056F648
 005E2769    xor        eax,eax
 005E276B    pop        edx
 005E276C    pop        ecx
 005E276D    pop        ecx
 005E276E    mov        dword ptr fs:[eax],edx
 005E2771    push       5E2799
 005E2776    lea        eax,[ebp-34]
 005E2779    mov        edx,dword ptr ds:[401114]; Variant
 005E277F    mov        ecx,3
 005E2784    call       @FinalizeArray
 005E2789    lea        eax,[ebp-4]
 005E278C    call       @LStrClr
 005E2791    ret
<005E2792    jmp        @HandleFinally
<005E2797    jmp        005E2776
 005E2799    mov        esp,ebp
 005E279B    pop        ebp
 005E279C    ret
*}
end;

//005E27DC
procedure Tuserlistfrm.btneditClick;
begin
{*
 005E27DC    push       ebp
 005E27DD    mov        ebp,esp
 005E27DF    xor        ecx,ecx
 005E27E1    push       ecx
 005E27E2    push       ecx
 005E27E3    push       ecx
 005E27E4    push       ecx
 005E27E5    push       ebx
 005E27E6    xor        eax,eax
 005E27E8    push       ebp
 005E27E9    push       5E289B
 005E27EE    push       dword ptr fs:[eax]
 005E27F1    mov        dword ptr fs:[eax],esp
 005E27F4    mov        al,[005E28A8]; 0x1
 005E27F9    push       eax
 005E27FA    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E27FF    mov        eax,dword ptr [eax]
 005E2801    mov        eax,dword ptr [eax+5C]; Tdm.user:TZQuery
 005E2804    mov        edx,5E28B4; 'us_username'
 005E2809    call       TDataSet.FieldByName
 005E280E    lea        edx,[ebp-10]
 005E2811    mov        ecx,dword ptr [eax]
 005E2813    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E2816    lea        ecx,[ebp-10]
 005E2819    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E281E    mov        eax,dword ptr [eax]
 005E2820    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E2823    mov        edx,5E28B4; 'us_username'
 005E2828    mov        ebx,dword ptr [eax]
 005E282A    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005E2830    cmp        al,1
>005E2832    jne        005E2885
 005E2834    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 005E2839    mov        eax,dword ptr [eax]
 005E283B    mov        eax,dword ptr [eax+7C]; Tdm.useradd:TZQuery
 005E283E    call       TDataSet.Edit
 005E2843    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E2848    cmp        dword ptr [eax],0
>005E284B    jne        005E2876
 005E284D    mov        ecx,dword ptr ds:[61B400]; ^gvar_0061F980:Tuseraddfrm
 005E2853    mov        eax,[0061BD04]; ^Application:TApplication
 005E2858    mov        eax,dword ptr [eax]
 005E285A    mov        edx,dword ptr ds:[5E1BF0]; Tuseraddfrm
 005E2860    call       TApplication.CreateForm
 005E2865    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E286A    mov        eax,dword ptr [eax]
 005E286C    mov        edx,dword ptr [eax]
 005E286E    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
>005E2874    jmp        005E2885
 005E2876    mov        eax,[0061B400]; ^gvar_0061F980:Tuseraddfrm
 005E287B    mov        eax,dword ptr [eax]
 005E287D    mov        edx,dword ptr [eax]
 005E287F    call       dword ptr [edx+0EC]; TCustomForm.ShowModal
 005E2885    xor        eax,eax
 005E2887    pop        edx
 005E2888    pop        ecx
 005E2889    pop        ecx
 005E288A    mov        dword ptr fs:[eax],edx
 005E288D    push       5E28A2
 005E2892    lea        eax,[ebp-10]
 005E2895    call       @VarClr
 005E289A    ret
<005E289B    jmp        @HandleFinally
<005E28A0    jmp        005E2892
 005E28A2    pop        ebx
 005E28A3    mov        esp,ebp
 005E28A5    pop        ebp
 005E28A6    ret
*}
end;

end.