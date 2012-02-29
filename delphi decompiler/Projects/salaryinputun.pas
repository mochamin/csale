{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit salaryinputun;

interface

uses
  Classes, Windows, Graphics, Forms, ExtCtrls, StdCtrls, Buttons, DBGrids, Controls;

type
  Tsalaryinputfrm = class(TForm)
    Panel1:TPanel;//f2F8
    Label1:TLabel;//f2FC
    Panel4:TPanel;//f300
    Panel5:TPanel;//f304
    Panel3:TPanel;//f308
    btnedit:TSpeedButton;//f30C
    btntambah:TSpeedButton;//f310
    SpeedButton2:TSpeedButton;//f314
    gridsalary:TDBGrid;//f318
    ImageList:TImageList;//f31C
    cb:TCheckBox;//f320
    //procedure gridsalaryDrawColumnCell(?:?; ?:?; ?:?; ?:?; ?:?);
    //procedure gridsalaryKeyDown(?:?; ?:?);
    procedure gridsalaryCellClick;
    procedure cbClick;
    procedure FormActivate;
    procedure btntambahClick;
  end;

implementation

{$R *.DFM}

//0060FA6C
//procedure Tsalaryinputfrm.gridsalaryDrawColumnCell(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0060FA6C    push       ebp
 0060FA6D    mov        ebp,esp
 0060FA6F    add        esp,0FFFFFFC0
 0060FA72    push       ebx
 0060FA73    push       esi
 0060FA74    push       edi
 0060FA75    xor        ebx,ebx
 0060FA77    mov        dword ptr [ebp-30],ebx
 0060FA7A    mov        dword ptr [ebp-2C],ebx
 0060FA7D    mov        dword ptr [ebp-28],ebx
 0060FA80    mov        dword ptr [ebp-24],ebx
 0060FA83    mov        dword ptr [ebp-40],ebx
 0060FA86    mov        dword ptr [ebp-3C],ebx
 0060FA89    mov        dword ptr [ebp-38],ebx
 0060FA8C    mov        dword ptr [ebp-34],ebx
 0060FA8F    mov        dword ptr [ebp-8],ecx
 0060FA92    mov        dword ptr [ebp-4],eax
 0060FA95    xor        eax,eax
 0060FA97    push       ebp
 0060FA98    push       60FBEE
 0060FA9D    push       dword ptr fs:[eax]
 0060FAA0    mov        dword ptr fs:[eax],esp
 0060FAA3    mov        eax,dword ptr [ebp-8]
 0060FAA6    mov        esi,eax
 0060FAA8    lea        edi,[ebp-20]
 0060FAAB    movs       dword ptr [edi],dword ptr [esi]
 0060FAAC    movs       dword ptr [edi],dword ptr [esi]
 0060FAAD    movs       dword ptr [edi],dword ptr [esi]
 0060FAAE    movs       dword ptr [edi],dword ptr [esi]
 0060FAAF    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FAB4    mov        eax,dword ptr [eax]
 0060FAB6    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FABC    mov        edx,60FC08; 'kr_checked'
 0060FAC1    call       TDataSet.FieldByName
 0060FAC6    mov        ebx,eax
 0060FAC8    mov        eax,dword ptr [ebp+0C]
 0060FACB    call       TColumn.GetField
 0060FAD0    cmp        ebx,eax
>0060FAD2    jne        0060FBB1
 0060FAD8    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FADD    mov        eax,dword ptr [eax]
 0060FADF    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FAE5    mov        edx,60FC08; 'kr_checked'
 0060FAEA    call       TDataSet.FieldByName
 0060FAEF    lea        edx,[ebp-30]
 0060FAF2    mov        ecx,dword ptr [eax]
 0060FAF4    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060FAF7    lea        eax,[ebp-30]
 0060FAFA    push       eax
 0060FAFB    lea        eax,[ebp-40]
 0060FAFE    mov        edx,1
 0060FB03    mov        cl,1
 0060FB05    call       @VarFromInt
 0060FB0A    lea        edx,[ebp-40]
 0060FB0D    pop        eax
 0060FB0E    call       @VarCmpEQ
>0060FB13    jne        0060FB1C
 0060FB15    mov        ebx,1
>0060FB1A    jmp        0060FB1E
 0060FB1C    xor        ebx,ebx
 0060FB1E    mov        dl,1
 0060FB20    mov        eax,[0042A4BC]; TBitmap
 0060FB25    call       TBitmap.Create; TBitmap.Create
 0060FB2A    mov        dword ptr [ebp-0C],eax
 0060FB2D    xor        eax,eax
 0060FB2F    push       ebp
 0060FB30    push       60FB98
 0060FB35    push       dword ptr fs:[eax]
 0060FB38    mov        dword ptr fs:[eax],esp
 0060FB3B    mov        eax,dword ptr [ebp-4]
 0060FB3E    mov        eax,dword ptr [eax+31C]; Tsalaryinputfrm.ImageList:TImageList
 0060FB44    mov        ecx,dword ptr [ebp-0C]
 0060FB47    mov        edx,ebx
 0060FB49    call       TCustomImageList.GetBitmap
 0060FB4E    mov        eax,dword ptr [ebp-8]
 0060FB51    mov        eax,dword ptr [eax+0C]
 0060FB54    mov        edx,dword ptr [ebp-8]
 0060FB57    sub        eax,dword ptr [edx+4]
 0060FB5A    mov        dword ptr [ebp-10],eax
 0060FB5D    mov        eax,dword ptr [ebp-8]
 0060FB60    mov        eax,dword ptr [eax]
 0060FB62    add        eax,dword ptr [ebp-10]
 0060FB65    mov        dword ptr [ebp-18],eax
 0060FB68    lea        edx,[ebp-20]
 0060FB6B    mov        eax,dword ptr [ebp-4]
 0060FB6E    mov        eax,dword ptr [eax+318]; Tsalaryinputfrm.gridsalary:TDBGrid
 0060FB74    mov        eax,dword ptr [eax+208]; TDBGrid.FCanvas:TCanvas
 0060FB7A    mov        ecx,dword ptr [ebp-0C]
 0060FB7D    call       TCanvas.StretchDraw
 0060FB82    xor        eax,eax
 0060FB84    pop        edx
 0060FB85    pop        ecx
 0060FB86    pop        ecx
 0060FB87    mov        dword ptr fs:[eax],edx
 0060FB8A    push       60FB9F
 0060FB8F    mov        eax,dword ptr [ebp-0C]
 0060FB92    call       TObject.Free
 0060FB97    ret
<0060FB98    jmp        @HandleFinally
<0060FB9D    jmp        0060FB8F
 0060FB9F    mov        eax,dword ptr [ebp-8]
 0060FBA2    mov        esi,eax
 0060FBA4    lea        edi,[ebp-20]
 0060FBA7    movs       dword ptr [edi],dword ptr [esi]
 0060FBA8    movs       dword ptr [edi],dword ptr [esi]
 0060FBA9    movs       dword ptr [edi],dword ptr [esi]
 0060FBAA    movs       dword ptr [edi],dword ptr [esi]
 0060FBAB    mov        eax,dword ptr [ebp-10]
 0060FBAE    add        dword ptr [ebp-20],eax
 0060FBB1    mov        eax,dword ptr [ebp+0C]
 0060FBB4    push       eax
 0060FBB5    mov        al,byte ptr [ebp+8]
 0060FBB8    push       eax
 0060FBB9    lea        edx,[ebp-20]
 0060FBBC    mov        eax,dword ptr [ebp-4]
 0060FBBF    mov        eax,dword ptr [eax+318]; Tsalaryinputfrm.gridsalary:TDBGrid
 0060FBC5    mov        ecx,dword ptr [ebp+10]
 0060FBC8    call       TCustomDBGrid.DefaultDrawColumnCell
 0060FBCD    xor        eax,eax
 0060FBCF    pop        edx
 0060FBD0    pop        ecx
 0060FBD1    pop        ecx
 0060FBD2    mov        dword ptr fs:[eax],edx
 0060FBD5    push       60FBF5
 0060FBDA    lea        eax,[ebp-40]
 0060FBDD    mov        edx,dword ptr ds:[401114]; Variant
 0060FBE3    mov        ecx,2
 0060FBE8    call       @FinalizeArray
 0060FBED    ret
<0060FBEE    jmp        @HandleFinally
<0060FBF3    jmp        0060FBDA
 0060FBF5    pop        edi
 0060FBF6    pop        esi
 0060FBF7    pop        ebx
 0060FBF8    mov        esp,ebp
 0060FBFA    pop        ebp
 0060FBFB    ret        0C
*}
//end;

//0060FC14
//procedure Tsalaryinputfrm.gridsalaryKeyDown(?:?; ?:?);
//begin
{*
 0060FC14    push       ebp
 0060FC15    mov        ebp,esp
 0060FC17    push       ecx
 0060FC18    mov        ecx,8
 0060FC1D    push       0
 0060FC1F    push       0
 0060FC21    dec        ecx
<0060FC22    jne        0060FC1D
 0060FC24    xchg       ecx,dword ptr [ebp-4]
 0060FC27    push       ebx
 0060FC28    xor        eax,eax
 0060FC2A    push       ebp
 0060FC2B    push       60FD30
 0060FC30    push       dword ptr fs:[eax]
 0060FC33    mov        dword ptr fs:[eax],esp
 0060FC36    cmp        word ptr [ecx],20
>0060FC3A    jne        0060FCFC
 0060FC40    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FC45    mov        eax,dword ptr [eax]
 0060FC47    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FC4D    call       TDataSet.Edit
 0060FC52    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FC57    mov        eax,dword ptr [eax]
 0060FC59    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FC5F    mov        edx,60FD48; 'kr_Cek'
 0060FC64    call       TDataSet.FieldByName
 0060FC69    lea        edx,[ebp-10]
 0060FC6C    mov        ecx,dword ptr [eax]
 0060FC6E    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060FC71    lea        eax,[ebp-10]
 0060FC74    push       eax
 0060FC75    mov        al,58
 0060FC77    mov        byte ptr [ebp-23],al
 0060FC7A    mov        byte ptr [ebp-24],1
 0060FC7E    lea        eax,[ebp-20]
 0060FC81    lea        edx,[ebp-24]
 0060FC84    call       @VarFromPStr
 0060FC89    lea        edx,[ebp-20]
 0060FC8C    pop        eax
 0060FC8D    call       @VarCmpEQ
>0060FC92    jne        0060FCC4
 0060FC94    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FC99    mov        eax,dword ptr [eax]
 0060FC9B    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FCA1    mov        edx,60FD48; 'kr_Cek'
 0060FCA6    call       TDataSet.FieldByName
 0060FCAB    push       eax
 0060FCAC    lea        eax,[ebp-34]
 0060FCAF    xor        edx,edx
 0060FCB1    call       @VarFromLStr
 0060FCB6    lea        edx,[ebp-34]
 0060FCB9    pop        eax
 0060FCBA    mov        ecx,dword ptr [eax]
 0060FCBC    call       dword ptr [ecx+0B4]; TField.SetAsVariant
>0060FCC2    jmp        0060FCFC
 0060FCC4    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FCC9    mov        eax,dword ptr [eax]
 0060FCCB    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FCD1    mov        edx,60FD48; 'kr_Cek'
 0060FCD6    call       TDataSet.FieldByName
 0060FCDB    push       eax
 0060FCDC    mov        al,58
 0060FCDE    mov        byte ptr [ebp-23],al
 0060FCE1    mov        byte ptr [ebp-24],1
 0060FCE5    lea        eax,[ebp-44]
 0060FCE8    lea        edx,[ebp-24]
 0060FCEB    call       @VarFromPStr
 0060FCF0    lea        edx,[ebp-44]
 0060FCF3    pop        eax
 0060FCF4    mov        ecx,dword ptr [eax]
 0060FCF6    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060FCFC    xor        eax,eax
 0060FCFE    pop        edx
 0060FCFF    pop        ecx
 0060FD00    pop        ecx
 0060FD01    mov        dword ptr fs:[eax],edx
 0060FD04    push       60FD37
 0060FD09    lea        eax,[ebp-44]
 0060FD0C    mov        edx,dword ptr ds:[401114]; Variant
 0060FD12    mov        ecx,2
 0060FD17    call       @FinalizeArray
 0060FD1C    lea        eax,[ebp-20]
 0060FD1F    mov        edx,dword ptr ds:[401114]; Variant
 0060FD25    mov        ecx,2
 0060FD2A    call       @FinalizeArray
 0060FD2F    ret
<0060FD30    jmp        @HandleFinally
<0060FD35    jmp        0060FD09
 0060FD37    pop        ebx
 0060FD38    mov        esp,ebp
 0060FD3A    pop        ebp
 0060FD3B    ret        4
*}
//end;

//0060FD50
procedure Tsalaryinputfrm.gridsalaryCellClick;
begin
{*
 0060FD50    push       ebp
 0060FD51    mov        ebp,esp
 0060FD53    mov        ecx,8
 0060FD58    push       0
 0060FD5A    push       0
 0060FD5C    dec        ecx
<0060FD5D    jne        0060FD58
 0060FD5F    push       ecx
 0060FD60    xor        eax,eax
 0060FD62    push       ebp
 0060FD63    push       60FE5E
 0060FD68    push       dword ptr fs:[eax]
 0060FD6B    mov        dword ptr fs:[eax],esp
 0060FD6E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FD73    mov        eax,dword ptr [eax]
 0060FD75    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FD7B    call       TDataSet.Edit
 0060FD80    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FD85    mov        eax,dword ptr [eax]
 0060FD87    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FD8D    mov        edx,60FE74; 'kr_Cek'
 0060FD92    call       TDataSet.FieldByName
 0060FD97    lea        edx,[ebp-10]
 0060FD9A    mov        ecx,dword ptr [eax]
 0060FD9C    call       dword ptr [ecx+64]; TField.GetAsVariant
 0060FD9F    lea        eax,[ebp-10]
 0060FDA2    push       eax
 0060FDA3    mov        al,58
 0060FDA5    mov        byte ptr [ebp-23],al
 0060FDA8    mov        byte ptr [ebp-24],1
 0060FDAC    lea        eax,[ebp-20]
 0060FDAF    lea        edx,[ebp-24]
 0060FDB2    call       @VarFromPStr
 0060FDB7    lea        edx,[ebp-20]
 0060FDBA    pop        eax
 0060FDBB    call       @VarCmpEQ
>0060FDC0    jne        0060FDF2
 0060FDC2    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FDC7    mov        eax,dword ptr [eax]
 0060FDC9    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FDCF    mov        edx,60FE74; 'kr_Cek'
 0060FDD4    call       TDataSet.FieldByName
 0060FDD9    push       eax
 0060FDDA    lea        eax,[ebp-34]
 0060FDDD    xor        edx,edx
 0060FDDF    call       @VarFromLStr
 0060FDE4    lea        edx,[ebp-34]
 0060FDE7    pop        eax
 0060FDE8    mov        ecx,dword ptr [eax]
 0060FDEA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
>0060FDF0    jmp        0060FE2A
 0060FDF2    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FDF7    mov        eax,dword ptr [eax]
 0060FDF9    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FDFF    mov        edx,60FE74; 'kr_Cek'
 0060FE04    call       TDataSet.FieldByName
 0060FE09    push       eax
 0060FE0A    mov        al,58
 0060FE0C    mov        byte ptr [ebp-23],al
 0060FE0F    mov        byte ptr [ebp-24],1
 0060FE13    lea        eax,[ebp-44]
 0060FE16    lea        edx,[ebp-24]
 0060FE19    call       @VarFromPStr
 0060FE1E    lea        edx,[ebp-44]
 0060FE21    pop        eax
 0060FE22    mov        ecx,dword ptr [eax]
 0060FE24    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060FE2A    xor        eax,eax
 0060FE2C    pop        edx
 0060FE2D    pop        ecx
 0060FE2E    pop        ecx
 0060FE2F    mov        dword ptr fs:[eax],edx
 0060FE32    push       60FE65
 0060FE37    lea        eax,[ebp-44]
 0060FE3A    mov        edx,dword ptr ds:[401114]; Variant
 0060FE40    mov        ecx,2
 0060FE45    call       @FinalizeArray
 0060FE4A    lea        eax,[ebp-20]
 0060FE4D    mov        edx,dword ptr ds:[401114]; Variant
 0060FE53    mov        ecx,2
 0060FE58    call       @FinalizeArray
 0060FE5D    ret
<0060FE5E    jmp        @HandleFinally
<0060FE63    jmp        0060FE37
 0060FE65    mov        esp,ebp
 0060FE67    pop        ebp
 0060FE68    ret
*}
end;

//0060FE7C
procedure Tsalaryinputfrm.cbClick;
begin
{*
 0060FE7C    push       ebp
 0060FE7D    mov        ebp,esp
 0060FE7F    mov        ecx,4
 0060FE84    push       0
 0060FE86    push       0
 0060FE88    dec        ecx
<0060FE89    jne        0060FE84
 0060FE8B    push       ecx
 0060FE8C    push       ebx
 0060FE8D    push       esi
 0060FE8E    mov        esi,eax
 0060FE90    xor        eax,eax
 0060FE92    push       ebp
 0060FE93    push       60FF64
 0060FE98    push       dword ptr fs:[eax]
 0060FE9B    mov        dword ptr fs:[eax],esp
 0060FE9E    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FEA3    mov        eax,dword ptr [eax]
 0060FEA5    mov        ebx,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FEAB    mov        eax,ebx
 0060FEAD    call       TDataSet.First
 0060FEB2    mov        eax,dword ptr [esi+320]; Tsalaryinputfrm.cb:TCheckBox
 0060FEB8    mov        edx,dword ptr [eax]
 0060FEBA    call       dword ptr [edx+0C8]; TCustomCheckBox.GetChecked
 0060FEC0    cmp        al,1
>0060FEC2    jne        0060FF3D
>0060FEC4    jmp        0060FF01
 0060FEC6    mov        eax,ebx
 0060FEC8    call       TDataSet.Edit
 0060FECD    mov        edx,60FF7C; 'kr_cek'
 0060FED2    mov        eax,ebx
 0060FED4    call       TDataSet.FieldByName
 0060FED9    push       eax
 0060FEDA    mov        al,58
 0060FEDC    mov        byte ptr [ebp-13],al
 0060FEDF    mov        byte ptr [ebp-14],1
 0060FEE3    lea        eax,[ebp-10]
 0060FEE6    lea        edx,[ebp-14]
 0060FEE9    call       @VarFromPStr
 0060FEEE    lea        edx,[ebp-10]
 0060FEF1    pop        eax
 0060FEF2    mov        ecx,dword ptr [eax]
 0060FEF4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060FEFA    mov        eax,ebx
 0060FEFC    call       TDataSet.Next
 0060FF01    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<0060FF08    je         0060FEC6
>0060FF0A    jmp        0060FF46
 0060FF0C    mov        eax,ebx
 0060FF0E    call       TDataSet.Edit
 0060FF13    mov        edx,60FF7C; 'kr_cek'
 0060FF18    mov        eax,ebx
 0060FF1A    call       TDataSet.FieldByName
 0060FF1F    push       eax
 0060FF20    lea        eax,[ebp-24]
 0060FF23    xor        edx,edx
 0060FF25    call       @VarFromLStr
 0060FF2A    lea        edx,[ebp-24]
 0060FF2D    pop        eax
 0060FF2E    mov        ecx,dword ptr [eax]
 0060FF30    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0060FF36    mov        eax,ebx
 0060FF38    call       TDataSet.Next
 0060FF3D    cmp        byte ptr [ebx+0A1],0; TZQuery.FEOF:Boolean
<0060FF44    je         0060FF0C
 0060FF46    xor        eax,eax
 0060FF48    pop        edx
 0060FF49    pop        ecx
 0060FF4A    pop        ecx
 0060FF4B    mov        dword ptr fs:[eax],edx
 0060FF4E    push       60FF6B
 0060FF53    lea        eax,[ebp-24]
 0060FF56    call       @VarClr
 0060FF5B    lea        eax,[ebp-10]
 0060FF5E    call       @VarClr
 0060FF63    ret
<0060FF64    jmp        @HandleFinally
<0060FF69    jmp        0060FF53
 0060FF6B    pop        esi
 0060FF6C    pop        ebx
 0060FF6D    mov        esp,ebp
 0060FF6F    pop        ebp
 0060FF70    ret
*}
end;

//0060FF84
procedure Tsalaryinputfrm.FormActivate;
begin
{*
 0060FF84    mov        eax,[0061BE88]; ^gvar_0061F968:Tdm
 0060FF89    mov        eax,dword ptr [eax]
 0060FF8B    mov        eax,dword ptr [eax+800]; Tdm.salary:TZQuery
 0060FF91    call       005D8634
 0060FF96    ret
*}
end;

//0060FF98
procedure Tsalaryinputfrm.btntambahClick;
begin
{*
 0060FF98    mov        eax,[0061B1E8]
 0060FF9D    mov        eax,dword ptr [eax]
 0060FF9F    mov        edx,dword ptr ds:[60E0DC]; Tsalaryprosesfrm
 0060FFA5    call       005D859C
 0060FFAA    ret
*}
end;

end.