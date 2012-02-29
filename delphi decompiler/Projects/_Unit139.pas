{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit139;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs, ZSelectSchema, Contnrs, ZDbcStatement;

type
  TZResolverParameter = class(TObject)
  public
    f4:dword;//f4
    f8:String;//f8
    fC:byte;//fC
    fD:byte;//fD
    f10:String;//f10
    //constructor Create(?:TZResolverParameter; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;
  TZGenericCachedResolver = class(TInterfacedObject)
  public
    fC:IZConnection;//fC
    f10:IZResultSetMetadata;//f10
    f14:IZDatabaseMetadata;//f14
    f18:IZIdentifierConvertor;//f18
    f1C:TObjectList;//f1C
    f20:TObjectList;//f20
    f24:TObjectList;//f24
    f28:byte;//f28
    f29:byte;//f29
    f2A:byte;//f2A
    destructor Destroy; virtual;
    //function sub_004CE694(?:?):?; virtual;
    //procedure sub_004CF1FC(?:?; ?:?); virtual;
    //procedure sub_004CF2B8(?:?; ?:?; ?:?; ?:?); virtual;
    procedure sub_004CF884; virtual;
    //constructor Create(?:TZGenericCachedResolver; _Dv__:Boolean; ?:TZAbstractStatement; ?:?);
  end;

implementation

{$R *.DFM}

//004CDB04
//constructor TZResolverParameter.Create(?:TZResolverParameter; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004CDB04    push       ebp
 004CDB05    mov        ebp,esp
 004CDB07    push       ebx
 004CDB08    push       esi
 004CDB09    push       edi
 004CDB0A    test       dl,dl
>004CDB0C    je         004CDB16
 004CDB0E    add        esp,0FFFFFFF0
 004CDB11    call       @ClassCreate
 004CDB16    mov        esi,ecx
 004CDB18    mov        ebx,edx
 004CDB1A    mov        edi,eax
 004CDB1C    mov        eax,dword ptr [ebp+14]
 004CDB1F    call       @LStrAddRef
 004CDB24    mov        eax,dword ptr [ebp+8]
 004CDB27    call       @LStrAddRef
 004CDB2C    xor        eax,eax
 004CDB2E    push       ebp
 004CDB2F    push       4CDB7D
 004CDB34    push       dword ptr fs:[eax]
 004CDB37    mov        dword ptr fs:[eax],esp
 004CDB3A    mov        al,byte ptr [ebp+10]
 004CDB3D    mov        byte ptr [edi+0C],al; TZResolverParameter.?fC:byte
 004CDB40    mov        dword ptr [edi+4],esi; TZResolverParameter.?f4:dword
 004CDB43    lea        eax,[edi+8]; TZResolverParameter.?f8:String
 004CDB46    mov        edx,dword ptr [ebp+14]
 004CDB49    call       @LStrAsg
 004CDB4E    mov        al,byte ptr [ebp+0C]
 004CDB51    mov        byte ptr [edi+0D],al; TZResolverParameter.?fD:byte
 004CDB54    lea        eax,[edi+10]; TZResolverParameter.?f10:String
 004CDB57    mov        edx,dword ptr [ebp+8]
 004CDB5A    call       @LStrAsg
 004CDB5F    xor        eax,eax
 004CDB61    pop        edx
 004CDB62    pop        ecx
 004CDB63    pop        ecx
 004CDB64    mov        dword ptr fs:[eax],edx
 004CDB67    push       4CDB84
 004CDB6C    lea        eax,[ebp+8]
 004CDB6F    call       @LStrClr
 004CDB74    lea        eax,[ebp+14]
 004CDB77    call       @LStrClr
 004CDB7C    ret
<004CDB7D    jmp        @HandleFinally
<004CDB82    jmp        004CDB6C
 004CDB84    mov        eax,edi
 004CDB86    test       bl,bl
>004CDB88    je         004CDB99
 004CDB8A    call       @AfterConstruction
 004CDB8F    pop        dword ptr fs:[0]
 004CDB96    add        esp,0C
 004CDB99    mov        eax,edi
 004CDB9B    pop        edi
 004CDB9C    pop        esi
 004CDB9D    pop        ebx
 004CDB9E    pop        ebp
 004CDB9F    ret        10
*}
//end;

//004CDBA4
//constructor TZGenericCachedResolver.Create(?:TZGenericCachedResolver; _Dv__:Boolean; ?:TZAbstractStatement; ?:?);
//begin
{*
 004CDBA4    push       ebp
 004CDBA5    mov        ebp,esp
 004CDBA7    push       ecx
 004CDBA8    mov        ecx,4
 004CDBAD    push       0
 004CDBAF    push       0
 004CDBB1    dec        ecx
<004CDBB2    jne        004CDBAD
 004CDBB4    xchg       ecx,dword ptr [ebp-4]
 004CDBB7    push       ebx
 004CDBB8    push       esi
 004CDBB9    test       dl,dl
>004CDBBB    je         004CDBC5
 004CDBBD    add        esp,0FFFFFFF0
 004CDBC0    call       @ClassCreate
 004CDBC5    mov        dword ptr [ebp-4],ecx
 004CDBC8    mov        ebx,edx
 004CDBCA    mov        esi,eax
 004CDBCC    mov        eax,dword ptr [ebp-4]
 004CDBCF    call       @IntfAddRef
 004CDBD4    mov        eax,dword ptr [ebp+8]
 004CDBD7    call       @IntfAddRef
 004CDBDC    xor        eax,eax
 004CDBDE    push       ebp
 004CDBDF    push       4CDD4B
 004CDBE4    push       dword ptr fs:[eax]
 004CDBE7    mov        dword ptr fs:[eax],esp
 004CDBEA    lea        edx,[ebp-8]
 004CDBED    mov        eax,dword ptr [ebp-4]
 004CDBF0    mov        ecx,dword ptr [eax]
 004CDBF2    call       dword ptr [ecx+88]
 004CDBF8    mov        edx,dword ptr [ebp-8]
 004CDBFB    lea        eax,[esi+0C]; TZGenericCachedResolver.?fC:IZConnection
 004CDBFE    call       @IntfCopy
 004CDC03    lea        eax,[esi+10]; TZGenericCachedResolver.?f10:IZResultSetMetadata
 004CDC06    mov        edx,dword ptr [ebp+8]
 004CDC09    call       @IntfCopy
 004CDC0E    lea        edx,[ebp-10]
 004CDC11    mov        eax,dword ptr [ebp-4]
 004CDC14    mov        ecx,dword ptr [eax]
 004CDC16    call       dword ptr [ecx+88]
 004CDC1C    mov        eax,dword ptr [ebp-10]
 004CDC1F    lea        edx,[ebp-0C]
 004CDC22    mov        ecx,dword ptr [eax]
 004CDC24    call       dword ptr [ecx+64]
 004CDC27    mov        edx,dword ptr [ebp-0C]
 004CDC2A    lea        eax,[esi+14]; TZGenericCachedResolver.?f14:IZDatabaseMetadata
 004CDC2D    call       @IntfCopy
 004CDC32    mov        ecx,dword ptr [esi+14]; TZGenericCachedResolver.?f14:IZDatabaseMetadata
 004CDC35    mov        dl,1
 004CDC37    mov        eax,[004D8CEC]; TZDefaultIdentifierConvertor
 004CDC3C    call       TZDefaultIdentifierConvertor.Create; TZDefaultIdentifierConvertor.Create
 004CDC41    mov        edx,eax
 004CDC43    test       edx,edx
>004CDC45    je         004CDC4A
 004CDC47    sub        edx,0FFFFFFEC
 004CDC4A    lea        eax,[esi+18]; TZGenericCachedResolver.?f18:IZIdentifierConvertor
 004CDC4D    call       @IntfCopy
 004CDC52    mov        dl,1
 004CDC54    mov        eax,[00433048]; TObjectList
 004CDC59    call       TObjectList.Create; TObjectList.Create
 004CDC5E    mov        dword ptr [esi+1C],eax; TZGenericCachedResolver.?f1C:TObjectList
 004CDC61    mov        dl,1
 004CDC63    mov        eax,[00433048]; TObjectList
 004CDC68    call       TObjectList.Create; TObjectList.Create
 004CDC6D    mov        dword ptr [esi+24],eax; TZGenericCachedResolver.?f24:TObjectList
 004CDC70    mov        dl,1
 004CDC72    mov        eax,[00433048]; TObjectList
 004CDC77    call       TObjectList.Create; TObjectList.Create
 004CDC7C    mov        dword ptr [esi+20],eax; TZGenericCachedResolver.?f20:TObjectList
 004CDC7F    lea        eax,[ebp-14]
 004CDC82    push       eax
 004CDC83    mov        ecx,4CDD7C; 'true'
 004CDC88    mov        edx,4CDD8C; 'defaults'
 004CDC8D    mov        eax,dword ptr [ebp-4]
 004CDC90    call       004D30D4
 004CDC95    mov        eax,dword ptr [ebp-14]
 004CDC98    call       004BEFC0
 004CDC9D    mov        byte ptr [esi+28],al; TZGenericCachedResolver.?f28:byte
 004CDCA0    lea        eax,[ebp-1C]
 004CDCA3    push       eax
 004CDCA4    mov        ecx,4CDDA0; 'changed'
 004CDCA9    mov        edx,4CDDB0; 'update'
 004CDCAE    mov        eax,dword ptr [ebp-4]
 004CDCB1    call       004D30D4
 004CDCB6    mov        eax,dword ptr [ebp-1C]
 004CDCB9    lea        edx,[ebp-18]
 004CDCBC    call       UpperCase
 004CDCC1    mov        eax,dword ptr [ebp-18]
 004CDCC4    mov        edx,4CDDC0; 'ALL'
 004CDCC9    call       @LStrCmp
 004CDCCE    sete       al
 004CDCD1    mov        byte ptr [esi+2A],al; TZGenericCachedResolver.?f2A:byte
 004CDCD4    lea        eax,[ebp-24]
 004CDCD7    push       eax
 004CDCD8    mov        ecx,4CDDCC; 'keyonly'
 004CDCDD    mov        edx,4CDDDC; 'where'
 004CDCE2    mov        eax,dword ptr [ebp-4]
 004CDCE5    call       004D30D4
 004CDCEA    mov        eax,dword ptr [ebp-24]
 004CDCED    lea        edx,[ebp-20]
 004CDCF0    call       UpperCase
 004CDCF5    mov        eax,dword ptr [ebp-20]
 004CDCF8    mov        edx,4CDDC0; 'ALL'
 004CDCFD    call       @LStrCmp
 004CDD02    sete       al
 004CDD05    mov        byte ptr [esi+29],al; TZGenericCachedResolver.?f29:byte
 004CDD08    xor        eax,eax
 004CDD0A    pop        edx
 004CDD0B    pop        ecx
 004CDD0C    pop        ecx
 004CDD0D    mov        dword ptr fs:[eax],edx
 004CDD10    push       4CDD52
 004CDD15    lea        eax,[ebp-24]
 004CDD18    mov        edx,5
 004CDD1D    call       @LStrArrayClr
 004CDD22    lea        eax,[ebp-10]
 004CDD25    call       @IntfClear
 004CDD2A    lea        eax,[ebp-0C]
 004CDD2D    call       @IntfClear
 004CDD32    lea        eax,[ebp-8]
 004CDD35    call       @IntfClear
 004CDD3A    lea        eax,[ebp-4]
 004CDD3D    call       @IntfClear
 004CDD42    lea        eax,[ebp+8]
 004CDD45    call       @IntfClear
 004CDD4A    ret
<004CDD4B    jmp        @HandleFinally
<004CDD50    jmp        004CDD15
 004CDD52    mov        eax,esi
 004CDD54    test       bl,bl
>004CDD56    je         004CDD67
 004CDD58    call       @AfterConstruction
 004CDD5D    pop        dword ptr fs:[0]
 004CDD64    add        esp,0C
 004CDD67    mov        eax,esi
 004CDD69    pop        esi
 004CDD6A    pop        ebx
 004CDD6B    mov        esp,ebp
 004CDD6D    pop        ebp
 004CDD6E    ret        4
*}
//end;

//004CDDE4
destructor TZGenericCachedResolver.Destroy;
begin
{*
 004CDDE4    push       ebp
 004CDDE5    mov        ebp,esp
 004CDDE7    push       ebx
 004CDDE8    push       esi
 004CDDE9    call       @BeforeDestruction
 004CDDEE    mov        ebx,edx
 004CDDF0    mov        esi,eax
 004CDDF2    lea        eax,[esi+10]; TZGenericCachedResolver.?f10:IZResultSetMetadata
 004CDDF5    call       @IntfClear
 004CDDFA    lea        eax,[esi+14]; TZGenericCachedResolver.?f14:IZDatabaseMetadata
 004CDDFD    call       @IntfClear
 004CDE02    mov        eax,dword ptr [esi+1C]; TZGenericCachedResolver.?f1C:TObjectList
 004CDE05    call       TObject.Free
 004CDE0A    mov        eax,dword ptr [esi+20]; TZGenericCachedResolver.?f20:TObjectList
 004CDE0D    call       TObject.Free
 004CDE12    mov        eax,dword ptr [esi+24]; TZGenericCachedResolver.?f24:TObjectList
 004CDE15    call       TObject.Free
 004CDE1A    mov        edx,ebx
 004CDE1C    and        dl,0FC
 004CDE1F    mov        eax,esi
 004CDE21    call       TObject.Destroy
 004CDE26    test       bl,bl
>004CDE28    jle        004CDE31
 004CDE2A    mov        eax,esi
 004CDE2C    call       @ClassDestroy
 004CDE31    pop        esi
 004CDE32    pop        ebx
 004CDE33    pop        ebp
 004CDE34    ret
*}
end;

//004CDE38
//procedure sub_004CDE38(?:TZASACachedResolver; ?:TObjectList; ?:?);
//begin
{*
 004CDE38    push       ebp
 004CDE39    mov        ebp,esp
 004CDE3B    add        esp,0FFFFFFF8
 004CDE3E    push       ebx
 004CDE3F    push       esi
 004CDE40    push       edi
 004CDE41    mov        dword ptr [ebp-8],ecx
 004CDE44    mov        dword ptr [ebp-4],edx
 004CDE47    mov        eax,dword ptr [ebp-4]
 004CDE4A    mov        esi,dword ptr [eax+8]
 004CDE4D    sub        esi,1
>004CDE50    jno        004CDE57
 004CDE52    call       @IntOver
 004CDE57    test       esi,esi
>004CDE59    jl         004CDE9B
 004CDE5B    inc        esi
 004CDE5C    xor        edi,edi
 004CDE5E    mov        edx,edi
 004CDE60    mov        eax,dword ptr [ebp-4]
 004CDE63    call       TObjectList.GetItem
 004CDE68    mov        ebx,eax
 004CDE6A    cmp        dword ptr [ebx+8],0
>004CDE6E    je         004CDE97
 004CDE70    mov        eax,dword ptr [ebx+8]
 004CDE73    push       eax
 004CDE74    mov        al,byte ptr [ebx+0C]
 004CDE77    push       eax
 004CDE78    mov        al,byte ptr [ebx+0D]
 004CDE7B    push       eax
 004CDE7C    push       0
 004CDE7E    mov        ecx,dword ptr [ebx+4]
 004CDE81    mov        dl,1
 004CDE83    mov        eax,[004CD96C]; TZResolverParameter
 004CDE88    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CDE8D    mov        edx,eax
 004CDE8F    mov        eax,dword ptr [ebp-8]
 004CDE92    call       00433178
 004CDE97    inc        edi
 004CDE98    dec        esi
<004CDE99    jne        004CDE5E
 004CDE9B    pop        edi
 004CDE9C    pop        esi
 004CDE9D    pop        ebx
 004CDE9E    pop        ecx
 004CDE9F    pop        ecx
 004CDEA0    pop        ebp
 004CDEA1    ret
*}
//end;

//004CDEA4
//procedure sub_004CDEA4(?:TZASACachedResolver; ?:AnsiString; ?:?; ?:?; ?:?);
//begin
{*
 004CDEA4    push       ebp
 004CDEA5    mov        ebp,esp
 004CDEA7    add        esp,0FFFFFFF0
 004CDEAA    push       ebx
 004CDEAB    push       esi
 004CDEAC    push       edi
 004CDEAD    xor        ebx,ebx
 004CDEAF    mov        dword ptr [ebp-10],ebx
 004CDEB2    mov        dword ptr [ebp-0C],ebx
 004CDEB5    mov        dword ptr [ebp-8],ecx
 004CDEB8    mov        dword ptr [ebp-4],edx
 004CDEBB    mov        esi,eax
 004CDEBD    mov        ebx,dword ptr [ebp+8]
 004CDEC0    mov        eax,dword ptr [ebp-4]
 004CDEC3    call       @LStrAddRef
 004CDEC8    mov        eax,dword ptr [ebp-8]
 004CDECB    call       @LStrAddRef
 004CDED0    mov        eax,dword ptr [ebp+0C]
 004CDED3    call       @LStrAddRef
 004CDED8    xor        eax,eax
 004CDEDA    push       ebp
 004CDEDB    push       4CDF79
 004CDEE0    push       dword ptr fs:[eax]
 004CDEE3    mov        dword ptr fs:[eax],esp
 004CDEE6    cmp        dword ptr [ebp+0C],0
>004CDEEA    je         004CDF4F
 004CDEEC    mov        ecx,ebx
 004CDEEE    mov        edx,dword ptr [ebp+0C]
 004CDEF1    mov        eax,dword ptr [esi+18]
 004CDEF4    mov        edi,dword ptr [eax]
 004CDEF6    call       dword ptr [edi+14]
 004CDEF9    cmp        dword ptr [ebp-8],0
>004CDEFD    je         004CDF23
 004CDEFF    lea        ecx,[ebp-0C]
 004CDF02    mov        edx,dword ptr [ebp-8]
 004CDF05    mov        eax,dword ptr [esi+18]
 004CDF08    mov        edi,dword ptr [eax]
 004CDF0A    call       dword ptr [edi+14]
 004CDF0D    push       dword ptr [ebp-0C]
 004CDF10    push       4CDF94; '.'
 004CDF15    push       dword ptr [ebx]
 004CDF17    mov        eax,ebx
 004CDF19    mov        edx,3
 004CDF1E    call       @LStrCatN
 004CDF23    cmp        dword ptr [ebp-4],0
>004CDF27    je         004CDF56
 004CDF29    lea        ecx,[ebp-10]
 004CDF2C    mov        edx,dword ptr [ebp-4]
 004CDF2F    mov        eax,dword ptr [esi+18]
 004CDF32    mov        esi,dword ptr [eax]
 004CDF34    call       dword ptr [esi+14]
 004CDF37    push       dword ptr [ebp-10]
 004CDF3A    push       4CDF94; '.'
 004CDF3F    push       dword ptr [ebx]
 004CDF41    mov        eax,ebx
 004CDF43    mov        edx,3
 004CDF48    call       @LStrCatN
>004CDF4D    jmp        004CDF56
 004CDF4F    mov        eax,ebx
 004CDF51    call       @LStrClr
 004CDF56    xor        eax,eax
 004CDF58    pop        edx
 004CDF59    pop        ecx
 004CDF5A    pop        ecx
 004CDF5B    mov        dword ptr fs:[eax],edx
 004CDF5E    push       4CDF80
 004CDF63    lea        eax,[ebp-10]
 004CDF66    mov        edx,4
 004CDF6B    call       @LStrArrayClr
 004CDF70    lea        eax,[ebp+0C]
 004CDF73    call       @LStrClr
 004CDF78    ret
<004CDF79    jmp        @HandleFinally
<004CDF7E    jmp        004CDF63
 004CDF80    pop        edi
 004CDF81    pop        esi
 004CDF82    pop        ebx
 004CDF83    mov        esp,ebp
 004CDF85    pop        ebp
 004CDF86    ret        8
*}
//end;

//004CDF98
//procedure sub_004CDF98(?:TZGenericCachedResolver; ?:AnsiString);
//begin
{*
 004CDF98    push       ebp
 004CDF99    mov        ebp,esp
 004CDF9B    xor        ecx,ecx
 004CDF9D    push       ecx
 004CDF9E    push       ecx
 004CDF9F    push       ecx
 004CDFA0    push       ecx
 004CDFA1    push       ecx
 004CDFA2    push       ecx
 004CDFA3    push       ecx
 004CDFA4    push       ecx
 004CDFA5    push       ebx
 004CDFA6    push       esi
 004CDFA7    push       edi
 004CDFA8    mov        dword ptr [ebp-4],edx
 004CDFAB    mov        ebx,eax
 004CDFAD    xor        eax,eax
 004CDFAF    push       ebp
 004CDFB0    push       4CE0C8
 004CDFB5    push       dword ptr fs:[eax]
 004CDFB8    mov        dword ptr fs:[eax],esp
 004CDFBB    mov        eax,dword ptr [ebp-4]
 004CDFBE    call       @LStrClr
 004CDFC3    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CDFC6    mov        edx,dword ptr [eax]
 004CDFC8    call       dword ptr [edx+0C]
 004CDFCB    test       eax,eax
>004CDFCD    jle        004CE07C
 004CDFD3    mov        dword ptr [ebp-0C],eax
 004CDFD6    mov        esi,1
 004CDFDB    lea        ecx,[ebp-10]
 004CDFDE    mov        edx,esi
 004CDFE0    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CDFE3    mov        edi,dword ptr [eax]
 004CDFE5    call       dword ptr [edi+40]
 004CDFE8    mov        eax,dword ptr [ebp-10]
 004CDFEB    push       eax
 004CDFEC    lea        eax,[ebp-8]
 004CDFEF    push       eax
 004CDFF0    lea        ecx,[ebp-14]
 004CDFF3    mov        edx,esi
 004CDFF5    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CDFF8    mov        edi,dword ptr [eax]
 004CDFFA    call       dword ptr [edi+34]
 004CDFFD    mov        eax,dword ptr [ebp-14]
 004CE000    push       eax
 004CE001    lea        ecx,[ebp-18]
 004CE004    mov        edx,esi
 004CE006    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE009    mov        edi,dword ptr [eax]
 004CE00B    call       dword ptr [edi+44]
 004CE00E    mov        edx,dword ptr [ebp-18]
 004CE011    mov        eax,ebx
 004CE013    pop        ecx
 004CE014    call       004CDEA4
 004CE019    mov        eax,dword ptr [ebp-4]
 004CE01C    cmp        dword ptr [eax],0
>004CE01F    jne        004CE034
 004CE021    cmp        dword ptr [ebp-8],0
>004CE025    je         004CE034
 004CE027    mov        eax,dword ptr [ebp-4]
 004CE02A    mov        edx,dword ptr [ebp-8]
 004CE02D    call       @LStrAsg
>004CE032    jmp        004CE072
 004CE034    mov        eax,dword ptr [ebp-4]
 004CE037    cmp        dword ptr [eax],0
>004CE03A    je         004CE072
 004CE03C    cmp        dword ptr [ebp-8],0
>004CE040    je         004CE072
 004CE042    mov        eax,dword ptr [ebp-8]
 004CE045    mov        edx,dword ptr [ebp-4]
 004CE048    mov        edx,dword ptr [edx]
 004CE04A    call       @LStrCmp
>004CE04F    je         004CE072
 004CE051    lea        edx,[ebp-1C]
 004CE054    mov        eax,[0061AFFC]; ^#122.sResString41:TResStringRec
 004CE059    call       LoadResString
 004CE05E    mov        ecx,dword ptr [ebp-1C]
 004CE061    mov        dl,1
 004CE063    mov        eax,[004C6D20]; EZSQLException
 004CE068    call       EZSQLException.Create; EZSQLException.Create
 004CE06D    call       @RaiseExcept
 004CE072    inc        esi
 004CE073    dec        dword ptr [ebp-0C]
<004CE076    jne        004CDFDB
 004CE07C    mov        eax,dword ptr [ebp-4]
 004CE07F    cmp        dword ptr [eax],0
>004CE082    jne        004CE0A5
 004CE084    lea        edx,[ebp-20]
 004CE087    mov        eax,[0061B228]; ^#122.sResString42:TResStringRec
 004CE08C    call       LoadResString
 004CE091    mov        ecx,dword ptr [ebp-20]
 004CE094    mov        dl,1
 004CE096    mov        eax,[004C6D20]; EZSQLException
 004CE09B    call       EZSQLException.Create; EZSQLException.Create
 004CE0A0    call       @RaiseExcept
 004CE0A5    xor        eax,eax
 004CE0A7    pop        edx
 004CE0A8    pop        ecx
 004CE0A9    pop        ecx
 004CE0AA    mov        dword ptr fs:[eax],edx
 004CE0AD    push       4CE0CF
 004CE0B2    lea        eax,[ebp-20]
 004CE0B5    mov        edx,5
 004CE0BA    call       @LStrArrayClr
 004CE0BF    lea        eax,[ebp-8]
 004CE0C2    call       @LStrClr
 004CE0C7    ret
<004CE0C8    jmp        @HandleFinally
<004CE0CD    jmp        004CE0B2
 004CE0CF    pop        edi
 004CE0D0    pop        esi
 004CE0D1    pop        ebx
 004CE0D2    mov        esp,ebp
 004CE0D4    pop        ebp
 004CE0D5    ret
*}
//end;

//004CE0D8
//procedure sub_004CE0D8(?:TZASACachedResolver; ?:TObjectList);
//begin
{*
 004CE0D8    push       ebp
 004CE0D9    mov        ebp,esp
 004CE0DB    xor        ecx,ecx
 004CE0DD    push       ecx
 004CE0DE    push       ecx
 004CE0DF    push       ecx
 004CE0E0    push       ecx
 004CE0E1    push       ecx
 004CE0E2    push       ebx
 004CE0E3    push       esi
 004CE0E4    push       edi
 004CE0E5    mov        dword ptr [ebp-4],edx
 004CE0E8    mov        ebx,eax
 004CE0EA    xor        eax,eax
 004CE0EC    push       ebp
 004CE0ED    push       4CE1B3
 004CE0F2    push       dword ptr fs:[eax]
 004CE0F5    mov        dword ptr fs:[eax],esp
 004CE0F8    mov        eax,dword ptr [ebx+1C]; TZASACachedResolver.?f1C:TObjectList
 004CE0FB    cmp        dword ptr [eax+8],0; TObjectList.FCount:Integer
>004CE0FF    jne        004CE18B
 004CE105    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE108    mov        edx,dword ptr [eax]
 004CE10A    call       dword ptr [edx+0C]
 004CE10D    test       eax,eax
>004CE10F    jle        004CE18B
 004CE111    mov        dword ptr [ebp-8],eax
 004CE114    mov        esi,1
 004CE119    lea        ecx,[ebp-0C]
 004CE11C    mov        edx,esi
 004CE11E    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE121    mov        edi,dword ptr [eax]
 004CE123    call       dword ptr [edi+40]
 004CE126    cmp        dword ptr [ebp-0C],0
>004CE12A    je         004CE185
 004CE12C    lea        ecx,[ebp-10]
 004CE12F    mov        edx,esi
 004CE131    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE134    mov        edi,dword ptr [eax]
 004CE136    call       dword ptr [edi+30]
 004CE139    cmp        dword ptr [ebp-10],0
>004CE13D    je         004CE185
 004CE13F    mov        edx,esi
 004CE141    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE144    mov        ecx,dword ptr [eax]
 004CE146    call       dword ptr [ecx+54]
 004CE149    test       al,al
>004CE14B    je         004CE185
 004CE14D    lea        ecx,[ebp-14]
 004CE150    mov        edx,esi
 004CE152    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE155    mov        edi,dword ptr [eax]
 004CE157    call       dword ptr [edi+30]
 004CE15A    mov        eax,dword ptr [ebp-14]
 004CE15D    push       eax
 004CE15E    mov        edx,esi
 004CE160    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE163    mov        ecx,dword ptr [eax]
 004CE165    call       dword ptr [ecx+48]
 004CE168    push       eax
 004CE169    push       1
 004CE16B    push       0
 004CE16D    mov        ecx,esi
 004CE16F    mov        dl,1
 004CE171    mov        eax,[004CD96C]; TZResolverParameter
 004CE176    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CE17B    mov        edx,eax
 004CE17D    mov        eax,dword ptr [ebx+1C]; TZASACachedResolver.?f1C:TObjectList
 004CE180    call       00433178
 004CE185    inc        esi
 004CE186    dec        dword ptr [ebp-8]
<004CE189    jne        004CE119
 004CE18B    mov        ecx,dword ptr [ebp-4]
 004CE18E    mov        edx,dword ptr [ebx+1C]; TZASACachedResolver.?f1C:TObjectList
 004CE191    mov        eax,ebx
 004CE193    call       004CDE38
 004CE198    xor        eax,eax
 004CE19A    pop        edx
 004CE19B    pop        ecx
 004CE19C    pop        ecx
 004CE19D    mov        dword ptr fs:[eax],edx
 004CE1A0    push       4CE1BA
 004CE1A5    lea        eax,[ebp-14]
 004CE1A8    mov        edx,3
 004CE1AD    call       @LStrArrayClr
 004CE1B2    ret
<004CE1B3    jmp        @HandleFinally
<004CE1B8    jmp        004CE1A5
 004CE1BA    pop        edi
 004CE1BB    pop        esi
 004CE1BC    pop        ebx
 004CE1BD    mov        esp,ebp
 004CE1BF    pop        ebp
 004CE1C0    ret
*}
//end;

//004CE1C4
//procedure sub_004CE1C4(?:TZGenericCachedResolver; ?:TObjectList; ?:?; ?:?);
//begin
{*
 004CE1C4    push       ebp
 004CE1C5    mov        ebp,esp
 004CE1C7    push       ecx
 004CE1C8    mov        ecx,5
 004CE1CD    push       0
 004CE1CF    push       0
 004CE1D1    dec        ecx
<004CE1D2    jne        004CE1CD
 004CE1D4    xchg       ecx,dword ptr [ebp-4]
 004CE1D7    push       ebx
 004CE1D8    push       esi
 004CE1D9    push       edi
 004CE1DA    mov        dword ptr [ebp-8],ecx
 004CE1DD    mov        dword ptr [ebp-4],edx
 004CE1E0    mov        esi,eax
 004CE1E2    xor        eax,eax
 004CE1E4    push       ebp
 004CE1E5    push       4CE3F5
 004CE1EA    push       dword ptr fs:[eax]
 004CE1ED    mov        dword ptr fs:[eax],esp
 004CE1F0    cmp        byte ptr [esi+2A],0; TZASACachedResolver.?f2A:byte
>004CE1F4    je         004CE211
 004CE1F6    mov        eax,dword ptr [esi+20]; TZASACachedResolver.?f20:TObjectList
 004CE1F9    cmp        dword ptr [eax+8],0; TObjectList.FCount:Integer
>004CE1FD    jle        004CE211
 004CE1FF    mov        ecx,dword ptr [ebp-4]
 004CE202    mov        edx,dword ptr [esi+20]; TZASACachedResolver.?f20:TObjectList
 004CE205    mov        eax,esi
 004CE207    call       004CDE38
>004CE20C    jmp        004CE3BE
 004CE211    cmp        byte ptr [esi+2A],0; TZASACachedResolver.?f2A:byte
>004CE215    je         004CE2B3
 004CE21B    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE21E    mov        edx,dword ptr [eax]
 004CE220    call       dword ptr [edx+0C]
 004CE223    test       eax,eax
>004CE225    jle        004CE2A1
 004CE227    mov        dword ptr [ebp-14],eax
 004CE22A    mov        ebx,1
 004CE22F    lea        ecx,[ebp-18]
 004CE232    mov        edx,ebx
 004CE234    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE237    mov        edi,dword ptr [eax]
 004CE239    call       dword ptr [edi+40]
 004CE23C    cmp        dword ptr [ebp-18],0
>004CE240    je         004CE29B
 004CE242    lea        ecx,[ebp-1C]
 004CE245    mov        edx,ebx
 004CE247    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE24A    mov        edi,dword ptr [eax]
 004CE24C    call       dword ptr [edi+30]
 004CE24F    cmp        dword ptr [ebp-1C],0
>004CE253    je         004CE29B
 004CE255    mov        edx,ebx
 004CE257    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE25A    mov        ecx,dword ptr [eax]
 004CE25C    call       dword ptr [ecx+54]
 004CE25F    test       al,al
>004CE261    je         004CE29B
 004CE263    lea        ecx,[ebp-20]
 004CE266    mov        edx,ebx
 004CE268    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE26B    mov        edi,dword ptr [eax]
 004CE26D    call       dword ptr [edi+30]
 004CE270    mov        eax,dword ptr [ebp-20]
 004CE273    push       eax
 004CE274    mov        edx,ebx
 004CE276    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE279    mov        ecx,dword ptr [eax]
 004CE27B    call       dword ptr [ecx+48]
 004CE27E    push       eax
 004CE27F    push       1
 004CE281    push       0
 004CE283    mov        ecx,ebx
 004CE285    mov        dl,1
 004CE287    mov        eax,[004CD96C]; TZResolverParameter
 004CE28C    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CE291    mov        edx,eax
 004CE293    mov        eax,dword ptr [esi+20]; TZASACachedResolver.?f20:TObjectList
 004CE296    call       00433178
 004CE29B    inc        ebx
 004CE29C    dec        dword ptr [ebp-14]
<004CE29F    jne        004CE22F
 004CE2A1    mov        ecx,dword ptr [ebp-4]
 004CE2A4    mov        edx,dword ptr [esi+20]; TZASACachedResolver.?f20:TObjectList
 004CE2A7    mov        eax,esi
 004CE2A9    call       004CDE38
>004CE2AE    jmp        004CE3BE
 004CE2B3    push       1
 004CE2B5    lea        eax,[ebp-0C]
 004CE2B8    mov        ecx,1
 004CE2BD    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 004CE2C3    call       @DynArraySetLength
 004CE2C8    add        esp,4
 004CE2CB    push       1
 004CE2CD    lea        eax,[ebp-10]
 004CE2D0    mov        ecx,1
 004CE2D5    mov        edx,dword ptr ds:[407380]; TBooleanDynArray
 004CE2DB    call       @DynArraySetLength
 004CE2E0    add        esp,4
 004CE2E3    xor        eax,eax
 004CE2E5    mov        edx,dword ptr [ebp-10]
 004CE2E8    test       edx,edx
>004CE2EA    je         004CE2F1
 004CE2EC    cmp        eax,dword ptr [edx-4]
>004CE2EF    jb         004CE2F6
 004CE2F1    call       @BoundErr
 004CE2F6    mov        byte ptr [edx+eax],1
 004CE2FA    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE2FD    mov        edx,dword ptr [eax]
 004CE2FF    call       dword ptr [edx+0C]
 004CE302    test       eax,eax
>004CE304    jle        004CE3BE
 004CE30A    mov        dword ptr [ebp-14],eax
 004CE30D    mov        ebx,1
 004CE312    xor        eax,eax
 004CE314    mov        edx,dword ptr [ebp-0C]
 004CE317    test       edx,edx
>004CE319    je         004CE320
 004CE31B    cmp        eax,dword ptr [edx-4]
>004CE31E    jb         004CE325
 004CE320    call       @BoundErr
 004CE325    mov        dword ptr [edx+eax*4],ebx
 004CE328    lea        ecx,[ebp-24]
 004CE32B    mov        edx,ebx
 004CE32D    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE330    mov        edi,dword ptr [eax]
 004CE332    call       dword ptr [edi+40]
 004CE335    cmp        dword ptr [ebp-24],0
>004CE339    je         004CE3B4
 004CE33B    lea        ecx,[ebp-28]
 004CE33E    mov        edx,ebx
 004CE340    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE343    mov        edi,dword ptr [eax]
 004CE345    call       dword ptr [edi+30]
 004CE348    cmp        dword ptr [ebp-28],0
>004CE34C    je         004CE3B4
 004CE34E    mov        edx,ebx
 004CE350    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE353    mov        ecx,dword ptr [eax]
 004CE355    call       dword ptr [ecx+54]
 004CE358    test       al,al
>004CE35A    je         004CE3B4
 004CE35C    mov        eax,dword ptr [ebp-0C]
 004CE35F    push       eax
 004CE360    mov        eax,dword ptr [ebp-10]
 004CE363    push       eax
 004CE364    mov        eax,dword ptr [ebp+8]
 004CE367    mov        ecx,dword ptr [eax+24]
 004CE36A    mov        eax,dword ptr [ebp-8]
 004CE36D    mov        edx,dword ptr [eax+24]
 004CE370    mov        eax,dword ptr [ebp-8]
 004CE373    call       004C8D8C
 004CE378    test       eax,eax
>004CE37A    je         004CE3B4
 004CE37C    lea        ecx,[ebp-2C]
 004CE37F    mov        edx,ebx
 004CE381    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE384    mov        edi,dword ptr [eax]
 004CE386    call       dword ptr [edi+30]
 004CE389    mov        eax,dword ptr [ebp-2C]
 004CE38C    push       eax
 004CE38D    mov        edx,ebx
 004CE38F    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE392    mov        ecx,dword ptr [eax]
 004CE394    call       dword ptr [ecx+48]
 004CE397    push       eax
 004CE398    push       1
 004CE39A    push       0
 004CE39C    mov        ecx,ebx
 004CE39E    mov        dl,1
 004CE3A0    mov        eax,[004CD96C]; TZResolverParameter
 004CE3A5    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CE3AA    mov        edx,eax
 004CE3AC    mov        eax,dword ptr [ebp-4]
 004CE3AF    call       00433178
 004CE3B4    inc        ebx
 004CE3B5    dec        dword ptr [ebp-14]
<004CE3B8    jne        004CE312
 004CE3BE    xor        eax,eax
 004CE3C0    pop        edx
 004CE3C1    pop        ecx
 004CE3C2    pop        ecx
 004CE3C3    mov        dword ptr fs:[eax],edx
 004CE3C6    push       4CE3FC
 004CE3CB    lea        eax,[ebp-2C]
 004CE3CE    mov        edx,6
 004CE3D3    call       @LStrArrayClr
 004CE3D8    lea        eax,[ebp-10]
 004CE3DB    mov        edx,dword ptr ds:[407380]; TBooleanDynArray
 004CE3E1    call       @DynArrayClear
 004CE3E6    lea        eax,[ebp-0C]
 004CE3E9    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 004CE3EF    call       @DynArrayClear
 004CE3F4    ret
<004CE3F5    jmp        @HandleFinally
<004CE3FA    jmp        004CE3CB
 004CE3FC    pop        edi
 004CE3FD    pop        esi
 004CE3FE    pop        ebx
 004CE3FF    mov        esp,ebp
 004CE401    pop        ebp
 004CE402    ret        4
*}
//end;

//004CE408
//procedure sub_004CE408(?:TZGenericCachedResolver; ?:TObjectList);
//begin
{*
 004CE408    push       ebp
 004CE409    mov        ebp,esp
 004CE40B    mov        ecx,5
 004CE410    push       0
 004CE412    push       0
 004CE414    dec        ecx
<004CE415    jne        004CE410
 004CE417    push       ebx
 004CE418    push       esi
 004CE419    push       edi
 004CE41A    mov        dword ptr [ebp-4],edx
 004CE41D    mov        esi,eax
 004CE41F    xor        eax,eax
 004CE421    push       ebp
 004CE422    push       4CE5BD
 004CE427    push       dword ptr fs:[eax]
 004CE42A    mov        dword ptr fs:[eax],esp
 004CE42D    mov        eax,dword ptr [esi+24]; TZASACachedResolver.?f24:TObjectList
 004CE430    cmp        dword ptr [eax+8],0; TObjectList.FCount:Integer
>004CE434    jle        004CE447
 004CE436    mov        ecx,dword ptr [ebp-4]
 004CE439    mov        edx,eax
 004CE43B    mov        eax,esi
 004CE43D    call       004CDE38
>004CE442    jmp        004CE58D
 004CE447    lea        edx,[ebp-18]
 004CE44A    mov        eax,esi
 004CE44C    call       004CDF98
 004CE451    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE454    mov        edx,dword ptr [eax]
 004CE456    call       dword ptr [edx+0C]
 004CE459    test       eax,eax
>004CE45B    jle        004CE49A
 004CE45D    mov        dword ptr [ebp-20],eax
 004CE460    mov        ebx,1
 004CE465    lea        ecx,[ebp-18]
 004CE468    mov        edx,ebx
 004CE46A    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE46D    mov        edi,dword ptr [eax]
 004CE46F    call       dword ptr [edi+40]
 004CE472    cmp        dword ptr [ebp-18],0
>004CE476    je         004CE494
 004CE478    lea        ecx,[ebp-14]
 004CE47B    mov        edx,ebx
 004CE47D    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE480    mov        edi,dword ptr [eax]
 004CE482    call       dword ptr [edi+34]
 004CE485    lea        ecx,[ebp-10]
 004CE488    mov        edx,ebx
 004CE48A    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE48D    mov        edi,dword ptr [eax]
 004CE48F    call       dword ptr [edi+44]
>004CE492    jmp        004CE49A
 004CE494    inc        ebx
 004CE495    dec        dword ptr [ebp-20]
<004CE498    jne        004CE465
 004CE49A    cmp        byte ptr [esi+29],0; TZASACachedResolver.?f29:byte
>004CE49E    jne        004CE56C
 004CE4A4    mov        eax,dword ptr [ebp-18]
 004CE4A7    push       eax
 004CE4A8    lea        eax,[ebp-1C]
 004CE4AB    push       eax
 004CE4AC    mov        ecx,dword ptr [ebp-14]
 004CE4AF    mov        edx,dword ptr [ebp-10]
 004CE4B2    mov        eax,dword ptr [esi+14]; TZASACachedResolver.?f14:IZDatabaseMetadata
 004CE4B5    mov        ebx,dword ptr [eax]
 004CE4B7    call       dword ptr [ebx+210]
>004CE4BD    jmp        004CE55C
 004CE4C2    lea        ecx,[ebp-0C]
 004CE4C5    mov        edx,4
 004CE4CA    mov        eax,dword ptr [ebp-1C]
 004CE4CD    mov        ebx,dword ptr [eax]
 004CE4CF    call       dword ptr [ebx+20]
 004CE4D2    mov        byte ptr [ebp-5],0
 004CE4D6    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE4D9    mov        edx,dword ptr [eax]
 004CE4DB    call       dword ptr [edx+0C]
 004CE4DE    test       eax,eax
>004CE4E0    jle        004CE52A
 004CE4E2    mov        dword ptr [ebp-20],eax
 004CE4E5    mov        ebx,1
 004CE4EA    lea        ecx,[ebp-24]
 004CE4ED    mov        edx,ebx
 004CE4EF    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE4F2    mov        edi,dword ptr [eax]
 004CE4F4    call       dword ptr [edi+30]
 004CE4F7    mov        edx,dword ptr [ebp-24]
 004CE4FA    mov        eax,dword ptr [ebp-0C]
 004CE4FD    call       @LStrCmp
>004CE502    jne        004CE524
 004CE504    lea        ecx,[ebp-28]
 004CE507    mov        edx,ebx
 004CE509    mov        eax,dword ptr [esi+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE50C    mov        edi,dword ptr [eax]
 004CE50E    call       dword ptr [edi+40]
 004CE511    mov        edx,dword ptr [ebp-28]
 004CE514    mov        eax,dword ptr [ebp-18]
 004CE517    call       @LStrCmp
>004CE51C    jne        004CE524
 004CE51E    mov        byte ptr [ebp-5],1
>004CE522    jmp        004CE52A
 004CE524    inc        ebx
 004CE525    dec        dword ptr [ebp-20]
<004CE528    jne        004CE4EA
 004CE52A    cmp        byte ptr [ebp-5],0
>004CE52E    jne        004CE53A
 004CE530    mov        eax,dword ptr [esi+24]; TZASACachedResolver.?f24:TObjectList
 004CE533    mov        edx,dword ptr [eax]
 004CE535    call       dword ptr [edx+8]; TList.Clear
>004CE538    jmp        004CE56C
 004CE53A    mov        eax,dword ptr [ebp-0C]
 004CE53D    push       eax
 004CE53E    push       0
 004CE540    push       0
 004CE542    push       0
 004CE544    mov        ecx,ebx
 004CE546    mov        dl,1
 004CE548    mov        eax,[004CD96C]; TZResolverParameter
 004CE54D    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CE552    mov        edx,eax
 004CE554    mov        eax,dword ptr [esi+24]; TZASACachedResolver.?f24:TObjectList
 004CE557    call       00433178
 004CE55C    mov        eax,dword ptr [ebp-1C]
 004CE55F    mov        edx,dword ptr [eax]
 004CE561    call       dword ptr [edx+0C]
 004CE564    test       al,al
<004CE566    jne        004CE4C2
 004CE56C    mov        eax,dword ptr [esi+24]; TZASACachedResolver.?f24:TObjectList
 004CE56F    cmp        dword ptr [eax+8],0; TObjectList.FCount:Integer
>004CE573    jle        004CE583
 004CE575    mov        ecx,dword ptr [ebp-4]
 004CE578    mov        edx,eax
 004CE57A    mov        eax,esi
 004CE57C    call       004CDE38
>004CE581    jmp        004CE58D
 004CE583    mov        edx,dword ptr [ebp-4]
 004CE586    mov        eax,esi
 004CE588    call       004CE5CC
 004CE58D    xor        eax,eax
 004CE58F    pop        edx
 004CE590    pop        ecx
 004CE591    pop        ecx
 004CE592    mov        dword ptr fs:[eax],edx
 004CE595    push       4CE5C4
 004CE59A    lea        eax,[ebp-28]
 004CE59D    mov        edx,2
 004CE5A2    call       @LStrArrayClr
 004CE5A7    lea        eax,[ebp-1C]
 004CE5AA    call       @IntfClear
 004CE5AF    lea        eax,[ebp-18]
 004CE5B2    mov        edx,4
 004CE5B7    call       @LStrArrayClr
 004CE5BC    ret
<004CE5BD    jmp        @HandleFinally
<004CE5C2    jmp        004CE59A
 004CE5C4    pop        edi
 004CE5C5    pop        esi
 004CE5C6    pop        ebx
 004CE5C7    mov        esp,ebp
 004CE5C9    pop        ebp
 004CE5CA    ret
*}
//end;

//004CE5CC
//procedure sub_004CE5CC(?:TZASACachedResolver; ?:TObjectList);
//begin
{*
 004CE5CC    push       ebp
 004CE5CD    mov        ebp,esp
 004CE5CF    add        esp,0FFFFFFF4
 004CE5D2    push       ebx
 004CE5D3    push       esi
 004CE5D4    push       edi
 004CE5D5    xor        ecx,ecx
 004CE5D7    mov        dword ptr [ebp-0C],ecx
 004CE5DA    mov        dword ptr [ebp-4],edx
 004CE5DD    mov        ebx,eax
 004CE5DF    xor        eax,eax
 004CE5E1    push       ebp
 004CE5E2    push       4CE685
 004CE5E7    push       dword ptr fs:[eax]
 004CE5EA    mov        dword ptr fs:[eax],esp
 004CE5ED    mov        eax,dword ptr [ebx+24]; TZASACachedResolver.?f24:TObjectList
 004CE5F0    cmp        dword ptr [eax+8],0; TObjectList.FCount:Integer
>004CE5F4    jle        004CE604
 004CE5F6    mov        ecx,dword ptr [ebp-4]
 004CE5F9    mov        edx,eax
 004CE5FB    mov        eax,ebx
 004CE5FD    call       004CDE38
>004CE602    jmp        004CE66F
 004CE604    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE607    mov        edx,dword ptr [eax]
 004CE609    call       dword ptr [edx+0C]
 004CE60C    test       eax,eax
>004CE60E    jle        004CE662
 004CE610    mov        dword ptr [ebp-8],eax
 004CE613    mov        esi,1
 004CE618    mov        edx,esi
 004CE61A    mov        eax,ebx
 004CE61C    mov        ecx,dword ptr [eax]
 004CE61E    call       dword ptr [ecx]; TZASACachedResolver.sub_004CE694
 004CE620    test       al,al
>004CE622    je         004CE65C
 004CE624    lea        ecx,[ebp-0C]
 004CE627    mov        edx,esi
 004CE629    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE62C    mov        edi,dword ptr [eax]
 004CE62E    call       dword ptr [edi+30]
 004CE631    mov        eax,dword ptr [ebp-0C]
 004CE634    push       eax
 004CE635    mov        edx,esi
 004CE637    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE63A    mov        ecx,dword ptr [eax]
 004CE63C    call       dword ptr [ecx+48]
 004CE63F    push       eax
 004CE640    push       0
 004CE642    push       0
 004CE644    mov        ecx,esi
 004CE646    mov        dl,1
 004CE648    mov        eax,[004CD96C]; TZResolverParameter
 004CE64D    call       TZResolverParameter.Create; TZResolverParameter.Create
 004CE652    mov        edx,eax
 004CE654    mov        eax,dword ptr [ebx+24]; TZASACachedResolver.?f24:TObjectList
 004CE657    call       00433178
 004CE65C    inc        esi
 004CE65D    dec        dword ptr [ebp-8]
<004CE660    jne        004CE618
 004CE662    mov        ecx,dword ptr [ebp-4]
 004CE665    mov        edx,dword ptr [ebx+24]; TZASACachedResolver.?f24:TObjectList
 004CE668    mov        eax,ebx
 004CE66A    call       004CDE38
 004CE66F    xor        eax,eax
 004CE671    pop        edx
 004CE672    pop        ecx
 004CE673    pop        ecx
 004CE674    mov        dword ptr fs:[eax],edx
 004CE677    push       4CE68C
 004CE67C    lea        eax,[ebp-0C]
 004CE67F    call       @LStrClr
 004CE684    ret
<004CE685    jmp        @HandleFinally
<004CE68A    jmp        004CE67C
 004CE68C    pop        edi
 004CE68D    pop        esi
 004CE68E    pop        ebx
 004CE68F    mov        esp,ebp
 004CE691    pop        ebp
 004CE692    ret
*}
//end;

//004CE694
//function sub_004CE694(?:?):?;
//begin
{*
 004CE694    push       ebp
 004CE695    mov        ebp,esp
 004CE697    push       0
 004CE699    push       0
 004CE69B    push       ebx
 004CE69C    push       esi
 004CE69D    push       edi
 004CE69E    mov        esi,edx
 004CE6A0    mov        ebx,eax
 004CE6A2    xor        eax,eax
 004CE6A4    push       ebp
 004CE6A5    push       4CE71B
 004CE6AA    push       dword ptr fs:[eax]
 004CE6AD    mov        dword ptr fs:[eax],esp
 004CE6B0    lea        ecx,[ebp-4]
 004CE6B3    mov        edx,esi
 004CE6B5    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE6B8    mov        edi,dword ptr [eax]
 004CE6BA    call       dword ptr [edi+40]
 004CE6BD    cmp        dword ptr [ebp-4],0
>004CE6C1    je         004CE6F8
 004CE6C3    lea        ecx,[ebp-8]
 004CE6C6    mov        edx,esi
 004CE6C8    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE6CB    mov        edi,dword ptr [eax]
 004CE6CD    call       dword ptr [edi+30]
 004CE6D0    cmp        dword ptr [ebp-8],0
>004CE6D4    je         004CE6F8
 004CE6D6    mov        edx,esi
 004CE6D8    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE6DB    mov        ecx,dword ptr [eax]
 004CE6DD    call       dword ptr [ecx+18]
 004CE6E0    test       al,al
>004CE6E2    je         004CE6F8
 004CE6E4    mov        edx,esi
 004CE6E6    mov        eax,dword ptr [ebx+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE6E9    mov        ecx,dword ptr [eax]
 004CE6EB    call       dword ptr [ecx+48]
 004CE6EE    test       al,al
>004CE6F0    je         004CE6F8
 004CE6F2    add        al,0F1
 004CE6F4    sub        al,3
>004CE6F6    jae        004CE6FC
 004CE6F8    xor        eax,eax
>004CE6FA    jmp        004CE6FE
 004CE6FC    mov        al,1
 004CE6FE    mov        ebx,eax
 004CE700    xor        eax,eax
 004CE702    pop        edx
 004CE703    pop        ecx
 004CE704    pop        ecx
 004CE705    mov        dword ptr fs:[eax],edx
 004CE708    push       4CE722
 004CE70D    lea        eax,[ebp-8]
 004CE710    mov        edx,2
 004CE715    call       @LStrArrayClr
 004CE71A    ret
<004CE71B    jmp        @HandleFinally
<004CE720    jmp        004CE70D
 004CE722    mov        eax,ebx
 004CE724    pop        edi
 004CE725    pop        esi
 004CE726    pop        ebx
 004CE727    pop        ecx
 004CE728    pop        ecx
 004CE729    pop        ebp
 004CE72A    ret
*}
//end;

//004CE81C
//procedure sub_004CE81C(?:TZGenericCachedResolver; ?:?; ?:TObjectList; ?:?; ?:?);
//begin
{*
 004CE81C    push       ebp
 004CE81D    mov        ebp,esp
 004CE81F    push       ecx
 004CE820    mov        ecx,6
 004CE825    push       0
 004CE827    push       0
 004CE829    dec        ecx
<004CE82A    jne        004CE825
 004CE82C    xchg       ecx,dword ptr [ebp-4]
 004CE82F    push       ebx
 004CE830    push       esi
 004CE831    push       edi
 004CE832    mov        dword ptr [ebp-0C],ecx
 004CE835    mov        dword ptr [ebp-8],edx
 004CE838    mov        dword ptr [ebp-4],eax
 004CE83B    mov        eax,dword ptr [ebp-8]
 004CE83E    call       @IntfAddRef
 004CE843    xor        eax,eax
 004CE845    push       ebp
 004CE846    push       4CECC6
 004CE84B    push       dword ptr fs:[eax]
 004CE84E    mov        dword ptr fs:[eax],esp
 004CE851    mov        byte ptr [ebp-11],0
 004CE855    mov        eax,dword ptr [ebp-0C]
 004CE858    mov        eax,dword ptr [eax+8]; TObjectList.FCount:Integer
 004CE85B    sub        eax,1
>004CE85E    jno        004CE865
 004CE860    call       @IntOver
 004CE865    test       eax,eax
>004CE867    jl         004CEC7A
 004CE86D    inc        eax
 004CE86E    mov        dword ptr [ebp-18],eax
 004CE871    xor        ebx,ebx
 004CE873    mov        edx,ebx
 004CE875    mov        eax,dword ptr [ebp-0C]
 004CE878    call       TObjectList.GetItem
 004CE87D    cmp        byte ptr [eax+0D],0
>004CE881    je         004CE88B
 004CE883    mov        edx,dword ptr [ebp+8]
 004CE886    mov        dword ptr [ebp-10],edx
>004CE889    jmp        004CE891
 004CE88B    mov        edx,dword ptr [ebp+0C]
 004CE88E    mov        dword ptr [ebp-10],edx
 004CE891    mov        esi,dword ptr [eax+4]
 004CE894    mov        eax,dword ptr [ebp-4]
 004CE897    cmp        byte ptr [eax+28],0; TZASACachedResolver.?f28:byte
>004CE89B    je         004CE8C7
 004CE89D    lea        ecx,[ebp-1C]
 004CE8A0    mov        eax,dword ptr [ebp-4]
 004CE8A3    mov        eax,dword ptr [eax+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE8A6    mov        edx,esi
 004CE8A8    mov        edi,dword ptr [eax]
 004CE8AA    call       dword ptr [edi+5C]
 004CE8AD    mov        ecx,dword ptr [ebp-1C]
 004CE8B0    mov        edx,ebx
 004CE8B2    add        edx,1
>004CE8B5    jno        004CE8BC
 004CE8B7    call       @IntOver
 004CE8BC    mov        eax,dword ptr [ebp-8]
 004CE8BF    mov        edi,dword ptr [eax]
 004CE8C1    call       dword ptr [edi+0A4]
 004CE8C7    mov        eax,dword ptr [ebp-4]
 004CE8CA    mov        eax,dword ptr [eax+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CE8CD    mov        edx,esi
 004CE8CF    mov        ecx,dword ptr [eax]
 004CE8D1    call       dword ptr [ecx+48]
 004CE8D4    and        eax,7F
 004CE8D7    cmp        eax,11
>004CE8DA    ja         004CEC44
 004CE8E0    jmp        dword ptr [eax*4+4CE8E7]
 004CE8E0    dd         4CEC44
 004CE8E0    dd         4CE92F
 004CE8E0    dd         4CE95A
 004CE8E0    dd         4CE985
 004CE8E0    dd         4CE9B0
 004CE8E0    dd         4CE9DB
 004CE8E0    dd         4CEA06
 004CE8E0    dd         4CEA36
 004CE8E0    dd         4CEA66
 004CE8E0    dd         4CEA96
 004CE8E0    dd         4CEAC6
 004CE8E0    dd         4CEAF6
 004CE8E0    dd         4CEB26
 004CE8E0    dd         4CEB56
 004CE8E0    dd         4CEB86
 004CE8E0    dd         4CEBB6
 004CE8E0    dd         4CEBE6
 004CE8E0    dd         4CEC16
 004CE92F    lea        ecx,[ebp-11]
 004CE932    mov        edx,esi
 004CE934    mov        eax,dword ptr [ebp-10]
 004CE937    call       004C9D40
 004CE93C    mov        ecx,eax
 004CE93E    mov        edx,ebx
 004CE940    add        edx,1
>004CE943    jno        004CE94A
 004CE945    call       @IntOver
 004CE94A    mov        eax,dword ptr [ebp-8]
 004CE94D    mov        edi,dword ptr [eax]
 004CE94F    call       dword ptr [edi+0AC]
>004CE955    jmp        004CEC44
 004CE95A    lea        ecx,[ebp-11]
 004CE95D    mov        edx,esi
 004CE95F    mov        eax,dword ptr [ebp-10]
 004CE962    call       004C9FB8
 004CE967    mov        ecx,eax
 004CE969    mov        edx,ebx
 004CE96B    add        edx,1
>004CE96E    jno        004CE975
 004CE970    call       @IntOver
 004CE975    mov        eax,dword ptr [ebp-8]
 004CE978    mov        edi,dword ptr [eax]
 004CE97A    call       dword ptr [edi+0B0]
>004CE980    jmp        004CEC44
 004CE985    lea        ecx,[ebp-11]
 004CE988    mov        edx,esi
 004CE98A    mov        eax,dword ptr [ebp-10]
 004CE98D    call       004CA254
 004CE992    mov        ecx,eax
 004CE994    mov        edx,ebx
 004CE996    add        edx,1
>004CE999    jno        004CE9A0
 004CE99B    call       @IntOver
 004CE9A0    mov        eax,dword ptr [ebp-8]
 004CE9A3    mov        edi,dword ptr [eax]
 004CE9A5    call       dword ptr [edi+0B4]
>004CE9AB    jmp        004CEC44
 004CE9B0    lea        ecx,[ebp-11]
 004CE9B3    mov        edx,esi
 004CE9B5    mov        eax,dword ptr [ebp-10]
 004CE9B8    call       004CA4EC
 004CE9BD    mov        ecx,eax
 004CE9BF    mov        edx,ebx
 004CE9C1    add        edx,1
>004CE9C4    jno        004CE9CB
 004CE9C6    call       @IntOver
 004CE9CB    mov        eax,dword ptr [ebp-8]
 004CE9CE    mov        edi,dword ptr [eax]
 004CE9D0    call       dword ptr [edi+0B8]
>004CE9D6    jmp        004CEC44
 004CE9DB    lea        ecx,[ebp-11]
 004CE9DE    mov        edx,esi
 004CE9E0    mov        eax,dword ptr [ebp-10]
 004CE9E3    call       004CA704
 004CE9E8    push       edx
 004CE9E9    push       eax
 004CE9EA    mov        edx,ebx
 004CE9EC    add        edx,1
>004CE9EF    jno        004CE9F6
 004CE9F1    call       @IntOver
 004CE9F6    mov        eax,dword ptr [ebp-8]
 004CE9F9    mov        ecx,dword ptr [eax]
 004CE9FB    call       dword ptr [ecx+0BC]
>004CEA01    jmp        004CEC44
 004CEA06    lea        ecx,[ebp-11]
 004CEA09    mov        edx,esi
 004CEA0B    mov        eax,dword ptr [ebp-10]
 004CEA0E    call       004CA924
 004CEA13    add        esp,0FFFFFFFC
 004CEA16    fstp       dword ptr [esp]
 004CEA19    wait
 004CEA1A    mov        edx,ebx
 004CEA1C    add        edx,1
>004CEA1F    jno        004CEA26
 004CEA21    call       @IntOver
 004CEA26    mov        eax,dword ptr [ebp-8]
 004CEA29    mov        ecx,dword ptr [eax]
 004CEA2B    call       dword ptr [ecx+0C0]
>004CEA31    jmp        004CEC44
 004CEA36    lea        ecx,[ebp-11]
 004CEA39    mov        edx,esi
 004CEA3B    mov        eax,dword ptr [ebp-10]
 004CEA3E    call       004CAB20
 004CEA43    add        esp,0FFFFFFF8
 004CEA46    fstp       qword ptr [esp]
 004CEA49    wait
 004CEA4A    mov        edx,ebx
 004CEA4C    add        edx,1
>004CEA4F    jno        004CEA56
 004CEA51    call       @IntOver
 004CEA56    mov        eax,dword ptr [ebp-8]
 004CEA59    mov        ecx,dword ptr [eax]
 004CEA5B    call       dword ptr [ecx+0C4]
>004CEA61    jmp        004CEC44
 004CEA66    lea        ecx,[ebp-11]
 004CEA69    mov        edx,esi
 004CEA6B    mov        eax,dword ptr [ebp-10]
 004CEA6E    call       004CAD30
 004CEA73    add        esp,0FFFFFFF4
 004CEA76    fstp       tbyte ptr [esp]
 004CEA79    wait
 004CEA7A    mov        edx,ebx
 004CEA7C    add        edx,1
>004CEA7F    jno        004CEA86
 004CEA81    call       @IntOver
 004CEA86    mov        eax,dword ptr [ebp-8]
 004CEA89    mov        ecx,dword ptr [eax]
 004CEA8B    call       dword ptr [ecx+0C8]
>004CEA91    jmp        004CEC44
 004CEA96    lea        eax,[ebp-20]
 004CEA99    push       eax
 004CEA9A    lea        ecx,[ebp-11]
 004CEA9D    mov        edx,esi
 004CEA9F    mov        eax,dword ptr [ebp-10]
 004CEAA2    call       004C9818
 004CEAA7    mov        ecx,dword ptr [ebp-20]
 004CEAAA    mov        edx,ebx
 004CEAAC    add        edx,1
>004CEAAF    jno        004CEAB6
 004CEAB1    call       @IntOver
 004CEAB6    mov        eax,dword ptr [ebp-8]
 004CEAB9    mov        edi,dword ptr [eax]
 004CEABB    call       dword ptr [edi+0D0]
>004CEAC1    jmp        004CEC44
 004CEAC6    lea        eax,[ebp-24]
 004CEAC9    push       eax
 004CEACA    lea        ecx,[ebp-11]
 004CEACD    mov        edx,esi
 004CEACF    mov        eax,dword ptr [ebp-10]
 004CEAD2    call       004C9BDC
 004CEAD7    mov        ecx,dword ptr [ebp-24]
 004CEADA    mov        edx,ebx
 004CEADC    add        edx,1
>004CEADF    jno        004CEAE6
 004CEAE1    call       @IntOver
 004CEAE6    mov        eax,dword ptr [ebp-8]
 004CEAE9    mov        edi,dword ptr [eax]
 004CEAEB    call       dword ptr [edi+0D4]
>004CEAF1    jmp        004CEC44
 004CEAF6    lea        eax,[ebp-28]
 004CEAF9    push       eax
 004CEAFA    lea        ecx,[ebp-11]
 004CEAFD    mov        edx,esi
 004CEAFF    mov        eax,dword ptr [ebp-10]
 004CEB02    call       004CAF54
 004CEB07    mov        ecx,dword ptr [ebp-28]
 004CEB0A    mov        edx,ebx
 004CEB0C    add        edx,1
>004CEB0F    jno        004CEB16
 004CEB11    call       @IntOver
 004CEB16    mov        eax,dword ptr [ebp-8]
 004CEB19    mov        edi,dword ptr [eax]
 004CEB1B    call       dword ptr [edi+0D8]
>004CEB21    jmp        004CEC44
 004CEB26    lea        ecx,[ebp-11]
 004CEB29    mov        edx,esi
 004CEB2B    mov        eax,dword ptr [ebp-10]
 004CEB2E    call       004CB110
 004CEB33    add        esp,0FFFFFFF8
 004CEB36    fstp       qword ptr [esp]
 004CEB39    wait
 004CEB3A    mov        edx,ebx
 004CEB3C    add        edx,1
>004CEB3F    jno        004CEB46
 004CEB41    call       @IntOver
 004CEB46    mov        eax,dword ptr [ebp-8]
 004CEB49    mov        ecx,dword ptr [eax]
 004CEB4B    call       dword ptr [ecx+0DC]
>004CEB51    jmp        004CEC44
 004CEB56    lea        ecx,[ebp-11]
 004CEB59    mov        edx,esi
 004CEB5B    mov        eax,dword ptr [ebp-10]
 004CEB5E    call       004CB24C
 004CEB63    add        esp,0FFFFFFF8
 004CEB66    fstp       qword ptr [esp]
 004CEB69    wait
 004CEB6A    mov        edx,ebx
 004CEB6C    add        edx,1
>004CEB6F    jno        004CEB76
 004CEB71    call       @IntOver
 004CEB76    mov        eax,dword ptr [ebp-8]
 004CEB79    mov        ecx,dword ptr [eax]
 004CEB7B    call       dword ptr [ecx+0E0]
>004CEB81    jmp        004CEC44
 004CEB86    lea        ecx,[ebp-11]
 004CEB89    mov        edx,esi
 004CEB8B    mov        eax,dword ptr [ebp-10]
 004CEB8E    call       004CB380
 004CEB93    add        esp,0FFFFFFF8
 004CEB96    fstp       qword ptr [esp]
 004CEB99    wait
 004CEB9A    mov        edx,ebx
 004CEB9C    add        edx,1
>004CEB9F    jno        004CEBA6
 004CEBA1    call       @IntOver
 004CEBA6    mov        eax,dword ptr [ebp-8]
 004CEBA9    mov        ecx,dword ptr [eax]
 004CEBAB    call       dword ptr [ecx+0E4]
>004CEBB1    jmp        004CEC44
 004CEBB6    lea        eax,[ebp-2C]
 004CEBB9    push       eax
 004CEBBA    lea        ecx,[ebp-11]
 004CEBBD    mov        edx,esi
 004CEBBF    mov        eax,dword ptr [ebp-10]
 004CEBC2    call       004CB5A4
 004CEBC7    mov        eax,dword ptr [ebp-2C]
 004CEBCA    push       eax
 004CEBCB    mov        edx,ebx
 004CEBCD    add        edx,1
>004CEBD0    jno        004CEBD7
 004CEBD2    call       @IntOver
 004CEBD7    mov        cl,0F
 004CEBD9    mov        eax,dword ptr [ebp-8]
 004CEBDC    mov        edi,dword ptr [eax]
 004CEBDE    call       dword ptr [edi+0F4]
>004CEBE4    jmp        004CEC44
 004CEBE6    lea        eax,[ebp-30]
 004CEBE9    push       eax
 004CEBEA    lea        ecx,[ebp-11]
 004CEBED    mov        edx,esi
 004CEBEF    mov        eax,dword ptr [ebp-10]
 004CEBF2    call       004CB5A4
 004CEBF7    mov        eax,dword ptr [ebp-30]
 004CEBFA    push       eax
 004CEBFB    mov        edx,ebx
 004CEBFD    add        edx,1
>004CEC00    jno        004CEC07
 004CEC02    call       @IntOver
 004CEC07    mov        cl,10
 004CEC09    mov        eax,dword ptr [ebp-8]
 004CEC0C    mov        edi,dword ptr [eax]
 004CEC0E    call       dword ptr [edi+0F4]
>004CEC14    jmp        004CEC44
 004CEC16    lea        eax,[ebp-34]
 004CEC19    push       eax
 004CEC1A    lea        ecx,[ebp-11]
 004CEC1D    mov        edx,esi
 004CEC1F    mov        eax,dword ptr [ebp-10]
 004CEC22    call       004CB5A4
 004CEC27    mov        eax,dword ptr [ebp-34]
 004CEC2A    push       eax
 004CEC2B    mov        edx,ebx
 004CEC2D    add        edx,1
>004CEC30    jno        004CEC37
 004CEC32    call       @IntOver
 004CEC37    mov        cl,11
 004CEC39    mov        eax,dword ptr [ebp-8]
 004CEC3C    mov        edi,dword ptr [eax]
 004CEC3E    call       dword ptr [edi+0F4]
 004CEC44    cmp        byte ptr [ebp-11],0
>004CEC48    je         004CEC70
 004CEC4A    mov        eax,dword ptr [ebp-4]
 004CEC4D    mov        eax,dword ptr [eax+10]; TZASACachedResolver.?f10:IZResultSetMetadata
 004CEC50    mov        edx,esi
 004CEC52    mov        ecx,dword ptr [eax]
 004CEC54    call       dword ptr [ecx+48]
 004CEC57    mov        ecx,eax
 004CEC59    mov        edx,ebx
 004CEC5B    add        edx,1
>004CEC5E    jno        004CEC65
 004CEC60    call       @IntOver
 004CEC65    mov        eax,dword ptr [ebp-8]
 004CEC68    mov        esi,dword ptr [eax]
 004CEC6A    call       dword ptr [esi+0A8]
 004CEC70    inc        ebx
 004CEC71    dec        dword ptr [ebp-18]
<004CEC74    jne        004CE873
 004CEC7A    xor        eax,eax
 004CEC7C    pop        edx
 004CEC7D    pop        ecx
 004CEC7E    pop        ecx
 004CEC7F    mov        dword ptr fs:[eax],edx
 004CEC82    push       4CECCD
 004CEC87    lea        eax,[ebp-34]
 004CEC8A    mov        edx,dword ptr ds:[4C7064]; IZBlob
 004CEC90    mov        ecx,3
 004CEC95    call       @FinalizeArray
 004CEC9A    lea        eax,[ebp-28]
 004CEC9D    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 004CECA3    call       @DynArrayClear
 004CECA8    lea        eax,[ebp-24]
 004CECAB    call       @WStrClr
 004CECB0    lea        eax,[ebp-20]
 004CECB3    mov        edx,2
 004CECB8    call       @LStrArrayClr
 004CECBD    lea        eax,[ebp-8]
 004CECC0    call       @IntfClear
 004CECC5    ret
<004CECC6    jmp        @HandleFinally
<004CECCB    jmp        004CEC87
 004CECCD    pop        edi
 004CECCE    pop        esi
 004CECCF    pop        ebx
 004CECD0    mov        esp,ebp
 004CECD2    pop        ebp
 004CECD3    ret        8
*}
//end;

//004CECD8
//procedure sub_004CECD8(?:TZGenericCachedResolver; ?:TObjectList; ?:?; ?:?);
//begin
{*
 004CECD8    push       ebp
 004CECD9    mov        ebp,esp
 004CECDB    add        esp,0FFFFFFE4
 004CECDE    push       ebx
 004CECDF    push       esi
 004CECE0    push       edi
 004CECE1    xor        ebx,ebx
 004CECE3    mov        dword ptr [ebp-1C],ebx
 004CECE6    mov        dword ptr [ebp-0C],ecx
 004CECE9    mov        dword ptr [ebp-8],edx
 004CECEC    mov        dword ptr [ebp-4],eax
 004CECEF    mov        ebx,dword ptr [ebp+8]
 004CECF2    xor        eax,eax
 004CECF4    push       ebp
 004CECF5    push       4CEDEF
 004CECFA    push       dword ptr fs:[eax]
 004CECFD    mov        dword ptr fs:[eax],esp
 004CED00    mov        eax,ebx
 004CED02    call       @LStrClr
 004CED07    mov        edx,dword ptr [ebp-8]
 004CED0A    mov        edx,dword ptr [edx+8]; TObjectList.FCount:Integer
 004CED0D    mov        eax,dword ptr [ebp-4]
 004CED10    mov        eax,dword ptr [eax+24]; TZASACachedResolver.?f24:TObjectList
 004CED13    mov        eax,dword ptr [eax+8]; TObjectList.FCount:Integer
 004CED16    sub        edx,eax
>004CED18    jno        004CED1F
 004CED1A    call       @IntOver
 004CED1F    mov        dword ptr [ebp-14],edx
 004CED22    sub        eax,1
>004CED25    jno        004CED2C
 004CED27    call       @IntOver
 004CED2C    test       eax,eax
>004CED2E    jl         004CEDC6
 004CED34    inc        eax
 004CED35    mov        dword ptr [ebp-18],eax
 004CED38    mov        dword ptr [ebp-10],0
 004CED3F    mov        eax,dword ptr [ebp-4]
 004CED42    mov        eax,dword ptr [eax+24]; TZASACachedResolver.?f24:TObjectList
 004CED45    mov        edx,dword ptr [ebp-10]
 004CED48    call       TObjectList.GetItem
 004CED4D    mov        esi,eax
 004CED4F    cmp        dword ptr [ebx],0
>004CED52    je         004CED60
 004CED54    mov        eax,ebx
 004CED56    mov        edx,4CEE08; ' AND '
 004CED5B    call       @LStrCat
 004CED60    lea        ecx,[ebp-1C]
 004CED63    mov        eax,dword ptr [ebp-4]
 004CED66    mov        eax,dword ptr [eax+18]; TZASACachedResolver.?f18:IZIdentifierConvertor
 004CED69    mov        edx,dword ptr [esi+8]
 004CED6C    mov        edi,dword ptr [eax]
 004CED6E    call       dword ptr [edi+14]
 004CED71    mov        edx,dword ptr [ebp-1C]
 004CED74    mov        eax,ebx
 004CED76    call       @LStrCat
 004CED7B    mov        edx,dword ptr [esi+4]
 004CED7E    mov        eax,dword ptr [ebp-0C]
 004CED81    call       004C9638
 004CED86    test       al,al
>004CED88    je         004CEDA3
 004CED8A    mov        eax,ebx
 004CED8C    mov        edx,4CEE18; ' IS NULL '
 004CED91    call       @LStrCat
 004CED96    mov        edx,dword ptr [ebp-14]
 004CED99    mov        eax,dword ptr [ebp-8]
 004CED9C    call       TList.Delete
>004CEDA1    jmp        004CEDBA
 004CEDA3    mov        eax,ebx
 004CEDA5    mov        edx,4CEE2C; '=?'
 004CEDAA    call       @LStrCat
 004CEDAF    add        dword ptr [ebp-14],1
>004CEDB3    jno        004CEDBA
 004CEDB5    call       @IntOver
 004CEDBA    inc        dword ptr [ebp-10]
 004CEDBD    dec        dword ptr [ebp-18]
<004CEDC0    jne        004CED3F
 004CEDC6    cmp        dword ptr [ebx],0
>004CEDC9    je         004CEDD9
 004CEDCB    mov        ecx,dword ptr [ebx]
 004CEDCD    mov        eax,ebx
 004CEDCF    mov        edx,4CEE38; ' WHERE '
 004CEDD4    call       @LStrCat3
 004CEDD9    xor        eax,eax
 004CEDDB    pop        edx
 004CEDDC    pop        ecx
 004CEDDD    pop        ecx
 004CEDDE    mov        dword ptr fs:[eax],edx
 004CEDE1    push       4CEDF6
 004CEDE6    lea        eax,[ebp-1C]
 004CEDE9    call       @LStrClr
 004CEDEE    ret
<004CEDEF    jmp        @HandleFinally
<004CEDF4    jmp        004CEDE6
 004CEDF6    pop        edi
 004CEDF7    pop        esi
 004CEDF8    pop        ebx
 004CEDF9    mov        esp,ebp
 004CEDFB    pop        ebp
 004CEDFC    ret        4
*}
//end;

//004CEE40
//procedure sub_004CEE40(?:TZGenericCachedResolver; ?:TObjectList; ?:?);
//begin
{*
 004CEE40    push       ebp
 004CEE41    mov        ebp,esp
 004CEE43    add        esp,0FFFFFFCC
 004CEE46    push       ebx
 004CEE47    push       esi
 004CEE48    push       edi
 004CEE49    xor        ebx,ebx
 004CEE4B    mov        dword ptr [ebp-1C],ebx
 004CEE4E    mov        dword ptr [ebp-10],ebx
 004CEE51    mov        dword ptr [ebp-14],ebx
 004CEE54    mov        dword ptr [ebp-18],ebx
 004CEE57    mov        dword ptr [ebp-8],edx
 004CEE5A    mov        dword ptr [ebp-4],eax
 004CEE5D    xor        eax,eax
 004CEE5F    push       ebp
 004CEE60    push       4CEF6B
 004CEE65    push       dword ptr fs:[eax]
 004CEE68    mov        dword ptr fs:[eax],esp
 004CEE6B    lea        edx,[ebp-10]
 004CEE6E    mov        eax,dword ptr [ebp-4]
 004CEE71    call       004CDF98
 004CEE76    mov        edx,dword ptr [ebp-8]
 004CEE79    mov        eax,dword ptr [ebp-4]
 004CEE7C    call       004CE0D8
 004CEE81    mov        eax,dword ptr [ebp-8]
 004CEE84    mov        ebx,dword ptr [eax+8]; TObjectList.FCount:Integer
 004CEE87    test       ebx,ebx
>004CEE89    jne        004CEE98
 004CEE8B    mov        eax,dword ptr [ebp+8]
 004CEE8E    call       @LStrClr
>004CEE93    jmp        004CEF50
 004CEE98    lea        eax,[ebp-14]
 004CEE9B    call       @LStrClr
 004CEEA0    lea        eax,[ebp-18]
 004CEEA3    call       @LStrClr
 004CEEA8    sub        ebx,1
>004CEEAB    jno        004CEEB2
 004CEEAD    call       @IntOver
 004CEEB2    test       ebx,ebx
>004CEEB4    jl         004CEF1C
 004CEEB6    inc        ebx
 004CEEB7    xor        esi,esi
 004CEEB9    mov        edx,esi
 004CEEBB    mov        eax,dword ptr [ebp-8]
 004CEEBE    call       TObjectList.GetItem
 004CEEC3    mov        dword ptr [ebp-0C],eax
 004CEEC6    cmp        dword ptr [ebp-14],0
>004CEECA    je         004CEED9
 004CEECC    lea        eax,[ebp-14]
 004CEECF    mov        edx,4CEF84; ','
 004CEED4    call       @LStrCat
 004CEED9    lea        ecx,[ebp-1C]
 004CEEDC    mov        eax,dword ptr [ebp-0C]
 004CEEDF    mov        edx,dword ptr [eax+8]
 004CEEE2    mov        eax,dword ptr [ebp-4]
 004CEEE5    mov        eax,dword ptr [eax+18]; TZASACachedResolver.?f18:IZIdentifierConvertor
 004CEEE8    mov        edi,dword ptr [eax]
 004CEEEA    call       dword ptr [edi+14]
 004CEEED    mov        edx,dword ptr [ebp-1C]
 004CEEF0    lea        eax,[ebp-14]
 004CEEF3    call       @LStrCat
 004CEEF8    cmp        dword ptr [ebp-18],0
>004CEEFC    je         004CEF0B
 004CEEFE    lea        eax,[ebp-18]
 004CEF01    mov        edx,4CEF84; ','
 004CEF06    call       @LStrCat
 004CEF0B    lea        eax,[ebp-18]
 004CEF0E    mov        edx,4CEF90; '?'
 004CEF13    call       @LStrCat
 004CEF18    inc        esi
 004CEF19    dec        ebx
<004CEF1A    jne        004CEEB9
 004CEF1C    mov        eax,dword ptr [ebp+8]
 004CEF1F    push       eax
 004CEF20    mov        eax,dword ptr [ebp-10]
 004CEF23    mov        dword ptr [ebp-34],eax
 004CEF26    mov        byte ptr [ebp-30],0B
 004CEF2A    mov        eax,dword ptr [ebp-14]
 004CEF2D    mov        dword ptr [ebp-2C],eax
 004CEF30    mov        byte ptr [ebp-28],0B
 004CEF34    mov        eax,dword ptr [ebp-18]
 004CEF37    mov        dword ptr [ebp-24],eax
 004CEF3A    mov        byte ptr [ebp-20],0B
 004CEF3E    lea        edx,[ebp-34]
 004CEF41    mov        ecx,2
 004CEF46    mov        eax,4CEF9C; 'INSERT INTO %s (%s) VALUES (%s)'
 004CEF4B    call       Format
 004CEF50    xor        eax,eax
 004CEF52    pop        edx
 004CEF53    pop        ecx
 004CEF54    pop        ecx
 004CEF55    mov        dword ptr fs:[eax],edx
 004CEF58    push       4CEF72
 004CEF5D    lea        eax,[ebp-1C]
 004CEF60    mov        edx,4
 004CEF65    call       @LStrArrayClr
 004CEF6A    ret
<004CEF6B    jmp        @HandleFinally
<004CEF70    jmp        004CEF5D
 004CEF72    pop        edi
 004CEF73    pop        esi
 004CEF74    pop        ebx
 004CEF75    mov        esp,ebp
 004CEF77    pop        ebp
 004CEF78    ret        4
*}
//end;

//004CEFBC
//procedure sub_004CEFBC(?:TZGenericCachedResolver; ?:TObjectList; ?:?; ?:?; ?:?);
//begin
{*
 004CEFBC    push       ebp
 004CEFBD    mov        ebp,esp
 004CEFBF    add        esp,0FFFFFFD0
 004CEFC2    push       ebx
 004CEFC3    push       esi
 004CEFC4    push       edi
 004CEFC5    xor        ebx,ebx
 004CEFC7    mov        dword ptr [ebp-30],ebx
 004CEFCA    mov        dword ptr [ebp-1C],ebx
 004CEFCD    mov        dword ptr [ebp-14],ebx
 004CEFD0    mov        dword ptr [ebp-18],ebx
 004CEFD3    mov        dword ptr [ebp-8],ecx
 004CEFD6    mov        dword ptr [ebp-4],edx
 004CEFD9    mov        esi,eax
 004CEFDB    xor        eax,eax
 004CEFDD    push       ebp
 004CEFDE    push       4CF0FF
 004CEFE3    push       dword ptr fs:[eax]
 004CEFE6    mov        dword ptr fs:[eax],esp
 004CEFE9    lea        edx,[ebp-14]
 004CEFEC    mov        eax,esi
 004CEFEE    call       004CDF98
 004CEFF3    mov        eax,dword ptr [ebp+0C]
 004CEFF6    push       eax
 004CEFF7    mov        ecx,dword ptr [ebp-8]
 004CEFFA    mov        edx,dword ptr [ebp-4]
 004CEFFD    mov        eax,esi
 004CEFFF    call       004CE1C4
 004CF004    mov        eax,dword ptr [ebp-4]
 004CF007    mov        ebx,dword ptr [eax+8]; TObjectList.FCount:Integer
 004CF00A    test       ebx,ebx
>004CF00C    jne        004CF01B
 004CF00E    mov        eax,dword ptr [ebp+8]
 004CF011    call       @LStrClr
>004CF016    jmp        004CF0DC
 004CF01B    lea        eax,[ebp-18]
 004CF01E    call       @LStrClr
 004CF023    sub        ebx,1
>004CF026    jno        004CF02D
 004CF028    call       @IntOver
 004CF02D    test       ebx,ebx
>004CF02F    jl         004CF089
 004CF031    inc        ebx
 004CF032    mov        dword ptr [ebp-0C],0
 004CF039    mov        edx,dword ptr [ebp-0C]
 004CF03C    mov        eax,dword ptr [ebp-4]
 004CF03F    call       TObjectList.GetItem
 004CF044    mov        dword ptr [ebp-10],eax
 004CF047    cmp        dword ptr [ebp-18],0
>004CF04B    je         004CF05A
 004CF04D    lea        eax,[ebp-18]
 004CF050    mov        edx,4CF118; ','
 004CF055    call       @LStrCat
 004CF05A    push       dword ptr [ebp-18]
 004CF05D    lea        ecx,[ebp-1C]
 004CF060    mov        eax,dword ptr [ebp-10]
 004CF063    mov        edx,dword ptr [eax+8]
 004CF066    mov        eax,dword ptr [esi+18]; TZGenericCachedResolver.?f18:IZIdentifierConvertor
 004CF069    mov        edi,dword ptr [eax]
 004CF06B    call       dword ptr [edi+14]
 004CF06E    push       dword ptr [ebp-1C]
 004CF071    push       4CF124; '=?'
 004CF076    lea        eax,[ebp-18]
 004CF079    mov        edx,3
 004CF07E    call       @LStrCatN
 004CF083    inc        dword ptr [ebp-0C]
 004CF086    dec        ebx
<004CF087    jne        004CF039
 004CF089    mov        eax,dword ptr [ebp+8]
 004CF08C    push       eax
 004CF08D    mov        eax,dword ptr [ebp-14]
 004CF090    mov        dword ptr [ebp-2C],eax
 004CF093    mov        byte ptr [ebp-28],0B
 004CF097    mov        eax,dword ptr [ebp-18]
 004CF09A    mov        dword ptr [ebp-24],eax
 004CF09D    mov        byte ptr [ebp-20],0B
 004CF0A1    lea        edx,[ebp-2C]
 004CF0A4    mov        ecx,1
 004CF0A9    mov        eax,4CF130; 'UPDATE %s SET %s'
 004CF0AE    call       Format
 004CF0B3    mov        edx,dword ptr [ebp-4]
 004CF0B6    mov        eax,esi
 004CF0B8    call       004CE408
 004CF0BD    lea        eax,[ebp-30]
 004CF0C0    push       eax
 004CF0C1    mov        ecx,dword ptr [ebp-8]
 004CF0C4    mov        edx,dword ptr [ebp-4]
 004CF0C7    mov        eax,esi
 004CF0C9    call       004CECD8
 004CF0CE    mov        edx,dword ptr [ebp-30]
 004CF0D1    mov        eax,dword ptr [ebp+8]
 004CF0D4    call       @LStrCat
 004CF0D9    mov        eax,dword ptr [ebp+8]
 004CF0DC    xor        eax,eax
 004CF0DE    pop        edx
 004CF0DF    pop        ecx
 004CF0E0    pop        ecx
 004CF0E1    mov        dword ptr fs:[eax],edx
 004CF0E4    push       4CF106
 004CF0E9    lea        eax,[ebp-30]
 004CF0EC    call       @LStrClr
 004CF0F1    lea        eax,[ebp-1C]
 004CF0F4    mov        edx,3
 004CF0F9    call       @LStrArrayClr
 004CF0FE    ret
<004CF0FF    jmp        @HandleFinally
<004CF104    jmp        004CF0E9
 004CF106    pop        edi
 004CF107    pop        esi
 004CF108    pop        ebx
 004CF109    mov        esp,ebp
 004CF10B    pop        ebp
 004CF10C    ret        8
*}
//end;

//004CF144
//procedure sub_004CF144(?:TZGenericCachedResolver; ?:TObjectList; ?:?; ?:?);
//begin
{*
 004CF144    push       ebp
 004CF145    mov        ebp,esp
 004CF147    add        esp,0FFFFFFEC
 004CF14A    push       ebx
 004CF14B    push       esi
 004CF14C    push       edi
 004CF14D    xor        ebx,ebx
 004CF14F    mov        dword ptr [ebp-14],ebx
 004CF152    mov        dword ptr [ebp-8],ebx
 004CF155    mov        dword ptr [ebp-4],ecx
 004CF158    mov        edi,edx
 004CF15A    mov        ebx,eax
 004CF15C    mov        esi,dword ptr [ebp+8]
 004CF15F    xor        eax,eax
 004CF161    push       ebp
 004CF162    push       4CF1D2
 004CF167    push       dword ptr fs:[eax]
 004CF16A    mov        dword ptr fs:[eax],esp
 004CF16D    lea        edx,[ebp-8]
 004CF170    mov        eax,ebx
 004CF172    call       004CDF98
 004CF177    push       esi
 004CF178    mov        eax,dword ptr [ebp-8]
 004CF17B    mov        dword ptr [ebp-10],eax
 004CF17E    mov        byte ptr [ebp-0C],0B
 004CF182    lea        edx,[ebp-10]
 004CF185    xor        ecx,ecx
 004CF187    mov        eax,4CF1EC; 'DELETE FROM %s'
 004CF18C    call       Format
 004CF191    mov        edx,edi
 004CF193    mov        eax,ebx
 004CF195    call       004CE408
 004CF19A    lea        eax,[ebp-14]
 004CF19D    push       eax
 004CF19E    mov        ecx,dword ptr [ebp-4]
 004CF1A1    mov        edx,edi
 004CF1A3    mov        eax,ebx
 004CF1A5    call       004CECD8
 004CF1AA    mov        edx,dword ptr [ebp-14]
 004CF1AD    mov        eax,esi
 004CF1AF    call       @LStrCat
 004CF1B4    xor        eax,eax
 004CF1B6    pop        edx
 004CF1B7    pop        ecx
 004CF1B8    pop        ecx
 004CF1B9    mov        dword ptr fs:[eax],edx
 004CF1BC    push       4CF1D9
 004CF1C1    lea        eax,[ebp-14]
 004CF1C4    call       @LStrClr
 004CF1C9    lea        eax,[ebp-8]
 004CF1CC    call       @LStrClr
 004CF1D1    ret
<004CF1D2    jmp        @HandleFinally
<004CF1D7    jmp        004CF1C1
 004CF1D9    pop        edi
 004CF1DA    pop        esi
 004CF1DB    pop        ebx
 004CF1DC    mov        esp,ebp
 004CF1DE    pop        ebp
 004CF1DF    ret        4
*}
//end;

//004CF1FC
//procedure sub_004CF1FC(?:?; ?:?);
//begin
{*
 004CF1FC    push       ebp
 004CF1FD    mov        ebp,esp
 004CF1FF    add        esp,0FFFFFFF8
 004CF202    push       ebx
 004CF203    push       esi
 004CF204    push       edi
 004CF205    mov        ebx,ecx
 004CF207    mov        dword ptr [ebp-4],edx
 004CF20A    mov        eax,ebx
 004CF20C    call       @LStrClr
 004CF211    mov        eax,dword ptr [ebp-4]
 004CF214    mov        eax,dword ptr [eax+8]
 004CF217    test       eax,eax
>004CF219    je         004CF283
 004CF21B    mov        edi,eax
 004CF21D    sub        edi,1
>004CF220    jno        004CF227
 004CF222    call       @IntOver
 004CF227    test       edi,edi
>004CF229    jl         004CF275
 004CF22B    inc        edi
 004CF22C    mov        dword ptr [ebp-8],0
 004CF233    mov        edx,dword ptr [ebp-8]
 004CF236    mov        eax,dword ptr [ebp-4]
 004CF239    call       TObjectList.GetItem
 004CF23E    mov        esi,eax
 004CF240    cmp        dword ptr [ebx],0
>004CF243    je         004CF251
 004CF245    mov        eax,ebx
 004CF247    mov        edx,4CF294; ','
 004CF24C    call       @LStrCat
 004CF251    cmp        dword ptr [esi+10],0
>004CF255    je         004CF263
 004CF257    mov        eax,ebx
 004CF259    mov        edx,dword ptr [esi+10]
 004CF25C    call       @LStrCat
>004CF261    jmp        004CF26F
 004CF263    mov        eax,ebx
 004CF265    mov        edx,4CF2A0; 'NULL'
 004CF26A    call       @LStrCat
 004CF26F    inc        dword ptr [ebp-8]
 004CF272    dec        edi
<004CF273    jne        004CF233
 004CF275    mov        ecx,dword ptr [ebx]
 004CF277    mov        eax,ebx
 004CF279    mov        edx,4CF2B0; 'SELECT '
 004CF27E    call       @LStrCat3
 004CF283    pop        edi
 004CF284    pop        esi
 004CF285    pop        ebx
 004CF286    pop        ecx
 004CF287    pop        ecx
 004CF288    pop        ebp
 004CF289    ret
*}
//end;

//004CF2B8
//procedure sub_004CF2B8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004CF2B8    push       ebp
 004CF2B9    mov        ebp,esp
 004CF2BB    push       ecx
 004CF2BC    mov        ecx,5
 004CF2C1    push       0
 004CF2C3    push       0
 004CF2C5    dec        ecx
<004CF2C6    jne        004CF2C1
 004CF2C8    xchg       ecx,dword ptr [ebp-4]
 004CF2CB    push       ebx
 004CF2CC    push       esi
 004CF2CD    push       edi
 004CF2CE    mov        byte ptr [ebp-5],cl
 004CF2D1    mov        dword ptr [ebp-4],edx
 004CF2D4    mov        ebx,eax
 004CF2D6    mov        esi,dword ptr [ebp+0C]
 004CF2D9    mov        eax,dword ptr [ebp-4]
 004CF2DC    call       @IntfAddRef
 004CF2E1    xor        eax,eax
 004CF2E3    push       ebp
 004CF2E4    push       4CF47E
 004CF2E9    push       dword ptr fs:[eax]
 004CF2EC    mov        dword ptr fs:[eax],esp
 004CF2EF    cmp        byte ptr [ebp-5],3
>004CF2F3    jne        004CF302
 004CF2F5    mov        eax,dword ptr [esi+24]
 004CF2F8    cmp        byte ptr [eax+4],2
>004CF2FC    je         004CF43B
 004CF302    mov        dl,1
 004CF304    mov        eax,[00433048]; TObjectList
 004CF309    call       TObjectList.Create; TObjectList.Create
 004CF30E    mov        dword ptr [ebp-14],eax
 004CF311    xor        eax,eax
 004CF313    push       ebp
 004CF314    push       4CF434
 004CF319    push       dword ptr fs:[eax]
 004CF31C    mov        dword ptr fs:[eax],esp
 004CF31F    mov        al,byte ptr [ebp-5]
 004CF322    dec        al
>004CF324    je         004CF355
 004CF326    dec        al
>004CF328    je         004CF330
 004CF32A    dec        al
>004CF32C    je         004CF343
>004CF32E    jmp        004CF36B
 004CF330    lea        eax,[ebp-10]
 004CF333    push       eax
 004CF334    mov        ecx,dword ptr [ebp+8]
 004CF337    mov        edx,dword ptr [ebp-14]
 004CF33A    mov        eax,ebx
 004CF33C    call       004CEE40
>004CF341    jmp        004CF375
 004CF343    lea        eax,[ebp-10]
 004CF346    push       eax
 004CF347    mov        ecx,esi
 004CF349    mov        edx,dword ptr [ebp-14]
 004CF34C    mov        eax,ebx
 004CF34E    call       004CF144
>004CF353    jmp        004CF375
 004CF355    mov        eax,dword ptr [ebp+8]
 004CF358    push       eax
 004CF359    lea        eax,[ebp-10]
 004CF35C    push       eax
 004CF35D    mov        ecx,esi
 004CF35F    mov        edx,dword ptr [ebp-14]
 004CF362    mov        eax,ebx
 004CF364    call       004CEFBC
>004CF369    jmp        004CF375
 004CF36B    call       @TryFinallyExit
>004CF370    jmp        004CF43B
 004CF375    cmp        dword ptr [ebp-10],0
>004CF379    je         004CF41E
 004CF37F    lea        ecx,[ebp-0C]
 004CF382    mov        eax,dword ptr [ebx+0C]; TZGenericCachedResolver.?fC:IZConnection
 004CF385    mov        edx,dword ptr [ebp-10]
 004CF388    mov        edi,dword ptr [eax]
 004CF38A    call       dword ptr [edi+10]
 004CF38D    push       esi
 004CF38E    mov        eax,dword ptr [ebp+8]
 004CF391    push       eax
 004CF392    mov        ecx,dword ptr [ebp-14]
 004CF395    mov        edx,dword ptr [ebp-0C]
 004CF398    mov        eax,ebx
 004CF39A    call       004CE81C
 004CF39F    lea        edx,[ebp-1C]
 004CF3A2    mov        eax,dword ptr [ebp-4]
 004CF3A5    mov        ecx,dword ptr [eax]
 004CF3A7    call       dword ptr [ecx+1F0]
 004CF3AD    mov        eax,dword ptr [ebp-1C]
 004CF3B0    mov        edx,dword ptr [eax]
 004CF3B2    call       dword ptr [edx+8C]
 004CF3B8    lea        ecx,[ebp-18]
 004CF3BB    mov        edx,4CF498; 'ValidateUpdateCount'
 004CF3C0    call       TStrings.GetValue
 004CF3C5    mov        eax,dword ptr [ebp-18]
 004CF3C8    call       004BEFC0
 004CF3CD    mov        ebx,eax
 004CF3CF    mov        eax,dword ptr [ebp-0C]
 004CF3D2    mov        edx,dword ptr [eax]
 004CF3D4    call       dword ptr [edx+9C]
 004CF3DA    mov        esi,eax
 004CF3DC    test       bl,bl
>004CF3DE    je         004CF41E
 004CF3E0    cmp        esi,1
>004CF3E3    je         004CF41E
 004CF3E5    lea        eax,[ebp-20]
 004CF3E8    push       eax
 004CF3E9    lea        edx,[ebp-24]
 004CF3EC    mov        eax,[0061B1FC]; ^#122.sResString83:TResStringRec
 004CF3F1    call       LoadResString
 004CF3F6    mov        eax,dword ptr [ebp-24]
 004CF3F9    mov        dword ptr [ebp-2C],esi
 004CF3FC    mov        byte ptr [ebp-28],0
 004CF400    lea        edx,[ebp-2C]
 004CF403    xor        ecx,ecx
 004CF405    call       Format
 004CF40A    mov        ecx,dword ptr [ebp-20]
 004CF40D    mov        dl,1
 004CF40F    mov        eax,[004C6D20]; EZSQLException
 004CF414    call       EZSQLException.Create; EZSQLException.Create
 004CF419    call       @RaiseExcept
 004CF41E    xor        eax,eax
 004CF420    pop        edx
 004CF421    pop        ecx
 004CF422    pop        ecx
 004CF423    mov        dword ptr fs:[eax],edx
 004CF426    push       4CF43B
 004CF42B    mov        eax,dword ptr [ebp-14]
 004CF42E    call       TObject.Free
 004CF433    ret
<004CF434    jmp        @HandleFinally
<004CF439    jmp        004CF42B
 004CF43B    xor        eax,eax
 004CF43D    pop        edx
 004CF43E    pop        ecx
 004CF43F    pop        ecx
 004CF440    mov        dword ptr fs:[eax],edx
 004CF443    push       4CF485
 004CF448    lea        eax,[ebp-24]
 004CF44B    mov        edx,2
 004CF450    call       @LStrArrayClr
 004CF455    lea        eax,[ebp-1C]
 004CF458    call       @IntfClear
 004CF45D    lea        eax,[ebp-18]
 004CF460    call       @LStrClr
 004CF465    lea        eax,[ebp-10]
 004CF468    call       @LStrClr
 004CF46D    lea        eax,[ebp-0C]
 004CF470    call       @IntfClear
 004CF475    lea        eax,[ebp-4]
 004CF478    call       @IntfClear
 004CF47D    ret
<004CF47E    jmp        @HandleFinally
<004CF483    jmp        004CF448
 004CF485    pop        edi
 004CF486    pop        esi
 004CF487    pop        ebx
 004CF488    mov        esp,ebp
 004CF48A    pop        ebp
 004CF48B    ret        8
*}
//end;

//004CF884
procedure sub_004CF884;
begin
{*
 004CF884    push       ebp
 004CF885    mov        ebp,esp
 004CF887    mov        eax,dword ptr [ebp+8]
 004CF88A    call       @IntfAddRef
 004CF88F    xor        eax,eax
 004CF891    push       ebp
 004CF892    push       4CF8B3
 004CF897    push       dword ptr fs:[eax]
 004CF89A    mov        dword ptr fs:[eax],esp
 004CF89D    xor        eax,eax
 004CF89F    pop        edx
 004CF8A0    pop        ecx
 004CF8A1    pop        ecx
 004CF8A2    mov        dword ptr fs:[eax],edx
 004CF8A5    push       4CF8BA
 004CF8AA    lea        eax,[ebp+8]
 004CF8AD    call       @IntfClear
 004CF8B2    ret
<004CF8B3    jmp        @HandleFinally
<004CF8B8    jmp        004CF8AA
 004CF8BA    pop        ebp
 004CF8BB    ret        0C
*}
end;

end.