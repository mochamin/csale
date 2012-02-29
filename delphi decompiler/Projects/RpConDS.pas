{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpConDS;

interface

uses
  Classes, Windows, Graphics, RpCon, DB;

type
  TRvCustomDataSetConnection = class(TRvCustomConnection)
  public
    fF0:byte;//fF0
    fF1:Boolean;//fF1
    fF4:String;//fF4
    fF8:byte;//fF8
    fFC:dword;//fFC
    f100:byte;//f100
    procedure sub_0057CB68; virtual;
    procedure sub_0057CB7C; virtual;
    //function sub_0057CB90:?; virtual;
    procedure sub_0057CBDC; virtual;
    procedure sub_0057CCC8; virtual;
    procedure sub_0057CFCC; virtual;
    procedure sub_0057D0E0; virtual;
    procedure sub_0057D168; virtual;
    procedure @AbstractError(); virtual;
  end;
  TRvDataSetConnection = class(TRvCustomDataSetConnection)
  public
    DataSet:TDataSet;//f108
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    //function sub_0057D22C:?; virtual;
  end;

implementation

{$R *.DFM}

//0057CB68
procedure sub_0057CB68;
begin
{*
 0057CB68    push       ebx
 0057CB69    mov        ebx,eax
 0057CB6B    mov        eax,ebx
 0057CB6D    mov        edx,dword ptr [eax]
 0057CB6F    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CB72    call       TDataSet.First
 0057CB77    pop        ebx
 0057CB78    ret
*}
end;

//0057CB7C
procedure sub_0057CB7C;
begin
{*
 0057CB7C    push       ebx
 0057CB7D    mov        ebx,eax
 0057CB7F    mov        eax,ebx
 0057CB81    mov        edx,dword ptr [eax]
 0057CB83    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CB86    call       TDataSet.Next
 0057CB8B    pop        ebx
 0057CB8C    ret
*}
end;

//0057CB90
//function sub_0057CB90:?;
//begin
{*
 0057CB90    push       ebx
 0057CB91    mov        ebx,eax
 0057CB93    cmp        byte ptr [ebx+100],0; TRvDataSetConnection.?f100:byte
>0057CB9A    je         0057CBCB
 0057CB9C    mov        eax,ebx
 0057CB9E    mov        edx,dword ptr [eax]
 0057CBA0    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CBA3    cmp        byte ptr [eax+0A1],0
>0057CBAA    je         0057CBBC
 0057CBAC    mov        eax,ebx
 0057CBAE    mov        edx,dword ptr [eax]
 0057CBB0    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CBB3    cmp        byte ptr [eax+0A0],0
>0057CBBA    jne        0057CBC0
 0057CBBC    xor        eax,eax
>0057CBBE    jmp        0057CBC2
 0057CBC0    mov        al,1
 0057CBC2    mov        byte ptr [ebx+100],0; TRvDataSetConnection.?f100:byte
 0057CBC9    pop        ebx
 0057CBCA    ret
 0057CBCB    mov        eax,ebx
 0057CBCD    mov        edx,dword ptr [eax]
 0057CBCF    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CBD2    mov        al,byte ptr [eax+0A1]
 0057CBD8    pop        ebx
 0057CBD9    ret
*}
//end;

//0057CBDC
procedure sub_0057CBDC;
begin
{*
 0057CBDC    push       ebp
 0057CBDD    mov        ebp,esp
 0057CBDF    add        esp,0FFFFFFEC
 0057CBE2    push       ebx
 0057CBE3    push       esi
 0057CBE4    push       edi
 0057CBE5    xor        edx,edx
 0057CBE7    mov        dword ptr [ebp-14],edx
 0057CBEA    mov        dword ptr [ebp-10],edx
 0057CBED    mov        dword ptr [ebp-4],eax
 0057CBF0    xor        eax,eax
 0057CBF2    push       ebp
 0057CBF3    push       57CCBA
 0057CBF8    push       dword ptr fs:[eax]
 0057CBFB    mov        dword ptr fs:[eax],esp
 0057CBFE    mov        eax,dword ptr [ebp-4]
 0057CC01    mov        edx,dword ptr [eax]
 0057CC03    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CC06    mov        dword ptr [ebp-0C],eax
 0057CC09    mov        eax,dword ptr [ebp-0C]
 0057CC0C    call       TDataSet.GetFieldCount
 0057CC11    mov        esi,eax
 0057CC13    dec        esi
 0057CC14    test       esi,esi
>0057CC16    jl         0057CC9F
 0057CC1C    inc        esi
 0057CC1D    mov        dword ptr [ebp-8],0
 0057CC24    mov        eax,dword ptr [ebp-0C]
 0057CC27    mov        eax,dword ptr [eax+30]
 0057CC2A    mov        edx,dword ptr [ebp-8]
 0057CC2D    call       TFields.GetField
 0057CC32    mov        edi,eax
 0057CC34    xor        eax,eax
 0057CC36    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 0057CC39    mov        edx,dword ptr ds:[61B2B4]
 0057CC3F    mov        bl,byte ptr [edx+eax]
 0057CC42    lea        edx,[ebp-10]
 0057CC45    mov        eax,edi
 0057CC47    call       TField.GetDisplayName
 0057CC4C    mov        eax,dword ptr [ebp-10]
 0057CC4F    mov        edx,dword ptr [edi+38]; TField.?f38:String
 0057CC52    call       @LStrCmp
>0057CC57    jne        0057CC74
 0057CC59    mov        eax,edi
 0057CC5B    mov        edx,dword ptr [eax]
 0057CC5D    call       dword ptr [edx+70]; TField.GetDataSize
 0057CC60    push       eax
 0057CC61    push       0
 0057CC63    push       0
 0057CC65    mov        ecx,ebx
 0057CC67    mov        edx,dword ptr [edi+38]; TField.?f38:String
 0057CC6A    mov        eax,dword ptr [ebp-4]
 0057CC6D    call       0057B4F0
>0057CC72    jmp        0057CC99
 0057CC74    mov        eax,edi
 0057CC76    mov        edx,dword ptr [eax]
 0057CC78    call       dword ptr [edx+70]; TField.GetDataSize
 0057CC7B    push       eax
 0057CC7C    lea        edx,[ebp-14]
 0057CC7F    mov        eax,edi
 0057CC81    call       TField.GetDisplayName
 0057CC86    mov        eax,dword ptr [ebp-14]
 0057CC89    push       eax
 0057CC8A    push       0
 0057CC8C    mov        ecx,ebx
 0057CC8E    mov        edx,dword ptr [edi+38]; TField.?f38:String
 0057CC91    mov        eax,dword ptr [ebp-4]
 0057CC94    call       0057B4F0
 0057CC99    inc        dword ptr [ebp-8]
 0057CC9C    dec        esi
<0057CC9D    jne        0057CC24
 0057CC9F    xor        eax,eax
 0057CCA1    pop        edx
 0057CCA2    pop        ecx
 0057CCA3    pop        ecx
 0057CCA4    mov        dword ptr fs:[eax],edx
 0057CCA7    push       57CCC1
 0057CCAC    lea        eax,[ebp-14]
 0057CCAF    mov        edx,2
 0057CCB4    call       @LStrArrayClr
 0057CCB9    ret
<0057CCBA    jmp        @HandleFinally
<0057CCBF    jmp        0057CCAC
 0057CCC1    pop        edi
 0057CCC2    pop        esi
 0057CCC3    pop        ebx
 0057CCC4    mov        esp,ebp
 0057CCC6    pop        ebp
 0057CCC7    ret
*}
end;

//0057CCC8
procedure sub_0057CCC8;
begin
{*
 0057CCC8    push       ebp
 0057CCC9    mov        ebp,esp
 0057CCCB    mov        ecx,8
 0057CCD0    push       0
 0057CCD2    push       0
 0057CCD4    dec        ecx
<0057CCD5    jne        0057CCD0
 0057CCD7    push       ebx
 0057CCD8    push       esi
 0057CCD9    push       edi
 0057CCDA    mov        dword ptr [ebp-4],eax
 0057CCDD    xor        eax,eax
 0057CCDF    push       ebp
 0057CCE0    push       57CFBE
 0057CCE5    push       dword ptr fs:[eax]
 0057CCE8    mov        dword ptr fs:[eax],esp
 0057CCEB    mov        eax,dword ptr [ebp-4]
 0057CCEE    mov        edx,dword ptr [eax]
 0057CCF0    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057CCF3    mov        dword ptr [ebp-18],eax
 0057CCF6    mov        eax,dword ptr [ebp-18]
 0057CCF9    call       TDataSet.GetFieldCount
 0057CCFE    dec        eax
 0057CCFF    test       eax,eax
>0057CD01    jl         0057CFA3
 0057CD07    inc        eax
 0057CD08    mov        dword ptr [ebp-1C],eax
 0057CD0B    mov        dword ptr [ebp-8],0
 0057CD12    mov        eax,dword ptr [ebp-18]
 0057CD15    mov        eax,dword ptr [eax+30]
 0057CD18    mov        edx,dword ptr [ebp-8]
 0057CD1B    call       TFields.GetField
 0057CD20    mov        ebx,eax
 0057CD22    mov        eax,dword ptr [ebp-4]
 0057CD25    call       0057B344
 0057CD2A    cmp        byte ptr [eax+0C],0
>0057CD2E    je         0057CD3E
 0057CD30    mov        eax,ebx
 0057CD32    mov        edx,dword ptr [eax]
 0057CD34    call       dword ptr [edx+84]; TField.GetIsNull
 0057CD3A    test       al,al
>0057CD3C    je         0057CD4B
 0057CD3E    mov        eax,dword ptr [ebp-4]
 0057CD41    call       0057B884
>0057CD46    jmp        0057CF97
 0057CD4B    xor        eax,eax
 0057CD4D    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 0057CD50    mov        edx,dword ptr ds:[61B2B4]
 0057CD56    movzx      eax,byte ptr [edx+eax]
 0057CD5A    cmp        eax,0C
>0057CD5D    ja         0057CF97
 0057CD63    jmp        dword ptr [eax*4+57CD6A]
 0057CD63    dd         57CD9E
 0057CD63    dd         57CDC7
 0057CD63    dd         57CDEA
 0057CD63    dd         57CE0D
 0057CD63    dd         57CE35
 0057CD63    dd         57CE5D
 0057CD63    dd         57CE85
 0057CD63    dd         57CE85
 0057CD63    dd         57CE85
 0057CD63    dd         57CEAD
 0057CD63    dd         57CEAD
 0057CD63    dd         57CEAD
 0057CD63    dd         57CF62
 0057CD9E    lea        edx,[ebp-20]
 0057CDA1    mov        eax,ebx
 0057CDA3    mov        ecx,dword ptr [eax]
 0057CDA5    call       dword ptr [ecx+60]; TField.GetAsString
 0057CDA8    mov        eax,dword ptr [ebp-20]
 0057CDAB    push       eax
 0057CDAC    lea        edx,[ebp-24]
 0057CDAF    mov        eax,ebx
 0057CDB1    call       TField.GetDisplayText
 0057CDB6    mov        edx,dword ptr [ebp-24]
 0057CDB9    mov        eax,dword ptr [ebp-4]
 0057CDBC    pop        ecx
 0057CDBD    call       0057B8E4
>0057CDC2    jmp        0057CF97
 0057CDC7    mov        eax,ebx
 0057CDC9    mov        edx,dword ptr [eax]
 0057CDCB    call       dword ptr [edx+58]; TField.GetAsInteger
 0057CDCE    push       eax
 0057CDCF    lea        edx,[ebp-28]
 0057CDD2    mov        eax,ebx
 0057CDD4    call       TField.GetDisplayText
 0057CDD9    mov        edx,dword ptr [ebp-28]
 0057CDDC    mov        eax,dword ptr [ebp-4]
 0057CDDF    pop        ecx
 0057CDE0    call       0057B9E0
>0057CDE5    jmp        0057CF97
 0057CDEA    mov        eax,ebx
 0057CDEC    mov        edx,dword ptr [eax]
 0057CDEE    call       dword ptr [edx+44]; TField.GetAsBoolean
 0057CDF1    push       eax
 0057CDF2    lea        edx,[ebp-2C]
 0057CDF5    mov        eax,ebx
 0057CDF7    call       TField.GetDisplayText
 0057CDFC    mov        edx,dword ptr [ebp-2C]
 0057CDFF    mov        eax,dword ptr [ebp-4]
 0057CE02    pop        ecx
 0057CE03    call       0057BBC8
>0057CE08    jmp        0057CF97
 0057CE0D    mov        eax,ebx
 0057CE0F    mov        edx,dword ptr [eax]
 0057CE11    call       dword ptr [edx+54]; TField.GetAsFloat
 0057CE14    add        esp,0FFFFFFF4
 0057CE17    fstp       tbyte ptr [esp]
 0057CE1A    wait
 0057CE1B    lea        edx,[ebp-30]
 0057CE1E    mov        eax,ebx
 0057CE20    call       TField.GetDisplayText
 0057CE25    mov        edx,dword ptr [ebp-30]
 0057CE28    mov        eax,dword ptr [ebp-4]
 0057CE2B    call       0057BC90
>0057CE30    jmp        0057CF97
 0057CE35    mov        eax,ebx
 0057CE37    mov        edx,dword ptr [eax]
 0057CE39    call       dword ptr [edx+4C]; TField.GetAsCurrency
 0057CE3C    add        esp,0FFFFFFF8
 0057CE3F    fistp      qword ptr [esp]
 0057CE42    wait
 0057CE43    lea        edx,[ebp-34]
 0057CE46    mov        eax,ebx
 0057CE48    call       TField.GetDisplayText
 0057CE4D    mov        edx,dword ptr [ebp-34]
 0057CE50    mov        eax,dword ptr [ebp-4]
 0057CE53    call       0057BD5C
>0057CE58    jmp        0057CF97
 0057CE5D    mov        eax,ebx
 0057CE5F    mov        edx,dword ptr [eax]
 0057CE61    call       dword ptr [edx+4C]; TField.GetAsCurrency
 0057CE64    add        esp,0FFFFFFF8
 0057CE67    fistp      qword ptr [esp]
 0057CE6A    wait
 0057CE6B    lea        edx,[ebp-38]
 0057CE6E    mov        eax,ebx
 0057CE70    call       TField.GetDisplayText
 0057CE75    mov        edx,dword ptr [ebp-38]
 0057CE78    mov        eax,dword ptr [ebp-4]
 0057CE7B    call       0057BE24
>0057CE80    jmp        0057CF97
 0057CE85    mov        eax,ebx
 0057CE87    mov        edx,dword ptr [eax]
 0057CE89    call       dword ptr [edx+50]; TField.GetAsDateTime
 0057CE8C    add        esp,0FFFFFFF8
 0057CE8F    fstp       qword ptr [esp]
 0057CE92    wait
 0057CE93    lea        edx,[ebp-3C]
 0057CE96    mov        eax,ebx
 0057CE98    call       TField.GetDisplayText
 0057CE9D    mov        edx,dword ptr [ebp-3C]
 0057CEA0    mov        eax,dword ptr [ebp-4]
 0057CEA3    call       0057BEEC
>0057CEA8    jmp        0057CF97
 0057CEAD    mov        dl,1
 0057CEAF    mov        eax,[0041CBF8]; TMemoryStream
 0057CEB4    call       TObject.Create; TMemoryStream.Create
 0057CEB9    mov        dword ptr [ebp-0C],eax
 0057CEBC    xor        eax,eax
 0057CEBE    push       ebp
 0057CEBF    push       57CF5B
 0057CEC4    push       dword ptr fs:[eax]
 0057CEC7    mov        dword ptr fs:[eax],esp
 0057CECA    mov        eax,dword ptr [ebp-18]
 0057CECD    mov        eax,dword ptr [eax+30]
 0057CED0    mov        edx,dword ptr [ebp-8]
 0057CED3    call       TFields.GetField
 0057CED8    mov        edx,dword ptr ds:[498120]; TBlobField
 0057CEDE    call       @AsClass
 0057CEE3    mov        edx,dword ptr [ebp-0C]
 0057CEE6    call       TBlobField.SaveToStream
 0057CEEB    mov        eax,dword ptr [ebp-0C]
 0057CEEE    mov        esi,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 0057CEF1    mov        eax,dword ptr [ebp-0C]
 0057CEF4    mov        edx,dword ptr [eax]
 0057CEF6    call       dword ptr [edx]; TStream.GetSize
 0057CEF8    mov        edi,eax
 0057CEFA    xor        eax,eax
 0057CEFC    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 0057CEFF    mov        edx,dword ptr ds:[61B2B4]
 0057CF05    cmp        byte ptr [edx+eax],0B
>0057CF09    jne        0057CF39
 0057CF0B    lea        edx,[ebp-14]
 0057CF0E    mov        eax,esi
 0057CF10    mov        ecx,8
 0057CF15    call       Move
 0057CF1A    cmp        word ptr [ebp-14],1
>0057CF1F    jne        0057CF39
 0057CF21    cmp        word ptr [ebp-12],100
>0057CF27    jne        0057CF39
 0057CF29    mov        eax,edi
 0057CF2B    sub        eax,8
 0057CF2E    cmp        eax,dword ptr [ebp-10]
>0057CF31    jne        0057CF39
 0057CF33    add        esi,8
 0057CF36    sub        edi,8
 0057CF39    mov        edx,esi
 0057CF3B    mov        ecx,edi
 0057CF3D    mov        eax,dword ptr [ebp-4]
 0057CF40    call       0057BFB4
 0057CF45    xor        eax,eax
 0057CF47    pop        edx
 0057CF48    pop        ecx
 0057CF49    pop        ecx
 0057CF4A    mov        dword ptr fs:[eax],edx
 0057CF4D    push       57CF97
 0057CF52    mov        eax,dword ptr [ebp-0C]
 0057CF55    call       TObject.Free
 0057CF5A    ret
<0057CF5B    jmp        @HandleFinally
<0057CF60    jmp        0057CF52
 0057CF62    mov        eax,dword ptr [ebp-18]
 0057CF65    mov        eax,dword ptr [eax+30]
 0057CF68    mov        edx,dword ptr [ebp-8]
 0057CF6B    call       TFields.GetField
 0057CF70    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 0057CF76    call       @AsClass
 0057CF7B    call       TLargeintField.GetAsLargeint
 0057CF80    push       edx
 0057CF81    push       eax
 0057CF82    lea        edx,[ebp-40]
 0057CF85    mov        eax,ebx
 0057CF87    call       TField.GetDisplayText
 0057CF8C    mov        edx,dword ptr [ebp-40]
 0057CF8F    mov        eax,dword ptr [ebp-4]
 0057CF92    call       0057BAD4
 0057CF97    inc        dword ptr [ebp-8]
 0057CF9A    dec        dword ptr [ebp-1C]
<0057CF9D    jne        0057CD12
 0057CFA3    xor        eax,eax
 0057CFA5    pop        edx
 0057CFA6    pop        ecx
 0057CFA7    pop        ecx
 0057CFA8    mov        dword ptr fs:[eax],edx
 0057CFAB    push       57CFC5
 0057CFB0    lea        eax,[ebp-40]
 0057CFB3    mov        edx,9
 0057CFB8    call       @LStrArrayClr
 0057CFBD    ret
<0057CFBE    jmp        @HandleFinally
<0057CFC3    jmp        0057CFB0
 0057CFC5    pop        edi
 0057CFC6    pop        esi
 0057CFC7    pop        ebx
 0057CFC8    mov        esp,ebp
 0057CFCA    pop        ebp
 0057CFCB    ret
*}
end;

//0057CFCC
procedure sub_0057CFCC;
begin
{*
 0057CFCC    push       ebp
 0057CFCD    mov        ebp,esp
 0057CFCF    push       0
 0057CFD1    push       0
 0057CFD3    push       ebx
 0057CFD4    push       esi
 0057CFD5    mov        ebx,eax
 0057CFD7    xor        eax,eax
 0057CFD9    push       ebp
 0057CFDA    push       57D09B
 0057CFDF    push       dword ptr fs:[eax]
 0057CFE2    mov        dword ptr fs:[eax],esp
 0057CFE5    lea        eax,[ebp-4]
 0057CFE8    call       @LStrClr
>0057CFED    jmp        0057D03E
 0057CFEF    cmp        dword ptr [ebp-4],0
>0057CFF3    je         0057D002
 0057CFF5    lea        eax,[ebp-4]
 0057CFF8    mov        edx,57D0B0; ' and '
 0057CFFD    call       @LStrCat
 0057D002    push       dword ptr [ebp-4]
 0057D005    push       57D0C0; '['
 0057D00A    push       dword ptr [ebx+80]; TRvDataSetConnection.?f80:String
 0057D010    push       57D0CC; '] '
 0057D015    push       dword ptr [ebx+84]; TRvDataSetConnection.?f84:String
 0057D01B    push       57D0D8; ' '
 0057D020    lea        edx,[ebp-8]
 0057D023    mov        eax,dword ptr [ebx+88]; TRvDataSetConnection.?f88:String
 0057D029    call       QuotedStr
 0057D02E    push       dword ptr [ebp-8]
 0057D031    lea        eax,[ebp-4]
 0057D034    mov        edx,7
 0057D039    call       @LStrCatN
 0057D03E    mov        eax,ebx
 0057D040    call       0057C2F0
 0057D045    test       al,al
<0057D047    jne        0057CFEF
 0057D049    mov        eax,ebx
 0057D04B    mov        edx,dword ptr [eax]
 0057D04D    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057D050    mov        esi,eax
 0057D052    mov        edx,dword ptr [ebp-4]
 0057D055    mov        eax,esi
 0057D057    mov        ecx,dword ptr [eax]
 0057D059    call       dword ptr [ecx+198]
 0057D05F    mov        dl,byte ptr ds:[57D0DC]; 0x2
 0057D065    mov        eax,esi
 0057D067    mov        ecx,dword ptr [eax]
 0057D069    call       dword ptr [ecx+194]
 0057D06F    cmp        dword ptr [esi+78],0
 0057D073    setne      dl
 0057D076    mov        eax,esi
 0057D078    mov        ecx,dword ptr [eax]
 0057D07A    call       dword ptr [ecx+190]
 0057D080    xor        eax,eax
 0057D082    pop        edx
 0057D083    pop        ecx
 0057D084    pop        ecx
 0057D085    mov        dword ptr fs:[eax],edx
 0057D088    push       57D0A2
 0057D08D    lea        eax,[ebp-8]
 0057D090    mov        edx,2
 0057D095    call       @LStrArrayClr
 0057D09A    ret
<0057D09B    jmp        @HandleFinally
<0057D0A0    jmp        0057D08D
 0057D0A2    pop        esi
 0057D0A3    pop        ebx
 0057D0A4    pop        ecx
 0057D0A5    pop        ecx
 0057D0A6    pop        ebp
 0057D0A7    ret
*}
end;

//0057D0E0
procedure sub_0057D0E0;
begin
{*
 0057D0E0    push       ebx
 0057D0E1    push       esi
 0057D0E2    mov        esi,eax
 0057D0E4    mov        byte ptr [esi+100],1; TRvDataSetConnection.?f100:byte
 0057D0EB    mov        eax,esi
 0057D0ED    mov        edx,dword ptr [eax]
 0057D0EF    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057D0F2    mov        ebx,eax
 0057D0F4    mov        eax,ebx
 0057D0F6    call       TDataSet.GetActive
 0057D0FB    mov        byte ptr [esi+0F1],al; TRvDataSetConnection.?fF1:Boolean
 0057D101    mov        eax,ebx
 0057D103    call       TDataSet.GetActive
 0057D108    test       al,al
>0057D10A    je         0057D11C
 0057D10C    mov        eax,ebx
 0057D10E    mov        edx,dword ptr [eax]
 0057D110    call       dword ptr [edx+21C]
 0057D116    mov        dword ptr [esi+0FC],eax; TRvDataSetConnection.?fFC:dword
 0057D11C    mov        eax,ebx
 0057D11E    call       TDataSet.DisableControls
 0057D123    lea        eax,[esi+0F4]; TRvDataSetConnection.?fF4:String
 0057D129    mov        edx,dword ptr [ebx+78]
 0057D12C    call       @LStrAsg
 0057D131    mov        al,byte ptr [ebx+0A8]
 0057D137    mov        byte ptr [esi+0F8],al; TRvDataSetConnection.?fF8:byte
 0057D13D    mov        eax,ebx
 0057D13F    call       TDataSet.GetActive
 0057D144    test       al,al
>0057D146    jne        0057D15B
 0057D148    mov        dl,1
 0057D14A    mov        eax,ebx
 0057D14C    mov        ecx,dword ptr [eax]
 0057D14E    call       dword ptr [ecx+178]
 0057D154    mov        eax,ebx
 0057D156    call       TDataSet.First
 0057D15B    mov        byte ptr [esi+0F0],1; TRvDataSetConnection.?fF0:byte
 0057D162    pop        esi
 0057D163    pop        ebx
 0057D164    ret
*}
end;

//0057D168
procedure sub_0057D168;
begin
{*
 0057D168    push       ebx
 0057D169    push       esi
 0057D16A    mov        ebx,eax
 0057D16C    cmp        byte ptr [ebx+0F0],0; TRvDataSetConnection.?fF0:byte
>0057D173    je         0057D1E2
 0057D175    mov        eax,ebx
 0057D177    mov        edx,dword ptr [eax]
 0057D179    call       dword ptr [edx+5C]; TRvDataSetConnection.sub_0057D22C
 0057D17C    mov        esi,eax
 0057D17E    mov        dl,byte ptr [ebx+0F1]; TRvDataSetConnection.?fF1:Boolean
 0057D184    mov        eax,esi
 0057D186    mov        ecx,dword ptr [eax]
 0057D188    call       dword ptr [ecx+178]
 0057D18E    mov        eax,esi
 0057D190    call       TDataSet.EnableControls
 0057D195    mov        edx,dword ptr [ebx+0F4]; TRvDataSetConnection.?fF4:String
 0057D19B    mov        eax,esi
 0057D19D    mov        ecx,dword ptr [eax]
 0057D19F    call       dword ptr [ecx+198]
 0057D1A5    mov        dl,byte ptr [ebx+0F8]; TRvDataSetConnection.?fF8:byte
 0057D1AB    mov        eax,esi
 0057D1AD    mov        ecx,dword ptr [eax]
 0057D1AF    call       dword ptr [ecx+190]
 0057D1B5    cmp        byte ptr [ebx+0F1],0; TRvDataSetConnection.?fF1:Boolean
>0057D1BC    je         0057D1DB
 0057D1BE    mov        edx,dword ptr [ebx+0FC]; TRvDataSetConnection.?fFC:dword
 0057D1C4    mov        eax,esi
 0057D1C6    call       TDataSet.GotoBookmark
 0057D1CB    mov        edx,dword ptr [ebx+0FC]; TRvDataSetConnection.?fFC:dword
 0057D1D1    mov        eax,esi
 0057D1D3    mov        ecx,dword ptr [eax]
 0057D1D5    call       dword ptr [ecx+218]
 0057D1DB    mov        byte ptr [ebx+0F0],0; TRvDataSetConnection.?fF0:byte
 0057D1E2    pop        esi
 0057D1E3    pop        ebx
 0057D1E4    ret
*}
end;

//0057D1E8
procedure TRvDataSetConnection.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0057D1E8    push       ebx
 0057D1E9    push       esi
 0057D1EA    push       edi
 0057D1EB    mov        ebx,ecx
 0057D1ED    mov        esi,edx
 0057D1EF    mov        edi,eax
 0057D1F1    mov        ecx,ebx
 0057D1F3    mov        edx,esi
 0057D1F5    mov        eax,edi
 0057D1F7    call       TComponent.Notification
 0057D1FC    cmp        bl,1
>0057D1FF    jne        0057D211
 0057D201    cmp        esi,dword ptr [edi+108]; TRvDataSetConnection.DataSet:TDataSet
>0057D207    jne        0057D211
 0057D209    xor        eax,eax
 0057D20B    mov        dword ptr [edi+108],eax; TRvDataSetConnection.DataSet:TDataSet
 0057D211    pop        edi
 0057D212    pop        esi
 0057D213    pop        ebx
 0057D214    ret
*}
end;

//0057D218
//procedure TRvDataSetConnection.SetDataSet(Self:TRvDataSetConnection; ?:?);
//begin
{*
 0057D218    mov        dword ptr [eax+108],edx; TRvDataSetConnection.DataSet:TDataSet
 0057D21E    test       edx,edx
>0057D220    je         0057D228
 0057D222    xchg       eax,edx
 0057D223    call       TComponent.FreeNotification
 0057D228    ret
*}
//end;

//0057D22C
//function sub_0057D22C:?;
//begin
{*
 0057D22C    mov        eax,dword ptr [eax+108]; TRvDataSetConnection.DataSet:TDataSet
 0057D232    ret
*}
//end;

end.