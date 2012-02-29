{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit134;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs;

type
  TZAbstractResultSet = class(TInterfacedObject)
  public
    fC:String;//fC
    f10:dword;//f10
    f14:Integer;//f14
    f18:dword;//f18
    f1C:byte;//f1C
    f1D:byte;//f1D
    f20:dword;//f20
    f24:byte;//f24
    f25:byte;//f25
    f28:dword;//f28
    f2C:dword;//f2C
    f30:IZStatement;//f30
    f34:byte;//f34
    destructor Destroy; virtual;
    procedure sub_004D4580; virtual;
    procedure sub_004D50DC; virtual;
    procedure sub_004D4588; virtual;
    //function sub_004D45EC:?; virtual;
    //function sub_004D45F0():?; virtual;
    //function sub_004D45F4(?:?):?; virtual;
    //procedure sub_004D4654(?:?; ?:?); virtual;
    //procedure sub_004D466C(?:?; ?:?); virtual;
    //function sub_004D4684():?; virtual;
    //function sub_004D4694():?; virtual;
    //function sub_004D46A4():?; virtual;
    //function sub_004D46B4():?; virtual;
    procedure sub_004D46C4(); virtual;
    procedure sub_004D46EC(); virtual;
    procedure sub_004D4704(); virtual;
    procedure sub_004D4720(); virtual;
    //procedure sub_004D4740(?:?; ?:?); virtual;
    procedure sub_004D4760(); virtual;
    procedure sub_004D477C(); virtual;
    procedure sub_004D4798(); virtual;
    //function sub_004D47B4(?:?):?; virtual;
    //function sub_004D4840(?:?):?; virtual;
    //function sub_004D48CC(?:?):?; virtual;
    //procedure sub_004D4958(?:?; ?:?); virtual;
    //procedure sub_004D4984(?:?; ?:?); virtual;
    //procedure sub_004D4B4C(?:?); virtual;
    //procedure sub_004D4B6C(?:?); virtual;
    //procedure sub_004D4B8C(?:?; ?:?); virtual;
    //procedure sub_004D4BB4(?:?; ?:?); virtual;
    //procedure sub_004D4BDC(?:?); virtual;
    //procedure sub_004D4BFC(?:?); virtual;
    //procedure sub_004D4C1C(?:?); virtual;
    //procedure sub_004D4C3C(?:?); virtual;
    //procedure sub_004D4C5C(?:?); virtual;
    //procedure sub_004D4C8C(?:?); virtual;
    //procedure sub_004D4CB4(?:?); virtual;
    //procedure sub_004D4CE0(?:?); virtual;
    //procedure sub_004D4D0C(?:?; ?:?); virtual;
    //procedure sub_004D4D34(?:?); virtual;
    //procedure sub_004D4D60(?:?); virtual;
    //procedure sub_004D4D8C(?:?); virtual;
    //procedure sub_004D4DB8(?:?); virtual;
    //procedure sub_004D4DD8(?:?); virtual;
    //procedure sub_004D4DF8(?:?); virtual;
    //procedure sub_004D4E18(?:?; ?:?); virtual;
    //procedure sub_004D4E40(?:?; ?:?); virtual;
    //function sub_004D4E68():?; virtual;
    procedure sub_004D4E6C(); virtual;
    //procedure sub_004D4E70(?:?); virtual;
    //procedure sub_004D4E80(?:?); virtual;
    //function sub_004D4F38(?:?):?; virtual;
    function sub_004D501C:Boolean; virtual;
    function sub_004D5024:Boolean; virtual;
    function sub_004D5030:Boolean; virtual;
    function sub_004D5038:Boolean; virtual;
    procedure sub_004D5044; virtual;
    procedure sub_004D5054; virtual;
    procedure sub_004D5070; virtual;
    procedure sub_004D5084; virtual;
    //function sub_004D5094:?; virtual;
    //function sub_004D5098():?; virtual;
    //procedure sub_004D50A8(?:?); virtual;
    procedure sub_004D50C0; virtual;
    //procedure sub_004D50FC(?:?); virtual;
    //function sub_004D50F8:?; virtual;
    //procedure sub_004D5110(?:?); virtual;
    //function sub_004D510C:?; virtual;
    //function sub_004D5114:?; virtual;
    //function sub_004D5118:?; virtual;
    //function sub_004D5124():?; virtual;
    //function sub_004D5128():?; virtual;
    //function sub_004D512C():?; virtual;
    procedure sub_004D5130(); virtual;
    procedure sub_004D513C(); virtual;
    procedure sub_004D5148(); virtual;
    procedure sub_004D5154(); virtual;
    procedure sub_004D5160(); virtual;
    procedure sub_004D516C(); virtual;
    procedure sub_004D5178(); virtual;
    procedure sub_004D5184(); virtual;
    procedure sub_004D5190(); virtual;
    //procedure sub_004D519C(?:?; ?:?); virtual;
    procedure sub_004D5200(); virtual;
    procedure sub_004D520C(); virtual;
    procedure sub_004D5218(); virtual;
    procedure sub_004D5224(); virtual;
    procedure sub_004D5230(); virtual;
    procedure sub_004D523C(); virtual;
    procedure sub_004D5248(); virtual;
    procedure sub_004D5260(); virtual;
    procedure sub_004D5254(); virtual;
    //procedure sub_004D526C(?:?; ?:?); virtual;
    //procedure sub_004D5338(?:?); virtual;
    //procedure sub_004D535C(?:?; ?:?); virtual;
    //procedure sub_004D5384(?:?; ?:?); virtual;
    //procedure sub_004D53AC(?:?; ?:?); virtual;
    //procedure sub_004D53D4(?:?; ?:?); virtual;
    //procedure sub_004D53FC(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D5428(?:?; ?:?); virtual;
    //procedure sub_004D5450(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D547C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004D54AC(?:?; ?:?); virtual;
    //procedure sub_004D54D8(?:?; ?:?); virtual;
    //procedure sub_004D5504(?:?; ?:?); virtual;
    //procedure sub_004D5530(?:?; ?:?); virtual;
    //procedure sub_004D555C(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D5588(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D55B4(?:?; ?:?; ?:?); virtual;
    //procedure sub_004D55E0(?:?; ?:?); virtual;
    //procedure sub_004D5634(?:?; ?:?); virtual;
    //procedure sub_004D560C(?:?; ?:?); virtual;
    //procedure sub_004D565C(?:?; ?:?); virtual;
    procedure sub_004D5684(); virtual;
    procedure sub_004D5690(); virtual;
    procedure sub_004D569C(); virtual;
    procedure sub_004D56A8(); virtual;
    procedure sub_004D56B4(); virtual;
    procedure sub_004D56C0(); virtual;
    procedure sub_004D56CC(); virtual;
    //function sub_004D5714(?:?; ?:?; ?:?; ?:?):?; virtual;
    //procedure sub_004D5990(?:?); virtual;
  end;
  TZAbstractBlob = class(TInterfacedObject)
  public
    fC:Pointer;//fC
    f10:Longint;//f10
    f14:byte;//f14
    destructor Destroy; virtual;
    function sub_004D5B3C:Boolean; virtual;
    //function sub_004D5B44:?; virtual;
    //function sub_004D5B48:?; virtual;
    //procedure sub_004D5B4C(?:?); virtual;
    //procedure sub_004D5B7C(?:?); virtual;
    //procedure sub_004D5BC4(?:?); virtual;
    //procedure sub_004D5C14(?:?); virtual;
    //procedure sub_004D5C64(?:?); virtual;
    //procedure sub_004D5D38(?:?); virtual;
    //function sub_004D5E0C:?; virtual;
    //procedure sub_004D5E5C(?:?); virtual;
    procedure sub_004D5AE4; virtual;
    //procedure sub_004D5B0C(?:?); virtual;
    //constructor Create(?:TZAbstractBlob; _Dv__:Boolean);
    //constructor Create(?:TZAbstractBlob; _Dv__:Boolean; ?:?);
  end;

implementation

{$R *.DFM}

//004D3FC8
//constructor sub_004D3FC8(?:?; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004D3FC8    push       ebp
 004D3FC9    mov        ebp,esp
 004D3FCB    push       0
 004D3FCD    push       0
 004D3FCF    push       0
 004D3FD1    push       0
 004D3FD3    push       0
 004D3FD5    push       ebx
 004D3FD6    push       esi
 004D3FD7    test       dl,dl
>004D3FD9    je         004D3FE3
 004D3FDB    add        esp,0FFFFFFF0
 004D3FDE    call       @ClassCreate
 004D3FE3    mov        dword ptr [ebp-8],ecx
 004D3FE6    mov        byte ptr [ebp-1],dl
 004D3FE9    mov        ebx,eax
 004D3FEB    mov        esi,dword ptr [ebp+8]
 004D3FEE    mov        eax,dword ptr [ebp-8]
 004D3FF1    call       @IntfAddRef
 004D3FF6    mov        eax,dword ptr [ebp+0C]
 004D3FF9    call       @LStrAddRef
 004D3FFE    xor        eax,eax
 004D4000    push       ebp
 004D4001    push       4D412E
 004D4006    push       dword ptr fs:[eax]
 004D4009    mov        dword ptr fs:[eax],esp
 004D400C    mov        byte ptr [ebx+34],1
 004D4010    xor        eax,eax
 004D4012    mov        dword ptr [ebx+10],eax
 004D4015    xor        eax,eax
 004D4017    mov        dword ptr [ebx+14],eax
 004D401A    mov        byte ptr [ebx+1C],1
 004D401E    cmp        dword ptr [ebp-8],0
>004D4022    jne        004D403B
 004D4024    mov        byte ptr [ebx+24],0
 004D4028    mov        byte ptr [ebx+25],0
 004D402C    mov        byte ptr [ebx+26],0
 004D4030    mov        byte ptr [ebx+27],0
 004D4034    xor        eax,eax
 004D4036    mov        dword ptr [ebx+18],eax
>004D4039    jmp        004D4093
 004D403B    mov        eax,dword ptr [ebp-8]
 004D403E    mov        edx,dword ptr [eax]
 004D4040    call       dword ptr [edx+50]
 004D4043    mov        byte ptr [ebx+1D],al
 004D4046    mov        eax,dword ptr [ebp-8]
 004D4049    mov        edx,dword ptr [eax]
 004D404B    call       dword ptr [edx+58]
 004D404E    mov        dword ptr [ebx+20],eax
 004D4051    mov        eax,dword ptr [ebp-8]
 004D4054    mov        edx,dword ptr [eax]
 004D4056    call       dword ptr [edx+68]
 004D4059    mov        byte ptr [ebx+24],al
 004D405C    mov        eax,dword ptr [ebp-8]
 004D405F    mov        edx,dword ptr [eax]
 004D4061    call       dword ptr [edx+60]
 004D4064    mov        byte ptr [ebx+25],al
 004D4067    mov        eax,dword ptr [ebp-8]
 004D406A    mov        edx,dword ptr [eax]
 004D406C    call       dword ptr [edx+70]
 004D406F    mov        byte ptr [ebx+26],al
 004D4072    mov        eax,dword ptr [ebp-8]
 004D4075    mov        edx,dword ptr [eax]
 004D4077    call       dword ptr [edx+78]
 004D407A    mov        byte ptr [ebx+27],al
 004D407D    lea        eax,[ebx+30]
 004D4080    mov        edx,dword ptr [ebp-8]
 004D4083    call       @IntfCopy
 004D4088    mov        eax,dword ptr [ebp-8]
 004D408B    mov        edx,dword ptr [eax]
 004D408D    call       dword ptr [edx+20]
 004D4090    mov        dword ptr [ebx+18],eax
 004D4093    test       esi,esi
>004D4095    jne        004D40E6
 004D4097    cmp        dword ptr [ebp-8],0
>004D409B    je         004D40C5
 004D409D    lea        edx,[ebp-14]
 004D40A0    mov        eax,ebx
 004D40A2    mov        ecx,dword ptr [eax]
 004D40A4    call       dword ptr [ecx+1E0]
 004D40AA    mov        eax,dword ptr [ebp-14]
 004D40AD    lea        edx,[ebp-10]
 004D40B0    mov        ecx,dword ptr [eax]
 004D40B2    call       dword ptr [ecx+88]
 004D40B8    mov        eax,dword ptr [ebp-10]
 004D40BB    lea        edx,[ebp-0C]
 004D40BE    mov        ecx,dword ptr [eax]
 004D40C0    call       dword ptr [ecx+64]
>004D40C3    jmp        004D40CD
 004D40C5    lea        eax,[ebp-0C]
 004D40C8    call       @IntfClear
 004D40CD    mov        eax,dword ptr [ebp+0C]
 004D40D0    push       eax
 004D40D1    push       ebx
 004D40D2    mov        ecx,dword ptr [ebp-0C]
 004D40D5    mov        dl,1
 004D40D7    mov        eax,[004D615C]; TZAbstractResultSetMetadata
 004D40DC    call       TZAbstractResultSetMetadata.Create; TZAbstractResultSetMetadata.Create
 004D40E1    mov        dword ptr [ebx+2C],eax
>004D40E4    jmp        004D40E9
 004D40E6    mov        dword ptr [ebx+2C],esi
 004D40E9    mov        dl,1
 004D40EB    mov        eax,[00433048]; TObjectList
 004D40F0    call       TObjectList.Create; TObjectList.Create
 004D40F5    mov        dword ptr [ebx+28],eax
 004D40F8    xor        eax,eax
 004D40FA    pop        edx
 004D40FB    pop        ecx
 004D40FC    pop        ecx
 004D40FD    mov        dword ptr fs:[eax],edx
 004D4100    push       4D4135
 004D4105    lea        eax,[ebp-14]
 004D4108    call       @IntfClear
 004D410D    lea        eax,[ebp-10]
 004D4110    call       @IntfClear
 004D4115    lea        eax,[ebp-0C]
 004D4118    call       @IntfClear
 004D411D    lea        eax,[ebp-8]
 004D4120    call       @IntfClear
 004D4125    lea        eax,[ebp+0C]
 004D4128    call       @LStrClr
 004D412D    ret
<004D412E    jmp        @HandleFinally
<004D4133    jmp        004D4105
 004D4135    mov        eax,ebx
 004D4137    cmp        byte ptr [ebp-1],0
>004D413B    je         004D414C
 004D413D    call       @AfterConstruction
 004D4142    pop        dword ptr fs:[0]
 004D4149    add        esp,0C
 004D414C    mov        eax,ebx
 004D414E    pop        esi
 004D414F    pop        ebx
 004D4150    mov        esp,ebp
 004D4152    pop        ebp
 004D4153    ret        8
*}
//end;

//004D4158
destructor TZAbstractResultSet.Destroy;
begin
{*
 004D4158    push       ebp
 004D4159    mov        ebp,esp
 004D415B    push       ebx
 004D415C    push       esi
 004D415D    call       @BeforeDestruction
 004D4162    mov        ebx,edx
 004D4164    mov        esi,eax
 004D4166    cmp        byte ptr [esi+1C],0; TZAbstractResultSet.?f1C:byte
>004D416A    jne        004D4173
 004D416C    mov        eax,esi
 004D416E    mov        edx,dword ptr [eax]
 004D4170    call       dword ptr [edx+8]; TZAbstractResultSet.sub_004D4588
 004D4173    mov        eax,dword ptr [esi+2C]; TZAbstractResultSet.?f2C:dword
 004D4176    test       eax,eax
>004D4178    je         004D417F
 004D417A    call       TObject.Free
 004D417F    xor        eax,eax
 004D4181    mov        dword ptr [esi+2C],eax; TZAbstractResultSet.?f2C:dword
 004D4184    lea        eax,[esi+30]; TZAbstractResultSet.?f30:IZStatement
 004D4187    call       @IntfClear
 004D418C    mov        eax,dword ptr [esi+28]; TZAbstractResultSet.?f28:dword
 004D418F    call       TObject.Free
 004D4194    mov        edx,ebx
 004D4196    and        dl,0FC
 004D4199    mov        eax,esi
 004D419B    call       TObject.Destroy
 004D41A0    test       bl,bl
>004D41A2    jle        004D41AB
 004D41A4    mov        eax,esi
 004D41A6    call       @ClassDestroy
 004D41AB    pop        esi
 004D41AC    pop        ebx
 004D41AD    pop        ebp
 004D41AE    ret
*}
end;

//004D41B0
procedure sub_004D41B0;
begin
{*
 004D41B0    push       ebp
 004D41B1    mov        ebp,esp
 004D41B3    push       0
 004D41B5    xor        eax,eax
 004D41B7    push       ebp
 004D41B8    push       4D41FA
 004D41BD    push       dword ptr fs:[eax]
 004D41C0    mov        dword ptr fs:[eax],esp
 004D41C3    lea        edx,[ebp-4]
 004D41C6    mov        eax,[0061B75C]; ^#122.sResString20:TResStringRec
 004D41CB    call       LoadResString
 004D41D0    mov        ecx,dword ptr [ebp-4]
 004D41D3    mov        dl,1
 004D41D5    mov        eax,[004C6D20]; EZSQLException
 004D41DA    call       EZSQLException.Create; EZSQLException.Create
 004D41DF    call       @RaiseExcept
 004D41E4    xor        eax,eax
 004D41E6    pop        edx
 004D41E7    pop        ecx
 004D41E8    pop        ecx
 004D41E9    mov        dword ptr fs:[eax],edx
 004D41EC    push       4D4201
 004D41F1    lea        eax,[ebp-4]
 004D41F4    call       @LStrClr
 004D41F9    ret
<004D41FA    jmp        @HandleFinally
<004D41FF    jmp        004D41F1
 004D4201    pop        ecx
 004D4202    pop        ebp
 004D4203    ret
*}
end;

//004D4204
procedure sub_004D4204;
begin
{*
 004D4204    push       ebp
 004D4205    mov        ebp,esp
 004D4207    push       0
 004D4209    xor        eax,eax
 004D420B    push       ebp
 004D420C    push       4D424E
 004D4211    push       dword ptr fs:[eax]
 004D4214    mov        dword ptr fs:[eax],esp
 004D4217    lea        edx,[ebp-4]
 004D421A    mov        eax,[0061B4A8]; ^#122.sResString60:TResStringRec
 004D421F    call       LoadResString
 004D4224    mov        ecx,dword ptr [ebp-4]
 004D4227    mov        dl,1
 004D4229    mov        eax,[004C6D20]; EZSQLException
 004D422E    call       EZSQLException.Create; EZSQLException.Create
 004D4233    call       @RaiseExcept
 004D4238    xor        eax,eax
 004D423A    pop        edx
 004D423B    pop        ecx
 004D423C    pop        ecx
 004D423D    mov        dword ptr fs:[eax],edx
 004D4240    push       4D4255
 004D4245    lea        eax,[ebp-4]
 004D4248    call       @LStrClr
 004D424D    ret
<004D424E    jmp        @HandleFinally
<004D4253    jmp        004D4245
 004D4255    pop        ecx
 004D4256    pop        ebp
 004D4257    ret
*}
end;

//004D4258
procedure sub_004D4258;
begin
{*
 004D4258    push       ebp
 004D4259    mov        ebp,esp
 004D425B    push       0
 004D425D    xor        eax,eax
 004D425F    push       ebp
 004D4260    push       4D42A2
 004D4265    push       dword ptr fs:[eax]
 004D4268    mov        dword ptr fs:[eax],esp
 004D426B    lea        edx,[ebp-4]
 004D426E    mov        eax,[0061B5CC]; ^#122.sResString61:TResStringRec
 004D4273    call       LoadResString
 004D4278    mov        ecx,dword ptr [ebp-4]
 004D427B    mov        dl,1
 004D427D    mov        eax,[004C6D20]; EZSQLException
 004D4282    call       EZSQLException.Create; EZSQLException.Create
 004D4287    call       @RaiseExcept
 004D428C    xor        eax,eax
 004D428E    pop        edx
 004D428F    pop        ecx
 004D4290    pop        ecx
 004D4291    mov        dword ptr fs:[eax],edx
 004D4294    push       4D42A9
 004D4299    lea        eax,[ebp-4]
 004D429C    call       @LStrClr
 004D42A1    ret
<004D42A2    jmp        @HandleFinally
<004D42A7    jmp        004D4299
 004D42A9    pop        ecx
 004D42AA    pop        ebp
 004D42AB    ret
*}
end;

//004D42AC
//procedure sub_004D42AC(?:TZAbstractResultSet);
//begin
{*
 004D42AC    push       ebp
 004D42AD    mov        ebp,esp
 004D42AF    push       0
 004D42B1    xor        edx,edx
 004D42B3    push       ebp
 004D42B4    push       4D42FC
 004D42B9    push       dword ptr fs:[edx]
 004D42BC    mov        dword ptr fs:[edx],esp
 004D42BF    cmp        byte ptr [eax+1C],0; TZAbstractResultSet.?f1C:byte
>004D42C3    je         004D42E6
 004D42C5    lea        edx,[ebp-4]
 004D42C8    mov        eax,[0061BF8C]; ^#122.sResString62:TResStringRec
 004D42CD    call       LoadResString
 004D42D2    mov        ecx,dword ptr [ebp-4]
 004D42D5    mov        dl,1
 004D42D7    mov        eax,[004C6D20]; EZSQLException
 004D42DC    call       EZSQLException.Create; EZSQLException.Create
 004D42E1    call       @RaiseExcept
 004D42E6    xor        eax,eax
 004D42E8    pop        edx
 004D42E9    pop        ecx
 004D42EA    pop        ecx
 004D42EB    mov        dword ptr fs:[eax],edx
 004D42EE    push       4D4303
 004D42F3    lea        eax,[ebp-4]
 004D42F6    call       @LStrClr
 004D42FB    ret
<004D42FC    jmp        @HandleFinally
<004D4301    jmp        004D42F3
 004D4303    pop        ecx
 004D4304    pop        ebp
 004D4305    ret
*}
//end;

//004D4308
//procedure sub_004D4308(?:TZAbstractResultSet; ?:?; ?:?);
//begin
{*
 004D4308    push       ebp
 004D4309    mov        ebp,esp
 004D430B    add        esp,0FFFFFFC4
 004D430E    push       ebx
 004D430F    push       esi
 004D4310    push       edi
 004D4311    xor        ebx,ebx
 004D4313    mov        dword ptr [ebp-18],ebx
 004D4316    mov        dword ptr [ebp-34],ebx
 004D4319    mov        dword ptr [ebp-38],ebx
 004D431C    mov        dword ptr [ebp-3C],ebx
 004D431F    mov        dword ptr [ebp-8],ebx
 004D4322    mov        dword ptr [ebp-0C],ebx
 004D4325    mov        byte ptr [ebp-1],cl
 004D4328    mov        edi,edx
 004D432A    mov        esi,eax
 004D432C    xor        eax,eax
 004D432E    push       ebp
 004D432F    push       4D4440
 004D4334    push       dword ptr fs:[eax]
 004D4337    mov        dword ptr fs:[eax],esp
 004D433A    mov        eax,esi
 004D433C    call       004D42AC
 004D4341    mov        esi,dword ptr [esi+2C]; TZAbstractResultSet.?f2C:dword
 004D4344    test       esi,esi
>004D4346    je         004D4357
 004D4348    test       edi,edi
>004D434A    jle        004D4357
 004D434C    mov        eax,esi
 004D434E    mov        edx,dword ptr [eax]
 004D4350    call       dword ptr [edx+8]
 004D4353    cmp        edi,eax
>004D4355    jle        004D4390
 004D4357    lea        eax,[ebp-8]
 004D435A    push       eax
 004D435B    lea        edx,[ebp-0C]
 004D435E    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004D4363    call       LoadResString
 004D4368    mov        eax,dword ptr [ebp-0C]
 004D436B    mov        dword ptr [ebp-14],edi
 004D436E    mov        byte ptr [ebp-10],0
 004D4372    lea        edx,[ebp-14]
 004D4375    xor        ecx,ecx
 004D4377    call       Format
 004D437C    mov        ecx,dword ptr [ebp-8]
 004D437F    mov        dl,1
 004D4381    mov        eax,[004C6D20]; EZSQLException
 004D4386    call       EZSQLException.Create; EZSQLException.Create
 004D438B    call       @RaiseExcept
 004D4390    mov        edx,edi
 004D4392    mov        eax,esi
 004D4394    mov        ecx,dword ptr [eax]
 004D4396    call       dword ptr [ecx+44]
 004D4399    mov        ebx,eax
 004D439B    mov        dl,byte ptr [ebp-1]
 004D439E    mov        eax,ebx
 004D43A0    call       004D2C44
 004D43A5    test       al,al
>004D43A7    jne        004D4410
 004D43A9    lea        eax,[ebp-18]
 004D43AC    push       eax
 004D43AD    mov        dword ptr [ebp-30],edi
 004D43B0    mov        byte ptr [ebp-2C],0
 004D43B4    lea        edx,[ebp-34]
 004D43B7    mov        eax,ebx
 004D43B9    call       004D2CF0
 004D43BE    mov        eax,dword ptr [ebp-34]
 004D43C1    mov        dword ptr [ebp-28],eax
 004D43C4    mov        byte ptr [ebp-24],0B
 004D43C8    lea        edx,[ebp-38]
 004D43CB    mov        al,byte ptr [ebp-1]
 004D43CE    call       004D2CF0
 004D43D3    mov        eax,dword ptr [ebp-38]
 004D43D6    mov        dword ptr [ebp-20],eax
 004D43D9    mov        byte ptr [ebp-1C],0B
 004D43DD    lea        eax,[ebp-30]
 004D43E0    push       eax
 004D43E1    lea        edx,[ebp-3C]
 004D43E4    mov        eax,[0061AED4]; ^#122.sResString31:TResStringRec
 004D43E9    call       LoadResString
 004D43EE    mov        eax,dword ptr [ebp-3C]
 004D43F1    mov        ecx,2
 004D43F6    pop        edx
 004D43F7    call       Format
 004D43FC    mov        ecx,dword ptr [ebp-18]
 004D43FF    mov        dl,1
 004D4401    mov        eax,[004C6D20]; EZSQLException
 004D4406    call       EZSQLException.Create; EZSQLException.Create
 004D440B    call       @RaiseExcept
 004D4410    xor        eax,eax
 004D4412    pop        edx
 004D4413    pop        ecx
 004D4414    pop        ecx
 004D4415    mov        dword ptr fs:[eax],edx
 004D4418    push       4D4447
 004D441D    lea        eax,[ebp-3C]
 004D4420    mov        edx,3
 004D4425    call       @LStrArrayClr
 004D442A    lea        eax,[ebp-18]
 004D442D    call       @LStrClr
 004D4432    lea        eax,[ebp-0C]
 004D4435    mov        edx,2
 004D443A    call       @LStrArrayClr
 004D443F    ret
<004D4440    jmp        @HandleFinally
<004D4445    jmp        004D441D
 004D4447    pop        edi
 004D4448    pop        esi
 004D4449    pop        ebx
 004D444A    mov        esp,ebp
 004D444C    pop        ebp
 004D444D    ret
*}
//end;

//004D4450
//procedure sub_004D4450(?:TZAbstractResultSet; ?:?);
//begin
{*
 004D4450    push       ebp
 004D4451    mov        ebp,esp
 004D4453    add        esp,0FFFFFFD4
 004D4456    push       ebx
 004D4457    push       esi
 004D4458    push       edi
 004D4459    xor        ecx,ecx
 004D445B    mov        dword ptr [ebp-14],ecx
 004D445E    mov        dword ptr [ebp-28],ecx
 004D4461    mov        dword ptr [ebp-2C],ecx
 004D4464    mov        dword ptr [ebp-4],ecx
 004D4467    mov        dword ptr [ebp-8],ecx
 004D446A    mov        edi,edx
 004D446C    mov        esi,eax
 004D446E    xor        eax,eax
 004D4470    push       ebp
 004D4471    push       4D4567
 004D4476    push       dword ptr fs:[eax]
 004D4479    mov        dword ptr fs:[eax],esp
 004D447C    mov        eax,esi
 004D447E    call       004D42AC
 004D4483    mov        esi,dword ptr [esi+2C]; TZAbstractResultSet.?f2C:dword
 004D4486    test       esi,esi
>004D4488    je         004D4499
 004D448A    test       edi,edi
>004D448C    jle        004D4499
 004D448E    mov        eax,esi
 004D4490    mov        edx,dword ptr [eax]
 004D4492    call       dword ptr [edx+8]
 004D4495    cmp        edi,eax
>004D4497    jle        004D44D2
 004D4499    lea        eax,[ebp-4]
 004D449C    push       eax
 004D449D    lea        edx,[ebp-8]
 004D44A0    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004D44A5    call       LoadResString
 004D44AA    mov        eax,dword ptr [ebp-8]
 004D44AD    mov        dword ptr [ebp-10],edi
 004D44B0    mov        byte ptr [ebp-0C],0
 004D44B4    lea        edx,[ebp-10]
 004D44B7    xor        ecx,ecx
 004D44B9    call       Format
 004D44BE    mov        ecx,dword ptr [ebp-4]
 004D44C1    mov        dl,1
 004D44C3    mov        eax,[004C6D20]; EZSQLException
 004D44C8    call       EZSQLException.Create; EZSQLException.Create
 004D44CD    call       @RaiseExcept
 004D44D2    mov        edx,edi
 004D44D4    mov        eax,esi
 004D44D6    mov        ecx,dword ptr [eax]
 004D44D8    call       dword ptr [ecx+44]
 004D44DB    mov        ebx,eax
 004D44DD    mov        eax,ebx
 004D44DF    add        al,0F1
 004D44E1    sub        al,3
>004D44E3    jb         004D4537
 004D44E5    lea        eax,[ebp-14]
 004D44E8    push       eax
 004D44E9    mov        dword ptr [ebp-24],edi
 004D44EC    mov        byte ptr [ebp-20],0
 004D44F0    lea        edx,[ebp-28]
 004D44F3    mov        eax,ebx
 004D44F5    call       004D2CF0
 004D44FA    mov        eax,dword ptr [ebp-28]
 004D44FD    mov        dword ptr [ebp-1C],eax
 004D4500    mov        byte ptr [ebp-18],0B
 004D4504    lea        eax,[ebp-24]
 004D4507    push       eax
 004D4508    lea        edx,[ebp-2C]
 004D450B    mov        eax,[0061B858]; ^#122.sResString32:TResStringRec
 004D4510    call       LoadResString
 004D4515    mov        eax,dword ptr [ebp-2C]
 004D4518    mov        ecx,1
 004D451D    pop        edx
 004D451E    call       Format
 004D4523    mov        ecx,dword ptr [ebp-14]
 004D4526    mov        dl,1
 004D4528    mov        eax,[004C6D20]; EZSQLException
 004D452D    call       EZSQLException.Create; EZSQLException.Create
 004D4532    call       @RaiseExcept
 004D4537    xor        eax,eax
 004D4539    pop        edx
 004D453A    pop        ecx
 004D453B    pop        ecx
 004D453C    mov        dword ptr fs:[eax],edx
 004D453F    push       4D456E
 004D4544    lea        eax,[ebp-2C]
 004D4547    mov        edx,2
 004D454C    call       @LStrArrayClr
 004D4551    lea        eax,[ebp-14]
 004D4554    call       @LStrClr
 004D4559    lea        eax,[ebp-8]
 004D455C    mov        edx,2
 004D4561    call       @LStrArrayClr
 004D4566    ret
<004D4567    jmp        @HandleFinally
<004D456C    jmp        004D4544
 004D456E    pop        edi
 004D456F    pop        esi
 004D4570    pop        ebx
 004D4571    mov        esp,ebp
 004D4573    pop        ebp
 004D4574    ret
*}
//end;

//004D4578
//procedure sub_004D4578(?:TZAbstractResultSet; ?:?);
//begin
{*
 004D4578    mov        byte ptr [eax+25],dl; TZAbstractResultSet.?f25:byte
 004D457B    ret
*}
//end;

//004D457C
//procedure sub_004D457C(?:TZCachedResultSet; ?:?);
//begin
{*
 004D457C    mov        byte ptr [eax+24],dl; TZCachedResultSet.?f24:byte
 004D457F    ret
*}
//end;

//004D4580
procedure sub_004D4580;
begin
{*
 004D4580    mov        byte ptr [eax+1C],0; TZAbstractResultSet.?f1C:byte
 004D4584    ret
*}
end;

//004D4588
procedure sub_004D4588;
begin
{*
 004D4588    push       ebp
 004D4589    mov        ebp,esp
 004D458B    push       ebx
 004D458C    push       esi
 004D458D    push       edi
 004D458E    mov        ebx,eax
 004D4590    mov        byte ptr [ebx+34],1; TZAbstractResultSet.?f34:byte
 004D4594    xor        eax,eax
 004D4596    mov        dword ptr [ebx+10],eax; TZAbstractResultSet.?f10:dword
 004D4599    xor        eax,eax
 004D459B    mov        dword ptr [ebx+14],eax; TZAbstractResultSet.?f14:Integer
 004D459E    mov        byte ptr [ebx+1C],1; TZAbstractResultSet.?f1C:byte
 004D45A2    mov        eax,dword ptr [ebx+28]; TZAbstractResultSet.?f28:dword
 004D45A5    mov        esi,dword ptr [eax+8]
 004D45A8    sub        esi,1
>004D45AB    jno        004D45B2
 004D45AD    call       @IntOver
 004D45B2    cmp        esi,0
>004D45B5    jl         004D45D7
 004D45B7    mov        edx,esi
 004D45B9    mov        edi,dword ptr [ebx+28]; TZAbstractResultSet.?f28:dword
 004D45BC    mov        eax,edi
 004D45BE    call       TObjectList.GetItem
 004D45C3    mov        edx,eax
 004D45C5    mov        eax,edi
 004D45C7    call       TObjectList.Extract
 004D45CC    call       TObject.Free
 004D45D1    dec        esi
 004D45D2    cmp        esi,0FFFFFFFF
<004D45D5    jne        004D45B7
 004D45D7    mov        eax,dword ptr [ebx+28]; TZAbstractResultSet.?f28:dword
 004D45DA    mov        edx,dword ptr [eax]
 004D45DC    call       dword ptr [edx+8]
 004D45DF    lea        eax,[ebx+30]; TZAbstractResultSet.?f30:IZStatement
 004D45E2    call       @IntfClear
 004D45E7    pop        edi
 004D45E8    pop        esi
 004D45E9    pop        ebx
 004D45EA    pop        ebp
 004D45EB    ret
*}
end;

//004D45EC
//function sub_004D45EC:?;
//begin
{*
 004D45EC    mov        al,byte ptr [eax+34]; TZASAResultSet.?f34:byte
 004D45EF    ret
*}
//end;

//004D45F0
//function sub_004D45F0():?;
//begin
{*
 004D45F0    mov        al,1
 004D45F2    ret
*}
//end;

//004D45F4
//function sub_004D45F4(?:?):?;
//begin
{*
 004D45F4    push       ebp
 004D45F5    mov        ebp,esp
 004D45F7    push       0
 004D45F9    push       ebx
 004D45FA    push       esi
 004D45FB    mov        esi,edx
 004D45FD    mov        ebx,eax
 004D45FF    xor        eax,eax
 004D4601    push       ebp
 004D4602    push       4D4644
 004D4607    push       dword ptr fs:[eax]
 004D460A    mov        dword ptr fs:[eax],esp
 004D460D    lea        ecx,[ebp-4]
 004D4610    mov        edx,esi
 004D4612    mov        eax,ebx
 004D4614    mov        esi,dword ptr [eax]
 004D4616    call       dword ptr [esi+18]; TZASAResultSet.sub_0055CB94
 004D4619    mov        edx,dword ptr [ebp-4]
 004D461C    lea        eax,[ebx+0C]; TZASAResultSet.?fC:String
 004D461F    call       @LStrAsg
 004D4624    mov        eax,dword ptr [ebx+0C]; TZASAResultSet.?fC:String
 004D4627    call       @LStrToPChar
 004D462C    mov        ebx,eax
 004D462E    xor        eax,eax
 004D4630    pop        edx
 004D4631    pop        ecx
 004D4632    pop        ecx
 004D4633    mov        dword ptr fs:[eax],edx
 004D4636    push       4D464B
 004D463B    lea        eax,[ebp-4]
 004D463E    call       @LStrClr
 004D4643    ret
<004D4644    jmp        @HandleFinally
<004D4649    jmp        004D463B
 004D464B    mov        eax,ebx
 004D464D    pop        esi
 004D464E    pop        ebx
 004D464F    pop        ecx
 004D4650    pop        ebp
 004D4651    ret
*}
//end;

//004D4654
//procedure sub_004D4654(?:?; ?:?);
//begin
{*
 004D4654    push       ebp
 004D4655    mov        ebp,esp
 004D4657    push       ebx
 004D4658    mov        ebx,ecx
 004D465A    mov        cl,9
 004D465C    call       004D4308
 004D4661    mov        eax,ebx
 004D4663    call       @LStrClr
 004D4668    pop        ebx
 004D4669    pop        ebp
 004D466A    ret
*}
//end;

//004D466C
//procedure sub_004D466C(?:?; ?:?);
//begin
{*
 004D466C    push       ebp
 004D466D    mov        ebp,esp
 004D466F    push       ebx
 004D4670    mov        ebx,ecx
 004D4672    mov        cl,0A
 004D4674    call       004D4308
 004D4679    mov        eax,ebx
 004D467B    call       @WStrClr
 004D4680    pop        ebx
 004D4681    pop        ebp
 004D4682    ret
*}
//end;

//004D4684
//function sub_004D4684():?;
//begin
{*
 004D4684    push       ebp
 004D4685    mov        ebp,esp
 004D4687    mov        cl,1
 004D4689    call       004D4308
 004D468E    xor        eax,eax
 004D4690    pop        ebp
 004D4691    ret
*}
//end;

//004D4694
//function sub_004D4694():?;
//begin
{*
 004D4694    push       ebp
 004D4695    mov        ebp,esp
 004D4697    mov        cl,2
 004D4699    call       004D4308
 004D469E    xor        eax,eax
 004D46A0    pop        ebp
 004D46A1    ret
*}
//end;

//004D46A4
//function sub_004D46A4():?;
//begin
{*
 004D46A4    push       ebp
 004D46A5    mov        ebp,esp
 004D46A7    mov        cl,3
 004D46A9    call       004D4308
 004D46AE    xor        eax,eax
 004D46B0    pop        ebp
 004D46B1    ret
*}
//end;

//004D46B4
//function sub_004D46B4():?;
//begin
{*
 004D46B4    push       ebp
 004D46B5    mov        ebp,esp
 004D46B7    mov        cl,4
 004D46B9    call       004D4308
 004D46BE    xor        eax,eax
 004D46C0    pop        ebp
 004D46C1    ret
*}
//end;

//004D46C4
procedure sub_004D46C4();
begin
{*
 004D46C4    push       ebp
 004D46C5    mov        ebp,esp
 004D46C7    add        esp,0FFFFFFF8
 004D46CA    mov        cl,5
 004D46CC    call       004D4308
 004D46D1    mov        dword ptr [ebp-8],0
 004D46D8    mov        dword ptr [ebp-4],0
 004D46DF    mov        eax,dword ptr [ebp-8]
 004D46E2    mov        edx,dword ptr [ebp-4]
 004D46E5    pop        ecx
 004D46E6    pop        ecx
 004D46E7    pop        ebp
 004D46E8    ret
*}
end;

//004D46EC
procedure sub_004D46EC();
begin
{*
 004D46EC    push       ebp
 004D46ED    mov        ebp,esp
 004D46EF    push       ecx
 004D46F0    mov        cl,6
 004D46F2    call       004D4308
 004D46F7    xor        eax,eax
 004D46F9    mov        dword ptr [ebp-4],eax
 004D46FC    fld        dword ptr [ebp-4]
 004D46FF    pop        ecx
 004D4700    pop        ebp
 004D4701    ret
*}
end;

//004D4704
procedure sub_004D4704();
begin
{*
 004D4704    push       ebp
 004D4705    mov        ebp,esp
 004D4707    add        esp,0FFFFFFF8
 004D470A    mov        cl,7
 004D470C    call       004D4308
 004D4711    xor        eax,eax
 004D4713    mov        dword ptr [ebp-8],eax
 004D4716    mov        dword ptr [ebp-4],eax
 004D4719    fld        qword ptr [ebp-8]
 004D471C    pop        ecx
 004D471D    pop        ecx
 004D471E    pop        ebp
 004D471F    ret
*}
end;

//004D4720
procedure sub_004D4720();
begin
{*
 004D4720    push       ebp
 004D4721    mov        ebp,esp
 004D4723    add        esp,0FFFFFFF0
 004D4726    mov        cl,8
 004D4728    call       004D4308
 004D472D    xor        eax,eax
 004D472F    mov        dword ptr [ebp-10],eax
 004D4732    mov        dword ptr [ebp-0C],eax
 004D4735    mov        word ptr [ebp-8],ax
 004D4739    fld        tbyte ptr [ebp-10]
 004D473C    mov        esp,ebp
 004D473E    pop        ebp
 004D473F    ret
*}
end;

//004D4740
//procedure sub_004D4740(?:?; ?:?);
//begin
{*
 004D4740    push       ebp
 004D4741    mov        ebp,esp
 004D4743    push       ebx
 004D4744    mov        ebx,ecx
 004D4746    mov        cl,0B
 004D4748    call       004D4308
 004D474D    mov        eax,ebx
 004D474F    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004D4755    call       @DynArrayClear
 004D475A    pop        ebx
 004D475B    pop        ebp
 004D475C    ret
*}
//end;

//004D4760
procedure sub_004D4760();
begin
{*
 004D4760    push       ebp
 004D4761    mov        ebp,esp
 004D4763    add        esp,0FFFFFFF8
 004D4766    mov        cl,0C
 004D4768    call       004D4308
 004D476D    xor        eax,eax
 004D476F    mov        dword ptr [ebp-8],eax
 004D4772    mov        dword ptr [ebp-4],eax
 004D4775    fld        qword ptr [ebp-8]
 004D4778    pop        ecx
 004D4779    pop        ecx
 004D477A    pop        ebp
 004D477B    ret
*}
end;

//004D477C
procedure sub_004D477C();
begin
{*
 004D477C    push       ebp
 004D477D    mov        ebp,esp
 004D477F    add        esp,0FFFFFFF8
 004D4782    mov        cl,0D
 004D4784    call       004D4308
 004D4789    xor        eax,eax
 004D478B    mov        dword ptr [ebp-8],eax
 004D478E    mov        dword ptr [ebp-4],eax
 004D4791    fld        qword ptr [ebp-8]
 004D4794    pop        ecx
 004D4795    pop        ecx
 004D4796    pop        ebp
 004D4797    ret
*}
end;

//004D4798
procedure sub_004D4798();
begin
{*
 004D4798    push       ebp
 004D4799    mov        ebp,esp
 004D479B    add        esp,0FFFFFFF8
 004D479E    mov        cl,0E
 004D47A0    call       004D4308
 004D47A5    xor        eax,eax
 004D47A7    mov        dword ptr [ebp-8],eax
 004D47AA    mov        dword ptr [ebp-4],eax
 004D47AD    fld        qword ptr [ebp-8]
 004D47B0    pop        ecx
 004D47B1    pop        ecx
 004D47B2    pop        ebp
 004D47B3    ret
*}
end;

//004D47B4
//function sub_004D47B4(?:?):?;
//begin
{*
 004D47B4    push       ebp
 004D47B5    mov        ebp,esp
 004D47B7    add        esp,0FFFFFFF8
 004D47BA    push       ebx
 004D47BB    push       esi
 004D47BC    xor        ecx,ecx
 004D47BE    mov        dword ptr [ebp-8],ecx
 004D47C1    mov        esi,edx
 004D47C3    mov        ebx,eax
 004D47C5    xor        eax,eax
 004D47C7    push       ebp
 004D47C8    push       4D482D
 004D47CD    push       dword ptr fs:[eax]
 004D47D0    mov        dword ptr fs:[eax],esp
 004D47D3    mov        cl,0F
 004D47D5    mov        edx,esi
 004D47D7    mov        eax,ebx
 004D47D9    call       004D4308
 004D47DE    xor        eax,eax
 004D47E0    mov        dword ptr [ebp-4],eax
 004D47E3    mov        edx,esi
 004D47E5    mov        eax,ebx
 004D47E7    mov        ecx,dword ptr [eax]
 004D47E9    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 004D47EC    test       al,al
>004D47EE    jne        004D480D
 004D47F0    lea        ecx,[ebp-8]
 004D47F3    mov        edx,esi
 004D47F5    mov        eax,ebx
 004D47F7    mov        esi,dword ptr [eax]
 004D47F9    call       dword ptr [esi+5C]; TZASAResultSet.sub_0055C60C
 004D47FC    cmp        dword ptr [ebp-8],0
>004D4800    je         004D480D
 004D4802    mov        eax,dword ptr [ebp-8]
 004D4805    mov        edx,dword ptr [eax]
 004D4807    call       dword ptr [edx+30]
 004D480A    mov        dword ptr [ebp-4],eax
 004D480D    cmp        dword ptr [ebp-4],0
 004D4811    sete       al
 004D4814    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 004D4817    xor        eax,eax
 004D4819    pop        edx
 004D481A    pop        ecx
 004D481B    pop        ecx
 004D481C    mov        dword ptr fs:[eax],edx
 004D481F    push       4D4834
 004D4824    lea        eax,[ebp-8]
 004D4827    call       @IntfClear
 004D482C    ret
<004D482D    jmp        @HandleFinally
<004D4832    jmp        004D4824
 004D4834    mov        eax,dword ptr [ebp-4]
 004D4837    pop        esi
 004D4838    pop        ebx
 004D4839    pop        ecx
 004D483A    pop        ecx
 004D483B    pop        ebp
 004D483C    ret
*}
//end;

//004D4840
//function sub_004D4840(?:?):?;
//begin
{*
 004D4840    push       ebp
 004D4841    mov        ebp,esp
 004D4843    add        esp,0FFFFFFF8
 004D4846    push       ebx
 004D4847    push       esi
 004D4848    xor        ecx,ecx
 004D484A    mov        dword ptr [ebp-8],ecx
 004D484D    mov        esi,edx
 004D484F    mov        ebx,eax
 004D4851    xor        eax,eax
 004D4853    push       ebp
 004D4854    push       4D48B9
 004D4859    push       dword ptr fs:[eax]
 004D485C    mov        dword ptr fs:[eax],esp
 004D485F    mov        cl,10
 004D4861    mov        edx,esi
 004D4863    mov        eax,ebx
 004D4865    call       004D4308
 004D486A    xor        eax,eax
 004D486C    mov        dword ptr [ebp-4],eax
 004D486F    mov        edx,esi
 004D4871    mov        eax,ebx
 004D4873    mov        ecx,dword ptr [eax]
 004D4875    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 004D4878    test       al,al
>004D487A    jne        004D4899
 004D487C    lea        ecx,[ebp-8]
 004D487F    mov        edx,esi
 004D4881    mov        eax,ebx
 004D4883    mov        esi,dword ptr [eax]
 004D4885    call       dword ptr [esi+5C]; TZASAResultSet.sub_0055C60C
 004D4888    cmp        dword ptr [ebp-8],0
>004D488C    je         004D4899
 004D488E    mov        eax,dword ptr [ebp-8]
 004D4891    mov        edx,dword ptr [eax]
 004D4893    call       dword ptr [edx+30]
 004D4896    mov        dword ptr [ebp-4],eax
 004D4899    cmp        dword ptr [ebp-4],0
 004D489D    sete       al
 004D48A0    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 004D48A3    xor        eax,eax
 004D48A5    pop        edx
 004D48A6    pop        ecx
 004D48A7    pop        ecx
 004D48A8    mov        dword ptr fs:[eax],edx
 004D48AB    push       4D48C0
 004D48B0    lea        eax,[ebp-8]
 004D48B3    call       @IntfClear
 004D48B8    ret
<004D48B9    jmp        @HandleFinally
<004D48BE    jmp        004D48B0
 004D48C0    mov        eax,dword ptr [ebp-4]
 004D48C3    pop        esi
 004D48C4    pop        ebx
 004D48C5    pop        ecx
 004D48C6    pop        ecx
 004D48C7    pop        ebp
 004D48C8    ret
*}
//end;

//004D48CC
//function sub_004D48CC(?:?):?;
//begin
{*
 004D48CC    push       ebp
 004D48CD    mov        ebp,esp
 004D48CF    add        esp,0FFFFFFF8
 004D48D2    push       ebx
 004D48D3    push       esi
 004D48D4    xor        ecx,ecx
 004D48D6    mov        dword ptr [ebp-8],ecx
 004D48D9    mov        esi,edx
 004D48DB    mov        ebx,eax
 004D48DD    xor        eax,eax
 004D48DF    push       ebp
 004D48E0    push       4D4945
 004D48E5    push       dword ptr fs:[eax]
 004D48E8    mov        dword ptr fs:[eax],esp
 004D48EB    mov        cl,11
 004D48ED    mov        edx,esi
 004D48EF    mov        eax,ebx
 004D48F1    call       004D4308
 004D48F6    xor        eax,eax
 004D48F8    mov        dword ptr [ebp-4],eax
 004D48FB    mov        edx,esi
 004D48FD    mov        eax,ebx
 004D48FF    mov        ecx,dword ptr [eax]
 004D4901    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 004D4904    test       al,al
>004D4906    jne        004D4925
 004D4908    lea        ecx,[ebp-8]
 004D490B    mov        edx,esi
 004D490D    mov        eax,ebx
 004D490F    mov        esi,dword ptr [eax]
 004D4911    call       dword ptr [esi+5C]; TZASAResultSet.sub_0055C60C
 004D4914    cmp        dword ptr [ebp-8],0
>004D4918    je         004D4925
 004D491A    mov        eax,dword ptr [ebp-8]
 004D491D    mov        edx,dword ptr [eax]
 004D491F    call       dword ptr [edx+30]
 004D4922    mov        dword ptr [ebp-4],eax
 004D4925    cmp        dword ptr [ebp-4],0
 004D4929    sete       al
 004D492C    mov        byte ptr [ebx+34],al; TZASAResultSet.?f34:byte
 004D492F    xor        eax,eax
 004D4931    pop        edx
 004D4932    pop        ecx
 004D4933    pop        ecx
 004D4934    mov        dword ptr fs:[eax],edx
 004D4937    push       4D494C
 004D493C    lea        eax,[ebp-8]
 004D493F    call       @IntfClear
 004D4944    ret
<004D4945    jmp        @HandleFinally
<004D494A    jmp        004D493C
 004D494C    mov        eax,dword ptr [ebp-4]
 004D494F    pop        esi
 004D4950    pop        ebx
 004D4951    pop        ecx
 004D4952    pop        ecx
 004D4953    pop        ebp
 004D4954    ret
*}
//end;

//004D4958
//procedure sub_004D4958(?:?; ?:?);
//begin
{*
 004D4958    push       ebp
 004D4959    mov        ebp,esp
 004D495B    push       ebx
 004D495C    mov        ebx,ecx
 004D495E    call       004D4450
 004D4963    xor        ecx,ecx
 004D4965    mov        dl,1
 004D4967    mov        eax,[004D3F38]; TZAbstractBlob
 004D496C    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004D4971    mov        edx,eax
 004D4973    test       edx,edx
>004D4975    je         004D497A
 004D4977    sub        edx,0FFFFFFE8
 004D497A    mov        eax,ebx
 004D497C    call       @IntfCopy
 004D4981    pop        ebx
 004D4982    pop        ebp
 004D4983    ret
*}
//end;

//004D4984
//procedure sub_004D4984(?:?; ?:?);
//begin
{*
 004D4984    push       ebp
 004D4985    mov        ebp,esp
 004D4987    push       0
 004D4989    push       0
 004D498B    push       0
 004D498D    push       0
 004D498F    push       0
 004D4991    push       0
 004D4993    push       0
 004D4995    push       ebx
 004D4996    push       esi
 004D4997    push       edi
 004D4998    mov        dword ptr [ebp-4],ecx
 004D499B    mov        esi,edx
 004D499D    mov        ebx,eax
 004D499F    xor        eax,eax
 004D49A1    push       ebp
 004D49A2    push       4D4B3D
 004D49A7    push       dword ptr fs:[eax]
 004D49AA    mov        dword ptr fs:[eax],esp
 004D49AD    mov        eax,ebx
 004D49AF    call       004D42AC
 004D49B4    mov        edi,dword ptr [ebx+2C]; TZASAResultSet.?f2C:dword
 004D49B7    test       edi,edi
>004D49B9    je         004D49CA
 004D49BB    test       esi,esi
>004D49BD    jle        004D49CA
 004D49BF    mov        eax,edi
 004D49C1    mov        edx,dword ptr [eax]
 004D49C3    call       dword ptr [edx+8]
 004D49C6    cmp        esi,eax
>004D49C8    jle        004D4A03
 004D49CA    lea        eax,[ebp-8]
 004D49CD    push       eax
 004D49CE    lea        edx,[ebp-0C]
 004D49D1    mov        eax,[0061B758]; ^#122.sResString30:TResStringRec
 004D49D6    call       LoadResString
 004D49DB    mov        eax,dword ptr [ebp-0C]
 004D49DE    mov        dword ptr [ebp-14],esi
 004D49E1    mov        byte ptr [ebp-10],0
 004D49E5    lea        edx,[ebp-14]
 004D49E8    xor        ecx,ecx
 004D49EA    call       Format
 004D49EF    mov        ecx,dword ptr [ebp-8]
 004D49F2    mov        dl,1
 004D49F4    mov        eax,[004C6D20]; EZSQLException
 004D49F9    call       EZSQLException.Create; EZSQLException.Create
 004D49FE    call       @RaiseExcept
 004D4A03    mov        edx,esi
 004D4A05    mov        eax,edi
 004D4A07    mov        ecx,dword ptr [eax]
 004D4A09    call       dword ptr [ecx+44]
 004D4A0C    and        eax,7F
 004D4A0F    cmp        eax,11
>004D4A12    ja         004D4AFB
 004D4A18    mov        al,byte ptr [eax+4D4A25]
 004D4A1E    jmp        dword ptr [eax*4+4D4A37]
 004D4A1E    db         0
 004D4A1E    db         1
 004D4A1E    db         2
 004D4A1E    db         2
 004D4A1E    db         2
 004D4A1E    db         2
 004D4A1E    db         3
 004D4A1E    db         3
 004D4A1E    db         3
 004D4A1E    db         5
 004D4A1E    db         6
 004D4A1E    db         5
 004D4A1E    db         4
 004D4A1E    db         4
 004D4A1E    db         4
 004D4A1E    db         5
 004D4A1E    db         6
 004D4A1E    db         5
 004D4A1E    dd         4D4AFB
 004D4A1E    dd         4D4A53
 004D4A1E    dd         4D4A6D
 004D4A1E    dd         4D4A87
 004D4A1E    dd         4D4A9F
 004D4A1E    dd         4D4AB7
 004D4A1E    dd         4D4AD9
 004D4A53    mov        eax,dword ptr [ebp-4]
 004D4A56    mov        byte ptr [eax],1
 004D4A59    mov        edx,esi
 004D4A5B    mov        eax,ebx
 004D4A5D    mov        ecx,dword ptr [eax]
 004D4A5F    call       dword ptr [ecx+20]; TZASAResultSet.sub_0055C680
 004D4A62    mov        edx,dword ptr [ebp-4]
 004D4A65    mov        byte ptr [edx+1],al
>004D4A68    jmp        004D4B01
 004D4A6D    mov        eax,dword ptr [ebp-4]
 004D4A70    mov        byte ptr [eax],2
 004D4A73    mov        edx,esi
 004D4A75    mov        eax,ebx
 004D4A77    mov        ecx,dword ptr [eax]
 004D4A79    call       dword ptr [ecx+30]; TZASAResultSet.sub_0055CA6C
 004D4A7C    mov        ecx,dword ptr [ebp-4]
 004D4A7F    mov        dword ptr [ecx+2],eax
 004D4A82    mov        dword ptr [ecx+6],edx
>004D4A85    jmp        004D4B01
 004D4A87    mov        eax,dword ptr [ebp-4]
 004D4A8A    mov        byte ptr [eax],3
 004D4A8D    mov        edx,esi
 004D4A8F    mov        eax,ebx
 004D4A91    mov        ecx,dword ptr [eax]
 004D4A93    call       dword ptr [ecx+3C]; TZASAResultSet.sub_0055C578
 004D4A96    mov        eax,dword ptr [ebp-4]
 004D4A99    fstp       tbyte ptr [eax+0A]
 004D4A9C    wait
>004D4A9D    jmp        004D4B01
 004D4A9F    mov        eax,dword ptr [ebp-4]
 004D4AA2    mov        byte ptr [eax],6
 004D4AA5    mov        edx,esi
 004D4AA7    mov        eax,ebx
 004D4AA9    mov        ecx,dword ptr [eax]
 004D4AAB    call       dword ptr [ecx+4C]; TZASAResultSet.sub_0055CCB8
 004D4AAE    mov        eax,dword ptr [ebp-4]
 004D4AB1    fstp       qword ptr [eax+1C]
 004D4AB4    wait
>004D4AB5    jmp        004D4B01
 004D4AB7    mov        eax,dword ptr [ebp-4]
 004D4ABA    mov        byte ptr [eax],4
 004D4ABD    lea        ecx,[ebp-18]
 004D4AC0    mov        edx,esi
 004D4AC2    mov        eax,ebx
 004D4AC4    mov        esi,dword ptr [eax]
 004D4AC6    call       dword ptr [esi+18]; TZASAResultSet.sub_0055CB94
 004D4AC9    mov        edx,dword ptr [ebp-18]
 004D4ACC    mov        eax,dword ptr [ebp-4]
 004D4ACF    add        eax,14
 004D4AD2    call       @LStrAsg
>004D4AD7    jmp        004D4B01
 004D4AD9    mov        eax,dword ptr [ebp-4]
 004D4ADC    mov        byte ptr [eax],5
 004D4ADF    lea        ecx,[ebp-1C]
 004D4AE2    mov        edx,esi
 004D4AE4    mov        eax,ebx
 004D4AE6    mov        esi,dword ptr [eax]
 004D4AE8    call       dword ptr [esi+1C]; TZASAResultSet.sub_004D466C
 004D4AEB    mov        edx,dword ptr [ebp-1C]
 004D4AEE    mov        eax,dword ptr [ebp-4]
 004D4AF1    add        eax,18
 004D4AF4    call       @WStrAsg
>004D4AF9    jmp        004D4B01
 004D4AFB    mov        eax,dword ptr [ebp-4]
 004D4AFE    mov        byte ptr [eax],0
 004D4B01    mov        eax,ebx
 004D4B03    mov        edx,dword ptr [eax]
 004D4B05    call       dword ptr [edx+0C]; TZASAResultSet.sub_004D45EC
 004D4B08    test       al,al
>004D4B0A    je         004D4B12
 004D4B0C    mov        eax,dword ptr [ebp-4]
 004D4B0F    mov        byte ptr [eax],0
 004D4B12    xor        eax,eax
 004D4B14    pop        edx
 004D4B15    pop        ecx
 004D4B16    pop        ecx
 004D4B17    mov        dword ptr fs:[eax],edx
 004D4B1A    push       4D4B44
 004D4B1F    lea        eax,[ebp-1C]
 004D4B22    call       @WStrClr
 004D4B27    lea        eax,[ebp-18]
 004D4B2A    call       @LStrClr
 004D4B2F    lea        eax,[ebp-0C]
 004D4B32    mov        edx,2
 004D4B37    call       @LStrArrayClr
 004D4B3C    ret
<004D4B3D    jmp        @HandleFinally
<004D4B42    jmp        004D4B1F
 004D4B44    pop        edi
 004D4B45    pop        esi
 004D4B46    pop        ebx
 004D4B47    mov        esp,ebp
 004D4B49    pop        ebp
 004D4B4A    ret
*}
//end;

//004D4B4C
//procedure sub_004D4B4C(?:?);
//begin
{*
 004D4B4C    push       ebp
 004D4B4D    mov        ebp,esp
 004D4B4F    push       ebx
 004D4B50    push       esi
 004D4B51    mov        esi,edx
 004D4B53    mov        ebx,eax
 004D4B55    mov        edx,esi
 004D4B57    mov        eax,ebx
 004D4B59    call       004D4EA0
 004D4B5E    mov        edx,eax
 004D4B60    mov        eax,ebx
 004D4B62    mov        ecx,dword ptr [eax]
 004D4B64    call       dword ptr [ecx+10]; TZASAResultSet.sub_0055CD4C
 004D4B67    pop        esi
 004D4B68    pop        ebx
 004D4B69    pop        ebp
 004D4B6A    ret
*}
//end;

//004D4B6C
//procedure sub_004D4B6C(?:?);
//begin
{*
 004D4B6C    push       ebp
 004D4B6D    mov        ebp,esp
 004D4B6F    push       ebx
 004D4B70    push       esi
 004D4B71    mov        esi,edx
 004D4B73    mov        ebx,eax
 004D4B75    mov        edx,esi
 004D4B77    mov        eax,ebx
 004D4B79    call       004D4EA0
 004D4B7E    mov        edx,eax
 004D4B80    mov        eax,ebx
 004D4B82    mov        ecx,dword ptr [eax]
 004D4B84    call       dword ptr [ecx+14]; TZASAResultSet.sub_004D45F4
 004D4B87    pop        esi
 004D4B88    pop        ebx
 004D4B89    pop        ebp
 004D4B8A    ret
*}
//end;

//004D4B8C
//procedure sub_004D4B8C(?:?; ?:?);
//begin
{*
 004D4B8C    push       ebp
 004D4B8D    mov        ebp,esp
 004D4B8F    push       ecx
 004D4B90    push       ebx
 004D4B91    push       esi
 004D4B92    mov        dword ptr [ebp-4],ecx
 004D4B95    mov        esi,edx
 004D4B97    mov        ebx,eax
 004D4B99    mov        edx,esi
 004D4B9B    mov        eax,ebx
 004D4B9D    call       004D4EA0
 004D4BA2    mov        edx,eax
 004D4BA4    mov        ecx,dword ptr [ebp-4]
 004D4BA7    mov        eax,ebx
 004D4BA9    mov        ebx,dword ptr [eax]
 004D4BAB    call       dword ptr [ebx+18]; TZASAResultSet.sub_0055CB94
 004D4BAE    pop        esi
 004D4BAF    pop        ebx
 004D4BB0    pop        ecx
 004D4BB1    pop        ebp
 004D4BB2    ret
*}
//end;

//004D4BB4
//procedure sub_004D4BB4(?:?; ?:?);
//begin
{*
 004D4BB4    push       ebp
 004D4BB5    mov        ebp,esp
 004D4BB7    push       ecx
 004D4BB8    push       ebx
 004D4BB9    push       esi
 004D4BBA    mov        dword ptr [ebp-4],ecx
 004D4BBD    mov        esi,edx
 004D4BBF    mov        ebx,eax
 004D4BC1    mov        edx,esi
 004D4BC3    mov        eax,ebx
 004D4BC5    call       004D4EA0
 004D4BCA    mov        edx,eax
 004D4BCC    mov        ecx,dword ptr [ebp-4]
 004D4BCF    mov        eax,ebx
 004D4BD1    mov        ebx,dword ptr [eax]
 004D4BD3    call       dword ptr [ebx+1C]; TZASAResultSet.sub_004D466C
 004D4BD6    pop        esi
 004D4BD7    pop        ebx
 004D4BD8    pop        ecx
 004D4BD9    pop        ebp
 004D4BDA    ret
*}
//end;

//004D4BDC
//procedure sub_004D4BDC(?:?);
//begin
{*
 004D4BDC    push       ebp
 004D4BDD    mov        ebp,esp
 004D4BDF    push       ebx
 004D4BE0    push       esi
 004D4BE1    mov        esi,edx
 004D4BE3    mov        ebx,eax
 004D4BE5    mov        edx,esi
 004D4BE7    mov        eax,ebx
 004D4BE9    call       004D4EA0
 004D4BEE    mov        edx,eax
 004D4BF0    mov        eax,ebx
 004D4BF2    mov        ecx,dword ptr [eax]
 004D4BF4    call       dword ptr [ecx+20]; TZASAResultSet.sub_0055C680
 004D4BF7    pop        esi
 004D4BF8    pop        ebx
 004D4BF9    pop        ebp
 004D4BFA    ret
*}
//end;

//004D4BFC
//procedure sub_004D4BFC(?:?);
//begin
{*
 004D4BFC    push       ebp
 004D4BFD    mov        ebp,esp
 004D4BFF    push       ebx
 004D4C00    push       esi
 004D4C01    mov        esi,edx
 004D4C03    mov        ebx,eax
 004D4C05    mov        edx,esi
 004D4C07    mov        eax,ebx
 004D4C09    call       004D4EA0
 004D4C0E    mov        edx,eax
 004D4C10    mov        eax,ebx
 004D4C12    mov        ecx,dword ptr [eax]
 004D4C14    call       dword ptr [ecx+24]; TZASAResultSet.sub_0055C70C
 004D4C17    pop        esi
 004D4C18    pop        ebx
 004D4C19    pop        ebp
 004D4C1A    ret
*}
//end;

//004D4C1C
//procedure sub_004D4C1C(?:?);
//begin
{*
 004D4C1C    push       ebp
 004D4C1D    mov        ebp,esp
 004D4C1F    push       ebx
 004D4C20    push       esi
 004D4C21    mov        esi,edx
 004D4C23    mov        ebx,eax
 004D4C25    mov        edx,esi
 004D4C27    mov        eax,ebx
 004D4C29    call       004D4EA0
 004D4C2E    mov        edx,eax
 004D4C30    mov        eax,ebx
 004D4C32    mov        ecx,dword ptr [eax]
 004D4C34    call       dword ptr [ecx+28]; TZASAResultSet.sub_0055CB08
 004D4C37    pop        esi
 004D4C38    pop        ebx
 004D4C39    pop        ebp
 004D4C3A    ret
*}
//end;

//004D4C3C
//procedure sub_004D4C3C(?:?);
//begin
{*
 004D4C3C    push       ebp
 004D4C3D    mov        ebp,esp
 004D4C3F    push       ebx
 004D4C40    push       esi
 004D4C41    mov        esi,edx
 004D4C43    mov        ebx,eax
 004D4C45    mov        edx,esi
 004D4C47    mov        eax,ebx
 004D4C49    call       004D4EA0
 004D4C4E    mov        edx,eax
 004D4C50    mov        eax,ebx
 004D4C52    mov        ecx,dword ptr [eax]
 004D4C54    call       dword ptr [ecx+2C]; TZASAResultSet.sub_0055C9E0
 004D4C57    pop        esi
 004D4C58    pop        ebx
 004D4C59    pop        ebp
 004D4C5A    ret
*}
//end;

//004D4C5C
//procedure sub_004D4C5C(?:?);
//begin
{*
 004D4C5C    push       ebp
 004D4C5D    mov        ebp,esp
 004D4C5F    add        esp,0FFFFFFF8
 004D4C62    push       ebx
 004D4C63    push       esi
 004D4C64    mov        esi,edx
 004D4C66    mov        ebx,eax
 004D4C68    mov        edx,esi
 004D4C6A    mov        eax,ebx
 004D4C6C    call       004D4EA0
 004D4C71    mov        edx,eax
 004D4C73    mov        eax,ebx
 004D4C75    mov        ecx,dword ptr [eax]
 004D4C77    call       dword ptr [ecx+30]; TZASAResultSet.sub_0055CA6C
 004D4C7A    mov        dword ptr [ebp-8],eax
 004D4C7D    mov        dword ptr [ebp-4],edx
 004D4C80    mov        eax,dword ptr [ebp-8]
 004D4C83    mov        edx,dword ptr [ebp-4]
 004D4C86    pop        esi
 004D4C87    pop        ebx
 004D4C88    pop        ecx
 004D4C89    pop        ecx
 004D4C8A    pop        ebp
 004D4C8B    ret
*}
//end;

//004D4C8C
//procedure sub_004D4C8C(?:?);
//begin
{*
 004D4C8C    push       ebp
 004D4C8D    mov        ebp,esp
 004D4C8F    push       ecx
 004D4C90    push       ebx
 004D4C91    push       esi
 004D4C92    mov        esi,edx
 004D4C94    mov        ebx,eax
 004D4C96    mov        edx,esi
 004D4C98    mov        eax,ebx
 004D4C9A    call       004D4EA0
 004D4C9F    mov        edx,eax
 004D4CA1    mov        eax,ebx
 004D4CA3    mov        ecx,dword ptr [eax]
 004D4CA5    call       dword ptr [ecx+34]; TZASAResultSet.sub_0055C950
 004D4CA8    fstp       dword ptr [ebp-4]
 004D4CAB    wait
 004D4CAC    fld        dword ptr [ebp-4]
 004D4CAF    pop        esi
 004D4CB0    pop        ebx
 004D4CB1    pop        ecx
 004D4CB2    pop        ebp
 004D4CB3    ret
*}
//end;

//004D4CB4
//procedure sub_004D4CB4(?:?);
//begin
{*
 004D4CB4    push       ebp
 004D4CB5    mov        ebp,esp
 004D4CB7    add        esp,0FFFFFFF8
 004D4CBA    push       ebx
 004D4CBB    push       esi
 004D4CBC    mov        esi,edx
 004D4CBE    mov        ebx,eax
 004D4CC0    mov        edx,esi
 004D4CC2    mov        eax,ebx
 004D4CC4    call       004D4EA0
 004D4CC9    mov        edx,eax
 004D4CCB    mov        eax,ebx
 004D4CCD    mov        ecx,dword ptr [eax]
 004D4CCF    call       dword ptr [ecx+38]; TZASAResultSet.sub_0055C8BC
 004D4CD2    fstp       qword ptr [ebp-8]
 004D4CD5    wait
 004D4CD6    fld        qword ptr [ebp-8]
 004D4CD9    pop        esi
 004D4CDA    pop        ebx
 004D4CDB    pop        ecx
 004D4CDC    pop        ecx
 004D4CDD    pop        ebp
 004D4CDE    ret
*}
//end;

//004D4CE0
//procedure sub_004D4CE0(?:?);
//begin
{*
 004D4CE0    push       ebp
 004D4CE1    mov        ebp,esp
 004D4CE3    add        esp,0FFFFFFF0
 004D4CE6    push       ebx
 004D4CE7    push       esi
 004D4CE8    mov        esi,edx
 004D4CEA    mov        ebx,eax
 004D4CEC    mov        edx,esi
 004D4CEE    mov        eax,ebx
 004D4CF0    call       004D4EA0
 004D4CF5    mov        edx,eax
 004D4CF7    mov        eax,ebx
 004D4CF9    mov        ecx,dword ptr [eax]
 004D4CFB    call       dword ptr [ecx+3C]; TZASAResultSet.sub_0055C578
 004D4CFE    fstp       tbyte ptr [ebp-10]
 004D4D01    wait
 004D4D02    fld        tbyte ptr [ebp-10]
 004D4D05    pop        esi
 004D4D06    pop        ebx
 004D4D07    mov        esp,ebp
 004D4D09    pop        ebp
 004D4D0A    ret
*}
//end;

//004D4D0C
//procedure sub_004D4D0C(?:?; ?:?);
//begin
{*
 004D4D0C    push       ebp
 004D4D0D    mov        ebp,esp
 004D4D0F    push       ecx
 004D4D10    push       ebx
 004D4D11    push       esi
 004D4D12    mov        dword ptr [ebp-4],ecx
 004D4D15    mov        esi,edx
 004D4D17    mov        ebx,eax
 004D4D19    mov        edx,esi
 004D4D1B    mov        eax,ebx
 004D4D1D    call       004D4EA0
 004D4D22    mov        edx,eax
 004D4D24    mov        ecx,dword ptr [ebp-4]
 004D4D27    mov        eax,ebx
 004D4D29    mov        ebx,dword ptr [eax]
 004D4D2B    call       dword ptr [ebx+40]; TZASAResultSet.sub_0055C798
 004D4D2E    pop        esi
 004D4D2F    pop        ebx
 004D4D30    pop        ecx
 004D4D31    pop        ebp
 004D4D32    ret
*}
//end;

//004D4D34
//procedure sub_004D4D34(?:?);
//begin
{*
 004D4D34    push       ebp
 004D4D35    mov        ebp,esp
 004D4D37    add        esp,0FFFFFFF8
 004D4D3A    push       ebx
 004D4D3B    push       esi
 004D4D3C    mov        esi,edx
 004D4D3E    mov        ebx,eax
 004D4D40    mov        edx,esi
 004D4D42    mov        eax,ebx
 004D4D44    call       004D4EA0
 004D4D49    mov        edx,eax
 004D4D4B    mov        eax,ebx
 004D4D4D    mov        ecx,dword ptr [eax]
 004D4D4F    call       dword ptr [ecx+44]; TZASAResultSet.sub_0055C828
 004D4D52    fstp       qword ptr [ebp-8]
 004D4D55    wait
 004D4D56    fld        qword ptr [ebp-8]
 004D4D59    pop        esi
 004D4D5A    pop        ebx
 004D4D5B    pop        ecx
 004D4D5C    pop        ecx
 004D4D5D    pop        ebp
 004D4D5E    ret
*}
//end;

//004D4D60
//procedure sub_004D4D60(?:?);
//begin
{*
 004D4D60    push       ebp
 004D4D61    mov        ebp,esp
 004D4D63    add        esp,0FFFFFFF8
 004D4D66    push       ebx
 004D4D67    push       esi
 004D4D68    mov        esi,edx
 004D4D6A    mov        ebx,eax
 004D4D6C    mov        edx,esi
 004D4D6E    mov        eax,ebx
 004D4D70    call       004D4EA0
 004D4D75    mov        edx,eax
 004D4D77    mov        eax,ebx
 004D4D79    mov        ecx,dword ptr [eax]
 004D4D7B    call       dword ptr [ecx+48]; TZASAResultSet.sub_0055CC24
 004D4D7E    fstp       qword ptr [ebp-8]
 004D4D81    wait
 004D4D82    fld        qword ptr [ebp-8]
 004D4D85    pop        esi
 004D4D86    pop        ebx
 004D4D87    pop        ecx
 004D4D88    pop        ecx
 004D4D89    pop        ebp
 004D4D8A    ret
*}
//end;

//004D4D8C
//procedure sub_004D4D8C(?:?);
//begin
{*
 004D4D8C    push       ebp
 004D4D8D    mov        ebp,esp
 004D4D8F    add        esp,0FFFFFFF8
 004D4D92    push       ebx
 004D4D93    push       esi
 004D4D94    mov        esi,edx
 004D4D96    mov        ebx,eax
 004D4D98    mov        edx,esi
 004D4D9A    mov        eax,ebx
 004D4D9C    call       004D4EA0
 004D4DA1    mov        edx,eax
 004D4DA3    mov        eax,ebx
 004D4DA5    mov        ecx,dword ptr [eax]
 004D4DA7    call       dword ptr [ecx+4C]; TZASAResultSet.sub_0055CCB8
 004D4DAA    fstp       qword ptr [ebp-8]
 004D4DAD    wait
 004D4DAE    fld        qword ptr [ebp-8]
 004D4DB1    pop        esi
 004D4DB2    pop        ebx
 004D4DB3    pop        ecx
 004D4DB4    pop        ecx
 004D4DB5    pop        ebp
 004D4DB6    ret
*}
//end;

//004D4DB8
//procedure sub_004D4DB8(?:?);
//begin
{*
 004D4DB8    push       ebp
 004D4DB9    mov        ebp,esp
 004D4DBB    push       ebx
 004D4DBC    push       esi
 004D4DBD    mov        esi,edx
 004D4DBF    mov        ebx,eax
 004D4DC1    mov        edx,esi
 004D4DC3    mov        eax,ebx
 004D4DC5    call       004D4EA0
 004D4DCA    mov        edx,eax
 004D4DCC    mov        eax,ebx
 004D4DCE    mov        ecx,dword ptr [eax]
 004D4DD0    call       dword ptr [ecx+50]; TZASAResultSet.sub_004D47B4
 004D4DD3    pop        esi
 004D4DD4    pop        ebx
 004D4DD5    pop        ebp
 004D4DD6    ret
*}
//end;

//004D4DD8
//procedure sub_004D4DD8(?:?);
//begin
{*
 004D4DD8    push       ebp
 004D4DD9    mov        ebp,esp
 004D4DDB    push       ebx
 004D4DDC    push       esi
 004D4DDD    mov        esi,edx
 004D4DDF    mov        ebx,eax
 004D4DE1    mov        edx,esi
 004D4DE3    mov        eax,ebx
 004D4DE5    call       004D4EA0
 004D4DEA    mov        edx,eax
 004D4DEC    mov        eax,ebx
 004D4DEE    mov        ecx,dword ptr [eax]
 004D4DF0    call       dword ptr [ecx+54]; TZASAResultSet.sub_004D4840
 004D4DF3    pop        esi
 004D4DF4    pop        ebx
 004D4DF5    pop        ebp
 004D4DF6    ret
*}
//end;

//004D4DF8
//procedure sub_004D4DF8(?:?);
//begin
{*
 004D4DF8    push       ebp
 004D4DF9    mov        ebp,esp
 004D4DFB    push       ebx
 004D4DFC    push       esi
 004D4DFD    mov        esi,edx
 004D4DFF    mov        ebx,eax
 004D4E01    mov        edx,esi
 004D4E03    mov        eax,ebx
 004D4E05    call       004D4EA0
 004D4E0A    mov        edx,eax
 004D4E0C    mov        eax,ebx
 004D4E0E    mov        ecx,dword ptr [eax]
 004D4E10    call       dword ptr [ecx+58]; TZASAResultSet.sub_004D48CC
 004D4E13    pop        esi
 004D4E14    pop        ebx
 004D4E15    pop        ebp
 004D4E16    ret
*}
//end;

//004D4E18
//procedure sub_004D4E18(?:?; ?:?);
//begin
{*
 004D4E18    push       ebp
 004D4E19    mov        ebp,esp
 004D4E1B    push       ecx
 004D4E1C    push       ebx
 004D4E1D    push       esi
 004D4E1E    mov        dword ptr [ebp-4],ecx
 004D4E21    mov        esi,edx
 004D4E23    mov        ebx,eax
 004D4E25    mov        edx,esi
 004D4E27    mov        eax,ebx
 004D4E29    call       004D4EA0
 004D4E2E    mov        edx,eax
 004D4E30    mov        ecx,dword ptr [ebp-4]
 004D4E33    mov        eax,ebx
 004D4E35    mov        ebx,dword ptr [eax]
 004D4E37    call       dword ptr [ebx+5C]; TZASAResultSet.sub_0055C60C
 004D4E3A    pop        esi
 004D4E3B    pop        ebx
 004D4E3C    pop        ecx
 004D4E3D    pop        ebp
 004D4E3E    ret
*}
//end;

//004D4E40
//procedure sub_004D4E40(?:?; ?:?);
//begin
{*
 004D4E40    push       ebp
 004D4E41    mov        ebp,esp
 004D4E43    push       ecx
 004D4E44    push       ebx
 004D4E45    push       esi
 004D4E46    mov        dword ptr [ebp-4],ecx
 004D4E49    mov        esi,edx
 004D4E4B    mov        ebx,eax
 004D4E4D    mov        edx,esi
 004D4E4F    mov        eax,ebx
 004D4E51    call       004D4EA0
 004D4E56    mov        edx,eax
 004D4E58    mov        ecx,dword ptr [ebp-4]
 004D4E5B    mov        eax,ebx
 004D4E5D    mov        ebx,dword ptr [eax]
 004D4E5F    call       dword ptr [ebx+60]; TZASAResultSet.sub_004D4984
 004D4E62    pop        esi
 004D4E63    pop        ebx
 004D4E64    pop        ecx
 004D4E65    pop        ebp
 004D4E66    ret
*}
//end;

//004D4E68
//function sub_004D4E68():?;
//begin
{*
 004D4E68    xor        eax,eax
 004D4E6A    ret
*}
//end;

//004D4E6C
procedure sub_004D4E6C();
begin
{*
 004D4E6C    ret
*}
end;

//004D4E70
//procedure sub_004D4E70(?:?);
//begin
{*
 004D4E70    push       ebp
 004D4E71    mov        ebp,esp
 004D4E73    push       ebx
 004D4E74    mov        ebx,edx
 004D4E76    mov        eax,ebx
 004D4E78    call       @LStrClr
 004D4E7D    pop        ebx
 004D4E7E    pop        ebp
 004D4E7F    ret
*}
//end;

//004D4E80
//procedure sub_004D4E80(?:?);
//begin
{*
 004D4E80    push       ebp
 004D4E81    mov        ebp,esp
 004D4E83    push       ebx
 004D4E84    push       esi
 004D4E85    mov        esi,edx
 004D4E87    mov        ebx,eax
 004D4E89    mov        eax,esi
 004D4E8B    mov        edx,dword ptr [ebx+2C]; TZASAResultSet.?f2C:dword
 004D4E8E    test       edx,edx
>004D4E90    je         004D4E95
 004D4E92    sub        edx,0FFFFFFD8
 004D4E95    call       @IntfCopy
 004D4E9A    pop        esi
 004D4E9B    pop        ebx
 004D4E9C    pop        ebp
 004D4E9D    ret
*}
//end;

//004D4EA0
//function sub_004D4EA0(?:TZASAResultSet; ?:?):?;
//begin
{*
 004D4EA0    push       ebp
 004D4EA1    mov        ebp,esp
 004D4EA3    add        esp,0FFFFFFF0
 004D4EA6    push       ebx
 004D4EA7    push       esi
 004D4EA8    xor        ecx,ecx
 004D4EAA    mov        dword ptr [ebp-4],ecx
 004D4EAD    mov        dword ptr [ebp-8],ecx
 004D4EB0    mov        esi,edx
 004D4EB2    xor        edx,edx
 004D4EB4    push       ebp
 004D4EB5    push       4D4F27
 004D4EBA    push       dword ptr fs:[edx]
 004D4EBD    mov        dword ptr fs:[edx],esp
 004D4EC0    mov        edx,esi
 004D4EC2    mov        ecx,dword ptr [eax]
 004D4EC4    call       dword ptr [ecx+0C8]; TZASAResultSet.sub_004D4F38
 004D4ECA    mov        ebx,eax
 004D4ECC    cmp        ebx,1
>004D4ECF    jge        004D4F0C
 004D4ED1    lea        eax,[ebp-4]
 004D4ED4    push       eax
 004D4ED5    lea        edx,[ebp-8]
 004D4ED8    mov        eax,[0061C45C]; ^#122.sResString49:TResStringRec
 004D4EDD    call       LoadResString
 004D4EE2    mov        eax,dword ptr [ebp-8]
 004D4EE5    push       eax
 004D4EE6    mov        dword ptr [ebp-10],esi
 004D4EE9    mov        byte ptr [ebp-0C],0B
 004D4EED    lea        edx,[ebp-10]
 004D4EF0    xor        ecx,ecx
 004D4EF2    pop        eax
 004D4EF3    call       Format
 004D4EF8    mov        ecx,dword ptr [ebp-4]
 004D4EFB    mov        dl,1
 004D4EFD    mov        eax,[004C6D20]; EZSQLException
 004D4F02    call       EZSQLException.Create; EZSQLException.Create
 004D4F07    call       @RaiseExcept
 004D4F0C    xor        eax,eax
 004D4F0E    pop        edx
 004D4F0F    pop        ecx
 004D4F10    pop        ecx
 004D4F11    mov        dword ptr fs:[eax],edx
 004D4F14    push       4D4F2E
 004D4F19    lea        eax,[ebp-8]
 004D4F1C    mov        edx,2
 004D4F21    call       @LStrArrayClr
 004D4F26    ret
<004D4F27    jmp        @HandleFinally
<004D4F2C    jmp        004D4F19
 004D4F2E    mov        eax,ebx
 004D4F30    pop        esi
 004D4F31    pop        ebx
 004D4F32    mov        esp,ebp
 004D4F34    pop        ebp
 004D4F35    ret
*}
//end;

//004D4F38
//function sub_004D4F38(?:?):?;
//begin
{*
 004D4F38    push       ebp
 004D4F39    mov        ebp,esp
 004D4F3B    xor        ecx,ecx
 004D4F3D    push       ecx
 004D4F3E    push       ecx
 004D4F3F    push       ecx
 004D4F40    push       ecx
 004D4F41    push       ecx
 004D4F42    push       ecx
 004D4F43    push       ecx
 004D4F44    push       ebx
 004D4F45    push       esi
 004D4F46    push       edi
 004D4F47    mov        dword ptr [ebp-4],edx
 004D4F4A    mov        ebx,eax
 004D4F4C    xor        eax,eax
 004D4F4E    push       ebp
 004D4F4F    push       4D500B
 004D4F54    push       dword ptr fs:[eax]
 004D4F57    mov        dword ptr fs:[eax],esp
 004D4F5A    mov        eax,ebx
 004D4F5C    call       004D42AC
 004D4F61    mov        eax,dword ptr [ebx+2C]; TZASAResultSet.?f2C:dword
 004D4F64    mov        dword ptr [ebp-0C],eax
 004D4F67    xor        eax,eax
 004D4F69    mov        dword ptr [ebp-8],eax
 004D4F6C    mov        eax,dword ptr [ebp-0C]
 004D4F6F    mov        edx,dword ptr [eax]
 004D4F71    call       dword ptr [edx+8]
 004D4F74    mov        esi,eax
 004D4F76    test       esi,esi
>004D4F78    jle        004D4FA2
 004D4F7A    mov        ebx,1
 004D4F7F    lea        ecx,[ebp-10]
 004D4F82    mov        edx,ebx
 004D4F84    mov        eax,dword ptr [ebp-0C]
 004D4F87    mov        edi,dword ptr [eax]
 004D4F89    call       dword ptr [edi+28]
 004D4F8C    mov        eax,dword ptr [ebp-10]
 004D4F8F    mov        edx,dword ptr [ebp-4]
 004D4F92    call       @LStrCmp
>004D4F97    jne        004D4F9E
 004D4F99    mov        dword ptr [ebp-8],ebx
>004D4F9C    jmp        004D4FF0
 004D4F9E    inc        ebx
 004D4F9F    dec        esi
<004D4FA0    jne        004D4F7F
 004D4FA2    mov        eax,dword ptr [ebp-0C]
 004D4FA5    mov        edx,dword ptr [eax]
 004D4FA7    call       dword ptr [edx+8]
 004D4FAA    mov        esi,eax
 004D4FAC    test       esi,esi
>004D4FAE    jle        004D4FF0
 004D4FB0    mov        ebx,1
 004D4FB5    lea        ecx,[ebp-18]
 004D4FB8    mov        edx,ebx
 004D4FBA    mov        eax,dword ptr [ebp-0C]
 004D4FBD    mov        edi,dword ptr [eax]
 004D4FBF    call       dword ptr [edi+28]
 004D4FC2    mov        eax,dword ptr [ebp-18]
 004D4FC5    lea        edx,[ebp-14]
 004D4FC8    call       AnsiUpperCase
 004D4FCD    mov        eax,dword ptr [ebp-14]
 004D4FD0    push       eax
 004D4FD1    lea        edx,[ebp-1C]
 004D4FD4    mov        eax,dword ptr [ebp-4]
 004D4FD7    call       AnsiUpperCase
 004D4FDC    mov        edx,dword ptr [ebp-1C]
 004D4FDF    pop        eax
 004D4FE0    call       @LStrCmp
>004D4FE5    jne        004D4FEC
 004D4FE7    mov        dword ptr [ebp-8],ebx
>004D4FEA    jmp        004D4FF0
 004D4FEC    inc        ebx
 004D4FED    dec        esi
<004D4FEE    jne        004D4FB5
 004D4FF0    xor        eax,eax
 004D4FF2    pop        edx
 004D4FF3    pop        ecx
 004D4FF4    pop        ecx
 004D4FF5    mov        dword ptr fs:[eax],edx
 004D4FF8    push       4D5012
 004D4FFD    lea        eax,[ebp-1C]
 004D5000    mov        edx,4
 004D5005    call       @LStrArrayClr
 004D500A    ret
<004D500B    jmp        @HandleFinally
<004D5010    jmp        004D4FFD
 004D5012    mov        eax,dword ptr [ebp-8]
 004D5015    pop        edi
 004D5016    pop        esi
 004D5017    pop        ebx
 004D5018    mov        esp,ebp
 004D501A    pop        ebp
 004D501B    ret
*}
//end;

//004D501C
function sub_004D501C:Boolean;
begin
{*
 004D501C    cmp        dword ptr [eax+10],0; TZASAResultSet.?f10:dword
 004D5020    sete       al
 004D5023    ret
*}
end;

//004D5024
function sub_004D5024:Boolean;
begin
{*
 004D5024    mov        edx,dword ptr [eax+10]; TZAbstractResultSet.?f10:dword
 004D5027    cmp        edx,dword ptr [eax+14]; TZAbstractResultSet.?f14:Integer
 004D502A    setg       al
 004D502D    ret
*}
end;

//004D5030
function sub_004D5030:Boolean;
begin
{*
 004D5030    cmp        dword ptr [eax+10],1; TZASAResultSet.?f10:dword
 004D5034    sete       al
 004D5037    ret
*}
end;

//004D5038
function sub_004D5038:Boolean;
begin
{*
 004D5038    mov        edx,dword ptr [eax+10]; TZAbstractResultSet.?f10:dword
 004D503B    cmp        edx,dword ptr [eax+14]; TZAbstractResultSet.?f14:Integer
 004D503E    sete       al
 004D5041    ret
*}
end;

//004D5044
procedure sub_004D5044;
begin
{*
 004D5044    push       ebp
 004D5045    mov        ebp,esp
 004D5047    xor        edx,edx
 004D5049    mov        ecx,dword ptr [eax]
 004D504B    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 004D5051    pop        ebp
 004D5052    ret
*}
end;

//004D5054
procedure sub_004D5054;
begin
{*
 004D5054    push       ebp
 004D5055    mov        ebp,esp
 004D5057    push       ebx
 004D5058    mov        ebx,eax
 004D505A    mov        eax,ebx
 004D505C    mov        edx,dword ptr [eax]
 004D505E    call       dword ptr [edx+0E8]; TZAbstractResultSet.sub_004D5084
 004D5064    mov        eax,ebx
 004D5066    mov        edx,dword ptr [eax]
 004D5068    call       dword ptr [edx+4]; TZAbstractResultSet.sub_004D50DC
 004D506B    pop        ebx
 004D506C    pop        ebp
 004D506D    ret
*}
end;

//004D5070
procedure sub_004D5070;
begin
{*
 004D5070    push       ebp
 004D5071    mov        ebp,esp
 004D5073    mov        edx,1
 004D5078    mov        ecx,dword ptr [eax]
 004D507A    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 004D5080    pop        ebp
 004D5081    ret
*}
end;

//004D5084
procedure sub_004D5084;
begin
{*
 004D5084    push       ebp
 004D5085    mov        ebp,esp
 004D5087    mov        edx,dword ptr [eax+14]; TZAbstractResultSet.?f14:Integer
 004D508A    mov        ecx,dword ptr [eax]
 004D508C    call       dword ptr [ecx+0F0]; TZAbstractResultSet.sub_004D5098
 004D5092    pop        ebp
 004D5093    ret
*}
end;

//004D5094
//function sub_004D5094:?;
//begin
{*
 004D5094    mov        eax,dword ptr [eax+10]; TZASAResultSet.?f10:dword
 004D5097    ret
*}
//end;

//004D5098
//function sub_004D5098():?;
//begin
{*
 004D5098    push       ebp
 004D5099    mov        ebp,esp
 004D509B    push       ebx
 004D509C    xor        ebx,ebx
 004D509E    call       004D4204
 004D50A3    mov        eax,ebx
 004D50A5    pop        ebx
 004D50A6    pop        ebp
 004D50A7    ret
*}
//end;

//004D50A8
//procedure sub_004D50A8(?:?);
//begin
{*
 004D50A8    push       ebp
 004D50A9    mov        ebp,esp
 004D50AB    add        edx,dword ptr [eax+10]; TZOracleResultSet.?f10:dword
>004D50AE    jno        004D50B5
 004D50B0    call       @IntOver
 004D50B5    mov        ecx,dword ptr [eax]
 004D50B7    call       dword ptr [ecx+0F0]; TZOracleResultSet.sub_004D5098
 004D50BD    pop        ebp
 004D50BE    ret
*}
//end;

//004D50C0
procedure sub_004D50C0;
begin
{*
 004D50C0    push       ebp
 004D50C1    mov        ebp,esp
 004D50C3    mov        edx,dword ptr [eax+10]; TZOracleResultSet.?f10:dword
 004D50C6    sub        edx,1
>004D50C9    jno        004D50D0
 004D50CB    call       @IntOver
 004D50D0    mov        ecx,dword ptr [eax]
 004D50D2    call       dword ptr [ecx+0F0]; TZOracleResultSet.sub_004D5098
 004D50D8    pop        ebp
 004D50D9    ret
*}
end;

//004D50DC
procedure sub_004D50DC;
begin
{*
 004D50DC    push       ebp
 004D50DD    mov        ebp,esp
 004D50DF    mov        edx,dword ptr [eax+10]; TZPostgreSQLResultSet.?f10:dword
 004D50E2    add        edx,1
>004D50E5    jno        004D50EC
 004D50E7    call       @IntOver
 004D50EC    mov        ecx,dword ptr [eax]
 004D50EE    call       dword ptr [ecx+0F0]; TZPostgreSQLResultSet.sub_005134BC
 004D50F4    pop        ebp
 004D50F5    ret
*}
end;

//004D50F8
//function sub_004D50F8:?;
//begin
{*
 004D50F8    mov        al,byte ptr [eax+1D]; TZASAResultSet.?f1D:byte
 004D50FB    ret
*}
//end;

//004D50FC
//procedure sub_004D50FC(?:?);
//begin
{*
 004D50FC    push       ebp
 004D50FD    mov        ebp,esp
 004D50FF    test       dl,dl
>004D5101    je         004D5108
 004D5103    call       004D41B0
 004D5108    pop        ebp
 004D5109    ret
*}
//end;

//004D510C
//function sub_004D510C:?;
//begin
{*
 004D510C    mov        eax,dword ptr [eax+20]; TZASAResultSet.?f20:dword
 004D510F    ret
*}
//end;

//004D5110
//procedure sub_004D5110(?:?);
//begin
{*
 004D5110    mov        dword ptr [eax+20],edx; TZASAResultSet.?f20:dword
 004D5113    ret
*}
//end;

//004D5114
//function sub_004D5114:?;
//begin
{*
 004D5114    mov        al,byte ptr [eax+24]; TZASAResultSet.?f24:byte
 004D5117    ret
*}
//end;

//004D5118
//function sub_004D5118:?;
//begin
{*
 004D5118    mov        al,byte ptr [eax+25]; TZASAResultSet.?f25:byte
 004D511B    ret
*}
//end;

//004D5124
//function sub_004D5124():?;
//begin
{*
 004D5124    xor        eax,eax
 004D5126    ret
*}
//end;

//004D5128
//function sub_004D5128():?;
//begin
{*
 004D5128    xor        eax,eax
 004D512A    ret
*}
//end;

//004D512C
//function sub_004D512C():?;
//begin
{*
 004D512C    xor        eax,eax
 004D512E    ret
*}
//end;

//004D5130
procedure sub_004D5130();
begin
{*
 004D5130    push       ebp
 004D5131    mov        ebp,esp
 004D5133    call       004D4258
 004D5138    pop        ebp
 004D5139    ret
*}
end;

//004D513C
procedure sub_004D513C();
begin
{*
 004D513C    push       ebp
 004D513D    mov        ebp,esp
 004D513F    call       004D4258
 004D5144    pop        ebp
 004D5145    ret
*}
end;

//004D5148
procedure sub_004D5148();
begin
{*
 004D5148    push       ebp
 004D5149    mov        ebp,esp
 004D514B    call       004D4258
 004D5150    pop        ebp
 004D5151    ret
*}
end;

//004D5154
procedure sub_004D5154();
begin
{*
 004D5154    push       ebp
 004D5155    mov        ebp,esp
 004D5157    call       004D4258
 004D515C    pop        ebp
 004D515D    ret
*}
end;

//004D5160
procedure sub_004D5160();
begin
{*
 004D5160    push       ebp
 004D5161    mov        ebp,esp
 004D5163    call       004D4258
 004D5168    pop        ebp
 004D5169    ret
*}
end;

//004D516C
procedure sub_004D516C();
begin
{*
 004D516C    push       ebp
 004D516D    mov        ebp,esp
 004D516F    call       004D4258
 004D5174    pop        ebp
 004D5175    ret        8
*}
end;

//004D5178
procedure sub_004D5178();
begin
{*
 004D5178    push       ebp
 004D5179    mov        ebp,esp
 004D517B    call       004D4258
 004D5180    pop        ebp
 004D5181    ret        4
*}
end;

//004D5184
procedure sub_004D5184();
begin
{*
 004D5184    push       ebp
 004D5185    mov        ebp,esp
 004D5187    call       004D4258
 004D518C    pop        ebp
 004D518D    ret        8
*}
end;

//004D5190
procedure sub_004D5190();
begin
{*
 004D5190    push       ebp
 004D5191    mov        ebp,esp
 004D5193    call       004D4258
 004D5198    pop        ebp
 004D5199    ret        0C
*}
end;

//004D519C
//procedure sub_004D519C(?:?; ?:?);
//begin
{*
 004D519C    push       ebp
 004D519D    mov        ebp,esp
 004D519F    add        esp,0FFFFFFF8
 004D51A2    push       ebx
 004D51A3    push       esi
 004D51A4    push       edi
 004D51A5    xor        ebx,ebx
 004D51A7    mov        dword ptr [ebp-8],ebx
 004D51AA    mov        dword ptr [ebp-4],ecx
 004D51AD    mov        edi,edx
 004D51AF    mov        esi,eax
 004D51B1    xor        eax,eax
 004D51B3    push       ebp
 004D51B4    push       4D51EF
 004D51B9    push       dword ptr fs:[eax]
 004D51BC    mov        dword ptr fs:[eax],esp
 004D51BF    lea        eax,[ebp-8]
 004D51C2    mov        edx,dword ptr [ebp-4]
 004D51C5    call       @LStrFromPChar
 004D51CA    mov        ecx,dword ptr [ebp-8]
 004D51CD    mov        edx,edi
 004D51CF    mov        eax,esi
 004D51D1    mov        ebx,dword ptr [eax]
 004D51D3    call       dword ptr [ebx+148]; TZOracleResultSet.sub_004D5200
 004D51D9    xor        eax,eax
 004D51DB    pop        edx
 004D51DC    pop        ecx
 004D51DD    pop        ecx
 004D51DE    mov        dword ptr fs:[eax],edx
 004D51E1    push       4D51F6
 004D51E6    lea        eax,[ebp-8]
 004D51E9    call       @LStrClr
 004D51EE    ret
<004D51EF    jmp        @HandleFinally
<004D51F4    jmp        004D51E6
 004D51F6    pop        edi
 004D51F7    pop        esi
 004D51F8    pop        ebx
 004D51F9    pop        ecx
 004D51FA    pop        ecx
 004D51FB    pop        ebp
 004D51FC    ret
*}
//end;

//004D5200
procedure sub_004D5200();
begin
{*
 004D5200    push       ebp
 004D5201    mov        ebp,esp
 004D5203    call       004D4258
 004D5208    pop        ebp
 004D5209    ret
*}
end;

//004D520C
procedure sub_004D520C();
begin
{*
 004D520C    push       ebp
 004D520D    mov        ebp,esp
 004D520F    call       004D4258
 004D5214    pop        ebp
 004D5215    ret
*}
end;

//004D5218
procedure sub_004D5218();
begin
{*
 004D5218    push       ebp
 004D5219    mov        ebp,esp
 004D521B    call       004D4258
 004D5220    pop        ebp
 004D5221    ret
*}
end;

//004D5224
procedure sub_004D5224();
begin
{*
 004D5224    push       ebp
 004D5225    mov        ebp,esp
 004D5227    call       004D4258
 004D522C    pop        ebp
 004D522D    ret        8
*}
end;

//004D5230
procedure sub_004D5230();
begin
{*
 004D5230    push       ebp
 004D5231    mov        ebp,esp
 004D5233    call       004D4258
 004D5238    pop        ebp
 004D5239    ret        8
*}
end;

//004D523C
procedure sub_004D523C();
begin
{*
 004D523C    push       ebp
 004D523D    mov        ebp,esp
 004D523F    call       004D4258
 004D5244    pop        ebp
 004D5245    ret        8
*}
end;

//004D5248
procedure sub_004D5248();
begin
{*
 004D5248    push       ebp
 004D5249    mov        ebp,esp
 004D524B    call       004D4258
 004D5250    pop        ebp
 004D5251    ret
*}
end;

//004D5254
procedure sub_004D5254();
begin
{*
 004D5254    push       ebp
 004D5255    mov        ebp,esp
 004D5257    call       004D4258
 004D525C    pop        ebp
 004D525D    ret
*}
end;

//004D5260
procedure sub_004D5260();
begin
{*
 004D5260    push       ebp
 004D5261    mov        ebp,esp
 004D5263    call       004D4258
 004D5268    pop        ebp
 004D5269    ret
*}
end;

//004D526C
//procedure sub_004D526C(?:?; ?:?);
//begin
{*
 004D526C    push       ebp
 004D526D    mov        ebp,esp
 004D526F    push       ecx
 004D5270    push       ebx
 004D5271    push       esi
 004D5272    push       edi
 004D5273    mov        edi,ecx
 004D5275    mov        dword ptr [ebp-4],edx
 004D5278    mov        esi,eax
 004D527A    xor        eax,eax
 004D527C    mov        al,byte ptr [edi]
 004D527E    cmp        eax,6
>004D5281    ja         004D5324
 004D5287    jmp        dword ptr [eax*4+4D528E]
 004D5287    dd         4D5324
 004D5287    dd         4D52AA
 004D5287    dd         4D52BC
 004D5287    dd         4D52D1
 004D5287    dd         4D52EB
 004D5287    dd         4D5312
 004D5287    dd         4D52FD
 004D52AA    mov        cl,byte ptr [edi+1]
 004D52AD    mov        edx,dword ptr [ebp-4]
 004D52B0    mov        eax,esi
 004D52B2    mov        ebx,dword ptr [eax]
 004D52B4    call       dword ptr [ebx+124]; TZOracleResultSet.sub_004D513C
>004D52BA    jmp        004D5331
 004D52BC    push       dword ptr [edi+6]
 004D52BF    push       dword ptr [edi+2]
 004D52C2    mov        edx,dword ptr [ebp-4]
 004D52C5    mov        eax,esi
 004D52C7    mov        ecx,dword ptr [eax]
 004D52C9    call       dword ptr [ecx+134]; TZOracleResultSet.sub_004D516C
>004D52CF    jmp        004D5331
 004D52D1    mov        ax,word ptr [edi+12]
 004D52D5    push       eax
 004D52D6    push       dword ptr [edi+0E]
 004D52D9    push       dword ptr [edi+0A]
 004D52DC    mov        edx,dword ptr [ebp-4]
 004D52DF    mov        eax,esi
 004D52E1    mov        ecx,dword ptr [eax]
 004D52E3    call       dword ptr [ecx+140]; TZOracleResultSet.sub_004D5190
>004D52E9    jmp        004D5331
 004D52EB    mov        ecx,dword ptr [edi+14]
 004D52EE    mov        edx,dword ptr [ebp-4]
 004D52F1    mov        eax,esi
 004D52F3    mov        ebx,dword ptr [eax]
 004D52F5    call       dword ptr [ebx+148]; TZOracleResultSet.sub_004D5200
>004D52FB    jmp        004D5331
 004D52FD    push       dword ptr [edi+20]
 004D5300    push       dword ptr [edi+1C]
 004D5303    mov        edx,dword ptr [ebp-4]
 004D5306    mov        eax,esi
 004D5308    mov        ecx,dword ptr [eax]
 004D530A    call       dword ptr [ecx+15C]; TZOracleResultSet.sub_004D523C
>004D5310    jmp        004D5331
 004D5312    mov        ecx,dword ptr [edi+18]
 004D5315    mov        edx,dword ptr [ebp-4]
 004D5318    mov        eax,esi
 004D531A    mov        ebx,dword ptr [eax]
 004D531C    call       dword ptr [ebx+14C]; TZOracleResultSet.sub_004D520C
>004D5322    jmp        004D5331
 004D5324    mov        edx,dword ptr [ebp-4]
 004D5327    mov        eax,esi
 004D5329    mov        ecx,dword ptr [eax]
 004D532B    call       dword ptr [ecx+120]; TZOracleResultSet.sub_004D5130
 004D5331    pop        edi
 004D5332    pop        esi
 004D5333    pop        ebx
 004D5334    pop        ecx
 004D5335    pop        ebp
 004D5336    ret
*}
//end;

//004D5338
//procedure sub_004D5338(?:?);
//begin
{*
 004D5338    push       ebp
 004D5339    mov        ebp,esp
 004D533B    push       ebx
 004D533C    push       esi
 004D533D    mov        esi,edx
 004D533F    mov        ebx,eax
 004D5341    mov        edx,esi
 004D5343    mov        eax,ebx
 004D5345    call       004D4EA0
 004D534A    mov        edx,eax
 004D534C    mov        eax,ebx
 004D534E    mov        ecx,dword ptr [eax]
 004D5350    call       dword ptr [ecx+120]; TZASAResultSet.sub_0055D33C
 004D5356    pop        esi
 004D5357    pop        ebx
 004D5358    pop        ebp
 004D5359    ret
*}
//end;

//004D535C
//procedure sub_004D535C(?:?; ?:?);
//begin
{*
 004D535C    push       ebp
 004D535D    mov        ebp,esp
 004D535F    push       ebx
 004D5360    push       esi
 004D5361    push       edi
 004D5362    mov        ebx,ecx
 004D5364    mov        esi,edx
 004D5366    mov        edi,eax
 004D5368    mov        edx,esi
 004D536A    mov        eax,edi
 004D536C    call       004D4EA0
 004D5371    mov        edx,eax
 004D5373    mov        ecx,ebx
 004D5375    mov        eax,edi
 004D5377    mov        ebx,dword ptr [eax]
 004D5379    call       dword ptr [ebx+124]; TZASAResultSet.sub_0055D360
 004D537F    pop        edi
 004D5380    pop        esi
 004D5381    pop        ebx
 004D5382    pop        ebp
 004D5383    ret
*}
//end;

//004D5384
//procedure sub_004D5384(?:?; ?:?);
//begin
{*
 004D5384    push       ebp
 004D5385    mov        ebp,esp
 004D5387    push       ebx
 004D5388    push       esi
 004D5389    push       edi
 004D538A    mov        ebx,ecx
 004D538C    mov        esi,edx
 004D538E    mov        edi,eax
 004D5390    mov        edx,esi
 004D5392    mov        eax,edi
 004D5394    call       004D4EA0
 004D5399    mov        edx,eax
 004D539B    mov        ecx,ebx
 004D539D    mov        eax,edi
 004D539F    mov        ebx,dword ptr [eax]
 004D53A1    call       dword ptr [ebx+128]; TZASAResultSet.sub_0055D388
 004D53A7    pop        edi
 004D53A8    pop        esi
 004D53A9    pop        ebx
 004D53AA    pop        ebp
 004D53AB    ret
*}
//end;

//004D53AC
//procedure sub_004D53AC(?:?; ?:?);
//begin
{*
 004D53AC    push       ebp
 004D53AD    mov        ebp,esp
 004D53AF    push       ebx
 004D53B0    push       esi
 004D53B1    push       edi
 004D53B2    mov        edi,ecx
 004D53B4    mov        esi,edx
 004D53B6    mov        ebx,eax
 004D53B8    mov        edx,esi
 004D53BA    mov        eax,ebx
 004D53BC    call       004D4EA0
 004D53C1    mov        edx,eax
 004D53C3    mov        ecx,edi
 004D53C5    mov        eax,ebx
 004D53C7    mov        ebx,dword ptr [eax]
 004D53C9    call       dword ptr [ebx+12C]; TZASAResultSet.sub_0055D3B0
 004D53CF    pop        edi
 004D53D0    pop        esi
 004D53D1    pop        ebx
 004D53D2    pop        ebp
 004D53D3    ret
*}
//end;

//004D53D4
//procedure sub_004D53D4(?:?; ?:?);
//begin
{*
 004D53D4    push       ebp
 004D53D5    mov        ebp,esp
 004D53D7    push       ebx
 004D53D8    push       esi
 004D53D9    push       edi
 004D53DA    mov        edi,ecx
 004D53DC    mov        esi,edx
 004D53DE    mov        ebx,eax
 004D53E0    mov        edx,esi
 004D53E2    mov        eax,ebx
 004D53E4    call       004D4EA0
 004D53E9    mov        edx,eax
 004D53EB    mov        ecx,edi
 004D53ED    mov        eax,ebx
 004D53EF    mov        ebx,dword ptr [eax]
 004D53F1    call       dword ptr [ebx+130]; TZASAResultSet.sub_0055D3D8
 004D53F7    pop        edi
 004D53F8    pop        esi
 004D53F9    pop        ebx
 004D53FA    pop        ebp
 004D53FB    ret
*}
//end;

//004D53FC
//procedure sub_004D53FC(?:?; ?:?; ?:?);
//begin
{*
 004D53FC    push       ebp
 004D53FD    mov        ebp,esp
 004D53FF    push       ebx
 004D5400    push       esi
 004D5401    mov        esi,edx
 004D5403    mov        ebx,eax
 004D5405    push       dword ptr [ebp+0C]
 004D5408    push       dword ptr [ebp+8]
 004D540B    mov        edx,esi
 004D540D    mov        eax,ebx
 004D540F    call       004D4EA0
 004D5414    mov        edx,eax
 004D5416    mov        eax,ebx
 004D5418    mov        ecx,dword ptr [eax]
 004D541A    call       dword ptr [ecx+134]; TZASAResultSet.sub_0055D400
 004D5420    pop        esi
 004D5421    pop        ebx
 004D5422    pop        ebp
 004D5423    ret        8
*}
//end;

//004D5428
//procedure sub_004D5428(?:?; ?:?);
//begin
{*
 004D5428    push       ebp
 004D5429    mov        ebp,esp
 004D542B    push       esi
 004D542C    push       edi
 004D542D    mov        edi,edx
 004D542F    mov        esi,eax
 004D5431    push       dword ptr [ebp+8]
 004D5434    mov        edx,edi
 004D5436    mov        eax,esi
 004D5438    call       004D4EA0
 004D543D    mov        edx,eax
 004D543F    mov        eax,esi
 004D5441    mov        ecx,dword ptr [eax]
 004D5443    call       dword ptr [ecx+138]; TZASAResultSet.sub_0055D42C
 004D5449    pop        edi
 004D544A    pop        esi
 004D544B    pop        ebp
 004D544C    ret        4
*}
//end;

//004D5450
//procedure sub_004D5450(?:?; ?:?; ?:?);
//begin
{*
 004D5450    push       ebp
 004D5451    mov        ebp,esp
 004D5453    push       esi
 004D5454    push       edi
 004D5455    mov        edi,edx
 004D5457    mov        esi,eax
 004D5459    push       dword ptr [ebp+0C]
 004D545C    push       dword ptr [ebp+8]
 004D545F    mov        edx,edi
 004D5461    mov        eax,esi
 004D5463    call       004D4EA0
 004D5468    mov        edx,eax
 004D546A    mov        eax,esi
 004D546C    mov        ecx,dword ptr [eax]
 004D546E    call       dword ptr [ecx+13C]; TZASAResultSet.sub_0055D454
 004D5474    pop        edi
 004D5475    pop        esi
 004D5476    pop        ebp
 004D5477    ret        8
*}
//end;

//004D547C
//procedure sub_004D547C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004D547C    push       ebp
 004D547D    mov        ebp,esp
 004D547F    push       esi
 004D5480    push       edi
 004D5481    mov        edi,edx
 004D5483    mov        esi,eax
 004D5485    mov        ax,word ptr [ebp+10]
 004D5489    push       eax
 004D548A    push       dword ptr [ebp+0C]
 004D548D    push       dword ptr [ebp+8]
 004D5490    mov        edx,edi
 004D5492    mov        eax,esi
 004D5494    call       004D4EA0
 004D5499    mov        edx,eax
 004D549B    mov        eax,esi
 004D549D    mov        ecx,dword ptr [eax]
 004D549F    call       dword ptr [ecx+140]; TZASAResultSet.sub_0055D480
 004D54A5    pop        edi
 004D54A6    pop        esi
 004D54A7    pop        ebp
 004D54A8    ret        0C
*}
//end;

//004D54AC
//procedure sub_004D54AC(?:?; ?:?);
//begin
{*
 004D54AC    push       ebp
 004D54AD    mov        ebp,esp
 004D54AF    push       ecx
 004D54B0    push       ebx
 004D54B1    push       esi
 004D54B2    push       edi
 004D54B3    mov        dword ptr [ebp-4],ecx
 004D54B6    mov        edi,edx
 004D54B8    mov        esi,eax
 004D54BA    mov        edx,edi
 004D54BC    mov        eax,esi
 004D54BE    call       004D4EA0
 004D54C3    mov        edx,eax
 004D54C5    mov        ecx,dword ptr [ebp-4]
 004D54C8    mov        eax,esi
 004D54CA    mov        ebx,dword ptr [eax]
 004D54CC    call       dword ptr [ebx+144]; TZASAResultSet.sub_0055D4B0
 004D54D2    pop        edi
 004D54D3    pop        esi
 004D54D4    pop        ebx
 004D54D5    pop        ecx
 004D54D6    pop        ebp
 004D54D7    ret
*}
//end;

//004D54D8
//procedure sub_004D54D8(?:?; ?:?);
//begin
{*
 004D54D8    push       ebp
 004D54D9    mov        ebp,esp
 004D54DB    push       ecx
 004D54DC    push       ebx
 004D54DD    push       esi
 004D54DE    push       edi
 004D54DF    mov        dword ptr [ebp-4],ecx
 004D54E2    mov        edi,edx
 004D54E4    mov        esi,eax
 004D54E6    mov        edx,edi
 004D54E8    mov        eax,esi
 004D54EA    call       004D4EA0
 004D54EF    mov        edx,eax
 004D54F1    mov        ecx,dword ptr [ebp-4]
 004D54F4    mov        eax,esi
 004D54F6    mov        ebx,dword ptr [eax]
 004D54F8    call       dword ptr [ebx+148]; TZASAResultSet.sub_0055D4D8
 004D54FE    pop        edi
 004D54FF    pop        esi
 004D5500    pop        ebx
 004D5501    pop        ecx
 004D5502    pop        ebp
 004D5503    ret
*}
//end;

//004D5504
//procedure sub_004D5504(?:?; ?:?);
//begin
{*
 004D5504    push       ebp
 004D5505    mov        ebp,esp
 004D5507    push       ecx
 004D5508    push       ebx
 004D5509    push       esi
 004D550A    push       edi
 004D550B    mov        dword ptr [ebp-4],ecx
 004D550E    mov        edi,edx
 004D5510    mov        esi,eax
 004D5512    mov        edx,edi
 004D5514    mov        eax,esi
 004D5516    call       004D4EA0
 004D551B    mov        edx,eax
 004D551D    mov        ecx,dword ptr [ebp-4]
 004D5520    mov        eax,esi
 004D5522    mov        ebx,dword ptr [eax]
 004D5524    call       dword ptr [ebx+14C]; TZASAResultSet.sub_0055D500
 004D552A    pop        edi
 004D552B    pop        esi
 004D552C    pop        ebx
 004D552D    pop        ecx
 004D552E    pop        ebp
 004D552F    ret
*}
//end;

//004D5530
//procedure sub_004D5530(?:?; ?:?);
//begin
{*
 004D5530    push       ebp
 004D5531    mov        ebp,esp
 004D5533    push       ecx
 004D5534    push       ebx
 004D5535    push       esi
 004D5536    push       edi
 004D5537    mov        dword ptr [ebp-4],ecx
 004D553A    mov        edi,edx
 004D553C    mov        esi,eax
 004D553E    mov        edx,edi
 004D5540    mov        eax,esi
 004D5542    call       004D4EA0
 004D5547    mov        edx,eax
 004D5549    mov        ecx,dword ptr [ebp-4]
 004D554C    mov        eax,esi
 004D554E    mov        ebx,dword ptr [eax]
 004D5550    call       dword ptr [ebx+150]; TZASAResultSet.sub_0055D528
 004D5556    pop        edi
 004D5557    pop        esi
 004D5558    pop        ebx
 004D5559    pop        ecx
 004D555A    pop        ebp
 004D555B    ret
*}
//end;

//004D555C
//procedure sub_004D555C(?:?; ?:?; ?:?);
//begin
{*
 004D555C    push       ebp
 004D555D    mov        ebp,esp
 004D555F    push       esi
 004D5560    push       edi
 004D5561    mov        edi,edx
 004D5563    mov        esi,eax
 004D5565    push       dword ptr [ebp+0C]
 004D5568    push       dword ptr [ebp+8]
 004D556B    mov        edx,edi
 004D556D    mov        eax,esi
 004D556F    call       004D4EA0
 004D5574    mov        edx,eax
 004D5576    mov        eax,esi
 004D5578    mov        ecx,dword ptr [eax]
 004D557A    call       dword ptr [ecx+154]; TZASAResultSet.sub_0055D550
 004D5580    pop        edi
 004D5581    pop        esi
 004D5582    pop        ebp
 004D5583    ret        8
*}
//end;

//004D5588
//procedure sub_004D5588(?:?; ?:?; ?:?);
//begin
{*
 004D5588    push       ebp
 004D5589    mov        ebp,esp
 004D558B    push       esi
 004D558C    push       edi
 004D558D    mov        edi,edx
 004D558F    mov        esi,eax
 004D5591    push       dword ptr [ebp+0C]
 004D5594    push       dword ptr [ebp+8]
 004D5597    mov        edx,edi
 004D5599    mov        eax,esi
 004D559B    call       004D4EA0
 004D55A0    mov        edx,eax
 004D55A2    mov        eax,esi
 004D55A4    mov        ecx,dword ptr [eax]
 004D55A6    call       dword ptr [ecx+158]; TZASAResultSet.sub_0055D57C
 004D55AC    pop        edi
 004D55AD    pop        esi
 004D55AE    pop        ebp
 004D55AF    ret        8
*}
//end;

//004D55B4
//procedure sub_004D55B4(?:?; ?:?; ?:?);
//begin
{*
 004D55B4    push       ebp
 004D55B5    mov        ebp,esp
 004D55B7    push       esi
 004D55B8    push       edi
 004D55B9    mov        edi,edx
 004D55BB    mov        esi,eax
 004D55BD    push       dword ptr [ebp+0C]
 004D55C0    push       dword ptr [ebp+8]
 004D55C3    mov        edx,edi
 004D55C5    mov        eax,esi
 004D55C7    call       004D4EA0
 004D55CC    mov        edx,eax
 004D55CE    mov        eax,esi
 004D55D0    mov        ecx,dword ptr [eax]
 004D55D2    call       dword ptr [ecx+15C]; TZASAResultSet.sub_0055D5A8
 004D55D8    pop        edi
 004D55D9    pop        esi
 004D55DA    pop        ebp
 004D55DB    ret        8
*}
//end;

//004D55E0
//procedure sub_004D55E0(?:?; ?:?);
//begin
{*
 004D55E0    push       ebp
 004D55E1    mov        ebp,esp
 004D55E3    push       ecx
 004D55E4    push       ebx
 004D55E5    push       esi
 004D55E6    push       edi
 004D55E7    mov        dword ptr [ebp-4],ecx
 004D55EA    mov        edi,edx
 004D55EC    mov        esi,eax
 004D55EE    mov        edx,edi
 004D55F0    mov        eax,esi
 004D55F2    call       004D4EA0
 004D55F7    mov        edx,eax
 004D55F9    mov        ecx,dword ptr [ebp-4]
 004D55FC    mov        eax,esi
 004D55FE    mov        ebx,dword ptr [eax]
 004D5600    call       dword ptr [ebx+160]; TZASAResultSet.sub_0055D5D4
 004D5606    pop        edi
 004D5607    pop        esi
 004D5608    pop        ebx
 004D5609    pop        ecx
 004D560A    pop        ebp
 004D560B    ret
*}
//end;

//004D560C
//procedure sub_004D560C(?:?; ?:?);
//begin
{*
 004D560C    push       ebp
 004D560D    mov        ebp,esp
 004D560F    push       ebx
 004D5610    push       esi
 004D5611    push       edi
 004D5612    mov        edi,ecx
 004D5614    mov        esi,edx
 004D5616    mov        ebx,eax
 004D5618    mov        edx,esi
 004D561A    mov        eax,ebx
 004D561C    call       004D4EA0
 004D5621    mov        edx,eax
 004D5623    mov        ecx,edi
 004D5625    mov        eax,ebx
 004D5627    mov        ebx,dword ptr [eax]
 004D5629    call       dword ptr [ebx+168]; TZASAResultSet.sub_0055D624
 004D562F    pop        edi
 004D5630    pop        esi
 004D5631    pop        ebx
 004D5632    pop        ebp
 004D5633    ret
*}
//end;

//004D5634
//procedure sub_004D5634(?:?; ?:?);
//begin
{*
 004D5634    push       ebp
 004D5635    mov        ebp,esp
 004D5637    push       ebx
 004D5638    push       esi
 004D5639    push       edi
 004D563A    mov        edi,ecx
 004D563C    mov        esi,edx
 004D563E    mov        ebx,eax
 004D5640    mov        edx,esi
 004D5642    mov        eax,ebx
 004D5644    call       004D4EA0
 004D5649    mov        edx,eax
 004D564B    mov        ecx,edi
 004D564D    mov        eax,ebx
 004D564F    mov        ebx,dword ptr [eax]
 004D5651    call       dword ptr [ebx+164]; TZASAResultSet.sub_0055D5FC
 004D5657    pop        edi
 004D5658    pop        esi
 004D5659    pop        ebx
 004D565A    pop        ebp
 004D565B    ret
*}
//end;

//004D565C
//procedure sub_004D565C(?:?; ?:?);
//begin
{*
 004D565C    push       ebp
 004D565D    mov        ebp,esp
 004D565F    push       ebx
 004D5660    push       esi
 004D5661    push       edi
 004D5662    mov        edi,ecx
 004D5664    mov        esi,edx
 004D5666    mov        ebx,eax
 004D5668    mov        edx,esi
 004D566A    mov        eax,ebx
 004D566C    call       004D4EA0
 004D5671    mov        edx,eax
 004D5673    mov        ecx,edi
 004D5675    mov        eax,ebx
 004D5677    mov        ebx,dword ptr [eax]
 004D5679    call       dword ptr [ebx+16C]; TZASAResultSet.sub_0055D64C
 004D567F    pop        edi
 004D5680    pop        esi
 004D5681    pop        ebx
 004D5682    pop        ebp
 004D5683    ret
*}
//end;

//004D5684
procedure sub_004D5684();
begin
{*
 004D5684    push       ebp
 004D5685    mov        ebp,esp
 004D5687    call       004D4258
 004D568C    pop        ebp
 004D568D    ret
*}
end;

//004D5690
procedure sub_004D5690();
begin
{*
 004D5690    push       ebp
 004D5691    mov        ebp,esp
 004D5693    call       004D4258
 004D5698    pop        ebp
 004D5699    ret
*}
end;

//004D569C
procedure sub_004D569C();
begin
{*
 004D569C    push       ebp
 004D569D    mov        ebp,esp
 004D569F    call       004D4258
 004D56A4    pop        ebp
 004D56A5    ret
*}
end;

//004D56A8
procedure sub_004D56A8();
begin
{*
 004D56A8    push       ebp
 004D56A9    mov        ebp,esp
 004D56AB    call       004D41B0
 004D56B0    pop        ebp
 004D56B1    ret
*}
end;

//004D56B4
procedure sub_004D56B4();
begin
{*
 004D56B4    push       ebp
 004D56B5    mov        ebp,esp
 004D56B7    call       004D4258
 004D56BC    pop        ebp
 004D56BD    ret
*}
end;

//004D56C0
procedure sub_004D56C0();
begin
{*
 004D56C0    push       ebp
 004D56C1    mov        ebp,esp
 004D56C3    call       004D4258
 004D56C8    pop        ebp
 004D56C9    ret
*}
end;

//004D56CC
procedure sub_004D56CC();
begin
{*
 004D56CC    ret
*}
end;

//004D56D0
//function sub_004D56D0(?:Extended; ?:Extended):?;
//begin
{*
 004D56D0    push       ebp
 004D56D1    mov        ebp,esp
 004D56D3    fld        tbyte ptr [ebp+14]
 004D56D6    fld        tbyte ptr [ebp+8]
 004D56D9    fsubp      st(1),st
 004D56DB    fstp       tbyte ptr [ebp+14]
 004D56DE    wait
 004D56DF    fld        tbyte ptr [ebp+14]
 004D56E2    fcomp      dword ptr ds:[4D5710]; 0:Single
 004D56E8    fnstsw     al
 004D56EA    sahf
>004D56EB    jbe        004D56F4
 004D56ED    mov        eax,1
>004D56F2    jmp        004D5709
 004D56F4    fld        tbyte ptr [ebp+14]
 004D56F7    fcomp      dword ptr ds:[4D5710]; 0:Single
 004D56FD    fnstsw     al
 004D56FF    sahf
>004D5700    jae        004D5707
 004D5702    or         eax,0FFFFFFFF
>004D5705    jmp        004D5709
 004D5707    xor        eax,eax
 004D5709    pop        ebp
 004D570A    ret        18
*}
//end;

//004D5714
//function sub_004D5714(?:?; ?:?; ?:?; ?:?):?;
//begin
{*
 004D5714    push       ebp
 004D5715    mov        ebp,esp
 004D5717    add        esp,0FFFFFF90
 004D571A    push       ebx
 004D571B    push       esi
 004D571C    push       edi
 004D571D    mov        dword ptr [ebp-0C],ecx
 004D5720    mov        dword ptr [ebp-8],edx
 004D5723    mov        dword ptr [ebp-4],eax
 004D5726    lea        eax,[ebp-44]
 004D5729    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004D572F    call       @InitializeRecord
 004D5734    lea        eax,[ebp-70]
 004D5737    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004D573D    call       @InitializeRecord
 004D5742    xor        eax,eax
 004D5744    push       ebp
 004D5745    push       4D597D
 004D574A    push       dword ptr fs:[eax]
 004D574D    mov        dword ptr fs:[eax],esp
 004D5750    xor        eax,eax
 004D5752    mov        dword ptr [ebp-10],eax
 004D5755    mov        eax,dword ptr [ebp-4]
 004D5758    mov        eax,dword ptr [eax+10]; TZASAResultSet.?f10:dword
 004D575B    mov        dword ptr [ebp-14],eax
 004D575E    xor        edx,edx
 004D5760    push       ebp
 004D5761    push       4D5955
 004D5766    push       dword ptr fs:[edx]
 004D5769    mov        dword ptr fs:[edx],esp
 004D576C    mov        eax,dword ptr [ebp+0C]
 004D576F    call       @DynArrayHigh
 004D5774    test       eax,eax
>004D5776    jl         004D5939
 004D577C    inc        eax
 004D577D    mov        dword ptr [ebp-18],eax
 004D5780    xor        ebx,ebx
 004D5782    mov        eax,dword ptr [ebp+0C]
 004D5785    test       eax,eax
>004D5787    je         004D578E
 004D5789    cmp        ebx,dword ptr [eax-4]
>004D578C    jb         004D5793
 004D578E    call       @BoundErr
 004D5793    mov        esi,dword ptr [eax+ebx*4]
 004D5796    mov        edx,dword ptr [ebp-8]
 004D5799    mov        eax,dword ptr [ebp-4]
 004D579C    mov        ecx,dword ptr [eax]
 004D579E    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 004D57A4    lea        ecx,[ebp-44]
 004D57A7    mov        edx,esi
 004D57A9    mov        eax,dword ptr [ebp-4]
 004D57AC    mov        edi,dword ptr [eax]
 004D57AE    call       dword ptr [edi+60]; TZASAResultSet.sub_004D4984
 004D57B1    mov        edx,dword ptr [ebp-0C]
 004D57B4    mov        eax,dword ptr [ebp-4]
 004D57B7    mov        ecx,dword ptr [eax]
 004D57B9    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 004D57BF    lea        ecx,[ebp-70]
 004D57C2    mov        edx,esi
 004D57C4    mov        eax,dword ptr [ebp-4]
 004D57C7    mov        esi,dword ptr [eax]
 004D57C9    call       dword ptr [esi+60]; TZASAResultSet.sub_004D4984
 004D57CC    cmp        byte ptr [ebp-44],0
>004D57D0    jne        004D57DC
 004D57D2    cmp        byte ptr [ebp-70],0
>004D57D6    je         004D592F
 004D57DC    mov        al,byte ptr [ebp-44]
 004D57DF    test       al,al
>004D57E1    je         004D57E9
 004D57E3    cmp        byte ptr [ebp-70],0
>004D57E7    jne        004D5827
 004D57E9    test       al,al
>004D57EB    je         004D57F6
 004D57ED    mov        dword ptr [ebp-10],1
>004D57F4    jmp        004D57FD
 004D57F6    mov        dword ptr [ebp-10],0FFFFFFFF
 004D57FD    mov        eax,dword ptr [ebp+8]
 004D5800    test       eax,eax
>004D5802    je         004D5809
 004D5804    cmp        ebx,dword ptr [eax-4]
>004D5807    jb         004D580E
 004D5809    call       @BoundErr
 004D580E    cmp        byte ptr [eax+ebx],0
>004D5812    jne        004D5939
 004D5818    neg        dword ptr [ebp-10]
>004D581B    jno        004D5822
 004D581D    call       @IntOver
>004D5822    jmp        004D5939
 004D5827    and        eax,7F
 004D582A    cmp        eax,6
>004D582D    ja         004D5906
 004D5833    jmp        dword ptr [eax*4+4D583A]
 004D5833    dd         4D5906
 004D5833    dd         4D5856
 004D5833    dd         4D5884
 004D5833    dd         4D58AA
 004D5833    dd         4D58E8
 004D5833    dd         4D58F8
 004D5833    dd         4D58CA
 004D5856    mov        al,byte ptr [ebp-43]
 004D5859    cmp        al,byte ptr [ebp-6F]
>004D585C    jne        004D5868
 004D585E    xor        eax,eax
 004D5860    mov        dword ptr [ebp-10],eax
>004D5863    jmp        004D5906
 004D5868    cmp        al,1
>004D586A    jne        004D5878
 004D586C    mov        dword ptr [ebp-10],1
>004D5873    jmp        004D5906
 004D5878    mov        dword ptr [ebp-10],0FFFFFFFF
>004D587F    jmp        004D5906
 004D5884    mov        eax,dword ptr [ebp-42]
 004D5887    mov        edx,dword ptr [ebp-3E]
 004D588A    sub        eax,dword ptr [ebp-6E]
 004D588D    sbb        edx,dword ptr [ebp-6A]
>004D5890    jno        004D5897
 004D5892    call       @IntOver
 004D5897    push       eax
 004D5898    sar        eax,1F
 004D589B    cmp        eax,edx
 004D589D    pop        eax
>004D589E    je         004D58A5
 004D58A0    call       @BoundErr
 004D58A5    mov        dword ptr [ebp-10],eax
>004D58A8    jmp        004D5906
 004D58AA    mov        ax,word ptr [ebp-32]
 004D58AE    push       eax
 004D58AF    push       dword ptr [ebp-36]
 004D58B2    push       dword ptr [ebp-3A]
 004D58B5    mov        ax,word ptr [ebp-5E]
 004D58B9    push       eax
 004D58BA    push       dword ptr [ebp-62]
 004D58BD    push       dword ptr [ebp-66]
 004D58C0    call       004D56D0
 004D58C5    mov        dword ptr [ebp-10],eax
>004D58C8    jmp        004D5906
 004D58CA    fld        qword ptr [ebp-28]
 004D58CD    add        esp,0FFFFFFF4
 004D58D0    fstp       tbyte ptr [esp]
 004D58D3    wait
 004D58D4    fld        qword ptr [ebp-54]
 004D58D7    add        esp,0FFFFFFF4
 004D58DA    fstp       tbyte ptr [esp]
 004D58DD    wait
 004D58DE    call       004D56D0
 004D58E3    mov        dword ptr [ebp-10],eax
>004D58E6    jmp        004D5906
 004D58E8    mov        edx,dword ptr [ebp-5C]
 004D58EB    mov        eax,dword ptr [ebp-30]
 004D58EE    call       AnsiCompareStr
 004D58F3    mov        dword ptr [ebp-10],eax
>004D58F6    jmp        004D5906
 004D58F8    mov        edx,dword ptr [ebp-58]
 004D58FB    mov        eax,dword ptr [ebp-2C]
 004D58FE    call       WideCompareStr
 004D5903    mov        dword ptr [ebp-10],eax
 004D5906    cmp        dword ptr [ebp-10],0
>004D590A    je         004D592F
 004D590C    mov        eax,dword ptr [ebp+8]
 004D590F    test       eax,eax
>004D5911    je         004D5918
 004D5913    cmp        ebx,dword ptr [eax-4]
>004D5916    jb         004D591D
 004D5918    call       @BoundErr
 004D591D    cmp        byte ptr [eax+ebx],0
>004D5921    jne        004D5939
 004D5923    neg        dword ptr [ebp-10]
>004D5926    jno        004D592D
 004D5928    call       @IntOver
>004D592D    jmp        004D5939
 004D592F    inc        ebx
 004D5930    dec        dword ptr [ebp-18]
<004D5933    jne        004D5782
 004D5939    xor        eax,eax
 004D593B    pop        edx
 004D593C    pop        ecx
 004D593D    pop        ecx
 004D593E    mov        dword ptr fs:[eax],edx
 004D5941    push       4D595C
 004D5946    mov        edx,dword ptr [ebp-14]
 004D5949    mov        eax,dword ptr [ebp-4]
 004D594C    mov        ecx,dword ptr [eax]
 004D594E    call       dword ptr [ecx+0F0]; TZASAResultSet.sub_0055CDE0
 004D5954    ret
<004D5955    jmp        @HandleFinally
<004D595A    jmp        004D5946
 004D595C    xor        eax,eax
 004D595E    pop        edx
 004D595F    pop        ecx
 004D5960    pop        ecx
 004D5961    mov        dword ptr fs:[eax],edx
 004D5964    push       4D5984
 004D5969    lea        eax,[ebp-70]
 004D596C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004D5972    mov        ecx,2
 004D5977    call       @FinalizeArray
 004D597C    ret
<004D597D    jmp        @HandleFinally
<004D5982    jmp        004D5969
 004D5984    mov        eax,dword ptr [ebp-10]
 004D5987    pop        edi
 004D5988    pop        esi
 004D5989    pop        ebx
 004D598A    mov        esp,ebp
 004D598C    pop        ebp
 004D598D    ret        8
*}
//end;

//004D5990
//procedure sub_004D5990(?:?);
//begin
{*
 004D5990    push       ebp
 004D5991    mov        ebp,esp
 004D5993    push       ebx
 004D5994    push       esi
 004D5995    mov        esi,edx
 004D5997    mov        ebx,eax
 004D5999    mov        eax,esi
 004D599B    mov        edx,dword ptr [ebx+30]; TZASAResultSet.?f30:IZStatement
 004D599E    call       @IntfCopy
 004D59A3    pop        esi
 004D59A4    pop        ebx
 004D59A5    pop        ebp
 004D59A6    ret
*}
//end;

//004D59A8
//constructor TZAbstractBlob.Create(?:TZAbstractBlob; _Dv__:Boolean);
//begin
{*
 004D59A8    push       ebp
 004D59A9    mov        ebp,esp
 004D59AB    push       ecx
 004D59AC    push       ebx
 004D59AD    push       esi
 004D59AE    push       edi
 004D59AF    test       dl,dl
>004D59B1    je         004D59BB
 004D59B3    add        esp,0FFFFFFF0
 004D59B6    call       @ClassCreate
 004D59BB    mov        esi,ecx
 004D59BD    mov        byte ptr [ebp-1],dl
 004D59C0    mov        ebx,eax
 004D59C2    xor        edx,edx
 004D59C4    mov        eax,ebx
 004D59C6    call       TObject.Create
 004D59CB    mov        byte ptr [ebx+14],0; TZAbstractBlob.?f14:byte
 004D59CF    test       esi,esi
>004D59D1    je         004D5A14
 004D59D3    mov        eax,esi
 004D59D5    mov        edx,dword ptr [eax]
 004D59D7    call       dword ptr [edx]
 004D59D9    push       eax
 004D59DA    sar        eax,1F
 004D59DD    cmp        eax,edx
 004D59DF    pop        eax
>004D59E0    je         004D59E7
 004D59E2    call       @BoundErr
 004D59E7    mov        edi,eax
 004D59E9    mov        dword ptr [ebx+10],edi; TZAbstractBlob.?f10:Longint
 004D59EC    test       edi,edi
>004D59EE    jle        004D5A20
 004D59F0    mov        eax,edi
 004D59F2    call       @GetMem
 004D59F7    mov        dword ptr [ebx+0C],eax; TZAbstractBlob.?fC:Pointer
 004D59FA    push       0
 004D59FC    push       0
 004D59FE    mov        eax,esi
 004D5A00    call       TStream.SetPosition
 004D5A05    mov        ecx,dword ptr [ebx+10]; TZAbstractBlob.?f10:Longint
 004D5A08    mov        edx,dword ptr [ebx+0C]; TZAbstractBlob.?fC:Pointer
 004D5A0B    mov        eax,esi
 004D5A0D    call       TStream.ReadBuffer
>004D5A12    jmp        004D5A20
 004D5A14    mov        dword ptr [ebx+10],0FFFFFFFF; TZAbstractBlob.?f10:Longint
 004D5A1B    xor        eax,eax
 004D5A1D    mov        dword ptr [ebx+0C],eax; TZAbstractBlob.?fC:Pointer
 004D5A20    mov        eax,ebx
 004D5A22    cmp        byte ptr [ebp-1],0
>004D5A26    je         004D5A37
 004D5A28    call       @AfterConstruction
 004D5A2D    pop        dword ptr fs:[0]
 004D5A34    add        esp,0C
 004D5A37    mov        eax,ebx
 004D5A39    pop        edi
 004D5A3A    pop        esi
 004D5A3B    pop        ebx
 004D5A3C    pop        ecx
 004D5A3D    pop        ebp
 004D5A3E    ret
*}
//end;

//004D5A40
//constructor TZAbstractBlob.Create(?:TZAbstractBlob; _Dv__:Boolean; ?:?);
//begin
{*
 004D5A40    push       ebp
 004D5A41    mov        ebp,esp
 004D5A43    add        esp,0FFFFFFF8
 004D5A46    push       ebx
 004D5A47    push       esi
 004D5A48    push       edi
 004D5A49    test       dl,dl
>004D5A4B    je         004D5A55
 004D5A4D    add        esp,0FFFFFFF0
 004D5A50    call       @ClassCreate
 004D5A55    mov        dword ptr [ebp-8],ecx
 004D5A58    mov        byte ptr [ebp-1],dl
 004D5A5B    mov        ebx,eax
 004D5A5D    xor        edx,edx
 004D5A5F    mov        eax,ebx
 004D5A61    call       TObject.Create
 004D5A66    xor        eax,eax
 004D5A68    mov        dword ptr [ebx+0C],eax; TZAbstractBlob.?fC:Pointer
 004D5A6B    mov        esi,dword ptr [ebp+8]
 004D5A6E    mov        dword ptr [ebx+10],esi; TZAbstractBlob.?f10:Longint
 004D5A71    test       esi,esi
>004D5A73    jle        004D5A8E
 004D5A75    mov        eax,esi
 004D5A77    call       @GetMem
 004D5A7C    mov        edi,eax
 004D5A7E    mov        dword ptr [ebx+0C],edi; TZAbstractBlob.?fC:Pointer
 004D5A81    mov        ecx,dword ptr [ebx+10]; TZAbstractBlob.?f10:Longint
 004D5A84    mov        edx,edi
 004D5A86    mov        eax,dword ptr [ebp-8]
 004D5A89    call       Move
 004D5A8E    mov        byte ptr [ebx+14],0; TZAbstractBlob.?f14:byte
 004D5A92    mov        eax,ebx
 004D5A94    cmp        byte ptr [ebp-1],0
>004D5A98    je         004D5AA9
 004D5A9A    call       @AfterConstruction
 004D5A9F    pop        dword ptr fs:[0]
 004D5AA6    add        esp,0C
 004D5AA9    mov        eax,ebx
 004D5AAB    pop        edi
 004D5AAC    pop        esi
 004D5AAD    pop        ebx
 004D5AAE    pop        ecx
 004D5AAF    pop        ecx
 004D5AB0    pop        ebp
 004D5AB1    ret        4
*}
//end;

//004D5AB4
destructor TZAbstractBlob.Destroy;
begin
{*
 004D5AB4    push       ebp
 004D5AB5    mov        ebp,esp
 004D5AB7    push       ebx
 004D5AB8    push       esi
 004D5AB9    call       @BeforeDestruction
 004D5ABE    mov        ebx,edx
 004D5AC0    mov        esi,eax
 004D5AC2    mov        eax,esi
 004D5AC4    mov        edx,dword ptr [eax]
 004D5AC6    call       dword ptr [edx+2C]; TZAbstractBlob.sub_004D5AE4
 004D5AC9    mov        edx,ebx
 004D5ACB    and        dl,0FC
 004D5ACE    mov        eax,esi
 004D5AD0    call       TObject.Destroy
 004D5AD5    test       bl,bl
>004D5AD7    jle        004D5AE0
 004D5AD9    mov        eax,esi
 004D5ADB    call       @ClassDestroy
 004D5AE0    pop        esi
 004D5AE1    pop        ebx
 004D5AE2    pop        ebp
 004D5AE3    ret
*}
end;

//004D5AE4
procedure sub_004D5AE4;
begin
{*
 004D5AE4    push       ebp
 004D5AE5    mov        ebp,esp
 004D5AE7    push       ebx
 004D5AE8    mov        ebx,eax
 004D5AEA    mov        eax,dword ptr [ebx+0C]; TZASABlob.?fC:Pointer
 004D5AED    test       eax,eax
>004D5AEF    je         004D5AF6
 004D5AF1    call       @FreeMem
 004D5AF6    xor        eax,eax
 004D5AF8    mov        dword ptr [ebx+0C],eax; TZASABlob.?fC:Pointer
 004D5AFB    mov        dword ptr [ebx+10],0FFFFFFFF; TZASABlob.?f10:Longint
 004D5B02    mov        byte ptr [ebx+14],1; TZASABlob.?f14:byte
 004D5B06    pop        ebx
 004D5B07    pop        ebp
 004D5B08    ret
*}
end;

//004D5B0C
//procedure sub_004D5B0C(?:?);
//begin
{*
 004D5B0C    push       ebp
 004D5B0D    mov        ebp,esp
 004D5B0F    push       ebx
 004D5B10    push       esi
 004D5B11    mov        esi,edx
 004D5B13    mov        ebx,eax
 004D5B15    mov        eax,dword ptr [ebx+10]; TZAbstractBlob.?f10:Longint
 004D5B18    push       eax
 004D5B19    mov        ecx,dword ptr [ebx+0C]; TZAbstractBlob.?fC:Pointer
 004D5B1C    mov        dl,1
 004D5B1E    mov        eax,[004D3F38]; TZAbstractBlob
 004D5B23    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004D5B28    mov        edx,eax
 004D5B2A    test       edx,edx
>004D5B2C    je         004D5B31
 004D5B2E    sub        edx,0FFFFFFE8
 004D5B31    mov        eax,esi
 004D5B33    call       @IntfCopy
 004D5B38    pop        esi
 004D5B39    pop        ebx
 004D5B3A    pop        ebp
 004D5B3B    ret
*}
//end;

//004D5B3C
function sub_004D5B3C:Boolean;
begin
{*
 004D5B3C    cmp        dword ptr [eax+10],0; TZAbstractBlob.?f10:Longint
 004D5B40    setl       al
 004D5B43    ret
*}
end;

//004D5B44
//function sub_004D5B44:?;
//begin
{*
 004D5B44    mov        al,byte ptr [eax+14]; TZASABlob.?f14:byte
 004D5B47    ret
*}
//end;

//004D5B48
//function sub_004D5B48:?;
//begin
{*
 004D5B48    mov        eax,dword ptr [eax+10]; TZASABlob.?f10:Longint
 004D5B4B    ret
*}
//end;

//004D5B4C
//procedure sub_004D5B4C(?:?);
//begin
{*
 004D5B4C    push       ebp
 004D5B4D    mov        ebp,esp
 004D5B4F    push       ebx
 004D5B50    mov        ebx,edx
 004D5B52    mov        edx,dword ptr [eax+10]; TZAbstractBlob.?f10:Longint
 004D5B55    test       edx,edx
>004D5B57    jle        004D5B6F
 004D5B59    cmp        dword ptr [eax+0C],0; TZAbstractBlob.?fC:Pointer
>004D5B5D    je         004D5B6F
 004D5B5F    mov        ecx,ebx
 004D5B61    mov        eax,dword ptr [eax+0C]; TZAbstractBlob.?fC:Pointer
 004D5B64    xchg       eax,ecx
 004D5B65    xchg       edx,ecx
 004D5B67    call       @LStrFromPCharLen
 004D5B6C    pop        ebx
 004D5B6D    pop        ebp
 004D5B6E    ret
 004D5B6F    mov        eax,ebx
 004D5B71    call       @LStrClr
 004D5B76    pop        ebx
 004D5B77    pop        ebp
 004D5B78    ret
*}
//end;

//004D5B7C
//procedure sub_004D5B7C(?:?);
//begin
{*
 004D5B7C    push       ebp
 004D5B7D    mov        ebp,esp
 004D5B7F    push       ebx
 004D5B80    push       esi
 004D5B81    push       edi
 004D5B82    mov        edi,edx
 004D5B84    mov        ebx,eax
 004D5B86    mov        eax,ebx
 004D5B88    mov        edx,dword ptr [eax]
 004D5B8A    call       dword ptr [edx+2C]; TZASABlob.sub_004D5AE4
 004D5B8D    mov        eax,edi
 004D5B8F    call       @LStrLen
 004D5B94    mov        esi,eax
 004D5B96    mov        dword ptr [ebx+10],esi; TZASABlob.?f10:Longint
 004D5B99    test       esi,esi
>004D5B9B    jle        004D5BB9
 004D5B9D    mov        eax,esi
 004D5B9F    call       @GetMem
 004D5BA4    mov        dword ptr [ebx+0C],eax; TZASABlob.?fC:Pointer
 004D5BA7    mov        eax,edi
 004D5BA9    call       @LStrToPChar
 004D5BAE    mov        edx,dword ptr [ebx+0C]; TZASABlob.?fC:Pointer
 004D5BB1    mov        ecx,dword ptr [ebx+10]; TZASABlob.?f10:Longint
 004D5BB4    call       Move
 004D5BB9    mov        byte ptr [ebx+14],1; TZASABlob.?f14:byte
 004D5BBD    pop        edi
 004D5BBE    pop        esi
 004D5BBF    pop        ebx
 004D5BC0    pop        ebp
 004D5BC1    ret
*}
//end;

//004D5BC4
//procedure sub_004D5BC4(?:?);
//begin
{*
 004D5BC4    push       ebp
 004D5BC5    mov        ebp,esp
 004D5BC7    push       0
 004D5BC9    push       ebx
 004D5BCA    push       esi
 004D5BCB    mov        esi,edx
 004D5BCD    mov        ebx,eax
 004D5BCF    xor        eax,eax
 004D5BD1    push       ebp
 004D5BD2    push       4D5C07
 004D5BD7    push       dword ptr fs:[eax]
 004D5BDA    mov        dword ptr fs:[eax],esp
 004D5BDD    lea        edx,[ebp-4]
 004D5BE0    mov        eax,ebx
 004D5BE2    mov        ecx,dword ptr [eax]
 004D5BE4    call       dword ptr [ecx+0C]; TZAbstractBlob.sub_004D5B4C
 004D5BE7    mov        edx,dword ptr [ebp-4]
 004D5BEA    mov        eax,esi
 004D5BEC    call       @WStrFromLStr
 004D5BF1    xor        eax,eax
 004D5BF3    pop        edx
 004D5BF4    pop        ecx
 004D5BF5    pop        ecx
 004D5BF6    mov        dword ptr fs:[eax],edx
 004D5BF9    push       4D5C0E
 004D5BFE    lea        eax,[ebp-4]
 004D5C01    call       @LStrClr
 004D5C06    ret
<004D5C07    jmp        @HandleFinally
<004D5C0C    jmp        004D5BFE
 004D5C0E    pop        esi
 004D5C0F    pop        ebx
 004D5C10    pop        ecx
 004D5C11    pop        ebp
 004D5C12    ret
*}
//end;

//004D5C14
//procedure sub_004D5C14(?:?);
//begin
{*
 004D5C14    push       ebp
 004D5C15    mov        ebp,esp
 004D5C17    push       0
 004D5C19    push       ebx
 004D5C1A    push       esi
 004D5C1B    mov        esi,edx
 004D5C1D    mov        ebx,eax
 004D5C1F    xor        eax,eax
 004D5C21    push       ebp
 004D5C22    push       4D5C57
 004D5C27    push       dword ptr fs:[eax]
 004D5C2A    mov        dword ptr fs:[eax],esp
 004D5C2D    lea        eax,[ebp-4]
 004D5C30    mov        edx,esi
 004D5C32    call       @LStrFromWStr
 004D5C37    mov        edx,dword ptr [ebp-4]
 004D5C3A    mov        eax,ebx
 004D5C3C    mov        ecx,dword ptr [eax]
 004D5C3E    call       dword ptr [ecx+10]; TZASABlob.sub_004D5B7C
 004D5C41    xor        eax,eax
 004D5C43    pop        edx
 004D5C44    pop        ecx
 004D5C45    pop        ecx
 004D5C46    mov        dword ptr fs:[eax],edx
 004D5C49    push       4D5C5E
 004D5C4E    lea        eax,[ebp-4]
 004D5C51    call       @LStrClr
 004D5C56    ret
<004D5C57    jmp        @HandleFinally
<004D5C5C    jmp        004D5C4E
 004D5C5E    pop        esi
 004D5C5F    pop        ebx
 004D5C60    pop        ecx
 004D5C61    pop        ebp
 004D5C62    ret
*}
//end;

//004D5C64
//procedure sub_004D5C64(?:?);
//begin
{*
 004D5C64    push       ebp
 004D5C65    mov        ebp,esp
 004D5C67    push       0
 004D5C69    push       ebx
 004D5C6A    push       esi
 004D5C6B    mov        ebx,edx
 004D5C6D    mov        esi,eax
 004D5C6F    xor        eax,eax
 004D5C71    push       ebp
 004D5C72    push       4D5D29
 004D5C77    push       dword ptr fs:[eax]
 004D5C7A    mov        dword ptr fs:[eax],esp
 004D5C7D    mov        eax,esi
 004D5C7F    mov        edx,dword ptr [eax]
 004D5C81    call       dword ptr [edx]; TZAbstractBlob.sub_004D5B3C
 004D5C83    test       al,al
>004D5C85    jne        004D5D06
 004D5C87    lea        edx,[ebp-4]
 004D5C8A    mov        eax,esi
 004D5C8C    mov        ecx,dword ptr [eax]
 004D5C8E    call       dword ptr [ecx+0C]; TZAbstractBlob.sub_004D5B4C
 004D5C91    mov        eax,dword ptr [ebp-4]
 004D5C94    call       @LStrLen
 004D5C99    push       eax
 004D5C9A    mov        eax,ebx
 004D5C9C    mov        ecx,1
 004D5CA1    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004D5CA7    call       @DynArraySetLength
 004D5CAC    add        esp,4
 004D5CAF    mov        eax,dword ptr [ebp-4]
 004D5CB2    call       @LStrLen
 004D5CB7    mov        edx,eax
 004D5CB9    sub        edx,1
>004D5CBC    jno        004D5CC3
 004D5CBE    call       @IntOver
 004D5CC3    test       edx,edx
>004D5CC5    jl         004D5D13
 004D5CC7    inc        edx
 004D5CC8    xor        eax,eax
 004D5CCA    mov        ecx,eax
 004D5CCC    add        ecx,1
>004D5CCF    jno        004D5CD6
 004D5CD1    call       @IntOver
 004D5CD6    mov        esi,dword ptr [ebp-4]
 004D5CD9    dec        ecx
 004D5CDA    test       esi,esi
>004D5CDC    je         004D5CE3
 004D5CDE    cmp        ecx,dword ptr [esi-4]
>004D5CE1    jb         004D5CE8
 004D5CE3    call       @BoundErr
 004D5CE8    inc        ecx
 004D5CE9    mov        cl,byte ptr [esi+ecx-1]
 004D5CED    mov        esi,dword ptr [ebx]
 004D5CEF    test       esi,esi
>004D5CF1    je         004D5CF8
 004D5CF3    cmp        eax,dword ptr [esi-4]
>004D5CF6    jb         004D5CFD
 004D5CF8    call       @BoundErr
 004D5CFD    mov        byte ptr [esi+eax],cl
 004D5D00    inc        eax
 004D5D01    dec        edx
<004D5D02    jne        004D5CCA
>004D5D04    jmp        004D5D13
 004D5D06    mov        eax,ebx
 004D5D08    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004D5D0E    call       @DynArrayClear
 004D5D13    xor        eax,eax
 004D5D15    pop        edx
 004D5D16    pop        ecx
 004D5D17    pop        ecx
 004D5D18    mov        dword ptr fs:[eax],edx
 004D5D1B    push       4D5D30
 004D5D20    lea        eax,[ebp-4]
 004D5D23    call       @LStrClr
 004D5D28    ret
<004D5D29    jmp        @HandleFinally
<004D5D2E    jmp        004D5D20
 004D5D30    pop        esi
 004D5D31    pop        ebx
 004D5D32    pop        ecx
 004D5D33    pop        ebp
 004D5D34    ret
*}
//end;

//004D5D38
//procedure sub_004D5D38(?:?);
//begin
{*
 004D5D38    push       ebp
 004D5D39    mov        ebp,esp
 004D5D3B    add        esp,0FFFFFFF8
 004D5D3E    push       ebx
 004D5D3F    push       esi
 004D5D40    push       edi
 004D5D41    xor        ecx,ecx
 004D5D43    mov        dword ptr [ebp-8],ecx
 004D5D46    mov        edi,edx
 004D5D48    mov        dword ptr [ebp-4],eax
 004D5D4B    xor        eax,eax
 004D5D4D    push       ebp
 004D5D4E    push       4D5DFB
 004D5D53    push       dword ptr fs:[eax]
 004D5D56    mov        dword ptr fs:[eax],esp
 004D5D59    test       edi,edi
>004D5D5B    je         004D5DD6
 004D5D5D    mov        eax,edi
 004D5D5F    call       @DynArrayHigh
 004D5D64    mov        edx,eax
 004D5D66    add        edx,1
>004D5D69    jno        004D5D70
 004D5D6B    call       @IntOver
 004D5D70    lea        eax,[ebp-8]
 004D5D73    call       @LStrSetLength
 004D5D78    mov        eax,edi
 004D5D7A    call       @DynArrayHigh
 004D5D7F    mov        esi,eax
 004D5D81    test       esi,esi
>004D5D83    jl         004D5DC9
 004D5D85    inc        esi
 004D5D86    xor        ebx,ebx
 004D5D88    lea        eax,[ebp-8]
 004D5D8B    call       @UniqueStringA
 004D5D90    mov        edx,ebx
 004D5D92    add        edx,1
>004D5D95    jno        004D5D9C
 004D5D97    call       @IntOver
 004D5D9C    dec        edx
 004D5D9D    test       eax,eax
>004D5D9F    je         004D5DA6
 004D5DA1    cmp        edx,dword ptr [eax-4]
>004D5DA4    jb         004D5DAB
 004D5DA6    call       @BoundErr
 004D5DAB    inc        edx
 004D5DAC    lea        eax,[eax+edx-1]
 004D5DB0    push       eax
 004D5DB1    test       edi,edi
>004D5DB3    je         004D5DBA
 004D5DB5    cmp        ebx,dword ptr [edi-4]
>004D5DB8    jb         004D5DBF
 004D5DBA    call       @BoundErr
 004D5DBF    mov        al,byte ptr [edi+ebx]
 004D5DC2    pop        edx
 004D5DC3    mov        byte ptr [edx],al
 004D5DC5    inc        ebx
 004D5DC6    dec        esi
<004D5DC7    jne        004D5D88
 004D5DC9    mov        edx,dword ptr [ebp-8]
 004D5DCC    mov        eax,dword ptr [ebp-4]
 004D5DCF    mov        ecx,dword ptr [eax]
 004D5DD1    call       dword ptr [ecx+10]; TZASABlob.sub_004D5B7C
>004D5DD4    jmp        004D5DDE
 004D5DD6    mov        eax,dword ptr [ebp-4]
 004D5DD9    mov        edx,dword ptr [eax]
 004D5DDB    call       dword ptr [edx+2C]; TZASABlob.sub_004D5AE4
 004D5DDE    mov        eax,dword ptr [ebp-4]
 004D5DE1    mov        byte ptr [eax+14],1; TZASABlob.?f14:byte
 004D5DE5    xor        eax,eax
 004D5DE7    pop        edx
 004D5DE8    pop        ecx
 004D5DE9    pop        ecx
 004D5DEA    mov        dword ptr fs:[eax],edx
 004D5DED    push       4D5E02
 004D5DF2    lea        eax,[ebp-8]
 004D5DF5    call       @LStrClr
 004D5DFA    ret
<004D5DFB    jmp        @HandleFinally
<004D5E00    jmp        004D5DF2
 004D5E02    pop        edi
 004D5E03    pop        esi
 004D5E04    pop        ebx
 004D5E05    pop        ecx
 004D5E06    pop        ecx
 004D5E07    pop        ebp
 004D5E08    ret
*}
//end;

//004D5E0C
//function sub_004D5E0C:?;
//begin
{*
 004D5E0C    push       ebp
 004D5E0D    mov        ebp,esp
 004D5E0F    push       ebx
 004D5E10    push       esi
 004D5E11    mov        ebx,eax
 004D5E13    mov        dl,1
 004D5E15    mov        eax,[0041CBF8]; TMemoryStream
 004D5E1A    call       TObject.Create; TMemoryStream.Create
 004D5E1F    mov        esi,eax
 004D5E21    mov        ecx,dword ptr [ebx+10]; TZAbstractBlob.?f10:Longint
 004D5E24    test       ecx,ecx
>004D5E26    jle        004D5E48
 004D5E28    cmp        dword ptr [ebx+0C],0; TZAbstractBlob.?fC:Pointer
>004D5E2C    je         004D5E48
 004D5E2E    mov        eax,ecx
 004D5E30    cdq
 004D5E31    push       edx
 004D5E32    push       eax
 004D5E33    mov        eax,esi
 004D5E35    call       TStream.SetSize64
 004D5E3A    mov        edx,dword ptr [esi+4]; TMemoryStream.FMemory:Pointer
 004D5E3D    mov        eax,dword ptr [ebx+0C]; TZAbstractBlob.?fC:Pointer
 004D5E40    mov        ecx,dword ptr [ebx+10]; TZAbstractBlob.?f10:Longint
 004D5E43    call       Move
 004D5E48    push       0
 004D5E4A    push       0
 004D5E4C    mov        eax,esi
 004D5E4E    call       TStream.SetPosition
 004D5E53    mov        eax,esi
 004D5E55    pop        esi
 004D5E56    pop        ebx
 004D5E57    pop        ebp
 004D5E58    ret
*}
//end;

//004D5E5C
//procedure sub_004D5E5C(?:?);
//begin
{*
 004D5E5C    push       ebp
 004D5E5D    mov        ebp,esp
 004D5E5F    push       ebx
 004D5E60    push       esi
 004D5E61    push       edi
 004D5E62    mov        esi,edx
 004D5E64    mov        ebx,eax
 004D5E66    mov        eax,ebx
 004D5E68    mov        edx,dword ptr [eax]
 004D5E6A    call       dword ptr [edx+2C]; TZASABlob.sub_004D5AE4
 004D5E6D    test       esi,esi
>004D5E6F    je         004D5EB2
 004D5E71    mov        eax,esi
 004D5E73    mov        edx,dword ptr [eax]
 004D5E75    call       dword ptr [edx]
 004D5E77    push       eax
 004D5E78    sar        eax,1F
 004D5E7B    cmp        eax,edx
 004D5E7D    pop        eax
>004D5E7E    je         004D5E85
 004D5E80    call       @BoundErr
 004D5E85    mov        edi,eax
 004D5E87    mov        dword ptr [ebx+10],edi; TZASABlob.?f10:Longint
 004D5E8A    test       edi,edi
>004D5E8C    jle        004D5EBE
 004D5E8E    mov        eax,edi
 004D5E90    call       @GetMem
 004D5E95    mov        dword ptr [ebx+0C],eax; TZASABlob.?fC:Pointer
 004D5E98    push       0
 004D5E9A    push       0
 004D5E9C    mov        eax,esi
 004D5E9E    call       TStream.SetPosition
 004D5EA3    mov        edx,dword ptr [ebx+0C]; TZASABlob.?fC:Pointer
 004D5EA6    mov        ecx,dword ptr [ebx+10]; TZASABlob.?f10:Longint
 004D5EA9    mov        eax,esi
 004D5EAB    call       TStream.ReadBuffer
>004D5EB0    jmp        004D5EBE
 004D5EB2    mov        dword ptr [ebx+10],0FFFFFFFF; TZASABlob.?f10:Longint
 004D5EB9    xor        eax,eax
 004D5EBB    mov        dword ptr [ebx+0C],eax; TZASABlob.?fC:Pointer
 004D5EBE    mov        byte ptr [ebx+14],1; TZASABlob.?f14:byte
 004D5EC2    pop        edi
 004D5EC3    pop        esi
 004D5EC4    pop        ebx
 004D5EC5    pop        ebp
 004D5EC6    ret
*}
//end;

end.