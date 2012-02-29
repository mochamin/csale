{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit152;

interface

uses
  Classes, Windows, Graphics, _Unit134, ZDbcASAUtils, ZDbcASA;

type
  TZASAResultSet = class(TZAbstractResultSet)
  public
    f3C:byte;//f3C
    f40:dword;//f40
    f44:String;//f44
    f48:word;//f48
    f4C:IZASASQLDA;//f4C
    f50:IZASASQLDA;//f50
    f54:IZASASQLDA;//f54
    f58:IZASAConnection;//f58
    f5C:byte;//f5C
    f5D:byte;//f5D
    f5E:byte;//f5E
    procedure sub_0055D094; virtual;
    procedure sub_0055D080; virtual;
    //procedure sub_0055CD4C(?:?); virtual;
    //procedure sub_0055CB94(?:?; ?:?); virtual;
    //function sub_0055C680(?:?):?; virtual;
    //function sub_0055C70C(?:?):?; virtual;
    //function sub_0055CB08(?:?):?; virtual;
    //function sub_0055C9E0(?:?):?; virtual;
    //procedure sub_0055CA6C(?:?); virtual;
    //procedure sub_0055C950(?:?); virtual;
    //procedure sub_0055C8BC(?:?); virtual;
    //procedure sub_0055C578(?:?); virtual;
    //procedure sub_0055C798(?:?; ?:?); virtual;
    //procedure sub_0055C828(?:?); virtual;
    //procedure sub_0055CC24(?:?); virtual;
    //procedure sub_0055CCB8(?:?); virtual;
    //procedure sub_0055C60C(?:?; ?:?); virtual;
    //procedure sub_0055D250(?:?); virtual;
    procedure sub_0055CDB8; virtual;
    //function sub_0055CDE0(?:?):?; virtual;
    //function sub_0055CF04(?:?):?; virtual;
    //procedure sub_0055D070(?:?); virtual;
    //function sub_0055D268:?; virtual;
    //function sub_0055D26C:?; virtual;
    //function sub_0055D270:?; virtual;
    //procedure sub_0055D33C(?:?); virtual;
    //procedure sub_0055D360(?:?; ?:?); virtual;
    //procedure sub_0055D388(?:?; ?:?); virtual;
    //procedure sub_0055D3B0(?:?; ?:?); virtual;
    //procedure sub_0055D3D8(?:?; ?:?); virtual;
    //procedure sub_0055D400(?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D42C(?:?; ?:?); virtual;
    //procedure sub_0055D454(?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D480(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D4B0(?:?; ?:?); virtual;
    //procedure sub_0055D4D8(?:?; ?:?); virtual;
    //procedure sub_0055D500(?:?; ?:?); virtual;
    //procedure sub_0055D528(?:?; ?:?); virtual;
    //procedure sub_0055D550(?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D57C(?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D5A8(?:?; ?:?; ?:?); virtual;
    //procedure sub_0055D5D4(?:?; ?:?); virtual;
    //procedure sub_0055D5FC(?:?; ?:?); virtual;
    //procedure sub_0055D624(?:?; ?:?); virtual;
    //procedure sub_0055D64C(?:?; ?:?); virtual;
    procedure sub_0055D6C0; virtual;
    procedure sub_0055D7A8; virtual;
    procedure sub_0055D8B0; virtual;
    procedure sub_0055D9B4; virtual;
    procedure sub_0055D9C4; virtual;
    procedure sub_0055D9DC; virtual;
    procedure sub_0055D9E4; virtual;
    procedure sub_0055D274; virtual;
    //constructor Create(?:TZASAResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZASABlob = class(TZAbstractBlob)
  public
    f1C:byte;//f1C
    f20:dword;//f20
    f24:dword;//f24
    procedure sub_0055DB60; virtual;
    //procedure sub_0055DB20(?:?); virtual;
    //procedure sub_0055DB40(?:?); virtual;
    //procedure sub_0055DAE8(?:?); virtual;
    procedure sub_0055DB08; virtual;
    //procedure sub_0055D9FC(?:?); virtual;
    //constructor Create(?:TZASABlob; _Dv__:Boolean; ?:?);
    //constructor Create(?:TZASABlob; _Dv__:Boolean; ?:?);
  end;

implementation

{$R *.DFM}

//0055C428
//constructor TZASAResultSet.Create(?:TZASAResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055C428    push       ebp
 0055C429    mov        ebp,esp
 0055C42B    add        esp,0FFFFFFF8
 0055C42E    push       ebx
 0055C42F    push       esi
 0055C430    xor        ebx,ebx
 0055C432    mov        dword ptr [ebp-8],ebx
 0055C435    test       dl,dl
>0055C437    je         0055C441
 0055C439    add        esp,0FFFFFFF0
 0055C43C    call       @ClassCreate
 0055C441    mov        dword ptr [ebp-4],ecx
 0055C444    mov        ebx,edx
 0055C446    mov        esi,eax
 0055C448    mov        eax,dword ptr [ebp-4]
 0055C44B    call       @IntfAddRef
 0055C450    mov        eax,dword ptr [ebp+1C]
 0055C453    call       @LStrAddRef
 0055C458    mov        eax,dword ptr [ebp+14]
 0055C45B    call       @LStrAddRef
 0055C460    mov        eax,dword ptr [ebp+10]
 0055C463    call       @IntfAddRef
 0055C468    mov        eax,dword ptr [ebp+0C]
 0055C46B    call       @IntfAddRef
 0055C470    xor        eax,eax
 0055C472    push       ebp
 0055C473    push       55C53F
 0055C478    push       dword ptr fs:[eax]
 0055C47B    mov        dword ptr fs:[eax],esp
 0055C47E    mov        eax,dword ptr [ebp+1C]
 0055C481    push       eax
 0055C482    push       0
 0055C484    mov        ecx,dword ptr [ebp-4]
 0055C487    xor        edx,edx
 0055C489    mov        eax,esi
 0055C48B    call       004D3FC8
 0055C490    xor        eax,eax
 0055C492    mov        dword ptr [esi+40],eax; TZASAResultSet.?f40:dword
 0055C495    lea        eax,[esi+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C498    mov        edx,dword ptr [ebp+10]
 0055C49B    call       @IntfCopy
 0055C4A0    lea        eax,[esi+44]; TZASAResultSet.?f44:String
 0055C4A3    mov        edx,dword ptr [ebp+14]
 0055C4A6    call       @LStrAsg
 0055C4AB    mov        al,byte ptr [ebp+8]
 0055C4AE    mov        byte ptr [esi+3C],al; TZASAResultSet.?f3C:byte
 0055C4B1    lea        edx,[ebp-8]
 0055C4B4    mov        eax,dword ptr [ebp-4]
 0055C4B7    mov        ecx,dword ptr [eax]
 0055C4B9    call       dword ptr [ecx+88]
 0055C4BF    mov        edx,dword ptr [ebp-8]
 0055C4C2    lea        eax,[esi+58]; TZASAResultSet.?f58:IZASAConnection
 0055C4C5    mov        ecx,55C568; ['{FAAAFCE0-F550-4098-96C6-580145813EBF}']
 0055C4CA    call       @IntfCast
 0055C4CF    mov        byte ptr [esi+5E],0; TZASAResultSet.?f5E:byte
 0055C4D3    mov        byte ptr [esi+5C],0; TZASAResultSet.?f5C:byte
 0055C4D7    mov        byte ptr [esi+5D],0; TZASAResultSet.?f5D:byte
 0055C4DB    lea        eax,[esi+50]; TZASAResultSet.?f50:IZASASQLDA
 0055C4DE    mov        edx,dword ptr [ebp+0C]
 0055C4E1    call       @IntfCopy
 0055C4E6    mov        eax,dword ptr [ebp+18]
 0055C4E9    mov        ax,word ptr [eax]
 0055C4EC    mov        word ptr [esi+48],ax; TZASAResultSet.?f48:word
 0055C4F0    mov        byte ptr [esi+24],2; TZASAResultSet.?f24:byte
 0055C4F4    mov        byte ptr [esi+25],1; TZASAResultSet.?f25:byte
 0055C4F8    mov        eax,esi
 0055C4FA    mov        edx,dword ptr [eax]
 0055C4FC    call       dword ptr [edx]; TZASAResultSet.sub_0055D094
 0055C4FE    xor        eax,eax
 0055C500    pop        edx
 0055C501    pop        ecx
 0055C502    pop        ecx
 0055C503    mov        dword ptr fs:[eax],edx
 0055C506    push       55C546
 0055C50B    lea        eax,[ebp-8]
 0055C50E    call       @IntfClear
 0055C513    lea        eax,[ebp-4]
 0055C516    call       @IntfClear
 0055C51B    lea        eax,[ebp+0C]
 0055C51E    mov        edx,dword ptr ds:[5508F4]; IZASASQLDA
 0055C524    mov        ecx,2
 0055C529    call       @FinalizeArray
 0055C52E    lea        eax,[ebp+14]
 0055C531    call       @LStrClr
 0055C536    lea        eax,[ebp+1C]
 0055C539    call       @LStrClr
 0055C53E    ret
<0055C53F    jmp        @HandleFinally
<0055C544    jmp        0055C50B
 0055C546    mov        eax,esi
 0055C548    test       bl,bl
>0055C54A    je         0055C55B
 0055C54C    call       @AfterConstruction
 0055C551    pop        dword ptr fs:[0]
 0055C558    add        esp,0C
 0055C55B    mov        eax,esi
 0055C55D    pop        esi
 0055C55E    pop        ebx
 0055C55F    pop        ecx
 0055C560    pop        ecx
 0055C561    pop        ebp
 0055C562    ret        18
*}
//end;

//0055C578
//procedure sub_0055C578(?:?);
//begin
{*
 0055C578    push       ebp
 0055C579    mov        ebp,esp
 0055C57B    add        esp,0FFFFFFF0
 0055C57E    push       ebx
 0055C57F    push       esi
 0055C580    mov        esi,edx
 0055C582    mov        ebx,eax
 0055C584    mov        eax,ebx
 0055C586    call       004D42AC
 0055C58B    mov        cl,8
 0055C58D    mov        edx,esi
 0055C58F    mov        eax,ebx
 0055C591    call       004D4308
 0055C596    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055C59A    jne        0055C5BD
 0055C59C    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055C5A0    je         0055C5DA
 0055C5A2    mov        edx,esi
 0055C5A4    sub        edx,1
>0055C5A7    jno        0055C5AE
 0055C5A9    call       @IntOver
 0055C5AE    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C5B1    mov        ecx,dword ptr [eax]
 0055C5B3    call       dword ptr [ecx+84]
 0055C5B9    test       al,al
>0055C5BB    je         0055C5DA
 0055C5BD    mov        edx,esi
 0055C5BF    sub        edx,1
>0055C5C2    jno        0055C5C9
 0055C5C4    call       @IntOver
 0055C5C9    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C5CC    mov        ecx,dword ptr [eax]
 0055C5CE    call       dword ptr [ecx+0A4]
 0055C5D4    fstp       tbyte ptr [ebp-10]
 0055C5D7    wait
>0055C5D8    jmp        0055C5F5
 0055C5DA    mov        edx,esi
 0055C5DC    sub        edx,1
>0055C5DF    jno        0055C5E6
 0055C5E1    call       @IntOver
 0055C5E6    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C5E9    mov        ecx,dword ptr [eax]
 0055C5EB    call       dword ptr [ecx+0A4]
 0055C5F1    fstp       tbyte ptr [ebp-10]
 0055C5F4    wait
 0055C5F5    mov        edx,esi
 0055C5F7    mov        eax,ebx
 0055C5F9    mov        ecx,dword ptr [eax]
 0055C5FB    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C5FE    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C601    fld        tbyte ptr [ebp-10]
 0055C604    pop        esi
 0055C605    pop        ebx
 0055C606    mov        esp,ebp
 0055C608    pop        ebp
 0055C609    ret
*}
//end;

//0055C60C
//procedure sub_0055C60C(?:?; ?:?);
//begin
{*
 0055C60C    push       ebp
 0055C60D    mov        ebp,esp
 0055C60F    push       ebx
 0055C610    push       esi
 0055C611    push       edi
 0055C612    mov        edi,ecx
 0055C614    mov        esi,edx
 0055C616    mov        ebx,eax
 0055C618    mov        eax,edi
 0055C61A    call       @IntfClear
 0055C61F    mov        eax,ebx
 0055C621    call       004D42AC
 0055C626    mov        edx,esi
 0055C628    mov        eax,ebx
 0055C62A    call       004D4450
 0055C62F    mov        edx,esi
 0055C631    mov        eax,ebx
 0055C633    mov        ecx,dword ptr [eax]
 0055C635    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C638    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C63B    cmp        byte ptr [ebx+34],0; TZASAResultSet.?f34:byte
>0055C63F    jne        0055C679
 0055C641    sub        esi,1
>0055C644    jno        0055C64B
 0055C646    call       @IntOver
 0055C64B    push       esi
 0055C64C    mov        ecx,ebx
 0055C64E    mov        dl,1
 0055C650    mov        eax,[0055C39C]; TZASABlob
 0055C655    call       TZASABlob.Create; TZASABlob.Create
 0055C65A    mov        esi,eax
 0055C65C    cmp        byte ptr [ebx+3C],0; TZASAResultSet.?f3C:byte
>0055C660    je         0055C669
 0055C662    mov        eax,esi
 0055C664    call       0055DB78
 0055C669    mov        eax,edi
 0055C66B    mov        edx,esi
 0055C66D    test       edx,edx
>0055C66F    je         0055C674
 0055C671    sub        edx,0FFFFFFE8
 0055C674    call       @IntfCopy
 0055C679    pop        edi
 0055C67A    pop        esi
 0055C67B    pop        ebx
 0055C67C    pop        ebp
 0055C67D    ret
*}
//end;

//0055C680
//function sub_0055C680(?:?):?;
//begin
{*
 0055C680    push       ebp
 0055C681    mov        ebp,esp
 0055C683    push       ebx
 0055C684    push       esi
 0055C685    push       edi
 0055C686    mov        esi,edx
 0055C688    mov        edi,eax
 0055C68A    mov        eax,edi
 0055C68C    call       004D42AC
 0055C691    mov        cl,1
 0055C693    mov        edx,esi
 0055C695    mov        eax,edi
 0055C697    call       004D4308
 0055C69C    cmp        byte ptr [edi+5C],0; TZASAResultSet.?f5C:byte
>0055C6A0    jne        0055C6C3
 0055C6A2    cmp        byte ptr [edi+5D],0; TZASAResultSet.?f5D:byte
>0055C6A6    je         0055C6DE
 0055C6A8    mov        edx,esi
 0055C6AA    sub        edx,1
>0055C6AD    jno        0055C6B4
 0055C6AF    call       @IntOver
 0055C6B4    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C6B7    mov        ecx,dword ptr [eax]
 0055C6B9    call       dword ptr [ecx+84]
 0055C6BF    test       al,al
>0055C6C1    je         0055C6DE
 0055C6C3    mov        edx,esi
 0055C6C5    sub        edx,1
>0055C6C8    jno        0055C6CF
 0055C6CA    call       @IntOver
 0055C6CF    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C6D2    mov        ecx,dword ptr [eax]
 0055C6D4    call       dword ptr [ecx+88]
 0055C6DA    mov        ebx,eax
>0055C6DC    jmp        0055C6F7
 0055C6DE    mov        edx,esi
 0055C6E0    sub        edx,1
>0055C6E3    jno        0055C6EA
 0055C6E5    call       @IntOver
 0055C6EA    mov        eax,dword ptr [edi+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C6ED    mov        ecx,dword ptr [eax]
 0055C6EF    call       dword ptr [ecx+88]
 0055C6F5    mov        ebx,eax
 0055C6F7    mov        edx,esi
 0055C6F9    mov        eax,edi
 0055C6FB    mov        ecx,dword ptr [eax]
 0055C6FD    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C700    mov        byte ptr [edi+34],al; TZASAResultSet.?f34:byte
 0055C703    mov        eax,ebx
 0055C705    pop        edi
 0055C706    pop        esi
 0055C707    pop        ebx
 0055C708    pop        ebp
 0055C709    ret
*}
//end;

//0055C70C
//function sub_0055C70C(?:?):?;
//begin
{*
 0055C70C    push       ebp
 0055C70D    mov        ebp,esp
 0055C70F    push       ebx
 0055C710    push       esi
 0055C711    push       edi
 0055C712    mov        esi,edx
 0055C714    mov        edi,eax
 0055C716    mov        eax,edi
 0055C718    call       004D42AC
 0055C71D    mov        cl,2
 0055C71F    mov        edx,esi
 0055C721    mov        eax,edi
 0055C723    call       004D4308
 0055C728    cmp        byte ptr [edi+5C],0; TZASAResultSet.?f5C:byte
>0055C72C    jne        0055C74F
 0055C72E    cmp        byte ptr [edi+5D],0; TZASAResultSet.?f5D:byte
>0055C732    je         0055C76A
 0055C734    mov        edx,esi
 0055C736    sub        edx,1
>0055C739    jno        0055C740
 0055C73B    call       @IntOver
 0055C740    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C743    mov        ecx,dword ptr [eax]
 0055C745    call       dword ptr [ecx+84]
 0055C74B    test       al,al
>0055C74D    je         0055C76A
 0055C74F    mov        edx,esi
 0055C751    sub        edx,1
>0055C754    jno        0055C75B
 0055C756    call       @IntOver
 0055C75B    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C75E    mov        ecx,dword ptr [eax]
 0055C760    call       dword ptr [ecx+8C]
 0055C766    mov        ebx,eax
>0055C768    jmp        0055C783
 0055C76A    mov        edx,esi
 0055C76C    sub        edx,1
>0055C76F    jno        0055C776
 0055C771    call       @IntOver
 0055C776    mov        eax,dword ptr [edi+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C779    mov        ecx,dword ptr [eax]
 0055C77B    call       dword ptr [ecx+8C]
 0055C781    mov        ebx,eax
 0055C783    mov        edx,esi
 0055C785    mov        eax,edi
 0055C787    mov        ecx,dword ptr [eax]
 0055C789    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C78C    mov        byte ptr [edi+34],al; TZASAResultSet.?f34:byte
 0055C78F    mov        eax,ebx
 0055C791    pop        edi
 0055C792    pop        esi
 0055C793    pop        ebx
 0055C794    pop        ebp
 0055C795    ret
*}
//end;

//0055C798
//procedure sub_0055C798(?:?; ?:?);
//begin
{*
 0055C798    push       ebp
 0055C799    mov        ebp,esp
 0055C79B    push       ecx
 0055C79C    push       ebx
 0055C79D    push       esi
 0055C79E    push       edi
 0055C79F    mov        dword ptr [ebp-4],ecx
 0055C7A2    mov        esi,edx
 0055C7A4    mov        ebx,eax
 0055C7A6    mov        eax,ebx
 0055C7A8    call       004D42AC
 0055C7AD    mov        cl,0B
 0055C7AF    mov        edx,esi
 0055C7B1    mov        eax,ebx
 0055C7B3    call       004D4308
 0055C7B8    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055C7BC    jne        0055C7DF
 0055C7BE    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055C7C2    je         0055C7FB
 0055C7C4    mov        edx,esi
 0055C7C6    sub        edx,1
>0055C7C9    jno        0055C7D0
 0055C7CB    call       @IntOver
 0055C7D0    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C7D3    mov        ecx,dword ptr [eax]
 0055C7D5    call       dword ptr [ecx+84]
 0055C7DB    test       al,al
>0055C7DD    je         0055C7FB
 0055C7DF    mov        ecx,dword ptr [ebp-4]
 0055C7E2    mov        edx,esi
 0055C7E4    sub        edx,1
>0055C7E7    jno        0055C7EE
 0055C7E9    call       @IntOver
 0055C7EE    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C7F1    mov        edi,dword ptr [eax]
 0055C7F3    call       dword ptr [edi+0B0]
>0055C7F9    jmp        0055C815
 0055C7FB    mov        ecx,dword ptr [ebp-4]
 0055C7FE    mov        edx,esi
 0055C800    sub        edx,1
>0055C803    jno        0055C80A
 0055C805    call       @IntOver
 0055C80A    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C80D    mov        edi,dword ptr [eax]
 0055C80F    call       dword ptr [edi+0B0]
 0055C815    mov        edx,esi
 0055C817    mov        eax,ebx
 0055C819    mov        ecx,dword ptr [eax]
 0055C81B    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C81E    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C821    pop        edi
 0055C822    pop        esi
 0055C823    pop        ebx
 0055C824    pop        ecx
 0055C825    pop        ebp
 0055C826    ret
*}
//end;

//0055C828
//procedure sub_0055C828(?:?);
//begin
{*
 0055C828    push       ebp
 0055C829    mov        ebp,esp
 0055C82B    add        esp,0FFFFFFF8
 0055C82E    push       ebx
 0055C82F    push       esi
 0055C830    mov        esi,edx
 0055C832    mov        ebx,eax
 0055C834    mov        eax,ebx
 0055C836    call       004D42AC
 0055C83B    mov        cl,0C
 0055C83D    mov        edx,esi
 0055C83F    mov        eax,ebx
 0055C841    call       004D4308
 0055C846    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055C84A    jne        0055C86D
 0055C84C    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055C850    je         0055C88A
 0055C852    mov        edx,esi
 0055C854    sub        edx,1
>0055C857    jno        0055C85E
 0055C859    call       @IntOver
 0055C85E    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C861    mov        ecx,dword ptr [eax]
 0055C863    call       dword ptr [ecx+84]
 0055C869    test       al,al
>0055C86B    je         0055C88A
 0055C86D    mov        edx,esi
 0055C86F    sub        edx,1
>0055C872    jno        0055C879
 0055C874    call       @IntOver
 0055C879    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C87C    mov        ecx,dword ptr [eax]
 0055C87E    call       dword ptr [ecx+0B4]
 0055C884    fstp       qword ptr [ebp-8]
 0055C887    wait
>0055C888    jmp        0055C8A5
 0055C88A    mov        edx,esi
 0055C88C    sub        edx,1
>0055C88F    jno        0055C896
 0055C891    call       @IntOver
 0055C896    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C899    mov        ecx,dword ptr [eax]
 0055C89B    call       dword ptr [ecx+0B4]
 0055C8A1    fstp       qword ptr [ebp-8]
 0055C8A4    wait
 0055C8A5    mov        edx,esi
 0055C8A7    mov        eax,ebx
 0055C8A9    mov        ecx,dword ptr [eax]
 0055C8AB    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C8AE    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C8B1    fld        qword ptr [ebp-8]
 0055C8B4    pop        esi
 0055C8B5    pop        ebx
 0055C8B6    pop        ecx
 0055C8B7    pop        ecx
 0055C8B8    pop        ebp
 0055C8B9    ret
*}
//end;

//0055C8BC
//procedure sub_0055C8BC(?:?);
//begin
{*
 0055C8BC    push       ebp
 0055C8BD    mov        ebp,esp
 0055C8BF    add        esp,0FFFFFFF8
 0055C8C2    push       ebx
 0055C8C3    push       esi
 0055C8C4    mov        esi,edx
 0055C8C6    mov        ebx,eax
 0055C8C8    mov        eax,ebx
 0055C8CA    call       004D42AC
 0055C8CF    mov        cl,7
 0055C8D1    mov        edx,esi
 0055C8D3    mov        eax,ebx
 0055C8D5    call       004D4308
 0055C8DA    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055C8DE    jne        0055C901
 0055C8E0    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055C8E4    je         0055C91E
 0055C8E6    mov        edx,esi
 0055C8E8    sub        edx,1
>0055C8EB    jno        0055C8F2
 0055C8ED    call       @IntOver
 0055C8F2    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C8F5    mov        ecx,dword ptr [eax]
 0055C8F7    call       dword ptr [ecx+84]
 0055C8FD    test       al,al
>0055C8FF    je         0055C91E
 0055C901    mov        edx,esi
 0055C903    sub        edx,1
>0055C906    jno        0055C90D
 0055C908    call       @IntOver
 0055C90D    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C910    mov        ecx,dword ptr [eax]
 0055C912    call       dword ptr [ecx+0A0]
 0055C918    fstp       qword ptr [ebp-8]
 0055C91B    wait
>0055C91C    jmp        0055C939
 0055C91E    mov        edx,esi
 0055C920    sub        edx,1
>0055C923    jno        0055C92A
 0055C925    call       @IntOver
 0055C92A    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C92D    mov        ecx,dword ptr [eax]
 0055C92F    call       dword ptr [ecx+0A0]
 0055C935    fstp       qword ptr [ebp-8]
 0055C938    wait
 0055C939    mov        edx,esi
 0055C93B    mov        eax,ebx
 0055C93D    mov        ecx,dword ptr [eax]
 0055C93F    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C942    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C945    fld        qword ptr [ebp-8]
 0055C948    pop        esi
 0055C949    pop        ebx
 0055C94A    pop        ecx
 0055C94B    pop        ecx
 0055C94C    pop        ebp
 0055C94D    ret
*}
//end;

//0055C950
//procedure sub_0055C950(?:?);
//begin
{*
 0055C950    push       ebp
 0055C951    mov        ebp,esp
 0055C953    push       ecx
 0055C954    push       ebx
 0055C955    push       esi
 0055C956    mov        esi,edx
 0055C958    mov        ebx,eax
 0055C95A    mov        eax,ebx
 0055C95C    call       004D42AC
 0055C961    mov        cl,6
 0055C963    mov        edx,esi
 0055C965    mov        eax,ebx
 0055C967    call       004D4308
 0055C96C    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055C970    jne        0055C993
 0055C972    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055C976    je         0055C9B0
 0055C978    mov        edx,esi
 0055C97A    sub        edx,1
>0055C97D    jno        0055C984
 0055C97F    call       @IntOver
 0055C984    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C987    mov        ecx,dword ptr [eax]
 0055C989    call       dword ptr [ecx+84]
 0055C98F    test       al,al
>0055C991    je         0055C9B0
 0055C993    mov        edx,esi
 0055C995    sub        edx,1
>0055C998    jno        0055C99F
 0055C99A    call       @IntOver
 0055C99F    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055C9A2    mov        ecx,dword ptr [eax]
 0055C9A4    call       dword ptr [ecx+9C]
 0055C9AA    fstp       dword ptr [ebp-4]
 0055C9AD    wait
>0055C9AE    jmp        0055C9CB
 0055C9B0    mov        edx,esi
 0055C9B2    sub        edx,1
>0055C9B5    jno        0055C9BC
 0055C9B7    call       @IntOver
 0055C9BC    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055C9BF    mov        ecx,dword ptr [eax]
 0055C9C1    call       dword ptr [ecx+9C]
 0055C9C7    fstp       dword ptr [ebp-4]
 0055C9CA    wait
 0055C9CB    mov        edx,esi
 0055C9CD    mov        eax,ebx
 0055C9CF    mov        ecx,dword ptr [eax]
 0055C9D1    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055C9D4    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055C9D7    fld        dword ptr [ebp-4]
 0055C9DA    pop        esi
 0055C9DB    pop        ebx
 0055C9DC    pop        ecx
 0055C9DD    pop        ebp
 0055C9DE    ret
*}
//end;

//0055C9E0
//function sub_0055C9E0(?:?):?;
//begin
{*
 0055C9E0    push       ebp
 0055C9E1    mov        ebp,esp
 0055C9E3    push       ebx
 0055C9E4    push       esi
 0055C9E5    push       edi
 0055C9E6    mov        esi,edx
 0055C9E8    mov        ebx,eax
 0055C9EA    mov        eax,ebx
 0055C9EC    call       004D42AC
 0055C9F1    mov        cl,4
 0055C9F3    mov        edx,esi
 0055C9F5    mov        eax,ebx
 0055C9F7    call       004D4308
 0055C9FC    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CA00    jne        0055CA23
 0055CA02    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CA06    je         0055CA3E
 0055CA08    mov        edx,esi
 0055CA0A    sub        edx,1
>0055CA0D    jno        0055CA14
 0055CA0F    call       @IntOver
 0055CA14    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CA17    mov        ecx,dword ptr [eax]
 0055CA19    call       dword ptr [ecx+84]
 0055CA1F    test       al,al
>0055CA21    je         0055CA3E
 0055CA23    mov        edx,esi
 0055CA25    sub        edx,1
>0055CA28    jno        0055CA2F
 0055CA2A    call       @IntOver
 0055CA2F    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CA32    mov        ecx,dword ptr [eax]
 0055CA34    call       dword ptr [ecx+94]
 0055CA3A    mov        edi,eax
>0055CA3C    jmp        0055CA57
 0055CA3E    mov        edx,esi
 0055CA40    sub        edx,1
>0055CA43    jno        0055CA4A
 0055CA45    call       @IntOver
 0055CA4A    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CA4D    mov        ecx,dword ptr [eax]
 0055CA4F    call       dword ptr [ecx+94]
 0055CA55    mov        edi,eax
 0055CA57    mov        edx,esi
 0055CA59    mov        eax,ebx
 0055CA5B    mov        ecx,dword ptr [eax]
 0055CA5D    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CA60    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CA63    mov        eax,edi
 0055CA65    pop        edi
 0055CA66    pop        esi
 0055CA67    pop        ebx
 0055CA68    pop        ebp
 0055CA69    ret
*}
//end;

//0055CA6C
//procedure sub_0055CA6C(?:?);
//begin
{*
 0055CA6C    push       ebp
 0055CA6D    mov        ebp,esp
 0055CA6F    add        esp,0FFFFFFF8
 0055CA72    push       ebx
 0055CA73    push       esi
 0055CA74    mov        esi,edx
 0055CA76    mov        ebx,eax
 0055CA78    mov        eax,ebx
 0055CA7A    call       004D42AC
 0055CA7F    mov        cl,5
 0055CA81    mov        edx,esi
 0055CA83    mov        eax,ebx
 0055CA85    call       004D4308
 0055CA8A    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CA8E    jne        0055CAB1
 0055CA90    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CA94    je         0055CAD0
 0055CA96    mov        edx,esi
 0055CA98    sub        edx,1
>0055CA9B    jno        0055CAA2
 0055CA9D    call       @IntOver
 0055CAA2    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CAA5    mov        ecx,dword ptr [eax]
 0055CAA7    call       dword ptr [ecx+84]
 0055CAAD    test       al,al
>0055CAAF    je         0055CAD0
 0055CAB1    mov        edx,esi
 0055CAB3    sub        edx,1
>0055CAB6    jno        0055CABD
 0055CAB8    call       @IntOver
 0055CABD    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CAC0    mov        ecx,dword ptr [eax]
 0055CAC2    call       dword ptr [ecx+98]
 0055CAC8    mov        dword ptr [ebp-8],eax
 0055CACB    mov        dword ptr [ebp-4],edx
>0055CACE    jmp        0055CAED
 0055CAD0    mov        edx,esi
 0055CAD2    sub        edx,1
>0055CAD5    jno        0055CADC
 0055CAD7    call       @IntOver
 0055CADC    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CADF    mov        ecx,dword ptr [eax]
 0055CAE1    call       dword ptr [ecx+98]
 0055CAE7    mov        dword ptr [ebp-8],eax
 0055CAEA    mov        dword ptr [ebp-4],edx
 0055CAED    mov        edx,esi
 0055CAEF    mov        eax,ebx
 0055CAF1    mov        ecx,dword ptr [eax]
 0055CAF3    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CAF6    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CAF9    mov        eax,dword ptr [ebp-8]
 0055CAFC    mov        edx,dword ptr [ebp-4]
 0055CAFF    pop        esi
 0055CB00    pop        ebx
 0055CB01    pop        ecx
 0055CB02    pop        ecx
 0055CB03    pop        ebp
 0055CB04    ret
*}
//end;

//0055CB08
//function sub_0055CB08(?:?):?;
//begin
{*
 0055CB08    push       ebp
 0055CB09    mov        ebp,esp
 0055CB0B    push       ebx
 0055CB0C    push       esi
 0055CB0D    push       edi
 0055CB0E    mov        esi,edx
 0055CB10    mov        ebx,eax
 0055CB12    mov        eax,ebx
 0055CB14    call       004D42AC
 0055CB19    mov        cl,3
 0055CB1B    mov        edx,esi
 0055CB1D    mov        eax,ebx
 0055CB1F    call       004D4308
 0055CB24    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CB28    jne        0055CB4B
 0055CB2A    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CB2E    je         0055CB66
 0055CB30    mov        edx,esi
 0055CB32    sub        edx,1
>0055CB35    jno        0055CB3C
 0055CB37    call       @IntOver
 0055CB3C    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CB3F    mov        ecx,dword ptr [eax]
 0055CB41    call       dword ptr [ecx+84]
 0055CB47    test       al,al
>0055CB49    je         0055CB66
 0055CB4B    mov        edx,esi
 0055CB4D    sub        edx,1
>0055CB50    jno        0055CB57
 0055CB52    call       @IntOver
 0055CB57    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CB5A    mov        ecx,dword ptr [eax]
 0055CB5C    call       dword ptr [ecx+90]
 0055CB62    mov        edi,eax
>0055CB64    jmp        0055CB7F
 0055CB66    mov        edx,esi
 0055CB68    sub        edx,1
>0055CB6B    jno        0055CB72
 0055CB6D    call       @IntOver
 0055CB72    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CB75    mov        ecx,dword ptr [eax]
 0055CB77    call       dword ptr [ecx+90]
 0055CB7D    mov        edi,eax
 0055CB7F    mov        edx,esi
 0055CB81    mov        eax,ebx
 0055CB83    mov        ecx,dword ptr [eax]
 0055CB85    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CB88    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CB8B    mov        eax,edi
 0055CB8D    pop        edi
 0055CB8E    pop        esi
 0055CB8F    pop        ebx
 0055CB90    pop        ebp
 0055CB91    ret
*}
//end;

//0055CB94
//procedure sub_0055CB94(?:?; ?:?);
//begin
{*
 0055CB94    push       ebp
 0055CB95    mov        ebp,esp
 0055CB97    push       ecx
 0055CB98    push       ebx
 0055CB99    push       esi
 0055CB9A    push       edi
 0055CB9B    mov        dword ptr [ebp-4],ecx
 0055CB9E    mov        esi,edx
 0055CBA0    mov        ebx,eax
 0055CBA2    mov        eax,ebx
 0055CBA4    call       004D42AC
 0055CBA9    mov        cl,9
 0055CBAB    mov        edx,esi
 0055CBAD    mov        eax,ebx
 0055CBAF    call       004D4308
 0055CBB4    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CBB8    jne        0055CBDB
 0055CBBA    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CBBE    je         0055CBF7
 0055CBC0    mov        edx,esi
 0055CBC2    sub        edx,1
>0055CBC5    jno        0055CBCC
 0055CBC7    call       @IntOver
 0055CBCC    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CBCF    mov        ecx,dword ptr [eax]
 0055CBD1    call       dword ptr [ecx+84]
 0055CBD7    test       al,al
>0055CBD9    je         0055CBF7
 0055CBDB    mov        ecx,dword ptr [ebp-4]
 0055CBDE    mov        edx,esi
 0055CBE0    sub        edx,1
>0055CBE3    jno        0055CBEA
 0055CBE5    call       @IntOver
 0055CBEA    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CBED    mov        edi,dword ptr [eax]
 0055CBEF    call       dword ptr [edi+0AC]
>0055CBF5    jmp        0055CC11
 0055CBF7    mov        ecx,dword ptr [ebp-4]
 0055CBFA    mov        edx,esi
 0055CBFC    sub        edx,1
>0055CBFF    jno        0055CC06
 0055CC01    call       @IntOver
 0055CC06    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CC09    mov        edi,dword ptr [eax]
 0055CC0B    call       dword ptr [edi+0AC]
 0055CC11    mov        edx,esi
 0055CC13    mov        eax,ebx
 0055CC15    mov        ecx,dword ptr [eax]
 0055CC17    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CC1A    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CC1D    pop        edi
 0055CC1E    pop        esi
 0055CC1F    pop        ebx
 0055CC20    pop        ecx
 0055CC21    pop        ebp
 0055CC22    ret
*}
//end;

//0055CC24
//procedure sub_0055CC24(?:?);
//begin
{*
 0055CC24    push       ebp
 0055CC25    mov        ebp,esp
 0055CC27    add        esp,0FFFFFFF8
 0055CC2A    push       ebx
 0055CC2B    push       esi
 0055CC2C    mov        esi,edx
 0055CC2E    mov        ebx,eax
 0055CC30    mov        eax,ebx
 0055CC32    call       004D42AC
 0055CC37    mov        cl,0D
 0055CC39    mov        edx,esi
 0055CC3B    mov        eax,ebx
 0055CC3D    call       004D4308
 0055CC42    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CC46    jne        0055CC69
 0055CC48    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CC4C    je         0055CC86
 0055CC4E    mov        edx,esi
 0055CC50    sub        edx,1
>0055CC53    jno        0055CC5A
 0055CC55    call       @IntOver
 0055CC5A    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CC5D    mov        ecx,dword ptr [eax]
 0055CC5F    call       dword ptr [ecx+84]
 0055CC65    test       al,al
>0055CC67    je         0055CC86
 0055CC69    mov        edx,esi
 0055CC6B    sub        edx,1
>0055CC6E    jno        0055CC75
 0055CC70    call       @IntOver
 0055CC75    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CC78    mov        ecx,dword ptr [eax]
 0055CC7A    call       dword ptr [ecx+0B8]
 0055CC80    fstp       qword ptr [ebp-8]
 0055CC83    wait
>0055CC84    jmp        0055CCA1
 0055CC86    mov        edx,esi
 0055CC88    sub        edx,1
>0055CC8B    jno        0055CC92
 0055CC8D    call       @IntOver
 0055CC92    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CC95    mov        ecx,dword ptr [eax]
 0055CC97    call       dword ptr [ecx+0B8]
 0055CC9D    fstp       qword ptr [ebp-8]
 0055CCA0    wait
 0055CCA1    mov        edx,esi
 0055CCA3    mov        eax,ebx
 0055CCA5    mov        ecx,dword ptr [eax]
 0055CCA7    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CCAA    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CCAD    fld        qword ptr [ebp-8]
 0055CCB0    pop        esi
 0055CCB1    pop        ebx
 0055CCB2    pop        ecx
 0055CCB3    pop        ecx
 0055CCB4    pop        ebp
 0055CCB5    ret
*}
//end;

//0055CCB8
//procedure sub_0055CCB8(?:?);
//begin
{*
 0055CCB8    push       ebp
 0055CCB9    mov        ebp,esp
 0055CCBB    add        esp,0FFFFFFF8
 0055CCBE    push       ebx
 0055CCBF    push       esi
 0055CCC0    mov        esi,edx
 0055CCC2    mov        ebx,eax
 0055CCC4    mov        eax,ebx
 0055CCC6    call       004D42AC
 0055CCCB    mov        cl,0E
 0055CCCD    mov        edx,esi
 0055CCCF    mov        eax,ebx
 0055CCD1    call       004D4308
 0055CCD6    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CCDA    jne        0055CCFD
 0055CCDC    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CCE0    je         0055CD1A
 0055CCE2    mov        edx,esi
 0055CCE4    sub        edx,1
>0055CCE7    jno        0055CCEE
 0055CCE9    call       @IntOver
 0055CCEE    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CCF1    mov        ecx,dword ptr [eax]
 0055CCF3    call       dword ptr [ecx+84]
 0055CCF9    test       al,al
>0055CCFB    je         0055CD1A
 0055CCFD    mov        edx,esi
 0055CCFF    sub        edx,1
>0055CD02    jno        0055CD09
 0055CD04    call       @IntOver
 0055CD09    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CD0C    mov        ecx,dword ptr [eax]
 0055CD0E    call       dword ptr [ecx+0BC]
 0055CD14    fstp       qword ptr [ebp-8]
 0055CD17    wait
>0055CD18    jmp        0055CD35
 0055CD1A    mov        edx,esi
 0055CD1C    sub        edx,1
>0055CD1F    jno        0055CD26
 0055CD21    call       @IntOver
 0055CD26    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CD29    mov        ecx,dword ptr [eax]
 0055CD2B    call       dword ptr [ecx+0BC]
 0055CD31    fstp       qword ptr [ebp-8]
 0055CD34    wait
 0055CD35    mov        edx,esi
 0055CD37    mov        eax,ebx
 0055CD39    mov        ecx,dword ptr [eax]
 0055CD3B    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 0055CD3E    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 0055CD41    fld        qword ptr [ebp-8]
 0055CD44    pop        esi
 0055CD45    pop        ebx
 0055CD46    pop        ecx
 0055CD47    pop        ecx
 0055CD48    pop        ebp
 0055CD49    ret
*}
//end;

//0055CD4C
//procedure sub_0055CD4C(?:?);
//begin
{*
 0055CD4C    push       ebp
 0055CD4D    mov        ebp,esp
 0055CD4F    push       ebx
 0055CD50    push       esi
 0055CD51    mov        esi,edx
 0055CD53    mov        ebx,eax
 0055CD55    mov        eax,ebx
 0055CD57    call       004D42AC
 0055CD5C    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055CD60    jne        0055CD83
 0055CD62    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CD66    je         0055CD9C
 0055CD68    mov        edx,esi
 0055CD6A    sub        edx,1
>0055CD6D    jno        0055CD74
 0055CD6F    call       @IntOver
 0055CD74    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CD77    mov        ecx,dword ptr [eax]
 0055CD79    call       dword ptr [ecx+84]
 0055CD7F    test       al,al
>0055CD81    je         0055CD9C
 0055CD83    mov        edx,esi
 0055CD85    sub        edx,1
>0055CD88    jno        0055CD8F
 0055CD8A    call       @IntOver
 0055CD8F    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055CD92    mov        ecx,dword ptr [eax]
 0055CD94    call       dword ptr [ecx+80]
>0055CD9A    jmp        0055CDB3
 0055CD9C    mov        edx,esi
 0055CD9E    sub        edx,1
>0055CDA1    jno        0055CDA8
 0055CDA3    call       @IntOver
 0055CDA8    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CDAB    mov        ecx,dword ptr [eax]
 0055CDAD    call       dword ptr [ecx+80]
 0055CDB3    pop        esi
 0055CDB4    pop        ebx
 0055CDB5    pop        ebp
 0055CDB6    ret
*}
//end;

//0055CDB8
procedure sub_0055CDB8;
begin
{*
 0055CDB8    push       ebp
 0055CDB9    mov        ebp,esp
 0055CDBB    mov        edx,dword ptr [eax+14]; TZASAResultSet.?f14:Integer
 0055CDBE    cmp        edx,7FFFFFFF
>0055CDC4    je         0055CDD0
 0055CDC6    mov        ecx,dword ptr [eax]
 0055CDC8    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 0055CDCE    pop        ebp
 0055CDCF    ret
 0055CDD0    or         edx,0FFFFFFFF
 0055CDD3    mov        ecx,dword ptr [eax]
 0055CDD5    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 0055CDDB    pop        ebp
 0055CDDC    ret
*}
end;

//0055CDE0
//function sub_0055CDE0(?:?):?;
//begin
{*
 0055CDE0    push       ebp
 0055CDE1    mov        ebp,esp
 0055CDE3    push       0
 0055CDE5    push       0
 0055CDE7    push       0
 0055CDE9    push       ebx
 0055CDEA    push       esi
 0055CDEB    push       edi
 0055CDEC    mov        esi,edx
 0055CDEE    mov        ebx,eax
 0055CDF0    xor        eax,eax
 0055CDF2    push       ebp
 0055CDF3    push       55CEF2
 0055CDF8    push       dword ptr fs:[eax]
 0055CDFB    mov        dword ptr fs:[eax],esp
 0055CDFE    mov        byte ptr [ebp-1],0
 0055CE02    mov        eax,dword ptr [ebx+18]; TZASAResultSet.?f18:dword
 0055CE05    test       eax,eax
>0055CE07    jle        0055CE11
 0055CE09    cmp        eax,esi
>0055CE0B    jle        0055CED1
 0055CE11    push       1
 0055CE13    push       esi
 0055CE14    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CE17    mov        edx,dword ptr [eax]
 0055CE19    call       dword ptr [edx+18]
 0055CE1C    push       eax
 0055CE1D    push       14
 0055CE1F    push       0
 0055CE21    lea        edx,[ebp-8]
 0055CE24    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CE27    mov        ecx,dword ptr [eax]
 0055CE29    call       dword ptr [ecx+98]
 0055CE2F    mov        eax,dword ptr [ebp-8]
 0055CE32    push       eax
 0055CE33    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CE36    mov        edx,dword ptr [eax]
 0055CE38    call       dword ptr [edx+94]
 0055CE3E    push       eax
 0055CE3F    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055CE42    call       @LStrToPChar
 0055CE47    mov        ecx,eax
 0055CE49    pop        edx
 0055CE4A    pop        eax
 0055CE4B    mov        edi,dword ptr [eax]
 0055CE4D    call       dword ptr [edi+84]
 0055CE53    push       0
 0055CE55    lea        edx,[ebp-0C]
 0055CE58    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CE5B    mov        ecx,dword ptr [eax]
 0055CE5D    call       dword ptr [ecx+98]
 0055CE63    mov        eax,dword ptr [ebp-0C]
 0055CE66    push       eax
 0055CE67    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CE6A    mov        edx,dword ptr [eax]
 0055CE6C    call       dword ptr [edx+94]
 0055CE72    mov        edx,eax
 0055CE74    mov        cl,4
 0055CE76    pop        eax
 0055CE77    call       00556588
 0055CE7C    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CE7F    mov        edx,dword ptr [eax]
 0055CE81    call       dword ptr [edx+94]
 0055CE87    cmp        dword ptr [eax+0C],64
>0055CE8B    je         0055CEA7
 0055CE8D    mov        dword ptr [ebx+10],esi; TZASAResultSet.?f10:dword
 0055CE90    mov        byte ptr [ebp-1],1
 0055CE94    xor        eax,eax
 0055CE96    mov        dword ptr [ebx+40],eax; TZASAResultSet.?f40:dword
 0055CE99    mov        byte ptr [ebx+5E],0; TZASAResultSet.?f5E:byte
 0055CE9D    mov        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
 0055CEA1    mov        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CEA5    jmp        0055CED1
 0055CEA7    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CEAA    mov        edx,dword ptr [eax]
 0055CEAC    call       dword ptr [edx+94]
 0055CEB2    mov        edi,dword ptr [eax+68]
 0055CEB5    mov        dword ptr [ebx+40],edi; TZASAResultSet.?f40:dword
 0055CEB8    test       edi,edi
>0055CEBA    jle        0055CED1
 0055CEBC    mov        eax,esi
 0055CEBE    sub        eax,edi
>0055CEC0    jno        0055CEC7
 0055CEC2    call       @IntOver
 0055CEC7    xor        edx,edx
 0055CEC9    call       Max
 0055CECE    mov        dword ptr [ebx+14],eax; TZASAResultSet.?f14:Integer
 0055CED1    xor        eax,eax
 0055CED3    pop        edx
 0055CED4    pop        ecx
 0055CED5    pop        ecx
 0055CED6    mov        dword ptr fs:[eax],edx
 0055CED9    push       55CEF9
 0055CEDE    lea        eax,[ebp-0C]
 0055CEE1    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055CEE7    mov        ecx,2
 0055CEEC    call       @FinalizeArray
 0055CEF1    ret
<0055CEF2    jmp        @HandleFinally
<0055CEF7    jmp        0055CEDE
 0055CEF9    mov        al,byte ptr [ebp-1]
 0055CEFC    pop        edi
 0055CEFD    pop        esi
 0055CEFE    pop        ebx
 0055CEFF    mov        esp,ebp
 0055CF01    pop        ebp
 0055CF02    ret
*}
//end;

//0055CF04
//function sub_0055CF04(?:?):?;
//begin
{*
 0055CF04    push       ebp
 0055CF05    mov        ebp,esp
 0055CF07    push       0
 0055CF09    push       0
 0055CF0B    push       0
 0055CF0D    push       ebx
 0055CF0E    push       esi
 0055CF0F    push       edi
 0055CF10    mov        esi,edx
 0055CF12    mov        ebx,eax
 0055CF14    xor        eax,eax
 0055CF16    push       ebp
 0055CF17    push       55D05C
 0055CF1C    push       dword ptr fs:[eax]
 0055CF1F    mov        dword ptr fs:[eax],esp
 0055CF22    mov        byte ptr [ebp-1],0
 0055CF26    mov        ecx,dword ptr [ebx+18]; TZASAResultSet.?f18:dword
 0055CF29    test       ecx,ecx
>0055CF2B    jle        0055CF4D
 0055CF2D    mov        eax,dword ptr [ebx+10]; TZASAResultSet.?f10:dword
 0055CF30    cdq
 0055CF31    xor        eax,edx
 0055CF33    sub        eax,edx
>0055CF35    jno        0055CF3C
 0055CF37    call       @IntOver
 0055CF3C    add        eax,esi
>0055CF3E    jno        0055CF45
 0055CF40    call       @IntOver
 0055CF45    cmp        ecx,eax
>0055CF47    jle        0055D03B
 0055CF4D    push       2
 0055CF4F    push       esi
 0055CF50    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055CF53    mov        edx,dword ptr [eax]
 0055CF55    call       dword ptr [edx+18]
 0055CF58    push       eax
 0055CF59    push       14
 0055CF5B    push       0
 0055CF5D    lea        edx,[ebp-8]
 0055CF60    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CF63    mov        ecx,dword ptr [eax]
 0055CF65    call       dword ptr [ecx+98]
 0055CF6B    mov        eax,dword ptr [ebp-8]
 0055CF6E    push       eax
 0055CF6F    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CF72    mov        edx,dword ptr [eax]
 0055CF74    call       dword ptr [edx+94]
 0055CF7A    push       eax
 0055CF7B    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055CF7E    call       @LStrToPChar
 0055CF83    mov        ecx,eax
 0055CF85    pop        edx
 0055CF86    pop        eax
 0055CF87    mov        edi,dword ptr [eax]
 0055CF89    call       dword ptr [edi+84]
 0055CF8F    push       0
 0055CF91    lea        edx,[ebp-0C]
 0055CF94    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CF97    mov        ecx,dword ptr [eax]
 0055CF99    call       dword ptr [ecx+98]
 0055CF9F    mov        eax,dword ptr [ebp-0C]
 0055CFA2    push       eax
 0055CFA3    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CFA6    mov        edx,dword ptr [eax]
 0055CFA8    call       dword ptr [edx+94]
 0055CFAE    mov        edx,eax
 0055CFB0    mov        cl,4
 0055CFB2    pop        eax
 0055CFB3    call       00556588
 0055CFB8    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055CFBB    mov        edx,dword ptr [eax]
 0055CFBD    call       dword ptr [edx+94]
 0055CFC3    cmp        dword ptr [eax+0C],64
>0055CFC7    je         0055CFFE
 0055CFC9    mov        eax,dword ptr [ebx+10]; TZASAResultSet.?f10:dword
 0055CFCC    test       eax,eax
>0055CFCE    jg         0055CFDD
 0055CFD0    add        eax,esi
>0055CFD2    jno        0055CFD9
 0055CFD4    call       @IntOver
 0055CFD9    test       eax,eax
>0055CFDB    jge        0055CFE7
 0055CFDD    add        dword ptr [ebx+10],esi; TZASAResultSet.?f10:dword
>0055CFE0    jno        0055CFE7
 0055CFE2    call       @IntOver
 0055CFE7    mov        byte ptr [ebp-1],1
 0055CFEB    xor        eax,eax
 0055CFED    mov        dword ptr [ebx+40],eax; TZASAResultSet.?f40:dword
 0055CFF0    mov        byte ptr [ebx+5E],0; TZASAResultSet.?f5E:byte
 0055CFF4    mov        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
 0055CFF8    mov        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055CFFC    jmp        0055D03B
 0055CFFE    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D001    mov        edx,dword ptr [eax]
 0055D003    call       dword ptr [edx+94]
 0055D009    mov        eax,dword ptr [eax+68]
 0055D00C    mov        dword ptr [ebx+40],eax; TZASAResultSet.?f40:dword
 0055D00F    mov        edi,dword ptr [ebx+40]; TZASAResultSet.?f40:dword
 0055D012    test       edi,edi
>0055D014    jle        0055D03B
 0055D016    cmp        dword ptr [ebx+10],0; TZASAResultSet.?f10:dword
>0055D01A    jle        0055D03B
 0055D01C    mov        eax,dword ptr [ebx+10]; TZASAResultSet.?f10:dword
 0055D01F    add        eax,esi
>0055D021    jno        0055D028
 0055D023    call       @IntOver
 0055D028    sub        eax,edi
>0055D02A    jno        0055D031
 0055D02C    call       @IntOver
 0055D031    xor        edx,edx
 0055D033    call       Max
 0055D038    mov        dword ptr [ebx+14],eax; TZASAResultSet.?f14:Integer
 0055D03B    xor        eax,eax
 0055D03D    pop        edx
 0055D03E    pop        ecx
 0055D03F    pop        ecx
 0055D040    mov        dword ptr fs:[eax],edx
 0055D043    push       55D063
 0055D048    lea        eax,[ebp-0C]
 0055D04B    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055D051    mov        ecx,2
 0055D056    call       @FinalizeArray
 0055D05B    ret
<0055D05C    jmp        @HandleFinally
<0055D061    jmp        0055D048
 0055D063    mov        al,byte ptr [ebp-1]
 0055D066    pop        edi
 0055D067    pop        esi
 0055D068    pop        ebx
 0055D069    mov        esp,ebp
 0055D06B    pop        ebp
 0055D06C    ret
*}
//end;

//0055D070
//procedure sub_0055D070(?:?);
//begin
{*
 0055D070    push       ebp
 0055D071    mov        ebp,esp
 0055D073    or         edx,0FFFFFFFF
 0055D076    mov        ecx,dword ptr [eax]
 0055D078    call       dword ptr [ecx+0F4]; TZASAResultSet.sub_0055CF04
 0055D07E    pop        ebp
 0055D07F    ret
*}
//end;

//0055D080
procedure sub_0055D080;
begin
{*
 0055D080    push       ebp
 0055D081    mov        ebp,esp
 0055D083    mov        edx,1
 0055D088    mov        ecx,dword ptr [eax]
 0055D08A    call       dword ptr [ecx+0F4]; TZASAResultSet.sub_0055CF04
 0055D090    pop        ebp
 0055D091    ret
*}
end;

//0055D094
procedure sub_0055D094;
begin
{*
 0055D094    push       ebp
 0055D095    mov        ebp,esp
 0055D097    add        esp,0FFFFFFE8
 0055D09A    push       ebx
 0055D09B    push       esi
 0055D09C    push       edi
 0055D09D    xor        edx,edx
 0055D09F    mov        dword ptr [ebp-18],edx
 0055D0A2    mov        dword ptr [ebp-14],edx
 0055D0A5    mov        dword ptr [ebp-10],edx
 0055D0A8    mov        dword ptr [ebp-4],eax
 0055D0AB    xor        eax,eax
 0055D0AD    push       ebp
 0055D0AE    push       55D23F
 0055D0B3    push       dword ptr fs:[eax]
 0055D0B6    mov        dword ptr fs:[eax],esp
 0055D0B9    mov        eax,dword ptr [ebp-4]
 0055D0BC    cmp        word ptr [eax+48],0; TZASAResultSet.?f48:word
>0055D0C1    jne        0055D0E4
 0055D0C3    lea        edx,[ebp-14]
 0055D0C6    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 0055D0CB    call       LoadResString
 0055D0D0    mov        ecx,dword ptr [ebp-14]
 0055D0D3    mov        dl,1
 0055D0D5    mov        eax,[004C6D20]; EZSQLException
 0055D0DA    call       EZSQLException.Create; EZSQLException.Create
 0055D0DF    call       @RaiseExcept
 0055D0E4    mov        eax,dword ptr [ebp-4]
 0055D0E7    mov        eax,dword ptr [eax+28]; TZASAResultSet.?f28:dword
 0055D0EA    mov        edx,dword ptr [eax]
 0055D0EC    call       dword ptr [edx+8]
 0055D0EF    mov        eax,dword ptr [ebp-4]
 0055D0F2    mov        eax,dword ptr [eax+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055D0F5    mov        edx,dword ptr [eax]
 0055D0F7    call       dword ptr [edx+24]
 0055D0FA    sub        eax,1
>0055D0FD    jno        0055D104
 0055D0FF    call       @IntOver
 0055D104    test       eax,eax
>0055D106    jl         0055D20A
 0055D10C    inc        eax
 0055D10D    mov        dword ptr [ebp-0C],eax
 0055D110    xor        esi,esi
 0055D112    mov        dl,1
 0055D114    mov        eax,[004D5F00]; TZColumnInfo
 0055D119    call       TZColumnInfo.Create; TZColumnInfo.Create
 0055D11E    mov        ebx,eax
 0055D120    lea        eax,[ebp-10]
 0055D123    mov        edx,dword ptr [ebp-4]
 0055D126    mov        edx,dword ptr [edx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055D129    call       @IntfCopy
 0055D12E    mov        edx,esi
 0055D130    cmp        edx,0FFFF
>0055D136    jbe        0055D13D
 0055D138    call       @BoundErr
 0055D13D    mov        eax,dword ptr [ebp-10]
 0055D140    mov        ecx,dword ptr [eax]
 0055D142    call       dword ptr [ecx+34]
 0055D145    mov        byte ptr [ebp-5],al
 0055D148    lea        ecx,[ebp-18]
 0055D14B    mov        edx,esi
 0055D14D    cmp        edx,0FFFF
>0055D153    jbe        0055D15A
 0055D155    call       @BoundErr
 0055D15A    mov        eax,dword ptr [ebp-10]
 0055D15D    mov        edi,dword ptr [eax]
 0055D15F    call       dword ptr [edi+28]
 0055D162    mov        edx,dword ptr [ebp-18]
 0055D165    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 0055D168    call       @LStrAsg
 0055D16D    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 0055D170    mov        edx,dword ptr [ebx+14]; TZColumnInfo.?f14:String
 0055D173    call       @LStrAsg
 0055D178    mov        al,byte ptr [ebp-5]
 0055D17B    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 0055D17E    mov        al,byte ptr [ebp-5]
 0055D181    add        al,0F7
 0055D183    sub        al,2
>0055D185    jae        0055D1A4
 0055D187    mov        edx,esi
 0055D189    cmp        edx,0FFFF
>0055D18F    jbe        0055D196
 0055D191    call       @BoundErr
 0055D196    mov        eax,dword ptr [ebp-10]
 0055D199    mov        ecx,dword ptr [eax]
 0055D19B    call       dword ptr [ecx+38]
 0055D19E    movzx      eax,ax
 0055D1A1    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 0055D1A4    mov        byte ptr [ebx+2D],0; TZColumnInfo.?f2D:byte
 0055D1A8    mov        edx,esi
 0055D1AA    cmp        edx,0FFFF
>0055D1B0    jbe        0055D1B7
 0055D1B2    call       @BoundErr
 0055D1B7    mov        eax,dword ptr [ebp-10]
 0055D1BA    mov        ecx,dword ptr [eax]
 0055D1BC    call       dword ptr [ecx+20]
 0055D1BF    test       al,al
>0055D1C1    je         0055D1C9
 0055D1C3    mov        byte ptr [ebx+8],1; TZColumnInfo.?f8:byte
>0055D1C7    jmp        0055D1CD
 0055D1C9    mov        byte ptr [ebx+8],0; TZColumnInfo.?f8:byte
 0055D1CD    mov        byte ptr [ebx+8],1; TZColumnInfo.?f8:byte
 0055D1D1    mov        edx,esi
 0055D1D3    cmp        edx,0FFFF
>0055D1D9    jbe        0055D1E0
 0055D1DB    call       @BoundErr
 0055D1E0    mov        eax,dword ptr [ebp-10]
 0055D1E3    mov        ecx,dword ptr [eax]
 0055D1E5    call       dword ptr [ecx+30]
 0055D1E8    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 0055D1EB    mov        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
 0055D1EF    mov        byte ptr [ebx+5],0; TZColumnInfo.?f5:byte
 0055D1F3    mov        eax,dword ptr [ebp-4]
 0055D1F6    mov        eax,dword ptr [eax+28]; TZASAResultSet.?f28:dword
 0055D1F9    mov        edx,ebx
 0055D1FB    call       00433178
 0055D200    inc        esi
 0055D201    dec        dword ptr [ebp-0C]
<0055D204    jne        0055D112
 0055D20A    mov        eax,dword ptr [ebp-4]
 0055D20D    mov        dword ptr [eax+14],7FFFFFFF; TZASAResultSet.?f14:Integer
 0055D214    mov        eax,dword ptr [ebp-4]
 0055D217    call       004D4580
 0055D21C    xor        eax,eax
 0055D21E    pop        edx
 0055D21F    pop        ecx
 0055D220    pop        ecx
 0055D221    mov        dword ptr fs:[eax],edx
 0055D224    push       55D246
 0055D229    lea        eax,[ebp-18]
 0055D22C    mov        edx,2
 0055D231    call       @LStrArrayClr
 0055D236    lea        eax,[ebp-10]
 0055D239    call       @IntfClear
 0055D23E    ret
<0055D23F    jmp        @HandleFinally
<0055D244    jmp        0055D229
 0055D246    pop        edi
 0055D247    pop        esi
 0055D248    pop        ebx
 0055D249    mov        esp,ebp
 0055D24B    pop        ebp
 0055D24C    ret
*}
end;

//0055D250
//procedure sub_0055D250(?:?);
//begin
{*
 0055D250    push       ebp
 0055D251    mov        ebp,esp
 0055D253    push       ebx
 0055D254    push       esi
 0055D255    mov        esi,edx
 0055D257    mov        ebx,eax
 0055D259    mov        eax,esi
 0055D25B    mov        edx,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055D25E    call       @LStrAsg
 0055D263    pop        esi
 0055D264    pop        ebx
 0055D265    pop        ebp
 0055D266    ret
*}
//end;

//0055D268
//function sub_0055D268:?;
//begin
{*
 0055D268    mov        al,byte ptr [eax+5D]; TZASAResultSet.?f5D:byte
 0055D26B    ret
*}
//end;

//0055D26C
//function sub_0055D26C:?;
//begin
{*
 0055D26C    mov        al,byte ptr [eax+5C]; TZASAResultSet.?f5C:byte
 0055D26F    ret
*}
//end;

//0055D270
//function sub_0055D270:?;
//begin
{*
 0055D270    mov        al,byte ptr [eax+5E]; TZASAResultSet.?f5E:byte
 0055D273    ret
*}
//end;

//0055D274
procedure sub_0055D274;
begin
{*
 0055D274    push       ebp
 0055D275    mov        ebp,esp
 0055D277    push       0
 0055D279    push       ebx
 0055D27A    mov        ebx,eax
 0055D27C    xor        eax,eax
 0055D27E    push       ebp
 0055D27F    push       55D32E
 0055D284    push       dword ptr fs:[eax]
 0055D287    mov        dword ptr fs:[eax],esp
 0055D28A    mov        al,byte ptr [ebx+5C]; TZASAResultSet.?f5C:byte
 0055D28D    xor        al,1
 0055D28F    mov        byte ptr [ebx+5D],al; TZASAResultSet.?f5D:byte
 0055D292    cmp        dword ptr [ebx+54],0; TZASAResultSet.?f54:IZASASQLDA
>0055D296    jne        0055D2ED
 0055D298    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D29B    mov        edx,dword ptr [eax]
 0055D29D    call       dword ptr [edx+94]
 0055D2A3    push       eax
 0055D2A4    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055D2A7    push       eax
 0055D2A8    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055D2AB    mov        edx,dword ptr [eax]
 0055D2AD    call       dword ptr [edx+24]
 0055D2B0    cmp        eax,0FFFF
>0055D2B5    jbe        0055D2BC
 0055D2B7    call       @BoundErr
 0055D2BC    push       eax
 0055D2BD    lea        edx,[ebp-4]
 0055D2C0    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D2C3    mov        ecx,dword ptr [eax]
 0055D2C5    call       dword ptr [ecx+98]
 0055D2CB    mov        ecx,dword ptr [ebp-4]
 0055D2CE    mov        dl,1
 0055D2D0    mov        eax,[00550BF8]; TZASASQLDA
 0055D2D5    call       TZASASQLDA.Create; TZASASQLDA.Create
 0055D2DA    mov        edx,eax
 0055D2DC    test       edx,edx
>0055D2DE    je         0055D2E3
 0055D2E0    sub        edx,0FFFFFFE0
 0055D2E3    lea        eax,[ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D2E6    call       @IntfCopy
>0055D2EB    jmp        0055D318
 0055D2ED    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D2F0    mov        edx,dword ptr [eax]
 0055D2F2    call       dword ptr [edx+24]
 0055D2F5    test       eax,eax
>0055D2F7    jne        0055D318
 0055D2F9    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055D2FC    mov        edx,dword ptr [eax]
 0055D2FE    call       dword ptr [edx+24]
 0055D301    mov        edx,eax
 0055D303    cmp        edx,0FFFF
>0055D309    jbe        0055D310
 0055D30B    call       @BoundErr
 0055D310    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D313    mov        ecx,dword ptr [eax]
 0055D315    call       dword ptr [ecx+0C]
 0055D318    xor        eax,eax
 0055D31A    pop        edx
 0055D31B    pop        ecx
 0055D31C    pop        ecx
 0055D31D    mov        dword ptr fs:[eax],edx
 0055D320    push       55D335
 0055D325    lea        eax,[ebp-4]
 0055D328    call       @IntfClear
 0055D32D    ret
<0055D32E    jmp        @HandleFinally
<0055D333    jmp        0055D325
 0055D335    pop        ebx
 0055D336    pop        ecx
 0055D337    pop        ebp
 0055D338    ret
*}
end;

//0055D33C
//procedure sub_0055D33C(?:?);
//begin
{*
 0055D33C    push       ebp
 0055D33D    mov        ebp,esp
 0055D33F    push       ebx
 0055D340    push       esi
 0055D341    mov        esi,edx
 0055D343    mov        ebx,eax
 0055D345    mov        eax,ebx
 0055D347    mov        edx,dword ptr [eax]
 0055D349    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D34F    mov        cl,1
 0055D351    mov        edx,esi
 0055D353    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D356    mov        ebx,dword ptr [eax]
 0055D358    call       dword ptr [ebx+3C]
 0055D35B    pop        esi
 0055D35C    pop        ebx
 0055D35D    pop        ebp
 0055D35E    ret
*}
//end;

//0055D360
//procedure sub_0055D360(?:?; ?:?);
//begin
{*
 0055D360    push       ebp
 0055D361    mov        ebp,esp
 0055D363    push       ebx
 0055D364    push       esi
 0055D365    push       edi
 0055D366    mov        ebx,ecx
 0055D368    mov        esi,edx
 0055D36A    mov        edi,eax
 0055D36C    mov        eax,edi
 0055D36E    mov        edx,dword ptr [eax]
 0055D370    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D376    mov        ecx,ebx
 0055D378    mov        edx,esi
 0055D37A    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D37D    mov        ebx,dword ptr [eax]
 0055D37F    call       dword ptr [ebx+40]
 0055D382    pop        edi
 0055D383    pop        esi
 0055D384    pop        ebx
 0055D385    pop        ebp
 0055D386    ret
*}
//end;

//0055D388
//procedure sub_0055D388(?:?; ?:?);
//begin
{*
 0055D388    push       ebp
 0055D389    mov        ebp,esp
 0055D38B    push       ebx
 0055D38C    push       esi
 0055D38D    push       edi
 0055D38E    mov        ebx,ecx
 0055D390    mov        esi,edx
 0055D392    mov        edi,eax
 0055D394    mov        eax,edi
 0055D396    mov        edx,dword ptr [eax]
 0055D398    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D39E    mov        ecx,ebx
 0055D3A0    mov        edx,esi
 0055D3A2    mov        eax,dword ptr [edi+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D3A5    mov        ebx,dword ptr [eax]
 0055D3A7    call       dword ptr [ebx+44]
 0055D3AA    pop        edi
 0055D3AB    pop        esi
 0055D3AC    pop        ebx
 0055D3AD    pop        ebp
 0055D3AE    ret
*}
//end;

//0055D3B0
//procedure sub_0055D3B0(?:?; ?:?);
//begin
{*
 0055D3B0    push       ebp
 0055D3B1    mov        ebp,esp
 0055D3B3    push       ebx
 0055D3B4    push       esi
 0055D3B5    push       edi
 0055D3B6    mov        edi,ecx
 0055D3B8    mov        esi,edx
 0055D3BA    mov        ebx,eax
 0055D3BC    mov        eax,ebx
 0055D3BE    mov        edx,dword ptr [eax]
 0055D3C0    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D3C6    mov        ecx,edi
 0055D3C8    mov        edx,esi
 0055D3CA    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D3CD    mov        ebx,dword ptr [eax]
 0055D3CF    call       dword ptr [ebx+48]
 0055D3D2    pop        edi
 0055D3D3    pop        esi
 0055D3D4    pop        ebx
 0055D3D5    pop        ebp
 0055D3D6    ret
*}
//end;

//0055D3D8
//procedure sub_0055D3D8(?:?; ?:?);
//begin
{*
 0055D3D8    push       ebp
 0055D3D9    mov        ebp,esp
 0055D3DB    push       ebx
 0055D3DC    push       esi
 0055D3DD    push       edi
 0055D3DE    mov        edi,ecx
 0055D3E0    mov        esi,edx
 0055D3E2    mov        ebx,eax
 0055D3E4    mov        eax,ebx
 0055D3E6    mov        edx,dword ptr [eax]
 0055D3E8    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D3EE    mov        ecx,edi
 0055D3F0    mov        edx,esi
 0055D3F2    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D3F5    mov        ebx,dword ptr [eax]
 0055D3F7    call       dword ptr [ebx+4C]
 0055D3FA    pop        edi
 0055D3FB    pop        esi
 0055D3FC    pop        ebx
 0055D3FD    pop        ebp
 0055D3FE    ret
*}
//end;

//0055D400
//procedure sub_0055D400(?:?; ?:?; ?:?);
//begin
{*
 0055D400    push       ebp
 0055D401    mov        ebp,esp
 0055D403    push       ebx
 0055D404    push       esi
 0055D405    mov        esi,edx
 0055D407    mov        ebx,eax
 0055D409    mov        eax,ebx
 0055D40B    mov        edx,dword ptr [eax]
 0055D40D    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D413    push       dword ptr [ebp+0C]
 0055D416    push       dword ptr [ebp+8]
 0055D419    mov        edx,esi
 0055D41B    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D41E    mov        ecx,dword ptr [eax]
 0055D420    call       dword ptr [ecx+50]
 0055D423    pop        esi
 0055D424    pop        ebx
 0055D425    pop        ebp
 0055D426    ret        8
*}
//end;

//0055D42C
//procedure sub_0055D42C(?:?; ?:?);
//begin
{*
 0055D42C    push       ebp
 0055D42D    mov        ebp,esp
 0055D42F    push       ebx
 0055D430    push       esi
 0055D431    mov        esi,edx
 0055D433    mov        ebx,eax
 0055D435    mov        eax,ebx
 0055D437    mov        edx,dword ptr [eax]
 0055D439    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D43F    push       dword ptr [ebp+8]
 0055D442    mov        edx,esi
 0055D444    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D447    mov        ecx,dword ptr [eax]
 0055D449    call       dword ptr [ecx+54]
 0055D44C    pop        esi
 0055D44D    pop        ebx
 0055D44E    pop        ebp
 0055D44F    ret        4
*}
//end;

//0055D454
//procedure sub_0055D454(?:?; ?:?; ?:?);
//begin
{*
 0055D454    push       ebp
 0055D455    mov        ebp,esp
 0055D457    push       ebx
 0055D458    push       esi
 0055D459    mov        esi,edx
 0055D45B    mov        ebx,eax
 0055D45D    mov        eax,ebx
 0055D45F    mov        edx,dword ptr [eax]
 0055D461    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D467    push       dword ptr [ebp+0C]
 0055D46A    push       dword ptr [ebp+8]
 0055D46D    mov        edx,esi
 0055D46F    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D472    mov        ecx,dword ptr [eax]
 0055D474    call       dword ptr [ecx+58]
 0055D477    pop        esi
 0055D478    pop        ebx
 0055D479    pop        ebp
 0055D47A    ret        8
*}
//end;

//0055D480
//procedure sub_0055D480(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055D480    push       ebp
 0055D481    mov        ebp,esp
 0055D483    push       ebx
 0055D484    push       esi
 0055D485    mov        esi,edx
 0055D487    mov        ebx,eax
 0055D489    mov        eax,ebx
 0055D48B    mov        edx,dword ptr [eax]
 0055D48D    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D493    mov        ax,word ptr [ebp+10]
 0055D497    push       eax
 0055D498    push       dword ptr [ebp+0C]
 0055D49B    push       dword ptr [ebp+8]
 0055D49E    mov        edx,esi
 0055D4A0    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D4A3    mov        ecx,dword ptr [eax]
 0055D4A5    call       dword ptr [ecx+5C]
 0055D4A8    pop        esi
 0055D4A9    pop        ebx
 0055D4AA    pop        ebp
 0055D4AB    ret        0C
*}
//end;

//0055D4B0
//procedure sub_0055D4B0(?:?; ?:?);
//begin
{*
 0055D4B0    push       ebp
 0055D4B1    mov        ebp,esp
 0055D4B3    push       ebx
 0055D4B4    push       esi
 0055D4B5    push       edi
 0055D4B6    mov        edi,ecx
 0055D4B8    mov        esi,edx
 0055D4BA    mov        ebx,eax
 0055D4BC    mov        eax,ebx
 0055D4BE    mov        edx,dword ptr [eax]
 0055D4C0    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D4C6    mov        ecx,edi
 0055D4C8    mov        edx,esi
 0055D4CA    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D4CD    mov        ebx,dword ptr [eax]
 0055D4CF    call       dword ptr [ebx+60]
 0055D4D2    pop        edi
 0055D4D3    pop        esi
 0055D4D4    pop        ebx
 0055D4D5    pop        ebp
 0055D4D6    ret
*}
//end;

//0055D4D8
//procedure sub_0055D4D8(?:?; ?:?);
//begin
{*
 0055D4D8    push       ebp
 0055D4D9    mov        ebp,esp
 0055D4DB    push       ebx
 0055D4DC    push       esi
 0055D4DD    push       edi
 0055D4DE    mov        edi,ecx
 0055D4E0    mov        esi,edx
 0055D4E2    mov        ebx,eax
 0055D4E4    mov        eax,ebx
 0055D4E6    mov        edx,dword ptr [eax]
 0055D4E8    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D4EE    mov        ecx,edi
 0055D4F0    mov        edx,esi
 0055D4F2    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D4F5    mov        ebx,dword ptr [eax]
 0055D4F7    call       dword ptr [ebx+64]
 0055D4FA    pop        edi
 0055D4FB    pop        esi
 0055D4FC    pop        ebx
 0055D4FD    pop        ebp
 0055D4FE    ret
*}
//end;

//0055D500
//procedure sub_0055D500(?:?; ?:?);
//begin
{*
 0055D500    push       ebp
 0055D501    mov        ebp,esp
 0055D503    push       ebx
 0055D504    push       esi
 0055D505    push       edi
 0055D506    mov        edi,ecx
 0055D508    mov        esi,edx
 0055D50A    mov        ebx,eax
 0055D50C    mov        eax,ebx
 0055D50E    mov        edx,dword ptr [eax]
 0055D510    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D516    mov        ecx,edi
 0055D518    mov        edx,esi
 0055D51A    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D51D    mov        ebx,dword ptr [eax]
 0055D51F    call       dword ptr [ebx+60]
 0055D522    pop        edi
 0055D523    pop        esi
 0055D524    pop        ebx
 0055D525    pop        ebp
 0055D526    ret
*}
//end;

//0055D528
//procedure sub_0055D528(?:?; ?:?);
//begin
{*
 0055D528    push       ebp
 0055D529    mov        ebp,esp
 0055D52B    push       ebx
 0055D52C    push       esi
 0055D52D    push       edi
 0055D52E    mov        edi,ecx
 0055D530    mov        esi,edx
 0055D532    mov        ebx,eax
 0055D534    mov        eax,ebx
 0055D536    mov        edx,dword ptr [eax]
 0055D538    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D53E    mov        ecx,edi
 0055D540    mov        edx,esi
 0055D542    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D545    mov        ebx,dword ptr [eax]
 0055D547    call       dword ptr [ebx+68]
 0055D54A    pop        edi
 0055D54B    pop        esi
 0055D54C    pop        ebx
 0055D54D    pop        ebp
 0055D54E    ret
*}
//end;

//0055D550
//procedure sub_0055D550(?:?; ?:?; ?:?);
//begin
{*
 0055D550    push       ebp
 0055D551    mov        ebp,esp
 0055D553    push       ebx
 0055D554    push       esi
 0055D555    mov        esi,edx
 0055D557    mov        ebx,eax
 0055D559    mov        eax,ebx
 0055D55B    mov        edx,dword ptr [eax]
 0055D55D    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D563    push       dword ptr [ebp+0C]
 0055D566    push       dword ptr [ebp+8]
 0055D569    mov        edx,esi
 0055D56B    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D56E    mov        ecx,dword ptr [eax]
 0055D570    call       dword ptr [ecx+6C]
 0055D573    pop        esi
 0055D574    pop        ebx
 0055D575    pop        ebp
 0055D576    ret        8
*}
//end;

//0055D57C
//procedure sub_0055D57C(?:?; ?:?; ?:?);
//begin
{*
 0055D57C    push       ebp
 0055D57D    mov        ebp,esp
 0055D57F    push       ebx
 0055D580    push       esi
 0055D581    mov        esi,edx
 0055D583    mov        ebx,eax
 0055D585    mov        eax,ebx
 0055D587    mov        edx,dword ptr [eax]
 0055D589    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D58F    push       dword ptr [ebp+0C]
 0055D592    push       dword ptr [ebp+8]
 0055D595    mov        edx,esi
 0055D597    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D59A    mov        ecx,dword ptr [eax]
 0055D59C    call       dword ptr [ecx+70]
 0055D59F    pop        esi
 0055D5A0    pop        ebx
 0055D5A1    pop        ebp
 0055D5A2    ret        8
*}
//end;

//0055D5A8
//procedure sub_0055D5A8(?:?; ?:?; ?:?);
//begin
{*
 0055D5A8    push       ebp
 0055D5A9    mov        ebp,esp
 0055D5AB    push       ebx
 0055D5AC    push       esi
 0055D5AD    mov        esi,edx
 0055D5AF    mov        ebx,eax
 0055D5B1    mov        eax,ebx
 0055D5B3    mov        edx,dword ptr [eax]
 0055D5B5    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D5BB    push       dword ptr [ebp+0C]
 0055D5BE    push       dword ptr [ebp+8]
 0055D5C1    mov        edx,esi
 0055D5C3    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D5C6    mov        ecx,dword ptr [eax]
 0055D5C8    call       dword ptr [ecx+74]
 0055D5CB    pop        esi
 0055D5CC    pop        ebx
 0055D5CD    pop        ebp
 0055D5CE    ret        8
*}
//end;

//0055D5D4
//procedure sub_0055D5D4(?:?; ?:?);
//begin
{*
 0055D5D4    push       ebp
 0055D5D5    mov        ebp,esp
 0055D5D7    push       ebx
 0055D5D8    push       esi
 0055D5D9    push       edi
 0055D5DA    mov        edi,ecx
 0055D5DC    mov        esi,edx
 0055D5DE    mov        ebx,eax
 0055D5E0    mov        eax,ebx
 0055D5E2    mov        edx,dword ptr [eax]
 0055D5E4    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D5EA    mov        ecx,edi
 0055D5EC    mov        edx,esi
 0055D5EE    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D5F1    mov        ebx,dword ptr [eax]
 0055D5F3    call       dword ptr [ebx+7C]
 0055D5F6    pop        edi
 0055D5F7    pop        esi
 0055D5F8    pop        ebx
 0055D5F9    pop        ebp
 0055D5FA    ret
*}
//end;

//0055D5FC
//procedure sub_0055D5FC(?:?; ?:?);
//begin
{*
 0055D5FC    push       ebp
 0055D5FD    mov        ebp,esp
 0055D5FF    push       ebx
 0055D600    push       esi
 0055D601    push       edi
 0055D602    mov        edi,ecx
 0055D604    mov        esi,edx
 0055D606    mov        ebx,eax
 0055D608    mov        eax,ebx
 0055D60A    mov        edx,dword ptr [eax]
 0055D60C    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D612    mov        ecx,edi
 0055D614    mov        edx,esi
 0055D616    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D619    mov        ebx,dword ptr [eax]
 0055D61B    call       dword ptr [ebx+7C]
 0055D61E    pop        edi
 0055D61F    pop        esi
 0055D620    pop        ebx
 0055D621    pop        ebp
 0055D622    ret
*}
//end;

//0055D624
//procedure sub_0055D624(?:?; ?:?);
//begin
{*
 0055D624    push       ebp
 0055D625    mov        ebp,esp
 0055D627    push       ebx
 0055D628    push       esi
 0055D629    push       edi
 0055D62A    mov        edi,ecx
 0055D62C    mov        esi,edx
 0055D62E    mov        ebx,eax
 0055D630    mov        eax,ebx
 0055D632    mov        edx,dword ptr [eax]
 0055D634    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D63A    mov        ecx,edi
 0055D63C    mov        edx,esi
 0055D63E    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D641    mov        ebx,dword ptr [eax]
 0055D643    call       dword ptr [ebx+7C]
 0055D646    pop        edi
 0055D647    pop        esi
 0055D648    pop        ebx
 0055D649    pop        ebp
 0055D64A    ret
*}
//end;

//0055D64C
//procedure sub_0055D64C(?:?; ?:?);
//begin
{*
 0055D64C    push       ebp
 0055D64D    mov        ebp,esp
 0055D64F    push       0
 0055D651    push       0
 0055D653    push       0
 0055D655    push       0
 0055D657    push       ebx
 0055D658    push       esi
 0055D659    push       edi
 0055D65A    mov        edi,ecx
 0055D65C    mov        esi,edx
 0055D65E    mov        ebx,eax
 0055D660    xor        eax,eax
 0055D662    push       ebp
 0055D663    push       55D6B2
 0055D668    push       dword ptr fs:[eax]
 0055D66B    mov        dword ptr fs:[eax],esp
 0055D66E    mov        eax,ebx
 0055D670    mov        edx,dword ptr [eax]
 0055D672    call       dword ptr [edx+1E4]; TZASAResultSet.sub_0055D274
 0055D678    lea        edx,[ebp-10]
 0055D67B    mov        eax,edi
 0055D67D    call       004C66C0
 0055D682    lea        ecx,[ebp-10]
 0055D685    mov        edx,esi
 0055D687    cmp        edx,0FFFF
>0055D68D    jbe        0055D694
 0055D68F    call       @BoundErr
 0055D694    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D697    mov        ebx,dword ptr [eax]
 0055D699    call       dword ptr [ebx+78]
 0055D69C    xor        eax,eax
 0055D69E    pop        edx
 0055D69F    pop        ecx
 0055D6A0    pop        ecx
 0055D6A1    mov        dword ptr fs:[eax],edx
 0055D6A4    push       55D6B9
 0055D6A9    lea        eax,[ebp-10]
 0055D6AC    call       @VarClr
 0055D6B1    ret
<0055D6B2    jmp        @HandleFinally
<0055D6B7    jmp        0055D6A9
 0055D6B9    pop        edi
 0055D6BA    pop        esi
 0055D6BB    pop        ebx
 0055D6BC    mov        esp,ebp
 0055D6BE    pop        ebp
 0055D6BF    ret
*}
//end;

//0055D6C0
procedure sub_0055D6C0;
begin
{*
 0055D6C0    push       ebp
 0055D6C1    mov        ebp,esp
 0055D6C3    push       0
 0055D6C5    push       0
 0055D6C7    push       ebx
 0055D6C8    push       esi
 0055D6C9    mov        ebx,eax
 0055D6CB    xor        eax,eax
 0055D6CD    push       ebp
 0055D6CE    push       55D786
 0055D6D3    push       dword ptr fs:[eax]
 0055D6D6    mov        dword ptr fs:[eax],esp
 0055D6D9    cmp        dword ptr [ebx+54],0; TZASAResultSet.?f54:IZASASQLDA
>0055D6DD    je         0055D765
 0055D6E3    cmp        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
>0055D6E7    je         0055D765
 0055D6E9    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D6EC    mov        edx,dword ptr [eax]
 0055D6EE    call       dword ptr [edx+18]
 0055D6F1    push       eax
 0055D6F2    mov        eax,dword ptr [ebx+4C]; TZASAResultSet.?f4C:IZASASQLDA
 0055D6F5    mov        edx,dword ptr [eax]
 0055D6F7    call       dword ptr [edx+18]
 0055D6FA    push       eax
 0055D6FB    lea        edx,[ebp-4]
 0055D6FE    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D701    mov        ecx,dword ptr [eax]
 0055D703    call       dword ptr [ecx+98]
 0055D709    mov        eax,dword ptr [ebp-4]
 0055D70C    push       eax
 0055D70D    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D710    mov        edx,dword ptr [eax]
 0055D712    call       dword ptr [edx+94]
 0055D718    push       eax
 0055D719    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055D71C    call       @LStrToPChar
 0055D721    mov        ecx,eax
 0055D723    pop        edx
 0055D724    pop        eax
 0055D725    mov        esi,dword ptr [eax]
 0055D727    call       dword ptr [esi+98]
 0055D72D    push       55D79C; 'Insert row'
 0055D732    lea        edx,[ebp-8]
 0055D735    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D738    mov        ecx,dword ptr [eax]
 0055D73A    call       dword ptr [ecx+98]
 0055D740    mov        eax,dword ptr [ebp-8]
 0055D743    push       eax
 0055D744    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D747    mov        edx,dword ptr [eax]
 0055D749    call       dword ptr [edx+94]
 0055D74F    mov        edx,eax
 0055D751    mov        cl,4
 0055D753    pop        eax
 0055D754    call       00556588
 0055D759    mov        byte ptr [ebx+5C],0; TZASAResultSet.?f5C:byte
 0055D75D    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D760    mov        edx,dword ptr [eax]
 0055D762    call       dword ptr [edx+14]
 0055D765    xor        eax,eax
 0055D767    pop        edx
 0055D768    pop        ecx
 0055D769    pop        ecx
 0055D76A    mov        dword ptr fs:[eax],edx
 0055D76D    push       55D78D
 0055D772    lea        eax,[ebp-8]
 0055D775    mov        edx,dword ptr ds:[54EF94]; IZASAPlainDriver
 0055D77B    mov        ecx,2
 0055D780    call       @FinalizeArray
 0055D785    ret
<0055D786    jmp        @HandleFinally
<0055D78B    jmp        0055D772
 0055D78D    pop        esi
 0055D78E    pop        ebx
 0055D78F    pop        ecx
 0055D790    pop        ecx
 0055D791    pop        ebp
 0055D792    ret
*}
end;

//0055D7A8
procedure sub_0055D7A8;
begin
{*
 0055D7A8    push       ebp
 0055D7A9    mov        ebp,esp
 0055D7AB    xor        ecx,ecx
 0055D7AD    push       ecx
 0055D7AE    push       ecx
 0055D7AF    push       ecx
 0055D7B0    push       ecx
 0055D7B1    push       ebx
 0055D7B2    push       esi
 0055D7B3    mov        ebx,eax
 0055D7B5    xor        eax,eax
 0055D7B7    push       ebp
 0055D7B8    push       55D88F
 0055D7BD    push       dword ptr fs:[eax]
 0055D7C0    mov        dword ptr fs:[eax],esp
 0055D7C3    cmp        dword ptr [ebx+54],0; TZASAResultSet.?f54:IZASASQLDA
>0055D7C7    je         0055D864
 0055D7CD    cmp        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
>0055D7D1    je         0055D864
 0055D7D7    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D7DA    mov        edx,dword ptr [eax]
 0055D7DC    call       dword ptr [edx+18]
 0055D7DF    push       eax
 0055D7E0    lea        edx,[ebp-4]
 0055D7E3    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D7E6    mov        ecx,dword ptr [eax]
 0055D7E8    call       dword ptr [ecx+98]
 0055D7EE    mov        eax,dword ptr [ebp-4]
 0055D7F1    push       eax
 0055D7F2    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D7F5    mov        edx,dword ptr [eax]
 0055D7F7    call       dword ptr [edx+94]
 0055D7FD    push       eax
 0055D7FE    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055D801    call       @LStrToPChar
 0055D806    mov        ecx,eax
 0055D808    pop        edx
 0055D809    pop        eax
 0055D80A    mov        esi,dword ptr [eax]
 0055D80C    call       dword ptr [esi+94]
 0055D812    lea        edx,[ebp-0C]
 0055D815    mov        eax,dword ptr [ebx+10]; TZASAResultSet.?f10:dword
 0055D818    call       IntToStr
 0055D81D    mov        ecx,dword ptr [ebp-0C]
 0055D820    lea        eax,[ebp-8]
 0055D823    mov        edx,55D8A4; 'Update row:'
 0055D828    call       @LStrCat3
 0055D82D    mov        eax,dword ptr [ebp-8]
 0055D830    push       eax
 0055D831    lea        edx,[ebp-10]
 0055D834    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D837    mov        ecx,dword ptr [eax]
 0055D839    call       dword ptr [ecx+98]
 0055D83F    mov        eax,dword ptr [ebp-10]
 0055D842    push       eax
 0055D843    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D846    mov        edx,dword ptr [eax]
 0055D848    call       dword ptr [edx+94]
 0055D84E    mov        edx,eax
 0055D850    mov        cl,4
 0055D852    pop        eax
 0055D853    call       00556588
 0055D858    mov        byte ptr [ebx+5D],0; TZASAResultSet.?f5D:byte
 0055D85C    mov        eax,dword ptr [ebx+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D85F    mov        edx,dword ptr [eax]
 0055D861    call       dword ptr [edx+14]
 0055D864    xor        eax,eax
 0055D866    pop        edx
 0055D867    pop        ecx
 0055D868    pop        ecx
 0055D869    mov        dword ptr fs:[eax],edx
 0055D86C    push       55D896
 0055D871    lea        eax,[ebp-10]
 0055D874    call       @IntfClear
 0055D879    lea        eax,[ebp-0C]
 0055D87C    mov        edx,2
 0055D881    call       @LStrArrayClr
 0055D886    lea        eax,[ebp-4]
 0055D889    call       @IntfClear
 0055D88E    ret
<0055D88F    jmp        @HandleFinally
<0055D894    jmp        0055D871
 0055D896    pop        esi
 0055D897    pop        ebx
 0055D898    mov        esp,ebp
 0055D89A    pop        ebp
 0055D89B    ret
*}
end;

//0055D8B0
procedure sub_0055D8B0;
begin
{*
 0055D8B0    push       ebp
 0055D8B1    mov        ebp,esp
 0055D8B3    xor        ecx,ecx
 0055D8B5    push       ecx
 0055D8B6    push       ecx
 0055D8B7    push       ecx
 0055D8B8    push       ecx
 0055D8B9    push       ebx
 0055D8BA    push       esi
 0055D8BB    mov        ebx,eax
 0055D8BD    xor        eax,eax
 0055D8BF    push       ebp
 0055D8C0    push       55D993
 0055D8C5    push       dword ptr fs:[eax]
 0055D8C8    mov        dword ptr fs:[eax],esp
 0055D8CB    lea        edx,[ebp-4]
 0055D8CE    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D8D1    mov        ecx,dword ptr [eax]
 0055D8D3    call       dword ptr [ecx+98]
 0055D8D9    mov        eax,dword ptr [ebp-4]
 0055D8DC    push       eax
 0055D8DD    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D8E0    mov        edx,dword ptr [eax]
 0055D8E2    call       dword ptr [edx+94]
 0055D8E8    push       eax
 0055D8E9    mov        eax,dword ptr [ebx+44]; TZASAResultSet.?f44:String
 0055D8EC    call       @LStrToPChar
 0055D8F1    mov        ecx,eax
 0055D8F3    pop        edx
 0055D8F4    pop        eax
 0055D8F5    mov        esi,dword ptr [eax]
 0055D8F7    call       dword ptr [esi+90]
 0055D8FD    lea        edx,[ebp-0C]
 0055D900    mov        eax,dword ptr [ebx+10]; TZASAResultSet.?f10:dword
 0055D903    call       IntToStr
 0055D908    mov        ecx,dword ptr [ebp-0C]
 0055D90B    lea        eax,[ebp-8]
 0055D90E    mov        edx,55D9A8; 'Delete row:'
 0055D913    call       @LStrCat3
 0055D918    mov        eax,dword ptr [ebp-8]
 0055D91B    push       eax
 0055D91C    lea        edx,[ebp-10]
 0055D91F    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D922    mov        ecx,dword ptr [eax]
 0055D924    call       dword ptr [ecx+98]
 0055D92A    mov        eax,dword ptr [ebp-10]
 0055D92D    push       eax
 0055D92E    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D931    mov        edx,dword ptr [eax]
 0055D933    call       dword ptr [edx+94]
 0055D939    mov        edx,eax
 0055D93B    mov        cl,4
 0055D93D    pop        eax
 0055D93E    call       00556588
 0055D943    mov        byte ptr [ebx+5E],1; TZASAResultSet.?f5E:byte
 0055D947    cmp        dword ptr [ebx+14],7FFFFFFF; TZASAResultSet.?f14:Integer
>0055D94E    je         0055D968
 0055D950    mov        eax,dword ptr [ebx+58]; TZASAResultSet.?f58:IZASAConnection
 0055D953    mov        edx,dword ptr [eax]
 0055D955    call       dword ptr [edx+94]
 0055D95B    mov        eax,dword ptr [eax+68]
 0055D95E    sub        dword ptr [ebx+14],eax
>0055D961    jno        0055D968
 0055D963    call       @IntOver
 0055D968    xor        eax,eax
 0055D96A    pop        edx
 0055D96B    pop        ecx
 0055D96C    pop        ecx
 0055D96D    mov        dword ptr fs:[eax],edx
 0055D970    push       55D99A
 0055D975    lea        eax,[ebp-10]
 0055D978    call       @IntfClear
 0055D97D    lea        eax,[ebp-0C]
 0055D980    mov        edx,2
 0055D985    call       @LStrArrayClr
 0055D98A    lea        eax,[ebp-4]
 0055D98D    call       @IntfClear
 0055D992    ret
<0055D993    jmp        @HandleFinally
<0055D998    jmp        0055D975
 0055D99A    pop        esi
 0055D99B    pop        ebx
 0055D99C    mov        esp,ebp
 0055D99E    pop        ebp
 0055D99F    ret
*}
end;

//0055D9B4
procedure sub_0055D9B4;
begin
{*
 0055D9B4    push       ebp
 0055D9B5    mov        ebp,esp
 0055D9B7    xor        edx,edx
 0055D9B9    mov        ecx,dword ptr [eax]
 0055D9BB    call       dword ptr [ecx+0F4]; TZASAResultSet.sub_0055CF04
 0055D9C1    pop        ebp
 0055D9C2    ret
*}
end;

//0055D9C4
procedure sub_0055D9C4;
begin
{*
 0055D9C4    push       ebp
 0055D9C5    mov        ebp,esp
 0055D9C7    mov        byte ptr [eax+5D],0; TZASAResultSet.?f5D:byte
 0055D9CB    cmp        dword ptr [eax+54],0; TZASAResultSet.?f54:IZASASQLDA
>0055D9CF    je         0055D9D9
 0055D9D1    mov        eax,dword ptr [eax+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D9D4    mov        edx,dword ptr [eax]
 0055D9D6    call       dword ptr [edx+14]
 0055D9D9    pop        ebp
 0055D9DA    ret
*}
end;

//0055D9DC
procedure sub_0055D9DC;
begin
{*
 0055D9DC    mov        byte ptr [eax+5C],1; TZASAResultSet.?f5C:byte
 0055D9E0    ret
*}
end;

//0055D9E4
procedure sub_0055D9E4;
begin
{*
 0055D9E4    push       ebp
 0055D9E5    mov        ebp,esp
 0055D9E7    mov        byte ptr [eax+5C],0; TZASAResultSet.?f5C:byte
 0055D9EB    cmp        dword ptr [eax+54],0; TZASAResultSet.?f54:IZASASQLDA
>0055D9EF    je         0055D9F9
 0055D9F1    mov        eax,dword ptr [eax+54]; TZASAResultSet.?f54:IZASASQLDA
 0055D9F4    mov        edx,dword ptr [eax]
 0055D9F6    call       dword ptr [edx+14]
 0055D9F9    pop        ebp
 0055D9FA    ret
*}
end;

//0055D9FC
//procedure sub_0055D9FC(?:?);
//begin
{*
 0055D9FC    push       ebp
 0055D9FD    mov        ebp,esp
 0055D9FF    push       ecx
 0055DA00    push       ebx
 0055DA01    push       esi
 0055DA02    mov        dword ptr [ebp-4],edx
 0055DA05    mov        ebx,eax
 0055DA07    xor        esi,esi
 0055DA09    mov        eax,dword ptr [ebx+10]; TZASABlob.?f10:Longint
 0055DA0C    test       eax,eax
>0055DA0E    jle        0055DA24
 0055DA10    call       @GetMem
 0055DA15    mov        esi,eax
 0055DA17    mov        edx,esi
 0055DA19    mov        eax,dword ptr [ebx+0C]; TZASABlob.?fC:Pointer
 0055DA1C    mov        ecx,dword ptr [ebx+10]; TZASABlob.?f10:Longint
 0055DA1F    call       Move
 0055DA24    mov        eax,dword ptr [ebx+10]; TZASABlob.?f10:Longint
 0055DA27    push       eax
 0055DA28    mov        ecx,esi
 0055DA2A    mov        dl,1
 0055DA2C    mov        eax,[0055C39C]; TZASABlob
 0055DA31    call       TZASABlob.Create; TZASABlob.Create
 0055DA36    mov        edx,eax
 0055DA38    test       edx,edx
>0055DA3A    je         0055DA3F
 0055DA3C    sub        edx,0FFFFFFE8
 0055DA3F    mov        eax,dword ptr [ebp-4]
 0055DA42    call       @IntfCopy
 0055DA47    pop        esi
 0055DA48    pop        ebx
 0055DA49    pop        ecx
 0055DA4A    pop        ebp
 0055DA4B    ret
*}
//end;

//0055DA4C
//constructor TZASABlob.Create(?:TZASABlob; _Dv__:Boolean; ?:?);
//begin
{*
 0055DA4C    push       ebp
 0055DA4D    mov        ebp,esp
 0055DA4F    push       ebx
 0055DA50    push       esi
 0055DA51    push       edi
 0055DA52    test       dl,dl
>0055DA54    je         0055DA5E
 0055DA56    add        esp,0FFFFFFF0
 0055DA59    call       @ClassCreate
 0055DA5E    mov        esi,ecx
 0055DA60    mov        ebx,edx
 0055DA62    mov        edi,eax
 0055DA64    xor        edx,edx
 0055DA66    mov        eax,edi
 0055DA68    call       TObject.Create
 0055DA6D    mov        byte ptr [edi+1C],0; TZASABlob.?f1C:byte
 0055DA71    mov        dword ptr [edi+20],esi; TZASABlob.?f20:dword
 0055DA74    mov        eax,dword ptr [ebp+8]
 0055DA77    mov        dword ptr [edi+24],eax; TZASABlob.?f24:dword
 0055DA7A    mov        eax,edi
 0055DA7C    test       bl,bl
>0055DA7E    je         0055DA8F
 0055DA80    call       @AfterConstruction
 0055DA85    pop        dword ptr fs:[0]
 0055DA8C    add        esp,0C
 0055DA8F    mov        eax,edi
 0055DA91    pop        edi
 0055DA92    pop        esi
 0055DA93    pop        ebx
 0055DA94    pop        ebp
 0055DA95    ret        4
*}
//end;

//0055DA98
//constructor TZASABlob.Create(?:TZASABlob; _Dv__:Boolean; ?:?);
//begin
{*
 0055DA98    push       ebp
 0055DA99    mov        ebp,esp
 0055DA9B    push       ebx
 0055DA9C    push       esi
 0055DA9D    push       edi
 0055DA9E    test       dl,dl
>0055DAA0    je         0055DAAA
 0055DAA2    add        esp,0FFFFFFF0
 0055DAA5    call       @ClassCreate
 0055DAAA    mov        esi,ecx
 0055DAAC    mov        ebx,edx
 0055DAAE    mov        edi,eax
 0055DAB0    xor        edx,edx
 0055DAB2    mov        eax,edi
 0055DAB4    call       TObject.Create
 0055DAB9    mov        dword ptr [edi+0C],esi; TZASABlob.?fC:Pointer
 0055DABC    mov        eax,dword ptr [ebp+8]
 0055DABF    mov        dword ptr [edi+10],eax; TZASABlob.?f10:Longint
 0055DAC2    mov        byte ptr [edi+14],0; TZASABlob.?f14:byte
 0055DAC6    mov        byte ptr [edi+1C],1; TZASABlob.?f1C:byte
 0055DACA    mov        eax,edi
 0055DACC    test       bl,bl
>0055DACE    je         0055DADF
 0055DAD0    call       @AfterConstruction
 0055DAD5    pop        dword ptr fs:[0]
 0055DADC    add        esp,0C
 0055DADF    mov        eax,edi
 0055DAE1    pop        edi
 0055DAE2    pop        esi
 0055DAE3    pop        ebx
 0055DAE4    pop        ebp
 0055DAE5    ret        4
*}
//end;

//0055DAE8
//procedure sub_0055DAE8(?:?);
//begin
{*
 0055DAE8    push       ebp
 0055DAE9    mov        ebp,esp
 0055DAEB    push       ebx
 0055DAEC    push       esi
 0055DAED    mov        esi,edx
 0055DAEF    mov        ebx,eax
 0055DAF1    mov        eax,ebx
 0055DAF3    call       0055DB78
 0055DAF8    mov        edx,esi
 0055DAFA    mov        eax,ebx
 0055DAFC    call       004D5C64
 0055DB01    pop        esi
 0055DB02    pop        ebx
 0055DB03    pop        ebp
 0055DB04    ret
*}
//end;

//0055DB08
procedure sub_0055DB08;
begin
{*
 0055DB08    push       ebp
 0055DB09    mov        ebp,esp
 0055DB0B    push       ebx
 0055DB0C    mov        ebx,eax
 0055DB0E    mov        eax,ebx
 0055DB10    call       0055DB78
 0055DB15    mov        eax,ebx
 0055DB17    call       004D5E0C
 0055DB1C    pop        ebx
 0055DB1D    pop        ebp
 0055DB1E    ret
*}
end;

//0055DB20
//procedure sub_0055DB20(?:?);
//begin
{*
 0055DB20    push       ebp
 0055DB21    mov        ebp,esp
 0055DB23    push       ebx
 0055DB24    push       esi
 0055DB25    mov        esi,edx
 0055DB27    mov        ebx,eax
 0055DB29    mov        eax,ebx
 0055DB2B    call       0055DB78
 0055DB30    mov        edx,esi
 0055DB32    mov        eax,ebx
 0055DB34    call       004D5B4C
 0055DB39    pop        esi
 0055DB3A    pop        ebx
 0055DB3B    pop        ebp
 0055DB3C    ret
*}
//end;

//0055DB40
//procedure sub_0055DB40(?:?);
//begin
{*
 0055DB40    push       ebp
 0055DB41    mov        ebp,esp
 0055DB43    push       ebx
 0055DB44    push       esi
 0055DB45    mov        esi,edx
 0055DB47    mov        ebx,eax
 0055DB49    mov        eax,ebx
 0055DB4B    call       0055DB78
 0055DB50    mov        edx,esi
 0055DB52    mov        eax,ebx
 0055DB54    call       004D5BC4
 0055DB59    pop        esi
 0055DB5A    pop        ebx
 0055DB5B    pop        ebp
 0055DB5C    ret
*}
//end;

//0055DB60
procedure sub_0055DB60;
begin
{*
 0055DB60    push       ebp
 0055DB61    mov        ebp,esp
 0055DB63    push       ebx
 0055DB64    mov        ebx,eax
 0055DB66    mov        eax,ebx
 0055DB68    call       0055DB78
 0055DB6D    mov        eax,ebx
 0055DB6F    call       004D5B3C
 0055DB74    pop        ebx
 0055DB75    pop        ebp
 0055DB76    ret
*}
end;

//0055DB78
//procedure sub_0055DB78(?:TZASABlob);
//begin
{*
 0055DB78    push       ebp
 0055DB79    mov        ebp,esp
 0055DB7B    add        esp,0FFFFFFF8
 0055DB7E    push       ebx
 0055DB7F    push       esi
 0055DB80    mov        ebx,eax
 0055DB82    cmp        byte ptr [ebx+1C],0; TZASABlob.?f1C:byte
>0055DB86    jne        0055DC15
 0055DB8C    mov        eax,dword ptr [ebx+20]; TZASABlob.?f20:dword
 0055DB8F    cmp        byte ptr [eax+5C],0
>0055DB93    jne        0055DBB0
 0055DB95    mov        esi,dword ptr [ebx+20]; TZASABlob.?f20:dword
 0055DB98    cmp        byte ptr [esi+5D],0
>0055DB9C    je         0055DBD7
 0055DB9E    mov        eax,dword ptr [esi+54]
 0055DBA1    mov        edx,dword ptr [ebx+24]; TZASABlob.?f24:dword
 0055DBA4    mov        ecx,dword ptr [eax]
 0055DBA6    call       dword ptr [ecx+84]
 0055DBAC    test       al,al
>0055DBAE    je         0055DBD7
 0055DBB0    lea        eax,[ebp-4]
 0055DBB3    push       eax
 0055DBB4    lea        ecx,[ebp-8]
 0055DBB7    mov        edx,dword ptr [ebx+24]; TZASABlob.?f24:dword
 0055DBBA    cmp        edx,0FFFF
>0055DBC0    jbe        0055DBC7
 0055DBC2    call       @BoundErr
 0055DBC7    mov        eax,dword ptr [ebx+20]; TZASABlob.?f20:dword
 0055DBCA    mov        eax,dword ptr [eax+54]
 0055DBCD    mov        esi,dword ptr [eax]
 0055DBCF    call       dword ptr [esi+0C4]
>0055DBD5    jmp        0055DBFC
 0055DBD7    lea        eax,[ebp-4]
 0055DBDA    push       eax
 0055DBDB    lea        ecx,[ebp-8]
 0055DBDE    mov        edx,dword ptr [ebx+24]; TZASABlob.?f24:dword
 0055DBE1    cmp        edx,0FFFF
>0055DBE7    jbe        0055DBEE
 0055DBE9    call       @BoundErr
 0055DBEE    mov        eax,dword ptr [ebx+20]; TZASABlob.?f20:dword
 0055DBF1    mov        eax,dword ptr [eax+4C]
 0055DBF4    mov        esi,dword ptr [eax]
 0055DBF6    call       dword ptr [esi+0C4]
 0055DBFC    mov        eax,dword ptr [ebp-4]
 0055DBFF    test       eax,eax
>0055DC01    jns        0055DC08
 0055DC03    call       @BoundErr
 0055DC08    mov        dword ptr [ebx+10],eax; TZASABlob.?f10:Longint
 0055DC0B    mov        eax,dword ptr [ebp-8]
 0055DC0E    mov        dword ptr [ebx+0C],eax; TZASABlob.?fC:Pointer
 0055DC11    mov        byte ptr [ebx+1C],1; TZASABlob.?f1C:byte
 0055DC15    pop        esi
 0055DC16    pop        ebx
 0055DC17    pop        ecx
 0055DC18    pop        ecx
 0055DC19    pop        ebp
 0055DC1A    ret
*}
//end;

end.