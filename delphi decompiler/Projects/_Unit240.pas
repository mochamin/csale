{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit240;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs;

type
  TZBlobStream = class(TMemoryStream)
  public
    f14:dword;//f14
    f18:IZBlob;//f18
    f1C:byte;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TZBlobStream; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0056BD10
//constructor TZBlobStream.Create(?:TZBlobStream; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0056BD10    push       ebp
 0056BD11    mov        ebp,esp
 0056BD13    add        esp,0FFFFFFF4
 0056BD16    push       ebx
 0056BD17    push       esi
 0056BD18    test       dl,dl
>0056BD1A    je         0056BD24
 0056BD1C    add        esp,0FFFFFFF0
 0056BD1F    call       @ClassCreate
 0056BD24    mov        esi,ecx
 0056BD26    mov        byte ptr [ebp-5],dl
 0056BD29    mov        dword ptr [ebp-4],eax
 0056BD2C    mov        ebx,dword ptr [ebp+8]
 0056BD2F    mov        eax,dword ptr [ebp+0C]
 0056BD32    call       @IntfAddRef
 0056BD37    xor        eax,eax
 0056BD39    push       ebp
 0056BD3A    push       56BDF6
 0056BD3F    push       dword ptr fs:[eax]
 0056BD42    mov        dword ptr fs:[eax],esp
 0056BD45    xor        edx,edx
 0056BD47    mov        eax,dword ptr [ebp-4]
 0056BD4A    call       TObject.Create
 0056BD4F    mov        eax,dword ptr [ebp-4]
 0056BD52    add        eax,18; TZBlobStream.?f18:IZBlob
 0056BD55    mov        edx,dword ptr [ebp+0C]
 0056BD58    call       @IntfCopy
 0056BD5D    mov        eax,dword ptr [ebp-4]
 0056BD60    mov        byte ptr [eax+1C],bl; TZBlobStream.?f1C:byte
 0056BD63    mov        eax,dword ptr [ebp-4]
 0056BD66    mov        dword ptr [eax+14],esi; TZBlobStream.?f14:dword
 0056BD69    test       bl,bl
>0056BD6B    je         0056BD72
 0056BD6D    sub        bl,2
>0056BD70    jne        0056BDE0
 0056BD72    mov        eax,dword ptr [ebp+0C]
 0056BD75    mov        edx,dword ptr [eax]
 0056BD77    call       dword ptr [edx+0C]
 0056BD7A    test       al,al
>0056BD7C    jne        0056BDE0
 0056BD7E    mov        eax,dword ptr [ebp+0C]
 0056BD81    mov        edx,dword ptr [eax]
 0056BD83    call       dword ptr [edx+30]
 0056BD86    mov        dword ptr [ebp-0C],eax
 0056BD89    xor        eax,eax
 0056BD8B    push       ebp
 0056BD8C    push       56BDD9
 0056BD91    push       dword ptr fs:[eax]
 0056BD94    mov        dword ptr fs:[eax],esp
 0056BD97    push       0
 0056BD99    push       0
 0056BD9B    mov        eax,dword ptr [ebp-0C]
 0056BD9E    call       TStream.SetPosition
 0056BDA3    mov        eax,dword ptr [ebp-0C]
 0056BDA6    mov        edx,dword ptr [eax]
 0056BDA8    call       dword ptr [edx]
 0056BDAA    push       edx
 0056BDAB    push       eax
 0056BDAC    mov        edx,dword ptr [ebp-0C]
 0056BDAF    mov        eax,dword ptr [ebp-4]
 0056BDB2    call       TStream.CopyFrom
 0056BDB7    push       0
 0056BDB9    push       0
 0056BDBB    mov        eax,dword ptr [ebp-4]
 0056BDBE    call       TStream.SetPosition
 0056BDC3    xor        eax,eax
 0056BDC5    pop        edx
 0056BDC6    pop        ecx
 0056BDC7    pop        ecx
 0056BDC8    mov        dword ptr fs:[eax],edx
 0056BDCB    push       56BDE0
 0056BDD0    mov        eax,dword ptr [ebp-0C]
 0056BDD3    call       TObject.Free
 0056BDD8    ret
<0056BDD9    jmp        @HandleFinally
<0056BDDE    jmp        0056BDD0
 0056BDE0    xor        eax,eax
 0056BDE2    pop        edx
 0056BDE3    pop        ecx
 0056BDE4    pop        ecx
 0056BDE5    mov        dword ptr fs:[eax],edx
 0056BDE8    push       56BDFD
 0056BDED    lea        eax,[ebp+0C]
 0056BDF0    call       @IntfClear
 0056BDF5    ret
<0056BDF6    jmp        @HandleFinally
<0056BDFB    jmp        0056BDED
 0056BDFD    mov        eax,dword ptr [ebp-4]
 0056BE00    cmp        byte ptr [ebp-5],0
>0056BE04    je         0056BE15
 0056BE06    call       @AfterConstruction
 0056BE0B    pop        dword ptr fs:[0]
 0056BE12    add        esp,0C
 0056BE15    mov        eax,dword ptr [ebp-4]
 0056BE18    pop        esi
 0056BE19    pop        ebx
 0056BE1A    mov        esp,ebp
 0056BE1C    pop        ebp
 0056BE1D    ret        8
*}
//end;

//0056BE20
destructor TZBlobStream.Destroy;
begin
{*
 0056BE20    push       ebp
 0056BE21    mov        ebp,esp
 0056BE23    add        esp,0FFFFFFF8
 0056BE26    push       ebx
 0056BE27    push       esi
 0056BE28    push       edi
 0056BE29    call       @BeforeDestruction
 0056BE2E    mov        byte ptr [ebp-5],dl
 0056BE31    mov        dword ptr [ebp-4],eax
 0056BE34    mov        eax,dword ptr [ebp-4]
 0056BE37    mov        al,byte ptr [eax+1C]; TZBlobStream.?f1C:byte
 0056BE3A    dec        eax
 0056BE3B    sub        al,2
>0056BE3D    jae        0056BEB4
 0056BE3F    mov        eax,dword ptr [ebp-4]
 0056BE42    cmp        dword ptr [eax+4],0; TZBlobStream.FMemory:Pointer
>0056BE46    je         0056BE58
 0056BE48    mov        eax,dword ptr [ebp-4]
 0056BE4B    mov        eax,dword ptr [eax+18]; TZBlobStream.?f18:IZBlob
 0056BE4E    mov        edx,dword ptr [ebp-4]
 0056BE51    mov        ecx,dword ptr [eax]
 0056BE53    call       dword ptr [ecx+34]
>0056BE56    jmp        0056BE65
 0056BE58    mov        eax,dword ptr [ebp-4]
 0056BE5B    mov        eax,dword ptr [eax+18]; TZBlobStream.?f18:IZBlob
 0056BE5E    xor        edx,edx
 0056BE60    mov        ecx,dword ptr [eax]
 0056BE62    call       dword ptr [ecx+34]
 0056BE65    xor        eax,eax
 0056BE67    push       ebp
 0056BE68    push       56BE9C
 0056BE6D    push       dword ptr fs:[eax]
 0056BE70    mov        dword ptr fs:[eax],esp
 0056BE73    mov        eax,dword ptr [ebp-4]
 0056BE76    mov        eax,dword ptr [eax+14]; TZBlobStream.?f14:dword
 0056BE79    mov        esi,dword ptr [eax+34]
 0056BE7C    test       esi,esi
>0056BE7E    je         0056BE92
 0056BE80    mov        eax,dword ptr [ebp-4]
 0056BE83    mov        ecx,dword ptr [eax+14]; TZBlobStream.?f14:dword
 0056BE86    mov        eax,esi
 0056BE88    xor        edx,edx
 0056BE8A    mov        ebx,dword ptr [eax]
 0056BE8C    call       dword ptr [ebx+0AC]
 0056BE92    xor        eax,eax
 0056BE94    pop        edx
 0056BE95    pop        ecx
 0056BE96    pop        ecx
 0056BE97    mov        dword ptr fs:[eax],edx
>0056BE9A    jmp        0056BEB4
<0056BE9C    jmp        @HandleAnyException
 0056BEA1    mov        ebx,dword ptr ds:[61B9D0]; ^ApplicationHandleException:procedure(val Sender:System.TObject) of object
 0056BEA7    mov        edx,dword ptr [ebp-4]
 0056BEAA    mov        eax,dword ptr [ebx+4]
 0056BEAD    call       dword ptr [ebx]
 0056BEAF    call       @DoneExcept
 0056BEB4    mov        dl,byte ptr [ebp-5]
 0056BEB7    and        dl,0FC
 0056BEBA    mov        eax,dword ptr [ebp-4]
 0056BEBD    call       TMemoryStream.Destroy
 0056BEC2    cmp        byte ptr [ebp-5],0
>0056BEC6    jle        0056BED0
 0056BEC8    mov        eax,dword ptr [ebp-4]
 0056BECB    call       @ClassDestroy
 0056BED0    pop        edi
 0056BED1    pop        esi
 0056BED2    pop        ebx
 0056BED3    pop        ecx
 0056BED4    pop        ecx
 0056BED5    pop        ebp
 0056BED6    ret
*}
end;

end.