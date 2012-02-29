{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcAdoMetadata;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata, ZPlainAdo;

type
  TZAdoDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:Connection15;//f24
    f28:byte;//f28
    destructor Destroy; virtual;
    //procedure sub_004E7A98(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E7D6C(?:?); virtual;
    //procedure sub_004E7E9C(?:?); virtual;
    //procedure sub_004E8070(?:?); virtual;
    //procedure sub_004E80E0(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E8AA0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E875C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E9098(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E9334(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E9364(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E9394(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E9C54(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E72C4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E7560(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E8D94(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004E981C(?:?); virtual;
    //procedure sub_004EA060(?:?); virtual;
    //procedure sub_004E6C18(?:?); virtual;
    //procedure sub_004E6C3C(?:?); virtual;
    //procedure sub_004E6CF0(?:?); virtual;
    //function sub_004E6D44():?; virtual;
    //function sub_004E6D4C():?; virtual;
    //function sub_004E6D50():?; virtual;
    //function sub_004E6D54():?; virtual;
    //function sub_004E6D58():?; virtual;
    //function sub_004E6D5C():?; virtual;
    //function sub_004E6D60():?; virtual;
    //function sub_004E6D64():?; virtual;
    //function sub_004E6D68():?; virtual;
    //function sub_004E6D6C():?; virtual;
    //function sub_004E6D70():?; virtual;
    //procedure sub_004E6D74(?:?); virtual;
    //procedure sub_004E6D98(?:?); virtual;
    //procedure sub_004E6DA8(?:?); virtual;
    //procedure sub_004E6E44(?:?); virtual;
    //procedure sub_004E6F08(?:?); virtual;
    //procedure sub_004E7054(?:?); virtual;
    //procedure sub_004E70B0(?:?); virtual;
    //procedure sub_004E70D4(?:?); virtual;
    //function sub_004E70F8():?; virtual;
    //function sub_004E70FC():?; virtual;
    //function sub_004E7100():?; virtual;
    //function sub_004E7104():?; virtual;
    //function sub_004E7108():?; virtual;
    //function sub_004E710C():?; virtual;
    //procedure sub_004E7110(?:?); virtual;
    //procedure sub_004E7138(?:?); virtual;
    //procedure sub_004E7164(?:?); virtual;
    //procedure sub_004E7190(?:?); virtual;
    //function sub_004E71B4():?; virtual;
    //function sub_004E71B8():?; virtual;
    //function sub_004E71BC():?; virtual;
    //function sub_004E71C0():?; virtual;
    //function sub_004E71C4():?; virtual;
    //function sub_004E71C8():?; virtual;
    //function sub_004E71CC():?; virtual;
    //function sub_004E71D0():?; virtual;
    //function sub_004E71D4():?; virtual;
    //function sub_004E71D8():?; virtual;
    //function sub_004E71DC():?; virtual;
    //function sub_004E71E0():?; virtual;
    //function sub_004E71E4():?; virtual;
    //function sub_004E71E8():?; virtual;
    //function sub_004E71EC():?; virtual;
    //function sub_004E71F0():?; virtual;
    //function sub_004E71F4():?; virtual;
    //function sub_004E71F8():?; virtual;
    //function sub_004E71FC():?; virtual;
    //function sub_004E7200():?; virtual;
    //function sub_004E7204():?; virtual;
    //function sub_004E7208():?; virtual;
    //function sub_004E720C():?; virtual;
    //function sub_004E7210():?; virtual;
    //function sub_004E7214():?; virtual;
    //function sub_004E7218():?; virtual;
    //function sub_004E7220():?; virtual;
    //function sub_004E7228():?; virtual;
    //function sub_004E7230():?; virtual;
    //function sub_004E7234():?; virtual;
    //function sub_004E723C():?; virtual;
    //function sub_004E7240():?; virtual;
    //function sub_004E7248():?; virtual;
    //function sub_004E7250():?; virtual;
    //function sub_004E7254():?; virtual;
    //function sub_004E725C():?; virtual;
    //function sub_004E7264():?; virtual;
    //function sub_004E726C():?; virtual;
    //function sub_004E7274():?; virtual;
    //function sub_004E727C():?; virtual;
    //function sub_004E7284():?; virtual;
    //function sub_004E7288():?; virtual;
    //function sub_004E728C():?; virtual;
    //function sub_004E7290():?; virtual;
    //function sub_004E7298():?; virtual;
    //function sub_004E72A0():?; virtual;
    //function sub_004E72A8():?; virtual;
    //function sub_004E72AC():?; virtual;
    //function sub_004E72B0():?; virtual;
    //function sub_004E72B4():?; virtual;
    //function sub_004E72B8():?; virtual;
    //function sub_004E72BC():?; virtual;
    //function sub_004E72C0():?; virtual;
    //function sub_004EA058():?; virtual;
    //function sub_004EA05C():?; virtual;
    //constructor Create(?:TZAdoDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;
  _DynArr_226_3 = array of ?;

implementation

{$R *.DFM}

//004E6B60
//constructor TZAdoDatabaseMetadata.Create(?:TZAdoDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004E6B60    push       ebp
 004E6B61    mov        ebp,esp
 004E6B63    push       ebx
 004E6B64    push       esi
 004E6B65    push       edi
 004E6B66    test       dl,dl
>004E6B68    je         004E6B72
 004E6B6A    add        esp,0FFFFFFF0
 004E6B6D    call       @ClassCreate
 004E6B72    mov        esi,ecx
 004E6B74    mov        ebx,edx
 004E6B76    mov        edi,eax
 004E6B78    mov        eax,dword ptr [ebp+0C]
 004E6B7B    call       @LStrAddRef
 004E6B80    xor        eax,eax
 004E6B82    push       ebp
 004E6B83    push       4E6BC6
 004E6B88    push       dword ptr fs:[eax]
 004E6B8B    mov        dword ptr fs:[eax],esp
 004E6B8E    mov        eax,dword ptr [ebp+0C]
 004E6B91    push       eax
 004E6B92    mov        eax,dword ptr [ebp+8]
 004E6B95    push       eax
 004E6B96    mov        ecx,esi
 004E6B98    test       ecx,ecx
>004E6B9A    je         004E6B9F
 004E6B9C    sub        ecx,0FFFFFFD0
 004E6B9F    xor        edx,edx
 004E6BA1    mov        eax,edi
 004E6BA3    call       004D8D74
 004E6BA8    lea        eax,[edi+24]; TZAdoDatabaseMetadata.?f24:Connection15
 004E6BAB    call       @IntfClear
 004E6BB0    xor        eax,eax
 004E6BB2    pop        edx
 004E6BB3    pop        ecx
 004E6BB4    pop        ecx
 004E6BB5    mov        dword ptr fs:[eax],edx
 004E6BB8    push       4E6BCD
 004E6BBD    lea        eax,[ebp+0C]
 004E6BC0    call       @LStrClr
 004E6BC5    ret
<004E6BC6    jmp        @HandleFinally
<004E6BCB    jmp        004E6BBD
 004E6BCD    mov        eax,edi
 004E6BCF    test       bl,bl
>004E6BD1    je         004E6BE2
 004E6BD3    call       @AfterConstruction
 004E6BD8    pop        dword ptr fs:[0]
 004E6BDF    add        esp,0C
 004E6BE2    mov        eax,edi
 004E6BE4    pop        edi
 004E6BE5    pop        esi
 004E6BE6    pop        ebx
 004E6BE7    pop        ebp
 004E6BE8    ret        8
*}
//end;

//004E6BEC
destructor TZAdoDatabaseMetadata.Destroy;
begin
{*
 004E6BEC    push       ebp
 004E6BED    mov        ebp,esp
 004E6BEF    push       ebx
 004E6BF0    push       esi
 004E6BF1    call       @BeforeDestruction
 004E6BF6    mov        ebx,edx
 004E6BF8    mov        esi,eax
 004E6BFA    mov        edx,ebx
 004E6BFC    and        dl,0FC
 004E6BFF    mov        eax,esi
 004E6C01    call       TZAbstractDatabaseMetadata.Destroy
 004E6C06    test       bl,bl
>004E6C08    jle        004E6C11
 004E6C0A    mov        eax,esi
 004E6C0C    call       @ClassDestroy
 004E6C11    pop        esi
 004E6C12    pop        ebx
 004E6C13    pop        ebp
 004E6C14    ret
*}
end;

//004E6C18
//procedure sub_004E6C18(?:?);
//begin
{*
 004E6C18    push       ebp
 004E6C19    mov        ebp,esp
 004E6C1B    push       ebx
 004E6C1C    mov        ebx,edx
 004E6C1E    mov        eax,ebx
 004E6C20    mov        edx,4E6C38; 'ado'
 004E6C25    call       @LStrAsg
 004E6C2A    pop        ebx
 004E6C2B    pop        ebp
 004E6C2C    ret
*}
//end;

//004E6C3C
//procedure sub_004E6C3C(?:?);
//begin
{*
 004E6C3C    push       ebp
 004E6C3D    mov        ebp,esp
 004E6C3F    xor        ecx,ecx
 004E6C41    push       ecx
 004E6C42    push       ecx
 004E6C43    push       ecx
 004E6C44    push       ecx
 004E6C45    push       ebx
 004E6C46    push       esi
 004E6C47    mov        esi,edx
 004E6C49    mov        ebx,eax
 004E6C4B    xor        eax,eax
 004E6C4D    push       ebp
 004E6C4E    push       4E6CD3
 004E6C53    push       dword ptr fs:[eax]
 004E6C56    mov        dword ptr fs:[eax],esp
 004E6C59    lea        eax,[ebp-4]
 004E6C5C    call       @WStrClr
 004E6C61    push       eax
 004E6C62    lea        edx,[ebp-10]
 004E6C65    mov        eax,ebx
 004E6C67    mov        ecx,dword ptr [eax]
 004E6C69    call       dword ptr [ecx+238]; TZAdoDatabaseMetadata.sub_004D8E64
 004E6C6F    mov        edx,dword ptr [ebp-10]
 004E6C72    lea        eax,[ebp-0C]
 004E6C75    mov        ecx,4E6CE0; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004E6C7A    call       @IntfCast
 004E6C7F    mov        eax,dword ptr [ebp-0C]
 004E6C82    lea        edx,[ebp-8]
 004E6C85    mov        ecx,dword ptr [eax]
 004E6C87    call       dword ptr [ecx+94]
 004E6C8D    mov        eax,dword ptr [ebp-8]
 004E6C90    push       eax
 004E6C91    mov        eax,dword ptr [eax]
 004E6C93    call       dword ptr [eax+38]
 004E6C96    call       @CheckAutoResult
 004E6C9B    mov        edx,dword ptr [ebp-4]
 004E6C9E    mov        eax,esi
 004E6CA0    call       @LStrFromWStr
 004E6CA5    xor        eax,eax
 004E6CA7    pop        edx
 004E6CA8    pop        ecx
 004E6CA9    pop        ecx
 004E6CAA    mov        dword ptr fs:[eax],edx
 004E6CAD    push       4E6CDA
 004E6CB2    lea        eax,[ebp-10]
 004E6CB5    call       @IntfClear
 004E6CBA    lea        eax,[ebp-0C]
 004E6CBD    call       @IntfClear
 004E6CC2    lea        eax,[ebp-8]
 004E6CC5    call       @IntfClear
 004E6CCA    lea        eax,[ebp-4]
 004E6CCD    call       @WStrClr
 004E6CD2    ret
<004E6CD3    jmp        @HandleFinally
<004E6CD8    jmp        004E6CB2
 004E6CDA    pop        esi
 004E6CDB    pop        ebx
 004E6CDC    mov        esp,ebp
 004E6CDE    pop        ebp
 004E6CDF    ret
*}
//end;

//004E6CF0
//procedure sub_004E6CF0(?:?);
//begin
{*
 004E6CF0    push       ebp
 004E6CF1    mov        ebp,esp
 004E6CF3    push       ebx
 004E6CF4    mov        ebx,edx
 004E6CF6    mov        eax,ebx
 004E6CF8    mov        edx,4E6D10; 'Zeos Database Connectivity Driver for Microsoft ADO'
 004E6CFD    call       @LStrAsg
 004E6D02    pop        ebx
 004E6D03    pop        ebp
 004E6D04    ret
*}
//end;

//004E6D44
//function sub_004E6D44():?;
//begin
{*
 004E6D44    mov        eax,1
 004E6D49    ret
*}
//end;

//004E6D4C
//function sub_004E6D4C():?;
//begin
{*
 004E6D4C    xor        eax,eax
 004E6D4E    ret
*}
//end;

//004E6D50
//function sub_004E6D50():?;
//begin
{*
 004E6D50    xor        eax,eax
 004E6D52    ret
*}
//end;

//004E6D54
//function sub_004E6D54():?;
//begin
{*
 004E6D54    xor        eax,eax
 004E6D56    ret
*}
//end;

//004E6D58
//function sub_004E6D58():?;
//begin
{*
 004E6D58    mov        al,1
 004E6D5A    ret
*}
//end;

//004E6D5C
//function sub_004E6D5C():?;
//begin
{*
 004E6D5C    mov        al,1
 004E6D5E    ret
*}
//end;

//004E6D60
//function sub_004E6D60():?;
//begin
{*
 004E6D60    mov        al,1
 004E6D62    ret
*}
//end;

//004E6D64
//function sub_004E6D64():?;
//begin
{*
 004E6D64    mov        al,1
 004E6D66    ret
*}
//end;

//004E6D68
//function sub_004E6D68():?;
//begin
{*
 004E6D68    mov        al,1
 004E6D6A    ret
*}
//end;

//004E6D6C
//function sub_004E6D6C():?;
//begin
{*
 004E6D6C    mov        al,1
 004E6D6E    ret
*}
//end;

//004E6D70
//function sub_004E6D70():?;
//begin
{*
 004E6D70    mov        al,1
 004E6D72    ret
*}
//end;

//004E6D74
//procedure sub_004E6D74(?:?);
//begin
{*
 004E6D74    push       ebp
 004E6D75    mov        ebp,esp
 004E6D77    push       ebx
 004E6D78    mov        ebx,edx
 004E6D7A    mov        eax,ebx
 004E6D7C    mov        edx,4E6D94; '[]'
 004E6D81    call       @LStrAsg
 004E6D86    pop        ebx
 004E6D87    pop        ebp
 004E6D88    ret
*}
//end;

//004E6D98
//procedure sub_004E6D98(?:?);
//begin
{*
 004E6D98    push       ebp
 004E6D99    mov        ebp,esp
 004E6D9B    push       ebx
 004E6D9C    mov        ebx,edx
 004E6D9E    mov        eax,ebx
 004E6DA0    call       @LStrClr
 004E6DA5    pop        ebx
 004E6DA6    pop        ebp
 004E6DA7    ret
*}
//end;

//004E6DA8
//procedure sub_004E6DA8(?:?);
//begin
{*
 004E6DA8    push       ebp
 004E6DA9    mov        ebp,esp
 004E6DAB    push       ebx
 004E6DAC    mov        ebx,edx
 004E6DAE    mov        eax,ebx
 004E6DB0    mov        edx,4E6DC8; 'ABS,ACOS,ASIN,ATAN,ATN2,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,PI,POWER,RADIANS,RAND,ROUND,SIGN,SIN,SQUARE,SQRT,TAN'
 004E6DB5    call       @LStrAsg
 004E6DBA    pop        ebx
 004E6DBB    pop        ebp
 004E6DBC    ret
*}
//end;

//004E6E44
//procedure sub_004E6E44(?:?);
//begin
{*
 004E6E44    push       ebp
 004E6E45    mov        ebp,esp
 004E6E47    push       ebx
 004E6E48    mov        ebx,edx
 004E6E4A    mov        eax,ebx
 004E6E4C    mov        edx,4E6E64; 'ASCII,CHAR,CHARINDEX,DIFFERENCE,LEFT,LEN,LOWER,LTRIM,NCHAR,PATINDEX,REPLACE,QUOTENAME,REPLICATE,REVERSE,RIGHT,RTRIM,SOUNDEX,SPACE,STR,STUFF,SUBSTRING,UNICODE,UPPER'
 004E6E51    call       @LStrAsg
 004E6E56    pop        ebx
 004E6E57    pop        ebp
 004E6E58    ret
*}
//end;

//004E6F08
//procedure sub_004E6F08(?:?);
//begin
{*
 004E6F08    push       ebp
 004E6F09    mov        ebp,esp
 004E6F0B    push       ebx
 004E6F0C    mov        ebx,edx
 004E6F0E    mov        eax,ebx
 004E6F10    mov        edx,4E6F28; 'APP_NAME,CASE,CAST,CONVERT,COALESCE,CURRENT_TIMESTAMP,CURRENT_USER,DATALENGTH,@@ERROR,FORMATMESSAGE,GETANSINULL,HOST_ID,HOST_NAME,IDENT_INCR,IDENT_SEED,@@IDENTITY,IDENTITY,ISDATE,ISNULL,ISNUMERIC,NEWID,NULLIF,PARSENAME,PERMISSIONS,@@ROWCOUNT,SESSION_USER,STATS_DATE,SYSTEM_USER,@@TRANCOUNT,USER_NAME'
 004E6F15    call       @LStrAsg
 004E6F1A    pop        ebx
 004E6F1B    pop        ebp
 004E6F1C    ret
*}
//end;

//004E7054
//procedure sub_004E7054(?:?);
//begin
{*
 004E7054    push       ebp
 004E7055    mov        ebp,esp
 004E7057    push       ebx
 004E7058    mov        ebx,edx
 004E705A    mov        eax,ebx
 004E705C    mov        edx,4E7074; 'DATEADD,DATEDIFF,DATENAME,DATEPART,DAY,GETDATE,MONTH,YEAR'
 004E7061    call       @LStrAsg
 004E7066    pop        ebx
 004E7067    pop        ebp
 004E7068    ret
*}
//end;

//004E70B0
//procedure sub_004E70B0(?:?);
//begin
{*
 004E70B0    push       ebp
 004E70B1    mov        ebp,esp
 004E70B3    push       ebx
 004E70B4    mov        ebx,edx
 004E70B6    mov        eax,ebx
 004E70B8    mov        edx,4E70D0; '/'
 004E70BD    call       @LStrAsg
 004E70C2    pop        ebx
 004E70C3    pop        ebp
 004E70C4    ret
*}
//end;

//004E70D4
//procedure sub_004E70D4(?:?);
//begin
{*
 004E70D4    push       ebp
 004E70D5    mov        ebp,esp
 004E70D7    push       ebx
 004E70D8    mov        ebx,edx
 004E70DA    mov        eax,ebx
 004E70DC    mov        edx,4E70F4; '@$#'
 004E70E1    call       @LStrAsg
 004E70E6    pop        ebx
 004E70E7    pop        ebp
 004E70E8    ret
*}
//end;

//004E70F8
//function sub_004E70F8():?;
//begin
{*
 004E70F8    mov        al,1
 004E70FA    ret
*}
//end;

//004E70FC
//function sub_004E70FC():?;
//begin
{*
 004E70FC    mov        al,1
 004E70FE    ret
*}
//end;

//004E7100
//function sub_004E7100():?;
//begin
{*
 004E7100    mov        al,1
 004E7102    ret
*}
//end;

//004E7104
//function sub_004E7104():?;
//begin
{*
 004E7104    mov        al,1
 004E7106    ret
*}
//end;

//004E7108
//function sub_004E7108():?;
//begin
{*
 004E7108    mov        al,1
 004E710A    ret
*}
//end;

//004E710C
//function sub_004E710C():?;
//begin
{*
 004E710C    xor        eax,eax
 004E710E    ret
*}
//end;

//004E7110
//procedure sub_004E7110(?:?);
//begin
{*
 004E7110    push       ebp
 004E7111    mov        ebp,esp
 004E7113    push       ebx
 004E7114    mov        ebx,edx
 004E7116    mov        eax,ebx
 004E7118    mov        edx,4E7130; 'owner'
 004E711D    call       @LStrAsg
 004E7122    pop        ebx
 004E7123    pop        ebp
 004E7124    ret
*}
//end;

//004E7138
//procedure sub_004E7138(?:?);
//begin
{*
 004E7138    push       ebp
 004E7139    mov        ebp,esp
 004E713B    push       ebx
 004E713C    mov        ebx,edx
 004E713E    mov        eax,ebx
 004E7140    mov        edx,4E7158; 'procedure'
 004E7145    call       @LStrAsg
 004E714A    pop        ebx
 004E714B    pop        ebp
 004E714C    ret
*}
//end;

//004E7164
//procedure sub_004E7164(?:?);
//begin
{*
 004E7164    push       ebp
 004E7165    mov        ebp,esp
 004E7167    push       ebx
 004E7168    mov        ebx,edx
 004E716A    mov        eax,ebx
 004E716C    mov        edx,4E7184; 'database'
 004E7171    call       @LStrAsg
 004E7176    pop        ebx
 004E7177    pop        ebp
 004E7178    ret
*}
//end;

//004E7190
//procedure sub_004E7190(?:?);
//begin
{*
 004E7190    push       ebp
 004E7191    mov        ebp,esp
 004E7193    push       ebx
 004E7194    mov        ebx,edx
 004E7196    mov        eax,ebx
 004E7198    mov        edx,4E71B0; '.'
 004E719D    call       @LStrAsg
 004E71A2    pop        ebx
 004E71A3    pop        ebp
 004E71A4    ret
*}
//end;

//004E71B4
//function sub_004E71B4():?;
//begin
{*
 004E71B4    mov        al,1
 004E71B6    ret
*}
//end;

//004E71B8
//function sub_004E71B8():?;
//begin
{*
 004E71B8    mov        al,1
 004E71BA    ret
*}
//end;

//004E71BC
//function sub_004E71BC():?;
//begin
{*
 004E71BC    mov        al,1
 004E71BE    ret
*}
//end;

//004E71C0
//function sub_004E71C0():?;
//begin
{*
 004E71C0    mov        al,1
 004E71C2    ret
*}
//end;

//004E71C4
//function sub_004E71C4():?;
//begin
{*
 004E71C4    mov        al,1
 004E71C6    ret
*}
//end;

//004E71C8
//function sub_004E71C8():?;
//begin
{*
 004E71C8    mov        al,1
 004E71CA    ret
*}
//end;

//004E71CC
//function sub_004E71CC():?;
//begin
{*
 004E71CC    mov        al,1
 004E71CE    ret
*}
//end;

//004E71D0
//function sub_004E71D0():?;
//begin
{*
 004E71D0    mov        al,1
 004E71D2    ret
*}
//end;

//004E71D4
//function sub_004E71D4():?;
//begin
{*
 004E71D4    mov        al,1
 004E71D6    ret
*}
//end;

//004E71D8
//function sub_004E71D8():?;
//begin
{*
 004E71D8    mov        al,1
 004E71DA    ret
*}
//end;

//004E71DC
//function sub_004E71DC():?;
//begin
{*
 004E71DC    mov        al,1
 004E71DE    ret
*}
//end;

//004E71E0
//function sub_004E71E0():?;
//begin
{*
 004E71E0    mov        al,1
 004E71E2    ret
*}
//end;

//004E71E4
//function sub_004E71E4():?;
//begin
{*
 004E71E4    mov        al,1
 004E71E6    ret
*}
//end;

//004E71E8
//function sub_004E71E8():?;
//begin
{*
 004E71E8    mov        al,1
 004E71EA    ret
*}
//end;

//004E71EC
//function sub_004E71EC():?;
//begin
{*
 004E71EC    mov        al,1
 004E71EE    ret
*}
//end;

//004E71F0
//function sub_004E71F0():?;
//begin
{*
 004E71F0    mov        al,1
 004E71F2    ret
*}
//end;

//004E71F4
//function sub_004E71F4():?;
//begin
{*
 004E71F4    mov        al,1
 004E71F6    ret
*}
//end;

//004E71F8
//function sub_004E71F8():?;
//begin
{*
 004E71F8    mov        al,1
 004E71FA    ret
*}
//end;

//004E71FC
//function sub_004E71FC():?;
//begin
{*
 004E71FC    mov        al,1
 004E71FE    ret
*}
//end;

//004E7200
//function sub_004E7200():?;
//begin
{*
 004E7200    mov        al,1
 004E7202    ret
*}
//end;

//004E7204
//function sub_004E7204():?;
//begin
{*
 004E7204    mov        al,1
 004E7206    ret
*}
//end;

//004E7208
//function sub_004E7208():?;
//begin
{*
 004E7208    mov        al,1
 004E720A    ret
*}
//end;

//004E720C
//function sub_004E720C():?;
//begin
{*
 004E720C    mov        al,1
 004E720E    ret
*}
//end;

//004E7210
//function sub_004E7210():?;
//begin
{*
 004E7210    xor        eax,eax
 004E7212    ret
*}
//end;

//004E7214
//function sub_004E7214():?;
//begin
{*
 004E7214    xor        eax,eax
 004E7216    ret
*}
//end;

//004E7218
//function sub_004E7218():?;
//begin
{*
 004E7218    mov        eax,3E80
 004E721D    ret
*}
//end;

//004E7220
//function sub_004E7220():?;
//begin
{*
 004E7220    mov        eax,1F40
 004E7225    ret
*}
//end;

//004E7228
//function sub_004E7228():?;
//begin
{*
 004E7228    mov        eax,80
 004E722D    ret
*}
//end;

//004E7230
//function sub_004E7230():?;
//begin
{*
 004E7230    xor        eax,eax
 004E7232    ret
*}
//end;

//004E7234
//function sub_004E7234():?;
//begin
{*
 004E7234    mov        eax,10
 004E7239    ret
*}
//end;

//004E723C
//function sub_004E723C():?;
//begin
{*
 004E723C    xor        eax,eax
 004E723E    ret
*}
//end;

//004E7240
//function sub_004E7240():?;
//begin
{*
 004E7240    mov        eax,1000
 004E7245    ret
*}
//end;

//004E7248
//function sub_004E7248():?;
//begin
{*
 004E7248    mov        eax,400
 004E724D    ret
*}
//end;

//004E7250
//function sub_004E7250():?;
//begin
{*
 004E7250    xor        eax,eax
 004E7252    ret
*}
//end;

//004E7254
//function sub_004E7254():?;
//begin
{*
 004E7254    mov        eax,80
 004E7259    ret
*}
//end;

//004E725C
//function sub_004E725C():?;
//begin
{*
 004E725C    mov        eax,384
 004E7261    ret
*}
//end;

//004E7264
//function sub_004E7264():?;
//begin
{*
 004E7264    mov        eax,80
 004E7269    ret
*}
//end;

//004E726C
//function sub_004E726C():?;
//begin
{*
 004E726C    mov        eax,80
 004E7271    ret
*}
//end;

//004E7274
//function sub_004E7274():?;
//begin
{*
 004E7274    mov        eax,80
 004E7279    ret
*}
//end;

//004E727C
//function sub_004E727C():?;
//begin
{*
 004E727C    mov        eax,1F7C
 004E7281    ret
*}
//end;

//004E7284
//function sub_004E7284():?;
//begin
{*
 004E7284    xor        eax,eax
 004E7286    ret
*}
//end;

//004E7288
//function sub_004E7288():?;
//begin
{*
 004E7288    xor        eax,eax
 004E728A    ret
*}
//end;

//004E728C
//function sub_004E728C():?;
//begin
{*
 004E728C    xor        eax,eax
 004E728E    ret
*}
//end;

//004E7290
//function sub_004E7290():?;
//begin
{*
 004E7290    mov        eax,80
 004E7295    ret
*}
//end;

//004E7298
//function sub_004E7298():?;
//begin
{*
 004E7298    mov        eax,100
 004E729D    ret
*}
//end;

//004E72A0
//function sub_004E72A0():?;
//begin
{*
 004E72A0    mov        eax,80
 004E72A5    ret
*}
//end;

//004E72A8
//function sub_004E72A8():?;
//begin
{*
 004E72A8    mov        al,2
 004E72AA    ret
*}
//end;

//004E72AC
//function sub_004E72AC():?;
//begin
{*
 004E72AC    mov        al,1
 004E72AE    ret
*}
//end;

//004E72B0
//function sub_004E72B0():?;
//begin
{*
 004E72B0    mov        al,1
 004E72B2    ret
*}
//end;

//004E72B4
//function sub_004E72B4():?;
//begin
{*
 004E72B4    mov        al,1
 004E72B6    ret
*}
//end;

//004E72B8
//function sub_004E72B8():?;
//begin
{*
 004E72B8    xor        eax,eax
 004E72BA    ret
*}
//end;

//004E72BC
//function sub_004E72BC():?;
//begin
{*
 004E72BC    xor        eax,eax
 004E72BE    ret
*}
//end;

//004E72C0
//function sub_004E72C0():?;
//begin
{*
 004E72C0    xor        eax,eax
 004E72C2    ret
*}
//end;

//004E72C4
//procedure sub_004E72C4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E72C4    push       ebp
 004E72C5    mov        ebp,esp
 004E72C7    add        esp,0FFFFFFC4
 004E72CA    push       ebx
 004E72CB    push       esi
 004E72CC    push       edi
 004E72CD    xor        ebx,ebx
 004E72CF    mov        dword ptr [ebp-3C],ebx
 004E72D2    mov        dword ptr [ebp-38],ebx
 004E72D5    mov        dword ptr [ebp-34],ebx
 004E72D8    mov        dword ptr [ebp-30],ebx
 004E72DB    mov        dword ptr [ebp-2C],ebx
 004E72DE    mov        dword ptr [ebp-8],ebx
 004E72E1    mov        dword ptr [ebp-4],ecx
 004E72E4    mov        edi,edx
 004E72E6    mov        esi,eax
 004E72E8    mov        ebx,dword ptr [ebp+8]
 004E72EB    xor        eax,eax
 004E72ED    push       ebp
 004E72EE    push       4E7494
 004E72F3    push       dword ptr fs:[eax]
 004E72F6    mov        dword ptr fs:[eax],esp
 004E72F9    mov        ecx,ebx
 004E72FB    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 004E7301    mov        edx,dword ptr [edx]
 004E7303    mov        eax,esi
 004E7305    call       004D8E7C
 004E730A    push       3
 004E730C    lea        eax,[ebp-8]
 004E730F    push       eax
 004E7310    mov        dword ptr [ebp-28],edi
 004E7313    mov        byte ptr [ebp-24],0B
 004E7317    mov        eax,dword ptr [ebp-4]
 004E731A    mov        dword ptr [ebp-20],eax
 004E731D    mov        byte ptr [ebp-1C],0B
 004E7321    mov        eax,dword ptr [ebp+0C]
 004E7324    mov        dword ptr [ebp-18],eax
 004E7327    mov        byte ptr [ebp-14],0B
 004E732B    xor        eax,eax
 004E732D    mov        dword ptr [ebp-10],eax
 004E7330    mov        byte ptr [ebp-0C],0B
 004E7334    lea        ecx,[ebp-28]
 004E7337    mov        edx,10
 004E733C    mov        eax,esi
 004E733E    call       004EA0D4
 004E7343    cmp        dword ptr [ebp-8],0
>004E7347    je         004E7469
 004E734D    push       0
 004E734F    mov        eax,dword ptr [ebp-8]
 004E7352    push       eax
 004E7353    lea        edx,[ebp-2C]
 004E7356    mov        eax,esi
 004E7358    call       004EA080
 004E735D    mov        ecx,dword ptr [ebp-2C]
 004E7360    mov        dl,1
 004E7362    mov        eax,[004E2510]; TZAdoResultSet
 004E7367    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E736C    mov        esi,eax
>004E736E    jmp        004E744C
 004E7373    mov        eax,dword ptr [ebx]
 004E7375    mov        edx,dword ptr [eax]
 004E7377    call       dword ptr [edx+1E4]
 004E737D    lea        ecx,[ebp-30]
 004E7380    mov        edx,4E74AC; 'PROCEDURE_CATALOG'
 004E7385    mov        eax,esi
 004E7387    mov        edi,dword ptr [eax]
 004E7389    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E738C    mov        ecx,dword ptr [ebp-30]
 004E738F    mov        eax,dword ptr [ebx]
 004E7391    mov        edx,4E74C8; 'PROCEDURE_CAT'
 004E7396    mov        edi,dword ptr [eax]
 004E7398    call       dword ptr [edi+1A8]
 004E739E    lea        ecx,[ebp-34]
 004E73A1    mov        edx,4E74E0; 'PROCEDURE_SCHEMA'
 004E73A6    mov        eax,esi
 004E73A8    mov        edi,dword ptr [eax]
 004E73AA    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E73AD    mov        ecx,dword ptr [ebp-34]
 004E73B0    mov        eax,dword ptr [ebx]
 004E73B2    mov        edx,4E74FC; 'PROCEDURE_SCHEM'
 004E73B7    mov        edi,dword ptr [eax]
 004E73B9    call       dword ptr [edi+1A8]
 004E73BF    lea        ecx,[ebp-38]
 004E73C2    mov        edx,4E7514; 'PROCEDURE_NAME'
 004E73C7    mov        eax,esi
 004E73C9    mov        edi,dword ptr [eax]
 004E73CB    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E73CE    mov        ecx,dword ptr [ebp-38]
 004E73D1    mov        eax,dword ptr [ebx]
 004E73D3    mov        edx,4E7514; 'PROCEDURE_NAME'
 004E73D8    mov        edi,dword ptr [eax]
 004E73DA    call       dword ptr [edi+1A8]
 004E73E0    lea        ecx,[ebp-3C]
 004E73E3    mov        edx,4E752C; 'DESCRIPTION'
 004E73E8    mov        eax,esi
 004E73EA    mov        edi,dword ptr [eax]
 004E73EC    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E73EF    mov        ecx,dword ptr [ebp-3C]
 004E73F2    mov        eax,dword ptr [ebx]
 004E73F4    mov        edx,4E7540; 'REMARKS'
 004E73F9    mov        edi,dword ptr [eax]
 004E73FB    call       dword ptr [edi+1A8]
 004E7401    mov        edx,4E7550; 'PROCEDURE_TYPE'
 004E7406    mov        eax,esi
 004E7408    mov        ecx,dword ptr [eax]
 004E740A    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E740D    movsx      ecx,ax
 004E7410    sub        ecx,1
>004E7413    jno        004E741A
 004E7415    call       @IntOver
 004E741A    add        ecx,8000
 004E7420    cmp        ecx,0FFFF
>004E7426    jbe        004E742D
 004E7428    call       @BoundErr
 004E742D    add        ecx,0FFFF8000
 004E7433    mov        eax,dword ptr [ebx]
 004E7435    mov        edx,4E7550; 'PROCEDURE_TYPE'
 004E743A    mov        edi,dword ptr [eax]
 004E743C    call       dword ptr [edi+18C]
 004E7442    mov        eax,dword ptr [ebx]
 004E7444    mov        edx,dword ptr [eax]
 004E7446    call       dword ptr [edx+1D0]
 004E744C    mov        eax,esi
 004E744E    mov        edx,dword ptr [eax]
 004E7450    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E7453    test       al,al
<004E7455    jne        004E7373
 004E745B    mov        eax,esi
 004E745D    mov        edx,dword ptr [eax]
 004E745F    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E7462    mov        eax,esi
 004E7464    call       TObject.Free
 004E7469    xor        eax,eax
 004E746B    pop        edx
 004E746C    pop        ecx
 004E746D    pop        ecx
 004E746E    mov        dword ptr fs:[eax],edx
 004E7471    push       4E749B
 004E7476    lea        eax,[ebp-3C]
 004E7479    mov        edx,4
 004E747E    call       @LStrArrayClr
 004E7483    lea        eax,[ebp-2C]
 004E7486    call       @IntfClear
 004E748B    lea        eax,[ebp-8]
 004E748E    call       @IntfClear
 004E7493    ret
<004E7494    jmp        @HandleFinally
<004E7499    jmp        004E7476
 004E749B    pop        edi
 004E749C    pop        esi
 004E749D    pop        ebx
 004E749E    mov        esp,ebp
 004E74A0    pop        ebp
 004E74A1    ret        8
*}
//end;

//004E7560
//procedure sub_004E7560(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E7560    push       ebp
 004E7561    mov        ebp,esp
 004E7563    push       ecx
 004E7564    mov        ecx,8
 004E7569    push       0
 004E756B    push       0
 004E756D    dec        ecx
<004E756E    jne        004E7569
 004E7570    xchg       ecx,dword ptr [ebp-4]
 004E7573    push       ebx
 004E7574    push       esi
 004E7575    push       edi
 004E7576    mov        dword ptr [ebp-4],ecx
 004E7579    mov        edi,edx
 004E757B    mov        esi,eax
 004E757D    mov        ebx,dword ptr [ebp+8]
 004E7580    xor        eax,eax
 004E7582    push       ebp
 004E7583    push       4E789C
 004E7588    push       dword ptr fs:[eax]
 004E758B    mov        dword ptr fs:[eax],esp
 004E758E    mov        ecx,ebx
 004E7590    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 004E7596    mov        edx,dword ptr [edx]
 004E7598    mov        eax,esi
 004E759A    call       004D8E7C
 004E759F    push       2
 004E75A1    lea        eax,[ebp-8]
 004E75A4    push       eax
 004E75A5    mov        dword ptr [ebp-20],edi
 004E75A8    mov        byte ptr [ebp-1C],0B
 004E75AC    mov        eax,dword ptr [ebp-4]
 004E75AF    mov        dword ptr [ebp-18],eax
 004E75B2    mov        byte ptr [ebp-14],0B
 004E75B6    mov        eax,dword ptr [ebp+10]
 004E75B9    mov        dword ptr [ebp-10],eax
 004E75BC    mov        byte ptr [ebp-0C],0B
 004E75C0    lea        ecx,[ebp-20]
 004E75C3    mov        edx,1A
 004E75C8    mov        eax,esi
 004E75CA    call       004EA0D4
 004E75CF    cmp        dword ptr [ebp-8],0
>004E75D3    je         004E7871
 004E75D9    push       0
 004E75DB    mov        eax,dword ptr [ebp-8]
 004E75DE    push       eax
 004E75DF    lea        edx,[ebp-24]
 004E75E2    mov        eax,esi
 004E75E4    call       004EA080
 004E75E9    mov        ecx,dword ptr [ebp-24]
 004E75EC    mov        dl,1
 004E75EE    mov        eax,[004E2510]; TZAdoResultSet
 004E75F3    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E75F8    mov        esi,eax
>004E75FA    jmp        004E7854
 004E75FF    mov        eax,dword ptr [ebx]
 004E7601    mov        edx,dword ptr [eax]
 004E7603    call       dword ptr [edx+1E4]
 004E7609    lea        ecx,[ebp-28]
 004E760C    mov        edx,4E78B4; 'PROCEDURE_CATALOG'
 004E7611    mov        eax,esi
 004E7613    mov        edi,dword ptr [eax]
 004E7615    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7618    mov        ecx,dword ptr [ebp-28]
 004E761B    mov        eax,dword ptr [ebx]
 004E761D    mov        edx,4E78D0; 'PROCEDURE_CAT'
 004E7622    mov        edi,dword ptr [eax]
 004E7624    call       dword ptr [edi+1A8]
 004E762A    lea        ecx,[ebp-2C]
 004E762D    mov        edx,4E78E8; 'PROCEDURE_SCHEMA'
 004E7632    mov        eax,esi
 004E7634    mov        edi,dword ptr [eax]
 004E7636    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7639    mov        ecx,dword ptr [ebp-2C]
 004E763C    mov        eax,dword ptr [ebx]
 004E763E    mov        edx,4E7904; 'PROCEDURE_SCHEM'
 004E7643    mov        edi,dword ptr [eax]
 004E7645    call       dword ptr [edi+1A8]
 004E764B    lea        ecx,[ebp-30]
 004E764E    mov        edx,4E791C; 'PROCEDURE_NAME'
 004E7653    mov        eax,esi
 004E7655    mov        edi,dword ptr [eax]
 004E7657    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E765A    mov        ecx,dword ptr [ebp-30]
 004E765D    mov        eax,dword ptr [ebx]
 004E765F    mov        edx,4E791C; 'PROCEDURE_NAME'
 004E7664    mov        edi,dword ptr [eax]
 004E7666    call       dword ptr [edi+1A8]
 004E766C    lea        ecx,[ebp-34]
 004E766F    mov        edx,4E7934; 'PARAMETER_NAME'
 004E7674    mov        eax,esi
 004E7676    mov        edi,dword ptr [eax]
 004E7678    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E767B    mov        ecx,dword ptr [ebp-34]
 004E767E    mov        eax,dword ptr [ebx]
 004E7680    mov        edx,4E794C; 'COLUMN_NAME'
 004E7685    mov        edi,dword ptr [eax]
 004E7687    call       dword ptr [edi+1A8]
 004E768D    mov        edx,4E7960; 'PARAMETER_TYPE'
 004E7692    mov        eax,esi
 004E7694    mov        ecx,dword ptr [eax]
 004E7696    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E7699    dec        ax
>004E769C    je         004E76AF
 004E769E    dec        ax
>004E76A1    je         004E76C4
 004E76A3    dec        ax
>004E76A6    je         004E76D9
 004E76A8    dec        ax
>004E76AB    je         004E76EE
>004E76AD    jmp        004E7703
 004E76AF    mov        eax,dword ptr [ebx]
 004E76B1    mov        cx,1
 004E76B5    mov        edx,4E7978; 'COLUMN_TYPE'
 004E76BA    mov        edi,dword ptr [eax]
 004E76BC    call       dword ptr [edi+18C]
>004E76C2    jmp        004E7714
 004E76C4    mov        eax,dword ptr [ebx]
 004E76C6    mov        cx,3
 004E76CA    mov        edx,4E7978; 'COLUMN_TYPE'
 004E76CF    mov        edi,dword ptr [eax]
 004E76D1    call       dword ptr [edi+18C]
>004E76D7    jmp        004E7714
 004E76D9    mov        eax,dword ptr [ebx]
 004E76DB    mov        cx,2
 004E76DF    mov        edx,4E7978; 'COLUMN_TYPE'
 004E76E4    mov        edi,dword ptr [eax]
 004E76E6    call       dword ptr [edi+18C]
>004E76EC    jmp        004E7714
 004E76EE    mov        eax,dword ptr [ebx]
 004E76F0    mov        cx,4
 004E76F4    mov        edx,4E7978; 'COLUMN_TYPE'
 004E76F9    mov        edi,dword ptr [eax]
 004E76FB    call       dword ptr [edi+18C]
>004E7701    jmp        004E7714
 004E7703    mov        eax,dword ptr [ebx]
 004E7705    xor        ecx,ecx
 004E7707    mov        edx,4E7978; 'COLUMN_TYPE'
 004E770C    mov        edi,dword ptr [eax]
 004E770E    call       dword ptr [edi+18C]
 004E7714    mov        edx,4E798C; 'DATA_TYPE'
 004E7719    mov        eax,esi
 004E771B    mov        ecx,dword ptr [eax]
 004E771D    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E7720    call       004E1D64
 004E7725    xor        ecx,ecx
 004E7727    mov        cl,al
 004E7729    mov        eax,dword ptr [ebx]
 004E772B    mov        edx,4E798C; 'DATA_TYPE'
 004E7730    mov        edi,dword ptr [eax]
 004E7732    call       dword ptr [edi+18C]
 004E7738    lea        ecx,[ebp-38]
 004E773B    mov        edx,4E79A0; 'TYPE_NAME'
 004E7740    mov        eax,esi
 004E7742    mov        edi,dword ptr [eax]
 004E7744    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7747    mov        ecx,dword ptr [ebp-38]
 004E774A    mov        eax,dword ptr [ebx]
 004E774C    mov        edx,4E79A0; 'TYPE_NAME'
 004E7751    mov        edi,dword ptr [eax]
 004E7753    call       dword ptr [edi+1A8]
 004E7759    mov        edx,4E79B4; 'NUMERIC_PRECISION'
 004E775E    mov        eax,esi
 004E7760    mov        ecx,dword ptr [eax]
 004E7762    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E7768    mov        ecx,eax
 004E776A    mov        eax,dword ptr [ebx]
 004E776C    mov        edx,4E79D0; 'PRECISION'
 004E7771    mov        edi,dword ptr [eax]
 004E7773    call       dword ptr [edi+190]
 004E7779    mov        edx,4E79E4; 'CHARACTER_OCTET_LENGTH'
 004E777E    mov        eax,esi
 004E7780    mov        ecx,dword ptr [eax]
 004E7782    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E7788    mov        ecx,eax
 004E778A    mov        eax,dword ptr [ebx]
 004E778C    mov        edx,4E7A04; 'LENGTH'
 004E7791    mov        edi,dword ptr [eax]
 004E7793    call       dword ptr [edi+190]
 004E7799    mov        edx,4E7A14; 'NUMERIC_SCALE'
 004E779E    mov        eax,esi
 004E77A0    mov        ecx,dword ptr [eax]
 004E77A2    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E77A5    mov        ecx,eax
 004E77A7    mov        eax,dword ptr [ebx]
 004E77A9    mov        edx,4E7A2C; 'SCALE'
 004E77AE    mov        edi,dword ptr [eax]
 004E77B0    call       dword ptr [edi+18C]
 004E77B6    mov        eax,dword ptr [ebx]
 004E77B8    mov        cx,2
 004E77BC    mov        edx,4E7A3C; 'NULLABLE'
 004E77C1    mov        edi,dword ptr [eax]
 004E77C3    call       dword ptr [edi+18C]
 004E77C9    lea        ecx,[ebp-3C]
 004E77CC    mov        edx,4E7A50; 'IS_NULLABLE'
 004E77D1    mov        eax,esi
 004E77D3    mov        edi,dword ptr [eax]
 004E77D5    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E77D8    mov        eax,dword ptr [ebp-3C]
 004E77DB    mov        edx,4E7A64; 'NO'
 004E77E0    call       @LStrCmp
>004E77E5    jne        004E77F8
 004E77E7    mov        eax,dword ptr [ebx]
 004E77E9    xor        ecx,ecx
 004E77EB    mov        edx,4E7A3C; 'NULLABLE'
 004E77F0    mov        edi,dword ptr [eax]
 004E77F2    call       dword ptr [edi+18C]
 004E77F8    lea        ecx,[ebp-40]
 004E77FB    mov        edx,4E7A50; 'IS_NULLABLE'
 004E7800    mov        eax,esi
 004E7802    mov        edi,dword ptr [eax]
 004E7804    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7807    mov        eax,dword ptr [ebp-40]
 004E780A    mov        edx,4E7A70; 'YES'
 004E780F    call       @LStrCmp
>004E7814    jne        004E7829
 004E7816    mov        eax,dword ptr [ebx]
 004E7818    mov        cx,1
 004E781C    mov        edx,4E7A3C; 'NULLABLE'
 004E7821    mov        edi,dword ptr [eax]
 004E7823    call       dword ptr [edi+18C]
 004E7829    lea        ecx,[ebp-44]
 004E782C    mov        edx,4E7A7C; 'DESCRIPTION'
 004E7831    mov        eax,esi
 004E7833    mov        edi,dword ptr [eax]
 004E7835    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7838    mov        ecx,dword ptr [ebp-44]
 004E783B    mov        eax,dword ptr [ebx]
 004E783D    mov        edx,4E7A90; 'REMARKS'
 004E7842    mov        edi,dword ptr [eax]
 004E7844    call       dword ptr [edi+1A8]
 004E784A    mov        eax,dword ptr [ebx]
 004E784C    mov        edx,dword ptr [eax]
 004E784E    call       dword ptr [edx+1D0]
 004E7854    mov        eax,esi
 004E7856    mov        edx,dword ptr [eax]
 004E7858    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E785B    test       al,al
<004E785D    jne        004E75FF
 004E7863    mov        eax,esi
 004E7865    mov        edx,dword ptr [eax]
 004E7867    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E786A    mov        eax,esi
 004E786C    call       TObject.Free
 004E7871    xor        eax,eax
 004E7873    pop        edx
 004E7874    pop        ecx
 004E7875    pop        ecx
 004E7876    mov        dword ptr fs:[eax],edx
 004E7879    push       4E78A3
 004E787E    lea        eax,[ebp-44]
 004E7881    mov        edx,8
 004E7886    call       @LStrArrayClr
 004E788B    lea        eax,[ebp-24]
 004E788E    call       @IntfClear
 004E7893    lea        eax,[ebp-8]
 004E7896    call       @IntfClear
 004E789B    ret
<004E789C    jmp        @HandleFinally
<004E78A1    jmp        004E787E
 004E78A3    pop        edi
 004E78A4    pop        esi
 004E78A5    pop        ebx
 004E78A6    mov        esp,ebp
 004E78A8    pop        ebp
 004E78A9    ret        0C
*}
//end;

//004E7A98
//procedure sub_004E7A98(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E7A98    push       ebp
 004E7A99    mov        ebp,esp
 004E7A9B    add        esp,0FFFFFFB4
 004E7A9E    push       ebx
 004E7A9F    push       esi
 004E7AA0    push       edi
 004E7AA1    xor        ebx,ebx
 004E7AA3    mov        dword ptr [ebp-4C],ebx
 004E7AA6    mov        dword ptr [ebp-48],ebx
 004E7AA9    mov        dword ptr [ebp-44],ebx
 004E7AAC    mov        dword ptr [ebp-40],ebx
 004E7AAF    mov        dword ptr [ebp-3C],ebx
 004E7AB2    mov        dword ptr [ebp-38],ebx
 004E7AB5    mov        dword ptr [ebp-10],ebx
 004E7AB8    mov        dword ptr [ebp-14],ebx
 004E7ABB    mov        dword ptr [ebp-0C],ecx
 004E7ABE    mov        dword ptr [ebp-8],edx
 004E7AC1    mov        dword ptr [ebp-4],eax
 004E7AC4    mov        ebx,dword ptr [ebp+8]
 004E7AC7    xor        eax,eax
 004E7AC9    push       ebp
 004E7ACA    push       4E7CA9
 004E7ACF    push       dword ptr fs:[eax]
 004E7AD2    mov        dword ptr fs:[eax],esp
 004E7AD5    mov        ecx,ebx
 004E7AD7    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 004E7ADD    mov        edx,dword ptr [edx]
 004E7ADF    mov        eax,dword ptr [ebp-4]
 004E7AE2    call       004D8E7C
 004E7AE7    mov        eax,dword ptr [ebp+0C]
 004E7AEA    call       @DynArrayHigh
 004E7AEF    mov        esi,eax
 004E7AF1    test       esi,esi
>004E7AF3    jl         004E7B31
 004E7AF5    inc        esi
 004E7AF6    xor        edi,edi
 004E7AF8    mov        eax,dword ptr [ebp-10]
 004E7AFB    call       @LStrLen
 004E7B00    test       eax,eax
>004E7B02    jle        004E7B11
 004E7B04    lea        eax,[ebp-10]
 004E7B07    mov        edx,4E7CC4; ','
 004E7B0C    call       @LStrCat
 004E7B11    lea        eax,[ebp-10]
 004E7B14    mov        edx,dword ptr [ebp+0C]
 004E7B17    test       edx,edx
>004E7B19    je         004E7B20
 004E7B1B    cmp        edi,dword ptr [edx-4]
>004E7B1E    jb         004E7B25
 004E7B20    call       @BoundErr
 004E7B25    mov        edx,dword ptr [edx+edi*4]
 004E7B28    call       @LStrCat
 004E7B2D    inc        edi
 004E7B2E    dec        esi
<004E7B2F    jne        004E7AF8
 004E7B31    push       3
 004E7B33    lea        eax,[ebp-14]
 004E7B36    push       eax
 004E7B37    mov        eax,dword ptr [ebp-8]
 004E7B3A    mov        dword ptr [ebp-34],eax
 004E7B3D    mov        byte ptr [ebp-30],0B
 004E7B41    mov        eax,dword ptr [ebp-0C]
 004E7B44    mov        dword ptr [ebp-2C],eax
 004E7B47    mov        byte ptr [ebp-28],0B
 004E7B4B    mov        eax,dword ptr [ebp+10]
 004E7B4E    mov        dword ptr [ebp-24],eax
 004E7B51    mov        byte ptr [ebp-20],0B
 004E7B55    mov        eax,dword ptr [ebp-10]
 004E7B58    mov        dword ptr [ebp-1C],eax
 004E7B5B    mov        byte ptr [ebp-18],0B
 004E7B5F    lea        ecx,[ebp-34]
 004E7B62    mov        edx,14
 004E7B67    mov        eax,dword ptr [ebp-4]
 004E7B6A    call       004EA0D4
 004E7B6F    cmp        dword ptr [ebp-14],0
>004E7B73    je         004E7C76
 004E7B79    push       0
 004E7B7B    mov        eax,dword ptr [ebp-14]
 004E7B7E    push       eax
 004E7B7F    lea        edx,[ebp-38]
 004E7B82    mov        eax,dword ptr [ebp-4]
 004E7B85    call       004EA080
 004E7B8A    mov        ecx,dword ptr [ebp-38]
 004E7B8D    mov        dl,1
 004E7B8F    mov        eax,[004E2510]; TZAdoResultSet
 004E7B94    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E7B99    mov        esi,eax
>004E7B9B    jmp        004E7C59
 004E7BA0    mov        eax,dword ptr [ebx]
 004E7BA2    mov        edx,dword ptr [eax]
 004E7BA4    call       dword ptr [edx+1E4]
 004E7BAA    lea        ecx,[ebp-3C]
 004E7BAD    mov        edx,4E7CD0; 'TABLE_CATALOG'
 004E7BB2    mov        eax,esi
 004E7BB4    mov        edi,dword ptr [eax]
 004E7BB6    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7BB9    mov        ecx,dword ptr [ebp-3C]
 004E7BBC    mov        eax,dword ptr [ebx]
 004E7BBE    mov        edx,4E7CE8; 'TABLE_CAT'
 004E7BC3    mov        edi,dword ptr [eax]
 004E7BC5    call       dword ptr [edi+1A8]
 004E7BCB    lea        ecx,[ebp-40]
 004E7BCE    mov        edx,4E7CFC; 'TABLE_SCHEMA'
 004E7BD3    mov        eax,esi
 004E7BD5    mov        edi,dword ptr [eax]
 004E7BD7    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7BDA    mov        ecx,dword ptr [ebp-40]
 004E7BDD    mov        eax,dword ptr [ebx]
 004E7BDF    mov        edx,4E7D14; 'TABLE_SCHEM'
 004E7BE4    mov        edi,dword ptr [eax]
 004E7BE6    call       dword ptr [edi+1A8]
 004E7BEC    lea        ecx,[ebp-44]
 004E7BEF    mov        edx,4E7D28; 'TABLE_NAME'
 004E7BF4    mov        eax,esi
 004E7BF6    mov        edi,dword ptr [eax]
 004E7BF8    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7BFB    mov        ecx,dword ptr [ebp-44]
 004E7BFE    mov        eax,dword ptr [ebx]
 004E7C00    mov        edx,4E7D28; 'TABLE_NAME'
 004E7C05    mov        edi,dword ptr [eax]
 004E7C07    call       dword ptr [edi+1A8]
 004E7C0D    lea        ecx,[ebp-48]
 004E7C10    mov        edx,4E7D3C; 'TABLE_TYPE'
 004E7C15    mov        eax,esi
 004E7C17    mov        edi,dword ptr [eax]
 004E7C19    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7C1C    mov        ecx,dword ptr [ebp-48]
 004E7C1F    mov        eax,dword ptr [ebx]
 004E7C21    mov        edx,4E7D3C; 'TABLE_TYPE'
 004E7C26    mov        edi,dword ptr [eax]
 004E7C28    call       dword ptr [edi+1A8]
 004E7C2E    lea        ecx,[ebp-4C]
 004E7C31    mov        edx,4E7D50; 'DESCRIPTION'
 004E7C36    mov        eax,esi
 004E7C38    mov        edi,dword ptr [eax]
 004E7C3A    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7C3D    mov        ecx,dword ptr [ebp-4C]
 004E7C40    mov        eax,dword ptr [ebx]
 004E7C42    mov        edx,4E7D64; 'REMARKS'
 004E7C47    mov        edi,dword ptr [eax]
 004E7C49    call       dword ptr [edi+1A8]
 004E7C4F    mov        eax,dword ptr [ebx]
 004E7C51    mov        edx,dword ptr [eax]
 004E7C53    call       dword ptr [edx+1D0]
 004E7C59    mov        eax,esi
 004E7C5B    mov        edx,dword ptr [eax]
 004E7C5D    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E7C60    test       al,al
<004E7C62    jne        004E7BA0
 004E7C68    mov        eax,esi
 004E7C6A    mov        edx,dword ptr [eax]
 004E7C6C    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E7C6F    mov        eax,esi
 004E7C71    call       TObject.Free
 004E7C76    xor        eax,eax
 004E7C78    pop        edx
 004E7C79    pop        ecx
 004E7C7A    pop        ecx
 004E7C7B    mov        dword ptr fs:[eax],edx
 004E7C7E    push       4E7CB0
 004E7C83    lea        eax,[ebp-4C]
 004E7C86    mov        edx,5
 004E7C8B    call       @LStrArrayClr
 004E7C90    lea        eax,[ebp-38]
 004E7C93    call       @IntfClear
 004E7C98    lea        eax,[ebp-14]
 004E7C9B    call       @IntfClear
 004E7CA0    lea        eax,[ebp-10]
 004E7CA3    call       @LStrClr
 004E7CA8    ret
<004E7CA9    jmp        @HandleFinally
<004E7CAE    jmp        004E7C83
 004E7CB0    pop        edi
 004E7CB1    pop        esi
 004E7CB2    pop        ebx
 004E7CB3    mov        esp,ebp
 004E7CB5    pop        ebp
 004E7CB6    ret        0C
*}
//end;

//004E7D6C
//procedure sub_004E7D6C(?:?);
//begin
{*
 004E7D6C    push       ebp
 004E7D6D    mov        ebp,esp
 004E7D6F    xor        ecx,ecx
 004E7D71    push       ecx
 004E7D72    push       ecx
 004E7D73    push       ecx
 004E7D74    push       ecx
 004E7D75    push       ebx
 004E7D76    push       esi
 004E7D77    push       edi
 004E7D78    mov        ebx,edx
 004E7D7A    mov        esi,eax
 004E7D7C    xor        eax,eax
 004E7D7E    push       ebp
 004E7D7F    push       4E7E63
 004E7D84    push       dword ptr fs:[eax]
 004E7D87    mov        dword ptr fs:[eax],esp
 004E7D8A    mov        ecx,ebx
 004E7D8C    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 004E7D92    mov        edx,dword ptr [edx]
 004E7D94    mov        eax,esi
 004E7D96    call       004D8E7C
 004E7D9B    push       0FF
 004E7D9D    lea        eax,[ebp-8]
 004E7DA0    push       eax
 004E7DA1    lea        ecx,[ebp-8]
 004E7DA4    mov        edx,11
 004E7DA9    mov        eax,esi
 004E7DAB    call       004EA0D4
 004E7DB0    mov        edx,dword ptr [ebp-8]
 004E7DB3    lea        eax,[ebp-4]
 004E7DB6    call       @IntfCopy
 004E7DBB    cmp        dword ptr [ebp-4],0
>004E7DBF    je         004E7E32
 004E7DC1    push       0
 004E7DC3    mov        eax,dword ptr [ebp-4]
 004E7DC6    push       eax
 004E7DC7    lea        edx,[ebp-0C]
 004E7DCA    mov        eax,esi
 004E7DCC    call       004EA080
 004E7DD1    mov        ecx,dword ptr [ebp-0C]
 004E7DD4    mov        dl,1
 004E7DD6    mov        eax,[004E2510]; TZAdoResultSet
 004E7DDB    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E7DE0    mov        esi,eax
>004E7DE2    jmp        004E7E19
 004E7DE4    mov        eax,dword ptr [ebx]
 004E7DE6    mov        edx,dword ptr [eax]
 004E7DE8    call       dword ptr [edx+1E4]
 004E7DEE    lea        ecx,[ebp-10]
 004E7DF1    mov        edx,4E7E7C; 'SCHEMA_NAME'
 004E7DF6    mov        eax,esi
 004E7DF8    mov        edi,dword ptr [eax]
 004E7DFA    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7DFD    mov        ecx,dword ptr [ebp-10]
 004E7E00    mov        eax,dword ptr [ebx]
 004E7E02    mov        edx,4E7E90; 'TABLE_SCHEM'
 004E7E07    mov        edi,dword ptr [eax]
 004E7E09    call       dword ptr [edi+1A8]
 004E7E0F    mov        eax,dword ptr [ebx]
 004E7E11    mov        edx,dword ptr [eax]
 004E7E13    call       dword ptr [edx+1D0]
 004E7E19    mov        eax,esi
 004E7E1B    mov        edx,dword ptr [eax]
 004E7E1D    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E7E20    test       al,al
<004E7E22    jne        004E7DE4
 004E7E24    mov        eax,esi
 004E7E26    mov        edx,dword ptr [eax]
 004E7E28    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E7E2B    mov        eax,esi
 004E7E2D    call       TObject.Free
 004E7E32    xor        eax,eax
 004E7E34    pop        edx
 004E7E35    pop        ecx
 004E7E36    pop        ecx
 004E7E37    mov        dword ptr fs:[eax],edx
 004E7E3A    push       4E7E6A
 004E7E3F    lea        eax,[ebp-10]
 004E7E42    call       @LStrClr
 004E7E47    lea        eax,[ebp-0C]
 004E7E4A    call       @IntfClear
 004E7E4F    lea        eax,[ebp-8]
 004E7E52    mov        edx,dword ptr ds:[4DE638]; Recordset15
 004E7E58    mov        ecx,2
 004E7E5D    call       @FinalizeArray
 004E7E62    ret
<004E7E63    jmp        @HandleFinally
<004E7E68    jmp        004E7E3F
 004E7E6A    pop        edi
 004E7E6B    pop        esi
 004E7E6C    pop        ebx
 004E7E6D    mov        esp,ebp
 004E7E6F    pop        ebp
 004E7E70    ret
*}
//end;

//004E7E9C
//procedure sub_004E7E9C(?:?);
//begin
{*
 004E7E9C    push       ebp
 004E7E9D    mov        ebp,esp
 004E7E9F    xor        ecx,ecx
 004E7EA1    push       ecx
 004E7EA2    push       ecx
 004E7EA3    push       ecx
 004E7EA4    push       ecx
 004E7EA5    push       ebx
 004E7EA6    push       esi
 004E7EA7    push       edi
 004E7EA8    mov        ebx,edx
 004E7EAA    mov        esi,eax
 004E7EAC    xor        eax,eax
 004E7EAE    push       ebp
 004E7EAF    push       4E7F93
 004E7EB4    push       dword ptr fs:[eax]
 004E7EB7    mov        dword ptr fs:[eax],esp
 004E7EBA    mov        ecx,ebx
 004E7EBC    mov        edx,dword ptr ds:[61BB48]; ^gvar_0061DD44:TZMetadataColumnDefs
 004E7EC2    mov        edx,dword ptr [edx]
 004E7EC4    mov        eax,esi
 004E7EC6    call       004D8E7C
 004E7ECB    push       0FF
 004E7ECD    lea        eax,[ebp-8]
 004E7ED0    push       eax
 004E7ED1    lea        ecx,[ebp-8]
 004E7ED4    mov        edx,1
 004E7ED9    mov        eax,esi
 004E7EDB    call       004EA0D4
 004E7EE0    mov        edx,dword ptr [ebp-8]
 004E7EE3    lea        eax,[ebp-4]
 004E7EE6    call       @IntfCopy
 004E7EEB    cmp        dword ptr [ebp-4],0
>004E7EEF    je         004E7F62
 004E7EF1    push       0
 004E7EF3    mov        eax,dword ptr [ebp-4]
 004E7EF6    push       eax
 004E7EF7    lea        edx,[ebp-0C]
 004E7EFA    mov        eax,esi
 004E7EFC    call       004EA080
 004E7F01    mov        ecx,dword ptr [ebp-0C]
 004E7F04    mov        dl,1
 004E7F06    mov        eax,[004E2510]; TZAdoResultSet
 004E7F0B    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E7F10    mov        esi,eax
>004E7F12    jmp        004E7F49
 004E7F14    mov        eax,dword ptr [ebx]
 004E7F16    mov        edx,dword ptr [eax]
 004E7F18    call       dword ptr [edx+1E4]
 004E7F1E    lea        ecx,[ebp-10]
 004E7F21    mov        edx,4E7FAC; 'CATALOG_NAME'
 004E7F26    mov        eax,esi
 004E7F28    mov        edi,dword ptr [eax]
 004E7F2A    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E7F2D    mov        ecx,dword ptr [ebp-10]
 004E7F30    mov        eax,dword ptr [ebx]
 004E7F32    mov        edx,4E7FC4; 'TABLE_CAT'
 004E7F37    mov        edi,dword ptr [eax]
 004E7F39    call       dword ptr [edi+1A8]
 004E7F3F    mov        eax,dword ptr [ebx]
 004E7F41    mov        edx,dword ptr [eax]
 004E7F43    call       dword ptr [edx+1D0]
 004E7F49    mov        eax,esi
 004E7F4B    mov        edx,dword ptr [eax]
 004E7F4D    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E7F50    test       al,al
<004E7F52    jne        004E7F14
 004E7F54    mov        eax,esi
 004E7F56    mov        edx,dword ptr [eax]
 004E7F58    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E7F5B    mov        eax,esi
 004E7F5D    call       TObject.Free
 004E7F62    xor        eax,eax
 004E7F64    pop        edx
 004E7F65    pop        ecx
 004E7F66    pop        ecx
 004E7F67    mov        dword ptr fs:[eax],edx
 004E7F6A    push       4E7F9A
 004E7F6F    lea        eax,[ebp-10]
 004E7F72    call       @LStrClr
 004E7F77    lea        eax,[ebp-0C]
 004E7F7A    call       @IntfClear
 004E7F7F    lea        eax,[ebp-8]
 004E7F82    mov        edx,dword ptr ds:[4DE638]; Recordset15
 004E7F88    mov        ecx,2
 004E7F8D    call       @FinalizeArray
 004E7F92    ret
<004E7F93    jmp        @HandleFinally
<004E7F98    jmp        004E7F6F
 004E7F9A    pop        edi
 004E7F9B    pop        esi
 004E7F9C    pop        ebx
 004E7F9D    mov        esp,ebp
 004E7F9F    pop        ebp
 004E7FA0    ret
*}
//end;

//004E8070
//procedure sub_004E8070(?:?);
//begin
{*
 004E8070    push       ebp
 004E8071    mov        ebp,esp
 004E8073    push       ecx
 004E8074    push       ebx
 004E8075    push       esi
 004E8076    push       edi
 004E8077    mov        esi,edx
 004E8079    mov        ebx,eax
 004E807B    mov        ecx,esi
 004E807D    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 004E8083    mov        edx,dword ptr [edx]
 004E8085    mov        eax,ebx
 004E8087    call       004D8E7C
 004E808C    mov        dword ptr [ebp-4],8
 004E8093    mov        ebx,615FD4; gvar_00615FD4:array[8] of String
 004E8098    mov        eax,dword ptr [esi]
 004E809A    mov        edx,dword ptr [eax]
 004E809C    call       dword ptr [edx+1E4]
 004E80A2    mov        eax,dword ptr [esi]
 004E80A4    mov        ecx,dword ptr [ebx]
 004E80A6    mov        edx,4E80D4; 'TABLE_TYPE'
 004E80AB    mov        edi,dword ptr [eax]
 004E80AD    call       dword ptr [edi+1A8]
 004E80B3    mov        eax,dword ptr [esi]
 004E80B5    mov        edx,dword ptr [eax]
 004E80B7    call       dword ptr [edx+1D0]
 004E80BD    add        ebx,4
 004E80C0    dec        dword ptr [ebp-4]
<004E80C3    jne        004E8098
 004E80C5    pop        edi
 004E80C6    pop        esi
 004E80C7    pop        ebx
 004E80C8    pop        ecx
 004E80C9    pop        ebp
 004E80CA    ret
*}
//end;

//004E80E0
//procedure sub_004E80E0(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E80E0    push       ebp
 004E80E1    mov        ebp,esp
 004E80E3    add        esp,0FFFFFFB4
 004E80E6    push       ebx
 004E80E7    push       esi
 004E80E8    push       edi
 004E80E9    xor        ebx,ebx
 004E80EB    mov        dword ptr [ebp-4C],ebx
 004E80EE    mov        dword ptr [ebp-48],ebx
 004E80F1    mov        dword ptr [ebp-44],ebx
 004E80F4    mov        dword ptr [ebp-40],ebx
 004E80F7    mov        dword ptr [ebp-3C],ebx
 004E80FA    mov        dword ptr [ebp-38],ebx
 004E80FD    mov        dword ptr [ebp-34],ebx
 004E8100    mov        dword ptr [ebp-30],ebx
 004E8103    mov        dword ptr [ebp-8],ebx
 004E8106    mov        dword ptr [ebp-4],ecx
 004E8109    mov        edi,edx
 004E810B    mov        esi,eax
 004E810D    mov        ebx,dword ptr [ebp+8]
 004E8110    xor        eax,eax
 004E8112    push       ebp
 004E8113    push       4E8475
 004E8118    push       dword ptr fs:[eax]
 004E811B    mov        dword ptr fs:[eax],esp
 004E811E    mov        ecx,ebx
 004E8120    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 004E8126    mov        edx,dword ptr [edx]
 004E8128    mov        eax,esi
 004E812A    call       004D8E7C
 004E812F    push       3
 004E8131    lea        eax,[ebp-8]
 004E8134    push       eax
 004E8135    mov        dword ptr [ebp-2C],edi
 004E8138    mov        byte ptr [ebp-28],0B
 004E813C    mov        eax,dword ptr [ebp-4]
 004E813F    mov        dword ptr [ebp-24],eax
 004E8142    mov        byte ptr [ebp-20],0B
 004E8146    mov        eax,dword ptr [ebp+10]
 004E8149    mov        dword ptr [ebp-1C],eax
 004E814C    mov        byte ptr [ebp-18],0B
 004E8150    mov        eax,dword ptr [ebp+0C]
 004E8153    mov        dword ptr [ebp-14],eax
 004E8156    mov        byte ptr [ebp-10],0B
 004E815A    lea        ecx,[ebp-2C]
 004E815D    mov        edx,4
 004E8162    mov        eax,esi
 004E8164    call       004EA0D4
 004E8169    cmp        dword ptr [ebp-8],0
>004E816D    je         004E844A
 004E8173    push       4E848C
 004E8178    mov        eax,dword ptr [ebp-8]
 004E817B    push       eax
 004E817C    mov        eax,dword ptr [eax]
 004E817E    call       dword ptr [eax+0D4]
 004E8184    call       @CheckAutoResult
 004E8189    push       0
 004E818B    mov        eax,dword ptr [ebp-8]
 004E818E    push       eax
 004E818F    lea        edx,[ebp-30]
 004E8192    mov        eax,esi
 004E8194    call       004EA080
 004E8199    mov        ecx,dword ptr [ebp-30]
 004E819C    mov        dl,1
 004E819E    mov        eax,[004E2510]; TZAdoResultSet
 004E81A3    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E81A8    mov        esi,eax
>004E81AA    jmp        004E842D
 004E81AF    mov        eax,dword ptr [ebx]
 004E81B1    mov        edx,dword ptr [eax]
 004E81B3    call       dword ptr [edx+1E4]
 004E81B9    lea        ecx,[ebp-34]
 004E81BC    mov        edx,4E84B8; 'TABLE_CATALOG'
 004E81C1    mov        eax,esi
 004E81C3    mov        edi,dword ptr [eax]
 004E81C5    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E81C8    mov        ecx,dword ptr [ebp-34]
 004E81CB    mov        eax,dword ptr [ebx]
 004E81CD    mov        edx,4E84D0; 'TABLE_CAT'
 004E81D2    mov        edi,dword ptr [eax]
 004E81D4    call       dword ptr [edi+1A8]
 004E81DA    lea        ecx,[ebp-38]
 004E81DD    mov        edx,4E84E4; 'TABLE_SCHEMA'
 004E81E2    mov        eax,esi
 004E81E4    mov        edi,dword ptr [eax]
 004E81E6    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E81E9    mov        ecx,dword ptr [ebp-38]
 004E81EC    mov        eax,dword ptr [ebx]
 004E81EE    mov        edx,4E84FC; 'TABLE_SCHEM'
 004E81F3    mov        edi,dword ptr [eax]
 004E81F5    call       dword ptr [edi+1A8]
 004E81FB    lea        ecx,[ebp-3C]
 004E81FE    mov        edx,4E8510; 'TABLE_NAME'
 004E8203    mov        eax,esi
 004E8205    mov        edi,dword ptr [eax]
 004E8207    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E820A    mov        ecx,dword ptr [ebp-3C]
 004E820D    mov        eax,dword ptr [ebx]
 004E820F    mov        edx,4E8510; 'TABLE_NAME'
 004E8214    mov        edi,dword ptr [eax]
 004E8216    call       dword ptr [edi+1A8]
 004E821C    lea        ecx,[ebp-40]
 004E821F    mov        edx,4E8524; 'COLUMN_NAME'
 004E8224    mov        eax,esi
 004E8226    mov        edi,dword ptr [eax]
 004E8228    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E822B    mov        ecx,dword ptr [ebp-40]
 004E822E    mov        eax,dword ptr [ebx]
 004E8230    mov        edx,4E8524; 'COLUMN_NAME'
 004E8235    mov        edi,dword ptr [eax]
 004E8237    call       dword ptr [edi+1A8]
 004E823D    mov        edx,4E8538; 'COLUMN_FLAGS'
 004E8242    mov        eax,esi
 004E8244    mov        ecx,dword ptr [eax]
 004E8246    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E824C    mov        dword ptr [ebp-0C],eax
 004E824F    mov        edx,4E8550; 'CHARACTER_MAXIMUM_LENGTH'
 004E8254    mov        eax,esi
 004E8256    mov        ecx,dword ptr [eax]
 004E8258    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E825E    mov        ecx,eax
 004E8260    mov        eax,dword ptr [ebx]
 004E8262    mov        edx,4E8574; 'COLUMN_SIZE'
 004E8267    mov        edi,dword ptr [eax]
 004E8269    call       dword ptr [edi+190]
 004E826F    mov        edx,4E8550; 'CHARACTER_MAXIMUM_LENGTH'
 004E8274    mov        eax,esi
 004E8276    mov        ecx,dword ptr [eax]
 004E8278    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E827E    mov        ecx,eax
 004E8280    mov        eax,dword ptr [ebx]
 004E8282    mov        edx,4E8588; 'BUFFER_LENGTH'
 004E8287    mov        edi,dword ptr [eax]
 004E8289    call       dword ptr [edi+190]
 004E828F    mov        edx,4E85A0; 'NUMERIC_SCALE'
 004E8294    mov        eax,esi
 004E8296    mov        ecx,dword ptr [eax]
 004E8298    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E829E    mov        ecx,eax
 004E82A0    mov        eax,dword ptr [ebx]
 004E82A2    mov        edx,4E85B8; 'DECIMAL_DIGITS'
 004E82A7    mov        edi,dword ptr [eax]
 004E82A9    call       dword ptr [edi+190]
 004E82AF    mov        edx,4E85D0; 'NUMERIC_PRECISION'
 004E82B4    mov        eax,esi
 004E82B6    mov        ecx,dword ptr [eax]
 004E82B8    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E82BB    movsx      ecx,ax
 004E82BE    mov        eax,dword ptr [ebx]
 004E82C0    mov        edx,4E85EC; 'NUM_PREC_RADIX'
 004E82C5    mov        edi,dword ptr [eax]
 004E82C7    call       dword ptr [edi+190]
 004E82CD    mov        edx,4E8604; 'IS_NULLABLE'
 004E82D2    mov        eax,esi
 004E82D4    mov        ecx,dword ptr [eax]
 004E82D6    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E82D9    test       al,al
>004E82DB    je         004E82F2
 004E82DD    mov        eax,dword ptr [ebx]
 004E82DF    mov        cx,1
 004E82E3    mov        edx,4E8618; 'NULLABLE'
 004E82E8    mov        edi,dword ptr [eax]
 004E82EA    call       dword ptr [edi+18C]
>004E82F0    jmp        004E8303
 004E82F2    mov        eax,dword ptr [ebx]
 004E82F4    xor        ecx,ecx
 004E82F6    mov        edx,4E8618; 'NULLABLE'
 004E82FB    mov        edi,dword ptr [eax]
 004E82FD    call       dword ptr [edi+18C]
 004E8303    lea        ecx,[ebp-44]
 004E8306    mov        edx,4E862C; 'DESCRIPTION'
 004E830B    mov        eax,esi
 004E830D    mov        edi,dword ptr [eax]
 004E830F    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8312    mov        ecx,dword ptr [ebp-44]
 004E8315    mov        eax,dword ptr [ebx]
 004E8317    mov        edx,4E8640; 'REMARKS'
 004E831C    mov        edi,dword ptr [eax]
 004E831E    call       dword ptr [edi+1A8]
 004E8324    lea        ecx,[ebp-48]
 004E8327    mov        edx,4E8650; 'COLUMN_DEFAULT'
 004E832C    mov        eax,esi
 004E832E    mov        edi,dword ptr [eax]
 004E8330    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8333    mov        ecx,dword ptr [ebp-48]
 004E8336    mov        eax,dword ptr [ebx]
 004E8338    mov        edx,4E8668; 'COLUMN_DEF'
 004E833D    mov        edi,dword ptr [eax]
 004E833F    call       dword ptr [edi+1A8]
 004E8345    mov        edx,4E867C; 'DATETIME_PRECISION'
 004E834A    mov        eax,esi
 004E834C    mov        ecx,dword ptr [eax]
 004E834E    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E8351    mov        ecx,eax
 004E8353    mov        eax,dword ptr [ebx]
 004E8355    mov        edx,4E8698; 'SQL_DATETIME_SUB'
 004E835A    mov        edi,dword ptr [eax]
 004E835C    call       dword ptr [edi+18C]
 004E8362    mov        edx,4E86B4; 'CHARACTER_OCTET_LENGTH'
 004E8367    mov        eax,esi
 004E8369    mov        ecx,dword ptr [eax]
 004E836B    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8371    mov        ecx,eax
 004E8373    mov        eax,dword ptr [ebx]
 004E8375    mov        edx,4E86D4; 'CHAR_OCTET_LENGTH'
 004E837A    mov        edi,dword ptr [eax]
 004E837C    call       dword ptr [edi+190]
 004E8382    mov        edx,4E86F0; 'ORDINAL_POSITION'
 004E8387    mov        eax,esi
 004E8389    mov        ecx,dword ptr [eax]
 004E838B    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8391    mov        ecx,eax
 004E8393    mov        eax,dword ptr [ebx]
 004E8395    mov        edx,4E86F0; 'ORDINAL_POSITION'
 004E839A    mov        edi,dword ptr [eax]
 004E839C    call       dword ptr [edi+190]
 004E83A2    lea        ecx,[ebp-4C]
 004E83A5    mov        edx,4E8604; 'IS_NULLABLE'
 004E83AA    mov        eax,esi
 004E83AC    mov        edi,dword ptr [eax]
 004E83AE    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E83B1    mov        ecx,dword ptr [ebp-4C]
 004E83B4    mov        eax,dword ptr [ebx]
 004E83B6    mov        edx,4E8604; 'IS_NULLABLE'
 004E83BB    mov        edi,dword ptr [eax]
 004E83BD    call       dword ptr [edi+1A8]
 004E83C3    mov        eax,dword ptr [ebp-0C]
 004E83C6    and        eax,0C
 004E83C9    test       eax,eax
 004E83CB    setne      cl
 004E83CE    mov        eax,dword ptr [ebx]
 004E83D0    mov        edx,4E870C; 'WRITABLE'
 004E83D5    mov        edi,dword ptr [eax]
 004E83D7    call       dword ptr [edi+184]
 004E83DD    test       byte ptr [ebp-0C],4
 004E83E1    setne      cl
 004E83E4    mov        eax,dword ptr [ebx]
 004E83E6    mov        edx,4E8720; 'DEFINITELYWRITABLE'
 004E83EB    mov        edi,dword ptr [eax]
 004E83ED    call       dword ptr [edi+184]
 004E83F3    mov        eax,dword ptr [ebp-0C]
 004E83F6    and        eax,0C
 004E83F9    test       eax,eax
 004E83FB    sete       cl
 004E83FE    mov        eax,dword ptr [ebx]
 004E8400    mov        edx,4E873C; 'READONLY'
 004E8405    mov        edi,dword ptr [eax]
 004E8407    call       dword ptr [edi+184]
 004E840D    test       byte ptr [ebp-0C],80
 004E8411    sete       cl
 004E8414    mov        eax,dword ptr [ebx]
 004E8416    mov        edx,4E8750; 'SEARCHABLE'
 004E841B    mov        edi,dword ptr [eax]
 004E841D    call       dword ptr [edi+184]
 004E8423    mov        eax,dword ptr [ebx]
 004E8425    mov        edx,dword ptr [eax]
 004E8427    call       dword ptr [edx+1D0]
 004E842D    mov        eax,esi
 004E842F    mov        edx,dword ptr [eax]
 004E8431    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E8434    test       al,al
<004E8436    jne        004E81AF
 004E843C    mov        eax,esi
 004E843E    mov        edx,dword ptr [eax]
 004E8440    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E8443    mov        eax,esi
 004E8445    call       TObject.Free
 004E844A    xor        eax,eax
 004E844C    pop        edx
 004E844D    pop        ecx
 004E844E    pop        ecx
 004E844F    mov        dword ptr fs:[eax],edx
 004E8452    push       4E847C
 004E8457    lea        eax,[ebp-4C]
 004E845A    mov        edx,7
 004E845F    call       @LStrArrayClr
 004E8464    lea        eax,[ebp-30]
 004E8467    call       @IntfClear
 004E846C    lea        eax,[ebp-8]
 004E846F    call       @IntfClear
 004E8474    ret
<004E8475    jmp        @HandleFinally
<004E847A    jmp        004E8457
 004E847C    pop        edi
 004E847D    pop        esi
 004E847E    pop        ebx
 004E847F    mov        esp,ebp
 004E8481    pop        ebp
 004E8482    ret        0C
*}
//end;

//004E875C
//procedure sub_004E875C(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E875C    push       ebp
 004E875D    mov        ebp,esp
 004E875F    add        esp,0FFFFFFB8
 004E8762    push       ebx
 004E8763    push       esi
 004E8764    push       edi
 004E8765    xor        ebx,ebx
 004E8767    mov        dword ptr [ebp-48],ebx
 004E876A    mov        dword ptr [ebp-44],ebx
 004E876D    mov        dword ptr [ebp-40],ebx
 004E8770    mov        dword ptr [ebp-3C],ebx
 004E8773    mov        dword ptr [ebp-38],ebx
 004E8776    mov        dword ptr [ebp-34],ebx
 004E8779    mov        dword ptr [ebp-30],ebx
 004E877C    mov        dword ptr [ebp-2C],ebx
 004E877F    mov        dword ptr [ebp-8],ebx
 004E8782    mov        dword ptr [ebp-4],ecx
 004E8785    mov        edi,edx
 004E8787    mov        esi,eax
 004E8789    mov        ebx,dword ptr [ebp+8]
 004E878C    xor        eax,eax
 004E878E    push       ebp
 004E878F    push       4E8992
 004E8794    push       dword ptr fs:[eax]
 004E8797    mov        dword ptr fs:[eax],esp
 004E879A    mov        ecx,ebx
 004E879C    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 004E87A2    mov        edx,dword ptr [edx]
 004E87A4    mov        eax,esi
 004E87A6    call       004D8E7C
 004E87AB    push       3
 004E87AD    lea        eax,[ebp-8]
 004E87B0    push       eax
 004E87B1    mov        dword ptr [ebp-28],edi
 004E87B4    mov        byte ptr [ebp-24],0B
 004E87B8    mov        eax,dword ptr [ebp-4]
 004E87BB    mov        dword ptr [ebp-20],eax
 004E87BE    mov        byte ptr [ebp-1C],0B
 004E87C2    mov        eax,dword ptr [ebp+10]
 004E87C5    mov        dword ptr [ebp-18],eax
 004E87C8    mov        byte ptr [ebp-14],0B
 004E87CC    mov        eax,dword ptr [ebp+0C]
 004E87CF    mov        dword ptr [ebp-10],eax
 004E87D2    mov        byte ptr [ebp-0C],0B
 004E87D6    lea        ecx,[ebp-28]
 004E87D9    mov        edx,0D
 004E87DE    mov        eax,esi
 004E87E0    call       004EA0D4
 004E87E5    cmp        dword ptr [ebp-8],0
>004E87E9    je         004E8967
 004E87EF    push       0
 004E87F1    mov        eax,dword ptr [ebp-8]
 004E87F4    push       eax
 004E87F5    lea        edx,[ebp-2C]
 004E87F8    mov        eax,esi
 004E87FA    call       004EA080
 004E87FF    mov        ecx,dword ptr [ebp-2C]
 004E8802    mov        dl,1
 004E8804    mov        eax,[004E2510]; TZAdoResultSet
 004E8809    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E880E    mov        esi,eax
>004E8810    jmp        004E894A
 004E8815    mov        eax,dword ptr [ebx]
 004E8817    mov        edx,dword ptr [eax]
 004E8819    call       dword ptr [edx+1E4]
 004E881F    lea        ecx,[ebp-30]
 004E8822    mov        edx,4E89AC; 'TABLE_CATALOG'
 004E8827    mov        eax,esi
 004E8829    mov        edi,dword ptr [eax]
 004E882B    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E882E    mov        ecx,dword ptr [ebp-30]
 004E8831    mov        eax,dword ptr [ebx]
 004E8833    mov        edx,4E89C4; 'TABLE_CAT'
 004E8838    mov        edi,dword ptr [eax]
 004E883A    call       dword ptr [edi+1A8]
 004E8840    lea        ecx,[ebp-34]
 004E8843    mov        edx,4E89D8; 'TABLE_SCHEMA'
 004E8848    mov        eax,esi
 004E884A    mov        edi,dword ptr [eax]
 004E884C    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E884F    mov        ecx,dword ptr [ebp-34]
 004E8852    mov        eax,dword ptr [ebx]
 004E8854    mov        edx,4E89F0; 'TABLE_SCHEM'
 004E8859    mov        edi,dword ptr [eax]
 004E885B    call       dword ptr [edi+1A8]
 004E8861    lea        ecx,[ebp-38]
 004E8864    mov        edx,4E8A04; 'TABLE_NAME'
 004E8869    mov        eax,esi
 004E886B    mov        edi,dword ptr [eax]
 004E886D    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8870    mov        ecx,dword ptr [ebp-38]
 004E8873    mov        eax,dword ptr [ebx]
 004E8875    mov        edx,4E8A04; 'TABLE_NAME'
 004E887A    mov        edi,dword ptr [eax]
 004E887C    call       dword ptr [edi+1A8]
 004E8882    lea        ecx,[ebp-3C]
 004E8885    mov        edx,4E8A18; 'COLUMN_NAME'
 004E888A    mov        eax,esi
 004E888C    mov        edi,dword ptr [eax]
 004E888E    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8891    mov        ecx,dword ptr [ebp-3C]
 004E8894    mov        eax,dword ptr [ebx]
 004E8896    mov        edx,4E8A18; 'COLUMN_NAME'
 004E889B    mov        edi,dword ptr [eax]
 004E889D    call       dword ptr [edi+1A8]
 004E88A3    lea        ecx,[ebp-40]
 004E88A6    mov        edx,4E8A2C; 'GRANTOR'
 004E88AB    mov        eax,esi
 004E88AD    mov        edi,dword ptr [eax]
 004E88AF    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E88B2    mov        ecx,dword ptr [ebp-40]
 004E88B5    mov        eax,dword ptr [ebx]
 004E88B7    mov        edx,4E8A2C; 'GRANTOR'
 004E88BC    mov        edi,dword ptr [eax]
 004E88BE    call       dword ptr [edi+1A8]
 004E88C4    lea        ecx,[ebp-44]
 004E88C7    mov        edx,4E8A3C; 'GRANTEE'
 004E88CC    mov        eax,esi
 004E88CE    mov        edi,dword ptr [eax]
 004E88D0    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E88D3    mov        ecx,dword ptr [ebp-44]
 004E88D6    mov        eax,dword ptr [ebx]
 004E88D8    mov        edx,4E8A3C; 'GRANTEE'
 004E88DD    mov        edi,dword ptr [eax]
 004E88DF    call       dword ptr [edi+1A8]
 004E88E5    lea        ecx,[ebp-48]
 004E88E8    mov        edx,4E8A4C; 'PRIVILEGE_TYPE'
 004E88ED    mov        eax,esi
 004E88EF    mov        edi,dword ptr [eax]
 004E88F1    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E88F4    mov        ecx,dword ptr [ebp-48]
 004E88F7    mov        eax,dword ptr [ebx]
 004E88F9    mov        edx,4E8A64; 'PRIVILEGE'
 004E88FE    mov        edi,dword ptr [eax]
 004E8900    call       dword ptr [edi+1A8]
 004E8906    mov        edx,4E8A78; 'IS_GRANTABLE'
 004E890B    mov        eax,esi
 004E890D    mov        ecx,dword ptr [eax]
 004E890F    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E8912    test       al,al
>004E8914    je         004E892C
 004E8916    mov        eax,dword ptr [ebx]
 004E8918    mov        ecx,4E8A90; 'YES'
 004E891D    mov        edx,4E8A78; 'IS_GRANTABLE'
 004E8922    mov        edi,dword ptr [eax]
 004E8924    call       dword ptr [edi+1A8]
>004E892A    jmp        004E8940
 004E892C    mov        eax,dword ptr [ebx]
 004E892E    mov        ecx,4E8A9C; 'NO'
 004E8933    mov        edx,4E8A78; 'IS_GRANTABLE'
 004E8938    mov        edi,dword ptr [eax]
 004E893A    call       dword ptr [edi+1A8]
 004E8940    mov        eax,dword ptr [ebx]
 004E8942    mov        edx,dword ptr [eax]
 004E8944    call       dword ptr [edx+1D0]
 004E894A    mov        eax,esi
 004E894C    mov        edx,dword ptr [eax]
 004E894E    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E8951    test       al,al
<004E8953    jne        004E8815
 004E8959    mov        eax,esi
 004E895B    mov        edx,dword ptr [eax]
 004E895D    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E8960    mov        eax,esi
 004E8962    call       TObject.Free
 004E8967    xor        eax,eax
 004E8969    pop        edx
 004E896A    pop        ecx
 004E896B    pop        ecx
 004E896C    mov        dword ptr fs:[eax],edx
 004E896F    push       4E8999
 004E8974    lea        eax,[ebp-48]
 004E8977    mov        edx,7
 004E897C    call       @LStrArrayClr
 004E8981    lea        eax,[ebp-2C]
 004E8984    call       @IntfClear
 004E8989    lea        eax,[ebp-8]
 004E898C    call       @IntfClear
 004E8991    ret
<004E8992    jmp        @HandleFinally
<004E8997    jmp        004E8974
 004E8999    pop        edi
 004E899A    pop        esi
 004E899B    pop        ebx
 004E899C    mov        esp,ebp
 004E899E    pop        ebp
 004E899F    ret        0C
*}
//end;

//004E8AA0
//procedure sub_004E8AA0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E8AA0    push       ebp
 004E8AA1    mov        ebp,esp
 004E8AA3    push       ecx
 004E8AA4    mov        ecx,7
 004E8AA9    push       0
 004E8AAB    push       0
 004E8AAD    dec        ecx
<004E8AAE    jne        004E8AA9
 004E8AB0    xchg       ecx,dword ptr [ebp-4]
 004E8AB3    push       ebx
 004E8AB4    push       esi
 004E8AB5    push       edi
 004E8AB6    mov        dword ptr [ebp-4],ecx
 004E8AB9    mov        edi,edx
 004E8ABB    mov        esi,eax
 004E8ABD    mov        ebx,dword ptr [ebp+8]
 004E8AC0    xor        eax,eax
 004E8AC2    push       ebp
 004E8AC3    push       4E8C9B
 004E8AC8    push       dword ptr fs:[eax]
 004E8ACB    mov        dword ptr fs:[eax],esp
 004E8ACE    mov        ecx,ebx
 004E8AD0    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 004E8AD6    mov        edx,dword ptr [edx]
 004E8AD8    mov        eax,esi
 004E8ADA    call       004D8E7C
 004E8ADF    push       2
 004E8AE1    lea        eax,[ebp-8]
 004E8AE4    push       eax
 004E8AE5    mov        dword ptr [ebp-20],edi
 004E8AE8    mov        byte ptr [ebp-1C],0B
 004E8AEC    mov        eax,dword ptr [ebp-4]
 004E8AEF    mov        dword ptr [ebp-18],eax
 004E8AF2    mov        byte ptr [ebp-14],0B
 004E8AF6    mov        eax,dword ptr [ebp+0C]
 004E8AF9    mov        dword ptr [ebp-10],eax
 004E8AFC    mov        byte ptr [ebp-0C],0B
 004E8B00    lea        ecx,[ebp-20]
 004E8B03    mov        edx,0E
 004E8B08    mov        eax,esi
 004E8B0A    call       004EA0D4
 004E8B0F    cmp        dword ptr [ebp-8],0
>004E8B13    je         004E8C70
 004E8B19    push       0
 004E8B1B    mov        eax,dword ptr [ebp-8]
 004E8B1E    push       eax
 004E8B1F    lea        edx,[ebp-24]
 004E8B22    mov        eax,esi
 004E8B24    call       004EA080
 004E8B29    mov        ecx,dword ptr [ebp-24]
 004E8B2C    mov        dl,1
 004E8B2E    mov        eax,[004E2510]; TZAdoResultSet
 004E8B33    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E8B38    mov        esi,eax
>004E8B3A    jmp        004E8C53
 004E8B3F    mov        eax,dword ptr [ebx]
 004E8B41    mov        edx,dword ptr [eax]
 004E8B43    call       dword ptr [edx+1E4]
 004E8B49    lea        ecx,[ebp-28]
 004E8B4C    mov        edx,4E8CB4; 'TABLE_CATALOG'
 004E8B51    mov        eax,esi
 004E8B53    mov        edi,dword ptr [eax]
 004E8B55    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8B58    mov        ecx,dword ptr [ebp-28]
 004E8B5B    mov        eax,dword ptr [ebx]
 004E8B5D    mov        edx,4E8CCC; 'TABLE_CAT'
 004E8B62    mov        edi,dword ptr [eax]
 004E8B64    call       dword ptr [edi+1A8]
 004E8B6A    lea        ecx,[ebp-2C]
 004E8B6D    mov        edx,4E8CE0; 'TABLE_SCHEMA'
 004E8B72    mov        eax,esi
 004E8B74    mov        edi,dword ptr [eax]
 004E8B76    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8B79    mov        ecx,dword ptr [ebp-2C]
 004E8B7C    mov        eax,dword ptr [ebx]
 004E8B7E    mov        edx,4E8CF8; 'TABLE_SCHEM'
 004E8B83    mov        edi,dword ptr [eax]
 004E8B85    call       dword ptr [edi+1A8]
 004E8B8B    lea        ecx,[ebp-30]
 004E8B8E    mov        edx,4E8D0C; 'TABLE_NAME'
 004E8B93    mov        eax,esi
 004E8B95    mov        edi,dword ptr [eax]
 004E8B97    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8B9A    mov        ecx,dword ptr [ebp-30]
 004E8B9D    mov        eax,dword ptr [ebx]
 004E8B9F    mov        edx,4E8D0C; 'TABLE_NAME'
 004E8BA4    mov        edi,dword ptr [eax]
 004E8BA6    call       dword ptr [edi+1A8]
 004E8BAC    lea        ecx,[ebp-34]
 004E8BAF    mov        edx,4E8D20; 'GRANTOR'
 004E8BB4    mov        eax,esi
 004E8BB6    mov        edi,dword ptr [eax]
 004E8BB8    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8BBB    mov        ecx,dword ptr [ebp-34]
 004E8BBE    mov        eax,dword ptr [ebx]
 004E8BC0    mov        edx,4E8D20; 'GRANTOR'
 004E8BC5    mov        edi,dword ptr [eax]
 004E8BC7    call       dword ptr [edi+1A8]
 004E8BCD    lea        ecx,[ebp-38]
 004E8BD0    mov        edx,4E8D30; 'GRANTEE'
 004E8BD5    mov        eax,esi
 004E8BD7    mov        edi,dword ptr [eax]
 004E8BD9    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8BDC    mov        ecx,dword ptr [ebp-38]
 004E8BDF    mov        eax,dword ptr [ebx]
 004E8BE1    mov        edx,4E8D30; 'GRANTEE'
 004E8BE6    mov        edi,dword ptr [eax]
 004E8BE8    call       dword ptr [edi+1A8]
 004E8BEE    lea        ecx,[ebp-3C]
 004E8BF1    mov        edx,4E8D40; 'PRIVILEGE_TYPE'
 004E8BF6    mov        eax,esi
 004E8BF8    mov        edi,dword ptr [eax]
 004E8BFA    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8BFD    mov        ecx,dword ptr [ebp-3C]
 004E8C00    mov        eax,dword ptr [ebx]
 004E8C02    mov        edx,4E8D58; 'PRIVILEGE'
 004E8C07    mov        edi,dword ptr [eax]
 004E8C09    call       dword ptr [edi+1A8]
 004E8C0F    mov        edx,4E8D6C; 'IS_GRANTABLE'
 004E8C14    mov        eax,esi
 004E8C16    mov        ecx,dword ptr [eax]
 004E8C18    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E8C1B    test       al,al
>004E8C1D    je         004E8C35
 004E8C1F    mov        eax,dword ptr [ebx]
 004E8C21    mov        ecx,4E8D84; 'YES'
 004E8C26    mov        edx,4E8D6C; 'IS_GRANTABLE'
 004E8C2B    mov        edi,dword ptr [eax]
 004E8C2D    call       dword ptr [edi+1A8]
>004E8C33    jmp        004E8C49
 004E8C35    mov        eax,dword ptr [ebx]
 004E8C37    mov        ecx,4E8D90; 'NO'
 004E8C3C    mov        edx,4E8D6C; 'IS_GRANTABLE'
 004E8C41    mov        edi,dword ptr [eax]
 004E8C43    call       dword ptr [edi+1A8]
 004E8C49    mov        eax,dword ptr [ebx]
 004E8C4B    mov        edx,dword ptr [eax]
 004E8C4D    call       dword ptr [edx+1D0]
 004E8C53    mov        eax,esi
 004E8C55    mov        edx,dword ptr [eax]
 004E8C57    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E8C5A    test       al,al
<004E8C5C    jne        004E8B3F
 004E8C62    mov        eax,esi
 004E8C64    mov        edx,dword ptr [eax]
 004E8C66    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E8C69    mov        eax,esi
 004E8C6B    call       TObject.Free
 004E8C70    xor        eax,eax
 004E8C72    pop        edx
 004E8C73    pop        ecx
 004E8C74    pop        ecx
 004E8C75    mov        dword ptr fs:[eax],edx
 004E8C78    push       4E8CA2
 004E8C7D    lea        eax,[ebp-3C]
 004E8C80    mov        edx,6
 004E8C85    call       @LStrArrayClr
 004E8C8A    lea        eax,[ebp-24]
 004E8C8D    call       @IntfClear
 004E8C92    lea        eax,[ebp-8]
 004E8C95    call       @IntfClear
 004E8C9A    ret
<004E8C9B    jmp        @HandleFinally
<004E8CA0    jmp        004E8C7D
 004E8CA2    pop        edi
 004E8CA3    pop        esi
 004E8CA4    pop        ebx
 004E8CA5    mov        esp,ebp
 004E8CA7    pop        ebp
 004E8CA8    ret        8
*}
//end;

//004E8D94
//procedure sub_004E8D94(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E8D94    push       ebp
 004E8D95    mov        ebp,esp
 004E8D97    add        esp,0FFFFFFD4
 004E8D9A    push       ebx
 004E8D9B    push       esi
 004E8D9C    push       edi
 004E8D9D    xor        ebx,ebx
 004E8D9F    mov        dword ptr [ebp-2C],ebx
 004E8DA2    mov        dword ptr [ebp-28],ebx
 004E8DA5    mov        dword ptr [ebp-24],ebx
 004E8DA8    mov        dword ptr [ebp-8],ebx
 004E8DAB    mov        dword ptr [ebp-4],ecx
 004E8DAE    mov        edi,edx
 004E8DB0    mov        esi,eax
 004E8DB2    mov        ebx,dword ptr [ebp+8]
 004E8DB5    xor        eax,eax
 004E8DB7    push       ebp
 004E8DB8    push       4E8F90
 004E8DBD    push       dword ptr fs:[eax]
 004E8DC0    mov        dword ptr fs:[eax],esp
 004E8DC3    mov        ecx,ebx
 004E8DC5    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 004E8DCB    mov        edx,dword ptr [edx]
 004E8DCD    mov        eax,esi
 004E8DCF    call       004D8E7C
 004E8DD4    push       2
 004E8DD6    lea        eax,[ebp-8]
 004E8DD9    push       eax
 004E8DDA    mov        dword ptr [ebp-20],edi
 004E8DDD    mov        byte ptr [ebp-1C],0B
 004E8DE1    mov        eax,dword ptr [ebp-4]
 004E8DE4    mov        dword ptr [ebp-18],eax
 004E8DE7    mov        byte ptr [ebp-14],0B
 004E8DEB    mov        eax,dword ptr [ebp+0C]
 004E8DEE    mov        dword ptr [ebp-10],eax
 004E8DF1    mov        byte ptr [ebp-0C],0B
 004E8DF5    lea        ecx,[ebp-20]
 004E8DF8    mov        edx,4
 004E8DFD    mov        eax,esi
 004E8DFF    call       004EA0D4
 004E8E04    cmp        dword ptr [ebp-8],0
>004E8E08    je         004E8F65
 004E8E0E    push       0
 004E8E10    mov        eax,dword ptr [ebp-8]
 004E8E13    push       eax
 004E8E14    lea        edx,[ebp-24]
 004E8E17    mov        eax,esi
 004E8E19    call       004EA080
 004E8E1E    mov        ecx,dword ptr [ebp-24]
 004E8E21    mov        dl,1
 004E8E23    mov        eax,[004E2510]; TZAdoResultSet
 004E8E28    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E8E2D    mov        esi,eax
>004E8E2F    jmp        004E8F48
 004E8E34    mov        edx,4E8FA8; 'COLUMN_FLAGS'
 004E8E39    mov        eax,esi
 004E8E3B    mov        ecx,dword ptr [eax]
 004E8E3D    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8E43    test       ah,2
>004E8E46    je         004E8F48
 004E8E4C    mov        eax,dword ptr [ebx]
 004E8E4E    mov        edx,dword ptr [eax]
 004E8E50    call       dword ptr [edx+1E4]
 004E8E56    mov        eax,dword ptr [ebx]
 004E8E58    xor        ecx,ecx
 004E8E5A    mov        edx,4E8FC0; 'SCOPE'
 004E8E5F    mov        edi,dword ptr [eax]
 004E8E61    call       dword ptr [edi+18C]
 004E8E67    lea        ecx,[ebp-28]
 004E8E6A    mov        edx,4E8FD0; 'COLUMN_NAME'
 004E8E6F    mov        eax,esi
 004E8E71    mov        edi,dword ptr [eax]
 004E8E73    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8E76    mov        ecx,dword ptr [ebp-28]
 004E8E79    mov        eax,dword ptr [ebx]
 004E8E7B    mov        edx,4E8FD0; 'COLUMN_NAME'
 004E8E80    mov        edi,dword ptr [eax]
 004E8E82    call       dword ptr [edi+1A8]
 004E8E88    mov        edx,4E8FE4; 'DATA_TYPE'
 004E8E8D    mov        eax,esi
 004E8E8F    mov        ecx,dword ptr [eax]
 004E8E91    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E8E94    call       004E1D64
 004E8E99    xor        ecx,ecx
 004E8E9B    mov        cl,al
 004E8E9D    mov        eax,dword ptr [ebx]
 004E8E9F    mov        edx,4E8FE4; 'DATA_TYPE'
 004E8EA4    mov        edi,dword ptr [eax]
 004E8EA6    call       dword ptr [edi+18C]
 004E8EAC    lea        ecx,[ebp-2C]
 004E8EAF    mov        edx,4E8FF8; 'TYPE_NAME'
 004E8EB4    mov        eax,esi
 004E8EB6    mov        edi,dword ptr [eax]
 004E8EB8    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E8EBB    mov        ecx,dword ptr [ebp-2C]
 004E8EBE    mov        eax,dword ptr [ebx]
 004E8EC0    mov        edx,4E8FF8; 'TYPE_NAME'
 004E8EC5    mov        edi,dword ptr [eax]
 004E8EC7    call       dword ptr [edi+1A8]
 004E8ECD    mov        edx,4E900C; 'CHARACTER_OCTET_LENGTH'
 004E8ED2    mov        eax,esi
 004E8ED4    mov        ecx,dword ptr [eax]
 004E8ED6    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8EDC    mov        ecx,eax
 004E8EDE    mov        eax,dword ptr [ebx]
 004E8EE0    mov        edx,4E902C; 'COLUMN_SIZE'
 004E8EE5    mov        edi,dword ptr [eax]
 004E8EE7    call       dword ptr [edi+190]
 004E8EED    mov        edx,4E900C; 'CHARACTER_OCTET_LENGTH'
 004E8EF2    mov        eax,esi
 004E8EF4    mov        ecx,dword ptr [eax]
 004E8EF6    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8EFC    mov        ecx,eax
 004E8EFE    mov        eax,dword ptr [ebx]
 004E8F00    mov        edx,4E9040; 'BUFFER_LENGTH'
 004E8F05    mov        edi,dword ptr [eax]
 004E8F07    call       dword ptr [edi+190]
 004E8F0D    mov        edx,4E9058; 'NUMERIC_SCALE'
 004E8F12    mov        eax,esi
 004E8F14    mov        ecx,dword ptr [eax]
 004E8F16    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E8F1C    mov        ecx,eax
 004E8F1E    mov        eax,dword ptr [ebx]
 004E8F20    mov        edx,4E9070; 'DECIMAL_DIGITS'
 004E8F25    mov        edi,dword ptr [eax]
 004E8F27    call       dword ptr [edi+190]
 004E8F2D    mov        eax,dword ptr [ebx]
 004E8F2F    xor        ecx,ecx
 004E8F31    mov        edx,4E9088; 'PSEUDO_COLUMN'
 004E8F36    mov        edi,dword ptr [eax]
 004E8F38    call       dword ptr [edi+18C]
 004E8F3E    mov        eax,dword ptr [ebx]
 004E8F40    mov        edx,dword ptr [eax]
 004E8F42    call       dword ptr [edx+1D0]
 004E8F48    mov        eax,esi
 004E8F4A    mov        edx,dword ptr [eax]
 004E8F4C    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E8F4F    test       al,al
<004E8F51    jne        004E8E34
 004E8F57    mov        eax,esi
 004E8F59    mov        edx,dword ptr [eax]
 004E8F5B    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E8F5E    mov        eax,esi
 004E8F60    call       TObject.Free
 004E8F65    xor        eax,eax
 004E8F67    pop        edx
 004E8F68    pop        ecx
 004E8F69    pop        ecx
 004E8F6A    mov        dword ptr fs:[eax],edx
 004E8F6D    push       4E8F97
 004E8F72    lea        eax,[ebp-2C]
 004E8F75    mov        edx,2
 004E8F7A    call       @LStrArrayClr
 004E8F7F    lea        eax,[ebp-24]
 004E8F82    call       @IntfClear
 004E8F87    lea        eax,[ebp-8]
 004E8F8A    call       @IntfClear
 004E8F8F    ret
<004E8F90    jmp        @HandleFinally
<004E8F95    jmp        004E8F72
 004E8F97    pop        edi
 004E8F98    pop        esi
 004E8F99    pop        ebx
 004E8F9A    mov        esp,ebp
 004E8F9C    pop        ebp
 004E8F9D    ret        8
*}
//end;

//004E9098
//procedure sub_004E9098(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E9098    push       ebp
 004E9099    mov        ebp,esp
 004E909B    add        esp,0FFFFFFC8
 004E909E    push       ebx
 004E909F    push       esi
 004E90A0    push       edi
 004E90A1    xor        ebx,ebx
 004E90A3    mov        dword ptr [ebp-38],ebx
 004E90A6    mov        dword ptr [ebp-34],ebx
 004E90A9    mov        dword ptr [ebp-30],ebx
 004E90AC    mov        dword ptr [ebp-2C],ebx
 004E90AF    mov        dword ptr [ebp-28],ebx
 004E90B2    mov        dword ptr [ebp-24],ebx
 004E90B5    mov        dword ptr [ebp-8],ebx
 004E90B8    mov        dword ptr [ebp-4],ecx
 004E90BB    mov        edi,edx
 004E90BD    mov        ebx,eax
 004E90BF    mov        esi,dword ptr [ebp+8]
 004E90C2    xor        eax,eax
 004E90C4    push       ebp
 004E90C5    push       4E9271
 004E90CA    push       dword ptr fs:[eax]
 004E90CD    mov        dword ptr fs:[eax],esp
 004E90D0    mov        ecx,esi
 004E90D2    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 004E90D8    mov        edx,dword ptr [edx]
 004E90DA    mov        eax,ebx
 004E90DC    call       004D8E7C
 004E90E1    push       2
 004E90E3    lea        eax,[ebp-8]
 004E90E6    push       eax
 004E90E7    mov        dword ptr [ebp-20],edi
 004E90EA    mov        byte ptr [ebp-1C],0B
 004E90EE    mov        eax,dword ptr [ebp-4]
 004E90F1    mov        dword ptr [ebp-18],eax
 004E90F4    mov        byte ptr [ebp-14],0B
 004E90F8    mov        eax,dword ptr [ebp+0C]
 004E90FB    mov        dword ptr [ebp-10],eax
 004E90FE    mov        byte ptr [ebp-0C],0B
 004E9102    lea        ecx,[ebp-20]
 004E9105    mov        edx,1C
 004E910A    mov        eax,ebx
 004E910C    call       004EA0D4
 004E9111    cmp        dword ptr [ebp-8],0
>004E9115    je         004E9246
 004E911B    push       0
 004E911D    mov        eax,dword ptr [ebp-8]
 004E9120    push       eax
 004E9121    lea        edx,[ebp-24]
 004E9124    mov        eax,ebx
 004E9126    call       004EA080
 004E912B    mov        ecx,dword ptr [ebp-24]
 004E912E    mov        dl,1
 004E9130    mov        eax,[004E2510]; TZAdoResultSet
 004E9135    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E913A    mov        ebx,eax
>004E913C    jmp        004E9229
 004E9141    mov        eax,dword ptr [esi]
 004E9143    mov        edx,dword ptr [eax]
 004E9145    call       dword ptr [edx+1E4]
 004E914B    lea        ecx,[ebp-28]
 004E914E    mov        edx,4E928C; 'TABLE_CATALOG'
 004E9153    mov        eax,ebx
 004E9155    mov        edi,dword ptr [eax]
 004E9157    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E915A    mov        ecx,dword ptr [ebp-28]
 004E915D    mov        eax,dword ptr [esi]
 004E915F    mov        edx,4E92A4; 'TABLE_CAT'
 004E9164    mov        edi,dword ptr [eax]
 004E9166    call       dword ptr [edi+1A8]
 004E916C    lea        ecx,[ebp-2C]
 004E916F    mov        edx,4E92B8; 'TABLE_SCHEMA'
 004E9174    mov        eax,ebx
 004E9176    mov        edi,dword ptr [eax]
 004E9178    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E917B    mov        ecx,dword ptr [ebp-2C]
 004E917E    mov        eax,dword ptr [esi]
 004E9180    mov        edx,4E92D0; 'TABLE_SCHEM'
 004E9185    mov        edi,dword ptr [eax]
 004E9187    call       dword ptr [edi+1A8]
 004E918D    lea        ecx,[ebp-30]
 004E9190    mov        edx,4E92E4; 'TABLE_NAME'
 004E9195    mov        eax,ebx
 004E9197    mov        edi,dword ptr [eax]
 004E9199    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E919C    mov        ecx,dword ptr [ebp-30]
 004E919F    mov        eax,dword ptr [esi]
 004E91A1    mov        edx,4E92E4; 'TABLE_NAME'
 004E91A6    mov        edi,dword ptr [eax]
 004E91A8    call       dword ptr [edi+1A8]
 004E91AE    lea        ecx,[ebp-34]
 004E91B1    mov        edx,4E92F8; 'COLUMN_NAME'
 004E91B6    mov        eax,ebx
 004E91B8    mov        edi,dword ptr [eax]
 004E91BA    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E91BD    mov        ecx,dword ptr [ebp-34]
 004E91C0    mov        eax,dword ptr [esi]
 004E91C2    mov        edx,4E92F8; 'COLUMN_NAME'
 004E91C7    mov        edi,dword ptr [eax]
 004E91C9    call       dword ptr [edi+1A8]
 004E91CF    mov        edx,4E930C; 'ORDINAL'
 004E91D4    mov        eax,ebx
 004E91D6    mov        ecx,dword ptr [eax]
 004E91D8    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E91DB    mov        ecx,eax
 004E91DD    mov        eax,dword ptr [esi]
 004E91DF    mov        edx,4E931C; 'KEY_SEQ'
 004E91E4    mov        edi,dword ptr [eax]
 004E91E6    call       dword ptr [edi+18C]
 004E91EC    mov        edx,4E932C; 'PK_NAME'
 004E91F1    mov        eax,ebx
 004E91F3    mov        ecx,dword ptr [eax]
 004E91F5    call       dword ptr [ecx+0C8]; TZAdoResultSet.sub_004D4F38
 004E91FB    dec        eax
>004E91FC    jl         004E921F
 004E91FE    lea        ecx,[ebp-38]
 004E9201    mov        edx,4E932C; 'PK_NAME'
 004E9206    mov        eax,ebx
 004E9208    mov        edi,dword ptr [eax]
 004E920A    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E920D    mov        ecx,dword ptr [ebp-38]
 004E9210    mov        eax,dword ptr [esi]
 004E9212    mov        edx,4E932C; 'PK_NAME'
 004E9217    mov        edi,dword ptr [eax]
 004E9219    call       dword ptr [edi+1A8]
 004E921F    mov        eax,dword ptr [esi]
 004E9221    mov        edx,dword ptr [eax]
 004E9223    call       dword ptr [edx+1D0]
 004E9229    mov        eax,ebx
 004E922B    mov        edx,dword ptr [eax]
 004E922D    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E9230    test       al,al
<004E9232    jne        004E9141
 004E9238    mov        eax,ebx
 004E923A    mov        edx,dword ptr [eax]
 004E923C    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E923F    mov        eax,ebx
 004E9241    call       TObject.Free
 004E9246    xor        eax,eax
 004E9248    pop        edx
 004E9249    pop        ecx
 004E924A    pop        ecx
 004E924B    mov        dword ptr fs:[eax],edx
 004E924E    push       4E9278
 004E9253    lea        eax,[ebp-38]
 004E9256    mov        edx,5
 004E925B    call       @LStrArrayClr
 004E9260    lea        eax,[ebp-24]
 004E9263    call       @IntfClear
 004E9268    lea        eax,[ebp-8]
 004E926B    call       @IntfClear
 004E9270    ret
<004E9271    jmp        @HandleFinally
<004E9276    jmp        004E9253
 004E9278    pop        edi
 004E9279    pop        esi
 004E927A    pop        ebx
 004E927B    mov        esp,ebp
 004E927D    pop        ebp
 004E927E    ret        8
*}
//end;

//004E9334
//procedure sub_004E9334(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E9334    push       ebp
 004E9335    mov        ebp,esp
 004E9337    push       ecx
 004E9338    push       ebx
 004E9339    push       esi
 004E933A    mov        dword ptr [ebp-4],ecx
 004E933D    mov        esi,edx
 004E933F    mov        ebx,eax
 004E9341    push       0
 004E9343    push       esi
 004E9344    mov        eax,dword ptr [ebp-4]
 004E9347    push       eax
 004E9348    mov        eax,dword ptr [ebp+0C]
 004E934B    push       eax
 004E934C    mov        eax,dword ptr [ebp+8]
 004E934F    push       eax
 004E9350    xor        ecx,ecx
 004E9352    xor        edx,edx
 004E9354    mov        eax,ebx
 004E9356    mov        ebx,dword ptr [eax]
 004E9358    call       dword ptr [ebx+30]; TZAdoDatabaseMetadata.sub_004E9394
 004E935B    pop        esi
 004E935C    pop        ebx
 004E935D    pop        ecx
 004E935E    pop        ebp
 004E935F    ret        8
*}
//end;

//004E9364
//procedure sub_004E9364(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E9364    push       ebp
 004E9365    mov        ebp,esp
 004E9367    push       ecx
 004E9368    push       ebx
 004E9369    push       esi
 004E936A    mov        dword ptr [ebp-4],ecx
 004E936D    mov        esi,edx
 004E936F    mov        ebx,eax
 004E9371    mov        eax,dword ptr [ebp+0C]
 004E9374    push       eax
 004E9375    push       0
 004E9377    push       0
 004E9379    push       0
 004E937B    mov        eax,dword ptr [ebp+8]
 004E937E    push       eax
 004E937F    mov        ecx,dword ptr [ebp-4]
 004E9382    mov        edx,esi
 004E9384    mov        eax,ebx
 004E9386    mov        ebx,dword ptr [eax]
 004E9388    call       dword ptr [ebx+30]; TZAdoDatabaseMetadata.sub_004E9394
 004E938B    pop        esi
 004E938C    pop        ebx
 004E938D    pop        ecx
 004E938E    pop        ebp
 004E938F    ret        8
*}
//end;

//004E9394
//procedure sub_004E9394(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E9394    push       ebp
 004E9395    mov        ebp,esp
 004E9397    push       ecx
 004E9398    mov        ecx,0C
 004E939D    push       0
 004E939F    push       0
 004E93A1    dec        ecx
<004E93A2    jne        004E939D
 004E93A4    xchg       ecx,dword ptr [ebp-4]
 004E93A7    push       ebx
 004E93A8    push       esi
 004E93A9    push       edi
 004E93AA    mov        dword ptr [ebp-4],ecx
 004E93AD    mov        edi,edx
 004E93AF    mov        esi,eax
 004E93B1    mov        ebx,dword ptr [ebp+8]
 004E93B4    xor        eax,eax
 004E93B6    push       ebp
 004E93B7    push       4E9632
 004E93BC    push       dword ptr fs:[eax]
 004E93BF    mov        dword ptr fs:[eax],esp
 004E93C2    mov        ecx,ebx
 004E93C4    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 004E93CA    mov        edx,dword ptr [edx]
 004E93CC    mov        eax,esi
 004E93CE    call       004D8E7C
 004E93D3    push       5
 004E93D5    lea        eax,[ebp-8]
 004E93D8    push       eax
 004E93D9    mov        dword ptr [ebp-38],edi
 004E93DC    mov        byte ptr [ebp-34],0B
 004E93E0    mov        eax,dword ptr [ebp-4]
 004E93E3    mov        dword ptr [ebp-30],eax
 004E93E6    mov        byte ptr [ebp-2C],0B
 004E93EA    mov        eax,dword ptr [ebp+18]
 004E93ED    mov        dword ptr [ebp-28],eax
 004E93F0    mov        byte ptr [ebp-24],0B
 004E93F4    mov        eax,dword ptr [ebp+14]
 004E93F7    mov        dword ptr [ebp-20],eax
 004E93FA    mov        byte ptr [ebp-1C],0B
 004E93FE    mov        eax,dword ptr [ebp+10]
 004E9401    mov        dword ptr [ebp-18],eax
 004E9404    mov        byte ptr [ebp-14],0B
 004E9408    mov        eax,dword ptr [ebp+0C]
 004E940B    mov        dword ptr [ebp-10],eax
 004E940E    mov        byte ptr [ebp-0C],0B
 004E9412    lea        ecx,[ebp-38]
 004E9415    mov        edx,1B
 004E941A    mov        eax,esi
 004E941C    call       004EA0D4
 004E9421    cmp        dword ptr [ebp-8],0
>004E9425    je         004E9607
 004E942B    push       0
 004E942D    mov        eax,dword ptr [ebp-8]
 004E9430    push       eax
 004E9431    lea        edx,[ebp-3C]
 004E9434    mov        eax,esi
 004E9436    call       004EA080
 004E943B    mov        ecx,dword ptr [ebp-3C]
 004E943E    mov        dl,1
 004E9440    mov        eax,[004E2510]; TZAdoResultSet
 004E9445    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E944A    mov        esi,eax
>004E944C    jmp        004E95EA
 004E9451    mov        eax,dword ptr [ebx]
 004E9453    mov        edx,dword ptr [eax]
 004E9455    call       dword ptr [edx+1E4]
 004E945B    lea        ecx,[ebp-40]
 004E945E    mov        edx,4E964C; 'PK_TABLE_CATALOG'
 004E9463    mov        eax,esi
 004E9465    mov        edi,dword ptr [eax]
 004E9467    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E946A    mov        ecx,dword ptr [ebp-40]
 004E946D    mov        eax,dword ptr [ebx]
 004E946F    mov        edx,4E9668; 'PKTABLE_CAT'
 004E9474    mov        edi,dword ptr [eax]
 004E9476    call       dword ptr [edi+1A8]
 004E947C    lea        ecx,[ebp-44]
 004E947F    mov        edx,4E967C; 'PK_TABLE_SCHEMA'
 004E9484    mov        eax,esi
 004E9486    mov        edi,dword ptr [eax]
 004E9488    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E948B    mov        ecx,dword ptr [ebp-44]
 004E948E    mov        eax,dword ptr [ebx]
 004E9490    mov        edx,4E9694; 'PKTABLE_SCHEM'
 004E9495    mov        edi,dword ptr [eax]
 004E9497    call       dword ptr [edi+1A8]
 004E949D    lea        ecx,[ebp-48]
 004E94A0    mov        edx,4E96AC; 'PK_TABLE_NAME'
 004E94A5    mov        eax,esi
 004E94A7    mov        edi,dword ptr [eax]
 004E94A9    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E94AC    mov        ecx,dword ptr [ebp-48]
 004E94AF    mov        eax,dword ptr [ebx]
 004E94B1    mov        edx,4E96C4; 'PKTABLE_NAME'
 004E94B6    mov        edi,dword ptr [eax]
 004E94B8    call       dword ptr [edi+1A8]
 004E94BE    lea        ecx,[ebp-4C]
 004E94C1    mov        edx,4E96DC; 'PK_COLUMN_NAME'
 004E94C6    mov        eax,esi
 004E94C8    mov        edi,dword ptr [eax]
 004E94CA    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E94CD    mov        ecx,dword ptr [ebp-4C]
 004E94D0    mov        eax,dword ptr [ebx]
 004E94D2    mov        edx,4E96F4; 'PKCOLUMN_NAME'
 004E94D7    mov        edi,dword ptr [eax]
 004E94D9    call       dword ptr [edi+1A8]
 004E94DF    lea        ecx,[ebp-50]
 004E94E2    mov        edx,4E970C; 'FK_TABLE_CATALOG'
 004E94E7    mov        eax,esi
 004E94E9    mov        edi,dword ptr [eax]
 004E94EB    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E94EE    mov        ecx,dword ptr [ebp-50]
 004E94F1    mov        eax,dword ptr [ebx]
 004E94F3    mov        edx,4E9728; 'FKTABLE_CAT'
 004E94F8    mov        edi,dword ptr [eax]
 004E94FA    call       dword ptr [edi+1A8]
 004E9500    lea        ecx,[ebp-54]
 004E9503    mov        edx,4E973C; 'FK_TABLE_SCHEMA'
 004E9508    mov        eax,esi
 004E950A    mov        edi,dword ptr [eax]
 004E950C    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E950F    mov        ecx,dword ptr [ebp-54]
 004E9512    mov        eax,dword ptr [ebx]
 004E9514    mov        edx,4E9754; 'FKTABLE_SCHEM'
 004E9519    mov        edi,dword ptr [eax]
 004E951B    call       dword ptr [edi+1A8]
 004E9521    lea        ecx,[ebp-58]
 004E9524    mov        edx,4E976C; 'FK_TABLE_NAME'
 004E9529    mov        eax,esi
 004E952B    mov        edi,dword ptr [eax]
 004E952D    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9530    mov        ecx,dword ptr [ebp-58]
 004E9533    mov        eax,dword ptr [ebx]
 004E9535    mov        edx,4E9784; 'FKTABLE_NAME'
 004E953A    mov        edi,dword ptr [eax]
 004E953C    call       dword ptr [edi+1A8]
 004E9542    lea        ecx,[ebp-5C]
 004E9545    mov        edx,4E979C; 'FK_COLUMN_NAME'
 004E954A    mov        eax,esi
 004E954C    mov        edi,dword ptr [eax]
 004E954E    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9551    mov        ecx,dword ptr [ebp-5C]
 004E9554    mov        eax,dword ptr [ebx]
 004E9556    mov        edx,4E97B4; 'FKCOLUMN_NAME'
 004E955B    mov        edi,dword ptr [eax]
 004E955D    call       dword ptr [edi+1A8]
 004E9563    mov        edx,4E97CC; 'ORDINAL'
 004E9568    mov        eax,esi
 004E956A    mov        ecx,dword ptr [eax]
 004E956C    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E956F    mov        ecx,eax
 004E9571    mov        eax,dword ptr [ebx]
 004E9573    mov        edx,4E97DC; 'KEY_SEQ'
 004E9578    mov        edi,dword ptr [eax]
 004E957A    call       dword ptr [edi+18C]
 004E9580    lea        ecx,[ebp-60]
 004E9583    mov        edx,4E97EC; 'FK_NAME'
 004E9588    mov        eax,esi
 004E958A    mov        edi,dword ptr [eax]
 004E958C    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E958F    mov        ecx,dword ptr [ebp-60]
 004E9592    mov        eax,dword ptr [ebx]
 004E9594    mov        edx,4E97EC; 'FK_NAME'
 004E9599    mov        edi,dword ptr [eax]
 004E959B    call       dword ptr [edi+1A8]
 004E95A1    lea        ecx,[ebp-64]
 004E95A4    mov        edx,4E97FC; 'PK_NAME'
 004E95A9    mov        eax,esi
 004E95AB    mov        edi,dword ptr [eax]
 004E95AD    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E95B0    mov        ecx,dword ptr [ebp-64]
 004E95B3    mov        eax,dword ptr [ebx]
 004E95B5    mov        edx,4E97FC; 'PK_NAME'
 004E95BA    mov        edi,dword ptr [eax]
 004E95BC    call       dword ptr [edi+1A8]
 004E95C2    mov        edx,4E980C; 'DEFERRABILITY'
 004E95C7    mov        eax,esi
 004E95C9    mov        ecx,dword ptr [eax]
 004E95CB    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E95CE    movsx      ecx,ax
 004E95D1    mov        eax,dword ptr [ebx]
 004E95D3    mov        edx,4E980C; 'DEFERRABILITY'
 004E95D8    mov        edi,dword ptr [eax]
 004E95DA    call       dword ptr [edi+190]
 004E95E0    mov        eax,dword ptr [ebx]
 004E95E2    mov        edx,dword ptr [eax]
 004E95E4    call       dword ptr [edx+1D0]
 004E95EA    mov        eax,esi
 004E95EC    mov        edx,dword ptr [eax]
 004E95EE    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E95F1    test       al,al
<004E95F3    jne        004E9451
 004E95F9    mov        eax,esi
 004E95FB    mov        edx,dword ptr [eax]
 004E95FD    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E9600    mov        eax,esi
 004E9602    call       TObject.Free
 004E9607    xor        eax,eax
 004E9609    pop        edx
 004E960A    pop        ecx
 004E960B    pop        ecx
 004E960C    mov        dword ptr fs:[eax],edx
 004E960F    push       4E9639
 004E9614    lea        eax,[ebp-64]
 004E9617    mov        edx,0A
 004E961C    call       @LStrArrayClr
 004E9621    lea        eax,[ebp-3C]
 004E9624    call       @IntfClear
 004E9629    lea        eax,[ebp-8]
 004E962C    call       @IntfClear
 004E9631    ret
<004E9632    jmp        @HandleFinally
<004E9637    jmp        004E9614
 004E9639    pop        edi
 004E963A    pop        esi
 004E963B    pop        ebx
 004E963C    mov        esp,ebp
 004E963E    pop        ebp
 004E963F    ret        14
*}
//end;

//004E981C
//procedure sub_004E981C(?:?);
//begin
{*
 004E981C    push       ebp
 004E981D    mov        ebp,esp
 004E981F    xor        ecx,ecx
 004E9821    push       ecx
 004E9822    push       ecx
 004E9823    push       ecx
 004E9824    push       ecx
 004E9825    push       ecx
 004E9826    push       ecx
 004E9827    push       ecx
 004E9828    push       ecx
 004E9829    push       ebx
 004E982A    push       esi
 004E982B    push       edi
 004E982C    mov        ebx,edx
 004E982E    mov        esi,eax
 004E9830    xor        eax,eax
 004E9832    push       ebp
 004E9833    push       4E9AD5
 004E9838    push       dword ptr fs:[eax]
 004E983B    mov        dword ptr fs:[eax],esp
 004E983E    mov        ecx,ebx
 004E9840    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 004E9846    mov        edx,dword ptr [edx]
 004E9848    mov        eax,esi
 004E984A    call       004D8E7C
 004E984F    push       0FF
 004E9851    lea        eax,[ebp-8]
 004E9854    push       eax
 004E9855    lea        ecx,[ebp-8]
 004E9858    mov        edx,16
 004E985D    mov        eax,esi
 004E985F    call       004EA0D4
 004E9864    mov        edx,dword ptr [ebp-8]
 004E9867    lea        eax,[ebp-4]
 004E986A    call       @IntfCopy
 004E986F    cmp        dword ptr [ebp-4],0
>004E9873    je         004E9A9F
 004E9879    push       0
 004E987B    mov        eax,dword ptr [ebp-4]
 004E987E    push       eax
 004E987F    lea        edx,[ebp-0C]
 004E9882    mov        eax,esi
 004E9884    call       004EA080
 004E9889    mov        ecx,dword ptr [ebp-0C]
 004E988C    mov        dl,1
 004E988E    mov        eax,[004E2510]; TZAdoResultSet
 004E9893    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E9898    mov        esi,eax
>004E989A    jmp        004E9A82
 004E989F    mov        eax,dword ptr [ebx]
 004E98A1    mov        edx,dword ptr [eax]
 004E98A3    call       dword ptr [edx+1E4]
 004E98A9    lea        ecx,[ebp-10]
 004E98AC    mov        edx,4E9AEC; 'TYPE_NAME'
 004E98B1    mov        eax,esi
 004E98B3    mov        edi,dword ptr [eax]
 004E98B5    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E98B8    mov        ecx,dword ptr [ebp-10]
 004E98BB    mov        eax,dword ptr [ebx]
 004E98BD    mov        edx,4E9AEC; 'TYPE_NAME'
 004E98C2    mov        edi,dword ptr [eax]
 004E98C4    call       dword ptr [edi+1A8]
 004E98CA    mov        edx,4E9B00; 'DATA_TYPE'
 004E98CF    mov        eax,esi
 004E98D1    mov        ecx,dword ptr [eax]
 004E98D3    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E98D6    call       004E1D64
 004E98DB    xor        ecx,ecx
 004E98DD    mov        cl,al
 004E98DF    mov        eax,dword ptr [ebx]
 004E98E1    mov        edx,4E9B00; 'DATA_TYPE'
 004E98E6    mov        edi,dword ptr [eax]
 004E98E8    call       dword ptr [edi+18C]
 004E98EE    mov        eax,dword ptr [ebx]
 004E98F0    xor        ecx,ecx
 004E98F2    mov        edx,4E9B14; 'PRECISION'
 004E98F7    mov        edi,dword ptr [eax]
 004E98F9    call       dword ptr [edi+190]
 004E98FF    lea        ecx,[ebp-14]
 004E9902    mov        edx,4E9B28; 'LITERAL_PREFIX'
 004E9907    mov        eax,esi
 004E9909    mov        edi,dword ptr [eax]
 004E990B    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E990E    mov        ecx,dword ptr [ebp-14]
 004E9911    mov        eax,dword ptr [ebx]
 004E9913    mov        edx,4E9B28; 'LITERAL_PREFIX'
 004E9918    mov        edi,dword ptr [eax]
 004E991A    call       dword ptr [edi+1A8]
 004E9920    lea        ecx,[ebp-18]
 004E9923    mov        edx,4E9B40; 'LITERAL_SUFFIX'
 004E9928    mov        eax,esi
 004E992A    mov        edi,dword ptr [eax]
 004E992C    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E992F    mov        ecx,dword ptr [ebp-18]
 004E9932    mov        eax,dword ptr [ebx]
 004E9934    mov        edx,4E9B40; 'LITERAL_SUFFIX'
 004E9939    mov        edi,dword ptr [eax]
 004E993B    call       dword ptr [edi+1A8]
 004E9941    lea        ecx,[ebp-1C]
 004E9944    mov        edx,4E9B58; 'CREATE_PARAMS'
 004E9949    mov        eax,esi
 004E994B    mov        edi,dword ptr [eax]
 004E994D    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9950    mov        ecx,dword ptr [ebp-1C]
 004E9953    mov        eax,dword ptr [ebx]
 004E9955    mov        edx,4E9B58; 'CREATE_PARAMS'
 004E995A    mov        edi,dword ptr [eax]
 004E995C    call       dword ptr [edi+1A8]
 004E9962    mov        edx,4E9B70; 'IS_NULLABLE'
 004E9967    mov        eax,esi
 004E9969    mov        ecx,dword ptr [eax]
 004E996B    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E996E    test       al,al
>004E9970    je         004E9987
 004E9972    mov        eax,dword ptr [ebx]
 004E9974    mov        cx,1
 004E9978    mov        edx,4E9B84; 'NULLABLE'
 004E997D    mov        edi,dword ptr [eax]
 004E997F    call       dword ptr [edi+18C]
>004E9985    jmp        004E9998
 004E9987    mov        eax,dword ptr [ebx]
 004E9989    xor        ecx,ecx
 004E998B    mov        edx,4E9B84; 'NULLABLE'
 004E9990    mov        edi,dword ptr [eax]
 004E9992    call       dword ptr [edi+18C]
 004E9998    mov        edx,4E9B98; 'CASE_SENSITIVE'
 004E999D    mov        eax,esi
 004E999F    mov        ecx,dword ptr [eax]
 004E99A1    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E99A4    mov        ecx,eax
 004E99A6    mov        eax,dword ptr [ebx]
 004E99A8    mov        edx,4E9B98; 'CASE_SENSITIVE'
 004E99AD    mov        edi,dword ptr [eax]
 004E99AF    call       dword ptr [edi+184]
 004E99B5    mov        edx,4E9BB0; 'SEARCHABLE'
 004E99BA    mov        eax,esi
 004E99BC    mov        ecx,dword ptr [eax]
 004E99BE    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E99C1    mov        ecx,eax
 004E99C3    mov        eax,dword ptr [ebx]
 004E99C5    mov        edx,4E9BB0; 'SEARCHABLE'
 004E99CA    mov        edi,dword ptr [eax]
 004E99CC    call       dword ptr [edi+18C]
 004E99D2    mov        edx,4E9BC4; 'UNSIGNED_ATTRIBUTE'
 004E99D7    mov        eax,esi
 004E99D9    mov        ecx,dword ptr [eax]
 004E99DB    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E99DE    mov        ecx,eax
 004E99E0    mov        eax,dword ptr [ebx]
 004E99E2    mov        edx,4E9BC4; 'UNSIGNED_ATTRIBUTE'
 004E99E7    mov        edi,dword ptr [eax]
 004E99E9    call       dword ptr [edi+184]
 004E99EF    mov        edx,4E9BE0; 'FIXED_PREC_SCALE'
 004E99F4    mov        eax,esi
 004E99F6    mov        ecx,dword ptr [eax]
 004E99F8    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E99FB    mov        ecx,eax
 004E99FD    mov        eax,dword ptr [ebx]
 004E99FF    mov        edx,4E9BE0; 'FIXED_PREC_SCALE'
 004E9A04    mov        edi,dword ptr [eax]
 004E9A06    call       dword ptr [edi+184]
 004E9A0C    mov        eax,dword ptr [ebx]
 004E9A0E    xor        ecx,ecx
 004E9A10    mov        edx,4E9BFC; 'AUTO_INCREMENT'
 004E9A15    mov        edi,dword ptr [eax]
 004E9A17    call       dword ptr [edi+184]
 004E9A1D    lea        ecx,[ebp-20]
 004E9A20    mov        edx,4E9C14; 'LOCAL_TYPE_NAME'
 004E9A25    mov        eax,esi
 004E9A27    mov        edi,dword ptr [eax]
 004E9A29    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9A2C    mov        ecx,dword ptr [ebp-20]
 004E9A2F    mov        eax,dword ptr [ebx]
 004E9A31    mov        edx,4E9C14; 'LOCAL_TYPE_NAME'
 004E9A36    mov        edi,dword ptr [eax]
 004E9A38    call       dword ptr [edi+1A8]
 004E9A3E    mov        edx,4E9C2C; 'MINIMUM_SCALE'
 004E9A43    mov        eax,esi
 004E9A45    mov        ecx,dword ptr [eax]
 004E9A47    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E9A4A    mov        ecx,eax
 004E9A4C    mov        eax,dword ptr [ebx]
 004E9A4E    mov        edx,4E9C2C; 'MINIMUM_SCALE'
 004E9A53    mov        edi,dword ptr [eax]
 004E9A55    call       dword ptr [edi+18C]
 004E9A5B    mov        edx,4E9C44; 'MAXIMUM_SCALE'
 004E9A60    mov        eax,esi
 004E9A62    mov        ecx,dword ptr [eax]
 004E9A64    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E9A67    mov        ecx,eax
 004E9A69    mov        eax,dword ptr [ebx]
 004E9A6B    mov        edx,4E9C44; 'MAXIMUM_SCALE'
 004E9A70    mov        edi,dword ptr [eax]
 004E9A72    call       dword ptr [edi+18C]
 004E9A78    mov        eax,dword ptr [ebx]
 004E9A7A    mov        edx,dword ptr [eax]
 004E9A7C    call       dword ptr [edx+1D0]
 004E9A82    mov        eax,esi
 004E9A84    mov        edx,dword ptr [eax]
 004E9A86    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E9A89    test       al,al
<004E9A8B    jne        004E989F
 004E9A91    mov        eax,esi
 004E9A93    mov        edx,dword ptr [eax]
 004E9A95    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E9A98    mov        eax,esi
 004E9A9A    call       TObject.Free
 004E9A9F    xor        eax,eax
 004E9AA1    pop        edx
 004E9AA2    pop        ecx
 004E9AA3    pop        ecx
 004E9AA4    mov        dword ptr fs:[eax],edx
 004E9AA7    push       4E9ADC
 004E9AAC    lea        eax,[ebp-20]
 004E9AAF    mov        edx,5
 004E9AB4    call       @LStrArrayClr
 004E9AB9    lea        eax,[ebp-0C]
 004E9ABC    call       @IntfClear
 004E9AC1    lea        eax,[ebp-8]
 004E9AC4    mov        edx,dword ptr ds:[4DE638]; Recordset15
 004E9ACA    mov        ecx,2
 004E9ACF    call       @FinalizeArray
 004E9AD4    ret
<004E9AD5    jmp        @HandleFinally
<004E9ADA    jmp        004E9AAC
 004E9ADC    pop        edi
 004E9ADD    pop        esi
 004E9ADE    pop        ebx
 004E9ADF    mov        esp,ebp
 004E9AE1    pop        ebp
 004E9AE2    ret
*}
//end;

//004E9C54
//procedure sub_004E9C54(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004E9C54    push       ebp
 004E9C55    mov        ebp,esp
 004E9C57    add        esp,0FFFFFFB0
 004E9C5A    push       ebx
 004E9C5B    push       esi
 004E9C5C    push       edi
 004E9C5D    xor        ebx,ebx
 004E9C5F    mov        dword ptr [ebp-50],ebx
 004E9C62    mov        dword ptr [ebp-4C],ebx
 004E9C65    mov        dword ptr [ebp-48],ebx
 004E9C68    mov        dword ptr [ebp-44],ebx
 004E9C6B    mov        dword ptr [ebp-40],ebx
 004E9C6E    mov        dword ptr [ebp-3C],ebx
 004E9C71    mov        dword ptr [ebp-38],ebx
 004E9C74    mov        dword ptr [ebp-34],ebx
 004E9C77    mov        dword ptr [ebp-8],ebx
 004E9C7A    mov        dword ptr [ebp-4],ecx
 004E9C7D    mov        edi,edx
 004E9C7F    mov        esi,eax
 004E9C81    mov        ebx,dword ptr [ebp+8]
 004E9C84    xor        eax,eax
 004E9C86    push       ebp
 004E9C87    push       4E9EF2
 004E9C8C    push       dword ptr fs:[eax]
 004E9C8F    mov        dword ptr fs:[eax],esp
 004E9C92    mov        ecx,ebx
 004E9C94    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 004E9C9A    mov        edx,dword ptr [edx]
 004E9C9C    mov        eax,esi
 004E9C9E    call       004D8E7C
 004E9CA3    push       4
 004E9CA5    lea        eax,[ebp-8]
 004E9CA8    push       eax
 004E9CA9    mov        dword ptr [ebp-30],edi
 004E9CAC    mov        byte ptr [ebp-2C],0B
 004E9CB0    mov        eax,dword ptr [ebp-4]
 004E9CB3    mov        dword ptr [ebp-28],eax
 004E9CB6    mov        byte ptr [ebp-24],0B
 004E9CBA    xor        eax,eax
 004E9CBC    mov        dword ptr [ebp-20],eax
 004E9CBF    mov        byte ptr [ebp-1C],0B
 004E9CC3    xor        eax,eax
 004E9CC5    mov        dword ptr [ebp-18],eax
 004E9CC8    mov        byte ptr [ebp-14],0B
 004E9CCC    mov        eax,dword ptr [ebp+14]
 004E9CCF    mov        dword ptr [ebp-10],eax
 004E9CD2    mov        byte ptr [ebp-0C],0B
 004E9CD6    lea        ecx,[ebp-30]
 004E9CD9    mov        edx,0C
 004E9CDE    mov        eax,esi
 004E9CE0    call       004EA0D4
 004E9CE5    cmp        dword ptr [ebp-8],0
>004E9CE9    je         004E9EC7
 004E9CEF    push       0
 004E9CF1    mov        eax,dword ptr [ebp-8]
 004E9CF4    push       eax
 004E9CF5    lea        edx,[ebp-34]
 004E9CF8    mov        eax,esi
 004E9CFA    call       004EA080
 004E9CFF    mov        ecx,dword ptr [ebp-34]
 004E9D02    mov        dl,1
 004E9D04    mov        eax,[004E2510]; TZAdoResultSet
 004E9D09    call       TZAdoResultSet.Create; TZAdoResultSet.Create
 004E9D0E    mov        esi,eax
>004E9D10    jmp        004E9EAA
 004E9D15    mov        eax,dword ptr [ebx]
 004E9D17    mov        edx,dword ptr [eax]
 004E9D19    call       dword ptr [edx+1E4]
 004E9D1F    lea        ecx,[ebp-38]
 004E9D22    mov        edx,4E9F0C; 'TABLE_CATALOG'
 004E9D27    mov        eax,esi
 004E9D29    mov        edi,dword ptr [eax]
 004E9D2B    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9D2E    mov        ecx,dword ptr [ebp-38]
 004E9D31    mov        eax,dword ptr [ebx]
 004E9D33    mov        edx,4E9F24; 'TABLE_CAT'
 004E9D38    mov        edi,dword ptr [eax]
 004E9D3A    call       dword ptr [edi+1A8]
 004E9D40    lea        ecx,[ebp-3C]
 004E9D43    mov        edx,4E9F38; 'TABLE_SCHEMA'
 004E9D48    mov        eax,esi
 004E9D4A    mov        edi,dword ptr [eax]
 004E9D4C    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9D4F    mov        ecx,dword ptr [ebp-3C]
 004E9D52    mov        eax,dword ptr [ebx]
 004E9D54    mov        edx,4E9F50; 'TABLE_SCHEM'
 004E9D59    mov        edi,dword ptr [eax]
 004E9D5B    call       dword ptr [edi+1A8]
 004E9D61    lea        ecx,[ebp-40]
 004E9D64    mov        edx,4E9F64; 'TABLE_NAME'
 004E9D69    mov        eax,esi
 004E9D6B    mov        edi,dword ptr [eax]
 004E9D6D    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9D70    mov        ecx,dword ptr [ebp-40]
 004E9D73    mov        eax,dword ptr [ebx]
 004E9D75    mov        edx,4E9F64; 'TABLE_NAME'
 004E9D7A    mov        edi,dword ptr [eax]
 004E9D7C    call       dword ptr [edi+1A8]
 004E9D82    mov        edx,4E9F78; 'UNIQUE'
 004E9D87    mov        eax,esi
 004E9D89    mov        ecx,dword ptr [eax]
 004E9D8B    call       dword ptr [ecx+74]; TZAdoResultSet.sub_004D4BDC
 004E9D8E    mov        ecx,eax
 004E9D90    xor        cl,1
 004E9D93    mov        eax,dword ptr [ebx]
 004E9D95    mov        edx,4E9F88; 'NON_UNIQUE'
 004E9D9A    mov        edi,dword ptr [eax]
 004E9D9C    call       dword ptr [edi+184]
 004E9DA2    lea        ecx,[ebp-44]
 004E9DA5    mov        edx,4E9F9C; 'INDEX_CATALOG'
 004E9DAA    mov        eax,esi
 004E9DAC    mov        edi,dword ptr [eax]
 004E9DAE    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9DB1    mov        ecx,dword ptr [ebp-44]
 004E9DB4    mov        eax,dword ptr [ebx]
 004E9DB6    mov        edx,4E9FB4; 'INDEX_QUALIFIER'
 004E9DBB    mov        edi,dword ptr [eax]
 004E9DBD    call       dword ptr [edi+1A8]
 004E9DC3    lea        ecx,[ebp-48]
 004E9DC6    mov        edx,4E9FCC; 'INDEX_NAME'
 004E9DCB    mov        eax,esi
 004E9DCD    mov        edi,dword ptr [eax]
 004E9DCF    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9DD2    mov        ecx,dword ptr [ebp-48]
 004E9DD5    mov        eax,dword ptr [ebx]
 004E9DD7    mov        edx,4E9FCC; 'INDEX_NAME'
 004E9DDC    mov        edi,dword ptr [eax]
 004E9DDE    call       dword ptr [edi+1A8]
 004E9DE4    mov        edx,4E9FE0; 'TYPE'
 004E9DE9    mov        eax,esi
 004E9DEB    mov        ecx,dword ptr [eax]
 004E9DED    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E9DF0    mov        ecx,eax
 004E9DF2    mov        eax,dword ptr [ebx]
 004E9DF4    mov        edx,4E9FE0; 'TYPE'
 004E9DF9    mov        edi,dword ptr [eax]
 004E9DFB    call       dword ptr [edi+18C]
 004E9E01    mov        edx,4E9FF0; 'ORDINAL_POSITION'
 004E9E06    mov        eax,esi
 004E9E08    mov        ecx,dword ptr [eax]
 004E9E0A    call       dword ptr [ecx+7C]; TZAdoResultSet.sub_004D4C1C
 004E9E0D    mov        ecx,eax
 004E9E0F    mov        eax,dword ptr [ebx]
 004E9E11    mov        edx,4E9FF0; 'ORDINAL_POSITION'
 004E9E16    mov        edi,dword ptr [eax]
 004E9E18    call       dword ptr [edi+18C]
 004E9E1E    lea        ecx,[ebp-4C]
 004E9E21    mov        edx,4EA00C; 'COLUMN_NAME'
 004E9E26    mov        eax,esi
 004E9E28    mov        edi,dword ptr [eax]
 004E9E2A    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9E2D    mov        ecx,dword ptr [ebp-4C]
 004E9E30    mov        eax,dword ptr [ebx]
 004E9E32    mov        edx,4EA00C; 'COLUMN_NAME'
 004E9E37    mov        edi,dword ptr [eax]
 004E9E39    call       dword ptr [edi+1A8]
 004E9E3F    mov        edx,4EA020; 'CARDINALITY'
 004E9E44    mov        eax,esi
 004E9E46    mov        ecx,dword ptr [eax]
 004E9E48    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E9E4E    mov        ecx,eax
 004E9E50    mov        eax,dword ptr [ebx]
 004E9E52    mov        edx,4EA020; 'CARDINALITY'
 004E9E57    mov        edi,dword ptr [eax]
 004E9E59    call       dword ptr [edi+190]
 004E9E5F    mov        edx,4EA034; 'PAGES'
 004E9E64    mov        eax,esi
 004E9E66    mov        ecx,dword ptr [eax]
 004E9E68    call       dword ptr [ecx+80]; TZAdoResultSet.sub_004D4C3C
 004E9E6E    mov        ecx,eax
 004E9E70    mov        eax,dword ptr [ebx]
 004E9E72    mov        edx,4EA034; 'PAGES'
 004E9E77    mov        edi,dword ptr [eax]
 004E9E79    call       dword ptr [edi+190]
 004E9E7F    lea        ecx,[ebp-50]
 004E9E82    mov        edx,4EA044; 'FILTER_CONDITION'
 004E9E87    mov        eax,esi
 004E9E89    mov        edi,dword ptr [eax]
 004E9E8B    call       dword ptr [edi+6C]; TZAdoResultSet.sub_004D4B8C
 004E9E8E    mov        ecx,dword ptr [ebp-50]
 004E9E91    mov        eax,dword ptr [ebx]
 004E9E93    mov        edx,4EA044; 'FILTER_CONDITION'
 004E9E98    mov        edi,dword ptr [eax]
 004E9E9A    call       dword ptr [edi+1A8]
 004E9EA0    mov        eax,dword ptr [ebx]
 004E9EA2    mov        edx,dword ptr [eax]
 004E9EA4    call       dword ptr [edx+1D0]
 004E9EAA    mov        eax,esi
 004E9EAC    mov        edx,dword ptr [eax]
 004E9EAE    call       dword ptr [edx+4]; TZAdoResultSet.sub_004E33C0
 004E9EB1    test       al,al
<004E9EB3    jne        004E9D15
 004E9EB9    mov        eax,esi
 004E9EBB    mov        edx,dword ptr [eax]
 004E9EBD    call       dword ptr [edx+8]; TZAdoResultSet.sub_004E33A8
 004E9EC0    mov        eax,esi
 004E9EC2    call       TObject.Free
 004E9EC7    xor        eax,eax
 004E9EC9    pop        edx
 004E9ECA    pop        ecx
 004E9ECB    pop        ecx
 004E9ECC    mov        dword ptr fs:[eax],edx
 004E9ECF    push       4E9EF9
 004E9ED4    lea        eax,[ebp-50]
 004E9ED7    mov        edx,7
 004E9EDC    call       @LStrArrayClr
 004E9EE1    lea        eax,[ebp-34]
 004E9EE4    call       @IntfClear
 004E9EE9    lea        eax,[ebp-8]
 004E9EEC    call       @IntfClear
 004E9EF1    ret
<004E9EF2    jmp        @HandleFinally
<004E9EF7    jmp        004E9ED4
 004E9EF9    pop        edi
 004E9EFA    pop        esi
 004E9EFB    pop        ebx
 004E9EFC    mov        esp,ebp
 004E9EFE    pop        ebp
 004E9EFF    ret        10
*}
//end;

//004EA058
//function sub_004EA058():?;
//begin
{*
 004EA058    mov        al,1
 004EA05A    ret
*}
//end;

//004EA05C
//function sub_004EA05C():?;
//begin
{*
 004EA05C    mov        al,1
 004EA05E    ret
*}
//end;

//004EA060
//procedure sub_004EA060(?:?);
//begin
{*
 004EA060    push       ebp
 004EA061    mov        ebp,esp
 004EA063    push       ebx
 004EA064    mov        ebx,eax
 004EA066    mov        ecx,dword ptr [ebp+8]
 004EA069    mov        edx,dword ptr ds:[61BA60]; ^gvar_0061DD7C:TZMetadataColumnDefs
 004EA06F    mov        edx,dword ptr [edx]
 004EA071    mov        eax,ebx
 004EA073    call       004D8E7C
 004EA078    pop        ebx
 004EA079    pop        ebp
 004EA07A    ret        0C
*}
//end;

//004EA080
//procedure sub_004EA080(?:TZAdoDatabaseMetadata; ?:?);
//begin
{*
 004EA080    push       ebp
 004EA081    mov        ebp,esp
 004EA083    push       0
 004EA085    push       ebx
 004EA086    push       esi
 004EA087    mov        esi,edx
 004EA089    mov        ebx,eax
 004EA08B    xor        eax,eax
 004EA08D    push       ebp
 004EA08E    push       4EA0C6
 004EA093    push       dword ptr fs:[eax]
 004EA096    mov        dword ptr fs:[eax],esp
 004EA099    lea        edx,[ebp-4]
 004EA09C    mov        eax,ebx
 004EA09E    mov        ecx,dword ptr [eax]
 004EA0A0    call       dword ptr [ecx+238]; TZAdoDatabaseMetadata.sub_004D8E64
 004EA0A6    mov        eax,dword ptr [ebp-4]
 004EA0A9    mov        edx,esi
 004EA0AB    mov        ecx,dword ptr [eax]
 004EA0AD    call       dword ptr [ecx+0C]
 004EA0B0    xor        eax,eax
 004EA0B2    pop        edx
 004EA0B3    pop        ecx
 004EA0B4    pop        ecx
 004EA0B5    mov        dword ptr fs:[eax],edx
 004EA0B8    push       4EA0CD
 004EA0BD    lea        eax,[ebp-4]
 004EA0C0    call       @IntfClear
 004EA0C5    ret
<004EA0C6    jmp        @HandleFinally
<004EA0CB    jmp        004EA0BD
 004EA0CD    pop        esi
 004EA0CE    pop        ebx
 004EA0CF    pop        ecx
 004EA0D0    pop        ebp
 004EA0D1    ret
*}
//end;

//004EA0D4
//procedure sub_004EA0D4(?:TZAdoDatabaseMetadata; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004EA0D4    push       ebp
 004EA0D5    mov        ebp,esp
 004EA0D7    push       ecx
 004EA0D8    mov        ecx,5
 004EA0DD    push       0
 004EA0DF    push       0
 004EA0E1    dec        ecx
<004EA0E2    jne        004EA0DD
 004EA0E4    xchg       ecx,dword ptr [ebp-4]
 004EA0E7    push       ebx
 004EA0E8    push       esi
 004EA0E9    push       edi
 004EA0EA    mov        edi,ecx
 004EA0EC    mov        esi,edx
 004EA0EE    mov        ebx,eax
 004EA0F0    xor        eax,eax
 004EA0F2    push       ebp
 004EA0F3    push       4EA20D
 004EA0F8    push       dword ptr fs:[eax]
 004EA0FB    mov        dword ptr fs:[eax],esp
 004EA0FE    mov        eax,dword ptr [ebp+8]
 004EA101    call       @IntfClear
 004EA106    cmp        byte ptr [ebx+28],0; TZAdoDatabaseMetadata.?f28:byte
>004EA10A    jne        004EA113
 004EA10C    mov        eax,ebx
 004EA10E    call       004EA230
 004EA113    mov        edx,esi
 004EA115    mov        eax,ebx
 004EA117    call       004EA49C
 004EA11C    test       al,al
>004EA11E    je         004EA1D7
 004EA124    xor        eax,eax
 004EA126    push       ebp
 004EA127    push       4EA1C5
 004EA12C    push       dword ptr fs:[eax]
 004EA12F    mov        dword ptr fs:[eax],esp
 004EA132    mov        eax,dword ptr [ebp+0C]
 004EA135    push       eax
 004EA136    lea        eax,[ebp-10]
 004EA139    push       eax
 004EA13A    mov        ecx,edi
 004EA13C    mov        edx,esi
 004EA13E    mov        eax,ebx
 004EA140    call       004EA4B8
 004EA145    mov        eax,dword ptr [ebp+8]
 004EA148    call       @IntfClear
 004EA14D    push       eax
 004EA14E    mov        eax,[0061B284]; ^EmptyParam:Variant
 004EA153    push       dword ptr [eax+0C]
 004EA156    push       dword ptr [eax+8]
 004EA159    push       dword ptr [eax+4]
 004EA15C    push       dword ptr [eax]
 004EA15E    lea        eax,[ebp-20]
 004EA161    lea        edx,[ebp-10]
 004EA164    call       @OleVarFromVar
 004EA169    push       dword ptr [ebp-14]
 004EA16C    push       dword ptr [ebp-18]
 004EA16F    push       dword ptr [ebp-1C]
 004EA172    push       dword ptr [ebp-20]
 004EA175    test       esi,esi
>004EA177    jns        004EA17E
 004EA179    call       @BoundErr
 004EA17E    push       esi
 004EA17F    lea        edx,[ebp-2C]
 004EA182    mov        eax,ebx
 004EA184    mov        ecx,dword ptr [eax]
 004EA186    call       dword ptr [ecx+238]; TZAdoDatabaseMetadata.sub_004D8E64
 004EA18C    mov        edx,dword ptr [ebp-2C]
 004EA18F    lea        eax,[ebp-28]
 004EA192    mov        ecx,4EA220; ['{50D1AF76-0174-41CD-B90B-4FB770EFB14F}']
 004EA197    call       @IntfCast
 004EA19C    mov        eax,dword ptr [ebp-28]
 004EA19F    lea        edx,[ebp-24]
 004EA1A2    mov        ecx,dword ptr [eax]
 004EA1A4    call       dword ptr [ecx+94]
 004EA1AA    mov        eax,dword ptr [ebp-24]
 004EA1AD    push       eax
 004EA1AE    mov        eax,dword ptr [eax]
 004EA1B0    call       dword ptr [eax+8C]
 004EA1B6    call       @CheckAutoResult
 004EA1BB    xor        eax,eax
 004EA1BD    pop        edx
 004EA1BE    pop        ecx
 004EA1BF    pop        ecx
 004EA1C0    mov        dword ptr fs:[eax],edx
>004EA1C3    jmp        004EA1D7
<004EA1C5    jmp        @HandleAnyException
 004EA1CA    mov        eax,dword ptr [ebp+8]
 004EA1CD    call       @IntfClear
 004EA1D2    call       @DoneExcept
 004EA1D7    xor        eax,eax
 004EA1D9    pop        edx
 004EA1DA    pop        ecx
 004EA1DB    pop        ecx
 004EA1DC    mov        dword ptr fs:[eax],edx
 004EA1DF    push       4EA214
 004EA1E4    lea        eax,[ebp-2C]
 004EA1E7    call       @IntfClear
 004EA1EC    lea        eax,[ebp-28]
 004EA1EF    call       @IntfClear
 004EA1F4    lea        eax,[ebp-24]
 004EA1F7    call       @IntfClear
 004EA1FC    lea        eax,[ebp-20]
 004EA1FF    call       @VarClr
 004EA204    lea        eax,[ebp-10]
 004EA207    call       @VarClr
 004EA20C    ret
<004EA20D    jmp        @HandleFinally
<004EA212    jmp        004EA1E4
 004EA214    pop        edi
 004EA215    pop        esi
 004EA216    pop        ebx
 004EA217    mov        esp,ebp
 004EA219    pop        ebp
 004EA21A    ret        8
*}
//end;

//004EA230
//procedure sub_004EA230(?:TZAdoDatabaseMetadata);
//begin
{*
 004EA230    push       ebp
 004EA231    mov        ebp,esp
 004EA233    mov        ecx,5
 004EA238    push       0
 004EA23A    push       0
 004EA23C    dec        ecx
<004EA23D    jne        004EA238
 004EA23F    push       ebx
 004EA240    push       esi
 004EA241    push       edi
 004EA242    mov        esi,eax
 004EA244    xor        eax,eax
 004EA246    push       ebp
 004EA247    push       4EA40D
 004EA24C    push       dword ptr fs:[eax]
 004EA24F    mov        dword ptr fs:[eax],esp
 004EA252    cmp        byte ptr [esi+28],0; TZAdoDatabaseMetadata.?f28:byte
>004EA256    jne        004EA3CF
 004EA25C    cmp        dword ptr [esi+24],0; TZAdoDatabaseMetadata.?f24:Connection15
>004EA260    jne        004EA29E
 004EA262    lea        eax,[ebp-4]
 004EA265    call       @IntfClear
 004EA26A    push       eax
 004EA26B    push       4EA41C
 004EA270    lea        edx,[ebp-20]
 004EA273    mov        eax,esi
 004EA275    mov        ecx,dword ptr [eax]
 004EA277    call       dword ptr [ecx+238]; TZAdoDatabaseMetadata.sub_004D8E64
 004EA27D    mov        eax,dword ptr [ebp-20]
 004EA280    push       eax
 004EA281    mov        eax,dword ptr [eax]
 004EA283    call       dword ptr [eax]
 004EA285    lea        edx,[ebp-24]
 004EA288    mov        eax,dword ptr [ebp-4]
 004EA28B    mov        ecx,dword ptr [eax]
 004EA28D    call       dword ptr [ecx+94]
 004EA293    mov        edx,dword ptr [ebp-24]
 004EA296    lea        eax,[esi+24]; TZAdoDatabaseMetadata.?f24:Connection15
 004EA299    call       @IntfCopy
 004EA29E    lea        eax,[ebp-8]
 004EA2A1    call       @IntfClear
 004EA2A6    push       eax
 004EA2A7    lea        eax,[ebp-28]
 004EA2AA    mov        edx,dword ptr [esi+24]; TZAdoDatabaseMetadata.?f24:Connection15
 004EA2AD    mov        ecx,4EA42C; ['{00000551-0000-0010-8000-00AA006D2EA4}']
 004EA2B2    call       @IntfCast
 004EA2B7    mov        eax,dword ptr [ebp-28]
 004EA2BA    push       eax
 004EA2BB    mov        eax,dword ptr [eax]
 004EA2BD    call       dword ptr [eax+10]
 004EA2C0    lea        eax,[ebp-0C]
 004EA2C3    call       @IntfClear
 004EA2C8    push       eax
 004EA2C9    push       4EA43C
 004EA2CE    mov        eax,dword ptr [ebp-8]
 004EA2D1    push       eax
 004EA2D2    mov        eax,dword ptr [eax]
 004EA2D4    call       dword ptr [eax]
 004EA2D6    cmp        dword ptr [ebp-0C],0
>004EA2DA    je         004EA3CF
 004EA2E0    lea        eax,[ebp-18]
 004EA2E3    push       eax
 004EA2E4    lea        eax,[ebp-10]
 004EA2E7    push       eax
 004EA2E8    lea        eax,[ebp-1C]
 004EA2EB    push       eax
 004EA2EC    mov        eax,dword ptr [ebp-0C]
 004EA2EF    push       eax
 004EA2F0    mov        eax,dword ptr [eax]
 004EA2F2    call       dword ptr [eax+10]
 004EA2F5    mov        eax,dword ptr [ebp-10]
 004EA2F8    mov        dword ptr [ebp-14],eax
 004EA2FB    mov        eax,dword ptr [ebp-1C]
 004EA2FE    push       eax
 004EA2FF    mov        eax,61DDB0; gvar_0061DDB0:_DynArr_226_3
 004EA304    mov        ecx,1
 004EA309    mov        edx,dword ptr ds:[4E6B38]; _DynArr_226_3
 004EA30F    call       @DynArraySetLength
 004EA314    add        esp,4
 004EA317    mov        edi,dword ptr [ebp-1C]
 004EA31A    sub        edi,1
>004EA31D    jno        004EA324
 004EA31F    call       @IntOver
 004EA324    test       edi,edi
>004EA326    jl         004EA39D
 004EA328    inc        edi
 004EA329    xor        ebx,ebx
 004EA32B    imul       eax,ebx,3
>004EA32E    jno        004EA335
 004EA330    call       @IntOver
 004EA335    mov        edx,dword ptr ds:[61DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA33B    mov        ecx,dword ptr [ebp-10]
 004EA33E    push       esi
 004EA33F    push       edi
 004EA340    lea        edi,[edx+eax*8]
 004EA343    mov        esi,ecx
 004EA345    movs       dword ptr [edi],dword ptr [esi]
 004EA346    movs       dword ptr [edi],dword ptr [esi]
 004EA347    movs       dword ptr [edi],dword ptr [esi]
 004EA348    movs       dword ptr [edi],dword ptr [esi]
 004EA349    pop        edi
 004EA34A    pop        esi
 004EA34B    cmp        ebx,0EFFFFFF
>004EA351    jbe        004EA358
 004EA353    call       @BoundErr
 004EA358    mov        eax,dword ptr [ebp-18]
 004EA35B    mov        eax,dword ptr [eax+ebx*4]
 004EA35E    imul       edx,ebx,3
>004EA361    jno        004EA368
 004EA363    call       @IntOver
 004EA368    mov        ecx,dword ptr ds:[61DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA36E    mov        dword ptr [ecx+edx*8+10],eax
 004EA372    mov        eax,dword ptr [ebp-10]
 004EA375    call       004E2148
 004EA37A    imul       edx,ebx,3
>004EA37D    jno        004EA384
 004EA37F    call       @IntOver
 004EA384    mov        ecx,dword ptr ds:[61DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA38A    mov        dword ptr [ecx+edx*8+14],eax
 004EA38E    add        dword ptr [ebp-10],10
>004EA392    jno        004EA399
 004EA394    call       @IntOver
 004EA399    inc        ebx
 004EA39A    dec        edi
<004EA39B    jne        004EA32B
 004EA39D    mov        byte ptr [esi+28],1; TZAdoDatabaseMetadata.?f28:byte
 004EA3A1    cmp        dword ptr [ebp-14],0
>004EA3A5    je         004EA3B8
 004EA3A7    mov        eax,dword ptr [ebp-14]
 004EA3AA    push       eax
 004EA3AB    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004EA3B0    mov        eax,dword ptr [eax]
 004EA3B2    push       eax
 004EA3B3    mov        eax,dword ptr [eax]
 004EA3B5    call       dword ptr [eax+14]
 004EA3B8    cmp        dword ptr [ebp-18],0
>004EA3BC    je         004EA3CF
 004EA3BE    mov        eax,dword ptr [ebp-18]
 004EA3C1    push       eax
 004EA3C2    mov        eax,[0061BA0C]; ^gvar_0061DD9C:IInterface
 004EA3C7    mov        eax,dword ptr [eax]
 004EA3C9    push       eax
 004EA3CA    mov        eax,dword ptr [eax]
 004EA3CC    call       dword ptr [eax+14]
 004EA3CF    xor        eax,eax
 004EA3D1    pop        edx
 004EA3D2    pop        ecx
 004EA3D3    pop        ecx
 004EA3D4    mov        dword ptr fs:[eax],edx
 004EA3D7    push       4EA414
 004EA3DC    lea        eax,[ebp-28]
 004EA3DF    call       @IntfClear
 004EA3E4    lea        eax,[ebp-24]
 004EA3E7    call       @IntfClear
 004EA3EC    lea        eax,[ebp-20]
 004EA3EF    call       @IntfClear
 004EA3F4    lea        eax,[ebp-0C]
 004EA3F7    call       @IntfClear
 004EA3FC    lea        eax,[ebp-8]
 004EA3FF    call       @IntfClear
 004EA404    lea        eax,[ebp-4]
 004EA407    call       @IntfClear
 004EA40C    ret
<004EA40D    jmp        @HandleFinally
<004EA412    jmp        004EA3DC
 004EA414    pop        edi
 004EA415    pop        esi
 004EA416    pop        ebx
 004EA417    mov        esp,ebp
 004EA419    pop        ebp
 004EA41A    ret
*}
//end;

//004EA44C
//function sub_004EA44C(?:TZAdoDatabaseMetadata; ?:?):?;
//begin
{*
 004EA44C    push       ebp
 004EA44D    mov        ebp,esp
 004EA44F    push       ebx
 004EA450    push       esi
 004EA451    push       edi
 004EA452    mov        ebx,edx
 004EA454    or         esi,0FFFFFFFF
 004EA457    mov        eax,[0061DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA45C    call       @DynArrayLength
 004EA461    mov        edx,eax
 004EA463    sub        edx,1
>004EA466    jno        004EA46D
 004EA468    call       @IntOver
 004EA46D    test       edx,edx
>004EA46F    jl         004EA492
 004EA471    inc        edx
 004EA472    xor        eax,eax
 004EA474    imul       ecx,eax,3
>004EA477    jno        004EA47E
 004EA479    call       @IntOver
 004EA47E    mov        edi,dword ptr ds:[61DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA484    cmp        ebx,dword ptr [edi+ecx*8+14]
>004EA488    jne        004EA48E
 004EA48A    mov        esi,eax
>004EA48C    jmp        004EA492
 004EA48E    inc        eax
 004EA48F    dec        edx
<004EA490    jne        004EA474
 004EA492    mov        eax,esi
 004EA494    pop        edi
 004EA495    pop        esi
 004EA496    pop        ebx
 004EA497    pop        ebp
 004EA498    ret
*}
//end;

//004EA49C
//function sub_004EA49C(?:TZAdoDatabaseMetadata; ?:?):Boolean;
//begin
{*
 004EA49C    push       ebp
 004EA49D    mov        ebp,esp
 004EA49F    push       ebx
 004EA4A0    push       esi
 004EA4A1    mov        esi,edx
 004EA4A3    mov        ebx,eax
 004EA4A5    mov        edx,esi
 004EA4A7    mov        eax,ebx
 004EA4A9    call       004EA44C
 004EA4AE    inc        eax
 004EA4AF    setg       al
 004EA4B2    pop        esi
 004EA4B3    pop        ebx
 004EA4B4    pop        ebp
 004EA4B5    ret
*}
//end;

//004EA4B8
//procedure sub_004EA4B8(?:TZAdoDatabaseMetadata; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004EA4B8    push       ebp
 004EA4B9    mov        ebp,esp
 004EA4BB    push       ecx
 004EA4BC    mov        ecx,7
 004EA4C1    push       0
 004EA4C3    push       0
 004EA4C5    dec        ecx
<004EA4C6    jne        004EA4C1
 004EA4C8    push       ecx
 004EA4C9    xchg       ecx,dword ptr [ebp-4]
 004EA4CC    push       ebx
 004EA4CD    push       esi
 004EA4CE    push       edi
 004EA4CF    mov        dword ptr [ebp-4],ecx
 004EA4D2    mov        esi,edx
 004EA4D4    mov        ebx,eax
 004EA4D6    mov        edi,dword ptr [ebp+0C]
 004EA4D9    xor        eax,eax
 004EA4DB    push       ebp
 004EA4DC    push       4EA616
 004EA4E1    push       dword ptr fs:[eax]
 004EA4E4    mov        dword ptr fs:[eax],esp
 004EA4E7    mov        eax,dword ptr [ebp+8]
 004EA4EA    call       Null
 004EA4EF    cmp        edi,0FFFFFFFF
>004EA4F2    je         004EA5F5
 004EA4F8    mov        edx,esi
 004EA4FA    mov        eax,ebx
 004EA4FC    call       004EA44C
 004EA501    mov        dword ptr [ebp-8],eax
 004EA504    cmp        dword ptr [ebp-8],0FFFFFFFF
>004EA508    je         004EA5F5
 004EA50E    mov        eax,dword ptr [ebp+8]
 004EA511    push       eax
 004EA512    xor        eax,eax
 004EA514    mov        dword ptr [ebp-10],eax
 004EA517    mov        dword ptr [ebp-0C],edi
 004EA51A    lea        eax,[ebp-10]
 004EA51D    mov        cx,0C
 004EA521    mov        edx,1
 004EA526    call       VarArrayCreate
 004EA52B    mov        esi,edi
 004EA52D    test       esi,esi
>004EA52F    jl         004EA5F5
 004EA535    inc        esi
 004EA536    xor        ebx,ebx
 004EA538    mov        ecx,ebx
 004EA53A    mov        eax,1
 004EA53F    shl        eax,cl
 004EA541    mov        edx,dword ptr [ebp-8]
 004EA544    imul       edx,edx,3
>004EA547    jno        004EA54E
 004EA549    call       @IntOver
 004EA54E    mov        ecx,dword ptr ds:[61DDB0]; gvar_0061DDB0:_DynArr_226_3
 004EA554    and        eax,dword ptr [ecx+edx*8+10]
>004EA558    je         004EA5D2
 004EA55A    push       ebx
 004EA55B    push       1
 004EA55D    lea        eax,[ebp-20]
 004EA560    test       ebx,ebx
>004EA562    jl         004EA568
 004EA564    cmp        ebx,edi
>004EA566    jle        004EA56D
 004EA568    call       @BoundErr
 004EA56D    mov        edx,dword ptr [ebp-4]
 004EA570    mov        edx,dword ptr [edx+ebx*8]
 004EA573    call       @VarFromLStr
 004EA578    lea        eax,[ebp-20]
 004EA57B    push       eax
 004EA57C    mov        eax,dword ptr [ebp+8]
 004EA57F    push       eax
 004EA580    call       @VarArrayPut
 004EA585    add        esp,10
 004EA588    test       ebx,ebx
>004EA58A    jl         004EA590
 004EA58C    cmp        ebx,edi
>004EA58E    jle        004EA595
 004EA590    call       @BoundErr
 004EA595    mov        eax,dword ptr [ebp-4]
 004EA598    cmp        byte ptr [eax+ebx*8+4],0B
>004EA59D    jne        004EA5ED
 004EA59F    test       ebx,ebx
>004EA5A1    jl         004EA5A7
 004EA5A3    cmp        ebx,edi
>004EA5A5    jle        004EA5AC
 004EA5A7    call       @BoundErr
 004EA5AC    mov        eax,dword ptr [ebp-4]
 004EA5AF    cmp        dword ptr [eax+ebx*8],0
>004EA5B3    jne        004EA5ED
 004EA5B5    push       ebx
 004EA5B6    push       1
 004EA5B8    lea        eax,[ebp-30]
 004EA5BB    call       Unassigned
 004EA5C0    lea        eax,[ebp-30]
 004EA5C3    push       eax
 004EA5C4    mov        eax,dword ptr [ebp+8]
 004EA5C7    push       eax
 004EA5C8    call       @VarArrayPut
 004EA5CD    add        esp,10
>004EA5D0    jmp        004EA5ED
 004EA5D2    push       ebx
 004EA5D3    push       1
 004EA5D5    lea        eax,[ebp-40]
 004EA5D8    call       Unassigned
 004EA5DD    lea        eax,[ebp-40]
 004EA5E0    push       eax
 004EA5E1    mov        eax,dword ptr [ebp+8]
 004EA5E4    push       eax
 004EA5E5    call       @VarArrayPut
 004EA5EA    add        esp,10
 004EA5ED    inc        ebx
 004EA5EE    dec        esi
<004EA5EF    jne        004EA538
 004EA5F5    xor        eax,eax
 004EA5F7    pop        edx
 004EA5F8    pop        ecx
 004EA5F9    pop        ecx
 004EA5FA    mov        dword ptr fs:[eax],edx
 004EA5FD    push       4EA61D
 004EA602    lea        eax,[ebp-40]
 004EA605    mov        edx,dword ptr ds:[401114]; Variant
 004EA60B    mov        ecx,3
 004EA610    call       @FinalizeArray
 004EA615    ret
<004EA616    jmp        @HandleFinally
<004EA61B    jmp        004EA602
 004EA61D    pop        edi
 004EA61E    pop        esi
 004EA61F    pop        ebx
 004EA620    mov        esp,ebp
 004EA622    pop        ebp
 004EA623    ret        8
*}
//end;

Initialization
Finalization
//004EA628
{*
 004EA628    push       ebp
 004EA629    mov        ebp,esp
 004EA62B    xor        eax,eax
 004EA62D    push       ebp
 004EA62E    push       4EA674
 004EA633    push       dword ptr fs:[eax]
 004EA636    mov        dword ptr fs:[eax],esp
 004EA639    inc        dword ptr ds:[61DDAC]
>004EA63F    jne        004EA666
 004EA641    mov        eax,615FD4; gvar_00615FD4:array[8] of String
 004EA646    mov        ecx,8
 004EA64B    mov        edx,dword ptr ds:[4010F8]; String
 004EA651    call       @FinalizeArray
 004EA656    mov        eax,61DDB0; gvar_0061DDB0:_DynArr_226_3
 004EA65B    mov        edx,dword ptr ds:[4E6B38]; _DynArr_226_3
 004EA661    call       @DynArrayClear
 004EA666    xor        eax,eax
 004EA668    pop        edx
 004EA669    pop        ecx
 004EA66A    pop        ecx
 004EA66B    mov        dword ptr fs:[eax],edx
 004EA66E    push       4EA67B
 004EA673    ret
<004EA674    jmp        @HandleFinally
<004EA679    jmp        004EA673
 004EA67B    pop        ebp
 004EA67C    ret
*}
end.