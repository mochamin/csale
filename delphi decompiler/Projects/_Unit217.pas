{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit217;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZMsSqlDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    destructor Destroy; virtual;
    //procedure sub_004F47D8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F4B44(?:?); virtual;
    //procedure sub_004F4C84(?:?); virtual;
    //procedure sub_004F4DD8(?:?); virtual;
    //procedure sub_004F4E54(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F5B60(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F57FC(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F61F0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F64BC(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F64EC(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F651C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F6F38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F3FA4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F4250(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F5E6C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_004F6A30(?:?); virtual;
    //procedure sub_004F746C(?:?); virtual;
    //procedure sub_004F397C(?:?); virtual;
    //procedure sub_004F39A4(?:?); virtual;
    //procedure sub_004F39C8(?:?); virtual;
    //function sub_004F3A24():?; virtual;
    //function sub_004F3A2C():?; virtual;
    //function sub_004F3A30():?; virtual;
    //function sub_004F3A34():?; virtual;
    //function sub_004F3A38():?; virtual;
    //function sub_004F3A3C():?; virtual;
    //function sub_004F3A40():?; virtual;
    //function sub_004F3A44():?; virtual;
    //function sub_004F3A48():?; virtual;
    //function sub_004F3A4C():?; virtual;
    //function sub_004F3A50():?; virtual;
    //procedure sub_004F3A54(?:?); virtual;
    //procedure sub_004F3A78(?:?); virtual;
    //procedure sub_004F3A88(?:?); virtual;
    //procedure sub_004F3B24(?:?); virtual;
    //procedure sub_004F3BE8(?:?); virtual;
    //procedure sub_004F3D34(?:?); virtual;
    //procedure sub_004F3D90(?:?); virtual;
    //procedure sub_004F3DB4(?:?); virtual;
    //function sub_004F3DD8():?; virtual;
    //function sub_004F3DDC():?; virtual;
    //function sub_004F3DE0():?; virtual;
    //function sub_004F3DE4():?; virtual;
    //function sub_004F3DE8():?; virtual;
    //function sub_004F3DEC():?; virtual;
    //procedure sub_004F3DF0(?:?); virtual;
    //procedure sub_004F3E18(?:?); virtual;
    //procedure sub_004F3E44(?:?); virtual;
    //procedure sub_004F3E70(?:?); virtual;
    //function sub_004F3E94():?; virtual;
    //function sub_004F3E98():?; virtual;
    //function sub_004F3E9C():?; virtual;
    //function sub_004F3EA0():?; virtual;
    //function sub_004F3EA4():?; virtual;
    //function sub_004F3EA8():?; virtual;
    //function sub_004F3EAC():?; virtual;
    //function sub_004F3EB0():?; virtual;
    //function sub_004F3EB4():?; virtual;
    //function sub_004F3EB8():?; virtual;
    //function sub_004F3EBC():?; virtual;
    //function sub_004F3EC0():?; virtual;
    //function sub_004F3EC4():?; virtual;
    //function sub_004F3EC8():?; virtual;
    //function sub_004F3ECC():?; virtual;
    //function sub_004F3ED0():?; virtual;
    //function sub_004F3ED4():?; virtual;
    //function sub_004F3ED8():?; virtual;
    //function sub_004F3EDC():?; virtual;
    //function sub_004F3EE0():?; virtual;
    //function sub_004F3EE4():?; virtual;
    //function sub_004F3EE8():?; virtual;
    //function sub_004F3EEC():?; virtual;
    //function sub_004F3EF0():?; virtual;
    //function sub_004F3EF4():?; virtual;
    //function sub_004F3EF8():?; virtual;
    //function sub_004F3F00():?; virtual;
    //function sub_004F3F08():?; virtual;
    //function sub_004F3F10():?; virtual;
    //function sub_004F3F14():?; virtual;
    //function sub_004F3F1C():?; virtual;
    //function sub_004F3F20():?; virtual;
    //function sub_004F3F28():?; virtual;
    //function sub_004F3F30():?; virtual;
    //function sub_004F3F34():?; virtual;
    //function sub_004F3F3C():?; virtual;
    //function sub_004F3F44():?; virtual;
    //function sub_004F3F4C():?; virtual;
    //function sub_004F3F54():?; virtual;
    //function sub_004F3F5C():?; virtual;
    //function sub_004F3F64():?; virtual;
    //function sub_004F3F68():?; virtual;
    //function sub_004F3F6C():?; virtual;
    //function sub_004F3F70():?; virtual;
    //function sub_004F3F78():?; virtual;
    //function sub_004F3F80():?; virtual;
    //function sub_004F3F88():?; virtual;
    //function sub_004F3F8C():?; virtual;
    //function sub_004F3F90():?; virtual;
    //function sub_004F3F94():?; virtual;
    //function sub_004F3F98():?; virtual;
    //function sub_004F3F9C():?; virtual;
    //function sub_004F3FA0():?; virtual;
    //function sub_004F7464():?; virtual;
    //function sub_004F7468():?; virtual;
    //constructor Create(?:TZMsSqlDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004F3904
//constructor TZMsSqlDatabaseMetadata.Create(?:TZMsSqlDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004F3904    push       ebp
 004F3905    mov        ebp,esp
 004F3907    push       ebx
 004F3908    push       esi
 004F3909    test       dl,dl
>004F390B    je         004F3915
 004F390D    add        esp,0FFFFFFF0
 004F3910    call       @ClassCreate
 004F3915    mov        ebx,edx
 004F3917    mov        esi,eax
 004F3919    mov        eax,dword ptr [ebp+0C]
 004F391C    push       eax
 004F391D    mov        eax,dword ptr [ebp+8]
 004F3920    push       eax
 004F3921    test       ecx,ecx
>004F3923    je         004F3928
 004F3925    sub        ecx,0FFFFFFD0
 004F3928    xor        edx,edx
 004F392A    mov        eax,esi
 004F392C    call       004D8D74
 004F3931    mov        eax,esi
 004F3933    test       bl,bl
>004F3935    je         004F3946
 004F3937    call       @AfterConstruction
 004F393C    pop        dword ptr fs:[0]
 004F3943    add        esp,0C
 004F3946    mov        eax,esi
 004F3948    pop        esi
 004F3949    pop        ebx
 004F394A    pop        ebp
 004F394B    ret        8
*}
//end;

//004F3950
destructor TZMsSqlDatabaseMetadata.Destroy;
begin
{*
 004F3950    push       ebp
 004F3951    mov        ebp,esp
 004F3953    push       ebx
 004F3954    push       esi
 004F3955    call       @BeforeDestruction
 004F395A    mov        ebx,edx
 004F395C    mov        esi,eax
 004F395E    mov        edx,ebx
 004F3960    and        dl,0FC
 004F3963    mov        eax,esi
 004F3965    call       TZAbstractDatabaseMetadata.Destroy
 004F396A    test       bl,bl
>004F396C    jle        004F3975
 004F396E    mov        eax,esi
 004F3970    call       @ClassDestroy
 004F3975    pop        esi
 004F3976    pop        ebx
 004F3977    pop        ebp
 004F3978    ret
*}
end;

//004F397C
//procedure sub_004F397C(?:?);
//begin
{*
 004F397C    push       ebp
 004F397D    mov        ebp,esp
 004F397F    push       ebx
 004F3980    mov        ebx,edx
 004F3982    mov        eax,ebx
 004F3984    mov        edx,4F399C; 'MS SQL'
 004F3989    call       @LStrAsg
 004F398E    pop        ebx
 004F398F    pop        ebp
 004F3990    ret
*}
//end;

//004F39A4
//procedure sub_004F39A4(?:?);
//begin
{*
 004F39A4    push       ebp
 004F39A5    mov        ebp,esp
 004F39A7    push       ebx
 004F39A8    mov        ebx,edx
 004F39AA    mov        eax,ebx
 004F39AC    mov        edx,4F39C4; '7+'
 004F39B1    call       @LStrAsg
 004F39B6    pop        ebx
 004F39B7    pop        ebp
 004F39B8    ret
*}
//end;

//004F39C8
//procedure sub_004F39C8(?:?);
//begin
{*
 004F39C8    push       ebp
 004F39C9    mov        ebp,esp
 004F39CB    push       ebx
 004F39CC    mov        ebx,edx
 004F39CE    mov        eax,ebx
 004F39D0    mov        edx,4F39E8; 'Zeos Database Connectivity Driver for Microsoft SQL Server'
 004F39D5    call       @LStrAsg
 004F39DA    pop        ebx
 004F39DB    pop        ebp
 004F39DC    ret
*}
//end;

//004F3A24
//function sub_004F3A24():?;
//begin
{*
 004F3A24    mov        eax,1
 004F3A29    ret
*}
//end;

//004F3A2C
//function sub_004F3A2C():?;
//begin
{*
 004F3A2C    xor        eax,eax
 004F3A2E    ret
*}
//end;

//004F3A30
//function sub_004F3A30():?;
//begin
{*
 004F3A30    xor        eax,eax
 004F3A32    ret
*}
//end;

//004F3A34
//function sub_004F3A34():?;
//begin
{*
 004F3A34    xor        eax,eax
 004F3A36    ret
*}
//end;

//004F3A38
//function sub_004F3A38():?;
//begin
{*
 004F3A38    mov        al,1
 004F3A3A    ret
*}
//end;

//004F3A3C
//function sub_004F3A3C():?;
//begin
{*
 004F3A3C    mov        al,1
 004F3A3E    ret
*}
//end;

//004F3A40
//function sub_004F3A40():?;
//begin
{*
 004F3A40    mov        al,1
 004F3A42    ret
*}
//end;

//004F3A44
//function sub_004F3A44():?;
//begin
{*
 004F3A44    mov        al,1
 004F3A46    ret
*}
//end;

//004F3A48
//function sub_004F3A48():?;
//begin
{*
 004F3A48    mov        al,1
 004F3A4A    ret
*}
//end;

//004F3A4C
//function sub_004F3A4C():?;
//begin
{*
 004F3A4C    mov        al,1
 004F3A4E    ret
*}
//end;

//004F3A50
//function sub_004F3A50():?;
//begin
{*
 004F3A50    mov        al,1
 004F3A52    ret
*}
//end;

//004F3A54
//procedure sub_004F3A54(?:?);
//begin
{*
 004F3A54    push       ebp
 004F3A55    mov        ebp,esp
 004F3A57    push       ebx
 004F3A58    mov        ebx,edx
 004F3A5A    mov        eax,ebx
 004F3A5C    mov        edx,4F3A74; '\"'
 004F3A61    call       @LStrAsg
 004F3A66    pop        ebx
 004F3A67    pop        ebp
 004F3A68    ret
*}
//end;

//004F3A78
//procedure sub_004F3A78(?:?);
//begin
{*
 004F3A78    push       ebp
 004F3A79    mov        ebp,esp
 004F3A7B    push       ebx
 004F3A7C    mov        ebx,edx
 004F3A7E    mov        eax,ebx
 004F3A80    call       @LStrClr
 004F3A85    pop        ebx
 004F3A86    pop        ebp
 004F3A87    ret
*}
//end;

//004F3A88
//procedure sub_004F3A88(?:?);
//begin
{*
 004F3A88    push       ebp
 004F3A89    mov        ebp,esp
 004F3A8B    push       ebx
 004F3A8C    mov        ebx,edx
 004F3A8E    mov        eax,ebx
 004F3A90    mov        edx,4F3AA8; 'ABS,ACOS,ASIN,ATAN,ATN2,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,PI,POWER,RADIANS,RAND,ROUND,SIGN,SIN,SQUARE,SQRT,TAN'
 004F3A95    call       @LStrAsg
 004F3A9A    pop        ebx
 004F3A9B    pop        ebp
 004F3A9C    ret
*}
//end;

//004F3B24
//procedure sub_004F3B24(?:?);
//begin
{*
 004F3B24    push       ebp
 004F3B25    mov        ebp,esp
 004F3B27    push       ebx
 004F3B28    mov        ebx,edx
 004F3B2A    mov        eax,ebx
 004F3B2C    mov        edx,4F3B44; 'ASCII,CHAR,CHARINDEX,DIFFERENCE,LEFT,LEN,LOWER,LTRIM,NCHAR,PATINDEX,REPLACE,QUOTENAME,REPLICATE,REVERSE,RIGHT,RTRIM,SOUNDEX,SPACE,STR,STUFF,SUBSTRING,UNICODE,UPPER'
 004F3B31    call       @LStrAsg
 004F3B36    pop        ebx
 004F3B37    pop        ebp
 004F3B38    ret
*}
//end;

//004F3BE8
//procedure sub_004F3BE8(?:?);
//begin
{*
 004F3BE8    push       ebp
 004F3BE9    mov        ebp,esp
 004F3BEB    push       ebx
 004F3BEC    mov        ebx,edx
 004F3BEE    mov        eax,ebx
 004F3BF0    mov        edx,4F3C08; 'APP_NAME,CASE,CAST,CONVERT,COALESCE,CURRENT_TIMESTAMP,CURRENT_USER,DATALENGTH,@@ERROR,FORMATMESSAGE,GETANSINULL,HOST_ID,HOST_NAME,IDENT_INCR,IDENT_SEED,@@IDENTITY,IDENTITY,ISDATE,ISNULL,ISNUMERIC,NEWID,NULLIF,PARSENAME,PERMISSIONS,@@ROWCOUNT,SESSION_USER,STATS_DATE,SYSTEM_USER,@@TRANCOUNT,USER_NAME'
 004F3BF5    call       @LStrAsg
 004F3BFA    pop        ebx
 004F3BFB    pop        ebp
 004F3BFC    ret
*}
//end;

//004F3D34
//procedure sub_004F3D34(?:?);
//begin
{*
 004F3D34    push       ebp
 004F3D35    mov        ebp,esp
 004F3D37    push       ebx
 004F3D38    mov        ebx,edx
 004F3D3A    mov        eax,ebx
 004F3D3C    mov        edx,4F3D54; 'DATEADD,DATEDIFF,DATENAME,DATEPART,DAY,GETDATE,MONTH,YEAR'
 004F3D41    call       @LStrAsg
 004F3D46    pop        ebx
 004F3D47    pop        ebp
 004F3D48    ret
*}
//end;

//004F3D90
//procedure sub_004F3D90(?:?);
//begin
{*
 004F3D90    push       ebp
 004F3D91    mov        ebp,esp
 004F3D93    push       ebx
 004F3D94    mov        ebx,edx
 004F3D96    mov        eax,ebx
 004F3D98    mov        edx,4F3DB0; '/'
 004F3D9D    call       @LStrAsg
 004F3DA2    pop        ebx
 004F3DA3    pop        ebp
 004F3DA4    ret
*}
//end;

//004F3DB4
//procedure sub_004F3DB4(?:?);
//begin
{*
 004F3DB4    push       ebp
 004F3DB5    mov        ebp,esp
 004F3DB7    push       ebx
 004F3DB8    mov        ebx,edx
 004F3DBA    mov        eax,ebx
 004F3DBC    mov        edx,4F3DD4; '@$#'
 004F3DC1    call       @LStrAsg
 004F3DC6    pop        ebx
 004F3DC7    pop        ebp
 004F3DC8    ret
*}
//end;

//004F3DD8
//function sub_004F3DD8():?;
//begin
{*
 004F3DD8    mov        al,1
 004F3DDA    ret
*}
//end;

//004F3DDC
//function sub_004F3DDC():?;
//begin
{*
 004F3DDC    mov        al,1
 004F3DDE    ret
*}
//end;

//004F3DE0
//function sub_004F3DE0():?;
//begin
{*
 004F3DE0    mov        al,1
 004F3DE2    ret
*}
//end;

//004F3DE4
//function sub_004F3DE4():?;
//begin
{*
 004F3DE4    mov        al,1
 004F3DE6    ret
*}
//end;

//004F3DE8
//function sub_004F3DE8():?;
//begin
{*
 004F3DE8    mov        al,1
 004F3DEA    ret
*}
//end;

//004F3DEC
//function sub_004F3DEC():?;
//begin
{*
 004F3DEC    xor        eax,eax
 004F3DEE    ret
*}
//end;

//004F3DF0
//procedure sub_004F3DF0(?:?);
//begin
{*
 004F3DF0    push       ebp
 004F3DF1    mov        ebp,esp
 004F3DF3    push       ebx
 004F3DF4    mov        ebx,edx
 004F3DF6    mov        eax,ebx
 004F3DF8    mov        edx,4F3E10; 'owner'
 004F3DFD    call       @LStrAsg
 004F3E02    pop        ebx
 004F3E03    pop        ebp
 004F3E04    ret
*}
//end;

//004F3E18
//procedure sub_004F3E18(?:?);
//begin
{*
 004F3E18    push       ebp
 004F3E19    mov        ebp,esp
 004F3E1B    push       ebx
 004F3E1C    mov        ebx,edx
 004F3E1E    mov        eax,ebx
 004F3E20    mov        edx,4F3E38; 'procedure'
 004F3E25    call       @LStrAsg
 004F3E2A    pop        ebx
 004F3E2B    pop        ebp
 004F3E2C    ret
*}
//end;

//004F3E44
//procedure sub_004F3E44(?:?);
//begin
{*
 004F3E44    push       ebp
 004F3E45    mov        ebp,esp
 004F3E47    push       ebx
 004F3E48    mov        ebx,edx
 004F3E4A    mov        eax,ebx
 004F3E4C    mov        edx,4F3E64; 'database'
 004F3E51    call       @LStrAsg
 004F3E56    pop        ebx
 004F3E57    pop        ebp
 004F3E58    ret
*}
//end;

//004F3E70
//procedure sub_004F3E70(?:?);
//begin
{*
 004F3E70    push       ebp
 004F3E71    mov        ebp,esp
 004F3E73    push       ebx
 004F3E74    mov        ebx,edx
 004F3E76    mov        eax,ebx
 004F3E78    mov        edx,4F3E90; '.'
 004F3E7D    call       @LStrAsg
 004F3E82    pop        ebx
 004F3E83    pop        ebp
 004F3E84    ret
*}
//end;

//004F3E94
//function sub_004F3E94():?;
//begin
{*
 004F3E94    mov        al,1
 004F3E96    ret
*}
//end;

//004F3E98
//function sub_004F3E98():?;
//begin
{*
 004F3E98    mov        al,1
 004F3E9A    ret
*}
//end;

//004F3E9C
//function sub_004F3E9C():?;
//begin
{*
 004F3E9C    mov        al,1
 004F3E9E    ret
*}
//end;

//004F3EA0
//function sub_004F3EA0():?;
//begin
{*
 004F3EA0    mov        al,1
 004F3EA2    ret
*}
//end;

//004F3EA4
//function sub_004F3EA4():?;
//begin
{*
 004F3EA4    mov        al,1
 004F3EA6    ret
*}
//end;

//004F3EA8
//function sub_004F3EA8():?;
//begin
{*
 004F3EA8    mov        al,1
 004F3EAA    ret
*}
//end;

//004F3EAC
//function sub_004F3EAC():?;
//begin
{*
 004F3EAC    mov        al,1
 004F3EAE    ret
*}
//end;

//004F3EB0
//function sub_004F3EB0():?;
//begin
{*
 004F3EB0    mov        al,1
 004F3EB2    ret
*}
//end;

//004F3EB4
//function sub_004F3EB4():?;
//begin
{*
 004F3EB4    mov        al,1
 004F3EB6    ret
*}
//end;

//004F3EB8
//function sub_004F3EB8():?;
//begin
{*
 004F3EB8    mov        al,1
 004F3EBA    ret
*}
//end;

//004F3EBC
//function sub_004F3EBC():?;
//begin
{*
 004F3EBC    mov        al,1
 004F3EBE    ret
*}
//end;

//004F3EC0
//function sub_004F3EC0():?;
//begin
{*
 004F3EC0    mov        al,1
 004F3EC2    ret
*}
//end;

//004F3EC4
//function sub_004F3EC4():?;
//begin
{*
 004F3EC4    mov        al,1
 004F3EC6    ret
*}
//end;

//004F3EC8
//function sub_004F3EC8():?;
//begin
{*
 004F3EC8    mov        al,1
 004F3ECA    ret
*}
//end;

//004F3ECC
//function sub_004F3ECC():?;
//begin
{*
 004F3ECC    mov        al,1
 004F3ECE    ret
*}
//end;

//004F3ED0
//function sub_004F3ED0():?;
//begin
{*
 004F3ED0    mov        al,1
 004F3ED2    ret
*}
//end;

//004F3ED4
//function sub_004F3ED4():?;
//begin
{*
 004F3ED4    mov        al,1
 004F3ED6    ret
*}
//end;

//004F3ED8
//function sub_004F3ED8():?;
//begin
{*
 004F3ED8    mov        al,1
 004F3EDA    ret
*}
//end;

//004F3EDC
//function sub_004F3EDC():?;
//begin
{*
 004F3EDC    mov        al,1
 004F3EDE    ret
*}
//end;

//004F3EE0
//function sub_004F3EE0():?;
//begin
{*
 004F3EE0    mov        al,1
 004F3EE2    ret
*}
//end;

//004F3EE4
//function sub_004F3EE4():?;
//begin
{*
 004F3EE4    mov        al,1
 004F3EE6    ret
*}
//end;

//004F3EE8
//function sub_004F3EE8():?;
//begin
{*
 004F3EE8    mov        al,1
 004F3EEA    ret
*}
//end;

//004F3EEC
//function sub_004F3EEC():?;
//begin
{*
 004F3EEC    mov        al,1
 004F3EEE    ret
*}
//end;

//004F3EF0
//function sub_004F3EF0():?;
//begin
{*
 004F3EF0    xor        eax,eax
 004F3EF2    ret
*}
//end;

//004F3EF4
//function sub_004F3EF4():?;
//begin
{*
 004F3EF4    xor        eax,eax
 004F3EF6    ret
*}
//end;

//004F3EF8
//function sub_004F3EF8():?;
//begin
{*
 004F3EF8    mov        eax,3E80
 004F3EFD    ret
*}
//end;

//004F3F00
//function sub_004F3F00():?;
//begin
{*
 004F3F00    mov        eax,1F40
 004F3F05    ret
*}
//end;

//004F3F08
//function sub_004F3F08():?;
//begin
{*
 004F3F08    mov        eax,80
 004F3F0D    ret
*}
//end;

//004F3F10
//function sub_004F3F10():?;
//begin
{*
 004F3F10    xor        eax,eax
 004F3F12    ret
*}
//end;

//004F3F14
//function sub_004F3F14():?;
//begin
{*
 004F3F14    mov        eax,10
 004F3F19    ret
*}
//end;

//004F3F1C
//function sub_004F3F1C():?;
//begin
{*
 004F3F1C    xor        eax,eax
 004F3F1E    ret
*}
//end;

//004F3F20
//function sub_004F3F20():?;
//begin
{*
 004F3F20    mov        eax,1000
 004F3F25    ret
*}
//end;

//004F3F28
//function sub_004F3F28():?;
//begin
{*
 004F3F28    mov        eax,400
 004F3F2D    ret
*}
//end;

//004F3F30
//function sub_004F3F30():?;
//begin
{*
 004F3F30    xor        eax,eax
 004F3F32    ret
*}
//end;

//004F3F34
//function sub_004F3F34():?;
//begin
{*
 004F3F34    mov        eax,80
 004F3F39    ret
*}
//end;

//004F3F3C
//function sub_004F3F3C():?;
//begin
{*
 004F3F3C    mov        eax,384
 004F3F41    ret
*}
//end;

//004F3F44
//function sub_004F3F44():?;
//begin
{*
 004F3F44    mov        eax,80
 004F3F49    ret
*}
//end;

//004F3F4C
//function sub_004F3F4C():?;
//begin
{*
 004F3F4C    mov        eax,80
 004F3F51    ret
*}
//end;

//004F3F54
//function sub_004F3F54():?;
//begin
{*
 004F3F54    mov        eax,80
 004F3F59    ret
*}
//end;

//004F3F5C
//function sub_004F3F5C():?;
//begin
{*
 004F3F5C    mov        eax,1F7C
 004F3F61    ret
*}
//end;

//004F3F64
//function sub_004F3F64():?;
//begin
{*
 004F3F64    xor        eax,eax
 004F3F66    ret
*}
//end;

//004F3F68
//function sub_004F3F68():?;
//begin
{*
 004F3F68    xor        eax,eax
 004F3F6A    ret
*}
//end;

//004F3F6C
//function sub_004F3F6C():?;
//begin
{*
 004F3F6C    xor        eax,eax
 004F3F6E    ret
*}
//end;

//004F3F70
//function sub_004F3F70():?;
//begin
{*
 004F3F70    mov        eax,80
 004F3F75    ret
*}
//end;

//004F3F78
//function sub_004F3F78():?;
//begin
{*
 004F3F78    mov        eax,100
 004F3F7D    ret
*}
//end;

//004F3F80
//function sub_004F3F80():?;
//begin
{*
 004F3F80    mov        eax,80
 004F3F85    ret
*}
//end;

//004F3F88
//function sub_004F3F88():?;
//begin
{*
 004F3F88    mov        al,2
 004F3F8A    ret
*}
//end;

//004F3F8C
//function sub_004F3F8C():?;
//begin
{*
 004F3F8C    mov        al,1
 004F3F8E    ret
*}
//end;

//004F3F90
//function sub_004F3F90():?;
//begin
{*
 004F3F90    mov        al,1
 004F3F92    ret
*}
//end;

//004F3F94
//function sub_004F3F94():?;
//begin
{*
 004F3F94    mov        al,1
 004F3F96    ret
*}
//end;

//004F3F98
//function sub_004F3F98():?;
//begin
{*
 004F3F98    xor        eax,eax
 004F3F9A    ret
*}
//end;

//004F3F9C
//function sub_004F3F9C():?;
//begin
{*
 004F3F9C    xor        eax,eax
 004F3F9E    ret
*}
//end;

//004F3FA0
//function sub_004F3FA0():?;
//begin
{*
 004F3FA0    xor        eax,eax
 004F3FA2    ret
*}
//end;

//004F3FA4
//procedure sub_004F3FA4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F3FA4    push       ebp
 004F3FA5    mov        ebp,esp
 004F3FA7    push       ecx
 004F3FA8    mov        ecx,8
 004F3FAD    push       0
 004F3FAF    push       0
 004F3FB1    dec        ecx
<004F3FB2    jne        004F3FAD
 004F3FB4    push       ecx
 004F3FB5    xchg       ecx,dword ptr [ebp-4]
 004F3FB8    push       ebx
 004F3FB9    push       esi
 004F3FBA    mov        dword ptr [ebp-8],ecx
 004F3FBD    mov        dword ptr [ebp-4],edx
 004F3FC0    mov        esi,eax
 004F3FC2    mov        ebx,dword ptr [ebp+8]
 004F3FC5    xor        eax,eax
 004F3FC7    push       ebp
 004F3FC8    push       4F416D
 004F3FCD    push       dword ptr fs:[eax]
 004F3FD0    mov        dword ptr fs:[eax],esp
 004F3FD3    mov        ecx,ebx
 004F3FD5    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 004F3FDB    mov        edx,dword ptr [edx]
 004F3FDD    mov        eax,esi
 004F3FDF    call       004D8E7C
 004F3FE4    lea        eax,[ebp-10]
 004F3FE7    push       eax
 004F3FE8    lea        ecx,[ebp-2C]
 004F3FEB    mov        dl,27
 004F3FED    mov        eax,dword ptr [ebp+0C]
 004F3FF0    call       004D31AC
 004F3FF5    mov        eax,dword ptr [ebp-2C]
 004F3FF8    mov        dword ptr [ebp-28],eax
 004F3FFB    mov        byte ptr [ebp-24],0B
 004F3FFF    lea        ecx,[ebp-30]
 004F4002    mov        dl,27
 004F4004    mov        eax,dword ptr [ebp-8]
 004F4007    call       004D31AC
 004F400C    mov        eax,dword ptr [ebp-30]
 004F400F    mov        dword ptr [ebp-20],eax
 004F4012    mov        byte ptr [ebp-1C],0B
 004F4016    lea        ecx,[ebp-34]
 004F4019    mov        dl,27
 004F401B    mov        eax,dword ptr [ebp-4]
 004F401E    call       004D31AC
 004F4023    mov        eax,dword ptr [ebp-34]
 004F4026    mov        dword ptr [ebp-18],eax
 004F4029    mov        byte ptr [ebp-14],0B
 004F402D    lea        edx,[ebp-28]
 004F4030    mov        ecx,2
 004F4035    mov        eax,4F4184; 'exec sp_stored_procedures %s, %s, %s'
 004F403A    call       Format
 004F403F    mov        eax,dword ptr [ebp-10]
 004F4042    push       eax
 004F4043    lea        edx,[ebp-38]
 004F4046    mov        eax,esi
 004F4048    call       004F748C
 004F404D    mov        eax,dword ptr [ebp-38]
 004F4050    lea        ecx,[ebp-0C]
 004F4053    pop        edx
 004F4054    mov        esi,dword ptr [eax]
 004F4056    call       dword ptr [esi+0C]
>004F4059    jmp        004F410B
 004F405E    mov        eax,dword ptr [ebx]
 004F4060    mov        edx,dword ptr [eax]
 004F4062    call       dword ptr [edx+1E4]
 004F4068    lea        ecx,[ebp-3C]
 004F406B    mov        edx,4F41B4; 'PROCEDURE_QUALIFIER'
 004F4070    mov        eax,dword ptr [ebp-0C]
 004F4073    mov        esi,dword ptr [eax]
 004F4075    call       dword ptr [esi+74]
 004F4078    mov        ecx,dword ptr [ebp-3C]
 004F407B    mov        eax,dword ptr [ebx]
 004F407D    mov        edx,4F41D0; 'PROCEDURE_CAT'
 004F4082    mov        esi,dword ptr [eax]
 004F4084    call       dword ptr [esi+1A8]
 004F408A    lea        ecx,[ebp-40]
 004F408D    mov        edx,4F41E8; 'PROCEDURE_OWNER'
 004F4092    mov        eax,dword ptr [ebp-0C]
 004F4095    mov        esi,dword ptr [eax]
 004F4097    call       dword ptr [esi+74]
 004F409A    mov        ecx,dword ptr [ebp-40]
 004F409D    mov        eax,dword ptr [ebx]
 004F409F    mov        edx,4F4200; 'PROCEDURE_SCHEM'
 004F40A4    mov        esi,dword ptr [eax]
 004F40A6    call       dword ptr [esi+1A8]
 004F40AC    lea        ecx,[ebp-44]
 004F40AF    mov        edx,4F4218; 'PROCEDURE_NAME'
 004F40B4    mov        eax,dword ptr [ebp-0C]
 004F40B7    mov        esi,dword ptr [eax]
 004F40B9    call       dword ptr [esi+74]
 004F40BC    mov        ecx,dword ptr [ebp-44]
 004F40BF    mov        eax,dword ptr [ebx]
 004F40C1    mov        edx,4F4218; 'PROCEDURE_NAME'
 004F40C6    mov        esi,dword ptr [eax]
 004F40C8    call       dword ptr [esi+1A8]
 004F40CE    lea        ecx,[ebp-48]
 004F40D1    mov        edx,4F4230; 'REMARKS'
 004F40D6    mov        eax,dword ptr [ebp-0C]
 004F40D9    mov        esi,dword ptr [eax]
 004F40DB    call       dword ptr [esi+74]
 004F40DE    mov        ecx,dword ptr [ebp-48]
 004F40E1    mov        eax,dword ptr [ebx]
 004F40E3    mov        edx,4F4230; 'REMARKS'
 004F40E8    mov        esi,dword ptr [eax]
 004F40EA    call       dword ptr [esi+1A8]
 004F40F0    mov        eax,dword ptr [ebx]
 004F40F2    xor        ecx,ecx
 004F40F4    mov        edx,4F4240; 'PROCEDURE_TYPE'
 004F40F9    mov        esi,dword ptr [eax]
 004F40FB    call       dword ptr [esi+18C]
 004F4101    mov        eax,dword ptr [ebx]
 004F4103    mov        edx,dword ptr [eax]
 004F4105    call       dword ptr [edx+1D0]
 004F410B    mov        eax,dword ptr [ebp-0C]
 004F410E    mov        edx,dword ptr [eax]
 004F4110    call       dword ptr [edx+0C]
 004F4113    test       al,al
<004F4115    jne        004F405E
 004F411B    mov        eax,dword ptr [ebp-0C]
 004F411E    mov        edx,dword ptr [eax]
 004F4120    call       dword ptr [edx+10]
 004F4123    mov        eax,dword ptr [ebx]
 004F4125    mov        edx,dword ptr [eax]
 004F4127    call       dword ptr [edx+0E4]
 004F412D    xor        eax,eax
 004F412F    pop        edx
 004F4130    pop        ecx
 004F4131    pop        ecx
 004F4132    mov        dword ptr fs:[eax],edx
 004F4135    push       4F4174
 004F413A    lea        eax,[ebp-48]
 004F413D    mov        edx,4
 004F4142    call       @LStrArrayClr
 004F4147    lea        eax,[ebp-38]
 004F414A    call       @IntfClear
 004F414F    lea        eax,[ebp-34]
 004F4152    mov        edx,3
 004F4157    call       @LStrArrayClr
 004F415C    lea        eax,[ebp-10]
 004F415F    call       @LStrClr
 004F4164    lea        eax,[ebp-0C]
 004F4167    call       @IntfClear
 004F416C    ret
<004F416D    jmp        @HandleFinally
<004F4172    jmp        004F413A
 004F4174    pop        esi
 004F4175    pop        ebx
 004F4176    mov        esp,ebp
 004F4178    pop        ebp
 004F4179    ret        8
*}
//end;

//004F4250
//procedure sub_004F4250(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F4250    push       ebp
 004F4251    mov        ebp,esp
 004F4253    push       ecx
 004F4254    mov        ecx,0C
 004F4259    push       0
 004F425B    push       0
 004F425D    dec        ecx
<004F425E    jne        004F4259
 004F4260    xchg       ecx,dword ptr [ebp-4]
 004F4263    push       ebx
 004F4264    push       esi
 004F4265    mov        dword ptr [ebp-8],ecx
 004F4268    mov        dword ptr [ebp-4],edx
 004F426B    mov        esi,eax
 004F426D    mov        ebx,dword ptr [ebp+8]
 004F4270    xor        eax,eax
 004F4272    push       ebp
 004F4273    push       4F4636
 004F4278    push       dword ptr fs:[eax]
 004F427B    mov        dword ptr fs:[eax],esp
 004F427E    mov        ecx,ebx
 004F4280    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 004F4286    mov        edx,dword ptr [edx]
 004F4288    mov        eax,esi
 004F428A    call       004D8E7C
 004F428F    lea        eax,[ebp-10]
 004F4292    push       eax
 004F4293    lea        ecx,[ebp-34]
 004F4296    mov        dl,27
 004F4298    mov        eax,dword ptr [ebp+10]
 004F429B    call       004D31AC
 004F42A0    mov        eax,dword ptr [ebp-34]
 004F42A3    mov        dword ptr [ebp-30],eax
 004F42A6    mov        byte ptr [ebp-2C],0B
 004F42AA    lea        ecx,[ebp-38]
 004F42AD    mov        dl,27
 004F42AF    mov        eax,dword ptr [ebp-8]
 004F42B2    call       004D31AC
 004F42B7    mov        eax,dword ptr [ebp-38]
 004F42BA    mov        dword ptr [ebp-28],eax
 004F42BD    mov        byte ptr [ebp-24],0B
 004F42C1    lea        ecx,[ebp-3C]
 004F42C4    mov        dl,27
 004F42C6    mov        eax,dword ptr [ebp-4]
 004F42C9    call       004D31AC
 004F42CE    mov        eax,dword ptr [ebp-3C]
 004F42D1    mov        dword ptr [ebp-20],eax
 004F42D4    mov        byte ptr [ebp-1C],0B
 004F42D8    lea        ecx,[ebp-40]
 004F42DB    mov        dl,27
 004F42DD    mov        eax,dword ptr [ebp+0C]
 004F42E0    call       004D31AC
 004F42E5    mov        eax,dword ptr [ebp-40]
 004F42E8    mov        dword ptr [ebp-18],eax
 004F42EB    mov        byte ptr [ebp-14],0B
 004F42EF    lea        edx,[ebp-30]
 004F42F2    mov        ecx,3
 004F42F7    mov        eax,4F4650; 'exec sp_sproc_columns %s, %s, %s, %s'
 004F42FC    call       Format
 004F4301    mov        eax,dword ptr [ebp-10]
 004F4304    push       eax
 004F4305    lea        edx,[ebp-44]
 004F4308    mov        eax,esi
 004F430A    call       004F748C
 004F430F    mov        eax,dword ptr [ebp-44]
 004F4312    lea        ecx,[ebp-0C]
 004F4315    pop        edx
 004F4316    mov        esi,dword ptr [eax]
 004F4318    call       dword ptr [esi+0C]
>004F431B    jmp        004F45D4
 004F4320    mov        eax,dword ptr [ebx]
 004F4322    mov        edx,dword ptr [eax]
 004F4324    call       dword ptr [edx+1E4]
 004F432A    lea        ecx,[ebp-48]
 004F432D    mov        edx,4F4680; 'PROCEDURE_QUALIFIER'
 004F4332    mov        eax,dword ptr [ebp-0C]
 004F4335    mov        esi,dword ptr [eax]
 004F4337    call       dword ptr [esi+74]
 004F433A    mov        ecx,dword ptr [ebp-48]
 004F433D    mov        eax,dword ptr [ebx]
 004F433F    mov        edx,4F469C; 'PROCEDURE_CAT'
 004F4344    mov        esi,dword ptr [eax]
 004F4346    call       dword ptr [esi+1A8]
 004F434C    lea        ecx,[ebp-4C]
 004F434F    mov        edx,4F46B4; 'PROCEDURE_OWNER'
 004F4354    mov        eax,dword ptr [ebp-0C]
 004F4357    mov        esi,dword ptr [eax]
 004F4359    call       dword ptr [esi+74]
 004F435C    mov        ecx,dword ptr [ebp-4C]
 004F435F    mov        eax,dword ptr [ebx]
 004F4361    mov        edx,4F46CC; 'PROCEDURE_SCHEM'
 004F4366    mov        esi,dword ptr [eax]
 004F4368    call       dword ptr [esi+1A8]
 004F436E    lea        ecx,[ebp-50]
 004F4371    mov        edx,4F46E4; 'PROCEDURE_NAME'
 004F4376    mov        eax,dword ptr [ebp-0C]
 004F4379    mov        esi,dword ptr [eax]
 004F437B    call       dword ptr [esi+74]
 004F437E    mov        ecx,dword ptr [ebp-50]
 004F4381    mov        eax,dword ptr [ebx]
 004F4383    mov        edx,4F46E4; 'PROCEDURE_NAME'
 004F4388    mov        esi,dword ptr [eax]
 004F438A    call       dword ptr [esi+1A8]
 004F4390    lea        ecx,[ebp-54]
 004F4393    mov        edx,4F46FC; 'COLUMN_NAME'
 004F4398    mov        eax,dword ptr [ebp-0C]
 004F439B    mov        esi,dword ptr [eax]
 004F439D    call       dword ptr [esi+74]
 004F43A0    mov        ecx,dword ptr [ebp-54]
 004F43A3    mov        eax,dword ptr [ebx]
 004F43A5    mov        edx,4F46FC; 'COLUMN_NAME'
 004F43AA    mov        esi,dword ptr [eax]
 004F43AC    call       dword ptr [esi+1A8]
 004F43B2    mov        edx,4F4710; 'COLUMN_TYPE'
 004F43B7    mov        eax,dword ptr [ebp-0C]
 004F43BA    mov        ecx,dword ptr [eax]
 004F43BC    call       dword ptr [ecx+84]
 004F43C2    movsx      eax,ax
 004F43C5    cmp        eax,5
>004F43C8    ja         004F4454
 004F43CE    jmp        dword ptr [eax*4+4F43D5]
 004F43CE    dd         4F4454
 004F43CE    dd         4F43ED
 004F43CE    dd         4F4402
 004F43CE    dd         4F4417
 004F43CE    dd         4F442A
 004F43CE    dd         4F443F
 004F43ED    mov        eax,dword ptr [ebx]
 004F43EF    mov        cx,1
 004F43F3    mov        edx,4F4710; 'COLUMN_TYPE'
 004F43F8    mov        esi,dword ptr [eax]
 004F43FA    call       dword ptr [esi+18C]
>004F4400    jmp        004F4465
 004F4402    mov        eax,dword ptr [ebx]
 004F4404    mov        cx,3
 004F4408    mov        edx,4F4710; 'COLUMN_TYPE'
 004F440D    mov        esi,dword ptr [eax]
 004F440F    call       dword ptr [esi+18C]
>004F4415    jmp        004F4465
 004F4417    mov        eax,dword ptr [ebx]
 004F4419    xor        ecx,ecx
 004F441B    mov        edx,4F4710; 'COLUMN_TYPE'
 004F4420    mov        esi,dword ptr [eax]
 004F4422    call       dword ptr [esi+18C]
>004F4428    jmp        004F4465
 004F442A    mov        eax,dword ptr [ebx]
 004F442C    mov        cx,3
 004F4430    mov        edx,4F4710; 'COLUMN_TYPE'
 004F4435    mov        esi,dword ptr [eax]
 004F4437    call       dword ptr [esi+18C]
>004F443D    jmp        004F4465
 004F443F    mov        eax,dword ptr [ebx]
 004F4441    mov        cx,4
 004F4445    mov        edx,4F4710; 'COLUMN_TYPE'
 004F444A    mov        esi,dword ptr [eax]
 004F444C    call       dword ptr [esi+18C]
>004F4452    jmp        004F4465
 004F4454    mov        eax,dword ptr [ebx]
 004F4456    xor        ecx,ecx
 004F4458    mov        edx,4F4710; 'COLUMN_TYPE'
 004F445D    mov        esi,dword ptr [eax]
 004F445F    call       dword ptr [esi+18C]
 004F4465    mov        edx,4F4724; 'DATA_TYPE'
 004F446A    mov        eax,dword ptr [ebp-0C]
 004F446D    mov        ecx,dword ptr [eax]
 004F446F    call       dword ptr [ecx+84]
 004F4475    call       004EF94C
 004F447A    xor        ecx,ecx
 004F447C    mov        cl,al
 004F447E    mov        eax,dword ptr [ebx]
 004F4480    mov        edx,4F4724; 'DATA_TYPE'
 004F4485    mov        esi,dword ptr [eax]
 004F4487    call       dword ptr [esi+18C]
 004F448D    lea        ecx,[ebp-58]
 004F4490    mov        edx,4F4738; 'TYPE_NAME'
 004F4495    mov        eax,dword ptr [ebp-0C]
 004F4498    mov        esi,dword ptr [eax]
 004F449A    call       dword ptr [esi+74]
 004F449D    mov        ecx,dword ptr [ebp-58]
 004F44A0    mov        eax,dword ptr [ebx]
 004F44A2    mov        edx,4F4738; 'TYPE_NAME'
 004F44A7    mov        esi,dword ptr [eax]
 004F44A9    call       dword ptr [esi+1A8]
 004F44AF    mov        edx,4F474C; 'PRECISION'
 004F44B4    mov        eax,dword ptr [ebp-0C]
 004F44B7    mov        ecx,dword ptr [eax]
 004F44B9    call       dword ptr [ecx+88]
 004F44BF    mov        ecx,eax
 004F44C1    mov        eax,dword ptr [ebx]
 004F44C3    mov        edx,4F474C; 'PRECISION'
 004F44C8    mov        esi,dword ptr [eax]
 004F44CA    call       dword ptr [esi+190]
 004F44D0    mov        edx,4F4760; 'LENGTH'
 004F44D5    mov        eax,dword ptr [ebp-0C]
 004F44D8    mov        ecx,dword ptr [eax]
 004F44DA    call       dword ptr [ecx+88]
 004F44E0    mov        ecx,eax
 004F44E2    mov        eax,dword ptr [ebx]
 004F44E4    mov        edx,4F4760; 'LENGTH'
 004F44E9    mov        esi,dword ptr [eax]
 004F44EB    call       dword ptr [esi+190]
 004F44F1    mov        edx,4F4770; 'SCALE'
 004F44F6    mov        eax,dword ptr [ebp-0C]
 004F44F9    mov        ecx,dword ptr [eax]
 004F44FB    call       dword ptr [ecx+84]
 004F4501    mov        ecx,eax
 004F4503    mov        eax,dword ptr [ebx]
 004F4505    mov        edx,4F4770; 'SCALE'
 004F450A    mov        esi,dword ptr [eax]
 004F450C    call       dword ptr [esi+18C]
 004F4512    mov        edx,4F4780; 'RADIX'
 004F4517    mov        eax,dword ptr [ebp-0C]
 004F451A    mov        ecx,dword ptr [eax]
 004F451C    call       dword ptr [ecx+84]
 004F4522    mov        ecx,eax
 004F4524    mov        eax,dword ptr [ebx]
 004F4526    mov        edx,4F4780; 'RADIX'
 004F452B    mov        esi,dword ptr [eax]
 004F452D    call       dword ptr [esi+18C]
 004F4533    mov        eax,dword ptr [ebx]
 004F4535    mov        cx,2
 004F4539    mov        edx,4F4790; 'NULLABLE'
 004F453E    mov        esi,dword ptr [eax]
 004F4540    call       dword ptr [esi+18C]
 004F4546    lea        ecx,[ebp-5C]
 004F4549    mov        edx,4F47A4; 'IS_NULLABLE'
 004F454E    mov        eax,dword ptr [ebp-0C]
 004F4551    mov        esi,dword ptr [eax]
 004F4553    call       dword ptr [esi+74]
 004F4556    mov        eax,dword ptr [ebp-5C]
 004F4559    mov        edx,4F47B8; 'NO'
 004F455E    call       @LStrCmp
>004F4563    jne        004F4576
 004F4565    mov        eax,dword ptr [ebx]
 004F4567    xor        ecx,ecx
 004F4569    mov        edx,4F4790; 'NULLABLE'
 004F456E    mov        esi,dword ptr [eax]
 004F4570    call       dword ptr [esi+18C]
 004F4576    lea        ecx,[ebp-60]
 004F4579    mov        edx,4F47A4; 'IS_NULLABLE'
 004F457E    mov        eax,dword ptr [ebp-0C]
 004F4581    mov        esi,dword ptr [eax]
 004F4583    call       dword ptr [esi+74]
 004F4586    mov        eax,dword ptr [ebp-60]
 004F4589    mov        edx,4F47C4; 'YES'
 004F458E    call       @LStrCmp
>004F4593    jne        004F45A8
 004F4595    mov        eax,dword ptr [ebx]
 004F4597    mov        cx,1
 004F459B    mov        edx,4F4790; 'NULLABLE'
 004F45A0    mov        esi,dword ptr [eax]
 004F45A2    call       dword ptr [esi+18C]
 004F45A8    lea        ecx,[ebp-64]
 004F45AB    mov        edx,4F47D0; 'REMARKS'
 004F45B0    mov        eax,dword ptr [ebp-0C]
 004F45B3    mov        esi,dword ptr [eax]
 004F45B5    call       dword ptr [esi+74]
 004F45B8    mov        ecx,dword ptr [ebp-64]
 004F45BB    mov        eax,dword ptr [ebx]
 004F45BD    mov        edx,4F47D0; 'REMARKS'
 004F45C2    mov        esi,dword ptr [eax]
 004F45C4    call       dword ptr [esi+1A8]
 004F45CA    mov        eax,dword ptr [ebx]
 004F45CC    mov        edx,dword ptr [eax]
 004F45CE    call       dword ptr [edx+1D0]
 004F45D4    mov        eax,dword ptr [ebp-0C]
 004F45D7    mov        edx,dword ptr [eax]
 004F45D9    call       dword ptr [edx+0C]
 004F45DC    test       al,al
<004F45DE    jne        004F4320
 004F45E4    mov        eax,dword ptr [ebp-0C]
 004F45E7    mov        edx,dword ptr [eax]
 004F45E9    call       dword ptr [edx+10]
 004F45EC    mov        eax,dword ptr [ebx]
 004F45EE    mov        edx,dword ptr [eax]
 004F45F0    call       dword ptr [edx+0E4]
 004F45F6    xor        eax,eax
 004F45F8    pop        edx
 004F45F9    pop        ecx
 004F45FA    pop        ecx
 004F45FB    mov        dword ptr fs:[eax],edx
 004F45FE    push       4F463D
 004F4603    lea        eax,[ebp-64]
 004F4606    mov        edx,8
 004F460B    call       @LStrArrayClr
 004F4610    lea        eax,[ebp-44]
 004F4613    call       @IntfClear
 004F4618    lea        eax,[ebp-40]
 004F461B    mov        edx,4
 004F4620    call       @LStrArrayClr
 004F4625    lea        eax,[ebp-10]
 004F4628    call       @LStrClr
 004F462D    lea        eax,[ebp-0C]
 004F4630    call       @IntfClear
 004F4635    ret
<004F4636    jmp        @HandleFinally
<004F463B    jmp        004F4603
 004F463D    pop        esi
 004F463E    pop        ebx
 004F463F    mov        esp,ebp
 004F4641    pop        ebp
 004F4642    ret        0C
*}
//end;

//004F47D8
//procedure sub_004F47D8(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F47D8    push       ebp
 004F47D9    mov        ebp,esp
 004F47DB    push       ecx
 004F47DC    mov        ecx,0C
 004F47E1    push       0
 004F47E3    push       0
 004F47E5    dec        ecx
<004F47E6    jne        004F47E1
 004F47E8    xchg       ecx,dword ptr [ebp-4]
 004F47EB    push       ebx
 004F47EC    push       esi
 004F47ED    push       edi
 004F47EE    mov        dword ptr [ebp-0C],ecx
 004F47F1    mov        dword ptr [ebp-8],edx
 004F47F4    mov        dword ptr [ebp-4],eax
 004F47F7    mov        ebx,dword ptr [ebp+8]
 004F47FA    xor        eax,eax
 004F47FC    push       ebp
 004F47FD    push       4F4A62
 004F4802    push       dword ptr fs:[eax]
 004F4805    mov        dword ptr fs:[eax],esp
 004F4808    mov        ecx,ebx
 004F480A    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 004F4810    mov        edx,dword ptr [edx]
 004F4812    mov        eax,dword ptr [ebp-4]
 004F4815    call       004D8E7C
 004F481A    lea        eax,[ebp-10]
 004F481D    call       @LStrClr
 004F4822    mov        eax,dword ptr [ebp+0C]
 004F4825    call       @DynArrayLength
 004F482A    mov        esi,eax
 004F482C    sub        esi,1
>004F482F    jno        004F4836
 004F4831    call       @IntOver
 004F4836    test       esi,esi
>004F4838    jl         004F4883
 004F483A    inc        esi
 004F483B    xor        edi,edi
 004F483D    mov        eax,dword ptr [ebp-10]
 004F4840    call       @LStrLen
 004F4845    test       eax,eax
>004F4847    jle        004F4856
 004F4849    lea        eax,[ebp-10]
 004F484C    mov        edx,4F4A7C; ','
 004F4851    call       @LStrCat
 004F4856    mov        eax,dword ptr [ebp+0C]
 004F4859    test       eax,eax
>004F485B    je         004F4862
 004F485D    cmp        edi,dword ptr [eax-4]
>004F4860    jb         004F4867
 004F4862    call       @BoundErr
 004F4867    mov        eax,dword ptr [eax+edi*4]
 004F486A    lea        ecx,[ebp-18]
 004F486D    mov        dl,27
 004F486F    call       AnsiQuotedStr
 004F4874    mov        edx,dword ptr [ebp-18]
 004F4877    lea        eax,[ebp-10]
 004F487A    call       @LStrCat
 004F487F    inc        edi
 004F4880    dec        esi
<004F4881    jne        004F483D
 004F4883    cmp        dword ptr [ebp-10],0
>004F4887    jne        004F4898
 004F4889    lea        eax,[ebp-10]
 004F488C    mov        edx,4F4A88; 'null'
 004F4891    call       @LStrLAsg
>004F4896    jmp        004F48B0
 004F4898    lea        ecx,[ebp-1C]
 004F489B    mov        dl,22
 004F489D    mov        eax,dword ptr [ebp-10]
 004F48A0    call       AnsiQuotedStr
 004F48A5    mov        edx,dword ptr [ebp-1C]
 004F48A8    lea        eax,[ebp-10]
 004F48AB    call       @LStrLAsg
 004F48B0    lea        eax,[ebp-20]
 004F48B3    push       eax
 004F48B4    lea        ecx,[ebp-44]
 004F48B7    mov        dl,27
 004F48B9    mov        eax,dword ptr [ebp+10]
 004F48BC    call       004D31AC
 004F48C1    mov        eax,dword ptr [ebp-44]
 004F48C4    mov        dword ptr [ebp-40],eax
 004F48C7    mov        byte ptr [ebp-3C],0B
 004F48CB    lea        ecx,[ebp-48]
 004F48CE    mov        dl,27
 004F48D0    mov        eax,dword ptr [ebp-0C]
 004F48D3    call       004D31AC
 004F48D8    mov        eax,dword ptr [ebp-48]
 004F48DB    mov        dword ptr [ebp-38],eax
 004F48DE    mov        byte ptr [ebp-34],0B
 004F48E2    lea        ecx,[ebp-4C]
 004F48E5    mov        dl,27
 004F48E7    mov        eax,dword ptr [ebp-8]
 004F48EA    call       004D31AC
 004F48EF    mov        eax,dword ptr [ebp-4C]
 004F48F2    mov        dword ptr [ebp-30],eax
 004F48F5    mov        byte ptr [ebp-2C],0B
 004F48F9    mov        eax,dword ptr [ebp-10]
 004F48FC    mov        dword ptr [ebp-28],eax
 004F48FF    mov        byte ptr [ebp-24],0B
 004F4903    lea        edx,[ebp-40]
 004F4906    mov        ecx,3
 004F490B    mov        eax,4F4A98; 'exec sp_tables %s, %s, %s, %s'
 004F4910    call       Format
 004F4915    mov        eax,dword ptr [ebp-20]
 004F4918    push       eax
 004F4919    lea        edx,[ebp-50]
 004F491C    mov        eax,dword ptr [ebp-4]
 004F491F    call       004F748C
 004F4924    mov        eax,dword ptr [ebp-50]
 004F4927    lea        ecx,[ebp-14]
 004F492A    pop        edx
 004F492B    mov        esi,dword ptr [eax]
 004F492D    call       dword ptr [esi+0C]
>004F4930    jmp        004F49F3
 004F4935    mov        eax,dword ptr [ebx]
 004F4937    mov        edx,dword ptr [eax]
 004F4939    call       dword ptr [edx+1E4]
 004F493F    lea        ecx,[ebp-54]
 004F4942    mov        edx,4F4AC0; 'TABLE_QUALIFIER'
 004F4947    mov        eax,dword ptr [ebp-14]
 004F494A    mov        esi,dword ptr [eax]
 004F494C    call       dword ptr [esi+74]
 004F494F    mov        ecx,dword ptr [ebp-54]
 004F4952    mov        eax,dword ptr [ebx]
 004F4954    mov        edx,4F4AD8; 'TABLE_CAT'
 004F4959    mov        esi,dword ptr [eax]
 004F495B    call       dword ptr [esi+1A8]
 004F4961    lea        ecx,[ebp-58]
 004F4964    mov        edx,4F4AEC; 'TABLE_OWNER'
 004F4969    mov        eax,dword ptr [ebp-14]
 004F496C    mov        esi,dword ptr [eax]
 004F496E    call       dword ptr [esi+74]
 004F4971    mov        ecx,dword ptr [ebp-58]
 004F4974    mov        eax,dword ptr [ebx]
 004F4976    mov        edx,4F4B00; 'TABLE_SCHEM'
 004F497B    mov        esi,dword ptr [eax]
 004F497D    call       dword ptr [esi+1A8]
 004F4983    lea        ecx,[ebp-5C]
 004F4986    mov        edx,4F4B14; 'TABLE_NAME'
 004F498B    mov        eax,dword ptr [ebp-14]
 004F498E    mov        esi,dword ptr [eax]
 004F4990    call       dword ptr [esi+74]
 004F4993    mov        ecx,dword ptr [ebp-5C]
 004F4996    mov        eax,dword ptr [ebx]
 004F4998    mov        edx,4F4B14; 'TABLE_NAME'
 004F499D    mov        esi,dword ptr [eax]
 004F499F    call       dword ptr [esi+1A8]
 004F49A5    lea        ecx,[ebp-60]
 004F49A8    mov        edx,4F4B28; 'TABLE_TYPE'
 004F49AD    mov        eax,dword ptr [ebp-14]
 004F49B0    mov        esi,dword ptr [eax]
 004F49B2    call       dword ptr [esi+74]
 004F49B5    mov        ecx,dword ptr [ebp-60]
 004F49B8    mov        eax,dword ptr [ebx]
 004F49BA    mov        edx,4F4B28; 'TABLE_TYPE'
 004F49BF    mov        esi,dword ptr [eax]
 004F49C1    call       dword ptr [esi+1A8]
 004F49C7    lea        ecx,[ebp-64]
 004F49CA    mov        edx,4F4B3C; 'REMARKS'
 004F49CF    mov        eax,dword ptr [ebp-14]
 004F49D2    mov        esi,dword ptr [eax]
 004F49D4    call       dword ptr [esi+74]
 004F49D7    mov        ecx,dword ptr [ebp-64]
 004F49DA    mov        eax,dword ptr [ebx]
 004F49DC    mov        edx,4F4B3C; 'REMARKS'
 004F49E1    mov        esi,dword ptr [eax]
 004F49E3    call       dword ptr [esi+1A8]
 004F49E9    mov        eax,dword ptr [ebx]
 004F49EB    mov        edx,dword ptr [eax]
 004F49ED    call       dword ptr [edx+1D0]
 004F49F3    mov        eax,dword ptr [ebp-14]
 004F49F6    mov        edx,dword ptr [eax]
 004F49F8    call       dword ptr [edx+0C]
 004F49FB    test       al,al
<004F49FD    jne        004F4935
 004F4A03    mov        eax,dword ptr [ebp-14]
 004F4A06    mov        edx,dword ptr [eax]
 004F4A08    call       dword ptr [edx+10]
 004F4A0B    mov        eax,dword ptr [ebx]
 004F4A0D    mov        edx,dword ptr [eax]
 004F4A0F    call       dword ptr [edx+0E4]
 004F4A15    xor        eax,eax
 004F4A17    pop        edx
 004F4A18    pop        ecx
 004F4A19    pop        ecx
 004F4A1A    mov        dword ptr fs:[eax],edx
 004F4A1D    push       4F4A69
 004F4A22    lea        eax,[ebp-64]
 004F4A25    mov        edx,5
 004F4A2A    call       @LStrArrayClr
 004F4A2F    lea        eax,[ebp-50]
 004F4A32    call       @IntfClear
 004F4A37    lea        eax,[ebp-4C]
 004F4A3A    mov        edx,3
 004F4A3F    call       @LStrArrayClr
 004F4A44    lea        eax,[ebp-20]
 004F4A47    mov        edx,3
 004F4A4C    call       @LStrArrayClr
 004F4A51    lea        eax,[ebp-14]
 004F4A54    call       @IntfClear
 004F4A59    lea        eax,[ebp-10]
 004F4A5C    call       @LStrClr
 004F4A61    ret
<004F4A62    jmp        @HandleFinally
<004F4A67    jmp        004F4A22
 004F4A69    pop        edi
 004F4A6A    pop        esi
 004F4A6B    pop        ebx
 004F4A6C    mov        esp,ebp
 004F4A6E    pop        ebp
 004F4A6F    ret        0C
*}
//end;

//004F4B44
//procedure sub_004F4B44(?:?);
//begin
{*
 004F4B44    push       ebp
 004F4B45    mov        ebp,esp
 004F4B47    push       0
 004F4B49    push       0
 004F4B4B    push       0
 004F4B4D    push       ebx
 004F4B4E    push       esi
 004F4B4F    mov        ebx,edx
 004F4B51    mov        esi,eax
 004F4B53    xor        eax,eax
 004F4B55    push       ebp
 004F4B56    push       4F4C08
 004F4B5B    push       dword ptr fs:[eax]
 004F4B5E    mov        dword ptr fs:[eax],esp
 004F4B61    mov        ecx,ebx
 004F4B63    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 004F4B69    mov        edx,dword ptr [edx]
 004F4B6B    mov        eax,esi
 004F4B6D    call       004D8E7C
 004F4B72    lea        edx,[ebp-8]
 004F4B75    mov        eax,esi
 004F4B77    call       004F748C
 004F4B7C    mov        eax,dword ptr [ebp-8]
 004F4B7F    lea        ecx,[ebp-4]
 004F4B82    mov        edx,4F4C20; 'select name as TABLE_OWNER from sysusers where islogin = 1'
 004F4B87    mov        esi,dword ptr [eax]
 004F4B89    call       dword ptr [esi+0C]
>004F4B8C    jmp        004F4BC4
 004F4B8E    mov        eax,dword ptr [ebx]
 004F4B90    mov        edx,dword ptr [eax]
 004F4B92    call       dword ptr [edx+1E4]
 004F4B98    lea        ecx,[ebp-0C]
 004F4B9B    mov        edx,4F4C64; 'TABLE_OWNER'
 004F4BA0    mov        eax,dword ptr [ebp-4]
 004F4BA3    mov        esi,dword ptr [eax]
 004F4BA5    call       dword ptr [esi+74]
 004F4BA8    mov        ecx,dword ptr [ebp-0C]
 004F4BAB    mov        eax,dword ptr [ebx]
 004F4BAD    mov        edx,4F4C78; 'TABLE_SCHEM'
 004F4BB2    mov        esi,dword ptr [eax]
 004F4BB4    call       dword ptr [esi+1A8]
 004F4BBA    mov        eax,dword ptr [ebx]
 004F4BBC    mov        edx,dword ptr [eax]
 004F4BBE    call       dword ptr [edx+1D0]
 004F4BC4    mov        eax,dword ptr [ebp-4]
 004F4BC7    mov        edx,dword ptr [eax]
 004F4BC9    call       dword ptr [edx+0C]
 004F4BCC    test       al,al
<004F4BCE    jne        004F4B8E
 004F4BD0    mov        eax,dword ptr [ebp-4]
 004F4BD3    mov        edx,dword ptr [eax]
 004F4BD5    call       dword ptr [edx+10]
 004F4BD8    mov        eax,dword ptr [ebx]
 004F4BDA    mov        edx,dword ptr [eax]
 004F4BDC    call       dword ptr [edx+0E4]
 004F4BE2    xor        eax,eax
 004F4BE4    pop        edx
 004F4BE5    pop        ecx
 004F4BE6    pop        ecx
 004F4BE7    mov        dword ptr fs:[eax],edx
 004F4BEA    push       4F4C0F
 004F4BEF    lea        eax,[ebp-0C]
 004F4BF2    call       @LStrClr
 004F4BF7    lea        eax,[ebp-8]
 004F4BFA    call       @IntfClear
 004F4BFF    lea        eax,[ebp-4]
 004F4C02    call       @IntfClear
 004F4C07    ret
<004F4C08    jmp        @HandleFinally
<004F4C0D    jmp        004F4BEF
 004F4C0F    pop        esi
 004F4C10    pop        ebx
 004F4C11    mov        esp,ebp
 004F4C13    pop        ebp
 004F4C14    ret
*}
//end;

//004F4C84
//procedure sub_004F4C84(?:?);
//begin
{*
 004F4C84    push       ebp
 004F4C85    mov        ebp,esp
 004F4C87    push       0
 004F4C89    push       0
 004F4C8B    push       0
 004F4C8D    push       ebx
 004F4C8E    push       esi
 004F4C8F    mov        ebx,edx
 004F4C91    mov        esi,eax
 004F4C93    xor        eax,eax
 004F4C95    push       ebp
 004F4C96    push       4F4D48
 004F4C9B    push       dword ptr fs:[eax]
 004F4C9E    mov        dword ptr fs:[eax],esp
 004F4CA1    mov        ecx,ebx
 004F4CA3    mov        edx,dword ptr ds:[61BB48]; ^gvar_0061DD44:TZMetadataColumnDefs
 004F4CA9    mov        edx,dword ptr [edx]
 004F4CAB    mov        eax,esi
 004F4CAD    call       004D8E7C
 004F4CB2    lea        edx,[ebp-8]
 004F4CB5    mov        eax,esi
 004F4CB7    call       004F748C
 004F4CBC    mov        eax,dword ptr [ebp-8]
 004F4CBF    lea        ecx,[ebp-4]
 004F4CC2    mov        edx,4F4D60; 'exec sp_databases'
 004F4CC7    mov        esi,dword ptr [eax]
 004F4CC9    call       dword ptr [esi+0C]
>004F4CCC    jmp        004F4D04
 004F4CCE    mov        eax,dword ptr [ebx]
 004F4CD0    mov        edx,dword ptr [eax]
 004F4CD2    call       dword ptr [edx+1E4]
 004F4CD8    lea        ecx,[ebp-0C]
 004F4CDB    mov        edx,4F4D7C; 'DATABASE_NAME'
 004F4CE0    mov        eax,dword ptr [ebp-4]
 004F4CE3    mov        esi,dword ptr [eax]
 004F4CE5    call       dword ptr [esi+74]
 004F4CE8    mov        ecx,dword ptr [ebp-0C]
 004F4CEB    mov        eax,dword ptr [ebx]
 004F4CED    mov        edx,4F4D94; 'TABLE_CAT'
 004F4CF2    mov        esi,dword ptr [eax]
 004F4CF4    call       dword ptr [esi+1A8]
 004F4CFA    mov        eax,dword ptr [ebx]
 004F4CFC    mov        edx,dword ptr [eax]
 004F4CFE    call       dword ptr [edx+1D0]
 004F4D04    mov        eax,dword ptr [ebp-4]
 004F4D07    mov        edx,dword ptr [eax]
 004F4D09    call       dword ptr [edx+0C]
 004F4D0C    test       al,al
<004F4D0E    jne        004F4CCE
 004F4D10    mov        eax,dword ptr [ebp-4]
 004F4D13    mov        edx,dword ptr [eax]
 004F4D15    call       dword ptr [edx+10]
 004F4D18    mov        eax,dword ptr [ebx]
 004F4D1A    mov        edx,dword ptr [eax]
 004F4D1C    call       dword ptr [edx+0E4]
 004F4D22    xor        eax,eax
 004F4D24    pop        edx
 004F4D25    pop        ecx
 004F4D26    pop        ecx
 004F4D27    mov        dword ptr fs:[eax],edx
 004F4D2A    push       4F4D4F
 004F4D2F    lea        eax,[ebp-0C]
 004F4D32    call       @LStrClr
 004F4D37    lea        eax,[ebp-8]
 004F4D3A    call       @IntfClear
 004F4D3F    lea        eax,[ebp-4]
 004F4D42    call       @IntfClear
 004F4D47    ret
<004F4D48    jmp        @HandleFinally
<004F4D4D    jmp        004F4D2F
 004F4D4F    pop        esi
 004F4D50    pop        ebx
 004F4D51    mov        esp,ebp
 004F4D53    pop        ebp
 004F4D54    ret
*}
//end;

//004F4DD8
//procedure sub_004F4DD8(?:?);
//begin
{*
 004F4DD8    push       ebp
 004F4DD9    mov        ebp,esp
 004F4DDB    push       ecx
 004F4DDC    push       ebx
 004F4DDD    push       esi
 004F4DDE    push       edi
 004F4DDF    mov        esi,edx
 004F4DE1    mov        ebx,eax
 004F4DE3    mov        ecx,esi
 004F4DE5    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 004F4DEB    mov        edx,dword ptr [edx]
 004F4DED    mov        eax,ebx
 004F4DEF    call       004D8E7C
 004F4DF4    mov        dword ptr [ebp-4],3
 004F4DFB    mov        ebx,616018; gvar_00616018:array[3] of String
 004F4E00    mov        eax,dword ptr [esi]
 004F4E02    mov        edx,dword ptr [eax]
 004F4E04    call       dword ptr [edx+1E4]
 004F4E0A    mov        eax,dword ptr [esi]
 004F4E0C    mov        ecx,dword ptr [ebx]
 004F4E0E    mov        edx,4F4E48; 'TABLE_TYPE'
 004F4E13    mov        edi,dword ptr [eax]
 004F4E15    call       dword ptr [edi+1A8]
 004F4E1B    mov        eax,dword ptr [esi]
 004F4E1D    mov        edx,dword ptr [eax]
 004F4E1F    call       dword ptr [edx+1D0]
 004F4E25    add        ebx,4
 004F4E28    dec        dword ptr [ebp-4]
<004F4E2B    jne        004F4E00
 004F4E2D    mov        eax,dword ptr [esi]
 004F4E2F    mov        edx,dword ptr [eax]
 004F4E31    call       dword ptr [edx+0E4]
 004F4E37    pop        edi
 004F4E38    pop        esi
 004F4E39    pop        ebx
 004F4E3A    pop        ecx
 004F4E3B    pop        ebp
 004F4E3C    ret
*}
//end;

//004F4E54
//procedure sub_004F4E54(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F4E54    push       ebp
 004F4E55    mov        ebp,esp
 004F4E57    push       ecx
 004F4E58    mov        ecx,10
 004F4E5D    push       0
 004F4E5F    push       0
 004F4E61    dec        ecx
<004F4E62    jne        004F4E5D
 004F4E64    xchg       ecx,dword ptr [ebp-4]
 004F4E67    push       ebx
 004F4E68    push       esi
 004F4E69    push       edi
 004F4E6A    mov        dword ptr [ebp-8],ecx
 004F4E6D    mov        dword ptr [ebp-4],edx
 004F4E70    mov        ebx,eax
 004F4E72    mov        esi,dword ptr [ebp+8]
 004F4E75    xor        eax,eax
 004F4E77    push       ebp
 004F4E78    push       4F5438
 004F4E7D    push       dword ptr fs:[eax]
 004F4E80    mov        dword ptr fs:[eax],esp
 004F4E83    mov        ecx,esi
 004F4E85    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 004F4E8B    mov        edx,dword ptr [edx]
 004F4E8D    mov        eax,ebx
 004F4E8F    call       004D8E7C
 004F4E94    lea        eax,[ebp-14]
 004F4E97    push       eax
 004F4E98    lea        ecx,[ebp-38]
 004F4E9B    mov        dl,27
 004F4E9D    mov        eax,dword ptr [ebp+10]
 004F4EA0    call       004D31AC
 004F4EA5    mov        eax,dword ptr [ebp-38]
 004F4EA8    mov        dword ptr [ebp-34],eax
 004F4EAB    mov        byte ptr [ebp-30],0B
 004F4EAF    lea        ecx,[ebp-3C]
 004F4EB2    mov        dl,27
 004F4EB4    mov        eax,dword ptr [ebp-8]
 004F4EB7    call       004D31AC
 004F4EBC    mov        eax,dword ptr [ebp-3C]
 004F4EBF    mov        dword ptr [ebp-2C],eax
 004F4EC2    mov        byte ptr [ebp-28],0B
 004F4EC6    lea        ecx,[ebp-40]
 004F4EC9    mov        dl,27
 004F4ECB    mov        eax,dword ptr [ebp-4]
 004F4ECE    call       004D31AC
 004F4ED3    mov        eax,dword ptr [ebp-40]
 004F4ED6    mov        dword ptr [ebp-24],eax
 004F4ED9    mov        byte ptr [ebp-20],0B
 004F4EDD    lea        ecx,[ebp-44]
 004F4EE0    mov        dl,27
 004F4EE2    mov        eax,dword ptr [ebp+0C]
 004F4EE5    call       004D31AC
 004F4EEA    mov        eax,dword ptr [ebp-44]
 004F4EED    mov        dword ptr [ebp-1C],eax
 004F4EF0    mov        byte ptr [ebp-18],0B
 004F4EF4    lea        edx,[ebp-34]
 004F4EF7    mov        ecx,3
 004F4EFC    mov        eax,4F5450; 'exec sp_columns %s, %s, %s, %s'
 004F4F01    call       Format
 004F4F06    mov        eax,dword ptr [ebp-14]
 004F4F09    push       eax
 004F4F0A    lea        edx,[ebp-48]
 004F4F0D    mov        eax,ebx
 004F4F0F    call       004F748C
 004F4F14    mov        eax,dword ptr [ebp-48]
 004F4F17    lea        ecx,[ebp-0C]
 004F4F1A    pop        edx
 004F4F1B    mov        edi,dword ptr [eax]
 004F4F1D    call       dword ptr [edi+0C]
>004F4F20    jmp        004F5203
 004F4F25    mov        eax,dword ptr [esi]
 004F4F27    mov        edx,dword ptr [eax]
 004F4F29    call       dword ptr [edx+1E4]
 004F4F2F    lea        ecx,[ebp-4C]
 004F4F32    mov        edx,4F5478; 'TABLE_QUALIFIER'
 004F4F37    mov        eax,dword ptr [ebp-0C]
 004F4F3A    mov        edi,dword ptr [eax]
 004F4F3C    call       dword ptr [edi+74]
 004F4F3F    mov        ecx,dword ptr [ebp-4C]
 004F4F42    mov        eax,dword ptr [esi]
 004F4F44    mov        edx,4F5490; 'TABLE_CAT'
 004F4F49    mov        edi,dword ptr [eax]
 004F4F4B    call       dword ptr [edi+1A8]
 004F4F51    lea        ecx,[ebp-50]
 004F4F54    mov        edx,4F54A4; 'TABLE_OWNER'
 004F4F59    mov        eax,dword ptr [ebp-0C]
 004F4F5C    mov        edi,dword ptr [eax]
 004F4F5E    call       dword ptr [edi+74]
 004F4F61    mov        ecx,dword ptr [ebp-50]
 004F4F64    mov        eax,dword ptr [esi]
 004F4F66    mov        edx,4F54B8; 'TABLE_SCHEM'
 004F4F6B    mov        edi,dword ptr [eax]
 004F4F6D    call       dword ptr [edi+1A8]
 004F4F73    lea        ecx,[ebp-54]
 004F4F76    mov        edx,4F54CC; 'TABLE_NAME'
 004F4F7B    mov        eax,dword ptr [ebp-0C]
 004F4F7E    mov        edi,dword ptr [eax]
 004F4F80    call       dword ptr [edi+74]
 004F4F83    mov        ecx,dword ptr [ebp-54]
 004F4F86    mov        eax,dword ptr [esi]
 004F4F88    mov        edx,4F54CC; 'TABLE_NAME'
 004F4F8D    mov        edi,dword ptr [eax]
 004F4F8F    call       dword ptr [edi+1A8]
 004F4F95    lea        ecx,[ebp-58]
 004F4F98    mov        edx,4F54E0; 'COLUMN_NAME'
 004F4F9D    mov        eax,dword ptr [ebp-0C]
 004F4FA0    mov        edi,dword ptr [eax]
 004F4FA2    call       dword ptr [edi+74]
 004F4FA5    mov        ecx,dword ptr [ebp-58]
 004F4FA8    mov        eax,dword ptr [esi]
 004F4FAA    mov        edx,4F54E0; 'COLUMN_NAME'
 004F4FAF    mov        edi,dword ptr [eax]
 004F4FB1    call       dword ptr [edi+1A8]
 004F4FB7    mov        eax,dword ptr [esi]
 004F4FB9    mov        edx,4F54F4; 'DATA_TYPE'
 004F4FBE    mov        ecx,dword ptr [eax]
 004F4FC0    call       dword ptr [ecx+180]
 004F4FC6    lea        ecx,[ebp-5C]
 004F4FC9    mov        edx,4F5508; 'TYPE_NAME'
 004F4FCE    mov        eax,dword ptr [ebp-0C]
 004F4FD1    mov        edi,dword ptr [eax]
 004F4FD3    call       dword ptr [edi+74]
 004F4FD6    mov        ecx,dword ptr [ebp-5C]
 004F4FD9    mov        eax,dword ptr [esi]
 004F4FDB    mov        edx,4F5508; 'TYPE_NAME'
 004F4FE0    mov        edi,dword ptr [eax]
 004F4FE2    call       dword ptr [edi+1A8]
 004F4FE8    mov        edx,4F551C; 'LENGTH'
 004F4FED    mov        eax,dword ptr [ebp-0C]
 004F4FF0    mov        ecx,dword ptr [eax]
 004F4FF2    call       dword ptr [ecx+88]
 004F4FF8    mov        ecx,eax
 004F4FFA    mov        eax,dword ptr [esi]
 004F4FFC    mov        edx,4F552C; 'COLUMN_SIZE'
 004F5001    mov        edi,dword ptr [eax]
 004F5003    call       dword ptr [edi+190]
 004F5009    mov        edx,4F551C; 'LENGTH'
 004F500E    mov        eax,dword ptr [ebp-0C]
 004F5011    mov        ecx,dword ptr [eax]
 004F5013    call       dword ptr [ecx+88]
 004F5019    mov        ecx,eax
 004F501B    mov        eax,dword ptr [esi]
 004F501D    mov        edx,4F5540; 'BUFFER_LENGTH'
 004F5022    mov        edi,dword ptr [eax]
 004F5024    call       dword ptr [edi+190]
 004F502A    mov        edx,4F5558; 'SCALE'
 004F502F    mov        eax,dword ptr [ebp-0C]
 004F5032    mov        ecx,dword ptr [eax]
 004F5034    call       dword ptr [ecx+88]
 004F503A    mov        ecx,eax
 004F503C    mov        eax,dword ptr [esi]
 004F503E    mov        edx,4F5568; 'DECIMAL_DIGITS'
 004F5043    mov        edi,dword ptr [eax]
 004F5045    call       dword ptr [edi+190]
 004F504B    mov        edx,4F5580; 'RADIX'
 004F5050    mov        eax,dword ptr [ebp-0C]
 004F5053    mov        ecx,dword ptr [eax]
 004F5055    call       dword ptr [ecx+84]
 004F505B    movsx      ecx,ax
 004F505E    mov        eax,dword ptr [esi]
 004F5060    mov        edx,4F5590; 'NUM_PREC_RADIX'
 004F5065    mov        edi,dword ptr [eax]
 004F5067    call       dword ptr [edi+190]
 004F506D    mov        eax,dword ptr [esi]
 004F506F    mov        ecx,2
 004F5074    mov        edx,4F55A8; 'NULLABLE'
 004F5079    mov        edi,dword ptr [eax]
 004F507B    call       dword ptr [edi+190]
 004F5081    lea        ecx,[ebp-60]
 004F5084    mov        edx,4F55BC; 'IS_NULLABLE'
 004F5089    mov        eax,dword ptr [ebp-0C]
 004F508C    mov        edi,dword ptr [eax]
 004F508E    call       dword ptr [edi+74]
 004F5091    mov        eax,dword ptr [ebp-60]
 004F5094    mov        edx,4F55D0; 'NO'
 004F5099    call       @LStrCmp
>004F509E    jne        004F50B1
 004F50A0    mov        eax,dword ptr [esi]
 004F50A2    xor        ecx,ecx
 004F50A4    mov        edx,4F55A8; 'NULLABLE'
 004F50A9    mov        edi,dword ptr [eax]
 004F50AB    call       dword ptr [edi+18C]
 004F50B1    lea        ecx,[ebp-64]
 004F50B4    mov        edx,4F55BC; 'IS_NULLABLE'
 004F50B9    mov        eax,dword ptr [ebp-0C]
 004F50BC    mov        edi,dword ptr [eax]
 004F50BE    call       dword ptr [edi+74]
 004F50C1    mov        eax,dword ptr [ebp-64]
 004F50C4    mov        edx,4F55DC; 'YES'
 004F50C9    call       @LStrCmp
>004F50CE    jne        004F50E3
 004F50D0    mov        eax,dword ptr [esi]
 004F50D2    mov        cx,1
 004F50D6    mov        edx,4F55A8; 'NULLABLE'
 004F50DB    mov        edi,dword ptr [eax]
 004F50DD    call       dword ptr [edi+18C]
 004F50E3    lea        ecx,[ebp-68]
 004F50E6    mov        edx,4F55E8; 'REMARKS'
 004F50EB    mov        eax,dword ptr [ebp-0C]
 004F50EE    mov        edi,dword ptr [eax]
 004F50F0    call       dword ptr [edi+74]
 004F50F3    mov        ecx,dword ptr [ebp-68]
 004F50F6    mov        eax,dword ptr [esi]
 004F50F8    mov        edx,4F55E8; 'REMARKS'
 004F50FD    mov        edi,dword ptr [eax]
 004F50FF    call       dword ptr [edi+1A8]
 004F5105    lea        ecx,[ebp-6C]
 004F5108    mov        edx,4F55F8; 'COLUMN_DEF'
 004F510D    mov        eax,dword ptr [ebp-0C]
 004F5110    mov        edi,dword ptr [eax]
 004F5112    call       dword ptr [edi+74]
 004F5115    mov        ecx,dword ptr [ebp-6C]
 004F5118    mov        eax,dword ptr [esi]
 004F511A    mov        edx,4F55F8; 'COLUMN_DEF'
 004F511F    mov        edi,dword ptr [eax]
 004F5121    call       dword ptr [edi+1A8]
 004F5127    mov        edx,4F560C; 'SQL_DATA_TYPE'
 004F512C    mov        eax,dword ptr [ebp-0C]
 004F512F    mov        ecx,dword ptr [eax]
 004F5131    call       dword ptr [ecx+84]
 004F5137    mov        ecx,eax
 004F5139    mov        eax,dword ptr [esi]
 004F513B    mov        edx,4F560C; 'SQL_DATA_TYPE'
 004F5140    mov        edi,dword ptr [eax]
 004F5142    call       dword ptr [edi+18C]
 004F5148    mov        edx,4F5624; 'SQL_DATETIME_SUB'
 004F514D    mov        eax,dword ptr [ebp-0C]
 004F5150    mov        ecx,dword ptr [eax]
 004F5152    call       dword ptr [ecx+84]
 004F5158    mov        ecx,eax
 004F515A    mov        eax,dword ptr [esi]
 004F515C    mov        edx,4F5624; 'SQL_DATETIME_SUB'
 004F5161    mov        edi,dword ptr [eax]
 004F5163    call       dword ptr [edi+18C]
 004F5169    mov        edx,4F5640; 'CHAR_OCTET_LENGTH'
 004F516E    mov        eax,dword ptr [ebp-0C]
 004F5171    mov        ecx,dword ptr [eax]
 004F5173    call       dword ptr [ecx+88]
 004F5179    mov        ecx,eax
 004F517B    mov        eax,dword ptr [esi]
 004F517D    mov        edx,4F5640; 'CHAR_OCTET_LENGTH'
 004F5182    mov        edi,dword ptr [eax]
 004F5184    call       dword ptr [edi+190]
 004F518A    mov        edx,4F565C; 'ORDINAL_POSITION'
 004F518F    mov        eax,dword ptr [ebp-0C]
 004F5192    mov        ecx,dword ptr [eax]
 004F5194    call       dword ptr [ecx+88]
 004F519A    mov        ecx,eax
 004F519C    mov        eax,dword ptr [esi]
 004F519E    mov        edx,4F565C; 'ORDINAL_POSITION'
 004F51A3    mov        edi,dword ptr [eax]
 004F51A5    call       dword ptr [edi+190]
 004F51AB    lea        ecx,[ebp-70]
 004F51AE    mov        edx,4F55BC; 'IS_NULLABLE'
 004F51B3    mov        eax,dword ptr [ebp-0C]
 004F51B6    mov        edi,dword ptr [eax]
 004F51B8    call       dword ptr [edi+74]
 004F51BB    mov        ecx,dword ptr [ebp-70]
 004F51BE    mov        eax,dword ptr [esi]
 004F51C0    mov        edx,4F55BC; 'IS_NULLABLE'
 004F51C5    mov        edi,dword ptr [eax]
 004F51C7    call       dword ptr [edi+1A8]
 004F51CD    mov        edx,4F5678; 'SS_DATA_TYPE'
 004F51D2    mov        eax,dword ptr [ebp-0C]
 004F51D5    mov        ecx,dword ptr [eax]
 004F51D7    call       dword ptr [ecx+84]
 004F51DD    add        eax,0FFFFFFDE
 004F51E0    sub        ax,2
 004F51E4    setb       cl
 004F51E7    xor        cl,1
 004F51EA    mov        eax,dword ptr [esi]
 004F51EC    mov        edx,4F5690; 'SEARCHABLE'
 004F51F1    mov        edi,dword ptr [eax]
 004F51F3    call       dword ptr [edi+184]
 004F51F9    mov        eax,dword ptr [esi]
 004F51FB    mov        edx,dword ptr [eax]
 004F51FD    call       dword ptr [edx+1D0]
 004F5203    mov        eax,dword ptr [ebp-0C]
 004F5206    mov        edx,dword ptr [eax]
 004F5208    call       dword ptr [edx+0C]
 004F520B    test       al,al
<004F520D    jne        004F4F25
 004F5213    mov        eax,dword ptr [ebp-0C]
 004F5216    mov        edx,dword ptr [eax]
 004F5218    call       dword ptr [edx+10]
 004F521B    mov        eax,dword ptr [esi]
 004F521D    mov        edx,dword ptr [eax]
 004F521F    call       dword ptr [edx+0E4]
 004F5225    lea        eax,[ebp-74]
 004F5228    push       eax
 004F5229    lea        ecx,[ebp-80]
 004F522C    mov        dl,27
 004F522E    mov        eax,dword ptr [ebp+10]
 004F5231    call       004D31AC
 004F5236    mov        eax,dword ptr [ebp-80]
 004F5239    mov        dword ptr [ebp-7C],eax
 004F523C    mov        byte ptr [ebp-78],0B
 004F5240    lea        edx,[ebp-7C]
 004F5243    xor        ecx,ecx
 004F5245    mov        eax,4F56A4; 'select c.colid, c.name, c.type, c.prec, c.scale, c.colstat, c.status, c.iscomputed from syscolumns c inner join sysobjects o on (o.id = c.id) where o.name = %s order by colid'
 004F524A    call       Format
 004F524F    mov        eax,dword ptr [ebp-74]
 004F5252    push       eax
 004F5253    lea        edx,[ebp-84]
 004F5259    mov        eax,ebx
 004F525B    call       004F748C
 004F5260    mov        eax,dword ptr [ebp-84]
 004F5266    lea        ecx,[ebp-10]
 004F5269    pop        edx
 004F526A    mov        ebx,dword ptr [eax]
 004F526C    call       dword ptr [ebx+0C]
>004F526F    jmp        004F53B8
 004F5274    mov        eax,dword ptr [esi]
 004F5276    mov        edx,dword ptr [eax]
 004F5278    call       dword ptr [edx+0C]
 004F527B    mov        edx,4F575C; 'status'
 004F5280    mov        eax,dword ptr [ebp-10]
 004F5283    mov        ecx,dword ptr [eax]
 004F5285    call       dword ptr [ecx+84]
 004F528B    test       al,80
 004F528D    setne      cl
 004F5290    mov        eax,dword ptr [esi]
 004F5292    mov        edx,4F576C; 'AUTO_INCREMENT'
 004F5297    mov        ebx,dword ptr [eax]
 004F5299    call       dword ptr [ebx+184]
 004F529F    mov        eax,dword ptr [esi]
 004F52A1    mov        edx,4F5784; 'CASE_SENSITIVE'
 004F52A6    mov        ecx,dword ptr [eax]
 004F52A8    call       dword ptr [ecx+180]
 004F52AE    mov        eax,dword ptr [esi]
 004F52B0    mov        edx,4F5690; 'SEARCHABLE'
 004F52B5    mov        ecx,dword ptr [eax]
 004F52B7    call       dword ptr [ecx+7C]
 004F52BA    test       al,al
>004F52BC    je         004F52D2
 004F52BE    mov        edx,4F579C; 'iscomputed'
 004F52C3    mov        eax,dword ptr [ebp-10]
 004F52C6    mov        ecx,dword ptr [eax]
 004F52C8    call       dword ptr [ecx+88]
 004F52CE    test       eax,eax
>004F52D0    je         004F52D6
 004F52D2    xor        ecx,ecx
>004F52D4    jmp        004F52D8
 004F52D6    mov        cl,1
 004F52D8    mov        eax,dword ptr [esi]
 004F52DA    mov        edx,4F5690; 'SEARCHABLE'
 004F52DF    mov        ebx,dword ptr [eax]
 004F52E1    call       dword ptr [ebx+184]
 004F52E7    mov        edx,4F575C; 'status'
 004F52EC    mov        eax,dword ptr [ebp-10]
 004F52EF    mov        ecx,dword ptr [eax]
 004F52F1    call       dword ptr [ecx+84]
 004F52F7    test       al,80
>004F52F9    jne        004F5325
 004F52FB    mov        edx,4F57B0; 'type'
 004F5300    mov        eax,dword ptr [ebp-10]
 004F5303    mov        ecx,dword ptr [eax]
 004F5305    call       dword ptr [ecx+84]
 004F530B    cmp        ax,25
>004F530F    je         004F5325
 004F5311    mov        edx,4F579C; 'iscomputed'
 004F5316    mov        eax,dword ptr [ebp-10]
 004F5319    mov        ecx,dword ptr [eax]
 004F531B    call       dword ptr [ecx+88]
 004F5321    test       eax,eax
>004F5323    je         004F5329
 004F5325    xor        ecx,ecx
>004F5327    jmp        004F532B
 004F5329    mov        cl,1
 004F532B    mov        eax,dword ptr [esi]
 004F532D    mov        edx,4F57C0; 'WRITABLE'
 004F5332    mov        ebx,dword ptr [eax]
 004F5334    call       dword ptr [ebx+184]
 004F533A    mov        eax,dword ptr [esi]
 004F533C    mov        edx,4F57C0; 'WRITABLE'
 004F5341    mov        ecx,dword ptr [eax]
 004F5343    call       dword ptr [ecx+7C]
 004F5346    mov        ecx,eax
 004F5348    mov        eax,dword ptr [esi]
 004F534A    mov        edx,4F57D4; 'DEFINITELYWRITABLE'
 004F534F    mov        ebx,dword ptr [eax]
 004F5351    call       dword ptr [ebx+184]
 004F5357    mov        eax,dword ptr [esi]
 004F5359    mov        edx,4F57C0; 'WRITABLE'
 004F535E    mov        ecx,dword ptr [eax]
 004F5360    call       dword ptr [ecx+7C]
 004F5363    mov        ecx,eax
 004F5365    xor        cl,1
 004F5368    mov        eax,dword ptr [esi]
 004F536A    mov        edx,4F57F0; 'READONLY'
 004F536F    mov        ebx,dword ptr [eax]
 004F5371    call       dword ptr [ebx+184]
 004F5377    mov        eax,dword ptr [esi]
 004F5379    mov        edx,4F576C; 'AUTO_INCREMENT'
 004F537E    mov        ecx,dword ptr [eax]
 004F5380    call       dword ptr [ecx+7C]
 004F5383    test       al,al
>004F5385    je         004F53AE
 004F5387    mov        eax,dword ptr [esi]
 004F5389    mov        cx,1
 004F538D    mov        edx,4F55A8; 'NULLABLE'
 004F5392    mov        ebx,dword ptr [eax]
 004F5394    call       dword ptr [ebx+18C]
 004F539A    mov        eax,dword ptr [esi]
 004F539C    mov        ecx,4F55DC; 'YES'
 004F53A1    mov        edx,4F55BC; 'IS_NULLABLE'
 004F53A6    mov        ebx,dword ptr [eax]
 004F53A8    call       dword ptr [ebx+1A8]
 004F53AE    mov        eax,dword ptr [esi]
 004F53B0    mov        edx,dword ptr [eax]
 004F53B2    call       dword ptr [edx+1D4]
 004F53B8    mov        eax,dword ptr [ebp-10]
 004F53BB    mov        edx,dword ptr [eax]
 004F53BD    call       dword ptr [edx+0C]
 004F53C0    test       al,al
<004F53C2    jne        004F5274
 004F53C8    mov        eax,dword ptr [ebp-10]
 004F53CB    mov        edx,dword ptr [eax]
 004F53CD    call       dword ptr [edx+10]
 004F53D0    mov        eax,dword ptr [esi]
 004F53D2    mov        edx,dword ptr [eax]
 004F53D4    call       dword ptr [edx+0E4]
 004F53DA    xor        eax,eax
 004F53DC    pop        edx
 004F53DD    pop        ecx
 004F53DE    pop        ecx
 004F53DF    mov        dword ptr fs:[eax],edx
 004F53E2    push       4F543F
 004F53E7    lea        eax,[ebp-84]
 004F53ED    call       @IntfClear
 004F53F2    lea        eax,[ebp-80]
 004F53F5    call       @LStrClr
 004F53FA    lea        eax,[ebp-74]
 004F53FD    mov        edx,0B
 004F5402    call       @LStrArrayClr
 004F5407    lea        eax,[ebp-48]
 004F540A    call       @IntfClear
 004F540F    lea        eax,[ebp-44]
 004F5412    mov        edx,4
 004F5417    call       @LStrArrayClr
 004F541C    lea        eax,[ebp-14]
 004F541F    call       @LStrClr
 004F5424    lea        eax,[ebp-10]
 004F5427    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 004F542D    mov        ecx,2
 004F5432    call       @FinalizeArray
 004F5437    ret
<004F5438    jmp        @HandleFinally
<004F543D    jmp        004F53E7
 004F543F    pop        edi
 004F5440    pop        esi
 004F5441    pop        ebx
 004F5442    mov        esp,ebp
 004F5444    pop        ebp
 004F5445    ret        0C
*}
//end;

//004F57FC
//procedure sub_004F57FC(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F57FC    push       ebp
 004F57FD    mov        ebp,esp
 004F57FF    push       ecx
 004F5800    mov        ecx,0C
 004F5805    push       0
 004F5807    push       0
 004F5809    dec        ecx
<004F580A    jne        004F5805
 004F580C    xchg       ecx,dword ptr [ebp-4]
 004F580F    push       ebx
 004F5810    push       esi
 004F5811    mov        dword ptr [ebp-8],ecx
 004F5814    mov        dword ptr [ebp-4],edx
 004F5817    mov        esi,eax
 004F5819    mov        ebx,dword ptr [ebp+8]
 004F581C    xor        eax,eax
 004F581E    push       ebp
 004F581F    push       4F5A52
 004F5824    push       dword ptr fs:[eax]
 004F5827    mov        dword ptr fs:[eax],esp
 004F582A    mov        ecx,ebx
 004F582C    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 004F5832    mov        edx,dword ptr [edx]
 004F5834    mov        eax,esi
 004F5836    call       004D8E7C
 004F583B    lea        eax,[ebp-10]
 004F583E    push       eax
 004F583F    lea        ecx,[ebp-34]
 004F5842    mov        dl,27
 004F5844    mov        eax,dword ptr [ebp+10]
 004F5847    call       004D31AC
 004F584C    mov        eax,dword ptr [ebp-34]
 004F584F    mov        dword ptr [ebp-30],eax
 004F5852    mov        byte ptr [ebp-2C],0B
 004F5856    lea        ecx,[ebp-38]
 004F5859    mov        dl,27
 004F585B    mov        eax,dword ptr [ebp-8]
 004F585E    call       004D31AC
 004F5863    mov        eax,dword ptr [ebp-38]
 004F5866    mov        dword ptr [ebp-28],eax
 004F5869    mov        byte ptr [ebp-24],0B
 004F586D    lea        ecx,[ebp-3C]
 004F5870    mov        dl,27
 004F5872    mov        eax,dword ptr [ebp-4]
 004F5875    call       004D31AC
 004F587A    mov        eax,dword ptr [ebp-3C]
 004F587D    mov        dword ptr [ebp-20],eax
 004F5880    mov        byte ptr [ebp-1C],0B
 004F5884    lea        ecx,[ebp-40]
 004F5887    mov        dl,27
 004F5889    mov        eax,dword ptr [ebp+0C]
 004F588C    call       004D31AC
 004F5891    mov        eax,dword ptr [ebp-40]
 004F5894    mov        dword ptr [ebp-18],eax
 004F5897    mov        byte ptr [ebp-14],0B
 004F589B    lea        edx,[ebp-30]
 004F589E    mov        ecx,3
 004F58A3    mov        eax,4F5A6C; 'exec sp_column_privileges %s, %s, %s, %s'
 004F58A8    call       Format
 004F58AD    mov        eax,dword ptr [ebp-10]
 004F58B0    push       eax
 004F58B1    lea        edx,[ebp-44]
 004F58B4    mov        eax,esi
 004F58B6    call       004F748C
 004F58BB    mov        eax,dword ptr [ebp-44]
 004F58BE    lea        ecx,[ebp-0C]
 004F58C1    pop        edx
 004F58C2    mov        esi,dword ptr [eax]
 004F58C4    call       dword ptr [esi+0C]
>004F58C7    jmp        004F59F0
 004F58CC    mov        eax,dword ptr [ebx]
 004F58CE    mov        edx,dword ptr [eax]
 004F58D0    call       dword ptr [edx+1E4]
 004F58D6    lea        ecx,[ebp-48]
 004F58D9    mov        edx,4F5AA0; 'TABLE_QUALIFIER'
 004F58DE    mov        eax,dword ptr [ebp-0C]
 004F58E1    mov        esi,dword ptr [eax]
 004F58E3    call       dword ptr [esi+74]
 004F58E6    mov        ecx,dword ptr [ebp-48]
 004F58E9    mov        eax,dword ptr [ebx]
 004F58EB    mov        edx,4F5AB8; 'TABLE_CAT'
 004F58F0    mov        esi,dword ptr [eax]
 004F58F2    call       dword ptr [esi+1A8]
 004F58F8    lea        ecx,[ebp-4C]
 004F58FB    mov        edx,4F5ACC; 'TABLE_OWNER'
 004F5900    mov        eax,dword ptr [ebp-0C]
 004F5903    mov        esi,dword ptr [eax]
 004F5905    call       dword ptr [esi+74]
 004F5908    mov        ecx,dword ptr [ebp-4C]
 004F590B    mov        eax,dword ptr [ebx]
 004F590D    mov        edx,4F5AE0; 'TABLE_SCHEM'
 004F5912    mov        esi,dword ptr [eax]
 004F5914    call       dword ptr [esi+1A8]
 004F591A    lea        ecx,[ebp-50]
 004F591D    mov        edx,4F5AF4; 'TABLE_NAME'
 004F5922    mov        eax,dword ptr [ebp-0C]
 004F5925    mov        esi,dword ptr [eax]
 004F5927    call       dword ptr [esi+74]
 004F592A    mov        ecx,dword ptr [ebp-50]
 004F592D    mov        eax,dword ptr [ebx]
 004F592F    mov        edx,4F5AF4; 'TABLE_NAME'
 004F5934    mov        esi,dword ptr [eax]
 004F5936    call       dword ptr [esi+1A8]
 004F593C    lea        ecx,[ebp-54]
 004F593F    mov        edx,4F5B08; 'COLUMN_NAME'
 004F5944    mov        eax,dword ptr [ebp-0C]
 004F5947    mov        esi,dword ptr [eax]
 004F5949    call       dword ptr [esi+74]
 004F594C    mov        ecx,dword ptr [ebp-54]
 004F594F    mov        eax,dword ptr [ebx]
 004F5951    mov        edx,4F5B08; 'COLUMN_NAME'
 004F5956    mov        esi,dword ptr [eax]
 004F5958    call       dword ptr [esi+1A8]
 004F595E    lea        ecx,[ebp-58]
 004F5961    mov        edx,4F5B1C; 'GRANTOR'
 004F5966    mov        eax,dword ptr [ebp-0C]
 004F5969    mov        esi,dword ptr [eax]
 004F596B    call       dword ptr [esi+74]
 004F596E    mov        ecx,dword ptr [ebp-58]
 004F5971    mov        eax,dword ptr [ebx]
 004F5973    mov        edx,4F5B1C; 'GRANTOR'
 004F5978    mov        esi,dword ptr [eax]
 004F597A    call       dword ptr [esi+1A8]
 004F5980    lea        ecx,[ebp-5C]
 004F5983    mov        edx,4F5B2C; 'GRANTEE'
 004F5988    mov        eax,dword ptr [ebp-0C]
 004F598B    mov        esi,dword ptr [eax]
 004F598D    call       dword ptr [esi+74]
 004F5990    mov        ecx,dword ptr [ebp-5C]
 004F5993    mov        eax,dword ptr [ebx]
 004F5995    mov        edx,4F5B2C; 'GRANTEE'
 004F599A    mov        esi,dword ptr [eax]
 004F599C    call       dword ptr [esi+1A8]
 004F59A2    lea        ecx,[ebp-60]
 004F59A5    mov        edx,4F5B3C; 'PRIVILEGE'
 004F59AA    mov        eax,dword ptr [ebp-0C]
 004F59AD    mov        esi,dword ptr [eax]
 004F59AF    call       dword ptr [esi+74]
 004F59B2    mov        ecx,dword ptr [ebp-60]
 004F59B5    mov        eax,dword ptr [ebx]
 004F59B7    mov        edx,4F5B3C; 'PRIVILEGE'
 004F59BC    mov        esi,dword ptr [eax]
 004F59BE    call       dword ptr [esi+1A8]
 004F59C4    lea        ecx,[ebp-64]
 004F59C7    mov        edx,4F5B50; 'IS_GRANTABLE'
 004F59CC    mov        eax,dword ptr [ebp-0C]
 004F59CF    mov        esi,dword ptr [eax]
 004F59D1    call       dword ptr [esi+74]
 004F59D4    mov        ecx,dword ptr [ebp-64]
 004F59D7    mov        eax,dword ptr [ebx]
 004F59D9    mov        edx,4F5B50; 'IS_GRANTABLE'
 004F59DE    mov        esi,dword ptr [eax]
 004F59E0    call       dword ptr [esi+1A8]
 004F59E6    mov        eax,dword ptr [ebx]
 004F59E8    mov        edx,dword ptr [eax]
 004F59EA    call       dword ptr [edx+1D0]
 004F59F0    mov        eax,dword ptr [ebp-0C]
 004F59F3    mov        edx,dword ptr [eax]
 004F59F5    call       dword ptr [edx+0C]
 004F59F8    test       al,al
<004F59FA    jne        004F58CC
 004F5A00    mov        eax,dword ptr [ebp-0C]
 004F5A03    mov        edx,dword ptr [eax]
 004F5A05    call       dword ptr [edx+10]
 004F5A08    mov        eax,dword ptr [ebx]
 004F5A0A    mov        edx,dword ptr [eax]
 004F5A0C    call       dword ptr [edx+0E4]
 004F5A12    xor        eax,eax
 004F5A14    pop        edx
 004F5A15    pop        ecx
 004F5A16    pop        ecx
 004F5A17    mov        dword ptr fs:[eax],edx
 004F5A1A    push       4F5A59
 004F5A1F    lea        eax,[ebp-64]
 004F5A22    mov        edx,8
 004F5A27    call       @LStrArrayClr
 004F5A2C    lea        eax,[ebp-44]
 004F5A2F    call       @IntfClear
 004F5A34    lea        eax,[ebp-40]
 004F5A37    mov        edx,4
 004F5A3C    call       @LStrArrayClr
 004F5A41    lea        eax,[ebp-10]
 004F5A44    call       @LStrClr
 004F5A49    lea        eax,[ebp-0C]
 004F5A4C    call       @IntfClear
 004F5A51    ret
<004F5A52    jmp        @HandleFinally
<004F5A57    jmp        004F5A1F
 004F5A59    pop        esi
 004F5A5A    pop        ebx
 004F5A5B    mov        esp,ebp
 004F5A5D    pop        ebp
 004F5A5E    ret        0C
*}
//end;

//004F5B60
//procedure sub_004F5B60(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F5B60    push       ebp
 004F5B61    mov        ebp,esp
 004F5B63    push       ecx
 004F5B64    mov        ecx,0A
 004F5B69    push       0
 004F5B6B    push       0
 004F5B6D    dec        ecx
<004F5B6E    jne        004F5B69
 004F5B70    xchg       ecx,dword ptr [ebp-4]
 004F5B73    push       ebx
 004F5B74    push       esi
 004F5B75    mov        dword ptr [ebp-8],ecx
 004F5B78    mov        dword ptr [ebp-4],edx
 004F5B7B    mov        esi,eax
 004F5B7D    mov        ebx,dword ptr [ebp+8]
 004F5B80    xor        eax,eax
 004F5B82    push       ebp
 004F5B83    push       4F5D7D
 004F5B88    push       dword ptr fs:[eax]
 004F5B8B    mov        dword ptr fs:[eax],esp
 004F5B8E    mov        ecx,ebx
 004F5B90    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 004F5B96    mov        edx,dword ptr [edx]
 004F5B98    mov        eax,esi
 004F5B9A    call       004D8E7C
 004F5B9F    lea        eax,[ebp-10]
 004F5BA2    push       eax
 004F5BA3    lea        ecx,[ebp-2C]
 004F5BA6    mov        dl,27
 004F5BA8    mov        eax,dword ptr [ebp+0C]
 004F5BAB    call       004D31AC
 004F5BB0    mov        eax,dword ptr [ebp-2C]
 004F5BB3    mov        dword ptr [ebp-28],eax
 004F5BB6    mov        byte ptr [ebp-24],0B
 004F5BBA    lea        ecx,[ebp-30]
 004F5BBD    mov        dl,27
 004F5BBF    mov        eax,dword ptr [ebp-8]
 004F5BC2    call       004D31AC
 004F5BC7    mov        eax,dword ptr [ebp-30]
 004F5BCA    mov        dword ptr [ebp-20],eax
 004F5BCD    mov        byte ptr [ebp-1C],0B
 004F5BD1    lea        ecx,[ebp-34]
 004F5BD4    mov        dl,27
 004F5BD6    mov        eax,dword ptr [ebp-4]
 004F5BD9    call       004D31AC
 004F5BDE    mov        eax,dword ptr [ebp-34]
 004F5BE1    mov        dword ptr [ebp-18],eax
 004F5BE4    mov        byte ptr [ebp-14],0B
 004F5BE8    lea        edx,[ebp-28]
 004F5BEB    mov        ecx,2
 004F5BF0    mov        eax,4F5D94; 'exec sp_table_privileges %s, %s, %s'
 004F5BF5    call       Format
 004F5BFA    mov        eax,dword ptr [ebp-10]
 004F5BFD    push       eax
 004F5BFE    lea        edx,[ebp-38]
 004F5C01    mov        eax,esi
 004F5C03    call       004F748C
 004F5C08    mov        eax,dword ptr [ebp-38]
 004F5C0B    lea        ecx,[ebp-0C]
 004F5C0E    pop        edx
 004F5C0F    mov        esi,dword ptr [eax]
 004F5C11    call       dword ptr [esi+0C]
>004F5C14    jmp        004F5D1B
 004F5C19    mov        eax,dword ptr [ebx]
 004F5C1B    mov        edx,dword ptr [eax]
 004F5C1D    call       dword ptr [edx+1E4]
 004F5C23    lea        ecx,[ebp-3C]
 004F5C26    mov        edx,4F5DC0; 'TABLE_QUALIFIER'
 004F5C2B    mov        eax,dword ptr [ebp-0C]
 004F5C2E    mov        esi,dword ptr [eax]
 004F5C30    call       dword ptr [esi+74]
 004F5C33    mov        ecx,dword ptr [ebp-3C]
 004F5C36    mov        eax,dword ptr [ebx]
 004F5C38    mov        edx,4F5DD8; 'TABLE_CAT'
 004F5C3D    mov        esi,dword ptr [eax]
 004F5C3F    call       dword ptr [esi+1A8]
 004F5C45    lea        ecx,[ebp-40]
 004F5C48    mov        edx,4F5DEC; 'TABLE_OWNER'
 004F5C4D    mov        eax,dword ptr [ebp-0C]
 004F5C50    mov        esi,dword ptr [eax]
 004F5C52    call       dword ptr [esi+74]
 004F5C55    mov        ecx,dword ptr [ebp-40]
 004F5C58    mov        eax,dword ptr [ebx]
 004F5C5A    mov        edx,4F5E00; 'TABLE_SCHEM'
 004F5C5F    mov        esi,dword ptr [eax]
 004F5C61    call       dword ptr [esi+1A8]
 004F5C67    lea        ecx,[ebp-44]
 004F5C6A    mov        edx,4F5E14; 'TABLE_NAME'
 004F5C6F    mov        eax,dword ptr [ebp-0C]
 004F5C72    mov        esi,dword ptr [eax]
 004F5C74    call       dword ptr [esi+74]
 004F5C77    mov        ecx,dword ptr [ebp-44]
 004F5C7A    mov        eax,dword ptr [ebx]
 004F5C7C    mov        edx,4F5E14; 'TABLE_NAME'
 004F5C81    mov        esi,dword ptr [eax]
 004F5C83    call       dword ptr [esi+1A8]
 004F5C89    lea        ecx,[ebp-48]
 004F5C8C    mov        edx,4F5E28; 'GRANTOR'
 004F5C91    mov        eax,dword ptr [ebp-0C]
 004F5C94    mov        esi,dword ptr [eax]
 004F5C96    call       dword ptr [esi+74]
 004F5C99    mov        ecx,dword ptr [ebp-48]
 004F5C9C    mov        eax,dword ptr [ebx]
 004F5C9E    mov        edx,4F5E28; 'GRANTOR'
 004F5CA3    mov        esi,dword ptr [eax]
 004F5CA5    call       dword ptr [esi+1A8]
 004F5CAB    lea        ecx,[ebp-4C]
 004F5CAE    mov        edx,4F5E38; 'GRANTEE'
 004F5CB3    mov        eax,dword ptr [ebp-0C]
 004F5CB6    mov        esi,dword ptr [eax]
 004F5CB8    call       dword ptr [esi+74]
 004F5CBB    mov        ecx,dword ptr [ebp-4C]
 004F5CBE    mov        eax,dword ptr [ebx]
 004F5CC0    mov        edx,4F5E38; 'GRANTEE'
 004F5CC5    mov        esi,dword ptr [eax]
 004F5CC7    call       dword ptr [esi+1A8]
 004F5CCD    lea        ecx,[ebp-50]
 004F5CD0    mov        edx,4F5E48; 'PRIVILEGE'
 004F5CD5    mov        eax,dword ptr [ebp-0C]
 004F5CD8    mov        esi,dword ptr [eax]
 004F5CDA    call       dword ptr [esi+74]
 004F5CDD    mov        ecx,dword ptr [ebp-50]
 004F5CE0    mov        eax,dword ptr [ebx]
 004F5CE2    mov        edx,4F5E48; 'PRIVILEGE'
 004F5CE7    mov        esi,dword ptr [eax]
 004F5CE9    call       dword ptr [esi+1A8]
 004F5CEF    lea        ecx,[ebp-54]
 004F5CF2    mov        edx,4F5E5C; 'IS_GRANTABLE'
 004F5CF7    mov        eax,dword ptr [ebp-0C]
 004F5CFA    mov        esi,dword ptr [eax]
 004F5CFC    call       dword ptr [esi+74]
 004F5CFF    mov        ecx,dword ptr [ebp-54]
 004F5D02    mov        eax,dword ptr [ebx]
 004F5D04    mov        edx,4F5E5C; 'IS_GRANTABLE'
 004F5D09    mov        esi,dword ptr [eax]
 004F5D0B    call       dword ptr [esi+1A8]
 004F5D11    mov        eax,dword ptr [ebx]
 004F5D13    mov        edx,dword ptr [eax]
 004F5D15    call       dword ptr [edx+1D0]
 004F5D1B    mov        eax,dword ptr [ebp-0C]
 004F5D1E    mov        edx,dword ptr [eax]
 004F5D20    call       dword ptr [edx+0C]
 004F5D23    test       al,al
<004F5D25    jne        004F5C19
 004F5D2B    mov        eax,dword ptr [ebp-0C]
 004F5D2E    mov        edx,dword ptr [eax]
 004F5D30    call       dword ptr [edx+10]
 004F5D33    mov        eax,dword ptr [ebx]
 004F5D35    mov        edx,dword ptr [eax]
 004F5D37    call       dword ptr [edx+0E4]
 004F5D3D    xor        eax,eax
 004F5D3F    pop        edx
 004F5D40    pop        ecx
 004F5D41    pop        ecx
 004F5D42    mov        dword ptr fs:[eax],edx
 004F5D45    push       4F5D84
 004F5D4A    lea        eax,[ebp-54]
 004F5D4D    mov        edx,7
 004F5D52    call       @LStrArrayClr
 004F5D57    lea        eax,[ebp-38]
 004F5D5A    call       @IntfClear
 004F5D5F    lea        eax,[ebp-34]
 004F5D62    mov        edx,3
 004F5D67    call       @LStrArrayClr
 004F5D6C    lea        eax,[ebp-10]
 004F5D6F    call       @LStrClr
 004F5D74    lea        eax,[ebp-0C]
 004F5D77    call       @IntfClear
 004F5D7C    ret
<004F5D7D    jmp        @HandleFinally
<004F5D82    jmp        004F5D4A
 004F5D84    pop        esi
 004F5D85    pop        ebx
 004F5D86    mov        esp,ebp
 004F5D88    pop        ebp
 004F5D89    ret        8
*}
//end;

//004F5E6C
//procedure sub_004F5E6C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F5E6C    push       ebp
 004F5E6D    mov        ebp,esp
 004F5E6F    add        esp,0FFFFFFB4
 004F5E72    push       ebx
 004F5E73    push       esi
 004F5E74    xor        ebx,ebx
 004F5E76    mov        dword ptr [ebp-4C],ebx
 004F5E79    mov        dword ptr [ebp-48],ebx
 004F5E7C    mov        dword ptr [ebp-14],ebx
 004F5E7F    mov        dword ptr [ebp-44],ebx
 004F5E82    mov        dword ptr [ebp-38],ebx
 004F5E85    mov        dword ptr [ebp-3C],ebx
 004F5E88    mov        dword ptr [ebp-40],ebx
 004F5E8B    mov        dword ptr [ebp-0C],ebx
 004F5E8E    mov        dword ptr [ebp-10],ebx
 004F5E91    mov        dword ptr [ebp-8],ecx
 004F5E94    mov        dword ptr [ebp-4],edx
 004F5E97    mov        esi,eax
 004F5E99    mov        ebx,dword ptr [ebp+8]
 004F5E9C    xor        eax,eax
 004F5E9E    push       ebp
 004F5E9F    push       4F60DB
 004F5EA4    push       dword ptr fs:[eax]
 004F5EA7    mov        dword ptr fs:[eax],esp
 004F5EAA    mov        ecx,ebx
 004F5EAC    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 004F5EB2    mov        edx,dword ptr [edx]
 004F5EB4    mov        eax,esi
 004F5EB6    call       004D8E7C
 004F5EBB    lea        eax,[ebp-0C]
 004F5EBE    mov        edx,4F60F4; ''V''
 004F5EC3    call       @LStrLAsg
 004F5EC8    lea        eax,[ebp-14]
 004F5ECB    push       eax
 004F5ECC    lea        ecx,[ebp-38]
 004F5ECF    mov        dl,27
 004F5ED1    mov        eax,dword ptr [ebp+0C]
 004F5ED4    call       004D31AC
 004F5ED9    mov        eax,dword ptr [ebp-38]
 004F5EDC    mov        dword ptr [ebp-34],eax
 004F5EDF    mov        byte ptr [ebp-30],0B
 004F5EE3    lea        ecx,[ebp-3C]
 004F5EE6    mov        dl,27
 004F5EE8    mov        eax,dword ptr [ebp-8]
 004F5EEB    call       004D31AC
 004F5EF0    mov        eax,dword ptr [ebp-3C]
 004F5EF3    mov        dword ptr [ebp-2C],eax
 004F5EF6    mov        byte ptr [ebp-28],0B
 004F5EFA    lea        ecx,[ebp-40]
 004F5EFD    mov        dl,27
 004F5EFF    mov        eax,dword ptr [ebp-4]
 004F5F02    call       004D31AC
 004F5F07    mov        eax,dword ptr [ebp-40]
 004F5F0A    mov        dword ptr [ebp-24],eax
 004F5F0D    mov        byte ptr [ebp-20],0B
 004F5F11    mov        eax,dword ptr [ebp-0C]
 004F5F14    mov        dword ptr [ebp-1C],eax
 004F5F17    mov        byte ptr [ebp-18],0B
 004F5F1B    lea        edx,[ebp-34]
 004F5F1E    mov        ecx,3
 004F5F23    mov        eax,4F6100; 'exec sp_special_columns %s, %s, %s, %s'
 004F5F28    call       Format
 004F5F2D    mov        eax,dword ptr [ebp-14]
 004F5F30    push       eax
 004F5F31    lea        edx,[ebp-44]
 004F5F34    mov        eax,esi
 004F5F36    call       004F748C
 004F5F3B    mov        eax,dword ptr [ebp-44]
 004F5F3E    lea        ecx,[ebp-10]
 004F5F41    pop        edx
 004F5F42    mov        esi,dword ptr [eax]
 004F5F44    call       dword ptr [esi+0C]
>004F5F47    jmp        004F6071
 004F5F4C    mov        eax,dword ptr [ebx]
 004F5F4E    mov        edx,dword ptr [eax]
 004F5F50    call       dword ptr [edx+1E4]
 004F5F56    mov        edx,4F6130; 'SCOPE'
 004F5F5B    mov        eax,dword ptr [ebp-10]
 004F5F5E    mov        ecx,dword ptr [eax]
 004F5F60    call       dword ptr [ecx+84]
 004F5F66    mov        ecx,eax
 004F5F68    mov        eax,dword ptr [ebx]
 004F5F6A    mov        edx,4F6130; 'SCOPE'
 004F5F6F    mov        esi,dword ptr [eax]
 004F5F71    call       dword ptr [esi+18C]
 004F5F77    lea        ecx,[ebp-48]
 004F5F7A    mov        edx,4F6140; 'COLUMN_NAME'
 004F5F7F    mov        eax,dword ptr [ebp-10]
 004F5F82    mov        esi,dword ptr [eax]
 004F5F84    call       dword ptr [esi+74]
 004F5F87    mov        ecx,dword ptr [ebp-48]
 004F5F8A    mov        eax,dword ptr [ebx]
 004F5F8C    mov        edx,4F6140; 'COLUMN_NAME'
 004F5F91    mov        esi,dword ptr [eax]
 004F5F93    call       dword ptr [esi+1A8]
 004F5F99    mov        edx,4F6154; 'DATA_TYPE'
 004F5F9E    mov        eax,dword ptr [ebp-10]
 004F5FA1    mov        ecx,dword ptr [eax]
 004F5FA3    call       dword ptr [ecx+84]
 004F5FA9    call       004EF94C
 004F5FAE    xor        ecx,ecx
 004F5FB0    mov        cl,al
 004F5FB2    mov        eax,dword ptr [ebx]
 004F5FB4    mov        edx,4F6154; 'DATA_TYPE'
 004F5FB9    mov        esi,dword ptr [eax]
 004F5FBB    call       dword ptr [esi+18C]
 004F5FC1    lea        ecx,[ebp-4C]
 004F5FC4    mov        edx,4F6168; 'TYPE_NAME'
 004F5FC9    mov        eax,dword ptr [ebp-10]
 004F5FCC    mov        esi,dword ptr [eax]
 004F5FCE    call       dword ptr [esi+74]
 004F5FD1    mov        ecx,dword ptr [ebp-4C]
 004F5FD4    mov        eax,dword ptr [ebx]
 004F5FD6    mov        edx,4F6168; 'TYPE_NAME'
 004F5FDB    mov        esi,dword ptr [eax]
 004F5FDD    call       dword ptr [esi+1A8]
 004F5FE3    mov        edx,4F617C; 'LENGTH'
 004F5FE8    mov        eax,dword ptr [ebp-10]
 004F5FEB    mov        ecx,dword ptr [eax]
 004F5FED    call       dword ptr [ecx+88]
 004F5FF3    mov        ecx,eax
 004F5FF5    mov        eax,dword ptr [ebx]
 004F5FF7    mov        edx,4F618C; 'COLUMN_SIZE'
 004F5FFC    mov        esi,dword ptr [eax]
 004F5FFE    call       dword ptr [esi+190]
 004F6004    mov        edx,4F617C; 'LENGTH'
 004F6009    mov        eax,dword ptr [ebp-10]
 004F600C    mov        ecx,dword ptr [eax]
 004F600E    call       dword ptr [ecx+88]
 004F6014    mov        ecx,eax
 004F6016    mov        eax,dword ptr [ebx]
 004F6018    mov        edx,4F61A0; 'BUFFER_LENGTH'
 004F601D    mov        esi,dword ptr [eax]
 004F601F    call       dword ptr [esi+190]
 004F6025    mov        edx,4F61B8; 'SCALE'
 004F602A    mov        eax,dword ptr [ebp-10]
 004F602D    mov        ecx,dword ptr [eax]
 004F602F    call       dword ptr [ecx+88]
 004F6035    mov        ecx,eax
 004F6037    mov        eax,dword ptr [ebx]
 004F6039    mov        edx,4F61C8; 'DECIMAL_DIGITS'
 004F603E    mov        esi,dword ptr [eax]
 004F6040    call       dword ptr [esi+190]
 004F6046    mov        edx,4F61E0; 'PSEUDO_COLUMN'
 004F604B    mov        eax,dword ptr [ebp-10]
 004F604E    mov        ecx,dword ptr [eax]
 004F6050    call       dword ptr [ecx+84]
 004F6056    mov        ecx,eax
 004F6058    mov        eax,dword ptr [ebx]
 004F605A    mov        edx,4F61E0; 'PSEUDO_COLUMN'
 004F605F    mov        esi,dword ptr [eax]
 004F6061    call       dword ptr [esi+18C]
 004F6067    mov        eax,dword ptr [ebx]
 004F6069    mov        edx,dword ptr [eax]
 004F606B    call       dword ptr [edx+1D0]
 004F6071    mov        eax,dword ptr [ebp-10]
 004F6074    mov        edx,dword ptr [eax]
 004F6076    call       dword ptr [edx+0C]
 004F6079    test       al,al
<004F607B    jne        004F5F4C
 004F6081    mov        eax,dword ptr [ebp-10]
 004F6084    mov        edx,dword ptr [eax]
 004F6086    call       dword ptr [edx+10]
 004F6089    mov        eax,dword ptr [ebx]
 004F608B    mov        edx,dword ptr [eax]
 004F608D    call       dword ptr [edx+0E4]
 004F6093    xor        eax,eax
 004F6095    pop        edx
 004F6096    pop        ecx
 004F6097    pop        ecx
 004F6098    mov        dword ptr fs:[eax],edx
 004F609B    push       4F60E2
 004F60A0    lea        eax,[ebp-4C]
 004F60A3    mov        edx,2
 004F60A8    call       @LStrArrayClr
 004F60AD    lea        eax,[ebp-44]
 004F60B0    call       @IntfClear
 004F60B5    lea        eax,[ebp-40]
 004F60B8    mov        edx,3
 004F60BD    call       @LStrArrayClr
 004F60C2    lea        eax,[ebp-14]
 004F60C5    call       @LStrClr
 004F60CA    lea        eax,[ebp-10]
 004F60CD    call       @IntfClear
 004F60D2    lea        eax,[ebp-0C]
 004F60D5    call       @LStrClr
 004F60DA    ret
<004F60DB    jmp        @HandleFinally
<004F60E0    jmp        004F60A0
 004F60E2    pop        esi
 004F60E3    pop        ebx
 004F60E4    mov        esp,ebp
 004F60E6    pop        ebp
 004F60E7    ret        8
*}
//end;

//004F61F0
//procedure sub_004F61F0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F61F0    push       ebp
 004F61F1    mov        ebp,esp
 004F61F3    push       ecx
 004F61F4    mov        ecx,9
 004F61F9    push       0
 004F61FB    push       0
 004F61FD    dec        ecx
<004F61FE    jne        004F61F9
 004F6200    xchg       ecx,dword ptr [ebp-4]
 004F6203    push       ebx
 004F6204    push       esi
 004F6205    mov        dword ptr [ebp-8],ecx
 004F6208    mov        dword ptr [ebp-4],edx
 004F620B    mov        esi,eax
 004F620D    mov        ebx,dword ptr [ebp+8]
 004F6210    xor        eax,eax
 004F6212    push       ebp
 004F6213    push       4F63EA
 004F6218    push       dword ptr fs:[eax]
 004F621B    mov        dword ptr fs:[eax],esp
 004F621E    mov        ecx,ebx
 004F6220    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 004F6226    mov        edx,dword ptr [edx]
 004F6228    mov        eax,esi
 004F622A    call       004D8E7C
 004F622F    lea        eax,[ebp-10]
 004F6232    push       eax
 004F6233    lea        ecx,[ebp-2C]
 004F6236    mov        dl,27
 004F6238    mov        eax,dword ptr [ebp+0C]
 004F623B    call       004D31AC
 004F6240    mov        eax,dword ptr [ebp-2C]
 004F6243    mov        dword ptr [ebp-28],eax
 004F6246    mov        byte ptr [ebp-24],0B
 004F624A    lea        ecx,[ebp-30]
 004F624D    mov        dl,27
 004F624F    mov        eax,dword ptr [ebp-8]
 004F6252    call       004D31AC
 004F6257    mov        eax,dword ptr [ebp-30]
 004F625A    mov        dword ptr [ebp-20],eax
 004F625D    mov        byte ptr [ebp-1C],0B
 004F6261    lea        ecx,[ebp-34]
 004F6264    mov        dl,27
 004F6266    mov        eax,dword ptr [ebp-4]
 004F6269    call       004D31AC
 004F626E    mov        eax,dword ptr [ebp-34]
 004F6271    mov        dword ptr [ebp-18],eax
 004F6274    mov        byte ptr [ebp-14],0B
 004F6278    lea        edx,[ebp-28]
 004F627B    mov        ecx,2
 004F6280    mov        eax,4F6404; 'exec sp_pkeys %s, %s, %s'
 004F6285    call       Format
 004F628A    mov        eax,dword ptr [ebp-10]
 004F628D    push       eax
 004F628E    lea        edx,[ebp-38]
 004F6291    mov        eax,esi
 004F6293    call       004F748C
 004F6298    mov        eax,dword ptr [ebp-38]
 004F629B    lea        ecx,[ebp-0C]
 004F629E    pop        edx
 004F629F    mov        esi,dword ptr [eax]
 004F62A1    call       dword ptr [esi+0C]
>004F62A4    jmp        004F6388
 004F62A9    mov        eax,dword ptr [ebx]
 004F62AB    mov        edx,dword ptr [eax]
 004F62AD    call       dword ptr [edx+1E4]
 004F62B3    lea        ecx,[ebp-3C]
 004F62B6    mov        edx,4F6428; 'TABLE_QUALIFIER'
 004F62BB    mov        eax,dword ptr [ebp-0C]
 004F62BE    mov        esi,dword ptr [eax]
 004F62C0    call       dword ptr [esi+74]
 004F62C3    mov        ecx,dword ptr [ebp-3C]
 004F62C6    mov        eax,dword ptr [ebx]
 004F62C8    mov        edx,4F6440; 'TABLE_CAT'
 004F62CD    mov        esi,dword ptr [eax]
 004F62CF    call       dword ptr [esi+1A8]
 004F62D5    lea        ecx,[ebp-40]
 004F62D8    mov        edx,4F6454; 'TABLE_OWNER'
 004F62DD    mov        eax,dword ptr [ebp-0C]
 004F62E0    mov        esi,dword ptr [eax]
 004F62E2    call       dword ptr [esi+74]
 004F62E5    mov        ecx,dword ptr [ebp-40]
 004F62E8    mov        eax,dword ptr [ebx]
 004F62EA    mov        edx,4F6468; 'TABLE_SCHEM'
 004F62EF    mov        esi,dword ptr [eax]
 004F62F1    call       dword ptr [esi+1A8]
 004F62F7    lea        ecx,[ebp-44]
 004F62FA    mov        edx,4F647C; 'TABLE_NAME'
 004F62FF    mov        eax,dword ptr [ebp-0C]
 004F6302    mov        esi,dword ptr [eax]
 004F6304    call       dword ptr [esi+74]
 004F6307    mov        ecx,dword ptr [ebp-44]
 004F630A    mov        eax,dword ptr [ebx]
 004F630C    mov        edx,4F647C; 'TABLE_NAME'
 004F6311    mov        esi,dword ptr [eax]
 004F6313    call       dword ptr [esi+1A8]
 004F6319    lea        ecx,[ebp-48]
 004F631C    mov        edx,4F6490; 'COLUMN_NAME'
 004F6321    mov        eax,dword ptr [ebp-0C]
 004F6324    mov        esi,dword ptr [eax]
 004F6326    call       dword ptr [esi+74]
 004F6329    mov        ecx,dword ptr [ebp-48]
 004F632C    mov        eax,dword ptr [ebx]
 004F632E    mov        edx,4F6490; 'COLUMN_NAME'
 004F6333    mov        esi,dword ptr [eax]
 004F6335    call       dword ptr [esi+1A8]
 004F633B    mov        edx,4F64A4; 'KEY_SEQ'
 004F6340    mov        eax,dword ptr [ebp-0C]
 004F6343    mov        ecx,dword ptr [eax]
 004F6345    call       dword ptr [ecx+84]
 004F634B    mov        ecx,eax
 004F634D    mov        eax,dword ptr [ebx]
 004F634F    mov        edx,4F64A4; 'KEY_SEQ'
 004F6354    mov        esi,dword ptr [eax]
 004F6356    call       dword ptr [esi+18C]
 004F635C    lea        ecx,[ebp-4C]
 004F635F    mov        edx,4F64B4; 'PK_NAME'
 004F6364    mov        eax,dword ptr [ebp-0C]
 004F6367    mov        esi,dword ptr [eax]
 004F6369    call       dword ptr [esi+74]
 004F636C    mov        ecx,dword ptr [ebp-4C]
 004F636F    mov        eax,dword ptr [ebx]
 004F6371    mov        edx,4F64B4; 'PK_NAME'
 004F6376    mov        esi,dword ptr [eax]
 004F6378    call       dword ptr [esi+1A8]
 004F637E    mov        eax,dword ptr [ebx]
 004F6380    mov        edx,dword ptr [eax]
 004F6382    call       dword ptr [edx+1D0]
 004F6388    mov        eax,dword ptr [ebp-0C]
 004F638B    mov        edx,dword ptr [eax]
 004F638D    call       dword ptr [edx+0C]
 004F6390    test       al,al
<004F6392    jne        004F62A9
 004F6398    mov        eax,dword ptr [ebp-0C]
 004F639B    mov        edx,dword ptr [eax]
 004F639D    call       dword ptr [edx+10]
 004F63A0    mov        eax,dword ptr [ebx]
 004F63A2    mov        edx,dword ptr [eax]
 004F63A4    call       dword ptr [edx+0E4]
 004F63AA    xor        eax,eax
 004F63AC    pop        edx
 004F63AD    pop        ecx
 004F63AE    pop        ecx
 004F63AF    mov        dword ptr fs:[eax],edx
 004F63B2    push       4F63F1
 004F63B7    lea        eax,[ebp-4C]
 004F63BA    mov        edx,5
 004F63BF    call       @LStrArrayClr
 004F63C4    lea        eax,[ebp-38]
 004F63C7    call       @IntfClear
 004F63CC    lea        eax,[ebp-34]
 004F63CF    mov        edx,3
 004F63D4    call       @LStrArrayClr
 004F63D9    lea        eax,[ebp-10]
 004F63DC    call       @LStrClr
 004F63E1    lea        eax,[ebp-0C]
 004F63E4    call       @IntfClear
 004F63E9    ret
<004F63EA    jmp        @HandleFinally
<004F63EF    jmp        004F63B7
 004F63F1    pop        esi
 004F63F2    pop        ebx
 004F63F3    mov        esp,ebp
 004F63F5    pop        ebp
 004F63F6    ret        8
*}
//end;

//004F64BC
//procedure sub_004F64BC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F64BC    push       ebp
 004F64BD    mov        ebp,esp
 004F64BF    push       ecx
 004F64C0    push       ebx
 004F64C1    push       esi
 004F64C2    mov        dword ptr [ebp-4],ecx
 004F64C5    mov        esi,edx
 004F64C7    mov        ebx,eax
 004F64C9    push       0
 004F64CB    push       esi
 004F64CC    mov        eax,dword ptr [ebp-4]
 004F64CF    push       eax
 004F64D0    mov        eax,dword ptr [ebp+0C]
 004F64D3    push       eax
 004F64D4    mov        eax,dword ptr [ebp+8]
 004F64D7    push       eax
 004F64D8    xor        ecx,ecx
 004F64DA    xor        edx,edx
 004F64DC    mov        eax,ebx
 004F64DE    mov        ebx,dword ptr [eax]
 004F64E0    call       dword ptr [ebx+30]; TZMsSqlDatabaseMetadata.sub_004F651C
 004F64E3    pop        esi
 004F64E4    pop        ebx
 004F64E5    pop        ecx
 004F64E6    pop        ebp
 004F64E7    ret        8
*}
//end;

//004F64EC
//procedure sub_004F64EC(?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F64EC    push       ebp
 004F64ED    mov        ebp,esp
 004F64EF    push       ecx
 004F64F0    push       ebx
 004F64F1    push       esi
 004F64F2    mov        dword ptr [ebp-4],ecx
 004F64F5    mov        esi,edx
 004F64F7    mov        ebx,eax
 004F64F9    mov        eax,dword ptr [ebp+0C]
 004F64FC    push       eax
 004F64FD    push       0
 004F64FF    push       0
 004F6501    push       0
 004F6503    mov        eax,dword ptr [ebp+8]
 004F6506    push       eax
 004F6507    mov        ecx,dword ptr [ebp-4]
 004F650A    mov        edx,esi
 004F650C    mov        eax,ebx
 004F650E    mov        ebx,dword ptr [eax]
 004F6510    call       dword ptr [ebx+30]; TZMsSqlDatabaseMetadata.sub_004F651C
 004F6513    pop        esi
 004F6514    pop        ebx
 004F6515    pop        ecx
 004F6516    pop        ebp
 004F6517    ret        8
*}
//end;

//004F651C
//procedure sub_004F651C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F651C    push       ebp
 004F651D    mov        ebp,esp
 004F651F    push       ecx
 004F6520    mov        ecx,10
 004F6525    push       0
 004F6527    push       0
 004F6529    dec        ecx
<004F652A    jne        004F6525
 004F652C    xchg       ecx,dword ptr [ebp-4]
 004F652F    push       ebx
 004F6530    push       esi
 004F6531    mov        dword ptr [ebp-8],ecx
 004F6534    mov        dword ptr [ebp-4],edx
 004F6537    mov        esi,eax
 004F6539    mov        ebx,dword ptr [ebp+8]
 004F653C    xor        eax,eax
 004F653E    push       ebp
 004F653F    push       4F6861
 004F6544    push       dword ptr fs:[eax]
 004F6547    mov        dword ptr fs:[eax],esp
 004F654A    mov        ecx,ebx
 004F654C    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 004F6552    mov        edx,dword ptr [edx]
 004F6554    mov        eax,esi
 004F6556    call       004D8E7C
 004F655B    lea        eax,[ebp-10]
 004F655E    push       eax
 004F655F    lea        ecx,[ebp-44]
 004F6562    mov        dl,27
 004F6564    mov        eax,dword ptr [ebp+18]
 004F6567    call       004D31AC
 004F656C    mov        eax,dword ptr [ebp-44]
 004F656F    mov        dword ptr [ebp-40],eax
 004F6572    mov        byte ptr [ebp-3C],0B
 004F6576    lea        ecx,[ebp-48]
 004F6579    mov        dl,27
 004F657B    mov        eax,dword ptr [ebp-8]
 004F657E    call       004D31AC
 004F6583    mov        eax,dword ptr [ebp-48]
 004F6586    mov        dword ptr [ebp-38],eax
 004F6589    mov        byte ptr [ebp-34],0B
 004F658D    lea        ecx,[ebp-4C]
 004F6590    mov        dl,27
 004F6592    mov        eax,dword ptr [ebp-4]
 004F6595    call       004D31AC
 004F659A    mov        eax,dword ptr [ebp-4C]
 004F659D    mov        dword ptr [ebp-30],eax
 004F65A0    mov        byte ptr [ebp-2C],0B
 004F65A4    lea        ecx,[ebp-50]
 004F65A7    mov        dl,27
 004F65A9    mov        eax,dword ptr [ebp+0C]
 004F65AC    call       004D31AC
 004F65B1    mov        eax,dword ptr [ebp-50]
 004F65B4    mov        dword ptr [ebp-28],eax
 004F65B7    mov        byte ptr [ebp-24],0B
 004F65BB    lea        ecx,[ebp-54]
 004F65BE    mov        dl,27
 004F65C0    mov        eax,dword ptr [ebp+10]
 004F65C3    call       004D31AC
 004F65C8    mov        eax,dword ptr [ebp-54]
 004F65CB    mov        dword ptr [ebp-20],eax
 004F65CE    mov        byte ptr [ebp-1C],0B
 004F65D2    lea        ecx,[ebp-58]
 004F65D5    mov        dl,27
 004F65D7    mov        eax,dword ptr [ebp+14]
 004F65DA    call       004D31AC
 004F65DF    mov        eax,dword ptr [ebp-58]
 004F65E2    mov        dword ptr [ebp-18],eax
 004F65E5    mov        byte ptr [ebp-14],0B
 004F65E9    lea        edx,[ebp-40]
 004F65EC    mov        ecx,5
 004F65F1    mov        eax,4F6878; 'exec sp_fkeys %s, %s, %s, %s, %s, %s'
 004F65F6    call       Format
 004F65FB    mov        eax,dword ptr [ebp-10]
 004F65FE    push       eax
 004F65FF    lea        edx,[ebp-5C]
 004F6602    mov        eax,esi
 004F6604    call       004F748C
 004F6609    mov        eax,dword ptr [ebp-5C]
 004F660C    lea        ecx,[ebp-0C]
 004F660F    pop        edx
 004F6610    mov        esi,dword ptr [eax]
 004F6612    call       dword ptr [esi+0C]
>004F6615    jmp        004F67FC
 004F661A    mov        eax,dword ptr [ebx]
 004F661C    mov        edx,dword ptr [eax]
 004F661E    call       dword ptr [edx+1E4]
 004F6624    lea        ecx,[ebp-60]
 004F6627    mov        edx,4F68A8; 'PKTABLE_QUALIFIER'
 004F662C    mov        eax,dword ptr [ebp-0C]
 004F662F    mov        esi,dword ptr [eax]
 004F6631    call       dword ptr [esi+74]
 004F6634    mov        ecx,dword ptr [ebp-60]
 004F6637    mov        eax,dword ptr [ebx]
 004F6639    mov        edx,4F68C4; 'PKTABLE_CAT'
 004F663E    mov        esi,dword ptr [eax]
 004F6640    call       dword ptr [esi+1A8]
 004F6646    lea        ecx,[ebp-64]
 004F6649    mov        edx,4F68D8; 'PKTABLE_OWNER'
 004F664E    mov        eax,dword ptr [ebp-0C]
 004F6651    mov        esi,dword ptr [eax]
 004F6653    call       dword ptr [esi+74]
 004F6656    mov        ecx,dword ptr [ebp-64]
 004F6659    mov        eax,dword ptr [ebx]
 004F665B    mov        edx,4F68F0; 'PKTABLE_SCHEM'
 004F6660    mov        esi,dword ptr [eax]
 004F6662    call       dword ptr [esi+1A8]
 004F6668    lea        ecx,[ebp-68]
 004F666B    mov        edx,4F6908; 'PKTABLE_NAME'
 004F6670    mov        eax,dword ptr [ebp-0C]
 004F6673    mov        esi,dword ptr [eax]
 004F6675    call       dword ptr [esi+74]
 004F6678    mov        ecx,dword ptr [ebp-68]
 004F667B    mov        eax,dword ptr [ebx]
 004F667D    mov        edx,4F6908; 'PKTABLE_NAME'
 004F6682    mov        esi,dword ptr [eax]
 004F6684    call       dword ptr [esi+1A8]
 004F668A    lea        ecx,[ebp-6C]
 004F668D    mov        edx,4F6920; 'PKCOLUMN_NAME'
 004F6692    mov        eax,dword ptr [ebp-0C]
 004F6695    mov        esi,dword ptr [eax]
 004F6697    call       dword ptr [esi+74]
 004F669A    mov        ecx,dword ptr [ebp-6C]
 004F669D    mov        eax,dword ptr [ebx]
 004F669F    mov        edx,4F6920; 'PKCOLUMN_NAME'
 004F66A4    mov        esi,dword ptr [eax]
 004F66A6    call       dword ptr [esi+1A8]
 004F66AC    lea        ecx,[ebp-70]
 004F66AF    mov        edx,4F6938; 'FKTABLE_QUALIFIER'
 004F66B4    mov        eax,dword ptr [ebp-0C]
 004F66B7    mov        esi,dword ptr [eax]
 004F66B9    call       dword ptr [esi+74]
 004F66BC    mov        ecx,dword ptr [ebp-70]
 004F66BF    mov        eax,dword ptr [ebx]
 004F66C1    mov        edx,4F6954; 'FKTABLE_CAT'
 004F66C6    mov        esi,dword ptr [eax]
 004F66C8    call       dword ptr [esi+1A8]
 004F66CE    lea        ecx,[ebp-74]
 004F66D1    mov        edx,4F6968; 'FKTABLE_OWNER'
 004F66D6    mov        eax,dword ptr [ebp-0C]
 004F66D9    mov        esi,dword ptr [eax]
 004F66DB    call       dword ptr [esi+74]
 004F66DE    mov        ecx,dword ptr [ebp-74]
 004F66E1    mov        eax,dword ptr [ebx]
 004F66E3    mov        edx,4F6980; 'FKTABLE_SCHEM'
 004F66E8    mov        esi,dword ptr [eax]
 004F66EA    call       dword ptr [esi+1A8]
 004F66F0    lea        ecx,[ebp-78]
 004F66F3    mov        edx,4F6998; 'FKTABLE_NAME'
 004F66F8    mov        eax,dword ptr [ebp-0C]
 004F66FB    mov        esi,dword ptr [eax]
 004F66FD    call       dword ptr [esi+74]
 004F6700    mov        ecx,dword ptr [ebp-78]
 004F6703    mov        eax,dword ptr [ebx]
 004F6705    mov        edx,4F6998; 'FKTABLE_NAME'
 004F670A    mov        esi,dword ptr [eax]
 004F670C    call       dword ptr [esi+1A8]
 004F6712    lea        ecx,[ebp-7C]
 004F6715    mov        edx,4F69B0; 'FKCOLUMN_NAME'
 004F671A    mov        eax,dword ptr [ebp-0C]
 004F671D    mov        esi,dword ptr [eax]
 004F671F    call       dword ptr [esi+74]
 004F6722    mov        ecx,dword ptr [ebp-7C]
 004F6725    mov        eax,dword ptr [ebx]
 004F6727    mov        edx,4F69B0; 'FKCOLUMN_NAME'
 004F672C    mov        esi,dword ptr [eax]
 004F672E    call       dword ptr [esi+1A8]
 004F6734    mov        edx,4F69C8; 'KEY_SEQ'
 004F6739    mov        eax,dword ptr [ebp-0C]
 004F673C    mov        ecx,dword ptr [eax]
 004F673E    call       dword ptr [ecx+84]
 004F6744    mov        ecx,eax
 004F6746    mov        eax,dword ptr [ebx]
 004F6748    mov        edx,4F69C8; 'KEY_SEQ'
 004F674D    mov        esi,dword ptr [eax]
 004F674F    call       dword ptr [esi+18C]
 004F6755    mov        edx,4F69D8; 'UPDATE_RULE'
 004F675A    mov        eax,dword ptr [ebp-0C]
 004F675D    mov        ecx,dword ptr [eax]
 004F675F    call       dword ptr [ecx+84]
 004F6765    mov        ecx,eax
 004F6767    mov        eax,dword ptr [ebx]
 004F6769    mov        edx,4F69D8; 'UPDATE_RULE'
 004F676E    mov        esi,dword ptr [eax]
 004F6770    call       dword ptr [esi+18C]
 004F6776    mov        edx,4F69EC; 'DELETE_RULE'
 004F677B    mov        eax,dword ptr [ebp-0C]
 004F677E    mov        ecx,dword ptr [eax]
 004F6780    call       dword ptr [ecx+84]
 004F6786    mov        ecx,eax
 004F6788    mov        eax,dword ptr [ebx]
 004F678A    mov        edx,4F69EC; 'DELETE_RULE'
 004F678F    mov        esi,dword ptr [eax]
 004F6791    call       dword ptr [esi+18C]
 004F6797    lea        ecx,[ebp-80]
 004F679A    mov        edx,4F6A00; 'FK_NAME'
 004F679F    mov        eax,dword ptr [ebp-0C]
 004F67A2    mov        esi,dword ptr [eax]
 004F67A4    call       dword ptr [esi+74]
 004F67A7    mov        ecx,dword ptr [ebp-80]
 004F67AA    mov        eax,dword ptr [ebx]
 004F67AC    mov        edx,4F6A00; 'FK_NAME'
 004F67B1    mov        esi,dword ptr [eax]
 004F67B3    call       dword ptr [esi+1A8]
 004F67B9    lea        ecx,[ebp-84]
 004F67BF    mov        edx,4F6A10; 'PK_NAME'
 004F67C4    mov        eax,dword ptr [ebp-0C]
 004F67C7    mov        esi,dword ptr [eax]
 004F67C9    call       dword ptr [esi+74]
 004F67CC    mov        ecx,dword ptr [ebp-84]
 004F67D2    mov        eax,dword ptr [ebx]
 004F67D4    mov        edx,4F6A10; 'PK_NAME'
 004F67D9    mov        esi,dword ptr [eax]
 004F67DB    call       dword ptr [esi+1A8]
 004F67E1    mov        eax,dword ptr [ebx]
 004F67E3    xor        ecx,ecx
 004F67E5    mov        edx,4F6A20; 'DEFERRABILITY'
 004F67EA    mov        esi,dword ptr [eax]
 004F67EC    call       dword ptr [esi+190]
 004F67F2    mov        eax,dword ptr [ebx]
 004F67F4    mov        edx,dword ptr [eax]
 004F67F6    call       dword ptr [edx+1D0]
 004F67FC    mov        eax,dword ptr [ebp-0C]
 004F67FF    mov        edx,dword ptr [eax]
 004F6801    call       dword ptr [edx+0C]
 004F6804    test       al,al
<004F6806    jne        004F661A
 004F680C    mov        eax,dword ptr [ebp-0C]
 004F680F    mov        edx,dword ptr [eax]
 004F6811    call       dword ptr [edx+10]
 004F6814    mov        eax,dword ptr [ebx]
 004F6816    mov        edx,dword ptr [eax]
 004F6818    call       dword ptr [edx+0E4]
 004F681E    xor        eax,eax
 004F6820    pop        edx
 004F6821    pop        ecx
 004F6822    pop        ecx
 004F6823    mov        dword ptr fs:[eax],edx
 004F6826    push       4F6868
 004F682B    lea        eax,[ebp-84]
 004F6831    mov        edx,0A
 004F6836    call       @LStrArrayClr
 004F683B    lea        eax,[ebp-5C]
 004F683E    call       @IntfClear
 004F6843    lea        eax,[ebp-58]
 004F6846    mov        edx,6
 004F684B    call       @LStrArrayClr
 004F6850    lea        eax,[ebp-10]
 004F6853    call       @LStrClr
 004F6858    lea        eax,[ebp-0C]
 004F685B    call       @IntfClear
 004F6860    ret
<004F6861    jmp        @HandleFinally
<004F6866    jmp        004F682B
 004F6868    pop        esi
 004F6869    pop        ebx
 004F686A    mov        esp,ebp
 004F686C    pop        ebp
 004F686D    ret        14
*}
//end;

//004F6A30
//procedure sub_004F6A30(?:?);
//begin
{*
 004F6A30    push       ebp
 004F6A31    mov        ebp,esp
 004F6A33    xor        ecx,ecx
 004F6A35    push       ecx
 004F6A36    push       ecx
 004F6A37    push       ecx
 004F6A38    push       ecx
 004F6A39    push       ecx
 004F6A3A    push       ecx
 004F6A3B    push       ecx
 004F6A3C    push       ebx
 004F6A3D    push       esi
 004F6A3E    mov        ebx,edx
 004F6A40    mov        esi,eax
 004F6A42    xor        eax,eax
 004F6A44    push       ebp
 004F6A45    push       4F6D53
 004F6A4A    push       dword ptr fs:[eax]
 004F6A4D    mov        dword ptr fs:[eax],esp
 004F6A50    mov        ecx,ebx
 004F6A52    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 004F6A58    mov        edx,dword ptr [edx]
 004F6A5A    mov        eax,esi
 004F6A5C    call       004D8E7C
 004F6A61    lea        edx,[ebp-8]
 004F6A64    mov        eax,esi
 004F6A66    call       004F748C
 004F6A6B    mov        eax,dword ptr [ebp-8]
 004F6A6E    lea        ecx,[ebp-4]
 004F6A71    mov        edx,4F6D68; 'exec sp_datatype_info'
 004F6A76    mov        esi,dword ptr [eax]
 004F6A78    call       dword ptr [esi+0C]
>004F6A7B    jmp        004F6D06
 004F6A80    mov        eax,dword ptr [ebx]
 004F6A82    mov        edx,dword ptr [eax]
 004F6A84    call       dword ptr [edx+1E4]
 004F6A8A    lea        ecx,[ebp-0C]
 004F6A8D    mov        edx,4F6D88; 'TYPE_NAME'
 004F6A92    mov        eax,dword ptr [ebp-4]
 004F6A95    mov        esi,dword ptr [eax]
 004F6A97    call       dword ptr [esi+74]
 004F6A9A    mov        ecx,dword ptr [ebp-0C]
 004F6A9D    mov        eax,dword ptr [ebx]
 004F6A9F    mov        edx,4F6D88; 'TYPE_NAME'
 004F6AA4    mov        esi,dword ptr [eax]
 004F6AA6    call       dword ptr [esi+1A8]
 004F6AAC    mov        edx,4F6D9C; 'DATA_TYPE'
 004F6AB1    mov        eax,dword ptr [ebp-4]
 004F6AB4    mov        ecx,dword ptr [eax]
 004F6AB6    call       dword ptr [ecx+84]
 004F6ABC    call       004EF94C
 004F6AC1    xor        ecx,ecx
 004F6AC3    mov        cl,al
 004F6AC5    mov        eax,dword ptr [ebx]
 004F6AC7    mov        edx,4F6D9C; 'DATA_TYPE'
 004F6ACC    mov        esi,dword ptr [eax]
 004F6ACE    call       dword ptr [esi+18C]
 004F6AD4    mov        edx,4F6DB0; 'PRECISION'
 004F6AD9    mov        eax,dword ptr [ebp-4]
 004F6ADC    mov        ecx,dword ptr [eax]
 004F6ADE    call       dword ptr [ecx+88]
 004F6AE4    mov        ecx,eax
 004F6AE6    mov        eax,dword ptr [ebx]
 004F6AE8    mov        edx,4F6DB0; 'PRECISION'
 004F6AED    mov        esi,dword ptr [eax]
 004F6AEF    call       dword ptr [esi+190]
 004F6AF5    lea        ecx,[ebp-10]
 004F6AF8    mov        edx,4F6DC4; 'LITERAL_PREFIX'
 004F6AFD    mov        eax,dword ptr [ebp-4]
 004F6B00    mov        esi,dword ptr [eax]
 004F6B02    call       dword ptr [esi+74]
 004F6B05    mov        ecx,dword ptr [ebp-10]
 004F6B08    mov        eax,dword ptr [ebx]
 004F6B0A    mov        edx,4F6DC4; 'LITERAL_PREFIX'
 004F6B0F    mov        esi,dword ptr [eax]
 004F6B11    call       dword ptr [esi+1A8]
 004F6B17    lea        ecx,[ebp-14]
 004F6B1A    mov        edx,4F6DDC; 'LITERAL_SUFFIX'
 004F6B1F    mov        eax,dword ptr [ebp-4]
 004F6B22    mov        esi,dword ptr [eax]
 004F6B24    call       dword ptr [esi+74]
 004F6B27    mov        ecx,dword ptr [ebp-14]
 004F6B2A    mov        eax,dword ptr [ebx]
 004F6B2C    mov        edx,4F6DDC; 'LITERAL_SUFFIX'
 004F6B31    mov        esi,dword ptr [eax]
 004F6B33    call       dword ptr [esi+1A8]
 004F6B39    lea        ecx,[ebp-18]
 004F6B3C    mov        edx,4F6DF4; 'CREATE_PARAMS'
 004F6B41    mov        eax,dword ptr [ebp-4]
 004F6B44    mov        esi,dword ptr [eax]
 004F6B46    call       dword ptr [esi+74]
 004F6B49    mov        ecx,dword ptr [ebp-18]
 004F6B4C    mov        eax,dword ptr [ebx]
 004F6B4E    mov        edx,4F6DF4; 'CREATE_PARAMS'
 004F6B53    mov        esi,dword ptr [eax]
 004F6B55    call       dword ptr [esi+1A8]
 004F6B5B    mov        edx,4F6E0C; 'NULLABLE'
 004F6B60    mov        eax,dword ptr [ebp-4]
 004F6B63    mov        ecx,dword ptr [eax]
 004F6B65    call       dword ptr [ecx+84]
 004F6B6B    mov        ecx,eax
 004F6B6D    mov        eax,dword ptr [ebx]
 004F6B6F    mov        edx,4F6E0C; 'NULLABLE'
 004F6B74    mov        esi,dword ptr [eax]
 004F6B76    call       dword ptr [esi+18C]
 004F6B7C    mov        edx,4F6E20; 'CASE_SENSITIVE'
 004F6B81    mov        eax,dword ptr [ebp-4]
 004F6B84    mov        ecx,dword ptr [eax]
 004F6B86    call       dword ptr [ecx+84]
 004F6B8C    cmp        ax,1
 004F6B90    sete       cl
 004F6B93    mov        eax,dword ptr [ebx]
 004F6B95    mov        edx,4F6E20; 'CASE_SENSITIVE'
 004F6B9A    mov        esi,dword ptr [eax]
 004F6B9C    call       dword ptr [esi+184]
 004F6BA2    mov        edx,4F6E38; 'SEARCHABLE'
 004F6BA7    mov        eax,dword ptr [ebp-4]
 004F6BAA    mov        ecx,dword ptr [eax]
 004F6BAC    call       dword ptr [ecx+84]
 004F6BB2    mov        ecx,eax
 004F6BB4    mov        eax,dword ptr [ebx]
 004F6BB6    mov        edx,4F6E38; 'SEARCHABLE'
 004F6BBB    mov        esi,dword ptr [eax]
 004F6BBD    call       dword ptr [esi+18C]
 004F6BC3    mov        edx,4F6E4C; 'UNSIGNED_ATTRIBUTE'
 004F6BC8    mov        eax,dword ptr [ebp-4]
 004F6BCB    mov        ecx,dword ptr [eax]
 004F6BCD    call       dword ptr [ecx+84]
 004F6BD3    cmp        ax,1
 004F6BD7    sete       cl
 004F6BDA    mov        eax,dword ptr [ebx]
 004F6BDC    mov        edx,4F6E4C; 'UNSIGNED_ATTRIBUTE'
 004F6BE1    mov        esi,dword ptr [eax]
 004F6BE3    call       dword ptr [esi+184]
 004F6BE9    mov        edx,4F6E68; 'MONEY'
 004F6BEE    mov        eax,dword ptr [ebp-4]
 004F6BF1    mov        ecx,dword ptr [eax]
 004F6BF3    call       dword ptr [ecx+84]
 004F6BF9    cmp        ax,1
 004F6BFD    sete       cl
 004F6C00    mov        eax,dword ptr [ebx]
 004F6C02    mov        edx,4F6E78; 'FIXED_PREC_SCALE'
 004F6C07    mov        esi,dword ptr [eax]
 004F6C09    call       dword ptr [esi+184]
 004F6C0F    mov        edx,4F6E94; 'AUTO_INCREMENT'
 004F6C14    mov        eax,dword ptr [ebp-4]
 004F6C17    mov        ecx,dword ptr [eax]
 004F6C19    call       dword ptr [ecx+84]
 004F6C1F    cmp        ax,1
 004F6C23    sete       cl
 004F6C26    mov        eax,dword ptr [ebx]
 004F6C28    mov        edx,4F6E94; 'AUTO_INCREMENT'
 004F6C2D    mov        esi,dword ptr [eax]
 004F6C2F    call       dword ptr [esi+184]
 004F6C35    lea        ecx,[ebp-1C]
 004F6C38    mov        edx,4F6EAC; 'LOCAL_TYPE_NAME'
 004F6C3D    mov        eax,dword ptr [ebp-4]
 004F6C40    mov        esi,dword ptr [eax]
 004F6C42    call       dword ptr [esi+74]
 004F6C45    mov        ecx,dword ptr [ebp-1C]
 004F6C48    mov        eax,dword ptr [ebx]
 004F6C4A    mov        edx,4F6EAC; 'LOCAL_TYPE_NAME'
 004F6C4F    mov        esi,dword ptr [eax]
 004F6C51    call       dword ptr [esi+1A8]
 004F6C57    mov        edx,4F6EC4; 'MINIMUM_SCALE'
 004F6C5C    mov        eax,dword ptr [ebp-4]
 004F6C5F    mov        ecx,dword ptr [eax]
 004F6C61    call       dword ptr [ecx+84]
 004F6C67    mov        ecx,eax
 004F6C69    mov        eax,dword ptr [ebx]
 004F6C6B    mov        edx,4F6EC4; 'MINIMUM_SCALE'
 004F6C70    mov        esi,dword ptr [eax]
 004F6C72    call       dword ptr [esi+18C]
 004F6C78    mov        edx,4F6EDC; 'MAXIMUM_SCALE'
 004F6C7D    mov        eax,dword ptr [ebp-4]
 004F6C80    mov        ecx,dword ptr [eax]
 004F6C82    call       dword ptr [ecx+84]
 004F6C88    mov        ecx,eax
 004F6C8A    mov        eax,dword ptr [ebx]
 004F6C8C    mov        edx,4F6EDC; 'MAXIMUM_SCALE'
 004F6C91    mov        esi,dword ptr [eax]
 004F6C93    call       dword ptr [esi+18C]
 004F6C99    mov        edx,4F6EF4; 'SQL_DATA_TYPE'
 004F6C9E    mov        eax,dword ptr [ebp-4]
 004F6CA1    mov        ecx,dword ptr [eax]
 004F6CA3    call       dword ptr [ecx+84]
 004F6CA9    mov        ecx,eax
 004F6CAB    mov        eax,dword ptr [ebx]
 004F6CAD    mov        edx,4F6EF4; 'SQL_DATA_TYPE'
 004F6CB2    mov        esi,dword ptr [eax]
 004F6CB4    call       dword ptr [esi+18C]
 004F6CBA    mov        edx,4F6F0C; 'SQL_DATETIME_SUB'
 004F6CBF    mov        eax,dword ptr [ebp-4]
 004F6CC2    mov        ecx,dword ptr [eax]
 004F6CC4    call       dword ptr [ecx+84]
 004F6CCA    mov        ecx,eax
 004F6CCC    mov        eax,dword ptr [ebx]
 004F6CCE    mov        edx,4F6F0C; 'SQL_DATETIME_SUB'
 004F6CD3    mov        esi,dword ptr [eax]
 004F6CD5    call       dword ptr [esi+18C]
 004F6CDB    mov        edx,4F6F28; 'NUM_PREC_RADIX'
 004F6CE0    mov        eax,dword ptr [ebp-4]
 004F6CE3    mov        ecx,dword ptr [eax]
 004F6CE5    call       dword ptr [ecx+84]
 004F6CEB    mov        ecx,eax
 004F6CED    mov        eax,dword ptr [ebx]
 004F6CEF    mov        edx,4F6F28; 'NUM_PREC_RADIX'
 004F6CF4    mov        esi,dword ptr [eax]
 004F6CF6    call       dword ptr [esi+18C]
 004F6CFC    mov        eax,dword ptr [ebx]
 004F6CFE    mov        edx,dword ptr [eax]
 004F6D00    call       dword ptr [edx+1D0]
 004F6D06    mov        eax,dword ptr [ebp-4]
 004F6D09    mov        edx,dword ptr [eax]
 004F6D0B    call       dword ptr [edx+0C]
 004F6D0E    test       al,al
<004F6D10    jne        004F6A80
 004F6D16    mov        eax,dword ptr [ebp-4]
 004F6D19    mov        edx,dword ptr [eax]
 004F6D1B    call       dword ptr [edx+10]
 004F6D1E    mov        eax,dword ptr [ebx]
 004F6D20    mov        edx,dword ptr [eax]
 004F6D22    call       dword ptr [edx+0E4]
 004F6D28    xor        eax,eax
 004F6D2A    pop        edx
 004F6D2B    pop        ecx
 004F6D2C    pop        ecx
 004F6D2D    mov        dword ptr fs:[eax],edx
 004F6D30    push       4F6D5A
 004F6D35    lea        eax,[ebp-1C]
 004F6D38    mov        edx,5
 004F6D3D    call       @LStrArrayClr
 004F6D42    lea        eax,[ebp-8]
 004F6D45    call       @IntfClear
 004F6D4A    lea        eax,[ebp-4]
 004F6D4D    call       @IntfClear
 004F6D52    ret
<004F6D53    jmp        @HandleFinally
<004F6D58    jmp        004F6D35
 004F6D5A    pop        esi
 004F6D5B    pop        ebx
 004F6D5C    mov        esp,ebp
 004F6D5E    pop        ebp
 004F6D5F    ret
*}
//end;

//004F6F38
//procedure sub_004F6F38(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 004F6F38    push       ebp
 004F6F39    mov        ebp,esp
 004F6F3B    push       ecx
 004F6F3C    mov        ecx,0D
 004F6F41    push       0
 004F6F43    push       0
 004F6F45    dec        ecx
<004F6F46    jne        004F6F41
 004F6F48    push       ecx
 004F6F49    xchg       ecx,dword ptr [ebp-4]
 004F6F4C    push       ebx
 004F6F4D    push       esi
 004F6F4E    mov        dword ptr [ebp-8],ecx
 004F6F51    mov        dword ptr [ebp-4],edx
 004F6F54    mov        esi,eax
 004F6F56    mov        ebx,dword ptr [ebp+8]
 004F6F59    xor        eax,eax
 004F6F5B    push       ebp
 004F6F5C    push       4F7287
 004F6F61    push       dword ptr fs:[eax]
 004F6F64    mov        dword ptr fs:[eax],esp
 004F6F67    mov        ecx,ebx
 004F6F69    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 004F6F6F    mov        edx,dword ptr [edx]
 004F6F71    mov        eax,esi
 004F6F73    call       004D8E7C
 004F6F78    cmp        byte ptr [ebp+10],0
>004F6F7C    je         004F6F8D
 004F6F7E    lea        eax,[ebp-0C]
 004F6F81    mov        edx,4F72A0; ''Y''
 004F6F86    call       @LStrLAsg
>004F6F8B    jmp        004F6F9A
 004F6F8D    lea        eax,[ebp-0C]
 004F6F90    mov        edx,4F72AC; ''N''
 004F6F95    call       @LStrLAsg
 004F6F9A    cmp        byte ptr [ebp+0C],0
>004F6F9E    je         004F6FAF
 004F6FA0    lea        eax,[ebp-10]
 004F6FA3    mov        edx,4F72B8; ''Q''
 004F6FA8    call       @LStrLAsg
>004F6FAD    jmp        004F6FBC
 004F6FAF    lea        eax,[ebp-10]
 004F6FB2    mov        edx,4F72C4; ''E''
 004F6FB7    call       @LStrLAsg
 004F6FBC    lea        eax,[ebp-18]
 004F6FBF    push       eax
 004F6FC0    lea        ecx,[ebp-44]
 004F6FC3    mov        dl,27
 004F6FC5    mov        eax,dword ptr [ebp+14]
 004F6FC8    call       004D31AC
 004F6FCD    mov        eax,dword ptr [ebp-44]
 004F6FD0    mov        dword ptr [ebp-40],eax
 004F6FD3    mov        byte ptr [ebp-3C],0B
 004F6FD7    lea        ecx,[ebp-48]
 004F6FDA    mov        dl,27
 004F6FDC    mov        eax,dword ptr [ebp-8]
 004F6FDF    call       004D31AC
 004F6FE4    mov        eax,dword ptr [ebp-48]
 004F6FE7    mov        dword ptr [ebp-38],eax
 004F6FEA    mov        byte ptr [ebp-34],0B
 004F6FEE    lea        ecx,[ebp-4C]
 004F6FF1    mov        dl,27
 004F6FF3    mov        eax,dword ptr [ebp-4]
 004F6FF6    call       004D31AC
 004F6FFB    mov        eax,dword ptr [ebp-4C]
 004F6FFE    mov        dword ptr [ebp-30],eax
 004F7001    mov        byte ptr [ebp-2C],0B
 004F7005    mov        eax,dword ptr [ebp-0C]
 004F7008    mov        dword ptr [ebp-28],eax
 004F700B    mov        byte ptr [ebp-24],0B
 004F700F    mov        eax,dword ptr [ebp-10]
 004F7012    mov        dword ptr [ebp-20],eax
 004F7015    mov        byte ptr [ebp-1C],0B
 004F7019    lea        edx,[ebp-40]
 004F701C    mov        ecx,4
 004F7021    mov        eax,4F72D0; 'exec sp_statistics %s, %s, %s, '%%', %s, %s'
 004F7026    call       Format
 004F702B    mov        eax,dword ptr [ebp-18]
 004F702E    push       eax
 004F702F    lea        edx,[ebp-50]
 004F7032    mov        eax,esi
 004F7034    call       004F748C
 004F7039    mov        eax,dword ptr [ebp-50]
 004F703C    lea        ecx,[ebp-14]
 004F703F    pop        edx
 004F7040    mov        esi,dword ptr [eax]
 004F7042    call       dword ptr [esi+0C]
>004F7045    jmp        004F7218
 004F704A    mov        eax,dword ptr [ebx]
 004F704C    mov        edx,dword ptr [eax]
 004F704E    call       dword ptr [edx+1E4]
 004F7054    lea        ecx,[ebp-54]
 004F7057    mov        edx,4F7304; 'TABLE_QUALIFIER'
 004F705C    mov        eax,dword ptr [ebp-14]
 004F705F    mov        esi,dword ptr [eax]
 004F7061    call       dword ptr [esi+74]
 004F7064    mov        ecx,dword ptr [ebp-54]
 004F7067    mov        eax,dword ptr [ebx]
 004F7069    mov        edx,4F731C; 'TABLE_CAT'
 004F706E    mov        esi,dword ptr [eax]
 004F7070    call       dword ptr [esi+1A8]
 004F7076    lea        ecx,[ebp-58]
 004F7079    mov        edx,4F7330; 'TABLE_OWNER'
 004F707E    mov        eax,dword ptr [ebp-14]
 004F7081    mov        esi,dword ptr [eax]
 004F7083    call       dword ptr [esi+74]
 004F7086    mov        ecx,dword ptr [ebp-58]
 004F7089    mov        eax,dword ptr [ebx]
 004F708B    mov        edx,4F7344; 'TABLE_SCHEM'
 004F7090    mov        esi,dword ptr [eax]
 004F7092    call       dword ptr [esi+1A8]
 004F7098    lea        ecx,[ebp-5C]
 004F709B    mov        edx,4F7358; 'TABLE_NAME'
 004F70A0    mov        eax,dword ptr [ebp-14]
 004F70A3    mov        esi,dword ptr [eax]
 004F70A5    call       dword ptr [esi+74]
 004F70A8    mov        ecx,dword ptr [ebp-5C]
 004F70AB    mov        eax,dword ptr [ebx]
 004F70AD    mov        edx,4F7358; 'TABLE_NAME'
 004F70B2    mov        esi,dword ptr [eax]
 004F70B4    call       dword ptr [esi+1A8]
 004F70BA    mov        edx,4F736C; 'NON_UNIQUE'
 004F70BF    mov        eax,dword ptr [ebp-14]
 004F70C2    mov        ecx,dword ptr [eax]
 004F70C4    call       dword ptr [ecx+84]
 004F70CA    cmp        ax,1
 004F70CE    sete       cl
 004F70D1    mov        eax,dword ptr [ebx]
 004F70D3    mov        edx,4F736C; 'NON_UNIQUE'
 004F70D8    mov        esi,dword ptr [eax]
 004F70DA    call       dword ptr [esi+184]
 004F70E0    lea        ecx,[ebp-60]
 004F70E3    mov        edx,4F7380; 'INDEX_QUALIFIER'
 004F70E8    mov        eax,dword ptr [ebp-14]
 004F70EB    mov        esi,dword ptr [eax]
 004F70ED    call       dword ptr [esi+74]
 004F70F0    mov        ecx,dword ptr [ebp-60]
 004F70F3    mov        eax,dword ptr [ebx]
 004F70F5    mov        edx,4F7380; 'INDEX_QUALIFIER'
 004F70FA    mov        esi,dword ptr [eax]
 004F70FC    call       dword ptr [esi+1A8]
 004F7102    lea        ecx,[ebp-64]
 004F7105    mov        edx,4F7398; 'INDEX_NAME'
 004F710A    mov        eax,dword ptr [ebp-14]
 004F710D    mov        esi,dword ptr [eax]
 004F710F    call       dword ptr [esi+74]
 004F7112    mov        ecx,dword ptr [ebp-64]
 004F7115    mov        eax,dword ptr [ebx]
 004F7117    mov        edx,4F7398; 'INDEX_NAME'
 004F711C    mov        esi,dword ptr [eax]
 004F711E    call       dword ptr [esi+1A8]
 004F7124    mov        edx,4F73AC; 'TYPE'
 004F7129    mov        eax,dword ptr [ebp-14]
 004F712C    mov        ecx,dword ptr [eax]
 004F712E    call       dword ptr [ecx+84]
 004F7134    mov        ecx,eax
 004F7136    mov        eax,dword ptr [ebx]
 004F7138    mov        edx,4F73AC; 'TYPE'
 004F713D    mov        esi,dword ptr [eax]
 004F713F    call       dword ptr [esi+18C]
 004F7145    mov        edx,4F73BC; 'SEQ_IN_INDEX'
 004F714A    mov        eax,dword ptr [ebp-14]
 004F714D    mov        ecx,dword ptr [eax]
 004F714F    call       dword ptr [ecx+84]
 004F7155    mov        ecx,eax
 004F7157    mov        eax,dword ptr [ebx]
 004F7159    mov        edx,4F73D4; 'ORDINAL_POSITION'
 004F715E    mov        esi,dword ptr [eax]
 004F7160    call       dword ptr [esi+18C]
 004F7166    lea        ecx,[ebp-68]
 004F7169    mov        edx,4F73F0; 'COLUMN_NAME'
 004F716E    mov        eax,dword ptr [ebp-14]
 004F7171    mov        esi,dword ptr [eax]
 004F7173    call       dword ptr [esi+74]
 004F7176    mov        ecx,dword ptr [ebp-68]
 004F7179    mov        eax,dword ptr [ebx]
 004F717B    mov        edx,4F73F0; 'COLUMN_NAME'
 004F7180    mov        esi,dword ptr [eax]
 004F7182    call       dword ptr [esi+1A8]
 004F7188    lea        ecx,[ebp-6C]
 004F718B    mov        edx,4F7404; 'COLLATION'
 004F7190    mov        eax,dword ptr [ebp-14]
 004F7193    mov        esi,dword ptr [eax]
 004F7195    call       dword ptr [esi+74]
 004F7198    mov        ecx,dword ptr [ebp-6C]
 004F719B    mov        eax,dword ptr [ebx]
 004F719D    mov        edx,4F7418; 'ASC_OR_DESC'
 004F71A2    mov        esi,dword ptr [eax]
 004F71A4    call       dword ptr [esi+1A8]
 004F71AA    mov        edx,4F742C; 'CARDINALITY'
 004F71AF    mov        eax,dword ptr [ebp-14]
 004F71B2    mov        ecx,dword ptr [eax]
 004F71B4    call       dword ptr [ecx+88]
 004F71BA    mov        ecx,eax
 004F71BC    mov        eax,dword ptr [ebx]
 004F71BE    mov        edx,4F742C; 'CARDINALITY'
 004F71C3    mov        esi,dword ptr [eax]
 004F71C5    call       dword ptr [esi+190]
 004F71CB    mov        edx,4F7440; 'PAGES'
 004F71D0    mov        eax,dword ptr [ebp-14]
 004F71D3    mov        ecx,dword ptr [eax]
 004F71D5    call       dword ptr [ecx+88]
 004F71DB    mov        ecx,eax
 004F71DD    mov        eax,dword ptr [ebx]
 004F71DF    mov        edx,4F7440; 'PAGES'
 004F71E4    mov        esi,dword ptr [eax]
 004F71E6    call       dword ptr [esi+190]
 004F71EC    lea        ecx,[ebp-70]
 004F71EF    mov        edx,4F7450; 'FILTER_CONDITION'
 004F71F4    mov        eax,dword ptr [ebp-14]
 004F71F7    mov        esi,dword ptr [eax]
 004F71F9    call       dword ptr [esi+74]
 004F71FC    mov        ecx,dword ptr [ebp-70]
 004F71FF    mov        eax,dword ptr [ebx]
 004F7201    mov        edx,4F7450; 'FILTER_CONDITION'
 004F7206    mov        esi,dword ptr [eax]
 004F7208    call       dword ptr [esi+1A8]
 004F720E    mov        eax,dword ptr [ebx]
 004F7210    mov        edx,dword ptr [eax]
 004F7212    call       dword ptr [edx+1D0]
 004F7218    mov        eax,dword ptr [ebp-14]
 004F721B    mov        edx,dword ptr [eax]
 004F721D    call       dword ptr [edx+0C]
 004F7220    test       al,al
<004F7222    jne        004F704A
 004F7228    mov        eax,dword ptr [ebp-14]
 004F722B    mov        edx,dword ptr [eax]
 004F722D    call       dword ptr [edx+10]
 004F7230    mov        eax,dword ptr [ebx]
 004F7232    mov        edx,dword ptr [eax]
 004F7234    call       dword ptr [edx+0E4]
 004F723A    xor        eax,eax
 004F723C    pop        edx
 004F723D    pop        ecx
 004F723E    pop        ecx
 004F723F    mov        dword ptr fs:[eax],edx
 004F7242    push       4F728E
 004F7247    lea        eax,[ebp-70]
 004F724A    mov        edx,8
 004F724F    call       @LStrArrayClr
 004F7254    lea        eax,[ebp-50]
 004F7257    call       @IntfClear
 004F725C    lea        eax,[ebp-4C]
 004F725F    mov        edx,3
 004F7264    call       @LStrArrayClr
 004F7269    lea        eax,[ebp-18]
 004F726C    call       @LStrClr
 004F7271    lea        eax,[ebp-14]
 004F7274    call       @IntfClear
 004F7279    lea        eax,[ebp-10]
 004F727C    mov        edx,2
 004F7281    call       @LStrArrayClr
 004F7286    ret
<004F7287    jmp        @HandleFinally
<004F728C    jmp        004F7247
 004F728E    pop        esi
 004F728F    pop        ebx
 004F7290    mov        esp,ebp
 004F7292    pop        ebp
 004F7293    ret        10
*}
//end;

//004F7464
//function sub_004F7464():?;
//begin
{*
 004F7464    mov        al,1
 004F7466    ret
*}
//end;

//004F7468
//function sub_004F7468():?;
//begin
{*
 004F7468    mov        al,1
 004F746A    ret
*}
//end;

//004F746C
//procedure sub_004F746C(?:?);
//begin
{*
 004F746C    push       ebp
 004F746D    mov        ebp,esp
 004F746F    push       ebx
 004F7470    mov        ebx,eax
 004F7472    mov        ecx,dword ptr [ebp+8]
 004F7475    mov        edx,dword ptr ds:[61BA60]; ^gvar_0061DD7C:TZMetadataColumnDefs
 004F747B    mov        edx,dword ptr [edx]
 004F747D    mov        eax,ebx
 004F747F    call       004D8E7C
 004F7484    pop        ebx
 004F7485    pop        ebp
 004F7486    ret        0C
*}
//end;

//004F748C
//procedure sub_004F748C(?:TZMsSqlDatabaseMetadata; ?:?);
//begin
{*
 004F748C    push       ebp
 004F748D    mov        ebp,esp
 004F748F    push       0
 004F7491    push       ebx
 004F7492    push       esi
 004F7493    mov        esi,edx
 004F7495    mov        ebx,eax
 004F7497    xor        eax,eax
 004F7499    push       ebp
 004F749A    push       4F74D2
 004F749F    push       dword ptr fs:[eax]
 004F74A2    mov        dword ptr fs:[eax],esp
 004F74A5    lea        edx,[ebp-4]
 004F74A8    mov        eax,ebx
 004F74AA    mov        ecx,dword ptr [eax]
 004F74AC    call       dword ptr [ecx+238]; TZMsSqlDatabaseMetadata.sub_004D8E64
 004F74B2    mov        eax,dword ptr [ebp-4]
 004F74B5    mov        edx,esi
 004F74B7    mov        ecx,dword ptr [eax]
 004F74B9    call       dword ptr [ecx+0C]
 004F74BC    xor        eax,eax
 004F74BE    pop        edx
 004F74BF    pop        ecx
 004F74C0    pop        ecx
 004F74C1    mov        dword ptr fs:[eax],edx
 004F74C4    push       4F74D9
 004F74C9    lea        eax,[ebp-4]
 004F74CC    call       @IntfClear
 004F74D1    ret
<004F74D2    jmp        @HandleFinally
<004F74D7    jmp        004F74C9
 004F74D9    pop        esi
 004F74DA    pop        ebx
 004F74DB    pop        ecx
 004F74DC    pop        ebp
 004F74DD    ret
*}
//end;

Initialization
Finalization
//004F74E0
{*
 004F74E0    push       ebp
 004F74E1    mov        ebp,esp
 004F74E3    xor        eax,eax
 004F74E5    push       ebp
 004F74E6    push       4F751C
 004F74EB    push       dword ptr fs:[eax]
 004F74EE    mov        dword ptr fs:[eax],esp
 004F74F1    inc        dword ptr ds:[61E298]
>004F74F7    jne        004F750E
 004F74F9    mov        eax,616018; gvar_00616018:array[3] of String
 004F74FE    mov        ecx,3
 004F7503    mov        edx,dword ptr ds:[4010F8]; String
 004F7509    call       @FinalizeArray
 004F750E    xor        eax,eax
 004F7510    pop        edx
 004F7511    pop        ecx
 004F7512    pop        ecx
 004F7513    mov        dword ptr fs:[eax],edx
 004F7516    push       4F7523
 004F751B    ret
<004F751C    jmp        @HandleFinally
<004F7521    jmp        004F751B
 004F7523    pop        ebp
 004F7524    ret
*}
end.