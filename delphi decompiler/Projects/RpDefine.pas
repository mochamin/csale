{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpDefine;

interface

uses
  Classes, Windows, Graphics, SysUtils;

type
  TPaperSizeName = record //size = 24
  f0:String;;
  EReportPrinter = class(Exception)
  end;
  TPrintPageEvent = function(Sender:TObject; var PageNum:Integer):Boolean of object;
  TDecodeImageEvent = procedure(Sender:TObject; ImageStream:TStream; ImageType:String; Bitmap:TBitmap) of object;
  TAccuracyMethod = (amPositioning, amAppearance);
  TMarginMethod = (mmScaled, mmFixed);
  TRulerType = (rtNone, rtHorizCm, rtVertCm, rtBothCm, rtHorizIn, rtVertIn, rtBothIn);
  TPrintJustify = (pjCenter, pjLeft, pjRight, pjBlock);
  TPrintUnits = (unInch, unMM, unCM, unPoint, unUser);
  TLineHeightMethod = (lhmLinesPerInch, lhmFont, lhmUser);
  TBKMode = (bkTransparent, bkOpaque);
  TStreamMode = (smMemory, smFile, smUser, smTempFile);
  TOrientation = (poPortrait, poLandScape, poDefault);
  TReportDest = (rdPreview, rdPrinter, rdFile);
  TSystemSetup = (ssAllowSetup, ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup);
  TSystemOption = (soUseFiler, soWaitForOK, soShowStatus, soAllowPrintFromPreview, soPreviewModal, soNoGenerate);
  TSystemSetups = set of TSystemSetup;
  TSystemOptions = set of TSystemOption;
  TRpComponent = class(TComponent)
  public
    f30:String;//f30
    constructor Create(AOwner:TComponent); virtual;
  end;
  TRPStringObject = class(TObject)
  public
    f4:String;//f4
    //constructor Create(?:TRPStringObject; _Dv__:Boolean);
  end;
  TRPDataType = (dtString, dtInteger, dtBoolean, dtFloat, dtCurrency, dtBCD, dtDate, dtTime, dtDateTime, dtBlob, dtMemo, dtGraphic, dtInt64);

implementation

{$R *.DFM}

//005794E0
//procedure sub_005794E0(?:?; ?:?);
//begin
{*
 005794E0    push       ebx
 005794E1    push       esi
 005794E2    mov        esi,edx
 005794E4    mov        ebx,eax
 005794E6    mov        eax,esi
 005794E8    mov        edx,ebx
 005794EA    call       @LStrAsg
 005794EF    pop        esi
 005794F0    pop        ebx
 005794F1    ret
*}
//end;

//005794F4
//function sub_005794F4(?:AnsiString):?;
//begin
{*
 005794F4    push       ebp
 005794F5    mov        ebp,esp
 005794F7    push       ecx
 005794F8    push       ebx
 005794F9    mov        dword ptr [ebp-4],eax
 005794FC    mov        eax,dword ptr [ebp-4]
 005794FF    call       @LStrAddRef
 00579504    xor        eax,eax
 00579506    push       ebp
 00579507    push       579574
 0057950C    push       dword ptr fs:[eax]
 0057950F    mov        dword ptr fs:[eax],esp
 00579512    lea        eax,[ebp-4]
 00579515    mov        ecx,dword ptr [ebp-4]
 00579518    mov        edx,dword ptr ds:[616F54]; gvar_00616F54:AnsiString
 0057951E    call       @LStrCat3
 00579523    cmp        dword ptr [ebp-4],0
>00579527    jne        0057952D
 00579529    xor        ebx,ebx
>0057952B    jmp        0057955E
 0057952D    lea        eax,[ebp-4]
 00579530    call       @UniqueStringA
 00579535    push       eax
 00579536    push       0
 00579538    push       1F0003
 0057953D    call       kernel32.OpenEventA
 00579542    mov        ebx,eax
 00579544    test       ebx,ebx
>00579546    jne        0057955E
 00579548    lea        eax,[ebp-4]
 0057954B    call       @UniqueStringA
 00579550    push       eax
 00579551    push       0
 00579553    push       0
 00579555    push       0
 00579557    call       kernel32.CreateEventA
 0057955C    mov        ebx,eax
 0057955E    xor        eax,eax
 00579560    pop        edx
 00579561    pop        ecx
 00579562    pop        ecx
 00579563    mov        dword ptr fs:[eax],edx
 00579566    push       57957B
 0057956B    lea        eax,[ebp-4]
 0057956E    call       @LStrClr
 00579573    ret
<00579574    jmp        @HandleFinally
<00579579    jmp        0057956B
 0057957B    mov        eax,ebx
 0057957D    pop        ebx
 0057957E    pop        ecx
 0057957F    pop        ebp
 00579580    ret
*}
//end;

//00579584
//function sub_00579584(?:AnsiString):?;
//begin
{*
 00579584    push       ebp
 00579585    mov        ebp,esp
 00579587    push       ecx
 00579588    push       ebx
 00579589    mov        dword ptr [ebp-4],eax
 0057958C    mov        eax,dword ptr [ebp-4]
 0057958F    call       @LStrAddRef
 00579594    xor        eax,eax
 00579596    push       ebp
 00579597    push       579604
 0057959C    push       dword ptr fs:[eax]
 0057959F    mov        dword ptr fs:[eax],esp
 005795A2    lea        eax,[ebp-4]
 005795A5    mov        ecx,dword ptr [ebp-4]
 005795A8    mov        edx,dword ptr ds:[616F54]; gvar_00616F54:AnsiString
 005795AE    call       @LStrCat3
 005795B3    cmp        dword ptr [ebp-4],0
>005795B7    jne        005795BD
 005795B9    xor        ebx,ebx
>005795BB    jmp        005795EE
 005795BD    lea        eax,[ebp-4]
 005795C0    call       @UniqueStringA
 005795C5    push       eax
 005795C6    push       0
 005795C8    push       1F0003
 005795CD    call       kernel32.OpenEventA
 005795D2    mov        ebx,eax
 005795D4    test       ebx,ebx
>005795D6    jne        005795EE
 005795D8    lea        eax,[ebp-4]
 005795DB    call       @UniqueStringA
 005795E0    push       eax
 005795E1    push       0
 005795E3    push       0FF
 005795E5    push       0
 005795E7    call       kernel32.CreateEventA
 005795EC    mov        ebx,eax
 005795EE    xor        eax,eax
 005795F0    pop        edx
 005795F1    pop        ecx
 005795F2    pop        ecx
 005795F3    mov        dword ptr fs:[eax],edx
 005795F6    push       57960B
 005795FB    lea        eax,[ebp-4]
 005795FE    call       @LStrClr
 00579603    ret
<00579604    jmp        @HandleFinally
<00579609    jmp        005795FB
 0057960B    mov        eax,ebx
 0057960D    pop        ebx
 0057960E    pop        ecx
 0057960F    pop        ebp
 00579610    ret
*}
//end;

//00579614
//function sub_00579614(?:AnsiString):?;
//begin
{*
 00579614    push       ebp
 00579615    mov        ebp,esp
 00579617    push       ecx
 00579618    push       ebx
 00579619    mov        dword ptr [ebp-4],eax
 0057961C    mov        eax,dword ptr [ebp-4]
 0057961F    call       @LStrAddRef
 00579624    xor        eax,eax
 00579626    push       ebp
 00579627    push       579692
 0057962C    push       dword ptr fs:[eax]
 0057962F    mov        dword ptr fs:[eax],esp
 00579632    lea        eax,[ebp-4]
 00579635    mov        ecx,dword ptr [ebp-4]
 00579638    mov        edx,dword ptr ds:[616F54]; gvar_00616F54:AnsiString
 0057963E    call       @LStrCat3
 00579643    cmp        dword ptr [ebp-4],0
>00579647    jne        0057964D
 00579649    xor        ebx,ebx
>0057964B    jmp        0057967C
 0057964D    lea        eax,[ebp-4]
 00579650    call       @UniqueStringA
 00579655    push       eax
 00579656    push       0
 00579658    push       1F0001
 0057965D    call       kernel32.OpenMutexA
 00579662    mov        ebx,eax
 00579664    test       ebx,ebx
>00579666    jne        0057967C
 00579668    lea        eax,[ebp-4]
 0057966B    call       @UniqueStringA
 00579670    push       eax
 00579671    push       0
 00579673    push       0
 00579675    call       0040758C
 0057967A    mov        ebx,eax
 0057967C    xor        eax,eax
 0057967E    pop        edx
 0057967F    pop        ecx
 00579680    pop        ecx
 00579681    mov        dword ptr fs:[eax],edx
 00579684    push       579699
 00579689    lea        eax,[ebp-4]
 0057968C    call       @LStrClr
 00579691    ret
<00579692    jmp        @HandleFinally
<00579697    jmp        00579689
 00579699    mov        eax,ebx
 0057969B    pop        ebx
 0057969C    pop        ecx
 0057969D    pop        ebp
 0057969E    ret
*}
//end;

//005796A0
//function sub_005796A0(?:AnsiString; ?:THandle):?;
//begin
{*
 005796A0    push       ebp
 005796A1    mov        ebp,esp
 005796A3    push       ecx
 005796A4    push       ebx
 005796A5    mov        ebx,edx
 005796A7    mov        dword ptr [ebp-4],eax
 005796AA    mov        eax,dword ptr [ebp-4]
 005796AD    call       @LStrAddRef
 005796B2    xor        eax,eax
 005796B4    push       ebp
 005796B5    push       5796F2
 005796BA    push       dword ptr fs:[eax]
 005796BD    mov        dword ptr fs:[eax],esp
 005796C0    lea        eax,[ebp-4]
 005796C3    call       @UniqueStringA
 005796C8    push       eax
 005796C9    push       0
 005796CB    push       2
 005796CD    call       kernel32.OpenFileMappingA
 005796D2    mov        dword ptr [ebx],eax
 005796D4    cmp        dword ptr [ebx],0
 005796D7    setne      al
 005796DA    mov        ebx,eax
 005796DC    xor        eax,eax
 005796DE    pop        edx
 005796DF    pop        ecx
 005796E0    pop        ecx
 005796E1    mov        dword ptr fs:[eax],edx
 005796E4    push       5796F9
 005796E9    lea        eax,[ebp-4]
 005796EC    call       @LStrClr
 005796F1    ret
<005796F2    jmp        @HandleFinally
<005796F7    jmp        005796E9
 005796F9    mov        eax,ebx
 005796FB    pop        ebx
 005796FC    pop        ecx
 005796FD    pop        ebp
 005796FE    ret
*}
//end;

//00579700
//function sub_00579700(?:AnsiString; ?:dword):?;
//begin
{*
 00579700    push       ebp
 00579701    mov        ebp,esp
 00579703    add        esp,0FFFFFFF8
 00579706    push       ebx
 00579707    mov        ebx,edx
 00579709    mov        dword ptr [ebp-4],eax
 0057970C    mov        eax,dword ptr [ebp-4]
 0057970F    call       @LStrAddRef
 00579714    xor        eax,eax
 00579716    push       ebp
 00579717    push       579772
 0057971C    push       dword ptr fs:[eax]
 0057971F    mov        dword ptr fs:[eax],esp
 00579722    lea        eax,[ebp-4]
 00579725    mov        ecx,dword ptr [ebp-4]
 00579728    mov        edx,dword ptr ds:[616F54]; gvar_00616F54:AnsiString
 0057972E    call       @LStrCat3
 00579733    lea        edx,[ebp-8]
 00579736    mov        eax,dword ptr [ebp-4]
 00579739    call       005796A0
 0057973E    test       al,al
>00579740    jne        0057975C
 00579742    lea        eax,[ebp-4]
 00579745    call       @UniqueStringA
 0057974A    push       eax
 0057974B    push       ebx
 0057974C    push       0
 0057974E    push       4
 00579750    push       0
 00579752    push       0FF
 00579754    call       kernel32.CreateFileMappingA
 00579759    mov        dword ptr [ebp-8],eax
 0057975C    xor        eax,eax
 0057975E    pop        edx
 0057975F    pop        ecx
 00579760    pop        ecx
 00579761    mov        dword ptr fs:[eax],edx
 00579764    push       579779
 00579769    lea        eax,[ebp-4]
 0057976C    call       @LStrClr
 00579771    ret
<00579772    jmp        @HandleFinally
<00579777    jmp        00579769
 00579779    mov        eax,dword ptr [ebp-8]
 0057977C    pop        ebx
 0057977D    pop        ecx
 0057977E    pop        ecx
 0057977F    pop        ebp
 00579780    ret
*}
//end;

//00579784
//function sub_00579784(?:?):?;
//begin
{*
 00579784    push       ebx
 00579785    mov        ebx,eax
 00579787    push       0
 00579789    push       0
 0057978B    push       0
 0057978D    push       6
 0057978F    push       ebx
 00579790    call       kernel32.MapViewOfFile
 00579795    pop        ebx
 00579796    ret
*}
//end;

//00579798
//procedure sub_00579798(?:AnsiString);
//begin
{*
 00579798    push       ebp
 00579799    mov        ebp,esp
 0057979B    push       ecx
 0057979C    mov        dword ptr [ebp-4],eax
 0057979F    mov        eax,dword ptr [ebp-4]
 005797A2    call       @LStrAddRef
 005797A7    xor        eax,eax
 005797A9    push       ebp
 005797AA    push       5797DF
 005797AF    push       dword ptr fs:[eax]
 005797B2    mov        dword ptr fs:[eax],esp
 005797B5    mov        ecx,dword ptr [ebp-4]
 005797B8    mov        dl,1
 005797BA    mov        eax,[00578D70]; EReportPrinter
 005797BF    call       Exception.Create; EReportPrinter.Create
 005797C4    call       @RaiseExcept
 005797C9    xor        eax,eax
 005797CB    pop        edx
 005797CC    pop        ecx
 005797CD    pop        ecx
 005797CE    mov        dword ptr fs:[eax],edx
 005797D1    push       5797E6
 005797D6    lea        eax,[ebp-4]
 005797D9    call       @LStrClr
 005797DE    ret
<005797DF    jmp        @HandleFinally
<005797E4    jmp        005797D6
 005797E6    pop        ecx
 005797E7    pop        ebp
 005797E8    ret
*}
//end;

//005797EC
//function sub_005797EC(?:dword; ?:?):?;
//begin
{*
 005797EC    push       ebx
 005797ED    push       esi
 005797EE    push       edi
 005797EF    push       ecx
 005797F0    mov        ebx,edx
 005797F2    cmp        bl,64
>005797F5    jbe        005797F9
 005797F7    mov        bl,64
 005797F9    call       ColorToRGB
 005797FE    mov        esi,eax
 00579800    mov        eax,esi
 00579802    call       004081B0
 00579807    and        eax,0FF
 0057980C    push       eax
 0057980D    mov        eax,0FF
 00579812    pop        edx
 00579813    sub        eax,edx
 00579815    xor        edx,edx
 00579817    mov        dl,bl
 00579819    mov        edi,64
 0057981E    sub        edi,edx
 00579820    imul       edi
 00579822    mov        ecx,64
 00579827    cdq
 00579828    idiv       eax,ecx
 0057982A    push       eax
 0057982B    mov        eax,esi
 0057982D    call       004081B0
 00579832    pop        edx
 00579833    add        dl,al
 00579835    mov        byte ptr [esp],dl
 00579838    mov        eax,esi
 0057983A    call       GetYValue
 0057983F    and        eax,0FF
 00579844    push       eax
 00579845    mov        eax,0FF
 0057984A    pop        edx
 0057984B    sub        eax,edx
 0057984D    xor        edx,edx
 0057984F    mov        dl,bl
 00579851    mov        ecx,64
 00579856    sub        ecx,edx
 00579858    imul       ecx
 0057985A    mov        ecx,64
 0057985F    cdq
 00579860    idiv       eax,ecx
 00579862    push       eax
 00579863    mov        eax,esi
 00579865    call       GetYValue
 0057986A    pop        edx
 0057986B    add        dl,al
 0057986D    mov        byte ptr [esp+1],dl
 00579871    mov        eax,esi
 00579873    call       GetMValue
 00579878    mov        ecx,eax
 0057987A    xor        eax,eax
 0057987C    mov        al,cl
 0057987E    push       eax
 0057987F    mov        eax,0FF
 00579884    pop        edx
 00579885    sub        eax,edx
 00579887    imul       edi
 00579889    mov        ebx,64
 0057988E    cdq
 0057988F    idiv       eax,ebx
 00579891    add        cl,al
 00579893    mov        dl,byte ptr [esp+1]
 00579897    mov        al,byte ptr [esp]
 0057989A    call       RGB
 0057989F    pop        edx
 005798A0    pop        edi
 005798A1    pop        esi
 005798A2    pop        ebx
 005798A3    ret
*}
//end;

//00579AC4
constructor TRpComponent.Create(AOwner:TComponent);
begin
{*
 00579AC4    push       ebx
 00579AC5    push       esi
 00579AC6    test       dl,dl
>00579AC8    je         00579AD2
 00579ACA    add        esp,0FFFFFFF0
 00579ACD    call       @ClassCreate
 00579AD2    mov        ebx,edx
 00579AD4    mov        esi,eax
 00579AD6    xor        edx,edx
 00579AD8    mov        eax,esi
 00579ADA    call       TComponent.Create
 00579ADF    lea        eax,[esi+30]; TRpComponent.?f30:String
 00579AE2    mov        edx,579B10; '5.0.04 (VCL7)'
 00579AE7    call       @LStrAsg
 00579AEC    mov        eax,esi
 00579AEE    test       bl,bl
>00579AF0    je         00579B01
 00579AF2    call       @AfterConstruction
 00579AF7    pop        dword ptr fs:[0]
 00579AFE    add        esp,0C
 00579B01    mov        eax,esi
 00579B03    pop        esi
 00579B04    pop        ebx
 00579B05    ret
*}
end;

//00579B20
procedure TRpComponent.SetVersion(Self:TRpComponent);
begin
{*
 00579B20    push       ebp
 00579B21    mov        ebp,esp
 00579B23    xor        eax,eax
 00579B25    push       ebp
 00579B26    push       579B3F
 00579B2B    push       dword ptr fs:[eax]
 00579B2E    mov        dword ptr fs:[eax],esp
 00579B31    xor        eax,eax
 00579B33    pop        edx
 00579B34    pop        ecx
 00579B35    pop        ecx
 00579B36    mov        dword ptr fs:[eax],edx
 00579B39    push       579B46
 00579B3E    ret
<00579B3F    jmp        @HandleFinally
<00579B44    jmp        00579B3E
 00579B46    pop        ebp
 00579B47    ret
*}
end;

//00579B48
//constructor TRPStringObject.Create(?:TRPStringObject; _Dv__:Boolean);
//begin
{*
 00579B48    push       ebp
 00579B49    mov        ebp,esp
 00579B4B    push       ecx
 00579B4C    push       ebx
 00579B4D    push       esi
 00579B4E    test       dl,dl
>00579B50    je         00579B5A
 00579B52    add        esp,0FFFFFFF0
 00579B55    call       @ClassCreate
 00579B5A    mov        dword ptr [ebp-4],ecx
 00579B5D    mov        ebx,edx
 00579B5F    mov        esi,eax
 00579B61    mov        eax,dword ptr [ebp-4]
 00579B64    call       @LStrAddRef
 00579B69    xor        eax,eax
 00579B6B    push       ebp
 00579B6C    push       579BA1
 00579B71    push       dword ptr fs:[eax]
 00579B74    mov        dword ptr fs:[eax],esp
 00579B77    xor        edx,edx
 00579B79    mov        eax,esi
 00579B7B    call       TObject.Create
 00579B80    lea        eax,[esi+4]; TRPStringObject.?f4:String
 00579B83    mov        edx,dword ptr [ebp-4]
 00579B86    call       @LStrAsg
 00579B8B    xor        eax,eax
 00579B8D    pop        edx
 00579B8E    pop        ecx
 00579B8F    pop        ecx
 00579B90    mov        dword ptr fs:[eax],edx
 00579B93    push       579BA8
 00579B98    lea        eax,[ebp-4]
 00579B9B    call       @LStrClr
 00579BA0    ret
<00579BA1    jmp        @HandleFinally
<00579BA6    jmp        00579B98
 00579BA8    mov        eax,esi
 00579BAA    test       bl,bl
>00579BAC    je         00579BBD
 00579BAE    call       @AfterConstruction
 00579BB3    pop        dword ptr fs:[0]
 00579BBA    add        esp,0C
 00579BBD    mov        eax,esi
 00579BBF    pop        esi
 00579BC0    pop        ebx
 00579BC1    pop        ecx
 00579BC2    pop        ebp
 00579BC3    ret
*}
//end;

//00579BC4
//function sub_00579BC4:?;
//begin
{*
 00579BC4    call       kernel32.GetACP
 00579BC9    cmp        eax,4E3
>00579BCE    jg         00579C03
>00579BD0    je         00579C41
 00579BD2    cmp        eax,3B5
>00579BD7    jg         00579BEE
>00579BD9    je         00579C35
 00579BDB    sub        eax,36A
>00579BE0    je         00579C2C
 00579BE2    sub        eax,3A
>00579BE5    je         00579C2F
 00579BE7    sub        eax,4
>00579BEA    je         00579C32
>00579BEC    jmp        00579C56
 00579BEE    sub        eax,3B6
>00579BF3    je         00579C38
 00579BF5    sub        eax,0FA
>00579BFA    je         00579C3B
 00579BFC    sub        eax,32
>00579BFF    je         00579C3E
>00579C01    jmp        00579C56
 00579C03    add        eax,0FFFFFB1C
 00579C08    cmp        eax,5
>00579C0B    ja         00579C56
 00579C0D    jmp        dword ptr [eax*4+579C14]
 00579C0D    dd         579C44
 00579C0D    dd         579C47
 00579C0D    dd         579C4A
 00579C0D    dd         579C4D
 00579C0D    dd         579C50
 00579C0D    dd         579C53
 00579C2C    mov        al,0DE
 00579C2E    ret
 00579C2F    mov        al,80
 00579C31    ret
 00579C32    mov        al,86
 00579C34    ret
 00579C35    mov        al,81
 00579C37    ret
 00579C38    mov        al,88
 00579C3A    ret
 00579C3B    mov        al,1
 00579C3D    ret
 00579C3E    mov        al,0EE
 00579C40    ret
 00579C41    mov        al,0CC
 00579C43    ret
 00579C44    mov        al,1
 00579C46    ret
 00579C47    mov        al,0A1
 00579C49    ret
 00579C4A    mov        al,0A2
 00579C4C    ret
 00579C4D    mov        al,0B1
 00579C4F    ret
 00579C50    mov        al,0B2
 00579C52    ret
 00579C53    mov        al,0BA
 00579C55    ret
 00579C56    mov        al,1
 00579C58    ret
*}
//end;

//00579C5C
//function sub_00579C5C(?:?):?;
//begin
{*
 00579C5C    cmp        al,1
>00579C5E    jne        00579D5E
 00579C64    call       kernel32.GetUserDefaultLCID
 00579C69    cmp        eax,418
>00579C6E    jg         00579CDF
>00579C70    je         00579D35
 00579C76    add        eax,0FFFFFBFF
 00579C7B    cmp        eax,14
>00579C7E    ja         00579D59
 00579C84    jmp        dword ptr [eax*4+579C8B]
 00579C84    dd         579D11
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D15
 00579C84    dd         579D19
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D1D
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D21
 00579C84    dd         579D25
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D29
 00579C84    dd         579D2D
 00579C84    dd         579D59
 00579C84    dd         579D59
 00579C84    dd         579D31
 00579CDF    cmp        eax,41F
>00579CE4    jg         00579CFC
>00579CE6    je         00579D49
 00579CE8    sub        eax,419
>00579CED    je         00579D39
 00579CEF    dec        eax
>00579CF0    je         00579D3D
 00579CF2    dec        eax
>00579CF3    je         00579D41
 00579CF5    sub        eax,3
>00579CF8    je         00579D45
>00579CFA    jmp        00579D59
 00579CFC    sub        eax,424
>00579D01    je         00579D4D
 00579D03    sub        eax,6
>00579D06    je         00579D51
 00579D08    sub        eax,3DA
>00579D0D    je         00579D55
>00579D0F    jmp        00579D59
 00579D11    mov        al,0B2
>00579D13    jmp        00579D5E
 00579D15    mov        al,88
>00579D17    jmp        00579D5E
 00579D19    mov        al,0EE
>00579D1B    jmp        00579D5E
 00579D1D    mov        al,0A1
>00579D1F    jmp        00579D5E
 00579D21    mov        al,0B1
>00579D23    jmp        00579D5E
 00579D25    mov        al,0EE
>00579D27    jmp        00579D5E
 00579D29    mov        al,80
>00579D2B    jmp        00579D5E
 00579D2D    mov        al,81
>00579D2F    jmp        00579D5E
 00579D31    mov        al,0EE
>00579D33    jmp        00579D5E
 00579D35    mov        al,0EE
>00579D37    jmp        00579D5E
 00579D39    mov        al,0CC
>00579D3B    jmp        00579D5E
 00579D3D    mov        al,0EE
>00579D3F    jmp        00579D5E
 00579D41    mov        al,0EE
>00579D43    jmp        00579D5E
 00579D45    mov        al,0DE
>00579D47    jmp        00579D5E
 00579D49    mov        al,0A2
>00579D4B    jmp        00579D5E
 00579D4D    mov        al,0EE
>00579D4F    jmp        00579D5E
 00579D51    mov        al,0A3
>00579D53    jmp        00579D5E
 00579D55    mov        al,86
>00579D57    jmp        00579D5E
 00579D59    call       00579BC4
 00579D5E    ret
*}
//end;

Initialization
//00579E04
{*
 00579E04    sub        dword ptr ds:[61EFAC],1
>00579E0B    jae        00579E17
 00579E0D    mov        dword ptr ds:[61EFA8],5794E0
 00579E17    ret
*}
Finalization
//00579D60
{*
 00579D60    push       ebp
 00579D61    mov        ebp,esp
 00579D63    xor        eax,eax
 00579D65    push       ebp
 00579D66    push       579DFA
 00579D6B    push       dword ptr fs:[eax]
 00579D6E    mov        dword ptr fs:[eax],esp
 00579D71    inc        dword ptr ds:[61EFAC]
>00579D77    jne        00579DEC
 00579D79    mov        eax,616FC8; gvar_00616FC8:array[5] of String
 00579D7E    mov        ecx,5
 00579D83    mov        edx,dword ptr ds:[4010F8]; String
 00579D89    call       @FinalizeArray
 00579D8E    mov        eax,616FA8; gvar_00616FA8:array[8] of String
 00579D93    mov        ecx,8
 00579D98    mov        edx,dword ptr ds:[4010F8]; String
 00579D9E    call       @FinalizeArray
 00579DA3    mov        eax,616F80; gvar_00616F80:array[10] of String
 00579DA8    mov        ecx,0A
 00579DAD    mov        edx,dword ptr ds:[4010F8]; String
 00579DB3    call       @FinalizeArray
 00579DB8    mov        eax,616F58; gvar_00616F58:array[10] of String
 00579DBD    mov        ecx,0A
 00579DC2    mov        edx,dword ptr ds:[4010F8]; String
 00579DC8    call       @FinalizeArray
 00579DCD    mov        eax,616F54; gvar_00616F54:AnsiString
 00579DD2    call       @LStrClr
 00579DD7    mov        eax,616B24; gvar_00616B24:array[43] of TPaperSizeName
 00579DDC    mov        ecx,2B
 00579DE1    mov        edx,dword ptr ds:[578624]; TPaperSizeName
 00579DE7    call       @FinalizeArray
 00579DEC    xor        eax,eax
 00579DEE    pop        edx
 00579DEF    pop        ecx
 00579DF0    pop        ecx
 00579DF1    mov        dword ptr fs:[eax],edx
 00579DF4    push       579E01
 00579DF9    ret
<00579DFA    jmp        @HandleFinally
<00579DFF    jmp        00579DF9
 00579E01    pop        ebp
 00579E02    ret
*}
end.