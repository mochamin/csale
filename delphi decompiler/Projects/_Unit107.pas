{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit107;

interface

uses
  Classes, Windows, Graphics, RpBase;

type
  TMemoBuf = class(TBaseMemoBuf)
  public
    f28:?Double;//f28
    f30:dword;//f30
    f34:byte;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    f40:TList;//f40
    f44:Pointer;//f44
    f48:Int64;//f48
    f4C:Int64;//f4C
    f50:dword;//f50
    f54:byte;//f54
    f55:byte;//f55
    f58:String;//f58
    f64:TList;//f64
    f68:byte;//f68
    f69:byte;//f69
    fA6:byte;//fA6
    fA7:byte;//fA7
    fA8:dword;//fA8
    fB0:?Double;//fB0
    fB4:dword;//fB4
    fB8:?Double;//fB8
    fBC:dword;//fBC
    fC0:dword;//fC0
    fC4:byte;//fC4
    fC5:byte;//fC5
    destructor Destroy; virtual;
    //procedure sub_005AF3B8(?:?; ?:?); virtual;
    //function sub_005AF48C:?; virtual;
    //procedure sub_005AF58C(?:?; ?:?); virtual;
    //constructor Create(?:TMemoBuf; _Dv__:Boolean);
  end;
  TRPTFItem = class(TObject)
  public
    f4:String;//f4
    f8:dword;//f8
  end;

implementation

{$R *.DFM}

//005AE118
//procedure sub_005AE118(?:Pointer; ?:AnsiString);
//begin
{*
 005AE118    push       ebp
 005AE119    mov        ebp,esp
 005AE11B    push       ecx
 005AE11C    push       ebx
 005AE11D    mov        dword ptr [ebp-4],edx
 005AE120    mov        ebx,eax
 005AE122    mov        eax,dword ptr [ebp-4]
 005AE125    call       @LStrAddRef
 005AE12A    xor        eax,eax
 005AE12C    push       ebp
 005AE12D    push       5AE17B
 005AE132    push       dword ptr fs:[eax]
 005AE135    mov        dword ptr fs:[eax],esp
 005AE138    mov        eax,dword ptr [ebx+4]
 005AE13B    call       @LStrLen
 005AE140    mov        edx,eax
 005AE142    lea        eax,[ebx+4]
 005AE145    mov        ecx,1
 005AE14A    call       @LStrDelete
 005AE14F    lea        eax,[ebp-4]
 005AE152    call       @UniqueStringA
 005AE157    mov        byte ptr [eax],2
 005AE15A    lea        eax,[ebx+4]
 005AE15D    mov        edx,dword ptr [ebp-4]
 005AE160    call       @LStrCat
 005AE165    xor        eax,eax
 005AE167    pop        edx
 005AE168    pop        ecx
 005AE169    pop        ecx
 005AE16A    mov        dword ptr fs:[eax],edx
 005AE16D    push       5AE182
 005AE172    lea        eax,[ebp-4]
 005AE175    call       @LStrClr
 005AE17A    ret
<005AE17B    jmp        @HandleFinally
<005AE180    jmp        005AE172
 005AE182    pop        ebx
 005AE183    pop        ecx
 005AE184    pop        ebp
 005AE185    ret
*}
//end;

//005AE188
//procedure sub_005AE188(?:Pointer; ?:AnsiString);
//begin
{*
 005AE188    push       ebp
 005AE189    mov        ebp,esp
 005AE18B    push       ecx
 005AE18C    push       ebx
 005AE18D    mov        dword ptr [ebp-4],edx
 005AE190    mov        ebx,eax
 005AE192    mov        eax,dword ptr [ebp-4]
 005AE195    call       @LStrAddRef
 005AE19A    xor        eax,eax
 005AE19C    push       ebp
 005AE19D    push       5AE1C9
 005AE1A2    push       dword ptr fs:[eax]
 005AE1A5    mov        dword ptr fs:[eax],esp
 005AE1A8    lea        eax,[ebx+4]
 005AE1AB    mov        edx,dword ptr [ebp-4]
 005AE1AE    call       @LStrAsg
 005AE1B3    xor        eax,eax
 005AE1B5    pop        edx
 005AE1B6    pop        ecx
 005AE1B7    pop        ecx
 005AE1B8    mov        dword ptr fs:[eax],edx
 005AE1BB    push       5AE1D0
 005AE1C0    lea        eax,[ebp-4]
 005AE1C3    call       @LStrClr
 005AE1C8    ret
<005AE1C9    jmp        @HandleFinally
<005AE1CE    jmp        005AE1C0
 005AE1D0    pop        ebx
 005AE1D1    pop        ecx
 005AE1D2    pop        ebp
 005AE1D3    ret
*}
//end;

//005AE1D4
//constructor TMemoBuf.Create(?:TMemoBuf; _Dv__:Boolean);
//begin
{*
 005AE1D4    push       ebx
 005AE1D5    push       esi
 005AE1D6    test       dl,dl
>005AE1D8    je         005AE1E2
 005AE1DA    add        esp,0FFFFFFF0
 005AE1DD    call       @ClassCreate
 005AE1E2    mov        ebx,edx
 005AE1E4    mov        esi,eax
 005AE1E6    xor        edx,edx
 005AE1E8    mov        eax,esi
 005AE1EA    call       TObject.Create
 005AE1EF    mov        byte ptr [esi+54],1; TMemoBuf.?f54:byte
 005AE1F3    mov        byte ptr [esi+55],1; TMemoBuf.?f55:byte
 005AE1F7    xor        eax,eax
 005AE1F9    mov        dword ptr [esi+44],eax; TMemoBuf.?f44:Pointer
 005AE1FC    xor        eax,eax
 005AE1FE    mov        dword ptr [esi+48],eax; TMemoBuf.?f48:Int64
 005AE201    xor        eax,eax
 005AE203    mov        dword ptr [esi+4C],eax; TMemoBuf.?f4C:Int64
 005AE206    xor        eax,eax
 005AE208    mov        dword ptr [esi+50],eax; TMemoBuf.?f50:dword
 005AE20B    xor        eax,eax
 005AE20D    mov        dword ptr [esi+10],eax; TMemoBuf.?f10:?Double
 005AE210    mov        dword ptr [esi+14],eax; TMemoBuf.?f14:dword
 005AE213    xor        eax,eax
 005AE215    mov        dword ptr [esi+18],eax; TMemoBuf.?f18:?Double
 005AE218    mov        dword ptr [esi+1C],eax; TMemoBuf.?f1C:dword
 005AE21B    mov        byte ptr [esi+9],1; TMemoBuf.?f9:byte
 005AE21F    mov        byte ptr [esi+34],0; TMemoBuf.?f34:byte
 005AE223    mov        dword ptr [esi+30],100; TMemoBuf.?f30:dword
 005AE22A    xor        eax,eax
 005AE22C    mov        dword ptr [esi+38],eax; TMemoBuf.?f38:dword
 005AE22F    xor        eax,eax
 005AE231    mov        dword ptr [esi+3C],eax; TMemoBuf.?f3C:dword
 005AE234    mov        dl,1
 005AE236    mov        eax,[0041C260]; TList
 005AE23B    call       TObject.Create; TList.Create
 005AE240    mov        dword ptr [esi+64],eax; TMemoBuf.?f64:TList
 005AE243    mov        dl,1
 005AE245    mov        eax,[0041C260]; TList
 005AE24A    call       TObject.Create; TList.Create
 005AE24F    mov        dword ptr [esi+40],eax; TMemoBuf.?f40:TList
 005AE252    mov        byte ptr [esi+68],1; TMemoBuf.?f68:byte
 005AE256    mov        byte ptr [esi+0A6],0; TMemoBuf.?fA6:byte
 005AE25D    mov        eax,esi
 005AE25F    test       bl,bl
>005AE261    je         005AE272
 005AE263    call       @AfterConstruction
 005AE268    pop        dword ptr fs:[0]
 005AE26F    add        esp,0C
 005AE272    mov        eax,esi
 005AE274    pop        esi
 005AE275    pop        ebx
 005AE276    ret
*}
//end;

//005AE278
destructor TMemoBuf.Destroy;
begin
{*
 005AE278    push       ebx
 005AE279    push       esi
 005AE27A    call       @BeforeDestruction
 005AE27F    mov        ebx,edx
 005AE281    mov        esi,eax
 005AE283    mov        eax,esi
 005AE285    call       005AEB30
 005AE28A    lea        eax,[esi+64]; TMemoBuf.?f64:TList
 005AE28D    call       FreeAndNil
 005AE292    mov        eax,esi
 005AE294    call       005AF390
 005AE299    lea        eax,[esi+40]; TMemoBuf.?f40:TList
 005AE29C    call       FreeAndNil
 005AE2A1    mov        edx,ebx
 005AE2A3    and        dl,0FC
 005AE2A6    mov        eax,esi
 005AE2A8    call       TObject.Destroy
 005AE2AD    test       bl,bl
>005AE2AF    jle        005AE2B8
 005AE2B1    mov        eax,esi
 005AE2B3    call       @ClassDestroy
 005AE2B8    pop        esi
 005AE2B9    pop        ebx
 005AE2BA    ret
*}
end;

//005AE2BC
//procedure sub_005AE2BC(?:TMemoBuf; ?:TList);
//begin
{*
 005AE2BC    push       ebx
 005AE2BD    push       esi
 005AE2BE    push       edi
 005AE2BF    mov        edi,edx
 005AE2C1    mov        ebx,dword ptr [edi+8]; TList.FCount:Integer
 005AE2C4    test       ebx,ebx
>005AE2C6    jle        005AE2E0
 005AE2C8    mov        esi,1
 005AE2CD    mov        edx,esi
 005AE2CF    dec        edx
 005AE2D0    mov        eax,edi
 005AE2D2    call       TList.Get
 005AE2D7    call       TObject.Free
 005AE2DC    inc        esi
 005AE2DD    dec        ebx
<005AE2DE    jne        005AE2CD
 005AE2E0    mov        eax,edi
 005AE2E2    mov        edx,dword ptr [eax]
 005AE2E4    call       dword ptr [edx+8]; TList.Clear
 005AE2E7    pop        edi
 005AE2E8    pop        esi
 005AE2E9    pop        ebx
 005AE2EA    ret
*}
//end;

//005AE2EC
//procedure sub_005AE2EC(?:TMemoBuf; ?:AnsiString; ?:dword);
//begin
{*
 005AE2EC    push       ebp
 005AE2ED    mov        ebp,esp
 005AE2EF    add        esp,0FFFFFFF0
 005AE2F2    push       ebx
 005AE2F3    push       esi
 005AE2F4    push       edi
 005AE2F5    mov        dword ptr [ebp-8],ecx
 005AE2F8    mov        dword ptr [ebp-4],edx
 005AE2FB    mov        esi,eax
 005AE2FD    mov        eax,dword ptr [ebp-4]
 005AE300    call       @LStrAddRef
 005AE305    xor        eax,eax
 005AE307    push       ebp
 005AE308    push       5AE3F6
 005AE30D    push       dword ptr fs:[eax]
 005AE310    mov        dword ptr fs:[eax],esp
 005AE313    cmp        dword ptr [ebp-4],0
>005AE317    je         005AE3E0
 005AE31D    mov        byte ptr [ebp-9],0
 005AE321    mov        eax,dword ptr [esi+64]
 005AE324    mov        eax,dword ptr [eax+8]
 005AE327    test       eax,eax
>005AE329    jle        005AE3AA
 005AE32B    mov        dword ptr [ebp-10],eax
 005AE32E    mov        edi,1
 005AE333    mov        edx,edi
 005AE335    dec        edx
 005AE336    mov        eax,dword ptr [esi+64]
 005AE339    call       TList.Get
 005AE33E    mov        ebx,eax
 005AE340    mov        eax,dword ptr [ebx+8]
 005AE343    cmp        eax,dword ptr [ebp-8]
>005AE346    jle        005AE37A
 005AE348    mov        dl,1
 005AE34A    mov        eax,[005AE0B0]; TRPTFItem
 005AE34F    call       TObject.Create; TRPTFItem.Create
 005AE354    mov        ebx,eax
 005AE356    lea        eax,[ebx+4]; TRPTFItem.?f4:String
 005AE359    mov        edx,dword ptr [ebp-4]
 005AE35C    call       @LStrAsg
 005AE361    mov        eax,dword ptr [ebp-8]
 005AE364    mov        dword ptr [ebx+8],eax; TRPTFItem.?f8:dword
 005AE367    mov        edx,edi
 005AE369    dec        edx
 005AE36A    mov        ecx,ebx
 005AE36C    mov        eax,dword ptr [esi+64]
 005AE36F    call       TList.Insert
 005AE374    mov        byte ptr [ebp-9],1
>005AE378    jmp        005AE3AA
 005AE37A    cmp        eax,dword ptr [ebp-8]
>005AE37D    jne        005AE3A4
 005AE37F    cmp        byte ptr [esi+0A7],0
>005AE386    je         005AE394
 005AE388    mov        edx,dword ptr [ebp-4]
 005AE38B    mov        eax,ebx
 005AE38D    call       005AE188
>005AE392    jmp        005AE39E
 005AE394    mov        edx,dword ptr [ebp-4]
 005AE397    mov        eax,ebx
 005AE399    call       005AE118
 005AE39E    mov        byte ptr [ebp-9],1
>005AE3A2    jmp        005AE3AA
 005AE3A4    inc        edi
 005AE3A5    dec        dword ptr [ebp-10]
<005AE3A8    jne        005AE333
 005AE3AA    mov        byte ptr [esi+0A7],0
 005AE3B1    cmp        byte ptr [ebp-9],0
>005AE3B5    jne        005AE3E0
 005AE3B7    mov        dl,1
 005AE3B9    mov        eax,[005AE0B0]; TRPTFItem
 005AE3BE    call       TObject.Create; TRPTFItem.Create
 005AE3C3    mov        ebx,eax
 005AE3C5    lea        eax,[ebx+4]; TRPTFItem.?f4:String
 005AE3C8    mov        edx,dword ptr [ebp-4]
 005AE3CB    call       @LStrAsg
 005AE3D0    mov        eax,dword ptr [ebp-8]
 005AE3D3    mov        dword ptr [ebx+8],eax; TRPTFItem.?f8:dword
 005AE3D6    mov        edx,ebx
 005AE3D8    mov        eax,dword ptr [esi+64]
 005AE3DB    call       TList.Add
 005AE3E0    xor        eax,eax
 005AE3E2    pop        edx
 005AE3E3    pop        ecx
 005AE3E4    pop        ecx
 005AE3E5    mov        dword ptr fs:[eax],edx
 005AE3E8    push       5AE3FD
 005AE3ED    lea        eax,[ebp-4]
 005AE3F0    call       @LStrClr
 005AE3F5    ret
<005AE3F6    jmp        @HandleFinally
<005AE3FB    jmp        005AE3ED
 005AE3FD    pop        edi
 005AE3FE    pop        esi
 005AE3FF    pop        ebx
 005AE400    mov        esp,ebp
 005AE402    pop        ebp
 005AE403    ret
*}
//end;

//005AE404
//procedure sub_005AE404(?:TMemoBuf);
//begin
{*
 005AE404    xor        edx,edx
 005AE406    mov        dword ptr [eax+50],edx; TMemoBuf.?f50:dword
 005AE409    mov        byte ptr [eax+54],1; TMemoBuf.?f54:byte
 005AE40D    mov        byte ptr [eax+55],1; TMemoBuf.?f55:byte
 005AE411    ret
*}
//end;

//005AE414
//procedure sub_005AE414(?:TMemoBuf);
//begin
{*
 005AE414    mov        edx,dword ptr [eax+50]; TMemoBuf.?f50:dword
 005AE417    mov        dword ptr [eax+0C0],edx; TMemoBuf.?fC0:dword
 005AE41D    mov        dl,byte ptr [eax+54]; TMemoBuf.?f54:byte
 005AE420    mov        byte ptr [eax+0C4],dl; TMemoBuf.?fC4:byte
 005AE426    mov        dl,byte ptr [eax+55]; TMemoBuf.?f55:byte
 005AE429    mov        byte ptr [eax+0C5],dl; TMemoBuf.?fC5:byte
 005AE42F    ret
*}
//end;

//005AE430
//procedure sub_005AE430(?:TMemoBuf);
//begin
{*
 005AE430    mov        edx,dword ptr [eax+0C0]; TMemoBuf.?fC0:dword
 005AE436    mov        dword ptr [eax+50],edx; TMemoBuf.?f50:dword
 005AE439    mov        dl,byte ptr [eax+0C4]; TMemoBuf.?fC4:byte
 005AE43F    mov        byte ptr [eax+54],dl; TMemoBuf.?f54:byte
 005AE442    mov        dl,byte ptr [eax+0C5]; TMemoBuf.?fC5:byte
 005AE448    mov        byte ptr [eax+55],dl; TMemoBuf.?f55:byte
 005AE44B    ret
*}
//end;

//005AE44C
//procedure sub_005AE44C(?:TMemoBuf; ?:AnsiString; ?:dword; ?:?);
//begin
{*
 005AE44C    push       ebp
 005AE44D    mov        ebp,esp
 005AE44F    add        esp,0FFFFFEEC
 005AE455    push       ebx
 005AE456    push       esi
 005AE457    push       edi
 005AE458    mov        dword ptr [ebp-0C],ecx
 005AE45B    mov        dword ptr [ebp-8],edx
 005AE45E    mov        dword ptr [ebp-4],eax
 005AE461    mov        eax,dword ptr [ebp-8]
 005AE464    call       @LStrAddRef
 005AE469    xor        eax,eax
 005AE46B    push       ebp
 005AE46C    push       5AE56A
 005AE471    push       dword ptr fs:[eax]
 005AE474    mov        dword ptr fs:[eax],esp
 005AE477    mov        eax,dword ptr [ebp+8]
 005AE47A    mov        edx,dword ptr [ebp-8]
 005AE47D    call       @LStrAsg
 005AE482    cmp        dword ptr [ebp-8],0
>005AE486    je         005AE554
 005AE48C    mov        eax,dword ptr [ebp-4]
 005AE48F    mov        eax,dword ptr [eax+64]; TMemoBuf.?f64:TList
 005AE492    mov        ebx,dword ptr [eax+8]; TList.FCount:Integer
 005AE495    dec        ebx
 005AE496    xor        esi,esi
 005AE498    mov        eax,dword ptr [ebp+8]
 005AE49B    mov        eax,dword ptr [eax]
 005AE49D    mov        al,byte ptr [eax+esi]
 005AE4A0    add        al,0F7
 005AE4A2    sub        al,2
>005AE4A4    jb         005AE4AE
 005AE4A6    sub        al,2
>005AE4A8    je         005AE4AE
 005AE4AA    sub        al,13
>005AE4AC    jne        005AE4BD
 005AE4AE    inc        esi
 005AE4AF    mov        eax,dword ptr [ebp+8]
 005AE4B2    mov        eax,dword ptr [eax]
 005AE4B4    call       @LStrLen
 005AE4B9    cmp        esi,eax
<005AE4BB    jl         005AE498
 005AE4BD    mov        eax,dword ptr [ebp+8]
 005AE4C0    mov        eax,dword ptr [eax]
 005AE4C2    call       @LStrLen
 005AE4C7    add        eax,dword ptr [ebp-0C]
 005AE4CA    dec        eax
 005AE4CB    sub        eax,esi
 005AE4CD    mov        dword ptr [ebp-10],eax
 005AE4D0    mov        byte ptr [ebp-11],1
 005AE4D4    test       ebx,ebx
>005AE4D6    jl         005AE554
 005AE4D8    mov        eax,dword ptr [ebp-4]
 005AE4DB    mov        eax,dword ptr [eax+64]; TMemoBuf.?f64:TList
 005AE4DE    mov        edx,ebx
 005AE4E0    call       TList.Get
 005AE4E5    mov        edi,dword ptr [eax+8]
 005AE4E8    cmp        edi,dword ptr [ebp-10]
>005AE4EB    jg         005AE54A
 005AE4ED    cmp        byte ptr [ebp-11],0
>005AE4F1    je         005AE52A
 005AE4F3    mov        byte ptr [ebp-11],0
 005AE4F7    mov        eax,dword ptr [ebp-4]
 005AE4FA    mov        eax,dword ptr [eax+64]; TMemoBuf.?f64:TList
 005AE4FD    mov        edx,ebx
 005AE4FF    call       TList.Get
 005AE504    mov        edx,dword ptr [eax+4]
 005AE507    lea        eax,[ebp-114]
 005AE50D    mov        ecx,0FF
 005AE512    call       @LStrToString
 005AE517    lea        edx,[ebp-114]
 005AE51D    mov        eax,dword ptr [ebp-4]
 005AE520    add        eax,69; TMemoBuf.?f69:byte
 005AE523    mov        cl,3C
 005AE525    call       @PStrNCpy
 005AE52A    mov        eax,dword ptr [ebp-4]
 005AE52D    mov        eax,dword ptr [eax+64]; TMemoBuf.?f64:TList
 005AE530    mov        edx,ebx
 005AE532    call       TList.Get
 005AE537    mov        eax,dword ptr [eax+4]
 005AE53A    mov        ecx,edi
 005AE53C    sub        ecx,dword ptr [ebp-0C]
 005AE53F    add        ecx,esi
 005AE541    inc        ecx
 005AE542    mov        edx,dword ptr [ebp+8]
 005AE545    call       @LStrInsert
 005AE54A    cmp        edi,dword ptr [ebp-0C]
>005AE54D    jle        005AE554
 005AE54F    dec        ebx
 005AE550    test       ebx,ebx
<005AE552    jge        005AE4D8
 005AE554    xor        eax,eax
 005AE556    pop        edx
 005AE557    pop        ecx
 005AE558    pop        ecx
 005AE559    mov        dword ptr fs:[eax],edx
 005AE55C    push       5AE571
 005AE561    lea        eax,[ebp-8]
 005AE564    call       @LStrClr
 005AE569    ret
<005AE56A    jmp        @HandleFinally
<005AE56F    jmp        005AE561
 005AE571    pop        edi
 005AE572    pop        esi
 005AE573    pop        ebx
 005AE574    mov        esp,ebp
 005AE576    pop        ebp
 005AE577    ret        4
*}
//end;

//005AE57C
//procedure sub_005AE57C(?:TMemoBuf; ?:dword; ?:?);
//begin
{*
 005AE57C    push       ebx
 005AE57D    push       esi
 005AE57E    push       edi
 005AE57F    push       ebp
 005AE580    push       ecx
 005AE581    mov        ebp,ecx
 005AE583    mov        dword ptr [esp],edx
 005AE586    mov        edi,eax
 005AE588    xor        ebx,ebx
 005AE58A    mov        eax,dword ptr [edi+64]; TMemoBuf.?f64:TList
 005AE58D    mov        edx,ebx
 005AE58F    call       TList.Get
 005AE594    mov        esi,eax
 005AE596    mov        eax,ebp
 005AE598    call       00580E74
>005AE59D    jmp        005AE5BD
 005AE59F    mov        eax,ebp
 005AE5A1    mov        edx,dword ptr [esi+4]
 005AE5A4    call       00580EE0
 005AE5A9    inc        ebx
 005AE5AA    mov        esi,dword ptr [edi+64]; TMemoBuf.?f64:TList
 005AE5AD    cmp        ebx,dword ptr [esi+8]; TList.FCount:Integer
>005AE5B0    jge        005AE5C5
 005AE5B2    mov        eax,esi
 005AE5B4    mov        edx,ebx
 005AE5B6    call       TList.Get
 005AE5BB    mov        esi,eax
 005AE5BD    mov        eax,dword ptr [esi+8]
 005AE5C0    cmp        eax,dword ptr [esp]
<005AE5C3    jle        005AE59F
 005AE5C5    pop        edx
 005AE5C6    pop        ebp
 005AE5C7    pop        edi
 005AE5C8    pop        esi
 005AE5C9    pop        ebx
 005AE5CA    ret
*}
//end;

//005AE5CC
//function sub_005AE5CC(?:TMemoBuf):Boolean;
//begin
{*
 005AE5CC    mov        eax,dword ptr [eax+64]; TMemoBuf.?f64:TList
 005AE5CF    cmp        dword ptr [eax+8],0; TList.FCount:Integer
 005AE5D3    setg       al
 005AE5D6    ret
*}
//end;

//005AE5D8
//procedure sub_005AE5D8(?:TMemoBuf; ?:AnsiString);
//begin
{*
 005AE5D8    push       ebx
 005AE5D9    push       esi
 005AE5DA    push       edi
 005AE5DB    mov        edi,edx
 005AE5DD    mov        ebx,eax
 005AE5DF    cmp        dword ptr [ebx+44],0; TMemoBuf.?f44:Pointer
>005AE5E3    je         005AE5ED
 005AE5E5    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE5E8    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE5EB    jl         005AE5F9
 005AE5ED    mov        eax,edi
 005AE5EF    call       @LStrClr
>005AE5F4    jmp        005AE6FD
 005AE5F9    mov        esi,dword ptr [ebx+50]; TMemoBuf.?f50:dword
>005AE5FC    jmp        005AE601
 005AE5FE    inc        dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE601    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE604    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE607    jge        005AE622
 005AE609    mov        edx,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE60C    mov        dl,byte ptr [edx+eax]
 005AE60F    sub        dl,9
>005AE612    je         005AE619
 005AE614    sub        dl,17
>005AE617    jne        005AE622
 005AE619    sub        eax,esi
 005AE61B    cmp        eax,0FFF0
<005AE620    jl         005AE5FE
 005AE622    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE625    mov        dword ptr [ebx+0A8],eax; TMemoBuf.?fA8:dword
 005AE62B    cmp        byte ptr [ebx+55],0; TMemoBuf.?f55:byte
>005AE62F    je         005AE648
 005AE631    cmp        byte ptr [ebx+54],0; TMemoBuf.?f54:byte
>005AE635    jne        005AE640
 005AE637    cmp        byte ptr [ebx+0A],0; TMemoBuf.?fA:byte
>005AE63B    jne        005AE640
 005AE63D    mov        esi,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE640    mov        byte ptr [ebx+54],0; TMemoBuf.?f54:byte
 005AE644    mov        byte ptr [ebx+55],0; TMemoBuf.?f55:byte
 005AE648    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE64B    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE64E    jge        005AE682
 005AE650    mov        edx,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE653    cmp        byte ptr [edx+eax],0D
>005AE657    jne        005AE682
 005AE659    mov        byte ptr [ebx+54],1; TMemoBuf.?f54:byte
 005AE65D    inc        dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE660    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE663    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE666    jge        005AE674
 005AE668    mov        edx,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE66B    cmp        byte ptr [edx+eax],0A
>005AE66F    jne        005AE674
 005AE671    inc        dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE674    mov        eax,edi
 005AE676    mov        edx,5AE70C; '\r'
 005AE67B    call       @LStrAsg
>005AE680    jmp        005AE6FD
 005AE682    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE685    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE688    jge        005AE6AB
 005AE68A    mov        edx,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE68D    cmp        byte ptr [edx+eax],0A
>005AE691    jne        005AE6AB
 005AE693    mov        byte ptr [ebx+54],1; TMemoBuf.?f54:byte
 005AE697    inc        dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE69A    mov        eax,edi
 005AE69C    mov        edx,5AE70C; '\r'
 005AE6A1    call       @LStrAsg
>005AE6A6    jmp        005AE6FD
 005AE6A8    inc        dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE6AB    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE6AE    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AE6B1    jge        005AE6D4
 005AE6B3    mov        edx,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE6B6    mov        dl,byte ptr [edx+eax]
 005AE6B9    add        dl,0F7
 005AE6BC    sub        dl,2
>005AE6BF    jb         005AE6D4
 005AE6C1    sub        dl,2
>005AE6C4    je         005AE6D4
 005AE6C6    sub        dl,13
>005AE6C9    je         005AE6D4
 005AE6CB    sub        eax,esi
 005AE6CD    cmp        eax,0FFF0
<005AE6D2    jl         005AE6A8
 005AE6D4    mov        edx,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE6D7    sub        edx,esi
 005AE6D9    mov        eax,edi
 005AE6DB    call       @LStrSetLength
 005AE6E0    cmp        esi,dword ptr [ebx+50]; TMemoBuf.?f50:dword
>005AE6E3    je         005AE6FD
 005AE6E5    mov        eax,edi
 005AE6E7    call       @UniqueStringA
 005AE6EC    mov        edx,eax
 005AE6EE    mov        eax,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AE6F1    add        eax,esi
 005AE6F3    mov        ecx,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AE6F6    sub        ecx,esi
 005AE6F8    call       Move
 005AE6FD    pop        edi
 005AE6FE    pop        esi
 005AE6FF    pop        ebx
 005AE700    ret
*}
//end;

//005AE710
//procedure sub_005AE710(?:TMemoBuf; ?:?; ?:?; ?:?);
//begin
{*
 005AE710    push       ebp
 005AE711    mov        ebp,esp
 005AE713    add        esp,0FFFFFF58
 005AE719    push       ebx
 005AE71A    push       esi
 005AE71B    push       edi
 005AE71C    xor        ebx,ebx
 005AE71E    mov        dword ptr [ebp-0A8],ebx
 005AE724    mov        dword ptr [ebp-0A4],ebx
 005AE72A    mov        dword ptr [ebp-0A0],ebx
 005AE730    mov        dword ptr [ebp-9C],ebx
 005AE736    mov        dword ptr [ebp-10],ebx
 005AE739    mov        dword ptr [ebp-14],ebx
 005AE73C    mov        dword ptr [ebp-18],ebx
 005AE73F    mov        dword ptr [ebp-20],ebx
 005AE742    mov        dword ptr [ebp-8],ecx
 005AE745    mov        dword ptr [ebp-4],edx
 005AE748    mov        esi,eax
 005AE74A    xor        eax,eax
 005AE74C    push       ebp
 005AE74D    push       5AEA3A
 005AE752    push       dword ptr fs:[eax]
 005AE755    mov        dword ptr fs:[eax],esp
 005AE758    mov        eax,dword ptr [ebp-8]
 005AE75B    mov        byte ptr [eax],0
 005AE75E    mov        byte ptr [esi+55],1; TMemoBuf.?f55:byte
 005AE762    mov        dword ptr [ebp-1C],0FFFFFFFF
 005AE769    lea        eax,[ebp-14]
 005AE76C    call       @LStrClr
 005AE771    lea        eax,[ebp-18]
 005AE774    call       @LStrClr
 005AE779    lea        eax,[ebp-20]
 005AE77C    call       @LStrClr
 005AE781    mov        eax,dword ptr [ebp+8]
 005AE784    call       @LStrClr
 005AE789    mov        al,byte ptr [esi+54]; TMemoBuf.?f54:byte
 005AE78C    mov        byte ptr [ebp-21],al
 005AE78F    mov        edi,dword ptr [ebp-4]
 005AE792    mov        eax,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE795    mov        dword ptr [ebp-0C],eax
 005AE798    lea        edx,[ebp-10]
 005AE79B    mov        eax,esi
 005AE79D    call       005AE5D8
 005AE7A2    cmp        dword ptr [ebp-1C],0
>005AE7A6    jge        005AE850
 005AE7AC    mov        eax,dword ptr [esi+0A8]; TMemoBuf.?fA8:dword
 005AE7B2    mov        dword ptr [ebp-1C],eax
 005AE7B5    mov        eax,esi
 005AE7B7    call       005AE5CC
 005AE7BC    test       al,al
>005AE7BE    je         005AE850
 005AE7C4    lea        ecx,[ebp-98]
 005AE7CA    mov        edx,dword ptr [ebp-0C]
 005AE7CD    mov        eax,esi
 005AE7CF    call       005AE57C
 005AE7D4    lea        edx,[ebp-20]
 005AE7D7    lea        eax,[ebp-98]
 005AE7DD    call       00581684
 005AE7E2    cmp        byte ptr [ebp-21],0
>005AE7E6    je         005AE7F7
 005AE7E8    fld        qword ptr [ebp-48]
 005AE7EB    fadd       qword ptr [ebp-40]
 005AE7EE    fstp       qword ptr [esi+0B0]; TMemoBuf.?fB0:?Double
 005AE7F4    wait
>005AE7F5    jmp        005AE809
 005AE7F7    mov        eax,dword ptr [ebp-40]
 005AE7FA    mov        dword ptr [esi+0B0],eax; TMemoBuf.?fB0:?Double
 005AE800    mov        eax,dword ptr [ebp-3C]
 005AE803    mov        dword ptr [esi+0B4],eax; TMemoBuf.?fB4:dword
 005AE809    mov        eax,dword ptr [ebp-38]
 005AE80C    mov        dword ptr [esi+0B8],eax; TMemoBuf.?fB8:?Double
 005AE812    mov        eax,dword ptr [ebp-34]
 005AE815    mov        dword ptr [esi+0BC],eax; TMemoBuf.?fBC:dword
 005AE81B    fld        qword ptr [esi+0B0]; TMemoBuf.?fB0:?Double
 005AE821    fadd       qword ptr [esi+0B8]; TMemoBuf.?fB8:?Double
 005AE827    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE82A    fild       dword ptr [eax+8DC]
 005AE830    fmulp      st(1),st
 005AE832    call       @ROUND
 005AE837    mov        edi,dword ptr [ebp-4]
 005AE83A    sub        edi,eax
 005AE83C    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE83F    cmp        edi,dword ptr [eax+8DC]
>005AE845    jge        005AE850
 005AE847    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE84A    mov        edi,dword ptr [eax+8DC]
 005AE850    mov        eax,dword ptr [ebp-10]
 005AE853    mov        edx,5AEA54; '\r'
 005AE858    call       @LStrCmp
>005AE85D    je         005AE865
 005AE85F    cmp        dword ptr [ebp-10],0
>005AE863    jne        005AE887
 005AE865    mov        eax,dword ptr [ebp-8]
 005AE868    mov        byte ptr [eax],1
 005AE86B    mov        eax,dword ptr [ebp+8]
 005AE86E    cmp        dword ptr [eax],0
>005AE871    jne        005AEA07
 005AE877    mov        eax,dword ptr [ebp+8]
 005AE87A    mov        edx,dword ptr [ebp-20]
 005AE87D    call       @LStrAsg
>005AE882    jmp        005AEA07
 005AE887    lea        eax,[ebp-18]
 005AE88A    mov        edx,dword ptr [ebp-10]
 005AE88D    call       @LStrCat
 005AE892    lea        eax,[ebp-9C]
 005AE898    push       eax
 005AE899    mov        ecx,dword ptr [ebp-1C]
 005AE89C    mov        edx,dword ptr [ebp-18]
 005AE89F    mov        eax,esi
 005AE8A1    call       005AE44C
 005AE8A6    mov        ecx,dword ptr [ebp-9C]
 005AE8AC    lea        eax,[ebp-14]
 005AE8AF    mov        edx,dword ptr [ebp-20]
 005AE8B2    call       @LStrCat3
 005AE8B7    mov        edx,dword ptr [ebp-14]
 005AE8BA    mov        eax,5AEA60; ''
 005AE8BF    call       @LStrPos
 005AE8C4    test       eax,eax
>005AE8C6    jne        005AE8D9
 005AE8C8    xor        ecx,ecx
 005AE8CA    mov        edx,dword ptr [ebp-14]
 005AE8CD    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE8D0    call       00582C6C
 005AE8D5    mov        ebx,eax
>005AE8D7    jmp        005AE8E6
 005AE8D9    mov        edx,dword ptr [ebp-14]
 005AE8DC    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE8DF    call       00582D94
 005AE8E4    mov        ebx,eax
 005AE8E6    cmp        edi,ebx
>005AE8E8    jl         005AE8F7
 005AE8EA    mov        eax,dword ptr [ebp+8]
 005AE8ED    mov        edx,dword ptr [ebp-14]
 005AE8F0    call       @LStrAsg
>005AE8F5    jmp        005AE8FD
 005AE8F7    mov        eax,dword ptr [ebp-0C]
 005AE8FA    mov        dword ptr [esi+50],eax; TMemoBuf.?f50:dword
 005AE8FD    cmp        edi,ebx
<005AE8FF    jg         005AE792
 005AE905    mov        eax,dword ptr [ebp+8]
 005AE908    mov        eax,dword ptr [eax]
 005AE90A    call       00580DCC
 005AE90F    test       eax,eax
>005AE911    jne        005AEA07
 005AE917    lea        eax,[ebp-14]
 005AE91A    mov        edx,dword ptr [ebp+8]
 005AE91D    mov        edx,dword ptr [edx]
 005AE91F    call       @LStrLAsg
>005AE924    jmp        005AE977
 005AE926    lea        eax,[ebp-0A0]
 005AE92C    mov        edx,dword ptr [esi+44]; TMemoBuf.?f44:Pointer
 005AE92F    mov        ecx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE932    mov        dl,byte ptr [edx+ecx]
 005AE935    call       @LStrFromChar
 005AE93A    mov        edx,dword ptr [ebp-0A0]
 005AE940    lea        eax,[ebp-14]
 005AE943    call       @LStrCat
 005AE948    inc        dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE94B    mov        eax,dword ptr [esi+44]; TMemoBuf.?f44:Pointer
 005AE94E    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE951    mov        bl,byte ptr [eax+edx]
 005AE954    cmp        bl,4
<005AE957    jne        005AE926
 005AE959    lea        eax,[ebp-0A4]
 005AE95F    mov        edx,ebx
 005AE961    call       @LStrFromChar
 005AE966    mov        edx,dword ptr [ebp-0A4]
 005AE96C    lea        eax,[ebp-14]
 005AE96F    call       @LStrCat
 005AE974    inc        dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE977    mov        eax,dword ptr [esi+44]; TMemoBuf.?f44:Pointer
 005AE97A    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE97D    cmp        byte ptr [eax+edx],1
<005AE981    je         005AE926
 005AE983    lea        eax,[ebp-0A8]
 005AE989    mov        edx,dword ptr [esi+44]; TMemoBuf.?f44:Pointer
 005AE98C    mov        ecx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE98F    mov        dl,byte ptr [edx+ecx]
 005AE992    call       @LStrFromChar
 005AE997    mov        edx,dword ptr [ebp-0A8]
 005AE99D    lea        eax,[ebp-14]
 005AE9A0    call       @LStrCat
 005AE9A5    mov        edx,dword ptr [ebp-14]
 005AE9A8    mov        eax,5AEA60; ''
 005AE9AD    call       @LStrPos
 005AE9B2    test       eax,eax
>005AE9B4    jne        005AE9C7
 005AE9B6    xor        ecx,ecx
 005AE9B8    mov        edx,dword ptr [ebp-14]
 005AE9BB    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE9BE    call       00582C6C
 005AE9C3    mov        ebx,eax
>005AE9C5    jmp        005AE9D4
 005AE9C7    mov        edx,dword ptr [ebp-14]
 005AE9CA    mov        eax,dword ptr [esi+4]; TMemoBuf.?f4:dword
 005AE9CD    call       00582D94
 005AE9D2    mov        ebx,eax
 005AE9D4    cmp        edi,ebx
>005AE9D6    jl         005AE9FF
 005AE9D8    mov        eax,dword ptr [ebp-14]
 005AE9DB    mov        edx,5AEA6C; ' '
 005AE9E0    call       @LStrCmp
>005AE9E5    jne        005AE9F1
 005AE9E7    mov        eax,dword ptr [ebp+8]
 005AE9EA    call       @LStrClr
>005AE9EF    jmp        005AE9FC
 005AE9F1    mov        eax,dword ptr [ebp+8]
 005AE9F4    mov        edx,dword ptr [ebp-14]
 005AE9F7    call       @LStrAsg
 005AE9FC    inc        dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AE9FF    cmp        edi,ebx
<005AEA01    jg         005AE917
 005AEA07    xor        eax,eax
 005AEA09    pop        edx
 005AEA0A    pop        ecx
 005AEA0B    pop        ecx
 005AEA0C    mov        dword ptr fs:[eax],edx
 005AEA0F    push       5AEA41
 005AEA14    lea        eax,[ebp-0A8]
 005AEA1A    mov        edx,4
 005AEA1F    call       @LStrArrayClr
 005AEA24    lea        eax,[ebp-20]
 005AEA27    call       @LStrClr
 005AEA2C    lea        eax,[ebp-18]
 005AEA2F    mov        edx,3
 005AEA34    call       @LStrArrayClr
 005AEA39    ret
<005AEA3A    jmp        @HandleFinally
<005AEA3F    jmp        005AEA14
 005AEA41    pop        edi
 005AEA42    pop        esi
 005AEA43    pop        ebx
 005AEA44    mov        esp,ebp
 005AEA46    pop        ebp
 005AEA47    ret        4
*}
//end;

//005AEA70
//procedure sub_005AEA70(?:TMemoBuf; ?:AnsiString);
//begin
{*
 005AEA70    push       ebp
 005AEA71    mov        ebp,esp
 005AEA73    push       ecx
 005AEA74    push       ebx
 005AEA75    mov        dword ptr [ebp-4],edx
 005AEA78    mov        ebx,eax
 005AEA7A    mov        eax,dword ptr [ebp-4]
 005AEA7D    call       @LStrAddRef
 005AEA82    xor        eax,eax
 005AEA84    push       ebp
 005AEA85    push       5AEAD0
 005AEA8A    push       dword ptr fs:[eax]
 005AEA8D    mov        dword ptr fs:[eax],esp
 005AEA90    cmp        dword ptr [ebp-4],0
>005AEA94    jne        005AEA9F
 005AEA96    mov        eax,ebx
 005AEA98    call       005AEB30
>005AEA9D    jmp        005AEABA
 005AEA9F    mov        eax,dword ptr [ebp-4]
 005AEAA2    call       @LStrLen
 005AEAA7    push       eax
 005AEAA8    lea        eax,[ebp-4]
 005AEAAB    call       @UniqueStringA
 005AEAB0    mov        edx,eax
 005AEAB2    mov        eax,ebx
 005AEAB4    pop        ecx
 005AEAB5    call       005AEB78
 005AEABA    xor        eax,eax
 005AEABC    pop        edx
 005AEABD    pop        ecx
 005AEABE    pop        ecx
 005AEABF    mov        dword ptr fs:[eax],edx
 005AEAC2    push       5AEAD7
 005AEAC7    lea        eax,[ebp-4]
 005AEACA    call       @LStrClr
 005AEACF    ret
<005AEAD0    jmp        @HandleFinally
<005AEAD5    jmp        005AEAC7
 005AEAD7    pop        ebx
 005AEAD8    pop        ecx
 005AEAD9    pop        ebp
 005AEADA    ret
*}
//end;

//005AEADC
//procedure sub_005AEADC(?:TMemoBuf; ?:AnsiString);
//begin
{*
 005AEADC    push       ebp
 005AEADD    mov        ebp,esp
 005AEADF    push       ecx
 005AEAE0    push       ebx
 005AEAE1    mov        dword ptr [ebp-4],edx
 005AEAE4    mov        ebx,eax
 005AEAE6    mov        eax,dword ptr [ebp-4]
 005AEAE9    call       @LStrAddRef
 005AEAEE    xor        eax,eax
 005AEAF0    push       ebp
 005AEAF1    push       5AEB23
 005AEAF6    push       dword ptr fs:[eax]
 005AEAF9    mov        dword ptr fs:[eax],esp
 005AEAFC    mov        byte ptr [ebx+0A6],1; TMemoBuf.?fA6:byte
 005AEB03    mov        edx,dword ptr [ebp-4]
 005AEB06    mov        eax,ebx
 005AEB08    call       005AEA70
 005AEB0D    xor        eax,eax
 005AEB0F    pop        edx
 005AEB10    pop        ecx
 005AEB11    pop        ecx
 005AEB12    mov        dword ptr fs:[eax],edx
 005AEB15    push       5AEB2A
 005AEB1A    lea        eax,[ebp-4]
 005AEB1D    call       @LStrClr
 005AEB22    ret
<005AEB23    jmp        @HandleFinally
<005AEB28    jmp        005AEB1A
 005AEB2A    pop        ebx
 005AEB2B    pop        ecx
 005AEB2C    pop        ebp
 005AEB2D    ret
*}
//end;

//005AEB30
//procedure sub_005AEB30(?:TMemoBuf);
//begin
{*
 005AEB30    push       ebx
 005AEB31    mov        ebx,eax
 005AEB33    mov        eax,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AEB36    test       eax,eax
>005AEB38    je         005AEB42
 005AEB3A    mov        edx,dword ptr [ebx+4C]; TMemoBuf.?f4C:Int64
 005AEB3D    call       @FreeMem
 005AEB42    mov        edx,dword ptr [ebx+64]; TMemoBuf.?f64:TList
 005AEB45    mov        eax,ebx
 005AEB47    call       005AE2BC
 005AEB4C    xor        eax,eax
 005AEB4E    mov        dword ptr [ebx+48],eax; TMemoBuf.?f48:Int64
 005AEB51    xor        eax,eax
 005AEB53    mov        dword ptr [ebx+4C],eax; TMemoBuf.?f4C:Int64
 005AEB56    mov        eax,ebx
 005AEB58    call       005AE404
 005AEB5D    xor        eax,eax
 005AEB5F    mov        dword ptr [ebx+44],eax; TMemoBuf.?f44:Pointer
 005AEB62    mov        byte ptr [ebx+69],0; TMemoBuf.?f69:byte
 005AEB66    pop        ebx
 005AEB67    ret
*}
//end;

//005AEB68
//procedure sub_005AEB68(?:TMemoBuf; ?:Int64);
//begin
{*
 005AEB68    mov        ecx,dword ptr [eax+48]
 005AEB6B    cmp        edx,ecx
>005AEB6D    jl         005AEB73
 005AEB6F    mov        dword ptr [eax+50],ecx
 005AEB72    ret
 005AEB73    mov        dword ptr [eax+50],edx
 005AEB76    ret
*}
//end;

//005AEB78
//procedure sub_005AEB78(?:TMemoBuf; ?:Pointer; ?:Int64);
//begin
{*
 005AEB78    push       ebp
 005AEB79    mov        ebp,esp
 005AEB7B    add        esp,0FFFFFFE4
 005AEB7E    push       ebx
 005AEB7F    push       esi
 005AEB80    push       edi
 005AEB81    xor        ebx,ebx
 005AEB83    mov        dword ptr [ebp-1C],ebx
 005AEB86    mov        dword ptr [ebp-18],ebx
 005AEB89    mov        dword ptr [ebp-4],ebx
 005AEB8C    mov        esi,ecx
 005AEB8E    mov        edi,edx
 005AEB90    mov        ebx,eax
 005AEB92    xor        eax,eax
 005AEB94    push       ebp
 005AEB95    push       5AED18
 005AEB9A    push       dword ptr fs:[eax]
 005AEB9D    mov        dword ptr fs:[eax],esp
 005AEBA0    cmp        byte ptr [ebx+0A6],0; TMemoBuf.?fA6:byte
>005AEBA7    je         005AEBC0
 005AEBA9    mov        byte ptr [ebx+0A6],0; TMemoBuf.?fA6:byte
 005AEBB0    mov        edx,edi
 005AEBB2    mov        ecx,esi
 005AEBB4    mov        eax,ebx
 005AEBB6    call       005AED28
>005AEBBB    jmp        005AECF5
 005AEBC0    mov        eax,ebx
 005AEBC2    call       005AEB30
 005AEBC7    cmp        byte ptr [ebx+68],0; TMemoBuf.?f68:byte
>005AEBCB    je         005AEBD8
 005AEBCD    mov        eax,edi
 005AEBCF    mov        edx,esi
 005AEBD1    call       00580E48
>005AEBD6    jmp        005AEBDA
 005AEBD8    mov        eax,esi
 005AEBDA    cmp        eax,esi
>005AEBDC    jne        005AEC02
 005AEBDE    mov        dword ptr [ebx+48],esi; TMemoBuf.?f48:Int64
 005AEBE1    mov        dword ptr [ebx+4C],esi; TMemoBuf.?f4C:Int64
 005AEBE4    mov        eax,dword ptr [ebx+4C]; TMemoBuf.?f4C:Int64
 005AEBE7    call       @GetMem
 005AEBEC    mov        esi,eax
 005AEBEE    mov        dword ptr [ebx+44],esi; TMemoBuf.?f44:Pointer
 005AEBF1    mov        edx,esi
 005AEBF3    mov        eax,edi
 005AEBF5    mov        ecx,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
 005AEBF8    call       Move
>005AEBFD    jmp        005AECF5
 005AEC02    mov        dword ptr [ebx+48],eax; TMemoBuf.?f48:Int64
 005AEC05    mov        dword ptr [ebx+4C],eax; TMemoBuf.?f4C:Int64
 005AEC08    mov        eax,dword ptr [ebx+4C]; TMemoBuf.?f4C:Int64
 005AEC0B    call       @GetMem
 005AEC10    mov        dword ptr [ebx+44],eax; TMemoBuf.?f44:Pointer
 005AEC13    lea        eax,[ebp-4]
 005AEC16    call       @LStrClr
 005AEC1B    mov        byte ptr [ebp-5],0
 005AEC1F    xor        eax,eax
 005AEC21    mov        dword ptr [ebp-0C],eax
 005AEC24    xor        eax,eax
 005AEC26    mov        dword ptr [ebp-14],eax
 005AEC29    mov        dword ptr [ebp-10],edi
 005AEC2C    test       esi,esi
>005AEC2E    jle        005AECC8
 005AEC34    cmp        byte ptr [ebp-5],0
>005AEC38    je         005AEC58
 005AEC3A    cmp        byte ptr [edi],4
 005AEC3D    setne      byte ptr [ebp-5]
 005AEC41    lea        eax,[ebp-18]
 005AEC44    mov        dl,byte ptr [edi]
 005AEC46    call       @LStrFromChar
 005AEC4B    mov        edx,dword ptr [ebp-18]
 005AEC4E    lea        eax,[ebp-4]
 005AEC51    call       @LStrCat
>005AEC56    jmp        005AECBE
 005AEC58    cmp        byte ptr [edi],1
>005AEC5B    jne        005AECB2
 005AEC5D    cmp        dword ptr [ebp-14],0
>005AEC61    jle        005AEC97
 005AEC63    mov        ecx,dword ptr [ebp-0C]
 005AEC66    mov        edx,dword ptr [ebp-4]
 005AEC69    mov        eax,ebx
 005AEC6B    call       005AE2EC
 005AEC70    lea        eax,[ebp-4]
 005AEC73    call       @LStrClr
 005AEC78    mov        eax,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AEC7B    mov        edx,dword ptr [ebp-0C]
 005AEC7E    lea        edx,[eax+edx]
 005AEC81    mov        eax,dword ptr [ebp-10]
 005AEC84    mov        ecx,dword ptr [ebp-14]
 005AEC87    call       Move
 005AEC8C    mov        eax,dword ptr [ebp-14]
 005AEC8F    add        dword ptr [ebp-0C],eax
 005AEC92    xor        eax,eax
 005AEC94    mov        dword ptr [ebp-14],eax
 005AEC97    mov        byte ptr [ebp-5],1
 005AEC9B    lea        eax,[ebp-1C]
 005AEC9E    mov        dl,byte ptr [edi]
 005AECA0    call       @LStrFromChar
 005AECA5    mov        edx,dword ptr [ebp-1C]
 005AECA8    lea        eax,[ebp-4]
 005AECAB    call       @LStrCat
>005AECB0    jmp        005AECBE
 005AECB2    cmp        dword ptr [ebp-14],0
>005AECB6    jne        005AECBB
 005AECB8    mov        dword ptr [ebp-10],edi
 005AECBB    inc        dword ptr [ebp-14]
 005AECBE    inc        edi
 005AECBF    dec        esi
 005AECC0    test       esi,esi
<005AECC2    jg         005AEC34
 005AECC8    cmp        dword ptr [ebp-14],0
>005AECCC    jg         005AECD4
 005AECCE    cmp        dword ptr [ebp-4],0
>005AECD2    je         005AECF5
 005AECD4    mov        ecx,dword ptr [ebp-0C]
 005AECD7    mov        edx,dword ptr [ebp-4]
 005AECDA    mov        eax,ebx
 005AECDC    call       005AE2EC
 005AECE1    mov        eax,dword ptr [ebx+44]; TMemoBuf.?f44:Pointer
 005AECE4    mov        edx,dword ptr [ebp-0C]
 005AECE7    lea        edx,[eax+edx]
 005AECEA    mov        eax,dword ptr [ebp-10]
 005AECED    mov        ecx,dword ptr [ebp-14]
 005AECF0    call       Move
 005AECF5    xor        eax,eax
 005AECF7    pop        edx
 005AECF8    pop        ecx
 005AECF9    pop        ecx
 005AECFA    mov        dword ptr fs:[eax],edx
 005AECFD    push       5AED1F
 005AED02    lea        eax,[ebp-1C]
 005AED05    mov        edx,2
 005AED0A    call       @LStrArrayClr
 005AED0F    lea        eax,[ebp-4]
 005AED12    call       @LStrClr
 005AED17    ret
<005AED18    jmp        @HandleFinally
<005AED1D    jmp        005AED02
 005AED1F    pop        edi
 005AED20    pop        esi
 005AED21    pop        ebx
 005AED22    mov        esp,ebp
 005AED24    pop        ebp
 005AED25    ret
*}
//end;

//005AED28
//procedure sub_005AED28(?:TMemoBuf; ?:Pointer; ?:Int64);
//begin
{*
 005AED28    push       ebp
 005AED29    mov        ebp,esp
 005AED2B    push       ecx
 005AED2C    push       ebx
 005AED2D    push       esi
 005AED2E    push       edi
 005AED2F    mov        edi,ecx
 005AED31    mov        esi,edx
 005AED33    mov        ebx,eax
 005AED35    mov        dl,1
 005AED37    mov        eax,[0041CBF8]; TMemoryStream
 005AED3C    call       TObject.Create; TMemoryStream.Create
 005AED41    mov        dword ptr [ebp-4],eax
 005AED44    xor        eax,eax
 005AED46    push       ebp
 005AED47    push       5AED93
 005AED4C    push       dword ptr fs:[eax]
 005AED4F    mov        dword ptr fs:[eax],esp
 005AED52    mov        eax,esi
 005AED54    mov        ecx,dword ptr [ebp-4]
 005AED57    mov        edx,edi
 005AED59    call       00582AB0
 005AED5E    push       0
 005AED60    push       0
 005AED62    mov        eax,dword ptr [ebp-4]
 005AED65    call       TStream.SetPosition
 005AED6A    mov        eax,dword ptr [ebp-4]
 005AED6D    mov        edx,dword ptr [eax]
 005AED6F    call       dword ptr [edx]; TStream.GetSize
 005AED71    mov        ecx,eax
 005AED73    mov        edx,dword ptr [ebp-4]
 005AED76    mov        eax,ebx
 005AED78    call       005AEDA0
 005AED7D    xor        eax,eax
 005AED7F    pop        edx
 005AED80    pop        ecx
 005AED81    pop        ecx
 005AED82    mov        dword ptr fs:[eax],edx
 005AED85    push       5AED9A
 005AED8A    mov        eax,dword ptr [ebp-4]
 005AED8D    call       TObject.Free
 005AED92    ret
<005AED93    jmp        @HandleFinally
<005AED98    jmp        005AED8A
 005AED9A    pop        edi
 005AED9B    pop        esi
 005AED9C    pop        ebx
 005AED9D    pop        ecx
 005AED9E    pop        ebp
 005AED9F    ret
*}
//end;

//005AEDA0
//procedure sub_005AEDA0(?:TMemoBuf; ?:TMemoryStream; ?:Int64);
//begin
{*
 005AEDA0    push       ebx
 005AEDA1    push       esi
 005AEDA2    push       edi
 005AEDA3    push       ebp
 005AEDA4    mov        ebx,ecx
 005AEDA6    mov        esi,edx
 005AEDA8    mov        ebp,eax
 005AEDAA    mov        eax,esi
 005AEDAC    mov        edx,dword ptr ds:[41CBF8]; TMemoryStream
 005AEDB2    call       @IsClass
 005AEDB7    test       al,al
>005AEDB9    je         005AEDD6
 005AEDBB    mov        eax,esi
 005AEDBD    mov        edx,dword ptr ds:[41CBF8]; TMemoryStream
 005AEDC3    call       @AsClass
 005AEDC8    mov        edx,dword ptr [eax+4]; TMemoryStream.FMemory:Pointer
 005AEDCB    mov        ecx,ebx
 005AEDCD    mov        eax,ebp
 005AEDCF    call       005AEB78
>005AEDD4    jmp        005AEE13
 005AEDD6    test       ebx,ebx
>005AEDD8    jne        005AEDEB
 005AEDDA    mov        eax,esi
 005AEDDC    mov        edx,dword ptr [eax]
 005AEDDE    call       dword ptr [edx]; TStream.GetSize
 005AEDE0    mov        ebx,eax
 005AEDE2    mov        eax,esi
 005AEDE4    call       TStream.GetPosition
 005AEDE9    sub        ebx,eax
 005AEDEB    mov        eax,ebx
 005AEDED    call       @GetMem
 005AEDF2    mov        edi,eax
 005AEDF4    mov        edx,edi
 005AEDF6    mov        ecx,ebx
 005AEDF8    mov        eax,esi
 005AEDFA    call       TStream.ReadBuffer
 005AEDFF    mov        edx,edi
 005AEE01    mov        ecx,ebx
 005AEE03    mov        eax,ebp
 005AEE05    call       005AEB78
 005AEE0A    mov        edx,ebx
 005AEE0C    mov        eax,edi
 005AEE0E    call       @FreeMem
 005AEE13    pop        ebp
 005AEE14    pop        edi
 005AEE15    pop        esi
 005AEE16    pop        ebx
 005AEE17    ret
*}
//end;

//005AEE18
//function sub_005AEE18(?:dword):?;
//begin
{*
 005AEE18    mov        edx,dword ptr [eax+48]
 005AEE1B    test       edx,edx
>005AEE1D    je         005AEE27
 005AEE1F    cmp        edx,dword ptr [eax+50]
>005AEE22    jle        005AEE27
 005AEE24    xor        eax,eax
 005AEE26    ret
 005AEE27    mov        al,1
 005AEE29    ret
*}
//end;

//005AEE2C
//procedure sub_005AEE2C(?:TMemoBuf; ?:dword; ?:AnsiString);
//begin
{*
 005AEE2C    push       ebp
 005AEE2D    mov        ebp,esp
 005AEE2F    add        esp,0FFFFFFEC
 005AEE32    push       ebx
 005AEE33    push       esi
 005AEE34    push       edi
 005AEE35    mov        dword ptr [ebp-4],ecx
 005AEE38    mov        esi,edx
 005AEE3A    mov        ebx,eax
 005AEE3C    mov        eax,dword ptr [ebp-4]
 005AEE3F    call       @LStrAddRef
 005AEE44    xor        eax,eax
 005AEE46    push       ebp
 005AEE47    push       5AEF6B
 005AEE4C    push       dword ptr fs:[eax]
 005AEE4F    mov        dword ptr fs:[eax],esp
 005AEE52    test       esi,esi
>005AEE54    jge        005AEE5A
 005AEE56    xor        esi,esi
>005AEE58    jmp        005AEE63
 005AEE5A    mov        eax,dword ptr [ebx+48]
 005AEE5D    cmp        esi,eax
>005AEE5F    jle        005AEE63
 005AEE61    mov        esi,eax
 005AEE63    mov        eax,dword ptr [ebp-4]
 005AEE66    call       @LStrLen
 005AEE6B    add        eax,dword ptr [ebx+48]
 005AEE6E    mov        dword ptr [ebp-8],eax
 005AEE71    mov        eax,dword ptr [ebp-8]
 005AEE74    cmp        eax,dword ptr [ebx+4C]
>005AEE77    jle        005AEEA3
 005AEE79    mov        eax,dword ptr [ebp-8]
 005AEE7C    dec        eax
 005AEE7D    mov        ecx,dword ptr [ebx+30]
 005AEE80    cdq
 005AEE81    idiv       eax,ecx
 005AEE83    inc        eax
 005AEE84    imul       ecx
 005AEE86    mov        dword ptr [ebp-8],eax
 005AEE89    mov        eax,dword ptr [ebp-8]
 005AEE8C    call       @GetMem
 005AEE91    mov        dword ptr [ebp-0C],eax
 005AEE94    mov        edx,dword ptr [ebp-0C]
 005AEE97    mov        eax,dword ptr [ebx+44]
 005AEE9A    mov        ecx,esi
 005AEE9C    call       Move
>005AEEA1    jmp        005AEEA9
 005AEEA3    mov        eax,dword ptr [ebx+44]
 005AEEA6    mov        dword ptr [ebp-0C],eax
 005AEEA9    mov        eax,ebx
 005AEEAB    call       005AE5CC
 005AEEB0    test       al,al
>005AEEB2    je         005AEEEE
 005AEEB4    mov        eax,dword ptr [ebx+64]
 005AEEB7    mov        eax,dword ptr [eax+8]
 005AEEBA    test       eax,eax
>005AEEBC    jle        005AEEEE
 005AEEBE    mov        dword ptr [ebp-14],eax
 005AEEC1    mov        dword ptr [ebp-10],1
 005AEEC8    mov        edx,dword ptr [ebp-10]
 005AEECB    dec        edx
 005AEECC    mov        eax,dword ptr [ebx+64]
 005AEECF    call       TList.Get
 005AEED4    mov        edi,eax
 005AEED6    cmp        esi,dword ptr [edi+8]
>005AEED9    jg         005AEEE6
 005AEEDB    mov        eax,dword ptr [ebp-4]
 005AEEDE    call       @LStrLen
 005AEEE3    add        dword ptr [edi+8],eax
 005AEEE6    inc        dword ptr [ebp-10]
 005AEEE9    dec        dword ptr [ebp-14]
<005AEEEC    jne        005AEEC8
 005AEEEE    mov        eax,dword ptr [ebp-4]
 005AEEF1    call       @LStrLen
 005AEEF6    add        eax,esi
 005AEEF8    mov        edx,dword ptr [ebp-0C]
 005AEEFB    add        edx,eax
 005AEEFD    mov        ecx,dword ptr [ebx+48]
 005AEF00    sub        ecx,esi
 005AEF02    mov        eax,dword ptr [ebx+44]
 005AEF05    add        eax,esi
 005AEF07    call       Move
 005AEF0C    cmp        dword ptr [ebp-4],0
>005AEF10    je         005AEF2E
 005AEF12    mov        eax,dword ptr [ebp-4]
 005AEF15    call       @LStrLen
 005AEF1A    push       eax
 005AEF1B    lea        eax,[ebp-4]
 005AEF1E    call       @UniqueStringA
 005AEF23    mov        edx,dword ptr [ebp-0C]
 005AEF26    add        edx,esi
 005AEF28    pop        ecx
 005AEF29    call       Move
 005AEF2E    mov        eax,dword ptr [ebp-4]
 005AEF31    call       @LStrLen
 005AEF36    add        dword ptr [ebx+48],eax
 005AEF39    mov        eax,dword ptr [ebx+44]
 005AEF3C    cmp        eax,dword ptr [ebp-0C]
>005AEF3F    je         005AEF55
 005AEF41    mov        edx,dword ptr [ebx+4C]
 005AEF44    call       @FreeMem
 005AEF49    mov        eax,dword ptr [ebp-0C]
 005AEF4C    mov        dword ptr [ebx+44],eax
 005AEF4F    mov        eax,dword ptr [ebp-8]
 005AEF52    mov        dword ptr [ebx+4C],eax
 005AEF55    xor        eax,eax
 005AEF57    pop        edx
 005AEF58    pop        ecx
 005AEF59    pop        ecx
 005AEF5A    mov        dword ptr fs:[eax],edx
 005AEF5D    push       5AEF72
 005AEF62    lea        eax,[ebp-4]
 005AEF65    call       @LStrClr
 005AEF6A    ret
<005AEF6B    jmp        @HandleFinally
<005AEF70    jmp        005AEF62
 005AEF72    pop        edi
 005AEF73    pop        esi
 005AEF74    pop        ebx
 005AEF75    mov        esp,ebp
 005AEF77    pop        ebp
 005AEF78    ret
*}
//end;

//005AEF7C
//procedure sub_005AEF7C(?:TMemoBuf; ?:dword; ?:Longint);
//begin
{*
 005AEF7C    push       ebp
 005AEF7D    mov        ebp,esp
 005AEF7F    add        esp,0FFFFFF88
 005AEF82    push       ebx
 005AEF83    push       esi
 005AEF84    push       edi
 005AEF85    xor        ebx,ebx
 005AEF87    mov        dword ptr [ebp-8],ebx
 005AEF8A    mov        dword ptr [ebp-4],ecx
 005AEF8D    mov        edi,edx
 005AEF8F    mov        ebx,eax
 005AEF91    xor        eax,eax
 005AEF93    push       ebp
 005AEF94    push       5AF068
 005AEF99    push       dword ptr fs:[eax]
 005AEF9C    mov        dword ptr fs:[eax],esp
 005AEF9F    mov        eax,ebx
 005AEFA1    call       005AE5CC
 005AEFA6    test       al,al
>005AEFA8    je         005AF01B
 005AEFAA    mov        byte ptr [ebx+0A7],1
 005AEFB1    lea        ecx,[ebp-78]
 005AEFB4    mov        esi,dword ptr [ebp-4]
 005AEFB7    add        esi,edi
 005AEFB9    mov        edx,esi
 005AEFBB    mov        eax,ebx
 005AEFBD    call       005AE57C
 005AEFC2    lea        eax,[ebp-78]
 005AEFC5    lea        edx,[ebp-8]
 005AEFC8    call       00581684
 005AEFCD    mov        edx,dword ptr [ebp-8]
 005AEFD0    mov        ecx,esi
 005AEFD2    mov        eax,ebx
 005AEFD4    call       005AE2EC
 005AEFD9    xor        esi,esi
>005AEFDB    jmp        005AF013
 005AEFDD    inc        esi
 005AEFDE    mov        edx,esi
 005AEFE0    dec        edx
 005AEFE1    mov        eax,dword ptr [ebx+64]
 005AEFE4    call       TList.Get
 005AEFE9    cmp        edi,dword ptr [eax+8]
>005AEFEC    jg         005AF013
 005AEFEE    mov        edx,dword ptr [eax+8]
 005AEFF1    mov        ecx,dword ptr [ebp-4]
 005AEFF4    add        ecx,edi
 005AEFF6    cmp        edx,ecx
>005AEFF8    jge        005AF00D
 005AEFFA    call       TObject.Free
 005AEFFF    mov        edx,esi
 005AF001    dec        edx
 005AF002    mov        eax,dword ptr [ebx+64]
 005AF005    call       TList.Delete
 005AF00A    dec        esi
>005AF00B    jmp        005AF013
 005AF00D    mov        edx,dword ptr [ebp-4]
 005AF010    sub        dword ptr [eax+8],edx
 005AF013    mov        eax,dword ptr [ebx+64]
 005AF016    cmp        esi,dword ptr [eax+8]
<005AF019    jl         005AEFDD
 005AF01B    mov        eax,dword ptr [ebx+48]
 005AF01E    cmp        edi,eax
>005AF020    jge        005AF052
 005AF022    test       edi,edi
>005AF024    jl         005AF052
 005AF026    mov        edx,eax
 005AF028    sub        edx,edi
 005AF02A    cmp        edx,dword ptr [ebp-4]
>005AF02D    jg         005AF034
 005AF02F    mov        dword ptr [ebx+48],edi
>005AF032    jmp        005AF052
 005AF034    mov        edx,dword ptr [ebp-4]
 005AF037    add        edx,edi
 005AF039    sub        eax,edx
 005AF03B    push       eax
 005AF03C    mov        eax,dword ptr [ebx+44]
 005AF03F    add        eax,edx
 005AF041    mov        edx,dword ptr [ebx+44]
 005AF044    add        edx,edi
 005AF046    pop        ecx
 005AF047    call       Move
 005AF04C    mov        eax,dword ptr [ebp-4]
 005AF04F    sub        dword ptr [ebx+48],eax
 005AF052    xor        eax,eax
 005AF054    pop        edx
 005AF055    pop        ecx
 005AF056    pop        ecx
 005AF057    mov        dword ptr fs:[eax],edx
 005AF05A    push       5AF06F
 005AF05F    lea        eax,[ebp-8]
 005AF062    call       @LStrClr
 005AF067    ret
<005AF068    jmp        @HandleFinally
<005AF06D    jmp        005AF05F
 005AF06F    pop        edi
 005AF070    pop        esi
 005AF071    pop        ebx
 005AF072    mov        esp,ebp
 005AF074    pop        ebp
 005AF075    ret
*}
//end;

//005AF078
//function sub_005AF078(?:TMemoBuf; ?:AnsiString; ?:?):?;
//begin
{*
 005AF078    push       ebp
 005AF079    mov        ebp,esp
 005AF07B    add        esp,0FFFFFFF8
 005AF07E    push       ebx
 005AF07F    push       esi
 005AF080    push       edi
 005AF081    xor        ebx,ebx
 005AF083    mov        dword ptr [ebp-8],ebx
 005AF086    mov        ebx,ecx
 005AF088    mov        dword ptr [ebp-4],edx
 005AF08B    mov        esi,eax
 005AF08D    mov        eax,dword ptr [ebp-4]
 005AF090    call       @LStrAddRef
 005AF095    xor        eax,eax
 005AF097    push       ebp
 005AF098    push       5AF116
 005AF09D    push       dword ptr fs:[eax]
 005AF0A0    mov        dword ptr fs:[eax],esp
 005AF0A3    mov        edi,dword ptr [esi+50]
 005AF0A6    lea        eax,[esi+58]
 005AF0A9    mov        edx,dword ptr [ebp-4]
 005AF0AC    call       @LStrAsg
 005AF0B1    mov        eax,ebx
 005AF0B3    mov        byte ptr [esi+60],al
 005AF0B6    test       al,al
>005AF0B8    jne        005AF0D0
 005AF0BA    lea        edx,[ebp-8]
 005AF0BD    mov        eax,dword ptr [esi+58]
 005AF0C0    call       AnsiUpperCase
 005AF0C5    mov        edx,dword ptr [ebp-8]
 005AF0C8    lea        eax,[esi+58]
 005AF0CB    call       @LStrAsg
 005AF0D0    mov        eax,dword ptr [esi+58]
 005AF0D3    call       @LStrLen
 005AF0D8    mov        dword ptr [esi+5C],eax
 005AF0DB    or         edx,0FFFFFFFF
 005AF0DE    mov        eax,esi
 005AF0E0    call       005AEB68
 005AF0E5    mov        eax,esi
 005AF0E7    call       005AF128
 005AF0EC    mov        ebx,eax
 005AF0EE    test       bl,bl
>005AF0F0    jne        005AF0FB
 005AF0F2    mov        edx,edi
 005AF0F4    mov        eax,esi
 005AF0F6    call       005AEB68
 005AF0FB    xor        eax,eax
 005AF0FD    pop        edx
 005AF0FE    pop        ecx
 005AF0FF    pop        ecx
 005AF100    mov        dword ptr fs:[eax],edx
 005AF103    push       5AF11D
 005AF108    lea        eax,[ebp-8]
 005AF10B    mov        edx,2
 005AF110    call       @LStrArrayClr
 005AF115    ret
<005AF116    jmp        @HandleFinally
<005AF11B    jmp        005AF108
 005AF11D    mov        eax,ebx
 005AF11F    pop        edi
 005AF120    pop        esi
 005AF121    pop        ebx
 005AF122    pop        ecx
 005AF123    pop        ecx
 005AF124    pop        ebp
 005AF125    ret
*}
//end;

//005AF128
//function sub_005AF128(?:TMemoBuf):?;
//begin
{*
 005AF128    push       ebp
 005AF129    mov        ebp,esp
 005AF12B    add        esp,0FFFFFFDC
 005AF12E    push       ebx
 005AF12F    push       esi
 005AF130    push       edi
 005AF131    xor        edx,edx
 005AF133    mov        dword ptr [ebp-1C],edx
 005AF136    mov        dword ptr [ebp-24],edx
 005AF139    mov        dword ptr [ebp-20],edx
 005AF13C    mov        ebx,eax
 005AF13E    xor        eax,eax
 005AF140    push       ebp
 005AF141    push       5AF229
 005AF146    push       dword ptr fs:[eax]
 005AF149    mov        dword ptr fs:[eax],esp
 005AF14C    mov        byte ptr [ebp-1],0
 005AF150    mov        eax,dword ptr [ebx+50]
 005AF153    inc        eax
 005AF154    mov        edx,dword ptr [ebx+48]
 005AF157    sub        edx,dword ptr [ebx+5C]
 005AF15A    mov        ecx,dword ptr [ebx+44]
 005AF15D    add        ecx,eax
 005AF15F    mov        dword ptr [ebp-10],ecx
 005AF162    sub        edx,eax
>005AF164    jl         005AF20E
 005AF16A    inc        edx
 005AF16B    mov        dword ptr [ebp-18],edx
 005AF16E    mov        dword ptr [ebp-8],eax
 005AF171    mov        edi,dword ptr [ebp-10]
 005AF174    mov        byte ptr [ebp-11],1
 005AF178    mov        esi,dword ptr [ebx+5C]
 005AF17B    test       esi,esi
>005AF17D    jle        005AF1E9
 005AF17F    mov        dword ptr [ebp-0C],1
 005AF186    cmp        byte ptr [ebx+60],0
>005AF18A    je         005AF1A0
 005AF18C    mov        eax,dword ptr [ebx+58]
 005AF18F    mov        edx,dword ptr [ebp-0C]
 005AF192    mov        al,byte ptr [eax+edx-1]
 005AF196    cmp        al,byte ptr [edi]
>005AF198    je         005AF1E2
 005AF19A    mov        byte ptr [ebp-11],0
>005AF19E    jmp        005AF1E9
 005AF1A0    mov        al,byte ptr [edi]
 005AF1A2    mov        byte ptr [ebp-12],al
 005AF1A5    lea        eax,[ebp-20]
 005AF1A8    mov        dl,byte ptr [ebp-12]
 005AF1AB    call       @LStrFromChar
 005AF1B0    mov        eax,dword ptr [ebp-20]
 005AF1B3    lea        edx,[ebp-1C]
 005AF1B6    call       AnsiUpperCase
 005AF1BB    mov        eax,dword ptr [ebp-1C]
 005AF1BE    push       eax
 005AF1BF    lea        eax,[ebp-24]
 005AF1C2    mov        edx,dword ptr [ebx+58]
 005AF1C5    mov        ecx,dword ptr [ebp-0C]
 005AF1C8    mov        dl,byte ptr [edx+ecx-1]
 005AF1CC    call       @LStrFromChar
 005AF1D1    mov        edx,dword ptr [ebp-24]
 005AF1D4    pop        eax
 005AF1D5    call       @LStrCmp
>005AF1DA    je         005AF1E2
 005AF1DC    mov        byte ptr [ebp-11],0
>005AF1E0    jmp        005AF1E9
 005AF1E2    inc        edi
 005AF1E3    inc        dword ptr [ebp-0C]
 005AF1E6    dec        esi
<005AF1E7    jne        005AF186
 005AF1E9    cmp        byte ptr [ebp-11],0
>005AF1ED    je         005AF1FF
 005AF1EF    mov        edx,dword ptr [ebp-8]
 005AF1F2    mov        eax,ebx
 005AF1F4    call       005AEB68
 005AF1F9    mov        byte ptr [ebp-1],1
>005AF1FD    jmp        005AF20E
 005AF1FF    inc        dword ptr [ebp-10]
 005AF202    inc        dword ptr [ebp-8]
 005AF205    dec        dword ptr [ebp-18]
<005AF208    jne        005AF171
 005AF20E    xor        eax,eax
 005AF210    pop        edx
 005AF211    pop        ecx
 005AF212    pop        ecx
 005AF213    mov        dword ptr fs:[eax],edx
 005AF216    push       5AF230
 005AF21B    lea        eax,[ebp-24]
 005AF21E    mov        edx,3
 005AF223    call       @LStrArrayClr
 005AF228    ret
<005AF229    jmp        @HandleFinally
<005AF22E    jmp        005AF21B
 005AF230    mov        al,byte ptr [ebp-1]
 005AF233    pop        edi
 005AF234    pop        esi
 005AF235    pop        ebx
 005AF236    mov        esp,ebp
 005AF238    pop        ebp
 005AF239    ret
*}
//end;

//005AF23C
//procedure sub_005AF23C(?:TMemoBuf; ?:?; ?:AnsiString; ?:?);
//begin
{*
 005AF23C    push       ebp
 005AF23D    mov        ebp,esp
 005AF23F    add        esp,0FFFFFF84
 005AF242    push       ebx
 005AF243    push       esi
 005AF244    push       edi
 005AF245    xor        ebx,ebx
 005AF247    mov        dword ptr [ebp-0C],ebx
 005AF24A    mov        dword ptr [ebp-8],ecx
 005AF24D    mov        dword ptr [ebp-4],edx
 005AF250    mov        esi,eax
 005AF252    mov        eax,dword ptr [ebp-4]
 005AF255    call       @LStrAddRef
 005AF25A    mov        eax,dword ptr [ebp-8]
 005AF25D    call       @LStrAddRef
 005AF262    xor        eax,eax
 005AF264    push       ebp
 005AF265    push       5AF37D
 005AF26A    push       dword ptr fs:[eax]
 005AF26D    mov        dword ptr fs:[eax],esp
 005AF270    mov        edi,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF273    mov        cl,byte ptr [ebp+8]
 005AF276    mov        edx,dword ptr [ebp-4]
 005AF279    mov        eax,esi
 005AF27B    call       005AF078
 005AF280    mov        ebx,eax
 005AF282    mov        eax,esi
 005AF284    call       005AE5CC
 005AF289    test       al,al
>005AF28B    je         005AF343
>005AF291    jmp        005AF2FE
 005AF293    lea        ecx,[ebp-7C]
 005AF296    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF299    mov        eax,esi
 005AF29B    call       005AE57C
 005AF2A0    lea        eax,[ebp-7C]
 005AF2A3    lea        edx,[ebp-0C]
 005AF2A6    call       00581684
 005AF2AB    mov        eax,dword ptr [ebp-4]
 005AF2AE    call       @LStrLen
 005AF2B3    mov        ecx,eax
 005AF2B5    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF2B8    mov        eax,esi
 005AF2BA    call       005AEF7C
 005AF2BF    mov        ecx,dword ptr [ebp-8]
 005AF2C2    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF2C5    mov        eax,esi
 005AF2C7    call       005AEE2C
 005AF2CC    mov        byte ptr [esi+0A7],1; TMemoBuf.?fA7:byte
 005AF2D3    mov        ecx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF2D6    mov        edx,dword ptr [ebp-0C]
 005AF2D9    mov        eax,esi
 005AF2DB    call       005AE2EC
 005AF2E0    mov        eax,dword ptr [ebp-8]
 005AF2E3    call       @LStrLen
 005AF2E8    mov        edx,eax
 005AF2EA    add        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF2ED    dec        edx
 005AF2EE    mov        eax,esi
 005AF2F0    call       005AEB68
 005AF2F5    mov        eax,esi
 005AF2F7    call       005AF128
 005AF2FC    mov        ebx,eax
 005AF2FE    test       bl,bl
<005AF300    jne        005AF293
>005AF302    jmp        005AF347
 005AF304    mov        eax,dword ptr [ebp-4]
 005AF307    call       @LStrLen
 005AF30C    mov        ecx,eax
 005AF30E    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF311    mov        eax,esi
 005AF313    call       005AEF7C
 005AF318    mov        ecx,dword ptr [ebp-8]
 005AF31B    mov        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF31E    mov        eax,esi
 005AF320    call       005AEE2C
 005AF325    mov        eax,dword ptr [ebp-8]
 005AF328    call       @LStrLen
 005AF32D    mov        edx,eax
 005AF32F    add        edx,dword ptr [esi+50]; TMemoBuf.?f50:dword
 005AF332    dec        edx
 005AF333    mov        eax,esi
 005AF335    call       005AEB68
 005AF33A    mov        eax,esi
 005AF33C    call       005AF128
 005AF341    mov        ebx,eax
 005AF343    test       bl,bl
<005AF345    jne        005AF304
 005AF347    mov        eax,dword ptr [esi+48]; TMemoBuf.?f48:Int64
 005AF34A    cmp        edi,eax
>005AF34C    jle        005AF359
 005AF34E    mov        edx,eax
 005AF350    mov        eax,esi
 005AF352    call       005AEB68
>005AF357    jmp        005AF362
 005AF359    mov        edx,edi
 005AF35B    mov        eax,esi
 005AF35D    call       005AEB68
 005AF362    xor        eax,eax
 005AF364    pop        edx
 005AF365    pop        ecx
 005AF366    pop        ecx
 005AF367    mov        dword ptr fs:[eax],edx
 005AF36A    push       5AF384
 005AF36F    lea        eax,[ebp-0C]
 005AF372    mov        edx,3
 005AF377    call       @LStrArrayClr
 005AF37C    ret
<005AF37D    jmp        @HandleFinally
<005AF382    jmp        005AF36F
 005AF384    pop        edi
 005AF385    pop        esi
 005AF386    pop        ebx
 005AF387    mov        esp,ebp
 005AF389    pop        ebp
 005AF38A    ret        4
*}
//end;

//005AF390
//procedure sub_005AF390(?:TMemoBuf);
//begin
{*
 005AF390    push       ebx
 005AF391    mov        ebx,eax
 005AF393    mov        eax,dword ptr [ebx+38]; TMemoBuf.?f38:dword
 005AF396    test       eax,eax
>005AF398    je         005AF3B6
 005AF39A    mov        edx,dword ptr [ebx+3C]; TMemoBuf.?f3C:dword
 005AF39D    call       @FreeMem
 005AF3A2    mov        edx,dword ptr [ebx+40]; TMemoBuf.?f40:TList
 005AF3A5    mov        eax,ebx
 005AF3A7    call       005AE2BC
 005AF3AC    xor        eax,eax
 005AF3AE    mov        dword ptr [ebx+38],eax; TMemoBuf.?f38:dword
 005AF3B1    xor        eax,eax
 005AF3B3    mov        dword ptr [ebx+3C],eax; TMemoBuf.?f3C:dword
 005AF3B6    pop        ebx
 005AF3B7    ret
*}
//end;

//005AF3B8
//procedure sub_005AF3B8(?:?; ?:?);
//begin
{*
 005AF3B8    push       ebp
 005AF3B9    mov        ebp,esp
 005AF3BB    add        esp,0FFFFFFF4
 005AF3BE    push       ebx
 005AF3BF    push       esi
 005AF3C0    push       edi
 005AF3C1    xor        ebx,ebx
 005AF3C3    mov        dword ptr [ebp-0C],ebx
 005AF3C6    mov        dword ptr [ebp-8],ecx
 005AF3C9    mov        dword ptr [ebp-4],edx
 005AF3CC    mov        ebx,eax
 005AF3CE    xor        eax,eax
 005AF3D0    push       ebp
 005AF3D1    push       5AF452
 005AF3D6    push       dword ptr fs:[eax]
 005AF3D9    mov        dword ptr fs:[eax],esp
 005AF3DC    cmp        dword ptr [ebx+4],0; TMemoBuf.?f4:dword
>005AF3E0    jne        005AF3FC
 005AF3E2    mov        esi,dword ptr ds:[61B830]
 005AF3E8    mov        esi,dword ptr [esi]
 005AF3EA    lea        edx,[ebp-0C]
 005AF3ED    mov        eax,5AF468; 'TMemoBuf.BaseReport not assigned.'
 005AF3F2    call       esi
 005AF3F4    mov        eax,dword ptr [ebp-0C]
 005AF3F7    call       00579798
 005AF3FC    mov        esi,dword ptr [ebx+4]; TMemoBuf.?f4:dword
 005AF3FF    push       dword ptr [ebx+1C]; TMemoBuf.?f1C:dword
 005AF402    push       dword ptr [ebx+18]; TMemoBuf.?f18:?Double
 005AF405    mov        eax,esi
 005AF407    call       00585FC8
 005AF40C    mov        edi,eax
 005AF40E    push       dword ptr [ebx+14]; TMemoBuf.?f14:dword
 005AF411    push       dword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF414    mov        eax,esi
 005AF416    call       00585FC8
 005AF41B    sub        edi,eax
 005AF41D    inc        edi
 005AF41E    mov        eax,esi
 005AF420    call       00587C08
 005AF425    mov        eax,dword ptr [ebp-8]
 005AF428    push       eax
 005AF429    mov        ecx,dword ptr [ebp-4]
 005AF42C    mov        edx,edi
 005AF42E    mov        eax,ebx
 005AF430    call       005AE710
 005AF435    mov        eax,esi
 005AF437    call       0058814C
 005AF43C    xor        eax,eax
 005AF43E    pop        edx
 005AF43F    pop        ecx
 005AF440    pop        ecx
 005AF441    mov        dword ptr fs:[eax],edx
 005AF444    push       5AF459
 005AF449    lea        eax,[ebp-0C]
 005AF44C    call       @LStrClr
 005AF451    ret
<005AF452    jmp        @HandleFinally
<005AF457    jmp        005AF449
 005AF459    pop        edi
 005AF45A    pop        esi
 005AF45B    pop        ebx
 005AF45C    mov        esp,ebp
 005AF45E    pop        ebp
 005AF45F    ret
*}
//end;

//005AF48C
//function sub_005AF48C:?;
//begin
{*
 005AF48C    push       ebp
 005AF48D    mov        ebp,esp
 005AF48F    add        esp,0FFFFFFF0
 005AF492    push       ebx
 005AF493    push       esi
 005AF494    push       edi
 005AF495    xor        edx,edx
 005AF497    mov        dword ptr [ebp-10],edx
 005AF49A    mov        dword ptr [ebp-8],edx
 005AF49D    mov        ebx,eax
 005AF49F    xor        eax,eax
 005AF4A1    push       ebp
 005AF4A2    push       5AF54D
 005AF4A7    push       dword ptr fs:[eax]
 005AF4AA    mov        dword ptr fs:[eax],esp
 005AF4AD    cmp        dword ptr [ebx+4],0; TMemoBuf.?f4:dword
>005AF4B1    jne        005AF4CD
 005AF4B3    mov        esi,dword ptr ds:[61B830]
 005AF4B9    mov        esi,dword ptr [esi]
 005AF4BB    lea        edx,[ebp-10]
 005AF4BE    mov        eax,5AF568; 'TMemoBuf.BaseReport not assigned.'
 005AF4C3    call       esi
 005AF4C5    mov        eax,dword ptr [ebp-10]
 005AF4C8    call       00579798
 005AF4CD    mov        eax,dword ptr [ebx+4]; TMemoBuf.?f4:dword
 005AF4D0    mov        dword ptr [ebp-0C],eax
 005AF4D3    xor        esi,esi
 005AF4D5    push       dword ptr [ebx+1C]; TMemoBuf.?f1C:dword
 005AF4D8    push       dword ptr [ebx+18]; TMemoBuf.?f18:?Double
 005AF4DB    mov        eax,dword ptr [ebp-0C]
 005AF4DE    call       00585FC8
 005AF4E3    mov        edi,eax
 005AF4E5    push       dword ptr [ebx+14]; TMemoBuf.?f14:dword
 005AF4E8    push       dword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF4EB    mov        eax,dword ptr [ebp-0C]
 005AF4EE    call       00585FC8
 005AF4F3    sub        edi,eax
 005AF4F5    inc        edi
 005AF4F6    mov        eax,ebx
 005AF4F8    call       005AE414
 005AF4FD    mov        eax,dword ptr [ebp-0C]
 005AF500    call       00587C08
>005AF505    jmp        005AF518
 005AF507    lea        eax,[ebp-8]
 005AF50A    push       eax
 005AF50B    lea        ecx,[ebp-1]
 005AF50E    mov        edx,edi
 005AF510    mov        eax,ebx
 005AF512    call       005AE710
 005AF517    inc        esi
 005AF518    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AF51B    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
<005AF51E    jl         005AF507
 005AF520    mov        eax,dword ptr [ebp-0C]
 005AF523    call       0058814C
 005AF528    mov        eax,ebx
 005AF52A    call       005AE430
 005AF52F    xor        eax,eax
 005AF531    pop        edx
 005AF532    pop        ecx
 005AF533    pop        ecx
 005AF534    mov        dword ptr fs:[eax],edx
 005AF537    push       5AF554
 005AF53C    lea        eax,[ebp-10]
 005AF53F    call       @LStrClr
 005AF544    lea        eax,[ebp-8]
 005AF547    call       @LStrClr
 005AF54C    ret
<005AF54D    jmp        @HandleFinally
<005AF552    jmp        005AF53C
 005AF554    mov        eax,esi
 005AF556    pop        edi
 005AF557    pop        esi
 005AF558    pop        ebx
 005AF559    mov        esp,ebp
 005AF55B    pop        ebp
 005AF55C    ret
*}
//end;

//005AF58C
//procedure sub_005AF58C(?:?; ?:?);
//begin
{*
 005AF58C    push       ebp
 005AF58D    mov        ebp,esp
 005AF58F    add        esp,0FFFFFF78
 005AF595    push       ebx
 005AF596    push       esi
 005AF597    push       edi
 005AF598    xor        ebx,ebx
 005AF59A    mov        dword ptr [ebp-74],ebx
 005AF59D    mov        dword ptr [ebp-70],ebx
 005AF5A0    mov        dword ptr [ebp-6C],ebx
 005AF5A3    mov        dword ptr [ebp-18],ebx
 005AF5A6    mov        byte ptr [ebp-5],cl
 005AF5A9    mov        dword ptr [ebp-4],edx
 005AF5AC    mov        ebx,eax
 005AF5AE    xor        eax,eax
 005AF5B0    push       ebp
 005AF5B1    push       5AF8C5
 005AF5B6    push       dword ptr fs:[eax]
 005AF5B9    mov        dword ptr fs:[eax],esp
 005AF5BC    xor        eax,eax
 005AF5BE    mov        dword ptr [ebp-10],eax
 005AF5C1    mov        dword ptr [ebp-0C],eax
 005AF5C4    cmp        dword ptr [ebp-4],0
>005AF5C8    jl         005AF8A2
 005AF5CE    cmp        dword ptr [ebx+4],0; TMemoBuf.?f4:dword
>005AF5D2    jne        005AF5EE
 005AF5D4    mov        esi,dword ptr ds:[61B830]
 005AF5DA    mov        esi,dword ptr [esi]
 005AF5DC    lea        edx,[ebp-6C]
 005AF5DF    mov        eax,5AF8E0; 'TMemoBuf.BaseReport not assigned.'
 005AF5E4    call       esi
 005AF5E6    mov        eax,dword ptr [ebp-6C]
 005AF5E9    call       00579798
 005AF5EE    mov        esi,dword ptr [ebx+4]; TMemoBuf.?f4:dword
 005AF5F1    mov        byte ptr [ebp-66],0
 005AF5F5    cmp        byte ptr [ebp-5],0
>005AF5F9    je         005AF623
 005AF5FB    mov        edx,1
 005AF600    mov        eax,esi
 005AF602    call       00587A00
 005AF607    mov        edi,eax
 005AF609    test       edi,edi
>005AF60B    je         005AF623
 005AF60D    lea        eax,[ebp-66]
 005AF610    mov        edx,5AF904; '\t'
 005AF615    mov        cl,3C
 005AF617    call       @PStrNCat
 005AF61C    mov        edi,dword ptr [edi+28]
 005AF61F    test       edi,edi
<005AF621    jne        005AF60D
 005AF623    fld        qword ptr [ebx+18]; TMemoBuf.?f18:?Double
 005AF626    fcomp      qword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF629    fnstsw     al
 005AF62B    sahf
>005AF62C    ja         005AF648
 005AF62E    mov        edi,dword ptr ds:[61B830]
 005AF634    mov        edi,dword ptr [edi]
 005AF636    lea        edx,[ebp-70]
 005AF639    mov        eax,5AF910; 'TMemoBuf.PrintEnd must be greater than TMemoBuf.PrintStart'
 005AF63E    call       edi
 005AF640    mov        eax,dword ptr [ebp-70]
 005AF643    call       00579798
 005AF648    push       dword ptr [ebx+1C]; TMemoBuf.?f1C:dword
 005AF64B    push       dword ptr [ebx+18]; TMemoBuf.?f18:?Double
 005AF64E    mov        eax,esi
 005AF650    call       00585FC8
 005AF655    mov        edi,eax
 005AF657    push       dword ptr [ebx+14]; TMemoBuf.?f14:dword
 005AF65A    push       dword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF65D    mov        eax,esi
 005AF65F    call       00585FC8
 005AF664    sub        edi,eax
 005AF666    inc        edi
 005AF667    mov        dword ptr [ebp-14],edi
 005AF66A    fld        qword ptr [ebx+28]; TMemoBuf.?f28:?Double
 005AF66D    fcomp      dword ptr ds:[5AF94C]; 0:Single
 005AF673    fnstsw     al
 005AF675    sahf
 005AF676    seta       byte ptr [ebp-29]
 005AF67A    xor        edi,edi
>005AF67C    jmp        005AF857
 005AF681    mov        eax,ebx
 005AF683    call       005AE414
 005AF688    mov        eax,esi
 005AF68A    call       00587C08
 005AF68F    lea        eax,[ebp-18]
 005AF692    push       eax
 005AF693    lea        ecx,[ebp-19]
 005AF696    mov        edx,dword ptr [ebp-14]
 005AF699    mov        eax,ebx
 005AF69B    call       005AE710
 005AF6A0    mov        eax,esi
 005AF6A2    call       0058814C
 005AF6A7    mov        eax,ebx
 005AF6A9    call       005AE5CC
 005AF6AE    test       al,al
>005AF6B0    je         005AF748
 005AF6B6    cmp        byte ptr [esi+928],1
>005AF6BD    jne        005AF748
 005AF6C3    mov        edx,dword ptr [ebp-18]
 005AF6C6    mov        eax,dword ptr [ebx+4]; TMemoBuf.?f4:dword
 005AF6C9    call       00582E5C
 005AF6CE    fstp       qword ptr [ebp-28]
 005AF6D1    wait
 005AF6D2    cmp        byte ptr [ebp-29],0
>005AF6D6    je         005AF708
 005AF6D8    fld        tbyte ptr ds:[5AF950]; 1,2:Extended
 005AF6DE    fmul       qword ptr [ebp-28]
 005AF6E1    fsubr      qword ptr [ebx+28]; TMemoBuf.?f28:?Double
 005AF6E4    fstp       qword ptr [ebx+28]; TMemoBuf.?f28:?Double
 005AF6E7    wait
 005AF6E8    fld        tbyte ptr ds:[5AF95C]; 0,001:Extended
 005AF6EE    fadd       qword ptr [ebx+28]; TMemoBuf.?f28:?Double
 005AF6F1    fcomp      dword ptr ds:[5AF94C]; 0:Single
 005AF6F7    fnstsw     al
 005AF6F9    sahf
>005AF6FA    jae        005AF708
 005AF6FC    mov        eax,ebx
 005AF6FE    call       005AE430
>005AF703    jmp        005AF878
 005AF708    test       edi,edi
>005AF70A    jle        005AF728
 005AF70C    cmp        byte ptr [ebx+54],0; TMemoBuf.?f54:byte
>005AF710    jne        005AF718
 005AF712    cmp        byte ptr [ebx+8],0; TMemoBuf.?f8:byte
>005AF716    je         005AF721
 005AF718    mov        eax,esi
 005AF71A    call       00586254
>005AF71F    jmp        005AF728
 005AF721    mov        eax,esi
 005AF723    call       0058626C
 005AF728    push       dword ptr [ebp-24]
 005AF72B    push       dword ptr [ebp-28]
 005AF72E    mov        eax,esi
 005AF730    call       00588730
 005AF735    fld        qword ptr [ebp-10]
 005AF738    fadd       qword ptr [ebp-28]
 005AF73B    fstp       qword ptr [ebp-10]
 005AF73E    wait
 005AF73F    mov        eax,esi
 005AF741    call       00586230
>005AF746    jmp        005AF776
 005AF748    test       edi,edi
>005AF74A    jle        005AF768
 005AF74C    cmp        byte ptr [ebx+54],0; TMemoBuf.?f54:byte
>005AF750    jne        005AF758
 005AF752    cmp        byte ptr [ebx+8],0; TMemoBuf.?f8:byte
>005AF756    je         005AF761
 005AF758    mov        eax,esi
 005AF75A    call       00586254
>005AF75F    jmp        005AF768
 005AF761    mov        eax,esi
 005AF763    call       0058626C
 005AF768    mov        eax,esi
 005AF76A    call       00588A4C
 005AF76F    fadd       qword ptr [ebp-10]
 005AF772    fstp       qword ptr [ebp-10]
 005AF775    wait
 005AF776    inc        edi
 005AF777    cmp        byte ptr [ebp-66],0
>005AF77B    je         005AF792
 005AF77D    lea        eax,[ebp-74]
 005AF780    lea        edx,[ebp-66]
 005AF783    call       @LStrFromString
 005AF788    mov        edx,dword ptr [ebp-74]
 005AF78B    mov        eax,esi
 005AF78D    call       00586358
 005AF792    mov        eax,ebx
 005AF794    call       005AE5CC
 005AF799    test       al,al
>005AF79B    je         005AF7B5
 005AF79D    mov        dl,byte ptr [ebx+9]; TMemoBuf.?f9:byte
 005AF7A0    mov        eax,dword ptr [ebp-18]
 005AF7A3    call       00582F18
 005AF7A8    mov        byte ptr [ebx+9],al; TMemoBuf.?f9:byte
 005AF7AB    cmp        byte ptr [ebx+9],3; TMemoBuf.?f9:byte
>005AF7AF    jne        005AF7B5
 005AF7B1    mov        byte ptr [ebx+9],1; TMemoBuf.?f9:byte
 005AF7B5    cmp        byte ptr [ebp-19],0
>005AF7B9    je         005AF7C7
 005AF7BB    cmp        byte ptr [ebx+9],3; TMemoBuf.?f9:byte
>005AF7BF    jne        005AF7C7
 005AF7C1    mov        byte ptr [ebp-1A],1
>005AF7C5    jmp        005AF7CD
 005AF7C7    mov        al,byte ptr [ebx+9]; TMemoBuf.?f9:byte
 005AF7CA    mov        byte ptr [ebp-1A],al
 005AF7CD    fld        qword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF7D0    fadd       qword ptr [ebx+0B0]; TMemoBuf.?fB0:?Double
 005AF7D6    add        esp,0FFFFFFF8
 005AF7D9    fstp       qword ptr [esp]
 005AF7DC    wait
 005AF7DD    mov        eax,esi
 005AF7DF    call       00586138
 005AF7E4    fstp       qword ptr [ebp-7C]
 005AF7E7    wait
 005AF7E8    mov        eax,esi
 005AF7EA    call       00583ECC
 005AF7EF    fadd       qword ptr [ebp-7C]
 005AF7F2    fstp       tbyte ptr [ebp-88]
 005AF7F8    wait
 005AF7F9    mov        eax,esi
 005AF7FB    call       005842FC
 005AF800    add        esp,0FFFFFFF8
 005AF803    fstp       qword ptr [esp]
 005AF806    wait
 005AF807    mov        eax,esi
 005AF809    call       00586138
 005AF80E    fld        tbyte ptr [ebp-88]
 005AF814    fsubrp     st(1),st
 005AF816    add        esp,0FFFFFFF8
 005AF819    fstp       qword ptr [esp]
 005AF81C    wait
 005AF81D    push       0
 005AF81F    push       0
 005AF821    fld        qword ptr [ebx+18]; TMemoBuf.?f18:?Double
 005AF824    fsub       qword ptr [ebx+10]; TMemoBuf.?f10:?Double
 005AF827    fld        qword ptr [ebx+0B0]; TMemoBuf.?fB0:?Double
 005AF82D    fadd       qword ptr [ebx+0B8]; TMemoBuf.?fB8:?Double
 005AF833    fsubp      st(1),st
 005AF835    add        esp,0FFFFFFF8
 005AF838    fstp       qword ptr [esp]
 005AF83B    wait
 005AF83C    mov        eax,esi
 005AF83E    call       00586138
 005AF843    add        esp,0FFFFFFF8
 005AF846    fstp       qword ptr [esp]
 005AF849    wait
 005AF84A    mov        cl,byte ptr [ebp-1A]
 005AF84D    mov        edx,dword ptr [ebp-18]
 005AF850    mov        eax,esi
 005AF852    call       005864B0
 005AF857    cmp        dword ptr [ebp-4],0
>005AF85B    jle        005AF866
 005AF85D    cmp        edi,dword ptr [ebp-4]
<005AF860    jl         005AF681
 005AF866    cmp        dword ptr [ebp-4],0
>005AF86A    jne        005AF878
 005AF86C    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AF86F    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
<005AF872    jl         005AF681
 005AF878    cmp        byte ptr [ebx+34],0; TMemoBuf.?f34:byte
>005AF87C    jne        005AF8A2
 005AF87E    cmp        byte ptr [ebx+54],0; TMemoBuf.?f54:byte
>005AF882    jne        005AF892
 005AF884    cmp        byte ptr [ebx+8],0; TMemoBuf.?f8:byte
>005AF888    jne        005AF892
 005AF88A    mov        eax,dword ptr [ebx+50]; TMemoBuf.?f50:dword
 005AF88D    cmp        eax,dword ptr [ebx+48]; TMemoBuf.?f48:Int64
>005AF890    jl         005AF89B
 005AF892    mov        eax,esi
 005AF894    call       00586254
>005AF899    jmp        005AF8A2
 005AF89B    mov        eax,esi
 005AF89D    call       0058626C
 005AF8A2    xor        eax,eax
 005AF8A4    pop        edx
 005AF8A5    pop        ecx
 005AF8A6    pop        ecx
 005AF8A7    mov        dword ptr fs:[eax],edx
 005AF8AA    push       5AF8CC
 005AF8AF    lea        eax,[ebp-74]
 005AF8B2    mov        edx,3
 005AF8B7    call       @LStrArrayClr
 005AF8BC    lea        eax,[ebp-18]
 005AF8BF    call       @LStrClr
 005AF8C4    ret
<005AF8C5    jmp        @HandleFinally
<005AF8CA    jmp        005AF8AF
 005AF8CC    fld        qword ptr [ebp-10]
 005AF8CF    pop        edi
 005AF8D0    pop        esi
 005AF8D1    pop        ebx
 005AF8D2    mov        esp,ebp
 005AF8D4    pop        ebp
 005AF8D5    ret
*}
//end;

//005AF968
//function sub_005AF968(?:dword; ?:?; ?:?; ?:?):?;
//begin
{*
 005AF968    push       ebp
 005AF969    mov        ebp,esp
 005AF96B    add        esp,0FFFFFFEC
 005AF96E    push       ebx
 005AF96F    push       esi
 005AF970    xor        ecx,ecx
 005AF972    mov        dword ptr [ebp-14],ecx
 005AF975    mov        byte ptr [ebp-1],dl
 005AF978    mov        ebx,eax
 005AF97A    xor        eax,eax
 005AF97C    push       ebp
 005AF97D    push       5AFA28
 005AF982    push       dword ptr fs:[eax]
 005AF985    mov        dword ptr fs:[eax],esp
 005AF988    cmp        dword ptr [ebx+4],0
>005AF98C    jne        005AF9A8
 005AF98E    mov        esi,dword ptr ds:[61B830]
 005AF994    mov        esi,dword ptr [esi]
 005AF996    lea        edx,[ebp-14]
 005AF999    mov        eax,5AFA44; 'TMemoBuf.BaseReport not assigned.'
 005AF99E    call       esi
 005AF9A0    mov        eax,dword ptr [ebp-14]
 005AF9A3    call       00579798
 005AF9A8    mov        esi,dword ptr [ebx+4]
 005AF9AB    mov        eax,esi
 005AF9AD    call       00586230
 005AF9B2    mov        eax,ebx
 005AF9B4    call       005AE5CC
 005AF9B9    test       al,al
>005AF9BB    je         005AF9E3
 005AF9BD    mov        eax,dword ptr [ebp+8]
 005AF9C0    mov        dword ptr [ebx+28],eax
 005AF9C3    mov        eax,dword ptr [ebp+0C]
 005AF9C6    mov        dword ptr [ebx+2C],eax
 005AF9C9    mov        cl,byte ptr [ebp-1]
 005AF9CC    xor        edx,edx
 005AF9CE    mov        eax,ebx
 005AF9D0    mov        esi,dword ptr [eax]
 005AF9D2    call       dword ptr [esi+8]
 005AF9D5    fstp       qword ptr [ebp-10]
 005AF9D8    wait
 005AF9D9    xor        eax,eax
 005AF9DB    mov        dword ptr [ebx+28],eax
 005AF9DE    mov        dword ptr [ebx+2C],eax
>005AF9E1    jmp        005AFA12
 005AF9E3    xor        eax,eax
 005AF9E5    mov        dword ptr [ebx+28],eax
 005AF9E8    mov        dword ptr [ebx+2C],eax
 005AF9EB    mov        eax,esi
 005AF9ED    call       00588A4C
 005AF9F2    fdivr      qword ptr [ebp+8]
 005AF9F5    fld        tbyte ptr ds:[5AFA68]; 1E-5:Extended
 005AF9FB    faddp      st(1),st
 005AF9FD    call       @TRUNC
 005AFA02    mov        edx,eax
 005AFA04    mov        cl,byte ptr [ebp-1]
 005AFA07    mov        eax,ebx
 005AFA09    mov        ebx,dword ptr [eax]
 005AFA0B    call       dword ptr [ebx+8]
 005AFA0E    fstp       qword ptr [ebp-10]
 005AFA11    wait
 005AFA12    xor        eax,eax
 005AFA14    pop        edx
 005AFA15    pop        ecx
 005AFA16    pop        ecx
 005AFA17    mov        dword ptr fs:[eax],edx
 005AFA1A    push       5AFA2F
 005AFA1F    lea        eax,[ebp-14]
 005AFA22    call       @LStrClr
 005AFA27    ret
<005AFA28    jmp        @HandleFinally
<005AFA2D    jmp        005AFA1F
 005AFA2F    fld        qword ptr [ebp-10]
 005AFA32    pop        esi
 005AFA33    pop        ebx
 005AFA34    mov        esp,ebp
 005AFA36    pop        ebp
 005AFA37    ret        8
*}
//end;

//005AFA74
//function sub_005AFA74:?;
//begin
{*
 005AFA74    add        esp,0FFFFFFF8
 005AFA77    push       4197D783
 005AFA7C    push       0FC000000
 005AFA81    call       005AFA90
 005AFA86    fstp       qword ptr [esp]
 005AFA89    wait
 005AFA8A    fld        qword ptr [esp]
 005AFA8D    pop        ecx
 005AFA8E    pop        edx
 005AFA8F    ret
*}
//end;

//005AFA90
//function sub_005AFA90(?:?; ?:?):?;
//begin
{*
 005AFA90    push       ebp
 005AFA91    mov        ebp,esp
 005AFA93    add        esp,0FFFFFFD4
 005AFA96    push       ebx
 005AFA97    push       esi
 005AFA98    push       edi
 005AFA99    xor        edx,edx
 005AFA9B    mov        dword ptr [ebp-1C],edx
 005AFA9E    mov        dword ptr [ebp-10],edx
 005AFAA1    mov        ebx,eax
 005AFAA3    xor        eax,eax
 005AFAA5    push       ebp
 005AFAA6    push       5AFBF0
 005AFAAB    push       dword ptr fs:[eax]
 005AFAAE    mov        dword ptr fs:[eax],esp
 005AFAB1    cmp        dword ptr [ebx+4],0
>005AFAB5    jne        005AFAD1
 005AFAB7    mov        esi,dword ptr ds:[61B830]
 005AFABD    mov        esi,dword ptr [esi]
 005AFABF    lea        edx,[ebp-1C]
 005AFAC2    mov        eax,5AFC0C; 'TMemoBuf.BaseReport not assigned.'
 005AFAC7    call       esi
 005AFAC9    mov        eax,dword ptr [ebp-1C]
 005AFACC    call       00579798
 005AFAD1    mov        esi,dword ptr [ebx+4]
 005AFAD4    mov        eax,ebx
 005AFAD6    call       005AE5CC
 005AFADB    test       al,al
>005AFADD    je         005AFB83
 005AFAE3    cmp        byte ptr [esi+928],1
>005AFAEA    jne        005AFB83
 005AFAF0    xor        eax,eax
 005AFAF2    mov        dword ptr [ebp-8],eax
 005AFAF5    mov        dword ptr [ebp-4],eax
 005AFAF8    push       dword ptr [ebx+1C]
 005AFAFB    push       dword ptr [ebx+18]
 005AFAFE    mov        eax,esi
 005AFB00    call       00585FC8
 005AFB05    mov        edi,eax
 005AFB07    push       dword ptr [ebx+14]
 005AFB0A    push       dword ptr [ebx+10]
 005AFB0D    mov        eax,esi
 005AFB0F    call       00585FC8
 005AFB14    sub        edi,eax
 005AFB16    inc        edi
 005AFB17    mov        eax,ebx
 005AFB19    call       005AE414
 005AFB1E    mov        eax,esi
 005AFB20    call       00587C08
>005AFB25    jmp        005AFB6B
 005AFB27    lea        eax,[ebp-10]
 005AFB2A    push       eax
 005AFB2B    lea        ecx,[ebp-9]
 005AFB2E    mov        edx,edi
 005AFB30    mov        eax,ebx
 005AFB32    call       005AE710
 005AFB37    mov        edx,dword ptr [ebp-10]
 005AFB3A    mov        eax,dword ptr [ebx+4]
 005AFB3D    call       00582E5C
 005AFB42    fstp       qword ptr [ebp-18]
 005AFB45    wait
 005AFB46    fld        tbyte ptr ds:[5AFC30]; 1,2:Extended
 005AFB4C    fmul       qword ptr [ebp-18]
 005AFB4F    fstp       qword ptr [ebp-18]
 005AFB52    wait
 005AFB53    fld        qword ptr [ebp-8]
 005AFB56    fadd       qword ptr [ebp-18]
 005AFB59    fcomp      qword ptr [ebp+8]
 005AFB5C    fnstsw     al
 005AFB5E    sahf
>005AFB5F    ja         005AFB73
 005AFB61    fld        qword ptr [ebp-8]
 005AFB64    fadd       qword ptr [ebp-18]
 005AFB67    fstp       qword ptr [ebp-8]
 005AFB6A    wait
 005AFB6B    mov        eax,dword ptr [ebx+50]
 005AFB6E    cmp        eax,dword ptr [ebx+48]
<005AFB71    jl         005AFB27
 005AFB73    mov        eax,esi
 005AFB75    call       0058814C
 005AFB7A    mov        eax,ebx
 005AFB7C    call       005AE430
>005AFB81    jmp        005AFBD2
 005AFB83    mov        eax,ebx
 005AFB85    mov        edx,dword ptr [eax]
 005AFB87    call       dword ptr [edx+4]
 005AFB8A    mov        dword ptr [ebp-20],eax
 005AFB8D    fild       dword ptr [ebp-20]
 005AFB90    fstp       tbyte ptr [ebp-2C]
 005AFB93    wait
 005AFB94    mov        eax,esi
 005AFB96    call       00588A4C
 005AFB9B    fld        tbyte ptr [ebp-2C]
 005AFB9E    fmulp      st(1),st
 005AFBA0    fstp       qword ptr [ebp-8]
 005AFBA3    wait
 005AFBA4    fld        qword ptr [ebp-8]
 005AFBA7    fcomp      qword ptr [ebp+8]
 005AFBAA    fnstsw     al
 005AFBAC    sahf
>005AFBAD    jbe        005AFBD2
 005AFBAF    mov        eax,esi
 005AFBB1    call       00588A4C
 005AFBB6    fdivr      qword ptr [ebp+8]
 005AFBB9    call       @INT
 005AFBBE    fstp       tbyte ptr [ebp-2C]
 005AFBC1    wait
 005AFBC2    mov        eax,esi
 005AFBC4    call       00588A4C
 005AFBC9    fld        tbyte ptr [ebp-2C]
 005AFBCC    fmulp      st(1),st
 005AFBCE    fstp       qword ptr [ebp-8]
 005AFBD1    wait
 005AFBD2    xor        eax,eax
 005AFBD4    pop        edx
 005AFBD5    pop        ecx
 005AFBD6    pop        ecx
 005AFBD7    mov        dword ptr fs:[eax],edx
 005AFBDA    push       5AFBF7
 005AFBDF    lea        eax,[ebp-1C]
 005AFBE2    call       @LStrClr
 005AFBE7    lea        eax,[ebp-10]
 005AFBEA    call       @LStrClr
 005AFBEF    ret
<005AFBF0    jmp        @HandleFinally
<005AFBF5    jmp        005AFBDF
 005AFBF7    fld        qword ptr [ebp-8]
 005AFBFA    pop        edi
 005AFBFB    pop        esi
 005AFBFC    pop        ebx
 005AFBFD    mov        esp,ebp
 005AFBFF    pop        ebp
 005AFC00    ret        8
*}
//end;

end.