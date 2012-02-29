{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit penawaranun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBCtrls, DBGrids, RpRave, RpSystem, RpConDS;

type
  Tpenawaranfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel2:TPanel;//f308
    Label2:TLabel;//f30C
    Label3:TLabel;//f310
    SpeedButton6:TSpeedButton;//f314
    Label4:TLabel;//f318
    SpeedButton3:TSpeedButton;//f31C
    Label5:TLabel;//f320
    SpeedButton1:TSpeedButton;//f324
    Label9:TLabel;//f328
    SpeedButton2:TSpeedButton;//f32C
    po:TDBEdit;//f330
    lookcust:TDBLookupComboBox;//f334
    lookpic:TDBLookupComboBox;//f338
    dbtgl:TDBEdit;//f33C
    lookproj:TDBLookupComboBox;//f340
    Panel3:TPanel;//f344
    btntambah:TSpeedButton;//f348
    btnsimpan:TSpeedButton;//f34C
    btnbatal:TSpeedButton;//f350
    Panel6:TPanel;//f354
    DBGrid1:TDBGrid;//f358
    rpQuotation:TRvProject;//f35C
    rsQuot:TRvSystem;//f360
    qtpenawaran:TRvDataSetConnection;//f364
    qtcust:TRvDataSetConnection;//f368
    qtpenawaran_detail:TRvDataSetConnection;//f36C
    qtpic:TRvDataSetConnection;//f370
    qtfootnote:TRvDataSetConnection;//f374
    procedure FormCreate;
    procedure btntambahClick;
    procedure SpeedButton1Click;
    procedure btnsimpanClick;
    //procedure DBGrid1KeyDown(?:?; ?:?);
    procedure FormClose;
    procedure btnbatalClick;
  end;

implementation

{$R *.DFM}

//0060838C
//procedure sub_0060838C(?:Tpenawaranfrm);
//begin
{*
 0060838C    push       ebp
 0060838D    mov        ebp,esp
 0060838F    mov        ecx,0D
 00608394    push       0
 00608396    push       0
 00608398    dec        ecx
<00608399    jne        00608394
 0060839B    push       ebx
 0060839C    push       esi
 0060839D    push       edi
 0060839E    mov        edi,eax
 006083A0    xor        eax,eax
 006083A2    push       ebp
 006083A3    push       608663
 006083A8    push       dword ptr fs:[eax]
 006083AB    mov        dword ptr fs:[eax],esp
 006083AE    lea        eax,[ebp-20]
 006083B1    push       eax
 006083B2    call       Date
 006083B7    add        esp,0FFFFFFF8
 006083BA    fstp       qword ptr [esp]
 006083BD    wait
 006083BE    lea        eax,[ebp-24]
 006083C1    call       DateToStr
 006083C6    mov        eax,dword ptr [ebp-24]
 006083C9    mov        ecx,2
 006083CE    mov        edx,4
 006083D3    call       AnsiMidStr
 006083D8    mov        eax,dword ptr [ebp-20]
 006083DB    call       StrToInt
 006083E0    mov        esi,eax
 006083E2    call       Date
 006083E7    add        esp,0FFFFFFF8
 006083EA    fstp       qword ptr [esp]
 006083ED    wait
 006083EE    lea        eax,[ebp-28]
 006083F1    call       DateToStr
 006083F6    mov        eax,dword ptr [ebp-28]
 006083F9    lea        ecx,[ebp-14]
 006083FC    mov        edx,4
 00608401    call       RightStr
 00608406    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060840B    mov        eax,dword ptr [eax]
 0060840D    mov        ebx,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 00608413    mov        eax,ebx
 00608415    call       TZReadOnlyQuery.GetSQL
 0060841A    mov        edx,60867C; 'SELECT * FROM quotation ORDER BY qt_id DESC LIMIT 1'
 0060841F    mov        ecx,dword ptr [eax]
 00608421    call       dword ptr [ecx+2C]
 00608424    mov        eax,ebx
 00608426    call       TDataSet.Open
 0060842B    mov        edx,6086B8; 'qt_kode'
 00608430    mov        eax,ebx
 00608432    call       TDataSet.FieldByName
 00608437    lea        edx,[ebp-38]
 0060843A    mov        ecx,dword ptr [eax]
 0060843C    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060843F    lea        edx,[ebp-38]
 00608442    lea        eax,[ebp-4]
 00608445    call       @VarToLStr
 0060844A    lea        eax,[ebp-3C]
 0060844D    push       eax
 0060844E    mov        edx,6086B8; 'qt_kode'
 00608453    mov        eax,ebx
 00608455    call       TDataSet.FieldByName
 0060845A    lea        edx,[ebp-50]
 0060845D    mov        ecx,dword ptr [eax]
 0060845F    call       dword ptr [ecx+64]; TField.GetAsVariant
 00608462    lea        edx,[ebp-50]
 00608465    lea        eax,[ebp-40]
 00608468    call       @VarToLStr
 0060846D    mov        eax,dword ptr [ebp-40]
 00608470    mov        ecx,2
 00608475    mov        edx,0B
 0060847A    call       AnsiMidStr
 0060847F    mov        eax,dword ptr [ebp-3C]
 00608482    call       StrToInt
 00608487    mov        dword ptr [ebp-8],eax
 0060848A    lea        ecx,[ebp-18]
 0060848D    mov        edx,4
 00608492    mov        eax,dword ptr [ebp-4]
 00608495    call       RightStr
 0060849A    lea        ecx,[ebp-54]
 0060849D    mov        edx,3
 006084A2    mov        eax,dword ptr [ebp-4]
 006084A5    call       LeftStr
 006084AA    mov        eax,dword ptr [ebp-54]
 006084AD    call       StrToInt
 006084B2    mov        ebx,eax
 006084B4    inc        ebx
 006084B5    lea        edx,[ebp-58]
 006084B8    mov        eax,ebx
 006084BA    call       IntToStr
 006084BF    mov        eax,dword ptr [ebp-58]
 006084C2    call       @LStrLen
 006084C7    dec        eax
>006084C8    je         006084D2
 006084CA    dec        eax
>006084CB    je         006084E1
 006084CD    dec        eax
>006084CE    je         006084F0
>006084D0    jmp        006084F8
 006084D2    lea        eax,[ebp-10]
 006084D5    mov        edx,6086C8; '00'
 006084DA    call       @LStrLAsg
>006084DF    jmp        006084F8
 006084E1    lea        eax,[ebp-10]
 006084E4    mov        edx,6086D4; '0'
 006084E9    call       @LStrLAsg
>006084EE    jmp        006084F8
 006084F0    lea        eax,[ebp-10]
 006084F3    call       @LStrClr
 006084F8    lea        edx,[ebp-5C]
 006084FB    mov        eax,esi
 006084FD    call       IntToStr
 00608502    mov        eax,dword ptr [ebp-5C]
 00608505    call       @LStrLen
 0060850A    dec        eax
>0060850B    jne        00608529
 0060850D    lea        edx,[ebp-60]
 00608510    mov        eax,esi
 00608512    call       IntToStr
 00608517    mov        ecx,dword ptr [ebp-60]
 0060851A    lea        eax,[ebp-1C]
 0060851D    mov        edx,6086D4; '0'
 00608522    call       @LStrCat3
>00608527    jmp        00608533
 00608529    lea        edx,[ebp-1C]
 0060852C    mov        eax,esi
 0060852E    call       IntToStr
 00608533    mov        eax,dword ptr [ebp-14]
 00608536    mov        edx,dword ptr [ebp-18]
 00608539    call       @LStrCmp
>0060853E    je         00608552
 00608540    lea        eax,[ebp-0C]
 00608543    mov        ecx,dword ptr [ebp-14]
 00608546    mov        edx,6086E0; '001/SV/QT/01/'
 0060854B    call       @LStrCat3
>00608550    jmp        006085AD
 00608552    cmp        esi,dword ptr [ebp-8]
>00608555    je         00608576
 00608557    push       6086F8; '001/SV/QT/'
 0060855C    push       dword ptr [ebp-1C]
 0060855F    push       60870C; '/'
 00608564    push       dword ptr [ebp-14]
 00608567    lea        eax,[ebp-0C]
 0060856A    mov        edx,4
 0060856F    call       @LStrCatN
>00608574    jmp        006085AD
 00608576    cmp        esi,dword ptr [ebp-8]
>00608579    jne        006085AD
 0060857B    push       dword ptr [ebp-10]
 0060857E    lea        edx,[ebp-64]
 00608581    mov        eax,ebx
 00608583    call       IntToStr
 00608588    push       dword ptr [ebp-64]
 0060858B    push       60870C; '/'
 00608590    push       608718; 'SV/QT/'
 00608595    push       dword ptr [ebp-1C]
 00608598    push       60870C; '/'
 0060859D    push       dword ptr [ebp-14]
 006085A0    lea        eax,[ebp-0C]
 006085A3    mov        edx,7
 006085A8    call       @LStrCatN
 006085AD    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006085B2    mov        eax,dword ptr [eax]
 006085B4    mov        eax,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 006085BA    call       TDataSet.Append
 006085BF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006085C4    mov        eax,dword ptr [eax]
 006085C6    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 006085CC    call       TDataSet.Append
 006085D1    call       Date
 006085D6    add        esp,0FFFFFFF8
 006085D9    fstp       qword ptr [esp]
 006085DC    wait
 006085DD    lea        eax,[ebp-68]
 006085E0    call       DateToStr
 006085E5    mov        edx,dword ptr [ebp-68]
 006085E8    mov        eax,dword ptr [edi+33C]; Tpenawaranfrm.dbtgl:TDBEdit
 006085EE    call       TCustomMaskEdit.SetText
 006085F3    mov        eax,dword ptr [edi+330]; Tpenawaranfrm.po:TDBEdit
 006085F9    mov        edx,dword ptr [ebp-0C]
 006085FC    call       TCustomMaskEdit.SetText
 00608601    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608606    mov        eax,dword ptr [eax]
 00608608    mov        eax,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 0060860E    mov        edx,dword ptr [eax]
 00608610    call       dword ptr [edx+24C]; TDataSet.Post
 00608616    xor        eax,eax
 00608618    pop        edx
 00608619    pop        ecx
 0060861A    pop        ecx
 0060861B    mov        dword ptr fs:[eax],edx
 0060861E    push       60866A
 00608623    lea        eax,[ebp-68]
 00608626    mov        edx,6
 0060862B    call       @LStrArrayClr
 00608630    lea        eax,[ebp-50]
 00608633    call       @VarClr
 00608638    lea        eax,[ebp-40]
 0060863B    mov        edx,2
 00608640    call       @LStrArrayClr
 00608645    lea        eax,[ebp-38]
 00608648    call       @VarClr
 0060864D    lea        eax,[ebp-28]
 00608650    mov        edx,8
 00608655    call       @LStrArrayClr
 0060865A    lea        eax,[ebp-4]
 0060865D    call       @LStrClr
 00608662    ret
<00608663    jmp        @HandleFinally
<00608668    jmp        00608623
 0060866A    pop        edi
 0060866B    pop        esi
 0060866C    pop        ebx
 0060866D    mov        esp,ebp
 0060866F    pop        ebp
 00608670    ret
*}
//end;

//00608720
//procedure sub_00608720(?:Tpenawaranfrm);
//begin
{*
 00608720    push       ebp
 00608721    mov        ebp,esp
 00608723    xor        ecx,ecx
 00608725    push       ecx
 00608726    push       ecx
 00608727    push       ecx
 00608728    push       ecx
 00608729    push       ecx
 0060872A    push       ebx
 0060872B    push       esi
 0060872C    mov        ebx,eax
 0060872E    xor        eax,eax
 00608730    push       ebp
 00608731    push       6087DF
 00608736    push       dword ptr fs:[eax]
 00608739    mov        dword ptr fs:[eax],esp
 0060873C    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608741    mov        eax,dword ptr [eax]
 00608743    mov        esi,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 00608749    mov        eax,esi
 0060874B    call       TZReadOnlyQuery.GetSQL
 00608750    mov        edx,6087F4; 'select * from quotation_detail where qd_kode = (:qk) '
 00608755    mov        ecx,dword ptr [eax]
 00608757    call       dword ptr [ecx+2C]
 0060875A    lea        edx,[ebp-14]
 0060875D    mov        eax,dword ptr [ebx+330]; Tpenawaranfrm.po:TDBEdit
 00608763    call       TCustomMaskEdit.GetText
 00608768    mov        edx,dword ptr [ebp-14]
 0060876B    lea        eax,[ebp-10]
 0060876E    call       @VarFromLStr
 00608773    lea        eax,[ebp-10]
 00608776    push       eax
 00608777    mov        edx,608834; 'qk'
 0060877C    mov        eax,dword ptr [esi+1B4]; TZQuery.?f1B4:TParams
 00608782    call       TParams.ParamByName
 00608787    pop        edx
 00608788    call       TParam.SetAsVariant
 0060878D    mov        eax,esi
 0060878F    call       TDataSet.Open
 00608794    mov        edx,608840; 'quotation.rav'
 00608799    mov        eax,dword ptr [ebx+35C]; Tpenawaranfrm.rpQuotation:TRvProject
 0060879F    call       TRvProject.SetProjectFile
 006087A4    mov        cl,1
 006087A6    mov        edx,608840; 'quotation.rav'
 006087AB    mov        eax,dword ptr [ebx+35C]; Tpenawaranfrm.rpQuotation:TRvProject
 006087B1    call       005D84D0
 006087B6    mov        eax,dword ptr [ebx+35C]; Tpenawaranfrm.rpQuotation:TRvProject
 006087BC    call       005D8484
 006087C1    xor        eax,eax
 006087C3    pop        edx
 006087C4    pop        ecx
 006087C5    pop        ecx
 006087C6    mov        dword ptr fs:[eax],edx
 006087C9    push       6087E6
 006087CE    lea        eax,[ebp-14]
 006087D1    call       @LStrClr
 006087D6    lea        eax,[ebp-10]
 006087D9    call       @VarClr
 006087DE    ret
<006087DF    jmp        @HandleFinally
<006087E4    jmp        006087CE
 006087E6    pop        esi
 006087E7    pop        ebx
 006087E8    mov        esp,ebp
 006087EA    pop        ebp
 006087EB    ret
*}
//end;

//00608850
procedure Tpenawaranfrm.FormCreate;
begin
{*
 00608850    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608855    mov        eax,dword ptr [eax]
 00608857    mov        eax,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 0060885D    call       005D8634
 00608862    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608867    mov        eax,dword ptr [eax]
 00608869    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 0060886F    call       005D8634
 00608874    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 00608879    mov        eax,dword ptr [eax]
 0060887B    mov        eax,dword ptr [eax+0A8]; Tdm.customer:TZQuery
 00608881    call       005D8634
 00608886    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060888B    mov        eax,dword ptr [eax]
 0060888D    mov        eax,dword ptr [eax+294]; Tdm.project:TZQuery
 00608893    call       005D8634
 00608898    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060889D    mov        eax,dword ptr [eax]
 0060889F    mov        eax,dword ptr [eax+0B8]; Tdm.custpic:TZQuery
 006088A5    call       005D8634
 006088AA    ret
*}
end;

//006088AC
procedure Tpenawaranfrm.btntambahClick;
begin
{*
 006088AC    push       ebx
 006088AD    mov        ebx,eax
 006088AF    mov        eax,ebx
 006088B1    call       0060838C
 006088B6    mov        dl,1
 006088B8    mov        eax,dword ptr [ebx+34C]; Tpenawaranfrm.btnsimpan:TSpeedButton
 006088BE    call       TControl.SetVisible
 006088C3    mov        dl,1
 006088C5    mov        eax,dword ptr [ebx+350]; Tpenawaranfrm.btnbatal:TSpeedButton
 006088CB    call       TControl.SetVisible
 006088D0    pop        ebx
 006088D1    ret
*}
end;

//006088D4
procedure Tpenawaranfrm.SpeedButton1Click;
begin
{*
 006088D4    mov        dl,1
 006088D6    mov        eax,dword ptr [eax+33C]; Tpenawaranfrm.dbtgl:TDBEdit
 006088DC    mov        ecx,dword ptr [eax]
 006088DE    call       dword ptr [ecx+64]; TControl.SetEnabled
 006088E1    ret
*}
end;

//006088E4
procedure Tpenawaranfrm.btnsimpanClick;
begin
{*
 006088E4    push       ebx
 006088E5    mov        ebx,eax
 006088E7    push       0
 006088E9    mov        cx,word ptr ds:[608958]; 0x3
 006088F0    mov        dl,3
 006088F2    mov        eax,608964; 'Simpan Record ini?'
 006088F7    call       MessageDlg
 006088FC    cmp        eax,6
>006088FF    jne        00608953
 00608901    xor        edx,edx
 00608903    mov        eax,dword ptr [ebx+33C]; Tpenawaranfrm.dbtgl:TDBEdit
 00608909    mov        ecx,dword ptr [eax]
 0060890B    call       dword ptr [ecx+64]; TControl.SetEnabled
 0060890E    xor        edx,edx
 00608910    mov        eax,dword ptr [ebx+34C]; Tpenawaranfrm.btnsimpan:TSpeedButton
 00608916    call       TControl.SetVisible
 0060891B    xor        edx,edx
 0060891D    mov        eax,dword ptr [ebx+350]; Tpenawaranfrm.btnbatal:TSpeedButton
 00608923    call       TControl.SetVisible
 00608928    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060892D    mov        eax,dword ptr [eax]
 0060892F    mov        eax,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 00608935    call       0056F648
 0060893A    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060893F    mov        eax,dword ptr [eax]
 00608941    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 00608947    call       0056F648
 0060894C    mov        eax,ebx
 0060894E    call       00608720
 00608953    pop        ebx
 00608954    ret
*}
end;

//00608978
//procedure Tpenawaranfrm.DBGrid1KeyDown(?:?; ?:?);
//begin
{*
 00608978    push       ebp
 00608979    mov        ebp,esp
 0060897B    cmp        word ptr [ecx],0D
>0060897F    jne        00608993
 00608981    mov        eax,[0061C3BC]
 00608986    mov        eax,dword ptr [eax]
 00608988    mov        edx,dword ptr ds:[5D9F1C]; Tbarangviewfrm
 0060898E    call       005D859C
 00608993    pop        ebp
 00608994    ret        4
*}
//end;

//00608998
procedure Tpenawaranfrm.FormClose;
begin
{*
 00608998    mov        eax,[0061BCD8]; ^gvar_0061F8F4
 0060899D    xor        edx,edx
 0060899F    mov        dword ptr [eax],edx
 006089A1    ret
*}
end;

//006089A4
procedure Tpenawaranfrm.btnbatalClick;
begin
{*
 006089A4    push       ebx
 006089A5    mov        ebx,eax
 006089A7    push       0
 006089A9    mov        cx,word ptr ds:[608A04]; 0x3
 006089B0    mov        dl,3
 006089B2    mov        eax,608A10; 'Batalkan Record ini?'
 006089B7    call       MessageDlg
 006089BC    cmp        eax,6
>006089BF    jne        006089FF
 006089C1    xor        edx,edx
 006089C3    mov        eax,dword ptr [ebx+34C]; Tpenawaranfrm.btnsimpan:TSpeedButton
 006089C9    call       TControl.SetVisible
 006089CE    xor        edx,edx
 006089D0    mov        eax,dword ptr [ebx+350]; Tpenawaranfrm.btnbatal:TSpeedButton
 006089D6    call       TControl.SetVisible
 006089DB    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006089E0    mov        eax,dword ptr [eax]
 006089E2    mov        eax,dword ptr [eax+340]; Tdm.penawaran:TZQuery
 006089E8    call       0056F70C
 006089ED    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 006089F2    mov        eax,dword ptr [eax]
 006089F4    mov        eax,dword ptr [eax+384]; Tdm.penawaran_detail:TZQuery
 006089FA    call       0056F70C
 006089FF    pop        ebx
 00608A00    ret
*}
end;

end.