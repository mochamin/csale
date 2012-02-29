{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit174;

interface

uses
  Classes, Windows, Graphics, _Unit136, _Unit134, ZPlainSqLiteDriver, _Unit139;

type
  TZSQLiteResultSetMetadata = class(TZAbstractResultSetMetadata)
  public
    //procedure sub_0053DA5C(?:?); virtual;
  end;
  TZSQLiteResultSet = class(TZAbstractResultSet)
  public
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:dword;//f48
    f4C:dword;//f4C
    f50:IZSQLitePlainDriver;//f50
    destructor Destroy; virtual;
    procedure sub_0053DC1C; virtual;
    //function sub_0053E800:?; virtual;
    procedure sub_0053DDC8; virtual;
    //function sub_0053DDE0(?:?):?; virtual;
    //function sub_0053DE70(?:?):?; virtual;
    //procedure sub_0053DF04(?:?; ?:?); virtual;
    //function sub_0053DF34(?:?):?; virtual;
    //function sub_0053E028(?:?):?; virtual;
    //function sub_0053E090(?:?):?; virtual;
    //function sub_0053E0F8(?:?):?; virtual;
    //procedure sub_0053E160(?:?); virtual;
    //procedure sub_0053E1D8(?:?); virtual;
    //procedure sub_0053E250(?:?); virtual;
    //procedure sub_0053E2C8(?:?); virtual;
    //procedure sub_0053E340(?:?; ?:?); virtual;
    //procedure sub_0053E3A8(?:?); virtual;
    //procedure sub_0053E47C(?:?); virtual;
    //procedure sub_0053E528(?:?); virtual;
    //function sub_0053E5E0(?:?):?; virtual;
    //function sub_0053E648():?; virtual;
    //function sub_0053E658(?:?):?; virtual;
    //procedure sub_0053E6D0(?:?; ?:?); virtual;
    //constructor Create(?:TZSQLiteResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZSQLiteCachedResolver = class(TZGenericCachedResolver)
  public
    f30:dword;//f30
    f34:IZSQLitePlainDriver;//f34
    f38:dword;//f38
    //procedure sub_0053EB6C(?:?; ?:?); virtual;
    //procedure sub_0053EA40(?:?; ?:?; ?:?; ?:?); virtual;
    //constructor Create(?:TZSQLiteCachedResolver; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0053DA5C
//procedure sub_0053DA5C(?:?);
//begin
{*
 0053DA5C    push       ebp
 0053DA5D    mov        ebp,esp
 0053DA5F    push       ebx
 0053DA60    push       esi
 0053DA61    mov        esi,edx
 0053DA63    mov        ebx,eax
 0053DA65    mov        edx,esi
 0053DA67    mov        eax,ebx
 0053DA69    mov        ecx,dword ptr [eax]
 0053DA6B    call       dword ptr [ecx+0C]; TZSQLiteResultSetMetadata.sub_004D644C
 0053DA6E    test       al,al
>0053DA70    je         0053DA76
 0053DA72    mov        al,1
>0053DA74    jmp        0053DA7F
 0053DA76    mov        edx,esi
 0053DA78    mov        eax,ebx
 0053DA7A    call       004D6510
 0053DA7F    pop        esi
 0053DA80    pop        ebx
 0053DA81    pop        ebp
 0053DA82    ret
*}
//end;

//0053DA84
//constructor TZSQLiteResultSet.Create(?:TZSQLiteResultSet; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053DA84    push       ebp
 0053DA85    mov        ebp,esp
 0053DA87    push       0
 0053DA89    push       0
 0053DA8B    push       0
 0053DA8D    push       ebx
 0053DA8E    push       esi
 0053DA8F    test       dl,dl
>0053DA91    je         0053DA9B
 0053DA93    add        esp,0FFFFFFF0
 0053DA96    call       @ClassCreate
 0053DA9B    mov        dword ptr [ebp-4],ecx
 0053DA9E    mov        ebx,edx
 0053DAA0    mov        esi,eax
 0053DAA2    mov        eax,dword ptr [ebp-4]
 0053DAA5    call       @IntfAddRef
 0053DAAA    mov        eax,dword ptr [ebp+20]
 0053DAAD    call       @IntfAddRef
 0053DAB2    mov        eax,dword ptr [ebp+1C]
 0053DAB5    call       @LStrAddRef
 0053DABA    xor        eax,eax
 0053DABC    push       ebp
 0053DABD    push       53DB6F
 0053DAC2    push       dword ptr fs:[eax]
 0053DAC5    mov        dword ptr fs:[eax],esp
 0053DAC8    mov        eax,dword ptr [ebp+1C]
 0053DACB    push       eax
 0053DACC    mov        eax,dword ptr [ebp+1C]
 0053DACF    push       eax
 0053DAD0    push       esi
 0053DAD1    lea        edx,[ebp-0C]
 0053DAD4    mov        eax,dword ptr [ebp+20]
 0053DAD7    mov        ecx,dword ptr [eax]
 0053DAD9    call       dword ptr [ecx+88]
 0053DADF    mov        eax,dword ptr [ebp-0C]
 0053DAE2    lea        edx,[ebp-8]
 0053DAE5    mov        ecx,dword ptr [eax]
 0053DAE7    call       dword ptr [ecx+64]
 0053DAEA    mov        ecx,dword ptr [ebp-8]
 0053DAED    mov        dl,1
 0053DAEF    mov        eax,[0053D63C]; TZSQLiteResultSetMetadata
 0053DAF4    call       TZAbstractResultSetMetadata.Create; TZSQLiteResultSetMetadata.Create
 0053DAF9    push       eax
 0053DAFA    mov        ecx,dword ptr [ebp+20]
 0053DAFD    xor        edx,edx
 0053DAFF    mov        eax,esi
 0053DB01    call       004D3FC8
 0053DB06    mov        eax,dword ptr [ebp+18]
 0053DB09    mov        dword ptr [esi+3C],eax; TZSQLiteResultSet.?f3C:dword
 0053DB0C    mov        eax,dword ptr [ebp+14]
 0053DB0F    mov        dword ptr [esi+40],eax; TZSQLiteResultSet.?f40:dword
 0053DB12    lea        eax,[esi+50]; TZSQLiteResultSet.?f50:IZSQLitePlainDriver
 0053DB15    mov        edx,dword ptr [ebp-4]
 0053DB18    call       @IntfCopy
 0053DB1D    mov        byte ptr [esi+25],0; TZSQLiteResultSet.?f25:byte
 0053DB21    mov        eax,dword ptr [ebp+10]
 0053DB24    mov        dword ptr [esi+44],eax; TZSQLiteResultSet.?f44:dword
 0053DB27    mov        eax,dword ptr [ebp+0C]
 0053DB2A    mov        dword ptr [esi+48],eax; TZSQLiteResultSet.?f48:dword
 0053DB2D    mov        eax,dword ptr [ebp+8]
 0053DB30    mov        dword ptr [esi+4C],eax; TZSQLiteResultSet.?f4C:dword
 0053DB33    mov        eax,esi
 0053DB35    mov        edx,dword ptr [eax]
 0053DB37    call       dword ptr [edx]; TZSQLiteResultSet.sub_0053DC1C
 0053DB39    xor        eax,eax
 0053DB3B    pop        edx
 0053DB3C    pop        ecx
 0053DB3D    pop        ecx
 0053DB3E    mov        dword ptr fs:[eax],edx
 0053DB41    push       53DB76
 0053DB46    lea        eax,[ebp-0C]
 0053DB49    call       @IntfClear
 0053DB4E    lea        eax,[ebp-8]
 0053DB51    call       @IntfClear
 0053DB56    lea        eax,[ebp-4]
 0053DB59    call       @IntfClear
 0053DB5E    lea        eax,[ebp+1C]
 0053DB61    call       @LStrClr
 0053DB66    lea        eax,[ebp+20]
 0053DB69    call       @IntfClear
 0053DB6E    ret
<0053DB6F    jmp        @HandleFinally
<0053DB74    jmp        0053DB46
 0053DB76    mov        eax,esi
 0053DB78    test       bl,bl
>0053DB7A    je         0053DB8B
 0053DB7C    call       @AfterConstruction
 0053DB81    pop        dword ptr fs:[0]
 0053DB88    add        esp,0C
 0053DB8B    mov        eax,esi
 0053DB8D    pop        esi
 0053DB8E    pop        ebx
 0053DB8F    mov        esp,ebp
 0053DB91    pop        ebp
 0053DB92    ret        1C
*}
//end;

//0053DB98
destructor TZSQLiteResultSet.Destroy;
begin
{*
 0053DB98    push       ebp
 0053DB99    mov        ebp,esp
 0053DB9B    push       ebx
 0053DB9C    push       esi
 0053DB9D    call       @BeforeDestruction
 0053DBA2    mov        ebx,edx
 0053DBA4    mov        esi,eax
 0053DBA6    mov        eax,dword ptr [esi+4C]; TZSQLiteResultSet.?f4C:dword
 0053DBA9    test       eax,eax
>0053DBAB    je         0053DBC9
 0053DBAD    mov        edx,dword ptr [esi+44]; TZSQLiteResultSet.?f44:dword
 0053DBB0    add        edx,1
>0053DBB3    jno        0053DBBA
 0053DBB5    call       @IntOver
 0053DBBA    imul       edx,edx,4
>0053DBBD    jno        0053DBC4
 0053DBBF    call       @IntOver
 0053DBC4    call       @FreeMem
 0053DBC9    xor        eax,eax
 0053DBCB    mov        dword ptr [esi+4C],eax; TZSQLiteResultSet.?f4C:dword
 0053DBCE    mov        eax,dword ptr [esi+48]; TZSQLiteResultSet.?f48:dword
 0053DBD1    test       eax,eax
>0053DBD3    je         0053DBFB
 0053DBD5    mov        edx,dword ptr [esi+44]; TZSQLiteResultSet.?f44:dword
 0053DBD8    add        edx,1
>0053DBDB    jno        0053DBE2
 0053DBDD    call       @IntOver
 0053DBE2    imul       edx,edx,4
>0053DBE5    jno        0053DBEC
 0053DBE7    call       @IntOver
 0053DBEC    imul       edx,edx,2
>0053DBEF    jno        0053DBF6
 0053DBF1    call       @IntOver
 0053DBF6    call       @FreeMem
 0053DBFB    xor        eax,eax
 0053DBFD    mov        dword ptr [esi+48],eax; TZSQLiteResultSet.?f48:dword
 0053DC00    mov        edx,ebx
 0053DC02    and        dl,0FC
 0053DC05    mov        eax,esi
 0053DC07    call       TZAbstractResultSet.Destroy
 0053DC0C    test       bl,bl
>0053DC0E    jle        0053DC17
 0053DC10    mov        eax,esi
 0053DC12    call       @ClassDestroy
 0053DC17    pop        esi
 0053DC18    pop        ebx
 0053DC19    pop        ebp
 0053DC1A    ret
*}
end;

//0053DC1C
procedure sub_0053DC1C;
begin
{*
 0053DC1C    push       ebp
 0053DC1D    mov        ebp,esp
 0053DC1F    add        esp,0FFFFFFE4
 0053DC22    push       ebx
 0053DC23    push       esi
 0053DC24    push       edi
 0053DC25    xor        edx,edx
 0053DC27    mov        dword ptr [ebp-1C],edx
 0053DC2A    mov        dword ptr [ebp-18],edx
 0053DC2D    mov        dword ptr [ebp-14],edx
 0053DC30    mov        esi,eax
 0053DC32    xor        eax,eax
 0053DC34    push       ebp
 0053DC35    push       53DD54
 0053DC3A    push       dword ptr fs:[eax]
 0053DC3D    mov        dword ptr fs:[eax],esp
 0053DC40    cmp        byte ptr [esi+25],1; TZSQLiteResultSet.?f25:byte
>0053DC44    jne        0053DC67
 0053DC46    lea        edx,[ebp-14]
 0053DC49    mov        eax,[0061B624]; ^#122.sResString46:TResStringRec
 0053DC4E    call       LoadResString
 0053DC53    mov        ecx,dword ptr [ebp-14]
 0053DC56    mov        dl,1
 0053DC58    mov        eax,[004C6D20]; EZSQLException
 0053DC5D    call       EZSQLException.Create; EZSQLException.Create
 0053DC62    call       @RaiseExcept
 0053DC67    xor        eax,eax
 0053DC69    mov        dword ptr [esi+14],eax; TZSQLiteResultSet.?f14:Integer
 0053DC6C    mov        eax,dword ptr [esi+28]; TZSQLiteResultSet.?f28:dword
 0053DC6F    mov        edx,dword ptr [eax]
 0053DC71    call       dword ptr [edx+8]
 0053DC74    mov        eax,dword ptr [esi+48]; TZSQLiteResultSet.?f48:dword
 0053DC77    mov        dword ptr [ebp-4],eax
 0053DC7A    mov        edi,eax
 0053DC7C    mov        eax,dword ptr [esi+44]; TZSQLiteResultSet.?f44:dword
 0053DC7F    imul       edx,eax,4
>0053DC82    jno        0053DC89
 0053DC84    call       @IntOver
 0053DC89    add        edi,edx
 0053DC8B    test       eax,eax
>0053DC8D    jle        0053DD32
 0053DC93    mov        dword ptr [ebp-10],eax
 0053DC96    mov        dl,1
 0053DC98    mov        eax,[004D5F00]; TZColumnInfo
 0053DC9D    call       TZColumnInfo.Create; TZColumnInfo.Create
 0053DCA2    mov        ebx,eax
 0053DCA4    lea        edx,[ebp-18]
 0053DCA7    mov        eax,dword ptr [ebp-4]
 0053DCAA    mov        eax,dword ptr [eax]
 0053DCAC    call       StrPas
 0053DCB1    mov        edx,dword ptr [ebp-18]
 0053DCB4    lea        eax,[ebx+10]; TZColumnInfo.?f10:String
 0053DCB7    call       @LStrAsg
 0053DCBC    add        dword ptr [ebp-4],4
 0053DCC0    lea        eax,[ebx+24]; TZColumnInfo.?f24:String
 0053DCC3    call       @LStrClr
 0053DCC8    mov        byte ptr [ebx+2D],0; TZColumnInfo.?f2D:byte
 0053DCCC    cmp        dword ptr [edi],0
>0053DCCF    je         0053DCF1
 0053DCD1    lea        eax,[ebp-1C]
 0053DCD4    mov        edx,dword ptr [edi]
 0053DCD6    call       @LStrFromPChar
 0053DCDB    mov        eax,dword ptr [ebp-1C]
 0053DCDE    lea        ecx,[ebp-0C]
 0053DCE1    lea        edx,[ebp-8]
 0053DCE4    call       0053CD94
 0053DCE9    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 0053DCEC    add        edi,4
>0053DCEF    jmp        0053DD01
 0053DCF1    lea        ecx,[ebp-0C]
 0053DCF4    lea        edx,[ebp-8]
 0053DCF7    xor        eax,eax
 0053DCF9    call       0053CD94
 0053DCFE    mov        byte ptr [ebx+2C],al; TZColumnInfo.?f2C:byte
 0053DD01    mov        eax,dword ptr [ebp-8]
 0053DD04    mov        dword ptr [ebx+0C],eax; TZColumnInfo.?fC:dword
 0053DD07    mov        byte ptr [ebx+4],0; TZColumnInfo.?f4:LongBool
 0053DD0B    mov        eax,dword ptr [ebp-8]
 0053DD0E    mov        dword ptr [ebx+1C],eax; TZColumnInfo.?f1C:Integer
 0053DD11    mov        eax,dword ptr [ebp-0C]
 0053DD14    mov        dword ptr [ebx+20],eax; TZColumnInfo.?f20:dword
 0053DD17    mov        byte ptr [ebx+9],1; TZColumnInfo.?f9:byte
 0053DD1B    mov        byte ptr [ebx+8],1; TZColumnInfo.?f8:byte
 0053DD1F    mov        edx,ebx
 0053DD21    mov        eax,dword ptr [esi+28]; TZSQLiteResultSet.?f28:dword
 0053DD24    call       00433178
 0053DD29    dec        dword ptr [ebp-10]
<0053DD2C    jne        0053DC96
 0053DD32    mov        eax,esi
 0053DD34    call       004D4580
 0053DD39    xor        eax,eax
 0053DD3B    pop        edx
 0053DD3C    pop        ecx
 0053DD3D    pop        ecx
 0053DD3E    mov        dword ptr fs:[eax],edx
 0053DD41    push       53DD5B
 0053DD46    lea        eax,[ebp-1C]
 0053DD49    mov        edx,3
 0053DD4E    call       @LStrArrayClr
 0053DD53    ret
<0053DD54    jmp        @HandleFinally
<0053DD59    jmp        0053DD46
 0053DD5B    pop        edi
 0053DD5C    pop        esi
 0053DD5D    pop        ebx
 0053DD5E    mov        esp,ebp
 0053DD60    pop        ebp
 0053DD61    ret
*}
end;

//0053DD64
//procedure sub_0053DD64(?:TZSQLiteResultSet);
//begin
{*
 0053DD64    push       ebp
 0053DD65    mov        ebp,esp
 0053DD67    push       ecx
 0053DD68    push       ebx
 0053DD69    push       esi
 0053DD6A    mov        ebx,eax
 0053DD6C    xor        eax,eax
 0053DD6E    mov        dword ptr [ebp-4],eax
 0053DD71    mov        eax,dword ptr [ebx+40]; TZSQLiteResultSet.?f40:dword
 0053DD74    test       eax,eax
>0053DD76    je         0053DD8A
 0053DD78    lea        ecx,[ebp-4]
 0053DD7B    mov        edx,eax
 0053DD7D    mov        eax,dword ptr [ebx+50]; TZSQLiteResultSet.?f50:IZSQLitePlainDriver
 0053DD80    mov        esi,dword ptr [eax]
 0053DD82    call       dword ptr [esi+90]
>0053DD88    jmp        0053DD8C
 0053DD8A    xor        eax,eax
 0053DD8C    xor        edx,edx
 0053DD8E    mov        dword ptr [ebx+40],edx; TZSQLiteResultSet.?f40:dword
 0053DD91    push       4
 0053DD93    push       53DDB4; 'FINALIZE SQLite VM'
 0053DD98    mov        ecx,dword ptr [ebp-4]
 0053DD9B    mov        edx,eax
 0053DD9D    mov        eax,dword ptr [ebx+50]; TZSQLiteResultSet.?f50:IZSQLitePlainDriver
 0053DDA0    call       0053D304
 0053DDA5    pop        esi
 0053DDA6    pop        ebx
 0053DDA7    pop        ecx
 0053DDA8    pop        ebp
 0053DDA9    ret
*}
//end;

//0053DDC8
procedure sub_0053DDC8;
begin
{*
 0053DDC8    push       ebp
 0053DDC9    mov        ebp,esp
 0053DDCB    push       ebx
 0053DDCC    mov        ebx,eax
 0053DDCE    mov        eax,ebx
 0053DDD0    call       004D4588
 0053DDD5    mov        eax,ebx
 0053DDD7    call       0053DD64
 0053DDDC    pop        ebx
 0053DDDD    pop        ebp
 0053DDDE    ret
*}
end;

//0053DDE0
//function sub_0053DDE0(?:?):?;
//begin
{*
 0053DDE0    push       ebp
 0053DDE1    mov        ebp,esp
 0053DDE3    push       0
 0053DDE5    push       ebx
 0053DDE6    push       esi
 0053DDE7    mov        esi,edx
 0053DDE9    mov        ebx,eax
 0053DDEB    xor        eax,eax
 0053DDED    push       ebp
 0053DDEE    push       53DE62
 0053DDF3    push       dword ptr fs:[eax]
 0053DDF6    mov        dword ptr fs:[eax],esp
 0053DDF9    mov        eax,ebx
 0053DDFB    call       004D42AC
 0053DE00    cmp        dword ptr [ebx+14],0; TZSQLiteResultSet.?f14:Integer
>0053DE04    je         0053DE0C
 0053DE06    cmp        dword ptr [ebx+4C],0; TZSQLiteResultSet.?f4C:dword
>0053DE0A    jne        0053DE2D
 0053DE0C    lea        edx,[ebp-4]
 0053DE0F    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 0053DE14    call       LoadResString
 0053DE19    mov        ecx,dword ptr [ebp-4]
 0053DE1C    mov        dl,1
 0053DE1E    mov        eax,[004C6D20]; EZSQLException
 0053DE23    call       EZSQLException.Create; EZSQLException.Create
 0053DE28    call       @RaiseExcept
 0053DE2D    mov        eax,dword ptr [ebx+4C]; TZSQLiteResultSet.?f4C:dword
 0053DE30    sub        esi,1
>0053DE33    jno        0053DE3A
 0053DE35    call       @IntOver
 0053DE3A    imul       edx,esi,4
>0053DE3D    jno        0053DE44
 0053DE3F    call       @IntOver
 0053DE44    add        eax,edx
 0053DE46    cmp        dword ptr [eax],0
 0053DE49    sete       bl
 0053DE4C    xor        eax,eax
 0053DE4E    pop        edx
 0053DE4F    pop        ecx
 0053DE50    pop        ecx
 0053DE51    mov        dword ptr fs:[eax],edx
 0053DE54    push       53DE69
 0053DE59    lea        eax,[ebp-4]
 0053DE5C    call       @LStrClr
 0053DE61    ret
<0053DE62    jmp        @HandleFinally
<0053DE67    jmp        0053DE59
 0053DE69    mov        eax,ebx
 0053DE6B    pop        esi
 0053DE6C    pop        ebx
 0053DE6D    pop        ecx
 0053DE6E    pop        ebp
 0053DE6F    ret
*}
//end;

//0053DE70
//function sub_0053DE70(?:?):?;
//begin
{*
 0053DE70    push       ebp
 0053DE71    mov        ebp,esp
 0053DE73    push       0
 0053DE75    push       ebx
 0053DE76    push       esi
 0053DE77    mov        esi,edx
 0053DE79    mov        ebx,eax
 0053DE7B    xor        eax,eax
 0053DE7D    push       ebp
 0053DE7E    push       53DEF6
 0053DE83    push       dword ptr fs:[eax]
 0053DE86    mov        dword ptr fs:[eax],esp
 0053DE89    mov        eax,ebx
 0053DE8B    call       004D42AC
 0053DE90    cmp        dword ptr [ebx+14],0; TZSQLiteResultSet.?f14:Integer
>0053DE94    je         0053DE9C
 0053DE96    cmp        dword ptr [ebx+4C],0; TZSQLiteResultSet.?f4C:dword
>0053DE9A    jne        0053DEBD
 0053DE9C    lea        edx,[ebp-4]
 0053DE9F    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 0053DEA4    call       LoadResString
 0053DEA9    mov        ecx,dword ptr [ebp-4]
 0053DEAC    mov        dl,1
 0053DEAE    mov        eax,[004C6D20]; EZSQLException
 0053DEB3    call       EZSQLException.Create; EZSQLException.Create
 0053DEB8    call       @RaiseExcept
 0053DEBD    mov        eax,dword ptr [ebx+4C]; TZSQLiteResultSet.?f4C:dword
 0053DEC0    sub        esi,1
>0053DEC3    jno        0053DECA
 0053DEC5    call       @IntOver
 0053DECA    imul       edx,esi,4
>0053DECD    jno        0053DED4
 0053DECF    call       @IntOver
 0053DED4    add        eax,edx
 0053DED6    mov        esi,dword ptr [eax]
 0053DED8    test       esi,esi
 0053DEDA    sete       al
 0053DEDD    mov        byte ptr [ebx+34],al; TZSQLiteResultSet.?f34:byte
 0053DEE0    xor        eax,eax
 0053DEE2    pop        edx
 0053DEE3    pop        ecx
 0053DEE4    pop        ecx
 0053DEE5    mov        dword ptr fs:[eax],edx
 0053DEE8    push       53DEFD
 0053DEED    lea        eax,[ebp-4]
 0053DEF0    call       @LStrClr
 0053DEF5    ret
<0053DEF6    jmp        @HandleFinally
<0053DEFB    jmp        0053DEED
 0053DEFD    mov        eax,esi
 0053DEFF    pop        esi
 0053DF00    pop        ebx
 0053DF01    pop        ecx
 0053DF02    pop        ebp
 0053DF03    ret
*}
//end;

//0053DF04
//procedure sub_0053DF04(?:?; ?:?);
//begin
{*
 0053DF04    push       ebp
 0053DF05    mov        ebp,esp
 0053DF07    push       ecx
 0053DF08    push       ebx
 0053DF09    push       esi
 0053DF0A    mov        esi,ecx
 0053DF0C    mov        dword ptr [ebp-4],edx
 0053DF0F    mov        edx,dword ptr [ebp-4]
 0053DF12    mov        ecx,dword ptr [eax]
 0053DF14    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053DF17    mov        ebx,eax
 0053DF19    test       ebx,ebx
>0053DF1B    je         0053DF28
 0053DF1D    mov        edx,esi
 0053DF1F    mov        eax,ebx
 0053DF21    call       StrPas
>0053DF26    jmp        0053DF2F
 0053DF28    mov        eax,esi
 0053DF2A    call       @LStrClr
 0053DF2F    pop        esi
 0053DF30    pop        ebx
 0053DF31    pop        ecx
 0053DF32    pop        ebp
 0053DF33    ret
*}
//end;

//0053DF34
//function sub_0053DF34(?:?):?;
//begin
{*
 0053DF34    push       ebp
 0053DF35    mov        ebp,esp
 0053DF37    push       0
 0053DF39    push       0
 0053DF3B    push       ebx
 0053DF3C    push       esi
 0053DF3D    mov        esi,edx
 0053DF3F    mov        ebx,eax
 0053DF41    xor        eax,eax
 0053DF43    push       ebp
 0053DF44    push       53DFE3
 0053DF49    push       dword ptr fs:[eax]
 0053DF4C    mov        dword ptr fs:[eax],esp
 0053DF4F    mov        cl,1
 0053DF51    mov        edx,esi
 0053DF53    mov        eax,ebx
 0053DF55    call       004D4308
 0053DF5A    mov        edx,esi
 0053DF5C    mov        eax,ebx
 0053DF5E    mov        ecx,dword ptr [eax]
 0053DF60    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053DF63    mov        edx,eax
 0053DF65    lea        eax,[ebp-8]
 0053DF68    call       @LStrFromPChar
 0053DF6D    mov        eax,dword ptr [ebp-8]
 0053DF70    lea        edx,[ebp-4]
 0053DF73    call       UpperCase
 0053DF78    mov        eax,dword ptr [ebp-4]
 0053DF7B    mov        edx,53DFFC; 'Y'
 0053DF80    call       @LStrCmp
>0053DF85    je         0053DFC6
 0053DF87    mov        eax,dword ptr [ebp-4]
 0053DF8A    mov        edx,53E008; 'YES'
 0053DF8F    call       @LStrCmp
>0053DF94    je         0053DFC6
 0053DF96    mov        eax,dword ptr [ebp-4]
 0053DF99    mov        edx,53E014; 'T'
 0053DF9E    call       @LStrCmp
>0053DFA3    je         0053DFC6
 0053DFA5    mov        eax,dword ptr [ebp-4]
 0053DFA8    mov        edx,53E020; 'TRUE'
 0053DFAD    call       @LStrCmp
>0053DFB2    je         0053DFC6
 0053DFB4    xor        edx,edx
 0053DFB6    mov        eax,dword ptr [ebp-4]
 0053DFB9    call       StrToIntDef
 0053DFBE    test       eax,eax
>0053DFC0    jne        0053DFC6
 0053DFC2    xor        ebx,ebx
>0053DFC4    jmp        0053DFC8
 0053DFC6    mov        bl,1
 0053DFC8    xor        eax,eax
 0053DFCA    pop        edx
 0053DFCB    pop        ecx
 0053DFCC    pop        ecx
 0053DFCD    mov        dword ptr fs:[eax],edx
 0053DFD0    push       53DFEA
 0053DFD5    lea        eax,[ebp-8]
 0053DFD8    mov        edx,2
 0053DFDD    call       @LStrArrayClr
 0053DFE2    ret
<0053DFE3    jmp        @HandleFinally
<0053DFE8    jmp        0053DFD5
 0053DFEA    mov        eax,ebx
 0053DFEC    pop        esi
 0053DFED    pop        ebx
 0053DFEE    pop        ecx
 0053DFEF    pop        ecx
 0053DFF0    pop        ebp
 0053DFF1    ret
*}
//end;

//0053E028
//function sub_0053E028(?:?):?;
//begin
{*
 0053E028    push       ebp
 0053E029    mov        ebp,esp
 0053E02B    push       0
 0053E02D    push       ebx
 0053E02E    push       esi
 0053E02F    mov        esi,edx
 0053E031    mov        ebx,eax
 0053E033    xor        eax,eax
 0053E035    push       ebp
 0053E036    push       53E081
 0053E03B    push       dword ptr fs:[eax]
 0053E03E    mov        dword ptr fs:[eax],esp
 0053E041    mov        cl,2
 0053E043    mov        edx,esi
 0053E045    mov        eax,ebx
 0053E047    call       004D4308
 0053E04C    mov        edx,esi
 0053E04E    mov        eax,ebx
 0053E050    mov        ecx,dword ptr [eax]
 0053E052    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E055    mov        edx,eax
 0053E057    lea        eax,[ebp-4]
 0053E05A    call       @LStrFromPChar
 0053E05F    mov        eax,dword ptr [ebp-4]
 0053E062    xor        edx,edx
 0053E064    call       StrToIntDef
 0053E069    mov        ebx,eax
 0053E06B    xor        eax,eax
 0053E06D    pop        edx
 0053E06E    pop        ecx
 0053E06F    pop        ecx
 0053E070    mov        dword ptr fs:[eax],edx
 0053E073    push       53E088
 0053E078    lea        eax,[ebp-4]
 0053E07B    call       @LStrClr
 0053E080    ret
<0053E081    jmp        @HandleFinally
<0053E086    jmp        0053E078
 0053E088    mov        eax,ebx
 0053E08A    pop        esi
 0053E08B    pop        ebx
 0053E08C    pop        ecx
 0053E08D    pop        ebp
 0053E08E    ret
*}
//end;

//0053E090
//function sub_0053E090(?:?):?;
//begin
{*
 0053E090    push       ebp
 0053E091    mov        ebp,esp
 0053E093    push       0
 0053E095    push       ebx
 0053E096    push       esi
 0053E097    mov        esi,edx
 0053E099    mov        ebx,eax
 0053E09B    xor        eax,eax
 0053E09D    push       ebp
 0053E09E    push       53E0E9
 0053E0A3    push       dword ptr fs:[eax]
 0053E0A6    mov        dword ptr fs:[eax],esp
 0053E0A9    mov        cl,3
 0053E0AB    mov        edx,esi
 0053E0AD    mov        eax,ebx
 0053E0AF    call       004D4308
 0053E0B4    mov        edx,esi
 0053E0B6    mov        eax,ebx
 0053E0B8    mov        ecx,dword ptr [eax]
 0053E0BA    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E0BD    mov        edx,eax
 0053E0BF    lea        eax,[ebp-4]
 0053E0C2    call       @LStrFromPChar
 0053E0C7    mov        eax,dword ptr [ebp-4]
 0053E0CA    xor        edx,edx
 0053E0CC    call       StrToIntDef
 0053E0D1    mov        ebx,eax
 0053E0D3    xor        eax,eax
 0053E0D5    pop        edx
 0053E0D6    pop        ecx
 0053E0D7    pop        ecx
 0053E0D8    mov        dword ptr fs:[eax],edx
 0053E0DB    push       53E0F0
 0053E0E0    lea        eax,[ebp-4]
 0053E0E3    call       @LStrClr
 0053E0E8    ret
<0053E0E9    jmp        @HandleFinally
<0053E0EE    jmp        0053E0E0
 0053E0F0    mov        eax,ebx
 0053E0F2    pop        esi
 0053E0F3    pop        ebx
 0053E0F4    pop        ecx
 0053E0F5    pop        ebp
 0053E0F6    ret
*}
//end;

//0053E0F8
//function sub_0053E0F8(?:?):?;
//begin
{*
 0053E0F8    push       ebp
 0053E0F9    mov        ebp,esp
 0053E0FB    push       0
 0053E0FD    push       ebx
 0053E0FE    push       esi
 0053E0FF    mov        esi,edx
 0053E101    mov        ebx,eax
 0053E103    xor        eax,eax
 0053E105    push       ebp
 0053E106    push       53E151
 0053E10B    push       dword ptr fs:[eax]
 0053E10E    mov        dword ptr fs:[eax],esp
 0053E111    mov        cl,4
 0053E113    mov        edx,esi
 0053E115    mov        eax,ebx
 0053E117    call       004D4308
 0053E11C    mov        edx,esi
 0053E11E    mov        eax,ebx
 0053E120    mov        ecx,dword ptr [eax]
 0053E122    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E125    mov        edx,eax
 0053E127    lea        eax,[ebp-4]
 0053E12A    call       @LStrFromPChar
 0053E12F    mov        eax,dword ptr [ebp-4]
 0053E132    xor        edx,edx
 0053E134    call       StrToIntDef
 0053E139    mov        ebx,eax
 0053E13B    xor        eax,eax
 0053E13D    pop        edx
 0053E13E    pop        ecx
 0053E13F    pop        ecx
 0053E140    mov        dword ptr fs:[eax],edx
 0053E143    push       53E158
 0053E148    lea        eax,[ebp-4]
 0053E14B    call       @LStrClr
 0053E150    ret
<0053E151    jmp        @HandleFinally
<0053E156    jmp        0053E148
 0053E158    mov        eax,ebx
 0053E15A    pop        esi
 0053E15B    pop        ebx
 0053E15C    pop        ecx
 0053E15D    pop        ebp
 0053E15E    ret
*}
//end;

//0053E160
//procedure sub_0053E160(?:?);
//begin
{*
 0053E160    push       ebp
 0053E161    mov        ebp,esp
 0053E163    add        esp,0FFFFFFF4
 0053E166    push       ebx
 0053E167    push       esi
 0053E168    xor        ecx,ecx
 0053E16A    mov        dword ptr [ebp-0C],ecx
 0053E16D    mov        esi,edx
 0053E16F    mov        ebx,eax
 0053E171    xor        eax,eax
 0053E173    push       ebp
 0053E174    push       53E1C5
 0053E179    push       dword ptr fs:[eax]
 0053E17C    mov        dword ptr fs:[eax],esp
 0053E17F    mov        cl,5
 0053E181    mov        edx,esi
 0053E183    mov        eax,ebx
 0053E185    call       004D4308
 0053E18A    push       0
 0053E18C    push       0
 0053E18E    mov        edx,esi
 0053E190    mov        eax,ebx
 0053E192    mov        ecx,dword ptr [eax]
 0053E194    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E197    mov        edx,eax
 0053E199    lea        eax,[ebp-0C]
 0053E19C    call       @LStrFromPChar
 0053E1A1    mov        eax,dword ptr [ebp-0C]
 0053E1A4    call       StrToInt64Def
 0053E1A9    mov        dword ptr [ebp-8],eax
 0053E1AC    mov        dword ptr [ebp-4],edx
 0053E1AF    xor        eax,eax
 0053E1B1    pop        edx
 0053E1B2    pop        ecx
 0053E1B3    pop        ecx
 0053E1B4    mov        dword ptr fs:[eax],edx
 0053E1B7    push       53E1CC
 0053E1BC    lea        eax,[ebp-0C]
 0053E1BF    call       @LStrClr
 0053E1C4    ret
<0053E1C5    jmp        @HandleFinally
<0053E1CA    jmp        0053E1BC
 0053E1CC    mov        eax,dword ptr [ebp-8]
 0053E1CF    mov        edx,dword ptr [ebp-4]
 0053E1D2    pop        esi
 0053E1D3    pop        ebx
 0053E1D4    mov        esp,ebp
 0053E1D6    pop        ebp
 0053E1D7    ret
*}
//end;

//0053E1D8
//procedure sub_0053E1D8(?:?);
//begin
{*
 0053E1D8    push       ebp
 0053E1D9    mov        ebp,esp
 0053E1DB    add        esp,0FFFFFFF8
 0053E1DE    push       ebx
 0053E1DF    push       esi
 0053E1E0    xor        ecx,ecx
 0053E1E2    mov        dword ptr [ebp-8],ecx
 0053E1E5    mov        esi,edx
 0053E1E7    mov        ebx,eax
 0053E1E9    xor        eax,eax
 0053E1EB    push       ebp
 0053E1EC    push       53E23D
 0053E1F1    push       dword ptr fs:[eax]
 0053E1F4    mov        dword ptr fs:[eax],esp
 0053E1F7    mov        cl,6
 0053E1F9    mov        edx,esi
 0053E1FB    mov        eax,ebx
 0053E1FD    call       004D4308
 0053E202    push       0
 0053E204    push       0
 0053E206    push       0
 0053E208    mov        edx,esi
 0053E20A    mov        eax,ebx
 0053E20C    mov        ecx,dword ptr [eax]
 0053E20E    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E211    mov        edx,eax
 0053E213    lea        eax,[ebp-8]
 0053E216    call       @LStrFromPChar
 0053E21B    mov        eax,dword ptr [ebp-8]
 0053E21E    call       004BEE6C
 0053E223    fstp       dword ptr [ebp-4]
 0053E226    wait
 0053E227    xor        eax,eax
 0053E229    pop        edx
 0053E22A    pop        ecx
 0053E22B    pop        ecx
 0053E22C    mov        dword ptr fs:[eax],edx
 0053E22F    push       53E244
 0053E234    lea        eax,[ebp-8]
 0053E237    call       @LStrClr
 0053E23C    ret
<0053E23D    jmp        @HandleFinally
<0053E242    jmp        0053E234
 0053E244    fld        dword ptr [ebp-4]
 0053E247    pop        esi
 0053E248    pop        ebx
 0053E249    pop        ecx
 0053E24A    pop        ecx
 0053E24B    pop        ebp
 0053E24C    ret
*}
//end;

//0053E250
//procedure sub_0053E250(?:?);
//begin
{*
 0053E250    push       ebp
 0053E251    mov        ebp,esp
 0053E253    add        esp,0FFFFFFF4
 0053E256    push       ebx
 0053E257    push       esi
 0053E258    xor        ecx,ecx
 0053E25A    mov        dword ptr [ebp-0C],ecx
 0053E25D    mov        esi,edx
 0053E25F    mov        ebx,eax
 0053E261    xor        eax,eax
 0053E263    push       ebp
 0053E264    push       53E2B5
 0053E269    push       dword ptr fs:[eax]
 0053E26C    mov        dword ptr fs:[eax],esp
 0053E26F    mov        cl,7
 0053E271    mov        edx,esi
 0053E273    mov        eax,ebx
 0053E275    call       004D4308
 0053E27A    push       0
 0053E27C    push       0
 0053E27E    push       0
 0053E280    mov        edx,esi
 0053E282    mov        eax,ebx
 0053E284    mov        ecx,dword ptr [eax]
 0053E286    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E289    mov        edx,eax
 0053E28B    lea        eax,[ebp-0C]
 0053E28E    call       @LStrFromPChar
 0053E293    mov        eax,dword ptr [ebp-0C]
 0053E296    call       004BEE6C
 0053E29B    fstp       qword ptr [ebp-8]
 0053E29E    wait
 0053E29F    xor        eax,eax
 0053E2A1    pop        edx
 0053E2A2    pop        ecx
 0053E2A3    pop        ecx
 0053E2A4    mov        dword ptr fs:[eax],edx
 0053E2A7    push       53E2BC
 0053E2AC    lea        eax,[ebp-0C]
 0053E2AF    call       @LStrClr
 0053E2B4    ret
<0053E2B5    jmp        @HandleFinally
<0053E2BA    jmp        0053E2AC
 0053E2BC    fld        qword ptr [ebp-8]
 0053E2BF    pop        esi
 0053E2C0    pop        ebx
 0053E2C1    mov        esp,ebp
 0053E2C3    pop        ebp
 0053E2C4    ret
*}
//end;

//0053E2C8
//procedure sub_0053E2C8(?:?);
//begin
{*
 0053E2C8    push       ebp
 0053E2C9    mov        ebp,esp
 0053E2CB    add        esp,0FFFFFFEC
 0053E2CE    push       ebx
 0053E2CF    push       esi
 0053E2D0    xor        ecx,ecx
 0053E2D2    mov        dword ptr [ebp-14],ecx
 0053E2D5    mov        esi,edx
 0053E2D7    mov        ebx,eax
 0053E2D9    xor        eax,eax
 0053E2DB    push       ebp
 0053E2DC    push       53E32D
 0053E2E1    push       dword ptr fs:[eax]
 0053E2E4    mov        dword ptr fs:[eax],esp
 0053E2E7    mov        cl,8
 0053E2E9    mov        edx,esi
 0053E2EB    mov        eax,ebx
 0053E2ED    call       004D4308
 0053E2F2    push       0
 0053E2F4    push       0
 0053E2F6    push       0
 0053E2F8    mov        edx,esi
 0053E2FA    mov        eax,ebx
 0053E2FC    mov        ecx,dword ptr [eax]
 0053E2FE    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E301    mov        edx,eax
 0053E303    lea        eax,[ebp-14]
 0053E306    call       @LStrFromPChar
 0053E30B    mov        eax,dword ptr [ebp-14]
 0053E30E    call       004BEE6C
 0053E313    fstp       tbyte ptr [ebp-10]
 0053E316    wait
 0053E317    xor        eax,eax
 0053E319    pop        edx
 0053E31A    pop        ecx
 0053E31B    pop        ecx
 0053E31C    mov        dword ptr fs:[eax],edx
 0053E31F    push       53E334
 0053E324    lea        eax,[ebp-14]
 0053E327    call       @LStrClr
 0053E32C    ret
<0053E32D    jmp        @HandleFinally
<0053E332    jmp        0053E324
 0053E334    fld        tbyte ptr [ebp-10]
 0053E337    pop        esi
 0053E338    pop        ebx
 0053E339    mov        esp,ebp
 0053E33B    pop        ebp
 0053E33C    ret
*}
//end;

//0053E340
//procedure sub_0053E340(?:?; ?:?);
//begin
{*
 0053E340    push       ebp
 0053E341    mov        ebp,esp
 0053E343    add        esp,0FFFFFFF8
 0053E346    push       ebx
 0053E347    push       esi
 0053E348    xor        ebx,ebx
 0053E34A    mov        dword ptr [ebp-8],ebx
 0053E34D    mov        dword ptr [ebp-4],ecx
 0053E350    mov        esi,edx
 0053E352    mov        ebx,eax
 0053E354    xor        eax,eax
 0053E356    push       ebp
 0053E357    push       53E39A
 0053E35C    push       dword ptr fs:[eax]
 0053E35F    mov        dword ptr fs:[eax],esp
 0053E362    mov        cl,0B
 0053E364    mov        edx,esi
 0053E366    mov        eax,ebx
 0053E368    call       004D4308
 0053E36D    lea        ecx,[ebp-8]
 0053E370    mov        edx,esi
 0053E372    mov        eax,ebx
 0053E374    mov        ebx,dword ptr [eax]
 0053E376    call       dword ptr [ebx+18]; TZSQLiteResultSet.sub_0053DF04
 0053E379    mov        eax,dword ptr [ebp-8]
 0053E37C    mov        edx,dword ptr [ebp-4]
 0053E37F    call       004BF678
 0053E384    xor        eax,eax
 0053E386    pop        edx
 0053E387    pop        ecx
 0053E388    pop        ecx
 0053E389    mov        dword ptr fs:[eax],edx
 0053E38C    push       53E3A1
 0053E391    lea        eax,[ebp-8]
 0053E394    call       @LStrClr
 0053E399    ret
<0053E39A    jmp        @HandleFinally
<0053E39F    jmp        0053E391
 0053E3A1    pop        esi
 0053E3A2    pop        ebx
 0053E3A3    pop        ecx
 0053E3A4    pop        ecx
 0053E3A5    pop        ebp
 0053E3A6    ret
*}
//end;

//0053E3A8
//procedure sub_0053E3A8(?:?);
//begin
{*
 0053E3A8    push       ebp
 0053E3A9    mov        ebp,esp
 0053E3AB    add        esp,0FFFFFFEC
 0053E3AE    push       ebx
 0053E3AF    push       esi
 0053E3B0    xor        ecx,ecx
 0053E3B2    mov        dword ptr [ebp-0C],ecx
 0053E3B5    mov        esi,edx
 0053E3B7    mov        ebx,eax
 0053E3B9    xor        eax,eax
 0053E3BB    push       ebp
 0053E3BC    push       53E454
 0053E3C1    push       dword ptr fs:[eax]
 0053E3C4    mov        dword ptr fs:[eax],esp
 0053E3C7    mov        cl,0C
 0053E3C9    mov        edx,esi
 0053E3CB    mov        eax,ebx
 0053E3CD    call       004D4308
 0053E3D2    mov        edx,esi
 0053E3D4    mov        eax,ebx
 0053E3D6    mov        ecx,dword ptr [eax]
 0053E3D8    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E3DB    mov        edx,eax
 0053E3DD    lea        eax,[ebp-0C]
 0053E3E0    call       @LStrFromPChar
 0053E3E5    mov        edx,dword ptr [ebp-0C]
 0053E3E8    mov        eax,53E46C; '????-??-??*'
 0053E3ED    call       004BE568
 0053E3F2    test       al,al
>0053E3F4    je         0053E412
 0053E3F6    mov        eax,dword ptr [ebp-0C]
 0053E3F9    call       004BF8B0
 0053E3FE    call       @TRUNC
 0053E403    mov        dword ptr [ebp-14],eax
 0053E406    mov        dword ptr [ebp-10],edx
 0053E409    fild       qword ptr [ebp-14]
 0053E40C    fstp       qword ptr [ebp-8]
 0053E40F    wait
>0053E410    jmp        0053E42C
 0053E412    mov        eax,dword ptr [ebp-0C]
 0053E415    call       004BFB00
 0053E41A    call       @TRUNC
 0053E41F    mov        dword ptr [ebp-14],eax
 0053E422    mov        dword ptr [ebp-10],edx
 0053E425    fild       qword ptr [ebp-14]
 0053E428    fstp       qword ptr [ebp-8]
 0053E42B    wait
 0053E42C    fld        qword ptr [ebp-8]
 0053E42F    fcomp      dword ptr ds:[53E478]; 0:Single
 0053E435    fnstsw     al
 0053E437    sahf
 0053E438    sete       al
 0053E43B    mov        byte ptr [ebx+34],al; TZSQLiteResultSet.?f34:byte
 0053E43E    xor        eax,eax
 0053E440    pop        edx
 0053E441    pop        ecx
 0053E442    pop        ecx
 0053E443    mov        dword ptr fs:[eax],edx
 0053E446    push       53E45B
 0053E44B    lea        eax,[ebp-0C]
 0053E44E    call       @LStrClr
 0053E453    ret
<0053E454    jmp        @HandleFinally
<0053E459    jmp        0053E44B
 0053E45B    fld        qword ptr [ebp-8]
 0053E45E    pop        esi
 0053E45F    pop        ebx
 0053E460    mov        esp,ebp
 0053E462    pop        ebp
 0053E463    ret
*}
//end;

//0053E47C
//procedure sub_0053E47C(?:?);
//begin
{*
 0053E47C    push       ebp
 0053E47D    mov        ebp,esp
 0053E47F    add        esp,0FFFFFFF4
 0053E482    push       ebx
 0053E483    push       esi
 0053E484    xor        ecx,ecx
 0053E486    mov        dword ptr [ebp-0C],ecx
 0053E489    mov        esi,edx
 0053E48B    mov        ebx,eax
 0053E48D    xor        eax,eax
 0053E48F    push       ebp
 0053E490    push       53E504
 0053E495    push       dword ptr fs:[eax]
 0053E498    mov        dword ptr fs:[eax],esp
 0053E49B    mov        cl,0D
 0053E49D    mov        edx,esi
 0053E49F    mov        eax,ebx
 0053E4A1    call       004D4308
 0053E4A6    mov        edx,esi
 0053E4A8    mov        eax,ebx
 0053E4AA    mov        ecx,dword ptr [eax]
 0053E4AC    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E4AF    mov        edx,eax
 0053E4B1    lea        eax,[ebp-0C]
 0053E4B4    call       @LStrFromPChar
 0053E4B9    mov        edx,dword ptr [ebp-0C]
 0053E4BC    mov        eax,53E51C; '*??:??:??*'
 0053E4C1    call       004BE568
 0053E4C6    test       al,al
>0053E4C8    je         0053E4DD
 0053E4CA    mov        eax,dword ptr [ebp-0C]
 0053E4CD    call       004BF8B0
 0053E4D2    call       @FRAC
 0053E4D7    fstp       qword ptr [ebp-8]
 0053E4DA    wait
>0053E4DB    jmp        0053E4EE
 0053E4DD    mov        eax,dword ptr [ebp-0C]
 0053E4E0    call       004BFB00
 0053E4E5    call       @FRAC
 0053E4EA    fstp       qword ptr [ebp-8]
 0053E4ED    wait
 0053E4EE    xor        eax,eax
 0053E4F0    pop        edx
 0053E4F1    pop        ecx
 0053E4F2    pop        ecx
 0053E4F3    mov        dword ptr fs:[eax],edx
 0053E4F6    push       53E50B
 0053E4FB    lea        eax,[ebp-0C]
 0053E4FE    call       @LStrClr
 0053E503    ret
<0053E504    jmp        @HandleFinally
<0053E509    jmp        0053E4FB
 0053E50B    fld        qword ptr [ebp-8]
 0053E50E    pop        esi
 0053E50F    pop        ebx
 0053E510    mov        esp,ebp
 0053E512    pop        ebp
 0053E513    ret
*}
//end;

//0053E528
//procedure sub_0053E528(?:?);
//begin
{*
 0053E528    push       ebp
 0053E529    mov        ebp,esp
 0053E52B    add        esp,0FFFFFFF4
 0053E52E    push       ebx
 0053E52F    push       esi
 0053E530    xor        ecx,ecx
 0053E532    mov        dword ptr [ebp-0C],ecx
 0053E535    mov        esi,edx
 0053E537    mov        ebx,eax
 0053E539    xor        eax,eax
 0053E53B    push       ebp
 0053E53C    push       53E5B8
 0053E541    push       dword ptr fs:[eax]
 0053E544    mov        dword ptr fs:[eax],esp
 0053E547    mov        cl,0E
 0053E549    mov        edx,esi
 0053E54B    mov        eax,ebx
 0053E54D    call       004D4308
 0053E552    mov        edx,esi
 0053E554    mov        eax,ebx
 0053E556    mov        ecx,dword ptr [eax]
 0053E558    call       dword ptr [ecx+14]; TZSQLiteResultSet.sub_0053DE70
 0053E55B    mov        edx,eax
 0053E55D    lea        eax,[ebp-0C]
 0053E560    call       @LStrFromPChar
 0053E565    mov        edx,dword ptr [ebp-0C]
 0053E568    mov        eax,53E5D0; '????-??-??*'
 0053E56D    call       004BE568
 0053E572    test       al,al
>0053E574    je         0053E584
 0053E576    mov        eax,dword ptr [ebp-0C]
 0053E579    call       004BF8B0
 0053E57E    fstp       qword ptr [ebp-8]
 0053E581    wait
>0053E582    jmp        0053E590
 0053E584    mov        eax,dword ptr [ebp-0C]
 0053E587    call       004BFB00
 0053E58C    fstp       qword ptr [ebp-8]
 0053E58F    wait
 0053E590    fld        qword ptr [ebp-8]
 0053E593    fcomp      dword ptr ds:[53E5DC]; 0:Single
 0053E599    fnstsw     al
 0053E59B    sahf
 0053E59C    sete       al
 0053E59F    mov        byte ptr [ebx+34],al; TZSQLiteResultSet.?f34:byte
 0053E5A2    xor        eax,eax
 0053E5A4    pop        edx
 0053E5A5    pop        ecx
 0053E5A6    pop        ecx
 0053E5A7    mov        dword ptr fs:[eax],edx
 0053E5AA    push       53E5BF
 0053E5AF    lea        eax,[ebp-0C]
 0053E5B2    call       @LStrClr
 0053E5B7    ret
<0053E5B8    jmp        @HandleFinally
<0053E5BD    jmp        0053E5AF
 0053E5BF    fld        qword ptr [ebp-8]
 0053E5C2    pop        esi
 0053E5C3    pop        ebx
 0053E5C4    mov        esp,ebp
 0053E5C6    pop        ebp
 0053E5C7    ret
*}
//end;

//0053E5E0
//function sub_0053E5E0(?:?):?;
//begin
{*
 0053E5E0    push       ebp
 0053E5E1    mov        ebp,esp
 0053E5E3    push       0
 0053E5E5    push       ebx
 0053E5E6    push       esi
 0053E5E7    mov        esi,edx
 0053E5E9    mov        ebx,eax
 0053E5EB    xor        eax,eax
 0053E5ED    push       ebp
 0053E5EE    push       53E637
 0053E5F3    push       dword ptr fs:[eax]
 0053E5F6    mov        dword ptr fs:[eax],esp
 0053E5F9    mov        cl,0F
 0053E5FB    mov        edx,esi
 0053E5FD    mov        eax,ebx
 0053E5FF    call       004D4308
 0053E604    lea        ecx,[ebp-4]
 0053E607    mov        edx,esi
 0053E609    mov        eax,ebx
 0053E60B    mov        ebx,dword ptr [eax]
 0053E60D    call       dword ptr [ebx+18]; TZSQLiteResultSet.sub_0053DF04
 0053E610    mov        ecx,dword ptr [ebp-4]
 0053E613    mov        dl,1
 0053E615    mov        eax,[0041CC74]; TStringStream
 0053E61A    call       TStringStream.Create; TStringStream.Create
 0053E61F    mov        ebx,eax
 0053E621    xor        eax,eax
 0053E623    pop        edx
 0053E624    pop        ecx
 0053E625    pop        ecx
 0053E626    mov        dword ptr fs:[eax],edx
 0053E629    push       53E63E
 0053E62E    lea        eax,[ebp-4]
 0053E631    call       @LStrClr
 0053E636    ret
<0053E637    jmp        @HandleFinally
<0053E63C    jmp        0053E62E
 0053E63E    mov        eax,ebx
 0053E640    pop        esi
 0053E641    pop        ebx
 0053E642    pop        ecx
 0053E643    pop        ebp
 0053E644    ret
*}
//end;

//0053E648
//function sub_0053E648():?;
//begin
{*
 0053E648    push       ebp
 0053E649    mov        ebp,esp
 0053E64B    mov        cl,10
 0053E64D    call       004D4308
 0053E652    xor        eax,eax
 0053E654    pop        ebp
 0053E655    ret
*}
//end;

//0053E658
//function sub_0053E658(?:?):?;
//begin
{*
 0053E658    push       ebp
 0053E659    mov        ebp,esp
 0053E65B    push       0
 0053E65D    push       0
 0053E65F    push       ebx
 0053E660    push       esi
 0053E661    mov        esi,edx
 0053E663    mov        ebx,eax
 0053E665    xor        eax,eax
 0053E667    push       ebp
 0053E668    push       53E6C1
 0053E66D    push       dword ptr fs:[eax]
 0053E670    mov        dword ptr fs:[eax],esp
 0053E673    mov        cl,11
 0053E675    mov        edx,esi
 0053E677    mov        eax,ebx
 0053E679    call       004D4308
 0053E67E    lea        ecx,[ebp-8]
 0053E681    mov        edx,esi
 0053E683    mov        eax,ebx
 0053E685    mov        ebx,dword ptr [eax]
 0053E687    call       dword ptr [ebx+18]; TZSQLiteResultSet.sub_0053DF04
 0053E68A    mov        eax,dword ptr [ebp-8]
 0053E68D    lea        edx,[ebp-4]
 0053E690    call       0053D53C
 0053E695    mov        ecx,dword ptr [ebp-4]
 0053E698    mov        dl,1
 0053E69A    mov        eax,[0041CC74]; TStringStream
 0053E69F    call       TStringStream.Create; TStringStream.Create
 0053E6A4    mov        ebx,eax
 0053E6A6    xor        eax,eax
 0053E6A8    pop        edx
 0053E6A9    pop        ecx
 0053E6AA    pop        ecx
 0053E6AB    mov        dword ptr fs:[eax],edx
 0053E6AE    push       53E6C8
 0053E6B3    lea        eax,[ebp-8]
 0053E6B6    mov        edx,2
 0053E6BB    call       @LStrArrayClr
 0053E6C0    ret
<0053E6C1    jmp        @HandleFinally
<0053E6C6    jmp        0053E6B3
 0053E6C8    mov        eax,ebx
 0053E6CA    pop        esi
 0053E6CB    pop        ebx
 0053E6CC    pop        ecx
 0053E6CD    pop        ecx
 0053E6CE    pop        ebp
 0053E6CF    ret
*}
//end;

//0053E6D0
//procedure sub_0053E6D0(?:?; ?:?);
//begin
{*
 0053E6D0    push       ebp
 0053E6D1    mov        ebp,esp
 0053E6D3    push       0
 0053E6D5    push       0
 0053E6D7    push       0
 0053E6D9    push       0
 0053E6DB    push       0
 0053E6DD    push       ebx
 0053E6DE    push       esi
 0053E6DF    mov        dword ptr [ebp-4],ecx
 0053E6E2    mov        esi,edx
 0053E6E4    mov        ebx,eax
 0053E6E6    xor        eax,eax
 0053E6E8    push       ebp
 0053E6E9    push       53E7F3
 0053E6EE    push       dword ptr fs:[eax]
 0053E6F1    mov        dword ptr fs:[eax],esp
 0053E6F4    mov        edx,esi
 0053E6F6    mov        eax,ebx
 0053E6F8    call       004D4450
 0053E6FD    xor        eax,eax
 0053E6FF    mov        dword ptr [ebp-8],eax
 0053E702    xor        eax,eax
 0053E704    push       ebp
 0053E705    push       53E7D1
 0053E70A    push       dword ptr fs:[eax]
 0053E70D    mov        dword ptr fs:[eax],esp
 0053E710    mov        edx,esi
 0053E712    mov        eax,ebx
 0053E714    mov        ecx,dword ptr [eax]
 0053E716    call       dword ptr [ecx+10]; TZSQLiteResultSet.sub_0053DDE0
 0053E719    test       al,al
>0053E71B    jne        0053E796
 0053E71D    mov        eax,dword ptr [ebx+2C]; TZSQLiteResultSet.?f2C:dword
 0053E720    mov        edx,esi
 0053E722    mov        ecx,dword ptr [eax]
 0053E724    call       dword ptr [ecx+44]
 0053E727    cmp        al,11
>0053E729    je         0053E74B
 0053E72B    lea        ecx,[ebp-0C]
 0053E72E    mov        edx,esi
 0053E730    mov        eax,ebx
 0053E732    mov        ebx,dword ptr [eax]
 0053E734    call       dword ptr [ebx+18]; TZSQLiteResultSet.sub_0053DF04
 0053E737    mov        ecx,dword ptr [ebp-0C]
 0053E73A    mov        dl,1
 0053E73C    mov        eax,[0041CC74]; TStringStream
 0053E741    call       TStringStream.Create; TStringStream.Create
 0053E746    mov        dword ptr [ebp-8],eax
>0053E749    jmp        0053E774
 0053E74B    lea        ecx,[ebp-14]
 0053E74E    mov        edx,esi
 0053E750    mov        eax,ebx
 0053E752    mov        ebx,dword ptr [eax]
 0053E754    call       dword ptr [ebx+18]; TZSQLiteResultSet.sub_0053DF04
 0053E757    mov        eax,dword ptr [ebp-14]
 0053E75A    lea        edx,[ebp-10]
 0053E75D    call       0053D53C
 0053E762    mov        ecx,dword ptr [ebp-10]
 0053E765    mov        dl,1
 0053E767    mov        eax,[0041CC74]; TStringStream
 0053E76C    call       TStringStream.Create; TStringStream.Create
 0053E771    mov        dword ptr [ebp-8],eax
 0053E774    mov        ecx,dword ptr [ebp-8]
 0053E777    mov        dl,1
 0053E779    mov        eax,[004D3F38]; TZAbstractBlob
 0053E77E    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 0053E783    mov        edx,eax
 0053E785    test       edx,edx
>0053E787    je         0053E78C
 0053E789    sub        edx,0FFFFFFE8
 0053E78C    mov        eax,dword ptr [ebp-4]
 0053E78F    call       @IntfCopy
>0053E794    jmp        0053E7B5
 0053E796    xor        ecx,ecx
 0053E798    mov        dl,1
 0053E79A    mov        eax,[004D3F38]; TZAbstractBlob
 0053E79F    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 0053E7A4    mov        edx,eax
 0053E7A6    test       edx,edx
>0053E7A8    je         0053E7AD
 0053E7AA    sub        edx,0FFFFFFE8
 0053E7AD    mov        eax,dword ptr [ebp-4]
 0053E7B0    call       @IntfCopy
 0053E7B5    xor        eax,eax
 0053E7B7    pop        edx
 0053E7B8    pop        ecx
 0053E7B9    pop        ecx
 0053E7BA    mov        dword ptr fs:[eax],edx
 0053E7BD    push       53E7D8
 0053E7C2    cmp        dword ptr [ebp-8],0
>0053E7C6    je         0053E7D0
 0053E7C8    mov        eax,dword ptr [ebp-8]
 0053E7CB    call       TObject.Free
 0053E7D0    ret
<0053E7D1    jmp        @HandleFinally
<0053E7D6    jmp        0053E7C2
 0053E7D8    xor        eax,eax
 0053E7DA    pop        edx
 0053E7DB    pop        ecx
 0053E7DC    pop        ecx
 0053E7DD    mov        dword ptr fs:[eax],edx
 0053E7E0    push       53E7FA
 0053E7E5    lea        eax,[ebp-14]
 0053E7E8    mov        edx,3
 0053E7ED    call       @LStrArrayClr
 0053E7F2    ret
<0053E7F3    jmp        @HandleFinally
<0053E7F8    jmp        0053E7E5
 0053E7FA    pop        esi
 0053E7FB    pop        ebx
 0053E7FC    mov        esp,ebp
 0053E7FE    pop        ebp
 0053E7FF    ret
*}
//end;

//0053E800
//function sub_0053E800:?;
//begin
{*
 0053E800    push       ebp
 0053E801    mov        ebp,esp
 0053E803    push       ebx
 0053E804    push       esi
 0053E805    mov        esi,eax
 0053E807    xor        ebx,ebx
 0053E809    mov        eax,dword ptr [esi+18]; TZSQLiteResultSet.?f18:dword
 0053E80C    test       eax,eax
>0053E80E    jle        0053E819
 0053E810    cmp        eax,dword ptr [esi+10]; TZSQLiteResultSet.?f10:dword
>0053E813    jle        0053E935
 0053E819    mov        eax,dword ptr [esi+14]; TZSQLiteResultSet.?f14:Integer
 0053E81C    test       eax,eax
>0053E81E    jne        0053E861
 0053E820    cmp        dword ptr [esi+4C],0; TZSQLiteResultSet.?f4C:dword
 0053E824    setne      bl
 0053E827    test       bl,bl
>0053E829    je         0053E846
 0053E82B    add        dword ptr [esi+14],1; TZSQLiteResultSet.?f14:Integer
>0053E82F    jno        0053E836
 0053E831    call       @IntOver
 0053E836    add        dword ptr [esi+10],1; TZSQLiteResultSet.?f10:dword
>0053E83A    jno        0053E841
 0053E83C    call       @IntOver
>0053E841    jmp        0053E924
 0053E846    cmp        eax,dword ptr [esi+10]; TZSQLiteResultSet.?f10:dword
>0053E849    jl         0053E924
 0053E84F    add        eax,1
>0053E852    jno        0053E859
 0053E854    call       @IntOver
 0053E859    mov        dword ptr [esi+10],eax; TZSQLiteResultSet.?f10:dword
>0053E85C    jmp        0053E924
 0053E861    mov        eax,dword ptr [esi+4C]; TZSQLiteResultSet.?f4C:dword
 0053E864    test       eax,eax
>0053E866    je         0053E884
 0053E868    mov        edx,dword ptr [esi+44]; TZSQLiteResultSet.?f44:dword
 0053E86B    add        edx,1
>0053E86E    jno        0053E875
 0053E870    call       @IntOver
 0053E875    imul       edx,edx,4
>0053E878    jno        0053E87F
 0053E87A    call       @IntOver
 0053E87F    call       @FreeMem
 0053E884    xor        eax,eax
 0053E886    mov        dword ptr [esi+4C],eax; TZSQLiteResultSet.?f4C:dword
 0053E889    cmp        dword ptr [esi+40],0; TZSQLiteResultSet.?f40:dword
>0053E88D    je         0053E8ED
 0053E88F    mov        eax,dword ptr [esi+48]; TZSQLiteResultSet.?f48:dword
 0053E892    test       eax,eax
>0053E894    je         0053E8BC
 0053E896    mov        edx,dword ptr [esi+44]; TZSQLiteResultSet.?f44:dword
 0053E899    add        edx,1
>0053E89C    jno        0053E8A3
 0053E89E    call       @IntOver
 0053E8A3    imul       edx,edx,4
>0053E8A6    jno        0053E8AD
 0053E8A8    call       @IntOver
 0053E8AD    imul       edx,edx,2
>0053E8B0    jno        0053E8B7
 0053E8B2    call       @IntOver
 0053E8B7    call       @FreeMem
 0053E8BC    xor        eax,eax
 0053E8BE    mov        dword ptr [esi+48],eax; TZSQLiteResultSet.?f48:dword
 0053E8C1    lea        eax,[esi+4C]; TZSQLiteResultSet.?f4C:dword
 0053E8C4    push       eax
 0053E8C5    lea        eax,[esi+48]; TZSQLiteResultSet.?f48:dword
 0053E8C8    push       eax
 0053E8C9    lea        ecx,[esi+44]; TZSQLiteResultSet.?f44:dword
 0053E8CC    mov        edx,dword ptr [esi+40]; TZSQLiteResultSet.?f40:dword
 0053E8CF    mov        eax,dword ptr [esi+50]; TZSQLiteResultSet.?f50:IZSQLitePlainDriver
 0053E8D2    mov        ebx,dword ptr [eax]
 0053E8D4    call       dword ptr [ebx+8C]
 0053E8DA    push       4
 0053E8DC    push       53E944; 'FETCH'
 0053E8E1    xor        ecx,ecx
 0053E8E3    mov        edx,eax
 0053E8E5    mov        eax,dword ptr [esi+50]; TZSQLiteResultSet.?f50:IZSQLitePlainDriver
 0053E8E8    call       0053D304
 0053E8ED    cmp        dword ptr [esi+4C],0; TZSQLiteResultSet.?f4C:dword
>0053E8F1    je         0053E90D
 0053E8F3    add        dword ptr [esi+10],1; TZSQLiteResultSet.?f10:dword
>0053E8F7    jno        0053E8FE
 0053E8F9    call       @IntOver
 0053E8FE    mov        eax,dword ptr [esi+10]; TZSQLiteResultSet.?f10:dword
 0053E901    cmp        eax,dword ptr [esi+14]; TZSQLiteResultSet.?f14:Integer
>0053E904    jle        0053E909
 0053E906    mov        dword ptr [esi+14],eax; TZSQLiteResultSet.?f14:Integer
 0053E909    mov        bl,1
>0053E90B    jmp        0053E924
 0053E90D    mov        eax,dword ptr [esi+14]; TZSQLiteResultSet.?f14:Integer
 0053E910    cmp        eax,dword ptr [esi+10]; TZSQLiteResultSet.?f10:dword
>0053E913    jl         0053E922
 0053E915    add        eax,1
>0053E918    jno        0053E91F
 0053E91A    call       @IntOver
 0053E91F    mov        dword ptr [esi+10],eax; TZSQLiteResultSet.?f10:dword
 0053E922    xor        ebx,ebx
 0053E924    test       bl,bl
>0053E926    jne        0053E935
 0053E928    cmp        dword ptr [esi+40],0; TZSQLiteResultSet.?f40:dword
>0053E92C    je         0053E935
 0053E92E    mov        eax,esi
 0053E930    call       0053DD64
 0053E935    mov        eax,ebx
 0053E937    pop        esi
 0053E938    pop        ebx
 0053E939    pop        ebp
 0053E93A    ret
*}
//end;

//0053E94C
//constructor TZSQLiteCachedResolver.Create(?:TZSQLiteCachedResolver; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 0053E94C    push       ebp
 0053E94D    mov        ebp,esp
 0053E94F    add        esp,0FFFFFFF8
 0053E952    push       ebx
 0053E953    push       esi
 0053E954    push       edi
 0053E955    test       dl,dl
>0053E957    je         0053E961
 0053E959    add        esp,0FFFFFFF0
 0053E95C    call       @ClassCreate
 0053E961    mov        dword ptr [ebp-8],ecx
 0053E964    mov        byte ptr [ebp-1],dl
 0053E967    mov        edi,eax
 0053E969    mov        eax,dword ptr [ebp-8]
 0053E96C    call       @IntfAddRef
 0053E971    mov        eax,dword ptr [ebp+0C]
 0053E974    call       @IntfAddRef
 0053E979    mov        eax,dword ptr [ebp+8]
 0053E97C    call       @IntfAddRef
 0053E981    xor        eax,eax
 0053E983    push       ebp
 0053E984    push       53EA15
 0053E989    push       dword ptr fs:[eax]
 0053E98C    mov        dword ptr fs:[eax],esp
 0053E98F    mov        eax,dword ptr [ebp+8]
 0053E992    push       eax
 0053E993    mov        ecx,dword ptr [ebp+0C]
 0053E996    xor        edx,edx
 0053E998    mov        eax,edi
 0053E99A    call       TZGenericCachedResolver.Create
 0053E99F    lea        eax,[edi+34]; TZSQLiteCachedResolver.?f34:IZSQLitePlainDriver
 0053E9A2    mov        edx,dword ptr [ebp-8]
 0053E9A5    call       @IntfCopy
 0053E9AA    mov        eax,dword ptr [ebp+10]
 0053E9AD    mov        dword ptr [edi+30],eax; TZSQLiteCachedResolver.?f30:dword
 0053E9B0    xor        eax,eax
 0053E9B2    mov        dword ptr [edi+38],eax; TZSQLiteCachedResolver.?f38:dword
 0053E9B5    mov        eax,dword ptr [ebp+8]
 0053E9B8    mov        edx,dword ptr [eax]
 0053E9BA    call       dword ptr [edx+0C]
 0053E9BD    mov        esi,eax
 0053E9BF    test       esi,esi
>0053E9C1    jle        0053E9EF
 0053E9C3    mov        ebx,1
 0053E9C8    mov        edx,ebx
 0053E9CA    mov        eax,dword ptr [ebp+8]
 0053E9CD    mov        ecx,dword ptr [eax]
 0053E9CF    call       dword ptr [ecx+10]
 0053E9D2    test       al,al
>0053E9D4    je         0053E9EB
 0053E9D6    mov        edx,ebx
 0053E9D8    mov        eax,dword ptr [ebp+8]
 0053E9DB    mov        ecx,dword ptr [eax]
 0053E9DD    call       dword ptr [ecx+48]
 0053E9E0    add        al,0FE
 0053E9E2    sub        al,4
>0053E9E4    jae        0053E9EB
 0053E9E6    mov        dword ptr [edi+38],ebx; TZSQLiteCachedResolver.?f38:dword
>0053E9E9    jmp        0053E9EF
 0053E9EB    inc        ebx
 0053E9EC    dec        esi
<0053E9ED    jne        0053E9C8
 0053E9EF    xor        eax,eax
 0053E9F1    pop        edx
 0053E9F2    pop        ecx
 0053E9F3    pop        ecx
 0053E9F4    mov        dword ptr fs:[eax],edx
 0053E9F7    push       53EA1C
 0053E9FC    lea        eax,[ebp-8]
 0053E9FF    call       @IntfClear
 0053EA04    lea        eax,[ebp+8]
 0053EA07    call       @IntfClear
 0053EA0C    lea        eax,[ebp+0C]
 0053EA0F    call       @IntfClear
 0053EA14    ret
<0053EA15    jmp        @HandleFinally
<0053EA1A    jmp        0053E9FC
 0053EA1C    mov        eax,edi
 0053EA1E    cmp        byte ptr [ebp-1],0
>0053EA22    je         0053EA33
 0053EA24    call       @AfterConstruction
 0053EA29    pop        dword ptr fs:[0]
 0053EA30    add        esp,0C
 0053EA33    mov        eax,edi
 0053EA35    pop        edi
 0053EA36    pop        esi
 0053EA37    pop        ebx
 0053EA38    pop        ecx
 0053EA39    pop        ecx
 0053EA3A    pop        ebp
 0053EA3B    ret        0C
*}
//end;

//0053EA40
//procedure sub_0053EA40(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053EA40    push       ebp
 0053EA41    mov        ebp,esp
 0053EA43    push       0
 0053EA45    push       0
 0053EA47    push       0
 0053EA49    push       ebx
 0053EA4A    push       esi
 0053EA4B    push       edi
 0053EA4C    mov        ebx,ecx
 0053EA4E    mov        dword ptr [ebp-4],edx
 0053EA51    mov        esi,eax
 0053EA53    mov        edi,dword ptr [ebp+0C]
 0053EA56    mov        eax,dword ptr [ebp-4]
 0053EA59    call       @IntfAddRef
 0053EA5E    xor        eax,eax
 0053EA60    push       ebp
 0053EA61    push       53EB38
 0053EA66    push       dword ptr fs:[eax]
 0053EA69    mov        dword ptr fs:[eax],esp
 0053EA6C    push       edi
 0053EA6D    mov        eax,dword ptr [ebp+8]
 0053EA70    push       eax
 0053EA71    mov        ecx,ebx
 0053EA73    mov        edx,dword ptr [ebp-4]
 0053EA76    mov        eax,esi
 0053EA78    call       004CF2B8
 0053EA7D    cmp        bl,2
>0053EA80    jne        0053EB12
 0053EA86    cmp        dword ptr [esi+38],0; TZSQLiteCachedResolver.?f38:dword
>0053EA8A    jle        0053EB12
 0053EA90    mov        edx,dword ptr [esi+38]; TZSQLiteCachedResolver.?f38:dword
 0053EA93    mov        eax,edi
 0053EA95    call       004C9638
 0053EA9A    test       al,al
>0053EA9C    je         0053EB12
 0053EA9E    lea        edx,[ebp-8]
 0053EAA1    mov        eax,dword ptr [esi+0C]; TZSQLiteCachedResolver.?fC:IZConnection
 0053EAA4    mov        ecx,dword ptr [eax]
 0053EAA6    call       dword ptr [ecx+0C]
 0053EAA9    lea        ecx,[ebp-0C]
 0053EAAC    mov        edx,53EB50; 'SELECT LAST_INSERT_ROWID()'
 0053EAB1    mov        eax,dword ptr [ebp-8]
 0053EAB4    mov        ebx,dword ptr [eax]
 0053EAB6    call       dword ptr [ebx+0C]
 0053EAB9    xor        eax,eax
 0053EABB    push       ebp
 0053EABC    push       53EB0B
 0053EAC1    push       dword ptr fs:[eax]
 0053EAC4    mov        dword ptr fs:[eax],esp
 0053EAC7    mov        eax,dword ptr [ebp-0C]
 0053EACA    mov        edx,dword ptr [eax]
 0053EACC    call       dword ptr [edx+0C]
 0053EACF    test       al,al
>0053EAD1    je         0053EAED
 0053EAD3    mov        edx,1
 0053EAD8    mov        eax,dword ptr [ebp-0C]
 0053EADB    mov        ecx,dword ptr [eax]
 0053EADD    call       dword ptr [ecx+38]
 0053EAE0    push       edx
 0053EAE1    push       eax
 0053EAE2    mov        edx,dword ptr [esi+38]; TZSQLiteCachedResolver.?f38:dword
 0053EAE5    mov        eax,dword ptr [ebp+8]
 0053EAE8    call       004CC1D4
 0053EAED    xor        eax,eax
 0053EAEF    pop        edx
 0053EAF0    pop        ecx
 0053EAF1    pop        ecx
 0053EAF2    mov        dword ptr fs:[eax],edx
 0053EAF5    push       53EB12
 0053EAFA    mov        eax,dword ptr [ebp-0C]
 0053EAFD    mov        edx,dword ptr [eax]
 0053EAFF    call       dword ptr [edx+10]
 0053EB02    mov        eax,dword ptr [ebp-8]
 0053EB05    mov        edx,dword ptr [eax]
 0053EB07    call       dword ptr [edx+14]
 0053EB0A    ret
<0053EB0B    jmp        @HandleFinally
<0053EB10    jmp        0053EAFA
 0053EB12    xor        eax,eax
 0053EB14    pop        edx
 0053EB15    pop        ecx
 0053EB16    pop        ecx
 0053EB17    mov        dword ptr fs:[eax],edx
 0053EB1A    push       53EB3F
 0053EB1F    lea        eax,[ebp-0C]
 0053EB22    call       @IntfClear
 0053EB27    lea        eax,[ebp-8]
 0053EB2A    call       @IntfClear
 0053EB2F    lea        eax,[ebp-4]
 0053EB32    call       @IntfClear
 0053EB37    ret
<0053EB38    jmp        @HandleFinally
<0053EB3D    jmp        0053EB1F
 0053EB3F    pop        edi
 0053EB40    pop        esi
 0053EB41    pop        ebx
 0053EB42    mov        esp,ebp
 0053EB44    pop        ebp
 0053EB45    ret        8
*}
//end;

//0053EB6C
//procedure sub_0053EB6C(?:?; ?:?);
//begin
{*
 0053EB6C    push       ebp
 0053EB6D    mov        ebp,esp
 0053EB6F    add        esp,0FFFFFFF8
 0053EB72    push       ebx
 0053EB73    push       esi
 0053EB74    push       edi
 0053EB75    mov        ebx,ecx
 0053EB77    mov        dword ptr [ebp-4],edx
 0053EB7A    mov        eax,ebx
 0053EB7C    call       @LStrClr
 0053EB81    mov        eax,dword ptr [ebp-4]
 0053EB84    mov        eax,dword ptr [eax+8]
 0053EB87    test       eax,eax
>0053EB89    je         0053EBF3
 0053EB8B    mov        edi,eax
 0053EB8D    sub        edi,1
>0053EB90    jno        0053EB97
 0053EB92    call       @IntOver
 0053EB97    test       edi,edi
>0053EB99    jl         0053EBE5
 0053EB9B    inc        edi
 0053EB9C    mov        dword ptr [ebp-8],0
 0053EBA3    mov        edx,dword ptr [ebp-8]
 0053EBA6    mov        eax,dword ptr [ebp-4]
 0053EBA9    call       TObjectList.GetItem
 0053EBAE    mov        esi,eax
 0053EBB0    cmp        dword ptr [ebx],0
>0053EBB3    je         0053EBC1
 0053EBB5    mov        eax,ebx
 0053EBB7    mov        edx,53EC04; ','
 0053EBBC    call       @LStrCat
 0053EBC1    cmp        dword ptr [esi+10],0
>0053EBC5    je         0053EBD3
 0053EBC7    mov        eax,ebx
 0053EBC9    mov        edx,dword ptr [esi+10]
 0053EBCC    call       @LStrCat
>0053EBD1    jmp        0053EBDF
 0053EBD3    mov        eax,ebx
 0053EBD5    mov        edx,53EC10; 'NULL'
 0053EBDA    call       @LStrCat
 0053EBDF    inc        dword ptr [ebp-8]
 0053EBE2    dec        edi
<0053EBE3    jne        0053EBA3
 0053EBE5    mov        ecx,dword ptr [ebx]
 0053EBE7    mov        eax,ebx
 0053EBE9    mov        edx,53EC20; 'SELECT '
 0053EBEE    call       @LStrCat3
 0053EBF3    pop        edi
 0053EBF4    pop        esi
 0053EBF5    pop        ebx
 0053EBF6    pop        ecx
 0053EBF7    pop        ecx
 0053EBF8    pop        ebp
 0053EBF9    ret
*}
//end;

end.