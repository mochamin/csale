{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit210;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZPlainMySqlDriver;

type
  TZMySQLStatement = class(TZAbstractStatement)
  public
    f48:dword;//f48
    f4C:IZMySQLPlainDriver;//f4C
    f50:byte;//f50
    f54:String;//f54
    //procedure sub_00505CC0(?:?; ?:?); virtual;
    //function sub_00505D9C(?:?):?; virtual;
    //function sub_00505EC4(?:?):?; virtual;
    //function sub_00505FB4:?; virtual;
    //constructor Create(?:TZMySQLStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;
  TZMySQLPreparedStatement = class(TZEmulatedPreparedStatement)
  public
    f6C:dword;//f6C
    f70:IZMySQLPlainDriver;//f70
    //procedure sub_0050613C(?:?); virtual;
    //procedure sub_00506294(?:?; ?:?); virtual;
    //constructor Create(?:TZMySQLPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00505A88
//constructor TZMySQLStatement.Create(?:TZMySQLStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 00505A88    push       ebp
 00505A89    mov        ebp,esp
 00505A8B    push       0
 00505A8D    push       0
 00505A8F    push       0
 00505A91    push       ebx
 00505A92    push       esi
 00505A93    test       dl,dl
>00505A95    je         00505A9F
 00505A97    add        esp,0FFFFFFF0
 00505A9A    call       @ClassCreate
 00505A9F    mov        dword ptr [ebp-4],ecx
 00505AA2    mov        ebx,edx
 00505AA4    mov        esi,eax
 00505AA6    mov        eax,dword ptr [ebp-4]
 00505AA9    call       @IntfAddRef
 00505AAE    mov        eax,dword ptr [ebp+10]
 00505AB1    call       @IntfAddRef
 00505AB6    xor        eax,eax
 00505AB8    push       ebp
 00505AB9    push       505B4E
 00505ABE    push       dword ptr fs:[eax]
 00505AC1    mov        dword ptr fs:[eax],esp
 00505AC4    mov        eax,dword ptr [ebp+0C]
 00505AC7    push       eax
 00505AC8    mov        ecx,dword ptr [ebp+10]
 00505ACB    xor        edx,edx
 00505ACD    mov        eax,esi
 00505ACF    call       004DFC94
 00505AD4    mov        eax,dword ptr [ebp+8]
 00505AD7    mov        dword ptr [esi+48],eax; TZMySQLStatement.?f48:dword
 00505ADA    lea        eax,[esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505ADD    mov        edx,dword ptr [ebp-4]
 00505AE0    call       @IntfCopy
 00505AE5    mov        byte ptr [esi+2D],1; TZMySQLStatement.?f2D:byte
 00505AE9    lea        eax,[ebp-8]
 00505AEC    mov        edx,dword ptr [ebp+10]
 00505AEF    mov        ecx,505B74; ['{68E33DD3-4CDC-4BFC-8A28-E9F2EE94E457}']
 00505AF4    call       @IntfCast
 00505AF9    lea        eax,[ebp-0C]
 00505AFC    push       eax
 00505AFD    mov        eax,esi
 00505AFF    test       eax,eax
>00505B01    je         00505B06
 00505B03    sub        eax,0FFFFFFBC
 00505B06    mov        ecx,505B8C; 'false'
 00505B0B    mov        edx,505B9C; 'useresult'
 00505B10    call       004D30D4
 00505B15    mov        eax,dword ptr [ebp-0C]
 00505B18    call       004BEFC0
 00505B1D    mov        byte ptr [esi+50],al; TZMySQLStatement.?f50:byte
 00505B20    xor        eax,eax
 00505B22    pop        edx
 00505B23    pop        ecx
 00505B24    pop        ecx
 00505B25    mov        dword ptr fs:[eax],edx
 00505B28    push       505B55
 00505B2D    lea        eax,[ebp-0C]
 00505B30    call       @LStrClr
 00505B35    lea        eax,[ebp-8]
 00505B38    call       @IntfClear
 00505B3D    lea        eax,[ebp-4]
 00505B40    call       @IntfClear
 00505B45    lea        eax,[ebp+10]
 00505B48    call       @IntfClear
 00505B4D    ret
<00505B4E    jmp        @HandleFinally
<00505B53    jmp        00505B2D
 00505B55    mov        eax,esi
 00505B57    test       bl,bl
>00505B59    je         00505B6A
 00505B5B    call       @AfterConstruction
 00505B60    pop        dword ptr fs:[0]
 00505B67    add        esp,0C
 00505B6A    mov        eax,esi
 00505B6C    pop        esi
 00505B6D    pop        ebx
 00505B6E    mov        esp,ebp
 00505B70    pop        ebp
 00505B71    ret        0C
*}
//end;

//00505BAC
//procedure sub_00505BAC(?:TZMySQLStatement; ?:String; ?:?);
//begin
{*
 00505BAC    push       ebp
 00505BAD    mov        ebp,esp
 00505BAF    add        esp,0FFFFFFF8
 00505BB2    push       ebx
 00505BB3    push       esi
 00505BB4    push       edi
 00505BB5    xor        ebx,ebx
 00505BB7    mov        dword ptr [ebp-8],ebx
 00505BBA    mov        dword ptr [ebp-4],ecx
 00505BBD    mov        edi,edx
 00505BBF    mov        ebx,eax
 00505BC1    xor        eax,eax
 00505BC3    push       ebp
 00505BC4    push       505CB0
 00505BC9    push       dword ptr fs:[eax]
 00505BCC    mov        dword ptr fs:[eax],esp
 00505BCF    mov        eax,ebx
 00505BD1    test       eax,eax
>00505BD3    je         00505BD8
 00505BD5    sub        eax,0FFFFFFBC
 00505BD8    push       eax
 00505BD9    push       edi
 00505BDA    mov        eax,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505BDD    push       eax
 00505BDE    mov        al,byte ptr [ebx+50]; TZMySQLStatement.?f50:byte
 00505BE1    push       eax
 00505BE2    mov        ecx,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505BE5    mov        dl,1
 00505BE7    mov        eax,[00503DD8]; TZMySQLResultSet
 00505BEC    call       TZMySQLResultSet.Create; TZMySQLResultSet.Create
 00505BF1    mov        esi,eax
 00505BF3    xor        edx,edx
 00505BF5    mov        eax,esi
 00505BF7    call       004D4578
 00505BFC    mov        eax,ebx
 00505BFE    mov        edx,dword ptr [eax]
 00505C00    call       dword ptr [edx+58]; TZMySQLStatement.sub_004DFF74
 00505C03    test       al,al
>00505C05    jne        00505C18
 00505C07    cmp        byte ptr [ebx+50],0; TZMySQLStatement.?f50:byte
>00505C0B    je         00505C89
 00505C0D    mov        eax,ebx
 00505C0F    mov        edx,dword ptr [eax]
 00505C11    call       dword ptr [edx+60]; TZMySQLStatement.sub_004DFF7C
 00505C14    test       al,al
>00505C16    je         00505C89
 00505C18    mov        eax,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505C1B    push       eax
 00505C1C    mov        eax,ebx
 00505C1E    test       eax,eax
>00505C20    je         00505C25
 00505C22    sub        eax,0FFFFFFBC
 00505C25    push       eax
 00505C26    lea        edx,[ebp-8]
 00505C29    mov        eax,esi
 00505C2B    mov        ecx,dword ptr [eax]
 00505C2D    call       dword ptr [ecx+0C4]; TZMySQLResultSet.sub_004D4E80
 00505C33    mov        eax,dword ptr [ebp-8]
 00505C36    push       eax
 00505C37    mov        ecx,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505C3A    mov        dl,1
 00505C3C    mov        eax,[005040A8]; TZMySQLCachedResolver
 00505C41    call       TZMySQLCachedResolver.Create; TZMySQLCachedResolver.Create
 00505C46    push       edi
 00505C47    test       eax,eax
>00505C49    je         00505C4E
 00505C4B    sub        eax,0FFFFFFC4
 00505C4E    push       eax
 00505C4F    mov        ecx,esi
 00505C51    test       ecx,ecx
>00505C53    je         00505C58
 00505C55    sub        ecx,0FFFFFFC8
 00505C58    mov        dl,1
 00505C5A    mov        eax,[004D060C]; TZCachedResultSet
 00505C5F    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 00505C64    mov        esi,eax
 00505C66    mov        eax,ebx
 00505C68    mov        edx,dword ptr [eax]
 00505C6A    call       dword ptr [edx+58]; TZMySQLStatement.sub_004DFF74
 00505C6D    mov        edx,eax
 00505C6F    mov        eax,esi
 00505C71    call       004D4578
 00505C76    mov        eax,dword ptr [ebp-4]
 00505C79    mov        edx,esi
 00505C7B    test       edx,edx
>00505C7D    je         00505C82
 00505C7F    sub        edx,0FFFFFFC8
 00505C82    call       @IntfCopy
>00505C87    jmp        00505C9A
 00505C89    mov        eax,dword ptr [ebp-4]
 00505C8C    mov        edx,esi
 00505C8E    test       edx,edx
>00505C90    je         00505C95
 00505C92    sub        edx,0FFFFFFC8
 00505C95    call       @IntfCopy
 00505C9A    xor        eax,eax
 00505C9C    pop        edx
 00505C9D    pop        ecx
 00505C9E    pop        ecx
 00505C9F    mov        dword ptr fs:[eax],edx
 00505CA2    push       505CB7
 00505CA7    lea        eax,[ebp-8]
 00505CAA    call       @IntfClear
 00505CAF    ret
<00505CB0    jmp        @HandleFinally
<00505CB5    jmp        00505CA7
 00505CB7    pop        edi
 00505CB8    pop        esi
 00505CB9    pop        ebx
 00505CBA    pop        ecx
 00505CBB    pop        ecx
 00505CBC    pop        ebp
 00505CBD    ret
*}
//end;

//00505CC0
//procedure sub_00505CC0(?:?; ?:?);
//begin
{*
 00505CC0    push       ebp
 00505CC1    mov        ebp,esp
 00505CC3    push       0
 00505CC5    push       0
 00505CC7    push       0
 00505CC9    push       ebx
 00505CCA    push       esi
 00505CCB    push       edi
 00505CCC    mov        dword ptr [ebp-4],ecx
 00505CCF    mov        esi,edx
 00505CD1    mov        ebx,eax
 00505CD3    xor        eax,eax
 00505CD5    push       ebp
 00505CD6    push       505D8B
 00505CDB    push       dword ptr fs:[eax]
 00505CDE    mov        dword ptr fs:[eax],esp
 00505CE1    mov        eax,dword ptr [ebp-4]
 00505CE4    call       @IntfClear
 00505CE9    mov        eax,esi
 00505CEB    call       @LStrToPChar
 00505CF0    mov        ecx,eax
 00505CF2    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505CF5    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505CF8    mov        edi,dword ptr [eax]
 00505CFA    call       dword ptr [edi+9C]
 00505D00    test       eax,eax
>00505D02    jne        00505D62
 00505D04    push       esi
 00505D05    lea        edx,[ebp-8]
 00505D08    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505D0B    mov        ecx,dword ptr [eax]
 00505D0D    call       dword ptr [ecx+0C]
 00505D10    mov        ecx,dword ptr [ebp-8]
 00505D13    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00505D18    mov        eax,dword ptr [eax]
 00505D1A    mov        dl,3
 00505D1C    mov        edi,dword ptr [eax]
 00505D1E    call       dword ptr [edi+3C]
 00505D21    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505D24    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505D27    mov        ecx,dword ptr [eax]
 00505D29    call       dword ptr [ecx+13C]
 00505D2F    test       al,al
>00505D31    jne        00505D54
 00505D33    lea        edx,[ebp-0C]
 00505D36    mov        eax,[0061B2C0]; ^#122.sResString64:TResStringRec
 00505D3B    call       LoadResString
 00505D40    mov        ecx,dword ptr [ebp-0C]
 00505D43    mov        dl,1
 00505D45    mov        eax,[004C6D20]; EZSQLException
 00505D4A    call       EZSQLException.Create; EZSQLException.Create
 00505D4F    call       @RaiseExcept
 00505D54    mov        ecx,dword ptr [ebp-4]
 00505D57    mov        edx,esi
 00505D59    mov        eax,ebx
 00505D5B    call       00505BAC
>00505D60    jmp        00505D70
 00505D62    push       esi
 00505D63    mov        cl,3
 00505D65    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505D68    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505D6B    call       00503AE8
 00505D70    xor        eax,eax
 00505D72    pop        edx
 00505D73    pop        ecx
 00505D74    pop        ecx
 00505D75    mov        dword ptr fs:[eax],edx
 00505D78    push       505D92
 00505D7D    lea        eax,[ebp-0C]
 00505D80    mov        edx,2
 00505D85    call       @LStrArrayClr
 00505D8A    ret
<00505D8B    jmp        @HandleFinally
<00505D90    jmp        00505D7D
 00505D92    pop        edi
 00505D93    pop        esi
 00505D94    pop        ebx
 00505D95    mov        esp,ebp
 00505D97    pop        ebp
 00505D98    ret
*}
//end;

//00505D9C
//function sub_00505D9C(?:?):?;
//begin
{*
 00505D9C    push       ebp
 00505D9D    mov        ebp,esp
 00505D9F    add        esp,0FFFFFFF8
 00505DA2    push       ebx
 00505DA3    push       esi
 00505DA4    push       edi
 00505DA5    xor        ecx,ecx
 00505DA7    mov        dword ptr [ebp-8],ecx
 00505DAA    mov        dword ptr [ebp-4],edx
 00505DAD    mov        ebx,eax
 00505DAF    xor        eax,eax
 00505DB1    push       ebp
 00505DB2    push       505EB3
 00505DB7    push       dword ptr fs:[eax]
 00505DBA    mov        dword ptr fs:[eax],esp
 00505DBD    or         esi,0FFFFFFFF
 00505DC0    mov        eax,dword ptr [ebp-4]
 00505DC3    call       @LStrToPChar
 00505DC8    mov        ecx,eax
 00505DCA    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505DCD    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505DD0    mov        edi,dword ptr [eax]
 00505DD2    call       dword ptr [edi+9C]
 00505DD8    test       eax,eax
>00505DDA    jne        00505E89
 00505DE0    mov        eax,dword ptr [ebp-4]
 00505DE3    push       eax
 00505DE4    lea        edx,[ebp-8]
 00505DE7    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505DEA    mov        ecx,dword ptr [eax]
 00505DEC    call       dword ptr [ecx+0C]
 00505DEF    mov        ecx,dword ptr [ebp-8]
 00505DF2    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00505DF7    mov        eax,dword ptr [eax]
 00505DF9    mov        dl,3
 00505DFB    mov        esi,dword ptr [eax]
 00505DFD    call       dword ptr [esi+3C]
 00505E00    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505E03    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E06    mov        ecx,dword ptr [eax]
 00505E08    call       dword ptr [ecx+13C]
 00505E0E    test       al,al
>00505E10    je         00505E6C
 00505E12    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505E15    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E18    mov        ecx,dword ptr [eax]
 00505E1A    call       dword ptr [ecx+0C0]
 00505E20    mov        edi,eax
 00505E22    test       edi,edi
>00505E24    je         00505E4F
 00505E26    mov        edx,edi
 00505E28    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E2B    mov        ecx,dword ptr [eax]
 00505E2D    call       dword ptr [ecx+140]
 00505E33    push       eax
 00505E34    sar        eax,1F
 00505E37    cmp        eax,edx
 00505E39    pop        eax
>00505E3A    je         00505E41
 00505E3C    call       @BoundErr
 00505E41    mov        esi,eax
 00505E43    mov        edx,edi
 00505E45    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E48    mov        ecx,dword ptr [eax]
 00505E4A    call       dword ptr [ecx+60]
>00505E4D    jmp        00505E9A
 00505E4F    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505E52    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E55    mov        ecx,dword ptr [eax]
 00505E57    call       dword ptr [ecx+24]
 00505E5A    push       eax
 00505E5B    sar        eax,1F
 00505E5E    cmp        eax,edx
 00505E60    pop        eax
>00505E61    je         00505E68
 00505E63    call       @BoundErr
 00505E68    mov        esi,eax
>00505E6A    jmp        00505E9A
 00505E6C    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505E6F    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E72    mov        ecx,dword ptr [eax]
 00505E74    call       dword ptr [ecx+24]
 00505E77    push       eax
 00505E78    sar        eax,1F
 00505E7B    cmp        eax,edx
 00505E7D    pop        eax
>00505E7E    je         00505E85
 00505E80    call       @BoundErr
 00505E85    mov        esi,eax
>00505E87    jmp        00505E9A
 00505E89    mov        eax,dword ptr [ebp-4]
 00505E8C    push       eax
 00505E8D    mov        cl,3
 00505E8F    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505E92    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505E95    call       00503AE8
 00505E9A    mov        dword ptr [ebx+1C],esi; TZMySQLStatement.?f1C:Integer
 00505E9D    xor        eax,eax
 00505E9F    pop        edx
 00505EA0    pop        ecx
 00505EA1    pop        ecx
 00505EA2    mov        dword ptr fs:[eax],edx
 00505EA5    push       505EBA
 00505EAA    lea        eax,[ebp-8]
 00505EAD    call       @LStrClr
 00505EB2    ret
<00505EB3    jmp        @HandleFinally
<00505EB8    jmp        00505EAA
 00505EBA    mov        eax,esi
 00505EBC    pop        edi
 00505EBD    pop        esi
 00505EBE    pop        ebx
 00505EBF    pop        ecx
 00505EC0    pop        ecx
 00505EC1    pop        ebp
 00505EC2    ret
*}
//end;

//00505EC4
//function sub_00505EC4(?:?):?;
//begin
{*
 00505EC4    push       ebp
 00505EC5    mov        ebp,esp
 00505EC7    push       0
 00505EC9    push       0
 00505ECB    push       0
 00505ECD    push       ebx
 00505ECE    push       esi
 00505ECF    push       edi
 00505ED0    mov        esi,edx
 00505ED2    mov        ebx,eax
 00505ED4    xor        eax,eax
 00505ED6    push       ebp
 00505ED7    push       505FA3
 00505EDC    push       dword ptr fs:[eax]
 00505EDF    mov        dword ptr fs:[eax],esp
 00505EE2    mov        byte ptr [ebp-1],0
 00505EE6    lea        eax,[ebx+54]; TZMySQLStatement.?f54:String
 00505EE9    mov        edx,esi
 00505EEB    call       @LStrAsg
 00505EF0    mov        eax,esi
 00505EF2    call       @LStrToPChar
 00505EF7    mov        ecx,eax
 00505EF9    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505EFC    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505EFF    mov        edi,dword ptr [eax]
 00505F01    call       dword ptr [edi+9C]
 00505F07    test       eax,eax
>00505F09    jne        00505F77
 00505F0B    push       esi
 00505F0C    lea        edx,[ebp-8]
 00505F0F    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505F12    mov        ecx,dword ptr [eax]
 00505F14    call       dword ptr [ecx+0C]
 00505F17    mov        ecx,dword ptr [ebp-8]
 00505F1A    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00505F1F    mov        eax,dword ptr [eax]
 00505F21    mov        dl,3
 00505F23    mov        edi,dword ptr [eax]
 00505F25    call       dword ptr [edi+3C]
 00505F28    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505F2B    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505F2E    mov        ecx,dword ptr [eax]
 00505F30    call       dword ptr [ecx+13C]
 00505F36    test       al,al
>00505F38    je         00505F55
 00505F3A    mov        byte ptr [ebp-1],1
 00505F3E    lea        ecx,[ebp-0C]
 00505F41    mov        edx,esi
 00505F43    mov        eax,ebx
 00505F45    call       00505BAC
 00505F4A    mov        edx,dword ptr [ebp-0C]
 00505F4D    mov        eax,ebx
 00505F4F    mov        ecx,dword ptr [eax]
 00505F51    call       dword ptr [ecx]; TZMySQLStatement.sub_004DFE2C
>00505F53    jmp        00505F85
 00505F55    mov        byte ptr [ebp-1],0
 00505F59    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505F5C    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505F5F    mov        ecx,dword ptr [eax]
 00505F61    call       dword ptr [ecx+24]
 00505F64    push       eax
 00505F65    sar        eax,1F
 00505F68    cmp        eax,edx
 00505F6A    pop        eax
>00505F6B    je         00505F72
 00505F6D    call       @BoundErr
 00505F72    mov        dword ptr [ebx+1C],eax; TZMySQLStatement.?f1C:Integer
>00505F75    jmp        00505F85
 00505F77    push       esi
 00505F78    mov        cl,3
 00505F7A    mov        edx,dword ptr [ebx+48]; TZMySQLStatement.?f48:dword
 00505F7D    mov        eax,dword ptr [ebx+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505F80    call       00503AE8
 00505F85    xor        eax,eax
 00505F87    pop        edx
 00505F88    pop        ecx
 00505F89    pop        ecx
 00505F8A    mov        dword ptr fs:[eax],edx
 00505F8D    push       505FAA
 00505F92    lea        eax,[ebp-0C]
 00505F95    call       @IntfClear
 00505F9A    lea        eax,[ebp-8]
 00505F9D    call       @LStrClr
 00505FA2    ret
<00505FA3    jmp        @HandleFinally
<00505FA8    jmp        00505F92
 00505FAA    mov        al,byte ptr [ebp-1]
 00505FAD    pop        edi
 00505FAE    pop        esi
 00505FAF    pop        ebx
 00505FB0    mov        esp,ebp
 00505FB2    pop        ebp
 00505FB3    ret
*}
//end;

//00505FB4
//function sub_00505FB4:?;
//begin
{*
 00505FB4    push       ebp
 00505FB5    mov        ebp,esp
 00505FB7    push       0
 00505FB9    push       ebx
 00505FBA    push       esi
 00505FBB    mov        esi,eax
 00505FBD    xor        eax,eax
 00505FBF    push       ebp
 00505FC0    push       50608A
 00505FC5    push       dword ptr fs:[eax]
 00505FC8    mov        dword ptr fs:[eax],esp
 00505FCB    mov        eax,esi
 00505FCD    call       004DFF5C
 00505FD2    mov        ebx,eax
 00505FD4    mov        eax,dword ptr [esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505FD7    mov        edx,dword ptr [eax]
 00505FD9    call       dword ptr [edx+18]
 00505FDC    cmp        eax,9CA4
>00505FE1    jl         00506074
 00505FE7    mov        edx,dword ptr [esi+48]; TZMySQLStatement.?f48:dword
 00505FEA    mov        eax,dword ptr [esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00505FED    mov        ecx,dword ptr [eax]
 00505FEF    call       dword ptr [ecx+0DC]
 00505FF5    test       eax,eax
>00505FF7    jle        0050600C
 00505FF9    mov        eax,dword ptr [esi+54]; TZMySQLStatement.?f54:String
 00505FFC    push       eax
 00505FFD    mov        cl,3
 00505FFF    mov        edx,dword ptr [esi+48]; TZMySQLStatement.?f48:dword
 00506002    mov        eax,dword ptr [esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00506005    call       00503AE8
>0050600A    jmp        00506011
 0050600C    test       eax,eax
 0050600E    sete       bl
 00506011    cmp        dword ptr [esi+20],0; TZMySQLStatement.?f20:IZResultSet
>00506015    je         0050601F
 00506017    mov        eax,dword ptr [esi+20]; TZMySQLStatement.?f20:IZResultSet
 0050601A    mov        edx,dword ptr [eax]
 0050601C    call       dword ptr [edx+10]
 0050601F    xor        edx,edx
 00506021    mov        eax,esi
 00506023    mov        ecx,dword ptr [eax]
 00506025    call       dword ptr [ecx]; TZMySQLStatement.sub_004DFE2C
 00506027    mov        dword ptr [esi+1C],0FFFFFFFF; TZMySQLStatement.?f1C:Integer
 0050602E    mov        edx,dword ptr [esi+48]; TZMySQLStatement.?f48:dword
 00506031    mov        eax,dword ptr [esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 00506034    mov        ecx,dword ptr [eax]
 00506036    call       dword ptr [ecx+13C]
 0050603C    test       al,al
>0050603E    je         00506058
 00506040    lea        ecx,[ebp-4]
 00506043    mov        edx,dword ptr [esi+54]; TZMySQLStatement.?f54:String
 00506046    mov        eax,esi
 00506048    call       00505BAC
 0050604D    mov        edx,dword ptr [ebp-4]
 00506050    mov        eax,esi
 00506052    mov        ecx,dword ptr [eax]
 00506054    call       dword ptr [ecx]; TZMySQLStatement.sub_004DFE2C
>00506056    jmp        00506074
 00506058    mov        edx,dword ptr [esi+48]; TZMySQLStatement.?f48:dword
 0050605B    mov        eax,dword ptr [esi+4C]; TZMySQLStatement.?f4C:IZMySQLPlainDriver
 0050605E    mov        ecx,dword ptr [eax]
 00506060    call       dword ptr [ecx+24]
 00506063    push       eax
 00506064    sar        eax,1F
 00506067    cmp        eax,edx
 00506069    pop        eax
>0050606A    je         00506071
 0050606C    call       @BoundErr
 00506071    mov        dword ptr [esi+1C],eax; TZMySQLStatement.?f1C:Integer
 00506074    xor        eax,eax
 00506076    pop        edx
 00506077    pop        ecx
 00506078    pop        ecx
 00506079    mov        dword ptr fs:[eax],edx
 0050607C    push       506091
 00506081    lea        eax,[ebp-4]
 00506084    call       @IntfClear
 00506089    ret
<0050608A    jmp        @HandleFinally
<0050608F    jmp        00506081
 00506091    mov        eax,ebx
 00506093    pop        esi
 00506094    pop        ebx
 00506095    pop        ecx
 00506096    pop        ebp
 00506097    ret
*}
//end;

//00506098
//constructor TZMySQLPreparedStatement.Create(?:TZMySQLPreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00506098    push       ebp
 00506099    mov        ebp,esp
 0050609B    push       ecx
 0050609C    push       ebx
 0050609D    push       esi
 0050609E    test       dl,dl
>005060A0    je         005060AA
 005060A2    add        esp,0FFFFFFF0
 005060A5    call       @ClassCreate
 005060AA    mov        dword ptr [ebp-4],ecx
 005060AD    mov        ebx,edx
 005060AF    mov        esi,eax
 005060B1    mov        eax,dword ptr [ebp-4]
 005060B4    call       @IntfAddRef
 005060B9    mov        eax,dword ptr [ebp+14]
 005060BC    call       @IntfAddRef
 005060C1    xor        eax,eax
 005060C3    push       ebp
 005060C4    push       506116
 005060C9    push       dword ptr fs:[eax]
 005060CC    mov        dword ptr fs:[eax],esp
 005060CF    mov        eax,dword ptr [ebp+10]
 005060D2    push       eax
 005060D3    mov        eax,dword ptr [ebp+0C]
 005060D6    push       eax
 005060D7    mov        ecx,dword ptr [ebp+14]
 005060DA    xor        edx,edx
 005060DC    mov        eax,esi
 005060DE    call       004E0088
 005060E3    mov        eax,dword ptr [ebp+8]
 005060E6    mov        dword ptr [esi+6C],eax; TZMySQLPreparedStatement.?f6C:dword
 005060E9    lea        eax,[esi+70]; TZMySQLPreparedStatement.?f70:IZMySQLPlainDriver
 005060EC    mov        edx,dword ptr [ebp-4]
 005060EF    call       @IntfCopy
 005060F4    mov        byte ptr [esi+2D],1; TZMySQLPreparedStatement.?f2D:byte
 005060F8    xor        eax,eax
 005060FA    pop        edx
 005060FB    pop        ecx
 005060FC    pop        ecx
 005060FD    mov        dword ptr fs:[eax],edx
 00506100    push       50611D
 00506105    lea        eax,[ebp-4]
 00506108    call       @IntfClear
 0050610D    lea        eax,[ebp+14]
 00506110    call       @IntfClear
 00506115    ret
<00506116    jmp        @HandleFinally
<0050611B    jmp        00506105
 0050611D    mov        eax,esi
 0050611F    test       bl,bl
>00506121    je         00506132
 00506123    call       @AfterConstruction
 00506128    pop        dword ptr fs:[0]
 0050612F    add        esp,0C
 00506132    mov        eax,esi
 00506134    pop        esi
 00506135    pop        ebx
 00506136    pop        ecx
 00506137    pop        ebp
 00506138    ret        10
*}
//end;

//0050613C
//procedure sub_0050613C(?:?);
//begin
{*
 0050613C    push       ebp
 0050613D    mov        ebp,esp
 0050613F    push       ebx
 00506140    push       esi
 00506141    mov        esi,edx
 00506143    mov        ebx,eax
 00506145    mov        eax,dword ptr [ebx+38]; TZMySQLPreparedStatement.?f38:IZConnection
 00506148    push       eax
 00506149    mov        eax,dword ptr [ebx+3C]; TZMySQLPreparedStatement.?f3C:dword
 0050614C    push       eax
 0050614D    mov        eax,dword ptr [ebx+6C]; TZMySQLPreparedStatement.?f6C:dword
 00506150    push       eax
 00506151    mov        ecx,dword ptr [ebx+70]; TZMySQLPreparedStatement.?f70:IZMySQLPlainDriver
 00506154    mov        dl,1
 00506156    mov        eax,[00505828]; TZMySQLStatement
 0050615B    call       TZMySQLStatement.Create; TZMySQLStatement.Create
 00506160    mov        edx,eax
 00506162    test       edx,edx
>00506164    je         00506169
 00506166    sub        edx,0FFFFFFBC
 00506169    mov        eax,esi
 0050616B    call       @IntfCopy
 00506170    pop        esi
 00506171    pop        ebx
 00506172    pop        ebp
 00506173    ret
*}
//end;

//00506174
//procedure sub_00506174(?:TZMySQLPreparedStatement; ?:AnsiString; ?:?);
//begin
{*
 00506174    push       ebp
 00506175    mov        ebp,esp
 00506177    add        esp,0FFFFFFF0
 0050617A    push       ebx
 0050617B    push       esi
 0050617C    xor        ebx,ebx
 0050617E    mov        dword ptr [ebp-10],ebx
 00506181    mov        dword ptr [ebp-0C],ecx
 00506184    mov        dword ptr [ebp-8],edx
 00506187    mov        dword ptr [ebp-4],eax
 0050618A    xor        eax,eax
 0050618C    push       ebp
 0050618D    push       506278
 00506192    push       dword ptr fs:[eax]
 00506195    mov        dword ptr fs:[eax],esp
 00506198    mov        eax,dword ptr [ebp-8]
 0050619B    call       @LStrLen
 005061A0    imul       ebx,eax,2
>005061A3    jno        005061AA
 005061A5    call       @IntOver
 005061AA    add        ebx,1
>005061AD    jno        005061B4
 005061AF    call       @IntOver
 005061B4    mov        eax,ebx
 005061B6    call       @GetMem
 005061BB    mov        esi,eax
 005061BD    mov        eax,dword ptr [ebp-4]
 005061C0    mov        ebx,dword ptr [eax+6C]; TZMySQLPreparedStatement.?f6C:dword
 005061C3    test       ebx,ebx
>005061C5    jne        005061FD
 005061C7    mov        eax,dword ptr [ebp-8]
 005061CA    call       @LStrLen
 005061CF    test       eax,eax
>005061D1    jns        005061D8
 005061D3    call       @BoundErr
 005061D8    push       eax
 005061D9    mov        eax,dword ptr [ebp-8]
 005061DC    call       @LStrToPChar
 005061E1    mov        ecx,eax
 005061E3    mov        eax,dword ptr [ebp-4]
 005061E6    mov        eax,dword ptr [eax+70]; TZMySQLPreparedStatement.?f70:IZMySQLPlainDriver
 005061E9    mov        edx,esi
 005061EB    mov        ebx,dword ptr [eax]
 005061ED    call       dword ptr [ebx+4C]
 005061F0    mov        ebx,eax
 005061F2    test       ebx,ebx
>005061F4    jns        00506235
 005061F6    call       @BoundErr
>005061FB    jmp        00506235
 005061FD    mov        eax,dword ptr [ebp-8]
 00506200    call       @LStrToPChar
 00506205    push       eax
 00506206    mov        eax,dword ptr [ebp-8]
 00506209    call       @LStrLen
 0050620E    test       eax,eax
>00506210    jns        00506217
 00506212    call       @BoundErr
 00506217    push       eax
 00506218    mov        edx,ebx
 0050621A    mov        eax,dword ptr [ebp-4]
 0050621D    mov        eax,dword ptr [eax+70]; TZMySQLPreparedStatement.?f70:IZMySQLPlainDriver
 00506220    mov        ecx,esi
 00506222    mov        ebx,dword ptr [eax]
 00506224    call       dword ptr [ebx+0A4]
 0050622A    test       eax,eax
>0050622C    jns        00506233
 0050622E    call       @BoundErr
 00506233    mov        ebx,eax
 00506235    push       506290; '''
 0050623A    lea        ecx,[ebp-10]
 0050623D    mov        edx,ebx
 0050623F    mov        eax,esi
 00506241    call       004BEF98
 00506246    push       dword ptr [ebp-10]
 00506249    push       506290; '''
 0050624E    mov        eax,dword ptr [ebp-0C]
 00506251    mov        edx,3
 00506256    call       @LStrCatN
 0050625B    mov        eax,esi
 0050625D    call       @FreeMem
 00506262    xor        eax,eax
 00506264    pop        edx
 00506265    pop        ecx
 00506266    pop        ecx
 00506267    mov        dword ptr fs:[eax],edx
 0050626A    push       50627F
 0050626F    lea        eax,[ebp-10]
 00506272    call       @LStrClr
 00506277    ret
<00506278    jmp        @HandleFinally
<0050627D    jmp        0050626F
 0050627F    pop        esi
 00506280    pop        ebx
 00506281    mov        esp,ebp
 00506283    pop        ebp
 00506284    ret
*}
//end;

//00506294
//procedure sub_00506294(?:?; ?:?);
//begin
{*
 00506294    push       ebp
 00506295    mov        ebp,esp
 00506297    add        esp,0FFFFFF50
 0050629D    push       ebx
 0050629E    push       esi
 0050629F    xor        ebx,ebx
 005062A1    mov        dword ptr [ebp-0B0],ebx
 005062A7    mov        dword ptr [ebp-0AC],ebx
 005062AD    mov        dword ptr [ebp-78],ebx
 005062B0    mov        dword ptr [ebp-74],ebx
 005062B3    mov        dword ptr [ebp-58],ebx
 005062B6    mov        dword ptr [ebp-54],ebx
 005062B9    mov        dword ptr [ebp-50],ebx
 005062BC    mov        dword ptr [ebp-4C],ebx
 005062BF    mov        dword ptr [ebp-8],ebx
 005062C2    mov        dword ptr [ebp-0C],ebx
 005062C5    mov        dword ptr [ebp-4],ecx
 005062C8    mov        esi,edx
 005062CA    mov        ebx,eax
 005062CC    lea        eax,[ebp-46]
 005062CF    mov        edx,dword ptr ds:[4C4174]; TZVariant
 005062D5    call       @InitializeRecord
 005062DA    xor        eax,eax
 005062DC    push       ebp
 005062DD    push       50672E
 005062E2    push       dword ptr fs:[eax]
 005062E5    mov        dword ptr fs:[eax],esp
 005062E8    lea        eax,[ebp-8]
 005062EB    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 005062F1    call       @DynArrayClear
 005062F6    cmp        esi,dword ptr [ebx+58]; TZMySQLPreparedStatement.?f58:dword
>005062F9    jl         0050631C
 005062FB    lea        edx,[ebp-4C]
 005062FE    mov        eax,[0061B5C8]; ^#122.sResString47:TResStringRec
 00506303    call       LoadResString
 00506308    mov        ecx,dword ptr [ebp-4C]
 0050630B    mov        dl,1
 0050630D    mov        eax,[004C6D20]; EZSQLException
 00506312    call       EZSQLException.Create; EZSQLException.Create
 00506317    call       @RaiseExcept
 0050631C    lea        eax,[ebp-46]
 0050631F    imul       edx,esi,0B
>00506322    jno        00506329
 00506324    call       @IntOver
 00506329    mov        ecx,dword ptr [ebx+4C]; TZMySQLPreparedStatement.?f4C:TZVariantDynArray
 0050632C    lea        edx,[ecx+edx*4]
 0050632F    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 00506335    call       @CopyRecord
 0050633A    lea        edx,[ebp-46]
 0050633D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00506342    mov        eax,dword ptr [eax]
 00506344    mov        ecx,dword ptr [eax]
 00506346    call       dword ptr [ecx+0C]
 00506349    test       al,al
>0050634B    je         005063BF
 0050634D    mov        eax,dword ptr [ebx+54]; TZMySQLPreparedStatement.?f54:TStringDynArray
 00506350    test       eax,eax
>00506352    je         00506359
 00506354    cmp        esi,dword ptr [eax-4]
>00506357    jb         0050635E
 00506359    call       @BoundErr
 0050635E    cmp        dword ptr [eax+esi*4],0
>00506362    je         005063AD
 00506364    lea        eax,[ebp-50]
 00506367    push       eax
 00506368    mov        eax,ebx
 0050636A    test       eax,eax
>0050636C    je         00506371
 0050636E    sub        eax,0FFFFFFBC
 00506371    mov        ecx,506744; 'true'
 00506376    mov        edx,506754; 'defaults'
 0050637B    call       004D30D4
 00506380    mov        eax,dword ptr [ebp-50]
 00506383    call       004BEFC0
 00506388    test       al,al
>0050638A    je         005063AD
 0050638C    mov        eax,dword ptr [ebp-4]
 0050638F    mov        edx,dword ptr [ebx+54]; TZMySQLPreparedStatement.?f54:TStringDynArray
 00506392    test       edx,edx
>00506394    je         0050639B
 00506396    cmp        esi,dword ptr [edx-4]
>00506399    jb         005063A0
 0050639B    call       @BoundErr
 005063A0    mov        edx,dword ptr [edx+esi*4]
 005063A3    call       @LStrAsg
>005063A8    jmp        005066CC
 005063AD    mov        eax,dword ptr [ebp-4]
 005063B0    mov        edx,506768; 'NULL'
 005063B5    call       @LStrAsg
>005063BA    jmp        005066CC
 005063BF    mov        eax,dword ptr [ebx+50]; TZMySQLPreparedStatement.?f50:TZSQLTypeArray
 005063C2    test       eax,eax
>005063C4    je         005063CB
 005063C6    cmp        esi,dword ptr [eax-4]
>005063C9    jb         005063D0
 005063CB    call       @BoundErr
 005063D0    movzx      eax,byte ptr [eax+esi]
 005063D4    cmp        eax,11
>005063D7    ja         005066CC
 005063DD    mov        al,byte ptr [eax+5063EA]
 005063E3    jmp        dword ptr [eax*4+5063FC]
 005063E3    db         0
 005063E3    db         1
 005063E3    db         2
 005063E3    db         2
 005063E3    db         2
 005063E3    db         2
 005063E3    db         2
 005063E3    db         2
 005063E3    db         2
 005063E3    db         3
 005063E3    db         0
 005063E3    db         3
 005063E3    db         4
 005063E3    db         5
 005063E3    db         6
 005063E3    db         7
 005063E3    db         7
 005063E3    db         7
 005063E3    dd         5066CC
 005063E3    dd         50641C
 005063E3    dd         506453
 005063E3    dd         50646A
 005063E3    dd         50648E
 005063E3    dd         506518
 005063E3    dd         5065A2
 005063E3    dd         50666B
 0050641C    lea        edx,[ebp-46]
 0050641F    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00506424    mov        eax,dword ptr [eax]
 00506426    mov        ecx,dword ptr [eax]
 00506428    call       dword ptr [ecx+24]
 0050642B    test       al,al
>0050642D    je         00506441
 0050642F    mov        eax,dword ptr [ebp-4]
 00506432    mov        edx,506778; ''Y''
 00506437    call       @LStrAsg
>0050643C    jmp        005066CC
 00506441    mov        eax,dword ptr [ebp-4]
 00506444    mov        edx,506784; ''N''
 00506449    call       @LStrAsg
>0050644E    jmp        005066CC
 00506453    mov        ecx,dword ptr [ebp-4]
 00506456    lea        edx,[ebp-46]
 00506459    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0050645E    mov        eax,dword ptr [eax]
 00506460    mov        ebx,dword ptr [eax]
 00506462    call       dword ptr [ebx+30]
>00506465    jmp        005066CC
 0050646A    lea        ecx,[ebp-54]
 0050646D    lea        edx,[ebp-46]
 00506470    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00506475    mov        eax,dword ptr [eax]
 00506477    mov        esi,dword ptr [eax]
 00506479    call       dword ptr [esi+30]
 0050647C    mov        edx,dword ptr [ebp-54]
 0050647F    mov        ecx,dword ptr [ebp-4]
 00506482    mov        eax,ebx
 00506484    call       00506174
>00506489    jmp        005066CC
 0050648E    lea        edx,[ebp-46]
 00506491    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00506496    mov        eax,dword ptr [eax]
 00506498    mov        ecx,dword ptr [eax]
 0050649A    call       dword ptr [ecx+38]
 0050649D    add        esp,0FFFFFFF8
 005064A0    fstp       qword ptr [esp]
 005064A3    wait
 005064A4    lea        eax,[ebp-14]
 005064A7    push       eax
 005064A8    lea        eax,[ebp-16]
 005064AB    push       eax
 005064AC    lea        eax,[ebp-18]
 005064AF    push       eax
 005064B0    lea        eax,[ebp-1A]
 005064B3    push       eax
 005064B4    lea        ecx,[ebp-12]
 005064B7    lea        edx,[ebp-10]
 005064BA    lea        eax,[ebp-0E]
 005064BD    call       DecodeDateTime
 005064C2    push       506790; '''
 005064C7    lea        eax,[ebp-58]
 005064CA    push       eax
 005064CB    movzx      eax,word ptr [ebp-0E]
 005064CF    mov        dword ptr [ebp-70],eax
 005064D2    mov        byte ptr [ebp-6C],0
 005064D6    movzx      eax,word ptr [ebp-10]
 005064DA    mov        dword ptr [ebp-68],eax
 005064DD    mov        byte ptr [ebp-64],0
 005064E1    movzx      eax,word ptr [ebp-12]
 005064E5    mov        dword ptr [ebp-60],eax
 005064E8    mov        byte ptr [ebp-5C],0
 005064EC    lea        edx,[ebp-70]
 005064EF    mov        ecx,2
 005064F4    mov        eax,50679C; '%0.4d-%0.2d-%0.2d'
 005064F9    call       Format
 005064FE    push       dword ptr [ebp-58]
 00506501    push       506790; '''
 00506506    mov        eax,dword ptr [ebp-4]
 00506509    mov        edx,3
 0050650E    call       @LStrCatN
>00506513    jmp        005066CC
 00506518    lea        edx,[ebp-46]
 0050651B    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 00506520    mov        eax,dword ptr [eax]
 00506522    mov        ecx,dword ptr [eax]
 00506524    call       dword ptr [ecx+38]
 00506527    add        esp,0FFFFFFF8
 0050652A    fstp       qword ptr [esp]
 0050652D    wait
 0050652E    lea        eax,[ebp-14]
 00506531    push       eax
 00506532    lea        eax,[ebp-16]
 00506535    push       eax
 00506536    lea        eax,[ebp-18]
 00506539    push       eax
 0050653A    lea        eax,[ebp-1A]
 0050653D    push       eax
 0050653E    lea        ecx,[ebp-12]
 00506541    lea        edx,[ebp-10]
 00506544    lea        eax,[ebp-0E]
 00506547    call       DecodeDateTime
 0050654C    push       506790; '''
 00506551    lea        eax,[ebp-74]
 00506554    push       eax
 00506555    movzx      eax,word ptr [ebp-14]
 00506559    mov        dword ptr [ebp-70],eax
 0050655C    mov        byte ptr [ebp-6C],0
 00506560    movzx      eax,word ptr [ebp-16]
 00506564    mov        dword ptr [ebp-68],eax
 00506567    mov        byte ptr [ebp-64],0
 0050656B    movzx      eax,word ptr [ebp-18]
 0050656F    mov        dword ptr [ebp-60],eax
 00506572    mov        byte ptr [ebp-5C],0
 00506576    lea        edx,[ebp-70]
 00506579    mov        ecx,2
 0050657E    mov        eax,5067B8; '%0.2d:%0.2d:%0.2d'
 00506583    call       Format
 00506588    push       dword ptr [ebp-74]
 0050658B    push       506790; '''
 00506590    mov        eax,dword ptr [ebp-4]
 00506593    mov        edx,3
 00506598    call       @LStrCatN
>0050659D    jmp        005066CC
 005065A2    lea        edx,[ebp-46]
 005065A5    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 005065AA    mov        eax,dword ptr [eax]
 005065AC    mov        ecx,dword ptr [eax]
 005065AE    call       dword ptr [ecx+38]
 005065B1    add        esp,0FFFFFFF8
 005065B4    fstp       qword ptr [esp]
 005065B7    wait
 005065B8    lea        eax,[ebp-14]
 005065BB    push       eax
 005065BC    lea        eax,[ebp-16]
 005065BF    push       eax
 005065C0    lea        eax,[ebp-18]
 005065C3    push       eax
 005065C4    lea        eax,[ebp-1A]
 005065C7    push       eax
 005065C8    lea        ecx,[ebp-12]
 005065CB    lea        edx,[ebp-10]
 005065CE    lea        eax,[ebp-0E]
 005065D1    call       DecodeDateTime
 005065D6    push       506790; '''
 005065DB    lea        eax,[ebp-78]
 005065DE    push       eax
 005065DF    movzx      eax,word ptr [ebp-0E]
 005065E3    mov        dword ptr [ebp-0A8],eax
 005065E9    mov        byte ptr [ebp-0A4],0
 005065F0    movzx      eax,word ptr [ebp-10]
 005065F4    mov        dword ptr [ebp-0A0],eax
 005065FA    mov        byte ptr [ebp-9C],0
 00506601    movzx      eax,word ptr [ebp-12]
 00506605    mov        dword ptr [ebp-98],eax
 0050660B    mov        byte ptr [ebp-94],0
 00506612    movzx      eax,word ptr [ebp-14]
 00506616    mov        dword ptr [ebp-90],eax
 0050661C    mov        byte ptr [ebp-8C],0
 00506623    movzx      eax,word ptr [ebp-16]
 00506627    mov        dword ptr [ebp-88],eax
 0050662D    mov        byte ptr [ebp-84],0
 00506634    movzx      eax,word ptr [ebp-18]
 00506638    mov        dword ptr [ebp-80],eax
 0050663B    mov        byte ptr [ebp-7C],0
 0050663F    lea        edx,[ebp-0A8]
 00506645    mov        ecx,5
 0050664A    mov        eax,5067D4; '%0.4d-%0.2d-%0.2d %0.2d:%0.2d:%0.2d'
 0050664F    call       Format
 00506654    push       dword ptr [ebp-78]
 00506657    push       506790; '''
 0050665C    mov        eax,dword ptr [ebp-4]
 0050665F    mov        edx,3
 00506664    call       @LStrCatN
>00506669    jmp        005066CC
 0050666B    lea        ecx,[ebp-0AC]
 00506671    lea        edx,[ebp-46]
 00506674    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 00506679    mov        eax,dword ptr [eax]
 0050667B    mov        esi,dword ptr [eax]
 0050667D    call       dword ptr [esi+40]
 00506680    mov        edx,dword ptr [ebp-0AC]
 00506686    lea        eax,[ebp-0C]
 00506689    mov        ecx,5067F8; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 0050668E    call       @IntfCast
 00506693    mov        eax,dword ptr [ebp-0C]
 00506696    mov        edx,dword ptr [eax]
 00506698    call       dword ptr [edx+0C]
 0050669B    test       al,al
>0050669D    jne        005066BF
 0050669F    lea        edx,[ebp-0B0]
 005066A5    mov        eax,dword ptr [ebp-0C]
 005066A8    mov        ecx,dword ptr [eax]
 005066AA    call       dword ptr [ecx+18]
 005066AD    mov        edx,dword ptr [ebp-0B0]
 005066B3    mov        ecx,dword ptr [ebp-4]
 005066B6    mov        eax,ebx
 005066B8    call       00506174
>005066BD    jmp        005066CC
 005066BF    mov        eax,dword ptr [ebp-4]
 005066C2    mov        edx,506768; 'NULL'
 005066C7    call       @LStrAsg
 005066CC    xor        eax,eax
 005066CE    pop        edx
 005066CF    pop        ecx
 005066D0    pop        ecx
 005066D1    mov        dword ptr fs:[eax],edx
 005066D4    push       506735
 005066D9    lea        eax,[ebp-0B0]
 005066DF    call       @LStrClr
 005066E4    lea        eax,[ebp-0AC]
 005066EA    call       @IntfClear
 005066EF    lea        eax,[ebp-78]
 005066F2    mov        edx,2
 005066F7    call       @LStrArrayClr
 005066FC    lea        eax,[ebp-58]
 005066FF    mov        edx,4
 00506704    call       @LStrArrayClr
 00506709    lea        eax,[ebp-46]
 0050670C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00506712    call       @FinalizeRecord
 00506717    lea        eax,[ebp-0C]
 0050671A    call       @IntfClear
 0050671F    lea        eax,[ebp-8]
 00506722    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 00506728    call       @DynArrayClear
 0050672D    ret
<0050672E    jmp        @HandleFinally
<00506733    jmp        005066D9
 00506735    pop        esi
 00506736    pop        ebx
 00506737    mov        esp,ebp
 00506739    pop        ebp
 0050673A    ret
*}
//end;

end.