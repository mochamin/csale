{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvData;

interface

uses
  Classes, Windows, Graphics, RvClass, RvDataField;

type
  TRaveDataFieldInfo = class(TObject)
  public
    f4:String;//f4
    f8:byte;//f8
    fC:dword;//fC
    f10:String;//f10
    f14:String;//f14
  end;
  TRaveBaseDataView = class(TRaveDataObject)
  public
    f7C:byte;//f7C
    f7D:byte;//f7D
    f80:TStringList;//f80
    f84:byte;//f84
    f85:byte;//f85
    f88:TRaveDataRow;//f88
    f8C:TRaveDataRow;//f8C
    f90:TRaveDataRow;//f90
    f94:TRaveDataRow;//f94
    f98:byte;//f98
    f9C:TRaveDataRow;//f9C
    fA0:byte;//fA0
    fA1:byte;//fA1
    destructor Destroy; virtual;
    procedure SetName(NewName:TComponentName); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure sub_005A090C(?:?); virtual;
    procedure sub_005A1008; virtual;
    procedure sub_005A0FBC; virtual;
    procedure @AbstractError(); virtual;
    procedure sub_005A0D64; virtual;
    procedure sub_005A0FE8; virtual;
    procedure sub_005A0D7C; virtual;
    //function sub_005A0D5C:?; virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    //function sub_005A0D30:?; virtual;
    procedure sub_005A0EA8; virtual;
    procedure sub_005A0DF4; virtual;
    //function sub_005A0C94:?; virtual;
    //procedure sub_005A0D90(?:?); virtual;
    procedure sub_005A0F90; virtual;
  end;

implementation

{$R *.DFM}

//0059FF18
//procedure sub_0059FF18(?:TRaveBaseDataView; ?:AnsiString; ?:AnsiString);
//begin
{*
 0059FF18    push       ebp
 0059FF19    mov        ebp,esp
 0059FF1B    push       ecx
 0059FF1C    push       ebx
 0059FF1D    push       esi
 0059FF1E    mov        esi,ecx
 0059FF20    mov        dword ptr [ebp-4],edx
 0059FF23    mov        ebx,eax
 0059FF25    mov        eax,dword ptr [ebp-4]
 0059FF28    call       @LStrAddRef
 0059FF2D    xor        eax,eax
 0059FF2F    push       ebp
 0059FF30    push       59FF83
 0059FF35    push       dword ptr fs:[eax]
 0059FF38    mov        dword ptr fs:[eax],esp
 0059FF3B    test       ebx,ebx
>0059FF3D    je         0059FF4D
 0059FF3F    mov        edx,dword ptr [ebp-4]
 0059FF42    mov        eax,ebx
 0059FF44    call       005A0AC8
 0059FF49    mov        ebx,eax
>0059FF4B    jmp        0059FF4F
 0059FF4D    xor        ebx,ebx
 0059FF4F    test       ebx,ebx
>0059FF51    je         0059FF61
 0059FF53    mov        edx,esi
 0059FF55    mov        eax,ebx
 0059FF57    mov        ecx,dword ptr [eax]
 0059FF59    call       dword ptr [ecx+0D8]
>0059FF5F    jmp        0059FF6D
 0059FF61    mov        eax,esi
 0059FF63    mov        edx,59FF98; '(invalid)'
 0059FF68    call       @LStrAsg
 0059FF6D    xor        eax,eax
 0059FF6F    pop        edx
 0059FF70    pop        ecx
 0059FF71    pop        ecx
 0059FF72    mov        dword ptr fs:[eax],edx
 0059FF75    push       59FF8A
 0059FF7A    lea        eax,[ebp-4]
 0059FF7D    call       @LStrClr
 0059FF82    ret
<0059FF83    jmp        @HandleFinally
<0059FF88    jmp        0059FF7A
 0059FF8A    pop        esi
 0059FF8B    pop        ebx
 0059FF8C    pop        ecx
 0059FF8D    pop        ebp
 0059FF8E    ret
*}
//end;

//0059FFA4
//procedure sub_0059FFA4(?:TRaveComponent; ?:TRaveBaseDataView; ?:?; ?:?; ?:?);
//begin
{*
 0059FFA4    push       ebp
 0059FFA5    mov        ebp,esp
 0059FFA7    add        esp,0FFFFFFD8
 0059FFAA    push       ebx
 0059FFAB    push       esi
 0059FFAC    push       edi
 0059FFAD    xor        ebx,ebx
 0059FFAF    mov        dword ptr [ebp-28],ebx
 0059FFB2    mov        dword ptr [ebp-10],ebx
 0059FFB5    mov        dword ptr [ebp-14],ebx
 0059FFB8    mov        dword ptr [ebp-18],ebx
 0059FFBB    mov        dword ptr [ebp-24],ebx
 0059FFBE    mov        byte ptr [ebp-9],cl
 0059FFC1    mov        dword ptr [ebp-8],edx
 0059FFC4    mov        dword ptr [ebp-4],eax
 0059FFC7    mov        ebx,dword ptr [ebp+8]
 0059FFCA    xor        eax,eax
 0059FFCC    push       ebp
 0059FFCD    push       5A0267
 0059FFD2    push       dword ptr fs:[eax]
 0059FFD5    mov        dword ptr fs:[eax],esp
 0059FFD8    lea        edx,[ebp-10]
 0059FFDB    mov        eax,dword ptr [ebp+0C]
 0059FFDE    mov        eax,dword ptr [eax]
 0059FFE0    call       Trim
 0059FFE5    cmp        dword ptr [ebp-10],0
>0059FFE9    je         005A0010
 0059FFEB    mov        eax,dword ptr [ebp-10]
 0059FFEE    call       @LStrLen
 0059FFF3    mov        edx,dword ptr [ebp-10]
 0059FFF6    cmp        byte ptr [edx+eax-1],3B
>0059FFFB    jne        005A0010
 0059FFFD    mov        eax,dword ptr [ebp-10]
 005A0000    call       @LStrLen
 005A0005    mov        edx,eax
 005A0007    dec        edx
 005A0008    lea        eax,[ebp-10]
 005A000B    call       @LStrSetLength
 005A0010    mov        eax,ebx
 005A0012    call       @LStrClr
 005A0017    lea        eax,[ebp-24]
 005A001A    call       @LStrClr
 005A001F    cmp        dword ptr [ebp-10],0
>005A0023    je         005A006B
 005A0025    mov        eax,dword ptr [ebp-10]
 005A0028    mov        al,byte ptr [eax]
 005A002A    sub        al,22
>005A002C    je         005A0032
 005A002E    sub        al,5
>005A0030    jne        005A006B
 005A0032    lea        ecx,[ebp-24]
 005A0035    mov        eax,dword ptr [ebp-10]
 005A0038    mov        dl,byte ptr [eax]
 005A003A    lea        eax,[ebp-10]
 005A003D    call       005A57E0
 005A0042    cmp        dword ptr [ebp-10],0
>005A0046    je         005A0200
 005A004C    mov        eax,dword ptr [ebp-10]
 005A004F    mov        al,byte ptr [eax]
 005A0051    mov        byte ptr [ebp-1D],al
 005A0054    lea        eax,[ebp-10]
 005A0057    mov        ecx,1
 005A005C    mov        edx,1
 005A0061    call       00590410
>005A0066    jmp        005A0200
 005A006B    lea        eax,[ebp-14]
 005A006E    push       eax
 005A006F    lea        edx,[ebp-1D]
 005A0072    lea        eax,[ebp-10]
 005A0075    mov        ecx,5A0280; '+&()'
 005A007A    call       005A5510
 005A007F    cmp        dword ptr [ebp-14],0
>005A0083    je         005A0200
 005A0089    lea        eax,[ebp-18]
 005A008C    push       eax
 005A008D    lea        edx,[ebp-1E]
 005A0090    lea        eax,[ebp-14]
 005A0093    mov        ecx,5A0290; '.'
 005A0098    call       005A5510
 005A009D    cmp        dword ptr [ebp-14],0
>005A00A1    je         005A01F2
 005A00A7    lea        edx,[ebp-28]
 005A00AA    mov        eax,dword ptr [ebp-14]
 005A00AD    call       005A564C
 005A00B2    mov        edx,dword ptr [ebp-28]
 005A00B5    lea        eax,[ebp-14]
 005A00B8    call       @LStrLAsg
 005A00BD    mov        edx,5A029C; 'REPORT'
 005A00C2    mov        eax,dword ptr [ebp-18]
 005A00C5    call       AnsiCompareText
 005A00CA    test       eax,eax
>005A00CC    jne        005A012D
 005A00CE    xor        eax,eax
 005A00D0    mov        dword ptr [ebp-1C],eax
 005A00D3    mov        edi,1
 005A00D8    mov        esi,61714C; gvar_0061714C:array[16] of String
 005A00DD    mov        edx,dword ptr [esi]
 005A00DF    mov        eax,dword ptr [ebp-14]
 005A00E2    call       AnsiCompareText
 005A00E7    test       eax,eax
>005A00E9    jne        005A00F0
 005A00EB    mov        dword ptr [ebp-1C],edi
>005A00EE    jmp        005A00F9
 005A00F0    inc        edi
 005A00F1    add        esi,4
 005A00F4    cmp        edi,11
<005A00F7    jne        005A00DD
 005A00F9    cmp        dword ptr [ebp-1C],0
>005A00FD    jle        005A011B
 005A00FF    mov        edx,edi
 005A0101    dec        edx
 005A0102    lea        ecx,[ebp-24]
 005A0105    mov        eax,dword ptr [ebp-4]
 005A0108    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005A010B    mov        eax,dword ptr [eax+0E4]
 005A0111    call       00586CEC
>005A0116    jmp        005A0200
 005A011B    lea        eax,[ebp-24]
 005A011E    mov        edx,5A02AC; '(invalid)'
 005A0123    call       @LStrLAsg
>005A0128    jmp        005A0200
 005A012D    mov        edx,5A02C0; 'PIVAR'
 005A0132    mov        eax,dword ptr [ebp-18]
 005A0135    call       AnsiCompareText
 005A013A    test       eax,eax
>005A013C    jne        005A015D
 005A013E    lea        ecx,[ebp-24]
 005A0141    mov        eax,dword ptr [ebp-4]
 005A0144    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005A0147    mov        eax,dword ptr [eax+0E4]
 005A014D    mov        edx,dword ptr [ebp-14]
 005A0150    mov        esi,dword ptr [eax]
 005A0152    call       dword ptr [esi+140]
>005A0158    jmp        005A0200
 005A015D    mov        edx,5A02D0; 'PARAM'
 005A0162    mov        eax,dword ptr [ebp-18]
 005A0165    call       AnsiCompareText
 005A016A    test       eax,eax
>005A016C    jne        005A01AD
 005A016E    lea        ecx,[ebp-24]
 005A0171    mov        eax,dword ptr [ebp-4]
 005A0174    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005A0177    mov        edx,dword ptr [ebp-14]
 005A017A    call       005A4E20
 005A017F    cmp        byte ptr [ebp-1D],28
>005A0183    jne        005A0200
 005A0185    lea        eax,[ebp-10]
 005A0188    push       eax
 005A0189    lea        eax,[ebp-14]
 005A018C    push       eax
 005A018D    mov        cl,29
 005A018F    mov        edx,dword ptr [ebp-8]
 005A0192    mov        eax,dword ptr [ebp-4]
 005A0195    call       0059FFA4
 005A019A    cmp        dword ptr [ebp-24],0
>005A019E    jne        005A0200
 005A01A0    lea        eax,[ebp-24]
 005A01A3    mov        edx,dword ptr [ebp-14]
 005A01A6    call       @LStrLAsg
>005A01AB    jmp        005A0200
 005A01AD    mov        eax,dword ptr [ebp-4]
 005A01B0    mov        eax,dword ptr [eax+48]; TRaveComponent.?f48:TRaveComponent
 005A01B3    mov        ecx,eax
 005A01B5    mov        edx,dword ptr [ebp-18]
 005A01B8    call       005A4790
 005A01BD    mov        esi,eax
 005A01BF    test       esi,esi
>005A01C1    je         005A01E3
 005A01C3    mov        eax,esi
 005A01C5    mov        edx,dword ptr ds:[59FC2C]; TRaveBaseDataView
 005A01CB    call       @IsClass
 005A01D0    test       al,al
>005A01D2    je         005A01E3
 005A01D4    lea        ecx,[ebp-24]
 005A01D7    mov        edx,dword ptr [ebp-14]
 005A01DA    mov        eax,esi
 005A01DC    call       0059FF18
>005A01E1    jmp        005A0200
 005A01E3    lea        eax,[ebp-24]
 005A01E6    mov        edx,5A02AC; '(invalid)'
 005A01EB    call       @LStrLAsg
>005A01F0    jmp        005A0200
 005A01F2    lea        ecx,[ebp-24]
 005A01F5    mov        edx,dword ptr [ebp-18]
 005A01F8    mov        eax,dword ptr [ebp-8]
 005A01FB    call       0059FF18
 005A0200    mov        eax,ebx
 005A0202    mov        edx,dword ptr [ebp-24]
 005A0205    call       @LStrCat
 005A020A    cmp        byte ptr [ebp-1D],26
>005A020E    jne        005A0222
 005A0210    cmp        dword ptr [ebp-24],0
>005A0214    je         005A0222
 005A0216    mov        eax,ebx
 005A0218    mov        edx,5A02E0; ' '
 005A021D    call       @LStrCat
 005A0222    cmp        dword ptr [ebp-10],0
>005A0226    je         005A0234
 005A0228    mov        al,byte ptr [ebp-1D]
 005A022B    cmp        al,byte ptr [ebp-9]
<005A022E    jne        005A0017
 005A0234    mov        eax,dword ptr [ebp+0C]
 005A0237    mov        edx,dword ptr [ebp-10]
 005A023A    call       @LStrAsg
 005A023F    xor        eax,eax
 005A0241    pop        edx
 005A0242    pop        ecx
 005A0243    pop        ecx
 005A0244    mov        dword ptr fs:[eax],edx
 005A0247    push       5A026E
 005A024C    lea        eax,[ebp-28]
 005A024F    mov        edx,2
 005A0254    call       @LStrArrayClr
 005A0259    lea        eax,[ebp-18]
 005A025C    mov        edx,3
 005A0261    call       @LStrArrayClr
 005A0266    ret
<005A0267    jmp        @HandleFinally
<005A026C    jmp        005A024C
 005A026E    pop        edi
 005A026F    pop        esi
 005A0270    pop        ebx
 005A0271    mov        esp,ebp
 005A0273    pop        ebp
 005A0274    ret        8
*}
//end;

//005A02E4
//procedure sub_005A02E4(?:TRaveComponent; ?:TRaveBaseDataView; ?:AnsiString; ?:?);
//begin
{*
 005A02E4    push       ebp
 005A02E5    mov        ebp,esp
 005A02E7    push       ecx
 005A02E8    push       ebx
 005A02E9    push       esi
 005A02EA    mov        dword ptr [ebp-4],ecx
 005A02ED    mov        esi,edx
 005A02EF    mov        ebx,eax
 005A02F1    mov        eax,dword ptr [ebp-4]
 005A02F4    call       @LStrAddRef
 005A02F9    xor        eax,eax
 005A02FB    push       ebp
 005A02FC    push       5A0330
 005A0301    push       dword ptr fs:[eax]
 005A0304    mov        dword ptr fs:[eax],esp
 005A0307    lea        eax,[ebp-4]
 005A030A    push       eax
 005A030B    mov        eax,dword ptr [ebp+8]
 005A030E    push       eax
 005A030F    xor        ecx,ecx
 005A0311    mov        edx,esi
 005A0313    mov        eax,ebx
 005A0315    call       0059FFA4
 005A031A    xor        eax,eax
 005A031C    pop        edx
 005A031D    pop        ecx
 005A031E    pop        ecx
 005A031F    mov        dword ptr fs:[eax],edx
 005A0322    push       5A0337
 005A0327    lea        eax,[ebp-4]
 005A032A    call       @LStrClr
 005A032F    ret
<005A0330    jmp        @HandleFinally
<005A0335    jmp        005A0327
 005A0337    pop        esi
 005A0338    pop        ebx
 005A0339    pop        ecx
 005A033A    pop        ebp
 005A033B    ret        4
*}
//end;

//005A0340
//procedure sub_005A0340(?:TComponentName; ?:AnsiString; ?:AnsiString);
//begin
{*
 005A0340    push       ebp
 005A0341    mov        ebp,esp
 005A0343    add        esp,0FFFFFFF8
 005A0346    push       ebx
 005A0347    push       esi
 005A0348    mov        esi,ecx
 005A034A    mov        dword ptr [ebp-8],edx
 005A034D    mov        dword ptr [ebp-4],eax
 005A0350    mov        eax,dword ptr [ebp-4]
 005A0353    call       @LStrAddRef
 005A0358    mov        eax,dword ptr [ebp-8]
 005A035B    call       @LStrAddRef
 005A0360    xor        eax,eax
 005A0362    push       ebp
 005A0363    push       5A03FA
 005A0368    push       dword ptr fs:[eax]
 005A036B    mov        dword ptr fs:[eax],esp
 005A036E    mov        edx,esi
 005A0370    mov        eax,dword ptr [ebp-8]
 005A0373    call       005A564C
 005A0378    mov        ebx,1
>005A037D    jmp        005A03C8
 005A037F    mov        eax,dword ptr [esi]
 005A0381    mov        al,byte ptr [eax+ebx-1]
 005A0385    mov        edx,eax
 005A0387    add        dl,0D0
 005A038A    sub        dl,0A
>005A038D    jb         005A03A4
 005A038F    add        dl,0F9
 005A0392    sub        dl,1A
>005A0395    jb         005A03A4
 005A0397    sub        dl,4
>005A039A    je         005A03A4
 005A039C    add        dl,0FE
 005A039F    sub        dl,1A
>005A03A2    jae        005A03A7
 005A03A4    inc        ebx
>005A03A5    jmp        005A03C8
 005A03A7    cmp        al,20
>005A03A9    jne        005A03BA
 005A03AB    mov        eax,esi
 005A03AD    call       @UniqueStringA
 005A03B2    mov        byte ptr [eax+ebx-1],5F
 005A03B7    inc        ebx
>005A03B8    jmp        005A03C8
 005A03BA    mov        eax,esi
 005A03BC    mov        ecx,1
 005A03C1    mov        edx,ebx
 005A03C3    call       @LStrDelete
 005A03C8    mov        eax,dword ptr [esi]
 005A03CA    call       @LStrLen
 005A03CF    cmp        ebx,eax
<005A03D1    jle        005A037F
 005A03D3    mov        ecx,dword ptr [esi]
 005A03D5    mov        eax,esi
 005A03D7    mov        edx,dword ptr [ebp-4]
 005A03DA    call       @LStrCat3
 005A03DF    xor        eax,eax
 005A03E1    pop        edx
 005A03E2    pop        ecx
 005A03E3    pop        ecx
 005A03E4    mov        dword ptr fs:[eax],edx
 005A03E7    push       5A0401
 005A03EC    lea        eax,[ebp-8]
 005A03EF    mov        edx,2
 005A03F4    call       @LStrArrayClr
 005A03F9    ret
<005A03FA    jmp        @HandleFinally
<005A03FF    jmp        005A03EC
 005A0401    pop        esi
 005A0402    pop        ebx
 005A0403    pop        ecx
 005A0404    pop        ecx
 005A0405    pop        ebp
 005A0406    ret
*}
//end;

//005A0408
//procedure sub_005A0408(?:TRaveBaseDataView; ?:AnsiString; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005A0408    push       ebp
 005A0409    mov        ebp,esp
 005A040B    add        esp,0FFFFFFF4
 005A040E    push       ebx
 005A040F    push       esi
 005A0410    push       edi
 005A0411    xor        ebx,ebx
 005A0413    mov        dword ptr [ebp-0C],ebx
 005A0416    mov        edi,ecx
 005A0418    mov        dword ptr [ebp-4],edx
 005A041B    mov        ebx,eax
 005A041D    mov        esi,dword ptr [ebp+8]
 005A0420    mov        eax,dword ptr [ebp-4]
 005A0423    call       @LStrAddRef
 005A0428    mov        eax,dword ptr [ebp+14]
 005A042B    call       @LStrAddRef
 005A0430    mov        eax,dword ptr [ebp+10]
 005A0433    call       @LStrAddRef
 005A0438    mov        eax,dword ptr [ebp+0C]
 005A043B    call       @LStrAddRef
 005A0440    xor        eax,eax
 005A0442    push       ebp
 005A0443    push       5A0552
 005A0448    push       dword ptr fs:[eax]
 005A044B    mov        dword ptr fs:[eax],esp
 005A044E    mov        dl,1
 005A0450    mov        eax,[0041C8E4]; TStringList
 005A0455    call       TObject.Create; TStringList.Create
 005A045A    mov        dword ptr [ebp-8],eax
 005A045D    xor        eax,eax
 005A045F    push       ebp
 005A0460    push       5A0518
 005A0465    push       dword ptr fs:[eax]
 005A0468    mov        dword ptr fs:[eax],esp
 005A046B    lea        edx,[ebp-0C]
 005A046E    mov        eax,dword ptr [ebp+14]
 005A0471    call       005A564C
 005A0476    mov        edx,dword ptr [ebp-0C]
 005A0479    mov        eax,dword ptr [ebp-8]
 005A047C    mov        ecx,dword ptr [eax]
 005A047E    call       dword ptr [ecx+38]; TStringList.Add
 005A0481    mov        edx,5A056C; '='
 005A0486    mov        eax,dword ptr [ebp-8]
 005A0489    mov        ecx,dword ptr [eax]
 005A048B    call       dword ptr [ecx+38]; TStringList.Add
 005A048E    mov        ecx,edi
 005A0490    mov        edx,dword ptr [ebp-4]
 005A0493    mov        eax,dword ptr [ebp-8]
 005A0496    mov        edi,dword ptr [eax]
 005A0498    call       dword ptr [edi+3C]; TStringList.AddObject
 005A049B    xor        edx,edx
 005A049D    mov        eax,dword ptr [ebp-8]
 005A04A0    mov        ecx,dword ptr [eax]
 005A04A2    call       dword ptr [ecx+38]; TStringList.Add
 005A04A5    mov        edx,dword ptr [ebp-8]
 005A04A8    mov        eax,ebx
 005A04AA    mov        ecx,dword ptr [eax]
 005A04AC    call       dword ptr [ecx+104]; @AbstractError
 005A04B2    mov        eax,ebx
 005A04B4    mov        edx,dword ptr [eax]
 005A04B6    call       dword ptr [edx+0F0]; TRaveBaseDataView.sub_005A0D64
 005A04BC    mov        eax,ebx
 005A04BE    mov        edx,dword ptr [eax]
 005A04C0    call       dword ptr [edx+0FC]; TRaveBaseDataView.sub_005A0D5C
 005A04C6    test       al,al
>005A04C8    je         005A04D6
 005A04CA    mov        eax,esi
 005A04CC    mov        edx,dword ptr [ebp+0C]
 005A04CF    call       @LStrAsg
>005A04D4    jmp        005A04E3
 005A04D6    push       esi
 005A04D7    mov        ecx,dword ptr [ebp+10]
 005A04DA    mov        edx,ebx
 005A04DC    mov        eax,ebx
 005A04DE    call       005A02E4
 005A04E3    mov        eax,dword ptr [ebp-8]
 005A04E6    mov        edx,dword ptr [eax]
 005A04E8    call       dword ptr [edx+44]; TStringList.Clear
 005A04EB    xor        edx,edx
 005A04ED    mov        eax,dword ptr [ebp-8]
 005A04F0    mov        ecx,dword ptr [eax]
 005A04F2    call       dword ptr [ecx+38]; TStringList.Add
 005A04F5    mov        edx,dword ptr [ebp-8]
 005A04F8    mov        eax,ebx
 005A04FA    mov        ecx,dword ptr [eax]
 005A04FC    call       dword ptr [ecx+104]; @AbstractError
 005A0502    xor        eax,eax
 005A0504    pop        edx
 005A0505    pop        ecx
 005A0506    pop        ecx
 005A0507    mov        dword ptr fs:[eax],edx
 005A050A    push       5A051F
 005A050F    mov        eax,dword ptr [ebp-8]
 005A0512    call       TObject.Free
 005A0517    ret
<005A0518    jmp        @HandleFinally
<005A051D    jmp        005A050F
 005A051F    xor        eax,eax
 005A0521    pop        edx
 005A0522    pop        ecx
 005A0523    pop        ecx
 005A0524    mov        dword ptr fs:[eax],edx
 005A0527    push       5A0559
 005A052C    lea        eax,[ebp-0C]
 005A052F    call       @LStrClr
 005A0534    lea        eax,[ebp-4]
 005A0537    call       @LStrClr
 005A053C    lea        eax,[ebp+0C]
 005A053F    call       @LStrClr
 005A0544    lea        eax,[ebp+10]
 005A0547    mov        edx,2
 005A054C    call       @LStrArrayClr
 005A0551    ret
<005A0552    jmp        @HandleFinally
<005A0557    jmp        005A052C
 005A0559    pop        edi
 005A055A    pop        esi
 005A055B    pop        ebx
 005A055C    mov        esp,ebp
 005A055E    pop        ebp
 005A055F    ret        10
*}
//end;

//005A0570
//procedure sub_005A0570(?:TRaveBaseDataView; ?:TRaveFieldName; ?:TRaveBaseDataView; ?:?; ?:?);
//begin
{*
 005A0570    push       ebp
 005A0571    mov        ebp,esp
 005A0573    push       ecx
 005A0574    mov        ecx,7
 005A0579    push       0
 005A057B    push       0
 005A057D    dec        ecx
<005A057E    jne        005A0579
 005A0580    xchg       ecx,dword ptr [ebp-4]
 005A0583    push       ebx
 005A0584    push       esi
 005A0585    mov        dword ptr [ebp-0C],ecx
 005A0588    mov        dword ptr [ebp-8],edx
 005A058B    mov        dword ptr [ebp-4],eax
 005A058E    mov        eax,dword ptr [ebp-8]
 005A0591    call       @LStrAddRef
 005A0596    mov        eax,dword ptr [ebp+0C]
 005A0599    call       @LStrAddRef
 005A059E    mov        eax,dword ptr [ebp+8]
 005A05A1    call       @LStrAddRef
 005A05A6    xor        eax,eax
 005A05A8    push       ebp
 005A05A9    push       5A0847
 005A05AE    push       dword ptr fs:[eax]
 005A05B1    mov        dword ptr fs:[eax],esp
 005A05B4    cmp        dword ptr [ebp-4],0
>005A05B8    je         005A07F2
 005A05BE    cmp        dword ptr [ebp-4],0
>005A05C2    je         005A0665
 005A05C8    cmp        dword ptr [ebp+8],0
>005A05CC    je         005A0665
 005A05D2    lea        eax,[ebp-10]
 005A05D5    mov        edx,dword ptr [ebp+8]
 005A05D8    call       @LStrLAsg
 005A05DD    mov        dl,1
 005A05DF    mov        eax,[0041C8E4]; TStringList
 005A05E4    call       TObject.Create; TStringList.Create
 005A05E9    mov        dword ptr [ebp-24],eax
 005A05EC    xor        eax,eax
 005A05EE    push       ebp
 005A05EF    push       5A065E
 005A05F4    push       dword ptr fs:[eax]
 005A05F7    mov        dword ptr fs:[eax],esp
 005A05FA    lea        eax,[ebp-28]
 005A05FD    push       eax
 005A05FE    lea        edx,[ebp-29]
 005A0601    lea        eax,[ebp-10]
 005A0604    mov        ecx,5A0860; '+'
 005A0609    call       005A5510
 005A060E    cmp        dword ptr [ebp-28],0
>005A0612    je         005A062A
 005A0614    lea        edx,[ebp-30]
 005A0617    mov        eax,dword ptr [ebp-28]
 005A061A    call       005A564C
 005A061F    mov        edx,dword ptr [ebp-30]
 005A0622    mov        eax,dword ptr [ebp-24]
 005A0625    mov        ecx,dword ptr [eax]
 005A0627    call       dword ptr [ecx+38]; TStringList.Add
 005A062A    cmp        dword ptr [ebp-28],0
<005A062E    jne        005A05FA
 005A0630    xor        edx,edx
 005A0632    mov        eax,dword ptr [ebp-24]
 005A0635    mov        ecx,dword ptr [eax]
 005A0637    call       dword ptr [ecx+38]; TStringList.Add
 005A063A    mov        edx,dword ptr [ebp-24]
 005A063D    mov        eax,dword ptr [ebp-4]
 005A0640    mov        ecx,dword ptr [eax]
 005A0642    call       dword ptr [ecx+108]; @AbstractError
 005A0648    xor        eax,eax
 005A064A    pop        edx
 005A064B    pop        ecx
 005A064C    pop        ecx
 005A064D    mov        dword ptr fs:[eax],edx
 005A0650    push       5A0665
 005A0655    mov        eax,dword ptr [ebp-24]
 005A0658    call       TObject.Free
 005A065D    ret
<005A065E    jmp        @HandleFinally
<005A0663    jmp        005A0655
 005A0665    cmp        dword ptr [ebp-0C],0
>005A0669    je         005A07E7
 005A066F    cmp        dword ptr [ebp-4],0
>005A0673    je         005A07E7
 005A0679    cmp        dword ptr [ebp+0C],0
>005A067D    je         005A07E7
 005A0683    cmp        dword ptr [ebp-8],0
>005A0687    je         005A07E7
 005A068D    lea        eax,[ebp-10]
 005A0690    mov        edx,dword ptr [ebp-8]
 005A0693    call       @LStrLAsg
 005A0698    lea        eax,[ebp-14]
 005A069B    mov        edx,dword ptr [ebp+0C]
 005A069E    call       @LStrLAsg
 005A06A3    mov        dl,1
 005A06A5    mov        eax,[0041C8E4]; TStringList
 005A06AA    call       TObject.Create; TStringList.Create
 005A06AF    mov        dword ptr [ebp-18],eax
 005A06B2    xor        esi,esi
 005A06B4    push       ebp
 005A06B5    push       5A07E0
 005A06BA    push       dword ptr fs:[esi]
 005A06BD    mov        dword ptr fs:[esi],esp
 005A06C0    lea        eax,[ebp-20]
 005A06C3    push       eax
 005A06C4    lea        edx,[ebp-29]
 005A06C7    lea        eax,[ebp-10]
 005A06CA    mov        ecx,5A0860; '+'
 005A06CF    call       005A5510
 005A06D4    lea        eax,[ebp-1C]
 005A06D7    push       eax
 005A06D8    lea        edx,[ebp-29]
 005A06DB    lea        eax,[ebp-14]
 005A06DE    mov        ecx,5A0860; '+'
 005A06E3    call       005A5510
 005A06E8    cmp        dword ptr [ebp-20],0
>005A06EC    je         005A07A2
 005A06F2    xor        ebx,ebx
 005A06F4    mov        eax,dword ptr [ebp-20]
 005A06F7    call       @LStrLen
 005A06FC    mov        edx,eax
 005A06FE    test       edx,edx
>005A0700    jle        005A0720
 005A0702    mov        eax,1
 005A0707    mov        ecx,dword ptr [ebp-20]
 005A070A    mov        cl,byte ptr [ecx+eax-1]
 005A070E    cmp        cl,2E
>005A0711    jne        005A0717
 005A0713    mov        ebx,eax
>005A0715    jmp        005A0720
 005A0717    cmp        cl,3C
>005A071A    je         005A0720
 005A071C    inc        eax
 005A071D    dec        edx
<005A071E    jne        005A0707
 005A0720    test       ebx,ebx
>005A0722    jle        005A0733
 005A0724    lea        eax,[ebp-20]
 005A0727    mov        ecx,ebx
 005A0729    mov        edx,1
 005A072E    call       @LStrDelete
 005A0733    lea        edx,[ebp-34]
 005A0736    mov        eax,dword ptr [ebp-20]
 005A0739    call       005A564C
 005A073E    mov        edx,dword ptr [ebp-34]
 005A0741    mov        eax,dword ptr [ebp-18]
 005A0744    mov        ecx,dword ptr [eax]
 005A0746    call       dword ptr [ecx+38]; TStringList.Add
 005A0749    mov        edx,5A086C; '='
 005A074E    mov        eax,dword ptr [ebp-18]
 005A0751    mov        ecx,dword ptr [eax]
 005A0753    call       dword ptr [ecx+38]; TStringList.Add
 005A0756    mov        edx,dword ptr [ebp-1C]
 005A0759    mov        eax,dword ptr [ebp-0C]
 005A075C    call       005A0AC8
 005A0761    mov        ebx,eax
 005A0763    test       ebx,ebx
>005A0765    je         005A0783
 005A0767    lea        edx,[ebp-38]
 005A076A    mov        eax,ebx
 005A076C    mov        ecx,dword ptr [eax]
 005A076E    call       dword ptr [ecx+0D8]
 005A0774    mov        edx,dword ptr [ebp-38]
 005A0777    mov        ecx,ebx
 005A0779    mov        eax,dword ptr [ebp-18]
 005A077C    mov        ebx,dword ptr [eax]
 005A077E    call       dword ptr [ebx+3C]; TStringList.AddObject
>005A0781    jmp        005A07A2
 005A0783    lea        eax,[ebp-3C]
 005A0786    push       eax
 005A0787    mov        ecx,dword ptr [ebp-1C]
 005A078A    mov        edx,dword ptr [ebp-0C]
 005A078D    mov        eax,dword ptr [ebp-0C]
 005A0790    call       005A02E4
 005A0795    mov        edx,dword ptr [ebp-3C]
 005A0798    xor        ecx,ecx
 005A079A    mov        eax,dword ptr [ebp-18]
 005A079D    mov        ebx,dword ptr [eax]
 005A079F    call       dword ptr [ebx+3C]; TStringList.AddObject
 005A07A2    cmp        dword ptr [ebp-20],0
>005A07A6    je         005A07B2
 005A07A8    cmp        dword ptr [ebp-1C],0
<005A07AC    jne        005A06C0
 005A07B2    xor        edx,edx
 005A07B4    mov        eax,dword ptr [ebp-18]
 005A07B7    mov        ecx,dword ptr [eax]
 005A07B9    call       dword ptr [ecx+38]; TStringList.Add
 005A07BC    mov        edx,dword ptr [ebp-18]
 005A07BF    mov        eax,dword ptr [ebp-4]
 005A07C2    mov        ecx,dword ptr [eax]
 005A07C4    call       dword ptr [ecx+104]; @AbstractError
 005A07CA    xor        eax,eax
 005A07CC    pop        edx
 005A07CD    pop        ecx
 005A07CE    pop        ecx
 005A07CF    mov        dword ptr fs:[eax],edx
 005A07D2    push       5A07E7
 005A07D7    mov        eax,dword ptr [ebp-18]
 005A07DA    call       TObject.Free
 005A07DF    ret
<005A07E0    jmp        @HandleFinally
<005A07E5    jmp        005A07D7
 005A07E7    mov        eax,dword ptr [ebp-4]
 005A07EA    mov        edx,dword ptr [eax]
 005A07EC    call       dword ptr [edx+0F0]; TRaveBaseDataView.sub_005A0D64
 005A07F2    xor        eax,eax
 005A07F4    pop        edx
 005A07F5    pop        ecx
 005A07F6    pop        ecx
 005A07F7    mov        dword ptr fs:[eax],edx
 005A07FA    push       5A084E
 005A07FF    lea        eax,[ebp-3C]
 005A0802    mov        edx,4
 005A0807    call       @LStrArrayClr
 005A080C    lea        eax,[ebp-28]
 005A080F    call       @LStrClr
 005A0814    lea        eax,[ebp-20]
 005A0817    mov        edx,2
 005A081C    call       @LStrArrayClr
 005A0821    lea        eax,[ebp-14]
 005A0824    mov        edx,2
 005A0829    call       @LStrArrayClr
 005A082E    lea        eax,[ebp-8]
 005A0831    call       @LStrClr
 005A0836    lea        eax,[ebp+8]
 005A0839    call       @LStrClr
 005A083E    lea        eax,[ebp+0C]
 005A0841    call       @LStrClr
 005A0846    ret
<005A0847    jmp        @HandleFinally
<005A084C    jmp        005A07FF
 005A084E    pop        esi
 005A084F    pop        ebx
 005A0850    mov        esp,ebp
 005A0852    pop        ebp
 005A0853    ret        8
*}
//end;

//005A0870
constructor TRaveBaseDataView.Create(AOwner:TComponent);
begin
{*
 005A0870    push       ebx
 005A0871    push       esi
 005A0872    test       dl,dl
>005A0874    je         005A087E
 005A0876    add        esp,0FFFFFFF0
 005A0879    call       @ClassCreate
 005A087E    mov        ebx,edx
 005A0880    mov        esi,eax
 005A0882    xor        edx,edx
 005A0884    mov        eax,esi
 005A0886    call       TRaveProjectItem.Create
 005A088B    mov        dl,1
 005A088D    mov        eax,[0059CF40]; TRaveDataRow
 005A0892    call       TObject.Create; TRaveDataRow.Create
 005A0897    mov        dword ptr [esi+88],eax; TRaveBaseDataView.?f88:TRaveDataRow
 005A089D    mov        byte ptr [esi+85],1; TRaveBaseDataView.?f85:byte
 005A08A4    mov        dl,1
 005A08A6    mov        eax,[0041C8E4]; TStringList
 005A08AB    call       TObject.Create; TStringList.Create
 005A08B0    mov        dword ptr [esi+80],eax; TRaveBaseDataView.?f80:TStringList
 005A08B6    mov        eax,esi
 005A08B8    test       bl,bl
>005A08BA    je         005A08CB
 005A08BC    call       @AfterConstruction
 005A08C1    pop        dword ptr fs:[0]
 005A08C8    add        esp,0C
 005A08CB    mov        eax,esi
 005A08CD    pop        esi
 005A08CE    pop        ebx
 005A08CF    ret
*}
end;

//005A08D0
destructor TRaveBaseDataView.Destroy;
begin
{*
 005A08D0    push       ebx
 005A08D1    push       esi
 005A08D2    call       @BeforeDestruction
 005A08D7    mov        ebx,edx
 005A08D9    mov        esi,eax
 005A08DB    mov        edx,ebx
 005A08DD    and        dl,0FC
 005A08E0    mov        eax,esi
 005A08E2    call       TRaveProjectItem.Destroy
 005A08E7    lea        eax,[esi+80]; TRaveBaseDataView.?f80:TStringList
 005A08ED    call       FreeAndNil
 005A08F2    lea        eax,[esi+88]; TRaveBaseDataView.?f88:TRaveDataRow
 005A08F8    call       FreeAndNil
 005A08FD    test       bl,bl
>005A08FF    jle        005A0908
 005A0901    mov        eax,esi
 005A0903    call       @ClassDestroy
 005A0908    pop        esi
 005A0909    pop        ebx
 005A090A    ret
*}
end;

//005A090C
//procedure sub_005A090C(?:?);
//begin
{*
 005A090C    mov        eax,edx
 005A090E    mov        edx,dword ptr ds:[59CF9C]; TRaveDataField
 005A0914    call       TObject.InheritsFrom
 005A0919    ret
*}
//end;

//005A091C
//function sub_005A091C(?:TRaveBaseDataView):?;
//begin
{*
 005A091C    mov        edx,dword ptr [eax+94]; TRaveBaseDataView.?f94:TRaveDataRow
 005A0922    test       edx,edx
>005A0924    je         005A0929
 005A0926    mov        eax,edx
 005A0928    ret
 005A0929    cmp        byte ptr [eax+84],0; TRaveBaseDataView.?f84:byte
>005A0930    je         005A093A
 005A0932    mov        eax,dword ptr [eax+90]; TRaveBaseDataView.?f90:TRaveDataRow
>005A0938    jmp        005A0940
 005A093A    mov        eax,dword ptr [eax+88]; TRaveBaseDataView.?f88:TRaveDataRow
 005A0940    ret
*}
//end;

//005A0944
//function sub_005A0944(?:TRaveDriverDataView):?;
//begin
{*
 005A0944    push       ebp
 005A0945    mov        ebp,esp
 005A0947    push       0
 005A0949    push       ebx
 005A094A    push       esi
 005A094B    push       edi
 005A094C    mov        ebx,eax
 005A094E    xor        eax,eax
 005A0950    push       ebp
 005A0951    push       5A09BF
 005A0956    push       dword ptr fs:[eax]
 005A0959    mov        dword ptr fs:[eax],esp
 005A095C    mov        esi,dword ptr [ebx+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0962    mov        eax,dword ptr [esi+10]; TRaveDataRow.?f10:TRaveDataRow
 005A0965    mov        dword ptr [ebx+94],eax; TRaveDriverDataView.?f94:TRaveDataRow
 005A096B    cmp        byte ptr [ebx+84],0; TRaveDriverDataView.?f84:byte
>005A0972    jne        005A09A9
 005A0974    cmp        esi,dword ptr [ebx+8C]; TRaveDriverDataView.?f8C:TRaveDataRow
>005A097A    je         005A0996
 005A097C    mov        edi,dword ptr ds:[61B830]
 005A0982    mov        edi,dword ptr [edi]
 005A0984    lea        edx,[ebp-4]
 005A0987    mov        eax,5A09D4; 'ValueList mismatch.'
 005A098C    call       edi
 005A098E    mov        eax,dword ptr [ebp-4]
 005A0991    call       005998CC
 005A0996    mov        eax,dword ptr [ebx+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A099C    mov        dword ptr [ebx+8C],eax; TRaveDriverDataView.?f8C:TRaveDataRow
 005A09A2    mov        eax,esi
 005A09A4    call       TObject.Free
 005A09A9    xor        eax,eax
 005A09AB    pop        edx
 005A09AC    pop        ecx
 005A09AD    pop        ecx
 005A09AE    mov        dword ptr fs:[eax],edx
 005A09B1    push       5A09C6
 005A09B6    lea        eax,[ebp-4]
 005A09B9    call       @LStrClr
 005A09BE    ret
<005A09BF    jmp        @HandleFinally
<005A09C4    jmp        005A09B6
 005A09C6    pop        edi
 005A09C7    pop        esi
 005A09C8    pop        ebx
 005A09C9    pop        ecx
 005A09CA    pop        ebp
 005A09CB    ret
*}
//end;

//005A09E8
//procedure sub_005A09E8(?:TRaveBaseDataView);
//begin
{*
 005A09E8    push       ebx
 005A09E9    mov        ebx,eax
 005A09EB    mov        dl,1
 005A09ED    mov        eax,[0059CF40]; TRaveDataRow
 005A09F2    call       TObject.Create; TRaveDataRow.Create
 005A09F7    mov        byte ptr [eax+0C],1; TRaveDataRow.?fC:byte
 005A09FB    xor        edx,edx
 005A09FD    mov        dword ptr [eax+10],edx; TRaveDataRow.?f10:TRaveDataRow
 005A0A00    cmp        dword ptr [ebx+8C],0; TRaveBaseDataView.?f8C:TRaveDataRow
>005A0A07    je         005A0A14
 005A0A09    mov        edx,dword ptr [ebx+90]; TRaveBaseDataView.?f90:TRaveDataRow
 005A0A0F    mov        dword ptr [edx+10],eax; TRaveDataRow.?f10:TRaveDataRow
>005A0A12    jmp        005A0A1A
 005A0A14    mov        dword ptr [ebx+8C],eax; TRaveBaseDataView.?f8C:TRaveDataRow
 005A0A1A    mov        dword ptr [ebx+90],eax; TRaveBaseDataView.?f90:TRaveDataRow
 005A0A20    pop        ebx
 005A0A21    ret
*}
//end;

//005A0A24
//procedure sub_005A0A24(?:TRaveDriverDataView; ?:?);
//begin
{*
 005A0A24    push       ebx
 005A0A25    push       esi
 005A0A26    mov        esi,edx
 005A0A28    mov        ebx,eax
 005A0A2A    mov        eax,dword ptr [ebx+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0A30    test       eax,eax
>005A0A32    je         005A0AA4
 005A0A34    cmp        esi,1
>005A0A37    jne        005A0A58
 005A0A39    cmp        dword ptr [eax+4],0; TRaveDataRow.?f4:dword
>005A0A3D    jne        005A0AC3
 005A0A43    mov        eax,ebx
 005A0A45    call       005A0944
 005A0A4A    mov        byte ptr [ebx+85],1; TRaveDriverDataView.?f85:byte
 005A0A51    mov        byte ptr [ebx+7D],1; TRaveDriverDataView.?f7D:byte
 005A0A55    pop        esi
 005A0A56    pop        ebx
 005A0A57    ret
 005A0A58    cmp        esi,2
>005A0A5B    jne        005A0A7C
 005A0A5D    cmp        byte ptr [eax+0C],2; TRaveDataRow.?fC:byte
 005A0A61    sete       al
 005A0A64    mov        byte ptr [ebx+85],al; TRaveDriverDataView.?f85:byte
 005A0A6A    mov        eax,ebx
 005A0A6C    call       005A0944
 005A0A71    cmp        byte ptr [ebx+85],0; TRaveDriverDataView.?f85:byte
>005A0A78    jne        005A0AC3
>005A0A7A    jmp        005A0AA4
 005A0A7C    cmp        byte ptr [eax+0C],2; TRaveDataRow.?fC:byte
 005A0A80    sete       al
 005A0A83    mov        byte ptr [ebx+85],al; TRaveDriverDataView.?f85:byte
 005A0A89    mov        eax,dword ptr [ebx+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0A8F    cmp        dword ptr [eax+4],0; TRaveDataRow.?f4:dword
 005A0A93    setne      al
 005A0A96    xor        al,1
 005A0A98    mov        byte ptr [ebx+7D],al; TRaveDriverDataView.?f7D:byte
 005A0A9B    cmp        byte ptr [ebx+85],0; TRaveDriverDataView.?f85:byte
>005A0AA2    jne        005A0AC3
 005A0AA4    cmp        dword ptr [ebx+94],0; TRaveDriverDataView.?f94:TRaveDataRow
>005A0AAB    jne        005A0AC3
 005A0AAD    mov        eax,ebx
 005A0AAF    mov        edx,dword ptr [eax]
 005A0AB1    call       dword ptr [edx+0DC]; TRaveDriverDataView.sub_005C1B94
 005A0AB7    mov        edx,esi
 005A0AB9    mov        eax,ebx
 005A0ABB    mov        ecx,dword ptr [eax]
 005A0ABD    call       dword ptr [ecx+0EC]; TRaveDriverDataView.sub_005C1A34
 005A0AC3    pop        esi
 005A0AC4    pop        ebx
 005A0AC5    ret
*}
//end;

//005A0AC8
//function sub_005A0AC8(?:TRaveBaseDataView; ?:TRaveFieldName):?;
//begin
{*
 005A0AC8    push       ebp
 005A0AC9    mov        ebp,esp
 005A0ACB    xor        ecx,ecx
 005A0ACD    push       ecx
 005A0ACE    push       ecx
 005A0ACF    push       ecx
 005A0AD0    push       ecx
 005A0AD1    push       ebx
 005A0AD2    push       esi
 005A0AD3    mov        dword ptr [ebp-4],edx
 005A0AD6    mov        ebx,eax
 005A0AD8    mov        eax,dword ptr [ebp-4]
 005A0ADB    call       @LStrAddRef
 005A0AE0    xor        eax,eax
 005A0AE2    push       ebp
 005A0AE3    push       5A0BA6
 005A0AE8    push       dword ptr fs:[eax]
 005A0AEB    mov        dword ptr fs:[eax],esp
 005A0AEE    cmp        byte ptr [ebx+7C],0; TRaveBaseDataView.?f7C:byte
>005A0AF2    jne        005A0B08
 005A0AF4    mov        eax,ebx
 005A0AF6    mov        edx,dword ptr [eax]
 005A0AF8    call       dword ptr [edx+0DC]; TRaveBaseDataView.sub_005AB4A8
 005A0AFE    mov        eax,ebx
 005A0B00    mov        edx,dword ptr [eax]
 005A0B02    call       dword ptr [edx+0F8]; TRaveBaseDataView.sub_005A0D7C
 005A0B08    lea        eax,[ebp-8]
 005A0B0B    mov        ecx,5A0BC0; '.'
 005A0B10    mov        edx,dword ptr [ebx+8]; TRaveBaseDataView.?f8:TComponentName
 005A0B13    call       @LStrCat3
 005A0B18    lea        eax,[ebp-0C]
 005A0B1B    push       eax
 005A0B1C    mov        eax,dword ptr [ebp-8]
 005A0B1F    call       @LStrLen
 005A0B24    mov        ecx,eax
 005A0B26    mov        edx,1
 005A0B2B    mov        eax,dword ptr [ebp-4]
 005A0B2E    call       @LStrCopy
 005A0B33    mov        edx,dword ptr [ebp-0C]
 005A0B36    mov        eax,dword ptr [ebp-8]
 005A0B39    call       AnsiCompareText
 005A0B3E    test       eax,eax
>005A0B40    jne        005A0B59
 005A0B42    mov        eax,dword ptr [ebp-8]
 005A0B45    call       @LStrLen
 005A0B4A    mov        ecx,eax
 005A0B4C    lea        eax,[ebp-4]
 005A0B4F    mov        edx,1
 005A0B54    call       @LStrDelete
 005A0B59    lea        edx,[ebp-10]
 005A0B5C    mov        eax,dword ptr [ebp-4]
 005A0B5F    call       005A564C
 005A0B64    mov        edx,dword ptr [ebp-10]
 005A0B67    mov        eax,dword ptr [ebx+80]; TRaveBaseDataView.?f80:TStringList
 005A0B6D    mov        ecx,dword ptr [eax]
 005A0B6F    call       dword ptr [ecx+54]; TStringList.IndexOf
 005A0B72    mov        esi,eax
 005A0B74    test       esi,esi
>005A0B76    jl         005A0B89
 005A0B78    mov        edx,esi
 005A0B7A    mov        eax,dword ptr [ebx+80]; TRaveBaseDataView.?f80:TStringList
 005A0B80    mov        ecx,dword ptr [eax]
 005A0B82    call       dword ptr [ecx+18]; TStringList.GetObject
 005A0B85    mov        ebx,eax
>005A0B87    jmp        005A0B8B
 005A0B89    xor        ebx,ebx
 005A0B8B    xor        eax,eax
 005A0B8D    pop        edx
 005A0B8E    pop        ecx
 005A0B8F    pop        ecx
 005A0B90    mov        dword ptr fs:[eax],edx
 005A0B93    push       5A0BAD
 005A0B98    lea        eax,[ebp-10]
 005A0B9B    mov        edx,4
 005A0BA0    call       @LStrArrayClr
 005A0BA5    ret
<005A0BA6    jmp        @HandleFinally
<005A0BAB    jmp        005A0B98
 005A0BAD    mov        eax,ebx
 005A0BAF    pop        esi
 005A0BB0    pop        ebx
 005A0BB1    mov        esp,ebp
 005A0BB3    pop        ebp
 005A0BB4    ret
*}
//end;

//005A0BC4
procedure TRaveBaseDataView.SetName(NewName:TComponentName);
begin
{*
 005A0BC4    push       ebp
 005A0BC5    mov        ebp,esp
 005A0BC7    add        esp,0FFFFFFE8
 005A0BCA    push       ebx
 005A0BCB    push       esi
 005A0BCC    xor        ecx,ecx
 005A0BCE    mov        dword ptr [ebp-18],ecx
 005A0BD1    mov        dword ptr [ebp-14],ecx
 005A0BD4    mov        dword ptr [ebp-0C],ecx
 005A0BD7    mov        dword ptr [ebp-8],edx
 005A0BDA    mov        dword ptr [ebp-4],eax
 005A0BDD    xor        eax,eax
 005A0BDF    push       ebp
 005A0BE0    push       5A0C86
 005A0BE5    push       dword ptr fs:[eax]
 005A0BE8    mov        dword ptr fs:[eax],esp
 005A0BEB    lea        eax,[ebp-0C]
 005A0BEE    mov        edx,dword ptr [ebp-4]
 005A0BF1    mov        edx,dword ptr [edx+8]; TRaveBaseDataView.?f8:TComponentName
 005A0BF4    call       @LStrLAsg
 005A0BF9    mov        edx,dword ptr [ebp-8]
 005A0BFC    mov        eax,dword ptr [ebp-4]
 005A0BFF    call       TRaveProjectItem.SetName
 005A0C04    mov        eax,dword ptr [ebp-4]
 005A0C07    mov        edx,dword ptr [eax]
 005A0C09    call       dword ptr [edx+54]; TRaveBaseDataView.sub_005AB0D4
 005A0C0C    mov        esi,eax
 005A0C0E    dec        esi
 005A0C0F    test       esi,esi
>005A0C11    jl         005A0C63
 005A0C13    inc        esi
 005A0C14    mov        dword ptr [ebp-10],0
 005A0C1B    mov        edx,dword ptr [ebp-10]
 005A0C1E    mov        eax,dword ptr [ebp-4]
 005A0C21    mov        ecx,dword ptr [eax]
 005A0C23    call       dword ptr [ecx+50]; TRaveBaseDataView.sub_005AB0E4
 005A0C26    mov        ebx,eax
 005A0C28    lea        ecx,[ebp-14]
 005A0C2B    mov        edx,dword ptr [ebx+64]
 005A0C2E    mov        eax,dword ptr [ebp-0C]
 005A0C31    call       005A0340
 005A0C36    mov        edx,dword ptr [ebp-14]
 005A0C39    mov        eax,dword ptr [ebx+8]
 005A0C3C    call       AnsiCompareText
 005A0C41    test       eax,eax
>005A0C43    jne        005A0C5D
 005A0C45    lea        ecx,[ebp-18]
 005A0C48    mov        edx,dword ptr [ebx+64]
 005A0C4B    mov        eax,dword ptr [ebp-8]
 005A0C4E    call       005A0340
 005A0C53    mov        edx,dword ptr [ebp-18]
 005A0C56    mov        eax,ebx
 005A0C58    mov        ecx,dword ptr [eax]
 005A0C5A    call       dword ptr [ecx+18]
 005A0C5D    inc        dword ptr [ebp-10]
 005A0C60    dec        esi
<005A0C61    jne        005A0C1B
 005A0C63    xor        eax,eax
 005A0C65    pop        edx
 005A0C66    pop        ecx
 005A0C67    pop        ecx
 005A0C68    mov        dword ptr fs:[eax],edx
 005A0C6B    push       5A0C8D
 005A0C70    lea        eax,[ebp-18]
 005A0C73    mov        edx,2
 005A0C78    call       @LStrArrayClr
 005A0C7D    lea        eax,[ebp-0C]
 005A0C80    call       @LStrClr
 005A0C85    ret
<005A0C86    jmp        @HandleFinally
<005A0C8B    jmp        005A0C70
 005A0C8D    pop        esi
 005A0C8E    pop        ebx
 005A0C8F    mov        esp,ebp
 005A0C91    pop        ebp
 005A0C92    ret
*}
end;

//005A0C94
//function sub_005A0C94:?;
//begin
{*
 005A0C94    push       ebx
 005A0C95    push       esi
 005A0C96    mov        esi,eax
 005A0C98    mov        al,byte ptr [esi+84]; TRaveDriverDataView.?f84:byte
 005A0C9E    mov        byte ptr [esi+0A1],al; TRaveDriverDataView.?fA1:byte
 005A0CA4    mov        al,byte ptr [esi+85]; TRaveDriverDataView.?f85:byte
 005A0CAA    mov        byte ptr [esi+0A0],al; TRaveDriverDataView.?fA0:byte
 005A0CB0    mov        eax,dword ptr [esi+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0CB6    mov        dword ptr [esi+9C],eax; TRaveDriverDataView.?f9C:TRaveDataRow
 005A0CBC    cmp        byte ptr [esi+0A1],0; TRaveDriverDataView.?fA1:byte
>005A0CC3    jne        005A0CCF
 005A0CC5    mov        eax,esi
 005A0CC7    mov        edx,dword ptr [eax]
 005A0CC9    call       dword ptr [edx+110]; TRaveDriverDataView.sub_005A0EA8
 005A0CCF    mov        eax,esi
 005A0CD1    mov        edx,dword ptr [eax]
 005A0CD3    call       dword ptr [edx+0F4]; TRaveDriverDataView.sub_005A0FE8
 005A0CD9    mov        eax,esi
 005A0CDB    mov        edx,dword ptr [eax]
 005A0CDD    call       dword ptr [edx+0FC]; TRaveDriverDataView.sub_005A0D5C
 005A0CE3    mov        ebx,eax
 005A0CE5    mov        al,byte ptr [esi+0A0]; TRaveDriverDataView.?fA0:byte
 005A0CEB    mov        byte ptr [esi+85],al; TRaveDriverDataView.?f85:byte
 005A0CF1    mov        eax,dword ptr [esi+9C]; TRaveDriverDataView.?f9C:TRaveDataRow
 005A0CF7    mov        dword ptr [esi+94],eax; TRaveDriverDataView.?f94:TRaveDataRow
 005A0CFD    cmp        byte ptr [esi+0A1],0; TRaveDriverDataView.?fA1:byte
>005A0D04    jne        005A0D10
 005A0D06    mov        eax,esi
 005A0D08    mov        edx,dword ptr [eax]
 005A0D0A    call       dword ptr [edx+114]; TRaveDriverDataView.sub_005A0DF4
 005A0D10    test       bl,bl
>005A0D12    je         005A0D28
 005A0D14    mov        eax,dword ptr [esi+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0D1A    mov        dword ptr [esi+88],eax; TRaveDriverDataView.?f88:TRaveDataRow
 005A0D20    xor        eax,eax
 005A0D22    mov        dword ptr [esi+94],eax; TRaveDriverDataView.?f94:TRaveDataRow
 005A0D28    mov        eax,ebx
 005A0D2A    pop        esi
 005A0D2B    pop        ebx
 005A0D2C    ret
*}
//end;

//005A0D30
//function sub_005A0D30:?;
//begin
{*
 005A0D30    push       ebx
 005A0D31    push       esi
 005A0D32    mov        esi,eax
 005A0D34    mov        eax,esi
 005A0D36    mov        ecx,dword ptr [eax]
 005A0D38    call       dword ptr [ecx+11C]; TRaveDriverDataView.sub_005A0D90
 005A0D3E    mov        eax,esi
 005A0D40    mov        edx,dword ptr [eax]
 005A0D42    call       dword ptr [edx+0FC]; TRaveDriverDataView.sub_005A0D5C
 005A0D48    mov        ebx,eax
 005A0D4A    xor        bl,1
 005A0D4D    mov        eax,esi
 005A0D4F    mov        edx,dword ptr [eax]
 005A0D51    call       dword ptr [edx+120]; TRaveDriverDataView.sub_005A0F90
 005A0D57    mov        eax,ebx
 005A0D59    pop        esi
 005A0D5A    pop        ebx
 005A0D5B    ret
*}
//end;

//005A0D5C
//function sub_005A0D5C:?;
//begin
{*
 005A0D5C    mov        al,byte ptr [eax+85]; TRaveDriverDataView.?f85:byte
 005A0D62    ret
*}
//end;

//005A0D64
procedure sub_005A0D64;
begin
{*
 005A0D64    mov        byte ptr [eax+7D],0; TRaveDriverDataView.?f7D:byte
 005A0D68    mov        byte ptr [eax+85],0; TRaveDriverDataView.?f85:byte
 005A0D6F    mov        edx,1
 005A0D74    call       005A0A24
 005A0D79    ret
*}
end;

//005A0D7C
procedure sub_005A0D7C;
begin
{*
 005A0D7C    mov        byte ptr [eax+85],0; TRaveDriverDataView.?f85:byte
 005A0D83    mov        edx,5
 005A0D88    call       005A0A24
 005A0D8D    ret
*}
end;

//005A0D90
//procedure sub_005A0D90(?:?);
//begin
{*
 005A0D90    push       ebx
 005A0D91    push       esi
 005A0D92    push       edi
 005A0D93    mov        esi,edx
 005A0D95    mov        ebx,eax
 005A0D97    mov        al,byte ptr [ebx+84]; TRaveDriverDataView.?f84:byte
 005A0D9D    mov        byte ptr [ebx+0A1],al; TRaveDriverDataView.?fA1:byte
 005A0DA3    mov        al,byte ptr [ebx+85]; TRaveDriverDataView.?f85:byte
 005A0DA9    mov        byte ptr [ebx+0A0],al; TRaveDriverDataView.?fA0:byte
 005A0DAF    mov        eax,dword ptr [ebx+94]; TRaveDriverDataView.?f94:TRaveDataRow
 005A0DB5    mov        dword ptr [ebx+9C],eax; TRaveDriverDataView.?f9C:TRaveDataRow
 005A0DBB    cmp        byte ptr [ebx+0A1],0; TRaveDriverDataView.?fA1:byte
>005A0DC2    jne        005A0DCE
 005A0DC4    mov        eax,ebx
 005A0DC6    mov        edx,dword ptr [eax]
 005A0DC8    call       dword ptr [edx+110]; TRaveDriverDataView.sub_005A0EA8
 005A0DCE    test       esi,esi
>005A0DD0    jle        005A0DED
 005A0DD2    mov        eax,ebx
 005A0DD4    mov        edx,dword ptr [eax]
 005A0DD6    call       dword ptr [edx+0F4]; TRaveDriverDataView.sub_005A0FE8
 005A0DDC    mov        eax,ebx
 005A0DDE    mov        edx,dword ptr [eax]
 005A0DE0    call       dword ptr [edx+0FC]; TRaveDriverDataView.sub_005A0D5C
 005A0DE6    test       al,al
>005A0DE8    jne        005A0DED
 005A0DEA    dec        esi
<005A0DEB    jne        005A0DD2
 005A0DED    pop        edi
 005A0DEE    pop        esi
 005A0DEF    pop        ebx
 005A0DF0    ret
*}
//end;

//005A0DF4
procedure sub_005A0DF4;
begin
{*
 005A0DF4    push       ebp
 005A0DF5    mov        ebp,esp
 005A0DF7    push       0
 005A0DF9    push       ebx
 005A0DFA    push       esi
 005A0DFB    mov        ebx,eax
 005A0DFD    xor        eax,eax
 005A0DFF    push       ebp
 005A0E00    push       5A0E63
 005A0E05    push       dword ptr fs:[eax]
 005A0E08    mov        dword ptr fs:[eax],esp
 005A0E0B    cmp        byte ptr [ebx+84],0; TRaveDriverDataView.?f84:byte
>005A0E12    jne        005A0E2E
 005A0E14    mov        esi,dword ptr ds:[61B830]
 005A0E1A    mov        esi,dword ptr [esi]
 005A0E1C    lea        edx,[ebp-4]
 005A0E1F    mov        eax,5A0E78; 'DataView.RestoreState called when not saving.'
 005A0E24    call       esi
 005A0E26    mov        eax,dword ptr [ebp-4]
 005A0E29    call       005998CC
 005A0E2E    mov        byte ptr [ebx+84],0; TRaveDriverDataView.?f84:byte
 005A0E35    mov        eax,dword ptr [ebx+8C]; TRaveDriverDataView.?f8C:TRaveDataRow
 005A0E3B    mov        dword ptr [ebx+94],eax; TRaveDriverDataView.?f94:TRaveDataRow
 005A0E41    mov        al,byte ptr [ebx+98]; TRaveDriverDataView.?f98:byte
 005A0E47    mov        byte ptr [ebx+85],al; TRaveDriverDataView.?f85:byte
 005A0E4D    xor        eax,eax
 005A0E4F    pop        edx
 005A0E50    pop        ecx
 005A0E51    pop        ecx
 005A0E52    mov        dword ptr fs:[eax],edx
 005A0E55    push       5A0E6A
 005A0E5A    lea        eax,[ebp-4]
 005A0E5D    call       @LStrClr
 005A0E62    ret
<005A0E63    jmp        @HandleFinally
<005A0E68    jmp        005A0E5A
 005A0E6A    pop        esi
 005A0E6B    pop        ebx
 005A0E6C    pop        ecx
 005A0E6D    pop        ebp
 005A0E6E    ret
*}
end;

//005A0EA8
procedure sub_005A0EA8;
begin
{*
 005A0EA8    push       ebp
 005A0EA9    mov        ebp,esp
 005A0EAB    push       0
 005A0EAD    push       ebx
 005A0EAE    push       esi
 005A0EAF    mov        ebx,eax
 005A0EB1    xor        eax,eax
 005A0EB3    push       ebp
 005A0EB4    push       5A0F53
 005A0EB9    push       dword ptr fs:[eax]
 005A0EBC    mov        dword ptr fs:[eax],esp
 005A0EBF    cmp        byte ptr [ebx+84],0; TRaveDriverDataView.?f84:byte
>005A0EC6    je         005A0EE2
 005A0EC8    mov        esi,dword ptr ds:[61B830]
 005A0ECE    mov        esi,dword ptr [esi]
 005A0ED0    lea        edx,[ebp-4]
 005A0ED3    mov        eax,5A0F68; 'DataView.SaveState called while Saving.'
 005A0ED8    call       esi
 005A0EDA    mov        eax,dword ptr [ebp-4]
 005A0EDD    call       005998CC
 005A0EE2    mov        byte ptr [ebx+84],1; TRaveDriverDataView.?f84:byte
 005A0EE9    mov        al,byte ptr [ebx+85]; TRaveDriverDataView.?f85:byte
 005A0EEF    mov        byte ptr [ebx+98],al; TRaveDriverDataView.?f98:byte
 005A0EF5    cmp        dword ptr [ebx+94],0; TRaveDriverDataView.?f94:TRaveDataRow
>005A0EFC    jne        005A0F3D
 005A0EFE    mov        eax,ebx
 005A0F00    mov        edx,dword ptr [eax]
 005A0F02    call       dword ptr [edx+0FC]; TRaveDriverDataView.sub_005A0D5C
 005A0F08    test       al,al
>005A0F0A    je         005A0F1F
 005A0F0C    mov        eax,ebx
 005A0F0E    call       005A09E8
 005A0F13    mov        eax,dword ptr [ebx+90]; TRaveDriverDataView.?f90:TRaveDataRow
 005A0F19    mov        byte ptr [eax+0C],2; TRaveDataRow.?fC:byte
>005A0F1D    jmp        005A0F3D
 005A0F1F    mov        eax,ebx
 005A0F21    call       005A09E8
 005A0F26    mov        eax,dword ptr [ebx+90]; TRaveDriverDataView.?f90:TRaveDataRow
 005A0F2C    mov        byte ptr [eax+0C],0; TRaveDataRow.?fC:byte
 005A0F30    mov        edx,eax
 005A0F32    mov        eax,dword ptr [ebx+88]; TRaveDriverDataView.?f88:TRaveDataRow
 005A0F38    call       0059E9C0
 005A0F3D    xor        eax,eax
 005A0F3F    pop        edx
 005A0F40    pop        ecx
 005A0F41    pop        ecx
 005A0F42    mov        dword ptr fs:[eax],edx
 005A0F45    push       5A0F5A
 005A0F4A    lea        eax,[ebp-4]
 005A0F4D    call       @LStrClr
 005A0F52    ret
<005A0F53    jmp        @HandleFinally
<005A0F58    jmp        005A0F4A
 005A0F5A    pop        esi
 005A0F5B    pop        ebx
 005A0F5C    pop        ecx
 005A0F5D    pop        ebp
 005A0F5E    ret
*}
end;

//005A0F90
procedure sub_005A0F90;
begin
{*
 005A0F90    mov        dl,byte ptr [eax+0A0]; TRaveDriverDataView.?fA0:byte
 005A0F96    mov        byte ptr [eax+85],dl; TRaveDriverDataView.?f85:byte
 005A0F9C    mov        edx,dword ptr [eax+9C]; TRaveDriverDataView.?f9C:TRaveDataRow
 005A0FA2    mov        dword ptr [eax+94],edx; TRaveDriverDataView.?f94:TRaveDataRow
 005A0FA8    cmp        byte ptr [eax+0A1],0; TRaveDriverDataView.?fA1:byte
>005A0FAF    jne        005A0FB9
 005A0FB1    mov        edx,dword ptr [eax]
 005A0FB3    call       dword ptr [edx+114]; TRaveDriverDataView.sub_005A0DF4
 005A0FB9    ret
*}
end;

//005A0FBC
procedure sub_005A0FBC;
begin
{*
 005A0FBC    push       ebx
 005A0FBD    mov        ebx,eax
 005A0FBF    mov        eax,ebx
 005A0FC1    call       005AB4BC
 005A0FC6    cmp        byte ptr [ebx+7C],0; TRaveBaseDataView.?f7C:byte
>005A0FCA    je         005A0FE4
 005A0FCC    xor        eax,eax
 005A0FCE    mov        dword ptr [ebx+94],eax; TRaveBaseDataView.?f94:TRaveDataRow
 005A0FD4    xor        eax,eax
 005A0FD6    mov        dword ptr [ebx+8C],eax; TRaveBaseDataView.?f8C:TRaveDataRow
 005A0FDC    xor        eax,eax
 005A0FDE    mov        dword ptr [ebx+90],eax; TRaveBaseDataView.?f90:TRaveDataRow
 005A0FE4    pop        ebx
 005A0FE5    ret
*}
end;

//005A0FE8
procedure sub_005A0FE8;
begin
{*
 005A0FE8    push       ebx
 005A0FE9    mov        ebx,eax
 005A0FEB    mov        eax,ebx
 005A0FED    mov        edx,dword ptr [eax]
 005A0FEF    call       dword ptr [edx+0FC]; TRaveDriverDataView.sub_005A0D5C
 005A0FF5    test       al,al
>005A0FF7    jne        005A1005
 005A0FF9    mov        edx,2
 005A0FFE    mov        eax,ebx
 005A1000    call       005A0A24
 005A1005    pop        ebx
 005A1006    ret
*}
end;

//005A1008
procedure sub_005A1008;
begin
{*
 005A1008    push       ebx
 005A1009    mov        ebx,eax
 005A100B    mov        eax,ebx
 005A100D    call       005A8838
 005A1012    cmp        byte ptr [ebx+7C],0; TRaveBaseDataView.?f7C:byte
>005A1016    je         005A1022
 005A1018    mov        eax,ebx
 005A101A    mov        edx,dword ptr [eax]
 005A101C    call       dword ptr [edx+0E0]; TRaveBaseDataView.sub_005A0FBC
 005A1022    pop        ebx
 005A1023    ret
*}
end;

Initialization
Finalization
//005A1024
{*
 005A1024    push       ebp
 005A1025    mov        ebp,esp
 005A1027    xor        eax,eax
 005A1029    push       ebp
 005A102A    push       5A1060
 005A102F    push       dword ptr fs:[eax]
 005A1032    mov        dword ptr fs:[eax],esp
 005A1035    inc        dword ptr ds:[61F870]
>005A103B    jne        005A1052
 005A103D    mov        eax,61714C; gvar_0061714C:array[16] of String
 005A1042    mov        ecx,10
 005A1047    mov        edx,dword ptr ds:[4010F8]; String
 005A104D    call       @FinalizeArray
 005A1052    xor        eax,eax
 005A1054    pop        edx
 005A1055    pop        ecx
 005A1056    pop        ecx
 005A1057    mov        dword ptr fs:[eax],edx
 005A105A    push       5A1067
 005A105F    ret
<005A1060    jmp        @HandleFinally
<005A1065    jmp        005A105F
 005A1067    pop        ebp
 005A1068    ret
*}
end.