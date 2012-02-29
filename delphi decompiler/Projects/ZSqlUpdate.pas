{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZSqlUpdate;

interface

uses
  Classes, Windows, Graphics, ZAbstractDataset, ZSqlStrings, DB;

type
  TZBeforeSQLStatementEvent = procedure(const Sender:TObject; StatementIndex:Integer; out  Execute:Boolean) of object;
  TZAfterSQLStatementEvent = procedure(const Sender:TObject; StatementIndex:Integer) of object;
  TZAfterInsertSQLStatementEvent = procedure(const Sender:TObject; StatementIndex:Integer; out  UpdateAutoIncFields:Boolean) of object;
  TZUpdateSQL = class(TComponent)
  public
    f30:TZAbstractDataset;//f30
    f34:TZSQLStrings;//f34
    f38:TZSQLStrings;//f38
    f3C:TZSQLStrings;//f3C
    f40:TZSQLStrings;//f40
    ParamCheck:Boolean;//f44
    Params:TParams;//f48
    MultiStatements:Boolean;//f4C
    BeforeDeleteSQL:TNotifyEvent;//f50
    BeforeInsertSQL:TNotifyEvent;//f58
    BeforeModifySQL:TNotifyEvent;//f60
    AfterDeleteSQL:TNotifyEvent;//f68
    AfterInsertSQL:TNotifyEvent;//f70
    AfterModifySQL:TNotifyEvent;//f78
    UseSequenceFieldForRefreshSQL:Boolean;//f80
    BeforeDeleteSQLStatement:TZBeforeSQLStatementEvent;//f88
    AfterDeleteSQLStatement:TZAfterSQLStatementEvent;//f90
    BeforeInsertSQLStatement:TZBeforeSQLStatementEvent;//f98
    AfterInsertSQLStatement:TZAfterInsertSQLStatementEvent;//fA0
    BeforeModifySQLStatement:TZBeforeSQLStatementEvent;//fA8
    AfterModifySQLStatement:TZAfterSQLStatementEvent;//fB0
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    constructor Create(AOwner:TComponent); virtual;
  end;

implementation

{$R *.DFM}

//0056C9A8
constructor TZUpdateSQL.Create(AOwner:TComponent);
begin
{*
 0056C9A8    push       ebp
 0056C9A9    mov        ebp,esp
 0056C9AB    push       ecx
 0056C9AC    push       ebx
 0056C9AD    push       esi
 0056C9AE    test       dl,dl
>0056C9B0    je         0056C9BA
 0056C9B2    add        esp,0FFFFFFF0
 0056C9B5    call       @ClassCreate
 0056C9BA    mov        byte ptr [ebp-1],dl
 0056C9BD    mov        ebx,eax
 0056C9BF    xor        edx,edx
 0056C9C1    mov        eax,ebx
 0056C9C3    call       TComponent.Create
 0056C9C8    mov        dl,1
 0056C9CA    mov        eax,[0056FEA4]; TZSQLStrings
 0056C9CF    call       TZSQLStrings.Create; TZSQLStrings.Create
 0056C9D4    mov        esi,eax
 0056C9D6    mov        dword ptr [ebx+34],esi; TZUpdateSQL.?f34:TZSQLStrings
 0056C9D9    mov        dword ptr [esi+24],ebx; TZSQLStrings.?f24:TZUpdateSQL
 0056C9DC    mov        dword ptr [esi+20],56CCAC; TZSQLStrings.FOnChange:TNotifyEvent sub_0056CCAC
 0056C9E3    mov        dl,1
 0056C9E5    mov        eax,[0056FEA4]; TZSQLStrings
 0056C9EA    call       TZSQLStrings.Create; TZSQLStrings.Create
 0056C9EF    mov        esi,eax
 0056C9F1    mov        dword ptr [ebx+38],esi; TZUpdateSQL.?f38:TZSQLStrings
 0056C9F4    mov        dword ptr [esi+24],ebx; TZSQLStrings.?f24:TZUpdateSQL
 0056C9F7    mov        dword ptr [esi+20],56CCAC; TZSQLStrings.FOnChange:TNotifyEvent sub_0056CCAC
 0056C9FE    mov        dl,1
 0056CA00    mov        eax,[0056FEA4]; TZSQLStrings
 0056CA05    call       TZSQLStrings.Create; TZSQLStrings.Create
 0056CA0A    mov        esi,eax
 0056CA0C    mov        dword ptr [ebx+3C],esi; TZUpdateSQL.?f3C:TZSQLStrings
 0056CA0F    mov        dword ptr [esi+24],ebx; TZSQLStrings.?f24:TZUpdateSQL
 0056CA12    mov        dword ptr [esi+20],56CCAC; TZSQLStrings.FOnChange:TNotifyEvent sub_0056CCAC
 0056CA19    mov        dl,1
 0056CA1B    mov        eax,[0056FEA4]; TZSQLStrings
 0056CA20    call       TZSQLStrings.Create; TZSQLStrings.Create
 0056CA25    mov        esi,eax
 0056CA27    mov        dword ptr [ebx+40],esi; TZUpdateSQL.?f40:TZSQLStrings
 0056CA2A    mov        dword ptr [esi+24],ebx; TZSQLStrings.?f24:TZUpdateSQL
 0056CA2D    mov        dword ptr [esi+20],56CCAC; TZSQLStrings.FOnChange:TNotifyEvent sub_0056CCAC
 0056CA34    mov        ecx,ebx
 0056CA36    mov        dl,1
 0056CA38    mov        eax,[00499BA8]; TParams
 0056CA3D    call       TParams.Create; TParams.Create
 0056CA42    mov        dword ptr [ebx+48],eax; TZUpdateSQL.Params:TParams
 0056CA45    mov        byte ptr [ebx+44],1; TZUpdateSQL.ParamCheck:Boolean
 0056CA49    mov        byte ptr [ebx+4C],1; TZUpdateSQL.MultiStatements:Boolean
 0056CA4D    mov        eax,ebx
 0056CA4F    cmp        byte ptr [ebp-1],0
>0056CA53    je         0056CA64
 0056CA55    call       @AfterConstruction
 0056CA5A    pop        dword ptr fs:[0]
 0056CA61    add        esp,0C
 0056CA64    mov        eax,ebx
 0056CA66    pop        esi
 0056CA67    pop        ebx
 0056CA68    pop        ecx
 0056CA69    pop        ebp
 0056CA6A    ret
*}
end;

//0056CA6C
destructor TZUpdateSQL.Destroy;
begin
{*
 0056CA6C    push       ebp
 0056CA6D    mov        ebp,esp
 0056CA6F    push       ebx
 0056CA70    push       esi
 0056CA71    call       @BeforeDestruction
 0056CA76    mov        ebx,edx
 0056CA78    mov        esi,eax
 0056CA7A    mov        eax,dword ptr [esi+48]; TZUpdateSQL.Params:TParams
 0056CA7D    call       TObject.Free
 0056CA82    mov        eax,dword ptr [esi+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CA85    call       TObject.Free
 0056CA8A    mov        eax,dword ptr [esi+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CA8D    call       TObject.Free
 0056CA92    mov        eax,dword ptr [esi+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CA95    call       TObject.Free
 0056CA9A    mov        eax,dword ptr [esi+40]; TZUpdateSQL.?f40:TZSQLStrings
 0056CA9D    call       TObject.Free
 0056CAA2    mov        edx,ebx
 0056CAA4    and        dl,0FC
 0056CAA7    mov        eax,esi
 0056CAA9    call       TComponent.Destroy
 0056CAAE    test       bl,bl
>0056CAB0    jle        0056CAB9
 0056CAB2    mov        eax,esi
 0056CAB4    call       @ClassDestroy
 0056CAB9    pop        esi
 0056CABA    pop        ebx
 0056CABB    pop        ebp
 0056CABC    ret
*}
end;

//0056CAC0
//procedure sub_0056CAC0(?:TZUpdateSQL; ?:TZAbstractDataset);
//begin
{*
 0056CAC0    push       ebp
 0056CAC1    mov        ebp,esp
 0056CAC3    push       ebx
 0056CAC4    push       esi
 0056CAC5    mov        esi,edx
 0056CAC7    mov        ebx,eax
 0056CAC9    mov        dword ptr [ebx+30],esi; TZUpdateSQL.?f30:TZAbstractDataset
 0056CACC    mov        edx,esi
 0056CACE    mov        eax,dword ptr [ebx+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CAD1    call       00570280
 0056CAD6    mov        edx,esi
 0056CAD8    mov        eax,dword ptr [ebx+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CADB    call       00570280
 0056CAE0    mov        edx,esi
 0056CAE2    mov        eax,dword ptr [ebx+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CAE5    call       00570280
 0056CAEA    pop        esi
 0056CAEB    pop        ebx
 0056CAEC    pop        ebp
 0056CAED    ret
*}
//end;

//0056CAF0
//function TZUpdateSQL.GetRefreshSQL(Self:TZUpdateSQL):?;
//begin
{*
 0056CAF0    mov        eax,dword ptr [eax+40]; TZUpdateSQL.?f40:TZSQLStrings
 0056CAF3    ret
*}
//end;

//0056CAF4
//procedure TZUpdateSQL.SetParamCheck(Self:TZUpdateSQL; ?:?);
//begin
{*
 0056CAF4    push       ebp
 0056CAF5    mov        ebp,esp
 0056CAF7    push       ebx
 0056CAF8    push       esi
 0056CAF9    mov        ebx,edx
 0056CAFB    mov        esi,eax
 0056CAFD    cmp        bl,byte ptr [esi+44]; TZUpdateSQL.ParamCheck:Boolean
>0056CB00    je         0056CB2A
 0056CB02    mov        byte ptr [esi+44],bl; TZUpdateSQL.ParamCheck:Boolean
 0056CB05    mov        edx,ebx
 0056CB07    mov        eax,dword ptr [esi+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CB0A    call       00570258
 0056CB0F    mov        edx,ebx
 0056CB11    mov        eax,dword ptr [esi+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CB14    call       00570258
 0056CB19    mov        edx,ebx
 0056CB1B    mov        eax,dword ptr [esi+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CB1E    call       00570258
 0056CB23    mov        eax,esi
 0056CB25    call       0056CD58
 0056CB2A    pop        esi
 0056CB2B    pop        ebx
 0056CB2C    pop        ebp
 0056CB2D    ret
*}
//end;

//0056CB30
//procedure TZUpdateSQL.SetMultiStatements(Self:TZUpdateSQL; ?:?);
//begin
{*
 0056CB30    push       ebp
 0056CB31    mov        ebp,esp
 0056CB33    push       ebx
 0056CB34    push       esi
 0056CB35    mov        ebx,edx
 0056CB37    mov        esi,eax
 0056CB39    cmp        bl,byte ptr [esi+4C]; TZUpdateSQL.MultiStatements:Boolean
>0056CB3C    je         0056CB66
 0056CB3E    mov        byte ptr [esi+4C],bl; TZUpdateSQL.MultiStatements:Boolean
 0056CB41    mov        edx,ebx
 0056CB43    mov        eax,dword ptr [esi+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CB46    call       0057026C
 0056CB4B    mov        edx,ebx
 0056CB4D    mov        eax,dword ptr [esi+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CB50    call       0057026C
 0056CB55    mov        edx,ebx
 0056CB57    mov        eax,dword ptr [esi+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CB5A    call       0057026C
 0056CB5F    mov        eax,esi
 0056CB61    call       0056CD58
 0056CB66    pop        esi
 0056CB67    pop        ebx
 0056CB68    pop        ebp
 0056CB69    ret
*}
//end;

//0056CB6C
procedure TZUpdateSQL.SetParams(Self:TZUpdateSQL);
begin
{*
 0056CB6C    push       ebp
 0056CB6D    mov        ebp,esp
 0056CB6F    mov        eax,dword ptr [eax+48]; TZUpdateSQL.Params:TParams
 0056CB72    call       TParams.AssignValues
 0056CB77    pop        ebp
 0056CB78    ret
*}
end;

//0056CB7C
procedure TZUpdateSQL.SetRefreshSQL(Self:TZUpdateSQL);
begin
{*
 0056CB7C    push       ebp
 0056CB7D    mov        ebp,esp
 0056CB7F    push       esi
 0056CB80    mov        esi,eax
 0056CB82    mov        eax,dword ptr [esi+40]; TZUpdateSQL.?f40:TZSQLStrings
 0056CB85    mov        ecx,dword ptr [eax]
 0056CB87    call       dword ptr [ecx+8]; TStrings.Assign
 0056CB8A    pop        esi
 0056CB8B    pop        ebp
 0056CB8C    ret
*}
end;

//0056CB90
//procedure TZUpdateSQL.SetUseSequenceFieldForRefreshSQL(Self:TZUpdateSQL; ?:?);
//begin
{*
 0056CB90    mov        byte ptr [eax+80],dl; TZUpdateSQL.UseSequenceFieldForRefreshSQL:Boolean
 0056CB96    ret
*}
//end;

//0056CB98
//function sub_0056CB98(?:?):Boolean;
//begin
{*
 0056CB98    push       ebp
 0056CB99    mov        ebp,esp
 0056CB9B    push       ebx
 0056CB9C    mov        eax,dword ptr [ebp+8]
 0056CB9F    mov        eax,dword ptr [eax-4]
 0056CBA2    mov        ebx,dword ptr [eax+20]
 0056CBA5    test       ebx,ebx
>0056CBA7    je         0056CBC2
 0056CBA9    mov        eax,dword ptr [ebp+8]
 0056CBAC    mov        edx,dword ptr [ebx+48]
 0056CBAF    mov        eax,dword ptr [ebp+8]
 0056CBB2    mov        eax,dword ptr [eax-8]
 0056CBB5    mov        eax,dword ptr [eax+48]
 0056CBB8    call       TParams.IsEqual
 0056CBBD    xor        al,1
 0056CBBF    pop        ebx
 0056CBC0    pop        ebp
 0056CBC1    ret
 0056CBC2    mov        eax,dword ptr [ebp+8]
 0056CBC5    mov        eax,dword ptr [eax-8]
 0056CBC8    mov        eax,dword ptr [eax+48]
 0056CBCB    call       TCollection.GetCount
 0056CBD0    test       eax,eax
 0056CBD2    setg       al
 0056CBD5    pop        ebx
 0056CBD6    pop        ebp
 0056CBD7    ret
*}
//end;

//0056CBD8
procedure TZUpdateSQL.DefineProperties(Filer:TFiler);
begin
{*
 0056CBD8    push       ebp
 0056CBD9    mov        ebp,esp
 0056CBDB    add        esp,0FFFFFFF8
 0056CBDE    push       ebx
 0056CBDF    mov        dword ptr [ebp-4],edx
 0056CBE2    mov        dword ptr [ebp-8],eax
 0056CBE5    mov        edx,dword ptr [ebp-4]
 0056CBE8    mov        eax,dword ptr [ebp-8]
 0056CBEB    call       TComponent.DefineProperties
 0056CBF0    mov        eax,dword ptr [ebp-8]
 0056CBF3    push       eax
 0056CBF4    push       56CC34; sub_0056CC34
 0056CBF9    mov        eax,dword ptr [ebp-8]
 0056CBFC    push       eax
 0056CBFD    push       56CC54; sub_0056CC54
 0056CC02    push       ebp
 0056CC03    call       0056CB98
 0056CC08    pop        ecx
 0056CC09    mov        ecx,eax
 0056CC0B    mov        edx,56CC28; 'ParamData'
 0056CC10    mov        eax,dword ptr [ebp-4]
 0056CC13    mov        ebx,dword ptr [eax]
 0056CC15    call       dword ptr [ebx+4]; TFiler.DefineProperty
 0056CC18    pop        ebx
 0056CC19    pop        ecx
 0056CC1A    pop        ecx
 0056CC1B    pop        ebp
 0056CC1C    ret
*}
end;

//0056CC34
//procedure sub_0056CC34(?:?; ?:?);
//begin
{*
 0056CC34    push       ebp
 0056CC35    mov        ebp,esp
 0056CC37    push       ebx
 0056CC38    push       esi
 0056CC39    mov        esi,edx
 0056CC3B    mov        ebx,eax
 0056CC3D    mov        eax,esi
 0056CC3F    call       TReader.ReadValue
 0056CC44    mov        edx,dword ptr [ebx+48]
 0056CC47    mov        eax,esi
 0056CC49    call       TReader.ReadCollection
 0056CC4E    pop        esi
 0056CC4F    pop        ebx
 0056CC50    pop        ebp
 0056CC51    ret
*}
//end;

//0056CC54
//procedure sub_0056CC54(?:?; ?:?);
//begin
{*
 0056CC54    push       ebp
 0056CC55    mov        ebp,esp
 0056CC57    mov        eax,dword ptr [eax+48]
 0056CC5A    xchg       eax,edx
 0056CC5B    call       TWriter.WriteCollection
 0056CC60    pop        ebp
 0056CC61    ret
*}
//end;

//0056CC64
//function TZUpdateSQL.GetDeleteSQL(Self:TZUpdateSQL):?;
//begin
{*
 0056CC64    mov        eax,dword ptr [eax+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CC67    ret
*}
//end;

//0056CC68
procedure TZUpdateSQL.SetDeleteSQL(Self:TZUpdateSQL);
begin
{*
 0056CC68    push       ebp
 0056CC69    mov        ebp,esp
 0056CC6B    push       esi
 0056CC6C    mov        esi,eax
 0056CC6E    mov        eax,dword ptr [esi+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CC71    mov        ecx,dword ptr [eax]
 0056CC73    call       dword ptr [ecx+8]; TStrings.Assign
 0056CC76    pop        esi
 0056CC77    pop        ebp
 0056CC78    ret
*}
end;

//0056CC7C
//function TZUpdateSQL.GetInsertSQL(Self:TZUpdateSQL):?;
//begin
{*
 0056CC7C    mov        eax,dword ptr [eax+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CC7F    ret
*}
//end;

//0056CC80
procedure TZUpdateSQL.SetInsertSQL(Self:TZUpdateSQL);
begin
{*
 0056CC80    push       ebp
 0056CC81    mov        ebp,esp
 0056CC83    push       esi
 0056CC84    mov        esi,eax
 0056CC86    mov        eax,dword ptr [esi+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CC89    mov        ecx,dword ptr [eax]
 0056CC8B    call       dword ptr [ecx+8]; TStrings.Assign
 0056CC8E    pop        esi
 0056CC8F    pop        ebp
 0056CC90    ret
*}
end;

//0056CC94
//function TZUpdateSQL.GetModifySQL(Self:TZUpdateSQL):?;
//begin
{*
 0056CC94    mov        eax,dword ptr [eax+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CC97    ret
*}
//end;

//0056CC98
procedure TZUpdateSQL.SetModifySQL(Self:TZUpdateSQL);
begin
{*
 0056CC98    push       ebp
 0056CC99    mov        ebp,esp
 0056CC9B    push       esi
 0056CC9C    mov        esi,eax
 0056CC9E    mov        eax,dword ptr [esi+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CCA1    mov        ecx,dword ptr [eax]
 0056CCA3    call       dword ptr [ecx+8]; TStrings.Assign
 0056CCA6    pop        esi
 0056CCA7    pop        ebp
 0056CCA8    ret
*}
end;

//0056CCAC
procedure sub_0056CCAC;
begin
{*
 0056CCAC    push       ebp
 0056CCAD    mov        ebp,esp
 0056CCAF    call       0056CD58
 0056CCB4    pop        ebp
 0056CCB5    ret
*}
end;

//0056CCB8
//procedure sub_0056CCB8(?:TZUpdateSQL; ?:TZSQLStrings);
//begin
{*
 0056CCB8    push       ebp
 0056CCB9    mov        ebp,esp
 0056CCBB    push       0
 0056CCBD    push       0
 0056CCBF    push       0
 0056CCC1    push       ebx
 0056CCC2    push       esi
 0056CCC3    push       edi
 0056CCC4    mov        dword ptr [ebp-4],edx
 0056CCC7    mov        edi,eax
 0056CCC9    xor        eax,eax
 0056CCCB    push       ebp
 0056CCCC    push       56CD49
 0056CCD1    push       dword ptr fs:[eax]
 0056CCD4    mov        dword ptr fs:[eax],esp
 0056CCD7    mov        eax,dword ptr [ebp-4]
 0056CCDA    call       00570208
 0056CCDF    mov        esi,eax
 0056CCE1    sub        esi,1
>0056CCE4    jno        0056CCEB
 0056CCE6    call       @IntOver
 0056CCEB    test       esi,esi
>0056CCED    jl         0056CD2E
 0056CCEF    inc        esi
 0056CCF0    xor        ebx,ebx
 0056CCF2    lea        ecx,[ebp-8]
 0056CCF5    mov        edx,ebx
 0056CCF7    mov        eax,dword ptr [ebp-4]
 0056CCFA    call       00570218
 0056CCFF    mov        edx,dword ptr [ebp-8]
 0056CD02    mov        eax,dword ptr [edi+48]; TZUpdateSQL.Params:TParams
 0056CD05    call       TParams.FindParam
 0056CD0A    test       eax,eax
>0056CD0C    jne        0056CD2A
 0056CD0E    push       0
 0056CD10    lea        ecx,[ebp-0C]
 0056CD13    mov        edx,ebx
 0056CD15    mov        eax,dword ptr [ebp-4]
 0056CD18    call       00570218
 0056CD1D    mov        ecx,dword ptr [ebp-0C]
 0056CD20    mov        eax,dword ptr [edi+48]; TZUpdateSQL.Params:TParams
 0056CD23    xor        edx,edx
 0056CD25    call       TParams.CreateParam
 0056CD2A    inc        ebx
 0056CD2B    dec        esi
<0056CD2C    jne        0056CCF2
 0056CD2E    xor        eax,eax
 0056CD30    pop        edx
 0056CD31    pop        ecx
 0056CD32    pop        ecx
 0056CD33    mov        dword ptr fs:[eax],edx
 0056CD36    push       56CD50
 0056CD3B    lea        eax,[ebp-0C]
 0056CD3E    mov        edx,2
 0056CD43    call       @LStrArrayClr
 0056CD48    ret
<0056CD49    jmp        @HandleFinally
<0056CD4E    jmp        0056CD3B
 0056CD50    pop        edi
 0056CD51    pop        esi
 0056CD52    pop        ebx
 0056CD53    mov        esp,ebp
 0056CD55    pop        ebp
 0056CD56    ret
*}
//end;

//0056CD58
//procedure sub_0056CD58(?:TZUpdateSQL);
//begin
{*
 0056CD58    push       ebp
 0056CD59    mov        ebp,esp
 0056CD5B    push       ecx
 0056CD5C    push       ebx
 0056CD5D    mov        ebx,eax
 0056CD5F    mov        dl,1
 0056CD61    mov        eax,[00499BA8]; TParams
 0056CD66    call       TParams.Create; TParams.Create
 0056CD6B    mov        dword ptr [ebp-4],eax
 0056CD6E    mov        edx,dword ptr [ebx+48]; TZUpdateSQL.Params:TParams
 0056CD71    mov        eax,dword ptr [ebp-4]
 0056CD74    mov        ecx,dword ptr [eax]
 0056CD76    call       dword ptr [ecx+8]; TCollection.Assign
 0056CD79    mov        eax,dword ptr [ebx+48]; TZUpdateSQL.Params:TParams
 0056CD7C    call       TCollection.Clear
 0056CD81    xor        eax,eax
 0056CD83    push       ebp
 0056CD84    push       56CDD8
 0056CD89    push       dword ptr fs:[eax]
 0056CD8C    mov        dword ptr fs:[eax],esp
 0056CD8F    mov        edx,dword ptr [ebx+3C]; TZUpdateSQL.?f3C:TZSQLStrings
 0056CD92    mov        eax,ebx
 0056CD94    call       0056CCB8
 0056CD99    mov        edx,dword ptr [ebx+38]; TZUpdateSQL.?f38:TZSQLStrings
 0056CD9C    mov        eax,ebx
 0056CD9E    call       0056CCB8
 0056CDA3    mov        edx,dword ptr [ebx+34]; TZUpdateSQL.?f34:TZSQLStrings
 0056CDA6    mov        eax,ebx
 0056CDA8    call       0056CCB8
 0056CDAD    mov        edx,dword ptr [ebx+40]; TZUpdateSQL.?f40:TZSQLStrings
 0056CDB0    mov        eax,ebx
 0056CDB2    call       0056CCB8
 0056CDB7    mov        eax,dword ptr [ebx+48]; TZUpdateSQL.Params:TParams
 0056CDBA    mov        edx,dword ptr [ebp-4]
 0056CDBD    call       TParams.AssignValues
 0056CDC2    xor        eax,eax
 0056CDC4    pop        edx
 0056CDC5    pop        ecx
 0056CDC6    pop        ecx
 0056CDC7    mov        dword ptr fs:[eax],edx
 0056CDCA    push       56CDDF
 0056CDCF    mov        eax,dword ptr [ebp-4]
 0056CDD2    call       TObject.Free
 0056CDD7    ret
<0056CDD8    jmp        @HandleFinally
<0056CDDD    jmp        0056CDCF
 0056CDDF    pop        ebx
 0056CDE0    pop        ecx
 0056CDE1    pop        ebp
 0056CDE2    ret
*}
//end;

end.