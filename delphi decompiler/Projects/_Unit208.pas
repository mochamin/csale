{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit208;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZMySQLDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:String;//f24
    destructor Destroy; virtual;
    //procedure sub_00508D50(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00509100(?:?); virtual;
    //procedure sub_005091F8(?:?); virtual;
    //procedure sub_00509250(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050A62C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050A20C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050A99C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050ACD4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050B15C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050B5CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050BF78(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0050C58C(?:?); virtual;
    //procedure sub_0050BD00(?:?); virtual;
    //procedure sub_005079C0(?:?); virtual;
    //procedure sub_005079E8(?:?); virtual;
    //procedure sub_00507A0C(?:?); virtual;
    //function sub_00507A58():?; virtual;
    //function sub_00507A60():?; virtual;
    //function sub_00507A68():?; virtual;
    //function sub_00507A6C():?; virtual;
    //procedure sub_00507A70(?:?); virtual;
    //procedure sub_00507A94(?:?); virtual;
    //procedure sub_0050831C(?:?); virtual;
    //procedure sub_0050840C(?:?); virtual;
    //procedure sub_00508698(?:?); virtual;
    //procedure sub_005087FC(?:?); virtual;
    //procedure sub_00508AB8(?:?); virtual;
    //procedure sub_00508ADC(?:?); virtual;
    function sub_00508AEC():Boolean; virtual;
    //function sub_00508B08():?; virtual;
    //function sub_00508B0C():?; virtual;
    //function sub_00508B10():?; virtual;
    //procedure sub_00508B14(?:?); virtual;
    //procedure sub_00508B24(?:?); virtual;
    //procedure sub_00508B34(?:?); virtual;
    //function sub_00508B60():?; virtual;
    //function sub_00508B90():?; virtual;
    //function sub_00508B94():?; virtual;
    function sub_00508B98():Boolean; virtual;
    //function sub_00508BB4():?; virtual;
    //function sub_00508BB8():?; virtual;
    //function sub_00508BBC():?; virtual;
    //function sub_00508BC4():?; virtual;
    //function sub_00508BCC():?; virtual;
    //function sub_00508BD4():?; virtual;
    //function sub_00508BDC():?; virtual;
    //function sub_00508BE4():?; virtual;
    //function sub_00508BEC():?; virtual;
    //function sub_00508BF4():?; virtual;
    //function sub_00508BFC():?; virtual;
    //function sub_00508C00():?; virtual;
    //function sub_00508C08():?; virtual;
    //function sub_00508C10():?; virtual;
    //function sub_00508C18():?; virtual;
    //function sub_00508C20():?; virtual;
    //function sub_00508C24():?; virtual;
    //function sub_00508C2C():?; virtual;
    //function sub_00508C30():?; virtual;
    //function sub_00508C38():?; virtual;
    //function sub_00508C40():?; virtual;
    //function sub_00508C48():?; virtual;
    //function sub_00508C4C():?; virtual;
    //function sub_00508C50:?; virtual;
    //constructor Create(?:TZMySQLDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00507890
//constructor TZMySQLDatabaseMetadata.Create(?:TZMySQLDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00507890    push       ebp
 00507891    mov        ebp,esp
 00507893    add        esp,0FFFFFFE4
 00507896    push       ebx
 00507897    push       esi
 00507898    xor        ebx,ebx
 0050789A    mov        dword ptr [ebp-10],ebx
 0050789D    mov        dword ptr [ebp-14],ebx
 005078A0    mov        dword ptr [ebp-18],ebx
 005078A3    test       dl,dl
>005078A5    je         005078AF
 005078A7    add        esp,0FFFFFFF0
 005078AA    call       @ClassCreate
 005078AF    mov        esi,ecx
 005078B1    mov        byte ptr [ebp-5],dl
 005078B4    mov        dword ptr [ebp-4],eax
 005078B7    mov        ebx,dword ptr [ebp+8]
 005078BA    mov        eax,dword ptr [ebp+0C]
 005078BD    call       @LStrAddRef
 005078C2    xor        eax,eax
 005078C4    push       ebp
 005078C5    push       507969
 005078CA    push       dword ptr fs:[eax]
 005078CD    mov        dword ptr fs:[eax],esp
 005078D0    mov        eax,dword ptr [ebp+0C]
 005078D3    push       eax
 005078D4    push       ebx
 005078D5    mov        ecx,esi
 005078D7    test       ecx,ecx
>005078D9    je         005078DE
 005078DB    sub        ecx,0FFFFFFD0
 005078DE    xor        edx,edx
 005078E0    mov        eax,dword ptr [ebp-4]
 005078E3    call       004D8D74
 005078E8    mov        dl,1
 005078EA    mov        eax,[0041C8E4]; TStringList
 005078EF    call       TObject.Create; TStringList.Create
 005078F4    mov        dword ptr [ebp-0C],eax
 005078F7    xor        eax,eax
 005078F9    push       ebp
 005078FA    push       50793F
 005078FF    push       dword ptr fs:[eax]
 00507902    mov        dword ptr fs:[eax],esp
 00507905    lea        eax,[ebp-1C]
 00507908    push       eax
 00507909    mov        eax,dword ptr [ebp-4]
 0050790C    add        eax,24; TZMySQLDatabaseMetadata.?f24:String
 0050790F    push       eax
 00507910    lea        eax,[ebp-14]
 00507913    push       eax
 00507914    lea        eax,[ebp-18]
 00507917    push       eax
 00507918    mov        eax,dword ptr [ebp-0C]
 0050791B    push       eax
 0050791C    lea        ecx,[ebp-10]
 0050791F    mov        edx,ebx
 00507921    mov        eax,dword ptr [ebp+0C]
 00507924    call       004D28A4
 00507929    xor        eax,eax
 0050792B    pop        edx
 0050792C    pop        ecx
 0050792D    pop        ecx
 0050792E    mov        dword ptr fs:[eax],edx
 00507931    push       507946
 00507936    mov        eax,dword ptr [ebp-0C]
 00507939    call       TObject.Free
 0050793E    ret
<0050793F    jmp        @HandleFinally
<00507944    jmp        00507936
 00507946    xor        eax,eax
 00507948    pop        edx
 00507949    pop        ecx
 0050794A    pop        ecx
 0050794B    mov        dword ptr fs:[eax],edx
 0050794E    push       507970
 00507953    lea        eax,[ebp-18]
 00507956    mov        edx,3
 0050795B    call       @LStrArrayClr
 00507960    lea        eax,[ebp+0C]
 00507963    call       @LStrClr
 00507968    ret
<00507969    jmp        @HandleFinally
<0050796E    jmp        00507953
 00507970    mov        eax,dword ptr [ebp-4]
 00507973    cmp        byte ptr [ebp-5],0
>00507977    je         00507988
 00507979    call       @AfterConstruction
 0050797E    pop        dword ptr fs:[0]
 00507985    add        esp,0C
 00507988    mov        eax,dword ptr [ebp-4]
 0050798B    pop        esi
 0050798C    pop        ebx
 0050798D    mov        esp,ebp
 0050798F    pop        ebp
 00507990    ret        8
*}
//end;

//00507994
destructor TZMySQLDatabaseMetadata.Destroy;
begin
{*
 00507994    push       ebp
 00507995    mov        ebp,esp
 00507997    push       ebx
 00507998    push       esi
 00507999    call       @BeforeDestruction
 0050799E    mov        ebx,edx
 005079A0    mov        esi,eax
 005079A2    mov        edx,ebx
 005079A4    and        dl,0FC
 005079A7    mov        eax,esi
 005079A9    call       TZAbstractDatabaseMetadata.Destroy
 005079AE    test       bl,bl
>005079B0    jle        005079B9
 005079B2    mov        eax,esi
 005079B4    call       @ClassDestroy
 005079B9    pop        esi
 005079BA    pop        ebx
 005079BB    pop        ebp
 005079BC    ret
*}
end;

//005079C0
//procedure sub_005079C0(?:?);
//begin
{*
 005079C0    push       ebp
 005079C1    mov        ebp,esp
 005079C3    push       ebx
 005079C4    mov        ebx,edx
 005079C6    mov        eax,ebx
 005079C8    mov        edx,5079E0; 'MySQL'
 005079CD    call       @LStrAsg
 005079D2    pop        ebx
 005079D3    pop        ebp
 005079D4    ret
*}
//end;

//005079E8
//procedure sub_005079E8(?:?);
//begin
{*
 005079E8    push       ebp
 005079E9    mov        ebp,esp
 005079EB    push       ebx
 005079EC    mov        ebx,edx
 005079EE    mov        eax,ebx
 005079F0    mov        edx,507A08; '3+'
 005079F5    call       @LStrAsg
 005079FA    pop        ebx
 005079FB    pop        ebp
 005079FC    ret
*}
//end;

//00507A0C
//procedure sub_00507A0C(?:?);
//begin
{*
 00507A0C    push       ebp
 00507A0D    mov        ebp,esp
 00507A0F    push       ebx
 00507A10    mov        ebx,edx
 00507A12    mov        eax,ebx
 00507A14    mov        edx,507A2C; 'Zeos Database Connectivity Driver for MySQL'
 00507A19    call       @LStrAsg
 00507A1E    pop        ebx
 00507A1F    pop        ebp
 00507A20    ret
*}
//end;

//00507A58
//function sub_00507A58():?;
//begin
{*
 00507A58    mov        eax,1
 00507A5D    ret
*}
//end;

//00507A60
//function sub_00507A60():?;
//begin
{*
 00507A60    mov        eax,1
 00507A65    ret
*}
//end;

//00507A68
//function sub_00507A68():?;
//begin
{*
 00507A68    mov        al,1
 00507A6A    ret
*}
//end;

//00507A6C
//function sub_00507A6C():?;
//begin
{*
 00507A6C    mov        al,1
 00507A6E    ret
*}
//end;

//00507A70
//procedure sub_00507A70(?:?);
//begin
{*
 00507A70    push       ebp
 00507A71    mov        ebp,esp
 00507A73    push       ebx
 00507A74    mov        ebx,edx
 00507A76    mov        eax,ebx
 00507A78    mov        edx,507A90; '`'
 00507A7D    call       @LStrAsg
 00507A82    pop        ebx
 00507A83    pop        ebp
 00507A84    ret
*}
//end;

//00507A94
//procedure sub_00507A94(?:?);
//begin
{*
 00507A94    push       ebp
 00507A95    mov        ebp,esp
 00507A97    push       ebx
 00507A98    mov        ebx,edx
 00507A9A    mov        eax,ebx
 00507A9C    mov        edx,507B44; 'AUTO_INCREMENT,BINARY,BLOB,ENUM,INFILE,LOAD,MEDIUMINT,OPTION,OUTFILE,REPLACE,SET,TEXT,UNSIGNED,ZEROFILL'
 00507AA1    call       @LStrAsg
 00507AA6    push       dword ptr [ebx]
 00507AA8    push       507BB4; 'ACCESSIBLE,ADD,ALL,ALTER,ANALYZE,AND,ASC,ASENSITIVE,'
 00507AAD    push       507BF4; ' BEFORE,BETWEEN,BIGINT,BOTH,CALL,CASCADE,CASE,CHANGE,CHARACTER,CHECK,'
 00507AB2    push       507C44; 'COLLATE,COLUMN,CONDITION,CONSTRAINT,CONTINUE,CONVERT,CROSS,'
 00507AB7    push       507C88; 'CURRENT_DATE,CURRENT_TIME,CURRENT_TIMESTAMP,CURRENT_USER,CURSOR,'
 00507ABC    push       507CD4; 'DATABASE,DATABASES,DAY_HOUR,DAY_MICROSECOND,DAY_MINUTE,DAY_SECOND,'
 00507AC1    push       507D20; 'DEC,DECIMAL,DECLARE,DEFAULT,DELAYED,DESC,DESCRIBE,DETERMINISTIC,'
 00507AC6    push       507D6C; 'DISTINCT,DISTINCTROW,DIV,DOUBLE,DUAL,EACH,ELSE,ELSEIF,ENCLOSED,'
 00507ACB    push       507DB4; 'ESCAPED,EXISTS,EXIT,EXPLAIN,FALSE,FETCH,FLOAT,FLOAT4,FLOAT8,FOR,'
 00507AD0    push       507E00; 'FORCE,FOREIGN,FULLTEXT,GRANT,HIGH_PRIORITY,HOUR_MICROSECOND,'
 00507AD5    push       507E48; 'HOUR_MINUTE,HOUR_SECOND,IF,IGNORE,IN,INNER,INOUT,INSENSITIVE,INT,'
 00507ADA    push       507E94; 'INT1,INT2,INT3,INT4,INT8,INTERVAL,ITERATE,JOIN,KEYS,KILL,LEADING,'
 00507ADF    push       507EE0; 'LEAVE,LEFT,LIKE,LIMIT,LINEAR,LINES,LOCALTIME,LOCALTIMESTAMP,LOCK,'
 00507AE4    push       507F2C; 'LONG,LONGBLOB,LONGTEXT,LOOP,LOW_PRIORITY,MASTER_SSL_VERIFY_SERVER_CERT,'
 00507AE9    push       507F7C; 'MATCH,MEDIUMBLOB,MEDIUMTEXT,MIDDLEINT,MINUTE_MICROSECOND,MINUTE_SECOND,'
 00507AEE    push       507FCC; 'MOD,MODIFIES,NATURAL,NOT,NO_WRITE_TO_BINLOG,NUMERIC,OPTIMIZE,'
 00507AF3    push       508014; 'OPTIONALLY,OR,OUT,OUTER,PRECISION,PROCEDURE,PURGE,RANGE,READ,READS,'
 00507AF8    push       508060; 'READ_ONLY,READ_WRITE,REAL,REFERENCES,REGEXP,RELEASE,RENAME,REPEAT,'
 00507AFD    push       5080AC; 'REQUIRE,RESTRICT,RETURN,REVOKE,RIGHT,RLIKE,SCHEMA,SCHEMAS,'
 00507B02    push       5080F0; 'SECOND_MICROSECOND,SENSITIVE,SEPARATOR,SHOW,SMALLINT,SPATIAL,'
 00507B07    push       508138; 'SPECIFIC,SQL,SQLEXCEPTION,SQLSTATE,SQLWARNING,SQL_BIG_RESULT,'
 00507B0C    push       508180; 'SQL_CALC_FOUND_ROWS,SQL_SMALL_RESULT,SSL,STARTING,STRAIGHT_JOIN,'
 00507B11    push       5081CC; 'TERMINATED,THEN,TINYBLOB,TINYINT,TINYTEXT,TO,TRAILING,TRIGGER,'
 00507B16    push       508214; 'TRUE,UNDO,UNION,UNIQUE,UNLOCK,USAGE,USE,USING,UTC_DATE,UTC_TIME,'
 00507B1B    push       508260; 'UTC_TIMESTAMP,VARBINARY,VARCHARACTER,VARYING,WHEN,WHILE,WITH,'
 00507B20    push       5082A8; 'WRITE,X509,XOR,YEAR_MONTH,ACCESSIBLE,LINEAR,'
 00507B25    push       5082E0; 'MASTER_SSL_VERIFY_SERVER_CERT,RANGE,READ_ONLY,READ_WRITE'
 00507B2A    mov        eax,ebx
 00507B2C    mov        edx,1B
 00507B31    call       @LStrCatN
 00507B36    pop        ebx
 00507B37    pop        ebp
 00507B38    ret
*}
//end;

//0050831C
//procedure sub_0050831C(?:?);
//begin
{*
 0050831C    push       ebp
 0050831D    mov        ebp,esp
 0050831F    push       ebx
 00508320    mov        ebx,edx
 00508322    mov        eax,ebx
 00508324    mov        edx,508348; 'ABS,ACOS,ASIN,ATAN,ATAN2,BIT_COUNT,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,MAX,MIN,MOD,PI,POW,POWER,RADIANS,RAND,ROUND,SIN,SQRT,TAN,TRUNCATE'
 00508329    call       @LStrAsg
 0050832E    mov        eax,ebx
 00508330    mov        edx,5083E4; 'BIT_COUNT,CEIL,CRC32,LN,LOG2,SIGN,UUID'
 00508335    call       @LStrCat
 0050833A    pop        ebx
 0050833B    pop        ebp
 0050833C    ret
*}
//end;

//0050840C
//procedure sub_0050840C(?:?);
//begin
{*
 0050840C    push       ebp
 0050840D    mov        ebp,esp
 0050840F    push       ebx
 00508410    mov        ebx,edx
 00508412    mov        eax,ebx
 00508414    mov        edx,508450; 'ASCII,CHAR,CHAR_LENGTH,CHARACTER_LENGTH,CONCAT,ELT,FIELD,FIND_IN_SET,INSERT,INSTR,INTERVAL,LCASE,LEFT,LENGTH,LOCATE,LOWER,LTRIM,MID,POSITION,OCTET_LENGTH,REPEAT,REPLACE,REVERSE,RIGHT,RTRIM,SPACE,SOUNDEX,SUBSTRING,SUBSTRING_INDEX,TRIM,UCASE,UPPER'
 00508419    call       @LStrAsg
 0050841E    push       dword ptr [ebx]
 00508420    push       508550; 'AES_DECRYPT,AES_ENCRYPT,BIN,BIT_LENGTH,CHARSET,'
 00508425    push       508588; 'COERCIBILITY,COLLATION,COMPRESS,CONCAT_WS,DECODE,DES_DECRYPT,DES_ENCRYPT,'
 0050842A    push       5085DC; 'ENCODE,ENCRYPT,EXPORT_SET,FORMAT,HEX,LOAD_FILE,LPAD,MAKE_SET,MD5,OCT,ORD,'
 0050842F    push       508630; 'QUOTE,RPAD,STRCMP,SHA,SHA1,SUBSTR,UNHEX,EXTRACTVALUE,UPDATEXML,'
 00508434    push       508678; 'UNCOMPRESS,UNCOMPRESSED_LENGTH'
 00508439    mov        eax,ebx
 0050843B    mov        edx,6
 00508440    call       @LStrCatN
 00508445    pop        ebx
 00508446    pop        ebp
 00508447    ret
*}
//end;

//00508698
//procedure sub_00508698(?:?);
//begin
{*
 00508698    push       ebp
 00508699    mov        ebp,esp
 0050869B    push       ebx
 0050869C    mov        ebx,edx
 0050869E    mov        eax,ebx
 005086A0    mov        edx,5086D4; 'DATABASE,USER,SYSTEM_USER,SESSION_USER,PASSWORD,ENCRYPT,LAST_INSERT_ID,VERSION'
 005086A5    call       @LStrAsg
 005086AA    push       dword ptr [ebx]
 005086AC    push       50872C; 'BENCHMARK,CONNECTION_ID,CURRENT_USER,DEFAULT,FOUND_ROWS,'
 005086B1    push       508770; 'GET_LOCK,INET_ATON,INET_NTOA,IS_FREE_LOCK,IS_USED_LOCK,MASTER_POS_WAIT,'
 005086B6    push       5087C0; 'NAME_CONST,OLD_PASSWORD,RELEASE_LOCK,ROW_COUNT,SCHEMA,SLEEP'
 005086BB    mov        eax,ebx
 005086BD    mov        edx,4
 005086C2    call       @LStrCatN
 005086C7    pop        ebx
 005086C8    pop        ebp
 005086C9    ret
*}
//end;

//005087FC
//procedure sub_005087FC(?:?);
//begin
{*
 005087FC    push       ebp
 005087FD    mov        ebp,esp
 005087FF    push       ebx
 00508800    mov        ebx,edx
 00508802    mov        eax,ebx
 00508804    mov        edx,508840; 'DAYOFWEEK,WEEKDAY,DAYOFMONTH,DAYOFYEAR,MONTH,DAYNAME,MONTHNAME,QUARTER,WEEK,YEAR,HOUR,MINUTE,SECOND,PERIOD_ADD,PERIOD_DIFF,TO_DAYS,FROM_DAYS,DATE_FORMAT,TIME_FORMAT,CURDATE,CURRENT_DATE,CURTIME,CURRENT_TIME,NOW,SYSDATE,CURRENT_TIMESTAMP,UNIX_TIMESTAMP,FROM_UNIXTIME,SEC_TO_TIME,TIME_TO_SEC'
 00508809    call       @LStrAsg
 0050880E    push       dword ptr [ebx]
 00508810    push       50896C; 'ADDDATE,ADDTIME,CONVERT_TZ,CURRENT_TIMESTAMP,DATE_ADD,'
 00508815    push       5089AC; 'DATE_SUB,DATE,DATEDIFF,DAYOFWEEK,GET_FORMAT,LAST_DAY,LOCALTIME,'
 0050881A    push       5089F4; 'LOCALTIMESTAMP,MAKEDATE,MAKETIME,MICROSECOND,STR_TO_DATE,SUBDATE,SUBTIME,'
 0050881F    push       508A48; 'TIMEDIFF,TIMESTAMP,TIMESTAMPADD,TIMESTAMPDIFF,UTC_DATE,UTC_TIME,'
 00508824    push       508A94; 'UTC_TIMESTAMP,WEEKOFYEAR,YEARWEEK'
 00508829    mov        eax,ebx
 0050882B    mov        edx,6
 00508830    call       @LStrCatN
 00508835    pop        ebx
 00508836    pop        ebp
 00508837    ret
*}
//end;

//00508AB8
//procedure sub_00508AB8(?:?);
//begin
{*
 00508AB8    push       ebp
 00508AB9    mov        ebp,esp
 00508ABB    push       ebx
 00508ABC    mov        ebx,edx
 00508ABE    mov        eax,ebx
 00508AC0    mov        edx,508AD8; '\\'
 00508AC5    call       @LStrAsg
 00508ACA    pop        ebx
 00508ACB    pop        ebp
 00508ACC    ret
*}
//end;

//00508ADC
//procedure sub_00508ADC(?:?);
//begin
{*
 00508ADC    push       ebp
 00508ADD    mov        ebp,esp
 00508ADF    push       ebx
 00508AE0    mov        ebx,edx
 00508AE2    mov        eax,ebx
 00508AE4    call       @LStrClr
 00508AE9    pop        ebx
 00508AEA    pop        ebp
 00508AEB    ret
*}
//end;

//00508AEC
function sub_00508AEC():Boolean;
begin
{*
 00508AEC    push       ebp
 00508AED    mov        ebp,esp
 00508AEF    add        esp,0FFFFFFF8
 00508AF2    lea        ecx,[ebp-8]
 00508AF5    lea        edx,[ebp-4]
 00508AF8    call       0050C3F4
 00508AFD    cmp        dword ptr [ebp-4],5
 00508B01    setge      al
 00508B04    pop        ecx
 00508B05    pop        ecx
 00508B06    pop        ebp
 00508B07    ret
*}
end;

//00508B08
//function sub_00508B08():?;
//begin
{*
 00508B08    xor        eax,eax
 00508B0A    ret
*}
//end;

//00508B0C
//function sub_00508B0C():?;
//begin
{*
 00508B0C    mov        al,1
 00508B0E    ret
*}
//end;

//00508B10
//function sub_00508B10():?;
//begin
{*
 00508B10    xor        eax,eax
 00508B12    ret
*}
//end;

//00508B14
//procedure sub_00508B14(?:?);
//begin
{*
 00508B14    push       ebp
 00508B15    mov        ebp,esp
 00508B17    push       ebx
 00508B18    mov        ebx,edx
 00508B1A    mov        eax,ebx
 00508B1C    call       @LStrClr
 00508B21    pop        ebx
 00508B22    pop        ebp
 00508B23    ret
*}
//end;

//00508B24
//procedure sub_00508B24(?:?);
//begin
{*
 00508B24    push       ebp
 00508B25    mov        ebp,esp
 00508B27    push       ebx
 00508B28    mov        ebx,edx
 00508B2A    mov        eax,ebx
 00508B2C    call       @LStrClr
 00508B31    pop        ebx
 00508B32    pop        ebp
 00508B33    ret
*}
//end;

//00508B34
//procedure sub_00508B34(?:?);
//begin
{*
 00508B34    push       ebp
 00508B35    mov        ebp,esp
 00508B37    push       ebx
 00508B38    mov        ebx,edx
 00508B3A    mov        eax,ebx
 00508B3C    mov        edx,508B54; 'Database'
 00508B41    call       @LStrAsg
 00508B46    pop        ebx
 00508B47    pop        ebp
 00508B48    ret
*}
//end;

//00508B60
//function sub_00508B60():?;
//begin
{*
 00508B60    push       ebp
 00508B61    mov        ebp,esp
 00508B63    add        esp,0FFFFFFF8
 00508B66    lea        ecx,[ebp-8]
 00508B69    lea        edx,[ebp-4]
 00508B6C    call       0050C3F4
 00508B71    cmp        dword ptr [ebp-4],3
>00508B75    jne        00508B7D
 00508B77    cmp        dword ptr [ebp-8],16
>00508B7B    jge        00508B87
 00508B7D    cmp        dword ptr [ebp-4],3
>00508B81    jg         00508B87
 00508B83    xor        eax,eax
>00508B85    jmp        00508B89
 00508B87    mov        al,1
 00508B89    pop        ecx
 00508B8A    pop        ecx
 00508B8B    pop        ebp
 00508B8C    ret
*}
//end;

//00508B90
//function sub_00508B90():?;
//begin
{*
 00508B90    xor        eax,eax
 00508B92    ret
*}
//end;

//00508B94
//function sub_00508B94():?;
//begin
{*
 00508B94    mov        al,1
 00508B96    ret
*}
//end;

//00508B98
function sub_00508B98():Boolean;
begin
{*
 00508B98    push       ebp
 00508B99    mov        ebp,esp
 00508B9B    add        esp,0FFFFFFF8
 00508B9E    lea        ecx,[ebp-8]
 00508BA1    lea        edx,[ebp-4]
 00508BA4    call       0050C3F4
 00508BA9    cmp        dword ptr [ebp-4],4
 00508BAD    setge      al
 00508BB0    pop        ecx
 00508BB1    pop        ecx
 00508BB2    pop        ebp
 00508BB3    ret
*}
end;

//00508BB4
//function sub_00508BB4():?;
//begin
{*
 00508BB4    xor        eax,eax
 00508BB6    ret
*}
//end;

//00508BB8
//function sub_00508BB8():?;
//begin
{*
 00508BB8    xor        eax,eax
 00508BBA    ret
*}
//end;

//00508BBC
//function sub_00508BBC():?;
//begin
{*
 00508BBC    mov        eax,0FFFFF8
 00508BC1    ret
*}
//end;

//00508BC4
//function sub_00508BC4():?;
//begin
{*
 00508BC4    mov        eax,0FFFFF8
 00508BC9    ret
*}
//end;

//00508BCC
//function sub_00508BCC():?;
//begin
{*
 00508BCC    mov        eax,40
 00508BD1    ret
*}
//end;

//00508BD4
//function sub_00508BD4():?;
//begin
{*
 00508BD4    mov        eax,10
 00508BD9    ret
*}
//end;

//00508BDC
//function sub_00508BDC():?;
//begin
{*
 00508BDC    mov        eax,10
 00508BE1    ret
*}
//end;

//00508BE4
//function sub_00508BE4():?;
//begin
{*
 00508BE4    mov        eax,10
 00508BE9    ret
*}
//end;

//00508BEC
//function sub_00508BEC():?;
//begin
{*
 00508BEC    mov        eax,100
 00508BF1    ret
*}
//end;

//00508BF4
//function sub_00508BF4():?;
//begin
{*
 00508BF4    mov        eax,200
 00508BF9    ret
*}
//end;

//00508BFC
//function sub_00508BFC():?;
//begin
{*
 00508BFC    xor        eax,eax
 00508BFE    ret
*}
//end;

//00508C00
//function sub_00508C00():?;
//begin
{*
 00508C00    mov        eax,40
 00508C05    ret
*}
//end;

//00508C08
//function sub_00508C08():?;
//begin
{*
 00508C08    mov        eax,80
 00508C0D    ret
*}
//end;

//00508C10
//function sub_00508C10():?;
//begin
{*
 00508C10    mov        eax,20
 00508C15    ret
*}
//end;

//00508C18
//function sub_00508C18():?;
//begin
{*
 00508C18    mov        eax,7FFFFFF7
 00508C1D    ret
*}
//end;

//00508C20
//function sub_00508C20():?;
//begin
{*
 00508C20    mov        al,1
 00508C22    ret
*}
//end;

//00508C24
//function sub_00508C24():?;
//begin
{*
 00508C24    mov        eax,0FFFB
 00508C29    ret
*}
//end;

//00508C2C
//function sub_00508C2C():?;
//begin
{*
 00508C2C    xor        eax,eax
 00508C2E    ret
*}
//end;

//00508C30
//function sub_00508C30():?;
//begin
{*
 00508C30    mov        eax,40
 00508C35    ret
*}
//end;

//00508C38
//function sub_00508C38():?;
//begin
{*
 00508C38    mov        eax,100
 00508C3D    ret
*}
//end;

//00508C40
//function sub_00508C40():?;
//begin
{*
 00508C40    mov        eax,10
 00508C45    ret
*}
//end;

//00508C48
//function sub_00508C48():?;
//begin
{*
 00508C48    xor        eax,eax
 00508C4A    ret
*}
//end;

//00508C4C
//function sub_00508C4C():?;
//begin
{*
 00508C4C    mov        al,1
 00508C4E    ret
*}
//end;

//00508C50
//function sub_00508C50:?;
//begin
{*
 00508C50    push       ebp
 00508C51    mov        ebp,esp
 00508C53    push       0
 00508C55    push       ebx
 00508C56    mov        ebx,eax
 00508C58    xor        eax,eax
 00508C5A    push       ebp
 00508C5B    push       508CB8
 00508C60    push       dword ptr fs:[eax]
 00508C63    mov        dword ptr fs:[eax],esp
 00508C66    lea        edx,[ebp-4]
 00508C69    mov        eax,ebx
 00508C6B    mov        ecx,dword ptr [eax]
 00508C6D    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 00508C73    mov        eax,dword ptr [ebp-4]
 00508C76    mov        edx,dword ptr [eax]
 00508C78    call       dword ptr [edx+88]
 00508C7E    dec        al
>00508C80    je         00508C90
 00508C82    dec        al
>00508C84    je         00508C94
 00508C86    dec        al
>00508C88    je         00508C98
 00508C8A    dec        al
>00508C8C    je         00508C9C
>00508C8E    jmp        00508CA0
 00508C90    mov        bl,1
>00508C92    jmp        00508CA2
 00508C94    mov        bl,1
>00508C96    jmp        00508CA2
 00508C98    mov        bl,1
>00508C9A    jmp        00508CA2
 00508C9C    mov        bl,1
>00508C9E    jmp        00508CA2
 00508CA0    xor        ebx,ebx
 00508CA2    xor        eax,eax
 00508CA4    pop        edx
 00508CA5    pop        ecx
 00508CA6    pop        ecx
 00508CA7    mov        dword ptr fs:[eax],edx
 00508CAA    push       508CBF
 00508CAF    lea        eax,[ebp-4]
 00508CB2    call       @IntfClear
 00508CB7    ret
<00508CB8    jmp        @HandleFinally
<00508CBD    jmp        00508CAF
 00508CBF    mov        eax,ebx
 00508CC1    pop        ebx
 00508CC2    pop        ecx
 00508CC3    pop        ebp
 00508CC4    ret
*}
//end;

//00508CC8
//procedure sub_00508CC8(?:TZMySQLDatabaseMetadata; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00508CC8    push       ebp
 00508CC9    mov        ebp,esp
 00508CCB    push       ecx
 00508CCC    push       ebx
 00508CCD    push       esi
 00508CCE    push       edi
 00508CCF    mov        dword ptr [ebp-4],ecx
 00508CD2    mov        ebx,edx
 00508CD4    mov        edi,eax
 00508CD6    mov        esi,dword ptr [ebp+10]
 00508CD9    mov        eax,dword ptr [ebp+0C]
 00508CDC    test       eax,eax
>00508CDE    je         00508CE4
 00508CE0    xor        edx,edx
 00508CE2    mov        dword ptr [eax],edx
 00508CE4    mov        eax,dword ptr [ebp+8]
 00508CE7    test       eax,eax
>00508CE9    je         00508CEF
 00508CEB    xor        edx,edx
 00508CED    mov        dword ptr [eax],edx
 00508CEF    test       ebx,ebx
>00508CF1    jne        00508D13
 00508CF3    cmp        dword ptr [ebp-4],0
>00508CF7    je         00508D06
 00508CF9    mov        eax,dword ptr [ebp+0C]
 00508CFC    mov        edx,dword ptr [ebp-4]
 00508CFF    call       @LStrAsg
>00508D04    jmp        00508D1D
 00508D06    mov        eax,dword ptr [ebp+0C]
 00508D09    mov        edx,dword ptr [edi+24]; TZMySQLDatabaseMetadata.?f24:String
 00508D0C    call       @LStrAsg
>00508D11    jmp        00508D1D
 00508D13    mov        eax,dword ptr [ebp+0C]
 00508D16    mov        edx,ebx
 00508D18    call       @LStrAsg
 00508D1D    test       esi,esi
>00508D1F    jne        00508D30
 00508D21    mov        eax,dword ptr [ebp+8]
 00508D24    mov        edx,508D4C; '%'
 00508D29    call       @LStrAsg
>00508D2E    jmp        00508D3A
 00508D30    mov        eax,dword ptr [ebp+8]
 00508D33    mov        edx,esi
 00508D35    call       @LStrAsg
 00508D3A    pop        edi
 00508D3B    pop        esi
 00508D3C    pop        ebx
 00508D3D    pop        ecx
 00508D3E    pop        ebp
 00508D3F    ret        0C
*}
//end;

//00508D50
//procedure sub_00508D50(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00508D50    push       ebp
 00508D51    mov        ebp,esp
 00508D53    push       ecx
 00508D54    mov        ecx,0A
 00508D59    push       0
 00508D5B    push       0
 00508D5D    dec        ecx
<00508D5E    jne        00508D59
 00508D60    push       ecx
 00508D61    xchg       ecx,dword ptr [ebp-4]
 00508D64    push       ebx
 00508D65    push       esi
 00508D66    push       edi
 00508D67    mov        dword ptr [ebp-4],ecx
 00508D6A    mov        edi,edx
 00508D6C    mov        esi,eax
 00508D6E    mov        ebx,dword ptr [ebp+8]
 00508D71    xor        eax,eax
 00508D73    push       ebp
 00508D74    push       509089
 00508D79    push       dword ptr fs:[eax]
 00508D7C    mov        dword ptr fs:[eax],esp
 00508D7F    mov        ecx,ebx
 00508D81    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 00508D87    mov        edx,dword ptr [edx]
 00508D89    mov        eax,esi
 00508D8B    call       004D8E7C
 00508D90    mov        eax,dword ptr [ebp+10]
 00508D93    push       eax
 00508D94    lea        eax,[ebp-8]
 00508D97    call       @LStrClr
 00508D9C    push       eax
 00508D9D    lea        eax,[ebp-0C]
 00508DA0    call       @LStrClr
 00508DA5    push       eax
 00508DA6    mov        ecx,dword ptr [ebp-4]
 00508DA9    mov        edx,edi
 00508DAB    mov        eax,esi
 00508DAD    call       00508CC8
 00508DB2    lea        eax,[ebp-14]
 00508DB5    push       eax
 00508DB6    lea        edx,[ebp-2C]
 00508DB9    mov        eax,esi
 00508DBB    mov        ecx,dword ptr [eax]
 00508DBD    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 00508DC3    mov        eax,dword ptr [ebp-2C]
 00508DC6    lea        ecx,[ebp-28]
 00508DC9    mov        edx,dword ptr [ebp-8]
 00508DCC    mov        edi,dword ptr [eax]
 00508DCE    call       dword ptr [edi+14]
 00508DD1    mov        eax,dword ptr [ebp-28]
 00508DD4    mov        dword ptr [ebp-24],eax
 00508DD7    mov        byte ptr [ebp-20],0B
 00508DDB    mov        eax,dword ptr [ebp-0C]
 00508DDE    mov        dword ptr [ebp-1C],eax
 00508DE1    mov        byte ptr [ebp-18],0B
 00508DE5    lea        edx,[ebp-24]
 00508DE8    mov        ecx,1
 00508DED    mov        eax,5090A4; 'SHOW TABLES FROM %s LIKE '%s''
 00508DF2    call       Format
 00508DF7    mov        eax,dword ptr [ebp-14]
 00508DFA    push       eax
 00508DFB    lea        edx,[ebp-34]
 00508DFE    mov        eax,esi
 00508E00    mov        ecx,dword ptr [eax]
 00508E02    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 00508E08    mov        eax,dword ptr [ebp-34]
 00508E0B    lea        edx,[ebp-30]
 00508E0E    mov        ecx,dword ptr [eax]
 00508E10    call       dword ptr [ecx+0C]
 00508E13    mov        eax,dword ptr [ebp-30]
 00508E16    lea        ecx,[ebp-10]
 00508E19    pop        edx
 00508E1A    mov        edi,dword ptr [eax]
 00508E1C    call       dword ptr [edi+0C]
>00508E1F    jmp        00508E7D
 00508E21    mov        eax,dword ptr [ebx]
 00508E23    mov        edx,dword ptr [eax]
 00508E25    call       dword ptr [edx+1E4]
 00508E2B    mov        eax,dword ptr [ebx]
 00508E2D    mov        ecx,dword ptr [ebp-8]
 00508E30    mov        edx,1
 00508E35    mov        edi,dword ptr [eax]
 00508E37    call       dword ptr [edi+158]
 00508E3D    lea        ecx,[ebp-38]
 00508E40    mov        edx,1
 00508E45    mov        eax,dword ptr [ebp-10]
 00508E48    mov        edi,dword ptr [eax]
 00508E4A    call       dword ptr [edi+20]
 00508E4D    mov        ecx,dword ptr [ebp-38]
 00508E50    mov        eax,dword ptr [ebx]
 00508E52    mov        edx,3
 00508E57    mov        edi,dword ptr [eax]
 00508E59    call       dword ptr [edi+158]
 00508E5F    mov        eax,dword ptr [ebx]
 00508E61    mov        ecx,5090CC; 'TABLE'
 00508E66    mov        edx,4
 00508E6B    mov        edi,dword ptr [eax]
 00508E6D    call       dword ptr [edi+158]
 00508E73    mov        eax,dword ptr [ebx]
 00508E75    mov        edx,dword ptr [eax]
 00508E77    call       dword ptr [edx+1D0]
 00508E7D    mov        eax,dword ptr [ebp-10]
 00508E80    mov        edx,dword ptr [eax]
 00508E82    call       dword ptr [edx+0C]
 00508E85    test       al,al
<00508E87    jne        00508E21
 00508E89    mov        eax,dword ptr [ebp-10]
 00508E8C    mov        edx,dword ptr [eax]
 00508E8E    call       dword ptr [edx+10]
 00508E91    mov        eax,dword ptr [ebx]
 00508E93    mov        edx,dword ptr [eax]
 00508E95    call       dword ptr [edx+0EC]
 00508E9B    test       al,al
>00508E9D    jne        00508FF9
 00508EA3    mov        eax,dword ptr [ebp-0C]
 00508EA6    mov        edx,5090DC; '%'
 00508EAB    call       @LStrCmp
>00508EB0    je         00508FF9
 00508EB6    xor        eax,eax
 00508EB8    push       ebp
 00508EB9    push       508FDB
 00508EBE    push       dword ptr fs:[eax]
 00508EC1    mov        dword ptr fs:[eax],esp
 00508EC4    call       0050308C
 00508EC9    xor        eax,eax
 00508ECB    push       ebp
 00508ECC    push       508FCA
 00508ED1    push       dword ptr fs:[eax]
 00508ED4    mov        dword ptr fs:[eax],esp
 00508ED7    lea        eax,[ebp-40]
 00508EDA    push       eax
 00508EDB    lea        edx,[ebp-48]
 00508EDE    mov        eax,esi
 00508EE0    mov        ecx,dword ptr [eax]
 00508EE2    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 00508EE8    mov        eax,dword ptr [ebp-48]
 00508EEB    lea        ecx,[ebp-44]
 00508EEE    mov        edx,dword ptr [ebp-8]
 00508EF1    mov        edi,dword ptr [eax]
 00508EF3    call       dword ptr [edi+14]
 00508EF6    mov        eax,dword ptr [ebp-44]
 00508EF9    mov        dword ptr [ebp-24],eax
 00508EFC    mov        byte ptr [ebp-20],0B
 00508F00    lea        edx,[ebp-50]
 00508F03    mov        eax,esi
 00508F05    mov        ecx,dword ptr [eax]
 00508F07    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 00508F0D    mov        eax,dword ptr [ebp-50]
 00508F10    lea        ecx,[ebp-4C]
 00508F13    mov        edx,dword ptr [ebp-0C]
 00508F16    mov        edi,dword ptr [eax]
 00508F18    call       dword ptr [edi+14]
 00508F1B    mov        eax,dword ptr [ebp-4C]
 00508F1E    mov        dword ptr [ebp-1C],eax
 00508F21    mov        byte ptr [ebp-18],0B
 00508F25    lea        edx,[ebp-24]
 00508F28    mov        ecx,1
 00508F2D    mov        eax,5090E8; 'SHOW COLUMNS FROM %s.%s'
 00508F32    call       Format
 00508F37    mov        eax,dword ptr [ebp-40]
 00508F3A    push       eax
 00508F3B    lea        edx,[ebp-58]
 00508F3E    mov        eax,esi
 00508F40    mov        ecx,dword ptr [eax]
 00508F42    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 00508F48    mov        eax,dword ptr [ebp-58]
 00508F4B    lea        edx,[ebp-54]
 00508F4E    mov        ecx,dword ptr [eax]
 00508F50    call       dword ptr [ecx+0C]
 00508F53    mov        eax,dword ptr [ebp-54]
 00508F56    lea        ecx,[ebp-3C]
 00508F59    pop        edx
 00508F5A    mov        esi,dword ptr [eax]
 00508F5C    call       dword ptr [esi+0C]
 00508F5F    mov        eax,dword ptr [ebp-3C]
 00508F62    mov        edx,dword ptr [eax]
 00508F64    call       dword ptr [edx+0C]
 00508F67    test       al,al
>00508F69    je         00508FB7
 00508F6B    mov        eax,dword ptr [ebx]
 00508F6D    mov        edx,dword ptr [eax]
 00508F6F    call       dword ptr [edx+1E4]
 00508F75    mov        eax,dword ptr [ebx]
 00508F77    mov        ecx,dword ptr [ebp-8]
 00508F7A    mov        edx,1
 00508F7F    mov        esi,dword ptr [eax]
 00508F81    call       dword ptr [esi+158]
 00508F87    mov        eax,dword ptr [ebx]
 00508F89    mov        ecx,dword ptr [ebp-0C]
 00508F8C    mov        edx,3
 00508F91    mov        esi,dword ptr [eax]
 00508F93    call       dword ptr [esi+158]
 00508F99    mov        eax,dword ptr [ebx]
 00508F9B    mov        ecx,5090CC; 'TABLE'
 00508FA0    mov        edx,4
 00508FA5    mov        esi,dword ptr [eax]
 00508FA7    call       dword ptr [esi+158]
 00508FAD    mov        eax,dword ptr [ebx]
 00508FAF    mov        edx,dword ptr [eax]
 00508FB1    call       dword ptr [edx+1D0]
 00508FB7    xor        eax,eax
 00508FB9    pop        edx
 00508FBA    pop        ecx
 00508FBB    pop        ecx
 00508FBC    mov        dword ptr fs:[eax],edx
 00508FBF    push       508FD1
 00508FC4    call       005030A4
 00508FC9    ret
<00508FCA    jmp        @HandleFinally
<00508FCF    jmp        00508FC4
 00508FD1    xor        eax,eax
 00508FD3    pop        edx
 00508FD4    pop        ecx
 00508FD5    pop        ecx
 00508FD6    mov        dword ptr fs:[eax],edx
>00508FD9    jmp        00508FF9
<00508FDB    jmp        @HandleOnException
 00508FE0    dd        2
 00508FE4    dd        503028;EZMySQLSilentException
 00508FE8    dd        508FF4
 00508FEC    dd        4C6D20;EZSQLException
 00508FF0    dd        508FF4
 00508FF4    call       @DoneExcept
 00508FF9    xor        eax,eax
 00508FFB    pop        edx
 00508FFC    pop        ecx
 00508FFD    pop        ecx
 00508FFE    mov        dword ptr fs:[eax],edx
 00509001    push       509093
 00509006    lea        eax,[ebp-58]
 00509009    call       @IntfClear
 0050900E    lea        eax,[ebp-54]
 00509011    call       @IntfClear
 00509016    lea        eax,[ebp-50]
 00509019    call       @IntfClear
 0050901E    lea        eax,[ebp-4C]
 00509021    call       @LStrClr
 00509026    lea        eax,[ebp-48]
 00509029    call       @IntfClear
 0050902E    lea        eax,[ebp-44]
 00509031    mov        edx,2
 00509036    call       @LStrArrayClr
 0050903B    lea        eax,[ebp-3C]
 0050903E    call       @IntfClear
 00509043    lea        eax,[ebp-38]
 00509046    call       @LStrClr
 0050904B    lea        eax,[ebp-34]
 0050904E    call       @IntfClear
 00509053    lea        eax,[ebp-30]
 00509056    call       @IntfClear
 0050905B    lea        eax,[ebp-2C]
 0050905E    call       @IntfClear
 00509063    lea        eax,[ebp-28]
 00509066    call       @LStrClr
 0050906B    lea        eax,[ebp-14]
 0050906E    call       @LStrClr
 00509073    lea        eax,[ebp-10]
 00509076    call       @IntfClear
 0050907B    lea        eax,[ebp-0C]
 0050907E    mov        edx,2
 00509083    call       @LStrArrayClr
 00509088    ret
<00509089    jmp        @HandleFinally
<0050908E    jmp        00509006
 00509093    pop        edi
 00509094    pop        esi
 00509095    pop        ebx
 00509096    mov        esp,ebp
 00509098    pop        ebp
 00509099    ret        0C
*}
//end;

//00509100
//procedure sub_00509100(?:?);
//begin
{*
 00509100    push       ebp
 00509101    mov        ebp,esp
 00509103    xor        ecx,ecx
 00509105    push       ecx
 00509106    push       ecx
 00509107    push       ecx
 00509108    push       ecx
 00509109    push       ebx
 0050910A    push       esi
 0050910B    mov        ebx,edx
 0050910D    mov        esi,eax
 0050910F    xor        eax,eax
 00509111    push       ebp
 00509112    push       5091D0
 00509117    push       dword ptr fs:[eax]
 0050911A    mov        dword ptr fs:[eax],esp
 0050911D    mov        ecx,ebx
 0050911F    mov        edx,dword ptr ds:[61BB48]; ^gvar_0061DD44:TZMetadataColumnDefs
 00509125    mov        edx,dword ptr [edx]
 00509127    mov        eax,esi
 00509129    call       004D8E7C
 0050912E    lea        edx,[ebp-0C]
 00509131    mov        eax,esi
 00509133    mov        ecx,dword ptr [eax]
 00509135    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050913B    mov        eax,dword ptr [ebp-0C]
 0050913E    lea        edx,[ebp-8]
 00509141    mov        ecx,dword ptr [eax]
 00509143    call       dword ptr [ecx+0C]
 00509146    mov        eax,dword ptr [ebp-8]
 00509149    lea        ecx,[ebp-4]
 0050914C    mov        edx,5091E8; 'SHOW DATABASES'
 00509151    mov        esi,dword ptr [eax]
 00509153    call       dword ptr [esi+0C]
>00509156    jmp        0050918E
 00509158    mov        eax,dword ptr [ebx]
 0050915A    mov        edx,dword ptr [eax]
 0050915C    call       dword ptr [edx+1E4]
 00509162    lea        ecx,[ebp-10]
 00509165    mov        edx,1
 0050916A    mov        eax,dword ptr [ebp-4]
 0050916D    mov        esi,dword ptr [eax]
 0050916F    call       dword ptr [esi+20]
 00509172    mov        ecx,dword ptr [ebp-10]
 00509175    mov        eax,dword ptr [ebx]
 00509177    mov        edx,1
 0050917C    mov        esi,dword ptr [eax]
 0050917E    call       dword ptr [esi+158]
 00509184    mov        eax,dword ptr [ebx]
 00509186    mov        edx,dword ptr [eax]
 00509188    call       dword ptr [edx+1D0]
 0050918E    mov        eax,dword ptr [ebp-4]
 00509191    mov        edx,dword ptr [eax]
 00509193    call       dword ptr [edx+0C]
 00509196    test       al,al
<00509198    jne        00509158
 0050919A    mov        eax,dword ptr [ebp-4]
 0050919D    mov        edx,dword ptr [eax]
 0050919F    call       dword ptr [edx+10]
 005091A2    xor        eax,eax
 005091A4    pop        edx
 005091A5    pop        ecx
 005091A6    pop        ecx
 005091A7    mov        dword ptr fs:[eax],edx
 005091AA    push       5091D7
 005091AF    lea        eax,[ebp-10]
 005091B2    call       @LStrClr
 005091B7    lea        eax,[ebp-0C]
 005091BA    call       @IntfClear
 005091BF    lea        eax,[ebp-8]
 005091C2    call       @IntfClear
 005091C7    lea        eax,[ebp-4]
 005091CA    call       @IntfClear
 005091CF    ret
<005091D0    jmp        @HandleFinally
<005091D5    jmp        005091AF
 005091D7    pop        esi
 005091D8    pop        ebx
 005091D9    mov        esp,ebp
 005091DB    pop        ebp
 005091DC    ret
*}
//end;

//005091F8
//procedure sub_005091F8(?:?);
//begin
{*
 005091F8    push       ebp
 005091F9    mov        ebp,esp
 005091FB    push       ebx
 005091FC    push       esi
 005091FD    mov        ebx,edx
 005091FF    mov        esi,eax
 00509201    mov        ecx,ebx
 00509203    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 00509209    mov        edx,dword ptr [edx]
 0050920B    mov        eax,esi
 0050920D    call       004D8E7C
 00509212    mov        eax,dword ptr [ebx]
 00509214    mov        edx,dword ptr [eax]
 00509216    call       dword ptr [edx+1E4]
 0050921C    mov        eax,dword ptr [ebx]
 0050921E    mov        ecx,509248; 'TABLE'
 00509223    mov        edx,1
 00509228    mov        esi,dword ptr [eax]
 0050922A    call       dword ptr [esi+158]
 00509230    mov        eax,dword ptr [ebx]
 00509232    mov        edx,dword ptr [eax]
 00509234    call       dword ptr [edx+1D0]
 0050923A    pop        esi
 0050923B    pop        ebx
 0050923C    pop        ebp
 0050923D    ret
*}
//end;

//00509250
//procedure sub_00509250(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00509250    push       ebp
 00509251    mov        ebp,esp
 00509253    push       ecx
 00509254    mov        ecx,19
 00509259    push       0
 0050925B    push       0
 0050925D    dec        ecx
<0050925E    jne        00509259
 00509260    xchg       ecx,dword ptr [ebp-4]
 00509263    push       ebx
 00509264    push       esi
 00509265    push       edi
 00509266    mov        edi,ecx
 00509268    mov        esi,edx
 0050926A    mov        dword ptr [ebp-4],eax
 0050926D    xor        eax,eax
 0050926F    push       ebp
 00509270    push       509F07
 00509275    push       dword ptr fs:[eax]
 00509278    mov        dword ptr fs:[eax],esp
 0050927B    lea        ecx,[ebp-44]
 0050927E    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 00509284    mov        edx,dword ptr [edx]
 00509286    mov        eax,dword ptr [ebp-4]
 00509289    call       004D8E7C
 0050928E    mov        eax,dword ptr [ebp+0C]
 00509291    push       eax
 00509292    lea        eax,[ebp-14]
 00509295    call       @LStrClr
 0050929A    push       eax
 0050929B    lea        eax,[ebp-18]
 0050929E    call       @LStrClr
 005092A3    push       eax
 005092A4    mov        ecx,edi
 005092A6    mov        edx,esi
 005092A8    mov        eax,dword ptr [ebp-4]
 005092AB    call       00508CC8
 005092B0    xor        ebx,ebx
 005092B2    mov        dl,1
 005092B4    mov        eax,[0041C8E4]; TStringList
 005092B9    call       TObject.Create; TStringList.Create
 005092BE    mov        dword ptr [ebp-40],eax
 005092C1    mov        dl,1
 005092C3    mov        eax,[0041C8E4]; TStringList
 005092C8    call       TObject.Create; TStringList.Create
 005092CD    mov        dword ptr [ebp-24],eax
 005092D0    xor        eax,eax
 005092D2    push       ebp
 005092D3    push       509E48
 005092D8    push       dword ptr fs:[eax]
 005092DB    mov        dword ptr fs:[eax],esp
 005092DE    mov        eax,dword ptr [ebp+10]
 005092E1    push       eax
 005092E2    push       0
 005092E4    lea        eax,[ebp-48]
 005092E7    push       eax
 005092E8    mov        ecx,edi
 005092EA    mov        edx,esi
 005092EC    mov        eax,dword ptr [ebp-4]
 005092EF    call       004D9BE8
>005092F4    jmp        00509343
 005092F6    lea        ecx,[ebp-68]
 005092F9    mov        edx,3
 005092FE    mov        eax,dword ptr [ebp-48]
 00509301    mov        esi,dword ptr [eax]
 00509303    call       dword ptr [esi+20]
 00509306    mov        edx,dword ptr [ebp-68]
 00509309    mov        eax,dword ptr [ebp-40]
 0050930C    mov        ecx,dword ptr [eax]
 0050930E    call       dword ptr [ecx+38]; TStringList.Add
 00509311    mov        eax,dword ptr [ebp-40]
 00509314    mov        edx,dword ptr [eax]
 00509316    call       dword ptr [edx+14]; TStringList.GetCount
 00509319    mov        edx,eax
 0050931B    sub        edx,1
>0050931E    jno        00509325
 00509320    call       @IntOver
 00509325    lea        ecx,[ebp-6C]
 00509328    mov        eax,dword ptr [ebp-40]
 0050932B    mov        esi,dword ptr [eax]
 0050932D    call       dword ptr [esi+0C]; TStringList.Get
 00509330    mov        eax,dword ptr [ebp-6C]
 00509333    call       @LStrLen
 00509338    mov        edx,eax
 0050933A    mov        eax,ebx
 0050933C    call       Max
 00509341    mov        ebx,eax
 00509343    mov        eax,dword ptr [ebp-48]
 00509346    mov        edx,dword ptr [eax]
 00509348    call       dword ptr [edx+0C]
 0050934B    test       al,al
<0050934D    jne        005092F6
 0050934F    mov        eax,dword ptr [ebp-48]
 00509352    mov        edx,dword ptr [eax]
 00509354    call       dword ptr [edx+10]
 00509357    mov        eax,dword ptr [ebp-40]
 0050935A    mov        edx,dword ptr [eax]
 0050935C    call       dword ptr [edx+14]; TStringList.GetCount
 0050935F    sub        eax,1
>00509362    jno        00509369
 00509364    call       @IntOver
 00509369    test       eax,eax
>0050936B    jl         00509E2A
 00509371    inc        eax
 00509372    mov        dword ptr [ebp-4C],eax
 00509375    mov        dword ptr [ebp-8],0
 0050937C    mov        dword ptr [ebp-3C],1
 00509383    lea        ecx,[ebp-1C]
 00509386    mov        edx,dword ptr [ebp-8]
 00509389    mov        eax,dword ptr [ebp-40]
 0050938C    mov        ebx,dword ptr [eax]
 0050938E    call       dword ptr [ebx+0C]; TStringList.Get
 00509391    lea        eax,[ebp-70]
 00509394    push       eax
 00509395    lea        edx,[ebp-90]
 0050939B    mov        eax,dword ptr [ebp-4]
 0050939E    mov        ecx,dword ptr [eax]
 005093A0    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 005093A6    mov        eax,dword ptr [ebp-90]
 005093AC    lea        ecx,[ebp-8C]
 005093B2    mov        edx,dword ptr [ebp-14]
 005093B5    mov        ebx,dword ptr [eax]
 005093B7    call       dword ptr [ebx+14]
 005093BA    mov        eax,dword ptr [ebp-8C]
 005093C0    mov        dword ptr [ebp-88],eax
 005093C6    mov        byte ptr [ebp-84],0B
 005093CD    lea        edx,[ebp-98]
 005093D3    mov        eax,dword ptr [ebp-4]
 005093D6    mov        ecx,dword ptr [eax]
 005093D8    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 005093DE    mov        eax,dword ptr [ebp-98]
 005093E4    lea        ecx,[ebp-94]
 005093EA    mov        edx,dword ptr [ebp-1C]
 005093ED    mov        ebx,dword ptr [eax]
 005093EF    call       dword ptr [ebx+14]
 005093F2    mov        eax,dword ptr [ebp-94]
 005093F8    mov        dword ptr [ebp-80],eax
 005093FB    mov        byte ptr [ebp-7C],0B
 005093FF    mov        eax,dword ptr [ebp-18]
 00509402    mov        dword ptr [ebp-78],eax
 00509405    mov        byte ptr [ebp-74],0B
 00509409    lea        edx,[ebp-88]
 0050940F    mov        ecx,2
 00509414    mov        eax,509F24; 'SHOW COLUMNS FROM %s.%s LIKE '%s''
 00509419    call       Format
 0050941E    mov        eax,dword ptr [ebp-70]
 00509421    push       eax
 00509422    lea        edx,[ebp-0A0]
 00509428    mov        eax,dword ptr [ebp-4]
 0050942B    mov        ecx,dword ptr [eax]
 0050942D    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 00509433    mov        eax,dword ptr [ebp-0A0]
 00509439    lea        edx,[ebp-9C]
 0050943F    mov        ecx,dword ptr [eax]
 00509441    call       dword ptr [ecx+0C]
 00509444    mov        eax,dword ptr [ebp-9C]
 0050944A    lea        ecx,[ebp-50]
 0050944D    pop        edx
 0050944E    mov        ebx,dword ptr [eax]
 00509450    call       dword ptr [ebx+0C]
 00509453    mov        edx,509F50; 'Field'
 00509458    mov        eax,dword ptr [ebp-50]
 0050945B    mov        ecx,dword ptr [eax]
 0050945D    call       dword ptr [ecx+0D0]
 00509463    mov        dword ptr [ebp-64],eax
 00509466    mov        edx,509F60; 'Type'
 0050946B    mov        eax,dword ptr [ebp-50]
 0050946E    mov        ecx,dword ptr [eax]
 00509470    call       dword ptr [ecx+0D0]
 00509476    mov        dword ptr [ebp-60],eax
 00509479    mov        edx,509F70; 'Null'
 0050947E    mov        eax,dword ptr [ebp-50]
 00509481    mov        ecx,dword ptr [eax]
 00509483    call       dword ptr [ecx+0D0]
 00509489    mov        dword ptr [ebp-5C],eax
 0050948C    mov        edx,509F80; 'Extra'
 00509491    mov        eax,dword ptr [ebp-50]
 00509494    mov        ecx,dword ptr [eax]
 00509496    call       dword ptr [ecx+0D0]
 0050949C    mov        dword ptr [ebp-58],eax
 0050949F    mov        edx,509F90; 'Default'
 005094A4    mov        eax,dword ptr [ebp-50]
 005094A7    mov        ecx,dword ptr [eax]
 005094A9    call       dword ptr [ecx+0D0]
 005094AF    mov        dword ptr [ebp-54],eax
>005094B2    jmp        00509E06
 005094B7    xor        ebx,ebx
 005094B9    lea        eax,[ebp-2C]
 005094BC    call       @LStrClr
 005094C1    lea        eax,[ebp-30]
 005094C4    call       @LStrClr
 005094C9    mov        eax,dword ptr [ebp-44]
 005094CC    mov        edx,dword ptr [eax]
 005094CE    call       dword ptr [edx+1E4]
 005094D4    mov        ecx,dword ptr [ebp-14]
 005094D7    mov        edx,1
 005094DC    mov        eax,dword ptr [ebp-44]
 005094DF    mov        esi,dword ptr [eax]
 005094E1    call       dword ptr [esi+158]
 005094E7    xor        ecx,ecx
 005094E9    mov        edx,2
 005094EE    mov        eax,dword ptr [ebp-44]
 005094F1    mov        esi,dword ptr [eax]
 005094F3    call       dword ptr [esi+158]
 005094F9    mov        ecx,dword ptr [ebp-1C]
 005094FC    mov        edx,3
 00509501    mov        eax,dword ptr [ebp-44]
 00509504    mov        esi,dword ptr [eax]
 00509506    call       dword ptr [esi+158]
 0050950C    lea        ecx,[ebp-0A4]
 00509512    mov        edx,dword ptr [ebp-64]
 00509515    mov        eax,dword ptr [ebp-50]
 00509518    mov        esi,dword ptr [eax]
 0050951A    call       dword ptr [esi+20]
 0050951D    mov        ecx,dword ptr [ebp-0A4]
 00509523    mov        edx,4
 00509528    mov        eax,dword ptr [ebp-44]
 0050952B    mov        esi,dword ptr [eax]
 0050952D    call       dword ptr [esi+158]
 00509533    lea        ecx,[ebp-28]
 00509536    mov        edx,dword ptr [ebp-60]
 00509539    mov        eax,dword ptr [ebp-50]
 0050953C    mov        esi,dword ptr [eax]
 0050953E    call       dword ptr [esi+20]
 00509541    mov        eax,dword ptr [ebp-28]
 00509544    call       @LStrToPChar
 00509549    mov        esi,eax
 0050954B    mov        eax,esi
 0050954D    mov        edx,509F98; '('
 00509552    call       StrPos
 00509557    test       eax,eax
>00509559    je         0050958A
 0050955B    mov        ecx,509FA4; '()'
 00509560    mov        edx,dword ptr [ebp-28]
 00509563    mov        eax,dword ptr [ebp-24]
 00509566    call       004BF370
 0050956B    lea        ecx,[ebp-2C]
 0050956E    xor        edx,edx
 00509570    mov        eax,dword ptr [ebp-24]
 00509573    mov        edi,dword ptr [eax]
 00509575    call       dword ptr [edi+0C]; TStringList.Get
 00509578    lea        ecx,[ebp-30]
 0050957B    mov        edx,1
 00509580    mov        eax,dword ptr [ebp-24]
 00509583    mov        edi,dword ptr [eax]
 00509585    call       dword ptr [edi+0C]; TStringList.Get
>00509588    jmp        00509595
 0050958A    lea        eax,[ebp-2C]
 0050958D    mov        edx,dword ptr [ebp-28]
 00509590    call       @LStrLAsg
 00509595    lea        edx,[ebp-0A8]
 0050959B    mov        eax,dword ptr [ebp-2C]
 0050959E    call       LowerCase
 005095A3    mov        edx,dword ptr [ebp-0A8]
 005095A9    lea        eax,[ebp-2C]
 005095AC    call       @LStrLAsg
 005095B1    mov        edx,dword ptr [ebp-28]
 005095B4    mov        eax,dword ptr [ebp-2C]
 005095B7    call       005033C0
 005095BC    mov        byte ptr [ebp-0D],al
 005095BF    xor        ecx,ecx
 005095C1    mov        cl,byte ptr [ebp-0D]
 005095C4    mov        edx,5
 005095C9    mov        eax,dword ptr [ebp-44]
 005095CC    mov        edi,dword ptr [eax]
 005095CE    call       dword ptr [edi+140]
 005095D4    mov        ecx,dword ptr [ebp-2C]
 005095D7    mov        edx,6
 005095DC    mov        eax,dword ptr [ebp-44]
 005095DF    mov        edi,dword ptr [eax]
 005095E1    call       dword ptr [edi+158]
 005095E7    xor        ecx,ecx
 005095E9    mov        edx,7
 005095EE    mov        eax,dword ptr [ebp-44]
 005095F1    mov        edi,dword ptr [eax]
 005095F3    call       dword ptr [edi+140]
 005095F9    xor        ecx,ecx
 005095FB    mov        edx,9
 00509600    mov        eax,dword ptr [ebp-44]
 00509603    mov        edi,dword ptr [eax]
 00509605    call       dword ptr [edi+140]
 0050960B    mov        eax,dword ptr [ebp-2C]
 0050960E    mov        edx,509FB0; 'enum'
 00509613    call       @LStrCmp
>00509618    jne        005096A4
 0050961E    mov        ecx,509FC0; ','
 00509623    mov        edx,dword ptr [ebp-30]
 00509626    mov        eax,dword ptr [ebp-24]
 00509629    call       004BF370
 0050962E    mov        eax,dword ptr [ebp-24]
 00509631    mov        edx,dword ptr [eax]
 00509633    call       dword ptr [edx+14]; TStringList.GetCount
 00509636    mov        esi,eax
 00509638    sub        esi,1
>0050963B    jno        00509642
 0050963D    call       @IntOver
 00509642    test       esi,esi
>00509644    jl         0050967B
 00509646    inc        esi
 00509647    mov        dword ptr [ebp-0C],0
 0050964E    lea        ecx,[ebp-0AC]
 00509654    mov        edx,dword ptr [ebp-0C]
 00509657    mov        eax,dword ptr [ebp-24]
 0050965A    mov        edi,dword ptr [eax]
 0050965C    call       dword ptr [edi+0C]; TStringList.Get
 0050965F    mov        eax,dword ptr [ebp-0AC]
 00509665    call       @LStrLen
 0050966A    mov        edx,eax
 0050966C    mov        eax,ebx
 0050966E    call       Max
 00509673    mov        ebx,eax
 00509675    inc        dword ptr [ebp-0C]
 00509678    dec        esi
<00509679    jne        0050964E
 0050967B    mov        ecx,ebx
 0050967D    mov        edx,7
 00509682    mov        eax,dword ptr [ebp-44]
 00509685    mov        ebx,dword ptr [eax]
 00509687    call       dword ptr [ebx+140]
 0050968D    xor        ecx,ecx
 0050968F    mov        edx,9
 00509694    mov        eax,dword ptr [ebp-44]
 00509697    mov        ebx,dword ptr [eax]
 00509699    call       dword ptr [ebx+140]
>0050969F    jmp        00509A26
 005096A4    mov        eax,esi
 005096A6    mov        edx,509FC4; ','
 005096AB    call       StrPos
 005096B0    test       eax,eax
>005096B2    je         0050975C
 005096B8    mov        edx,dword ptr [ebp-30]
 005096BB    mov        eax,509FC0; ','
 005096C0    call       004BEC98
 005096C5    mov        esi,eax
 005096C7    lea        eax,[ebp-0B0]
 005096CD    push       eax
 005096CE    mov        ecx,esi
 005096D0    sub        ecx,1
>005096D3    jno        005096DA
 005096D5    call       @IntOver
 005096DA    mov        edx,1
 005096DF    mov        eax,dword ptr [ebp-30]
 005096E2    call       @LStrCopy
 005096E7    mov        eax,dword ptr [ebp-0B0]
 005096ED    xor        edx,edx
 005096EF    call       StrToIntDef
 005096F4    mov        ebx,eax
 005096F6    lea        eax,[ebp-0B4]
 005096FC    push       eax
 005096FD    mov        eax,dword ptr [ebp-20]
 00509700    call       @LStrLen
 00509705    mov        ecx,eax
 00509707    sub        ecx,esi
>00509709    jno        00509710
 0050970B    call       @IntOver
 00509710    mov        edx,esi
 00509712    add        edx,1
>00509715    jno        0050971C
 00509717    call       @IntOver
 0050971C    mov        eax,dword ptr [ebp-30]
 0050971F    call       @LStrCopy
 00509724    mov        eax,dword ptr [ebp-0B4]
 0050972A    xor        edx,edx
 0050972C    call       StrToIntDef
 00509731    mov        esi,eax
 00509733    mov        ecx,ebx
 00509735    mov        edx,7
 0050973A    mov        eax,dword ptr [ebp-44]
 0050973D    mov        ebx,dword ptr [eax]
 0050973F    call       dword ptr [ebx+140]
 00509745    mov        ecx,esi
 00509747    mov        edx,9
 0050974C    mov        eax,dword ptr [ebp-44]
 0050974F    mov        ebx,dword ptr [eax]
 00509751    call       dword ptr [ebx+140]
>00509757    jmp        00509A26
 0050975C    cmp        dword ptr [ebp-30],0
>00509760    je         00509773
 00509762    xor        edx,edx
 00509764    mov        eax,dword ptr [ebp-30]
 00509767    call       StrToIntDef
 0050976C    mov        ebx,eax
>0050976E    jmp        00509A02
 00509773    mov        eax,dword ptr [ebp-2C]
 00509776    mov        edx,509FD0; 'tinyint'
 0050977B    call       @LStrCmp
>00509780    jne        0050978C
 00509782    mov        ebx,1
>00509787    jmp        00509A02
 0050978C    mov        eax,dword ptr [ebp-2C]
 0050978F    mov        edx,509FE0; 'smallint'
 00509794    call       @LStrCmp
>00509799    jne        005097A5
 0050979B    mov        ebx,6
>005097A0    jmp        00509A02
 005097A5    mov        eax,dword ptr [ebp-2C]
 005097A8    mov        edx,509FF4; 'mediumint'
 005097AD    call       @LStrCmp
>005097B2    jne        005097BE
 005097B4    mov        ebx,6
>005097B9    jmp        00509A02
 005097BE    mov        eax,dword ptr [ebp-2C]
 005097C1    mov        edx,50A008; 'int'
 005097C6    call       @LStrCmp
>005097CB    jne        005097D7
 005097CD    mov        ebx,0B
>005097D2    jmp        00509A02
 005097D7    mov        eax,dword ptr [ebp-2C]
 005097DA    mov        edx,50A014; 'integer'
 005097DF    call       @LStrCmp
>005097E4    jne        005097F0
 005097E6    mov        ebx,0B
>005097EB    jmp        00509A02
 005097F0    mov        eax,dword ptr [ebp-2C]
 005097F3    mov        edx,50A024; 'bigint'
 005097F8    call       @LStrCmp
>005097FD    jne        00509809
 005097FF    mov        ebx,19
>00509804    jmp        00509A02
 00509809    mov        eax,dword ptr [ebp-2C]
 0050980C    mov        edx,50A034; 'int24'
 00509811    call       @LStrCmp
>00509816    jne        00509822
 00509818    mov        ebx,19
>0050981D    jmp        00509A02
 00509822    mov        eax,dword ptr [ebp-2C]
 00509825    mov        edx,50A044; 'real'
 0050982A    call       @LStrCmp
>0050982F    jne        0050983B
 00509831    mov        ebx,0C
>00509836    jmp        00509A02
 0050983B    mov        eax,dword ptr [ebp-2C]
 0050983E    mov        edx,50A054; 'float'
 00509843    call       @LStrCmp
>00509848    jne        00509854
 0050984A    mov        ebx,0C
>0050984F    jmp        00509A02
 00509854    mov        eax,dword ptr [ebp-2C]
 00509857    mov        edx,50A064; 'decimal'
 0050985C    call       @LStrCmp
>00509861    jne        0050986D
 00509863    mov        ebx,0C
>00509868    jmp        00509A02
 0050986D    mov        eax,dword ptr [ebp-2C]
 00509870    mov        edx,50A074; 'numeric'
 00509875    call       @LStrCmp
>0050987A    jne        00509886
 0050987C    mov        ebx,0C
>00509881    jmp        00509A02
 00509886    mov        eax,dword ptr [ebp-2C]
 00509889    mov        edx,50A084; 'double'
 0050988E    call       @LStrCmp
>00509893    jne        0050989F
 00509895    mov        ebx,16
>0050989A    jmp        00509A02
 0050989F    mov        eax,dword ptr [ebp-2C]
 005098A2    mov        edx,50A094; 'char'
 005098A7    call       @LStrCmp
>005098AC    jne        005098B8
 005098AE    mov        ebx,1
>005098B3    jmp        00509A02
 005098B8    mov        eax,dword ptr [ebp-2C]
 005098BB    mov        edx,50A0A4; 'varchar'
 005098C0    call       @LStrCmp
>005098C5    jne        005098D1
 005098C7    mov        ebx,0FF
>005098CC    jmp        00509A02
 005098D1    mov        eax,dword ptr [ebp-2C]
 005098D4    mov        edx,50A0B4; 'date'
 005098D9    call       @LStrCmp
>005098DE    jne        005098EA
 005098E0    mov        ebx,0A
>005098E5    jmp        00509A02
 005098EA    mov        eax,dword ptr [ebp-2C]
 005098ED    mov        edx,50A0C4; 'time'
 005098F2    call       @LStrCmp
>005098F7    jne        00509903
 005098F9    mov        ebx,8
>005098FE    jmp        00509A02
 00509903    mov        eax,dword ptr [ebp-2C]
 00509906    mov        edx,50A0D4; 'timestamp'
 0050990B    call       @LStrCmp
>00509910    jne        0050991C
 00509912    mov        ebx,13
>00509917    jmp        00509A02
 0050991C    mov        eax,dword ptr [ebp-2C]
 0050991F    mov        edx,50A0E8; 'datetime'
 00509924    call       @LStrCmp
>00509929    jne        00509935
 0050992B    mov        ebx,13
>00509930    jmp        00509A02
 00509935    mov        eax,dword ptr [ebp-2C]
 00509938    mov        edx,50A0FC; 'tinyblob'
 0050993D    call       @LStrCmp
>00509942    jne        0050994E
 00509944    mov        ebx,0FF
>00509949    jmp        00509A02
 0050994E    mov        eax,dword ptr [ebp-2C]
 00509951    mov        edx,50A110; 'blob'
 00509956    call       @LStrCmp
>0050995B    jne        00509967
 0050995D    mov        ebx,0FFFF
>00509962    jmp        00509A02
 00509967    mov        eax,dword ptr [ebp-2C]
 0050996A    mov        edx,50A120; 'mediumblob'
 0050996F    call       @LStrCmp
>00509974    jne        00509980
 00509976    mov        ebx,0F85EDF
>0050997B    jmp        00509A02
 00509980    mov        eax,dword ptr [ebp-2C]
 00509983    mov        edx,50A134; 'longblob'
 00509988    call       @LStrCmp
>0050998D    jne        00509996
 0050998F    mov        ebx,7FFFFFFF
>00509994    jmp        00509A02
 00509996    mov        eax,dword ptr [ebp-2C]
 00509999    mov        edx,50A148; 'tinytext'
 0050999E    call       @LStrCmp
>005099A3    jne        005099AC
 005099A5    mov        ebx,0FF
>005099AA    jmp        00509A02
 005099AC    mov        eax,dword ptr [ebp-2C]
 005099AF    mov        edx,50A15C; 'text'
 005099B4    call       @LStrCmp
>005099B9    jne        005099C2
 005099BB    mov        ebx,0FFFF
>005099C0    jmp        00509A02
 005099C2    mov        eax,dword ptr [ebp-2C]
 005099C5    mov        edx,50A16C; 'mediumtext'
 005099CA    call       @LStrCmp
>005099CF    jne        005099D8
 005099D1    mov        ebx,0F85EDF
>005099D6    jmp        00509A02
 005099D8    mov        eax,dword ptr [ebp-2C]
 005099DB    mov        edx,509FB0; 'enum'
 005099E0    call       @LStrCmp
>005099E5    jne        005099EE
 005099E7    mov        ebx,0FF
>005099EC    jmp        00509A02
 005099EE    mov        eax,dword ptr [ebp-2C]
 005099F1    mov        edx,50A180; 'set'
 005099F6    call       @LStrCmp
>005099FB    jne        00509A02
 005099FD    mov        ebx,0FF
 00509A02    mov        ecx,ebx
 00509A04    mov        edx,7
 00509A09    mov        eax,dword ptr [ebp-44]
 00509A0C    mov        ebx,dword ptr [eax]
 00509A0E    call       dword ptr [ebx+140]
 00509A14    xor        ecx,ecx
 00509A16    mov        edx,9
 00509A1B    mov        eax,dword ptr [ebp-44]
 00509A1E    mov        ebx,dword ptr [eax]
 00509A20    call       dword ptr [ebx+140]
 00509A26    mov        ecx,0FFFF
 00509A2B    mov        edx,8
 00509A30    mov        eax,dword ptr [ebp-44]
 00509A33    mov        ebx,dword ptr [eax]
 00509A35    call       dword ptr [ebx+140]
 00509A3B    mov        edx,0A
 00509A40    mov        eax,dword ptr [ebp-44]
 00509A43    mov        ecx,dword ptr [eax]
 00509A45    call       dword ptr [ecx+130]
 00509A4B    lea        ecx,[ebp-34]
 00509A4E    mov        edx,dword ptr [ebp-5C]
 00509A51    mov        eax,dword ptr [ebp-50]
 00509A54    mov        ebx,dword ptr [eax]
 00509A56    call       dword ptr [ebx+20]
 00509A59    cmp        dword ptr [ebp-34],0
>00509A5D    je         00509AC3
 00509A5F    mov        eax,dword ptr [ebp-34]
 00509A62    mov        edx,50A18C; 'YES'
 00509A67    call       @LStrCmp
>00509A6C    jne        00509A9A
 00509A6E    mov        ecx,1
 00509A73    mov        edx,0B
 00509A78    mov        eax,dword ptr [ebp-44]
 00509A7B    mov        ebx,dword ptr [eax]
 00509A7D    call       dword ptr [ebx+140]
 00509A83    mov        ecx,50A18C; 'YES'
 00509A88    mov        edx,12
 00509A8D    mov        eax,dword ptr [ebp-44]
 00509A90    mov        ebx,dword ptr [eax]
 00509A92    call       dword ptr [ebx+158]
>00509A98    jmp        00509AEA
 00509A9A    xor        ecx,ecx
 00509A9C    mov        edx,0B
 00509AA1    mov        eax,dword ptr [ebp-44]
 00509AA4    mov        ebx,dword ptr [eax]
 00509AA6    call       dword ptr [ebx+140]
 00509AAC    mov        ecx,50A198; 'NO'
 00509AB1    mov        edx,12
 00509AB6    mov        eax,dword ptr [ebp-44]
 00509AB9    mov        ebx,dword ptr [eax]
 00509ABB    call       dword ptr [ebx+158]
>00509AC1    jmp        00509AEA
 00509AC3    xor        ecx,ecx
 00509AC5    mov        edx,0B
 00509ACA    mov        eax,dword ptr [ebp-44]
 00509ACD    mov        ebx,dword ptr [eax]
 00509ACF    call       dword ptr [ebx+140]
 00509AD5    mov        ecx,50A198; 'NO'
 00509ADA    mov        edx,12
 00509ADF    mov        eax,dword ptr [ebp-44]
 00509AE2    mov        ebx,dword ptr [eax]
 00509AE4    call       dword ptr [ebx+158]
 00509AEA    lea        ecx,[ebp-0B8]
 00509AF0    mov        edx,dword ptr [ebp-58]
 00509AF3    mov        eax,dword ptr [ebp-50]
 00509AF6    mov        ebx,dword ptr [eax]
 00509AF8    call       dword ptr [ebx+20]
 00509AFB    mov        ecx,dword ptr [ebp-0B8]
 00509B01    mov        edx,0C
 00509B06    mov        eax,dword ptr [ebp-44]
 00509B09    mov        ebx,dword ptr [eax]
 00509B0B    call       dword ptr [ebx+158]
 00509B11    mov        ebx,dword ptr [ebp-54]
 00509B14    mov        edx,ebx
 00509B16    mov        eax,dword ptr [ebp-50]
 00509B19    mov        ecx,dword ptr [eax]
 00509B1B    call       dword ptr [ecx+18]
 00509B1E    test       al,al
>00509B20    je         00509B31
 00509B22    xor        ebx,ebx
 00509B24    lea        eax,[ebp-38]
 00509B27    call       @LStrClr
>00509B2C    jmp        00509BF7
 00509B31    lea        ecx,[ebp-38]
 00509B34    mov        edx,ebx
 00509B36    mov        eax,dword ptr [ebp-50]
 00509B39    mov        ebx,dword ptr [eax]
 00509B3B    call       dword ptr [ebx+20]
 00509B3E    cmp        dword ptr [ebp-38],0
>00509B42    je         00509B4B
 00509B44    mov        bl,1
>00509B46    jmp        00509BF7
 00509B4B    xor        ebx,ebx
 00509B4D    mov        edx,dword ptr [ebp-2C]
 00509B50    mov        eax,50A110; 'blob'
 00509B55    call       @LStrPos
 00509B5A    test       eax,eax
>00509B5C    jle        00509B60
 00509B5E    mov        bl,1
 00509B60    mov        edx,dword ptr [ebp-2C]
 00509B63    mov        eax,50A15C; 'text'
 00509B68    call       @LStrPos
 00509B6D    test       eax,eax
>00509B6F    jle        00509B73
 00509B71    mov        bl,1
 00509B73    mov        edx,dword ptr [ebp-2C]
 00509B76    mov        eax,50A094; 'char'
 00509B7B    call       @LStrPos
 00509B80    test       eax,eax
>00509B82    jle        00509B86
 00509B84    mov        bl,1
 00509B86    mov        eax,50A180; 'set'
 00509B8B    mov        edx,dword ptr [ebp-2C]
 00509B8E    call       @LStrCmp
>00509B93    jne        00509B97
 00509B95    mov        bl,1
 00509B97    mov        eax,509FB0; 'enum'
 00509B9C    mov        edx,dword ptr [ebp-2C]
 00509B9F    call       @LStrCmp
>00509BA4    jne        00509BF7
 00509BA6    mov        bl,1
 00509BA8    lea        eax,[ebp-38]
 00509BAB    push       eax
 00509BAC    mov        eax,dword ptr [ebp-30]
 00509BAF    call       @LStrLen
 00509BB4    mov        ecx,eax
 00509BB6    sub        ecx,1
>00509BB9    jno        00509BC0
 00509BBB    call       @IntOver
 00509BC0    mov        edx,2
 00509BC5    mov        eax,dword ptr [ebp-30]
 00509BC8    call       @LStrCopy
 00509BCD    lea        eax,[ebp-38]
 00509BD0    push       eax
 00509BD1    mov        edx,dword ptr [ebp-38]
 00509BD4    mov        eax,50A1A4; '''
 00509BD9    call       @LStrPos
 00509BDE    mov        ecx,eax
 00509BE0    sub        ecx,1
>00509BE3    jno        00509BEA
 00509BE5    call       @IntOver
 00509BEA    mov        edx,1
 00509BEF    mov        eax,dword ptr [ebp-38]
 00509BF2    call       @LStrCopy
 00509BF7    test       bl,bl
>00509BF9    je         00509CC5
 00509BFF    mov        al,byte ptr [ebp-0D]
 00509C02    add        al,0F7
 00509C04    sub        al,2
>00509C06    jb         00509C10
 00509C08    sub        al,4
>00509C0A    je         00509C10
 00509C0C    sub        al,2
>00509C0E    jne        00509C42
 00509C10    mov        eax,dword ptr [ebp-38]
 00509C13    mov        edx,50A1B0; 'CURRENT_TIMESTAMP'
 00509C18    call       @LStrCmp
>00509C1D    je         00509CC5
 00509C23    push       50A1A4; '''
 00509C28    push       dword ptr [ebp-38]
 00509C2B    push       50A1A4; '''
 00509C30    lea        eax,[ebp-38]
 00509C33    mov        edx,3
 00509C38    call       @LStrCatN
>00509C3D    jmp        00509CC5
 00509C42    mov        al,byte ptr [ebp-0D]
 00509C45    add        al,0F4
 00509C47    sub        al,3
>00509C49    jae        00509C76
 00509C4B    mov        eax,dword ptr [ebp-38]
 00509C4E    mov        edx,50A1B0; 'CURRENT_TIMESTAMP'
 00509C53    call       @LStrCmp
>00509C58    je         00509CC5
 00509C5A    push       50A1A4; '''
 00509C5F    push       dword ptr [ebp-38]
 00509C62    push       50A1A4; '''
 00509C67    lea        eax,[ebp-38]
 00509C6A    mov        edx,3
 00509C6F    call       @LStrCatN
>00509C74    jmp        00509CC5
 00509C76    cmp        byte ptr [ebp-0D],1
>00509C7A    jne        00509CC5
 00509C7C    mov        eax,dword ptr [ebp-2C]
 00509C7F    mov        edx,509FB0; 'enum'
 00509C84    call       @LStrCmp
>00509C89    jne        00509CC5
 00509C8B    mov        eax,dword ptr [ebp-38]
 00509C8E    mov        edx,50A1CC; 'y'
 00509C93    call       @LStrCmp
>00509C98    je         00509CA9
 00509C9A    mov        eax,dword ptr [ebp-38]
 00509C9D    mov        edx,50A1D8; 'Y'
 00509CA2    call       @LStrCmp
>00509CA7    jne        00509CB8
 00509CA9    lea        eax,[ebp-38]
 00509CAC    mov        edx,50A1E4; '1'
 00509CB1    call       @LStrLAsg
>00509CB6    jmp        00509CC5
 00509CB8    lea        eax,[ebp-38]
 00509CBB    mov        edx,50A1F0; '0'
 00509CC0    call       @LStrLAsg
 00509CC5    mov        ecx,dword ptr [ebp-38]
 00509CC8    mov        edx,0D
 00509CCD    mov        eax,dword ptr [ebp-44]
 00509CD0    mov        ebx,dword ptr [eax]
 00509CD2    call       dword ptr [ebx+158]
 00509CD8    mov        edx,0E
 00509CDD    mov        eax,dword ptr [ebp-44]
 00509CE0    mov        ecx,dword ptr [eax]
 00509CE2    call       dword ptr [ecx+130]
 00509CE8    mov        edx,0F
 00509CED    mov        eax,dword ptr [ebp-44]
 00509CF0    mov        ecx,dword ptr [eax]
 00509CF2    call       dword ptr [ecx+130]
 00509CF8    mov        ecx,dword ptr [ebp-3C]
 00509CFB    mov        edx,11
 00509D00    mov        eax,dword ptr [ebp-44]
 00509D03    mov        ebx,dword ptr [eax]
 00509D05    call       dword ptr [ebx+140]
 00509D0B    lea        ecx,[ebp-0C4]
 00509D11    mov        edx,dword ptr [ebp-58]
 00509D14    mov        eax,dword ptr [ebp-50]
 00509D17    mov        ebx,dword ptr [eax]
 00509D19    call       dword ptr [ebx+20]
 00509D1C    mov        eax,dword ptr [ebp-0C4]
 00509D22    lea        edx,[ebp-0C0]
 00509D28    call       LowerCase
 00509D2D    mov        eax,dword ptr [ebp-0C0]
 00509D33    lea        edx,[ebp-0BC]
 00509D39    call       Trim
 00509D3E    mov        eax,dword ptr [ebp-0BC]
 00509D44    mov        edx,50A1FC; 'auto_increment'
 00509D49    call       @LStrCmp
 00509D4E    sete       cl
 00509D51    mov        edx,13
 00509D56    mov        eax,dword ptr [ebp-44]
 00509D59    mov        ebx,dword ptr [eax]
 00509D5B    call       dword ptr [ebx+134]
 00509D61    lea        ecx,[ebp-0C8]
 00509D67    mov        edx,dword ptr [ebp-64]
 00509D6A    mov        eax,dword ptr [ebp-50]
 00509D6D    mov        ebx,dword ptr [eax]
 00509D6F    call       dword ptr [ebx+20]
 00509D72    mov        eax,dword ptr [ebp-0C8]
 00509D78    push       eax
 00509D79    lea        edx,[ebp-0CC]
 00509D7F    mov        eax,dword ptr [ebp-4]
 00509D82    mov        ecx,dword ptr [eax]
 00509D84    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 00509D8A    mov        eax,dword ptr [ebp-0CC]
 00509D90    pop        edx
 00509D91    mov        ecx,dword ptr [eax]
 00509D93    call       dword ptr [ecx+0C]
 00509D96    mov        ecx,eax
 00509D98    mov        edx,14
 00509D9D    mov        eax,dword ptr [ebp-44]
 00509DA0    mov        ebx,dword ptr [eax]
 00509DA2    call       dword ptr [ebx+134]
 00509DA8    mov        cl,1
 00509DAA    mov        edx,15
 00509DAF    mov        eax,dword ptr [ebp-44]
 00509DB2    mov        ebx,dword ptr [eax]
 00509DB4    call       dword ptr [ebx+134]
 00509DBA    mov        cl,1
 00509DBC    mov        edx,16
 00509DC1    mov        eax,dword ptr [ebp-44]
 00509DC4    mov        ebx,dword ptr [eax]
 00509DC6    call       dword ptr [ebx+134]
 00509DCC    mov        cl,1
 00509DCE    mov        edx,17
 00509DD3    mov        eax,dword ptr [ebp-44]
 00509DD6    mov        ebx,dword ptr [eax]
 00509DD8    call       dword ptr [ebx+134]
 00509DDE    xor        ecx,ecx
 00509DE0    mov        edx,18
 00509DE5    mov        eax,dword ptr [ebp-44]
 00509DE8    mov        ebx,dword ptr [eax]
 00509DEA    call       dword ptr [ebx+134]
 00509DF0    add        dword ptr [ebp-3C],1
>00509DF4    jno        00509DFB
 00509DF6    call       @IntOver
 00509DFB    mov        eax,dword ptr [ebp-44]
 00509DFE    mov        edx,dword ptr [eax]
 00509E00    call       dword ptr [edx+1D0]
 00509E06    mov        eax,dword ptr [ebp-50]
 00509E09    mov        edx,dword ptr [eax]
 00509E0B    call       dword ptr [edx+0C]
 00509E0E    test       al,al
<00509E10    jne        005094B7
 00509E16    mov        eax,dword ptr [ebp-50]
 00509E19    mov        edx,dword ptr [eax]
 00509E1B    call       dword ptr [edx+10]
 00509E1E    inc        dword ptr [ebp-8]
 00509E21    dec        dword ptr [ebp-4C]
<00509E24    jne        0050937C
 00509E2A    xor        eax,eax
 00509E2C    pop        edx
 00509E2D    pop        ecx
 00509E2E    pop        ecx
 00509E2F    mov        dword ptr fs:[eax],edx
 00509E32    push       509E4F
 00509E37    mov        eax,dword ptr [ebp-40]
 00509E3A    call       TObject.Free
 00509E3F    mov        eax,dword ptr [ebp-24]
 00509E42    call       TObject.Free
 00509E47    ret
<00509E48    jmp        @HandleFinally
<00509E4D    jmp        00509E37
 00509E4F    mov        eax,dword ptr [ebp+8]
 00509E52    mov        edx,dword ptr [ebp-44]
 00509E55    call       @IntfCopy
 00509E5A    xor        eax,eax
 00509E5C    pop        edx
 00509E5D    pop        ecx
 00509E5E    pop        ecx
 00509E5F    mov        dword ptr fs:[eax],edx
 00509E62    push       509F11
 00509E67    lea        eax,[ebp-0CC]
 00509E6D    call       @IntfClear
 00509E72    lea        eax,[ebp-0C8]
 00509E78    mov        edx,0A
 00509E7D    call       @LStrArrayClr
 00509E82    lea        eax,[ebp-0A0]
 00509E88    call       @IntfClear
 00509E8D    lea        eax,[ebp-9C]
 00509E93    call       @IntfClear
 00509E98    lea        eax,[ebp-98]
 00509E9E    call       @IntfClear
 00509EA3    lea        eax,[ebp-94]
 00509EA9    call       @LStrClr
 00509EAE    lea        eax,[ebp-90]
 00509EB4    call       @IntfClear
 00509EB9    lea        eax,[ebp-8C]
 00509EBF    call       @LStrClr
 00509EC4    lea        eax,[ebp-70]
 00509EC7    mov        edx,3
 00509ECC    call       @LStrArrayClr
 00509ED1    lea        eax,[ebp-50]
 00509ED4    call       @IntfClear
 00509ED9    lea        eax,[ebp-48]
 00509EDC    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 00509EE2    mov        ecx,2
 00509EE7    call       @FinalizeArray
 00509EEC    lea        eax,[ebp-38]
 00509EEF    mov        edx,5
 00509EF4    call       @LStrArrayClr
 00509EF9    lea        eax,[ebp-20]
 00509EFC    mov        edx,4
 00509F01    call       @LStrArrayClr
 00509F06    ret
<00509F07    jmp        @HandleFinally
<00509F0C    jmp        00509E67
 00509F11    pop        edi
 00509F12    pop        esi
 00509F13    pop        ebx
 00509F14    mov        esp,ebp
 00509F16    pop        ebp
 00509F17    ret        0C
*}
//end;

//0050A20C
//procedure sub_0050A20C(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050A20C    push       ebp
 0050A20D    mov        ebp,esp
 0050A20F    push       ecx
 0050A210    mov        ecx,0B
 0050A215    push       0
 0050A217    push       0
 0050A219    dec        ecx
<0050A21A    jne        0050A215
 0050A21C    push       ecx
 0050A21D    xchg       ecx,dword ptr [ebp-4]
 0050A220    push       ebx
 0050A221    push       esi
 0050A222    push       edi
 0050A223    mov        dword ptr [ebp-4],ecx
 0050A226    mov        edi,edx
 0050A228    mov        esi,eax
 0050A22A    mov        ebx,dword ptr [ebp+8]
 0050A22D    xor        eax,eax
 0050A22F    push       ebp
 0050A230    push       50A4EA
 0050A235    push       dword ptr fs:[eax]
 0050A238    mov        dword ptr fs:[eax],esp
 0050A23B    mov        ecx,ebx
 0050A23D    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 0050A243    mov        edx,dword ptr [edx]
 0050A245    mov        eax,esi
 0050A247    call       004D8E7C
 0050A24C    mov        eax,dword ptr [ebp+0C]
 0050A24F    push       eax
 0050A250    lea        eax,[ebp-0C]
 0050A253    call       @LStrClr
 0050A258    push       eax
 0050A259    lea        eax,[ebp-10]
 0050A25C    call       @LStrClr
 0050A261    push       eax
 0050A262    mov        ecx,dword ptr [ebp-4]
 0050A265    mov        edx,edi
 0050A267    mov        eax,esi
 0050A269    call       00508CC8
 0050A26E    mov        dl,1
 0050A270    mov        eax,[0041C8E4]; TStringList
 0050A275    call       TObject.Create; TStringList.Create
 0050A27A    mov        dword ptr [ebp-34],eax
 0050A27D    xor        eax,eax
 0050A27F    push       ebp
 0050A280    push       50A4A0
 0050A285    push       dword ptr fs:[eax]
 0050A288    mov        dword ptr fs:[eax],esp
 0050A28B    lea        edx,[ebp-40]
 0050A28E    mov        eax,esi
 0050A290    mov        ecx,dword ptr [eax]
 0050A292    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050A298    mov        eax,dword ptr [ebp-40]
 0050A29B    lea        edx,[ebp-3C]
 0050A29E    mov        ecx,dword ptr [eax]
 0050A2A0    call       dword ptr [ecx+0C]
 0050A2A3    mov        eax,dword ptr [ebp-3C]
 0050A2A6    push       eax
 0050A2A7    lea        eax,[ebp-44]
 0050A2AA    push       eax
 0050A2AB    mov        eax,dword ptr [ebp-0C]
 0050A2AE    mov        dword ptr [ebp-5C],eax
 0050A2B1    mov        byte ptr [ebp-58],0B
 0050A2B5    mov        eax,dword ptr [ebp+10]
 0050A2B8    mov        dword ptr [ebp-54],eax
 0050A2BB    mov        byte ptr [ebp-50],0B
 0050A2BF    mov        eax,dword ptr [ebp-10]
 0050A2C2    mov        dword ptr [ebp-4C],eax
 0050A2C5    mov        byte ptr [ebp-48],0B
 0050A2C9    lea        edx,[ebp-5C]
 0050A2CC    mov        ecx,2
 0050A2D1    mov        eax,50A504; 'SELECT c.host, c.db, t.grantor, c.user, c.table_name, c.column_name, c.column_priv FROM mysql.columns_priv c, mysql.tables_priv t WHERE c.host=t.host AND c.db=t.db AND c.table_name=t.table_name AND c.db='%s' AND c.table_name='%s' AND c.column_name LIKE '%s''
 0050A2D6    call       Format
 0050A2DB    mov        edx,dword ptr [ebp-44]
 0050A2DE    lea        ecx,[ebp-38]
 0050A2E1    pop        eax
 0050A2E2    mov        esi,dword ptr [eax]
 0050A2E4    call       dword ptr [esi+0C]
>0050A2E7    jmp        0050A472
 0050A2EC    lea        ecx,[ebp-14]
 0050A2EF    mov        edx,1
 0050A2F4    mov        eax,dword ptr [ebp-38]
 0050A2F7    mov        esi,dword ptr [eax]
 0050A2F9    call       dword ptr [esi+20]
 0050A2FC    lea        ecx,[ebp-18]
 0050A2FF    mov        edx,2
 0050A304    mov        eax,dword ptr [ebp-38]
 0050A307    mov        esi,dword ptr [eax]
 0050A309    call       dword ptr [esi+20]
 0050A30C    lea        ecx,[ebp-1C]
 0050A30F    mov        edx,4
 0050A314    mov        eax,dword ptr [ebp-38]
 0050A317    mov        esi,dword ptr [eax]
 0050A319    call       dword ptr [esi+20]
 0050A31C    lea        ecx,[ebp-20]
 0050A31F    mov        edx,5
 0050A324    mov        eax,dword ptr [ebp-38]
 0050A327    mov        esi,dword ptr [eax]
 0050A329    call       dword ptr [esi+20]
 0050A32C    cmp        dword ptr [ebp-20],0
>0050A330    jne        0050A33F
 0050A332    lea        eax,[ebp-20]
 0050A335    mov        edx,50A610; '%'
 0050A33A    call       @LStrLAsg
 0050A33F    cmp        dword ptr [ebp-14],0
>0050A343    je         0050A35D
 0050A345    push       dword ptr [ebp-20]
 0050A348    push       50A61C; '@'
 0050A34D    push       dword ptr [ebp-14]
 0050A350    lea        eax,[ebp-24]
 0050A353    mov        edx,3
 0050A358    call       @LStrCatN
 0050A35D    lea        ecx,[ebp-2C]
 0050A360    mov        edx,6
 0050A365    mov        eax,dword ptr [ebp-38]
 0050A368    mov        esi,dword ptr [eax]
 0050A36A    call       dword ptr [esi+20]
 0050A36D    lea        ecx,[ebp-28]
 0050A370    mov        edx,7
 0050A375    mov        eax,dword ptr [ebp-38]
 0050A378    mov        esi,dword ptr [eax]
 0050A37A    call       dword ptr [esi+20]
 0050A37D    mov        ecx,50A628; ','
 0050A382    mov        edx,dword ptr [ebp-28]
 0050A385    mov        eax,dword ptr [ebp-34]
 0050A388    call       004BF370
 0050A38D    mov        eax,dword ptr [ebp-34]
 0050A390    mov        edx,dword ptr [eax]
 0050A392    call       dword ptr [edx+14]; TStringList.GetCount
 0050A395    mov        esi,eax
 0050A397    sub        esi,1
>0050A39A    jno        0050A3A1
 0050A39C    call       @IntOver
 0050A3A1    test       esi,esi
>0050A3A3    jl         0050A472
 0050A3A9    inc        esi
 0050A3AA    mov        dword ptr [ebp-8],0
 0050A3B1    mov        eax,dword ptr [ebx]
 0050A3B3    mov        edx,dword ptr [eax]
 0050A3B5    call       dword ptr [edx+1E4]
 0050A3BB    lea        ecx,[ebp-60]
 0050A3BE    mov        edx,dword ptr [ebp-8]
 0050A3C1    mov        eax,dword ptr [ebp-34]
 0050A3C4    mov        edi,dword ptr [eax]
 0050A3C6    call       dword ptr [edi+0C]; TStringList.Get
 0050A3C9    mov        eax,dword ptr [ebp-60]
 0050A3CC    lea        edx,[ebp-30]
 0050A3CF    call       Trim
 0050A3D4    mov        eax,dword ptr [ebx]
 0050A3D6    mov        ecx,dword ptr [ebp-0C]
 0050A3D9    mov        edx,1
 0050A3DE    mov        edi,dword ptr [eax]
 0050A3E0    call       dword ptr [edi+158]
 0050A3E6    mov        eax,dword ptr [ebx]
 0050A3E8    mov        edx,2
 0050A3ED    mov        ecx,dword ptr [eax]
 0050A3EF    call       dword ptr [ecx+130]
 0050A3F5    mov        eax,dword ptr [ebx]
 0050A3F7    mov        ecx,dword ptr [ebp+10]
 0050A3FA    mov        edx,3
 0050A3FF    mov        edi,dword ptr [eax]
 0050A401    call       dword ptr [edi+158]
 0050A407    mov        eax,dword ptr [ebx]
 0050A409    mov        ecx,dword ptr [ebp-2C]
 0050A40C    mov        edx,4
 0050A411    mov        edi,dword ptr [eax]
 0050A413    call       dword ptr [edi+158]
 0050A419    mov        eax,dword ptr [ebx]
 0050A41B    mov        ecx,dword ptr [ebp-1C]
 0050A41E    mov        edx,5
 0050A423    mov        edi,dword ptr [eax]
 0050A425    call       dword ptr [edi+158]
 0050A42B    mov        eax,dword ptr [ebx]
 0050A42D    mov        ecx,dword ptr [ebp-24]
 0050A430    mov        edx,6
 0050A435    mov        edi,dword ptr [eax]
 0050A437    call       dword ptr [edi+158]
 0050A43D    mov        eax,dword ptr [ebx]
 0050A43F    mov        ecx,dword ptr [ebp-30]
 0050A442    mov        edx,7
 0050A447    mov        edi,dword ptr [eax]
 0050A449    call       dword ptr [edi+158]
 0050A44F    mov        eax,dword ptr [ebx]
 0050A451    mov        edx,8
 0050A456    mov        ecx,dword ptr [eax]
 0050A458    call       dword ptr [ecx+130]
 0050A45E    mov        eax,dword ptr [ebx]
 0050A460    mov        edx,dword ptr [eax]
 0050A462    call       dword ptr [edx+1D0]
 0050A468    inc        dword ptr [ebp-8]
 0050A46B    dec        esi
<0050A46C    jne        0050A3B1
 0050A472    mov        eax,dword ptr [ebp-38]
 0050A475    mov        edx,dword ptr [eax]
 0050A477    call       dword ptr [edx+0C]
 0050A47A    test       al,al
<0050A47C    jne        0050A2EC
 0050A482    mov        eax,dword ptr [ebp-38]
 0050A485    mov        edx,dword ptr [eax]
 0050A487    call       dword ptr [edx+10]
 0050A48A    xor        eax,eax
 0050A48C    pop        edx
 0050A48D    pop        ecx
 0050A48E    pop        ecx
 0050A48F    mov        dword ptr fs:[eax],edx
 0050A492    push       50A4A7
 0050A497    mov        eax,dword ptr [ebp-34]
 0050A49A    call       TObject.Free
 0050A49F    ret
<0050A4A0    jmp        @HandleFinally
<0050A4A5    jmp        0050A497
 0050A4A7    xor        eax,eax
 0050A4A9    pop        edx
 0050A4AA    pop        ecx
 0050A4AB    pop        ecx
 0050A4AC    mov        dword ptr fs:[eax],edx
 0050A4AF    push       50A4F1
 0050A4B4    lea        eax,[ebp-60]
 0050A4B7    call       @LStrClr
 0050A4BC    lea        eax,[ebp-44]
 0050A4BF    call       @LStrClr
 0050A4C4    lea        eax,[ebp-40]
 0050A4C7    call       @IntfClear
 0050A4CC    lea        eax,[ebp-3C]
 0050A4CF    call       @IntfClear
 0050A4D4    lea        eax,[ebp-38]
 0050A4D7    call       @IntfClear
 0050A4DC    lea        eax,[ebp-30]
 0050A4DF    mov        edx,0A
 0050A4E4    call       @LStrArrayClr
 0050A4E9    ret
<0050A4EA    jmp        @HandleFinally
<0050A4EF    jmp        0050A4B4
 0050A4F1    pop        edi
 0050A4F2    pop        esi
 0050A4F3    pop        ebx
 0050A4F4    mov        esp,ebp
 0050A4F6    pop        ebp
 0050A4F7    ret        0C
*}
//end;

//0050A62C
//procedure sub_0050A62C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050A62C    push       ebp
 0050A62D    mov        ebp,esp
 0050A62F    push       ecx
 0050A630    mov        ecx,0A
 0050A635    push       0
 0050A637    push       0
 0050A639    dec        ecx
<0050A63A    jne        0050A635
 0050A63C    push       ecx
 0050A63D    xchg       ecx,dword ptr [ebp-4]
 0050A640    push       ebx
 0050A641    push       esi
 0050A642    push       edi
 0050A643    mov        dword ptr [ebp-4],ecx
 0050A646    mov        edi,edx
 0050A648    mov        esi,eax
 0050A64A    mov        ebx,dword ptr [ebp+8]
 0050A64D    xor        eax,eax
 0050A64F    push       ebp
 0050A650    push       50A8EE
 0050A655    push       dword ptr fs:[eax]
 0050A658    mov        dword ptr fs:[eax],esp
 0050A65B    mov        ecx,ebx
 0050A65D    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 0050A663    mov        edx,dword ptr [edx]
 0050A665    mov        eax,esi
 0050A667    call       004D8E7C
 0050A66C    mov        eax,dword ptr [ebp+0C]
 0050A66F    push       eax
 0050A670    lea        eax,[ebp-0C]
 0050A673    call       @LStrClr
 0050A678    push       eax
 0050A679    lea        eax,[ebp-10]
 0050A67C    call       @LStrClr
 0050A681    push       eax
 0050A682    mov        ecx,dword ptr [ebp-4]
 0050A685    mov        edx,edi
 0050A687    mov        eax,esi
 0050A689    call       00508CC8
 0050A68E    mov        dl,1
 0050A690    mov        eax,[0041C8E4]; TStringList
 0050A695    call       TObject.Create; TStringList.Create
 0050A69A    mov        dword ptr [ebp-34],eax
 0050A69D    xor        eax,eax
 0050A69F    push       ebp
 0050A6A0    push       50A8A4
 0050A6A5    push       dword ptr fs:[eax]
 0050A6A8    mov        dword ptr fs:[eax],esp
 0050A6AB    lea        edx,[ebp-40]
 0050A6AE    mov        eax,esi
 0050A6B0    mov        ecx,dword ptr [eax]
 0050A6B2    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050A6B8    mov        eax,dword ptr [ebp-40]
 0050A6BB    lea        edx,[ebp-3C]
 0050A6BE    mov        ecx,dword ptr [eax]
 0050A6C0    call       dword ptr [ecx+0C]
 0050A6C3    mov        eax,dword ptr [ebp-3C]
 0050A6C6    push       eax
 0050A6C7    lea        eax,[ebp-44]
 0050A6CA    push       eax
 0050A6CB    mov        eax,dword ptr [ebp-0C]
 0050A6CE    mov        dword ptr [ebp-54],eax
 0050A6D1    mov        byte ptr [ebp-50],0B
 0050A6D5    mov        eax,dword ptr [ebp-10]
 0050A6D8    mov        dword ptr [ebp-4C],eax
 0050A6DB    mov        byte ptr [ebp-48],0B
 0050A6DF    lea        edx,[ebp-54]
 0050A6E2    mov        ecx,1
 0050A6E7    mov        eax,50A908; 'SELECT host,db,table_name,grantor,user,table_priv from mysql.tables_priv WHERE db='%s' AND table_name LIKE '%s''
 0050A6EC    call       Format
 0050A6F1    mov        edx,dword ptr [ebp-44]
 0050A6F4    lea        ecx,[ebp-38]
 0050A6F7    pop        eax
 0050A6F8    mov        esi,dword ptr [eax]
 0050A6FA    call       dword ptr [esi+0C]
>0050A6FD    jmp        0050A876
 0050A702    lea        ecx,[ebp-14]
 0050A705    mov        edx,1
 0050A70A    mov        eax,dword ptr [ebp-38]
 0050A70D    mov        esi,dword ptr [eax]
 0050A70F    call       dword ptr [esi+20]
 0050A712    lea        ecx,[ebp-18]
 0050A715    mov        edx,2
 0050A71A    mov        eax,dword ptr [ebp-38]
 0050A71D    mov        esi,dword ptr [eax]
 0050A71F    call       dword ptr [esi+20]
 0050A722    lea        ecx,[ebp-1C]
 0050A725    mov        edx,3
 0050A72A    mov        eax,dword ptr [ebp-38]
 0050A72D    mov        esi,dword ptr [eax]
 0050A72F    call       dword ptr [esi+20]
 0050A732    lea        ecx,[ebp-20]
 0050A735    mov        edx,4
 0050A73A    mov        eax,dword ptr [ebp-38]
 0050A73D    mov        esi,dword ptr [eax]
 0050A73F    call       dword ptr [esi+20]
 0050A742    lea        ecx,[ebp-24]
 0050A745    mov        edx,5
 0050A74A    mov        eax,dword ptr [ebp-38]
 0050A74D    mov        esi,dword ptr [eax]
 0050A74F    call       dword ptr [esi+20]
 0050A752    cmp        dword ptr [ebp-24],0
>0050A756    jne        0050A765
 0050A758    lea        eax,[ebp-24]
 0050A75B    mov        edx,50A980; '%'
 0050A760    call       @LStrLAsg
 0050A765    cmp        dword ptr [ebp-14],0
>0050A769    je         0050A783
 0050A76B    push       dword ptr [ebp-24]
 0050A76E    push       50A98C; '@'
 0050A773    push       dword ptr [ebp-14]
 0050A776    lea        eax,[ebp-28]
 0050A779    mov        edx,3
 0050A77E    call       @LStrCatN
 0050A783    lea        ecx,[ebp-2C]
 0050A786    mov        edx,6
 0050A78B    mov        eax,dword ptr [ebp-38]
 0050A78E    mov        esi,dword ptr [eax]
 0050A790    call       dword ptr [esi+20]
 0050A793    mov        ecx,50A998; ','
 0050A798    mov        edx,dword ptr [ebp-2C]
 0050A79B    mov        eax,dword ptr [ebp-34]
 0050A79E    call       004BF370
 0050A7A3    mov        eax,dword ptr [ebp-34]
 0050A7A6    mov        edx,dword ptr [eax]
 0050A7A8    call       dword ptr [edx+14]; TStringList.GetCount
 0050A7AB    mov        esi,eax
 0050A7AD    sub        esi,1
>0050A7B0    jno        0050A7B7
 0050A7B2    call       @IntOver
 0050A7B7    test       esi,esi
>0050A7B9    jl         0050A876
 0050A7BF    inc        esi
 0050A7C0    mov        dword ptr [ebp-8],0
 0050A7C7    mov        eax,dword ptr [ebx]
 0050A7C9    mov        edx,dword ptr [eax]
 0050A7CB    call       dword ptr [edx+1E4]
 0050A7D1    lea        ecx,[ebp-58]
 0050A7D4    mov        edx,dword ptr [ebp-8]
 0050A7D7    mov        eax,dword ptr [ebp-34]
 0050A7DA    mov        edi,dword ptr [eax]
 0050A7DC    call       dword ptr [edi+0C]; TStringList.Get
 0050A7DF    mov        eax,dword ptr [ebp-58]
 0050A7E2    lea        edx,[ebp-30]
 0050A7E5    call       Trim
 0050A7EA    mov        eax,dword ptr [ebx]
 0050A7EC    mov        ecx,dword ptr [ebp-18]
 0050A7EF    mov        edx,1
 0050A7F4    mov        edi,dword ptr [eax]
 0050A7F6    call       dword ptr [edi+158]
 0050A7FC    mov        eax,dword ptr [ebx]
 0050A7FE    mov        edx,2
 0050A803    mov        ecx,dword ptr [eax]
 0050A805    call       dword ptr [ecx+130]
 0050A80B    mov        eax,dword ptr [ebx]
 0050A80D    mov        ecx,dword ptr [ebp-1C]
 0050A810    mov        edx,3
 0050A815    mov        edi,dword ptr [eax]
 0050A817    call       dword ptr [edi+158]
 0050A81D    mov        eax,dword ptr [ebx]
 0050A81F    mov        ecx,dword ptr [ebp-20]
 0050A822    mov        edx,4
 0050A827    mov        edi,dword ptr [eax]
 0050A829    call       dword ptr [edi+158]
 0050A82F    mov        eax,dword ptr [ebx]
 0050A831    mov        ecx,dword ptr [ebp-28]
 0050A834    mov        edx,5
 0050A839    mov        edi,dword ptr [eax]
 0050A83B    call       dword ptr [edi+158]
 0050A841    mov        eax,dword ptr [ebx]
 0050A843    mov        ecx,dword ptr [ebp-30]
 0050A846    mov        edx,6
 0050A84B    mov        edi,dword ptr [eax]
 0050A84D    call       dword ptr [edi+158]
 0050A853    mov        eax,dword ptr [ebx]
 0050A855    mov        edx,7
 0050A85A    mov        ecx,dword ptr [eax]
 0050A85C    call       dword ptr [ecx+130]
 0050A862    mov        eax,dword ptr [ebx]
 0050A864    mov        edx,dword ptr [eax]
 0050A866    call       dword ptr [edx+1D0]
 0050A86C    inc        dword ptr [ebp-8]
 0050A86F    dec        esi
<0050A870    jne        0050A7C7
 0050A876    mov        eax,dword ptr [ebp-38]
 0050A879    mov        edx,dword ptr [eax]
 0050A87B    call       dword ptr [edx+0C]
 0050A87E    test       al,al
<0050A880    jne        0050A702
 0050A886    mov        eax,dword ptr [ebp-38]
 0050A889    mov        edx,dword ptr [eax]
 0050A88B    call       dword ptr [edx+10]
 0050A88E    xor        eax,eax
 0050A890    pop        edx
 0050A891    pop        ecx
 0050A892    pop        ecx
 0050A893    mov        dword ptr fs:[eax],edx
 0050A896    push       50A8AB
 0050A89B    mov        eax,dword ptr [ebp-34]
 0050A89E    call       TObject.Free
 0050A8A3    ret
<0050A8A4    jmp        @HandleFinally
<0050A8A9    jmp        0050A89B
 0050A8AB    xor        eax,eax
 0050A8AD    pop        edx
 0050A8AE    pop        ecx
 0050A8AF    pop        ecx
 0050A8B0    mov        dword ptr fs:[eax],edx
 0050A8B3    push       50A8F5
 0050A8B8    lea        eax,[ebp-58]
 0050A8BB    call       @LStrClr
 0050A8C0    lea        eax,[ebp-44]
 0050A8C3    call       @LStrClr
 0050A8C8    lea        eax,[ebp-40]
 0050A8CB    call       @IntfClear
 0050A8D0    lea        eax,[ebp-3C]
 0050A8D3    call       @IntfClear
 0050A8D8    lea        eax,[ebp-38]
 0050A8DB    call       @IntfClear
 0050A8E0    lea        eax,[ebp-30]
 0050A8E3    mov        edx,0A
 0050A8E8    call       @LStrArrayClr
 0050A8ED    ret
<0050A8EE    jmp        @HandleFinally
<0050A8F3    jmp        0050A8B8
 0050A8F5    pop        edi
 0050A8F6    pop        esi
 0050A8F7    pop        ebx
 0050A8F8    mov        esp,ebp
 0050A8FA    pop        ebp
 0050A8FB    ret        8
*}
//end;

//0050A99C
//procedure sub_0050A99C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050A99C    push       ebp
 0050A99D    mov        ebp,esp
 0050A99F    push       ecx
 0050A9A0    mov        ecx,0A
 0050A9A5    push       0
 0050A9A7    push       0
 0050A9A9    dec        ecx
<0050A9AA    jne        0050A9A5
 0050A9AC    push       ecx
 0050A9AD    xchg       ecx,dword ptr [ebp-4]
 0050A9B0    push       ebx
 0050A9B1    push       esi
 0050A9B2    push       edi
 0050A9B3    mov        dword ptr [ebp-4],ecx
 0050A9B6    mov        edi,edx
 0050A9B8    mov        esi,eax
 0050A9BA    mov        ebx,dword ptr [ebp+8]
 0050A9BD    xor        eax,eax
 0050A9BF    push       ebp
 0050A9C0    push       50AC56
 0050A9C5    push       dword ptr fs:[eax]
 0050A9C8    mov        dword ptr fs:[eax],esp
 0050A9CB    cmp        dword ptr [ebp+0C],0
>0050A9CF    jne        0050A9F2
 0050A9D1    lea        edx,[ebp-20]
 0050A9D4    mov        eax,[0061BD10]; ^#122.sResString45:TResStringRec
 0050A9D9    call       LoadResString
 0050A9DE    mov        ecx,dword ptr [ebp-20]
 0050A9E1    mov        dl,1
 0050A9E3    mov        eax,[004087B0]; Exception
 0050A9E8    call       Exception.Create; Exception.Create
 0050A9ED    call       @RaiseExcept
 0050A9F2    mov        ecx,ebx
 0050A9F4    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 0050A9FA    mov        edx,dword ptr [edx]
 0050A9FC    mov        eax,esi
 0050A9FE    call       004D8E7C
 0050AA03    test       edi,edi
>0050AA05    jne        0050AA27
 0050AA07    cmp        dword ptr [ebp-4],0
>0050AA0B    je         0050AA1A
 0050AA0D    lea        eax,[ebp-0C]
 0050AA10    mov        edx,dword ptr [ebp-4]
 0050AA13    call       @LStrLAsg
>0050AA18    jmp        0050AA31
 0050AA1A    lea        eax,[ebp-0C]
 0050AA1D    mov        edx,dword ptr [esi+24]; TZMySQLDatabaseMetadata.?f24:String
 0050AA20    call       @LStrLAsg
>0050AA25    jmp        0050AA31
 0050AA27    lea        eax,[ebp-0C]
 0050AA2A    mov        edx,edi
 0050AA2C    call       @LStrLAsg
 0050AA31    lea        eax,[ebp-24]
 0050AA34    push       eax
 0050AA35    lea        edx,[ebp-3C]
 0050AA38    mov        eax,esi
 0050AA3A    mov        ecx,dword ptr [eax]
 0050AA3C    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050AA42    mov        eax,dword ptr [ebp-3C]
 0050AA45    lea        ecx,[ebp-38]
 0050AA48    mov        edx,dword ptr [ebp-0C]
 0050AA4B    mov        edi,dword ptr [eax]
 0050AA4D    call       dword ptr [edi+14]
 0050AA50    mov        eax,dword ptr [ebp-38]
 0050AA53    mov        dword ptr [ebp-34],eax
 0050AA56    mov        byte ptr [ebp-30],0B
 0050AA5A    lea        edx,[ebp-44]
 0050AA5D    mov        eax,esi
 0050AA5F    mov        ecx,dword ptr [eax]
 0050AA61    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050AA67    mov        eax,dword ptr [ebp-44]
 0050AA6A    lea        ecx,[ebp-40]
 0050AA6D    mov        edx,dword ptr [ebp+0C]
 0050AA70    mov        edi,dword ptr [eax]
 0050AA72    call       dword ptr [edi+14]
 0050AA75    mov        eax,dword ptr [ebp-40]
 0050AA78    mov        dword ptr [ebp-2C],eax
 0050AA7B    mov        byte ptr [ebp-28],0B
 0050AA7F    lea        edx,[ebp-34]
 0050AA82    mov        ecx,1
 0050AA87    mov        eax,50AC70; 'SHOW KEYS FROM %s.%s'
 0050AA8C    call       Format
 0050AA91    mov        eax,dword ptr [ebp-24]
 0050AA94    push       eax
 0050AA95    lea        edx,[ebp-4C]
 0050AA98    mov        eax,esi
 0050AA9A    mov        ecx,dword ptr [eax]
 0050AA9C    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050AAA2    mov        eax,dword ptr [ebp-4C]
 0050AAA5    lea        edx,[ebp-48]
 0050AAA8    mov        ecx,dword ptr [eax]
 0050AAAA    call       dword ptr [ecx+0C]
 0050AAAD    mov        eax,dword ptr [ebp-48]
 0050AAB0    lea        ecx,[ebp-10]
 0050AAB3    pop        edx
 0050AAB4    mov        esi,dword ptr [eax]
 0050AAB6    call       dword ptr [esi+0C]
 0050AAB9    mov        edx,50AC90; 'Key_name'
 0050AABE    mov        eax,dword ptr [ebp-10]
 0050AAC1    mov        ecx,dword ptr [eax]
 0050AAC3    call       dword ptr [ecx+0D0]
 0050AAC9    mov        dword ptr [ebp-1C],eax
 0050AACC    mov        edx,50ACA4; 'Column_name'
 0050AAD1    mov        eax,dword ptr [ebp-10]
 0050AAD4    mov        ecx,dword ptr [eax]
 0050AAD6    call       dword ptr [ecx+0D0]
 0050AADC    mov        dword ptr [ebp-18],eax
 0050AADF    mov        edx,50ACB8; 'Seq_in_index'
 0050AAE4    mov        eax,dword ptr [ebp-10]
 0050AAE7    mov        ecx,dword ptr [eax]
 0050AAE9    call       dword ptr [ecx+0D0]
 0050AAEF    mov        dword ptr [ebp-14],eax
>0050AAF2    jmp        0050ABD1
 0050AAF7    lea        ecx,[ebp-50]
 0050AAFA    mov        edx,dword ptr [ebp-1C]
 0050AAFD    mov        eax,dword ptr [ebp-10]
 0050AB00    mov        esi,dword ptr [eax]
 0050AB02    call       dword ptr [esi+20]
 0050AB05    mov        eax,dword ptr [ebp-50]
 0050AB08    lea        edx,[ebp-8]
 0050AB0B    call       UpperCase
 0050AB10    lea        eax,[ebp-8]
 0050AB13    push       eax
 0050AB14    mov        ecx,3
 0050AB19    mov        edx,1
 0050AB1E    mov        eax,dword ptr [ebp-8]
 0050AB21    call       @LStrCopy
 0050AB26    mov        eax,dword ptr [ebp-8]
 0050AB29    mov        edx,50ACD0; 'PRI'
 0050AB2E    call       @LStrCmp
>0050AB33    jne        0050ABD1
 0050AB39    mov        eax,dword ptr [ebx]
 0050AB3B    mov        edx,dword ptr [eax]
 0050AB3D    call       dword ptr [edx+1E4]
 0050AB43    mov        eax,dword ptr [ebx]
 0050AB45    mov        ecx,dword ptr [ebp-0C]
 0050AB48    mov        edx,1
 0050AB4D    mov        esi,dword ptr [eax]
 0050AB4F    call       dword ptr [esi+158]
 0050AB55    mov        eax,dword ptr [ebx]
 0050AB57    xor        ecx,ecx
 0050AB59    mov        edx,2
 0050AB5E    mov        esi,dword ptr [eax]
 0050AB60    call       dword ptr [esi+158]
 0050AB66    mov        eax,dword ptr [ebx]
 0050AB68    mov        ecx,dword ptr [ebp+0C]
 0050AB6B    mov        edx,3
 0050AB70    mov        esi,dword ptr [eax]
 0050AB72    call       dword ptr [esi+158]
 0050AB78    lea        ecx,[ebp-54]
 0050AB7B    mov        edx,dword ptr [ebp-18]
 0050AB7E    mov        eax,dword ptr [ebp-10]
 0050AB81    mov        esi,dword ptr [eax]
 0050AB83    call       dword ptr [esi+20]
 0050AB86    mov        ecx,dword ptr [ebp-54]
 0050AB89    mov        eax,dword ptr [ebx]
 0050AB8B    mov        edx,4
 0050AB90    mov        esi,dword ptr [eax]
 0050AB92    call       dword ptr [esi+158]
 0050AB98    lea        ecx,[ebp-58]
 0050AB9B    mov        edx,dword ptr [ebp-14]
 0050AB9E    mov        eax,dword ptr [ebp-10]
 0050ABA1    mov        esi,dword ptr [eax]
 0050ABA3    call       dword ptr [esi+20]
 0050ABA6    mov        ecx,dword ptr [ebp-58]
 0050ABA9    mov        eax,dword ptr [ebx]
 0050ABAB    mov        edx,5
 0050ABB0    mov        esi,dword ptr [eax]
 0050ABB2    call       dword ptr [esi+158]
 0050ABB8    mov        eax,dword ptr [ebx]
 0050ABBA    mov        edx,6
 0050ABBF    mov        ecx,dword ptr [eax]
 0050ABC1    call       dword ptr [ecx+130]
 0050ABC7    mov        eax,dword ptr [ebx]
 0050ABC9    mov        edx,dword ptr [eax]
 0050ABCB    call       dword ptr [edx+1D0]
 0050ABD1    mov        eax,dword ptr [ebp-10]
 0050ABD4    mov        edx,dword ptr [eax]
 0050ABD6    call       dword ptr [edx+0C]
 0050ABD9    test       al,al
<0050ABDB    jne        0050AAF7
 0050ABE1    mov        eax,dword ptr [ebp-10]
 0050ABE4    mov        edx,dword ptr [eax]
 0050ABE6    call       dword ptr [edx+10]
 0050ABE9    xor        eax,eax
 0050ABEB    pop        edx
 0050ABEC    pop        ecx
 0050ABED    pop        ecx
 0050ABEE    mov        dword ptr fs:[eax],edx
 0050ABF1    push       50AC5D
 0050ABF6    lea        eax,[ebp-58]
 0050ABF9    mov        edx,3
 0050ABFE    call       @LStrArrayClr
 0050AC03    lea        eax,[ebp-4C]
 0050AC06    call       @IntfClear
 0050AC0B    lea        eax,[ebp-48]
 0050AC0E    call       @IntfClear
 0050AC13    lea        eax,[ebp-44]
 0050AC16    call       @IntfClear
 0050AC1B    lea        eax,[ebp-40]
 0050AC1E    call       @LStrClr
 0050AC23    lea        eax,[ebp-3C]
 0050AC26    call       @IntfClear
 0050AC2B    lea        eax,[ebp-38]
 0050AC2E    call       @LStrClr
 0050AC33    lea        eax,[ebp-24]
 0050AC36    mov        edx,2
 0050AC3B    call       @LStrArrayClr
 0050AC40    lea        eax,[ebp-10]
 0050AC43    call       @IntfClear
 0050AC48    lea        eax,[ebp-0C]
 0050AC4B    mov        edx,2
 0050AC50    call       @LStrArrayClr
 0050AC55    ret
<0050AC56    jmp        @HandleFinally
<0050AC5B    jmp        0050ABF6
 0050AC5D    pop        edi
 0050AC5E    pop        esi
 0050AC5F    pop        ebx
 0050AC60    mov        esp,ebp
 0050AC62    pop        ebp
 0050AC63    ret        8
*}
//end;

//0050ACD4
//procedure sub_0050ACD4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050ACD4    push       ebp
 0050ACD5    mov        ebp,esp
 0050ACD7    push       ecx
 0050ACD8    mov        ecx,0C
 0050ACDD    push       0
 0050ACDF    push       0
 0050ACE1    dec        ecx
<0050ACE2    jne        0050ACDD
 0050ACE4    push       ecx
 0050ACE5    xchg       ecx,dword ptr [ebp-4]
 0050ACE8    push       ebx
 0050ACE9    push       esi
 0050ACEA    push       edi
 0050ACEB    mov        dword ptr [ebp-4],ecx
 0050ACEE    mov        edi,edx
 0050ACF0    mov        esi,eax
 0050ACF2    mov        ebx,dword ptr [ebp+8]
 0050ACF5    xor        eax,eax
 0050ACF7    push       ebp
 0050ACF8    push       50B0D1
 0050ACFD    push       dword ptr fs:[eax]
 0050AD00    mov        dword ptr fs:[eax],esp
 0050AD03    cmp        dword ptr [ebp+0C],0
>0050AD07    jne        0050AD2A
 0050AD09    lea        edx,[ebp-30]
 0050AD0C    mov        eax,[0061BD10]; ^#122.sResString45:TResStringRec
 0050AD11    call       LoadResString
 0050AD16    mov        ecx,dword ptr [ebp-30]
 0050AD19    mov        dl,1
 0050AD1B    mov        eax,[004087B0]; Exception
 0050AD20    call       Exception.Create; Exception.Create
 0050AD25    call       @RaiseExcept
 0050AD2A    mov        ecx,ebx
 0050AD2C    mov        edx,dword ptr ds:[61B820]; ^gvar_0061DD64:TZMetadataColumnDefs
 0050AD32    mov        edx,dword ptr [edx]
 0050AD34    mov        eax,esi
 0050AD36    call       004D8E7C
 0050AD3B    test       edi,edi
>0050AD3D    jne        0050AD5F
 0050AD3F    cmp        dword ptr [ebp-4],0
>0050AD43    je         0050AD52
 0050AD45    lea        eax,[ebp-0C]
 0050AD48    mov        edx,dword ptr [ebp-4]
 0050AD4B    call       @LStrLAsg
>0050AD50    jmp        0050AD69
 0050AD52    lea        eax,[ebp-0C]
 0050AD55    mov        edx,dword ptr [esi+24]; TZMySQLDatabaseMetadata.?f24:String
 0050AD58    call       @LStrLAsg
>0050AD5D    jmp        0050AD69
 0050AD5F    lea        eax,[ebp-0C]
 0050AD62    mov        edx,edi
 0050AD64    call       @LStrLAsg
 0050AD69    mov        dl,1
 0050AD6B    mov        eax,[0041C8E4]; TStringList
 0050AD70    call       TObject.Create; TStringList.Create
 0050AD75    mov        dword ptr [ebp-20],eax
 0050AD78    mov        dl,1
 0050AD7A    mov        eax,[0041C8E4]; TStringList
 0050AD7F    call       TObject.Create; TStringList.Create
 0050AD84    mov        dword ptr [ebp-1C],eax
 0050AD87    xor        edx,edx
 0050AD89    push       ebp
 0050AD8A    push       50B06D
 0050AD8F    push       dword ptr fs:[edx]
 0050AD92    mov        dword ptr fs:[edx],esp
 0050AD95    lea        eax,[ebp-34]
 0050AD98    push       eax
 0050AD99    lea        edx,[ebp-4C]
 0050AD9C    mov        eax,esi
 0050AD9E    mov        ecx,dword ptr [eax]
 0050ADA0    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050ADA6    mov        eax,dword ptr [ebp-4C]
 0050ADA9    lea        ecx,[ebp-48]
 0050ADAC    mov        edx,dword ptr [ebp-0C]
 0050ADAF    mov        edi,dword ptr [eax]
 0050ADB1    call       dword ptr [edi+14]
 0050ADB4    mov        eax,dword ptr [ebp-48]
 0050ADB7    mov        dword ptr [ebp-44],eax
 0050ADBA    mov        byte ptr [ebp-40],0B
 0050ADBE    mov        eax,dword ptr [ebp+0C]
 0050ADC1    mov        dword ptr [ebp-3C],eax
 0050ADC4    mov        byte ptr [ebp-38],0B
 0050ADC8    lea        edx,[ebp-44]
 0050ADCB    mov        ecx,1
 0050ADD0    mov        eax,50B0EC; 'SHOW TABLE STATUS FROM %s LIKE '%s''
 0050ADD5    call       Format
 0050ADDA    mov        eax,dword ptr [ebp-34]
 0050ADDD    push       eax
 0050ADDE    lea        edx,[ebp-54]
 0050ADE1    mov        eax,esi
 0050ADE3    mov        ecx,dword ptr [eax]
 0050ADE5    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050ADEB    mov        eax,dword ptr [ebp-54]
 0050ADEE    lea        edx,[ebp-50]
 0050ADF1    mov        ecx,dword ptr [eax]
 0050ADF3    call       dword ptr [ecx+0C]
 0050ADF6    mov        eax,dword ptr [ebp-50]
 0050ADF9    lea        ecx,[ebp-2C]
 0050ADFC    pop        edx
 0050ADFD    mov        esi,dword ptr [eax]
 0050ADFF    call       dword ptr [esi+0C]
 0050AE02    mov        edx,50B118; 'Type'
 0050AE07    mov        eax,dword ptr [ebp-2C]
 0050AE0A    mov        ecx,dword ptr [eax]
 0050AE0C    call       dword ptr [ecx+0D0]
 0050AE12    mov        dword ptr [ebp-28],eax
 0050AE15    mov        edx,50B128; 'Comment'
 0050AE1A    mov        eax,dword ptr [ebp-2C]
 0050AE1D    mov        ecx,dword ptr [eax]
 0050AE1F    call       dword ptr [ecx+0D0]
 0050AE25    mov        dword ptr [ebp-24],eax
>0050AE28    jmp        0050B037
 0050AE2D    lea        ecx,[ebp-10]
 0050AE30    mov        edx,dword ptr [ebp-28]
 0050AE33    mov        eax,dword ptr [ebp-2C]
 0050AE36    mov        esi,dword ptr [eax]
 0050AE38    call       dword ptr [esi+20]
 0050AE3B    cmp        dword ptr [ebp-10],0
>0050AE3F    je         0050B037
 0050AE45    lea        edx,[ebp-58]
 0050AE48    mov        eax,dword ptr [ebp-10]
 0050AE4B    call       LowerCase
 0050AE50    mov        eax,dword ptr [ebp-58]
 0050AE53    mov        edx,50B138; 'innodb'
 0050AE58    call       @LStrCmp
>0050AE5D    jne        0050B037
 0050AE63    lea        ecx,[ebp-14]
 0050AE66    mov        edx,dword ptr [ebp-24]
 0050AE69    mov        eax,dword ptr [ebp-2C]
 0050AE6C    mov        esi,dword ptr [eax]
 0050AE6E    call       dword ptr [esi+20]
 0050AE71    cmp        dword ptr [ebp-14],0
>0050AE75    je         0050B037
 0050AE7B    mov        ecx,50B148; ';'
 0050AE80    mov        edx,dword ptr [ebp-14]
 0050AE83    mov        eax,dword ptr [ebp-1C]
 0050AE86    call       004BF370
 0050AE8B    xor        eax,eax
 0050AE8D    mov        dword ptr [ebp-8],eax
 0050AE90    mov        eax,dword ptr [ebp-1C]
 0050AE93    mov        edx,dword ptr [eax]
 0050AE95    call       dword ptr [edx+14]; TStringList.GetCount
 0050AE98    cmp        eax,4
>0050AE9B    jle        0050B037
 0050AEA1    mov        eax,dword ptr [ebp-1C]
 0050AEA4    mov        edx,dword ptr [eax]
 0050AEA6    call       dword ptr [edx+14]; TStringList.GetCount
 0050AEA9    mov        esi,eax
 0050AEAB    sub        esi,1
>0050AEAE    jno        0050AEB5
 0050AEB0    call       @IntOver
 0050AEB5    test       esi,esi
>0050AEB7    jl         0050B037
 0050AEBD    inc        esi
 0050AEBE    lea        ecx,[ebp-18]
 0050AEC1    mov        edx,1
 0050AEC6    mov        eax,dword ptr [ebp-1C]
 0050AEC9    mov        edi,dword ptr [eax]
 0050AECB    call       dword ptr [edi+0C]; TStringList.Get
 0050AECE    mov        eax,dword ptr [ebx]
 0050AED0    mov        edx,dword ptr [eax]
 0050AED2    call       dword ptr [edx+1E4]
 0050AED8    mov        ecx,50B154; '() /'
 0050AEDD    mov        edx,dword ptr [ebp-18]
 0050AEE0    mov        eax,dword ptr [ebp-20]
 0050AEE3    call       004BF370
 0050AEE8    mov        eax,dword ptr [ebx]
 0050AEEA    mov        ecx,dword ptr [ebp-0C]
 0050AEED    mov        edx,5
 0050AEF2    mov        edi,dword ptr [eax]
 0050AEF4    call       dword ptr [edi+158]
 0050AEFA    mov        eax,dword ptr [ebx]
 0050AEFC    mov        edx,6
 0050AF01    mov        ecx,dword ptr [eax]
 0050AF03    call       dword ptr [ecx+130]
 0050AF09    mov        eax,dword ptr [ebx]
 0050AF0B    mov        ecx,dword ptr [ebp+0C]
 0050AF0E    mov        edx,7
 0050AF13    mov        edi,dword ptr [eax]
 0050AF15    call       dword ptr [edi+158]
 0050AF1B    lea        ecx,[ebp-5C]
 0050AF1E    xor        edx,edx
 0050AF20    mov        eax,dword ptr [ebp-20]
 0050AF23    mov        edi,dword ptr [eax]
 0050AF25    call       dword ptr [edi+0C]; TStringList.Get
 0050AF28    mov        ecx,dword ptr [ebp-5C]
 0050AF2B    mov        eax,dword ptr [ebx]
 0050AF2D    mov        edx,8
 0050AF32    mov        edi,dword ptr [eax]
 0050AF34    call       dword ptr [edi+158]
 0050AF3A    lea        ecx,[ebp-60]
 0050AF3D    mov        edx,2
 0050AF42    mov        eax,dword ptr [ebp-20]
 0050AF45    mov        edi,dword ptr [eax]
 0050AF47    call       dword ptr [edi+0C]; TStringList.Get
 0050AF4A    mov        ecx,dword ptr [ebp-60]
 0050AF4D    mov        eax,dword ptr [ebx]
 0050AF4F    mov        edx,1
 0050AF54    mov        edi,dword ptr [eax]
 0050AF56    call       dword ptr [edi+158]
 0050AF5C    mov        eax,dword ptr [ebx]
 0050AF5E    mov        edx,2
 0050AF63    mov        ecx,dword ptr [eax]
 0050AF65    call       dword ptr [ecx+130]
 0050AF6B    lea        ecx,[ebp-64]
 0050AF6E    mov        edx,3
 0050AF73    mov        eax,dword ptr [ebp-20]
 0050AF76    mov        edi,dword ptr [eax]
 0050AF78    call       dword ptr [edi+0C]; TStringList.Get
 0050AF7B    mov        ecx,dword ptr [ebp-64]
 0050AF7E    mov        eax,dword ptr [ebx]
 0050AF80    mov        edx,3
 0050AF85    mov        edi,dword ptr [eax]
 0050AF87    call       dword ptr [edi+158]
 0050AF8D    lea        ecx,[ebp-68]
 0050AF90    mov        edx,4
 0050AF95    mov        eax,dword ptr [ebp-20]
 0050AF98    mov        edi,dword ptr [eax]
 0050AF9A    call       dword ptr [edi+0C]; TStringList.Get
 0050AF9D    mov        ecx,dword ptr [ebp-68]
 0050AFA0    mov        eax,dword ptr [ebx]
 0050AFA2    mov        edx,4
 0050AFA7    mov        edi,dword ptr [eax]
 0050AFA9    call       dword ptr [edi+158]
 0050AFAF    mov        eax,dword ptr [ebx]
 0050AFB1    mov        ecx,dword ptr [ebp-8]
 0050AFB4    mov        edx,9
 0050AFB9    mov        edi,dword ptr [eax]
 0050AFBB    call       dword ptr [edi+140]
 0050AFC1    mov        eax,dword ptr [ebx]
 0050AFC3    mov        ecx,4
 0050AFC8    mov        edx,0A
 0050AFCD    mov        edi,dword ptr [eax]
 0050AFCF    call       dword ptr [edi+140]
 0050AFD5    mov        eax,dword ptr [ebx]
 0050AFD7    mov        ecx,4
 0050AFDC    mov        edx,0B
 0050AFE1    mov        edi,dword ptr [eax]
 0050AFE3    call       dword ptr [edi+140]
 0050AFE9    mov        eax,dword ptr [ebx]
 0050AFEB    mov        edx,0C
 0050AFF0    mov        ecx,dword ptr [eax]
 0050AFF2    call       dword ptr [ecx+130]
 0050AFF8    mov        eax,dword ptr [ebx]
 0050AFFA    mov        edx,0D
 0050AFFF    mov        ecx,dword ptr [eax]
 0050B001    call       dword ptr [ecx+130]
 0050B007    mov        eax,dword ptr [ebx]
 0050B009    mov        ecx,4
 0050B00E    mov        edx,0E
 0050B013    mov        edi,dword ptr [eax]
 0050B015    call       dword ptr [edi+140]
 0050B01B    add        dword ptr [ebp-8],1
>0050B01F    jno        0050B026
 0050B021    call       @IntOver
 0050B026    mov        eax,dword ptr [ebx]
 0050B028    mov        edx,dword ptr [eax]
 0050B02A    call       dword ptr [edx+1D0]
 0050B030    dec        esi
<0050B031    jne        0050AEBE
 0050B037    mov        eax,dword ptr [ebp-2C]
 0050B03A    mov        edx,dword ptr [eax]
 0050B03C    call       dword ptr [edx+0C]
 0050B03F    test       al,al
<0050B041    jne        0050AE2D
 0050B047    mov        eax,dword ptr [ebp-2C]
 0050B04A    mov        edx,dword ptr [eax]
 0050B04C    call       dword ptr [edx+10]
 0050B04F    xor        eax,eax
 0050B051    pop        edx
 0050B052    pop        ecx
 0050B053    pop        ecx
 0050B054    mov        dword ptr fs:[eax],edx
 0050B057    push       50B074
 0050B05C    mov        eax,dword ptr [ebp-20]
 0050B05F    call       TObject.Free
 0050B064    mov        eax,dword ptr [ebp-1C]
 0050B067    call       TObject.Free
 0050B06C    ret
<0050B06D    jmp        @HandleFinally
<0050B072    jmp        0050B05C
 0050B074    xor        eax,eax
 0050B076    pop        edx
 0050B077    pop        ecx
 0050B078    pop        ecx
 0050B079    mov        dword ptr fs:[eax],edx
 0050B07C    push       50B0D8
 0050B081    lea        eax,[ebp-68]
 0050B084    mov        edx,5
 0050B089    call       @LStrArrayClr
 0050B08E    lea        eax,[ebp-54]
 0050B091    call       @IntfClear
 0050B096    lea        eax,[ebp-50]
 0050B099    call       @IntfClear
 0050B09E    lea        eax,[ebp-4C]
 0050B0A1    call       @IntfClear
 0050B0A6    lea        eax,[ebp-48]
 0050B0A9    call       @LStrClr
 0050B0AE    lea        eax,[ebp-34]
 0050B0B1    mov        edx,2
 0050B0B6    call       @LStrArrayClr
 0050B0BB    lea        eax,[ebp-2C]
 0050B0BE    call       @IntfClear
 0050B0C3    lea        eax,[ebp-18]
 0050B0C6    mov        edx,4
 0050B0CB    call       @LStrArrayClr
 0050B0D0    ret
<0050B0D1    jmp        @HandleFinally
<0050B0D6    jmp        0050B081
 0050B0D8    pop        edi
 0050B0D9    pop        esi
 0050B0DA    pop        ebx
 0050B0DB    mov        esp,ebp
 0050B0DD    pop        ebp
 0050B0DE    ret        8
*}
//end;

//0050B15C
//procedure sub_0050B15C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050B15C    push       ebp
 0050B15D    mov        ebp,esp
 0050B15F    push       ecx
 0050B160    mov        ecx,0B
 0050B165    push       0
 0050B167    push       0
 0050B169    dec        ecx
<0050B16A    jne        0050B165
 0050B16C    push       ecx
 0050B16D    xchg       ecx,dword ptr [ebp-4]
 0050B170    push       ebx
 0050B171    push       esi
 0050B172    push       edi
 0050B173    mov        dword ptr [ebp-4],ecx
 0050B176    mov        edi,edx
 0050B178    mov        esi,eax
 0050B17A    mov        ebx,dword ptr [ebp+8]
 0050B17D    xor        eax,eax
 0050B17F    push       ebp
 0050B180    push       50B53B
 0050B185    push       dword ptr fs:[eax]
 0050B188    mov        dword ptr fs:[eax],esp
 0050B18B    cmp        dword ptr [ebp+0C],0
>0050B18F    jne        0050B1B2
 0050B191    lea        edx,[ebp-34]
 0050B194    mov        eax,[0061BD10]; ^#122.sResString45:TResStringRec
 0050B199    call       LoadResString
 0050B19E    mov        ecx,dword ptr [ebp-34]
 0050B1A1    mov        dl,1
 0050B1A3    mov        eax,[004087B0]; Exception
 0050B1A8    call       Exception.Create; Exception.Create
 0050B1AD    call       @RaiseExcept
 0050B1B2    mov        ecx,ebx
 0050B1B4    mov        edx,dword ptr ds:[61B150]; ^gvar_0061DD68:TZMetadataColumnDefs
 0050B1BA    mov        edx,dword ptr [edx]
 0050B1BC    mov        eax,esi
 0050B1BE    call       004D8E7C
 0050B1C3    test       edi,edi
>0050B1C5    jne        0050B1E7
 0050B1C7    cmp        dword ptr [ebp-4],0
>0050B1CB    je         0050B1DA
 0050B1CD    lea        eax,[ebp-0C]
 0050B1D0    mov        edx,dword ptr [ebp-4]
 0050B1D3    call       @LStrLAsg
>0050B1D8    jmp        0050B1F1
 0050B1DA    lea        eax,[ebp-0C]
 0050B1DD    mov        edx,dword ptr [esi+24]; TZMySQLDatabaseMetadata.?f24:String
 0050B1E0    call       @LStrLAsg
>0050B1E5    jmp        0050B1F1
 0050B1E7    lea        eax,[ebp-0C]
 0050B1EA    mov        edx,edi
 0050B1EC    call       @LStrLAsg
 0050B1F1    mov        dl,1
 0050B1F3    mov        eax,[0041C8E4]; TStringList
 0050B1F8    call       TObject.Create; TStringList.Create
 0050B1FD    mov        dword ptr [ebp-20],eax
 0050B200    mov        dl,1
 0050B202    mov        eax,[0041C8E4]; TStringList
 0050B207    call       TObject.Create; TStringList.Create
 0050B20C    mov        dword ptr [ebp-1C],eax
 0050B20F    xor        edx,edx
 0050B211    push       ebp
 0050B212    push       50B4D7
 0050B217    push       dword ptr fs:[edx]
 0050B21A    mov        dword ptr fs:[edx],esp
 0050B21D    lea        eax,[ebp-38]
 0050B220    push       eax
 0050B221    lea        edx,[ebp-48]
 0050B224    mov        eax,esi
 0050B226    mov        ecx,dword ptr [eax]
 0050B228    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050B22E    mov        eax,dword ptr [ebp-48]
 0050B231    lea        ecx,[ebp-44]
 0050B234    mov        edx,dword ptr [ebp-0C]
 0050B237    mov        edi,dword ptr [eax]
 0050B239    call       dword ptr [edi+14]
 0050B23C    mov        eax,dword ptr [ebp-44]
 0050B23F    mov        dword ptr [ebp-40],eax
 0050B242    mov        byte ptr [ebp-3C],0B
 0050B246    lea        edx,[ebp-40]
 0050B249    xor        ecx,ecx
 0050B24B    mov        eax,50B554; 'SHOW TABLE STATUS FROM %s'
 0050B250    call       Format
 0050B255    mov        eax,dword ptr [ebp-38]
 0050B258    push       eax
 0050B259    lea        edx,[ebp-50]
 0050B25C    mov        eax,esi
 0050B25E    mov        ecx,dword ptr [eax]
 0050B260    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050B266    mov        eax,dword ptr [ebp-50]
 0050B269    lea        edx,[ebp-4C]
 0050B26C    mov        ecx,dword ptr [eax]
 0050B26E    call       dword ptr [ecx+0C]
 0050B271    mov        eax,dword ptr [ebp-4C]
 0050B274    lea        ecx,[ebp-24]
 0050B277    pop        edx
 0050B278    mov        esi,dword ptr [eax]
 0050B27A    call       dword ptr [esi+0C]
 0050B27D    mov        edx,50B578; 'Type'
 0050B282    mov        eax,dword ptr [ebp-24]
 0050B285    mov        ecx,dword ptr [eax]
 0050B287    call       dword ptr [ecx+0D0]
 0050B28D    mov        dword ptr [ebp-30],eax
 0050B290    mov        edx,50B588; 'Comment'
 0050B295    mov        eax,dword ptr [ebp-24]
 0050B298    mov        ecx,dword ptr [eax]
 0050B29A    call       dword ptr [ecx+0D0]
 0050B2A0    mov        dword ptr [ebp-2C],eax
 0050B2A3    mov        edx,50B598; 'Name'
 0050B2A8    mov        eax,dword ptr [ebp-24]
 0050B2AB    mov        ecx,dword ptr [eax]
 0050B2AD    call       dword ptr [ecx+0D0]
 0050B2B3    mov        dword ptr [ebp-28],eax
>0050B2B6    jmp        0050B4A1
 0050B2BB    lea        ecx,[ebp-10]
 0050B2BE    mov        edx,dword ptr [ebp-30]
 0050B2C1    mov        eax,dword ptr [ebp-24]
 0050B2C4    mov        esi,dword ptr [eax]
 0050B2C6    call       dword ptr [esi+20]
 0050B2C9    cmp        dword ptr [ebp-10],0
>0050B2CD    je         0050B4A1
 0050B2D3    lea        edx,[ebp-54]
 0050B2D6    mov        eax,dword ptr [ebp-10]
 0050B2D9    call       LowerCase
 0050B2DE    mov        eax,dword ptr [ebp-54]
 0050B2E1    mov        edx,50B5A8; 'innodb'
 0050B2E6    call       @LStrCmp
>0050B2EB    jne        0050B4A1
 0050B2F1    lea        ecx,[ebp-14]
 0050B2F4    mov        edx,dword ptr [ebp-2C]
 0050B2F7    mov        eax,dword ptr [ebp-24]
 0050B2FA    mov        esi,dword ptr [eax]
 0050B2FC    call       dword ptr [esi+20]
 0050B2FF    cmp        dword ptr [ebp-14],0
>0050B303    je         0050B4A1
 0050B309    mov        ecx,50B5B8; ';'
 0050B30E    mov        edx,dword ptr [ebp-14]
 0050B311    mov        eax,dword ptr [ebp-1C]
 0050B314    call       004BF370
 0050B319    xor        eax,eax
 0050B31B    mov        dword ptr [ebp-8],eax
 0050B31E    mov        eax,dword ptr [ebp-1C]
 0050B321    mov        edx,dword ptr [eax]
 0050B323    call       dword ptr [edx+14]; TStringList.GetCount
 0050B326    cmp        eax,4
>0050B329    jle        0050B4A1
 0050B32F    mov        eax,dword ptr [ebp-1C]
 0050B332    mov        edx,dword ptr [eax]
 0050B334    call       dword ptr [edx+14]; TStringList.GetCount
 0050B337    mov        esi,eax
 0050B339    sub        esi,1
>0050B33C    jno        0050B343
 0050B33E    call       @IntOver
 0050B343    test       esi,esi
>0050B345    jl         0050B4A1
 0050B34B    inc        esi
 0050B34C    lea        ecx,[ebp-18]
 0050B34F    mov        edx,1
 0050B354    mov        eax,dword ptr [ebp-1C]
 0050B357    mov        edi,dword ptr [eax]
 0050B359    call       dword ptr [edi+0C]; TStringList.Get
 0050B35C    mov        eax,dword ptr [ebx]
 0050B35E    mov        edx,dword ptr [eax]
 0050B360    call       dword ptr [edx+1E4]
 0050B366    mov        ecx,50B5C4; '() /'
 0050B36B    mov        edx,dword ptr [ebp-18]
 0050B36E    mov        eax,dword ptr [ebp-20]
 0050B371    call       004BF370
 0050B376    mov        eax,dword ptr [ebx]
 0050B378    mov        ecx,dword ptr [ebp-0C]
 0050B37B    mov        edx,5
 0050B380    mov        edi,dword ptr [eax]
 0050B382    call       dword ptr [edi+158]
 0050B388    mov        eax,dword ptr [ebx]
 0050B38A    mov        edx,6
 0050B38F    mov        ecx,dword ptr [eax]
 0050B391    call       dword ptr [ecx+130]
 0050B397    lea        ecx,[ebp-58]
 0050B39A    mov        edx,dword ptr [ebp-28]
 0050B39D    mov        eax,dword ptr [ebp-24]
 0050B3A0    mov        edi,dword ptr [eax]
 0050B3A2    call       dword ptr [edi+20]
 0050B3A5    mov        ecx,dword ptr [ebp-58]
 0050B3A8    mov        eax,dword ptr [ebx]
 0050B3AA    mov        edx,7
 0050B3AF    mov        edi,dword ptr [eax]
 0050B3B1    call       dword ptr [edi+158]
 0050B3B7    lea        ecx,[ebp-5C]
 0050B3BA    xor        edx,edx
 0050B3BC    mov        eax,dword ptr [ebp-20]
 0050B3BF    mov        edi,dword ptr [eax]
 0050B3C1    call       dword ptr [edi+0C]; TStringList.Get
 0050B3C4    mov        ecx,dword ptr [ebp-5C]
 0050B3C7    mov        eax,dword ptr [ebx]
 0050B3C9    mov        edx,8
 0050B3CE    mov        edi,dword ptr [eax]
 0050B3D0    call       dword ptr [edi+158]
 0050B3D6    lea        ecx,[ebp-60]
 0050B3D9    mov        edx,2
 0050B3DE    mov        eax,dword ptr [ebp-20]
 0050B3E1    mov        edi,dword ptr [eax]
 0050B3E3    call       dword ptr [edi+0C]; TStringList.Get
 0050B3E6    mov        ecx,dword ptr [ebp-60]
 0050B3E9    mov        eax,dword ptr [ebx]
 0050B3EB    mov        edx,1
 0050B3F0    mov        edi,dword ptr [eax]
 0050B3F2    call       dword ptr [edi+158]
 0050B3F8    mov        eax,dword ptr [ebx]
 0050B3FA    mov        edx,2
 0050B3FF    mov        ecx,dword ptr [eax]
 0050B401    call       dword ptr [ecx+130]
 0050B407    mov        eax,dword ptr [ebx]
 0050B409    mov        ecx,dword ptr [ebp+0C]
 0050B40C    mov        edx,3
 0050B411    mov        edi,dword ptr [eax]
 0050B413    call       dword ptr [edi+158]
 0050B419    mov        eax,dword ptr [ebx]
 0050B41B    mov        ecx,dword ptr [ebp-8]
 0050B41E    mov        edx,9
 0050B423    mov        edi,dword ptr [eax]
 0050B425    call       dword ptr [edi+140]
 0050B42B    mov        eax,dword ptr [ebx]
 0050B42D    mov        ecx,4
 0050B432    mov        edx,0A
 0050B437    mov        edi,dword ptr [eax]
 0050B439    call       dword ptr [edi+140]
 0050B43F    mov        eax,dword ptr [ebx]
 0050B441    mov        ecx,4
 0050B446    mov        edx,0B
 0050B44B    mov        edi,dword ptr [eax]
 0050B44D    call       dword ptr [edi+140]
 0050B453    mov        eax,dword ptr [ebx]
 0050B455    mov        edx,0C
 0050B45A    mov        ecx,dword ptr [eax]
 0050B45C    call       dword ptr [ecx+130]
 0050B462    mov        eax,dword ptr [ebx]
 0050B464    mov        edx,0D
 0050B469    mov        ecx,dword ptr [eax]
 0050B46B    call       dword ptr [ecx+130]
 0050B471    mov        eax,dword ptr [ebx]
 0050B473    mov        ecx,4
 0050B478    mov        edx,0E
 0050B47D    mov        edi,dword ptr [eax]
 0050B47F    call       dword ptr [edi+140]
 0050B485    add        dword ptr [ebp-8],1
>0050B489    jno        0050B490
 0050B48B    call       @IntOver
 0050B490    mov        eax,dword ptr [ebx]
 0050B492    mov        edx,dword ptr [eax]
 0050B494    call       dword ptr [edx+1D0]
 0050B49A    dec        esi
<0050B49B    jne        0050B34C
 0050B4A1    mov        eax,dword ptr [ebp-24]
 0050B4A4    mov        edx,dword ptr [eax]
 0050B4A6    call       dword ptr [edx+0C]
 0050B4A9    test       al,al
<0050B4AB    jne        0050B2BB
 0050B4B1    mov        eax,dword ptr [ebp-24]
 0050B4B4    mov        edx,dword ptr [eax]
 0050B4B6    call       dword ptr [edx+10]
 0050B4B9    xor        eax,eax
 0050B4BB    pop        edx
 0050B4BC    pop        ecx
 0050B4BD    pop        ecx
 0050B4BE    mov        dword ptr fs:[eax],edx
 0050B4C1    push       50B4DE
 0050B4C6    mov        eax,dword ptr [ebp-20]
 0050B4C9    call       TObject.Free
 0050B4CE    mov        eax,dword ptr [ebp-1C]
 0050B4D1    call       TObject.Free
 0050B4D6    ret
<0050B4D7    jmp        @HandleFinally
<0050B4DC    jmp        0050B4C6
 0050B4DE    xor        eax,eax
 0050B4E0    pop        edx
 0050B4E1    pop        ecx
 0050B4E2    pop        ecx
 0050B4E3    mov        dword ptr fs:[eax],edx
 0050B4E6    push       50B542
 0050B4EB    lea        eax,[ebp-60]
 0050B4EE    mov        edx,4
 0050B4F3    call       @LStrArrayClr
 0050B4F8    lea        eax,[ebp-50]
 0050B4FB    call       @IntfClear
 0050B500    lea        eax,[ebp-4C]
 0050B503    call       @IntfClear
 0050B508    lea        eax,[ebp-48]
 0050B50B    call       @IntfClear
 0050B510    lea        eax,[ebp-44]
 0050B513    call       @LStrClr
 0050B518    lea        eax,[ebp-38]
 0050B51B    mov        edx,2
 0050B520    call       @LStrArrayClr
 0050B525    lea        eax,[ebp-24]
 0050B528    call       @IntfClear
 0050B52D    lea        eax,[ebp-18]
 0050B530    mov        edx,4
 0050B535    call       @LStrArrayClr
 0050B53A    ret
<0050B53B    jmp        @HandleFinally
<0050B540    jmp        0050B4EB
 0050B542    pop        edi
 0050B543    pop        esi
 0050B544    pop        ebx
 0050B545    mov        esp,ebp
 0050B547    pop        ebp
 0050B548    ret        8
*}
//end;

//0050B5CC
//procedure sub_0050B5CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050B5CC    push       ebp
 0050B5CD    mov        ebp,esp
 0050B5CF    push       ecx
 0050B5D0    mov        ecx,0D
 0050B5D5    push       0
 0050B5D7    push       0
 0050B5D9    dec        ecx
<0050B5DA    jne        0050B5D5
 0050B5DC    xchg       ecx,dword ptr [ebp-4]
 0050B5DF    push       ebx
 0050B5E0    push       esi
 0050B5E1    push       edi
 0050B5E2    mov        dword ptr [ebp-4],ecx
 0050B5E5    mov        esi,eax
 0050B5E7    mov        ebx,dword ptr [ebp+8]
 0050B5EA    mov        edi,dword ptr [ebp+14]
 0050B5ED    xor        eax,eax
 0050B5EF    push       ebp
 0050B5F0    push       50BA2E
 0050B5F5    push       dword ptr fs:[eax]
 0050B5F8    mov        dword ptr fs:[eax],esp
 0050B5FB    cmp        dword ptr [ebp+18],0
>0050B5FF    jne        0050B622
 0050B601    lea        edx,[ebp-34]
 0050B604    mov        eax,[0061BD10]; ^#122.sResString45:TResStringRec
 0050B609    call       LoadResString
 0050B60E    mov        ecx,dword ptr [ebp-34]
 0050B611    mov        dl,1
 0050B613    mov        eax,[004087B0]; Exception
 0050B618    call       Exception.Create; Exception.Create
 0050B61D    call       @RaiseExcept
 0050B622    mov        ecx,ebx
 0050B624    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 0050B62A    mov        edx,dword ptr [edx]
 0050B62C    mov        eax,esi
 0050B62E    call       004D8E7C
 0050B633    test       edi,edi
>0050B635    jne        0050B644
 0050B637    lea        eax,[ebp-0C]
 0050B63A    mov        edx,dword ptr [esi+24]; TZMySQLDatabaseMetadata.?f24:String
 0050B63D    call       @LStrLAsg
>0050B642    jmp        0050B64E
 0050B644    lea        eax,[ebp-0C]
 0050B647    mov        edx,edi
 0050B649    call       @LStrLAsg
 0050B64E    mov        dl,1
 0050B650    mov        eax,[0041C8E4]; TStringList
 0050B655    call       TObject.Create; TStringList.Create
 0050B65A    mov        dword ptr [ebp-20],eax
 0050B65D    mov        dl,1
 0050B65F    mov        eax,[0041C8E4]; TStringList
 0050B664    call       TObject.Create; TStringList.Create
 0050B669    mov        dword ptr [ebp-1C],eax
 0050B66C    xor        edx,edx
 0050B66E    push       ebp
 0050B66F    push       50B9CA
 0050B674    push       dword ptr fs:[edx]
 0050B677    mov        dword ptr fs:[edx],esp
 0050B67A    lea        eax,[ebp-38]
 0050B67D    push       eax
 0050B67E    lea        edx,[ebp-48]
 0050B681    mov        eax,esi
 0050B683    mov        ecx,dword ptr [eax]
 0050B685    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050B68B    mov        eax,dword ptr [ebp-48]
 0050B68E    lea        ecx,[ebp-44]
 0050B691    mov        edx,dword ptr [ebp-0C]
 0050B694    mov        edi,dword ptr [eax]
 0050B696    call       dword ptr [edi+14]
 0050B699    mov        eax,dword ptr [ebp-44]
 0050B69C    mov        dword ptr [ebp-40],eax
 0050B69F    mov        byte ptr [ebp-3C],0B
 0050B6A3    lea        edx,[ebp-40]
 0050B6A6    xor        ecx,ecx
 0050B6A8    mov        eax,50BA48; 'SHOW TABLE STATUS FROM %s'
 0050B6AD    call       Format
 0050B6B2    mov        eax,dword ptr [ebp-38]
 0050B6B5    push       eax
 0050B6B6    lea        edx,[ebp-50]
 0050B6B9    mov        eax,esi
 0050B6BB    mov        ecx,dword ptr [eax]
 0050B6BD    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050B6C3    mov        eax,dword ptr [ebp-50]
 0050B6C6    lea        edx,[ebp-4C]
 0050B6C9    mov        ecx,dword ptr [eax]
 0050B6CB    call       dword ptr [ecx+0C]
 0050B6CE    mov        eax,dword ptr [ebp-4C]
 0050B6D1    lea        ecx,[ebp-24]
 0050B6D4    pop        edx
 0050B6D5    mov        esi,dword ptr [eax]
 0050B6D7    call       dword ptr [esi+0C]
 0050B6DA    mov        edx,50BA6C; 'Type'
 0050B6DF    mov        eax,dword ptr [ebp-24]
 0050B6E2    mov        ecx,dword ptr [eax]
 0050B6E4    call       dword ptr [ecx+0D0]
 0050B6EA    mov        dword ptr [ebp-30],eax
 0050B6ED    mov        edx,50BA7C; 'Comment'
 0050B6F2    mov        eax,dword ptr [ebp-24]
 0050B6F5    mov        ecx,dword ptr [eax]
 0050B6F7    call       dword ptr [ecx+0D0]
 0050B6FD    mov        dword ptr [ebp-2C],eax
 0050B700    mov        edx,50BA8C; 'Name'
 0050B705    mov        eax,dword ptr [ebp-24]
 0050B708    mov        ecx,dword ptr [eax]
 0050B70A    call       dword ptr [ecx+0D0]
 0050B710    mov        dword ptr [ebp-28],eax
>0050B713    jmp        0050B994
 0050B718    lea        ecx,[ebp-10]
 0050B71B    mov        edx,dword ptr [ebp-30]
 0050B71E    mov        eax,dword ptr [ebp-24]
 0050B721    mov        esi,dword ptr [eax]
 0050B723    call       dword ptr [esi+20]
 0050B726    cmp        dword ptr [ebp-10],0
>0050B72A    je         0050B994
 0050B730    lea        edx,[ebp-54]
 0050B733    mov        eax,dword ptr [ebp-10]
 0050B736    call       LowerCase
 0050B73B    mov        eax,dword ptr [ebp-54]
 0050B73E    mov        edx,50BA9C; 'innodb'
 0050B743    call       @LStrCmp
>0050B748    jne        0050B994
 0050B74E    lea        ecx,[ebp-14]
 0050B751    mov        edx,dword ptr [ebp-2C]
 0050B754    mov        eax,dword ptr [ebp-24]
 0050B757    mov        esi,dword ptr [eax]
 0050B759    call       dword ptr [esi+20]
 0050B75C    cmp        dword ptr [ebp-14],0
>0050B760    jne        0050B994
 0050B766    mov        ecx,50BAAC; ';'
 0050B76B    mov        edx,dword ptr [ebp-14]
 0050B76E    mov        eax,dword ptr [ebp-1C]
 0050B771    call       004BF370
 0050B776    xor        eax,eax
 0050B778    mov        dword ptr [ebp-8],eax
 0050B77B    mov        eax,dword ptr [ebp-1C]
 0050B77E    mov        edx,dword ptr [eax]
 0050B780    call       dword ptr [edx+14]; TStringList.GetCount
 0050B783    cmp        eax,4
>0050B786    jle        0050B994
 0050B78C    mov        eax,dword ptr [ebp-1C]
 0050B78F    mov        edx,dword ptr [eax]
 0050B791    call       dword ptr [edx+14]; TStringList.GetCount
 0050B794    mov        esi,eax
 0050B796    sub        esi,1
>0050B799    jno        0050B7A0
 0050B79B    call       @IntOver
 0050B7A0    test       esi,esi
>0050B7A2    jl         0050B994
 0050B7A8    inc        esi
 0050B7A9    lea        ecx,[ebp-18]
 0050B7AC    mov        edx,1
 0050B7B1    mov        eax,dword ptr [ebp-1C]
 0050B7B4    mov        edi,dword ptr [eax]
 0050B7B6    call       dword ptr [edi+0C]; TStringList.Get
 0050B7B9    mov        eax,dword ptr [ebx]
 0050B7BB    mov        edx,dword ptr [eax]
 0050B7BD    call       dword ptr [edx+1E4]
 0050B7C3    mov        ecx,50BAB8; '() /'
 0050B7C8    mov        edx,dword ptr [ebp-18]
 0050B7CB    mov        eax,dword ptr [ebp-20]
 0050B7CE    call       004BF370
 0050B7D3    mov        eax,dword ptr [ebx]
 0050B7D5    mov        ecx,dword ptr [ebp-0C]
 0050B7D8    mov        edx,5
 0050B7DD    mov        edi,dword ptr [eax]
 0050B7DF    call       dword ptr [edi+158]
 0050B7E5    cmp        dword ptr [ebp+10],0
>0050B7E9    jne        0050B7FC
 0050B7EB    mov        eax,dword ptr [ebx]
 0050B7ED    mov        edx,6
 0050B7F2    mov        ecx,dword ptr [eax]
 0050B7F4    call       dword ptr [ecx+130]
>0050B7FA    jmp        0050B80E
 0050B7FC    mov        eax,dword ptr [ebx]
 0050B7FE    mov        ecx,dword ptr [ebp+10]
 0050B801    mov        edx,6
 0050B806    mov        edi,dword ptr [eax]
 0050B808    call       dword ptr [edi+158]
 0050B80E    lea        ecx,[ebp-58]
 0050B811    mov        edx,dword ptr [ebp-28]
 0050B814    mov        eax,dword ptr [ebp-24]
 0050B817    mov        edi,dword ptr [eax]
 0050B819    call       dword ptr [edi+20]
 0050B81C    mov        edx,dword ptr [ebp-58]
 0050B81F    mov        eax,dword ptr [ebp+0C]
 0050B822    call       @LStrCmp
>0050B827    jne        0050B98D
 0050B82D    lea        ecx,[ebp-5C]
 0050B830    mov        edx,dword ptr [ebp-28]
 0050B833    mov        eax,dword ptr [ebp-24]
 0050B836    mov        edi,dword ptr [eax]
 0050B838    call       dword ptr [edi+20]
 0050B83B    mov        ecx,dword ptr [ebp-5C]
 0050B83E    mov        eax,dword ptr [ebx]
 0050B840    mov        edx,7
 0050B845    mov        edi,dword ptr [eax]
 0050B847    call       dword ptr [edi+158]
 0050B84D    lea        ecx,[ebp-60]
 0050B850    xor        edx,edx
 0050B852    mov        eax,dword ptr [ebp-20]
 0050B855    mov        edi,dword ptr [eax]
 0050B857    call       dword ptr [edi+0C]; TStringList.Get
 0050B85A    mov        ecx,dword ptr [ebp-60]
 0050B85D    mov        eax,dword ptr [ebx]
 0050B85F    mov        edx,8
 0050B864    mov        edi,dword ptr [eax]
 0050B866    call       dword ptr [edi+158]
 0050B86C    lea        ecx,[ebp-64]
 0050B86F    mov        edx,2
 0050B874    mov        eax,dword ptr [ebp-20]
 0050B877    mov        edi,dword ptr [eax]
 0050B879    call       dword ptr [edi+0C]; TStringList.Get
 0050B87C    mov        ecx,dword ptr [ebp-64]
 0050B87F    mov        eax,dword ptr [ebx]
 0050B881    mov        edx,1
 0050B886    mov        edi,dword ptr [eax]
 0050B888    call       dword ptr [edi+158]
 0050B88E    cmp        dword ptr [ebp-4],0
>0050B892    jne        0050B8A5
 0050B894    mov        eax,dword ptr [ebx]
 0050B896    mov        edx,2
 0050B89B    mov        ecx,dword ptr [eax]
 0050B89D    call       dword ptr [ecx+130]
>0050B8A3    jmp        0050B8B7
 0050B8A5    mov        eax,dword ptr [ebx]
 0050B8A7    mov        ecx,dword ptr [ebp-4]
 0050B8AA    mov        edx,2
 0050B8AF    mov        edi,dword ptr [eax]
 0050B8B1    call       dword ptr [edi+158]
 0050B8B7    lea        ecx,[ebp-68]
 0050B8BA    mov        edx,3
 0050B8BF    mov        eax,dword ptr [ebp-20]
 0050B8C2    mov        edi,dword ptr [eax]
 0050B8C4    call       dword ptr [edi+0C]; TStringList.Get
 0050B8C7    mov        edx,dword ptr [ebp-68]
 0050B8CA    mov        eax,dword ptr [ebp+18]
 0050B8CD    call       @LStrCmp
>0050B8D2    je         0050B98D
 0050B8D8    mov        eax,dword ptr [ebx]
 0050B8DA    mov        ecx,dword ptr [ebp+18]
 0050B8DD    mov        edx,3
 0050B8E2    mov        edi,dword ptr [eax]
 0050B8E4    call       dword ptr [edi+158]
 0050B8EA    lea        ecx,[ebp-6C]
 0050B8ED    mov        edx,4
 0050B8F2    mov        eax,dword ptr [ebp-20]
 0050B8F5    mov        edi,dword ptr [eax]
 0050B8F7    call       dword ptr [edi+0C]; TStringList.Get
 0050B8FA    mov        ecx,dword ptr [ebp-6C]
 0050B8FD    mov        eax,dword ptr [ebx]
 0050B8FF    mov        edx,4
 0050B904    mov        edi,dword ptr [eax]
 0050B906    call       dword ptr [edi+158]
 0050B90C    mov        eax,dword ptr [ebx]
 0050B90E    mov        ecx,dword ptr [ebp-8]
 0050B911    mov        edx,9
 0050B916    mov        edi,dword ptr [eax]
 0050B918    call       dword ptr [edi+140]
 0050B91E    mov        eax,dword ptr [ebx]
 0050B920    mov        ecx,4
 0050B925    mov        edx,0A
 0050B92A    mov        edi,dword ptr [eax]
 0050B92C    call       dword ptr [edi+140]
 0050B932    mov        eax,dword ptr [ebx]
 0050B934    mov        ecx,4
 0050B939    mov        edx,0B
 0050B93E    mov        edi,dword ptr [eax]
 0050B940    call       dword ptr [edi+140]
 0050B946    mov        eax,dword ptr [ebx]
 0050B948    mov        edx,0C
 0050B94D    mov        ecx,dword ptr [eax]
 0050B94F    call       dword ptr [ecx+130]
 0050B955    mov        eax,dword ptr [ebx]
 0050B957    mov        edx,0D
 0050B95C    mov        ecx,dword ptr [eax]
 0050B95E    call       dword ptr [ecx+130]
 0050B964    mov        eax,dword ptr [ebx]
 0050B966    mov        ecx,4
 0050B96B    mov        edx,0E
 0050B970    mov        edi,dword ptr [eax]
 0050B972    call       dword ptr [edi+140]
 0050B978    add        dword ptr [ebp-8],1
>0050B97C    jno        0050B983
 0050B97E    call       @IntOver
 0050B983    mov        eax,dword ptr [ebx]
 0050B985    mov        edx,dword ptr [eax]
 0050B987    call       dword ptr [edx+1D0]
 0050B98D    dec        esi
<0050B98E    jne        0050B7A9
 0050B994    mov        eax,dword ptr [ebp-24]
 0050B997    mov        edx,dword ptr [eax]
 0050B999    call       dword ptr [edx+0C]
 0050B99C    test       al,al
<0050B99E    jne        0050B718
 0050B9A4    mov        eax,dword ptr [ebp-24]
 0050B9A7    mov        edx,dword ptr [eax]
 0050B9A9    call       dword ptr [edx+10]
 0050B9AC    xor        eax,eax
 0050B9AE    pop        edx
 0050B9AF    pop        ecx
 0050B9B0    pop        ecx
 0050B9B1    mov        dword ptr fs:[eax],edx
 0050B9B4    push       50B9D1
 0050B9B9    mov        eax,dword ptr [ebp-20]
 0050B9BC    call       TObject.Free
 0050B9C1    mov        eax,dword ptr [ebp-1C]
 0050B9C4    call       TObject.Free
 0050B9C9    ret
<0050B9CA    jmp        @HandleFinally
<0050B9CF    jmp        0050B9B9
 0050B9D1    xor        eax,eax
 0050B9D3    pop        edx
 0050B9D4    pop        ecx
 0050B9D5    pop        ecx
 0050B9D6    mov        dword ptr fs:[eax],edx
 0050B9D9    push       50BA35
 0050B9DE    lea        eax,[ebp-6C]
 0050B9E1    mov        edx,7
 0050B9E6    call       @LStrArrayClr
 0050B9EB    lea        eax,[ebp-50]
 0050B9EE    call       @IntfClear
 0050B9F3    lea        eax,[ebp-4C]
 0050B9F6    call       @IntfClear
 0050B9FB    lea        eax,[ebp-48]
 0050B9FE    call       @IntfClear
 0050BA03    lea        eax,[ebp-44]
 0050BA06    call       @LStrClr
 0050BA0B    lea        eax,[ebp-38]
 0050BA0E    mov        edx,2
 0050BA13    call       @LStrArrayClr
 0050BA18    lea        eax,[ebp-24]
 0050BA1B    call       @IntfClear
 0050BA20    lea        eax,[ebp-18]
 0050BA23    mov        edx,4
 0050BA28    call       @LStrArrayClr
 0050BA2D    ret
<0050BA2E    jmp        @HandleFinally
<0050BA33    jmp        0050B9DE
 0050BA35    pop        edi
 0050BA36    pop        esi
 0050BA37    pop        ebx
 0050BA38    mov        esp,ebp
 0050BA3A    pop        ebp
 0050BA3B    ret        14
*}
//end;

//0050BD00
//procedure sub_0050BD00(?:?);
//begin
{*
 0050BD00    push       ebp
 0050BD01    mov        ebp,esp
 0050BD03    add        esp,0FFFFFFEC
 0050BD06    push       ebx
 0050BD07    push       esi
 0050BD08    push       edi
 0050BD09    xor        ecx,ecx
 0050BD0B    mov        dword ptr [ebp-0C],ecx
 0050BD0E    mov        ebx,edx
 0050BD10    mov        dword ptr [ebp-4],eax
 0050BD13    xor        eax,eax
 0050BD15    push       ebp
 0050BD16    push       50BF4B
 0050BD1B    push       dword ptr fs:[eax]
 0050BD1E    mov        dword ptr fs:[eax],esp
 0050BD21    lea        edx,[ebp-0C]
 0050BD24    mov        eax,dword ptr [ebp-4]
 0050BD27    call       004DB434
 0050BD2C    mov        ecx,ebx
 0050BD2E    mov        edx,dword ptr [ebp-0C]
 0050BD31    mov        eax,dword ptr [ebp-4]
 0050BD34    call       004D90D8
 0050BD39    cmp        dword ptr [ebx],0
>0050BD3C    jne        0050BF35
 0050BD42    mov        ecx,ebx
 0050BD44    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 0050BD4A    mov        edx,dword ptr [edx]
 0050BD4C    mov        eax,dword ptr [ebp-4]
 0050BD4F    call       004D8E7C
 0050BD54    mov        dword ptr [ebp-8],21
 0050BD5B    mov        esi,616084; gvar_00616084:array[33] of String
 0050BD60    mov        eax,616108
 0050BD65    mov        dword ptr [ebp-10],eax
 0050BD68    mov        eax,61612C
 0050BD6D    mov        dword ptr [ebp-14],eax
 0050BD70    mov        eax,dword ptr [ebx]
 0050BD72    mov        edx,dword ptr [eax]
 0050BD74    call       dword ptr [edx+1E4]
 0050BD7A    mov        eax,dword ptr [ebx]
 0050BD7C    mov        ecx,dword ptr [esi]
 0050BD7E    mov        edx,1
 0050BD83    mov        edi,dword ptr [eax]
 0050BD85    call       dword ptr [edi+158]
 0050BD8B    mov        eax,dword ptr [ebp-10]
 0050BD8E    xor        ecx,ecx
 0050BD90    mov        cl,byte ptr [eax]
 0050BD92    mov        eax,dword ptr [ebx]
 0050BD94    mov        edx,2
 0050BD99    mov        edi,dword ptr [eax]
 0050BD9B    call       dword ptr [edi+140]
 0050BDA1    mov        eax,dword ptr [ebp-14]
 0050BDA4    mov        eax,dword ptr [eax]
 0050BDA6    test       eax,eax
>0050BDA8    jl         0050BDBD
 0050BDAA    mov        ecx,eax
 0050BDAC    mov        eax,dword ptr [ebx]
 0050BDAE    mov        edx,3
 0050BDB3    mov        edi,dword ptr [eax]
 0050BDB5    call       dword ptr [edi+140]
>0050BDBB    jmp        0050BDCC
 0050BDBD    mov        eax,dword ptr [ebx]
 0050BDBF    mov        edx,3
 0050BDC4    mov        ecx,dword ptr [eax]
 0050BDC6    call       dword ptr [ecx+130]
 0050BDCC    mov        eax,dword ptr [ebp-10]
 0050BDCF    mov        al,byte ptr [eax]
 0050BDD1    sub        al,9
>0050BDD3    je         0050BDDF
 0050BDD5    add        al,0FE
 0050BDD7    sub        al,5
>0050BDD9    jb         0050BDDF
 0050BDDB    sub        al,1
>0050BDDD    jne        0050BE09
 0050BDDF    mov        eax,dword ptr [ebx]
 0050BDE1    mov        ecx,50BF64; '''
 0050BDE6    mov        edx,4
 0050BDEB    mov        edi,dword ptr [eax]
 0050BDED    call       dword ptr [edi+158]
 0050BDF3    mov        eax,dword ptr [ebx]
 0050BDF5    mov        ecx,50BF64; '''
 0050BDFA    mov        edx,5
 0050BDFF    mov        edi,dword ptr [eax]
 0050BE01    call       dword ptr [edi+158]
>0050BE07    jmp        0050BE27
 0050BE09    mov        eax,dword ptr [ebx]
 0050BE0B    mov        edx,4
 0050BE10    mov        ecx,dword ptr [eax]
 0050BE12    call       dword ptr [ecx+130]
 0050BE18    mov        eax,dword ptr [ebx]
 0050BE1A    mov        edx,5
 0050BE1F    mov        ecx,dword ptr [eax]
 0050BE21    call       dword ptr [ecx+130]
 0050BE27    mov        eax,dword ptr [ebx]
 0050BE29    mov        edx,6
 0050BE2E    mov        ecx,dword ptr [eax]
 0050BE30    call       dword ptr [ecx+130]
 0050BE36    mov        eax,dword ptr [ebx]
 0050BE38    mov        ecx,1
 0050BE3D    mov        edx,7
 0050BE42    mov        edi,dword ptr [eax]
 0050BE44    call       dword ptr [edi+140]
 0050BE4A    mov        eax,dword ptr [ebx]
 0050BE4C    xor        ecx,ecx
 0050BE4E    mov        edx,8
 0050BE53    mov        edi,dword ptr [eax]
 0050BE55    call       dword ptr [edi+134]
 0050BE5B    mov        eax,dword ptr [ebx]
 0050BE5D    xor        ecx,ecx
 0050BE5F    mov        edx,9
 0050BE64    mov        edi,dword ptr [eax]
 0050BE66    call       dword ptr [edi+134]
 0050BE6C    mov        eax,dword ptr [ebx]
 0050BE6E    xor        ecx,ecx
 0050BE70    mov        edx,0B
 0050BE75    mov        edi,dword ptr [eax]
 0050BE77    call       dword ptr [edi+134]
 0050BE7D    mov        eax,dword ptr [ebx]
 0050BE7F    xor        ecx,ecx
 0050BE81    mov        edx,0C
 0050BE86    mov        edi,dword ptr [eax]
 0050BE88    call       dword ptr [edi+134]
 0050BE8E    mov        eax,dword ptr [esi]
 0050BE90    mov        edx,50BF70; 'INTEGER'
 0050BE95    call       @LStrCmp
 0050BE9A    sete       cl
 0050BE9D    mov        eax,dword ptr [ebx]
 0050BE9F    mov        edx,0C
 0050BEA4    mov        edi,dword ptr [eax]
 0050BEA6    call       dword ptr [edi+134]
 0050BEAC    mov        eax,dword ptr [ebx]
 0050BEAE    mov        edx,0D
 0050BEB3    mov        ecx,dword ptr [eax]
 0050BEB5    call       dword ptr [ecx+130]
 0050BEBB    mov        eax,dword ptr [ebx]
 0050BEBD    mov        edx,0E
 0050BEC2    mov        ecx,dword ptr [eax]
 0050BEC4    call       dword ptr [ecx+130]
 0050BECA    mov        eax,dword ptr [ebx]
 0050BECC    mov        edx,0F
 0050BED1    mov        ecx,dword ptr [eax]
 0050BED3    call       dword ptr [ecx+130]
 0050BED9    mov        eax,dword ptr [ebx]
 0050BEDB    mov        edx,10
 0050BEE0    mov        ecx,dword ptr [eax]
 0050BEE2    call       dword ptr [ecx+130]
 0050BEE8    mov        eax,dword ptr [ebx]
 0050BEEA    mov        edx,11
 0050BEEF    mov        ecx,dword ptr [eax]
 0050BEF1    call       dword ptr [ecx+130]
 0050BEF7    mov        eax,dword ptr [ebx]
 0050BEF9    mov        ecx,0A
 0050BEFE    mov        edx,12
 0050BF03    mov        edi,dword ptr [eax]
 0050BF05    call       dword ptr [edi+140]
 0050BF0B    mov        eax,dword ptr [ebx]
 0050BF0D    mov        edx,dword ptr [eax]
 0050BF0F    call       dword ptr [edx+1D0]
 0050BF15    add        dword ptr [ebp-14],4
 0050BF19    inc        dword ptr [ebp-10]
 0050BF1C    add        esi,4
 0050BF1F    dec        dword ptr [ebp-8]
<0050BF22    jne        0050BD70
 0050BF28    mov        ecx,dword ptr [ebx]
 0050BF2A    mov        edx,dword ptr [ebp-0C]
 0050BF2D    mov        eax,dword ptr [ebp-4]
 0050BF30    call       004D9040
 0050BF35    xor        eax,eax
 0050BF37    pop        edx
 0050BF38    pop        ecx
 0050BF39    pop        ecx
 0050BF3A    mov        dword ptr fs:[eax],edx
 0050BF3D    push       50BF52
 0050BF42    lea        eax,[ebp-0C]
 0050BF45    call       @LStrClr
 0050BF4A    ret
<0050BF4B    jmp        @HandleFinally
<0050BF50    jmp        0050BF42
 0050BF52    pop        edi
 0050BF53    pop        esi
 0050BF54    pop        ebx
 0050BF55    mov        esp,ebp
 0050BF57    pop        ebp
 0050BF58    ret
*}
//end;

//0050BF78
//procedure sub_0050BF78(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0050BF78    push       ebp
 0050BF79    mov        ebp,esp
 0050BF7B    push       ecx
 0050BF7C    mov        ecx,0D
 0050BF81    push       0
 0050BF83    push       0
 0050BF85    dec        ecx
<0050BF86    jne        0050BF81
 0050BF88    push       ecx
 0050BF89    xchg       ecx,dword ptr [ebp-4]
 0050BF8C    push       ebx
 0050BF8D    push       esi
 0050BF8E    push       edi
 0050BF8F    mov        dword ptr [ebp-8],ecx
 0050BF92    mov        edi,edx
 0050BF94    mov        dword ptr [ebp-4],eax
 0050BF97    mov        ebx,dword ptr [ebp+8]
 0050BF9A    lea        esi,[ebp-2C]
 0050BF9D    xor        eax,eax
 0050BF9F    push       ebp
 0050BFA0    push       50C315
 0050BFA5    push       dword ptr fs:[eax]
 0050BFA8    mov        dword ptr fs:[eax],esp
 0050BFAB    cmp        dword ptr [ebp+14],0
>0050BFAF    jne        0050BFD2
 0050BFB1    lea        edx,[ebp-30]
 0050BFB4    mov        eax,[0061BD10]; ^#122.sResString45:TResStringRec
 0050BFB9    call       LoadResString
 0050BFBE    mov        ecx,dword ptr [ebp-30]
 0050BFC1    mov        dl,1
 0050BFC3    mov        eax,[004087B0]; Exception
 0050BFC8    call       Exception.Create; Exception.Create
 0050BFCD    call       @RaiseExcept
 0050BFD2    mov        ecx,ebx
 0050BFD4    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 0050BFDA    mov        edx,dword ptr [edx]
 0050BFDC    mov        eax,dword ptr [ebp-4]
 0050BFDF    call       004D8E7C
 0050BFE4    test       edi,edi
>0050BFE6    jne        0050C00B
 0050BFE8    cmp        dword ptr [ebp-8],0
>0050BFEC    je         0050BFFB
 0050BFEE    lea        eax,[ebp-0C]
 0050BFF1    mov        edx,dword ptr [ebp-8]
 0050BFF4    call       @LStrLAsg
>0050BFF9    jmp        0050C015
 0050BFFB    lea        eax,[ebp-0C]
 0050BFFE    mov        edx,dword ptr [ebp-4]
 0050C001    mov        edx,dword ptr [edx+24]; TZMySQLDatabaseMetadata.?f24:String
 0050C004    call       @LStrLAsg
>0050C009    jmp        0050C015
 0050C00B    lea        eax,[ebp-0C]
 0050C00E    mov        edx,edi
 0050C010    call       @LStrLAsg
 0050C015    lea        eax,[ebp-34]
 0050C018    push       eax
 0050C019    lea        edx,[ebp-4C]
 0050C01C    mov        eax,dword ptr [ebp-4]
 0050C01F    mov        ecx,dword ptr [eax]
 0050C021    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050C027    mov        eax,dword ptr [ebp-4C]
 0050C02A    lea        ecx,[ebp-48]
 0050C02D    mov        edx,dword ptr [ebp-0C]
 0050C030    mov        edi,dword ptr [eax]
 0050C032    call       dword ptr [edi+14]
 0050C035    mov        eax,dword ptr [ebp-48]
 0050C038    mov        dword ptr [ebp-44],eax
 0050C03B    mov        byte ptr [ebp-40],0B
 0050C03F    lea        edx,[ebp-54]
 0050C042    mov        eax,dword ptr [ebp-4]
 0050C045    mov        ecx,dword ptr [eax]
 0050C047    call       dword ptr [ecx+23C]; TZMySQLDatabaseMetadata.sub_004DAB04
 0050C04D    mov        eax,dword ptr [ebp-54]
 0050C050    lea        ecx,[ebp-50]
 0050C053    mov        edx,dword ptr [ebp+14]
 0050C056    mov        edi,dword ptr [eax]
 0050C058    call       dword ptr [edi+14]
 0050C05B    mov        eax,dword ptr [ebp-50]
 0050C05E    mov        dword ptr [ebp-3C],eax
 0050C061    mov        byte ptr [ebp-38],0B
 0050C065    lea        edx,[ebp-44]
 0050C068    mov        ecx,1
 0050C06D    mov        eax,50C330; 'SHOW INDEX FROM %s.%s'
 0050C072    call       Format
 0050C077    mov        eax,dword ptr [ebp-34]
 0050C07A    push       eax
 0050C07B    lea        edx,[ebp-5C]
 0050C07E    mov        eax,dword ptr [ebp-4]
 0050C081    mov        ecx,dword ptr [eax]
 0050C083    call       dword ptr [ecx+238]; TZMySQLDatabaseMetadata.sub_004D8E64
 0050C089    mov        eax,dword ptr [ebp-5C]
 0050C08C    lea        edx,[ebp-58]
 0050C08F    mov        ecx,dword ptr [eax]
 0050C091    call       dword ptr [ecx+0C]
 0050C094    mov        eax,dword ptr [ebp-58]
 0050C097    lea        ecx,[ebp-10]
 0050C09A    pop        edx
 0050C09B    mov        edi,dword ptr [eax]
 0050C09D    call       dword ptr [edi+0C]
 0050C0A0    mov        edx,50C350; 'Table'
 0050C0A5    mov        eax,dword ptr [ebp-10]
 0050C0A8    mov        ecx,dword ptr [eax]
 0050C0AA    call       dword ptr [ecx+0D0]
 0050C0B0    mov        dword ptr [esi],eax
 0050C0B2    mov        edx,50C360; 'Non_unique'
 0050C0B7    mov        eax,dword ptr [ebp-10]
 0050C0BA    mov        ecx,dword ptr [eax]
 0050C0BC    call       dword ptr [ecx+0D0]
 0050C0C2    mov        dword ptr [esi+4],eax
 0050C0C5    mov        edx,50C374; 'Key_name'
 0050C0CA    mov        eax,dword ptr [ebp-10]
 0050C0CD    mov        ecx,dword ptr [eax]
 0050C0CF    call       dword ptr [ecx+0D0]
 0050C0D5    mov        dword ptr [esi+8],eax
 0050C0D8    mov        edx,50C388; 'Seq_in_index'
 0050C0DD    mov        eax,dword ptr [ebp-10]
 0050C0E0    mov        ecx,dword ptr [eax]
 0050C0E2    call       dword ptr [ecx+0D0]
 0050C0E8    mov        dword ptr [esi+0C],eax
 0050C0EB    mov        edx,50C3A0; 'Column_name'
 0050C0F0    mov        eax,dword ptr [ebp-10]
 0050C0F3    mov        ecx,dword ptr [eax]
 0050C0F5    call       dword ptr [ecx+0D0]
 0050C0FB    mov        dword ptr [esi+10],eax
 0050C0FE    mov        edx,50C3B4; 'Collation'
 0050C103    mov        eax,dword ptr [ebp-10]
 0050C106    mov        ecx,dword ptr [eax]
 0050C108    call       dword ptr [ecx+0D0]
 0050C10E    mov        dword ptr [esi+14],eax
 0050C111    mov        edx,50C3C8; 'Cardinality'
 0050C116    mov        eax,dword ptr [ebp-10]
 0050C119    mov        ecx,dword ptr [eax]
 0050C11B    call       dword ptr [ecx+0D0]
 0050C121    mov        dword ptr [esi+18],eax
>0050C124    jmp        0050C295
 0050C129    mov        eax,dword ptr [ebx]
 0050C12B    mov        edx,dword ptr [eax]
 0050C12D    call       dword ptr [edx+1E4]
 0050C133    mov        eax,dword ptr [ebx]
 0050C135    mov        ecx,dword ptr [ebp-0C]
 0050C138    mov        edx,1
 0050C13D    mov        edi,dword ptr [eax]
 0050C13F    call       dword ptr [edi+158]
 0050C145    mov        eax,dword ptr [ebx]
 0050C147    mov        edx,2
 0050C14C    mov        ecx,dword ptr [eax]
 0050C14E    call       dword ptr [ecx+130]
 0050C154    lea        ecx,[ebp-60]
 0050C157    mov        edx,dword ptr [esi]
 0050C159    mov        eax,dword ptr [ebp-10]
 0050C15C    mov        edi,dword ptr [eax]
 0050C15E    call       dword ptr [edi+20]
 0050C161    mov        ecx,dword ptr [ebp-60]
 0050C164    mov        eax,dword ptr [ebx]
 0050C166    mov        edx,3
 0050C16B    mov        edi,dword ptr [eax]
 0050C16D    call       dword ptr [edi+158]
 0050C173    mov        edx,dword ptr [esi+4]
 0050C176    mov        eax,dword ptr [ebp-10]
 0050C179    mov        ecx,dword ptr [eax]
 0050C17B    call       dword ptr [ecx+34]
 0050C17E    test       eax,eax
>0050C180    jne        0050C198
 0050C182    mov        eax,dword ptr [ebx]
 0050C184    mov        ecx,50C3DC; 'true'
 0050C189    mov        edx,4
 0050C18E    mov        edi,dword ptr [eax]
 0050C190    call       dword ptr [edi+158]
>0050C196    jmp        0050C1AC
 0050C198    mov        eax,dword ptr [ebx]
 0050C19A    mov        ecx,50C3EC; 'false'
 0050C19F    mov        edx,4
 0050C1A4    mov        edi,dword ptr [eax]
 0050C1A6    call       dword ptr [edi+158]
 0050C1AC    mov        eax,dword ptr [ebx]
 0050C1AE    mov        edx,5
 0050C1B3    mov        ecx,dword ptr [eax]
 0050C1B5    call       dword ptr [ecx+130]
 0050C1BB    lea        ecx,[ebp-64]
 0050C1BE    mov        edx,dword ptr [esi+8]
 0050C1C1    mov        eax,dword ptr [ebp-10]
 0050C1C4    mov        edi,dword ptr [eax]
 0050C1C6    call       dword ptr [edi+20]
 0050C1C9    mov        ecx,dword ptr [ebp-64]
 0050C1CC    mov        eax,dword ptr [ebx]
 0050C1CE    mov        edx,6
 0050C1D3    mov        edi,dword ptr [eax]
 0050C1D5    call       dword ptr [edi+158]
 0050C1DB    mov        eax,dword ptr [ebx]
 0050C1DD    mov        ecx,3
 0050C1E2    mov        edx,7
 0050C1E7    mov        edi,dword ptr [eax]
 0050C1E9    call       dword ptr [edi+140]
 0050C1EF    mov        edx,dword ptr [esi+0C]
 0050C1F2    mov        eax,dword ptr [ebp-10]
 0050C1F5    mov        ecx,dword ptr [eax]
 0050C1F7    call       dword ptr [ecx+34]
 0050C1FA    mov        ecx,eax
 0050C1FC    mov        eax,dword ptr [ebx]
 0050C1FE    mov        edx,8
 0050C203    mov        edi,dword ptr [eax]
 0050C205    call       dword ptr [edi+140]
 0050C20B    lea        ecx,[ebp-68]
 0050C20E    mov        edx,dword ptr [esi+10]
 0050C211    mov        eax,dword ptr [ebp-10]
 0050C214    mov        edi,dword ptr [eax]
 0050C216    call       dword ptr [edi+20]
 0050C219    mov        ecx,dword ptr [ebp-68]
 0050C21C    mov        eax,dword ptr [ebx]
 0050C21E    mov        edx,9
 0050C223    mov        edi,dword ptr [eax]
 0050C225    call       dword ptr [edi+158]
 0050C22B    lea        ecx,[ebp-6C]
 0050C22E    mov        edx,dword ptr [esi+14]
 0050C231    mov        eax,dword ptr [ebp-10]
 0050C234    mov        edi,dword ptr [eax]
 0050C236    call       dword ptr [edi+20]
 0050C239    mov        ecx,dword ptr [ebp-6C]
 0050C23C    mov        eax,dword ptr [ebx]
 0050C23E    mov        edx,0A
 0050C243    mov        edi,dword ptr [eax]
 0050C245    call       dword ptr [edi+158]
 0050C24B    lea        ecx,[ebp-70]
 0050C24E    mov        edx,dword ptr [esi+18]
 0050C251    mov        eax,dword ptr [ebp-10]
 0050C254    mov        edi,dword ptr [eax]
 0050C256    call       dword ptr [edi+20]
 0050C259    mov        ecx,dword ptr [ebp-70]
 0050C25C    mov        eax,dword ptr [ebx]
 0050C25E    mov        edx,0B
 0050C263    mov        edi,dword ptr [eax]
 0050C265    call       dword ptr [edi+158]
 0050C26B    mov        eax,dword ptr [ebx]
 0050C26D    xor        ecx,ecx
 0050C26F    mov        edx,0C
 0050C274    mov        edi,dword ptr [eax]
 0050C276    call       dword ptr [edi+140]
 0050C27C    mov        eax,dword ptr [ebx]
 0050C27E    mov        edx,0D
 0050C283    mov        ecx,dword ptr [eax]
 0050C285    call       dword ptr [ecx+130]
 0050C28B    mov        eax,dword ptr [ebx]
 0050C28D    mov        edx,dword ptr [eax]
 0050C28F    call       dword ptr [edx+1D0]
 0050C295    mov        eax,dword ptr [ebp-10]
 0050C298    mov        edx,dword ptr [eax]
 0050C29A    call       dword ptr [edx+0C]
 0050C29D    test       al,al
<0050C29F    jne        0050C129
 0050C2A5    mov        eax,dword ptr [ebp-10]
 0050C2A8    mov        edx,dword ptr [eax]
 0050C2AA    call       dword ptr [edx+10]
 0050C2AD    xor        eax,eax
 0050C2AF    pop        edx
 0050C2B0    pop        ecx
 0050C2B1    pop        ecx
 0050C2B2    mov        dword ptr fs:[eax],edx
 0050C2B5    push       50C31C
 0050C2BA    lea        eax,[ebp-70]
 0050C2BD    mov        edx,5
 0050C2C2    call       @LStrArrayClr
 0050C2C7    lea        eax,[ebp-5C]
 0050C2CA    call       @IntfClear
 0050C2CF    lea        eax,[ebp-58]
 0050C2D2    call       @IntfClear
 0050C2D7    lea        eax,[ebp-54]
 0050C2DA    call       @IntfClear
 0050C2DF    lea        eax,[ebp-50]
 0050C2E2    call       @LStrClr
 0050C2E7    lea        eax,[ebp-4C]
 0050C2EA    call       @IntfClear
 0050C2EF    lea        eax,[ebp-48]
 0050C2F2    call       @LStrClr
 0050C2F7    lea        eax,[ebp-34]
 0050C2FA    mov        edx,2
 0050C2FF    call       @LStrArrayClr
 0050C304    lea        eax,[ebp-10]
 0050C307    call       @IntfClear
 0050C30C    lea        eax,[ebp-0C]
 0050C30F    call       @LStrClr
 0050C314    ret
<0050C315    jmp        @HandleFinally
<0050C31A    jmp        0050C2BA
 0050C31C    pop        edi
 0050C31D    pop        esi
 0050C31E    pop        ebx
 0050C31F    mov        esp,ebp
 0050C321    pop        ebp
 0050C322    ret        10
*}
//end;

//0050C3F4
//procedure sub_0050C3F4(?:?; ?:?; ?:?);
//begin
{*
 0050C3F4    push       ebp
 0050C3F5    mov        ebp,esp
 0050C3F7    push       ecx
 0050C3F8    mov        ecx,4
 0050C3FD    push       0
 0050C3FF    push       0
 0050C401    dec        ecx
<0050C402    jne        0050C3FD
 0050C404    push       ecx
 0050C405    xchg       ecx,dword ptr [ebp-4]
 0050C408    push       ebx
 0050C409    push       esi
 0050C40A    mov        dword ptr [ebp-4],ecx
 0050C40D    mov        ebx,edx
 0050C40F    mov        esi,eax
 0050C411    xor        eax,eax
 0050C413    push       ebp
 0050C414    push       50C557
 0050C419    push       dword ptr fs:[eax]
 0050C41C    mov        dword ptr fs:[eax],esp
 0050C41F    lea        eax,[ebp-0C]
 0050C422    push       eax
 0050C423    lea        edx,[ebp-14]
 0050C426    mov        eax,esi
 0050C428    mov        ecx,dword ptr [eax]
 0050C42A    call       dword ptr [ecx+238]
 0050C430    mov        eax,dword ptr [ebp-14]
 0050C433    mov        edx,dword ptr [eax]
 0050C435    call       dword ptr [edx+70]
 0050C438    mov        ecx,dword ptr [ebp-4]
 0050C43B    mov        edx,ebx
 0050C43D    call       004C0150
 0050C442    cmp        dword ptr [ebx],4
>0050C445    jl         0050C45C
 0050C447    cmp        dword ptr [ebx],4
>0050C44A    jne        0050C51C
 0050C450    mov        eax,dword ptr [ebp-4]
 0050C453    cmp        dword ptr [eax],0
>0050C456    jne        0050C51C
 0050C45C    lea        edx,[ebp-1C]
 0050C45F    mov        eax,esi
 0050C461    mov        ecx,dword ptr [eax]
 0050C463    call       dword ptr [ecx+238]
 0050C469    mov        eax,dword ptr [ebp-1C]
 0050C46C    lea        edx,[ebp-18]
 0050C46F    mov        ecx,dword ptr [eax]
 0050C471    call       dword ptr [ecx+0C]
 0050C474    mov        eax,dword ptr [ebp-18]
 0050C477    lea        ecx,[ebp-10]
 0050C47A    mov        edx,50C56C; 'SELECT VERSION()'
 0050C47F    mov        esi,dword ptr [eax]
 0050C481    call       dword ptr [esi+0C]
 0050C484    lea        ecx,[ebp-20]
 0050C487    mov        edx,1
 0050C48C    mov        eax,dword ptr [ebp-10]
 0050C48F    mov        esi,dword ptr [eax]
 0050C491    call       dword ptr [esi+20]
 0050C494    mov        eax,dword ptr [ebp-20]
 0050C497    mov        edx,50C588; '.-'
 0050C49C    call       004BF310
 0050C4A1    mov        dword ptr [ebp-8],eax
 0050C4A4    xor        eax,eax
 0050C4A6    push       ebp
 0050C4A7    push       50C50D
 0050C4AC    push       dword ptr fs:[eax]
 0050C4AF    mov        dword ptr fs:[eax],esp
 0050C4B2    mov        eax,dword ptr [ebp-8]
 0050C4B5    mov        edx,dword ptr [eax]
 0050C4B7    call       dword ptr [edx+14]
 0050C4BA    cmp        eax,2
>0050C4BD    jl         0050C4F7
 0050C4BF    lea        ecx,[ebp-24]
 0050C4C2    xor        edx,edx
 0050C4C4    mov        eax,dword ptr [ebp-8]
 0050C4C7    mov        esi,dword ptr [eax]
 0050C4C9    call       dword ptr [esi+0C]
 0050C4CC    mov        eax,dword ptr [ebp-24]
 0050C4CF    xor        edx,edx
 0050C4D1    call       StrToIntDef
 0050C4D6    mov        dword ptr [ebx],eax
 0050C4D8    lea        ecx,[ebp-28]
 0050C4DB    mov        edx,1
 0050C4E0    mov        eax,dword ptr [ebp-8]
 0050C4E3    mov        ebx,dword ptr [eax]
 0050C4E5    call       dword ptr [ebx+0C]
 0050C4E8    mov        eax,dword ptr [ebp-28]
 0050C4EB    xor        edx,edx
 0050C4ED    call       StrToIntDef
 0050C4F2    mov        edx,dword ptr [ebp-4]
 0050C4F5    mov        dword ptr [edx],eax
 0050C4F7    xor        eax,eax
 0050C4F9    pop        edx
 0050C4FA    pop        ecx
 0050C4FB    pop        ecx
 0050C4FC    mov        dword ptr fs:[eax],edx
 0050C4FF    push       50C514
 0050C504    mov        eax,dword ptr [ebp-8]
 0050C507    call       TObject.Free
 0050C50C    ret
<0050C50D    jmp        @HandleFinally
<0050C512    jmp        0050C504
 0050C514    mov        eax,dword ptr [ebp-10]
 0050C517    mov        edx,dword ptr [eax]
 0050C519    call       dword ptr [edx+10]
 0050C51C    xor        eax,eax
 0050C51E    pop        edx
 0050C51F    pop        ecx
 0050C520    pop        ecx
 0050C521    mov        dword ptr fs:[eax],edx
 0050C524    push       50C55E
 0050C529    lea        eax,[ebp-28]
 0050C52C    mov        edx,3
 0050C531    call       @LStrArrayClr
 0050C536    lea        eax,[ebp-1C]
 0050C539    call       @IntfClear
 0050C53E    lea        eax,[ebp-18]
 0050C541    call       @IntfClear
 0050C546    lea        eax,[ebp-14]
 0050C549    call       @IntfClear
 0050C54E    lea        eax,[ebp-10]
 0050C551    call       @IntfClear
 0050C556    ret
<0050C557    jmp        @HandleFinally
<0050C55C    jmp        0050C529
 0050C55E    pop        esi
 0050C55F    pop        ebx
 0050C560    mov        esp,ebp
 0050C562    pop        ebp
 0050C563    ret
*}
//end;

//0050C58C
//procedure sub_0050C58C(?:?);
//begin
{*
 0050C58C    push       ebp
 0050C58D    mov        ebp,esp
 0050C58F    push       ebx
 0050C590    push       esi
 0050C591    mov        esi,eax
 0050C593    mov        ebx,dword ptr [ebp+8]
 0050C596    mov        ecx,ebx
 0050C598    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 0050C59E    mov        edx,dword ptr [edx]
 0050C5A0    mov        eax,esi
 0050C5A2    call       004D8E7C
 0050C5A7    mov        eax,dword ptr [ebx]
 0050C5A9    mov        edx,dword ptr [eax]
 0050C5AB    call       dword ptr [edx+1E4]
 0050C5B1    mov        eax,dword ptr [ebx]
 0050C5B3    mov        edx,1
 0050C5B8    mov        ecx,dword ptr [eax]
 0050C5BA    call       dword ptr [ecx+130]
 0050C5C0    mov        eax,dword ptr [ebx]
 0050C5C2    mov        ecx,50C644; 'ctid'
 0050C5C7    mov        edx,2
 0050C5CC    mov        esi,dword ptr [eax]
 0050C5CE    call       dword ptr [esi+158]
 0050C5D4    mov        eax,dword ptr [ebx]
 0050C5D6    mov        ecx,50C654; 'tid'
 0050C5DB    mov        edx,4
 0050C5E0    mov        esi,dword ptr [eax]
 0050C5E2    call       dword ptr [esi+158]
 0050C5E8    mov        eax,dword ptr [ebx]
 0050C5EA    mov        edx,5
 0050C5EF    mov        ecx,dword ptr [eax]
 0050C5F1    call       dword ptr [ecx+130]
 0050C5F7    mov        eax,dword ptr [ebx]
 0050C5F9    mov        edx,6
 0050C5FE    mov        ecx,dword ptr [eax]
 0050C600    call       dword ptr [ecx+130]
 0050C606    mov        eax,dword ptr [ebx]
 0050C608    mov        edx,7
 0050C60D    mov        ecx,dword ptr [eax]
 0050C60F    call       dword ptr [ecx+130]
 0050C615    mov        eax,dword ptr [ebx]
 0050C617    mov        ecx,2
 0050C61C    mov        edx,4
 0050C621    mov        esi,dword ptr [eax]
 0050C623    call       dword ptr [esi+140]
 0050C629    mov        eax,dword ptr [ebx]
 0050C62B    mov        edx,dword ptr [eax]
 0050C62D    call       dword ptr [edx+1D0]
 0050C633    pop        esi
 0050C634    pop        ebx
 0050C635    pop        ebp
 0050C636    ret        8
*}
//end;

Initialization
Finalization
//0050C658
{*
 0050C658    push       ebp
 0050C659    mov        ebp,esp
 0050C65B    xor        eax,eax
 0050C65D    push       ebp
 0050C65E    push       50C694
 0050C663    push       dword ptr fs:[eax]
 0050C666    mov        dword ptr fs:[eax],esp
 0050C669    inc        dword ptr ds:[61E2E8]
>0050C66F    jne        0050C686
 0050C671    mov        eax,616084; gvar_00616084:array[33] of String
 0050C676    mov        ecx,21
 0050C67B    mov        edx,dword ptr ds:[4010F8]; String
 0050C681    call       @FinalizeArray
 0050C686    xor        eax,eax
 0050C688    pop        edx
 0050C689    pop        ecx
 0050C68A    pop        ecx
 0050C68B    mov        dword ptr fs:[eax],edx
 0050C68E    push       50C69B
 0050C693    ret
<0050C694    jmp        @HandleFinally
<0050C699    jmp        0050C693
 0050C69B    pop        ebp
 0050C69C    ret
*}
end.