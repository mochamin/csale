{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit225;

interface

uses
  Classes, Windows, Graphics, _Unit134, Types, ZPlainAdo, _Unit139;

type
  TZAdoResultSet = class(TZAbstractResultSet)
  public
    f3C:TIntegerDynArray;//f3C
    f40:dword;//f40
    f44:byte;//f44
    f48:Recordset15;//f48
    destructor Destroy; virtual;
    procedure sub_004E294C; virtual;
    //function sub_004E33C0:?; virtual;
    procedure sub_004E33A8; virtual;
    //function sub_004E363C(?:?):?; virtual;
    //procedure sub_004E37AC(?:?; ?:?); virtual;
    //procedure sub_004E38DC(?:?; ?:?); virtual;
    //function sub_004E3A0C(?:?):?; virtual;
    //function sub_004E3B20(?:?):?; virtual;
    //function sub_004E3C34(?:?):?; virtual;
    //function sub_004E3D48(?:?):?; virtual;
    //procedure sub_004E3E5C(?:?); virtual;
    //procedure sub_004E3F8C(?:?); virtual;
    //procedure sub_004E40A8(?:?); virtual;
    //procedure sub_004E41C8(?:?); virtual;
    //procedure sub_004E42F0(?:?; ?:?); virtual;
    //procedure sub_004E441C(?:?); virtual;
    //procedure sub_004E453C(?:?); virtual;
    //procedure sub_004E465C(?:?); virtual;
    //procedure sub_004E477C(?:?; ?:?); virtual;
    procedure sub_004E35D8; virtual;
    //function sub_004E3484(?:?):?; virtual;
    //constructor Create(?:TZAdoResultSet; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZAdoCachedResolver = class(TZGenericCachedResolver)
  public
    f30:_Command;//f30
    f34:dword;//f34
    //procedure sub_004E4A8C(?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZAdoCachedResolver; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004E286C
//constructor TZAdoResultSet.Create(?:TZAdoResultSet; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004E286C    push       ebp
 004E286D    mov        ebp,esp
 004E286F    push       ecx
 004E2870    push       ebx
 004E2871    push       esi
 004E2872    test       dl,dl
>004E2874    je         004E287E
 004E2876    add        esp,0FFFFFFF0
 004E2879    call       @ClassCreate
 004E287E    mov        dword ptr [ebp-4],ecx
 004E2881    mov        ebx,edx
 004E2883    mov        esi,eax
 004E2885    mov        eax,dword ptr [ebp-4]
 004E2888    call       @IntfAddRef
 004E288D    mov        eax,dword ptr [ebp+0C]
 004E2890    call       @LStrAddRef
 004E2895    mov        eax,dword ptr [ebp+8]
 004E2898    call       @IntfAddRef
 004E289D    xor        eax,eax
 004E289F    push       ebp
 004E28A0    push       4E28F4
 004E28A5    push       dword ptr fs:[eax]
 004E28A8    mov        dword ptr fs:[eax],esp
 004E28AB    mov        eax,dword ptr [ebp+0C]
 004E28AE    push       eax
 004E28AF    push       0
 004E28B1    mov        ecx,dword ptr [ebp-4]
 004E28B4    xor        edx,edx
 004E28B6    mov        eax,esi
 004E28B8    call       004D3FC8
 004E28BD    lea        eax,[esi+48]; TZAdoResultSet.?f48:Recordset15
 004E28C0    mov        edx,dword ptr [ebp+8]
 004E28C3    call       @IntfCopy
 004E28C8    mov        eax,esi
 004E28CA    mov        edx,dword ptr [eax]
 004E28CC    call       dword ptr [edx]; TZAdoResultSet.sub_004E294C
 004E28CE    xor        eax,eax
 004E28D0    pop        edx
 004E28D1    pop        ecx
 004E28D2    pop        ecx
 004E28D3    mov        dword ptr fs:[eax],edx
 004E28D6    push       4E28FB
 004E28DB    lea        eax,[ebp-4]
 004E28DE    call       @IntfClear
 004E28E3    lea        eax,[ebp+8]
 004E28E6    call       @IntfClear
 004E28EB    lea        eax,[ebp+0C]
 004E28EE    call       @LStrClr
 004E28F3    ret
<004E28F4    jmp        @HandleFinally
<004E28F9    jmp        004E28DB
 004E28FB    mov        eax,esi
 004E28FD    test       bl,bl
>004E28FF    je         004E2910
 004E2901    call       @AfterConstruction
 004E2906    pop        dword ptr fs:[0]
 004E290D    add        esp,0C
 004E2910    mov        eax,esi
 004E2912    pop        esi
 004E2913    pop        ebx
 004E2914    pop        ecx
 004E2915    pop        ebp
 004E2916    ret        8
*}
//end;

//004E291C
destructor TZAdoResultSet.Destroy;
begin
{*
 004E291C    push       ebp
 004E291D    mov        ebp,esp
 004E291F    push       ebx
 004E2920    push       esi
 004E2921    call       @BeforeDestruction
 004E2926    mov        ebx,edx
 004E2928    mov        esi,eax
 004E292A    mov        eax,esi
 004E292C    mov        edx,dword ptr [eax]
 004E292E    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E2931    mov        edx,ebx
 004E2933    and        dl,0FC
 004E2936    mov        eax,esi
 004E2938    call       TZAbstractResultSet.Destroy
 004E293D    test       bl,bl
>004E293F    jle        004E2948
 004E2941    mov        eax,esi
 004E2943    call       @ClassDestroy
 004E2948    pop        esi
 004E2949    pop        ebx
 004E294A    pop        ebp
 004E294B    ret
*}
end;

//004E294C
procedure sub_004E294C;
begin
{*
 004E294C    push       ebp
 004E294D    mov        ebp,esp
 004E294F    mov        ecx,2D
 004E2954    push       0
 004E2956    push       0
 004E2958    dec        ecx
<004E2959    jne        004E2954
 004E295B    push       ecx
 004E295C    push       ebx
 004E295D    push       esi
 004E295E    mov        dword ptr [ebp-4],eax
 004E2961    xor        eax,eax
 004E2963    push       ebp
 004E2964    push       4E330D
 004E2969    push       dword ptr fs:[eax]
 004E296C    mov        dword ptr fs:[eax],esp
 004E296F    mov        eax,dword ptr [ebp-4]
 004E2972    cmp        dword ptr [eax+48],0; TZAdoResultSet.?f48:Recordset15
>004E2976    je         004E2996
 004E2978    lea        eax,[ebp-40]
 004E297B    push       eax
 004E297C    mov        eax,dword ptr [ebp-4]
 004E297F    mov        eax,dword ptr [eax+48]; TZAdoResultSet.?f48:Recordset15
 004E2982    push       eax
 004E2983    mov        eax,dword ptr [eax]
 004E2985    call       dword ptr [eax+0DC]
 004E298B    call       @CheckAutoResult
 004E2990    cmp        dword ptr [ebp-40],0
>004E2994    jne        004E29B7
 004E2996    lea        edx,[ebp-44]
 004E2999    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 004E299E    call       LoadResString
 004E29A3    mov        ecx,dword ptr [ebp-44]
 004E29A6    mov        dl,1
 004E29A8    mov        eax,[004C6D20]; EZSQLException
 004E29AD    call       EZSQLException.Create; EZSQLException.Create
 004E29B2    call       @RaiseExcept
 004E29B7    lea        eax,[ebp-8]
 004E29BA    call       @IntfClear
 004E29BF    push       eax
 004E29C0    lea        eax,[ebp-48]
 004E29C3    mov        edx,dword ptr [ebp-4]
 004E29C6    mov        edx,dword ptr [edx+48]; TZAdoResultSet.?f48:Recordset15
 004E29C9    mov        ecx,4E3320; ['{00000283-0000-0010-8000-00AA006D2EA4}']
 004E29CE    call       @IntfCast
 004E29D3    mov        eax,dword ptr [ebp-48]
 004E29D6    push       eax
 004E29D7    mov        eax,dword ptr [eax]
 004E29D9    call       dword ptr [eax+1C]
 004E29DC    lea        eax,[ebp-0C]
 004E29DF    call       @IntfClear
 004E29E4    push       eax
 004E29E5    push       4E3330
 004E29EA    mov        eax,dword ptr [ebp-8]
 004E29ED    push       eax
 004E29EE    mov        eax,dword ptr [eax]
 004E29F0    call       dword ptr [eax]
 004E29F2    lea        eax,[ebp-1C]
 004E29F5    push       eax
 004E29F6    lea        eax,[ebp-14]
 004E29F9    push       eax
 004E29FA    lea        eax,[ebp-10]
 004E29FD    push       eax
 004E29FE    mov        eax,dword ptr [ebp-0C]
 004E2A01    push       eax
 004E2A02    mov        eax,dword ptr [eax]
 004E2A04    call       dword ptr [eax+0C]
 004E2A07    mov        eax,dword ptr [ebp-14]
 004E2A0A    mov        dword ptr [ebp-18],eax
 004E2A0D    mov        eax,dword ptr [ebp-4]
 004E2A10    mov        eax,dword ptr [eax+28]; TZAdoResultSet.?f28:dword
 004E2A13    mov        edx,dword ptr [eax]
 004E2A15    call       dword ptr [edx+8]
 004E2A18    lea        eax,[ebp-40]
 004E2A1B    push       eax
 004E2A1C    lea        eax,[ebp-4C]
 004E2A1F    call       @IntfClear
 004E2A24    push       eax
 004E2A25    mov        eax,dword ptr [ebp-4]
 004E2A28    mov        eax,dword ptr [eax+48]; TZAdoResultSet.?f48:Recordset15
 004E2A2B    push       eax
 004E2A2C    mov        eax,dword ptr [eax]
 004E2A2E    call       dword ptr [eax+54]
 004E2A31    call       @CheckAutoResult
 004E2A36    mov        eax,dword ptr [ebp-4C]
 004E2A39    push       eax
 004E2A3A    mov        eax,dword ptr [eax]
 004E2A3C    call       dword ptr [eax+1C]
 004E2A3F    call       @CheckAutoResult
 004E2A44    mov        ebx,dword ptr [ebp-40]
 004E2A47    mov        eax,dword ptr [ebp-4]
 004E2A4A    mov        dword ptr [eax+40],ebx; TZAdoResultSet.?f40:dword
 004E2A4D    push       ebx
 004E2A4E    mov        eax,dword ptr [ebp-4]
 004E2A51    add        eax,3C; TZAdoResultSet.?f3C:TIntegerDynArray
 004E2A54    mov        ecx,1
 004E2A59    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 004E2A5F    call       @DynArraySetLength
 004E2A64    add        esp,4
 004E2A67    mov        byte ptr [ebp-29],0
 004E2A6B    mov        eax,dword ptr [ebp-4]
 004E2A6E    cmp        dword ptr [eax+40],0; TZAdoResultSet.?f40:dword
>004E2A72    jle        004E2BF3
 004E2A78    lea        eax,[ebp-40]
 004E2A7B    push       eax
 004E2A7C    lea        eax,[ebp-50]
 004E2A7F    call       @IntfClear
 004E2A84    push       eax
 004E2A85    lea        eax,[ebp-54]
 004E2A88    call       @IntfClear
 004E2A8D    push       eax
 004E2A8E    lea        eax,[ebp-64]
 004E2A91    xor        edx,edx
 004E2A93    mov        cl,1
 004E2A95    call       @OleVarFromInt
 004E2A9A    push       dword ptr [ebp-58]
 004E2A9D    push       dword ptr [ebp-5C]
 004E2AA0    push       dword ptr [ebp-60]
 004E2AA3    push       dword ptr [ebp-64]
 004E2AA6    lea        eax,[ebp-68]
 004E2AA9    call       @IntfClear
 004E2AAE    push       eax
 004E2AAF    mov        eax,dword ptr [ebp-4]
 004E2AB2    mov        eax,dword ptr [eax+48]; TZAdoResultSet.?f48:Recordset15
 004E2AB5    push       eax
 004E2AB6    mov        eax,dword ptr [eax]
 004E2AB8    call       dword ptr [eax+54]
 004E2ABB    call       @CheckAutoResult
 004E2AC0    mov        eax,dword ptr [ebp-68]
 004E2AC3    push       eax
 004E2AC4    mov        eax,dword ptr [eax]
 004E2AC6    call       dword ptr [eax+28]
 004E2AC9    call       @CheckAutoResult
 004E2ACE    mov        eax,dword ptr [ebp-54]
 004E2AD1    push       eax
 004E2AD2    mov        eax,dword ptr [eax]
 004E2AD4    call       dword ptr [eax+1C]
 004E2AD7    call       @CheckAutoResult
 004E2ADC    mov        eax,dword ptr [ebp-50]
 004E2ADF    push       eax
 004E2AE0    mov        eax,dword ptr [eax]
 004E2AE2    call       dword ptr [eax+1C]
 004E2AE5    call       @CheckAutoResult
 004E2AEA    mov        eax,dword ptr [ebp-40]
 004E2AED    sub        eax,1
>004E2AF0    jno        004E2AF7
 004E2AF2    call       @IntOver
 004E2AF7    test       eax,eax
>004E2AF9    jl         004E2BF3
 004E2AFF    inc        eax
 004E2B00    mov        dword ptr [ebp-38],eax
 004E2B03    mov        dword ptr [ebp-20],0
 004E2B0A    lea        eax,[ebp-6C]
 004E2B0D    call       @WStrClr
 004E2B12    push       eax
 004E2B13    lea        eax,[ebp-70]
 004E2B16    call       @IntfClear
 004E2B1B    push       eax
 004E2B1C    lea        eax,[ebp-80]
 004E2B1F    mov        edx,dword ptr [ebp-20]
 004E2B22    mov        cl,0FC
 004E2B24    call       @OleVarFromInt
 004E2B29    push       dword ptr [ebp-74]
 004E2B2C    push       dword ptr [ebp-78]
 004E2B2F    push       dword ptr [ebp-7C]
 004E2B32    push       dword ptr [ebp-80]
 004E2B35    lea        eax,[ebp-84]
 004E2B3B    call       @IntfClear
 004E2B40    push       eax
 004E2B41    lea        eax,[ebp-88]
 004E2B47    call       @IntfClear
 004E2B4C    push       eax
 004E2B4D    lea        eax,[ebp-98]
 004E2B53    xor        edx,edx
 004E2B55    mov        cl,1
 004E2B57    call       @OleVarFromInt
 004E2B5C    push       dword ptr [ebp-8C]
 004E2B62    push       dword ptr [ebp-90]
 004E2B68    push       dword ptr [ebp-94]
 004E2B6E    push       dword ptr [ebp-98]
 004E2B74    lea        eax,[ebp-9C]
 004E2B7A    call       @IntfClear
 004E2B7F    push       eax
 004E2B80    mov        eax,dword ptr [ebp-4]
 004E2B83    mov        eax,dword ptr [eax+48]; TZAdoResultSet.?f48:Recordset15
 004E2B86    push       eax
 004E2B87    mov        eax,dword ptr [eax]
 004E2B89    call       dword ptr [eax+54]
 004E2B8C    call       @CheckAutoResult
 004E2B91    mov        eax,dword ptr [ebp-9C]
 004E2B97    push       eax
 004E2B98    mov        eax,dword ptr [eax]
 004E2B9A    call       dword ptr [eax+28]
 004E2B9D    call       @CheckAutoResult
 004E2BA2    mov        eax,dword ptr [ebp-88]
 004E2BA8    push       eax
 004E2BA9    mov        eax,dword ptr [eax]
 004E2BAB    call       dword ptr [eax+1C]
 004E2BAE    call       @CheckAutoResult
 004E2BB3    mov        eax,dword ptr [ebp-84]
 004E2BB9    push       eax
 004E2BBA    mov        eax,dword ptr [eax]
 004E2BBC    call       dword ptr [eax+28]
 004E2BBF    call       @CheckAutoResult
 004E2BC4    mov        eax,dword ptr [ebp-70]
 004E2BC7    push       eax
 004E2BC8    mov        eax,dword ptr [eax]
 004E2BCA    call       dword ptr [eax+24]
 004E2BCD    call       @CheckAutoResult
 004E2BD2    mov        eax,dword ptr [ebp-6C]
 004E2BD5    mov        edx,4E3344; 'ISAUTOINCREMENT\0\0\0\0\0\0?????\t\0\0\0'
 004E2BDA    call       @WStrCmp
>004E2BDF    jne        004E2BE7
 004E2BE1    mov        byte ptr [ebp-29],1
>004E2BE5    jmp        004E2BF3
 004E2BE7    inc        dword ptr [ebp-20]
 004E2BEA    dec        dword ptr [ebp-38]
<004E2BED    jne        004E2B0A
 004E2BF3    cmp        dword ptr [ebp-14],0
>004E2BF7    je         004E2C0D
 004E2BF9    mov        eax,dword ptr [ebp-14]
 004E2BFC    cmp        dword ptr [eax+8],0
>004E2C00    jne        004E2C0D
 004E2C02    add        dword ptr [ebp-14],30
>004E2C06    jno        004E2C0D
 004E2C08    call       @IntOver
 004E2C0D    mov        eax,dword ptr [ebp-4]
 004E2C10    mov        eax,dword ptr [eax+40]; TZAdoResultSet.?f40:dword
 004E2C13    sub        eax,1
>004E2C16    jno        004E2C1D
 004E2C18    call       @IntOver
 004E2C1D    test       eax,eax
>004E2C1F    jl         004E311C
 004E2C25    inc        eax
 004E2C26    mov        dword ptr [ebp-38],eax
 004E2C29    mov        dword ptr [ebp-20],0
 004E2C30    mov        dl,1
 004E2C32    mov        eax,[004D5F00]; TZColumnInfo
 004E2C37    call       TZColumnInfo.Create; TZColumnInfo.Create
 004E2C3C    mov        ebx,eax
 004E2C3E    lea        eax,[ebp-30]
 004E2C41    call       @IntfClear
 004E2C46    push       eax
 004E2C47    lea        eax,[ebp-0AC]
 004E2C4D    mov        edx,dword ptr [ebp-20]
 004E2C50    mov        cl,0FC
 004E2C52    call       @OleVarFromInt
 004E2C57    push       dword ptr [ebp-0A0]
 004E2C5D    push       dword ptr [ebp-0A4]
 004E2C63    push       dword ptr [ebp-0A8]
 004E2C69    push       dword ptr [ebp-0AC]
 004E2C6F    lea        eax,[ebp-0B0]
 004E2C75    call       @IntfClear
 004E2C7A    push       eax
 004E2C7B    mov        eax,dword ptr [ebp-4]
 004E2C7E    mov        eax,dword ptr [eax+48]; TZAdoResultSet.?f48:Recordset15
 004E2C81    push       eax
 004E2C82    mov        eax,dword ptr [eax]
 004E2C84    call       dword ptr [eax+54]
 004E2C87    call       @CheckAutoResult
 004E2C8C    mov        eax,dword ptr [ebp-0B0]
 004E2C92    push       eax
 004E2C93    mov        eax,dword ptr [eax]
 004E2C95    call       dword ptr [eax+28]
 004E2C98    call       @CheckAutoResult
 004E2C9D    lea        eax,[ebp-0B4]
 004E2CA3    call       @WStrClr
 004E2CA8    push       eax
 004E2CA9    mov        eax,dword ptr [ebp-30]
 004E2CAC    push       eax
 004E2CAD    mov        eax,dword ptr [eax]
 004E2CAF    call       dword ptr [eax+2C]
 004E2CB2    call       @CheckAutoResult
 004E2CB7    mov        edx,dword ptr [ebp-0B4]
 004E2CBD    lea        eax,[ebp-24]
 004E2CC0    call       @LStrFromWStr
 004E2CC5    lea        eax,[ebp-40]
 004E2CC8    push       eax
 004E2CC9    mov        eax,dword ptr [ebp-30]
 004E2CCC    push       eax
 004E2CCD    mov        eax,dword ptr [eax]
 004E2CCF    call       dword ptr [eax+30]
 004E2CD2    call       @CheckAutoResult
 004E2CD7    mov        eax,dword ptr [ebp-40]
 004E2CDA    test       eax,eax
>004E2CDC    jns        004E2CE3
 004E2CDE    call       @BoundErr
 004E2CE3    mov        dword ptr [ebp-28],eax
 004E2CE6    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 004E2CE9    mov        edx,dword ptr [ebp-24]
 004E2CEC    call       @LStrAsg
 004E2CF1    lea        eax,[ebx+14]; TZColumnInfo.?f14:String
 004E2CF4    mov        edx,dword ptr [ebp-24]
 004E2CF7    call       @LStrAsg
 004E2CFC    mov        eax,dword ptr [ebp-28]
 004E2CFF    add        eax,8000
 004E2D04    cmp        eax,0FFFF
>004E2D09    jbe        004E2D10
 004E2D0B    call       @BoundErr
 004E2D10    add        eax,0FFFF8000
 004E2D15    call       004E1D64
 004E2D1A    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 004E2D1D    lea        eax,[ebp-40]
 004E2D20    push       eax
 004E2D21    mov        eax,dword ptr [ebp-30]
 004E2D24    push       eax
 004E2D25    mov        eax,dword ptr [eax]
 004E2D27    call       dword ptr [eax+30]
 004E2D2A    call       @CheckAutoResult
 004E2D2F    cmp        dword ptr [ebp-40],48
>004E2D33    jne        004E2D3C
 004E2D35    mov        eax,26
>004E2D3A    jmp        004E2D51
 004E2D3C    lea        eax,[ebp-40]
 004E2D3F    push       eax
 004E2D40    mov        eax,dword ptr [ebp-30]
 004E2D43    push       eax
 004E2D44    mov        eax,dword ptr [eax]
 004E2D46    call       dword ptr [eax+28]
 004E2D49    call       @CheckAutoResult
 004E2D4E    mov        eax,dword ptr [ebp-40]
 004E2D51    test       eax,eax
>004E2D53    jge        004E2D57
 004E2D55    xor        eax,eax
 004E2D57    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 004E2D5A    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 004E2D5D    cmp        dword ptr [ebp-28],6
 004E2D61    sete       al
 004E2D64    mov        byte ptr [ebx+7],al; TZColumnInfo.?f7:byte
 004E2D67    mov        byte ptr [ebx+9],0; TZColumnInfo.?f9:byte
 004E2D6B    lea        eax,[ebp-34]
 004E2D6E    call       @LStrClr
 004E2D73    lea        eax,[ebp-40]
 004E2D76    push       eax
 004E2D77    lea        eax,[ebp-0B8]
 004E2D7D    call       @IntfClear
 004E2D82    push       eax
 004E2D83    mov        eax,dword ptr [ebp-30]
 004E2D86    push       eax
 004E2D87    mov        eax,dword ptr [eax]
 004E2D89    call       dword ptr [eax+1C]
 004E2D8C    call       @CheckAutoResult
 004E2D91    mov        eax,dword ptr [ebp-0B8]
 004E2D97    push       eax
 004E2D98    mov        eax,dword ptr [eax]
 004E2D9A    call       dword ptr [eax+1C]
 004E2D9D    call       @CheckAutoResult
 004E2DA2    mov        eax,dword ptr [ebp-40]
 004E2DA5    sub        eax,1
>004E2DA8    jno        004E2DAF
 004E2DAA    call       @IntOver
 004E2DAF    test       eax,eax
>004E2DB1    jl         004E2F27
 004E2DB7    inc        eax
 004E2DB8    mov        dword ptr [ebp-3C],eax
 004E2DBB    xor        esi,esi
 004E2DBD    lea        eax,[ebp-0C0]
 004E2DC3    mov        edx,dword ptr [ebp-34]
 004E2DC6    call       @WStrFromLStr
 004E2DCB    push       dword ptr [ebp-0C0]
 004E2DD1    lea        eax,[ebp-0C4]
 004E2DD7    call       @WStrClr
 004E2DDC    push       eax
 004E2DDD    lea        eax,[ebp-0C8]
 004E2DE3    call       @IntfClear
 004E2DE8    push       eax
 004E2DE9    lea        eax,[ebp-0D8]
 004E2DEF    mov        edx,esi
 004E2DF1    mov        cl,0FC
 004E2DF3    call       @OleVarFromInt
 004E2DF8    push       dword ptr [ebp-0CC]
 004E2DFE    push       dword ptr [ebp-0D0]
 004E2E04    push       dword ptr [ebp-0D4]
 004E2E0A    push       dword ptr [ebp-0D8]
 004E2E10    lea        eax,[ebp-0DC]
 004E2E16    call       @IntfClear
 004E2E1B    push       eax
 004E2E1C    mov        eax,dword ptr [ebp-30]
 004E2E1F    push       eax
 004E2E20    mov        eax,dword ptr [eax]
 004E2E22    call       dword ptr [eax+1C]
 004E2E25    call       @CheckAutoResult
 004E2E2A    mov        eax,dword ptr [ebp-0DC]
 004E2E30    push       eax
 004E2E31    mov        eax,dword ptr [eax]
 004E2E33    call       dword ptr [eax+28]
 004E2E36    call       @CheckAutoResult
 004E2E3B    mov        eax,dword ptr [ebp-0C8]
 004E2E41    push       eax
 004E2E42    mov        eax,dword ptr [eax]
 004E2E44    call       dword ptr [eax+24]
 004E2E47    call       @CheckAutoResult
 004E2E4C    push       dword ptr [ebp-0C4]
 004E2E52    push       4E3368
 004E2E57    lea        eax,[ebp-0F4]
 004E2E5D    call       @VarClr
 004E2E62    push       eax
 004E2E63    lea        eax,[ebp-0F8]
 004E2E69    call       @IntfClear
 004E2E6E    push       eax
 004E2E6F    lea        eax,[ebp-108]
 004E2E75    mov        edx,esi
 004E2E77    mov        cl,0FC
 004E2E79    call       @OleVarFromInt
 004E2E7E    push       dword ptr [ebp-0FC]
 004E2E84    push       dword ptr [ebp-100]
 004E2E8A    push       dword ptr [ebp-104]
 004E2E90    push       dword ptr [ebp-108]
 004E2E96    lea        eax,[ebp-10C]
 004E2E9C    call       @IntfClear
 004E2EA1    push       eax
 004E2EA2    mov        eax,dword ptr [ebp-30]
 004E2EA5    push       eax
 004E2EA6    mov        eax,dword ptr [eax]
 004E2EA8    call       dword ptr [eax+1C]
 004E2EAB    call       @CheckAutoResult
 004E2EB0    mov        eax,dword ptr [ebp-10C]
 004E2EB6    push       eax
 004E2EB7    mov        eax,dword ptr [eax]
 004E2EB9    call       dword ptr [eax+28]
 004E2EBC    call       @CheckAutoResult
 004E2EC1    mov        eax,dword ptr [ebp-0F8]
 004E2EC7    push       eax
 004E2EC8    mov        eax,dword ptr [eax]
 004E2ECA    call       dword ptr [eax+1C]
 004E2ECD    call       @CheckAutoResult
 004E2ED2    lea        eax,[ebp-0F4]
 004E2ED8    lea        edx,[ebp-0E4]
 004E2EDE    call       VarToStr
 004E2EE3    mov        edx,dword ptr [ebp-0E4]
 004E2EE9    lea        eax,[ebp-0E0]
 004E2EEF    call       @WStrFromLStr
 004E2EF4    push       dword ptr [ebp-0E0]
 004E2EFA    push       4E3370
 004E2EFF    lea        eax,[ebp-0BC]
 004E2F05    mov        edx,5
 004E2F0A    call       @WStrCatN
 004E2F0F    mov        edx,dword ptr [ebp-0BC]
 004E2F15    lea        eax,[ebp-34]
 004E2F18    call       @LStrFromWStr
 004E2F1D    inc        esi
 004E2F1E    dec        dword ptr [ebp-3C]
<004E2F21    jne        004E2DBD
 004E2F27    cmp        byte ptr [ebp-29],0
>004E2F2B    je         004E2FBB
 004E2F31    lea        eax,[ebp-11C]
 004E2F37    call       @VarClr
 004E2F3C    push       eax
 004E2F3D    lea        eax,[ebp-120]
 004E2F43    call       @IntfClear
 004E2F48    push       eax
 004E2F49    lea        eax,[ebp-130]
 004E2F4F    mov        edx,4E3380; 'ISAUTOINCREMENT'
 004E2F54    call       @OleVarFromLStr
 004E2F59    push       dword ptr [ebp-124]
 004E2F5F    push       dword ptr [ebp-128]
 004E2F65    push       dword ptr [ebp-12C]
 004E2F6B    push       dword ptr [ebp-130]
 004E2F71    lea        eax,[ebp-134]
 004E2F77    call       @IntfClear
 004E2F7C    push       eax
 004E2F7D    mov        eax,dword ptr [ebp-30]
 004E2F80    push       eax
 004E2F81    mov        eax,dword ptr [eax]
 004E2F83    call       dword ptr [eax+1C]
 004E2F86    call       @CheckAutoResult
 004E2F8B    mov        eax,dword ptr [ebp-134]
 004E2F91    push       eax
 004E2F92    mov        eax,dword ptr [eax]
 004E2F94    call       dword ptr [eax+28]
 004E2F97    call       @CheckAutoResult
 004E2F9C    mov        eax,dword ptr [ebp-120]
 004E2FA2    push       eax
 004E2FA3    mov        eax,dword ptr [eax]
 004E2FA5    call       dword ptr [eax+1C]
 004E2FA8    call       @CheckAutoResult
 004E2FAD    lea        eax,[ebp-11C]
 004E2FB3    call       @VarToBool
 004E2FB8    mov        byte ptr [ebx+4],al; TZColumnInfo.?f4:LongBool
 004E2FBB    mov        eax,dword ptr [ebp-28]
 004E2FBE    add        eax,0FFFFFFFE
 004E2FC1    sub        eax,5
>004E2FC4    jb         004E2FDA
 004E2FC6    sub        eax,7
>004E2FC9    je         004E2FDA
 004E2FCB    sub        eax,2
>004E2FCE    je         004E2FDA
 004E2FD0    sub        eax,4
>004E2FD3    je         004E2FDA
 004E2FD5    sub        eax,6F
>004E2FD8    jne        004E2FDE
 004E2FDA    mov        byte ptr [ebx+9],1; TZColumnInfo.?f9:byte
 004E2FDE    mov        eax,dword ptr [ebp-14]
 004E2FE1    test       byte ptr [eax+0C],0C
>004E2FE5    je         004E308D
 004E2FEB    lea        eax,[ebp-144]
 004E2FF1    call       @VarClr
 004E2FF6    push       eax
 004E2FF7    lea        eax,[ebp-148]
 004E2FFD    call       @IntfClear
 004E3002    push       eax
 004E3003    lea        eax,[ebp-158]
 004E3009    mov        edx,4E3398; 'BASECOLUMNNAME'
 004E300E    call       @OleVarFromLStr
 004E3013    push       dword ptr [ebp-14C]
 004E3019    push       dword ptr [ebp-150]
 004E301F    push       dword ptr [ebp-154]
 004E3025    push       dword ptr [ebp-158]
 004E302B    lea        eax,[ebp-15C]
 004E3031    call       @IntfClear
 004E3036    push       eax
 004E3037    mov        eax,dword ptr [ebp-30]
 004E303A    push       eax
 004E303B    mov        eax,dword ptr [eax]
 004E303D    call       dword ptr [eax+1C]
 004E3040    call       @CheckAutoResult
 004E3045    mov        eax,dword ptr [ebp-15C]
 004E304B    push       eax
 004E304C    mov        eax,dword ptr [eax]
 004E304E    call       dword ptr [eax+28]
 004E3051    call       @CheckAutoResult
 004E3056    mov        eax,dword ptr [ebp-148]
 004E305C    push       eax
 004E305D    mov        eax,dword ptr [eax]
 004E305F    call       dword ptr [eax+1C]
 004E3062    call       @CheckAutoResult
 004E3067    lea        eax,[ebp-144]
 004E306D    push       eax
 004E306E    lea        eax,[ebp-16C]
 004E3074    call       Null
 004E3079    lea        edx,[ebp-16C]
 004E307F    pop        eax
 004E3080    call       @VarCmpNE
>004E3085    je         004E308D
 004E3087    cmp        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
>004E308B    je         004E3091
 004E308D    xor        eax,eax
>004E308F    jmp        004E3093
 004E3091    mov        al,1
 004E3093    mov        byte ptr [ebx+2E],al; TZColumnInfo.?f2E:byte
 004E3096    mov        eax,dword ptr [ebp-14]
 004E3099    test       byte ptr [eax+0C],0C
>004E309D    je         004E30A9
 004E309F    cmp        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
>004E30A3    jne        004E30A9
 004E30A5    xor        eax,eax
>004E30A7    jmp        004E30AB
 004E30A9    mov        al,1
 004E30AB    mov        byte ptr [ebx+2D],al; TZColumnInfo.?f2D:byte
 004E30AE    mov        eax,dword ptr [ebp-14]
 004E30B1    test       byte ptr [eax+0C],80
 004E30B5    sete       al
 004E30B8    mov        byte ptr [ebx+6],al; TZColumnInfo.?f6:byte
 004E30BB    mov        eax,dword ptr [ebp-14]
 004E30BE    test       byte ptr [eax+0C],80
>004E30C2    je         004E30DB
 004E30C4    mov        al,byte ptr [ebx+2C]; TZColumnInfo.?f2C:byte
 004E30C7    sub        al,9
>004E30C9    je         004E30D1
 004E30CB    dec        al
>004E30CD    je         004E30D7
>004E30CF    jmp        004E30DB
 004E30D1    mov        byte ptr [ebx+2C],0F; TZColumnInfo.?f2C:byte
>004E30D5    jmp        004E30DB
 004E30D7    mov        byte ptr [ebx+2C],10; TZColumnInfo.?f2C:byte
 004E30DB    mov        eax,dword ptr [ebp-4]
 004E30DE    mov        eax,dword ptr [eax+28]; TZAdoResultSet.?f28:dword
 004E30E1    mov        edx,ebx
 004E30E3    call       00433178
 004E30E8    mov        eax,dword ptr [ebp-20]
 004E30EB    mov        edx,dword ptr [ebp-4]
 004E30EE    mov        edx,dword ptr [edx+3C]; TZAdoResultSet.?f3C:TIntegerDynArray
 004E30F1    test       edx,edx
>004E30F3    je         004E30FA
 004E30F5    cmp        eax,dword ptr [edx-4]
>004E30F8    jb         004E30FF
 004E30FA    call       @BoundErr
 004E30FF    mov        ecx,dword ptr [ebp-28]
 004E3102    mov        dword ptr [edx+eax*4],ecx
 004E3105    add        dword ptr [ebp-14],30
>004E3109    jno        004E3110
 004E310B    call       @IntOver
 004E3110    inc        dword ptr [ebp-20]
 004E3113    dec        dword ptr [ebp-38]
<004E3116    jne        004E2C30
 004E311C    cmp        dword ptr [ebp-1C],0
>004E3120    je         004E3133
 004E3122    mov        eax,dword ptr [ebp-1C]
 004E3125    push       eax
 004E3126    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004E312B    mov        eax,dword ptr [eax]
 004E312D    push       eax
 004E312E    mov        eax,dword ptr [eax]
 004E3130    call       dword ptr [eax+14]
 004E3133    cmp        dword ptr [ebp-18],0
>004E3137    je         004E314A
 004E3139    mov        eax,dword ptr [ebp-18]
 004E313C    push       eax
 004E313D    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004E3142    mov        eax,dword ptr [eax]
 004E3144    push       eax
 004E3145    mov        eax,dword ptr [eax]
 004E3147    call       dword ptr [eax+14]
 004E314A    mov        eax,dword ptr [ebp-4]
 004E314D    mov        byte ptr [eax+44],1; TZAdoResultSet.?f44:byte
 004E3151    mov        eax,dword ptr [ebp-4]
 004E3154    call       004D4580
 004E3159    xor        eax,eax
 004E315B    pop        edx
 004E315C    pop        ecx
 004E315D    pop        ecx
 004E315E    mov        dword ptr fs:[eax],edx
 004E3161    push       4E3317
 004E3166    lea        eax,[ebp-16C]
 004E316C    call       @VarClr
 004E3171    lea        eax,[ebp-15C]
 004E3177    call       @IntfClear
 004E317C    lea        eax,[ebp-158]
 004E3182    call       @VarClr
 004E3187    lea        eax,[ebp-148]
 004E318D    call       @IntfClear
 004E3192    lea        eax,[ebp-144]
 004E3198    call       @VarClr
 004E319D    lea        eax,[ebp-134]
 004E31A3    call       @IntfClear
 004E31A8    lea        eax,[ebp-130]
 004E31AE    call       @VarClr
 004E31B3    lea        eax,[ebp-120]
 004E31B9    call       @IntfClear
 004E31BE    lea        eax,[ebp-11C]
 004E31C4    call       @VarClr
 004E31C9    lea        eax,[ebp-10C]
 004E31CF    call       @IntfClear
 004E31D4    lea        eax,[ebp-108]
 004E31DA    call       @VarClr
 004E31DF    lea        eax,[ebp-0F8]
 004E31E5    call       @IntfClear
 004E31EA    lea        eax,[ebp-0F4]
 004E31F0    call       @VarClr
 004E31F5    lea        eax,[ebp-0E4]
 004E31FB    call       @LStrClr
 004E3200    lea        eax,[ebp-0E0]
 004E3206    call       @WStrClr
 004E320B    lea        eax,[ebp-0DC]
 004E3211    call       @IntfClear
 004E3216    lea        eax,[ebp-0D8]
 004E321C    call       @VarClr
 004E3221    lea        eax,[ebp-0C8]
 004E3227    call       @IntfClear
 004E322C    lea        eax,[ebp-0C4]
 004E3232    mov        edx,3
 004E3237    call       @WStrArrayClr
 004E323C    lea        eax,[ebp-0B8]
 004E3242    call       @IntfClear
 004E3247    lea        eax,[ebp-0B4]
 004E324D    call       @WStrClr
 004E3252    lea        eax,[ebp-0B0]
 004E3258    call       @IntfClear
 004E325D    lea        eax,[ebp-0AC]
 004E3263    call       @VarClr
 004E3268    lea        eax,[ebp-9C]
 004E326E    call       @IntfClear
 004E3273    lea        eax,[ebp-98]
 004E3279    call       @VarClr
 004E327E    lea        eax,[ebp-88]
 004E3284    call       @IntfClear
 004E3289    lea        eax,[ebp-84]
 004E328F    call       @IntfClear
 004E3294    lea        eax,[ebp-80]
 004E3297    call       @VarClr
 004E329C    lea        eax,[ebp-70]
 004E329F    call       @IntfClear
 004E32A4    lea        eax,[ebp-6C]
 004E32A7    call       @WStrClr
 004E32AC    lea        eax,[ebp-68]
 004E32AF    call       @IntfClear
 004E32B4    lea        eax,[ebp-64]
 004E32B7    call       @VarClr
 004E32BC    lea        eax,[ebp-54]
 004E32BF    call       @IntfClear
 004E32C4    lea        eax,[ebp-50]
 004E32C7    call       @IntfClear
 004E32CC    lea        eax,[ebp-4C]
 004E32CF    call       @IntfClear
 004E32D4    lea        eax,[ebp-48]
 004E32D7    call       @IntfClear
 004E32DC    lea        eax,[ebp-44]
 004E32DF    call       @LStrClr
 004E32E4    lea        eax,[ebp-34]
 004E32E7    call       @LStrClr
 004E32EC    lea        eax,[ebp-30]
 004E32EF    call       @IntfClear
 004E32F4    lea        eax,[ebp-24]
 004E32F7    call       @LStrClr
 004E32FC    lea        eax,[ebp-0C]
 004E32FF    call       @IntfClear
 004E3304    lea        eax,[ebp-8]
 004E3307    call       @IntfClear
 004E330C    ret
<004E330D    jmp        @HandleFinally
<004E3312    jmp        004E3166
 004E3317    pop        esi
 004E3318    pop        ebx
 004E3319    mov        esp,ebp
 004E331B    pop        ebp
 004E331C    ret
*}
end;

//004E33A8
procedure sub_004E33A8;
begin
{*
 004E33A8    push       ebp
 004E33A9    mov        ebp,esp
 004E33AB    push       ebx
 004E33AC    mov        ebx,eax
 004E33AE    lea        eax,[ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E33B1    call       @IntfClear
 004E33B6    mov        eax,ebx
 004E33B8    call       004D4588
 004E33BD    pop        ebx
 004E33BE    pop        ebp
 004E33BF    ret
*}
end;

//004E33C0
//function sub_004E33C0:?;
//begin
{*
 004E33C0    push       ebp
 004E33C1    mov        ebp,esp
 004E33C3    add        esp,0FFFFFFF8
 004E33C6    push       ebx
 004E33C7    push       esi
 004E33C8    mov        esi,eax
 004E33CA    xor        ebx,ebx
 004E33CC    lea        eax,[ebp-4]
 004E33CF    push       eax
 004E33D0    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E33D3    push       eax
 004E33D4    mov        eax,dword ptr [eax]
 004E33D6    call       dword ptr [eax+34]
 004E33D9    call       @CheckAutoResult
 004E33DE    cmp        word ptr [ebp-4],0
>004E33E3    je         004E33FE
 004E33E5    lea        eax,[ebp-8]
 004E33E8    push       eax
 004E33E9    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E33EC    push       eax
 004E33ED    mov        eax,dword ptr [eax]
 004E33EF    call       dword ptr [eax+50]
 004E33F2    call       @CheckAutoResult
 004E33F7    cmp        word ptr [ebp-8],0
>004E33FC    jne        004E347C
 004E33FE    lea        eax,[ebp-4]
 004E3401    push       eax
 004E3402    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3405    push       eax
 004E3406    mov        eax,dword ptr [eax]
 004E3408    call       dword ptr [eax+34]
 004E340B    call       @CheckAutoResult
 004E3410    cmp        word ptr [ebp-4],0
>004E3415    je         004E342A
 004E3417    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E341A    push       eax
 004E341B    mov        eax,dword ptr [eax]
 004E341D    call       dword ptr [eax+98]
 004E3423    call       @CheckAutoResult
>004E3428    jmp        004E345A
 004E342A    lea        eax,[ebp-4]
 004E342D    push       eax
 004E342E    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3431    push       eax
 004E3432    mov        eax,dword ptr [eax]
 004E3434    call       dword ptr [eax+50]
 004E3437    call       @CheckAutoResult
 004E343C    cmp        word ptr [ebp-4],0
>004E3441    jne        004E345A
 004E3443    cmp        byte ptr [esi+44],0; TZAdoResultSet.?f44:byte
>004E3447    jne        004E345A
 004E3449    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E344C    push       eax
 004E344D    mov        eax,dword ptr [eax]
 004E344F    call       dword ptr [eax+90]
 004E3455    call       @CheckAutoResult
 004E345A    mov        byte ptr [esi+44],0; TZAdoResultSet.?f44:byte
 004E345E    lea        eax,[ebp-4]
 004E3461    push       eax
 004E3462    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3465    push       eax
 004E3466    mov        eax,dword ptr [eax]
 004E3468    call       dword ptr [eax+50]
 004E346B    call       @CheckAutoResult
 004E3470    mov        bx,word ptr [ebp-4]
 004E3474    cmp        bx,1
 004E3478    sbb        ebx,ebx
 004E347A    neg        ebx
 004E347C    mov        eax,ebx
 004E347E    pop        esi
 004E347F    pop        ebx
 004E3480    pop        ecx
 004E3481    pop        ecx
 004E3482    pop        ebp
 004E3483    ret
*}
//end;

//004E3484
//function sub_004E3484(?:?):?;
//begin
{*
 004E3484    push       ebp
 004E3485    mov        ebp,esp
 004E3487    mov        ecx,5
 004E348C    push       0
 004E348E    push       0
 004E3490    dec        ecx
<004E3491    jne        004E348C
 004E3493    push       ebx
 004E3494    push       esi
 004E3495    mov        esi,edx
 004E3497    mov        ebx,eax
 004E3499    xor        eax,eax
 004E349B    push       ebp
 004E349C    push       4E35C7
 004E34A1    push       dword ptr fs:[eax]
 004E34A4    mov        dword ptr fs:[eax],esp
 004E34A7    lea        eax,[ebp-4]
 004E34AA    push       eax
 004E34AB    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E34AE    push       eax
 004E34AF    mov        eax,dword ptr [eax]
 004E34B1    call       dword ptr [eax+50]
 004E34B4    call       @CheckAutoResult
 004E34B9    cmp        word ptr [ebp-4],0
>004E34BE    jne        004E34D9
 004E34C0    lea        eax,[ebp-8]
 004E34C3    push       eax
 004E34C4    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E34C7    push       eax
 004E34C8    mov        eax,dword ptr [eax]
 004E34CA    call       dword ptr [eax+34]
 004E34CD    call       @CheckAutoResult
 004E34D2    cmp        word ptr [ebp-8],0
>004E34D7    je         004E34EA
 004E34D9    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E34DC    push       eax
 004E34DD    mov        eax,dword ptr [eax]
 004E34DF    call       dword ptr [eax+98]
 004E34E5    call       @CheckAutoResult
 004E34EA    test       esi,esi
>004E34EC    jle        004E3527
 004E34EE    lea        eax,[ebp-18]
 004E34F1    mov        edx,1
 004E34F6    mov        cl,1
 004E34F8    call       @OleVarFromInt
 004E34FD    push       dword ptr [ebp-0C]
 004E3500    push       dword ptr [ebp-10]
 004E3503    push       dword ptr [ebp-14]
 004E3506    push       dword ptr [ebp-18]
 004E3509    sub        esi,1
>004E350C    jno        004E3513
 004E350E    call       @IntOver
 004E3513    push       esi
 004E3514    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3517    push       eax
 004E3518    mov        eax,dword ptr [eax]
 004E351A    call       dword ptr [eax+8C]
 004E3520    call       @CheckAutoResult
>004E3525    jmp        004E356C
 004E3527    lea        eax,[ebp-28]
 004E352A    mov        edx,2
 004E352F    mov        cl,1
 004E3531    call       @OleVarFromInt
 004E3536    push       dword ptr [ebp-1C]
 004E3539    push       dword ptr [ebp-20]
 004E353C    push       dword ptr [ebp-24]
 004E353F    push       dword ptr [ebp-28]
 004E3542    mov        eax,esi
 004E3544    cdq
 004E3545    xor        eax,edx
 004E3547    sub        eax,edx
>004E3549    jno        004E3550
 004E354B    call       @IntOver
 004E3550    sub        eax,1
>004E3553    jno        004E355A
 004E3555    call       @IntOver
 004E355A    push       eax
 004E355B    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E355E    push       eax
 004E355F    mov        eax,dword ptr [eax]
 004E3561    call       dword ptr [eax+8C]
 004E3567    call       @CheckAutoResult
 004E356C    lea        eax,[ebp-4]
 004E356F    push       eax
 004E3570    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3573    push       eax
 004E3574    mov        eax,dword ptr [eax]
 004E3576    call       dword ptr [eax+50]
 004E3579    call       @CheckAutoResult
 004E357E    cmp        word ptr [ebp-4],0
>004E3583    jne        004E359E
 004E3585    lea        eax,[ebp-8]
 004E3588    push       eax
 004E3589    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E358C    push       eax
 004E358D    mov        eax,dword ptr [eax]
 004E358F    call       dword ptr [eax+34]
 004E3592    call       @CheckAutoResult
 004E3597    cmp        word ptr [ebp-8],0
>004E359C    je         004E35A2
 004E359E    xor        eax,eax
>004E35A0    jmp        004E35A4
 004E35A2    mov        al,1
 004E35A4    mov        ebx,eax
 004E35A6    xor        eax,eax
 004E35A8    pop        edx
 004E35A9    pop        ecx
 004E35AA    pop        ecx
 004E35AB    mov        dword ptr fs:[eax],edx
 004E35AE    push       4E35CE
 004E35B3    lea        eax,[ebp-28]
 004E35B6    mov        edx,dword ptr ds:[401124]; OleVariant
 004E35BC    mov        ecx,2
 004E35C1    call       @FinalizeArray
 004E35C6    ret
<004E35C7    jmp        @HandleFinally
<004E35CC    jmp        004E35B3
 004E35CE    mov        eax,ebx
 004E35D0    pop        esi
 004E35D1    pop        ebx
 004E35D2    mov        esp,ebp
 004E35D4    pop        ebp
 004E35D5    ret
*}
//end;

//004E35D8
procedure sub_004E35D8;
begin
{*
 004E35D8    push       ebp
 004E35D9    mov        ebp,esp
 004E35DB    add        esp,0FFFFFFF4
 004E35DE    push       ebx
 004E35DF    mov        ebx,eax
 004E35E1    lea        eax,[ebp-4]
 004E35E4    push       eax
 004E35E5    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E35E8    push       eax
 004E35E9    mov        eax,dword ptr [eax]
 004E35EB    call       dword ptr [eax+50]
 004E35EE    call       @CheckAutoResult
 004E35F3    cmp        word ptr [ebp-4],0
>004E35F8    jne        004E3613
 004E35FA    lea        eax,[ebp-8]
 004E35FD    push       eax
 004E35FE    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3601    push       eax
 004E3602    mov        eax,dword ptr [eax]
 004E3604    call       dword ptr [eax+34]
 004E3607    call       @CheckAutoResult
 004E360C    cmp        word ptr [ebp-8],0
>004E3611    je         004E3618
 004E3613    or         eax,0FFFFFFFF
>004E3616    jmp        004E3636
 004E3618    lea        eax,[ebp-0C]
 004E361B    push       eax
 004E361C    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E361F    push       eax
 004E3620    mov        eax,dword ptr [eax]
 004E3622    call       dword ptr [eax+20]
 004E3625    call       @CheckAutoResult
 004E362A    mov        eax,dword ptr [ebp-0C]
 004E362D    test       eax,eax
>004E362F    jns        004E3636
 004E3631    call       @BoundErr
 004E3636    pop        ebx
 004E3637    mov        esp,ebp
 004E3639    pop        ebp
 004E363A    ret
*}
end;

//004E363C
//function sub_004E363C(?:?):?;
//begin
{*
 004E363C    push       ebp
 004E363D    mov        ebp,esp
 004E363F    mov        ecx,0A
 004E3644    push       0
 004E3646    push       0
 004E3648    dec        ecx
<004E3649    jne        004E3644
 004E364B    push       ebx
 004E364C    push       esi
 004E364D    mov        esi,edx
 004E364F    mov        ebx,eax
 004E3651    xor        eax,eax
 004E3653    push       ebp
 004E3654    push       4E379B
 004E3659    push       dword ptr fs:[eax]
 004E365C    mov        dword ptr fs:[eax],esp
 004E365F    lea        eax,[ebp-10]
 004E3662    call       @VarClr
 004E3667    push       eax
 004E3668    lea        eax,[ebp-14]
 004E366B    call       @IntfClear
 004E3670    push       eax
 004E3671    lea        eax,[ebp-24]
 004E3674    mov        edx,esi
 004E3676    sub        edx,1
>004E3679    jno        004E3680
 004E367B    call       @IntOver
 004E3680    mov        cl,0FC
 004E3682    call       @OleVarFromInt
 004E3687    push       dword ptr [ebp-18]
 004E368A    push       dword ptr [ebp-1C]
 004E368D    push       dword ptr [ebp-20]
 004E3690    push       dword ptr [ebp-24]
 004E3693    lea        eax,[ebp-28]
 004E3696    call       @IntfClear
 004E369B    push       eax
 004E369C    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E369F    push       eax
 004E36A0    mov        eax,dword ptr [eax]
 004E36A2    call       dword ptr [eax+54]
 004E36A5    call       @CheckAutoResult
 004E36AA    mov        eax,dword ptr [ebp-28]
 004E36AD    push       eax
 004E36AE    mov        eax,dword ptr [eax]
 004E36B0    call       dword ptr [eax+28]
 004E36B3    call       @CheckAutoResult
 004E36B8    mov        eax,dword ptr [ebp-14]
 004E36BB    push       eax
 004E36BC    mov        eax,dword ptr [eax]
 004E36BE    call       dword ptr [eax+34]
 004E36C1    call       @CheckAutoResult
 004E36C6    lea        eax,[ebp-10]
 004E36C9    call       VarIsNull
 004E36CE    test       al,al
>004E36D0    jne        004E3749
 004E36D2    lea        eax,[ebp-38]
 004E36D5    call       @VarClr
 004E36DA    push       eax
 004E36DB    lea        eax,[ebp-3C]
 004E36DE    call       @IntfClear
 004E36E3    push       eax
 004E36E4    lea        eax,[ebp-4C]
 004E36E7    mov        edx,esi
 004E36E9    sub        edx,1
>004E36EC    jno        004E36F3
 004E36EE    call       @IntOver
 004E36F3    mov        cl,0FC
 004E36F5    call       @OleVarFromInt
 004E36FA    push       dword ptr [ebp-40]
 004E36FD    push       dword ptr [ebp-44]
 004E3700    push       dword ptr [ebp-48]
 004E3703    push       dword ptr [ebp-4C]
 004E3706    lea        eax,[ebp-50]
 004E3709    call       @IntfClear
 004E370E    push       eax
 004E370F    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3712    push       eax
 004E3713    mov        eax,dword ptr [eax]
 004E3715    call       dword ptr [eax+54]
 004E3718    call       @CheckAutoResult
 004E371D    mov        eax,dword ptr [ebp-50]
 004E3720    push       eax
 004E3721    mov        eax,dword ptr [eax]
 004E3723    call       dword ptr [eax+28]
 004E3726    call       @CheckAutoResult
 004E372B    mov        eax,dword ptr [ebp-3C]
 004E372E    push       eax
 004E372F    mov        eax,dword ptr [eax]
 004E3731    call       dword ptr [eax+34]
 004E3734    call       @CheckAutoResult
 004E3739    lea        eax,[ebp-38]
 004E373C    call       VarIsEmpty
 004E3741    test       al,al
>004E3743    jne        004E3749
 004E3745    xor        eax,eax
>004E3747    jmp        004E374B
 004E3749    mov        al,1
 004E374B    mov        ebx,eax
 004E374D    xor        eax,eax
 004E374F    pop        edx
 004E3750    pop        ecx
 004E3751    pop        ecx
 004E3752    mov        dword ptr fs:[eax],edx
 004E3755    push       4E37A2
 004E375A    lea        eax,[ebp-50]
 004E375D    call       @IntfClear
 004E3762    lea        eax,[ebp-4C]
 004E3765    call       @VarClr
 004E376A    lea        eax,[ebp-3C]
 004E376D    call       @IntfClear
 004E3772    lea        eax,[ebp-38]
 004E3775    call       @VarClr
 004E377A    lea        eax,[ebp-28]
 004E377D    call       @IntfClear
 004E3782    lea        eax,[ebp-24]
 004E3785    call       @VarClr
 004E378A    lea        eax,[ebp-14]
 004E378D    call       @IntfClear
 004E3792    lea        eax,[ebp-10]
 004E3795    call       @VarClr
 004E379A    ret
<004E379B    jmp        @HandleFinally
<004E37A0    jmp        004E375A
 004E37A2    mov        eax,ebx
 004E37A4    pop        esi
 004E37A5    pop        ebx
 004E37A6    mov        esp,ebp
 004E37A8    pop        ebp
 004E37A9    ret
*}
//end;

//004E37AC
//procedure sub_004E37AC(?:?; ?:?);
//begin
{*
 004E37AC    push       ebp
 004E37AD    mov        ebp,esp
 004E37AF    push       ecx
 004E37B0    mov        ecx,5
 004E37B5    push       0
 004E37B7    push       0
 004E37B9    dec        ecx
<004E37BA    jne        004E37B5
 004E37BC    xchg       ecx,dword ptr [ebp-4]
 004E37BF    push       ebx
 004E37C0    push       esi
 004E37C1    mov        ebx,ecx
 004E37C3    mov        dword ptr [ebp-4],edx
 004E37C6    mov        esi,eax
 004E37C8    xor        eax,eax
 004E37CA    push       ebp
 004E37CB    push       4E38CC
 004E37D0    push       dword ptr fs:[eax]
 004E37D3    mov        dword ptr fs:[eax],esp
 004E37D6    mov        eax,ebx
 004E37D8    call       @LStrClr
 004E37DD    mov        edx,dword ptr [ebp-4]
 004E37E0    mov        eax,esi
 004E37E2    mov        ecx,dword ptr [eax]
 004E37E4    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E37E7    mov        byte ptr [esi+34],al; TZAdoResultSet.?f34:byte
 004E37EA    cmp        byte ptr [esi+34],0; TZAdoResultSet.?f34:byte
>004E37EE    jne        004E389E
 004E37F4    lea        eax,[ebp-14]
 004E37F7    call       @VarClr
 004E37FC    push       eax
 004E37FD    lea        eax,[ebp-18]
 004E3800    call       @IntfClear
 004E3805    push       eax
 004E3806    lea        eax,[ebp-28]
 004E3809    mov        edx,dword ptr [ebp-4]
 004E380C    sub        edx,1
>004E380F    jno        004E3816
 004E3811    call       @IntOver
 004E3816    mov        cl,0FC
 004E3818    call       @OleVarFromInt
 004E381D    push       dword ptr [ebp-1C]
 004E3820    push       dword ptr [ebp-20]
 004E3823    push       dword ptr [ebp-24]
 004E3826    push       dword ptr [ebp-28]
 004E3829    lea        eax,[ebp-2C]
 004E382C    call       @IntfClear
 004E3831    push       eax
 004E3832    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3835    push       eax
 004E3836    mov        eax,dword ptr [eax]
 004E3838    call       dword ptr [eax+54]
 004E383B    call       @CheckAutoResult
 004E3840    mov        eax,dword ptr [ebp-2C]
 004E3843    push       eax
 004E3844    mov        eax,dword ptr [eax]
 004E3846    call       dword ptr [eax+28]
 004E3849    call       @CheckAutoResult
 004E384E    mov        eax,dword ptr [ebp-18]
 004E3851    push       eax
 004E3852    mov        eax,dword ptr [eax]
 004E3854    call       dword ptr [eax+34]
 004E3857    call       @CheckAutoResult
 004E385C    lea        edx,[ebp-14]
 004E385F    mov        eax,ebx
 004E3861    call       @VarToLStr
 004E3866    mov        eax,dword ptr [ebx]
 004E3868    call       @LStrLen
>004E386D    jmp        004E3879
 004E386F    sub        eax,1
>004E3872    jno        004E3879
 004E3874    call       @IntOver
 004E3879    test       eax,eax
>004E387B    jle        004E3896
 004E387D    mov        edx,dword ptr [ebx]
 004E387F    dec        eax
 004E3880    test       edx,edx
>004E3882    je         004E3889
 004E3884    cmp        eax,dword ptr [edx-4]
>004E3887    jb         004E388E
 004E3889    call       @BoundErr
 004E388E    inc        eax
 004E388F    cmp        byte ptr [edx+eax-1],20
<004E3894    je         004E386F
 004E3896    mov        edx,ebx
 004E3898    xchg       eax,edx
 004E3899    call       @LStrSetLength
 004E389E    xor        eax,eax
 004E38A0    pop        edx
 004E38A1    pop        ecx
 004E38A2    pop        ecx
 004E38A3    mov        dword ptr fs:[eax],edx
 004E38A6    push       4E38D3
 004E38AB    lea        eax,[ebp-2C]
 004E38AE    call       @IntfClear
 004E38B3    lea        eax,[ebp-28]
 004E38B6    call       @VarClr
 004E38BB    lea        eax,[ebp-18]
 004E38BE    call       @IntfClear
 004E38C3    lea        eax,[ebp-14]
 004E38C6    call       @VarClr
 004E38CB    ret
<004E38CC    jmp        @HandleFinally
<004E38D1    jmp        004E38AB
 004E38D3    pop        esi
 004E38D4    pop        ebx
 004E38D5    mov        esp,ebp
 004E38D7    pop        ebp
 004E38D8    ret
*}
//end;

//004E38DC
//procedure sub_004E38DC(?:?; ?:?);
//begin
{*
 004E38DC    push       ebp
 004E38DD    mov        ebp,esp
 004E38DF    push       ecx
 004E38E0    mov        ecx,5
 004E38E5    push       0
 004E38E7    push       0
 004E38E9    dec        ecx
<004E38EA    jne        004E38E5
 004E38EC    xchg       ecx,dword ptr [ebp-4]
 004E38EF    push       ebx
 004E38F0    push       esi
 004E38F1    mov        ebx,ecx
 004E38F3    mov        dword ptr [ebp-4],edx
 004E38F6    mov        esi,eax
 004E38F8    xor        eax,eax
 004E38FA    push       ebp
 004E38FB    push       4E39FD
 004E3900    push       dword ptr fs:[eax]
 004E3903    mov        dword ptr fs:[eax],esp
 004E3906    mov        eax,ebx
 004E3908    call       @WStrClr
 004E390D    mov        edx,dword ptr [ebp-4]
 004E3910    mov        eax,esi
 004E3912    mov        ecx,dword ptr [eax]
 004E3914    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3917    mov        byte ptr [esi+34],al; TZAdoResultSet.?f34:byte
 004E391A    cmp        byte ptr [esi+34],0; TZAdoResultSet.?f34:byte
>004E391E    jne        004E39CF
 004E3924    lea        eax,[ebp-14]
 004E3927    call       @VarClr
 004E392C    push       eax
 004E392D    lea        eax,[ebp-18]
 004E3930    call       @IntfClear
 004E3935    push       eax
 004E3936    lea        eax,[ebp-28]
 004E3939    mov        edx,dword ptr [ebp-4]
 004E393C    sub        edx,1
>004E393F    jno        004E3946
 004E3941    call       @IntOver
 004E3946    mov        cl,0FC
 004E3948    call       @OleVarFromInt
 004E394D    push       dword ptr [ebp-1C]
 004E3950    push       dword ptr [ebp-20]
 004E3953    push       dword ptr [ebp-24]
 004E3956    push       dword ptr [ebp-28]
 004E3959    lea        eax,[ebp-2C]
 004E395C    call       @IntfClear
 004E3961    push       eax
 004E3962    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3965    push       eax
 004E3966    mov        eax,dword ptr [eax]
 004E3968    call       dword ptr [eax+54]
 004E396B    call       @CheckAutoResult
 004E3970    mov        eax,dword ptr [ebp-2C]
 004E3973    push       eax
 004E3974    mov        eax,dword ptr [eax]
 004E3976    call       dword ptr [eax+28]
 004E3979    call       @CheckAutoResult
 004E397E    mov        eax,dword ptr [ebp-18]
 004E3981    push       eax
 004E3982    mov        eax,dword ptr [eax]
 004E3984    call       dword ptr [eax+34]
 004E3987    call       @CheckAutoResult
 004E398C    lea        edx,[ebp-14]
 004E398F    mov        eax,ebx
 004E3991    call       @VarToWStr
 004E3996    mov        eax,dword ptr [ebx]
 004E3998    call       @WStrLen
>004E399D    jmp        004E39A9
 004E399F    sub        eax,1
>004E39A2    jno        004E39A9
 004E39A4    call       @IntOver
 004E39A9    test       eax,eax
>004E39AB    jle        004E39C7
 004E39AD    mov        edx,dword ptr [ebx]
 004E39AF    dec        eax
 004E39B0    test       edx,edx
>004E39B2    je         004E39B9
 004E39B4    cmp        eax,dword ptr [edx-4]
>004E39B7    jb         004E39BE
 004E39B9    call       @BoundErr
 004E39BE    inc        eax
 004E39BF    cmp        word ptr [edx+eax*2-2],20
<004E39C5    je         004E399F
 004E39C7    mov        edx,ebx
 004E39C9    xchg       eax,edx
 004E39CA    call       @WStrSetLength
 004E39CF    xor        eax,eax
 004E39D1    pop        edx
 004E39D2    pop        ecx
 004E39D3    pop        ecx
 004E39D4    mov        dword ptr fs:[eax],edx
 004E39D7    push       4E3A04
 004E39DC    lea        eax,[ebp-2C]
 004E39DF    call       @IntfClear
 004E39E4    lea        eax,[ebp-28]
 004E39E7    call       @VarClr
 004E39EC    lea        eax,[ebp-18]
 004E39EF    call       @IntfClear
 004E39F4    lea        eax,[ebp-14]
 004E39F7    call       @VarClr
 004E39FC    ret
<004E39FD    jmp        @HandleFinally
<004E3A02    jmp        004E39DC
 004E3A04    pop        esi
 004E3A05    pop        ebx
 004E3A06    mov        esp,ebp
 004E3A08    pop        ebp
 004E3A09    ret
*}
//end;

//004E3A0C
//function sub_004E3A0C(?:?):?;
//begin
{*
 004E3A0C    push       ebp
 004E3A0D    mov        ebp,esp
 004E3A0F    mov        ecx,5
 004E3A14    push       0
 004E3A16    push       0
 004E3A18    dec        ecx
<004E3A19    jne        004E3A14
 004E3A1B    push       ecx
 004E3A1C    push       ebx
 004E3A1D    push       esi
 004E3A1E    push       edi
 004E3A1F    mov        dword ptr [ebp-4],edx
 004E3A22    mov        esi,eax
 004E3A24    xor        eax,eax
 004E3A26    push       ebp
 004E3A27    push       4E3B0F
 004E3A2C    push       dword ptr fs:[eax]
 004E3A2F    mov        dword ptr fs:[eax],esp
 004E3A32    xor        ebx,ebx
 004E3A34    mov        edx,dword ptr [ebp-4]
 004E3A37    mov        eax,esi
 004E3A39    mov        ecx,dword ptr [eax]
 004E3A3B    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3A3E    mov        byte ptr [esi+34],al; TZAdoResultSet.?f34:byte
 004E3A41    cmp        byte ptr [esi+34],0; TZAdoResultSet.?f34:byte
>004E3A45    jne        004E3AE1
 004E3A4B    xor        eax,eax
 004E3A4D    push       ebp
 004E3A4E    push       4E3AD5
 004E3A53    push       dword ptr fs:[eax]
 004E3A56    mov        dword ptr fs:[eax],esp
 004E3A59    lea        eax,[ebp-14]
 004E3A5C    call       @VarClr
 004E3A61    push       eax
 004E3A62    lea        eax,[ebp-18]
 004E3A65    call       @IntfClear
 004E3A6A    push       eax
 004E3A6B    lea        eax,[ebp-28]
 004E3A6E    mov        edx,dword ptr [ebp-4]
 004E3A71    sub        edx,1
>004E3A74    jno        004E3A7B
 004E3A76    call       @IntOver
 004E3A7B    mov        cl,0FC
 004E3A7D    call       @OleVarFromInt
 004E3A82    push       dword ptr [ebp-1C]
 004E3A85    push       dword ptr [ebp-20]
 004E3A88    push       dword ptr [ebp-24]
 004E3A8B    push       dword ptr [ebp-28]
 004E3A8E    lea        eax,[ebp-2C]
 004E3A91    call       @IntfClear
 004E3A96    push       eax
 004E3A97    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3A9A    push       eax
 004E3A9B    mov        eax,dword ptr [eax]
 004E3A9D    call       dword ptr [eax+54]
 004E3AA0    call       @CheckAutoResult
 004E3AA5    mov        eax,dword ptr [ebp-2C]
 004E3AA8    push       eax
 004E3AA9    mov        eax,dword ptr [eax]
 004E3AAB    call       dword ptr [eax+28]
 004E3AAE    call       @CheckAutoResult
 004E3AB3    mov        eax,dword ptr [ebp-18]
 004E3AB6    push       eax
 004E3AB7    mov        eax,dword ptr [eax]
 004E3AB9    call       dword ptr [eax+34]
 004E3ABC    call       @CheckAutoResult
 004E3AC1    lea        eax,[ebp-14]
 004E3AC4    call       @VarToBool
 004E3AC9    mov        ebx,eax
 004E3ACB    xor        eax,eax
 004E3ACD    pop        edx
 004E3ACE    pop        ecx
 004E3ACF    pop        ecx
 004E3AD0    mov        dword ptr fs:[eax],edx
>004E3AD3    jmp        004E3AE1
<004E3AD5    jmp        @HandleAnyException
 004E3ADA    xor        ebx,ebx
 004E3ADC    call       @DoneExcept
 004E3AE1    xor        eax,eax
 004E3AE3    pop        edx
 004E3AE4    pop        ecx
 004E3AE5    pop        ecx
 004E3AE6    mov        dword ptr fs:[eax],edx
 004E3AE9    push       4E3B16
 004E3AEE    lea        eax,[ebp-2C]
 004E3AF1    call       @IntfClear
 004E3AF6    lea        eax,[ebp-28]
 004E3AF9    call       @VarClr
 004E3AFE    lea        eax,[ebp-18]
 004E3B01    call       @IntfClear
 004E3B06    lea        eax,[ebp-14]
 004E3B09    call       @VarClr
 004E3B0E    ret
<004E3B0F    jmp        @HandleFinally
<004E3B14    jmp        004E3AEE
 004E3B16    mov        eax,ebx
 004E3B18    pop        edi
 004E3B19    pop        esi
 004E3B1A    pop        ebx
 004E3B1B    mov        esp,ebp
 004E3B1D    pop        ebp
 004E3B1E    ret
*}
//end;

//004E3B20
//function sub_004E3B20(?:?):?;
//begin
{*
 004E3B20    push       ebp
 004E3B21    mov        ebp,esp
 004E3B23    mov        ecx,5
 004E3B28    push       0
 004E3B2A    push       0
 004E3B2C    dec        ecx
<004E3B2D    jne        004E3B28
 004E3B2F    push       ecx
 004E3B30    push       ebx
 004E3B31    push       esi
 004E3B32    push       edi
 004E3B33    mov        dword ptr [ebp-4],edx
 004E3B36    mov        esi,eax
 004E3B38    xor        eax,eax
 004E3B3A    push       ebp
 004E3B3B    push       4E3C23
 004E3B40    push       dword ptr fs:[eax]
 004E3B43    mov        dword ptr fs:[eax],esp
 004E3B46    xor        ebx,ebx
 004E3B48    mov        edx,dword ptr [ebp-4]
 004E3B4B    mov        eax,esi
 004E3B4D    mov        ecx,dword ptr [eax]
 004E3B4F    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3B52    mov        byte ptr [esi+34],al; TZAdoResultSet.?f34:byte
 004E3B55    cmp        byte ptr [esi+34],0; TZAdoResultSet.?f34:byte
>004E3B59    jne        004E3BF5
 004E3B5F    xor        eax,eax
 004E3B61    push       ebp
 004E3B62    push       4E3BE9
 004E3B67    push       dword ptr fs:[eax]
 004E3B6A    mov        dword ptr fs:[eax],esp
 004E3B6D    lea        eax,[ebp-14]
 004E3B70    call       @VarClr
 004E3B75    push       eax
 004E3B76    lea        eax,[ebp-18]
 004E3B79    call       @IntfClear
 004E3B7E    push       eax
 004E3B7F    lea        eax,[ebp-28]
 004E3B82    mov        edx,dword ptr [ebp-4]
 004E3B85    sub        edx,1
>004E3B88    jno        004E3B8F
 004E3B8A    call       @IntOver
 004E3B8F    mov        cl,0FC
 004E3B91    call       @OleVarFromInt
 004E3B96    push       dword ptr [ebp-1C]
 004E3B99    push       dword ptr [ebp-20]
 004E3B9C    push       dword ptr [ebp-24]
 004E3B9F    push       dword ptr [ebp-28]
 004E3BA2    lea        eax,[ebp-2C]
 004E3BA5    call       @IntfClear
 004E3BAA    push       eax
 004E3BAB    mov        eax,dword ptr [esi+48]; TZAdoResultSet.?f48:Recordset15
 004E3BAE    push       eax
 004E3BAF    mov        eax,dword ptr [eax]
 004E3BB1    call       dword ptr [eax+54]
 004E3BB4    call       @CheckAutoResult
 004E3BB9    mov        eax,dword ptr [ebp-2C]
 004E3BBC    push       eax
 004E3BBD    mov        eax,dword ptr [eax]
 004E3BBF    call       dword ptr [eax+28]
 004E3BC2    call       @CheckAutoResult
 004E3BC7    mov        eax,dword ptr [ebp-18]
 004E3BCA    push       eax
 004E3BCB    mov        eax,dword ptr [eax]
 004E3BCD    call       dword ptr [eax+34]
 004E3BD0    call       @CheckAutoResult
 004E3BD5    lea        eax,[ebp-14]
 004E3BD8    call       @VarToInteger
 004E3BDD    mov        ebx,eax
 004E3BDF    xor        eax,eax
 004E3BE1    pop        edx
 004E3BE2    pop        ecx
 004E3BE3    pop        ecx
 004E3BE4    mov        dword ptr fs:[eax],edx
>004E3BE7    jmp        004E3BF5
<004E3BE9    jmp        @HandleAnyException
 004E3BEE    xor        ebx,ebx
 004E3BF0    call       @DoneExcept
 004E3BF5    xor        eax,eax
 004E3BF7    pop        edx
 004E3BF8    pop        ecx
 004E3BF9    pop        ecx
 004E3BFA    mov        dword ptr fs:[eax],edx
 004E3BFD    push       4E3C2A
 004E3C02    lea        eax,[ebp-2C]
 004E3C05    call       @IntfClear
 004E3C0A    lea        eax,[ebp-28]
 004E3C0D    call       @VarClr
 004E3C12    lea        eax,[ebp-18]
 004E3C15    call       @IntfClear
 004E3C1A    lea        eax,[ebp-14]
 004E3C1D    call       @VarClr
 004E3C22    ret
<004E3C23    jmp        @HandleFinally
<004E3C28    jmp        004E3C02
 004E3C2A    mov        eax,ebx
 004E3C2C    pop        edi
 004E3C2D    pop        esi
 004E3C2E    pop        ebx
 004E3C2F    mov        esp,ebp
 004E3C31    pop        ebp
 004E3C32    ret
*}
//end;

//004E3C34
//function sub_004E3C34(?:?):?;
//begin
{*
 004E3C34    push       ebp
 004E3C35    mov        ebp,esp
 004E3C37    mov        ecx,5
 004E3C3C    push       0
 004E3C3E    push       0
 004E3C40    dec        ecx
<004E3C41    jne        004E3C3C
 004E3C43    push       ecx
 004E3C44    push       ebx
 004E3C45    push       esi
 004E3C46    push       edi
 004E3C47    mov        dword ptr [ebp-4],edx
 004E3C4A    mov        ebx,eax
 004E3C4C    xor        eax,eax
 004E3C4E    push       ebp
 004E3C4F    push       4E3D37
 004E3C54    push       dword ptr fs:[eax]
 004E3C57    mov        dword ptr fs:[eax],esp
 004E3C5A    xor        esi,esi
 004E3C5C    mov        edx,dword ptr [ebp-4]
 004E3C5F    mov        eax,ebx
 004E3C61    mov        ecx,dword ptr [eax]
 004E3C63    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3C66    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E3C69    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E3C6D    jne        004E3D09
 004E3C73    xor        eax,eax
 004E3C75    push       ebp
 004E3C76    push       4E3CFD
 004E3C7B    push       dword ptr fs:[eax]
 004E3C7E    mov        dword ptr fs:[eax],esp
 004E3C81    lea        eax,[ebp-14]
 004E3C84    call       @VarClr
 004E3C89    push       eax
 004E3C8A    lea        eax,[ebp-18]
 004E3C8D    call       @IntfClear
 004E3C92    push       eax
 004E3C93    lea        eax,[ebp-28]
 004E3C96    mov        edx,dword ptr [ebp-4]
 004E3C99    sub        edx,1
>004E3C9C    jno        004E3CA3
 004E3C9E    call       @IntOver
 004E3CA3    mov        cl,0FC
 004E3CA5    call       @OleVarFromInt
 004E3CAA    push       dword ptr [ebp-1C]
 004E3CAD    push       dword ptr [ebp-20]
 004E3CB0    push       dword ptr [ebp-24]
 004E3CB3    push       dword ptr [ebp-28]
 004E3CB6    lea        eax,[ebp-2C]
 004E3CB9    call       @IntfClear
 004E3CBE    push       eax
 004E3CBF    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3CC2    push       eax
 004E3CC3    mov        eax,dword ptr [eax]
 004E3CC5    call       dword ptr [eax+54]
 004E3CC8    call       @CheckAutoResult
 004E3CCD    mov        eax,dword ptr [ebp-2C]
 004E3CD0    push       eax
 004E3CD1    mov        eax,dword ptr [eax]
 004E3CD3    call       dword ptr [eax+28]
 004E3CD6    call       @CheckAutoResult
 004E3CDB    mov        eax,dword ptr [ebp-18]
 004E3CDE    push       eax
 004E3CDF    mov        eax,dword ptr [eax]
 004E3CE1    call       dword ptr [eax+34]
 004E3CE4    call       @CheckAutoResult
 004E3CE9    lea        eax,[ebp-14]
 004E3CEC    call       @VarToInteger
 004E3CF1    mov        esi,eax
 004E3CF3    xor        eax,eax
 004E3CF5    pop        edx
 004E3CF6    pop        ecx
 004E3CF7    pop        ecx
 004E3CF8    mov        dword ptr fs:[eax],edx
>004E3CFB    jmp        004E3D09
<004E3CFD    jmp        @HandleAnyException
 004E3D02    xor        esi,esi
 004E3D04    call       @DoneExcept
 004E3D09    xor        eax,eax
 004E3D0B    pop        edx
 004E3D0C    pop        ecx
 004E3D0D    pop        ecx
 004E3D0E    mov        dword ptr fs:[eax],edx
 004E3D11    push       4E3D3E
 004E3D16    lea        eax,[ebp-2C]
 004E3D19    call       @IntfClear
 004E3D1E    lea        eax,[ebp-28]
 004E3D21    call       @VarClr
 004E3D26    lea        eax,[ebp-18]
 004E3D29    call       @IntfClear
 004E3D2E    lea        eax,[ebp-14]
 004E3D31    call       @VarClr
 004E3D36    ret
<004E3D37    jmp        @HandleFinally
<004E3D3C    jmp        004E3D16
 004E3D3E    mov        eax,esi
 004E3D40    pop        edi
 004E3D41    pop        esi
 004E3D42    pop        ebx
 004E3D43    mov        esp,ebp
 004E3D45    pop        ebp
 004E3D46    ret
*}
//end;

//004E3D48
//function sub_004E3D48(?:?):?;
//begin
{*
 004E3D48    push       ebp
 004E3D49    mov        ebp,esp
 004E3D4B    mov        ecx,5
 004E3D50    push       0
 004E3D52    push       0
 004E3D54    dec        ecx
<004E3D55    jne        004E3D50
 004E3D57    push       ecx
 004E3D58    push       ebx
 004E3D59    push       esi
 004E3D5A    push       edi
 004E3D5B    mov        dword ptr [ebp-4],edx
 004E3D5E    mov        ebx,eax
 004E3D60    xor        eax,eax
 004E3D62    push       ebp
 004E3D63    push       4E3E4B
 004E3D68    push       dword ptr fs:[eax]
 004E3D6B    mov        dword ptr fs:[eax],esp
 004E3D6E    xor        esi,esi
 004E3D70    mov        edx,dword ptr [ebp-4]
 004E3D73    mov        eax,ebx
 004E3D75    mov        ecx,dword ptr [eax]
 004E3D77    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3D7A    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E3D7D    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E3D81    jne        004E3E1D
 004E3D87    xor        eax,eax
 004E3D89    push       ebp
 004E3D8A    push       4E3E11
 004E3D8F    push       dword ptr fs:[eax]
 004E3D92    mov        dword ptr fs:[eax],esp
 004E3D95    lea        eax,[ebp-14]
 004E3D98    call       @VarClr
 004E3D9D    push       eax
 004E3D9E    lea        eax,[ebp-18]
 004E3DA1    call       @IntfClear
 004E3DA6    push       eax
 004E3DA7    lea        eax,[ebp-28]
 004E3DAA    mov        edx,dword ptr [ebp-4]
 004E3DAD    sub        edx,1
>004E3DB0    jno        004E3DB7
 004E3DB2    call       @IntOver
 004E3DB7    mov        cl,0FC
 004E3DB9    call       @OleVarFromInt
 004E3DBE    push       dword ptr [ebp-1C]
 004E3DC1    push       dword ptr [ebp-20]
 004E3DC4    push       dword ptr [ebp-24]
 004E3DC7    push       dword ptr [ebp-28]
 004E3DCA    lea        eax,[ebp-2C]
 004E3DCD    call       @IntfClear
 004E3DD2    push       eax
 004E3DD3    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3DD6    push       eax
 004E3DD7    mov        eax,dword ptr [eax]
 004E3DD9    call       dword ptr [eax+54]
 004E3DDC    call       @CheckAutoResult
 004E3DE1    mov        eax,dword ptr [ebp-2C]
 004E3DE4    push       eax
 004E3DE5    mov        eax,dword ptr [eax]
 004E3DE7    call       dword ptr [eax+28]
 004E3DEA    call       @CheckAutoResult
 004E3DEF    mov        eax,dword ptr [ebp-18]
 004E3DF2    push       eax
 004E3DF3    mov        eax,dword ptr [eax]
 004E3DF5    call       dword ptr [eax+34]
 004E3DF8    call       @CheckAutoResult
 004E3DFD    lea        eax,[ebp-14]
 004E3E00    call       @VarToInteger
 004E3E05    mov        esi,eax
 004E3E07    xor        eax,eax
 004E3E09    pop        edx
 004E3E0A    pop        ecx
 004E3E0B    pop        ecx
 004E3E0C    mov        dword ptr fs:[eax],edx
>004E3E0F    jmp        004E3E1D
<004E3E11    jmp        @HandleAnyException
 004E3E16    xor        esi,esi
 004E3E18    call       @DoneExcept
 004E3E1D    xor        eax,eax
 004E3E1F    pop        edx
 004E3E20    pop        ecx
 004E3E21    pop        ecx
 004E3E22    mov        dword ptr fs:[eax],edx
 004E3E25    push       4E3E52
 004E3E2A    lea        eax,[ebp-2C]
 004E3E2D    call       @IntfClear
 004E3E32    lea        eax,[ebp-28]
 004E3E35    call       @VarClr
 004E3E3A    lea        eax,[ebp-18]
 004E3E3D    call       @IntfClear
 004E3E42    lea        eax,[ebp-14]
 004E3E45    call       @VarClr
 004E3E4A    ret
<004E3E4B    jmp        @HandleFinally
<004E3E50    jmp        004E3E2A
 004E3E52    mov        eax,esi
 004E3E54    pop        edi
 004E3E55    pop        esi
 004E3E56    pop        ebx
 004E3E57    mov        esp,ebp
 004E3E59    pop        ebp
 004E3E5A    ret
*}
//end;

//004E3E5C
//procedure sub_004E3E5C(?:?);
//begin
{*
 004E3E5C    push       ebp
 004E3E5D    mov        ebp,esp
 004E3E5F    mov        ecx,6
 004E3E64    push       0
 004E3E66    push       0
 004E3E68    dec        ecx
<004E3E69    jne        004E3E64
 004E3E6B    push       ebx
 004E3E6C    push       esi
 004E3E6D    push       edi
 004E3E6E    mov        esi,edx
 004E3E70    mov        ebx,eax
 004E3E72    xor        eax,eax
 004E3E74    push       ebp
 004E3E75    push       4E3F77
 004E3E7A    push       dword ptr fs:[eax]
 004E3E7D    mov        dword ptr fs:[eax],esp
 004E3E80    mov        dword ptr [ebp-8],0
 004E3E87    mov        dword ptr [ebp-4],0
 004E3E8E    mov        edx,esi
 004E3E90    mov        eax,ebx
 004E3E92    mov        ecx,dword ptr [eax]
 004E3E94    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3E97    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E3E9A    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E3E9E    jne        004E3F49
 004E3EA4    xor        eax,eax
 004E3EA6    push       ebp
 004E3EA7    push       4E3F31
 004E3EAC    push       dword ptr fs:[eax]
 004E3EAF    mov        dword ptr fs:[eax],esp
 004E3EB2    lea        eax,[ebp-18]
 004E3EB5    call       @VarClr
 004E3EBA    push       eax
 004E3EBB    lea        eax,[ebp-1C]
 004E3EBE    call       @IntfClear
 004E3EC3    push       eax
 004E3EC4    lea        eax,[ebp-2C]
 004E3EC7    mov        edx,esi
 004E3EC9    sub        edx,1
>004E3ECC    jno        004E3ED3
 004E3ECE    call       @IntOver
 004E3ED3    mov        cl,0FC
 004E3ED5    call       @OleVarFromInt
 004E3EDA    push       dword ptr [ebp-20]
 004E3EDD    push       dword ptr [ebp-24]
 004E3EE0    push       dword ptr [ebp-28]
 004E3EE3    push       dword ptr [ebp-2C]
 004E3EE6    lea        eax,[ebp-30]
 004E3EE9    call       @IntfClear
 004E3EEE    push       eax
 004E3EEF    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E3EF2    push       eax
 004E3EF3    mov        eax,dword ptr [eax]
 004E3EF5    call       dword ptr [eax+54]
 004E3EF8    call       @CheckAutoResult
 004E3EFD    mov        eax,dword ptr [ebp-30]
 004E3F00    push       eax
 004E3F01    mov        eax,dword ptr [eax]
 004E3F03    call       dword ptr [eax+28]
 004E3F06    call       @CheckAutoResult
 004E3F0B    mov        eax,dword ptr [ebp-1C]
 004E3F0E    push       eax
 004E3F0F    mov        eax,dword ptr [eax]
 004E3F11    call       dword ptr [eax+34]
 004E3F14    call       @CheckAutoResult
 004E3F19    lea        eax,[ebp-18]
 004E3F1C    call       @VarToInt64
 004E3F21    mov        dword ptr [ebp-8],eax
 004E3F24    mov        dword ptr [ebp-4],edx
 004E3F27    xor        eax,eax
 004E3F29    pop        edx
 004E3F2A    pop        ecx
 004E3F2B    pop        ecx
 004E3F2C    mov        dword ptr fs:[eax],edx
>004E3F2F    jmp        004E3F49
<004E3F31    jmp        @HandleAnyException
 004E3F36    mov        dword ptr [ebp-8],0
 004E3F3D    mov        dword ptr [ebp-4],0
 004E3F44    call       @DoneExcept
 004E3F49    xor        eax,eax
 004E3F4B    pop        edx
 004E3F4C    pop        ecx
 004E3F4D    pop        ecx
 004E3F4E    mov        dword ptr fs:[eax],edx
 004E3F51    push       4E3F7E
 004E3F56    lea        eax,[ebp-30]
 004E3F59    call       @IntfClear
 004E3F5E    lea        eax,[ebp-2C]
 004E3F61    call       @VarClr
 004E3F66    lea        eax,[ebp-1C]
 004E3F69    call       @IntfClear
 004E3F6E    lea        eax,[ebp-18]
 004E3F71    call       @VarClr
 004E3F76    ret
<004E3F77    jmp        @HandleFinally
<004E3F7C    jmp        004E3F56
 004E3F7E    mov        eax,dword ptr [ebp-8]
 004E3F81    mov        edx,dword ptr [ebp-4]
 004E3F84    pop        edi
 004E3F85    pop        esi
 004E3F86    pop        ebx
 004E3F87    mov        esp,ebp
 004E3F89    pop        ebp
 004E3F8A    ret
*}
//end;

//004E3F8C
//procedure sub_004E3F8C(?:?);
//begin
{*
 004E3F8C    push       ebp
 004E3F8D    mov        ebp,esp
 004E3F8F    mov        ecx,5
 004E3F94    push       0
 004E3F96    push       0
 004E3F98    dec        ecx
<004E3F99    jne        004E3F94
 004E3F9B    push       ecx
 004E3F9C    push       ebx
 004E3F9D    push       esi
 004E3F9E    push       edi
 004E3F9F    mov        esi,edx
 004E3FA1    mov        ebx,eax
 004E3FA3    xor        eax,eax
 004E3FA5    push       ebp
 004E3FA6    push       4E4094
 004E3FAB    push       dword ptr fs:[eax]
 004E3FAE    mov        dword ptr fs:[eax],esp
 004E3FB1    xor        eax,eax
 004E3FB3    mov        dword ptr [ebp-4],eax
 004E3FB6    mov        edx,esi
 004E3FB8    mov        eax,ebx
 004E3FBA    mov        ecx,dword ptr [eax]
 004E3FBC    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E3FBF    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E3FC2    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E3FC6    jne        004E4066
 004E3FCC    xor        eax,eax
 004E3FCE    push       ebp
 004E3FCF    push       4E4057
 004E3FD4    push       dword ptr fs:[eax]
 004E3FD7    mov        dword ptr fs:[eax],esp
 004E3FDA    lea        eax,[ebp-14]
 004E3FDD    call       @VarClr
 004E3FE2    push       eax
 004E3FE3    lea        eax,[ebp-18]
 004E3FE6    call       @IntfClear
 004E3FEB    push       eax
 004E3FEC    lea        eax,[ebp-28]
 004E3FEF    mov        edx,esi
 004E3FF1    sub        edx,1
>004E3FF4    jno        004E3FFB
 004E3FF6    call       @IntOver
 004E3FFB    mov        cl,0FC
 004E3FFD    call       @OleVarFromInt
 004E4002    push       dword ptr [ebp-1C]
 004E4005    push       dword ptr [ebp-20]
 004E4008    push       dword ptr [ebp-24]
 004E400B    push       dword ptr [ebp-28]
 004E400E    lea        eax,[ebp-2C]
 004E4011    call       @IntfClear
 004E4016    push       eax
 004E4017    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E401A    push       eax
 004E401B    mov        eax,dword ptr [eax]
 004E401D    call       dword ptr [eax+54]
 004E4020    call       @CheckAutoResult
 004E4025    mov        eax,dword ptr [ebp-2C]
 004E4028    push       eax
 004E4029    mov        eax,dword ptr [eax]
 004E402B    call       dword ptr [eax+28]
 004E402E    call       @CheckAutoResult
 004E4033    mov        eax,dword ptr [ebp-18]
 004E4036    push       eax
 004E4037    mov        eax,dword ptr [eax]
 004E4039    call       dword ptr [eax+34]
 004E403C    call       @CheckAutoResult
 004E4041    lea        eax,[ebp-14]
 004E4044    call       @VarToReal
 004E4049    fstp       dword ptr [ebp-4]
 004E404C    wait
 004E404D    xor        eax,eax
 004E404F    pop        edx
 004E4050    pop        ecx
 004E4051    pop        ecx
 004E4052    mov        dword ptr fs:[eax],edx
>004E4055    jmp        004E4066
<004E4057    jmp        @HandleAnyException
 004E405C    xor        eax,eax
 004E405E    mov        dword ptr [ebp-4],eax
 004E4061    call       @DoneExcept
 004E4066    xor        eax,eax
 004E4068    pop        edx
 004E4069    pop        ecx
 004E406A    pop        ecx
 004E406B    mov        dword ptr fs:[eax],edx
 004E406E    push       4E409B
 004E4073    lea        eax,[ebp-2C]
 004E4076    call       @IntfClear
 004E407B    lea        eax,[ebp-28]
 004E407E    call       @VarClr
 004E4083    lea        eax,[ebp-18]
 004E4086    call       @IntfClear
 004E408B    lea        eax,[ebp-14]
 004E408E    call       @VarClr
 004E4093    ret
<004E4094    jmp        @HandleFinally
<004E4099    jmp        004E4073
 004E409B    fld        dword ptr [ebp-4]
 004E409E    pop        edi
 004E409F    pop        esi
 004E40A0    pop        ebx
 004E40A1    mov        esp,ebp
 004E40A3    pop        ebp
 004E40A4    ret
*}
//end;

//004E40A8
//procedure sub_004E40A8(?:?);
//begin
{*
 004E40A8    push       ebp
 004E40A9    mov        ebp,esp
 004E40AB    mov        ecx,6
 004E40B0    push       0
 004E40B2    push       0
 004E40B4    dec        ecx
<004E40B5    jne        004E40B0
 004E40B7    push       ebx
 004E40B8    push       esi
 004E40B9    push       edi
 004E40BA    mov        esi,edx
 004E40BC    mov        ebx,eax
 004E40BE    xor        eax,eax
 004E40C0    push       ebp
 004E40C1    push       4E41B5
 004E40C6    push       dword ptr fs:[eax]
 004E40C9    mov        dword ptr fs:[eax],esp
 004E40CC    xor        eax,eax
 004E40CE    mov        dword ptr [ebp-8],eax
 004E40D1    mov        dword ptr [ebp-4],eax
 004E40D4    mov        edx,esi
 004E40D6    mov        eax,ebx
 004E40D8    mov        ecx,dword ptr [eax]
 004E40DA    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E40DD    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E40E0    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E40E4    jne        004E4187
 004E40EA    xor        eax,eax
 004E40EC    push       ebp
 004E40ED    push       4E4175
 004E40F2    push       dword ptr fs:[eax]
 004E40F5    mov        dword ptr fs:[eax],esp
 004E40F8    lea        eax,[ebp-18]
 004E40FB    call       @VarClr
 004E4100    push       eax
 004E4101    lea        eax,[ebp-1C]
 004E4104    call       @IntfClear
 004E4109    push       eax
 004E410A    lea        eax,[ebp-2C]
 004E410D    mov        edx,esi
 004E410F    sub        edx,1
>004E4112    jno        004E4119
 004E4114    call       @IntOver
 004E4119    mov        cl,0FC
 004E411B    call       @OleVarFromInt
 004E4120    push       dword ptr [ebp-20]
 004E4123    push       dword ptr [ebp-24]
 004E4126    push       dword ptr [ebp-28]
 004E4129    push       dword ptr [ebp-2C]
 004E412C    lea        eax,[ebp-30]
 004E412F    call       @IntfClear
 004E4134    push       eax
 004E4135    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E4138    push       eax
 004E4139    mov        eax,dword ptr [eax]
 004E413B    call       dword ptr [eax+54]
 004E413E    call       @CheckAutoResult
 004E4143    mov        eax,dword ptr [ebp-30]
 004E4146    push       eax
 004E4147    mov        eax,dword ptr [eax]
 004E4149    call       dword ptr [eax+28]
 004E414C    call       @CheckAutoResult
 004E4151    mov        eax,dword ptr [ebp-1C]
 004E4154    push       eax
 004E4155    mov        eax,dword ptr [eax]
 004E4157    call       dword ptr [eax+34]
 004E415A    call       @CheckAutoResult
 004E415F    lea        eax,[ebp-18]
 004E4162    call       @VarToReal
 004E4167    fstp       qword ptr [ebp-8]
 004E416A    wait
 004E416B    xor        eax,eax
 004E416D    pop        edx
 004E416E    pop        ecx
 004E416F    pop        ecx
 004E4170    mov        dword ptr fs:[eax],edx
>004E4173    jmp        004E4187
<004E4175    jmp        @HandleAnyException
 004E417A    xor        eax,eax
 004E417C    mov        dword ptr [ebp-8],eax
 004E417F    mov        dword ptr [ebp-4],eax
 004E4182    call       @DoneExcept
 004E4187    xor        eax,eax
 004E4189    pop        edx
 004E418A    pop        ecx
 004E418B    pop        ecx
 004E418C    mov        dword ptr fs:[eax],edx
 004E418F    push       4E41BC
 004E4194    lea        eax,[ebp-30]
 004E4197    call       @IntfClear
 004E419C    lea        eax,[ebp-2C]
 004E419F    call       @VarClr
 004E41A4    lea        eax,[ebp-1C]
 004E41A7    call       @IntfClear
 004E41AC    lea        eax,[ebp-18]
 004E41AF    call       @VarClr
 004E41B4    ret
<004E41B5    jmp        @HandleFinally
<004E41BA    jmp        004E4194
 004E41BC    fld        qword ptr [ebp-8]
 004E41BF    pop        edi
 004E41C0    pop        esi
 004E41C1    pop        ebx
 004E41C2    mov        esp,ebp
 004E41C4    pop        ebp
 004E41C5    ret
*}
//end;

//004E41C8
//procedure sub_004E41C8(?:?);
//begin
{*
 004E41C8    push       ebp
 004E41C9    mov        ebp,esp
 004E41CB    mov        ecx,7
 004E41D0    push       0
 004E41D2    push       0
 004E41D4    dec        ecx
<004E41D5    jne        004E41D0
 004E41D7    push       ebx
 004E41D8    push       esi
 004E41D9    push       edi
 004E41DA    mov        esi,edx
 004E41DC    mov        ebx,eax
 004E41DE    xor        eax,eax
 004E41E0    push       ebp
 004E41E1    push       4E42DD
 004E41E6    push       dword ptr fs:[eax]
 004E41E9    mov        dword ptr fs:[eax],esp
 004E41EC    xor        eax,eax
 004E41EE    mov        dword ptr [ebp-10],eax
 004E41F1    mov        dword ptr [ebp-0C],eax
 004E41F4    mov        word ptr [ebp-8],ax
 004E41F8    mov        edx,esi
 004E41FA    mov        eax,ebx
 004E41FC    mov        ecx,dword ptr [eax]
 004E41FE    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E4201    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E4204    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E4208    jne        004E42AF
 004E420E    xor        eax,eax
 004E4210    push       ebp
 004E4211    push       4E4299
 004E4216    push       dword ptr fs:[eax]
 004E4219    mov        dword ptr fs:[eax],esp
 004E421C    lea        eax,[ebp-20]
 004E421F    call       @VarClr
 004E4224    push       eax
 004E4225    lea        eax,[ebp-24]
 004E4228    call       @IntfClear
 004E422D    push       eax
 004E422E    lea        eax,[ebp-34]
 004E4231    mov        edx,esi
 004E4233    sub        edx,1
>004E4236    jno        004E423D
 004E4238    call       @IntOver
 004E423D    mov        cl,0FC
 004E423F    call       @OleVarFromInt
 004E4244    push       dword ptr [ebp-28]
 004E4247    push       dword ptr [ebp-2C]
 004E424A    push       dword ptr [ebp-30]
 004E424D    push       dword ptr [ebp-34]
 004E4250    lea        eax,[ebp-38]
 004E4253    call       @IntfClear
 004E4258    push       eax
 004E4259    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E425C    push       eax
 004E425D    mov        eax,dword ptr [eax]
 004E425F    call       dword ptr [eax+54]
 004E4262    call       @CheckAutoResult
 004E4267    mov        eax,dword ptr [ebp-38]
 004E426A    push       eax
 004E426B    mov        eax,dword ptr [eax]
 004E426D    call       dword ptr [eax+28]
 004E4270    call       @CheckAutoResult
 004E4275    mov        eax,dword ptr [ebp-24]
 004E4278    push       eax
 004E4279    mov        eax,dword ptr [eax]
 004E427B    call       dword ptr [eax+34]
 004E427E    call       @CheckAutoResult
 004E4283    lea        eax,[ebp-20]
 004E4286    call       @VarToReal
 004E428B    fstp       tbyte ptr [ebp-10]
 004E428E    wait
 004E428F    xor        eax,eax
 004E4291    pop        edx
 004E4292    pop        ecx
 004E4293    pop        ecx
 004E4294    mov        dword ptr fs:[eax],edx
>004E4297    jmp        004E42AF
<004E4299    jmp        @HandleAnyException
 004E429E    xor        eax,eax
 004E42A0    mov        dword ptr [ebp-10],eax
 004E42A3    mov        dword ptr [ebp-0C],eax
 004E42A6    mov        word ptr [ebp-8],ax
 004E42AA    call       @DoneExcept
 004E42AF    xor        eax,eax
 004E42B1    pop        edx
 004E42B2    pop        ecx
 004E42B3    pop        ecx
 004E42B4    mov        dword ptr fs:[eax],edx
 004E42B7    push       4E42E4
 004E42BC    lea        eax,[ebp-38]
 004E42BF    call       @IntfClear
 004E42C4    lea        eax,[ebp-34]
 004E42C7    call       @VarClr
 004E42CC    lea        eax,[ebp-24]
 004E42CF    call       @IntfClear
 004E42D4    lea        eax,[ebp-20]
 004E42D7    call       @VarClr
 004E42DC    ret
<004E42DD    jmp        @HandleFinally
<004E42E2    jmp        004E42BC
 004E42E4    fld        tbyte ptr [ebp-10]
 004E42E7    pop        edi
 004E42E8    pop        esi
 004E42E9    pop        ebx
 004E42EA    mov        esp,ebp
 004E42EC    pop        ebp
 004E42ED    ret
*}
//end;

//004E42F0
//procedure sub_004E42F0(?:?; ?:?);
//begin
{*
 004E42F0    push       ebp
 004E42F1    mov        ebp,esp
 004E42F3    push       ecx
 004E42F4    mov        ecx,5
 004E42F9    push       0
 004E42FB    push       0
 004E42FD    dec        ecx
<004E42FE    jne        004E42F9
 004E4300    push       ecx
 004E4301    xchg       ecx,dword ptr [ebp-4]
 004E4304    push       ebx
 004E4305    push       esi
 004E4306    mov        dword ptr [ebp-4],ecx
 004E4309    mov        esi,edx
 004E430B    mov        ebx,eax
 004E430D    xor        eax,eax
 004E430F    push       ebp
 004E4310    push       4E440E
 004E4315    push       dword ptr fs:[eax]
 004E4318    mov        dword ptr fs:[eax],esp
 004E431B    push       0
 004E431D    mov        eax,dword ptr [ebp-4]
 004E4320    mov        ecx,1
 004E4325    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E432B    call       @DynArraySetLength
 004E4330    add        esp,4
 004E4333    mov        edx,esi
 004E4335    mov        eax,ebx
 004E4337    mov        ecx,dword ptr [eax]
 004E4339    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E433C    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E433F    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E4343    jne        004E43D2
 004E4349    lea        eax,[ebp-18]
 004E434C    call       @VarClr
 004E4351    push       eax
 004E4352    lea        eax,[ebp-1C]
 004E4355    call       @IntfClear
 004E435A    push       eax
 004E435B    lea        eax,[ebp-2C]
 004E435E    mov        edx,esi
 004E4360    sub        edx,1
>004E4363    jno        004E436A
 004E4365    call       @IntOver
 004E436A    mov        cl,0FC
 004E436C    call       @OleVarFromInt
 004E4371    push       dword ptr [ebp-20]
 004E4374    push       dword ptr [ebp-24]
 004E4377    push       dword ptr [ebp-28]
 004E437A    push       dword ptr [ebp-2C]
 004E437D    lea        eax,[ebp-30]
 004E4380    call       @IntfClear
 004E4385    push       eax
 004E4386    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E4389    push       eax
 004E438A    mov        eax,dword ptr [eax]
 004E438C    call       dword ptr [eax+54]
 004E438F    call       @CheckAutoResult
 004E4394    mov        eax,dword ptr [ebp-30]
 004E4397    push       eax
 004E4398    mov        eax,dword ptr [eax]
 004E439A    call       dword ptr [eax+28]
 004E439D    call       @CheckAutoResult
 004E43A2    mov        eax,dword ptr [ebp-1C]
 004E43A5    push       eax
 004E43A6    mov        eax,dword ptr [eax]
 004E43A8    call       dword ptr [eax+34]
 004E43AB    call       @CheckAutoResult
 004E43B0    lea        edx,[ebp-18]
 004E43B3    lea        eax,[ebp-8]
 004E43B6    mov        ecx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E43BC    call       @VarToDynArray
 004E43C1    mov        edx,dword ptr [ebp-8]
 004E43C4    mov        eax,dword ptr [ebp-4]
 004E43C7    mov        ecx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E43CD    call       @DynArrayAsg
 004E43D2    xor        eax,eax
 004E43D4    pop        edx
 004E43D5    pop        ecx
 004E43D6    pop        ecx
 004E43D7    mov        dword ptr fs:[eax],edx
 004E43DA    push       4E4415
 004E43DF    lea        eax,[ebp-30]
 004E43E2    call       @IntfClear
 004E43E7    lea        eax,[ebp-2C]
 004E43EA    call       @VarClr
 004E43EF    lea        eax,[ebp-1C]
 004E43F2    call       @IntfClear
 004E43F7    lea        eax,[ebp-18]
 004E43FA    call       @VarClr
 004E43FF    lea        eax,[ebp-8]
 004E4402    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004E4408    call       @DynArrayClear
 004E440D    ret
<004E440E    jmp        @HandleFinally
<004E4413    jmp        004E43DF
 004E4415    pop        esi
 004E4416    pop        ebx
 004E4417    mov        esp,ebp
 004E4419    pop        ebp
 004E441A    ret
*}
//end;

//004E441C
//procedure sub_004E441C(?:?);
//begin
{*
 004E441C    push       ebp
 004E441D    mov        ebp,esp
 004E441F    mov        ecx,6
 004E4424    push       0
 004E4426    push       0
 004E4428    dec        ecx
<004E4429    jne        004E4424
 004E442B    push       ebx
 004E442C    push       esi
 004E442D    push       edi
 004E442E    mov        esi,edx
 004E4430    mov        ebx,eax
 004E4432    xor        eax,eax
 004E4434    push       ebp
 004E4435    push       4E4529
 004E443A    push       dword ptr fs:[eax]
 004E443D    mov        dword ptr fs:[eax],esp
 004E4440    xor        eax,eax
 004E4442    mov        dword ptr [ebp-8],eax
 004E4445    mov        dword ptr [ebp-4],eax
 004E4448    mov        edx,esi
 004E444A    mov        eax,ebx
 004E444C    mov        ecx,dword ptr [eax]
 004E444E    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E4451    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E4454    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E4458    jne        004E44FB
 004E445E    xor        eax,eax
 004E4460    push       ebp
 004E4461    push       4E44E9
 004E4466    push       dword ptr fs:[eax]
 004E4469    mov        dword ptr fs:[eax],esp
 004E446C    lea        eax,[ebp-18]
 004E446F    call       @VarClr
 004E4474    push       eax
 004E4475    lea        eax,[ebp-1C]
 004E4478    call       @IntfClear
 004E447D    push       eax
 004E447E    lea        eax,[ebp-2C]
 004E4481    mov        edx,esi
 004E4483    sub        edx,1
>004E4486    jno        004E448D
 004E4488    call       @IntOver
 004E448D    mov        cl,0FC
 004E448F    call       @OleVarFromInt
 004E4494    push       dword ptr [ebp-20]
 004E4497    push       dword ptr [ebp-24]
 004E449A    push       dword ptr [ebp-28]
 004E449D    push       dword ptr [ebp-2C]
 004E44A0    lea        eax,[ebp-30]
 004E44A3    call       @IntfClear
 004E44A8    push       eax
 004E44A9    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E44AC    push       eax
 004E44AD    mov        eax,dword ptr [eax]
 004E44AF    call       dword ptr [eax+54]
 004E44B2    call       @CheckAutoResult
 004E44B7    mov        eax,dword ptr [ebp-30]
 004E44BA    push       eax
 004E44BB    mov        eax,dword ptr [eax]
 004E44BD    call       dword ptr [eax+28]
 004E44C0    call       @CheckAutoResult
 004E44C5    mov        eax,dword ptr [ebp-1C]
 004E44C8    push       eax
 004E44C9    mov        eax,dword ptr [eax]
 004E44CB    call       dword ptr [eax+34]
 004E44CE    call       @CheckAutoResult
 004E44D3    lea        eax,[ebp-18]
 004E44D6    call       @VarToReal
 004E44DB    fstp       qword ptr [ebp-8]
 004E44DE    wait
 004E44DF    xor        eax,eax
 004E44E1    pop        edx
 004E44E2    pop        ecx
 004E44E3    pop        ecx
 004E44E4    mov        dword ptr fs:[eax],edx
>004E44E7    jmp        004E44FB
<004E44E9    jmp        @HandleAnyException
 004E44EE    xor        eax,eax
 004E44F0    mov        dword ptr [ebp-8],eax
 004E44F3    mov        dword ptr [ebp-4],eax
 004E44F6    call       @DoneExcept
 004E44FB    xor        eax,eax
 004E44FD    pop        edx
 004E44FE    pop        ecx
 004E44FF    pop        ecx
 004E4500    mov        dword ptr fs:[eax],edx
 004E4503    push       4E4530
 004E4508    lea        eax,[ebp-30]
 004E450B    call       @IntfClear
 004E4510    lea        eax,[ebp-2C]
 004E4513    call       @VarClr
 004E4518    lea        eax,[ebp-1C]
 004E451B    call       @IntfClear
 004E4520    lea        eax,[ebp-18]
 004E4523    call       @VarClr
 004E4528    ret
<004E4529    jmp        @HandleFinally
<004E452E    jmp        004E4508
 004E4530    fld        qword ptr [ebp-8]
 004E4533    pop        edi
 004E4534    pop        esi
 004E4535    pop        ebx
 004E4536    mov        esp,ebp
 004E4538    pop        ebp
 004E4539    ret
*}
//end;

//004E453C
//procedure sub_004E453C(?:?);
//begin
{*
 004E453C    push       ebp
 004E453D    mov        ebp,esp
 004E453F    mov        ecx,6
 004E4544    push       0
 004E4546    push       0
 004E4548    dec        ecx
<004E4549    jne        004E4544
 004E454B    push       ebx
 004E454C    push       esi
 004E454D    push       edi
 004E454E    mov        esi,edx
 004E4550    mov        ebx,eax
 004E4552    xor        eax,eax
 004E4554    push       ebp
 004E4555    push       4E4649
 004E455A    push       dword ptr fs:[eax]
 004E455D    mov        dword ptr fs:[eax],esp
 004E4560    xor        eax,eax
 004E4562    mov        dword ptr [ebp-8],eax
 004E4565    mov        dword ptr [ebp-4],eax
 004E4568    mov        edx,esi
 004E456A    mov        eax,ebx
 004E456C    mov        ecx,dword ptr [eax]
 004E456E    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E4571    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E4574    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E4578    jne        004E461B
 004E457E    xor        eax,eax
 004E4580    push       ebp
 004E4581    push       4E4609
 004E4586    push       dword ptr fs:[eax]
 004E4589    mov        dword ptr fs:[eax],esp
 004E458C    lea        eax,[ebp-18]
 004E458F    call       @VarClr
 004E4594    push       eax
 004E4595    lea        eax,[ebp-1C]
 004E4598    call       @IntfClear
 004E459D    push       eax
 004E459E    lea        eax,[ebp-2C]
 004E45A1    mov        edx,esi
 004E45A3    sub        edx,1
>004E45A6    jno        004E45AD
 004E45A8    call       @IntOver
 004E45AD    mov        cl,0FC
 004E45AF    call       @OleVarFromInt
 004E45B4    push       dword ptr [ebp-20]
 004E45B7    push       dword ptr [ebp-24]
 004E45BA    push       dword ptr [ebp-28]
 004E45BD    push       dword ptr [ebp-2C]
 004E45C0    lea        eax,[ebp-30]
 004E45C3    call       @IntfClear
 004E45C8    push       eax
 004E45C9    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E45CC    push       eax
 004E45CD    mov        eax,dword ptr [eax]
 004E45CF    call       dword ptr [eax+54]
 004E45D2    call       @CheckAutoResult
 004E45D7    mov        eax,dword ptr [ebp-30]
 004E45DA    push       eax
 004E45DB    mov        eax,dword ptr [eax]
 004E45DD    call       dword ptr [eax+28]
 004E45E0    call       @CheckAutoResult
 004E45E5    mov        eax,dword ptr [ebp-1C]
 004E45E8    push       eax
 004E45E9    mov        eax,dword ptr [eax]
 004E45EB    call       dword ptr [eax+34]
 004E45EE    call       @CheckAutoResult
 004E45F3    lea        eax,[ebp-18]
 004E45F6    call       @VarToReal
 004E45FB    fstp       qword ptr [ebp-8]
 004E45FE    wait
 004E45FF    xor        eax,eax
 004E4601    pop        edx
 004E4602    pop        ecx
 004E4603    pop        ecx
 004E4604    mov        dword ptr fs:[eax],edx
>004E4607    jmp        004E461B
<004E4609    jmp        @HandleAnyException
 004E460E    xor        eax,eax
 004E4610    mov        dword ptr [ebp-8],eax
 004E4613    mov        dword ptr [ebp-4],eax
 004E4616    call       @DoneExcept
 004E461B    xor        eax,eax
 004E461D    pop        edx
 004E461E    pop        ecx
 004E461F    pop        ecx
 004E4620    mov        dword ptr fs:[eax],edx
 004E4623    push       4E4650
 004E4628    lea        eax,[ebp-30]
 004E462B    call       @IntfClear
 004E4630    lea        eax,[ebp-2C]
 004E4633    call       @VarClr
 004E4638    lea        eax,[ebp-1C]
 004E463B    call       @IntfClear
 004E4640    lea        eax,[ebp-18]
 004E4643    call       @VarClr
 004E4648    ret
<004E4649    jmp        @HandleFinally
<004E464E    jmp        004E4628
 004E4650    fld        qword ptr [ebp-8]
 004E4653    pop        edi
 004E4654    pop        esi
 004E4655    pop        ebx
 004E4656    mov        esp,ebp
 004E4658    pop        ebp
 004E4659    ret
*}
//end;

//004E465C
//procedure sub_004E465C(?:?);
//begin
{*
 004E465C    push       ebp
 004E465D    mov        ebp,esp
 004E465F    mov        ecx,6
 004E4664    push       0
 004E4666    push       0
 004E4668    dec        ecx
<004E4669    jne        004E4664
 004E466B    push       ebx
 004E466C    push       esi
 004E466D    push       edi
 004E466E    mov        esi,edx
 004E4670    mov        ebx,eax
 004E4672    xor        eax,eax
 004E4674    push       ebp
 004E4675    push       4E4769
 004E467A    push       dword ptr fs:[eax]
 004E467D    mov        dword ptr fs:[eax],esp
 004E4680    xor        eax,eax
 004E4682    mov        dword ptr [ebp-8],eax
 004E4685    mov        dword ptr [ebp-4],eax
 004E4688    mov        edx,esi
 004E468A    mov        eax,ebx
 004E468C    mov        ecx,dword ptr [eax]
 004E468E    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E4691    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E4694    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E4698    jne        004E473B
 004E469E    xor        eax,eax
 004E46A0    push       ebp
 004E46A1    push       4E4729
 004E46A6    push       dword ptr fs:[eax]
 004E46A9    mov        dword ptr fs:[eax],esp
 004E46AC    lea        eax,[ebp-18]
 004E46AF    call       @VarClr
 004E46B4    push       eax
 004E46B5    lea        eax,[ebp-1C]
 004E46B8    call       @IntfClear
 004E46BD    push       eax
 004E46BE    lea        eax,[ebp-2C]
 004E46C1    mov        edx,esi
 004E46C3    sub        edx,1
>004E46C6    jno        004E46CD
 004E46C8    call       @IntOver
 004E46CD    mov        cl,0FC
 004E46CF    call       @OleVarFromInt
 004E46D4    push       dword ptr [ebp-20]
 004E46D7    push       dword ptr [ebp-24]
 004E46DA    push       dword ptr [ebp-28]
 004E46DD    push       dword ptr [ebp-2C]
 004E46E0    lea        eax,[ebp-30]
 004E46E3    call       @IntfClear
 004E46E8    push       eax
 004E46E9    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E46EC    push       eax
 004E46ED    mov        eax,dword ptr [eax]
 004E46EF    call       dword ptr [eax+54]
 004E46F2    call       @CheckAutoResult
 004E46F7    mov        eax,dword ptr [ebp-30]
 004E46FA    push       eax
 004E46FB    mov        eax,dword ptr [eax]
 004E46FD    call       dword ptr [eax+28]
 004E4700    call       @CheckAutoResult
 004E4705    mov        eax,dword ptr [ebp-1C]
 004E4708    push       eax
 004E4709    mov        eax,dword ptr [eax]
 004E470B    call       dword ptr [eax+34]
 004E470E    call       @CheckAutoResult
 004E4713    lea        eax,[ebp-18]
 004E4716    call       @VarToReal
 004E471B    fstp       qword ptr [ebp-8]
 004E471E    wait
 004E471F    xor        eax,eax
 004E4721    pop        edx
 004E4722    pop        ecx
 004E4723    pop        ecx
 004E4724    mov        dword ptr fs:[eax],edx
>004E4727    jmp        004E473B
<004E4729    jmp        @HandleAnyException
 004E472E    xor        eax,eax
 004E4730    mov        dword ptr [ebp-8],eax
 004E4733    mov        dword ptr [ebp-4],eax
 004E4736    call       @DoneExcept
 004E473B    xor        eax,eax
 004E473D    pop        edx
 004E473E    pop        ecx
 004E473F    pop        ecx
 004E4740    mov        dword ptr fs:[eax],edx
 004E4743    push       4E4770
 004E4748    lea        eax,[ebp-30]
 004E474B    call       @IntfClear
 004E4750    lea        eax,[ebp-2C]
 004E4753    call       @VarClr
 004E4758    lea        eax,[ebp-1C]
 004E475B    call       @IntfClear
 004E4760    lea        eax,[ebp-18]
 004E4763    call       @VarClr
 004E4768    ret
<004E4769    jmp        @HandleFinally
<004E476E    jmp        004E4748
 004E4770    fld        qword ptr [ebp-8]
 004E4773    pop        edi
 004E4774    pop        esi
 004E4775    pop        ebx
 004E4776    mov        esp,ebp
 004E4778    pop        ebp
 004E4779    ret
*}
//end;

//004E477C
//procedure sub_004E477C(?:?; ?:?);
//begin
{*
 004E477C    push       ebp
 004E477D    mov        ebp,esp
 004E477F    push       ecx
 004E4780    mov        ecx,6
 004E4785    push       0
 004E4787    push       0
 004E4789    dec        ecx
<004E478A    jne        004E4785
 004E478C    xchg       ecx,dword ptr [ebp-4]
 004E478F    push       ebx
 004E4790    push       esi
 004E4791    mov        esi,ecx
 004E4793    mov        dword ptr [ebp-4],edx
 004E4796    mov        ebx,eax
 004E4798    xor        eax,eax
 004E479A    push       ebp
 004E479B    push       4E4918
 004E47A0    push       dword ptr fs:[eax]
 004E47A3    mov        dword ptr fs:[eax],esp
 004E47A6    mov        eax,esi
 004E47A8    call       @IntfClear
 004E47AD    mov        edx,dword ptr [ebp-4]
 004E47B0    mov        eax,ebx
 004E47B2    mov        ecx,dword ptr [eax]
 004E47B4    call       dword ptr [ecx+10]; TZAdoResultSet.sub_004E363C
 004E47B7    mov        byte ptr [ebx+34],al; TZAdoResultSet.?f34:byte
 004E47BA    cmp        byte ptr [ebx+34],0; TZAdoResultSet.?f34:byte
>004E47BE    jne        004E48E2
 004E47C4    lea        eax,[ebp-18]
 004E47C7    call       @VarClr
 004E47CC    push       eax
 004E47CD    lea        eax,[ebp-1C]
 004E47D0    call       @IntfClear
 004E47D5    push       eax
 004E47D6    lea        eax,[ebp-2C]
 004E47D9    mov        edx,dword ptr [ebp-4]
 004E47DC    sub        edx,1
>004E47DF    jno        004E47E6
 004E47E1    call       @IntOver
 004E47E6    mov        cl,0FC
 004E47E8    call       @OleVarFromInt
 004E47ED    push       dword ptr [ebp-20]
 004E47F0    push       dword ptr [ebp-24]
 004E47F3    push       dword ptr [ebp-28]
 004E47F6    push       dword ptr [ebp-2C]
 004E47F9    lea        eax,[ebp-30]
 004E47FC    call       @IntfClear
 004E4801    push       eax
 004E4802    mov        eax,dword ptr [ebx+48]; TZAdoResultSet.?f48:Recordset15
 004E4805    push       eax
 004E4806    mov        eax,dword ptr [eax]
 004E4808    call       dword ptr [eax+54]
 004E480B    call       @CheckAutoResult
 004E4810    mov        eax,dword ptr [ebp-30]
 004E4813    push       eax
 004E4814    mov        eax,dword ptr [eax]
 004E4816    call       dword ptr [eax+28]
 004E4819    call       @CheckAutoResult
 004E481E    mov        eax,dword ptr [ebp-1C]
 004E4821    push       eax
 004E4822    mov        eax,dword ptr [eax]
 004E4824    call       dword ptr [eax+34]
 004E4827    call       @CheckAutoResult
 004E482C    lea        eax,[ebp-18]
 004E482F    call       VarIsStr
 004E4834    test       al,al
>004E4836    je         004E486B
 004E4838    xor        ecx,ecx
 004E483A    mov        dl,1
 004E483C    mov        eax,[004D3F38]; TZAbstractBlob
 004E4841    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004E4846    mov        edx,eax
 004E4848    test       edx,edx
>004E484A    je         004E484F
 004E484C    sub        edx,0FFFFFFE8
 004E484F    mov        eax,esi
 004E4851    call       @IntfCopy
 004E4856    lea        eax,[ebp-34]
 004E4859    lea        edx,[ebp-18]
 004E485C    call       @VarToLStr
 004E4861    mov        edx,dword ptr [ebp-34]
 004E4864    mov        eax,dword ptr [esi]
 004E4866    mov        ecx,dword ptr [eax]
 004E4868    call       dword ptr [ecx+1C]
 004E486B    lea        eax,[ebp-18]
 004E486E    call       VarIsArray
 004E4873    test       al,al
>004E4875    je         004E48E2
 004E4877    lea        eax,[ebp-18]
 004E487A    call       VarArrayLock
 004E487F    mov        ebx,eax
 004E4881    xor        eax,eax
 004E4883    push       ebp
 004E4884    push       4E48DB
 004E4889    push       dword ptr fs:[eax]
 004E488C    mov        dword ptr fs:[eax],esp
 004E488F    lea        eax,[ebp-18]
 004E4892    mov        edx,1
 004E4897    call       VarArrayHighBound
 004E489C    add        eax,1
>004E489F    jno        004E48A6
 004E48A1    call       @IntOver
 004E48A6    push       eax
 004E48A7    mov        ecx,ebx
 004E48A9    mov        dl,1
 004E48AB    mov        eax,[004D3F38]; TZAbstractBlob
 004E48B0    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004E48B5    mov        edx,eax
 004E48B7    test       edx,edx
>004E48B9    je         004E48BE
 004E48BB    sub        edx,0FFFFFFE8
 004E48BE    mov        eax,esi
 004E48C0    call       @IntfCopy
 004E48C5    xor        eax,eax
 004E48C7    pop        edx
 004E48C8    pop        ecx
 004E48C9    pop        ecx
 004E48CA    mov        dword ptr fs:[eax],edx
 004E48CD    push       4E48E2
 004E48D2    lea        eax,[ebp-18]
 004E48D5    call       VarArrayUnlock
 004E48DA    ret
<004E48DB    jmp        @HandleFinally
<004E48E0    jmp        004E48D2
 004E48E2    xor        eax,eax
 004E48E4    pop        edx
 004E48E5    pop        ecx
 004E48E6    pop        ecx
 004E48E7    mov        dword ptr fs:[eax],edx
 004E48EA    push       4E491F
 004E48EF    lea        eax,[ebp-34]
 004E48F2    call       @LStrClr
 004E48F7    lea        eax,[ebp-30]
 004E48FA    call       @IntfClear
 004E48FF    lea        eax,[ebp-2C]
 004E4902    call       @VarClr
 004E4907    lea        eax,[ebp-1C]
 004E490A    call       @IntfClear
 004E490F    lea        eax,[ebp-18]
 004E4912    call       @VarClr
 004E4917    ret
<004E4918    jmp        @HandleFinally
<004E491D    jmp        004E48EF
 004E491F    pop        esi
 004E4920    pop        ebx
 004E4921    mov        esp,ebp
 004E4923    pop        ebp
 004E4924    ret
*}
//end;

//004E4928
//constructor TZAdoCachedResolver.Create(?:TZAdoCachedResolver; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004E4928    push       ebp
 004E4929    mov        ebp,esp
 004E492B    add        esp,0FFFFFFF4
 004E492E    push       ebx
 004E492F    push       esi
 004E4930    push       edi
 004E4931    xor        ebx,ebx
 004E4933    mov        dword ptr [ebp-0C],ebx
 004E4936    test       dl,dl
>004E4938    je         004E4942
 004E493A    add        esp,0FFFFFFF0
 004E493D    call       @ClassCreate
 004E4942    mov        dword ptr [ebp-8],ecx
 004E4945    mov        byte ptr [ebp-1],dl
 004E4948    mov        edi,eax
 004E494A    mov        eax,dword ptr [ebp-8]
 004E494D    call       @IntfAddRef
 004E4952    mov        eax,dword ptr [ebp+0C]
 004E4955    call       @IntfAddRef
 004E495A    mov        eax,dword ptr [ebp+8]
 004E495D    call       @IntfAddRef
 004E4962    xor        eax,eax
 004E4964    push       ebp
 004E4965    push       4E4A3A
 004E496A    push       dword ptr fs:[eax]
 004E496D    mov        dword ptr fs:[eax],esp
 004E4970    mov        eax,dword ptr [ebp+8]
 004E4973    push       eax
 004E4974    mov        ecx,dword ptr [ebp+0C]
 004E4977    xor        edx,edx
 004E4979    mov        eax,edi
 004E497B    call       TZGenericCachedResolver.Create
 004E4980    lea        edx,[ebp-0C]
 004E4983    mov        eax,[004DE730]; CoCommand
 004E4988    call       004DE844
 004E498D    mov        edx,dword ptr [ebp-0C]
 004E4990    lea        eax,[edi+30]; TZAdoCachedResolver.?f30:_Command
 004E4993    call       @IntfCopy
 004E4998    mov        eax,dword ptr [ebp-8]
 004E499B    push       eax
 004E499C    mov        eax,dword ptr [edi+30]; TZAdoCachedResolver.?f30:_Command
 004E499F    push       eax
 004E49A0    mov        eax,dword ptr [eax]
 004E49A2    call       dword ptr [eax+24]
 004E49A5    call       @CheckAutoResult
 004E49AA    push       4E4A68
 004E49AF    mov        eax,dword ptr [edi+30]; TZAdoCachedResolver.?f30:_Command
 004E49B2    push       eax
 004E49B3    mov        eax,dword ptr [eax]
 004E49B5    call       dword ptr [eax+30]
 004E49B8    call       @CheckAutoResult
 004E49BD    push       1
 004E49BF    mov        eax,dword ptr [edi+30]; TZAdoCachedResolver.?f30:_Command
 004E49C2    push       eax
 004E49C3    mov        eax,dword ptr [eax]
 004E49C5    call       dword ptr [eax+50]
 004E49C8    call       @CheckAutoResult
 004E49CD    xor        eax,eax
 004E49CF    mov        dword ptr [edi+34],eax; TZAdoCachedResolver.?f34:dword
 004E49D2    mov        eax,dword ptr [ebp+8]
 004E49D5    mov        edx,dword ptr [eax]
 004E49D7    call       dword ptr [edx+0C]
 004E49DA    mov        esi,eax
 004E49DC    test       esi,esi
>004E49DE    jle        004E4A0C
 004E49E0    mov        ebx,1
 004E49E5    mov        edx,ebx
 004E49E7    mov        eax,dword ptr [ebp+8]
 004E49EA    mov        ecx,dword ptr [eax]
 004E49EC    call       dword ptr [ecx+10]
 004E49EF    test       al,al
>004E49F1    je         004E4A08
 004E49F3    mov        edx,ebx
 004E49F5    mov        eax,dword ptr [ebp+8]
 004E49F8    mov        ecx,dword ptr [eax]
 004E49FA    call       dword ptr [ecx+48]
 004E49FD    add        al,0FE
 004E49FF    sub        al,4
>004E4A01    jae        004E4A08
 004E4A03    mov        dword ptr [edi+34],ebx; TZAdoCachedResolver.?f34:dword
>004E4A06    jmp        004E4A0C
 004E4A08    inc        ebx
 004E4A09    dec        esi
<004E4A0A    jne        004E49E5
 004E4A0C    xor        eax,eax
 004E4A0E    pop        edx
 004E4A0F    pop        ecx
 004E4A10    pop        ecx
 004E4A11    mov        dword ptr fs:[eax],edx
 004E4A14    push       4E4A41
 004E4A19    lea        eax,[ebp-0C]
 004E4A1C    call       @IntfClear
 004E4A21    lea        eax,[ebp-8]
 004E4A24    call       @IntfClear
 004E4A29    lea        eax,[ebp+8]
 004E4A2C    call       @IntfClear
 004E4A31    lea        eax,[ebp+0C]
 004E4A34    call       @IntfClear
 004E4A39    ret
<004E4A3A    jmp        @HandleFinally
<004E4A3F    jmp        004E4A19
 004E4A41    mov        eax,edi
 004E4A43    cmp        byte ptr [ebp-1],0
>004E4A47    je         004E4A58
 004E4A49    call       @AfterConstruction
 004E4A4E    pop        dword ptr fs:[0]
 004E4A55    add        esp,0C
 004E4A58    mov        eax,edi
 004E4A5A    pop        edi
 004E4A5B    pop        esi
 004E4A5C    pop        ebx
 004E4A5D    mov        esp,ebp
 004E4A5F    pop        ebp
 004E4A60    ret        8
*}
//end;

//004E4A8C
//procedure sub_004E4A8C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E4A8C    push       ebp
 004E4A8D    mov        ebp,esp
 004E4A8F    push       ecx
 004E4A90    mov        ecx,0C
 004E4A95    push       0
 004E4A97    push       0
 004E4A99    dec        ecx
<004E4A9A    jne        004E4A95
 004E4A9C    xchg       ecx,dword ptr [ebp-4]
 004E4A9F    push       ebx
 004E4AA0    push       esi
 004E4AA1    push       edi
 004E4AA2    mov        ebx,ecx
 004E4AA4    mov        dword ptr [ebp-4],edx
 004E4AA7    mov        esi,eax
 004E4AA9    mov        edi,dword ptr [ebp+0C]
 004E4AAC    mov        eax,dword ptr [ebp-4]
 004E4AAF    call       @IntfAddRef
 004E4AB4    xor        eax,eax
 004E4AB6    push       ebp
 004E4AB7    push       4E4C14
 004E4ABC    push       dword ptr fs:[eax]
 004E4ABF    mov        dword ptr fs:[eax],esp
 004E4AC2    push       edi
 004E4AC3    mov        eax,dword ptr [ebp+8]
 004E4AC6    push       eax
 004E4AC7    mov        ecx,ebx
 004E4AC9    mov        edx,dword ptr [ebp-4]
 004E4ACC    mov        eax,esi
 004E4ACE    call       004CF2B8
 004E4AD3    cmp        bl,2
>004E4AD6    jne        004E4BBB
 004E4ADC    cmp        dword ptr [esi+34],0; TZAdoCachedResolver.?f34:dword
>004E4AE0    jle        004E4BBB
 004E4AE6    mov        edx,dword ptr [esi+34]; TZAdoCachedResolver.?f34:dword
 004E4AE9    mov        eax,edi
 004E4AEB    call       004C9638
 004E4AF0    test       al,al
>004E4AF2    je         004E4BBB
 004E4AF8    lea        eax,[ebp-8]
 004E4AFB    call       @IntfClear
 004E4B00    push       eax
 004E4B01    push       0
 004E4B03    lea        eax,[ebp-38]
 004E4B06    call       Null
 004E4B0B    lea        edx,[ebp-38]
 004E4B0E    lea        eax,[ebp-28]
 004E4B11    call       @OleVarFromVar
 004E4B16    lea        eax,[ebp-28]
 004E4B19    push       eax
 004E4B1A    lea        eax,[ebp-18]
 004E4B1D    call       @VarClr
 004E4B22    push       eax
 004E4B23    mov        eax,dword ptr [esi+30]; TZAdoCachedResolver.?f30:_Command
 004E4B26    push       eax
 004E4B27    mov        eax,dword ptr [eax]
 004E4B29    call       dword ptr [eax+44]
 004E4B2C    call       @CheckAutoResult
 004E4B31    lea        eax,[ebp-3C]
 004E4B34    push       eax
 004E4B35    mov        eax,dword ptr [ebp-8]
 004E4B38    push       eax
 004E4B39    mov        eax,dword ptr [eax]
 004E4B3B    call       dword ptr [eax+68]
 004E4B3E    call       @CheckAutoResult
 004E4B43    cmp        dword ptr [ebp-3C],0
>004E4B47    jle        004E4BBB
 004E4B49    lea        eax,[ebp-4C]
 004E4B4C    call       @VarClr
 004E4B51    push       eax
 004E4B52    lea        eax,[ebp-50]
 004E4B55    call       @IntfClear
 004E4B5A    push       eax
 004E4B5B    lea        eax,[ebp-60]
 004E4B5E    xor        edx,edx
 004E4B60    mov        cl,1
 004E4B62    call       @OleVarFromInt
 004E4B67    push       dword ptr [ebp-54]
 004E4B6A    push       dword ptr [ebp-58]
 004E4B6D    push       dword ptr [ebp-5C]
 004E4B70    push       dword ptr [ebp-60]
 004E4B73    lea        eax,[ebp-64]
 004E4B76    call       @IntfClear
 004E4B7B    push       eax
 004E4B7C    mov        eax,dword ptr [ebp-8]
 004E4B7F    push       eax
 004E4B80    mov        eax,dword ptr [eax]
 004E4B82    call       dword ptr [eax+54]
 004E4B85    call       @CheckAutoResult
 004E4B8A    mov        eax,dword ptr [ebp-64]
 004E4B8D    push       eax
 004E4B8E    mov        eax,dword ptr [eax]
 004E4B90    call       dword ptr [eax+28]
 004E4B93    call       @CheckAutoResult
 004E4B98    mov        eax,dword ptr [ebp-50]
 004E4B9B    push       eax
 004E4B9C    mov        eax,dword ptr [eax]
 004E4B9E    call       dword ptr [eax+34]
 004E4BA1    call       @CheckAutoResult
 004E4BA6    lea        eax,[ebp-4C]
 004E4BA9    call       @VarToInt64
 004E4BAE    push       edx
 004E4BAF    push       eax
 004E4BB0    mov        edx,dword ptr [esi+34]; TZAdoCachedResolver.?f34:dword
 004E4BB3    mov        eax,dword ptr [ebp+8]
 004E4BB6    call       004CC1D4
 004E4BBB    xor        eax,eax
 004E4BBD    pop        edx
 004E4BBE    pop        ecx
 004E4BBF    pop        ecx
 004E4BC0    mov        dword ptr fs:[eax],edx
 004E4BC3    push       4E4C1B
 004E4BC8    lea        eax,[ebp-64]
 004E4BCB    call       @IntfClear
 004E4BD0    lea        eax,[ebp-60]
 004E4BD3    call       @VarClr
 004E4BD8    lea        eax,[ebp-50]
 004E4BDB    call       @IntfClear
 004E4BE0    lea        eax,[ebp-4C]
 004E4BE3    call       @VarClr
 004E4BE8    lea        eax,[ebp-38]
 004E4BEB    call       @VarClr
 004E4BF0    lea        eax,[ebp-28]
 004E4BF3    mov        edx,dword ptr ds:[401124]; OleVariant
 004E4BF9    mov        ecx,2
 004E4BFE    call       @FinalizeArray
 004E4C03    lea        eax,[ebp-8]
 004E4C06    call       @IntfClear
 004E4C0B    lea        eax,[ebp-4]
 004E4C0E    call       @IntfClear
 004E4C13    ret
<004E4C14    jmp        @HandleFinally
<004E4C19    jmp        004E4BC8
 004E4C1B    pop        edi
 004E4C1C    pop        esi
 004E4C1D    pop        ebx
 004E4C1E    mov        esp,ebp
 004E4C20    pop        ebp
 004E4C21    ret        8
*}
//end;

end.