{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZSequence;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs, ZConnection;

type
  TZSequence = class(TComponent)
  public
    f30:IZSequence;//f30
    Connection:TZConnection;//f34
    f38:String;//f38
    BlockSize:Integer;//f3C
    destructor Destroy; virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
  end;

implementation

{$R *.DFM}

//0056C04C
//procedure sub_0056C04C(?:Pointer);
//begin
{*
 0056C04C    push       ebp
 0056C04D    mov        ebp,esp
 0056C04F    push       ebx
 0056C050    mov        ebx,eax
 0056C052    cmp        dword ptr [ebx+30],0
>0056C056    je         0056C060
 0056C058    lea        eax,[ebx+30]
 0056C05B    call       @IntfClear
 0056C060    pop        ebx
 0056C061    pop        ebp
 0056C062    ret
*}
//end;

//0056C064
constructor TZSequence.Create(AOwner:TComponent);
begin
{*
 0056C064    push       ebp
 0056C065    mov        ebp,esp
 0056C067    push       ebx
 0056C068    push       esi
 0056C069    test       dl,dl
>0056C06B    je         0056C075
 0056C06D    add        esp,0FFFFFFF0
 0056C070    call       @ClassCreate
 0056C075    mov        ebx,edx
 0056C077    mov        esi,eax
 0056C079    xor        edx,edx
 0056C07B    mov        eax,esi
 0056C07D    call       TComponent.Create
 0056C082    mov        dword ptr [esi+3C],1; TZSequence.BlockSize:Integer
 0056C089    mov        eax,esi
 0056C08B    test       bl,bl
>0056C08D    je         0056C09E
 0056C08F    call       @AfterConstruction
 0056C094    pop        dword ptr fs:[0]
 0056C09B    add        esp,0C
 0056C09E    mov        eax,esi
 0056C0A0    pop        esi
 0056C0A1    pop        ebx
 0056C0A2    pop        ebp
 0056C0A3    ret
*}
end;

//0056C0A4
destructor TZSequence.Destroy;
begin
{*
 0056C0A4    push       ebp
 0056C0A5    mov        ebp,esp
 0056C0A7    push       ebx
 0056C0A8    push       esi
 0056C0A9    call       @BeforeDestruction
 0056C0AE    mov        ebx,edx
 0056C0B0    mov        esi,eax
 0056C0B2    mov        eax,dword ptr [esi+34]; TZSequence.Connection:TZConnection
 0056C0B5    test       eax,eax
>0056C0B7    je         0056C0C0
 0056C0B9    mov        edx,esi
 0056C0BB    call       00577B00
 0056C0C0    mov        edx,ebx
 0056C0C2    and        dl,0FC
 0056C0C5    mov        eax,esi
 0056C0C7    call       TComponent.Destroy
 0056C0CC    test       bl,bl
>0056C0CE    jle        0056C0D7
 0056C0D0    mov        eax,esi
 0056C0D2    call       @ClassDestroy
 0056C0D7    pop        esi
 0056C0D8    pop        ebx
 0056C0D9    pop        ebp
 0056C0DA    ret
*}
end;

//0056C154
//procedure sub_0056C154(?:dword);
//begin
{*
 0056C154    push       ebp
 0056C155    mov        ebp,esp
 0056C157    add        esp,0FFFFFFF4
 0056C15A    push       ebx
 0056C15B    xor        edx,edx
 0056C15D    mov        dword ptr [ebp-0C],edx
 0056C160    mov        ebx,eax
 0056C162    xor        eax,eax
 0056C164    push       ebp
 0056C165    push       56C1B4
 0056C16A    push       dword ptr fs:[eax]
 0056C16D    mov        dword ptr fs:[eax],esp
 0056C170    lea        edx,[ebp-0C]
 0056C173    mov        eax,ebx
 0056C175    call       0056C1C8
 0056C17A    cmp        dword ptr [ebx+30],0
>0056C17E    je         0056C190
 0056C180    mov        eax,dword ptr [ebx+30]
 0056C183    mov        edx,dword ptr [eax]
 0056C185    call       dword ptr [edx+20]
 0056C188    mov        dword ptr [ebp-8],eax
 0056C18B    mov        dword ptr [ebp-4],edx
>0056C18E    jmp        0056C19E
 0056C190    mov        dword ptr [ebp-8],0
 0056C197    mov        dword ptr [ebp-4],0
 0056C19E    xor        eax,eax
 0056C1A0    pop        edx
 0056C1A1    pop        ecx
 0056C1A2    pop        ecx
 0056C1A3    mov        dword ptr fs:[eax],edx
 0056C1A6    push       56C1BB
 0056C1AB    lea        eax,[ebp-0C]
 0056C1AE    call       @IntfClear
 0056C1B3    ret
<0056C1B4    jmp        @HandleFinally
<0056C1B9    jmp        0056C1AB
 0056C1BB    mov        eax,dword ptr [ebp-8]
 0056C1BE    mov        edx,dword ptr [ebp-4]
 0056C1C1    pop        ebx
 0056C1C2    mov        esp,ebp
 0056C1C4    pop        ebp
 0056C1C5    ret
*}
//end;

//0056C1C8
//procedure sub_0056C1C8(?:TZSequence; ?:?);
//begin
{*
 0056C1C8    push       ebp
 0056C1C9    mov        ebp,esp
 0056C1CB    add        esp,0FFFFFFF8
 0056C1CE    push       ebx
 0056C1CF    push       esi
 0056C1D0    xor        ecx,ecx
 0056C1D2    mov        dword ptr [ebp-8],ecx
 0056C1D5    mov        dword ptr [ebp-4],edx
 0056C1D8    mov        ebx,eax
 0056C1DA    xor        eax,eax
 0056C1DC    push       ebp
 0056C1DD    push       56C239
 0056C1E2    push       dword ptr fs:[eax]
 0056C1E5    mov        dword ptr fs:[eax],esp
 0056C1E8    cmp        dword ptr [ebx+30],0; TZSequence.?f30:IZSequence
>0056C1EC    jne        0056C218
 0056C1EE    mov        esi,dword ptr [ebx+34]; TZSequence.Connection:TZConnection
 0056C1F1    test       esi,esi
>0056C1F3    je         0056C218
 0056C1F5    cmp        dword ptr [esi+54],0; TZConnection.?f54:IZConnection
>0056C1F9    je         0056C218
 0056C1FB    lea        eax,[ebp-8]
 0056C1FE    push       eax
 0056C1FF    mov        eax,dword ptr [esi+54]; TZConnection.?f54:IZConnection
 0056C202    mov        ecx,dword ptr [ebx+3C]; TZSequence.BlockSize:Integer
 0056C205    mov        edx,dword ptr [ebx+38]; TZSequence.?f38:String
 0056C208    mov        esi,dword ptr [eax]
 0056C20A    call       dword ptr [esi+28]
 0056C20D    mov        edx,dword ptr [ebp-8]
 0056C210    lea        eax,[ebx+30]; TZSequence.?f30:IZSequence
 0056C213    call       @IntfCopy
 0056C218    mov        eax,dword ptr [ebp-4]
 0056C21B    mov        edx,dword ptr [ebx+30]; TZSequence.?f30:IZSequence
 0056C21E    call       @IntfCopy
 0056C223    xor        eax,eax
 0056C225    pop        edx
 0056C226    pop        ecx
 0056C227    pop        ecx
 0056C228    mov        dword ptr fs:[eax],edx
 0056C22B    push       56C240
 0056C230    lea        eax,[ebp-8]
 0056C233    call       @IntfClear
 0056C238    ret
<0056C239    jmp        @HandleFinally
<0056C23E    jmp        0056C230
 0056C240    pop        esi
 0056C241    pop        ebx
 0056C242    pop        ecx
 0056C243    pop        ecx
 0056C244    pop        ebp
 0056C245    ret
*}
//end;

//0056C248
procedure TZSequence.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0056C248    push       ebp
 0056C249    mov        ebp,esp
 0056C24B    push       ebx
 0056C24C    push       esi
 0056C24D    push       edi
 0056C24E    mov        ebx,ecx
 0056C250    mov        esi,edx
 0056C252    mov        edi,eax
 0056C254    mov        ecx,ebx
 0056C256    mov        edx,esi
 0056C258    mov        eax,edi
 0056C25A    call       TComponent.Notification
 0056C25F    cmp        bl,1
>0056C262    jne        0056C27C
 0056C264    cmp        esi,dword ptr [edi+34]; TZSequence.Connection:TZConnection
>0056C267    jne        0056C27C
 0056C269    xor        eax,eax
 0056C26B    mov        dword ptr [edi+34],eax; TZSequence.Connection:TZConnection
 0056C26E    cmp        dword ptr [edi+30],0; TZSequence.?f30:IZSequence
>0056C272    je         0056C27C
 0056C274    lea        eax,[edi+30]; TZSequence.?f30:IZSequence
 0056C277    call       @IntfClear
 0056C27C    pop        edi
 0056C27D    pop        esi
 0056C27E    pop        ebx
 0056C27F    pop        ebp
 0056C280    ret
*}
end;

//0056C284
//procedure TZSequence.SetBlockSize(Self:TZSequence; ?:?);
//begin
{*
 0056C284    push       ebp
 0056C285    mov        ebp,esp
 0056C287    push       0
 0056C289    push       ebx
 0056C28A    mov        ebx,eax
 0056C28C    xor        eax,eax
 0056C28E    push       ebp
 0056C28F    push       56C2CE
 0056C294    push       dword ptr fs:[eax]
 0056C297    mov        dword ptr fs:[eax],esp
 0056C29A    mov        dword ptr [ebx+3C],edx; TZSequence.BlockSize:Integer
 0056C29D    lea        edx,[ebp-4]
 0056C2A0    mov        eax,ebx
 0056C2A2    call       0056C1C8
 0056C2A7    cmp        dword ptr [ebx+30],0; TZSequence.?f30:IZSequence
>0056C2AB    je         0056C2B8
 0056C2AD    mov        edx,dword ptr [ebx+3C]; TZSequence.BlockSize:Integer
 0056C2B0    mov        eax,dword ptr [ebx+30]; TZSequence.?f30:IZSequence
 0056C2B3    mov        ecx,dword ptr [eax]
 0056C2B5    call       dword ptr [ecx+18]
 0056C2B8    xor        eax,eax
 0056C2BA    pop        edx
 0056C2BB    pop        ecx
 0056C2BC    pop        ecx
 0056C2BD    mov        dword ptr fs:[eax],edx
 0056C2C0    push       56C2D5
 0056C2C5    lea        eax,[ebp-4]
 0056C2C8    call       @IntfClear
 0056C2CD    ret
<0056C2CE    jmp        @HandleFinally
<0056C2D3    jmp        0056C2C5
 0056C2D5    pop        ebx
 0056C2D6    pop        ecx
 0056C2D7    pop        ebp
 0056C2D8    ret
*}
//end;

//0056C2DC
//procedure TZSequence.SetConnection(Self:TZSequence; ?:?);
//begin
{*
 0056C2DC    push       ebp
 0056C2DD    mov        ebp,esp
 0056C2DF    push       0
 0056C2E1    push       ebx
 0056C2E2    push       esi
 0056C2E3    mov        esi,edx
 0056C2E5    mov        ebx,eax
 0056C2E7    xor        eax,eax
 0056C2E9    push       ebp
 0056C2EA    push       56C338
 0056C2EF    push       dword ptr fs:[eax]
 0056C2F2    mov        dword ptr fs:[eax],esp
 0056C2F5    cmp        esi,dword ptr [ebx+34]; TZSequence.Connection:TZConnection
>0056C2F8    je         0056C322
 0056C2FA    cmp        dword ptr [ebx+30],0; TZSequence.?f30:IZSequence
>0056C2FE    je         0056C308
 0056C300    lea        eax,[ebx+30]; TZSequence.?f30:IZSequence
 0056C303    call       @IntfClear
 0056C308    mov        eax,esi
 0056C30A    mov        dword ptr [ebx+34],eax; TZSequence.Connection:TZConnection
 0056C30D    test       eax,eax
>0056C30F    je         0056C318
 0056C311    mov        edx,ebx
 0056C313    call       00577AF0
 0056C318    lea        edx,[ebp-4]
 0056C31B    mov        eax,ebx
 0056C31D    call       0056C1C8
 0056C322    xor        eax,eax
 0056C324    pop        edx
 0056C325    pop        ecx
 0056C326    pop        ecx
 0056C327    mov        dword ptr fs:[eax],edx
 0056C32A    push       56C33F
 0056C32F    lea        eax,[ebp-4]
 0056C332    call       @IntfClear
 0056C337    ret
<0056C338    jmp        @HandleFinally
<0056C33D    jmp        0056C32F
 0056C33F    pop        esi
 0056C340    pop        ebx
 0056C341    pop        ecx
 0056C342    pop        ebp
 0056C343    ret
*}
//end;

//0056C344
//procedure TZSequence.SetSequenceName(Self:TZSequence; ?:?);
//begin
{*
 0056C344    push       ebp
 0056C345    mov        ebp,esp
 0056C347    push       0
 0056C349    push       ebx
 0056C34A    push       esi
 0056C34B    mov        esi,edx
 0056C34D    mov        ebx,eax
 0056C34F    xor        eax,eax
 0056C351    push       ebp
 0056C352    push       56C398
 0056C357    push       dword ptr fs:[eax]
 0056C35A    mov        dword ptr fs:[eax],esp
 0056C35D    lea        eax,[ebx+38]; TZSequence.?f38:String
 0056C360    mov        edx,esi
 0056C362    call       @LStrAsg
 0056C367    lea        edx,[ebp-4]
 0056C36A    mov        eax,ebx
 0056C36C    call       0056C1C8
 0056C371    cmp        dword ptr [ebx+30],0; TZSequence.?f30:IZSequence
>0056C375    je         0056C382
 0056C377    mov        edx,dword ptr [ebx+38]; TZSequence.?f38:String
 0056C37A    mov        eax,dword ptr [ebx+30]; TZSequence.?f30:IZSequence
 0056C37D    mov        ecx,dword ptr [eax]
 0056C37F    call       dword ptr [ecx+14]
 0056C382    xor        eax,eax
 0056C384    pop        edx
 0056C385    pop        ecx
 0056C386    pop        ecx
 0056C387    mov        dword ptr fs:[eax],edx
 0056C38A    push       56C39F
 0056C38F    lea        eax,[ebp-4]
 0056C392    call       @IntfClear
 0056C397    ret
<0056C398    jmp        @HandleFinally
<0056C39D    jmp        0056C38F
 0056C39F    pop        esi
 0056C3A0    pop        ebx
 0056C3A1    pop        ecx
 0056C3A2    pop        ebp
 0056C3A3    ret
*}
//end;

end.