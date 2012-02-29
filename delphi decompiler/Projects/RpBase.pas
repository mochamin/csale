{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpBase;

interface

uses
  Classes, Windows, Graphics, RpDefine, RpDevice;

type
  TRPBaseComponent = class(TRpComponent)
  end;
  TBaseReport = class(TRPBaseComponent)
  public
    f34:Pointer;//f34
    f38:dword;//f38
    //f40:?;//f40
    f54:dword;//f54
    //fE0:?;//fE0
    //f130:?;//f130
    f6D0:dword;//f6D0
    f6D4:Pointer;//f6D4
    f6D8:Pointer;//f6D8
    f6DC:byte;//f6DC
    //f6E0:?;//f6E0
    f720:dword;//f720
    f724:TFontPitch;//f724
    f728:?Double;//f728
    f730:?Double;//f730
    f738:?Double;//f738
    f740:?Double;//f740
    f744:dword;//f744
    f748:?Double;//f748
    f74C:dword;//f74C
    f750:?Double;//f750
    f754:dword;//f754
    f758:byte;//f758
    f759:byte;//f759
    f75A:byte;//f75A
    f75B:byte;//f75B
    f75C:byte;//f75C
    f75D:byte;//f75D
    f75E:?Float;//f75E
    f760:byte;//f760
    f762:word;//f762
    f764:HFONT;//f764
    f768:TFontCharset;//f768
    f770:Pointer;//f770
    f778:dword;//f778
    f77A:word;//f77A
    f77C:dword;//f77C
    f784:byte;//f784
    f785:byte;//f785
    f788:HGDIOBJ;//f788
    f78C:dword;//f78C
    f790:dword;//f790
    f794:TStringList;//f794
    f798:byte;//f798
    f7A0:dword;//f7A0
    f7A4:dword;//f7A4
    f7A8:byte;//f7A8
    f7AC:Pointer;//f7AC
    f7B0:byte;//f7B0
    f7B1:byte;//f7B1
    f7B4:dword;//f7B4
    f7B8:dword;//f7B8
    f7BC:TList;//f7BC
    f7C0:TList;//f7C0
    f7C4:dword;//f7C4
    f7C8:dword;//f7C8
    f7D0:?Double;//f7D0
    f7D4:dword;//f7D4
    f7D8:?Double;//f7D8
    f7DC:dword;//f7DC
    f7E0:byte;//f7E0
    f7E1:byte;//f7E1
    f7E8:?Double;//f7E8
    f7EC:dword;//f7EC
    f7F0:?Double;//f7F0
    f7F4:dword;//f7F4
    f7F8:?Double;//f7F8
    f7FC:dword;//f7FC
    f800:?Double;//f800
    f804:dword;//f804
    f840:?Double;//f840
    f844:dword;//f844
    f848:?Double;//f848
    f84C:dword;//f84C
    f850:?Double;//f850
    f854:dword;//f854
    f858:String;//f858
    f85C:dword;//f85C
    f860:?Double;//f860
    f864:dword;//f864
    f868:?Double;//f868
    f86C:dword;//f86C
    f870:?Double;//f870
    f874:dword;//f874
    f878:?Double;//f878
    f87C:dword;//f87C
    f880:?Double;//f880
    f884:dword;//f884
    f888:?Double;//f888
    f88C:dword;//f88C
    f890:?Double;//f890
    f894:dword;//f894
    f898:?Double;//f898
    f89C:dword;//f89C
    f8A0:?Double;//f8A0
    f8A4:dword;//f8A4
    f8A8:?Double;//f8A8
    f8AC:dword;//f8AC
    f8B0:?Double;//f8B0
    f8B8:dword;//f8B8
    f8BC:dword;//f8BC
    f8C0:byte;//f8C0
    f8C8:?Double;//f8C8
    f8D0:byte;//f8D0
    f8D4:dword;//f8D4
    f8D8:byte;//f8D8
    f8DC:Single;//f8DC
    f8E0:Single;//f8E0
    f8E4:Single;//f8E4
    f8E8:dword;//f8E8
    f8EC:dword;//f8EC
    f8F0:PChar;//f8F0
    f8F4:PChar;//f8F4
    f8F8:PChar;//f8F8
    f8FC:byte;//f8FC
    f8FD:byte;//f8FD
    f900:?Double;//f900
    f904:dword;//f904
    f908:?Double;//f908
    f90C:dword;//f90C
    f910:Integer;//f910
    f914:Integer;//f914
    f918:String;//f918
    f91C:dword;//f91C
    f920:String;//f920
    f924:TStringList;//f924
    f928:TLineHeightMethod;//f928
    f92C:Single;//f92C
    f930:byte;//f930
    f938:?Double;//f938
    f93C:dword;//f93C
    f940:dword;//f940
    f944:dword;//f944
    f948:dword;//f948
    f94C:dword;//f94C
    f950:dword;//f950
    f954:dword;//f954
    f958:dword;//f958
    f95C:dword;//f95C
    f960:byte;//f960
    f964:dword;//f964
    f968:dword;//f968
    f96C:String;//f96C
    f970:byte;//f970
    f971:byte;//f971
    f972:byte;//f972
    f974:dword;//f974
    f978:?Double;//f978
    f97C:dword;//f97C
    f980:?Double;//f980
    f984:dword;//f984
    f988:?Double;//f988
    f98C:dword;//f98C
    f990:?Double;//f990
    f994:dword;//f994
    f998:?Double;//f998
    f99C:dword;//f99C
    f9A0:byte;//f9A0
    f9A1:byte;//f9A1
    f9A4:dword;//f9A4
    f9A8:dword;//f9A8
    f9BC:TRPRenderDevice;//f9BC
    f9C0:dword;//f9C0
    f9C2:word;//f9C2
    f9C4:dword;//f9C4
    f9C8:dword;//f9C8
    f9CA:word;//f9CA
    f9CC:dword;//f9CC
    f9D0:dword;//f9D0
    f9D2:word;//f9D2
    f9D4:dword;//f9D4
    f9D8:dword;//f9D8
    f9DA:word;//f9DA
    f9DC:dword;//f9DC
    f9E0:dword;//f9E0
    f9E2:word;//f9E2
    f9E4:dword;//f9E4
    f9E8:dword;//f9E8
    f9EA:word;//f9EA
    f9EC:dword;//f9EC
    f9F0:dword;//f9F0
    f9F2:word;//f9F2
    f9F4:dword;//f9F4
    f9F8:dword;//f9F8
    f9FA:word;//f9FA
    f9FC:dword;//f9FC
    //fA00:?;//fA00
    fA02:word;//fA02
    fA04:dword;//fA04
    destructor Destroy; virtual;
    procedure AssignTo(Dest:TPersistent); virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    procedure sub_00583D88; virtual;
    //function sub_00583DA8:?; virtual;
    procedure sub_00583DD0; virtual;
    procedure sub_00583E08; virtual;
    procedure sub_00583E28; virtual;
    procedure sub_00583E48; virtual;
    procedure sub_00583E68; virtual;
    procedure sub_00583E88; virtual;
    procedure sub_00583EA8; virtual;
    procedure sub_005881AC; virtual;
    procedure sub_005887FC; virtual;
    procedure sub_0058884C; virtual;
    //function sub_00583EC8():?; virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    //function sub_00583EF8:?; virtual;
    //procedure sub_00584DB0(?:?); virtual;
    //procedure sub_00584BA4(?:?); virtual;
    //procedure sub_00584B64(?:?; ?:?); virtual;
    //procedure sub_00584B80(?:?; ?:?); virtual;
    //procedure sub_00584B9C(?:?); virtual;
    //procedure sub_00584754(?:?); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_00583B7C(?:?; ?:?); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure sub_00584DB8; virtual;
    procedure sub_00584DCC; virtual;
    procedure sub_00584DE0; virtual;
    procedure sub_00588A8C(); virtual;
    procedure sub_00588A90(); virtual;
    procedure sub_00588A94(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure sub_00584DF4; virtual;
    procedure sub_005850F8; virtual;
    procedure sub_00585190(); virtual;
    procedure sub_00584D60; virtual;
    //function sub_00585DF8(?:AnsiString):?; virtual;
    procedure sub_005861AC; virtual;
    //procedure sub_00587614(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00587ABC(?:?); virtual;
    //procedure sub_00587B94(?:?; ?:?; ?:?); virtual;
    //procedure sub_005869A8(?:?); virtual;
    //procedure sub_00586D9C(?:?; ?:?); virtual;
    procedure sub_00586DD0(); virtual;
    //procedure sub_00586DF8(?:?; ?:?); virtual;
    //procedure sub_00587240(?:?; ?:?; ?:?); virtual;
    //procedure sub_00588870(?:?; ?:?; ?:?); virtual;
    //procedure sub_00587284(?:?; ?:?; ?:?; ?:?); virtual;
  end;
  TBaseMemoBuf = class(TObject)
  public
    f4:dword;//f4
    f8:byte;//f8
    f9:byte;//f9
    fA:byte;//fA
    f10:?Double;//f10
    f14:dword;//f14
    f18:?Double;//f18
    f1C:dword;//f1C
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
  end;

implementation

{$R *.DFM}

//00583324
//function sub_00583324(?:?):?;
//begin
{*
 00583324    push       ebp
 00583325    mov        ebp,esp
 00583327    mov        eax,dword ptr [ebp+0C]
 0058332A    cmp        byte ptr ds:[61EFD8],1; gvar_0061EFD8
>00583331    jne        00583342
 00583333    mov        al,byte ptr [eax+34]
 00583336    mov        [0061EFD8],al; gvar_0061EFD8
 0058333B    mov        eax,1
>00583340    jmp        0058335D
 00583342    mov        dl,byte ptr ds:[61EFD8]; gvar_0061EFD8
 00583348    cmp        dl,byte ptr [eax+34]
>0058334B    jne        00583354
 0058334D    mov        eax,1
>00583352    jmp        0058335D
 00583354    mov        byte ptr ds:[61EFD8],1; gvar_0061EFD8
 0058335B    xor        eax,eax
 0058335D    pop        ebp
 0058335E    ret        10
*}
//end;

//00583364
constructor TBaseReport.Create(AOwner:TComponent);
begin
{*
 00583364    push       ebp
 00583365    mov        ebp,esp
 00583367    add        esp,0FFFFFFF8
 0058336A    push       ebx
 0058336B    push       esi
 0058336C    push       edi
 0058336D    xor        ebx,ebx
 0058336F    mov        dword ptr [ebp-8],ebx
 00583372    test       dl,dl
>00583374    je         0058337E
 00583376    add        esp,0FFFFFFF0
 00583379    call       @ClassCreate
 0058337E    mov        byte ptr [ebp-1],dl
 00583381    mov        ebx,eax
 00583383    xor        eax,eax
 00583385    push       ebp
 00583386    push       583735
 0058338B    push       dword ptr fs:[eax]
 0058338E    mov        dword ptr fs:[eax],esp
 00583391    xor        edx,edx
 00583393    mov        eax,ebx
 00583395    call       TRpComponent.Create
 0058339A    xor        eax,eax
 0058339C    mov        dword ptr [ebx+7B4],eax; TBaseReport.?f7B4:dword
 005833A2    xor        eax,eax
 005833A4    mov        dword ptr [ebx+7B8],eax; TBaseReport.?f7B8:dword
 005833AA    xor        eax,eax
 005833AC    mov        dword ptr [ebx+978],eax; TBaseReport.?f978:?Double
 005833B2    mov        dword ptr [ebx+97C],40590000; TBaseReport.?f97C:dword
 005833BC    xor        eax,eax
 005833BE    mov        dword ptr [ebx+980],eax; TBaseReport.?f980:?Double
 005833C4    mov        dword ptr [ebx+984],40590000; TBaseReport.?f984:dword
 005833CE    mov        dword ptr [ebx+8DC],12C; TBaseReport.?f8DC:Single
 005833D8    mov        dword ptr [ebx+8E0],12C; TBaseReport.?f8E0:Single
 005833E2    xor        eax,eax
 005833E4    mov        dword ptr [ebx+988],eax; TBaseReport.?f988:?Double
 005833EA    mov        dword ptr [ebx+98C],40590000; TBaseReport.?f98C:dword
 005833F4    mov        byte ptr [ebx+930],0; TBaseReport.?f930:byte
 005833FB    xor        eax,eax
 005833FD    mov        dword ptr [ebx+938],eax; TBaseReport.?f938:?Double
 00583403    mov        dword ptr [ebx+93C],3FF00000; TBaseReport.?f93C:dword
 0058340D    mov        eax,100
 00583412    call       StrAlloc
 00583417    mov        dword ptr [ebx+8F0],eax; TBaseReport.?f8F0:PChar
 0058341D    mov        eax,100
 00583422    call       StrAlloc
 00583427    mov        dword ptr [ebx+8F4],eax; TBaseReport.?f8F4:PChar
 0058342D    mov        eax,100
 00583432    call       StrAlloc
 00583437    mov        dword ptr [ebx+8F8],eax; TBaseReport.?f8F8:PChar
 0058343D    xor        eax,eax
 0058343F    mov        dword ptr [ebx+34],eax; TBaseReport.?f34:Pointer
 00583442    xor        eax,eax
 00583444    mov        dword ptr [ebx+38],eax; TBaseReport.?f38:dword
 00583447    mov        byte ptr [ebx+7B0],0; TBaseReport.?f7B0:byte
 0058344E    mov        byte ptr [ebx+7B1],0; TBaseReport.?f7B1:byte
 00583455    xor        eax,eax
 00583457    mov        dword ptr [ebx+7AC],eax; TBaseReport.?f7AC:Pointer
 0058345D    xor        eax,eax
 0058345F    mov        dword ptr [ebx+6D0],eax; TBaseReport.?f6D0:dword
 00583465    xor        eax,eax
 00583467    mov        dword ptr [ebx+6D4],eax; TBaseReport.?f6D4:Pointer
 0058346D    xor        eax,eax
 0058346F    mov        dword ptr [ebx+6D8],eax; TBaseReport.?f6D8:Pointer
 00583475    lea        eax,[ebx+40]; TBaseReport.?f40:?
 00583478    xor        ecx,ecx
 0058347A    mov        edx,0A0
 0058347F    call       @FillChar
 00583484    lea        eax,[ebx+0E0]; TBaseReport.?fE0:?
 0058348A    xor        ecx,ecx
 0058348C    mov        edx,50
 00583491    call       @FillChar
 00583496    lea        eax,[ebx+130]; TBaseReport.?f130:?
 0058349C    xor        ecx,ecx
 0058349E    mov        edx,5A0
 005834A3    call       @FillChar
 005834A8    mov        byte ptr [ebx+8D8],0; TBaseReport.?f8D8:byte
 005834AF    mov        al,[0058375C]; 0x1F
 005834B4    mov        byte ptr [ebx+78C],al; TBaseReport.?f78C:dword
 005834BA    mov        byte ptr [ebx+8FC],0; TBaseReport.?f8FC:byte
 005834C1    mov        byte ptr [ebx+8FD],0; TBaseReport.?f8FD:byte
 005834C8    xor        eax,eax
 005834CA    mov        dword ptr [ebx+998],eax; TBaseReport.?f998:?Double
 005834D0    mov        dword ptr [ebx+99C],40210000; TBaseReport.?f99C:dword
 005834DA    xor        eax,eax
 005834DC    mov        dword ptr [ebx+990],eax; TBaseReport.?f990:?Double
 005834E2    mov        dword ptr [ebx+994],40260000; TBaseReport.?f994:dword
 005834EC    mov        byte ptr [ebx+8D0],4; TBaseReport.?f8D0:byte
 005834F3    mov        byte ptr [ebx+9A0],0; TBaseReport.?f9A0:byte
 005834FA    mov        byte ptr [ebx+798],4; TBaseReport.?f798:byte
 00583501    lea        esi,[ebx+6E0]; TBaseReport.?f6E0:?
 00583507    push       esi
 00583508    mov        edi,esi
 0058350A    mov        esi,583760
 0058350F    movs       dword ptr [edi],dword ptr [esi]
 00583510    movs       word ptr [edi],word ptr [esi]
 00583512    pop        esi
 00583513    xor        eax,eax
 00583515    mov        dword ptr [esi+40],eax
 00583518    mov        dword ptr [esi+88],1
 00583522    xor        eax,eax
 00583524    mov        dword ptr [esi+48],eax
 00583527    mov        dword ptr [esi+4C],40240000
 0058352E    fld        qword ptr [esi+48]
 00583531    fdiv       dword ptr ds:[583768]; 72:Single
 00583537    fstp       qword ptr [esi+50]
 0058353A    wait
 0058353B    xor        eax,eax
 0058353D    mov        dword ptr [esi+58],eax
 00583540    mov        dword ptr [esi+5C],eax
 00583543    fld        qword ptr [esi+50]
 00583546    fdiv       dword ptr ds:[58376C]; 2:Single
 0058354C    fstp       qword ptr [esi+60]
 0058354F    wait
 00583550    mov        eax,dword ptr [esi+60]
 00583553    mov        dword ptr [esi+68],eax
 00583556    mov        eax,dword ptr [esi+64]
 00583559    mov        dword ptr [esi+6C],eax
 0058355C    xor        eax,eax
 0058355E    mov        dword ptr [esi+70],eax
 00583561    mov        dword ptr [esi+74],eax
 00583564    mov        byte ptr [esi+78],0
 00583568    mov        byte ptr [esi+79],0
 0058356C    mov        byte ptr [esi+7A],0
 00583570    mov        byte ptr [esi+7B],0
 00583574    mov        byte ptr [esi+7C],0
 00583578    mov        byte ptr [esi+7D],0
 0058357C    mov        word ptr [esi+7E],0
 00583582    mov        byte ptr [esi+80],0
 00583589    mov        esi,1
 0058358E    mov        edx,esi
 00583590    mov        eax,ebx
 00583592    call       00587210
 00583597    inc        esi
 00583598    cmp        esi,0B
<0058359B    jne        0058358E
 0058359D    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 005835A4    xor        eax,eax
 005835A6    mov        dword ptr [ebx+770],eax; TBaseReport.?f770:Pointer
 005835AC    xor        eax,eax
 005835AE    mov        dword ptr [ebx+7C4],eax; TBaseReport.?f7C4:dword
 005835B4    xor        eax,eax
 005835B6    mov        dword ptr [ebx+7C8],eax; TBaseReport.?f7C8:dword
 005835BC    mov        eax,ebx
 005835BE    call       00584D2C
 005835C3    test       al,al
>005835C5    jne        005835D0
 005835C7    call       005807DC
 005835CC    test       eax,eax
>005835CE    jne        005835DC
 005835D0    mov        dword ptr [ebx+85C],0FFFFFFFF; TBaseReport.?f85C:dword
>005835DA    jmp        005835EC
 005835DC    call       005807DC
 005835E1    call       0057EC60
 005835E6    mov        dword ptr [ebx+85C],eax; TBaseReport.?f85C:dword
 005835EC    mov        eax,ebx
 005835EE    call       00585D90
 005835F3    xor        eax,eax
 005835F5    mov        dword ptr [ebx+8D4],eax; TBaseReport.?f8D4:dword
 005835FB    xor        eax,eax
 005835FD    mov        dword ptr [ebx+91C],eax; TBaseReport.?f91C:dword
 00583603    mov        dl,1
 00583605    mov        eax,[0041C8E4]; TStringList
 0058360A    call       TObject.Create; TStringList.Create
 0058360F    mov        dword ptr [ebx+924],eax; TBaseReport.?f924:TStringList
 00583615    mov        esi,dword ptr ds:[61B830]
 0058361B    mov        esi,dword ptr [esi]
 0058361D    lea        edx,[ebp-8]
 00583620    mov        eax,583778; 'Printing page %p'
 00583625    call       esi
 00583627    mov        edx,dword ptr [ebp-8]
 0058362A    lea        eax,[ebx+920]; TBaseReport.?f920:String
 00583630    call       @LStrAsg
 00583635    mov        dl,1
 00583637    mov        eax,[0041C8E4]; TStringList
 0058363C    call       TObject.Create; TStringList.Create
 00583641    mov        dword ptr [ebx+794],eax; TBaseReport.?f794:TStringList
 00583647    mov        edx,1
 0058364C    mov        eax,ebx
 0058364E    call       TRvNDRWriter.SetCopies
 00583653    mov        dword ptr [ebx+910],1; TBaseReport.?f910:Integer
 0058365D    mov        dword ptr [ebx+914],270F; TBaseReport.?f914:Integer
 00583667    lea        eax,[ebx+918]; TBaseReport.?f918:String
 0058366D    call       @LStrClr
 00583672    mov        eax,dword ptr [ebx+914]; TBaseReport.?f914:Integer
 00583678    mov        dword ptr [ebx+790],eax; TBaseReport.?f790:dword
 0058367E    mov        byte ptr [ebx+928],1; TBaseReport.?f928:TLineHeightMethod
 00583685    mov        edx,6
 0058368A    mov        eax,ebx
 0058368C    call       TRvNDRWriter.SetLinesPerInch
 00583691    xor        edx,edx
 00583693    mov        eax,ebx
 00583695    call       TRvNDRWriter.SetTabShade
 0058369A    xor        eax,eax
 0058369C    mov        dword ptr [ebx+964],eax; TBaseReport.?f964:dword
 005836A2    xor        eax,eax
 005836A4    mov        dword ptr [ebx+968],eax; TBaseReport.?f968:dword
 005836AA    xor        edx,edx
 005836AC    mov        eax,ebx
 005836AE    mov        ecx,dword ptr [eax]
 005836B0    call       dword ptr [ecx+88]; TBaseReport.sub_00584B9C
 005836B6    lea        eax,[ebx+96C]; TBaseReport.?f96C:String
 005836BC    mov        edx,583794; 'Rave Report'
 005836C1    call       @LStrAsg
 005836C6    mov        dword ptr [ebx+9A4],1; TBaseReport.?f9A4:dword
 005836D0    mov        dword ptr [ebx+9A8],1; TBaseReport.?f9A8:dword
 005836DA    mov        dl,1
 005836DC    mov        eax,[0041C260]; TList
 005836E1    call       TObject.Create; TList.Create
 005836E6    mov        dword ptr [ebx+7BC],eax; TBaseReport.?f7BC:TList
 005836EC    mov        dl,1
 005836EE    mov        eax,[0041C260]; TList
 005836F3    call       TObject.Create; TList.Create
 005836F8    mov        dword ptr [ebx+7C0],eax; TBaseReport.?f7C0:TList
 005836FE    push       ebx
 005836FF    push       585C58; sub_00585C58
 00583704    mov        dl,1
 00583706    mov        eax,ebx
 00583708    call       00583B0C
 0058370D    xor        eax,eax
 0058370F    mov        dword ptr [ebx+7A0],eax; TBaseReport.?f7A0:dword
 00583715    mov        dword ptr [ebx+7A4],3FE00000; TBaseReport.?f7A4:dword
 0058371F    xor        eax,eax
 00583721    pop        edx
 00583722    pop        ecx
 00583723    pop        ecx
 00583724    mov        dword ptr fs:[eax],edx
 00583727    push       58373C
 0058372C    lea        eax,[ebp-8]
 0058372F    call       @LStrClr
 00583734    ret
<00583735    jmp        @HandleFinally
<0058373A    jmp        0058372C
 0058373C    mov        eax,ebx
 0058373E    cmp        byte ptr [ebp-1],0
>00583742    je         00583753
 00583744    call       @AfterConstruction
 00583749    pop        dword ptr fs:[0]
 00583750    add        esp,0C
 00583753    mov        eax,ebx
 00583755    pop        edi
 00583756    pop        esi
 00583757    pop        ebx
 00583758    pop        ecx
 00583759    pop        ecx
 0058375A    pop        ebp
 0058375B    ret
*}
end;

//005837A0
//procedure sub_005837A0(?:TList);
//begin
{*
 005837A0    push       ebx
 005837A1    mov        ebx,eax
 005837A3    test       ebx,ebx
>005837A5    je         005837CD
>005837A7    jmp        005837C0
 005837A9    xor        edx,edx
 005837AB    mov        eax,ebx
 005837AD    call       TList.Get
 005837B2    call       @FreeMem
 005837B7    xor        edx,edx
 005837B9    mov        eax,ebx
 005837BB    call       TList.Delete
 005837C0    cmp        dword ptr [ebx+8],0; TList.FCount:Integer
<005837C4    jg         005837A9
 005837C6    mov        eax,ebx
 005837C8    call       TObject.Free
 005837CD    pop        ebx
 005837CE    ret
*}
//end;

//005837D0
destructor TBaseReport.Destroy;
begin
{*
 005837D0    push       ebx
 005837D1    push       esi
 005837D2    call       @BeforeDestruction
 005837D7    mov        ebx,edx
 005837D9    mov        esi,eax
 005837DB    mov        eax,esi
 005837DD    call       00587BC0
 005837E2    mov        eax,esi
 005837E4    call       005856D4
 005837E9    mov        eax,dword ptr [esi+7C0]; TBaseReport.?f7C0:TList
 005837EF    call       005837A0
 005837F4    mov        eax,dword ptr [esi+7BC]; TBaseReport.?f7BC:TList
 005837FA    call       005837A0
 005837FF    mov        eax,esi
 00583801    call       00586E44
 00583806    test       al,al
<00583808    jne        005837FF
 0058380A    mov        eax,esi
 0058380C    call       00586E9C
 00583811    test       al,al
<00583813    jne        0058380A
 00583815    mov        eax,esi
 00583817    call       00587188
 0058381C    test       al,al
<0058381E    jne        00583815
 00583820    mov        eax,esi
 00583822    call       005874B0
 00583827    lea        eax,[esi+924]; TBaseReport.?f924:TStringList
 0058382D    call       FreeAndNil
 00583832    lea        eax,[esi+794]; TBaseReport.?f794:TStringList
 00583838    call       FreeAndNil
 0058383D    mov        eax,dword ptr [esi+8F0]; TBaseReport.?f8F0:PChar
 00583843    call       StrDispose
 00583848    mov        eax,dword ptr [esi+8F4]; TBaseReport.?f8F4:PChar
 0058384E    call       StrDispose
 00583853    mov        eax,dword ptr [esi+8F8]; TBaseReport.?f8F8:PChar
 00583859    call       StrDispose
 0058385E    mov        eax,esi
 00583860    call       00584D2C
 00583865    test       al,al
>00583867    jne        00583882
 00583869    mov        eax,esi
 0058386B    call       00588A98
 00583870    cmp        byte ptr [eax+8],0
>00583874    je         00583882
 00583876    mov        eax,esi
 00583878    call       00588A98
 0058387D    mov        edx,dword ptr [eax]
 0058387F    call       dword ptr [edx+60]
 00583882    mov        edx,ebx
 00583884    and        dl,0FC
 00583887    mov        eax,esi
 00583889    call       TComponent.Destroy
 0058388E    test       bl,bl
>00583890    jle        00583899
 00583892    mov        eax,esi
 00583894    call       @ClassDestroy
 00583899    pop        esi
 0058389A    pop        ebx
 0058389B    ret
*}
end;

//0058389C
procedure TBaseReport.AssignTo(Dest:TPersistent);
begin
{*
 0058389C    push       ebx
 0058389D    push       esi
 0058389E    mov        esi,edx
 005838A0    mov        ebx,eax
 005838A2    mov        eax,esi
 005838A4    mov        edx,dword ptr ds:[5830BC]; TBaseReport
 005838AA    call       @AsClass
 005838AF    mov        esi,eax
 005838B1    mov        eax,dword ptr [ebx+910]; TBaseReport.?f910:Integer
 005838B7    mov        dword ptr [esi+910],eax; TBaseReport.?f910:Integer
 005838BD    mov        eax,dword ptr [ebx+914]; TBaseReport.?f914:Integer
 005838C3    mov        dword ptr [esi+914],eax; TBaseReport.?f914:Integer
 005838C9    lea        eax,[esi+918]; TBaseReport.?f918:String
 005838CF    mov        edx,dword ptr [ebx+918]; TBaseReport.?f918:String
 005838D5    call       @LStrAsg
 005838DA    mov        edx,dword ptr [ebx+91C]; TBaseReport.?f91C:dword
 005838E0    mov        eax,esi
 005838E2    call       TRvNDRWriter.SetStatusLabel
 005838E7    lea        eax,[esi+920]; TBaseReport.?f920:String
 005838ED    mov        edx,dword ptr [ebx+920]; TBaseReport.?f920:String
 005838F3    call       @LStrAsg
 005838F8    mov        edx,dword ptr [ebx+924]; TBaseReport.?f924:TStringList
 005838FE    mov        eax,esi
 00583900    call       TRvNDRWriter.SetStatusText
 00583905    mov        al,byte ptr [ebx+928]; TBaseReport.?f928:TLineHeightMethod
 0058390B    mov        byte ptr [esi+928],al; TBaseReport.?f928:TLineHeightMethod
 00583911    mov        eax,dword ptr [ebx+850]; TBaseReport.?f850:?Double
 00583917    mov        dword ptr [esi+850],eax; TBaseReport.?f850:?Double
 0058391D    mov        eax,dword ptr [ebx+854]; TBaseReport.?f854:dword
 00583923    mov        dword ptr [esi+854],eax; TBaseReport.?f854:dword
 00583929    mov        edx,dword ptr [ebx+92C]; TBaseReport.?f92C:Single
 0058392F    mov        eax,esi
 00583931    call       TRvNDRWriter.SetLinesPerInch
 00583936    mov        dl,byte ptr [ebx+930]; TBaseReport.?f930:byte
 0058393C    mov        eax,esi
 0058393E    call       TRvNDRWriter.SetUnits
 00583943    push       dword ptr [ebx+93C]; TBaseReport.?f93C:dword
 00583949    push       dword ptr [ebx+938]; TBaseReport.?f938:?Double
 0058394F    mov        eax,esi
 00583951    call       TRvNDRWriter.SetUnitsFactor
 00583956    mov        eax,ebx
 00583958    call       TRvNDRWriter.GetMarginLeft
 0058395D    add        esp,0FFFFFFF8
 00583960    fstp       qword ptr [esp]
 00583963    wait
 00583964    mov        eax,esi
 00583966    call       TRvNDRWriter.SetMarginLeft
 0058396B    mov        eax,ebx
 0058396D    call       TRvNDRWriter.GetMarginRight
 00583972    add        esp,0FFFFFFF8
 00583975    fstp       qword ptr [esp]
 00583978    wait
 00583979    mov        eax,esi
 0058397B    call       TRvNDRWriter.SetMarginRight
 00583980    mov        eax,ebx
 00583982    call       TRvNDRWriter.GetMarginTop
 00583987    add        esp,0FFFFFFF8
 0058398A    fstp       qword ptr [esp]
 0058398D    wait
 0058398E    mov        eax,esi
 00583990    call       TRvNDRWriter.SetMarginTop
 00583995    mov        eax,ebx
 00583997    call       TRvNDRWriter.GetMarginBottom
 0058399C    add        esp,0FFFFFFF8
 0058399F    fstp       qword ptr [esp]
 005839A2    wait
 005839A3    mov        eax,esi
 005839A5    call       TRvNDRWriter.SetMarginBottom
 005839AA    mov        edx,dword ptr [ebx+960]; TBaseReport.?f960:byte
 005839B0    mov        eax,esi
 005839B2    call       TRvNDRWriter.SetTabShade
 005839B7    mov        eax,dword ptr [ebx+964]; TBaseReport.?f964:dword
 005839BD    mov        dword ptr [esi+964],eax; TBaseReport.?f964:dword
 005839C3    mov        eax,dword ptr [ebx+968]; TBaseReport.?f968:dword
 005839C9    mov        dword ptr [esi+968],eax; TBaseReport.?f968:dword
 005839CF    lea        eax,[esi+96C]; TBaseReport.?f96C:String
 005839D5    mov        edx,dword ptr [ebx+96C]; TBaseReport.?f96C:String
 005839DB    call       @LStrAsg
 005839E0    mov        dl,byte ptr [ebx+970]; TBaseReport.?f970:byte
 005839E6    mov        eax,esi
 005839E8    mov        ecx,dword ptr [eax]
 005839EA    call       dword ptr [ecx+88]; TBaseReport.sub_00584B9C
 005839F0    mov        edx,dword ptr [ebx+974]; TBaseReport.?f974:dword
 005839F6    mov        eax,esi
 005839F8    call       TRvNDRWriter.SetCopies
 005839FD    mov        dl,byte ptr [ebx+971]; TBaseReport.?f971:byte
 00583A03    mov        eax,esi
 00583A05    mov        ecx,dword ptr [eax]
 00583A07    call       dword ptr [ecx+8C]; TBaseReport.sub_00584754
 00583A0D    push       dword ptr [ebx+97C]; TBaseReport.?f97C:dword
 00583A13    push       dword ptr [ebx+978]; TBaseReport.?f978:?Double
 00583A19    mov        eax,esi
 00583A1B    mov        edx,dword ptr [eax]
 00583A1D    call       dword ptr [edx+80]; TBaseReport.sub_00584B64
 00583A23    push       dword ptr [ebx+984]; TBaseReport.?f984:dword
 00583A29    push       dword ptr [ebx+980]; TBaseReport.?f980:?Double
 00583A2F    mov        eax,esi
 00583A31    mov        edx,dword ptr [eax]
 00583A33    call       dword ptr [edx+84]; TBaseReport.sub_00584B80
 00583A39    mov        edx,dword ptr [ebx+794]; TBaseReport.?f794:TStringList
 00583A3F    mov        eax,esi
 00583A41    call       00583FA4
 00583A46    mov        eax,dword ptr [ebx+9C0]; TBaseReport.?f9C0:dword
 00583A4C    mov        dword ptr [esi+9C0],eax; TBaseReport.?f9C0:dword
 00583A52    mov        eax,dword ptr [ebx+9C4]; TBaseReport.?f9C4:dword
 00583A58    mov        dword ptr [esi+9C4],eax; TBaseReport.?f9C4:dword
 00583A5E    mov        eax,dword ptr [ebx+9C8]; TBaseReport.?f9C8:dword
 00583A64    mov        dword ptr [esi+9C8],eax; TBaseReport.?f9C8:dword
 00583A6A    mov        eax,dword ptr [ebx+9CC]; TBaseReport.?f9CC:dword
 00583A70    mov        dword ptr [esi+9CC],eax; TBaseReport.?f9CC:dword
 00583A76    mov        eax,dword ptr [ebx+9D0]; TBaseReport.?f9D0:dword
 00583A7C    mov        dword ptr [esi+9D0],eax; TBaseReport.?f9D0:dword
 00583A82    mov        eax,dword ptr [ebx+9D4]; TBaseReport.?f9D4:dword
 00583A88    mov        dword ptr [esi+9D4],eax; TBaseReport.?f9D4:dword
 00583A8E    mov        eax,dword ptr [ebx+9D8]; TBaseReport.?f9D8:dword
 00583A94    mov        dword ptr [esi+9D8],eax; TBaseReport.?f9D8:dword
 00583A9A    mov        eax,dword ptr [ebx+9DC]; TBaseReport.?f9DC:dword
 00583AA0    mov        dword ptr [esi+9DC],eax; TBaseReport.?f9DC:dword
 00583AA6    mov        eax,dword ptr [ebx+9E0]; TBaseReport.?f9E0:dword
 00583AAC    mov        dword ptr [esi+9E0],eax; TBaseReport.?f9E0:dword
 00583AB2    mov        eax,dword ptr [ebx+9E4]; TBaseReport.?f9E4:dword
 00583AB8    mov        dword ptr [esi+9E4],eax; TBaseReport.?f9E4:dword
 00583ABE    mov        eax,dword ptr [ebx+9E8]; TBaseReport.?f9E8:dword
 00583AC4    mov        dword ptr [esi+9E8],eax; TBaseReport.?f9E8:dword
 00583ACA    mov        eax,dword ptr [ebx+9EC]; TBaseReport.?f9EC:dword
 00583AD0    mov        dword ptr [esi+9EC],eax; TBaseReport.?f9EC:dword
 00583AD6    mov        eax,dword ptr [ebx+9F0]; TBaseReport.?f9F0:dword
 00583ADC    mov        dword ptr [esi+9F0],eax; TBaseReport.?f9F0:dword
 00583AE2    mov        eax,dword ptr [ebx+9F4]; TBaseReport.?f9F4:dword
 00583AE8    mov        dword ptr [esi+9F4],eax; TBaseReport.?f9F4:dword
 00583AEE    mov        eax,dword ptr [ebx+9F8]; TBaseReport.?f9F8:dword
 00583AF4    mov        dword ptr [esi+9F8],eax; TBaseReport.?f9F8:dword
 00583AFA    mov        eax,dword ptr [ebx+9FC]; TBaseReport.?f9FC:dword
 00583B00    mov        dword ptr [esi+9FC],eax; TBaseReport.?f9FC:dword
 00583B06    pop        esi
 00583B07    pop        ebx
 00583B08    ret
*}
end;

//00583B0C
//procedure sub_00583B0C(?:TBaseReport; ?:?; ?:?; ?:?);
//begin
{*
 00583B0C    push       ebp
 00583B0D    mov        ebp,esp
 00583B0F    push       ebx
 00583B10    push       esi
 00583B11    mov        ebx,edx
 00583B13    mov        esi,eax
 00583B15    mov        eax,8
 00583B1A    call       @GetMem
 00583B1F    mov        edx,dword ptr [ebp+8]
 00583B22    mov        dword ptr [eax],edx
 00583B24    mov        edx,dword ptr [ebp+0C]
 00583B27    mov        dword ptr [eax+4],edx
 00583B2A    sub        bl,1
>00583B2D    jb         00583B33
>00583B2F    je         00583B54
>00583B31    jmp        00583B73
 00583B33    mov        edx,dword ptr [esi+7BC]; TBaseReport.?f7BC:TList
 00583B39    cmp        dword ptr [edx+8],0; TList.FCount:Integer
>00583B3D    jne        00583B47
 00583B3F    xchg       eax,edx
 00583B40    call       TList.Add
>00583B45    jmp        00583B73
 00583B47    mov        ecx,eax
 00583B49    mov        eax,edx
 00583B4B    xor        edx,edx
 00583B4D    call       TList.Insert
>00583B52    jmp        00583B73
 00583B54    mov        edx,dword ptr [esi+7C0]; TBaseReport.?f7C0:TList
 00583B5A    cmp        dword ptr [edx+8],0; TList.FCount:Integer
>00583B5E    jne        00583B68
 00583B60    xchg       eax,edx
 00583B61    call       TList.Add
>00583B66    jmp        00583B73
 00583B68    mov        ecx,eax
 00583B6A    mov        eax,edx
 00583B6C    xor        edx,edx
 00583B6E    call       TList.Insert
 00583B73    pop        esi
 00583B74    pop        ebx
 00583B75    pop        ebp
 00583B76    ret        8
*}
//end;

//00583B7C
//procedure sub_00583B7C(?:?; ?:?);
//begin
{*
 00583B7C    push       ebp
 00583B7D    mov        ebp,esp
 00583B7F    push       ecx
 00583B80    push       ebx
 00583B81    push       esi
 00583B82    mov        ebx,ecx
 00583B84    mov        dword ptr [ebp-4],edx
 00583B87    mov        esi,eax
 00583B89    mov        eax,dword ptr [ebp-4]
 00583B8C    call       @LStrAddRef
 00583B91    xor        eax,eax
 00583B93    push       ebp
 00583B94    push       583BE9
 00583B99    push       dword ptr fs:[eax]
 00583B9C    mov        dword ptr fs:[eax],esp
 00583B9F    xor        eax,eax
 00583BA1    mov        dword ptr [ebx],eax
 00583BA3    xor        eax,eax
 00583BA5    mov        dword ptr [ebx+4],eax
 00583BA8    cmp        dword ptr [ebp-4],0
>00583BAC    je         00583BD3
 00583BAE    push       ebx
 00583BAF    mov        eax,dword ptr [ebp-4]
 00583BB2    call       @LStrLen
 00583BB7    push       eax
 00583BB8    lea        eax,[ebp-4]
 00583BBB    call       @UniqueStringA
 00583BC0    push       eax
 00583BC1    mov        eax,esi
 00583BC3    mov        edx,dword ptr [eax]
 00583BC5    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00583BC8    call       TCanvas.GetHandle
 00583BCD    push       eax
 00583BCE    call       gdi32.GetTextExtentPoint32A
 00583BD3    xor        eax,eax
 00583BD5    pop        edx
 00583BD6    pop        ecx
 00583BD7    pop        ecx
 00583BD8    mov        dword ptr fs:[eax],edx
 00583BDB    push       583BF0
 00583BE0    lea        eax,[ebp-4]
 00583BE3    call       @LStrClr
 00583BE8    ret
<00583BE9    jmp        @HandleFinally
<00583BEE    jmp        00583BE0
 00583BF0    pop        esi
 00583BF1    pop        ebx
 00583BF2    pop        ecx
 00583BF3    pop        ebp
 00583BF4    ret
*}
//end;

//00583BF8
//procedure sub_00583BF8(?:TRvNDRWriter; ?:?; ?:?);
//begin
{*
 00583BF8    push       ebp
 00583BF9    mov        ebp,esp
 00583BFB    add        esp,0FFFFFFF4
 00583BFE    push       ebx
 00583BFF    push       esi
 00583C00    mov        ebx,eax
 00583C02    mov        si,word ptr [ebx+75E]; TRvNDRWriter.?f75E:?Float
 00583C09    test       si,si
>00583C0C    jne        00583C41
 00583C0E    push       dword ptr [ebp+0C]
 00583C11    push       dword ptr [ebp+8]
 00583C14    mov        eax,ebx
 00583C16    call       00586138
 00583C1B    fmul       dword ptr ds:[583CE8]; 10000:Single
 00583C21    fld        qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 00583C27    fmul       qword ptr [ebx+988]; TRvNDRWriter.?f988:?Double
 00583C2D    fdivp      st(1),st
 00583C2F    fadd       qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 00583C35    fstp       qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 00583C3B    wait
>00583C3C    jmp        00583CDE
 00583C41    push       dword ptr [ebp+0C]
 00583C44    push       dword ptr [ebp+8]
 00583C47    mov        eax,ebx
 00583C49    call       00586138
 00583C4E    fstp       qword ptr [ebp-8]
 00583C51    wait
 00583C52    mov        word ptr [ebp-0C],si
 00583C56    fild       word ptr [ebp-0C]
 00583C59    fld        tbyte ptr ds:[583CEC]; 3,14159265358979:Extended
 00583C5F    fmulp      st(1),st
 00583C61    fdiv       dword ptr ds:[583CF8]; 180:Single
 00583C67    call       @COS
 00583C6C    fmul       qword ptr [ebp-8]
 00583C6F    fmul       dword ptr ds:[583CE8]; 10000:Single
 00583C75    fld        qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 00583C7B    fmul       qword ptr [ebx+988]; TRvNDRWriter.?f988:?Double
 00583C81    fdivp      st(1),st
 00583C83    fadd       qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 00583C89    fstp       qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 00583C8F    wait
 00583C90    push       dword ptr [ebp+0C]
 00583C93    push       dword ptr [ebp+8]
 00583C96    mov        eax,ebx
 00583C98    call       00586138
 00583C9D    fstp       qword ptr [ebp-8]
 00583CA0    wait
 00583CA1    fild       word ptr [ebx+75E]; TRvNDRWriter.?f75E:?Float
 00583CA7    fld        tbyte ptr ds:[583CEC]; 3,14159265358979:Extended
 00583CAD    fmulp      st(1),st
 00583CAF    fdiv       dword ptr ds:[583CF8]; 180:Single
 00583CB5    call       @SIN
 00583CBA    fmul       qword ptr [ebp-8]
 00583CBD    fmul       dword ptr ds:[583CE8]; 10000:Single
 00583CC3    fld        qword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 00583CC9    fmul       qword ptr [ebx+988]; TRvNDRWriter.?f988:?Double
 00583CCF    fdivp      st(1),st
 00583CD1    fsubr      qword ptr [ebx+8A8]; TRvNDRWriter.?f8A8:?Double
 00583CD7    fstp       qword ptr [ebx+8A8]; TRvNDRWriter.?f8A8:?Double
 00583CDD    wait
 00583CDE    pop        esi
 00583CDF    pop        ebx
 00583CE0    mov        esp,ebp
 00583CE2    pop        ebp
 00583CE3    ret        8
*}
//end;

//00583CFC
//procedure sub_00583CFC(?:TRvNDRWriter; ?:TList);
//begin
{*
 00583CFC    push       ebx
 00583CFD    push       esi
 00583CFE    push       edi
 00583CFF    add        esp,0FFFFFFF0
 00583D02    mov        dword ptr [esp],edx
 00583D05    mov        edi,eax
 00583D07    mov        eax,dword ptr [esp]
 00583D0A    mov        ebx,dword ptr [eax+8]
 00583D0D    dec        ebx
 00583D0E    test       ebx,ebx
>00583D10    jl         00583D3A
 00583D12    inc        ebx
 00583D13    xor        esi,esi
 00583D15    mov        edx,esi
 00583D17    mov        eax,dword ptr [esp]
 00583D1A    call       TList.Get
 00583D1F    mov        edx,dword ptr [eax]
 00583D21    mov        dword ptr [esp+8],edx
 00583D25    mov        edx,dword ptr [eax+4]
 00583D28    mov        dword ptr [esp+0C],edx
 00583D2C    mov        edx,edi
 00583D2E    mov        eax,dword ptr [esp+0C]
 00583D32    call       dword ptr [esp+8]
 00583D36    inc        esi
 00583D37    dec        ebx
<00583D38    jne        00583D15
 00583D3A    add        esp,10
 00583D3D    pop        edi
 00583D3E    pop        esi
 00583D3F    pop        ebx
 00583D40    ret
*}
//end;

//00583D44
procedure TBaseReport.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00583D44    push       ebx
 00583D45    push       esi
 00583D46    push       edi
 00583D47    mov        ebx,ecx
 00583D49    mov        esi,edx
 00583D4B    mov        edi,eax
 00583D4D    mov        ecx,ebx
 00583D4F    mov        edx,esi
 00583D51    mov        eax,edi
 00583D53    call       TComponent.Notification
 00583D58    cmp        bl,1
>00583D5B    jne        00583D6E
 00583D5D    cmp        esi,dword ptr [edi+91C]; TBaseReport.?f91C:dword
>00583D63    jne        00583D6E
 00583D65    xor        edx,edx
 00583D67    mov        eax,edi
 00583D69    call       TRvNDRWriter.SetStatusLabel
 00583D6E    pop        edi
 00583D6F    pop        esi
 00583D70    pop        ebx
 00583D71    ret
*}
end;

//00583D74
//procedure TRvNDRWriter.SetStatusLabel(Self:TBaseReport; ?:dword);
//begin
{*
 00583D74    mov        dword ptr [eax+91C],edx; TRvNDRWriter.?f91C:dword
 00583D7A    test       edx,edx
>00583D7C    je         00583D84
 00583D7E    xchg       eax,edx
 00583D7F    call       TComponent.FreeNotification
 00583D84    ret
*}
//end;

//00583D88
procedure sub_00583D88;
begin
{*
 00583D88    push       ebx
 00583D89    cmp        word ptr [eax+9C2],0; TRvNDRWriter.?f9C2:word
>00583D91    je         00583DA3
 00583D93    mov        ebx,eax
 00583D95    mov        edx,eax
 00583D97    mov        eax,dword ptr [ebx+9C4]; TRvNDRWriter.?f9C4:dword
 00583D9D    call       dword ptr [ebx+9C0]
 00583DA3    pop        ebx
 00583DA4    ret
*}
end;

//00583DA8
//function sub_00583DA8:?;
//begin
{*
 00583DA8    push       ebx
 00583DA9    cmp        word ptr [eax+9CA],0; TRvNDRWriter.?f9CA:word
>00583DB1    je         00583DCB
 00583DB3    lea        ecx,[eax+8D4]; TRvNDRWriter.?f8D4:dword
 00583DB9    mov        ebx,eax
 00583DBB    mov        edx,eax
 00583DBD    mov        eax,dword ptr [ebx+9CC]; TRvNDRWriter.?f9CC:dword
 00583DC3    call       dword ptr [ebx+9C8]
 00583DC9    pop        ebx
 00583DCA    ret
 00583DCB    xor        eax,eax
 00583DCD    pop        ebx
 00583DCE    ret
*}
//end;

//00583DD0
procedure sub_00583DD0;
begin
{*
 00583DD0    push       ebx
 00583DD1    mov        ebx,eax
 00583DD3    cmp        word ptr [ebx+9D2],0; TRvNDRWriter.?f9D2:word
>00583DDB    je         00583E04
 00583DDD    mov        edx,ebx
 00583DDF    mov        eax,dword ptr [ebx+9D4]; TRvNDRWriter.?f9D4:dword
 00583DE5    call       dword ptr [ebx+9D0]
 00583DEB    mov        al,byte ptr [ebx+971]; TRvNDRWriter.?f971:byte
 00583DF1    cmp        al,byte ptr [ebx+972]; TRvNDRWriter.?f972:byte
>00583DF7    jne        00583DFD
 00583DF9    cmp        al,2
>00583DFB    je         00583E04
 00583DFD    mov        eax,ebx
 00583DFF    call       0058476C
 00583E04    pop        ebx
 00583E05    ret
*}
end;

//00583E08
procedure sub_00583E08;
begin
{*
 00583E08    push       ebx
 00583E09    cmp        word ptr [eax+9DA],0; TRvNDRWriter.?f9DA:word
>00583E11    je         00583E23
 00583E13    mov        ebx,eax
 00583E15    mov        edx,eax
 00583E17    mov        eax,dword ptr [ebx+9DC]; TRvNDRWriter.?f9DC:dword
 00583E1D    call       dword ptr [ebx+9D8]
 00583E23    pop        ebx
 00583E24    ret
*}
end;

//00583E28
procedure sub_00583E28;
begin
{*
 00583E28    push       ebx
 00583E29    cmp        word ptr [eax+9E2],0; TRvNDRWriter.?f9E2:word
>00583E31    je         00583E43
 00583E33    mov        ebx,eax
 00583E35    mov        edx,eax
 00583E37    mov        eax,dword ptr [ebx+9E4]; TRvNDRWriter.?f9E4:dword
 00583E3D    call       dword ptr [ebx+9E0]
 00583E43    pop        ebx
 00583E44    ret
*}
end;

//00583E48
procedure sub_00583E48;
begin
{*
 00583E48    push       ebx
 00583E49    cmp        word ptr [eax+9EA],0; TRvNDRWriter.?f9EA:word
>00583E51    je         00583E63
 00583E53    mov        ebx,eax
 00583E55    mov        edx,eax
 00583E57    mov        eax,dword ptr [ebx+9EC]; TRvNDRWriter.?f9EC:dword
 00583E5D    call       dword ptr [ebx+9E8]
 00583E63    pop        ebx
 00583E64    ret
*}
end;

//00583E68
procedure sub_00583E68;
begin
{*
 00583E68    push       ebx
 00583E69    cmp        word ptr [eax+9F2],0; TRvNDRWriter.?f9F2:word
>00583E71    je         00583E83
 00583E73    mov        ebx,eax
 00583E75    mov        edx,eax
 00583E77    mov        eax,dword ptr [ebx+9F4]; TRvNDRWriter.?f9F4:dword
 00583E7D    call       dword ptr [ebx+9F0]
 00583E83    pop        ebx
 00583E84    ret
*}
end;

//00583E88
procedure sub_00583E88;
begin
{*
 00583E88    push       ebx
 00583E89    cmp        word ptr [eax+9FA],0; TRvNDRWriter.?f9FA:word
>00583E91    je         00583EA3
 00583E93    mov        ebx,eax
 00583E95    mov        edx,eax
 00583E97    mov        eax,dword ptr [ebx+9FC]; TRvNDRWriter.?f9FC:dword
 00583E9D    call       dword ptr [ebx+9F8]
 00583EA3    pop        ebx
 00583EA4    ret
*}
end;

//00583EA8
procedure sub_00583EA8;
begin
{*
 00583EA8    push       ebx
 00583EA9    cmp        word ptr [eax+0A02],0; TRvNDRWriter.?fA02:word
>00583EB1    je         00583EC3
 00583EB3    mov        ebx,eax
 00583EB5    mov        edx,eax
 00583EB7    mov        eax,dword ptr [ebx+0A04]; TRvNDRWriter.?fA04:dword
 00583EBD    call       dword ptr [ebx+0A00]
 00583EC3    pop        ebx
 00583EC4    ret
*}
end;

//00583EC8
//function sub_00583EC8():?;
//begin
{*
 00583EC8    xor        eax,eax
 00583ECA    ret
*}
//end;

//00583ECC
//function sub_00583ECC(?:dword):?;
//begin
{*
 00583ECC    add        esp,0FFFFFFF4
 00583ECF    mov        edx,dword ptr [eax+8E8]
 00583ED5    dec        edx
 00583ED6    mov        dword ptr [esp+8],edx
 00583EDA    fild       dword ptr [esp+8]
 00583EDE    fmul       qword ptr [eax+8B0]
 00583EE4    fadd       qword ptr [eax+880]
 00583EEA    fstp       qword ptr [esp]
 00583EED    wait
 00583EEE    fld        qword ptr [esp]
 00583EF1    add        esp,0C
 00583EF4    ret
*}
//end;

//00583EF8
//function sub_00583EF8:?;
//begin
{*
 00583EF8    push       ebp
 00583EF9    mov        ebp,esp
 00583EFB    push       0
 00583EFD    push       ebx
 00583EFE    push       esi
 00583EFF    mov        ebx,eax
 00583F01    xor        eax,eax
 00583F03    push       ebp
 00583F04    push       583F5D
 00583F09    push       dword ptr fs:[eax]
 00583F0C    mov        dword ptr fs:[eax],esp
 00583F0F    mov        eax,ebx
 00583F11    call       00588A98
 00583F16    cmp        byte ptr [eax+8],0
>00583F1A    je         00583F2B
 00583F1C    mov        eax,ebx
 00583F1E    call       00588A98
 00583F23    mov        edx,dword ptr [eax]
 00583F25    call       dword ptr [edx]
 00583F27    mov        ebx,eax
>00583F29    jmp        00583F47
 00583F2B    xor        ebx,ebx
 00583F2D    mov        esi,dword ptr ds:[61B830]
 00583F33    mov        esi,dword ptr [esi]
 00583F35    lea        edx,[ebp-4]
 00583F38    mov        eax,583F74; 'Error!  Canvas not yet active.'
 00583F3D    call       esi
 00583F3F    mov        eax,dword ptr [ebp-4]
 00583F42    call       00579798
 00583F47    xor        eax,eax
 00583F49    pop        edx
 00583F4A    pop        ecx
 00583F4B    pop        ecx
 00583F4C    mov        dword ptr fs:[eax],edx
 00583F4F    push       583F64
 00583F54    lea        eax,[ebp-4]
 00583F57    call       @LStrClr
 00583F5C    ret
<00583F5D    jmp        @HandleFinally
<00583F62    jmp        00583F54
 00583F64    mov        eax,ebx
 00583F66    pop        esi
 00583F67    pop        ebx
 00583F68    pop        ecx
 00583F69    pop        ebp
 00583F6A    ret
*}
//end;

//00583F94
procedure TRvNDRWriter.SetStatusText(Self:TBaseReport);
begin
{*
 00583F94    push       esi
 00583F95    mov        esi,eax
 00583F97    mov        eax,dword ptr [esi+924]; TRvNDRWriter.?f924:TStringList
 00583F9D    mov        ecx,dword ptr [eax]
 00583F9F    call       dword ptr [ecx+8]; TStrings.Assign
 00583FA2    pop        esi
 00583FA3    ret
*}
end;

//00583FA4
//procedure sub_00583FA4(?:TBaseReport);
//begin
{*
 00583FA4    push       esi
 00583FA5    mov        esi,eax
 00583FA7    mov        eax,dword ptr [esi+794]; TBaseReport.?f794:TStringList
 00583FAD    mov        ecx,dword ptr [eax]
 00583FAF    call       dword ptr [ecx+8]; TStrings.Assign
 00583FB2    pop        esi
 00583FB3    ret
*}
//end;

//00583FB4
//procedure TRvNDRWriter.SetLinesPerInch(Self:TBaseReport; ?:Single);
//begin
{*
 00583FB4    push       esi
 00583FB5    mov        esi,eax
 00583FB7    test       edx,edx
>00583FB9    jle        00583FCB
 00583FBB    mov        dword ptr [esi+92C],edx; TRvNDRWriter.?f92C:Single
 00583FC1    mov        eax,esi
 00583FC3    mov        edx,dword ptr [eax]
 00583FC5    call       dword ptr [edx+12C]; TRvNDRWriter.sub_0058BD08
 00583FCB    pop        esi
 00583FCC    ret
*}
//end;

//00583FD0
//procedure sub_00583FD0(?:TBaseReport; ?:?);
//begin
{*
 00583FD0    push       ebx
 00583FD1    mov        ebx,eax
 00583FD3    mov        dword ptr [ebx+8E4],edx; TBaseReport.?f8E4:Single
 00583FD9    mov        eax,ebx
 00583FDB    mov        edx,dword ptr [eax]
 00583FDD    call       dword ptr [edx+12C]; TBaseReport.sub_005861AC
 00583FE3    mov        eax,ebx
 00583FE5    call       005874E0
 00583FEA    mov        eax,ebx
 00583FEC    call       00583ECC
 00583FF1    fstp       qword ptr [ebx+8A0]; TBaseReport.?f8A0:?Double
 00583FF7    wait
 00583FF8    fild       dword ptr [ebx+8E4]; TBaseReport.?f8E4:Single
 00583FFE    fmul       qword ptr [ebx+850]; TBaseReport.?f850:?Double
 00584004    fadd       qword ptr [ebx+890]; TBaseReport.?f890:?Double
 0058400A    fsub       qword ptr [ebx+848]; TBaseReport.?f848:?Double
 00584010    fstp       qword ptr [ebx+8A8]; TBaseReport.?f8A8:?Double
 00584016    wait
 00584017    pop        ebx
 00584018    ret
*}
//end;

//0058401C
//procedure sub_0058401C(?:TBaseReport; ?:?);
//begin
{*
 0058401C    push       ebx
 0058401D    mov        ebx,eax
 0058401F    mov        dword ptr [ebx+8E8],edx; TBaseReport.?f8E8:dword
 00584025    mov        eax,ebx
 00584027    call       00583ECC
 0058402C    fstp       qword ptr [ebx+8A0]; TBaseReport.?f8A0:?Double
 00584032    wait
 00584033    mov        eax,ebx
 00584035    call       005874E0
 0058403A    pop        ebx
 0058403B    ret
*}
//end;

//0058403C
//procedure TRvNDRWriter.SetMarginLeft(Self:TBaseReport; ?:?; ?:?);
//begin
{*
 0058403C    push       ebp
 0058403D    mov        ebp,esp
 0058403F    push       ebx
 00584040    mov        ebx,eax
 00584042    push       dword ptr [ebp+0C]
 00584045    push       dword ptr [ebp+8]
 00584048    mov        eax,ebx
 0058404A    call       00586138
 0058404F    fstp       qword ptr [ebx+860]; TRvNDRWriter.?f860:?Double
 00584055    wait
 00584056    push       dword ptr [ebx+864]; TRvNDRWriter.?f864:dword
 0058405C    push       dword ptr [ebx+860]; TRvNDRWriter.?f860:?Double
 00584062    mov        eax,ebx
 00584064    call       00586100
 00584069    add        esp,0FFFFFFF8
 0058406C    fstp       qword ptr [esp]
 0058406F    wait
 00584070    mov        eax,ebx
 00584072    call       005842B4
 00584077    mov        eax,dword ptr [ebp+8]
 0058407A    mov        dword ptr [ebx+940],eax; TRvNDRWriter.?f940:dword
 00584080    mov        eax,dword ptr [ebp+0C]
 00584083    mov        dword ptr [ebx+944],eax; TRvNDRWriter.?f944:dword
 00584089    pop        ebx
 0058408A    pop        ebp
 0058408B    ret        8
*}
//end;

//00584090
procedure TRvNDRWriter.GetMarginLeft(Self:TBaseReport);
begin
{*
 00584090    add        esp,0FFFFFFF8
 00584093    mov        edx,dword ptr [eax+940]; TRvNDRWriter.?f940:dword
 00584099    mov        dword ptr [esp],edx
 0058409C    mov        edx,dword ptr [eax+944]; TRvNDRWriter.?f944:dword
 005840A2    mov        dword ptr [esp+4],edx
 005840A6    fld        qword ptr [esp]
 005840A9    pop        ecx
 005840AA    pop        edx
 005840AB    ret
*}
end;

//005840AC
//procedure TRvNDRWriter.SetMarginRight(Self:TBaseReport; ?:?; ?:?);
//begin
{*
 005840AC    push       ebp
 005840AD    mov        ebp,esp
 005840AF    add        esp,0FFFFFFF4
 005840B2    push       ebx
 005840B3    mov        ebx,eax
 005840B5    mov        eax,ebx
 005840B7    call       00584D2C
 005840BC    test       al,al
>005840BE    je         005840E0
 005840C0    fld        qword ptr [ebx+998]; TRvNDRWriter.?f998:?Double
 005840C6    fsub       qword ptr [ebp+8]
 005840C9    add        esp,0FFFFFFF8
 005840CC    fstp       qword ptr [esp]
 005840CF    wait
 005840D0    mov        eax,ebx
 005840D2    call       00586138
 005840D7    fstp       qword ptr [ebx+868]; TRvNDRWriter.?f868:?Double
 005840DD    wait
>005840DE    jmp        00584121
 005840E0    push       dword ptr [ebp+0C]
 005840E3    push       dword ptr [ebp+8]
 005840E6    mov        eax,ebx
 005840E8    call       00586138
 005840ED    fstp       qword ptr [ebp-8]
 005840F0    wait
 005840F1    mov        eax,ebx
 005840F3    call       00588A98
 005840F8    mov        edx,dword ptr [eax]
 005840FA    call       dword ptr [edx+48]
 005840FD    mov        dword ptr [ebp-0C],eax
 00584100    fild       dword ptr [ebp-0C]
 00584103    fild       dword ptr [ebx+8DC]; TRvNDRWriter.?f8DC:Single
 00584109    fdivp      st(1),st
 0058410B    fadd       qword ptr [ebx+7E8]; TRvNDRWriter.?f7E8:?Double
 00584111    fadd       qword ptr [ebx+7F0]; TRvNDRWriter.?f7F0:?Double
 00584117    fsub       qword ptr [ebp-8]
 0058411A    fstp       qword ptr [ebx+868]; TRvNDRWriter.?f868:?Double
 00584120    wait
 00584121    push       dword ptr [ebx+86C]; TRvNDRWriter.?f86C:dword
 00584127    push       dword ptr [ebx+868]; TRvNDRWriter.?f868:?Double
 0058412D    mov        eax,ebx
 0058412F    call       00586100
 00584134    add        esp,0FFFFFFF8
 00584137    fstp       qword ptr [esp]
 0058413A    wait
 0058413B    mov        eax,ebx
 0058413D    call       0058431C
 00584142    mov        eax,dword ptr [ebp+8]
 00584145    mov        dword ptr [ebx+948],eax; TRvNDRWriter.?f948:dword
 0058414B    mov        eax,dword ptr [ebp+0C]
 0058414E    mov        dword ptr [ebx+94C],eax; TRvNDRWriter.?f94C:dword
 00584154    pop        ebx
 00584155    mov        esp,ebp
 00584157    pop        ebp
 00584158    ret        8
*}
//end;

//0058415C
procedure TRvNDRWriter.GetMarginRight(Self:TBaseReport);
begin
{*
 0058415C    add        esp,0FFFFFFF8
 0058415F    mov        edx,dword ptr [eax+948]; TRvNDRWriter.?f948:dword
 00584165    mov        dword ptr [esp],edx
 00584168    mov        edx,dword ptr [eax+94C]; TRvNDRWriter.?f94C:dword
 0058416E    mov        dword ptr [esp+4],edx
 00584172    fld        qword ptr [esp]
 00584175    pop        ecx
 00584176    pop        edx
 00584177    ret
*}
end;

//00584178
//procedure TRvNDRWriter.SetMarginTop(Self:TBaseReport; ?:?; ?:?);
//begin
{*
 00584178    push       ebp
 00584179    mov        ebp,esp
 0058417B    push       ebx
 0058417C    mov        ebx,eax
 0058417E    push       dword ptr [ebp+0C]
 00584181    push       dword ptr [ebp+8]
 00584184    mov        eax,ebx
 00584186    call       00586154
 0058418B    fstp       qword ptr [ebx+870]; TRvNDRWriter.?f870:?Double
 00584191    wait
 00584192    push       dword ptr [ebx+874]; TRvNDRWriter.?f874:dword
 00584198    push       dword ptr [ebx+870]; TRvNDRWriter.?f870:?Double
 0058419E    mov        eax,ebx
 005841A0    call       0058611C
 005841A5    add        esp,0FFFFFFF8
 005841A8    fstp       qword ptr [esp]
 005841AB    wait
 005841AC    mov        eax,ebx
 005841AE    call       00584364
 005841B3    mov        eax,dword ptr [ebp+8]
 005841B6    mov        dword ptr [ebx+950],eax; TRvNDRWriter.?f950:dword
 005841BC    mov        eax,dword ptr [ebp+0C]
 005841BF    mov        dword ptr [ebx+954],eax; TRvNDRWriter.?f954:dword
 005841C5    pop        ebx
 005841C6    pop        ebp
 005841C7    ret        8
*}
//end;

//005841CC
procedure TRvNDRWriter.GetMarginTop(Self:TBaseReport);
begin
{*
 005841CC    add        esp,0FFFFFFF8
 005841CF    mov        edx,dword ptr [eax+950]; TRvNDRWriter.?f950:dword
 005841D5    mov        dword ptr [esp],edx
 005841D8    mov        edx,dword ptr [eax+954]; TRvNDRWriter.?f954:dword
 005841DE    mov        dword ptr [esp+4],edx
 005841E2    fld        qword ptr [esp]
 005841E5    pop        ecx
 005841E6    pop        edx
 005841E7    ret
*}
end;

//005841E8
//procedure TRvNDRWriter.SetMarginBottom(Self:TBaseReport; ?:?; ?:?);
//begin
{*
 005841E8    push       ebp
 005841E9    mov        ebp,esp
 005841EB    add        esp,0FFFFFFF4
 005841EE    push       ebx
 005841EF    mov        ebx,eax
 005841F1    mov        eax,ebx
 005841F3    call       00584D2C
 005841F8    test       al,al
>005841FA    je         0058421C
 005841FC    fld        qword ptr [ebx+990]; TRvNDRWriter.?f990:?Double
 00584202    fsub       qword ptr [ebp+8]
 00584205    add        esp,0FFFFFFF8
 00584208    fstp       qword ptr [esp]
 0058420B    wait
 0058420C    mov        eax,ebx
 0058420E    call       00586154
 00584213    fstp       qword ptr [ebx+878]; TRvNDRWriter.?f878:?Double
 00584219    wait
>0058421A    jmp        0058425D
 0058421C    push       dword ptr [ebp+0C]
 0058421F    push       dword ptr [ebp+8]
 00584222    mov        eax,ebx
 00584224    call       00586154
 00584229    fstp       qword ptr [ebp-8]
 0058422C    wait
 0058422D    mov        eax,ebx
 0058422F    call       00588A98
 00584234    mov        edx,dword ptr [eax]
 00584236    call       dword ptr [edx+44]
 00584239    mov        dword ptr [ebp-0C],eax
 0058423C    fild       dword ptr [ebp-0C]
 0058423F    fild       dword ptr [ebx+8E0]; TRvNDRWriter.?f8E0:Single
 00584245    fdivp      st(1),st
 00584247    fadd       qword ptr [ebx+7F8]; TRvNDRWriter.?f7F8:?Double
 0058424D    fadd       qword ptr [ebx+800]; TRvNDRWriter.?f800:?Double
 00584253    fsub       qword ptr [ebp-8]
 00584256    fstp       qword ptr [ebx+878]; TRvNDRWriter.?f878:?Double
 0058425C    wait
 0058425D    push       dword ptr [ebx+87C]; TRvNDRWriter.?f87C:dword
 00584263    push       dword ptr [ebx+878]; TRvNDRWriter.?f878:?Double
 00584269    mov        eax,ebx
 0058426B    call       0058611C
 00584270    add        esp,0FFFFFFF8
 00584273    fstp       qword ptr [esp]
 00584276    wait
 00584277    mov        eax,ebx
 00584279    call       005843AC
 0058427E    mov        eax,dword ptr [ebp+8]
 00584281    mov        dword ptr [ebx+958],eax; TRvNDRWriter.?f958:dword
 00584287    mov        eax,dword ptr [ebp+0C]
 0058428A    mov        dword ptr [ebx+95C],eax; TRvNDRWriter.?f95C:dword
 00584290    pop        ebx
 00584291    mov        esp,ebp
 00584293    pop        ebp
 00584294    ret        8
*}
//end;

//00584298
procedure TRvNDRWriter.GetMarginBottom(Self:TBaseReport);
begin
{*
 00584298    add        esp,0FFFFFFF8
 0058429B    mov        edx,dword ptr [eax+958]; TRvNDRWriter.?f958:dword
 005842A1    mov        dword ptr [esp],edx
 005842A4    mov        edx,dword ptr [eax+95C]; TRvNDRWriter.?f95C:dword
 005842AA    mov        dword ptr [esp+4],edx
 005842AE    fld        qword ptr [esp]
 005842B1    pop        ecx
 005842B2    pop        edx
 005842B3    ret
*}
end;

//005842B4
//procedure sub_005842B4(?:TRvNDRWriter; ?:?; ?:?);
//begin
{*
 005842B4    push       ebp
 005842B5    mov        ebp,esp
 005842B7    push       ebx
 005842B8    mov        ebx,eax
 005842BA    push       dword ptr [ebp+0C]
 005842BD    push       dword ptr [ebp+8]
 005842C0    mov        eax,ebx
 005842C2    call       00586138
 005842C7    fstp       qword ptr [ebx+880]; TRvNDRWriter.?f880:?Double
 005842CD    wait
 005842CE    fld        qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 005842D4    fcomp      qword ptr [ebx+880]; TRvNDRWriter.?f880:?Double
 005842DA    fnstsw     al
 005842DC    sahf
>005842DD    jae        005842F7
 005842DF    mov        eax,dword ptr [ebx+880]; TRvNDRWriter.?f880:?Double
 005842E5    mov        dword ptr [ebx+8A0],eax; TRvNDRWriter.?f8A0:?Double
 005842EB    mov        eax,dword ptr [ebx+884]; TRvNDRWriter.?f884:dword
 005842F1    mov        dword ptr [ebx+8A4],eax; TRvNDRWriter.?f8A4:dword
 005842F7    pop        ebx
 005842F8    pop        ebp
 005842F9    ret        8
*}
//end;

//005842FC
//procedure sub_005842FC(?:dword);
//begin
{*
 005842FC    add        esp,0FFFFFFF8
 005842FF    push       dword ptr [eax+884]
 00584305    push       dword ptr [eax+880]
 0058430B    call       00586100
 00584310    fstp       qword ptr [esp]
 00584313    wait
 00584314    fld        qword ptr [esp]
 00584317    pop        ecx
 00584318    pop        edx
 00584319    ret
*}
//end;

//0058431C
//procedure sub_0058431C(?:TRvNDRWriter; ?:?; ?:?);
//begin
{*
 0058431C    push       ebp
 0058431D    mov        ebp,esp
 0058431F    push       ebx
 00584320    mov        ebx,eax
 00584322    push       dword ptr [ebp+0C]
 00584325    push       dword ptr [ebp+8]
 00584328    mov        eax,ebx
 0058432A    call       00586138
 0058432F    fstp       qword ptr [ebx+888]; TRvNDRWriter.?f888:?Double
 00584335    wait
 00584336    fld        qword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 0058433C    fcomp      qword ptr [ebx+888]; TRvNDRWriter.?f888:?Double
 00584342    fnstsw     al
 00584344    sahf
>00584345    jbe        0058435F
 00584347    mov        eax,dword ptr [ebx+888]; TRvNDRWriter.?f888:?Double
 0058434D    mov        dword ptr [ebx+8A0],eax; TRvNDRWriter.?f8A0:?Double
 00584353    mov        eax,dword ptr [ebx+88C]; TRvNDRWriter.?f88C:dword
 00584359    mov        dword ptr [ebx+8A4],eax; TRvNDRWriter.?f8A4:dword
 0058435F    pop        ebx
 00584360    pop        ebp
 00584361    ret        8
*}
//end;

//00584364
//procedure sub_00584364(?:TRvNDRWriter; ?:?; ?:?);
//begin
{*
 00584364    push       ebp
 00584365    mov        ebp,esp
 00584367    push       ebx
 00584368    mov        ebx,eax
 0058436A    push       dword ptr [ebp+0C]
 0058436D    push       dword ptr [ebp+8]
 00584370    mov        eax,ebx
 00584372    call       00586154
 00584377    fstp       qword ptr [ebx+890]; TRvNDRWriter.?f890:?Double
 0058437D    wait
 0058437E    fld        qword ptr [ebx+8A8]; TRvNDRWriter.?f8A8:?Double
 00584384    fcomp      qword ptr [ebx+890]; TRvNDRWriter.?f890:?Double
 0058438A    fnstsw     al
 0058438C    sahf
>0058438D    jae        005843A7
 0058438F    mov        eax,dword ptr [ebx+890]; TRvNDRWriter.?f890:?Double
 00584395    mov        dword ptr [ebx+8A8],eax; TRvNDRWriter.?f8A8:?Double
 0058439B    mov        eax,dword ptr [ebx+894]; TRvNDRWriter.?f894:dword
 005843A1    mov        dword ptr [ebx+8AC],eax; TRvNDRWriter.?f8AC:dword
 005843A7    pop        ebx
 005843A8    pop        ebp
 005843A9    ret        8
*}
//end;

//005843AC
//procedure sub_005843AC(?:TRvNDRWriter; ?:?; ?:?);
//begin
{*
 005843AC    push       ebp
 005843AD    mov        ebp,esp
 005843AF    push       ebx
 005843B0    mov        ebx,eax
 005843B2    push       dword ptr [ebp+0C]
 005843B5    push       dword ptr [ebp+8]
 005843B8    mov        eax,ebx
 005843BA    call       00586154
 005843BF    fstp       qword ptr [ebx+898]; TRvNDRWriter.?f898:?Double
 005843C5    wait
 005843C6    fld        qword ptr [ebx+8A8]; TRvNDRWriter.?f8A8:?Double
 005843CC    fcomp      qword ptr [ebx+898]; TRvNDRWriter.?f898:?Double
 005843D2    fnstsw     al
 005843D4    sahf
>005843D5    jbe        005843EF
 005843D7    mov        eax,dword ptr [ebx+898]; TRvNDRWriter.?f898:?Double
 005843DD    mov        dword ptr [ebx+8A8],eax; TRvNDRWriter.?f8A8:?Double
 005843E3    mov        eax,dword ptr [ebx+89C]; TRvNDRWriter.?f89C:dword
 005843E9    mov        dword ptr [ebx+8AC],eax; TRvNDRWriter.?f8AC:dword
 005843EF    pop        ebx
 005843F0    pop        ebp
 005843F1    ret        8
*}
//end;

//005843F4
//procedure sub_005843F4(?:dword);
//begin
{*
 005843F4    add        esp,0FFFFFFF8
 005843F7    push       dword ptr [eax+89C]
 005843FD    push       dword ptr [eax+898]
 00584403    call       0058611C
 00584408    fstp       qword ptr [esp]
 0058440B    wait
 0058440C    fld        qword ptr [esp]
 0058440F    pop        ecx
 00584410    pop        edx
 00584411    ret
*}
//end;

//00584414
//procedure TRvNDRWriter.SetTabShade(Self:TBaseReport; ?:byte);
//begin
{*
 00584414    cmp        edx,64
>00584417    jl         00584424
 00584419    mov        dword ptr [eax+960],64; TRvNDRWriter.?f960:byte
 00584423    ret
 00584424    test       edx,edx
>00584426    jg         00584432
 00584428    xor        edx,edx
 0058442A    mov        dword ptr [eax+960],edx; TRvNDRWriter.?f960:byte
>00584430    jmp        00584438
 00584432    mov        dword ptr [eax+960],edx; TRvNDRWriter.?f960:byte
 00584438    ret
*}
//end;

//0058443C
//procedure sub_0058443C(?:?);
//begin
{*
 0058443C    add        esp,0FFFFFFF8
 0058443F    push       dword ptr [eax+7EC]
 00584445    push       dword ptr [eax+7E8]
 0058444B    call       00586100
 00584450    fstp       qword ptr [esp]
 00584453    wait
 00584454    fld        qword ptr [esp]
 00584457    pop        ecx
 00584458    pop        edx
 00584459    ret
*}
//end;

//0058445C
//procedure sub_0058445C(?:?);
//begin
{*
 0058445C    add        esp,0FFFFFFF8
 0058445F    push       dword ptr [eax+7F4]
 00584465    push       dword ptr [eax+7F0]
 0058446B    call       00586100
 00584470    fstp       qword ptr [esp]
 00584473    wait
 00584474    fld        qword ptr [esp]
 00584477    pop        ecx
 00584478    pop        edx
 00584479    ret
*}
//end;

//0058447C
//procedure sub_0058447C(?:?);
//begin
{*
 0058447C    add        esp,0FFFFFFF8
 0058447F    push       dword ptr [eax+7FC]
 00584485    push       dword ptr [eax+7F8]
 0058448B    call       0058611C
 00584490    fstp       qword ptr [esp]
 00584493    wait
 00584494    fld        qword ptr [esp]
 00584497    pop        ecx
 00584498    pop        edx
 00584499    ret
*}
//end;

//0058449C
//procedure sub_0058449C(?:?);
//begin
{*
 0058449C    add        esp,0FFFFFFF8
 0058449F    push       dword ptr [eax+804]
 005844A5    push       dword ptr [eax+800]
 005844AB    call       0058611C
 005844B0    fstp       qword ptr [esp]
 005844B3    wait
 005844B4    fld        qword ptr [esp]
 005844B7    pop        ecx
 005844B8    pop        edx
 005844B9    ret
*}
//end;

//005844BC
//procedure sub_005844BC(?:dword);
//begin
{*
 005844BC    add        esp,0FFFFFFF8
 005844BF    push       dword ptr [eax+8A4]
 005844C5    push       dword ptr [eax+8A0]
 005844CB    call       00586100
 005844D0    fstp       qword ptr [esp]
 005844D3    wait
 005844D4    fld        qword ptr [esp]
 005844D7    pop        ecx
 005844D8    pop        edx
 005844D9    ret
*}
//end;

//005844DC
//procedure sub_005844DC(?:dword; ?:?; ?:?);
//begin
{*
 005844DC    push       ebp
 005844DD    mov        ebp,esp
 005844DF    push       ebx
 005844E0    mov        ebx,eax
 005844E2    push       dword ptr [ebp+0C]
 005844E5    push       dword ptr [ebp+8]
 005844E8    mov        eax,ebx
 005844EA    call       00586138
 005844EF    fstp       qword ptr [ebx+8A0]
 005844F5    wait
 005844F6    pop        ebx
 005844F7    pop        ebp
 005844F8    ret        8
*}
//end;

//005844FC
//function sub_005844FC(?:dword):?;
//begin
{*
 005844FC    add        esp,0FFFFFFF8
 005844FF    push       dword ptr [eax+8AC]
 00584505    push       dword ptr [eax+8A8]
 0058450B    call       0058611C
 00584510    fstp       qword ptr [esp]
 00584513    wait
 00584514    fld        qword ptr [esp]
 00584517    pop        ecx
 00584518    pop        edx
 00584519    ret
*}
//end;

//0058451C
//procedure sub_0058451C(?:dword; ?:?; ?:?);
//begin
{*
 0058451C    push       ebp
 0058451D    mov        ebp,esp
 0058451F    push       ebx
 00584520    mov        ebx,eax
 00584522    mov        eax,ebx
 00584524    mov        edx,dword ptr [eax]
 00584526    call       dword ptr [edx+12C]
 0058452C    push       dword ptr [ebp+0C]
 0058452F    push       dword ptr [ebp+8]
 00584532    mov        eax,ebx
 00584534    call       00586154
 00584539    fstp       qword ptr [ebx+8A8]
 0058453F    wait
 00584540    pop        ebx
 00584541    pop        ebp
 00584542    ret        8
*}
//end;

//00584548
//procedure TRvNDRWriter.SetUnits(Self:TBaseReport; ?:?);
//begin
{*
 00584548    mov        ecx,edx
 0058454A    mov        byte ptr [eax+930],cl; TRvNDRWriter.?f930:byte
 00584550    sub        cl,1
>00584553    jb         00584561
>00584555    je         00584574
 00584557    dec        cl
>00584559    je         00584589
 0058455B    dec        cl
>0058455D    je         0058459E
>0058455F    jmp        005845B1
 00584561    xor        edx,edx
 00584563    mov        dword ptr [eax+938],edx; TRvNDRWriter.?f938:?Double
 00584569    mov        dword ptr [eax+93C],3FF00000; TRvNDRWriter.?f93C:dword
 00584573    ret
 00584574    mov        dword ptr [eax+938],66666666; TRvNDRWriter.?f938:?Double
 0058457E    mov        dword ptr [eax+93C],40396666; TRvNDRWriter.?f93C:dword
 00584588    ret
 00584589    mov        dword ptr [eax+938],851EB852; TRvNDRWriter.?f938:?Double
 00584593    mov        dword ptr [eax+93C],400451EB; TRvNDRWriter.?f93C:dword
 0058459D    ret
 0058459E    xor        edx,edx
 005845A0    mov        dword ptr [eax+938],edx; TRvNDRWriter.?f938:?Double
 005845A6    mov        dword ptr [eax+93C],40520000; TRvNDRWriter.?f93C:dword
 005845B0    ret
 005845B1    ret
*}
//end;

//005845B4
//procedure TRvNDRWriter.SetUnitsFactor(Self:TBaseReport; ?:?; ?:?);
//begin
{*
 005845B4    push       ebp
 005845B5    mov        ebp,esp
 005845B7    add        esp,0FFFFFFE0
 005845BA    mov        edx,eax
 005845BC    fld        qword ptr [ebp+8]
 005845BF    fcomp      dword ptr ds:[584680]; 0:Single
 005845C5    fnstsw     al
 005845C7    sahf
>005845C8    jbe        00584677
 005845CE    mov        eax,dword ptr [ebp+8]
 005845D1    mov        dword ptr [edx+938],eax; TRvNDRWriter.?f938:?Double
 005845D7    mov        eax,dword ptr [ebp+0C]
 005845DA    mov        dword ptr [edx+93C],eax; TRvNDRWriter.?f93C:dword
 005845E0    xor        eax,eax
 005845E2    mov        dword ptr [ebp-20],eax
 005845E5    mov        dword ptr [ebp-1C],3FF00000
 005845EC    mov        dword ptr [ebp-18],66666666
 005845F3    mov        dword ptr [ebp-14],40396666
 005845FA    mov        dword ptr [ebp-10],851EB852
 00584601    mov        dword ptr [ebp-0C],400451EB
 00584608    xor        eax,eax
 0058460A    mov        dword ptr [ebp-8],eax
 0058460D    mov        dword ptr [ebp-4],40520000
 00584614    fld        qword ptr [edx+938]; TRvNDRWriter.?f938:?Double
 0058461A    fcomp      qword ptr [ebp-20]
 0058461D    fnstsw     al
 0058461F    sahf
>00584620    jne        0058462B
 00584622    mov        byte ptr [edx+930],0; TRvNDRWriter.?f930:byte
>00584629    jmp        00584677
 0058462B    fld        qword ptr [edx+938]; TRvNDRWriter.?f938:?Double
 00584631    fcomp      qword ptr [ebp-18]
 00584634    fnstsw     al
 00584636    sahf
>00584637    jne        00584642
 00584639    mov        byte ptr [edx+930],1; TRvNDRWriter.?f930:byte
>00584640    jmp        00584677
 00584642    fld        qword ptr [edx+938]; TRvNDRWriter.?f938:?Double
 00584648    fcomp      qword ptr [ebp-10]
 0058464B    fnstsw     al
 0058464D    sahf
>0058464E    jne        00584659
 00584650    mov        byte ptr [edx+930],2; TRvNDRWriter.?f930:byte
>00584657    jmp        00584677
 00584659    fld        qword ptr [edx+938]; TRvNDRWriter.?f938:?Double
 0058465F    fcomp      qword ptr [ebp-8]
 00584662    fnstsw     al
 00584664    sahf
>00584665    jne        00584670
 00584667    mov        byte ptr [edx+930],3; TRvNDRWriter.?f930:byte
>0058466E    jmp        00584677
 00584670    mov        byte ptr [edx+930],4; TRvNDRWriter.?f930:byte
 00584677    mov        esp,ebp
 00584679    pop        ebp
 0058467A    ret        8
*}
//end;

//00584684
//procedure sub_00584684(?:TRvNDRWriter);
//begin
{*
 00584684    push       ebx
 00584685    add        esp,0FFFFFFF4
 00584688    mov        ebx,eax
 0058468A    mov        eax,ebx
 0058468C    call       00584D2C
 00584691    test       al,al
>00584693    je         005846AA
 00584695    mov        eax,dword ptr [ebx+990]; TRvNDRWriter.?f990:?Double
 0058469B    mov        dword ptr [esp],eax
 0058469E    mov        eax,dword ptr [ebx+994]; TRvNDRWriter.?f994:dword
 005846A4    mov        dword ptr [esp+4],eax
>005846A8    jmp        005846E4
 005846AA    mov        eax,ebx
 005846AC    call       00588A98
 005846B1    mov        edx,dword ptr [eax]
 005846B3    call       dword ptr [edx+44]
 005846B6    mov        dword ptr [esp+8],eax
 005846BA    fild       dword ptr [esp+8]
 005846BE    fild       dword ptr [ebx+8E0]; TRvNDRWriter.?f8E0:Single
 005846C4    fdivp      st(1),st
 005846C6    fadd       qword ptr [ebx+7F8]; TRvNDRWriter.?f7F8:?Double
 005846CC    fadd       qword ptr [ebx+800]; TRvNDRWriter.?f800:?Double
 005846D2    add        esp,0FFFFFFF8
 005846D5    fstp       qword ptr [esp]
 005846D8    wait
 005846D9    mov        eax,ebx
 005846DB    call       0058611C
 005846E0    fstp       qword ptr [esp]
 005846E3    wait
 005846E4    fld        qword ptr [esp]
 005846E7    add        esp,0C
 005846EA    pop        ebx
 005846EB    ret
*}
//end;

//005846EC
//procedure sub_005846EC(?:TRvNDRWriter);
//begin
{*
 005846EC    push       ebx
 005846ED    add        esp,0FFFFFFF4
 005846F0    mov        ebx,eax
 005846F2    mov        eax,ebx
 005846F4    call       00584D2C
 005846F9    test       al,al
>005846FB    je         00584712
 005846FD    mov        eax,dword ptr [ebx+998]; TRvNDRWriter.?f998:?Double
 00584703    mov        dword ptr [esp],eax
 00584706    mov        eax,dword ptr [ebx+99C]; TRvNDRWriter.?f99C:dword
 0058470C    mov        dword ptr [esp+4],eax
>00584710    jmp        0058474C
 00584712    mov        eax,ebx
 00584714    call       00588A98
 00584719    mov        edx,dword ptr [eax]
 0058471B    call       dword ptr [edx+48]
 0058471E    mov        dword ptr [esp+8],eax
 00584722    fild       dword ptr [esp+8]
 00584726    fild       dword ptr [ebx+8DC]; TRvNDRWriter.?f8DC:Single
 0058472C    fdivp      st(1),st
 0058472E    fadd       qword ptr [ebx+7E8]; TRvNDRWriter.?f7E8:?Double
 00584734    fadd       qword ptr [ebx+7F0]; TRvNDRWriter.?f7F0:?Double
 0058473A    add        esp,0FFFFFFF8
 0058473D    fstp       qword ptr [esp]
 00584740    wait
 00584741    mov        eax,ebx
 00584743    call       00586100
 00584748    fstp       qword ptr [esp]
 0058474B    wait
 0058474C    fld        qword ptr [esp]
 0058474F    add        esp,0C
 00584752    pop        ebx
 00584753    ret
*}
//end;

//00584754
//procedure sub_00584754(?:?);
//begin
{*
 00584754    mov        byte ptr [eax+972],dl; TBaseReport.?f972:byte
 0058475A    cmp        byte ptr [eax+8FD],0; TBaseReport.?f8FD:byte
>00584761    jne        00584768
 00584763    call       0058476C
 00584768    ret
*}
//end;

//0058476C
//procedure sub_0058476C(?:TBaseReport);
//begin
{*
 0058476C    push       ebx
 0058476D    add        esp,0FFFFFFF8
 00584770    mov        ebx,eax
 00584772    mov        eax,ebx
 00584774    call       00584D2C
 00584779    test       al,al
>0058477B    jne        005847A1
 0058477D    cmp        byte ptr [ebx+972],2; TBaseReport.?f972:byte
>00584784    je         005847FF
 00584786    mov        eax,ebx
 00584788    call       00588A98
 0058478D    mov        dl,byte ptr [ebx+972]; TBaseReport.?f972:byte
 00584793    mov        ecx,dword ptr [eax]
 00584795    call       dword ptr [ecx+24]
 00584798    mov        eax,ebx
 0058479A    call       005855B4
>0058479F    jmp        005847FF
 005847A1    mov        al,byte ptr [ebx+972]; TBaseReport.?f972:byte
 005847A7    cmp        al,byte ptr [ebx+971]; TBaseReport.?f971:byte
>005847AD    je         005847FF
 005847AF    cmp        byte ptr [ebx+971],1; TBaseReport.?f971:byte
>005847B6    je         005847C1
 005847B8    cmp        byte ptr [ebx+972],1; TBaseReport.?f972:byte
>005847BF    jne        005847FF
 005847C1    mov        eax,dword ptr [ebx+998]; TBaseReport.?f998:?Double
 005847C7    mov        dword ptr [esp],eax
 005847CA    mov        eax,dword ptr [ebx+99C]; TBaseReport.?f99C:dword
 005847D0    mov        dword ptr [esp+4],eax
 005847D4    mov        eax,dword ptr [ebx+990]; TBaseReport.?f990:?Double
 005847DA    mov        dword ptr [ebx+998],eax; TBaseReport.?f998:?Double
 005847E0    mov        eax,dword ptr [ebx+994]; TBaseReport.?f994:dword
 005847E6    mov        dword ptr [ebx+99C],eax; TBaseReport.?f99C:dword
 005847EC    mov        eax,dword ptr [esp]
 005847EF    mov        dword ptr [ebx+990],eax; TBaseReport.?f990:?Double
 005847F5    mov        eax,dword ptr [esp+4]
 005847F9    mov        dword ptr [ebx+994],eax; TBaseReport.?f994:dword
 005847FF    mov        al,byte ptr [ebx+972]; TBaseReport.?f972:byte
 00584805    mov        byte ptr [ebx+971],al; TBaseReport.?f971:byte
 0058480B    pop        ecx
 0058480C    pop        edx
 0058480D    pop        ebx
 0058480E    ret
*}
//end;

//00584810
//procedure TRvNDRWriter.SetCopies(Self:TBaseReport; ?:dword);
//begin
{*
 00584810    push       ebx
 00584811    push       esi
 00584812    mov        esi,edx
 00584814    mov        ebx,eax
 00584816    mov        eax,ebx
 00584818    call       00584C94
 0058481D    mov        eax,ebx
 0058481F    call       00584D2C
 00584824    test       al,al
>00584826    jne        0058483A
 00584828    test       esi,esi
>0058482A    jle        0058483A
 0058482C    mov        eax,ebx
 0058482E    call       00588A98
 00584833    mov        edx,esi
 00584835    mov        ecx,dword ptr [eax]
 00584837    call       dword ptr [ecx+2C]
 0058483A    mov        dword ptr [ebx+974],esi; TRvNDRWriter.?f974:dword
 00584840    pop        esi
 00584841    pop        ebx
 00584842    ret
*}
//end;

//00584844
//function sub_00584844:?;
//begin
{*
 00584844    call       005807DC
 00584849    test       eax,eax
>0058484B    jne        00584850
 0058484D    xor        eax,eax
 0058484F    ret
 00584850    call       005807DC
 00584855    call       0057EF80
 0058485A    ret
*}
//end;

//0058485C
//function sub_0058485C(?:TBaseReport; ?:?; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 0058485C    push       ebp
 0058485D    mov        ebp,esp
 0058485F    push       ecx
 00584860    push       ebx
 00584861    push       esi
 00584862    mov        dword ptr [ebp-4],edx
 00584865    mov        esi,eax
 00584867    mov        eax,esi
 00584869    call       00584C94
 0058486E    mov        eax,esi
 00584870    call       00584D2C
 00584875    test       al,al
>00584877    je         005848BD
 00584879    fld        qword ptr [ebp+10]
 0058487C    fcomp      dword ptr ds:[584914]; 0:Single
 00584882    fnstsw     al
 00584884    sahf
>00584885    je         005848B9
 00584887    fld        qword ptr [ebp+8]
 0058488A    fcomp      dword ptr ds:[584914]; 0:Single
 00584890    fnstsw     al
 00584892    sahf
>00584893    je         005848B9
 00584895    mov        eax,dword ptr [ebp+10]
 00584898    mov        dword ptr [esi+998],eax; TBaseReport.?f998:?Double
 0058489E    mov        eax,dword ptr [ebp+14]
 005848A1    mov        dword ptr [esi+99C],eax; TBaseReport.?f99C:dword
 005848A7    mov        eax,dword ptr [ebp+8]
 005848AA    mov        dword ptr [esi+990],eax; TBaseReport.?f990:?Double
 005848B0    mov        eax,dword ptr [ebp+0C]
 005848B3    mov        dword ptr [esi+994],eax; TBaseReport.?f994:dword
 005848B9    mov        bl,1
>005848BB    jmp        00584908
 005848BD    push       dword ptr [ebp+0C]
 005848C0    push       dword ptr [ebp+8]
 005848C3    mov        eax,esi
 005848C5    call       00586154
 005848CA    fmul       dword ptr ds:[584918]; 254:Single
 005848D0    call       @ROUND
 005848D5    push       eax
 005848D6    push       dword ptr [ebp+14]
 005848D9    push       dword ptr [ebp+10]
 005848DC    mov        eax,esi
 005848DE    call       00586138
 005848E3    fmul       dword ptr ds:[584918]; 254:Single
 005848E9    call       @ROUND
 005848EE    push       eax
 005848EF    mov        eax,esi
 005848F1    call       00588A98
 005848F6    mov        edx,dword ptr [ebp-4]
 005848F9    pop        ecx
 005848FA    mov        ebx,dword ptr [eax]
 005848FC    call       dword ptr [ebx+78]
 005848FF    mov        ebx,eax
 00584901    mov        eax,esi
 00584903    call       005855B4
 00584908    mov        eax,ebx
 0058490A    pop        esi
 0058490B    pop        ebx
 0058490C    pop        ecx
 0058490D    pop        ebp
 0058490E    ret        10
*}
//end;

//0058491C
//procedure sub_0058491C(?:TRvNDRWriter; ?:TFileName);
//begin
{*
 0058491C    push       ebp
 0058491D    mov        ebp,esp
 0058491F    push       ecx
 00584920    push       ebx
 00584921    mov        dword ptr [ebp-4],edx
 00584924    mov        ebx,eax
 00584926    mov        eax,dword ptr [ebp-4]
 00584929    call       @LStrAddRef
 0058492E    xor        eax,eax
 00584930    push       ebp
 00584931    push       584988
 00584936    push       dword ptr fs:[eax]
 00584939    mov        dword ptr fs:[eax],esp
 0058493C    mov        eax,ebx
 0058493E    call       00584D2C
 00584943    test       al,al
>00584945    jne        00584972
 00584947    mov        eax,ebx
 00584949    call       00584C94
 0058494E    lea        eax,[ebx+858]
 00584954    mov        edx,dword ptr [ebp-4]
 00584957    call       @LStrAsg
 0058495C    call       005807DC
 00584961    test       eax,eax
>00584963    je         00584972
 00584965    call       005807DC
 0058496A    mov        edx,dword ptr [ebp-4]
 0058496D    call       0057F45C
 00584972    xor        eax,eax
 00584974    pop        edx
 00584975    pop        ecx
 00584976    pop        ecx
 00584977    mov        dword ptr fs:[eax],edx
 0058497A    push       58498F
 0058497F    lea        eax,[ebp-4]
 00584982    call       @LStrClr
 00584987    ret
<00584988    jmp        @HandleFinally
<0058498D    jmp        0058497F
 0058498F    pop        ebx
 00584990    pop        ecx
 00584991    pop        ebp
 00584992    ret
*}
//end;

//00584994
//procedure sub_00584994(?:TBaseReport; ?:AnsiString);
//begin
{*
 00584994    push       ebx
 00584995    push       esi
 00584996    mov        esi,edx
 00584998    mov        ebx,eax
 0058499A    mov        eax,ebx
 0058499C    mov        edx,dword ptr [eax]
 0058499E    call       dword ptr [edx+60]; TBaseReport.sub_00583EC8
 005849A1    cmp        al,1
>005849A3    jne        005849B9
 005849A5    mov        ebx,dword ptr ds:[61B830]
 005849AB    mov        ebx,dword ptr [ebx]
 005849AD    mov        edx,esi
 005849AF    mov        eax,5849EC; 'Preview'
 005849B4    call       ebx
 005849B6    pop        esi
 005849B7    pop        ebx
 005849B8    ret
 005849B9    call       005807DC
 005849BE    test       eax,eax
>005849C0    jne        005849D5
 005849C2    mov        ebx,dword ptr ds:[61B830]
 005849C8    mov        ebx,dword ptr [ebx]
 005849CA    mov        edx,esi
 005849CC    mov        eax,5849FC; 'Render'
 005849D1    call       ebx
>005849D3    jmp        005849E1
 005849D5    call       005807DC
 005849DA    mov        edx,esi
 005849DC    call       0057EFE8
 005849E1    pop        esi
 005849E2    pop        ebx
 005849E3    ret
*}
//end;

//00584A04
//procedure sub_00584A04(?:TBaseReport; ?:AnsiString);
//begin
{*
 00584A04    push       ebx
 00584A05    push       esi
 00584A06    mov        esi,edx
 00584A08    mov        ebx,eax
 00584A0A    mov        eax,ebx
 00584A0C    mov        edx,dword ptr [eax]
 00584A0E    call       dword ptr [edx+60]; TBaseReport.sub_00583EC8
 00584A11    cmp        al,1
>00584A13    jne        00584A29
 00584A15    mov        ebx,dword ptr ds:[61B830]
 00584A1B    mov        ebx,dword ptr [ebx]
 00584A1D    mov        edx,esi
 00584A1F    mov        eax,584A5C; 'Preview'
 00584A24    call       ebx
 00584A26    pop        esi
 00584A27    pop        ebx
 00584A28    ret
 00584A29    call       005807DC
 00584A2E    test       eax,eax
>00584A30    jne        00584A45
 00584A32    mov        ebx,dword ptr ds:[61B830]
 00584A38    mov        ebx,dword ptr [ebx]
 00584A3A    mov        edx,esi
 00584A3C    mov        eax,584A6C; 'Render'
 00584A41    call       ebx
>00584A43    jmp        00584A51
 00584A45    call       005807DC
 00584A4A    mov        edx,esi
 00584A4C    call       0057EFA0
 00584A51    pop        esi
 00584A52    pop        ebx
 00584A53    ret
*}
//end;

//00584A74
//procedure sub_00584A74(?:TBaseReport; ?:AnsiString);
//begin
{*
 00584A74    push       ebx
 00584A75    push       esi
 00584A76    mov        esi,edx
 00584A78    mov        ebx,eax
 00584A7A    mov        eax,ebx
 00584A7C    mov        edx,dword ptr [eax]
 00584A7E    call       dword ptr [edx+60]; TBaseReport.sub_00583EC8
 00584A81    cmp        al,1
>00584A83    jne        00584A99
 00584A85    mov        ebx,dword ptr ds:[61B830]
 00584A8B    mov        ebx,dword ptr [ebx]
 00584A8D    mov        edx,esi
 00584A8F    mov        eax,584ACC; 'Screen'
 00584A94    call       ebx
 00584A96    pop        esi
 00584A97    pop        ebx
 00584A98    ret
 00584A99    call       005807DC
 00584A9E    test       eax,eax
>00584AA0    jne        00584AB5
 00584AA2    mov        ebx,dword ptr ds:[61B830]
 00584AA8    mov        ebx,dword ptr [ebx]
 00584AAA    mov        edx,esi
 00584AAC    mov        eax,584ADC; 'Render'
 00584AB1    call       ebx
>00584AB3    jmp        00584AC1
 00584AB5    call       005807DC
 00584ABA    mov        edx,esi
 00584ABC    call       0057EFC4
 00584AC1    pop        esi
 00584AC2    pop        ebx
 00584AC3    ret
*}
//end;

//00584AE4
//procedure sub_00584AE4(?:TBaseReport; ?:?; ?:?);
//begin
{*
 00584AE4    push       ebp
 00584AE5    mov        ebp,esp
 00584AE7    push       ebx
 00584AE8    mov        ebx,eax
 00584AEA    push       dword ptr [ebp+0C]
 00584AED    push       dword ptr [ebp+8]
 00584AF0    mov        eax,ebx
 00584AF2    call       00586138
 00584AF7    fstp       qword ptr [ebx+900]; TBaseReport.?f900:?Double
 00584AFD    wait
 00584AFE    pop        ebx
 00584AFF    pop        ebp
 00584B00    ret        8
*}
//end;

//00584B04
//procedure sub_00584B04(?:TRvNDRWriter);
//begin
{*
 00584B04    add        esp,0FFFFFFF8
 00584B07    push       dword ptr [eax+904]; TRvNDRWriter.?f904:dword
 00584B0D    push       dword ptr [eax+900]; TRvNDRWriter.?f900:?Double
 00584B13    call       00586100
 00584B18    fstp       qword ptr [esp]
 00584B1B    wait
 00584B1C    fld        qword ptr [esp]
 00584B1F    pop        ecx
 00584B20    pop        edx
 00584B21    ret
*}
//end;

//00584B24
//procedure sub_00584B24(?:TBaseReport; ?:?; ?:?);
//begin
{*
 00584B24    push       ebp
 00584B25    mov        ebp,esp
 00584B27    push       ebx
 00584B28    mov        ebx,eax
 00584B2A    push       dword ptr [ebp+0C]
 00584B2D    push       dword ptr [ebp+8]
 00584B30    mov        eax,ebx
 00584B32    call       00586154
 00584B37    fstp       qword ptr [ebx+908]; TBaseReport.?f908:?Double
 00584B3D    wait
 00584B3E    pop        ebx
 00584B3F    pop        ebp
 00584B40    ret        8
*}
//end;

//00584B44
//procedure sub_00584B44(?:TRvNDRWriter);
//begin
{*
 00584B44    add        esp,0FFFFFFF8
 00584B47    push       dword ptr [eax+90C]; TRvNDRWriter.?f90C:dword
 00584B4D    push       dword ptr [eax+908]; TRvNDRWriter.?f908:?Double
 00584B53    call       0058611C
 00584B58    fstp       qword ptr [esp]
 00584B5B    wait
 00584B5C    fld        qword ptr [esp]
 00584B5F    pop        ecx
 00584B60    pop        edx
 00584B61    ret
*}
//end;

//00584B64
//procedure sub_00584B64(?:?; ?:?);
//begin
{*
 00584B64    push       ebp
 00584B65    mov        ebp,esp
 00584B67    mov        edx,dword ptr [ebp+8]
 00584B6A    mov        dword ptr [eax+978],edx; TBaseReport.?f978:?Double
 00584B70    mov        edx,dword ptr [ebp+0C]
 00584B73    mov        dword ptr [eax+97C],edx; TBaseReport.?f97C:dword
 00584B79    pop        ebp
 00584B7A    ret        8
*}
//end;

//00584B80
//procedure sub_00584B80(?:?; ?:?);
//begin
{*
 00584B80    push       ebp
 00584B81    mov        ebp,esp
 00584B83    mov        edx,dword ptr [ebp+8]
 00584B86    mov        dword ptr [eax+980],edx; TBaseReport.?f980:?Double
 00584B8C    mov        edx,dword ptr [ebp+0C]
 00584B8F    mov        dword ptr [eax+984],edx; TBaseReport.?f984:dword
 00584B95    pop        ebp
 00584B96    ret        8
*}
//end;

//00584B9C
//procedure sub_00584B9C(?:?);
//begin
{*
 00584B9C    mov        byte ptr [eax+970],dl; TBaseReport.?f970:byte
 00584BA2    ret
*}
//end;

//00584BA4
//procedure sub_00584BA4(?:?);
//begin
{*
 00584BA4    push       ebx
 00584BA5    push       esi
 00584BA6    mov        esi,edx
 00584BA8    mov        ebx,eax
 00584BAA    mov        eax,ebx
 00584BAC    call       00584BE8
 00584BB1    push       esi
 00584BB2    mov        eax,ebx
 00584BB4    mov        edx,dword ptr [eax]
 00584BB6    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00584BB9    call       TCanvas.GetHandle
 00584BBE    push       eax
 00584BBF    call       gdi32.SetBkColor
 00584BC4    pop        esi
 00584BC5    pop        ebx
 00584BC6    ret
*}
//end;

//00584BC8
//function sub_00584BC8(?:TRvNDRWriter):?;
//begin
{*
 00584BC8    push       ebx
 00584BC9    mov        ebx,eax
 00584BCB    mov        eax,ebx
 00584BCD    call       00584BE8
 00584BD2    mov        eax,ebx
 00584BD4    mov        edx,dword ptr [eax]
 00584BD6    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00584BD9    call       TCanvas.GetHandle
 00584BDE    push       eax
 00584BDF    call       gdi32.GetBkColor
 00584BE4    pop        ebx
 00584BE5    ret
*}
//end;

//00584BE8
//procedure sub_00584BE8(?:TBaseReport);
//begin
{*
 00584BE8    push       ebp
 00584BE9    mov        ebp,esp
 00584BEB    push       0
 00584BED    push       ebx
 00584BEE    push       esi
 00584BEF    mov        ebx,eax
 00584BF1    xor        eax,eax
 00584BF3    push       ebp
 00584BF4    push       584C46
 00584BF9    push       dword ptr fs:[eax]
 00584BFC    mov        dword ptr fs:[eax],esp
 00584BFF    cmp        byte ptr [ebx+8FD],0; TBaseReport.?f8FD:byte
>00584C06    jne        00584C22
 00584C08    mov        esi,dword ptr ds:[61B830]
 00584C0E    mov        esi,dword ptr [esi]
 00584C10    lea        edx,[ebp-4]
 00584C13    mov        eax,584C5C; 'Invalid method call.  ReportPrinter is not printing.'
 00584C18    call       esi
 00584C1A    mov        eax,dword ptr [ebp-4]
 00584C1D    call       00579798
 00584C22    cmp        byte ptr [ebx+8FC],0; TBaseReport.?f8FC:byte
>00584C29    je         00584C30
 00584C2B    call       Abort
 00584C30    xor        eax,eax
 00584C32    pop        edx
 00584C33    pop        ecx
 00584C34    pop        ecx
 00584C35    mov        dword ptr fs:[eax],edx
 00584C38    push       584C4D
 00584C3D    lea        eax,[ebp-4]
 00584C40    call       @LStrClr
 00584C45    ret
<00584C46    jmp        @HandleFinally
<00584C4B    jmp        00584C3D
 00584C4D    pop        esi
 00584C4E    pop        ebx
 00584C4F    pop        ecx
 00584C50    pop        ebp
 00584C51    ret
*}
//end;

//00584C94
//procedure sub_00584C94(?:TBaseReport);
//begin
{*
 00584C94    push       ebp
 00584C95    mov        ebp,esp
 00584C97    push       0
 00584C99    push       ebx
 00584C9A    xor        edx,edx
 00584C9C    push       ebp
 00584C9D    push       584CE1
 00584CA2    push       dword ptr fs:[edx]
 00584CA5    mov        dword ptr fs:[edx],esp
 00584CA8    cmp        byte ptr [eax+8FD],0; TBaseReport.?f8FD:byte
>00584CAF    je         00584CCB
 00584CB1    mov        ebx,dword ptr ds:[61B830]
 00584CB7    mov        ebx,dword ptr [ebx]
 00584CB9    lea        edx,[ebp-4]
 00584CBC    mov        eax,584CF4; 'Invalid method call.  ReportPrinter already printing.'
 00584CC1    call       ebx
 00584CC3    mov        eax,dword ptr [ebp-4]
 00584CC6    call       00579798
 00584CCB    xor        eax,eax
 00584CCD    pop        edx
 00584CCE    pop        ecx
 00584CCF    pop        ecx
 00584CD0    mov        dword ptr fs:[eax],edx
 00584CD3    push       584CE8
 00584CD8    lea        eax,[ebp-4]
 00584CDB    call       @LStrClr
 00584CE0    ret
<00584CE1    jmp        @HandleFinally
<00584CE6    jmp        00584CD8
 00584CE8    pop        ebx
 00584CE9    pop        ecx
 00584CEA    pop        ebp
 00584CEB    ret
*}
//end;

//00584D2C
//function sub_00584D2C(?:TBaseReport):?;
//begin
{*
 00584D2C    cmp        dword ptr [eax+9BC],0; TBaseReport.?f9BC:TRPRenderDevice
>00584D33    je         00584D38
 00584D35    xor        eax,eax
 00584D37    ret
 00584D38    call       005807DC
 00584D3D    test       eax,eax
>00584D3F    jne        00584D45
 00584D41    mov        al,1
>00584D43    jmp        00584D4F
 00584D45    call       005807DC
 00584D4A    call       0058068C
 00584D4F    ret
*}
//end;

//00584D50
//procedure sub_00584D50(?:?);
//begin
{*
 00584D50    mov        byte ptr [eax+8FC],1
 00584D57    mov        byte ptr [eax+8D8],1
 00584D5E    ret
*}
//end;

//00584D60
procedure sub_00584D60;
begin
{*
 00584D60    push       ebx
 00584D61    mov        ebx,eax
 00584D63    mov        eax,ebx
 00584D65    call       00584BE8
 00584D6A    cmp        byte ptr [ebx+8D8],0; TBaseReport.?f8D8:byte
>00584D71    jne        00584D80
 00584D73    mov        byte ptr [ebx+8D8],1; TBaseReport.?f8D8:byte
 00584D7A    dec        dword ptr [ebx+8D4]; TBaseReport.?f8D4:dword
 00584D80    pop        ebx
 00584D81    ret
*}
end;

//00584D84
//function sub_00584D84(?:TRvNDRWriter):?;
//begin
{*
 00584D84    push       ebx
 00584D85    mov        ebx,eax
 00584D87    cmp        byte ptr [ebx+8D8],0; TRvNDRWriter.?f8D8:byte
>00584D8E    jne        00584DAB
 00584D90    mov        eax,ebx
 00584D92    mov        edx,dword ptr [eax]
 00584D94    call       dword ptr [edx+60]; TRvNDRWriter.sub_0058AA18
 00584D97    cmp        al,7
>00584D99    ja         00584DA5
 00584D9B    and        eax,7F
 00584D9E    bt         dword ptr [ebx+78C],eax; TRvNDRWriter.?f78C:dword
>00584DA5    jae        00584DAB
 00584DA7    xor        eax,eax
 00584DA9    pop        ebx
 00584DAA    ret
 00584DAB    mov        al,1
 00584DAD    pop        ebx
 00584DAE    ret
*}
//end;

//00584DB0
//procedure sub_00584DB0(?:?);
//begin
{*
 00584DB0    mov        byte ptr [eax+7A8],dl; TBaseReport.?f7A8:byte
 00584DB6    ret
*}
//end;

//00584DB8
procedure sub_00584DB8;
begin
{*
 00584DB8    push       ebx
 00584DB9    mov        ebx,eax
 00584DBB    and        byte ptr [ebx+78C],0FE; TBaseReport.?f78C:dword
 00584DC2    or         byte ptr [ebx+78C],2; TBaseReport.?f78C:dword
 00584DC9    pop        ebx
 00584DCA    ret
*}
end;

//00584DCC
procedure sub_00584DCC;
begin
{*
 00584DCC    push       ebx
 00584DCD    mov        ebx,eax
 00584DCF    and        byte ptr [ebx+78C],0FD; TBaseReport.?f78C:dword
 00584DD6    or         byte ptr [ebx+78C],1; TBaseReport.?f78C:dword
 00584DDD    pop        ebx
 00584DDE    ret
*}
end;

//00584DE0
procedure sub_00584DE0;
begin
{*
 00584DE0    push       ebx
 00584DE1    mov        ebx,eax
 00584DE3    or         byte ptr [ebx+78C],1; TBaseReport.?f78C:dword
 00584DEA    or         byte ptr [ebx+78C],2; TBaseReport.?f78C:dword
 00584DF1    pop        ebx
 00584DF2    ret
*}
end;

//00584DF4
procedure sub_00584DF4;
begin
{*
 00584DF4    push       ebp
 00584DF5    mov        ebp,esp
 00584DF7    push       ecx
 00584DF8    mov        dword ptr [ebp-4],eax
 00584DFB    xor        eax,eax
 00584DFD    push       ebp
 00584DFE    push       584E88
 00584E03    push       dword ptr fs:[eax]
 00584E06    mov        dword ptr fs:[eax],esp
 00584E09    mov        eax,dword ptr [ebp-4]
 00584E0C    call       0058476C
 00584E11    mov        eax,dword ptr [ebp-4]
 00584E14    mov        edx,dword ptr [eax]
 00584E16    call       dword ptr [edx+110]; TRvNDRWriter.sub_0058B5D8
 00584E1C    mov        eax,dword ptr [ebp-4]
 00584E1F    cmp        word ptr [eax+9C2],0; TRvNDRWriter.?f9C2:word
>00584E27    je         00584E33
 00584E29    mov        eax,dword ptr [ebp-4]
 00584E2C    mov        edx,dword ptr [eax]
 00584E2E    call       dword ptr [edx+30]; TRvNDRWriter.sub_00583D88
>00584E31    jmp        00584E6F
 00584E33    mov        eax,dword ptr [ebp-4]
 00584E36    cmp        word ptr [eax+9CA],0; TRvNDRWriter.?f9CA:word
>00584E3E    je         00584E67
>00584E40    jmp        00584E4D
 00584E42    mov        eax,dword ptr [ebp-4]
 00584E45    mov        edx,dword ptr [eax]
 00584E47    call       dword ptr [edx+11C]; TRvNDRWriter.sub_0058BC10
 00584E4D    mov        eax,dword ptr [ebp-4]
 00584E50    mov        edx,dword ptr [eax]
 00584E52    call       dword ptr [edx+34]; TRvNDRWriter.sub_00583DA8
 00584E55    test       al,al
>00584E57    je         00584E6F
 00584E59    mov        eax,dword ptr [ebp-4]
 00584E5C    cmp        byte ptr [eax+8FC],0; TRvNDRWriter.?f8FC:byte
<00584E63    je         00584E42
>00584E65    jmp        00584E6F
 00584E67    mov        eax,dword ptr [ebp-4]
 00584E6A    mov        edx,dword ptr [eax]
 00584E6C    call       dword ptr [edx+30]; TRvNDRWriter.sub_00583D88
 00584E6F    xor        eax,eax
 00584E71    pop        edx
 00584E72    pop        ecx
 00584E73    pop        ecx
 00584E74    mov        dword ptr fs:[eax],edx
 00584E77    push       584E8F
 00584E7C    mov        eax,dword ptr [ebp-4]
 00584E7F    mov        edx,dword ptr [eax]
 00584E81    call       dword ptr [edx+114]; TRvNDRWriter.sub_0058BA84
 00584E87    ret
<00584E88    jmp        @HandleFinally
<00584E8D    jmp        00584E7C
 00584E8F    pop        ecx
 00584E90    pop        ebp
 00584E91    ret
*}
end;

//00584E94
//function sub_00584E94(?:TBaseReport; ?:dword):?;
//begin
{*
 00584E94    push       ebp
 00584E95    mov        ebp,esp
 00584E97    xor        ecx,ecx
 00584E99    push       ecx
 00584E9A    push       ecx
 00584E9B    push       ecx
 00584E9C    push       ecx
 00584E9D    push       ecx
 00584E9E    push       ebx
 00584E9F    push       esi
 00584EA0    push       edi
 00584EA1    mov        dword ptr [ebp-4],edx
 00584EA4    mov        edi,eax
 00584EA6    xor        eax,eax
 00584EA8    push       ebp
 00584EA9    push       58508F
 00584EAE    push       dword ptr fs:[eax]
 00584EB1    mov        dword ptr fs:[eax],esp
 00584EB4    cmp        dword ptr [edi+918],0; TBaseReport.?f918:String
>00584EBB    jne        00584EE1
 00584EBD    mov        eax,dword ptr [ebp-4]
 00584EC0    cmp        eax,dword ptr [edi+910]; TBaseReport.?f910:Integer
>00584EC6    jl         00584ED3
 00584EC8    mov        eax,dword ptr [ebp-4]
 00584ECB    cmp        eax,dword ptr [edi+914]; TBaseReport.?f914:Integer
>00584ED1    jle        00584EDA
 00584ED3    xor        ebx,ebx
>00584ED5    jmp        0058506C
 00584EDA    mov        bl,1
>00584EDC    jmp        0058506C
 00584EE1    xor        esi,esi
 00584EE3    mov        dword ptr [ebp-0C],0FFFFFFFF
 00584EEA    lea        eax,[ebp-8]
 00584EED    call       @LStrClr
 00584EF2    xor        ebx,ebx
 00584EF4    inc        esi
 00584EF5    mov        eax,dword ptr [edi+918]; TBaseReport.?f918:String
 00584EFB    call       @LStrLen
 00584F00    cmp        esi,eax
>00584F02    jg         00584F15
 00584F04    mov        eax,dword ptr [edi+918]; TBaseReport.?f918:String
 00584F0A    cmp        byte ptr [eax+esi-1],2C
>00584F0F    jne        00585006
 00584F15    lea        edx,[ebp-10]
 00584F18    mov        eax,dword ptr [ebp-8]
 00584F1B    call       AnsiUpperCase
 00584F20    mov        edx,dword ptr [ebp-10]
 00584F23    lea        eax,[ebp-8]
 00584F26    call       @LStrLAsg
 00584F2B    cmp        dword ptr [ebp-8],0
>00584F2F    jne        00584F49
 00584F31    cmp        dword ptr [ebp-0C],0FFFFFFFF
>00584F35    jle        00584FF5
 00584F3B    mov        eax,dword ptr [ebp-4]
 00584F3E    cmp        eax,dword ptr [ebp-0C]
 00584F41    setge      bl
>00584F44    jmp        00584FF5
 00584F49    mov        eax,dword ptr [ebp-8]
 00584F4C    mov        edx,5850A8; 'E'
 00584F51    call       @LStrCmp
>00584F56    je         00584F67
 00584F58    mov        eax,dword ptr [ebp-8]
 00584F5B    mov        edx,5850B4; 'EVEN'
 00584F60    call       @LStrCmp
>00584F65    jne        00584F75
 00584F67    mov        ebx,dword ptr [ebp-4]
 00584F6A    and        bl,1
 00584F6D    xor        bl,1
>00584F70    jmp        00584FF5
 00584F75    mov        eax,dword ptr [ebp-8]
 00584F78    mov        edx,5850C4; 'R'
 00584F7D    call       @LStrCmp
>00584F82    je         00584FF5
 00584F84    mov        eax,dword ptr [ebp-8]
 00584F87    mov        edx,5850D0; 'O'
 00584F8C    call       @LStrCmp
>00584F91    je         00584FA2
 00584F93    mov        eax,dword ptr [ebp-8]
 00584F96    mov        edx,5850DC; 'ODD'
 00584F9B    call       @LStrCmp
>00584FA0    jne        00584FAA
 00584FA2    mov        ebx,dword ptr [ebp-4]
 00584FA5    and        bl,1
>00584FA8    jmp        00584FF5
 00584FAA    mov        eax,dword ptr [ebp-8]
 00584FAD    mov        edx,5850E8; 'A'
 00584FB2    call       @LStrCmp
>00584FB7    je         00584FC8
 00584FB9    mov        eax,dword ptr [ebp-8]
 00584FBC    mov        edx,5850F4; 'ALL'
 00584FC1    call       @LStrCmp
>00584FC6    jne        00584FCC
 00584FC8    mov        bl,1
>00584FCA    jmp        00584FF5
 00584FCC    mov        eax,dword ptr [ebp-8]
 00584FCF    call       StrToInt
 00584FD4    cmp        dword ptr [ebp-0C],0FFFFFFFF
>00584FD8    jle        00584FEF
 00584FDA    mov        edx,dword ptr [ebp-4]
 00584FDD    cmp        edx,dword ptr [ebp-0C]
>00584FE0    jl         00584FE7
 00584FE2    cmp        eax,dword ptr [ebp-4]
>00584FE5    jge        00584FEB
 00584FE7    xor        ebx,ebx
>00584FE9    jmp        00584FF5
 00584FEB    mov        bl,1
>00584FED    jmp        00584FF5
 00584FEF    cmp        eax,dword ptr [ebp-4]
 00584FF2    sete       bl
 00584FF5    mov        dword ptr [ebp-0C],0FFFFFFFF
 00584FFC    lea        eax,[ebp-8]
 00584FFF    call       @LStrClr
>00585004    jmp        00585054
 00585006    mov        eax,dword ptr [edi+918]; TBaseReport.?f918:String
 0058500C    cmp        byte ptr [eax+esi-1],2D
>00585011    jne        00585037
 00585013    cmp        dword ptr [ebp-8],0
>00585017    jne        00585022
 00585019    mov        dword ptr [ebp-0C],1
>00585020    jmp        0058502D
 00585022    mov        eax,dword ptr [ebp-8]
 00585025    call       StrToInt
 0058502A    mov        dword ptr [ebp-0C],eax
 0058502D    lea        eax,[ebp-8]
 00585030    call       @LStrClr
>00585035    jmp        00585054
 00585037    lea        eax,[ebp-14]
 0058503A    mov        edx,dword ptr [edi+918]; TBaseReport.?f918:String
 00585040    mov        dl,byte ptr [edx+esi-1]
 00585044    call       @LStrFromChar
 00585049    mov        edx,dword ptr [ebp-14]
 0058504C    lea        eax,[ebp-8]
 0058504F    call       @LStrCat
 00585054    mov        eax,dword ptr [edi+918]; TBaseReport.?f918:String
 0058505A    call       @LStrLen
 0058505F    cmp        esi,eax
 00585061    setg       al
 00585064    or         al,bl
<00585066    je         00584EF4
 0058506C    xor        eax,eax
 0058506E    pop        edx
 0058506F    pop        ecx
 00585070    pop        ecx
 00585071    mov        dword ptr fs:[eax],edx
 00585074    push       585096
 00585079    lea        eax,[ebp-14]
 0058507C    mov        edx,2
 00585081    call       @LStrArrayClr
 00585086    lea        eax,[ebp-8]
 00585089    call       @LStrClr
 0058508E    ret
<0058508F    jmp        @HandleFinally
<00585094    jmp        00585079
 00585096    mov        eax,ebx
 00585098    pop        edi
 00585099    pop        esi
 0058509A    pop        ebx
 0058509B    mov        esp,ebp
 0058509D    pop        ebp
 0058509E    ret
*}
//end;

//005850F8
procedure sub_005850F8;
begin
{*
 005850F8    push       ebx
 005850F9    mov        ebx,eax
 005850FB    mov        eax,ebx
 005850FD    call       0058476C
 00585102    mov        eax,ebx
 00585104    call       00584BE8
 00585109    inc        dword ptr [ebx+8D4]; TBaseReport.?f8D4:dword
 0058510F    mov        eax,ebx
 00585111    call       005851F4
 00585116    mov        edx,dword ptr [ebx+8D4]; TBaseReport.?f8D4:dword
 0058511C    mov        eax,ebx
 0058511E    call       00584E94
 00585123    test       al,al
>00585125    je         00585134
 00585127    cmp        byte ptr [ebx+8FC],0; TBaseReport.?f8FC:byte
>0058512E    jne        00585134
 00585130    xor        eax,eax
>00585132    jmp        00585136
 00585134    mov        al,1
 00585136    mov        byte ptr [ebx+8D8],al; TBaseReport.?f8D8:byte
 0058513C    push       0
 0058513E    push       0
 00585140    mov        eax,ebx
 00585142    call       00584AE4
 00585147    push       0
 00585149    push       0
 0058514B    mov        eax,ebx
 0058514D    call       00584B24
 00585152    mov        eax,ebx
 00585154    call       005874E0
 00585159    push       dword ptr [ebx+95C]; TBaseReport.?f95C:dword
 0058515F    push       dword ptr [ebx+958]; TBaseReport.?f958:dword
 00585165    mov        eax,ebx
 00585167    call       TRvNDRWriter.SetMarginBottom
 0058516C    push       dword ptr [ebx+94C]; TBaseReport.?f94C:dword
 00585172    push       dword ptr [ebx+948]; TBaseReport.?f948:dword
 00585178    mov        eax,ebx
 0058517A    call       TRvNDRWriter.SetMarginRight
 0058517F    mov        eax,ebx
 00585181    call       00585550
 00585186    mov        eax,ebx
 00585188    call       005862E8
 0058518D    pop        ebx
 0058518E    ret
*}
end;

//00585190
procedure sub_00585190();
begin
{*
 00585190    ret
*}
end;

//00585194
//procedure sub_00585194(?:AnsiString; ?:?);
//begin
{*
 00585194    push       ebp
 00585195    mov        ebp,esp
 00585197    push       ecx
 00585198    mov        dword ptr [ebp-4],eax
 0058519B    mov        eax,dword ptr [ebp-4]
 0058519E    call       @LStrAddRef
 005851A3    xor        eax,eax
 005851A5    push       ebp
 005851A6    push       5851EA
 005851AB    push       dword ptr fs:[eax]
 005851AE    mov        dword ptr fs:[eax],esp
 005851B1    mov        eax,dword ptr [ebp+8]
 005851B4    mov        ecx,dword ptr [eax-8]
 005851B7    mov        eax,dword ptr [ebp+8]
 005851BA    lea        edx,[eax-4]
 005851BD    mov        eax,dword ptr [ebp-4]
 005851C0    call       @LStrInsert
 005851C5    mov        eax,dword ptr [ebp-4]
 005851C8    call       @LStrLen
 005851CD    dec        eax
 005851CE    mov        edx,dword ptr [ebp+8]
 005851D1    add        dword ptr [edx-8],eax
 005851D4    xor        eax,eax
 005851D6    pop        edx
 005851D7    pop        ecx
 005851D8    pop        ecx
 005851D9    mov        dword ptr fs:[eax],edx
 005851DC    push       5851F1
 005851E1    lea        eax,[ebp-4]
 005851E4    call       @LStrClr
 005851E9    ret
<005851EA    jmp        @HandleFinally
<005851EF    jmp        005851E1
 005851F1    pop        ecx
 005851F2    pop        ebp
 005851F3    ret
*}
//end;

//005851F4
//procedure sub_005851F4(?:TBaseReport);
//begin
{*
 005851F4    push       ebp
 005851F5    mov        ebp,esp
 005851F7    mov        ecx,6
 005851FC    push       0
 005851FE    push       0
 00585200    dec        ecx
<00585201    jne        005851FC
 00585203    push       ecx
 00585204    push       ebx
 00585205    push       esi
 00585206    mov        esi,eax
 00585208    xor        eax,eax
 0058520A    push       ebp
 0058520B    push       5854A4
 00585210    push       dword ptr fs:[eax]
 00585213    mov        dword ptr fs:[eax],esp
 00585216    cmp        dword ptr [esi+91C],0; TBaseReport.?f91C:dword
>0058521D    je         00585481
 00585223    lea        eax,[ebp-4]
 00585226    mov        edx,dword ptr [esi+920]; TBaseReport.?f920:String
 0058522C    call       @LStrLAsg
 00585231    mov        edx,dword ptr [ebp-4]
 00585234    mov        eax,5854BC; '%'
 00585239    call       @LStrPos
 0058523E    mov        dword ptr [ebp-8],eax
>00585241    jmp        00585455
 00585246    mov        eax,dword ptr [ebp-4]
 00585249    mov        edx,dword ptr [ebp-8]
 0058524C    cmp        byte ptr [eax+edx-1],25
>00585251    jne        00585452
 00585257    mov        eax,dword ptr [ebp-4]
 0058525A    mov        edx,dword ptr [ebp-8]
 0058525D    mov        al,byte ptr [eax+edx]
 00585260    call       UpCase
 00585265    mov        ebx,eax
 00585267    lea        eax,[ebp-4]
 0058526A    mov        ecx,2
 0058526F    mov        edx,dword ptr [ebp-8]
 00585272    call       @LStrDelete
 00585277    xor        eax,eax
 00585279    mov        al,bl
 0058527B    add        eax,0FFFFFFDB
 0058527E    cmp        eax,2F
>00585281    ja         00585424
 00585287    mov        al,byte ptr [eax+585294]
 0058528D    jmp        dword ptr [eax*4+5852C4]
 0058528D    db         1
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         2
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         3
 0058528D    db         4
 0058528D    db         0
 0058528D    db         5
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         0
 0058528D    db         6
 0058528D    db         0
 0058528D    db         7
 0058528D    db         0
 0058528D    db         8
 0058528D    db         0
 0058528D    db         9
 0058528D    db         10
 0058528D    db         11
 0058528D    dd         585424
 0058528D    dd         5852F4
 0058528D    dd         585305
 0058528D    dd         585343
 0058528D    dd         585360
 0058528D    dd         585379
 0058528D    dd         585396
 0058528D    dd         5853B3
 0058528D    dd         5853C4
 0058528D    dd         5853DE
 0058528D    dd         5853F4
 0058528D    dd         58540E
 005852F4    push       ebp
 005852F5    mov        eax,5854BC; '%'
 005852FA    call       00585194
 005852FF    pop        ecx
>00585300    jmp        00585452
 00585305    mov        eax,dword ptr [esi+924]; TBaseReport.?f924:TStringList
 0058530B    mov        edx,dword ptr [eax]
 0058530D    call       dword ptr [edx+14]; TStringList.GetCount
 00585310    xor        edx,edx
 00585312    mov        dl,bl
 00585314    sub        edx,30
 00585317    cmp        eax,edx
>00585319    jle        00585452
 0058531F    push       ebp
 00585320    lea        ecx,[ebp-0C]
 00585323    xor        edx,edx
 00585325    mov        dl,bl
 00585327    sub        edx,30
 0058532A    mov        eax,dword ptr [esi+924]; TBaseReport.?f924:TStringList
 00585330    mov        ebx,dword ptr [eax]
 00585332    call       dword ptr [ebx+0C]; TStringList.Get
 00585335    mov        eax,dword ptr [ebp-0C]
 00585338    call       00585194
 0058533D    pop        ecx
>0058533E    jmp        00585452
 00585343    push       ebp
 00585344    lea        edx,[ebp-10]
 00585347    mov        eax,dword ptr [esi+9A4]; TBaseReport.?f9A4:dword
 0058534D    call       IntToStr
 00585352    mov        eax,dword ptr [ebp-10]
 00585355    call       00585194
 0058535A    pop        ecx
>0058535B    jmp        00585452
 00585360    push       ebp
 00585361    lea        edx,[ebp-14]
 00585364    mov        eax,esi
 00585366    call       00584994
 0058536B    mov        eax,dword ptr [ebp-14]
 0058536E    call       00585194
 00585373    pop        ecx
>00585374    jmp        00585452
 00585379    push       ebp
 0058537A    lea        edx,[ebp-18]
 0058537D    mov        eax,dword ptr [esi+910]; TBaseReport.?f910:Integer
 00585383    call       IntToStr
 00585388    mov        eax,dword ptr [ebp-18]
 0058538B    call       00585194
 00585390    pop        ecx
>00585391    jmp        00585452
 00585396    push       ebp
 00585397    lea        edx,[ebp-1C]
 0058539A    mov        eax,dword ptr [esi+914]; TBaseReport.?f914:Integer
 005853A0    call       IntToStr
 005853A5    mov        eax,dword ptr [ebp-1C]
 005853A8    call       00585194
 005853AD    pop        ecx
>005853AE    jmp        00585452
 005853B3    push       ebp
 005853B4    mov        eax,5854C8; '\r'
 005853B9    call       00585194
 005853BE    pop        ecx
>005853BF    jmp        00585452
 005853C4    push       ebp
 005853C5    lea        edx,[ebp-20]
 005853C8    mov        eax,dword ptr [esi+8D4]; TBaseReport.?f8D4:dword
 005853CE    call       IntToStr
 005853D3    mov        eax,dword ptr [ebp-20]
 005853D6    call       00585194
 005853DB    pop        ecx
>005853DC    jmp        00585452
 005853DE    push       ebp
 005853DF    lea        edx,[ebp-24]
 005853E2    mov        eax,esi
 005853E4    call       00584A04
 005853E9    mov        eax,dword ptr [ebp-24]
 005853EC    call       00585194
 005853F1    pop        ecx
>005853F2    jmp        00585452
 005853F4    push       ebp
 005853F5    lea        edx,[ebp-28]
 005853F8    mov        eax,dword ptr [esi+9A8]; TBaseReport.?f9A8:dword
 005853FE    call       IntToStr
 00585403    mov        eax,dword ptr [ebp-28]
 00585406    call       00585194
 0058540B    pop        ecx
>0058540C    jmp        00585452
 0058540E    push       ebp
 0058540F    lea        edx,[ebp-2C]
 00585412    mov        eax,esi
 00585414    call       00584A74
 00585419    mov        eax,dword ptr [ebp-2C]
 0058541C    call       00585194
 00585421    pop        ecx
>00585422    jmp        00585452
 00585424    push       ebp
 00585425    push       5854D4; '<ERROR-%'
 0058542A    lea        eax,[ebp-34]
 0058542D    mov        edx,ebx
 0058542F    call       @LStrFromChar
 00585434    push       dword ptr [ebp-34]
 00585437    push       5854E8; '>'
 0058543C    lea        eax,[ebp-30]
 0058543F    mov        edx,3
 00585444    call       @LStrCatN
 00585449    mov        eax,dword ptr [ebp-30]
 0058544C    call       00585194
 00585451    pop        ecx
 00585452    inc        dword ptr [ebp-8]
 00585455    cmp        dword ptr [ebp-8],0
>00585459    jle        0058546C
 0058545B    mov        eax,dword ptr [ebp-4]
 0058545E    call       @LStrLen
 00585463    cmp        eax,dword ptr [ebp-8]
<00585466    jg         00585246
 0058546C    mov        edx,dword ptr [ebp-4]
 0058546F    mov        eax,dword ptr [esi+91C]; TBaseReport.?f91C:dword
 00585475    call       TControl.SetText
 0058547A    mov        eax,esi
 0058547C    call       00588AAC
 00585481    xor        eax,eax
 00585483    pop        edx
 00585484    pop        ecx
 00585485    pop        ecx
 00585486    mov        dword ptr fs:[eax],edx
 00585489    push       5854AB
 0058548E    lea        eax,[ebp-34]
 00585491    mov        edx,0B
 00585496    call       @LStrArrayClr
 0058549B    lea        eax,[ebp-4]
 0058549E    call       @LStrClr
 005854A3    ret
<005854A4    jmp        @HandleFinally
<005854A9    jmp        0058548E
 005854AB    pop        esi
 005854AC    pop        ebx
 005854AD    mov        esp,ebp
 005854AF    pop        ebp
 005854B0    ret
*}
//end;

//005854EC
//procedure sub_005854EC(?:TRvNDRWriter);
//begin
{*
 005854EC    push       ebx
 005854ED    push       esi
 005854EE    mov        ebx,eax
 005854F0    push       0
 005854F2    mov        cl,1
 005854F4    xor        edx,edx
 005854F6    mov        eax,ebx
 005854F8    mov        esi,dword ptr [eax]
 005854FA    call       dword ptr [esi+14C]; TRvNDRWriter.sub_00587240
 00585500    push       1
 00585502    push       4
 00585504    xor        ecx,ecx
 00585506    xor        edx,edx
 00585508    mov        eax,ebx
 0058550A    mov        esi,dword ptr [eax]
 0058550C    call       dword ptr [esi+154]; TRvNDRWriter.sub_00587284
 00585512    push       0
 00585514    push       0
 00585516    mov        eax,ebx
 00585518    call       00584AE4
 0058551D    push       0
 0058551F    push       0
 00585521    mov        eax,ebx
 00585523    call       00584B24
 00585528    mov        eax,ebx
 0058552A    call       00587428
 0058552F    mov        eax,ebx
 00585531    call       00587490
 00585536    mov        eax,ebx
 00585538    call       00585550
 0058553D    mov        eax,ebx
 0058553F    call       005862E8
 00585544    mov        byte ptr [ebx+8D0],4; TRvNDRWriter.?f8D0:byte
 0058554B    pop        esi
 0058554C    pop        ebx
 0058554D    ret
*}
//end;

//00585550
//procedure sub_00585550(?:TBaseReport);
//begin
{*
 00585550    mov        edx,dword ptr [eax+860]; TBaseReport.?f860:?Double
 00585556    mov        dword ptr [eax+880],edx; TBaseReport.?f880:?Double
 0058555C    mov        edx,dword ptr [eax+864]; TBaseReport.?f864:dword
 00585562    mov        dword ptr [eax+884],edx; TBaseReport.?f884:dword
 00585568    mov        edx,dword ptr [eax+868]; TBaseReport.?f868:?Double
 0058556E    mov        dword ptr [eax+888],edx; TBaseReport.?f888:?Double
 00585574    mov        edx,dword ptr [eax+86C]; TBaseReport.?f86C:dword
 0058557A    mov        dword ptr [eax+88C],edx; TBaseReport.?f88C:dword
 00585580    mov        edx,dword ptr [eax+870]; TBaseReport.?f870:?Double
 00585586    mov        dword ptr [eax+890],edx; TBaseReport.?f890:?Double
 0058558C    mov        edx,dword ptr [eax+874]; TBaseReport.?f874:dword
 00585592    mov        dword ptr [eax+894],edx; TBaseReport.?f894:dword
 00585598    mov        edx,dword ptr [eax+878]; TBaseReport.?f878:?Double
 0058559E    mov        dword ptr [eax+898],edx; TBaseReport.?f898:?Double
 005855A4    mov        edx,dword ptr [eax+87C]; TBaseReport.?f87C:dword
 005855AA    mov        dword ptr [eax+89C],edx; TBaseReport.?f89C:dword
 005855B0    ret
*}
//end;

//005855B4
//procedure sub_005855B4(?:TBaseReport);
//begin
{*
 005855B4    push       ebx
 005855B5    add        esp,0FFFFFFF0
 005855B8    mov        ebx,eax
 005855BA    xor        eax,eax
 005855BC    mov        dword ptr [ebx+7E8],eax; TBaseReport.?f7E8:?Double
 005855C2    mov        dword ptr [ebx+7EC],eax; TBaseReport.?f7EC:dword
 005855C8    xor        eax,eax
 005855CA    mov        dword ptr [ebx+7F0],eax; TBaseReport.?f7F0:?Double
 005855D0    mov        dword ptr [ebx+7F4],eax; TBaseReport.?f7F4:dword
 005855D6    xor        eax,eax
 005855D8    mov        dword ptr [ebx+7F8],eax; TBaseReport.?f7F8:?Double
 005855DE    mov        dword ptr [ebx+7FC],eax; TBaseReport.?f7FC:dword
 005855E4    xor        eax,eax
 005855E6    mov        dword ptr [ebx+800],eax; TBaseReport.?f800:?Double
 005855EC    mov        dword ptr [ebx+804],eax; TBaseReport.?f804:dword
 005855F2    mov        eax,ebx
 005855F4    call       00584D2C
 005855F9    test       al,al
>005855FB    je         00585626
 005855FD    mov        eax,ebx
 005855FF    call       00588A98
 00585604    mov        edx,dword ptr [eax]
 00585606    call       dword ptr [edx+4]
 00585609    mov        dword ptr [ebx+8DC],eax; TBaseReport.?f8DC:Single
 0058560F    mov        eax,ebx
 00585611    call       00588A98
 00585616    mov        edx,dword ptr [eax]
 00585618    call       dword ptr [edx+8]
 0058561B    mov        dword ptr [ebx+8E0],eax; TBaseReport.?f8E0:Single
>00585621    jmp        005856CF
 00585626    mov        eax,ebx
 00585628    mov        edx,dword ptr [eax]
 0058562A    call       dword ptr [edx+60]; TBaseReport.sub_00583EC8
 0058562D    sub        al,1
>0058562F    jb         0058563D
 00585631    dec        al
>00585633    je         0058563D
 00585635    sub        al,2
>00585637    jne        005856CF
 0058563D    call       005807DC
 00585642    test       eax,eax
>00585644    je         00585652
 00585646    call       005807DC
 0058564B    xor        edx,edx
 0058564D    call       0057F60C
 00585652    mov        eax,ebx
 00585654    call       00588A98
 00585659    mov        edx,dword ptr [eax]
 0058565B    call       dword ptr [edx+4]
 0058565E    mov        dword ptr [ebx+8DC],eax; TBaseReport.?f8DC:Single
 00585664    mov        eax,ebx
 00585666    call       00588A98
 0058566B    mov        edx,dword ptr [eax]
 0058566D    call       dword ptr [edx+8]
 00585670    mov        dword ptr [ebx+8E0],eax; TBaseReport.?f8E0:Single
 00585676    mov        eax,ebx
 00585678    call       00588A98
 0058567D    mov        edx,esp
 0058567F    mov        ecx,dword ptr [eax]
 00585681    call       dword ptr [ecx+0C]
 00585684    fild       dword ptr [esp]
 00585687    fild       dword ptr [ebx+8DC]; TBaseReport.?f8DC:Single
 0058568D    fdivp      st(1),st
 0058568F    fstp       qword ptr [ebx+7E8]; TBaseReport.?f7E8:?Double
 00585695    wait
 00585696    fild       dword ptr [esp+8]
 0058569A    fild       dword ptr [ebx+8DC]; TBaseReport.?f8DC:Single
 005856A0    fdivp      st(1),st
 005856A2    fstp       qword ptr [ebx+7F0]; TBaseReport.?f7F0:?Double
 005856A8    wait
 005856A9    fild       dword ptr [esp+4]
 005856AD    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 005856B3    fdivp      st(1),st
 005856B5    fstp       qword ptr [ebx+7F8]; TBaseReport.?f7F8:?Double
 005856BB    wait
 005856BC    fild       dword ptr [esp+0C]
 005856C0    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 005856C6    fdivp      st(1),st
 005856C8    fstp       qword ptr [ebx+800]; TBaseReport.?f800:?Double
 005856CE    wait
 005856CF    add        esp,10
 005856D2    pop        ebx
 005856D3    ret
*}
//end;

//005856D4
//procedure sub_005856D4(?:TBaseReport; ?:false..true);
//begin
{*
 005856D4    push       ebx
 005856D5    mov        ebx,eax
>005856D7    jmp        005856E9
 005856D9    mov        eax,edx
 005856DB    mov        edx,dword ptr [edx+24]
 005856DE    mov        dword ptr [ebx+7C8],edx; TBaseReport.?f7C8:dword
 005856E4    call       @FreeMem
 005856E9    mov        edx,dword ptr [ebx+7C8]; TBaseReport.?f7C8:dword
 005856EF    test       edx,edx
<005856F1    jne        005856D9
>005856F3    jmp        00585705
 005856F5    mov        eax,edx
 005856F7    mov        edx,dword ptr [edx+24]
 005856FA    mov        dword ptr [ebx+7C4],edx; TBaseReport.?f7C4:dword
 00585700    call       @FreeMem
 00585705    mov        edx,dword ptr [ebx+7C4]; TBaseReport.?f7C4:dword
 0058570B    test       edx,edx
<0058570D    jne        005856F5
 0058570F    pop        ebx
 00585710    ret
*}
//end;

//00585714
//procedure sub_00585714(?:?);
//begin
{*
 00585714    push       ebp
 00585715    mov        ebp,esp
 00585717    mov        eax,dword ptr [ebp+8]
 0058571A    cmp        dword ptr [eax-4],0
>0058571E    je         0058574E
 00585720    mov        eax,dword ptr [ebp+8]
 00585723    mov        eax,dword ptr [eax-8]
 00585726    mov        eax,dword ptr [eax+24]
 00585729    mov        edx,dword ptr [ebp+8]
 0058572C    mov        edx,dword ptr [edx-4]
 0058572F    mov        dword ptr [edx+24],eax
 00585732    mov        eax,dword ptr [ebp+8]
 00585735    mov        eax,dword ptr [eax-8]
 00585738    call       @FreeMem
 0058573D    mov        eax,dword ptr [ebp+8]
 00585740    mov        eax,dword ptr [eax-4]
 00585743    mov        eax,dword ptr [eax+24]
 00585746    mov        edx,dword ptr [ebp+8]
 00585749    mov        dword ptr [edx-8],eax
 0058574C    pop        ebp
 0058574D    ret
 0058574E    mov        eax,dword ptr [ebp+8]
 00585751    mov        eax,dword ptr [eax-8]
 00585754    mov        eax,dword ptr [eax+24]
 00585757    mov        edx,dword ptr [ebp+8]
 0058575A    mov        edx,dword ptr [edx-0C]
 0058575D    mov        dword ptr [edx],eax
 0058575F    mov        eax,dword ptr [ebp+8]
 00585762    mov        eax,dword ptr [eax-8]
 00585765    call       @FreeMem
 0058576A    mov        eax,dword ptr [ebp+8]
 0058576D    mov        eax,dword ptr [eax-0C]
 00585770    mov        eax,dword ptr [eax]
 00585772    mov        edx,dword ptr [ebp+8]
 00585775    mov        dword ptr [edx-8],eax
 00585778    pop        ebp
 00585779    ret
*}
//end;

//0058577C
//procedure sub_0058577C(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0058577C    push       ebp
 0058577D    mov        ebp,esp
 0058577F    add        esp,0FFFFFFF4
 00585782    push       ebx
 00585783    push       esi
 00585784    push       edi
 00585785    mov        dword ptr [ebp-0C],eax
 00585788    mov        esi,dword ptr [ebp+20]
 0058578B    add        esi,0FFFFFFFC
 0058578E    lea        edi,[ebp-8]
 00585791    xor        eax,eax
 00585793    mov        dword ptr [ebp-4],eax
 00585796    mov        eax,dword ptr [ebp-0C]
 00585799    mov        eax,dword ptr [eax]
 0058579B    mov        dword ptr [edi],eax
 0058579D    cmp        dword ptr [edi],0
>005857A0    je         005858EF
 005857A6    mov        ebx,dword ptr [edi]
 005857A8    fld        qword ptr [ebp+8]
 005857AB    fsub       qword ptr [ebx+10]
 005857AE    fabs
 005857B0    fld        tbyte ptr ds:[585980]; 0,0001:Extended
 005857B6    fcompp
 005857B8    fnstsw     al
 005857BA    sahf
>005857BB    jb         005858DA
 005857C1    mov        eax,dword ptr [esi]
 005857C3    mov        edx,dword ptr [eax]
 005857C5    call       dword ptr [edx+74]
 005857C8    mov        eax,dword ptr [eax+10]
 005857CB    call       TPen.GetColor
 005857D0    cmp        eax,dword ptr [ebx+18]
>005857D3    jne        005858DA
 005857D9    mov        eax,dword ptr [esi]
 005857DB    mov        edx,dword ptr [eax]
 005857DD    call       dword ptr [edx+74]
 005857E0    mov        eax,dword ptr [eax+10]
 005857E3    mov        al,byte ptr [eax+18]
 005857E6    cmp        al,byte ptr [ebx+1C]
>005857E9    jne        005858DA
 005857EF    mov        eax,dword ptr [esi]
 005857F1    mov        edx,dword ptr [eax]
 005857F3    call       dword ptr [edx+74]
 005857F6    mov        eax,dword ptr [eax+10]
 005857F9    call       TPen.GetStyle
 005857FE    cmp        al,byte ptr [ebx+1D]
>00585801    jne        005858DA
 00585807    mov        eax,dword ptr [esi]
 00585809    mov        edx,dword ptr [eax]
 0058580B    call       dword ptr [edx+74]
 0058580E    mov        eax,dword ptr [eax+10]
 00585811    call       TPen.GetWidth
 00585816    cmp        eax,dword ptr [ebx+20]
>00585819    jne        005858DA
 0058581F    fld        qword ptr [ebx]
 00585821    fsub       qword ptr [ebp+18]
 00585824    fld        tbyte ptr ds:[585980]; 0,0001:Extended
 0058582A    fcompp
 0058582C    fnstsw     al
 0058582E    sahf
>0058582F    jb         00585844
 00585831    fld        qword ptr [ebp+18]
 00585834    fsub       qword ptr [ebx+8]
 00585837    fld        tbyte ptr ds:[585980]; 0,0001:Extended
 0058583D    fcompp
 0058583F    fnstsw     al
 00585841    sahf
>00585842    jae        00585848
 00585844    xor        edx,edx
>00585846    jmp        0058584A
 00585848    mov        dl,1
 0058584A    fld        qword ptr [ebx]
 0058584C    fsub       qword ptr [ebp+10]
 0058584F    fld        tbyte ptr ds:[585980]; 0,0001:Extended
 00585855    fcompp
 00585857    fnstsw     al
 00585859    sahf
>0058585A    jb         0058586F
 0058585C    fld        qword ptr [ebp+10]
 0058585F    fsub       qword ptr [ebx+8]
 00585862    fld        tbyte ptr ds:[585980]; 0,0001:Extended
 00585868    fcompp
 0058586A    fnstsw     al
 0058586C    sahf
>0058586D    jae        00585873
 0058586F    xor        eax,eax
>00585871    jmp        00585875
 00585873    mov        al,1
 00585875    test       al,dl
>00585877    jne        00585975
 0058587D    test       dl,dl
>0058587F    je         00585895
 00585881    mov        eax,dword ptr [ebx]
 00585883    mov        dword ptr [ebp+18],eax
 00585886    mov        eax,dword ptr [ebx+4]
 00585889    mov        dword ptr [ebp+1C],eax
 0058588C    push       ebp
 0058588D    call       00585714
 00585892    pop        ecx
>00585893    jmp        005858E6
 00585895    test       al,al
>00585897    je         005858AE
 00585899    mov        eax,dword ptr [ebx+8]
 0058589C    mov        dword ptr [ebp+10],eax
 0058589F    mov        eax,dword ptr [ebx+0C]
 005858A2    mov        dword ptr [ebp+14],eax
 005858A5    push       ebp
 005858A6    call       00585714
 005858AB    pop        ecx
>005858AC    jmp        005858E6
 005858AE    fld        qword ptr [ebp+18]
 005858B1    fcomp      qword ptr [ebx]
 005858B3    fnstsw     al
 005858B5    sahf
>005858B6    jae        005858CC
 005858B8    fld        qword ptr [ebp+10]
 005858BB    fcomp      qword ptr [ebx+8]
 005858BE    fnstsw     al
 005858C0    sahf
>005858C1    jbe        005858CC
 005858C3    push       ebp
 005858C4    call       00585714
 005858C9    pop        ecx
>005858CA    jmp        005858E6
 005858CC    mov        eax,dword ptr [edi]
 005858CE    mov        dword ptr [ebp-4],eax
 005858D1    mov        eax,dword ptr [edi]
 005858D3    mov        eax,dword ptr [eax+24]
 005858D6    mov        dword ptr [edi],eax
>005858D8    jmp        005858E6
 005858DA    mov        eax,dword ptr [edi]
 005858DC    mov        dword ptr [ebp-4],eax
 005858DF    mov        eax,dword ptr [edi]
 005858E1    mov        eax,dword ptr [eax+24]
 005858E4    mov        dword ptr [edi],eax
 005858E6    cmp        dword ptr [edi],0
<005858E9    jne        005857A6
 005858EF    mov        eax,28
 005858F4    call       @GetMem
 005858F9    mov        dword ptr [edi],eax
 005858FB    mov        ebx,dword ptr [edi]
 005858FD    mov        eax,dword ptr [ebp+18]
 00585900    mov        dword ptr [ebx],eax
 00585902    mov        eax,dword ptr [ebp+1C]
 00585905    mov        dword ptr [ebx+4],eax
 00585908    mov        eax,dword ptr [ebp+10]
 0058590B    mov        dword ptr [ebx+8],eax
 0058590E    mov        eax,dword ptr [ebp+14]
 00585911    mov        dword ptr [ebx+0C],eax
 00585914    mov        eax,dword ptr [ebp+8]
 00585917    mov        dword ptr [ebx+10],eax
 0058591A    mov        eax,dword ptr [ebp+0C]
 0058591D    mov        dword ptr [ebx+14],eax
 00585920    mov        eax,dword ptr [esi]
 00585922    mov        edx,dword ptr [eax]
 00585924    call       dword ptr [edx+74]
 00585927    mov        eax,dword ptr [eax+10]
 0058592A    call       TPen.GetColor
 0058592F    mov        dword ptr [ebx+18],eax
 00585932    mov        eax,dword ptr [esi]
 00585934    mov        edx,dword ptr [eax]
 00585936    call       dword ptr [edx+74]
 00585939    mov        eax,dword ptr [eax+10]
 0058593C    mov        al,byte ptr [eax+18]
 0058593F    mov        byte ptr [ebx+1C],al
 00585942    mov        eax,dword ptr [esi]
 00585944    mov        edx,dword ptr [eax]
 00585946    call       dword ptr [edx+74]
 00585949    mov        eax,dword ptr [eax+10]
 0058594C    call       TPen.GetStyle
 00585951    mov        byte ptr [ebx+1D],al
 00585954    mov        eax,dword ptr [esi]
 00585956    mov        edx,dword ptr [eax]
 00585958    call       dword ptr [edx+74]
 0058595B    mov        eax,dword ptr [eax+10]
 0058595E    call       TPen.GetWidth
 00585963    mov        dword ptr [ebx+20],eax
 00585966    mov        eax,dword ptr [ebp-0C]
 00585969    mov        eax,dword ptr [eax]
 0058596B    mov        dword ptr [ebx+24],eax
 0058596E    mov        eax,dword ptr [ebp-0C]
 00585971    mov        edx,dword ptr [edi]
 00585973    mov        dword ptr [eax],edx
 00585975    pop        edi
 00585976    pop        esi
 00585977    pop        ebx
 00585978    mov        esp,ebp
 0058597A    pop        ebp
 0058597B    ret        18
*}
//end;

//0058598C
//function sub_0058598C(?:TRvNDRWriter; ?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 0058598C    push       ebp
 0058598D    mov        ebp,esp
 0058598F    push       ecx
 00585990    push       ebx
 00585991    mov        dword ptr [ebp-4],eax
 00585994    mov        eax,dword ptr [ebp-4]
 00585997    call       00584B04
 0058599C    fadd       qword ptr [ebp+10]
 0058599F    fstp       qword ptr [ebp+10]
 005859A2    wait
 005859A3    mov        eax,dword ptr [ebp-4]
 005859A6    call       00584B44
 005859AB    fadd       qword ptr [ebp+8]
 005859AE    fstp       qword ptr [ebp+8]
 005859B1    wait
 005859B2    mov        eax,dword ptr [ebp-4]
 005859B5    cmp        byte ptr [eax+7E0],0; TRvNDRWriter.?f7E0:byte
>005859BC    je         005859C5
 005859BE    xor        ebx,ebx
>005859C0    jmp        00585AC2
 005859C5    fld        qword ptr [ebp+10]
 005859C8    mov        eax,dword ptr [ebp-4]
 005859CB    fcomp      qword ptr [eax+7D0]; TRvNDRWriter.?f7D0:?Double
 005859D1    fnstsw     al
 005859D3    sahf
>005859D4    jne        00585A44
 005859D6    mov        bl,1
 005859D8    fld        qword ptr [ebp+8]
 005859DB    mov        eax,dword ptr [ebp-4]
 005859DE    fcomp      qword ptr [eax+7D8]; TRvNDRWriter.?f7D8:?Double
 005859E4    fnstsw     al
 005859E6    sahf
>005859E7    ja         00585A18
 005859E9    push       ebp
 005859EA    push       dword ptr [ebp+0C]
 005859ED    push       dword ptr [ebp+8]
 005859F0    mov        eax,dword ptr [ebp-4]
 005859F3    push       dword ptr [eax+7DC]; TRvNDRWriter.?f7DC:dword
 005859F9    push       dword ptr [eax+7D8]; TRvNDRWriter.?f7D8:?Double
 005859FF    push       dword ptr [ebp+14]
 00585A02    push       dword ptr [ebp+10]
 00585A05    mov        eax,dword ptr [ebp-4]
 00585A08    add        eax,7C4; TRvNDRWriter.?f7C4:dword
 00585A0D    call       0058577C
 00585A12    pop        ecx
>00585A13    jmp        00585AC2
 00585A18    push       ebp
 00585A19    mov        eax,dword ptr [ebp-4]
 00585A1C    push       dword ptr [eax+7DC]; TRvNDRWriter.?f7DC:dword
 00585A22    push       dword ptr [eax+7D8]; TRvNDRWriter.?f7D8:?Double
 00585A28    push       dword ptr [ebp+0C]
 00585A2B    push       dword ptr [ebp+8]
 00585A2E    push       dword ptr [ebp+14]
 00585A31    push       dword ptr [ebp+10]
 00585A34    mov        eax,dword ptr [ebp-4]
 00585A37    add        eax,7C4; TRvNDRWriter.?f7C4:dword
 00585A3C    call       0058577C
 00585A41    pop        ecx
>00585A42    jmp        00585AC2
 00585A44    fld        qword ptr [ebp+8]
 00585A47    mov        eax,dword ptr [ebp-4]
 00585A4A    fcomp      qword ptr [eax+7D8]; TRvNDRWriter.?f7D8:?Double
 00585A50    fnstsw     al
 00585A52    sahf
>00585A53    jne        00585AC0
 00585A55    mov        bl,1
 00585A57    fld        qword ptr [ebp+10]
 00585A5A    mov        eax,dword ptr [ebp-4]
 00585A5D    fcomp      qword ptr [eax+7D0]; TRvNDRWriter.?f7D0:?Double
 00585A63    fnstsw     al
 00585A65    sahf
>00585A66    ja         00585A94
 00585A68    push       ebp
 00585A69    push       dword ptr [ebp+14]
 00585A6C    push       dword ptr [ebp+10]
 00585A6F    mov        eax,dword ptr [ebp-4]
 00585A72    push       dword ptr [eax+7D4]; TRvNDRWriter.?f7D4:dword
 00585A78    push       dword ptr [eax+7D0]; TRvNDRWriter.?f7D0:?Double
 00585A7E    push       dword ptr [ebp+0C]
 00585A81    push       dword ptr [ebp+8]
 00585A84    mov        eax,dword ptr [ebp-4]
 00585A87    add        eax,7C8; TRvNDRWriter.?f7C8:dword
 00585A8C    call       0058577C
 00585A91    pop        ecx
>00585A92    jmp        00585AC2
 00585A94    push       ebp
 00585A95    mov        eax,dword ptr [ebp-4]
 00585A98    push       dword ptr [eax+7D4]; TRvNDRWriter.?f7D4:dword
 00585A9E    push       dword ptr [eax+7D0]; TRvNDRWriter.?f7D0:?Double
 00585AA4    push       dword ptr [ebp+14]
 00585AA7    push       dword ptr [ebp+10]
 00585AAA    push       dword ptr [ebp+0C]
 00585AAD    push       dword ptr [ebp+8]
 00585AB0    mov        eax,dword ptr [ebp-4]
 00585AB3    add        eax,7C8; TRvNDRWriter.?f7C8:dword
 00585AB8    call       0058577C
 00585ABD    pop        ecx
>00585ABE    jmp        00585AC2
 00585AC0    xor        ebx,ebx
 00585AC2    mov        eax,dword ptr [ebp-4]
 00585AC5    mov        edx,dword ptr [ebp+10]
 00585AC8    mov        dword ptr [eax+7D0],edx; TRvNDRWriter.?f7D0:?Double
 00585ACE    mov        edx,dword ptr [ebp+14]
 00585AD1    mov        dword ptr [eax+7D4],edx; TRvNDRWriter.?f7D4:dword
 00585AD7    mov        eax,dword ptr [ebp-4]
 00585ADA    mov        edx,dword ptr [ebp+8]
 00585ADD    mov        dword ptr [eax+7D8],edx; TRvNDRWriter.?f7D8:?Double
 00585AE3    mov        edx,dword ptr [ebp+0C]
 00585AE6    mov        dword ptr [eax+7DC],edx; TRvNDRWriter.?f7DC:dword
 00585AEC    mov        eax,ebx
 00585AEE    pop        ebx
 00585AEF    pop        ecx
 00585AF0    pop        ebp
 00585AF1    ret        10
*}
//end;

//00585AF4
//procedure sub_00585AF4(?:?; ?:?; ?:?);
//begin
{*
 00585AF4    push       ebp
 00585AF5    mov        ebp,esp
 00585AF7    add        esp,0FFFFFFF8
 00585AFA    push       ebx
 00585AFB    push       esi
 00585AFC    push       edi
 00585AFD    mov        byte ptr [ebp-5],dl
 00585B00    mov        dword ptr [ebp-4],eax
 00585B03    mov        edi,dword ptr [ebp+8]
 00585B06    add        edi,0FFFFFFFC
 00585B09    mov        eax,dword ptr [edi]
 00585B0B    mov        al,byte ptr [eax+7E0]
 00585B11    mov        byte ptr [ebp-6],al
 00585B14    mov        eax,dword ptr [edi]
 00585B16    mov        byte ptr [eax+7E0],1
 00585B1D    mov        esi,dword ptr [ebp-4]
 00585B20    mov        esi,dword ptr [esi]
 00585B22    test       esi,esi
>00585B24    je         00585C3C
 00585B2A    mov        ebx,esi
 00585B2C    mov        eax,dword ptr [edi]
 00585B2E    mov        edx,dword ptr [eax]
 00585B30    call       dword ptr [edx+74]
 00585B33    mov        eax,dword ptr [eax+10]
 00585B36    mov        edx,dword ptr [ebx+18]
 00585B39    call       TPen.SetColor
 00585B3E    mov        eax,dword ptr [edi]
 00585B40    mov        edx,dword ptr [eax]
 00585B42    call       dword ptr [edx+74]
 00585B45    mov        eax,dword ptr [eax+10]
 00585B48    mov        dl,byte ptr [ebx+1C]
 00585B4B    call       TPen.SetMode
 00585B50    mov        eax,dword ptr [edi]
 00585B52    mov        edx,dword ptr [eax]
 00585B54    call       dword ptr [edx+74]
 00585B57    mov        eax,dword ptr [eax+10]
 00585B5A    mov        dl,byte ptr [ebx+1D]
 00585B5D    call       TPen.SetStyle
 00585B62    mov        eax,dword ptr [edi]
 00585B64    mov        edx,dword ptr [eax]
 00585B66    call       dword ptr [edx+74]
 00585B69    mov        eax,dword ptr [eax+10]
 00585B6C    mov        edx,dword ptr [ebx+20]
 00585B6F    call       TPen.SetWidth
 00585B74    cmp        byte ptr [ebp-5],0
>00585B78    je         00585BD3
 00585B7A    mov        eax,dword ptr [edi]
 00585B7C    call       00584B04
 00585B81    fsubr      qword ptr [ebx+10]
 00585B84    add        esp,0FFFFFFF8
 00585B87    fstp       qword ptr [esp]
 00585B8A    wait
 00585B8B    mov        eax,dword ptr [edi]
 00585B8D    call       00584B44
 00585B92    fsubr      qword ptr [ebx]
 00585B94    add        esp,0FFFFFFF8
 00585B97    fstp       qword ptr [esp]
 00585B9A    wait
 00585B9B    mov        eax,dword ptr [edi]
 00585B9D    mov        edx,dword ptr [eax]
 00585B9F    call       dword ptr [edx+0C4]
 00585BA5    mov        eax,dword ptr [edi]
 00585BA7    call       00584B04
 00585BAC    fsubr      qword ptr [ebx+10]
 00585BAF    add        esp,0FFFFFFF8
 00585BB2    fstp       qword ptr [esp]
 00585BB5    wait
 00585BB6    mov        eax,dword ptr [edi]
 00585BB8    call       00584B44
 00585BBD    fsubr      qword ptr [ebx+8]
 00585BC0    add        esp,0FFFFFFF8
 00585BC3    fstp       qword ptr [esp]
 00585BC6    wait
 00585BC7    mov        eax,dword ptr [edi]
 00585BC9    mov        edx,dword ptr [eax]
 00585BCB    call       dword ptr [edx+0C0]
>00585BD1    jmp        00585C2A
 00585BD3    mov        eax,dword ptr [edi]
 00585BD5    call       00584B04
 00585BDA    fsubr      qword ptr [ebx]
 00585BDC    add        esp,0FFFFFFF8
 00585BDF    fstp       qword ptr [esp]
 00585BE2    wait
 00585BE3    mov        eax,dword ptr [edi]
 00585BE5    call       00584B44
 00585BEA    fsubr      qword ptr [ebx+10]
 00585BED    add        esp,0FFFFFFF8
 00585BF0    fstp       qword ptr [esp]
 00585BF3    wait
 00585BF4    mov        eax,dword ptr [edi]
 00585BF6    mov        edx,dword ptr [eax]
 00585BF8    call       dword ptr [edx+0C4]
 00585BFE    mov        eax,dword ptr [edi]
 00585C00    call       00584B04
 00585C05    fsubr      qword ptr [ebx+8]
 00585C08    add        esp,0FFFFFFF8
 00585C0B    fstp       qword ptr [esp]
 00585C0E    wait
 00585C0F    mov        eax,dword ptr [edi]
 00585C11    call       00584B44
 00585C16    fsubr      qword ptr [ebx+10]
 00585C19    add        esp,0FFFFFFF8
 00585C1C    fstp       qword ptr [esp]
 00585C1F    wait
 00585C20    mov        eax,dword ptr [edi]
 00585C22    mov        edx,dword ptr [eax]
 00585C24    call       dword ptr [edx+0C0]
 00585C2A    mov        eax,esi
 00585C2C    mov        esi,dword ptr [esi+24]
 00585C2F    call       @FreeMem
 00585C34    test       esi,esi
<00585C36    jne        00585B2A
 00585C3C    mov        eax,dword ptr [ebp-4]
 00585C3F    xor        edx,edx
 00585C41    mov        dword ptr [eax],edx
 00585C43    mov        eax,dword ptr [edi]
 00585C45    mov        dl,byte ptr [ebp-6]
 00585C48    mov        byte ptr [eax+7E0],dl
 00585C4E    pop        edi
 00585C4F    pop        esi
 00585C50    pop        ebx
 00585C51    pop        ecx
 00585C52    pop        ecx
 00585C53    pop        ebp
 00585C54    ret
*}
//end;

//00585C58
//procedure sub_00585C58(?:?);
//begin
{*
 00585C58    push       ebp
 00585C59    mov        ebp,esp
 00585C5B    add        esp,0FFFFFFF8
 00585C5E    mov        dword ptr [ebp-4],eax
 00585C61    mov        dl,1
 00585C63    mov        eax,[00429C9C]; TPen
 00585C68    call       TPen.Create; TPen.Create
 00585C6D    mov        dword ptr [ebp-8],eax
 00585C70    mov        eax,dword ptr [ebp-4]
 00585C73    mov        edx,dword ptr [eax]
 00585C75    call       dword ptr [edx+74]
 00585C78    mov        eax,dword ptr [eax+10]
 00585C7B    call       TPen.GetColor
 00585C80    mov        edx,eax
 00585C82    mov        eax,dword ptr [ebp-8]
 00585C85    call       TPen.SetColor
 00585C8A    mov        eax,dword ptr [ebp-4]
 00585C8D    mov        edx,dword ptr [eax]
 00585C8F    call       dword ptr [edx+74]
 00585C92    mov        eax,dword ptr [eax+10]
 00585C95    mov        dl,byte ptr [eax+18]
 00585C98    mov        eax,dword ptr [ebp-8]
 00585C9B    call       TPen.SetMode
 00585CA0    mov        eax,dword ptr [ebp-4]
 00585CA3    mov        edx,dword ptr [eax]
 00585CA5    call       dword ptr [edx+74]
 00585CA8    mov        eax,dword ptr [eax+10]
 00585CAB    call       TPen.GetStyle
 00585CB0    mov        edx,eax
 00585CB2    mov        eax,dword ptr [ebp-8]
 00585CB5    call       TPen.SetStyle
 00585CBA    mov        eax,dword ptr [ebp-4]
 00585CBD    mov        edx,dword ptr [eax]
 00585CBF    call       dword ptr [edx+74]
 00585CC2    mov        eax,dword ptr [eax+10]
 00585CC5    call       TPen.GetWidth
 00585CCA    mov        edx,eax
 00585CCC    mov        eax,dword ptr [ebp-8]
 00585CCF    call       TPen.SetWidth
 00585CD4    xor        eax,eax
 00585CD6    push       ebp
 00585CD7    push       585D84
 00585CDC    push       dword ptr fs:[eax]
 00585CDF    mov        dword ptr fs:[eax],esp
 00585CE2    push       ebp
 00585CE3    mov        eax,dword ptr [ebp-4]
 00585CE6    add        eax,7C4
 00585CEB    mov        dl,1
 00585CED    call       00585AF4
 00585CF2    pop        ecx
 00585CF3    push       ebp
 00585CF4    mov        eax,dword ptr [ebp-4]
 00585CF7    add        eax,7C8
 00585CFC    xor        edx,edx
 00585CFE    call       00585AF4
 00585D03    pop        ecx
 00585D04    xor        eax,eax
 00585D06    pop        edx
 00585D07    pop        ecx
 00585D08    pop        ecx
 00585D09    mov        dword ptr fs:[eax],edx
 00585D0C    push       585D8B
 00585D11    mov        eax,dword ptr [ebp-4]
 00585D14    mov        edx,dword ptr [eax]
 00585D16    call       dword ptr [edx+74]
 00585D19    mov        eax,dword ptr [eax+10]
 00585D1C    push       eax
 00585D1D    mov        eax,dword ptr [ebp-8]
 00585D20    call       TPen.GetColor
 00585D25    mov        edx,eax
 00585D27    pop        eax
 00585D28    call       TPen.SetColor
 00585D2D    mov        eax,dword ptr [ebp-4]
 00585D30    mov        edx,dword ptr [eax]
 00585D32    call       dword ptr [edx+74]
 00585D35    mov        eax,dword ptr [eax+10]
 00585D38    mov        edx,dword ptr [ebp-8]
 00585D3B    mov        dl,byte ptr [edx+18]; TPen.Mode:TPenMode
 00585D3E    call       TPen.SetMode
 00585D43    mov        eax,dword ptr [ebp-4]
 00585D46    mov        edx,dword ptr [eax]
 00585D48    call       dword ptr [edx+74]
 00585D4B    mov        eax,dword ptr [eax+10]
 00585D4E    push       eax
 00585D4F    mov        eax,dword ptr [ebp-8]
 00585D52    call       TPen.GetStyle
 00585D57    mov        edx,eax
 00585D59    pop        eax
 00585D5A    call       TPen.SetStyle
 00585D5F    mov        eax,dword ptr [ebp-4]
 00585D62    mov        edx,dword ptr [eax]
 00585D64    call       dword ptr [edx+74]
 00585D67    mov        eax,dword ptr [eax+10]
 00585D6A    push       eax
 00585D6B    mov        eax,dword ptr [ebp-8]
 00585D6E    call       TPen.GetWidth
 00585D73    mov        edx,eax
 00585D75    pop        eax
 00585D76    call       TPen.SetWidth
 00585D7B    mov        eax,dword ptr [ebp-8]
 00585D7E    call       TObject.Free
 00585D83    ret
<00585D84    jmp        @HandleFinally
<00585D89    jmp        00585D11
 00585D8B    pop        ecx
 00585D8C    pop        ecx
 00585D8D    pop        ebp
 00585D8E    ret
*}
//end;

//00585D90
//procedure sub_00585D90(?:TBaseReport);
//begin
{*
 00585D90    push       ebx
 00585D91    mov        ebx,eax
 00585D93    mov        eax,ebx
 00585D95    call       00584C94
 00585D9A    mov        eax,ebx
 00585D9C    call       005855B4
 00585DA1    push       dword ptr [ebx+944]; TBaseReport.?f944:dword
 00585DA7    push       dword ptr [ebx+940]; TBaseReport.?f940:dword
 00585DAD    mov        eax,ebx
 00585DAF    call       TRvNDRWriter.SetMarginLeft
 00585DB4    push       dword ptr [ebx+94C]; TBaseReport.?f94C:dword
 00585DBA    push       dword ptr [ebx+948]; TBaseReport.?f948:dword
 00585DC0    mov        eax,ebx
 00585DC2    call       TRvNDRWriter.SetMarginRight
 00585DC7    push       dword ptr [ebx+954]; TBaseReport.?f954:dword
 00585DCD    push       dword ptr [ebx+950]; TBaseReport.?f950:dword
 00585DD3    mov        eax,ebx
 00585DD5    call       TRvNDRWriter.SetMarginTop
 00585DDA    push       dword ptr [ebx+95C]; TBaseReport.?f95C:dword
 00585DE0    push       dword ptr [ebx+958]; TBaseReport.?f958:dword
 00585DE6    mov        eax,ebx
 00585DE8    call       TRvNDRWriter.SetMarginBottom
 00585DED    mov        eax,ebx
 00585DEF    call       00585550
 00585DF4    pop        ebx
 00585DF5    ret
*}
//end;

//00585DF8
//function sub_00585DF8(?:AnsiString):?;
//begin
{*
 00585DF8    push       ebp
 00585DF9    mov        ebp,esp
 00585DFB    push       ecx
 00585DFC    push       ebx
 00585DFD    mov        dword ptr [ebp-4],edx
 00585E00    mov        ebx,eax
 00585E02    mov        eax,dword ptr [ebp-4]
 00585E05    call       @LStrAddRef
 00585E0A    xor        eax,eax
 00585E0C    push       ebp
 00585E0D    push       585E41
 00585E12    push       dword ptr fs:[eax]
 00585E15    mov        dword ptr fs:[eax],esp
 00585E18    mov        eax,ebx
 00585E1A    call       00588A98
 00585E1F    xor        ecx,ecx
 00585E21    mov        edx,dword ptr [ebp-4]
 00585E24    mov        ebx,dword ptr [eax]
 00585E26    call       dword ptr [ebx+6C]
 00585E29    mov        ebx,eax
 00585E2B    xor        eax,eax
 00585E2D    pop        edx
 00585E2E    pop        ecx
 00585E2F    pop        ecx
 00585E30    mov        dword ptr fs:[eax],edx
 00585E33    push       585E48
 00585E38    lea        eax,[ebp-4]
 00585E3B    call       @LStrClr
 00585E40    ret
<00585E41    jmp        @HandleFinally
<00585E46    jmp        00585E38
 00585E48    mov        eax,ebx
 00585E4A    pop        ebx
 00585E4B    pop        ecx
 00585E4C    pop        ebp
 00585E4D    ret
*}
//end;

//00585E50
//function sub_00585E50(?:TBaseReport; ?:?):?;
//begin
{*
 00585E50    push       ebp
 00585E51    mov        ebp,esp
 00585E53    push       ecx
 00585E54    push       ebx
 00585E55    mov        dword ptr [ebp-4],edx
 00585E58    mov        ebx,eax
 00585E5A    mov        eax,dword ptr [ebp-4]
 00585E5D    call       @LStrAddRef
 00585E62    xor        eax,eax
 00585E64    push       ebp
 00585E65    push       585EC0
 00585E6A    push       dword ptr fs:[eax]
 00585E6D    mov        dword ptr fs:[eax],esp
 00585E70    mov        eax,ebx
 00585E72    call       00584C94
 00585E77    call       005807DC
 00585E7C    test       eax,eax
>00585E7E    jne        00585E84
 00585E80    xor        ebx,ebx
>00585E82    jmp        00585EAA
 00585E84    call       005807DC
 00585E89    mov        cl,1
 00585E8B    mov        edx,dword ptr [ebp-4]
 00585E8E    call       00580058
 00585E93    mov        ebx,eax
 00585E95    test       bl,bl
>00585E97    jne        00585EAA
 00585E99    call       005807DC
 00585E9E    xor        ecx,ecx
 00585EA0    mov        edx,dword ptr [ebp-4]
 00585EA3    call       00580058
 00585EA8    mov        ebx,eax
 00585EAA    xor        eax,eax
 00585EAC    pop        edx
 00585EAD    pop        ecx
 00585EAE    pop        ecx
 00585EAF    mov        dword ptr fs:[eax],edx
 00585EB2    push       585EC7
 00585EB7    lea        eax,[ebp-4]
 00585EBA    call       @LStrClr
 00585EBF    ret
<00585EC0    jmp        @HandleFinally
<00585EC5    jmp        00585EB7
 00585EC7    mov        eax,ebx
 00585EC9    pop        ebx
 00585ECA    pop        ecx
 00585ECB    pop        ebp
 00585ECC    ret
*}
//end;

//00585ED0
//function sub_00585ED0(?:TRvNDRWriter):?;
//begin
{*
 00585ED0    push       ebx
 00585ED1    mov        ebx,eax
 00585ED3    mov        eax,ebx
 00585ED5    call       00588A98
 00585EDA    mov        edx,dword ptr [eax]
 00585EDC    call       dword ptr [edx+38]
 00585EDF    pop        ebx
 00585EE0    ret
*}
//end;

//00585EE4
//procedure sub_00585EE4(?:TBaseReport; ?:?);
//begin
{*
 00585EE4    push       ebx
 00585EE5    push       esi
 00585EE6    mov        ebx,edx
 00585EE8    mov        esi,eax
 00585EEA    mov        eax,esi
 00585EEC    call       00588A98
 00585EF1    mov        edx,ebx
 00585EF3    mov        ecx,dword ptr [eax]
 00585EF5    call       dword ptr [ecx+34]
 00585EF8    pop        esi
 00585EF9    pop        ebx
 00585EFA    ret
*}
//end;

//00585EFC
//function sub_00585EFC(?:TRvNDRWriter):?;
//begin
{*
 00585EFC    push       ebx
 00585EFD    mov        ebx,eax
 00585EFF    mov        eax,ebx
 00585F01    call       00588A98
 00585F06    mov        edx,dword ptr [eax]
 00585F08    call       dword ptr [edx+40]
 00585F0B    pop        ebx
 00585F0C    ret
*}
//end;

//00585F10
//procedure sub_00585F10(?:TBaseReport; ?:?);
//begin
{*
 00585F10    push       ebx
 00585F11    push       esi
 00585F12    mov        ebx,edx
 00585F14    mov        esi,eax
 00585F16    mov        eax,esi
 00585F18    call       00588A98
 00585F1D    mov        edx,ebx
 00585F1F    mov        ecx,dword ptr [eax]
 00585F21    call       dword ptr [ecx+3C]
 00585F24    pop        esi
 00585F25    pop        ebx
 00585F26    ret
*}
//end;

//00585F28
//function sub_00585F28(?:?):?;
//begin
{*
 00585F28    mov        edx,dword ptr [eax+8D4]
 00585F2E    add        edx,dword ptr [eax+9B8]
 00585F34    mov        eax,edx
 00585F36    ret
*}
//end;

//00585F38
//procedure sub_00585F38(?:dword; ?:?);
//begin
{*
 00585F38    push       ebp
 00585F39    mov        ebp,esp
 00585F3B    push       ebx
 00585F3C    mov        ebx,eax
 00585F3E    fld        qword ptr [ebp+8]
 00585F41    fadd       qword ptr [ebx+900]
 00585F47    fld        qword ptr [ebx+978]
 00585F4D    fmul       qword ptr [ebx+988]
 00585F53    fdiv       dword ptr ds:[585F7C]; 10000:Single
 00585F59    fmulp      st(1),st
 00585F5B    fsub       qword ptr [ebx+7E8]
 00585F61    fild       dword ptr [ebx+8DC]
 00585F67    fmulp      st(1),st
 00585F69    call       @ROUND
 00585F6E    add        eax,dword ptr [ebx+7B4]
 00585F74    pop        ebx
 00585F75    pop        ebp
 00585F76    ret        8
*}
//end;

//00585F80
//procedure sub_00585F80(?:?; ?:?);
//begin
{*
 00585F80    push       ebp
 00585F81    mov        ebp,esp
 00585F83    push       ebx
 00585F84    mov        ebx,eax
 00585F86    fld        qword ptr [ebp+8]
 00585F89    fadd       qword ptr [ebx+908]
 00585F8F    fld        qword ptr [ebx+980]
 00585F95    fmul       qword ptr [ebx+988]
 00585F9B    fdiv       dword ptr ds:[585FC4]; 10000:Single
 00585FA1    fmulp      st(1),st
 00585FA3    fsub       qword ptr [ebx+7F8]
 00585FA9    fild       dword ptr [ebx+8E0]
 00585FAF    fmulp      st(1),st
 00585FB1    call       @ROUND
 00585FB6    add        eax,dword ptr [ebx+7B8]
 00585FBC    pop        ebx
 00585FBD    pop        ebp
 00585FBE    ret        8
*}
//end;

//00585FC8
//function sub_00585FC8(?:dword; ?:?; ?:?):?;
//begin
{*
 00585FC8    push       ebp
 00585FC9    mov        ebp,esp
 00585FCB    push       ebx
 00585FCC    mov        ebx,eax
 00585FCE    push       dword ptr [ebp+0C]
 00585FD1    push       dword ptr [ebp+8]
 00585FD4    mov        eax,ebx
 00585FD6    call       00586138
 00585FDB    add        esp,0FFFFFFF8
 00585FDE    fstp       qword ptr [esp]
 00585FE1    wait
 00585FE2    mov        eax,ebx
 00585FE4    call       00585F38
 00585FE9    pop        ebx
 00585FEA    pop        ebp
 00585FEB    ret        8
*}
//end;

//00585FF0
//function sub_00585FF0(?:?; ?:?; ?:?):?;
//begin
{*
 00585FF0    push       ebp
 00585FF1    mov        ebp,esp
 00585FF3    push       ebx
 00585FF4    mov        ebx,eax
 00585FF6    push       dword ptr [ebp+0C]
 00585FF9    push       dword ptr [ebp+8]
 00585FFC    mov        eax,ebx
 00585FFE    call       00586154
 00586003    add        esp,0FFFFFFF8
 00586006    fstp       qword ptr [esp]
 00586009    wait
 0058600A    mov        eax,ebx
 0058600C    call       00585F80
 00586011    pop        ebx
 00586012    pop        ebp
 00586013    ret        8
*}
//end;

//00586018
//procedure sub_00586018(?:TRvNDRWriter; ?:?);
//begin
{*
 00586018    add        esp,0FFFFFFF4
 0058601B    sub        edx,dword ptr [eax+7B4]
 00586021    mov        dword ptr [esp+8],edx
 00586025    fild       dword ptr [esp+8]
 00586029    fild       dword ptr [eax+8DC]
 0058602F    fdivp      st(1),st
 00586031    fadd       qword ptr [eax+7E8]
 00586037    fld        qword ptr [eax+978]
 0058603D    fmul       qword ptr [eax+988]
 00586043    fdivr      dword ptr ds:[58605C]; 10000:Single
 00586049    fmulp      st(1),st
 0058604B    fsub       qword ptr [eax+900]
 00586051    fstp       qword ptr [esp]
 00586054    wait
 00586055    fld        qword ptr [esp]
 00586058    add        esp,0C
 0058605B    ret
*}
//end;

//00586060
//procedure sub_00586060(?:TRvNDRWriter; ?:?);
//begin
{*
 00586060    add        esp,0FFFFFFF4
 00586063    sub        edx,dword ptr [eax+7B8]
 00586069    mov        dword ptr [esp+8],edx
 0058606D    fild       dword ptr [esp+8]
 00586071    fild       dword ptr [eax+8E0]
 00586077    fdivp      st(1),st
 00586079    fadd       qword ptr [eax+7F8]
 0058607F    fld        qword ptr [eax+980]
 00586085    fmul       qword ptr [eax+988]
 0058608B    fdivr      dword ptr ds:[5860A4]; 10000:Single
 00586091    fmulp      st(1),st
 00586093    fsub       qword ptr [eax+908]
 00586099    fstp       qword ptr [esp]
 0058609C    wait
 0058609D    fld        qword ptr [esp]
 005860A0    add        esp,0C
 005860A3    ret
*}
//end;

//005860A8
//procedure sub_005860A8(?:TRvNDRWriter; ?:?);
//begin
{*
 005860A8    push       ebx
 005860A9    push       esi
 005860AA    add        esp,0FFFFFFF8
 005860AD    mov        esi,edx
 005860AF    mov        ebx,eax
 005860B1    mov        edx,esi
 005860B3    mov        eax,ebx
 005860B5    call       00586018
 005860BA    add        esp,0FFFFFFF8
 005860BD    fstp       qword ptr [esp]
 005860C0    wait
 005860C1    mov        eax,ebx
 005860C3    call       00586100
 005860C8    fstp       qword ptr [esp]
 005860CB    wait
 005860CC    fld        qword ptr [esp]
 005860CF    pop        ecx
 005860D0    pop        edx
 005860D1    pop        esi
 005860D2    pop        ebx
 005860D3    ret
*}
//end;

//005860D4
//procedure sub_005860D4(?:TRvNDRWriter; ?:?);
//begin
{*
 005860D4    push       ebx
 005860D5    push       esi
 005860D6    add        esp,0FFFFFFF8
 005860D9    mov        esi,edx
 005860DB    mov        ebx,eax
 005860DD    mov        edx,esi
 005860DF    mov        eax,ebx
 005860E1    call       00586060
 005860E6    add        esp,0FFFFFFF8
 005860E9    fstp       qword ptr [esp]
 005860EC    wait
 005860ED    mov        eax,ebx
 005860EF    call       0058611C
 005860F4    fstp       qword ptr [esp]
 005860F7    wait
 005860F8    fld        qword ptr [esp]
 005860FB    pop        ecx
 005860FC    pop        edx
 005860FD    pop        esi
 005860FE    pop        ebx
 005860FF    ret
*}
//end;

//00586100
//function sub_00586100(?:TRvNDRWriter; ?:?):?;
//begin
{*
 00586100    push       ebp
 00586101    mov        ebp,esp
 00586103    add        esp,0FFFFFFF8
 00586106    fld        qword ptr [ebp+8]
 00586109    fmul       qword ptr [eax+938]; TRvNDRWriter.?f938:?Double
 0058610F    fstp       qword ptr [ebp-8]
 00586112    wait
 00586113    fld        qword ptr [ebp-8]
 00586116    pop        ecx
 00586117    pop        ecx
 00586118    pop        ebp
 00586119    ret        8
*}
//end;

//0058611C
//function sub_0058611C(?:TBaseReport; ?:?):?;
//begin
{*
 0058611C    push       ebp
 0058611D    mov        ebp,esp
 0058611F    add        esp,0FFFFFFF8
 00586122    fld        qword ptr [ebp+8]
 00586125    fmul       qword ptr [eax+938]; TBaseReport.?f938:?Double
 0058612B    fstp       qword ptr [ebp-8]
 0058612E    wait
 0058612F    fld        qword ptr [ebp-8]
 00586132    pop        ecx
 00586133    pop        ecx
 00586134    pop        ebp
 00586135    ret        8
*}
//end;

//00586138
//function sub_00586138(?:TBaseReport; ?:?):?;
//begin
{*
 00586138    push       ebp
 00586139    mov        ebp,esp
 0058613B    add        esp,0FFFFFFF8
 0058613E    fld        qword ptr [ebp+8]
 00586141    fdiv       qword ptr [eax+938]; TBaseReport.?f938:?Double
 00586147    fstp       qword ptr [ebp-8]
 0058614A    wait
 0058614B    fld        qword ptr [ebp-8]
 0058614E    pop        ecx
 0058614F    pop        ecx
 00586150    pop        ebp
 00586151    ret        8
*}
//end;

//00586154
//function sub_00586154(?:TBaseReport; ?:?):?;
//begin
{*
 00586154    push       ebp
 00586155    mov        ebp,esp
 00586157    add        esp,0FFFFFFF8
 0058615A    fld        qword ptr [ebp+8]
 0058615D    fdiv       qword ptr [eax+938]; TBaseReport.?f938:?Double
 00586163    fstp       qword ptr [ebp-8]
 00586166    wait
 00586167    fld        qword ptr [ebp-8]
 0058616A    pop        ecx
 0058616B    pop        ecx
 0058616C    pop        ebp
 0058616D    ret        8
*}
//end;

//00586170
//procedure sub_00586170(?:dword);
//begin
{*
 00586170    push       ebx
 00586171    mov        ebx,eax
 00586173    mov        eax,ebx
 00586175    call       00583ECC
 0058617A    fstp       qword ptr [ebx+8A0]
 00586180    wait
 00586181    pop        ebx
 00586182    ret
*}
//end;

//00586184
//procedure sub_00586184(?:dword);
//begin
{*
 00586184    push       ebx
 00586185    mov        ebx,eax
 00586187    mov        eax,ebx
 00586189    mov        edx,dword ptr [eax]
 0058618B    call       dword ptr [edx+12C]
 00586191    inc        dword ptr [ebx+8E4]
 00586197    fld        qword ptr [ebx+8A8]
 0058619D    fadd       qword ptr [ebx+850]
 005861A3    fstp       qword ptr [ebx+8A8]
 005861A9    wait
 005861AA    pop        ebx
 005861AB    ret
*}
//end;

//005861AC
procedure sub_005861AC;
begin
{*
 005861AC    push       ebx
 005861AD    mov        ebx,eax
 005861AF    cmp        byte ptr [ebx+8FD],0; TBaseReport.?f8FD:byte
>005861B6    je         00586225
 005861B8    mov        eax,ebx
 005861BA    call       00588190
 005861BF    mov        eax,dword ptr [ebx+740]; TBaseReport.?f740:?Double
 005861C5    mov        dword ptr [ebx+840],eax; TBaseReport.?f840:?Double
 005861CB    mov        eax,dword ptr [ebx+744]; TBaseReport.?f744:dword
 005861D1    mov        dword ptr [ebx+844],eax; TBaseReport.?f844:dword
 005861D7    mov        eax,dword ptr [ebx+748]; TBaseReport.?f748:?Double
 005861DD    mov        dword ptr [ebx+848],eax; TBaseReport.?f848:?Double
 005861E3    mov        eax,dword ptr [ebx+74C]; TBaseReport.?f74C:dword
 005861E9    mov        dword ptr [ebx+84C],eax; TBaseReport.?f84C:dword
 005861EF    mov        al,byte ptr [ebx+928]; TBaseReport.?f928:TLineHeightMethod
 005861F5    sub        al,1
>005861F7    jb         005861FD
>005861F9    je         00586212
>005861FB    jmp        00586225
 005861FD    fild       dword ptr [ebx+92C]; TBaseReport.?f92C:Single
 00586203    fdivr      dword ptr ds:[586228]; 1:Single
 00586209    fstp       qword ptr [ebx+850]; TBaseReport.?f850:?Double
 0058620F    wait
>00586210    jmp        00586225
 00586212    fld        qword ptr [ebx+728]; TBaseReport.?f728:?Double
 00586218    fdiv       dword ptr ds:[58622C]; 60:Single
 0058621E    fstp       qword ptr [ebx+850]; TBaseReport.?f850:?Double
 00586224    wait
 00586225    pop        ebx
 00586226    ret
*}
end;

//00586230
//procedure sub_00586230(?:dword);
//begin
{*
 00586230    push       ebx
 00586231    mov        ebx,eax
 00586233    cmp        byte ptr [ebx+8FD],0
>0058623A    je         00586251
 0058623C    mov        eax,ebx
 0058623E    call       005889B4
 00586243    add        esp,0FFFFFFF8
 00586246    fstp       qword ptr [esp]
 00586249    wait
 0058624A    mov        eax,ebx
 0058624C    call       005889EC
 00586251    pop        ebx
 00586252    ret
*}
//end;

//00586254
//procedure sub_00586254(?:dword);
//begin
{*
 00586254    push       ebx
 00586255    mov        ebx,eax
 00586257    mov        eax,ebx
 00586259    call       0058626C
 0058625E    mov        eax,ebx
 00586260    mov        edx,dword ptr [eax]
 00586262    call       dword ptr [edx+120]
 00586268    pop        ebx
 00586269    ret
*}
//end;

//0058626C
//procedure sub_0058626C(?:dword);
//begin
{*
 0058626C    push       ebx
 0058626D    add        esp,0FFFFFFF8
 00586270    mov        ebx,eax
 00586272    mov        eax,dword ptr [ebx+8E8]
 00586278    cmp        eax,dword ptr [ebx+8EC]
>0058627E    jge        005862AD
 00586280    mov        eax,ebx
 00586282    call       00586308
 00586287    dec        eax
>00586288    jg         005862AD
 0058628A    mov        edx,1
 0058628F    mov        eax,ebx
 00586291    call       00583FD0
 00586296    mov        edx,dword ptr [ebx+8E8]
 0058629C    inc        edx
 0058629D    mov        eax,ebx
 0058629F    call       0058401C
 005862A4    mov        eax,ebx
 005862A6    mov        edx,dword ptr [eax]
 005862A8    call       dword ptr [edx+44]
>005862AB    jmp        005862BB
 005862AD    mov        eax,ebx
 005862AF    call       00586170
 005862B4    mov        eax,ebx
 005862B6    call       00586184
 005862BB    mov        eax,ebx
 005862BD    call       005874E0
 005862C2    mov        eax,ebx
 005862C4    call       00588A24
 005862C9    fstp       qword ptr [esp]
 005862CC    wait
 005862CD    mov        eax,ebx
 005862CF    call       005843F4
 005862D4    fcomp      qword ptr [esp]
 005862D7    fnstsw     al
 005862D9    sahf
>005862DA    ja         005862E3
 005862DC    mov        eax,ebx
 005862DE    mov        edx,dword ptr [eax]
 005862E0    call       dword ptr [edx+50]
 005862E3    pop        ecx
 005862E4    pop        edx
 005862E5    pop        ebx
 005862E6    ret
*}
//end;

//005862E8
//procedure sub_005862E8(?:TBaseReport);
//begin
{*
 005862E8    push       ebx
 005862E9    mov        ebx,eax
 005862EB    mov        edx,1
 005862F0    mov        eax,ebx
 005862F2    call       0058401C
 005862F7    mov        edx,1
 005862FC    mov        eax,ebx
 005862FE    call       00583FD0
 00586303    pop        ebx
 00586304    ret
*}
//end;

//00586308
//procedure sub_00586308(?:dword);
//begin
{*
 00586308    push       ebx
 00586309    mov        ebx,eax
 0058630B    mov        eax,ebx
 0058630D    call       0058895C
 00586312    add        esp,0FFFFFFF8
 00586315    fstp       qword ptr [esp]
 00586318    wait
 00586319    mov        eax,ebx
 0058631B    call       00586154
 00586320    fcomp      qword ptr [ebx+898]
 00586326    fnstsw     al
 00586328    sahf
>00586329    jbe        0058632F
 0058632B    xor        eax,eax
 0058632D    pop        ebx
 0058632E    ret
 0058632F    mov        eax,ebx
 00586331    call       0058895C
 00586336    add        esp,0FFFFFFF8
 00586339    fstp       qword ptr [esp]
 0058633C    wait
 0058633D    mov        eax,ebx
 0058633F    call       00586154
 00586344    fsubr      qword ptr [ebx+898]
 0058634A    fdiv       qword ptr [ebx+850]
 00586350    call       @TRUNC
 00586355    inc        eax
 00586356    pop        ebx
 00586357    ret
*}
//end;

//00586358
//procedure sub_00586358(?:TRvNDRWriter; ?:AnsiString);
//begin
{*
 00586358    push       ebp
 00586359    mov        ebp,esp
 0058635B    push       0
 0058635D    push       0
 0058635F    push       0
 00586361    push       ebx
 00586362    push       esi
 00586363    mov        dword ptr [ebp-4],edx
 00586366    mov        esi,eax
 00586368    mov        eax,dword ptr [ebp-4]
 0058636B    call       @LStrAddRef
 00586370    xor        eax,eax
 00586372    push       ebp
 00586373    push       586429
 00586378    push       dword ptr fs:[eax]
 0058637B    mov        dword ptr fs:[eax],esp
 0058637E    lea        eax,[ebp-8]
 00586381    mov        edx,dword ptr [ebp-4]
 00586384    call       @LStrLAsg
 00586389    mov        edx,dword ptr [ebp-8]
 0058638C    mov        eax,586440; '\t'
 00586391    call       @LStrPos
 00586396    mov        ebx,eax
 00586398    test       ebx,ebx
>0058639A    jle        00586404
 0058639C    cmp        ebx,1
>0058639F    jle        005863BF
 005863A1    lea        eax,[ebp-0C]
 005863A4    push       eax
 005863A5    mov        ecx,ebx
 005863A7    dec        ecx
 005863A8    mov        edx,1
 005863AD    mov        eax,dword ptr [ebp-8]
 005863B0    call       @LStrCopy
 005863B5    mov        edx,dword ptr [ebp-0C]
 005863B8    mov        eax,esi
 005863BA    call       00586728
 005863BF    lea        eax,[ebp-8]
 005863C2    mov        ecx,ebx
 005863C4    mov        edx,1
 005863C9    call       @LStrDelete
 005863CE    push       0FFFF8000
 005863D3    push       0FFFF8000
 005863D8    push       0FFFF8000
 005863DD    mov        ecx,0FFFF8000
 005863E2    mov        edx,0FFFF8000
 005863E7    mov        eax,esi
 005863E9    mov        ebx,dword ptr [eax]
 005863EB    call       dword ptr [ebx+130]; TRvNDRWriter.sub_00587614
 005863F1    mov        edx,dword ptr [ebp-8]
 005863F4    mov        eax,586440; '\t'
 005863F9    call       @LStrPos
 005863FE    mov        ebx,eax
 00586400    test       ebx,ebx
<00586402    jg         0058639C
 00586404    mov        edx,dword ptr [ebp-8]
 00586407    mov        eax,esi
 00586409    call       00586728
 0058640E    xor        eax,eax
 00586410    pop        edx
 00586411    pop        ecx
 00586412    pop        ecx
 00586413    mov        dword ptr fs:[eax],edx
 00586416    push       586430
 0058641B    lea        eax,[ebp-0C]
 0058641E    mov        edx,3
 00586423    call       @LStrArrayClr
 00586428    ret
<00586429    jmp        @HandleFinally
<0058642E    jmp        0058641B
 00586430    pop        esi
 00586431    pop        ebx
 00586432    mov        esp,ebp
 00586434    pop        ebp
 00586435    ret
*}
//end;

//00586444
//procedure sub_00586444(?:dword; ?:AnsiString; ?:?; ?:?);
//begin
{*
 00586444    push       ebp
 00586445    mov        ebp,esp
 00586447    push       ecx
 00586448    push       ebx
 00586449    mov        dword ptr [ebp-4],edx
 0058644C    mov        ebx,eax
 0058644E    mov        eax,dword ptr [ebp-4]
 00586451    call       @LStrAddRef
 00586456    xor        eax,eax
 00586458    push       ebp
 00586459    push       5864A2
 0058645E    push       dword ptr fs:[eax]
 00586461    mov        dword ptr fs:[eax],esp
 00586464    push       dword ptr [ebp+0C]
 00586467    push       dword ptr [ebp+8]
 0058646A    mov        eax,ebx
 0058646C    call       00586138
 00586471    add        esp,0FFFFFFF8
 00586474    fstp       qword ptr [esp]
 00586477    wait
 00586478    push       0
 0058647A    push       0
 0058647C    push       0
 0058647E    push       0
 00586480    xor        ecx,ecx
 00586482    mov        edx,dword ptr [ebp-4]
 00586485    mov        eax,ebx
 00586487    call       005864B0
 0058648C    xor        eax,eax
 0058648E    pop        edx
 0058648F    pop        ecx
 00586490    pop        ecx
 00586491    mov        dword ptr fs:[eax],edx
 00586494    push       5864A9
 00586499    lea        eax,[ebp-4]
 0058649C    call       @LStrClr
 005864A1    ret
<005864A2    jmp        @HandleFinally
<005864A7    jmp        00586499
 005864A9    pop        ebx
 005864AA    pop        ecx
 005864AB    pop        ebp
 005864AC    ret        8
*}
//end;

//005864B0
//procedure sub_005864B0(?:dword; ?:AnsiString; ?:byte; ?:?; ?:?; ?:?);
//begin
{*
 005864B0    push       ebp
 005864B1    mov        ebp,esp
 005864B3    add        esp,0FFFFFFD0
 005864B6    push       ebx
 005864B7    push       esi
 005864B8    xor        ebx,ebx
 005864BA    mov        dword ptr [ebp-1C],ebx
 005864BD    mov        dword ptr [ebp-0C],ebx
 005864C0    mov        byte ptr [ebp-5],cl
 005864C3    mov        dword ptr [ebp-4],edx
 005864C6    mov        ebx,eax
 005864C8    mov        eax,dword ptr [ebp-4]
 005864CB    call       @LStrAddRef
 005864D0    xor        eax,eax
 005864D2    push       ebp
 005864D3    push       586691
 005864D8    push       dword ptr fs:[eax]
 005864DB    mov        dword ptr fs:[eax],esp
 005864DE    mov        al,byte ptr [ebp-5]
 005864E1    sub        al,1
>005864E3    jb         005864FC
>005864E5    je         0058651E
 005864E7    dec        al
>005864E9    je         00586625
 005864EF    dec        al
>005864F1    je         00586641
>005864F7    jmp        0058666B
 005864FC    fld        qword ptr [ebp+8]
 005864FF    fdiv       dword ptr ds:[5866A0]; 2:Single
 00586505    fadd       qword ptr [ebp+18]
 00586508    add        esp,0FFFFFFF8
 0058650B    fstp       qword ptr [esp]
 0058650E    wait
 0058650F    mov        edx,dword ptr [ebp-4]
 00586512    mov        eax,ebx
 00586514    mov        ecx,dword ptr [eax]
 00586516    call       dword ptr [ecx+64]
>00586519    jmp        0058666B
 0058651E    mov        byte ptr [ebx+6DC],1
 00586525    lea        eax,[ebp-0C]
 00586528    mov        edx,dword ptr [ebp-4]
 0058652B    call       @LStrLAsg
 00586530    fld        qword ptr [ebp+18]
 00586533    fadd       qword ptr [ebp+10]
 00586536    fstp       qword ptr [ebp-18]
 00586539    wait
 0058653A    mov        edx,dword ptr [ebp-0C]
 0058653D    mov        eax,5866AC; '\t'
 00586542    call       @LStrPos
 00586547    mov        esi,eax
 00586549    test       esi,esi
>0058654B    jle        0058660C
 00586551    cmp        esi,1
>00586554    jle        0058658C
 00586556    push       dword ptr [ebp-14]
 00586559    push       dword ptr [ebp-18]
 0058655C    lea        eax,[ebp-1C]
 0058655F    push       eax
 00586560    mov        ecx,esi
 00586562    dec        ecx
 00586563    mov        edx,1
 00586568    mov        eax,dword ptr [ebp-0C]
 0058656B    call       @LStrCopy
 00586570    mov        edx,dword ptr [ebp-1C]
 00586573    mov        eax,ebx
 00586575    mov        ecx,dword ptr [eax]
 00586577    call       dword ptr [ecx+68]
 0058657A    mov        eax,dword ptr [ebx+8A0]
 00586580    mov        dword ptr [ebp-18],eax
 00586583    mov        eax,dword ptr [ebx+8A4]
 00586589    mov        dword ptr [ebp-14],eax
 0058658C    push       dword ptr [ebx+7A4]
 00586592    push       dword ptr [ebx+7A0]
 00586598    mov        eax,ebx
 0058659A    call       00586138
 0058659F    fld        qword ptr [ebp-18]
 005865A2    fsub       qword ptr [ebp+18]
 005865A5    fld        tbyte ptr ds:[5866B0]; 0,001:Extended
 005865AB    faddp      st(1),st
 005865AD    fdivrp     st(1),st
 005865AF    call       @TRUNC
 005865B4    add        eax,1
 005865B7    adc        edx,0
 005865BA    mov        dword ptr [ebp-24],eax
 005865BD    mov        dword ptr [ebp-20],edx
 005865C0    fild       qword ptr [ebp-24]
 005865C3    fstp       tbyte ptr [ebp-30]
 005865C6    wait
 005865C7    push       dword ptr [ebx+7A4]
 005865CD    push       dword ptr [ebx+7A0]
 005865D3    mov        eax,ebx
 005865D5    call       00586138
 005865DA    fld        tbyte ptr [ebp-30]
 005865DD    fmulp      st(1),st
 005865DF    fadd       qword ptr [ebp+18]
 005865E2    fstp       qword ptr [ebp-18]
 005865E5    wait
 005865E6    lea        eax,[ebp-0C]
 005865E9    mov        ecx,esi
 005865EB    mov        edx,1
 005865F0    call       @LStrDelete
 005865F5    mov        edx,dword ptr [ebp-0C]
 005865F8    mov        eax,5866AC; '\t'
 005865FD    call       @LStrPos
 00586602    mov        esi,eax
 00586604    test       esi,esi
<00586606    jg         00586551
 0058660C    mov        byte ptr [ebx+6DC],0
 00586613    push       dword ptr [ebp-14]
 00586616    push       dword ptr [ebp-18]
 00586619    mov        edx,dword ptr [ebp-0C]
 0058661C    mov        eax,ebx
 0058661E    mov        ecx,dword ptr [eax]
 00586620    call       dword ptr [ecx+68]
>00586623    jmp        0058666B
 00586625    fld        qword ptr [ebp+18]
 00586628    fadd       qword ptr [ebp+8]
 0058662B    fsub       qword ptr [ebp+10]
 0058662E    add        esp,0FFFFFFF8
 00586631    fstp       qword ptr [esp]
 00586634    wait
 00586635    mov        edx,dword ptr [ebp-4]
 00586638    mov        eax,ebx
 0058663A    mov        ecx,dword ptr [eax]
 0058663C    call       dword ptr [ecx+6C]
>0058663F    jmp        0058666B
 00586641    fld        qword ptr [ebp+18]
 00586644    fadd       qword ptr [ebp+10]
 00586647    add        esp,0FFFFFFF8
 0058664A    fstp       qword ptr [esp]
 0058664D    wait
 0058664E    fld        qword ptr [ebp+10]
 00586651    fmul       dword ptr ds:[5866A0]; 2:Single
 00586657    fsubr      qword ptr [ebp+8]
 0058665A    add        esp,0FFFFFFF8
 0058665D    fstp       qword ptr [esp]
 00586660    wait
 00586661    mov        edx,dword ptr [ebp-4]
 00586664    mov        eax,ebx
 00586666    mov        ecx,dword ptr [eax]
 00586668    call       dword ptr [ecx+70]
 0058666B    xor        eax,eax
 0058666D    pop        edx
 0058666E    pop        ecx
 0058666F    pop        ecx
 00586670    mov        dword ptr fs:[eax],edx
 00586673    push       586698
 00586678    lea        eax,[ebp-1C]
 0058667B    call       @LStrClr
 00586680    lea        eax,[ebp-0C]
 00586683    call       @LStrClr
 00586688    lea        eax,[ebp-4]
 0058668B    call       @LStrClr
 00586690    ret
<00586691    jmp        @HandleFinally
<00586696    jmp        00586678
 00586698    pop        esi
 00586699    pop        ebx
 0058669A    mov        esp,ebp
 0058669C    pop        ebp
 0058669D    ret        18
*}
//end;

//005866BC
//procedure sub_005866BC(?:dword; ?:AnsiString; ?:?; ?:?);
//begin
{*
 005866BC    push       ebp
 005866BD    mov        ebp,esp
 005866BF    push       ecx
 005866C0    push       ebx
 005866C1    mov        dword ptr [ebp-4],edx
 005866C4    mov        ebx,eax
 005866C6    mov        eax,dword ptr [ebp-4]
 005866C9    call       @LStrAddRef
 005866CE    xor        eax,eax
 005866D0    push       ebp
 005866D1    push       58671A
 005866D6    push       dword ptr fs:[eax]
 005866D9    mov        dword ptr fs:[eax],esp
 005866DC    push       dword ptr [ebp+0C]
 005866DF    push       dword ptr [ebp+8]
 005866E2    mov        eax,ebx
 005866E4    call       00586138
 005866E9    add        esp,0FFFFFFF8
 005866EC    fstp       qword ptr [esp]
 005866EF    wait
 005866F0    push       0
 005866F2    push       0
 005866F4    push       0
 005866F6    push       0
 005866F8    mov        cl,1
 005866FA    mov        edx,dword ptr [ebp-4]
 005866FD    mov        eax,ebx
 005866FF    call       005864B0
 00586704    xor        eax,eax
 00586706    pop        edx
 00586707    pop        ecx
 00586708    pop        ecx
 00586709    mov        dword ptr fs:[eax],edx
 0058670C    push       586721
 00586711    lea        eax,[ebp-4]
 00586714    call       @LStrClr
 00586719    ret
<0058671A    jmp        @HandleFinally
<0058671F    jmp        00586711
 00586721    pop        ebx
 00586722    pop        ecx
 00586723    pop        ebp
 00586724    ret        8
*}
//end;

//00586728
//procedure sub_00586728(?:TRvNDRWriter; ?:AnsiString);
//begin
{*
 00586728    push       ebp
 00586729    mov        ebp,esp
 0058672B    add        esp,0FFFFFFF8
 0058672E    push       ebx
 0058672F    push       esi
 00586730    mov        dword ptr [ebp-4],edx
 00586733    mov        ebx,eax
 00586735    mov        eax,dword ptr [ebp-4]
 00586738    call       @LStrAddRef
 0058673D    xor        eax,eax
 0058673F    push       ebp
 00586740    push       5867E3
 00586745    push       dword ptr fs:[eax]
 00586748    mov        dword ptr fs:[eax],esp
 0058674B    cmp        byte ptr [ebx+7B0],0; TRvNDRWriter.?f7B0:byte
>00586752    je         0058675A
 00586754    cmp        dword ptr [ebx+34],0; TRvNDRWriter.?f34:Pointer
>00586758    jne        0058677C
 0058675A    push       dword ptr [ebx+8A4]; TRvNDRWriter.?f8A4:dword
 00586760    push       dword ptr [ebx+8A0]; TRvNDRWriter.?f8A0:?Double
 00586766    push       0
 00586768    push       0
 0058676A    push       0
 0058676C    push       0
 0058676E    mov        cl,1
 00586770    mov        edx,dword ptr [ebp-4]
 00586773    mov        eax,ebx
 00586775    call       005864B0
>0058677A    jmp        005867CD
 0058677C    mov        esi,dword ptr [ebx+7AC]; TRvNDRWriter.?f7AC:Pointer
 00586782    mov        al,byte ptr [esi+8]
 00586785    mov        dl,byte ptr [ebx+8D0]; TRvNDRWriter.?f8D0:byte
 0058678B    cmp        dl,4
>0058678E    je         00586792
 00586790    mov        eax,edx
 00586792    mov        edx,dword ptr [ebx+8E8]; TRvNDRWriter.?f8E8:dword
 00586798    dec        edx
 00586799    mov        dword ptr [ebp-8],edx
 0058679C    fild       dword ptr [ebp-8]
 0058679F    fmul       qword ptr [ebx+8B0]; TRvNDRWriter.?f8B0:?Double
 005867A5    fadd       qword ptr [esi]
 005867A7    add        esp,0FFFFFFF8
 005867AA    fstp       qword ptr [esp]
 005867AD    wait
 005867AE    push       dword ptr [esi+1C]
 005867B1    push       dword ptr [esi+18]
 005867B4    push       dword ptr [esi+14]
 005867B7    push       dword ptr [esi+10]
 005867BA    mov        ecx,eax
 005867BC    mov        edx,dword ptr [ebp-4]
 005867BF    mov        eax,ebx
 005867C1    call       005864B0
 005867C6    mov        byte ptr [ebx+7B0],0; TRvNDRWriter.?f7B0:byte
 005867CD    xor        eax,eax
 005867CF    pop        edx
 005867D0    pop        ecx
 005867D1    pop        ecx
 005867D2    mov        dword ptr fs:[eax],edx
 005867D5    push       5867EA
 005867DA    lea        eax,[ebp-4]
 005867DD    call       @LStrClr
 005867E2    ret
<005867E3    jmp        @HandleFinally
<005867E8    jmp        005867DA
 005867EA    pop        esi
 005867EB    pop        ebx
 005867EC    pop        ecx
 005867ED    pop        ecx
 005867EE    pop        ebp
 005867EF    ret
*}
//end;

//005867F0
//procedure sub_005867F0(?:dword; ?:AnsiString; ?:?; ?:?);
//begin
{*
 005867F0    push       ebp
 005867F1    mov        ebp,esp
 005867F3    push       ecx
 005867F4    push       ebx
 005867F5    mov        dword ptr [ebp-4],edx
 005867F8    mov        ebx,eax
 005867FA    mov        eax,dword ptr [ebp-4]
 005867FD    call       @LStrAddRef
 00586802    xor        eax,eax
 00586804    push       ebp
 00586805    push       58684E
 0058680A    push       dword ptr fs:[eax]
 0058680D    mov        dword ptr fs:[eax],esp
 00586810    push       dword ptr [ebp+0C]
 00586813    push       dword ptr [ebp+8]
 00586816    mov        eax,ebx
 00586818    call       00586138
 0058681D    add        esp,0FFFFFFF8
 00586820    fstp       qword ptr [esp]
 00586823    wait
 00586824    push       0
 00586826    push       0
 00586828    push       0
 0058682A    push       0
 0058682C    mov        cl,2
 0058682E    mov        edx,dword ptr [ebp-4]
 00586831    mov        eax,ebx
 00586833    call       005864B0
 00586838    xor        eax,eax
 0058683A    pop        edx
 0058683B    pop        ecx
 0058683C    pop        ecx
 0058683D    mov        dword ptr fs:[eax],edx
 00586840    push       586855
 00586845    lea        eax,[ebp-4]
 00586848    call       @LStrClr
 0058684D    ret
<0058684E    jmp        @HandleFinally
<00586853    jmp        00586845
 00586855    pop        ebx
 00586856    pop        ecx
 00586857    pop        ebp
 00586858    ret        8
*}
//end;

//0058685C
//procedure sub_0058685C(?:TRvNDRWriter; ?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 0058685C    push       ebp
 0058685D    mov        ebp,esp
 0058685F    push       ecx
 00586860    push       ebx
 00586861    push       esi
 00586862    mov        ebx,ecx
 00586864    mov        dword ptr [ebp-4],edx
 00586867    mov        esi,eax
 00586869    mov        eax,dword ptr [ebp-4]
 0058686C    call       @LStrAddRef
 00586871    xor        eax,eax
 00586873    push       ebp
 00586874    push       586987
 00586879    push       dword ptr fs:[eax]
 0058687C    mov        dword ptr fs:[eax],esp
 0058687F    mov        eax,ebx
 00586881    mov        edx,dword ptr [ebp-4]
 00586884    call       @LStrAsg
 00586889    mov        edx,dword ptr [ebp-4]
 0058688C    mov        eax,5869A0; 'ý$RPC'
 00586891    call       @LStrPos
 00586896    test       eax,eax
>00586898    jg         00586971
>0058689E    jmp        00586958
>005868A3    jmp        00586909
 005868A5    mov        eax,dword ptr [ebx]
 005868A7    call       @LStrLen
 005868AC    mov        edx,eax
 005868AE    dec        edx
 005868AF    mov        eax,ebx
 005868B1    call       @LStrSetLength
 005868B6    cmp        dword ptr [ebx],0
>005868B9    je         00586971
 005868BF    mov        eax,dword ptr [ebx]
 005868C1    call       @LStrLen
 005868C6    mov        edx,dword ptr [ebx]
 005868C8    cmp        byte ptr [edx+eax-1],1
<005868CD    jne        005868A5
 005868CF    mov        eax,dword ptr [ebx]
 005868D1    call       @LStrLen
 005868D6    mov        edx,eax
 005868D8    mov        eax,dword ptr [ebx]
 005868DA    call       ByteType
 005868DF    cmp        al,2
>005868E1    jne        005868F8
 005868E3    mov        eax,dword ptr [ebx]
 005868E5    call       @LStrLen
 005868EA    mov        edx,eax
 005868EC    sub        edx,2
 005868EF    mov        eax,ebx
 005868F1    call       @LStrSetLength
>005868F6    jmp        00586909
 005868F8    mov        eax,dword ptr [ebx]
 005868FA    call       @LStrLen
 005868FF    mov        edx,eax
 00586901    dec        edx
 00586902    mov        eax,ebx
 00586904    call       @LStrSetLength
 00586909    cmp        dword ptr [ebx],0
>0058690C    je         0058691E
 0058690E    mov        eax,dword ptr [ebx]
 00586910    call       @LStrLen
 00586915    mov        edx,dword ptr [ebx]
 00586917    cmp        byte ptr [edx+eax-1],4
<0058691C    je         005868A5
 0058691E    mov        eax,dword ptr [ebx]
 00586920    call       @LStrLen
 00586925    mov        edx,eax
 00586927    mov        eax,dword ptr [ebx]
 00586929    call       ByteType
 0058692E    cmp        al,2
>00586930    jne        00586947
 00586932    mov        eax,dword ptr [ebx]
 00586934    call       @LStrLen
 00586939    mov        edx,eax
 0058693B    sub        edx,2
 0058693E    mov        eax,ebx
 00586940    call       @LStrSetLength
>00586945    jmp        00586958
 00586947    mov        eax,dword ptr [ebx]
 00586949    call       @LStrLen
 0058694E    mov        edx,eax
 00586950    dec        edx
 00586951    mov        eax,ebx
 00586953    call       @LStrSetLength
 00586958    cmp        dword ptr [ebx],0
>0058695B    je         00586971
 0058695D    mov        edx,dword ptr [ebx]
 0058695F    mov        eax,esi
 00586961    mov        ecx,dword ptr [eax]
 00586963    call       dword ptr [ecx+134]; TRvNDRWriter.sub_00587ABC
 00586969    fcomp      qword ptr [ebp+8]
 0058696C    fnstsw     al
 0058696E    sahf
<0058696F    ja         00586909
 00586971    xor        eax,eax
 00586973    pop        edx
 00586974    pop        ecx
 00586975    pop        ecx
 00586976    mov        dword ptr fs:[eax],edx
 00586979    push       58698E
 0058697E    lea        eax,[ebp-4]
 00586981    call       @LStrClr
 00586986    ret
<00586987    jmp        @HandleFinally
<0058698C    jmp        0058697E
 0058698E    pop        esi
 0058698F    pop        ebx
 00586990    pop        ecx
 00586991    pop        ebp
 00586992    ret        8
*}
//end;

//005869A8
//procedure sub_005869A8(?:?);
//begin
{*
 005869A8    push       ebp
 005869A9    mov        ebp,esp
 005869AB    add        esp,0FFFFFFF8
 005869AE    push       ebx
 005869AF    push       esi
 005869B0    xor        ecx,ecx
 005869B2    mov        dword ptr [ebp-8],ecx
 005869B5    mov        dword ptr [ebp-4],edx
 005869B8    mov        ebx,eax
 005869BA    mov        eax,dword ptr [ebp-4]
 005869BD    call       @LStrAddRef
 005869C2    xor        eax,eax
 005869C4    push       ebp
 005869C5    push       586A35
 005869CA    push       dword ptr fs:[eax]
 005869CD    mov        dword ptr fs:[eax],esp
 005869D0    push       0FFFF8000
 005869D5    push       0FFFF8000
 005869DA    push       0FFFF8000
 005869DF    mov        ecx,0FFFF8000
 005869E4    mov        edx,0FFFF8000
 005869E9    mov        eax,ebx
 005869EB    mov        esi,dword ptr [eax]
 005869ED    call       dword ptr [esi+130]; TRvNDRWriter.sub_00587614
 005869F3    xor        edx,edx
 005869F5    mov        eax,ebx
 005869F7    call       00587A24
 005869FC    add        esp,0FFFFFFF8
 005869FF    fstp       qword ptr [esp]
 00586A02    wait
 00586A03    lea        ecx,[ebp-8]
 00586A06    mov        edx,dword ptr [ebp-4]
 00586A09    mov        eax,ebx
 00586A0B    call       0058685C
 00586A10    mov        edx,dword ptr [ebp-8]
 00586A13    mov        eax,ebx
 00586A15    call       00586358
 00586A1A    xor        eax,eax
 00586A1C    pop        edx
 00586A1D    pop        ecx
 00586A1E    pop        ecx
 00586A1F    mov        dword ptr fs:[eax],edx
 00586A22    push       586A3C
 00586A27    lea        eax,[ebp-8]
 00586A2A    mov        edx,2
 00586A2F    call       @LStrArrayClr
 00586A34    ret
<00586A35    jmp        @HandleFinally
<00586A3A    jmp        00586A27
 00586A3C    pop        esi
 00586A3D    pop        ebx
 00586A3E    pop        ecx
 00586A3F    pop        ecx
 00586A40    pop        ebp
 00586A41    ret
*}
//end;

//00586A44
//procedure sub_00586A44(?:?; ?:?; ?:AnsiString);
//begin
{*
 00586A44    push       ebx
 00586A45    push       esi
 00586A46    push       edi
 00586A47    mov        esi,ecx
 00586A49    mov        ebx,eax
 00586A4B    xor        eax,eax
 00586A4D    mov        al,dl
 00586A4F    cmp        eax,23
>00586A52    ja         00586C5D
 00586A58    mov        al,byte ptr [eax+586A65]
 00586A5E    jmp        dword ptr [eax*4+586A89]
 00586A5E    db         1
 00586A5E    db         2
 00586A5E    db         3
 00586A5E    db         4
 00586A5E    db         5
 00586A5E    db         6
 00586A5E    db         7
 00586A5E    db         8
 00586A5E    db         9
 00586A5E    db         10
 00586A5E    db         11
 00586A5E    db         12
 00586A5E    db         13
 00586A5E    db         14
 00586A5E    db         15
 00586A5E    db         16
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    db         17
 00586A5E    dd         586C5D
 00586A5E    dd         586AD1
 00586A5E    dd         586AEE
 00586A5E    dd         586B0B
 00586A5E    dd         586B28
 00586A5E    dd         586B45
 00586A5E    dd         586B62
 00586A5E    dd         586B7F
 00586A5E    dd         586B9C
 00586A5E    dd         586BB9
 00586A5E    dd         586BCB
 00586A5E    dd         586BDD
 00586A5E    dd         586BEC
 00586A5E    dd         586BFB
 00586A5E    dd         586C0B
 00586A5E    dd         586C16
 00586A5E    dd         586C21
 00586A5E    dd         586C2C
 00586AD1    push       dword ptr [ebx+8CC]
 00586AD7    push       dword ptr [ebx+8C8]
 00586ADD    mov        edx,esi
 00586ADF    mov        eax,586C70; 'ddddd'
 00586AE4    call       FormatDateTime
>00586AE9    jmp        00586C64
 00586AEE    push       dword ptr [ebx+8CC]
 00586AF4    push       dword ptr [ebx+8C8]
 00586AFA    mov        edx,esi
 00586AFC    mov        eax,586C80; 'dddddd'
 00586B01    call       FormatDateTime
>00586B06    jmp        00586C64
 00586B0B    push       dword ptr [ebx+8CC]
 00586B11    push       dword ptr [ebx+8C8]
 00586B17    mov        edx,esi
 00586B19    mov        eax,586C90; 'mm/dd/yy'
 00586B1E    call       FormatDateTime
>00586B23    jmp        00586C64
 00586B28    push       dword ptr [ebx+8CC]
 00586B2E    push       dword ptr [ebx+8C8]
 00586B34    mov        edx,esi
 00586B36    mov        eax,586CA4; 'dd/mm/yy'
 00586B3B    call       FormatDateTime
>00586B40    jmp        00586C64
 00586B45    push       dword ptr [ebx+8CC]
 00586B4B    push       dword ptr [ebx+8C8]
 00586B51    mov        edx,esi
 00586B53    mov        eax,586CB8; 't'
 00586B58    call       FormatDateTime
>00586B5D    jmp        00586C64
 00586B62    push       dword ptr [ebx+8CC]
 00586B68    push       dword ptr [ebx+8C8]
 00586B6E    mov        edx,esi
 00586B70    mov        eax,586CC4; 'tt'
 00586B75    call       FormatDateTime
>00586B7A    jmp        00586C64
 00586B7F    push       dword ptr [ebx+8CC]
 00586B85    push       dword ptr [ebx+8C8]
 00586B8B    mov        edx,esi
 00586B8D    mov        eax,586CD0; 'hh:nn ampm'
 00586B92    call       FormatDateTime
>00586B97    jmp        00586C64
 00586B9C    push       dword ptr [ebx+8CC]
 00586BA2    push       dword ptr [ebx+8C8]
 00586BA8    mov        edx,esi
 00586BAA    mov        eax,586CE4; 'hh:nn'
 00586BAF    call       FormatDateTime
>00586BB4    jmp        00586C64
 00586BB9    mov        edx,esi
 00586BBB    mov        eax,dword ptr [ebx+910]
 00586BC1    call       IntToStr
>00586BC6    jmp        00586C64
 00586BCB    mov        edx,esi
 00586BCD    mov        eax,dword ptr [ebx+914]
 00586BD3    call       IntToStr
>00586BD8    jmp        00586C64
 00586BDD    mov        edx,esi
 00586BDF    mov        eax,dword ptr [ebx+790]
 00586BE5    call       IntToStr
>00586BEA    jmp        00586C64
 00586BEC    mov        edx,esi
 00586BEE    mov        eax,dword ptr [ebx+8D4]
 00586BF4    call       IntToStr
>00586BF9    jmp        00586C64
 00586BFB    mov        eax,ebx
 00586BFD    call       00585F28
 00586C02    mov        edx,esi
 00586C04    call       IntToStr
>00586C09    jmp        00586C64
 00586C0B    mov        edx,esi
 00586C0D    mov        eax,ebx
 00586C0F    call       00584994
>00586C14    jmp        00586C64
 00586C16    mov        edx,esi
 00586C18    mov        eax,ebx
 00586C1A    call       00584A04
>00586C1F    jmp        00586C64
 00586C21    mov        edx,esi
 00586C23    mov        eax,ebx
 00586C25    call       00584A74
>00586C2A    jmp        00586C64
 00586C2C    mov        edi,edx
 00586C2E    and        edi,7F
 00586C31    sub        edi,10
 00586C34    mov        eax,dword ptr [ebx+794]
 00586C3A    mov        edx,dword ptr [eax]
 00586C3C    call       dword ptr [edx+14]
 00586C3F    cmp        edi,eax
>00586C41    jge        00586C54
 00586C43    mov        ecx,esi
 00586C45    mov        edx,edi
 00586C47    mov        eax,dword ptr [ebx+794]
 00586C4D    mov        ebx,dword ptr [eax]
 00586C4F    call       dword ptr [ebx+0C]
>00586C52    jmp        00586C64
 00586C54    mov        eax,esi
 00586C56    call       @LStrClr
>00586C5B    jmp        00586C64
 00586C5D    mov        eax,esi
 00586C5F    call       @LStrClr
 00586C64    pop        edi
 00586C65    pop        esi
 00586C66    pop        ebx
 00586C67    ret
*}
//end;

//00586CEC
//procedure sub_00586CEC(?:?; ?:?; ?:AnsiString);
//begin
{*
 00586CEC    push       ebp
 00586CED    mov        ebp,esp
 00586CEF    add        esp,0FFFFFFF4
 00586CF2    push       ebx
 00586CF3    push       esi
 00586CF4    push       edi
 00586CF5    xor        ebx,ebx
 00586CF7    mov        dword ptr [ebp-4],ebx
 00586CFA    mov        edi,ecx
 00586CFC    mov        ebx,edx
 00586CFE    mov        esi,eax
 00586D00    xor        eax,eax
 00586D02    push       ebp
 00586D03    push       586D6E
 00586D08    push       dword ptr fs:[eax]
 00586D0B    mov        dword ptr fs:[eax],esp
 00586D0E    mov        eax,esi
 00586D10    mov        edx,dword ptr [eax]
 00586D12    call       dword ptr [edx+60]
 00586D15    cmp        al,2
>00586D17    jne        00586D4D
 00586D19    cmp        bl,0C
>00586D1C    je         00586D4D
 00586D1E    lea        eax,[ebp-4]
 00586D21    push       eax
 00586D22    xor        eax,eax
 00586D24    mov        al,bl
 00586D26    mov        dword ptr [ebp-0C],eax
 00586D29    mov        byte ptr [ebp-8],0
 00586D2D    lea        edx,[ebp-0C]
 00586D30    xor        ecx,ecx
 00586D32    mov        eax,586D84; '%.2d'
 00586D37    call       Format
 00586D3C    mov        ecx,dword ptr [ebp-4]
 00586D3F    mov        eax,edi
 00586D41    mov        edx,586D94; 'ý$RPCM'
 00586D46    call       @LStrCat3
>00586D4B    jmp        00586D58
 00586D4D    mov        ecx,edi
 00586D4F    mov        edx,ebx
 00586D51    mov        eax,esi
 00586D53    call       00586A44
 00586D58    xor        eax,eax
 00586D5A    pop        edx
 00586D5B    pop        ecx
 00586D5C    pop        ecx
 00586D5D    mov        dword ptr fs:[eax],edx
 00586D60    push       586D75
 00586D65    lea        eax,[ebp-4]
 00586D68    call       @LStrClr
 00586D6D    ret
<00586D6E    jmp        @HandleFinally
<00586D73    jmp        00586D65
 00586D75    pop        edi
 00586D76    pop        esi
 00586D77    pop        ebx
 00586D78    mov        esp,ebp
 00586D7A    pop        ebp
 00586D7B    ret
*}
//end;

//00586D9C
//procedure sub_00586D9C(?:?; ?:?);
//begin
{*
 00586D9C    push       ebp
 00586D9D    mov        ebp,esp
 00586D9F    push       ebx
 00586DA0    mov        ebx,ecx
 00586DA2    xor        eax,eax
 00586DA4    push       ebp
 00586DA5    push       586DC5
 00586DAA    push       dword ptr fs:[eax]
 00586DAD    mov        dword ptr fs:[eax],esp
 00586DB0    mov        eax,ebx
 00586DB2    call       @LStrClr
 00586DB7    xor        eax,eax
 00586DB9    pop        edx
 00586DBA    pop        ecx
 00586DBB    pop        ecx
 00586DBC    mov        dword ptr fs:[eax],edx
 00586DBF    push       586DCC
 00586DC4    ret
<00586DC5    jmp        @HandleFinally
<00586DCA    jmp        00586DC4
 00586DCC    pop        ebx
 00586DCD    pop        ebp
 00586DCE    ret
*}
//end;

//00586DD0
procedure sub_00586DD0();
begin
{*
 00586DD0    push       ebp
 00586DD1    mov        ebp,esp
 00586DD3    xor        eax,eax
 00586DD5    push       ebp
 00586DD6    push       586DEF
 00586DDB    push       dword ptr fs:[eax]
 00586DDE    mov        dword ptr fs:[eax],esp
 00586DE1    xor        eax,eax
 00586DE3    pop        edx
 00586DE4    pop        ecx
 00586DE5    pop        ecx
 00586DE6    mov        dword ptr fs:[eax],edx
 00586DE9    push       586DF6
 00586DEE    ret
<00586DEF    jmp        @HandleFinally
<00586DF4    jmp        00586DEE
 00586DF6    pop        ebp
 00586DF7    ret
*}
end;

//00586DF8
//procedure sub_00586DF8(?:?; ?:?);
//begin
{*
 00586DF8    push       ebp
 00586DF9    mov        ebp,esp
 00586DFB    push       ecx
 00586DFC    push       ebx
 00586DFD    mov        ebx,ecx
 00586DFF    mov        dword ptr [ebp-4],edx
 00586E02    mov        eax,dword ptr [ebp-4]
 00586E05    call       @LStrAddRef
 00586E0A    xor        eax,eax
 00586E0C    push       ebp
 00586E0D    push       586E38
 00586E12    push       dword ptr fs:[eax]
 00586E15    mov        dword ptr fs:[eax],esp
 00586E18    mov        eax,ebx
 00586E1A    mov        edx,dword ptr [ebp-4]
 00586E1D    call       @LStrAsg
 00586E22    xor        eax,eax
 00586E24    pop        edx
 00586E25    pop        ecx
 00586E26    pop        ecx
 00586E27    mov        dword ptr fs:[eax],edx
 00586E2A    push       586E3F
 00586E2F    lea        eax,[ebp-4]
 00586E32    call       @LStrClr
 00586E37    ret
<00586E38    jmp        @HandleFinally
<00586E3D    jmp        00586E2F
 00586E3F    pop        ebx
 00586E40    pop        ecx
 00586E41    pop        ebp
 00586E42    ret
*}
//end;

//00586E44
//function sub_00586E44(?:TBaseReport):?;
//begin
{*
 00586E44    push       ebx
 00586E45    push       esi
 00586E46    mov        ebx,eax
 00586E48    mov        eax,dword ptr [ebx+6D0]; TBaseReport.?f6D0:dword
 00586E4E    test       eax,eax
>00586E50    je         00586E94
 00586E52    mov        edx,dword ptr [eax]
 00586E54    mov        dword ptr [ebx+8A0],edx; TBaseReport.?f8A0:?Double
 00586E5A    mov        edx,dword ptr [eax+4]
 00586E5D    mov        dword ptr [ebx+8A4],edx; TBaseReport.?f8A4:dword
 00586E63    mov        eax,dword ptr [ebx+6D0]; TBaseReport.?f6D0:dword
 00586E69    mov        edx,dword ptr [eax+8]
 00586E6C    mov        dword ptr [ebx+8A8],edx; TBaseReport.?f8A8:?Double
 00586E72    mov        edx,dword ptr [eax+0C]
 00586E75    mov        dword ptr [ebx+8AC],edx; TBaseReport.?f8AC:dword
 00586E7B    mov        eax,dword ptr [ebx+6D0]; TBaseReport.?f6D0:dword
 00586E81    mov        esi,dword ptr [eax+10]
 00586E84    call       @FreeMem
 00586E89    mov        dword ptr [ebx+6D0],esi; TBaseReport.?f6D0:dword
 00586E8F    mov        al,1
 00586E91    pop        esi
 00586E92    pop        ebx
 00586E93    ret
 00586E94    xor        eax,eax
 00586E96    pop        esi
 00586E97    pop        ebx
 00586E98    ret
*}
//end;

//00586E9C
//function sub_00586E9C(?:TBaseReport):?;
//begin
{*
 00586E9C    push       ebx
 00586E9D    push       esi
 00586E9E    mov        ebx,eax
 00586EA0    cmp        dword ptr [ebx+6D8],0; TBaseReport.?f6D8:Pointer
>00586EA7    je         00586EEA
 00586EA9    lea        edx,[ebx+34]; TBaseReport.?f34:Pointer
 00586EAC    mov        eax,ebx
 00586EAE    call       00587460
 00586EB3    mov        eax,dword ptr [ebx+6D8]; TBaseReport.?f6D8:Pointer
 00586EB9    mov        eax,dword ptr [eax]
 00586EBB    mov        dword ptr [ebx+34],eax; TBaseReport.?f34:Pointer
 00586EBE    mov        eax,dword ptr [ebx+6D8]; TBaseReport.?f6D8:Pointer
 00586EC4    mov        eax,dword ptr [eax+4]
 00586EC7    mov        dword ptr [ebx+38],eax; TBaseReport.?f38:dword
 00586ECA    mov        eax,ebx
 00586ECC    call       005874E0
 00586ED1    mov        eax,dword ptr [ebx+6D8]; TBaseReport.?f6D8:Pointer
 00586ED7    mov        esi,dword ptr [eax+8]
 00586EDA    call       @FreeMem
 00586EDF    mov        dword ptr [ebx+6D8],esi; TBaseReport.?f6D8:Pointer
 00586EE5    mov        al,1
 00586EE7    pop        esi
 00586EE8    pop        ebx
 00586EE9    ret
 00586EEA    xor        eax,eax
 00586EEC    pop        esi
 00586EED    pop        ebx
 00586EEE    ret
*}
//end;

//00586EF0
//function sub_00586EF0(?:TRvNDRWriter):?;
//begin
{*
 00586EF0    push       ebx
 00586EF1    mov        ebx,eax
 00586EF3    cmp        dword ptr [ebx+34],0; TRvNDRWriter.?f34:Pointer
>00586EF7    jne        00586EFD
 00586EF9    xor        eax,eax
 00586EFB    pop        ebx
 00586EFC    ret
 00586EFD    mov        eax,0C
 00586F02    call       @GetMem
 00586F07    mov        edx,dword ptr [ebx+34]; TRvNDRWriter.?f34:Pointer
 00586F0A    inc        word ptr [edx+26]
 00586F0E    mov        edx,dword ptr [ebx+34]; TRvNDRWriter.?f34:Pointer
 00586F11    mov        dword ptr [eax],edx
 00586F13    mov        edx,dword ptr [ebx+38]; TRvNDRWriter.?f38:dword
 00586F16    mov        dword ptr [eax+4],edx
 00586F19    mov        edx,dword ptr [ebx+6D8]; TRvNDRWriter.?f6D8:Pointer
 00586F1F    mov        dword ptr [eax+8],edx
 00586F22    mov        dword ptr [ebx+6D8],eax; TRvNDRWriter.?f6D8:Pointer
 00586F28    mov        al,1
 00586F2A    pop        ebx
 00586F2B    ret
*}
//end;

//00586F2C
//procedure sub_00586F2C(?:?; ?:TRaveFont);
//begin
{*
 00586F2C    push       ebp
 00586F2D    mov        ebp,esp
 00586F2F    add        esp,0FFFFFFF8
 00586F32    push       ebx
 00586F33    push       esi
 00586F34    xor        ecx,ecx
 00586F36    mov        dword ptr [ebp-4],ecx
 00586F39    mov        esi,edx
 00586F3B    mov        ebx,eax
 00586F3D    xor        eax,eax
 00586F3F    push       ebp
 00586F40    push       58703F
 00586F45    push       dword ptr fs:[eax]
 00586F48    mov        dword ptr fs:[eax],esp
 00586F4B    mov        byte ptr [ebx+785],1
 00586F52    lea        edx,[ebp-4]
 00586F55    mov        eax,esi
 00586F57    call       TFont.GetName
 00586F5C    mov        edx,dword ptr [ebp-4]
 00586F5F    mov        eax,ebx
 00586F61    call       00588640
 00586F66    mov        edx,dword ptr [esi+18]; TRaveFont.Color:TColor
 00586F69    mov        eax,ebx
 00586F6B    call       0058861C
 00586F70    mov        eax,esi
 00586F72    call       TFont.GetPitch
 00586F77    mov        edx,eax
 00586F79    mov        eax,ebx
 00586F7B    call       00588794
 00586F80    mov        eax,esi
 00586F82    call       TFont.GetCharset
 00586F87    mov        edx,eax
 00586F89    mov        eax,ebx
 00586F8B    call       005887B8
 00586F90    mov        eax,esi
 00586F92    call       TFont.GetSize
 00586F97    mov        dword ptr [ebp-8],eax
 00586F9A    fild       dword ptr [ebp-8]
 00586F9D    add        esp,0FFFFFFF8
 00586FA0    fstp       qword ptr [esp]
 00586FA3    wait
 00586FA4    mov        eax,ebx
 00586FA6    call       005886B8
 00586FAB    mov        eax,esi
 00586FAD    call       TFont.GetStyle
 00586FB2    test       al,1
 00586FB4    setne      dl
 00586FB7    mov        eax,ebx
 00586FB9    call       0058844C
 00586FBE    mov        eax,esi
 00586FC0    call       TFont.GetStyle
 00586FC5    test       al,4
 00586FC7    setne      dl
 00586FCA    mov        eax,ebx
 00586FCC    call       005884A4
 00586FD1    mov        eax,esi
 00586FD3    call       TFont.GetStyle
 00586FD8    test       al,2
 00586FDA    setne      dl
 00586FDD    mov        eax,ebx
 00586FDF    call       005884FC
 00586FE4    mov        eax,esi
 00586FE6    call       TFont.GetStyle
 00586FEB    test       al,8
 00586FED    setne      dl
 00586FF0    mov        eax,ebx
 00586FF2    call       00588554
 00586FF7    mov        byte ptr [ebx+785],0
 00586FFE    xor        edx,edx
 00587000    mov        eax,ebx
 00587002    call       005885CC
 00587007    xor        edx,edx
 00587009    mov        eax,ebx
 0058700B    call       005885AC
 00587010    xor        edx,edx
 00587012    mov        eax,ebx
 00587014    call       005885EC
 00587019    mov        byte ptr [ebx+784],1
 00587020    mov        edx,ebx
 00587022    mov        eax,ebx
 00587024    mov        ecx,dword ptr [eax]
 00587026    call       dword ptr [ecx+54]
 00587029    xor        eax,eax
 0058702B    pop        edx
 0058702C    pop        ecx
 0058702D    pop        ecx
 0058702E    mov        dword ptr fs:[eax],edx
 00587031    push       587046
 00587036    lea        eax,[ebp-4]
 00587039    call       @LStrClr
 0058703E    ret
<0058703F    jmp        @HandleFinally
<00587044    jmp        00587036
 00587046    pop        esi
 00587047    pop        ebx
 00587048    pop        ecx
 00587049    pop        ecx
 0058704A    pop        ebp
 0058704B    ret
*}
//end;

//0058704C
//procedure sub_0058704C(?:?; ?:PShortString);
//begin
{*
 0058704C    push       esi
 0058704D    push       edi
 0058704E    mov        edi,edx
 00587050    lea        esi,[eax+6E0]
 00587056    mov        ecx,24
 0058705B    rep movs   dword ptr [edi],dword ptr [esi]
 0058705D    pop        edi
 0058705E    pop        esi
 0058705F    ret
*}
//end;

//00587060
//procedure sub_00587060(?:TBaseReport; ?:dword);
//begin
{*
 00587060    push       ebp
 00587061    mov        ebp,esp
 00587063    add        esp,0FFFFFF6C
 00587069    push       ebx
 0058706A    push       esi
 0058706B    push       edi
 0058706C    xor        ecx,ecx
 0058706E    mov        dword ptr [ebp-94],ecx
 00587074    mov        esi,edx
 00587076    lea        edi,[ebp-90]
 0058707C    mov        ecx,24
 00587081    rep movs   dword ptr [edi],dword ptr [esi]
 00587083    mov        ebx,eax
 00587085    lea        esi,[ebp-90]
 0058708B    xor        eax,eax
 0058708D    push       ebp
 0058708E    push       58717A
 00587093    push       dword ptr fs:[eax]
 00587096    mov        dword ptr fs:[eax],esp
 00587099    mov        byte ptr [ebx+785],1; TBaseReport.?f785:byte
 005870A0    lea        eax,[ebp-94]
 005870A6    mov        edx,esi
 005870A8    call       @LStrFromString
 005870AD    mov        edx,dword ptr [ebp-94]
 005870B3    mov        eax,ebx
 005870B5    call       00588640
 005870BA    mov        edx,dword ptr [esi+40]
 005870BD    mov        eax,ebx
 005870BF    call       0058861C
 005870C4    mov        dl,byte ptr [esi+44]
 005870C7    mov        eax,ebx
 005870C9    call       00588794
 005870CE    mov        dl,byte ptr [esi+88]
 005870D4    mov        eax,ebx
 005870D6    call       005887B8
 005870DB    push       dword ptr [esi+54]
 005870DE    push       dword ptr [esi+50]
 005870E1    mov        eax,ebx
 005870E3    call       0058611C
 005870E8    add        esp,0FFFFFFF8
 005870EB    fstp       qword ptr [esp]
 005870EE    wait
 005870EF    mov        eax,ebx
 005870F1    call       00588730
 005870F6    mov        dl,byte ptr [esi+78]
 005870F9    mov        eax,ebx
 005870FB    call       0058844C
 00587100    mov        dl,byte ptr [esi+79]
 00587103    mov        eax,ebx
 00587105    call       005884A4
 0058710A    mov        dl,byte ptr [esi+7A]
 0058710D    mov        eax,ebx
 0058710F    call       005884FC
 00587114    mov        dl,byte ptr [esi+7B]
 00587117    mov        eax,ebx
 00587119    call       00588554
 0058711E    mov        byte ptr [ebx+785],0; TBaseReport.?f785:byte
 00587125    mov        dl,byte ptr [esi+7C]
 00587128    mov        eax,ebx
 0058712A    call       005885CC
 0058712F    mov        dl,byte ptr [esi+7D]
 00587132    mov        eax,ebx
 00587134    call       005885AC
 00587139    movsx      edx,word ptr [esi+7E]
 0058713D    mov        eax,ebx
 0058713F    call       005885EC
 00587144    mov        dl,byte ptr [esi+80]
 0058714A    mov        eax,ebx
 0058714C    call       005887EC
 00587151    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 00587158    mov        edx,ebx
 0058715A    mov        eax,ebx
 0058715C    mov        ecx,dword ptr [eax]
 0058715E    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 00587161    xor        eax,eax
 00587163    pop        edx
 00587164    pop        ecx
 00587165    pop        ecx
 00587166    mov        dword ptr fs:[eax],edx
 00587169    push       587181
 0058716E    lea        eax,[ebp-94]
 00587174    call       @LStrClr
 00587179    ret
<0058717A    jmp        @HandleFinally
<0058717F    jmp        0058716E
 00587181    pop        edi
 00587182    pop        esi
 00587183    pop        ebx
 00587184    mov        esp,ebp
 00587186    pop        ebp
 00587187    ret
*}
//end;

//00587188
//function sub_00587188(?:TBaseReport):?;
//begin
{*
 00587188    push       ebx
 00587189    push       esi
 0058718A    push       edi
 0058718B    mov        esi,eax
 0058718D    mov        bl,1
 0058718F    cmp        byte ptr [esi+6DC],0; TBaseReport.?f6DC:byte
>00587196    jne        005871C6
 00587198    mov        eax,dword ptr [esi+6D4]; TBaseReport.?f6D4:Pointer
 0058719E    test       eax,eax
>005871A0    je         005871C4
 005871A2    mov        edx,eax
 005871A4    mov        eax,esi
 005871A6    call       00587060
 005871AB    mov        eax,dword ptr [esi+6D4]; TBaseReport.?f6D4:Pointer
 005871B1    mov        edi,dword ptr [eax+90]
 005871B7    call       @FreeMem
 005871BC    mov        dword ptr [esi+6D4],edi; TBaseReport.?f6D4:Pointer
>005871C2    jmp        005871C6
 005871C4    xor        ebx,ebx
 005871C6    mov        eax,ebx
 005871C8    pop        edi
 005871C9    pop        esi
 005871CA    pop        ebx
 005871CB    ret
*}
//end;

//005871CC
//function sub_005871CC(?:TRvNDRWriter):?;
//begin
{*
 005871CC    push       ebx
 005871CD    push       esi
 005871CE    push       edi
 005871CF    mov        esi,eax
 005871D1    mov        bl,1
 005871D3    cmp        byte ptr [esi+6DC],0; TRvNDRWriter.?f6DC:byte
>005871DA    jne        00587209
 005871DC    mov        eax,98
 005871E1    call       @GetMem
 005871E6    push       esi
 005871E7    add        esi,6E0; TRvNDRWriter.?f6E0:?
 005871ED    mov        edi,eax
 005871EF    mov        ecx,24
 005871F4    rep movs   dword ptr [edi],dword ptr [esi]
 005871F6    pop        esi
 005871F7    mov        edx,dword ptr [esi+6D4]; TRvNDRWriter.?f6D4:Pointer
 005871FD    mov        dword ptr [eax+90],edx
 00587203    mov        dword ptr [esi+6D4],eax; TRvNDRWriter.?f6D4:Pointer
 00587209    mov        eax,ebx
 0058720B    pop        edi
 0058720C    pop        esi
 0058720D    pop        ebx
 0058720E    ret
*}
//end;

//00587210
//function sub_00587210(?:TBaseReport; ?:?):?;
//begin
{*
 00587210    push       esi
 00587211    push       edi
 00587212    cmp        edx,1
>00587215    jl         0058723A
 00587217    cmp        edx,0A
>0058721A    jg         0058723A
 0058721C    add        edx,edx
 0058721E    lea        edx,[edx+edx*8]
 00587221    lea        edi,[eax+edx*8+0A0]
 00587228    lea        esi,[eax+6E0]; TBaseReport.?f6E0:?
 0058722E    mov        ecx,24
 00587233    rep movs   dword ptr [edi],dword ptr [esi]
 00587235    mov        al,1
 00587237    pop        edi
 00587238    pop        esi
 00587239    ret
 0058723A    xor        eax,eax
 0058723C    pop        edi
 0058723D    pop        esi
 0058723E    ret
*}
//end;

//00587240
//procedure sub_00587240(?:?; ?:?; ?:?);
//begin
{*
 00587240    push       ebp
 00587241    mov        ebp,esp
 00587243    push       ecx
 00587244    push       ebx
 00587245    push       esi
 00587246    push       edi
 00587247    mov        byte ptr [ebp-1],cl
 0058724A    mov        edi,edx
 0058724C    mov        ebx,eax
 0058724E    mov        esi,dword ptr [ebp+8]
 00587251    mov        eax,ebx
 00587253    mov        edx,dword ptr [eax]
 00587255    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587258    mov        ebx,dword ptr [eax+14]
 0058725B    mov        edx,edi
 0058725D    mov        eax,ebx
 0058725F    call       TBrush.SetColor
 00587264    mov        dl,byte ptr [ebp-1]
 00587267    mov        eax,ebx
 00587269    call       TBrush.SetStyle
 0058726E    test       esi,esi
>00587270    je         0058727B
 00587272    mov        edx,esi
 00587274    mov        eax,ebx
 00587276    call       TBrush.SetBitmap
 0058727B    pop        edi
 0058727C    pop        esi
 0058727D    pop        ebx
 0058727E    pop        ecx
 0058727F    pop        ebp
 00587280    ret        4
*}
//end;

//00587284
//procedure sub_00587284(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00587284    push       ebp
 00587285    mov        ebp,esp
 00587287    add        esp,0FFFFFFF4
 0058728A    push       ebx
 0058728B    push       esi
 0058728C    push       edi
 0058728D    mov        byte ptr [ebp-5],cl
 00587290    mov        dword ptr [ebp-4],edx
 00587293    mov        esi,eax
 00587295    mov        edi,dword ptr [ebp+0C]
 00587298    mov        eax,esi
 0058729A    mov        edx,dword ptr [eax]
 0058729C    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058729F    mov        ebx,dword ptr [eax+10]
 005872A2    mov        edx,dword ptr [ebp-4]
 005872A5    mov        eax,ebx
 005872A7    call       TPen.SetColor
 005872AC    mov        dl,byte ptr [ebp+8]
 005872AF    mov        eax,ebx
 005872B1    call       TPen.SetMode
 005872B6    test       edi,edi
>005872B8    jge        0058735B
 005872BE    cmp        edi,0FFFFD8F0
>005872C4    jge        00587307
 005872C6    lea        eax,[edi+2710]
 005872CC    cdq
 005872CD    xor        eax,edx
 005872CF    sub        eax,edx
 005872D1    mov        dword ptr [ebp-0C],eax
 005872D4    fild       dword ptr [ebp-0C]
 005872D7    fdiv       dword ptr ds:[587378]; 10000:Single
 005872DD    fild       dword ptr [esi+8DC]; TRvNDRWriter.?f8DC:Single
 005872E3    fmulp      st(1),st
 005872E5    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 005872EB    fmul       qword ptr [esi+988]; TRvNDRWriter.?f988:?Double
 005872F1    fdiv       dword ptr ds:[587378]; 10000:Single
 005872F7    call       @ROUND
 005872FC    mov        edx,eax
 005872FE    mov        eax,ebx
 00587300    call       TPen.SetWidth
>00587305    jmp        00587342
 00587307    mov        eax,edi
 00587309    cdq
 0058730A    xor        eax,edx
 0058730C    sub        eax,edx
 0058730E    mov        dword ptr [ebp-0C],eax
 00587311    fild       dword ptr [ebp-0C]
 00587314    fdiv       dword ptr ds:[58737C]; 100:Single
 0058731A    fild       dword ptr [esi+8DC]; TRvNDRWriter.?f8DC:Single
 00587320    fmulp      st(1),st
 00587322    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 00587328    fmul       qword ptr [esi+988]; TRvNDRWriter.?f988:?Double
 0058732E    fdiv       dword ptr ds:[587378]; 10000:Single
 00587334    call       @ROUND
 00587339    mov        edx,eax
 0058733B    mov        eax,ebx
 0058733D    call       TPen.SetWidth
 00587342    mov        eax,ebx
 00587344    call       TPen.GetWidth
 00587349    test       eax,eax
>0058734B    jne        00587364
 0058734D    mov        edx,1
 00587352    mov        eax,ebx
 00587354    call       TPen.SetWidth
>00587359    jmp        00587364
 0058735B    mov        edx,edi
 0058735D    mov        eax,ebx
 0058735F    call       TPen.SetWidth
 00587364    mov        dl,byte ptr [ebp-5]
 00587367    mov        eax,ebx
 00587369    call       TPen.SetStyle
 0058736E    pop        edi
 0058736F    pop        esi
 00587370    pop        ebx
 00587371    mov        esp,ebp
 00587373    pop        ebp
 00587374    ret        8
*}
//end;

//00587380
//function sub_00587380(?:TRvNDRWriter; ?:dword; ?:?; ?:?; ?:?):?;
//begin
{*
 00587380    push       ebp
 00587381    mov        ebp,esp
 00587383    add        esp,0FFFFFFF4
 00587386    push       ebx
 00587387    push       esi
 00587388    push       edi
 00587389    mov        byte ptr [ebp-5],cl
 0058738C    mov        dword ptr [ebp-4],edx
 0058738F    mov        esi,eax
 00587391    mov        edi,dword ptr [ebp+0C]
 00587394    mov        dl,1
 00587396    mov        eax,[00429C9C]; TPen
 0058739B    call       TPen.Create; TPen.Create
 005873A0    mov        ebx,eax
 005873A2    mov        edx,dword ptr [ebp-4]
 005873A5    mov        eax,ebx
 005873A7    call       TPen.SetColor
 005873AC    mov        dl,byte ptr [ebp-5]
 005873AF    mov        eax,ebx
 005873B1    call       TPen.SetStyle
 005873B6    mov        dl,byte ptr [ebp+8]
 005873B9    mov        eax,ebx
 005873BB    call       TPen.SetMode
 005873C0    test       edi,edi
>005873C2    jge        00587410
 005873C4    mov        eax,edi
 005873C6    cdq
 005873C7    xor        eax,edx
 005873C9    sub        eax,edx
 005873CB    imul       dword ptr [esi+8DC]; TRvNDRWriter.?f8DC:Single
 005873D1    mov        dword ptr [ebp-0C],eax
 005873D4    fild       dword ptr [ebp-0C]
 005873D7    fmul       qword ptr [esi+978]; TRvNDRWriter.?f978:?Double
 005873DD    fmul       qword ptr [esi+988]; TRvNDRWriter.?f988:?Double
 005873E3    fdiv       dword ptr ds:[587424]; 1000000:Single
 005873E9    call       @ROUND
 005873EE    mov        edx,eax
 005873F0    mov        eax,ebx
 005873F2    call       TPen.SetWidth
 005873F7    mov        eax,ebx
 005873F9    call       TPen.GetWidth
 005873FE    test       eax,eax
>00587400    jne        00587419
 00587402    mov        edx,1
 00587407    mov        eax,ebx
 00587409    call       TPen.SetWidth
>0058740E    jmp        00587419
 00587410    mov        edx,edi
 00587412    mov        eax,ebx
 00587414    call       TPen.SetWidth
 00587419    mov        eax,ebx
 0058741B    pop        edi
 0058741C    pop        esi
 0058741D    pop        ebx
 0058741E    mov        esp,ebp
 00587420    pop        ebp
 00587421    ret        8
*}
//end;

//00587428
//procedure sub_00587428(?:TRvNDRWriter);
//begin
{*
 00587428    fld        qword ptr [eax+888]; TRvNDRWriter.?f888:?Double
 0058742E    fsub       qword ptr [eax+880]; TRvNDRWriter.?f880:?Double
 00587434    fstp       qword ptr [eax+8B0]; TRvNDRWriter.?f8B0:?Double
 0058743A    wait
 0058743B    xor        edx,edx
 0058743D    mov        dword ptr [eax+8B8],edx; TRvNDRWriter.?f8B8:dword
 00587443    mov        dword ptr [eax+8BC],edx; TRvNDRWriter.?f8BC:dword
 00587449    mov        dword ptr [eax+8EC],1; TRvNDRWriter.?f8EC:dword
 00587453    mov        edx,1
 00587458    call       0058401C
 0058745D    ret
*}
//end;

//00587460
//procedure sub_00587460(?:TBaseReport; ?:?);
//begin
{*
 00587460    push       ebx
 00587461    push       esi
 00587462    mov        ebx,edx
 00587464    cmp        dword ptr [ebx],0
>00587467    je         0058748D
 00587469    mov        eax,dword ptr [ebx]
 0058746B    dec        word ptr [eax+26]
 0058746F    mov        eax,dword ptr [ebx]
 00587471    cmp        word ptr [eax+26],0
>00587476    jne        0058748D
>00587478    jmp        00587488
 0058747A    mov        eax,dword ptr [ebx]
 0058747C    mov        esi,dword ptr [eax+28]
 0058747F    mov        eax,dword ptr [ebx]
 00587481    call       @FreeMem
 00587486    mov        dword ptr [ebx],esi
 00587488    cmp        dword ptr [ebx],0
<0058748B    jne        0058747A
 0058748D    pop        esi
 0058748E    pop        ebx
 0058748F    ret
*}
//end;

//00587490
//procedure sub_00587490(?:TBaseReport);
//begin
{*
 00587490    push       ebx
 00587491    mov        ebx,eax
 00587493    lea        edx,[ebx+34]; TBaseReport.?f34:Pointer
 00587496    mov        eax,ebx
 00587498    call       00587460
 0058749D    xor        eax,eax
 0058749F    mov        dword ptr [ebx+34],eax; TBaseReport.?f34:Pointer
 005874A2    xor        eax,eax
 005874A4    mov        dword ptr [ebx+38],eax; TBaseReport.?f38:dword
 005874A7    mov        eax,ebx
 005874A9    call       005874E0
 005874AE    pop        ebx
 005874AF    ret
*}
//end;

//005874B0
//procedure sub_005874B0(?:TBaseReport);
//begin
{*
 005874B0    push       ebx
 005874B1    push       esi
 005874B2    mov        esi,eax
 005874B4    mov        eax,esi
 005874B6    call       00587490
 005874BB    mov        ebx,1
 005874C0    lea        edx,[esi+ebx*8+0D8]
 005874C7    mov        eax,esi
 005874C9    call       00587460
 005874CE    xor        eax,eax
 005874D0    mov        dword ptr [esi+ebx*8+0DC],eax
 005874D7    inc        ebx
 005874D8    cmp        ebx,0B
<005874DB    jne        005874C0
 005874DD    pop        esi
 005874DE    pop        ebx
 005874DF    ret
*}
//end;

//005874E0
//procedure sub_005874E0(?:TBaseReport);
//begin
{*
 005874E0    xor        edx,edx
 005874E2    mov        dword ptr [eax+7AC],edx; TBaseReport.?f7AC:Pointer
 005874E8    mov        byte ptr [eax+7B0],0; TBaseReport.?f7B0:byte
 005874EF    cmp        dword ptr [eax+34],0; TBaseReport.?f34:Pointer
 005874F3    setne      dl
 005874F6    mov        byte ptr [eax+7B1],dl; TBaseReport.?f7B1:byte
 005874FC    ret
*}
//end;

//00587500
//procedure sub_00587500(?:TRvNDRWriter; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00587500    push       ebp
 00587501    mov        ebp,esp
 00587503    add        esp,0FFFFFFF8
 00587506    mov        dword ptr [ebp-4],eax
 00587509    test       dl,dl
>0058750B    je         00587515
 0058750D    cmp        ecx,0FFFF8000
>00587513    je         00587529
 00587515    test       ecx,ecx
>00587517    je         0058760C
 0058751D    cmp        ecx,0FFFF8000
>00587523    je         0058760C
 00587529    cmp        ecx,0FFFF8000
>0058752F    je         00587581
 00587531    push       ecx
 00587532    push       4
 00587534    xor        edx,edx
 00587536    mov        eax,dword ptr [ebp-4]
 00587539    xor        ecx,ecx
 0058753B    call       00587380
 00587540    mov        dword ptr [ebp-8],eax
 00587543    xor        eax,eax
 00587545    push       ebp
 00587546    push       58757A
 0058754B    push       dword ptr fs:[eax]
 0058754E    mov        dword ptr fs:[eax],esp
 00587551    mov        eax,dword ptr [ebp-4]
 00587554    mov        edx,dword ptr [eax]
 00587556    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587559    mov        eax,dword ptr [eax+10]
 0058755C    mov        edx,dword ptr [ebp-8]
 0058755F    mov        ecx,dword ptr [eax]
 00587561    call       dword ptr [ecx+8]
 00587564    xor        eax,eax
 00587566    pop        edx
 00587567    pop        ecx
 00587568    pop        ecx
 00587569    mov        dword ptr fs:[eax],edx
 0058756C    push       587594
 00587571    mov        eax,dword ptr [ebp-8]
 00587574    call       TObject.Free
 00587579    ret
<0058757A    jmp        @HandleFinally
<0058757F    jmp        00587571
 00587581    mov        eax,dword ptr [ebp-4]
 00587584    mov        edx,dword ptr [eax]
 00587586    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587589    mov        eax,dword ptr [eax+10]
 0058758C    mov        edx,dword ptr [ebp+8]
 0058758F    mov        ecx,dword ptr [eax]
 00587591    call       dword ptr [ecx+8]
 00587594    push       dword ptr [ebp+28]
 00587597    push       dword ptr [ebp+24]
 0058759A    mov        eax,dword ptr [ebp-4]
 0058759D    call       00586100
 005875A2    add        esp,0FFFFFFF8
 005875A5    fstp       qword ptr [esp]
 005875A8    wait
 005875A9    push       dword ptr [ebp+20]
 005875AC    push       dword ptr [ebp+1C]
 005875AF    mov        eax,dword ptr [ebp-4]
 005875B2    call       0058611C
 005875B7    add        esp,0FFFFFFF8
 005875BA    fstp       qword ptr [esp]
 005875BD    wait
 005875BE    mov        eax,dword ptr [ebp-4]
 005875C1    mov        edx,dword ptr [eax]
 005875C3    call       dword ptr [edx+0C4]; TRvNDRWriter.sub_0058AE80
 005875C9    fld        qword ptr [ebp+24]
 005875CC    fadd       qword ptr [ebp+14]
 005875CF    add        esp,0FFFFFFF8
 005875D2    fstp       qword ptr [esp]
 005875D5    wait
 005875D6    mov        eax,dword ptr [ebp-4]
 005875D9    call       00586100
 005875DE    add        esp,0FFFFFFF8
 005875E1    fstp       qword ptr [esp]
 005875E4    wait
 005875E5    fld        qword ptr [ebp+1C]
 005875E8    fadd       qword ptr [ebp+0C]
 005875EB    add        esp,0FFFFFFF8
 005875EE    fstp       qword ptr [esp]
 005875F1    wait
 005875F2    mov        eax,dword ptr [ebp-4]
 005875F5    call       0058611C
 005875FA    add        esp,0FFFFFFF8
 005875FD    fstp       qword ptr [esp]
 00587600    wait
 00587601    mov        eax,dword ptr [ebp-4]
 00587604    mov        edx,dword ptr [eax]
 00587606    call       dword ptr [edx+0C0]; TRvNDRWriter.sub_0058ADA0
 0058760C    pop        ecx
 0058760D    pop        ecx
 0058760E    pop        ebp
 0058760F    ret        24
*}
//end;

//00587614
//procedure sub_00587614(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00587614    push       ebp
 00587615    mov        ebp,esp
 00587617    add        esp,0FFFFFFE0
 0058761A    push       ebx
 0058761B    push       esi
 0058761C    push       edi
 0058761D    mov        dword ptr [ebp-8],ecx
 00587620    mov        dword ptr [ebp-4],edx
 00587623    mov        edi,eax
 00587625    mov        eax,edi
 00587627    call       00584BE8
 0058762C    mov        eax,edi
 0058762E    call       00584D84
 00587633    test       al,al
>00587635    jne        005879F1
 0058763B    mov        eax,dword ptr [edi+7AC]; TRvNDRWriter.?f7AC:Pointer
 00587641    test       eax,eax
>00587643    je         00587650
 00587645    mov        eax,dword ptr [eax+28]
 00587648    mov        dword ptr [edi+7AC],eax; TRvNDRWriter.?f7AC:Pointer
>0058764E    jmp        0058766D
 00587650    mov        eax,dword ptr [edi+34]; TRvNDRWriter.?f34:Pointer
 00587653    test       eax,eax
>00587655    je         0058766D
 00587657    cmp        byte ptr [edi+7B1],0; TRvNDRWriter.?f7B1:byte
>0058765E    je         0058766D
 00587660    mov        dword ptr [edi+7AC],eax; TRvNDRWriter.?f7AC:Pointer
 00587666    mov        byte ptr [edi+7B1],0; TRvNDRWriter.?f7B1:byte
 0058766D    mov        eax,dword ptr [edi+7AC]; TRvNDRWriter.?f7AC:Pointer
 00587673    test       eax,eax
>00587675    jne        00587683
 00587677    mov        byte ptr [edi+7B0],0; TRvNDRWriter.?f7B0:byte
>0058767E    jmp        005879F1
 00587683    mov        esi,eax
 00587685    mov        eax,dword ptr [edi+8E8]; TRvNDRWriter.?f8E8:dword
 0058768B    dec        eax
 0058768C    mov        dword ptr [ebp-20],eax
 0058768F    fild       dword ptr [ebp-20]
 00587692    fmul       qword ptr [edi+8B0]; TRvNDRWriter.?f8B0:?Double
 00587698    fstp       qword ptr [ebp-10]
 0058769B    wait
 0058769C    mov        byte ptr [edi+7B0],1; TRvNDRWriter.?f7B0:byte
 005876A3    fld        qword ptr [esi+10]
 005876A6    fcomp      dword ptr ds:[5879FC]; 0:Single
 005876AC    fnstsw     al
 005876AE    sahf
>005876AF    jbe        005879F1
 005876B5    xor        ebx,ebx
 005876B7    cmp        dword ptr [ebp+8],0FFFF8000
>005876BE    je         005876C5
 005876C0    mov        bl,byte ptr [ebp+8]
>005876C3    jmp        005876DF
 005876C5    mov        al,byte ptr [esi+24]
 005876C8    test       al,al
>005876CA    jbe        005876D0
 005876CC    mov        ebx,eax
>005876CE    jmp        005876DF
 005876D0    cmp        dword ptr [edi+960],0; TRvNDRWriter.?f960:byte
>005876D7    jle        005876DF
 005876D9    mov        bl,byte ptr [edi+960]; TRvNDRWriter.?f960:byte
 005876DF    test       bl,bl
>005876E1    jbe        0058786C
 005876E7    mov        dl,1
 005876E9    mov        eax,[00429D9C]; TBrush
 005876EE    call       TBrush.Create; TBrush.Create
 005876F3    mov        dword ptr [ebp-18],eax
 005876F6    mov        eax,edi
 005876F8    mov        edx,dword ptr [eax]
 005876FA    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 005876FD    mov        edx,dword ptr [eax+14]
 00587700    mov        eax,dword ptr [ebp-18]
 00587703    mov        ecx,dword ptr [eax]
 00587705    call       dword ptr [ecx+8]; TBrush.Assign
 00587708    mov        dl,1
 0058770A    mov        eax,[00429C9C]; TPen
 0058770F    call       TPen.Create; TPen.Create
 00587714    mov        dword ptr [ebp-14],eax
 00587717    mov        eax,edi
 00587719    mov        edx,dword ptr [eax]
 0058771B    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058771E    mov        edx,dword ptr [eax+10]
 00587721    mov        eax,dword ptr [ebp-14]
 00587724    mov        ecx,dword ptr [eax]
 00587726    call       dword ptr [ecx+8]; TPen.Assign
 00587729    mov        dl,1
 0058772B    mov        eax,[00429D9C]; TBrush
 00587730    call       TBrush.Create; TBrush.Create
 00587735    mov        dword ptr [ebp-1C],eax
 00587738    mov        eax,dword ptr [edi+964]; TRvNDRWriter.?f964:dword
 0058773E    mov        edx,ebx
 00587740    call       005797EC
 00587745    mov        edx,eax
 00587747    mov        eax,dword ptr [ebp-1C]
 0058774A    call       TBrush.SetColor
 0058774F    xor        edx,edx
 00587751    mov        eax,dword ptr [ebp-1C]
 00587754    call       TBrush.SetStyle
 00587759    push       1
 0058775B    push       0C
 0058775D    mov        edx,dword ptr [edi+968]; TRvNDRWriter.?f968:dword
 00587763    mov        cl,5
 00587765    mov        eax,edi
 00587767    call       00587380
 0058776C    mov        ebx,eax
 0058776E    mov        eax,edi
 00587770    mov        edx,dword ptr [eax]
 00587772    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587775    mov        eax,dword ptr [eax+14]
 00587778    mov        edx,dword ptr [ebp-1C]
 0058777B    mov        ecx,dword ptr [eax]
 0058777D    call       dword ptr [ecx+8]
 00587780    mov        eax,dword ptr [ebp-1C]
 00587783    call       TObject.Free
 00587788    mov        eax,edi
 0058778A    mov        edx,dword ptr [eax]
 0058778C    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058778F    mov        eax,dword ptr [eax+10]
 00587792    mov        edx,ebx
 00587794    mov        ecx,dword ptr [eax]
 00587796    call       dword ptr [ecx+8]
 00587799    mov        eax,ebx
 0058779B    call       TObject.Free
 005877A0    mov        eax,edi
 005877A2    mov        edx,dword ptr [eax]
 005877A4    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 005877A7    call       TCanvas.GetHandle
 005877AC    push       eax
 005877AD    call       gdi32.GetBkMode
 005877B2    mov        ebx,eax
 005877B4    push       1
 005877B6    mov        eax,edi
 005877B8    mov        edx,dword ptr [eax]
 005877BA    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 005877BD    call       TCanvas.GetHandle
 005877C2    push       eax
 005877C3    call       gdi32.SetBkMode
 005877C8    fld        qword ptr [esi]
 005877CA    fadd       qword ptr [ebp-10]
 005877CD    add        esp,0FFFFFFF8
 005877D0    fstp       qword ptr [esp]
 005877D3    wait
 005877D4    mov        eax,edi
 005877D6    call       00586100
 005877DB    add        esp,0FFFFFFF8
 005877DE    fstp       qword ptr [esp]
 005877E1    wait
 005877E2    mov        eax,edi
 005877E4    call       005889B4
 005877E9    add        esp,0FFFFFFF8
 005877EC    fstp       qword ptr [esp]
 005877EF    wait
 005877F0    fld        qword ptr [esi]
 005877F2    fadd       qword ptr [ebp-10]
 005877F5    fadd       qword ptr [esi+10]
 005877F8    add        esp,0FFFFFFF8
 005877FB    fstp       qword ptr [esp]
 005877FE    wait
 005877FF    mov        eax,edi
 00587801    call       00586100
 00587806    add        esp,0FFFFFFF8
 00587809    fstp       qword ptr [esp]
 0058780C    wait
 0058780D    mov        eax,edi
 0058780F    call       00588A24
 00587814    add        esp,0FFFFFFF8
 00587817    fstp       qword ptr [esp]
 0058781A    wait
 0058781B    mov        eax,edi
 0058781D    mov        edx,dword ptr [eax]
 0058781F    call       dword ptr [edx+90]; TRvNDRWriter.sub_0058B250
 00587825    push       ebx
 00587826    mov        eax,edi
 00587828    mov        edx,dword ptr [eax]
 0058782A    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058782D    call       TCanvas.GetHandle
 00587832    push       eax
 00587833    call       gdi32.SetBkMode
 00587838    mov        eax,edi
 0058783A    mov        edx,dword ptr [eax]
 0058783C    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058783F    mov        eax,dword ptr [eax+14]
 00587842    mov        edx,dword ptr [ebp-18]
 00587845    mov        ecx,dword ptr [eax]
 00587847    call       dword ptr [ecx+8]
 0058784A    mov        eax,dword ptr [ebp-18]
 0058784D    call       TObject.Free
 00587852    mov        eax,edi
 00587854    mov        edx,dword ptr [eax]
 00587856    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587859    mov        eax,dword ptr [eax+10]
 0058785C    mov        edx,dword ptr [ebp-14]
 0058785F    mov        ecx,dword ptr [eax]
 00587861    call       dword ptr [ecx+8]
 00587864    mov        eax,dword ptr [ebp-14]
 00587867    call       TObject.Free
 0058786C    mov        dl,1
 0058786E    mov        eax,[00429C9C]; TPen
 00587873    call       TPen.Create; TPen.Create
 00587878    mov        dword ptr [ebp-14],eax
 0058787B    xor        eax,eax
 0058787D    push       ebp
 0058787E    push       5879EA
 00587883    push       dword ptr fs:[eax]
 00587886    mov        dword ptr fs:[eax],esp
 00587889    mov        eax,edi
 0058788B    mov        edx,dword ptr [eax]
 0058788D    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00587890    mov        edx,dword ptr [eax+10]
 00587893    mov        eax,dword ptr [ebp-14]
 00587896    mov        ecx,dword ptr [eax]
 00587898    call       dword ptr [ecx+8]; TPen.Assign
 0058789B    fld        qword ptr [esi]
 0058789D    fadd       qword ptr [ebp-10]
 005878A0    add        esp,0FFFFFFF8
 005878A3    fstp       qword ptr [esp]
 005878A6    wait
 005878A7    mov        eax,edi
 005878A9    call       00588A24
 005878AE    add        esp,0FFFFFFF8
 005878B1    fstp       qword ptr [esp]
 005878B4    wait
 005878B5    mov        eax,edi
 005878B7    call       00586154
 005878BC    add        esp,0FFFFFFF8
 005878BF    fstp       qword ptr [esp]
 005878C2    wait
 005878C3    push       0
 005878C5    push       0
 005878C7    fld        qword ptr [edi+850]; TRvNDRWriter.?f850:?Double
 005878CD    fchs
 005878CF    add        esp,0FFFFFFF8
 005878D2    fstp       qword ptr [esp]
 005878D5    wait
 005878D6    mov        eax,dword ptr [ebp-14]
 005878D9    push       eax
 005878DA    mov        dl,byte ptr [esi+20]
 005878DD    mov        ecx,dword ptr [ebp-4]
 005878E0    mov        eax,edi
 005878E2    call       00587500
 005878E7    fld        qword ptr [esi]
 005878E9    fadd       qword ptr [ebp-10]
 005878EC    fadd       qword ptr [esi+10]
 005878EF    add        esp,0FFFFFFF8
 005878F2    fstp       qword ptr [esp]
 005878F5    wait
 005878F6    mov        eax,edi
 005878F8    call       005889B4
 005878FD    add        esp,0FFFFFFF8
 00587900    fstp       qword ptr [esp]
 00587903    wait
 00587904    mov        eax,edi
 00587906    call       00586154
 0058790B    add        esp,0FFFFFFF8
 0058790E    fstp       qword ptr [esp]
 00587911    wait
 00587912    push       0
 00587914    push       0
 00587916    push       dword ptr [edi+854]; TRvNDRWriter.?f854:dword
 0058791C    push       dword ptr [edi+850]; TRvNDRWriter.?f850:?Double
 00587922    mov        eax,dword ptr [ebp-14]
 00587925    push       eax
 00587926    mov        dl,byte ptr [esi+21]
 00587929    mov        ecx,dword ptr [ebp-8]
 0058792C    mov        eax,edi
 0058792E    call       00587500
 00587933    fld        qword ptr [esi]
 00587935    fadd       qword ptr [ebp-10]
 00587938    add        esp,0FFFFFFF8
 0058793B    fstp       qword ptr [esp]
 0058793E    wait
 0058793F    mov        eax,edi
 00587941    call       005889B4
 00587946    add        esp,0FFFFFFF8
 00587949    fstp       qword ptr [esp]
 0058794C    wait
 0058794D    mov        eax,edi
 0058794F    call       00586154
 00587954    add        esp,0FFFFFFF8
 00587957    fstp       qword ptr [esp]
 0058795A    wait
 0058795B    push       dword ptr [esi+14]
 0058795E    push       dword ptr [esi+10]
 00587961    push       0
 00587963    push       0
 00587965    mov        eax,dword ptr [ebp-14]
 00587968    push       eax
 00587969    mov        dl,byte ptr [esi+22]
 0058796C    mov        ecx,dword ptr [ebp+10]
 0058796F    mov        eax,edi
 00587971    call       00587500
 00587976    fld        qword ptr [esi]
 00587978    fadd       qword ptr [ebp-10]
 0058797B    fadd       qword ptr [esi+10]
 0058797E    add        esp,0FFFFFFF8
 00587981    fstp       qword ptr [esp]
 00587984    wait
 00587985    mov        eax,edi
 00587987    call       00588A24
 0058798C    add        esp,0FFFFFFF8
 0058798F    fstp       qword ptr [esp]
 00587992    wait
 00587993    mov        eax,edi
 00587995    call       00586154
 0058799A    add        esp,0FFFFFFF8
 0058799D    fstp       qword ptr [esp]
 005879A0    wait
 005879A1    fld        qword ptr [esi+10]
 005879A4    fchs
 005879A6    add        esp,0FFFFFFF8
 005879A9    fstp       qword ptr [esp]
 005879AC    wait
 005879AD    push       0
 005879AF    push       0
 005879B1    mov        eax,dword ptr [ebp-14]
 005879B4    push       eax
 005879B5    mov        dl,byte ptr [esi+23]
 005879B8    mov        ecx,dword ptr [ebp+0C]
 005879BB    mov        eax,edi
 005879BD    call       00587500
 005879C2    mov        eax,edi
 005879C4    mov        edx,dword ptr [eax]
 005879C6    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 005879C9    mov        eax,dword ptr [eax+10]
 005879CC    mov        edx,dword ptr [ebp-14]
 005879CF    mov        ecx,dword ptr [eax]
 005879D1    call       dword ptr [ecx+8]
 005879D4    xor        eax,eax
 005879D6    pop        edx
 005879D7    pop        ecx
 005879D8    pop        ecx
 005879D9    mov        dword ptr fs:[eax],edx
 005879DC    push       5879F1
 005879E1    mov        eax,dword ptr [ebp-14]
 005879E4    call       TObject.Free
 005879E9    ret
<005879EA    jmp        @HandleFinally
<005879EF    jmp        005879E1
 005879F1    pop        edi
 005879F2    pop        esi
 005879F3    pop        ebx
 005879F4    mov        esp,ebp
 005879F6    pop        ebp
 005879F7    ret        0C
*}
//end;

//00587A00
//function sub_00587A00(?:TRvNDRWriter; ?:?):?;
//begin
{*
 00587A00    test       edx,edx
>00587A02    jne        00587A0B
 00587A04    mov        eax,dword ptr [eax+7AC]; TRvNDRWriter.?f7AC:Pointer
 00587A0A    ret
 00587A0B    mov        eax,dword ptr [eax+34]; TRvNDRWriter.?f34:Pointer
 00587A0E    mov        ecx,1
>00587A13    jmp        00587A19
 00587A15    inc        ecx
 00587A16    mov        eax,dword ptr [eax+28]
 00587A19    cmp        edx,ecx
>00587A1B    jle        00587A21
 00587A1D    test       eax,eax
<00587A1F    jne        00587A15
 00587A21    ret
*}
//end;

//00587A24
//procedure sub_00587A24(?:TRvNDRWriter);
//begin
{*
 00587A24    push       esi
 00587A25    add        esp,0FFFFFFF8
 00587A28    mov        esi,eax
 00587A2A    mov        eax,esi
 00587A2C    call       00587A00
 00587A31    test       eax,eax
>00587A33    je         00587A55
 00587A35    fld        qword ptr [eax+18]
 00587A38    fmul       dword ptr ds:[587A68]; 2:Single
 00587A3E    fsubr      qword ptr [eax+10]
 00587A41    add        esp,0FFFFFFF8
 00587A44    fstp       qword ptr [esp]
 00587A47    wait
 00587A48    mov        eax,esi
 00587A4A    call       00586100
 00587A4F    fstp       qword ptr [esp]
 00587A52    wait
>00587A53    jmp        00587A5E
 00587A55    xor        eax,eax
 00587A57    mov        dword ptr [esp],eax
 00587A5A    mov        dword ptr [esp+4],eax
 00587A5E    fld        qword ptr [esp]
 00587A61    pop        ecx
 00587A62    pop        edx
 00587A63    pop        esi
 00587A64    ret
*}
//end;

//00587A6C
//procedure sub_00587A6C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00587A6C    push       ebp
 00587A6D    mov        ebp,esp
 00587A6F    push       ebx
 00587A70    push       esi
 00587A71    mov        esi,edx
 00587A73    mov        ebx,eax
 00587A75    push       dword ptr [ebp+24]
 00587A78    push       dword ptr [ebp+20]
 00587A7B    mov        eax,ebx
 00587A7D    call       00585FC8
 00587A82    mov        dword ptr [esi],eax
 00587A84    push       dword ptr [ebp+1C]
 00587A87    push       dword ptr [ebp+18]
 00587A8A    mov        eax,ebx
 00587A8C    call       00585FF0
 00587A91    mov        dword ptr [esi+4],eax
 00587A94    push       dword ptr [ebp+14]
 00587A97    push       dword ptr [ebp+10]
 00587A9A    mov        eax,ebx
 00587A9C    call       00585FC8
 00587AA1    mov        dword ptr [esi+8],eax
 00587AA4    push       dword ptr [ebp+0C]
 00587AA7    push       dword ptr [ebp+8]
 00587AAA    mov        eax,ebx
 00587AAC    call       00585FF0
 00587AB1    mov        dword ptr [esi+0C],eax
 00587AB4    pop        esi
 00587AB5    pop        ebx
 00587AB6    pop        ebp
 00587AB7    ret        20
*}
//end;

//00587ABC
//procedure sub_00587ABC(?:?);
//begin
{*
 00587ABC    push       ebp
 00587ABD    mov        ebp,esp
 00587ABF    add        esp,0FFFFFFEC
 00587AC2    push       ebx
 00587AC3    push       esi
 00587AC4    mov        dword ptr [ebp-4],edx
 00587AC7    mov        ebx,eax
 00587AC9    mov        eax,dword ptr [ebp-4]
 00587ACC    call       @LStrAddRef
 00587AD1    xor        eax,eax
 00587AD3    push       ebp
 00587AD4    push       587B73
 00587AD9    push       dword ptr fs:[eax]
 00587ADC    mov        dword ptr fs:[eax],esp
 00587ADF    mov        eax,ebx
 00587AE1    call       00584BE8
 00587AE6    mov        edx,dword ptr [ebp-4]
 00587AE9    mov        eax,587B8C; ''
 00587AEE    call       @LStrPos
 00587AF3    test       eax,eax
>00587AF5    jne        00587B25
 00587AF7    cmp        dword ptr [ebp-4],0
>00587AFB    jne        00587B04
 00587AFD    mov        esi,1
>00587B02    jmp        00587B31
 00587B04    mov        eax,ebx
 00587B06    call       00587C08
 00587B0B    mov        eax,ebx
 00587B0D    call       00588A98
 00587B12    mov        edx,dword ptr [ebp-4]
 00587B15    mov        ecx,dword ptr [eax]
 00587B17    call       dword ptr [ecx+4C]
 00587B1A    mov        esi,eax
 00587B1C    mov        eax,ebx
 00587B1E    call       0058814C
>00587B23    jmp        00587B31
 00587B25    mov        edx,dword ptr [ebp-4]
 00587B28    mov        eax,ebx
 00587B2A    call       00582D94
 00587B2F    mov        esi,eax
 00587B31    mov        dword ptr [ebp-14],esi
 00587B34    fild       dword ptr [ebp-14]
 00587B37    fmul       qword ptr [ebx+978]; TRvNDRWriter.?f978:?Double
 00587B3D    fild       dword ptr [ebx+8DC]; TRvNDRWriter.?f8DC:Single
 00587B43    fmul       dword ptr ds:[587B90]; 100:Single
 00587B49    fdivp      st(1),st
 00587B4B    add        esp,0FFFFFFF8
 00587B4E    fstp       qword ptr [esp]
 00587B51    wait
 00587B52    mov        eax,ebx
 00587B54    call       00586100
 00587B59    fstp       qword ptr [ebp-10]
 00587B5C    wait
 00587B5D    xor        eax,eax
 00587B5F    pop        edx
 00587B60    pop        ecx
 00587B61    pop        ecx
 00587B62    mov        dword ptr fs:[eax],edx
 00587B65    push       587B7A
 00587B6A    lea        eax,[ebp-4]
 00587B6D    call       @LStrClr
 00587B72    ret
<00587B73    jmp        @HandleFinally
<00587B78    jmp        00587B6A
 00587B7A    fld        qword ptr [ebp-10]
 00587B7D    pop        esi
 00587B7E    pop        ebx
 00587B7F    mov        esp,ebp
 00587B81    pop        ebp
 00587B82    ret
*}
//end;

//00587B94
//procedure sub_00587B94(?:?; ?:?; ?:?);
//begin
{*
 00587B94    push       ebp
 00587B95    mov        ebp,esp
 00587B97    push       ebx
 00587B98    push       esi
 00587B99    push       edi
 00587B9A    mov        edi,ecx
 00587B9C    mov        esi,edx
 00587B9E    mov        ebx,eax
 00587BA0    mov        eax,ebx
 00587BA2    call       00584BE8
 00587BA7    mov        dword ptr [esi+4],ebx
 00587BAA    mov        cl,byte ptr [ebp+8]
 00587BAD    mov        edx,edi
 00587BAF    mov        eax,esi
 00587BB1    mov        ebx,dword ptr [eax]
 00587BB3    call       dword ptr [ebx+8]
 00587BB6    fstp       st(0)
 00587BB8    pop        edi
 00587BB9    pop        esi
 00587BBA    pop        ebx
 00587BBB    pop        ebp
 00587BBC    ret        4
*}
//end;

//00587BC0
//procedure sub_00587BC0(?:TBaseReport);
//begin
{*
 00587BC0    push       ebx
 00587BC1    mov        ebx,eax
 00587BC3    xor        eax,eax
 00587BC5    mov        dword ptr [ebx+764],eax; TBaseReport.?f764:HFONT
>00587BCB    jmp        00587BFB
 00587BCD    mov        edx,dword ptr [eax+84]
 00587BD3    test       edx,edx
>00587BD5    je         00587BDD
 00587BD7    push       edx
 00587BD8    call       gdi32.DeleteObject
 00587BDD    mov        edx,dword ptr [ebx+770]; TBaseReport.?f770:Pointer
 00587BE3    mov        eax,edx
 00587BE5    mov        edx,dword ptr [edx+90]
 00587BEB    mov        dword ptr [ebx+770],edx; TBaseReport.?f770:Pointer
 00587BF1    mov        edx,98
 00587BF6    call       @FreeMem
 00587BFB    mov        eax,dword ptr [ebx+770]; TBaseReport.?f770:Pointer
 00587C01    test       eax,eax
<00587C03    jne        00587BCD
 00587C05    pop        ebx
 00587C06    ret
*}
//end;

//00587C08
//procedure sub_00587C08(?:TBaseReport);
//begin
{*
 00587C08    push       ebp
 00587C09    mov        ebp,esp
 00587C0B    add        esp,0FFFFFF44
 00587C11    push       ebx
 00587C12    push       esi
 00587C13    push       edi
 00587C14    xor        edx,edx
 00587C16    mov        dword ptr [ebp-0BC],edx
 00587C1C    mov        ebx,eax
 00587C1E    xor        eax,eax
 00587C20    push       ebp
 00587C21    push       588123
 00587C26    push       dword ptr fs:[eax]
 00587C29    mov        dword ptr fs:[eax],esp
 00587C2C    cmp        byte ptr [ebx+784],0; TBaseReport.?f784:byte
>00587C33    je         00587C44
 00587C35    xor        eax,eax
 00587C37    mov        dword ptr [ebx+764],eax; TBaseReport.?f764:HFONT
 00587C3D    mov        byte ptr [ebx+784],0; TBaseReport.?f784:byte
 00587C44    mov        word ptr [ebp-6],0
 00587C4A    cmp        dword ptr [ebx+764],0; TBaseReport.?f764:HFONT
>00587C51    jne        00587DAC
 00587C57    xor        eax,eax
 00587C59    mov        dword ptr [ebp-4],eax
 00587C5C    mov        edi,dword ptr [ebx+770]; TBaseReport.?f770:Pointer
 00587C62    test       edi,edi
>00587C64    je         00587DAC
 00587C6A    inc        word ptr [ebp-6]
 00587C6E    mov        esi,edi
 00587C70    mov        eax,esi
 00587C72    lea        edx,[ebx+6E0]; TBaseReport.?f6E0:?
 00587C78    xor        ecx,ecx
 00587C7A    mov        cl,byte ptr [eax]
 00587C7C    inc        ecx
 00587C7D    call       @AStrCmp
>00587C82    jne        00587D9B
 00587C88    mov        al,byte ptr [esi+44]
 00587C8B    cmp        al,byte ptr [ebx+724]; TBaseReport.?f724:TFontPitch
>00587C91    jne        00587D9B
 00587C97    fld        qword ptr [esi+50]
 00587C9A    fcomp      qword ptr [ebx+730]; TBaseReport.?f730:?Double
 00587CA0    fnstsw     al
 00587CA2    sahf
>00587CA3    jne        00587D9B
 00587CA9    mov        al,byte ptr [esi+78]
 00587CAC    cmp        al,byte ptr [ebx+758]; TBaseReport.?f758:byte
>00587CB2    jne        00587D9B
 00587CB8    mov        al,byte ptr [esi+79]
 00587CBB    cmp        al,byte ptr [ebx+759]; TBaseReport.?f759:byte
>00587CC1    jne        00587D9B
 00587CC7    mov        al,byte ptr [esi+7A]
 00587CCA    cmp        al,byte ptr [ebx+75A]; TBaseReport.?f75A:byte
>00587CD0    jne        00587D9B
 00587CD6    mov        al,byte ptr [esi+7B]
 00587CD9    cmp        al,byte ptr [ebx+75B]; TBaseReport.?f75B:byte
>00587CDF    jne        00587D9B
 00587CE5    mov        ax,word ptr [esi+7E]
 00587CE9    cmp        ax,word ptr [ebx+75E]; TBaseReport.?f75E:?Float
>00587CF0    jne        00587D9B
 00587CF6    mov        al,byte ptr [esi+7D]
 00587CF9    cmp        al,byte ptr [ebx+75D]; TBaseReport.?f75D:byte
>00587CFF    jne        00587D9B
 00587D05    mov        al,byte ptr [esi+7C]
 00587D08    cmp        al,byte ptr [ebx+75C]; TBaseReport.?f75C:byte
>00587D0E    jne        00587D9B
 00587D14    mov        eax,dword ptr [esi+88]
 00587D1A    cmp        eax,dword ptr [ebx+768]; TBaseReport.?f768:TFontCharset
>00587D20    jne        00587D9B
 00587D22    mov        eax,dword ptr [esi+84]
 00587D28    mov        dword ptr [ebx+764],eax; TBaseReport.?f764:HFONT
 00587D2E    mov        eax,dword ptr [esi+60]
 00587D31    mov        dword ptr [ebx+740],eax; TBaseReport.?f740:?Double
 00587D37    mov        eax,dword ptr [esi+64]
 00587D3A    mov        dword ptr [ebx+744],eax; TBaseReport.?f744:dword
 00587D40    mov        eax,dword ptr [esi+68]
 00587D43    mov        dword ptr [ebx+748],eax; TBaseReport.?f748:?Double
 00587D49    mov        eax,dword ptr [esi+6C]
 00587D4C    mov        dword ptr [ebx+74C],eax; TBaseReport.?f74C:dword
 00587D52    mov        eax,dword ptr [esi+70]
 00587D55    mov        dword ptr [ebx+750],eax; TBaseReport.?f750:?Double
 00587D5B    mov        eax,dword ptr [esi+74]
 00587D5E    mov        dword ptr [ebx+754],eax; TBaseReport.?f754:dword
 00587D64    mov        ax,word ptr [esi+82]
 00587D6B    mov        word ptr [ebx+762],ax; TBaseReport.?f762:word
 00587D72    cmp        dword ptr [ebp-4],0
>00587D76    je         00587DAC
 00587D78    mov        eax,dword ptr [edi+90]
 00587D7E    mov        edx,dword ptr [ebp-4]
 00587D81    mov        dword ptr [edx+90],eax
 00587D87    mov        eax,dword ptr [ebx+770]; TBaseReport.?f770:Pointer
 00587D8D    mov        dword ptr [edi+90],eax
 00587D93    mov        dword ptr [ebx+770],edi; TBaseReport.?f770:Pointer
>00587D99    jmp        00587DAC
 00587D9B    mov        dword ptr [ebp-4],edi
 00587D9E    mov        edi,dword ptr [edi+90]
 00587DA4    test       edi,edi
<00587DA6    jne        00587C6A
 00587DAC    cmp        dword ptr [ebx+764],0; TBaseReport.?f764:HFONT
>00587DB3    jne        00588074
 00587DB9    cmp        byte ptr [ebx+75D],0; TBaseReport.?f75D:byte
>00587DC0    jne        00587DCB
 00587DC2    cmp        byte ptr [ebx+75C],0; TBaseReport.?f75C:byte
>00587DC9    je         00587DF9
 00587DCB    fld        tbyte ptr ds:[588134]; 1,667:Extended
 00587DD1    fdivr      qword ptr [ebx+730]; TBaseReport.?f730:?Double
 00587DD7    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00587DDD    fmulp      st(1),st
 00587DDF    fld        qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587DE5    fdiv       dword ptr ds:[588140]; 100:Single
 00587DEB    fmulp      st(1),st
 00587DED    call       @ROUND
 00587DF2    neg        eax
 00587DF4    mov        dword ptr [ebp-42],eax
>00587DF7    jmp        00587E1D
 00587DF9    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00587DFF    fmul       qword ptr [ebx+730]; TBaseReport.?f730:?Double
 00587E05    fld        qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587E0B    fdiv       dword ptr ds:[588140]; 100:Single
 00587E11    fmulp      st(1),st
 00587E13    call       @ROUND
 00587E18    neg        eax
 00587E1A    mov        dword ptr [ebp-42],eax
 00587E1D    fild       dword ptr [ebx+8DC]; TBaseReport.?f8DC:Single
 00587E23    fmul       qword ptr [ebx+738]; TBaseReport.?f738:?Double
 00587E29    fld        qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587E2F    fdiv       dword ptr ds:[588140]; 100:Single
 00587E35    fmulp      st(1),st
 00587E37    call       @ROUND
 00587E3C    mov        dword ptr [ebp-3E],eax
 00587E3F    movsx      eax,word ptr [ebx+75E]; TBaseReport.?f75E:?Float
 00587E46    add        eax,eax
 00587E48    lea        eax,[eax+eax*4]
 00587E4B    mov        dword ptr [ebp-3A],eax
 00587E4E    xor        eax,eax
 00587E50    mov        dword ptr [ebp-36],eax
 00587E53    cmp        byte ptr [ebx+758],0; TBaseReport.?f758:byte
>00587E5A    je         00587E65
 00587E5C    mov        dword ptr [ebp-32],2BC
>00587E63    jmp        00587E6C
 00587E65    mov        dword ptr [ebp-32],190
 00587E6C    mov        al,byte ptr [ebx+75A]; TBaseReport.?f75A:byte
 00587E72    mov        byte ptr [ebp-2E],al
 00587E75    mov        al,byte ptr [ebx+759]; TBaseReport.?f759:byte
 00587E7B    mov        byte ptr [ebp-2D],al
 00587E7E    mov        al,byte ptr [ebx+75B]; TBaseReport.?f75B:byte
 00587E84    mov        byte ptr [ebp-2C],al
 00587E87    mov        al,byte ptr [ebx+768]; TBaseReport.?f768:TFontCharset
 00587E8D    call       00579C5C
 00587E92    mov        byte ptr [ebp-2B],al
 00587E95    lea        eax,[ebp-0BC]
 00587E9B    lea        edx,[ebx+6E0]; TBaseReport.?f6E0:?
 00587EA1    call       @LStrFromString
 00587EA6    mov        edx,dword ptr [ebp-0BC]
 00587EAC    lea        eax,[ebp-26]
 00587EAF    call       StrPCopy
 00587EB4    lea        esi,[ebp-42]
 00587EB7    lea        edi,[ebp-0B8]
 00587EBD    mov        ecx,0F
 00587EC2    rep movs   dword ptr [edi],dword ptr [esi]
 00587EC4    mov        byte ptr [ebp-9D],0
 00587ECB    cmp        byte ptr [ebp-0A1],1
>00587ED2    jne        00587F0A
 00587ED4    mov        byte ptr ds:[61EFD8],1; gvar_0061EFD8
 00587EDB    push       0
 00587EDD    push       0
 00587EDF    push       583324; sub_00583324
 00587EE4    lea        eax,[ebp-0B8]
 00587EEA    push       eax
 00587EEB    mov        eax,ebx
 00587EED    mov        edx,dword ptr [eax]
 00587EEF    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00587EF2    call       TCanvas.GetHandle
 00587EF7    push       eax
 00587EF8    call       gdi32.EnumFontFamiliesExA
 00587EFD    mov        al,[0061EFD8]; gvar_0061EFD8
 00587F02    call       00579C5C
 00587F07    mov        byte ptr [ebp-2B],al
 00587F0A    mov        byte ptr [ebp-28],0
 00587F0E    mov        byte ptr [ebp-2A],0
 00587F12    mov        byte ptr [ebp-29],0
 00587F16    mov        al,byte ptr [ebx+724]; TBaseReport.?f724:TFontPitch
 00587F1C    dec        al
>00587F1E    je         00587F26
 00587F20    dec        al
>00587F22    je         00587F2C
>00587F24    jmp        00587F32
 00587F26    mov        byte ptr [ebp-27],2
>00587F2A    jmp        00587F36
 00587F2C    mov        byte ptr [ebp-27],1
>00587F30    jmp        00587F36
 00587F32    mov        byte ptr [ebp-27],0
 00587F36    lea        eax,[ebp-42]
 00587F39    push       eax
 00587F3A    call       gdi32.CreateFontIndirectA
 00587F3F    mov        dword ptr [ebx+764],eax; TBaseReport.?f764:HFONT
 00587F45    mov        eax,dword ptr [ebx+764]; TBaseReport.?f764:HFONT
 00587F4B    push       eax
 00587F4C    mov        eax,ebx
 00587F4E    mov        edx,dword ptr [eax]
 00587F50    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00587F53    call       TCanvas.GetHandle
 00587F58    push       eax
 00587F59    call       gdi32.SelectObject
 00587F5E    mov        dword ptr [ebx+788],eax; TBaseReport.?f788:HGDIOBJ
 00587F64    lea        eax,[ebp-7C]
 00587F67    push       eax
 00587F68    mov        eax,ebx
 00587F6A    mov        edx,dword ptr [eax]
 00587F6C    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00587F6F    call       TCanvas.GetHandle
 00587F74    push       eax
 00587F75    call       gdi32.GetTextMetricsA
 00587F7A    test       eax,eax
>00587F7C    jne        00587F83
 00587F7E    call       RaiseLastOSError
 00587F83    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00587F89    fmul       qword ptr [ebx+980]; TBaseReport.?f980:?Double
 00587F8F    fmul       qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587F95    fild       dword ptr [ebp-78]
 00587F98    fmul       dword ptr ds:[588144]; 10000:Single
 00587F9E    fdivrp     st(1),st
 00587FA0    fstp       qword ptr [ebx+740]; TBaseReport.?f740:?Double
 00587FA6    wait
 00587FA7    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00587FAD    fmul       qword ptr [ebx+980]; TBaseReport.?f980:?Double
 00587FB3    fmul       qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587FB9    fild       dword ptr [ebp-74]
 00587FBC    fmul       dword ptr ds:[588144]; 10000:Single
 00587FC2    fdivrp     st(1),st
 00587FC4    fstp       qword ptr [ebx+748]; TBaseReport.?f748:?Double
 00587FCA    wait
 00587FCB    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00587FD1    fmul       qword ptr [ebx+980]; TBaseReport.?f980:?Double
 00587FD7    fmul       qword ptr [ebx+988]; TBaseReport.?f988:?Double
 00587FDD    fild       dword ptr [ebp-70]
 00587FE0    fmul       dword ptr ds:[588144]; 10000:Single
 00587FE6    fdivrp     st(1),st
 00587FE8    fstp       qword ptr [ebx+750]; TBaseReport.?f750:?Double
 00587FEE    wait
 00587FEF    cmp        byte ptr [ebx+75D],0; TBaseReport.?f75D:byte
>00587FF6    jne        00588001
 00587FF8    cmp        byte ptr [ebx+75C],0; TBaseReport.?f75C:byte
>00587FFF    je         0058803A
 00588001    fld        qword ptr [ebx+740]; TBaseReport.?f740:?Double
 00588007    fdiv       dword ptr ds:[588148]; 2:Single
 0058800D    fstp       qword ptr [ebx+740]; TBaseReport.?f740:?Double
 00588013    wait
 00588014    fld        qword ptr [ebx+748]; TBaseReport.?f748:?Double
 0058801A    fdiv       dword ptr ds:[588148]; 2:Single
 00588020    fstp       qword ptr [ebx+748]; TBaseReport.?f748:?Double
 00588026    wait
 00588027    fld        qword ptr [ebx+750]; TBaseReport.?f750:?Double
 0058802D    fdiv       dword ptr ds:[588148]; 2:Single
 00588033    fstp       qword ptr [ebx+750]; TBaseReport.?f750:?Double
 00588039    wait
 0058803A    mov        ax,word ptr [ebp-6]
 0058803E    mov        word ptr [ebx+762],ax; TBaseReport.?f762:word
 00588045    mov        eax,98
 0058804A    call       @GetMem
 0058804F    mov        edi,eax
 00588051    push       edi
 00588052    lea        esi,[ebx+6E0]; TBaseReport.?f6E0:?
 00588058    mov        ecx,24
 0058805D    rep movs   dword ptr [edi],dword ptr [esi]
 0058805F    pop        edi
 00588060    mov        eax,dword ptr [ebx+770]; TBaseReport.?f770:Pointer
 00588066    mov        dword ptr [edi+90],eax
 0058806C    mov        dword ptr [ebx+770],edi; TBaseReport.?f770:Pointer
>00588072    jmp        00588093
 00588074    mov        eax,dword ptr [ebx+764]; TBaseReport.?f764:HFONT
 0058807A    push       eax
 0058807B    mov        eax,ebx
 0058807D    mov        edx,dword ptr [eax]
 0058807F    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00588082    call       TCanvas.GetHandle
 00588087    push       eax
 00588088    call       gdi32.SelectObject
 0058808D    mov        dword ptr [ebx+788],eax; TBaseReport.?f788:HGDIOBJ
 00588093    mov        eax,[0061C584]; ^Win32Platform:System.Integer
 00588098    cmp        dword ptr [eax],2
>0058809B    jne        005880EC
 0058809D    cmp        byte ptr [ebx+7E1],0; TBaseReport.?f7E1:byte
>005880A4    jne        005880EC
 005880A6    push       18
 005880A8    mov        eax,ebx
 005880AA    mov        edx,dword ptr [eax]
 005880AC    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005880AF    call       TCanvas.GetHandle
 005880B4    push       eax
 005880B5    call       gdi32.GetDeviceCaps
 005880BA    cmp        eax,2
>005880BD    jne        005880EC
 005880BF    mov        eax,ebx
 005880C1    mov        edx,dword ptr [eax]
 005880C3    call       dword ptr [edx+60]; TBaseReport.sub_00583EC8
 005880C6    test       al,al
>005880C8    jne        005880EC
 005880CA    cmp        dword ptr [ebx+720],0FFFFFF; TBaseReport.?f720:dword
>005880D4    je         005880EC
 005880D6    push       0
 005880D8    mov        eax,ebx
 005880DA    mov        edx,dword ptr [eax]
 005880DC    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005880DF    call       TCanvas.GetHandle
 005880E4    push       eax
 005880E5    call       gdi32.SetTextColor
>005880EA    jmp        0058810A
 005880EC    mov        eax,dword ptr [ebx+720]; TBaseReport.?f720:dword
 005880F2    call       ColorToRGB
 005880F7    push       eax
 005880F8    mov        eax,ebx
 005880FA    mov        edx,dword ptr [eax]
 005880FC    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005880FF    call       TCanvas.GetHandle
 00588104    push       eax
 00588105    call       gdi32.SetTextColor
 0058810A    xor        eax,eax
 0058810C    pop        edx
 0058810D    pop        ecx
 0058810E    pop        ecx
 0058810F    mov        dword ptr fs:[eax],edx
 00588112    push       58812A
 00588117    lea        eax,[ebp-0BC]
 0058811D    call       @LStrClr
 00588122    ret
<00588123    jmp        @HandleFinally
<00588128    jmp        00588117
 0058812A    pop        edi
 0058812B    pop        esi
 0058812C    pop        ebx
 0058812D    mov        esp,ebp
 0058812F    pop        ebp
 00588130    ret
*}
//end;

//0058814C
//procedure sub_0058814C(?:TBaseReport);
//begin
{*
 0058814C    push       ebx
 0058814D    mov        ebx,eax
 0058814F    mov        eax,dword ptr [ebx+788]; TBaseReport.?f788:HGDIOBJ
 00588155    push       eax
 00588156    mov        eax,ebx
 00588158    mov        edx,dword ptr [eax]
 0058815A    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 0058815D    call       TCanvas.GetHandle
 00588162    push       eax
 00588163    call       gdi32.SelectObject
 00588168    mov        eax,ebx
 0058816A    mov        edx,dword ptr [eax]
 0058816C    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 0058816F    mov        eax,dword ptr [eax+0C]
 00588172    mov        eax,dword ptr [eax+18]
 00588175    call       ColorToRGB
 0058817A    push       eax
 0058817B    mov        eax,ebx
 0058817D    mov        edx,dword ptr [eax]
 0058817F    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00588182    call       TCanvas.GetHandle
 00588187    push       eax
 00588188    call       gdi32.SetTextColor
 0058818D    pop        ebx
 0058818E    ret
*}
//end;

//00588190
//procedure sub_00588190(?:TBaseReport);
//begin
{*
 00588190    push       ebx
 00588191    mov        ebx,eax
 00588193    cmp        byte ptr [ebx+784],0; TBaseReport.?f784:byte
>0058819A    je         005881AA
 0058819C    mov        eax,ebx
 0058819E    call       00587C08
 005881A3    mov        eax,ebx
 005881A5    call       0058814C
 005881AA    pop        ebx
 005881AB    ret
*}
//end;

//005881AC
procedure sub_005881AC;
begin
{*
 005881AC    push       ebp
 005881AD    mov        ebp,esp
 005881AF    add        esp,0FFFFFEF0
 005881B5    push       ebx
 005881B6    push       esi
 005881B7    xor        ecx,ecx
 005881B9    mov        dword ptr [ebp-10C],ecx
 005881BF    mov        dword ptr [ebp-4],ecx
 005881C2    mov        dword ptr [ebp-8],ecx
 005881C5    mov        ebx,eax
 005881C7    xor        eax,eax
 005881C9    push       ebp
 005881CA    push       588434
 005881CF    push       dword ptr fs:[eax]
 005881D2    mov        dword ptr fs:[eax],esp
 005881D5    cmp        word ptr [ebx+77A],0; TBaseReport.?f77A:word
>005881DD    je         005881EB
 005881DF    mov        eax,dword ptr [ebx+77C]; TBaseReport.?f77C:dword
 005881E5    call       dword ptr [ebx+778]
 005881EB    cmp        byte ptr [ebx+785],0; TBaseReport.?f785:byte
>005881F2    jne        0058840B
 005881F8    mov        eax,ebx
 005881FA    mov        edx,dword ptr [eax]
 005881FC    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005881FF    mov        esi,dword ptr [eax+0C]
 00588202    lea        edx,[ebp-4]
 00588205    mov        eax,esi
 00588207    call       TFont.GetName
 0058820C    mov        eax,dword ptr [ebp-4]
 0058820F    push       eax
 00588210    lea        eax,[ebp-8]
 00588213    lea        edx,[ebx+6E0]; TBaseReport.?f6E0:?
 00588219    call       @LStrFromString
 0058821E    mov        edx,dword ptr [ebp-8]
 00588221    pop        eax
 00588222    call       @LStrCmp
>00588227    je         00588266
 00588229    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 00588230    lea        edx,[ebp-10C]
 00588236    mov        eax,esi
 00588238    call       TFont.GetName
 0058823D    mov        edx,dword ptr [ebp-10C]
 00588243    lea        eax,[ebp-108]
 00588249    mov        ecx,0FF
 0058824E    call       @LStrToString
 00588253    lea        edx,[ebp-108]
 00588259    lea        eax,[ebx+6E0]; TBaseReport.?f6E0:?
 0058825F    mov        cl,3C
 00588261    call       @PStrNCpy
 00588266    mov        eax,dword ptr [esi+18]
 00588269    cmp        eax,dword ptr [ebx+720]; TBaseReport.?f720:dword
>0058826F    je         00588281
 00588271    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 00588278    mov        eax,dword ptr [esi+18]
 0058827B    mov        dword ptr [ebx+720],eax; TBaseReport.?f720:dword
 00588281    mov        eax,esi
 00588283    call       TFont.GetCharset
 00588288    and        eax,0FF
 0058828D    cmp        eax,dword ptr [ebx+768]; TBaseReport.?f768:TFontCharset
>00588293    je         005882AE
 00588295    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 0058829C    mov        eax,esi
 0058829E    call       TFont.GetCharset
 005882A3    and        eax,0FF
 005882A8    mov        dword ptr [ebx+768],eax; TBaseReport.?f768:TFontCharset
 005882AE    mov        eax,esi
 005882B0    call       TFont.GetPitch
 005882B5    cmp        al,byte ptr [ebx+724]; TBaseReport.?f724:TFontPitch
>005882BB    je         005882D1
 005882BD    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 005882C4    mov        eax,esi
 005882C6    call       TFont.GetPitch
 005882CB    mov        byte ptr [ebx+724],al; TBaseReport.?f724:TFontPitch
 005882D1    mov        eax,esi
 005882D3    call       TFont.GetHeight
 005882D8    cdq
 005882D9    xor        eax,edx
 005882DB    sub        eax,edx
 005882DD    cdq
 005882DE    push       edx
 005882DF    push       eax
 005882E0    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 005882E6    fmul       qword ptr [ebx+730]; TBaseReport.?f730:?Double
 005882EC    fmul       qword ptr [ebx+988]; TBaseReport.?f988:?Double
 005882F2    fdiv       dword ptr ds:[588444]; 100:Single
 005882F8    call       @ROUND
 005882FD    cmp        edx,dword ptr [esp+4]
>00588301    jne        00588306
 00588303    cmp        eax,dword ptr [esp]
 00588306    pop        edx
 00588307    pop        eax
>00588308    je         00588357
 0058830A    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 00588311    mov        eax,esi
 00588313    call       TFont.GetHeight
 00588318    cdq
 00588319    xor        eax,edx
 0058831B    sub        eax,edx
 0058831D    mov        dword ptr [ebp-110],eax
 00588323    fild       dword ptr [ebp-110]
 00588329    fmul       dword ptr ds:[588444]; 100:Single
 0058832F    fild       dword ptr [ebx+8E0]; TBaseReport.?f8E0:Single
 00588335    fmul       qword ptr [ebx+988]; TBaseReport.?f988:?Double
 0058833B    fdivp      st(1),st
 0058833D    fstp       qword ptr [ebx+730]; TBaseReport.?f730:?Double
 00588343    wait
 00588344    fld        qword ptr [ebx+730]; TBaseReport.?f730:?Double
 0058834A    fmul       dword ptr ds:[588448]; 72:Single
 00588350    fstp       qword ptr [ebx+728]; TBaseReport.?f728:?Double
 00588356    wait
 00588357    mov        eax,esi
 00588359    call       TFont.GetStyle
 0058835E    test       al,1
 00588360    setne      al
 00588363    cmp        al,byte ptr [ebx+758]; TBaseReport.?f758:byte
>00588369    je         00588384
 0058836B    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 00588372    mov        eax,esi
 00588374    call       TFont.GetStyle
 00588379    test       al,1
 0058837B    setne      al
 0058837E    mov        byte ptr [ebx+758],al; TBaseReport.?f758:byte
 00588384    mov        eax,esi
 00588386    call       TFont.GetStyle
 0058838B    test       al,2
 0058838D    setne      al
 00588390    cmp        al,byte ptr [ebx+75A]; TBaseReport.?f75A:byte
>00588396    je         005883B1
 00588398    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 0058839F    mov        eax,esi
 005883A1    call       TFont.GetStyle
 005883A6    test       al,2
 005883A8    setne      al
 005883AB    mov        byte ptr [ebx+75A],al; TBaseReport.?f75A:byte
 005883B1    mov        eax,esi
 005883B3    call       TFont.GetStyle
 005883B8    test       al,4
 005883BA    setne      al
 005883BD    cmp        al,byte ptr [ebx+759]; TBaseReport.?f759:byte
>005883C3    je         005883DE
 005883C5    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 005883CC    mov        eax,esi
 005883CE    call       TFont.GetStyle
 005883D3    test       al,4
 005883D5    setne      al
 005883D8    mov        byte ptr [ebx+759],al; TBaseReport.?f759:byte
 005883DE    mov        eax,esi
 005883E0    call       TFont.GetStyle
 005883E5    test       al,8
 005883E7    setne      al
 005883EA    cmp        al,byte ptr [ebx+75B]; TBaseReport.?f75B:byte
>005883F0    je         0058840B
 005883F2    mov        byte ptr [ebx+784],1; TBaseReport.?f784:byte
 005883F9    mov        eax,esi
 005883FB    call       TFont.GetStyle
 00588400    test       al,8
 00588402    setne      al
 00588405    mov        byte ptr [ebx+75B],al; TBaseReport.?f75B:byte
 0058840B    xor        eax,eax
 0058840D    pop        edx
 0058840E    pop        ecx
 0058840F    pop        ecx
 00588410    mov        dword ptr fs:[eax],edx
 00588413    push       58843B
 00588418    lea        eax,[ebp-10C]
 0058841E    call       @LStrClr
 00588423    lea        eax,[ebp-8]
 00588426    call       @LStrClr
 0058842B    lea        eax,[ebp-4]
 0058842E    call       @LStrClr
 00588433    ret
<00588434    jmp        @HandleFinally
<00588439    jmp        00588418
 0058843B    pop        esi
 0058843C    pop        ebx
 0058843D    mov        esp,ebp
 0058843F    pop        ebp
 00588440    ret
*}
end;

//0058844C
//procedure sub_0058844C(?:TBaseReport; ?:?);
//begin
{*
 0058844C    push       ebx
 0058844D    push       esi
 0058844E    push       edi
 0058844F    mov        ebx,edx
 00588451    mov        edi,eax
 00588453    mov        eax,edi
 00588455    mov        edx,dword ptr [eax]
 00588457    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 0058845A    mov        esi,dword ptr [eax+0C]
 0058845D    test       bl,bl
>0058845F    je         00588479
 00588461    mov        eax,esi
 00588463    call       TFont.GetStyle
 00588468    mov        edx,eax
 0058846A    or         dl,byte ptr ds:[5884A0]; 0x1
 00588470    mov        eax,esi
 00588472    call       TFont.SetStyle
>00588477    jmp        00588491
 00588479    mov        eax,esi
 0058847B    call       TFont.GetStyle
 00588480    mov        dl,byte ptr ds:[5884A0]; 0x1
 00588486    not        edx
 00588488    and        dl,al
 0058848A    mov        eax,esi
 0058848C    call       TFont.SetStyle
 00588491    mov        edx,edi
 00588493    mov        eax,edi
 00588495    mov        ecx,dword ptr [eax]
 00588497    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 0058849A    pop        edi
 0058849B    pop        esi
 0058849C    pop        ebx
 0058849D    ret
*}
//end;

//005884A4
//procedure sub_005884A4(?:TBaseReport; ?:?);
//begin
{*
 005884A4    push       ebx
 005884A5    push       esi
 005884A6    push       edi
 005884A7    mov        ebx,edx
 005884A9    mov        edi,eax
 005884AB    mov        eax,edi
 005884AD    mov        edx,dword ptr [eax]
 005884AF    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005884B2    mov        esi,dword ptr [eax+0C]
 005884B5    test       bl,bl
>005884B7    je         005884D1
 005884B9    mov        eax,esi
 005884BB    call       TFont.GetStyle
 005884C0    mov        edx,eax
 005884C2    or         dl,byte ptr ds:[5884F8]; 0x4
 005884C8    mov        eax,esi
 005884CA    call       TFont.SetStyle
>005884CF    jmp        005884E9
 005884D1    mov        eax,esi
 005884D3    call       TFont.GetStyle
 005884D8    mov        dl,byte ptr ds:[5884F8]; 0x4
 005884DE    not        edx
 005884E0    and        dl,al
 005884E2    mov        eax,esi
 005884E4    call       TFont.SetStyle
 005884E9    mov        edx,edi
 005884EB    mov        eax,edi
 005884ED    mov        ecx,dword ptr [eax]
 005884EF    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005884F2    pop        edi
 005884F3    pop        esi
 005884F4    pop        ebx
 005884F5    ret
*}
//end;

//005884FC
//procedure sub_005884FC(?:TBaseReport; ?:?);
//begin
{*
 005884FC    push       ebx
 005884FD    push       esi
 005884FE    push       edi
 005884FF    mov        ebx,edx
 00588501    mov        edi,eax
 00588503    mov        eax,edi
 00588505    mov        edx,dword ptr [eax]
 00588507    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 0058850A    mov        esi,dword ptr [eax+0C]
 0058850D    test       bl,bl
>0058850F    je         00588529
 00588511    mov        eax,esi
 00588513    call       TFont.GetStyle
 00588518    mov        edx,eax
 0058851A    or         dl,byte ptr ds:[588550]; 0x2
 00588520    mov        eax,esi
 00588522    call       TFont.SetStyle
>00588527    jmp        00588541
 00588529    mov        eax,esi
 0058852B    call       TFont.GetStyle
 00588530    mov        dl,byte ptr ds:[588550]; 0x2
 00588536    not        edx
 00588538    and        dl,al
 0058853A    mov        eax,esi
 0058853C    call       TFont.SetStyle
 00588541    mov        edx,edi
 00588543    mov        eax,edi
 00588545    mov        ecx,dword ptr [eax]
 00588547    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 0058854A    pop        edi
 0058854B    pop        esi
 0058854C    pop        ebx
 0058854D    ret
*}
//end;

//00588554
//procedure sub_00588554(?:TBaseReport; ?:?);
//begin
{*
 00588554    push       ebx
 00588555    push       esi
 00588556    push       edi
 00588557    mov        ebx,edx
 00588559    mov        edi,eax
 0058855B    mov        eax,edi
 0058855D    mov        edx,dword ptr [eax]
 0058855F    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00588562    mov        esi,dword ptr [eax+0C]
 00588565    test       bl,bl
>00588567    je         00588581
 00588569    mov        eax,esi
 0058856B    call       TFont.GetStyle
 00588570    mov        edx,eax
 00588572    or         dl,byte ptr ds:[5885A8]; 0x8
 00588578    mov        eax,esi
 0058857A    call       TFont.SetStyle
>0058857F    jmp        00588599
 00588581    mov        eax,esi
 00588583    call       TFont.GetStyle
 00588588    mov        dl,byte ptr ds:[5885A8]; 0x8
 0058858E    not        edx
 00588590    and        dl,al
 00588592    mov        eax,esi
 00588594    call       TFont.SetStyle
 00588599    mov        edx,edi
 0058859B    mov        eax,edi
 0058859D    mov        ecx,dword ptr [eax]
 0058859F    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005885A2    pop        edi
 005885A3    pop        esi
 005885A4    pop        ebx
 005885A5    ret
*}
//end;

//005885AC
//procedure sub_005885AC(?:TBaseReport; ?:?);
//begin
{*
 005885AC    test       dl,dl
>005885AE    je         005885B7
 005885B0    mov        byte ptr [eax+75C],0; TBaseReport.?f75C:byte
 005885B7    mov        byte ptr [eax+75D],dl; TBaseReport.?f75D:byte
 005885BD    mov        byte ptr [eax+784],1; TBaseReport.?f784:byte
 005885C4    mov        edx,eax
 005885C6    mov        ecx,dword ptr [eax]
 005885C8    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005885CB    ret
*}
//end;

//005885CC
//procedure sub_005885CC(?:TBaseReport; ?:?);
//begin
{*
 005885CC    test       dl,dl
>005885CE    je         005885D7
 005885D0    mov        byte ptr [eax+75D],0; TBaseReport.?f75D:byte
 005885D7    mov        byte ptr [eax+75C],dl; TBaseReport.?f75C:byte
 005885DD    mov        byte ptr [eax+784],1; TBaseReport.?f784:byte
 005885E4    mov        edx,eax
 005885E6    mov        ecx,dword ptr [eax]
 005885E8    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005885EB    ret
*}
//end;

//005885EC
//procedure sub_005885EC(?:dword; ?:Integer);
//begin
{*
 005885EC    push       ebx
 005885ED    mov        ebx,edx
 005885EF    mov        ecx,eax
 005885F1    mov        eax,ebx
 005885F3    mov        ebx,168
 005885F8    cdq
 005885F9    idiv       eax,ebx
 005885FB    mov        word ptr [ecx+75E],dx
 00588602    mov        byte ptr [ecx+784],1
 00588609    mov        edx,ecx
 0058860B    mov        eax,ecx
 0058860D    mov        ecx,dword ptr [eax]
 0058860F    call       dword ptr [ecx+54]
 00588612    pop        ebx
 00588613    ret
*}
//end;

//00588614
//function sub_00588614(?:dword):?;
//begin
{*
 00588614    movsx      eax,word ptr [eax+75E]
 0058861B    ret
*}
//end;

//0058861C
//procedure sub_0058861C(?:TBaseReport; ?:TColor);
//begin
{*
 0058861C    push       ebx
 0058861D    push       esi
 0058861E    mov        esi,edx
 00588620    mov        ebx,eax
 00588622    mov        eax,ebx
 00588624    mov        edx,dword ptr [eax]
 00588626    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00588629    mov        eax,dword ptr [eax+0C]
 0058862C    mov        edx,esi
 0058862E    call       TFont.SetColor
 00588633    mov        edx,ebx
 00588635    mov        eax,ebx
 00588637    mov        ecx,dword ptr [eax]
 00588639    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 0058863C    pop        esi
 0058863D    pop        ebx
 0058863E    ret
*}
//end;

//00588640
//procedure sub_00588640(?:TBaseReport; ?:AnsiString);
//begin
{*
 00588640    push       ebp
 00588641    mov        ebp,esp
 00588643    push       ecx
 00588644    push       ebx
 00588645    mov        dword ptr [ebp-4],edx
 00588648    mov        ebx,eax
 0058864A    mov        eax,dword ptr [ebp-4]
 0058864D    call       @LStrAddRef
 00588652    xor        eax,eax
 00588654    push       ebp
 00588655    push       588691
 0058865A    push       dword ptr fs:[eax]
 0058865D    mov        dword ptr fs:[eax],esp
 00588660    mov        eax,ebx
 00588662    mov        edx,dword ptr [eax]
 00588664    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 00588667    mov        eax,dword ptr [eax+0C]
 0058866A    mov        edx,dword ptr [ebp-4]
 0058866D    call       TFont.SetName
 00588672    mov        edx,ebx
 00588674    mov        eax,ebx
 00588676    mov        ecx,dword ptr [eax]
 00588678    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 0058867B    xor        eax,eax
 0058867D    pop        edx
 0058867E    pop        ecx
 0058867F    pop        ecx
 00588680    mov        dword ptr fs:[eax],edx
 00588683    push       588698
 00588688    lea        eax,[ebp-4]
 0058868B    call       @LStrClr
 00588690    ret
<00588691    jmp        @HandleFinally
<00588696    jmp        00588688
 00588698    pop        ebx
 00588699    pop        ecx
 0058869A    pop        ebp
 0058869B    ret
*}
//end;

//0058869C
//function sub_0058869C(?:dword):?;
//begin
{*
 0058869C    add        esp,0FFFFFFF8
 0058869F    mov        edx,dword ptr [eax+728]
 005886A5    mov        dword ptr [esp],edx
 005886A8    mov        edx,dword ptr [eax+72C]
 005886AE    mov        dword ptr [esp+4],edx
 005886B2    fld        qword ptr [esp]
 005886B5    pop        ecx
 005886B6    pop        edx
 005886B7    ret
*}
//end;

//005886B8
//procedure sub_005886B8(?:TRvNDRWriter; ?:?);
//begin
{*
 005886B8    push       ebp
 005886B9    mov        ebp,esp
 005886BB    push       ebx
 005886BC    mov        ebx,eax
 005886BE    mov        eax,ebx
 005886C0    mov        edx,dword ptr [eax]
 005886C2    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 005886C5    mov        eax,dword ptr [eax+0C]
 005886C8    push       eax
 005886C9    fild       dword ptr [ebx+8E0]; TRvNDRWriter.?f8E0:Single
 005886CF    fmul       qword ptr [ebp+8]
 005886D2    fdiv       dword ptr ds:[588708]; 72:Single
 005886D8    fmul       qword ptr [ebx+980]; TRvNDRWriter.?f980:?Double
 005886DE    fmul       qword ptr [ebx+988]; TRvNDRWriter.?f988:?Double
 005886E4    fdiv       dword ptr ds:[58870C]; 10000:Single
 005886EA    call       @ROUND
 005886EF    mov        edx,eax
 005886F1    pop        eax
 005886F2    call       TFont.SetHeight
 005886F7    mov        edx,ebx
 005886F9    mov        eax,ebx
 005886FB    mov        ecx,dword ptr [eax]
 005886FD    call       dword ptr [ecx+54]; TRvNDRWriter.sub_00589250
 00588700    pop        ebx
 00588701    pop        ebp
 00588702    ret        8
*}
//end;

//00588710
//function sub_00588710(?:dword):?;
//begin
{*
 00588710    add        esp,0FFFFFFF8
 00588713    push       dword ptr [eax+734]
 00588719    push       dword ptr [eax+730]
 0058871F    call       0058611C
 00588724    fstp       qword ptr [esp]
 00588727    wait
 00588728    fld        qword ptr [esp]
 0058872B    pop        ecx
 0058872C    pop        edx
 0058872D    ret
*}
//end;

//00588730
//procedure sub_00588730(?:dword; ?:?; ?:?);
//begin
{*
 00588730    push       ebp
 00588731    mov        ebp,esp
 00588733    push       ebx
 00588734    push       esi
 00588735    mov        ebx,eax
 00588737    push       dword ptr [ebp+0C]
 0058873A    push       dword ptr [ebp+8]
 0058873D    mov        eax,ebx
 0058873F    call       00586154
 00588744    fild       dword ptr [ebx+8E0]
 0058874A    fmulp      st(1),st
 0058874C    fmul       qword ptr [ebx+980]
 00588752    fmul       qword ptr [ebx+988]
 00588758    fdiv       dword ptr ds:[588790]; 10000:Single
 0058875E    call       @ROUND
 00588763    mov        esi,eax
 00588765    test       esi,esi
>00588767    jg         0058876E
 00588769    mov        esi,1
 0058876E    mov        eax,ebx
 00588770    mov        edx,dword ptr [eax]
 00588772    call       dword ptr [edx+74]
 00588775    mov        eax,dword ptr [eax+0C]
 00588778    mov        edx,esi
 0058877A    call       TFont.SetHeight
 0058877F    mov        edx,ebx
 00588781    mov        eax,ebx
 00588783    mov        ecx,dword ptr [eax]
 00588785    call       dword ptr [ecx+54]
 00588788    pop        esi
 00588789    pop        ebx
 0058878A    pop        ebp
 0058878B    ret        8
*}
//end;

//00588794
//procedure sub_00588794(?:TBaseReport; ?:TFontPitch);
//begin
{*
 00588794    push       ebx
 00588795    push       esi
 00588796    mov        ebx,edx
 00588798    mov        esi,eax
 0058879A    mov        eax,esi
 0058879C    mov        edx,dword ptr [eax]
 0058879E    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005887A1    mov        eax,dword ptr [eax+0C]
 005887A4    mov        edx,ebx
 005887A6    call       TFont.SetPitch
 005887AB    mov        edx,esi
 005887AD    mov        eax,esi
 005887AF    mov        ecx,dword ptr [eax]
 005887B1    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005887B4    pop        esi
 005887B5    pop        ebx
 005887B6    ret
*}
//end;

//005887B8
//procedure sub_005887B8(?:TBaseReport; ?:TFontCharset);
//begin
{*
 005887B8    push       ebx
 005887B9    push       esi
 005887BA    mov        ebx,edx
 005887BC    mov        esi,eax
 005887BE    mov        eax,esi
 005887C0    mov        edx,dword ptr [eax]
 005887C2    call       dword ptr [edx+74]; TBaseReport.sub_00583EF8
 005887C5    mov        eax,dword ptr [eax+0C]
 005887C8    mov        edx,ebx
 005887CA    call       TFont.SetCharset
 005887CF    xor        eax,eax
 005887D1    mov        al,bl
 005887D3    mov        dword ptr [esi+768],eax; TBaseReport.?f768:TFontCharset
 005887D9    mov        byte ptr [esi+784],1; TBaseReport.?f784:byte
 005887E0    mov        edx,esi
 005887E2    mov        eax,esi
 005887E4    mov        ecx,dword ptr [eax]
 005887E6    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005887E9    pop        esi
 005887EA    pop        ebx
 005887EB    ret
*}
//end;

//005887EC
//procedure sub_005887EC(?:TBaseReport; ?:?);
//begin
{*
 005887EC    mov        byte ptr [eax+760],dl; TBaseReport.?f760:byte
 005887F2    mov        edx,eax
 005887F4    mov        ecx,dword ptr [eax]
 005887F6    call       dword ptr [ecx+54]; TBaseReport.sub_005881AC
 005887F9    ret
*}
//end;

//005887FC
procedure sub_005887FC;
begin
{*
 005887FC    push       ebx
 005887FD    mov        ebx,eax
 005887FF    mov        eax,ebx
 00588801    mov        edx,dword ptr [eax]
 00588803    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00588806    mov        eax,dword ptr [eax+0C]
 00588809    mov        edx,dword ptr [eax+8]
 0058880C    mov        dword ptr [ebx+778],edx; TRvNDRWriter.?f778:dword
 00588812    mov        edx,dword ptr [eax+0C]
 00588815    mov        dword ptr [ebx+77C],edx; TRvNDRWriter.?f77C:dword
 0058881B    mov        eax,ebx
 0058881D    mov        edx,dword ptr [eax]
 0058881F    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00588822    mov        eax,dword ptr [eax+0C]
 00588825    mov        dword ptr [eax+0C],ebx
 00588828    mov        edx,dword ptr [ebx]
 0058882A    mov        edx,dword ptr [edx+54]; TRvNDRWriter.?f54:dword
 0058882D    mov        dword ptr [eax+8],edx
 00588830    mov        byte ptr [ebx+785],0; TRvNDRWriter.?f785:byte
 00588837    mov        eax,ebx
 00588839    mov        edx,dword ptr [eax]
 0058883B    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 0058883E    mov        eax,dword ptr [eax+0C]
 00588841    mov        edx,dword ptr [ebx+8E0]; TRvNDRWriter.?f8E0:Single
 00588847    mov        dword ptr [eax+1C],edx
 0058884A    pop        ebx
 0058884B    ret
*}
end;

//0058884C
procedure sub_0058884C;
begin
{*
 0058884C    push       ebx
 0058884D    mov        ebx,eax
 0058884F    mov        eax,ebx
 00588851    mov        edx,dword ptr [eax]
 00588853    call       dword ptr [edx+74]; TRvNDRWriter.sub_0058AA1C
 00588856    mov        eax,dword ptr [eax+0C]
 00588859    mov        edx,dword ptr [ebx+778]; TRvNDRWriter.?f778:dword
 0058885F    mov        dword ptr [eax+8],edx
 00588862    mov        edx,dword ptr [ebx+77C]; TRvNDRWriter.?f77C:dword
 00588868    mov        dword ptr [eax+0C],edx
 0058886B    pop        ebx
 0058886C    ret
*}
end;

//00588870
//procedure sub_00588870(?:?; ?:?; ?:?);
//begin
{*
 00588870    push       ebp
 00588871    mov        ebp,esp
 00588873    push       ecx
 00588874    push       ebx
 00588875    mov        dword ptr [ebp-4],edx
 00588878    mov        ebx,eax
 0058887A    mov        eax,dword ptr [ebp-4]
 0058887D    call       @LStrAddRef
 00588882    xor        eax,eax
 00588884    push       ebp
 00588885    push       588948
 0058888A    push       dword ptr fs:[eax]
 0058888D    mov        dword ptr fs:[eax],esp
 00588890    fld        qword ptr [ebp+8]
 00588893    fcomp      dword ptr ds:[588958]; 0:Single
 00588899    fnstsw     al
 0058889B    sahf
>0058889C    jbe        00588932
 005888A2    mov        byte ptr [ebx+785],1; TRvNDRWriter.?f785:byte
 005888A9    mov        edx,dword ptr [ebp-4]
 005888AC    mov        eax,ebx
 005888AE    call       00588640
 005888B3    xor        edx,edx
 005888B5    mov        eax,ebx
 005888B7    call       0058861C
 005888BC    xor        edx,edx
 005888BE    mov        eax,ebx
 005888C0    call       00588794
 005888C5    mov        dl,1
 005888C7    mov        eax,ebx
 005888C9    call       005887B8
 005888CE    push       dword ptr [ebp+0C]
 005888D1    push       dword ptr [ebp+8]
 005888D4    mov        eax,ebx
 005888D6    call       005886B8
 005888DB    xor        edx,edx
 005888DD    mov        eax,ebx
 005888DF    call       0058844C
 005888E4    xor        edx,edx
 005888E6    mov        eax,ebx
 005888E8    call       005884A4
 005888ED    xor        edx,edx
 005888EF    mov        eax,ebx
 005888F1    call       005884FC
 005888F6    xor        edx,edx
 005888F8    mov        eax,ebx
 005888FA    call       00588554
 005888FF    mov        byte ptr [ebx+785],0; TRvNDRWriter.?f785:byte
 00588906    lea        eax,[ebx+6E0]; TRvNDRWriter.?f6E0:?
 0058890C    mov        byte ptr [eax+7D],0
 00588910    mov        byte ptr [eax+7C],0
 00588914    mov        word ptr [eax+7E],0
 0058891A    xor        edx,edx
 0058891C    mov        dword ptr [eax+58],edx
 0058891F    mov        dword ptr [eax+5C],edx
 00588922    mov        byte ptr [eax+80],0
 00588929    mov        edx,ebx
 0058892B    mov        eax,ebx
 0058892D    mov        ecx,dword ptr [eax]
 0058892F    call       dword ptr [ecx+54]; TRvNDRWriter.sub_00589250
 00588932    xor        eax,eax
 00588934    pop        edx
 00588935    pop        ecx
 00588936    pop        ecx
 00588937    mov        dword ptr fs:[eax],edx
 0058893A    push       58894F
 0058893F    lea        eax,[ebp-4]
 00588942    call       @LStrClr
 00588947    ret
<00588948    jmp        @HandleFinally
<0058894D    jmp        0058893F
 0058894F    pop        ebx
 00588950    pop        ecx
 00588951    pop        ebp
 00588952    ret        8
*}
//end;

//0058895C
//function sub_0058895C(?:TRvNDRWriter):?;
//begin
{*
 0058895C    add        esp,0FFFFFFF8
 0058895F    fld        qword ptr [eax+8A8]; TRvNDRWriter.?f8A8:?Double
 00588965    fadd       qword ptr [eax+848]; TRvNDRWriter.?f848:?Double
 0058896B    add        esp,0FFFFFFF8
 0058896E    fstp       qword ptr [esp]
 00588971    wait
 00588972    call       0058611C
 00588977    fstp       qword ptr [esp]
 0058897A    wait
 0058897B    fld        qword ptr [esp]
 0058897E    pop        ecx
 0058897F    pop        edx
 00588980    ret
*}
//end;

//00588984
//procedure sub_00588984(?:?; ?:?; ?:?);
//begin
{*
 00588984    push       ebp
 00588985    mov        ebp,esp
 00588987    push       ebx
 00588988    mov        ebx,eax
 0058898A    mov        eax,ebx
 0058898C    mov        edx,dword ptr [eax]
 0058898E    call       dword ptr [edx+12C]
 00588994    push       dword ptr [ebp+0C]
 00588997    push       dword ptr [ebp+8]
 0058899A    mov        eax,ebx
 0058899C    call       00586154
 005889A1    fsub       qword ptr [ebx+848]
 005889A7    fstp       qword ptr [ebx+8A8]
 005889AD    wait
 005889AE    pop        ebx
 005889AF    pop        ebp
 005889B0    ret        8
*}
//end;

//005889B4
//procedure sub_005889B4(?:TRvNDRWriter);
//begin
{*
 005889B4    push       ebx
 005889B5    add        esp,0FFFFFFF0
 005889B8    mov        ebx,eax
 005889BA    push       dword ptr [ebx+854]; TRvNDRWriter.?f854:dword
 005889C0    push       dword ptr [ebx+850]; TRvNDRWriter.?f850:?Double
 005889C6    mov        eax,ebx
 005889C8    call       0058611C
 005889CD    fstp       qword ptr [esp+8]
 005889D1    wait
 005889D2    mov        eax,ebx
 005889D4    call       0058895C
 005889D9    fsub       qword ptr [esp+8]
 005889DD    fstp       qword ptr [esp]
 005889E0    wait
 005889E1    fld        qword ptr [esp]
 005889E4    add        esp,10
 005889E7    pop        ebx
 005889E8    ret
*}
//end;

//005889EC
//procedure sub_005889EC(?:dword; ?:?; ?:?);
//begin
{*
 005889EC    push       ebp
 005889ED    mov        ebp,esp
 005889EF    push       ebx
 005889F0    mov        ebx,eax
 005889F2    mov        eax,ebx
 005889F4    mov        edx,dword ptr [eax]
 005889F6    call       dword ptr [edx+12C]
 005889FC    push       dword ptr [ebp+0C]
 005889FF    push       dword ptr [ebp+8]
 00588A02    mov        eax,ebx
 00588A04    call       00586154
 00588A09    fadd       qword ptr [ebx+850]
 00588A0F    fsub       qword ptr [ebx+848]
 00588A15    fstp       qword ptr [ebx+8A8]
 00588A1B    wait
 00588A1C    pop        ebx
 00588A1D    pop        ebp
 00588A1E    ret        8
*}
//end;

//00588A24
//function sub_00588A24:?;
//begin
{*
 00588A24    add        esp,0FFFFFFF8
 00588A27    call       0058895C
 00588A2C    fstp       qword ptr [esp]
 00588A2F    wait
 00588A30    fld        qword ptr [esp]
 00588A33    pop        ecx
 00588A34    pop        edx
 00588A35    ret
*}
//end;

//00588A38
//procedure sub_00588A38(?:?; ?:?);
//begin
{*
 00588A38    push       ebp
 00588A39    mov        ebp,esp
 00588A3B    push       dword ptr [ebp+0C]
 00588A3E    push       dword ptr [ebp+8]
 00588A41    call       00588984
 00588A46    pop        ebp
 00588A47    ret        8
*}
//end;

//00588A4C
//function sub_00588A4C(?:dword):?;
//begin
{*
 00588A4C    add        esp,0FFFFFFF8
 00588A4F    push       dword ptr [eax+854]
 00588A55    push       dword ptr [eax+850]
 00588A5B    call       0058611C
 00588A60    fstp       qword ptr [esp]
 00588A63    wait
 00588A64    fld        qword ptr [esp]
 00588A67    pop        ecx
 00588A68    pop        edx
 00588A69    ret
*}
//end;

//00588A6C
//procedure sub_00588A6C(?:dword);
//begin
{*
 00588A6C    add        esp,0FFFFFFF8
 00588A6F    push       dword ptr [eax+84C]
 00588A75    push       dword ptr [eax+848]
 00588A7B    call       0058611C
 00588A80    fstp       qword ptr [esp]
 00588A83    wait
 00588A84    fld        qword ptr [esp]
 00588A87    pop        ecx
 00588A88    pop        edx
 00588A89    ret
*}
//end;

//00588A8C
procedure sub_00588A8C();
begin
{*
 00588A8C    ret
*}
end;

//00588A90
procedure sub_00588A90();
begin
{*
 00588A90    ret
*}
end;

//00588A94
procedure sub_00588A94();
begin
{*
 00588A94    ret
*}
end;

//00588A98
//function sub_00588A98(?:TBaseReport):?;
//begin
{*
 00588A98    mov        edx,dword ptr [eax+9BC]; TBaseReport.?f9BC:TRPRenderDevice
 00588A9E    test       edx,edx
>00588AA0    je         00588AA5
 00588AA2    mov        eax,edx
 00588AA4    ret
 00588AA5    call       005807BC
 00588AAA    ret
*}
//end;

//00588AAC
//procedure sub_00588AAC(?:TBaseReport);
//begin
{*
 00588AAC    cmp        byte ptr [eax+8C0],0; TBaseReport.?f8C0:byte
>00588AB3    jne        00588AC1
 00588AB5    mov        eax,[0061BD04]; ^Application:TApplication
 00588ABA    mov        eax,dword ptr [eax]
 00588ABC    call       TApplication.ProcessMessages
 00588AC1    ret
*}
//end;

end.