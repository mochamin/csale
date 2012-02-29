{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZAbstractDataset;

interface

uses
  Classes, Windows, Graphics, ZAbstractRODataset, ZSqlUpdate, ZDbcCachedResultSet, DB;

type
  TUpdateRecordEvent = procedure(DataSet:TDataSet; UpdateKind:TUpdateKind; var UpdateAction:TUpdateAction) of object;
  TZUpdateMode = (umUpdateChanged, umUpdateAll);
  TZWhereMode = (wmWhereKeyOnly, wmWhereAll);
  TZAbstractDataset = class(TZAbstractRODataset)
  public
    CachedUpdates:Boolean;//f208
    UpdateObject:TZUpdateSQL;//f20C
    f210:IZCachedResultSet;//f210
    f214:IZCachedResolver;//f214
    OnApplyUpdateError:TDataSetErrorEvent;//f218
    OnUpdateRecord:TUpdateRecordEvent;//f220
    f228:byte;//f228
    f229:byte;//f229
    f22C:dword;//f22C
    f230:String;//f230
    BeforeApplyUpdates:TNotifyEvent;//f238
    f23A:word;//f23A
    f23C:dword;//f23C
    AfterApplyUpdates:TNotifyEvent;//f240
    f242:word;//f242
    f244:dword;//f244
    destructor Destroy; virtual;
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;
    constructor Create(AOwner:TComponent); virtual;
    //function PSUpdateRecord(UpdateKind:TUpdateKind; Delta:TDataSet):?; virtual;
    procedure InternalCancel; virtual;
    procedure InternalEdit; virtual;
    //procedure InternalAddRecord(?:?; ?:?; Buffer:Pointer; Append:Boolean); virtual;
    procedure InternalDelete; virtual;
    procedure InternalPost; virtual;
    procedure sub_0056EF68; virtual;
    //procedure sub_0056ED54(?:?; ?:?; ?:?); virtual;
    //procedure sub_0056EE70(?:?; ?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//0056EBAC
constructor TZAbstractDataset.Create(AOwner:TComponent);
begin
{*
 0056EBAC    push       ebp
 0056EBAD    mov        ebp,esp
 0056EBAF    push       ebx
 0056EBB0    push       esi
 0056EBB1    test       dl,dl
>0056EBB3    je         0056EBBD
 0056EBB5    add        esp,0FFFFFFF0
 0056EBB8    call       @ClassCreate
 0056EBBD    mov        ebx,edx
 0056EBBF    mov        esi,eax
 0056EBC1    xor        edx,edx
 0056EBC3    mov        eax,esi
 0056EBC5    call       TZAbstractRODataset.Create
 0056EBCA    mov        byte ptr [esi+229],0; TZAbstractDataset.?f229:byte
 0056EBD1    mov        byte ptr [esi+228],0; TZAbstractDataset.?f228:byte
 0056EBD8    mov        byte ptr [esi+1A9],1; TZAbstractDataset.?f1A9:byte
 0056EBDF    mov        eax,esi
 0056EBE1    test       bl,bl
>0056EBE3    je         0056EBF4
 0056EBE5    call       @AfterConstruction
 0056EBEA    pop        dword ptr fs:[0]
 0056EBF1    add        esp,0C
 0056EBF4    mov        eax,esi
 0056EBF6    pop        esi
 0056EBF7    pop        ebx
 0056EBF8    pop        ebp
 0056EBF9    ret
*}
end;

//0056EBFC
destructor TZAbstractDataset.Destroy;
begin
{*
 0056EBFC    push       ebp
 0056EBFD    mov        ebp,esp
 0056EBFF    push       ebx
 0056EC00    push       esi
 0056EC01    call       @BeforeDestruction
 0056EC06    mov        ebx,edx
 0056EC08    mov        esi,eax
 0056EC0A    mov        edx,ebx
 0056EC0C    and        dl,0FC
 0056EC0F    mov        eax,esi
 0056EC11    call       TZAbstractRODataset.Destroy
 0056EC16    test       bl,bl
>0056EC18    jle        0056EC21
 0056EC1A    mov        eax,esi
 0056EC1C    call       @ClassDestroy
 0056EC21    pop        esi
 0056EC22    pop        ebx
 0056EC23    pop        ebp
 0056EC24    ret
*}
end;

//0056EC28
//procedure TZAbstractDataset.SetUpdateObject(Self:TZAbstractDataset; ?:?);
//begin
{*
 0056EC28    push       ebp
 0056EC29    mov        ebp,esp
 0056EC2B    push       ebx
 0056EC2C    push       esi
 0056EC2D    mov        esi,edx
 0056EC2F    mov        ebx,eax
 0056EC31    mov        eax,dword ptr [ebx+20C]; TZAbstractDataset.UpdateObject:TZUpdateSQL
 0056EC37    cmp        esi,eax
>0056EC39    je         0056ECB8
 0056EC3B    test       eax,eax
>0056EC3D    je         0056EC46
 0056EC3F    mov        edx,ebx
 0056EC41    call       TComponent.RemoveFreeNotification
 0056EC46    mov        eax,esi
 0056EC48    mov        dword ptr [ebx+20C],eax; TZAbstractDataset.UpdateObject:TZUpdateSQL
 0056EC4E    test       eax,eax
>0056EC50    je         0056EC59
 0056EC52    mov        edx,ebx
 0056EC54    call       TComponent.FreeNotification
 0056EC59    mov        eax,dword ptr [ebx+20C]; TZAbstractDataset.UpdateObject:TZUpdateSQL
 0056EC5F    test       eax,eax
>0056EC61    je         0056EC6A
 0056EC63    mov        edx,ebx
 0056EC65    call       0056CAC0
 0056EC6A    mov        eax,ebx
 0056EC6C    call       TDataSet.GetActive
 0056EC71    test       al,al
>0056EC73    je         0056ECB8
 0056EC75    cmp        dword ptr [ebx+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056EC7C    je         0056ECB8
 0056EC7E    mov        eax,dword ptr [ebx+20C]; TZAbstractDataset.UpdateObject:TZUpdateSQL
 0056EC84    test       eax,eax
>0056EC86    je         0056ECA4
 0056EC88    mov        edx,eax
 0056EC8A    test       edx,edx
>0056EC8C    je         0056EC94
 0056EC8E    sub        edx,0FFFFFF48
 0056EC94    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056EC9A    mov        ecx,dword ptr [eax]
 0056EC9C    call       dword ptr [ecx+1F8]
>0056ECA2    jmp        0056ECB8
 0056ECA4    mov        edx,dword ptr [ebx+214]; TZAbstractDataset.?f214:IZCachedResolver
 0056ECAA    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056ECB0    mov        ecx,dword ptr [eax]
 0056ECB2    call       dword ptr [ecx+1F8]
 0056ECB8    pop        esi
 0056ECB9    pop        ebx
 0056ECBA    pop        ebp
 0056ECBB    ret
*}
//end;

//0056ECBC
//procedure TZAbstractDataset.SetCachedUpdates(Self:TZAbstractDataset; ?:?);
//begin
{*
 0056ECBC    push       ebp
 0056ECBD    mov        ebp,esp
 0056ECBF    push       ebx
 0056ECC0    push       esi
 0056ECC1    mov        ebx,edx
 0056ECC3    mov        esi,eax
 0056ECC5    cmp        bl,byte ptr [esi+208]; TZAbstractDataset.CachedUpdates:Boolean
>0056ECCB    je         0056ECF7
 0056ECCD    mov        byte ptr [esi+208],bl; TZAbstractDataset.CachedUpdates:Boolean
 0056ECD3    mov        eax,esi
 0056ECD5    call       TDataSet.GetActive
 0056ECDA    test       al,al
>0056ECDC    je         0056ECF7
 0056ECDE    cmp        dword ptr [esi+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056ECE5    je         0056ECF7
 0056ECE7    mov        edx,ebx
 0056ECE9    mov        eax,dword ptr [esi+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056ECEF    mov        ecx,dword ptr [eax]
 0056ECF1    call       dword ptr [ecx+204]
 0056ECF7    pop        esi
 0056ECF8    pop        ebx
 0056ECF9    pop        ebp
 0056ECFA    ret
*}
//end;

//0056ECFC
//procedure TZQuery.SetUpdateMode(Self:TZQuery; ?:?);
//begin
{*
 0056ECFC    push       ebp
 0056ECFD    mov        ebp,esp
 0056ECFF    push       ebx
 0056ED00    mov        ebx,eax
 0056ED02    cmp        dl,byte ptr [ebx+228]; TZQuery.?f228:byte
>0056ED08    je         0056ED22
 0056ED0A    mov        byte ptr [ebx+228],dl; TZQuery.?f228:byte
 0056ED10    mov        eax,ebx
 0056ED12    call       TDataSet.GetActive
 0056ED17    test       al,al
>0056ED19    je         0056ED22
 0056ED1B    mov        eax,ebx
 0056ED1D    call       TDataSet.Close
 0056ED22    pop        ebx
 0056ED23    pop        ebp
 0056ED24    ret
*}
//end;

//0056ED28
//procedure TZQuery.SetWhereMode(Self:TZQuery; ?:?);
//begin
{*
 0056ED28    push       ebp
 0056ED29    mov        ebp,esp
 0056ED2B    push       ebx
 0056ED2C    mov        ebx,eax
 0056ED2E    cmp        dl,byte ptr [ebx+229]; TZQuery.?f229:byte
>0056ED34    je         0056ED4E
 0056ED36    mov        byte ptr [ebx+229],dl; TZQuery.?f229:byte
 0056ED3C    mov        eax,ebx
 0056ED3E    call       TDataSet.GetActive
 0056ED43    test       al,al
>0056ED45    je         0056ED4E
 0056ED47    mov        eax,ebx
 0056ED49    call       TDataSet.Close
 0056ED4E    pop        ebx
 0056ED4F    pop        ebp
 0056ED50    ret
*}
//end;

//0056ED54
//procedure sub_0056ED54(?:?; ?:?; ?:?);
//begin
{*
 0056ED54    push       ebp
 0056ED55    mov        ebp,esp
 0056ED57    push       ecx
 0056ED58    push       ebx
 0056ED59    push       esi
 0056ED5A    push       edi
 0056ED5B    mov        edi,ecx
 0056ED5D    mov        esi,edx
 0056ED5F    mov        ebx,eax
 0056ED61    mov        dl,1
 0056ED63    mov        eax,[0041C8E4]; TStringList
 0056ED68    call       TObject.Create; TStringList.Create
 0056ED6D    mov        dword ptr [ebp-4],eax
 0056ED70    xor        eax,eax
 0056ED72    push       ebp
 0056ED73    push       56EE12
 0056ED78    push       dword ptr fs:[eax]
 0056ED7B    mov        dword ptr fs:[eax],esp
 0056ED7E    mov        edx,edi
 0056ED80    mov        eax,dword ptr [ebp-4]
 0056ED83    mov        ecx,dword ptr [eax]
 0056ED85    call       dword ptr [ecx+40]; TStrings.AddStrings
 0056ED88    mov        al,byte ptr [ebx+228]; TZQuery.?f228:byte
 0056ED8E    sub        al,1
>0056ED90    jb         0056EDA8
>0056ED92    jne        0056EDBA
 0056ED94    mov        ecx,56EE2C; 'all'
 0056ED99    mov        edx,56EE38; 'update'
 0056ED9E    mov        eax,dword ptr [ebp-4]
 0056EDA1    call       TStrings.SetValue
>0056EDA6    jmp        0056EDBA
 0056EDA8    mov        ecx,56EE48; 'changed'
 0056EDAD    mov        edx,56EE38; 'update'
 0056EDB2    mov        eax,dword ptr [ebp-4]
 0056EDB5    call       TStrings.SetValue
 0056EDBA    mov        al,byte ptr [ebx+229]; TZQuery.?f229:byte
 0056EDC0    sub        al,1
>0056EDC2    jb         0056EDDA
>0056EDC4    jne        0056EDEC
 0056EDC6    mov        ecx,56EE2C; 'all'
 0056EDCB    mov        edx,56EE58; 'where'
 0056EDD0    mov        eax,dword ptr [ebp-4]
 0056EDD3    call       TStrings.SetValue
>0056EDD8    jmp        0056EDEC
 0056EDDA    mov        ecx,56EE68; 'keyonly'
 0056EDDF    mov        edx,56EE58; 'where'
 0056EDE4    mov        eax,dword ptr [ebp-4]
 0056EDE7    call       TStrings.SetValue
 0056EDEC    mov        eax,dword ptr [ebp+8]
 0056EDEF    push       eax
 0056EDF0    mov        ecx,dword ptr [ebp-4]
 0056EDF3    mov        edx,esi
 0056EDF5    mov        eax,ebx
 0056EDF7    call       005731E0
 0056EDFC    xor        eax,eax
 0056EDFE    pop        edx
 0056EDFF    pop        ecx
 0056EE00    pop        ecx
 0056EE01    mov        dword ptr fs:[eax],edx
 0056EE04    push       56EE19
 0056EE09    mov        eax,dword ptr [ebp-4]
 0056EE0C    call       TObject.Free
 0056EE11    ret
<0056EE12    jmp        @HandleFinally
<0056EE17    jmp        0056EE09
 0056EE19    pop        edi
 0056EE1A    pop        esi
 0056EE1B    pop        ebx
 0056EE1C    pop        ecx
 0056EE1D    pop        ebp
 0056EE1E    ret        4
*}
//end;

//0056EE70
//procedure sub_0056EE70(?:?; ?:?; ?:?);
//begin
{*
 0056EE70    push       ebp
 0056EE71    mov        ebp,esp
 0056EE73    add        esp,0FFFFFFF8
 0056EE76    push       ebx
 0056EE77    push       esi
 0056EE78    push       edi
 0056EE79    xor        ebx,ebx
 0056EE7B    mov        dword ptr [ebp-8],ebx
 0056EE7E    mov        dword ptr [ebp-4],ecx
 0056EE81    mov        edi,edx
 0056EE83    mov        ebx,eax
 0056EE85    mov        esi,dword ptr [ebp+8]
 0056EE88    xor        eax,eax
 0056EE8A    push       ebp
 0056EE8B    push       56EF47
 0056EE90    push       dword ptr fs:[eax]
 0056EE93    mov        dword ptr fs:[eax],esp
 0056EE96    push       esi
 0056EE97    mov        ecx,dword ptr [ebp-4]
 0056EE9A    mov        edx,edi
 0056EE9C    mov        eax,ebx
 0056EE9E    call       005732BC
 0056EEA3    cmp        dword ptr [esi],0
>0056EEA6    je         0056EF31
 0056EEAC    lea        eax,[ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EEB2    call       @IntfClear
 0056EEB7    push       eax
 0056EEB8    push       56EF58; ['{BAF24A92-C8CE-4AB4-AEBC-3D4A9BCB0946}']
 0056EEBD    mov        eax,dword ptr [esi]
 0056EEBF    push       eax
 0056EEC0    mov        eax,dword ptr [eax]
 0056EEC2    call       dword ptr [eax]
 0056EEC4    test       eax,eax
>0056EEC6    jne        0056EF31
 0056EEC8    lea        eax,[ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EECE    mov        edx,dword ptr [esi]
 0056EED0    mov        ecx,56EF58; ['{BAF24A92-C8CE-4AB4-AEBC-3D4A9BCB0946}']
 0056EED5    call       @IntfCast
 0056EEDA    lea        edx,[ebp-8]
 0056EEDD    mov        eax,dword ptr [ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EEE3    mov        ecx,dword ptr [eax]
 0056EEE5    call       dword ptr [ecx+1F4]
 0056EEEB    mov        edx,dword ptr [ebp-8]
 0056EEEE    lea        eax,[ebx+214]; TZQuery.?f214:IZCachedResolver
 0056EEF4    call       @IntfCopy
 0056EEF9    mov        dl,byte ptr [ebx+208]; TZQuery.CachedUpdates:Boolean
 0056EEFF    mov        eax,dword ptr [ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EF05    mov        ecx,dword ptr [eax]
 0056EF07    call       dword ptr [ecx+204]
 0056EF0D    mov        eax,dword ptr [ebx+20C]; TZQuery.UpdateObject:TZUpdateSQL
 0056EF13    test       eax,eax
>0056EF15    je         0056EF31
 0056EF17    mov        edx,eax
 0056EF19    test       edx,edx
>0056EF1B    je         0056EF23
 0056EF1D    sub        edx,0FFFFFF48
 0056EF23    mov        eax,dword ptr [ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EF29    mov        ecx,dword ptr [eax]
 0056EF2B    call       dword ptr [ecx+1F8]
 0056EF31    xor        eax,eax
 0056EF33    pop        edx
 0056EF34    pop        ecx
 0056EF35    pop        ecx
 0056EF36    mov        dword ptr fs:[eax],edx
 0056EF39    push       56EF4E
 0056EF3E    lea        eax,[ebp-8]
 0056EF41    call       @IntfClear
 0056EF46    ret
<0056EF47    jmp        @HandleFinally
<0056EF4C    jmp        0056EF3E
 0056EF4E    pop        edi
 0056EF4F    pop        esi
 0056EF50    pop        ebx
 0056EF51    pop        ecx
 0056EF52    pop        ecx
 0056EF53    pop        ebp
 0056EF54    ret        4
*}
//end;

//0056EF68
procedure sub_0056EF68;
begin
{*
 0056EF68    push       ebp
 0056EF69    mov        ebp,esp
 0056EF6B    push       ebx
 0056EF6C    mov        ebx,eax
 0056EF6E    mov        eax,ebx
 0056EF70    call       00573770
 0056EF75    cmp        dword ptr [ebx+210],0; TZQuery.?f210:IZCachedResultSet
>0056EF7C    je         0056EF89
 0056EF7E    mov        eax,dword ptr [ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EF84    mov        edx,dword ptr [eax]
 0056EF86    call       dword ptr [edx+10]
 0056EF89    lea        eax,[ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056EF8F    call       @IntfClear
 0056EF94    lea        eax,[ebx+214]; TZQuery.?f214:IZCachedResolver
 0056EF9A    call       @IntfClear
 0056EF9F    pop        ebx
 0056EFA0    pop        ebp
 0056EFA1    ret
*}
end;

//0056EFA4
procedure TZAbstractDataset.InternalEdit;
begin
{*
 0056EFA4    ret
*}
end;

//0056EFA8
//procedure sub_0056EFA8(?:TZAbstractDataset);
//begin
{*
 0056EFA8    push       ebp
 0056EFA9    mov        ebp,esp
 0056EFAB    push       ecx
 0056EFAC    push       ebx
 0056EFAD    push       esi
 0056EFAE    push       edi
 0056EFAF    mov        ebx,eax
 0056EFB1    cmp        dword ptr [ebx+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056EFB8    je         0056F0B1
 0056EFBE    lea        edx,[ebp-4]
 0056EFC1    mov        eax,ebx
 0056EFC3    call       00572544
 0056EFC8    test       al,al
>0056EFCA    je         0056F0B1
 0056EFD0    mov        edx,dword ptr [ebx+178]; TZAbstractDataset.?f178:Integer
 0056EFD6    sub        edx,1
>0056EFD9    jno        0056EFE0
 0056EFDB    call       @IntOver
 0056EFE0    mov        eax,dword ptr [ebx+188]; TZAbstractDataset.?f188:TZSortedList
 0056EFE6    call       TList.Get
 0056EFEB    mov        esi,eax
 0056EFED    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056EFF3    mov        edx,esi
 0056EFF5    mov        ecx,dword ptr [eax]
 0056EFF7    call       dword ptr [ecx+0F8]
 0056EFFD    mov        eax,dword ptr [ebx+17C]; TZAbstractDataset.?f17C:TZRowAccessor
 0056F003    mov        edx,dword ptr [ebp-4]
 0056F006    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 0056F009    push       eax
 0056F00A    mov        ecx,dword ptr [ebx+30]; TZAbstractDataset.FFields:TFields
 0056F00D    mov        edx,dword ptr [ebx+190]; TZAbstractDataset.?f190:TIntegerDynArray
 0056F013    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F019    call       00569608
 0056F01E    xor        eax,eax
 0056F020    push       ebp
 0056F021    push       56F044
 0056F026    push       dword ptr fs:[eax]
 0056F029    mov        dword ptr fs:[eax],esp
 0056F02C    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F032    mov        edx,dword ptr [eax]
 0056F034    call       dword ptr [edx+1D4]
 0056F03A    xor        eax,eax
 0056F03C    pop        edx
 0056F03D    pop        ecx
 0056F03E    pop        ecx
 0056F03F    mov        dword ptr fs:[eax],edx
>0056F042    jmp        0056F06F
<0056F044    jmp        @HandleOnException
 0056F049    dd        1
 0056F04D    dd        4C6CB0;EZSQLThrowable
 0056F051    dd        56F055
 0056F055    mov        ebx,eax
 0056F057    mov        ecx,ebx
 0056F059    mov        dl,1
 0056F05B    mov        eax,[0057089C]; EZDatabaseError
 0056F060    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056F065    call       @RaiseExcept
 0056F06A    call       @DoneExcept
 0056F06F    mov        edx,esi
 0056F071    mov        eax,ebx
 0056F073    call       00571978
 0056F078    test       al,al
>0056F07A    jne        0056F0B1
 0056F07C    mov        edx,dword ptr [ebx+178]; TZAbstractDataset.?f178:Integer
 0056F082    sub        edx,1
>0056F085    jno        0056F08C
 0056F087    call       @IntOver
 0056F08C    mov        eax,dword ptr [ebx+188]; TZAbstractDataset.?f188:TZSortedList
 0056F092    call       TList.Delete
 0056F097    mov        edx,dword ptr [ebx+178]; TZAbstractDataset.?f178:Integer
 0056F09D    mov        eax,dword ptr [ebx+188]; TZAbstractDataset.?f188:TZSortedList
 0056F0A3    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 0056F0A6    call       Min
 0056F0AB    mov        dword ptr [ebx+178],eax; TZAbstractDataset.?f178:Integer
 0056F0B1    pop        edi
 0056F0B2    pop        esi
 0056F0B3    pop        ebx
 0056F0B4    pop        ecx
 0056F0B5    pop        ebp
 0056F0B6    ret
*}
//end;

//0056F0B8
//procedure TZAbstractDataset.InternalAddRecord(?:?; ?:?; Buffer:Pointer; Append:Boolean);
//begin
{*
 0056F0B8    push       ebp
 0056F0B9    mov        ebp,esp
 0056F0BB    add        esp,0FFFFFFF8
 0056F0BE    push       ebx
 0056F0BF    push       esi
 0056F0C0    push       edi
 0056F0C1    xor        ebx,ebx
 0056F0C3    mov        dword ptr [ebp-8],ebx
 0056F0C6    mov        ebx,ecx
 0056F0C8    mov        esi,edx
 0056F0CA    mov        edi,eax
 0056F0CC    xor        eax,eax
 0056F0CE    push       ebp
 0056F0CF    push       56F23C
 0056F0D4    push       dword ptr fs:[eax]
 0056F0D7    mov        dword ptr fs:[eax],esp
 0056F0DA    lea        edx,[ebp-4]
 0056F0DD    mov        eax,edi
 0056F0DF    call       00572544
 0056F0E4    test       al,al
>0056F0E6    je         0056F0ED
 0056F0E8    cmp        esi,dword ptr [ebp-4]
>0056F0EB    je         0056F10E
 0056F0ED    lea        edx,[ebp-8]
 0056F0F0    mov        eax,[0061C094]; ^#122.sResString9:TResStringRec
 0056F0F5    call       LoadResString
 0056F0FA    mov        ecx,dword ptr [ebp-8]
 0056F0FD    mov        dl,1
 0056F0FF    mov        eax,[0057089C]; EZDatabaseError
 0056F104    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056F109    call       @RaiseExcept
 0056F10E    test       bl,bl
>0056F110    je         0056F11B
 0056F112    xor        edx,edx
 0056F114    mov        eax,edi
 0056F116    call       00571844
 0056F11B    cmp        dword ptr [edi+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056F122    je         0056F226
 0056F128    mov        eax,dword ptr [edi+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F12E    mov        edx,dword ptr [eax]
 0056F130    call       dword ptr [edx+1E4]
 0056F136    mov        eax,dword ptr [edi+17C]; TZAbstractDataset.?f17C:TZRowAccessor
 0056F13C    mov        edx,dword ptr [ebp-4]
 0056F13F    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 0056F142    push       eax
 0056F143    mov        ecx,dword ptr [edi+30]; TZAbstractDataset.FFields:TFields
 0056F146    mov        edx,dword ptr [edi+190]; TZAbstractDataset.?f190:TIntegerDynArray
 0056F14C    mov        eax,dword ptr [edi+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F152    call       00569608
 0056F157    xor        eax,eax
 0056F159    push       ebp
 0056F15A    push       56F17D
 0056F15F    push       dword ptr fs:[eax]
 0056F162    mov        dword ptr fs:[eax],esp
 0056F165    mov        eax,dword ptr [edi+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F16B    mov        edx,dword ptr [eax]
 0056F16D    call       dword ptr [edx+1D0]
 0056F173    xor        eax,eax
 0056F175    pop        edx
 0056F176    pop        ecx
 0056F177    pop        ecx
 0056F178    mov        dword ptr fs:[eax],edx
>0056F17B    jmp        0056F1A8
<0056F17D    jmp        @HandleOnException
 0056F182    dd        1
 0056F186    dd        4C6CB0;EZSQLThrowable
 0056F18A    dd        56F18E
 0056F18E    mov        ebx,eax
 0056F190    mov        ecx,ebx
 0056F192    mov        dl,1
 0056F194    mov        eax,[0057089C]; EZDatabaseError
 0056F199    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056F19E    call       @RaiseExcept
 0056F1A3    call       @DoneExcept
 0056F1A8    mov        eax,dword ptr [edi+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F1AE    mov        edx,dword ptr [eax]
 0056F1B0    call       dword ptr [edx+0F4]
 0056F1B6    mov        esi,eax
 0056F1B8    add        dword ptr [edi+18C],1; TZAbstractDataset.?f18C:dword
>0056F1BF    jno        0056F1C6
 0056F1C1    call       @IntOver
 0056F1C6    mov        edx,esi
 0056F1C8    mov        eax,edi
 0056F1CA    call       00571978
 0056F1CF    test       al,al
>0056F1D1    je         0056F226
 0056F1D3    test       bl,bl
>0056F1D5    je         0056F1F5
 0056F1D7    mov        eax,dword ptr [edi+188]; TZAbstractDataset.?f188:TZSortedList
 0056F1DD    mov        edx,esi
 0056F1DF    call       TList.Add
 0056F1E4    mov        eax,dword ptr [edi+188]; TZAbstractDataset.?f188:TZSortedList
 0056F1EA    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 0056F1ED    mov        dword ptr [edi+178],eax; TZAbstractDataset.?f178:Integer
>0056F1F3    jmp        0056F226
 0056F1F5    mov        eax,dword ptr [edi+178]; TZAbstractDataset.?f178:Integer
 0056F1FB    mov        edx,1
 0056F200    call       Max
 0056F205    mov        ebx,eax
 0056F207    mov        dword ptr [edi+178],ebx; TZAbstractDataset.?f178:Integer
 0056F20D    mov        edx,ebx
 0056F20F    sub        edx,1
>0056F212    jno        0056F219
 0056F214    call       @IntOver
 0056F219    mov        eax,dword ptr [edi+188]; TZAbstractDataset.?f188:TZSortedList
 0056F21F    mov        ecx,esi
 0056F221    call       TList.Insert
 0056F226    xor        eax,eax
 0056F228    pop        edx
 0056F229    pop        ecx
 0056F22A    pop        ecx
 0056F22B    mov        dword ptr fs:[eax],edx
 0056F22E    push       56F243
 0056F233    lea        eax,[ebp-8]
 0056F236    call       @LStrClr
 0056F23B    ret
<0056F23C    jmp        @HandleFinally
<0056F241    jmp        0056F233
 0056F243    pop        edi
 0056F244    pop        esi
 0056F245    pop        ebx
 0056F246    pop        ecx
 0056F247    pop        ecx
 0056F248    pop        ebp
 0056F249    ret
*}
//end;

//0056F24C
procedure TZAbstractDataset.InternalPost;
begin
{*
 0056F24C    push       ebp
 0056F24D    mov        ebp,esp
 0056F24F    xor        ecx,ecx
 0056F251    push       ecx
 0056F252    push       ecx
 0056F253    push       ecx
 0056F254    push       ecx
 0056F255    push       ecx
 0056F256    push       ecx
 0056F257    push       ecx
 0056F258    push       ecx
 0056F259    push       ebx
 0056F25A    mov        dword ptr [ebp-4],eax
 0056F25D    xor        eax,eax
 0056F25F    push       ebp
 0056F260    push       56F407
 0056F265    push       dword ptr fs:[eax]
 0056F268    mov        dword ptr fs:[eax],esp
 0056F26B    mov        eax,dword ptr [ebp-4]
 0056F26E    cmp        dword ptr [eax+230],0; TZAbstractDataset.?f230:String
>0056F275    je         0056F2D6
 0056F277    mov        eax,dword ptr [ebp-4]
 0056F27A    cmp        dword ptr [eax+22C],0; TZAbstractDataset.?f22C:dword
>0056F281    je         0056F2D6
 0056F283    mov        eax,dword ptr [ebp-4]
 0056F286    mov        edx,dword ptr [eax+230]; TZAbstractDataset.?f230:String
 0056F28C    mov        eax,dword ptr [ebp-4]
 0056F28F    call       TDataSet.FieldByName
 0056F294    mov        edx,dword ptr [eax]
 0056F296    call       dword ptr [edx+84]; TField.GetIsNull
 0056F29C    test       al,al
>0056F29E    je         0056F2D6
 0056F2A0    mov        eax,dword ptr [ebp-4]
 0056F2A3    mov        edx,dword ptr [eax+230]; TZAbstractDataset.?f230:String
 0056F2A9    mov        eax,dword ptr [ebp-4]
 0056F2AC    call       TDataSet.FieldByName
 0056F2B1    push       eax
 0056F2B2    mov        eax,dword ptr [ebp-4]
 0056F2B5    mov        eax,dword ptr [eax+22C]; TZAbstractDataset.?f22C:dword
 0056F2BB    call       0056C154
 0056F2C0    push       edx
 0056F2C1    push       eax
 0056F2C2    lea        eax,[ebp-1C]
 0056F2C5    call       @VarFromInt64
 0056F2CA    lea        edx,[ebp-1C]
 0056F2CD    pop        eax
 0056F2CE    mov        ecx,dword ptr [eax]
 0056F2D0    call       dword ptr [ecx+0B4]
 0056F2D6    mov        eax,dword ptr [ebp-4]
 0056F2D9    call       TZAbstractRODataset.InternalPost
 0056F2DE    lea        edx,[ebp-8]
 0056F2E1    mov        eax,dword ptr [ebp-4]
 0056F2E4    call       00572544
 0056F2E9    test       al,al
>0056F2EB    jne        0056F30E
 0056F2ED    lea        edx,[ebp-20]
 0056F2F0    mov        eax,[0061C094]; ^#122.sResString9:TResStringRec
 0056F2F5    call       LoadResString
 0056F2FA    mov        ecx,dword ptr [ebp-20]
 0056F2FD    mov        dl,1
 0056F2FF    mov        eax,[0057089C]; EZDatabaseError
 0056F304    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056F309    call       @RaiseExcept
 0056F30E    mov        eax,dword ptr [ebp-4]
 0056F311    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 0056F317    call       005779A4
 0056F31C    xor        eax,eax
 0056F31E    push       ebp
 0056F31F    push       56F3DA
 0056F324    push       dword ptr fs:[eax]
 0056F327    mov        dword ptr fs:[eax],esp
 0056F32A    mov        eax,dword ptr [ebp-4]
 0056F32D    cmp        byte ptr [eax+9D],3; TZAbstractDataset.FState:TDataSetState
>0056F334    jne        0056F348
 0056F336    xor        ecx,ecx
 0056F338    mov        edx,dword ptr [ebp-8]
 0056F33B    mov        eax,dword ptr [ebp-4]
 0056F33E    mov        ebx,dword ptr [eax]
 0056F340    call       dword ptr [ebx+1C0]; TZAbstractDataset.InternalAddRecord
>0056F346    jmp        0056F350
 0056F348    mov        eax,dword ptr [ebp-4]
 0056F34B    call       0056EFA8
 0056F350    mov        eax,dword ptr [ebp-4]
 0056F353    cmp        dword ptr [eax+1E8],0; TZAbstractDataset.?f1E8:String
>0056F35A    je         0056F3BE
 0056F35C    mov        eax,dword ptr [ebp-4]
 0056F35F    mov        edx,dword ptr [eax]
 0056F361    call       dword ptr [edx+10C]; TDataSet.FreeFieldBuffers
 0056F367    mov        dl,1
 0056F369    mov        eax,dword ptr [ebp-4]
 0056F36C    call       TDataSet.SetState
 0056F371    mov        dl,byte ptr ds:[56F414]; 0x0
 0056F377    mov        eax,dword ptr [ebp-4]
 0056F37A    mov        ecx,dword ptr [eax]
 0056F37C    call       dword ptr [ecx+250]; TDataSet.Resync
 0056F382    lea        edx,[ebp-0C]
 0056F385    mov        eax,dword ptr [ebp-4]
 0056F388    mov        ecx,dword ptr [eax]
 0056F38A    call       dword ptr [ecx+11C]; TDataSet.GetBookmarkStr
 0056F390    mov        eax,dword ptr [ebp-4]
 0056F393    call       TDataSet.DisableControls
 0056F398    mov        eax,dword ptr [ebp-4]
 0056F39B    call       0057512C
 0056F3A0    mov        edx,dword ptr [ebp-0C]
 0056F3A3    mov        eax,dword ptr [ebp-4]
 0056F3A6    mov        ecx,dword ptr [eax]
 0056F3A8    call       dword ptr [ecx+17C]; TDataSet.SetBookmarkStr
 0056F3AE    mov        eax,dword ptr [ebp-4]
 0056F3B1    call       TDataSet.UpdateCursorPos
 0056F3B6    mov        eax,dword ptr [ebp-4]
 0056F3B9    call       TDataSet.EnableControls
 0056F3BE    xor        eax,eax
 0056F3C0    pop        edx
 0056F3C1    pop        ecx
 0056F3C2    pop        ecx
 0056F3C3    mov        dword ptr fs:[eax],edx
 0056F3C6    push       56F3E1
 0056F3CB    mov        eax,dword ptr [ebp-4]
 0056F3CE    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 0056F3D4    call       005779F8
 0056F3D9    ret
<0056F3DA    jmp        @HandleFinally
<0056F3DF    jmp        0056F3CB
 0056F3E1    xor        eax,eax
 0056F3E3    pop        edx
 0056F3E4    pop        ecx
 0056F3E5    pop        ecx
 0056F3E6    mov        dword ptr fs:[eax],edx
 0056F3E9    push       56F40E
 0056F3EE    lea        eax,[ebp-20]
 0056F3F1    call       @LStrClr
 0056F3F6    lea        eax,[ebp-1C]
 0056F3F9    call       @VarClr
 0056F3FE    lea        eax,[ebp-0C]
 0056F401    call       @LStrClr
 0056F406    ret
<0056F407    jmp        @HandleFinally
<0056F40C    jmp        0056F3EE
 0056F40E    pop        ebx
 0056F40F    mov        esp,ebp
 0056F411    pop        ebp
 0056F412    ret
*}
end;

//0056F418
procedure TZAbstractDataset.InternalDelete;
begin
{*
 0056F418    push       ebp
 0056F419    mov        ebp,esp
 0056F41B    add        esp,0FFFFFFF8
 0056F41E    push       ebx
 0056F41F    push       esi
 0056F420    push       edi
 0056F421    mov        dword ptr [ebp-4],eax
 0056F424    mov        eax,dword ptr [ebp-4]
 0056F427    cmp        dword ptr [eax+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056F42E    je         0056F577
 0056F434    lea        edx,[ebp-8]
 0056F437    mov        eax,dword ptr [ebp-4]
 0056F43A    call       00572544
 0056F43F    test       al,al
>0056F441    je         0056F577
 0056F447    mov        eax,dword ptr [ebp-4]
 0056F44A    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 0056F450    call       005779A4
 0056F455    xor        eax,eax
 0056F457    push       ebp
 0056F458    push       56F570
 0056F45D    push       dword ptr fs:[eax]
 0056F460    mov        dword ptr fs:[eax],esp
 0056F463    mov        eax,dword ptr [ebp-4]
 0056F466    mov        edx,dword ptr [eax+178]; TZAbstractDataset.?f178:Integer
 0056F46C    sub        edx,1
>0056F46F    jno        0056F476
 0056F471    call       @IntOver
 0056F476    mov        eax,dword ptr [ebp-4]
 0056F479    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 0056F47F    call       TList.Get
 0056F484    mov        ebx,eax
 0056F486    mov        eax,dword ptr [ebp-4]
 0056F489    mov        eax,dword ptr [eax+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F48F    mov        edx,ebx
 0056F491    mov        ecx,dword ptr [eax]
 0056F493    call       dword ptr [ecx+0F8]
 0056F499    xor        eax,eax
 0056F49B    push       ebp
 0056F49C    push       56F4C2
 0056F4A1    push       dword ptr fs:[eax]
 0056F4A4    mov        dword ptr fs:[eax],esp
 0056F4A7    mov        eax,dword ptr [ebp-4]
 0056F4AA    mov        eax,dword ptr [eax+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F4B0    mov        edx,dword ptr [eax]
 0056F4B2    call       dword ptr [edx+1D8]
 0056F4B8    xor        eax,eax
 0056F4BA    pop        edx
 0056F4BB    pop        ecx
 0056F4BC    pop        ecx
 0056F4BD    mov        dword ptr fs:[eax],edx
>0056F4C0    jmp        0056F4ED
<0056F4C2    jmp        @HandleOnException
 0056F4C7    dd        1
 0056F4CB    dd        4C6CB0;EZSQLThrowable
 0056F4CF    dd        56F4D3
 0056F4D3    mov        ebx,eax
 0056F4D5    mov        ecx,ebx
 0056F4D7    mov        dl,1
 0056F4D9    mov        eax,[0057089C]; EZDatabaseError
 0056F4DE    call       EZDatabaseError.Create; EZDatabaseError.Create
 0056F4E3    call       @RaiseExcept
 0056F4E8    call       @DoneExcept
 0056F4ED    mov        edx,ebx
 0056F4EF    mov        eax,dword ptr [ebp-4]
 0056F4F2    call       00571978
 0056F4F7    test       al,al
>0056F4F9    jne        0056F554
 0056F4FB    mov        eax,dword ptr [ebp-4]
 0056F4FE    mov        edx,dword ptr [eax+178]; TZAbstractDataset.?f178:Integer
 0056F504    sub        edx,1
>0056F507    jno        0056F50E
 0056F509    call       @IntOver
 0056F50E    mov        eax,dword ptr [ebp-4]
 0056F511    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 0056F517    call       TList.Delete
 0056F51C    mov        eax,dword ptr [ebp-4]
 0056F51F    mov        edx,dword ptr [eax+178]; TZAbstractDataset.?f178:Integer
 0056F525    mov        eax,dword ptr [ebp-4]
 0056F528    call       00571844
 0056F52D    test       al,al
>0056F52F    jne        0056F554
 0056F531    mov        eax,dword ptr [ebp-4]
 0056F534    mov        edx,dword ptr [eax+178]; TZAbstractDataset.?f178:Integer
 0056F53A    mov        eax,dword ptr [ebp-4]
 0056F53D    mov        eax,dword ptr [eax+188]; TZAbstractDataset.?f188:TZSortedList
 0056F543    mov        eax,dword ptr [eax+8]; TZSortedList.FCount:Integer
 0056F546    call       Min
 0056F54B    mov        edx,dword ptr [ebp-4]
 0056F54E    mov        dword ptr [edx+178],eax; TZAbstractDataset.?f178:Integer
 0056F554    xor        eax,eax
 0056F556    pop        edx
 0056F557    pop        ecx
 0056F558    pop        ecx
 0056F559    mov        dword ptr fs:[eax],edx
 0056F55C    push       56F577
 0056F561    mov        eax,dword ptr [ebp-4]
 0056F564    mov        eax,dword ptr [eax+1C0]; TZAbstractDataset.Connection:TZConnection
 0056F56A    call       005779F8
 0056F56F    ret
<0056F570    jmp        @HandleFinally
<0056F575    jmp        0056F561
 0056F577    pop        edi
 0056F578    pop        esi
 0056F579    pop        ebx
 0056F57A    pop        ecx
 0056F57B    pop        ecx
 0056F57C    pop        ebp
 0056F57D    ret
*}
end;

//0056F580
procedure TZAbstractDataset.InternalCancel;
begin
{*
 0056F580    push       ebp
 0056F581    mov        ebp,esp
 0056F583    push       ecx
 0056F584    push       ebx
 0056F585    mov        ebx,eax
 0056F587    cmp        dword ptr [ebx+210],0; TZAbstractDataset.?f210:IZCachedResultSet
>0056F58E    je         0056F5FC
 0056F590    lea        edx,[ebp-4]
 0056F593    mov        eax,ebx
 0056F595    call       00572544
 0056F59A    test       al,al
>0056F59C    je         0056F5FC
 0056F59E    cmp        dword ptr [ebx+178],0; TZAbstractDataset.?f178:Integer
>0056F5A5    jle        0056F5FC
 0056F5A7    cmp        byte ptr [ebx+9D],2; TZAbstractDataset.FState:TDataSetState
>0056F5AE    jne        0056F5FC
 0056F5B0    mov        edx,dword ptr [ebx+178]; TZAbstractDataset.?f178:Integer
 0056F5B6    sub        edx,1
>0056F5B9    jno        0056F5C0
 0056F5BB    call       @IntOver
 0056F5C0    mov        eax,dword ptr [ebx+188]; TZAbstractDataset.?f188:TZSortedList
 0056F5C6    call       TList.Get
 0056F5CB    mov        edx,eax
 0056F5CD    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F5D3    mov        ecx,dword ptr [eax]
 0056F5D5    call       dword ptr [ecx+0F8]
 0056F5DB    mov        eax,dword ptr [ebx+17C]; TZAbstractDataset.?f17C:TZRowAccessor
 0056F5E1    mov        edx,dword ptr [ebp-4]
 0056F5E4    mov        dword ptr [eax+24],edx; TZRowAccessor.?f24:Pointer
 0056F5E7    push       eax
 0056F5E8    mov        ecx,dword ptr [ebx+30]; TZAbstractDataset.FFields:TFields
 0056F5EB    mov        edx,dword ptr [ebx+190]; TZAbstractDataset.?f190:TIntegerDynArray
 0056F5F1    mov        eax,dword ptr [ebx+210]; TZAbstractDataset.?f210:IZCachedResultSet
 0056F5F7    call       005692D0
 0056F5FC    pop        ebx
 0056F5FD    pop        ecx
 0056F5FE    pop        ebp
 0056F5FF    ret
*}
end;

//0056F600
procedure TZAbstractDataset.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0056F600    push       ebp
 0056F601    mov        ebp,esp
 0056F603    push       ebx
 0056F604    push       esi
 0056F605    push       edi
 0056F606    mov        ebx,ecx
 0056F608    mov        esi,edx
 0056F60A    mov        edi,eax
 0056F60C    mov        ecx,ebx
 0056F60E    mov        edx,esi
 0056F610    mov        eax,edi
 0056F612    call       TZAbstractRODataset.Notification
 0056F617    cmp        bl,1
>0056F61A    jne        0056F643
 0056F61C    cmp        esi,dword ptr [edi+20C]; TZAbstractDataset.UpdateObject:TZUpdateSQL
>0056F622    jne        0056F633
 0056F624    mov        eax,edi
 0056F626    call       TDataSet.Close
 0056F62B    xor        eax,eax
 0056F62D    mov        dword ptr [edi+20C],eax; TZAbstractDataset.UpdateObject:TZUpdateSQL
 0056F633    cmp        esi,dword ptr [edi+22C]; TZAbstractDataset.?f22C:dword
>0056F639    jne        0056F643
 0056F63B    xor        eax,eax
 0056F63D    mov        dword ptr [edi+22C],eax; TZAbstractDataset.?f22C:dword
 0056F643    pop        edi
 0056F644    pop        esi
 0056F645    pop        ebx
 0056F646    pop        ebp
 0056F647    ret
*}
end;

//0056F648
//procedure sub_0056F648(?:TZQuery);
//begin
{*
 0056F648    push       ebp
 0056F649    mov        ebp,esp
 0056F64B    push       ecx
 0056F64C    mov        dword ptr [ebp-4],eax
 0056F64F    mov        eax,dword ptr [ebp-4]
 0056F652    call       TDataSet.GetActive
 0056F657    test       al,al
>0056F659    je         0056F703
 0056F65F    mov        eax,dword ptr [ebp-4]
 0056F662    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 0056F668    call       005779A4
 0056F66D    xor        eax,eax
 0056F66F    push       ebp
 0056F670    push       56F6FC
 0056F675    push       dword ptr fs:[eax]
 0056F678    mov        dword ptr fs:[eax],esp
 0056F67B    mov        eax,dword ptr [ebp-4]
 0056F67E    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 0056F684    add        al,0FE
 0056F686    sub        al,2
>0056F688    jae        0056F695
 0056F68A    mov        eax,dword ptr [ebp-4]
 0056F68D    mov        edx,dword ptr [eax]
 0056F68F    call       dword ptr [edx+24C]; TDataSet.Post
 0056F695    mov        eax,dword ptr [ebp-4]
 0056F698    call       0056FD3C
 0056F69D    mov        eax,dword ptr [ebp-4]
 0056F6A0    cmp        dword ptr [eax+210],0; TZQuery.?f210:IZCachedResultSet
>0056F6A7    je         0056F6BA
 0056F6A9    mov        eax,dword ptr [ebp-4]
 0056F6AC    mov        eax,dword ptr [eax+210]; TZQuery.?f210:IZCachedResultSet
 0056F6B2    mov        edx,dword ptr [eax]
 0056F6B4    call       dword ptr [edx+20C]
 0056F6BA    mov        eax,dword ptr [ebp-4]
 0056F6BD    mov        al,byte ptr [eax+9D]; TZQuery.FState:TDataSetState
 0056F6C3    test       al,al
>0056F6C5    je         0056F6D8
 0056F6C7    mov        dl,byte ptr ds:[56F708]; 0x0
 0056F6CD    mov        eax,dword ptr [ebp-4]
 0056F6D0    mov        ecx,dword ptr [eax]
 0056F6D2    call       dword ptr [ecx+250]; TDataSet.Resync
 0056F6D8    mov        eax,dword ptr [ebp-4]
 0056F6DB    call       0056FD60
 0056F6E0    xor        eax,eax
 0056F6E2    pop        edx
 0056F6E3    pop        ecx
 0056F6E4    pop        ecx
 0056F6E5    mov        dword ptr fs:[eax],edx
 0056F6E8    push       56F703
 0056F6ED    mov        eax,dword ptr [ebp-4]
 0056F6F0    mov        eax,dword ptr [eax+1C0]; TZQuery.Connection:TZConnection
 0056F6F6    call       005779F8
 0056F6FB    ret
<0056F6FC    jmp        @HandleFinally
<0056F701    jmp        0056F6ED
 0056F703    pop        ecx
 0056F704    pop        ebp
 0056F705    ret
*}
//end;

//0056F70C
//procedure sub_0056F70C(?:TZQuery);
//begin
{*
 0056F70C    push       ebp
 0056F70D    mov        ebp,esp
 0056F70F    push       ebx
 0056F710    mov        ebx,eax
 0056F712    mov        al,byte ptr [ebx+9D]; TZQuery.FState:TDataSetState
 0056F718    add        al,0FE
 0056F71A    sub        al,2
>0056F71C    jae        0056F728
 0056F71E    mov        eax,ebx
 0056F720    mov        edx,dword ptr [eax]
 0056F722    call       dword ptr [edx+20C]; TDataSet.Cancel
 0056F728    cmp        dword ptr [ebx+210],0; TZQuery.?f210:IZCachedResultSet
>0056F72F    je         0056F73F
 0056F731    mov        eax,dword ptr [ebx+210]; TZQuery.?f210:IZCachedResultSet
 0056F737    mov        edx,dword ptr [eax]
 0056F739    call       dword ptr [edx+210]
 0056F73F    mov        al,byte ptr [ebx+9D]; TZQuery.FState:TDataSetState
 0056F745    test       al,al
>0056F747    je         0056F750
 0056F749    mov        eax,ebx
 0056F74B    call       00571D44
 0056F750    pop        ebx
 0056F751    pop        ebp
 0056F752    ret
*}
//end;

//0056F754
//function sub_0056F754(?:?):?;
//begin
{*
 0056F754    push       ebp
 0056F755    mov        ebp,esp
 0056F757    mov        ecx,11
 0056F75C    push       0
 0056F75E    push       0
 0056F760    dec        ecx
<0056F761    jne        0056F75C
 0056F763    push       ecx
 0056F764    push       ebx
 0056F765    push       esi
 0056F766    push       edi
 0056F767    xor        eax,eax
 0056F769    push       ebp
 0056F76A    push       56F989
 0056F76F    push       dword ptr fs:[eax]
 0056F772    mov        dword ptr fs:[eax],esp
 0056F775    lea        ecx,[ebp-34]
 0056F778    mov        eax,dword ptr [ebp+8]
 0056F77B    mov        eax,dword ptr [eax-4]
 0056F77E    mov        eax,dword ptr [eax+1BC]
 0056F784    mov        edx,56F9A4; 'KeyFields'
 0056F789    call       TStrings.GetValue
 0056F78E    cmp        dword ptr [ebp-34],0
>0056F792    je         0056F7AF
 0056F794    lea        ecx,[ebp-4]
 0056F797    mov        eax,dword ptr [ebp+8]
 0056F79A    mov        eax,dword ptr [eax-4]
 0056F79D    mov        eax,dword ptr [eax+1BC]
 0056F7A3    mov        edx,56F9A4; 'KeyFields'
 0056F7A8    call       TStrings.GetValue
>0056F7AD    jmp        0056F7C0
 0056F7AF    lea        edx,[ebp-4]
 0056F7B2    mov        eax,dword ptr [ebp+8]
 0056F7B5    mov        eax,dword ptr [eax-4]
 0056F7B8    mov        eax,dword ptr [eax+30]
 0056F7BB    call       0056B258
 0056F7C0    lea        eax,[ebp-8]
 0056F7C3    push       eax
 0056F7C4    lea        ecx,[ebp-9]
 0056F7C7    mov        eax,dword ptr [ebp+8]
 0056F7CA    mov        eax,dword ptr [eax-4]
 0056F7CD    mov        edx,dword ptr [ebp-4]
 0056F7D0    call       00569A08
 0056F7D5    lea        eax,[ebp-20]
 0056F7D8    push       eax
 0056F7D9    xor        eax,eax
 0056F7DB    mov        dword ptr [ebp-3C],eax
 0056F7DE    mov        eax,dword ptr [ebp-8]
 0056F7E1    call       @DynArrayLength
 0056F7E6    sub        eax,1
>0056F7E9    jno        0056F7F0
 0056F7EB    call       @IntOver
 0056F7F0    mov        dword ptr [ebp-38],eax
 0056F7F3    lea        eax,[ebp-3C]
 0056F7F6    mov        cx,0C
 0056F7FA    mov        edx,1
 0056F7FF    call       VarArrayCreate
 0056F804    mov        eax,dword ptr [ebp-8]
 0056F807    call       @DynArrayLength
 0056F80C    mov        edi,eax
 0056F80E    sub        edi,1
>0056F811    jno        0056F818
 0056F813    call       @IntOver
 0056F818    test       edi,edi
>0056F81A    jl         0056F8E2
 0056F820    inc        edi
 0056F821    xor        esi,esi
 0056F823    mov        eax,dword ptr [ebp-8]
 0056F826    test       eax,eax
>0056F828    je         0056F82F
 0056F82A    cmp        esi,dword ptr [eax-4]
>0056F82D    jb         0056F834
 0056F82F    call       @BoundErr
 0056F834    mov        eax,dword ptr [eax+esi*4]
 0056F837    mov        edx,dword ptr [eax+38]
 0056F83A    mov        eax,dword ptr [ebp+8]
 0056F83D    mov        eax,dword ptr [eax-8]
 0056F840    call       TDataSet.FieldByName
 0056F845    mov        ebx,eax
 0056F847    test       ebx,ebx
>0056F849    je         0056F8B9
 0056F84B    cmp        byte ptr [ebx+40],19; TField.FDataType:TFieldType
>0056F84F    jne        0056F89A
 0056F851    lea        edx,[ebp-4C]
 0056F854    mov        eax,ebx
 0056F856    call       TField.GetOldValue
 0056F85B    lea        eax,[ebp-4C]
 0056F85E    call       VarIsNull
 0056F863    test       al,al
>0056F865    jne        0056F89A
 0056F867    push       esi
 0056F868    push       1
 0056F86A    lea        edx,[ebp-6C]
 0056F86D    mov        eax,ebx
 0056F86F    call       TField.GetOldValue
 0056F874    lea        eax,[ebp-6C]
 0056F877    call       @VarToInteger
 0056F87C    mov        edx,eax
 0056F87E    lea        eax,[ebp-5C]
 0056F881    mov        cl,0FC
 0056F883    call       @VarFromInt
 0056F888    lea        eax,[ebp-5C]
 0056F88B    push       eax
 0056F88C    lea        eax,[ebp-20]
 0056F88F    push       eax
 0056F890    call       @VarArrayPut
 0056F895    add        esp,10
>0056F898    jmp        0056F8DA
 0056F89A    push       esi
 0056F89B    push       1
 0056F89D    lea        edx,[ebp-7C]
 0056F8A0    mov        eax,ebx
 0056F8A2    call       TField.GetOldValue
 0056F8A7    lea        eax,[ebp-7C]
 0056F8AA    push       eax
 0056F8AB    lea        eax,[ebp-20]
 0056F8AE    push       eax
 0056F8AF    call       @VarArrayPut
 0056F8B4    add        esp,10
>0056F8B7    jmp        0056F8DA
 0056F8B9    push       esi
 0056F8BA    push       1
 0056F8BC    lea        eax,[ebp-8C]
 0056F8C2    call       Null
 0056F8C7    lea        eax,[ebp-8C]
 0056F8CD    push       eax
 0056F8CE    lea        eax,[ebp-20]
 0056F8D1    push       eax
 0056F8D2    call       @VarArrayPut
 0056F8D7    add        esp,10
 0056F8DA    inc        esi
 0056F8DB    dec        edi
<0056F8DC    jne        0056F823
 0056F8E2    mov        eax,dword ptr [ebp-8]
 0056F8E5    call       @DynArrayLength
 0056F8EA    dec        eax
>0056F8EB    jne        0056F903
 0056F8ED    push       0
 0056F8EF    push       1
 0056F8F1    lea        eax,[ebp-20]
 0056F8F4    push       eax
 0056F8F5    lea        eax,[ebp-30]
 0056F8F8    push       eax
 0056F8F9    call       @VarArrayGet
 0056F8FE    add        esp,10
>0056F901    jmp        0056F90E
 0056F903    lea        eax,[ebp-30]
 0056F906    lea        edx,[ebp-20]
 0056F909    call       @VarCopy
 0056F90E    cmp        dword ptr [ebp-4],0
>0056F912    je         0056F932
 0056F914    mov        al,[0056F9B0]; 0x0
 0056F919    push       eax
 0056F91A    lea        ecx,[ebp-30]
 0056F91D    mov        eax,dword ptr [ebp+8]
 0056F920    mov        eax,dword ptr [eax-4]
 0056F923    mov        edx,dword ptr [ebp-4]
 0056F926    mov        ebx,dword ptr [eax]
 0056F928    call       dword ptr [ebx+244]
 0056F92E    mov        ebx,eax
>0056F930    jmp        0056F934
 0056F932    xor        ebx,ebx
 0056F934    xor        eax,eax
 0056F936    pop        edx
 0056F937    pop        ecx
 0056F938    pop        ecx
 0056F939    mov        dword ptr fs:[eax],edx
 0056F93C    push       56F990
 0056F941    lea        eax,[ebp-8C]
 0056F947    mov        edx,dword ptr ds:[401114]; Variant
 0056F94D    mov        ecx,5
 0056F952    call       @FinalizeArray
 0056F957    lea        eax,[ebp-34]
 0056F95A    call       @LStrClr
 0056F95F    lea        eax,[ebp-30]
 0056F962    mov        edx,dword ptr ds:[401114]; Variant
 0056F968    mov        ecx,2
 0056F96D    call       @FinalizeArray
 0056F972    lea        eax,[ebp-8]
 0056F975    mov        edx,dword ptr ds:[4BC80C]; TObjectDynArray
 0056F97B    call       @DynArrayClear
 0056F980    lea        eax,[ebp-4]
 0056F983    call       @LStrClr
 0056F988    ret
<0056F989    jmp        @HandleFinally
<0056F98E    jmp        0056F941
 0056F990    mov        eax,ebx
 0056F992    pop        edi
 0056F993    pop        esi
 0056F994    pop        ebx
 0056F995    mov        esp,ebp
 0056F997    pop        ebp
 0056F998    ret
*}
//end;

//0056F9B4
//procedure sub_0056F9B4(?:TDataSet; ?:TZAbstractDataset);
//begin
{*
 0056F9B4    push       ebp
 0056F9B5    mov        ebp,esp
 0056F9B7    mov        ecx,9
 0056F9BC    push       0
 0056F9BE    push       0
 0056F9C0    dec        ecx
<0056F9C1    jne        0056F9BC
 0056F9C3    push       ebx
 0056F9C4    push       esi
 0056F9C5    push       edi
 0056F9C6    mov        dword ptr [ebp-8],edx
 0056F9C9    mov        dword ptr [ebp-4],eax
 0056F9CC    xor        eax,eax
 0056F9CE    push       ebp
 0056F9CF    push       56FB92
 0056F9D4    push       dword ptr fs:[eax]
 0056F9D7    mov        dword ptr fs:[eax],esp
 0056F9DA    mov        eax,dword ptr [ebp-8]
 0056F9DD    call       TDataSet.GetFieldCount
 0056F9E2    sub        eax,1
>0056F9E5    jno        0056F9EC
 0056F9E7    call       @IntOver
 0056F9EC    test       eax,eax
>0056F9EE    jl         0056FB71
 0056F9F4    inc        eax
 0056F9F5    mov        dword ptr [ebp-18],eax
 0056F9F8    mov        dword ptr [ebp-0C],0
 0056F9FF    mov        eax,dword ptr [ebp-8]
 0056FA02    mov        eax,dword ptr [eax+30]; TZAbstractDataset.FFields:TFields
 0056FA05    mov        edx,dword ptr [ebp-0C]
 0056FA08    call       TFields.GetField
 0056FA0D    mov        edi,eax
 0056FA0F    mov        edx,dword ptr [edi+38]; TField.?f38:String
 0056FA12    mov        eax,dword ptr [ebp-4]
 0056FA15    call       TDataSet.FieldByName
 0056FA1A    mov        esi,eax
 0056FA1C    test       esi,esi
>0056FA1E    je         0056FB65
 0056FA24    lea        edx,[ebp-28]
 0056FA27    mov        eax,esi
 0056FA29    call       TField.GetNewValue
 0056FA2E    lea        eax,[ebp-28]
 0056FA31    call       VarIsEmpty
 0056FA36    test       al,al
>0056FA38    jne        0056FB65
 0056FA3E    mov        eax,esi
 0056FA40    mov        edx,dword ptr [eax]
 0056FA42    call       dword ptr [edx+84]; TField.GetIsNull
 0056FA48    test       al,al
>0056FA4A    je         0056FA5B
 0056FA4C    mov        eax,edi
 0056FA4E    mov        edx,dword ptr [eax]
 0056FA50    call       dword ptr [edx+0D0]; TField.Clear
>0056FA56    jmp        0056FB65
 0056FA5B    mov        al,byte ptr [edi+40]; TField.FDataType:TFieldType
 0056FA5E    add        al,0F1
 0056FA60    sub        al,2
>0056FA62    jb         0056FA9F
 0056FA64    sub        al,8
>0056FA66    jne        0056FB4E
 0056FA6C    cmp        byte ptr [esi+40],19; TField.FDataType:TFieldType
>0056FA70    jne        0056FA87
 0056FA72    mov        eax,esi
 0056FA74    call       TLargeintField.GetAsLargeint
 0056FA79    push       edx
 0056FA7A    push       eax
 0056FA7B    mov        eax,edi
 0056FA7D    call       TLargeintField.SetAsLargeint
>0056FA82    jmp        0056FB65
 0056FA87    mov        eax,esi
 0056FA89    mov        edx,dword ptr [eax]
 0056FA8B    call       dword ptr [edx+58]; TField.GetAsInteger
 0056FA8E    mov        edx,eax
 0056FA90    mov        eax,edi
 0056FA92    mov        ecx,dword ptr [eax]
 0056FA94    call       dword ptr [ecx+0A8]; TField.SetAsInteger
>0056FA9A    jmp        0056FB65
 0056FA9F    mov        al,byte ptr [esi+40]; TField.FDataType:TFieldType
 0056FAA2    add        al,0F1
 0056FAA4    sub        al,2
>0056FAA6    jae        0056FB35
 0056FAAC    xor        ecx,ecx
 0056FAAE    mov        edx,esi
 0056FAB0    mov        eax,dword ptr [ebp-4]
 0056FAB3    mov        ebx,dword ptr [eax]
 0056FAB5    call       dword ptr [ebx+214]; TDataSet.CreateBlobStream
 0056FABB    mov        dword ptr [ebp-10],eax
 0056FABE    xor        eax,eax
 0056FAC0    push       ebp
 0056FAC1    push       56FB2E
 0056FAC6    push       dword ptr fs:[eax]
 0056FAC9    mov        dword ptr fs:[eax],esp
 0056FACC    mov        cl,1
 0056FACE    mov        edx,edi
 0056FAD0    mov        eax,dword ptr [ebp-8]
 0056FAD3    mov        ebx,dword ptr [eax]
 0056FAD5    call       dword ptr [ebx+214]; TZAbstractRODataset.CreateBlobStream
 0056FADB    mov        dword ptr [ebp-14],eax
 0056FADE    xor        eax,eax
 0056FAE0    push       ebp
 0056FAE1    push       56FB11
 0056FAE6    push       dword ptr fs:[eax]
 0056FAE9    mov        dword ptr fs:[eax],esp
 0056FAEC    push       0
 0056FAEE    push       0
 0056FAF0    mov        edx,dword ptr [ebp-10]
 0056FAF3    mov        eax,dword ptr [ebp-14]
 0056FAF6    call       TStream.CopyFrom
 0056FAFB    xor        eax,eax
 0056FAFD    pop        edx
 0056FAFE    pop        ecx
 0056FAFF    pop        ecx
 0056FB00    mov        dword ptr fs:[eax],edx
 0056FB03    push       56FB18
 0056FB08    mov        eax,dword ptr [ebp-14]
 0056FB0B    call       TObject.Free
 0056FB10    ret
<0056FB11    jmp        @HandleFinally
<0056FB16    jmp        0056FB08
 0056FB18    xor        eax,eax
 0056FB1A    pop        edx
 0056FB1B    pop        ecx
 0056FB1C    pop        ecx
 0056FB1D    mov        dword ptr fs:[eax],edx
 0056FB20    push       56FB65
 0056FB25    mov        eax,dword ptr [ebp-10]
 0056FB28    call       TObject.Free
 0056FB2D    ret
<0056FB2E    jmp        @HandleFinally
<0056FB33    jmp        0056FB25
 0056FB35    lea        edx,[ebp-38]
 0056FB38    mov        eax,esi
 0056FB3A    mov        ecx,dword ptr [eax]
 0056FB3C    call       dword ptr [ecx+64]; TField.GetAsVariant
 0056FB3F    lea        edx,[ebp-38]
 0056FB42    mov        eax,edi
 0056FB44    mov        ecx,dword ptr [eax]
 0056FB46    call       dword ptr [ecx+0B4]; TField.SetAsVariant
>0056FB4C    jmp        0056FB65
 0056FB4E    lea        edx,[ebp-48]
 0056FB51    mov        eax,esi
 0056FB53    mov        ecx,dword ptr [eax]
 0056FB55    call       dword ptr [ecx+64]; TField.GetAsVariant
 0056FB58    lea        edx,[ebp-48]
 0056FB5B    mov        eax,edi
 0056FB5D    mov        ecx,dword ptr [eax]
 0056FB5F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 0056FB65    inc        dword ptr [ebp-0C]
 0056FB68    dec        dword ptr [ebp-18]
<0056FB6B    jne        0056F9FF
 0056FB71    xor        eax,eax
 0056FB73    pop        edx
 0056FB74    pop        ecx
 0056FB75    pop        ecx
 0056FB76    mov        dword ptr fs:[eax],edx
 0056FB79    push       56FB99
 0056FB7E    lea        eax,[ebp-48]
 0056FB81    mov        edx,dword ptr ds:[401114]; Variant
 0056FB87    mov        ecx,3
 0056FB8C    call       @FinalizeArray
 0056FB91    ret
<0056FB92    jmp        @HandleFinally
<0056FB97    jmp        0056FB7E
 0056FB99    pop        edi
 0056FB9A    pop        esi
 0056FB9B    pop        ebx
 0056FB9C    mov        esp,ebp
 0056FB9E    pop        ebp
 0056FB9F    ret
*}
//end;

//0056FBA0
//function TZAbstractDataset.PSUpdateRecord(UpdateKind:TUpdateKind; Delta:TDataSet):?;
//begin
{*
 0056FBA0    push       ebp
 0056FBA1    mov        ebp,esp
 0056FBA3    add        esp,0FFFFFFEC
 0056FBA6    push       ebx
 0056FBA7    push       esi
 0056FBA8    push       edi
 0056FBA9    mov        dword ptr [ebp-8],ecx
 0056FBAC    mov        ebx,edx
 0056FBAE    mov        dword ptr [ebp-4],eax
 0056FBB1    mov        byte ptr [ebp-9],0
 0056FBB5    mov        eax,dword ptr [ebp-4]
 0056FBB8    call       TDataSet.GetActive
 0056FBBD    mov        byte ptr [ebp-11],al
 0056FBC0    mov        eax,dword ptr [ebp-4]
 0056FBC3    mov        al,byte ptr [eax+1A9]; TZAbstractDataset.?f1A9:byte
 0056FBC9    mov        byte ptr [ebp-12],al
 0056FBCC    test       al,al
>0056FBCE    jne        0056FBDA
 0056FBD0    mov        eax,dword ptr [ebp-4]
 0056FBD3    mov        byte ptr [eax+1A9],1; TZAbstractDataset.?f1A9:byte
 0056FBDA    mov        eax,dword ptr [ebp-4]
 0056FBDD    call       TDataSet.GetActive
 0056FBE2    test       al,al
>0056FBE4    jne        0056FBEE
 0056FBE6    mov        eax,dword ptr [ebp-4]
 0056FBE9    call       TDataSet.Open
 0056FBEE    mov        eax,dword ptr [ebp-4]
 0056FBF1    call       TDataSet.CheckBrowseMode
 0056FBF6    xor        eax,eax
 0056FBF8    push       ebp
 0056FBF9    push       56FD2A
 0056FBFE    push       dword ptr fs:[eax]
 0056FC01    mov        dword ptr fs:[eax],esp
 0056FC04    mov        eax,dword ptr [ebp-4]
 0056FC07    call       TDataSet.DisableControls
 0056FC0C    mov        eax,dword ptr [ebp-4]
 0056FC0F    mov        edx,dword ptr [eax]
 0056FC11    call       dword ptr [edx+21C]; TDataSet.GetBookmark
 0056FC17    mov        dword ptr [ebp-10],eax
 0056FC1A    xor        eax,eax
 0056FC1C    push       ebp
 0056FC1D    push       56FCA9
 0056FC22    push       dword ptr fs:[eax]
 0056FC25    mov        dword ptr fs:[eax],esp
 0056FC28    sub        bl,1
>0056FC2B    jb         0056FC35
>0056FC2D    je         0056FC64
 0056FC2F    dec        bl
>0056FC31    je         0056FC88
>0056FC33    jmp        0056FC9F
 0056FC35    push       ebp
 0056FC36    call       0056F754
 0056FC3B    pop        ecx
 0056FC3C    test       al,al
>0056FC3E    je         0056FC9F
 0056FC40    mov        eax,dword ptr [ebp-4]
 0056FC43    call       TDataSet.Edit
 0056FC48    mov        edx,dword ptr [ebp-4]
 0056FC4B    mov        eax,dword ptr [ebp-8]
 0056FC4E    call       0056F9B4
 0056FC53    mov        eax,dword ptr [ebp-4]
 0056FC56    mov        edx,dword ptr [eax]
 0056FC58    call       dword ptr [edx+24C]; TDataSet.Post
 0056FC5E    mov        byte ptr [ebp-9],1
>0056FC62    jmp        0056FC9F
 0056FC64    mov        eax,dword ptr [ebp-4]
 0056FC67    call       TDataSet.Append
 0056FC6C    mov        edx,dword ptr [ebp-4]
 0056FC6F    mov        eax,dword ptr [ebp-8]
 0056FC72    call       0056F9B4
 0056FC77    mov        eax,dword ptr [ebp-4]
 0056FC7A    mov        edx,dword ptr [eax]
 0056FC7C    call       dword ptr [edx+24C]; TDataSet.Post
 0056FC82    mov        byte ptr [ebp-9],1
>0056FC86    jmp        0056FC9F
 0056FC88    push       ebp
 0056FC89    call       0056F754
 0056FC8E    pop        ecx
 0056FC8F    test       al,al
>0056FC91    je         0056FC9F
 0056FC93    mov        eax,dword ptr [ebp-4]
 0056FC96    call       TDataSet.Delete
 0056FC9B    mov        byte ptr [ebp-9],1
 0056FC9F    xor        eax,eax
 0056FCA1    pop        edx
 0056FCA2    pop        ecx
 0056FCA3    pop        ecx
 0056FCA4    mov        dword ptr fs:[eax],edx
>0056FCA7    jmp        0056FCB7
<0056FCA9    jmp        @HandleAnyException
 0056FCAE    mov        byte ptr [ebp-9],0
 0056FCB2    call       @DoneExcept
 0056FCB7    xor        eax,eax
 0056FCB9    push       ebp
 0056FCBA    push       56FCDA
 0056FCBF    push       dword ptr fs:[eax]
 0056FCC2    mov        dword ptr fs:[eax],esp
 0056FCC5    mov        edx,dword ptr [ebp-10]
 0056FCC8    mov        eax,dword ptr [ebp-4]
 0056FCCB    call       TDataSet.GotoBookmark
 0056FCD0    xor        eax,eax
 0056FCD2    pop        edx
 0056FCD3    pop        ecx
 0056FCD4    pop        ecx
 0056FCD5    mov        dword ptr fs:[eax],edx
>0056FCD8    jmp        0056FCEC
<0056FCDA    jmp        @HandleAnyException
 0056FCDF    mov        eax,dword ptr [ebp-4]
 0056FCE2    call       TDataSet.First
 0056FCE7    call       @DoneExcept
 0056FCEC    mov        edx,dword ptr [ebp-10]
 0056FCEF    mov        eax,dword ptr [ebp-4]
 0056FCF2    mov        ecx,dword ptr [eax]
 0056FCF4    call       dword ptr [ecx+218]; TDataSet.FreeBookmark
 0056FCFA    xor        eax,eax
 0056FCFC    pop        edx
 0056FCFD    pop        ecx
 0056FCFE    pop        ecx
 0056FCFF    mov        dword ptr fs:[eax],edx
 0056FD02    push       56FD31
 0056FD07    mov        eax,dword ptr [ebp-4]
 0056FD0A    call       TDataSet.EnableControls
 0056FD0F    mov        eax,dword ptr [ebp-4]
 0056FD12    mov        dl,byte ptr [ebp-12]
 0056FD15    mov        byte ptr [eax+1A9],dl; TZAbstractDataset.?f1A9:byte
 0056FD1B    mov        dl,byte ptr [ebp-11]
 0056FD1E    mov        eax,dword ptr [ebp-4]
 0056FD21    mov        ecx,dword ptr [eax]
 0056FD23    call       dword ptr [ecx+178]; TDataSet.SetActive
 0056FD29    ret
<0056FD2A    jmp        @HandleFinally
<0056FD2F    jmp        0056FD07
 0056FD31    mov        al,byte ptr [ebp-9]
 0056FD34    pop        edi
 0056FD35    pop        esi
 0056FD36    pop        ebx
 0056FD37    mov        esp,ebp
 0056FD39    pop        ebp
 0056FD3A    ret
*}
//end;

//0056FD3C
//procedure sub_0056FD3C(?:TZQuery);
//begin
{*
 0056FD3C    push       ebp
 0056FD3D    mov        ebp,esp
 0056FD3F    push       ebx
 0056FD40    cmp        word ptr [eax+23A],0; TZQuery.?f23A:word
>0056FD48    je         0056FD5A
 0056FD4A    mov        ebx,eax
 0056FD4C    mov        edx,eax
 0056FD4E    mov        eax,dword ptr [ebx+23C]; TZQuery.?f23C:dword
 0056FD54    call       dword ptr [ebx+238]; TZQuery.BeforeApplyUpdates
 0056FD5A    pop        ebx
 0056FD5B    pop        ebp
 0056FD5C    ret
*}
//end;

//0056FD60
//procedure sub_0056FD60(?:TZQuery);
//begin
{*
 0056FD60    push       ebp
 0056FD61    mov        ebp,esp
 0056FD63    push       ebx
 0056FD64    cmp        word ptr [eax+242],0; TZQuery.?f242:word
>0056FD6C    je         0056FD7E
 0056FD6E    mov        ebx,eax
 0056FD70    mov        edx,eax
 0056FD72    mov        eax,dword ptr [ebx+244]; TZQuery.?f244:dword
 0056FD78    call       dword ptr [ebx+240]; TZQuery.AfterApplyUpdates
 0056FD7E    pop        ebx
 0056FD7F    pop        ebp
 0056FD80    ret
*}
//end;

end.