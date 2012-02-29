{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salary_prosesun;

interface

uses
  Classes, Windows, Graphics, Forms, StdCtrls, ExtCtrls, Buttons;

type
  Tsalaryprosesfrm = class(TForm)
    cbperiode:TComboBox;//f2F8
    Panel1:TPanel;//f2FC
    Label1:TLabel;//f300
    Panel4:TPanel;//f304
    Panel5:TPanel;//f308
    Panel3:TPanel;//f30C
    btntambah:TSpeedButton;//f310
    SpeedButton1:TSpeedButton;//f314
    Label2:TLabel;//f318
    procedure Button1Click;
    procedure FormCreate;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060E338
//procedure sub_0060E338(?:Tsalaryprosesfrm);
//begin
{*
 0060E338    push       ebp
 0060E339    mov        ebp,esp
 0060E33B    mov        ecx,7B
 0060E340    push       0
 0060E342    push       0
 0060E344    dec        ecx
<0060E345    jne        0060E340
 0060E347    push       ecx
 0060E348    push       ebx
 0060E349    push       esi
 0060E34A    push       edi
 0060E34B    mov        dword ptr [ebp-4],eax
 0060E34E    mov        ebx,dword ptr ds:[61BE88]; ^gvar_0061F968:Tdm
 0060E354    xor        eax,eax
 0060E356    push       ebp
 0060E357    push       60F14B
 0060E35C    push       dword ptr fs:[eax]
 0060E35F    mov        dword ptr fs:[eax],esp
 0060E362    mov        eax,dword ptr [ebx]
 0060E364    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060E36A    call       005D8634
 0060E36F    mov        eax,dword ptr [ebx]
 0060E371    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060E377    call       005D8634
 0060E37C    mov        eax,dword ptr [ebx]
 0060E37E    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E384    call       005D8634
 0060E389    mov        eax,dword ptr [ebx]
 0060E38B    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060E391    call       005D8634
 0060E396    mov        eax,dword ptr [ebx]
 0060E398    mov        esi,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060E39E    mov        eax,esi
 0060E3A0    call       TDataSet.First
>0060E3A5    jmp        0060EB60
 0060E3AA    mov        edx,60F164; 'kr_cek'
 0060E3AF    mov        eax,esi
 0060E3B1    call       TDataSet.FieldByName
 0060E3B6    lea        edx,[ebp-20]
 0060E3B9    mov        ecx,dword ptr [eax]
 0060E3BB    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E3BE    lea        eax,[ebp-20]
 0060E3C1    push       eax
 0060E3C2    mov        al,58
 0060E3C4    mov        byte ptr [ebp-33],al
 0060E3C7    mov        byte ptr [ebp-34],1
 0060E3CB    lea        eax,[ebp-30]
 0060E3CE    lea        edx,[ebp-34]
 0060E3D1    call       @VarFromPStr
 0060E3D6    lea        edx,[ebp-30]
 0060E3D9    pop        eax
 0060E3DA    call       @VarCmpEQ
>0060E3DF    jne        0060EB59
 0060E3E5    mov        al,[0060F16C]; 0x1
 0060E3EA    push       eax
 0060E3EB    mov        edx,60F178; 'kr_no_induk'
 0060E3F0    mov        eax,esi
 0060E3F2    call       TDataSet.FieldByName
 0060E3F7    lea        edx,[ebp-44]
 0060E3FA    mov        ecx,dword ptr [eax]
 0060E3FC    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E3FF    lea        ecx,[ebp-44]
 0060E402    mov        eax,dword ptr [ebx]
 0060E404    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060E40A    mov        edx,60F18C; 'kd_no_induk'
 0060E40F    mov        edi,dword ptr [eax]
 0060E411    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 0060E417    cmp        al,1
>0060E419    jne        0060E6F9
 0060E41F    mov        eax,dword ptr [ebx]
 0060E421    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060E427    mov        edx,60F1A0; 'kd_sl_kode'
 0060E42C    call       TDataSet.FieldByName
 0060E431    lea        edx,[ebp-54]
 0060E434    mov        ecx,dword ptr [eax]
 0060E436    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E439    lea        edx,[ebp-54]
 0060E43C    lea        eax,[ebp-0C]
 0060E43F    call       @VarToLStr
 0060E444    mov        al,[0060F16C]; 0x1
 0060E449    push       eax
 0060E44A    lea        eax,[ebp-64]
 0060E44D    mov        edx,dword ptr [ebp-0C]
 0060E450    call       @VarFromLStr
 0060E455    lea        ecx,[ebp-64]
 0060E458    mov        eax,dword ptr [ebx]
 0060E45A    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060E460    mov        edx,60F1B4; 'sl_kode'
 0060E465    mov        edi,dword ptr [eax]
 0060E467    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 0060E46D    cmp        al,1
>0060E46F    jne        0060E689
 0060E475    mov        eax,dword ptr [ebx]
 0060E477    mov        edi,dword ptr [eax+8FC]; Tdm.salarytambahcount:TZQuery
 0060E47D    mov        eax,edi
 0060E47F    call       TZReadOnlyQuery.GetSQL
 0060E484    mov        edx,60F1C4; 'select sum(sd_amount) as tambah from salary_level_detail where sd_jenis=(:tm) and sd_kode = (:kd)'
 0060E489    mov        ecx,dword ptr [eax]
 0060E48B    call       dword ptr [ecx+2C]
 0060E48E    mov        eax,dword ptr [edi+1B4]; TZQuery.?f1B4:TParams
 0060E494    mov        edx,60F230; 'kd'
 0060E499    call       TParams.ParamByName
 0060E49E    push       eax
 0060E49F    lea        eax,[ebp-74]
 0060E4A2    mov        edx,dword ptr [ebp-0C]
 0060E4A5    call       @VarFromLStr
 0060E4AA    lea        edx,[ebp-74]
 0060E4AD    pop        eax
 0060E4AE    call       TParam.SetAsVariant
 0060E4B3    mov        eax,dword ptr [edi+1B4]; TZQuery.?f1B4:TParams
 0060E4B9    mov        edx,60F23C; 'tm'
 0060E4BE    call       TParams.ParamByName
 0060E4C3    push       eax
 0060E4C4    lea        eax,[ebp-84]
 0060E4CA    mov        edx,60F248; 'tambah'
 0060E4CF    call       @VarFromLStr
 0060E4D4    lea        edx,[ebp-84]
 0060E4DA    pop        eax
 0060E4DB    call       TParam.SetAsVariant
 0060E4E0    mov        eax,edi
 0060E4E2    call       TDataSet.Open
 0060E4E7    mov        edx,60F248; 'tambah'
 0060E4EC    mov        eax,edi
 0060E4EE    call       TDataSet.FieldByName
 0060E4F3    lea        edx,[ebp-94]
 0060E4F9    mov        ecx,dword ptr [eax]
 0060E4FB    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E4FE    lea        eax,[ebp-94]
 0060E504    push       eax
 0060E505    lea        eax,[ebp-0A4]
 0060E50B    xor        edx,edx
 0060E50D    mov        cl,1
 0060E50F    call       @VarFromInt
 0060E514    lea        edx,[ebp-0A4]
 0060E51A    pop        eax
 0060E51B    call       @VarCmpGT
>0060E520    jle        0060E54D
 0060E522    mov        edx,60F248; 'tambah'
 0060E527    mov        eax,edi
 0060E529    call       TDataSet.FieldByName
 0060E52E    lea        edx,[ebp-0B4]
 0060E534    mov        ecx,dword ptr [eax]
 0060E536    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E539    lea        eax,[ebp-0B4]
 0060E53F    call       @VarToReal
 0060E544    fstp       qword ptr ds:[61FB6C]; gvar_0061FB6C
 0060E54A    wait
>0060E54B    jmp        0060E55B
 0060E54D    xor        eax,eax
 0060E54F    mov        dword ptr ds:[61FB6C],eax; gvar_0061FB6C
 0060E555    mov        dword ptr ds:[61FB70],eax; gvar_0061FB70
 0060E55B    mov        eax,dword ptr [ebx]
 0060E55D    mov        eax,dword ptr [eax+6F0]; Tdm.salary_level:TZQuery
 0060E563    mov        edx,60F258; 'sl_amount'
 0060E568    call       TDataSet.FieldByName
 0060E56D    lea        edx,[ebp-0C4]
 0060E573    mov        ecx,dword ptr [eax]
 0060E575    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E578    lea        eax,[ebp-0C4]
 0060E57E    call       @VarToReal
 0060E583    fstp       qword ptr ds:[61FB24]
 0060E589    wait
 0060E58A    fld        qword ptr ds:[61FB24]
 0060E590    fadd       qword ptr ds:[61FB6C]; gvar_0061FB6C
 0060E596    fstp       qword ptr ds:[61FB44]
 0060E59C    wait
 0060E59D    mov        eax,dword ptr [ebx]
 0060E59F    mov        edi,dword ptr [eax+900]; Tdm.salarykurangcount:TZQuery
 0060E5A5    mov        eax,edi
 0060E5A7    call       TZReadOnlyQuery.GetSQL
 0060E5AC    mov        edx,60F26C; 'select sum(sd_amount) as kurang from salary_level_detail where sd_jenis=(:kr) and sd_kode = (:kd)'
 0060E5B1    mov        ecx,dword ptr [eax]
 0060E5B3    call       dword ptr [ecx+2C]
 0060E5B6    mov        eax,dword ptr [edi+1B4]; TZQuery.?f1B4:TParams
 0060E5BC    mov        edx,60F230; 'kd'
 0060E5C1    call       TParams.ParamByName
 0060E5C6    push       eax
 0060E5C7    lea        eax,[ebp-0D4]
 0060E5CD    mov        edx,dword ptr [ebp-0C]
 0060E5D0    call       @VarFromLStr
 0060E5D5    lea        edx,[ebp-0D4]
 0060E5DB    pop        eax
 0060E5DC    call       TParam.SetAsVariant
 0060E5E1    mov        eax,dword ptr [edi+1B4]; TZQuery.?f1B4:TParams
 0060E5E7    mov        edx,60F2D8; 'kr'
 0060E5EC    call       TParams.ParamByName
 0060E5F1    push       eax
 0060E5F2    lea        eax,[ebp-0E4]
 0060E5F8    mov        edx,60F2E4; 'kurang'
 0060E5FD    call       @VarFromLStr
 0060E602    lea        edx,[ebp-0E4]
 0060E608    pop        eax
 0060E609    call       TParam.SetAsVariant
 0060E60E    mov        eax,edi
 0060E610    call       TDataSet.Open
 0060E615    mov        edx,60F2E4; 'kurang'
 0060E61A    mov        eax,edi
 0060E61C    call       TDataSet.FieldByName
 0060E621    lea        edx,[ebp-0F4]
 0060E627    mov        ecx,dword ptr [eax]
 0060E629    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E62C    lea        eax,[ebp-0F4]
 0060E632    push       eax
 0060E633    lea        eax,[ebp-104]
 0060E639    xor        edx,edx
 0060E63B    mov        cl,1
 0060E63D    call       @VarFromInt
 0060E642    lea        edx,[ebp-104]
 0060E648    pop        eax
 0060E649    call       @VarCmpGT
>0060E64E    jle        0060E67B
 0060E650    mov        edx,60F2E4; 'kurang'
 0060E655    mov        eax,edi
 0060E657    call       TDataSet.FieldByName
 0060E65C    lea        edx,[ebp-114]
 0060E662    mov        ecx,dword ptr [eax]
 0060E664    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E667    lea        eax,[ebp-114]
 0060E66D    call       @VarToReal
 0060E672    fstp       qword ptr ds:[61FB64]; gvar_0061FB64
 0060E678    wait
>0060E679    jmp        0060E689
 0060E67B    xor        eax,eax
 0060E67D    mov        dword ptr ds:[61FB64],eax; gvar_0061FB64
 0060E683    mov        dword ptr ds:[61FB68],eax; gvar_0061FB68
 0060E689    fld        qword ptr ds:[61FB44]
 0060E68F    fmul       dword ptr ds:[60F2EC]; 5:Single
 0060E695    fdiv       dword ptr ds:[60F2F0]; 100:Single
 0060E69B    fstp       qword ptr ds:[61FB2C]
 0060E6A1    wait
 0060E6A2    fld        qword ptr ds:[61FB44]
 0060E6A8    fsub       qword ptr ds:[61FB64]; gvar_0061FB64
 0060E6AE    fstp       qword ptr ds:[61FB3C]
 0060E6B4    wait
 0060E6B5    fld        qword ptr ds:[61FB44]
 0060E6BB    fsub       qword ptr ds:[61FB64]; gvar_0061FB64
 0060E6C1    fsub       qword ptr ds:[61FB2C]
 0060E6C7    fstp       qword ptr ds:[61FB5C]
 0060E6CD    wait
 0060E6CE    mov        eax,dword ptr [ebx]
 0060E6D0    mov        eax,dword ptr [eax+6B0]; Tdm.karyawan_detail:TZQuery
 0060E6D6    mov        edx,60F2FC; 'kd_pt_id'
 0060E6DB    call       TDataSet.FieldByName
 0060E6E0    lea        edx,[ebp-124]
 0060E6E6    mov        ecx,dword ptr [eax]
 0060E6E8    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E6EB    lea        edx,[ebp-124]
 0060E6F1    lea        eax,[ebp-8]
 0060E6F4    call       @VarToLStr
 0060E6F9    mov        al,[0060F16C]; 0x1
 0060E6FE    push       eax
 0060E6FF    lea        eax,[ebp-134]
 0060E705    mov        edx,dword ptr [ebp-8]
 0060E708    call       @VarFromLStr
 0060E70D    lea        ecx,[ebp-134]
 0060E713    mov        eax,dword ptr [ebx]
 0060E715    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060E71B    mov        edx,60F310; 'pt_id'
 0060E720    mov        edi,dword ptr [eax]
 0060E722    call       dword ptr [edi+244]; TZAbstractRODataset.Locate
 0060E728    cmp        al,1
>0060E72A    jne        0060E75B
 0060E72C    mov        eax,dword ptr [ebx]
 0060E72E    mov        eax,dword ptr [eax+6B4]; Tdm.ptkp:TZQuery
 0060E734    mov        edx,60F320; 'pt_nilaipertahun'
 0060E739    call       TDataSet.FieldByName
 0060E73E    lea        edx,[ebp-144]
 0060E744    mov        ecx,dword ptr [eax]
 0060E746    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E749    lea        eax,[ebp-144]
 0060E74F    call       @VarToReal
 0060E754    fstp       qword ptr ds:[61FB34]
 0060E75A    wait
 0060E75B    fld        qword ptr ds:[61FB5C]
 0060E761    fmul       dword ptr ds:[60F334]; 12:Single
 0060E767    fsub       qword ptr ds:[61FB34]
 0060E76D    fstp       qword ptr ds:[61FB4C]
 0060E773    wait
 0060E774    fld        qword ptr ds:[61FB4C]
 0060E77A    fcomp      dword ptr ds:[60F338]; 0:Single
 0060E780    fnstsw     al
 0060E782    sahf
>0060E783    jbe        0060E7A6
 0060E785    fld        qword ptr ds:[61FB4C]
 0060E78B    fmul       dword ptr ds:[60F2EC]; 5:Single
 0060E791    fdiv       dword ptr ds:[60F2F0]; 100:Single
 0060E797    fdiv       dword ptr ds:[60F334]; 12:Single
 0060E79D    fstp       qword ptr ds:[61FB54]; gvar_0061FB54
 0060E7A3    wait
>0060E7A4    jmp        0060E7B4
 0060E7A6    xor        eax,eax
 0060E7A8    mov        dword ptr ds:[61FB54],eax; gvar_0061FB54
 0060E7AE    mov        dword ptr ds:[61FB58],eax; gvar_0061FB58
 0060E7B4    mov        eax,dword ptr [ebx]
 0060E7B6    mov        edi,dword ptr [eax+9B4]; Tdm.salaryref:TZQuery
 0060E7BC    mov        eax,edi
 0060E7BE    call       TZReadOnlyQuery.GetSQL
 0060E7C3    mov        edx,60F344; 'select sa_ref from salary order by sa_id desc limit 1 '
 0060E7C8    mov        ecx,dword ptr [eax]
 0060E7CA    call       dword ptr [ecx+2C]
 0060E7CD    mov        eax,edi
 0060E7CF    call       TDataSet.Open
 0060E7D4    mov        edx,60F384; 'sa_ref'
 0060E7D9    mov        eax,edi
 0060E7DB    call       TDataSet.FieldByName
 0060E7E0    lea        edx,[ebp-15C]
 0060E7E6    mov        ecx,dword ptr [eax]
 0060E7E8    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E7EB    lea        edx,[ebp-15C]
 0060E7F1    lea        eax,[ebp-14C]
 0060E7F7    call       @VarToLStr
 0060E7FC    mov        eax,dword ptr [ebp-14C]
 0060E802    lea        ecx,[ebp-148]
 0060E808    mov        edx,8
 0060E80D    call       RightStr
 0060E812    mov        eax,dword ptr [ebp-148]
 0060E818    call       StrToInt
 0060E81D    inc        eax
 0060E81E    mov        edi,eax
 0060E820    lea        eax,[ebp-160]
 0060E826    push       eax
 0060E827    mov        dword ptr [ebp-168],edi
 0060E82D    mov        byte ptr [ebp-164],0
 0060E834    lea        edx,[ebp-168]
 0060E83A    xor        ecx,ecx
 0060E83C    mov        eax,60F394; '%8.8d'
 0060E841    call       Format
 0060E846    mov        ecx,dword ptr [ebp-160]
 0060E84C    lea        eax,[ebp-10]
 0060E84F    mov        edx,60F3A4; 'SL'
 0060E854    call       @LStrCat3
 0060E859    mov        eax,dword ptr [ebx]
 0060E85B    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E861    call       TDataSet.Append
 0060E866    mov        edx,60F3B0; 'kr_id'
 0060E86B    mov        eax,esi
 0060E86D    call       TDataSet.FieldByName
 0060E872    lea        edx,[ebp-178]
 0060E878    mov        ecx,dword ptr [eax]
 0060E87A    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060E87D    lea        eax,[ebp-178]
 0060E883    push       eax
 0060E884    mov        eax,dword ptr [ebx]
 0060E886    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E88C    mov        edx,60F3C0; 'sa_kr_id'
 0060E891    call       TDataSet.FieldByName
 0060E896    pop        edx
 0060E897    mov        ecx,dword ptr [eax]
 0060E899    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E89F    mov        eax,dword ptr [ebx]
 0060E8A1    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E8A7    mov        edx,60F3D4; 'sa_date'
 0060E8AC    call       TDataSet.FieldByName
 0060E8B1    push       eax
 0060E8B2    call       Date
 0060E8B7    lea        eax,[ebp-188]
 0060E8BD    call       @VarFromTDateTime
 0060E8C2    lea        edx,[ebp-188]
 0060E8C8    pop        eax
 0060E8C9    mov        ecx,dword ptr [eax]
 0060E8CB    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E8D1    lea        edx,[ebp-19C]
 0060E8D7    mov        eax,dword ptr [ebp-4]
 0060E8DA    mov        eax,dword ptr [eax+2F8]; Tsalaryprosesfrm.cbperiode:TComboBox
 0060E8E0    call       TControl.GetText
 0060E8E5    mov        edx,dword ptr [ebp-19C]
 0060E8EB    lea        eax,[ebp-198]
 0060E8F1    call       @VarFromLStr
 0060E8F6    lea        eax,[ebp-198]
 0060E8FC    push       eax
 0060E8FD    mov        eax,dword ptr [ebx]
 0060E8FF    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E905    mov        edx,60F3E4; 'sa_period'
 0060E90A    call       TDataSet.FieldByName
 0060E90F    pop        edx
 0060E910    mov        ecx,dword ptr [eax]
 0060E912    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E918    mov        eax,dword ptr [ebx]
 0060E91A    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E920    mov        edx,60F3F8; 'sa_pengurang_pajak'
 0060E925    call       TDataSet.FieldByName
 0060E92A    push       eax
 0060E92B    fld        qword ptr ds:[61FB2C]
 0060E931    lea        eax,[ebp-1AC]
 0060E937    call       @VarFromReal
 0060E93C    lea        edx,[ebp-1AC]
 0060E942    pop        eax
 0060E943    mov        ecx,dword ptr [eax]
 0060E945    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E94B    mov        eax,dword ptr [ebx]
 0060E94D    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E953    mov        edx,60F414; 'sa_pengurangan'
 0060E958    call       TDataSet.FieldByName
 0060E95D    push       eax
 0060E95E    fld        qword ptr ds:[61FB64]; gvar_0061FB64
 0060E964    lea        eax,[ebp-1BC]
 0060E96A    call       @VarFromReal
 0060E96F    lea        edx,[ebp-1BC]
 0060E975    pop        eax
 0060E976    mov        ecx,dword ptr [eax]
 0060E978    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E97E    mov        eax,dword ptr [ebx]
 0060E980    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E986    mov        edx,60F42C; 'sa_penambahan'
 0060E98B    call       TDataSet.FieldByName
 0060E990    push       eax
 0060E991    fld        qword ptr ds:[61FB6C]; gvar_0061FB6C
 0060E997    lea        eax,[ebp-1CC]
 0060E99D    call       @VarFromReal
 0060E9A2    lea        edx,[ebp-1CC]
 0060E9A8    pop        eax
 0060E9A9    mov        ecx,dword ptr [eax]
 0060E9AB    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E9B1    mov        eax,dword ptr [ebx]
 0060E9B3    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E9B9    mov        edx,60F444; 'sa_gross_pay'
 0060E9BE    call       TDataSet.FieldByName
 0060E9C3    push       eax
 0060E9C4    fld        qword ptr ds:[61FB24]
 0060E9CA    lea        eax,[ebp-1DC]
 0060E9D0    call       @VarFromReal
 0060E9D5    lea        edx,[ebp-1DC]
 0060E9DB    pop        eax
 0060E9DC    mov        ecx,dword ptr [eax]
 0060E9DE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060E9E4    mov        eax,dword ptr [ebx]
 0060E9E6    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060E9EC    mov        edx,60F45C; 'sa_ptkp'
 0060E9F1    call       TDataSet.FieldByName
 0060E9F6    push       eax
 0060E9F7    fld        qword ptr ds:[61FB34]
 0060E9FD    lea        eax,[ebp-1EC]
 0060EA03    call       @VarFromReal
 0060EA08    lea        edx,[ebp-1EC]
 0060EA0E    pop        eax
 0060EA0F    mov        ecx,dword ptr [eax]
 0060EA11    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EA17    mov        eax,dword ptr [ebx]
 0060EA19    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EA1F    mov        edx,60F46C; 'sa_objek_pajak'
 0060EA24    call       TDataSet.FieldByName
 0060EA29    push       eax
 0060EA2A    fld        qword ptr ds:[61FB4C]
 0060EA30    lea        eax,[ebp-1FC]
 0060EA36    call       @VarFromReal
 0060EA3B    lea        edx,[ebp-1FC]
 0060EA41    pop        eax
 0060EA42    mov        ecx,dword ptr [eax]
 0060EA44    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EA4A    mov        eax,dword ptr [ebx]
 0060EA4C    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EA52    mov        edx,60F484; 'sa_potongan_pajak'
 0060EA57    call       TDataSet.FieldByName
 0060EA5C    push       eax
 0060EA5D    fld        qword ptr ds:[61FB54]; gvar_0061FB54
 0060EA63    lea        eax,[ebp-20C]
 0060EA69    call       @VarFromReal
 0060EA6E    lea        edx,[ebp-20C]
 0060EA74    pop        eax
 0060EA75    mov        ecx,dword ptr [eax]
 0060EA77    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EA7D    mov        eax,dword ptr [ebx]
 0060EA7F    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EA85    mov        edx,60F4A0; 'sa_net_pay'
 0060EA8A    call       TDataSet.FieldByName
 0060EA8F    push       eax
 0060EA90    fld        qword ptr ds:[61FB3C]
 0060EA96    lea        eax,[ebp-21C]
 0060EA9C    call       @VarFromReal
 0060EAA1    lea        edx,[ebp-21C]
 0060EAA7    pop        eax
 0060EAA8    mov        ecx,dword ptr [eax]
 0060EAAA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EAB0    mov        eax,dword ptr [ebx]
 0060EAB2    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EAB8    mov        edx,60F4B4; 'sa_take_home_pay'
 0060EABD    call       TDataSet.FieldByName
 0060EAC2    push       eax
 0060EAC3    fld        qword ptr ds:[61FB3C]
 0060EAC9    fsub       qword ptr ds:[61FB54]; gvar_0061FB54
 0060EACF    lea        eax,[ebp-22C]
 0060EAD5    call       @VarFromReal
 0060EADA    lea        edx,[ebp-22C]
 0060EAE0    pop        eax
 0060EAE1    mov        ecx,dword ptr [eax]
 0060EAE3    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EAE9    mov        eax,dword ptr [ebx]
 0060EAEB    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EAF1    mov        edx,60F4D0; 'sa_kode_level'
 0060EAF6    call       TDataSet.FieldByName
 0060EAFB    push       eax
 0060EAFC    lea        eax,[ebp-23C]
 0060EB02    mov        edx,dword ptr [ebp-0C]
 0060EB05    call       @VarFromLStr
 0060EB0A    lea        edx,[ebp-23C]
 0060EB10    pop        eax
 0060EB11    mov        ecx,dword ptr [eax]
 0060EB13    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EB19    mov        eax,dword ptr [ebx]
 0060EB1B    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EB21    mov        edx,60F384; 'sa_ref'
 0060EB26    call       TDataSet.FieldByName
 0060EB2B    push       eax
 0060EB2C    lea        eax,[ebp-24C]
 0060EB32    mov        edx,dword ptr [ebp-10]
 0060EB35    call       @VarFromLStr
 0060EB3A    lea        edx,[ebp-24C]
 0060EB40    pop        eax
 0060EB41    mov        ecx,dword ptr [eax]
 0060EB43    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EB49    mov        eax,dword ptr [ebx]
 0060EB4B    mov        eax,dword ptr [eax+844]; Tdm.inputsalary:TZQuery
 0060EB51    mov        edx,dword ptr [eax]
 0060EB53    call       dword ptr [edx+24C]; TDataSet.Post
 0060EB59    mov        eax,esi
 0060EB5B    call       TDataSet.Next
 0060EB60    cmp        byte ptr [esi+0A1],0; TZQuery.FEOF:Boolean
<0060EB67    je         0060E3AA
 0060EB6D    mov        eax,dword ptr [ebx]
 0060EB6F    mov        eax,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 0060EB75    call       005D8634
 0060EB7A    mov        eax,dword ptr [ebx]
 0060EB7C    mov        ebx,dword ptr [eax+3B8]; Tdm.general_ledger:TZQuery
 0060EB82    mov        eax,ebx
 0060EB84    call       TDataSet.Append
 0060EB89    mov        edx,60F4E8; 'gl_amount'
 0060EB8E    mov        eax,ebx
 0060EB90    call       TDataSet.FieldByName
 0060EB95    push       eax
 0060EB96    fld        qword ptr ds:[61FB3C]
 0060EB9C    fmul       dword ptr ds:[60F4F4]; -1:Single
 0060EBA2    lea        eax,[ebp-25C]
 0060EBA8    call       @VarFromReal
 0060EBAD    lea        edx,[ebp-25C]
 0060EBB3    pop        eax
 0060EBB4    mov        ecx,dword ptr [eax]
 0060EBB6    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EBBC    mov        edx,60F500; 'gl_kredit'
 0060EBC1    mov        eax,ebx
 0060EBC3    call       TDataSet.FieldByName
 0060EBC8    push       eax
 0060EBC9    fld        qword ptr ds:[61FB3C]
 0060EBCF    lea        eax,[ebp-26C]
 0060EBD5    call       @VarFromReal
 0060EBDA    lea        edx,[ebp-26C]
 0060EBE0    pop        eax
 0060EBE1    mov        ecx,dword ptr [eax]
 0060EBE3    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EBE9    mov        edx,60F514; 'gl_akun'
 0060EBEE    mov        eax,ebx
 0060EBF0    call       TDataSet.FieldByName
 0060EBF5    push       eax
 0060EBF6    lea        eax,[ebp-27C]
 0060EBFC    mov        edx,60F524; '110-20'
 0060EC01    call       @VarFromLStr
 0060EC06    lea        edx,[ebp-27C]
 0060EC0C    pop        eax
 0060EC0D    mov        ecx,dword ptr [eax]
 0060EC0F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EC15    mov        edx,60F534; 'gl_tgl'
 0060EC1A    mov        eax,ebx
 0060EC1C    call       TDataSet.FieldByName
 0060EC21    push       eax
 0060EC22    call       Date
 0060EC27    lea        eax,[ebp-28C]
 0060EC2D    call       @VarFromTDateTime
 0060EC32    lea        edx,[ebp-28C]
 0060EC38    pop        eax
 0060EC39    mov        ecx,dword ptr [eax]
 0060EC3B    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EC41    mov        edx,60F544; 'gl_ref'
 0060EC46    mov        eax,ebx
 0060EC48    call       TDataSet.FieldByName
 0060EC4D    push       eax
 0060EC4E    lea        eax,[ebp-29C]
 0060EC54    mov        edx,dword ptr [ebp-10]
 0060EC57    call       @VarFromLStr
 0060EC5C    lea        edx,[ebp-29C]
 0060EC62    pop        eax
 0060EC63    mov        ecx,dword ptr [eax]
 0060EC65    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EC6B    mov        edx,60F554; 'gl_desc'
 0060EC70    mov        eax,ebx
 0060EC72    call       TDataSet.FieldByName
 0060EC77    push       eax
 0060EC78    lea        eax,[ebp-2B0]
 0060EC7E    mov        ecx,dword ptr [ebp-10]
 0060EC81    mov        edx,60F564; 'Pembayaran Salary No Ref:'
 0060EC86    call       @LStrCat3
 0060EC8B    mov        edx,dword ptr [ebp-2B0]
 0060EC91    lea        eax,[ebp-2AC]
 0060EC97    call       @VarFromLStr
 0060EC9C    lea        edx,[ebp-2AC]
 0060ECA2    pop        eax
 0060ECA3    mov        ecx,dword ptr [eax]
 0060ECA5    call       dword ptr [ecx+0B4]
 0060ECAB    mov        eax,ebx
 0060ECAD    mov        edx,dword ptr [eax]
 0060ECAF    call       dword ptr [edx+24C]; TDataSet.Post
 0060ECB5    mov        eax,ebx
 0060ECB7    call       TDataSet.Append
 0060ECBC    mov        edx,60F4E8; 'gl_amount'
 0060ECC1    mov        eax,ebx
 0060ECC3    call       TDataSet.FieldByName
 0060ECC8    push       eax
 0060ECC9    fld        qword ptr ds:[61FB3C]
 0060ECCF    lea        eax,[ebp-2C0]
 0060ECD5    call       @VarFromReal
 0060ECDA    lea        edx,[ebp-2C0]
 0060ECE0    pop        eax
 0060ECE1    mov        ecx,dword ptr [eax]
 0060ECE3    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060ECE9    mov        edx,60F588; 'gl_debet'
 0060ECEE    mov        eax,ebx
 0060ECF0    call       TDataSet.FieldByName
 0060ECF5    push       eax
 0060ECF6    fld        qword ptr ds:[61FB3C]
 0060ECFC    lea        eax,[ebp-2D0]
 0060ED02    call       @VarFromReal
 0060ED07    lea        edx,[ebp-2D0]
 0060ED0D    pop        eax
 0060ED0E    mov        ecx,dword ptr [eax]
 0060ED10    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060ED16    mov        edx,60F514; 'gl_akun'
 0060ED1B    mov        eax,ebx
 0060ED1D    call       TDataSet.FieldByName
 0060ED22    push       eax
 0060ED23    lea        eax,[ebp-2E0]
 0060ED29    mov        edx,60F59C; '610-10'
 0060ED2E    call       @VarFromLStr
 0060ED33    lea        edx,[ebp-2E0]
 0060ED39    pop        eax
 0060ED3A    mov        ecx,dword ptr [eax]
 0060ED3C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060ED42    mov        edx,60F534; 'gl_tgl'
 0060ED47    mov        eax,ebx
 0060ED49    call       TDataSet.FieldByName
 0060ED4E    push       eax
 0060ED4F    call       Date
 0060ED54    lea        eax,[ebp-2F0]
 0060ED5A    call       @VarFromTDateTime
 0060ED5F    lea        edx,[ebp-2F0]
 0060ED65    pop        eax
 0060ED66    mov        ecx,dword ptr [eax]
 0060ED68    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060ED6E    mov        edx,60F544; 'gl_ref'
 0060ED73    mov        eax,ebx
 0060ED75    call       TDataSet.FieldByName
 0060ED7A    push       eax
 0060ED7B    lea        eax,[ebp-300]
 0060ED81    mov        edx,dword ptr [ebp-10]
 0060ED84    call       @VarFromLStr
 0060ED89    lea        edx,[ebp-300]
 0060ED8F    pop        eax
 0060ED90    mov        ecx,dword ptr [eax]
 0060ED92    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060ED98    mov        edx,60F554; 'gl_desc'
 0060ED9D    mov        eax,ebx
 0060ED9F    call       TDataSet.FieldByName
 0060EDA4    push       eax
 0060EDA5    lea        eax,[ebp-314]
 0060EDAB    mov        ecx,dword ptr [ebp-10]
 0060EDAE    mov        edx,60F564; 'Pembayaran Salary No Ref:'
 0060EDB3    call       @LStrCat3
 0060EDB8    mov        edx,dword ptr [ebp-314]
 0060EDBE    lea        eax,[ebp-310]
 0060EDC4    call       @VarFromLStr
 0060EDC9    lea        edx,[ebp-310]
 0060EDCF    pop        eax
 0060EDD0    mov        ecx,dword ptr [eax]
 0060EDD2    call       dword ptr [ecx+0B4]
 0060EDD8    mov        eax,ebx
 0060EDDA    mov        edx,dword ptr [eax]
 0060EDDC    call       dword ptr [edx+24C]; TDataSet.Post
 0060EDE2    mov        eax,ebx
 0060EDE4    call       TDataSet.Append
 0060EDE9    mov        edx,60F4E8; 'gl_amount'
 0060EDEE    mov        eax,ebx
 0060EDF0    call       TDataSet.FieldByName
 0060EDF5    push       eax
 0060EDF6    fld        qword ptr ds:[61FB54]; gvar_0061FB54
 0060EDFC    lea        eax,[ebp-324]
 0060EE02    call       @VarFromReal
 0060EE07    lea        edx,[ebp-324]
 0060EE0D    pop        eax
 0060EE0E    mov        ecx,dword ptr [eax]
 0060EE10    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EE16    mov        edx,60F588; 'gl_debet'
 0060EE1B    mov        eax,ebx
 0060EE1D    call       TDataSet.FieldByName
 0060EE22    push       eax
 0060EE23    fld        qword ptr ds:[61FB54]; gvar_0061FB54
 0060EE29    lea        eax,[ebp-334]
 0060EE2F    call       @VarFromReal
 0060EE34    lea        edx,[ebp-334]
 0060EE3A    pop        eax
 0060EE3B    mov        ecx,dword ptr [eax]
 0060EE3D    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EE43    mov        edx,60F514; 'gl_akun'
 0060EE48    mov        eax,ebx
 0060EE4A    call       TDataSet.FieldByName
 0060EE4F    push       eax
 0060EE50    lea        eax,[ebp-344]
 0060EE56    mov        edx,60F5AC; '210-81'
 0060EE5B    call       @VarFromLStr
 0060EE60    lea        edx,[ebp-344]
 0060EE66    pop        eax
 0060EE67    mov        ecx,dword ptr [eax]
 0060EE69    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EE6F    mov        edx,60F534; 'gl_tgl'
 0060EE74    mov        eax,ebx
 0060EE76    call       TDataSet.FieldByName
 0060EE7B    push       eax
 0060EE7C    call       Date
 0060EE81    lea        eax,[ebp-354]
 0060EE87    call       @VarFromTDateTime
 0060EE8C    lea        edx,[ebp-354]
 0060EE92    pop        eax
 0060EE93    mov        ecx,dword ptr [eax]
 0060EE95    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EE9B    mov        edx,60F544; 'gl_ref'
 0060EEA0    mov        eax,ebx
 0060EEA2    call       TDataSet.FieldByName
 0060EEA7    push       eax
 0060EEA8    lea        eax,[ebp-364]
 0060EEAE    mov        edx,dword ptr [ebp-10]
 0060EEB1    call       @VarFromLStr
 0060EEB6    lea        edx,[ebp-364]
 0060EEBC    pop        eax
 0060EEBD    mov        ecx,dword ptr [eax]
 0060EEBF    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EEC5    mov        edx,60F554; 'gl_desc'
 0060EECA    mov        eax,ebx
 0060EECC    call       TDataSet.FieldByName
 0060EED1    push       eax
 0060EED2    lea        eax,[ebp-378]
 0060EED8    mov        ecx,dword ptr [ebp-10]
 0060EEDB    mov        edx,60F5BC; 'Potongan PPh 21 No Ref:'
 0060EEE0    call       @LStrCat3
 0060EEE5    mov        edx,dword ptr [ebp-378]
 0060EEEB    lea        eax,[ebp-374]
 0060EEF1    call       @VarFromLStr
 0060EEF6    lea        edx,[ebp-374]
 0060EEFC    pop        eax
 0060EEFD    mov        ecx,dword ptr [eax]
 0060EEFF    call       dword ptr [ecx+0B4]
 0060EF05    mov        eax,ebx
 0060EF07    mov        edx,dword ptr [eax]
 0060EF09    call       dword ptr [edx+24C]; TDataSet.Post
 0060EF0F    mov        eax,ebx
 0060EF11    call       TDataSet.Append
 0060EF16    mov        edx,60F4E8; 'gl_amount'
 0060EF1B    mov        eax,ebx
 0060EF1D    call       TDataSet.FieldByName
 0060EF22    push       eax
 0060EF23    fld        qword ptr ds:[61FB54]; gvar_0061FB54
 0060EF29    lea        eax,[ebp-388]
 0060EF2F    call       @VarFromReal
 0060EF34    lea        edx,[ebp-388]
 0060EF3A    pop        eax
 0060EF3B    mov        ecx,dword ptr [eax]
 0060EF3D    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EF43    mov        edx,60F588; 'gl_debet'
 0060EF48    mov        eax,ebx
 0060EF4A    call       TDataSet.FieldByName
 0060EF4F    push       eax
 0060EF50    fld        qword ptr ds:[61FB54]; gvar_0061FB54
 0060EF56    lea        eax,[ebp-398]
 0060EF5C    call       @VarFromReal
 0060EF61    lea        edx,[ebp-398]
 0060EF67    pop        eax
 0060EF68    mov        ecx,dword ptr [eax]
 0060EF6A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EF70    mov        edx,60F514; 'gl_akun'
 0060EF75    mov        eax,ebx
 0060EF77    call       TDataSet.FieldByName
 0060EF7C    push       eax
 0060EF7D    lea        eax,[ebp-3A8]
 0060EF83    mov        edx,60F524; '110-20'
 0060EF88    call       @VarFromLStr
 0060EF8D    lea        edx,[ebp-3A8]
 0060EF93    pop        eax
 0060EF94    mov        ecx,dword ptr [eax]
 0060EF96    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EF9C    mov        edx,60F534; 'gl_tgl'
 0060EFA1    mov        eax,ebx
 0060EFA3    call       TDataSet.FieldByName
 0060EFA8    push       eax
 0060EFA9    call       Date
 0060EFAE    lea        eax,[ebp-3B8]
 0060EFB4    call       @VarFromTDateTime
 0060EFB9    lea        edx,[ebp-3B8]
 0060EFBF    pop        eax
 0060EFC0    mov        ecx,dword ptr [eax]
 0060EFC2    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EFC8    mov        edx,60F544; 'gl_ref'
 0060EFCD    mov        eax,ebx
 0060EFCF    call       TDataSet.FieldByName
 0060EFD4    push       eax
 0060EFD5    lea        eax,[ebp-3C8]
 0060EFDB    mov        edx,dword ptr [ebp-10]
 0060EFDE    call       @VarFromLStr
 0060EFE3    lea        edx,[ebp-3C8]
 0060EFE9    pop        eax
 0060EFEA    mov        ecx,dword ptr [eax]
 0060EFEC    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060EFF2    mov        edx,60F554; 'gl_desc'
 0060EFF7    mov        eax,ebx
 0060EFF9    call       TDataSet.FieldByName
 0060EFFE    push       eax
 0060EFFF    lea        eax,[ebp-3DC]
 0060F005    mov        ecx,dword ptr [ebp-10]
 0060F008    mov        edx,60F5DC; 'Masukan Potongan PPh 21 untuk No Ref:'
 0060F00D    call       @LStrCat3
 0060F012    mov        edx,dword ptr [ebp-3DC]
 0060F018    lea        eax,[ebp-3D8]
 0060F01E    call       @VarFromLStr
 0060F023    lea        edx,[ebp-3D8]
 0060F029    pop        eax
 0060F02A    mov        ecx,dword ptr [eax]
 0060F02C    call       dword ptr [ecx+0B4]
 0060F032    mov        eax,ebx
 0060F034    mov        edx,dword ptr [eax]
 0060F036    call       dword ptr [edx+24C]; TDataSet.Post
 0060F03C    xor        eax,eax
 0060F03E    pop        edx
 0060F03F    pop        ecx
 0060F040    pop        ecx
 0060F041    mov        dword ptr fs:[eax],edx
 0060F044    push       60F155
 0060F049    lea        eax,[ebp-3DC]
 0060F04F    call       @LStrClr
 0060F054    lea        eax,[ebp-3D8]
 0060F05A    mov        edx,dword ptr ds:[401114]; Variant
 0060F060    mov        ecx,6
 0060F065    call       @FinalizeArray
 0060F06A    lea        eax,[ebp-378]
 0060F070    call       @LStrClr
 0060F075    lea        eax,[ebp-374]
 0060F07B    mov        edx,dword ptr ds:[401114]; Variant
 0060F081    mov        ecx,6
 0060F086    call       @FinalizeArray
 0060F08B    lea        eax,[ebp-314]
 0060F091    call       @LStrClr
 0060F096    lea        eax,[ebp-310]
 0060F09C    mov        edx,dword ptr ds:[401114]; Variant
 0060F0A2    mov        ecx,6
 0060F0A7    call       @FinalizeArray
 0060F0AC    lea        eax,[ebp-2B0]
 0060F0B2    call       @LStrClr
 0060F0B7    lea        eax,[ebp-2AC]
 0060F0BD    mov        edx,dword ptr ds:[401114]; Variant
 0060F0C3    mov        ecx,11
 0060F0C8    call       @FinalizeArray
 0060F0CD    lea        eax,[ebp-19C]
 0060F0D3    call       @LStrClr
 0060F0D8    lea        eax,[ebp-198]
 0060F0DE    mov        edx,dword ptr ds:[401114]; Variant
 0060F0E4    mov        ecx,3
 0060F0E9    call       @FinalizeArray
 0060F0EE    lea        eax,[ebp-160]
 0060F0F4    call       @LStrClr
 0060F0F9    lea        eax,[ebp-15C]
 0060F0FF    call       @VarClr
 0060F104    lea        eax,[ebp-14C]
 0060F10A    mov        edx,2
 0060F10F    call       @LStrArrayClr
 0060F114    lea        eax,[ebp-144]
 0060F11A    mov        edx,dword ptr ds:[401114]; Variant
 0060F120    mov        ecx,11
 0060F125    call       @FinalizeArray
 0060F12A    lea        eax,[ebp-30]
 0060F12D    mov        edx,dword ptr ds:[401114]; Variant
 0060F133    mov        ecx,2
 0060F138    call       @FinalizeArray
 0060F13D    lea        eax,[ebp-10]
 0060F140    mov        edx,3
 0060F145    call       @LStrArrayClr
 0060F14A    ret
<0060F14B    jmp        @HandleFinally
<0060F150    jmp        0060F049
 0060F155    pop        edi
 0060F156    pop        esi
 0060F157    pop        ebx
 0060F158    mov        esp,ebp
 0060F15A    pop        ebp
 0060F15B    ret
*}
//end;

//0060F604
procedure Tsalaryprosesfrm.Button1Click;
begin
{*
 0060F604    push       ebp
 0060F605    mov        ebp,esp
 0060F607    add        esp,0FFFFFFF4
 0060F60A    xor        ecx,ecx
 0060F60C    mov        dword ptr [ebp-0C],ecx
 0060F60F    xor        eax,eax
 0060F611    push       ebp
 0060F612    push       60F668
 0060F617    push       dword ptr fs:[eax]
 0060F61A    mov        dword ptr fs:[eax],esp
 0060F61D    call       Date
 0060F622    add        esp,0FFFFFFF8
 0060F625    fstp       qword ptr [esp]
 0060F628    wait
 0060F629    mov        eax,1
 0060F62E    call       IncMonth
 0060F633    fstp       qword ptr [ebp-8]
 0060F636    wait
 0060F637    push       dword ptr [ebp-4]
 0060F63A    push       dword ptr [ebp-8]
 0060F63D    lea        edx,[ebp-0C]
 0060F640    mov        eax,60F67C; 'mmmm yyyy '
 0060F645    call       FormatDateTime
 0060F64A    mov        eax,dword ptr [ebp-0C]
 0060F64D    call       ShowMessage
 0060F652    xor        eax,eax
 0060F654    pop        edx
 0060F655    pop        ecx
 0060F656    pop        ecx
 0060F657    mov        dword ptr fs:[eax],edx
 0060F65A    push       60F66F
 0060F65F    lea        eax,[ebp-0C]
 0060F662    call       @LStrClr
 0060F667    ret
<0060F668    jmp        @HandleFinally
<0060F66D    jmp        0060F65F
 0060F66F    mov        esp,ebp
 0060F671    pop        ebp
 0060F672    ret
*}
end;

//0060F688
procedure Tsalaryprosesfrm.FormCreate;
begin
{*
 0060F688    push       ebp
 0060F689    mov        ebp,esp
 0060F68B    add        esp,0FFFFFFE8
 0060F68E    push       ebx
 0060F68F    push       esi
 0060F690    xor        ecx,ecx
 0060F692    mov        dword ptr [ebp-18],ecx
 0060F695    mov        dword ptr [ebp-14],ecx
 0060F698    mov        esi,eax
 0060F69A    xor        eax,eax
 0060F69C    push       ebp
 0060F69D    push       60F742
 0060F6A2    push       dword ptr fs:[eax]
 0060F6A5    mov        dword ptr fs:[eax],esp
 0060F6A8    call       Date
 0060F6AD    add        esp,0FFFFFFF8
 0060F6B0    fstp       qword ptr [esp]
 0060F6B3    wait
 0060F6B4    xor        eax,eax
 0060F6B6    call       IncMonth
 0060F6BB    fstp       qword ptr [ebp-10]
 0060F6BE    wait
 0060F6BF    or         ebx,0FFFFFFFF
 0060F6C2    call       Date
 0060F6C7    add        esp,0FFFFFFF8
 0060F6CA    fstp       qword ptr [esp]
 0060F6CD    wait
 0060F6CE    mov        eax,ebx
 0060F6D0    call       IncMonth
 0060F6D5    fstp       qword ptr [ebp-8]
 0060F6D8    wait
 0060F6D9    push       dword ptr [ebp-4]
 0060F6DC    push       dword ptr [ebp-8]
 0060F6DF    lea        edx,[ebp-14]
 0060F6E2    mov        eax,60F758; 'mmmm yyyy'
 0060F6E7    call       FormatDateTime
 0060F6EC    mov        edx,dword ptr [ebp-14]
 0060F6EF    mov        eax,dword ptr [esi+2F8]; Tsalaryprosesfrm.cbperiode:TComboBox
 0060F6F5    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 0060F6FB    mov        ecx,dword ptr [eax]
 0060F6FD    call       dword ptr [ecx+38]; TStrings.Add
 0060F700    inc        ebx
 0060F701    cmp        ebx,0B
<0060F704    jne        0060F6C2
 0060F706    push       dword ptr [ebp-0C]
 0060F709    push       dword ptr [ebp-10]
 0060F70C    lea        edx,[ebp-18]
 0060F70F    mov        eax,60F758; 'mmmm yyyy'
 0060F714    call       FormatDateTime
 0060F719    mov        edx,dword ptr [ebp-18]
 0060F71C    mov        eax,dword ptr [esi+2F8]; Tsalaryprosesfrm.cbperiode:TComboBox
 0060F722    call       TControl.SetText
 0060F727    xor        eax,eax
 0060F729    pop        edx
 0060F72A    pop        ecx
 0060F72B    pop        ecx
 0060F72C    mov        dword ptr fs:[eax],edx
 0060F72F    push       60F749
 0060F734    lea        eax,[ebp-18]
 0060F737    mov        edx,2
 0060F73C    call       @LStrArrayClr
 0060F741    ret
<0060F742    jmp        @HandleFinally
<0060F747    jmp        0060F734
 0060F749    pop        esi
 0060F74A    pop        ebx
 0060F74B    mov        esp,ebp
 0060F74D    pop        ebp
 0060F74E    ret
*}
end;

//0060F764
procedure Tsalaryprosesfrm.btntambahClick;
begin
{*
 0060F764    call       0060E338
 0060F769    ret
*}
end;

end.