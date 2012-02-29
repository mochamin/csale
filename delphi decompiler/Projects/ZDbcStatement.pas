{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcStatement;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs, ZVariant, Types;

type
  TZSQLTypeArray = array of ?;
  TZAbstractStatement = class(TInterfacedObject)
  public
    fC:dword;//fC
    f10:dword;//f10
    f14:byte;//f14
    f18:dword;//f18
    f1C:Integer;//f1C
    f20:IZResultSet;//f20
    f24:byte;//f24
    f28:dword;//f28
    f2C:byte;//f2C
    f2D:byte;//f2D
    f30:String;//f30
    f34:dword;//f34
    f38:IZConnection;//f38
    f3C:dword;//f3C
    f40:byte;//f40
    destructor Destroy; virtual;
    //procedure sub_004DFE2C(?:?); virtual;
    //procedure sub_004DFE88(?:?; ?:?); virtual;
    //function sub_004DFEA4():?; virtual;
    procedure sub_004DFEB4; virtual;
    //function sub_004DFED8:?; virtual;
    //procedure sub_004DFEDC(?:?); virtual;
    //function sub_004DFEE0:?; virtual;
    //procedure sub_004DFEE4(?:?); virtual;
    //procedure sub_004DFEE8(?:?); virtual;
    //function sub_004DFEEC:?; virtual;
    //procedure sub_004DFEF0(?:?); virtual;
    procedure sub_004DFEF4(); virtual;
    //procedure sub_004DFF08(?:?); virtual;
    //function sub_004DFF20:?; virtual;
    //procedure sub_004DFF40(?:?); virtual;
    //function sub_004DFF58:?; virtual;
    //function sub_004DFF5C():?; virtual;
    //procedure sub_004DFF64(?:?); virtual;
    //function sub_004DFF60:?; virtual;
    //procedure sub_004DFF6C(?:?); virtual;
    //function sub_004DFF68:?; virtual;
    //procedure sub_004DFF70(?:?); virtual;
    //function sub_004DFF74:?; virtual;
    //procedure sub_004DFF78(?:?); virtual;
    //function sub_004DFF7C:?; virtual;
    procedure sub_004DFF90; virtual;
    procedure sub_004DFFA0; virtual;
    //procedure sub_004DFFB0(?:?); virtual;
    //function sub_004DFF00():?; virtual;
    procedure sub_004DFF04(); virtual;
  end;
  TZAbstractPreparedStatement = class(TZAbstractStatement)
  public
    f48:String;//f48
    f4C:TZVariantDynArray;//f4C
    f50:TZSQLTypeArray;//f50
    f54:TStringDynArray;//f54
    f58:dword;//f58
    destructor Destroy; virtual;
    //procedure sub_004E0150(?:?); virtual;
    //procedure sub_004E0220(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E0288(?:?); virtual;
    //function sub_004E02A4():?; virtual;
    //function sub_004E0C68():?; virtual;
    procedure sub_004E02FC; virtual;
    //procedure sub_004E0310(?:?; ?:?); virtual;
    //procedure sub_004E0388(?:?; ?:?); virtual;
    //procedure sub_004E0404(?:?; ?:?); virtual;
    //procedure sub_004E0480(?:?; ?:?); virtual;
    //procedure sub_004E04F8(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E0570(?:?; ?:?); virtual;
    //procedure sub_004E05EC(?:?; ?:?); virtual;
    //procedure sub_004E0668(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E06E4(?:?; ?:?); virtual;
    //procedure sub_004E0774(?:?; ?:?); virtual;
    //procedure sub_004E07EC(?:?; ?:?); virtual;
    //procedure sub_004E0864(?:?; ?:?); virtual;
    //procedure sub_004E08F4(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E096C(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E09E4(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E0A5C(?:?; ?:?); virtual;
    //procedure sub_004E0A94(?:?; ?:?); virtual;
    //procedure sub_004E0ACC(?:?; ?:?); virtual;
    //procedure sub_004E0B04(?:?; ?:?; ?:?); virtual;
    //procedure sub_004E0BC4(?:?; ?:?); virtual;
    procedure sub_004E0C1C; virtual;
    procedure sub_004E0C78(); virtual;
    //procedure sub_004E0C7C(?:?); virtual;
  end;
  TZAbstractCallableStatement = class(TZAbstractPreparedStatement)
  public
    f60:TZVariantDynArray;//f60
    f64:TZSQLTypeArray;//f64
    f68:dword;//f68
    f6C:byte;//f6C
    f70:String;//f70
    procedure sub_004E0DD8; virtual;
    //procedure sub_004E0D3C(?:?); virtual;
    //procedure sub_004E0E98(?:?; ?:?); virtual;
    //procedure sub_004E0E58(?:?; ?:?); virtual;
    //function sub_004E0F00:?; virtual;
    //function sub_004E0F04:?; virtual;
    //function sub_004E0F64(?:?):?; virtual;
    //procedure sub_004E0FC8(?:?; ?:?); virtual;
    //procedure sub_004E1040(?:?; ?:?); virtual;
    //function sub_004E10B8(?:?):?; virtual;
    //function sub_004E1128(?:?):?; virtual;
    //function sub_004E1198(?:?):?; virtual;
    //function sub_004E1208(?:?):?; virtual;
    //procedure sub_004E1278(?:?); virtual;
    //procedure sub_004E12F0(?:?); virtual;
    //procedure sub_004E1364(?:?); virtual;
    //procedure sub_004E13D8(?:?); virtual;
    //procedure sub_004E144C(?:?; ?:?); virtual;
    //procedure sub_004E14D4(?:?); virtual;
    //procedure sub_004E1548(?:?); virtual;
    //procedure sub_004E15BC(?:?); virtual;
    //procedure sub_004E1630(?:?; ?:?); virtual;
  end;
  TZEmulatedPreparedStatement = class(TZAbstractPreparedStatement)
  public
    f60:IZStatement;//f60
    f64:TStringList;//f64
    f68:IZStatement;//f68
    destructor Destroy; virtual;
    //procedure sub_004E1B44(?:?; ?:?); virtual;
    //function sub_004E1BA0(?:?):?; virtual;
    procedure sub_004E1A8C; virtual;
    //function sub_004E1AB4(?:?):?; virtual;
    //procedure sub_004E1C4C(?:?); virtual;
    //function sub_004E1CA0:?; virtual;
    //function sub_004E1BF8:?; virtual;
    procedure @AbstractError(); virtual;
    procedure @AbstractError(); virtual;
    //procedure sub_004E1994(?:?); virtual;
  end;

implementation

{$R *.DFM}

//004DFC94
//constructor sub_004DFC94(?:?; _Dv__:Boolean; ?:?);
//begin
{*
 004DFC94    push       ebp
 004DFC95    mov        ebp,esp
 004DFC97    add        esp,0FFFFFFF8
 004DFC9A    push       ebx
 004DFC9B    push       esi
 004DFC9C    push       edi
 004DFC9D    test       dl,dl
>004DFC9F    je         004DFCA9
 004DFCA1    add        esp,0FFFFFFF0
 004DFCA4    call       @ClassCreate
 004DFCA9    mov        dword ptr [ebp-8],ecx
 004DFCAC    mov        byte ptr [ebp-1],dl
 004DFCAF    mov        ebx,eax
 004DFCB1    mov        esi,dword ptr [ebp+8]
 004DFCB4    mov        eax,dword ptr [ebp-8]
 004DFCB7    call       @IntfAddRef
 004DFCBC    xor        eax,eax
 004DFCBE    push       ebp
 004DFCBF    push       4DFD53
 004DFCC4    push       dword ptr fs:[eax]
 004DFCC7    mov        dword ptr fs:[eax],esp
 004DFCCA    xor        eax,eax
 004DFCCC    mov        dword ptr [ebx+0C],eax
 004DFCCF    xor        eax,eax
 004DFCD1    mov        dword ptr [ebx+10],eax
 004DFCD4    mov        byte ptr [ebx+14],0
 004DFCD8    xor        eax,eax
 004DFCDA    mov        dword ptr [ebx+18],eax
 004DFCDD    mov        dword ptr [ebx+1C],0FFFFFFFF
 004DFCE4    lea        eax,[ebx+20]
 004DFCE7    call       @IntfClear
 004DFCEC    mov        byte ptr [ebx+24],0
 004DFCF0    xor        eax,eax
 004DFCF2    mov        dword ptr [ebx+28],eax
 004DFCF5    mov        byte ptr [ebx+2C],0
 004DFCF9    mov        byte ptr [ebx+2D],0
 004DFCFD    lea        eax,[ebx+30]
 004DFD00    call       @LStrClr
 004DFD05    lea        eax,[ebx+38]
 004DFD08    mov        edx,dword ptr [ebp-8]
 004DFD0B    call       @IntfCopy
 004DFD10    mov        dl,1
 004DFD12    mov        eax,[0041C8E4]; TStringList
 004DFD17    call       TObject.Create; TStringList.Create
 004DFD1C    mov        dword ptr [ebx+34],eax
 004DFD1F    mov        dl,1
 004DFD21    mov        eax,[0041C8E4]; TStringList
 004DFD26    call       TObject.Create; TStringList.Create
 004DFD2B    mov        edi,eax
 004DFD2D    mov        dword ptr [ebx+3C],edi
 004DFD30    test       esi,esi
>004DFD32    je         004DFD3D
 004DFD34    mov        eax,edi
 004DFD36    mov        edx,esi
 004DFD38    mov        ecx,dword ptr [eax]
 004DFD3A    call       dword ptr [ecx+40]; TStrings.AddStrings
 004DFD3D    xor        eax,eax
 004DFD3F    pop        edx
 004DFD40    pop        ecx
 004DFD41    pop        ecx
 004DFD42    mov        dword ptr fs:[eax],edx
 004DFD45    push       4DFD5A
 004DFD4A    lea        eax,[ebp-8]
 004DFD4D    call       @IntfClear
 004DFD52    ret
<004DFD53    jmp        @HandleFinally
<004DFD58    jmp        004DFD4A
 004DFD5A    mov        eax,ebx
 004DFD5C    cmp        byte ptr [ebp-1],0
>004DFD60    je         004DFD71
 004DFD62    call       @AfterConstruction
 004DFD67    pop        dword ptr fs:[0]
 004DFD6E    add        esp,0C
 004DFD71    mov        eax,ebx
 004DFD73    pop        edi
 004DFD74    pop        esi
 004DFD75    pop        ebx
 004DFD76    pop        ecx
 004DFD77    pop        ecx
 004DFD78    pop        ebp
 004DFD79    ret        4
*}
//end;

//004DFD7C
destructor TZAbstractStatement.Destroy;
begin
{*
 004DFD7C    push       ebp
 004DFD7D    mov        ebp,esp
 004DFD7F    push       ebx
 004DFD80    push       esi
 004DFD81    call       @BeforeDestruction
 004DFD86    mov        ebx,edx
 004DFD88    mov        esi,eax
 004DFD8A    mov        eax,esi
 004DFD8C    mov        edx,dword ptr [eax]
 004DFD8E    call       dword ptr [edx+0C]; TZAbstractStatement.sub_004DFEB4
 004DFD91    mov        eax,dword ptr [esi+34]; TZAbstractStatement.?f34:dword
 004DFD94    test       eax,eax
>004DFD96    je         004DFD9D
 004DFD98    call       TObject.Free
 004DFD9D    xor        eax,eax
 004DFD9F    mov        dword ptr [esi+34],eax; TZAbstractStatement.?f34:dword
 004DFDA2    lea        eax,[esi+38]; TZAbstractStatement.?f38:IZConnection
 004DFDA5    call       @IntfClear
 004DFDAA    mov        eax,dword ptr [esi+3C]; TZAbstractStatement.?f3C:dword
 004DFDAD    call       TObject.Free
 004DFDB2    lea        eax,[esi+20]; TZAbstractStatement.?f20:IZResultSet
 004DFDB5    call       @IntfClear
 004DFDBA    mov        edx,ebx
 004DFDBC    and        dl,0FC
 004DFDBF    mov        eax,esi
 004DFDC1    call       TObject.Destroy
 004DFDC6    test       bl,bl
>004DFDC8    jle        004DFDD1
 004DFDCA    mov        eax,esi
 004DFDCC    call       @ClassDestroy
 004DFDD1    pop        esi
 004DFDD2    pop        ebx
 004DFDD3    pop        ebp
 004DFDD4    ret
*}
end;

//004DFDD8
procedure sub_004DFDD8;
begin
{*
 004DFDD8    push       ebp
 004DFDD9    mov        ebp,esp
 004DFDDB    push       0
 004DFDDD    xor        eax,eax
 004DFDDF    push       ebp
 004DFDE0    push       4DFE22
 004DFDE5    push       dword ptr fs:[eax]
 004DFDE8    mov        dword ptr fs:[eax],esp
 004DFDEB    lea        edx,[ebp-4]
 004DFDEE    mov        eax,[0061B75C]; ^#122.sResString20:TResStringRec
 004DFDF3    call       LoadResString
 004DFDF8    mov        ecx,dword ptr [ebp-4]
 004DFDFB    mov        dl,1
 004DFDFD    mov        eax,[004C6D20]; EZSQLException
 004DFE02    call       EZSQLException.Create; EZSQLException.Create
 004DFE07    call       @RaiseExcept
 004DFE0C    xor        eax,eax
 004DFE0E    pop        edx
 004DFE0F    pop        ecx
 004DFE10    pop        ecx
 004DFE11    mov        dword ptr fs:[eax],edx
 004DFE14    push       4DFE29
 004DFE19    lea        eax,[ebp-4]
 004DFE1C    call       @LStrClr
 004DFE21    ret
<004DFE22    jmp        @HandleFinally
<004DFE27    jmp        004DFE19
 004DFE29    pop        ecx
 004DFE2A    pop        ebp
 004DFE2B    ret
*}
end;

//004DFE2C
//procedure sub_004DFE2C(?:?);
//begin
{*
 004DFE2C    push       ebp
 004DFE2D    mov        ebp,esp
 004DFE2F    push       ecx
 004DFE30    push       ebx
 004DFE31    mov        dword ptr [ebp-4],edx
 004DFE34    mov        ebx,eax
 004DFE36    mov        eax,dword ptr [ebp-4]
 004DFE39    call       @IntfAddRef
 004DFE3E    xor        eax,eax
 004DFE40    push       ebp
 004DFE41    push       4DFE7B
 004DFE46    push       dword ptr fs:[eax]
 004DFE49    mov        dword ptr fs:[eax],esp
 004DFE4C    cmp        dword ptr [ebx+20],0; TZASACallableStatement.?f20:IZResultSet
>004DFE50    je         004DFE5A
 004DFE52    mov        eax,dword ptr [ebx+20]; TZASACallableStatement.?f20:IZResultSet
 004DFE55    mov        edx,dword ptr [eax]
 004DFE57    call       dword ptr [edx+10]
 004DFE5A    lea        eax,[ebx+20]; TZASACallableStatement.?f20:IZResultSet
 004DFE5D    mov        edx,dword ptr [ebp-4]
 004DFE60    call       @IntfCopy
 004DFE65    xor        eax,eax
 004DFE67    pop        edx
 004DFE68    pop        ecx
 004DFE69    pop        ecx
 004DFE6A    mov        dword ptr fs:[eax],edx
 004DFE6D    push       4DFE82
 004DFE72    lea        eax,[ebp-4]
 004DFE75    call       @IntfClear
 004DFE7A    ret
<004DFE7B    jmp        @HandleFinally
<004DFE80    jmp        004DFE72
 004DFE82    pop        ebx
 004DFE83    pop        ecx
 004DFE84    pop        ebp
 004DFE85    ret
*}
//end;

//004DFE88
//procedure sub_004DFE88(?:?; ?:?);
//begin
{*
 004DFE88    push       ebp
 004DFE89    mov        ebp,esp
 004DFE8B    push       ebx
 004DFE8C    push       esi
 004DFE8D    mov        esi,ecx
 004DFE8F    mov        ebx,eax
 004DFE91    mov        eax,esi
 004DFE93    call       @IntfClear
 004DFE98    mov        eax,ebx
 004DFE9A    call       004DFDD8
 004DFE9F    pop        esi
 004DFEA0    pop        ebx
 004DFEA1    pop        ebp
 004DFEA2    ret
*}
//end;

//004DFEA4
//function sub_004DFEA4():?;
//begin
{*
 004DFEA4    push       ebp
 004DFEA5    mov        ebp,esp
 004DFEA7    push       ebx
 004DFEA8    xor        ebx,ebx
 004DFEAA    call       004DFDD8
 004DFEAF    mov        eax,ebx
 004DFEB1    pop        ebx
 004DFEB2    pop        ebp
 004DFEB3    ret
*}
//end;

//004DFEB4
procedure sub_004DFEB4;
begin
{*
 004DFEB4    push       ebp
 004DFEB5    mov        ebp,esp
 004DFEB7    push       ebx
 004DFEB8    mov        ebx,eax
 004DFEBA    cmp        dword ptr [ebx+20],0; TZAbstractStatement.?f20:IZResultSet
>004DFEBE    je         004DFED0
 004DFEC0    mov        eax,dword ptr [ebx+20]; TZAbstractStatement.?f20:IZResultSet
 004DFEC3    mov        edx,dword ptr [eax]
 004DFEC5    call       dword ptr [edx+10]
 004DFEC8    xor        edx,edx
 004DFECA    mov        eax,ebx
 004DFECC    mov        ecx,dword ptr [eax]
 004DFECE    call       dword ptr [ecx]; TZAbstractStatement.sub_004DFE2C
 004DFED0    mov        byte ptr [ebx+40],1; TZAbstractStatement.?f40:byte
 004DFED4    pop        ebx
 004DFED5    pop        ebp
 004DFED6    ret
*}
end;

//004DFED8
//function sub_004DFED8:?;
//begin
{*
 004DFED8    mov        eax,dword ptr [eax+0C]; TZASACallableStatement.?fC:dword
 004DFEDB    ret
*}
//end;

//004DFEDC
//procedure sub_004DFEDC(?:?);
//begin
{*
 004DFEDC    mov        dword ptr [eax+0C],edx; TZASACallableStatement.?fC:dword
 004DFEDF    ret
*}
//end;

//004DFEE0
//function sub_004DFEE0:?;
//begin
{*
 004DFEE0    mov        eax,dword ptr [eax+10]; TZASACallableStatement.?f10:dword
 004DFEE3    ret
*}
//end;

//004DFEE4
//procedure sub_004DFEE4(?:?);
//begin
{*
 004DFEE4    mov        dword ptr [eax+10],edx; TZASACallableStatement.?f10:dword
 004DFEE7    ret
*}
//end;

//004DFEE8
//procedure sub_004DFEE8(?:?);
//begin
{*
 004DFEE8    mov        byte ptr [eax+14],dl; TZASACallableStatement.?f14:byte
 004DFEEB    ret
*}
//end;

//004DFEEC
//function sub_004DFEEC:?;
//begin
{*
 004DFEEC    mov        eax,dword ptr [eax+18]; TZASACallableStatement.?f18:dword
 004DFEEF    ret
*}
//end;

//004DFEF0
//procedure sub_004DFEF0(?:?);
//begin
{*
 004DFEF0    mov        dword ptr [eax+18],edx; TZASACallableStatement.?f18:dword
 004DFEF3    ret
*}
//end;

//004DFEF4
procedure sub_004DFEF4();
begin
{*
 004DFEF4    push       ebp
 004DFEF5    mov        ebp,esp
 004DFEF7    call       004DFDD8
 004DFEFC    pop        ebp
 004DFEFD    ret
*}
end;

//004DFF00
//function sub_004DFF00():?;
//begin
{*
 004DFF00    xor        eax,eax
 004DFF02    ret
*}
//end;

//004DFF04
procedure sub_004DFF04();
begin
{*
 004DFF04    ret
*}
end;

//004DFF08
//procedure sub_004DFF08(?:?);
//begin
{*
 004DFF08    push       ebp
 004DFF09    mov        ebp,esp
 004DFF0B    push       ebx
 004DFF0C    push       esi
 004DFF0D    mov        esi,edx
 004DFF0F    mov        ebx,eax
 004DFF11    lea        eax,[ebx+30]; TZASACallableStatement.?f30:String
 004DFF14    mov        edx,esi
 004DFF16    call       @LStrAsg
 004DFF1B    pop        esi
 004DFF1C    pop        ebx
 004DFF1D    pop        ebp
 004DFF1E    ret
*}
//end;

//004DFF20
//function sub_004DFF20:?;
//begin
{*
 004DFF20    push       ebp
 004DFF21    mov        ebp,esp
 004DFF23    push       ebx
 004DFF24    push       esi
 004DFF25    mov        esi,eax
 004DFF27    xor        ebx,ebx
 004DFF29    xor        edx,edx
 004DFF2B    mov        eax,esi
 004DFF2D    mov        ecx,dword ptr [eax]
 004DFF2F    call       dword ptr [ecx]; TZDBLibCallableStatement.sub_004DFE2C
 004DFF31    mov        dword ptr [esi+1C],0FFFFFFFF; TZDBLibCallableStatement.?f1C:Integer
 004DFF38    mov        eax,ebx
 004DFF3A    pop        esi
 004DFF3B    pop        ebx
 004DFF3C    pop        ebp
 004DFF3D    ret
*}
//end;

//004DFF40
//procedure sub_004DFF40(?:?);
//begin
{*
 004DFF40    push       ebp
 004DFF41    mov        ebp,esp
 004DFF43    push       ebx
 004DFF44    push       esi
 004DFF45    mov        esi,edx
 004DFF47    mov        ebx,eax
 004DFF49    mov        eax,esi
 004DFF4B    mov        edx,dword ptr [ebx+20]; TZASACallableStatement.?f20:IZResultSet
 004DFF4E    call       @IntfCopy
 004DFF53    pop        esi
 004DFF54    pop        ebx
 004DFF55    pop        ebp
 004DFF56    ret
*}
//end;

//004DFF58
//function sub_004DFF58:?;
//begin
{*
 004DFF58    mov        eax,dword ptr [eax+1C]; TZASACallableStatement.?f1C:Integer
 004DFF5B    ret
*}
//end;

//004DFF5C
//function sub_004DFF5C():?;
//begin
{*
 004DFF5C    xor        eax,eax
 004DFF5E    ret
*}
//end;

//004DFF60
//function sub_004DFF60:?;
//begin
{*
 004DFF60    mov        al,byte ptr [eax+24]; TZASACallableStatement.?f24:byte
 004DFF63    ret
*}
//end;

//004DFF64
//procedure sub_004DFF64(?:?);
//begin
{*
 004DFF64    mov        byte ptr [eax+24],dl; TZASACallableStatement.?f24:byte
 004DFF67    ret
*}
//end;

//004DFF68
//function sub_004DFF68:?;
//begin
{*
 004DFF68    mov        eax,dword ptr [eax+28]; TZASACallableStatement.?f28:dword
 004DFF6B    ret
*}
//end;

//004DFF6C
//procedure sub_004DFF6C(?:?);
//begin
{*
 004DFF6C    mov        dword ptr [eax+28],edx; TZASACallableStatement.?f28:dword
 004DFF6F    ret
*}
//end;

//004DFF70
//procedure sub_004DFF70(?:?);
//begin
{*
 004DFF70    mov        byte ptr [eax+2C],dl; TZASACallableStatement.?f2C:byte
 004DFF73    ret
*}
//end;

//004DFF74
//function sub_004DFF74:?;
//begin
{*
 004DFF74    mov        al,byte ptr [eax+2C]; TZASACallableStatement.?f2C:byte
 004DFF77    ret
*}
//end;

//004DFF78
//procedure sub_004DFF78(?:?);
//begin
{*
 004DFF78    mov        byte ptr [eax+2D],dl; TZASACallableStatement.?f2D:byte
 004DFF7B    ret
*}
//end;

//004DFF7C
//function sub_004DFF7C:?;
//begin
{*
 004DFF7C    mov        al,byte ptr [eax+2D]; TZASACallableStatement.?f2D:byte
 004DFF7F    ret
*}
//end;

//004DFF90
procedure sub_004DFF90;
begin
{*
 004DFF90    push       ebp
 004DFF91    mov        ebp,esp
 004DFF93    mov        eax,dword ptr [eax+34]; TZASACallableStatement.?f34:dword
 004DFF96    mov        ecx,dword ptr [eax]
 004DFF98    call       dword ptr [ecx+38]
 004DFF9B    pop        ebp
 004DFF9C    ret
*}
end;

//004DFFA0
procedure sub_004DFFA0;
begin
{*
 004DFFA0    push       ebp
 004DFFA1    mov        ebp,esp
 004DFFA3    mov        eax,dword ptr [eax+34]; TZASACallableStatement.?f34:dword
 004DFFA6    mov        edx,dword ptr [eax]
 004DFFA8    call       dword ptr [edx+44]
 004DFFAB    pop        ebp
 004DFFAC    ret
*}
end;

//004DFFB0
//procedure sub_004DFFB0(?:?);
//begin
{*
 004DFFB0    push       ebp
 004DFFB1    mov        ebp,esp
 004DFFB3    add        esp,0FFFFFFF4
 004DFFB6    push       ebx
 004DFFB7    push       esi
 004DFFB8    push       edi
 004DFFB9    xor        ecx,ecx
 004DFFBB    mov        dword ptr [ebp-0C],ecx
 004DFFBE    mov        dword ptr [ebp-4],edx
 004DFFC1    mov        ebx,eax
 004DFFC3    xor        eax,eax
 004DFFC5    push       ebp
 004DFFC6    push       4E005C
 004DFFCB    push       dword ptr fs:[eax]
 004DFFCE    mov        dword ptr fs:[eax],esp
 004DFFD1    mov        eax,dword ptr [ebx+34]; TZASACallableStatement.?f34:dword
 004DFFD4    mov        edx,dword ptr [eax]
 004DFFD6    call       dword ptr [edx+14]
 004DFFD9    push       eax
 004DFFDA    mov        eax,dword ptr [ebp-4]
 004DFFDD    mov        ecx,1
 004DFFE2    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 004DFFE8    call       @DynArraySetLength
 004DFFED    add        esp,4
 004DFFF0    mov        eax,dword ptr [ebx+34]; TZASACallableStatement.?f34:dword
 004DFFF3    mov        edx,dword ptr [eax]
 004DFFF5    call       dword ptr [edx+14]
 004DFFF8    sub        eax,1
>004DFFFB    jno        004E0002
 004DFFFD    call       @IntOver
 004E0002    test       eax,eax
>004E0004    jl         004E003F
 004E0006    inc        eax
 004E0007    mov        dword ptr [ebp-8],eax
 004E000A    xor        esi,esi
 004E000C    lea        ecx,[ebp-0C]
 004E000F    mov        edx,esi
 004E0011    mov        eax,dword ptr [ebx+34]; TZASACallableStatement.?f34:dword
 004E0014    mov        edi,dword ptr [eax]
 004E0016    call       dword ptr [edi+0C]
 004E0019    mov        edx,dword ptr [ebp-0C]
 004E001C    mov        eax,ebx
 004E001E    mov        ecx,dword ptr [eax]
 004E0020    call       dword ptr [ecx+8]; TZASACallableStatement.sub_0055FDA4
 004E0023    mov        edx,dword ptr [ebp-4]
 004E0026    mov        edx,dword ptr [edx]
 004E0028    test       edx,edx
>004E002A    je         004E0031
 004E002C    cmp        esi,dword ptr [edx-4]
>004E002F    jb         004E0036
 004E0031    call       @BoundErr
 004E0036    mov        dword ptr [edx+esi*4],eax
 004E0039    inc        esi
 004E003A    dec        dword ptr [ebp-8]
<004E003D    jne        004E000C
 004E003F    mov        eax,ebx
 004E0041    mov        edx,dword ptr [eax]
 004E0043    call       dword ptr [edx+68]; TZASACallableStatement.sub_004DFFA0
 004E0046    xor        eax,eax
 004E0048    pop        edx
 004E0049    pop        ecx
 004E004A    pop        ecx
 004E004B    mov        dword ptr fs:[eax],edx
 004E004E    push       4E0063
 004E0053    lea        eax,[ebp-0C]
 004E0056    call       @LStrClr
 004E005B    ret
<004E005C    jmp        @HandleFinally
<004E0061    jmp        004E0053
 004E0063    pop        edi
 004E0064    pop        esi
 004E0065    pop        ebx
 004E0066    mov        esp,ebp
 004E0068    pop        ebp
 004E0069    ret
*}
//end;

//004E006C
//procedure sub_004E006C(?:TZPostgreSQLPreparedStatement; ?:?);
//begin
{*
 004E006C    push       ebp
 004E006D    mov        ebp,esp
 004E006F    push       ebx
 004E0070    push       esi
 004E0071    mov        esi,edx
 004E0073    mov        ebx,eax
 004E0075    mov        eax,esi
 004E0077    mov        edx,dword ptr [ebx+38]; TZPostgreSQLPreparedStatement.?f38:IZConnection
 004E007A    call       @IntfCopy
 004E007F    pop        esi
 004E0080    pop        ebx
 004E0081    pop        ebp
 004E0082    ret
*}
//end;

//004E0088
//constructor sub_004E0088(?:?; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004E0088    push       ebp
 004E0089    mov        ebp,esp
 004E008B    push       ecx
 004E008C    push       ebx
 004E008D    push       esi
 004E008E    test       dl,dl
>004E0090    je         004E009A
 004E0092    add        esp,0FFFFFFF0
 004E0095    call       @ClassCreate
 004E009A    mov        dword ptr [ebp-4],ecx
 004E009D    mov        ebx,edx
 004E009F    mov        esi,eax
 004E00A1    mov        eax,dword ptr [ebp-4]
 004E00A4    call       @IntfAddRef
 004E00A9    xor        eax,eax
 004E00AB    push       ebp
 004E00AC    push       4E00F6
 004E00B1    push       dword ptr fs:[eax]
 004E00B4    mov        dword ptr fs:[eax],esp
 004E00B7    mov        eax,dword ptr [ebp+8]
 004E00BA    push       eax
 004E00BB    mov        ecx,dword ptr [ebp-4]
 004E00BE    xor        edx,edx
 004E00C0    mov        eax,esi
 004E00C2    call       004DFC94
 004E00C7    lea        eax,[esi+48]
 004E00CA    mov        edx,dword ptr [ebp+0C]
 004E00CD    call       @LStrAsg
 004E00D2    xor        eax,eax
 004E00D4    mov        dword ptr [esi+58],eax
 004E00D7    xor        edx,edx
 004E00D9    mov        eax,esi
 004E00DB    mov        ecx,dword ptr [eax]
 004E00DD    call       dword ptr [ecx+78]
 004E00E0    xor        eax,eax
 004E00E2    pop        edx
 004E00E3    pop        ecx
 004E00E4    pop        ecx
 004E00E5    mov        dword ptr fs:[eax],edx
 004E00E8    push       4E00FD
 004E00ED    lea        eax,[ebp-4]
 004E00F0    call       @IntfClear
 004E00F5    ret
<004E00F6    jmp        @HandleFinally
<004E00FB    jmp        004E00ED
 004E00FD    mov        eax,esi
 004E00FF    test       bl,bl
>004E0101    je         004E0112
 004E0103    call       @AfterConstruction
 004E0108    pop        dword ptr fs:[0]
 004E010F    add        esp,0C
 004E0112    mov        eax,esi
 004E0114    pop        esi
 004E0115    pop        ebx
 004E0116    pop        ecx
 004E0117    pop        ebp
 004E0118    ret        8
*}
//end;

//004E011C
destructor TZAbstractPreparedStatement.Destroy;
begin
{*
 004E011C    push       ebp
 004E011D    mov        ebp,esp
 004E011F    push       ebx
 004E0120    push       esi
 004E0121    call       @BeforeDestruction
 004E0126    mov        ebx,edx
 004E0128    mov        esi,eax
 004E012A    mov        edx,ebx
 004E012C    and        dl,0FC
 004E012F    mov        eax,esi
 004E0131    call       TZAbstractStatement.Destroy
 004E0136    mov        eax,esi
 004E0138    mov        edx,dword ptr [eax]
 004E013A    call       dword ptr [edx+0E0]; TZAbstractPreparedStatement.sub_004E0C1C
 004E0140    test       bl,bl
>004E0142    jle        004E014B
 004E0144    mov        eax,esi
 004E0146    call       @ClassDestroy
 004E014B    pop        esi
 004E014C    pop        ebx
 004E014D    pop        ebp
 004E014E    ret
*}
end;

//004E0150
//procedure sub_004E0150(?:?);
//begin
{*
 004E0150    push       ebp
 004E0151    mov        ebp,esp
 004E0153    push       ecx
 004E0154    push       ebx
 004E0155    push       esi
 004E0156    push       edi
 004E0157    mov        dword ptr [ebp-4],edx
 004E015A    mov        ebx,eax
 004E015C    mov        eax,dword ptr [ebp-4]
 004E015F    push       eax
 004E0160    lea        eax,[ebx+4C]; TZAbstractCallableStatement.?f4C:TZVariantDynArray
 004E0163    mov        ecx,1
 004E0168    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 004E016E    call       @DynArraySetLength
 004E0173    add        esp,4
 004E0176    mov        eax,dword ptr [ebp-4]
 004E0179    push       eax
 004E017A    lea        eax,[ebx+50]; TZAbstractCallableStatement.?f50:TZSQLTypeArray
 004E017D    mov        ecx,1
 004E0182    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 004E0188    call       @DynArraySetLength
 004E018D    add        esp,4
 004E0190    mov        eax,dword ptr [ebp-4]
 004E0193    push       eax
 004E0194    lea        eax,[ebx+54]; TZAbstractCallableStatement.?f54:TStringDynArray
 004E0197    mov        ecx,1
 004E019C    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 004E01A2    call       @DynArraySetLength
 004E01A7    add        esp,4
 004E01AA    mov        esi,dword ptr [ebx+58]; TZAbstractCallableStatement.?f58:dword
 004E01AD    mov        edi,dword ptr [ebp-4]
 004E01B0    sub        edi,1
>004E01B3    jno        004E01BA
 004E01B5    call       @IntOver
 004E01BA    sub        edi,esi
>004E01BC    jl         004E0212
 004E01BE    inc        edi
 004E01BF    imul       eax,esi,0B
>004E01C2    jno        004E01C9
 004E01C4    call       @IntOver
 004E01C9    mov        edx,dword ptr [ebx+4C]; TZAbstractCallableStatement.?f4C:TZVariantDynArray
 004E01CC    lea        eax,[edx+eax*4]
 004E01CF    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E01D5    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E01DB    call       @CopyRecord
 004E01E0    mov        eax,dword ptr [ebx+50]; TZAbstractCallableStatement.?f50:TZSQLTypeArray
 004E01E3    test       eax,eax
>004E01E5    je         004E01EC
 004E01E7    cmp        esi,dword ptr [eax-4]
>004E01EA    jb         004E01F1
 004E01EC    call       @BoundErr
 004E01F1    mov        byte ptr [eax+esi],0
 004E01F5    mov        eax,dword ptr [ebx+54]; TZAbstractCallableStatement.?f54:TStringDynArray
 004E01F8    test       eax,eax
>004E01FA    je         004E0201
 004E01FC    cmp        esi,dword ptr [eax-4]
>004E01FF    jb         004E0206
 004E0201    call       @BoundErr
 004E0206    lea        eax,[eax+esi*4]
 004E0209    call       @LStrClr
 004E020E    inc        esi
 004E020F    dec        edi
<004E0210    jne        004E01BF
 004E0212    mov        eax,dword ptr [ebp-4]
 004E0215    mov        dword ptr [ebx+58],eax; TZAbstractCallableStatement.?f58:dword
 004E0218    pop        edi
 004E0219    pop        esi
 004E021A    pop        ebx
 004E021B    pop        ecx
 004E021C    pop        ebp
 004E021D    ret
*}
//end;

//004E0220
//procedure sub_004E0220(?:?; ?:?; ?:?);
//begin
{*
 004E0220    push       ebp
 004E0221    mov        ebp,esp
 004E0223    push       ecx
 004E0224    push       ebx
 004E0225    push       esi
 004E0226    push       edi
 004E0227    mov        byte ptr [ebp-1],cl
 004E022A    mov        esi,edx
 004E022C    mov        ebx,eax
 004E022E    cmp        esi,dword ptr [ebx+58]; TZASACallableStatement.?f58:dword
>004E0231    jl         004E023C
 004E0233    mov        edx,esi
 004E0235    mov        eax,ebx
 004E0237    mov        ecx,dword ptr [eax]
 004E0239    call       dword ptr [ecx+78]; TZASACallableStatement.sub_004E0150
 004E023C    mov        edi,esi
 004E023E    sub        edi,1
>004E0241    jno        004E0248
 004E0243    call       @IntOver
 004E0248    mov        eax,dword ptr [ebx+50]; TZASACallableStatement.?f50:TZSQLTypeArray
 004E024B    test       eax,eax
>004E024D    je         004E0254
 004E024F    cmp        edi,dword ptr [eax-4]
>004E0252    jb         004E0259
 004E0254    call       @BoundErr
 004E0259    mov        dl,byte ptr [ebp-1]
 004E025C    mov        byte ptr [eax+edi],dl
 004E025F    imul       eax,edi,0B
>004E0262    jno        004E0269
 004E0264    call       @IntOver
 004E0269    mov        edx,dword ptr [ebx+4C]; TZASACallableStatement.?f4C:TZVariantDynArray
 004E026C    lea        eax,[edx+eax*4]
 004E026F    mov        edx,dword ptr [ebp+8]
 004E0272    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E0278    call       @CopyRecord
 004E027D    pop        edi
 004E027E    pop        esi
 004E027F    pop        ebx
 004E0280    pop        ecx
 004E0281    pop        ebp
 004E0282    ret        4
*}
//end;

//004E0288
//procedure sub_004E0288(?:?);
//begin
{*
 004E0288    push       ebp
 004E0289    mov        ebp,esp
 004E028B    push       ebx
 004E028C    push       esi
 004E028D    mov        esi,edx
 004E028F    mov        ebx,eax
 004E0291    mov        eax,esi
 004E0293    call       @IntfClear
 004E0298    mov        eax,ebx
 004E029A    call       004DFDD8
 004E029F    pop        esi
 004E02A0    pop        ebx
 004E02A1    pop        ebp
 004E02A2    ret
*}
//end;

//004E02A4
//function sub_004E02A4():?;
//begin
{*
 004E02A4    push       ebp
 004E02A5    mov        ebp,esp
 004E02A7    push       ebx
 004E02A8    or         ebx,0FFFFFFFF
 004E02AB    call       004DFDD8
 004E02B0    mov        eax,ebx
 004E02B2    pop        ebx
 004E02B3    pop        ebp
 004E02B4    ret
*}
//end;

//004E02B8
//procedure sub_004E02B8(?:TZAbstractPreparedStatement; ?:?; ?:?);
//begin
{*
 004E02B8    push       ebp
 004E02B9    mov        ebp,esp
 004E02BB    push       ebx
 004E02BC    push       esi
 004E02BD    push       edi
 004E02BE    mov        edi,ecx
 004E02C0    mov        esi,edx
 004E02C2    mov        ebx,eax
 004E02C4    cmp        esi,dword ptr [ebx+58]; TZAbstractPreparedStatement.?f58:dword
>004E02C7    jl         004E02D2
 004E02C9    mov        edx,esi
 004E02CB    mov        eax,ebx
 004E02CD    mov        ecx,dword ptr [eax]
 004E02CF    call       dword ptr [ecx+78]; TZAbstractPreparedStatement.sub_004E0150
 004E02D2    sub        esi,1
>004E02D5    jno        004E02DC
 004E02D7    call       @IntOver
 004E02DC    mov        eax,dword ptr [ebx+54]; TZAbstractPreparedStatement.?f54:TStringDynArray
 004E02DF    test       eax,eax
>004E02E1    je         004E02E8
 004E02E3    cmp        esi,dword ptr [eax-4]
>004E02E6    jb         004E02ED
 004E02E8    call       @BoundErr
 004E02ED    lea        eax,[eax+esi*4]
 004E02F0    mov        edx,edi
 004E02F2    call       @LStrAsg
 004E02F7    pop        edi
 004E02F8    pop        esi
 004E02F9    pop        ebx
 004E02FA    pop        ebp
 004E02FB    ret
*}
//end;

//004E02FC
procedure sub_004E02FC;
begin
{*
 004E02FC    push       ebp
 004E02FD    mov        ebp,esp
 004E02FF    push       ebx
 004E0300    mov        ebx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E0306    push       ebx
 004E0307    mov        ebx,dword ptr [eax]
 004E0309    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E030C    pop        ebx
 004E030D    pop        ebp
 004E030E    ret
*}
end;

//004E0310
//procedure sub_004E0310(?:?; ?:?);
//begin
{*
 004E0310    push       ebp
 004E0311    mov        ebp,esp
 004E0313    add        esp,0FFFFFFD0
 004E0316    push       ebx
 004E0317    push       esi
 004E0318    push       edi
 004E0319    mov        byte ptr [ebp-1],cl
 004E031C    mov        esi,edx
 004E031E    mov        ebx,eax
 004E0320    lea        eax,[ebp-2D]
 004E0323    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0329    call       @InitializeRecord
 004E032E    xor        eax,eax
 004E0330    push       ebp
 004E0331    push       4E0379
 004E0336    push       dword ptr fs:[eax]
 004E0339    mov        dword ptr fs:[eax],esp
 004E033C    lea        edx,[ebp-2D]
 004E033F    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0344    mov        eax,dword ptr [eax]
 004E0346    mov        cl,byte ptr [ebp-1]
 004E0349    mov        edi,dword ptr [eax]
 004E034B    call       dword ptr [edi+44]
 004E034E    lea        eax,[ebp-2D]
 004E0351    push       eax
 004E0352    mov        cl,1
 004E0354    mov        edx,esi
 004E0356    mov        eax,ebx
 004E0358    mov        ebx,dword ptr [eax]
 004E035A    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E035D    xor        eax,eax
 004E035F    pop        edx
 004E0360    pop        ecx
 004E0361    pop        ecx
 004E0362    mov        dword ptr fs:[eax],edx
 004E0365    push       4E0380
 004E036A    lea        eax,[ebp-2D]
 004E036D    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0373    call       @FinalizeRecord
 004E0378    ret
<004E0379    jmp        @HandleFinally
<004E037E    jmp        004E036A
 004E0380    pop        edi
 004E0381    pop        esi
 004E0382    pop        ebx
 004E0383    mov        esp,ebp
 004E0385    pop        ebp
 004E0386    ret
*}
//end;

//004E0388
//procedure sub_004E0388(?:?; ?:?);
//begin
{*
 004E0388    push       ebp
 004E0389    mov        ebp,esp
 004E038B    add        esp,0FFFFFFD0
 004E038E    push       ebx
 004E038F    push       esi
 004E0390    mov        byte ptr [ebp-1],cl
 004E0393    mov        esi,edx
 004E0395    mov        ebx,eax
 004E0397    lea        eax,[ebp-2D]
 004E039A    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E03A0    call       @InitializeRecord
 004E03A5    xor        eax,eax
 004E03A7    push       ebp
 004E03A8    push       4E03F4
 004E03AD    push       dword ptr fs:[eax]
 004E03B0    mov        dword ptr fs:[eax],esp
 004E03B3    movsx      eax,byte ptr [ebp-1]
 004E03B7    cdq
 004E03B8    push       edx
 004E03B9    push       eax
 004E03BA    lea        edx,[ebp-2D]
 004E03BD    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E03C2    mov        eax,dword ptr [eax]
 004E03C4    mov        ecx,dword ptr [eax]
 004E03C6    call       dword ptr [ecx+48]
 004E03C9    lea        eax,[ebp-2D]
 004E03CC    push       eax
 004E03CD    mov        cl,2
 004E03CF    mov        edx,esi
 004E03D1    mov        eax,ebx
 004E03D3    mov        ebx,dword ptr [eax]
 004E03D5    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E03D8    xor        eax,eax
 004E03DA    pop        edx
 004E03DB    pop        ecx
 004E03DC    pop        ecx
 004E03DD    mov        dword ptr fs:[eax],edx
 004E03E0    push       4E03FB
 004E03E5    lea        eax,[ebp-2D]
 004E03E8    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E03EE    call       @FinalizeRecord
 004E03F3    ret
<004E03F4    jmp        @HandleFinally
<004E03F9    jmp        004E03E5
 004E03FB    pop        esi
 004E03FC    pop        ebx
 004E03FD    mov        esp,ebp
 004E03FF    pop        ebp
 004E0400    ret
*}
//end;

//004E0404
//procedure sub_004E0404(?:?; ?:?);
//begin
{*
 004E0404    push       ebp
 004E0405    mov        ebp,esp
 004E0407    add        esp,0FFFFFFD4
 004E040A    push       ebx
 004E040B    push       esi
 004E040C    push       edi
 004E040D    mov        edi,ecx
 004E040F    mov        esi,edx
 004E0411    mov        ebx,eax
 004E0413    lea        eax,[ebp-2C]
 004E0416    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E041C    call       @InitializeRecord
 004E0421    xor        eax,eax
 004E0423    push       ebp
 004E0424    push       4E046F
 004E0429    push       dword ptr fs:[eax]
 004E042C    mov        dword ptr fs:[eax],esp
 004E042F    movsx      eax,di
 004E0432    cdq
 004E0433    push       edx
 004E0434    push       eax
 004E0435    lea        edx,[ebp-2C]
 004E0438    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E043D    mov        eax,dword ptr [eax]
 004E043F    mov        ecx,dword ptr [eax]
 004E0441    call       dword ptr [ecx+48]
 004E0444    lea        eax,[ebp-2C]
 004E0447    push       eax
 004E0448    mov        cl,3
 004E044A    mov        edx,esi
 004E044C    mov        eax,ebx
 004E044E    mov        ebx,dword ptr [eax]
 004E0450    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0453    xor        eax,eax
 004E0455    pop        edx
 004E0456    pop        ecx
 004E0457    pop        ecx
 004E0458    mov        dword ptr fs:[eax],edx
 004E045B    push       4E0476
 004E0460    lea        eax,[ebp-2C]
 004E0463    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0469    call       @FinalizeRecord
 004E046E    ret
<004E046F    jmp        @HandleFinally
<004E0474    jmp        004E0460
 004E0476    pop        edi
 004E0477    pop        esi
 004E0478    pop        ebx
 004E0479    mov        esp,ebp
 004E047B    pop        ebp
 004E047C    ret
*}
//end;

//004E0480
//procedure sub_004E0480(?:?; ?:?);
//begin
{*
 004E0480    push       ebp
 004E0481    mov        ebp,esp
 004E0483    add        esp,0FFFFFFD4
 004E0486    push       ebx
 004E0487    push       esi
 004E0488    push       edi
 004E0489    mov        edi,ecx
 004E048B    mov        esi,edx
 004E048D    mov        ebx,eax
 004E048F    lea        eax,[ebp-2C]
 004E0492    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0498    call       @InitializeRecord
 004E049D    xor        eax,eax
 004E049F    push       ebp
 004E04A0    push       4E04EA
 004E04A5    push       dword ptr fs:[eax]
 004E04A8    mov        dword ptr fs:[eax],esp
 004E04AB    mov        eax,edi
 004E04AD    cdq
 004E04AE    push       edx
 004E04AF    push       eax
 004E04B0    lea        edx,[ebp-2C]
 004E04B3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E04B8    mov        eax,dword ptr [eax]
 004E04BA    mov        ecx,dword ptr [eax]
 004E04BC    call       dword ptr [ecx+48]
 004E04BF    lea        eax,[ebp-2C]
 004E04C2    push       eax
 004E04C3    mov        cl,4
 004E04C5    mov        edx,esi
 004E04C7    mov        eax,ebx
 004E04C9    mov        ebx,dword ptr [eax]
 004E04CB    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E04CE    xor        eax,eax
 004E04D0    pop        edx
 004E04D1    pop        ecx
 004E04D2    pop        ecx
 004E04D3    mov        dword ptr fs:[eax],edx
 004E04D6    push       4E04F1
 004E04DB    lea        eax,[ebp-2C]
 004E04DE    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E04E4    call       @FinalizeRecord
 004E04E9    ret
<004E04EA    jmp        @HandleFinally
<004E04EF    jmp        004E04DB
 004E04F1    pop        edi
 004E04F2    pop        esi
 004E04F3    pop        ebx
 004E04F4    mov        esp,ebp
 004E04F6    pop        ebp
 004E04F7    ret
*}
//end;

//004E04F8
//procedure sub_004E04F8(?:?; ?:?; ?:?);
//begin
{*
 004E04F8    push       ebp
 004E04F9    mov        ebp,esp
 004E04FB    add        esp,0FFFFFFD4
 004E04FE    push       ebx
 004E04FF    push       esi
 004E0500    mov        esi,edx
 004E0502    mov        ebx,eax
 004E0504    lea        eax,[ebp-2C]
 004E0507    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E050D    call       @InitializeRecord
 004E0512    xor        eax,eax
 004E0514    push       ebp
 004E0515    push       4E0560
 004E051A    push       dword ptr fs:[eax]
 004E051D    mov        dword ptr fs:[eax],esp
 004E0520    push       dword ptr [ebp+0C]
 004E0523    push       dword ptr [ebp+8]
 004E0526    lea        edx,[ebp-2C]
 004E0529    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E052E    mov        eax,dword ptr [eax]
 004E0530    mov        ecx,dword ptr [eax]
 004E0532    call       dword ptr [ecx+48]
 004E0535    lea        eax,[ebp-2C]
 004E0538    push       eax
 004E0539    mov        cl,5
 004E053B    mov        edx,esi
 004E053D    mov        eax,ebx
 004E053F    mov        ebx,dword ptr [eax]
 004E0541    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0544    xor        eax,eax
 004E0546    pop        edx
 004E0547    pop        ecx
 004E0548    pop        ecx
 004E0549    mov        dword ptr fs:[eax],edx
 004E054C    push       4E0567
 004E0551    lea        eax,[ebp-2C]
 004E0554    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E055A    call       @FinalizeRecord
 004E055F    ret
<004E0560    jmp        @HandleFinally
<004E0565    jmp        004E0551
 004E0567    pop        esi
 004E0568    pop        ebx
 004E0569    mov        esp,ebp
 004E056B    pop        ebp
 004E056C    ret        8
*}
//end;

//004E0570
//procedure sub_004E0570(?:?; ?:?);
//begin
{*
 004E0570    push       ebp
 004E0571    mov        ebp,esp
 004E0573    add        esp,0FFFFFFD4
 004E0576    push       ebx
 004E0577    push       esi
 004E0578    mov        esi,edx
 004E057A    mov        ebx,eax
 004E057C    lea        eax,[ebp-2C]
 004E057F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0585    call       @InitializeRecord
 004E058A    xor        eax,eax
 004E058C    push       ebp
 004E058D    push       4E05DC
 004E0592    push       dword ptr fs:[eax]
 004E0595    mov        dword ptr fs:[eax],esp
 004E0598    fld        dword ptr [ebp+8]
 004E059B    add        esp,0FFFFFFF4
 004E059E    fstp       tbyte ptr [esp]
 004E05A1    wait
 004E05A2    lea        edx,[ebp-2C]
 004E05A5    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E05AA    mov        eax,dword ptr [eax]
 004E05AC    mov        ecx,dword ptr [eax]
 004E05AE    call       dword ptr [ecx+4C]
 004E05B1    lea        eax,[ebp-2C]
 004E05B4    push       eax
 004E05B5    mov        cl,6
 004E05B7    mov        edx,esi
 004E05B9    mov        eax,ebx
 004E05BB    mov        ebx,dword ptr [eax]
 004E05BD    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E05C0    xor        eax,eax
 004E05C2    pop        edx
 004E05C3    pop        ecx
 004E05C4    pop        ecx
 004E05C5    mov        dword ptr fs:[eax],edx
 004E05C8    push       4E05E3
 004E05CD    lea        eax,[ebp-2C]
 004E05D0    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E05D6    call       @FinalizeRecord
 004E05DB    ret
<004E05DC    jmp        @HandleFinally
<004E05E1    jmp        004E05CD
 004E05E3    pop        esi
 004E05E4    pop        ebx
 004E05E5    mov        esp,ebp
 004E05E7    pop        ebp
 004E05E8    ret        4
*}
//end;

//004E05EC
//procedure sub_004E05EC(?:?; ?:?);
//begin
{*
 004E05EC    push       ebp
 004E05ED    mov        ebp,esp
 004E05EF    add        esp,0FFFFFFD4
 004E05F2    push       ebx
 004E05F3    push       esi
 004E05F4    mov        esi,edx
 004E05F6    mov        ebx,eax
 004E05F8    lea        eax,[ebp-2C]
 004E05FB    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0601    call       @InitializeRecord
 004E0606    xor        eax,eax
 004E0608    push       ebp
 004E0609    push       4E0658
 004E060E    push       dword ptr fs:[eax]
 004E0611    mov        dword ptr fs:[eax],esp
 004E0614    fld        qword ptr [ebp+8]
 004E0617    add        esp,0FFFFFFF4
 004E061A    fstp       tbyte ptr [esp]
 004E061D    wait
 004E061E    lea        edx,[ebp-2C]
 004E0621    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0626    mov        eax,dword ptr [eax]
 004E0628    mov        ecx,dword ptr [eax]
 004E062A    call       dword ptr [ecx+4C]
 004E062D    lea        eax,[ebp-2C]
 004E0630    push       eax
 004E0631    mov        cl,7
 004E0633    mov        edx,esi
 004E0635    mov        eax,ebx
 004E0637    mov        ebx,dword ptr [eax]
 004E0639    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E063C    xor        eax,eax
 004E063E    pop        edx
 004E063F    pop        ecx
 004E0640    pop        ecx
 004E0641    mov        dword ptr fs:[eax],edx
 004E0644    push       4E065F
 004E0649    lea        eax,[ebp-2C]
 004E064C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0652    call       @FinalizeRecord
 004E0657    ret
<004E0658    jmp        @HandleFinally
<004E065D    jmp        004E0649
 004E065F    pop        esi
 004E0660    pop        ebx
 004E0661    mov        esp,ebp
 004E0663    pop        ebp
 004E0664    ret        8
*}
//end;

//004E0668
//procedure sub_004E0668(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E0668    push       ebp
 004E0669    mov        ebp,esp
 004E066B    add        esp,0FFFFFFD4
 004E066E    push       ebx
 004E066F    push       esi
 004E0670    mov        esi,edx
 004E0672    mov        ebx,eax
 004E0674    lea        eax,[ebp-2C]
 004E0677    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E067D    call       @InitializeRecord
 004E0682    xor        eax,eax
 004E0684    push       ebp
 004E0685    push       4E06D5
 004E068A    push       dword ptr fs:[eax]
 004E068D    mov        dword ptr fs:[eax],esp
 004E0690    mov        ax,word ptr [ebp+10]
 004E0694    push       eax
 004E0695    push       dword ptr [ebp+0C]
 004E0698    push       dword ptr [ebp+8]
 004E069B    lea        edx,[ebp-2C]
 004E069E    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E06A3    mov        eax,dword ptr [eax]
 004E06A5    mov        ecx,dword ptr [eax]
 004E06A7    call       dword ptr [ecx+4C]
 004E06AA    lea        eax,[ebp-2C]
 004E06AD    push       eax
 004E06AE    mov        cl,8
 004E06B0    mov        edx,esi
 004E06B2    mov        eax,ebx
 004E06B4    mov        ebx,dword ptr [eax]
 004E06B6    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E06B9    xor        eax,eax
 004E06BB    pop        edx
 004E06BC    pop        ecx
 004E06BD    pop        ecx
 004E06BE    mov        dword ptr fs:[eax],edx
 004E06C1    push       4E06DC
 004E06C6    lea        eax,[ebp-2C]
 004E06C9    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E06CF    call       @FinalizeRecord
 004E06D4    ret
<004E06D5    jmp        @HandleFinally
<004E06DA    jmp        004E06C6
 004E06DC    pop        esi
 004E06DD    pop        ebx
 004E06DE    mov        esp,ebp
 004E06E0    pop        ebp
 004E06E1    ret        0C
*}
//end;

//004E06E4
//procedure sub_004E06E4(?:?; ?:?);
//begin
{*
 004E06E4    push       ebp
 004E06E5    mov        ebp,esp
 004E06E7    add        esp,0FFFFFFD0
 004E06EA    push       ebx
 004E06EB    push       esi
 004E06EC    push       edi
 004E06ED    xor        ebx,ebx
 004E06EF    mov        dword ptr [ebp-30],ebx
 004E06F2    mov        edi,ecx
 004E06F4    mov        esi,edx
 004E06F6    mov        ebx,eax
 004E06F8    lea        eax,[ebp-2C]
 004E06FB    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0701    call       @InitializeRecord
 004E0706    xor        eax,eax
 004E0708    push       ebp
 004E0709    push       4E0763
 004E070E    push       dword ptr fs:[eax]
 004E0711    mov        dword ptr fs:[eax],esp
 004E0714    lea        eax,[ebp-30]
 004E0717    mov        edx,edi
 004E0719    call       @LStrFromPChar
 004E071E    mov        ecx,dword ptr [ebp-30]
 004E0721    lea        edx,[ebp-2C]
 004E0724    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0729    mov        eax,dword ptr [eax]
 004E072B    mov        edi,dword ptr [eax]
 004E072D    call       dword ptr [edi+50]
 004E0730    lea        eax,[ebp-2C]
 004E0733    push       eax
 004E0734    mov        cl,9
 004E0736    mov        edx,esi
 004E0738    mov        eax,ebx
 004E073A    mov        ebx,dword ptr [eax]
 004E073C    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E073F    xor        eax,eax
 004E0741    pop        edx
 004E0742    pop        ecx
 004E0743    pop        ecx
 004E0744    mov        dword ptr fs:[eax],edx
 004E0747    push       4E076A
 004E074C    lea        eax,[ebp-30]
 004E074F    call       @LStrClr
 004E0754    lea        eax,[ebp-2C]
 004E0757    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E075D    call       @FinalizeRecord
 004E0762    ret
<004E0763    jmp        @HandleFinally
<004E0768    jmp        004E074C
 004E076A    pop        edi
 004E076B    pop        esi
 004E076C    pop        ebx
 004E076D    mov        esp,ebp
 004E076F    pop        ebp
 004E0770    ret
*}
//end;

//004E0774
//procedure sub_004E0774(?:?; ?:?);
//begin
{*
 004E0774    push       ebp
 004E0775    mov        ebp,esp
 004E0777    add        esp,0FFFFFFD4
 004E077A    push       ebx
 004E077B    push       esi
 004E077C    push       edi
 004E077D    mov        edi,ecx
 004E077F    mov        esi,edx
 004E0781    mov        ebx,eax
 004E0783    lea        eax,[ebp-2C]
 004E0786    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E078C    call       @InitializeRecord
 004E0791    xor        eax,eax
 004E0793    push       ebp
 004E0794    push       4E07DB
 004E0799    push       dword ptr fs:[eax]
 004E079C    mov        dword ptr fs:[eax],esp
 004E079F    lea        edx,[ebp-2C]
 004E07A2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E07A7    mov        eax,dword ptr [eax]
 004E07A9    mov        ecx,edi
 004E07AB    mov        edi,dword ptr [eax]
 004E07AD    call       dword ptr [edi+50]
 004E07B0    lea        eax,[ebp-2C]
 004E07B3    push       eax
 004E07B4    mov        cl,9
 004E07B6    mov        edx,esi
 004E07B8    mov        eax,ebx
 004E07BA    mov        ebx,dword ptr [eax]
 004E07BC    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E07BF    xor        eax,eax
 004E07C1    pop        edx
 004E07C2    pop        ecx
 004E07C3    pop        ecx
 004E07C4    mov        dword ptr fs:[eax],edx
 004E07C7    push       4E07E2
 004E07CC    lea        eax,[ebp-2C]
 004E07CF    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E07D5    call       @FinalizeRecord
 004E07DA    ret
<004E07DB    jmp        @HandleFinally
<004E07E0    jmp        004E07CC
 004E07E2    pop        edi
 004E07E3    pop        esi
 004E07E4    pop        ebx
 004E07E5    mov        esp,ebp
 004E07E7    pop        ebp
 004E07E8    ret
*}
//end;

//004E07EC
//procedure sub_004E07EC(?:?; ?:?);
//begin
{*
 004E07EC    push       ebp
 004E07ED    mov        ebp,esp
 004E07EF    add        esp,0FFFFFFD4
 004E07F2    push       ebx
 004E07F3    push       esi
 004E07F4    push       edi
 004E07F5    mov        edi,ecx
 004E07F7    mov        esi,edx
 004E07F9    mov        ebx,eax
 004E07FB    lea        eax,[ebp-2C]
 004E07FE    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0804    call       @InitializeRecord
 004E0809    xor        eax,eax
 004E080B    push       ebp
 004E080C    push       4E0853
 004E0811    push       dword ptr fs:[eax]
 004E0814    mov        dword ptr fs:[eax],esp
 004E0817    lea        edx,[ebp-2C]
 004E081A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E081F    mov        eax,dword ptr [eax]
 004E0821    mov        ecx,edi
 004E0823    mov        edi,dword ptr [eax]
 004E0825    call       dword ptr [edi+54]
 004E0828    lea        eax,[ebp-2C]
 004E082B    push       eax
 004E082C    mov        cl,0A
 004E082E    mov        edx,esi
 004E0830    mov        eax,ebx
 004E0832    mov        ebx,dword ptr [eax]
 004E0834    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0837    xor        eax,eax
 004E0839    pop        edx
 004E083A    pop        ecx
 004E083B    pop        ecx
 004E083C    mov        dword ptr fs:[eax],edx
 004E083F    push       4E085A
 004E0844    lea        eax,[ebp-2C]
 004E0847    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E084D    call       @FinalizeRecord
 004E0852    ret
<004E0853    jmp        @HandleFinally
<004E0858    jmp        004E0844
 004E085A    pop        edi
 004E085B    pop        esi
 004E085C    pop        ebx
 004E085D    mov        esp,ebp
 004E085F    pop        ebp
 004E0860    ret
*}
//end;

//004E0864
//procedure sub_004E0864(?:?; ?:?);
//begin
{*
 004E0864    push       ebp
 004E0865    mov        ebp,esp
 004E0867    add        esp,0FFFFFFD0
 004E086A    push       ebx
 004E086B    push       esi
 004E086C    push       edi
 004E086D    xor        ebx,ebx
 004E086F    mov        dword ptr [ebp-30],ebx
 004E0872    mov        edi,ecx
 004E0874    mov        esi,edx
 004E0876    mov        ebx,eax
 004E0878    lea        eax,[ebp-2C]
 004E087B    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0881    call       @InitializeRecord
 004E0886    xor        eax,eax
 004E0888    push       ebp
 004E0889    push       4E08E3
 004E088E    push       dword ptr fs:[eax]
 004E0891    mov        dword ptr fs:[eax],esp
 004E0894    lea        edx,[ebp-30]
 004E0897    mov        eax,edi
 004E0899    call       004BF648
 004E089E    mov        ecx,dword ptr [ebp-30]
 004E08A1    lea        edx,[ebp-2C]
 004E08A4    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E08A9    mov        eax,dword ptr [eax]
 004E08AB    mov        edi,dword ptr [eax]
 004E08AD    call       dword ptr [edi+50]
 004E08B0    lea        eax,[ebp-2C]
 004E08B3    push       eax
 004E08B4    mov        cl,0B
 004E08B6    mov        edx,esi
 004E08B8    mov        eax,ebx
 004E08BA    mov        ebx,dword ptr [eax]
 004E08BC    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E08BF    xor        eax,eax
 004E08C1    pop        edx
 004E08C2    pop        ecx
 004E08C3    pop        ecx
 004E08C4    mov        dword ptr fs:[eax],edx
 004E08C7    push       4E08EA
 004E08CC    lea        eax,[ebp-30]
 004E08CF    call       @LStrClr
 004E08D4    lea        eax,[ebp-2C]
 004E08D7    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E08DD    call       @FinalizeRecord
 004E08E2    ret
<004E08E3    jmp        @HandleFinally
<004E08E8    jmp        004E08CC
 004E08EA    pop        edi
 004E08EB    pop        esi
 004E08EC    pop        ebx
 004E08ED    mov        esp,ebp
 004E08EF    pop        ebp
 004E08F0    ret
*}
//end;

//004E08F4
//procedure sub_004E08F4(?:?; ?:?; ?:?);
//begin
{*
 004E08F4    push       ebp
 004E08F5    mov        ebp,esp
 004E08F7    add        esp,0FFFFFFD4
 004E08FA    push       ebx
 004E08FB    push       esi
 004E08FC    mov        esi,edx
 004E08FE    mov        ebx,eax
 004E0900    lea        eax,[ebp-2C]
 004E0903    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0909    call       @InitializeRecord
 004E090E    xor        eax,eax
 004E0910    push       ebp
 004E0911    push       4E095C
 004E0916    push       dword ptr fs:[eax]
 004E0919    mov        dword ptr fs:[eax],esp
 004E091C    push       dword ptr [ebp+0C]
 004E091F    push       dword ptr [ebp+8]
 004E0922    lea        edx,[ebp-2C]
 004E0925    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E092A    mov        eax,dword ptr [eax]
 004E092C    mov        ecx,dword ptr [eax]
 004E092E    call       dword ptr [ecx+58]
 004E0931    lea        eax,[ebp-2C]
 004E0934    push       eax
 004E0935    mov        cl,0C
 004E0937    mov        edx,esi
 004E0939    mov        eax,ebx
 004E093B    mov        ebx,dword ptr [eax]
 004E093D    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0940    xor        eax,eax
 004E0942    pop        edx
 004E0943    pop        ecx
 004E0944    pop        ecx
 004E0945    mov        dword ptr fs:[eax],edx
 004E0948    push       4E0963
 004E094D    lea        eax,[ebp-2C]
 004E0950    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0956    call       @FinalizeRecord
 004E095B    ret
<004E095C    jmp        @HandleFinally
<004E0961    jmp        004E094D
 004E0963    pop        esi
 004E0964    pop        ebx
 004E0965    mov        esp,ebp
 004E0967    pop        ebp
 004E0968    ret        8
*}
//end;

//004E096C
//procedure sub_004E096C(?:?; ?:?; ?:?);
//begin
{*
 004E096C    push       ebp
 004E096D    mov        ebp,esp
 004E096F    add        esp,0FFFFFFD4
 004E0972    push       ebx
 004E0973    push       esi
 004E0974    mov        esi,edx
 004E0976    mov        ebx,eax
 004E0978    lea        eax,[ebp-2C]
 004E097B    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0981    call       @InitializeRecord
 004E0986    xor        eax,eax
 004E0988    push       ebp
 004E0989    push       4E09D4
 004E098E    push       dword ptr fs:[eax]
 004E0991    mov        dword ptr fs:[eax],esp
 004E0994    push       dword ptr [ebp+0C]
 004E0997    push       dword ptr [ebp+8]
 004E099A    lea        edx,[ebp-2C]
 004E099D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E09A2    mov        eax,dword ptr [eax]
 004E09A4    mov        ecx,dword ptr [eax]
 004E09A6    call       dword ptr [ecx+58]
 004E09A9    lea        eax,[ebp-2C]
 004E09AC    push       eax
 004E09AD    mov        cl,0D
 004E09AF    mov        edx,esi
 004E09B1    mov        eax,ebx
 004E09B3    mov        ebx,dword ptr [eax]
 004E09B5    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E09B8    xor        eax,eax
 004E09BA    pop        edx
 004E09BB    pop        ecx
 004E09BC    pop        ecx
 004E09BD    mov        dword ptr fs:[eax],edx
 004E09C0    push       4E09DB
 004E09C5    lea        eax,[ebp-2C]
 004E09C8    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E09CE    call       @FinalizeRecord
 004E09D3    ret
<004E09D4    jmp        @HandleFinally
<004E09D9    jmp        004E09C5
 004E09DB    pop        esi
 004E09DC    pop        ebx
 004E09DD    mov        esp,ebp
 004E09DF    pop        ebp
 004E09E0    ret        8
*}
//end;

//004E09E4
//procedure sub_004E09E4(?:?; ?:?; ?:?);
//begin
{*
 004E09E4    push       ebp
 004E09E5    mov        ebp,esp
 004E09E7    add        esp,0FFFFFFD4
 004E09EA    push       ebx
 004E09EB    push       esi
 004E09EC    mov        esi,edx
 004E09EE    mov        ebx,eax
 004E09F0    lea        eax,[ebp-2C]
 004E09F3    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E09F9    call       @InitializeRecord
 004E09FE    xor        eax,eax
 004E0A00    push       ebp
 004E0A01    push       4E0A4C
 004E0A06    push       dword ptr fs:[eax]
 004E0A09    mov        dword ptr fs:[eax],esp
 004E0A0C    push       dword ptr [ebp+0C]
 004E0A0F    push       dword ptr [ebp+8]
 004E0A12    lea        edx,[ebp-2C]
 004E0A15    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0A1A    mov        eax,dword ptr [eax]
 004E0A1C    mov        ecx,dword ptr [eax]
 004E0A1E    call       dword ptr [ecx+58]
 004E0A21    lea        eax,[ebp-2C]
 004E0A24    push       eax
 004E0A25    mov        cl,0E
 004E0A27    mov        edx,esi
 004E0A29    mov        eax,ebx
 004E0A2B    mov        ebx,dword ptr [eax]
 004E0A2D    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0A30    xor        eax,eax
 004E0A32    pop        edx
 004E0A33    pop        ecx
 004E0A34    pop        ecx
 004E0A35    mov        dword ptr fs:[eax],edx
 004E0A38    push       4E0A53
 004E0A3D    lea        eax,[ebp-2C]
 004E0A40    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0A46    call       @FinalizeRecord
 004E0A4B    ret
<004E0A4C    jmp        @HandleFinally
<004E0A51    jmp        004E0A3D
 004E0A53    pop        esi
 004E0A54    pop        ebx
 004E0A55    mov        esp,ebp
 004E0A57    pop        ebp
 004E0A58    ret        8
*}
//end;

//004E0A5C
//procedure sub_004E0A5C(?:?; ?:?);
//begin
{*
 004E0A5C    push       ebp
 004E0A5D    mov        ebp,esp
 004E0A5F    push       ebx
 004E0A60    push       esi
 004E0A61    push       edi
 004E0A62    mov        edi,ecx
 004E0A64    mov        esi,edx
 004E0A66    mov        ebx,eax
 004E0A68    mov        ecx,edi
 004E0A6A    mov        dl,1
 004E0A6C    mov        eax,[004D3F38]; TZAbstractBlob
 004E0A71    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004E0A76    test       eax,eax
>004E0A78    je         004E0A7D
 004E0A7A    sub        eax,0FFFFFFE8
 004E0A7D    push       eax
 004E0A7E    mov        cl,0F
 004E0A80    mov        edx,esi
 004E0A82    mov        eax,ebx
 004E0A84    mov        ebx,dword ptr [eax]
 004E0A86    call       dword ptr [ebx+0D8]; TZASACallableStatement.sub_004E0B04
 004E0A8C    pop        edi
 004E0A8D    pop        esi
 004E0A8E    pop        ebx
 004E0A8F    pop        ebp
 004E0A90    ret
*}
//end;

//004E0A94
//procedure sub_004E0A94(?:?; ?:?);
//begin
{*
 004E0A94    push       ebp
 004E0A95    mov        ebp,esp
 004E0A97    push       ebx
 004E0A98    push       esi
 004E0A99    push       edi
 004E0A9A    mov        edi,ecx
 004E0A9C    mov        esi,edx
 004E0A9E    mov        ebx,eax
 004E0AA0    mov        ecx,edi
 004E0AA2    mov        dl,1
 004E0AA4    mov        eax,[004D3F38]; TZAbstractBlob
 004E0AA9    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004E0AAE    test       eax,eax
>004E0AB0    je         004E0AB5
 004E0AB2    sub        eax,0FFFFFFE8
 004E0AB5    push       eax
 004E0AB6    mov        cl,10
 004E0AB8    mov        edx,esi
 004E0ABA    mov        eax,ebx
 004E0ABC    mov        ebx,dword ptr [eax]
 004E0ABE    call       dword ptr [ebx+0D8]; TZASACallableStatement.sub_004E0B04
 004E0AC4    pop        edi
 004E0AC5    pop        esi
 004E0AC6    pop        ebx
 004E0AC7    pop        ebp
 004E0AC8    ret
*}
//end;

//004E0ACC
//procedure sub_004E0ACC(?:?; ?:?);
//begin
{*
 004E0ACC    push       ebp
 004E0ACD    mov        ebp,esp
 004E0ACF    push       ebx
 004E0AD0    push       esi
 004E0AD1    push       edi
 004E0AD2    mov        edi,ecx
 004E0AD4    mov        esi,edx
 004E0AD6    mov        ebx,eax
 004E0AD8    mov        ecx,edi
 004E0ADA    mov        dl,1
 004E0ADC    mov        eax,[004D3F38]; TZAbstractBlob
 004E0AE1    call       TZAbstractBlob.Create; TZAbstractBlob.Create
 004E0AE6    test       eax,eax
>004E0AE8    je         004E0AED
 004E0AEA    sub        eax,0FFFFFFE8
 004E0AED    push       eax
 004E0AEE    mov        cl,11
 004E0AF0    mov        edx,esi
 004E0AF2    mov        eax,ebx
 004E0AF4    mov        ebx,dword ptr [eax]
 004E0AF6    call       dword ptr [ebx+0D8]; TZASACallableStatement.sub_004E0B04
 004E0AFC    pop        edi
 004E0AFD    pop        esi
 004E0AFE    pop        ebx
 004E0AFF    pop        ebp
 004E0B00    ret
*}
//end;

//004E0B04
//procedure sub_004E0B04(?:?; ?:?; ?:?);
//begin
{*
 004E0B04    push       ebp
 004E0B05    mov        ebp,esp
 004E0B07    add        esp,0FFFFFFCC
 004E0B0A    push       ebx
 004E0B0B    push       esi
 004E0B0C    push       edi
 004E0B0D    xor        ebx,ebx
 004E0B0F    mov        dword ptr [ebp-34],ebx
 004E0B12    mov        ebx,ecx
 004E0B14    mov        dword ptr [ebp-4],edx
 004E0B17    mov        esi,eax
 004E0B19    mov        eax,dword ptr [ebp+8]
 004E0B1C    call       @IntfAddRef
 004E0B21    lea        eax,[ebp-30]
 004E0B24    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0B2A    call       @InitializeRecord
 004E0B2F    xor        eax,eax
 004E0B31    push       ebp
 004E0B32    push       4E0BB4
 004E0B37    push       dword ptr fs:[eax]
 004E0B3A    mov        dword ptr fs:[eax],esp
 004E0B3D    mov        eax,ebx
 004E0B3F    add        al,0F1
 004E0B41    sub        al,3
>004E0B43    jb         004E0B66
 004E0B45    lea        edx,[ebp-34]
 004E0B48    mov        eax,[0061C5A4]; ^#122.sResString50:TResStringRec
 004E0B4D    call       LoadResString
 004E0B52    mov        ecx,dword ptr [ebp-34]
 004E0B55    mov        dl,1
 004E0B57    mov        eax,[004C6D20]; EZSQLException
 004E0B5C    call       EZSQLException.Create; EZSQLException.Create
 004E0B61    call       @RaiseExcept
 004E0B66    lea        edx,[ebp-30]
 004E0B69    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0B6E    mov        eax,dword ptr [eax]
 004E0B70    mov        ecx,dword ptr [ebp+8]
 004E0B73    mov        edi,dword ptr [eax]
 004E0B75    call       dword ptr [edi+60]
 004E0B78    lea        eax,[ebp-30]
 004E0B7B    push       eax
 004E0B7C    mov        ecx,ebx
 004E0B7E    mov        edx,dword ptr [ebp-4]
 004E0B81    mov        eax,esi
 004E0B83    mov        ebx,dword ptr [eax]
 004E0B85    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0B88    xor        eax,eax
 004E0B8A    pop        edx
 004E0B8B    pop        ecx
 004E0B8C    pop        ecx
 004E0B8D    mov        dword ptr fs:[eax],edx
 004E0B90    push       4E0BBB
 004E0B95    lea        eax,[ebp-34]
 004E0B98    call       @LStrClr
 004E0B9D    lea        eax,[ebp-30]
 004E0BA0    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0BA6    call       @FinalizeRecord
 004E0BAB    lea        eax,[ebp+8]
 004E0BAE    call       @IntfClear
 004E0BB3    ret
<004E0BB4    jmp        @HandleFinally
<004E0BB9    jmp        004E0B95
 004E0BBB    pop        edi
 004E0BBC    pop        esi
 004E0BBD    pop        ebx
 004E0BBE    mov        esp,ebp
 004E0BC0    pop        ebp
 004E0BC1    ret        4
*}
//end;

//004E0BC4
//procedure sub_004E0BC4(?:?; ?:?);
//begin
{*
 004E0BC4    push       ebp
 004E0BC5    mov        ebp,esp
 004E0BC7    push       ebx
 004E0BC8    push       esi
 004E0BC9    mov        esi,edx
 004E0BCB    xor        edx,edx
 004E0BCD    mov        dl,byte ptr [ecx]
 004E0BCF    cmp        edx,6
>004E0BD2    ja         004E0C0B
 004E0BD4    jmp        dword ptr [edx*4+4E0BDB]
 004E0BD4    dd         4E0C0B
 004E0BD4    dd         4E0BF7
 004E0BD4    dd         4E0BFB
 004E0BD4    dd         4E0BFF
 004E0BD4    dd         4E0C0B
 004E0BD4    dd         4E0C03
 004E0BD4    dd         4E0C07
 004E0BF7    mov        dl,1
>004E0BF9    jmp        004E0C0D
 004E0BFB    mov        dl,5
>004E0BFD    jmp        004E0C0D
 004E0BFF    mov        dl,8
>004E0C01    jmp        004E0C0D
 004E0C03    mov        dl,0A
>004E0C05    jmp        004E0C0D
 004E0C07    mov        dl,0E
>004E0C09    jmp        004E0C0D
 004E0C0B    mov        dl,9
 004E0C0D    push       ecx
 004E0C0E    mov        ecx,esi
 004E0C10    xchg       ecx,edx
 004E0C12    mov        ebx,dword ptr [eax]
 004E0C14    call       dword ptr [ebx+7C]; TZASACallableStatement.sub_004E0220
 004E0C17    pop        esi
 004E0C18    pop        ebx
 004E0C19    pop        ebp
 004E0C1A    ret
*}
//end;

//004E0C1C
procedure sub_004E0C1C;
begin
{*
 004E0C1C    push       ebp
 004E0C1D    mov        ebp,esp
 004E0C1F    push       ecx
 004E0C20    push       ebx
 004E0C21    push       esi
 004E0C22    push       edi
 004E0C23    mov        esi,eax
 004E0C25    mov        eax,dword ptr [esi+58]; TZAbstractPreparedStatement.?f58:dword
 004E0C28    test       eax,eax
>004E0C2A    jle        004E0C56
 004E0C2C    mov        dword ptr [ebp-4],eax
 004E0C2F    mov        ebx,1
 004E0C34    mov        eax,[0061BF44]; ^gvar_0061DCE0:TZVariant
 004E0C39    push       eax
 004E0C3A    xor        ecx,ecx
 004E0C3C    mov        edx,ebx
 004E0C3E    mov        eax,esi
 004E0C40    mov        edi,dword ptr [eax]
 004E0C42    call       dword ptr [edi+7C]; TZAbstractPreparedStatement.sub_004E0220
 004E0C45    xor        ecx,ecx
 004E0C47    mov        edx,ebx
 004E0C49    mov        eax,esi
 004E0C4B    call       004E02B8
 004E0C50    inc        ebx
 004E0C51    dec        dword ptr [ebp-4]
<004E0C54    jne        004E0C34
 004E0C56    xor        edx,edx
 004E0C58    mov        eax,esi
 004E0C5A    mov        ecx,dword ptr [eax]
 004E0C5C    call       dword ptr [ecx+78]; TZAbstractPreparedStatement.sub_004E0150
 004E0C5F    pop        edi
 004E0C60    pop        esi
 004E0C61    pop        ebx
 004E0C62    pop        ecx
 004E0C63    pop        ebp
 004E0C64    ret
*}
end;

//004E0C68
//function sub_004E0C68():?;
//begin
{*
 004E0C68    push       ebp
 004E0C69    mov        ebp,esp
 004E0C6B    push       ebx
 004E0C6C    xor        ebx,ebx
 004E0C6E    call       004DFDD8
 004E0C73    mov        eax,ebx
 004E0C75    pop        ebx
 004E0C76    pop        ebp
 004E0C77    ret
*}
//end;

//004E0C78
procedure sub_004E0C78();
begin
{*
 004E0C78    ret
*}
end;

//004E0C7C
//procedure sub_004E0C7C(?:?);
//begin
{*
 004E0C7C    push       ebp
 004E0C7D    mov        ebp,esp
 004E0C7F    push       ebx
 004E0C80    push       esi
 004E0C81    mov        esi,edx
 004E0C83    mov        ebx,eax
 004E0C85    mov        eax,esi
 004E0C87    call       @IntfClear
 004E0C8C    mov        eax,ebx
 004E0C8E    call       004DFDD8
 004E0C93    pop        esi
 004E0C94    pop        ebx
 004E0C95    pop        ebp
 004E0C96    ret
*}
//end;

//004E0C98
//constructor sub_004E0C98(?:?; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004E0C98    push       ebp
 004E0C99    mov        ebp,esp
 004E0C9B    push       ecx
 004E0C9C    push       ebx
 004E0C9D    push       esi
 004E0C9E    test       dl,dl
>004E0CA0    je         004E0CAA
 004E0CA2    add        esp,0FFFFFFF0
 004E0CA5    call       @ClassCreate
 004E0CAA    mov        dword ptr [ebp-4],ecx
 004E0CAD    mov        ebx,edx
 004E0CAF    mov        esi,eax
 004E0CB1    mov        eax,dword ptr [ebp-4]
 004E0CB4    call       @IntfAddRef
 004E0CB9    mov        eax,dword ptr [ebp+0C]
 004E0CBC    call       @LStrAddRef
 004E0CC1    xor        eax,eax
 004E0CC3    push       ebp
 004E0CC4    push       4E0D16
 004E0CC9    push       dword ptr fs:[eax]
 004E0CCC    mov        dword ptr fs:[eax],esp
 004E0CCF    mov        eax,dword ptr [ebp+0C]
 004E0CD2    push       eax
 004E0CD3    mov        eax,dword ptr [ebp+8]
 004E0CD6    push       eax
 004E0CD7    mov        ecx,dword ptr [ebp-4]
 004E0CDA    xor        edx,edx
 004E0CDC    mov        eax,esi
 004E0CDE    call       004E0088
 004E0CE3    xor        eax,eax
 004E0CE5    mov        dword ptr [esi+68],eax
 004E0CE8    xor        edx,edx
 004E0CEA    mov        eax,esi
 004E0CEC    mov        ecx,dword ptr [eax]
 004E0CEE    call       dword ptr [ecx+0EC]
 004E0CF4    mov        byte ptr [esi+6C],1
 004E0CF8    xor        eax,eax
 004E0CFA    pop        edx
 004E0CFB    pop        ecx
 004E0CFC    pop        ecx
 004E0CFD    mov        dword ptr fs:[eax],edx
 004E0D00    push       4E0D1D
 004E0D05    lea        eax,[ebp-4]
 004E0D08    call       @IntfClear
 004E0D0D    lea        eax,[ebp+0C]
 004E0D10    call       @LStrClr
 004E0D15    ret
<004E0D16    jmp        @HandleFinally
<004E0D1B    jmp        004E0D05
 004E0D1D    mov        eax,esi
 004E0D1F    test       bl,bl
>004E0D21    je         004E0D32
 004E0D23    call       @AfterConstruction
 004E0D28    pop        dword ptr fs:[0]
 004E0D2F    add        esp,0C
 004E0D32    mov        eax,esi
 004E0D34    pop        esi
 004E0D35    pop        ebx
 004E0D36    pop        ecx
 004E0D37    pop        ebp
 004E0D38    ret        8
*}
//end;

//004E0D3C
//procedure sub_004E0D3C(?:?);
//begin
{*
 004E0D3C    push       ebp
 004E0D3D    mov        ebp,esp
 004E0D3F    push       ecx
 004E0D40    push       ebx
 004E0D41    push       esi
 004E0D42    push       edi
 004E0D43    mov        dword ptr [ebp-4],edx
 004E0D46    mov        ebx,eax
 004E0D48    mov        eax,dword ptr [ebp-4]
 004E0D4B    push       eax
 004E0D4C    lea        eax,[ebx+60]; TZASACallableStatement.?f60:TZVariantDynArray
 004E0D4F    mov        ecx,1
 004E0D54    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 004E0D5A    call       @DynArraySetLength
 004E0D5F    add        esp,4
 004E0D62    mov        eax,dword ptr [ebp-4]
 004E0D65    push       eax
 004E0D66    lea        eax,[ebx+64]; TZASACallableStatement.?f64:TZSQLTypeArray
 004E0D69    mov        ecx,1
 004E0D6E    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 004E0D74    call       @DynArraySetLength
 004E0D79    add        esp,4
 004E0D7C    mov        esi,dword ptr [ebx+68]; TZASACallableStatement.?f68:dword
 004E0D7F    mov        edi,dword ptr [ebp-4]
 004E0D82    sub        edi,1
>004E0D85    jno        004E0D8C
 004E0D87    call       @IntOver
 004E0D8C    sub        edi,esi
>004E0D8E    jl         004E0DCB
 004E0D90    inc        edi
 004E0D91    imul       eax,esi,0B
>004E0D94    jno        004E0D9B
 004E0D96    call       @IntOver
 004E0D9B    mov        edx,dword ptr [ebx+60]; TZASACallableStatement.?f60:TZVariantDynArray
 004E0D9E    lea        eax,[edx+eax*4]
 004E0DA1    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E0DA7    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E0DAD    call       @CopyRecord
 004E0DB2    mov        eax,dword ptr [ebx+64]; TZASACallableStatement.?f64:TZSQLTypeArray
 004E0DB5    test       eax,eax
>004E0DB7    je         004E0DBE
 004E0DB9    cmp        esi,dword ptr [eax-4]
>004E0DBC    jb         004E0DC3
 004E0DBE    call       @BoundErr
 004E0DC3    mov        byte ptr [eax+esi],0
 004E0DC7    inc        esi
 004E0DC8    dec        edi
<004E0DC9    jne        004E0D91
 004E0DCB    mov        eax,dword ptr [ebp-4]
 004E0DCE    mov        dword ptr [ebx+68],eax; TZASACallableStatement.?f68:dword
 004E0DD1    pop        edi
 004E0DD2    pop        esi
 004E0DD3    pop        ebx
 004E0DD4    pop        ecx
 004E0DD5    pop        ebp
 004E0DD6    ret
*}
//end;

//004E0DD8
procedure sub_004E0DD8;
begin
{*
 004E0DD8    push       ebp
 004E0DD9    mov        ebp,esp
 004E0DDB    push       ebx
 004E0DDC    push       esi
 004E0DDD    push       edi
 004E0DDE    mov        ebx,eax
 004E0DE0    mov        eax,ebx
 004E0DE2    call       004E0C1C
 004E0DE7    mov        edi,dword ptr [ebx+68]; TZASACallableStatement.?f68:dword
 004E0DEA    test       edi,edi
>004E0DEC    jle        004E0E45
 004E0DEE    mov        esi,1
 004E0DF3    mov        eax,esi
 004E0DF5    sub        eax,1
>004E0DF8    jno        004E0DFF
 004E0DFA    call       @IntOver
 004E0DFF    imul       eax,eax,0B
>004E0E02    jno        004E0E09
 004E0E04    call       @IntOver
 004E0E09    mov        edx,dword ptr [ebx+60]; TZASACallableStatement.?f60:TZVariantDynArray
 004E0E0C    lea        eax,[edx+eax*4]
 004E0E0F    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E0E15    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E0E1B    call       @CopyRecord
 004E0E20    mov        eax,esi
 004E0E22    sub        eax,1
>004E0E25    jno        004E0E2C
 004E0E27    call       @IntOver
 004E0E2C    mov        edx,dword ptr [ebx+64]; TZASACallableStatement.?f64:TZSQLTypeArray
 004E0E2F    test       edx,edx
>004E0E31    je         004E0E38
 004E0E33    cmp        eax,dword ptr [edx-4]
>004E0E36    jb         004E0E3D
 004E0E38    call       @BoundErr
 004E0E3D    mov        byte ptr [edx+eax],0
 004E0E41    inc        esi
 004E0E42    dec        edi
<004E0E43    jne        004E0DF3
 004E0E45    xor        edx,edx
 004E0E47    mov        eax,ebx
 004E0E49    mov        ecx,dword ptr [eax]
 004E0E4B    call       dword ptr [ecx+0EC]; TZASACallableStatement.sub_004E0D3C
 004E0E51    pop        edi
 004E0E52    pop        esi
 004E0E53    pop        ebx
 004E0E54    pop        ebp
 004E0E55    ret
*}
end;

//004E0E58
//procedure sub_004E0E58(?:?; ?:?);
//begin
{*
 004E0E58    push       ebp
 004E0E59    mov        ebp,esp
 004E0E5B    push       ebx
 004E0E5C    push       esi
 004E0E5D    push       edi
 004E0E5E    mov        edi,ecx
 004E0E60    mov        esi,edx
 004E0E62    mov        ebx,eax
 004E0E64    mov        edx,esi
 004E0E66    mov        eax,ebx
 004E0E68    mov        ecx,dword ptr [eax]
 004E0E6A    call       dword ptr [ecx+0EC]; TZASACallableStatement.sub_004E0D3C
 004E0E70    sub        esi,1
>004E0E73    jno        004E0E7A
 004E0E75    call       @IntOver
 004E0E7A    mov        eax,dword ptr [ebx+64]; TZASACallableStatement.?f64:TZSQLTypeArray
 004E0E7D    test       eax,eax
>004E0E7F    je         004E0E86
 004E0E81    cmp        esi,dword ptr [eax-4]
>004E0E84    jb         004E0E8B
 004E0E86    call       @BoundErr
 004E0E8B    mov        edx,edi
 004E0E8D    mov        byte ptr [eax+esi],dl
 004E0E90    pop        edi
 004E0E91    pop        esi
 004E0E92    pop        ebx
 004E0E93    pop        ebp
 004E0E94    ret
*}
//end;

//004E0E98
//procedure sub_004E0E98(?:?; ?:?);
//begin
{*
 004E0E98    push       ebp
 004E0E99    mov        ebp,esp
 004E0E9B    push       ebx
 004E0E9C    push       esi
 004E0E9D    push       edi
 004E0E9E    mov        esi,ecx
 004E0EA0    mov        edi,edx
 004E0EA2    mov        ebx,eax
 004E0EA4    cmp        dword ptr [ebx+60],0; TZASACallableStatement.?f60:TZVariantDynArray
>004E0EA8    je         004E0EE4
 004E0EAA    mov        eax,esi
 004E0EAC    sub        edi,1
>004E0EAF    jno        004E0EB6
 004E0EB1    call       @IntOver
 004E0EB6    imul       edx,edi,0B
>004E0EB9    jno        004E0EC0
 004E0EBB    call       @IntOver
 004E0EC0    mov        ecx,dword ptr [ebx+60]; TZASACallableStatement.?f60:TZVariantDynArray
 004E0EC3    lea        edx,[ecx+edx*4]
 004E0EC6    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E0ECC    call       @CopyRecord
 004E0ED1    mov        edx,esi
 004E0ED3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 004E0ED8    mov        eax,dword ptr [eax]
 004E0EDA    mov        ecx,dword ptr [eax]
 004E0EDC    call       dword ptr [ecx+0C]
 004E0EDF    mov        byte ptr [ebx+6C],al; TZASACallableStatement.?f6C:byte
>004E0EE2    jmp        004E0EFB
 004E0EE4    mov        eax,esi
 004E0EE6    mov        edx,dword ptr ds:[61BF44]; ^gvar_0061DCE0:TZVariant
 004E0EEC    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004E0EF2    call       @CopyRecord
 004E0EF7    mov        byte ptr [ebx+6C],1; TZASACallableStatement.?f6C:byte
 004E0EFB    pop        edi
 004E0EFC    pop        esi
 004E0EFD    pop        ebx
 004E0EFE    pop        ebp
 004E0EFF    ret
*}
//end;

//004E0F00
//function sub_004E0F00:?;
//begin
{*
 004E0F00    mov        al,byte ptr [eax+6C]; TZASACallableStatement.?f6C:byte
 004E0F03    ret
*}
//end;

//004E0F04
//function sub_004E0F04:?;
//begin
{*
 004E0F04    push       ebp
 004E0F05    mov        ebp,esp
 004E0F07    mov        ecx,5
 004E0F0C    push       0
 004E0F0E    push       0
 004E0F10    dec        ecx
<004E0F11    jne        004E0F0C
 004E0F13    push       ecx
 004E0F14    push       ebx
 004E0F15    push       esi
 004E0F16    mov        ebx,eax
 004E0F18    xor        eax,eax
 004E0F1A    push       ebp
 004E0F1B    push       4E0F52
 004E0F20    push       dword ptr fs:[eax]
 004E0F23    mov        dword ptr fs:[eax],esp
 004E0F26    lea        ecx,[ebp-2C]
 004E0F29    mov        eax,ebx
 004E0F2B    mov        esi,dword ptr [eax]
 004E0F2D    call       dword ptr [esi+0F0]; TZASACallableStatement.sub_004E0E98
 004E0F33    mov        bl,byte ptr [ebx+6C]; TZASACallableStatement.?f6C:byte
 004E0F36    xor        eax,eax
 004E0F38    pop        edx
 004E0F39    pop        ecx
 004E0F3A    pop        ecx
 004E0F3B    mov        dword ptr fs:[eax],edx
 004E0F3E    push       4E0F59
 004E0F43    lea        eax,[ebp-2C]
 004E0F46    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E0F4C    call       @FinalizeRecord
 004E0F51    ret
<004E0F52    jmp        @HandleFinally
<004E0F57    jmp        004E0F43
 004E0F59    mov        eax,ebx
 004E0F5B    pop        esi
 004E0F5C    pop        ebx
 004E0F5D    mov        esp,ebp
 004E0F5F    pop        ebp
 004E0F60    ret
*}
//end;

//004E0F64
//function sub_004E0F64(?:?):?;
//begin
{*
 004E0F64    push       ebp
 004E0F65    mov        ebp,esp
 004E0F67    push       0
 004E0F69    push       ebx
 004E0F6A    push       esi
 004E0F6B    mov        esi,edx
 004E0F6D    mov        ebx,eax
 004E0F6F    xor        eax,eax
 004E0F71    push       ebp
 004E0F72    push       4E0FB7
 004E0F77    push       dword ptr fs:[eax]
 004E0F7A    mov        dword ptr fs:[eax],esp
 004E0F7D    lea        ecx,[ebp-4]
 004E0F80    mov        edx,esi
 004E0F82    mov        eax,ebx
 004E0F84    mov        esi,dword ptr [eax]
 004E0F86    call       dword ptr [esi+104]; TZASACallableStatement.sub_004E0FC8
 004E0F8C    mov        edx,dword ptr [ebp-4]
 004E0F8F    lea        eax,[ebx+70]; TZASACallableStatement.?f70:String
 004E0F92    call       @LStrAsg
 004E0F97    mov        eax,dword ptr [ebx+70]; TZASACallableStatement.?f70:String
 004E0F9A    call       @LStrToPChar
 004E0F9F    mov        ebx,eax
 004E0FA1    xor        eax,eax
 004E0FA3    pop        edx
 004E0FA4    pop        ecx
 004E0FA5    pop        ecx
 004E0FA6    mov        dword ptr fs:[eax],edx
 004E0FA9    push       4E0FBE
 004E0FAE    lea        eax,[ebp-4]
 004E0FB1    call       @LStrClr
 004E0FB6    ret
<004E0FB7    jmp        @HandleFinally
<004E0FBC    jmp        004E0FAE
 004E0FBE    mov        eax,ebx
 004E0FC0    pop        esi
 004E0FC1    pop        ebx
 004E0FC2    pop        ecx
 004E0FC3    pop        ebp
 004E0FC4    ret
*}
//end;

//004E0FC8
//procedure sub_004E0FC8(?:?; ?:?);
//begin
{*
 004E0FC8    push       ebp
 004E0FC9    mov        ebp,esp
 004E0FCB    push       ecx
 004E0FCC    mov        ecx,5
 004E0FD1    push       0
 004E0FD3    push       0
 004E0FD5    dec        ecx
<004E0FD6    jne        004E0FD1
 004E0FD8    push       ecx
 004E0FD9    xchg       ecx,dword ptr [ebp-4]
 004E0FDC    push       ebx
 004E0FDD    push       esi
 004E0FDE    mov        dword ptr [ebp-4],ecx
 004E0FE1    mov        esi,edx
 004E0FE3    mov        ebx,eax
 004E0FE5    xor        eax,eax
 004E0FE7    push       ebp
 004E0FE8    push       4E1030
 004E0FED    push       dword ptr fs:[eax]
 004E0FF0    mov        dword ptr fs:[eax],esp
 004E0FF3    lea        ecx,[ebp-30]
 004E0FF6    mov        edx,esi
 004E0FF8    mov        eax,ebx
 004E0FFA    mov        ebx,dword ptr [eax]
 004E0FFC    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E1002    lea        edx,[ebp-30]
 004E1005    mov        ecx,dword ptr [ebp-4]
 004E1008    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E100D    mov        eax,dword ptr [eax]
 004E100F    mov        ebx,dword ptr [eax]
 004E1011    call       dword ptr [ebx+30]
 004E1014    xor        eax,eax
 004E1016    pop        edx
 004E1017    pop        ecx
 004E1018    pop        ecx
 004E1019    mov        dword ptr fs:[eax],edx
 004E101C    push       4E1037
 004E1021    lea        eax,[ebp-30]
 004E1024    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E102A    call       @FinalizeRecord
 004E102F    ret
<004E1030    jmp        @HandleFinally
<004E1035    jmp        004E1021
 004E1037    pop        esi
 004E1038    pop        ebx
 004E1039    mov        esp,ebp
 004E103B    pop        ebp
 004E103C    ret
*}
//end;

//004E1040
//procedure sub_004E1040(?:?; ?:?);
//begin
{*
 004E1040    push       ebp
 004E1041    mov        ebp,esp
 004E1043    push       ecx
 004E1044    mov        ecx,5
 004E1049    push       0
 004E104B    push       0
 004E104D    dec        ecx
<004E104E    jne        004E1049
 004E1050    push       ecx
 004E1051    xchg       ecx,dword ptr [ebp-4]
 004E1054    push       ebx
 004E1055    push       esi
 004E1056    mov        dword ptr [ebp-4],ecx
 004E1059    mov        esi,edx
 004E105B    mov        ebx,eax
 004E105D    xor        eax,eax
 004E105F    push       ebp
 004E1060    push       4E10A8
 004E1065    push       dword ptr fs:[eax]
 004E1068    mov        dword ptr fs:[eax],esp
 004E106B    lea        ecx,[ebp-30]
 004E106E    mov        edx,esi
 004E1070    mov        eax,ebx
 004E1072    mov        ebx,dword ptr [eax]
 004E1074    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E107A    lea        edx,[ebp-30]
 004E107D    mov        ecx,dword ptr [ebp-4]
 004E1080    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1085    mov        eax,dword ptr [eax]
 004E1087    mov        ebx,dword ptr [eax]
 004E1089    call       dword ptr [ebx+34]
 004E108C    xor        eax,eax
 004E108E    pop        edx
 004E108F    pop        ecx
 004E1090    pop        ecx
 004E1091    mov        dword ptr fs:[eax],edx
 004E1094    push       4E10AF
 004E1099    lea        eax,[ebp-30]
 004E109C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E10A2    call       @FinalizeRecord
 004E10A7    ret
<004E10A8    jmp        @HandleFinally
<004E10AD    jmp        004E1099
 004E10AF    pop        esi
 004E10B0    pop        ebx
 004E10B1    mov        esp,ebp
 004E10B3    pop        ebp
 004E10B4    ret
*}
//end;

//004E10B8
//function sub_004E10B8(?:?):?;
//begin
{*
 004E10B8    push       ebp
 004E10B9    mov        ebp,esp
 004E10BB    mov        ecx,5
 004E10C0    push       0
 004E10C2    push       0
 004E10C4    dec        ecx
<004E10C5    jne        004E10C0
 004E10C7    push       ecx
 004E10C8    push       ebx
 004E10C9    push       esi
 004E10CA    mov        esi,edx
 004E10CC    mov        ebx,eax
 004E10CE    xor        eax,eax
 004E10D0    push       ebp
 004E10D1    push       4E1118
 004E10D6    push       dword ptr fs:[eax]
 004E10D9    mov        dword ptr fs:[eax],esp
 004E10DC    lea        ecx,[ebp-2C]
 004E10DF    mov        edx,esi
 004E10E1    mov        eax,ebx
 004E10E3    mov        ebx,dword ptr [eax]
 004E10E5    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E10EB    lea        edx,[ebp-2C]
 004E10EE    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E10F3    mov        eax,dword ptr [eax]
 004E10F5    mov        ecx,dword ptr [eax]
 004E10F7    call       dword ptr [ecx+24]
 004E10FA    mov        ebx,eax
 004E10FC    xor        eax,eax
 004E10FE    pop        edx
 004E10FF    pop        ecx
 004E1100    pop        ecx
 004E1101    mov        dword ptr fs:[eax],edx
 004E1104    push       4E111F
 004E1109    lea        eax,[ebp-2C]
 004E110C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1112    call       @FinalizeRecord
 004E1117    ret
<004E1118    jmp        @HandleFinally
<004E111D    jmp        004E1109
 004E111F    mov        eax,ebx
 004E1121    pop        esi
 004E1122    pop        ebx
 004E1123    mov        esp,ebp
 004E1125    pop        ebp
 004E1126    ret
*}
//end;

//004E1128
//function sub_004E1128(?:?):?;
//begin
{*
 004E1128    push       ebp
 004E1129    mov        ebp,esp
 004E112B    mov        ecx,5
 004E1130    push       0
 004E1132    push       0
 004E1134    dec        ecx
<004E1135    jne        004E1130
 004E1137    push       ecx
 004E1138    push       ebx
 004E1139    push       esi
 004E113A    mov        esi,edx
 004E113C    mov        ebx,eax
 004E113E    xor        eax,eax
 004E1140    push       ebp
 004E1141    push       4E1188
 004E1146    push       dword ptr fs:[eax]
 004E1149    mov        dword ptr fs:[eax],esp
 004E114C    lea        ecx,[ebp-2C]
 004E114F    mov        edx,esi
 004E1151    mov        eax,ebx
 004E1153    mov        ebx,dword ptr [eax]
 004E1155    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E115B    lea        edx,[ebp-2C]
 004E115E    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1163    mov        eax,dword ptr [eax]
 004E1165    mov        ecx,dword ptr [eax]
 004E1167    call       dword ptr [ecx+28]
 004E116A    mov        ebx,eax
 004E116C    xor        eax,eax
 004E116E    pop        edx
 004E116F    pop        ecx
 004E1170    pop        ecx
 004E1171    mov        dword ptr fs:[eax],edx
 004E1174    push       4E118F
 004E1179    lea        eax,[ebp-2C]
 004E117C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1182    call       @FinalizeRecord
 004E1187    ret
<004E1188    jmp        @HandleFinally
<004E118D    jmp        004E1179
 004E118F    mov        eax,ebx
 004E1191    pop        esi
 004E1192    pop        ebx
 004E1193    mov        esp,ebp
 004E1195    pop        ebp
 004E1196    ret
*}
//end;

//004E1198
//function sub_004E1198(?:?):?;
//begin
{*
 004E1198    push       ebp
 004E1199    mov        ebp,esp
 004E119B    mov        ecx,5
 004E11A0    push       0
 004E11A2    push       0
 004E11A4    dec        ecx
<004E11A5    jne        004E11A0
 004E11A7    push       ecx
 004E11A8    push       ebx
 004E11A9    push       esi
 004E11AA    mov        esi,edx
 004E11AC    mov        ebx,eax
 004E11AE    xor        eax,eax
 004E11B0    push       ebp
 004E11B1    push       4E11F8
 004E11B6    push       dword ptr fs:[eax]
 004E11B9    mov        dword ptr fs:[eax],esp
 004E11BC    lea        ecx,[ebp-2C]
 004E11BF    mov        edx,esi
 004E11C1    mov        eax,ebx
 004E11C3    mov        ebx,dword ptr [eax]
 004E11C5    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E11CB    lea        edx,[ebp-2C]
 004E11CE    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E11D3    mov        eax,dword ptr [eax]
 004E11D5    mov        ecx,dword ptr [eax]
 004E11D7    call       dword ptr [ecx+28]
 004E11DA    mov        ebx,eax
 004E11DC    xor        eax,eax
 004E11DE    pop        edx
 004E11DF    pop        ecx
 004E11E0    pop        ecx
 004E11E1    mov        dword ptr fs:[eax],edx
 004E11E4    push       4E11FF
 004E11E9    lea        eax,[ebp-2C]
 004E11EC    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E11F2    call       @FinalizeRecord
 004E11F7    ret
<004E11F8    jmp        @HandleFinally
<004E11FD    jmp        004E11E9
 004E11FF    mov        eax,ebx
 004E1201    pop        esi
 004E1202    pop        ebx
 004E1203    mov        esp,ebp
 004E1205    pop        ebp
 004E1206    ret
*}
//end;

//004E1208
//function sub_004E1208(?:?):?;
//begin
{*
 004E1208    push       ebp
 004E1209    mov        ebp,esp
 004E120B    mov        ecx,5
 004E1210    push       0
 004E1212    push       0
 004E1214    dec        ecx
<004E1215    jne        004E1210
 004E1217    push       ecx
 004E1218    push       ebx
 004E1219    push       esi
 004E121A    mov        esi,edx
 004E121C    mov        ebx,eax
 004E121E    xor        eax,eax
 004E1220    push       ebp
 004E1221    push       4E1268
 004E1226    push       dword ptr fs:[eax]
 004E1229    mov        dword ptr fs:[eax],esp
 004E122C    lea        ecx,[ebp-2C]
 004E122F    mov        edx,esi
 004E1231    mov        eax,ebx
 004E1233    mov        ebx,dword ptr [eax]
 004E1235    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E123B    lea        edx,[ebp-2C]
 004E123E    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1243    mov        eax,dword ptr [eax]
 004E1245    mov        ecx,dword ptr [eax]
 004E1247    call       dword ptr [ecx+28]
 004E124A    mov        ebx,eax
 004E124C    xor        eax,eax
 004E124E    pop        edx
 004E124F    pop        ecx
 004E1250    pop        ecx
 004E1251    mov        dword ptr fs:[eax],edx
 004E1254    push       4E126F
 004E1259    lea        eax,[ebp-2C]
 004E125C    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1262    call       @FinalizeRecord
 004E1267    ret
<004E1268    jmp        @HandleFinally
<004E126D    jmp        004E1259
 004E126F    mov        eax,ebx
 004E1271    pop        esi
 004E1272    pop        ebx
 004E1273    mov        esp,ebp
 004E1275    pop        ebp
 004E1276    ret
*}
//end;

//004E1278
//procedure sub_004E1278(?:?);
//begin
{*
 004E1278    push       ebp
 004E1279    mov        ebp,esp
 004E127B    mov        ecx,6
 004E1280    push       0
 004E1282    push       0
 004E1284    dec        ecx
<004E1285    jne        004E1280
 004E1287    push       ecx
 004E1288    push       ebx
 004E1289    push       esi
 004E128A    mov        esi,edx
 004E128C    mov        ebx,eax
 004E128E    xor        eax,eax
 004E1290    push       ebp
 004E1291    push       4E12DC
 004E1296    push       dword ptr fs:[eax]
 004E1299    mov        dword ptr fs:[eax],esp
 004E129C    lea        ecx,[ebp-34]
 004E129F    mov        edx,esi
 004E12A1    mov        eax,ebx
 004E12A3    mov        ebx,dword ptr [eax]
 004E12A5    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E12AB    lea        edx,[ebp-34]
 004E12AE    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E12B3    mov        eax,dword ptr [eax]
 004E12B5    mov        ecx,dword ptr [eax]
 004E12B7    call       dword ptr [ecx+28]
 004E12BA    mov        dword ptr [ebp-8],eax
 004E12BD    mov        dword ptr [ebp-4],edx
 004E12C0    xor        eax,eax
 004E12C2    pop        edx
 004E12C3    pop        ecx
 004E12C4    pop        ecx
 004E12C5    mov        dword ptr fs:[eax],edx
 004E12C8    push       4E12E3
 004E12CD    lea        eax,[ebp-34]
 004E12D0    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E12D6    call       @FinalizeRecord
 004E12DB    ret
<004E12DC    jmp        @HandleFinally
<004E12E1    jmp        004E12CD
 004E12E3    mov        eax,dword ptr [ebp-8]
 004E12E6    mov        edx,dword ptr [ebp-4]
 004E12E9    pop        esi
 004E12EA    pop        ebx
 004E12EB    mov        esp,ebp
 004E12ED    pop        ebp
 004E12EE    ret
*}
//end;

//004E12F0
//procedure sub_004E12F0(?:?);
//begin
{*
 004E12F0    push       ebp
 004E12F1    mov        ebp,esp
 004E12F3    mov        ecx,6
 004E12F8    push       0
 004E12FA    push       0
 004E12FC    dec        ecx
<004E12FD    jne        004E12F8
 004E12FF    push       ebx
 004E1300    push       esi
 004E1301    mov        esi,edx
 004E1303    mov        ebx,eax
 004E1305    xor        eax,eax
 004E1307    push       ebp
 004E1308    push       4E1351
 004E130D    push       dword ptr fs:[eax]
 004E1310    mov        dword ptr fs:[eax],esp
 004E1313    lea        ecx,[ebp-30]
 004E1316    mov        edx,esi
 004E1318    mov        eax,ebx
 004E131A    mov        ebx,dword ptr [eax]
 004E131C    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E1322    lea        edx,[ebp-30]
 004E1325    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E132A    mov        eax,dword ptr [eax]
 004E132C    mov        ecx,dword ptr [eax]
 004E132E    call       dword ptr [ecx+2C]
 004E1331    fstp       dword ptr [ebp-4]
 004E1334    wait
 004E1335    xor        eax,eax
 004E1337    pop        edx
 004E1338    pop        ecx
 004E1339    pop        ecx
 004E133A    mov        dword ptr fs:[eax],edx
 004E133D    push       4E1358
 004E1342    lea        eax,[ebp-30]
 004E1345    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E134B    call       @FinalizeRecord
 004E1350    ret
<004E1351    jmp        @HandleFinally
<004E1356    jmp        004E1342
 004E1358    fld        dword ptr [ebp-4]
 004E135B    pop        esi
 004E135C    pop        ebx
 004E135D    mov        esp,ebp
 004E135F    pop        ebp
 004E1360    ret
*}
//end;

//004E1364
//procedure sub_004E1364(?:?);
//begin
{*
 004E1364    push       ebp
 004E1365    mov        ebp,esp
 004E1367    mov        ecx,6
 004E136C    push       0
 004E136E    push       0
 004E1370    dec        ecx
<004E1371    jne        004E136C
 004E1373    push       ecx
 004E1374    push       ebx
 004E1375    push       esi
 004E1376    mov        esi,edx
 004E1378    mov        ebx,eax
 004E137A    xor        eax,eax
 004E137C    push       ebp
 004E137D    push       4E13C6
 004E1382    push       dword ptr fs:[eax]
 004E1385    mov        dword ptr fs:[eax],esp
 004E1388    lea        ecx,[ebp-34]
 004E138B    mov        edx,esi
 004E138D    mov        eax,ebx
 004E138F    mov        ebx,dword ptr [eax]
 004E1391    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E1397    lea        edx,[ebp-34]
 004E139A    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E139F    mov        eax,dword ptr [eax]
 004E13A1    mov        ecx,dword ptr [eax]
 004E13A3    call       dword ptr [ecx+2C]
 004E13A6    fstp       qword ptr [ebp-8]
 004E13A9    wait
 004E13AA    xor        eax,eax
 004E13AC    pop        edx
 004E13AD    pop        ecx
 004E13AE    pop        ecx
 004E13AF    mov        dword ptr fs:[eax],edx
 004E13B2    push       4E13CD
 004E13B7    lea        eax,[ebp-34]
 004E13BA    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E13C0    call       @FinalizeRecord
 004E13C5    ret
<004E13C6    jmp        @HandleFinally
<004E13CB    jmp        004E13B7
 004E13CD    fld        qword ptr [ebp-8]
 004E13D0    pop        esi
 004E13D1    pop        ebx
 004E13D2    mov        esp,ebp
 004E13D4    pop        ebp
 004E13D5    ret
*}
//end;

//004E13D8
//procedure sub_004E13D8(?:?);
//begin
{*
 004E13D8    push       ebp
 004E13D9    mov        ebp,esp
 004E13DB    mov        ecx,7
 004E13E0    push       0
 004E13E2    push       0
 004E13E4    dec        ecx
<004E13E5    jne        004E13E0
 004E13E7    push       ecx
 004E13E8    push       ebx
 004E13E9    push       esi
 004E13EA    mov        esi,edx
 004E13EC    mov        ebx,eax
 004E13EE    xor        eax,eax
 004E13F0    push       ebp
 004E13F1    push       4E143A
 004E13F6    push       dword ptr fs:[eax]
 004E13F9    mov        dword ptr fs:[eax],esp
 004E13FC    lea        ecx,[ebp-3C]
 004E13FF    mov        edx,esi
 004E1401    mov        eax,ebx
 004E1403    mov        ebx,dword ptr [eax]
 004E1405    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E140B    lea        edx,[ebp-3C]
 004E140E    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1413    mov        eax,dword ptr [eax]
 004E1415    mov        ecx,dword ptr [eax]
 004E1417    call       dword ptr [ecx+2C]
 004E141A    fstp       tbyte ptr [ebp-10]
 004E141D    wait
 004E141E    xor        eax,eax
 004E1420    pop        edx
 004E1421    pop        ecx
 004E1422    pop        ecx
 004E1423    mov        dword ptr fs:[eax],edx
 004E1426    push       4E1441
 004E142B    lea        eax,[ebp-3C]
 004E142E    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1434    call       @FinalizeRecord
 004E1439    ret
<004E143A    jmp        @HandleFinally
<004E143F    jmp        004E142B
 004E1441    fld        tbyte ptr [ebp-10]
 004E1444    pop        esi
 004E1445    pop        ebx
 004E1446    mov        esp,ebp
 004E1448    pop        ebp
 004E1449    ret
*}
//end;

//004E144C
//procedure sub_004E144C(?:?; ?:?);
//begin
{*
 004E144C    push       ebp
 004E144D    mov        ebp,esp
 004E144F    push       ecx
 004E1450    mov        ecx,6
 004E1455    push       0
 004E1457    push       0
 004E1459    dec        ecx
<004E145A    jne        004E1455
 004E145C    xchg       ecx,dword ptr [ebp-4]
 004E145F    push       ebx
 004E1460    push       esi
 004E1461    mov        dword ptr [ebp-4],ecx
 004E1464    mov        esi,edx
 004E1466    mov        ebx,eax
 004E1468    xor        eax,eax
 004E146A    push       ebp
 004E146B    push       4E14C6
 004E1470    push       dword ptr fs:[eax]
 004E1473    mov        dword ptr fs:[eax],esp
 004E1476    lea        ecx,[ebp-34]
 004E1479    mov        edx,esi
 004E147B    mov        eax,ebx
 004E147D    mov        ebx,dword ptr [eax]
 004E147F    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E1485    lea        edx,[ebp-34]
 004E1488    lea        ecx,[ebp-8]
 004E148B    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1490    mov        eax,dword ptr [eax]
 004E1492    mov        ebx,dword ptr [eax]
 004E1494    call       dword ptr [ebx+30]
 004E1497    mov        eax,dword ptr [ebp-8]
 004E149A    mov        edx,dword ptr [ebp-4]
 004E149D    call       004BF678
 004E14A2    xor        eax,eax
 004E14A4    pop        edx
 004E14A5    pop        ecx
 004E14A6    pop        ecx
 004E14A7    mov        dword ptr fs:[eax],edx
 004E14AA    push       4E14CD
 004E14AF    lea        eax,[ebp-34]
 004E14B2    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E14B8    call       @FinalizeRecord
 004E14BD    lea        eax,[ebp-8]
 004E14C0    call       @LStrClr
 004E14C5    ret
<004E14C6    jmp        @HandleFinally
<004E14CB    jmp        004E14AF
 004E14CD    pop        esi
 004E14CE    pop        ebx
 004E14CF    mov        esp,ebp
 004E14D1    pop        ebp
 004E14D2    ret
*}
//end;

//004E14D4
//procedure sub_004E14D4(?:?);
//begin
{*
 004E14D4    push       ebp
 004E14D5    mov        ebp,esp
 004E14D7    mov        ecx,6
 004E14DC    push       0
 004E14DE    push       0
 004E14E0    dec        ecx
<004E14E1    jne        004E14DC
 004E14E3    push       ecx
 004E14E4    push       ebx
 004E14E5    push       esi
 004E14E6    mov        esi,edx
 004E14E8    mov        ebx,eax
 004E14EA    xor        eax,eax
 004E14EC    push       ebp
 004E14ED    push       4E1536
 004E14F2    push       dword ptr fs:[eax]
 004E14F5    mov        dword ptr fs:[eax],esp
 004E14F8    lea        ecx,[ebp-34]
 004E14FB    mov        edx,esi
 004E14FD    mov        eax,ebx
 004E14FF    mov        ebx,dword ptr [eax]
 004E1501    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E1507    lea        edx,[ebp-34]
 004E150A    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E150F    mov        eax,dword ptr [eax]
 004E1511    mov        ecx,dword ptr [eax]
 004E1513    call       dword ptr [ecx+38]
 004E1516    fstp       qword ptr [ebp-8]
 004E1519    wait
 004E151A    xor        eax,eax
 004E151C    pop        edx
 004E151D    pop        ecx
 004E151E    pop        ecx
 004E151F    mov        dword ptr fs:[eax],edx
 004E1522    push       4E153D
 004E1527    lea        eax,[ebp-34]
 004E152A    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1530    call       @FinalizeRecord
 004E1535    ret
<004E1536    jmp        @HandleFinally
<004E153B    jmp        004E1527
 004E153D    fld        qword ptr [ebp-8]
 004E1540    pop        esi
 004E1541    pop        ebx
 004E1542    mov        esp,ebp
 004E1544    pop        ebp
 004E1545    ret
*}
//end;

//004E1548
//procedure sub_004E1548(?:?);
//begin
{*
 004E1548    push       ebp
 004E1549    mov        ebp,esp
 004E154B    mov        ecx,6
 004E1550    push       0
 004E1552    push       0
 004E1554    dec        ecx
<004E1555    jne        004E1550
 004E1557    push       ecx
 004E1558    push       ebx
 004E1559    push       esi
 004E155A    mov        esi,edx
 004E155C    mov        ebx,eax
 004E155E    xor        eax,eax
 004E1560    push       ebp
 004E1561    push       4E15AA
 004E1566    push       dword ptr fs:[eax]
 004E1569    mov        dword ptr fs:[eax],esp
 004E156C    lea        ecx,[ebp-34]
 004E156F    mov        edx,esi
 004E1571    mov        eax,ebx
 004E1573    mov        ebx,dword ptr [eax]
 004E1575    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E157B    lea        edx,[ebp-34]
 004E157E    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E1583    mov        eax,dword ptr [eax]
 004E1585    mov        ecx,dword ptr [eax]
 004E1587    call       dword ptr [ecx+38]
 004E158A    fstp       qword ptr [ebp-8]
 004E158D    wait
 004E158E    xor        eax,eax
 004E1590    pop        edx
 004E1591    pop        ecx
 004E1592    pop        ecx
 004E1593    mov        dword ptr fs:[eax],edx
 004E1596    push       4E15B1
 004E159B    lea        eax,[ebp-34]
 004E159E    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E15A4    call       @FinalizeRecord
 004E15A9    ret
<004E15AA    jmp        @HandleFinally
<004E15AF    jmp        004E159B
 004E15B1    fld        qword ptr [ebp-8]
 004E15B4    pop        esi
 004E15B5    pop        ebx
 004E15B6    mov        esp,ebp
 004E15B8    pop        ebp
 004E15B9    ret
*}
//end;

//004E15BC
//procedure sub_004E15BC(?:?);
//begin
{*
 004E15BC    push       ebp
 004E15BD    mov        ebp,esp
 004E15BF    mov        ecx,6
 004E15C4    push       0
 004E15C6    push       0
 004E15C8    dec        ecx
<004E15C9    jne        004E15C4
 004E15CB    push       ecx
 004E15CC    push       ebx
 004E15CD    push       esi
 004E15CE    mov        esi,edx
 004E15D0    mov        ebx,eax
 004E15D2    xor        eax,eax
 004E15D4    push       ebp
 004E15D5    push       4E161E
 004E15DA    push       dword ptr fs:[eax]
 004E15DD    mov        dword ptr fs:[eax],esp
 004E15E0    lea        ecx,[ebp-34]
 004E15E3    mov        edx,esi
 004E15E5    mov        eax,ebx
 004E15E7    mov        ebx,dword ptr [eax]
 004E15E9    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E15EF    lea        edx,[ebp-34]
 004E15F2    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 004E15F7    mov        eax,dword ptr [eax]
 004E15F9    mov        ecx,dword ptr [eax]
 004E15FB    call       dword ptr [ecx+38]
 004E15FE    fstp       qword ptr [ebp-8]
 004E1601    wait
 004E1602    xor        eax,eax
 004E1604    pop        edx
 004E1605    pop        ecx
 004E1606    pop        ecx
 004E1607    mov        dword ptr fs:[eax],edx
 004E160A    push       4E1625
 004E160F    lea        eax,[ebp-34]
 004E1612    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004E1618    call       @FinalizeRecord
 004E161D    ret
<004E161E    jmp        @HandleFinally
<004E1623    jmp        004E160F
 004E1625    fld        qword ptr [ebp-8]
 004E1628    pop        esi
 004E1629    pop        ebx
 004E162A    mov        esp,ebp
 004E162C    pop        ebp
 004E162D    ret
*}
//end;

//004E1630
//procedure sub_004E1630(?:?; ?:?);
//begin
{*
 004E1630    push       ebp
 004E1631    mov        ebp,esp
 004E1633    push       ecx
 004E1634    push       ebx
 004E1635    push       esi
 004E1636    mov        dword ptr [ebp-4],ecx
 004E1639    mov        esi,edx
 004E163B    mov        ebx,eax
 004E163D    mov        ecx,dword ptr [ebp-4]
 004E1640    mov        edx,esi
 004E1642    mov        eax,ebx
 004E1644    mov        ebx,dword ptr [eax]
 004E1646    call       dword ptr [ebx+0F0]; TZASACallableStatement.sub_004E0E98
 004E164C    pop        esi
 004E164D    pop        ebx
 004E164E    pop        ecx
 004E164F    pop        ebp
 004E1650    ret
*}
//end;

//004E1654
destructor TZEmulatedPreparedStatement.Destroy;
begin
{*
 004E1654    push       ebp
 004E1655    mov        ebp,esp
 004E1657    push       ebx
 004E1658    push       esi
 004E1659    call       @BeforeDestruction
 004E165E    mov        ebx,edx
 004E1660    mov        esi,eax
 004E1662    mov        eax,dword ptr [esi+64]; TZEmulatedPreparedStatement.?f64:TStringList
 004E1665    test       eax,eax
>004E1667    je         004E166E
 004E1669    call       TObject.Free
 004E166E    mov        edx,ebx
 004E1670    and        dl,0FC
 004E1673    mov        eax,esi
 004E1675    call       TZAbstractPreparedStatement.Destroy
 004E167A    test       bl,bl
>004E167C    jle        004E1685
 004E167E    mov        eax,esi
 004E1680    call       @ClassDestroy
 004E1685    pop        esi
 004E1686    pop        ebx
 004E1687    pop        ebp
 004E1688    ret
*}
end;

//004E168C
//procedure sub_004E168C(?:TZSQLitePreparedStatement; ?:?);
//begin
{*
 004E168C    push       ebp
 004E168D    mov        ebp,esp
 004E168F    push       ecx
 004E1690    push       ebx
 004E1691    mov        dword ptr [ebp-4],edx
 004E1694    mov        ebx,eax
 004E1696    mov        eax,dword ptr [ebp-4]
 004E1699    call       @IntfAddRef
 004E169E    xor        eax,eax
 004E16A0    push       ebp
 004E16A1    push       4E16DB
 004E16A6    push       dword ptr fs:[eax]
 004E16A9    mov        dword ptr fs:[eax],esp
 004E16AC    cmp        dword ptr [ebx+68],0; TZSQLitePreparedStatement.?f68:IZStatement
>004E16B0    je         004E16BA
 004E16B2    mov        eax,dword ptr [ebx+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E16B5    mov        edx,dword ptr [eax]
 004E16B7    call       dword ptr [edx+14]
 004E16BA    lea        eax,[ebx+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E16BD    mov        edx,dword ptr [ebp-4]
 004E16C0    call       @IntfCopy
 004E16C5    xor        eax,eax
 004E16C7    pop        edx
 004E16C8    pop        ecx
 004E16C9    pop        ecx
 004E16CA    mov        dword ptr fs:[eax],edx
 004E16CD    push       4E16E2
 004E16D2    lea        eax,[ebp-4]
 004E16D5    call       @IntfClear
 004E16DA    ret
<004E16DB    jmp        @HandleFinally
<004E16E0    jmp        004E16D2
 004E16E2    pop        ebx
 004E16E3    pop        ecx
 004E16E4    pop        ebp
 004E16E5    ret
*}
//end;

//004E16E8
//procedure sub_004E16E8(?:TZSQLitePreparedStatement; ?:?);
//begin
{*
 004E16E8    push       ebp
 004E16E9    mov        ebp,esp
 004E16EB    push       0
 004E16ED    push       ebx
 004E16EE    push       esi
 004E16EF    mov        esi,edx
 004E16F1    mov        ebx,eax
 004E16F3    xor        eax,eax
 004E16F5    push       ebp
 004E16F6    push       4E17D0
 004E16FB    push       dword ptr fs:[eax]
 004E16FE    mov        dword ptr fs:[eax],esp
 004E1701    cmp        dword ptr [ebx+60],0; TZSQLitePreparedStatement.?f60:IZStatement
>004E1705    jne        004E17B0
 004E170B    lea        edx,[ebp-4]
 004E170E    mov        eax,ebx
 004E1710    mov        ecx,dword ptr [eax]
 004E1712    call       dword ptr [ecx+0EC]; TZSQLitePreparedStatement.sub_0053F4F4
 004E1718    mov        edx,dword ptr [ebp-4]
 004E171B    lea        eax,[ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E171E    call       @IntfCopy
 004E1723    mov        eax,ebx
 004E1725    mov        edx,dword ptr [eax]
 004E1727    call       dword ptr [edx+10]; TZSQLitePreparedStatement.sub_004DFED8
 004E172A    mov        edx,eax
 004E172C    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E172F    mov        ecx,dword ptr [eax]
 004E1731    call       dword ptr [ecx+1C]
 004E1734    mov        eax,ebx
 004E1736    mov        edx,dword ptr [eax]
 004E1738    call       dword ptr [edx+18]; TZSQLitePreparedStatement.sub_004DFEE0
 004E173B    mov        edx,eax
 004E173D    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E1740    mov        ecx,dword ptr [eax]
 004E1742    call       dword ptr [ecx+24]
 004E1745    mov        dl,byte ptr [ebx+14]; TZSQLitePreparedStatement.?f14:byte
 004E1748    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E174B    mov        ecx,dword ptr [eax]
 004E174D    call       dword ptr [ecx+28]
 004E1750    mov        eax,ebx
 004E1752    mov        edx,dword ptr [eax]
 004E1754    call       dword ptr [edx+24]; TZSQLitePreparedStatement.sub_004DFEEC
 004E1757    mov        edx,eax
 004E1759    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E175C    mov        ecx,dword ptr [eax]
 004E175E    call       dword ptr [ecx+30]
 004E1761    mov        edx,dword ptr [ebx+30]; TZSQLitePreparedStatement.?f30:String
 004E1764    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E1767    mov        ecx,dword ptr [eax]
 004E1769    call       dword ptr [ecx+38]
 004E176C    mov        eax,ebx
 004E176E    mov        edx,dword ptr [eax]
 004E1770    call       dword ptr [edx+48]; TZSQLitePreparedStatement.sub_004DFF60
 004E1773    mov        edx,eax
 004E1775    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E1778    mov        ecx,dword ptr [eax]
 004E177A    call       dword ptr [ecx+4C]
 004E177D    mov        eax,ebx
 004E177F    mov        edx,dword ptr [eax]
 004E1781    call       dword ptr [edx+50]; TZSQLitePreparedStatement.sub_004DFF68
 004E1784    mov        edx,eax
 004E1786    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E1789    mov        ecx,dword ptr [eax]
 004E178B    call       dword ptr [ecx+54]
 004E178E    mov        eax,ebx
 004E1790    mov        edx,dword ptr [eax]
 004E1792    call       dword ptr [edx+58]; TZSQLitePreparedStatement.sub_004DFF74
 004E1795    mov        edx,eax
 004E1797    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E179A    mov        ecx,dword ptr [eax]
 004E179C    call       dword ptr [ecx+5C]
 004E179F    mov        eax,ebx
 004E17A1    mov        edx,dword ptr [eax]
 004E17A3    call       dword ptr [edx+60]; TZSQLitePreparedStatement.sub_004DFF7C
 004E17A6    mov        edx,eax
 004E17A8    mov        eax,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E17AB    mov        ecx,dword ptr [eax]
 004E17AD    call       dword ptr [ecx+64]
 004E17B0    mov        eax,esi
 004E17B2    mov        edx,dword ptr [ebx+60]; TZSQLitePreparedStatement.?f60:IZStatement
 004E17B5    call       @IntfCopy
 004E17BA    xor        eax,eax
 004E17BC    pop        edx
 004E17BD    pop        ecx
 004E17BE    pop        ecx
 004E17BF    mov        dword ptr fs:[eax],edx
 004E17C2    push       4E17D7
 004E17C7    lea        eax,[ebp-4]
 004E17CA    call       @IntfClear
 004E17CF    ret
<004E17D0    jmp        @HandleFinally
<004E17D5    jmp        004E17C7
 004E17D7    pop        esi
 004E17D8    pop        ebx
 004E17D9    pop        ecx
 004E17DA    pop        ebp
 004E17DB    ret
*}
//end;

//004E17DC
//function sub_004E17DC(?:TZSQLitePreparedStatement):?;
//begin
{*
 004E17DC    push       ebp
 004E17DD    mov        ebp,esp
 004E17DF    xor        ecx,ecx
 004E17E1    push       ecx
 004E17E2    push       ecx
 004E17E3    push       ecx
 004E17E4    push       ecx
 004E17E5    push       ecx
 004E17E6    push       ecx
 004E17E7    push       ecx
 004E17E8    push       ebx
 004E17E9    push       esi
 004E17EA    push       edi
 004E17EB    mov        dword ptr [ebp-4],eax
 004E17EE    xor        eax,eax
 004E17F0    push       ebp
 004E17F1    push       4E1972
 004E17F6    push       dword ptr fs:[eax]
 004E17F9    mov        dword ptr fs:[eax],esp
 004E17FC    mov        eax,dword ptr [ebp-4]
 004E17FF    cmp        dword ptr [eax+64],0; TZSQLitePreparedStatement.?f64:TStringList
>004E1803    jne        004E1939
 004E1809    mov        dl,1
 004E180B    mov        eax,[0041C8E4]; TStringList
 004E1810    call       TObject.Create; TStringList.Create
 004E1815    mov        edx,dword ptr [ebp-4]
 004E1818    mov        dword ptr [edx+64],eax; TZSQLitePreparedStatement.?f64:TStringList
 004E181B    mov        eax,dword ptr [ebp-4]
 004E181E    mov        edx,dword ptr [eax+48]; TZSQLitePreparedStatement.?f48:String
 004E1821    mov        eax,4E198C; '?'
 004E1826    call       @LStrPos
 004E182B    test       eax,eax
>004E182D    jle        004E1928
 004E1833    lea        edx,[ebp-14]
 004E1836    mov        eax,dword ptr [ebp-4]
 004E1839    mov        eax,dword ptr [eax+38]; TZSQLitePreparedStatement.?f38:IZConnection
 004E183C    mov        ecx,dword ptr [eax]
 004E183E    call       dword ptr [ecx+60]
 004E1841    mov        eax,dword ptr [ebp-14]
 004E1844    lea        edx,[ebp-10]
 004E1847    mov        ecx,dword ptr [eax]
 004E1849    call       dword ptr [ecx+2C]
 004E184C    mov        eax,dword ptr [ebp-10]
 004E184F    mov        edx,dword ptr [ebp-4]
 004E1852    mov        edx,dword ptr [edx+48]; TZSQLitePreparedStatement.?f48:String
 004E1855    mov        cl,byte ptr ds:[4E1990]; 0x10
 004E185B    mov        ebx,dword ptr [eax]
 004E185D    call       dword ptr [ebx+0C]
 004E1860    mov        dword ptr [ebp-8],eax
 004E1863    xor        eax,eax
 004E1865    push       ebp
 004E1866    push       4E1921
 004E186B    push       dword ptr fs:[eax]
 004E186E    mov        dword ptr fs:[eax],esp
 004E1871    lea        eax,[ebp-0C]
 004E1874    call       @LStrClr
 004E1879    mov        eax,dword ptr [ebp-8]
 004E187C    mov        edx,dword ptr [eax]
 004E187E    call       dword ptr [edx+14]
 004E1881    mov        esi,eax
 004E1883    sub        esi,1
>004E1886    jno        004E188D
 004E1888    call       @IntOver
 004E188D    test       esi,esi
>004E188F    jl         004E18F7
 004E1891    inc        esi
 004E1892    xor        ebx,ebx
 004E1894    lea        ecx,[ebp-18]
 004E1897    mov        edx,ebx
 004E1899    mov        eax,dword ptr [ebp-8]
 004E189C    mov        edi,dword ptr [eax]
 004E189E    call       dword ptr [edi+0C]
 004E18A1    mov        eax,dword ptr [ebp-18]
 004E18A4    mov        edx,4E198C; '?'
 004E18A9    call       @LStrCmp
>004E18AE    jne        004E18DB
 004E18B0    mov        eax,dword ptr [ebp-4]
 004E18B3    mov        eax,dword ptr [eax+64]; TZSQLitePreparedStatement.?f64:TStringList
 004E18B6    mov        edx,dword ptr [ebp-0C]
 004E18B9    mov        ecx,dword ptr [eax]
 004E18BB    call       dword ptr [ecx+38]; TStringList.Add
 004E18BE    mov        eax,dword ptr [ebp-4]
 004E18C1    mov        eax,dword ptr [eax+64]; TZSQLitePreparedStatement.?f64:TStringList
 004E18C4    mov        ecx,dword ptr [ebp-4]
 004E18C7    mov        edx,4E198C; '?'
 004E18CC    mov        edi,dword ptr [eax]
 004E18CE    call       dword ptr [edi+3C]; TStringList.AddObject
 004E18D1    lea        eax,[ebp-0C]
 004E18D4    call       @LStrClr
>004E18D9    jmp        004E18F3
 004E18DB    lea        ecx,[ebp-1C]
 004E18DE    mov        edx,ebx
 004E18E0    mov        eax,dword ptr [ebp-8]
 004E18E3    mov        edi,dword ptr [eax]
 004E18E5    call       dword ptr [edi+0C]
 004E18E8    mov        edx,dword ptr [ebp-1C]
 004E18EB    lea        eax,[ebp-0C]
 004E18EE    call       @LStrCat
 004E18F3    inc        ebx
 004E18F4    dec        esi
<004E18F5    jne        004E1894
 004E18F7    cmp        dword ptr [ebp-0C],0
>004E18FB    je         004E190B
 004E18FD    mov        eax,dword ptr [ebp-4]
 004E1900    mov        eax,dword ptr [eax+64]; TZSQLitePreparedStatement.?f64:TStringList
 004E1903    mov        edx,dword ptr [ebp-0C]
 004E1906    mov        ecx,dword ptr [eax]
 004E1908    call       dword ptr [ecx+38]; TStringList.Add
 004E190B    xor        eax,eax
 004E190D    pop        edx
 004E190E    pop        ecx
 004E190F    pop        ecx
 004E1910    mov        dword ptr fs:[eax],edx
 004E1913    push       4E1939
 004E1918    mov        eax,dword ptr [ebp-8]
 004E191B    call       TObject.Free
 004E1920    ret
<004E1921    jmp        @HandleFinally
<004E1926    jmp        004E1918
 004E1928    mov        eax,dword ptr [ebp-4]
 004E192B    mov        edx,dword ptr [eax+48]; TZSQLitePreparedStatement.?f48:String
 004E192E    mov        eax,dword ptr [ebp-4]
 004E1931    mov        eax,dword ptr [eax+64]; TZSQLitePreparedStatement.?f64:TStringList
 004E1934    mov        ecx,dword ptr [eax]
 004E1936    call       dword ptr [ecx+38]; TStringList.Add
 004E1939    mov        eax,dword ptr [ebp-4]
 004E193C    mov        ebx,dword ptr [eax+64]; TZSQLitePreparedStatement.?f64:TStringList
 004E193F    xor        eax,eax
 004E1941    pop        edx
 004E1942    pop        ecx
 004E1943    pop        ecx
 004E1944    mov        dword ptr fs:[eax],edx
 004E1947    push       4E1979
 004E194C    lea        eax,[ebp-1C]
 004E194F    mov        edx,2
 004E1954    call       @LStrArrayClr
 004E1959    lea        eax,[ebp-14]
 004E195C    call       @IntfClear
 004E1961    lea        eax,[ebp-10]
 004E1964    call       @IntfClear
 004E1969    lea        eax,[ebp-0C]
 004E196C    call       @LStrClr
 004E1971    ret
<004E1972    jmp        @HandleFinally
<004E1977    jmp        004E194C
 004E1979    mov        eax,ebx
 004E197B    pop        edi
 004E197C    pop        esi
 004E197D    pop        ebx
 004E197E    mov        esp,ebp
 004E1980    pop        ebp
 004E1981    ret
*}
//end;

//004E1994
//procedure sub_004E1994(?:?);
//begin
{*
 004E1994    push       ebp
 004E1995    mov        ebp,esp
 004E1997    add        esp,0FFFFFFE4
 004E199A    push       ebx
 004E199B    push       esi
 004E199C    push       edi
 004E199D    xor        ecx,ecx
 004E199F    mov        dword ptr [ebp-1C],ecx
 004E19A2    mov        dword ptr [ebp-18],ecx
 004E19A5    mov        dword ptr [ebp-14],ecx
 004E19A8    mov        dword ptr [ebp-8],edx
 004E19AB    mov        dword ptr [ebp-4],eax
 004E19AE    xor        eax,eax
 004E19B0    push       ebp
 004E19B1    push       4E1A71
 004E19B6    push       dword ptr fs:[eax]
 004E19B9    mov        dword ptr fs:[eax],esp
 004E19BC    xor        eax,eax
 004E19BE    mov        dword ptr [ebp-0C],eax
 004E19C1    mov        eax,dword ptr [ebp-8]
 004E19C4    call       @LStrClr
 004E19C9    mov        eax,dword ptr [ebp-4]
 004E19CC    call       004E17DC
 004E19D1    mov        dword ptr [ebp-10],eax
 004E19D4    mov        eax,dword ptr [ebp-10]
 004E19D7    mov        edx,dword ptr [eax]
 004E19D9    call       dword ptr [edx+14]
 004E19DC    mov        esi,eax
 004E19DE    sub        esi,1
>004E19E1    jno        004E19E8
 004E19E3    call       @IntOver
 004E19E8    test       esi,esi
>004E19EA    jl         004E1A56
 004E19EC    inc        esi
 004E19ED    xor        ebx,ebx
 004E19EF    lea        ecx,[ebp-14]
 004E19F2    mov        edx,ebx
 004E19F4    mov        eax,dword ptr [ebp-10]
 004E19F7    mov        edi,dword ptr [eax]
 004E19F9    call       dword ptr [edi+0C]
 004E19FC    mov        eax,dword ptr [ebp-14]
 004E19FF    mov        edx,4E1A88; '?'
 004E1A04    call       @LStrCmp
>004E1A09    jne        004E1A37
 004E1A0B    lea        ecx,[ebp-18]
 004E1A0E    mov        edx,dword ptr [ebp-0C]
 004E1A11    mov        eax,dword ptr [ebp-4]
 004E1A14    mov        edi,dword ptr [eax]
 004E1A16    call       dword ptr [edi+0F0]; TZSQLitePreparedStatement.sub_0053F544
 004E1A1C    mov        edx,dword ptr [ebp-18]
 004E1A1F    mov        eax,dword ptr [ebp-8]
 004E1A22    call       @LStrCat
 004E1A27    mov        eax,dword ptr [ebp-8]
 004E1A2A    add        dword ptr [ebp-0C],1
>004E1A2E    jno        004E1A35
 004E1A30    call       @IntOver
>004E1A35    jmp        004E1A52
 004E1A37    lea        ecx,[ebp-1C]
 004E1A3A    mov        edx,ebx
 004E1A3C    mov        eax,dword ptr [ebp-10]
 004E1A3F    mov        edi,dword ptr [eax]
 004E1A41    call       dword ptr [edi+0C]
 004E1A44    mov        edx,dword ptr [ebp-1C]
 004E1A47    mov        eax,dword ptr [ebp-8]
 004E1A4A    call       @LStrCat
 004E1A4F    mov        eax,dword ptr [ebp-8]
 004E1A52    inc        ebx
 004E1A53    dec        esi
<004E1A54    jne        004E19EF
 004E1A56    xor        eax,eax
 004E1A58    pop        edx
 004E1A59    pop        ecx
 004E1A5A    pop        ecx
 004E1A5B    mov        dword ptr fs:[eax],edx
 004E1A5E    push       4E1A78
 004E1A63    lea        eax,[ebp-1C]
 004E1A66    mov        edx,3
 004E1A6B    call       @LStrArrayClr
 004E1A70    ret
<004E1A71    jmp        @HandleFinally
<004E1A76    jmp        004E1A63
 004E1A78    pop        edi
 004E1A79    pop        esi
 004E1A7A    pop        ebx
 004E1A7B    mov        esp,ebp
 004E1A7D    pop        ebp
 004E1A7E    ret
*}
//end;

//004E1A8C
procedure sub_004E1A8C;
begin
{*
 004E1A8C    push       ebp
 004E1A8D    mov        ebp,esp
 004E1A8F    push       ebx
 004E1A90    mov        ebx,eax
 004E1A92    mov        eax,ebx
 004E1A94    call       004DFEB4
 004E1A99    cmp        dword ptr [ebx+68],0; TZSQLitePreparedStatement.?f68:IZStatement
>004E1A9D    je         004E1AAF
 004E1A9F    mov        eax,dword ptr [ebx+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E1AA2    mov        edx,dword ptr [eax]
 004E1AA4    call       dword ptr [edx+14]
 004E1AA7    lea        eax,[ebx+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E1AAA    call       @IntfClear
 004E1AAF    pop        ebx
 004E1AB0    pop        ebp
 004E1AB1    ret
*}
end;

//004E1AB4
//function sub_004E1AB4(?:?):?;
//begin
{*
 004E1AB4    push       ebp
 004E1AB5    mov        ebp,esp
 004E1AB7    push       0
 004E1AB9    push       0
 004E1ABB    push       ebx
 004E1ABC    push       esi
 004E1ABD    mov        ebx,edx
 004E1ABF    mov        esi,eax
 004E1AC1    xor        eax,eax
 004E1AC3    push       ebp
 004E1AC4    push       4E1B32
 004E1AC9    push       dword ptr fs:[eax]
 004E1ACC    mov        dword ptr fs:[eax],esp
 004E1ACF    lea        edx,[ebp-4]
 004E1AD2    mov        eax,esi
 004E1AD4    call       004E16E8
 004E1AD9    mov        edx,dword ptr [ebp-4]
 004E1ADC    mov        eax,esi
 004E1ADE    call       004E168C
 004E1AE3    mov        edx,ebx
 004E1AE5    mov        eax,dword ptr [esi+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E1AE8    mov        ecx,dword ptr [eax]
 004E1AEA    call       dword ptr [ecx+3C]
 004E1AED    mov        ebx,eax
 004E1AEF    test       bl,bl
>004E1AF1    je         004E1B09
 004E1AF3    lea        edx,[ebp-8]
 004E1AF6    mov        eax,dword ptr [esi+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E1AF9    mov        ecx,dword ptr [eax]
 004E1AFB    call       dword ptr [ecx+40]
 004E1AFE    mov        edx,dword ptr [ebp-8]
 004E1B01    mov        eax,esi
 004E1B03    mov        ecx,dword ptr [eax]
 004E1B05    call       dword ptr [ecx]; TZSQLitePreparedStatement.sub_004DFE2C
>004E1B07    jmp        004E1B14
 004E1B09    mov        eax,dword ptr [esi+68]; TZSQLitePreparedStatement.?f68:IZStatement
 004E1B0C    mov        edx,dword ptr [eax]
 004E1B0E    call       dword ptr [edx+44]
 004E1B11    mov        dword ptr [esi+1C],eax; TZSQLitePreparedStatement.?f1C:Integer
 004E1B14    xor        eax,eax
 004E1B16    pop        edx
 004E1B17    pop        ecx
 004E1B18    pop        ecx
 004E1B19    mov        dword ptr fs:[eax],edx
 004E1B1C    push       4E1B39
 004E1B21    lea        eax,[ebp-8]
 004E1B24    call       @IntfClear
 004E1B29    lea        eax,[ebp-4]
 004E1B2C    call       @IntfClear
 004E1B31    ret
<004E1B32    jmp        @HandleFinally
<004E1B37    jmp        004E1B21
 004E1B39    mov        eax,ebx
 004E1B3B    pop        esi
 004E1B3C    pop        ebx
 004E1B3D    pop        ecx
 004E1B3E    pop        ecx
 004E1B3F    pop        ebp
 004E1B40    ret
*}
//end;

//004E1B44
//procedure sub_004E1B44(?:?; ?:?);
//begin
{*
 004E1B44    push       ebp
 004E1B45    mov        ebp,esp
 004E1B47    add        esp,0FFFFFFF8
 004E1B4A    push       ebx
 004E1B4B    push       esi
 004E1B4C    xor        ebx,ebx
 004E1B4E    mov        dword ptr [ebp-8],ebx
 004E1B51    mov        dword ptr [ebp-4],ecx
 004E1B54    mov        esi,edx
 004E1B56    mov        ebx,eax
 004E1B58    xor        eax,eax
 004E1B5A    push       ebp
 004E1B5B    push       4E1B93
 004E1B60    push       dword ptr fs:[eax]
 004E1B63    mov        dword ptr fs:[eax],esp
 004E1B66    lea        edx,[ebp-8]
 004E1B69    mov        eax,ebx
 004E1B6B    call       004E16E8
 004E1B70    mov        eax,dword ptr [ebp-8]
 004E1B73    mov        ecx,dword ptr [ebp-4]
 004E1B76    mov        edx,esi
 004E1B78    mov        ebx,dword ptr [eax]
 004E1B7A    call       dword ptr [ebx+0C]
 004E1B7D    xor        eax,eax
 004E1B7F    pop        edx
 004E1B80    pop        ecx
 004E1B81    pop        ecx
 004E1B82    mov        dword ptr fs:[eax],edx
 004E1B85    push       4E1B9A
 004E1B8A    lea        eax,[ebp-8]
 004E1B8D    call       @IntfClear
 004E1B92    ret
<004E1B93    jmp        @HandleFinally
<004E1B98    jmp        004E1B8A
 004E1B9A    pop        esi
 004E1B9B    pop        ebx
 004E1B9C    pop        ecx
 004E1B9D    pop        ecx
 004E1B9E    pop        ebp
 004E1B9F    ret
*}
//end;

//004E1BA0
//function sub_004E1BA0(?:?):?;
//begin
{*
 004E1BA0    push       ebp
 004E1BA1    mov        ebp,esp
 004E1BA3    push       0
 004E1BA5    push       ebx
 004E1BA6    push       esi
 004E1BA7    mov        esi,edx
 004E1BA9    mov        ebx,eax
 004E1BAB    xor        eax,eax
 004E1BAD    push       ebp
 004E1BAE    push       4E1BE8
 004E1BB3    push       dword ptr fs:[eax]
 004E1BB6    mov        dword ptr fs:[eax],esp
 004E1BB9    lea        edx,[ebp-4]
 004E1BBC    mov        eax,ebx
 004E1BBE    call       004E16E8
 004E1BC3    mov        eax,dword ptr [ebp-4]
 004E1BC6    mov        edx,esi
 004E1BC8    mov        ecx,dword ptr [eax]
 004E1BCA    call       dword ptr [ecx+10]
 004E1BCD    mov        esi,eax
 004E1BCF    mov        dword ptr [ebx+1C],esi; TZSQLitePreparedStatement.?f1C:Integer
 004E1BD2    xor        eax,eax
 004E1BD4    pop        edx
 004E1BD5    pop        ecx
 004E1BD6    pop        ecx
 004E1BD7    mov        dword ptr fs:[eax],edx
 004E1BDA    push       4E1BEF
 004E1BDF    lea        eax,[ebp-4]
 004E1BE2    call       @IntfClear
 004E1BE7    ret
<004E1BE8    jmp        @HandleFinally
<004E1BED    jmp        004E1BDF
 004E1BEF    mov        eax,esi
 004E1BF1    pop        esi
 004E1BF2    pop        ebx
 004E1BF3    pop        ecx
 004E1BF4    pop        ebp
 004E1BF5    ret
*}
//end;

//004E1BF8
//function sub_004E1BF8:?;
//begin
{*
 004E1BF8    push       ebp
 004E1BF9    mov        ebp,esp
 004E1BFB    push       0
 004E1BFD    push       ebx
 004E1BFE    mov        ebx,eax
 004E1C00    xor        eax,eax
 004E1C02    push       ebp
 004E1C03    push       4E1C3D
 004E1C08    push       dword ptr fs:[eax]
 004E1C0B    mov        dword ptr fs:[eax],esp
 004E1C0E    lea        edx,[ebp-4]
 004E1C11    mov        eax,ebx
 004E1C13    mov        ecx,dword ptr [eax]
 004E1C15    call       dword ptr [ecx+0F4]; TZSQLitePreparedStatement.sub_004E1994
 004E1C1B    mov        edx,dword ptr [ebp-4]
 004E1C1E    mov        eax,ebx
 004E1C20    mov        ecx,dword ptr [eax]
 004E1C22    call       dword ptr [ecx+34]; TZSQLitePreparedStatement.sub_004E1AB4
 004E1C25    mov        ebx,eax
 004E1C27    xor        eax,eax
 004E1C29    pop        edx
 004E1C2A    pop        ecx
 004E1C2B    pop        ecx
 004E1C2C    mov        dword ptr fs:[eax],edx
 004E1C2F    push       4E1C44
 004E1C34    lea        eax,[ebp-4]
 004E1C37    call       @LStrClr
 004E1C3C    ret
<004E1C3D    jmp        @HandleFinally
<004E1C42    jmp        004E1C34
 004E1C44    mov        eax,ebx
 004E1C46    pop        ebx
 004E1C47    pop        ecx
 004E1C48    pop        ebp
 004E1C49    ret
*}
//end;

//004E1C4C
//procedure sub_004E1C4C(?:?);
//begin
{*
 004E1C4C    push       ebp
 004E1C4D    mov        ebp,esp
 004E1C4F    push       0
 004E1C51    push       ebx
 004E1C52    push       esi
 004E1C53    mov        esi,edx
 004E1C55    mov        ebx,eax
 004E1C57    xor        eax,eax
 004E1C59    push       ebp
 004E1C5A    push       4E1C94
 004E1C5F    push       dword ptr fs:[eax]
 004E1C62    mov        dword ptr fs:[eax],esp
 004E1C65    lea        edx,[ebp-4]
 004E1C68    mov        eax,ebx
 004E1C6A    mov        ecx,dword ptr [eax]
 004E1C6C    call       dword ptr [ecx+0F4]; TZSQLitePreparedStatement.sub_004E1994
 004E1C72    mov        edx,dword ptr [ebp-4]
 004E1C75    mov        ecx,esi
 004E1C77    mov        eax,ebx
 004E1C79    mov        ebx,dword ptr [eax]
 004E1C7B    call       dword ptr [ebx+4]; TZSQLitePreparedStatement.sub_004E1B44
 004E1C7E    xor        eax,eax
 004E1C80    pop        edx
 004E1C81    pop        ecx
 004E1C82    pop        ecx
 004E1C83    mov        dword ptr fs:[eax],edx
 004E1C86    push       4E1C9B
 004E1C8B    lea        eax,[ebp-4]
 004E1C8E    call       @LStrClr
 004E1C93    ret
<004E1C94    jmp        @HandleFinally
<004E1C99    jmp        004E1C8B
 004E1C9B    pop        esi
 004E1C9C    pop        ebx
 004E1C9D    pop        ecx
 004E1C9E    pop        ebp
 004E1C9F    ret
*}
//end;

//004E1CA0
//function sub_004E1CA0:?;
//begin
{*
 004E1CA0    push       ebp
 004E1CA1    mov        ebp,esp
 004E1CA3    push       0
 004E1CA5    push       ebx
 004E1CA6    mov        ebx,eax
 004E1CA8    xor        eax,eax
 004E1CAA    push       ebp
 004E1CAB    push       4E1CE5
 004E1CB0    push       dword ptr fs:[eax]
 004E1CB3    mov        dword ptr fs:[eax],esp
 004E1CB6    lea        edx,[ebp-4]
 004E1CB9    mov        eax,ebx
 004E1CBB    mov        ecx,dword ptr [eax]
 004E1CBD    call       dword ptr [ecx+0F4]; TZSQLitePreparedStatement.sub_004E1994
 004E1CC3    mov        edx,dword ptr [ebp-4]
 004E1CC6    mov        eax,ebx
 004E1CC8    mov        ecx,dword ptr [eax]
 004E1CCA    call       dword ptr [ecx+8]; TZSQLitePreparedStatement.sub_004E1BA0
 004E1CCD    mov        ebx,eax
 004E1CCF    xor        eax,eax
 004E1CD1    pop        edx
 004E1CD2    pop        ecx
 004E1CD3    pop        ecx
 004E1CD4    mov        dword ptr fs:[eax],edx
 004E1CD7    push       4E1CEC
 004E1CDC    lea        eax,[ebp-4]
 004E1CDF    call       @LStrClr
 004E1CE4    ret
<004E1CE5    jmp        @HandleFinally
<004E1CEA    jmp        004E1CDC
 004E1CEC    mov        eax,ebx
 004E1CEE    pop        ebx
 004E1CEF    pop        ecx
 004E1CF0    pop        ebp
 004E1CF1    ret
*}
//end;

end.