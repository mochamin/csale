{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZAbstractRODataset;

interface

uses
  Classes, Windows, Graphics, DB, ZDbcCache, _Unit124, Types, ZExpression, ZCompatibility, ZSqlStrings, ZConnection, ZDbcIntfs, SysUtils;

type
  TSortType = (stAscending, stDescending, stIgnored);
  TZDatasetOption = (doOemTranslate, doCalcDefaults, doAlwaysDetailResync, doSmartOpen);
  TZDatasetOptions = set of TZDatasetOption;
  EZDatabaseError = class(EDatabaseError)
  public
    fC:dword;//fC
    f10:String;//f10
    //constructor Create(?:EZDatabaseError; _Dv__:Boolean);
    //constructor Create(?:EZDatabaseError; _Dv__:Boolean);
  end;
  TZDataLink = class(TDataLink)
  public
    f1C:dword;//f1C
    procedure ActiveChanged; virtual;
    //procedure RecordChanged(?:?; Field:TField); virtual;
    //constructor Create(?:TZDataLink; _Dv__:Boolean);
  end;
  TZAbstractRODataset = class(TDataSet)
  public
    f178:Integer;//f178
    f17C:TZRowAccessor;//f17C
    f180:dword;//f180
    f184:dword;//f184
    f188:TZSortedList;//f188
    f18C:dword;//f18C
    f190:TIntegerDynArray;//f190
    f194:dword;//f194
    f198:byte;//f198
    f19C:IZExpression;//f19C
    f1A0:TZExecutionStack;//f1A0
    f1A4:TObjectDynArray;//f1A4
    f1A8:byte;//f1A8
    f1A9:byte;//f1A9
    f1AC:dword;//f1AC
    f1B0:TZSQLStrings;//f1B0
    f1B4:TParams;//f1B4
    f1B8:byte;//f1B8
    f1B9:byte;//f1B9
    f1BC:TStringList;//f1BC
    Connection:TZConnection;//f1C0
    f1C4:IZPreparedStatement;//f1C4
    f1C8:IZResultSet;//f1C8
    f1CC:byte;//f1CC
    f1D0:TZDataLink;//f1D0
    f1D4:TMasterDataLink;//f1D4
    f1D8:String;//f1D8
    f1DC:String;//f1DC
    f1E0:TList;//f1E0
    SortType:TSortType;//f1E4
    f1E8:String;//f1E8
    f1EC:TObjectDynArray;//f1EC
    f1F0:TIntegerDynArray;//f1F0
    f1F4:TBooleanDynArray;//f1F4
    //f1F8:?;//f1F8
    f1FC:dword;//f1FC
    f200:dword;//f200
    destructor Destroy; virtual;
    procedure DefineProperties(Filer:TFiler); virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //procedure PSEndTransaction(?:?; Commit:Boolean); virtual;
    procedure PSExecute; virtual;
    //function PSExecuteStatement(ASQL:AnsiString; AParams:TParams; ResultSet:Pointer):?; virtual;
    //procedure PSGetKeyFields(?:?); virtual;
    //function PSGetParams:?; virtual;
    //procedure PSGetQuoteChar(?:?); virtual;
    //procedure PSGetTableName(?:?); virtual;
    procedure PSGetUpdateException(E:Exception; Prev:EUpdateError); virtual;
    //function PSInTransaction:?; virtual;
    //function PSIsSQLBased:?; virtual;
    //function PSIsSQLSupported:?; virtual;
    procedure PSReset; virtual;
    //procedure PSSetParams(?:?; AParams:TParams); virtual;
    //procedure PSSetCommandText(?:?; CommandText:AnsiString); virtual;
    procedure PSStartTransaction; virtual;
    //function PSUpdateRecord(UpdateKind:TUpdateKind; Delta:TDataSet):?; virtual;
    procedure CheckFieldCompatibility(Field:TField; FieldDef:TFieldDef); virtual;
    //procedure ClearCalcFields(?:?; Buffer:PChar); virtual;
    procedure CloseBlob(Field:TField); virtual;
    procedure DoOnNewRecord; virtual;
    //function FindRecord(Restart:Boolean; GoForward:Boolean):?; virtual;
    //function GetCanModify:?; virtual;
    //function GetDataSource:?; virtual;
    //function GetRecordCount:?; virtual;
    //function GetRecNo:?; virtual;
    procedure InternalRefresh; virtual;
    //procedure SetFiltered(?:?); virtual;
    //procedure SetFilter(?:?); virtual;
    //procedure SetRecNo(?:?; Value:Integer); virtual;
    procedure AllocRecordBuffer; virtual;
    //procedure FreeRecordBuffer(?:?; var Buffer:PChar); virtual;
    //procedure GetBookmarkData(?:?; ?:?; Buffer:PChar; Data:Pointer); virtual;
    //function GetBookmarkFlag(Buffer:PChar):?; virtual;
    procedure GetRecordSize; virtual;
    procedure InternalAddRecord(Buffer:Pointer; Append:Boolean); virtual;
    procedure InternalDelete; virtual;
    procedure InternalFirst; virtual;
    //procedure InternalGotoBookmark(?:?; Bookmark:Pointer); virtual;
    procedure InternalInitRecord(Buffer:PChar); virtual;
    procedure InternalLast; virtual;
    procedure InternalPost; virtual;
    procedure InternalSetToRecord(Buffer:PChar); virtual;
    //procedure SetBookmarkFlag(?:?; ?:?; Buffer:PChar; Value:TBookmarkFlag); virtual;
    //procedure SetBookmarkData(?:?; ?:?; Buffer:PChar; Data:Pointer); virtual;
    //procedure SetFieldData(?:?; ?:?; Field:TField; Buffer:Pointer); virtual;
    procedure SetFieldData(Field:TField; Buffer:Pointer; NativeFormat:Boolean); virtual;
    //function sub_0057232C(?:?; ?:?; ?:?):?; virtual;
    procedure sub_00573770; virtual;
    procedure sub_005738A8(); virtual;
    procedure sub_00572F14; virtual;
    procedure sub_005734C0; virtual;
    function sub_00572CE4:Boolean; virtual;
    //function BookmarkValid(Bookmark:Pointer):?; virtual;
    //function CompareBookmarks(Bookmark1:Pointer; Bookmark2:Pointer):?; virtual;
    //function CreateBlobStream(Field:TField; Mode:TBlobStreamMode):?; virtual;
    //function GetFieldData(Field:TField; Buffer:Pointer):?; virtual;
    procedure GetFieldData(Field:TField; Buffer:Pointer; NativeFormat:Boolean); virtual;
    procedure IsSequenced; virtual;
    //function Locate(KeyFields:AnsiString; var KeyValues:Variant; Options:TLocateOptions):?; virtual;
    //procedure Lookup(KeyFields:AnsiString; var KeyValues:Variant; ResultFields:AnsiString; ?:?); virtual;
    //function Translate(Src:PChar; Dest:PChar; ToOem:Boolean):?; virtual;
    //function UpdateStatus:?; virtual;
    procedure sub_00571750; virtual;
    //procedure sub_00571E50(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005731E0(?:?; ?:?; ?:?); virtual;
    //procedure sub_005732BC(?:?; ?:?; ?:?); virtual;
    procedure sub_00573F3C; virtual;
    procedure sub_00572D30; virtual;
    procedure sub_00572D6C; virtual;
  end;

implementation

{$R *.DFM}

//00570FB8
//constructor EZDatabaseError.Create(?:EZDatabaseError; _Dv__:Boolean);
//begin
{*
 00570FB8    push       ebp
 00570FB9    mov        ebp,esp
 00570FBB    push       ebx
 00570FBC    push       esi
 00570FBD    test       dl,dl
>00570FBF    je         00570FC9
 00570FC1    add        esp,0FFFFFFF0
 00570FC4    call       @ClassCreate
 00570FC9    mov        ebx,edx
 00570FCB    mov        esi,eax
 00570FCD    xor        edx,edx
 00570FCF    mov        eax,esi
 00570FD1    call       Exception.Create
 00570FD6    mov        eax,esi
 00570FD8    test       bl,bl
>00570FDA    je         00570FEB
 00570FDC    call       @AfterConstruction
 00570FE1    pop        dword ptr fs:[0]
 00570FE8    add        esp,0C
 00570FEB    mov        eax,esi
 00570FED    pop        esi
 00570FEE    pop        ebx
 00570FEF    pop        ebp
 00570FF0    ret
*}
//end;

//00570FF4
//constructor EZDatabaseError.Create(?:EZDatabaseError; _Dv__:Boolean);
//begin
{*
 00570FF4    push       ebp
 00570FF5    mov        ebp,esp
 00570FF7    push       ebx
 00570FF8    push       esi
 00570FF9    push       edi
 00570FFA    test       dl,dl
>00570FFC    je         00571006
 00570FFE    add        esp,0FFFFFFF0
 00571001    call       @ClassCreate
 00571006    mov        esi,ecx
 00571008    mov        ebx,edx
 0057100A    mov        edi,eax
 0057100C    mov        ecx,dword ptr [esi+4]
 0057100F    xor        edx,edx
 00571011    mov        eax,edi
 00571013    call       Exception.Create
 00571018    mov        eax,dword ptr [esi+0C]
 0057101B    mov        dword ptr [edi+0C],eax; EZDatabaseError.?fC:dword
 0057101E    mov        edx,dword ptr [esi+10]
 00571021    mov        eax,edi
 00571023    call       00571044
 00571028    mov        eax,edi
 0057102A    test       bl,bl
>0057102C    je         0057103D
 0057102E    call       @AfterConstruction
 00571033    pop        dword ptr fs:[0]
 0057103A    add        esp,0C
 0057103D    mov        eax,edi
 0057103F    pop        edi
 00571040    pop        esi
 00571041    pop        ebx
 00571042    pop        ebp
 00571043    ret
*}
//end;

//00571044
//procedure sub_00571044(?:EZDatabaseError; ?:?);
//begin
{*
 00571044    push       ebp
 00571045    mov        ebp,esp
 00571047    push       ebx
 00571048    push       esi
 00571049    mov        esi,edx
 0057104B    mov        ebx,eax
 0057104D    lea        eax,[ebx+10]; EZDatabaseError.?f10:String
 00571050    mov        edx,esi
 00571052    call       @LStrAsg
 00571057    pop        esi
 00571058    pop        ebx
 00571059    pop        ebp
 0057105A    ret
*}
//end;

//0057105C
//constructor TZDataLink.Create(?:TZDataLink; _Dv__:Boolean);
//begin
{*
 0057105C    push       ebp
 0057105D    mov        ebp,esp
 0057105F    push       ebx
 00571060    push       esi
 00571061    push       edi
 00571062    test       dl,dl
>00571064    je         0057106E
 00571066    add        esp,0FFFFFFF0
 00571069    call       @ClassCreate
 0057106E    mov        esi,ecx
 00571070    mov        ebx,edx
 00571072    mov        edi,eax
 00571074    xor        edx,edx
 00571076    mov        eax,edi
 00571078    call       TDataLink.Create
 0057107D    mov        dword ptr [edi+1C],esi; TZDataLink.?f1C:dword
 00571080    mov        eax,edi
 00571082    test       bl,bl
>00571084    je         00571095
 00571086    call       @AfterConstruction
 0057108B    pop        dword ptr fs:[0]
 00571092    add        esp,0C
 00571095    mov        eax,edi
 00571097    pop        edi
 00571098    pop        esi
 00571099    pop        ebx
 0057109A    pop        ebp
 0057109B    ret
*}
//end;

//0057109C
procedure TZDataLink.ActiveChanged;
begin
{*
 0057109C    push       ebp
 0057109D    mov        ebp,esp
 0057109F    push       ebx
 005710A0    mov        ebx,eax
 005710A2    mov        eax,dword ptr [ebx+1C]; TZDataLink.?f1C:dword
 005710A5    call       TDataSet.GetActive
 005710AA    test       al,al
>005710AC    je         005710B9
 005710AE    mov        eax,dword ptr [ebx+1C]; TZDataLink.?f1C:dword
 005710B1    mov        edx,dword ptr [eax]
 005710B3    call       dword ptr [edx+26C]
 005710B9    pop        ebx
 005710BA    pop        ebp
 005710BB    ret
*}
end;

//005710BC
//procedure TZDataLink.RecordChanged(?:?; Field:TField);
//begin
{*
 005710BC    push       ebp
 005710BD    mov        ebp,esp
 005710BF    push       ebx
 005710C0    push       esi
 005710C1    mov        esi,edx
 005710C3    mov        ebx,eax
 005710C5    test       esi,esi
>005710C7    jne        005710E0
 005710C9    mov        eax,dword ptr [ebx+1C]; TZDataLink.?f1C:dword
 005710CC    call       TDataSet.GetActive
 005710D1    test       al,al
>005710D3    je         005710E0
 005710D5    mov        eax,dword ptr [ebx+1C]; TZDataLink.?f1C:dword
 005710D8    mov        edx,dword ptr [eax]
 005710DA    call       dword ptr [edx+26C]
 005710E0    pop        esi
 005710E1    pop        ebx
 005710E2    pop        ebp
 005710E3    ret
*}
//end;

//005710E4
constructor TZAbstractRODataset.Create(AOwner:TComponent);
begin
{*
 005710E4    push       ebp
 005710E5    mov        ebp,esp
 005710E7    push       ecx
 005710E8    push       ebx
 005710E9    push       esi
 005710EA    test       dl,dl
>005710EC    je         005710F6
 005710EE    add        esp,0FFFFFFF0
 005710F1    call       @ClassCreate
 005710F6    mov        byte ptr [ebp-1],dl
 005710F9    mov        ebx,eax
 005710FB    xor        edx,edx
 005710FD    mov        eax,ebx
 005710FF    call       TDataSet.Create
 00571104    mov        dl,1
 00571106    mov        eax,[0056FEA4]; TZSQLStrings
 0057110B    call       TZSQLStrings.Create; TZSQLStrings.Create
 00571110    mov        esi,eax
 00571112    mov        dword ptr [ebx+1B0],esi; TZAbstractRODataset.?f1B0:TZSQLStrings
 00571118    mov        eax,esi
 0057111A    mov        edx,ebx
 0057111C    call       00570280
 00571121    mov        eax,dword ptr [ebx+1B0]; TZAbstractRODataset.?f1B0:TZSQLStrings
 00571127    xor        edx,edx
 00571129    call       0057026C
 0057112E    mov        eax,dword ptr [ebx+1B0]; TZAbstractRODataset.?f1B0:TZSQLStrings
 00571134    mov        dword ptr [eax+24],ebx; TZSQLStrings.?f24:TZUpdateSQL
 00571137    mov        dword ptr [eax+20],5714CC; TZSQLStrings.FOnChange:TNotifyEvent sub_005714CC
 0057113E    mov        ecx,ebx
 00571140    mov        dl,1
 00571142    mov        eax,[00499BA8]; TParams
 00571147    call       TParams.Create; TParams.Create
 0057114C    mov        dword ptr [ebx+1B4],eax; TZAbstractRODataset.?f1B4:TParams
 00571152    mov        dl,1
 00571154    mov        eax,[004BEC2C]; TZSortedList
 00571159    call       TObject.Create; TZSortedList.Create
 0057115E    mov        dword ptr [ebx+188],eax; TZAbstractRODataset.?f188:TZSortedList
 00571164    mov        dword ptr [ebx+64],4; TZAbstractRODataset.FBookmarkSize:Integer
 0057116B    mov        al,[0057125C]; 0x7
 00571170    mov        byte ptr [ebx+1B8],al; TZAbstractRODataset.?f1B8:byte
 00571176    mov        byte ptr [ebx+1A9],0; TZAbstractRODataset.?f1A9:byte
 0057117D    xor        eax,eax
 0057117F    mov        dword ptr [ebx+1AC],eax; TZAbstractRODataset.?f1AC:dword
 00571185    mov        al,[00571260]; 0x2
 0057118A    mov        byte ptr [ebx+1B9],al; TZAbstractRODataset.?f1B9:byte
 00571190    mov        byte ptr [ebx+198],0; TZAbstractRODataset.?f198:byte
 00571197    mov        dl,1
 00571199    mov        eax,[0041C8E4]; TStringList
 0057119E    call       TObject.Create; TStringList.Create
 005711A3    mov        dword ptr [ebx+1BC],eax; TZAbstractRODataset.?f1BC:TStringList
 005711A9    mov        dl,1
 005711AB    mov        eax,[00567F28]; TZExpression
 005711B0    call       TZExpression.Create; TZExpression.Create
 005711B5    mov        edx,eax
 005711B7    test       edx,edx
>005711B9    je         005711BE
 005711BB    sub        edx,0FFFFFFDC
 005711BE    lea        eax,[ebx+19C]; TZAbstractRODataset.?f19C:IZExpression
 005711C4    call       @IntfCopy
 005711C9    mov        edx,dword ptr ds:[61BE9C]; ^gvar_0061EF6C:IInterface
 005711CF    mov        edx,dword ptr [edx]
 005711D1    mov        eax,dword ptr [ebx+19C]; TZAbstractRODataset.?f19C:IZExpression
 005711D7    mov        ecx,dword ptr [eax]
 005711D9    call       dword ptr [ecx+10]
 005711DC    mov        dl,1
 005711DE    mov        eax,[00567CE0]; TZExecutionStack
 005711E3    call       TZExecutionStack.Create; TZExecutionStack.Create
 005711E8    mov        dword ptr [ebx+1A0],eax; TZAbstractRODataset.?f1A0:TZExecutionStack
 005711EE    mov        ecx,ebx
 005711F0    mov        dl,1
 005711F2    mov        eax,[0057090C]; TZDataLink
 005711F7    call       TZDataLink.Create; TZDataLink.Create
 005711FC    mov        dword ptr [ebx+1D0],eax; TZAbstractRODataset.?f1D0:TZDataLink
 00571202    mov        ecx,ebx
 00571204    mov        dl,1
 00571206    mov        eax,[004994D4]; TMasterDataLink
 0057120B    call       TMasterDataLink.Create; TMasterDataLink.Create
 00571210    mov        esi,eax
 00571212    mov        dword ptr [ebx+1D4],esi; TZAbstractRODataset.?f1D4:TMasterDataLink
 00571218    mov        dword ptr [esi+2C],ebx; TMasterDataLink.?f2C:TZAbstractRODataset
 0057121B    mov        dword ptr [esi+28],573B88; TMasterDataLink.FOnMasterChange:TNotifyEvent sub_00573B88
 00571222    mov        dword ptr [esi+34],ebx; TMasterDataLink.?f34:TZAbstractRODataset
 00571225    mov        dword ptr [esi+30],573BD0; TMasterDataLink.FOnMasterDisable:TNotifyEvent sub_00573BD0
 0057122C    mov        dl,1
 0057122E    mov        eax,[0041C260]; TList
 00571233    call       TObject.Create; TList.Create
 00571238    mov        dword ptr [ebx+1E0],eax; TZAbstractRODataset.?f1E0:TList
 0057123E    mov        eax,ebx
 00571240    cmp        byte ptr [ebp-1],0
>00571244    je         00571255
 00571246    call       @AfterConstruction
 0057124B    pop        dword ptr fs:[0]
 00571252    add        esp,0C
 00571255    mov        eax,ebx
 00571257    pop        esi
 00571258    pop        ebx
 00571259    pop        ecx
 0057125A    pop        ebp
 0057125B    ret
*}
end;

//00571264
destructor TZAbstractRODataset.Destroy;
begin
{*
 00571264    push       ebp
 00571265    mov        ebp,esp
 00571267    add        esp,0FFFFFFF8
 0057126A    push       ebx
 0057126B    push       esi
 0057126C    push       edi
 0057126D    call       @BeforeDestruction
 00571272    mov        byte ptr [ebp-5],dl
 00571275    mov        dword ptr [ebp-4],eax
 00571278    mov        eax,dword ptr [ebp-4]
 0057127B    cmp        dword ptr [eax+1C0],0; TZAbstractRODataset.Connection:TZConnection
>00571282    je         005712B0
 00571284    xor        eax,eax
 00571286    push       ebp
 00571287    push       5712A6
 0057128C    push       dword ptr fs:[eax]
 0057128F    mov        dword ptr fs:[eax],esp
 00571292    xor        edx,edx
 00571294    mov        eax,dword ptr [ebp-4]
 00571297    call       TZAbstractRODataset.SetConnection
 0057129C    xor        eax,eax
 0057129E    pop        edx
 0057129F    pop        ecx
 005712A0    pop        ecx
 005712A1    mov        dword ptr fs:[eax],edx
>005712A4    jmp        005712B0
<005712A6    jmp        @HandleAnyException
 005712AB    call       @DoneExcept
 005712B0    mov        eax,dword ptr [ebp-4]
 005712B3    add        eax,1B0; TZAbstractRODataset.?f1B0:TZSQLStrings
 005712B8    call       FreeAndNil
 005712BD    mov        eax,dword ptr [ebp-4]
 005712C0    add        eax,1B4; TZAbstractRODataset.?f1B4:TParams
 005712C5    call       FreeAndNil
 005712CA    mov        eax,dword ptr [ebp-4]
 005712CD    add        eax,188; TZAbstractRODataset.?f188:TZSortedList
 005712D2    call       FreeAndNil
 005712D7    mov        eax,dword ptr [ebp-4]
 005712DA    add        eax,1BC; TZAbstractRODataset.?f1BC:TStringList
 005712DF    call       FreeAndNil
 005712E4    mov        eax,dword ptr [ebp-4]
 005712E7    add        eax,1A0; TZAbstractRODataset.?f1A0:TZExecutionStack
 005712EC    call       FreeAndNil
 005712F1    mov        eax,dword ptr [ebp-4]
 005712F4    add        eax,1D0; TZAbstractRODataset.?f1D0:TZDataLink
 005712F9    call       FreeAndNil
 005712FE    mov        eax,dword ptr [ebp-4]
 00571301    add        eax,1D4; TZAbstractRODataset.?f1D4:TMasterDataLink
 00571306    call       FreeAndNil
 0057130B    mov        eax,dword ptr [ebp-4]
 0057130E    add        eax,1E0; TZAbstractRODataset.?f1E0:TList
 00571313    call       FreeAndNil
 00571318    mov        dl,byte ptr [ebp-5]
 0057131B    and        dl,0FC
 0057131E    mov        eax,dword ptr [ebp-4]
 00571321    call       TDataSet.Destroy
 00571326    cmp        byte ptr [ebp-5],0
>0057132A    jle        00571334
 0057132C    mov        eax,dword ptr [ebp-4]
 0057132F    call       @ClassDestroy
 00571334    pop        edi
 00571335    pop        esi
 00571336    pop        ebx
 00571337    pop        ecx
 00571338    pop        ecx
 00571339    pop        ebp
 0057133A    ret
*}
end;

//0057133C
//procedure TZAbstractRODataset.SetConnection(Self:TZAbstractRODataset; ?:?);
//begin
{*
 0057133C    push       ebp
 0057133D    mov        ebp,esp
 0057133F    push       ebx
 00571340    push       esi
 00571341    mov        esi,edx
 00571343    mov        ebx,eax
 00571345    cmp        esi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
>0057134B    je         0057138E
 0057134D    mov        eax,ebx
 0057134F    call       TDataSet.GetActive
 00571354    test       al,al
>00571356    je         0057135F
 00571358    mov        eax,ebx
 0057135A    call       TDataSet.Close
 0057135F    lea        eax,[ebx+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 00571365    call       @IntfClear
 0057136A    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00571370    test       eax,eax
>00571372    je         0057137B
 00571374    mov        edx,ebx
 00571376    call       00577914
 0057137B    mov        eax,esi
 0057137D    mov        dword ptr [ebx+1C0],eax; TZAbstractRODataset.Connection:TZConnection
 00571383    test       eax,eax
>00571385    je         0057138E
 00571387    mov        edx,ebx
 00571389    call       00577904
 0057138E    pop        esi
 0057138F    pop        ebx
 00571390    pop        ebp
 00571391    ret
*}
//end;

//00571394
//function TZReadOnlyQuery.GetSQL(Self:TZAbstractRODataset):?;
//begin
{*
 00571394    mov        eax,dword ptr [eax+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 0057139A    ret
*}
//end;

//0057139C
procedure TZReadOnlyQuery.SetSQL(Self:TZReadOnlyQuery);
begin
{*
 0057139C    push       ebp
 0057139D    mov        ebp,esp
 0057139F    push       esi
 005713A0    mov        esi,eax
 005713A2    mov        eax,dword ptr [esi+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 005713A8    mov        ecx,dword ptr [eax]
 005713AA    call       dword ptr [ecx+8]; TStrings.Assign
 005713AD    pop        esi
 005713AE    pop        ebp
 005713AF    ret
*}
end;

//005713B0
//function TZReadOnlyQuery.GetParamCheck(Self:TZReadOnlyQuery):?;
//begin
{*
 005713B0    mov        eax,dword ptr [eax+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 005713B6    mov        al,byte ptr [eax+34]; TZSQLStrings.?f34:byte
 005713B9    ret
*}
//end;

//005713BC
procedure TZReadOnlyQuery.SetParamCheck(Self:TZReadOnlyQuery);
begin
{*
 005713BC    push       ebp
 005713BD    mov        ebp,esp
 005713BF    push       ebx
 005713C0    mov        ebx,eax
 005713C2    mov        eax,dword ptr [ebx+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 005713C8    call       00570258
 005713CD    mov        edx,ebx
 005713CF    mov        eax,ebx
 005713D1    call       005714CC
 005713D6    pop        ebx
 005713D7    pop        ebp
 005713D8    ret
*}
end;

//005713DC
procedure TZReadOnlyQuery.SetParams(Self:TZReadOnlyQuery);
begin
{*
 005713DC    push       ebp
 005713DD    mov        ebp,esp
 005713DF    mov        eax,dword ptr [eax+1B4]; TZReadOnlyQuery.?f1B4:TParams
 005713E5    call       TParams.AssignValues
 005713EA    pop        ebp
 005713EB    ret
*}
end;

//005713EC
//function sub_005713EC(?:?):Boolean;
//begin
{*
 005713EC    push       ebp
 005713ED    mov        ebp,esp
 005713EF    push       ebx
 005713F0    mov        eax,dword ptr [ebp+8]
 005713F3    mov        eax,dword ptr [eax-4]
 005713F6    mov        ebx,dword ptr [eax+20]
 005713F9    test       ebx,ebx
>005713FB    je         0057141C
 005713FD    mov        eax,dword ptr [ebp+8]
 00571400    mov        edx,dword ptr [ebx+1B4]
 00571406    mov        eax,dword ptr [ebp+8]
 00571409    mov        eax,dword ptr [eax-8]
 0057140C    mov        eax,dword ptr [eax+1B4]
 00571412    call       TParams.IsEqual
 00571417    xor        al,1
 00571419    pop        ebx
 0057141A    pop        ebp
 0057141B    ret
 0057141C    mov        eax,dword ptr [ebp+8]
 0057141F    mov        eax,dword ptr [eax-8]
 00571422    mov        eax,dword ptr [eax+1B4]
 00571428    call       TCollection.GetCount
 0057142D    test       eax,eax
 0057142F    setg       al
 00571432    pop        ebx
 00571433    pop        ebp
 00571434    ret
*}
//end;

//00571438
procedure TZAbstractRODataset.DefineProperties(Filer:TFiler);
begin
{*
 00571438    push       ebp
 00571439    mov        ebp,esp
 0057143B    add        esp,0FFFFFFF8
 0057143E    push       ebx
 0057143F    mov        dword ptr [ebp-4],edx
 00571442    mov        dword ptr [ebp-8],eax
 00571445    mov        edx,dword ptr [ebp-4]
 00571448    mov        eax,dword ptr [ebp-8]
 0057144B    call       TComponent.DefineProperties
 00571450    mov        eax,dword ptr [ebp-8]
 00571453    push       eax
 00571454    push       571494; sub_00571494
 00571459    mov        eax,dword ptr [ebp-8]
 0057145C    push       eax
 0057145D    push       5714B8; sub_005714B8
 00571462    push       ebp
 00571463    call       005713EC
 00571468    pop        ecx
 00571469    mov        ecx,eax
 0057146B    mov        edx,571488; 'ParamData'
 00571470    mov        eax,dword ptr [ebp-4]
 00571473    mov        ebx,dword ptr [eax]
 00571475    call       dword ptr [ebx+4]; TFiler.DefineProperty
 00571478    pop        ebx
 00571479    pop        ecx
 0057147A    pop        ecx
 0057147B    pop        ebp
 0057147C    ret
*}
end;

//00571494
//procedure sub_00571494(?:?; ?:?);
//begin
{*
 00571494    push       ebp
 00571495    mov        ebp,esp
 00571497    push       ebx
 00571498    push       esi
 00571499    mov        esi,edx
 0057149B    mov        ebx,eax
 0057149D    mov        eax,esi
 0057149F    call       TReader.ReadValue
 005714A4    mov        edx,dword ptr [ebx+1B4]
 005714AA    mov        eax,esi
 005714AC    call       TReader.ReadCollection
 005714B1    pop        esi
 005714B2    pop        ebx
 005714B3    pop        ebp
 005714B4    ret
*}
//end;

//005714B8
//procedure sub_005714B8(?:?; ?:?);
//begin
{*
 005714B8    push       ebp
 005714B9    mov        ebp,esp
 005714BB    mov        eax,dword ptr [eax+1B4]
 005714C1    xchg       eax,edx
 005714C2    call       TWriter.WriteCollection
 005714C7    pop        ebp
 005714C8    ret
*}
//end;

//005714CC
//procedure sub_005714CC(?:TZReadOnlyQuery);
//begin
{*
 005714CC    push       ebp
 005714CD    mov        ebp,esp
 005714CF    add        esp,0FFFFFFF8
 005714D2    push       ebx
 005714D3    push       esi
 005714D4    push       edi
 005714D5    xor        ecx,ecx
 005714D7    mov        dword ptr [ebp-8],ecx
 005714DA    mov        ebx,eax
 005714DC    xor        eax,eax
 005714DE    push       ebp
 005714DF    push       5715CC
 005714E4    push       dword ptr fs:[eax]
 005714E7    mov        dword ptr fs:[eax],esp
 005714EA    mov        eax,dword ptr [ebx+38]; TZReadOnlyQuery.FFieldDefs:TFieldDefs
 005714ED    call       TCollection.Clear
 005714F2    mov        eax,ebx
 005714F4    call       TDataSet.GetActive
 005714F9    test       al,al
>005714FB    je         00571506
 005714FD    mov        eax,ebx
 005714FF    call       TDataSet.Close
>00571504    jmp        00571511
 00571506    lea        eax,[ebx+1C4]; TZReadOnlyQuery.?f1C4:IZPreparedStatement
 0057150C    call       @IntfClear
 00571511    mov        dl,1
 00571513    mov        eax,[00499BA8]; TParams
 00571518    call       TParams.Create; TParams.Create
 0057151D    mov        dword ptr [ebp-4],eax
 00571520    mov        edx,dword ptr [ebx+1B4]; TZReadOnlyQuery.?f1B4:TParams
 00571526    mov        eax,dword ptr [ebp-4]
 00571529    mov        ecx,dword ptr [eax]
 0057152B    call       dword ptr [ecx+8]; TCollection.Assign
 0057152E    mov        eax,dword ptr [ebx+1B4]; TZReadOnlyQuery.?f1B4:TParams
 00571534    call       TCollection.Clear
 00571539    xor        eax,eax
 0057153B    push       ebp
 0057153C    push       5715AF
 00571541    push       dword ptr fs:[eax]
 00571544    mov        dword ptr fs:[eax],esp
 00571547    mov        eax,dword ptr [ebx+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 0057154D    call       00570208
 00571552    mov        esi,eax
 00571554    sub        esi,1
>00571557    jno        0057155E
 00571559    call       @IntOver
 0057155E    test       esi,esi
>00571560    jl         0057158B
 00571562    inc        esi
 00571563    xor        edi,edi
 00571565    push       0
 00571567    lea        ecx,[ebp-8]
 0057156A    mov        eax,dword ptr [ebx+1B0]; TZReadOnlyQuery.?f1B0:TZSQLStrings
 00571570    mov        edx,edi
 00571572    call       00570218
 00571577    mov        ecx,dword ptr [ebp-8]
 0057157A    mov        eax,dword ptr [ebx+1B4]; TZReadOnlyQuery.?f1B4:TParams
 00571580    xor        edx,edx
 00571582    call       TParams.CreateParam
 00571587    inc        edi
 00571588    dec        esi
<00571589    jne        00571565
 0057158B    mov        eax,dword ptr [ebx+1B4]; TZReadOnlyQuery.?f1B4:TParams
 00571591    mov        edx,dword ptr [ebp-4]
 00571594    call       TParams.AssignValues
 00571599    xor        eax,eax
 0057159B    pop        edx
 0057159C    pop        ecx
 0057159D    pop        ecx
 0057159E    mov        dword ptr fs:[eax],edx
 005715A1    push       5715B6
 005715A6    mov        eax,dword ptr [ebp-4]
 005715A9    call       TObject.Free
 005715AE    ret
<005715AF    jmp        @HandleFinally
<005715B4    jmp        005715A6
 005715B6    xor        eax,eax
 005715B8    pop        edx
 005715B9    pop        ecx
 005715BA    pop        ecx
 005715BB    mov        dword ptr fs:[eax],edx
 005715BE    push       5715D3
 005715C3    lea        eax,[ebp-8]
 005715C6    call       @LStrClr
 005715CB    ret
<005715CC    jmp        @HandleFinally
<005715D1    jmp        005715C3
 005715D3    pop        edi
 005715D4    pop        esi
 005715D5    pop        ebx
 005715D6    pop        ecx
 005715D7    pop        ecx
 005715D8    pop        ebp
 005715D9    ret
*}
//end;

//005715DC
procedure TZQuery.GetReadOnly(Self:TZQuery);
begin
{*
 005715DC    mov        al,byte ptr [eax+1A9]; TZQuery.?f1A9:byte
 005715E2    xor        al,1
 005715E4    ret
*}
end;

//005715E8
//procedure TZQuery.SetReadOnly(Self:TZQuery; ?:?);
//begin
{*
 005715E8    xor        dl,1
 005715EB    mov        byte ptr [eax+1A9],dl; TZQuery.?f1A9:byte
 005715F1    ret
*}
//end;

//005715F4
//function TZQuery.GetShowRecordTypes(Self:TZAbstractDataset):?;
//begin
{*
 005715F4    mov        dl,byte ptr [eax+1B8]; TZQuery.?f1B8:byte
 005715FA    mov        eax,edx
 005715FC    ret
*}
//end;

//00571600
//procedure TZQuery.SetShowRecordTypes(Self:TZQuery; ?:?);
//begin
{*
 00571600    push       ebp
 00571601    mov        ebp,esp
 00571603    push       ecx
 00571604    push       ebx
 00571605    mov        byte ptr [ebp-1],dl
 00571608    mov        ebx,eax
 0057160A    mov        al,byte ptr [ebx+1B8]; TZQuery.?f1B8:byte
 00571610    cmp        al,byte ptr [ebp-1]
>00571613    je         00571625
 00571615    mov        al,byte ptr [ebp-1]
 00571618    mov        byte ptr [ebx+1B8],al; TZQuery.?f1B8:byte
 0057161E    mov        eax,ebx
 00571620    call       00571D44
 00571625    pop        ebx
 00571626    pop        ecx
 00571627    pop        ebp
 00571628    ret
*}
//end;

//0057162C
//procedure sub_0057162C(?:TZAbstractRODataset);
//begin
{*
 0057162C    push       ebp
 0057162D    mov        ebp,esp
 0057162F    push       0
 00571631    push       ebx
 00571632    mov        ebx,eax
 00571634    xor        eax,eax
 00571636    push       ebp
 00571637    push       57167A
 0057163C    push       dword ptr fs:[eax]
 0057163F    mov        dword ptr fs:[eax],esp
 00571642    mov        eax,ebx
 00571644    call       TDataSet.GetActive
 00571649    test       al,al
>0057164B    jne        00571664
 0057164D    lea        edx,[ebp-4]
 00571650    mov        eax,[0061BF8C]; ^#122.sResString62:TResStringRec
 00571655    call       LoadResString
 0057165A    mov        eax,dword ptr [ebp-4]
 0057165D    xor        edx,edx
 0057165F    call       DatabaseError
 00571664    xor        eax,eax
 00571666    pop        edx
 00571667    pop        ecx
 00571668    pop        ecx
 00571669    mov        dword ptr fs:[eax],edx
 0057166C    push       571681
 00571671    lea        eax,[ebp-4]
 00571674    call       @LStrClr
 00571679    ret
<0057167A    jmp        @HandleFinally
<0057167F    jmp        00571671
 00571681    pop        ebx
 00571682    pop        ecx
 00571683    pop        ebp
 00571684    ret
*}
//end;

//00571688
//procedure sub_00571688(?:TZQuery);
//begin
{*
 00571688    push       ebp
 00571689    mov        ebp,esp
 0057168B    push       0
 0057168D    xor        edx,edx
 0057168F    push       ebp
 00571690    push       5716E6
 00571695    push       dword ptr fs:[edx]
 00571698    mov        dword ptr fs:[edx],esp
 0057169B    cmp        dword ptr [eax+1C0],0; TZQuery.Connection:TZConnection
>005716A2    jne        005716C5
 005716A4    lea        edx,[ebp-4]
 005716A7    mov        eax,[0061C128]; ^#122.sResString57:TResStringRec
 005716AC    call       LoadResString
 005716B1    mov        ecx,dword ptr [ebp-4]
 005716B4    mov        dl,1
 005716B6    mov        eax,[0057089C]; EZDatabaseError
 005716BB    call       EZDatabaseError.Create; EZDatabaseError.Create
 005716C0    call       @RaiseExcept
 005716C5    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 005716CB    mov        edx,dword ptr [eax]
 005716CD    call       dword ptr [edx+30]; TZConnection.sub_0057704C
 005716D0    xor        eax,eax
 005716D2    pop        edx
 005716D3    pop        ecx
 005716D4    pop        ecx
 005716D5    mov        dword ptr fs:[eax],edx
 005716D8    push       5716ED
 005716DD    lea        eax,[ebp-4]
 005716E0    call       @LStrClr
 005716E5    ret
<005716E6    jmp        @HandleFinally
<005716EB    jmp        005716DD
 005716ED    pop        ecx
 005716EE    pop        ebp
 005716EF    ret
*}
//end;

//005716F0
//procedure sub_005716F0(?:TZAbstractRODataset);
//begin
{*
 005716F0    push       ebp
 005716F1    mov        ebp,esp
 005716F3    push       0
 005716F5    xor        edx,edx
 005716F7    push       ebp
 005716F8    push       571743
 005716FD    push       dword ptr fs:[edx]
 00571700    mov        dword ptr fs:[edx],esp
 00571703    cmp        byte ptr [eax+88],0; TZAbstractRODataset.FIsUniDirectional:Boolean
>0057170A    je         0057172D
 0057170C    lea        edx,[ebp-4]
 0057170F    mov        eax,[0061B4A8]; ^#122.sResString60:TResStringRec
 00571714    call       LoadResString
 00571719    mov        ecx,dword ptr [ebp-4]
 0057171C    mov        dl,1
 0057171E    mov        eax,[0057089C]; EZDatabaseError
 00571723    call       EZDatabaseError.Create; EZDatabaseError.Create
 00571728    call       @RaiseExcept
 0057172D    xor        eax,eax
 0057172F    pop        edx
 00571730    pop        ecx
 00571731    pop        ecx
 00571732    mov        dword ptr fs:[eax],edx
 00571735    push       57174A
 0057173A    lea        eax,[ebp-4]
 0057173D    call       @LStrClr
 00571742    ret
<00571743    jmp        @HandleFinally
<00571748    jmp        0057173A
 0057174A    pop        ecx
 0057174B    pop        ebp
 0057174C    ret
*}
//end;

//00571750
procedure sub_00571750;
begin
{*
 00571750    push       ebp
 00571751    mov        ebp,esp
 00571753    push       0
 00571755    push       0
 00571757    push       ebx
 00571758    mov        ebx,eax
 0057175A    xor        eax,eax
 0057175C    push       ebp
 0057175D    push       5717E1
 00571762    push       dword ptr fs:[eax]
 00571765    mov        dword ptr fs:[eax],esp
 00571768    mov        eax,dword ptr [ebx+1B0]; TZQuery.?f1B0:TZSQLStrings
 0057176E    call       00570238
 00571773    dec        eax
>00571774    jge        00571797
 00571776    lea        edx,[ebp-4]
 00571779    mov        eax,[0061B004]; ^#122.sResString58:TResStringRec
 0057177E    call       LoadResString
 00571783    mov        ecx,dword ptr [ebp-4]
 00571786    mov        dl,1
 00571788    mov        eax,[0057089C]; EZDatabaseError
 0057178D    call       EZDatabaseError.Create; EZDatabaseError.Create
 00571792    call       @RaiseExcept
 00571797    mov        eax,dword ptr [ebx+1B0]; TZQuery.?f1B0:TZSQLStrings
 0057179D    call       00570238
 005717A2    dec        eax
>005717A3    jle        005717C6
 005717A5    lea        edx,[ebp-8]
 005717A8    mov        eax,[0061BDFC]; ^#122.sResString59:TResStringRec
 005717AD    call       LoadResString
 005717B2    mov        ecx,dword ptr [ebp-8]
 005717B5    mov        dl,1
 005717B7    mov        eax,[0057089C]; EZDatabaseError
 005717BC    call       EZDatabaseError.Create; EZDatabaseError.Create
 005717C1    call       @RaiseExcept
 005717C6    xor        eax,eax
 005717C8    pop        edx
 005717C9    pop        ecx
 005717CA    pop        ecx
 005717CB    mov        dword ptr fs:[eax],edx
 005717CE    push       5717E8
 005717D3    lea        eax,[ebp-8]
 005717D6    mov        edx,2
 005717DB    call       @LStrArrayClr
 005717E0    ret
<005717E1    jmp        @HandleFinally
<005717E6    jmp        005717D3
 005717E8    pop        ebx
 005717E9    pop        ecx
 005717EA    pop        ecx
 005717EB    pop        ebp
 005717EC    ret
*}
end;

//005717F0
procedure sub_005717F0;
begin
{*
 005717F0    push       ebp
 005717F1    mov        ebp,esp
 005717F3    push       0
 005717F5    xor        eax,eax
 005717F7    push       ebp
 005717F8    push       57183A
 005717FD    push       dword ptr fs:[eax]
 00571800    mov        dword ptr fs:[eax],esp
 00571803    lea        edx,[ebp-4]
 00571806    mov        eax,[0061B5CC]; ^#122.sResString61:TResStringRec
 0057180B    call       LoadResString
 00571810    mov        ecx,dword ptr [ebp-4]
 00571813    mov        dl,1
 00571815    mov        eax,[0057089C]; EZDatabaseError
 0057181A    call       EZDatabaseError.Create; EZDatabaseError.Create
 0057181F    call       @RaiseExcept
 00571824    xor        eax,eax
 00571826    pop        edx
 00571827    pop        ecx
 00571828    pop        ecx
 00571829    mov        dword ptr fs:[eax],edx
 0057182C    push       571841
 00571831    lea        eax,[ebp-4]
 00571834    call       @LStrClr
 00571839    ret
<0057183A    jmp        @HandleFinally
<0057183F    jmp        00571831
 00571841    pop        ecx
 00571842    pop        ebp
 00571843    ret
*}
end;

//00571844
//function sub_00571844(?:TZAbstractRODataset; ?:Integer):?;
//begin
{*
 00571844    push       ebp
 00571845    mov        ebp,esp
 00571847    add        esp,0FFFFFFF8
 0057184A    push       ebx
 0057184B    mov        ebx,edx
 0057184D    mov        dword ptr [ebp-4],eax
 00571850    mov        eax,dword ptr [ebp-4]
 00571853    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 00571859    call       005779A4
 0057185E    xor        eax,eax
 00571860    push       ebp
 00571861    push       5718C8
 00571866    push       dword ptr fs:[eax]
 00571869    mov        dword ptr fs:[eax],esp
 0057186C    test       ebx,ebx
>0057186E    jne        0057188E
 00571870    mov        eax,dword ptr [ebp-4]
 00571873    call       005718D8
 00571878    test       al,al
<0057187A    jne        00571870
 0057187C    mov        byte ptr [ebp-5],1
>00571880    jmp        005718AC
 00571882    mov        eax,dword ptr [ebp-4]
 00571885    call       005718D8
 0057188A    test       al,al
>0057188C    je         0057189C
 0057188E    mov        eax,dword ptr [ebp-4]
 00571891    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 00571897    cmp        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
<0057189A    jg         00571882
 0057189C    mov        eax,dword ptr [ebp-4]
 0057189F    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 005718A5    cmp        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
 005718A8    setle      byte ptr [ebp-5]
 005718AC    xor        eax,eax
 005718AE    pop        edx
 005718AF    pop        ecx
 005718B0    pop        ecx
 005718B1    mov        dword ptr fs:[eax],edx
 005718B4    push       5718CF
 005718B9    mov        eax,dword ptr [ebp-4]
 005718BC    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 005718C2    call       005779F8
 005718C7    ret
<005718C8    jmp        @HandleFinally
<005718CD    jmp        005718B9
 005718CF    mov        al,byte ptr [ebp-5]
 005718D2    pop        ebx
 005718D3    pop        ecx
 005718D4    pop        ecx
 005718D5    pop        ebp
 005718D6    ret
*}
//end;

//005718D8
//function sub_005718D8(?:TZAbstractRODataset):?;
//begin
{*
 005718D8    push       ebp
 005718D9    mov        ebp,esp
 005718DB    push       ebx
 005718DC    push       esi
 005718DD    mov        esi,eax
 005718DF    cmp        dword ptr [esi+18C],0; TZAbstractRODataset.?f18C:dword
>005718E6    je         00571916
 005718E8    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 005718EE    mov        edx,dword ptr [eax]
 005718F0    call       dword ptr [edx+0F4]
 005718F6    cmp        eax,dword ptr [esi+18C]; TZAbstractRODataset.?f18C:dword
>005718FC    je         00571916
 005718FE    mov        edx,dword ptr [esi+18C]; TZAbstractRODataset.?f18C:dword
 00571904    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057190A    mov        ecx,dword ptr [eax]
 0057190C    call       dword ptr [ecx+0F8]
 00571912    test       al,al
>00571914    je         00571925
 00571916    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057191C    mov        edx,dword ptr [eax]
 0057191E    call       dword ptr [edx+0C]
 00571921    mov        ebx,eax
>00571923    jmp        00571927
 00571925    xor        ebx,ebx
 00571927    test       bl,bl
>00571929    je         0057196F
 0057192B    add        dword ptr [esi+18C],1; TZAbstractRODataset.?f18C:dword
>00571932    jno        00571939
 00571934    call       @IntOver
 00571939    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057193F    mov        edx,dword ptr [eax]
 00571941    call       dword ptr [edx+0F4]
 00571947    mov        edx,eax
 00571949    mov        eax,esi
 0057194B    call       00571978
 00571950    test       al,al
>00571952    je         0057196F
 00571954    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057195A    mov        edx,dword ptr [eax]
 0057195C    call       dword ptr [edx+0F4]
 00571962    mov        edx,eax
 00571964    mov        eax,dword ptr [esi+188]; TZAbstractRODataset.?f188:TZSortedList
 0057196A    call       TList.Add
 0057196F    mov        eax,ebx
 00571971    pop        esi
 00571972    pop        ebx
 00571973    pop        ebp
 00571974    ret
*}
//end;

//00571978
//function sub_00571978(?:TZAbstractRODataset; ?:Pointer):?;
//begin
{*
 00571978    push       ebp
 00571979    mov        ebp,esp
 0057197B    mov        ecx,0B
 00571980    push       0
 00571982    push       0
 00571984    dec        ecx
<00571985    jne        00571980
 00571987    push       ecx
 00571988    push       ebx
 00571989    push       esi
 0057198A    push       edi
 0057198B    mov        dword ptr [ebp-8],edx
 0057198E    mov        dword ptr [ebp-4],eax
 00571991    xor        eax,eax
 00571993    push       ebp
 00571994    push       571D31
 00571999    push       dword ptr fs:[eax]
 0057199C    mov        dword ptr fs:[eax],esp
 0057199F    mov        byte ptr [ebp-9],1
 005719A3    mov        eax,dword ptr [ebp-4]
 005719A6    mov        eax,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 005719AC    mov        edx,dword ptr [eax]
 005719AE    call       dword ptr [edx+0F4]
 005719B4    cmp        eax,dword ptr [ebp-8]
>005719B7    je         005719D5
 005719B9    mov        eax,dword ptr [ebp-4]
 005719BC    mov        eax,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 005719C2    mov        edx,dword ptr [ebp-8]
 005719C5    mov        ecx,dword ptr [eax]
 005719C7    call       dword ptr [ecx+0F8]
 005719CD    test       al,al
>005719CF    jne        005719D5
 005719D1    mov        byte ptr [ebp-9],0
 005719D5    cmp        byte ptr [ebp-9],0
>005719D9    je         00571CDF
 005719DF    mov        eax,dword ptr [ebp-4]
 005719E2    mov        eax,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 005719E8    mov        edx,dword ptr [eax]
 005719EA    call       dword ptr [edx+124]
 005719F0    test       al,al
>005719F2    je         00571A06
 005719F4    mov        eax,dword ptr [ebp-4]
 005719F7    call       TZQuery.GetShowRecordTypes
 005719FC    test       al,2
 005719FE    setne      al
 00571A01    mov        byte ptr [ebp-9],al
>00571A04    jmp        00571A64
 00571A06    mov        eax,dword ptr [ebp-4]
 00571A09    mov        eax,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 00571A0F    mov        edx,dword ptr [eax]
 00571A11    call       dword ptr [edx+128]
 00571A17    test       al,al
>00571A19    je         00571A2D
 00571A1B    mov        eax,dword ptr [ebp-4]
 00571A1E    call       TZQuery.GetShowRecordTypes
 00571A23    test       al,4
 00571A25    setne      al
 00571A28    mov        byte ptr [ebp-9],al
>00571A2B    jmp        00571A64
 00571A2D    mov        eax,dword ptr [ebp-4]
 00571A30    mov        eax,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 00571A36    mov        edx,dword ptr [eax]
 00571A38    call       dword ptr [edx+12C]
 00571A3E    test       al,al
>00571A40    je         00571A54
 00571A42    mov        eax,dword ptr [ebp-4]
 00571A45    call       TZQuery.GetShowRecordTypes
 00571A4A    test       al,8
 00571A4C    setne      al
 00571A4F    mov        byte ptr [ebp-9],al
>00571A52    jmp        00571A64
 00571A54    mov        eax,dword ptr [ebp-4]
 00571A57    call       TZQuery.GetShowRecordTypes
 00571A5C    test       al,1
 00571A5E    setne      al
 00571A61    mov        byte ptr [ebp-9],al
 00571A64    cmp        byte ptr [ebp-9],0
>00571A68    je         00571CDF
 00571A6E    mov        eax,dword ptr [ebp-4]
 00571A71    mov        eax,dword ptr [eax+1D4]; TZAbstractDataset.?f1D4:TMasterDataLink
 00571A77    cmp        byte ptr [eax+15],0; TMasterDataLink.FActive:Boolean
>00571A7B    je         00571ADB
 00571A7D    mov        eax,dword ptr [eax+24]; TMasterDataLink.FFields:TList
 00571A80    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 00571A83    sub        esi,1
>00571A86    jno        00571A8D
 00571A88    call       @IntOver
 00571A8D    test       esi,esi
>00571A8F    jl         00571ADB
 00571A91    inc        esi
 00571A92    xor        ebx,ebx
 00571A94    mov        eax,dword ptr [ebp-4]
 00571A97    mov        edi,dword ptr [eax+1E0]; TZAbstractDataset.?f1E0:TList
 00571A9D    cmp        ebx,dword ptr [edi+8]; TList.FCount:Integer
>00571AA0    jge        00571AD1
 00571AA2    mov        eax,dword ptr [ebp-4]
 00571AA5    mov        eax,dword ptr [eax+1D4]; TZAbstractDataset.?f1D4:TMasterDataLink
 00571AAB    mov        eax,dword ptr [eax+24]; TMasterDataLink.FFields:TList
 00571AAE    mov        edx,ebx
 00571AB0    call       TList.Get
 00571AB5    push       eax
 00571AB6    mov        eax,edi
 00571AB8    mov        edx,ebx
 00571ABA    call       TList.Get
 00571ABF    mov        edx,dword ptr [ebp-4]
 00571AC2    mov        edx,dword ptr [edx+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 00571AC8    pop        ecx
 00571AC9    call       0056B468
 00571ACE    mov        byte ptr [ebp-9],al
 00571AD1    cmp        byte ptr [ebp-9],0
>00571AD5    je         00571ADB
 00571AD7    inc        ebx
 00571AD8    dec        esi
<00571AD9    jne        00571A94
 00571ADB    cmp        byte ptr [ebp-9],0
>00571ADF    je         00571CDF
 00571AE5    mov        eax,dword ptr [ebp-4]
 00571AE8    cmp        byte ptr [eax+198],0; TZAbstractDataset.?f198:byte
>00571AEF    je         00571BD4
 00571AF5    mov        eax,dword ptr [ebp-4]
 00571AF8    cmp        word ptr [eax+16A],0; TZAbstractDataset.?f16A:word
>00571B00    je         00571BD4
 00571B06    mov        eax,dword ptr [ebp-4]
 00571B09    mov        eax,dword ptr [eax+178]; TZAbstractDataset.?f178:Integer
 00571B0F    mov        dword ptr [ebp-10],eax
 00571B12    mov        eax,dword ptr [ebp-4]
 00571B15    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 00571B1B    mov        dword ptr [ebp-14],eax
 00571B1E    mov        dl,1
 00571B20    mov        eax,[004BEC2C]; TZSortedList
 00571B25    call       TObject.Create; TZSortedList.Create
 00571B2A    mov        edx,dword ptr [ebp-4]
 00571B2D    mov        dword ptr [edx+188],eax; TZAbstractDataset.?f188:TZSortedList
 00571B33    mov        dl,7
 00571B35    mov        eax,dword ptr [ebp-4]
 00571B38    call       TDataSet.SetTempState
 00571B3D    mov        byte ptr [ebp-15],al
 00571B40    mov        eax,dword ptr [ebp-4]
 00571B43    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 00571B49    mov        edx,dword ptr [ebp-8]
 00571B4C    call       TList.Add
 00571B51    mov        eax,dword ptr [ebp-4]
 00571B54    mov        dword ptr [eax+178],1; TZAbstractDataset.?f178:Integer
 00571B5E    xor        eax,eax
 00571B60    push       ebp
 00571B61    push       571B8B
 00571B66    push       dword ptr fs:[eax]
 00571B69    mov        dword ptr fs:[eax],esp
 00571B6C    lea        ecx,[ebp-9]
 00571B6F    mov        ebx,dword ptr [ebp-4]
 00571B72    mov        edx,dword ptr [ebp-4]
 00571B75    mov        eax,dword ptr [ebx+16C]; TZAbstractDataset.?f16C:dword
 00571B7B    call       dword ptr [ebx+168]; TZAbstractDataset.FOnFilterRecord
 00571B81    xor        eax,eax
 00571B83    pop        edx
 00571B84    pop        ecx
 00571B85    pop        ecx
 00571B86    mov        dword ptr fs:[eax],edx
>00571B89    jmp        00571BA3
<00571B8B    jmp        @HandleAnyException
 00571B90    mov        ebx,dword ptr ds:[61B9D0]; ^ApplicationHandleException:procedure(val Sender:System.TObject) of object
 00571B96    mov        edx,dword ptr [ebp-4]
 00571B99    mov        eax,dword ptr [ebx+4]
 00571B9C    call       dword ptr [ebx]
 00571B9E    call       @DoneExcept
 00571BA3    mov        eax,dword ptr [ebp-4]
 00571BA6    mov        edx,dword ptr [ebp-10]
 00571BA9    mov        dword ptr [eax+178],edx; TZAbstractDataset.?f178:Integer
 00571BAF    mov        eax,dword ptr [ebp-4]
 00571BB2    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 00571BB8    call       TObject.Free
 00571BBD    mov        eax,dword ptr [ebp-4]
 00571BC0    mov        edx,dword ptr [ebp-14]
 00571BC3    mov        dword ptr [eax+188],edx; TZAbstractDataset.?f188:TZSortedList
 00571BC9    mov        dl,byte ptr [ebp-15]
 00571BCC    mov        eax,dword ptr [ebp-4]
 00571BCF    call       TDataSet.RestoreState
 00571BD4    cmp        byte ptr [ebp-9],0
>00571BD8    je         00571CDF
 00571BDE    mov        eax,dword ptr [ebp-4]
 00571BE1    cmp        byte ptr [eax+198],0; TZAbstractDataset.?f198:byte
>00571BE8    je         00571CDB
 00571BEE    lea        edx,[ebp-1C]
 00571BF1    mov        eax,dword ptr [ebp-4]
 00571BF4    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571BFA    mov        ecx,dword ptr [eax]
 00571BFC    call       dword ptr [ecx+14]
 00571BFF    cmp        dword ptr [ebp-1C],0
>00571C03    je         00571CDB
 00571C09    mov        eax,dword ptr [ebp-4]
 00571C0C    cmp        byte ptr [eax+1A8],0; TZAbstractDataset.?f1A8:byte
>00571C13    jne        00571C49
 00571C15    lea        ecx,[ebp-20]
 00571C18    mov        eax,dword ptr [ebp-4]
 00571C1B    mov        edx,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571C21    mov        eax,dword ptr [ebp-4]
 00571C24    call       00569C60
 00571C29    mov        edx,dword ptr [ebp-20]
 00571C2C    mov        eax,dword ptr [ebp-4]
 00571C2F    add        eax,1A4; TZAbstractDataset.?f1A4:TObjectDynArray
 00571C34    mov        ecx,dword ptr ds:[4BC80C]; TObjectDynArray
 00571C3A    call       @DynArrayAsg
 00571C3F    mov        eax,dword ptr [ebp-4]
 00571C42    mov        byte ptr [eax+1A8],1; TZAbstractDataset.?f1A8:byte
 00571C49    lea        edx,[ebp-24]
 00571C4C    mov        eax,dword ptr [ebp-4]
 00571C4F    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571C55    mov        ecx,dword ptr [eax]
 00571C57    call       dword ptr [ecx+24]
 00571C5A    mov        ecx,dword ptr [ebp-24]
 00571C5D    mov        eax,dword ptr [ebp-4]
 00571C60    mov        edx,dword ptr [eax+1C8]; TZAbstractDataset.?f1C8:IZResultSet
 00571C66    mov        eax,dword ptr [ebp-4]
 00571C69    mov        eax,dword ptr [eax+1A4]; TZAbstractDataset.?f1A4:TObjectDynArray
 00571C6F    call       0056A3C8
 00571C74    mov        eax,dword ptr [ebp-4]
 00571C77    mov        eax,dword ptr [eax+1A0]; TZAbstractDataset.?f1A0:TZExecutionStack
 00571C7D    push       eax
 00571C7E    lea        eax,[ebp-50]
 00571C81    push       eax
 00571C82    lea        edx,[ebp-54]
 00571C85    mov        eax,dword ptr [ebp-4]
 00571C88    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571C8E    mov        ecx,dword ptr [eax]
 00571C90    call       dword ptr [ecx+2C]
 00571C93    mov        eax,dword ptr [ebp-54]
 00571C96    push       eax
 00571C97    lea        edx,[ebp-58]
 00571C9A    mov        eax,dword ptr [ebp-4]
 00571C9D    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571CA3    mov        ecx,dword ptr [eax]
 00571CA5    call       dword ptr [ecx+24]
 00571CA8    mov        edx,dword ptr [ebp-58]
 00571CAB    mov        eax,dword ptr [ebp-4]
 00571CAE    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571CB4    pop        ecx
 00571CB5    mov        ebx,dword ptr [eax]
 00571CB7    call       dword ptr [ebx+48]
 00571CBA    lea        eax,[ebp-50]
 00571CBD    push       eax
 00571CBE    lea        edx,[ebp-5C]
 00571CC1    mov        eax,dword ptr [ebp-4]
 00571CC4    mov        eax,dword ptr [eax+19C]; TZAbstractDataset.?f19C:IZExpression
 00571CCA    mov        ecx,dword ptr [eax]
 00571CCC    call       dword ptr [ecx+1C]
 00571CCF    mov        eax,dword ptr [ebp-5C]
 00571CD2    pop        edx
 00571CD3    mov        ecx,dword ptr [eax]
 00571CD5    call       dword ptr [ecx+24]
 00571CD8    mov        byte ptr [ebp-9],al
 00571CDB    cmp        byte ptr [ebp-9],0
 00571CDF    xor        eax,eax
 00571CE1    pop        edx
 00571CE2    pop        ecx
 00571CE3    pop        ecx
 00571CE4    mov        dword ptr fs:[eax],edx
 00571CE7    push       571D38
 00571CEC    lea        eax,[ebp-5C]
 00571CEF    call       @IntfClear
 00571CF4    lea        eax,[ebp-58]
 00571CF7    call       @IntfClear
 00571CFC    lea        eax,[ebp-54]
 00571CFF    call       @IntfClear
 00571D04    lea        eax,[ebp-50]
 00571D07    mov        edx,dword ptr ds:[4C4174]; TZVariant
 00571D0D    call       @FinalizeRecord
 00571D12    lea        eax,[ebp-24]
 00571D15    call       @IntfClear
 00571D1A    lea        eax,[ebp-20]
 00571D1D    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00571D23    call       @DynArrayClear
 00571D28    lea        eax,[ebp-1C]
 00571D2B    call       @LStrClr
 00571D30    ret
<00571D31    jmp        @HandleFinally
<00571D36    jmp        00571CEC
 00571D38    mov        al,byte ptr [ebp-9]
 00571D3B    pop        edi
 00571D3C    pop        esi
 00571D3D    pop        ebx
 00571D3E    mov        esp,ebp
 00571D40    pop        ebp
 00571D41    ret
*}
//end;

//00571D44
//procedure sub_00571D44(?:TZAbstractRODataset);
//begin
{*
 00571D44    push       ebp
 00571D45    mov        ebp,esp
 00571D47    push       ecx
 00571D48    push       ebx
 00571D49    push       esi
 00571D4A    push       edi
 00571D4B    mov        ebx,eax
 00571D4D    mov        al,byte ptr [ebx+9D]; TZAbstractRODataset.FState:TDataSetState
 00571D53    test       al,al
>00571D55    je         00571E46
 00571D5B    cmp        byte ptr [ebx+88],0; TZAbstractRODataset.FIsUniDirectional:Boolean
>00571D62    jne        00571E46
 00571D68    mov        esi,dword ptr [ebx+178]; TZAbstractRODataset.?f178:Integer
 00571D6E    test       esi,esi
>00571D70    jle        00571DA5
 00571D72    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571D78    cmp        esi,dword ptr [eax+8]; TZSortedList.FCount:Integer
>00571D7B    jg         00571DA5
 00571D7D    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571D83    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>00571D87    jle        00571DA5
 00571D89    mov        edx,esi
 00571D8B    sub        edx,1
>00571D8E    jno        00571D95
 00571D90    call       @IntOver
 00571D95    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571D9B    call       TList.Get
 00571DA0    mov        dword ptr [ebp-4],eax
>00571DA3    jmp        00571DAC
 00571DA5    mov        dword ptr [ebp-4],0FFFFFFFF
 00571DAC    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571DB2    mov        edx,dword ptr [eax]
 00571DB4    call       dword ptr [edx+8]; TList.Clear
 00571DB7    mov        edi,dword ptr [ebx+18C]; TZAbstractRODataset.?f18C:dword
 00571DBD    test       edi,edi
>00571DBF    jle        00571DE4
 00571DC1    mov        esi,1
 00571DC6    mov        edx,esi
 00571DC8    mov        eax,ebx
 00571DCA    call       00571978
 00571DCF    test       al,al
>00571DD1    je         00571DE0
 00571DD3    mov        edx,esi
 00571DD5    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571DDB    call       TList.Add
 00571DE0    inc        esi
 00571DE1    dec        edi
<00571DE2    jne        00571DC6
 00571DE4    mov        edx,dword ptr [ebp-4]
 00571DE7    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571DED    call       TList.IndexOf
 00571DF2    mov        esi,eax
 00571DF4    add        esi,1
>00571DF7    jno        00571DFE
 00571DF9    call       @IntOver
 00571DFE    mov        dword ptr [ebx+178],esi; TZAbstractRODataset.?f178:Integer
 00571E04    mov        edx,esi
 00571E06    mov        eax,1
 00571E0B    call       Max
 00571E10    mov        edx,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00571E16    mov        edx,dword ptr [edx+8]; TZSortedList.FCount:Integer
 00571E19    call       Min
 00571E1E    mov        dword ptr [ebx+178],eax; TZAbstractRODataset.?f178:Integer
 00571E24    cmp        dword ptr [ebx+1E8],0; TZAbstractRODataset.?f1E8:String
>00571E2B    je         00571E36
 00571E2D    mov        eax,ebx
 00571E2F    call       0057512C
>00571E34    jmp        00571E46
 00571E36    mov        dl,byte ptr ds:[571E4C]; 0x0
 00571E3C    mov        eax,ebx
 00571E3E    mov        ecx,dword ptr [eax]
 00571E40    call       dword ptr [ecx+250]; TDataSet.Resync
 00571E46    pop        edi
 00571E47    pop        esi
 00571E48    pop        ebx
 00571E49    pop        ecx
 00571E4A    pop        ebp
 00571E4B    ret
*}
//end;

//00571E50
//procedure sub_00571E50(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00571E50    push       ebp
 00571E51    mov        ebp,esp
 00571E53    add        esp,0FFFFFFD0
 00571E56    push       ebx
 00571E57    xor        ebx,ebx
 00571E59    mov        dword ptr [ebp-30],ebx
 00571E5C    mov        dword ptr [ebp-2C],ebx
 00571E5F    mov        dword ptr [ebp-28],ebx
 00571E62    mov        dword ptr [ebp-24],ebx
 00571E65    mov        dword ptr [ebp-20],ebx
 00571E68    mov        dword ptr [ebp-8],ecx
 00571E6B    mov        dword ptr [ebp-4],edx
 00571E6E    mov        ebx,dword ptr [ebp+8]
 00571E71    mov        eax,dword ptr [ebp-4]
 00571E74    call       @IntfAddRef
 00571E79    mov        eax,dword ptr [ebp-8]
 00571E7C    call       @DynArrayAddRef
 00571E81    xor        eax,eax
 00571E83    push       ebp
 00571E84    push       57231A
 00571E89    push       dword ptr fs:[eax]
 00571E8C    mov        dword ptr fs:[eax],esp
 00571E8F    cmp        byte ptr [ebx+15],0
>00571E93    je         00571EA1
 00571E95    mov        eax,ebx
 00571E97    call       TDataLink.GetDataSet
 00571E9C    mov        dword ptr [ebp-18],eax
>00571E9F    jmp        00571EA6
 00571EA1    xor        eax,eax
 00571EA3    mov        dword ptr [ebp-18],eax
 00571EA6    xor        ecx,ecx
 00571EA8    mov        dl,1
 00571EAA    mov        eax,[00499A04]; TParam
 00571EAF    call       TParam.Create; TParam.Create
 00571EB4    mov        dword ptr [ebp-10],eax
 00571EB7    xor        edx,edx
 00571EB9    push       ebp
 00571EBA    push       5722E2
 00571EBF    push       dword ptr fs:[edx]
 00571EC2    mov        dword ptr fs:[edx],esp
 00571EC5    mov        eax,dword ptr [ebp-8]
 00571EC8    call       @DynArrayHigh
 00571ECD    test       eax,eax
>00571ECF    jl         005722CC
 00571ED5    inc        eax
 00571ED6    mov        dword ptr [ebp-1C],eax
 00571ED9    mov        dword ptr [ebp-0C],0
 00571EE0    cmp        dword ptr [ebp-18],0
>00571EE4    je         00571F07
 00571EE6    mov        eax,dword ptr [ebp-0C]
 00571EE9    mov        edx,dword ptr [ebp-8]
 00571EEC    test       edx,edx
>00571EEE    je         00571EF5
 00571EF0    cmp        eax,dword ptr [edx-4]
>00571EF3    jb         00571EFA
 00571EF5    call       @BoundErr
 00571EFA    mov        edx,dword ptr [edx+eax*4]
 00571EFD    mov        eax,dword ptr [ebp-18]
 00571F00    call       TDataSet.FindField
>00571F05    jmp        00571F09
 00571F07    xor        eax,eax
 00571F09    test       eax,eax
>00571F0B    je         00571F1C
 00571F0D    mov        edx,eax
 00571F0F    mov        eax,dword ptr [ebp-10]
 00571F12    call       TParam.AssignField
 00571F17    mov        ebx,dword ptr [ebp-10]
>00571F1A    jmp        00571F5C
 00571F1C    mov        eax,dword ptr [ebp-0C]
 00571F1F    mov        edx,dword ptr [ebp-8]
 00571F22    test       edx,edx
>00571F24    je         00571F2B
 00571F26    cmp        eax,dword ptr [edx-4]
>00571F29    jb         00571F30
 00571F2B    call       @BoundErr
 00571F30    mov        edx,dword ptr [edx+eax*4]
 00571F33    mov        eax,dword ptr [ebp+0C]
 00571F36    call       TParams.FindParam
 00571F3B    mov        ebx,eax
 00571F3D    test       ebx,ebx
>00571F3F    je         005722C0
 00571F45    mov        eax,ebx
 00571F47    call       TParam.GetParamType
 00571F4C    sub        al,2
>00571F4E    je         005722C0
 00571F54    sub        al,2
>00571F56    je         005722C0
 00571F5C    mov        eax,ebx
 00571F5E    call       TParam.GetIsNull
 00571F63    test       al,al
>00571F65    je         00571F92
 00571F67    mov        eax,ebx
 00571F69    call       TParam.GetDataType
 00571F6E    call       00569128
 00571F73    mov        ecx,eax
 00571F75    mov        edx,dword ptr [ebp-0C]
 00571F78    add        edx,1
>00571F7B    jno        00571F82
 00571F7D    call       @IntOver
 00571F82    mov        eax,dword ptr [ebp-4]
 00571F85    mov        ebx,dword ptr [eax]
 00571F87    call       dword ptr [ebx+0A8]
>00571F8D    jmp        005722C0
 00571F92    mov        eax,ebx
 00571F94    call       TParam.GetDataType
 00571F99    and        eax,7F
 00571F9C    cmp        eax,24
>00571F9F    ja         005722C0
 00571FA5    mov        al,byte ptr [eax+571FB2]
 00571FAB    jmp        dword ptr [eax*4+571FD7]
 00571FAB    db         0
 00571FAB    db         7
 00571FAB    db         2
 00571FAB    db         3
 00571FAB    db         0
 00571FAB    db         1
 00571FAB    db         4
 00571FAB    db         6
 00571FAB    db         0
 00571FAB    db         9
 00571FAB    db         10
 00571FAB    db         11
 00571FAB    db         8
 00571FAB    db         0
 00571FAB    db         3
 00571FAB    db         13
 00571FAB    db         12
 00571FAB    db         13
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         5
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         0
 00571FAB    db         11
 00571FAB    dd         5722C0
 00571FAB    dd         57200F
 00571FAB    dd         572035
 00571FAB    dd         572074
 00571FAB    dd         57209A
 00571FAB    dd         5720C5
 00571FAB    dd         5720F6
 00571FAB    dd         572127
 00571FAB    dd         572151
 00571FAB    dd         57217B
 00571FAB    dd         5721A6
 00571FAB    dd         5721D1
 00571FAB    dd         5721FC
 00571FAB    dd         57225E
 0057200F    mov        eax,ebx
 00572011    call       TParam.GetAsBoolean
 00572016    mov        ecx,eax
 00572018    mov        edx,dword ptr [ebp-0C]
 0057201B    add        edx,1
>0057201E    jno        00572025
 00572020    call       @IntOver
 00572025    mov        eax,dword ptr [ebp-4]
 00572028    mov        ebx,dword ptr [eax]
 0057202A    call       dword ptr [ebx+0AC]
>00572030    jmp        005722C0
 00572035    mov        eax,ebx
 00572037    call       TParam.GetAsInteger
 0057203C    mov        ecx,eax
 0057203E    add        ecx,8000
 00572044    cmp        ecx,0FFFF
>0057204A    jbe        00572051
 0057204C    call       @BoundErr
 00572051    add        ecx,0FFFF8000
 00572057    mov        edx,dword ptr [ebp-0C]
 0057205A    add        edx,1
>0057205D    jno        00572064
 0057205F    call       @IntOver
 00572064    mov        eax,dword ptr [ebp-4]
 00572067    mov        ebx,dword ptr [eax]
 00572069    call       dword ptr [ebx+0B4]
>0057206F    jmp        005722C0
 00572074    mov        eax,ebx
 00572076    call       TParam.GetAsInteger
 0057207B    mov        ecx,eax
 0057207D    mov        edx,dword ptr [ebp-0C]
 00572080    add        edx,1
>00572083    jno        0057208A
 00572085    call       @IntOver
 0057208A    mov        eax,dword ptr [ebp-4]
 0057208D    mov        ebx,dword ptr [eax]
 0057208F    call       dword ptr [ebx+0B8]
>00572095    jmp        005722C0
 0057209A    mov        eax,ebx
 0057209C    call       TParam.GetAsFloat
 005720A1    add        esp,0FFFFFFF8
 005720A4    fstp       qword ptr [esp]
 005720A7    wait
 005720A8    mov        edx,dword ptr [ebp-0C]
 005720AB    add        edx,1
>005720AE    jno        005720B5
 005720B0    call       @IntOver
 005720B5    mov        eax,dword ptr [ebp-4]
 005720B8    mov        ecx,dword ptr [eax]
 005720BA    call       dword ptr [ecx+0C4]
>005720C0    jmp        005722C0
 005720C5    lea        edx,[ebp-20]
 005720C8    mov        eax,ebx
 005720CA    call       TParam.GetAsString
 005720CF    mov        eax,dword ptr [ebp-20]
 005720D2    call       StrToInt64
 005720D7    push       edx
 005720D8    push       eax
 005720D9    mov        edx,dword ptr [ebp-0C]
 005720DC    add        edx,1
>005720DF    jno        005720E6
 005720E1    call       @IntOver
 005720E6    mov        eax,dword ptr [ebp-4]
 005720E9    mov        ecx,dword ptr [eax]
 005720EB    call       dword ptr [ecx+0BC]
>005720F1    jmp        005722C0
 005720F6    mov        eax,ebx
 005720F8    call       TParam.GetAsCurrency
 005720FD    fdiv       dword ptr ds:[572328]; 10000:Single
 00572103    add        esp,0FFFFFFF4
 00572106    fstp       tbyte ptr [esp]
 00572109    wait
 0057210A    mov        edx,dword ptr [ebp-0C]
 0057210D    add        edx,1
>00572110    jno        00572117
 00572112    call       @IntOver
 00572117    mov        eax,dword ptr [ebp-4]
 0057211A    mov        ecx,dword ptr [eax]
 0057211C    call       dword ptr [ecx+0C8]
>00572122    jmp        005722C0
 00572127    lea        edx,[ebp-24]
 0057212A    mov        eax,ebx
 0057212C    call       TParam.GetAsString
 00572131    mov        ecx,dword ptr [ebp-24]
 00572134    mov        edx,dword ptr [ebp-0C]
 00572137    add        edx,1
>0057213A    jno        00572141
 0057213C    call       @IntOver
 00572141    mov        eax,dword ptr [ebp-4]
 00572144    mov        ebx,dword ptr [eax]
 00572146    call       dword ptr [ebx+0D0]
>0057214C    jmp        005722C0
 00572151    lea        edx,[ebp-28]
 00572154    mov        eax,ebx
 00572156    call       TParam.GetAsString
 0057215B    mov        ecx,dword ptr [ebp-28]
 0057215E    mov        edx,dword ptr [ebp-0C]
 00572161    add        edx,1
>00572164    jno        0057216B
 00572166    call       @IntOver
 0057216B    mov        eax,dword ptr [ebp-4]
 0057216E    mov        ebx,dword ptr [eax]
 00572170    call       dword ptr [ebx+0D0]
>00572176    jmp        005722C0
 0057217B    mov        eax,ebx
 0057217D    call       TParam.GetAsDateTime
 00572182    add        esp,0FFFFFFF8
 00572185    fstp       qword ptr [esp]
 00572188    wait
 00572189    mov        edx,dword ptr [ebp-0C]
 0057218C    add        edx,1
>0057218F    jno        00572196
 00572191    call       @IntOver
 00572196    mov        eax,dword ptr [ebp-4]
 00572199    mov        ecx,dword ptr [eax]
 0057219B    call       dword ptr [ecx+0DC]
>005721A1    jmp        005722C0
 005721A6    mov        eax,ebx
 005721A8    call       TParam.GetAsDateTime
 005721AD    add        esp,0FFFFFFF8
 005721B0    fstp       qword ptr [esp]
 005721B3    wait
 005721B4    mov        edx,dword ptr [ebp-0C]
 005721B7    add        edx,1
>005721BA    jno        005721C1
 005721BC    call       @IntOver
 005721C1    mov        eax,dword ptr [ebp-4]
 005721C4    mov        ecx,dword ptr [eax]
 005721C6    call       dword ptr [ecx+0E0]
>005721CC    jmp        005722C0
 005721D1    mov        eax,ebx
 005721D3    call       TParam.GetAsDateTime
 005721D8    add        esp,0FFFFFFF8
 005721DB    fstp       qword ptr [esp]
 005721DE    wait
 005721DF    mov        edx,dword ptr [ebp-0C]
 005721E2    add        edx,1
>005721E5    jno        005721EC
 005721E7    call       @IntOver
 005721EC    mov        eax,dword ptr [ebp-4]
 005721EF    mov        ecx,dword ptr [eax]
 005721F1    call       dword ptr [ecx+0E4]
>005721F7    jmp        005722C0
 005721FC    lea        edx,[ebp-2C]
 005721FF    mov        eax,ebx
 00572201    call       TParam.GetAsMemo
 00572206    mov        ecx,dword ptr [ebp-2C]
 00572209    mov        dl,1
 0057220B    mov        eax,[0041CC74]; TStringStream
 00572210    call       TStringStream.Create; TStringStream.Create
 00572215    mov        dword ptr [ebp-14],eax
 00572218    xor        eax,eax
 0057221A    push       ebp
 0057221B    push       572257
 00572220    push       dword ptr fs:[eax]
 00572223    mov        dword ptr fs:[eax],esp
 00572226    mov        edx,dword ptr [ebp-0C]
 00572229    add        edx,1
>0057222C    jno        00572233
 0057222E    call       @IntOver
 00572233    mov        ecx,dword ptr [ebp-14]
 00572236    mov        eax,dword ptr [ebp-4]
 00572239    mov        ebx,dword ptr [eax]
 0057223B    call       dword ptr [ebx+0E8]
 00572241    xor        eax,eax
 00572243    pop        edx
 00572244    pop        ecx
 00572245    pop        ecx
 00572246    mov        dword ptr fs:[eax],edx
 00572249    push       5722C0
 0057224E    mov        eax,dword ptr [ebp-14]
 00572251    call       TObject.Free
 00572256    ret
<00572257    jmp        @HandleFinally
<0057225C    jmp        0057224E
 0057225E    lea        edx,[ebp-30]
 00572261    mov        eax,ebx
 00572263    call       TParam.GetAsString
 00572268    mov        ecx,dword ptr [ebp-30]
 0057226B    mov        dl,1
 0057226D    mov        eax,[0041CC74]; TStringStream
 00572272    call       TStringStream.Create; TStringStream.Create
 00572277    mov        dword ptr [ebp-14],eax
 0057227A    xor        eax,eax
 0057227C    push       ebp
 0057227D    push       5722B9
 00572282    push       dword ptr fs:[eax]
 00572285    mov        dword ptr fs:[eax],esp
 00572288    mov        edx,dword ptr [ebp-0C]
 0057228B    add        edx,1
>0057228E    jno        00572295
 00572290    call       @IntOver
 00572295    mov        ecx,dword ptr [ebp-14]
 00572298    mov        eax,dword ptr [ebp-4]
 0057229B    mov        ebx,dword ptr [eax]
 0057229D    call       dword ptr [ebx+0F0]
 005722A3    xor        eax,eax
 005722A5    pop        edx
 005722A6    pop        ecx
 005722A7    pop        ecx
 005722A8    mov        dword ptr fs:[eax],edx
 005722AB    push       5722C0
 005722B0    mov        eax,dword ptr [ebp-14]
 005722B3    call       TObject.Free
 005722B8    ret
<005722B9    jmp        @HandleFinally
<005722BE    jmp        005722B0
 005722C0    inc        dword ptr [ebp-0C]
 005722C3    dec        dword ptr [ebp-1C]
<005722C6    jne        00571EE0
 005722CC    xor        eax,eax
 005722CE    pop        edx
 005722CF    pop        ecx
 005722D0    pop        ecx
 005722D1    mov        dword ptr fs:[eax],edx
 005722D4    push       5722E9
 005722D9    mov        eax,dword ptr [ebp-10]
 005722DC    call       TObject.Free
 005722E1    ret
<005722E2    jmp        @HandleFinally
<005722E7    jmp        005722D9
 005722E9    xor        eax,eax
 005722EB    pop        edx
 005722EC    pop        ecx
 005722ED    pop        ecx
 005722EE    mov        dword ptr fs:[eax],edx
 005722F1    push       572321
 005722F6    lea        eax,[ebp-30]
 005722F9    mov        edx,5
 005722FE    call       @LStrArrayClr
 00572303    lea        eax,[ebp-8]
 00572306    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0057230C    call       @DynArrayClear
 00572311    lea        eax,[ebp-4]
 00572314    call       @IntfClear
 00572319    ret
<0057231A    jmp        @HandleFinally
<0057231F    jmp        005722F6
 00572321    pop        ebx
 00572322    mov        esp,ebp
 00572324    pop        ebp
 00572325    ret        8
*}
//end;

//0057232C
//function sub_0057232C(?:?; ?:?; ?:?):?;
//begin
{*
 0057232C    push       ebp
 0057232D    mov        ebp,esp
 0057232F    add        esp,0FFFFFFF4
 00572332    push       ebx
 00572333    push       esi
 00572334    push       edi
 00572335    xor        ebx,ebx
 00572337    mov        dword ptr [ebp-0C],ebx
 0057233A    mov        byte ptr [ebp-5],cl
 0057233D    mov        dword ptr [ebp-4],edx
 00572340    mov        esi,eax
 00572342    xor        eax,eax
 00572344    push       ebp
 00572345    push       572531
 0057234A    push       dword ptr fs:[eax]
 0057234D    mov        dword ptr fs:[eax],esp
 00572350    xor        ebx,ebx
 00572352    mov        al,byte ptr [ebp-5]
 00572355    sub        al,1
>00572357    jb         005723CF
>00572359    je         00572364
 0057235B    dec        al
>0057235D    je         00572399
>0057235F    jmp        00572465
 00572364    mov        edx,dword ptr [esi+178]; TZQuery.?f178:Integer
 0057236A    add        edx,1
>0057236D    jno        00572374
 0057236F    call       @IntOver
 00572374    mov        eax,esi
 00572376    call       00571844
 0057237B    test       al,al
>0057237D    je         00572392
 0057237F    add        dword ptr [esi+178],1; TZQuery.?f178:Integer
>00572386    jno        0057238D
 00572388    call       @IntOver
>0057238D    jmp        00572465
 00572392    mov        bl,2
>00572394    jmp        00572465
 00572399    mov        eax,esi
 0057239B    call       005716F0
 005723A0    cmp        dword ptr [esi+178],1; TZQuery.?f178:Integer
>005723A7    jle        005723C8
 005723A9    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 005723AF    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>005723B3    jle        005723C8
 005723B5    sub        dword ptr [esi+178],1
>005723BC    jno        005723C3
 005723BE    call       @IntOver
>005723C3    jmp        00572465
 005723C8    mov        bl,1
>005723CA    jmp        00572465
 005723CF    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 005723D5    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 005723D8    cmp        eax,dword ptr [esi+178]; TZQuery.?f178:Integer
>005723DE    jle        005723E7
 005723E0    mov        eax,esi
 005723E2    call       005716F0
 005723E7    mov        edi,dword ptr [esi+178]; TZQuery.?f178:Integer
 005723ED    test       edi,edi
>005723EF    jne        00572424
 005723F1    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 005723F7    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>005723FB    jne        00572409
 005723FD    mov        edx,1
 00572402    mov        eax,esi
 00572404    call       00571844
 00572409    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 0057240F    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00572412    mov        edx,1
 00572417    call       Min
 0057241C    mov        dword ptr [esi+178],eax; TZQuery.?f178:Integer
>00572422    jmp        00572457
 00572424    mov        edx,edi
 00572426    mov        eax,esi
 00572428    call       00571844
 0057242D    test       al,al
>0057242F    jne        00572457
 00572431    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 00572437    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 0057243A    mov        edx,dword ptr [esi+178]; TZQuery.?f178:Integer
 00572440    call       Min
 00572445    mov        edx,eax
 00572447    mov        eax,1
 0057244C    call       Max
 00572451    mov        dword ptr [esi+178],eax; TZQuery.?f178:Integer
 00572457    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 0057245D    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>00572461    jne        00572465
 00572463    mov        bl,3
 00572465    test       bl,bl
>00572467    jne        005724EF
 0057246D    mov        edx,dword ptr [esi+178]; TZQuery.?f178:Integer
 00572473    sub        edx,1
>00572476    jno        0057247D
 00572478    call       @IntOver
 0057247D    mov        eax,dword ptr [esi+188]; TZQuery.?f188:TZSortedList
 00572483    call       TList.Get
 00572488    mov        edi,eax
 0057248A    mov        eax,dword ptr [esi+1C8]; TZQuery.?f1C8:IZResultSet
 00572490    mov        edx,dword ptr [eax]
 00572492    call       dword ptr [edx+0F4]
 00572498    cmp        edi,eax
>0057249A    je         005724AC
 0057249C    mov        edx,edi
 0057249E    mov        eax,dword ptr [esi+1C8]; TZQuery.?f1C8:IZResultSet
 005724A4    mov        ecx,dword ptr [eax]
 005724A6    call       dword ptr [ecx+0F8]
 005724AC    mov        edx,dword ptr [esi+17C]; TZQuery.?f17C:TZRowAccessor
 005724B2    mov        eax,dword ptr [ebp-4]
 005724B5    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
 005724B8    mov        dword ptr [eax],edi
 005724BA    mov        eax,dword ptr [esi+17C]; TZQuery.?f17C:TZRowAccessor
 005724C0    push       eax
 005724C1    mov        ecx,dword ptr [esi+30]; TZQuery.FFields:TFields
 005724C4    mov        edx,dword ptr [esi+190]; TZQuery.?f190:TIntegerDynArray
 005724CA    mov        eax,dword ptr [esi+1C8]; TZQuery.?f1C8:IZResultSet
 005724D0    call       005692D0
 005724D5    mov        eax,dword ptr [esi+17C]; TZQuery.?f17C:TZRowAccessor
 005724DB    mov        eax,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 005724DE    mov        byte ptr [eax+5],0
 005724E2    mov        edx,dword ptr [ebp-4]
 005724E5    mov        eax,esi
 005724E7    mov        ecx,dword ptr [eax]
 005724E9    call       dword ptr [ecx+120]; TDataSet.GetCalcFields
 005724EF    cmp        bl,3
 005724F2    sete       al
 005724F5    and        al,byte ptr [ebp+8]
>005724F8    je         0057251B
 005724FA    lea        edx,[ebp-0C]
 005724FD    mov        eax,[0061BD1C]; ^#122.sResString63:TResStringRec
 00572502    call       LoadResString
 00572507    mov        ecx,dword ptr [ebp-0C]
 0057250A    mov        dl,1
 0057250C    mov        eax,[0057089C]; EZDatabaseError
 00572511    call       EZDatabaseError.Create; EZDatabaseError.Create
 00572516    call       @RaiseExcept
 0057251B    xor        eax,eax
 0057251D    pop        edx
 0057251E    pop        ecx
 0057251F    pop        ecx
 00572520    mov        dword ptr fs:[eax],edx
 00572523    push       572538
 00572528    lea        eax,[ebp-0C]
 0057252B    call       @LStrClr
 00572530    ret
<00572531    jmp        @HandleFinally
<00572536    jmp        00572528
 00572538    mov        eax,ebx
 0057253A    pop        edi
 0057253B    pop        esi
 0057253C    pop        ebx
 0057253D    mov        esp,ebp
 0057253F    pop        ebp
 00572540    ret        4
*}
//end;

//00572544
//function sub_00572544(?:TZAbstractRODataset; ?:?):?;
//begin
{*
 00572544    push       ebp
 00572545    mov        ebp,esp
 00572547    push       0
 00572549    push       ebx
 0057254A    push       esi
 0057254B    push       edi
 0057254C    mov        edi,edx
 0057254E    mov        esi,eax
 00572550    xor        eax,eax
 00572552    push       ebp
 00572553    push       5726E5
 00572558    push       dword ptr fs:[eax]
 0057255B    mov        dword ptr fs:[eax],esp
 0057255E    xor        eax,eax
 00572560    mov        dword ptr [edi],eax
 00572562    xor        eax,eax
 00572564    mov        al,byte ptr [esi+9D]; TZAbstractRODataset.FState:TDataSetState
 0057256A    cmp        eax,0A
>0057256D    ja         005726C9
 00572573    mov        al,byte ptr [eax+572580]
 00572579    jmp        dword ptr [eax*4+57258B]
 00572579    db         0
 00572579    db         1
 00572579    db         2
 00572579    db         2
 00572579    db         0
 00572579    db         3
 00572579    db         0
 00572579    db         4
 00572579    db         4
 00572579    db         4
 00572579    db         1
 00572579    dd         5726C9
 00572579    dd         57259F
 00572579    dd         5725BC
 00572579    dd         5725CA
 00572579    dd         5725D4
 0057259F    mov        eax,esi
 005725A1    call       TDataSet.IsEmpty
 005725A6    test       al,al
>005725A8    jne        005726C9
 005725AE    mov        eax,esi
 005725B0    call       TDataSet.ActiveBuffer
 005725B5    mov        dword ptr [edi],eax
>005725B7    jmp        005726C9
 005725BC    mov        eax,esi
 005725BE    call       TDataSet.ActiveBuffer
 005725C3    mov        dword ptr [edi],eax
>005725C5    jmp        005726C9
 005725CA    mov        eax,dword ptr [esi+60]; TZAbstractRODataset.FCalcBuffer:PChar
 005725CD    mov        dword ptr [edi],eax
>005725CF    jmp        005726C9
 005725D4    mov        edx,dword ptr [esi+178]; TZAbstractRODataset.?f178:Integer
 005725DA    sub        edx,1
>005725DD    jno        005725E4
 005725DF    call       @IntOver
 005725E4    mov        eax,dword ptr [esi+188]; TZAbstractRODataset.?f188:TZSortedList
 005725EA    call       TList.Get
 005725EF    mov        ebx,eax
 005725F1    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 005725F7    mov        edx,dword ptr [eax]
 005725F9    call       dword ptr [edx+0F4]
 005725FF    cmp        ebx,eax
>00572601    je         0057260A
 00572603    mov        eax,esi
 00572605    call       005716F0
 0057260A    cmp        byte ptr [esi+9D],8; TZAbstractRODataset.FState:TDataSetState
>00572611    jne        0057261D
 00572613    mov        eax,dword ptr [esi+180]; TZAbstractRODataset.?f180:dword
 00572619    mov        dword ptr [edi],eax
>0057261B    jmp        00572625
 0057261D    mov        eax,dword ptr [esi+184]; TZAbstractRODataset.?f184:dword
 00572623    mov        dword ptr [edi],eax
 00572625    mov        eax,dword ptr [edi]
 00572627    cmp        ebx,dword ptr [eax]
>00572629    je         005726C9
 0057262F    mov        edx,dword ptr [edi]
 00572631    mov        eax,dword ptr [esi+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572637    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 0057263A    call       004C9564
 0057263F    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00572645    mov        edx,dword ptr [eax]
 00572647    call       dword ptr [edx+0F4]
 0057264D    cmp        ebx,eax
>0057264F    je         00572665
 00572651    mov        edx,ebx
 00572653    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00572659    mov        ecx,dword ptr [eax]
 0057265B    call       dword ptr [ecx+0F8]
 00572661    test       al,al
>00572663    je         005726C5
 00572665    cmp        byte ptr [esi+9D],8; TZAbstractRODataset.FState:TDataSetState
>0057266C    jne        00572696
 0057266E    lea        eax,[ebp-4]
 00572671    call       @IntfClear
 00572676    push       eax
 00572677    push       5726F4
 0057267C    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00572682    push       eax
 00572683    mov        eax,dword ptr [eax]
 00572685    call       dword ptr [eax]
 00572687    test       eax,eax
>00572689    jne        00572696
 0057268B    mov        eax,dword ptr [ebp-4]
 0057268E    mov        edx,dword ptr [eax]
 00572690    call       dword ptr [edx+218]
 00572696    mov        eax,dword ptr [esi+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 0057269C    push       eax
 0057269D    mov        ecx,dword ptr [esi+30]; TZAbstractRODataset.FFields:TFields
 005726A0    mov        edx,dword ptr [esi+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 005726A6    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 005726AC    call       005692D0
 005726B1    mov        eax,dword ptr [edi]
 005726B3    mov        dword ptr [eax],ebx
 005726B5    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 005726BB    mov        edx,dword ptr [eax]
 005726BD    call       dword ptr [edx+1E8]
>005726C3    jmp        005726C9
 005726C5    xor        eax,eax
 005726C7    mov        dword ptr [edi],eax
 005726C9    cmp        dword ptr [edi],0
 005726CC    setne      bl
 005726CF    xor        eax,eax
 005726D1    pop        edx
 005726D2    pop        ecx
 005726D3    pop        ecx
 005726D4    mov        dword ptr fs:[eax],edx
 005726D7    push       5726EC
 005726DC    lea        eax,[ebp-4]
 005726DF    call       @IntfClear
 005726E4    ret
<005726E5    jmp        @HandleFinally
<005726EA    jmp        005726DC
 005726EC    mov        eax,ebx
 005726EE    pop        edi
 005726EF    pop        esi
 005726F0    pop        ebx
 005726F1    pop        ecx
 005726F2    pop        ebp
 005726F3    ret
*}
//end;

//00572704
procedure TZAbstractRODataset.GetFieldData(Field:TField; Buffer:Pointer; NativeFormat:Boolean);
begin
{*
 00572704    push       ebp
 00572705    mov        ebp,esp
 00572707    push       esi
 00572708    mov        esi,ecx
 0057270A    mov        ecx,dword ptr [ebp+8]
 0057270D    cmp        byte ptr [edx+40],18; TField.FDataType:TFieldType
>00572711    jne        00572715
 00572713    mov        cl,1
 00572715    push       ecx
 00572716    mov        ecx,esi
 00572718    call       TDataSet.GetFieldData
 0057271D    pop        esi
 0057271E    pop        ebp
 0057271F    ret        4
*}
end;

//00572724
//function TZAbstractRODataset.GetFieldData(Field:TField; Buffer:Pointer):?;
//begin
{*
 00572724    push       ebp
 00572725    mov        ebp,esp
 00572727    push       ecx
 00572728    mov        ecx,5
 0057272D    push       0
 0057272F    push       0
 00572731    dec        ecx
<00572732    jne        0057272D
 00572734    xchg       ecx,dword ptr [ebp-4]
 00572737    push       ebx
 00572738    push       esi
 00572739    push       edi
 0057273A    mov        dword ptr [ebp-4],ecx
 0057273D    mov        edi,edx
 0057273F    mov        ebx,eax
 00572741    xor        eax,eax
 00572743    push       ebp
 00572744    push       57297B
 00572749    push       dword ptr fs:[eax]
 0057274C    mov        dword ptr fs:[eax],esp
 0057274F    lea        edx,[ebp-0C]
 00572752    mov        eax,ebx
 00572754    call       00572544
 00572759    test       al,al
>0057275B    je         0057293B
 00572761    mov        edx,edi
 00572763    mov        eax,dword ptr [ebx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00572769    call       0056BB08
 0057276E    mov        esi,eax
 00572770    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572776    mov        edx,dword ptr [ebp-0C]
 00572779    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 0057277C    cmp        dword ptr [ebp-4],0
>00572780    je         005728FB
 00572786    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 00572789    add        al,0F7
 0057278B    sub        al,3
>0057278D    jb         005727A8
>0057278F    je         0057280C
 00572791    add        al,0FD
 00572793    sub        al,4
>00572795    jb         00572879
 0057279B    sub        al,5
>0057279D    je         0057289F
>005727A3    jmp        005728C8
 005727A8    cmp        byte ptr [edi+40],0A; TField.FDataType:TFieldType
>005727AC    je         005727DD
 005727AE    lea        ecx,[ebp-5]
 005727B1    mov        edx,esi
 005727B3    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005727B9    call       004CB380
 005727BE    add        esp,0FFFFFFF8
 005727C1    fstp       qword ptr [esp]
 005727C4    wait
 005727C5    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 005727C8    mov        edx,dword ptr [ebp-4]
 005727CB    call       0056B39C
 005727D0    mov        al,byte ptr [ebp-5]
 005727D3    xor        al,1
 005727D5    mov        byte ptr [ebp-5],al
>005727D8    jmp        0057293F
 005727DD    lea        ecx,[ebp-5]
 005727E0    mov        edx,esi
 005727E2    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005727E8    call       004CB24C
 005727ED    add        esp,0FFFFFFF8
 005727F0    fstp       qword ptr [esp]
 005727F3    wait
 005727F4    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 005727F7    mov        edx,dword ptr [ebp-4]
 005727FA    call       0056B39C
 005727FF    mov        al,byte ptr [ebp-5]
 00572802    xor        al,1
 00572804    mov        byte ptr [ebp-5],al
>00572807    jmp        0057293F
 0057280C    lea        eax,[ebp-20]
 0057280F    push       eax
 00572810    lea        ecx,[ebp-5]
 00572813    mov        edx,esi
 00572815    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 0057281B    call       004CAF54
 00572820    mov        eax,dword ptr [ebp-20]
 00572823    lea        edx,[ebp-1C]
 00572826    call       004BF6E4
 0057282B    lea        edx,[ebp-1C]
 0057282E    mov        eax,dword ptr [ebp-4]
 00572831    call       @VarCopy
 00572836    lea        ecx,[ebp-5]
 00572839    mov        edx,esi
 0057283B    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572841    call       004C9574
 00572846    add        eax,2
 00572849    push       eax
 0057284A    mov        edx,esi
 0057284C    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572852    call       004C9600
 00572857    mov        ecx,eax
 00572859    sub        ecx,2
>0057285C    jno        00572863
 0057285E    call       @IntOver
 00572863    mov        edx,dword ptr [ebp-4]
 00572866    pop        eax
 00572867    call       Move
 0057286C    mov        al,byte ptr [ebp-5]
 0057286F    xor        al,1
 00572871    mov        byte ptr [ebp-5],al
>00572874    jmp        0057293F
 00572879    lea        eax,[ebp-24]
 0057287C    push       eax
 0057287D    lea        ecx,[ebp-5]
 00572880    mov        edx,esi
 00572882    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572888    call       004CB5A4
 0057288D    mov        eax,dword ptr [ebp-24]
 00572890    mov        edx,dword ptr [eax]
 00572892    call       dword ptr [edx+0C]
 00572895    xor        al,1
 00572897    mov        byte ptr [ebp-5],al
>0057289A    jmp        0057293F
 0057289F    lea        eax,[ebp-28]
 005728A2    push       eax
 005728A3    lea        ecx,[ebp-5]
 005728A6    mov        edx,esi
 005728A8    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005728AE    call       004C9BDC
 005728B3    mov        edx,dword ptr [ebp-28]
 005728B6    mov        eax,dword ptr [ebp-4]
 005728B9    call       @WStrAsg
 005728BE    mov        al,byte ptr [ebp-5]
 005728C1    xor        al,1
 005728C3    mov        byte ptr [ebp-5],al
>005728C6    jmp        0057293F
 005728C8    lea        ecx,[ebp-5]
 005728CB    mov        edx,esi
 005728CD    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005728D3    call       004C9574
 005728D8    push       eax
 005728D9    mov        edx,esi
 005728DB    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005728E1    call       004C9600
 005728E6    mov        ecx,eax
 005728E8    mov        edx,dword ptr [ebp-4]
 005728EB    pop        eax
 005728EC    call       Move
 005728F1    mov        al,byte ptr [ebp-5]
 005728F4    xor        al,1
 005728F6    mov        byte ptr [ebp-5],al
>005728F9    jmp        0057293F
 005728FB    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 005728FE    add        al,0F1
 00572900    sub        al,4
>00572902    jae        00572927
 00572904    lea        eax,[ebp-2C]
 00572907    push       eax
 00572908    lea        ecx,[ebp-5]
 0057290B    mov        edx,esi
 0057290D    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572913    call       004CB5A4
 00572918    mov        eax,dword ptr [ebp-2C]
 0057291B    mov        edx,dword ptr [eax]
 0057291D    call       dword ptr [edx+0C]
 00572920    xor        al,1
 00572922    mov        byte ptr [ebp-5],al
>00572925    jmp        0057293F
 00572927    mov        edx,esi
 00572929    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 0057292F    call       004C9638
 00572934    xor        al,1
 00572936    mov        byte ptr [ebp-5],al
>00572939    jmp        0057293F
 0057293B    mov        byte ptr [ebp-5],0
 0057293F    xor        eax,eax
 00572941    pop        edx
 00572942    pop        ecx
 00572943    pop        ecx
 00572944    mov        dword ptr fs:[eax],edx
 00572947    push       572982
 0057294C    lea        eax,[ebp-2C]
 0057294F    call       @IntfClear
 00572954    lea        eax,[ebp-28]
 00572957    call       @WStrClr
 0057295C    lea        eax,[ebp-24]
 0057295F    call       @IntfClear
 00572964    lea        eax,[ebp-20]
 00572967    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 0057296D    call       @DynArrayClear
 00572972    lea        eax,[ebp-1C]
 00572975    call       @VarClr
 0057297A    ret
<0057297B    jmp        @HandleFinally
<00572980    jmp        0057294C
 00572982    mov        al,byte ptr [ebp-5]
 00572985    pop        edi
 00572986    pop        esi
 00572987    pop        ebx
 00572988    mov        esp,ebp
 0057298A    pop        ebp
 0057298B    ret
*}
//end;

//0057298C
procedure TZAbstractRODataset.SetFieldData(Field:TField; Buffer:Pointer; NativeFormat:Boolean);
begin
{*
 0057298C    push       ebp
 0057298D    mov        ebp,esp
 0057298F    push       esi
 00572990    mov        esi,ecx
 00572992    mov        ecx,dword ptr [ebp+8]
 00572995    cmp        byte ptr [edx+40],18; TField.FDataType:TFieldType
>00572999    jne        0057299D
 0057299B    mov        cl,1
 0057299D    push       ecx
 0057299E    mov        ecx,esi
 005729A0    call       TDataSet.SetFieldData
 005729A5    pop        esi
 005729A6    pop        ebp
 005729A7    ret        4
*}
end;

//005729AC
//procedure TZAbstractRODataset.SetFieldData(?:?; ?:?; Field:TField; Buffer:Pointer);
//begin
{*
 005729AC    push       ebp
 005729AD    mov        ebp,esp
 005729AF    push       ecx
 005729B0    mov        ecx,6
 005729B5    push       0
 005729B7    push       0
 005729B9    dec        ecx
<005729BA    jne        005729B5
 005729BC    xchg       ecx,dword ptr [ebp-4]
 005729BF    push       ebx
 005729C0    push       esi
 005729C1    push       edi
 005729C2    mov        dword ptr [ebp-4],ecx
 005729C5    mov        esi,edx
 005729C7    mov        ebx,eax
 005729C9    xor        eax,eax
 005729CB    push       ebp
 005729CC    push       572CD5
 005729D1    push       dword ptr fs:[eax]
 005729D4    mov        dword ptr fs:[eax],esp
 005729D7    mov        byte ptr [ebp-9],0
 005729DB    mov        eax,ebx
 005729DD    call       TDataSet.GetActive
 005729E2    test       al,al
>005729E4    jne        00572A07
 005729E6    lea        edx,[ebp-10]
 005729E9    mov        eax,[0061BF8C]; ^#122.sResString62:TResStringRec
 005729EE    call       LoadResString
 005729F3    mov        ecx,dword ptr [ebp-10]
 005729F6    mov        dl,1
 005729F8    mov        eax,[0057089C]; EZDatabaseError
 005729FD    call       EZDatabaseError.Create; EZDatabaseError.Create
 00572A02    call       @RaiseExcept
 00572A07    cmp        byte ptr [ebx+1A9],0; TZAbstractRODataset.?f1A9:byte
>00572A0E    jne        00572A1D
 00572A10    cmp        byte ptr [esi+42],0
>00572A14    jne        00572A1D
 00572A16    mov        eax,ebx
 00572A18    call       005717F0
 00572A1D    cmp        byte ptr [esi+41],0
>00572A21    je         00572A6D
 00572A23    cmp        byte ptr [esi+42],2
>00572A27    je         00572A6D
 00572A29    mov        al,byte ptr [ebx+9D]; TZAbstractRODataset.FState:TDataSetState
 00572A2F    add        al,0FC
 00572A31    sub        al,3
>00572A33    jb         00572A6D
 00572A35    add        al,0FD
 00572A37    sub        al,3
>00572A39    jb         00572A6D
 00572A3B    push       0
 00572A3D    lea        edx,[ebp-1C]
 00572A40    mov        eax,esi
 00572A42    call       TField.GetDisplayName
 00572A47    mov        eax,dword ptr [ebp-1C]
 00572A4A    mov        dword ptr [ebp-18],eax
 00572A4D    mov        byte ptr [ebp-14],0B
 00572A51    lea        eax,[ebp-18]
 00572A54    push       eax
 00572A55    lea        edx,[ebp-20]
 00572A58    mov        eax,[0061BC50]; ^SFieldReadOnly:TResStringRec
 00572A5D    call       LoadResString
 00572A62    mov        eax,dword ptr [ebp-20]
 00572A65    xor        ecx,ecx
 00572A67    pop        edx
 00572A68    call       DatabaseErrorFmt
 00572A6D    mov        al,byte ptr [ebx+9D]; TZAbstractRODataset.FState:TDataSetState
 00572A73    add        al,0FE
 00572A75    sub        al,6
>00572A77    jb         00572A94
 00572A79    sub        al,3
>00572A7B    je         00572A94
 00572A7D    lea        edx,[ebp-24]
 00572A80    mov        eax,[0061B87C]; ^SNotEditing:TResStringRec
 00572A85    call       LoadResString
 00572A8A    mov        eax,dword ptr [ebp-24]
 00572A8D    mov        edx,ebx
 00572A8F    call       DatabaseError
 00572A94    lea        edx,[ebp-8]
 00572A97    mov        eax,ebx
 00572A99    call       00572544
 00572A9E    test       al,al
>00572AA0    je         00572C58
 00572AA6    mov        edx,esi
 00572AA8    mov        eax,dword ptr [ebx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00572AAE    call       0056BB08
 00572AB3    mov        edi,eax
 00572AB5    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572ABB    mov        edx,dword ptr [ebp-8]
 00572ABE    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 00572AC1    mov        al,byte ptr [ebx+9D]; TZAbstractRODataset.FState:TDataSetState
 00572AC7    add        al,0FE
 00572AC9    sub        al,2
>00572ACB    jae        00572AD7
 00572ACD    mov        edx,dword ptr [ebp-4]
 00572AD0    mov        eax,esi
 00572AD2    call       TField.Validate
 00572AD7    cmp        dword ptr [ebp-4],0
>00572ADB    je         00572C2F
 00572AE1    mov        al,byte ptr [esi+40]
 00572AE4    sub        al,9
>00572AE6    je         00572AEC
 00572AE8    sub        al,2
>00572AEA    jne        00572B10
 00572AEC    mov        edx,dword ptr [ebp-4]
 00572AEF    mov        al,byte ptr [esi+40]
 00572AF2    call       0056B3E4
 00572AF7    add        esp,0FFFFFFF8
 00572AFA    fstp       qword ptr [esp]
 00572AFD    wait
 00572AFE    mov        edx,edi
 00572B00    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572B06    call       004CD584
>00572B0B    jmp        00572C3C
 00572B10    cmp        byte ptr [esi+40],0A
>00572B14    jne        00572B3A
 00572B16    mov        edx,dword ptr [ebp-4]
 00572B19    mov        al,byte ptr [esi+40]
 00572B1C    call       0056B3E4
 00572B21    add        esp,0FFFFFFF8
 00572B24    fstp       qword ptr [esp]
 00572B27    wait
 00572B28    mov        edx,edi
 00572B2A    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572B30    call       004CD450
>00572B35    jmp        00572C3C
 00572B3A    cmp        byte ptr [esi+40],0C
>00572B3E    jne        00572B60
 00572B40    lea        edx,[ebp-28]
 00572B43    mov        eax,dword ptr [ebp-4]
 00572B46    call       004BF7A8
 00572B4B    mov        ecx,dword ptr [ebp-28]
 00572B4E    mov        edx,edi
 00572B50    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572B56    call       004CD104
>00572B5B    jmp        00572C3C
 00572B60    cmp        byte ptr [esi+40],18
>00572B64    jne        00572B7D
 00572B66    mov        eax,dword ptr [ebp-4]
 00572B69    mov        ecx,dword ptr [eax]
 00572B6B    mov        edx,edi
 00572B6D    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572B73    call       004CCF68
>00572B78    jmp        00572C3C
 00572B7D    cmp        byte ptr [esi+42],0
>00572B81    jne        00572BF7
 00572B83    cmp        byte ptr [esi+40],1
>00572B87    jne        00572BF7
 00572B89    mov        edx,edi
 00572B8B    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572B91    call       004C9600
 00572B96    push       eax
 00572B97    lea        eax,[ebp-2C]
 00572B9A    mov        edx,dword ptr [ebp-4]
 00572B9D    call       @LStrFromPChar
 00572BA2    mov        eax,dword ptr [ebp-2C]
 00572BA5    call       @LStrLen
 00572BAA    pop        edx
 00572BAB    cmp        edx,eax
>00572BAD    jle        00572BF7
 00572BAF    lea        ecx,[ebp-9]
 00572BB2    mov        edx,edi
 00572BB4    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572BBA    call       004C9574
 00572BBF    push       eax
 00572BC0    lea        eax,[ebp-30]
 00572BC3    mov        edx,dword ptr [ebp-4]
 00572BC6    call       @LStrFromPChar
 00572BCB    mov        eax,dword ptr [ebp-30]
 00572BCE    call       @LStrLen
 00572BD3    mov        ecx,eax
 00572BD5    add        ecx,1
>00572BD8    jno        00572BDF
 00572BDA    call       @IntOver
 00572BDF    mov        eax,dword ptr [ebp-4]
 00572BE2    pop        edx
 00572BE3    call       Move
 00572BE8    mov        edx,edi
 00572BEA    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572BF0    call       004CB940
>00572BF5    jmp        00572C3C
 00572BF7    lea        ecx,[ebp-9]
 00572BFA    mov        edx,edi
 00572BFC    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572C02    call       004C9574
 00572C07    push       eax
 00572C08    mov        edx,edi
 00572C0A    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572C10    call       004C9600
 00572C15    mov        ecx,eax
 00572C17    mov        eax,dword ptr [ebp-4]
 00572C1A    pop        edx
 00572C1B    call       Move
 00572C20    mov        edx,edi
 00572C22    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572C28    call       004CB940
>00572C2D    jmp        00572C3C
 00572C2F    mov        edx,edi
 00572C31    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572C37    call       004CB9E4
 00572C3C    mov        al,byte ptr [ebx+9D]; TZAbstractRODataset.FState:TDataSetState
 00572C42    add        al,0FB
 00572C44    sub        al,3
>00572C46    jb         00572C79
 00572C48    mov        ecx,esi
 00572C4A    xor        edx,edx
 00572C4C    mov        eax,ebx
 00572C4E    mov        edi,dword ptr [eax]
 00572C50    call       dword ptr [edi+0AC]; TDataSet.DataEvent
>00572C56    jmp        00572C79
 00572C58    lea        edx,[ebp-34]
 00572C5B    mov        eax,[0061BCB8]; ^#122.sResString33:TResStringRec
 00572C60    call       LoadResString
 00572C65    mov        ecx,dword ptr [ebp-34]
 00572C68    mov        dl,1
 00572C6A    mov        eax,[0057089C]; EZDatabaseError
 00572C6F    call       EZDatabaseError.Create; EZDatabaseError.Create
 00572C74    call       @RaiseExcept
 00572C79    cmp        byte ptr [esi+42],0
>00572C7D    jne        00572C97
 00572C7F    mov        eax,dword ptr [ebx+180]; TZAbstractRODataset.?f180:dword
 00572C85    mov        dword ptr [eax],0FFFFFFFF
 00572C8B    mov        eax,dword ptr [ebx+184]; TZAbstractRODataset.?f184:dword
 00572C91    mov        dword ptr [eax],0FFFFFFFF
 00572C97    xor        eax,eax
 00572C99    pop        edx
 00572C9A    pop        ecx
 00572C9B    pop        ecx
 00572C9C    mov        dword ptr fs:[eax],edx
 00572C9F    push       572CDC
 00572CA4    lea        eax,[ebp-34]
 00572CA7    mov        edx,3
 00572CAC    call       @LStrArrayClr
 00572CB1    lea        eax,[ebp-28]
 00572CB4    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 00572CBA    call       @DynArrayClear
 00572CBF    lea        eax,[ebp-24]
 00572CC2    mov        edx,3
 00572CC7    call       @LStrArrayClr
 00572CCC    lea        eax,[ebp-10]
 00572CCF    call       @LStrClr
 00572CD4    ret
<00572CD5    jmp        @HandleFinally
<00572CDA    jmp        00572CA4
 00572CDC    pop        edi
 00572CDD    pop        esi
 00572CDE    pop        ebx
 00572CDF    mov        esp,ebp
 00572CE1    pop        ebp
 00572CE2    ret
*}
//end;

//00572CE4
function sub_00572CE4:Boolean;
begin
{*
 00572CE4    cmp        dword ptr [eax+1C8],0; TZQuery.?f1C8:IZResultSet
 00572CEB    setne      al
 00572CEE    ret
*}
end;

//00572CF0
procedure TZAbstractRODataset.GetRecordSize;
begin
{*
 00572CF0    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572CF6    mov        eax,dword ptr [eax+4]; TZRowAccessor.?f4:dword
 00572CF9    cmp        eax,0FFFF
>00572CFE    jbe        00572D05
 00572D00    call       @BoundErr
 00572D05    ret
*}
end;

//00572D08
procedure TZAbstractRODataset.AllocRecordBuffer;
begin
{*
 00572D08    push       ebp
 00572D09    mov        ebp,esp
 00572D0B    push       ebx
 00572D0C    mov        ebx,eax
 00572D0E    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572D14    call       004C951C
 00572D19    pop        ebx
 00572D1A    pop        ebp
 00572D1B    ret
*}
end;

//00572D1C
//procedure TZAbstractRODataset.FreeRecordBuffer(?:?; var Buffer:PChar);
//begin
{*
 00572D1C    push       ebp
 00572D1D    mov        ebp,esp
 00572D1F    mov        edx,dword ptr [edx]
 00572D21    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00572D27    call       004C89BC
 00572D2C    pop        ebp
 00572D2D    ret
*}
//end;

//00572D30
procedure sub_00572D30;
begin
{*
 00572D30    push       ebp
 00572D31    mov        ebp,esp
 00572D33    push       ebx
 00572D34    mov        ebx,eax
 00572D36    mov        eax,dword ptr [ebx+1C0]; TZQuery.Connection:TZConnection
 00572D3C    call       005779A4
 00572D41    xor        edx,edx
 00572D43    mov        eax,ebx
 00572D45    call       00571844
 00572D4A    mov        eax,ebx
 00572D4C    call       TDataSet.GetActive
 00572D51    test       al,al
>00572D53    je         00572D5C
 00572D55    mov        eax,ebx
 00572D57    call       TDataSet.UpdateCursorPos
 00572D5C    mov        eax,dword ptr [ebx+1C0]; TZQuery.Connection:TZConnection
 00572D62    call       005779F8
 00572D67    pop        ebx
 00572D68    pop        ebp
 00572D69    ret
*}
end;

//00572D6C
procedure sub_00572D6C;
begin
{*
 00572D6C    push       ebp
 00572D6D    mov        ebp,esp
 00572D6F    xor        ecx,ecx
 00572D71    push       ecx
 00572D72    push       ecx
 00572D73    push       ecx
 00572D74    push       ecx
 00572D75    push       ebx
 00572D76    mov        dword ptr [ebp-4],eax
 00572D79    xor        eax,eax
 00572D7B    push       ebp
 00572D7C    push       572F07
 00572D81    push       dword ptr fs:[eax]
 00572D84    mov        dword ptr fs:[eax],esp
 00572D87    mov        eax,dword ptr [ebp-4]
 00572D8A    call       00571688
 00572D8F    mov        eax,dword ptr [ebp-4]
 00572D92    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 00572D98    call       005779A4
 00572D9D    xor        eax,eax
 00572D9F    push       ebp
 00572DA0    push       572ED4
 00572DA5    push       dword ptr fs:[eax]
 00572DA8    mov        dword ptr fs:[eax],esp
 00572DAB    mov        eax,dword ptr [ebp-4]
 00572DAE    call       TDataSet.GetActive
 00572DB3    test       al,al
>00572DB5    je         00572DBF
 00572DB7    mov        eax,dword ptr [ebp-4]
 00572DBA    call       TDataSet.Close
 00572DBF    mov        eax,dword ptr [ebp-4]
 00572DC2    mov        edx,dword ptr [eax]
 00572DC4    call       dword ptr [edx+25C]; TZQuery.sub_00571750
 00572DCA    mov        eax,dword ptr [ebp-4]
 00572DCD    mov        edx,dword ptr [eax]
 00572DCF    call       dword ptr [edx+8C]; TDataSet.CheckInactive
 00572DD5    mov        eax,dword ptr [ebp-4]
 00572DD8    cmp        dword ptr [eax+1C4],0; TZQuery.?f1C4:IZPreparedStatement
>00572DDF    je         00572E01
 00572DE1    lea        edx,[ebp-8]
 00572DE4    mov        eax,dword ptr [ebp-4]
 00572DE7    mov        eax,dword ptr [eax+1C4]; TZQuery.?f1C4:IZPreparedStatement
 00572DED    mov        ecx,dword ptr [eax]
 00572DEF    call       dword ptr [ecx+88]
 00572DF5    mov        eax,dword ptr [ebp-8]
 00572DF8    mov        edx,dword ptr [eax]
 00572DFA    call       dword ptr [edx+5C]
 00572DFD    test       al,al
>00572DFF    je         00572E3E
 00572E01    lea        eax,[ebp-0C]
 00572E04    push       eax
 00572E05    mov        eax,dword ptr [ebp-4]
 00572E08    mov        eax,dword ptr [eax+1B0]; TZQuery.?f1B0:TZSQLStrings
 00572E0E    xor        edx,edx
 00572E10    call       00570240
 00572E15    mov        edx,dword ptr [eax+4]
 00572E18    mov        eax,dword ptr [ebp-4]
 00572E1B    mov        ecx,dword ptr [eax+1BC]; TZQuery.?f1BC:TStringList
 00572E21    mov        eax,dword ptr [ebp-4]
 00572E24    mov        ebx,dword ptr [eax]
 00572E26    call       dword ptr [ebx+264]; TZQuery.sub_0056ED54
 00572E2C    mov        edx,dword ptr [ebp-0C]
 00572E2F    mov        eax,dword ptr [ebp-4]
 00572E32    add        eax,1C4; TZQuery.?f1C4:IZPreparedStatement
 00572E37    call       @IntfCopy
>00572E3C    jmp        00572E5B
 00572E3E    mov        eax,dword ptr [ebp-4]
 00572E41    cmp        dword ptr [eax+1C4],0; TZQuery.?f1C4:IZPreparedStatement
>00572E48    je         00572E5B
 00572E4A    mov        eax,dword ptr [ebp-4]
 00572E4D    mov        eax,dword ptr [eax+1C4]; TZQuery.?f1C4:IZPreparedStatement
 00572E53    mov        edx,dword ptr [eax]
 00572E55    call       dword ptr [edx+0FC]
 00572E5B    mov        eax,dword ptr [ebp-4]
 00572E5E    mov        eax,dword ptr [eax+1B4]; TZQuery.?f1B4:TParams
 00572E64    push       eax
 00572E65    mov        eax,dword ptr [ebp-4]
 00572E68    mov        eax,dword ptr [eax+1D0]; TZQuery.?f1D0:TZDataLink
 00572E6E    push       eax
 00572E6F    mov        eax,dword ptr [ebp-4]
 00572E72    mov        eax,dword ptr [eax+1B0]; TZQuery.?f1B0:TZSQLStrings
 00572E78    xor        edx,edx
 00572E7A    call       00570240
 00572E7F    lea        edx,[ebp-10]
 00572E82    call       00570098
 00572E87    mov        ecx,dword ptr [ebp-10]
 00572E8A    mov        eax,dword ptr [ebp-4]
 00572E8D    mov        edx,dword ptr [eax+1C4]; TZQuery.?f1C4:IZPreparedStatement
 00572E93    mov        eax,dword ptr [ebp-4]
 00572E96    mov        ebx,dword ptr [eax]
 00572E98    call       dword ptr [ebx+260]; TZQuery.sub_00571E50
 00572E9E    mov        eax,dword ptr [ebp-4]
 00572EA1    mov        eax,dword ptr [eax+1C4]; TZQuery.?f1C4:IZPreparedStatement
 00572EA7    mov        edx,dword ptr [eax]
 00572EA9    call       dword ptr [edx+9C]
 00572EAF    mov        edx,dword ptr [ebp-4]
 00572EB2    mov        dword ptr [edx+194],eax; TZQuery.?f194:dword
 00572EB8    xor        eax,eax
 00572EBA    pop        edx
 00572EBB    pop        ecx
 00572EBC    pop        ecx
 00572EBD    mov        dword ptr fs:[eax],edx
 00572EC0    push       572EDB
 00572EC5    mov        eax,dword ptr [ebp-4]
 00572EC8    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 00572ECE    call       005779F8
 00572ED3    ret
<00572ED4    jmp        @HandleFinally
<00572ED9    jmp        00572EC5
 00572EDB    xor        eax,eax
 00572EDD    pop        edx
 00572EDE    pop        ecx
 00572EDF    pop        ecx
 00572EE0    mov        dword ptr fs:[eax],edx
 00572EE3    push       572F0E
 00572EE8    lea        eax,[ebp-10]
 00572EEB    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00572EF1    call       @DynArrayClear
 00572EF6    lea        eax,[ebp-0C]
 00572EF9    call       @IntfClear
 00572EFE    lea        eax,[ebp-8]
 00572F01    call       @IntfClear
 00572F06    ret
<00572F07    jmp        @HandleFinally
<00572F0C    jmp        00572EE8
 00572F0E    pop        ebx
 00572F0F    mov        esp,ebp
 00572F11    pop        ebp
 00572F12    ret
*}
end;

//00572F14
procedure sub_00572F14;
begin
{*
 00572F14    push       ebp
 00572F15    mov        ebp,esp
 00572F17    add        esp,0FFFFFFCC
 00572F1A    push       ebx
 00572F1B    push       esi
 00572F1C    push       edi
 00572F1D    xor        edx,edx
 00572F1F    mov        dword ptr [ebp-24],edx
 00572F22    mov        dword ptr [ebp-10],edx
 00572F25    mov        dword ptr [ebp-14],edx
 00572F28    mov        dword ptr [ebp-18],edx
 00572F2B    mov        dword ptr [ebp-1C],edx
 00572F2E    mov        dword ptr [ebp-4],eax
 00572F31    xor        eax,eax
 00572F33    push       ebp
 00572F34    push       5731BB
 00572F39    push       dword ptr fs:[eax]
 00572F3C    mov        dword ptr fs:[eax],esp
 00572F3F    mov        eax,dword ptr [ebp-4]
 00572F42    mov        eax,dword ptr [eax+38]; TZQuery.FFieldDefs:TFieldDefs
 00572F45    call       TCollection.Clear
 00572F4A    lea        eax,[ebp-10]
 00572F4D    mov        edx,dword ptr [ebp-4]
 00572F50    mov        edx,dword ptr [edx+1C8]; TZQuery.?f1C8:IZResultSet
 00572F56    call       @IntfCopy
 00572F5B    cmp        dword ptr [ebp-10],0
 00572F5F    sete       byte ptr [ebp-9]
 00572F63    xor        eax,eax
 00572F65    push       ebp
 00572F66    push       573181
 00572F6B    push       dword ptr fs:[eax]
 00572F6E    mov        dword ptr fs:[eax],esp
 00572F71    cmp        byte ptr [ebp-9],0
>00572F75    je         00572FAE
 00572F77    mov        eax,dword ptr [ebp-4]
 00572F7A    mov        edx,dword ptr [eax]
 00572F7C    call       dword ptr [edx+25C]; TZQuery.sub_00571750
 00572F82    mov        eax,dword ptr [ebp-4]
 00572F85    call       00571688
 00572F8A    lea        eax,[ebp-10]
 00572F8D    push       eax
 00572F8E    mov        eax,dword ptr [ebp-4]
 00572F91    mov        eax,dword ptr [eax+1B0]; TZQuery.?f1B0:TZSQLStrings
 00572F97    xor        edx,edx
 00572F99    call       00570240
 00572F9E    mov        edx,dword ptr [eax+4]
 00572FA1    xor        ecx,ecx
 00572FA3    mov        eax,dword ptr [ebp-4]
 00572FA6    mov        ebx,dword ptr [eax]
 00572FA8    call       dword ptr [ebx+268]; TZQuery.sub_0056EE70
 00572FAE    cmp        dword ptr [ebp-10],0
>00572FB2    jne        00572FD5
 00572FB4    lea        edx,[ebp-24]
 00572FB7    mov        eax,[0061B2C0]; ^#122.sResString64:TResStringRec
 00572FBC    call       LoadResString
 00572FC1    mov        ecx,dword ptr [ebp-24]
 00572FC4    mov        dl,1
 00572FC6    mov        eax,[004087B0]; Exception
 00572FCB    call       Exception.Create; Exception.Create
 00572FD0    call       @RaiseExcept
 00572FD5    lea        edx,[ebp-1C]
 00572FD8    mov        eax,dword ptr [ebp-10]
 00572FDB    mov        ecx,dword ptr [eax]
 00572FDD    call       dword ptr [ecx+0CC]
 00572FE3    mov        eax,dword ptr [ebp-1C]
 00572FE6    mov        edx,dword ptr [eax]
 00572FE8    call       dword ptr [edx+0C]
 00572FEB    test       eax,eax
>00572FED    jle        00573130
 00572FF3    mov        eax,dword ptr [ebp-1C]
 00572FF6    mov        edx,dword ptr [eax]
 00572FF8    call       dword ptr [edx+0C]
 00572FFB    test       eax,eax
>00572FFD    jle        00573130
 00573003    mov        dword ptr [ebp-20],eax
 00573006    mov        esi,1
 0057300B    mov        edx,esi
 0057300D    mov        eax,dword ptr [ebp-1C]
 00573010    mov        ecx,dword ptr [eax]
 00573012    call       dword ptr [ecx+48]
 00573015    call       005690A4
 0057301A    mov        byte ptr [ebp-0A],al
 0057301D    mov        al,byte ptr [ebp-0A]
 00573020    sub        al,1
>00573022    je         0057302C
 00573024    sub        al,0B
>00573026    je         0057302C
 00573028    sub        al,0C
>0057302A    jne        0057303B
 0057302C    mov        edx,esi
 0057302E    mov        eax,dword ptr [ebp-1C]
 00573031    mov        ecx,dword ptr [eax]
 00573033    call       dword ptr [ecx+38]
 00573036    mov        dword ptr [ebp-8],eax
>00573039    jmp        00573040
 0057303B    xor        eax,eax
 0057303D    mov        dword ptr [ebp-8],eax
 00573040    xor        ebx,ebx
 00573042    lea        ecx,[ebp-14]
 00573045    mov        edx,esi
 00573047    mov        eax,dword ptr [ebp-1C]
 0057304A    mov        edi,dword ptr [eax]
 0057304C    call       dword ptr [edi+2C]
 0057304F    lea        eax,[ebp-18]
 00573052    mov        edx,dword ptr [ebp-14]
 00573055    call       @LStrLAsg
>0057305A    jmp        0057308D
 0057305C    add        ebx,1
>0057305F    jno        00573066
 00573061    call       @IntOver
 00573066    lea        eax,[ebp-18]
 00573069    push       eax
 0057306A    mov        eax,dword ptr [ebp-14]
 0057306D    mov        dword ptr [ebp-34],eax
 00573070    mov        byte ptr [ebp-30],0B
 00573074    mov        dword ptr [ebp-2C],ebx
 00573077    mov        byte ptr [ebp-28],0
 0057307B    lea        edx,[ebp-34]
 0057307E    mov        ecx,1
 00573083    mov        eax,5731D4; '%s_%d'
 00573088    call       Format
 0057308D    mov        eax,dword ptr [ebp-4]
 00573090    mov        eax,dword ptr [eax+38]; TZQuery.FFieldDefs:TFieldDefs
 00573093    mov        edx,dword ptr [ebp-18]
 00573096    call       TDefCollection.IndexOf
 0057309B    test       eax,eax
<0057309D    jge        0057305C
 0057309F    mov        eax,dword ptr [ebp-18]
 005730A2    push       eax
 005730A3    mov        al,byte ptr [ebp-0A]
 005730A6    push       eax
 005730A7    mov        eax,dword ptr [ebp-8]
 005730AA    push       eax
 005730AB    push       0
 005730AD    push       esi
 005730AE    mov        eax,dword ptr [ebp-4]
 005730B1    mov        ecx,dword ptr [eax+38]; TZQuery.FFieldDefs:TFieldDefs
 005730B4    mov        dl,1
 005730B6    mov        eax,[00495308]; TFieldDef
 005730BB    call       TFieldDef.Create; TFieldDef.Create
 005730C0    mov        ebx,eax
 005730C2    mov        edx,esi
 005730C4    mov        eax,dword ptr [ebp-1C]
 005730C7    mov        ecx,dword ptr [eax]
 005730C9    call       dword ptr [ecx+54]
 005730CC    test       al,al
>005730CE    je         005730DE
 005730D0    mov        edx,esi
 005730D2    mov        eax,dword ptr [ebp-1C]
 005730D5    mov        ecx,dword ptr [eax]
 005730D7    call       dword ptr [ecx+20]
 005730DA    test       al,al
>005730DC    je         005730E2
 005730DE    xor        edx,edx
>005730E0    jmp        005730E4
 005730E2    mov        dl,1
 005730E4    mov        eax,ebx
 005730E6    call       TFieldDef.SetRequired
 005730EB    mov        edx,esi
 005730ED    mov        eax,dword ptr [ebp-1C]
 005730F0    mov        ecx,dword ptr [eax]
 005730F2    call       dword ptr [ecx+50]
 005730F5    test       al,al
>005730F7    je         00573109
 005730F9    mov        dl,byte ptr [ebx+22]; TFieldDef.Attributes:TFieldAttributes
 005730FC    or         dl,byte ptr ds:[5731DC]; 0x2
 00573102    mov        eax,ebx
 00573104    call       TFieldDef.SetAttributes
 00573109    mov        edx,esi
 0057310B    mov        eax,dword ptr [ebp-1C]
 0057310E    mov        ecx,dword ptr [eax]
 00573110    call       dword ptr [ecx+38]
 00573113    mov        edx,eax
 00573115    mov        eax,ebx
 00573117    call       TFieldDef.SetPrecision
 0057311C    mov        edx,dword ptr [ebp-18]
 0057311F    mov        eax,ebx
 00573121    mov        ecx,dword ptr [eax]
 00573123    call       dword ptr [ecx+18]; TNamedItem.SetDisplayName
 00573126    inc        esi
 00573127    dec        dword ptr [ebp-20]
<0057312A    jne        0057300B
 00573130    xor        eax,eax
 00573132    pop        edx
 00573133    pop        ecx
 00573134    pop        ecx
 00573135    mov        dword ptr fs:[eax],edx
 00573138    push       573188
 0057313D    cmp        byte ptr [ebp-9],0
>00573141    je         00573180
 00573143    cmp        dword ptr [ebp-10],0
>00573147    je         00573159
 00573149    mov        eax,dword ptr [ebp-10]
 0057314C    mov        edx,dword ptr [eax]
 0057314E    call       dword ptr [edx+10]
 00573151    lea        eax,[ebp-10]
 00573154    call       @IntfClear
 00573159    mov        eax,dword ptr [ebp-4]
 0057315C    cmp        dword ptr [eax+1C4],0; TZQuery.?f1C4:IZPreparedStatement
>00573163    je         00573180
 00573165    mov        eax,dword ptr [ebp-4]
 00573168    mov        eax,dword ptr [eax+1C4]; TZQuery.?f1C4:IZPreparedStatement
 0057316E    mov        edx,dword ptr [eax]
 00573170    call       dword ptr [edx+14]
 00573173    mov        eax,dword ptr [ebp-4]
 00573176    add        eax,1C4; TZQuery.?f1C4:IZPreparedStatement
 0057317B    call       @IntfClear
 00573180    ret
<00573181    jmp        @HandleFinally
<00573186    jmp        0057313D
 00573188    xor        eax,eax
 0057318A    pop        edx
 0057318B    pop        ecx
 0057318C    pop        ecx
 0057318D    mov        dword ptr fs:[eax],edx
 00573190    push       5731C2
 00573195    lea        eax,[ebp-24]
 00573198    call       @LStrClr
 0057319D    lea        eax,[ebp-1C]
 005731A0    call       @IntfClear
 005731A5    lea        eax,[ebp-18]
 005731A8    mov        edx,2
 005731AD    call       @LStrArrayClr
 005731B2    lea        eax,[ebp-10]
 005731B5    call       @IntfClear
 005731BA    ret
<005731BB    jmp        @HandleFinally
<005731C0    jmp        00573195
 005731C2    pop        edi
 005731C3    pop        esi
 005731C4    pop        ebx
 005731C5    mov        esp,ebp
 005731C7    pop        ebp
 005731C8    ret
*}
end;

//005731E0
//procedure sub_005731E0(?:?; ?:?; ?:?);
//begin
{*
 005731E0    push       ebp
 005731E1    mov        ebp,esp
 005731E3    add        esp,0FFFFFFF8
 005731E6    push       ebx
 005731E7    push       esi
 005731E8    mov        esi,ecx
 005731EA    mov        dword ptr [ebp-4],edx
 005731ED    mov        ebx,eax
 005731EF    mov        dl,1
 005731F1    mov        eax,[0041C8E4]; TStringList
 005731F6    call       TObject.Create; TStringList.Create
 005731FB    mov        dword ptr [ebp-8],eax
 005731FE    xor        eax,eax
 00573200    push       ebp
 00573201    push       573277
 00573206    push       dword ptr fs:[eax]
 00573209    mov        dword ptr fs:[eax],esp
 0057320C    test       esi,esi
>0057320E    je         0057321A
 00573210    mov        edx,esi
 00573212    mov        eax,dword ptr [ebp-8]
 00573215    mov        ecx,dword ptr [eax]
 00573217    call       dword ptr [ecx+40]; TStrings.AddStrings
 0057321A    test       byte ptr [ebx+1B9],2; TZAbstractRODataset.?f1B9:byte
>00573221    je         00573237
 00573223    mov        ecx,573290; 'true'
 00573228    mov        edx,5732A0; 'defaults'
 0057322D    mov        eax,dword ptr [ebp-8]
 00573230    call       TStrings.SetValue
>00573235    jmp        00573249
 00573237    mov        ecx,5732B4; 'false'
 0057323C    mov        edx,5732A0; 'defaults'
 00573241    mov        eax,dword ptr [ebp-8]
 00573244    call       TStrings.SetValue
 00573249    mov        eax,dword ptr [ebp+8]
 0057324C    push       eax
 0057324D    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00573253    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 00573256    mov        ecx,dword ptr [ebp-8]
 00573259    mov        edx,dword ptr [ebp-4]
 0057325C    mov        ebx,dword ptr [eax]
 0057325E    call       dword ptr [ebx+1C]
 00573261    xor        eax,eax
 00573263    pop        edx
 00573264    pop        ecx
 00573265    pop        ecx
 00573266    mov        dword ptr fs:[eax],edx
 00573269    push       57327E
 0057326E    mov        eax,dword ptr [ebp-8]
 00573271    call       TObject.Free
 00573276    ret
<00573277    jmp        @HandleFinally
<0057327C    jmp        0057326E
 0057327E    pop        esi
 0057327F    pop        ebx
 00573280    pop        ecx
 00573281    pop        ecx
 00573282    pop        ebp
 00573283    ret        4
*}
//end;

//005732BC
//procedure sub_005732BC(?:?; ?:?; ?:?);
//begin
{*
 005732BC    push       ebp
 005732BD    mov        ebp,esp
 005732BF    push       0
 005732C1    push       0
 005732C3    push       0
 005732C5    push       ebx
 005732C6    push       esi
 005732C7    push       edi
 005732C8    mov        ebx,ecx
 005732CA    mov        dword ptr [ebp-4],eax
 005732CD    mov        esi,dword ptr [ebp+8]
 005732D0    xor        eax,eax
 005732D2    push       ebp
 005732D3    push       5734AD
 005732D8    push       dword ptr fs:[eax]
 005732DB    mov        dword ptr fs:[eax],esp
 005732DE    mov        eax,dword ptr [ebp-4]
 005732E1    mov        eax,dword ptr [eax+1C0]; TZAbstractRODataset.Connection:TZConnection
 005732E7    call       005779A4
 005732EC    xor        eax,eax
 005732EE    push       ebp
 005732EF    push       573482
 005732F4    push       dword ptr fs:[eax]
 005732F7    mov        dword ptr fs:[eax],esp
 005732FA    mov        eax,dword ptr [ebp-4]
 005732FD    cmp        dword ptr [eax+1C4],0; TZAbstractRODataset.?f1C4:IZPreparedStatement
>00573304    jne        00573343
 00573306    lea        eax,[ebp-8]
 00573309    push       eax
 0057330A    mov        eax,dword ptr [ebp-4]
 0057330D    mov        eax,dword ptr [eax+1B0]; TZAbstractRODataset.?f1B0:TZSQLStrings
 00573313    xor        edx,edx
 00573315    call       00570240
 0057331A    mov        edx,dword ptr [eax+4]
 0057331D    mov        eax,dword ptr [ebp-4]
 00573320    mov        ecx,dword ptr [eax+1BC]; TZAbstractRODataset.?f1BC:TStringList
 00573326    mov        eax,dword ptr [ebp-4]
 00573329    mov        edi,dword ptr [eax]
 0057332B    call       dword ptr [edi+264]; TZAbstractRODataset.sub_005731E0
 00573331    mov        edx,dword ptr [ebp-8]
 00573334    mov        eax,dword ptr [ebp-4]
 00573337    add        eax,1C4; TZAbstractRODataset.?f1C4:IZPreparedStatement
 0057333C    call       @IntfCopy
>00573341    jmp        00573354
 00573343    mov        eax,dword ptr [ebp-4]
 00573346    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 0057334C    mov        edx,dword ptr [eax]
 0057334E    call       dword ptr [edx+0FC]
 00573354    mov        eax,dword ptr [ebp-4]
 00573357    mov        eax,dword ptr [eax+1B4]; TZAbstractRODataset.?f1B4:TParams
 0057335D    push       eax
 0057335E    mov        eax,dword ptr [ebp-4]
 00573361    mov        eax,dword ptr [eax+1D0]; TZAbstractRODataset.?f1D0:TZDataLink
 00573367    push       eax
 00573368    mov        eax,dword ptr [ebp-4]
 0057336B    mov        eax,dword ptr [eax+1B0]; TZAbstractRODataset.?f1B0:TZSQLStrings
 00573371    xor        edx,edx
 00573373    call       00570240
 00573378    lea        edx,[ebp-0C]
 0057337B    call       00570098
 00573380    mov        ecx,dword ptr [ebp-0C]
 00573383    mov        eax,dword ptr [ebp-4]
 00573386    mov        edx,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 0057338C    mov        eax,dword ptr [ebp-4]
 0057338F    mov        edi,dword ptr [eax]
 00573391    call       dword ptr [edi+260]; TZAbstractRODataset.sub_00571E50
 00573397    mov        eax,dword ptr [ebp-4]
 0057339A    cmp        byte ptr [eax+1A9],0; TZAbstractRODataset.?f1A9:byte
>005733A1    je         005733B5
 005733A3    mov        eax,dword ptr [ebp-4]
 005733A6    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005733AC    mov        dl,1
 005733AE    mov        ecx,dword ptr [eax]
 005733B0    call       dword ptr [ecx+5C]
>005733B3    jmp        005733C5
 005733B5    mov        eax,dword ptr [ebp-4]
 005733B8    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005733BE    xor        edx,edx
 005733C0    mov        ecx,dword ptr [eax]
 005733C2    call       dword ptr [ecx+5C]
 005733C5    mov        eax,dword ptr [ebp-4]
 005733C8    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005733CE    xor        edx,edx
 005733D0    mov        ecx,dword ptr [eax]
 005733D2    call       dword ptr [ecx+4C]
 005733D5    mov        eax,dword ptr [ebp-4]
 005733D8    cmp        byte ptr [eax+88],0; TZAbstractRODataset.FIsUniDirectional:Boolean
>005733DF    je         005733F3
 005733E1    mov        eax,dword ptr [ebp-4]
 005733E4    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005733EA    xor        edx,edx
 005733EC    mov        ecx,dword ptr [eax]
 005733EE    call       dword ptr [ecx+64]
>005733F1    jmp        00573403
 005733F3    mov        eax,dword ptr [ebp-4]
 005733F6    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005733FC    mov        dl,1
 005733FE    mov        ecx,dword ptr [eax]
 00573400    call       dword ptr [ecx+64]
 00573403    test       ebx,ebx
>00573405    jle        00573417
 00573407    mov        eax,dword ptr [ebp-4]
 0057340A    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 00573410    mov        edx,ebx
 00573412    mov        ecx,dword ptr [eax]
 00573414    call       dword ptr [ecx+24]
 00573417    mov        eax,dword ptr [ebp-4]
 0057341A    test       byte ptr [eax+1B9],8; TZAbstractRODataset.?f1B9:byte
>00573421    je         00573453
 00573423    mov        eax,dword ptr [ebp-4]
 00573426    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 0057342C    mov        edx,dword ptr [eax]
 0057342E    call       dword ptr [edx+0A0]
 00573434    test       al,al
>00573436    je         0057344A
 00573438    mov        edx,esi
 0057343A    mov        eax,dword ptr [ebp-4]
 0057343D    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 00573443    mov        ecx,dword ptr [eax]
 00573445    call       dword ptr [ecx+40]
>00573448    jmp        00573466
 0057344A    mov        eax,esi
 0057344C    call       @IntfClear
>00573451    jmp        00573466
 00573453    mov        edx,esi
 00573455    mov        eax,dword ptr [ebp-4]
 00573458    mov        eax,dword ptr [eax+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 0057345E    mov        ecx,dword ptr [eax]
 00573460    call       dword ptr [ecx+98]
 00573466    xor        eax,eax
 00573468    pop        edx
 00573469    pop        ecx
 0057346A    pop        ecx
 0057346B    mov        dword ptr fs:[eax],edx
 0057346E    push       573489
 00573473    mov        eax,dword ptr [ebp-4]
 00573476    mov        eax,dword ptr [eax+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057347C    call       005779F8
 00573481    ret
<00573482    jmp        @HandleFinally
<00573487    jmp        00573473
 00573489    xor        eax,eax
 0057348B    pop        edx
 0057348C    pop        ecx
 0057348D    pop        ecx
 0057348E    mov        dword ptr fs:[eax],edx
 00573491    push       5734B4
 00573496    lea        eax,[ebp-0C]
 00573499    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 0057349F    call       @DynArrayClear
 005734A4    lea        eax,[ebp-8]
 005734A7    call       @IntfClear
 005734AC    ret
<005734AD    jmp        @HandleFinally
<005734B2    jmp        00573496
 005734B4    pop        edi
 005734B5    pop        esi
 005734B6    pop        ebx
 005734B7    mov        esp,ebp
 005734B9    pop        ebp
 005734BA    ret        4
*}
//end;

//005734C0
procedure sub_005734C0;
begin
{*
 005734C0    push       ebp
 005734C1    mov        ebp,esp
 005734C3    xor        ecx,ecx
 005734C5    push       ecx
 005734C6    push       ecx
 005734C7    push       ecx
 005734C8    push       ecx
 005734C9    push       ecx
 005734CA    push       ecx
 005734CB    push       ebx
 005734CC    mov        dword ptr [ebp-4],eax
 005734CF    xor        eax,eax
 005734D1    push       ebp
 005734D2    push       573763
 005734D7    push       dword ptr fs:[eax]
 005734DA    mov        dword ptr fs:[eax],esp
 005734DD    mov        eax,dword ptr [ebp-4]
 005734E0    mov        edx,dword ptr [eax]
 005734E2    call       dword ptr [edx+25C]; TZQuery.sub_00571750
 005734E8    mov        eax,dword ptr [ebp-4]
 005734EB    call       00571688
 005734F0    mov        eax,dword ptr [ebp-4]
 005734F3    xor        edx,edx
 005734F5    mov        dword ptr [eax+178],edx; TZQuery.?f178:Integer
 005734FB    mov        eax,dword ptr [ebp-4]
 005734FE    xor        edx,edx
 00573500    mov        dword ptr [eax+18C],edx; TZQuery.?f18C:dword
 00573506    mov        eax,dword ptr [ebp-4]
 00573509    mov        eax,dword ptr [eax+188]; TZQuery.?f188:TZSortedList
 0057350F    mov        edx,dword ptr [eax]
 00573511    call       dword ptr [edx+8]; TList.Clear
 00573514    mov        eax,dword ptr [ebp-4]
 00573517    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 0057351D    call       005779A4
 00573522    xor        eax,eax
 00573524    push       ebp
 00573525    push       573725
 0057352A    push       dword ptr fs:[eax]
 0057352D    mov        dword ptr fs:[eax],esp
 00573530    mov        eax,dword ptr [ebp-4]
 00573533    mov        eax,dword ptr [eax+1B0]; TZQuery.?f1B0:TZSQLStrings
 00573539    call       00570238
 0057353E    test       eax,eax
>00573540    jle        00573579
 00573542    lea        eax,[ebp-0C]
 00573545    push       eax
 00573546    mov        eax,dword ptr [ebp-4]
 00573549    mov        eax,dword ptr [eax+1B0]; TZQuery.?f1B0:TZSQLStrings
 0057354F    xor        edx,edx
 00573551    call       00570240
 00573556    mov        edx,dword ptr [eax+4]
 00573559    or         ecx,0FFFFFFFF
 0057355C    mov        eax,dword ptr [ebp-4]
 0057355F    mov        ebx,dword ptr [eax]
 00573561    call       dword ptr [ebx+268]; TZQuery.sub_0056EE70
 00573567    mov        edx,dword ptr [ebp-0C]
 0057356A    mov        eax,dword ptr [ebp-4]
 0057356D    add        eax,1C8; TZQuery.?f1C8:IZResultSet
 00573572    call       @IntfCopy
>00573577    jmp        0057359D
 00573579    lea        eax,[ebp-10]
 0057357C    push       eax
 0057357D    or         ecx,0FFFFFFFF
 00573580    xor        edx,edx
 00573582    mov        eax,dword ptr [ebp-4]
 00573585    mov        ebx,dword ptr [eax]
 00573587    call       dword ptr [ebx+268]; TZQuery.sub_0056EE70
 0057358D    mov        edx,dword ptr [ebp-10]
 00573590    mov        eax,dword ptr [ebp-4]
 00573593    add        eax,1C8; TZQuery.?f1C8:IZResultSet
 00573598    call       @IntfCopy
 0057359D    mov        eax,dword ptr [ebp-4]
 005735A0    cmp        dword ptr [eax+1C8],0; TZQuery.?f1C8:IZResultSet
>005735A7    jne        005735E2
 005735A9    mov        eax,dword ptr [ebp-4]
 005735AC    test       byte ptr [eax+1B9],8; TZQuery.?f1B9:byte
>005735B3    jne        005735D8
 005735B5    lea        edx,[ebp-14]
 005735B8    mov        eax,[0061B2C0]; ^#122.sResString64:TResStringRec
 005735BD    call       LoadResString
 005735C2    mov        ecx,dword ptr [ebp-14]
 005735C5    mov        dl,1
 005735C7    mov        eax,[004087B0]; Exception
 005735CC    call       Exception.Create; Exception.Create
 005735D1    call       @RaiseExcept
>005735D6    jmp        005735E2
 005735D8    call       @TryFinallyExit
>005735DD    jmp        0057372C
 005735E2    mov        eax,dword ptr [ebp-4]
 005735E5    cmp        byte ptr [eax+1CC],0; TZQuery.?f1CC:byte
>005735EC    jne        005735F9
 005735EE    mov        eax,dword ptr [ebp-4]
 005735F1    mov        edx,dword ptr [eax]
 005735F3    call       dword ptr [edx+1FC]; TZQuery.sub_00572F14
 005735F9    mov        eax,dword ptr [ebp-4]
 005735FC    cmp        byte ptr [eax+0A6],0; TZQuery.FDefaultFields:Boolean
>00573603    je         0057361C
 00573605    mov        eax,dword ptr [ebp-4]
 00573608    cmp        byte ptr [eax+1CC],0; TZQuery.?f1CC:byte
>0057360F    jne        0057361C
 00573611    mov        eax,dword ptr [ebp-4]
 00573614    mov        edx,dword ptr [eax]
 00573616    call       dword ptr [edx+0A0]; TDataSet.CreateFields
 0057361C    mov        dl,1
 0057361E    mov        eax,dword ptr [ebp-4]
 00573621    call       TDataSet.BindFields
 00573626    mov        eax,dword ptr [ebp-4]
 00573629    mov        eax,dword ptr [eax+30]; TZQuery.FFields:TFields
 0057362C    call       005691D0
 00573631    mov        dword ptr [ebp-8],eax
 00573634    xor        eax,eax
 00573636    push       ebp
 00573637    push       573670
 0057363C    push       dword ptr fs:[eax]
 0057363F    mov        dword ptr fs:[eax],esp
 00573642    mov        ecx,dword ptr [ebp-8]
 00573645    mov        dl,1
 00573647    mov        eax,[004C8284]; TZRowAccessor
 0057364C    call       TZRowAccessor.Create; TZRowAccessor.Create
 00573651    mov        edx,dword ptr [ebp-4]
 00573654    mov        dword ptr [edx+17C],eax; TZQuery.?f17C:TZRowAccessor
 0057365A    xor        eax,eax
 0057365C    pop        edx
 0057365D    pop        ecx
 0057365E    pop        ecx
 0057365F    mov        dword ptr fs:[eax],edx
 00573662    push       573677
 00573667    mov        eax,dword ptr [ebp-8]
 0057366A    call       TObject.Free
 0057366F    ret
<00573670    jmp        @HandleFinally
<00573675    jmp        00573667
 00573677    mov        eax,dword ptr [ebp-4]
 0057367A    mov        edx,dword ptr [eax]
 0057367C    call       dword ptr [edx+1AC]; TZAbstractRODataset.AllocRecordBuffer
 00573682    mov        edx,dword ptr [ebp-4]
 00573685    mov        dword ptr [edx+180],eax; TZQuery.?f180:dword
 0057368B    mov        eax,dword ptr [ebp-4]
 0057368E    mov        edx,dword ptr [eax]
 00573690    call       dword ptr [edx+1AC]; TZAbstractRODataset.AllocRecordBuffer
 00573696    mov        edx,dword ptr [ebp-4]
 00573699    mov        dword ptr [edx+184],eax; TZQuery.?f184:dword
 0057369F    lea        edx,[ebp-18]
 005736A2    mov        eax,dword ptr [ebp-4]
 005736A5    mov        eax,dword ptr [eax+30]; TZQuery.FFields:TFields
 005736A8    call       0056BA98
 005736AD    mov        edx,dword ptr [ebp-18]
 005736B0    mov        eax,dword ptr [ebp-4]
 005736B3    add        eax,190; TZQuery.?f190:TIntegerDynArray
 005736B8    mov        ecx,dword ptr ds:[407324]; TIntegerDynArray
 005736BE    call       @DynArrayAsg
 005736C3    mov        eax,dword ptr [ebp-4]
 005736C6    mov        byte ptr [eax+1A8],0; TZQuery.?f1A8:byte
 005736CD    mov        eax,dword ptr [ebp-4]
 005736D0    mov        eax,dword ptr [eax+1E0]; TZQuery.?f1E0:TList
 005736D6    mov        edx,dword ptr [eax]
 005736D8    call       dword ptr [edx+8]; TList.Clear
 005736DB    mov        eax,dword ptr [ebp-4]
 005736DE    mov        ecx,dword ptr [eax+1D8]; TZQuery.?f1D8:String
 005736E4    mov        eax,dword ptr [ebp-4]
 005736E7    mov        edx,dword ptr [eax+1E0]; TZQuery.?f1E0:TList
 005736ED    mov        eax,dword ptr [ebp-4]
 005736F0    call       TDataSet.GetFieldList
 005736F5    mov        eax,dword ptr [ebp-4]
 005736F8    cmp        dword ptr [eax+1E8],0; TZQuery.?f1E8:String
>005736FF    je         00573709
 00573701    mov        eax,dword ptr [ebp-4]
 00573704    call       0057512C
 00573709    xor        eax,eax
 0057370B    pop        edx
 0057370C    pop        ecx
 0057370D    pop        ecx
 0057370E    mov        dword ptr fs:[eax],edx
 00573711    push       57372C
 00573716    mov        eax,dword ptr [ebp-4]
 00573719    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 0057371F    call       005779F8
 00573724    ret
<00573725    jmp        @HandleFinally
<0057372A    jmp        00573716
 0057372C    xor        eax,eax
 0057372E    pop        edx
 0057372F    pop        ecx
 00573730    pop        ecx
 00573731    mov        dword ptr fs:[eax],edx
 00573734    push       57376A
 00573739    lea        eax,[ebp-18]
 0057373C    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00573742    call       @DynArrayClear
 00573747    lea        eax,[ebp-14]
 0057374A    call       @LStrClr
 0057374F    lea        eax,[ebp-10]
 00573752    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 00573758    mov        ecx,2
 0057375D    call       @FinalizeArray
 00573762    ret
<00573763    jmp        @HandleFinally
<00573768    jmp        00573739
 0057376A    pop        ebx
 0057376B    mov        esp,ebp
 0057376D    pop        ebp
 0057376E    ret
*}
end;

//00573770
procedure sub_00573770;
begin
{*
 00573770    push       ebp
 00573771    mov        ebp,esp
 00573773    push       ebx
 00573774    mov        ebx,eax
 00573776    cmp        dword ptr [ebx+1C8],0; TZAbstractRODataset.?f1C8:IZResultSet
>0057377D    je         0057378A
 0057377F    mov        eax,dword ptr [ebx+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00573785    mov        edx,dword ptr [eax]
 00573787    call       dword ptr [edx+10]
 0057378A    lea        eax,[ebx+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00573790    call       @IntfClear
 00573795    cmp        dword ptr [ebx+1C4],0; TZAbstractRODataset.?f1C4:IZPreparedStatement
>0057379C    je         005737A9
 0057379E    mov        eax,dword ptr [ebx+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005737A4    mov        edx,dword ptr [eax]
 005737A6    call       dword ptr [edx+14]
 005737A9    lea        eax,[ebx+1C4]; TZAbstractRODataset.?f1C4:IZPreparedStatement
 005737AF    call       @IntfClear
 005737B4    cmp        dword ptr [ebx+180],0; TZAbstractRODataset.?f180:dword
>005737BB    je         005737CD
 005737BD    lea        edx,[ebx+180]; TZAbstractRODataset.?f180:dword
 005737C3    mov        eax,ebx
 005737C5    mov        ecx,dword ptr [eax]
 005737C7    call       dword ptr [ecx+1B0]; TZAbstractRODataset.FreeRecordBuffer
 005737CD    xor        eax,eax
 005737CF    mov        dword ptr [ebx+180],eax; TZAbstractRODataset.?f180:dword
 005737D5    cmp        dword ptr [ebx+184],0; TZAbstractRODataset.?f184:dword
>005737DC    je         005737EE
 005737DE    lea        edx,[ebx+184]; TZAbstractRODataset.?f184:dword
 005737E4    mov        eax,ebx
 005737E6    mov        ecx,dword ptr [eax]
 005737E8    call       dword ptr [ecx+1B0]; TZAbstractRODataset.FreeRecordBuffer
 005737EE    xor        eax,eax
 005737F0    mov        dword ptr [ebx+184],eax; TZAbstractRODataset.?f184:dword
 005737F6    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005737FC    test       eax,eax
>005737FE    je         00573805
 00573800    call       TObject.Free
 00573805    xor        eax,eax
 00573807    mov        dword ptr [ebx+17C],eax; TZAbstractRODataset.?f17C:TZRowAccessor
 0057380D    cmp        byte ptr [ebx+0A6],0; TZAbstractRODataset.FDefaultFields:Boolean
>00573814    je         00573829
 00573816    cmp        byte ptr [ebx+1CC],0; TZAbstractRODataset.?f1CC:byte
>0057381D    jne        00573829
 0057381F    mov        eax,ebx
 00573821    mov        edx,dword ptr [eax]
 00573823    call       dword ptr [edx+0B4]; TDataSet.DestroyFields
 00573829    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 0057382F    mov        edx,dword ptr [eax]
 00573831    call       dword ptr [edx+8]; TList.Clear
 00573834    lea        eax,[ebx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 0057383A    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00573840    call       @DynArrayClear
 00573845    pop        ebx
 00573846    pop        ebp
 00573847    ret
*}
end;

//00573848
procedure TZAbstractRODataset.InternalFirst;
begin
{*
 00573848    push       ebp
 00573849    mov        ebp,esp
 0057384B    push       ebx
 0057384C    mov        ebx,eax
 0057384E    cmp        dword ptr [ebx+178],0; TZAbstractRODataset.?f178:Integer
>00573855    jle        0057385E
 00573857    mov        eax,ebx
 00573859    call       005716F0
 0057385E    xor        eax,eax
 00573860    mov        dword ptr [ebx+178],eax; TZAbstractRODataset.?f178:Integer
 00573866    pop        ebx
 00573867    pop        ebp
 00573868    ret
*}
end;

//0057386C
procedure TZAbstractRODataset.InternalLast;
begin
{*
 0057386C    push       ebp
 0057386D    mov        ebp,esp
 0057386F    push       ebx
 00573870    mov        ebx,eax
 00573872    xor        edx,edx
 00573874    mov        eax,ebx
 00573876    call       00571844
 0057387B    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00573881    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00573884    test       eax,eax
>00573886    jle        0057389B
 00573888    add        eax,1
>0057388B    jno        00573892
 0057388D    call       @IntOver
 00573892    mov        dword ptr [ebx+178],eax; TZAbstractRODataset.?f178:Integer
 00573898    pop        ebx
 00573899    pop        ebp
 0057389A    ret
 0057389B    xor        eax,eax
 0057389D    mov        dword ptr [ebx+178],eax; TZAbstractRODataset.?f178:Integer
 005738A3    pop        ebx
 005738A4    pop        ebp
 005738A5    ret
*}
end;

//005738A8
procedure sub_005738A8();
begin
{*
 005738A8    ret
*}
end;

//005738AC
//function TZAbstractRODataset.GetRecordCount:?;
//begin
{*
 005738AC    push       ebp
 005738AD    mov        ebp,esp
 005738AF    push       ebx
 005738B0    mov        ebx,eax
 005738B2    mov        eax,ebx
 005738B4    mov        edx,dword ptr [eax]
 005738B6    call       dword ptr [edx+84]; TDataSet.CheckActive
 005738BC    cmp        byte ptr [ebx+88],0; TZAbstractRODataset.FIsUniDirectional:Boolean
>005738C3    jne        005738D2
 005738C5    mov        edx,dword ptr [ebx+1AC]; TZAbstractRODataset.?f1AC:dword
 005738CB    mov        eax,ebx
 005738CD    call       00571844
 005738D2    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 005738D8    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 005738DB    pop        ebx
 005738DC    pop        ebp
 005738DD    ret
*}
//end;

//005738E0
//function TZAbstractRODataset.GetRecNo:?;
//begin
{*
 005738E0    push       ebp
 005738E1    mov        ebp,esp
 005738E3    push       ebx
 005738E4    mov        ebx,eax
 005738E6    mov        eax,ebx
 005738E8    call       TDataSet.GetActive
 005738ED    test       al,al
>005738EF    je         005738F8
 005738F1    mov        eax,ebx
 005738F3    call       TDataSet.UpdateCursorPos
 005738F8    mov        eax,dword ptr [ebx+178]; TZAbstractRODataset.?f178:Integer
 005738FE    pop        ebx
 005738FF    pop        ebp
 00573900    ret
*}
//end;

//00573904
//procedure sub_00573904(?:TZAbstractRODataset; ?:Integer);
//begin
{*
 00573904    push       ebp
 00573905    mov        ebp,esp
 00573907    add        esp,0FFFFFFF8
 0057390A    push       ebx
 0057390B    mov        ebx,edx
 0057390D    mov        dword ptr [ebp-4],eax
 00573910    mov        edx,ebx
 00573912    mov        eax,1
 00573917    call       Max
 0057391C    mov        ebx,eax
 0057391E    mov        eax,dword ptr [ebp-4]
 00573921    cmp        ebx,dword ptr [eax+178]; TZAbstractRODataset.?f178:Integer
>00573927    jge        00573931
 00573929    mov        eax,dword ptr [ebp-4]
 0057392C    call       005716F0
 00573931    mov        edx,ebx
 00573933    mov        eax,dword ptr [ebp-4]
 00573936    call       00571844
 0057393B    test       al,al
>0057393D    je         0057394A
 0057393F    mov        eax,dword ptr [ebp-4]
 00573942    mov        dword ptr [eax+178],ebx; TZAbstractRODataset.?f178:Integer
>00573948    jmp        0057395F
 0057394A    mov        eax,dword ptr [ebp-4]
 0057394D    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00573953    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00573956    mov        edx,dword ptr [ebp-4]
 00573959    mov        dword ptr [edx+178],eax; TZAbstractRODataset.?f178:Integer
 0057395F    mov        eax,dword ptr [ebp-4]
 00573962    mov        eax,dword ptr [eax+178]; TZAbstractRODataset.?f178:Integer
 00573968    mov        dword ptr [ebp-8],eax
 0057396B    xor        eax,eax
 0057396D    push       ebp
 0057396E    push       5739B1
 00573973    push       dword ptr fs:[eax]
 00573976    mov        dword ptr fs:[eax],esp
 00573979    mov        eax,dword ptr [ebp-4]
 0057397C    mov        al,byte ptr [eax+9D]; TZAbstractRODataset.FState:TDataSetState
 00573982    test       al,al
>00573984    je         00573997
 00573986    mov        dl,byte ptr ds:[5739C8]; 0x0
 0057398C    mov        eax,dword ptr [ebp-4]
 0057398F    mov        ecx,dword ptr [eax]
 00573991    call       dword ptr [ecx+250]; TDataSet.Resync
 00573997    xor        eax,eax
 00573999    pop        edx
 0057399A    pop        ecx
 0057399B    pop        ecx
 0057399C    mov        dword ptr fs:[eax],edx
 0057399F    push       5739B8
 005739A4    mov        eax,dword ptr [ebp-4]
 005739A7    mov        edx,dword ptr [ebp-8]
 005739AA    mov        dword ptr [eax+178],edx; TZAbstractRODataset.?f178:Integer
 005739B0    ret
<005739B1    jmp        @HandleFinally
<005739B6    jmp        005739A4
 005739B8    mov        eax,dword ptr [ebp-4]
 005739BB    call       TDataSet.UpdateCursorPos
 005739C0    pop        ebx
 005739C1    pop        ecx
 005739C2    pop        ecx
 005739C3    pop        ebp
 005739C4    ret
*}
//end;

//005739CC
//procedure TZAbstractRODataset.SetRecNo(?:?; Value:Integer);
//begin
{*
 005739CC    push       ebp
 005739CD    mov        ebp,esp
 005739CF    push       ebx
 005739D0    push       esi
 005739D1    mov        esi,edx
 005739D3    mov        ebx,eax
 005739D5    mov        eax,ebx
 005739D7    call       0057162C
 005739DC    mov        edx,esi
 005739DE    mov        eax,1
 005739E3    call       Max
 005739E8    mov        esi,eax
 005739EA    cmp        esi,dword ptr [ebx+178]; TZAbstractRODataset.?f178:Integer
>005739F0    jge        005739F9
 005739F2    mov        eax,ebx
 005739F4    call       005716F0
 005739F9    mov        eax,ebx
 005739FB    mov        edx,dword ptr [eax]
 005739FD    call       dword ptr [edx+0FC]; TDataSet.DoBeforeScroll
 00573A03    mov        edx,esi
 00573A05    mov        eax,ebx
 00573A07    call       00573904
 00573A0C    mov        eax,ebx
 00573A0E    mov        edx,dword ptr [eax]
 00573A10    call       dword ptr [edx+0D8]; TDataSet.DoAfterScroll
 00573A16    pop        esi
 00573A17    pop        ebx
 00573A18    pop        ebp
 00573A19    ret
*}
//end;

//00573A1C
//function TZAbstractRODataset.GetCanModify:?;
//begin
{*
 00573A1C    mov        al,byte ptr [eax+1A9]; TZAbstractRODataset.?f1A9:byte
 00573A22    ret
*}
//end;

//00573A24
//function TZReadOnlyQuery.GetDataSource:?;
//begin
{*
 00573A24    mov        eax,dword ptr [eax+1D0]; TZReadOnlyQuery.?f1D0:TZDataLink
 00573A2A    mov        eax,dword ptr [eax+4]; TZDataLink.FDataSource:TDataSource
 00573A2D    ret
*}
//end;

//00573A30
//procedure TZReadOnlyQuery.SetDataSource(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573A30    push       ebp
 00573A31    mov        ebp,esp
 00573A33    push       0
 00573A35    push       ebx
 00573A36    push       esi
 00573A37    mov        esi,edx
 00573A39    mov        ebx,eax
 00573A3B    xor        eax,eax
 00573A3D    push       ebp
 00573A3E    push       573A9A
 00573A43    push       dword ptr fs:[eax]
 00573A46    mov        dword ptr fs:[eax],esp
 00573A49    mov        edx,esi
 00573A4B    mov        eax,ebx
 00573A4D    call       TDataSet.IsLinkedTo
 00573A52    test       al,al
>00573A54    je         00573A77
 00573A56    lea        edx,[ebp-4]
 00573A59    mov        eax,[0061B660]; ^#122.sResString65:TResStringRec
 00573A5E    call       LoadResString
 00573A63    mov        ecx,dword ptr [ebp-4]
 00573A66    mov        dl,1
 00573A68    mov        eax,[0057089C]; EZDatabaseError
 00573A6D    call       EZDatabaseError.Create; EZDatabaseError.Create
 00573A72    call       @RaiseExcept
 00573A77    mov        edx,esi
 00573A79    mov        eax,dword ptr [ebx+1D0]; TZReadOnlyQuery.?f1D0:TZDataLink
 00573A7F    call       TDataLink.SetDataSource
 00573A84    xor        eax,eax
 00573A86    pop        edx
 00573A87    pop        ecx
 00573A88    pop        ecx
 00573A89    mov        dword ptr fs:[eax],edx
 00573A8C    push       573AA1
 00573A91    lea        eax,[ebp-4]
 00573A94    call       @LStrClr
 00573A99    ret
<00573A9A    jmp        @HandleFinally
<00573A9F    jmp        00573A91
 00573AA1    pop        esi
 00573AA2    pop        ebx
 00573AA3    pop        ecx
 00573AA4    pop        ebp
 00573AA5    ret
*}
//end;

//00573AA8
//function TZReadOnlyQuery.GetMasterSource(Self:TZReadOnlyQuery):?;
//begin
{*
 00573AA8    mov        eax,dword ptr [eax+1D4]; TZReadOnlyQuery.?f1D4:TMasterDataLink
 00573AAE    mov        eax,dword ptr [eax+4]; TMasterDataLink.FDataSource:TDataSource
 00573AB1    ret
*}
//end;

//00573AB4
//procedure TZReadOnlyQuery.SetMasterSource(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573AB4    push       ebp
 00573AB5    mov        ebp,esp
 00573AB7    push       0
 00573AB9    push       ebx
 00573ABA    push       esi
 00573ABB    mov        esi,edx
 00573ABD    mov        ebx,eax
 00573ABF    xor        eax,eax
 00573AC1    push       ebp
 00573AC2    push       573B25
 00573AC7    push       dword ptr fs:[eax]
 00573ACA    mov        dword ptr fs:[eax],esp
 00573ACD    mov        edx,esi
 00573ACF    mov        eax,ebx
 00573AD1    call       TDataSet.IsLinkedTo
 00573AD6    test       al,al
>00573AD8    je         00573AFB
 00573ADA    lea        edx,[ebp-4]
 00573ADD    mov        eax,[0061B660]; ^#122.sResString65:TResStringRec
 00573AE2    call       LoadResString
 00573AE7    mov        ecx,dword ptr [ebp-4]
 00573AEA    mov        dl,1
 00573AEC    mov        eax,[0057089C]; EZDatabaseError
 00573AF1    call       EZDatabaseError.Create; EZDatabaseError.Create
 00573AF6    call       @RaiseExcept
 00573AFB    mov        edx,esi
 00573AFD    mov        eax,dword ptr [ebx+1D4]; TZReadOnlyQuery.?f1D4:TMasterDataLink
 00573B03    call       TDataLink.SetDataSource
 00573B08    mov        eax,ebx
 00573B0A    call       00571D44
 00573B0F    xor        eax,eax
 00573B11    pop        edx
 00573B12    pop        ecx
 00573B13    pop        ecx
 00573B14    mov        dword ptr fs:[eax],edx
 00573B17    push       573B2C
 00573B1C    lea        eax,[ebp-4]
 00573B1F    call       @LStrClr
 00573B24    ret
<00573B25    jmp        @HandleFinally
<00573B2A    jmp        00573B1C
 00573B2C    pop        esi
 00573B2D    pop        ebx
 00573B2E    pop        ecx
 00573B2F    pop        ebp
 00573B30    ret
*}
//end;

//00573B34
//procedure TZReadOnlyQuery.GetMasterFields(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573B34    push       ebp
 00573B35    mov        ebp,esp
 00573B37    push       ebx
 00573B38    push       esi
 00573B39    mov        esi,edx
 00573B3B    mov        ebx,eax
 00573B3D    mov        eax,esi
 00573B3F    mov        edx,dword ptr [ebx+1D4]; TZReadOnlyQuery.?f1D4:TMasterDataLink
 00573B45    mov        edx,dword ptr [edx+20]; TMasterDataLink.?f20:String
 00573B48    call       @LStrAsg
 00573B4D    pop        esi
 00573B4E    pop        ebx
 00573B4F    pop        ebp
 00573B50    ret
*}
//end;

//00573B54
//procedure TZReadOnlyQuery.SetMasterFields(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573B54    push       ebp
 00573B55    mov        ebp,esp
 00573B57    push       ebx
 00573B58    push       esi
 00573B59    push       edi
 00573B5A    mov        esi,edx
 00573B5C    mov        ebx,eax
 00573B5E    mov        edi,dword ptr [ebx+1D4]; TZReadOnlyQuery.?f1D4:TMasterDataLink
 00573B64    mov        eax,dword ptr [edi+20]; TMasterDataLink.?f20:String
 00573B67    mov        edx,esi
 00573B69    call       @LStrCmp
>00573B6E    je         00573B80
 00573B70    mov        edx,esi
 00573B72    mov        eax,edi
 00573B74    call       TMasterDataLink.SetFieldNames
 00573B79    mov        eax,ebx
 00573B7B    call       00571D44
 00573B80    pop        edi
 00573B81    pop        esi
 00573B82    pop        ebx
 00573B83    pop        ebp
 00573B84    ret
*}
//end;

//00573B88
//procedure sub_00573B88(?:?);
//begin
{*
 00573B88    push       ebp
 00573B89    mov        ebp,esp
 00573B8B    push       ebx
 00573B8C    mov        ebx,eax
 00573B8E    mov        eax,ebx
 00573B90    call       TDataSet.CheckBrowseMode
 00573B95    test       byte ptr [ebx+1B9],4
>00573B9C    jne        00573BC4
 00573B9E    mov        eax,dword ptr [ebx+1D4]
 00573BA4    call       TDataLink.GetDataSet
 00573BA9    test       eax,eax
>00573BAB    je         00573BC4
 00573BAD    mov        eax,dword ptr [ebx+1D4]
 00573BB3    call       TDataLink.GetDataSet
 00573BB8    mov        al,byte ptr [eax+9D]; TDataSet.FState:TDataSetState
 00573BBE    add        al,0FE
 00573BC0    sub        al,2
>00573BC2    jb         00573BCB
 00573BC4    mov        eax,ebx
 00573BC6    call       00571D44
 00573BCB    pop        ebx
 00573BCC    pop        ebp
 00573BCD    ret
*}
//end;

//00573BD0
procedure sub_00573BD0;
begin
{*
 00573BD0    push       ebp
 00573BD1    mov        ebp,esp
 00573BD3    call       00571D44
 00573BD8    pop        ebp
 00573BD9    ret
*}
end;

//00573BDC
procedure TZAbstractRODataset.DoOnNewRecord;
begin
{*
 00573BDC    push       ebp
 00573BDD    mov        ebp,esp
 00573BDF    add        esp,0FFFFFFD8
 00573BE2    push       ebx
 00573BE3    push       esi
 00573BE4    push       edi
 00573BE5    xor        edx,edx
 00573BE7    mov        dword ptr [ebp-28],edx
 00573BEA    mov        dword ptr [ebp-24],edx
 00573BED    mov        dword ptr [ebp-20],edx
 00573BF0    mov        dword ptr [ebp-1C],edx
 00573BF3    mov        dword ptr [ebp-18],edx
 00573BF6    mov        ebx,eax
 00573BF8    xor        eax,eax
 00573BFA    push       ebp
 00573BFB    push       573D4A
 00573C00    push       dword ptr fs:[eax]
 00573C03    mov        dword ptr fs:[eax],esp
 00573C06    mov        eax,dword ptr [ebx+1D4]; TZAbstractRODataset.?f1D4:TMasterDataLink
 00573C0C    cmp        byte ptr [eax+15],0; TMasterDataLink.FActive:Boolean
>00573C10    je         00573D25
 00573C16    mov        edx,dword ptr [eax+24]; TMasterDataLink.FFields:TList
 00573C19    cmp        dword ptr [edx+8],0; TList.FCount:Integer
>00573C1D    jle        00573D25
 00573C23    mov        eax,dword ptr [eax+24]; TMasterDataLink.FFields:TList
 00573C26    mov        eax,dword ptr [eax+8]; TList.FCount:Integer
 00573C29    sub        eax,1
>00573C2C    jno        00573C33
 00573C2E    call       @IntOver
 00573C33    test       eax,eax
>00573C35    jl         00573D25
 00573C3B    inc        eax
 00573C3C    mov        dword ptr [ebp-14],eax
 00573C3F    xor        esi,esi
 00573C41    mov        eax,dword ptr [ebx+1E0]; TZAbstractRODataset.?f1E0:TList
 00573C47    cmp        esi,dword ptr [eax+8]; TList.FCount:Integer
>00573C4A    jge        00573D1B
 00573C50    mov        eax,dword ptr [ebx+1D4]; TZAbstractRODataset.?f1D4:TMasterDataLink
 00573C56    mov        eax,dword ptr [eax+24]; TMasterDataLink.FFields:TList
 00573C59    mov        edx,esi
 00573C5B    call       TList.Get
 00573C60    mov        edi,eax
 00573C62    mov        edx,esi
 00573C64    mov        eax,dword ptr [ebx+1E0]; TZAbstractRODataset.?f1E0:TList
 00573C6A    call       TList.Get
 00573C6F    mov        dword ptr [ebp-4],eax
 00573C72    mov        eax,edi
 00573C74    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 00573C7A    call       @IsClass
 00573C7F    test       al,al
>00573C81    jne        00573C95
 00573C83    mov        eax,dword ptr [ebp-4]
 00573C86    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 00573C8C    call       @IsClass
 00573C91    test       al,al
>00573C93    je         00573D03
 00573C95    mov        eax,edi
 00573C97    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 00573C9D    call       @IsClass
 00573CA2    test       al,al
>00573CA4    je         00573CB5
 00573CA6    mov        eax,edi
 00573CA8    call       TLargeintField.GetAsLargeint
 00573CAD    mov        dword ptr [ebp-10],eax
 00573CB0    mov        dword ptr [ebp-0C],edx
>00573CB3    jmp        00573CC3
 00573CB5    mov        eax,edi
 00573CB7    mov        edx,dword ptr [eax]
 00573CB9    call       dword ptr [edx+58]
 00573CBC    cdq
 00573CBD    mov        dword ptr [ebp-10],eax
 00573CC0    mov        dword ptr [ebp-0C],edx
 00573CC3    mov        eax,dword ptr [ebp-4]
 00573CC6    mov        edx,dword ptr ds:[4968E8]; TLargeintField
 00573CCC    call       @IsClass
 00573CD1    test       al,al
>00573CD3    je         00573CE5
 00573CD5    push       dword ptr [ebp-0C]
 00573CD8    push       dword ptr [ebp-10]
 00573CDB    mov        eax,dword ptr [ebp-4]
 00573CDE    call       TLargeintField.SetAsLargeint
>00573CE3    jmp        00573D1B
 00573CE5    push       dword ptr [ebp-0C]
 00573CE8    push       dword ptr [ebp-10]
 00573CEB    lea        eax,[ebp-18]
 00573CEE    call       IntToStr
 00573CF3    mov        edx,dword ptr [ebp-18]
 00573CF6    mov        eax,dword ptr [ebp-4]
 00573CF9    mov        ecx,dword ptr [eax]
 00573CFB    call       dword ptr [ecx+0B0]
>00573D01    jmp        00573D1B
 00573D03    lea        edx,[ebp-28]
 00573D06    mov        eax,edi
 00573D08    mov        ecx,dword ptr [eax]
 00573D0A    call       dword ptr [ecx+64]
 00573D0D    lea        edx,[ebp-28]
 00573D10    mov        eax,dword ptr [ebp-4]
 00573D13    mov        ecx,dword ptr [eax]
 00573D15    call       dword ptr [ecx+0B4]
 00573D1B    inc        esi
 00573D1C    dec        dword ptr [ebp-14]
<00573D1F    jne        00573C41
 00573D25    mov        eax,ebx
 00573D27    call       TDataSet.DoOnNewRecord
 00573D2C    xor        eax,eax
 00573D2E    pop        edx
 00573D2F    pop        ecx
 00573D30    pop        ecx
 00573D31    mov        dword ptr fs:[eax],edx
 00573D34    push       573D51
 00573D39    lea        eax,[ebp-28]
 00573D3C    call       @VarClr
 00573D41    lea        eax,[ebp-18]
 00573D44    call       @LStrClr
 00573D49    ret
<00573D4A    jmp        @HandleFinally
<00573D4F    jmp        00573D39
 00573D51    pop        edi
 00573D52    pop        esi
 00573D53    pop        ebx
 00573D54    mov        esp,ebp
 00573D56    pop        ebp
 00573D57    ret
*}
end;

//00573D58
//procedure TZReadOnlyQuery.GetLinkedFields(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573D58    push       ebp
 00573D59    mov        ebp,esp
 00573D5B    push       ebx
 00573D5C    push       esi
 00573D5D    mov        esi,edx
 00573D5F    mov        ebx,eax
 00573D61    mov        eax,esi
 00573D63    mov        edx,dword ptr [ebx+1D8]; TZReadOnlyQuery.?f1D8:String
 00573D69    call       @LStrAsg
 00573D6E    pop        esi
 00573D6F    pop        ebx
 00573D70    pop        ebp
 00573D71    ret
*}
//end;

//00573D74
//procedure TZReadOnlyQuery.SetLinkedFields(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573D74    push       ebp
 00573D75    mov        ebp,esp
 00573D77    push       ebx
 00573D78    push       esi
 00573D79    mov        esi,edx
 00573D7B    mov        ebx,eax
 00573D7D    mov        eax,dword ptr [ebx+1D8]; TZReadOnlyQuery.?f1D8:String
 00573D83    mov        edx,esi
 00573D85    call       @LStrCmp
>00573D8A    je         00573DC7
 00573D8C    lea        eax,[ebx+1D8]; TZReadOnlyQuery.?f1D8:String
 00573D92    mov        edx,esi
 00573D94    call       @LStrAsg
 00573D99    mov        eax,dword ptr [ebx+1E0]; TZReadOnlyQuery.?f1E0:TList
 00573D9F    mov        edx,dword ptr [eax]
 00573DA1    call       dword ptr [edx+8]; TList.Clear
 00573DA4    cmp        byte ptr [ebx+9D],0; TZReadOnlyQuery.FState:TDataSetState
>00573DAB    je         00573DC7
 00573DAD    mov        ecx,dword ptr [ebx+1D8]; TZReadOnlyQuery.?f1D8:String
 00573DB3    mov        edx,dword ptr [ebx+1E0]; TZReadOnlyQuery.?f1E0:TList
 00573DB9    mov        eax,ebx
 00573DBB    call       TDataSet.GetFieldList
 00573DC0    mov        eax,ebx
 00573DC2    call       00571D44
 00573DC7    pop        esi
 00573DC8    pop        ebx
 00573DC9    pop        ebp
 00573DCA    ret
*}
//end;

//00573DCC
//procedure TZReadOnlyQuery.SetOptions(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00573DCC    push       ebp
 00573DCD    mov        ebp,esp
 00573DCF    push       ecx
 00573DD0    push       ebx
 00573DD1    mov        byte ptr [ebp-1],dl
 00573DD4    mov        ebx,eax
 00573DD6    mov        al,byte ptr [ebp-1]
 00573DD9    cmp        al,byte ptr [ebx+1B9]; TZReadOnlyQuery.?f1B9:byte
>00573DDF    je         00573DEA
 00573DE1    mov        al,byte ptr [ebp-1]
 00573DE4    mov        byte ptr [ebx+1B9],al; TZReadOnlyQuery.?f1B9:byte
 00573DEA    pop        ebx
 00573DEB    pop        ecx
 00573DEC    pop        ebp
 00573DED    ret
*}
//end;

//00573DF0
//procedure TZAbstractRODataset.SetSortedFields(Self:TZAbstractRODataset; ?:?);
//begin
{*
 00573DF0    push       ebp
 00573DF1    mov        ebp,esp
 00573DF3    xor        ecx,ecx
 00573DF5    push       ecx
 00573DF6    push       ecx
 00573DF7    push       ecx
 00573DF8    push       ecx
 00573DF9    push       ebx
 00573DFA    push       esi
 00573DFB    mov        dword ptr [ebp-4],edx
 00573DFE    mov        esi,eax
 00573E00    mov        eax,dword ptr [ebp-4]
 00573E03    call       @LStrAddRef
 00573E08    xor        eax,eax
 00573E0A    push       ebp
 00573E0B    push       573F0A
 00573E10    push       dword ptr fs:[eax]
 00573E13    mov        dword ptr fs:[eax],esp
 00573E16    lea        edx,[ebp-8]
 00573E19    mov        eax,dword ptr [ebp-4]
 00573E1C    call       Trim
 00573E21    mov        edx,dword ptr [ebp-8]
 00573E24    lea        eax,[ebp-4]
 00573E27    call       @LStrLAsg
 00573E2C    mov        eax,dword ptr [esi+1E8]; TZAbstractRODataset.?f1E8:String
 00573E32    mov        edx,dword ptr [ebp-4]
 00573E35    call       @LStrCmp
>00573E3A    jne        00573E50
 00573E3C    mov        eax,dword ptr [esi+1DC]; TZAbstractRODataset.?f1DC:String
 00573E42    mov        edx,dword ptr [ebp-4]
 00573E45    call       @LStrCmp
>00573E4A    je         00573EEF
 00573E50    lea        eax,[esi+1DC]; TZAbstractRODataset.?f1DC:String
 00573E56    mov        edx,dword ptr [ebp-4]
 00573E59    call       @LStrAsg
 00573E5E    mov        eax,esi
 00573E60    call       00575F20
 00573E65    mov        ebx,eax
 00573E67    mov        byte ptr [esi+1E4],bl; TZAbstractRODataset.SortType:TSortType
 00573E6D    cmp        bl,2
>00573E70    je         00573EBA
 00573E72    mov        al,[00573F18]; 0x3
 00573E77    push       eax
 00573E78    lea        eax,[ebp-0C]
 00573E7B    push       eax
 00573E7C    xor        ecx,ecx
 00573E7E    mov        edx,573F24; ' Desc'
 00573E83    mov        eax,dword ptr [ebp-4]
 00573E86    call       StringReplace
 00573E8B    mov        edx,dword ptr [ebp-0C]
 00573E8E    lea        eax,[ebp-4]
 00573E91    call       @LStrLAsg
 00573E96    mov        al,[00573F18]; 0x3
 00573E9B    push       eax
 00573E9C    lea        eax,[ebp-10]
 00573E9F    push       eax
 00573EA0    xor        ecx,ecx
 00573EA2    mov        edx,573F34; ' Asc'
 00573EA7    mov        eax,dword ptr [ebp-4]
 00573EAA    call       StringReplace
 00573EAF    mov        edx,dword ptr [ebp-10]
 00573EB2    lea        eax,[ebp-4]
 00573EB5    call       @LStrLAsg
 00573EBA    lea        eax,[esi+1E8]; TZAbstractRODataset.?f1E8:String
 00573EC0    mov        edx,dword ptr [ebp-4]
 00573EC3    call       @LStrAsg
 00573EC8    mov        eax,esi
 00573ECA    call       TDataSet.GetActive
 00573ECF    test       al,al
>00573ED1    je         00573EEF
 00573ED3    cmp        dword ptr [esi+1E8],0; TZAbstractRODataset.?f1E8:String
>00573EDA    jne        00573EE8
 00573EDC    mov        eax,esi
 00573EDE    mov        edx,dword ptr [eax]
 00573EE0    call       dword ptr [edx+168]; TZAbstractRODataset.InternalRefresh
>00573EE6    jmp        00573EEF
 00573EE8    mov        eax,esi
 00573EEA    call       0057512C
 00573EEF    xor        eax,eax
 00573EF1    pop        edx
 00573EF2    pop        ecx
 00573EF3    pop        ecx
 00573EF4    mov        dword ptr fs:[eax],edx
 00573EF7    push       573F11
 00573EFC    lea        eax,[ebp-10]
 00573EFF    mov        edx,4
 00573F04    call       @LStrArrayClr
 00573F09    ret
<00573F0A    jmp        @HandleFinally
<00573F0F    jmp        00573EFC
 00573F11    pop        esi
 00573F12    pop        ebx
 00573F13    mov        esp,ebp
 00573F15    pop        ebp
 00573F16    ret
*}
//end;

//00573F3C
procedure sub_00573F3C;
begin
{*
 00573F3C    push       ebp
 00573F3D    mov        ebp,esp
 00573F3F    push       ecx
 00573F40    push       ebx
 00573F41    mov        dword ptr [ebp-4],eax
 00573F44    mov        eax,dword ptr [ebp-4]
 00573F47    call       TDataSet.DisableControls
 00573F4C    xor        edx,edx
 00573F4E    push       ebp
 00573F4F    push       573FA8
 00573F54    push       dword ptr fs:[edx]
 00573F57    mov        dword ptr fs:[edx],esp
 00573F5A    mov        eax,dword ptr [ebp-4]
 00573F5D    mov        eax,dword ptr [eax+1D0]; TZQuery.?f1D0:TZDataLink
 00573F63    mov        eax,dword ptr [eax+4]; TZDataLink.FDataSource:TDataSource
 00573F66    test       eax,eax
>00573F68    je         00573F92
 00573F6A    mov        ebx,dword ptr [eax+30]; TDataSource.DataSet:TDataSet
 00573F6D    test       ebx,ebx
>00573F6F    je         00573F92
 00573F71    mov        eax,ebx
 00573F73    call       TDataSet.GetActive
 00573F78    test       al,al
>00573F7A    je         00573F92
 00573F7C    mov        al,byte ptr [ebx+9D]; TDataSet.FState:TDataSetState
 00573F82    sub        al,2
>00573F84    je         00573F92
 00573F86    sub        al,2
>00573F88    je         00573F92
 00573F8A    mov        eax,dword ptr [ebp-4]
 00573F8D    call       TDataSet.Refresh
 00573F92    xor        eax,eax
 00573F94    pop        edx
 00573F95    pop        ecx
 00573F96    pop        ecx
 00573F97    mov        dword ptr fs:[eax],edx
 00573F9A    push       573FAF
 00573F9F    mov        eax,dword ptr [ebp-4]
 00573FA2    call       TDataSet.EnableControls
 00573FA7    ret
<00573FA8    jmp        @HandleFinally
<00573FAD    jmp        00573F9F
 00573FAF    pop        ebx
 00573FB0    pop        ecx
 00573FB1    pop        ebp
 00573FB2    ret
*}
end;

//00573FB4
//procedure TZAbstractRODataset.InternalGotoBookmark(?:?; Bookmark:Pointer);
//begin
{*
 00573FB4    push       ebp
 00573FB5    mov        ebp,esp
 00573FB7    push       0
 00573FB9    push       ebx
 00573FBA    push       esi
 00573FBB    mov        ebx,eax
 00573FBD    xor        eax,eax
 00573FBF    push       ebp
 00573FC0    push       574034
 00573FC5    push       dword ptr fs:[eax]
 00573FC8    mov        dword ptr fs:[eax],esp
 00573FCB    mov        edx,dword ptr [edx]
 00573FCD    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00573FD3    call       TList.IndexOf
 00573FD8    mov        esi,eax
 00573FDA    test       esi,esi
>00573FDC    jge        00573FFF
 00573FDE    lea        edx,[ebp-4]
 00573FE1    mov        eax,[0061B25C]; ^#122.sResString66:TResStringRec
 00573FE6    call       LoadResString
 00573FEB    mov        ecx,dword ptr [ebp-4]
 00573FEE    mov        dl,1
 00573FF0    mov        eax,[0057089C]; EZDatabaseError
 00573FF5    call       EZDatabaseError.Create; EZDatabaseError.Create
 00573FFA    call       @RaiseExcept
 00573FFF    cmp        esi,dword ptr [ebx+178]; TZAbstractRODataset.?f178:Integer
>00574005    jge        0057400E
 00574007    mov        eax,ebx
 00574009    call       005716F0
 0057400E    add        esi,1
>00574011    jno        00574018
 00574013    call       @IntOver
 00574018    mov        dword ptr [ebx+178],esi; TZAbstractRODataset.?f178:Integer
 0057401E    xor        eax,eax
 00574020    pop        edx
 00574021    pop        ecx
 00574022    pop        ecx
 00574023    mov        dword ptr fs:[eax],edx
 00574026    push       57403B
 0057402B    lea        eax,[ebp-4]
 0057402E    call       @LStrClr
 00574033    ret
<00574034    jmp        @HandleFinally
<00574039    jmp        0057402B
 0057403B    pop        esi
 0057403C    pop        ebx
 0057403D    pop        ecx
 0057403E    pop        ebp
 0057403F    ret
*}
//end;

//00574040
procedure TZAbstractRODataset.InternalSetToRecord(Buffer:PChar);
begin
{*
 00574040    push       ebp
 00574041    mov        ebp,esp
 00574043    mov        ecx,dword ptr [eax]
 00574045    call       dword ptr [ecx+1CC]; TZAbstractRODataset.InternalGotoBookmark
 0057404B    pop        ebp
 0057404C    ret
*}
end;

//00574050
procedure TZAbstractRODataset.InternalAddRecord(Buffer:Pointer; Append:Boolean);
begin
{*
 00574050    push       ebp
 00574051    mov        ebp,esp
 00574053    call       005717F0
 00574058    pop        ebp
 00574059    ret
*}
end;

//0057405C
procedure TZAbstractRODataset.InternalDelete;
begin
{*
 0057405C    push       ebp
 0057405D    mov        ebp,esp
 0057405F    call       005717F0
 00574064    pop        ebp
 00574065    ret
*}
end;

//00574068
//procedure sub_00574068(?:?);
//begin
{*
 00574068    push       ebp
 00574069    mov        ebp,esp
 0057406B    mov        ecx,6
 00574070    push       0
 00574072    push       0
 00574074    dec        ecx
<00574075    jne        00574070
 00574077    push       ebx
 00574078    push       esi
 00574079    xor        eax,eax
 0057407B    push       ebp
 0057407C    push       5742A0
 00574081    push       dword ptr fs:[eax]
 00574084    mov        dword ptr fs:[eax],esp
 00574087    mov        eax,dword ptr [ebp+8]
 0057408A    mov        eax,dword ptr [eax-4]
 0057408D    mov        eax,dword ptr [eax+30]
 00574090    call       TFields.GetCount
 00574095    mov        esi,eax
 00574097    sub        esi,1
>0057409A    jno        005740A1
 0057409C    call       @IntOver
 005740A1    test       esi,esi
>005740A3    jl         0057425D
 005740A9    inc        esi
 005740AA    mov        dword ptr [ebp-4],0
 005740B1    mov        eax,dword ptr [ebp+8]
 005740B4    mov        eax,dword ptr [eax-4]
 005740B7    mov        eax,dword ptr [eax+30]
 005740BA    mov        edx,dword ptr [ebp-4]
 005740BD    call       TFields.GetField
 005740C2    mov        ebx,eax
 005740C4    mov        eax,dword ptr [ebp+8]
 005740C7    mov        eax,dword ptr [eax-4]
 005740CA    mov        al,byte ptr [eax+9D]
 005740D0    sub        al,2
>005740D2    je         005740E1
 005740D4    dec        al
>005740D6    je         0057415E
>005740DC    jmp        00574253
 005740E1    cmp        byte ptr [ebx+45],0; TField.Required:Boolean
>005740E5    je         00574253
 005740EB    cmp        byte ptr [ebx+41],0; TField.ReadOnly:Boolean
>005740EF    jne        00574253
 005740F5    cmp        byte ptr [ebx+42],0; TField.FieldKind:TFieldKind
>005740F9    jne        00574253
 005740FF    mov        eax,ebx
 00574101    mov        edx,dword ptr [eax]
 00574103    call       dword ptr [edx+84]; TField.GetIsNull
 00574109    test       al,al
>0057410B    je         00574253
 00574111    lea        eax,[ebp-0C]
 00574114    push       eax
 00574115    lea        edx,[ebp-18]
 00574118    mov        eax,ebx
 0057411A    call       TField.GetDisplayName
 0057411F    mov        eax,dword ptr [ebp-18]
 00574122    mov        dword ptr [ebp-14],eax
 00574125    mov        byte ptr [ebp-10],0B
 00574129    lea        eax,[ebp-14]
 0057412C    push       eax
 0057412D    lea        edx,[ebp-1C]
 00574130    mov        eax,[0061AEB0]; ^#122.sResString82:TResStringRec
 00574135    call       LoadResString
 0057413A    mov        eax,dword ptr [ebp-1C]
 0057413D    xor        ecx,ecx
 0057413F    pop        edx
 00574140    call       Format
 00574145    mov        ecx,dword ptr [ebp-0C]
 00574148    mov        dl,1
 0057414A    mov        eax,[0057089C]; EZDatabaseError
 0057414F    call       EZDatabaseError.Create; EZDatabaseError.Create
 00574154    call       @RaiseExcept
>00574159    jmp        00574253
 0057415E    cmp        byte ptr [ebx+45],0; TField.Required:Boolean
>00574162    je         00574253
 00574168    cmp        byte ptr [ebx+41],0; TField.ReadOnly:Boolean
>0057416C    jne        00574253
 00574172    cmp        byte ptr [ebx+42],0; TField.FieldKind:TFieldKind
>00574176    jne        00574253
 0057417C    mov        eax,ebx
 0057417E    mov        edx,dword ptr [eax]
 00574180    call       dword ptr [edx+84]; TField.GetIsNull
 00574186    test       al,al
>00574188    je         00574253
 0057418E    mov        eax,dword ptr [ebp+8]
 00574191    mov        eax,dword ptr [eax-4]
 00574194    mov        eax,dword ptr [eax+30]
 00574197    mov        edx,dword ptr [ebp-4]
 0057419A    call       TFields.GetField
 0057419F    mov        edx,dword ptr [eax+38]; TField.?f38:String
 005741A2    mov        eax,dword ptr [ebp+8]
 005741A5    mov        eax,dword ptr [eax-4]
 005741A8    mov        eax,dword ptr [eax+1C8]
 005741AE    mov        ecx,dword ptr [eax]
 005741B0    call       dword ptr [ecx+0D0]
 005741B6    mov        dword ptr [ebp-8],eax
 005741B9    cmp        dword ptr [ebp-8],0
>005741BD    je         0057420B
 005741BF    lea        edx,[ebp-20]
 005741C2    mov        eax,dword ptr [ebp+8]
 005741C5    mov        eax,dword ptr [eax-4]
 005741C8    mov        eax,dword ptr [eax+1C8]
 005741CE    mov        ecx,dword ptr [eax]
 005741D0    call       dword ptr [ecx+0CC]
 005741D6    mov        eax,dword ptr [ebp-20]
 005741D9    mov        edx,dword ptr [ebp-8]
 005741DC    mov        ecx,dword ptr [eax]
 005741DE    call       dword ptr [ecx+60]
 005741E1    test       al,al
>005741E3    jne        00574253
 005741E5    lea        edx,[ebp-24]
 005741E8    mov        eax,dword ptr [ebp+8]
 005741EB    mov        eax,dword ptr [eax-4]
 005741EE    mov        eax,dword ptr [eax+1C8]
 005741F4    mov        ecx,dword ptr [eax]
 005741F6    call       dword ptr [ecx+0CC]
 005741FC    mov        eax,dword ptr [ebp-24]
 005741FF    mov        edx,dword ptr [ebp-8]
 00574202    mov        ecx,dword ptr [eax]
 00574204    call       dword ptr [ecx+10]
 00574207    test       al,al
>00574209    jne        00574253
 0057420B    lea        eax,[ebp-28]
 0057420E    push       eax
 0057420F    lea        edx,[ebp-2C]
 00574212    mov        eax,ebx
 00574214    call       TField.GetDisplayName
 00574219    mov        eax,dword ptr [ebp-2C]
 0057421C    mov        dword ptr [ebp-14],eax
 0057421F    mov        byte ptr [ebp-10],0B
 00574223    lea        eax,[ebp-14]
 00574226    push       eax
 00574227    lea        edx,[ebp-30]
 0057422A    mov        eax,[0061AEB0]; ^#122.sResString82:TResStringRec
 0057422F    call       LoadResString
 00574234    mov        eax,dword ptr [ebp-30]
 00574237    xor        ecx,ecx
 00574239    pop        edx
 0057423A    call       Format
 0057423F    mov        ecx,dword ptr [ebp-28]
 00574242    mov        dl,1
 00574244    mov        eax,[0057089C]; EZDatabaseError
 00574249    call       EZDatabaseError.Create; EZDatabaseError.Create
 0057424E    call       @RaiseExcept
 00574253    inc        dword ptr [ebp-4]
 00574256    dec        esi
<00574257    jne        005740B1
 0057425D    xor        eax,eax
 0057425F    pop        edx
 00574260    pop        ecx
 00574261    pop        ecx
 00574262    mov        dword ptr fs:[eax],edx
 00574265    push       5742A7
 0057426A    lea        eax,[ebp-30]
 0057426D    mov        edx,3
 00574272    call       @LStrArrayClr
 00574277    lea        eax,[ebp-24]
 0057427A    mov        edx,dword ptr ds:[4C7028]; IZResultSetMetadata
 00574280    mov        ecx,2
 00574285    call       @FinalizeArray
 0057428A    lea        eax,[ebp-1C]
 0057428D    mov        edx,2
 00574292    call       @LStrArrayClr
 00574297    lea        eax,[ebp-0C]
 0057429A    call       @LStrClr
 0057429F    ret
<005742A0    jmp        @HandleFinally
<005742A5    jmp        0057426A
 005742A7    pop        esi
 005742A8    pop        ebx
 005742A9    mov        esp,ebp
 005742AB    pop        ebp
 005742AC    ret
*}
//end;

//005742B0
procedure TZAbstractRODataset.InternalPost;
begin
{*
 005742B0    push       ebp
 005742B1    mov        ebp,esp
 005742B3    push       ecx
 005742B4    mov        dword ptr [ebp-4],eax
 005742B7    mov        eax,dword ptr [ebp-4]
 005742BA    mov        edx,dword ptr ds:[56E56C]; TZAbstractDataset
 005742C0    call       @IsClass
 005742C5    test       al,al
>005742C7    jne        005742D1
 005742C9    mov        eax,dword ptr [ebp-4]
 005742CC    call       005717F0
 005742D1    push       ebp
 005742D2    call       00574068
 005742D7    pop        ecx
 005742D8    pop        ecx
 005742D9    pop        ebp
 005742DA    ret
*}
end;

//005742DC
//function TZAbstractRODataset.GetBookmarkFlag(Buffer:PChar):?;
//begin
{*
 005742DC    mov        al,byte ptr [edx+5]
 005742DF    ret
*}
//end;

//005742E0
//procedure TZAbstractRODataset.SetBookmarkFlag(?:?; ?:?; Buffer:PChar; Value:TBookmarkFlag);
//begin
{*
 005742E0    movsx      eax,cl
 005742E3    cmp        eax,0FF
>005742E8    jbe        005742EF
 005742EA    call       @BoundErr
 005742EF    mov        byte ptr [edx+5],al
 005742F2    ret
*}
//end;

//005742F4
//procedure TZAbstractRODataset.GetBookmarkData(?:?; ?:?; Buffer:PChar; Data:Pointer);
//begin
{*
 005742F4    mov        eax,dword ptr [edx]
 005742F6    mov        dword ptr [ecx],eax
 005742F8    ret
*}
//end;

//005742FC
//procedure TZAbstractRODataset.SetBookmarkData(?:?; ?:?; Buffer:PChar; Data:Pointer);
//begin
{*
 005742FC    mov        eax,dword ptr [ecx]
 005742FE    mov        dword ptr [edx],eax
 00574300    ret
*}
//end;

//00574304
//function TZAbstractRODataset.CompareBookmarks(Bookmark1:Pointer; Bookmark2:Pointer):?;
//begin
{*
 00574304    push       ebp
 00574305    mov        ebp,esp
 00574307    push       ecx
 00574308    push       ebx
 00574309    push       esi
 0057430A    push       edi
 0057430B    mov        edi,ecx
 0057430D    mov        ebx,eax
 0057430F    xor        eax,eax
 00574311    mov        dword ptr [ebp-4],eax
 00574314    test       edx,edx
>00574316    je         00574350
 00574318    test       edi,edi
>0057431A    je         00574350
 0057431C    mov        edx,dword ptr [edx]
 0057431E    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00574324    call       TList.IndexOf
 00574329    mov        esi,eax
 0057432B    mov        edx,dword ptr [edi]
 0057432D    mov        eax,dword ptr [ebx+188]; TZAbstractRODataset.?f188:TZSortedList
 00574333    call       TList.IndexOf
 00574338    cmp        eax,esi
>0057433A    jle        00574345
 0057433C    mov        dword ptr [ebp-4],0FFFFFFFF
>00574343    jmp        00574350
 00574345    cmp        eax,esi
>00574347    jge        00574350
 00574349    mov        dword ptr [ebp-4],1
 00574350    mov        eax,dword ptr [ebp-4]
 00574353    pop        edi
 00574354    pop        esi
 00574355    pop        ebx
 00574356    pop        ecx
 00574357    pop        ebp
 00574358    ret
*}
//end;

//0057435C
//function TZAbstractRODataset.BookmarkValid(Bookmark:Pointer):?;
//begin
{*
 0057435C    push       ebp
 0057435D    mov        ebp,esp
 0057435F    push       ebx
 00574360    push       esi
 00574361    push       edi
 00574362    mov        edi,edx
 00574364    mov        esi,eax
 00574366    xor        ebx,ebx
 00574368    mov        eax,esi
 0057436A    call       TDataSet.GetActive
 0057436F    test       al,al
>00574371    je         005743B6
 00574373    test       edi,edi
>00574375    je         005743B6
 00574377    cmp        dword ptr [esi+1C8],0; TZAbstractRODataset.?f1C8:IZResultSet
>0057437E    je         005743B6
 00574380    xor        edx,edx
 00574382    push       ebp
 00574383    push       5743AA
 00574388    push       dword ptr fs:[edx]
 0057438B    mov        dword ptr fs:[edx],esp
 0057438E    mov        edx,dword ptr [edi]
 00574390    mov        eax,dword ptr [esi+188]; TZAbstractRODataset.?f188:TZSortedList
 00574396    call       TList.IndexOf
 0057439B    test       eax,eax
 0057439D    setge      bl
 005743A0    xor        eax,eax
 005743A2    pop        edx
 005743A3    pop        ecx
 005743A4    pop        ecx
 005743A5    mov        dword ptr fs:[eax],edx
>005743A8    jmp        005743B6
<005743AA    jmp        @HandleAnyException
 005743AF    xor        ebx,ebx
 005743B1    call       @DoneExcept
 005743B6    mov        eax,ebx
 005743B8    pop        edi
 005743B9    pop        esi
 005743BA    pop        ebx
 005743BB    pop        ebp
 005743BC    ret
*}
//end;

//005743C0
procedure TZAbstractRODataset.InternalInitRecord(Buffer:PChar);
begin
{*
 005743C0    push       ebp
 005743C1    mov        ebp,esp
 005743C3    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005743C9    call       004C9468
 005743CE    pop        ebp
 005743CF    ret
*}
end;

//005743D0
procedure TZAbstractRODataset.InternalRefresh;
begin
{*
 005743D0    push       ebp
 005743D1    mov        ebp,esp
 005743D3    mov        ecx,5
 005743D8    push       0
 005743DA    push       0
 005743DC    dec        ecx
<005743DD    jne        005743D8
 005743DF    push       ecx
 005743E0    push       ebx
 005743E1    mov        dword ptr [ebp-4],eax
 005743E4    xor        eax,eax
 005743E6    push       ebp
 005743E7    push       574643
 005743EC    push       dword ptr fs:[eax]
 005743EF    mov        dword ptr fs:[eax],esp
 005743F2    mov        byte ptr [ebp-15],0
 005743F6    lea        eax,[ebp-14]
 005743F9    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 005743FF    call       @DynArrayClear
 00574404    mov        eax,dword ptr [ebp-4]
 00574407    call       TDataSet.GetActive
 0057440C    test       al,al
>0057440E    je         00574601
 00574414    mov        eax,dword ptr [ebp-4]
 00574417    mov        ebx,dword ptr [eax+178]; TZAbstractRODataset.?f178:Integer
 0057441D    test       ebx,ebx
>0057441F    jle        00574524
 00574425    mov        edx,ebx
 00574427    sub        edx,1
>0057442A    jno        00574431
 0057442C    call       @IntOver
 00574431    mov        eax,dword ptr [ebp-4]
 00574434    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 0057443A    call       TList.Get
 0057443F    mov        ebx,eax
 00574441    mov        eax,dword ptr [ebp-4]
 00574444    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057444A    mov        edx,dword ptr [eax]
 0057444C    call       dword ptr [edx+0F4]
 00574452    cmp        ebx,eax
>00574454    je         00574469
 00574456    mov        eax,dword ptr [ebp-4]
 00574459    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 0057445F    mov        edx,ebx
 00574461    mov        ecx,dword ptr [eax]
 00574463    call       dword ptr [ecx+0F8]
 00574469    lea        ecx,[ebp-2C]
 0057446C    mov        eax,dword ptr [ebp-4]
 0057446F    mov        eax,dword ptr [eax+1BC]; TZAbstractRODataset.?f1BC:TStringList
 00574475    mov        edx,574658; 'KeyFields'
 0057447A    call       TStrings.GetValue
 0057447F    cmp        dword ptr [ebp-2C],0
>00574483    je         0057449D
 00574485    lea        ecx,[ebp-0C]
 00574488    mov        eax,dword ptr [ebp-4]
 0057448B    mov        eax,dword ptr [eax+1BC]; TZAbstractRODataset.?f1BC:TStringList
 00574491    mov        edx,574658; 'KeyFields'
 00574496    call       TStrings.GetValue
>0057449B    jmp        005744AB
 0057449D    lea        edx,[ebp-0C]
 005744A0    mov        eax,dword ptr [ebp-4]
 005744A3    mov        eax,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 005744A6    call       0056B258
 005744AB    lea        eax,[ebp-14]
 005744AE    push       eax
 005744AF    lea        ecx,[ebp-15]
 005744B2    mov        edx,dword ptr [ebp-0C]
 005744B5    mov        eax,dword ptr [ebp-4]
 005744B8    call       00569A08
 005744BD    mov        eax,dword ptr [ebp-14]
 005744C0    call       @DynArrayLength
 005744C5    push       eax
 005744C6    lea        eax,[ebp-10]
 005744C9    mov        ecx,1
 005744CE    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 005744D4    call       @DynArraySetLength
 005744D9    add        esp,4
 005744DC    lea        ecx,[ebp-10]
 005744DF    mov        eax,dword ptr [ebp-4]
 005744E2    mov        edx,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 005744E8    mov        eax,dword ptr [ebp-14]
 005744EB    call       00569DC0
 005744F0    mov        eax,dword ptr [ebp-14]
 005744F3    call       @DynArrayLength
 005744F8    dec        eax
>005744F9    jne        00574517
 005744FB    xor        eax,eax
 005744FD    imul       eax,eax,0B
>00574500    jno        00574507
 00574502    call       @IntOver
 00574507    mov        edx,dword ptr [ebp-10]
 0057450A    lea        eax,[edx+eax*4]
 0057450D    lea        edx,[ebp-28]
 00574510    call       004C66C0
>00574515    jmp        00574534
 00574517    lea        edx,[ebp-28]
 0057451A    mov        eax,dword ptr [ebp-10]
 0057451D    call       004C67E4
>00574522    jmp        00574534
 00574524    lea        eax,[ebp-0C]
 00574527    call       @LStrClr
 0057452C    lea        eax,[ebp-28]
 0057452F    call       Unassigned
 00574534    mov        eax,dword ptr [ebp-4]
 00574537    call       TDataSet.DisableControls
 0057453C    xor        eax,eax
 0057453E    push       ebp
 0057453F    push       5745DE
 00574544    push       dword ptr fs:[eax]
 00574547    mov        dword ptr fs:[eax],esp
 0057454A    xor        eax,eax
 0057454C    push       ebp
 0057454D    push       574590
 00574552    push       dword ptr fs:[eax]
 00574555    mov        dword ptr fs:[eax],esp
 00574558    mov        eax,dword ptr [ebp-4]
 0057455B    mov        byte ptr [eax+1CC],1; TZAbstractRODataset.?f1CC:byte
 00574562    mov        eax,dword ptr [ebp-4]
 00574565    mov        edx,dword ptr [eax]
 00574567    call       dword ptr [edx+1F4]; TZAbstractRODataset.sub_00573770
 0057456D    mov        eax,dword ptr [ebp-4]
 00574570    mov        edx,dword ptr [eax]
 00574572    call       dword ptr [edx+200]; TZAbstractRODataset.sub_005734C0
 00574578    xor        eax,eax
 0057457A    pop        edx
 0057457B    pop        ecx
 0057457C    pop        ecx
 0057457D    mov        dword ptr fs:[eax],edx
 00574580    push       574597
 00574585    mov        eax,dword ptr [ebp-4]
 00574588    mov        byte ptr [eax+1CC],0; TZAbstractRODataset.?f1CC:byte
 0057458F    ret
<00574590    jmp        @HandleFinally
<00574595    jmp        00574585
 00574597    mov        eax,dword ptr [ebp-4]
 0057459A    mov        edx,dword ptr [eax]
 0057459C    call       dword ptr [edx+0FC]; TDataSet.DoBeforeScroll
 005745A2    cmp        dword ptr [ebp-0C],0
>005745A6    je         005745C4
 005745A8    mov        al,[00574664]; 0x0
 005745AD    push       eax
 005745AE    lea        ecx,[ebp-28]
 005745B1    mov        edx,dword ptr [ebp-0C]
 005745B4    mov        eax,dword ptr [ebp-4]
 005745B7    mov        ebx,dword ptr [eax]
 005745B9    call       dword ptr [ebx+244]; TZAbstractRODataset.Locate
 005745BF    mov        byte ptr [ebp-5],al
>005745C2    jmp        005745C8
 005745C4    mov        byte ptr [ebp-5],0
 005745C8    xor        eax,eax
 005745CA    pop        edx
 005745CB    pop        ecx
 005745CC    pop        ecx
 005745CD    mov        dword ptr fs:[eax],edx
 005745D0    push       5745E5
 005745D5    mov        eax,dword ptr [ebp-4]
 005745D8    call       TDataSet.EnableControls
 005745DD    ret
<005745DE    jmp        @HandleFinally
<005745E3    jmp        005745D5
 005745E5    cmp        byte ptr [ebp-5],0
>005745E9    jne        00574601
 005745EB    mov        eax,dword ptr [ebp-4]
 005745EE    mov        edx,dword ptr [eax]
 005745F0    call       dword ptr [edx+0FC]; TDataSet.DoBeforeScroll
 005745F6    mov        eax,dword ptr [ebp-4]
 005745F9    mov        edx,dword ptr [eax]
 005745FB    call       dword ptr [edx+0D8]; TDataSet.DoAfterScroll
 00574601    xor        eax,eax
 00574603    pop        edx
 00574604    pop        ecx
 00574605    pop        ecx
 00574606    mov        dword ptr fs:[eax],edx
 00574609    push       57464A
 0057460E    lea        eax,[ebp-2C]
 00574611    call       @LStrClr
 00574616    lea        eax,[ebp-28]
 00574619    call       @VarClr
 0057461E    lea        eax,[ebp-14]
 00574621    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00574627    call       @DynArrayClear
 0057462C    lea        eax,[ebp-10]
 0057462F    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00574635    call       @DynArrayClear
 0057463A    lea        eax,[ebp-0C]
 0057463D    call       @LStrClr
 00574642    ret
<00574643    jmp        @HandleFinally
<00574648    jmp        0057460E
 0057464A    pop        ebx
 0057464B    mov        esp,ebp
 0057464D    pop        ebp
 0057464E    ret
*}
end;

//00574668
//function TZAbstractRODataset.FindRecord(Restart:Boolean; GoForward:Boolean):?;
//begin
{*
 00574668    push       ebp
 00574669    mov        ebp,esp
 0057466B    add        esp,0FFFFFFF0
 0057466E    push       ebx
 0057466F    mov        ebx,ecx
 00574671    mov        byte ptr [ebp-5],dl
 00574674    mov        dword ptr [ebp-4],eax
 00574677    mov        eax,dword ptr [ebp-4]
 0057467A    call       TDataSet.CheckBrowseMode
 0057467F    mov        eax,dword ptr [ebp-4]
 00574682    mov        edx,dword ptr [eax]
 00574684    call       dword ptr [edx+0FC]; TDataSet.DoBeforeScroll
 0057468A    mov        byte ptr [ebp-6],0
 0057468E    cmp        byte ptr [ebp-5],0
>00574692    je         005746BC
 00574694    test       bl,bl
>00574696    je         005746A1
 00574698    mov        dword ptr [ebp-0C],1
>0057469F    jmp        005746FD
 005746A1    xor        edx,edx
 005746A3    mov        eax,dword ptr [ebp-4]
 005746A6    call       00571844
 005746AB    mov        eax,dword ptr [ebp-4]
 005746AE    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 005746B4    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 005746B7    mov        dword ptr [ebp-0C],eax
>005746BA    jmp        005746FD
 005746BC    mov        eax,dword ptr [ebp-4]
 005746BF    mov        eax,dword ptr [eax+178]; TZAbstractRODataset.?f178:Integer
 005746C5    mov        dword ptr [ebp-0C],eax
 005746C8    test       bl,bl
>005746CA    je         005746F2
 005746CC    add        dword ptr [ebp-0C],1
>005746D0    jno        005746D7
 005746D2    call       @IntOver
 005746D7    mov        eax,dword ptr [ebp-4]
 005746DA    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 005746E0    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 005746E3    cmp        eax,dword ptr [ebp-0C]
>005746E6    jge        005746FD
 005746E8    mov        eax,dword ptr [ebp-4]
 005746EB    call       005718D8
>005746F0    jmp        005746FD
 005746F2    sub        dword ptr [ebp-0C],1
>005746F6    jno        005746FD
 005746F8    call       @IntOver
 005746FD    mov        eax,dword ptr [ebp-4]
 00574700    mov        al,byte ptr [eax+198]; TZAbstractRODataset.?f198:byte
 00574706    mov        byte ptr [ebp-0D],al
 00574709    xor        eax,eax
 0057470B    push       ebp
 0057470C    push       57479E
 00574711    push       dword ptr fs:[eax]
 00574714    mov        dword ptr fs:[eax],esp
 00574717    mov        eax,dword ptr [ebp-4]
 0057471A    mov        byte ptr [eax+198],1; TZAbstractRODataset.?f198:byte
>00574721    jmp        0057476D
 00574723    mov        edx,dword ptr [ebp-0C]
 00574726    mov        eax,dword ptr [ebp-4]
 00574729    call       00571978
 0057472E    test       al,al
>00574730    je         00574738
 00574732    mov        byte ptr [ebp-6],1
>00574736    jmp        00574784
 00574738    test       bl,bl
>0057473A    je         00574762
 0057473C    add        dword ptr [ebp-0C],1
>00574740    jno        00574747
 00574742    call       @IntOver
 00574747    mov        eax,dword ptr [ebp-4]
 0057474A    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574750    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00574753    cmp        eax,dword ptr [ebp-0C]
>00574756    jge        0057476D
 00574758    mov        eax,dword ptr [ebp-4]
 0057475B    call       005718D8
>00574760    jmp        0057476D
 00574762    sub        dword ptr [ebp-0C],1
>00574766    jno        0057476D
 00574768    call       @IntOver
 0057476D    cmp        dword ptr [ebp-0C],1
>00574771    jl         00574784
 00574773    mov        eax,dword ptr [ebp-4]
 00574776    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 0057477C    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 0057477F    cmp        eax,dword ptr [ebp-0C]
<00574782    jge        00574723
 00574784    xor        eax,eax
 00574786    pop        edx
 00574787    pop        ecx
 00574788    pop        ecx
 00574789    mov        dword ptr fs:[eax],edx
 0057478C    push       5747A5
 00574791    mov        eax,dword ptr [ebp-4]
 00574794    mov        dl,byte ptr [ebp-0D]
 00574797    mov        byte ptr [eax+198],dl; TZAbstractRODataset.?f198:byte
 0057479D    ret
<0057479E    jmp        @HandleFinally
<005747A3    jmp        00574791
 005747A5    mov        dl,byte ptr [ebp-6]
 005747A8    mov        eax,dword ptr [ebp-4]
 005747AB    call       TDataSet.SetFound
 005747B0    cmp        byte ptr [ebp-6],0
>005747B4    je         005747CC
 005747B6    mov        edx,dword ptr [ebp-0C]
 005747B9    mov        eax,dword ptr [ebp-4]
 005747BC    call       00573904
 005747C1    mov        eax,dword ptr [ebp-4]
 005747C4    mov        edx,dword ptr [eax]
 005747C6    call       dword ptr [edx+0D8]; TDataSet.DoAfterScroll
 005747CC    mov        al,byte ptr [ebp-6]
 005747CF    pop        ebx
 005747D0    mov        esp,ebp
 005747D2    pop        ebp
 005747D3    ret
*}
//end;

//005747D4
//procedure TZAbstractRODataset.SetFiltered(?:?);
//begin
{*
 005747D4    push       ebp
 005747D5    mov        ebp,esp
 005747D7    push       ebx
 005747D8    mov        ebx,eax
 005747DA    cmp        dl,byte ptr [ebx+198]; TZAbstractRODataset.?f198:byte
>005747E0    je         005747F6
 005747E2    mov        byte ptr [ebx+198],dl; TZAbstractRODataset.?f198:byte
 005747E8    mov        eax,ebx
 005747EA    call       TDataSet.SetFiltered
 005747EF    mov        eax,ebx
 005747F1    call       00571D44
 005747F6    pop        ebx
 005747F7    pop        ebp
 005747F8    ret
*}
//end;

//005747FC
//procedure TZAbstractRODataset.SetFilter(?:?);
//begin
{*
 005747FC    push       ebp
 005747FD    mov        ebp,esp
 005747FF    push       0
 00574801    push       ebx
 00574802    push       esi
 00574803    mov        esi,edx
 00574805    mov        ebx,eax
 00574807    xor        eax,eax
 00574809    push       ebp
 0057480A    push       57486E
 0057480F    push       dword ptr fs:[eax]
 00574812    mov        dword ptr fs:[eax],esp
 00574815    mov        edx,esi
 00574817    mov        eax,ebx
 00574819    call       TDataSet.SetFilterText
 0057481E    lea        edx,[ebp-4]
 00574821    mov        eax,dword ptr [ebx+19C]; TZAbstractRODataset.?f19C:IZExpression
 00574827    mov        ecx,dword ptr [eax]
 00574829    call       dword ptr [ecx+24]
 0057482C    mov        eax,dword ptr [ebp-4]
 0057482F    mov        edx,dword ptr [eax]
 00574831    call       dword ptr [edx+34]
 00574834    mov        edx,esi
 00574836    mov        eax,dword ptr [ebx+19C]; TZAbstractRODataset.?f19C:IZExpression
 0057483C    mov        ecx,dword ptr [eax]
 0057483E    call       dword ptr [ecx+18]
 00574841    mov        byte ptr [ebx+1A8],0; TZAbstractRODataset.?f1A8:byte
 00574848    cmp        byte ptr [ebx+198],0; TZAbstractRODataset.?f198:byte
>0057484F    je         00574858
 00574851    mov        eax,ebx
 00574853    call       00571D44
 00574858    xor        eax,eax
 0057485A    pop        edx
 0057485B    pop        ecx
 0057485C    pop        ecx
 0057485D    mov        dword ptr fs:[eax],edx
 00574860    push       574875
 00574865    lea        eax,[ebp-4]
 00574868    call       @IntfClear
 0057486D    ret
<0057486E    jmp        @HandleFinally
<00574873    jmp        00574865
 00574875    pop        esi
 00574876    pop        ebx
 00574877    pop        ecx
 00574878    pop        ebp
 00574879    ret
*}
//end;

//0057487C
procedure TZAbstractRODataset.IsSequenced;
begin
{*
 0057487C    mov        al,byte ptr [eax+198]; TZAbstractRODataset.?f198:byte
 00574882    xor        al,1
 00574884    ret
*}
end;

//00574888
procedure TZAbstractRODataset.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00574888    push       ebp
 00574889    mov        ebp,esp
 0057488B    push       ebx
 0057488C    push       esi
 0057488D    push       edi
 0057488E    mov        ebx,ecx
 00574890    mov        esi,edx
 00574892    mov        edi,eax
 00574894    mov        ecx,ebx
 00574896    mov        edx,esi
 00574898    mov        eax,edi
 0057489A    call       TComponent.Notification
 0057489F    cmp        bl,1
>005748A2    jne        005748BB
 005748A4    cmp        esi,dword ptr [edi+1C0]; TZAbstractRODataset.Connection:TZConnection
>005748AA    jne        005748BB
 005748AC    mov        eax,edi
 005748AE    call       TDataSet.Close
 005748B3    xor        eax,eax
 005748B5    mov        dword ptr [edi+1C0],eax; TZAbstractRODataset.Connection:TZConnection
 005748BB    cmp        bl,1
>005748BE    jne        005748E1
 005748C0    cmp        dword ptr [edi+1D0],0; TZAbstractRODataset.?f1D0:TZDataLink
>005748C7    je         005748E1
 005748C9    mov        eax,dword ptr [edi+1D0]; TZAbstractRODataset.?f1D0:TZDataLink
 005748CF    cmp        esi,dword ptr [eax+4]; TZDataLink.FDataSource:TDataSource
>005748D2    jne        005748E1
 005748D4    xor        edx,edx
 005748D6    mov        eax,dword ptr [edi+1D0]; TZAbstractRODataset.?f1D0:TZDataLink
 005748DC    call       TDataLink.SetDataSource
 005748E1    cmp        bl,1
>005748E4    jne        0057490E
 005748E6    cmp        dword ptr [edi+1D4],0; TZAbstractRODataset.?f1D4:TMasterDataLink
>005748ED    je         0057490E
 005748EF    mov        eax,dword ptr [edi+1D4]; TZAbstractRODataset.?f1D4:TMasterDataLink
 005748F5    cmp        esi,dword ptr [eax+4]; TMasterDataLink.FDataSource:TDataSource
>005748F8    jne        0057490E
 005748FA    xor        edx,edx
 005748FC    mov        eax,dword ptr [edi+1D4]; TZAbstractRODataset.?f1D4:TMasterDataLink
 00574902    call       TDataLink.SetDataSource
 00574907    mov        eax,edi
 00574909    call       00571D44
 0057490E    pop        edi
 0057490F    pop        esi
 00574910    pop        ebx
 00574911    pop        ebp
 00574912    ret
*}
end;

//00574914
//function sub_00574914(?:TZAbstractRODataset; ?:AnsiString; ?:Variant; ?:?):?;
//begin
{*
 00574914    push       ebp
 00574915    mov        ebp,esp
 00574917    add        esp,0FFFFFFD8
 0057491A    push       ebx
 0057491B    push       esi
 0057491C    push       edi
 0057491D    xor        ebx,ebx
 0057491F    mov        dword ptr [ebp-28],ebx
 00574922    mov        dword ptr [ebp-0C],ebx
 00574925    mov        dword ptr [ebp-10],ebx
 00574928    mov        dword ptr [ebp-1C],ebx
 0057492B    mov        dword ptr [ebp-20],ebx
 0057492E    mov        esi,ecx
 00574930    mov        edi,edx
 00574932    mov        dword ptr [ebp-4],eax
 00574935    mov        ebx,dword ptr [ebp+8]
 00574938    xor        eax,eax
 0057493A    push       ebp
 0057493B    push       574C44
 00574940    push       dword ptr fs:[eax]
 00574943    mov        dword ptr fs:[eax],esp
 00574946    mov        byte ptr [ebp-11],0
 0057494A    mov        eax,dword ptr [ebp-4]
 0057494D    call       TDataSet.CheckBrowseMode
 00574952    mov        dword ptr [ebp-8],0FFFFFFFF
 00574959    lea        eax,[ebp-1C]
 0057495C    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00574962    call       @DynArrayClear
 00574967    test       bl,2
 0057496A    setne      al
 0057496D    mov        byte ptr [ebp-21],al
 00574970    test       bl,1
 00574973    setne      al
 00574976    mov        byte ptr [ebp-22],al
 00574979    lea        eax,[ebp-0C]
 0057497C    push       eax
 0057497D    lea        ecx,[ebp-11]
 00574980    mov        edx,edi
 00574982    mov        eax,dword ptr [ebp-4]
 00574985    call       00569A08
 0057498A    lea        eax,[ebp-10]
 0057498D    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00574993    call       @DynArrayClear
 00574998    cmp        dword ptr [ebp-0C],0
>0057499C    je         00574BFF
 005749A2    lea        edx,[ebp-1C]
 005749A5    mov        eax,esi
 005749A7    call       004C6A68
 005749AC    mov        eax,dword ptr [ebp-0C]
 005749AF    call       @DynArrayLength
 005749B4    mov        ebx,eax
 005749B6    mov        eax,dword ptr [ebp-1C]
 005749B9    call       @DynArrayLength
 005749BE    cmp        ebx,eax
>005749C0    je         005749E3
 005749C2    lea        edx,[ebp-28]
 005749C5    mov        eax,[0061B6A0]; ^#122.sResString67:TResStringRec
 005749CA    call       LoadResString
 005749CF    mov        ecx,dword ptr [ebp-28]
 005749D2    mov        dl,1
 005749D4    mov        eax,[0057089C]; EZDatabaseError
 005749D9    call       EZDatabaseError.Create; EZDatabaseError.Create
 005749DE    call       @RaiseExcept
 005749E3    mov        eax,dword ptr [ebp-1C]
 005749E6    call       @DynArrayLength
 005749EB    push       eax
 005749EC    lea        eax,[ebp-20]
 005749EF    mov        ecx,1
 005749F4    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 005749FA    call       @DynArraySetLength
 005749FF    add        esp,4
 00574A02    cmp        byte ptr [ebp-11],0
>00574A06    jne        00574B53
 00574A0C    mov        eax,dword ptr [ebp-4]
 00574A0F    mov        edx,dword ptr [eax]
 00574A11    call       dword ptr [edx+1AC]; TZAbstractRODataset.AllocRecordBuffer
 00574A17    mov        dword ptr [ebp-18],eax
 00574A1A    xor        edx,edx
 00574A1C    push       ebp
 00574A1D    push       574B4C
 00574A22    push       dword ptr fs:[edx]
 00574A25    mov        dword ptr fs:[edx],esp
 00574A28    xor        esi,esi
 00574A2A    lea        ecx,[ebp-10]
 00574A2D    mov        eax,dword ptr [ebp-4]
 00574A30    mov        eax,dword ptr [eax+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00574A36    mov        edx,dword ptr [ebp-0C]
 00574A39    call       0056BB5C
 00574A3E    mov        eax,dword ptr [ebp-4]
 00574A41    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574A47    mov        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
>00574A4A    jmp        00574A58
 00574A4C    mov        eax,dword ptr [ebp-4]
 00574A4F    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574A55    mov        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00574A58    cmp        ebx,esi
>00574A5A    jg         00574A68
 00574A5C    mov        eax,dword ptr [ebp-4]
 00574A5F    call       005718D8
 00574A64    test       al,al
<00574A66    jne        00574A4C
 00574A68    cmp        ebx,esi
>00574A6A    jle        00574B2A
 00574A70    mov        eax,dword ptr [ebp-4]
 00574A73    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574A79    mov        edx,esi
 00574A7B    call       TList.Get
 00574A80    mov        edi,eax
 00574A82    mov        eax,dword ptr [ebp-4]
 00574A85    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574A8B    mov        edx,edi
 00574A8D    mov        ecx,dword ptr [eax]
 00574A8F    call       dword ptr [ecx+0F8]
 00574A95    mov        edx,dword ptr [ebp-4]
 00574A98    mov        edx,dword ptr [edx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574A9E    mov        eax,dword ptr [ebp-18]
 00574AA1    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
 00574AA4    mov        edx,dword ptr [ebp-4]
 00574AA7    mov        dword ptr [eax],edi
 00574AA9    mov        eax,dword ptr [ebp-4]
 00574AAC    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574AB2    push       eax
 00574AB3    mov        eax,dword ptr [ebp-4]
 00574AB6    mov        ecx,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 00574AB9    mov        eax,dword ptr [ebp-4]
 00574ABC    mov        edx,dword ptr [eax+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00574AC2    mov        eax,dword ptr [ebp-4]
 00574AC5    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574ACB    call       005692D0
 00574AD0    mov        edx,dword ptr [ebp-18]
 00574AD3    mov        eax,dword ptr [ebp-4]
 00574AD6    mov        ecx,dword ptr [eax]
 00574AD8    call       dword ptr [ecx+120]; TDataSet.GetCalcFields
 00574ADE    lea        eax,[ebp-20]
 00574AE1    push       eax
 00574AE2    mov        eax,dword ptr [ebp-4]
 00574AE5    mov        ecx,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574AEB    mov        edx,dword ptr [ebp-10]
 00574AEE    mov        eax,dword ptr [ebp-0C]
 00574AF1    call       0056A0C4
 00574AF6    mov        al,byte ptr [ebp-22]
 00574AF9    push       eax
 00574AFA    mov        cl,byte ptr [ebp-21]
 00574AFD    mov        edx,dword ptr [ebp-20]
 00574B00    mov        eax,dword ptr [ebp-1C]
 00574B03    call       0056A6BC
 00574B08    test       al,al
>00574B0A    je         00574B1B
 00574B0C    add        esi,1
>00574B0F    jno        00574B16
 00574B11    call       @IntOver
 00574B16    mov        dword ptr [ebp-8],esi
>00574B19    jmp        00574B2A
 00574B1B    add        esi,1
>00574B1E    jno        00574B25
 00574B20    call       @IntOver
<00574B25    jmp        00574A58
 00574B2A    xor        eax,eax
 00574B2C    pop        edx
 00574B2D    pop        ecx
 00574B2E    pop        ecx
 00574B2F    mov        dword ptr fs:[eax],edx
 00574B32    push       574BFF
 00574B37    cmp        dword ptr [ebp-18],0
>00574B3B    je         00574B4B
 00574B3D    lea        edx,[ebp-18]
 00574B40    mov        eax,dword ptr [ebp-4]
 00574B43    mov        ecx,dword ptr [eax]
 00574B45    call       dword ptr [ecx+1B0]; TZAbstractRODataset.FreeRecordBuffer
 00574B4B    ret
<00574B4C    jmp        @HandleFinally
<00574B51    jmp        00574B37
 00574B53    mov        al,byte ptr [ebp-21]
 00574B56    push       eax
 00574B57    mov        al,byte ptr [ebp-22]
 00574B5A    push       eax
 00574B5B    mov        eax,dword ptr [ebp-4]
 00574B5E    mov        ecx,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574B64    lea        edx,[ebp-1C]
 00574B67    mov        eax,dword ptr [ebp-0C]
 00574B6A    call       0056A894
 00574B6F    xor        esi,esi
 00574B71    mov        eax,dword ptr [ebp-4]
 00574B74    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574B7A    mov        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
>00574B7D    jmp        00574B8B
 00574B7F    mov        eax,dword ptr [ebp-4]
 00574B82    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574B88    mov        ebx,dword ptr [eax+8]; TZSortedList.FCount:Integer
 00574B8B    cmp        ebx,esi
>00574B8D    jg         00574B9B
 00574B8F    mov        eax,dword ptr [ebp-4]
 00574B92    call       005718D8
 00574B97    test       al,al
<00574B99    jne        00574B7F
 00574B9B    cmp        ebx,esi
>00574B9D    jle        00574BFF
 00574B9F    mov        eax,dword ptr [ebp-4]
 00574BA2    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574BA8    mov        edx,esi
 00574BAA    call       TList.Get
 00574BAF    mov        edi,eax
 00574BB1    mov        eax,dword ptr [ebp-4]
 00574BB4    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574BBA    mov        edx,edi
 00574BBC    mov        ecx,dword ptr [eax]
 00574BBE    call       dword ptr [ecx+0F8]
 00574BC4    mov        al,byte ptr [ebp-21]
 00574BC7    push       eax
 00574BC8    mov        al,byte ptr [ebp-22]
 00574BCB    push       eax
 00574BCC    mov        eax,dword ptr [ebp-4]
 00574BCF    mov        ecx,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574BD5    mov        edx,dword ptr [ebp-1C]
 00574BD8    mov        eax,dword ptr [ebp-0C]
 00574BDB    call       0056AE98
 00574BE0    test       al,al
>00574BE2    je         00574BF3
 00574BE4    add        esi,1
>00574BE7    jno        00574BEE
 00574BE9    call       @IntOver
 00574BEE    mov        dword ptr [ebp-8],esi
>00574BF1    jmp        00574BFF
 00574BF3    add        esi,1
>00574BF6    jno        00574BFD
 00574BF8    call       @IntOver
<00574BFD    jmp        00574B8B
 00574BFF    xor        eax,eax
 00574C01    pop        edx
 00574C02    pop        ecx
 00574C03    pop        ecx
 00574C04    mov        dword ptr fs:[eax],edx
 00574C07    push       574C4B
 00574C0C    lea        eax,[ebp-28]
 00574C0F    call       @LStrClr
 00574C14    lea        eax,[ebp-20]
 00574C17    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00574C1D    mov        ecx,2
 00574C22    call       @FinalizeArray
 00574C27    lea        eax,[ebp-10]
 00574C2A    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00574C30    call       @DynArrayClear
 00574C35    lea        eax,[ebp-0C]
 00574C38    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00574C3E    call       @DynArrayClear
 00574C43    ret
<00574C44    jmp        @HandleFinally
<00574C49    jmp        00574C0C
 00574C4B    mov        eax,dword ptr [ebp-8]
 00574C4E    pop        edi
 00574C4F    pop        esi
 00574C50    pop        ebx
 00574C51    mov        esp,ebp
 00574C53    pop        ebp
 00574C54    ret        4
*}
//end;

//00574C58
//function TZAbstractRODataset.Locate(KeyFields:AnsiString; var KeyValues:Variant; Options:TLocateOptions):?;
//begin
{*
 00574C58    push       ebp
 00574C59    mov        ebp,esp
 00574C5B    push       ebx
 00574C5C    push       esi
 00574C5D    push       edi
 00574C5E    mov        edi,ecx
 00574C60    mov        ebx,edx
 00574C62    mov        esi,eax
 00574C64    mov        eax,esi
 00574C66    mov        edx,dword ptr [eax]
 00574C68    call       dword ptr [edx+0FC]; TDataSet.DoBeforeScroll
 00574C6E    mov        al,byte ptr [ebp+8]
 00574C71    push       eax
 00574C72    mov        ecx,edi
 00574C74    mov        edx,ebx
 00574C76    mov        eax,esi
 00574C78    call       00574914
 00574C7D    test       eax,eax
>00574C7F    jle        00574C98
 00574C81    mov        edx,eax
 00574C83    mov        eax,esi
 00574C85    call       00573904
 00574C8A    mov        eax,esi
 00574C8C    mov        edx,dword ptr [eax]
 00574C8E    call       dword ptr [edx+0D8]; TDataSet.DoAfterScroll
 00574C94    mov        bl,1
>00574C96    jmp        00574C9A
 00574C98    xor        ebx,ebx
 00574C9A    mov        edx,ebx
 00574C9C    mov        eax,esi
 00574C9E    call       TDataSet.SetFound
 00574CA3    mov        eax,ebx
 00574CA5    pop        edi
 00574CA6    pop        esi
 00574CA7    pop        ebx
 00574CA8    pop        ebp
 00574CA9    ret        4
*}
//end;

//00574CAC
//procedure TZAbstractRODataset.Lookup(KeyFields:AnsiString; var KeyValues:Variant; ResultFields:AnsiString; ?:?);
//begin
{*
 00574CAC    push       ebp
 00574CAD    mov        ebp,esp
 00574CAF    add        esp,0FFFFFFE8
 00574CB2    push       ebx
 00574CB3    push       esi
 00574CB4    xor        ebx,ebx
 00574CB6    mov        dword ptr [ebp-8],ebx
 00574CB9    mov        dword ptr [ebp-0C],ebx
 00574CBC    mov        dword ptr [ebp-18],ebx
 00574CBF    mov        esi,ecx
 00574CC1    mov        ebx,edx
 00574CC3    mov        dword ptr [ebp-4],eax
 00574CC6    xor        eax,eax
 00574CC8    push       ebp
 00574CC9    push       574EA8
 00574CCE    push       dword ptr fs:[eax]
 00574CD1    mov        dword ptr fs:[eax],esp
 00574CD4    mov        byte ptr [ebp-0D],0
 00574CD8    mov        eax,dword ptr [ebp+8]
 00574CDB    call       Null
 00574CE0    mov        al,[00574EB8]; 0x0
 00574CE5    push       eax
 00574CE6    mov        ecx,esi
 00574CE8    mov        edx,ebx
 00574CEA    mov        eax,dword ptr [ebp-4]
 00574CED    call       00574914
 00574CF2    mov        ebx,eax
 00574CF4    lea        eax,[ebp-8]
 00574CF7    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00574CFD    call       @DynArrayClear
 00574D02    lea        eax,[ebp-0C]
 00574D05    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00574D0B    call       @DynArrayClear
 00574D10    test       ebx,ebx
>00574D12    jl         00574E70
 00574D18    lea        eax,[ebp-8]
 00574D1B    push       eax
 00574D1C    lea        ecx,[ebp-0D]
 00574D1F    mov        edx,dword ptr [ebp+0C]
 00574D22    mov        eax,dword ptr [ebp-4]
 00574D25    call       00569A08
 00574D2A    lea        ecx,[ebp-0C]
 00574D2D    mov        eax,dword ptr [ebp-4]
 00574D30    mov        eax,dword ptr [eax+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00574D36    mov        edx,dword ptr [ebp-8]
 00574D39    call       0056BB5C
 00574D3E    mov        eax,dword ptr [ebp-8]
 00574D41    call       @DynArrayLength
 00574D46    push       eax
 00574D47    lea        eax,[ebp-18]
 00574D4A    mov        ecx,1
 00574D4F    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00574D55    call       @DynArraySetLength
 00574D5A    add        esp,4
 00574D5D    mov        eax,dword ptr [ebp-4]
 00574D60    mov        edx,dword ptr [eax]
 00574D62    call       dword ptr [edx+1AC]; TZAbstractRODataset.AllocRecordBuffer
 00574D68    mov        dword ptr [ebp-14],eax
 00574D6B    xor        ecx,ecx
 00574D6D    push       ebp
 00574D6E    push       574E37
 00574D73    push       dword ptr fs:[ecx]
 00574D76    mov        dword ptr fs:[ecx],esp
 00574D79    mov        edx,ebx
 00574D7B    sub        edx,1
>00574D7E    jno        00574D85
 00574D80    call       @IntOver
 00574D85    mov        eax,dword ptr [ebp-4]
 00574D88    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00574D8E    call       TList.Get
 00574D93    mov        ebx,eax
 00574D95    mov        eax,dword ptr [ebp-4]
 00574D98    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574D9E    mov        edx,dword ptr [eax]
 00574DA0    call       dword ptr [edx+0F4]
 00574DA6    cmp        ebx,eax
>00574DA8    je         00574DBD
 00574DAA    mov        eax,dword ptr [ebp-4]
 00574DAD    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574DB3    mov        edx,ebx
 00574DB5    mov        ecx,dword ptr [eax]
 00574DB7    call       dword ptr [ecx+0F8]
 00574DBD    mov        edx,dword ptr [ebp-4]
 00574DC0    mov        edx,dword ptr [edx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574DC6    mov        eax,dword ptr [ebp-14]
 00574DC9    mov        dword ptr [edx+24],eax; TZRowAccessor.?f24:Pointer
 00574DCC    mov        edx,dword ptr [ebp-4]
 00574DCF    mov        edx,dword ptr [edx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574DD5    mov        dword ptr [eax],ebx
 00574DD7    push       edx
 00574DD8    mov        eax,dword ptr [ebp-4]
 00574DDB    mov        ecx,dword ptr [eax+30]; TZAbstractRODataset.FFields:TFields
 00574DDE    mov        eax,dword ptr [ebp-4]
 00574DE1    mov        eax,dword ptr [eax+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574DE7    mov        edx,dword ptr [ebp-4]
 00574DEA    mov        edx,dword ptr [edx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00574DF0    call       005692D0
 00574DF5    mov        edx,dword ptr [ebp-14]
 00574DF8    mov        eax,dword ptr [ebp-4]
 00574DFB    mov        ecx,dword ptr [eax]
 00574DFD    call       dword ptr [ecx+120]; TDataSet.GetCalcFields
 00574E03    lea        eax,[ebp-18]
 00574E06    push       eax
 00574E07    mov        eax,dword ptr [ebp-4]
 00574E0A    mov        ecx,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00574E10    mov        edx,dword ptr [ebp-0C]
 00574E13    mov        eax,dword ptr [ebp-8]
 00574E16    call       0056A0C4
 00574E1B    xor        eax,eax
 00574E1D    pop        edx
 00574E1E    pop        ecx
 00574E1F    pop        ecx
 00574E20    mov        dword ptr fs:[eax],edx
 00574E23    push       574E3E
 00574E28    lea        edx,[ebp-14]
 00574E2B    mov        eax,dword ptr [ebp-4]
 00574E2E    mov        ecx,dword ptr [eax]
 00574E30    call       dword ptr [ecx+1B0]; TZAbstractRODataset.FreeRecordBuffer
 00574E36    ret
<00574E37    jmp        @HandleFinally
<00574E3C    jmp        00574E28
 00574E3E    mov        eax,dword ptr [ebp-0C]
 00574E41    call       @DynArrayLength
 00574E46    dec        eax
>00574E47    jne        00574E65
 00574E49    xor        eax,eax
 00574E4B    imul       eax,eax,0B
>00574E4E    jno        00574E55
 00574E50    call       @IntOver
 00574E55    mov        edx,dword ptr [ebp-18]
 00574E58    lea        eax,[edx+eax*4]
 00574E5B    mov        edx,dword ptr [ebp+8]
 00574E5E    call       004C66C0
>00574E63    jmp        00574E70
 00574E65    mov        edx,dword ptr [ebp+8]
 00574E68    mov        eax,dword ptr [ebp-18]
 00574E6B    call       004C67E4
 00574E70    xor        eax,eax
 00574E72    pop        edx
 00574E73    pop        ecx
 00574E74    pop        ecx
 00574E75    mov        dword ptr fs:[eax],edx
 00574E78    push       574EAF
 00574E7D    lea        eax,[ebp-18]
 00574E80    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 00574E86    call       @DynArrayClear
 00574E8B    lea        eax,[ebp-0C]
 00574E8E    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00574E94    call       @DynArrayClear
 00574E99    lea        eax,[ebp-8]
 00574E9C    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 00574EA2    call       @DynArrayClear
 00574EA7    ret
<00574EA8    jmp        @HandleFinally
<00574EAD    jmp        00574E7D
 00574EAF    pop        esi
 00574EB0    pop        ebx
 00574EB1    mov        esp,ebp
 00574EB3    pop        ebp
 00574EB4    ret        8
*}
//end;

//00574EBC
//function TZAbstractRODataset.UpdateStatus:?;
//begin
{*
 00574EBC    push       ebp
 00574EBD    mov        ebp,esp
 00574EBF    push       ebx
 00574EC0    push       esi
 00574EC1    push       edi
 00574EC2    mov        esi,eax
 00574EC4    xor        ebx,ebx
 00574EC6    cmp        dword ptr [esi+1C8],0; TZAbstractRODataset.?f1C8:IZResultSet
>00574ECD    je         00574F5E
 00574ED3    mov        eax,dword ptr [esi+188]; TZAbstractRODataset.?f188:TZSortedList
 00574ED9    cmp        dword ptr [eax+8],0; TZSortedList.FCount:Integer
>00574EDD    jle        00574F5E
 00574EDF    mov        edx,dword ptr [esi+178]; TZAbstractRODataset.?f178:Integer
 00574EE5    sub        edx,1
>00574EE8    jno        00574EEF
 00574EEA    call       @IntOver
 00574EEF    mov        eax,dword ptr [esi+188]; TZAbstractRODataset.?f188:TZSortedList
 00574EF5    call       TList.Get
 00574EFA    mov        edi,eax
 00574EFC    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574F02    mov        edx,dword ptr [eax]
 00574F04    call       dword ptr [edx+0F4]
 00574F0A    cmp        edi,eax
>00574F0C    je         00574F1E
 00574F0E    mov        edx,edi
 00574F10    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574F16    mov        ecx,dword ptr [eax]
 00574F18    call       dword ptr [ecx+0F8]
 00574F1E    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574F24    mov        edx,dword ptr [eax]
 00574F26    call       dword ptr [edx+128]
 00574F2C    test       al,al
>00574F2E    je         00574F34
 00574F30    mov        bl,2
>00574F32    jmp        00574F5E
 00574F34    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574F3A    mov        edx,dword ptr [eax]
 00574F3C    call       dword ptr [edx+124]
 00574F42    test       al,al
>00574F44    je         00574F4A
 00574F46    mov        bl,1
>00574F48    jmp        00574F5E
 00574F4A    mov        eax,dword ptr [esi+1C8]; TZAbstractRODataset.?f1C8:IZResultSet
 00574F50    mov        edx,dword ptr [eax]
 00574F52    call       dword ptr [edx+12C]
 00574F58    test       al,al
>00574F5A    je         00574F5E
 00574F5C    mov        bl,3
 00574F5E    mov        eax,ebx
 00574F60    pop        edi
 00574F61    pop        esi
 00574F62    pop        ebx
 00574F63    pop        ebp
 00574F64    ret
*}
//end;

//00574F68
//function TZAbstractRODataset.Translate(Src:PChar; Dest:PChar; ToOem:Boolean):?;
//begin
{*
 00574F68    push       ebp
 00574F69    mov        ebp,esp
 00574F6B    push       ecx
 00574F6C    push       ebx
 00574F6D    push       esi
 00574F6E    push       edi
 00574F6F    mov        dword ptr [ebp-4],ecx
 00574F72    mov        ebx,edx
 00574F74    mov        esi,eax
 00574F76    test       ebx,ebx
>00574F78    je         00574FCB
 00574F7A    mov        eax,ebx
 00574F7C    call       StrLen
 00574F81    mov        edi,eax
 00574F83    test       edi,edi
>00574F85    jns        00574F8C
 00574F87    call       @BoundErr
 00574F8C    test       byte ptr [esi+1B9],1; TZAbstractRODataset.?f1B9:byte
>00574F93    je         00574FBA
 00574F95    cmp        byte ptr [ebp+8],0
>00574F99    je         00574FA7
 00574F9B    mov        eax,dword ptr [ebp-4]
 00574F9E    push       eax
 00574F9F    push       ebx
 00574FA0    call       user32.CharToOemA
>00574FA5    jmp        00574FB1
 00574FA7    mov        eax,dword ptr [ebp-4]
 00574FAA    push       eax
 00574FAB    push       ebx
 00574FAC    call       user32.OemToCharA
 00574FB1    mov        eax,dword ptr [ebp-4]
 00574FB4    mov        byte ptr [eax+edi],0
>00574FB8    jmp        00574FCD
 00574FBA    cmp        ebx,dword ptr [ebp-4]
>00574FBD    je         00574FCD
 00574FBF    mov        edx,ebx
 00574FC1    mov        eax,dword ptr [ebp-4]
 00574FC4    call       StrCopy
>00574FC9    jmp        00574FCD
 00574FCB    xor        edi,edi
 00574FCD    mov        eax,edi
 00574FCF    pop        edi
 00574FD0    pop        esi
 00574FD1    pop        ebx
 00574FD2    pop        ecx
 00574FD3    pop        ebp
 00574FD4    ret        4
*}
//end;

//00574FD8
//function TZAbstractRODataset.CreateBlobStream(Field:TField; Mode:TBlobStreamMode):?;
//begin
{*
 00574FD8    push       ebp
 00574FD9    mov        ebp,esp
 00574FDB    add        esp,0FFFFFFEC
 00574FDE    push       ebx
 00574FDF    push       esi
 00574FE0    push       edi
 00574FE1    xor        ebx,ebx
 00574FE3    mov        dword ptr [ebp-14],ebx
 00574FE6    mov        dword ptr [ebp-0C],ebx
 00574FE9    mov        byte ptr [ebp-1],cl
 00574FEC    mov        edi,edx
 00574FEE    mov        ebx,eax
 00574FF0    xor        eax,eax
 00574FF2    push       ebp
 00574FF3    push       575116
 00574FF8    push       dword ptr fs:[eax]
 00574FFB    mov        dword ptr fs:[eax],esp
 00574FFE    mov        byte ptr [ebp-0D],0
 00575002    mov        eax,ebx
 00575004    mov        edx,dword ptr [eax]
 00575006    call       dword ptr [edx+84]; TDataSet.CheckActive
 0057500C    xor        esi,esi
 0057500E    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 00575011    add        al,0F1
 00575013    sub        al,4
>00575015    jae        005750E6
 0057501B    lea        edx,[ebp-8]
 0057501E    mov        eax,ebx
 00575020    call       00572544
 00575025    test       al,al
>00575027    je         005750E6
 0057502D    mov        edx,edi
 0057502F    mov        eax,dword ptr [ebx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00575035    call       0056BB08
 0057503A    mov        esi,eax
 0057503C    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575042    mov        edx,dword ptr [ebp-8]
 00575045    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 00575048    cmp        byte ptr [ebp-1],0
>0057504C    jne        00575081
 0057504E    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 00575051    sub        al,10
>00575053    je         00575059
 00575055    sub        al,2
>00575057    jne        0057506D
 00575059    lea        ecx,[ebp-0D]
 0057505C    mov        edx,esi
 0057505E    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575064    call       004CB49C
 00575069    mov        esi,eax
>0057506B    jmp        005750E6
 0057506D    lea        ecx,[ebp-0D]
 00575070    mov        edx,esi
 00575072    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575078    call       004CB520
 0057507D    mov        esi,eax
>0057507F    jmp        005750E6
 00575081    lea        eax,[ebp-0C]
 00575084    push       eax
 00575085    lea        ecx,[ebp-0D]
 00575088    mov        edx,esi
 0057508A    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575090    call       004CB5A4
 00575095    cmp        dword ptr [ebp-0C],0
>00575099    je         005750B1
 0057509B    lea        edx,[ebp-14]
 0057509E    mov        eax,dword ptr [ebp-0C]
 005750A1    mov        ecx,dword ptr [eax]
 005750A3    call       dword ptr [ecx+3C]
 005750A6    mov        edx,dword ptr [ebp-14]
 005750A9    lea        eax,[ebp-0C]
 005750AC    call       @IntfCopy
 005750B1    mov        ecx,dword ptr [ebp-0C]
 005750B4    mov        edx,esi
 005750B6    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005750BC    call       004CD824
 005750C1    mov        eax,dword ptr [ebp-0C]
 005750C4    push       eax
 005750C5    mov        al,byte ptr [ebp-1]
 005750C8    push       eax
 005750C9    mov        eax,edi
 005750CB    mov        edx,dword ptr ds:[498120]; TBlobField
 005750D1    call       @AsClass
 005750D6    mov        ecx,eax
 005750D8    mov        dl,1
 005750DA    mov        eax,[0056BC84]; TZBlobStream
 005750DF    call       TZBlobStream.Create; TZBlobStream.Create
 005750E4    mov        esi,eax
 005750E6    test       esi,esi
>005750E8    jne        005750F8
 005750EA    mov        dl,1
 005750EC    mov        eax,[0041CBF8]; TMemoryStream
 005750F1    call       TObject.Create; TMemoryStream.Create
 005750F6    mov        esi,eax
 005750F8    xor        eax,eax
 005750FA    pop        edx
 005750FB    pop        ecx
 005750FC    pop        ecx
 005750FD    mov        dword ptr fs:[eax],edx
 00575100    push       57511D
 00575105    lea        eax,[ebp-14]
 00575108    call       @IntfClear
 0057510D    lea        eax,[ebp-0C]
 00575110    call       @IntfClear
 00575115    ret
<00575116    jmp        @HandleFinally
<0057511B    jmp        00575105
 0057511D    mov        eax,esi
 0057511F    pop        edi
 00575120    pop        esi
 00575121    pop        ebx
 00575122    mov        esp,ebp
 00575124    pop        ebp
 00575125    ret
*}
//end;

//00575128
procedure TZAbstractRODataset.CloseBlob(Field:TField);
begin
{*
 00575128    ret
*}
end;

//0057512C
//procedure sub_0057512C(?:TZAbstractRODataset);
//begin
{*
 0057512C    push       ebp
 0057512D    mov        ebp,esp
 0057512F    add        esp,0FFFFFFF0
 00575132    push       ebx
 00575133    push       esi
 00575134    xor        edx,edx
 00575136    mov        dword ptr [ebp-10],edx
 00575139    mov        dword ptr [ebp-4],eax
 0057513C    xor        eax,eax
 0057513E    push       ebp
 0057513F    push       575498
 00575144    push       dword ptr fs:[eax]
 00575147    mov        dword ptr fs:[eax],esp
 0057514A    mov        eax,dword ptr [ebp-4]
 0057514D    cmp        dword ptr [eax+1DC],0; TZAbstractRODataset.?f1DC:String
>00575154    je         00575482
 0057515A    mov        eax,dword ptr [ebp-4]
 0057515D    cmp        dword ptr [eax+1C8],0; TZAbstractRODataset.?f1C8:IZResultSet
>00575164    je         00575482
 0057516A    mov        eax,dword ptr [ebp-4]
 0057516D    cmp        byte ptr [eax+88],0; TZAbstractRODataset.FIsUniDirectional:Boolean
>00575174    jne        00575482
 0057517A    lea        edx,[ebp-10]
 0057517D    mov        eax,dword ptr [ebp-4]
 00575180    mov        eax,dword ptr [eax+1DC]; TZAbstractRODataset.?f1DC:String
 00575186    call       Trim
 0057518B    mov        edx,dword ptr [ebp-10]
 0057518E    mov        eax,dword ptr [ebp-4]
 00575191    add        eax,1DC; TZAbstractRODataset.?f1DC:String
 00575196    call       @LStrAsg
 0057519B    mov        eax,dword ptr [ebp-4]
 0057519E    add        eax,1F4; TZAbstractRODataset.?f1F4:TBooleanDynArray
 005751A3    push       eax
 005751A4    mov        eax,dword ptr [ebp-4]
 005751A7    add        eax,1F8; TZAbstractRODataset.?f1F8:?
 005751AC    push       eax
 005751AD    mov        eax,dword ptr [ebp-4]
 005751B0    lea        ecx,[eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 005751B6    mov        eax,dword ptr [ebp-4]
 005751B9    mov        edx,dword ptr [eax+1DC]; TZAbstractRODataset.?f1DC:String
 005751BF    mov        eax,dword ptr [ebp-4]
 005751C2    call       0056B774
 005751C7    mov        eax,dword ptr [ebp-4]
 005751CA    mov        esi,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 005751D0    mov        eax,dword ptr [esi+8]; TZSortedList.FCount:Integer
 005751D3    mov        edx,dword ptr [ebp-4]
 005751D6    mov        ebx,dword ptr [edx+178]; TZAbstractRODataset.?f178:Integer
 005751DC    cmp        eax,ebx
>005751DE    jl         00575200
 005751E0    test       eax,eax
>005751E2    jle        00575200
 005751E4    test       ebx,ebx
>005751E6    jle        00575200
 005751E8    mov        edx,ebx
 005751EA    sub        edx,1
>005751ED    jno        005751F4
 005751EF    call       @IntOver
 005751F4    mov        eax,esi
 005751F6    call       TList.Get
 005751FB    mov        dword ptr [ebp-8],eax
>005751FE    jmp        00575207
 00575200    mov        dword ptr [ebp-8],0FFFFFFFF
 00575207    mov        eax,dword ptr [ebp-4]
 0057520A    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575210    call       @DynArrayLength
 00575215    test       eax,eax
>00575217    jne        00575235
 00575219    mov        eax,dword ptr [ebp-4]
 0057521C    push       eax
 0057521D    push       5754AC
 00575222    mov        eax,dword ptr [ebp-4]
 00575225    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 0057522B    call       004BFF08
>00575230    jmp        0057541B
 00575235    xor        edx,edx
 00575237    mov        eax,dword ptr [ebp-4]
 0057523A    call       00571844
 0057523F    mov        eax,dword ptr [ebp-4]
 00575242    cmp        byte ptr [eax+1F8],0; TZAbstractRODataset.?f1F8:?
>00575249    je         005752E9
 0057524F    mov        eax,dword ptr [ebp-4]
 00575252    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575258    call       @DynArrayLength
 0057525D    push       eax
 0057525E    mov        eax,dword ptr [ebp-4]
 00575261    add        eax,1F0; TZAbstractRODataset.?f1F0:TIntegerDynArray
 00575266    mov        ecx,1
 0057526B    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00575271    call       @DynArraySetLength
 00575276    add        esp,4
 00575279    mov        eax,dword ptr [ebp-4]
 0057527C    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575282    call       @DynArrayHigh
 00575287    mov        esi,eax
 00575289    test       esi,esi
>0057528B    jl         005752CD
 0057528D    inc        esi
 0057528E    xor        ebx,ebx
 00575290    mov        eax,dword ptr [ebp-4]
 00575293    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575299    test       eax,eax
>0057529B    je         005752A2
 0057529D    cmp        ebx,dword ptr [eax-4]
>005752A0    jb         005752A7
 005752A2    call       @BoundErr
 005752A7    mov        eax,dword ptr [eax+ebx*4]
 005752AA    mov        edx,dword ptr [eax]
 005752AC    call       dword ptr [edx+7C]
 005752AF    mov        edx,dword ptr [ebp-4]
 005752B2    mov        edx,dword ptr [edx+1F0]; TZAbstractRODataset.?f1F0:TIntegerDynArray
 005752B8    test       edx,edx
>005752BA    je         005752C1
 005752BC    cmp        ebx,dword ptr [edx-4]
>005752BF    jb         005752C6
 005752C1    call       @BoundErr
 005752C6    mov        dword ptr [edx+ebx*4],eax
 005752C9    inc        ebx
 005752CA    dec        esi
<005752CB    jne        00575290
 005752CD    mov        eax,dword ptr [ebp-4]
 005752D0    push       eax
 005752D1    push       5755A4; sub_005755A4
 005752D6    mov        eax,dword ptr [ebp-4]
 005752D9    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 005752DF    call       004BFF08
>005752E4    jmp        0057541B
 005752E9    mov        eax,dword ptr [ebp-4]
 005752EC    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005752F2    mov        edx,dword ptr [eax+24]; TZRowAccessor.?f24:Pointer
 005752F5    mov        dword ptr [ebp-0C],edx
 005752F8    xor        edx,edx
 005752FA    push       ebp
 005752FB    push       575414
 00575300    push       dword ptr fs:[edx]
 00575303    mov        dword ptr fs:[edx],esp
 00575306    mov        edx,dword ptr [ebp-4]
 00575309    add        edx,1FC; TZAbstractRODataset.?f1FC:dword
 0057530F    call       004C8998
 00575314    mov        eax,dword ptr [ebp-4]
 00575317    lea        edx,[eax+200]; TZAbstractRODataset.?f200:dword
 0057531D    mov        eax,dword ptr [ebp-4]
 00575320    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575326    call       004C8998
 0057532B    mov        eax,dword ptr [ebp-4]
 0057532E    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575334    call       @DynArrayLength
 00575339    push       eax
 0057533A    mov        eax,dword ptr [ebp-4]
 0057533D    add        eax,1F0; TZAbstractRODataset.?f1F0:TIntegerDynArray
 00575342    mov        ecx,1
 00575347    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0057534D    call       @DynArraySetLength
 00575352    add        esp,4
 00575355    mov        eax,dword ptr [ebp-4]
 00575358    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 0057535E    call       @DynArrayHigh
 00575363    mov        esi,eax
 00575365    test       esi,esi
>00575367    jl         005753B2
 00575369    inc        esi
 0057536A    xor        ebx,ebx
 0057536C    mov        eax,dword ptr [ebp-4]
 0057536F    mov        eax,dword ptr [eax+1EC]; TZAbstractRODataset.?f1EC:TObjectDynArray
 00575375    test       eax,eax
>00575377    je         0057537E
 00575379    cmp        ebx,dword ptr [eax-4]
>0057537C    jb         00575383
 0057537E    call       @BoundErr
 00575383    mov        edx,dword ptr [eax+ebx*4]
 00575386    mov        eax,dword ptr [ebp-4]
 00575389    mov        eax,dword ptr [eax+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 0057538F    call       0056BB08
 00575394    mov        edx,dword ptr [ebp-4]
 00575397    mov        edx,dword ptr [edx+1F0]; TZAbstractRODataset.?f1F0:TIntegerDynArray
 0057539D    test       edx,edx
>0057539F    je         005753A6
 005753A1    cmp        ebx,dword ptr [edx-4]
>005753A4    jb         005753AB
 005753A6    call       @BoundErr
 005753AB    mov        dword ptr [edx+ebx*4],eax
 005753AE    inc        ebx
 005753AF    dec        esi
<005753B0    jne        0057536C
 005753B2    mov        eax,dword ptr [ebp-4]
 005753B5    push       eax
 005753B6    push       5754B8; sub_005754B8
 005753BB    mov        eax,dword ptr [ebp-4]
 005753BE    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 005753C4    call       004BFF08
 005753C9    xor        eax,eax
 005753CB    pop        edx
 005753CC    pop        ecx
 005753CD    pop        ecx
 005753CE    mov        dword ptr fs:[eax],edx
 005753D1    push       57541B
 005753D6    mov        eax,dword ptr [ebp-4]
 005753D9    mov        edx,dword ptr [eax+1FC]; TZAbstractRODataset.?f1FC:dword
 005753DF    mov        eax,dword ptr [ebp-4]
 005753E2    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005753E8    call       004C89BC
 005753ED    mov        eax,dword ptr [ebp-4]
 005753F0    mov        edx,dword ptr [eax+200]; TZAbstractRODataset.?f200:dword
 005753F6    mov        eax,dword ptr [ebp-4]
 005753F9    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 005753FF    call       004C89BC
 00575404    mov        eax,dword ptr [ebp-4]
 00575407    mov        eax,dword ptr [eax+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 0057540D    mov        edx,dword ptr [ebp-0C]
 00575410    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 00575413    ret
<00575414    jmp        @HandleFinally
<00575419    jmp        005753D6
 0057541B    mov        eax,dword ptr [ebp-4]
 0057541E    mov        eax,dword ptr [eax+188]; TZAbstractRODataset.?f188:TZSortedList
 00575424    mov        edx,dword ptr [ebp-8]
 00575427    call       TList.IndexOf
 0057542C    mov        ebx,eax
 0057542E    add        ebx,1
>00575431    jno        00575438
 00575433    call       @IntOver
 00575438    mov        eax,dword ptr [ebp-4]
 0057543B    mov        dword ptr [eax+178],ebx; TZAbstractRODataset.?f178:Integer
 00575441    mov        edx,ebx
 00575443    xor        eax,eax
 00575445    call       Max
 0057544A    mov        edx,dword ptr [ebp-4]
 0057544D    mov        edx,dword ptr [edx+188]; TZAbstractRODataset.?f188:TZSortedList
 00575453    mov        edx,dword ptr [edx+8]; TZSortedList.FCount:Integer
 00575456    call       Min
 0057545B    mov        edx,dword ptr [ebp-4]
 0057545E    mov        dword ptr [edx+178],eax; TZAbstractRODataset.?f178:Integer
 00575464    mov        eax,dword ptr [ebp-4]
 00575467    mov        al,byte ptr [eax+9D]; TZAbstractRODataset.FState:TDataSetState
 0057546D    test       al,al
>0057546F    je         00575482
 00575471    mov        dl,byte ptr ds:[5754A8]; 0x0
 00575477    mov        eax,dword ptr [ebp-4]
 0057547A    mov        ecx,dword ptr [eax]
 0057547C    call       dword ptr [ecx+250]; TDataSet.Resync
 00575482    xor        eax,eax
 00575484    pop        edx
 00575485    pop        ecx
 00575486    pop        ecx
 00575487    mov        dword ptr fs:[eax],edx
 0057548A    push       57549F
 0057548F    lea        eax,[ebp-10]
 00575492    call       @LStrClr
 00575497    ret
<00575498    jmp        @HandleFinally
<0057549D    jmp        0057548F
 0057549F    pop        esi
 005754A0    pop        ebx
 005754A1    mov        esp,ebp
 005754A3    pop        ebp
 005754A4    ret
*}
//end;

//005754B8
//procedure sub_005754B8(?:?; ?:?; ?:?);
//begin
{*
 005754B8    push       ebp
 005754B9    mov        ebp,esp
 005754BB    push       ecx
 005754BC    push       ebx
 005754BD    push       esi
 005754BE    mov        dword ptr [ebp-4],ecx
 005754C1    mov        ebx,eax
 005754C3    mov        esi,edx
 005754C5    mov        edx,esi
 005754C7    mov        eax,dword ptr [ebx+1C8]
 005754CD    mov        ecx,dword ptr [eax]
 005754CF    call       dword ptr [ecx+0F8]
 005754D5    mov        edx,dword ptr [ebx+17C]
 005754DB    mov        eax,dword ptr [ebx+1FC]
 005754E1    mov        dword ptr [edx+24],eax
 005754E4    mov        edx,dword ptr [ebx+17C]
 005754EA    mov        dword ptr [eax],esi
 005754EC    push       edx
 005754ED    mov        ecx,dword ptr [ebx+30]
 005754F0    mov        eax,dword ptr [ebx+1C8]
 005754F6    mov        edx,dword ptr [ebx+190]
 005754FC    call       005692D0
 00575501    mov        eax,dword ptr [ebx+17C]
 00575507    mov        eax,dword ptr [eax+24]
 0057550A    mov        byte ptr [eax+5],0
 0057550E    mov        edx,dword ptr [ebx+1FC]
 00575514    mov        eax,ebx
 00575516    mov        ecx,dword ptr [eax]
 00575518    call       dword ptr [ecx+120]
 0057551E    mov        esi,dword ptr [ebp-4]
 00575521    mov        edx,esi
 00575523    mov        eax,dword ptr [ebx+1C8]
 00575529    mov        ecx,dword ptr [eax]
 0057552B    call       dword ptr [ecx+0F8]
 00575531    mov        edx,dword ptr [ebx+17C]
 00575537    mov        eax,dword ptr [ebx+200]
 0057553D    mov        dword ptr [edx+24],eax
 00575540    mov        edx,dword ptr [ebx+17C]
 00575546    mov        dword ptr [eax],esi
 00575548    push       edx
 00575549    mov        ecx,dword ptr [ebx+30]
 0057554C    mov        eax,dword ptr [ebx+1C8]
 00575552    mov        edx,dword ptr [ebx+190]
 00575558    call       005692D0
 0057555D    mov        eax,dword ptr [ebx+17C]
 00575563    mov        eax,dword ptr [eax+24]
 00575566    mov        byte ptr [eax+5],0
 0057556A    mov        edx,dword ptr [ebx+200]
 00575570    mov        eax,ebx
 00575572    mov        ecx,dword ptr [eax]
 00575574    call       dword ptr [ecx+120]
 0057557A    mov        eax,dword ptr [ebx+1F0]
 00575580    push       eax
 00575581    mov        eax,dword ptr [ebx+1F4]
 00575587    push       eax
 00575588    mov        ecx,dword ptr [ebx+200]
 0057558E    mov        edx,dword ptr [ebx+1FC]
 00575594    mov        eax,dword ptr [ebx+17C]
 0057559A    call       004C8D8C
 0057559F    pop        esi
 005755A0    pop        ebx
 005755A1    pop        ecx
 005755A2    pop        ebp
 005755A3    ret
*}
//end;

//005755A4
//procedure sub_005755A4(?:?);
//begin
{*
 005755A4    push       ebp
 005755A5    mov        ebp,esp
 005755A7    push       ebx
 005755A8    mov        ebx,dword ptr [eax+1F0]
 005755AE    push       ebx
 005755AF    mov        ebx,dword ptr [eax+1F4]
 005755B5    push       ebx
 005755B6    mov        eax,dword ptr [eax+1C8]
 005755BC    mov        ebx,dword ptr [eax]
 005755BE    call       dword ptr [ebx+1EC]
 005755C4    pop        ebx
 005755C5    pop        ebp
 005755C6    ret
*}
//end;

//005755C8
procedure TZReadOnlyQuery.SetProperties(Self:TZReadOnlyQuery);
begin
{*
 005755C8    push       ebp
 005755C9    mov        ebp,esp
 005755CB    push       esi
 005755CC    mov        esi,eax
 005755CE    mov        eax,dword ptr [esi+1BC]; TZReadOnlyQuery.?f1BC:TStringList
 005755D4    mov        ecx,dword ptr [eax]
 005755D6    call       dword ptr [ecx+8]; TStrings.Assign
 005755D9    pop        esi
 005755DA    pop        ebp
 005755DB    ret
*}
end;

//005755DC
procedure TZAbstractRODataset.PSStartTransaction;
begin
{*
 005755DC    push       ebp
 005755DD    mov        ebp,esp
 005755DF    push       ebx
 005755E0    push       esi
 005755E1    mov        ebx,eax
 005755E3    mov        esi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 005755E9    test       esi,esi
>005755EB    je         00575614
 005755ED    cmp        byte ptr [esi+50],0; TZConnection.AutoCommit:Boolean
>005755F1    jne        00575614
 005755F3    mov        eax,esi
 005755F5    call       TZConnection.GetConnected
 005755FA    test       al,al
>005755FC    jne        00575609
 005755FE    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575604    mov        edx,dword ptr [eax]
 00575606    call       dword ptr [edx+30]; TZConnection.sub_0057704C
 00575609    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057560F    mov        edx,dword ptr [eax]
 00575611    call       dword ptr [edx+3C]; TZConnection.sub_005774C8
 00575614    pop        esi
 00575615    pop        ebx
 00575616    pop        ebp
 00575617    ret
*}
end;

//00575618
//procedure TZAbstractRODataset.PSEndTransaction(?:?; Commit:Boolean);
//begin
{*
 00575618    push       ebp
 00575619    mov        ebp,esp
 0057561B    push       ebx
 0057561C    push       esi
 0057561D    push       edi
 0057561E    mov        ebx,edx
 00575620    mov        edi,eax
 00575622    mov        esi,dword ptr [edi+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575628    test       esi,esi
>0057562A    je         0057565F
 0057562C    mov        eax,esi
 0057562E    call       TZConnection.GetConnected
 00575633    test       al,al
>00575635    je         0057565F
 00575637    mov        eax,dword ptr [edi+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057563D    cmp        byte ptr [eax+50],0; TZConnection.AutoCommit:Boolean
>00575641    jne        0057565F
 00575643    test       bl,bl
>00575645    je         00575654
 00575647    mov        eax,dword ptr [edi+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057564D    mov        edx,dword ptr [eax]
 0057564F    call       dword ptr [edx+40]; TZConnection.sub_005774FC
>00575652    jmp        0057565F
 00575654    mov        eax,dword ptr [edi+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057565A    mov        edx,dword ptr [eax]
 0057565C    call       dword ptr [edx+44]; TZConnection.sub_005775F8
 0057565F    pop        edi
 00575660    pop        esi
 00575661    pop        ebx
 00575662    pop        ebp
 00575663    ret
*}
//end;

//00575664
//function TZAbstractRODataset.PSInTransaction:?;
//begin
{*
 00575664    push       ebp
 00575665    mov        ebp,esp
 00575667    push       ebx
 00575668    push       esi
 00575669    mov        ebx,eax
 0057566B    mov        esi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575671    test       esi,esi
>00575673    je         00575698
 00575675    mov        eax,esi
 00575677    call       TZConnection.GetConnected
 0057567C    test       al,al
>0057567E    je         00575698
 00575680    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575686    cmp        byte ptr [eax+52],0; TZConnection.TransactIsolationLevel:TZTransactIsolationLevel
>0057568A    je         00575698
 0057568C    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575692    cmp        byte ptr [eax+50],0; TZConnection.AutoCommit:Boolean
>00575696    je         0057569C
 00575698    xor        eax,eax
>0057569A    jmp        0057569E
 0057569C    mov        al,1
 0057569E    pop        esi
 0057569F    pop        ebx
 005756A0    pop        ebp
 005756A1    ret
*}
//end;

//005756A4
//procedure TZAbstractRODataset.PSGetQuoteChar(?:?);
//begin
{*
 005756A4    push       ebp
 005756A5    mov        ebp,esp
 005756A7    push       0
 005756A9    push       ebx
 005756AA    push       esi
 005756AB    push       edi
 005756AC    mov        esi,edx
 005756AE    mov        ebx,eax
 005756B0    xor        eax,eax
 005756B2    push       ebp
 005756B3    push       575739
 005756B8    push       dword ptr fs:[eax]
 005756BB    mov        dword ptr fs:[eax],esp
 005756BE    mov        edi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 005756C4    test       edi,edi
>005756C6    je         00575717
 005756C8    mov        eax,edi
 005756CA    call       TZConnection.GetConnected
 005756CF    test       al,al
>005756D1    jne        005756DE
 005756D3    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 005756D9    mov        edx,dword ptr [eax]
 005756DB    call       dword ptr [edx+30]; TZConnection.sub_0057704C
 005756DE    lea        edx,[ebp-4]
 005756E1    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 005756E7    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 005756EA    mov        ecx,dword ptr [eax]
 005756EC    call       dword ptr [ecx+64]
 005756EF    mov        eax,dword ptr [ebp-4]
 005756F2    mov        edx,esi
 005756F4    mov        ecx,dword ptr [eax]
 005756F6    call       dword ptr [ecx+70]
 005756F9    mov        eax,dword ptr [esi]
 005756FB    call       @LStrLen
 00575700    dec        eax
>00575701    jle        00575723
 00575703    push       esi
 00575704    mov        eax,dword ptr [esi]
 00575706    mov        ecx,1
 0057570B    mov        edx,1
 00575710    call       @LStrCopy
>00575715    jmp        00575723
 00575717    mov        eax,esi
 00575719    mov        edx,575750; '\"'
 0057571E    call       @LStrAsg
 00575723    xor        eax,eax
 00575725    pop        edx
 00575726    pop        ecx
 00575727    pop        ecx
 00575728    mov        dword ptr fs:[eax],edx
 0057572B    push       575740
 00575730    lea        eax,[ebp-4]
 00575733    call       @IntfClear
 00575738    ret
<00575739    jmp        @HandleFinally
<0057573E    jmp        00575730
 00575740    pop        edi
 00575741    pop        esi
 00575742    pop        ebx
 00575743    pop        ecx
 00575744    pop        ebp
 00575745    ret
*}
//end;

//00575754
//function TZAbstractRODataset.PSIsSQLSupported:?;
//begin
{*
 00575754    mov        al,1
 00575756    ret
*}
//end;

//00575758
//function TZAbstractRODataset.PSIsSQLBased:?;
//begin
{*
 00575758    mov        al,1
 0057575A    ret
*}
//end;

//0057575C
procedure TZAbstractRODataset.PSReset;
begin
{*
 0057575C    push       ebp
 0057575D    mov        ebp,esp
 0057575F    push       ebx
 00575760    mov        ebx,eax
 00575762    mov        eax,ebx
 00575764    call       TDataSet.PSReset
 00575769    mov        eax,ebx
 0057576B    call       TDataSet.GetActive
 00575770    test       al,al
>00575772    je         00575782
 00575774    mov        eax,ebx
 00575776    call       TDataSet.Refresh
 0057577B    mov        eax,ebx
 0057577D    call       TDataSet.First
 00575782    pop        ebx
 00575783    pop        ebp
 00575784    ret
*}
end;

//00575788
procedure TZAbstractRODataset.PSExecute;
begin
{*
 00575788    push       ebp
 00575789    mov        ebp,esp
 0057578B    mov        edx,dword ptr [eax]
 0057578D    call       dword ptr [edx+274]; TZAbstractRODataset.sub_00572D6C
 00575793    pop        ebp
 00575794    ret
*}
end;

//00575798
//function TZAbstractRODataset.PSGetParams:?;
//begin
{*
 00575798    mov        eax,dword ptr [eax+1B4]; TZAbstractRODataset.?f1B4:TParams
 0057579E    ret
*}
//end;

//005757A0
//procedure TZAbstractRODataset.PSSetParams(?:?; AParams:TParams);
//begin
{*
 005757A0    push       ebp
 005757A1    mov        ebp,esp
 005757A3    push       ebx
 005757A4    push       esi
 005757A5    mov        esi,edx
 005757A7    mov        ebx,eax
 005757A9    mov        eax,esi
 005757AB    call       TCollection.GetCount
 005757B0    test       eax,eax
>005757B2    jle        005757C1
 005757B4    mov        edx,esi
 005757B6    mov        eax,dword ptr [ebx+1B4]; TZAbstractRODataset.?f1B4:TParams
 005757BC    mov        ecx,dword ptr [eax]
 005757BE    call       dword ptr [ecx+8]; TCollection.Assign
 005757C1    pop        esi
 005757C2    pop        ebx
 005757C3    pop        ebp
 005757C4    ret
*}
//end;

//005757C8
//procedure TZAbstractRODataset.PSSetCommandText(?:?; CommandText:AnsiString);
//begin
{*
 005757C8    push       ebp
 005757C9    mov        ebp,esp
 005757CB    push       ebx
 005757CC    push       esi
 005757CD    mov        esi,edx
 005757CF    mov        ebx,eax
 005757D1    mov        eax,ebx
 005757D3    call       TZReadOnlyQuery.GetSQL
 005757D8    mov        edx,esi
 005757DA    mov        ecx,dword ptr [eax]
 005757DC    call       dword ptr [ecx+2C]
 005757DF    pop        esi
 005757E0    pop        ebx
 005757E1    pop        ebp
 005757E2    ret
*}
//end;

//005757E4
//function TZAbstractRODataset.PSUpdateRecord(UpdateKind:TUpdateKind; Delta:TDataSet):?;
//begin
{*
 005757E4    xor        eax,eax
 005757E6    ret
*}
//end;

//005757E8
procedure TZAbstractRODataset.PSGetUpdateException(E:Exception; Prev:EUpdateError);
begin
{*
 005757E8    push       ebp
 005757E9    mov        ebp,esp
 005757EB    push       ebx
 005757EC    push       esi
 005757ED    mov        esi,ecx
 005757EF    mov        ebx,edx
 005757F1    mov        eax,ebx
 005757F3    mov        edx,dword ptr ds:[4C6D20]; EZSQLException
 005757F9    call       @IsClass
 005757FE    test       al,al
>00575800    je         00575826
 00575802    test       esi,esi
>00575804    je         0057580B
 00575806    mov        eax,dword ptr [esi+0C]; EUpdateError.FErrorCode:Integer
>00575809    jmp        0057580D
 0057580B    xor        eax,eax
 0057580D    push       0
 0057580F    mov        edx,dword ptr [ebx+0C]
 00575812    push       edx
 00575813    push       eax
 00575814    push       ebx
 00575815    mov        ecx,dword ptr [ebx+4]; Exception.?f4:String
 00575818    mov        dl,1
 0057581A    mov        eax,[00494E24]; EUpdateError
 0057581F    call       EUpdateError.Create; EUpdateError.Create
>00575824    jmp        0057583C
 00575826    push       0
 00575828    push       0FF
 0057582A    push       0FF
 0057582C    push       ebx
 0057582D    mov        ecx,dword ptr [ebx+4]; Exception.?f4:String
 00575830    mov        dl,1
 00575832    mov        eax,[00494E24]; EUpdateError
 00575837    call       EUpdateError.Create; EUpdateError.Create
 0057583C    pop        esi
 0057583D    pop        ebx
 0057583E    pop        ebp
 0057583F    ret
*}
end;

//00575840
//procedure TZAbstractRODataset.PSGetTableName(?:?);
//begin
{*
 00575840    push       ebp
 00575841    mov        ebp,esp
 00575843    xor        ecx,ecx
 00575845    push       ecx
 00575846    push       ecx
 00575847    push       ecx
 00575848    push       ecx
 00575849    push       ecx
 0057584A    push       ebx
 0057584B    push       esi
 0057584C    push       edi
 0057584D    mov        esi,edx
 0057584F    mov        ebx,eax
 00575851    xor        eax,eax
 00575853    push       ebp
 00575854    push       575909
 00575859    push       dword ptr fs:[eax]
 0057585C    mov        dword ptr fs:[eax],esp
 0057585F    mov        eax,esi
 00575861    call       @LStrClr
 00575866    mov        edi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057586C    test       edi,edi
>0057586E    je         005758D3
 00575870    lea        edx,[ebp-4]
 00575873    mov        eax,edi
 00575875    call       00576DF4
 0057587A    lea        edx,[ebp-8]
 0057587D    mov        eax,dword ptr [ebp-4]
 00575880    mov        ecx,dword ptr [eax]
 00575882    call       dword ptr [ecx+2C]
 00575885    lea        edx,[ebp-0C]
 00575888    mov        eax,dword ptr [ebp-4]
 0057588B    mov        ecx,dword ptr [eax]
 0057588D    call       dword ptr [ecx+30]
 00575890    lea        eax,[ebp-10]
 00575893    push       eax
 00575894    mov        eax,ebx
 00575896    call       TZReadOnlyQuery.GetSQL
 0057589B    lea        edx,[ebp-14]
 0057589E    mov        ecx,dword ptr [eax]
 005758A0    call       dword ptr [ecx+1C]
 005758A3    mov        ecx,dword ptr [ebp-14]
 005758A6    mov        edx,dword ptr [ebp-8]
 005758A9    mov        eax,dword ptr [ebp-0C]
 005758AC    mov        ebx,dword ptr [eax]
 005758AE    call       dword ptr [ebx+20]
 005758B1    cmp        dword ptr [ebp-10],0
>005758B5    je         005758D3
 005758B7    mov        eax,dword ptr [ebp-10]
 005758BA    mov        edx,dword ptr [eax]
 005758BC    call       dword ptr [edx+34]
 005758BF    dec        eax
>005758C0    jne        005758D3
 005758C2    xor        edx,edx
 005758C4    mov        eax,dword ptr [ebp-10]
 005758C7    mov        ecx,dword ptr [eax]
 005758C9    call       dword ptr [ecx+3C]
 005758CC    mov        edx,esi
 005758CE    call       004C2158
 005758D3    xor        eax,eax
 005758D5    pop        edx
 005758D6    pop        ecx
 005758D7    pop        ecx
 005758D8    mov        dword ptr fs:[eax],edx
 005758DB    push       575910
 005758E0    lea        eax,[ebp-14]
 005758E3    call       @LStrClr
 005758E8    lea        eax,[ebp-10]
 005758EB    call       @IntfClear
 005758F0    lea        eax,[ebp-0C]
 005758F3    call       @IntfClear
 005758F8    lea        eax,[ebp-8]
 005758FB    call       @IntfClear
 00575900    lea        eax,[ebp-4]
 00575903    call       @IntfClear
 00575908    ret
<00575909    jmp        @HandleFinally
<0057590E    jmp        005758E0
 00575910    pop        edi
 00575911    pop        esi
 00575912    pop        ebx
 00575913    mov        esp,ebp
 00575915    pop        ebp
 00575916    ret
*}
//end;

//00575918
//procedure TZAbstractRODataset.PSGetKeyFields(?:?);
//begin
{*
 00575918    push       ebp
 00575919    mov        ebp,esp
 0057591B    push       ebx
 0057591C    push       esi
 0057591D    mov        esi,edx
 0057591F    mov        ebx,eax
 00575921    mov        edx,esi
 00575923    mov        eax,ebx
 00575925    call       TDataSet.PSGetKeyFields
 0057592A    pop        esi
 0057592B    pop        ebx
 0057592C    pop        ebp
 0057592D    ret
*}
//end;

//00575930
//function TZAbstractRODataset.PSExecuteStatement(ASQL:AnsiString; AParams:TParams; ResultSet:Pointer):?;
//begin
{*
 00575930    push       ebp
 00575931    mov        ebp,esp
 00575933    push       ecx
 00575934    mov        ecx,4
 00575939    push       0
 0057593B    push       0
 0057593D    dec        ecx
<0057593E    jne        00575939
 00575940    xchg       ecx,dword ptr [ebp-4]
 00575943    push       ebx
 00575944    push       esi
 00575945    push       edi
 00575946    mov        dword ptr [ebp-4],ecx
 00575949    mov        esi,edx
 0057594B    mov        ebx,eax
 0057594D    xor        eax,eax
 0057594F    push       ebp
 00575950    push       575D4B
 00575955    push       dword ptr fs:[eax]
 00575958    mov        dword ptr fs:[eax],esp
 0057595B    mov        edi,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575961    test       edi,edi
>00575963    je         00575D26
 00575969    mov        eax,edi
 0057596B    call       TZConnection.GetConnected
 00575970    test       al,al
>00575972    jne        0057597F
 00575974    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 0057597A    mov        edx,dword ptr [eax]
 0057597C    call       dword ptr [edx+30]; TZConnection.sub_0057704C
 0057597F    lea        ecx,[ebp-0C]
 00575982    mov        eax,dword ptr [ebx+1C0]; TZAbstractRODataset.Connection:TZConnection
 00575988    mov        eax,dword ptr [eax+54]; TZConnection.?f54:IZConnection
 0057598B    mov        edx,esi
 0057598D    mov        ebx,dword ptr [eax]
 0057598F    call       dword ptr [ebx+10]
 00575992    cmp        dword ptr [ebp-4],0
>00575996    je         00575D17
 0057599C    mov        eax,dword ptr [ebp-4]
 0057599F    call       TCollection.GetCount
 005759A4    test       eax,eax
>005759A6    jle        00575D17
 005759AC    mov        eax,dword ptr [ebp-4]
 005759AF    call       TCollection.GetCount
 005759B4    sub        eax,1
>005759B7    jno        005759BE
 005759B9    call       @IntOver
 005759BE    test       eax,eax
>005759C0    jl         00575D17
 005759C6    inc        eax
 005759C7    mov        dword ptr [ebp-14],eax
 005759CA    mov        dword ptr [ebp-8],0
 005759D1    mov        edx,dword ptr [ebp-8]
 005759D4    mov        eax,dword ptr [ebp-4]
 005759D7    call       TParams.GetItem
 005759DC    mov        ebx,eax
 005759DE    mov        eax,ebx
 005759E0    call       TParam.GetIsNull
 005759E5    test       al,al
>005759E7    je         00575A14
 005759E9    mov        eax,ebx
 005759EB    call       TParam.GetDataType
 005759F0    call       00569128
 005759F5    mov        ecx,eax
 005759F7    mov        edx,dword ptr [ebp-8]
 005759FA    add        edx,1
>005759FD    jno        00575A04
 005759FF    call       @IntOver
 00575A04    mov        eax,dword ptr [ebp-0C]
 00575A07    mov        ebx,dword ptr [eax]
 00575A09    call       dword ptr [ebx+0A8]
>00575A0F    jmp        00575D0B
 00575A14    mov        eax,ebx
 00575A16    call       TParam.GetDataType
 00575A1B    and        eax,7F
 00575A1E    cmp        eax,19
>00575A21    ja         00575D0B
 00575A27    jmp        dword ptr [eax*4+575A2E]
 00575A27    dd         575D0B
 00575A27    dd         575B72
 00575A27    dd         575ABC
 00575A27    dd         575AFB
 00575A27    dd         575D0B
 00575A27    dd         575A96
 00575A27    dd         575B21
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575BC6
 00575A27    dd         575BF1
 00575A27    dd         575C1C
 00575A27    dd         575B9C
 00575A27    dd         575D0B
 00575A27    dd         575AFB
 00575A27    dd         575CA9
 00575A27    dd         575C47
 00575A27    dd         575CA9
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575D0B
 00575A27    dd         575B4C
 00575A96    mov        eax,ebx
 00575A98    call       TParam.GetAsBoolean
 00575A9D    mov        ecx,eax
 00575A9F    mov        edx,dword ptr [ebp-8]
 00575AA2    add        edx,1
>00575AA5    jno        00575AAC
 00575AA7    call       @IntOver
 00575AAC    mov        eax,dword ptr [ebp-0C]
 00575AAF    mov        ebx,dword ptr [eax]
 00575AB1    call       dword ptr [ebx+0AC]
>00575AB7    jmp        00575D0B
 00575ABC    mov        eax,ebx
 00575ABE    call       TParam.GetAsInteger
 00575AC3    mov        ecx,eax
 00575AC5    add        ecx,8000
 00575ACB    cmp        ecx,0FFFF
>00575AD1    jbe        00575AD8
 00575AD3    call       @BoundErr
 00575AD8    add        ecx,0FFFF8000
 00575ADE    mov        edx,dword ptr [ebp-8]
 00575AE1    add        edx,1
>00575AE4    jno        00575AEB
 00575AE6    call       @IntOver
 00575AEB    mov        eax,dword ptr [ebp-0C]
 00575AEE    mov        ebx,dword ptr [eax]
 00575AF0    call       dword ptr [ebx+0B4]
>00575AF6    jmp        00575D0B
 00575AFB    mov        eax,ebx
 00575AFD    call       TParam.GetAsInteger
 00575B02    mov        ecx,eax
 00575B04    mov        edx,dword ptr [ebp-8]
 00575B07    add        edx,1
>00575B0A    jno        00575B11
 00575B0C    call       @IntOver
 00575B11    mov        eax,dword ptr [ebp-0C]
 00575B14    mov        ebx,dword ptr [eax]
 00575B16    call       dword ptr [ebx+0B8]
>00575B1C    jmp        00575D0B
 00575B21    mov        eax,ebx
 00575B23    call       TParam.GetAsFloat
 00575B28    add        esp,0FFFFFFF8
 00575B2B    fstp       qword ptr [esp]
 00575B2E    wait
 00575B2F    mov        edx,dword ptr [ebp-8]
 00575B32    add        edx,1
>00575B35    jno        00575B3C
 00575B37    call       @IntOver
 00575B3C    mov        eax,dword ptr [ebp-0C]
 00575B3F    mov        ecx,dword ptr [eax]
 00575B41    call       dword ptr [ecx+0C4]
>00575B47    jmp        00575D0B
 00575B4C    mov        eax,ebx
 00575B4E    call       TParam.GetAsInteger
 00575B53    mov        ecx,eax
 00575B55    mov        edx,dword ptr [ebp-8]
 00575B58    add        edx,1
>00575B5B    jno        00575B62
 00575B5D    call       @IntOver
 00575B62    mov        eax,dword ptr [ebp-0C]
 00575B65    mov        ebx,dword ptr [eax]
 00575B67    call       dword ptr [ebx+0B8]
>00575B6D    jmp        00575D0B
 00575B72    lea        edx,[ebp-18]
 00575B75    mov        eax,ebx
 00575B77    call       TParam.GetAsString
 00575B7C    mov        ecx,dword ptr [ebp-18]
 00575B7F    mov        edx,dword ptr [ebp-8]
 00575B82    add        edx,1
>00575B85    jno        00575B8C
 00575B87    call       @IntOver
 00575B8C    mov        eax,dword ptr [ebp-0C]
 00575B8F    mov        ebx,dword ptr [eax]
 00575B91    call       dword ptr [ebx+0D0]
>00575B97    jmp        00575D0B
 00575B9C    lea        edx,[ebp-1C]
 00575B9F    mov        eax,ebx
 00575BA1    call       TParam.GetAsString
 00575BA6    mov        ecx,dword ptr [ebp-1C]
 00575BA9    mov        edx,dword ptr [ebp-8]
 00575BAC    add        edx,1
>00575BAF    jno        00575BB6
 00575BB1    call       @IntOver
 00575BB6    mov        eax,dword ptr [ebp-0C]
 00575BB9    mov        ebx,dword ptr [eax]
 00575BBB    call       dword ptr [ebx+0D0]
>00575BC1    jmp        00575D0B
 00575BC6    mov        eax,ebx
 00575BC8    call       TParam.GetAsDateTime
 00575BCD    add        esp,0FFFFFFF8
 00575BD0    fstp       qword ptr [esp]
 00575BD3    wait
 00575BD4    mov        edx,dword ptr [ebp-8]
 00575BD7    add        edx,1
>00575BDA    jno        00575BE1
 00575BDC    call       @IntOver
 00575BE1    mov        eax,dword ptr [ebp-0C]
 00575BE4    mov        ecx,dword ptr [eax]
 00575BE6    call       dword ptr [ecx+0DC]
>00575BEC    jmp        00575D0B
 00575BF1    mov        eax,ebx
 00575BF3    call       TParam.GetAsDateTime
 00575BF8    add        esp,0FFFFFFF8
 00575BFB    fstp       qword ptr [esp]
 00575BFE    wait
 00575BFF    mov        edx,dword ptr [ebp-8]
 00575C02    add        edx,1
>00575C05    jno        00575C0C
 00575C07    call       @IntOver
 00575C0C    mov        eax,dword ptr [ebp-0C]
 00575C0F    mov        ecx,dword ptr [eax]
 00575C11    call       dword ptr [ecx+0E0]
>00575C17    jmp        00575D0B
 00575C1C    mov        eax,ebx
 00575C1E    call       TParam.GetAsDateTime
 00575C23    add        esp,0FFFFFFF8
 00575C26    fstp       qword ptr [esp]
 00575C29    wait
 00575C2A    mov        edx,dword ptr [ebp-8]
 00575C2D    add        edx,1
>00575C30    jno        00575C37
 00575C32    call       @IntOver
 00575C37    mov        eax,dword ptr [ebp-0C]
 00575C3A    mov        ecx,dword ptr [eax]
 00575C3C    call       dword ptr [ecx+0E4]
>00575C42    jmp        00575D0B
 00575C47    lea        edx,[ebp-20]
 00575C4A    mov        eax,ebx
 00575C4C    call       TParam.GetAsMemo
 00575C51    mov        ecx,dword ptr [ebp-20]
 00575C54    mov        dl,1
 00575C56    mov        eax,[0041CC74]; TStringStream
 00575C5B    call       TStringStream.Create; TStringStream.Create
 00575C60    mov        dword ptr [ebp-10],eax
 00575C63    xor        eax,eax
 00575C65    push       ebp
 00575C66    push       575CA2
 00575C6B    push       dword ptr fs:[eax]
 00575C6E    mov        dword ptr fs:[eax],esp
 00575C71    mov        edx,dword ptr [ebp-8]
 00575C74    add        edx,1
>00575C77    jno        00575C7E
 00575C79    call       @IntOver
 00575C7E    mov        ecx,dword ptr [ebp-10]
 00575C81    mov        eax,dword ptr [ebp-0C]
 00575C84    mov        ebx,dword ptr [eax]
 00575C86    call       dword ptr [ebx+0E8]
 00575C8C    xor        eax,eax
 00575C8E    pop        edx
 00575C8F    pop        ecx
 00575C90    pop        ecx
 00575C91    mov        dword ptr fs:[eax],edx
 00575C94    push       575D0B
 00575C99    mov        eax,dword ptr [ebp-10]
 00575C9C    call       TObject.Free
 00575CA1    ret
<00575CA2    jmp        @HandleFinally
<00575CA7    jmp        00575C99
 00575CA9    lea        edx,[ebp-24]
 00575CAC    mov        eax,ebx
 00575CAE    call       TParam.GetAsString
 00575CB3    mov        ecx,dword ptr [ebp-24]
 00575CB6    mov        dl,1
 00575CB8    mov        eax,[0041CC74]; TStringStream
 00575CBD    call       TStringStream.Create; TStringStream.Create
 00575CC2    mov        dword ptr [ebp-10],eax
 00575CC5    xor        eax,eax
 00575CC7    push       ebp
 00575CC8    push       575D04
 00575CCD    push       dword ptr fs:[eax]
 00575CD0    mov        dword ptr fs:[eax],esp
 00575CD3    mov        edx,dword ptr [ebp-8]
 00575CD6    add        edx,1
>00575CD9    jno        00575CE0
 00575CDB    call       @IntOver
 00575CE0    mov        ecx,dword ptr [ebp-10]
 00575CE3    mov        eax,dword ptr [ebp-0C]
 00575CE6    mov        ebx,dword ptr [eax]
 00575CE8    call       dword ptr [ebx+0F0]
 00575CEE    xor        eax,eax
 00575CF0    pop        edx
 00575CF1    pop        ecx
 00575CF2    pop        ecx
 00575CF3    mov        dword ptr fs:[eax],edx
 00575CF6    push       575D0B
 00575CFB    mov        eax,dword ptr [ebp-10]
 00575CFE    call       TObject.Free
 00575D03    ret
<00575D04    jmp        @HandleFinally
<00575D09    jmp        00575CFB
 00575D0B    inc        dword ptr [ebp-8]
 00575D0E    dec        dword ptr [ebp-14]
<00575D11    jne        005759D1
 00575D17    mov        eax,dword ptr [ebp-0C]
 00575D1A    mov        edx,dword ptr [eax]
 00575D1C    call       dword ptr [edx+9C]
 00575D22    mov        ebx,eax
>00575D24    jmp        00575D28
 00575D26    xor        ebx,ebx
 00575D28    xor        eax,eax
 00575D2A    pop        edx
 00575D2B    pop        ecx
 00575D2C    pop        ecx
 00575D2D    mov        dword ptr fs:[eax],edx
 00575D30    push       575D52
 00575D35    lea        eax,[ebp-24]
 00575D38    mov        edx,4
 00575D3D    call       @LStrArrayClr
 00575D42    lea        eax,[ebp-0C]
 00575D45    call       @IntfClear
 00575D4A    ret
<00575D4B    jmp        @HandleFinally
<00575D50    jmp        00575D35
 00575D52    mov        eax,ebx
 00575D54    pop        edi
 00575D55    pop        esi
 00575D56    pop        ebx
 00575D57    mov        esp,ebp
 00575D59    pop        ebp
 00575D5A    ret        4
*}
//end;

//00575D60
procedure TZAbstractRODataset.CheckFieldCompatibility(Field:TField; FieldDef:TFieldDef);
begin
{*
 00575D60    push       ebp
 00575D61    mov        ebp,esp
 00575D63    add        esp,0FFFFFFD8
 00575D66    push       ebx
 00575D67    push       esi
 00575D68    push       edi
 00575D69    xor        ebx,ebx
 00575D6B    mov        dword ptr [ebp-24],ebx
 00575D6E    mov        dword ptr [ebp-28],ebx
 00575D71    mov        dword ptr [ebp-1C],ebx
 00575D74    mov        dword ptr [ebp-20],ebx
 00575D77    mov        esi,ecx
 00575D79    mov        ebx,edx
 00575D7B    mov        edi,eax
 00575D7D    xor        eax,eax
 00575D7F    push       ebp
 00575D80    push       575E97
 00575D85    push       dword ptr fs:[eax]
 00575D88    mov        dword ptr fs:[eax],esp
 00575D8B    xor        eax,eax
 00575D8D    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 00575D90    mov        al,byte ptr [eax+61699C]
 00575D96    xor        edx,edx
 00575D98    mov        dl,byte ptr [esi+21]; TFieldDef.DataType:TFieldType
 00575D9B    cmp        al,byte ptr [edx+61699C]
>00575DA1    je         00575E01
 00575DA3    push       edi
 00575DA4    lea        edx,[ebp-1C]
 00575DA7    mov        eax,ebx
 00575DA9    call       TField.GetDisplayName
 00575DAE    mov        eax,dword ptr [ebp-1C]
 00575DB1    mov        dword ptr [ebp-18],eax
 00575DB4    mov        byte ptr [ebp-14],0B
 00575DB8    xor        eax,eax
 00575DBA    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 00575DBD    mov        edx,dword ptr ds:[61C4B0]; ^FieldTypeNames:_DT_26_
 00575DC3    mov        eax,dword ptr [edx+eax*4]
 00575DC6    mov        dword ptr [ebp-10],eax
 00575DC9    mov        byte ptr [ebp-0C],0B
 00575DCD    xor        eax,eax
 00575DCF    mov        al,byte ptr [esi+21]; TFieldDef.DataType:TFieldType
 00575DD2    mov        edx,dword ptr ds:[61C4B0]; ^FieldTypeNames:_DT_26_
 00575DD8    mov        eax,dword ptr [edx+eax*4]
 00575DDB    mov        dword ptr [ebp-8],eax
 00575DDE    mov        byte ptr [ebp-4],0B
 00575DE2    lea        eax,[ebp-18]
 00575DE5    push       eax
 00575DE6    lea        edx,[ebp-20]
 00575DE9    mov        eax,[0061BB1C]; ^SFieldTypeMismatch:TResStringRec
 00575DEE    call       LoadResString
 00575DF3    mov        eax,dword ptr [ebp-20]
 00575DF6    mov        ecx,2
 00575DFB    pop        edx
 00575DFC    call       DatabaseErrorFmt
 00575E01    mov        al,byte ptr [ebx+40]; TField.FDataType:TFieldType
 00575E04    sub        al,8
>00575E06    je         00575E12
 00575E08    add        al,0FC
 00575E0A    sub        al,2
>00575E0C    jb         00575E12
 00575E0E    sub        al,0E
>00575E10    jne        00575E7C
 00575E12    mov        eax,ebx
 00575E14    mov        edx,dword ptr [eax]
 00575E16    call       dword ptr [edx+88]; TField.GetSize
 00575E1C    push       eax
 00575E1D    mov        eax,esi
 00575E1F    call       TFieldDef.GetSize
 00575E24    pop        edx
 00575E25    cmp        edx,eax
>00575E27    je         00575E7C
 00575E29    push       edi
 00575E2A    lea        edx,[ebp-24]
 00575E2D    mov        eax,ebx
 00575E2F    call       TField.GetDisplayName
 00575E34    mov        eax,dword ptr [ebp-24]
 00575E37    mov        dword ptr [ebp-18],eax
 00575E3A    mov        byte ptr [ebp-14],0B
 00575E3E    mov        eax,ebx
 00575E40    mov        edx,dword ptr [eax]
 00575E42    call       dword ptr [edx+88]; TField.GetSize
 00575E48    mov        dword ptr [ebp-10],eax
 00575E4B    mov        byte ptr [ebp-0C],0
 00575E4F    mov        eax,esi
 00575E51    call       TFieldDef.GetSize
 00575E56    mov        dword ptr [ebp-8],eax
 00575E59    mov        byte ptr [ebp-4],0
 00575E5D    lea        eax,[ebp-18]
 00575E60    push       eax
 00575E61    lea        edx,[ebp-28]
 00575E64    mov        eax,[0061BDDC]; ^SFieldSizeMismatch:TResStringRec
 00575E69    call       LoadResString
 00575E6E    mov        eax,dword ptr [ebp-28]
 00575E71    mov        ecx,2
 00575E76    pop        edx
 00575E77    call       DatabaseErrorFmt
 00575E7C    xor        eax,eax
 00575E7E    pop        edx
 00575E7F    pop        ecx
 00575E80    pop        ecx
 00575E81    mov        dword ptr fs:[eax],edx
 00575E84    push       575E9E
 00575E89    lea        eax,[ebp-28]
 00575E8C    mov        edx,4
 00575E91    call       @LStrArrayClr
 00575E96    ret
<00575E97    jmp        @HandleFinally
<00575E9C    jmp        00575E89
 00575E9E    pop        edi
 00575E9F    pop        esi
 00575EA0    pop        ebx
 00575EA1    mov        esp,ebp
 00575EA3    pop        ebp
 00575EA4    ret
*}
end;

//00575EA8
//procedure TZAbstractRODataset.ClearCalcFields(?:?; Buffer:PChar);
//begin
{*
 00575EA8    push       ebp
 00575EA9    mov        ebp,esp
 00575EAB    push       ebx
 00575EAC    push       esi
 00575EAD    push       edi
 00575EAE    mov        ebx,eax
 00575EB0    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575EB6    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 00575EB9    mov        eax,dword ptr [ebx+30]; TZAbstractRODataset.FFields:TFields
 00575EBC    call       TFields.GetCount
 00575EC1    mov        edi,eax
 00575EC3    test       edi,edi
>00575EC5    jle        00575F1A
 00575EC7    mov        esi,1
 00575ECC    mov        edx,esi
 00575ECE    sub        edx,1
>00575ED1    jno        00575ED8
 00575ED3    call       @IntOver
 00575ED8    mov        eax,dword ptr [ebx+30]; TZAbstractRODataset.FFields:TFields
 00575EDB    call       TFields.GetField
 00575EE0    mov        al,byte ptr [eax+42]; TField.FieldKind:TFieldKind
 00575EE3    dec        eax
 00575EE4    sub        al,2
>00575EE6    jae        00575F16
 00575EE8    mov        edx,esi
 00575EEA    sub        edx,1
>00575EED    jno        00575EF4
 00575EEF    call       @IntOver
 00575EF4    mov        eax,dword ptr [ebx+30]; TZAbstractRODataset.FFields:TFields
 00575EF7    call       TFields.GetField
 00575EFC    mov        edx,eax
 00575EFE    mov        eax,dword ptr [ebx+190]; TZAbstractRODataset.?f190:TIntegerDynArray
 00575F04    call       0056BB08
 00575F09    mov        edx,eax
 00575F0B    mov        eax,dword ptr [ebx+17C]; TZAbstractRODataset.?f17C:TZRowAccessor
 00575F11    call       004CB9E4
 00575F16    inc        esi
 00575F17    dec        edi
<00575F18    jne        00575ECC
 00575F1A    pop        edi
 00575F1B    pop        esi
 00575F1C    pop        ebx
 00575F1D    pop        ebp
 00575F1E    ret
*}
//end;

//00575F20
//function sub_00575F20(?:TZAbstractRODataset):?;
//begin
{*
 00575F20    push       ebp
 00575F21    mov        ebp,esp
 00575F23    xor        ecx,ecx
 00575F25    push       ecx
 00575F26    push       ecx
 00575F27    push       ecx
 00575F28    push       ecx
 00575F29    push       ebx
 00575F2A    push       esi
 00575F2B    push       edi
 00575F2C    mov        edi,eax
 00575F2E    xor        eax,eax
 00575F30    push       ebp
 00575F31    push       576081
 00575F36    push       dword ptr fs:[eax]
 00575F39    mov        dword ptr fs:[eax],esp
 00575F3C    xor        esi,esi
 00575F3E    xor        ebx,ebx
 00575F40    mov        al,[00576094]; 0x1
 00575F45    push       eax
 00575F46    lea        eax,[ebp-4]
 00575F49    push       eax
 00575F4A    mov        eax,dword ptr [edi+1DC]; TZAbstractRODataset.?f1DC:String
 00575F50    mov        ecx,5760A0; ','
 00575F55    mov        edx,5760AC; ';'
 00575F5A    call       StringReplace
>00575F5F    jmp        00575FFD
 00575F64    lea        eax,[ebp-0C]
 00575F67    push       eax
 00575F68    mov        edx,dword ptr [ebp-4]
 00575F6B    mov        eax,5760A0; ','
 00575F70    call       @LStrPos
 00575F75    mov        ecx,eax
 00575F77    mov        edx,1
 00575F7C    mov        eax,dword ptr [ebp-4]
 00575F7F    call       @LStrCopy
 00575F84    mov        eax,dword ptr [ebp-0C]
 00575F87    lea        edx,[ebp-8]
 00575F8A    call       UpperCase
 00575F8F    mov        edx,dword ptr [ebp-8]
 00575F92    mov        eax,5760B8; ' DESC'
 00575F97    call       @LStrPos
 00575F9C    test       eax,eax
>00575F9E    jle        00575FAC
 00575FA0    add        ebx,1
>00575FA3    jno        00575FAA
 00575FA5    call       @IntOver
>00575FAA    jmp        00575FB6
 00575FAC    add        esi,1
>00575FAF    jno        00575FB6
 00575FB1    call       @IntOver
 00575FB6    lea        eax,[ebp-4]
 00575FB9    push       eax
 00575FBA    mov        edx,dword ptr [ebp-4]
 00575FBD    mov        eax,5760A0; ','
 00575FC2    call       @LStrPos
 00575FC7    push       eax
 00575FC8    mov        eax,dword ptr [ebp-4]
 00575FCB    call       @LStrLen
 00575FD0    pop        edx
 00575FD1    sub        eax,edx
>00575FD3    jno        00575FDA
 00575FD5    call       @IntOver
 00575FDA    push       eax
 00575FDB    mov        edx,dword ptr [ebp-4]
 00575FDE    mov        eax,5760A0; ','
 00575FE3    call       @LStrPos
 00575FE8    mov        edx,eax
 00575FEA    add        edx,1
>00575FED    jno        00575FF4
 00575FEF    call       @IntOver
 00575FF4    mov        eax,dword ptr [ebp-4]
 00575FF7    pop        ecx
 00575FF8    call       @LStrCopy
 00575FFD    mov        edx,dword ptr [ebp-4]
 00576000    mov        eax,5760A0; ','
 00576005    call       @LStrPos
 0057600A    test       eax,eax
<0057600C    jg         00575F64
 00576012    mov        eax,dword ptr [ebp-4]
 00576015    call       @LStrLen
 0057601A    test       eax,eax
>0057601C    jle        00576050
 0057601E    lea        edx,[ebp-10]
 00576021    mov        eax,dword ptr [ebp-4]
 00576024    call       UpperCase
 00576029    mov        edx,dword ptr [ebp-10]
 0057602C    mov        eax,5760B8; ' DESC'
 00576031    call       @LStrPos
 00576036    test       eax,eax
>00576038    jle        00576046
 0057603A    add        ebx,1
>0057603D    jno        00576044
 0057603F    call       @IntOver
>00576044    jmp        00576050
 00576046    add        esi,1
>00576049    jno        00576050
 0057604B    call       @IntOver
 00576050    test       ebx,ebx
>00576052    jle        0057605C
 00576054    test       esi,esi
>00576056    jle        0057605C
 00576058    mov        bl,2
>0057605A    jmp        00576066
 0057605C    test       ebx,ebx
>0057605E    jle        00576064
 00576060    mov        bl,1
>00576062    jmp        00576066
 00576064    xor        ebx,ebx
 00576066    xor        eax,eax
 00576068    pop        edx
 00576069    pop        ecx
 0057606A    pop        ecx
 0057606B    mov        dword ptr fs:[eax],edx
 0057606E    push       576088
 00576073    lea        eax,[ebp-10]
 00576076    mov        edx,4
 0057607B    call       @LStrArrayClr
 00576080    ret
<00576081    jmp        @HandleFinally
<00576086    jmp        00576073
 00576088    mov        eax,ebx
 0057608A    pop        edi
 0057608B    pop        esi
 0057608C    pop        ebx
 0057608D    mov        esp,ebp
 0057608F    pop        ebp
 00576090    ret
*}
//end;

//005760C0
//procedure TZAbstractRODataset.SetSortType(Self:TZAbstractRODataset; ?:?);
//begin
{*
 005760C0    push       ebp
 005760C1    mov        ebp,esp
 005760C3    push       0
 005760C5    push       0
 005760C7    push       0
 005760C9    push       ebx
 005760CA    mov        ebx,eax
 005760CC    xor        eax,eax
 005760CE    push       ebp
 005760CF    push       5761A0
 005760D4    push       dword ptr fs:[eax]
 005760D7    mov        dword ptr fs:[eax],esp
 005760DA    cmp        dl,byte ptr [ebx+1E4]; TZAbstractRODataset.SortType:TSortType
>005760E0    je         00576185
 005760E6    mov        eax,edx
 005760E8    mov        byte ptr [ebx+1E4],al; TZAbstractRODataset.SortType:TSortType
 005760EE    cmp        al,2
>005760F0    je         00576146
 005760F2    mov        al,[005761AC]; 0x3
 005760F7    push       eax
 005760F8    lea        eax,[ebp-4]
 005760FB    push       eax
 005760FC    xor        ecx,ecx
 005760FE    mov        edx,5761B8; ' Desc'
 00576103    mov        eax,dword ptr [ebx+1E8]; TZAbstractRODataset.?f1E8:String
 00576109    call       StringReplace
 0057610E    mov        edx,dword ptr [ebp-4]
 00576111    lea        eax,[ebx+1E8]; TZAbstractRODataset.?f1E8:String
 00576117    call       @LStrAsg
 0057611C    mov        al,[005761AC]; 0x3
 00576121    push       eax
 00576122    lea        eax,[ebp-8]
 00576125    push       eax
 00576126    xor        ecx,ecx
 00576128    mov        edx,5761C8; ' Asc'
 0057612D    mov        eax,dword ptr [ebx+1E8]; TZAbstractRODataset.?f1E8:String
 00576133    call       StringReplace
 00576138    mov        edx,dword ptr [ebp-8]
 0057613B    lea        eax,[ebx+1E8]; TZAbstractRODataset.?f1E8:String
 00576141    call       @LStrAsg
 00576146    lea        edx,[ebp-0C]
 00576149    mov        eax,ebx
 0057614B    call       TZReadOnlyQuery.GetIndexFieldNames
 00576150    mov        edx,dword ptr [ebp-0C]
 00576153    lea        eax,[ebx+1DC]; TZAbstractRODataset.?f1DC:String
 00576159    call       @LStrAsg
 0057615E    mov        eax,ebx
 00576160    call       TDataSet.GetActive
 00576165    test       al,al
>00576167    je         00576185
 00576169    cmp        dword ptr [ebx+1E8],0; TZAbstractRODataset.?f1E8:String
>00576170    jne        0057617E
 00576172    mov        eax,ebx
 00576174    mov        edx,dword ptr [eax]
 00576176    call       dword ptr [edx+168]; TZAbstractRODataset.InternalRefresh
>0057617C    jmp        00576185
 0057617E    mov        eax,ebx
 00576180    call       0057512C
 00576185    xor        eax,eax
 00576187    pop        edx
 00576188    pop        ecx
 00576189    pop        ecx
 0057618A    mov        dword ptr fs:[eax],edx
 0057618D    push       5761A7
 00576192    lea        eax,[ebp-0C]
 00576195    mov        edx,3
 0057619A    call       @LStrArrayClr
 0057619F    ret
<005761A0    jmp        @HandleFinally
<005761A5    jmp        00576192
 005761A7    pop        ebx
 005761A8    mov        esp,ebp
 005761AA    pop        ebp
 005761AB    ret
*}
//end;

//005761D0
//procedure TZReadOnlyQuery.GetIndexFieldNames(Self:TZAbstractRODataset; ?:AnsiString);
//begin
{*
 005761D0    push       ebp
 005761D1    mov        ebp,esp
 005761D3    xor        ecx,ecx
 005761D5    push       ecx
 005761D6    push       ecx
 005761D7    push       ecx
 005761D8    push       ecx
 005761D9    push       ebx
 005761DA    push       esi
 005761DB    mov        ebx,edx
 005761DD    mov        esi,eax
 005761DF    xor        eax,eax
 005761E1    push       ebp
 005761E2    push       5762DC
 005761E7    push       dword ptr fs:[eax]
 005761EA    mov        dword ptr fs:[eax],esp
 005761ED    mov        eax,ebx
 005761EF    mov        edx,dword ptr [esi+1E8]; TZReadOnlyQuery.?f1E8:String
 005761F5    call       @LStrAsg
 005761FA    cmp        dword ptr [ebx],0
>005761FD    je         005762C1
 00576203    cmp        byte ptr [esi+1E4],0; TZReadOnlyQuery.SortType:TSortType
>0057620A    jne        00576262
 0057620C    mov        al,[005762EC]; 0x1
 00576211    push       eax
 00576212    lea        eax,[ebp-4]
 00576215    push       eax
 00576216    mov        eax,dword ptr [ebx]
 00576218    mov        ecx,5762F8; ' Asc;'
 0057621D    mov        edx,576308; ';'
 00576222    call       StringReplace
 00576227    mov        edx,dword ptr [ebp-4]
 0057622A    mov        eax,ebx
 0057622C    call       @LStrAsg
 00576231    mov        al,[005762EC]; 0x1
 00576236    push       eax
 00576237    lea        eax,[ebp-8]
 0057623A    push       eax
 0057623B    mov        eax,dword ptr [ebx]
 0057623D    mov        ecx,576314; ' Asc,'
 00576242    mov        edx,576324; ','
 00576247    call       StringReplace
 0057624C    mov        edx,dword ptr [ebp-8]
 0057624F    mov        eax,ebx
 00576251    call       @LStrAsg
 00576256    mov        eax,ebx
 00576258    mov        edx,576330; ' Asc'
 0057625D    call       @LStrCat
 00576262    cmp        byte ptr [esi+1E4],1; TZReadOnlyQuery.SortType:TSortType
>00576269    jne        005762C1
 0057626B    mov        al,[005762EC]; 0x1
 00576270    push       eax
 00576271    lea        eax,[ebp-0C]
 00576274    push       eax
 00576275    mov        eax,dword ptr [ebx]
 00576277    mov        ecx,576340; ' Desc;'
 0057627C    mov        edx,576308; ';'
 00576281    call       StringReplace
 00576286    mov        edx,dword ptr [ebp-0C]
 00576289    mov        eax,ebx
 0057628B    call       @LStrAsg
 00576290    mov        al,[005762EC]; 0x1
 00576295    push       eax
 00576296    lea        eax,[ebp-10]
 00576299    push       eax
 0057629A    mov        eax,dword ptr [ebx]
 0057629C    mov        ecx,576350; ' Desc,'
 005762A1    mov        edx,576324; ','
 005762A6    call       StringReplace
 005762AB    mov        edx,dword ptr [ebp-10]
 005762AE    mov        eax,ebx
 005762B0    call       @LStrAsg
 005762B5    mov        eax,ebx
 005762B7    mov        edx,576360; ' Desc'
 005762BC    call       @LStrCat
 005762C1    xor        eax,eax
 005762C3    pop        edx
 005762C4    pop        ecx
 005762C5    pop        ecx
 005762C6    mov        dword ptr fs:[eax],edx
 005762C9    push       5762E3
 005762CE    lea        eax,[ebp-10]
 005762D1    mov        edx,4
 005762D6    call       @LStrArrayClr
 005762DB    ret
<005762DC    jmp        @HandleFinally
<005762E1    jmp        005762CE
 005762E3    pop        esi
 005762E4    pop        ebx
 005762E5    mov        esp,ebp
 005762E7    pop        ebp
 005762E8    ret
*}
//end;

//00576368
//procedure TZReadOnlyQuery.SetIndexFieldNames(Self:TZReadOnlyQuery; ?:?);
//begin
{*
 00576368    push       ebp
 00576369    mov        ebp,esp
 0057636B    xor        ecx,ecx
 0057636D    push       ecx
 0057636E    push       ecx
 0057636F    push       ecx
 00576370    push       ecx
 00576371    push       ecx
 00576372    push       ecx
 00576373    push       ebx
 00576374    push       esi
 00576375    mov        dword ptr [ebp-4],edx
 00576378    mov        esi,eax
 0057637A    mov        eax,dword ptr [ebp-4]
 0057637D    call       @LStrAddRef
 00576382    xor        eax,eax
 00576384    push       ebp
 00576385    push       5764B8
 0057638A    push       dword ptr fs:[eax]
 0057638D    mov        dword ptr fs:[eax],esp
 00576390    lea        edx,[ebp-8]
 00576393    mov        eax,dword ptr [ebp-4]
 00576396    call       Trim
 0057639B    mov        edx,dword ptr [ebp-8]
 0057639E    lea        eax,[ebp-4]
 005763A1    call       @LStrLAsg
 005763A6    mov        al,[005764C8]; 0x1
 005763AB    push       eax
 005763AC    lea        eax,[ebp-0C]
 005763AF    push       eax
 005763B0    xor        ecx,ecx
 005763B2    mov        edx,5764D4; '['
 005763B7    mov        eax,dword ptr [ebp-4]
 005763BA    call       StringReplace
 005763BF    mov        edx,dword ptr [ebp-0C]
 005763C2    lea        eax,[ebp-4]
 005763C5    call       @LStrLAsg
 005763CA    mov        al,[005764C8]; 0x1
 005763CF    push       eax
 005763D0    lea        eax,[ebp-10]
 005763D3    push       eax
 005763D4    xor        ecx,ecx
 005763D6    mov        edx,5764E0; ']'
 005763DB    mov        eax,dword ptr [ebp-4]
 005763DE    call       StringReplace
 005763E3    mov        edx,dword ptr [ebp-10]
 005763E6    lea        eax,[ebp-4]
 005763E9    call       @LStrLAsg
 005763EE    mov        eax,dword ptr [esi+1DC]; TZReadOnlyQuery.?f1DC:String
 005763F4    mov        edx,dword ptr [ebp-4]
 005763F7    call       @LStrCmp
>005763FC    je         00576476
 005763FE    lea        eax,[esi+1DC]; TZReadOnlyQuery.?f1DC:String
 00576404    mov        edx,dword ptr [ebp-4]
 00576407    call       @LStrAsg
 0057640C    mov        eax,esi
 0057640E    call       00575F20
 00576413    mov        ebx,eax
 00576415    mov        byte ptr [esi+1E4],bl; TZReadOnlyQuery.SortType:TSortType
 0057641B    cmp        bl,2
>0057641E    je         00576468
 00576420    mov        al,[005764E4]; 0x3
 00576425    push       eax
 00576426    lea        eax,[ebp-14]
 00576429    push       eax
 0057642A    xor        ecx,ecx
 0057642C    mov        edx,5764F0; ' Desc'
 00576431    mov        eax,dword ptr [ebp-4]
 00576434    call       StringReplace
 00576439    mov        edx,dword ptr [ebp-14]
 0057643C    lea        eax,[ebp-4]
 0057643F    call       @LStrLAsg
 00576444    mov        al,[005764E4]; 0x3
 00576449    push       eax
 0057644A    lea        eax,[ebp-18]
 0057644D    push       eax
 0057644E    xor        ecx,ecx
 00576450    mov        edx,576500; ' Asc'
 00576455    mov        eax,dword ptr [ebp-4]
 00576458    call       StringReplace
 0057645D    mov        edx,dword ptr [ebp-18]
 00576460    lea        eax,[ebp-4]
 00576463    call       @LStrLAsg
 00576468    lea        eax,[esi+1E8]; TZReadOnlyQuery.?f1E8:String
 0057646E    mov        edx,dword ptr [ebp-4]
 00576471    call       @LStrAsg
 00576476    mov        eax,esi
 00576478    call       TDataSet.GetActive
 0057647D    test       al,al
>0057647F    je         0057649D
 00576481    cmp        dword ptr [esi+1E8],0; TZReadOnlyQuery.?f1E8:String
>00576488    jne        00576496
 0057648A    mov        eax,esi
 0057648C    mov        edx,dword ptr [eax]
 0057648E    call       dword ptr [edx+168]; TZAbstractRODataset.InternalRefresh
>00576494    jmp        0057649D
 00576496    mov        eax,esi
 00576498    call       0057512C
 0057649D    xor        eax,eax
 0057649F    pop        edx
 005764A0    pop        ecx
 005764A1    pop        ecx
 005764A2    mov        dword ptr fs:[eax],edx
 005764A5    push       5764BF
 005764AA    lea        eax,[ebp-18]
 005764AD    mov        edx,6
 005764B2    call       @LStrArrayClr
 005764B7    ret
<005764B8    jmp        @HandleFinally
<005764BD    jmp        005764AA
 005764BF    pop        esi
 005764C0    pop        ebx
 005764C1    mov        esp,ebp
 005764C3    pop        ebp
 005764C4    ret
*}
//end;

end.