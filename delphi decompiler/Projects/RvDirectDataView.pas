{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RvDirectDataView;

interface

uses
  Classes, Windows, Graphics, RvData;

type
  TRaveDataConnection = class(TObject)
  public
    f8:String;//f8
    fC:byte;//fC
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:TRaveDataView;//f20
  end;
  TRaveDataSystem = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    fC:dword;//fC
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:Longint;//f1C
    f20:byte;//f20
    f28:dword;//f28
    f2C:dword;//f2C
    f30:dword;//f30
    //f38:?;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    //f40:?;//f40
    f42:word;//f42
    f44:dword;//f44
    //f48:?;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    f50:dword;//f50
    f54:dword;//f54
    f58:byte;//f58
    destructor Destroy; virtual;
    //constructor Create(?:TRaveDataSystem; _Dv__:Boolean);
  end;
  TRaveDataView = class(TRaveBaseDataView)
  public
    fA4:String;//fA4
    fA8:TRaveDataConnection;//fA8
    destructor Destroy; virtual;
    procedure AssignTo(Dest:TPersistent); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_0059C804; virtual;
    procedure sub_0059C314; virtual;
    procedure sub_0059C7C0; virtual;
    //procedure sub_0059C83C(?:?); virtual;
    //procedure sub_0059CBB8(?:?); virtual;
    //procedure sub_0059C904(?:?); virtual;
    //procedure sub_0059CAF0(?:?); virtual;
  end;

implementation

{$R *.DFM}

//0059AEEC
procedure sub_0059AEEC;
begin
{*
 0059AEEC    push       ebp
 0059AEED    mov        ebp,esp
 0059AEEF    add        esp,0FFFFFFF8
 0059AEF2    push       ebx
 0059AEF3    xor        eax,eax
 0059AEF5    mov        dword ptr [ebp-8],eax
 0059AEF8    xor        eax,eax
 0059AEFA    push       ebp
 0059AEFB    push       59AF67
 0059AF00    push       dword ptr fs:[eax]
 0059AF03    mov        dword ptr fs:[eax],esp
 0059AF06    mov        eax,[0059AD00]; TRaveDataView
 0059AF0B    mov        dword ptr [ebp-4],eax
 0059AF0E    lea        edx,[ebp-4]
 0059AF11    xor        ecx,ecx
 0059AF13    xor        eax,eax
 0059AF15    call       005A7F48
 0059AF1A    mov        eax,[0059AD00]; TRaveDataView
 0059AF1F    mov        dword ptr [ebp-4],eax
 0059AF22    lea        edx,[ebp-4]
 0059AF25    xor        ecx,ecx
 0059AF27    mov        eax,59AF7C; 'RvData'
 0059AF2C    call       005A7FBC
 0059AF31    mov        ebx,dword ptr ds:[61B830]
 0059AF37    mov        ebx,dword ptr [ebx]
 0059AF39    lea        edx,[ebp-8]
 0059AF3C    mov        eax,59AF8C; 'Direct Data View'
 0059AF41    call       ebx
 0059AF43    mov        eax,dword ptr [ebp-8]
 0059AF46    mov        edx,dword ptr ds:[59AD00]; TRaveDataView
 0059AF4C    call       005A80C0
 0059AF51    xor        eax,eax
 0059AF53    pop        edx
 0059AF54    pop        ecx
 0059AF55    pop        ecx
 0059AF56    mov        dword ptr fs:[eax],edx
 0059AF59    push       59AF6E
 0059AF5E    lea        eax,[ebp-8]
 0059AF61    call       @LStrClr
 0059AF66    ret
<0059AF67    jmp        @HandleFinally
<0059AF6C    jmp        0059AF5E
 0059AF6E    pop        ebx
 0059AF6F    pop        ecx
 0059AF70    pop        ecx
 0059AF71    pop        ebp
 0059AF72    ret
*}
end;

//0059AFA0
//constructor TRaveDataSystem.Create(?:TRaveDataSystem; _Dv__:Boolean);
//begin
{*
 0059AFA0    push       ebp
 0059AFA1    mov        ebp,esp
 0059AFA3    push       ecx
 0059AFA4    push       ebx
 0059AFA5    push       esi
 0059AFA6    push       edi
 0059AFA7    test       dl,dl
>0059AFA9    je         0059AFB3
 0059AFAB    add        esp,0FFFFFFF0
 0059AFAE    call       @ClassCreate
 0059AFB3    mov        byte ptr [ebp-1],dl
 0059AFB6    mov        ebx,eax
 0059AFB8    xor        edx,edx
 0059AFBA    mov        eax,ebx
 0059AFBC    call       TObject.Create
 0059AFC1    mov        edx,10000
 0059AFC6    mov        eax,59B034; 'RAVEBUFFER'
 0059AFCB    call       00579700
 0059AFD0    mov        esi,eax
 0059AFD2    mov        dword ptr [ebx+8],esi; TRaveDataSystem.?f8:dword
 0059AFD5    mov        eax,esi
 0059AFD7    call       00579784
 0059AFDC    mov        edi,eax
 0059AFDE    mov        dword ptr [ebx+0C],edi; TRaveDataSystem.?fC:dword
 0059AFE1    mov        dword ptr [ebx+18],edi; TRaveDataSystem.?f18:dword
 0059AFE4    mov        eax,59B048; 'RAVECONTROLER'
 0059AFE9    call       00579614
 0059AFEE    mov        dword ptr [ebx+28],eax; TRaveDataSystem.?f28:dword
 0059AFF1    mov        eax,59B060; 'RAVECOMPLETED'
 0059AFF6    call       005794F4
 0059AFFB    mov        dword ptr [ebx+2C],eax; TRaveDataSystem.?f2C:dword
 0059AFFE    mov        eax,59B078; 'RAVEERROR'
 0059B003    call       005794F4
 0059B008    mov        dword ptr [ebx+30],eax; TRaveDataSystem.?f30:dword
 0059B00B    mov        eax,ebx
 0059B00D    cmp        byte ptr [ebp-1],0
>0059B011    je         0059B022
 0059B013    call       @AfterConstruction
 0059B018    pop        dword ptr fs:[0]
 0059B01F    add        esp,0C
 0059B022    mov        eax,ebx
 0059B024    pop        edi
 0059B025    pop        esi
 0059B026    pop        ebx
 0059B027    pop        ecx
 0059B028    pop        ebp
 0059B029    ret
*}
//end;

//0059B084
destructor TRaveDataSystem.Destroy;
begin
{*
 0059B084    push       ebx
 0059B085    push       esi
 0059B086    call       @BeforeDestruction
 0059B08B    mov        ebx,edx
 0059B08D    mov        esi,eax
 0059B08F    cmp        dword ptr [esi+50],0; TRaveDataSystem.?f50:dword
>0059B093    je         0059B0C4
>0059B095    jmp        0059B0B0
 0059B097    mov        eax,dword ptr [esi+50]; TRaveDataSystem.?f50:dword
 0059B09A    xor        edx,edx
 0059B09C    mov        ecx,dword ptr [eax]
 0059B09E    call       dword ptr [ecx+18]
 0059B0A1    call       TObject.Free
 0059B0A6    mov        eax,dword ptr [esi+50]; TRaveDataSystem.?f50:dword
 0059B0A9    xor        edx,edx
 0059B0AB    mov        ecx,dword ptr [eax]
 0059B0AD    call       dword ptr [ecx+48]
 0059B0B0    mov        eax,dword ptr [esi+50]; TRaveDataSystem.?f50:dword
 0059B0B3    mov        edx,dword ptr [eax]
 0059B0B5    call       dword ptr [edx+14]
 0059B0B8    test       eax,eax
<0059B0BA    jg         0059B097
 0059B0BC    lea        eax,[esi+50]; TRaveDataSystem.?f50:dword
 0059B0BF    call       FreeAndNil
 0059B0C4    cmp        dword ptr [esi+54],0; TRaveDataSystem.?f54:dword
>0059B0C8    je         0059B0F9
>0059B0CA    jmp        0059B0E5
 0059B0CC    mov        eax,dword ptr [esi+54]; TRaveDataSystem.?f54:dword
 0059B0CF    xor        edx,edx
 0059B0D1    mov        ecx,dword ptr [eax]
 0059B0D3    call       dword ptr [ecx+18]
 0059B0D6    call       TObject.Free
 0059B0DB    mov        eax,dword ptr [esi+54]; TRaveDataSystem.?f54:dword
 0059B0DE    xor        edx,edx
 0059B0E0    mov        ecx,dword ptr [eax]
 0059B0E2    call       dword ptr [ecx+48]
 0059B0E5    mov        eax,dword ptr [esi+54]; TRaveDataSystem.?f54:dword
 0059B0E8    mov        edx,dword ptr [eax]
 0059B0EA    call       dword ptr [edx+14]
 0059B0ED    test       eax,eax
<0059B0EF    jg         0059B0CC
 0059B0F1    lea        eax,[esi+54]; TRaveDataSystem.?f54:dword
 0059B0F4    call       FreeAndNil
 0059B0F9    cmp        byte ptr [esi+20],0; TRaveDataSystem.?f20:byte
>0059B0FD    jbe        0059B111
 0059B0FF    mov        eax,dword ptr [esi+14]; TRaveDataSystem.?f14:dword
 0059B102    push       eax
 0059B103    call       kernel32.UnmapViewOfFile
 0059B108    mov        eax,dword ptr [esi+10]; TRaveDataSystem.?f10:dword
 0059B10B    push       eax
 0059B10C    call       kernel32.CloseHandle
 0059B111    mov        eax,dword ptr [esi+0C]; TRaveDataSystem.?fC:dword
 0059B114    push       eax
 0059B115    call       kernel32.UnmapViewOfFile
 0059B11A    mov        eax,dword ptr [esi+8]; TRaveDataSystem.?f8:dword
 0059B11D    push       eax
 0059B11E    call       kernel32.CloseHandle
 0059B123    mov        eax,dword ptr [esi+28]; TRaveDataSystem.?f28:dword
 0059B126    push       eax
 0059B127    call       kernel32.CloseHandle
 0059B12C    mov        eax,dword ptr [esi+2C]; TRaveDataSystem.?f2C:dword
 0059B12F    push       eax
 0059B130    call       kernel32.CloseHandle
 0059B135    mov        eax,dword ptr [esi+30]; TRaveDataSystem.?f30:dword
 0059B138    push       eax
 0059B139    call       kernel32.CloseHandle
 0059B13E    mov        edx,ebx
 0059B140    and        dl,0FC
 0059B143    mov        eax,esi
 0059B145    call       TObject.Destroy
 0059B14A    xor        eax,eax
 0059B14C    mov        [00617148],eax; gvar_00617148:TRaveDataSystem
 0059B151    test       bl,bl
>0059B153    jle        0059B15C
 0059B155    mov        eax,esi
 0059B157    call       @ClassDestroy
 0059B15C    pop        esi
 0059B15D    pop        ebx
 0059B15E    ret
*}
end;

//0059B160
//procedure sub_0059B160(?:TRaveDataSystem; ?:?);
//begin
{*
 0059B160    push       ebp
 0059B161    mov        ebp,esp
 0059B163    push       0
 0059B165    push       0
 0059B167    push       ebx
 0059B168    push       esi
 0059B169    push       edi
 0059B16A    mov        ebx,edx
 0059B16C    mov        esi,eax
 0059B16E    xor        eax,eax
 0059B170    push       ebp
 0059B171    push       59B200
 0059B176    push       dword ptr fs:[eax]
 0059B179    mov        dword ptr fs:[eax],esp
 0059B17C    mov        eax,dword ptr [esi+18]
 0059B17F    mov        dword ptr [esi+1C],eax
 0059B182    mov        eax,esi
 0059B184    call       0059B7BC
 0059B189    mov        eax,esi
 0059B18B    call       0059B7BC
 0059B190    mov        byte ptr [esi+20],al
 0059B193    mov        dword ptr [esi+24],ebx
 0059B196    mov        bl,byte ptr [esi+20]
 0059B199    test       bl,bl
>0059B19B    jbe        0059B1E5
 0059B19D    lea        edx,[ebp-8]
 0059B1A0    xor        eax,eax
 0059B1A2    mov        al,bl
 0059B1A4    call       IntToStr
 0059B1A9    mov        ecx,dword ptr [ebp-8]
 0059B1AC    lea        eax,[ebp-4]
 0059B1AF    mov        edx,59B218; 'RAVEBUFFERALT'
 0059B1B4    call       @LStrCat3
 0059B1B9    mov        eax,dword ptr [ebp-4]
 0059B1BC    xor        edx,edx
 0059B1BE    call       00579700
 0059B1C3    mov        edi,eax
 0059B1C5    mov        dword ptr [esi+10],edi
 0059B1C8    mov        eax,edi
 0059B1CA    call       00579784
 0059B1CF    mov        ebx,eax
 0059B1D1    mov        dword ptr [esi+14],ebx
 0059B1D4    mov        eax,dword ptr [esi+1C]
 0059B1D7    sub        eax,dword ptr [esi+18]
 0059B1DA    add        eax,ebx
 0059B1DC    mov        dword ptr [esi+1C],eax
 0059B1DF    mov        eax,dword ptr [esi+14]
 0059B1E2    mov        dword ptr [esi+18],eax
 0059B1E5    xor        eax,eax
 0059B1E7    pop        edx
 0059B1E8    pop        ecx
 0059B1E9    pop        ecx
 0059B1EA    mov        dword ptr fs:[eax],edx
 0059B1ED    push       59B207
 0059B1F2    lea        eax,[ebp-8]
 0059B1F5    mov        edx,2
 0059B1FA    call       @LStrArrayClr
 0059B1FF    ret
<0059B200    jmp        @HandleFinally
<0059B205    jmp        0059B1F2
 0059B207    pop        edi
 0059B208    pop        esi
 0059B209    pop        ebx
 0059B20A    pop        ecx
 0059B20B    pop        ecx
 0059B20C    pop        ebp
 0059B20D    ret
*}
//end;

//0059B228
//procedure sub_0059B228(?:TRaveDataSystem);
//begin
{*
 0059B228    push       ebx
 0059B229    mov        ebx,eax
 0059B22B    cmp        byte ptr [ebx+20],0
>0059B22F    jbe        0059B255
 0059B231    mov        eax,dword ptr [ebx+14]
 0059B234    push       eax
 0059B235    call       kernel32.UnmapViewOfFile
 0059B23A    mov        eax,dword ptr [ebx+10]
 0059B23D    push       eax
 0059B23E    call       kernel32.CloseHandle
 0059B243    mov        eax,dword ptr [ebx+0C]
 0059B246    mov        dword ptr [ebx+18],eax
 0059B249    mov        dword ptr [ebx+1C],eax
 0059B24C    mov        byte ptr [ebx+20],0
 0059B250    xor        eax,eax
 0059B252    mov        dword ptr [ebx+24],eax
 0059B255    pop        ebx
 0059B256    ret
*}
//end;

//0059B258
//function sub_0059B258(?:TRaveDataSystem):?;
//begin
{*
 0059B258    push       ebp
 0059B259    mov        ebp,esp
 0059B25B    push       0
 0059B25D    push       ebx
 0059B25E    push       esi
 0059B25F    push       edi
 0059B260    mov        esi,eax
 0059B262    xor        eax,eax
 0059B264    push       ebp
 0059B265    push       59B2DE
 0059B26A    push       dword ptr fs:[eax]
 0059B26D    mov        dword ptr fs:[eax],esp
 0059B270    cmp        dword ptr [esi+4],0; TRaveDataSystem.?f4:dword
>0059B274    jle        0059B27D
 0059B276    inc        dword ptr [esi+4]; TRaveDataSystem.?f4:dword
 0059B279    mov        bl,1
>0059B27B    jmp        0059B2C8
 0059B27D    push       1388
 0059B282    mov        eax,dword ptr [esi+28]; TRaveDataSystem.?f28:dword
 0059B285    push       eax
 0059B286    call       kernel32.WaitForSingleObject
 0059B28B    mov        ebx,eax
 0059B28D    test       ebx,ebx
>0059B28F    je         0059B2BF
 0059B291    push       0
 0059B293    mov        edi,dword ptr ds:[61B830]
 0059B299    mov        edi,dword ptr [edi]
 0059B29B    lea        edx,[ebp-4]
 0059B29E    mov        eax,59B2F8; 'Unable to gain control of RAVE Data Communication System.'
 0059B2A3    call       edi
 0059B2A5    mov        eax,dword ptr [ebp-4]
 0059B2A8    mov        cx,word ptr ds:[59B334]; 0x28
 0059B2AF    mov        dl,1
 0059B2B1    call       MessageDlg
 0059B2B6    cmp        eax,4
>0059B2B9    je         0059B2BF
 0059B2BB    xor        ebx,ebx
>0059B2BD    jmp        0059B2C8
 0059B2BF    test       ebx,ebx
<0059B2C1    jne        0059B27D
 0059B2C3    mov        bl,1
 0059B2C5    inc        dword ptr [esi+4]; TRaveDataSystem.?f4:dword
 0059B2C8    xor        eax,eax
 0059B2CA    pop        edx
 0059B2CB    pop        ecx
 0059B2CC    pop        ecx
 0059B2CD    mov        dword ptr fs:[eax],edx
 0059B2D0    push       59B2E5
 0059B2D5    lea        eax,[ebp-4]
 0059B2D8    call       @LStrClr
 0059B2DD    ret
<0059B2DE    jmp        @HandleFinally
<0059B2E3    jmp        0059B2D5
 0059B2E5    mov        eax,ebx
 0059B2E7    pop        edi
 0059B2E8    pop        esi
 0059B2E9    pop        ebx
 0059B2EA    pop        ecx
 0059B2EB    pop        ebp
 0059B2EC    ret
*}
//end;

//0059B338
//procedure sub_0059B338(?:TRaveDataSystem);
//begin
{*
 0059B338    push       ebp
 0059B339    mov        ebp,esp
 0059B33B    push       0
 0059B33D    push       ebx
 0059B33E    push       esi
 0059B33F    mov        ebx,eax
 0059B341    xor        eax,eax
 0059B343    push       ebp
 0059B344    push       59B39C
 0059B349    push       dword ptr fs:[eax]
 0059B34C    mov        dword ptr fs:[eax],esp
 0059B34F    dec        dword ptr [ebx+4]; TRaveDataSystem.?f4:dword
 0059B352    cmp        dword ptr [ebx+4],0; TRaveDataSystem.?f4:dword
>0059B356    jge        0059B377
 0059B358    mov        esi,dword ptr ds:[61B830]
 0059B35E    mov        esi,dword ptr [esi]
 0059B360    lea        edx,[ebp-4]
 0059B363    mov        eax,59B3B0; 'Control count underflow on ReleaseControl'
 0059B368    call       esi
 0059B36A    mov        eax,dword ptr [ebp-4]
 0059B36D    call       00579798
 0059B372    xor        eax,eax
 0059B374    mov        dword ptr [ebx+4],eax; TRaveDataSystem.?f4:dword
 0059B377    cmp        dword ptr [ebx+4],0; TRaveDataSystem.?f4:dword
>0059B37B    jne        0059B386
 0059B37D    mov        eax,dword ptr [ebx+28]; TRaveDataSystem.?f28:dword
 0059B380    push       eax
 0059B381    call       kernel32.ReleaseMutex
 0059B386    xor        eax,eax
 0059B388    pop        edx
 0059B389    pop        ecx
 0059B38A    pop        ecx
 0059B38B    mov        dword ptr fs:[eax],edx
 0059B38E    push       59B3A3
 0059B393    lea        eax,[ebp-4]
 0059B396    call       @LStrClr
 0059B39B    ret
<0059B39C    jmp        @HandleFinally
<0059B3A1    jmp        0059B393
 0059B3A3    pop        esi
 0059B3A4    pop        ebx
 0059B3A5    pop        ecx
 0059B3A6    pop        ebp
 0059B3A7    ret
*}
//end;

//0059B3DC
//function sub_0059B3DC(?:TRaveDataSystem; ?:String):?;
//begin
{*
 0059B3DC    push       ebp
 0059B3DD    mov        ebp,esp
 0059B3DF    xor        ecx,ecx
 0059B3E1    push       ecx
 0059B3E2    push       ecx
 0059B3E3    push       ecx
 0059B3E4    push       ecx
 0059B3E5    push       ecx
 0059B3E6    push       ebx
 0059B3E7    push       esi
 0059B3E8    push       edi
 0059B3E9    mov        dword ptr [ebp-4],edx
 0059B3EC    mov        ebx,eax
 0059B3EE    mov        eax,dword ptr [ebp-4]
 0059B3F1    call       @LStrAddRef
 0059B3F6    xor        eax,eax
 0059B3F8    push       ebp
 0059B3F9    push       59B4DA
 0059B3FE    push       dword ptr fs:[eax]
 0059B401    mov        dword ptr fs:[eax],esp
 0059B404    mov        eax,dword ptr [ebx+50]; TRaveDataSystem.?f50:dword
 0059B407    test       eax,eax
>0059B409    je         0059B411
 0059B40B    cmp        dword ptr [ebx+54],0; TRaveDataSystem.?f54:dword
>0059B40F    jne        0059B418
 0059B411    mov        bl,1
>0059B413    jmp        0059B4BF
 0059B418    mov        edx,dword ptr [ebp-4]
 0059B41B    mov        ecx,dword ptr [eax]
 0059B41D    call       dword ptr [ecx+54]
 0059B420    mov        esi,eax
 0059B422    test       esi,esi
>0059B424    jl         0059B46B
 0059B426    mov        eax,dword ptr [ebx+50]; TRaveDataSystem.?f50:dword
 0059B429    mov        edx,dword ptr [eax]
 0059B42B    call       dword ptr [edx+14]
 0059B42E    lea        edx,[esi+1]
 0059B431    cmp        eax,edx
>0059B433    je         0059B465
 0059B435    lea        ecx,[ebp-8]
 0059B438    lea        edx,[esi+1]
 0059B43B    mov        eax,dword ptr [ebx+50]; TRaveDataSystem.?f50:dword
 0059B43E    mov        edi,dword ptr [eax]
 0059B440    call       dword ptr [edi+0C]
 0059B443    mov        eax,dword ptr [ebp-8]
 0059B446    push       eax
 0059B447    lea        ecx,[ebp-0C]
 0059B44A    mov        edx,esi
 0059B44C    mov        eax,dword ptr [ebx+50]; TRaveDataSystem.?f50:dword
 0059B44F    mov        ebx,dword ptr [eax]
 0059B451    call       dword ptr [ebx+0C]
 0059B454    mov        eax,dword ptr [ebp-0C]
 0059B457    pop        edx
 0059B458    call       AnsiCompareText
 0059B45D    test       eax,eax
>0059B45F    jne        0059B465
 0059B461    xor        eax,eax
>0059B463    jmp        0059B467
 0059B465    mov        al,1
 0059B467    mov        ebx,eax
>0059B469    jmp        0059B4BF
 0059B46B    mov        edx,dword ptr [ebp-4]
 0059B46E    mov        eax,dword ptr [ebx+54]; TRaveDataSystem.?f54:dword
 0059B471    mov        ecx,dword ptr [eax]
 0059B473    call       dword ptr [ecx+54]
 0059B476    mov        esi,eax
 0059B478    test       esi,esi
>0059B47A    jl         0059B4BB
 0059B47C    mov        eax,dword ptr [ebx+54]; TRaveDataSystem.?f54:dword
 0059B47F    mov        edx,dword ptr [eax]
 0059B481    call       dword ptr [edx+14]
 0059B484    lea        edx,[esi+1]
 0059B487    cmp        eax,edx
>0059B489    je         0059B4BB
 0059B48B    lea        ecx,[ebp-10]
 0059B48E    lea        edx,[esi+1]
 0059B491    mov        eax,dword ptr [ebx+54]; TRaveDataSystem.?f54:dword
 0059B494    mov        edi,dword ptr [eax]
 0059B496    call       dword ptr [edi+0C]
 0059B499    mov        eax,dword ptr [ebp-10]
 0059B49C    push       eax
 0059B49D    lea        ecx,[ebp-14]
 0059B4A0    mov        edx,esi
 0059B4A2    mov        eax,dword ptr [ebx+54]; TRaveDataSystem.?f54:dword
 0059B4A5    mov        ebx,dword ptr [eax]
 0059B4A7    call       dword ptr [ebx+0C]
 0059B4AA    mov        eax,dword ptr [ebp-14]
 0059B4AD    pop        edx
 0059B4AE    call       AnsiCompareText
 0059B4B3    test       eax,eax
>0059B4B5    jne        0059B4BB
 0059B4B7    xor        eax,eax
>0059B4B9    jmp        0059B4BD
 0059B4BB    mov        al,1
 0059B4BD    mov        ebx,eax
 0059B4BF    xor        eax,eax
 0059B4C1    pop        edx
 0059B4C2    pop        ecx
 0059B4C3    pop        ecx
 0059B4C4    mov        dword ptr fs:[eax],edx
 0059B4C7    push       59B4E1
 0059B4CC    lea        eax,[ebp-14]
 0059B4CF    mov        edx,5
 0059B4D4    call       @LStrArrayClr
 0059B4D9    ret
<0059B4DA    jmp        @HandleFinally
<0059B4DF    jmp        0059B4CC
 0059B4E1    mov        eax,ebx
 0059B4E3    pop        edi
 0059B4E4    pop        esi
 0059B4E5    pop        ebx
 0059B4E6    mov        esp,ebp
 0059B4E8    pop        ebp
 0059B4E9    ret
*}
//end;

//0059B4EC
//procedure sub_0059B4EC(?:TRaveDataSystem);
//begin
{*
 0059B4EC    push       ebp
 0059B4ED    mov        ebp,esp
 0059B4EF    add        esp,0FFFFFFE4
 0059B4F2    push       ebx
 0059B4F3    push       esi
 0059B4F4    push       edi
 0059B4F5    xor        edx,edx
 0059B4F7    mov        dword ptr [ebp-10],edx
 0059B4FA    mov        dword ptr [ebp-4],eax
 0059B4FD    xor        eax,eax
 0059B4FF    push       ebp
 0059B500    push       59B749
 0059B505    push       dword ptr fs:[eax]
 0059B508    mov        dword ptr fs:[eax],esp
 0059B50B    mov        eax,dword ptr [ebp-4]
 0059B50E    mov        eax,dword ptr [eax+50]
 0059B511    test       eax,eax
>0059B513    je         0059B51C
 0059B515    call       005A5904
>0059B51A    jmp        0059B543
 0059B51C    mov        dl,1
 0059B51E    mov        eax,[0041C8E4]; TStringList
 0059B523    call       TObject.Create; TStringList.Create
 0059B528    mov        ebx,eax
 0059B52A    mov        eax,dword ptr [ebp-4]
 0059B52D    mov        dword ptr [eax+50],ebx
 0059B530    mov        eax,ebx
 0059B532    mov        dl,1
 0059B534    call       TStringList.SetSorted
 0059B539    mov        eax,dword ptr [ebp-4]
 0059B53C    mov        eax,dword ptr [eax+50]
 0059B53F    mov        byte ptr [eax+1D],1
 0059B543    mov        eax,dword ptr [ebp-4]
 0059B546    mov        eax,dword ptr [eax+54]
 0059B549    test       eax,eax
>0059B54B    je         0059B554
 0059B54D    call       005A5904
>0059B552    jmp        0059B57B
 0059B554    mov        dl,1
 0059B556    mov        eax,[0041C8E4]; TStringList
 0059B55B    call       TObject.Create; TStringList.Create
 0059B560    mov        ebx,eax
 0059B562    mov        eax,dword ptr [ebp-4]
 0059B565    mov        dword ptr [eax+54],ebx
 0059B568    mov        eax,ebx
 0059B56A    mov        dl,1
 0059B56C    call       TStringList.SetSorted
 0059B571    mov        eax,dword ptr [ebp-4]
 0059B574    mov        eax,dword ptr [eax+54]
 0059B577    mov        byte ptr [eax+1D],1
 0059B57B    mov        eax,59B760; 'RAVECONNECT'
 0059B580    call       005794F4
 0059B585    mov        dword ptr [ebp-8],eax
 0059B588    mov        eax,dword ptr [ebp-4]
 0059B58B    call       0059B258
 0059B590    test       al,al
>0059B592    je         0059B733
 0059B598    xor        edx,edx
 0059B59A    push       ebp
 0059B59B    push       59B72C
 0059B5A0    push       dword ptr fs:[edx]
 0059B5A3    mov        dword ptr fs:[edx],esp
 0059B5A6    mov        byte ptr [ebp-11],0
 0059B5AA    mov        eax,dword ptr [ebp-8]
 0059B5AD    push       eax
 0059B5AE    call       kernel32.SetEvent
 0059B5B3    mov        eax,dword ptr [ebp-4]
 0059B5B6    mov        eax,dword ptr [eax+2C]
 0059B5B9    mov        dword ptr [ebp-1C],eax
 0059B5BC    mov        eax,dword ptr [ebp-4]
 0059B5BF    mov        eax,dword ptr [eax+30]
 0059B5C2    mov        dword ptr [ebp-18],eax
 0059B5C5    push       0FA
 0059B5CA    push       0
 0059B5CC    lea        eax,[ebp-1C]
 0059B5CF    push       eax
 0059B5D0    push       2
 0059B5D2    call       kernel32.WaitForMultipleObjects
 0059B5D7    test       eax,eax
>0059B5D9    jne        0059B6A8
 0059B5DF    xor        edx,edx
 0059B5E1    push       ebp
 0059B5E2    push       59B69C
 0059B5E7    push       dword ptr fs:[edx]
 0059B5EA    mov        dword ptr fs:[edx],esp
 0059B5ED    mov        eax,dword ptr [ebp-4]
 0059B5F0    call       0059B8D0
 0059B5F5    lea        edx,[ebp-10]
 0059B5F8    mov        eax,dword ptr [ebp-4]
 0059B5FB    call       0059B784
 0059B600    mov        dl,1
 0059B602    mov        eax,[0059AC30]; TRaveDataConnection
 0059B607    call       TObject.Create; TRaveDataConnection.Create
 0059B60C    mov        ebx,eax
 0059B60E    lea        eax,[ebx+8]; TRaveDataConnection.?f8:String
 0059B611    mov        edx,dword ptr [ebp-10]
 0059B614    call       @LStrAsg
 0059B619    mov        eax,dword ptr [ebp-4]
 0059B61C    call       0059B7C8
 0059B621    mov        byte ptr [ebx+0C],al; TRaveDataConnection.?fC:byte
 0059B624    mov        eax,dword ptr [ebp-4]
 0059B627    call       0059B7BC
 0059B62C    mov        dword ptr [ebx+10],eax; TRaveDataConnection.?f10:dword
 0059B62F    mov        eax,dword ptr [ebp-4]
 0059B632    call       0059B7BC
 0059B637    mov        dword ptr [ebx+14],eax; TRaveDataConnection.?f14:dword
 0059B63A    mov        eax,dword ptr [ebp-4]
 0059B63D    call       0059B7BC
 0059B642    mov        esi,eax
 0059B644    mov        dword ptr [ebx+1C],esi; TRaveDataConnection.?f1C:dword
 0059B647    cmp        esi,7533
>0059B64D    jl         0059B659
 0059B64F    mov        eax,dword ptr [ebp-4]
 0059B652    call       0059B7BC
>0059B657    jmp        0059B65B
 0059B659    mov        al,2
 0059B65B    mov        edx,dword ptr ds:[61B4AC]
 0059B661    cmp        byte ptr [edx],0
>0059B664    jne        0059B66A
 0059B666    cmp        al,2
>0059B668    jne        0059B692
 0059B66A    cmp        byte ptr [ebx+0C],0; TRaveDataConnection.?fC:byte
>0059B66E    je         0059B682
 0059B670    mov        eax,dword ptr [ebp-4]
 0059B673    mov        eax,dword ptr [eax+50]
 0059B676    mov        ecx,ebx
 0059B678    mov        edx,dword ptr [ebp-10]
 0059B67B    mov        ebx,dword ptr [eax]
 0059B67D    call       dword ptr [ebx+3C]
>0059B680    jmp        0059B692
 0059B682    mov        eax,dword ptr [ebp-4]
 0059B685    mov        eax,dword ptr [eax+54]
 0059B688    mov        ecx,ebx
 0059B68A    mov        edx,dword ptr [ebp-10]
 0059B68D    mov        ebx,dword ptr [eax]
 0059B68F    call       dword ptr [ebx+3C]
 0059B692    xor        eax,eax
 0059B694    pop        edx
 0059B695    pop        ecx
 0059B696    pop        ecx
 0059B697    mov        dword ptr fs:[eax],edx
>0059B69A    jmp        0059B6BA
<0059B69C    jmp        @HandleAnyException
 0059B6A1    call       @DoneExcept
>0059B6A6    jmp        0059B6BA
 0059B6A8    cmp        eax,1
>0059B6AB    je         0059B6BA
 0059B6AD    mov        eax,dword ptr [ebp-8]
 0059B6B0    push       eax
 0059B6B1    call       kernel32.ResetEvent
 0059B6B6    mov        byte ptr [ebp-11],1
 0059B6BA    cmp        byte ptr [ebp-11],0
<0059B6BE    je         0059B5AA
 0059B6C4    xor        eax,eax
 0059B6C6    pop        edx
 0059B6C7    pop        ecx
 0059B6C8    pop        ecx
 0059B6C9    mov        dword ptr fs:[eax],edx
 0059B6CC    push       59B733
 0059B6D1    mov        eax,59B774; 'RAVEDISCONNECT'
 0059B6D6    call       00579584
 0059B6DB    mov        dword ptr [ebp-0C],eax
 0059B6DE    xor        eax,eax
 0059B6E0    push       ebp
 0059B6E1    push       59B713
 0059B6E6    push       dword ptr fs:[eax]
 0059B6E9    mov        dword ptr fs:[eax],esp
 0059B6EC    mov        eax,dword ptr [ebp-0C]
 0059B6EF    push       eax
 0059B6F0    call       kernel32.PulseEvent
 0059B6F5    push       0
 0059B6F7    call       kernel32.Sleep
 0059B6FC    xor        eax,eax
 0059B6FE    pop        edx
 0059B6FF    pop        ecx
 0059B700    pop        ecx
 0059B701    mov        dword ptr fs:[eax],edx
 0059B704    push       59B71A
 0059B709    mov        eax,dword ptr [ebp-0C]
 0059B70C    push       eax
 0059B70D    call       kernel32.CloseHandle
 0059B712    ret
<0059B713    jmp        @HandleFinally
<0059B718    jmp        0059B709
 0059B71A    mov        eax,dword ptr [ebp-8]
 0059B71D    push       eax
 0059B71E    call       kernel32.CloseHandle
 0059B723    mov        eax,dword ptr [ebp-4]
 0059B726    call       0059B338
 0059B72B    ret
<0059B72C    jmp        @HandleFinally
<0059B731    jmp        0059B6D1
 0059B733    xor        eax,eax
 0059B735    pop        edx
 0059B736    pop        ecx
 0059B737    pop        ecx
 0059B738    mov        dword ptr fs:[eax],edx
 0059B73B    push       59B750
 0059B740    lea        eax,[ebp-10]
 0059B743    call       @LStrClr
 0059B748    ret
<0059B749    jmp        @HandleFinally
<0059B74E    jmp        0059B740
 0059B750    pop        edi
 0059B751    pop        esi
 0059B752    pop        ebx
 0059B753    mov        esp,ebp
 0059B755    pop        ebp
 0059B756    ret
*}
//end;

//0059B784
//procedure sub_0059B784(?:TRaveDataSystem; ?:AnsiString);
//begin
{*
 0059B784    push       ebx
 0059B785    push       esi
 0059B786    push       edi
 0059B787    mov        edi,edx
 0059B789    mov        esi,eax
 0059B78B    mov        eax,esi
 0059B78D    call       0059B7BC
 0059B792    mov        ebx,eax
 0059B794    mov        eax,edi
 0059B796    mov        edx,ebx
 0059B798    call       @LStrSetLength
 0059B79D    test       ebx,ebx
>0059B79F    jle        0059B7B7
 0059B7A1    mov        eax,edi
 0059B7A3    call       @UniqueStringA
 0059B7A8    mov        edx,eax
 0059B7AA    mov        eax,dword ptr [esi+1C]; TRaveDataSystem.?f1C:Longint
 0059B7AD    mov        ecx,ebx
 0059B7AF    call       Move
 0059B7B4    add        dword ptr [esi+1C],ebx; TRaveDataSystem.?f1C:Longint
 0059B7B7    pop        edi
 0059B7B8    pop        esi
 0059B7B9    pop        ebx
 0059B7BA    ret
*}
//end;

//0059B7BC
//function sub_0059B7BC(?:TRaveDataSystem):?;
//begin
{*
 0059B7BC    mov        edx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B7BF    mov        edx,dword ptr [edx]
 0059B7C1    add        dword ptr [eax+1C],4; TRaveDataSystem.?f1C:Longint
 0059B7C5    mov        eax,edx
 0059B7C7    ret
*}
//end;

//0059B7C8
//function sub_0059B7C8(?:TRaveDataSystem):?;
//begin
{*
 0059B7C8    mov        edx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B7CB    mov        dl,byte ptr [edx]
 0059B7CD    inc        dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B7D0    mov        eax,edx
 0059B7D2    ret
*}
//end;

//0059B7D4
//procedure sub_0059B7D4(?:TRaveDataSystem; ?:dword; ?:?);
//begin
{*
 0059B7D4    push       ebx
 0059B7D5    push       esi
 0059B7D6    mov        esi,ecx
 0059B7D8    mov        ebx,eax
 0059B7DA    mov        eax,dword ptr [ebx+1C]; TRaveDataSystem.?f1C:Longint
 0059B7DD    mov        ecx,esi
 0059B7DF    call       Move
 0059B7E4    add        dword ptr [ebx+1C],esi; TRaveDataSystem.?f1C:Longint
 0059B7E7    pop        esi
 0059B7E8    pop        ebx
 0059B7E9    ret
*}
//end;

//0059B7EC
//procedure sub_0059B7EC(?:TRaveDataSystem; ?:AnsiString);
//begin
{*
 0059B7EC    push       ebp
 0059B7ED    mov        ebp,esp
 0059B7EF    push       ecx
 0059B7F0    push       ebx
 0059B7F1    push       esi
 0059B7F2    mov        dword ptr [ebp-4],edx
 0059B7F5    mov        esi,eax
 0059B7F7    mov        eax,dword ptr [ebp-4]
 0059B7FA    call       @LStrAddRef
 0059B7FF    xor        eax,eax
 0059B801    push       ebp
 0059B802    push       59B84F
 0059B807    push       dword ptr fs:[eax]
 0059B80A    mov        dword ptr fs:[eax],esp
 0059B80D    mov        eax,dword ptr [ebp-4]
 0059B810    call       @LStrLen
 0059B815    mov        ebx,eax
 0059B817    mov        edx,ebx
 0059B819    mov        eax,esi
 0059B81B    call       0059B85C
 0059B820    test       ebx,ebx
>0059B822    jle        0059B839
 0059B824    lea        eax,[ebp-4]
 0059B827    call       @UniqueStringA
 0059B82C    mov        edx,dword ptr [esi+1C]; TRaveDataSystem.?f1C:Longint
 0059B82F    mov        ecx,ebx
 0059B831    call       Move
 0059B836    add        dword ptr [esi+1C],ebx; TRaveDataSystem.?f1C:Longint
 0059B839    xor        eax,eax
 0059B83B    pop        edx
 0059B83C    pop        ecx
 0059B83D    pop        ecx
 0059B83E    mov        dword ptr fs:[eax],edx
 0059B841    push       59B856
 0059B846    lea        eax,[ebp-4]
 0059B849    call       @LStrClr
 0059B84E    ret
<0059B84F    jmp        @HandleFinally
<0059B854    jmp        0059B846
 0059B856    pop        esi
 0059B857    pop        ebx
 0059B858    pop        ecx
 0059B859    pop        ebp
 0059B85A    ret
*}
//end;

//0059B85C
//procedure sub_0059B85C(?:TRaveDataSystem; ?:Longint);
//begin
{*
 0059B85C    mov        ecx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B85F    mov        dword ptr [ecx],edx
 0059B861    add        dword ptr [eax+1C],4; TRaveDataSystem.?f1C:Longint
 0059B865    ret
*}
//end;

//0059B868
//procedure sub_0059B868(?:TRaveDataSystem; ?:?);
//begin
{*
 0059B868    mov        ecx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B86B    mov        byte ptr [ecx],dl
 0059B86D    inc        dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B870    ret
*}
//end;

//0059B874
//procedure sub_0059B874(?:TRaveDataSystem; ?:?; ?:?; ?:?);
//begin
{*
 0059B874    push       ebp
 0059B875    mov        ebp,esp
 0059B877    mov        edx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B87A    mov        ecx,dword ptr [ebp+8]
 0059B87D    mov        dword ptr [edx],ecx
 0059B87F    mov        ecx,dword ptr [ebp+0C]
 0059B882    mov        dword ptr [edx+4],ecx
 0059B885    mov        cx,word ptr [ebp+10]
 0059B889    mov        word ptr [edx+8],cx
 0059B88D    add        dword ptr [eax+1C],0A; TRaveDataSystem.?f1C:Longint
 0059B891    pop        ebp
 0059B892    ret        0C
*}
//end;

//0059B898
//procedure sub_0059B898(?:TRaveDataSystem; ?:?; ?:?);
//begin
{*
 0059B898    push       ebp
 0059B899    mov        ebp,esp
 0059B89B    mov        edx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B89E    mov        ecx,dword ptr [ebp+8]
 0059B8A1    mov        dword ptr [edx],ecx
 0059B8A3    mov        ecx,dword ptr [ebp+0C]
 0059B8A6    mov        dword ptr [edx+4],ecx
 0059B8A9    add        dword ptr [eax+1C],8; TRaveDataSystem.?f1C:Longint
 0059B8AD    pop        ebp
 0059B8AE    ret        8
*}
//end;

//0059B8B4
//procedure sub_0059B8B4(?:TRaveDataSystem; ?:?; ?:?);
//begin
{*
 0059B8B4    push       ebp
 0059B8B5    mov        ebp,esp
 0059B8B7    mov        edx,dword ptr [eax+1C]; TRaveDataSystem.?f1C:Longint
 0059B8BA    mov        ecx,dword ptr [ebp+8]
 0059B8BD    mov        dword ptr [edx],ecx
 0059B8BF    mov        ecx,dword ptr [ebp+0C]
 0059B8C2    mov        dword ptr [edx+4],ecx
 0059B8C5    add        dword ptr [eax+1C],8; TRaveDataSystem.?f1C:Longint
 0059B8C9    pop        ebp
 0059B8CA    ret        8
*}
//end;

//0059B8D0
//procedure sub_0059B8D0(?:TRaveDataSystem);
//begin
{*
 0059B8D0    push       ebx
 0059B8D1    mov        ebx,eax
 0059B8D3    mov        eax,ebx
 0059B8D5    call       0059B228
 0059B8DA    mov        eax,dword ptr [ebx+18]; TRaveDataSystem.?f18:dword
 0059B8DD    add        eax,8
 0059B8E0    mov        dword ptr [ebx+1C],eax; TRaveDataSystem.?f1C:Longint
 0059B8E3    pop        ebx
 0059B8E4    ret
*}
//end;

//0059B8E8
//procedure sub_0059B8E8(?:?; ?:?);
//begin
{*
 0059B8E8    push       ebp
 0059B8E9    mov        ebp,esp
 0059B8EB    push       0
 0059B8ED    push       ebx
 0059B8EE    push       esi
 0059B8EF    mov        ebx,eax
 0059B8F1    mov        esi,dword ptr [ebp+8]
 0059B8F4    add        esi,0FFFFFFF8
 0059B8F7    xor        eax,eax
 0059B8F9    push       ebp
 0059B8FA    push       59B984
 0059B8FF    push       dword ptr fs:[eax]
 0059B902    mov        dword ptr fs:[eax],esp
 0059B905    mov        eax,dword ptr [ebp+8]
 0059B908    mov        eax,dword ptr [eax-4]
 0059B90B    call       0059B8D0
 0059B910    mov        eax,dword ptr [esi]
 0059B912    mov        dword ptr [eax+18],ebx
 0059B915    lea        edx,[ebp-4]
 0059B918    mov        eax,dword ptr [ebp+8]
 0059B91B    mov        eax,dword ptr [eax-4]
 0059B91E    call       0059B784
 0059B923    mov        edx,dword ptr [ebp-4]
 0059B926    mov        eax,dword ptr [esi]
 0059B928    add        eax,8
 0059B92B    call       @LStrAsg
 0059B930    mov        eax,dword ptr [ebp+8]
 0059B933    mov        eax,dword ptr [eax-4]
 0059B936    call       0059B7C8
 0059B93B    mov        edx,dword ptr [esi]
 0059B93D    mov        byte ptr [edx+0C],al
 0059B940    mov        eax,dword ptr [ebp+8]
 0059B943    mov        eax,dword ptr [eax-4]
 0059B946    call       0059B7BC
 0059B94B    mov        edx,dword ptr [esi]
 0059B94D    mov        dword ptr [edx+10],eax
 0059B950    mov        eax,dword ptr [ebp+8]
 0059B953    mov        eax,dword ptr [eax-4]
 0059B956    call       0059B7BC
 0059B95B    mov        edx,dword ptr [esi]
 0059B95D    mov        dword ptr [edx+1C],eax
 0059B960    mov        eax,dword ptr [esi]
 0059B962    xor        edx,edx
 0059B964    mov        dword ptr [eax+14],edx
 0059B967    mov        eax,dword ptr [ebp+8]
 0059B96A    mov        byte ptr [eax-9],1
 0059B96E    xor        eax,eax
 0059B970    pop        edx
 0059B971    pop        ecx
 0059B972    pop        ecx
 0059B973    mov        dword ptr fs:[eax],edx
 0059B976    push       59B98B
 0059B97B    lea        eax,[ebp-4]
 0059B97E    call       @LStrClr
 0059B983    ret
<0059B984    jmp        @HandleFinally
<0059B989    jmp        0059B97B
 0059B98B    pop        esi
 0059B98C    pop        ebx
 0059B98D    pop        ecx
 0059B98E    pop        ebp
 0059B98F    ret
*}
//end;

//0059B990
//procedure sub_0059B990(?:?);
//begin
{*
 0059B990    push       ebp
 0059B991    mov        ebp,esp
 0059B993    push       ebx
 0059B994    mov        eax,dword ptr [ebp+8]
 0059B997    mov        eax,dword ptr [eax-4]
 0059B99A    cmp        word ptr [eax+4A],0
>0059B99F    je         0059B9B5
 0059B9A1    mov        eax,dword ptr [ebp+8]
 0059B9A4    mov        ebx,dword ptr [eax-4]
 0059B9A7    mov        eax,dword ptr [ebp+8]
 0059B9AA    mov        edx,dword ptr [eax-4]
 0059B9AD    xor        ecx,ecx
 0059B9AF    mov        eax,dword ptr [ebx+4C]
 0059B9B2    call       dword ptr [ebx+48]
 0059B9B5    mov        eax,dword ptr [ebp+8]
 0059B9B8    mov        eax,dword ptr [eax-8]
 0059B9BB    xor        edx,edx
 0059B9BD    mov        dword ptr [eax+18],edx
 0059B9C0    mov        eax,dword ptr [ebp+8]
 0059B9C3    mov        eax,dword ptr [eax-8]
 0059B9C6    add        eax,8
 0059B9C9    mov        edx,dword ptr [ebp+8]
 0059B9CC    mov        edx,dword ptr [edx-10]
 0059B9CF    call       @LStrAsg
 0059B9D4    mov        eax,dword ptr [ebp+8]
 0059B9D7    mov        eax,dword ptr [eax-8]
 0059B9DA    mov        byte ptr [eax+0C],1
 0059B9DE    mov        eax,[0061BD04]; ^Application:TApplication
 0059B9E3    mov        eax,dword ptr [eax]
 0059B9E5    mov        eax,dword ptr [eax+30]; TApplication.FHandle:HWND
 0059B9E8    mov        edx,dword ptr [ebp+8]
 0059B9EB    mov        edx,dword ptr [edx-8]
 0059B9EE    mov        dword ptr [edx+10],eax
 0059B9F1    mov        eax,[0061C0BC]
 0059B9F6    mov        eax,dword ptr [eax]
 0059B9F8    mov        edx,dword ptr [ebp+8]
 0059B9FB    mov        edx,dword ptr [edx-8]
 0059B9FE    mov        dword ptr [edx+1C],eax
 0059BA01    mov        eax,dword ptr [ebp+8]
 0059BA04    mov        eax,dword ptr [eax-4]
 0059BA07    call       0059B8D0
 0059BA0C    mov        eax,dword ptr [ebp+8]
 0059BA0F    mov        byte ptr [eax-9],1
 0059BA13    pop        ebx
 0059BA14    pop        ebp
 0059BA15    ret
*}
//end;

//0059BA18
//function sub_0059BA18(?:TRaveDataSystem; ?:String; ?:TRaveDataConnection):?;
//begin
{*
 0059BA18    push       ebp
 0059BA19    mov        ebp,esp
 0059BA1B    add        esp,0FFFFFFBC
 0059BA1E    push       ebx
 0059BA1F    push       esi
 0059BA20    push       edi
 0059BA21    xor        ebx,ebx
 0059BA23    mov        dword ptr [ebp-44],ebx
 0059BA26    mov        dword ptr [ebp-40],ebx
 0059BA29    mov        dword ptr [ebp-3C],ebx
 0059BA2C    mov        dword ptr [ebp-38],ebx
 0059BA2F    mov        dword ptr [ebp-8],ecx
 0059BA32    mov        dword ptr [ebp-10],edx
 0059BA35    mov        dword ptr [ebp-4],eax
 0059BA38    mov        eax,dword ptr [ebp-10]
 0059BA3B    call       @LStrAddRef
 0059BA40    xor        eax,eax
 0059BA42    push       ebp
 0059BA43    push       59BE01
 0059BA48    push       dword ptr fs:[eax]
 0059BA4B    mov        dword ptr fs:[eax],esp
 0059BA4E    mov        byte ptr [ebp-9],0
 0059BA52    mov        ebx,0B
 0059BA57    mov        edx,dword ptr [ebp-8]
 0059BA5A    xor        eax,eax
 0059BA5C    mov        dword ptr [edx+14],eax; TRaveDataConnection.?f14:dword
 0059BA5F    test       eax,eax
>0059BA61    je         0059BA6F
 0059BA63    push       ebp
 0059BA64    call       0059B990
 0059BA69    pop        ecx
>0059BA6A    jmp        0059BDDE
 0059BA6F    mov        eax,[0061B68C]; ^gvar_0061EFB0:TDataConnectManager
 0059BA74    mov        eax,dword ptr [eax]
 0059BA76    mov        edx,dword ptr [ebp-10]
 0059BA79    call       0057A428
 0059BA7E    mov        esi,eax
 0059BA80    mov        eax,dword ptr [ebp-8]
 0059BA83    mov        dword ptr [eax+14],esi; TRaveDataConnection.?f14:dword
 0059BA86    test       esi,esi
>0059BA88    je         0059BA96
 0059BA8A    push       ebp
 0059BA8B    call       0059B990
 0059BA90    pop        ecx
>0059BA91    jmp        0059BDDE
 0059BA96    mov        eax,dword ptr [ebp-4]
 0059BA99    cmp        byte ptr [eax+58],0; TRaveDataSystem.?f58:byte
>0059BA9D    je         0059BAAE
 0059BA9F    mov        eax,dword ptr [ebp-4]
 0059BAA2    call       0059B4EC
 0059BAA7    mov        eax,dword ptr [ebp-4]
 0059BAAA    mov        byte ptr [eax+58],0; TRaveDataSystem.?f58:byte
 0059BAAE    lea        eax,[ebp-38]
 0059BAB1    mov        ecx,dword ptr [ebp-10]
 0059BAB4    mov        edx,59BE1C; 'RAVERTDATA_'
 0059BAB9    call       @LStrCat3
 0059BABE    mov        eax,dword ptr [ebp-38]
 0059BAC1    call       005794F4
 0059BAC6    mov        dword ptr [ebp-14],eax
 0059BAC9    lea        eax,[ebp-3C]
 0059BACC    mov        ecx,dword ptr [ebp-10]
 0059BACF    mov        edx,59BE30; 'RAVERTACK_'
 0059BAD4    call       @LStrCat3
 0059BAD9    mov        eax,dword ptr [ebp-3C]
 0059BADC    call       005794F4
 0059BAE1    mov        dword ptr [ebp-1C],eax
 0059BAE4    mov        eax,dword ptr [ebp-4]
 0059BAE7    call       0059B8D0
 0059BAEC    mov        edx,ebx
 0059BAEE    mov        eax,dword ptr [ebp-4]
 0059BAF1    call       0059B85C
 0059BAF6    mov        eax,dword ptr [ebp-14]
 0059BAF9    push       eax
 0059BAFA    call       kernel32.SetEvent
 0059BAFF    push       0
 0059BB01    call       kernel32.Sleep
 0059BB06    mov        eax,[0061BD04]; ^Application:TApplication
 0059BB0B    mov        eax,dword ptr [eax]
 0059BB0D    call       TApplication.ProcessMessages
 0059BB12    mov        eax,dword ptr [ebp-1C]
 0059BB15    mov        dword ptr [ebp-34],eax
 0059BB18    mov        eax,dword ptr [ebp-4]
 0059BB1B    mov        eax,dword ptr [eax+30]; TRaveDataSystem.?f30:dword
 0059BB1E    mov        dword ptr [ebp-30],eax
 0059BB21    push       64
 0059BB23    push       0
 0059BB25    lea        eax,[ebp-34]
 0059BB28    push       eax
 0059BB29    push       2
 0059BB2B    call       kernel32.WaitForMultipleObjects
 0059BB30    test       eax,eax
>0059BB32    jne        0059BB6C
 0059BB34    mov        eax,dword ptr [ebp-4]
 0059BB37    cmp        word ptr [eax+4A],0; TRaveDataSystem.?f4A:word
>0059BB3C    je         0059BB4C
 0059BB3E    mov        ebx,dword ptr [ebp-4]
 0059BB41    xor        ecx,ecx
 0059BB43    mov        edx,dword ptr [ebp-4]
 0059BB46    mov        eax,dword ptr [ebx+4C]; TRaveDataSystem.?f4C:dword
 0059BB49    call       dword ptr [ebx+48]
 0059BB4C    push       ebp
 0059BB4D    mov        eax,dword ptr [ebp-14]
 0059BB50    call       0059B8E8
 0059BB55    pop        ecx
 0059BB56    mov        eax,dword ptr [ebp-1C]
 0059BB59    push       eax
 0059BB5A    call       kernel32.CloseHandle
 0059BB5F    mov        eax,dword ptr [ebp-4]
 0059BB62    call       0059B8D0
>0059BB67    jmp        0059BDDE
 0059BB6C    cmp        eax,1
 0059BB6F    lea        eax,[ebp-40]
 0059BB72    mov        ecx,dword ptr [ebp-10]
 0059BB75    mov        edx,59BE44; 'RAVEDTDATA_'
 0059BB7A    call       @LStrCat3
 0059BB7F    mov        eax,dword ptr [ebp-40]
 0059BB82    call       005794F4
 0059BB87    mov        dword ptr [ebp-18],eax
 0059BB8A    lea        eax,[ebp-44]
 0059BB8D    mov        ecx,dword ptr [ebp-10]
 0059BB90    mov        edx,59BE58; 'RAVEDTACK_'
 0059BB95    call       @LStrCat3
 0059BB9A    mov        eax,dword ptr [ebp-44]
 0059BB9D    call       005794F4
 0059BBA2    mov        dword ptr [ebp-20],eax
 0059BBA5    mov        eax,dword ptr [ebp-18]
 0059BBA8    push       eax
 0059BBA9    call       kernel32.SetEvent
 0059BBAE    push       0
 0059BBB0    call       kernel32.Sleep
 0059BBB5    mov        byte ptr [ebp-21],0
 0059BBB9    mov        byte ptr [ebp-22],0
 0059BBBD    mov        eax,[0061B4B8]
 0059BBC2    movzx      eax,word ptr [eax+ebx*2]
 0059BBC6    test       eax,eax
>0059BBC8    jle        0059BD41
 0059BBCE    mov        dword ptr [ebp-28],eax
 0059BBD1    mov        esi,1
 0059BBD6    mov        eax,[0061BD04]; ^Application:TApplication
 0059BBDB    mov        eax,dword ptr [eax]
 0059BBDD    call       TApplication.ProcessMessages
 0059BBE2    mov        eax,dword ptr [ebp-1C]
 0059BBE5    mov        dword ptr [ebp-34],eax
 0059BBE8    mov        eax,dword ptr [ebp-20]
 0059BBEB    mov        dword ptr [ebp-30],eax
 0059BBEE    mov        eax,dword ptr [ebp-4]
 0059BBF1    mov        eax,dword ptr [eax+30]; TRaveDataSystem.?f30:dword
 0059BBF4    mov        dword ptr [ebp-2C],eax
 0059BBF7    push       64
 0059BBF9    push       0
 0059BBFB    lea        eax,[ebp-34]
 0059BBFE    push       eax
 0059BBFF    push       3
 0059BC01    call       kernel32.WaitForMultipleObjects
 0059BC06    test       eax,eax
>0059BC08    jne        0059BC3A
 0059BC0A    mov        eax,dword ptr [ebp-4]
 0059BC0D    cmp        word ptr [eax+4A],0; TRaveDataSystem.?f4A:word
>0059BC12    je         0059BC22
 0059BC14    mov        edi,dword ptr [ebp-4]
 0059BC17    xor        ecx,ecx
 0059BC19    mov        edx,dword ptr [ebp-4]
 0059BC1C    mov        eax,dword ptr [edi+4C]; TRaveDataSystem.?f4C:dword
 0059BC1F    call       dword ptr [edi+48]
 0059BC22    push       ebp
 0059BC23    mov        eax,dword ptr [ebp-14]
 0059BC26    call       0059B8E8
 0059BC2B    pop        ecx
 0059BC2C    mov        eax,dword ptr [ebp-18]
 0059BC2F    push       eax
 0059BC30    call       kernel32.CloseHandle
>0059BC35    jmp        0059BD41
 0059BC3A    cmp        eax,1
>0059BC3D    jne        0059BC6F
 0059BC3F    mov        eax,dword ptr [ebp-4]
 0059BC42    cmp        word ptr [eax+4A],0; TRaveDataSystem.?f4A:word
>0059BC47    je         0059BC57
 0059BC49    mov        edi,dword ptr [ebp-4]
 0059BC4C    xor        ecx,ecx
 0059BC4E    mov        edx,dword ptr [ebp-4]
 0059BC51    mov        eax,dword ptr [edi+4C]; TRaveDataSystem.?f4C:dword
 0059BC54    call       dword ptr [edi+48]
 0059BC57    push       ebp
 0059BC58    mov        eax,dword ptr [ebp-18]
 0059BC5B    call       0059B8E8
 0059BC60    pop        ecx
 0059BC61    mov        eax,dword ptr [ebp-14]
 0059BC64    push       eax
 0059BC65    call       kernel32.CloseHandle
>0059BC6A    jmp        0059BD41
 0059BC6F    cmp        eax,2
 0059BC72    mov        byte ptr [ebp-23],0
 0059BC76    mov        eax,dword ptr [ebp-4]
 0059BC79    cmp        word ptr [eax+3A],0; TRaveDataSystem.?f3A:word
>0059BC7E    je         0059BCC9
 0059BC80    mov        byte ptr [ebp-23],0
 0059BC84    mov        eax,[0061B4B8]
 0059BC89    movzx      eax,word ptr [eax+ebx*2]
 0059BC8D    push       eax
 0059BC8E    push       ebx
 0059BC8F    mov        eax,dword ptr [ebp-10]
 0059BC92    push       eax
 0059BC93    cmp        esi,1
 0059BC96    sete       al
 0059BC99    push       eax
 0059BC9A    lea        eax,[ebp-23]
 0059BC9D    push       eax
 0059BC9E    mov        edi,dword ptr [ebp-4]
 0059BCA1    mov        ecx,esi
 0059BCA3    mov        edx,dword ptr [ebp-4]
 0059BCA6    mov        eax,dword ptr [edi+3C]; TRaveDataSystem.?f3C:dword
 0059BCA9    call       dword ptr [edi+38]
 0059BCAC    cmp        byte ptr [ebp-23],2
>0059BCB0    jne        0059BCBE
 0059BCB2    mov        eax,[0061BD04]; ^Application:TApplication
 0059BCB7    mov        eax,dword ptr [eax]
 0059BCB9    call       TApplication.ProcessMessages
 0059BCBE    mov        al,byte ptr [ebp-23]
 0059BCC1    sub        al,2
<0059BCC3    jae        0059BC80
 0059BCC5    mov        byte ptr [ebp-21],1
 0059BCC9    mov        eax,[0061C4CC]
 0059BCCE    movzx      eax,word ptr [eax+ebx*2]
 0059BCD2    cmp        esi,eax
>0059BCD4    jl         0059BD31
 0059BCD6    mov        eax,dword ptr [ebp-4]
 0059BCD9    cmp        word ptr [eax+42],0; TRaveDataSystem.?f42:word
>0059BCDE    je         0059BD31
 0059BCE0    mov        byte ptr [ebp-23],0
 0059BCE4    mov        eax,[0061B4B8]
 0059BCE9    movzx      eax,word ptr [eax+ebx*2]
 0059BCED    push       eax
 0059BCEE    push       ebx
 0059BCEF    mov        eax,dword ptr [ebp-10]
 0059BCF2    push       eax
 0059BCF3    mov        eax,[0061C4CC]
 0059BCF8    movzx      eax,word ptr [eax+ebx*2]
 0059BCFC    cmp        esi,eax
 0059BCFE    sete       al
 0059BD01    push       eax
 0059BD02    lea        eax,[ebp-23]
 0059BD05    push       eax
 0059BD06    mov        edi,dword ptr [ebp-4]
 0059BD09    mov        ecx,esi
 0059BD0B    mov        edx,dword ptr [ebp-4]
 0059BD0E    mov        eax,dword ptr [edi+44]; TRaveDataSystem.?f44:dword
 0059BD11    call       dword ptr [edi+40]
 0059BD14    cmp        byte ptr [ebp-23],2
>0059BD18    jne        0059BD26
 0059BD1A    mov        eax,[0061BD04]; ^Application:TApplication
 0059BD1F    mov        eax,dword ptr [eax]
 0059BD21    call       TApplication.ProcessMessages
 0059BD26    mov        al,byte ptr [ebp-23]
 0059BD29    sub        al,2
<0059BD2B    jae        0059BCE0
 0059BD2D    mov        byte ptr [ebp-22],1
 0059BD31    cmp        byte ptr [ebp-23],1
>0059BD35    je         0059BD41
 0059BD37    inc        esi
 0059BD38    dec        dword ptr [ebp-28]
<0059BD3B    jne        0059BBD6
 0059BD41    cmp        byte ptr [ebp-9],0
>0059BD45    jne        0059BD59
 0059BD47    mov        eax,dword ptr [ebp-14]
 0059BD4A    push       eax
 0059BD4B    call       kernel32.CloseHandle
 0059BD50    mov        eax,dword ptr [ebp-18]
 0059BD53    push       eax
 0059BD54    call       kernel32.CloseHandle
 0059BD59    mov        eax,dword ptr [ebp-1C]
 0059BD5C    push       eax
 0059BD5D    call       kernel32.CloseHandle
 0059BD62    mov        eax,dword ptr [ebp-20]
 0059BD65    push       eax
 0059BD66    call       kernel32.CloseHandle
 0059BD6B    mov        eax,dword ptr [ebp-4]
 0059BD6E    call       0059B8D0
 0059BD73    cmp        byte ptr [ebp-9],0
>0059BD77    je         0059BD7D
 0059BD79    xor        esi,esi
>0059BD7B    jmp        0059BD80
 0059BD7D    or         esi,0FFFFFFFF
 0059BD80    cmp        byte ptr [ebp-21],0
>0059BD84    je         0059BDAF
 0059BD86    mov        eax,dword ptr [ebp-4]
 0059BD89    cmp        word ptr [eax+3A],0; TRaveDataSystem.?f3A:word
>0059BD8E    je         0059BDAF
 0059BD90    mov        byte ptr [ebp-23],0
 0059BD94    push       0
 0059BD96    push       ebx
 0059BD97    mov        eax,dword ptr [ebp-10]
 0059BD9A    push       eax
 0059BD9B    push       0
 0059BD9D    lea        eax,[ebp-23]
 0059BDA0    push       eax
 0059BDA1    mov        edi,dword ptr [ebp-4]
 0059BDA4    mov        ecx,esi
 0059BDA6    mov        edx,dword ptr [ebp-4]
 0059BDA9    mov        eax,dword ptr [edi+3C]; TRaveDataSystem.?f3C:dword
 0059BDAC    call       dword ptr [edi+38]
 0059BDAF    cmp        byte ptr [ebp-22],0
>0059BDB3    je         0059BDDE
 0059BDB5    mov        eax,dword ptr [ebp-4]
 0059BDB8    cmp        word ptr [eax+42],0; TRaveDataSystem.?f42:word
>0059BDBD    je         0059BDDE
 0059BDBF    mov        byte ptr [ebp-23],0
 0059BDC3    push       0
 0059BDC5    push       ebx
 0059BDC6    mov        eax,dword ptr [ebp-10]
 0059BDC9    push       eax
 0059BDCA    push       0
 0059BDCC    lea        eax,[ebp-23]
 0059BDCF    push       eax
 0059BDD0    mov        ebx,dword ptr [ebp-4]
 0059BDD3    mov        ecx,esi
 0059BDD5    mov        edx,dword ptr [ebp-4]
 0059BDD8    mov        eax,dword ptr [ebx+44]; TRaveDataSystem.?f44:dword
 0059BDDB    call       dword ptr [ebx+40]
 0059BDDE    xor        eax,eax
 0059BDE0    pop        edx
 0059BDE1    pop        ecx
 0059BDE2    pop        ecx
 0059BDE3    mov        dword ptr fs:[eax],edx
 0059BDE6    push       59BE08
 0059BDEB    lea        eax,[ebp-44]
 0059BDEE    mov        edx,4
 0059BDF3    call       @LStrArrayClr
 0059BDF8    lea        eax,[ebp-10]
 0059BDFB    call       @LStrClr
 0059BE00    ret
<0059BE01    jmp        @HandleFinally
<0059BE06    jmp        0059BDEB
 0059BE08    mov        al,byte ptr [ebp-9]
 0059BE0B    pop        edi
 0059BE0C    pop        esi
 0059BE0D    pop        ebx
 0059BE0E    mov        esp,ebp
 0059BE10    pop        ebp
 0059BE11    ret
*}
//end;

//0059BE64
//procedure sub_0059BE64(?:TRaveDataSystem; ?:TRaveDataConnection);
//begin
{*
 0059BE64    push       ebx
 0059BE65    push       esi
 0059BE66    mov        esi,edx
 0059BE68    mov        ebx,eax
 0059BE6A    mov        eax,ebx
 0059BE6C    call       0059B228
 0059BE71    cmp        word ptr [ebx+4A],0; TRaveDataSystem.?f4A:word
>0059BE76    je         0059BE82
 0059BE78    mov        cl,1
 0059BE7A    mov        edx,ebx
 0059BE7C    mov        eax,dword ptr [ebx+4C]; TRaveDataSystem.?f4C:dword
 0059BE7F    call       dword ptr [ebx+48]
 0059BE82    mov        eax,dword ptr [esi+18]; TRaveDataConnection.?f18:dword
 0059BE85    test       eax,eax
>0059BE87    je         0059BE94
 0059BE89    push       eax
 0059BE8A    call       kernel32.CloseHandle
 0059BE8F    xor        eax,eax
 0059BE91    mov        dword ptr [esi+18],eax; TRaveDataConnection.?f18:dword
 0059BE94    pop        esi
 0059BE95    pop        ebx
 0059BE96    ret
*}
//end;

//0059BE98
//function sub_0059BE98(?:TRaveDataSystem; ?:?; ?:TRaveDataConnection):?;
//begin
{*
 0059BE98    push       ebx
 0059BE99    push       esi
 0059BE9A    push       edi
 0059BE9B    add        esp,0FFFFFFD8
 0059BE9E    mov        dword ptr [esp],ecx
 0059BEA1    mov        esi,edx
 0059BEA3    mov        ebx,eax
 0059BEA5    mov        eax,ebx
 0059BEA7    call       0059B228
 0059BEAC    mov        edi,dword ptr [ebx+1C]; TRaveDataSystem.?f1C:Longint
 0059BEAF    mov        eax,dword ptr [ebx+18]; TRaveDataSystem.?f18:dword
 0059BEB2    mov        dword ptr [ebx+1C],eax; TRaveDataSystem.?f1C:Longint
 0059BEB5    mov        edx,edi
 0059BEB7    sub        edx,dword ptr [ebx+18]
 0059BEBA    mov        eax,ebx
 0059BEBC    call       0059B85C
 0059BEC1    xor        edx,edx
 0059BEC3    mov        eax,ebx
 0059BEC5    call       0059B85C
 0059BECA    mov        dword ptr [ebx+1C],edi; TRaveDataSystem.?f1C:Longint
 0059BECD    mov        eax,ebx
 0059BECF    call       0059B8D0
 0059BED4    test       esi,esi
>0059BED6    jne        0059BEE3
 0059BED8    mov        eax,ebx
 0059BEDA    call       0059B7BC
 0059BEDF    mov        esi,eax
>0059BEE1    jmp        0059BEEC
 0059BEE3    mov        edx,esi
 0059BEE5    mov        eax,ebx
 0059BEE7    call       0059B85C
 0059BEEC    mov        eax,dword ptr [esp]
 0059BEEF    mov        dword ptr [esp+1C],eax
 0059BEF3    mov        dword ptr [esp+20],esi
 0059BEF7    xor        eax,eax
 0059BEF9    mov        byte ptr [esp+24],al
 0059BEFD    test       al,al
>0059BEFF    je         0059BF0B
 0059BF01    mov        byte ptr [esp+4],1
>0059BF06    jmp        0059C1EC
 0059BF0B    mov        eax,dword ptr [esp]
 0059BF0E    mov        eax,dword ptr [eax+14]
 0059BF11    test       eax,eax
>0059BF13    je         0059C00F
 0059BF19    mov        byte ptr [esp+4],1
 0059BF1E    call       0057C30C
 0059BF23    mov        eax,dword ptr [esp]
 0059BF26    mov        eax,dword ptr [eax+14]
 0059BF29    call       0057C054
 0059BF2E    mov        esi,eax
 0059BF30    mov        eax,esi
 0059BF32    cmp        eax,0A
>0059BF35    ja         0059BFF0
 0059BF3B    jmp        dword ptr [eax*4+59BF42]
 0059BF3B    dd         59BFF0
 0059BF3B    dd         59BF6E
 0059BF3B    dd         59BF7B
 0059BF3B    dd         59BF88
 0059BF3B    dd         59BF95
 0059BF3B    dd         59BFA2
 0059BF3B    dd         59BFAF
 0059BF3B    dd         59BFBC
 0059BF3B    dd         59BFC9
 0059BF3B    dd         59BFD6
 0059BF3B    dd         59BFE3
 0059BF6E    mov        eax,dword ptr [esp]
 0059BF71    mov        eax,dword ptr [eax+14]
 0059BF74    call       0057C398
>0059BF79    jmp        0059BFF5
 0059BF7B    mov        eax,dword ptr [esp]
 0059BF7E    mov        eax,dword ptr [eax+14]
 0059BF81    call       0057C3F4
>0059BF86    jmp        0059BFF5
 0059BF88    mov        eax,dword ptr [esp]
 0059BF8B    mov        eax,dword ptr [eax+14]
 0059BF8E    call       0057C450
>0059BF93    jmp        0059BFF5
 0059BF95    mov        eax,dword ptr [esp]
 0059BF98    mov        eax,dword ptr [eax+14]
 0059BF9B    call       0057C594
>0059BFA0    jmp        0059BFF5
 0059BFA2    mov        eax,dword ptr [esp]
 0059BFA5    mov        eax,dword ptr [eax+14]
 0059BFA8    call       0057C4C8
>0059BFAD    jmp        0059BFF5
 0059BFAF    mov        eax,dword ptr [esp]
 0059BFB2    mov        eax,dword ptr [eax+14]
 0059BFB5    call       0057C624
>0059BFBA    jmp        0059BFF5
 0059BFBC    mov        eax,dword ptr [esp]
 0059BFBF    mov        eax,dword ptr [eax+14]
 0059BFC2    call       0057C6B4
>0059BFC7    jmp        0059BFF5
 0059BFC9    mov        eax,dword ptr [esp]
 0059BFCC    mov        eax,dword ptr [eax+14]
 0059BFCF    call       0057C6E8
>0059BFD4    jmp        0059BFF5
 0059BFD6    mov        eax,dword ptr [esp]
 0059BFD9    mov        eax,dword ptr [eax+14]
 0059BFDC    call       0057C718
>0059BFE1    jmp        0059BFF5
 0059BFE3    mov        eax,dword ptr [esp]
 0059BFE6    mov        eax,dword ptr [eax+14]
 0059BFE9    call       0057C74C
>0059BFEE    jmp        0059BFF5
 0059BFF0    mov        byte ptr [esp+4],0
 0059BFF5    cmp        byte ptr [esp+4],0
>0059BFFA    je         0059C1EC
 0059C000    mov        edx,dword ptr [esp]
 0059C003    mov        eax,ebx
 0059C005    call       0059B160
>0059C00A    jmp        0059C1EC
 0059C00F    mov        eax,dword ptr [esp]
 0059C012    mov        eax,dword ptr [eax+18]
 0059C015    push       eax
 0059C016    call       kernel32.SetEvent
 0059C01B    push       0
 0059C01D    call       kernel32.Sleep
 0059C022    mov        dword ptr [esp+8],1
 0059C02A    mov        byte ptr [esp+0C],0
 0059C02F    mov        byte ptr [esp+0D],0
 0059C034    mov        eax,[0061B4B8]
 0059C039    movzx      eax,word ptr [eax+esi*2]
 0059C03D    test       eax,eax
>0059C03F    jle        0059C16C
 0059C045    mov        dword ptr [esp+18],eax
 0059C049    mov        edi,1
 0059C04E    mov        eax,[0061BD04]; ^Application:TApplication
 0059C053    mov        eax,dword ptr [eax]
 0059C055    call       TApplication.ProcessMessages
 0059C05A    mov        eax,dword ptr [ebx+2C]; TRaveDataSystem.?f2C:dword
 0059C05D    mov        dword ptr [esp+10],eax
 0059C061    mov        eax,dword ptr [ebx+30]; TRaveDataSystem.?f30:dword
 0059C064    mov        dword ptr [esp+14],eax
 0059C068    push       64
 0059C06A    push       0
 0059C06C    lea        eax,[esp+18]
 0059C070    push       eax
 0059C071    push       2
 0059C073    call       kernel32.WaitForMultipleObjects
 0059C078    mov        dword ptr [esp+8],eax
 0059C07C    cmp        dword ptr [esp+8],0
>0059C081    je         0059C16C
 0059C087    cmp        dword ptr [esp+8],1
 0059C08C    mov        byte ptr [esp+0E],0
 0059C091    cmp        word ptr [ebx+3A],0; TRaveDataSystem.?f3A:word
>0059C096    je         0059C0E6
 0059C098    mov        byte ptr [esp+0E],0
 0059C09D    mov        eax,[0061B4B8]
 0059C0A2    movzx      eax,word ptr [eax+esi*2]
 0059C0A6    push       eax
 0059C0A7    push       esi
 0059C0A8    mov        eax,dword ptr [esp+8]
 0059C0AC    mov        eax,dword ptr [eax+8]
 0059C0AF    push       eax
 0059C0B0    cmp        edi,1
 0059C0B3    sete       al
 0059C0B6    push       eax
 0059C0B7    lea        eax,[esp+1E]
 0059C0BB    push       eax
 0059C0BC    mov        ecx,edi
 0059C0BE    mov        edx,ebx
 0059C0C0    mov        eax,dword ptr [ebx+3C]; TRaveDataSystem.?f3C:dword
 0059C0C3    call       dword ptr [ebx+38]
 0059C0C6    cmp        byte ptr [esp+0E],2
>0059C0CB    jne        0059C0D9
 0059C0CD    mov        eax,[0061BD04]; ^Application:TApplication
 0059C0D2    mov        eax,dword ptr [eax]
 0059C0D4    call       TApplication.ProcessMessages
 0059C0D9    mov        al,byte ptr [esp+0E]
 0059C0DD    sub        al,2
<0059C0DF    jae        0059C098
 0059C0E1    mov        byte ptr [esp+0C],1
 0059C0E6    mov        eax,[0061C4CC]
 0059C0EB    movzx      eax,word ptr [eax+esi*2]
 0059C0EF    cmp        edi,eax
>0059C0F1    jl         0059C150
 0059C0F3    cmp        word ptr [ebx+42],0; TRaveDataSystem.?f42:word
>0059C0F8    je         0059C150
 0059C0FA    mov        byte ptr [esp+0E],0
 0059C0FF    mov        eax,[0061B4B8]
 0059C104    movzx      eax,word ptr [eax+esi*2]
 0059C108    push       eax
 0059C109    push       esi
 0059C10A    mov        eax,dword ptr [esp+8]
 0059C10E    mov        eax,dword ptr [eax+8]
 0059C111    push       eax
 0059C112    mov        eax,[0061C4CC]
 0059C117    movzx      eax,word ptr [eax+esi*2]
 0059C11B    cmp        edi,eax
 0059C11D    sete       al
 0059C120    push       eax
 0059C121    lea        eax,[esp+1E]
 0059C125    push       eax
 0059C126    mov        ecx,edi
 0059C128    mov        edx,ebx
 0059C12A    mov        eax,dword ptr [ebx+44]; TRaveDataSystem.?f44:dword
 0059C12D    call       dword ptr [ebx+40]
 0059C130    cmp        byte ptr [esp+0E],2
>0059C135    jne        0059C143
 0059C137    mov        eax,[0061BD04]; ^Application:TApplication
 0059C13C    mov        eax,dword ptr [eax]
 0059C13E    call       TApplication.ProcessMessages
 0059C143    mov        al,byte ptr [esp+0E]
 0059C147    sub        al,2
<0059C149    jae        0059C0FA
 0059C14B    mov        byte ptr [esp+0D],1
 0059C150    cmp        byte ptr [esp+0E],1
>0059C155    jne        0059C161
 0059C157    mov        dword ptr [esp+8],1
>0059C15F    jmp        0059C16C
 0059C161    inc        edi
 0059C162    dec        dword ptr [esp+18]
<0059C166    jne        0059C04E
 0059C16C    cmp        dword ptr [esp+8],0
 0059C171    sete       byte ptr [esp+4]
 0059C176    cmp        byte ptr [esp+4],0
>0059C17B    je         0059C18B
 0059C17D    mov        edx,dword ptr [esp]
 0059C180    mov        eax,ebx
 0059C182    call       0059B160
 0059C187    xor        edi,edi
>0059C189    jmp        0059C18E
 0059C18B    or         edi,0FFFFFFFF
 0059C18E    cmp        byte ptr [esp+0C],0
>0059C193    je         0059C1BD
 0059C195    cmp        word ptr [ebx+3A],0; TRaveDataSystem.?f3A:word
>0059C19A    je         0059C1BD
 0059C19C    mov        byte ptr [esp+0E],0
 0059C1A1    push       0
 0059C1A3    push       esi
 0059C1A4    mov        eax,dword ptr [esp+8]
 0059C1A8    mov        eax,dword ptr [eax+8]
 0059C1AB    push       eax
 0059C1AC    push       0
 0059C1AE    lea        eax,[esp+1E]
 0059C1B2    push       eax
 0059C1B3    mov        ecx,edi
 0059C1B5    mov        edx,ebx
 0059C1B7    mov        eax,dword ptr [ebx+3C]; TRaveDataSystem.?f3C:dword
 0059C1BA    call       dword ptr [ebx+38]
 0059C1BD    cmp        byte ptr [esp+0D],0
>0059C1C2    je         0059C1EC
 0059C1C4    cmp        word ptr [ebx+42],0; TRaveDataSystem.?f42:word
>0059C1C9    je         0059C1EC
 0059C1CB    mov        byte ptr [esp+0E],0
 0059C1D0    push       0
 0059C1D2    push       esi
 0059C1D3    mov        eax,dword ptr [esp+8]
 0059C1D7    mov        eax,dword ptr [eax+8]
 0059C1DA    push       eax
 0059C1DB    push       0
 0059C1DD    lea        eax,[esp+1E]
 0059C1E1    push       eax
 0059C1E2    mov        ecx,edi
 0059C1E4    mov        edx,ebx
 0059C1E6    mov        eax,dword ptr [ebx+44]; TRaveDataSystem.?f44:dword
 0059C1E9    call       dword ptr [ebx+40]
 0059C1EC    mov        eax,dword ptr [ebx+18]; TRaveDataSystem.?f18:dword
 0059C1EF    add        eax,8
 0059C1F2    mov        dword ptr [ebx+1C],eax; TRaveDataSystem.?f1C:Longint
 0059C1F5    mov        eax,dword ptr [esp]
 0059C1F8    mov        dword ptr [esp+1C],eax
 0059C1FC    mov        dword ptr [esp+20],esi
 0059C200    mov        byte ptr [esp+24],0
 0059C205    mov        al,byte ptr [esp+4]
 0059C209    add        esp,28
 0059C20C    pop        edi
 0059C20D    pop        esi
 0059C20E    pop        ebx
 0059C20F    ret
*}
//end;

//0059C210
constructor TRaveDataView.Create(AOwner:TComponent);
begin
{*
 0059C210    push       ebp
 0059C211    mov        ebp,esp
 0059C213    push       ecx
 0059C214    push       ebx
 0059C215    push       esi
 0059C216    test       dl,dl
>0059C218    je         0059C222
 0059C21A    add        esp,0FFFFFFF0
 0059C21D    call       @ClassCreate
 0059C222    mov        byte ptr [ebp-1],dl
 0059C225    mov        ebx,eax
 0059C227    xor        edx,edx
 0059C229    mov        eax,ebx
 0059C22B    call       TRaveBaseDataView.Create
 0059C230    mov        dl,1
 0059C232    mov        eax,[0059AC30]; TRaveDataConnection
 0059C237    call       TObject.Create; TRaveDataConnection.Create
 0059C23C    mov        esi,eax
 0059C23E    mov        dword ptr [ebx+0A8],esi; TRaveDataView.?fA8:TRaveDataConnection
 0059C244    mov        dword ptr [esi+20],ebx; TRaveDataConnection.?f20:TRaveDataView
 0059C247    mov        eax,ebx
 0059C249    cmp        byte ptr [ebp-1],0
>0059C24D    je         0059C25E
 0059C24F    call       @AfterConstruction
 0059C254    pop        dword ptr fs:[0]
 0059C25B    add        esp,0C
 0059C25E    mov        eax,ebx
 0059C260    pop        esi
 0059C261    pop        ebx
 0059C262    pop        ecx
 0059C263    pop        ebp
 0059C264    ret
*}
end;

//0059C268
destructor TRaveDataView.Destroy;
begin
{*
 0059C268    push       ebx
 0059C269    push       esi
 0059C26A    call       @BeforeDestruction
 0059C26F    mov        ebx,edx
 0059C271    mov        esi,eax
 0059C273    lea        eax,[esi+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C279    call       FreeAndNil
 0059C27E    mov        edx,ebx
 0059C280    and        dl,0FC
 0059C283    mov        eax,esi
 0059C285    call       TRaveBaseDataView.Destroy
 0059C28A    test       bl,bl
>0059C28C    jle        0059C295
 0059C28E    mov        eax,esi
 0059C290    call       @ClassDestroy
 0059C295    pop        esi
 0059C296    pop        ebx
 0059C297    ret
*}
end;

//0059C298
procedure TRaveDataView.AssignTo(Dest:TPersistent);
begin
{*
 0059C298    push       ebp
 0059C299    mov        ebp,esp
 0059C29B    push       0
 0059C29D    push       ebx
 0059C29E    push       esi
 0059C29F    mov        esi,edx
 0059C2A1    mov        ebx,eax
 0059C2A3    xor        eax,eax
 0059C2A5    push       ebp
 0059C2A6    push       59C307
 0059C2AB    push       dword ptr fs:[eax]
 0059C2AE    mov        dword ptr fs:[eax],esp
 0059C2B1    mov        eax,esi
 0059C2B3    mov        edx,dword ptr ds:[59AD00]; TRaveDataView
 0059C2B9    call       @IsClass
 0059C2BE    test       al,al
>0059C2C0    je         0059C2E8
 0059C2C2    lea        eax,[ebp-4]
 0059C2C5    mov        edx,dword ptr [ebx+8]; TRaveDataView.?f8:TComponentName
 0059C2C8    call       @LStrLAsg
 0059C2CD    xor        edx,edx
 0059C2CF    mov        eax,ebx
 0059C2D1    mov        ecx,dword ptr [eax]
 0059C2D3    call       dword ptr [ecx+18]; TRaveBaseDataView.SetName
 0059C2D6    mov        edx,dword ptr [ebp-4]
 0059C2D9    mov        eax,esi
 0059C2DB    mov        ecx,dword ptr [eax]
 0059C2DD    call       dword ptr [ecx+18]
 0059C2E0    mov        eax,dword ptr [ebx+0C]; TRaveDataView.Tag:Integer
 0059C2E3    mov        dword ptr [esi+0C],eax
>0059C2E6    jmp        0059C2F1
 0059C2E8    mov        edx,esi
 0059C2EA    mov        eax,ebx
 0059C2EC    call       TPersistent.AssignTo
 0059C2F1    xor        eax,eax
 0059C2F3    pop        edx
 0059C2F4    pop        ecx
 0059C2F5    pop        ecx
 0059C2F6    mov        dword ptr fs:[eax],edx
 0059C2F9    push       59C30E
 0059C2FE    lea        eax,[ebp-4]
 0059C301    call       @LStrClr
 0059C306    ret
<0059C307    jmp        @HandleFinally
<0059C30C    jmp        0059C2FE
 0059C30E    pop        esi
 0059C30F    pop        ebx
 0059C310    pop        ecx
 0059C311    pop        ebp
 0059C312    ret
*}
end;

//0059C314
procedure sub_0059C314;
begin
{*
 0059C314    push       ebp
 0059C315    mov        ebp,esp
 0059C317    mov        ecx,0E
 0059C31C    push       0
 0059C31E    push       0
 0059C320    dec        ecx
<0059C321    jne        0059C31C
 0059C323    push       ebx
 0059C324    push       esi
 0059C325    push       edi
 0059C326    mov        dword ptr [ebp-4],eax
 0059C329    xor        eax,eax
 0059C32B    push       ebp
 0059C32C    push       59C6C7
 0059C331    push       dword ptr fs:[eax]
 0059C334    mov        dword ptr fs:[eax],esp
 0059C337    mov        eax,dword ptr [ebp-4]
 0059C33A    cmp        byte ptr [eax+7C],0; TRaveDataView.?f7C:byte
>0059C33E    jne        0059C685
 0059C344    mov        eax,dword ptr [ebp-4]
 0059C347    mov        edx,dword ptr [eax+0A4]; TRaveDataView.?fA4:String
 0059C34D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C352    call       0059B3DC
 0059C357    test       al,al
>0059C359    jne        0059C3A9
 0059C35B    push       0
 0059C35D    lea        eax,[ebp-20]
 0059C360    push       eax
 0059C361    mov        eax,dword ptr [ebp-4]
 0059C364    mov        eax,dword ptr [eax+0A4]; TRaveDataView.?fA4:String
 0059C36A    mov        dword ptr [ebp-28],eax
 0059C36D    mov        byte ptr [ebp-24],0B
 0059C371    lea        edx,[ebp-28]
 0059C374    xor        ecx,ecx
 0059C376    mov        eax,59C6E0; 'Error!  Duplicate data connections found with name \"%s\".  Aborting report.'
 0059C37B    call       Format
 0059C380    mov        eax,dword ptr [ebp-20]
 0059C383    mov        ebx,dword ptr ds:[61B830]
 0059C389    mov        ebx,dword ptr [ebx]
 0059C38B    lea        edx,[ebp-1C]
 0059C38E    call       ebx
 0059C390    mov        eax,dword ptr [ebp-1C]
 0059C393    mov        cx,word ptr ds:[59C72C]; 0x4
 0059C39A    mov        dl,1
 0059C39C    call       MessageDlg
 0059C3A1    mov        eax,dword ptr [ebp-4]
 0059C3A4    call       005A54D8
 0059C3A9    mov        eax,dword ptr [ebp-4]
 0059C3AC    mov        ebx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C3B2    cmp        dword ptr [ebx+18],0; TRaveDataConnection.?f18:dword
>0059C3B6    jne        0059C41F
 0059C3B8    mov        ecx,ebx
 0059C3BA    mov        eax,dword ptr [ebp-4]
 0059C3BD    mov        edx,dword ptr [eax+0A4]; TRaveDataView.?fA4:String
 0059C3C3    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C3C8    call       0059BA18
 0059C3CD    test       al,al
>0059C3CF    jne        0059C41F
 0059C3D1    push       0
 0059C3D3    lea        eax,[ebp-30]
 0059C3D6    push       eax
 0059C3D7    mov        eax,dword ptr [ebp-4]
 0059C3DA    mov        eax,dword ptr [eax+0A4]; TRaveDataView.?fA4:String
 0059C3E0    mov        dword ptr [ebp-28],eax
 0059C3E3    mov        byte ptr [ebp-24],0B
 0059C3E7    lea        edx,[ebp-28]
 0059C3EA    xor        ecx,ecx
 0059C3EC    mov        eax,59C738; 'Error!  Could not open data connection \"%s\".  Aborting report.'
 0059C3F1    call       Format
 0059C3F6    mov        eax,dword ptr [ebp-30]
 0059C3F9    mov        ebx,dword ptr ds:[61B830]
 0059C3FF    mov        ebx,dword ptr [ebx]
 0059C401    lea        edx,[ebp-2C]
 0059C404    call       ebx
 0059C406    mov        eax,dword ptr [ebp-2C]
 0059C409    mov        cx,word ptr ds:[59C72C]; 0x4
 0059C410    mov        dl,1
 0059C412    call       MessageDlg
 0059C417    mov        eax,dword ptr [ebp-4]
 0059C41A    call       005A54D8
 0059C41F    mov        eax,dword ptr [ebp-4]
 0059C422    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C428    mov        edx,9
 0059C42D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C432    call       0059BE98
 0059C437    mov        ebx,eax
 0059C439    mov        eax,dword ptr [ebp-4]
 0059C43C    mov        byte ptr [eax+7C],bl; TRaveDataView.?f7C:byte
 0059C43F    mov        eax,dword ptr [ebp-4]
 0059C442    mov        byte ptr [eax+60],bl; TRaveDataView.?f60:byte
 0059C445    mov        eax,dword ptr [ebp-4]
 0059C448    cmp        byte ptr [eax+7C],0; TRaveDataView.?f7C:byte
>0059C44C    je         0059C67D
 0059C452    mov        eax,dword ptr [ebp-4]
 0059C455    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C45B    mov        edx,4
 0059C460    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C465    call       0059BE98
 0059C46A    test       al,al
>0059C46C    je         0059C673
 0059C472    mov        eax,dword ptr [ebp-4]
 0059C475    mov        eax,dword ptr [eax+88]; TRaveDataView.?f88:TRaveDataRow
 0059C47B    call       0059E9E8
 0059C480    mov        eax,dword ptr [ebp-4]
 0059C483    mov        eax,dword ptr [eax+80]; TRaveDataView.?f80:TStringList
 0059C489    mov        edx,dword ptr [eax]
 0059C48B    call       dword ptr [edx+44]; TStringList.Clear
 0059C48E    xor        edx,edx
 0059C490    push       ebp
 0059C491    push       59C659
 0059C496    push       dword ptr fs:[edx]
 0059C499    mov        dword ptr fs:[edx],esp
 0059C49C    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C4A1    call       0059B7BC
 0059C4A6    dec        eax
 0059C4A7    test       eax,eax
>0059C4A9    jl         0059C64F
 0059C4AF    inc        eax
 0059C4B0    mov        dword ptr [ebp-18],eax
 0059C4B3    mov        dword ptr [ebp-8],0
 0059C4BA    mov        byte ptr [ebp-11],0
 0059C4BE    lea        edx,[ebp-0C]
 0059C4C1    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C4C6    call       0059B784
>0059C4CB    jmp        0059C52F
 0059C4CD    mov        eax,dword ptr [ebp-0C]
 0059C4D0    mov        al,byte ptr [eax]
 0059C4D2    sub        al,4E
>0059C4D4    je         0059C4DC
 0059C4D6    sub        al,6
>0059C4D8    je         0059C4F6
>0059C4DA    jmp        0059C515
 0059C4DC    lea        edx,[ebp-34]
 0059C4DF    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C4E4    call       0059B784
 0059C4E9    mov        eax,dword ptr [ebp-34]
 0059C4EC    lea        edx,[ebp-10]
 0059C4EF    call       005A5700
>0059C4F4    jmp        0059C522
 0059C4F6    lea        edx,[ebp-38]
 0059C4F9    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C4FE    call       0059B784
 0059C503    mov        edx,dword ptr [ebp-38]
 0059C506    mov        eax,[00579448]; TRPDataType
 0059C50B    call       GetEnumValue
 0059C510    mov        byte ptr [ebp-11],al
>0059C513    jmp        0059C522
 0059C515    lea        edx,[ebp-3C]
 0059C518    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C51D    call       0059B784
 0059C522    lea        edx,[ebp-0C]
 0059C525    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C52A    call       0059B784
 0059C52F    cmp        dword ptr [ebp-0C],0
<0059C533    jne        0059C4CD
 0059C535    xor        ebx,ebx
 0059C537    mov        eax,dword ptr [ebp-4]
 0059C53A    mov        edx,dword ptr [eax]
 0059C53C    call       dword ptr [edx+54]; TRaveDataView.sub_005AB0D4
 0059C53F    mov        edi,eax
 0059C541    dec        edi
 0059C542    test       edi,edi
>0059C544    jl         0059C61B
 0059C54A    inc        edi
 0059C54B    xor        esi,esi
 0059C54D    mov        edx,esi
 0059C54F    mov        eax,dword ptr [ebp-4]
 0059C552    mov        ecx,dword ptr [eax]
 0059C554    call       dword ptr [ecx+50]; TRaveDataView.sub_005AB0E4
 0059C557    mov        eax,dword ptr [eax+64]
 0059C55A    mov        edx,dword ptr [ebp-10]
 0059C55D    call       AnsiCompareText
 0059C562    test       eax,eax
>0059C564    jne        0059C613
 0059C56A    mov        edx,esi
 0059C56C    mov        eax,dword ptr [ebp-4]
 0059C56F    mov        ecx,dword ptr [eax]
 0059C571    call       dword ptr [ecx+50]; TRaveDataView.sub_005AB0E4
 0059C574    mov        ebx,eax
 0059C576    mov        eax,ebx
 0059C578    mov        edx,dword ptr [eax]
 0059C57A    call       dword ptr [edx+0D4]
 0059C580    cmp        al,byte ptr [ebp-11]
>0059C583    je         0059C61B
 0059C589    lea        eax,[ebp-44]
 0059C58C    push       eax
 0059C58D    mov        eax,dword ptr [ebp-4]
 0059C590    mov        eax,dword ptr [eax+8]; TRaveDataView.?f8:TComponentName
 0059C593    mov        dword ptr [ebp-64],eax
 0059C596    mov        byte ptr [ebp-60],0B
 0059C59A    mov        eax,dword ptr [ebx+64]
 0059C59D    mov        dword ptr [ebp-5C],eax
 0059C5A0    mov        byte ptr [ebp-58],0B
 0059C5A4    mov        eax,ebx
 0059C5A6    mov        edx,dword ptr [eax]
 0059C5A8    call       dword ptr [edx+0D4]
 0059C5AE    xor        edx,edx
 0059C5B0    mov        dl,al
 0059C5B2    lea        ecx,[ebp-68]
 0059C5B5    mov        eax,[00579448]; TRPDataType
 0059C5BA    call       GetEnumName
 0059C5BF    mov        eax,dword ptr [ebp-68]
 0059C5C2    mov        dword ptr [ebp-54],eax
 0059C5C5    mov        byte ptr [ebp-50],0B
 0059C5C9    lea        ecx,[ebp-6C]
 0059C5CC    xor        edx,edx
 0059C5CE    mov        dl,byte ptr [ebp-11]
 0059C5D1    mov        eax,[00579448]; TRPDataType
 0059C5D6    call       GetEnumName
 0059C5DB    mov        eax,dword ptr [ebp-6C]
 0059C5DE    mov        dword ptr [ebp-4C],eax
 0059C5E1    mov        byte ptr [ebp-48],0B
 0059C5E5    lea        edx,[ebp-64]
 0059C5E8    mov        ecx,3
 0059C5ED    mov        eax,59C780; 'Field %0:s:%1:s.  Datatype expected: %2:s  Datatype found: %3:s'
 0059C5F2    call       Format
 0059C5F7    mov        eax,dword ptr [ebp-44]
 0059C5FA    mov        ebx,dword ptr ds:[61B830]
 0059C600    mov        ebx,dword ptr [ebx]
 0059C602    lea        edx,[ebp-40]
 0059C605    call       ebx
 0059C607    mov        eax,dword ptr [ebp-40]
 0059C60A    call       005998CC
 0059C60F    xor        ebx,ebx
>0059C611    jmp        0059C61B
 0059C613    inc        esi
 0059C614    dec        edi
<0059C615    jne        0059C54D
 0059C61B    test       ebx,ebx
>0059C61D    je         0059C625
 0059C61F    mov        eax,dword ptr [ebp-8]
 0059C622    mov        dword ptr [ebx+5C],eax
 0059C625    lea        edx,[ebp-70]
 0059C628    mov        eax,dword ptr [ebp-10]
 0059C62B    call       005A564C
 0059C630    mov        edx,dword ptr [ebp-70]
 0059C633    mov        eax,dword ptr [ebp-4]
 0059C636    mov        eax,dword ptr [eax+80]; TRaveDataView.?f80:TStringList
 0059C63C    mov        ecx,ebx
 0059C63E    mov        ebx,dword ptr [eax]
 0059C640    call       dword ptr [ebx+3C]; TStringList.AddObject
 0059C643    inc        dword ptr [ebp-8]
 0059C646    dec        dword ptr [ebp-18]
<0059C649    jne        0059C4BA
 0059C64F    xor        eax,eax
 0059C651    pop        edx
 0059C652    pop        ecx
 0059C653    pop        ecx
 0059C654    mov        dword ptr fs:[eax],edx
>0059C657    jmp        0059C685
<0059C659    jmp        @HandleAnyException
 0059C65E    mov        eax,dword ptr [ebp-4]
 0059C661    mov        eax,dword ptr [eax+80]; TRaveDataView.?f80:TStringList
 0059C667    mov        edx,dword ptr [eax]
 0059C669    call       dword ptr [edx+44]; TStringList.Clear
 0059C66C    call       @DoneExcept
>0059C671    jmp        0059C685
 0059C673    mov        eax,dword ptr [ebp-4]
 0059C676    call       005A54D8
>0059C67B    jmp        0059C685
 0059C67D    mov        eax,dword ptr [ebp-4]
 0059C680    call       005A54D8
 0059C685    xor        eax,eax
 0059C687    pop        edx
 0059C688    pop        ecx
 0059C689    pop        ecx
 0059C68A    mov        dword ptr fs:[eax],edx
 0059C68D    push       59C6CE
 0059C692    lea        eax,[ebp-70]
 0059C695    mov        edx,3
 0059C69A    call       @LStrArrayClr
 0059C69F    lea        eax,[ebp-44]
 0059C6A2    mov        edx,7
 0059C6A7    call       @LStrArrayClr
 0059C6AC    lea        eax,[ebp-20]
 0059C6AF    mov        edx,2
 0059C6B4    call       @LStrArrayClr
 0059C6B9    lea        eax,[ebp-10]
 0059C6BC    mov        edx,2
 0059C6C1    call       @LStrArrayClr
 0059C6C6    ret
<0059C6C7    jmp        @HandleFinally
<0059C6CC    jmp        0059C692
 0059C6CE    pop        edi
 0059C6CF    pop        esi
 0059C6D0    pop        ebx
 0059C6D1    mov        esp,ebp
 0059C6D3    pop        ebp
 0059C6D4    ret
*}
end;

//0059C7C0
procedure sub_0059C7C0;
begin
{*
 0059C7C0    push       ebx
 0059C7C1    push       esi
 0059C7C2    mov        esi,eax
 0059C7C4    mov        eax,esi
 0059C7C6    call       005A0FBC
 0059C7CB    cmp        byte ptr [esi+7C],0; TRaveDataView.?f7C:byte
>0059C7CF    je         0059C7FE
 0059C7D1    mov        ecx,dword ptr [esi+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C7D7    mov        edx,0A
 0059C7DC    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C7E1    call       0059BE98
 0059C7E6    mov        ebx,eax
 0059C7E8    xor        bl,1
 0059C7EB    mov        byte ptr [esi+7C],bl; TRaveDataView.?f7C:byte
 0059C7EE    mov        byte ptr [esi+60],bl; TRaveDataView.?f60:byte
 0059C7F1    cmp        byte ptr [esi+7C],0; TRaveDataView.?f7C:byte
>0059C7F5    je         0059C7FE
 0059C7F7    mov        eax,esi
 0059C7F9    call       005A54D8
 0059C7FE    pop        esi
 0059C7FF    pop        ebx
 0059C800    ret
*}
end;

//0059C804
procedure sub_0059C804;
begin
{*
 0059C804    push       ebx
 0059C805    mov        ebx,eax
 0059C807    cmp        byte ptr [ebx+7C],0; TRaveDataView.?f7C:byte
>0059C80B    je         0059C832
 0059C80D    mov        eax,ebx
 0059C80F    mov        edx,dword ptr [eax]
 0059C811    call       dword ptr [edx+0E0]; TRaveDataView.sub_0059C7C0
 0059C817    mov        edx,dword ptr [ebx+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C81D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C822    call       0059BE64
 0059C827    mov        eax,dword ptr [ebx+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C82D    xor        edx,edx
 0059C82F    mov        dword ptr [eax+18],edx; TRaveDataConnection.?f18:dword
 0059C832    mov        eax,ebx
 0059C834    call       005A1008
 0059C839    pop        ebx
 0059C83A    ret
*}
end;

//0059C83C
//procedure sub_0059C83C(?:?);
//begin
{*
 0059C83C    push       ebx
 0059C83D    push       esi
 0059C83E    push       edi
 0059C83F    mov        esi,edx
 0059C841    mov        edi,eax
 0059C843    cmp        byte ptr [edi+7C],0; TRaveDataView.?f7C:byte
>0059C847    je         0059C8F1
 0059C84D    mov        ecx,dword ptr [edi+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059C853    mov        edx,esi
 0059C855    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C85A    call       0059BE98
 0059C85F    test       al,al
>0059C861    je         0059C8F1
 0059C867    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C86C    call       0059B7C8
 0059C871    mov        ebx,eax
 0059C873    mov        byte ptr [edi+85],bl; TRaveDataView.?f85:byte
 0059C879    test       bl,bl
>0059C87B    je         0059C8A0
 0059C87D    cmp        byte ptr [edi+84],0; TRaveDataView.?f84:byte
>0059C884    je         0059C8FF
 0059C886    dec        esi
>0059C887    jne        0059C894
 0059C889    mov        byte ptr [edi+7D],1; TRaveDataView.?f7D:byte
 0059C88D    mov        eax,edi
 0059C88F    call       005A09E8
 0059C894    mov        eax,dword ptr [edi+90]; TRaveDataView.?f90:TRaveDataRow
 0059C89A    mov        byte ptr [eax+0C],2; TRaveDataRow.?fC:byte
>0059C89E    jmp        0059C8FF
 0059C8A0    cmp        byte ptr [edi+84],0; TRaveDataView.?f84:byte
>0059C8A7    je         0059C8C5
 0059C8A9    mov        eax,edi
 0059C8AB    call       005A09E8
 0059C8B0    dec        esi
>0059C8B1    jne        0059C8BD
 0059C8B3    mov        eax,dword ptr [edi+90]; TRaveDataView.?f90:TRaveDataRow
 0059C8B9    mov        byte ptr [eax+0C],0; TRaveDataRow.?fC:byte
 0059C8BD    mov        ebx,dword ptr [edi+90]; TRaveDataView.?f90:TRaveDataRow
>0059C8C3    jmp        0059C8CB
 0059C8C5    mov        ebx,dword ptr [edi+88]; TRaveDataView.?f88:TRaveDataRow
 0059C8CB    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C8D0    call       0059B7BC
 0059C8D5    mov        esi,eax
 0059C8D7    mov        edx,esi
 0059C8D9    mov        eax,ebx
 0059C8DB    call       0059EA08
 0059C8E0    mov        edx,dword ptr [ebx+4]; TRaveDataRow.?f4:dword
 0059C8E3    mov        ecx,esi
 0059C8E5    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C8EA    call       0059B7D4
>0059C8EF    jmp        0059C8FF
 0059C8F1    mov        byte ptr [edi+85],1; TRaveDataView.?f85:byte
 0059C8F8    mov        eax,edi
 0059C8FA    call       005A54D8
 0059C8FF    pop        edi
 0059C900    pop        esi
 0059C901    pop        ebx
 0059C902    ret
*}
//end;

//0059C904
//procedure sub_0059C904(?:?);
//begin
{*
 0059C904    push       ebp
 0059C905    mov        ebp,esp
 0059C907    add        esp,0FFFFFFF4
 0059C90A    push       ebx
 0059C90B    push       esi
 0059C90C    push       edi
 0059C90D    xor        ecx,ecx
 0059C90F    mov        dword ptr [ebp-0C],ecx
 0059C912    mov        dword ptr [ebp-8],edx
 0059C915    mov        dword ptr [ebp-4],eax
 0059C918    xor        eax,eax
 0059C91A    push       ebp
 0059C91B    push       59CAE1
 0059C920    push       dword ptr fs:[eax]
 0059C923    mov        dword ptr fs:[eax],esp
 0059C926    mov        eax,dword ptr [ebp-4]
 0059C929    cmp        dword ptr [eax+94],0; TRaveDataView.?f94:TRaveDataRow
>0059C930    jne        0059CACB
 0059C936    mov        eax,dword ptr [ebp-4]
 0059C939    mov        edx,dword ptr [eax]
 0059C93B    call       dword ptr [edx+0DC]; TRaveDataView.sub_0059C314
 0059C941    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C946    call       0059B8D0
 0059C94B    mov        edx,6
 0059C950    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C955    call       0059B85C
 0059C95A    mov        eax,dword ptr [ebp-8]
 0059C95D    mov        edx,dword ptr [eax]
 0059C95F    call       dword ptr [edx+14]
 0059C962    mov        esi,eax
 0059C964    dec        esi
 0059C965    test       esi,esi
>0059C967    jl         0059CAAA
 0059C96D    inc        esi
 0059C96E    xor        ebx,ebx
 0059C970    lea        ecx,[ebp-0C]
 0059C973    mov        edx,ebx
 0059C975    mov        eax,dword ptr [ebp-8]
 0059C978    mov        edi,dword ptr [eax]
 0059C97A    call       dword ptr [edi+0C]
 0059C97D    mov        edx,dword ptr [ebp-0C]
 0059C980    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C985    call       0059B7EC
 0059C98A    mov        eax,ebx
 0059C98C    mov        ecx,3
 0059C991    cdq
 0059C992    idiv       eax,ecx
 0059C994    cmp        edx,2
>0059C997    jne        0059CAA2
 0059C99D    mov        edx,ebx
 0059C99F    mov        eax,dword ptr [ebp-8]
 0059C9A2    mov        ecx,dword ptr [eax]
 0059C9A4    call       dword ptr [ecx+18]
 0059C9A7    mov        edi,eax
 0059C9A9    test       edi,edi
>0059C9AB    je         0059CA96
 0059C9B1    mov        eax,edi
 0059C9B3    mov        edx,dword ptr [eax]
 0059C9B5    call       dword ptr [edx+0D4]
 0059C9BB    xor        edx,edx
 0059C9BD    mov        dl,al
 0059C9BF    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059C9C4    call       0059B85C
 0059C9C9    mov        eax,edi
 0059C9CB    mov        edx,dword ptr [eax]
 0059C9CD    call       dword ptr [edx+0D4]
 0059C9D3    and        eax,7F
 0059C9D6    cmp        eax,8
>0059C9D9    ja         0059CAA2
 0059C9DF    jmp        dword ptr [eax*4+59C9E6]
 0059C9DF    dd         59CAA2
 0059C9DF    dd         59CA0F
 0059C9DF    dd         59CA27
 0059C9DF    dd         59CA3F
 0059C9DF    dd         59CA5C
 0059C9DF    dd         59CA5C
 0059C9DF    dd         59CA79
 0059C9DF    dd         59CA79
 0059C9DF    dd         59CA79
>0059CA0A    jmp        0059CAA2
 0059CA0F    mov        eax,edi
 0059CA11    mov        edx,dword ptr [eax]
 0059CA13    call       dword ptr [edx+0E0]
 0059CA19    mov        edx,eax
 0059CA1B    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA20    call       0059B85C
>0059CA25    jmp        0059CAA2
 0059CA27    mov        eax,edi
 0059CA29    mov        edx,dword ptr [eax]
 0059CA2B    call       dword ptr [edx+0DC]
 0059CA31    mov        edx,eax
 0059CA33    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA38    call       0059B868
>0059CA3D    jmp        0059CAA2
 0059CA3F    mov        eax,edi
 0059CA41    mov        edx,dword ptr [eax]
 0059CA43    call       dword ptr [edx+0E8]
 0059CA49    add        esp,0FFFFFFF4
 0059CA4C    fstp       tbyte ptr [esp]
 0059CA4F    wait
 0059CA50    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA55    call       0059B874
>0059CA5A    jmp        0059CAA2
 0059CA5C    mov        eax,edi
 0059CA5E    mov        edx,dword ptr [eax]
 0059CA60    call       dword ptr [edx+0EC]
 0059CA66    add        esp,0FFFFFFF8
 0059CA69    fistp      qword ptr [esp]
 0059CA6C    wait
 0059CA6D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA72    call       0059B898
>0059CA77    jmp        0059CAA2
 0059CA79    mov        eax,edi
 0059CA7B    mov        edx,dword ptr [eax]
 0059CA7D    call       dword ptr [edx+0F0]
 0059CA83    add        esp,0FFFFFFF8
 0059CA86    fstp       qword ptr [esp]
 0059CA89    wait
 0059CA8A    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA8F    call       0059B8B4
>0059CA94    jmp        0059CAA2
 0059CA96    xor        edx,edx
 0059CA98    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CA9D    call       0059B85C
 0059CAA2    inc        ebx
 0059CAA3    dec        esi
<0059CAA4    jne        0059C970
 0059CAAA    mov        eax,dword ptr [ebp-4]
 0059CAAD    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CAB3    xor        edx,edx
 0059CAB5    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CABA    call       0059BE98
 0059CABF    test       al,al
>0059CAC1    jne        0059CACB
 0059CAC3    mov        eax,dword ptr [ebp-4]
 0059CAC6    call       005A54D8
 0059CACB    xor        eax,eax
 0059CACD    pop        edx
 0059CACE    pop        ecx
 0059CACF    pop        ecx
 0059CAD0    mov        dword ptr fs:[eax],edx
 0059CAD3    push       59CAE8
 0059CAD8    lea        eax,[ebp-0C]
 0059CADB    call       @LStrClr
 0059CAE0    ret
<0059CAE1    jmp        @HandleFinally
<0059CAE6    jmp        0059CAD8
 0059CAE8    pop        edi
 0059CAE9    pop        esi
 0059CAEA    pop        ebx
 0059CAEB    mov        esp,ebp
 0059CAED    pop        ebp
 0059CAEE    ret
*}
//end;

//0059CAF0
//procedure sub_0059CAF0(?:?);
//begin
{*
 0059CAF0    push       ebp
 0059CAF1    mov        ebp,esp
 0059CAF3    add        esp,0FFFFFFF4
 0059CAF6    push       ebx
 0059CAF7    push       esi
 0059CAF8    push       edi
 0059CAF9    xor        ecx,ecx
 0059CAFB    mov        dword ptr [ebp-0C],ecx
 0059CAFE    mov        dword ptr [ebp-8],edx
 0059CB01    mov        dword ptr [ebp-4],eax
 0059CB04    xor        eax,eax
 0059CB06    push       ebp
 0059CB07    push       59CBA9
 0059CB0C    push       dword ptr fs:[eax]
 0059CB0F    mov        dword ptr fs:[eax],esp
 0059CB12    mov        eax,dword ptr [ebp-4]
 0059CB15    cmp        dword ptr [eax+94],0; TRaveDataView.?f94:TRaveDataRow
>0059CB1C    jne        0059CB93
 0059CB1E    mov        eax,dword ptr [ebp-4]
 0059CB21    mov        edx,dword ptr [eax]
 0059CB23    call       dword ptr [edx+0DC]; TRaveDataView.sub_0059C314
 0059CB29    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CB2E    call       0059B8D0
 0059CB33    mov        edx,8
 0059CB38    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CB3D    call       0059B85C
 0059CB42    mov        eax,dword ptr [ebp-8]
 0059CB45    mov        edx,dword ptr [eax]
 0059CB47    call       dword ptr [edx+14]
 0059CB4A    mov        ebx,eax
 0059CB4C    dec        ebx
 0059CB4D    test       ebx,ebx
>0059CB4F    jl         0059CB72
 0059CB51    inc        ebx
 0059CB52    xor        esi,esi
 0059CB54    lea        ecx,[ebp-0C]
 0059CB57    mov        edx,esi
 0059CB59    mov        eax,dword ptr [ebp-8]
 0059CB5C    mov        edi,dword ptr [eax]
 0059CB5E    call       dword ptr [edi+0C]
 0059CB61    mov        edx,dword ptr [ebp-0C]
 0059CB64    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CB69    call       0059B7EC
 0059CB6E    inc        esi
 0059CB6F    dec        ebx
<0059CB70    jne        0059CB54
 0059CB72    mov        eax,dword ptr [ebp-4]
 0059CB75    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CB7B    xor        edx,edx
 0059CB7D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CB82    call       0059BE98
 0059CB87    test       al,al
>0059CB89    jne        0059CB93
 0059CB8B    mov        eax,dword ptr [ebp-4]
 0059CB8E    call       005A54D8
 0059CB93    xor        eax,eax
 0059CB95    pop        edx
 0059CB96    pop        ecx
 0059CB97    pop        ecx
 0059CB98    mov        dword ptr fs:[eax],edx
 0059CB9B    push       59CBB0
 0059CBA0    lea        eax,[ebp-0C]
 0059CBA3    call       @LStrClr
 0059CBA8    ret
<0059CBA9    jmp        @HandleFinally
<0059CBAE    jmp        0059CBA0
 0059CBB0    pop        edi
 0059CBB1    pop        esi
 0059CBB2    pop        ebx
 0059CBB3    mov        esp,ebp
 0059CBB5    pop        ebp
 0059CBB6    ret
*}
//end;

//0059CBB8
//procedure sub_0059CBB8(?:?);
//begin
{*
 0059CBB8    push       ebp
 0059CBB9    mov        ebp,esp
 0059CBBB    mov        ecx,5
 0059CBC0    push       0
 0059CBC2    push       0
 0059CBC4    dec        ecx
<0059CBC5    jne        0059CBC0
 0059CBC7    push       ecx
 0059CBC8    push       ebx
 0059CBC9    push       esi
 0059CBCA    push       edi
 0059CBCB    mov        dword ptr [ebp-8],edx
 0059CBCE    mov        dword ptr [ebp-4],eax
 0059CBD1    xor        eax,eax
 0059CBD3    push       ebp
 0059CBD4    push       59CEC0
 0059CBD9    push       dword ptr fs:[eax]
 0059CBDC    mov        dword ptr fs:[eax],esp
 0059CBDF    mov        byte ptr [ebp-1D],0
 0059CBE3    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CBE8    call       0059B258
 0059CBED    test       al,al
>0059CBEF    je         0059CE98
 0059CBF5    xor        edx,edx
 0059CBF7    push       ebp
 0059CBF8    push       59CE8E
 0059CBFD    push       dword ptr fs:[edx]
 0059CC00    mov        dword ptr fs:[edx],esp
 0059CC03    mov        eax,dword ptr [ebp-4]
 0059CC06    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CC0C    mov        eax,dword ptr [ebp-4]
 0059CC0F    mov        edx,dword ptr [eax+0A4]; TRaveDataView.?fA4:String
 0059CC15    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CC1A    call       0059BA18
 0059CC1F    test       al,al
>0059CC21    jne        0059CC2D
 0059CC23    call       @TryFinallyExit
>0059CC28    jmp        0059CE98
 0059CC2D    mov        eax,dword ptr [ebp-4]
 0059CC30    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CC36    mov        edx,9
 0059CC3B    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CC40    call       0059BE98
 0059CC45    test       al,al
>0059CC47    jne        0059CC5B
 0059CC49    mov        eax,dword ptr [ebp-4]
 0059CC4C    call       005A54D8
 0059CC51    call       @TryFinallyExit
>0059CC56    jmp        0059CE98
 0059CC5B    mov        byte ptr [ebp-1D],1
 0059CC5F    mov        eax,dword ptr [ebp-4]
 0059CC62    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CC68    mov        edx,4
 0059CC6D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CC72    call       0059BE98
 0059CC77    test       al,al
>0059CC79    je         0059CDEB
 0059CC7F    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CC84    call       0059B7BC
 0059CC89    dec        eax
 0059CC8A    test       eax,eax
>0059CC8C    jl         0059CDF3
 0059CC92    inc        eax
 0059CC93    mov        dword ptr [ebp-24],eax
 0059CC96    lea        edx,[ebp-0C]
 0059CC99    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CC9E    call       0059B784
 0059CCA3    xor        ebx,ebx
 0059CCA5    xor        edi,edi
 0059CCA7    lea        eax,[ebp-18]
 0059CCAA    call       @LStrClr
 0059CCAF    lea        eax,[ebp-1C]
 0059CCB2    call       @LStrClr
 0059CCB7    lea        eax,[ebp-10]
 0059CCBA    call       @LStrClr
 0059CCBF    lea        eax,[ebp-14]
 0059CCC2    call       @LStrClr
>0059CCC7    jmp        0059CD97
 0059CCCC    mov        eax,dword ptr [ebp-0C]
 0059CCCF    movzx      eax,byte ptr [eax]
 0059CCD2    add        eax,0FFFFFFBC
 0059CCD5    cmp        eax,13
>0059CCD8    ja         0059CD8A
 0059CCDE    mov        al,byte ptr [eax+59CCEB]
 0059CCE4    jmp        dword ptr [eax*4+59CCFF]
 0059CCE4    db         5
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         4
 0059CCE4    db         0
 0059CCE4    db         1
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         2
 0059CCE4    db         0
 0059CCE4    db         0
 0059CCE4    db         3
 0059CCE4    dd         59CD8A
 0059CCE4    dd         59CD17
 0059CCE4    dd         59CD37
 0059CCE4    dd         59CD55
 0059CCE4    dd         59CD6E
 0059CCE4    dd         59CD7D
 0059CD17    lea        edx,[ebp-10]
 0059CD1A    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD1F    call       0059B784
 0059CD24    lea        ecx,[ebp-14]
 0059CD27    mov        eax,dword ptr [ebp-4]
 0059CD2A    mov        eax,dword ptr [eax+8]; TRaveDataView.?f8:TComponentName
 0059CD2D    mov        edx,dword ptr [ebp-10]
 0059CD30    call       005A0340
>0059CD35    jmp        0059CD8A
 0059CD37    lea        edx,[ebp-28]
 0059CD3A    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD3F    call       0059B784
 0059CD44    mov        edx,dword ptr [ebp-28]
 0059CD47    mov        eax,[00579448]; TRPDataType
 0059CD4C    call       GetEnumValue
 0059CD51    mov        ebx,eax
>0059CD53    jmp        0059CD8A
 0059CD55    lea        edx,[ebp-2C]
 0059CD58    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD5D    call       0059B784
 0059CD62    mov        eax,dword ptr [ebp-2C]
 0059CD65    call       StrToInt
 0059CD6A    mov        edi,eax
>0059CD6C    jmp        0059CD8A
 0059CD6E    lea        edx,[ebp-18]
 0059CD71    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD76    call       0059B784
>0059CD7B    jmp        0059CD8A
 0059CD7D    lea        edx,[ebp-1C]
 0059CD80    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD85    call       0059B784
 0059CD8A    lea        edx,[ebp-0C]
 0059CD8D    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CD92    call       0059B784
 0059CD97    cmp        dword ptr [ebp-0C],0
<0059CD9B    jne        0059CCCC
 0059CDA1    mov        dl,1
 0059CDA3    mov        eax,[0059FBA8]; TRaveDataFieldInfo
 0059CDA8    call       TObject.Create; TRaveDataFieldInfo.Create
 0059CDAD    mov        esi,eax
 0059CDAF    lea        eax,[esi+4]; TRaveDataFieldInfo.?f4:String
 0059CDB2    mov        edx,dword ptr [ebp-10]
 0059CDB5    call       @LStrAsg
 0059CDBA    mov        byte ptr [esi+8],bl; TRaveDataFieldInfo.?f8:byte
 0059CDBD    mov        dword ptr [esi+0C],edi; TRaveDataFieldInfo.?fC:dword
 0059CDC0    lea        eax,[esi+10]; TRaveDataFieldInfo.?f10:String
 0059CDC3    mov        edx,dword ptr [ebp-18]
 0059CDC6    call       @LStrAsg
 0059CDCB    lea        eax,[esi+14]; TRaveDataFieldInfo.?f14:String
 0059CDCE    mov        edx,dword ptr [ebp-1C]
 0059CDD1    call       @LStrAsg
 0059CDD6    mov        edx,esi
 0059CDD8    mov        eax,dword ptr [ebp-8]
 0059CDDB    call       TList.Add
 0059CDE0    dec        dword ptr [ebp-24]
<0059CDE3    jne        0059CC96
>0059CDE9    jmp        0059CDF3
 0059CDEB    mov        eax,dword ptr [ebp-4]
 0059CDEE    call       005A54D8
 0059CDF3    xor        eax,eax
 0059CDF5    pop        edx
 0059CDF6    pop        ecx
 0059CDF7    pop        ecx
 0059CDF8    mov        dword ptr fs:[eax],edx
 0059CDFB    push       59CE98
 0059CE00    xor        eax,eax
 0059CE02    push       ebp
 0059CE03    push       59CE86
 0059CE08    push       dword ptr fs:[eax]
 0059CE0B    mov        dword ptr fs:[eax],esp
 0059CE0E    xor        eax,eax
 0059CE10    push       ebp
 0059CE11    push       59CE67
 0059CE16    push       dword ptr fs:[eax]
 0059CE19    mov        dword ptr fs:[eax],esp
 0059CE1C    cmp        byte ptr [ebp-1D],0
>0059CE20    je         0059CE46
 0059CE22    mov        eax,dword ptr [ebp-4]
 0059CE25    mov        ecx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CE2B    mov        edx,0A
 0059CE30    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CE35    call       0059BE98
 0059CE3A    test       al,al
>0059CE3C    jne        0059CE46
 0059CE3E    mov        eax,dword ptr [ebp-4]
 0059CE41    call       005A54D8
 0059CE46    xor        eax,eax
 0059CE48    pop        edx
 0059CE49    pop        ecx
 0059CE4A    pop        ecx
 0059CE4B    mov        dword ptr fs:[eax],edx
 0059CE4E    push       59CE6E
 0059CE53    mov        eax,dword ptr [ebp-4]
 0059CE56    mov        edx,dword ptr [eax+0A8]; TRaveDataView.?fA8:TRaveDataConnection
 0059CE5C    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CE61    call       0059BE64
 0059CE66    ret
<0059CE67    jmp        @HandleFinally
<0059CE6C    jmp        0059CE53
 0059CE6E    xor        eax,eax
 0059CE70    pop        edx
 0059CE71    pop        ecx
 0059CE72    pop        ecx
 0059CE73    mov        dword ptr fs:[eax],edx
 0059CE76    push       59CE8D
 0059CE7B    mov        eax,[00617148]; gvar_00617148:TRaveDataSystem
 0059CE80    call       0059B338
 0059CE85    ret
<0059CE86    jmp        @HandleFinally
<0059CE8B    jmp        0059CE7B
 0059CE8D    ret
<0059CE8E    jmp        @HandleFinally
<0059CE93    jmp        0059CE00
 0059CE98    xor        eax,eax
 0059CE9A    pop        edx
 0059CE9B    pop        ecx
 0059CE9C    pop        ecx
 0059CE9D    mov        dword ptr fs:[eax],edx
 0059CEA0    push       59CEC7
 0059CEA5    lea        eax,[ebp-2C]
 0059CEA8    mov        edx,2
 0059CEAD    call       @LStrArrayClr
 0059CEB2    lea        eax,[ebp-1C]
 0059CEB5    mov        edx,5
 0059CEBA    call       @LStrArrayClr
 0059CEBF    ret
<0059CEC0    jmp        @HandleFinally
<0059CEC5    jmp        0059CEA5
 0059CEC7    pop        edi
 0059CEC8    pop        esi
 0059CEC9    pop        ebx
 0059CECA    mov        esp,ebp
 0059CECC    pop        ebp
 0059CECD    ret
*}
//end;

Initialization
//0059CF14
{*
 0059CF14    sub        dword ptr ds:[61F868],1
>0059CF1B    jae        0059CF2C
 0059CF1D    mov        edx,59AEEC; sub_0059AEEC
 0059CF22    mov        eax,59CF38; 'RVCL'
 0059CF27    call       005A7E10
 0059CF2C    ret
*}
Finalization
//0059CED0
{*
 0059CED0    push       ebp
 0059CED1    mov        ebp,esp
 0059CED3    xor        eax,eax
 0059CED5    push       ebp
 0059CED6    push       59CF0A
 0059CEDB    push       dword ptr fs:[eax]
 0059CEDE    mov        dword ptr fs:[eax],esp
 0059CEE1    inc        dword ptr ds:[61F868]
>0059CEE7    jne        0059CEFC
 0059CEE9    cmp        dword ptr ds:[617148],0; gvar_00617148:TRaveDataSystem
>0059CEF0    je         0059CEFC
 0059CEF2    mov        eax,617148; gvar_00617148:TRaveDataSystem
 0059CEF7    call       FreeAndNil
 0059CEFC    xor        eax,eax
 0059CEFE    pop        edx
 0059CEFF    pop        ecx
 0059CF00    pop        ecx
 0059CF01    mov        dword ptr fs:[eax],edx
 0059CF04    push       59CF11
 0059CF09    ret
<0059CF0A    jmp        @HandleFinally
<0059CF0F    jmp        0059CF09
 0059CF11    pop        ebp
 0059CF12    ret
*}
end.