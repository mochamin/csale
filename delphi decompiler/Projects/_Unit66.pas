{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit66;

interface

uses
  Classes, Windows, Graphics, SysUtils;

type
  EOleError = class(Exception)
  end;
  EOleSysError = class(EOleError)
  public
    fC:dword;//fC
    //constructor Create(?:EOleSysError; _Dv__:Boolean; ?:?; ?:?);
  end;
  EOleException = class(EOleSysError)
  public
    f10:String;//f10
    f14:String;//f14
    //constructor Create(?:EOleException; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00494070
//procedure sub_00494070(?:?; ?:AnsiString);
//begin
{*
 00494070    push       ebx
 00494071    push       esi
 00494072    mov        ebx,edx
 00494074    mov        esi,eax
 00494076    mov        eax,ebx
 00494078    mov        edx,esi
 0049407A    call       @LStrAsg
 0049407F    mov        eax,dword ptr [ebx]
 00494081    call       AnsiLastChar
 00494086    mov        esi,eax
>00494088    jmp        004940A5
 0049408A    mov        eax,dword ptr [ebx]
 0049408C    call       @LStrToPChar
 00494091    mov        edx,esi
 00494093    sub        edx,eax
 00494095    mov        eax,ebx
 00494097    call       @LStrSetLength
 0049409C    mov        eax,dword ptr [ebx]
 0049409E    call       AnsiLastChar
 004940A3    mov        esi,eax
 004940A5    mov        eax,dword ptr [ebx]
 004940A7    call       @LStrLen
 004940AC    test       eax,eax
>004940AE    jle        004940BA
 004940B0    mov        al,byte ptr [esi]
 004940B2    sub        al,21
<004940B4    jb         0049408A
 004940B6    sub        al,0D
<004940B8    je         0049408A
 004940BA    pop        esi
 004940BB    pop        ebx
 004940BC    ret
*}
//end;

//004940C0
//constructor EOleSysError.Create(?:EOleSysError; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004940C0    push       ebp
 004940C1    mov        ebp,esp
 004940C3    add        esp,0FFFFFFEC
 004940C6    push       ebx
 004940C7    push       esi
 004940C8    push       edi
 004940C9    xor        ebx,ebx
 004940CB    mov        dword ptr [ebp-0C],ebx
 004940CE    mov        dword ptr [ebp-8],ebx
 004940D1    test       dl,dl
>004940D3    je         004940DD
 004940D5    add        esp,0FFFFFFF0
 004940D8    call       @ClassCreate
 004940DD    mov        edi,ecx
 004940DF    mov        byte ptr [ebp-1],dl
 004940E2    mov        ebx,eax
 004940E4    mov        esi,dword ptr [ebp+0C]
 004940E7    xor        eax,eax
 004940E9    push       ebp
 004940EA    push       494167
 004940EF    push       dword ptr fs:[eax]
 004940F2    mov        dword ptr fs:[eax],esp
 004940F5    lea        eax,[ebp-8]
 004940F8    mov        edx,edi
 004940FA    call       @LStrLAsg
 004940FF    cmp        dword ptr [ebp-8],0
>00494103    jne        00494139
 00494105    lea        edx,[ebp-8]
 00494108    mov        eax,esi
 0049410A    call       SysErrorMessage
 0049410F    cmp        dword ptr [ebp-8],0
>00494113    jne        00494139
 00494115    push       0
 00494117    lea        edx,[ebp-0C]
 0049411A    mov        eax,[0061B214]; ^SOleError:TResStringRec
 0049411F    call       LoadResString
 00494124    mov        edx,dword ptr [ebp-0C]
 00494127    mov        dword ptr [ebp-14],esi
 0049412A    mov        byte ptr [ebp-10],0
 0049412E    lea        ecx,[ebp-14]
 00494131    lea        eax,[ebp-8]
 00494134    call       FmtStr
 00494139    mov        eax,dword ptr [ebp+8]
 0049413C    push       eax
 0049413D    mov        ecx,dword ptr [ebp-8]
 00494140    xor        edx,edx
 00494142    mov        eax,ebx
 00494144    call       Exception.CreateHelp
 00494149    mov        dword ptr [ebx+0C],esi; EOleSysError.?fC:dword
 0049414C    xor        eax,eax
 0049414E    pop        edx
 0049414F    pop        ecx
 00494150    pop        ecx
 00494151    mov        dword ptr fs:[eax],edx
 00494154    push       49416E
 00494159    lea        eax,[ebp-0C]
 0049415C    mov        edx,2
 00494161    call       @LStrArrayClr
 00494166    ret
<00494167    jmp        @HandleFinally
<0049416C    jmp        00494159
 0049416E    mov        eax,ebx
 00494170    cmp        byte ptr [ebp-1],0
>00494174    je         00494185
 00494176    call       @AfterConstruction
 0049417B    pop        dword ptr fs:[0]
 00494182    add        esp,0C
 00494185    mov        eax,ebx
 00494187    pop        edi
 00494188    pop        esi
 00494189    pop        ebx
 0049418A    mov        esp,ebp
 0049418C    pop        ebp
 0049418D    ret        8
*}
//end;

//00494190
//constructor EOleException.Create(?:EOleException; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00494190    push       ebp
 00494191    mov        ebp,esp
 00494193    push       0
 00494195    push       ebx
 00494196    push       esi
 00494197    push       edi
 00494198    test       dl,dl
>0049419A    je         004941A4
 0049419C    add        esp,0FFFFFFF0
 0049419F    call       @ClassCreate
 004941A4    mov        esi,ecx
 004941A6    mov        ebx,edx
 004941A8    mov        edi,eax
 004941AA    xor        eax,eax
 004941AC    push       ebp
 004941AD    push       494202
 004941B2    push       dword ptr fs:[eax]
 004941B5    mov        dword ptr fs:[eax],esp
 004941B8    mov        eax,dword ptr [ebp+14]
 004941BB    push       eax
 004941BC    mov        eax,dword ptr [ebp+8]
 004941BF    push       eax
 004941C0    lea        edx,[ebp-4]
 004941C3    mov        eax,esi
 004941C5    call       00494070
 004941CA    mov        ecx,dword ptr [ebp-4]
 004941CD    xor        edx,edx
 004941CF    mov        eax,edi
 004941D1    call       EOleSysError.Create
 004941D6    lea        eax,[edi+10]; EOleException.?f10:String
 004941D9    mov        edx,dword ptr [ebp+10]
 004941DC    call       @LStrAsg
 004941E1    lea        eax,[edi+14]; EOleException.?f14:String
 004941E4    mov        edx,dword ptr [ebp+0C]
 004941E7    call       @LStrAsg
 004941EC    xor        eax,eax
 004941EE    pop        edx
 004941EF    pop        ecx
 004941F0    pop        ecx
 004941F1    mov        dword ptr fs:[eax],edx
 004941F4    push       494209
 004941F9    lea        eax,[ebp-4]
 004941FC    call       @LStrClr
 00494201    ret
<00494202    jmp        @HandleFinally
<00494207    jmp        004941F9
 00494209    mov        eax,edi
 0049420B    test       bl,bl
>0049420D    je         0049421E
 0049420F    call       @AfterConstruction
 00494214    pop        dword ptr fs:[0]
 0049421B    add        esp,0C
 0049421E    mov        eax,edi
 00494220    pop        edi
 00494221    pop        esi
 00494222    pop        ebx
 00494223    pop        ecx
 00494224    pop        ebp
 00494225    ret        10
*}
//end;

//00494228
//procedure sub_00494228(?:HRESULT);
//begin
{*
 00494228    push       ebx
 00494229    mov        ebx,eax
 0049422B    push       ebx
 0049422C    push       0
 0049422E    xor        ecx,ecx
 00494230    mov        dl,1
 00494232    mov        eax,[00493F5C]; EOleSysError
 00494237    call       EOleSysError.Create; EOleSysError.Create
 0049423C    call       @RaiseExcept
 00494241    pop        ebx
 00494242    ret
*}
//end;

//00494244
//procedure sub_00494244(?:HRESULT);
//begin
{*
 00494244    push       ebx
 00494245    mov        ebx,eax
 00494247    mov        eax,ebx
 00494249    call       0041BADC
 0049424E    test       al,al
>00494250    jne        00494259
 00494252    mov        eax,ebx
 00494254    call       00494228
 00494259    pop        ebx
 0049425A    ret
*}
//end;

//0049425C
//procedure sub_0049425C(?:?; ?:?);
//begin
{*
 0049425C    push       ebx
 0049425D    push       esi
 0049425E    mov        esi,edx
 00494260    mov        ebx,eax
 00494262    mov        eax,esi
 00494264    call       @IntfClear
 00494269    push       eax
 0049426A    push       494284; ['{00000000-0000-0000-C000-000000000046}']
 0049426F    push       5
 00494271    push       0
 00494273    push       ebx
 00494274    call       ole32.CoCreateInstance
 00494279    call       00494244
 0049427E    pop        esi
 0049427F    pop        ebx
 00494280    ret
*}
//end;

//00494294
procedure sub_00494294;
begin
{*
 00494294    push       ebx
 00494295    push       494308; 'ole32.dll'
 0049429A    call       kernel32.GetModuleHandleA
 0049429F    mov        ebx,eax
 004942A1    test       ebx,ebx
>004942A3    je         00494305
 004942A5    push       494314; 'CoCreateInstanceEx'
 004942AA    push       ebx
 004942AB    call       kernel32.GetProcAddress
 004942B0    mov        [006153E0],eax; gvar_006153E0:Pointer
 004942B5    push       494328; 'CoInitializeEx'
 004942BA    push       ebx
 004942BB    call       kernel32.GetProcAddress
 004942C0    mov        [006153E4],eax; gvar_006153E4:Pointer
 004942C5    push       494338; 'CoAddRefServerProcess'
 004942CA    push       ebx
 004942CB    call       kernel32.GetProcAddress
 004942D0    mov        [006153E8],eax; gvar_006153E8:Pointer
 004942D5    push       494350; 'CoReleaseServerProcess'
 004942DA    push       ebx
 004942DB    call       kernel32.GetProcAddress
 004942E0    mov        [006153EC],eax; gvar_006153EC:Pointer
 004942E5    push       494368; 'CoResumeClassObjects'
 004942EA    push       ebx
 004942EB    call       kernel32.GetProcAddress
 004942F0    mov        [006153F0],eax; gvar_006153F0:Pointer
 004942F5    push       494380; 'CoSuspendClassObjects'
 004942FA    push       ebx
 004942FB    call       kernel32.GetProcAddress
 00494300    mov        [006153F4],eax; gvar_006153F4:Pointer
 00494305    pop        ebx
 00494306    ret
*}
end;

//00494398
//procedure sub_00494398(?:?; ?:?);
//begin
{*
 00494398    push       ebp
 00494399    mov        ebp,esp
 0049439B    xor        ecx,ecx
 0049439D    push       ecx
 0049439E    push       ecx
 0049439F    push       ecx
 004943A0    push       ecx
 004943A1    push       ecx
 004943A2    push       ecx
 004943A3    push       ecx
 004943A4    push       ecx
 004943A5    push       ebx
 004943A6    push       esi
 004943A7    mov        esi,edx
 004943A9    mov        ebx,eax
 004943AB    xor        eax,eax
 004943AD    push       ebp
 004943AE    push       494488
 004943B3    push       dword ptr fs:[eax]
 004943B6    mov        dword ptr fs:[eax],esp
 004943B9    xor        eax,eax
 004943BB    mov        dword ptr [ebp-14],eax
 004943BE    lea        eax,[ebp-4]
 004943C1    call       @IntfClear
 004943C6    push       eax
 004943C7    push       0
 004943C9    call       oleaut32.GetErrorInfo
 004943CE    test       eax,eax
>004943D0    jne        00494415
 004943D2    lea        eax,[ebp-8]
 004943D5    call       @WStrClr
 004943DA    push       eax
 004943DB    mov        eax,dword ptr [ebp-4]
 004943DE    push       eax
 004943DF    mov        eax,dword ptr [eax]
 004943E1    call       dword ptr [eax+10]
 004943E4    lea        eax,[ebp-0C]
 004943E7    call       @WStrClr
 004943EC    push       eax
 004943ED    mov        eax,dword ptr [ebp-4]
 004943F0    push       eax
 004943F1    mov        eax,dword ptr [eax]
 004943F3    call       dword ptr [eax+14]
 004943F6    lea        eax,[ebp-10]
 004943F9    call       @WStrClr
 004943FE    push       eax
 004943FF    mov        eax,dword ptr [ebp-4]
 00494402    push       eax
 00494403    mov        eax,dword ptr [eax]
 00494405    call       dword ptr [eax+18]
 00494408    lea        eax,[ebp-14]
 0049440B    push       eax
 0049440C    mov        eax,dword ptr [ebp-4]
 0049440F    push       eax
 00494410    mov        eax,dword ptr [eax]
 00494412    call       dword ptr [eax+1C]
 00494415    push       esi
 00494416    push       ebx
 00494417    lea        eax,[ebp-18]
 0049441A    mov        edx,dword ptr [ebp-8]
 0049441D    call       @LStrFromWStr
 00494422    mov        eax,dword ptr [ebp-18]
 00494425    push       eax
 00494426    lea        eax,[ebp-1C]
 00494429    mov        edx,dword ptr [ebp-10]
 0049442C    call       @LStrFromWStr
 00494431    mov        eax,dword ptr [ebp-1C]
 00494434    push       eax
 00494435    mov        eax,dword ptr [ebp-14]
 00494438    push       eax
 00494439    lea        eax,[ebp-20]
 0049443C    mov        edx,dword ptr [ebp-0C]
 0049443F    call       @LStrFromWStr
 00494444    mov        ecx,dword ptr [ebp-20]
 00494447    mov        dl,1
 00494449    mov        eax,[00493FB8]; EOleException
 0049444E    call       EOleException.Create; EOleException.Create
<00494453    jmp        @RaiseExcept
 00494458    xor        eax,eax
 0049445A    pop        edx
 0049445B    pop        ecx
 0049445C    pop        ecx
 0049445D    mov        dword ptr fs:[eax],edx
 00494460    push       49448F
 00494465    lea        eax,[ebp-20]
 00494468    mov        edx,3
 0049446D    call       @LStrArrayClr
 00494472    lea        eax,[ebp-10]
 00494475    mov        edx,3
 0049447A    call       @WStrArrayClr
 0049447F    lea        eax,[ebp-4]
 00494482    call       @IntfClear
 00494487    ret
<00494488    jmp        @HandleFinally
<0049448D    jmp        00494465
 0049448F    pop        esi
 00494490    pop        ebx
 00494491    mov        esp,ebp
 00494493    pop        ebp
 00494494    ret
*}
//end;

//00494498
//procedure sub_00494498(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00494498    push       ebp
 00494499    mov        ebp,esp
 0049449B    add        esp,0FFFFF9B0
 004944A1    push       ebx
 004944A2    push       esi
 004944A3    push       edi
 004944A4    mov        dword ptr [ebp-8],ecx
 004944A7    mov        esi,edx
 004944A9    mov        dword ptr [ebp-4],eax
 004944AC    lea        eax,[ebp-50]
 004944AF    mov        edx,dword ptr ds:[41BA70]; tagEXCEPINFO
 004944B5    call       @InitializeRecord
 004944BA    xor        eax,eax
 004944BC    push       ebp
 004944BD    push       4947CB
 004944C2    push       dword ptr fs:[eax]
 004944C5    mov        dword ptr fs:[eax],esp
 004944C8    xor        eax,eax
 004944CA    mov        dword ptr [ebp-10],eax
 004944CD    xor        ecx,ecx
 004944CF    push       ebp
 004944D0    push       4947A8
 004944D5    push       dword ptr fs:[ecx]
 004944D8    mov        dword ptr fs:[ecx],esp
 004944DB    movzx      edi,byte ptr [esi+1]
 004944DF    cmp        edi,40
>004944E2    jle        004944FB
 004944E4    mov        ecx,dword ptr ds:[61B628]; ^STooManyParams:TResStringRec
 004944EA    mov        dl,1
 004944EC    mov        eax,[00493FB8]; EOleException
 004944F1    call       Exception.CreateRes; EOleException.Create
 004944F6    call       @RaiseExcept
 004944FB    test       edi,edi
>004944FD    je         004946C6
 00494503    mov        eax,dword ptr [ebp+0C]
 00494506    mov        dword ptr [ebp-14],eax
 00494509    mov        eax,edi
 0049450B    add        eax,eax
 0049450D    lea        eax,[ebp+eax*8-650]
 00494514    mov        dword ptr [ebp-18],eax
 00494517    xor        ebx,ebx
 00494519    sub        dword ptr [ebp-18],10
 0049451D    mov        al,byte ptr [esi+ebx+3]
 00494521    mov        edx,eax
 00494523    and        dl,7F
 00494526    and        edx,0FF
 0049452C    mov        dword ptr [ebp-0C],edx
 0049452F    and        al,80
 00494531    cmp        dword ptr [ebp-0C],0A
>00494535    jne        0049454F
 00494537    mov        eax,dword ptr [ebp-18]
 0049453A    mov        dword ptr [eax],0A
 00494540    mov        eax,dword ptr [ebp-18]
 00494543    mov        dword ptr [eax+8],80020004
>0049454A    jmp        004946BD
 0049454F    cmp        dword ptr [ebp-0C],48
>00494553    jne        004945C9
 00494555    mov        edx,dword ptr [ebp-10]
 00494558    lea        edx,[ebp+edx*8-250]
 0049455F    mov        dword ptr [ebp-1C],edx
 00494562    test       al,al
>00494564    je         00494596
 00494566    mov        eax,dword ptr [ebp-14]
 00494569    mov        eax,dword ptr [eax]
 0049456B    mov        eax,dword ptr [eax]
 0049456D    call       StringToOleStr
 00494572    mov        edx,dword ptr [ebp-1C]
 00494575    mov        dword ptr [edx],eax
 00494577    mov        eax,dword ptr [ebp-14]
 0049457A    mov        eax,dword ptr [eax]
 0049457C    mov        edx,dword ptr [ebp-1C]
 0049457F    mov        dword ptr [edx+4],eax
 00494582    mov        eax,dword ptr [ebp-18]
 00494585    mov        dword ptr [eax],4008
 0049458B    mov        eax,dword ptr [ebp-1C]
 0049458E    mov        edx,dword ptr [ebp-18]
 00494591    mov        dword ptr [edx+8],eax
>00494594    jmp        004945C1
 00494596    mov        eax,dword ptr [ebp-14]
 00494599    mov        eax,dword ptr [eax]
 0049459B    call       StringToOleStr
 004945A0    mov        edx,dword ptr [ebp-1C]
 004945A3    mov        dword ptr [edx],eax
 004945A5    mov        eax,dword ptr [ebp-1C]
 004945A8    xor        edx,edx
 004945AA    mov        dword ptr [eax+4],edx
 004945AD    mov        eax,dword ptr [ebp-18]
 004945B0    mov        dword ptr [eax],8
 004945B6    mov        eax,dword ptr [ebp-1C]
 004945B9    mov        eax,dword ptr [eax]
 004945BB    mov        edx,dword ptr [ebp-18]
 004945BE    mov        dword ptr [edx+8],eax
 004945C1    inc        dword ptr [ebp-10]
>004945C4    jmp        004946B9
 004945C9    test       al,al
>004945CB    je         00494612
 004945CD    cmp        dword ptr [ebp-0C],0C
>004945D1    jne        004945F5
 004945D3    mov        eax,dword ptr [ebp-14]
 004945D6    mov        eax,dword ptr [eax]
 004945D8    cmp        word ptr [eax],100
>004945DD    jne        004945F5
 004945DF    mov        eax,dword ptr [ebp-14]
 004945E2    mov        eax,dword ptr [eax]
 004945E4    mov        edx,eax
 004945E6    mov        eax,dword ptr [ebp-14]
 004945E9    mov        eax,dword ptr [eax]
 004945EB    mov        ecx,8
 004945F0    call       @VarCast
 004945F5    mov        eax,dword ptr [ebp-0C]
 004945F8    or         eax,4000
 004945FD    mov        edx,dword ptr [ebp-18]
 00494600    mov        dword ptr [edx],eax
 00494602    mov        eax,dword ptr [ebp-14]
 00494605    mov        eax,dword ptr [eax]
 00494607    mov        edx,dword ptr [ebp-18]
 0049460A    mov        dword ptr [edx+8],eax
>0049460D    jmp        004946B9
 00494612    cmp        dword ptr [ebp-0C],0C
>00494616    jne        0049468B
 00494618    mov        eax,dword ptr [ebp-14]
 0049461B    cmp        word ptr [eax],100
>00494620    jne        00494660
 00494622    mov        eax,dword ptr [ebp-10]
 00494625    lea        eax,[ebp+eax*8-250]
 0049462C    mov        dword ptr [ebp-20],eax
 0049462F    mov        eax,dword ptr [ebp-14]
 00494632    mov        eax,dword ptr [eax+8]
 00494635    call       StringToOleStr
 0049463A    mov        edx,dword ptr [ebp-20]
 0049463D    mov        dword ptr [edx],eax
 0049463F    mov        eax,dword ptr [ebp-20]
 00494642    xor        edx,edx
 00494644    mov        dword ptr [eax+4],edx
 00494647    mov        eax,dword ptr [ebp-18]
 0049464A    mov        dword ptr [eax],8
 00494650    mov        eax,dword ptr [ebp-20]
 00494653    mov        eax,dword ptr [eax]
 00494655    mov        edx,dword ptr [ebp-18]
 00494658    mov        dword ptr [edx+8],eax
 0049465B    inc        dword ptr [ebp-10]
>0049465E    jmp        004946B9
 00494660    mov        eax,dword ptr [ebp-14]
 00494663    mov        edx,dword ptr [eax]
 00494665    mov        ecx,dword ptr [ebp-18]
 00494668    mov        dword ptr [ecx],edx
 0049466A    mov        edx,dword ptr [eax+4]
 0049466D    mov        ecx,dword ptr [ebp-18]
 00494670    mov        dword ptr [ecx+4],edx
 00494673    mov        edx,dword ptr [eax+8]
 00494676    mov        ecx,dword ptr [ebp-18]
 00494679    mov        dword ptr [ecx+8],edx
 0049467C    mov        eax,dword ptr [eax+0C]
 0049467F    mov        edx,dword ptr [ebp-18]
 00494682    mov        dword ptr [edx+0C],eax
 00494685    add        dword ptr [ebp-14],0C
>00494689    jmp        004946B9
 0049468B    mov        eax,dword ptr [ebp-18]
 0049468E    mov        edx,dword ptr [ebp-0C]
 00494691    mov        dword ptr [eax],edx
 00494693    mov        eax,dword ptr [ebp-14]
 00494696    mov        eax,dword ptr [eax]
 00494698    mov        edx,dword ptr [ebp-18]
 0049469B    mov        dword ptr [edx+8],eax
 0049469E    cmp        dword ptr [ebp-0C],5
>004946A2    jl         004946B9
 004946A4    cmp        dword ptr [ebp-0C],7
>004946A8    jg         004946B9
 004946AA    add        dword ptr [ebp-14],4
 004946AE    mov        eax,dword ptr [ebp-14]
 004946B1    mov        eax,dword ptr [eax]
 004946B3    mov        edx,dword ptr [ebp-18]
 004946B6    mov        dword ptr [edx+0C],eax
 004946B9    add        dword ptr [ebp-14],4
 004946BD    inc        ebx
 004946BE    cmp        edi,ebx
<004946C0    jne        00494519
 004946C6    lea        eax,[ebp-650]
 004946CC    mov        dword ptr [ebp-30],eax
 004946CF    mov        eax,dword ptr [ebp-8]
 004946D2    add        eax,4
 004946D5    mov        dword ptr [ebp-2C],eax
 004946D8    mov        dword ptr [ebp-28],edi
 004946DB    xor        eax,eax
 004946DD    mov        al,byte ptr [esi+2]
 004946E0    mov        dword ptr [ebp-24],eax
 004946E3    mov        eax,dword ptr [ebp-8]
 004946E6    mov        edx,dword ptr [eax]
 004946E8    xor        eax,eax
 004946EA    mov        al,byte ptr [esi]
 004946EC    cmp        eax,4
>004946EF    jne        00494719
 004946F1    mov        ecx,dword ptr [ebp-650]
 004946F7    and        ecx,0FFF
 004946FD    cmp        ecx,9
>00494700    jne        00494707
 00494702    mov        eax,8
 00494707    mov        ecx,dword ptr [ebp-8]
 0049470A    mov        dword ptr [ecx],0FFFFFFFD
 00494710    sub        dword ptr [ebp-2C],4
 00494714    inc        dword ptr [ebp-24]
>00494717    jmp        0049472D
 00494719    cmp        eax,1
>0049471C    jne        0049472D
 0049471E    test       edi,edi
>00494720    jne        0049472D
 00494722    cmp        dword ptr [ebp+8],0
>00494726    je         0049472D
 00494728    mov        eax,3
 0049472D    push       0
 0049472F    lea        ecx,[ebp-50]
 00494732    push       ecx
 00494733    mov        ecx,dword ptr [ebp+8]
 00494736    push       ecx
 00494737    lea        ecx,[ebp-30]
 0049473A    push       ecx
 0049473B    push       eax
 0049473C    push       0
 0049473E    mov        eax,[0061B088]
 00494743    push       eax
 00494744    push       edx
 00494745    mov        eax,dword ptr [ebp-4]
 00494748    push       eax
 00494749    mov        eax,dword ptr [eax]
 0049474B    call       dword ptr [eax+18]
 0049474E    test       eax,eax
>00494750    je         0049475A
 00494752    lea        edx,[ebp-50]
 00494755    call       00494A78
 0049475A    mov        ebx,dword ptr [ebp-10]
 0049475D    test       ebx,ebx
>0049475F    je         00494781
 00494761    dec        ebx
 00494762    lea        eax,[ebp+ebx*8-250]
 00494769    mov        edx,dword ptr [eax+4]
 0049476C    test       edx,edx
>0049476E    je         0049477D
 00494770    mov        ecx,dword ptr [eax]
 00494772    mov        eax,edx
 00494774    mov        edx,eax
 00494776    mov        eax,ecx
 00494778    call       OleStrToStrVar
 0049477D    test       ebx,ebx
<0049477F    jne        00494761
 00494781    xor        eax,eax
 00494783    pop        edx
 00494784    pop        ecx
 00494785    pop        ecx
 00494786    mov        dword ptr fs:[eax],edx
 00494789    push       4947AF
 0049478E    mov        ebx,dword ptr [ebp-10]
 00494791    test       ebx,ebx
>00494793    je         004947A7
 00494795    dec        ebx
 00494796    mov        eax,dword ptr [ebp+ebx*8-250]
 0049479D    push       eax
 0049479E    call       oleaut32.SysFreeString
 004947A3    test       ebx,ebx
<004947A5    jne        00494795
 004947A7    ret
<004947A8    jmp        @HandleFinally
<004947AD    jmp        0049478E
 004947AF    xor        eax,eax
 004947B1    pop        edx
 004947B2    pop        ecx
 004947B3    pop        ecx
 004947B4    mov        dword ptr fs:[eax],edx
 004947B7    push       4947D2
 004947BC    lea        eax,[ebp-50]
 004947BF    mov        edx,dword ptr ds:[41BA70]; tagEXCEPINFO
 004947C5    call       @FinalizeRecord
 004947CA    ret
<004947CB    jmp        @HandleFinally
<004947D0    jmp        004947BC
 004947D2    pop        edi
 004947D3    pop        esi
 004947D4    pop        ebx
 004947D5    mov        esp,ebp
 004947D7    pop        ebp
 004947D8    ret        8
*}
//end;

//004947DC
//procedure sub_004947DC(?:?);
//begin
{*
 004947DC    push       ebp
 004947DD    mov        ebp,esp
 004947DF    add        esp,0FFFFFFF8
 004947E2    mov        eax,dword ptr [ebp+8]
 004947E5    mov        eax,dword ptr [eax-4]
 004947E8    mov        dword ptr [ebp-8],eax
 004947EB    mov        byte ptr [ebp-4],6
 004947EF    lea        eax,[ebp-8]
 004947F2    push       eax
 004947F3    push       0
 004947F5    mov        ecx,dword ptr ds:[61BF24]; ^SNoMethod:TResStringRec
 004947FB    mov        dl,1
 004947FD    mov        eax,[00493F04]; EOleError
 00494802    call       Exception.CreateResFmt; EOleError.Create
 00494807    call       @RaiseExcept
 0049480C    pop        ecx
 0049480D    pop        ecx
 0049480E    pop        ebp
 0049480F    ret
*}
//end;

//00494810
//procedure sub_00494810(?:?; ?:Integer; ?:?; ?:?);
//begin
{*
 00494810    push       ebp
 00494811    mov        ebp,esp
 00494813    add        esp,0FFFFFFE4
 00494816    push       ebx
 00494817    push       esi
 00494818    push       edi
 00494819    mov        dword ptr [ebp-0C],ecx
 0049481C    mov        dword ptr [ebp-4],edx
 0049481F    mov        dword ptr [ebp-1C],eax
 00494822    mov        ebx,dword ptr [ebp-4]
 00494825    xor        edi,edi
 00494827    mov        dword ptr [ebp-8],esp
 0049482A    mov        eax,dword ptr [ebp-0C]
 0049482D    inc        eax
 0049482E    shl        eax,2
 00494831    sub        esp,eax
 00494833    lea        eax,[ebp-10]
 00494836    mov        dword ptr [eax],esp
 00494838    mov        eax,ebx
 0049483A    call       StrLen
 0049483F    mov        esi,eax
 00494841    push       0
 00494843    push       0
 00494845    push       esi
 00494846    push       ebx
 00494847    push       0
 00494849    push       0
 0049484B    call       kernel32.MultiByteToWideChar
 00494850    inc        eax
 00494851    mov        dword ptr [ebp-14],eax
 00494854    mov        eax,dword ptr [ebp-14]
 00494857    add        eax,eax
 00494859    add        eax,3
 0049485C    and        eax,0FFFFFFFC
 0049485F    sub        esp,eax
 00494861    lea        eax,[ebp-18]
 00494864    mov        dword ptr [eax],esp
 00494866    test       edi,edi
>00494868    jne        00494874
 0049486A    mov        eax,dword ptr [ebp-10]
 0049486D    mov        edx,dword ptr [ebp-18]
 00494870    mov        dword ptr [eax],edx
>00494872    jmp        00494882
 00494874    mov        eax,dword ptr [ebp-0C]
 00494877    sub        eax,edi
 00494879    mov        edx,dword ptr [ebp-10]
 0049487C    mov        ecx,dword ptr [ebp-18]
 0049487F    mov        dword ptr [edx+eax*4],ecx
 00494882    mov        eax,dword ptr [ebp-14]
 00494885    push       eax
 00494886    mov        eax,dword ptr [ebp-18]
 00494889    push       eax
 0049488A    push       esi
 0049488B    push       ebx
 0049488C    push       0
 0049488E    push       0
 00494890    call       kernel32.MultiByteToWideChar
 00494895    mov        eax,dword ptr [ebp-18]
 00494898    mov        edx,dword ptr [ebp-14]
 0049489B    mov        word ptr [eax+edx*2-2],0
 004948A2    inc        esi
 004948A3    add        ebx,esi
 004948A5    inc        edi
 004948A6    cmp        edi,dword ptr [ebp-0C]
<004948A9    jne        00494838
 004948AB    mov        eax,dword ptr [ebp+8]
 004948AE    push       eax
 004948AF    call       kernel32.GetThreadLocale
 004948B4    push       eax
 004948B5    mov        eax,dword ptr [ebp-0C]
 004948B8    push       eax
 004948B9    mov        eax,dword ptr [ebp-10]
 004948BC    push       eax
 004948BD    mov        eax,[0061B088]
 004948C2    push       eax
 004948C3    mov        eax,dword ptr [ebp-1C]
 004948C6    push       eax
 004948C7    mov        eax,dword ptr [eax]
 004948C9    call       dword ptr [eax+14]
 004948CC    cmp        eax,80020006
>004948D1    jne        004948DC
 004948D3    push       ebp
 004948D4    call       004947DC
 004948D9    pop        ecx
>004948DA    jmp        004948E1
 004948DC    call       00494244
 004948E1    mov        esp,dword ptr [ebp-8]
 004948E4    pop        edi
 004948E5    pop        esi
 004948E6    pop        ebx
 004948E7    mov        esp,ebp
 004948E9    pop        ebp
 004948EA    ret        4
*}
//end;

//004948F0
procedure sub_004948F0;
begin
{*
 004948F0    mov        ecx,dword ptr ds:[61C290]; ^SVarNotObject:TResStringRec
 004948F6    mov        dl,1
 004948F8    mov        eax,[00493F04]; EOleError
 004948FD    call       Exception.CreateRes; EOleError.Create
 00494902    call       @RaiseExcept
 00494907    ret
*}
end;

//00494908
//procedure sub_00494908(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00494908    push       ebp
 00494909    mov        ebp,esp
 0049490B    add        esp,0FFFFFEFC
 00494911    push       ebx
 00494912    push       esi
 00494913    mov        ebx,dword ptr [ebp+10]
 00494916    mov        eax,dword ptr [ebp+0C]
 00494919    mov        esi,dword ptr [ebp+8]
 0049491C    cmp        byte ptr [ebx+1],40
>00494920    jbe        00494939
 00494922    mov        ecx,dword ptr ds:[61B628]; ^STooManyParams:TResStringRec
 00494928    mov        dl,1
 0049492A    mov        eax,[00493F04]; EOleError
 0049492F    call       Exception.CreateRes; EOleError.Create
 00494934    call       @RaiseExcept
 00494939    mov        dx,word ptr [eax]
 0049493C    cmp        dx,9
>00494940    jne        0049494A
 00494942    mov        eax,dword ptr [eax+8]
 00494945    mov        dword ptr [ebp-4],eax
>00494948    jmp        00494960
 0049494A    cmp        dx,4009
>0049494F    jne        0049495B
 00494951    mov        eax,dword ptr [eax+8]
 00494954    mov        eax,dword ptr [eax]
 00494956    mov        dword ptr [ebp-4],eax
>00494959    jmp        00494960
 0049495B    call       004948F0
 00494960    lea        eax,[ebp-104]
 00494966    push       eax
 00494967    xor        ecx,ecx
 00494969    mov        cl,byte ptr [ebx+2]
 0049496C    inc        ecx
 0049496D    xor        eax,eax
 0049496F    mov        al,byte ptr [ebx+1]
 00494972    lea        edx,[ebx+eax+3]
 00494976    mov        eax,dword ptr [ebp-4]
 00494979    call       00494810
 0049497E    test       esi,esi
>00494980    je         00494989
 00494982    mov        eax,esi
 00494984    call       @VarClear
 00494989    mov        eax,dword ptr [ebp+14]
 0049498C    push       eax
 0049498D    push       esi
 0049498E    lea        ecx,[ebp-104]
 00494994    mov        edx,ebx
 00494996    mov        eax,dword ptr [ebp-4]
 00494999    call       00494498
 0049499E    pop        esi
 0049499F    pop        ebx
 004949A0    mov        esp,ebp
 004949A2    pop        ebp
 004949A3    ret
*}
//end;

//004949A4
//procedure sub_004949A4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004949A4    push       ebp
 004949A5    mov        ebp,esp
 004949A7    push       0
 004949A9    push       0
 004949AB    push       0
 004949AD    push       0
 004949AF    push       ebx
 004949B0    push       esi
 004949B1    mov        dword ptr [ebp-4],ecx
 004949B4    mov        ebx,edx
 004949B6    xor        edx,edx
 004949B8    push       ebp
 004949B9    push       494A69
 004949BE    push       dword ptr fs:[edx]
 004949C1    mov        dword ptr fs:[edx],esp
 004949C4    cmp        eax,80020009
>004949C9    jne        00494A22
 004949CB    mov        eax,dword ptr [ebx+1C]
 004949CE    push       eax
 004949CF    lea        eax,[ebp-8]
 004949D2    mov        edx,dword ptr [ebx+4]
 004949D5    call       @LStrFromWStr
 004949DA    mov        eax,dword ptr [ebp-8]
 004949DD    push       eax
 004949DE    lea        eax,[ebp-0C]
 004949E1    mov        edx,dword ptr [ebx+0C]
 004949E4    call       @LStrFromWStr
 004949E9    mov        eax,dword ptr [ebp-0C]
 004949EC    push       eax
 004949ED    mov        eax,dword ptr [ebx+10]
 004949F0    push       eax
 004949F1    lea        eax,[ebp-10]
 004949F4    mov        edx,dword ptr [ebx+8]
 004949F7    call       @LStrFromWStr
 004949FC    mov        ecx,dword ptr [ebp-10]
 004949FF    mov        dl,1
 00494A01    mov        eax,[00493FB8]; EOleException
 00494A06    call       EOleException.Create; EOleException.Create
 00494A0B    mov        esi,eax
 00494A0D    cmp        byte ptr [ebp+8],0
>00494A11    je         00494A35
 00494A13    mov        eax,ebx
 00494A15    mov        edx,dword ptr ds:[41BA70]; tagEXCEPINFO
 00494A1B    call       @Finalize
>00494A20    jmp        00494A35
 00494A22    push       eax
 00494A23    push       0
 00494A25    xor        ecx,ecx
 00494A27    mov        dl,1
 00494A29    mov        eax,[00493F5C]; EOleSysError
 00494A2E    call       EOleSysError.Create; EOleSysError.Create
 00494A33    mov        esi,eax
 00494A35    cmp        dword ptr [ebp-4],0
>00494A39    je         00494A47
 00494A3B    push       dword ptr [ebp-4]
 00494A3E    mov        eax,esi
<00494A40    jmp        @RaiseExcept
>00494A45    jmp        00494A4E
 00494A47    mov        eax,esi
 00494A49    call       @RaiseExcept
 00494A4E    xor        eax,eax
 00494A50    pop        edx
 00494A51    pop        ecx
 00494A52    pop        ecx
 00494A53    mov        dword ptr fs:[eax],edx
 00494A56    push       494A70
 00494A5B    lea        eax,[ebp-10]
 00494A5E    mov        edx,3
 00494A63    call       @LStrArrayClr
 00494A68    ret
<00494A69    jmp        @HandleFinally
<00494A6E    jmp        00494A5B
 00494A70    pop        esi
 00494A71    pop        ebx
 00494A72    mov        esp,ebp
 00494A74    pop        ebp
 00494A75    ret        4
*}
//end;

//00494A78
procedure sub_00494A78;
begin
{*
 00494A78    push       0
 00494A7A    xor        ecx,ecx
 00494A7C    call       004949A4
 00494A81    ret
*}
end;

//00494A84
procedure sub_00494A84;
begin
{*
 00494A84    xor        ecx,ecx
 00494A86    mov        edx,20
 00494A8B    call       @FillChar
 00494A90    ret
*}
end;

//00494A94
//procedure sub_00494A94(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00494A94    push       ebp
 00494A95    mov        ebp,esp
 00494A97    add        esp,0FFFFFFD0
 00494A9A    push       ebx
 00494A9B    push       esi
 00494A9C    push       edi
 00494A9D    mov        ebx,dword ptr [ebp+0C]
 00494AA0    xor        edx,edx
 00494AA2    mov        edi,esp
 00494AA4    movzx      ecx,byte ptr [ebx+1]
 00494AA8    mov        dword ptr [ebp-8],ecx
 00494AAB    test       ecx,ecx
>00494AAD    je         00494AFA
 00494AAF    add        ebx,3
 00494AB2    mov        esi,dword ptr [ebp+18]
 00494AB5    movzx      eax,byte ptr [ebx]
 00494AB8    test       al,80
>00494ABA    jne        00494AE4
 00494ABC    cmp        al,0C
>00494ABE    je         00494AD4
 00494AC0    cmp        al,5
>00494AC2    jb         00494AEB
 00494AC4    cmp        al,7
>00494AC6    ja         00494AEB
 00494AC8    push       dword ptr [esi+4]
 00494ACB    push       dword ptr [esi]
 00494ACD    push       edx
 00494ACE    push       eax
 00494ACF    add        esi,8
>00494AD2    jmp        00494AF3
 00494AD4    push       dword ptr [esi+0C]
 00494AD7    push       dword ptr [esi+8]
 00494ADA    push       dword ptr [esi+4]
 00494ADD    push       dword ptr [esi]
 00494ADF    add        esi,10
>00494AE2    jmp        00494AF3
 00494AE4    and        al,7F
 00494AE6    or         eax,4000
 00494AEB    push       edx
 00494AEC    push       dword ptr [esi]
 00494AEE    push       edx
 00494AEF    push       eax
 00494AF0    add        esi,4
 00494AF3    inc        ebx
 00494AF4    dec        ecx
<00494AF5    jne        00494AB5
 00494AF7    mov        ebx,dword ptr [ebp+0C]
 00494AFA    mov        dword ptr [ebp-10],esp
 00494AFD    movzx      eax,byte ptr [ebx+2]
 00494B01    mov        dword ptr [ebp-4],eax
 00494B04    test       eax,eax
>00494B06    je         00494B12
 00494B08    mov        esi,dword ptr [ebp+14]
 00494B0B    push       dword ptr [esi+eax*4-4]
 00494B0F    dec        eax
<00494B10    jne        00494B0B
 00494B12    movzx      ecx,byte ptr [ebx]
 00494B15    cmp        ecx,4
>00494B18    jne        00494B30
 00494B1A    push       0FD
 00494B1C    inc        dword ptr [ebp-4]
 00494B1F    cmp        byte ptr [ebx+3],9
>00494B23    je         00494B2B
 00494B25    cmp        byte ptr [ebx+3],0D
>00494B29    jne        00494B30
 00494B2B    mov        ecx,8
 00494B30    mov        dword ptr [ebp-0C],esp
 00494B33    push       edx
 00494B34    lea        eax,[ebp-30]
 00494B37    push       eax
 00494B38    push       ecx
 00494B39    push       edx
 00494B3A    call       00494A84
 00494B3F    pop        edx
 00494B40    pop        ecx
 00494B41    push       dword ptr [ebp+1C]
 00494B44    lea        eax,[ebp-10]
 00494B47    push       eax
 00494B48    push       ecx
 00494B49    push       edx
 00494B4A    push       614640
 00494B4F    push       dword ptr [ebp+10]
 00494B52    mov        eax,dword ptr [ebp+8]
 00494B55    push       eax
 00494B56    mov        eax,dword ptr [eax]
 00494B58    call       dword ptr [eax+18]
 00494B5B    test       eax,eax
>00494B5D    je         00494B6D
 00494B5F    lea        edx,[ebp-30]
 00494B62    mov        cl,1
 00494B64    push       ecx
 00494B65    mov        ecx,dword ptr [ebp+4]
<00494B68    jmp        004949A4
 00494B6D    mov        esp,edi
 00494B6F    pop        edi
 00494B70    pop        esi
 00494B71    pop        ebx
 00494B72    mov        esp,ebp
 00494B74    pop        ebp
 00494B75    ret        18
*}
//end;

//00494B78
//procedure sub_00494B78(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00494B78    push       ebp
 00494B79    mov        ebp,esp
 00494B7B    push       ebx
 00494B7C    mov        ebx,dword ptr [ebp+10]
 00494B7F    xor        eax,eax
 00494B81    push       eax
 00494B82    push       eax
 00494B83    push       eax
 00494B84    push       eax
 00494B85    mov        eax,esp
 00494B87    push       eax
 00494B88    lea        eax,[ebp+14]
 00494B8B    push       eax
 00494B8C    push       eax
 00494B8D    push       dword ptr [ebx]
 00494B8F    lea        eax,[ebx+5]
 00494B92    push       eax
 00494B93    push       dword ptr [ebp+0C]
 00494B96    call       00494A94
 00494B9B    movzx      eax,byte ptr [ebx+4]
 00494B9F    mov        ebx,dword ptr [ebp+8]
 00494BA2    jmp        dword ptr [eax*4+494BA9]
 00494BA2    dd         494C4E
 00494BA2    dd         494C4E
 00494BA2    dd         494C4A
 00494BA2    dd         494C4A
 00494BA2    dd         494BED
 00494BA2    dd         494BF3
 00494BA2    dd         494BF9
 00494BA2    dd         494BF3
 00494BA2    dd         494BFF
 00494BA2    dd         494C13
 00494BA2    dd         494C4E
 00494BA2    dd         494C4A
 00494BA2    dd         494C27
 00494BA2    dd         494C13
 00494BA2    dd         494C4E
 00494BA2    dd         494C4E
 00494BA2    dd         494C4A
 00494BED    fld        dword ptr [esp+8]
>00494BF1    jmp        00494C4E
 00494BF3    fld        qword ptr [esp+8]
>00494BF7    jmp        00494C4E
 00494BF9    fild       qword ptr [esp+8]
>00494BFD    jmp        00494C4E
 00494BFF    mov        eax,dword ptr [ebx]
 00494C01    test       eax,eax
>00494C03    je         00494C0B
 00494C05    push       eax
 00494C06    call       oleaut32.SysFreeString
 00494C0B    mov        eax,dword ptr [esp+8]
 00494C0F    mov        dword ptr [ebx],eax
>00494C11    jmp        00494C4E
 00494C13    mov        eax,dword ptr [ebx]
 00494C15    test       eax,eax
>00494C17    je         00494C1F
 00494C19    push       eax
 00494C1A    mov        eax,dword ptr [eax]
 00494C1C    call       dword ptr [eax+8]
 00494C1F    mov        eax,dword ptr [esp+8]
 00494C23    mov        dword ptr [ebx],eax
>00494C25    jmp        00494C4E
 00494C27    mov        eax,ebx
 00494C29    call       @VarClear
 00494C2E    mov        eax,dword ptr [esp]
 00494C31    mov        dword ptr [ebx],eax
 00494C33    mov        eax,dword ptr [esp+4]
 00494C37    mov        dword ptr [ebx+4],eax
 00494C3A    mov        eax,dword ptr [esp+8]
 00494C3E    mov        dword ptr [ebx+8],eax
 00494C41    mov        eax,dword ptr [esp+0C]
 00494C45    mov        dword ptr [ebx+0C],eax
>00494C48    jmp        00494C4E
 00494C4A    mov        eax,dword ptr [esp+8]
 00494C4E    add        esp,10
 00494C51    pop        ebx
 00494C52    pop        ebp
 00494C53    ret
*}
//end;

Initialization
//00494D4C
{*
 00494D4C    sub        dword ptr ds:[61DC50],1
>00494D53    jae        00494DA0
 00494D55    call       00494294
 00494D5A    mov        eax,494908; sub_00494908
 00494D5F    mov        edx,dword ptr ds:[61BE34]; ^VarDispProc:TVarDispProc
 00494D65    mov        dword ptr [edx],eax
 00494D67    mov        eax,[0061B144]; ^DispCallByIDProc:Pointer
 00494D6C    mov        dword ptr [eax],494B78; sub_00494B78
 00494D72    mov        eax,494398; sub_00494398
 00494D77    mov        edx,dword ptr ds:[61BF9C]; ^SafeCallErrorProc:TSafeCallErrorProc
 00494D7D    mov        dword ptr [edx],eax
 00494D7F    mov        eax,[0061AED8]; ^IsLibrary:Boolean
 00494D84    cmp        byte ptr [eax],0
>00494D87    jne        00494DA0
 00494D89    mov        eax,[0061B934]; InitProc:Pointer
 00494D8E    mov        eax,dword ptr [eax]
 00494D90    mov        [0061DC5C],eax; gvar_0061DC5C:Pointer
 00494D95    mov        eax,[0061B934]; InitProc:Pointer
 00494D9A    mov        dword ptr [eax],494C54
 00494DA0    ret
*}
Finalization
//00494CCC
{*
 00494CCC    push       ebp
 00494CCD    mov        ebp,esp
 00494CCF    xor        eax,eax
 00494CD1    push       ebp
 00494CD2    push       494D42
 00494CD7    push       dword ptr fs:[eax]
 00494CDA    mov        dword ptr fs:[eax],esp
 00494CDD    inc        dword ptr ds:[61DC50]
>00494CE3    jne        00494D34
 00494CE5    mov        byte ptr ds:[61DC54],1
 00494CEC    mov        eax,[0061DC58]
 00494CF1    call       TObject.Free
 00494CF6    mov        eax,[0061BF9C]; ^SafeCallErrorProc:TSafeCallErrorProc
 00494CFB    xor        edx,edx
 00494CFD    mov        dword ptr [eax],edx
 00494CFF    mov        eax,[0061B144]; ^DispCallByIDProc:Pointer
 00494D04    xor        edx,edx
 00494D06    mov        dword ptr [eax],edx
 00494D08    mov        eax,[0061BE34]; ^VarDispProc:TVarDispProc
 00494D0D    xor        edx,edx
 00494D0F    mov        dword ptr [eax],edx
 00494D11    cmp        byte ptr ds:[61DC60],0
>00494D18    je         00494D1F
 00494D1A    call       ole32.CoUninitialize
 00494D1F    mov        eax,6153FC; gvar_006153FC:array[5] of String
 00494D24    mov        ecx,5
 00494D29    mov        edx,dword ptr ds:[4010F8]; String
 00494D2F    call       @FinalizeArray
 00494D34    xor        eax,eax
 00494D36    pop        edx
 00494D37    pop        ecx
 00494D38    pop        ecx
 00494D39    mov        dword ptr fs:[eax],edx
 00494D3C    push       494D49
 00494D41    ret
<00494D42    jmp        @HandleFinally
<00494D47    jmp        00494D41
 00494D49    pop        ebp
 00494D4A    ret
*}
end.