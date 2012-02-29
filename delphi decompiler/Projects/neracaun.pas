{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit neracaun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, RpRave, RpSystem, RpConDS, RpRenderPDF;

type
  Tneracafrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    SpeedButton2:TSpeedButton;//f30C
    rpNeraca:TRvProject;//f310
    rsneraca:TRvSystem;//f314
    rdkasneraca:TRvDataSetConnection;//f318
    Panel2:TPanel;//f31C
    cbbulan:TComboBox;//f320
    cbthn:TComboBox;//f324
    pdfneraca:TRvRenderPDF;//f328
    rdsedianeraca:TRvDataSetConnection;//f32C
    hutangneraca:TRvDataSetConnection;//f330
    piutangneraca:TRvDataSetConnection;//f334
    hartaneraca:TRvDataSetConnection;//f338
    hutangpajakneraca:TRvDataSetConnection;//f33C
    chartofaccount:TRvDataSetConnection;//f340
    labaneraca:TRvDataSetConnection;//f344
    modalneraca:TRvDataSetConnection;//f348
    procedure SpeedButton2Click;
    procedure FormCreate;
    procedure FormActivate;
    procedure rsneracaAfterPrint;
  end;

implementation

{$R *.DFM}

//00607784
//procedure sub_00607784(?:Tneracafrm);
//begin
{*
 00607784    push       ebp
 00607785    mov        ebp,esp
 00607787    mov        ecx,1E
 0060778C    push       0
 0060778E    push       0
 00607790    dec        ecx
<00607791    jne        0060778C
 00607793    push       ebx
 00607794    push       esi
 00607795    mov        ebx,eax
 00607797    xor        eax,eax
 00607799    push       ebp
 0060779A    push       607BAE
 0060779F    push       dword ptr fs:[eax]
 006077A2    mov        dword ptr fs:[eax],esp
 006077A5    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006077AA    mov        eax,dword ptr [eax]
 006077AC    mov        esi,dword ptr [eax+334]; Tdm.kasneraca:TZQuery
 006077B2    mov        eax,esi
 006077B4    call       TZReadOnlyQuery.GetSQL
 006077B9    mov        edx,607BC4; 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) order by gl_id desc '
 006077BE    mov        ecx,dword ptr [eax]
 006077C0    call       dword ptr [ecx+2C]
 006077C3    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 006077C9    mov        edx,dword ptr [eax]
 006077CB    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 006077D1    mov        edx,eax
 006077D3    inc        edx
 006077D4    lea        eax,[ebp-10]
 006077D7    mov        cl,0FC
 006077D9    call       @VarFromInt
 006077DE    lea        eax,[ebp-10]
 006077E1    push       eax
 006077E2    mov        edx,607C50; 'tglawal'
 006077E7    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 006077ED    call       TParams.ParamByName
 006077F2    pop        edx
 006077F3    call       TParam.SetAsVariant
 006077F8    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 006077FE    mov        edx,dword ptr [eax]
 00607800    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607806    mov        edx,eax
 00607808    inc        edx
 00607809    lea        eax,[ebp-20]
 0060780C    mov        cl,0FC
 0060780E    call       @VarFromInt
 00607813    lea        eax,[ebp-20]
 00607816    push       eax
 00607817    mov        edx,607C60; 'tglakhir'
 0060781C    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607822    call       TParams.ParamByName
 00607827    pop        edx
 00607828    call       TParam.SetAsVariant
 0060782D    mov        edx,607C74; 'akun'
 00607832    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607838    call       TParams.ParamByName
 0060783D    push       eax
 0060783E    lea        eax,[ebp-30]
 00607841    mov        edx,607C84; '110-20'
 00607846    call       @VarFromLStr
 0060784B    lea        edx,[ebp-30]
 0060784E    pop        eax
 0060784F    call       TParam.SetAsVariant
 00607854    mov        eax,esi
 00607856    call       TDataSet.Open
 0060785B    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00607860    mov        eax,dword ptr [eax]
 00607862    mov        esi,dword ptr [eax+54C]; Tdm.piutangneraca:TZQuery
 00607868    mov        eax,esi
 0060786A    call       TZReadOnlyQuery.GetSQL
 0060786F    mov        edx,607BC4; 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) order by gl_id desc '
 00607874    mov        ecx,dword ptr [eax]
 00607876    call       dword ptr [ecx+2C]
 00607879    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 0060787F    mov        edx,dword ptr [eax]
 00607881    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607887    mov        edx,eax
 00607889    inc        edx
 0060788A    lea        eax,[ebp-40]
 0060788D    mov        cl,0FC
 0060788F    call       @VarFromInt
 00607894    lea        eax,[ebp-40]
 00607897    push       eax
 00607898    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 0060789E    mov        edx,607C50; 'tglawal'
 006078A3    call       TParams.ParamByName
 006078A8    pop        edx
 006078A9    call       TParam.SetAsVariant
 006078AE    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 006078B4    mov        edx,dword ptr [eax]
 006078B6    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 006078BC    mov        edx,eax
 006078BE    inc        edx
 006078BF    lea        eax,[ebp-50]
 006078C2    mov        cl,0FC
 006078C4    call       @VarFromInt
 006078C9    lea        eax,[ebp-50]
 006078CC    push       eax
 006078CD    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 006078D3    mov        edx,607C60; 'tglakhir'
 006078D8    call       TParams.ParamByName
 006078DD    pop        edx
 006078DE    call       TParam.SetAsVariant
 006078E3    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 006078E9    mov        edx,607C74; 'akun'
 006078EE    call       TParams.ParamByName
 006078F3    push       eax
 006078F4    lea        eax,[ebp-60]
 006078F7    mov        edx,607C94; '130-20'
 006078FC    call       @VarFromLStr
 00607901    lea        edx,[ebp-60]
 00607904    pop        eax
 00607905    call       TParam.SetAsVariant
 0060790A    mov        eax,esi
 0060790C    call       TDataSet.Open
 00607911    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00607916    mov        eax,dword ptr [eax]
 00607918    mov        esi,dword ptr [eax+3B0]; Tdm.sedianeraca:TZQuery
 0060791E    mov        eax,esi
 00607920    call       TZReadOnlyQuery.GetSQL
 00607925    mov        edx,607BC4; 'select * from general_ledger where gl_akun=(:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) order by gl_id desc '
 0060792A    mov        ecx,dword ptr [eax]
 0060792C    call       dword ptr [ecx+2C]
 0060792F    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 00607935    mov        edx,dword ptr [eax]
 00607937    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 0060793D    mov        edx,eax
 0060793F    inc        edx
 00607940    lea        eax,[ebp-70]
 00607943    mov        cl,0FC
 00607945    call       @VarFromInt
 0060794A    lea        eax,[ebp-70]
 0060794D    push       eax
 0060794E    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607954    mov        edx,607C50; 'tglawal'
 00607959    call       TParams.ParamByName
 0060795E    pop        edx
 0060795F    call       TParam.SetAsVariant
 00607964    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 0060796A    mov        edx,dword ptr [eax]
 0060796C    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607972    mov        edx,eax
 00607974    inc        edx
 00607975    lea        eax,[ebp-80]
 00607978    mov        cl,0FC
 0060797A    call       @VarFromInt
 0060797F    lea        eax,[ebp-80]
 00607982    push       eax
 00607983    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607989    mov        edx,607C60; 'tglakhir'
 0060798E    call       TParams.ParamByName
 00607993    pop        edx
 00607994    call       TParam.SetAsVariant
 00607999    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 0060799F    mov        edx,607C74; 'akun'
 006079A4    call       TParams.ParamByName
 006079A9    push       eax
 006079AA    lea        eax,[ebp-90]
 006079B0    mov        edx,607CA4; '140-10'
 006079B5    call       @VarFromLStr
 006079BA    lea        edx,[ebp-90]
 006079C0    pop        eax
 006079C1    call       TParam.SetAsVariant
 006079C6    mov        eax,esi
 006079C8    call       TDataSet.Open
 006079CD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006079D2    mov        eax,dword ptr [eax]
 006079D4    mov        esi,dword ptr [eax+3B4]; Tdm.hutangneraca:TZQuery
 006079DA    mov        eax,esi
 006079DC    call       TZReadOnlyQuery.GetSQL
 006079E1    mov        edx,607CB4; 'select gl_akun,sum(gl_amount) as totalhutang from general_ledger where gl_akun like (:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) group by gl_akun order by gl_akun asc '
 006079E6    mov        ecx,dword ptr [eax]
 006079E8    call       dword ptr [ecx+2C]
 006079EB    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 006079F1    mov        edx,dword ptr [eax]
 006079F3    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 006079F9    mov        edx,eax
 006079FB    inc        edx
 006079FC    lea        eax,[ebp-0A0]
 00607A02    mov        cl,0FC
 00607A04    call       @VarFromInt
 00607A09    lea        eax,[ebp-0A0]
 00607A0F    push       eax
 00607A10    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607A16    mov        edx,607C50; 'tglawal'
 00607A1B    call       TParams.ParamByName
 00607A20    pop        edx
 00607A21    call       TParam.SetAsVariant
 00607A26    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 00607A2C    mov        edx,dword ptr [eax]
 00607A2E    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607A34    mov        edx,eax
 00607A36    inc        edx
 00607A37    lea        eax,[ebp-0B0]
 00607A3D    mov        cl,0FC
 00607A3F    call       @VarFromInt
 00607A44    lea        eax,[ebp-0B0]
 00607A4A    push       eax
 00607A4B    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607A51    mov        edx,607C60; 'tglakhir'
 00607A56    call       TParams.ParamByName
 00607A5B    pop        edx
 00607A5C    call       TParam.SetAsVariant
 00607A61    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607A67    mov        edx,607C74; 'akun'
 00607A6C    call       TParams.ParamByName
 00607A71    push       eax
 00607A72    lea        eax,[ebp-0C0]
 00607A78    mov        edx,607D78; '2%'
 00607A7D    call       @VarFromLStr
 00607A82    lea        edx,[ebp-0C0]
 00607A88    pop        eax
 00607A89    call       TParam.SetAsVariant
 00607A8E    mov        eax,esi
 00607A90    call       TDataSet.Open
 00607A95    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00607A9A    mov        eax,dword ptr [eax]
 00607A9C    mov        esi,dword ptr [eax+574]; Tdm.hartatotalneraca:TZQuery
 00607AA2    mov        eax,esi
 00607AA4    call       TZReadOnlyQuery.GetSQL
 00607AA9    mov        edx,607D84; 'select * from general_ledger where gl_akun like (:akun) and (mid(gl_tgl,6,2) between (:tglawal) and (:tglakhir)) order by gl_id desc '
 00607AAE    mov        ecx,dword ptr [eax]
 00607AB0    call       dword ptr [ecx+2C]
 00607AB3    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 00607AB9    mov        edx,dword ptr [eax]
 00607ABB    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607AC1    mov        edx,eax
 00607AC3    inc        edx
 00607AC4    lea        eax,[ebp-0D0]
 00607ACA    mov        cl,0FC
 00607ACC    call       @VarFromInt
 00607AD1    lea        eax,[ebp-0D0]
 00607AD7    push       eax
 00607AD8    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607ADE    mov        edx,607C50; 'tglawal'
 00607AE3    call       TParams.ParamByName
 00607AE8    pop        edx
 00607AE9    call       TParam.SetAsVariant
 00607AEE    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 00607AF4    mov        edx,dword ptr [eax]
 00607AF6    call       dword ptr [edx+0CC]; TCustomCombo.GetItemIndex
 00607AFC    mov        edx,eax
 00607AFE    inc        edx
 00607AFF    lea        eax,[ebp-0E0]
 00607B05    mov        cl,0FC
 00607B07    call       @VarFromInt
 00607B0C    lea        eax,[ebp-0E0]
 00607B12    push       eax
 00607B13    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607B19    mov        edx,607C60; 'tglakhir'
 00607B1E    call       TParams.ParamByName
 00607B23    pop        edx
 00607B24    call       TParam.SetAsVariant
 00607B29    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00607B2F    mov        edx,607C74; 'akun'
 00607B34    call       TParams.ParamByName
 00607B39    push       eax
 00607B3A    lea        eax,[ebp-0F0]
 00607B40    mov        edx,607E14; '1%'
 00607B45    call       @VarFromLStr
 00607B4A    lea        edx,[ebp-0F0]
 00607B50    pop        eax
 00607B51    call       TParam.SetAsVariant
 00607B56    mov        eax,esi
 00607B58    call       TDataSet.Open
 00607B5D    mov        edx,607E20; 'neraca.rav'
 00607B62    mov        eax,dword ptr [ebx+310]; Tneracafrm.rpNeraca:TRvProject
 00607B68    call       TRvProject.SetProjectFile
 00607B6D    mov        cl,1
 00607B6F    mov        edx,607E20; 'neraca.rav'
 00607B74    mov        eax,dword ptr [ebx+310]; Tneracafrm.rpNeraca:TRvProject
 00607B7A    call       005D84D0
 00607B7F    mov        eax,dword ptr [ebx+310]; Tneracafrm.rpNeraca:TRvProject
 00607B85    call       005D8484
 00607B8A    xor        eax,eax
 00607B8C    pop        edx
 00607B8D    pop        ecx
 00607B8E    pop        ecx
 00607B8F    mov        dword ptr fs:[eax],edx
 00607B92    push       607BB5
 00607B97    lea        eax,[ebp-0F0]
 00607B9D    mov        edx,dword ptr ds:[401114]; Variant
 00607BA3    mov        ecx,0F
 00607BA8    call       @FinalizeArray
 00607BAD    ret
<00607BAE    jmp        @HandleFinally
<00607BB3    jmp        00607B97
 00607BB5    pop        esi
 00607BB6    pop        ebx
 00607BB7    mov        esp,ebp
 00607BB9    pop        ebp
 00607BBA    ret
*}
//end;

//00607E2C
procedure Tneracafrm.SpeedButton2Click;
begin
{*
 00607E2C    call       00607784
 00607E31    ret
*}
end;

//00607E34
procedure Tneracafrm.FormCreate;
begin
{*
 00607E34    push       ebp
 00607E35    mov        ebp,esp
 00607E37    push       0
 00607E39    push       0
 00607E3B    push       ebx
 00607E3C    mov        ebx,eax
 00607E3E    xor        eax,eax
 00607E40    push       ebp
 00607E41    push       607E9F
 00607E46    push       dword ptr fs:[eax]
 00607E49    mov        dword ptr fs:[eax],esp
 00607E4C    call       Date
 00607E51    add        esp,0FFFFFFF8
 00607E54    fstp       qword ptr [esp]
 00607E57    wait
 00607E58    lea        eax,[ebp-8]
 00607E5B    call       DateToStr
 00607E60    mov        eax,dword ptr [ebp-8]
 00607E63    lea        ecx,[ebp-4]
 00607E66    mov        edx,4
 00607E6B    call       RightStr
 00607E70    mov        eax,dword ptr [ebx+324]; Tneracafrm.cbthn:TComboBox
 00607E76    mov        eax,dword ptr [eax+23C]; TComboBox.FItems:TStrings
 00607E7C    mov        edx,dword ptr [ebp-4]
 00607E7F    call       TStrings.Append
 00607E84    xor        eax,eax
 00607E86    pop        edx
 00607E87    pop        ecx
 00607E88    pop        ecx
 00607E89    mov        dword ptr fs:[eax],edx
 00607E8C    push       607EA6
 00607E91    lea        eax,[ebp-8]
 00607E94    mov        edx,2
 00607E99    call       @LStrArrayClr
 00607E9E    ret
<00607E9F    jmp        @HandleFinally
<00607EA4    jmp        00607E91
 00607EA6    pop        ebx
 00607EA7    pop        ecx
 00607EA8    pop        ecx
 00607EA9    pop        ebp
 00607EAA    ret
*}
end;

//00607EAC
procedure Tneracafrm.FormActivate;
begin
{*
 00607EAC    push       ebp
 00607EAD    mov        ebp,esp
 00607EAF    push       0
 00607EB1    push       0
 00607EB3    push       ebx
 00607EB4    mov        ebx,eax
 00607EB6    xor        eax,eax
 00607EB8    push       ebp
 00607EB9    push       607F32
 00607EBE    push       dword ptr fs:[eax]
 00607EC1    mov        dword ptr fs:[eax],esp
 00607EC4    lea        eax,[ebp-4]
 00607EC7    push       eax
 00607EC8    call       Date
 00607ECD    add        esp,0FFFFFFF8
 00607ED0    fstp       qword ptr [esp]
 00607ED3    wait
 00607ED4    lea        eax,[ebp-8]
 00607ED7    call       DateToStr
 00607EDC    mov        eax,dword ptr [ebp-8]
 00607EDF    mov        ecx,2
 00607EE4    mov        edx,4
 00607EE9    call       AnsiMidStr
 00607EEE    mov        eax,dword ptr [ebp-4]
 00607EF1    call       StrToInt
 00607EF6    mov        edx,eax
 00607EF8    dec        edx
 00607EF9    mov        eax,dword ptr [ebx+320]; Tneracafrm.cbbulan:TComboBox
 00607EFF    mov        ecx,dword ptr [eax]
 00607F01    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00607F07    xor        edx,edx
 00607F09    mov        eax,dword ptr [ebx+324]; Tneracafrm.cbthn:TComboBox
 00607F0F    mov        ecx,dword ptr [eax]
 00607F11    call       dword ptr [ecx+0D0]; TCustomCombo.SetItemIndex
 00607F17    xor        eax,eax
 00607F19    pop        edx
 00607F1A    pop        ecx
 00607F1B    pop        ecx
 00607F1C    mov        dword ptr fs:[eax],edx
 00607F1F    push       607F39
 00607F24    lea        eax,[ebp-8]
 00607F27    mov        edx,2
 00607F2C    call       @LStrArrayClr
 00607F31    ret
<00607F32    jmp        @HandleFinally
<00607F37    jmp        00607F24
 00607F39    pop        ebx
 00607F3A    pop        ecx
 00607F3B    pop        ecx
 00607F3C    pop        ebp
 00607F3D    ret
*}
end;

//00607F40
procedure Tneracafrm.rsneracaAfterPrint;
begin
{*
 00607F40    ret
*}
end;

end.