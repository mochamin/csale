{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit190;

interface

uses
  Classes, Windows, Graphics, _Unit134, ZDbcInterbase6Utils, ZDbcInterbase6;

type
  TZInterbase6ResultSet = class(TZAbstractResultSet)
  public
    f3C:byte;//f3C
    f40:dword;//f40
    f44:String;//f44
    f48:dword;//f48
    f4C:IZResultSQLDA;//f4C
    f50:IZParamsSQLDA;//f50
    f54:IZInterbase6Connection;//f54
    destructor Destroy; virtual;
    procedure sub_00528178; virtual;
    //function sub_0052807C:?; virtual;
    procedure sub_00527904; virtual;
    //procedure sub_00528044(?:?); virtual;
    //procedure sub_00527F5C(?:?; ?:?); virtual;
    //function sub_00527CB4(?:?):?; virtual;
    //function sub_00527CFC(?:?):?; virtual;
    //function sub_00527F14(?:?):?; virtual;
    //function sub_00527E7C(?:?):?; virtual;
    //procedure sub_00527EC4(?:?); virtual;
    //procedure sub_00527E30(?:?); virtual;
    //procedure sub_00527DE0(?:?); virtual;
    //procedure sub_00527AE8(?:?); virtual;
    //procedure sub_00527D44(?:?; ?:?); virtual;
    //procedure sub_00527D90(?:?); virtual;
    //procedure sub_00527FA4(?:?); virtual;
    //procedure sub_00527FF4(?:?); virtual;
    //procedure sub_00527B38(?:?; ?:?); virtual;
    //procedure sub_005283E4(?:?); virtual;
    //function sub_0052806C():?; virtual;
    //constructor Create(?:TZInterbase6ResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZInterbase6Blob = class(TZAbstractBlob)
  public
    f1C:dword;//f1C
    f20:dword;//f20
    f24:byte;//f24
    f28:IZInterbase6Connection;//f28
    procedure sub_0052852C; virtual;
    //procedure sub_005284EC(?:?); virtual;
    //procedure sub_0052850C(?:?); virtual;
    //procedure sub_005284B4(?:?); virtual;
    procedure sub_005284D4; virtual;
    //procedure sub_005283FC(?:?); virtual;
    //constructor Create(?:TZInterbase6Blob; _Dv__:Boolean; ?:?);
  end;

implementation

{$R *.DFM}

//00527904
procedure sub_00527904;
begin
{*
 00527904    push       ebp
 00527905    mov        ebp,esp
 00527907    push       0
 00527909    push       ebx
 0052790A    mov        ebx,eax
 0052790C    xor        eax,eax
 0052790E    push       ebp
 0052790F    push       527966
 00527914    push       dword ptr fs:[eax]
 00527917    mov        dword ptr fs:[eax],esp
 0052791A    cmp        dword ptr [ebx+48],0; TZInterbase6ResultSet.?f48:dword
>0052791E    je         00527949
 00527920    lea        eax,[ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527923    call       @IntfClear
 00527928    lea        eax,[ebx+50]; TZInterbase6ResultSet.?f50:IZParamsSQLDA
 0052792B    call       @IntfClear
 00527930    lea        edx,[ebp-4]
 00527933    mov        eax,dword ptr [ebx+54]; TZInterbase6ResultSet.?f54:IZInterbase6Connection
 00527936    mov        ecx,dword ptr [eax]
 00527938    call       dword ptr [ecx+0A0]
 0052793E    mov        eax,dword ptr [ebp-4]
 00527941    mov        edx,dword ptr [ebx+48]; TZInterbase6ResultSet.?f48:dword
 00527944    call       00533438
 00527949    mov        eax,ebx
 0052794B    call       004D4588
 00527950    xor        eax,eax
 00527952    pop        edx
 00527953    pop        ecx
 00527954    pop        ecx
 00527955    mov        dword ptr fs:[eax],edx
 00527958    push       52796D
 0052795D    lea        eax,[ebp-4]
 00527960    call       @IntfClear
 00527965    ret
<00527966    jmp        @HandleFinally
<0052796B    jmp        0052795D
 0052796D    pop        ebx
 0052796E    pop        ecx
 0052796F    pop        ebp
 00527970    ret
*}
end;

//00527974
//constructor TZInterbase6ResultSet.Create(?:TZInterbase6ResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00527974    push       ebp
 00527975    mov        ebp,esp
 00527977    add        esp,0FFFFFFF8
 0052797A    push       ebx
 0052797B    push       esi
 0052797C    xor        ebx,ebx
 0052797E    mov        dword ptr [ebp-8],ebx
 00527981    test       dl,dl
>00527983    je         0052798D
 00527985    add        esp,0FFFFFFF0
 00527988    call       @ClassCreate
 0052798D    mov        dword ptr [ebp-4],ecx
 00527990    mov        ebx,edx
 00527992    mov        esi,eax
 00527994    mov        eax,dword ptr [ebp-4]
 00527997    call       @IntfAddRef
 0052799C    mov        eax,dword ptr [ebp+1C]
 0052799F    call       @LStrAddRef
 005279A4    mov        eax,dword ptr [ebp+14]
 005279A7    call       @LStrAddRef
 005279AC    mov        eax,dword ptr [ebp+10]
 005279AF    call       @IntfAddRef
 005279B4    mov        eax,dword ptr [ebp+0C]
 005279B7    call       @IntfAddRef
 005279BC    xor        eax,eax
 005279BE    push       ebp
 005279BF    push       527A7A
 005279C4    push       dword ptr fs:[eax]
 005279C7    mov        dword ptr fs:[eax],esp
 005279CA    mov        eax,dword ptr [ebp+1C]
 005279CD    push       eax
 005279CE    push       0
 005279D0    mov        ecx,dword ptr [ebp-4]
 005279D3    xor        edx,edx
 005279D5    mov        eax,esi
 005279D7    call       004D3FC8
 005279DC    xor        eax,eax
 005279DE    mov        dword ptr [esi+40],eax; TZInterbase6ResultSet.?f40:dword
 005279E1    lea        eax,[esi+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 005279E4    mov        edx,dword ptr [ebp+10]
 005279E7    call       @IntfCopy
 005279EC    lea        eax,[esi+44]; TZInterbase6ResultSet.?f44:String
 005279EF    mov        edx,dword ptr [ebp+14]
 005279F2    call       @LStrAsg
 005279F7    mov        al,byte ptr [ebp+8]
 005279FA    mov        byte ptr [esi+3C],al; TZInterbase6ResultSet.?f3C:byte
 005279FD    lea        edx,[ebp-8]
 00527A00    mov        eax,dword ptr [ebp-4]
 00527A03    mov        ecx,dword ptr [eax]
 00527A05    call       dword ptr [ecx+88]
 00527A0B    mov        edx,dword ptr [ebp-8]
 00527A0E    lea        eax,[esi+54]; TZInterbase6ResultSet.?f54:IZInterbase6Connection
 00527A11    mov        ecx,527AA0; ['{E870E4FE-21EB-4725-B5D8-38B8A2B12D0B}']
 00527A16    call       @IntfCast
 00527A1B    lea        eax,[esi+50]; TZInterbase6ResultSet.?f50:IZParamsSQLDA
 00527A1E    mov        edx,dword ptr [ebp+0C]
 00527A21    call       @IntfCopy
 00527A26    mov        eax,dword ptr [ebp+18]
 00527A29    mov        eax,dword ptr [eax]
 00527A2B    mov        dword ptr [esi+48],eax; TZInterbase6ResultSet.?f48:dword
 00527A2E    mov        byte ptr [esi+24],0; TZInterbase6ResultSet.?f24:byte
 00527A32    mov        byte ptr [esi+25],0; TZInterbase6ResultSet.?f25:byte
 00527A36    mov        eax,esi
 00527A38    mov        edx,dword ptr [eax]
 00527A3A    call       dword ptr [edx]; TZInterbase6ResultSet.sub_00528178
 00527A3C    xor        eax,eax
 00527A3E    pop        edx
 00527A3F    pop        ecx
 00527A40    pop        ecx
 00527A41    mov        dword ptr fs:[eax],edx
 00527A44    push       527A81
 00527A49    lea        eax,[ebp-8]
 00527A4C    call       @IntfClear
 00527A51    lea        eax,[ebp-4]
 00527A54    call       @IntfClear
 00527A59    lea        eax,[ebp+0C]
 00527A5C    call       @IntfClear
 00527A61    lea        eax,[ebp+10]
 00527A64    call       @IntfClear
 00527A69    lea        eax,[ebp+14]
 00527A6C    call       @LStrClr
 00527A71    lea        eax,[ebp+1C]
 00527A74    call       @LStrClr
 00527A79    ret
<00527A7A    jmp        @HandleFinally
<00527A7F    jmp        00527A49
 00527A81    mov        eax,esi
 00527A83    test       bl,bl
>00527A85    je         00527A96
 00527A87    call       @AfterConstruction
 00527A8C    pop        dword ptr fs:[0]
 00527A93    add        esp,0C
 00527A96    mov        eax,esi
 00527A98    pop        esi
 00527A99    pop        ebx
 00527A9A    pop        ecx
 00527A9B    pop        ecx
 00527A9C    pop        ebp
 00527A9D    ret        18
*}
//end;

//00527AB0
destructor TZInterbase6ResultSet.Destroy;
begin
{*
 00527AB0    push       ebp
 00527AB1    mov        ebp,esp
 00527AB3    push       ebx
 00527AB4    push       esi
 00527AB5    call       @BeforeDestruction
 00527ABA    mov        ebx,edx
 00527ABC    mov        esi,eax
 00527ABE    cmp        byte ptr [esi+1C],0; TZInterbase6ResultSet.?f1C:byte
>00527AC2    jne        00527ACB
 00527AC4    mov        eax,esi
 00527AC6    mov        edx,dword ptr [eax]
 00527AC8    call       dword ptr [edx+8]; TZInterbase6ResultSet.sub_00527904
 00527ACB    mov        edx,ebx
 00527ACD    and        dl,0FC
 00527AD0    mov        eax,esi
 00527AD2    call       TZAbstractResultSet.Destroy
 00527AD7    test       bl,bl
>00527AD9    jle        00527AE2
 00527ADB    mov        eax,esi
 00527ADD    call       @ClassDestroy
 00527AE2    pop        esi
 00527AE3    pop        ebx
 00527AE4    pop        ebp
 00527AE5    ret
*}
end;

//00527AE8
//procedure sub_00527AE8(?:?);
//begin
{*
 00527AE8    push       ebp
 00527AE9    mov        ebp,esp
 00527AEB    add        esp,0FFFFFFF0
 00527AEE    push       ebx
 00527AEF    push       esi
 00527AF0    mov        esi,edx
 00527AF2    mov        ebx,eax
 00527AF4    mov        eax,ebx
 00527AF6    call       004D42AC
 00527AFB    mov        cl,8
 00527AFD    mov        edx,esi
 00527AFF    mov        eax,ebx
 00527B01    call       004D4308
 00527B06    mov        edx,esi
 00527B08    sub        edx,1
>00527B0B    jno        00527B12
 00527B0D    call       @IntOver
 00527B12    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527B15    mov        ecx,dword ptr [eax]
 00527B17    call       dword ptr [ecx+88]
 00527B1D    fstp       tbyte ptr [ebp-10]
 00527B20    wait
 00527B21    mov        edx,esi
 00527B23    mov        eax,ebx
 00527B25    mov        ecx,dword ptr [eax]
 00527B27    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527B2A    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527B2D    fld        tbyte ptr [ebp-10]
 00527B30    pop        esi
 00527B31    pop        ebx
 00527B32    mov        esp,ebp
 00527B34    pop        ebp
 00527B35    ret
*}
//end;

//00527B38
//procedure sub_00527B38(?:?; ?:?);
//begin
{*
 00527B38    push       ebp
 00527B39    mov        ebp,esp
 00527B3B    add        esp,0FFFFFFE4
 00527B3E    push       ebx
 00527B3F    push       esi
 00527B40    xor        ebx,ebx
 00527B42    mov        dword ptr [ebp-1C],ebx
 00527B45    mov        dword ptr [ebp-18],ebx
 00527B48    mov        dword ptr [ebp-4],ecx
 00527B4B    mov        esi,edx
 00527B4D    mov        ebx,eax
 00527B4F    xor        eax,eax
 00527B51    push       ebp
 00527B52    push       527CA6
 00527B57    push       dword ptr fs:[eax]
 00527B5A    mov        dword ptr fs:[eax],esp
 00527B5D    mov        eax,dword ptr [ebp-4]
 00527B60    call       @IntfClear
 00527B65    mov        eax,ebx
 00527B67    call       004D42AC
 00527B6C    mov        edx,esi
 00527B6E    mov        eax,ebx
 00527B70    call       004D4450
 00527B75    mov        edx,esi
 00527B77    mov        eax,ebx
 00527B79    mov        ecx,dword ptr [eax]
 00527B7B    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527B7E    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527B81    cmp        byte ptr [ebx+34],0; TZInterbase6ResultSet.?f34:byte
>00527B85    jne        00527C88
 00527B8B    cmp        byte ptr [ebx+3C],0; TZInterbase6ResultSet.?f3C:byte
>00527B8F    je         00527C4A
 00527B95    xor        eax,eax
 00527B97    push       ebp
 00527B98    push       527C43
 00527B9D    push       dword ptr fs:[eax]
 00527BA0    mov        dword ptr fs:[eax],esp
 00527BA3    lea        ecx,[ebp-14]
 00527BA6    mov        edx,esi
 00527BA8    sub        edx,1
>00527BAB    jno        00527BB2
 00527BAD    call       @IntOver
 00527BB2    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527BB5    mov        esi,dword ptr [eax]
 00527BB7    call       dword ptr [esi+0A0]
 00527BBD    lea        eax,[ebp-18]
 00527BC0    mov        edx,dword ptr [ebx+54]; TZInterbase6ResultSet.?f54:IZInterbase6Connection
 00527BC3    call       @IntfCopy
 00527BC8    lea        eax,[ebp-14]
 00527BCB    push       eax
 00527BCC    lea        eax,[ebp-8]
 00527BCF    push       eax
 00527BD0    lea        eax,[ebp-0C]
 00527BD3    push       eax
 00527BD4    lea        edx,[ebp-1C]
 00527BD7    mov        eax,dword ptr [ebp-18]
 00527BDA    mov        ecx,dword ptr [eax]
 00527BDC    call       dword ptr [ecx+0A0]
 00527BE2    mov        eax,dword ptr [ebp-1C]
 00527BE5    push       eax
 00527BE6    mov        eax,dword ptr [ebp-18]
 00527BE9    mov        edx,dword ptr [eax]
 00527BEB    call       dword ptr [edx+98]
 00527BF1    push       eax
 00527BF2    mov        eax,dword ptr [ebp-18]
 00527BF5    mov        edx,dword ptr [eax]
 00527BF7    call       dword ptr [edx+94]
 00527BFD    mov        edx,eax
 00527BFF    pop        ecx
 00527C00    pop        eax
 00527C01    call       00533D98
 00527C06    mov        eax,dword ptr [ebp-8]
 00527C09    push       eax
 00527C0A    mov        ecx,dword ptr [ebp-0C]
 00527C0D    mov        dl,1
 00527C0F    mov        eax,[004D3F38]; TZAbstractBlob
 00527C14    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 00527C19    mov        edx,eax
 00527C1B    test       edx,edx
>00527C1D    je         00527C22
 00527C1F    sub        edx,0FFFFFFE8
 00527C22    mov        eax,dword ptr [ebp-4]
 00527C25    call       @IntfCopy
 00527C2A    xor        eax,eax
 00527C2C    pop        edx
 00527C2D    pop        ecx
 00527C2E    pop        ecx
 00527C2F    mov        dword ptr fs:[eax],edx
 00527C32    push       527C88
 00527C37    mov        edx,dword ptr [ebp-8]
 00527C3A    mov        eax,dword ptr [ebp-0C]
 00527C3D    call       @FreeMem
 00527C42    ret
<00527C43    jmp        @HandleFinally
<00527C48    jmp        00527C37
 00527C4A    lea        ecx,[ebp-14]
 00527C4D    mov        edx,esi
 00527C4F    sub        edx,1
>00527C52    jno        00527C59
 00527C54    call       @IntOver
 00527C59    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527C5C    mov        esi,dword ptr [eax]
 00527C5E    call       dword ptr [esi+0A0]
 00527C64    lea        eax,[ebp-14]
 00527C67    push       eax
 00527C68    mov        ecx,dword ptr [ebx+54]; TZInterbase6ResultSet.?f54:IZInterbase6Connection
 00527C6B    mov        dl,1
 00527C6D    mov        eax,[00527860]; TZInterbase6Blob
 00527C72    call       TZInterbase6Blob.Create; TZInterbase6Blob.Create
 00527C77    mov        edx,eax
 00527C79    test       edx,edx
>00527C7B    je         00527C80
 00527C7D    sub        edx,0FFFFFFE8
 00527C80    mov        eax,dword ptr [ebp-4]
 00527C83    call       @IntfCopy
 00527C88    xor        eax,eax
 00527C8A    pop        edx
 00527C8B    pop        ecx
 00527C8C    pop        ecx
 00527C8D    mov        dword ptr fs:[eax],edx
 00527C90    push       527CAD
 00527C95    lea        eax,[ebp-1C]
 00527C98    call       @IntfClear
 00527C9D    lea        eax,[ebp-18]
 00527CA0    call       @IntfClear
 00527CA5    ret
<00527CA6    jmp        @HandleFinally
<00527CAB    jmp        00527C95
 00527CAD    pop        esi
 00527CAE    pop        ebx
 00527CAF    mov        esp,ebp
 00527CB1    pop        ebp
 00527CB2    ret
*}
//end;

//00527CB4
//function sub_00527CB4(?:?):?;
//begin
{*
 00527CB4    push       ebp
 00527CB5    mov        ebp,esp
 00527CB7    push       ebx
 00527CB8    push       esi
 00527CB9    push       edi
 00527CBA    mov        esi,edx
 00527CBC    mov        edi,eax
 00527CBE    mov        eax,edi
 00527CC0    call       004D42AC
 00527CC5    mov        cl,1
 00527CC7    mov        edx,esi
 00527CC9    mov        eax,edi
 00527CCB    call       004D4308
 00527CD0    mov        edx,esi
 00527CD2    sub        edx,1
>00527CD5    jno        00527CDC
 00527CD7    call       @IntOver
 00527CDC    mov        eax,dword ptr [edi+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527CDF    mov        ecx,dword ptr [eax]
 00527CE1    call       dword ptr [ecx+6C]
 00527CE4    mov        ebx,eax
 00527CE6    mov        edx,esi
 00527CE8    mov        eax,edi
 00527CEA    mov        ecx,dword ptr [eax]
 00527CEC    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527CEF    mov        byte ptr [edi+34],al; TZInterbase6ResultSet.?f34:byte
 00527CF2    mov        eax,ebx
 00527CF4    pop        edi
 00527CF5    pop        esi
 00527CF6    pop        ebx
 00527CF7    pop        ebp
 00527CF8    ret
*}
//end;

//00527CFC
//function sub_00527CFC(?:?):?;
//begin
{*
 00527CFC    push       ebp
 00527CFD    mov        ebp,esp
 00527CFF    push       ebx
 00527D00    push       esi
 00527D01    push       edi
 00527D02    mov        esi,edx
 00527D04    mov        edi,eax
 00527D06    mov        eax,edi
 00527D08    call       004D42AC
 00527D0D    mov        cl,2
 00527D0F    mov        edx,esi
 00527D11    mov        eax,edi
 00527D13    call       004D4308
 00527D18    mov        edx,esi
 00527D1A    sub        edx,1
>00527D1D    jno        00527D24
 00527D1F    call       @IntOver
 00527D24    mov        eax,dword ptr [edi+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527D27    mov        ecx,dword ptr [eax]
 00527D29    call       dword ptr [ecx+70]
 00527D2C    mov        ebx,eax
 00527D2E    mov        edx,esi
 00527D30    mov        eax,edi
 00527D32    mov        ecx,dword ptr [eax]
 00527D34    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527D37    mov        byte ptr [edi+34],al; TZInterbase6ResultSet.?f34:byte
 00527D3A    mov        eax,ebx
 00527D3C    pop        edi
 00527D3D    pop        esi
 00527D3E    pop        ebx
 00527D3F    pop        ebp
 00527D40    ret
*}
//end;

//00527D44
//procedure sub_00527D44(?:?; ?:?);
//begin
{*
 00527D44    push       ebp
 00527D45    mov        ebp,esp
 00527D47    push       ecx
 00527D48    push       ebx
 00527D49    push       esi
 00527D4A    push       edi
 00527D4B    mov        dword ptr [ebp-4],ecx
 00527D4E    mov        esi,edx
 00527D50    mov        ebx,eax
 00527D52    mov        eax,ebx
 00527D54    call       004D42AC
 00527D59    mov        cl,0B
 00527D5B    mov        edx,esi
 00527D5D    mov        eax,ebx
 00527D5F    call       004D4308
 00527D64    mov        ecx,dword ptr [ebp-4]
 00527D67    mov        edx,esi
 00527D69    sub        edx,1
>00527D6C    jno        00527D73
 00527D6E    call       @IntOver
 00527D73    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527D76    mov        edi,dword ptr [eax]
 00527D78    call       dword ptr [edi+8C]
 00527D7E    mov        edx,esi
 00527D80    mov        eax,ebx
 00527D82    mov        ecx,dword ptr [eax]
 00527D84    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527D87    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527D8A    pop        edi
 00527D8B    pop        esi
 00527D8C    pop        ebx
 00527D8D    pop        ecx
 00527D8E    pop        ebp
 00527D8F    ret
*}
//end;

//00527D90
//procedure sub_00527D90(?:?);
//begin
{*
 00527D90    push       ebp
 00527D91    mov        ebp,esp
 00527D93    add        esp,0FFFFFFF8
 00527D96    push       ebx
 00527D97    push       esi
 00527D98    mov        esi,edx
 00527D9A    mov        ebx,eax
 00527D9C    mov        eax,ebx
 00527D9E    call       004D42AC
 00527DA3    mov        cl,0C
 00527DA5    mov        edx,esi
 00527DA7    mov        eax,ebx
 00527DA9    call       004D4308
 00527DAE    mov        edx,esi
 00527DB0    sub        edx,1
>00527DB3    jno        00527DBA
 00527DB5    call       @IntOver
 00527DBA    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527DBD    mov        ecx,dword ptr [eax]
 00527DBF    call       dword ptr [ecx+90]
 00527DC5    fstp       qword ptr [ebp-8]
 00527DC8    wait
 00527DC9    mov        edx,esi
 00527DCB    mov        eax,ebx
 00527DCD    mov        ecx,dword ptr [eax]
 00527DCF    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527DD2    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527DD5    fld        qword ptr [ebp-8]
 00527DD8    pop        esi
 00527DD9    pop        ebx
 00527DDA    pop        ecx
 00527DDB    pop        ecx
 00527DDC    pop        ebp
 00527DDD    ret
*}
//end;

//00527DE0
//procedure sub_00527DE0(?:?);
//begin
{*
 00527DE0    push       ebp
 00527DE1    mov        ebp,esp
 00527DE3    add        esp,0FFFFFFF8
 00527DE6    push       ebx
 00527DE7    push       esi
 00527DE8    mov        esi,edx
 00527DEA    mov        ebx,eax
 00527DEC    mov        eax,ebx
 00527DEE    call       004D42AC
 00527DF3    mov        cl,7
 00527DF5    mov        edx,esi
 00527DF7    mov        eax,ebx
 00527DF9    call       004D4308
 00527DFE    mov        edx,esi
 00527E00    sub        edx,1
>00527E03    jno        00527E0A
 00527E05    call       @IntOver
 00527E0A    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527E0D    mov        ecx,dword ptr [eax]
 00527E0F    call       dword ptr [ecx+84]
 00527E15    fstp       qword ptr [ebp-8]
 00527E18    wait
 00527E19    mov        edx,esi
 00527E1B    mov        eax,ebx
 00527E1D    mov        ecx,dword ptr [eax]
 00527E1F    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527E22    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527E25    fld        qword ptr [ebp-8]
 00527E28    pop        esi
 00527E29    pop        ebx
 00527E2A    pop        ecx
 00527E2B    pop        ecx
 00527E2C    pop        ebp
 00527E2D    ret
*}
//end;

//00527E30
//procedure sub_00527E30(?:?);
//begin
{*
 00527E30    push       ebp
 00527E31    mov        ebp,esp
 00527E33    push       ecx
 00527E34    push       ebx
 00527E35    push       esi
 00527E36    mov        esi,edx
 00527E38    mov        ebx,eax
 00527E3A    mov        eax,ebx
 00527E3C    call       004D42AC
 00527E41    mov        cl,6
 00527E43    mov        edx,esi
 00527E45    mov        eax,ebx
 00527E47    call       004D4308
 00527E4C    mov        edx,esi
 00527E4E    sub        edx,1
>00527E51    jno        00527E58
 00527E53    call       @IntOver
 00527E58    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527E5B    mov        ecx,dword ptr [eax]
 00527E5D    call       dword ptr [ecx+80]
 00527E63    fstp       dword ptr [ebp-4]
 00527E66    wait
 00527E67    mov        edx,esi
 00527E69    mov        eax,ebx
 00527E6B    mov        ecx,dword ptr [eax]
 00527E6D    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527E70    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527E73    fld        dword ptr [ebp-4]
 00527E76    pop        esi
 00527E77    pop        ebx
 00527E78    pop        ecx
 00527E79    pop        ebp
 00527E7A    ret
*}
//end;

//00527E7C
//function sub_00527E7C(?:?):?;
//begin
{*
 00527E7C    push       ebp
 00527E7D    mov        ebp,esp
 00527E7F    push       ebx
 00527E80    push       esi
 00527E81    push       edi
 00527E82    mov        esi,edx
 00527E84    mov        ebx,eax
 00527E86    mov        eax,ebx
 00527E88    call       004D42AC
 00527E8D    mov        cl,4
 00527E8F    mov        edx,esi
 00527E91    mov        eax,ebx
 00527E93    call       004D4308
 00527E98    mov        edx,esi
 00527E9A    sub        edx,1
>00527E9D    jno        00527EA4
 00527E9F    call       @IntOver
 00527EA4    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527EA7    mov        ecx,dword ptr [eax]
 00527EA9    call       dword ptr [ecx+78]
 00527EAC    mov        edi,eax
 00527EAE    mov        edx,esi
 00527EB0    mov        eax,ebx
 00527EB2    mov        ecx,dword ptr [eax]
 00527EB4    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527EB7    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527EBA    mov        eax,edi
 00527EBC    pop        edi
 00527EBD    pop        esi
 00527EBE    pop        ebx
 00527EBF    pop        ebp
 00527EC0    ret
*}
//end;

//00527EC4
//procedure sub_00527EC4(?:?);
//begin
{*
 00527EC4    push       ebp
 00527EC5    mov        ebp,esp
 00527EC7    add        esp,0FFFFFFF8
 00527ECA    push       ebx
 00527ECB    push       esi
 00527ECC    mov        esi,edx
 00527ECE    mov        ebx,eax
 00527ED0    mov        eax,ebx
 00527ED2    call       004D42AC
 00527ED7    mov        cl,5
 00527ED9    mov        edx,esi
 00527EDB    mov        eax,ebx
 00527EDD    call       004D4308
 00527EE2    mov        edx,esi
 00527EE4    sub        edx,1
>00527EE7    jno        00527EEE
 00527EE9    call       @IntOver
 00527EEE    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527EF1    mov        ecx,dword ptr [eax]
 00527EF3    call       dword ptr [ecx+7C]
 00527EF6    mov        dword ptr [ebp-8],eax
 00527EF9    mov        dword ptr [ebp-4],edx
 00527EFC    mov        edx,esi
 00527EFE    mov        eax,ebx
 00527F00    mov        ecx,dword ptr [eax]
 00527F02    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527F05    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527F08    mov        eax,dword ptr [ebp-8]
 00527F0B    mov        edx,dword ptr [ebp-4]
 00527F0E    pop        esi
 00527F0F    pop        ebx
 00527F10    pop        ecx
 00527F11    pop        ecx
 00527F12    pop        ebp
 00527F13    ret
*}
//end;

//00527F14
//function sub_00527F14(?:?):?;
//begin
{*
 00527F14    push       ebp
 00527F15    mov        ebp,esp
 00527F17    push       ebx
 00527F18    push       esi
 00527F19    push       edi
 00527F1A    mov        esi,edx
 00527F1C    mov        ebx,eax
 00527F1E    mov        eax,ebx
 00527F20    call       004D42AC
 00527F25    mov        cl,3
 00527F27    mov        edx,esi
 00527F29    mov        eax,ebx
 00527F2B    call       004D4308
 00527F30    mov        edx,esi
 00527F32    sub        edx,1
>00527F35    jno        00527F3C
 00527F37    call       @IntOver
 00527F3C    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527F3F    mov        ecx,dword ptr [eax]
 00527F41    call       dword ptr [ecx+74]
 00527F44    mov        edi,eax
 00527F46    mov        edx,esi
 00527F48    mov        eax,ebx
 00527F4A    mov        ecx,dword ptr [eax]
 00527F4C    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527F4F    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527F52    mov        eax,edi
 00527F54    pop        edi
 00527F55    pop        esi
 00527F56    pop        ebx
 00527F57    pop        ebp
 00527F58    ret
*}
//end;

//00527F5C
//procedure sub_00527F5C(?:?; ?:?);
//begin
{*
 00527F5C    push       ebp
 00527F5D    mov        ebp,esp
 00527F5F    push       ecx
 00527F60    push       ebx
 00527F61    push       esi
 00527F62    mov        dword ptr [ebp-4],ecx
 00527F65    mov        esi,edx
 00527F67    mov        ebx,eax
 00527F69    mov        eax,ebx
 00527F6B    call       004D42AC
 00527F70    mov        cl,9
 00527F72    mov        edx,esi
 00527F74    mov        eax,ebx
 00527F76    call       004D4308
 00527F7B    mov        edx,esi
 00527F7D    mov        eax,ebx
 00527F7F    mov        ecx,dword ptr [eax]
 00527F81    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527F84    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527F87    mov        ecx,dword ptr [ebp-4]
 00527F8A    mov        edx,esi
 00527F8C    sub        edx,1
>00527F8F    jno        00527F96
 00527F91    call       @IntOver
 00527F96    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527F99    mov        ebx,dword ptr [eax]
 00527F9B    call       dword ptr [ebx+68]
 00527F9E    pop        esi
 00527F9F    pop        ebx
 00527FA0    pop        ecx
 00527FA1    pop        ebp
 00527FA2    ret
*}
//end;

//00527FA4
//procedure sub_00527FA4(?:?);
//begin
{*
 00527FA4    push       ebp
 00527FA5    mov        ebp,esp
 00527FA7    add        esp,0FFFFFFF8
 00527FAA    push       ebx
 00527FAB    push       esi
 00527FAC    mov        esi,edx
 00527FAE    mov        ebx,eax
 00527FB0    mov        eax,ebx
 00527FB2    call       004D42AC
 00527FB7    mov        cl,0D
 00527FB9    mov        edx,esi
 00527FBB    mov        eax,ebx
 00527FBD    call       004D4308
 00527FC2    mov        edx,esi
 00527FC4    sub        edx,1
>00527FC7    jno        00527FCE
 00527FC9    call       @IntOver
 00527FCE    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00527FD1    mov        ecx,dword ptr [eax]
 00527FD3    call       dword ptr [ecx+94]
 00527FD9    fstp       qword ptr [ebp-8]
 00527FDC    wait
 00527FDD    mov        edx,esi
 00527FDF    mov        eax,ebx
 00527FE1    mov        ecx,dword ptr [eax]
 00527FE3    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00527FE6    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00527FE9    fld        qword ptr [ebp-8]
 00527FEC    pop        esi
 00527FED    pop        ebx
 00527FEE    pop        ecx
 00527FEF    pop        ecx
 00527FF0    pop        ebp
 00527FF1    ret
*}
//end;

//00527FF4
//procedure sub_00527FF4(?:?);
//begin
{*
 00527FF4    push       ebp
 00527FF5    mov        ebp,esp
 00527FF7    add        esp,0FFFFFFF8
 00527FFA    push       ebx
 00527FFB    push       esi
 00527FFC    mov        esi,edx
 00527FFE    mov        ebx,eax
 00528000    mov        eax,ebx
 00528002    call       004D42AC
 00528007    mov        cl,0E
 00528009    mov        edx,esi
 0052800B    mov        eax,ebx
 0052800D    call       004D4308
 00528012    mov        edx,esi
 00528014    sub        edx,1
>00528017    jno        0052801E
 00528019    call       @IntOver
 0052801E    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00528021    mov        ecx,dword ptr [eax]
 00528023    call       dword ptr [ecx+98]
 00528029    fstp       qword ptr [ebp-8]
 0052802C    wait
 0052802D    mov        edx,esi
 0052802F    mov        eax,ebx
 00528031    mov        ecx,dword ptr [eax]
 00528033    call       dword ptr [ecx+10]; TZInterbase6ResultSet.sub_00528044
 00528036    mov        byte ptr [ebx+34],al; TZInterbase6ResultSet.?f34:byte
 00528039    fld        qword ptr [ebp-8]
 0052803C    pop        esi
 0052803D    pop        ebx
 0052803E    pop        ecx
 0052803F    pop        ecx
 00528040    pop        ebp
 00528041    ret
*}
//end;

//00528044
//procedure sub_00528044(?:?);
//begin
{*
 00528044    push       ebp
 00528045    mov        ebp,esp
 00528047    push       ebx
 00528048    push       esi
 00528049    mov        esi,edx
 0052804B    mov        ebx,eax
 0052804D    mov        eax,ebx
 0052804F    call       004D42AC
 00528054    mov        edx,esi
 00528056    sub        edx,1
>00528059    jno        00528060
 0052805B    call       @IntOver
 00528060    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 00528063    mov        ecx,dword ptr [eax]
 00528065    call       dword ptr [ecx+60]
 00528068    pop        esi
 00528069    pop        ebx
 0052806A    pop        ebp
 0052806B    ret
*}
//end;

//0052806C
//function sub_0052806C():?;
//begin
{*
 0052806C    push       ebp
 0052806D    mov        ebp,esp
 0052806F    push       ebx
 00528070    xor        ebx,ebx
 00528072    call       004D4204
 00528077    mov        eax,ebx
 00528079    pop        ebx
 0052807A    pop        ebp
 0052807B    ret
*}
//end;

//0052807C
//function sub_0052807C:?;
//begin
{*
 0052807C    push       ebp
 0052807D    mov        ebp,esp
 0052807F    add        esp,0FFFFFF9C
 00528082    push       ebx
 00528083    push       esi
 00528084    xor        edx,edx
 00528086    mov        dword ptr [ebp-64],edx
 00528089    mov        dword ptr [ebp-60],edx
 0052808C    mov        dword ptr [ebp-8],edx
 0052808F    mov        ebx,eax
 00528091    xor        eax,eax
 00528093    push       ebp
 00528094    push       528166
 00528099    push       dword ptr fs:[eax]
 0052809C    mov        dword ptr fs:[eax],esp
 0052809F    mov        byte ptr [ebp-1],0
 005280A3    mov        eax,dword ptr [ebx+18]; TZInterbase6ResultSet.?f18:dword
 005280A6    test       eax,eax
>005280A8    jle        005280B3
 005280AA    cmp        eax,dword ptr [ebx+14]; TZInterbase6ResultSet.?f14:Integer
>005280AD    jle        0052813D
 005280B3    cmp        byte ptr [ebx+24],0; TZInterbase6ResultSet.?f24:byte
>005280B7    jne        0052813D
 005280BD    cmp        dword ptr [ebx+40],0; TZInterbase6ResultSet.?f40:dword
>005280C1    jne        0052813D
 005280C3    lea        eax,[ebp-8]
 005280C6    mov        edx,dword ptr [ebx+54]; TZInterbase6ResultSet.?f54:IZInterbase6Connection
 005280C9    call       @IntfCopy
 005280CE    mov        eax,dword ptr [ebp-8]
 005280D1    mov        edx,dword ptr [eax]
 005280D3    call       dword ptr [edx+9C]
 005280D9    push       eax
 005280DA    mov        eax,dword ptr [ebx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 005280DD    mov        edx,dword ptr [eax]
 005280DF    call       dword ptr [edx+18]
 005280E2    push       eax
 005280E3    lea        edx,[ebp-60]
 005280E6    mov        eax,dword ptr [ebp-8]
 005280E9    mov        ecx,dword ptr [eax]
 005280EB    call       dword ptr [ecx+0A0]
 005280F1    mov        eax,dword ptr [ebp-60]
 005280F4    lea        ecx,[ebx+48]; TZInterbase6ResultSet.?f48:dword
 005280F7    lea        edx,[ebp-5C]
 005280FA    mov        esi,dword ptr [eax]
 005280FC    call       dword ptr [esi+84]
 00528102    mov        dword ptr [ebx+40],eax; TZInterbase6ResultSet.?f40:dword
 00528105    push       0
 00528107    lea        edx,[ebp-64]
 0052810A    mov        eax,dword ptr [ebp-8]
 0052810D    mov        ecx,dword ptr [eax]
 0052810F    call       dword ptr [ecx+0A0]
 00528115    mov        eax,dword ptr [ebp-64]
 00528118    mov        cl,4
 0052811A    lea        edx,[ebp-5C]
 0052811D    call       00532ED0
 00528122    cmp        dword ptr [ebx+40],0; TZInterbase6ResultSet.?f40:dword
>00528126    jne        0052813D
 00528128    add        dword ptr [ebx+10],1; TZInterbase6ResultSet.?f10:dword
>0052812C    jno        00528133
 0052812E    call       @IntOver
 00528133    mov        eax,dword ptr [ebx+10]; TZInterbase6ResultSet.?f10:dword
 00528136    mov        dword ptr [ebx+14],eax; TZInterbase6ResultSet.?f14:Integer
 00528139    mov        byte ptr [ebp-1],1
 0052813D    xor        eax,eax
 0052813F    pop        edx
 00528140    pop        ecx
 00528141    pop        ecx
 00528142    mov        dword ptr fs:[eax],edx
 00528145    push       52816D
 0052814A    lea        eax,[ebp-64]
 0052814D    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00528153    mov        ecx,2
 00528158    call       @FinalizeArray
 0052815D    lea        eax,[ebp-8]
 00528160    call       @IntfClear
 00528165    ret
<00528166    jmp        @HandleFinally
<0052816B    jmp        0052814A
 0052816D    mov        al,byte ptr [ebp-1]
 00528170    pop        esi
 00528171    pop        ebx
 00528172    mov        esp,ebp
 00528174    pop        ebp
 00528175    ret
*}
//end;

//00528178
procedure sub_00528178;
begin
{*
 00528178    push       ebp
 00528179    mov        ebp,esp
 0052817B    mov        ecx,5
 00528180    push       0
 00528182    push       0
 00528184    dec        ecx
<00528185    jne        00528180
 00528187    push       ecx
 00528188    push       ebx
 00528189    push       esi
 0052818A    push       edi
 0052818B    mov        dword ptr [ebp-4],eax
 0052818E    xor        eax,eax
 00528190    push       ebp
 00528191    push       5283C2
 00528196    push       dword ptr fs:[eax]
 00528199    mov        dword ptr fs:[eax],esp
 0052819C    mov        eax,dword ptr [ebp-4]
 0052819F    cmp        dword ptr [eax+48],0; TZInterbase6ResultSet.?f48:dword
>005281A3    jne        005281C6
 005281A5    lea        edx,[ebp-14]
 005281A8    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 005281AD    call       LoadResString
 005281B2    mov        ecx,dword ptr [ebp-14]
 005281B5    mov        dl,1
 005281B7    mov        eax,[004C6D20]; EZSQLException
 005281BC    call       EZSQLException.Create; EZSQLException.Create
 005281C1    call       @RaiseExcept
 005281C6    mov        eax,dword ptr [ebp-4]
 005281C9    mov        eax,dword ptr [eax+28]; TZInterbase6ResultSet.?f28:dword
 005281CC    mov        edx,dword ptr [eax]
 005281CE    call       dword ptr [edx+8]
 005281D1    mov        eax,dword ptr [ebp-4]
 005281D4    mov        eax,dword ptr [eax+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 005281D7    mov        edx,dword ptr [eax]
 005281D9    call       dword ptr [edx+24]
 005281DC    sub        eax,1
>005281DF    jno        005281E6
 005281E1    call       @IntOver
 005281E6    test       eax,eax
>005281E8    jl         00528397
 005281EE    inc        eax
 005281EF    mov        dword ptr [ebp-0C],eax
 005281F2    xor        esi,esi
 005281F4    mov        dl,1
 005281F6    mov        eax,[004D5F00]; TZColumnInfo
 005281FB    call       TZColumnInfo.Create; TZColumnInfo.Create
 00528200    mov        ebx,eax
 00528202    lea        eax,[ebp-10]
 00528205    mov        edx,dword ptr [ebp-4]
 00528208    mov        edx,dword ptr [edx+4C]; TZInterbase6ResultSet.?f4C:IZResultSQLDA
 0052820B    call       @IntfCopy
 00528210    mov        edx,esi
 00528212    cmp        edx,0FFFF
>00528218    jbe        0052821F
 0052821A    call       @BoundErr
 0052821F    mov        eax,dword ptr [ebp-10]
 00528222    mov        ecx,dword ptr [eax]
 00528224    call       dword ptr [ecx+40]
 00528227    mov        byte ptr [ebp-5],al
 0052822A    lea        ecx,[ebp-18]
 0052822D    mov        edx,esi
 0052822F    cmp        edx,0FFFF
>00528235    jbe        0052823C
 00528237    call       @BoundErr
 0052823C    mov        eax,dword ptr [ebp-10]
 0052823F    mov        edi,dword ptr [eax]
 00528241    call       dword ptr [edi+28]
 00528244    mov        edx,dword ptr [ebp-18]
 00528247    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 0052824A    call       @LStrAsg
 0052824F    lea        ecx,[ebp-1C]
 00528252    mov        edx,esi
 00528254    cmp        edx,0FFFF
>0052825A    jbe        00528261
 0052825C    call       @BoundErr
 00528261    mov        eax,dword ptr [ebp-10]
 00528264    mov        edi,dword ptr [eax]
 00528266    call       dword ptr [edi+2C]
 00528269    mov        edx,dword ptr [ebp-1C]
 0052826C    lea        eax,[ebx+24]; TZColumnInfo.?f24:String
 0052826F    call       @LStrAsg
 00528274    lea        ecx,[ebp-20]
 00528277    mov        edx,esi
 00528279    cmp        edx,0FFFF
>0052827F    jbe        00528286
 00528281    call       @BoundErr
 00528286    mov        eax,dword ptr [ebp-10]
 00528289    mov        edi,dword ptr [eax]
 0052828B    call       dword ptr [edi+34]
 0052828E    mov        edx,dword ptr [ebp-20]
 00528291    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 00528294    call       @LStrAsg
 00528299    mov        al,byte ptr [ebp-5]
 0052829C    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 0052829F    mov        al,byte ptr [ebp-5]
 005282A2    add        al,0F7
 005282A4    sub        al,2
>005282A6    jae        005282C5
 005282A8    mov        edx,esi
 005282AA    cmp        edx,0FFFF
>005282B0    jbe        005282B7
 005282B2    call       @BoundErr
 005282B7    mov        eax,dword ptr [ebp-10]
 005282BA    mov        ecx,dword ptr [eax]
 005282BC    call       dword ptr [ecx+44]
 005282BF    movsx      eax,ax
 005282C2    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 005282C5    lea        ecx,[ebp-24]
 005282C8    mov        edx,esi
 005282CA    cmp        edx,0FFFF
>005282D0    jbe        005282D7
 005282D2    call       @BoundErr
 005282D7    mov        eax,dword ptr [ebp-10]
 005282DA    mov        edi,dword ptr [eax]
 005282DC    call       dword ptr [edi+2C]
 005282DF    cmp        dword ptr [ebp-24],0
>005282E3    je         00528338
 005282E5    lea        ecx,[ebp-28]
 005282E8    mov        edx,esi
 005282EA    cmp        edx,0FFFF
>005282F0    jbe        005282F7
 005282F2    call       @BoundErr
 005282F7    mov        eax,dword ptr [ebp-10]
 005282FA    mov        edi,dword ptr [eax]
 005282FC    call       dword ptr [edi+28]
 005282FF    cmp        dword ptr [ebp-28],0
>00528303    je         00528338
 00528305    lea        ecx,[ebp-2C]
 00528308    mov        edx,esi
 0052830A    cmp        edx,0FFFF
>00528310    jbe        00528317
 00528312    call       @BoundErr
 00528317    mov        eax,dword ptr [ebp-10]
 0052831A    mov        edi,dword ptr [eax]
 0052831C    call       dword ptr [edi+28]
 0052831F    mov        eax,dword ptr [ebp-2C]
 00528322    mov        edx,5283D8; 'RDB$DB_KEY'
 00528327    call       @LStrCmp
>0052832C    je         00528338
 0052832E    cmp        byte ptr [ebp-5],0
>00528332    je         00528338
 00528334    xor        eax,eax
>00528336    jmp        0052833A
 00528338    mov        al,1
 0052833A    mov        byte ptr [ebx+2D],al; TZColumnInfo.?f2D:byte
 0052833D    mov        edx,esi
 0052833F    cmp        edx,0FFFF
>00528345    jbe        0052834C
 00528347    call       @BoundErr
 0052834C    mov        eax,dword ptr [ebp-10]
 0052834F    mov        ecx,dword ptr [eax]
 00528351    call       dword ptr [ecx+20]
 00528354    test       al,al
>00528356    je         0052835E
 00528358    mov        byte ptr [ebx+8],1; TZColumnInfo.?f8:byte
>0052835C    jmp        00528362
 0052835E    mov        byte ptr [ebx+8],0; TZColumnInfo.?f8:byte
 00528362    mov        edx,esi
 00528364    cmp        edx,0FFFF
>0052836A    jbe        00528371
 0052836C    call       @BoundErr
 00528371    mov        eax,dword ptr [ebp-10]
 00528374    mov        ecx,dword ptr [eax]
 00528376    call       dword ptr [ecx+3C]
 00528379    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 0052837C    mov        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
 00528380    mov        eax,dword ptr [ebp-4]
 00528383    mov        eax,dword ptr [eax+28]; TZInterbase6ResultSet.?f28:dword
 00528386    mov        edx,ebx
 00528388    call       00433178
 0052838D    inc        esi
 0052838E    dec        dword ptr [ebp-0C]
<00528391    jne        005281F4
 00528397    mov        eax,dword ptr [ebp-4]
 0052839A    call       004D4580
 0052839F    xor        eax,eax
 005283A1    pop        edx
 005283A2    pop        ecx
 005283A3    pop        ecx
 005283A4    mov        dword ptr fs:[eax],edx
 005283A7    push       5283C9
 005283AC    lea        eax,[ebp-2C]
 005283AF    mov        edx,7
 005283B4    call       @LStrArrayClr
 005283B9    lea        eax,[ebp-10]
 005283BC    call       @IntfClear
 005283C1    ret
<005283C2    jmp        @HandleFinally
<005283C7    jmp        005283AC
 005283C9    pop        edi
 005283CA    pop        esi
 005283CB    pop        ebx
 005283CC    mov        esp,ebp
 005283CE    pop        ebp
 005283CF    ret
*}
end;

//005283E4
//procedure sub_005283E4(?:?);
//begin
{*
 005283E4    push       ebp
 005283E5    mov        ebp,esp
 005283E7    push       ebx
 005283E8    push       esi
 005283E9    mov        esi,edx
 005283EB    mov        ebx,eax
 005283ED    mov        eax,esi
 005283EF    mov        edx,dword ptr [ebx+44]; TZInterbase6ResultSet.?f44:String
 005283F2    call       @LStrAsg
 005283F7    pop        esi
 005283F8    pop        ebx
 005283F9    pop        ebp
 005283FA    ret
*}
//end;

//005283FC
//procedure sub_005283FC(?:?);
//begin
{*
 005283FC    push       ebp
 005283FD    mov        ebp,esp
 005283FF    push       ebx
 00528400    push       esi
 00528401    mov        esi,edx
 00528403    mov        ebx,eax
 00528405    lea        eax,[ebx+1C]; TZInterbase6Blob.?f1C:dword
 00528408    push       eax
 00528409    mov        ecx,dword ptr [ebx+28]; TZInterbase6Blob.?f28:IZInterbase6Connection
 0052840C    mov        dl,1
 0052840E    mov        eax,[00527860]; TZInterbase6Blob
 00528413    call       TZInterbase6Blob.Create; TZInterbase6Blob.Create
 00528418    mov        edx,eax
 0052841A    test       edx,edx
>0052841C    je         00528421
 0052841E    sub        edx,0FFFFFFE8
 00528421    mov        eax,esi
 00528423    call       @IntfCopy
 00528428    pop        esi
 00528429    pop        ebx
 0052842A    pop        ebp
 0052842B    ret
*}
//end;

//0052842C
//constructor TZInterbase6Blob.Create(?:TZInterbase6Blob; _Dv__:Boolean; ?:?);
//begin
{*
 0052842C    push       ebp
 0052842D    mov        ebp,esp
 0052842F    push       ecx
 00528430    push       ebx
 00528431    push       esi
 00528432    test       dl,dl
>00528434    je         0052843E
 00528436    add        esp,0FFFFFFF0
 00528439    call       @ClassCreate
 0052843E    mov        dword ptr [ebp-4],ecx
 00528441    mov        ebx,edx
 00528443    mov        esi,eax
 00528445    mov        eax,dword ptr [ebp-4]
 00528448    call       @IntfAddRef
 0052844D    xor        eax,eax
 0052844F    push       ebp
 00528450    push       52848E
 00528455    push       dword ptr fs:[eax]
 00528458    mov        dword ptr fs:[eax],esp
 0052845B    mov        eax,dword ptr [ebp+8]
 0052845E    mov        edx,dword ptr [eax]
 00528460    mov        dword ptr [esi+1C],edx; TZInterbase6Blob.?f1C:dword
 00528463    mov        edx,dword ptr [eax+4]
 00528466    mov        dword ptr [esi+20],edx; TZInterbase6Blob.?f20:dword
 00528469    mov        byte ptr [esi+24],0; TZInterbase6Blob.?f24:byte
 0052846D    lea        eax,[esi+28]; TZInterbase6Blob.?f28:IZInterbase6Connection
 00528470    mov        edx,dword ptr [ebp-4]
 00528473    call       @IntfCopy
 00528478    xor        eax,eax
 0052847A    pop        edx
 0052847B    pop        ecx
 0052847C    pop        ecx
 0052847D    mov        dword ptr fs:[eax],edx
 00528480    push       528495
 00528485    lea        eax,[ebp-4]
 00528488    call       @IntfClear
 0052848D    ret
<0052848E    jmp        @HandleFinally
<00528493    jmp        00528485
 00528495    mov        eax,esi
 00528497    test       bl,bl
>00528499    je         005284AA
 0052849B    call       @AfterConstruction
 005284A0    pop        dword ptr fs:[0]
 005284A7    add        esp,0C
 005284AA    mov        eax,esi
 005284AC    pop        esi
 005284AD    pop        ebx
 005284AE    pop        ecx
 005284AF    pop        ebp
 005284B0    ret        4
*}
//end;

//005284B4
//procedure sub_005284B4(?:?);
//begin
{*
 005284B4    push       ebp
 005284B5    mov        ebp,esp
 005284B7    push       ebx
 005284B8    push       esi
 005284B9    mov        esi,edx
 005284BB    mov        ebx,eax
 005284BD    mov        eax,ebx
 005284BF    call       00528544
 005284C4    mov        edx,esi
 005284C6    mov        eax,ebx
 005284C8    call       004D5C64
 005284CD    pop        esi
 005284CE    pop        ebx
 005284CF    pop        ebp
 005284D0    ret
*}
//end;

//005284D4
procedure sub_005284D4;
begin
{*
 005284D4    push       ebp
 005284D5    mov        ebp,esp
 005284D7    push       ebx
 005284D8    mov        ebx,eax
 005284DA    mov        eax,ebx
 005284DC    call       00528544
 005284E1    mov        eax,ebx
 005284E3    call       004D5E0C
 005284E8    pop        ebx
 005284E9    pop        ebp
 005284EA    ret
*}
end;

//005284EC
//procedure sub_005284EC(?:?);
//begin
{*
 005284EC    push       ebp
 005284ED    mov        ebp,esp
 005284EF    push       ebx
 005284F0    push       esi
 005284F1    mov        esi,edx
 005284F3    mov        ebx,eax
 005284F5    mov        eax,ebx
 005284F7    call       00528544
 005284FC    mov        edx,esi
 005284FE    mov        eax,ebx
 00528500    call       004D5B4C
 00528505    pop        esi
 00528506    pop        ebx
 00528507    pop        ebp
 00528508    ret
*}
//end;

//0052850C
//procedure sub_0052850C(?:?);
//begin
{*
 0052850C    push       ebp
 0052850D    mov        ebp,esp
 0052850F    push       ebx
 00528510    push       esi
 00528511    mov        esi,edx
 00528513    mov        ebx,eax
 00528515    mov        eax,ebx
 00528517    call       00528544
 0052851C    mov        edx,esi
 0052851E    mov        eax,ebx
 00528520    call       004D5BC4
 00528525    pop        esi
 00528526    pop        ebx
 00528527    pop        ebp
 00528528    ret
*}
//end;

//0052852C
procedure sub_0052852C;
begin
{*
 0052852C    push       ebp
 0052852D    mov        ebp,esp
 0052852F    push       ebx
 00528530    mov        ebx,eax
 00528532    mov        eax,ebx
 00528534    call       00528544
 00528539    mov        eax,ebx
 0052853B    call       004D5B3C
 00528540    pop        ebx
 00528541    pop        ebp
 00528542    ret
*}
end;

//00528544
//procedure sub_00528544(?:TZInterbase6Blob);
//begin
{*
 00528544    push       ebp
 00528545    mov        ebp,esp
 00528547    add        esp,0FFFFFFF0
 0052854A    push       ebx
 0052854B    xor        edx,edx
 0052854D    mov        dword ptr [ebp-10],edx
 00528550    mov        dword ptr [ebp-0C],edx
 00528553    mov        ebx,eax
 00528555    xor        eax,eax
 00528557    push       ebp
 00528558    push       5285E0
 0052855D    push       dword ptr fs:[eax]
 00528560    mov        dword ptr fs:[eax],esp
 00528563    cmp        byte ptr [ebx+24],0; TZInterbase6Blob.?f24:byte
>00528567    jne        005285C2
 00528569    lea        eax,[ebp-0C]
 0052856C    mov        edx,dword ptr [ebx+28]; TZInterbase6Blob.?f28:IZInterbase6Connection
 0052856F    call       @IntfCopy
 00528574    lea        eax,[ebx+1C]; TZInterbase6Blob.?f1C:dword
 00528577    push       eax
 00528578    lea        eax,[ebp-4]
 0052857B    push       eax
 0052857C    lea        eax,[ebp-8]
 0052857F    push       eax
 00528580    lea        edx,[ebp-10]
 00528583    mov        eax,dword ptr [ebp-0C]
 00528586    mov        ecx,dword ptr [eax]
 00528588    call       dword ptr [ecx+0A0]
 0052858E    mov        eax,dword ptr [ebp-10]
 00528591    push       eax
 00528592    mov        eax,dword ptr [ebp-0C]
 00528595    mov        edx,dword ptr [eax]
 00528597    call       dword ptr [edx+98]
 0052859D    push       eax
 0052859E    mov        eax,dword ptr [ebp-0C]
 005285A1    mov        edx,dword ptr [eax]
 005285A3    call       dword ptr [edx+94]
 005285A9    mov        edx,eax
 005285AB    pop        ecx
 005285AC    pop        eax
 005285AD    call       00533D98
 005285B2    mov        eax,dword ptr [ebp-4]
 005285B5    mov        dword ptr [ebx+10],eax; TZInterbase6Blob.?f10:Longint
 005285B8    mov        eax,dword ptr [ebp-8]
 005285BB    mov        dword ptr [ebx+0C],eax; TZInterbase6Blob.?fC:Pointer
 005285BE    mov        byte ptr [ebx+24],1; TZInterbase6Blob.?f24:byte
 005285C2    xor        eax,eax
 005285C4    pop        edx
 005285C5    pop        ecx
 005285C6    pop        ecx
 005285C7    mov        dword ptr fs:[eax],edx
 005285CA    push       5285E7
 005285CF    lea        eax,[ebp-10]
 005285D2    call       @IntfClear
 005285D7    lea        eax,[ebp-0C]
 005285DA    call       @IntfClear
 005285DF    ret
<005285E0    jmp        @HandleFinally
<005285E5    jmp        005285CF
 005285E7    pop        ebx
 005285E8    mov        esp,ebp
 005285EA    pop        ebp
 005285EB    ret
*}
//end;

end.