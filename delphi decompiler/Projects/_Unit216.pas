{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit216;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZSybaseDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    destructor Destroy; virtual;
    //procedure sub_004F9728(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F9A2C(?:?); virtual;
    //procedure sub_004F9B28(?:?); virtual;
    //procedure sub_004F9C60(?:?); virtual;
    //procedure sub_004F9CD0(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FA81C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FA4D8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FAE2C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FB0C8(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FB52C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FB990(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FC348(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F8CD4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F8F58(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FAAFC(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004FBE54(?:?); virtual;
    //procedure sub_004FC804(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F86B0(?:?); virtual;
    //procedure sub_004F86D8(?:?); virtual;
    //procedure sub_004F86FC(?:?); virtual;
    //function sub_004F8754():?; virtual;
    //function sub_004F875C():?; virtual;
    //function sub_004F8760():?; virtual;
    //function sub_004F8764():?; virtual;
    //function sub_004F8768():?; virtual;
    //function sub_004F876C():?; virtual;
    //function sub_004F8770():?; virtual;
    //function sub_004F8774():?; virtual;
    //function sub_004F8778():?; virtual;
    //function sub_004F877C():?; virtual;
    //function sub_004F8780():?; virtual;
    //procedure sub_004F8784(?:?); virtual;
    //procedure sub_004F87A8(?:?); virtual;
    //procedure sub_004F87B8(?:?); virtual;
    //procedure sub_004F8854(?:?); virtual;
    //procedure sub_004F8918(?:?); virtual;
    //procedure sub_004F8A64(?:?); virtual;
    //procedure sub_004F8AC0(?:?); virtual;
    //procedure sub_004F8AE4(?:?); virtual;
    //function sub_004F8B08():?; virtual;
    //function sub_004F8B0C():?; virtual;
    //function sub_004F8B10():?; virtual;
    //function sub_004F8B14():?; virtual;
    //function sub_004F8B18():?; virtual;
    //function sub_004F8B1C():?; virtual;
    //procedure sub_004F8B20(?:?); virtual;
    //procedure sub_004F8B48(?:?); virtual;
    //procedure sub_004F8B74(?:?); virtual;
    //procedure sub_004F8BA0(?:?); virtual;
    //function sub_004F8BC4():?; virtual;
    //function sub_004F8BC8():?; virtual;
    //function sub_004F8BCC():?; virtual;
    //function sub_004F8BD0():?; virtual;
    //function sub_004F8BD4():?; virtual;
    //function sub_004F8BD8():?; virtual;
    //function sub_004F8BDC():?; virtual;
    //function sub_004F8BE0():?; virtual;
    //function sub_004F8BE4():?; virtual;
    //function sub_004F8BE8():?; virtual;
    //function sub_004F8BEC():?; virtual;
    //function sub_004F8BF0():?; virtual;
    //function sub_004F8BF4():?; virtual;
    //function sub_004F8BF8():?; virtual;
    //function sub_004F8BFC():?; virtual;
    //function sub_004F8C00():?; virtual;
    //function sub_004F8C04():?; virtual;
    //function sub_004F8C08():?; virtual;
    //function sub_004F8C0C():?; virtual;
    //function sub_004F8C10():?; virtual;
    //function sub_004F8C14():?; virtual;
    //function sub_004F8C18():?; virtual;
    //function sub_004F8C1C():?; virtual;
    //function sub_004F8C20():?; virtual;
    //function sub_004F8C24():?; virtual;
    //function sub_004F8C28():?; virtual;
    //function sub_004F8C30():?; virtual;
    //function sub_004F8C38():?; virtual;
    //function sub_004F8C40():?; virtual;
    //function sub_004F8C44():?; virtual;
    //function sub_004F8C4C():?; virtual;
    //function sub_004F8C50():?; virtual;
    //function sub_004F8C58():?; virtual;
    //function sub_004F8C60():?; virtual;
    //function sub_004F8C64():?; virtual;
    //function sub_004F8C6C():?; virtual;
    //function sub_004F8C74():?; virtual;
    //function sub_004F8C7C():?; virtual;
    //function sub_004F8C84():?; virtual;
    //function sub_004F8C8C():?; virtual;
    //function sub_004F8C94():?; virtual;
    //function sub_004F8C98():?; virtual;
    //function sub_004F8C9C():?; virtual;
    //function sub_004F8CA0():?; virtual;
    //function sub_004F8CA8():?; virtual;
    //function sub_004F8CB0():?; virtual;
    //function sub_004F8CB8():?; virtual;
    //function sub_004F8CBC():?; virtual;
    //function sub_004F8CC0():?; virtual;
    //function sub_004F8CC4():?; virtual;
    //function sub_004F8CC8():?; virtual;
    //function sub_004F8CCC():?; virtual;
    //function sub_004F8CD0():?; virtual;
    //function sub_004FC7FC():?; virtual;
    //function sub_004FC800():?; virtual;
    //constructor Create(?:TZSybaseDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004F8600
//constructor TZSybaseDatabaseMetadata.Create(?:TZSybaseDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004F8600    push       ebp
 004F8601    mov        ebp,esp
 004F8603    push       ebx
 004F8604    push       esi
 004F8605    push       edi
 004F8606    test       dl,dl
>004F8608    je         004F8612
 004F860A    add        esp,0FFFFFFF0
 004F860D    call       @ClassCreate
 004F8612    mov        esi,ecx
 004F8614    mov        ebx,edx
 004F8616    mov        edi,eax
 004F8618    mov        eax,dword ptr [ebp+0C]
 004F861B    call       @LStrAddRef
 004F8620    xor        eax,eax
 004F8622    push       ebp
 004F8623    push       4F865E
 004F8628    push       dword ptr fs:[eax]
 004F862B    mov        dword ptr fs:[eax],esp
 004F862E    mov        eax,dword ptr [ebp+0C]
 004F8631    push       eax
 004F8632    mov        eax,dword ptr [ebp+8]
 004F8635    push       eax
 004F8636    mov        ecx,esi
 004F8638    test       ecx,ecx
>004F863A    je         004F863F
 004F863C    sub        ecx,0FFFFFFD0
 004F863F    xor        edx,edx
 004F8641    mov        eax,edi
 004F8643    call       004D8D74
 004F8648    xor        eax,eax
 004F864A    pop        edx
 004F864B    pop        ecx
 004F864C    pop        ecx
 004F864D    mov        dword ptr fs:[eax],edx
 004F8650    push       4F8665
 004F8655    lea        eax,[ebp+0C]
 004F8658    call       @LStrClr
 004F865D    ret
<004F865E    jmp        @HandleFinally
<004F8663    jmp        004F8655
 004F8665    mov        eax,edi
 004F8667    test       bl,bl
>004F8669    je         004F867A
 004F866B    call       @AfterConstruction
 004F8670    pop        dword ptr fs:[0]
 004F8677    add        esp,0C
 004F867A    mov        eax,edi
 004F867C    pop        edi
 004F867D    pop        esi
 004F867E    pop        ebx
 004F867F    pop        ebp
 004F8680    ret        8
*}
//end;

//004F8684
destructor TZSybaseDatabaseMetadata.Destroy;
begin
{*
 004F8684    push       ebp
 004F8685    mov        ebp,esp
 004F8687    push       ebx
 004F8688    push       esi
 004F8689    call       @BeforeDestruction
 004F868E    mov        ebx,edx
 004F8690    mov        esi,eax
 004F8692    mov        edx,ebx
 004F8694    and        dl,0FC
 004F8697    mov        eax,esi
 004F8699    call       TZAbstractDatabaseMetadata.Destroy
 004F869E    test       bl,bl
>004F86A0    jle        004F86A9
 004F86A2    mov        eax,esi
 004F86A4    call       @ClassDestroy
 004F86A9    pop        esi
 004F86AA    pop        ebx
 004F86AB    pop        ebp
 004F86AC    ret
*}
end;

//004F86B0
//procedure sub_004F86B0(?:?);
//begin
{*
 004F86B0    push       ebp
 004F86B1    mov        ebp,esp
 004F86B3    push       ebx
 004F86B4    mov        ebx,edx
 004F86B6    mov        eax,ebx
 004F86B8    mov        edx,4F86D0; 'Sybase'
 004F86BD    call       @LStrAsg
 004F86C2    pop        ebx
 004F86C3    pop        ebp
 004F86C4    ret
*}
//end;

//004F86D8
//procedure sub_004F86D8(?:?);
//begin
{*
 004F86D8    push       ebp
 004F86D9    mov        ebp,esp
 004F86DB    push       ebx
 004F86DC    mov        ebx,edx
 004F86DE    mov        eax,ebx
 004F86E0    mov        edx,4F86F8; '12+'
 004F86E5    call       @LStrAsg
 004F86EA    pop        ebx
 004F86EB    pop        ebp
 004F86EC    ret
*}
//end;

//004F86FC
//procedure sub_004F86FC(?:?);
//begin
{*
 004F86FC    push       ebp
 004F86FD    mov        ebp,esp
 004F86FF    push       ebx
 004F8700    mov        ebx,edx
 004F8702    mov        eax,ebx
 004F8704    mov        edx,4F871C; 'Zeos Database Connectivity Driver for Sybase ASE Server'
 004F8709    call       @LStrAsg
 004F870E    pop        ebx
 004F870F    pop        ebp
 004F8710    ret
*}
//end;

//004F8754
//function sub_004F8754():?;
//begin
{*
 004F8754    mov        eax,1
 004F8759    ret
*}
//end;

//004F875C
//function sub_004F875C():?;
//begin
{*
 004F875C    xor        eax,eax
 004F875E    ret
*}
//end;

//004F8760
//function sub_004F8760():?;
//begin
{*
 004F8760    xor        eax,eax
 004F8762    ret
*}
//end;

//004F8764
//function sub_004F8764():?;
//begin
{*
 004F8764    xor        eax,eax
 004F8766    ret
*}
//end;

//004F8768
//function sub_004F8768():?;
//begin
{*
 004F8768    mov        al,1
 004F876A    ret
*}
//end;

//004F876C
//function sub_004F876C():?;
//begin
{*
 004F876C    mov        al,1
 004F876E    ret
*}
//end;

//004F8770
//function sub_004F8770():?;
//begin
{*
 004F8770    mov        al,1
 004F8772    ret
*}
//end;

//004F8774
//function sub_004F8774():?;
//begin
{*
 004F8774    mov        al,1
 004F8776    ret
*}
//end;

//004F8778
//function sub_004F8778():?;
//begin
{*
 004F8778    mov        al,1
 004F877A    ret
*}
//end;

//004F877C
//function sub_004F877C():?;
//begin
{*
 004F877C    mov        al,1
 004F877E    ret
*}
//end;

//004F8780
//function sub_004F8780():?;
//begin
{*
 004F8780    mov        al,1
 004F8782    ret
*}
//end;

//004F8784
//procedure sub_004F8784(?:?);
//begin
{*
 004F8784    push       ebp
 004F8785    mov        ebp,esp
 004F8787    push       ebx
 004F8788    mov        ebx,edx
 004F878A    mov        eax,ebx
 004F878C    mov        edx,4F87A4; '\"'
 004F8791    call       @LStrAsg
 004F8796    pop        ebx
 004F8797    pop        ebp
 004F8798    ret
*}
//end;

//004F87A8
//procedure sub_004F87A8(?:?);
//begin
{*
 004F87A8    push       ebp
 004F87A9    mov        ebp,esp
 004F87AB    push       ebx
 004F87AC    mov        ebx,edx
 004F87AE    mov        eax,ebx
 004F87B0    call       @LStrClr
 004F87B5    pop        ebx
 004F87B6    pop        ebp
 004F87B7    ret
*}
//end;

//004F87B8
//procedure sub_004F87B8(?:?);
//begin
{*
 004F87B8    push       ebp
 004F87B9    mov        ebp,esp
 004F87BB    push       ebx
 004F87BC    mov        ebx,edx
 004F87BE    mov        eax,ebx
 004F87C0    mov        edx,4F87D8; 'ABS,ACOS,ASIN,ATAN,ATN2,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,PI,POWER,RADIANS,RAND,ROUND,SIGN,SIN,SQUARE,SQRT,TAN'
 004F87C5    call       @LStrAsg
 004F87CA    pop        ebx
 004F87CB    pop        ebp
 004F87CC    ret
*}
//end;

//004F8854
//procedure sub_004F8854(?:?);
//begin
{*
 004F8854    push       ebp
 004F8855    mov        ebp,esp
 004F8857    push       ebx
 004F8858    mov        ebx,edx
 004F885A    mov        eax,ebx
 004F885C    mov        edx,4F8874; 'ASCII,CHAR,CHARINDEX,DIFFERENCE,LEFT,LEN,LOWER,LTRIM,NCHAR,PATINDEX,REPLACE,QUOTENAME,REPLICATE,REVERSE,RIGHT,RTRIM,SOUNDEX,SPACE,STR,STUFF,SUBSTRING,UNICODE,UPPER'
 004F8861    call       @LStrAsg
 004F8866    pop        ebx
 004F8867    pop        ebp
 004F8868    ret
*}
//end;

//004F8918
//procedure sub_004F8918(?:?);
//begin
{*
 004F8918    push       ebp
 004F8919    mov        ebp,esp
 004F891B    push       ebx
 004F891C    mov        ebx,edx
 004F891E    mov        eax,ebx
 004F8920    mov        edx,4F8938; 'APP_NAME,CASE,CAST,CONVERT,COALESCE,CURRENT_TIMESTAMP,CURRENT_USER,DATALENGTH,@@ERROR,FORMATMESSAGE,GETANSINULL,HOST_ID,HOST_NAME,IDENT_INCR,IDENT_SEED,@@IDENTITY,IDENTITY,ISDATE,ISNULL,ISNUMERIC,NEWID,NULLIF,PARSENAME,PERMISSIONS,@@ROWCOUNT,SESSION_USER,STATS_DATE,SYSTEM_USER,@@TRANCOUNT,USER_NAME'
 004F8925    call       @LStrAsg
 004F892A    pop        ebx
 004F892B    pop        ebp
 004F892C    ret
*}
//end;

//004F8A64
//procedure sub_004F8A64(?:?);
//begin
{*
 004F8A64    push       ebp
 004F8A65    mov        ebp,esp
 004F8A67    push       ebx
 004F8A68    mov        ebx,edx
 004F8A6A    mov        eax,ebx
 004F8A6C    mov        edx,4F8A84; 'DATEADD,DATEDIFF,DATENAME,DATEPART,DAY,GETDATE,MONTH,YEAR'
 004F8A71    call       @LStrAsg
 004F8A76    pop        ebx
 004F8A77    pop        ebp
 004F8A78    ret
*}
//end;

//004F8AC0
//procedure sub_004F8AC0(?:?);
//begin
{*
 004F8AC0    push       ebp
 004F8AC1    mov        ebp,esp
 004F8AC3    push       ebx
 004F8AC4    mov        ebx,edx
 004F8AC6    mov        eax,ebx
 004F8AC8    mov        edx,4F8AE0; '/'
 004F8ACD    call       @LStrAsg
 004F8AD2    pop        ebx
 004F8AD3    pop        ebp
 004F8AD4    ret
*}
//end;

//004F8AE4
//procedure sub_004F8AE4(?:?);
//begin
{*
 004F8AE4    push       ebp
 004F8AE5    mov        ebp,esp
 004F8AE7    push       ebx
 004F8AE8    mov        ebx,edx
 004F8AEA    mov        eax,ebx
 004F8AEC    mov        edx,4F8B04; '@$#'
 004F8AF1    call       @LStrAsg
 004F8AF6    pop        ebx
 004F8AF7    pop        ebp
 004F8AF8    ret
*}
//end;

//004F8B08
//function sub_004F8B08():?;
//begin
{*
 004F8B08    mov        al,1
 004F8B0A    ret
*}
//end;

//004F8B0C
//function sub_004F8B0C():?;
//begin
{*
 004F8B0C    mov        al,1
 004F8B0E    ret
*}
//end;

//004F8B10
//function sub_004F8B10():?;
//begin
{*
 004F8B10    mov        al,1
 004F8B12    ret
*}
//end;

//004F8B14
//function sub_004F8B14():?;
//begin
{*
 004F8B14    mov        al,1
 004F8B16    ret
*}
//end;

//004F8B18
//function sub_004F8B18():?;
//begin
{*
 004F8B18    mov        al,1
 004F8B1A    ret
*}
//end;

//004F8B1C
//function sub_004F8B1C():?;
//begin
{*
 004F8B1C    xor        eax,eax
 004F8B1E    ret
*}
//end;

//004F8B20
//procedure sub_004F8B20(?:?);
//begin
{*
 004F8B20    push       ebp
 004F8B21    mov        ebp,esp
 004F8B23    push       ebx
 004F8B24    mov        ebx,edx
 004F8B26    mov        eax,ebx
 004F8B28    mov        edx,4F8B40; 'owner'
 004F8B2D    call       @LStrAsg
 004F8B32    pop        ebx
 004F8B33    pop        ebp
 004F8B34    ret
*}
//end;

//004F8B48
//procedure sub_004F8B48(?:?);
//begin
{*
 004F8B48    push       ebp
 004F8B49    mov        ebp,esp
 004F8B4B    push       ebx
 004F8B4C    mov        ebx,edx
 004F8B4E    mov        eax,ebx
 004F8B50    mov        edx,4F8B68; 'procedure'
 004F8B55    call       @LStrAsg
 004F8B5A    pop        ebx
 004F8B5B    pop        ebp
 004F8B5C    ret
*}
//end;

//004F8B74
//procedure sub_004F8B74(?:?);
//begin
{*
 004F8B74    push       ebp
 004F8B75    mov        ebp,esp
 004F8B77    push       ebx
 004F8B78    mov        ebx,edx
 004F8B7A    mov        eax,ebx
 004F8B7C    mov        edx,4F8B94; 'database'
 004F8B81    call       @LStrAsg
 004F8B86    pop        ebx
 004F8B87    pop        ebp
 004F8B88    ret
*}
//end;

//004F8BA0
//procedure sub_004F8BA0(?:?);
//begin
{*
 004F8BA0    push       ebp
 004F8BA1    mov        ebp,esp
 004F8BA3    push       ebx
 004F8BA4    mov        ebx,edx
 004F8BA6    mov        eax,ebx
 004F8BA8    mov        edx,4F8BC0; '.'
 004F8BAD    call       @LStrAsg
 004F8BB2    pop        ebx
 004F8BB3    pop        ebp
 004F8BB4    ret
*}
//end;

//004F8BC4
//function sub_004F8BC4():?;
//begin
{*
 004F8BC4    mov        al,1
 004F8BC6    ret
*}
//end;

//004F8BC8
//function sub_004F8BC8():?;
//begin
{*
 004F8BC8    mov        al,1
 004F8BCA    ret
*}
//end;

//004F8BCC
//function sub_004F8BCC():?;
//begin
{*
 004F8BCC    mov        al,1
 004F8BCE    ret
*}
//end;

//004F8BD0
//function sub_004F8BD0():?;
//begin
{*
 004F8BD0    mov        al,1
 004F8BD2    ret
*}
//end;

//004F8BD4
//function sub_004F8BD4():?;
//begin
{*
 004F8BD4    mov        al,1
 004F8BD6    ret
*}
//end;

//004F8BD8
//function sub_004F8BD8():?;
//begin
{*
 004F8BD8    mov        al,1
 004F8BDA    ret
*}
//end;

//004F8BDC
//function sub_004F8BDC():?;
//begin
{*
 004F8BDC    mov        al,1
 004F8BDE    ret
*}
//end;

//004F8BE0
//function sub_004F8BE0():?;
//begin
{*
 004F8BE0    mov        al,1
 004F8BE2    ret
*}
//end;

//004F8BE4
//function sub_004F8BE4():?;
//begin
{*
 004F8BE4    mov        al,1
 004F8BE6    ret
*}
//end;

//004F8BE8
//function sub_004F8BE8():?;
//begin
{*
 004F8BE8    mov        al,1
 004F8BEA    ret
*}
//end;

//004F8BEC
//function sub_004F8BEC():?;
//begin
{*
 004F8BEC    mov        al,1
 004F8BEE    ret
*}
//end;

//004F8BF0
//function sub_004F8BF0():?;
//begin
{*
 004F8BF0    mov        al,1
 004F8BF2    ret
*}
//end;

//004F8BF4
//function sub_004F8BF4():?;
//begin
{*
 004F8BF4    mov        al,1
 004F8BF6    ret
*}
//end;

//004F8BF8
//function sub_004F8BF8():?;
//begin
{*
 004F8BF8    mov        al,1
 004F8BFA    ret
*}
//end;

//004F8BFC
//function sub_004F8BFC():?;
//begin
{*
 004F8BFC    mov        al,1
 004F8BFE    ret
*}
//end;

//004F8C00
//function sub_004F8C00():?;
//begin
{*
 004F8C00    mov        al,1
 004F8C02    ret
*}
//end;

//004F8C04
//function sub_004F8C04():?;
//begin
{*
 004F8C04    mov        al,1
 004F8C06    ret
*}
//end;

//004F8C08
//function sub_004F8C08():?;
//begin
{*
 004F8C08    mov        al,1
 004F8C0A    ret
*}
//end;

//004F8C0C
//function sub_004F8C0C():?;
//begin
{*
 004F8C0C    mov        al,1
 004F8C0E    ret
*}
//end;

//004F8C10
//function sub_004F8C10():?;
//begin
{*
 004F8C10    mov        al,1
 004F8C12    ret
*}
//end;

//004F8C14
//function sub_004F8C14():?;
//begin
{*
 004F8C14    mov        al,1
 004F8C16    ret
*}
//end;

//004F8C18
//function sub_004F8C18():?;
//begin
{*
 004F8C18    mov        al,1
 004F8C1A    ret
*}
//end;

//004F8C1C
//function sub_004F8C1C():?;
//begin
{*
 004F8C1C    mov        al,1
 004F8C1E    ret
*}
//end;

//004F8C20
//function sub_004F8C20():?;
//begin
{*
 004F8C20    xor        eax,eax
 004F8C22    ret
*}
//end;

//004F8C24
//function sub_004F8C24():?;
//begin
{*
 004F8C24    xor        eax,eax
 004F8C26    ret
*}
//end;

//004F8C28
//function sub_004F8C28():?;
//begin
{*
 004F8C28    mov        eax,3E80
 004F8C2D    ret
*}
//end;

//004F8C30
//function sub_004F8C30():?;
//begin
{*
 004F8C30    mov        eax,1F40
 004F8C35    ret
*}
//end;

//004F8C38
//function sub_004F8C38():?;
//begin
{*
 004F8C38    mov        eax,80
 004F8C3D    ret
*}
//end;

//004F8C40
//function sub_004F8C40():?;
//begin
{*
 004F8C40    xor        eax,eax
 004F8C42    ret
*}
//end;

//004F8C44
//function sub_004F8C44():?;
//begin
{*
 004F8C44    mov        eax,10
 004F8C49    ret
*}
//end;

//004F8C4C
//function sub_004F8C4C():?;
//begin
{*
 004F8C4C    xor        eax,eax
 004F8C4E    ret
*}
//end;

//004F8C50
//function sub_004F8C50():?;
//begin
{*
 004F8C50    mov        eax,1000
 004F8C55    ret
*}
//end;

//004F8C58
//function sub_004F8C58():?;
//begin
{*
 004F8C58    mov        eax,400
 004F8C5D    ret
*}
//end;

//004F8C60
//function sub_004F8C60():?;
//begin
{*
 004F8C60    xor        eax,eax
 004F8C62    ret
*}
//end;

//004F8C64
//function sub_004F8C64():?;
//begin
{*
 004F8C64    mov        eax,80
 004F8C69    ret
*}
//end;

//004F8C6C
//function sub_004F8C6C():?;
//begin
{*
 004F8C6C    mov        eax,384
 004F8C71    ret
*}
//end;

//004F8C74
//function sub_004F8C74():?;
//begin
{*
 004F8C74    mov        eax,80
 004F8C79    ret
*}
//end;

//004F8C7C
//function sub_004F8C7C():?;
//begin
{*
 004F8C7C    mov        eax,80
 004F8C81    ret
*}
//end;

//004F8C84
//function sub_004F8C84():?;
//begin
{*
 004F8C84    mov        eax,80
 004F8C89    ret
*}
//end;

//004F8C8C
//function sub_004F8C8C():?;
//begin
{*
 004F8C8C    mov        eax,1F7C
 004F8C91    ret
*}
//end;

//004F8C94
//function sub_004F8C94():?;
//begin
{*
 004F8C94    xor        eax,eax
 004F8C96    ret
*}
//end;

//004F8C98
//function sub_004F8C98():?;
//begin
{*
 004F8C98    xor        eax,eax
 004F8C9A    ret
*}
//end;

//004F8C9C
//function sub_004F8C9C():?;
//begin
{*
 004F8C9C    xor        eax,eax
 004F8C9E    ret
*}
//end;

//004F8CA0
//function sub_004F8CA0():?;
//begin
{*
 004F8CA0    mov        eax,80
 004F8CA5    ret
*}
//end;

//004F8CA8
//function sub_004F8CA8():?;
//begin
{*
 004F8CA8    mov        eax,100
 004F8CAD    ret
*}
//end;

//004F8CB0
//function sub_004F8CB0():?;
//begin
{*
 004F8CB0    mov        eax,80
 004F8CB5    ret
*}
//end;

//004F8CB8
//function sub_004F8CB8():?;
//begin
{*
 004F8CB8    mov        al,2
 004F8CBA    ret
*}
//end;

//004F8CBC
//function sub_004F8CBC():?;
//begin
{*
 004F8CBC    mov        al,1
 004F8CBE    ret
*}
//end;

//004F8CC0
//function sub_004F8CC0():?;
//begin
{*
 004F8CC0    mov        al,1
 004F8CC2    ret
*}
//end;

//004F8CC4
//function sub_004F8CC4():?;
//begin
{*
 004F8CC4    mov        al,1
 004F8CC6    ret
*}
//end;

//004F8CC8
//function sub_004F8CC8():?;
//begin
{*
 004F8CC8    xor        eax,eax
 004F8CCA    ret
*}
//end;

//004F8CCC
//function sub_004F8CCC():?;
//begin
{*
 004F8CCC    xor        eax,eax
 004F8CCE    ret
*}
//end;

//004F8CD0
//function sub_004F8CD0():?;
//begin
{*
 004F8CD0    xor        eax,eax
 004F8CD2    ret
*}
//end;

//004F8CD4
//procedure sub_004F8CD4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F8CD4    push       ebp
 004F8CD5    mov        ebp,esp
 004F8CD7    push       ecx
 004F8CD8    mov        ecx,8
 004F8CDD    push       0
 004F8CDF    push       0
 004F8CE1    dec        ecx
<004F8CE2    jne        004F8CDD
 004F8CE4    push       ecx
 004F8CE5    xchg       ecx,dword ptr [ebp-4]
 004F8CE8    push       ebx
 004F8CE9    push       esi
 004F8CEA    mov        dword ptr [ebp-8],ecx
 004F8CED    mov        dword ptr [ebp-4],edx
 004F8CF0    mov        esi,eax
 004F8CF2    mov        ebx,dword ptr [ebp+8]
 004F8CF5    xor        eax,eax
 004F8CF7    push       ebp
 004F8CF8    push       4F8EA3
 004F8CFD    push       dword ptr fs:[eax]
 004F8D00    mov        dword ptr fs:[eax],esp
 004F8D03    mov        ecx,ebx
 004F8D05    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 004F8D0B    mov        edx,dword ptr [edx]
 004F8D0D    mov        eax,esi
 004F8D0F    call       004D8E7C
 004F8D14    lea        eax,[ebp-10]
 004F8D17    push       eax
 004F8D18    lea        ecx,[ebp-2C]
 004F8D1B    mov        dl,27
 004F8D1D    mov        eax,dword ptr [ebp-4]
 004F8D20    call       004D31AC
 004F8D25    mov        eax,dword ptr [ebp-2C]
 004F8D28    mov        dword ptr [ebp-28],eax
 004F8D2B    mov        byte ptr [ebp-24],0B
 004F8D2F    lea        ecx,[ebp-30]
 004F8D32    mov        dl,27
 004F8D34    mov        eax,dword ptr [ebp-8]
 004F8D37    call       004D31AC
 004F8D3C    mov        eax,dword ptr [ebp-30]
 004F8D3F    mov        dword ptr [ebp-20],eax
 004F8D42    mov        byte ptr [ebp-1C],0B
 004F8D46    lea        ecx,[ebp-34]
 004F8D49    mov        dl,27
 004F8D4B    mov        eax,dword ptr [ebp+0C]
 004F8D4E    call       004D31AC
 004F8D53    mov        eax,dword ptr [ebp-34]
 004F8D56    mov        dword ptr [ebp-18],eax
 004F8D59    mov        byte ptr [ebp-14],0B
 004F8D5D    lea        edx,[ebp-28]
 004F8D60    mov        ecx,2
 004F8D65    mov        eax,4F8EBC; 'exec sp_jdbc_stored_procedures %s, %s, %s'
 004F8D6A    call       Format
 004F8D6F    mov        eax,dword ptr [ebp-10]
 004F8D72    push       eax
 004F8D73    lea        edx,[ebp-38]
 004F8D76    mov        eax,esi
 004F8D78    call       004FCB6C
 004F8D7D    mov        eax,dword ptr [ebp-38]
 004F8D80    lea        ecx,[ebp-0C]
 004F8D83    pop        edx
 004F8D84    mov        esi,dword ptr [eax]
 004F8D86    call       dword ptr [esi+0C]
>004F8D89    jmp        004F8E4B
 004F8D8E    mov        eax,dword ptr [ebx]
 004F8D90    mov        edx,dword ptr [eax]
 004F8D92    call       dword ptr [edx+1E4]
 004F8D98    lea        ecx,[ebp-3C]
 004F8D9B    mov        edx,4F8EF0; 'PROCEDURE_CAT'
 004F8DA0    mov        eax,dword ptr [ebp-0C]
 004F8DA3    mov        esi,dword ptr [eax]
 004F8DA5    call       dword ptr [esi+74]
 004F8DA8    mov        ecx,dword ptr [ebp-3C]
 004F8DAB    mov        eax,dword ptr [ebx]
 004F8DAD    mov        edx,4F8EF0; 'PROCEDURE_CAT'
 004F8DB2    mov        esi,dword ptr [eax]
 004F8DB4    call       dword ptr [esi+1A8]
 004F8DBA    lea        ecx,[ebp-40]
 004F8DBD    mov        edx,4F8F08; 'PROCEDURE_SCHEM'
 004F8DC2    mov        eax,dword ptr [ebp-0C]
 004F8DC5    mov        esi,dword ptr [eax]
 004F8DC7    call       dword ptr [esi+74]
 004F8DCA    mov        ecx,dword ptr [ebp-40]
 004F8DCD    mov        eax,dword ptr [ebx]
 004F8DCF    mov        edx,4F8F08; 'PROCEDURE_SCHEM'
 004F8DD4    mov        esi,dword ptr [eax]
 004F8DD6    call       dword ptr [esi+1A8]
 004F8DDC    lea        ecx,[ebp-44]
 004F8DDF    mov        edx,4F8F20; 'PROCEDURE_NAME'
 004F8DE4    mov        eax,dword ptr [ebp-0C]
 004F8DE7    mov        esi,dword ptr [eax]
 004F8DE9    call       dword ptr [esi+74]
 004F8DEC    mov        ecx,dword ptr [ebp-44]
 004F8DEF    mov        eax,dword ptr [ebx]
 004F8DF1    mov        edx,4F8F20; 'PROCEDURE_NAME'
 004F8DF6    mov        esi,dword ptr [eax]
 004F8DF8    call       dword ptr [esi+1A8]
 004F8DFE    lea        ecx,[ebp-48]
 004F8E01    mov        edx,4F8F38; 'REMARKS'
 004F8E06    mov        eax,dword ptr [ebp-0C]
 004F8E09    mov        esi,dword ptr [eax]
 004F8E0B    call       dword ptr [esi+74]
 004F8E0E    mov        ecx,dword ptr [ebp-48]
 004F8E11    mov        eax,dword ptr [ebx]
 004F8E13    mov        edx,4F8F38; 'REMARKS'
 004F8E18    mov        esi,dword ptr [eax]
 004F8E1A    call       dword ptr [esi+1A8]
 004F8E20    mov        edx,4F8F48; 'PROCEDURE_TYPE'
 004F8E25    mov        eax,dword ptr [ebp-0C]
 004F8E28    mov        ecx,dword ptr [eax]
 004F8E2A    call       dword ptr [ecx+84]
 004F8E30    mov        ecx,eax
 004F8E32    mov        eax,dword ptr [ebx]
 004F8E34    mov        edx,4F8F48; 'PROCEDURE_TYPE'
 004F8E39    mov        esi,dword ptr [eax]
 004F8E3B    call       dword ptr [esi+18C]
 004F8E41    mov        eax,dword ptr [ebx]
 004F8E43    mov        edx,dword ptr [eax]
 004F8E45    call       dword ptr [edx+1D0]
 004F8E4B    mov        eax,dword ptr [ebp-0C]
 004F8E4E    mov        edx,dword ptr [eax]
 004F8E50    call       dword ptr [edx+0C]
 004F8E53    test       al,al
<004F8E55    jne        004F8D8E
 004F8E5B    mov        eax,dword ptr [ebp-0C]
 004F8E5E    mov        edx,dword ptr [eax]
 004F8E60    call       dword ptr [edx+10]
 004F8E63    xor        eax,eax
 004F8E65    pop        edx
 004F8E66    pop        ecx
 004F8E67    pop        ecx
 004F8E68    mov        dword ptr fs:[eax],edx
 004F8E6B    push       4F8EAA
 004F8E70    lea        eax,[ebp-48]
 004F8E73    mov        edx,4
 004F8E78    call       @LStrArrayClr
 004F8E7D    lea        eax,[ebp-38]
 004F8E80    call       @IntfClear
 004F8E85    lea        eax,[ebp-34]
 004F8E88    mov        edx,3
 004F8E8D    call       @LStrArrayClr
 004F8E92    lea        eax,[ebp-10]
 004F8E95    call       @LStrClr
 004F8E9A    lea        eax,[ebp-0C]
 004F8E9D    call       @IntfClear
 004F8EA2    ret
<004F8EA3    jmp        @HandleFinally
<004F8EA8    jmp        004F8E70
 004F8EAA    pop        esi
 004F8EAB    pop        ebx
 004F8EAC    mov        esp,ebp
 004F8EAE    pop        ebp
 004F8EAF    ret        8
*}
//end;

//004F8F58
//procedure sub_004F8F58(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F8F58    push       ebp
 004F8F59    mov        ebp,esp
 004F8F5B    push       ecx
 004F8F5C    mov        ecx,10
 004F8F61    push       0
 004F8F63    push       0
 004F8F65    dec        ecx
<004F8F66    jne        004F8F61
 004F8F68    xchg       ecx,dword ptr [ebp-4]
 004F8F6B    push       ebx
 004F8F6C    push       esi
 004F8F6D    push       edi
 004F8F6E    mov        dword ptr [ebp-8],ecx
 004F8F71    mov        dword ptr [ebp-4],edx
 004F8F74    mov        esi,eax
 004F8F76    mov        ebx,dword ptr [ebp+8]
 004F8F79    xor        eax,eax
 004F8F7B    push       ebp
 004F8F7C    push       4F9531
 004F8F81    push       dword ptr fs:[eax]
 004F8F84    mov        dword ptr fs:[eax],esp
 004F8F87    mov        ecx,ebx
 004F8F89    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 004F8F8F    mov        edx,dword ptr [edx]
 004F8F91    mov        eax,esi
 004F8F93    call       004D8E7C
 004F8F98    lea        eax,[ebp-1C]
 004F8F9B    push       eax
 004F8F9C    lea        ecx,[ebp-40]
 004F8F9F    mov        dl,27
 004F8FA1    mov        eax,dword ptr [ebp-4]
 004F8FA4    call       004D31AC
 004F8FA9    mov        eax,dword ptr [ebp-40]
 004F8FAC    mov        dword ptr [ebp-3C],eax
 004F8FAF    mov        byte ptr [ebp-38],0B
 004F8FB3    lea        ecx,[ebp-44]
 004F8FB6    mov        dl,27
 004F8FB8    mov        eax,dword ptr [ebp-8]
 004F8FBB    call       004D31AC
 004F8FC0    mov        eax,dword ptr [ebp-44]
 004F8FC3    mov        dword ptr [ebp-34],eax
 004F8FC6    mov        byte ptr [ebp-30],0B
 004F8FCA    lea        ecx,[ebp-48]
 004F8FCD    mov        dl,27
 004F8FCF    mov        eax,dword ptr [ebp+10]
 004F8FD2    call       004D31AC
 004F8FD7    mov        eax,dword ptr [ebp-48]
 004F8FDA    mov        dword ptr [ebp-2C],eax
 004F8FDD    mov        byte ptr [ebp-28],0B
 004F8FE1    lea        ecx,[ebp-4C]
 004F8FE4    mov        dl,27
 004F8FE6    mov        eax,dword ptr [ebp+0C]
 004F8FE9    call       004D31AC
 004F8FEE    mov        eax,dword ptr [ebp-4C]
 004F8FF1    mov        dword ptr [ebp-24],eax
 004F8FF4    mov        byte ptr [ebp-20],0B
 004F8FF8    lea        edx,[ebp-3C]
 004F8FFB    mov        ecx,3
 004F9000    mov        eax,4F954C; 'exec sp_jdbc_getprocedurecolumns %s, %s, %s, %s'
 004F9005    call       Format
 004F900A    mov        eax,dword ptr [ebp-1C]
 004F900D    push       eax
 004F900E    lea        edx,[ebp-50]
 004F9011    mov        eax,esi
 004F9013    call       004FCB6C
 004F9018    mov        eax,dword ptr [ebp-50]
 004F901B    lea        ecx,[ebp-14]
 004F901E    pop        edx
 004F901F    mov        edi,dword ptr [eax]
 004F9021    call       dword ptr [edi+0C]
>004F9024    jmp        004F9289
 004F9029    mov        eax,dword ptr [ebx]
 004F902B    mov        edx,dword ptr [eax]
 004F902D    call       dword ptr [edx+1E4]
 004F9033    lea        ecx,[ebp-54]
 004F9036    mov        edx,4F9584; 'PROCEDURE_CAT'
 004F903B    mov        eax,dword ptr [ebp-14]
 004F903E    mov        edi,dword ptr [eax]
 004F9040    call       dword ptr [edi+74]
 004F9043    mov        ecx,dword ptr [ebp-54]
 004F9046    mov        eax,dword ptr [ebx]
 004F9048    mov        edx,4F9584; 'PROCEDURE_CAT'
 004F904D    mov        edi,dword ptr [eax]
 004F904F    call       dword ptr [edi+1A8]
 004F9055    lea        ecx,[ebp-58]
 004F9058    mov        edx,4F959C; 'PROCEDURE_SCHEM'
 004F905D    mov        eax,dword ptr [ebp-14]
 004F9060    mov        edi,dword ptr [eax]
 004F9062    call       dword ptr [edi+74]
 004F9065    mov        ecx,dword ptr [ebp-58]
 004F9068    mov        eax,dword ptr [ebx]
 004F906A    mov        edx,4F959C; 'PROCEDURE_SCHEM'
 004F906F    mov        edi,dword ptr [eax]
 004F9071    call       dword ptr [edi+1A8]
 004F9077    lea        ecx,[ebp-5C]
 004F907A    mov        edx,4F95B4; 'PROCEDURE_NAME'
 004F907F    mov        eax,dword ptr [ebp-14]
 004F9082    mov        edi,dword ptr [eax]
 004F9084    call       dword ptr [edi+74]
 004F9087    mov        ecx,dword ptr [ebp-5C]
 004F908A    mov        eax,dword ptr [ebx]
 004F908C    mov        edx,4F95B4; 'PROCEDURE_NAME'
 004F9091    mov        edi,dword ptr [eax]
 004F9093    call       dword ptr [edi+1A8]
 004F9099    lea        ecx,[ebp-60]
 004F909C    mov        edx,4F95CC; 'COLUMN_NAME'
 004F90A1    mov        eax,dword ptr [ebp-14]
 004F90A4    mov        edi,dword ptr [eax]
 004F90A6    call       dword ptr [edi+74]
 004F90A9    mov        ecx,dword ptr [ebp-60]
 004F90AC    mov        eax,dword ptr [ebx]
 004F90AE    mov        edx,4F95CC; 'COLUMN_NAME'
 004F90B3    mov        edi,dword ptr [eax]
 004F90B5    call       dword ptr [edi+1A8]
 004F90BB    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F90C0    mov        eax,dword ptr [ebp-14]
 004F90C3    mov        ecx,dword ptr [eax]
 004F90C5    call       dword ptr [ecx+84]
 004F90CB    movsx      eax,ax
 004F90CE    cmp        eax,5
>004F90D1    ja         004F915D
 004F90D7    jmp        dword ptr [eax*4+4F90DE]
 004F90D7    dd         4F90F6
 004F90D7    dd         4F90F6
 004F90D7    dd         4F910B
 004F90D7    dd         4F9120
 004F90D7    dd         4F9133
 004F90D7    dd         4F9148
 004F90F6    mov        eax,dword ptr [ebx]
 004F90F8    mov        cx,1
 004F90FC    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9101    mov        edi,dword ptr [eax]
 004F9103    call       dword ptr [edi+18C]
>004F9109    jmp        004F916E
 004F910B    mov        eax,dword ptr [ebx]
 004F910D    mov        cx,3
 004F9111    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9116    mov        edi,dword ptr [eax]
 004F9118    call       dword ptr [edi+18C]
>004F911E    jmp        004F916E
 004F9120    mov        eax,dword ptr [ebx]
 004F9122    xor        ecx,ecx
 004F9124    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9129    mov        edi,dword ptr [eax]
 004F912B    call       dword ptr [edi+18C]
>004F9131    jmp        004F916E
 004F9133    mov        eax,dword ptr [ebx]
 004F9135    mov        cx,3
 004F9139    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F913E    mov        edi,dword ptr [eax]
 004F9140    call       dword ptr [edi+18C]
>004F9146    jmp        004F916E
 004F9148    mov        eax,dword ptr [ebx]
 004F914A    mov        cx,4
 004F914E    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9153    mov        edi,dword ptr [eax]
 004F9155    call       dword ptr [edi+18C]
>004F915B    jmp        004F916E
 004F915D    mov        eax,dword ptr [ebx]
 004F915F    xor        ecx,ecx
 004F9161    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9166    mov        edi,dword ptr [eax]
 004F9168    call       dword ptr [edi+18C]
 004F916E    mov        edx,4F95F4; 'DATA_TYPE'
 004F9173    mov        eax,dword ptr [ebp-14]
 004F9176    mov        ecx,dword ptr [eax]
 004F9178    call       dword ptr [ecx+84]
 004F917E    call       004EF94C
 004F9183    xor        ecx,ecx
 004F9185    mov        cl,al
 004F9187    mov        eax,dword ptr [ebx]
 004F9189    mov        edx,4F95F4; 'DATA_TYPE'
 004F918E    mov        edi,dword ptr [eax]
 004F9190    call       dword ptr [edi+18C]
 004F9196    lea        ecx,[ebp-64]
 004F9199    mov        edx,4F9608; 'TYPE_NAME'
 004F919E    mov        eax,dword ptr [ebp-14]
 004F91A1    mov        edi,dword ptr [eax]
 004F91A3    call       dword ptr [edi+74]
 004F91A6    mov        ecx,dword ptr [ebp-64]
 004F91A9    mov        eax,dword ptr [ebx]
 004F91AB    mov        edx,4F9608; 'TYPE_NAME'
 004F91B0    mov        edi,dword ptr [eax]
 004F91B2    call       dword ptr [edi+1A8]
 004F91B8    mov        edx,4F961C; 'PRECISION'
 004F91BD    mov        eax,dword ptr [ebp-14]
 004F91C0    mov        ecx,dword ptr [eax]
 004F91C2    call       dword ptr [ecx+88]
 004F91C8    mov        ecx,eax
 004F91CA    mov        eax,dword ptr [ebx]
 004F91CC    mov        edx,4F961C; 'PRECISION'
 004F91D1    mov        edi,dword ptr [eax]
 004F91D3    call       dword ptr [edi+190]
 004F91D9    mov        edx,4F9630; 'LENGTH'
 004F91DE    mov        eax,dword ptr [ebp-14]
 004F91E1    mov        ecx,dword ptr [eax]
 004F91E3    call       dword ptr [ecx+88]
 004F91E9    mov        ecx,eax
 004F91EB    mov        eax,dword ptr [ebx]
 004F91ED    mov        edx,4F9630; 'LENGTH'
 004F91F2    mov        edi,dword ptr [eax]
 004F91F4    call       dword ptr [edi+190]
 004F91FA    mov        edx,4F9640; 'SCALE'
 004F91FF    mov        eax,dword ptr [ebp-14]
 004F9202    mov        ecx,dword ptr [eax]
 004F9204    call       dword ptr [ecx+84]
 004F920A    mov        ecx,eax
 004F920C    mov        eax,dword ptr [ebx]
 004F920E    mov        edx,4F9640; 'SCALE'
 004F9213    mov        edi,dword ptr [eax]
 004F9215    call       dword ptr [edi+18C]
 004F921B    mov        edx,4F9650; 'RADIX'
 004F9220    mov        eax,dword ptr [ebp-14]
 004F9223    mov        ecx,dword ptr [eax]
 004F9225    call       dword ptr [ecx+84]
 004F922B    mov        ecx,eax
 004F922D    mov        eax,dword ptr [ebx]
 004F922F    mov        edx,4F9650; 'RADIX'
 004F9234    mov        edi,dword ptr [eax]
 004F9236    call       dword ptr [edi+18C]
 004F923C    mov        edx,4F9660; 'NULLABLE'
 004F9241    mov        eax,dword ptr [ebp-14]
 004F9244    mov        ecx,dword ptr [eax]
 004F9246    call       dword ptr [ecx+84]
 004F924C    mov        ecx,eax
 004F924E    mov        eax,dword ptr [ebx]
 004F9250    mov        edx,4F9660; 'NULLABLE'
 004F9255    mov        edi,dword ptr [eax]
 004F9257    call       dword ptr [edi+18C]
 004F925D    lea        ecx,[ebp-68]
 004F9260    mov        edx,4F9674; 'REMARKS'
 004F9265    mov        eax,dword ptr [ebp-14]
 004F9268    mov        edi,dword ptr [eax]
 004F926A    call       dword ptr [edi+74]
 004F926D    mov        ecx,dword ptr [ebp-68]
 004F9270    mov        eax,dword ptr [ebx]
 004F9272    mov        edx,4F9674; 'REMARKS'
 004F9277    mov        edi,dword ptr [eax]
 004F9279    call       dword ptr [edi+1A8]
 004F927F    mov        eax,dword ptr [ebx]
 004F9281    mov        edx,dword ptr [eax]
 004F9283    call       dword ptr [edx+1D0]
 004F9289    mov        eax,dword ptr [ebp-14]
 004F928C    mov        edx,dword ptr [eax]
 004F928E    call       dword ptr [edx+0C]
 004F9291    test       al,al
<004F9293    jne        004F9029
 004F9299    mov        eax,dword ptr [ebp-14]
 004F929C    mov        edx,dword ptr [eax]
 004F929E    call       dword ptr [edx+10]
 004F92A1    mov        eax,dword ptr [ebx]
 004F92A3    mov        edx,dword ptr [eax]
 004F92A5    call       dword ptr [edx+0E4]
 004F92AB    lea        eax,[ebp-10]
 004F92AE    mov        edx,4F9684; '1'
 004F92B3    call       @LStrLAsg
 004F92B8    lea        eax,[ebp-0C]
 004F92BB    call       @LStrClr
 004F92C0    mov        edx,dword ptr [ebp-0C]
 004F92C3    mov        eax,4F9690; ';'
 004F92C8    call       AnsiPos
 004F92CD    test       eax,eax
>004F92CF    jle        004F9370
 004F92D5    lea        eax,[ebp-10]
 004F92D8    push       eax
 004F92D9    mov        edx,dword ptr [ebp-0C]
 004F92DC    mov        eax,4F9690; ';'
 004F92E1    call       004BED34
 004F92E6    add        eax,1
>004F92E9    jno        004F92F0
 004F92EB    call       @IntOver
 004F92F0    push       eax
 004F92F1    mov        eax,dword ptr [ebp-0C]
 004F92F4    call       @LStrLen
 004F92F9    mov        ecx,eax
 004F92FB    mov        eax,dword ptr [ebp-0C]
 004F92FE    pop        edx
 004F92FF    call       @LStrCopy
 004F9304    cmp        dword ptr [ebp-10],0
>004F9308    jne        004F9317
 004F930A    lea        eax,[ebp-10]
 004F930D    mov        edx,4F9684; '1'
 004F9312    call       @LStrLAsg
 004F9317    lea        eax,[ebp-0C]
 004F931A    push       eax
 004F931B    mov        edx,dword ptr [ebp-0C]
 004F931E    mov        eax,4F9690; ';'
 004F9323    call       004BED34
 004F9328    mov        ecx,eax
 004F932A    mov        edx,1
 004F932F    mov        eax,dword ptr [ebp-0C]
 004F9332    call       @LStrCopy
 004F9337    mov        eax,dword ptr [ebp-0C]
 004F933A    call       @LStrLen
 004F933F    mov        edx,dword ptr [ebp-0C]
 004F9342    dec        eax
 004F9343    test       edx,edx
>004F9345    je         004F934C
 004F9347    cmp        eax,dword ptr [edx-4]
>004F934A    jb         004F9351
 004F934C    call       @BoundErr
 004F9351    inc        eax
 004F9352    cmp        byte ptr [edx+eax-1],3B
>004F9357    jne        004F9370
 004F9359    mov        eax,dword ptr [ebp-0C]
 004F935C    call       @LStrLen
 004F9361    mov        edx,eax
 004F9363    lea        eax,[ebp-0C]
 004F9366    mov        ecx,1
 004F936B    call       @LStrDelete
 004F9370    lea        eax,[ebp-6C]
 004F9373    push       eax
 004F9374    lea        ecx,[ebp-80]
 004F9377    mov        dl,27
 004F9379    mov        eax,dword ptr [ebp-0C]
 004F937C    call       AnsiQuotedStr
 004F9381    mov        eax,dword ptr [ebp-80]
 004F9384    mov        dword ptr [ebp-7C],eax
 004F9387    mov        byte ptr [ebp-78],0B
 004F938B    mov        eax,dword ptr [ebp-10]
 004F938E    mov        dword ptr [ebp-74],eax
 004F9391    mov        byte ptr [ebp-70],0B
 004F9395    lea        edx,[ebp-7C]
 004F9398    mov        ecx,1
 004F939D    mov        eax,4F969C; 'select c.* from syscolumns c inner join sysobjects o on (o.id = c.id) where o.name = %s and c.number = %s order by colid'
 004F93A2    call       Format
 004F93A7    mov        eax,dword ptr [ebp-6C]
 004F93AA    push       eax
 004F93AB    lea        edx,[ebp-84]
 004F93B1    mov        eax,esi
 004F93B3    call       004FCB6C
 004F93B8    mov        eax,dword ptr [ebp-84]
 004F93BE    lea        ecx,[ebp-18]
 004F93C1    pop        edx
 004F93C2    mov        esi,dword ptr [eax]
 004F93C4    call       dword ptr [esi+0C]
 004F93C7    mov        eax,dword ptr [ebx]
 004F93C9    mov        edx,dword ptr [eax]
 004F93CB    call       dword ptr [edx+0C]
>004F93CE    jmp        004F94AE
 004F93D3    mov        eax,dword ptr [ebx]
 004F93D5    mov        edx,dword ptr [eax]
 004F93D7    call       dword ptr [edx+0C]
 004F93DA    mov        edx,4F9720; 'status2'
 004F93DF    mov        eax,dword ptr [ebp-18]
 004F93E2    mov        ecx,dword ptr [eax]
 004F93E4    call       dword ptr [ecx+0D0]
 004F93EA    dec        eax
>004F93EB    jl         004F9402
 004F93ED    mov        edx,4F9720; 'status2'
 004F93F2    mov        eax,dword ptr [ebp-18]
 004F93F5    mov        ecx,dword ptr [eax]
 004F93F7    call       dword ptr [ecx+84]
 004F93FD    movsx      eax,ax
>004F9400    jmp        004F9404
 004F9402    xor        eax,eax
 004F9404    cmp        eax,5
>004F9407    ja         004F9493
 004F940D    jmp        dword ptr [eax*4+4F9414]
 004F940D    dd         4F942C
 004F940D    dd         4F942C
 004F940D    dd         4F9441
 004F940D    dd         4F9456
 004F940D    dd         4F9469
 004F940D    dd         4F947E
 004F942C    mov        eax,dword ptr [ebx]
 004F942E    mov        cx,1
 004F9432    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9437    mov        esi,dword ptr [eax]
 004F9439    call       dword ptr [esi+18C]
>004F943F    jmp        004F94A4
 004F9441    mov        eax,dword ptr [ebx]
 004F9443    mov        cx,3
 004F9447    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F944C    mov        esi,dword ptr [eax]
 004F944E    call       dword ptr [esi+18C]
>004F9454    jmp        004F94A4
 004F9456    mov        eax,dword ptr [ebx]
 004F9458    xor        ecx,ecx
 004F945A    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F945F    mov        esi,dword ptr [eax]
 004F9461    call       dword ptr [esi+18C]
>004F9467    jmp        004F94A4
 004F9469    mov        eax,dword ptr [ebx]
 004F946B    mov        cx,3
 004F946F    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9474    mov        esi,dword ptr [eax]
 004F9476    call       dword ptr [esi+18C]
>004F947C    jmp        004F94A4
 004F947E    mov        eax,dword ptr [ebx]
 004F9480    mov        cx,4
 004F9484    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F9489    mov        esi,dword ptr [eax]
 004F948B    call       dword ptr [esi+18C]
>004F9491    jmp        004F94A4
 004F9493    mov        eax,dword ptr [ebx]
 004F9495    xor        ecx,ecx
 004F9497    mov        edx,4F95E0; 'COLUMN_TYPE'
 004F949C    mov        esi,dword ptr [eax]
 004F949E    call       dword ptr [esi+18C]
 004F94A4    mov        eax,dword ptr [ebx]
 004F94A6    mov        edx,dword ptr [eax]
 004F94A8    call       dword ptr [edx+1D4]
 004F94AE    mov        eax,dword ptr [ebp-18]
 004F94B1    mov        edx,dword ptr [eax]
 004F94B3    call       dword ptr [edx+0C]
 004F94B6    test       al,al
<004F94B8    jne        004F93D3
 004F94BE    mov        eax,dword ptr [ebp-18]
 004F94C1    mov        edx,dword ptr [eax]
 004F94C3    call       dword ptr [edx+10]
 004F94C6    xor        eax,eax
 004F94C8    pop        edx
 004F94C9    pop        ecx
 004F94CA    pop        ecx
 004F94CB    mov        dword ptr fs:[eax],edx
 004F94CE    push       4F9538
 004F94D3    lea        eax,[ebp-84]
 004F94D9    call       @IntfClear
 004F94DE    lea        eax,[ebp-80]
 004F94E1    call       @LStrClr
 004F94E6    lea        eax,[ebp-6C]
 004F94E9    mov        edx,7
 004F94EE    call       @LStrArrayClr
 004F94F3    lea        eax,[ebp-50]
 004F94F6    call       @IntfClear
 004F94FB    lea        eax,[ebp-4C]
 004F94FE    mov        edx,4
 004F9503    call       @LStrArrayClr
 004F9508    lea        eax,[ebp-1C]
 004F950B    call       @LStrClr
 004F9510    lea        eax,[ebp-18]
 004F9513    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 004F9519    mov        ecx,2
 004F951E    call       @FinalizeArray
 004F9523    lea        eax,[ebp-10]
 004F9526    mov        edx,2
 004F952B    call       @LStrArrayClr
 004F9530    ret
<004F9531    jmp        @HandleFinally
<004F9536    jmp        004F94D3
 004F9538    pop        edi
 004F9539    pop        esi
 004F953A    pop        ebx
 004F953B    mov        esp,ebp
 004F953D    pop        ebp
 004F953E    ret        0C
*}
//end;

//004F9728
//procedure sub_004F9728(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F9728    push       ebp
 004F9729    mov        ebp,esp
 004F972B    push       ecx
 004F972C    mov        ecx,0C
 004F9731    push       0
 004F9733    push       0
 004F9735    dec        ecx
<004F9736    jne        004F9731
 004F9738    xchg       ecx,dword ptr [ebp-4]
 004F973B    push       ebx
 004F973C    push       esi
 004F973D    push       edi
 004F973E    mov        dword ptr [ebp-0C],ecx
 004F9741    mov        dword ptr [ebp-8],edx
 004F9744    mov        dword ptr [ebp-4],eax
 004F9747    mov        ebx,dword ptr [ebp+8]
 004F974A    xor        eax,eax
 004F974C    push       ebp
 004F974D    push       4F9982
 004F9752    push       dword ptr fs:[eax]
 004F9755    mov        dword ptr fs:[eax],esp
 004F9758    mov        ecx,ebx
 004F975A    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 004F9760    mov        edx,dword ptr [edx]
 004F9762    mov        eax,dword ptr [ebp-4]
 004F9765    call       004D8E7C
 004F976A    lea        eax,[ebp-10]
 004F976D    call       @LStrClr
 004F9772    mov        eax,dword ptr [ebp+0C]
 004F9775    call       @DynArrayLength
 004F977A    mov        esi,eax
 004F977C    sub        esi,1
>004F977F    jno        004F9786
 004F9781    call       @IntOver
 004F9786    test       esi,esi
>004F9788    jl         004F97CD
 004F978A    inc        esi
 004F978B    xor        edi,edi
 004F978D    cmp        dword ptr [ebp-10],0
>004F9791    je         004F97A0
 004F9793    lea        eax,[ebp-10]
 004F9796    mov        edx,4F999C; ','
 004F979B    call       @LStrCat
 004F97A0    mov        eax,dword ptr [ebp+0C]
 004F97A3    test       eax,eax
>004F97A5    je         004F97AC
 004F97A7    cmp        edi,dword ptr [eax-4]
>004F97AA    jb         004F97B1
 004F97AC    call       @BoundErr
 004F97B1    mov        eax,dword ptr [eax+edi*4]
 004F97B4    lea        ecx,[ebp-18]
 004F97B7    mov        dl,27
 004F97B9    call       AnsiQuotedStr
 004F97BE    mov        edx,dword ptr [ebp-18]
 004F97C1    lea        eax,[ebp-10]
 004F97C4    call       @LStrCat
 004F97C9    inc        edi
 004F97CA    dec        esi
<004F97CB    jne        004F978D
 004F97CD    lea        eax,[ebp-1C]
 004F97D0    push       eax
 004F97D1    lea        ecx,[ebp-40]
 004F97D4    mov        dl,27
 004F97D6    mov        eax,dword ptr [ebp+10]
 004F97D9    call       004D31AC
 004F97DE    mov        eax,dword ptr [ebp-40]
 004F97E1    mov        dword ptr [ebp-3C],eax
 004F97E4    mov        byte ptr [ebp-38],0B
 004F97E8    lea        ecx,[ebp-44]
 004F97EB    mov        dl,27
 004F97ED    mov        eax,dword ptr [ebp-0C]
 004F97F0    call       004D31AC
 004F97F5    mov        eax,dword ptr [ebp-44]
 004F97F8    mov        dword ptr [ebp-34],eax
 004F97FB    mov        byte ptr [ebp-30],0B
 004F97FF    lea        ecx,[ebp-48]
 004F9802    mov        dl,27
 004F9804    mov        eax,dword ptr [ebp-8]
 004F9807    call       004D31AC
 004F980C    mov        eax,dword ptr [ebp-48]
 004F980F    mov        dword ptr [ebp-2C],eax
 004F9812    mov        byte ptr [ebp-28],0B
 004F9816    lea        ecx,[ebp-4C]
 004F9819    mov        dl,22
 004F981B    mov        eax,dword ptr [ebp-10]
 004F981E    call       004D31AC
 004F9823    mov        eax,dword ptr [ebp-4C]
 004F9826    mov        dword ptr [ebp-24],eax
 004F9829    mov        byte ptr [ebp-20],0B
 004F982D    lea        edx,[ebp-3C]
 004F9830    mov        ecx,3
 004F9835    mov        eax,4F99A8; 'exec sp_jdbc_tables %s, %s, %s, %s'
 004F983A    call       Format
 004F983F    mov        eax,dword ptr [ebp-1C]
 004F9842    push       eax
 004F9843    lea        edx,[ebp-50]
 004F9846    mov        eax,dword ptr [ebp-4]
 004F9849    call       004FCB6C
 004F984E    mov        eax,dword ptr [ebp-50]
 004F9851    lea        ecx,[ebp-14]
 004F9854    pop        edx
 004F9855    mov        esi,dword ptr [eax]
 004F9857    call       dword ptr [esi+0C]
>004F985A    jmp        004F991D
 004F985F    mov        eax,dword ptr [ebx]
 004F9861    mov        edx,dword ptr [eax]
 004F9863    call       dword ptr [edx+1E4]
 004F9869    lea        ecx,[ebp-54]
 004F986C    mov        edx,4F99D4; 'TABLE_CAT'
 004F9871    mov        eax,dword ptr [ebp-14]
 004F9874    mov        esi,dword ptr [eax]
 004F9876    call       dword ptr [esi+74]
 004F9879    mov        ecx,dword ptr [ebp-54]
 004F987C    mov        eax,dword ptr [ebx]
 004F987E    mov        edx,4F99D4; 'TABLE_CAT'
 004F9883    mov        esi,dword ptr [eax]
 004F9885    call       dword ptr [esi+1A8]
 004F988B    lea        ecx,[ebp-58]
 004F988E    mov        edx,4F99E8; 'TABLE_SCHEM'
 004F9893    mov        eax,dword ptr [ebp-14]
 004F9896    mov        esi,dword ptr [eax]
 004F9898    call       dword ptr [esi+74]
 004F989B    mov        ecx,dword ptr [ebp-58]
 004F989E    mov        eax,dword ptr [ebx]
 004F98A0    mov        edx,4F99E8; 'TABLE_SCHEM'
 004F98A5    mov        esi,dword ptr [eax]
 004F98A7    call       dword ptr [esi+1A8]
 004F98AD    lea        ecx,[ebp-5C]
 004F98B0    mov        edx,4F99FC; 'TABLE_NAME'
 004F98B5    mov        eax,dword ptr [ebp-14]
 004F98B8    mov        esi,dword ptr [eax]
 004F98BA    call       dword ptr [esi+74]
 004F98BD    mov        ecx,dword ptr [ebp-5C]
 004F98C0    mov        eax,dword ptr [ebx]
 004F98C2    mov        edx,4F99FC; 'TABLE_NAME'
 004F98C7    mov        esi,dword ptr [eax]
 004F98C9    call       dword ptr [esi+1A8]
 004F98CF    lea        ecx,[ebp-60]
 004F98D2    mov        edx,4F9A10; 'TABLE_TYPE'
 004F98D7    mov        eax,dword ptr [ebp-14]
 004F98DA    mov        esi,dword ptr [eax]
 004F98DC    call       dword ptr [esi+74]
 004F98DF    mov        ecx,dword ptr [ebp-60]
 004F98E2    mov        eax,dword ptr [ebx]
 004F98E4    mov        edx,4F9A10; 'TABLE_TYPE'
 004F98E9    mov        esi,dword ptr [eax]
 004F98EB    call       dword ptr [esi+1A8]
 004F98F1    lea        ecx,[ebp-64]
 004F98F4    mov        edx,4F9A24; 'REMARKS'
 004F98F9    mov        eax,dword ptr [ebp-14]
 004F98FC    mov        esi,dword ptr [eax]
 004F98FE    call       dword ptr [esi+74]
 004F9901    mov        ecx,dword ptr [ebp-64]
 004F9904    mov        eax,dword ptr [ebx]
 004F9906    mov        edx,4F9A24; 'REMARKS'
 004F990B    mov        esi,dword ptr [eax]
 004F990D    call       dword ptr [esi+1A8]
 004F9913    mov        eax,dword ptr [ebx]
 004F9915    mov        edx,dword ptr [eax]
 004F9917    call       dword ptr [edx+1D0]
 004F991D    mov        eax,dword ptr [ebp-14]
 004F9920    mov        edx,dword ptr [eax]
 004F9922    call       dword ptr [edx+0C]
 004F9925    test       al,al
<004F9927    jne        004F985F
 004F992D    mov        eax,dword ptr [ebp-14]
 004F9930    mov        edx,dword ptr [eax]
 004F9932    call       dword ptr [edx+10]
 004F9935    xor        eax,eax
 004F9937    pop        edx
 004F9938    pop        ecx
 004F9939    pop        ecx
 004F993A    mov        dword ptr fs:[eax],edx
 004F993D    push       4F9989
 004F9942    lea        eax,[ebp-64]
 004F9945    mov        edx,5
 004F994A    call       @LStrArrayClr
 004F994F    lea        eax,[ebp-50]
 004F9952    call       @IntfClear
 004F9957    lea        eax,[ebp-4C]
 004F995A    mov        edx,4
 004F995F    call       @LStrArrayClr
 004F9964    lea        eax,[ebp-1C]
 004F9967    mov        edx,2
 004F996C    call       @LStrArrayClr
 004F9971    lea        eax,[ebp-14]
 004F9974    call       @IntfClear
 004F9979    lea        eax,[ebp-10]
 004F997C    call       @LStrClr
 004F9981    ret
<004F9982    jmp        @HandleFinally
<004F9987    jmp        004F9942
 004F9989    pop        edi
 004F998A    pop        esi
 004F998B    pop        ebx
 004F998C    mov        esp,ebp
 004F998E    pop        ebp
 004F998F    ret        0C
*}
//end;

//004F9A2C
//procedure sub_004F9A2C(?:?);
//begin
{*
 004F9A2C    push       ebp
 004F9A2D    mov        ebp,esp
 004F9A2F    push       0
 004F9A31    push       0
 004F9A33    push       0
 004F9A35    push       ebx
 004F9A36    push       esi
 004F9A37    mov        ebx,edx
 004F9A39    mov        esi,eax
 004F9A3B    xor        eax,eax
 004F9A3D    push       ebp
 004F9A3E    push       4F9AE6
 004F9A43    push       dword ptr fs:[eax]
 004F9A46    mov        dword ptr fs:[eax],esp
 004F9A49    mov        ecx,ebx
 004F9A4B    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 004F9A51    mov        edx,dword ptr [edx]
 004F9A53    mov        eax,esi
 004F9A55    call       004D8E7C
 004F9A5A    lea        edx,[ebp-8]
 004F9A5D    mov        eax,esi
 004F9A5F    call       004FCB6C
 004F9A64    mov        eax,dword ptr [ebp-8]
 004F9A67    lea        ecx,[ebp-4]
 004F9A6A    mov        edx,4F9AFC; 'exec sp_jdbc_getschemas'
 004F9A6F    mov        esi,dword ptr [eax]
 004F9A71    call       dword ptr [esi+0C]
>004F9A74    jmp        004F9AAC
 004F9A76    mov        eax,dword ptr [ebx]
 004F9A78    mov        edx,dword ptr [eax]
 004F9A7A    call       dword ptr [edx+1E4]
 004F9A80    lea        ecx,[ebp-0C]
 004F9A83    mov        edx,4F9B1C; 'TABLE_SCHEM'
 004F9A88    mov        eax,dword ptr [ebp-4]
 004F9A8B    mov        esi,dword ptr [eax]
 004F9A8D    call       dword ptr [esi+74]
 004F9A90    mov        ecx,dword ptr [ebp-0C]
 004F9A93    mov        eax,dword ptr [ebx]
 004F9A95    mov        edx,4F9B1C; 'TABLE_SCHEM'
 004F9A9A    mov        esi,dword ptr [eax]
 004F9A9C    call       dword ptr [esi+1A8]
 004F9AA2    mov        eax,dword ptr [ebx]
 004F9AA4    mov        edx,dword ptr [eax]
 004F9AA6    call       dword ptr [edx+1D0]
 004F9AAC    mov        eax,dword ptr [ebp-4]
 004F9AAF    mov        edx,dword ptr [eax]
 004F9AB1    call       dword ptr [edx+0C]
 004F9AB4    test       al,al
<004F9AB6    jne        004F9A76
 004F9AB8    mov        eax,dword ptr [ebp-4]
 004F9ABB    mov        edx,dword ptr [eax]
 004F9ABD    call       dword ptr [edx+10]
 004F9AC0    xor        eax,eax
 004F9AC2    pop        edx
 004F9AC3    pop        ecx
 004F9AC4    pop        ecx
 004F9AC5    mov        dword ptr fs:[eax],edx
 004F9AC8    push       4F9AED
 004F9ACD    lea        eax,[ebp-0C]
 004F9AD0    call       @LStrClr
 004F9AD5    lea        eax,[ebp-8]
 004F9AD8    call       @IntfClear
 004F9ADD    lea        eax,[ebp-4]
 004F9AE0    call       @IntfClear
 004F9AE5    ret
<004F9AE6    jmp        @HandleFinally
<004F9AEB    jmp        004F9ACD
 004F9AED    pop        esi
 004F9AEE    pop        ebx
 004F9AEF    mov        esp,ebp
 004F9AF1    pop        ebp
 004F9AF2    ret
*}
//end;

//004F9B28
//procedure sub_004F9B28(?:?);
//begin
{*
 004F9B28    push       ebp
 004F9B29    mov        ebp,esp
 004F9B2B    push       0
 004F9B2D    push       0
 004F9B2F    push       0
 004F9B31    push       ebx
 004F9B32    push       esi
 004F9B33    mov        ebx,edx
 004F9B35    mov        esi,eax
 004F9B37    xor        eax,eax
 004F9B39    push       ebp
 004F9B3A    push       4F9BE2
 004F9B3F    push       dword ptr fs:[eax]
 004F9B42    mov        dword ptr fs:[eax],esp
 004F9B45    mov        ecx,ebx
 004F9B47    mov        edx,dword ptr ds:[61BB48]; ^gvar_0061DD44:TZMetadataColumnDefs
 004F9B4D    mov        edx,dword ptr [edx]
 004F9B4F    mov        eax,esi
 004F9B51    call       004D8E7C
 004F9B56    lea        edx,[ebp-8]
 004F9B59    mov        eax,esi
 004F9B5B    call       004FCB6C
 004F9B60    mov        eax,dword ptr [ebp-8]
 004F9B63    lea        ecx,[ebp-4]
 004F9B66    mov        edx,4F9BF8; 'exec sp_jdbc_getcatalogs'
 004F9B6B    mov        esi,dword ptr [eax]
 004F9B6D    call       dword ptr [esi+0C]
>004F9B70    jmp        004F9BA8
 004F9B72    mov        eax,dword ptr [ebx]
 004F9B74    mov        edx,dword ptr [eax]
 004F9B76    call       dword ptr [edx+1E4]
 004F9B7C    lea        ecx,[ebp-0C]
 004F9B7F    mov        edx,4F9C1C; 'TABLE_CAT'
 004F9B84    mov        eax,dword ptr [ebp-4]
 004F9B87    mov        esi,dword ptr [eax]
 004F9B89    call       dword ptr [esi+74]
 004F9B8C    mov        ecx,dword ptr [ebp-0C]
 004F9B8F    mov        eax,dword ptr [ebx]
 004F9B91    mov        edx,4F9C1C; 'TABLE_CAT'
 004F9B96    mov        esi,dword ptr [eax]
 004F9B98    call       dword ptr [esi+1A8]
 004F9B9E    mov        eax,dword ptr [ebx]
 004F9BA0    mov        edx,dword ptr [eax]
 004F9BA2    call       dword ptr [edx+1D0]
 004F9BA8    mov        eax,dword ptr [ebp-4]
 004F9BAB    mov        edx,dword ptr [eax]
 004F9BAD    call       dword ptr [edx+0C]
 004F9BB0    test       al,al
<004F9BB2    jne        004F9B72
 004F9BB4    mov        eax,dword ptr [ebp-4]
 004F9BB7    mov        edx,dword ptr [eax]
 004F9BB9    call       dword ptr [edx+10]
 004F9BBC    xor        eax,eax
 004F9BBE    pop        edx
 004F9BBF    pop        ecx
 004F9BC0    pop        ecx
 004F9BC1    mov        dword ptr fs:[eax],edx
 004F9BC4    push       4F9BE9
 004F9BC9    lea        eax,[ebp-0C]
 004F9BCC    call       @LStrClr
 004F9BD1    lea        eax,[ebp-8]
 004F9BD4    call       @IntfClear
 004F9BD9    lea        eax,[ebp-4]
 004F9BDC    call       @IntfClear
 004F9BE1    ret
<004F9BE2    jmp        @HandleFinally
<004F9BE7    jmp        004F9BC9
 004F9BE9    pop        esi
 004F9BEA    pop        ebx
 004F9BEB    mov        esp,ebp
 004F9BED    pop        ebp
 004F9BEE    ret
*}
//end;

//004F9C60
//procedure sub_004F9C60(?:?);
//begin
{*
 004F9C60    push       ebp
 004F9C61    mov        ebp,esp
 004F9C63    push       ecx
 004F9C64    push       ebx
 004F9C65    push       esi
 004F9C66    push       edi
 004F9C67    mov        esi,edx
 004F9C69    mov        ebx,eax
 004F9C6B    mov        ecx,esi
 004F9C6D    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 004F9C73    mov        edx,dword ptr [edx]
 004F9C75    mov        eax,ebx
 004F9C77    call       004D8E7C
 004F9C7C    mov        dword ptr [ebp-4],3
 004F9C83    mov        ebx,616024; gvar_00616024:array[3] of String
 004F9C88    mov        eax,dword ptr [esi]
 004F9C8A    mov        edx,dword ptr [eax]
 004F9C8C    call       dword ptr [edx+1E4]
 004F9C92    mov        eax,dword ptr [esi]
 004F9C94    mov        ecx,dword ptr [ebx]
 004F9C96    mov        edx,4F9CC4; 'TABLE_TYPE'
 004F9C9B    mov        edi,dword ptr [eax]
 004F9C9D    call       dword ptr [edi+1A8]
 004F9CA3    mov        eax,dword ptr [esi]
 004F9CA5    mov        edx,dword ptr [eax]
 004F9CA7    call       dword ptr [edx+1D0]
 004F9CAD    add        ebx,4
 004F9CB0    dec        dword ptr [ebp-4]
<004F9CB3    jne        004F9C88
 004F9CB5    pop        edi
 004F9CB6    pop        esi
 004F9CB7    pop        ebx
 004F9CB8    pop        ecx
 004F9CB9    pop        ebp
 004F9CBA    ret
*}
//end;

//004F9CD0
//procedure sub_004F9CD0(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F9CD0    push       ebp
 004F9CD1    mov        ebp,esp
 004F9CD3    push       ecx
 004F9CD4    mov        ecx,0E
 004F9CD9    push       0
 004F9CDB    push       0
 004F9CDD    dec        ecx
<004F9CDE    jne        004F9CD9
 004F9CE0    xchg       ecx,dword ptr [ebp-4]
 004F9CE3    push       ebx
 004F9CE4    push       esi
 004F9CE5    push       edi
 004F9CE6    mov        dword ptr [ebp-8],ecx
 004F9CE9    mov        dword ptr [ebp-4],edx
 004F9CEC    mov        esi,eax
 004F9CEE    mov        ebx,dword ptr [ebp+8]
 004F9CF1    xor        eax,eax
 004F9CF3    push       ebp
 004F9CF4    push       4FA1CE
 004F9CF9    push       dword ptr fs:[eax]
 004F9CFC    mov        dword ptr fs:[eax],esp
 004F9CFF    mov        ecx,ebx
 004F9D01    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 004F9D07    mov        edx,dword ptr [edx]
 004F9D09    mov        eax,esi
 004F9D0B    call       004D8E7C
 004F9D10    lea        eax,[ebp-14]
 004F9D13    push       eax
 004F9D14    lea        ecx,[ebp-38]
 004F9D17    mov        dl,27
 004F9D19    mov        eax,dword ptr [ebp+10]
 004F9D1C    call       004D31AC
 004F9D21    mov        eax,dword ptr [ebp-38]
 004F9D24    mov        dword ptr [ebp-34],eax
 004F9D27    mov        byte ptr [ebp-30],0B
 004F9D2B    lea        ecx,[ebp-3C]
 004F9D2E    mov        dl,27
 004F9D30    mov        eax,dword ptr [ebp-8]
 004F9D33    call       004D31AC
 004F9D38    mov        eax,dword ptr [ebp-3C]
 004F9D3B    mov        dword ptr [ebp-2C],eax
 004F9D3E    mov        byte ptr [ebp-28],0B
 004F9D42    lea        ecx,[ebp-40]
 004F9D45    mov        dl,27
 004F9D47    mov        eax,dword ptr [ebp-4]
 004F9D4A    call       004D31AC
 004F9D4F    mov        eax,dword ptr [ebp-40]
 004F9D52    mov        dword ptr [ebp-24],eax
 004F9D55    mov        byte ptr [ebp-20],0B
 004F9D59    lea        ecx,[ebp-44]
 004F9D5C    mov        dl,27
 004F9D5E    mov        eax,dword ptr [ebp+0C]
 004F9D61    call       004D31AC
 004F9D66    mov        eax,dword ptr [ebp-44]
 004F9D69    mov        dword ptr [ebp-1C],eax
 004F9D6C    mov        byte ptr [ebp-18],0B
 004F9D70    lea        edx,[ebp-34]
 004F9D73    mov        ecx,3
 004F9D78    mov        eax,4FA1E8; 'exec sp_jdbc_columns %s, %s, %s, %s'
 004F9D7D    call       Format
 004F9D82    mov        eax,dword ptr [ebp-14]
 004F9D85    push       eax
 004F9D86    lea        edx,[ebp-48]
 004F9D89    mov        eax,esi
 004F9D8B    call       004FCB6C
 004F9D90    mov        eax,dword ptr [ebp-48]
 004F9D93    lea        ecx,[ebp-0C]
 004F9D96    pop        edx
 004F9D97    mov        edi,dword ptr [eax]
 004F9D99    call       dword ptr [edi+0C]
>004F9D9C    jmp        004F9FCD
 004F9DA1    mov        eax,dword ptr [ebx]
 004F9DA3    mov        edx,dword ptr [eax]
 004F9DA5    call       dword ptr [edx+1E4]
 004F9DAB    mov        eax,dword ptr [ebx]
 004F9DAD    xor        ecx,ecx
 004F9DAF    mov        edx,4FA214; 'TABLE_CAT'
 004F9DB4    mov        edi,dword ptr [eax]
 004F9DB6    call       dword ptr [edi+1A8]
 004F9DBC    mov        eax,dword ptr [ebx]
 004F9DBE    xor        ecx,ecx
 004F9DC0    mov        edx,4FA228; 'TABLE_SCHEM'
 004F9DC5    mov        edi,dword ptr [eax]
 004F9DC7    call       dword ptr [edi+1A8]
 004F9DCD    lea        ecx,[ebp-4C]
 004F9DD0    mov        edx,4FA23C; 'TABLE_NAME'
 004F9DD5    mov        eax,dword ptr [ebp-0C]
 004F9DD8    mov        edi,dword ptr [eax]
 004F9DDA    call       dword ptr [edi+74]
 004F9DDD    mov        ecx,dword ptr [ebp-4C]
 004F9DE0    mov        eax,dword ptr [ebx]
 004F9DE2    mov        edx,4FA23C; 'TABLE_NAME'
 004F9DE7    mov        edi,dword ptr [eax]
 004F9DE9    call       dword ptr [edi+1A8]
 004F9DEF    lea        ecx,[ebp-50]
 004F9DF2    mov        edx,4FA250; 'COLUMN_NAME'
 004F9DF7    mov        eax,dword ptr [ebp-0C]
 004F9DFA    mov        edi,dword ptr [eax]
 004F9DFC    call       dword ptr [edi+74]
 004F9DFF    mov        ecx,dword ptr [ebp-50]
 004F9E02    mov        eax,dword ptr [ebx]
 004F9E04    mov        edx,4FA250; 'COLUMN_NAME'
 004F9E09    mov        edi,dword ptr [eax]
 004F9E0B    call       dword ptr [edi+1A8]
 004F9E11    lea        ecx,[ebp-54]
 004F9E14    mov        edx,4FA264; 'TYPE_NAME'
 004F9E19    mov        eax,dword ptr [ebp-0C]
 004F9E1C    mov        edi,dword ptr [eax]
 004F9E1E    call       dword ptr [edi+74]
 004F9E21    mov        ecx,dword ptr [ebp-54]
 004F9E24    mov        eax,dword ptr [ebx]
 004F9E26    mov        edx,4FA264; 'TYPE_NAME'
 004F9E2B    mov        edi,dword ptr [eax]
 004F9E2D    call       dword ptr [edi+1A8]
 004F9E33    mov        edx,4FA278; 'COLUMN_SIZE'
 004F9E38    mov        eax,dword ptr [ebp-0C]
 004F9E3B    mov        ecx,dword ptr [eax]
 004F9E3D    call       dword ptr [ecx+88]
 004F9E43    mov        ecx,eax
 004F9E45    mov        eax,dword ptr [ebx]
 004F9E47    mov        edx,4FA278; 'COLUMN_SIZE'
 004F9E4C    mov        edi,dword ptr [eax]
 004F9E4E    call       dword ptr [edi+190]
 004F9E54    mov        edx,4FA28C; 'BUFFER_LENGTH'
 004F9E59    mov        eax,dword ptr [ebp-0C]
 004F9E5C    mov        ecx,dword ptr [eax]
 004F9E5E    call       dword ptr [ecx+88]
 004F9E64    mov        ecx,eax
 004F9E66    mov        eax,dword ptr [ebx]
 004F9E68    mov        edx,4FA28C; 'BUFFER_LENGTH'
 004F9E6D    mov        edi,dword ptr [eax]
 004F9E6F    call       dword ptr [edi+190]
 004F9E75    mov        edx,4FA2A4; 'DECIMAL_DIGITS'
 004F9E7A    mov        eax,dword ptr [ebp-0C]
 004F9E7D    mov        ecx,dword ptr [eax]
 004F9E7F    call       dword ptr [ecx+88]
 004F9E85    mov        ecx,eax
 004F9E87    mov        eax,dword ptr [ebx]
 004F9E89    mov        edx,4FA2A4; 'DECIMAL_DIGITS'
 004F9E8E    mov        edi,dword ptr [eax]
 004F9E90    call       dword ptr [edi+190]
 004F9E96    mov        edx,4FA2BC; 'NUM_PREC_RADIX'
 004F9E9B    mov        eax,dword ptr [ebp-0C]
 004F9E9E    mov        ecx,dword ptr [eax]
 004F9EA0    call       dword ptr [ecx+84]
 004F9EA6    movsx      ecx,ax
 004F9EA9    mov        eax,dword ptr [ebx]
 004F9EAB    mov        edx,4FA2BC; 'NUM_PREC_RADIX'
 004F9EB0    mov        edi,dword ptr [eax]
 004F9EB2    call       dword ptr [edi+190]
 004F9EB8    mov        edx,4FA2D4; 'NULLABLE'
 004F9EBD    mov        eax,dword ptr [ebp-0C]
 004F9EC0    mov        ecx,dword ptr [eax]
 004F9EC2    call       dword ptr [ecx+84]
 004F9EC8    mov        ecx,eax
 004F9ECA    mov        eax,dword ptr [ebx]
 004F9ECC    mov        edx,4FA2D4; 'NULLABLE'
 004F9ED1    mov        edi,dword ptr [eax]
 004F9ED3    call       dword ptr [edi+18C]
 004F9ED9    lea        ecx,[ebp-58]
 004F9EDC    mov        edx,4FA2E8; 'REMARKS'
 004F9EE1    mov        eax,dword ptr [ebp-0C]
 004F9EE4    mov        edi,dword ptr [eax]
 004F9EE6    call       dword ptr [edi+74]
 004F9EE9    mov        ecx,dword ptr [ebp-58]
 004F9EEC    mov        eax,dword ptr [ebx]
 004F9EEE    mov        edx,4FA2E8; 'REMARKS'
 004F9EF3    mov        edi,dword ptr [eax]
 004F9EF5    call       dword ptr [edi+1A8]
 004F9EFB    lea        ecx,[ebp-5C]
 004F9EFE    mov        edx,4FA2F8; 'COLUMN_DEF'
 004F9F03    mov        eax,dword ptr [ebp-0C]
 004F9F06    mov        edi,dword ptr [eax]
 004F9F08    call       dword ptr [edi+74]
 004F9F0B    mov        ecx,dword ptr [ebp-5C]
 004F9F0E    mov        eax,dword ptr [ebx]
 004F9F10    mov        edx,4FA2F8; 'COLUMN_DEF'
 004F9F15    mov        edi,dword ptr [eax]
 004F9F17    call       dword ptr [edi+1A8]
 004F9F1D    mov        edx,4FA30C; 'SQL_DATA_TYPE'
 004F9F22    mov        eax,dword ptr [ebp-0C]
 004F9F25    mov        ecx,dword ptr [eax]
 004F9F27    call       dword ptr [ecx+84]
 004F9F2D    mov        ecx,eax
 004F9F2F    mov        eax,dword ptr [ebx]
 004F9F31    mov        edx,4FA30C; 'SQL_DATA_TYPE'
 004F9F36    mov        edi,dword ptr [eax]
 004F9F38    call       dword ptr [edi+18C]
 004F9F3E    mov        edx,4FA324; 'SQL_DATETIME_SUB'
 004F9F43    mov        eax,dword ptr [ebp-0C]
 004F9F46    mov        ecx,dword ptr [eax]
 004F9F48    call       dword ptr [ecx+84]
 004F9F4E    mov        ecx,eax
 004F9F50    mov        eax,dword ptr [ebx]
 004F9F52    mov        edx,4FA324; 'SQL_DATETIME_SUB'
 004F9F57    mov        edi,dword ptr [eax]
 004F9F59    call       dword ptr [edi+18C]
 004F9F5F    mov        edx,4FA340; 'CHAR_OCTET_LENGTH'
 004F9F64    mov        eax,dword ptr [ebp-0C]
 004F9F67    mov        ecx,dword ptr [eax]
 004F9F69    call       dword ptr [ecx+88]
 004F9F6F    mov        ecx,eax
 004F9F71    mov        eax,dword ptr [ebx]
 004F9F73    mov        edx,4FA340; 'CHAR_OCTET_LENGTH'
 004F9F78    mov        edi,dword ptr [eax]
 004F9F7A    call       dword ptr [edi+190]
 004F9F80    mov        edx,4FA35C; 'ORDINAL_POSITION'
 004F9F85    mov        eax,dword ptr [ebp-0C]
 004F9F88    mov        ecx,dword ptr [eax]
 004F9F8A    call       dword ptr [ecx+88]
 004F9F90    mov        ecx,eax
 004F9F92    mov        eax,dword ptr [ebx]
 004F9F94    mov        edx,4FA35C; 'ORDINAL_POSITION'
 004F9F99    mov        edi,dword ptr [eax]
 004F9F9B    call       dword ptr [edi+190]
 004F9FA1    lea        ecx,[ebp-60]
 004F9FA4    mov        edx,4FA378; 'IS_NULLABLE'
 004F9FA9    mov        eax,dword ptr [ebp-0C]
 004F9FAC    mov        edi,dword ptr [eax]
 004F9FAE    call       dword ptr [edi+74]
 004F9FB1    mov        ecx,dword ptr [ebp-60]
 004F9FB4    mov        eax,dword ptr [ebx]
 004F9FB6    mov        edx,4FA378; 'IS_NULLABLE'
 004F9FBB    mov        edi,dword ptr [eax]
 004F9FBD    call       dword ptr [edi+1A8]
 004F9FC3    mov        eax,dword ptr [ebx]
 004F9FC5    mov        edx,dword ptr [eax]
 004F9FC7    call       dword ptr [edx+1D0]
 004F9FCD    mov        eax,dword ptr [ebp-0C]
 004F9FD0    mov        edx,dword ptr [eax]
 004F9FD2    call       dword ptr [edx+0C]
 004F9FD5    test       al,al
<004F9FD7    jne        004F9DA1
 004F9FDD    mov        eax,dword ptr [ebp-0C]
 004F9FE0    mov        edx,dword ptr [eax]
 004F9FE2    call       dword ptr [edx+10]
 004F9FE5    mov        eax,dword ptr [ebx]
 004F9FE7    mov        edx,dword ptr [eax]
 004F9FE9    call       dword ptr [edx+0E4]
 004F9FEF    lea        eax,[ebp-64]
 004F9FF2    push       eax
 004F9FF3    lea        ecx,[ebp-70]
 004F9FF6    mov        dl,27
 004F9FF8    mov        eax,dword ptr [ebp+10]
 004F9FFB    call       AnsiQuotedStr
 004FA000    mov        eax,dword ptr [ebp-70]
 004FA003    mov        dword ptr [ebp-6C],eax
 004FA006    mov        byte ptr [ebp-68],0B
 004FA00A    lea        edx,[ebp-6C]
 004FA00D    xor        ecx,ecx
 004FA00F    mov        eax,4FA38C; 'select c.colid, c.name, c.type, c.prec, c.scale, c.status from syscolumns c inner join sysobjects o on (o.id = c.id) where o.name = %s order by colid'
 004FA014    call       Format
 004FA019    mov        eax,dword ptr [ebp-64]
 004FA01C    push       eax
 004FA01D    lea        edx,[ebp-74]
 004FA020    mov        eax,esi
 004FA022    call       004FCB6C
 004FA027    mov        eax,dword ptr [ebp-74]
 004FA02A    lea        ecx,[ebp-10]
 004FA02D    pop        edx
 004FA02E    mov        esi,dword ptr [eax]
 004FA030    call       dword ptr [esi+0C]
>004FA033    jmp        004FA15B
 004FA038    mov        eax,dword ptr [ebx]
 004FA03A    mov        edx,dword ptr [eax]
 004FA03C    call       dword ptr [edx+0C]
 004FA03F    mov        edx,4FA42C; 'status'
 004FA044    mov        eax,dword ptr [ebp-10]
 004FA047    mov        ecx,dword ptr [eax]
 004FA049    call       dword ptr [ecx+84]
 004FA04F    test       al,80
 004FA051    setne      cl
 004FA054    mov        eax,dword ptr [ebx]
 004FA056    mov        edx,4FA43C; 'AUTO_INCREMENT'
 004FA05B    mov        esi,dword ptr [eax]
 004FA05D    call       dword ptr [esi+184]
 004FA063    mov        eax,dword ptr [ebx]
 004FA065    mov        edx,4FA454; 'CASE_SENSITIVE'
 004FA06A    mov        ecx,dword ptr [eax]
 004FA06C    call       dword ptr [ecx+180]
 004FA072    mov        edx,4FA46C; 'type'
 004FA077    mov        eax,dword ptr [ebp-10]
 004FA07A    mov        ecx,dword ptr [eax]
 004FA07C    call       dword ptr [ecx+84]
 004FA082    add        eax,0FFFFFFDE
 004FA085    sub        ax,2
 004FA089    setb       cl
 004FA08C    xor        cl,1
 004FA08F    mov        eax,dword ptr [ebx]
 004FA091    mov        edx,4FA47C; 'SEARCHABLE'
 004FA096    mov        esi,dword ptr [eax]
 004FA098    call       dword ptr [esi+184]
 004FA09E    mov        edx,4FA42C; 'status'
 004FA0A3    mov        eax,dword ptr [ebp-10]
 004FA0A6    mov        ecx,dword ptr [eax]
 004FA0A8    call       dword ptr [ecx+84]
 004FA0AE    test       al,80
>004FA0B0    jne        004FA0C8
 004FA0B2    mov        edx,4FA46C; 'type'
 004FA0B7    mov        eax,dword ptr [ebp-10]
 004FA0BA    mov        ecx,dword ptr [eax]
 004FA0BC    call       dword ptr [ecx+84]
 004FA0C2    cmp        ax,25
>004FA0C6    jne        004FA0CC
 004FA0C8    xor        ecx,ecx
>004FA0CA    jmp        004FA0CE
 004FA0CC    mov        cl,1
 004FA0CE    mov        eax,dword ptr [ebx]
 004FA0D0    mov        edx,4FA490; 'WRITABLE'
 004FA0D5    mov        esi,dword ptr [eax]
 004FA0D7    call       dword ptr [esi+184]
 004FA0DD    mov        eax,dword ptr [ebx]
 004FA0DF    mov        edx,4FA490; 'WRITABLE'
 004FA0E4    mov        ecx,dword ptr [eax]
 004FA0E6    call       dword ptr [ecx+7C]
 004FA0E9    mov        ecx,eax
 004FA0EB    mov        eax,dword ptr [ebx]
 004FA0ED    mov        edx,4FA4A4; 'DEFINITELYWRITABLE'
 004FA0F2    mov        esi,dword ptr [eax]
 004FA0F4    call       dword ptr [esi+184]
 004FA0FA    mov        eax,dword ptr [ebx]
 004FA0FC    mov        edx,4FA490; 'WRITABLE'
 004FA101    mov        ecx,dword ptr [eax]
 004FA103    call       dword ptr [ecx+7C]
 004FA106    mov        ecx,eax
 004FA108    xor        cl,1
 004FA10B    mov        eax,dword ptr [ebx]
 004FA10D    mov        edx,4FA4C0; 'READONLY'
 004FA112    mov        esi,dword ptr [eax]
 004FA114    call       dword ptr [esi+184]
 004FA11A    mov        eax,dword ptr [ebx]
 004FA11C    mov        edx,4FA43C; 'AUTO_INCREMENT'
 004FA121    mov        ecx,dword ptr [eax]
 004FA123    call       dword ptr [ecx+7C]
 004FA126    test       al,al
>004FA128    je         004FA151
 004FA12A    mov        eax,dword ptr [ebx]
 004FA12C    mov        cx,1
 004FA130    mov        edx,4FA2D4; 'NULLABLE'
 004FA135    mov        esi,dword ptr [eax]
 004FA137    call       dword ptr [esi+18C]
 004FA13D    mov        eax,dword ptr [ebx]
 004FA13F    mov        ecx,4FA4D4; 'YES'
 004FA144    mov        edx,4FA378; 'IS_NULLABLE'
 004FA149    mov        esi,dword ptr [eax]
 004FA14B    call       dword ptr [esi+1A8]
 004FA151    mov        eax,dword ptr [ebx]
 004FA153    mov        edx,dword ptr [eax]
 004FA155    call       dword ptr [edx+1D4]
 004FA15B    mov        eax,dword ptr [ebp-10]
 004FA15E    mov        edx,dword ptr [eax]
 004FA160    call       dword ptr [edx+0C]
 004FA163    test       al,al
<004FA165    jne        004FA038
 004FA16B    mov        eax,dword ptr [ebp-10]
 004FA16E    mov        edx,dword ptr [eax]
 004FA170    call       dword ptr [edx+10]
 004FA173    xor        eax,eax
 004FA175    pop        edx
 004FA176    pop        ecx
 004FA177    pop        ecx
 004FA178    mov        dword ptr fs:[eax],edx
 004FA17B    push       4FA1D5
 004FA180    lea        eax,[ebp-74]
 004FA183    call       @IntfClear
 004FA188    lea        eax,[ebp-70]
 004FA18B    call       @LStrClr
 004FA190    lea        eax,[ebp-64]
 004FA193    mov        edx,7
 004FA198    call       @LStrArrayClr
 004FA19D    lea        eax,[ebp-48]
 004FA1A0    call       @IntfClear
 004FA1A5    lea        eax,[ebp-44]
 004FA1A8    mov        edx,4
 004FA1AD    call       @LStrArrayClr
 004FA1B2    lea        eax,[ebp-14]
 004FA1B5    call       @LStrClr
 004FA1BA    lea        eax,[ebp-10]
 004FA1BD    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 004FA1C3    mov        ecx,2
 004FA1C8    call       @FinalizeArray
 004FA1CD    ret
<004FA1CE    jmp        @HandleFinally
<004FA1D3    jmp        004FA180
 004FA1D5    pop        edi
 004FA1D6    pop        esi
 004FA1D7    pop        ebx
 004FA1D8    mov        esp,ebp
 004FA1DA    pop        ebp
 004FA1DB    ret        0C
*}
//end;

//004FA4D8
//procedure sub_004FA4D8(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FA4D8    push       ebp
 004FA4D9    mov        ebp,esp
 004FA4DB    push       ecx
 004FA4DC    mov        ecx,0C
 004FA4E1    push       0
 004FA4E3    push       0
 004FA4E5    dec        ecx
<004FA4E6    jne        004FA4E1
 004FA4E8    xchg       ecx,dword ptr [ebp-4]
 004FA4EB    push       ebx
 004FA4EC    push       esi
 004FA4ED    mov        dword ptr [ebp-8],ecx
 004FA4F0    mov        dword ptr [ebp-4],edx
 004FA4F3    mov        esi,eax
 004FA4F5    mov        ebx,dword ptr [ebp+8]
 004FA4F8    xor        eax,eax
 004FA4FA    push       ebp
 004FA4FB    push       4FA72A
 004FA500    push       dword ptr fs:[eax]
 004FA503    mov        dword ptr fs:[eax],esp
 004FA506    mov        ecx,ebx
 004FA508    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 004FA50E    mov        edx,dword ptr [edx]
 004FA510    mov        eax,esi
 004FA512    call       004D8E7C
 004FA517    lea        eax,[ebp-10]
 004FA51A    push       eax
 004FA51B    lea        ecx,[ebp-34]
 004FA51E    mov        dl,27
 004FA520    mov        eax,dword ptr [ebp-4]
 004FA523    call       004D31AC
 004FA528    mov        eax,dword ptr [ebp-34]
 004FA52B    mov        dword ptr [ebp-30],eax
 004FA52E    mov        byte ptr [ebp-2C],0B
 004FA532    lea        ecx,[ebp-38]
 004FA535    mov        dl,27
 004FA537    mov        eax,dword ptr [ebp-8]
 004FA53A    call       004D31AC
 004FA53F    mov        eax,dword ptr [ebp-38]
 004FA542    mov        dword ptr [ebp-28],eax
 004FA545    mov        byte ptr [ebp-24],0B
 004FA549    lea        ecx,[ebp-3C]
 004FA54C    mov        dl,27
 004FA54E    mov        eax,dword ptr [ebp+10]
 004FA551    call       004D31AC
 004FA556    mov        eax,dword ptr [ebp-3C]
 004FA559    mov        dword ptr [ebp-20],eax
 004FA55C    mov        byte ptr [ebp-1C],0B
 004FA560    lea        eax,[ebp-40]
 004FA563    push       eax
 004FA564    mov        cl,27
 004FA566    mov        edx,4FA744; ''%''
 004FA56B    mov        eax,dword ptr [ebp+0C]
 004FA56E    call       004D3178
 004FA573    mov        eax,dword ptr [ebp-40]
 004FA576    mov        dword ptr [ebp-18],eax
 004FA579    mov        byte ptr [ebp-14],0B
 004FA57D    lea        edx,[ebp-30]
 004FA580    mov        ecx,3
 004FA585    mov        eax,4FA750; 'exec sp_jdbc_getcolumnprivileges %s, %s, %s, %s'
 004FA58A    call       Format
 004FA58F    mov        eax,dword ptr [ebp-10]
 004FA592    push       eax
 004FA593    lea        edx,[ebp-44]
 004FA596    mov        eax,esi
 004FA598    call       004FCB6C
 004FA59D    mov        eax,dword ptr [ebp-44]
 004FA5A0    lea        ecx,[ebp-0C]
 004FA5A3    pop        edx
 004FA5A4    mov        esi,dword ptr [eax]
 004FA5A6    call       dword ptr [esi+0C]
>004FA5A9    jmp        004FA6D2
 004FA5AE    mov        eax,dword ptr [ebx]
 004FA5B0    mov        edx,dword ptr [eax]
 004FA5B2    call       dword ptr [edx+1E4]
 004FA5B8    lea        ecx,[ebp-48]
 004FA5BB    mov        edx,4FA788; 'TABLE_CAT'
 004FA5C0    mov        eax,dword ptr [ebp-0C]
 004FA5C3    mov        esi,dword ptr [eax]
 004FA5C5    call       dword ptr [esi+74]
 004FA5C8    mov        ecx,dword ptr [ebp-48]
 004FA5CB    mov        eax,dword ptr [ebx]
 004FA5CD    mov        edx,4FA788; 'TABLE_CAT'
 004FA5D2    mov        esi,dword ptr [eax]
 004FA5D4    call       dword ptr [esi+1A8]
 004FA5DA    lea        ecx,[ebp-4C]
 004FA5DD    mov        edx,4FA79C; 'TABLE_SCHEM'
 004FA5E2    mov        eax,dword ptr [ebp-0C]
 004FA5E5    mov        esi,dword ptr [eax]
 004FA5E7    call       dword ptr [esi+74]
 004FA5EA    mov        ecx,dword ptr [ebp-4C]
 004FA5ED    mov        eax,dword ptr [ebx]
 004FA5EF    mov        edx,4FA79C; 'TABLE_SCHEM'
 004FA5F4    mov        esi,dword ptr [eax]
 004FA5F6    call       dword ptr [esi+1A8]
 004FA5FC    lea        ecx,[ebp-50]
 004FA5FF    mov        edx,4FA7B0; 'TABLE_NAME'
 004FA604    mov        eax,dword ptr [ebp-0C]
 004FA607    mov        esi,dword ptr [eax]
 004FA609    call       dword ptr [esi+74]
 004FA60C    mov        ecx,dword ptr [ebp-50]
 004FA60F    mov        eax,dword ptr [ebx]
 004FA611    mov        edx,4FA7B0; 'TABLE_NAME'
 004FA616    mov        esi,dword ptr [eax]
 004FA618    call       dword ptr [esi+1A8]
 004FA61E    lea        ecx,[ebp-54]
 004FA621    mov        edx,4FA7C4; 'COLUMN_NAME'
 004FA626    mov        eax,dword ptr [ebp-0C]
 004FA629    mov        esi,dword ptr [eax]
 004FA62B    call       dword ptr [esi+74]
 004FA62E    mov        ecx,dword ptr [ebp-54]
 004FA631    mov        eax,dword ptr [ebx]
 004FA633    mov        edx,4FA7C4; 'COLUMN_NAME'
 004FA638    mov        esi,dword ptr [eax]
 004FA63A    call       dword ptr [esi+1A8]
 004FA640    lea        ecx,[ebp-58]
 004FA643    mov        edx,4FA7D8; 'GRANTOR'
 004FA648    mov        eax,dword ptr [ebp-0C]
 004FA64B    mov        esi,dword ptr [eax]
 004FA64D    call       dword ptr [esi+74]
 004FA650    mov        ecx,dword ptr [ebp-58]
 004FA653    mov        eax,dword ptr [ebx]
 004FA655    mov        edx,4FA7D8; 'GRANTOR'
 004FA65A    mov        esi,dword ptr [eax]
 004FA65C    call       dword ptr [esi+1A8]
 004FA662    lea        ecx,[ebp-5C]
 004FA665    mov        edx,4FA7E8; 'GRANTEE'
 004FA66A    mov        eax,dword ptr [ebp-0C]
 004FA66D    mov        esi,dword ptr [eax]
 004FA66F    call       dword ptr [esi+74]
 004FA672    mov        ecx,dword ptr [ebp-5C]
 004FA675    mov        eax,dword ptr [ebx]
 004FA677    mov        edx,4FA7E8; 'GRANTEE'
 004FA67C    mov        esi,dword ptr [eax]
 004FA67E    call       dword ptr [esi+1A8]
 004FA684    lea        ecx,[ebp-60]
 004FA687    mov        edx,4FA7F8; 'PRIVILEGE'
 004FA68C    mov        eax,dword ptr [ebp-0C]
 004FA68F    mov        esi,dword ptr [eax]
 004FA691    call       dword ptr [esi+74]
 004FA694    mov        ecx,dword ptr [ebp-60]
 004FA697    mov        eax,dword ptr [ebx]
 004FA699    mov        edx,4FA7F8; 'PRIVILEGE'
 004FA69E    mov        esi,dword ptr [eax]
 004FA6A0    call       dword ptr [esi+1A8]
 004FA6A6    lea        ecx,[ebp-64]
 004FA6A9    mov        edx,4FA80C; 'IS_GRANTABLE'
 004FA6AE    mov        eax,dword ptr [ebp-0C]
 004FA6B1    mov        esi,dword ptr [eax]
 004FA6B3    call       dword ptr [esi+74]
 004FA6B6    mov        ecx,dword ptr [ebp-64]
 004FA6B9    mov        eax,dword ptr [ebx]
 004FA6BB    mov        edx,4FA80C; 'IS_GRANTABLE'
 004FA6C0    mov        esi,dword ptr [eax]
 004FA6C2    call       dword ptr [esi+1A8]
 004FA6C8    mov        eax,dword ptr [ebx]
 004FA6CA    mov        edx,dword ptr [eax]
 004FA6CC    call       dword ptr [edx+1D0]
 004FA6D2    mov        eax,dword ptr [ebp-0C]
 004FA6D5    mov        edx,dword ptr [eax]
 004FA6D7    call       dword ptr [edx+0C]
 004FA6DA    test       al,al
<004FA6DC    jne        004FA5AE
 004FA6E2    mov        eax,dword ptr [ebp-0C]
 004FA6E5    mov        edx,dword ptr [eax]
 004FA6E7    call       dword ptr [edx+10]
 004FA6EA    xor        eax,eax
 004FA6EC    pop        edx
 004FA6ED    pop        ecx
 004FA6EE    pop        ecx
 004FA6EF    mov        dword ptr fs:[eax],edx
 004FA6F2    push       4FA731
 004FA6F7    lea        eax,[ebp-64]
 004FA6FA    mov        edx,8
 004FA6FF    call       @LStrArrayClr
 004FA704    lea        eax,[ebp-44]
 004FA707    call       @IntfClear
 004FA70C    lea        eax,[ebp-40]
 004FA70F    mov        edx,4
 004FA714    call       @LStrArrayClr
 004FA719    lea        eax,[ebp-10]
 004FA71C    call       @LStrClr
 004FA721    lea        eax,[ebp-0C]
 004FA724    call       @IntfClear
 004FA729    ret
<004FA72A    jmp        @HandleFinally
<004FA72F    jmp        004FA6F7
 004FA731    pop        esi
 004FA732    pop        ebx
 004FA733    mov        esp,ebp
 004FA735    pop        ebp
 004FA736    ret        0C
*}
//end;

//004FA81C
//procedure sub_004FA81C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FA81C    push       ebp
 004FA81D    mov        ebp,esp
 004FA81F    push       ecx
 004FA820    mov        ecx,0A
 004FA825    push       0
 004FA827    push       0
 004FA829    dec        ecx
<004FA82A    jne        004FA825
 004FA82C    xchg       ecx,dword ptr [ebp-4]
 004FA82F    push       ebx
 004FA830    push       esi
 004FA831    mov        dword ptr [ebp-8],ecx
 004FA834    mov        dword ptr [ebp-4],edx
 004FA837    mov        esi,eax
 004FA839    mov        ebx,dword ptr [ebp+8]
 004FA83C    xor        eax,eax
 004FA83E    push       ebp
 004FA83F    push       4FAA2F
 004FA844    push       dword ptr fs:[eax]
 004FA847    mov        dword ptr fs:[eax],esp
 004FA84A    mov        ecx,ebx
 004FA84C    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 004FA852    mov        edx,dword ptr [edx]
 004FA854    mov        eax,esi
 004FA856    call       004D8E7C
 004FA85B    lea        eax,[ebp-10]
 004FA85E    push       eax
 004FA85F    lea        ecx,[ebp-2C]
 004FA862    mov        dl,27
 004FA864    mov        eax,dword ptr [ebp-4]
 004FA867    call       004D31AC
 004FA86C    mov        eax,dword ptr [ebp-2C]
 004FA86F    mov        dword ptr [ebp-28],eax
 004FA872    mov        byte ptr [ebp-24],0B
 004FA876    lea        ecx,[ebp-30]
 004FA879    mov        dl,27
 004FA87B    mov        eax,dword ptr [ebp-8]
 004FA87E    call       004D31AC
 004FA883    mov        eax,dword ptr [ebp-30]
 004FA886    mov        dword ptr [ebp-20],eax
 004FA889    mov        byte ptr [ebp-1C],0B
 004FA88D    lea        ecx,[ebp-34]
 004FA890    mov        dl,27
 004FA892    mov        eax,dword ptr [ebp+0C]
 004FA895    call       004D31AC
 004FA89A    mov        eax,dword ptr [ebp-34]
 004FA89D    mov        dword ptr [ebp-18],eax
 004FA8A0    mov        byte ptr [ebp-14],0B
 004FA8A4    lea        edx,[ebp-28]
 004FA8A7    mov        ecx,2
 004FA8AC    mov        eax,4FAA48; 'exec sp_jdbc_gettableprivileges %s, %s, %s'
 004FA8B1    call       Format
 004FA8B6    mov        eax,dword ptr [ebp-10]
 004FA8B9    push       eax
 004FA8BA    lea        edx,[ebp-38]
 004FA8BD    mov        eax,esi
 004FA8BF    call       004FCB6C
 004FA8C4    mov        eax,dword ptr [ebp-38]
 004FA8C7    lea        ecx,[ebp-0C]
 004FA8CA    pop        edx
 004FA8CB    mov        esi,dword ptr [eax]
 004FA8CD    call       dword ptr [esi+0C]
>004FA8D0    jmp        004FA9D7
 004FA8D5    mov        eax,dword ptr [ebx]
 004FA8D7    mov        edx,dword ptr [eax]
 004FA8D9    call       dword ptr [edx+1E4]
 004FA8DF    lea        ecx,[ebp-3C]
 004FA8E2    mov        edx,4FAA7C; 'TABLE_CAT'
 004FA8E7    mov        eax,dword ptr [ebp-0C]
 004FA8EA    mov        esi,dword ptr [eax]
 004FA8EC    call       dword ptr [esi+74]
 004FA8EF    mov        ecx,dword ptr [ebp-3C]
 004FA8F2    mov        eax,dword ptr [ebx]
 004FA8F4    mov        edx,4FAA7C; 'TABLE_CAT'
 004FA8F9    mov        esi,dword ptr [eax]
 004FA8FB    call       dword ptr [esi+1A8]
 004FA901    lea        ecx,[ebp-40]
 004FA904    mov        edx,4FAA90; 'TABLE_SCHEM'
 004FA909    mov        eax,dword ptr [ebp-0C]
 004FA90C    mov        esi,dword ptr [eax]
 004FA90E    call       dword ptr [esi+74]
 004FA911    mov        ecx,dword ptr [ebp-40]
 004FA914    mov        eax,dword ptr [ebx]
 004FA916    mov        edx,4FAA90; 'TABLE_SCHEM'
 004FA91B    mov        esi,dword ptr [eax]
 004FA91D    call       dword ptr [esi+1A8]
 004FA923    lea        ecx,[ebp-44]
 004FA926    mov        edx,4FAAA4; 'TABLE_NAME'
 004FA92B    mov        eax,dword ptr [ebp-0C]
 004FA92E    mov        esi,dword ptr [eax]
 004FA930    call       dword ptr [esi+74]
 004FA933    mov        ecx,dword ptr [ebp-44]
 004FA936    mov        eax,dword ptr [ebx]
 004FA938    mov        edx,4FAAA4; 'TABLE_NAME'
 004FA93D    mov        esi,dword ptr [eax]
 004FA93F    call       dword ptr [esi+1A8]
 004FA945    lea        ecx,[ebp-48]
 004FA948    mov        edx,4FAAB8; 'GRANTOR'
 004FA94D    mov        eax,dword ptr [ebp-0C]
 004FA950    mov        esi,dword ptr [eax]
 004FA952    call       dword ptr [esi+74]
 004FA955    mov        ecx,dword ptr [ebp-48]
 004FA958    mov        eax,dword ptr [ebx]
 004FA95A    mov        edx,4FAAB8; 'GRANTOR'
 004FA95F    mov        esi,dword ptr [eax]
 004FA961    call       dword ptr [esi+1A8]
 004FA967    lea        ecx,[ebp-4C]
 004FA96A    mov        edx,4FAAC8; 'GRANTEE'
 004FA96F    mov        eax,dword ptr [ebp-0C]
 004FA972    mov        esi,dword ptr [eax]
 004FA974    call       dword ptr [esi+74]
 004FA977    mov        ecx,dword ptr [ebp-4C]
 004FA97A    mov        eax,dword ptr [ebx]
 004FA97C    mov        edx,4FAAC8; 'GRANTEE'
 004FA981    mov        esi,dword ptr [eax]
 004FA983    call       dword ptr [esi+1A8]
 004FA989    lea        ecx,[ebp-50]
 004FA98C    mov        edx,4FAAD8; 'PRIVILEGE'
 004FA991    mov        eax,dword ptr [ebp-0C]
 004FA994    mov        esi,dword ptr [eax]
 004FA996    call       dword ptr [esi+74]
 004FA999    mov        ecx,dword ptr [ebp-50]
 004FA99C    mov        eax,dword ptr [ebx]
 004FA99E    mov        edx,4FAAD8; 'PRIVILEGE'
 004FA9A3    mov        esi,dword ptr [eax]
 004FA9A5    call       dword ptr [esi+1A8]
 004FA9AB    lea        ecx,[ebp-54]
 004FA9AE    mov        edx,4FAAEC; 'IS_GRANTABLE'
 004FA9B3    mov        eax,dword ptr [ebp-0C]
 004FA9B6    mov        esi,dword ptr [eax]
 004FA9B8    call       dword ptr [esi+74]
 004FA9BB    mov        ecx,dword ptr [ebp-54]
 004FA9BE    mov        eax,dword ptr [ebx]
 004FA9C0    mov        edx,4FAAEC; 'IS_GRANTABLE'
 004FA9C5    mov        esi,dword ptr [eax]
 004FA9C7    call       dword ptr [esi+1A8]
 004FA9CD    mov        eax,dword ptr [ebx]
 004FA9CF    mov        edx,dword ptr [eax]
 004FA9D1    call       dword ptr [edx+1D0]
 004FA9D7    mov        eax,dword ptr [ebp-0C]
 004FA9DA    mov        edx,dword ptr [eax]
 004FA9DC    call       dword ptr [edx+0C]
 004FA9DF    test       al,al
<004FA9E1    jne        004FA8D5
 004FA9E7    mov        eax,dword ptr [ebp-0C]
 004FA9EA    mov        edx,dword ptr [eax]
 004FA9EC    call       dword ptr [edx+10]
 004FA9EF    xor        eax,eax
 004FA9F1    pop        edx
 004FA9F2    pop        ecx
 004FA9F3    pop        ecx
 004FA9F4    mov        dword ptr fs:[eax],edx
 004FA9F7    push       4FAA36
 004FA9FC    lea        eax,[ebp-54]
 004FA9FF    mov        edx,7
 004FAA04    call       @LStrArrayClr
 004FAA09    lea        eax,[ebp-38]
 004FAA0C    call       @IntfClear
 004FAA11    lea        eax,[ebp-34]
 004FAA14    mov        edx,3
 004FAA19    call       @LStrArrayClr
 004FAA1E    lea        eax,[ebp-10]
 004FAA21    call       @LStrClr
 004FAA26    lea        eax,[ebp-0C]
 004FAA29    call       @IntfClear
 004FAA2E    ret
<004FAA2F    jmp        @HandleFinally
<004FAA34    jmp        004FA9FC
 004FAA36    pop        esi
 004FAA37    pop        ebx
 004FAA38    mov        esp,ebp
 004FAA3A    pop        ebp
 004FAA3B    ret        8
*}
//end;

//004FAAFC
//procedure sub_004FAAFC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FAAFC    push       ebp
 004FAAFD    mov        ebp,esp
 004FAAFF    add        esp,0FFFFFFC0
 004FAB02    push       ebx
 004FAB03    push       esi
 004FAB04    xor        ebx,ebx
 004FAB06    mov        dword ptr [ebp-40],ebx
 004FAB09    mov        dword ptr [ebp-3C],ebx
 004FAB0C    mov        dword ptr [ebp-10],ebx
 004FAB0F    mov        dword ptr [ebp-38],ebx
 004FAB12    mov        dword ptr [ebp-2C],ebx
 004FAB15    mov        dword ptr [ebp-30],ebx
 004FAB18    mov        dword ptr [ebp-34],ebx
 004FAB1B    mov        dword ptr [ebp-0C],ebx
 004FAB1E    mov        dword ptr [ebp-8],ecx
 004FAB21    mov        dword ptr [ebp-4],edx
 004FAB24    mov        esi,eax
 004FAB26    mov        ebx,dword ptr [ebp+8]
 004FAB29    xor        eax,eax
 004FAB2B    push       ebp
 004FAB2C    push       4FAD3F
 004FAB31    push       dword ptr fs:[eax]
 004FAB34    mov        dword ptr fs:[eax],esp
 004FAB37    mov        ecx,ebx
 004FAB39    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 004FAB3F    mov        edx,dword ptr [edx]
 004FAB41    mov        eax,esi
 004FAB43    call       004D8E7C
 004FAB48    lea        eax,[ebp-10]
 004FAB4B    push       eax
 004FAB4C    lea        ecx,[ebp-2C]
 004FAB4F    mov        dl,27
 004FAB51    mov        eax,dword ptr [ebp-4]
 004FAB54    call       004D31AC
 004FAB59    mov        eax,dword ptr [ebp-2C]
 004FAB5C    mov        dword ptr [ebp-28],eax
 004FAB5F    mov        byte ptr [ebp-24],0B
 004FAB63    lea        ecx,[ebp-30]
 004FAB66    mov        dl,27
 004FAB68    mov        eax,dword ptr [ebp-8]
 004FAB6B    call       004D31AC
 004FAB70    mov        eax,dword ptr [ebp-30]
 004FAB73    mov        dword ptr [ebp-20],eax
 004FAB76    mov        byte ptr [ebp-1C],0B
 004FAB7A    lea        ecx,[ebp-34]
 004FAB7D    mov        dl,27
 004FAB7F    mov        eax,dword ptr [ebp+0C]
 004FAB82    call       004D31AC
 004FAB87    mov        eax,dword ptr [ebp-34]
 004FAB8A    mov        dword ptr [ebp-18],eax
 004FAB8D    mov        byte ptr [ebp-14],0B
 004FAB91    lea        edx,[ebp-28]
 004FAB94    mov        ecx,2
 004FAB99    mov        eax,4FAD58; 'exec sp_jdbc_getversioncolumns %s, %s, %s'
 004FAB9E    call       Format
 004FABA3    mov        eax,dword ptr [ebp-10]
 004FABA6    push       eax
 004FABA7    lea        edx,[ebp-38]
 004FABAA    mov        eax,esi
 004FABAC    call       004FCB6C
 004FABB1    mov        eax,dword ptr [ebp-38]
 004FABB4    lea        ecx,[ebp-0C]
 004FABB7    pop        edx
 004FABB8    mov        esi,dword ptr [eax]
 004FABBA    call       dword ptr [esi+0C]
>004FABBD    jmp        004FACE7
 004FABC2    mov        eax,dword ptr [ebx]
 004FABC4    mov        edx,dword ptr [eax]
 004FABC6    call       dword ptr [edx+1E4]
 004FABCC    mov        edx,4FAD8C; 'SCOPE'
 004FABD1    mov        eax,dword ptr [ebp-0C]
 004FABD4    mov        ecx,dword ptr [eax]
 004FABD6    call       dword ptr [ecx+84]
 004FABDC    mov        ecx,eax
 004FABDE    mov        eax,dword ptr [ebx]
 004FABE0    mov        edx,4FAD8C; 'SCOPE'
 004FABE5    mov        esi,dword ptr [eax]
 004FABE7    call       dword ptr [esi+18C]
 004FABED    lea        ecx,[ebp-3C]
 004FABF0    mov        edx,4FAD9C; 'COLUMN_NAME'
 004FABF5    mov        eax,dword ptr [ebp-0C]
 004FABF8    mov        esi,dword ptr [eax]
 004FABFA    call       dword ptr [esi+74]
 004FABFD    mov        ecx,dword ptr [ebp-3C]
 004FAC00    mov        eax,dword ptr [ebx]
 004FAC02    mov        edx,4FAD9C; 'COLUMN_NAME'
 004FAC07    mov        esi,dword ptr [eax]
 004FAC09    call       dword ptr [esi+1A8]
 004FAC0F    mov        edx,4FADB0; 'DATA_TYPE'
 004FAC14    mov        eax,dword ptr [ebp-0C]
 004FAC17    mov        ecx,dword ptr [eax]
 004FAC19    call       dword ptr [ecx+84]
 004FAC1F    call       004EF94C
 004FAC24    xor        ecx,ecx
 004FAC26    mov        cl,al
 004FAC28    mov        eax,dword ptr [ebx]
 004FAC2A    mov        edx,4FADB0; 'DATA_TYPE'
 004FAC2F    mov        esi,dword ptr [eax]
 004FAC31    call       dword ptr [esi+18C]
 004FAC37    lea        ecx,[ebp-40]
 004FAC3A    mov        edx,4FADC4; 'TYPE_NAME'
 004FAC3F    mov        eax,dword ptr [ebp-0C]
 004FAC42    mov        esi,dword ptr [eax]
 004FAC44    call       dword ptr [esi+74]
 004FAC47    mov        ecx,dword ptr [ebp-40]
 004FAC4A    mov        eax,dword ptr [ebx]
 004FAC4C    mov        edx,4FADC4; 'TYPE_NAME'
 004FAC51    mov        esi,dword ptr [eax]
 004FAC53    call       dword ptr [esi+1A8]
 004FAC59    mov        edx,4FADD8; 'COLUMN_SIZE'
 004FAC5E    mov        eax,dword ptr [ebp-0C]
 004FAC61    mov        ecx,dword ptr [eax]
 004FAC63    call       dword ptr [ecx+88]
 004FAC69    mov        ecx,eax
 004FAC6B    mov        eax,dword ptr [ebx]
 004FAC6D    mov        edx,4FADD8; 'COLUMN_SIZE'
 004FAC72    mov        esi,dword ptr [eax]
 004FAC74    call       dword ptr [esi+190]
 004FAC7A    mov        edx,4FADEC; 'BUFFER_LENGTH'
 004FAC7F    mov        eax,dword ptr [ebp-0C]
 004FAC82    mov        ecx,dword ptr [eax]
 004FAC84    call       dword ptr [ecx+88]
 004FAC8A    mov        ecx,eax
 004FAC8C    mov        eax,dword ptr [ebx]
 004FAC8E    mov        edx,4FADEC; 'BUFFER_LENGTH'
 004FAC93    mov        esi,dword ptr [eax]
 004FAC95    call       dword ptr [esi+190]
 004FAC9B    mov        edx,4FAE04; 'DECIMAL_DIGITS'
 004FACA0    mov        eax,dword ptr [ebp-0C]
 004FACA3    mov        ecx,dword ptr [eax]
 004FACA5    call       dword ptr [ecx+88]
 004FACAB    mov        ecx,eax
 004FACAD    mov        eax,dword ptr [ebx]
 004FACAF    mov        edx,4FAE04; 'DECIMAL_DIGITS'
 004FACB4    mov        esi,dword ptr [eax]
 004FACB6    call       dword ptr [esi+190]
 004FACBC    mov        edx,4FAE1C; 'PSEUDO_COLUMN'
 004FACC1    mov        eax,dword ptr [ebp-0C]
 004FACC4    mov        ecx,dword ptr [eax]
 004FACC6    call       dword ptr [ecx+84]
 004FACCC    mov        ecx,eax
 004FACCE    mov        eax,dword ptr [ebx]
 004FACD0    mov        edx,4FAE1C; 'PSEUDO_COLUMN'
 004FACD5    mov        esi,dword ptr [eax]
 004FACD7    call       dword ptr [esi+18C]
 004FACDD    mov        eax,dword ptr [ebx]
 004FACDF    mov        edx,dword ptr [eax]
 004FACE1    call       dword ptr [edx+1D0]
 004FACE7    mov        eax,dword ptr [ebp-0C]
 004FACEA    mov        edx,dword ptr [eax]
 004FACEC    call       dword ptr [edx+0C]
 004FACEF    test       al,al
<004FACF1    jne        004FABC2
 004FACF7    mov        eax,dword ptr [ebp-0C]
 004FACFA    mov        edx,dword ptr [eax]
 004FACFC    call       dword ptr [edx+10]
 004FACFF    xor        eax,eax
 004FAD01    pop        edx
 004FAD02    pop        ecx
 004FAD03    pop        ecx
 004FAD04    mov        dword ptr fs:[eax],edx
 004FAD07    push       4FAD46
 004FAD0C    lea        eax,[ebp-40]
 004FAD0F    mov        edx,2
 004FAD14    call       @LStrArrayClr
 004FAD19    lea        eax,[ebp-38]
 004FAD1C    call       @IntfClear
 004FAD21    lea        eax,[ebp-34]
 004FAD24    mov        edx,3
 004FAD29    call       @LStrArrayClr
 004FAD2E    lea        eax,[ebp-10]
 004FAD31    call       @LStrClr
 004FAD36    lea        eax,[ebp-0C]
 004FAD39    call       @IntfClear
 004FAD3E    ret
<004FAD3F    jmp        @HandleFinally
<004FAD44    jmp        004FAD0C
 004FAD46    pop        esi
 004FAD47    pop        ebx
 004FAD48    mov        esp,ebp
 004FAD4A    pop        ebp
 004FAD4B    ret        8
*}
//end;

//004FAE2C
//procedure sub_004FAE2C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FAE2C    push       ebp
 004FAE2D    mov        ebp,esp
 004FAE2F    push       ecx
 004FAE30    mov        ecx,9
 004FAE35    push       0
 004FAE37    push       0
 004FAE39    dec        ecx
<004FAE3A    jne        004FAE35
 004FAE3C    xchg       ecx,dword ptr [ebp-4]
 004FAE3F    push       ebx
 004FAE40    push       esi
 004FAE41    mov        dword ptr [ebp-8],ecx
 004FAE44    mov        dword ptr [ebp-4],edx
 004FAE47    mov        esi,eax
 004FAE49    mov        ebx,dword ptr [ebp+8]
 004FAE4C    xor        eax,eax
 004FAE4E    push       ebp
 004FAE4F    push       4FB01C
 004FAE54    push       dword ptr fs:[eax]
 004FAE57    mov        dword ptr fs:[eax],esp
 004FAE5A    mov        ecx,ebx
 004FAE5C    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 004FAE62    mov        edx,dword ptr [edx]
 004FAE64    mov        eax,esi
 004FAE66    call       004D8E7C
 004FAE6B    lea        eax,[ebp-10]
 004FAE6E    push       eax
 004FAE6F    lea        ecx,[ebp-2C]
 004FAE72    mov        dl,27
 004FAE74    mov        eax,dword ptr [ebp-4]
 004FAE77    call       004D31AC
 004FAE7C    mov        eax,dword ptr [ebp-2C]
 004FAE7F    mov        dword ptr [ebp-28],eax
 004FAE82    mov        byte ptr [ebp-24],0B
 004FAE86    lea        ecx,[ebp-30]
 004FAE89    mov        dl,27
 004FAE8B    mov        eax,dword ptr [ebp-8]
 004FAE8E    call       004D31AC
 004FAE93    mov        eax,dword ptr [ebp-30]
 004FAE96    mov        dword ptr [ebp-20],eax
 004FAE99    mov        byte ptr [ebp-1C],0B
 004FAE9D    lea        ecx,[ebp-34]
 004FAEA0    mov        dl,27
 004FAEA2    mov        eax,dword ptr [ebp+0C]
 004FAEA5    call       004D31AC
 004FAEAA    mov        eax,dword ptr [ebp-34]
 004FAEAD    mov        dword ptr [ebp-18],eax
 004FAEB0    mov        byte ptr [ebp-14],0B
 004FAEB4    lea        edx,[ebp-28]
 004FAEB7    mov        ecx,2
 004FAEBC    mov        eax,4FB034; 'exec sp_jdbc_primarykey %s, %s, %s'
 004FAEC1    call       Format
 004FAEC6    mov        eax,dword ptr [ebp-10]
 004FAEC9    push       eax
 004FAECA    lea        edx,[ebp-38]
 004FAECD    mov        eax,esi
 004FAECF    call       004FCB6C
 004FAED4    mov        eax,dword ptr [ebp-38]
 004FAED7    lea        ecx,[ebp-0C]
 004FAEDA    pop        edx
 004FAEDB    mov        esi,dword ptr [eax]
 004FAEDD    call       dword ptr [esi+0C]
>004FAEE0    jmp        004FAFC4
 004FAEE5    mov        eax,dword ptr [ebx]
 004FAEE7    mov        edx,dword ptr [eax]
 004FAEE9    call       dword ptr [edx+1E4]
 004FAEEF    lea        ecx,[ebp-3C]
 004FAEF2    mov        edx,4FB060; 'TABLE_CAT'
 004FAEF7    mov        eax,dword ptr [ebp-0C]
 004FAEFA    mov        esi,dword ptr [eax]
 004FAEFC    call       dword ptr [esi+74]
 004FAEFF    mov        ecx,dword ptr [ebp-3C]
 004FAF02    mov        eax,dword ptr [ebx]
 004FAF04    mov        edx,4FB060; 'TABLE_CAT'
 004FAF09    mov        esi,dword ptr [eax]
 004FAF0B    call       dword ptr [esi+1A8]
 004FAF11    lea        ecx,[ebp-40]
 004FAF14    mov        edx,4FB074; 'TABLE_SCHEM'
 004FAF19    mov        eax,dword ptr [ebp-0C]
 004FAF1C    mov        esi,dword ptr [eax]
 004FAF1E    call       dword ptr [esi+74]
 004FAF21    mov        ecx,dword ptr [ebp-40]
 004FAF24    mov        eax,dword ptr [ebx]
 004FAF26    mov        edx,4FB074; 'TABLE_SCHEM'
 004FAF2B    mov        esi,dword ptr [eax]
 004FAF2D    call       dword ptr [esi+1A8]
 004FAF33    lea        ecx,[ebp-44]
 004FAF36    mov        edx,4FB088; 'TABLE_NAME'
 004FAF3B    mov        eax,dword ptr [ebp-0C]
 004FAF3E    mov        esi,dword ptr [eax]
 004FAF40    call       dword ptr [esi+74]
 004FAF43    mov        ecx,dword ptr [ebp-44]
 004FAF46    mov        eax,dword ptr [ebx]
 004FAF48    mov        edx,4FB088; 'TABLE_NAME'
 004FAF4D    mov        esi,dword ptr [eax]
 004FAF4F    call       dword ptr [esi+1A8]
 004FAF55    lea        ecx,[ebp-48]
 004FAF58    mov        edx,4FB09C; 'COLUMN_NAME'
 004FAF5D    mov        eax,dword ptr [ebp-0C]
 004FAF60    mov        esi,dword ptr [eax]
 004FAF62    call       dword ptr [esi+74]
 004FAF65    mov        ecx,dword ptr [ebp-48]
 004FAF68    mov        eax,dword ptr [ebx]
 004FAF6A    mov        edx,4FB09C; 'COLUMN_NAME'
 004FAF6F    mov        esi,dword ptr [eax]
 004FAF71    call       dword ptr [esi+1A8]
 004FAF77    mov        edx,4FB0B0; 'KEY_SEQ'
 004FAF7C    mov        eax,dword ptr [ebp-0C]
 004FAF7F    mov        ecx,dword ptr [eax]
 004FAF81    call       dword ptr [ecx+84]
 004FAF87    mov        ecx,eax
 004FAF89    mov        eax,dword ptr [ebx]
 004FAF8B    mov        edx,4FB0B0; 'KEY_SEQ'
 004FAF90    mov        esi,dword ptr [eax]
 004FAF92    call       dword ptr [esi+18C]
 004FAF98    lea        ecx,[ebp-4C]
 004FAF9B    mov        edx,4FB0C0; 'PK_NAME'
 004FAFA0    mov        eax,dword ptr [ebp-0C]
 004FAFA3    mov        esi,dword ptr [eax]
 004FAFA5    call       dword ptr [esi+74]
 004FAFA8    mov        ecx,dword ptr [ebp-4C]
 004FAFAB    mov        eax,dword ptr [ebx]
 004FAFAD    mov        edx,4FB0C0; 'PK_NAME'
 004FAFB2    mov        esi,dword ptr [eax]
 004FAFB4    call       dword ptr [esi+1A8]
 004FAFBA    mov        eax,dword ptr [ebx]
 004FAFBC    mov        edx,dword ptr [eax]
 004FAFBE    call       dword ptr [edx+1D0]
 004FAFC4    mov        eax,dword ptr [ebp-0C]
 004FAFC7    mov        edx,dword ptr [eax]
 004FAFC9    call       dword ptr [edx+0C]
 004FAFCC    test       al,al
<004FAFCE    jne        004FAEE5
 004FAFD4    mov        eax,dword ptr [ebp-0C]
 004FAFD7    mov        edx,dword ptr [eax]
 004FAFD9    call       dword ptr [edx+10]
 004FAFDC    xor        eax,eax
 004FAFDE    pop        edx
 004FAFDF    pop        ecx
 004FAFE0    pop        ecx
 004FAFE1    mov        dword ptr fs:[eax],edx
 004FAFE4    push       4FB023
 004FAFE9    lea        eax,[ebp-4C]
 004FAFEC    mov        edx,5
 004FAFF1    call       @LStrArrayClr
 004FAFF6    lea        eax,[ebp-38]
 004FAFF9    call       @IntfClear
 004FAFFE    lea        eax,[ebp-34]
 004FB001    mov        edx,3
 004FB006    call       @LStrArrayClr
 004FB00B    lea        eax,[ebp-10]
 004FB00E    call       @LStrClr
 004FB013    lea        eax,[ebp-0C]
 004FB016    call       @IntfClear
 004FB01B    ret
<004FB01C    jmp        @HandleFinally
<004FB021    jmp        004FAFE9
 004FB023    pop        esi
 004FB024    pop        ebx
 004FB025    mov        esp,ebp
 004FB027    pop        ebp
 004FB028    ret        8
*}
//end;

//004FB0C8
//procedure sub_004FB0C8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FB0C8    push       ebp
 004FB0C9    mov        ebp,esp
 004FB0CB    push       ecx
 004FB0CC    mov        ecx,0B
 004FB0D1    push       0
 004FB0D3    push       0
 004FB0D5    dec        ecx
<004FB0D6    jne        004FB0D1
 004FB0D8    push       ecx
 004FB0D9    xchg       ecx,dword ptr [ebp-4]
 004FB0DC    push       ebx
 004FB0DD    push       esi
 004FB0DE    mov        dword ptr [ebp-8],ecx
 004FB0E1    mov        dword ptr [ebp-4],edx
 004FB0E4    mov        esi,eax
 004FB0E6    mov        ebx,dword ptr [ebp+8]
 004FB0E9    xor        eax,eax
 004FB0EB    push       ebp
 004FB0EC    push       4FB3C6
 004FB0F1    push       dword ptr fs:[eax]
 004FB0F4    mov        dword ptr fs:[eax],esp
 004FB0F7    mov        ecx,ebx
 004FB0F9    mov        edx,dword ptr ds:[61B820]; ^gvar_0061DD64:TZMetadataColumnDefs
 004FB0FF    mov        edx,dword ptr [edx]
 004FB101    mov        eax,esi
 004FB103    call       004D8E7C
 004FB108    lea        eax,[ebp-10]
 004FB10B    push       eax
 004FB10C    lea        ecx,[ebp-2C]
 004FB10F    mov        dl,27
 004FB111    mov        eax,dword ptr [ebp-4]
 004FB114    call       004D31AC
 004FB119    mov        eax,dword ptr [ebp-2C]
 004FB11C    mov        dword ptr [ebp-28],eax
 004FB11F    mov        byte ptr [ebp-24],0B
 004FB123    lea        ecx,[ebp-30]
 004FB126    mov        dl,27
 004FB128    mov        eax,dword ptr [ebp-8]
 004FB12B    call       004D31AC
 004FB130    mov        eax,dword ptr [ebp-30]
 004FB133    mov        dword ptr [ebp-20],eax
 004FB136    mov        byte ptr [ebp-1C],0B
 004FB13A    lea        ecx,[ebp-34]
 004FB13D    mov        dl,27
 004FB13F    mov        eax,dword ptr [ebp+0C]
 004FB142    call       004D31AC
 004FB147    mov        eax,dword ptr [ebp-34]
 004FB14A    mov        dword ptr [ebp-18],eax
 004FB14D    mov        byte ptr [ebp-14],0B
 004FB151    lea        edx,[ebp-28]
 004FB154    mov        ecx,2
 004FB159    mov        eax,4FB3E0; 'exec sp_jdbc_importkey %s, %s, %s'
 004FB15E    call       Format
 004FB163    mov        eax,dword ptr [ebp-10]
 004FB166    push       eax
 004FB167    lea        edx,[ebp-38]
 004FB16A    mov        eax,esi
 004FB16C    call       004FCB6C
 004FB171    mov        eax,dword ptr [ebp-38]
 004FB174    lea        ecx,[ebp-0C]
 004FB177    pop        edx
 004FB178    mov        esi,dword ptr [eax]
 004FB17A    call       dword ptr [esi+0C]
>004FB17D    jmp        004FB36E
 004FB182    mov        eax,dword ptr [ebx]
 004FB184    mov        edx,dword ptr [eax]
 004FB186    call       dword ptr [edx+1E4]
 004FB18C    lea        ecx,[ebp-3C]
 004FB18F    mov        edx,4FB40C; 'PKTABLE_CAT'
 004FB194    mov        eax,dword ptr [ebp-0C]
 004FB197    mov        esi,dword ptr [eax]
 004FB199    call       dword ptr [esi+74]
 004FB19C    mov        ecx,dword ptr [ebp-3C]
 004FB19F    mov        eax,dword ptr [ebx]
 004FB1A1    mov        edx,4FB40C; 'PKTABLE_CAT'
 004FB1A6    mov        esi,dword ptr [eax]
 004FB1A8    call       dword ptr [esi+1A8]
 004FB1AE    lea        ecx,[ebp-40]
 004FB1B1    mov        edx,4FB420; 'PKTABLE_SCHEM'
 004FB1B6    mov        eax,dword ptr [ebp-0C]
 004FB1B9    mov        esi,dword ptr [eax]
 004FB1BB    call       dword ptr [esi+74]
 004FB1BE    mov        ecx,dword ptr [ebp-40]
 004FB1C1    mov        eax,dword ptr [ebx]
 004FB1C3    mov        edx,4FB420; 'PKTABLE_SCHEM'
 004FB1C8    mov        esi,dword ptr [eax]
 004FB1CA    call       dword ptr [esi+1A8]
 004FB1D0    lea        ecx,[ebp-44]
 004FB1D3    mov        edx,4FB438; 'PKTABLE_NAME'
 004FB1D8    mov        eax,dword ptr [ebp-0C]
 004FB1DB    mov        esi,dword ptr [eax]
 004FB1DD    call       dword ptr [esi+74]
 004FB1E0    mov        ecx,dword ptr [ebp-44]
 004FB1E3    mov        eax,dword ptr [ebx]
 004FB1E5    mov        edx,4FB438; 'PKTABLE_NAME'
 004FB1EA    mov        esi,dword ptr [eax]
 004FB1EC    call       dword ptr [esi+1A8]
 004FB1F2    lea        ecx,[ebp-48]
 004FB1F5    mov        edx,4FB450; 'PKCOLUMN_NAME'
 004FB1FA    mov        eax,dword ptr [ebp-0C]
 004FB1FD    mov        esi,dword ptr [eax]
 004FB1FF    call       dword ptr [esi+74]
 004FB202    mov        ecx,dword ptr [ebp-48]
 004FB205    mov        eax,dword ptr [ebx]
 004FB207    mov        edx,4FB450; 'PKCOLUMN_NAME'
 004FB20C    mov        esi,dword ptr [eax]
 004FB20E    call       dword ptr [esi+1A8]
 004FB214    lea        ecx,[ebp-4C]
 004FB217    mov        edx,4FB468; 'FKTABLE_CAT'
 004FB21C    mov        eax,dword ptr [ebp-0C]
 004FB21F    mov        esi,dword ptr [eax]
 004FB221    call       dword ptr [esi+74]
 004FB224    mov        ecx,dword ptr [ebp-4C]
 004FB227    mov        eax,dword ptr [ebx]
 004FB229    mov        edx,4FB468; 'FKTABLE_CAT'
 004FB22E    mov        esi,dword ptr [eax]
 004FB230    call       dword ptr [esi+1A8]
 004FB236    lea        ecx,[ebp-50]
 004FB239    mov        edx,4FB47C; 'FKTABLE_SCHEM'
 004FB23E    mov        eax,dword ptr [ebp-0C]
 004FB241    mov        esi,dword ptr [eax]
 004FB243    call       dword ptr [esi+74]
 004FB246    mov        ecx,dword ptr [ebp-50]
 004FB249    mov        eax,dword ptr [ebx]
 004FB24B    mov        edx,4FB47C; 'FKTABLE_SCHEM'
 004FB250    mov        esi,dword ptr [eax]
 004FB252    call       dword ptr [esi+1A8]
 004FB258    lea        ecx,[ebp-54]
 004FB25B    mov        edx,4FB494; 'FKTABLE_NAME'
 004FB260    mov        eax,dword ptr [ebp-0C]
 004FB263    mov        esi,dword ptr [eax]
 004FB265    call       dword ptr [esi+74]
 004FB268    mov        ecx,dword ptr [ebp-54]
 004FB26B    mov        eax,dword ptr [ebx]
 004FB26D    mov        edx,4FB494; 'FKTABLE_NAME'
 004FB272    mov        esi,dword ptr [eax]
 004FB274    call       dword ptr [esi+1A8]
 004FB27A    lea        ecx,[ebp-58]
 004FB27D    mov        edx,4FB4AC; 'FKCOLUMN_NAME'
 004FB282    mov        eax,dword ptr [ebp-0C]
 004FB285    mov        esi,dword ptr [eax]
 004FB287    call       dword ptr [esi+74]
 004FB28A    mov        ecx,dword ptr [ebp-58]
 004FB28D    mov        eax,dword ptr [ebx]
 004FB28F    mov        edx,4FB4AC; 'FKCOLUMN_NAME'
 004FB294    mov        esi,dword ptr [eax]
 004FB296    call       dword ptr [esi+1A8]
 004FB29C    mov        edx,4FB4C4; 'KEY_SEQ'
 004FB2A1    mov        eax,dword ptr [ebp-0C]
 004FB2A4    mov        ecx,dword ptr [eax]
 004FB2A6    call       dword ptr [ecx+84]
 004FB2AC    mov        ecx,eax
 004FB2AE    mov        eax,dword ptr [ebx]
 004FB2B0    mov        edx,4FB4C4; 'KEY_SEQ'
 004FB2B5    mov        esi,dword ptr [eax]
 004FB2B7    call       dword ptr [esi+18C]
 004FB2BD    mov        edx,4FB4D4; 'UPDATE_RULE'
 004FB2C2    mov        eax,dword ptr [ebp-0C]
 004FB2C5    mov        ecx,dword ptr [eax]
 004FB2C7    call       dword ptr [ecx+84]
 004FB2CD    mov        ecx,eax
 004FB2CF    mov        eax,dword ptr [ebx]
 004FB2D1    mov        edx,4FB4D4; 'UPDATE_RULE'
 004FB2D6    mov        esi,dword ptr [eax]
 004FB2D8    call       dword ptr [esi+18C]
 004FB2DE    mov        edx,4FB4E8; 'DELETE_RULE'
 004FB2E3    mov        eax,dword ptr [ebp-0C]
 004FB2E6    mov        ecx,dword ptr [eax]
 004FB2E8    call       dword ptr [ecx+84]
 004FB2EE    mov        ecx,eax
 004FB2F0    mov        eax,dword ptr [ebx]
 004FB2F2    mov        edx,4FB4E8; 'DELETE_RULE'
 004FB2F7    mov        esi,dword ptr [eax]
 004FB2F9    call       dword ptr [esi+18C]
 004FB2FF    lea        ecx,[ebp-5C]
 004FB302    mov        edx,4FB4FC; 'FK_NAME'
 004FB307    mov        eax,dword ptr [ebp-0C]
 004FB30A    mov        esi,dword ptr [eax]
 004FB30C    call       dword ptr [esi+74]
 004FB30F    mov        ecx,dword ptr [ebp-5C]
 004FB312    mov        eax,dword ptr [ebx]
 004FB314    mov        edx,4FB4FC; 'FK_NAME'
 004FB319    mov        esi,dword ptr [eax]
 004FB31B    call       dword ptr [esi+1A8]
 004FB321    lea        ecx,[ebp-60]
 004FB324    mov        edx,4FB50C; 'PK_NAME'
 004FB329    mov        eax,dword ptr [ebp-0C]
 004FB32C    mov        esi,dword ptr [eax]
 004FB32E    call       dword ptr [esi+74]
 004FB331    mov        ecx,dword ptr [ebp-60]
 004FB334    mov        eax,dword ptr [ebx]
 004FB336    mov        edx,4FB50C; 'PK_NAME'
 004FB33B    mov        esi,dword ptr [eax]
 004FB33D    call       dword ptr [esi+1A8]
 004FB343    mov        edx,4FB51C; 'DEFERRABILITY'
 004FB348    mov        eax,dword ptr [ebp-0C]
 004FB34B    mov        ecx,dword ptr [eax]
 004FB34D    call       dword ptr [ecx+88]
 004FB353    mov        ecx,eax
 004FB355    mov        eax,dword ptr [ebx]
 004FB357    mov        edx,4FB51C; 'DEFERRABILITY'
 004FB35C    mov        esi,dword ptr [eax]
 004FB35E    call       dword ptr [esi+190]
 004FB364    mov        eax,dword ptr [ebx]
 004FB366    mov        edx,dword ptr [eax]
 004FB368    call       dword ptr [edx+1D0]
 004FB36E    mov        eax,dword ptr [ebp-0C]
 004FB371    mov        edx,dword ptr [eax]
 004FB373    call       dword ptr [edx+0C]
 004FB376    test       al,al
<004FB378    jne        004FB182
 004FB37E    mov        eax,dword ptr [ebp-0C]
 004FB381    mov        edx,dword ptr [eax]
 004FB383    call       dword ptr [edx+10]
 004FB386    xor        eax,eax
 004FB388    pop        edx
 004FB389    pop        ecx
 004FB38A    pop        ecx
 004FB38B    mov        dword ptr fs:[eax],edx
 004FB38E    push       4FB3CD
 004FB393    lea        eax,[ebp-60]
 004FB396    mov        edx,0A
 004FB39B    call       @LStrArrayClr
 004FB3A0    lea        eax,[ebp-38]
 004FB3A3    call       @IntfClear
 004FB3A8    lea        eax,[ebp-34]
 004FB3AB    mov        edx,3
 004FB3B0    call       @LStrArrayClr
 004FB3B5    lea        eax,[ebp-10]
 004FB3B8    call       @LStrClr
 004FB3BD    lea        eax,[ebp-0C]
 004FB3C0    call       @IntfClear
 004FB3C5    ret
<004FB3C6    jmp        @HandleFinally
<004FB3CB    jmp        004FB393
 004FB3CD    pop        esi
 004FB3CE    pop        ebx
 004FB3CF    mov        esp,ebp
 004FB3D1    pop        ebp
 004FB3D2    ret        8
*}
//end;

//004FB52C
//procedure sub_004FB52C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FB52C    push       ebp
 004FB52D    mov        ebp,esp
 004FB52F    push       ecx
 004FB530    mov        ecx,0B
 004FB535    push       0
 004FB537    push       0
 004FB539    dec        ecx
<004FB53A    jne        004FB535
 004FB53C    push       ecx
 004FB53D    xchg       ecx,dword ptr [ebp-4]
 004FB540    push       ebx
 004FB541    push       esi
 004FB542    mov        dword ptr [ebp-8],ecx
 004FB545    mov        dword ptr [ebp-4],edx
 004FB548    mov        esi,eax
 004FB54A    mov        ebx,dword ptr [ebp+8]
 004FB54D    xor        eax,eax
 004FB54F    push       ebp
 004FB550    push       4FB82A
 004FB555    push       dword ptr fs:[eax]
 004FB558    mov        dword ptr fs:[eax],esp
 004FB55B    mov        ecx,ebx
 004FB55D    mov        edx,dword ptr ds:[61B150]; ^gvar_0061DD68:TZMetadataColumnDefs
 004FB563    mov        edx,dword ptr [edx]
 004FB565    mov        eax,esi
 004FB567    call       004D8E7C
 004FB56C    lea        eax,[ebp-10]
 004FB56F    push       eax
 004FB570    lea        ecx,[ebp-2C]
 004FB573    mov        dl,27
 004FB575    mov        eax,dword ptr [ebp-4]
 004FB578    call       004D31AC
 004FB57D    mov        eax,dword ptr [ebp-2C]
 004FB580    mov        dword ptr [ebp-28],eax
 004FB583    mov        byte ptr [ebp-24],0B
 004FB587    lea        ecx,[ebp-30]
 004FB58A    mov        dl,27
 004FB58C    mov        eax,dword ptr [ebp-8]
 004FB58F    call       004D31AC
 004FB594    mov        eax,dword ptr [ebp-30]
 004FB597    mov        dword ptr [ebp-20],eax
 004FB59A    mov        byte ptr [ebp-1C],0B
 004FB59E    lea        ecx,[ebp-34]
 004FB5A1    mov        dl,27
 004FB5A3    mov        eax,dword ptr [ebp+0C]
 004FB5A6    call       004D31AC
 004FB5AB    mov        eax,dword ptr [ebp-34]
 004FB5AE    mov        dword ptr [ebp-18],eax
 004FB5B1    mov        byte ptr [ebp-14],0B
 004FB5B5    lea        edx,[ebp-28]
 004FB5B8    mov        ecx,2
 004FB5BD    mov        eax,4FB844; 'exec sp_jdbc_exportkey %s, %s, %s'
 004FB5C2    call       Format
 004FB5C7    mov        eax,dword ptr [ebp-10]
 004FB5CA    push       eax
 004FB5CB    lea        edx,[ebp-38]
 004FB5CE    mov        eax,esi
 004FB5D0    call       004FCB6C
 004FB5D5    mov        eax,dword ptr [ebp-38]
 004FB5D8    lea        ecx,[ebp-0C]
 004FB5DB    pop        edx
 004FB5DC    mov        esi,dword ptr [eax]
 004FB5DE    call       dword ptr [esi+0C]
>004FB5E1    jmp        004FB7D2
 004FB5E6    mov        eax,dword ptr [ebx]
 004FB5E8    mov        edx,dword ptr [eax]
 004FB5EA    call       dword ptr [edx+1E4]
 004FB5F0    lea        ecx,[ebp-3C]
 004FB5F3    mov        edx,4FB870; 'PKTABLE_CAT'
 004FB5F8    mov        eax,dword ptr [ebp-0C]
 004FB5FB    mov        esi,dword ptr [eax]
 004FB5FD    call       dword ptr [esi+74]
 004FB600    mov        ecx,dword ptr [ebp-3C]
 004FB603    mov        eax,dword ptr [ebx]
 004FB605    mov        edx,4FB870; 'PKTABLE_CAT'
 004FB60A    mov        esi,dword ptr [eax]
 004FB60C    call       dword ptr [esi+1A8]
 004FB612    lea        ecx,[ebp-40]
 004FB615    mov        edx,4FB884; 'PKTABLE_SCHEM'
 004FB61A    mov        eax,dword ptr [ebp-0C]
 004FB61D    mov        esi,dword ptr [eax]
 004FB61F    call       dword ptr [esi+74]
 004FB622    mov        ecx,dword ptr [ebp-40]
 004FB625    mov        eax,dword ptr [ebx]
 004FB627    mov        edx,4FB884; 'PKTABLE_SCHEM'
 004FB62C    mov        esi,dword ptr [eax]
 004FB62E    call       dword ptr [esi+1A8]
 004FB634    lea        ecx,[ebp-44]
 004FB637    mov        edx,4FB89C; 'PKTABLE_NAME'
 004FB63C    mov        eax,dword ptr [ebp-0C]
 004FB63F    mov        esi,dword ptr [eax]
 004FB641    call       dword ptr [esi+74]
 004FB644    mov        ecx,dword ptr [ebp-44]
 004FB647    mov        eax,dword ptr [ebx]
 004FB649    mov        edx,4FB89C; 'PKTABLE_NAME'
 004FB64E    mov        esi,dword ptr [eax]
 004FB650    call       dword ptr [esi+1A8]
 004FB656    lea        ecx,[ebp-48]
 004FB659    mov        edx,4FB8B4; 'PKCOLUMN_NAME'
 004FB65E    mov        eax,dword ptr [ebp-0C]
 004FB661    mov        esi,dword ptr [eax]
 004FB663    call       dword ptr [esi+74]
 004FB666    mov        ecx,dword ptr [ebp-48]
 004FB669    mov        eax,dword ptr [ebx]
 004FB66B    mov        edx,4FB8B4; 'PKCOLUMN_NAME'
 004FB670    mov        esi,dword ptr [eax]
 004FB672    call       dword ptr [esi+1A8]
 004FB678    lea        ecx,[ebp-4C]
 004FB67B    mov        edx,4FB8CC; 'FKTABLE_CAT'
 004FB680    mov        eax,dword ptr [ebp-0C]
 004FB683    mov        esi,dword ptr [eax]
 004FB685    call       dword ptr [esi+74]
 004FB688    mov        ecx,dword ptr [ebp-4C]
 004FB68B    mov        eax,dword ptr [ebx]
 004FB68D    mov        edx,4FB8CC; 'FKTABLE_CAT'
 004FB692    mov        esi,dword ptr [eax]
 004FB694    call       dword ptr [esi+1A8]
 004FB69A    lea        ecx,[ebp-50]
 004FB69D    mov        edx,4FB8E0; 'FKTABLE_SCHEM'
 004FB6A2    mov        eax,dword ptr [ebp-0C]
 004FB6A5    mov        esi,dword ptr [eax]
 004FB6A7    call       dword ptr [esi+74]
 004FB6AA    mov        ecx,dword ptr [ebp-50]
 004FB6AD    mov        eax,dword ptr [ebx]
 004FB6AF    mov        edx,4FB8E0; 'FKTABLE_SCHEM'
 004FB6B4    mov        esi,dword ptr [eax]
 004FB6B6    call       dword ptr [esi+1A8]
 004FB6BC    lea        ecx,[ebp-54]
 004FB6BF    mov        edx,4FB8F8; 'FKTABLE_NAME'
 004FB6C4    mov        eax,dword ptr [ebp-0C]
 004FB6C7    mov        esi,dword ptr [eax]
 004FB6C9    call       dword ptr [esi+74]
 004FB6CC    mov        ecx,dword ptr [ebp-54]
 004FB6CF    mov        eax,dword ptr [ebx]
 004FB6D1    mov        edx,4FB8F8; 'FKTABLE_NAME'
 004FB6D6    mov        esi,dword ptr [eax]
 004FB6D8    call       dword ptr [esi+1A8]
 004FB6DE    lea        ecx,[ebp-58]
 004FB6E1    mov        edx,4FB910; 'FKCOLUMN_NAME'
 004FB6E6    mov        eax,dword ptr [ebp-0C]
 004FB6E9    mov        esi,dword ptr [eax]
 004FB6EB    call       dword ptr [esi+74]
 004FB6EE    mov        ecx,dword ptr [ebp-58]
 004FB6F1    mov        eax,dword ptr [ebx]
 004FB6F3    mov        edx,4FB910; 'FKCOLUMN_NAME'
 004FB6F8    mov        esi,dword ptr [eax]
 004FB6FA    call       dword ptr [esi+1A8]
 004FB700    mov        edx,4FB928; 'KEY_SEQ'
 004FB705    mov        eax,dword ptr [ebp-0C]
 004FB708    mov        ecx,dword ptr [eax]
 004FB70A    call       dword ptr [ecx+84]
 004FB710    mov        ecx,eax
 004FB712    mov        eax,dword ptr [ebx]
 004FB714    mov        edx,4FB928; 'KEY_SEQ'
 004FB719    mov        esi,dword ptr [eax]
 004FB71B    call       dword ptr [esi+18C]
 004FB721    mov        edx,4FB938; 'UPDATE_RULE'
 004FB726    mov        eax,dword ptr [ebp-0C]
 004FB729    mov        ecx,dword ptr [eax]
 004FB72B    call       dword ptr [ecx+84]
 004FB731    mov        ecx,eax
 004FB733    mov        eax,dword ptr [ebx]
 004FB735    mov        edx,4FB938; 'UPDATE_RULE'
 004FB73A    mov        esi,dword ptr [eax]
 004FB73C    call       dword ptr [esi+18C]
 004FB742    mov        edx,4FB94C; 'DELETE_RULE'
 004FB747    mov        eax,dword ptr [ebp-0C]
 004FB74A    mov        ecx,dword ptr [eax]
 004FB74C    call       dword ptr [ecx+84]
 004FB752    mov        ecx,eax
 004FB754    mov        eax,dword ptr [ebx]
 004FB756    mov        edx,4FB94C; 'DELETE_RULE'
 004FB75B    mov        esi,dword ptr [eax]
 004FB75D    call       dword ptr [esi+18C]
 004FB763    lea        ecx,[ebp-5C]
 004FB766    mov        edx,4FB960; 'FK_NAME'
 004FB76B    mov        eax,dword ptr [ebp-0C]
 004FB76E    mov        esi,dword ptr [eax]
 004FB770    call       dword ptr [esi+74]
 004FB773    mov        ecx,dword ptr [ebp-5C]
 004FB776    mov        eax,dword ptr [ebx]
 004FB778    mov        edx,4FB960; 'FK_NAME'
 004FB77D    mov        esi,dword ptr [eax]
 004FB77F    call       dword ptr [esi+1A8]
 004FB785    lea        ecx,[ebp-60]
 004FB788    mov        edx,4FB970; 'PK_NAME'
 004FB78D    mov        eax,dword ptr [ebp-0C]
 004FB790    mov        esi,dword ptr [eax]
 004FB792    call       dword ptr [esi+74]
 004FB795    mov        ecx,dword ptr [ebp-60]
 004FB798    mov        eax,dword ptr [ebx]
 004FB79A    mov        edx,4FB970; 'PK_NAME'
 004FB79F    mov        esi,dword ptr [eax]
 004FB7A1    call       dword ptr [esi+1A8]
 004FB7A7    mov        edx,4FB980; 'DEFERRABILITY'
 004FB7AC    mov        eax,dword ptr [ebp-0C]
 004FB7AF    mov        ecx,dword ptr [eax]
 004FB7B1    call       dword ptr [ecx+88]
 004FB7B7    mov        ecx,eax
 004FB7B9    mov        eax,dword ptr [ebx]
 004FB7BB    mov        edx,4FB980; 'DEFERRABILITY'
 004FB7C0    mov        esi,dword ptr [eax]
 004FB7C2    call       dword ptr [esi+190]
 004FB7C8    mov        eax,dword ptr [ebx]
 004FB7CA    mov        edx,dword ptr [eax]
 004FB7CC    call       dword ptr [edx+1D0]
 004FB7D2    mov        eax,dword ptr [ebp-0C]
 004FB7D5    mov        edx,dword ptr [eax]
 004FB7D7    call       dword ptr [edx+0C]
 004FB7DA    test       al,al
<004FB7DC    jne        004FB5E6
 004FB7E2    mov        eax,dword ptr [ebp-0C]
 004FB7E5    mov        edx,dword ptr [eax]
 004FB7E7    call       dword ptr [edx+10]
 004FB7EA    xor        eax,eax
 004FB7EC    pop        edx
 004FB7ED    pop        ecx
 004FB7EE    pop        ecx
 004FB7EF    mov        dword ptr fs:[eax],edx
 004FB7F2    push       4FB831
 004FB7F7    lea        eax,[ebp-60]
 004FB7FA    mov        edx,0A
 004FB7FF    call       @LStrArrayClr
 004FB804    lea        eax,[ebp-38]
 004FB807    call       @IntfClear
 004FB80C    lea        eax,[ebp-34]
 004FB80F    mov        edx,3
 004FB814    call       @LStrArrayClr
 004FB819    lea        eax,[ebp-10]
 004FB81C    call       @LStrClr
 004FB821    lea        eax,[ebp-0C]
 004FB824    call       @IntfClear
 004FB829    ret
<004FB82A    jmp        @HandleFinally
<004FB82F    jmp        004FB7F7
 004FB831    pop        esi
 004FB832    pop        ebx
 004FB833    mov        esp,ebp
 004FB835    pop        ebp
 004FB836    ret        8
*}
//end;

//004FB990
//procedure sub_004FB990(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FB990    push       ebp
 004FB991    mov        ebp,esp
 004FB993    push       ecx
 004FB994    mov        ecx,10
 004FB999    push       0
 004FB99B    push       0
 004FB99D    dec        ecx
<004FB99E    jne        004FB999
 004FB9A0    xchg       ecx,dword ptr [ebp-4]
 004FB9A3    push       ebx
 004FB9A4    push       esi
 004FB9A5    mov        dword ptr [ebp-8],ecx
 004FB9A8    mov        dword ptr [ebp-4],edx
 004FB9AB    mov        esi,eax
 004FB9AD    mov        ebx,dword ptr [ebp+8]
 004FB9B0    xor        eax,eax
 004FB9B2    push       ebp
 004FB9B3    push       4FBCDB
 004FB9B8    push       dword ptr fs:[eax]
 004FB9BB    mov        dword ptr fs:[eax],esp
 004FB9BE    mov        ecx,ebx
 004FB9C0    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 004FB9C6    mov        edx,dword ptr [edx]
 004FB9C8    mov        eax,esi
 004FB9CA    call       004D8E7C
 004FB9CF    lea        eax,[ebp-10]
 004FB9D2    push       eax
 004FB9D3    lea        ecx,[ebp-44]
 004FB9D6    mov        dl,27
 004FB9D8    mov        eax,dword ptr [ebp-4]
 004FB9DB    call       004D31AC
 004FB9E0    mov        eax,dword ptr [ebp-44]
 004FB9E3    mov        dword ptr [ebp-40],eax
 004FB9E6    mov        byte ptr [ebp-3C],0B
 004FB9EA    lea        ecx,[ebp-48]
 004FB9ED    mov        dl,27
 004FB9EF    mov        eax,dword ptr [ebp-8]
 004FB9F2    call       004D31AC
 004FB9F7    mov        eax,dword ptr [ebp-48]
 004FB9FA    mov        dword ptr [ebp-38],eax
 004FB9FD    mov        byte ptr [ebp-34],0B
 004FBA01    lea        ecx,[ebp-4C]
 004FBA04    mov        dl,27
 004FBA06    mov        eax,dword ptr [ebp+18]
 004FBA09    call       004D31AC
 004FBA0E    mov        eax,dword ptr [ebp-4C]
 004FBA11    mov        dword ptr [ebp-30],eax
 004FBA14    mov        byte ptr [ebp-2C],0B
 004FBA18    lea        ecx,[ebp-50]
 004FBA1B    mov        dl,27
 004FBA1D    mov        eax,dword ptr [ebp+14]
 004FBA20    call       004D31AC
 004FBA25    mov        eax,dword ptr [ebp-50]
 004FBA28    mov        dword ptr [ebp-28],eax
 004FBA2B    mov        byte ptr [ebp-24],0B
 004FBA2F    lea        ecx,[ebp-54]
 004FBA32    mov        dl,27
 004FBA34    mov        eax,dword ptr [ebp+10]
 004FBA37    call       004D31AC
 004FBA3C    mov        eax,dword ptr [ebp-54]
 004FBA3F    mov        dword ptr [ebp-20],eax
 004FBA42    mov        byte ptr [ebp-1C],0B
 004FBA46    lea        ecx,[ebp-58]
 004FBA49    mov        dl,27
 004FBA4B    mov        eax,dword ptr [ebp+0C]
 004FBA4E    call       004D31AC
 004FBA53    mov        eax,dword ptr [ebp-58]
 004FBA56    mov        dword ptr [ebp-18],eax
 004FBA59    mov        byte ptr [ebp-14],0B
 004FBA5D    lea        edx,[ebp-40]
 004FBA60    mov        ecx,5
 004FBA65    mov        eax,4FBCF4; 'exec sp_jdbc_getcrossreferences %s, %s, %s, %s, %s, %s'
 004FBA6A    call       Format
 004FBA6F    mov        eax,dword ptr [ebp-10]
 004FBA72    push       eax
 004FBA73    lea        edx,[ebp-5C]
 004FBA76    mov        eax,esi
 004FBA78    call       004FCB6C
 004FBA7D    mov        eax,dword ptr [ebp-5C]
 004FBA80    lea        ecx,[ebp-0C]
 004FBA83    pop        edx
 004FBA84    mov        esi,dword ptr [eax]
 004FBA86    call       dword ptr [esi+0C]
>004FBA89    jmp        004FBC80
 004FBA8E    mov        eax,dword ptr [ebx]
 004FBA90    mov        edx,dword ptr [eax]
 004FBA92    call       dword ptr [edx+1E4]
 004FBA98    lea        ecx,[ebp-60]
 004FBA9B    mov        edx,4FBD34; 'PKTABLE_CAT'
 004FBAA0    mov        eax,dword ptr [ebp-0C]
 004FBAA3    mov        esi,dword ptr [eax]
 004FBAA5    call       dword ptr [esi+74]
 004FBAA8    mov        ecx,dword ptr [ebp-60]
 004FBAAB    mov        eax,dword ptr [ebx]
 004FBAAD    mov        edx,4FBD34; 'PKTABLE_CAT'
 004FBAB2    mov        esi,dword ptr [eax]
 004FBAB4    call       dword ptr [esi+1A8]
 004FBABA    lea        ecx,[ebp-64]
 004FBABD    mov        edx,4FBD48; 'PKTABLE_SCHEM'
 004FBAC2    mov        eax,dword ptr [ebp-0C]
 004FBAC5    mov        esi,dword ptr [eax]
 004FBAC7    call       dword ptr [esi+74]
 004FBACA    mov        ecx,dword ptr [ebp-64]
 004FBACD    mov        eax,dword ptr [ebx]
 004FBACF    mov        edx,4FBD48; 'PKTABLE_SCHEM'
 004FBAD4    mov        esi,dword ptr [eax]
 004FBAD6    call       dword ptr [esi+1A8]
 004FBADC    lea        ecx,[ebp-68]
 004FBADF    mov        edx,4FBD60; 'PKTABLE_NAME'
 004FBAE4    mov        eax,dword ptr [ebp-0C]
 004FBAE7    mov        esi,dword ptr [eax]
 004FBAE9    call       dword ptr [esi+74]
 004FBAEC    mov        ecx,dword ptr [ebp-68]
 004FBAEF    mov        eax,dword ptr [ebx]
 004FBAF1    mov        edx,4FBD60; 'PKTABLE_NAME'
 004FBAF6    mov        esi,dword ptr [eax]
 004FBAF8    call       dword ptr [esi+1A8]
 004FBAFE    lea        ecx,[ebp-6C]
 004FBB01    mov        edx,4FBD78; 'PKCOLUMN_NAME'
 004FBB06    mov        eax,dword ptr [ebp-0C]
 004FBB09    mov        esi,dword ptr [eax]
 004FBB0B    call       dword ptr [esi+74]
 004FBB0E    mov        ecx,dword ptr [ebp-6C]
 004FBB11    mov        eax,dword ptr [ebx]
 004FBB13    mov        edx,4FBD78; 'PKCOLUMN_NAME'
 004FBB18    mov        esi,dword ptr [eax]
 004FBB1A    call       dword ptr [esi+1A8]
 004FBB20    lea        ecx,[ebp-70]
 004FBB23    mov        edx,4FBD90; 'FKTABLE_CAT'
 004FBB28    mov        eax,dword ptr [ebp-0C]
 004FBB2B    mov        esi,dword ptr [eax]
 004FBB2D    call       dword ptr [esi+74]
 004FBB30    mov        ecx,dword ptr [ebp-70]
 004FBB33    mov        eax,dword ptr [ebx]
 004FBB35    mov        edx,4FBD90; 'FKTABLE_CAT'
 004FBB3A    mov        esi,dword ptr [eax]
 004FBB3C    call       dword ptr [esi+1A8]
 004FBB42    lea        ecx,[ebp-74]
 004FBB45    mov        edx,4FBDA4; 'FKTABLE_SCHEM'
 004FBB4A    mov        eax,dword ptr [ebp-0C]
 004FBB4D    mov        esi,dword ptr [eax]
 004FBB4F    call       dword ptr [esi+74]
 004FBB52    mov        ecx,dword ptr [ebp-74]
 004FBB55    mov        eax,dword ptr [ebx]
 004FBB57    mov        edx,4FBDA4; 'FKTABLE_SCHEM'
 004FBB5C    mov        esi,dword ptr [eax]
 004FBB5E    call       dword ptr [esi+1A8]
 004FBB64    lea        ecx,[ebp-78]
 004FBB67    mov        edx,4FBDBC; 'FKTABLE_NAME'
 004FBB6C    mov        eax,dword ptr [ebp-0C]
 004FBB6F    mov        esi,dword ptr [eax]
 004FBB71    call       dword ptr [esi+74]
 004FBB74    mov        ecx,dword ptr [ebp-78]
 004FBB77    mov        eax,dword ptr [ebx]
 004FBB79    mov        edx,4FBDBC; 'FKTABLE_NAME'
 004FBB7E    mov        esi,dword ptr [eax]
 004FBB80    call       dword ptr [esi+1A8]
 004FBB86    lea        ecx,[ebp-7C]
 004FBB89    mov        edx,4FBDD4; 'FKCOLUMN_NAME'
 004FBB8E    mov        eax,dword ptr [ebp-0C]
 004FBB91    mov        esi,dword ptr [eax]
 004FBB93    call       dword ptr [esi+74]
 004FBB96    mov        ecx,dword ptr [ebp-7C]
 004FBB99    mov        eax,dword ptr [ebx]
 004FBB9B    mov        edx,4FBDD4; 'FKCOLUMN_NAME'
 004FBBA0    mov        esi,dword ptr [eax]
 004FBBA2    call       dword ptr [esi+1A8]
 004FBBA8    mov        edx,4FBDEC; 'KEY_SEQ'
 004FBBAD    mov        eax,dword ptr [ebp-0C]
 004FBBB0    mov        ecx,dword ptr [eax]
 004FBBB2    call       dword ptr [ecx+84]
 004FBBB8    mov        ecx,eax
 004FBBBA    mov        eax,dword ptr [ebx]
 004FBBBC    mov        edx,4FBDEC; 'KEY_SEQ'
 004FBBC1    mov        esi,dword ptr [eax]
 004FBBC3    call       dword ptr [esi+18C]
 004FBBC9    mov        edx,4FBDFC; 'UPDATE_RULE'
 004FBBCE    mov        eax,dword ptr [ebp-0C]
 004FBBD1    mov        ecx,dword ptr [eax]
 004FBBD3    call       dword ptr [ecx+84]
 004FBBD9    mov        ecx,eax
 004FBBDB    mov        eax,dword ptr [ebx]
 004FBBDD    mov        edx,4FBDFC; 'UPDATE_RULE'
 004FBBE2    mov        esi,dword ptr [eax]
 004FBBE4    call       dword ptr [esi+18C]
 004FBBEA    mov        edx,4FBE10; 'DELETE_RULE'
 004FBBEF    mov        eax,dword ptr [ebp-0C]
 004FBBF2    mov        ecx,dword ptr [eax]
 004FBBF4    call       dword ptr [ecx+84]
 004FBBFA    mov        ecx,eax
 004FBBFC    mov        eax,dword ptr [ebx]
 004FBBFE    mov        edx,4FBE10; 'DELETE_RULE'
 004FBC03    mov        esi,dword ptr [eax]
 004FBC05    call       dword ptr [esi+18C]
 004FBC0B    lea        ecx,[ebp-80]
 004FBC0E    mov        edx,4FBE24; 'FK_NAME'
 004FBC13    mov        eax,dword ptr [ebp-0C]
 004FBC16    mov        esi,dword ptr [eax]
 004FBC18    call       dword ptr [esi+74]
 004FBC1B    mov        ecx,dword ptr [ebp-80]
 004FBC1E    mov        eax,dword ptr [ebx]
 004FBC20    mov        edx,4FBE24; 'FK_NAME'
 004FBC25    mov        esi,dword ptr [eax]
 004FBC27    call       dword ptr [esi+1A8]
 004FBC2D    lea        ecx,[ebp-84]
 004FBC33    mov        edx,4FBE34; 'PK_NAME'
 004FBC38    mov        eax,dword ptr [ebp-0C]
 004FBC3B    mov        esi,dword ptr [eax]
 004FBC3D    call       dword ptr [esi+74]
 004FBC40    mov        ecx,dword ptr [ebp-84]
 004FBC46    mov        eax,dword ptr [ebx]
 004FBC48    mov        edx,4FBE34; 'PK_NAME'
 004FBC4D    mov        esi,dword ptr [eax]
 004FBC4F    call       dword ptr [esi+1A8]
 004FBC55    mov        edx,4FBE44; 'DEFERRABILITY'
 004FBC5A    mov        eax,dword ptr [ebp-0C]
 004FBC5D    mov        ecx,dword ptr [eax]
 004FBC5F    call       dword ptr [ecx+88]
 004FBC65    mov        ecx,eax
 004FBC67    mov        eax,dword ptr [ebx]
 004FBC69    mov        edx,4FBE44; 'DEFERRABILITY'
 004FBC6E    mov        esi,dword ptr [eax]
 004FBC70    call       dword ptr [esi+190]
 004FBC76    mov        eax,dword ptr [ebx]
 004FBC78    mov        edx,dword ptr [eax]
 004FBC7A    call       dword ptr [edx+1D0]
 004FBC80    mov        eax,dword ptr [ebp-0C]
 004FBC83    mov        edx,dword ptr [eax]
 004FBC85    call       dword ptr [edx+0C]
 004FBC88    test       al,al
<004FBC8A    jne        004FBA8E
 004FBC90    mov        eax,dword ptr [ebp-0C]
 004FBC93    mov        edx,dword ptr [eax]
 004FBC95    call       dword ptr [edx+10]
 004FBC98    xor        eax,eax
 004FBC9A    pop        edx
 004FBC9B    pop        ecx
 004FBC9C    pop        ecx
 004FBC9D    mov        dword ptr fs:[eax],edx
 004FBCA0    push       4FBCE2
 004FBCA5    lea        eax,[ebp-84]
 004FBCAB    mov        edx,0A
 004FBCB0    call       @LStrArrayClr
 004FBCB5    lea        eax,[ebp-5C]
 004FBCB8    call       @IntfClear
 004FBCBD    lea        eax,[ebp-58]
 004FBCC0    mov        edx,6
 004FBCC5    call       @LStrArrayClr
 004FBCCA    lea        eax,[ebp-10]
 004FBCCD    call       @LStrClr
 004FBCD2    lea        eax,[ebp-0C]
 004FBCD5    call       @IntfClear
 004FBCDA    ret
<004FBCDB    jmp        @HandleFinally
<004FBCE0    jmp        004FBCA5
 004FBCE2    pop        esi
 004FBCE3    pop        ebx
 004FBCE4    mov        esp,ebp
 004FBCE6    pop        ebp
 004FBCE7    ret        14
*}
//end;

//004FBE54
//procedure sub_004FBE54(?:?);
//begin
{*
 004FBE54    push       ebp
 004FBE55    mov        ebp,esp
 004FBE57    xor        ecx,ecx
 004FBE59    push       ecx
 004FBE5A    push       ecx
 004FBE5B    push       ecx
 004FBE5C    push       ecx
 004FBE5D    push       ecx
 004FBE5E    push       ecx
 004FBE5F    push       ecx
 004FBE60    push       ebx
 004FBE61    push       esi
 004FBE62    mov        ebx,edx
 004FBE64    mov        esi,eax
 004FBE66    xor        eax,eax
 004FBE68    push       ebp
 004FBE69    push       4FC16D
 004FBE6E    push       dword ptr fs:[eax]
 004FBE71    mov        dword ptr fs:[eax],esp
 004FBE74    mov        ecx,ebx
 004FBE76    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 004FBE7C    mov        edx,dword ptr [edx]
 004FBE7E    mov        eax,esi
 004FBE80    call       004D8E7C
 004FBE85    lea        edx,[ebp-8]
 004FBE88    mov        eax,esi
 004FBE8A    call       004FCB6C
 004FBE8F    mov        eax,dword ptr [ebp-8]
 004FBE92    lea        ecx,[ebp-4]
 004FBE95    mov        edx,4FC184; 'exec sp_jdbc_datatype_info'
 004FBE9A    mov        esi,dword ptr [eax]
 004FBE9C    call       dword ptr [esi+0C]
>004FBE9F    jmp        004FC12A
 004FBEA4    mov        eax,dword ptr [ebx]
 004FBEA6    mov        edx,dword ptr [eax]
 004FBEA8    call       dword ptr [edx+1E4]
 004FBEAE    lea        ecx,[ebp-0C]
 004FBEB1    mov        edx,4FC1A8; 'TYPE_NAME'
 004FBEB6    mov        eax,dword ptr [ebp-4]
 004FBEB9    mov        esi,dword ptr [eax]
 004FBEBB    call       dword ptr [esi+74]
 004FBEBE    mov        ecx,dword ptr [ebp-0C]
 004FBEC1    mov        eax,dword ptr [ebx]
 004FBEC3    mov        edx,4FC1A8; 'TYPE_NAME'
 004FBEC8    mov        esi,dword ptr [eax]
 004FBECA    call       dword ptr [esi+1A8]
 004FBED0    mov        edx,4FC1BC; 'DATA_TYPE'
 004FBED5    mov        eax,dword ptr [ebp-4]
 004FBED8    mov        ecx,dword ptr [eax]
 004FBEDA    call       dword ptr [ecx+84]
 004FBEE0    call       004EF94C
 004FBEE5    xor        ecx,ecx
 004FBEE7    mov        cl,al
 004FBEE9    mov        eax,dword ptr [ebx]
 004FBEEB    mov        edx,4FC1BC; 'DATA_TYPE'
 004FBEF0    mov        esi,dword ptr [eax]
 004FBEF2    call       dword ptr [esi+18C]
 004FBEF8    mov        edx,4FC1D0; 'PRECISION'
 004FBEFD    mov        eax,dword ptr [ebp-4]
 004FBF00    mov        ecx,dword ptr [eax]
 004FBF02    call       dword ptr [ecx+88]
 004FBF08    mov        ecx,eax
 004FBF0A    mov        eax,dword ptr [ebx]
 004FBF0C    mov        edx,4FC1D0; 'PRECISION'
 004FBF11    mov        esi,dword ptr [eax]
 004FBF13    call       dword ptr [esi+190]
 004FBF19    lea        ecx,[ebp-10]
 004FBF1C    mov        edx,4FC1E4; 'LITERAL_PREFIX'
 004FBF21    mov        eax,dword ptr [ebp-4]
 004FBF24    mov        esi,dword ptr [eax]
 004FBF26    call       dword ptr [esi+74]
 004FBF29    mov        ecx,dword ptr [ebp-10]
 004FBF2C    mov        eax,dword ptr [ebx]
 004FBF2E    mov        edx,4FC1E4; 'LITERAL_PREFIX'
 004FBF33    mov        esi,dword ptr [eax]
 004FBF35    call       dword ptr [esi+1A8]
 004FBF3B    lea        ecx,[ebp-14]
 004FBF3E    mov        edx,4FC1FC; 'LITERAL_SUFFIX'
 004FBF43    mov        eax,dword ptr [ebp-4]
 004FBF46    mov        esi,dword ptr [eax]
 004FBF48    call       dword ptr [esi+74]
 004FBF4B    mov        ecx,dword ptr [ebp-14]
 004FBF4E    mov        eax,dword ptr [ebx]
 004FBF50    mov        edx,4FC1FC; 'LITERAL_SUFFIX'
 004FBF55    mov        esi,dword ptr [eax]
 004FBF57    call       dword ptr [esi+1A8]
 004FBF5D    lea        ecx,[ebp-18]
 004FBF60    mov        edx,4FC214; 'CREATE_PARAMS'
 004FBF65    mov        eax,dword ptr [ebp-4]
 004FBF68    mov        esi,dword ptr [eax]
 004FBF6A    call       dword ptr [esi+74]
 004FBF6D    mov        ecx,dword ptr [ebp-18]
 004FBF70    mov        eax,dword ptr [ebx]
 004FBF72    mov        edx,4FC214; 'CREATE_PARAMS'
 004FBF77    mov        esi,dword ptr [eax]
 004FBF79    call       dword ptr [esi+1A8]
 004FBF7F    mov        edx,4FC22C; 'NULLABLE'
 004FBF84    mov        eax,dword ptr [ebp-4]
 004FBF87    mov        ecx,dword ptr [eax]
 004FBF89    call       dword ptr [ecx+84]
 004FBF8F    mov        ecx,eax
 004FBF91    mov        eax,dword ptr [ebx]
 004FBF93    mov        edx,4FC22C; 'NULLABLE'
 004FBF98    mov        esi,dword ptr [eax]
 004FBF9A    call       dword ptr [esi+18C]
 004FBFA0    mov        edx,4FC240; 'CASE_SENSITIVE'
 004FBFA5    mov        eax,dword ptr [ebp-4]
 004FBFA8    mov        ecx,dword ptr [eax]
 004FBFAA    call       dword ptr [ecx+84]
 004FBFB0    cmp        ax,1
 004FBFB4    sete       cl
 004FBFB7    mov        eax,dword ptr [ebx]
 004FBFB9    mov        edx,4FC240; 'CASE_SENSITIVE'
 004FBFBE    mov        esi,dword ptr [eax]
 004FBFC0    call       dword ptr [esi+184]
 004FBFC6    mov        edx,4FC258; 'SEARCHABLE'
 004FBFCB    mov        eax,dword ptr [ebp-4]
 004FBFCE    mov        ecx,dword ptr [eax]
 004FBFD0    call       dword ptr [ecx+84]
 004FBFD6    mov        ecx,eax
 004FBFD8    mov        eax,dword ptr [ebx]
 004FBFDA    mov        edx,4FC258; 'SEARCHABLE'
 004FBFDF    mov        esi,dword ptr [eax]
 004FBFE1    call       dword ptr [esi+18C]
 004FBFE7    mov        edx,4FC26C; 'UNSIGNED_ATTRIBUTE'
 004FBFEC    mov        eax,dword ptr [ebp-4]
 004FBFEF    mov        ecx,dword ptr [eax]
 004FBFF1    call       dword ptr [ecx+84]
 004FBFF7    cmp        ax,1
 004FBFFB    sete       cl
 004FBFFE    mov        eax,dword ptr [ebx]
 004FC000    mov        edx,4FC26C; 'UNSIGNED_ATTRIBUTE'
 004FC005    mov        esi,dword ptr [eax]
 004FC007    call       dword ptr [esi+184]
 004FC00D    mov        edx,4FC288; 'FIXED_PREC_SCALE'
 004FC012    mov        eax,dword ptr [ebp-4]
 004FC015    mov        ecx,dword ptr [eax]
 004FC017    call       dword ptr [ecx+84]
 004FC01D    cmp        ax,1
 004FC021    sete       cl
 004FC024    mov        eax,dword ptr [ebx]
 004FC026    mov        edx,4FC288; 'FIXED_PREC_SCALE'
 004FC02B    mov        esi,dword ptr [eax]
 004FC02D    call       dword ptr [esi+184]
 004FC033    mov        edx,4FC2A4; 'AUTO_INCREMENT'
 004FC038    mov        eax,dword ptr [ebp-4]
 004FC03B    mov        ecx,dword ptr [eax]
 004FC03D    call       dword ptr [ecx+84]
 004FC043    cmp        ax,1
 004FC047    sete       cl
 004FC04A    mov        eax,dword ptr [ebx]
 004FC04C    mov        edx,4FC2A4; 'AUTO_INCREMENT'
 004FC051    mov        esi,dword ptr [eax]
 004FC053    call       dword ptr [esi+184]
 004FC059    lea        ecx,[ebp-1C]
 004FC05C    mov        edx,4FC2BC; 'LOCAL_TYPE_NAME'
 004FC061    mov        eax,dword ptr [ebp-4]
 004FC064    mov        esi,dword ptr [eax]
 004FC066    call       dword ptr [esi+74]
 004FC069    mov        ecx,dword ptr [ebp-1C]
 004FC06C    mov        eax,dword ptr [ebx]
 004FC06E    mov        edx,4FC2BC; 'LOCAL_TYPE_NAME'
 004FC073    mov        esi,dword ptr [eax]
 004FC075    call       dword ptr [esi+1A8]
 004FC07B    mov        edx,4FC2D4; 'MINIMUM_SCALE'
 004FC080    mov        eax,dword ptr [ebp-4]
 004FC083    mov        ecx,dword ptr [eax]
 004FC085    call       dword ptr [ecx+84]
 004FC08B    mov        ecx,eax
 004FC08D    mov        eax,dword ptr [ebx]
 004FC08F    mov        edx,4FC2D4; 'MINIMUM_SCALE'
 004FC094    mov        esi,dword ptr [eax]
 004FC096    call       dword ptr [esi+18C]
 004FC09C    mov        edx,4FC2EC; 'MAXIMUM_SCALE'
 004FC0A1    mov        eax,dword ptr [ebp-4]
 004FC0A4    mov        ecx,dword ptr [eax]
 004FC0A6    call       dword ptr [ecx+84]
 004FC0AC    mov        ecx,eax
 004FC0AE    mov        eax,dword ptr [ebx]
 004FC0B0    mov        edx,4FC2EC; 'MAXIMUM_SCALE'
 004FC0B5    mov        esi,dword ptr [eax]
 004FC0B7    call       dword ptr [esi+18C]
 004FC0BD    mov        edx,4FC304; 'SQL_DATA_TYPE'
 004FC0C2    mov        eax,dword ptr [ebp-4]
 004FC0C5    mov        ecx,dword ptr [eax]
 004FC0C7    call       dword ptr [ecx+84]
 004FC0CD    mov        ecx,eax
 004FC0CF    mov        eax,dword ptr [ebx]
 004FC0D1    mov        edx,4FC304; 'SQL_DATA_TYPE'
 004FC0D6    mov        esi,dword ptr [eax]
 004FC0D8    call       dword ptr [esi+18C]
 004FC0DE    mov        edx,4FC31C; 'SQL_DATETIME_SUB'
 004FC0E3    mov        eax,dword ptr [ebp-4]
 004FC0E6    mov        ecx,dword ptr [eax]
 004FC0E8    call       dword ptr [ecx+84]
 004FC0EE    mov        ecx,eax
 004FC0F0    mov        eax,dword ptr [ebx]
 004FC0F2    mov        edx,4FC31C; 'SQL_DATETIME_SUB'
 004FC0F7    mov        esi,dword ptr [eax]
 004FC0F9    call       dword ptr [esi+18C]
 004FC0FF    mov        edx,4FC338; 'NUM_PREC_RADIX'
 004FC104    mov        eax,dword ptr [ebp-4]
 004FC107    mov        ecx,dword ptr [eax]
 004FC109    call       dword ptr [ecx+84]
 004FC10F    mov        ecx,eax
 004FC111    mov        eax,dword ptr [ebx]
 004FC113    mov        edx,4FC338; 'NUM_PREC_RADIX'
 004FC118    mov        esi,dword ptr [eax]
 004FC11A    call       dword ptr [esi+18C]
 004FC120    mov        eax,dword ptr [ebx]
 004FC122    mov        edx,dword ptr [eax]
 004FC124    call       dword ptr [edx+1D0]
 004FC12A    mov        eax,dword ptr [ebp-4]
 004FC12D    mov        edx,dword ptr [eax]
 004FC12F    call       dword ptr [edx+0C]
 004FC132    test       al,al
<004FC134    jne        004FBEA4
 004FC13A    mov        eax,dword ptr [ebp-4]
 004FC13D    mov        edx,dword ptr [eax]
 004FC13F    call       dword ptr [edx+10]
 004FC142    xor        eax,eax
 004FC144    pop        edx
 004FC145    pop        ecx
 004FC146    pop        ecx
 004FC147    mov        dword ptr fs:[eax],edx
 004FC14A    push       4FC174
 004FC14F    lea        eax,[ebp-1C]
 004FC152    mov        edx,5
 004FC157    call       @LStrArrayClr
 004FC15C    lea        eax,[ebp-8]
 004FC15F    call       @IntfClear
 004FC164    lea        eax,[ebp-4]
 004FC167    call       @IntfClear
 004FC16C    ret
<004FC16D    jmp        @HandleFinally
<004FC172    jmp        004FC14F
 004FC174    pop        esi
 004FC175    pop        ebx
 004FC176    mov        esp,ebp
 004FC178    pop        ebp
 004FC179    ret
*}
//end;

//004FC348
//procedure sub_004FC348(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FC348    push       ebp
 004FC349    mov        ebp,esp
 004FC34B    push       ecx
 004FC34C    mov        ecx,0D
 004FC351    push       0
 004FC353    push       0
 004FC355    dec        ecx
<004FC356    jne        004FC351
 004FC358    push       ecx
 004FC359    xchg       ecx,dword ptr [ebp-4]
 004FC35C    push       ebx
 004FC35D    push       esi
 004FC35E    mov        dword ptr [ebp-8],ecx
 004FC361    mov        dword ptr [ebp-4],edx
 004FC364    mov        esi,eax
 004FC366    mov        ebx,dword ptr [ebp+8]
 004FC369    xor        eax,eax
 004FC36B    push       ebp
 004FC36C    push       4FC68D
 004FC371    push       dword ptr fs:[eax]
 004FC374    mov        dword ptr fs:[eax],esp
 004FC377    mov        ecx,ebx
 004FC379    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 004FC37F    mov        edx,dword ptr [edx]
 004FC381    mov        eax,esi
 004FC383    call       004D8E7C
 004FC388    cmp        byte ptr [ebp+10],0
>004FC38C    je         004FC39D
 004FC38E    lea        eax,[ebp-0C]
 004FC391    mov        edx,4FC6A4; ''1''
 004FC396    call       @LStrLAsg
>004FC39B    jmp        004FC3AA
 004FC39D    lea        eax,[ebp-0C]
 004FC3A0    mov        edx,4FC6B0; ''0''
 004FC3A5    call       @LStrLAsg
 004FC3AA    cmp        byte ptr [ebp+0C],0
>004FC3AE    je         004FC3BF
 004FC3B0    lea        eax,[ebp-10]
 004FC3B3    mov        edx,4FC6A4; ''1''
 004FC3B8    call       @LStrLAsg
>004FC3BD    jmp        004FC3CC
 004FC3BF    lea        eax,[ebp-10]
 004FC3C2    mov        edx,4FC6B0; ''0''
 004FC3C7    call       @LStrLAsg
 004FC3CC    lea        eax,[ebp-18]
 004FC3CF    push       eax
 004FC3D0    lea        ecx,[ebp-44]
 004FC3D3    mov        dl,27
 004FC3D5    mov        eax,dword ptr [ebp-4]
 004FC3D8    call       004D31AC
 004FC3DD    mov        eax,dword ptr [ebp-44]
 004FC3E0    mov        dword ptr [ebp-40],eax
 004FC3E3    mov        byte ptr [ebp-3C],0B
 004FC3E7    lea        ecx,[ebp-48]
 004FC3EA    mov        dl,27
 004FC3EC    mov        eax,dword ptr [ebp-8]
 004FC3EF    call       004D31AC
 004FC3F4    mov        eax,dword ptr [ebp-48]
 004FC3F7    mov        dword ptr [ebp-38],eax
 004FC3FA    mov        byte ptr [ebp-34],0B
 004FC3FE    lea        ecx,[ebp-4C]
 004FC401    mov        dl,27
 004FC403    mov        eax,dword ptr [ebp+14]
 004FC406    call       004D31AC
 004FC40B    mov        eax,dword ptr [ebp-4C]
 004FC40E    mov        dword ptr [ebp-30],eax
 004FC411    mov        byte ptr [ebp-2C],0B
 004FC415    mov        eax,dword ptr [ebp-0C]
 004FC418    mov        dword ptr [ebp-28],eax
 004FC41B    mov        byte ptr [ebp-24],0B
 004FC41F    mov        eax,dword ptr [ebp-10]
 004FC422    mov        dword ptr [ebp-20],eax
 004FC425    mov        byte ptr [ebp-1C],0B
 004FC429    lea        edx,[ebp-40]
 004FC42C    mov        ecx,4
 004FC431    mov        eax,4FC6BC; 'exec sp_jdbc_getindexinfo %s, %s, %s, %s, %s'
 004FC436    call       Format
 004FC43B    mov        eax,dword ptr [ebp-18]
 004FC43E    push       eax
 004FC43F    lea        edx,[ebp-50]
 004FC442    mov        eax,esi
 004FC444    call       004FCB6C
 004FC449    mov        eax,dword ptr [ebp-50]
 004FC44C    lea        ecx,[ebp-14]
 004FC44F    pop        edx
 004FC450    mov        esi,dword ptr [eax]
 004FC452    call       dword ptr [esi+0C]
>004FC455    jmp        004FC628
 004FC45A    mov        eax,dword ptr [ebx]
 004FC45C    mov        edx,dword ptr [eax]
 004FC45E    call       dword ptr [edx+1E4]
 004FC464    lea        ecx,[ebp-54]
 004FC467    mov        edx,4FC6F4; 'TABLE_CAT'
 004FC46C    mov        eax,dword ptr [ebp-14]
 004FC46F    mov        esi,dword ptr [eax]
 004FC471    call       dword ptr [esi+74]
 004FC474    mov        ecx,dword ptr [ebp-54]
 004FC477    mov        eax,dword ptr [ebx]
 004FC479    mov        edx,4FC6F4; 'TABLE_CAT'
 004FC47E    mov        esi,dword ptr [eax]
 004FC480    call       dword ptr [esi+1A8]
 004FC486    lea        ecx,[ebp-58]
 004FC489    mov        edx,4FC708; 'TABLE_SCHEM'
 004FC48E    mov        eax,dword ptr [ebp-14]
 004FC491    mov        esi,dword ptr [eax]
 004FC493    call       dword ptr [esi+74]
 004FC496    mov        ecx,dword ptr [ebp-58]
 004FC499    mov        eax,dword ptr [ebx]
 004FC49B    mov        edx,4FC708; 'TABLE_SCHEM'
 004FC4A0    mov        esi,dword ptr [eax]
 004FC4A2    call       dword ptr [esi+1A8]
 004FC4A8    lea        ecx,[ebp-5C]
 004FC4AB    mov        edx,4FC71C; 'TABLE_NAME'
 004FC4B0    mov        eax,dword ptr [ebp-14]
 004FC4B3    mov        esi,dword ptr [eax]
 004FC4B5    call       dword ptr [esi+74]
 004FC4B8    mov        ecx,dword ptr [ebp-5C]
 004FC4BB    mov        eax,dword ptr [ebx]
 004FC4BD    mov        edx,4FC71C; 'TABLE_NAME'
 004FC4C2    mov        esi,dword ptr [eax]
 004FC4C4    call       dword ptr [esi+1A8]
 004FC4CA    mov        edx,4FC730; 'NON_UNIQUE'
 004FC4CF    mov        eax,dword ptr [ebp-14]
 004FC4D2    mov        ecx,dword ptr [eax]
 004FC4D4    call       dword ptr [ecx+84]
 004FC4DA    cmp        ax,1
 004FC4DE    sete       cl
 004FC4E1    mov        eax,dword ptr [ebx]
 004FC4E3    mov        edx,4FC730; 'NON_UNIQUE'
 004FC4E8    mov        esi,dword ptr [eax]
 004FC4EA    call       dword ptr [esi+184]
 004FC4F0    lea        ecx,[ebp-60]
 004FC4F3    mov        edx,4FC744; 'INDEX_QUALIFIER'
 004FC4F8    mov        eax,dword ptr [ebp-14]
 004FC4FB    mov        esi,dword ptr [eax]
 004FC4FD    call       dword ptr [esi+74]
 004FC500    mov        ecx,dword ptr [ebp-60]
 004FC503    mov        eax,dword ptr [ebx]
 004FC505    mov        edx,4FC744; 'INDEX_QUALIFIER'
 004FC50A    mov        esi,dword ptr [eax]
 004FC50C    call       dword ptr [esi+1A8]
 004FC512    lea        ecx,[ebp-64]
 004FC515    mov        edx,4FC75C; 'INDEX_NAME'
 004FC51A    mov        eax,dword ptr [ebp-14]
 004FC51D    mov        esi,dword ptr [eax]
 004FC51F    call       dword ptr [esi+74]
 004FC522    mov        ecx,dword ptr [ebp-64]
 004FC525    mov        eax,dword ptr [ebx]
 004FC527    mov        edx,4FC75C; 'INDEX_NAME'
 004FC52C    mov        esi,dword ptr [eax]
 004FC52E    call       dword ptr [esi+1A8]
 004FC534    mov        edx,4FC770; 'TYPE'
 004FC539    mov        eax,dword ptr [ebp-14]
 004FC53C    mov        ecx,dword ptr [eax]
 004FC53E    call       dword ptr [ecx+84]
 004FC544    mov        ecx,eax
 004FC546    mov        eax,dword ptr [ebx]
 004FC548    mov        edx,4FC770; 'TYPE'
 004FC54D    mov        esi,dword ptr [eax]
 004FC54F    call       dword ptr [esi+18C]
 004FC555    mov        edx,4FC780; 'ORDINAL_POSITION'
 004FC55A    mov        eax,dword ptr [ebp-14]
 004FC55D    mov        ecx,dword ptr [eax]
 004FC55F    call       dword ptr [ecx+84]
 004FC565    mov        ecx,eax
 004FC567    mov        eax,dword ptr [ebx]
 004FC569    mov        edx,4FC780; 'ORDINAL_POSITION'
 004FC56E    mov        esi,dword ptr [eax]
 004FC570    call       dword ptr [esi+18C]
 004FC576    lea        ecx,[ebp-68]
 004FC579    mov        edx,4FC79C; 'COLUMN_NAME'
 004FC57E    mov        eax,dword ptr [ebp-14]
 004FC581    mov        esi,dword ptr [eax]
 004FC583    call       dword ptr [esi+74]
 004FC586    mov        ecx,dword ptr [ebp-68]
 004FC589    mov        eax,dword ptr [ebx]
 004FC58B    mov        edx,4FC79C; 'COLUMN_NAME'
 004FC590    mov        esi,dword ptr [eax]
 004FC592    call       dword ptr [esi+1A8]
 004FC598    lea        ecx,[ebp-6C]
 004FC59B    mov        edx,4FC7B0; 'ASC_OR_DESC'
 004FC5A0    mov        eax,dword ptr [ebp-14]
 004FC5A3    mov        esi,dword ptr [eax]
 004FC5A5    call       dword ptr [esi+74]
 004FC5A8    mov        ecx,dword ptr [ebp-6C]
 004FC5AB    mov        eax,dword ptr [ebx]
 004FC5AD    mov        edx,4FC7B0; 'ASC_OR_DESC'
 004FC5B2    mov        esi,dword ptr [eax]
 004FC5B4    call       dword ptr [esi+1A8]
 004FC5BA    mov        edx,4FC7C4; 'CARDINALITY'
 004FC5BF    mov        eax,dword ptr [ebp-14]
 004FC5C2    mov        ecx,dword ptr [eax]
 004FC5C4    call       dword ptr [ecx+88]
 004FC5CA    mov        ecx,eax
 004FC5CC    mov        eax,dword ptr [ebx]
 004FC5CE    mov        edx,4FC7C4; 'CARDINALITY'
 004FC5D3    mov        esi,dword ptr [eax]
 004FC5D5    call       dword ptr [esi+190]
 004FC5DB    mov        edx,4FC7D8; 'PAGES'
 004FC5E0    mov        eax,dword ptr [ebp-14]
 004FC5E3    mov        ecx,dword ptr [eax]
 004FC5E5    call       dword ptr [ecx+88]
 004FC5EB    mov        ecx,eax
 004FC5ED    mov        eax,dword ptr [ebx]
 004FC5EF    mov        edx,4FC7D8; 'PAGES'
 004FC5F4    mov        esi,dword ptr [eax]
 004FC5F6    call       dword ptr [esi+190]
 004FC5FC    lea        ecx,[ebp-70]
 004FC5FF    mov        edx,4FC7E8; 'FILTER_CONDITION'
 004FC604    mov        eax,dword ptr [ebp-14]
 004FC607    mov        esi,dword ptr [eax]
 004FC609    call       dword ptr [esi+74]
 004FC60C    mov        ecx,dword ptr [ebp-70]
 004FC60F    mov        eax,dword ptr [ebx]
 004FC611    mov        edx,4FC7E8; 'FILTER_CONDITION'
 004FC616    mov        esi,dword ptr [eax]
 004FC618    call       dword ptr [esi+1A8]
 004FC61E    mov        eax,dword ptr [ebx]
 004FC620    mov        edx,dword ptr [eax]
 004FC622    call       dword ptr [edx+1D0]
 004FC628    mov        eax,dword ptr [ebp-14]
 004FC62B    mov        edx,dword ptr [eax]
 004FC62D    call       dword ptr [edx+0C]
 004FC630    test       al,al
<004FC632    jne        004FC45A
 004FC638    mov        eax,dword ptr [ebp-14]
 004FC63B    mov        edx,dword ptr [eax]
 004FC63D    call       dword ptr [edx+10]
 004FC640    xor        eax,eax
 004FC642    pop        edx
 004FC643    pop        ecx
 004FC644    pop        ecx
 004FC645    mov        dword ptr fs:[eax],edx
 004FC648    push       4FC694
 004FC64D    lea        eax,[ebp-70]
 004FC650    mov        edx,8
 004FC655    call       @LStrArrayClr
 004FC65A    lea        eax,[ebp-50]
 004FC65D    call       @IntfClear
 004FC662    lea        eax,[ebp-4C]
 004FC665    mov        edx,3
 004FC66A    call       @LStrArrayClr
 004FC66F    lea        eax,[ebp-18]
 004FC672    call       @LStrClr
 004FC677    lea        eax,[ebp-14]
 004FC67A    call       @IntfClear
 004FC67F    lea        eax,[ebp-10]
 004FC682    mov        edx,2
 004FC687    call       @LStrArrayClr
 004FC68C    ret
<004FC68D    jmp        @HandleFinally
<004FC692    jmp        004FC64D
 004FC694    pop        esi
 004FC695    pop        ebx
 004FC696    mov        esp,ebp
 004FC698    pop        ebp
 004FC699    ret        10
*}
//end;

//004FC7FC
//function sub_004FC7FC():?;
//begin
{*
 004FC7FC    mov        al,1
 004FC7FE    ret
*}
//end;

//004FC800
//function sub_004FC800():?;
//begin
{*
 004FC800    mov        al,1
 004FC802    ret
*}
//end;

//004FC804
//procedure sub_004FC804(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004FC804    push       ebp
 004FC805    mov        ebp,esp
 004FC807    push       ecx
 004FC808    mov        ecx,0C
 004FC80D    push       0
 004FC80F    push       0
 004FC811    dec        ecx
<004FC812    jne        004FC80D
 004FC814    push       ecx
 004FC815    xchg       ecx,dword ptr [ebp-4]
 004FC818    push       ebx
 004FC819    push       esi
 004FC81A    push       edi
 004FC81B    mov        dword ptr [ebp-0C],ecx
 004FC81E    mov        dword ptr [ebp-8],edx
 004FC821    mov        dword ptr [ebp-4],eax
 004FC824    mov        ebx,dword ptr [ebp+8]
 004FC827    xor        eax,eax
 004FC829    push       ebp
 004FC82A    push       4FCAA4
 004FC82F    push       dword ptr fs:[eax]
 004FC832    mov        dword ptr fs:[eax],esp
 004FC835    mov        ecx,ebx
 004FC837    mov        edx,dword ptr ds:[61BA60]; ^gvar_0061DD7C:TZMetadataColumnDefs
 004FC83D    mov        edx,dword ptr [edx]
 004FC83F    mov        eax,dword ptr [ebp-4]
 004FC842    call       004D8E7C
 004FC847    lea        eax,[ebp-10]
 004FC84A    call       @LStrClr
 004FC84F    mov        eax,dword ptr [ebp+0C]
 004FC852    call       @DynArrayLength
 004FC857    mov        esi,eax
 004FC859    sub        esi,1
>004FC85C    jno        004FC863
 004FC85E    call       @IntOver
 004FC863    test       esi,esi
>004FC865    jl         004FC8BB
 004FC867    inc        esi
 004FC868    xor        edi,edi
 004FC86A    mov        eax,dword ptr [ebp-10]
 004FC86D    call       @LStrLen
 004FC872    test       eax,eax
>004FC874    jle        004FC883
 004FC876    lea        eax,[ebp-10]
 004FC879    mov        edx,4FCABC; ','
 004FC87E    call       @LStrCat
 004FC883    mov        eax,dword ptr [ebp+0C]
 004FC886    test       eax,eax
>004FC888    je         004FC88F
 004FC88A    cmp        edi,dword ptr [eax-4]
>004FC88D    jb         004FC894
 004FC88F    call       @BoundErr
 004FC894    mov        eax,dword ptr [eax+edi*4]
 004FC897    lea        edx,[ebp-1C]
 004FC89A    call       IntToStr
 004FC89F    mov        eax,dword ptr [ebp-1C]
 004FC8A2    lea        ecx,[ebp-18]
 004FC8A5    mov        dl,27
 004FC8A7    call       AnsiQuotedStr
 004FC8AC    mov        edx,dword ptr [ebp-18]
 004FC8AF    lea        eax,[ebp-10]
 004FC8B2    call       @LStrCat
 004FC8B7    inc        edi
 004FC8B8    dec        esi
<004FC8B9    jne        004FC86A
 004FC8BB    lea        eax,[ebp-20]
 004FC8BE    push       eax
 004FC8BF    lea        ecx,[ebp-44]
 004FC8C2    mov        dl,27
 004FC8C4    mov        eax,dword ptr [ebp-8]
 004FC8C7    call       004D31AC
 004FC8CC    mov        eax,dword ptr [ebp-44]
 004FC8CF    mov        dword ptr [ebp-40],eax
 004FC8D2    mov        byte ptr [ebp-3C],0B
 004FC8D6    lea        eax,[ebp-48]
 004FC8D9    push       eax
 004FC8DA    mov        cl,27
 004FC8DC    mov        edx,4FCAC8; ''%''
 004FC8E1    mov        eax,dword ptr [ebp-0C]
 004FC8E4    call       004D3178
 004FC8E9    mov        eax,dword ptr [ebp-48]
 004FC8EC    mov        dword ptr [ebp-38],eax
 004FC8EF    mov        byte ptr [ebp-34],0B
 004FC8F3    lea        eax,[ebp-4C]
 004FC8F6    push       eax
 004FC8F7    mov        cl,27
 004FC8F9    mov        edx,4FCAC8; ''%''
 004FC8FE    mov        eax,dword ptr [ebp+10]
 004FC901    call       004D3178
 004FC906    mov        eax,dword ptr [ebp-4C]
 004FC909    mov        dword ptr [ebp-30],eax
 004FC90C    mov        byte ptr [ebp-2C],0B
 004FC910    lea        ecx,[ebp-50]
 004FC913    mov        dl,22
 004FC915    mov        eax,dword ptr [ebp-10]
 004FC918    call       004D31AC
 004FC91D    mov        eax,dword ptr [ebp-50]
 004FC920    mov        dword ptr [ebp-28],eax
 004FC923    mov        byte ptr [ebp-24],0B
 004FC927    lea        edx,[ebp-40]
 004FC92A    mov        ecx,3
 004FC92F    mov        eax,4FCAD4; 'exec sp_jdbc_getudts %s, %s, %s, %s'
 004FC934    call       Format
 004FC939    mov        eax,dword ptr [ebp-20]
 004FC93C    push       eax
 004FC93D    lea        edx,[ebp-54]
 004FC940    mov        eax,dword ptr [ebp-4]
 004FC943    call       004FCB6C
 004FC948    mov        eax,dword ptr [ebp-54]
 004FC94B    lea        ecx,[ebp-14]
 004FC94E    pop        edx
 004FC94F    mov        esi,dword ptr [eax]
 004FC951    call       dword ptr [esi+0C]
>004FC954    jmp        004FCA3F
 004FC959    mov        eax,dword ptr [ebx]
 004FC95B    mov        edx,dword ptr [eax]
 004FC95D    call       dword ptr [edx+1E4]
 004FC963    lea        ecx,[ebp-58]
 004FC966    mov        edx,4FCB00; 'TYPE_CAT'
 004FC96B    mov        eax,dword ptr [ebp-14]
 004FC96E    mov        esi,dword ptr [eax]
 004FC970    call       dword ptr [esi+74]
 004FC973    mov        ecx,dword ptr [ebp-58]
 004FC976    mov        eax,dword ptr [ebx]
 004FC978    mov        edx,4FCB00; 'TYPE_CAT'
 004FC97D    mov        esi,dword ptr [eax]
 004FC97F    call       dword ptr [esi+1A8]
 004FC985    lea        ecx,[ebp-5C]
 004FC988    mov        edx,4FCB14; 'TYPE_SCHEM'
 004FC98D    mov        eax,dword ptr [ebp-14]
 004FC990    mov        esi,dword ptr [eax]
 004FC992    call       dword ptr [esi+74]
 004FC995    mov        ecx,dword ptr [ebp-5C]
 004FC998    mov        eax,dword ptr [ebx]
 004FC99A    mov        edx,4FCB14; 'TYPE_SCHEM'
 004FC99F    mov        esi,dword ptr [eax]
 004FC9A1    call       dword ptr [esi+1A8]
 004FC9A7    lea        ecx,[ebp-60]
 004FC9AA    mov        edx,4FCB28; 'TYPE_NAME'
 004FC9AF    mov        eax,dword ptr [ebp-14]
 004FC9B2    mov        esi,dword ptr [eax]
 004FC9B4    call       dword ptr [esi+74]
 004FC9B7    mov        ecx,dword ptr [ebp-60]
 004FC9BA    mov        eax,dword ptr [ebx]
 004FC9BC    mov        edx,4FCB28; 'TYPE_NAME'
 004FC9C1    mov        esi,dword ptr [eax]
 004FC9C3    call       dword ptr [esi+1A8]
 004FC9C9    lea        ecx,[ebp-64]
 004FC9CC    mov        edx,4FCB3C; 'JAVA_CLASS'
 004FC9D1    mov        eax,dword ptr [ebp-14]
 004FC9D4    mov        esi,dword ptr [eax]
 004FC9D6    call       dword ptr [esi+74]
 004FC9D9    mov        ecx,dword ptr [ebp-64]
 004FC9DC    mov        eax,dword ptr [ebx]
 004FC9DE    mov        edx,4FCB3C; 'JAVA_CLASS'
 004FC9E3    mov        esi,dword ptr [eax]
 004FC9E5    call       dword ptr [esi+1A8]
 004FC9EB    mov        edx,4FCB50; 'DATA_TYPE'
 004FC9F0    mov        eax,dword ptr [ebp-14]
 004FC9F3    mov        ecx,dword ptr [eax]
 004FC9F5    call       dword ptr [ecx+84]
 004FC9FB    call       004EF94C
 004FCA00    xor        ecx,ecx
 004FCA02    mov        cl,al
 004FCA04    mov        eax,dword ptr [ebx]
 004FCA06    mov        edx,4FCB50; 'DATA_TYPE'
 004FCA0B    mov        esi,dword ptr [eax]
 004FCA0D    call       dword ptr [esi+18C]
 004FCA13    lea        ecx,[ebp-68]
 004FCA16    mov        edx,4FCB64; 'REMARKS'
 004FCA1B    mov        eax,dword ptr [ebp-14]
 004FCA1E    mov        esi,dword ptr [eax]
 004FCA20    call       dword ptr [esi+74]
 004FCA23    mov        ecx,dword ptr [ebp-68]
 004FCA26    mov        eax,dword ptr [ebx]
 004FCA28    mov        edx,4FCB64; 'REMARKS'
 004FCA2D    mov        esi,dword ptr [eax]
 004FCA2F    call       dword ptr [esi+1A8]
 004FCA35    mov        eax,dword ptr [ebx]
 004FCA37    mov        edx,dword ptr [eax]
 004FCA39    call       dword ptr [edx+1D0]
 004FCA3F    mov        eax,dword ptr [ebp-14]
 004FCA42    mov        edx,dword ptr [eax]
 004FCA44    call       dword ptr [edx+0C]
 004FCA47    test       al,al
<004FCA49    jne        004FC959
 004FCA4F    mov        eax,dword ptr [ebp-14]
 004FCA52    mov        edx,dword ptr [eax]
 004FCA54    call       dword ptr [edx+10]
 004FCA57    xor        eax,eax
 004FCA59    pop        edx
 004FCA5A    pop        ecx
 004FCA5B    pop        ecx
 004FCA5C    mov        dword ptr fs:[eax],edx
 004FCA5F    push       4FCAAB
 004FCA64    lea        eax,[ebp-68]
 004FCA67    mov        edx,5
 004FCA6C    call       @LStrArrayClr
 004FCA71    lea        eax,[ebp-54]
 004FCA74    call       @IntfClear
 004FCA79    lea        eax,[ebp-50]
 004FCA7C    mov        edx,4
 004FCA81    call       @LStrArrayClr
 004FCA86    lea        eax,[ebp-20]
 004FCA89    mov        edx,3
 004FCA8E    call       @LStrArrayClr
 004FCA93    lea        eax,[ebp-14]
 004FCA96    call       @IntfClear
 004FCA9B    lea        eax,[ebp-10]
 004FCA9E    call       @LStrClr
 004FCAA3    ret
<004FCAA4    jmp        @HandleFinally
<004FCAA9    jmp        004FCA64
 004FCAAB    pop        edi
 004FCAAC    pop        esi
 004FCAAD    pop        ebx
 004FCAAE    mov        esp,ebp
 004FCAB0    pop        ebp
 004FCAB1    ret        0C
*}
//end;

//004FCB6C
//procedure sub_004FCB6C(?:TZSybaseDatabaseMetadata; ?:?);
//begin
{*
 004FCB6C    push       ebp
 004FCB6D    mov        ebp,esp
 004FCB6F    push       0
 004FCB71    push       ebx
 004FCB72    push       esi
 004FCB73    mov        esi,edx
 004FCB75    mov        ebx,eax
 004FCB77    xor        eax,eax
 004FCB79    push       ebp
 004FCB7A    push       4FCBB2
 004FCB7F    push       dword ptr fs:[eax]
 004FCB82    mov        dword ptr fs:[eax],esp
 004FCB85    lea        edx,[ebp-4]
 004FCB88    mov        eax,ebx
 004FCB8A    mov        ecx,dword ptr [eax]
 004FCB8C    call       dword ptr [ecx+238]; TZSybaseDatabaseMetadata.sub_004D8E64
 004FCB92    mov        eax,dword ptr [ebp-4]
 004FCB95    mov        edx,esi
 004FCB97    mov        ecx,dword ptr [eax]
 004FCB99    call       dword ptr [ecx+0C]
 004FCB9C    xor        eax,eax
 004FCB9E    pop        edx
 004FCB9F    pop        ecx
 004FCBA0    pop        ecx
 004FCBA1    mov        dword ptr fs:[eax],edx
 004FCBA4    push       4FCBB9
 004FCBA9    lea        eax,[ebp-4]
 004FCBAC    call       @IntfClear
 004FCBB1    ret
<004FCBB2    jmp        @HandleFinally
<004FCBB7    jmp        004FCBA9
 004FCBB9    pop        esi
 004FCBBA    pop        ebx
 004FCBBB    pop        ecx
 004FCBBC    pop        ebp
 004FCBBD    ret
*}
//end;

Initialization
Finalization
//004FCBC0
{*
 004FCBC0    push       ebp
 004FCBC1    mov        ebp,esp
 004FCBC3    xor        eax,eax
 004FCBC5    push       ebp
 004FCBC6    push       4FCBFC
 004FCBCB    push       dword ptr fs:[eax]
 004FCBCE    mov        dword ptr fs:[eax],esp
 004FCBD1    inc        dword ptr ds:[61E2A4]
>004FCBD7    jne        004FCBEE
 004FCBD9    mov        eax,616024; gvar_00616024:array[3] of String
 004FCBDE    mov        ecx,3
 004FCBE3    mov        edx,dword ptr ds:[4010F8]; String
 004FCBE9    call       @FinalizeArray
 004FCBEE    xor        eax,eax
 004FCBF0    pop        edx
 004FCBF1    pop        ecx
 004FCBF2    pop        ecx
 004FCBF3    mov        dword ptr fs:[eax],edx
 004FCBF6    push       4FCC03
 004FCBFB    ret
<004FCBFC    jmp        @HandleFinally
<004FCC01    jmp        004FCBFB
 004FCC03    pop        ebp
 004FCC04    ret
*}
end.