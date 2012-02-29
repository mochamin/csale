{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZSelectSchema;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZTableRef = class(TObject)
  public
    f4:String;//f4
    f8:String;//f8
    fC:String;//fC
    f10:String;//f10
  end;
  TZFieldRef = class(TObject)
  public
    f4:byte;//f4
    f8:String;//f8
    fC:String;//fC
    f10:String;//f10
    f14:String;//f14
    f18:String;//f18
    f1C:dword;//f1C
    f20:byte;//f20
    //constructor Create(?:TZFieldRef; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZSelectSchema = class(TZAbstractObject)
  public
    f10:dword;//f10
    f14:dword;//f14
    destructor Destroy; virtual;
  end;

implementation

{$R *.DFM}

//004C2158
//procedure sub_004C2158(?:?; ?:AnsiString);
//begin
{*
 004C2158    push       ebp
 004C2159    mov        ebp,esp
 004C215B    push       ebx
 004C215C    push       esi
 004C215D    mov        ebx,edx
 004C215F    mov        esi,eax
 004C2161    push       dword ptr [esi+4]
 004C2164    push       4C21C4; '.'
 004C2169    push       dword ptr [esi+8]
 004C216C    push       4C21C4; '.'
 004C2171    push       dword ptr [esi+0C]
 004C2174    mov        eax,ebx
 004C2176    mov        edx,5
 004C217B    call       @LStrCatN
>004C2180    jmp        004C2193
 004C2182    mov        eax,ebx
 004C2184    mov        ecx,1
 004C2189    mov        edx,1
 004C218E    call       @LStrDelete
 004C2193    cmp        dword ptr [ebx],0
>004C2196    je         004C21B6
 004C2198    mov        eax,1
 004C219D    mov        edx,dword ptr [ebx]
 004C219F    dec        eax
 004C21A0    test       edx,edx
>004C21A2    je         004C21A9
 004C21A4    cmp        eax,dword ptr [edx-4]
>004C21A7    jb         004C21AE
 004C21A9    call       @BoundErr
 004C21AE    inc        eax
 004C21AF    cmp        byte ptr [edx+eax-1],2E
<004C21B4    je         004C2182
 004C21B6    pop        esi
 004C21B7    pop        ebx
 004C21B8    pop        ebp
 004C21B9    ret
*}
//end;

//004C21C8
//constructor TZFieldRef.Create(?:TZFieldRef; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004C21C8    push       ebp
 004C21C9    mov        ebp,esp
 004C21CB    push       ebx
 004C21CC    push       esi
 004C21CD    test       dl,dl
>004C21CF    je         004C21D9
 004C21D1    add        esp,0FFFFFFF0
 004C21D4    call       @ClassCreate
 004C21D9    mov        ebx,edx
 004C21DB    mov        esi,eax
 004C21DD    mov        byte ptr [esi+4],cl; TZFieldRef.?f4:byte
 004C21E0    lea        eax,[esi+8]; TZFieldRef.?f8:String
 004C21E3    mov        edx,dword ptr [ebp+1C]
 004C21E6    call       @LStrAsg
 004C21EB    lea        eax,[esi+0C]; TZFieldRef.?fC:String
 004C21EE    mov        edx,dword ptr [ebp+18]
 004C21F1    call       @LStrAsg
 004C21F6    lea        eax,[esi+10]; TZFieldRef.?f10:String
 004C21F9    mov        edx,dword ptr [ebp+14]
 004C21FC    call       @LStrAsg
 004C2201    lea        eax,[esi+14]; TZFieldRef.?f14:String
 004C2204    mov        edx,dword ptr [ebp+10]
 004C2207    call       @LStrAsg
 004C220C    lea        eax,[esi+18]; TZFieldRef.?f18:String
 004C220F    mov        edx,dword ptr [ebp+0C]
 004C2212    call       @LStrAsg
 004C2217    mov        eax,dword ptr [ebp+8]
 004C221A    mov        dword ptr [esi+1C],eax; TZFieldRef.?f1C:dword
 004C221D    mov        byte ptr [esi+20],0; TZFieldRef.?f20:byte
 004C2221    mov        eax,esi
 004C2223    test       bl,bl
>004C2225    je         004C2236
 004C2227    call       @AfterConstruction
 004C222C    pop        dword ptr fs:[0]
 004C2233    add        esp,0C
 004C2236    mov        eax,esi
 004C2238    pop        esi
 004C2239    pop        ebx
 004C223A    pop        ebp
 004C223B    ret        18
*}
//end;

//004C2290
destructor TZSelectSchema.Destroy;
begin
{*
 004C2290    push       ebp
 004C2291    mov        ebp,esp
 004C2293    push       ebx
 004C2294    push       esi
 004C2295    call       @BeforeDestruction
 004C229A    mov        ebx,edx
 004C229C    mov        esi,eax
 004C229E    mov        eax,dword ptr [esi+10]; TZSelectSchema.?f10:dword
 004C22A1    call       TObject.Free
 004C22A6    mov        eax,dword ptr [esi+14]; TZSelectSchema.?f14:dword
 004C22A9    call       TObject.Free
 004C22AE    test       bl,bl
>004C22B0    jle        004C22B9
 004C22B2    mov        eax,esi
 004C22B4    call       @ClassDestroy
 004C22B9    pop        esi
 004C22BA    pop        ebx
 004C22BB    pop        ebp
 004C22BC    ret
*}
end;

end.