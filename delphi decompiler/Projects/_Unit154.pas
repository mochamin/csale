{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit154;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata, ZDbcASA;

type
  TZASADatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:TZASAConnection;//f24
    destructor Destroy; virtual;
    //procedure sub_00558C88(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00558F7C(?:?); virtual;
    //procedure sub_005590D4(?:?); virtual;
    //procedure sub_00559130(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00559DD4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00559AB4(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055A3D4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055A660(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055AAA0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055AEE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055B86C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00558580(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005587F0(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055A0A4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0055B378(?:?); virtual;
    //procedure sub_0055BD18(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //function sub_00557798():?; virtual;
    //procedure sub_0055779C(?:?); virtual;
    //procedure sub_005577C8(?:?); virtual;
    //procedure sub_005577F0(?:?); virtual;
    //function sub_00557844():?; virtual;
    //function sub_0055784C():?; virtual;
    //function sub_00557850():?; virtual;
    //function sub_00557854():?; virtual;
    //function sub_00557858():?; virtual;
    //function sub_0055785C():?; virtual;
    //function sub_00557860():?; virtual;
    //function sub_00557864():?; virtual;
    //function sub_00557868():?; virtual;
    //function sub_0055786C():?; virtual;
    //function sub_00557870():?; virtual;
    //function sub_00557874():?; virtual;
    //procedure sub_00557878(?:?); virtual;
    //procedure sub_00557E70(?:?); virtual;
    //procedure sub_00557F24(?:?); virtual;
    //procedure sub_00558058(?:?); virtual;
    //procedure sub_005582D0(?:?); virtual;
    //procedure sub_005583AC(?:?); virtual;
    //procedure sub_005583D0(?:?); virtual;
    //function sub_005583F4():?; virtual;
    //function sub_005583F8():?; virtual;
    //function sub_005583FC():?; virtual;
    //function sub_00558400():?; virtual;
    //function sub_00558404():?; virtual;
    //function sub_00558408():?; virtual;
    //procedure sub_0055840C(?:?); virtual;
    //procedure sub_00558434(?:?); virtual;
    //procedure sub_00558460(?:?); virtual;
    //procedure sub_00558470(?:?); virtual;
    //function sub_00558480():?; virtual;
    //function sub_00558484():?; virtual;
    //function sub_00558488():?; virtual;
    //function sub_0055848C():?; virtual;
    //function sub_00558490():?; virtual;
    //function sub_00558494():?; virtual;
    //function sub_00558498():?; virtual;
    //function sub_0055849C():?; virtual;
    //function sub_005584A0():?; virtual;
    //function sub_005584A4():?; virtual;
    //function sub_005584A8():?; virtual;
    //function sub_005584AC():?; virtual;
    //function sub_005584B0():?; virtual;
    //function sub_005584B4():?; virtual;
    //function sub_005584B8():?; virtual;
    //function sub_005584BC():?; virtual;
    //function sub_005584C0():?; virtual;
    //function sub_005584C4():?; virtual;
    //function sub_005584C8():?; virtual;
    //function sub_005584CC():?; virtual;
    //function sub_005584D0():?; virtual;
    //function sub_005584D4():?; virtual;
    //function sub_005584D8():?; virtual;
    //function sub_005584DC():?; virtual;
    //function sub_005584E0():?; virtual;
    //function sub_005584E4():?; virtual;
    //function sub_005584E8():?; virtual;
    //function sub_005584F0():?; virtual;
    //function sub_005584F8():?; virtual;
    //function sub_005584FC():?; virtual;
    //function sub_00558504():?; virtual;
    //function sub_0055850C():?; virtual;
    //function sub_00558514():?; virtual;
    //function sub_0055851C():?; virtual;
    //function sub_00558520():?; virtual;
    //function sub_00558528():?; virtual;
    //function sub_0055852C():?; virtual;
    //function sub_00558534():?; virtual;
    //function sub_0055853C():?; virtual;
    //function sub_00558540():?; virtual;
    //function sub_00558544():?; virtual;
    //function sub_00558548():?; virtual;
    //function sub_0055854C():?; virtual;
    //function sub_00558550():?; virtual;
    //function sub_00558558():?; virtual;
    //function sub_0055855C():?; virtual;
    //function sub_00558564():?; virtual;
    //function sub_00558568():?; virtual;
    //function sub_0055856C():?; virtual;
    //function sub_00558570():?; virtual;
    //function sub_00558574():?; virtual;
    //function sub_00558578():?; virtual;
    //function sub_0055857C():?; virtual;
    //function sub_0055BD10():?; virtual;
    //function sub_0055BD14():?; virtual;
    //constructor Create(?:TZASADatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005576D8
//constructor TZASADatabaseMetadata.Create(?:TZASADatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 005576D8    push       ebp
 005576D9    mov        ebp,esp
 005576DB    push       ebx
 005576DC    push       esi
 005576DD    push       edi
 005576DE    test       dl,dl
>005576E0    je         005576EA
 005576E2    add        esp,0FFFFFFF0
 005576E5    call       @ClassCreate
 005576EA    mov        esi,ecx
 005576EC    mov        ebx,edx
 005576EE    mov        edi,eax
 005576F0    mov        eax,dword ptr [ebp+0C]
 005576F3    call       @LStrAddRef
 005576F8    xor        eax,eax
 005576FA    push       ebp
 005576FB    push       557746
 00557700    push       dword ptr fs:[eax]
 00557703    mov        dword ptr fs:[eax],esp
 00557706    mov        eax,dword ptr [ebp+0C]
 00557709    push       eax
 0055770A    mov        eax,dword ptr [ebp+8]
 0055770D    push       eax
 0055770E    mov        ecx,esi
 00557710    test       ecx,ecx
>00557712    je         00557717
 00557714    sub        ecx,0FFFFFFD0
 00557717    xor        edx,edx
 00557719    mov        eax,edi
 0055771B    call       004D8D74
 00557720    mov        eax,esi
 00557722    mov        edx,dword ptr ds:[560A54]; TZASAConnection
 00557728    call       @AsClass
 0055772D    mov        dword ptr [edi+24],eax; TZASADatabaseMetadata.?f24:TZASAConnection
 00557730    xor        eax,eax
 00557732    pop        edx
 00557733    pop        ecx
 00557734    pop        ecx
 00557735    mov        dword ptr fs:[eax],edx
 00557738    push       55774D
 0055773D    lea        eax,[ebp+0C]
 00557740    call       @LStrClr
 00557745    ret
<00557746    jmp        @HandleFinally
<0055774B    jmp        0055773D
 0055774D    mov        eax,edi
 0055774F    test       bl,bl
>00557751    je         00557762
 00557753    call       @AfterConstruction
 00557758    pop        dword ptr fs:[0]
 0055775F    add        esp,0C
 00557762    mov        eax,edi
 00557764    pop        edi
 00557765    pop        esi
 00557766    pop        ebx
 00557767    pop        ebp
 00557768    ret        8
*}
//end;

//0055776C
destructor TZASADatabaseMetadata.Destroy;
begin
{*
 0055776C    push       ebp
 0055776D    mov        ebp,esp
 0055776F    push       ebx
 00557770    push       esi
 00557771    call       @BeforeDestruction
 00557776    mov        ebx,edx
 00557778    mov        esi,eax
 0055777A    mov        edx,ebx
 0055777C    and        dl,0FC
 0055777F    mov        eax,esi
 00557781    call       TZAbstractDatabaseMetadata.Destroy
 00557786    test       bl,bl
>00557788    jle        00557791
 0055778A    mov        eax,esi
 0055778C    call       @ClassDestroy
 00557791    pop        esi
 00557792    pop        ebx
 00557793    pop        ebp
 00557794    ret
*}
end;

//00557798
//function sub_00557798():?;
//begin
{*
 00557798    mov        al,1
 0055779A    ret
*}
//end;

//0055779C
//procedure sub_0055779C(?:?);
//begin
{*
 0055779C    push       ebp
 0055779D    mov        ebp,esp
 0055779F    push       ebx
 005577A0    mov        ebx,edx
 005577A2    mov        eax,ebx
 005577A4    mov        edx,5577BC; 'Sybase ASA'
 005577A9    call       @LStrAsg
 005577AE    pop        ebx
 005577AF    pop        ebp
 005577B0    ret
*}
//end;

//005577C8
//procedure sub_005577C8(?:?);
//begin
{*
 005577C8    push       ebp
 005577C9    mov        ebp,esp
 005577CB    push       ebx
 005577CC    mov        ebx,edx
 005577CE    mov        eax,ebx
 005577D0    mov        edx,5577E8; '7.0+'
 005577D5    call       @LStrAsg
 005577DA    pop        ebx
 005577DB    pop        ebp
 005577DC    ret
*}
//end;

//005577F0
//procedure sub_005577F0(?:?);
//begin
{*
 005577F0    push       ebp
 005577F1    mov        ebp,esp
 005577F3    push       ebx
 005577F4    mov        ebx,edx
 005577F6    mov        eax,ebx
 005577F8    mov        edx,557810; 'Zeos Database Connectivity Driver for Sybase ASA'
 005577FD    call       @LStrAsg
 00557802    pop        ebx
 00557803    pop        ebp
 00557804    ret
*}
//end;

//00557844
//function sub_00557844():?;
//begin
{*
 00557844    mov        eax,1
 00557849    ret
*}
//end;

//0055784C
//function sub_0055784C():?;
//begin
{*
 0055784C    xor        eax,eax
 0055784E    ret
*}
//end;

//00557850
//function sub_00557850():?;
//begin
{*
 00557850    xor        eax,eax
 00557852    ret
*}
//end;

//00557854
//function sub_00557854():?;
//begin
{*
 00557854    xor        eax,eax
 00557856    ret
*}
//end;

//00557858
//function sub_00557858():?;
//begin
{*
 00557858    xor        eax,eax
 0055785A    ret
*}
//end;

//0055785C
//function sub_0055785C():?;
//begin
{*
 0055785C    xor        eax,eax
 0055785E    ret
*}
//end;

//00557860
//function sub_00557860():?;
//begin
{*
 00557860    xor        eax,eax
 00557862    ret
*}
//end;

//00557864
//function sub_00557864():?;
//begin
{*
 00557864    mov        al,1
 00557866    ret
*}
//end;

//00557868
//function sub_00557868():?;
//begin
{*
 00557868    xor        eax,eax
 0055786A    ret
*}
//end;

//0055786C
//function sub_0055786C():?;
//begin
{*
 0055786C    xor        eax,eax
 0055786E    ret
*}
//end;

//00557870
//function sub_00557870():?;
//begin
{*
 00557870    xor        eax,eax
 00557872    ret
*}
//end;

//00557874
//function sub_00557874():?;
//begin
{*
 00557874    mov        al,1
 00557876    ret
*}
//end;

//00557878
//procedure sub_00557878(?:?);
//begin
{*
 00557878    push       ebp
 00557879    mov        ebp,esp
 0055787B    push       ebx
 0055787C    mov        ebx,edx
 0055787E    mov        eax,ebx
 00557880    mov        edx,557898; 'add,all,alter,and,any,as,asc,backup,begin,between,bigint,binary,bit,bottom,break,by,call,capability,cascade,case,cast,char,char_convert,character,check,checkpoint,close,comment,commit,connect,constraint,contains,continue,convert,create,cross,cube,current,cursor,date,dbspace,deallocate,dec,decimal,declare,default,delete,deleting,desc,distinct,do,double,drop,dynamic,else,elseif,encrypted,end,endif,escape,exception,exec,execute,existing,exists,externlogin,fetch,first,float,for,foreign,forward,from,full,goto,grant,group,having,holdlock,identified,if,in,index,inner,inout,insensitive,insert,inserting,install,instead,int,integer,integrated,into,iq,is,isolation,join,key,left,like,lock,login,long,match,membership,message,mode,modify,natural,new,no,noholdlock,not,notify,null,numeric,of,off,on,open,option,options,or,order,others,out,outer,over,passthrough,precision,prepare,primary,print,privileges,proc,procedure,publication,raiserror,readtext,real,reference,references,release,remote,remove,rename,reorganize,resource,restore,restrict,returnrevoke,right,rollback,rollup,save,savepoint,schedule,scroll,select,sensitive,session,set,setuser,share,smallint,some,sqlcode,sqlstate,start,stop,subtrans,subtransaction,synchronize,syntax_error,table,temporary,then,time,timestamp,tinyint,to,top,tran,trigger,truncate,tsequal,union,unique,unknown,unsigned,update,updating,user,using,validate,values,varbinary,varchar,variable,varying,view,wait,waitfor,when,where,while,with,with_lparen,work,writetext'
 00557885    call       @LStrAsg
 0055788A    pop        ebx
 0055788B    pop        ebp
 0055788C    ret
*}
//end;

//00557E70
//procedure sub_00557E70(?:?);
//begin
{*
 00557E70    push       ebp
 00557E71    mov        ebp,esp
 00557E73    push       ebx
 00557E74    mov        ebx,edx
 00557E76    mov        eax,ebx
 00557E78    mov        edx,557E90; 'ABS,ACOS,ASIN,ATAN,ATN2,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,MOD,PI,POWER,RADIANS,RAND,REMAINDER,ROUND,SIGN,SIN,SQRT,TAN,TRUNCATE,TRUNCNUM'
 00557E7D    call       @LStrAsg
 00557E82    pop        ebx
 00557E83    pop        ebp
 00557E84    ret
*}
//end;

//00557F24
//procedure sub_00557F24(?:?);
//begin
{*
 00557F24    push       ebp
 00557F25    mov        ebp,esp
 00557F27    push       ebx
 00557F28    mov        ebx,edx
 00557F2A    mov        eax,ebx
 00557F2C    mov        edx,557F44; 'ASCII,BYTE_LENGTH,BYTE_SUBSTR,CHAR,CHARINDEX,CHAR_LENGTH,COMPARE,CSCONVERT,DIFFERENCE,INSERTSTR,LCASE,LEFT,LENGTH,LOCATE,LOWER,LTRIM,PATINDEX,REPEAT,REPLACE,REPLICATE,RIGHT,RTRIM,SIMILAR,SORTKEY,SOUNDEX,SPACE,STR,STRING,STRTOUUID,STUFF,SUBSTRING,TRIM,UCASE,UPPER,UUIDTOSTR'
 00557F31    call       @LStrAsg
 00557F36    pop        ebx
 00557F37    pop        ebp
 00557F38    ret
*}
//end;

//00558058
//procedure sub_00558058(?:?);
//begin
{*
 00558058    push       ebp
 00558059    mov        ebp,esp
 0055805B    push       ebx
 0055805C    mov        ebx,edx
 0055805E    mov        eax,ebx
 00558060    mov        edx,558078; 'CONNECTION_PROPERTY,DATALENGTH,DB_ID,DB_NAME,DB_PROPERTY,EVENT_CONDITION,EVENT_CONDITION_NAME,EVENT_PARAMETER,NEXT_CONNECTION,NEXT_DATABASE,PROPERTY,PROPERTY_DESCRIPTION,PROPERTY_NAME,PROPERTY_NUMBER,Col_length,Col_name,Datalength,Index_col,Object_id,Object_name,Suser_id,Suser_name,Tsequal,User_id,User_name,ARGN,COALESCE,ESTIMATE,ESTIMATE_SOURCE,EXPERIENCE_ESTIMATE,EXPLANATION,GET_IDENTITY,GRAPHICAL_PLAN,GRAPHICAL_ULPLAN,GREATER,IDENTITY,IFNULL,INDEX_ESTIMATE,ISNULL,LESSER,LONG_ULPLAN,NEWID,NULLIF,NUMBER,PLAN,REWRITE,SHORT_ULPLAN,SQLDIALECT,TRACEBACK,TRANSACTSQL,VAREXISTS,WATCOMSQL,TEXTPTR'
 00558065    call       @LStrAsg
 0055806A    pop        ebx
 0055806B    pop        ebp
 0055806C    ret
*}
//end;

//005582D0
//procedure sub_005582D0(?:?);
//begin
{*
 005582D0    push       ebp
 005582D1    mov        ebp,esp
 005582D3    push       ebx
 005582D4    mov        ebx,edx
 005582D6    mov        eax,ebx
 005582D8    mov        edx,5582F0; 'DATE,DATEADD,DATEDIFF,DATEFORMAT,DATENAME,DATEPART,DATETIME,DAY,DAYNAME,DAYS,DOW,GETDATE,HOUR,HOURS,MINUTE,MINUTES,MONTH,MONTHNAME,MONTHS,NOW,QUARTER,SECOND,SECONDS,TODAY,WEEKS,YEARS,YMD'
 005582DD    call       @LStrAsg
 005582E2    pop        ebx
 005582E3    pop        ebp
 005582E4    ret
*}
//end;

//005583AC
//procedure sub_005583AC(?:?);
//begin
{*
 005583AC    push       ebp
 005583AD    mov        ebp,esp
 005583AF    push       ebx
 005583B0    mov        ebx,edx
 005583B2    mov        eax,ebx
 005583B4    mov        edx,5583CC; '\\'
 005583B9    call       @LStrAsg
 005583BE    pop        ebx
 005583BF    pop        ebp
 005583C0    ret
*}
//end;

//005583D0
//procedure sub_005583D0(?:?);
//begin
{*
 005583D0    push       ebp
 005583D1    mov        ebp,esp
 005583D3    push       ebx
 005583D4    mov        ebx,edx
 005583D6    mov        eax,ebx
 005583D8    mov        edx,5583F0; '@#$'
 005583DD    call       @LStrAsg
 005583E2    pop        ebx
 005583E3    pop        ebp
 005583E4    ret
*}
//end;

//005583F4
//function sub_005583F4():?;
//begin
{*
 005583F4    mov        al,1
 005583F6    ret
*}
//end;

//005583F8
//function sub_005583F8():?;
//begin
{*
 005583F8    mov        al,1
 005583FA    ret
*}
//end;

//005583FC
//function sub_005583FC():?;
//begin
{*
 005583FC    mov        al,1
 005583FE    ret
*}
//end;

//00558400
//function sub_00558400():?;
//begin
{*
 00558400    mov        al,1
 00558402    ret
*}
//end;

//00558404
//function sub_00558404():?;
//begin
{*
 00558404    xor        eax,eax
 00558406    ret
*}
//end;

//00558408
//function sub_00558408():?;
//begin
{*
 00558408    mov        al,1
 0055840A    ret
*}
//end;

//0055840C
//procedure sub_0055840C(?:?);
//begin
{*
 0055840C    push       ebp
 0055840D    mov        ebp,esp
 0055840F    push       ebx
 00558410    mov        ebx,edx
 00558412    mov        eax,ebx
 00558414    mov        edx,55842C; 'OWNER'
 00558419    call       @LStrAsg
 0055841E    pop        ebx
 0055841F    pop        ebp
 00558420    ret
*}
//end;

//00558434
//procedure sub_00558434(?:?);
//begin
{*
 00558434    push       ebp
 00558435    mov        ebp,esp
 00558437    push       ebx
 00558438    mov        ebx,edx
 0055843A    mov        eax,ebx
 0055843C    mov        edx,558454; 'PROCEDURE'
 00558441    call       @LStrAsg
 00558446    pop        ebx
 00558447    pop        ebp
 00558448    ret
*}
//end;

//00558460
//procedure sub_00558460(?:?);
//begin
{*
 00558460    push       ebp
 00558461    mov        ebp,esp
 00558463    push       ebx
 00558464    mov        ebx,edx
 00558466    mov        eax,ebx
 00558468    call       @LStrClr
 0055846D    pop        ebx
 0055846E    pop        ebp
 0055846F    ret
*}
//end;

//00558470
//procedure sub_00558470(?:?);
//begin
{*
 00558470    push       ebp
 00558471    mov        ebp,esp
 00558473    push       ebx
 00558474    mov        ebx,edx
 00558476    mov        eax,ebx
 00558478    call       @LStrClr
 0055847D    pop        ebx
 0055847E    pop        ebp
 0055847F    ret
*}
//end;

//00558480
//function sub_00558480():?;
//begin
{*
 00558480    mov        al,1
 00558482    ret
*}
//end;

//00558484
//function sub_00558484():?;
//begin
{*
 00558484    mov        al,1
 00558486    ret
*}
//end;

//00558488
//function sub_00558488():?;
//begin
{*
 00558488    mov        al,1
 0055848A    ret
*}
//end;

//0055848C
//function sub_0055848C():?;
//begin
{*
 0055848C    xor        eax,eax
 0055848E    ret
*}
//end;

//00558490
//function sub_00558490():?;
//begin
{*
 00558490    xor        eax,eax
 00558492    ret
*}
//end;

//00558494
//function sub_00558494():?;
//begin
{*
 00558494    xor        eax,eax
 00558496    ret
*}
//end;

//00558498
//function sub_00558498():?;
//begin
{*
 00558498    xor        eax,eax
 0055849A    ret
*}
//end;

//0055849C
//function sub_0055849C():?;
//begin
{*
 0055849C    xor        eax,eax
 0055849E    ret
*}
//end;

//005584A0
//function sub_005584A0():?;
//begin
{*
 005584A0    xor        eax,eax
 005584A2    ret
*}
//end;

//005584A4
//function sub_005584A4():?;
//begin
{*
 005584A4    xor        eax,eax
 005584A6    ret
*}
//end;

//005584A8
//function sub_005584A8():?;
//begin
{*
 005584A8    mov        al,1
 005584AA    ret
*}
//end;

//005584AC
//function sub_005584AC():?;
//begin
{*
 005584AC    mov        al,1
 005584AE    ret
*}
//end;

//005584B0
//function sub_005584B0():?;
//begin
{*
 005584B0    mov        al,1
 005584B2    ret
*}
//end;

//005584B4
//function sub_005584B4():?;
//begin
{*
 005584B4    mov        al,1
 005584B6    ret
*}
//end;

//005584B8
//function sub_005584B8():?;
//begin
{*
 005584B8    mov        al,1
 005584BA    ret
*}
//end;

//005584BC
//function sub_005584BC():?;
//begin
{*
 005584BC    mov        al,1
 005584BE    ret
*}
//end;

//005584C0
//function sub_005584C0():?;
//begin
{*
 005584C0    mov        al,1
 005584C2    ret
*}
//end;

//005584C4
//function sub_005584C4():?;
//begin
{*
 005584C4    mov        al,1
 005584C6    ret
*}
//end;

//005584C8
//function sub_005584C8():?;
//begin
{*
 005584C8    mov        al,1
 005584CA    ret
*}
//end;

//005584CC
//function sub_005584CC():?;
//begin
{*
 005584CC    mov        al,1
 005584CE    ret
*}
//end;

//005584D0
//function sub_005584D0():?;
//begin
{*
 005584D0    mov        al,1
 005584D2    ret
*}
//end;

//005584D4
//function sub_005584D4():?;
//begin
{*
 005584D4    mov        al,1
 005584D6    ret
*}
//end;

//005584D8
//function sub_005584D8():?;
//begin
{*
 005584D8    mov        al,1
 005584DA    ret
*}
//end;

//005584DC
//function sub_005584DC():?;
//begin
{*
 005584DC    mov        al,1
 005584DE    ret
*}
//end;

//005584E0
//function sub_005584E0():?;
//begin
{*
 005584E0    mov        al,1
 005584E2    ret
*}
//end;

//005584E4
//function sub_005584E4():?;
//begin
{*
 005584E4    xor        eax,eax
 005584E6    ret
*}
//end;

//005584E8
//function sub_005584E8():?;
//begin
{*
 005584E8    mov        eax,8000
 005584ED    ret
*}
//end;

//005584F0
//function sub_005584F0():?;
//begin
{*
 005584F0    mov        eax,80
 005584F5    ret
*}
//end;

//005584F8
//function sub_005584F8():?;
//begin
{*
 005584F8    xor        eax,eax
 005584FA    ret
*}
//end;

//005584FC
//function sub_005584FC():?;
//begin
{*
 005584FC    mov        eax,0F4240
 00558501    ret
*}
//end;

//00558504
//function sub_00558504():?;
//begin
{*
 00558504    mov        eax,0F4240
 00558509    ret
*}
//end;

//0055850C
//function sub_0055850C():?;
//begin
{*
 0055850C    mov        eax,0F4240
 00558511    ret
*}
//end;

//00558514
//function sub_00558514():?;
//begin
{*
 00558514    mov        eax,0F4240
 00558519    ret
*}
//end;

//0055851C
//function sub_0055851C():?;
//begin
{*
 0055851C    xor        eax,eax
 0055851E    ret
*}
//end;

//00558520
//function sub_00558520():?;
//begin
{*
 00558520    mov        eax,80
 00558525    ret
*}
//end;

//00558528
//function sub_00558528():?;
//begin
{*
 00558528    xor        eax,eax
 0055852A    ret
*}
//end;

//0055852C
//function sub_0055852C():?;
//begin
{*
 0055852C    mov        eax,80
 00558531    ret
*}
//end;

//00558534
//function sub_00558534():?;
//begin
{*
 00558534    mov        eax,80
 00558539    ret
*}
//end;

//0055853C
//function sub_0055853C():?;
//begin
{*
 0055853C    xor        eax,eax
 0055853E    ret
*}
//end;

//00558540
//function sub_00558540():?;
//begin
{*
 00558540    xor        eax,eax
 00558542    ret
*}
//end;

//00558544
//function sub_00558544():?;
//begin
{*
 00558544    xor        eax,eax
 00558546    ret
*}
//end;

//00558548
//function sub_00558548():?;
//begin
{*
 00558548    xor        eax,eax
 0055854A    ret
*}
//end;

//0055854C
//function sub_0055854C():?;
//begin
{*
 0055854C    xor        eax,eax
 0055854E    ret
*}
//end;

//00558550
//function sub_00558550():?;
//begin
{*
 00558550    mov        eax,80
 00558555    ret
*}
//end;

//00558558
//function sub_00558558():?;
//begin
{*
 00558558    xor        eax,eax
 0055855A    ret
*}
//end;

//0055855C
//function sub_0055855C():?;
//begin
{*
 0055855C    mov        eax,1E
 00558561    ret
*}
//end;

//00558564
//function sub_00558564():?;
//begin
{*
 00558564    mov        al,1
 00558566    ret
*}
//end;

//00558568
//function sub_00558568():?;
//begin
{*
 00558568    mov        al,1
 0055856A    ret
*}
//end;

//0055856C
//function sub_0055856C():?;
//begin
{*
 0055856C    mov        al,1
 0055856E    ret
*}
//end;

//00558570
//function sub_00558570():?;
//begin
{*
 00558570    mov        al,1
 00558572    ret
*}
//end;

//00558574
//function sub_00558574():?;
//begin
{*
 00558574    xor        eax,eax
 00558576    ret
*}
//end;

//00558578
//function sub_00558578():?;
//begin
{*
 00558578    mov        al,1
 0055857A    ret
*}
//end;

//0055857C
//function sub_0055857C():?;
//begin
{*
 0055857C    xor        eax,eax
 0055857E    ret
*}
//end;

//00558580
//procedure sub_00558580(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00558580    push       ebp
 00558581    mov        ebp,esp
 00558583    push       ecx
 00558584    mov        ecx,8
 00558589    push       0
 0055858B    push       0
 0055858D    dec        ecx
<0055858E    jne        00558589
 00558590    xchg       ecx,dword ptr [ebp-4]
 00558593    push       ebx
 00558594    push       esi
 00558595    mov        dword ptr [ebp-8],ecx
 00558598    mov        dword ptr [ebp-4],edx
 0055859B    mov        esi,eax
 0055859D    mov        ebx,dword ptr [ebp+8]
 005585A0    xor        eax,eax
 005585A2    push       ebp
 005585A3    push       55873D
 005585A8    push       dword ptr fs:[eax]
 005585AB    mov        dword ptr fs:[eax],esp
 005585AE    mov        ecx,ebx
 005585B0    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 005585B6    mov        edx,dword ptr [edx]
 005585B8    mov        eax,esi
 005585BA    call       004D8E7C
 005585BF    lea        eax,[ebp-10]
 005585C2    push       eax
 005585C3    lea        ecx,[ebp-2C]
 005585C6    mov        dl,27
 005585C8    mov        eax,dword ptr [ebp-4]
 005585CB    call       004D31AC
 005585D0    mov        eax,dword ptr [ebp-2C]
 005585D3    mov        dword ptr [ebp-28],eax
 005585D6    mov        byte ptr [ebp-24],0B
 005585DA    lea        ecx,[ebp-30]
 005585DD    mov        dl,27
 005585DF    mov        eax,dword ptr [ebp-8]
 005585E2    call       004D31AC
 005585E7    mov        eax,dword ptr [ebp-30]
 005585EA    mov        dword ptr [ebp-20],eax
 005585ED    mov        byte ptr [ebp-1C],0B
 005585F1    lea        ecx,[ebp-34]
 005585F4    mov        dl,27
 005585F6    mov        eax,dword ptr [ebp+0C]
 005585F9    call       004D31AC
 005585FE    mov        eax,dword ptr [ebp-34]
 00558601    mov        dword ptr [ebp-18],eax
 00558604    mov        byte ptr [ebp-14],0B
 00558608    lea        edx,[ebp-28]
 0055860B    mov        ecx,2
 00558610    mov        eax,558754; 'exec sp_jdbc_stored_procedures %s, %s, %s'
 00558615    call       Format
 0055861A    mov        eax,dword ptr [ebp-10]
 0055861D    push       eax
 0055861E    lea        edx,[ebp-38]
 00558621    mov        eax,esi
 00558623    call       0055C080
 00558628    mov        eax,dword ptr [ebp-38]
 0055862B    lea        ecx,[ebp-0C]
 0055862E    pop        edx
 0055862F    mov        esi,dword ptr [eax]
 00558631    call       dword ptr [esi+0C]
>00558634    jmp        005586E5
 00558639    mov        eax,dword ptr [ebx]
 0055863B    mov        edx,dword ptr [eax]
 0055863D    call       dword ptr [edx+1E4]
 00558643    mov        eax,dword ptr [ebx]
 00558645    xor        ecx,ecx
 00558647    mov        edx,558788; 'PROCEDURE_CAT'
 0055864C    mov        esi,dword ptr [eax]
 0055864E    call       dword ptr [esi+1A8]
 00558654    lea        ecx,[ebp-3C]
 00558657    mov        edx,5587A0; 'PROCEDURE_SCHEM'
 0055865C    mov        eax,dword ptr [ebp-0C]
 0055865F    mov        esi,dword ptr [eax]
 00558661    call       dword ptr [esi+74]
 00558664    mov        ecx,dword ptr [ebp-3C]
 00558667    mov        eax,dword ptr [ebx]
 00558669    mov        edx,5587A0; 'PROCEDURE_SCHEM'
 0055866E    mov        esi,dword ptr [eax]
 00558670    call       dword ptr [esi+1A8]
 00558676    lea        ecx,[ebp-40]
 00558679    mov        edx,5587B8; 'PROCEDURE_NAME'
 0055867E    mov        eax,dword ptr [ebp-0C]
 00558681    mov        esi,dword ptr [eax]
 00558683    call       dword ptr [esi+74]
 00558686    mov        ecx,dword ptr [ebp-40]
 00558689    mov        eax,dword ptr [ebx]
 0055868B    mov        edx,5587B8; 'PROCEDURE_NAME'
 00558690    mov        esi,dword ptr [eax]
 00558692    call       dword ptr [esi+1A8]
 00558698    lea        ecx,[ebp-44]
 0055869B    mov        edx,5587D0; 'REMARKS'
 005586A0    mov        eax,dword ptr [ebp-0C]
 005586A3    mov        esi,dword ptr [eax]
 005586A5    call       dword ptr [esi+74]
 005586A8    mov        ecx,dword ptr [ebp-44]
 005586AB    mov        eax,dword ptr [ebx]
 005586AD    mov        edx,5587D0; 'REMARKS'
 005586B2    mov        esi,dword ptr [eax]
 005586B4    call       dword ptr [esi+1A8]
 005586BA    mov        edx,5587E0; 'PROCEDURE_TYPE'
 005586BF    mov        eax,dword ptr [ebp-0C]
 005586C2    mov        ecx,dword ptr [eax]
 005586C4    call       dword ptr [ecx+84]
 005586CA    mov        ecx,eax
 005586CC    mov        eax,dword ptr [ebx]
 005586CE    mov        edx,5587E0; 'PROCEDURE_TYPE'
 005586D3    mov        esi,dword ptr [eax]
 005586D5    call       dword ptr [esi+18C]
 005586DB    mov        eax,dword ptr [ebx]
 005586DD    mov        edx,dword ptr [eax]
 005586DF    call       dword ptr [edx+1D0]
 005586E5    mov        eax,dword ptr [ebp-0C]
 005586E8    mov        edx,dword ptr [eax]
 005586EA    call       dword ptr [edx+0C]
 005586ED    test       al,al
<005586EF    jne        00558639
 005586F5    mov        eax,dword ptr [ebp-0C]
 005586F8    mov        edx,dword ptr [eax]
 005586FA    call       dword ptr [edx+10]
 005586FD    xor        eax,eax
 005586FF    pop        edx
 00558700    pop        ecx
 00558701    pop        ecx
 00558702    mov        dword ptr fs:[eax],edx
 00558705    push       558744
 0055870A    lea        eax,[ebp-44]
 0055870D    mov        edx,3
 00558712    call       @LStrArrayClr
 00558717    lea        eax,[ebp-38]
 0055871A    call       @IntfClear
 0055871F    lea        eax,[ebp-34]
 00558722    mov        edx,3
 00558727    call       @LStrArrayClr
 0055872C    lea        eax,[ebp-10]
 0055872F    call       @LStrClr
 00558734    lea        eax,[ebp-0C]
 00558737    call       @IntfClear
 0055873C    ret
<0055873D    jmp        @HandleFinally
<00558742    jmp        0055870A
 00558744    pop        esi
 00558745    pop        ebx
 00558746    mov        esp,ebp
 00558748    pop        ebp
 00558749    ret        8
*}
//end;

//005587F0
//procedure sub_005587F0(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005587F0    push       ebp
 005587F1    mov        ebp,esp
 005587F3    push       ecx
 005587F4    mov        ecx,0A
 005587F9    push       0
 005587FB    push       0
 005587FD    dec        ecx
<005587FE    jne        005587F9
 00558800    push       ecx
 00558801    xchg       ecx,dword ptr [ebp-4]
 00558804    push       ebx
 00558805    push       esi
 00558806    mov        dword ptr [ebp-8],ecx
 00558809    mov        dword ptr [ebp-4],edx
 0055880C    mov        esi,eax
 0055880E    mov        ebx,dword ptr [ebp+8]
 00558811    xor        eax,eax
 00558813    push       ebp
 00558814    push       558B41
 00558819    push       dword ptr fs:[eax]
 0055881C    mov        dword ptr fs:[eax],esp
 0055881F    mov        ecx,ebx
 00558821    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 00558827    mov        edx,dword ptr [edx]
 00558829    mov        eax,esi
 0055882B    call       004D8E7C
 00558830    lea        eax,[ebp-10]
 00558833    push       eax
 00558834    lea        ecx,[ebp-34]
 00558837    mov        dl,27
 00558839    mov        eax,dword ptr [ebp-4]
 0055883C    call       004D31AC
 00558841    mov        eax,dword ptr [ebp-34]
 00558844    mov        dword ptr [ebp-30],eax
 00558847    mov        byte ptr [ebp-2C],0B
 0055884B    lea        ecx,[ebp-38]
 0055884E    mov        dl,27
 00558850    mov        eax,dword ptr [ebp-8]
 00558853    call       004D31AC
 00558858    mov        eax,dword ptr [ebp-38]
 0055885B    mov        dword ptr [ebp-28],eax
 0055885E    mov        byte ptr [ebp-24],0B
 00558862    lea        ecx,[ebp-3C]
 00558865    mov        dl,27
 00558867    mov        eax,dword ptr [ebp+10]
 0055886A    call       004D31AC
 0055886F    mov        eax,dword ptr [ebp-3C]
 00558872    mov        dword ptr [ebp-20],eax
 00558875    mov        byte ptr [ebp-1C],0B
 00558879    lea        ecx,[ebp-40]
 0055887C    mov        dl,27
 0055887E    mov        eax,dword ptr [ebp+0C]
 00558881    call       004D31AC
 00558886    mov        eax,dword ptr [ebp-40]
 00558889    mov        dword ptr [ebp-18],eax
 0055888C    mov        byte ptr [ebp-14],0B
 00558890    lea        edx,[ebp-30]
 00558893    mov        ecx,3
 00558898    mov        eax,558B58; 'exec sp_jdbc_getprocedurecolumns %s, %s, %s, %s'
 0055889D    call       Format
 005588A2    mov        eax,dword ptr [ebp-10]
 005588A5    push       eax
 005588A6    lea        edx,[ebp-44]
 005588A9    mov        eax,esi
 005588AB    call       0055C080
 005588B0    mov        eax,dword ptr [ebp-44]
 005588B3    lea        ecx,[ebp-0C]
 005588B6    pop        edx
 005588B7    mov        esi,dword ptr [eax]
 005588B9    call       dword ptr [esi+0C]
>005588BC    jmp        00558AE9
 005588C1    mov        eax,dword ptr [ebx]
 005588C3    mov        edx,dword ptr [eax]
 005588C5    call       dword ptr [edx+1E4]
 005588CB    mov        eax,dword ptr [ebx]
 005588CD    xor        ecx,ecx
 005588CF    mov        edx,558B90; 'PROCEDURE_CAT'
 005588D4    mov        esi,dword ptr [eax]
 005588D6    call       dword ptr [esi+1A8]
 005588DC    lea        ecx,[ebp-48]
 005588DF    mov        edx,558BA8; 'PROCEDURE_SCHEM'
 005588E4    mov        eax,dword ptr [ebp-0C]
 005588E7    mov        esi,dword ptr [eax]
 005588E9    call       dword ptr [esi+74]
 005588EC    mov        ecx,dword ptr [ebp-48]
 005588EF    mov        eax,dword ptr [ebx]
 005588F1    mov        edx,558BA8; 'PROCEDURE_SCHEM'
 005588F6    mov        esi,dword ptr [eax]
 005588F8    call       dword ptr [esi+1A8]
 005588FE    lea        ecx,[ebp-4C]
 00558901    mov        edx,558BC0; 'PROCEDURE_NAME'
 00558906    mov        eax,dword ptr [ebp-0C]
 00558909    mov        esi,dword ptr [eax]
 0055890B    call       dword ptr [esi+74]
 0055890E    mov        ecx,dword ptr [ebp-4C]
 00558911    mov        eax,dword ptr [ebx]
 00558913    mov        edx,558BC0; 'PROCEDURE_NAME'
 00558918    mov        esi,dword ptr [eax]
 0055891A    call       dword ptr [esi+1A8]
 00558920    lea        ecx,[ebp-50]
 00558923    mov        edx,558BD8; 'COLUMN_NAME'
 00558928    mov        eax,dword ptr [ebp-0C]
 0055892B    mov        esi,dword ptr [eax]
 0055892D    call       dword ptr [esi+74]
 00558930    mov        ecx,dword ptr [ebp-50]
 00558933    mov        eax,dword ptr [ebx]
 00558935    mov        edx,558BD8; 'COLUMN_NAME'
 0055893A    mov        esi,dword ptr [eax]
 0055893C    call       dword ptr [esi+1A8]
 00558942    mov        edx,558BEC; 'COLUMN_TYPE'
 00558947    mov        eax,dword ptr [ebp-0C]
 0055894A    mov        ecx,dword ptr [eax]
 0055894C    call       dword ptr [ecx+84]
 00558952    dec        ax
>00558955    je         00558969
 00558957    dec        ax
>0055895A    je         0055897E
 0055895C    dec        ax
>0055895F    je         00558993
 00558961    sub        ax,2
>00558965    je         005589A8
>00558967    jmp        005589BD
 00558969    mov        eax,dword ptr [ebx]
 0055896B    mov        cx,1
 0055896F    mov        edx,558BEC; 'COLUMN_TYPE'
 00558974    mov        esi,dword ptr [eax]
 00558976    call       dword ptr [esi+18C]
>0055897C    jmp        005589CE
 0055897E    mov        eax,dword ptr [ebx]
 00558980    mov        cx,3
 00558984    mov        edx,558BEC; 'COLUMN_TYPE'
 00558989    mov        esi,dword ptr [eax]
 0055898B    call       dword ptr [esi+18C]
>00558991    jmp        005589CE
 00558993    mov        eax,dword ptr [ebx]
 00558995    mov        cx,2
 00558999    mov        edx,558BEC; 'COLUMN_TYPE'
 0055899E    mov        esi,dword ptr [eax]
 005589A0    call       dword ptr [esi+18C]
>005589A6    jmp        005589CE
 005589A8    mov        eax,dword ptr [ebx]
 005589AA    mov        cx,4
 005589AE    mov        edx,558BEC; 'COLUMN_TYPE'
 005589B3    mov        esi,dword ptr [eax]
 005589B5    call       dword ptr [esi+18C]
>005589BB    jmp        005589CE
 005589BD    mov        eax,dword ptr [ebx]
 005589BF    xor        ecx,ecx
 005589C1    mov        edx,558BEC; 'COLUMN_TYPE'
 005589C6    mov        esi,dword ptr [eax]
 005589C8    call       dword ptr [esi+18C]
 005589CE    mov        edx,558C00; 'DATA_TYPE'
 005589D3    mov        eax,dword ptr [ebp-0C]
 005589D6    mov        ecx,dword ptr [eax]
 005589D8    call       dword ptr [ecx+84]
 005589DE    call       005564B4
 005589E3    xor        ecx,ecx
 005589E5    mov        cl,al
 005589E7    mov        eax,dword ptr [ebx]
 005589E9    mov        edx,558C00; 'DATA_TYPE'
 005589EE    mov        esi,dword ptr [eax]
 005589F0    call       dword ptr [esi+18C]
 005589F6    lea        ecx,[ebp-54]
 005589F9    mov        edx,558C14; 'TYPE_NAME'
 005589FE    mov        eax,dword ptr [ebp-0C]
 00558A01    mov        esi,dword ptr [eax]
 00558A03    call       dword ptr [esi+74]
 00558A06    mov        ecx,dword ptr [ebp-54]
 00558A09    mov        eax,dword ptr [ebx]
 00558A0B    mov        edx,558C14; 'TYPE_NAME'
 00558A10    mov        esi,dword ptr [eax]
 00558A12    call       dword ptr [esi+1A8]
 00558A18    mov        edx,558C28; 'PRECISION'
 00558A1D    mov        eax,dword ptr [ebp-0C]
 00558A20    mov        ecx,dword ptr [eax]
 00558A22    call       dword ptr [ecx+88]
 00558A28    mov        ecx,eax
 00558A2A    mov        eax,dword ptr [ebx]
 00558A2C    mov        edx,558C28; 'PRECISION'
 00558A31    mov        esi,dword ptr [eax]
 00558A33    call       dword ptr [esi+190]
 00558A39    mov        edx,558C3C; 'LENGTH'
 00558A3E    mov        eax,dword ptr [ebp-0C]
 00558A41    mov        ecx,dword ptr [eax]
 00558A43    call       dword ptr [ecx+88]
 00558A49    mov        ecx,eax
 00558A4B    mov        eax,dword ptr [ebx]
 00558A4D    mov        edx,558C3C; 'LENGTH'
 00558A52    mov        esi,dword ptr [eax]
 00558A54    call       dword ptr [esi+190]
 00558A5A    mov        edx,558C4C; 'SCALE'
 00558A5F    mov        eax,dword ptr [ebp-0C]
 00558A62    mov        ecx,dword ptr [eax]
 00558A64    call       dword ptr [ecx+84]
 00558A6A    mov        ecx,eax
 00558A6C    mov        eax,dword ptr [ebx]
 00558A6E    mov        edx,558C4C; 'SCALE'
 00558A73    mov        esi,dword ptr [eax]
 00558A75    call       dword ptr [esi+18C]
 00558A7B    mov        edx,558C5C; 'RADIX'
 00558A80    mov        eax,dword ptr [ebp-0C]
 00558A83    mov        ecx,dword ptr [eax]
 00558A85    call       dword ptr [ecx+84]
 00558A8B    mov        ecx,eax
 00558A8D    mov        eax,dword ptr [ebx]
 00558A8F    mov        edx,558C5C; 'RADIX'
 00558A94    mov        esi,dword ptr [eax]
 00558A96    call       dword ptr [esi+18C]
 00558A9C    mov        edx,558C6C; 'NULLABLE'
 00558AA1    mov        eax,dword ptr [ebp-0C]
 00558AA4    mov        ecx,dword ptr [eax]
 00558AA6    call       dword ptr [ecx+84]
 00558AAC    mov        ecx,eax
 00558AAE    mov        eax,dword ptr [ebx]
 00558AB0    mov        edx,558C6C; 'NULLABLE'
 00558AB5    mov        esi,dword ptr [eax]
 00558AB7    call       dword ptr [esi+18C]
 00558ABD    lea        ecx,[ebp-58]
 00558AC0    mov        edx,558C80; 'REMARKS'
 00558AC5    mov        eax,dword ptr [ebp-0C]
 00558AC8    mov        esi,dword ptr [eax]
 00558ACA    call       dword ptr [esi+74]
 00558ACD    mov        ecx,dword ptr [ebp-58]
 00558AD0    mov        eax,dword ptr [ebx]
 00558AD2    mov        edx,558C80; 'REMARKS'
 00558AD7    mov        esi,dword ptr [eax]
 00558AD9    call       dword ptr [esi+1A8]
 00558ADF    mov        eax,dword ptr [ebx]
 00558AE1    mov        edx,dword ptr [eax]
 00558AE3    call       dword ptr [edx+1D0]
 00558AE9    mov        eax,dword ptr [ebp-0C]
 00558AEC    mov        edx,dword ptr [eax]
 00558AEE    call       dword ptr [edx+0C]
 00558AF1    test       al,al
<00558AF3    jne        005588C1
 00558AF9    mov        eax,dword ptr [ebp-0C]
 00558AFC    mov        edx,dword ptr [eax]
 00558AFE    call       dword ptr [edx+10]
 00558B01    xor        eax,eax
 00558B03    pop        edx
 00558B04    pop        ecx
 00558B05    pop        ecx
 00558B06    mov        dword ptr fs:[eax],edx
 00558B09    push       558B48
 00558B0E    lea        eax,[ebp-58]
 00558B11    mov        edx,5
 00558B16    call       @LStrArrayClr
 00558B1B    lea        eax,[ebp-44]
 00558B1E    call       @IntfClear
 00558B23    lea        eax,[ebp-40]
 00558B26    mov        edx,4
 00558B2B    call       @LStrArrayClr
 00558B30    lea        eax,[ebp-10]
 00558B33    call       @LStrClr
 00558B38    lea        eax,[ebp-0C]
 00558B3B    call       @IntfClear
 00558B40    ret
<00558B41    jmp        @HandleFinally
<00558B46    jmp        00558B0E
 00558B48    pop        esi
 00558B49    pop        ebx
 00558B4A    mov        esp,ebp
 00558B4C    pop        ebp
 00558B4D    ret        0C
*}
//end;

//00558C88
//procedure sub_00558C88(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00558C88    push       ebp
 00558C89    mov        ebp,esp
 00558C8B    push       ecx
 00558C8C    mov        ecx,0B
 00558C91    push       0
 00558C93    push       0
 00558C95    dec        ecx
<00558C96    jne        00558C91
 00558C98    push       ecx
 00558C99    xchg       ecx,dword ptr [ebp-4]
 00558C9C    push       ebx
 00558C9D    push       esi
 00558C9E    push       edi
 00558C9F    mov        dword ptr [ebp-0C],ecx
 00558CA2    mov        dword ptr [ebp-8],edx
 00558CA5    mov        dword ptr [ebp-4],eax
 00558CA8    mov        ebx,dword ptr [ebp+8]
 00558CAB    xor        eax,eax
 00558CAD    push       ebp
 00558CAE    push       558ED2
 00558CB3    push       dword ptr fs:[eax]
 00558CB6    mov        dword ptr fs:[eax],esp
 00558CB9    mov        ecx,ebx
 00558CBB    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 00558CC1    mov        edx,dword ptr [edx]
 00558CC3    mov        eax,dword ptr [ebp-4]
 00558CC6    call       004D8E7C
 00558CCB    lea        eax,[ebp-10]
 00558CCE    call       @LStrClr
 00558CD3    mov        eax,dword ptr [ebp+0C]
 00558CD6    call       @DynArrayLength
 00558CDB    mov        esi,eax
 00558CDD    sub        esi,1
>00558CE0    jno        00558CE7
 00558CE2    call       @IntOver
 00558CE7    test       esi,esi
>00558CE9    jl         00558D2E
 00558CEB    inc        esi
 00558CEC    xor        edi,edi
 00558CEE    cmp        dword ptr [ebp-10],0
>00558CF2    je         00558D01
 00558CF4    lea        eax,[ebp-10]
 00558CF7    mov        edx,558EEC; ','
 00558CFC    call       @LStrCat
 00558D01    mov        eax,dword ptr [ebp+0C]
 00558D04    test       eax,eax
>00558D06    je         00558D0D
 00558D08    cmp        edi,dword ptr [eax-4]
>00558D0B    jb         00558D12
 00558D0D    call       @BoundErr
 00558D12    mov        eax,dword ptr [eax+edi*4]
 00558D15    lea        ecx,[ebp-18]
 00558D18    mov        dl,27
 00558D1A    call       AnsiQuotedStr
 00558D1F    mov        edx,dword ptr [ebp-18]
 00558D22    lea        eax,[ebp-10]
 00558D25    call       @LStrCat
 00558D2A    inc        edi
 00558D2B    dec        esi
<00558D2C    jne        00558CEE
 00558D2E    lea        eax,[ebp-1C]
 00558D31    push       eax
 00558D32    lea        ecx,[ebp-40]
 00558D35    mov        dl,27
 00558D37    mov        eax,dword ptr [ebp+10]
 00558D3A    call       004D31AC
 00558D3F    mov        eax,dword ptr [ebp-40]
 00558D42    mov        dword ptr [ebp-3C],eax
 00558D45    mov        byte ptr [ebp-38],0B
 00558D49    lea        ecx,[ebp-44]
 00558D4C    mov        dl,27
 00558D4E    mov        eax,dword ptr [ebp-0C]
 00558D51    call       004D31AC
 00558D56    mov        eax,dword ptr [ebp-44]
 00558D59    mov        dword ptr [ebp-34],eax
 00558D5C    mov        byte ptr [ebp-30],0B
 00558D60    lea        ecx,[ebp-48]
 00558D63    mov        dl,27
 00558D65    mov        eax,dword ptr [ebp-8]
 00558D68    call       004D31AC
 00558D6D    mov        eax,dword ptr [ebp-48]
 00558D70    mov        dword ptr [ebp-2C],eax
 00558D73    mov        byte ptr [ebp-28],0B
 00558D77    lea        ecx,[ebp-4C]
 00558D7A    mov        dl,22
 00558D7C    mov        eax,dword ptr [ebp-10]
 00558D7F    call       004D31AC
 00558D84    mov        eax,dword ptr [ebp-4C]
 00558D87    mov        dword ptr [ebp-24],eax
 00558D8A    mov        byte ptr [ebp-20],0B
 00558D8E    lea        edx,[ebp-3C]
 00558D91    mov        ecx,3
 00558D96    mov        eax,558EF8; 'exec sp_jdbc_tables %s, %s, %s, %s'
 00558D9B    call       Format
 00558DA0    mov        eax,dword ptr [ebp-1C]
 00558DA3    push       eax
 00558DA4    lea        edx,[ebp-50]
 00558DA7    mov        eax,dword ptr [ebp-4]
 00558DAA    call       0055C080
 00558DAF    mov        eax,dword ptr [ebp-50]
 00558DB2    lea        ecx,[ebp-14]
 00558DB5    pop        edx
 00558DB6    mov        esi,dword ptr [eax]
 00558DB8    call       dword ptr [esi+0C]
>00558DBB    jmp        00558E6D
 00558DC0    mov        eax,dword ptr [ebx]
 00558DC2    mov        edx,dword ptr [eax]
 00558DC4    call       dword ptr [edx+1E4]
 00558DCA    mov        eax,dword ptr [ebx]
 00558DCC    xor        ecx,ecx
 00558DCE    mov        edx,558F24; 'TABLE_CAT'
 00558DD3    mov        esi,dword ptr [eax]
 00558DD5    call       dword ptr [esi+1A8]
 00558DDB    lea        ecx,[ebp-54]
 00558DDE    mov        edx,558F38; 'TABLE_SCHEM'
 00558DE3    mov        eax,dword ptr [ebp-14]
 00558DE6    mov        esi,dword ptr [eax]
 00558DE8    call       dword ptr [esi+74]
 00558DEB    mov        ecx,dword ptr [ebp-54]
 00558DEE    mov        eax,dword ptr [ebx]
 00558DF0    mov        edx,558F38; 'TABLE_SCHEM'
 00558DF5    mov        esi,dword ptr [eax]
 00558DF7    call       dword ptr [esi+1A8]
 00558DFD    lea        ecx,[ebp-58]
 00558E00    mov        edx,558F4C; 'TABLE_NAME'
 00558E05    mov        eax,dword ptr [ebp-14]
 00558E08    mov        esi,dword ptr [eax]
 00558E0A    call       dword ptr [esi+74]
 00558E0D    mov        ecx,dword ptr [ebp-58]
 00558E10    mov        eax,dword ptr [ebx]
 00558E12    mov        edx,558F4C; 'TABLE_NAME'
 00558E17    mov        esi,dword ptr [eax]
 00558E19    call       dword ptr [esi+1A8]
 00558E1F    lea        ecx,[ebp-5C]
 00558E22    mov        edx,558F60; 'TABLE_TYPE'
 00558E27    mov        eax,dword ptr [ebp-14]
 00558E2A    mov        esi,dword ptr [eax]
 00558E2C    call       dword ptr [esi+74]
 00558E2F    mov        ecx,dword ptr [ebp-5C]
 00558E32    mov        eax,dword ptr [ebx]
 00558E34    mov        edx,558F60; 'TABLE_TYPE'
 00558E39    mov        esi,dword ptr [eax]
 00558E3B    call       dword ptr [esi+1A8]
 00558E41    lea        ecx,[ebp-60]
 00558E44    mov        edx,558F74; 'REMARKS'
 00558E49    mov        eax,dword ptr [ebp-14]
 00558E4C    mov        esi,dword ptr [eax]
 00558E4E    call       dword ptr [esi+74]
 00558E51    mov        ecx,dword ptr [ebp-60]
 00558E54    mov        eax,dword ptr [ebx]
 00558E56    mov        edx,558F74; 'REMARKS'
 00558E5B    mov        esi,dword ptr [eax]
 00558E5D    call       dword ptr [esi+1A8]
 00558E63    mov        eax,dword ptr [ebx]
 00558E65    mov        edx,dword ptr [eax]
 00558E67    call       dword ptr [edx+1D0]
 00558E6D    mov        eax,dword ptr [ebp-14]
 00558E70    mov        edx,dword ptr [eax]
 00558E72    call       dword ptr [edx+0C]
 00558E75    test       al,al
<00558E77    jne        00558DC0
 00558E7D    mov        eax,dword ptr [ebp-14]
 00558E80    mov        edx,dword ptr [eax]
 00558E82    call       dword ptr [edx+10]
 00558E85    xor        eax,eax
 00558E87    pop        edx
 00558E88    pop        ecx
 00558E89    pop        ecx
 00558E8A    mov        dword ptr fs:[eax],edx
 00558E8D    push       558ED9
 00558E92    lea        eax,[ebp-60]
 00558E95    mov        edx,4
 00558E9A    call       @LStrArrayClr
 00558E9F    lea        eax,[ebp-50]
 00558EA2    call       @IntfClear
 00558EA7    lea        eax,[ebp-4C]
 00558EAA    mov        edx,4
 00558EAF    call       @LStrArrayClr
 00558EB4    lea        eax,[ebp-1C]
 00558EB7    mov        edx,2
 00558EBC    call       @LStrArrayClr
 00558EC1    lea        eax,[ebp-14]
 00558EC4    call       @IntfClear
 00558EC9    lea        eax,[ebp-10]
 00558ECC    call       @LStrClr
 00558ED1    ret
<00558ED2    jmp        @HandleFinally
<00558ED7    jmp        00558E92
 00558ED9    pop        edi
 00558EDA    pop        esi
 00558EDB    pop        ebx
 00558EDC    mov        esp,ebp
 00558EDE    pop        ebp
 00558EDF    ret        0C
*}
//end;

//00558F7C
//procedure sub_00558F7C(?:?);
//begin
{*
 00558F7C    push       ebp
 00558F7D    mov        ebp,esp
 00558F7F    push       0
 00558F81    push       0
 00558F83    push       0
 00558F85    push       ebx
 00558F86    push       esi
 00558F87    mov        ebx,edx
 00558F89    mov        esi,eax
 00558F8B    xor        eax,eax
 00558F8D    push       ebp
 00558F8E    push       559036
 00558F93    push       dword ptr fs:[eax]
 00558F96    mov        dword ptr fs:[eax],esp
 00558F99    mov        ecx,ebx
 00558F9B    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 00558FA1    mov        edx,dword ptr [edx]
 00558FA3    mov        eax,esi
 00558FA5    call       004D8E7C
 00558FAA    lea        edx,[ebp-8]
 00558FAD    mov        eax,esi
 00558FAF    call       0055C080
 00558FB4    mov        eax,dword ptr [ebp-8]
 00558FB7    lea        ecx,[ebp-4]
 00558FBA    mov        edx,55904C; 'exec sp_jdbc_getschemas'
 00558FBF    mov        esi,dword ptr [eax]
 00558FC1    call       dword ptr [esi+0C]
>00558FC4    jmp        00558FFC
 00558FC6    mov        eax,dword ptr [ebx]
 00558FC8    mov        edx,dword ptr [eax]
 00558FCA    call       dword ptr [edx+1E4]
 00558FD0    lea        ecx,[ebp-0C]
 00558FD3    mov        edx,55906C; 'TABLE_SCHEM'
 00558FD8    mov        eax,dword ptr [ebp-4]
 00558FDB    mov        esi,dword ptr [eax]
 00558FDD    call       dword ptr [esi+74]
 00558FE0    mov        ecx,dword ptr [ebp-0C]
 00558FE3    mov        eax,dword ptr [ebx]
 00558FE5    mov        edx,55906C; 'TABLE_SCHEM'
 00558FEA    mov        esi,dword ptr [eax]
 00558FEC    call       dword ptr [esi+1A8]
 00558FF2    mov        eax,dword ptr [ebx]
 00558FF4    mov        edx,dword ptr [eax]
 00558FF6    call       dword ptr [edx+1D0]
 00558FFC    mov        eax,dword ptr [ebp-4]
 00558FFF    mov        edx,dword ptr [eax]
 00559001    call       dword ptr [edx+0C]
 00559004    test       al,al
<00559006    jne        00558FC6
 00559008    mov        eax,dword ptr [ebp-4]
 0055900B    mov        edx,dword ptr [eax]
 0055900D    call       dword ptr [edx+10]
 00559010    xor        eax,eax
 00559012    pop        edx
 00559013    pop        ecx
 00559014    pop        ecx
 00559015    mov        dword ptr fs:[eax],edx
 00559018    push       55903D
 0055901D    lea        eax,[ebp-0C]
 00559020    call       @LStrClr
 00559025    lea        eax,[ebp-8]
 00559028    call       @IntfClear
 0055902D    lea        eax,[ebp-4]
 00559030    call       @IntfClear
 00559035    ret
<00559036    jmp        @HandleFinally
<0055903B    jmp        0055901D
 0055903D    pop        esi
 0055903E    pop        ebx
 0055903F    mov        esp,ebp
 00559041    pop        ebp
 00559042    ret
*}
//end;

//005590D4
//procedure sub_005590D4(?:?);
//begin
{*
 005590D4    push       ebp
 005590D5    mov        ebp,esp
 005590D7    push       ecx
 005590D8    push       ebx
 005590D9    push       esi
 005590DA    push       edi
 005590DB    mov        esi,edx
 005590DD    mov        ebx,eax
 005590DF    mov        ecx,esi
 005590E1    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 005590E7    mov        edx,dword ptr [edx]
 005590E9    mov        eax,ebx
 005590EB    call       004D8E7C
 005590F0    mov        dword ptr [ebp-4],5
 005590F7    mov        ebx,6168E4; gvar_006168E4:array[5] of String
 005590FC    mov        eax,dword ptr [esi]
 005590FE    mov        edx,dword ptr [eax]
 00559100    call       dword ptr [edx+1E4]
 00559106    mov        eax,dword ptr [esi]
 00559108    mov        ecx,dword ptr [ebx]
 0055910A    mov        edx,1
 0055910F    mov        edi,dword ptr [eax]
 00559111    call       dword ptr [edi+158]
 00559117    mov        eax,dword ptr [esi]
 00559119    mov        edx,dword ptr [eax]
 0055911B    call       dword ptr [edx+1D0]
 00559121    add        ebx,4
 00559124    dec        dword ptr [ebp-4]
<00559127    jne        005590FC
 00559129    pop        edi
 0055912A    pop        esi
 0055912B    pop        ebx
 0055912C    pop        ecx
 0055912D    pop        ebp
 0055912E    ret
*}
//end;

//00559130
//procedure sub_00559130(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00559130    push       ebp
 00559131    mov        ebp,esp
 00559133    push       ecx
 00559134    mov        ecx,13
 00559139    push       0
 0055913B    push       0
 0055913D    dec        ecx
<0055913E    jne        00559139
 00559140    xchg       ecx,dword ptr [ebp-4]
 00559143    push       ebx
 00559144    push       esi
 00559145    push       edi
 00559146    mov        dword ptr [ebp-8],ecx
 00559149    mov        dword ptr [ebp-4],edx
 0055914C    mov        esi,eax
 0055914E    mov        ebx,dword ptr [ebp+8]
 00559151    xor        eax,eax
 00559153    push       ebp
 00559154    push       5596DA
 00559159    push       dword ptr fs:[eax]
 0055915C    mov        dword ptr fs:[eax],esp
 0055915F    mov        ecx,ebx
 00559161    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 00559167    mov        edx,dword ptr [edx]
 00559169    mov        eax,esi
 0055916B    call       004D8E7C
 00559170    lea        eax,[ebp-14]
 00559173    push       eax
 00559174    lea        ecx,[ebp-38]
 00559177    mov        dl,27
 00559179    mov        eax,dword ptr [ebp+10]
 0055917C    call       004D31AC
 00559181    mov        eax,dword ptr [ebp-38]
 00559184    mov        dword ptr [ebp-34],eax
 00559187    mov        byte ptr [ebp-30],0B
 0055918B    lea        ecx,[ebp-3C]
 0055918E    mov        dl,27
 00559190    mov        eax,dword ptr [ebp-8]
 00559193    call       004D31AC
 00559198    mov        eax,dword ptr [ebp-3C]
 0055919B    mov        dword ptr [ebp-2C],eax
 0055919E    mov        byte ptr [ebp-28],0B
 005591A2    lea        ecx,[ebp-40]
 005591A5    mov        dl,27
 005591A7    mov        eax,dword ptr [ebp-4]
 005591AA    call       004D31AC
 005591AF    mov        eax,dword ptr [ebp-40]
 005591B2    mov        dword ptr [ebp-24],eax
 005591B5    mov        byte ptr [ebp-20],0B
 005591B9    lea        ecx,[ebp-44]
 005591BC    mov        dl,27
 005591BE    mov        eax,dword ptr [ebp+0C]
 005591C1    call       004D31AC
 005591C6    mov        eax,dword ptr [ebp-44]
 005591C9    mov        dword ptr [ebp-1C],eax
 005591CC    mov        byte ptr [ebp-18],0B
 005591D0    lea        edx,[ebp-34]
 005591D3    mov        ecx,3
 005591D8    mov        eax,5596F4; 'exec sp_jdbc_columns %s, %s, %s, %s'
 005591DD    call       Format
 005591E2    mov        eax,dword ptr [ebp-14]
 005591E5    push       eax
 005591E6    lea        edx,[ebp-48]
 005591E9    mov        eax,esi
 005591EB    call       0055C080
 005591F0    mov        eax,dword ptr [ebp-48]
 005591F3    lea        ecx,[ebp-0C]
 005591F6    pop        edx
 005591F7    mov        edi,dword ptr [eax]
 005591F9    call       dword ptr [edi+0C]
>005591FC    jmp        005594CD
 00559201    mov        eax,dword ptr [ebx]
 00559203    mov        edx,dword ptr [eax]
 00559205    call       dword ptr [edx+1E4]
 0055920B    mov        eax,dword ptr [ebx]
 0055920D    xor        ecx,ecx
 0055920F    mov        edx,559720; 'TABLE_CAT'
 00559214    mov        edi,dword ptr [eax]
 00559216    call       dword ptr [edi+1A8]
 0055921C    lea        ecx,[ebp-4C]
 0055921F    mov        edx,559734; 'TABLE_SCHEM'
 00559224    mov        eax,dword ptr [ebp-0C]
 00559227    mov        edi,dword ptr [eax]
 00559229    call       dword ptr [edi+74]
 0055922C    mov        ecx,dword ptr [ebp-4C]
 0055922F    mov        eax,dword ptr [ebx]
 00559231    mov        edx,559734; 'TABLE_SCHEM'
 00559236    mov        edi,dword ptr [eax]
 00559238    call       dword ptr [edi+1A8]
 0055923E    lea        ecx,[ebp-50]
 00559241    mov        edx,559748; 'TABLE_NAME'
 00559246    mov        eax,dword ptr [ebp-0C]
 00559249    mov        edi,dword ptr [eax]
 0055924B    call       dword ptr [edi+74]
 0055924E    mov        ecx,dword ptr [ebp-50]
 00559251    mov        eax,dword ptr [ebx]
 00559253    mov        edx,559748; 'TABLE_NAME'
 00559258    mov        edi,dword ptr [eax]
 0055925A    call       dword ptr [edi+1A8]
 00559260    lea        ecx,[ebp-54]
 00559263    mov        edx,55975C; 'COLUMN_NAME'
 00559268    mov        eax,dword ptr [ebp-0C]
 0055926B    mov        edi,dword ptr [eax]
 0055926D    call       dword ptr [edi+74]
 00559270    mov        ecx,dword ptr [ebp-54]
 00559273    mov        eax,dword ptr [ebx]
 00559275    mov        edx,55975C; 'COLUMN_NAME'
 0055927A    mov        edi,dword ptr [eax]
 0055927C    call       dword ptr [edi+1A8]
 00559282    lea        ecx,[ebp-58]
 00559285    mov        edx,559770; 'TYPE_NAME'
 0055928A    mov        eax,dword ptr [ebp-0C]
 0055928D    mov        edi,dword ptr [eax]
 0055928F    call       dword ptr [edi+74]
 00559292    mov        ecx,dword ptr [ebp-58]
 00559295    mov        eax,dword ptr [ebx]
 00559297    mov        edx,559770; 'TYPE_NAME'
 0055929C    mov        edi,dword ptr [eax]
 0055929E    call       dword ptr [edi+1A8]
 005592A4    mov        edx,559784; 'COLUMN_SIZE'
 005592A9    mov        eax,dword ptr [ebp-0C]
 005592AC    mov        ecx,dword ptr [eax]
 005592AE    call       dword ptr [ecx+88]
 005592B4    mov        ecx,eax
 005592B6    mov        eax,dword ptr [ebx]
 005592B8    mov        edx,559784; 'COLUMN_SIZE'
 005592BD    mov        edi,dword ptr [eax]
 005592BF    call       dword ptr [edi+190]
 005592C5    mov        edx,559798; 'BUFFER_LENGTH'
 005592CA    mov        eax,dword ptr [ebp-0C]
 005592CD    mov        ecx,dword ptr [eax]
 005592CF    call       dword ptr [ecx+88]
 005592D5    mov        ecx,eax
 005592D7    mov        eax,dword ptr [ebx]
 005592D9    mov        edx,559798; 'BUFFER_LENGTH'
 005592DE    mov        edi,dword ptr [eax]
 005592E0    call       dword ptr [edi+190]
 005592E6    mov        edx,5597B0; 'DECIMAL_DIGITS'
 005592EB    mov        eax,dword ptr [ebp-0C]
 005592EE    mov        ecx,dword ptr [eax]
 005592F0    call       dword ptr [ecx+88]
 005592F6    mov        ecx,eax
 005592F8    mov        eax,dword ptr [ebx]
 005592FA    mov        edx,5597B0; 'DECIMAL_DIGITS'
 005592FF    mov        edi,dword ptr [eax]
 00559301    call       dword ptr [edi+190]
 00559307    mov        edx,5597C8; 'NUM_PREC_RADIX'
 0055930C    mov        eax,dword ptr [ebp-0C]
 0055930F    mov        ecx,dword ptr [eax]
 00559311    call       dword ptr [ecx+84]
 00559317    movsx      ecx,ax
 0055931A    mov        eax,dword ptr [ebx]
 0055931C    mov        edx,5597C8; 'NUM_PREC_RADIX'
 00559321    mov        edi,dword ptr [eax]
 00559323    call       dword ptr [edi+190]
 00559329    lea        ecx,[ebp-5C]
 0055932C    mov        edx,5597E0; 'REMARKS'
 00559331    mov        eax,dword ptr [ebp-0C]
 00559334    mov        edi,dword ptr [eax]
 00559336    call       dword ptr [edi+74]
 00559339    mov        ecx,dword ptr [ebp-5C]
 0055933C    mov        eax,dword ptr [ebx]
 0055933E    mov        edx,5597E0; 'REMARKS'
 00559343    mov        edi,dword ptr [eax]
 00559345    call       dword ptr [edi+1A8]
 0055934B    lea        ecx,[ebp-60]
 0055934E    mov        edx,5597F0; 'COLUMN_DEF'
 00559353    mov        eax,dword ptr [ebp-0C]
 00559356    mov        edi,dword ptr [eax]
 00559358    call       dword ptr [edi+74]
 0055935B    mov        ecx,dword ptr [ebp-60]
 0055935E    mov        eax,dword ptr [ebx]
 00559360    mov        edx,5597F0; 'COLUMN_DEF'
 00559365    mov        edi,dword ptr [eax]
 00559367    call       dword ptr [edi+1A8]
 0055936D    mov        edx,559804; 'SQL_DATA_TYPE'
 00559372    mov        eax,dword ptr [ebp-0C]
 00559375    mov        ecx,dword ptr [eax]
 00559377    call       dword ptr [ecx+84]
 0055937D    mov        ecx,eax
 0055937F    mov        eax,dword ptr [ebx]
 00559381    mov        edx,559804; 'SQL_DATA_TYPE'
 00559386    mov        edi,dword ptr [eax]
 00559388    call       dword ptr [edi+18C]
 0055938E    mov        edx,55981C; 'SQL_DATETIME_SUB'
 00559393    mov        eax,dword ptr [ebp-0C]
 00559396    mov        ecx,dword ptr [eax]
 00559398    call       dword ptr [ecx+84]
 0055939E    mov        ecx,eax
 005593A0    mov        eax,dword ptr [ebx]
 005593A2    mov        edx,55981C; 'SQL_DATETIME_SUB'
 005593A7    mov        edi,dword ptr [eax]
 005593A9    call       dword ptr [edi+18C]
 005593AF    mov        edx,559838; 'CHAR_OCTET_LENGTH'
 005593B4    mov        eax,dword ptr [ebp-0C]
 005593B7    mov        ecx,dword ptr [eax]
 005593B9    call       dword ptr [ecx+88]
 005593BF    mov        ecx,eax
 005593C1    mov        eax,dword ptr [ebx]
 005593C3    mov        edx,559838; 'CHAR_OCTET_LENGTH'
 005593C8    mov        edi,dword ptr [eax]
 005593CA    call       dword ptr [edi+190]
 005593D0    mov        edx,559854; 'ORDINAL_POSITION'
 005593D5    mov        eax,dword ptr [ebp-0C]
 005593D8    mov        ecx,dword ptr [eax]
 005593DA    call       dword ptr [ecx+88]
 005593E0    mov        ecx,eax
 005593E2    mov        eax,dword ptr [ebx]
 005593E4    mov        edx,559854; 'ORDINAL_POSITION'
 005593E9    mov        edi,dword ptr [eax]
 005593EB    call       dword ptr [edi+190]
 005593F1    lea        ecx,[ebp-68]
 005593F4    mov        edx,5597F0; 'COLUMN_DEF'
 005593F9    mov        eax,dword ptr [ebp-0C]
 005593FC    mov        edi,dword ptr [eax]
 005593FE    call       dword ptr [edi+74]
 00559401    mov        eax,dword ptr [ebp-68]
 00559404    lea        edx,[ebp-64]
 00559407    call       Trim
 0055940C    mov        eax,dword ptr [ebp-64]
 0055940F    mov        edx,559870; 'autoincrement'
 00559414    call       CompareText
 00559419    test       eax,eax
 0055941B    sete       cl
 0055941E    mov        eax,dword ptr [ebx]
 00559420    mov        edx,559888; 'AUTO_INCREMENT'
 00559425    mov        edi,dword ptr [eax]
 00559427    call       dword ptr [edi+184]
 0055942D    mov        eax,dword ptr [ebx]
 0055942F    mov        edx,5598A0; 'CASE_SENSITIVE'
 00559434    mov        ecx,dword ptr [eax]
 00559436    call       dword ptr [ecx+180]
 0055943C    mov        eax,dword ptr [ebx]
 0055943E    xor        ecx,ecx
 00559440    mov        edx,5598B8; 'SEARCHABLE'
 00559445    mov        edi,dword ptr [eax]
 00559447    call       dword ptr [edi+184]
 0055944D    lea        ecx,[ebp-6C]
 00559450    mov        edx,5598CC; 'IS_NULLABLE'
 00559455    mov        eax,dword ptr [ebp-0C]
 00559458    mov        edi,dword ptr [eax]
 0055945A    call       dword ptr [edi+74]
 0055945D    mov        ecx,dword ptr [ebp-6C]
 00559460    mov        eax,dword ptr [ebx]
 00559462    mov        edx,5598CC; 'IS_NULLABLE'
 00559467    mov        edi,dword ptr [eax]
 00559469    call       dword ptr [edi+1A8]
 0055946F    mov        edx,5598E0; 'NULLABLE'
 00559474    mov        eax,dword ptr [ebp-0C]
 00559477    mov        ecx,dword ptr [eax]
 00559479    call       dword ptr [ecx+84]
 0055947F    mov        ecx,eax
 00559481    mov        eax,dword ptr [ebx]
 00559483    mov        edx,5598E0; 'NULLABLE'
 00559488    mov        edi,dword ptr [eax]
 0055948A    call       dword ptr [edi+18C]
 00559490    mov        eax,dword ptr [ebx]
 00559492    mov        cl,1
 00559494    mov        edx,5598F4; 'WRITABLE'
 00559499    mov        edi,dword ptr [eax]
 0055949B    call       dword ptr [edi+184]
 005594A1    mov        eax,dword ptr [ebx]
 005594A3    mov        cl,1
 005594A5    mov        edx,559908; 'DEFINITELYWRITABLE'
 005594AA    mov        edi,dword ptr [eax]
 005594AC    call       dword ptr [edi+184]
 005594B2    mov        eax,dword ptr [ebx]
 005594B4    xor        ecx,ecx
 005594B6    mov        edx,559924; 'READONLY'
 005594BB    mov        edi,dword ptr [eax]
 005594BD    call       dword ptr [edi+184]
 005594C3    mov        eax,dword ptr [ebx]
 005594C5    mov        edx,dword ptr [eax]
 005594C7    call       dword ptr [edx+1D0]
 005594CD    mov        eax,dword ptr [ebp-0C]
 005594D0    mov        edx,dword ptr [eax]
 005594D2    call       dword ptr [edx+0C]
 005594D5    test       al,al
<005594D7    jne        00559201
 005594DD    mov        eax,dword ptr [ebp-0C]
 005594E0    mov        edx,dword ptr [eax]
 005594E2    call       dword ptr [edx+10]
 005594E5    mov        eax,dword ptr [ebx]
 005594E7    mov        edx,dword ptr [eax]
 005594E9    call       dword ptr [edx+0EC]
 005594EF    lea        eax,[ebp-70]
 005594F2    push       eax
 005594F3    lea        eax,[ebp-8C]
 005594F9    push       eax
 005594FA    mov        cl,27
 005594FC    mov        edx,559938; ''%''
 00559501    mov        eax,dword ptr [ebp+10]
 00559504    call       004D3178
 00559509    mov        eax,dword ptr [ebp-8C]
 0055950F    mov        dword ptr [ebp-88],eax
 00559515    mov        byte ptr [ebp-84],0B
 0055951C    lea        eax,[ebp-90]
 00559522    push       eax
 00559523    mov        cl,27
 00559525    mov        edx,559938; ''%''
 0055952A    mov        eax,dword ptr [ebp-8]
 0055952D    call       004D3178
 00559532    mov        eax,dword ptr [ebp-90]
 00559538    mov        dword ptr [ebp-80],eax
 0055953B    mov        byte ptr [ebp-7C],0B
 0055953F    lea        eax,[ebp-94]
 00559545    push       eax
 00559546    mov        cl,27
 00559548    mov        edx,559938; ''%''
 0055954D    mov        eax,dword ptr [ebp+0C]
 00559550    call       004D3178
 00559555    mov        eax,dword ptr [ebp-94]
 0055955B    mov        dword ptr [ebp-78],eax
 0055955E    mov        byte ptr [ebp-74],0B
 00559562    lea        edx,[ebp-88]
 00559568    mov        ecx,2
 0055956D    mov        eax,559944; 'select c.column_id,c.nulls from SYS.SYSCOLUMN as c join SYS.SYSTABLE as t on c.table_id=t.table_id where t.table_name like %s escape '\\' and USER_NAME(t.creator) like %s escape '\\' and c.column_name like %s escape '\\' and c.column_type='C' order by USER_NAME(t.creator) asc,t.table_name asc,c.column_id asc'
 00559572    call       Format
 00559577    mov        eax,dword ptr [ebp-70]
 0055957A    push       eax
 0055957B    lea        edx,[ebp-98]
 00559581    mov        eax,esi
 00559583    call       0055C080
 00559588    mov        eax,dword ptr [ebp-98]
 0055958E    lea        ecx,[ebp-10]
 00559591    pop        edx
 00559592    mov        esi,dword ptr [eax]
 00559594    call       dword ptr [esi+0C]
>00559597    jmp        00559651
>0055959C    jmp        005595A5
 0055959E    mov        eax,dword ptr [ebx]
 005595A0    mov        edx,dword ptr [eax]
 005595A2    call       dword ptr [edx+0C]
 005595A5    mov        eax,dword ptr [ebx]
 005595A7    mov        edx,559854; 'ORDINAL_POSITION'
 005595AC    mov        ecx,dword ptr [eax]
 005595AE    call       dword ptr [ecx+88]
 005595B4    mov        esi,eax
 005595B6    mov        edx,559A80; 'column_id'
 005595BB    mov        eax,dword ptr [ebp-10]
 005595BE    mov        ecx,dword ptr [eax]
 005595C0    call       dword ptr [ecx+88]
 005595C6    cmp        esi,eax
<005595C8    jne        0055959E
 005595CA    mov        eax,dword ptr [ebx]
 005595CC    xor        ecx,ecx
 005595CE    mov        edx,5598F4; 'WRITABLE'
 005595D3    mov        esi,dword ptr [eax]
 005595D5    call       dword ptr [esi+184]
 005595DB    mov        eax,dword ptr [ebx]
 005595DD    xor        ecx,ecx
 005595DF    mov        edx,559908; 'DEFINITELYWRITABLE'
 005595E4    mov        esi,dword ptr [eax]
 005595E6    call       dword ptr [esi+184]
 005595EC    mov        eax,dword ptr [ebx]
 005595EE    mov        cl,1
 005595F0    mov        edx,559924; 'READONLY'
 005595F5    mov        esi,dword ptr [eax]
 005595F7    call       dword ptr [esi+184]
 005595FD    lea        ecx,[ebp-9C]
 00559603    mov        edx,559A94; 'nulls'
 00559608    mov        eax,dword ptr [ebp-10]
 0055960B    mov        esi,dword ptr [eax]
 0055960D    call       dword ptr [esi+74]
 00559610    mov        eax,dword ptr [ebp-9C]
 00559616    mov        edx,559AA4; 'N'
 0055961B    call       @LStrCmp
>00559620    jne        00559647
 00559622    mov        eax,dword ptr [ebx]
 00559624    xor        ecx,ecx
 00559626    mov        edx,5598E0; 'NULLABLE'
 0055962B    mov        esi,dword ptr [eax]
 0055962D    call       dword ptr [esi+18C]
 00559633    mov        eax,dword ptr [ebx]
 00559635    mov        ecx,559AB0; 'NO'
 0055963A    mov        edx,5598CC; 'IS_NULLABLE'
 0055963F    mov        esi,dword ptr [eax]
 00559641    call       dword ptr [esi+1A8]
 00559647    mov        eax,dword ptr [ebx]
 00559649    mov        edx,dword ptr [eax]
 0055964B    call       dword ptr [edx+1D4]
 00559651    mov        eax,dword ptr [ebp-10]
 00559654    mov        edx,dword ptr [eax]
 00559656    call       dword ptr [edx+0C]
 00559659    test       al,al
<0055965B    jne        005595A5
 00559661    mov        eax,dword ptr [ebp-10]
 00559664    mov        edx,dword ptr [eax]
 00559666    call       dword ptr [edx+10]
 00559669    xor        eax,eax
 0055966B    pop        edx
 0055966C    pop        ecx
 0055966D    pop        ecx
 0055966E    mov        dword ptr fs:[eax],edx
 00559671    push       5596E1
 00559676    lea        eax,[ebp-9C]
 0055967C    call       @LStrClr
 00559681    lea        eax,[ebp-98]
 00559687    call       @IntfClear
 0055968C    lea        eax,[ebp-94]
 00559692    mov        edx,3
 00559697    call       @LStrArrayClr
 0055969C    lea        eax,[ebp-70]
 0055969F    mov        edx,0A
 005596A4    call       @LStrArrayClr
 005596A9    lea        eax,[ebp-48]
 005596AC    call       @IntfClear
 005596B1    lea        eax,[ebp-44]
 005596B4    mov        edx,4
 005596B9    call       @LStrArrayClr
 005596BE    lea        eax,[ebp-14]
 005596C1    call       @LStrClr
 005596C6    lea        eax,[ebp-10]
 005596C9    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 005596CF    mov        ecx,2
 005596D4    call       @FinalizeArray
 005596D9    ret
<005596DA    jmp        @HandleFinally
<005596DF    jmp        00559676
 005596E1    pop        edi
 005596E2    pop        esi
 005596E3    pop        ebx
 005596E4    mov        esp,ebp
 005596E6    pop        ebp
 005596E7    ret        0C
*}
//end;

//00559AB4
//procedure sub_00559AB4(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00559AB4    push       ebp
 00559AB5    mov        ebp,esp
 00559AB7    push       ecx
 00559AB8    mov        ecx,0B
 00559ABD    push       0
 00559ABF    push       0
 00559AC1    dec        ecx
<00559AC2    jne        00559ABD
 00559AC4    push       ecx
 00559AC5    xchg       ecx,dword ptr [ebp-4]
 00559AC8    push       ebx
 00559AC9    push       esi
 00559ACA    mov        dword ptr [ebp-8],ecx
 00559ACD    mov        dword ptr [ebp-4],edx
 00559AD0    mov        esi,eax
 00559AD2    mov        ebx,dword ptr [ebp+8]
 00559AD5    xor        eax,eax
 00559AD7    push       ebp
 00559AD8    push       559CF0
 00559ADD    push       dword ptr fs:[eax]
 00559AE0    mov        dword ptr fs:[eax],esp
 00559AE3    mov        ecx,ebx
 00559AE5    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 00559AEB    mov        edx,dword ptr [edx]
 00559AED    mov        eax,esi
 00559AEF    call       004D8E7C
 00559AF4    lea        eax,[ebp-10]
 00559AF7    push       eax
 00559AF8    lea        ecx,[ebp-34]
 00559AFB    mov        dl,27
 00559AFD    mov        eax,dword ptr [ebp-4]
 00559B00    call       004D31AC
 00559B05    mov        eax,dword ptr [ebp-34]
 00559B08    mov        dword ptr [ebp-30],eax
 00559B0B    mov        byte ptr [ebp-2C],0B
 00559B0F    lea        ecx,[ebp-38]
 00559B12    mov        dl,27
 00559B14    mov        eax,dword ptr [ebp-8]
 00559B17    call       004D31AC
 00559B1C    mov        eax,dword ptr [ebp-38]
 00559B1F    mov        dword ptr [ebp-28],eax
 00559B22    mov        byte ptr [ebp-24],0B
 00559B26    lea        ecx,[ebp-3C]
 00559B29    mov        dl,27
 00559B2B    mov        eax,dword ptr [ebp+10]
 00559B2E    call       004D31AC
 00559B33    mov        eax,dword ptr [ebp-3C]
 00559B36    mov        dword ptr [ebp-20],eax
 00559B39    mov        byte ptr [ebp-1C],0B
 00559B3D    lea        ecx,[ebp-40]
 00559B40    mov        dl,27
 00559B42    mov        eax,dword ptr [ebp+0C]
 00559B45    call       004D31AC
 00559B4A    mov        eax,dword ptr [ebp-40]
 00559B4D    mov        dword ptr [ebp-18],eax
 00559B50    mov        byte ptr [ebp-14],0B
 00559B54    lea        edx,[ebp-30]
 00559B57    mov        ecx,3
 00559B5C    mov        eax,559D08; 'exec sp_jdbc_getcolumnprivileges %s, %s, %s, %s'
 00559B61    call       Format
 00559B66    mov        eax,dword ptr [ebp-10]
 00559B69    push       eax
 00559B6A    lea        edx,[ebp-44]
 00559B6D    mov        eax,esi
 00559B6F    call       0055C080
 00559B74    mov        eax,dword ptr [ebp-44]
 00559B77    lea        ecx,[ebp-0C]
 00559B7A    pop        edx
 00559B7B    mov        esi,dword ptr [eax]
 00559B7D    call       dword ptr [esi+0C]
>00559B80    jmp        00559C98
 00559B85    mov        eax,dword ptr [ebx]
 00559B87    mov        edx,dword ptr [eax]
 00559B89    call       dword ptr [edx+1E4]
 00559B8F    mov        eax,dword ptr [ebx]
 00559B91    xor        ecx,ecx
 00559B93    mov        edx,559D40; 'TABLE_CAT'
 00559B98    mov        esi,dword ptr [eax]
 00559B9A    call       dword ptr [esi+1A8]
 00559BA0    lea        ecx,[ebp-48]
 00559BA3    mov        edx,559D54; 'TABLE_SCHEM'
 00559BA8    mov        eax,dword ptr [ebp-0C]
 00559BAB    mov        esi,dword ptr [eax]
 00559BAD    call       dword ptr [esi+74]
 00559BB0    mov        ecx,dword ptr [ebp-48]
 00559BB3    mov        eax,dword ptr [ebx]
 00559BB5    mov        edx,559D54; 'TABLE_SCHEM'
 00559BBA    mov        esi,dword ptr [eax]
 00559BBC    call       dword ptr [esi+1A8]
 00559BC2    lea        ecx,[ebp-4C]
 00559BC5    mov        edx,559D68; 'TABLE_NAME'
 00559BCA    mov        eax,dword ptr [ebp-0C]
 00559BCD    mov        esi,dword ptr [eax]
 00559BCF    call       dword ptr [esi+74]
 00559BD2    mov        ecx,dword ptr [ebp-4C]
 00559BD5    mov        eax,dword ptr [ebx]
 00559BD7    mov        edx,559D68; 'TABLE_NAME'
 00559BDC    mov        esi,dword ptr [eax]
 00559BDE    call       dword ptr [esi+1A8]
 00559BE4    lea        ecx,[ebp-50]
 00559BE7    mov        edx,559D7C; 'COLUMN_NAME'
 00559BEC    mov        eax,dword ptr [ebp-0C]
 00559BEF    mov        esi,dword ptr [eax]
 00559BF1    call       dword ptr [esi+74]
 00559BF4    mov        ecx,dword ptr [ebp-50]
 00559BF7    mov        eax,dword ptr [ebx]
 00559BF9    mov        edx,559D7C; 'COLUMN_NAME'
 00559BFE    mov        esi,dword ptr [eax]
 00559C00    call       dword ptr [esi+1A8]
 00559C06    lea        ecx,[ebp-54]
 00559C09    mov        edx,559D90; 'GRANTOR'
 00559C0E    mov        eax,dword ptr [ebp-0C]
 00559C11    mov        esi,dword ptr [eax]
 00559C13    call       dword ptr [esi+74]
 00559C16    mov        ecx,dword ptr [ebp-54]
 00559C19    mov        eax,dword ptr [ebx]
 00559C1B    mov        edx,559D90; 'GRANTOR'
 00559C20    mov        esi,dword ptr [eax]
 00559C22    call       dword ptr [esi+1A8]
 00559C28    lea        ecx,[ebp-58]
 00559C2B    mov        edx,559DA0; 'GRANTEE'
 00559C30    mov        eax,dword ptr [ebp-0C]
 00559C33    mov        esi,dword ptr [eax]
 00559C35    call       dword ptr [esi+74]
 00559C38    mov        ecx,dword ptr [ebp-58]
 00559C3B    mov        eax,dword ptr [ebx]
 00559C3D    mov        edx,559DA0; 'GRANTEE'
 00559C42    mov        esi,dword ptr [eax]
 00559C44    call       dword ptr [esi+1A8]
 00559C4A    lea        ecx,[ebp-5C]
 00559C4D    mov        edx,559DB0; 'PRIVILEGE'
 00559C52    mov        eax,dword ptr [ebp-0C]
 00559C55    mov        esi,dword ptr [eax]
 00559C57    call       dword ptr [esi+74]
 00559C5A    mov        ecx,dword ptr [ebp-5C]
 00559C5D    mov        eax,dword ptr [ebx]
 00559C5F    mov        edx,559DB0; 'PRIVILEGE'
 00559C64    mov        esi,dword ptr [eax]
 00559C66    call       dword ptr [esi+1A8]
 00559C6C    lea        ecx,[ebp-60]
 00559C6F    mov        edx,559DC4; 'IS_GRANTABLE'
 00559C74    mov        eax,dword ptr [ebp-0C]
 00559C77    mov        esi,dword ptr [eax]
 00559C79    call       dword ptr [esi+74]
 00559C7C    mov        ecx,dword ptr [ebp-60]
 00559C7F    mov        eax,dword ptr [ebx]
 00559C81    mov        edx,559DC4; 'IS_GRANTABLE'
 00559C86    mov        esi,dword ptr [eax]
 00559C88    call       dword ptr [esi+1A8]
 00559C8E    mov        eax,dword ptr [ebx]
 00559C90    mov        edx,dword ptr [eax]
 00559C92    call       dword ptr [edx+1D0]
 00559C98    mov        eax,dword ptr [ebp-0C]
 00559C9B    mov        edx,dword ptr [eax]
 00559C9D    call       dword ptr [edx+0C]
 00559CA0    test       al,al
<00559CA2    jne        00559B85
 00559CA8    mov        eax,dword ptr [ebp-0C]
 00559CAB    mov        edx,dword ptr [eax]
 00559CAD    call       dword ptr [edx+10]
 00559CB0    xor        eax,eax
 00559CB2    pop        edx
 00559CB3    pop        ecx
 00559CB4    pop        ecx
 00559CB5    mov        dword ptr fs:[eax],edx
 00559CB8    push       559CF7
 00559CBD    lea        eax,[ebp-60]
 00559CC0    mov        edx,7
 00559CC5    call       @LStrArrayClr
 00559CCA    lea        eax,[ebp-44]
 00559CCD    call       @IntfClear
 00559CD2    lea        eax,[ebp-40]
 00559CD5    mov        edx,4
 00559CDA    call       @LStrArrayClr
 00559CDF    lea        eax,[ebp-10]
 00559CE2    call       @LStrClr
 00559CE7    lea        eax,[ebp-0C]
 00559CEA    call       @IntfClear
 00559CEF    ret
<00559CF0    jmp        @HandleFinally
<00559CF5    jmp        00559CBD
 00559CF7    pop        esi
 00559CF8    pop        ebx
 00559CF9    mov        esp,ebp
 00559CFB    pop        ebp
 00559CFC    ret        0C
*}
//end;

//00559DD4
//procedure sub_00559DD4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00559DD4    push       ebp
 00559DD5    mov        ebp,esp
 00559DD7    push       ecx
 00559DD8    mov        ecx,9
 00559DDD    push       0
 00559DDF    push       0
 00559DE1    dec        ecx
<00559DE2    jne        00559DDD
 00559DE4    push       ecx
 00559DE5    xchg       ecx,dword ptr [ebp-4]
 00559DE8    push       ebx
 00559DE9    push       esi
 00559DEA    mov        dword ptr [ebp-8],ecx
 00559DED    mov        dword ptr [ebp-4],edx
 00559DF0    mov        esi,eax
 00559DF2    mov        ebx,dword ptr [ebp+8]
 00559DF5    xor        eax,eax
 00559DF7    push       ebp
 00559DF8    push       559FD7
 00559DFD    push       dword ptr fs:[eax]
 00559E00    mov        dword ptr fs:[eax],esp
 00559E03    mov        ecx,ebx
 00559E05    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 00559E0B    mov        edx,dword ptr [edx]
 00559E0D    mov        eax,esi
 00559E0F    call       004D8E7C
 00559E14    lea        eax,[ebp-10]
 00559E17    push       eax
 00559E18    lea        ecx,[ebp-2C]
 00559E1B    mov        dl,27
 00559E1D    mov        eax,dword ptr [ebp-4]
 00559E20    call       004D31AC
 00559E25    mov        eax,dword ptr [ebp-2C]
 00559E28    mov        dword ptr [ebp-28],eax
 00559E2B    mov        byte ptr [ebp-24],0B
 00559E2F    lea        ecx,[ebp-30]
 00559E32    mov        dl,27
 00559E34    mov        eax,dword ptr [ebp-8]
 00559E37    call       004D31AC
 00559E3C    mov        eax,dword ptr [ebp-30]
 00559E3F    mov        dword ptr [ebp-20],eax
 00559E42    mov        byte ptr [ebp-1C],0B
 00559E46    lea        ecx,[ebp-34]
 00559E49    mov        dl,27
 00559E4B    mov        eax,dword ptr [ebp+0C]
 00559E4E    call       004D31AC
 00559E53    mov        eax,dword ptr [ebp-34]
 00559E56    mov        dword ptr [ebp-18],eax
 00559E59    mov        byte ptr [ebp-14],0B
 00559E5D    lea        edx,[ebp-28]
 00559E60    mov        ecx,2
 00559E65    mov        eax,559FF0; 'exec sp_jdbc_gettableprivileges %s, %s, %s'
 00559E6A    call       Format
 00559E6F    mov        eax,dword ptr [ebp-10]
 00559E72    push       eax
 00559E73    lea        edx,[ebp-38]
 00559E76    mov        eax,esi
 00559E78    call       0055C080
 00559E7D    mov        eax,dword ptr [ebp-38]
 00559E80    lea        ecx,[ebp-0C]
 00559E83    pop        edx
 00559E84    mov        esi,dword ptr [eax]
 00559E86    call       dword ptr [esi+0C]
>00559E89    jmp        00559F7F
 00559E8E    mov        eax,dword ptr [ebx]
 00559E90    mov        edx,dword ptr [eax]
 00559E92    call       dword ptr [edx+1E4]
 00559E98    mov        eax,dword ptr [ebx]
 00559E9A    xor        ecx,ecx
 00559E9C    mov        edx,55A024; 'TABLE_CAT'
 00559EA1    mov        esi,dword ptr [eax]
 00559EA3    call       dword ptr [esi+1A8]
 00559EA9    lea        ecx,[ebp-3C]
 00559EAC    mov        edx,55A038; 'TABLE_SCHEM'
 00559EB1    mov        eax,dword ptr [ebp-0C]
 00559EB4    mov        esi,dword ptr [eax]
 00559EB6    call       dword ptr [esi+74]
 00559EB9    mov        ecx,dword ptr [ebp-3C]
 00559EBC    mov        eax,dword ptr [ebx]
 00559EBE    mov        edx,55A038; 'TABLE_SCHEM'
 00559EC3    mov        esi,dword ptr [eax]
 00559EC5    call       dword ptr [esi+1A8]
 00559ECB    lea        ecx,[ebp-40]
 00559ECE    mov        edx,55A04C; 'TABLE_NAME'
 00559ED3    mov        eax,dword ptr [ebp-0C]
 00559ED6    mov        esi,dword ptr [eax]
 00559ED8    call       dword ptr [esi+74]
 00559EDB    mov        ecx,dword ptr [ebp-40]
 00559EDE    mov        eax,dword ptr [ebx]
 00559EE0    mov        edx,55A04C; 'TABLE_NAME'
 00559EE5    mov        esi,dword ptr [eax]
 00559EE7    call       dword ptr [esi+1A8]
 00559EED    lea        ecx,[ebp-44]
 00559EF0    mov        edx,55A060; 'GRANTOR'
 00559EF5    mov        eax,dword ptr [ebp-0C]
 00559EF8    mov        esi,dword ptr [eax]
 00559EFA    call       dword ptr [esi+74]
 00559EFD    mov        ecx,dword ptr [ebp-44]
 00559F00    mov        eax,dword ptr [ebx]
 00559F02    mov        edx,55A060; 'GRANTOR'
 00559F07    mov        esi,dword ptr [eax]
 00559F09    call       dword ptr [esi+1A8]
 00559F0F    lea        ecx,[ebp-48]
 00559F12    mov        edx,55A070; 'GRANTEE'
 00559F17    mov        eax,dword ptr [ebp-0C]
 00559F1A    mov        esi,dword ptr [eax]
 00559F1C    call       dword ptr [esi+74]
 00559F1F    mov        ecx,dword ptr [ebp-48]
 00559F22    mov        eax,dword ptr [ebx]
 00559F24    mov        edx,55A070; 'GRANTEE'
 00559F29    mov        esi,dword ptr [eax]
 00559F2B    call       dword ptr [esi+1A8]
 00559F31    lea        ecx,[ebp-4C]
 00559F34    mov        edx,55A080; 'PRIVILEGE'
 00559F39    mov        eax,dword ptr [ebp-0C]
 00559F3C    mov        esi,dword ptr [eax]
 00559F3E    call       dword ptr [esi+74]
 00559F41    mov        ecx,dword ptr [ebp-4C]
 00559F44    mov        eax,dword ptr [ebx]
 00559F46    mov        edx,55A080; 'PRIVILEGE'
 00559F4B    mov        esi,dword ptr [eax]
 00559F4D    call       dword ptr [esi+1A8]
 00559F53    lea        ecx,[ebp-50]
 00559F56    mov        edx,55A094; 'IS_GRANTABLE'
 00559F5B    mov        eax,dword ptr [ebp-0C]
 00559F5E    mov        esi,dword ptr [eax]
 00559F60    call       dword ptr [esi+74]
 00559F63    mov        ecx,dword ptr [ebp-50]
 00559F66    mov        eax,dword ptr [ebx]
 00559F68    mov        edx,55A094; 'IS_GRANTABLE'
 00559F6D    mov        esi,dword ptr [eax]
 00559F6F    call       dword ptr [esi+1A8]
 00559F75    mov        eax,dword ptr [ebx]
 00559F77    mov        edx,dword ptr [eax]
 00559F79    call       dword ptr [edx+1D0]
 00559F7F    mov        eax,dword ptr [ebp-0C]
 00559F82    mov        edx,dword ptr [eax]
 00559F84    call       dword ptr [edx+0C]
 00559F87    test       al,al
<00559F89    jne        00559E8E
 00559F8F    mov        eax,dword ptr [ebp-0C]
 00559F92    mov        edx,dword ptr [eax]
 00559F94    call       dword ptr [edx+10]
 00559F97    xor        eax,eax
 00559F99    pop        edx
 00559F9A    pop        ecx
 00559F9B    pop        ecx
 00559F9C    mov        dword ptr fs:[eax],edx
 00559F9F    push       559FDE
 00559FA4    lea        eax,[ebp-50]
 00559FA7    mov        edx,6
 00559FAC    call       @LStrArrayClr
 00559FB1    lea        eax,[ebp-38]
 00559FB4    call       @IntfClear
 00559FB9    lea        eax,[ebp-34]
 00559FBC    mov        edx,3
 00559FC1    call       @LStrArrayClr
 00559FC6    lea        eax,[ebp-10]
 00559FC9    call       @LStrClr
 00559FCE    lea        eax,[ebp-0C]
 00559FD1    call       @IntfClear
 00559FD6    ret
<00559FD7    jmp        @HandleFinally
<00559FDC    jmp        00559FA4
 00559FDE    pop        esi
 00559FDF    pop        ebx
 00559FE0    mov        esp,ebp
 00559FE2    pop        ebp
 00559FE3    ret        8
*}
//end;

//0055A0A4
//procedure sub_0055A0A4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055A0A4    push       ebp
 0055A0A5    mov        ebp,esp
 0055A0A7    add        esp,0FFFFFFC0
 0055A0AA    push       ebx
 0055A0AB    push       esi
 0055A0AC    xor        ebx,ebx
 0055A0AE    mov        dword ptr [ebp-40],ebx
 0055A0B1    mov        dword ptr [ebp-3C],ebx
 0055A0B4    mov        dword ptr [ebp-10],ebx
 0055A0B7    mov        dword ptr [ebp-38],ebx
 0055A0BA    mov        dword ptr [ebp-2C],ebx
 0055A0BD    mov        dword ptr [ebp-30],ebx
 0055A0C0    mov        dword ptr [ebp-34],ebx
 0055A0C3    mov        dword ptr [ebp-0C],ebx
 0055A0C6    mov        dword ptr [ebp-8],ecx
 0055A0C9    mov        dword ptr [ebp-4],edx
 0055A0CC    mov        esi,eax
 0055A0CE    mov        ebx,dword ptr [ebp+8]
 0055A0D1    xor        eax,eax
 0055A0D3    push       ebp
 0055A0D4    push       55A2E7
 0055A0D9    push       dword ptr fs:[eax]
 0055A0DC    mov        dword ptr fs:[eax],esp
 0055A0DF    mov        ecx,ebx
 0055A0E1    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 0055A0E7    mov        edx,dword ptr [edx]
 0055A0E9    mov        eax,esi
 0055A0EB    call       004D8E7C
 0055A0F0    lea        eax,[ebp-10]
 0055A0F3    push       eax
 0055A0F4    lea        ecx,[ebp-2C]
 0055A0F7    mov        dl,27
 0055A0F9    mov        eax,dword ptr [ebp-4]
 0055A0FC    call       004D31AC
 0055A101    mov        eax,dword ptr [ebp-2C]
 0055A104    mov        dword ptr [ebp-28],eax
 0055A107    mov        byte ptr [ebp-24],0B
 0055A10B    lea        ecx,[ebp-30]
 0055A10E    mov        dl,27
 0055A110    mov        eax,dword ptr [ebp-8]
 0055A113    call       004D31AC
 0055A118    mov        eax,dword ptr [ebp-30]
 0055A11B    mov        dword ptr [ebp-20],eax
 0055A11E    mov        byte ptr [ebp-1C],0B
 0055A122    lea        ecx,[ebp-34]
 0055A125    mov        dl,27
 0055A127    mov        eax,dword ptr [ebp+0C]
 0055A12A    call       004D31AC
 0055A12F    mov        eax,dword ptr [ebp-34]
 0055A132    mov        dword ptr [ebp-18],eax
 0055A135    mov        byte ptr [ebp-14],0B
 0055A139    lea        edx,[ebp-28]
 0055A13C    mov        ecx,2
 0055A141    mov        eax,55A300; 'exec sp_jdbc_getversioncolumns %s, %s, %s'
 0055A146    call       Format
 0055A14B    mov        eax,dword ptr [ebp-10]
 0055A14E    push       eax
 0055A14F    lea        edx,[ebp-38]
 0055A152    mov        eax,esi
 0055A154    call       0055C080
 0055A159    mov        eax,dword ptr [ebp-38]
 0055A15C    lea        ecx,[ebp-0C]
 0055A15F    pop        edx
 0055A160    mov        esi,dword ptr [eax]
 0055A162    call       dword ptr [esi+0C]
>0055A165    jmp        0055A28F
 0055A16A    mov        eax,dword ptr [ebx]
 0055A16C    mov        edx,dword ptr [eax]
 0055A16E    call       dword ptr [edx+1E4]
 0055A174    mov        edx,55A334; 'SCOPE'
 0055A179    mov        eax,dword ptr [ebp-0C]
 0055A17C    mov        ecx,dword ptr [eax]
 0055A17E    call       dword ptr [ecx+84]
 0055A184    mov        ecx,eax
 0055A186    mov        eax,dword ptr [ebx]
 0055A188    mov        edx,55A334; 'SCOPE'
 0055A18D    mov        esi,dword ptr [eax]
 0055A18F    call       dword ptr [esi+18C]
 0055A195    lea        ecx,[ebp-3C]
 0055A198    mov        edx,55A344; 'COLUMN_NAME'
 0055A19D    mov        eax,dword ptr [ebp-0C]
 0055A1A0    mov        esi,dword ptr [eax]
 0055A1A2    call       dword ptr [esi+74]
 0055A1A5    mov        ecx,dword ptr [ebp-3C]
 0055A1A8    mov        eax,dword ptr [ebx]
 0055A1AA    mov        edx,55A344; 'COLUMN_NAME'
 0055A1AF    mov        esi,dword ptr [eax]
 0055A1B1    call       dword ptr [esi+1A8]
 0055A1B7    mov        edx,55A358; 'DATA_TYPE'
 0055A1BC    mov        eax,dword ptr [ebp-0C]
 0055A1BF    mov        ecx,dword ptr [eax]
 0055A1C1    call       dword ptr [ecx+84]
 0055A1C7    call       005564B4
 0055A1CC    xor        ecx,ecx
 0055A1CE    mov        cl,al
 0055A1D0    mov        eax,dword ptr [ebx]
 0055A1D2    mov        edx,55A358; 'DATA_TYPE'
 0055A1D7    mov        esi,dword ptr [eax]
 0055A1D9    call       dword ptr [esi+18C]
 0055A1DF    lea        ecx,[ebp-40]
 0055A1E2    mov        edx,55A36C; 'TYPE_NAME'
 0055A1E7    mov        eax,dword ptr [ebp-0C]
 0055A1EA    mov        esi,dword ptr [eax]
 0055A1EC    call       dword ptr [esi+74]
 0055A1EF    mov        ecx,dword ptr [ebp-40]
 0055A1F2    mov        eax,dword ptr [ebx]
 0055A1F4    mov        edx,55A36C; 'TYPE_NAME'
 0055A1F9    mov        esi,dword ptr [eax]
 0055A1FB    call       dword ptr [esi+1A8]
 0055A201    mov        edx,55A380; 'COLUMN_SIZE'
 0055A206    mov        eax,dword ptr [ebp-0C]
 0055A209    mov        ecx,dword ptr [eax]
 0055A20B    call       dword ptr [ecx+88]
 0055A211    mov        ecx,eax
 0055A213    mov        eax,dword ptr [ebx]
 0055A215    mov        edx,55A380; 'COLUMN_SIZE'
 0055A21A    mov        esi,dword ptr [eax]
 0055A21C    call       dword ptr [esi+190]
 0055A222    mov        edx,55A394; 'BUFFER_LENGTH'
 0055A227    mov        eax,dword ptr [ebp-0C]
 0055A22A    mov        ecx,dword ptr [eax]
 0055A22C    call       dword ptr [ecx+88]
 0055A232    mov        ecx,eax
 0055A234    mov        eax,dword ptr [ebx]
 0055A236    mov        edx,55A394; 'BUFFER_LENGTH'
 0055A23B    mov        esi,dword ptr [eax]
 0055A23D    call       dword ptr [esi+190]
 0055A243    mov        edx,55A3AC; 'DECIMAL_DIGITS'
 0055A248    mov        eax,dword ptr [ebp-0C]
 0055A24B    mov        ecx,dword ptr [eax]
 0055A24D    call       dword ptr [ecx+88]
 0055A253    mov        ecx,eax
 0055A255    mov        eax,dword ptr [ebx]
 0055A257    mov        edx,55A3AC; 'DECIMAL_DIGITS'
 0055A25C    mov        esi,dword ptr [eax]
 0055A25E    call       dword ptr [esi+190]
 0055A264    mov        edx,55A3C4; 'PSEUDO_COLUMN'
 0055A269    mov        eax,dword ptr [ebp-0C]
 0055A26C    mov        ecx,dword ptr [eax]
 0055A26E    call       dword ptr [ecx+84]
 0055A274    mov        ecx,eax
 0055A276    mov        eax,dword ptr [ebx]
 0055A278    mov        edx,55A3C4; 'PSEUDO_COLUMN'
 0055A27D    mov        esi,dword ptr [eax]
 0055A27F    call       dword ptr [esi+18C]
 0055A285    mov        eax,dword ptr [ebx]
 0055A287    mov        edx,dword ptr [eax]
 0055A289    call       dword ptr [edx+1D0]
 0055A28F    mov        eax,dword ptr [ebp-0C]
 0055A292    mov        edx,dword ptr [eax]
 0055A294    call       dword ptr [edx+0C]
 0055A297    test       al,al
<0055A299    jne        0055A16A
 0055A29F    mov        eax,dword ptr [ebp-0C]
 0055A2A2    mov        edx,dword ptr [eax]
 0055A2A4    call       dword ptr [edx+10]
 0055A2A7    xor        eax,eax
 0055A2A9    pop        edx
 0055A2AA    pop        ecx
 0055A2AB    pop        ecx
 0055A2AC    mov        dword ptr fs:[eax],edx
 0055A2AF    push       55A2EE
 0055A2B4    lea        eax,[ebp-40]
 0055A2B7    mov        edx,2
 0055A2BC    call       @LStrArrayClr
 0055A2C1    lea        eax,[ebp-38]
 0055A2C4    call       @IntfClear
 0055A2C9    lea        eax,[ebp-34]
 0055A2CC    mov        edx,3
 0055A2D1    call       @LStrArrayClr
 0055A2D6    lea        eax,[ebp-10]
 0055A2D9    call       @LStrClr
 0055A2DE    lea        eax,[ebp-0C]
 0055A2E1    call       @IntfClear
 0055A2E6    ret
<0055A2E7    jmp        @HandleFinally
<0055A2EC    jmp        0055A2B4
 0055A2EE    pop        esi
 0055A2EF    pop        ebx
 0055A2F0    mov        esp,ebp
 0055A2F2    pop        ebp
 0055A2F3    ret        8
*}
//end;

//0055A3D4
//procedure sub_0055A3D4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055A3D4    push       ebp
 0055A3D5    mov        ebp,esp
 0055A3D7    push       ecx
 0055A3D8    mov        ecx,8
 0055A3DD    push       0
 0055A3DF    push       0
 0055A3E1    dec        ecx
<0055A3E2    jne        0055A3DD
 0055A3E4    push       ecx
 0055A3E5    xchg       ecx,dword ptr [ebp-4]
 0055A3E8    push       ebx
 0055A3E9    push       esi
 0055A3EA    mov        dword ptr [ebp-8],ecx
 0055A3ED    mov        dword ptr [ebp-4],edx
 0055A3F0    mov        esi,eax
 0055A3F2    mov        ebx,dword ptr [ebp+8]
 0055A3F5    xor        eax,eax
 0055A3F7    push       ebp
 0055A3F8    push       55A5B4
 0055A3FD    push       dword ptr fs:[eax]
 0055A400    mov        dword ptr fs:[eax],esp
 0055A403    mov        ecx,ebx
 0055A405    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 0055A40B    mov        edx,dword ptr [edx]
 0055A40D    mov        eax,esi
 0055A40F    call       004D8E7C
 0055A414    lea        eax,[ebp-10]
 0055A417    push       eax
 0055A418    lea        ecx,[ebp-2C]
 0055A41B    mov        dl,27
 0055A41D    mov        eax,dword ptr [ebp-4]
 0055A420    call       004D31AC
 0055A425    mov        eax,dword ptr [ebp-2C]
 0055A428    mov        dword ptr [ebp-28],eax
 0055A42B    mov        byte ptr [ebp-24],0B
 0055A42F    lea        ecx,[ebp-30]
 0055A432    mov        dl,27
 0055A434    mov        eax,dword ptr [ebp-8]
 0055A437    call       004D31AC
 0055A43C    mov        eax,dword ptr [ebp-30]
 0055A43F    mov        dword ptr [ebp-20],eax
 0055A442    mov        byte ptr [ebp-1C],0B
 0055A446    lea        ecx,[ebp-34]
 0055A449    mov        dl,27
 0055A44B    mov        eax,dword ptr [ebp+0C]
 0055A44E    call       004D31AC
 0055A453    mov        eax,dword ptr [ebp-34]
 0055A456    mov        dword ptr [ebp-18],eax
 0055A459    mov        byte ptr [ebp-14],0B
 0055A45D    lea        edx,[ebp-28]
 0055A460    mov        ecx,2
 0055A465    mov        eax,55A5CC; 'exec sp_jdbc_primarykey %s, %s, %s'
 0055A46A    call       Format
 0055A46F    mov        eax,dword ptr [ebp-10]
 0055A472    push       eax
 0055A473    lea        edx,[ebp-38]
 0055A476    mov        eax,esi
 0055A478    call       0055C080
 0055A47D    mov        eax,dword ptr [ebp-38]
 0055A480    lea        ecx,[ebp-0C]
 0055A483    pop        edx
 0055A484    mov        esi,dword ptr [eax]
 0055A486    call       dword ptr [esi+0C]
>0055A489    jmp        0055A55C
 0055A48E    mov        eax,dword ptr [ebx]
 0055A490    mov        edx,dword ptr [eax]
 0055A492    call       dword ptr [edx+1E4]
 0055A498    mov        eax,dword ptr [ebx]
 0055A49A    xor        ecx,ecx
 0055A49C    mov        edx,55A5F8; 'TABLE_CAT'
 0055A4A1    mov        esi,dword ptr [eax]
 0055A4A3    call       dword ptr [esi+1A8]
 0055A4A9    lea        ecx,[ebp-3C]
 0055A4AC    mov        edx,55A60C; 'TABLE_SCHEM'
 0055A4B1    mov        eax,dword ptr [ebp-0C]
 0055A4B4    mov        esi,dword ptr [eax]
 0055A4B6    call       dword ptr [esi+74]
 0055A4B9    mov        ecx,dword ptr [ebp-3C]
 0055A4BC    mov        eax,dword ptr [ebx]
 0055A4BE    mov        edx,55A60C; 'TABLE_SCHEM'
 0055A4C3    mov        esi,dword ptr [eax]
 0055A4C5    call       dword ptr [esi+1A8]
 0055A4CB    lea        ecx,[ebp-40]
 0055A4CE    mov        edx,55A620; 'TABLE_NAME'
 0055A4D3    mov        eax,dword ptr [ebp-0C]
 0055A4D6    mov        esi,dword ptr [eax]
 0055A4D8    call       dword ptr [esi+74]
 0055A4DB    mov        ecx,dword ptr [ebp-40]
 0055A4DE    mov        eax,dword ptr [ebx]
 0055A4E0    mov        edx,55A620; 'TABLE_NAME'
 0055A4E5    mov        esi,dword ptr [eax]
 0055A4E7    call       dword ptr [esi+1A8]
 0055A4ED    lea        ecx,[ebp-44]
 0055A4F0    mov        edx,55A634; 'COLUMN_NAME'
 0055A4F5    mov        eax,dword ptr [ebp-0C]
 0055A4F8    mov        esi,dword ptr [eax]
 0055A4FA    call       dword ptr [esi+74]
 0055A4FD    mov        ecx,dword ptr [ebp-44]
 0055A500    mov        eax,dword ptr [ebx]
 0055A502    mov        edx,55A634; 'COLUMN_NAME'
 0055A507    mov        esi,dword ptr [eax]
 0055A509    call       dword ptr [esi+1A8]
 0055A50F    mov        edx,55A648; 'KEY_SEQ'
 0055A514    mov        eax,dword ptr [ebp-0C]
 0055A517    mov        ecx,dword ptr [eax]
 0055A519    call       dword ptr [ecx+84]
 0055A51F    mov        ecx,eax
 0055A521    mov        eax,dword ptr [ebx]
 0055A523    mov        edx,55A648; 'KEY_SEQ'
 0055A528    mov        esi,dword ptr [eax]
 0055A52A    call       dword ptr [esi+18C]
 0055A530    lea        ecx,[ebp-48]
 0055A533    mov        edx,55A658; 'PK_NAME'
 0055A538    mov        eax,dword ptr [ebp-0C]
 0055A53B    mov        esi,dword ptr [eax]
 0055A53D    call       dword ptr [esi+74]
 0055A540    mov        ecx,dword ptr [ebp-48]
 0055A543    mov        eax,dword ptr [ebx]
 0055A545    mov        edx,55A658; 'PK_NAME'
 0055A54A    mov        esi,dword ptr [eax]
 0055A54C    call       dword ptr [esi+1A8]
 0055A552    mov        eax,dword ptr [ebx]
 0055A554    mov        edx,dword ptr [eax]
 0055A556    call       dword ptr [edx+1D0]
 0055A55C    mov        eax,dword ptr [ebp-0C]
 0055A55F    mov        edx,dword ptr [eax]
 0055A561    call       dword ptr [edx+0C]
 0055A564    test       al,al
<0055A566    jne        0055A48E
 0055A56C    mov        eax,dword ptr [ebp-0C]
 0055A56F    mov        edx,dword ptr [eax]
 0055A571    call       dword ptr [edx+10]
 0055A574    xor        eax,eax
 0055A576    pop        edx
 0055A577    pop        ecx
 0055A578    pop        ecx
 0055A579    mov        dword ptr fs:[eax],edx
 0055A57C    push       55A5BB
 0055A581    lea        eax,[ebp-48]
 0055A584    mov        edx,4
 0055A589    call       @LStrArrayClr
 0055A58E    lea        eax,[ebp-38]
 0055A591    call       @IntfClear
 0055A596    lea        eax,[ebp-34]
 0055A599    mov        edx,3
 0055A59E    call       @LStrArrayClr
 0055A5A3    lea        eax,[ebp-10]
 0055A5A6    call       @LStrClr
 0055A5AB    lea        eax,[ebp-0C]
 0055A5AE    call       @IntfClear
 0055A5B3    ret
<0055A5B4    jmp        @HandleFinally
<0055A5B9    jmp        0055A581
 0055A5BB    pop        esi
 0055A5BC    pop        ebx
 0055A5BD    mov        esp,ebp
 0055A5BF    pop        ebp
 0055A5C0    ret        8
*}
//end;

//0055A660
//procedure sub_0055A660(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055A660    push       ebp
 0055A661    mov        ebp,esp
 0055A663    push       ecx
 0055A664    mov        ecx,0A
 0055A669    push       0
 0055A66B    push       0
 0055A66D    dec        ecx
<0055A66E    jne        0055A669
 0055A670    push       ecx
 0055A671    xchg       ecx,dword ptr [ebp-4]
 0055A674    push       ebx
 0055A675    push       esi
 0055A676    mov        dword ptr [ebp-8],ecx
 0055A679    mov        dword ptr [ebp-4],edx
 0055A67C    mov        esi,eax
 0055A67E    mov        ebx,dword ptr [ebp+8]
 0055A681    xor        eax,eax
 0055A683    push       ebp
 0055A684    push       55A93C
 0055A689    push       dword ptr fs:[eax]
 0055A68C    mov        dword ptr fs:[eax],esp
 0055A68F    mov        ecx,ebx
 0055A691    mov        edx,dword ptr ds:[61B820]; ^gvar_0061DD64:TZMetadataColumnDefs
 0055A697    mov        edx,dword ptr [edx]
 0055A699    mov        eax,esi
 0055A69B    call       004D8E7C
 0055A6A0    lea        eax,[ebp-10]
 0055A6A3    push       eax
 0055A6A4    lea        ecx,[ebp-2C]
 0055A6A7    mov        dl,27
 0055A6A9    mov        eax,dword ptr [ebp-4]
 0055A6AC    call       004D31AC
 0055A6B1    mov        eax,dword ptr [ebp-2C]
 0055A6B4    mov        dword ptr [ebp-28],eax
 0055A6B7    mov        byte ptr [ebp-24],0B
 0055A6BB    lea        ecx,[ebp-30]
 0055A6BE    mov        dl,27
 0055A6C0    mov        eax,dword ptr [ebp-8]
 0055A6C3    call       004D31AC
 0055A6C8    mov        eax,dword ptr [ebp-30]
 0055A6CB    mov        dword ptr [ebp-20],eax
 0055A6CE    mov        byte ptr [ebp-1C],0B
 0055A6D2    lea        ecx,[ebp-34]
 0055A6D5    mov        dl,27
 0055A6D7    mov        eax,dword ptr [ebp+0C]
 0055A6DA    call       004D31AC
 0055A6DF    mov        eax,dword ptr [ebp-34]
 0055A6E2    mov        dword ptr [ebp-18],eax
 0055A6E5    mov        byte ptr [ebp-14],0B
 0055A6E9    lea        edx,[ebp-28]
 0055A6EC    mov        ecx,2
 0055A6F1    mov        eax,55A954; 'exec sp_jdbc_importkey %s, %s, %s'
 0055A6F6    call       Format
 0055A6FB    mov        eax,dword ptr [ebp-10]
 0055A6FE    push       eax
 0055A6FF    lea        edx,[ebp-38]
 0055A702    mov        eax,esi
 0055A704    call       0055C080
 0055A709    mov        eax,dword ptr [ebp-38]
 0055A70C    lea        ecx,[ebp-0C]
 0055A70F    pop        edx
 0055A710    mov        esi,dword ptr [eax]
 0055A712    call       dword ptr [esi+0C]
>0055A715    jmp        0055A8E4
 0055A71A    mov        eax,dword ptr [ebx]
 0055A71C    mov        edx,dword ptr [eax]
 0055A71E    call       dword ptr [edx+1E4]
 0055A724    mov        eax,dword ptr [ebx]
 0055A726    xor        ecx,ecx
 0055A728    mov        edx,55A980; 'PKTABLE_CAT'
 0055A72D    mov        esi,dword ptr [eax]
 0055A72F    call       dword ptr [esi+1A8]
 0055A735    lea        ecx,[ebp-3C]
 0055A738    mov        edx,55A994; 'PKTABLE_SCHEM'
 0055A73D    mov        eax,dword ptr [ebp-0C]
 0055A740    mov        esi,dword ptr [eax]
 0055A742    call       dword ptr [esi+74]
 0055A745    mov        ecx,dword ptr [ebp-3C]
 0055A748    mov        eax,dword ptr [ebx]
 0055A74A    mov        edx,55A994; 'PKTABLE_SCHEM'
 0055A74F    mov        esi,dword ptr [eax]
 0055A751    call       dword ptr [esi+1A8]
 0055A757    lea        ecx,[ebp-40]
 0055A75A    mov        edx,55A9AC; 'PKTABLE_NAME'
 0055A75F    mov        eax,dword ptr [ebp-0C]
 0055A762    mov        esi,dword ptr [eax]
 0055A764    call       dword ptr [esi+74]
 0055A767    mov        ecx,dword ptr [ebp-40]
 0055A76A    mov        eax,dword ptr [ebx]
 0055A76C    mov        edx,55A9AC; 'PKTABLE_NAME'
 0055A771    mov        esi,dword ptr [eax]
 0055A773    call       dword ptr [esi+1A8]
 0055A779    lea        ecx,[ebp-44]
 0055A77C    mov        edx,55A9C4; 'PKCOLUMN_NAME'
 0055A781    mov        eax,dword ptr [ebp-0C]
 0055A784    mov        esi,dword ptr [eax]
 0055A786    call       dword ptr [esi+74]
 0055A789    mov        ecx,dword ptr [ebp-44]
 0055A78C    mov        eax,dword ptr [ebx]
 0055A78E    mov        edx,55A9C4; 'PKCOLUMN_NAME'
 0055A793    mov        esi,dword ptr [eax]
 0055A795    call       dword ptr [esi+1A8]
 0055A79B    mov        eax,dword ptr [ebx]
 0055A79D    xor        ecx,ecx
 0055A79F    mov        edx,55A9DC; 'FKTABLE_CAT'
 0055A7A4    mov        esi,dword ptr [eax]
 0055A7A6    call       dword ptr [esi+1A8]
 0055A7AC    lea        ecx,[ebp-48]
 0055A7AF    mov        edx,55A9F0; 'FKTABLE_SCHEM'
 0055A7B4    mov        eax,dword ptr [ebp-0C]
 0055A7B7    mov        esi,dword ptr [eax]
 0055A7B9    call       dword ptr [esi+74]
 0055A7BC    mov        ecx,dword ptr [ebp-48]
 0055A7BF    mov        eax,dword ptr [ebx]
 0055A7C1    mov        edx,55A9F0; 'FKTABLE_SCHEM'
 0055A7C6    mov        esi,dword ptr [eax]
 0055A7C8    call       dword ptr [esi+1A8]
 0055A7CE    lea        ecx,[ebp-4C]
 0055A7D1    mov        edx,55AA08; 'FKTABLE_NAME'
 0055A7D6    mov        eax,dword ptr [ebp-0C]
 0055A7D9    mov        esi,dword ptr [eax]
 0055A7DB    call       dword ptr [esi+74]
 0055A7DE    mov        ecx,dword ptr [ebp-4C]
 0055A7E1    mov        eax,dword ptr [ebx]
 0055A7E3    mov        edx,55AA08; 'FKTABLE_NAME'
 0055A7E8    mov        esi,dword ptr [eax]
 0055A7EA    call       dword ptr [esi+1A8]
 0055A7F0    lea        ecx,[ebp-50]
 0055A7F3    mov        edx,55AA20; 'FKCOLUMN_NAME'
 0055A7F8    mov        eax,dword ptr [ebp-0C]
 0055A7FB    mov        esi,dword ptr [eax]
 0055A7FD    call       dword ptr [esi+74]
 0055A800    mov        ecx,dword ptr [ebp-50]
 0055A803    mov        eax,dword ptr [ebx]
 0055A805    mov        edx,55AA20; 'FKCOLUMN_NAME'
 0055A80A    mov        esi,dword ptr [eax]
 0055A80C    call       dword ptr [esi+1A8]
 0055A812    mov        edx,55AA38; 'KEY_SEQ'
 0055A817    mov        eax,dword ptr [ebp-0C]
 0055A81A    mov        ecx,dword ptr [eax]
 0055A81C    call       dword ptr [ecx+84]
 0055A822    mov        ecx,eax
 0055A824    mov        eax,dword ptr [ebx]
 0055A826    mov        edx,55AA38; 'KEY_SEQ'
 0055A82B    mov        esi,dword ptr [eax]
 0055A82D    call       dword ptr [esi+18C]
 0055A833    mov        edx,55AA48; 'UPDATE_RULE'
 0055A838    mov        eax,dword ptr [ebp-0C]
 0055A83B    mov        ecx,dword ptr [eax]
 0055A83D    call       dword ptr [ecx+84]
 0055A843    mov        ecx,eax
 0055A845    mov        eax,dword ptr [ebx]
 0055A847    mov        edx,55AA48; 'UPDATE_RULE'
 0055A84C    mov        esi,dword ptr [eax]
 0055A84E    call       dword ptr [esi+18C]
 0055A854    mov        edx,55AA5C; 'DELETE_RULE'
 0055A859    mov        eax,dword ptr [ebp-0C]
 0055A85C    mov        ecx,dword ptr [eax]
 0055A85E    call       dword ptr [ecx+84]
 0055A864    mov        ecx,eax
 0055A866    mov        eax,dword ptr [ebx]
 0055A868    mov        edx,55AA5C; 'DELETE_RULE'
 0055A86D    mov        esi,dword ptr [eax]
 0055A86F    call       dword ptr [esi+18C]
 0055A875    lea        ecx,[ebp-54]
 0055A878    mov        edx,55AA70; 'FK_NAME'
 0055A87D    mov        eax,dword ptr [ebp-0C]
 0055A880    mov        esi,dword ptr [eax]
 0055A882    call       dword ptr [esi+74]
 0055A885    mov        ecx,dword ptr [ebp-54]
 0055A888    mov        eax,dword ptr [ebx]
 0055A88A    mov        edx,55AA70; 'FK_NAME'
 0055A88F    mov        esi,dword ptr [eax]
 0055A891    call       dword ptr [esi+1A8]
 0055A897    lea        ecx,[ebp-58]
 0055A89A    mov        edx,55AA80; 'PK_NAME'
 0055A89F    mov        eax,dword ptr [ebp-0C]
 0055A8A2    mov        esi,dword ptr [eax]
 0055A8A4    call       dword ptr [esi+74]
 0055A8A7    mov        ecx,dword ptr [ebp-58]
 0055A8AA    mov        eax,dword ptr [ebx]
 0055A8AC    mov        edx,55AA80; 'PK_NAME'
 0055A8B1    mov        esi,dword ptr [eax]
 0055A8B3    call       dword ptr [esi+1A8]
 0055A8B9    mov        edx,55AA90; 'DEFERRABILITY'
 0055A8BE    mov        eax,dword ptr [ebp-0C]
 0055A8C1    mov        ecx,dword ptr [eax]
 0055A8C3    call       dword ptr [ecx+88]
 0055A8C9    mov        ecx,eax
 0055A8CB    mov        eax,dword ptr [ebx]
 0055A8CD    mov        edx,55AA90; 'DEFERRABILITY'
 0055A8D2    mov        esi,dword ptr [eax]
 0055A8D4    call       dword ptr [esi+190]
 0055A8DA    mov        eax,dword ptr [ebx]
 0055A8DC    mov        edx,dword ptr [eax]
 0055A8DE    call       dword ptr [edx+1D0]
 0055A8E4    mov        eax,dword ptr [ebp-0C]
 0055A8E7    mov        edx,dword ptr [eax]
 0055A8E9    call       dword ptr [edx+0C]
 0055A8EC    test       al,al
<0055A8EE    jne        0055A71A
 0055A8F4    mov        eax,dword ptr [ebp-0C]
 0055A8F7    mov        edx,dword ptr [eax]
 0055A8F9    call       dword ptr [edx+10]
 0055A8FC    xor        eax,eax
 0055A8FE    pop        edx
 0055A8FF    pop        ecx
 0055A900    pop        ecx
 0055A901    mov        dword ptr fs:[eax],edx
 0055A904    push       55A943
 0055A909    lea        eax,[ebp-58]
 0055A90C    mov        edx,8
 0055A911    call       @LStrArrayClr
 0055A916    lea        eax,[ebp-38]
 0055A919    call       @IntfClear
 0055A91E    lea        eax,[ebp-34]
 0055A921    mov        edx,3
 0055A926    call       @LStrArrayClr
 0055A92B    lea        eax,[ebp-10]
 0055A92E    call       @LStrClr
 0055A933    lea        eax,[ebp-0C]
 0055A936    call       @IntfClear
 0055A93B    ret
<0055A93C    jmp        @HandleFinally
<0055A941    jmp        0055A909
 0055A943    pop        esi
 0055A944    pop        ebx
 0055A945    mov        esp,ebp
 0055A947    pop        ebp
 0055A948    ret        8
*}
//end;

//0055AAA0
//procedure sub_0055AAA0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055AAA0    push       ebp
 0055AAA1    mov        ebp,esp
 0055AAA3    push       ecx
 0055AAA4    mov        ecx,0A
 0055AAA9    push       0
 0055AAAB    push       0
 0055AAAD    dec        ecx
<0055AAAE    jne        0055AAA9
 0055AAB0    push       ecx
 0055AAB1    xchg       ecx,dword ptr [ebp-4]
 0055AAB4    push       ebx
 0055AAB5    push       esi
 0055AAB6    mov        dword ptr [ebp-8],ecx
 0055AAB9    mov        dword ptr [ebp-4],edx
 0055AABC    mov        esi,eax
 0055AABE    mov        ebx,dword ptr [ebp+8]
 0055AAC1    xor        eax,eax
 0055AAC3    push       ebp
 0055AAC4    push       55AD7C
 0055AAC9    push       dword ptr fs:[eax]
 0055AACC    mov        dword ptr fs:[eax],esp
 0055AACF    mov        ecx,ebx
 0055AAD1    mov        edx,dword ptr ds:[61B150]; ^gvar_0061DD68:TZMetadataColumnDefs
 0055AAD7    mov        edx,dword ptr [edx]
 0055AAD9    mov        eax,esi
 0055AADB    call       004D8E7C
 0055AAE0    lea        eax,[ebp-10]
 0055AAE3    push       eax
 0055AAE4    lea        ecx,[ebp-2C]
 0055AAE7    mov        dl,27
 0055AAE9    mov        eax,dword ptr [ebp-4]
 0055AAEC    call       004D31AC
 0055AAF1    mov        eax,dword ptr [ebp-2C]
 0055AAF4    mov        dword ptr [ebp-28],eax
 0055AAF7    mov        byte ptr [ebp-24],0B
 0055AAFB    lea        ecx,[ebp-30]
 0055AAFE    mov        dl,27
 0055AB00    mov        eax,dword ptr [ebp-8]
 0055AB03    call       004D31AC
 0055AB08    mov        eax,dword ptr [ebp-30]
 0055AB0B    mov        dword ptr [ebp-20],eax
 0055AB0E    mov        byte ptr [ebp-1C],0B
 0055AB12    lea        ecx,[ebp-34]
 0055AB15    mov        dl,27
 0055AB17    mov        eax,dword ptr [ebp+0C]
 0055AB1A    call       004D31AC
 0055AB1F    mov        eax,dword ptr [ebp-34]
 0055AB22    mov        dword ptr [ebp-18],eax
 0055AB25    mov        byte ptr [ebp-14],0B
 0055AB29    lea        edx,[ebp-28]
 0055AB2C    mov        ecx,2
 0055AB31    mov        eax,55AD94; 'exec sp_jdbc_exportkey %s, %s, %s'
 0055AB36    call       Format
 0055AB3B    mov        eax,dword ptr [ebp-10]
 0055AB3E    push       eax
 0055AB3F    lea        edx,[ebp-38]
 0055AB42    mov        eax,esi
 0055AB44    call       0055C080
 0055AB49    mov        eax,dword ptr [ebp-38]
 0055AB4C    lea        ecx,[ebp-0C]
 0055AB4F    pop        edx
 0055AB50    mov        esi,dword ptr [eax]
 0055AB52    call       dword ptr [esi+0C]
>0055AB55    jmp        0055AD24
 0055AB5A    mov        eax,dword ptr [ebx]
 0055AB5C    mov        edx,dword ptr [eax]
 0055AB5E    call       dword ptr [edx+1E4]
 0055AB64    mov        eax,dword ptr [ebx]
 0055AB66    xor        ecx,ecx
 0055AB68    mov        edx,55ADC0; 'PKTABLE_CAT'
 0055AB6D    mov        esi,dword ptr [eax]
 0055AB6F    call       dword ptr [esi+1A8]
 0055AB75    lea        ecx,[ebp-3C]
 0055AB78    mov        edx,55ADD4; 'PKTABLE_SCHEM'
 0055AB7D    mov        eax,dword ptr [ebp-0C]
 0055AB80    mov        esi,dword ptr [eax]
 0055AB82    call       dword ptr [esi+74]
 0055AB85    mov        ecx,dword ptr [ebp-3C]
 0055AB88    mov        eax,dword ptr [ebx]
 0055AB8A    mov        edx,55ADD4; 'PKTABLE_SCHEM'
 0055AB8F    mov        esi,dword ptr [eax]
 0055AB91    call       dword ptr [esi+1A8]
 0055AB97    lea        ecx,[ebp-40]
 0055AB9A    mov        edx,55ADEC; 'PKTABLE_NAME'
 0055AB9F    mov        eax,dword ptr [ebp-0C]
 0055ABA2    mov        esi,dword ptr [eax]
 0055ABA4    call       dword ptr [esi+74]
 0055ABA7    mov        ecx,dword ptr [ebp-40]
 0055ABAA    mov        eax,dword ptr [ebx]
 0055ABAC    mov        edx,55ADEC; 'PKTABLE_NAME'
 0055ABB1    mov        esi,dword ptr [eax]
 0055ABB3    call       dword ptr [esi+1A8]
 0055ABB9    lea        ecx,[ebp-44]
 0055ABBC    mov        edx,55AE04; 'PKCOLUMN_NAME'
 0055ABC1    mov        eax,dword ptr [ebp-0C]
 0055ABC4    mov        esi,dword ptr [eax]
 0055ABC6    call       dword ptr [esi+74]
 0055ABC9    mov        ecx,dword ptr [ebp-44]
 0055ABCC    mov        eax,dword ptr [ebx]
 0055ABCE    mov        edx,55AE04; 'PKCOLUMN_NAME'
 0055ABD3    mov        esi,dword ptr [eax]
 0055ABD5    call       dword ptr [esi+1A8]
 0055ABDB    mov        eax,dword ptr [ebx]
 0055ABDD    xor        ecx,ecx
 0055ABDF    mov        edx,55AE1C; 'FKTABLE_CAT'
 0055ABE4    mov        esi,dword ptr [eax]
 0055ABE6    call       dword ptr [esi+1A8]
 0055ABEC    lea        ecx,[ebp-48]
 0055ABEF    mov        edx,55AE30; 'FKTABLE_SCHEM'
 0055ABF4    mov        eax,dword ptr [ebp-0C]
 0055ABF7    mov        esi,dword ptr [eax]
 0055ABF9    call       dword ptr [esi+74]
 0055ABFC    mov        ecx,dword ptr [ebp-48]
 0055ABFF    mov        eax,dword ptr [ebx]
 0055AC01    mov        edx,55AE30; 'FKTABLE_SCHEM'
 0055AC06    mov        esi,dword ptr [eax]
 0055AC08    call       dword ptr [esi+1A8]
 0055AC0E    lea        ecx,[ebp-4C]
 0055AC11    mov        edx,55AE48; 'FKTABLE_NAME'
 0055AC16    mov        eax,dword ptr [ebp-0C]
 0055AC19    mov        esi,dword ptr [eax]
 0055AC1B    call       dword ptr [esi+74]
 0055AC1E    mov        ecx,dword ptr [ebp-4C]
 0055AC21    mov        eax,dword ptr [ebx]
 0055AC23    mov        edx,55AE48; 'FKTABLE_NAME'
 0055AC28    mov        esi,dword ptr [eax]
 0055AC2A    call       dword ptr [esi+1A8]
 0055AC30    lea        ecx,[ebp-50]
 0055AC33    mov        edx,55AE60; 'FKCOLUMN_NAME'
 0055AC38    mov        eax,dword ptr [ebp-0C]
 0055AC3B    mov        esi,dword ptr [eax]
 0055AC3D    call       dword ptr [esi+74]
 0055AC40    mov        ecx,dword ptr [ebp-50]
 0055AC43    mov        eax,dword ptr [ebx]
 0055AC45    mov        edx,55AE60; 'FKCOLUMN_NAME'
 0055AC4A    mov        esi,dword ptr [eax]
 0055AC4C    call       dword ptr [esi+1A8]
 0055AC52    mov        edx,55AE78; 'KEY_SEQ'
 0055AC57    mov        eax,dword ptr [ebp-0C]
 0055AC5A    mov        ecx,dword ptr [eax]
 0055AC5C    call       dword ptr [ecx+84]
 0055AC62    mov        ecx,eax
 0055AC64    mov        eax,dword ptr [ebx]
 0055AC66    mov        edx,55AE78; 'KEY_SEQ'
 0055AC6B    mov        esi,dword ptr [eax]
 0055AC6D    call       dword ptr [esi+18C]
 0055AC73    mov        edx,55AE88; 'UPDATE_RULE'
 0055AC78    mov        eax,dword ptr [ebp-0C]
 0055AC7B    mov        ecx,dword ptr [eax]
 0055AC7D    call       dword ptr [ecx+84]
 0055AC83    mov        ecx,eax
 0055AC85    mov        eax,dword ptr [ebx]
 0055AC87    mov        edx,55AE88; 'UPDATE_RULE'
 0055AC8C    mov        esi,dword ptr [eax]
 0055AC8E    call       dword ptr [esi+18C]
 0055AC94    mov        edx,55AE9C; 'DELETE_RULE'
 0055AC99    mov        eax,dword ptr [ebp-0C]
 0055AC9C    mov        ecx,dword ptr [eax]
 0055AC9E    call       dword ptr [ecx+84]
 0055ACA4    mov        ecx,eax
 0055ACA6    mov        eax,dword ptr [ebx]
 0055ACA8    mov        edx,55AE9C; 'DELETE_RULE'
 0055ACAD    mov        esi,dword ptr [eax]
 0055ACAF    call       dword ptr [esi+18C]
 0055ACB5    lea        ecx,[ebp-54]
 0055ACB8    mov        edx,55AEB0; 'FK_NAME'
 0055ACBD    mov        eax,dword ptr [ebp-0C]
 0055ACC0    mov        esi,dword ptr [eax]
 0055ACC2    call       dword ptr [esi+74]
 0055ACC5    mov        ecx,dword ptr [ebp-54]
 0055ACC8    mov        eax,dword ptr [ebx]
 0055ACCA    mov        edx,55AEB0; 'FK_NAME'
 0055ACCF    mov        esi,dword ptr [eax]
 0055ACD1    call       dword ptr [esi+1A8]
 0055ACD7    lea        ecx,[ebp-58]
 0055ACDA    mov        edx,55AEC0; 'PK_NAME'
 0055ACDF    mov        eax,dword ptr [ebp-0C]
 0055ACE2    mov        esi,dword ptr [eax]
 0055ACE4    call       dword ptr [esi+74]
 0055ACE7    mov        ecx,dword ptr [ebp-58]
 0055ACEA    mov        eax,dword ptr [ebx]
 0055ACEC    mov        edx,55AEC0; 'PK_NAME'
 0055ACF1    mov        esi,dword ptr [eax]
 0055ACF3    call       dword ptr [esi+1A8]
 0055ACF9    mov        edx,55AED0; 'DEFERRABILITY'
 0055ACFE    mov        eax,dword ptr [ebp-0C]
 0055AD01    mov        ecx,dword ptr [eax]
 0055AD03    call       dword ptr [ecx+88]
 0055AD09    mov        ecx,eax
 0055AD0B    mov        eax,dword ptr [ebx]
 0055AD0D    mov        edx,55AED0; 'DEFERRABILITY'
 0055AD12    mov        esi,dword ptr [eax]
 0055AD14    call       dword ptr [esi+190]
 0055AD1A    mov        eax,dword ptr [ebx]
 0055AD1C    mov        edx,dword ptr [eax]
 0055AD1E    call       dword ptr [edx+1D0]
 0055AD24    mov        eax,dword ptr [ebp-0C]
 0055AD27    mov        edx,dword ptr [eax]
 0055AD29    call       dword ptr [edx+0C]
 0055AD2C    test       al,al
<0055AD2E    jne        0055AB5A
 0055AD34    mov        eax,dword ptr [ebp-0C]
 0055AD37    mov        edx,dword ptr [eax]
 0055AD39    call       dword ptr [edx+10]
 0055AD3C    xor        eax,eax
 0055AD3E    pop        edx
 0055AD3F    pop        ecx
 0055AD40    pop        ecx
 0055AD41    mov        dword ptr fs:[eax],edx
 0055AD44    push       55AD83
 0055AD49    lea        eax,[ebp-58]
 0055AD4C    mov        edx,8
 0055AD51    call       @LStrArrayClr
 0055AD56    lea        eax,[ebp-38]
 0055AD59    call       @IntfClear
 0055AD5E    lea        eax,[ebp-34]
 0055AD61    mov        edx,3
 0055AD66    call       @LStrArrayClr
 0055AD6B    lea        eax,[ebp-10]
 0055AD6E    call       @LStrClr
 0055AD73    lea        eax,[ebp-0C]
 0055AD76    call       @IntfClear
 0055AD7B    ret
<0055AD7C    jmp        @HandleFinally
<0055AD81    jmp        0055AD49
 0055AD83    pop        esi
 0055AD84    pop        ebx
 0055AD85    mov        esp,ebp
 0055AD87    pop        ebp
 0055AD88    ret        8
*}
//end;

//0055AEE0
//procedure sub_0055AEE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055AEE0    push       ebp
 0055AEE1    mov        ebp,esp
 0055AEE3    push       ecx
 0055AEE4    mov        ecx,0F
 0055AEE9    push       0
 0055AEEB    push       0
 0055AEED    dec        ecx
<0055AEEE    jne        0055AEE9
 0055AEF0    xchg       ecx,dword ptr [ebp-4]
 0055AEF3    push       ebx
 0055AEF4    push       esi
 0055AEF5    mov        dword ptr [ebp-8],ecx
 0055AEF8    mov        dword ptr [ebp-4],edx
 0055AEFB    mov        esi,eax
 0055AEFD    mov        ebx,dword ptr [ebp+8]
 0055AF00    xor        eax,eax
 0055AF02    push       ebp
 0055AF03    push       55B200
 0055AF08    push       dword ptr fs:[eax]
 0055AF0B    mov        dword ptr fs:[eax],esp
 0055AF0E    mov        ecx,ebx
 0055AF10    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 0055AF16    mov        edx,dword ptr [edx]
 0055AF18    mov        eax,esi
 0055AF1A    call       004D8E7C
 0055AF1F    lea        eax,[ebp-10]
 0055AF22    push       eax
 0055AF23    lea        ecx,[ebp-44]
 0055AF26    mov        dl,27
 0055AF28    mov        eax,dword ptr [ebp-4]
 0055AF2B    call       004D31AC
 0055AF30    mov        eax,dword ptr [ebp-44]
 0055AF33    mov        dword ptr [ebp-40],eax
 0055AF36    mov        byte ptr [ebp-3C],0B
 0055AF3A    lea        ecx,[ebp-48]
 0055AF3D    mov        dl,27
 0055AF3F    mov        eax,dword ptr [ebp-8]
 0055AF42    call       004D31AC
 0055AF47    mov        eax,dword ptr [ebp-48]
 0055AF4A    mov        dword ptr [ebp-38],eax
 0055AF4D    mov        byte ptr [ebp-34],0B
 0055AF51    lea        ecx,[ebp-4C]
 0055AF54    mov        dl,27
 0055AF56    mov        eax,dword ptr [ebp+18]
 0055AF59    call       004D31AC
 0055AF5E    mov        eax,dword ptr [ebp-4C]
 0055AF61    mov        dword ptr [ebp-30],eax
 0055AF64    mov        byte ptr [ebp-2C],0B
 0055AF68    lea        ecx,[ebp-50]
 0055AF6B    mov        dl,27
 0055AF6D    mov        eax,dword ptr [ebp+14]
 0055AF70    call       004D31AC
 0055AF75    mov        eax,dword ptr [ebp-50]
 0055AF78    mov        dword ptr [ebp-28],eax
 0055AF7B    mov        byte ptr [ebp-24],0B
 0055AF7F    lea        ecx,[ebp-54]
 0055AF82    mov        dl,27
 0055AF84    mov        eax,dword ptr [ebp+10]
 0055AF87    call       004D31AC
 0055AF8C    mov        eax,dword ptr [ebp-54]
 0055AF8F    mov        dword ptr [ebp-20],eax
 0055AF92    mov        byte ptr [ebp-1C],0B
 0055AF96    lea        ecx,[ebp-58]
 0055AF99    mov        dl,27
 0055AF9B    mov        eax,dword ptr [ebp+0C]
 0055AF9E    call       004D31AC
 0055AFA3    mov        eax,dword ptr [ebp-58]
 0055AFA6    mov        dword ptr [ebp-18],eax
 0055AFA9    mov        byte ptr [ebp-14],0B
 0055AFAD    lea        edx,[ebp-40]
 0055AFB0    mov        ecx,5
 0055AFB5    mov        eax,55B218; 'exec sp_jdbc_getcrossreferences %s, %s, %s, %s, %s, %s'
 0055AFBA    call       Format
 0055AFBF    mov        eax,dword ptr [ebp-10]
 0055AFC2    push       eax
 0055AFC3    lea        edx,[ebp-5C]
 0055AFC6    mov        eax,esi
 0055AFC8    call       0055C080
 0055AFCD    mov        eax,dword ptr [ebp-5C]
 0055AFD0    lea        ecx,[ebp-0C]
 0055AFD3    pop        edx
 0055AFD4    mov        esi,dword ptr [eax]
 0055AFD6    call       dword ptr [esi+0C]
>0055AFD9    jmp        0055B1A8
 0055AFDE    mov        eax,dword ptr [ebx]
 0055AFE0    mov        edx,dword ptr [eax]
 0055AFE2    call       dword ptr [edx+1E4]
 0055AFE8    mov        eax,dword ptr [ebx]
 0055AFEA    xor        ecx,ecx
 0055AFEC    mov        edx,55B258; 'PKTABLE_CAT'
 0055AFF1    mov        esi,dword ptr [eax]
 0055AFF3    call       dword ptr [esi+1A8]
 0055AFF9    lea        ecx,[ebp-60]
 0055AFFC    mov        edx,55B26C; 'PKTABLE_SCHEM'
 0055B001    mov        eax,dword ptr [ebp-0C]
 0055B004    mov        esi,dword ptr [eax]
 0055B006    call       dword ptr [esi+74]
 0055B009    mov        ecx,dword ptr [ebp-60]
 0055B00C    mov        eax,dword ptr [ebx]
 0055B00E    mov        edx,55B26C; 'PKTABLE_SCHEM'
 0055B013    mov        esi,dword ptr [eax]
 0055B015    call       dword ptr [esi+1A8]
 0055B01B    lea        ecx,[ebp-64]
 0055B01E    mov        edx,55B284; 'PKTABLE_NAME'
 0055B023    mov        eax,dword ptr [ebp-0C]
 0055B026    mov        esi,dword ptr [eax]
 0055B028    call       dword ptr [esi+74]
 0055B02B    mov        ecx,dword ptr [ebp-64]
 0055B02E    mov        eax,dword ptr [ebx]
 0055B030    mov        edx,55B284; 'PKTABLE_NAME'
 0055B035    mov        esi,dword ptr [eax]
 0055B037    call       dword ptr [esi+1A8]
 0055B03D    lea        ecx,[ebp-68]
 0055B040    mov        edx,55B29C; 'PKCOLUMN_NAME'
 0055B045    mov        eax,dword ptr [ebp-0C]
 0055B048    mov        esi,dword ptr [eax]
 0055B04A    call       dword ptr [esi+74]
 0055B04D    mov        ecx,dword ptr [ebp-68]
 0055B050    mov        eax,dword ptr [ebx]
 0055B052    mov        edx,55B29C; 'PKCOLUMN_NAME'
 0055B057    mov        esi,dword ptr [eax]
 0055B059    call       dword ptr [esi+1A8]
 0055B05F    mov        eax,dword ptr [ebx]
 0055B061    xor        ecx,ecx
 0055B063    mov        edx,55B2B4; 'FKTABLE_CAT'
 0055B068    mov        esi,dword ptr [eax]
 0055B06A    call       dword ptr [esi+1A8]
 0055B070    lea        ecx,[ebp-6C]
 0055B073    mov        edx,55B2C8; 'FKTABLE_SCHEM'
 0055B078    mov        eax,dword ptr [ebp-0C]
 0055B07B    mov        esi,dword ptr [eax]
 0055B07D    call       dword ptr [esi+74]
 0055B080    mov        ecx,dword ptr [ebp-6C]
 0055B083    mov        eax,dword ptr [ebx]
 0055B085    mov        edx,55B2C8; 'FKTABLE_SCHEM'
 0055B08A    mov        esi,dword ptr [eax]
 0055B08C    call       dword ptr [esi+1A8]
 0055B092    lea        ecx,[ebp-70]
 0055B095    mov        edx,55B2E0; 'FKTABLE_NAME'
 0055B09A    mov        eax,dword ptr [ebp-0C]
 0055B09D    mov        esi,dword ptr [eax]
 0055B09F    call       dword ptr [esi+74]
 0055B0A2    mov        ecx,dword ptr [ebp-70]
 0055B0A5    mov        eax,dword ptr [ebx]
 0055B0A7    mov        edx,55B2E0; 'FKTABLE_NAME'
 0055B0AC    mov        esi,dword ptr [eax]
 0055B0AE    call       dword ptr [esi+1A8]
 0055B0B4    lea        ecx,[ebp-74]
 0055B0B7    mov        edx,55B2F8; 'FKCOLUMN_NAME'
 0055B0BC    mov        eax,dword ptr [ebp-0C]
 0055B0BF    mov        esi,dword ptr [eax]
 0055B0C1    call       dword ptr [esi+74]
 0055B0C4    mov        ecx,dword ptr [ebp-74]
 0055B0C7    mov        eax,dword ptr [ebx]
 0055B0C9    mov        edx,55B2F8; 'FKCOLUMN_NAME'
 0055B0CE    mov        esi,dword ptr [eax]
 0055B0D0    call       dword ptr [esi+1A8]
 0055B0D6    mov        edx,55B310; 'KEY_SEQ'
 0055B0DB    mov        eax,dword ptr [ebp-0C]
 0055B0DE    mov        ecx,dword ptr [eax]
 0055B0E0    call       dword ptr [ecx+84]
 0055B0E6    mov        ecx,eax
 0055B0E8    mov        eax,dword ptr [ebx]
 0055B0EA    mov        edx,55B310; 'KEY_SEQ'
 0055B0EF    mov        esi,dword ptr [eax]
 0055B0F1    call       dword ptr [esi+18C]
 0055B0F7    mov        edx,55B320; 'UPDATE_RULE'
 0055B0FC    mov        eax,dword ptr [ebp-0C]
 0055B0FF    mov        ecx,dword ptr [eax]
 0055B101    call       dword ptr [ecx+84]
 0055B107    mov        ecx,eax
 0055B109    mov        eax,dword ptr [ebx]
 0055B10B    mov        edx,55B320; 'UPDATE_RULE'
 0055B110    mov        esi,dword ptr [eax]
 0055B112    call       dword ptr [esi+18C]
 0055B118    mov        edx,55B334; 'DELETE_RULE'
 0055B11D    mov        eax,dword ptr [ebp-0C]
 0055B120    mov        ecx,dword ptr [eax]
 0055B122    call       dword ptr [ecx+84]
 0055B128    mov        ecx,eax
 0055B12A    mov        eax,dword ptr [ebx]
 0055B12C    mov        edx,55B334; 'DELETE_RULE'
 0055B131    mov        esi,dword ptr [eax]
 0055B133    call       dword ptr [esi+18C]
 0055B139    lea        ecx,[ebp-78]
 0055B13C    mov        edx,55B348; 'FK_NAME'
 0055B141    mov        eax,dword ptr [ebp-0C]
 0055B144    mov        esi,dword ptr [eax]
 0055B146    call       dword ptr [esi+74]
 0055B149    mov        ecx,dword ptr [ebp-78]
 0055B14C    mov        eax,dword ptr [ebx]
 0055B14E    mov        edx,55B348; 'FK_NAME'
 0055B153    mov        esi,dword ptr [eax]
 0055B155    call       dword ptr [esi+1A8]
 0055B15B    lea        ecx,[ebp-7C]
 0055B15E    mov        edx,55B358; 'PK_NAME'
 0055B163    mov        eax,dword ptr [ebp-0C]
 0055B166    mov        esi,dword ptr [eax]
 0055B168    call       dword ptr [esi+74]
 0055B16B    mov        ecx,dword ptr [ebp-7C]
 0055B16E    mov        eax,dword ptr [ebx]
 0055B170    mov        edx,55B358; 'PK_NAME'
 0055B175    mov        esi,dword ptr [eax]
 0055B177    call       dword ptr [esi+1A8]
 0055B17D    mov        edx,55B368; 'DEFERRABILITY'
 0055B182    mov        eax,dword ptr [ebp-0C]
 0055B185    mov        ecx,dword ptr [eax]
 0055B187    call       dword ptr [ecx+88]
 0055B18D    mov        ecx,eax
 0055B18F    mov        eax,dword ptr [ebx]
 0055B191    mov        edx,55B368; 'DEFERRABILITY'
 0055B196    mov        esi,dword ptr [eax]
 0055B198    call       dword ptr [esi+190]
 0055B19E    mov        eax,dword ptr [ebx]
 0055B1A0    mov        edx,dword ptr [eax]
 0055B1A2    call       dword ptr [edx+1D0]
 0055B1A8    mov        eax,dword ptr [ebp-0C]
 0055B1AB    mov        edx,dword ptr [eax]
 0055B1AD    call       dword ptr [edx+0C]
 0055B1B0    test       al,al
<0055B1B2    jne        0055AFDE
 0055B1B8    mov        eax,dword ptr [ebp-0C]
 0055B1BB    mov        edx,dword ptr [eax]
 0055B1BD    call       dword ptr [edx+10]
 0055B1C0    xor        eax,eax
 0055B1C2    pop        edx
 0055B1C3    pop        ecx
 0055B1C4    pop        ecx
 0055B1C5    mov        dword ptr fs:[eax],edx
 0055B1C8    push       55B207
 0055B1CD    lea        eax,[ebp-7C]
 0055B1D0    mov        edx,8
 0055B1D5    call       @LStrArrayClr
 0055B1DA    lea        eax,[ebp-5C]
 0055B1DD    call       @IntfClear
 0055B1E2    lea        eax,[ebp-58]
 0055B1E5    mov        edx,6
 0055B1EA    call       @LStrArrayClr
 0055B1EF    lea        eax,[ebp-10]
 0055B1F2    call       @LStrClr
 0055B1F7    lea        eax,[ebp-0C]
 0055B1FA    call       @IntfClear
 0055B1FF    ret
<0055B200    jmp        @HandleFinally
<0055B205    jmp        0055B1CD
 0055B207    pop        esi
 0055B208    pop        ebx
 0055B209    mov        esp,ebp
 0055B20B    pop        ebp
 0055B20C    ret        14
*}
//end;

//0055B378
//procedure sub_0055B378(?:?);
//begin
{*
 0055B378    push       ebp
 0055B379    mov        ebp,esp
 0055B37B    xor        ecx,ecx
 0055B37D    push       ecx
 0055B37E    push       ecx
 0055B37F    push       ecx
 0055B380    push       ecx
 0055B381    push       ecx
 0055B382    push       ecx
 0055B383    push       ecx
 0055B384    push       ebx
 0055B385    push       esi
 0055B386    mov        ebx,edx
 0055B388    mov        esi,eax
 0055B38A    xor        eax,eax
 0055B38C    push       ebp
 0055B38D    push       55B691
 0055B392    push       dword ptr fs:[eax]
 0055B395    mov        dword ptr fs:[eax],esp
 0055B398    mov        ecx,ebx
 0055B39A    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 0055B3A0    mov        edx,dword ptr [edx]
 0055B3A2    mov        eax,esi
 0055B3A4    call       004D8E7C
 0055B3A9    lea        edx,[ebp-8]
 0055B3AC    mov        eax,esi
 0055B3AE    call       0055C080
 0055B3B3    mov        eax,dword ptr [ebp-8]
 0055B3B6    lea        ecx,[ebp-4]
 0055B3B9    mov        edx,55B6A8; 'exec sp_jdbc_datatype_info'
 0055B3BE    mov        esi,dword ptr [eax]
 0055B3C0    call       dword ptr [esi+0C]
>0055B3C3    jmp        0055B64E
 0055B3C8    mov        eax,dword ptr [ebx]
 0055B3CA    mov        edx,dword ptr [eax]
 0055B3CC    call       dword ptr [edx+1E4]
 0055B3D2    lea        ecx,[ebp-0C]
 0055B3D5    mov        edx,55B6CC; 'TYPE_NAME'
 0055B3DA    mov        eax,dword ptr [ebp-4]
 0055B3DD    mov        esi,dword ptr [eax]
 0055B3DF    call       dword ptr [esi+74]
 0055B3E2    mov        ecx,dword ptr [ebp-0C]
 0055B3E5    mov        eax,dword ptr [ebx]
 0055B3E7    mov        edx,55B6CC; 'TYPE_NAME'
 0055B3EC    mov        esi,dword ptr [eax]
 0055B3EE    call       dword ptr [esi+1A8]
 0055B3F4    mov        edx,55B6E0; 'DATA_TYPE'
 0055B3F9    mov        eax,dword ptr [ebp-4]
 0055B3FC    mov        ecx,dword ptr [eax]
 0055B3FE    call       dword ptr [ecx+84]
 0055B404    call       005564B4
 0055B409    xor        ecx,ecx
 0055B40B    mov        cl,al
 0055B40D    mov        eax,dword ptr [ebx]
 0055B40F    mov        edx,55B6E0; 'DATA_TYPE'
 0055B414    mov        esi,dword ptr [eax]
 0055B416    call       dword ptr [esi+18C]
 0055B41C    mov        edx,55B6F4; 'PRECISION'
 0055B421    mov        eax,dword ptr [ebp-4]
 0055B424    mov        ecx,dword ptr [eax]
 0055B426    call       dword ptr [ecx+88]
 0055B42C    mov        ecx,eax
 0055B42E    mov        eax,dword ptr [ebx]
 0055B430    mov        edx,55B6F4; 'PRECISION'
 0055B435    mov        esi,dword ptr [eax]
 0055B437    call       dword ptr [esi+190]
 0055B43D    lea        ecx,[ebp-10]
 0055B440    mov        edx,55B708; 'LITERAL_PREFIX'
 0055B445    mov        eax,dword ptr [ebp-4]
 0055B448    mov        esi,dword ptr [eax]
 0055B44A    call       dword ptr [esi+74]
 0055B44D    mov        ecx,dword ptr [ebp-10]
 0055B450    mov        eax,dword ptr [ebx]
 0055B452    mov        edx,55B708; 'LITERAL_PREFIX'
 0055B457    mov        esi,dword ptr [eax]
 0055B459    call       dword ptr [esi+1A8]
 0055B45F    lea        ecx,[ebp-14]
 0055B462    mov        edx,55B720; 'LITERAL_SUFFIX'
 0055B467    mov        eax,dword ptr [ebp-4]
 0055B46A    mov        esi,dword ptr [eax]
 0055B46C    call       dword ptr [esi+74]
 0055B46F    mov        ecx,dword ptr [ebp-14]
 0055B472    mov        eax,dword ptr [ebx]
 0055B474    mov        edx,55B720; 'LITERAL_SUFFIX'
 0055B479    mov        esi,dword ptr [eax]
 0055B47B    call       dword ptr [esi+1A8]
 0055B481    lea        ecx,[ebp-18]
 0055B484    mov        edx,55B738; 'CREATE_PARAMS'
 0055B489    mov        eax,dword ptr [ebp-4]
 0055B48C    mov        esi,dword ptr [eax]
 0055B48E    call       dword ptr [esi+74]
 0055B491    mov        ecx,dword ptr [ebp-18]
 0055B494    mov        eax,dword ptr [ebx]
 0055B496    mov        edx,55B738; 'CREATE_PARAMS'
 0055B49B    mov        esi,dword ptr [eax]
 0055B49D    call       dword ptr [esi+1A8]
 0055B4A3    mov        edx,55B750; 'NULLABLE'
 0055B4A8    mov        eax,dword ptr [ebp-4]
 0055B4AB    mov        ecx,dword ptr [eax]
 0055B4AD    call       dword ptr [ecx+84]
 0055B4B3    mov        ecx,eax
 0055B4B5    mov        eax,dword ptr [ebx]
 0055B4B7    mov        edx,55B750; 'NULLABLE'
 0055B4BC    mov        esi,dword ptr [eax]
 0055B4BE    call       dword ptr [esi+18C]
 0055B4C4    mov        edx,55B764; 'CASE_SENSITIVE'
 0055B4C9    mov        eax,dword ptr [ebp-4]
 0055B4CC    mov        ecx,dword ptr [eax]
 0055B4CE    call       dword ptr [ecx+84]
 0055B4D4    cmp        ax,1
 0055B4D8    sete       cl
 0055B4DB    mov        eax,dword ptr [ebx]
 0055B4DD    mov        edx,55B764; 'CASE_SENSITIVE'
 0055B4E2    mov        esi,dword ptr [eax]
 0055B4E4    call       dword ptr [esi+184]
 0055B4EA    mov        edx,55B77C; 'SEARCHABLE'
 0055B4EF    mov        eax,dword ptr [ebp-4]
 0055B4F2    mov        ecx,dword ptr [eax]
 0055B4F4    call       dword ptr [ecx+84]
 0055B4FA    mov        ecx,eax
 0055B4FC    mov        eax,dword ptr [ebx]
 0055B4FE    mov        edx,55B77C; 'SEARCHABLE'
 0055B503    mov        esi,dword ptr [eax]
 0055B505    call       dword ptr [esi+18C]
 0055B50B    mov        edx,55B790; 'UNSIGNED_ATTRIBUTE'
 0055B510    mov        eax,dword ptr [ebp-4]
 0055B513    mov        ecx,dword ptr [eax]
 0055B515    call       dword ptr [ecx+84]
 0055B51B    cmp        ax,1
 0055B51F    sete       cl
 0055B522    mov        eax,dword ptr [ebx]
 0055B524    mov        edx,55B790; 'UNSIGNED_ATTRIBUTE'
 0055B529    mov        esi,dword ptr [eax]
 0055B52B    call       dword ptr [esi+184]
 0055B531    mov        edx,55B7AC; 'FIXED_PREC_SCALE'
 0055B536    mov        eax,dword ptr [ebp-4]
 0055B539    mov        ecx,dword ptr [eax]
 0055B53B    call       dword ptr [ecx+84]
 0055B541    cmp        ax,1
 0055B545    sete       cl
 0055B548    mov        eax,dword ptr [ebx]
 0055B54A    mov        edx,55B7AC; 'FIXED_PREC_SCALE'
 0055B54F    mov        esi,dword ptr [eax]
 0055B551    call       dword ptr [esi+184]
 0055B557    mov        edx,55B7C8; 'AUTO_INCREMENT'
 0055B55C    mov        eax,dword ptr [ebp-4]
 0055B55F    mov        ecx,dword ptr [eax]
 0055B561    call       dword ptr [ecx+84]
 0055B567    cmp        ax,1
 0055B56B    sete       cl
 0055B56E    mov        eax,dword ptr [ebx]
 0055B570    mov        edx,55B7C8; 'AUTO_INCREMENT'
 0055B575    mov        esi,dword ptr [eax]
 0055B577    call       dword ptr [esi+184]
 0055B57D    lea        ecx,[ebp-1C]
 0055B580    mov        edx,55B7E0; 'LOCAL_TYPE_NAME'
 0055B585    mov        eax,dword ptr [ebp-4]
 0055B588    mov        esi,dword ptr [eax]
 0055B58A    call       dword ptr [esi+74]
 0055B58D    mov        ecx,dword ptr [ebp-1C]
 0055B590    mov        eax,dword ptr [ebx]
 0055B592    mov        edx,55B7E0; 'LOCAL_TYPE_NAME'
 0055B597    mov        esi,dword ptr [eax]
 0055B599    call       dword ptr [esi+1A8]
 0055B59F    mov        edx,55B7F8; 'MINIMUM_SCALE'
 0055B5A4    mov        eax,dword ptr [ebp-4]
 0055B5A7    mov        ecx,dword ptr [eax]
 0055B5A9    call       dword ptr [ecx+84]
 0055B5AF    mov        ecx,eax
 0055B5B1    mov        eax,dword ptr [ebx]
 0055B5B3    mov        edx,55B7F8; 'MINIMUM_SCALE'
 0055B5B8    mov        esi,dword ptr [eax]
 0055B5BA    call       dword ptr [esi+18C]
 0055B5C0    mov        edx,55B810; 'MAXIMUM_SCALE'
 0055B5C5    mov        eax,dword ptr [ebp-4]
 0055B5C8    mov        ecx,dword ptr [eax]
 0055B5CA    call       dword ptr [ecx+84]
 0055B5D0    mov        ecx,eax
 0055B5D2    mov        eax,dword ptr [ebx]
 0055B5D4    mov        edx,55B810; 'MAXIMUM_SCALE'
 0055B5D9    mov        esi,dword ptr [eax]
 0055B5DB    call       dword ptr [esi+18C]
 0055B5E1    mov        edx,55B828; 'SQL_DATA_TYPE'
 0055B5E6    mov        eax,dword ptr [ebp-4]
 0055B5E9    mov        ecx,dword ptr [eax]
 0055B5EB    call       dword ptr [ecx+84]
 0055B5F1    mov        ecx,eax
 0055B5F3    mov        eax,dword ptr [ebx]
 0055B5F5    mov        edx,55B828; 'SQL_DATA_TYPE'
 0055B5FA    mov        esi,dword ptr [eax]
 0055B5FC    call       dword ptr [esi+18C]
 0055B602    mov        edx,55B840; 'SQL_DATETIME_SUB'
 0055B607    mov        eax,dword ptr [ebp-4]
 0055B60A    mov        ecx,dword ptr [eax]
 0055B60C    call       dword ptr [ecx+84]
 0055B612    mov        ecx,eax
 0055B614    mov        eax,dword ptr [ebx]
 0055B616    mov        edx,55B840; 'SQL_DATETIME_SUB'
 0055B61B    mov        esi,dword ptr [eax]
 0055B61D    call       dword ptr [esi+18C]
 0055B623    mov        edx,55B85C; 'NUM_PREC_RADIX'
 0055B628    mov        eax,dword ptr [ebp-4]
 0055B62B    mov        ecx,dword ptr [eax]
 0055B62D    call       dword ptr [ecx+84]
 0055B633    mov        ecx,eax
 0055B635    mov        eax,dword ptr [ebx]
 0055B637    mov        edx,55B85C; 'NUM_PREC_RADIX'
 0055B63C    mov        esi,dword ptr [eax]
 0055B63E    call       dword ptr [esi+18C]
 0055B644    mov        eax,dword ptr [ebx]
 0055B646    mov        edx,dword ptr [eax]
 0055B648    call       dword ptr [edx+1D0]
 0055B64E    mov        eax,dword ptr [ebp-4]
 0055B651    mov        edx,dword ptr [eax]
 0055B653    call       dword ptr [edx+0C]
 0055B656    test       al,al
<0055B658    jne        0055B3C8
 0055B65E    mov        eax,dword ptr [ebp-4]
 0055B661    mov        edx,dword ptr [eax]
 0055B663    call       dword ptr [edx+10]
 0055B666    xor        eax,eax
 0055B668    pop        edx
 0055B669    pop        ecx
 0055B66A    pop        ecx
 0055B66B    mov        dword ptr fs:[eax],edx
 0055B66E    push       55B698
 0055B673    lea        eax,[ebp-1C]
 0055B676    mov        edx,5
 0055B67B    call       @LStrArrayClr
 0055B680    lea        eax,[ebp-8]
 0055B683    call       @IntfClear
 0055B688    lea        eax,[ebp-4]
 0055B68B    call       @IntfClear
 0055B690    ret
<0055B691    jmp        @HandleFinally
<0055B696    jmp        0055B673
 0055B698    pop        esi
 0055B699    pop        ebx
 0055B69A    mov        esp,ebp
 0055B69C    pop        ebp
 0055B69D    ret
*}
//end;

//0055B86C
//procedure sub_0055B86C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055B86C    push       ebp
 0055B86D    mov        ebp,esp
 0055B86F    push       ecx
 0055B870    mov        ecx,0D
 0055B875    push       0
 0055B877    push       0
 0055B879    dec        ecx
<0055B87A    jne        0055B875
 0055B87C    xchg       ecx,dword ptr [ebp-4]
 0055B87F    push       ebx
 0055B880    push       esi
 0055B881    mov        dword ptr [ebp-8],ecx
 0055B884    mov        dword ptr [ebp-4],edx
 0055B887    mov        esi,eax
 0055B889    mov        ebx,dword ptr [ebp+8]
 0055B88C    xor        eax,eax
 0055B88E    push       ebp
 0055B88F    push       55BB9F
 0055B894    push       dword ptr fs:[eax]
 0055B897    mov        dword ptr fs:[eax],esp
 0055B89A    mov        ecx,ebx
 0055B89C    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 0055B8A2    mov        edx,dword ptr [edx]
 0055B8A4    mov        eax,esi
 0055B8A6    call       004D8E7C
 0055B8AB    cmp        byte ptr [ebp+10],0
>0055B8AF    je         0055B8C0
 0055B8B1    lea        eax,[ebp-0C]
 0055B8B4    mov        edx,55BBB8; ''1''
 0055B8B9    call       @LStrLAsg
>0055B8BE    jmp        0055B8CD
 0055B8C0    lea        eax,[ebp-0C]
 0055B8C3    mov        edx,55BBC4; ''0''
 0055B8C8    call       @LStrLAsg
 0055B8CD    cmp        byte ptr [ebp+0C],0
>0055B8D1    je         0055B8E2
 0055B8D3    lea        eax,[ebp-10]
 0055B8D6    mov        edx,55BBB8; ''1''
 0055B8DB    call       @LStrLAsg
>0055B8E0    jmp        0055B8EF
 0055B8E2    lea        eax,[ebp-10]
 0055B8E5    mov        edx,55BBC4; ''0''
 0055B8EA    call       @LStrLAsg
 0055B8EF    lea        eax,[ebp-18]
 0055B8F2    push       eax
 0055B8F3    lea        ecx,[ebp-44]
 0055B8F6    mov        dl,27
 0055B8F8    mov        eax,dword ptr [ebp-4]
 0055B8FB    call       004D31AC
 0055B900    mov        eax,dword ptr [ebp-44]
 0055B903    mov        dword ptr [ebp-40],eax
 0055B906    mov        byte ptr [ebp-3C],0B
 0055B90A    lea        ecx,[ebp-48]
 0055B90D    mov        dl,27
 0055B90F    mov        eax,dword ptr [ebp-8]
 0055B912    call       004D31AC
 0055B917    mov        eax,dword ptr [ebp-48]
 0055B91A    mov        dword ptr [ebp-38],eax
 0055B91D    mov        byte ptr [ebp-34],0B
 0055B921    lea        ecx,[ebp-4C]
 0055B924    mov        dl,27
 0055B926    mov        eax,dword ptr [ebp+14]
 0055B929    call       004D31AC
 0055B92E    mov        eax,dword ptr [ebp-4C]
 0055B931    mov        dword ptr [ebp-30],eax
 0055B934    mov        byte ptr [ebp-2C],0B
 0055B938    mov        eax,dword ptr [ebp-0C]
 0055B93B    mov        dword ptr [ebp-28],eax
 0055B93E    mov        byte ptr [ebp-24],0B
 0055B942    mov        eax,dword ptr [ebp-10]
 0055B945    mov        dword ptr [ebp-20],eax
 0055B948    mov        byte ptr [ebp-1C],0B
 0055B94C    lea        edx,[ebp-40]
 0055B94F    mov        ecx,4
 0055B954    mov        eax,55BBD0; 'exec sp_jdbc_getindexinfo %s, %s, %s, %s, %s'
 0055B959    call       Format
 0055B95E    mov        eax,dword ptr [ebp-18]
 0055B961    push       eax
 0055B962    lea        edx,[ebp-50]
 0055B965    mov        eax,esi
 0055B967    call       0055C080
 0055B96C    mov        eax,dword ptr [ebp-50]
 0055B96F    lea        ecx,[ebp-14]
 0055B972    pop        edx
 0055B973    mov        esi,dword ptr [eax]
 0055B975    call       dword ptr [esi+0C]
>0055B978    jmp        0055BB3A
 0055B97D    mov        eax,dword ptr [ebx]
 0055B97F    mov        edx,dword ptr [eax]
 0055B981    call       dword ptr [edx+1E4]
 0055B987    mov        eax,dword ptr [ebx]
 0055B989    xor        ecx,ecx
 0055B98B    mov        edx,55BC08; 'TABLE_CAT'
 0055B990    mov        esi,dword ptr [eax]
 0055B992    call       dword ptr [esi+1A8]
 0055B998    lea        ecx,[ebp-54]
 0055B99B    mov        edx,55BC1C; 'TABLE_SCHEM'
 0055B9A0    mov        eax,dword ptr [ebp-14]
 0055B9A3    mov        esi,dword ptr [eax]
 0055B9A5    call       dword ptr [esi+74]
 0055B9A8    mov        ecx,dword ptr [ebp-54]
 0055B9AB    mov        eax,dword ptr [ebx]
 0055B9AD    mov        edx,55BC1C; 'TABLE_SCHEM'
 0055B9B2    mov        esi,dword ptr [eax]
 0055B9B4    call       dword ptr [esi+1A8]
 0055B9BA    lea        ecx,[ebp-58]
 0055B9BD    mov        edx,55BC30; 'TABLE_NAME'
 0055B9C2    mov        eax,dword ptr [ebp-14]
 0055B9C5    mov        esi,dword ptr [eax]
 0055B9C7    call       dword ptr [esi+74]
 0055B9CA    mov        ecx,dword ptr [ebp-58]
 0055B9CD    mov        eax,dword ptr [ebx]
 0055B9CF    mov        edx,55BC30; 'TABLE_NAME'
 0055B9D4    mov        esi,dword ptr [eax]
 0055B9D6    call       dword ptr [esi+1A8]
 0055B9DC    mov        edx,55BC44; 'NON_UNIQUE'
 0055B9E1    mov        eax,dword ptr [ebp-14]
 0055B9E4    mov        ecx,dword ptr [eax]
 0055B9E6    call       dword ptr [ecx+84]
 0055B9EC    cmp        ax,1
 0055B9F0    sete       cl
 0055B9F3    mov        eax,dword ptr [ebx]
 0055B9F5    mov        edx,55BC44; 'NON_UNIQUE'
 0055B9FA    mov        esi,dword ptr [eax]
 0055B9FC    call       dword ptr [esi+184]
 0055BA02    lea        ecx,[ebp-5C]
 0055BA05    mov        edx,55BC58; 'INDEX_QUALIFIER'
 0055BA0A    mov        eax,dword ptr [ebp-14]
 0055BA0D    mov        esi,dword ptr [eax]
 0055BA0F    call       dword ptr [esi+74]
 0055BA12    mov        ecx,dword ptr [ebp-5C]
 0055BA15    mov        eax,dword ptr [ebx]
 0055BA17    mov        edx,55BC58; 'INDEX_QUALIFIER'
 0055BA1C    mov        esi,dword ptr [eax]
 0055BA1E    call       dword ptr [esi+1A8]
 0055BA24    lea        ecx,[ebp-60]
 0055BA27    mov        edx,55BC70; 'INDEX_NAME'
 0055BA2C    mov        eax,dword ptr [ebp-14]
 0055BA2F    mov        esi,dword ptr [eax]
 0055BA31    call       dword ptr [esi+74]
 0055BA34    mov        ecx,dword ptr [ebp-60]
 0055BA37    mov        eax,dword ptr [ebx]
 0055BA39    mov        edx,55BC70; 'INDEX_NAME'
 0055BA3E    mov        esi,dword ptr [eax]
 0055BA40    call       dword ptr [esi+1A8]
 0055BA46    mov        edx,55BC84; 'TYPE'
 0055BA4B    mov        eax,dword ptr [ebp-14]
 0055BA4E    mov        ecx,dword ptr [eax]
 0055BA50    call       dword ptr [ecx+84]
 0055BA56    mov        ecx,eax
 0055BA58    mov        eax,dword ptr [ebx]
 0055BA5A    mov        edx,55BC84; 'TYPE'
 0055BA5F    mov        esi,dword ptr [eax]
 0055BA61    call       dword ptr [esi+18C]
 0055BA67    mov        edx,55BC94; 'ORDINAL_POSITION'
 0055BA6C    mov        eax,dword ptr [ebp-14]
 0055BA6F    mov        ecx,dword ptr [eax]
 0055BA71    call       dword ptr [ecx+84]
 0055BA77    mov        ecx,eax
 0055BA79    mov        eax,dword ptr [ebx]
 0055BA7B    mov        edx,55BC94; 'ORDINAL_POSITION'
 0055BA80    mov        esi,dword ptr [eax]
 0055BA82    call       dword ptr [esi+18C]
 0055BA88    lea        ecx,[ebp-64]
 0055BA8B    mov        edx,55BCB0; 'COLUMN_NAME'
 0055BA90    mov        eax,dword ptr [ebp-14]
 0055BA93    mov        esi,dword ptr [eax]
 0055BA95    call       dword ptr [esi+74]
 0055BA98    mov        ecx,dword ptr [ebp-64]
 0055BA9B    mov        eax,dword ptr [ebx]
 0055BA9D    mov        edx,55BCB0; 'COLUMN_NAME'
 0055BAA2    mov        esi,dword ptr [eax]
 0055BAA4    call       dword ptr [esi+1A8]
 0055BAAA    lea        ecx,[ebp-68]
 0055BAAD    mov        edx,55BCC4; 'ASC_OR_DESC'
 0055BAB2    mov        eax,dword ptr [ebp-14]
 0055BAB5    mov        esi,dword ptr [eax]
 0055BAB7    call       dword ptr [esi+74]
 0055BABA    mov        ecx,dword ptr [ebp-68]
 0055BABD    mov        eax,dword ptr [ebx]
 0055BABF    mov        edx,55BCC4; 'ASC_OR_DESC'
 0055BAC4    mov        esi,dword ptr [eax]
 0055BAC6    call       dword ptr [esi+1A8]
 0055BACC    mov        edx,55BCD8; 'CARDINALITY'
 0055BAD1    mov        eax,dword ptr [ebp-14]
 0055BAD4    mov        ecx,dword ptr [eax]
 0055BAD6    call       dword ptr [ecx+88]
 0055BADC    mov        ecx,eax
 0055BADE    mov        eax,dword ptr [ebx]
 0055BAE0    mov        edx,55BCD8; 'CARDINALITY'
 0055BAE5    mov        esi,dword ptr [eax]
 0055BAE7    call       dword ptr [esi+190]
 0055BAED    mov        edx,55BCEC; 'PAGES'
 0055BAF2    mov        eax,dword ptr [ebp-14]
 0055BAF5    mov        ecx,dword ptr [eax]
 0055BAF7    call       dword ptr [ecx+88]
 0055BAFD    mov        ecx,eax
 0055BAFF    mov        eax,dword ptr [ebx]
 0055BB01    mov        edx,55BCEC; 'PAGES'
 0055BB06    mov        esi,dword ptr [eax]
 0055BB08    call       dword ptr [esi+190]
 0055BB0E    lea        ecx,[ebp-6C]
 0055BB11    mov        edx,55BCFC; 'FILTER_CONDITION'
 0055BB16    mov        eax,dword ptr [ebp-14]
 0055BB19    mov        esi,dword ptr [eax]
 0055BB1B    call       dword ptr [esi+74]
 0055BB1E    mov        ecx,dword ptr [ebp-6C]
 0055BB21    mov        eax,dword ptr [ebx]
 0055BB23    mov        edx,55BCFC; 'FILTER_CONDITION'
 0055BB28    mov        esi,dword ptr [eax]
 0055BB2A    call       dword ptr [esi+1A8]
 0055BB30    mov        eax,dword ptr [ebx]
 0055BB32    mov        edx,dword ptr [eax]
 0055BB34    call       dword ptr [edx+1D0]
 0055BB3A    mov        eax,dword ptr [ebp-14]
 0055BB3D    mov        edx,dword ptr [eax]
 0055BB3F    call       dword ptr [edx+0C]
 0055BB42    test       al,al
<0055BB44    jne        0055B97D
 0055BB4A    mov        eax,dword ptr [ebp-14]
 0055BB4D    mov        edx,dword ptr [eax]
 0055BB4F    call       dword ptr [edx+10]
 0055BB52    xor        eax,eax
 0055BB54    pop        edx
 0055BB55    pop        ecx
 0055BB56    pop        ecx
 0055BB57    mov        dword ptr fs:[eax],edx
 0055BB5A    push       55BBA6
 0055BB5F    lea        eax,[ebp-6C]
 0055BB62    mov        edx,7
 0055BB67    call       @LStrArrayClr
 0055BB6C    lea        eax,[ebp-50]
 0055BB6F    call       @IntfClear
 0055BB74    lea        eax,[ebp-4C]
 0055BB77    mov        edx,3
 0055BB7C    call       @LStrArrayClr
 0055BB81    lea        eax,[ebp-18]
 0055BB84    call       @LStrClr
 0055BB89    lea        eax,[ebp-14]
 0055BB8C    call       @IntfClear
 0055BB91    lea        eax,[ebp-10]
 0055BB94    mov        edx,2
 0055BB99    call       @LStrArrayClr
 0055BB9E    ret
<0055BB9F    jmp        @HandleFinally
<0055BBA4    jmp        0055BB5F
 0055BBA6    pop        esi
 0055BBA7    pop        ebx
 0055BBA8    mov        esp,ebp
 0055BBAA    pop        ebp
 0055BBAB    ret        10
*}
//end;

//0055BD10
//function sub_0055BD10():?;
//begin
{*
 0055BD10    mov        al,1
 0055BD12    ret
*}
//end;

//0055BD14
//function sub_0055BD14():?;
//begin
{*
 0055BD14    mov        al,1
 0055BD16    ret
*}
//end;

//0055BD18
//procedure sub_0055BD18(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0055BD18    push       ebp
 0055BD19    mov        ebp,esp
 0055BD1B    push       ecx
 0055BD1C    mov        ecx,0C
 0055BD21    push       0
 0055BD23    push       0
 0055BD25    dec        ecx
<0055BD26    jne        0055BD21
 0055BD28    push       ecx
 0055BD29    xchg       ecx,dword ptr [ebp-4]
 0055BD2C    push       ebx
 0055BD2D    push       esi
 0055BD2E    push       edi
 0055BD2F    mov        dword ptr [ebp-0C],ecx
 0055BD32    mov        dword ptr [ebp-8],edx
 0055BD35    mov        dword ptr [ebp-4],eax
 0055BD38    mov        ebx,dword ptr [ebp+8]
 0055BD3B    xor        eax,eax
 0055BD3D    push       ebp
 0055BD3E    push       55BFB8
 0055BD43    push       dword ptr fs:[eax]
 0055BD46    mov        dword ptr fs:[eax],esp
 0055BD49    mov        ecx,ebx
 0055BD4B    mov        edx,dword ptr ds:[61BA60]; ^gvar_0061DD7C:TZMetadataColumnDefs
 0055BD51    mov        edx,dword ptr [edx]
 0055BD53    mov        eax,dword ptr [ebp-4]
 0055BD56    call       004D8E7C
 0055BD5B    lea        eax,[ebp-10]
 0055BD5E    call       @LStrClr
 0055BD63    mov        eax,dword ptr [ebp+0C]
 0055BD66    call       @DynArrayLength
 0055BD6B    mov        esi,eax
 0055BD6D    sub        esi,1
>0055BD70    jno        0055BD77
 0055BD72    call       @IntOver
 0055BD77    test       esi,esi
>0055BD79    jl         0055BDCF
 0055BD7B    inc        esi
 0055BD7C    xor        edi,edi
 0055BD7E    mov        eax,dword ptr [ebp-10]
 0055BD81    call       @LStrLen
 0055BD86    test       eax,eax
>0055BD88    jle        0055BD97
 0055BD8A    lea        eax,[ebp-10]
 0055BD8D    mov        edx,55BFD0; ','
 0055BD92    call       @LStrCat
 0055BD97    mov        eax,dword ptr [ebp+0C]
 0055BD9A    test       eax,eax
>0055BD9C    je         0055BDA3
 0055BD9E    cmp        edi,dword ptr [eax-4]
>0055BDA1    jb         0055BDA8
 0055BDA3    call       @BoundErr
 0055BDA8    mov        eax,dword ptr [eax+edi*4]
 0055BDAB    lea        edx,[ebp-1C]
 0055BDAE    call       IntToStr
 0055BDB3    mov        eax,dword ptr [ebp-1C]
 0055BDB6    lea        ecx,[ebp-18]
 0055BDB9    mov        dl,27
 0055BDBB    call       AnsiQuotedStr
 0055BDC0    mov        edx,dword ptr [ebp-18]
 0055BDC3    lea        eax,[ebp-10]
 0055BDC6    call       @LStrCat
 0055BDCB    inc        edi
 0055BDCC    dec        esi
<0055BDCD    jne        0055BD7E
 0055BDCF    lea        eax,[ebp-20]
 0055BDD2    push       eax
 0055BDD3    lea        ecx,[ebp-44]
 0055BDD6    mov        dl,27
 0055BDD8    mov        eax,dword ptr [ebp-8]
 0055BDDB    call       004D31AC
 0055BDE0    mov        eax,dword ptr [ebp-44]
 0055BDE3    mov        dword ptr [ebp-40],eax
 0055BDE6    mov        byte ptr [ebp-3C],0B
 0055BDEA    lea        eax,[ebp-48]
 0055BDED    push       eax
 0055BDEE    mov        cl,27
 0055BDF0    mov        edx,55BFDC; ''%''
 0055BDF5    mov        eax,dword ptr [ebp-0C]
 0055BDF8    call       004D3178
 0055BDFD    mov        eax,dword ptr [ebp-48]
 0055BE00    mov        dword ptr [ebp-38],eax
 0055BE03    mov        byte ptr [ebp-34],0B
 0055BE07    lea        eax,[ebp-4C]
 0055BE0A    push       eax
 0055BE0B    mov        cl,27
 0055BE0D    mov        edx,55BFDC; ''%''
 0055BE12    mov        eax,dword ptr [ebp+10]
 0055BE15    call       004D3178
 0055BE1A    mov        eax,dword ptr [ebp-4C]
 0055BE1D    mov        dword ptr [ebp-30],eax
 0055BE20    mov        byte ptr [ebp-2C],0B
 0055BE24    lea        ecx,[ebp-50]
 0055BE27    mov        dl,22
 0055BE29    mov        eax,dword ptr [ebp-10]
 0055BE2C    call       004D31AC
 0055BE31    mov        eax,dword ptr [ebp-50]
 0055BE34    mov        dword ptr [ebp-28],eax
 0055BE37    mov        byte ptr [ebp-24],0B
 0055BE3B    lea        edx,[ebp-40]
 0055BE3E    mov        ecx,3
 0055BE43    mov        eax,55BFE8; 'exec sp_jdbc_getudts %s, %s, %s, %s'
 0055BE48    call       Format
 0055BE4D    mov        eax,dword ptr [ebp-20]
 0055BE50    push       eax
 0055BE51    lea        edx,[ebp-54]
 0055BE54    mov        eax,dword ptr [ebp-4]
 0055BE57    call       0055C080
 0055BE5C    mov        eax,dword ptr [ebp-54]
 0055BE5F    lea        ecx,[ebp-14]
 0055BE62    pop        edx
 0055BE63    mov        esi,dword ptr [eax]
 0055BE65    call       dword ptr [esi+0C]
>0055BE68    jmp        0055BF53
 0055BE6D    mov        eax,dword ptr [ebx]
 0055BE6F    mov        edx,dword ptr [eax]
 0055BE71    call       dword ptr [edx+1E4]
 0055BE77    lea        ecx,[ebp-58]
 0055BE7A    mov        edx,55C014; 'TYPE_CAT'
 0055BE7F    mov        eax,dword ptr [ebp-14]
 0055BE82    mov        esi,dword ptr [eax]
 0055BE84    call       dword ptr [esi+74]
 0055BE87    mov        ecx,dword ptr [ebp-58]
 0055BE8A    mov        eax,dword ptr [ebx]
 0055BE8C    mov        edx,55C014; 'TYPE_CAT'
 0055BE91    mov        esi,dword ptr [eax]
 0055BE93    call       dword ptr [esi+1A8]
 0055BE99    lea        ecx,[ebp-5C]
 0055BE9C    mov        edx,55C028; 'TYPE_SCHEM'
 0055BEA1    mov        eax,dword ptr [ebp-14]
 0055BEA4    mov        esi,dword ptr [eax]
 0055BEA6    call       dword ptr [esi+74]
 0055BEA9    mov        ecx,dword ptr [ebp-5C]
 0055BEAC    mov        eax,dword ptr [ebx]
 0055BEAE    mov        edx,55C028; 'TYPE_SCHEM'
 0055BEB3    mov        esi,dword ptr [eax]
 0055BEB5    call       dword ptr [esi+1A8]
 0055BEBB    lea        ecx,[ebp-60]
 0055BEBE    mov        edx,55C03C; 'TYPE_NAME'
 0055BEC3    mov        eax,dword ptr [ebp-14]
 0055BEC6    mov        esi,dword ptr [eax]
 0055BEC8    call       dword ptr [esi+74]
 0055BECB    mov        ecx,dword ptr [ebp-60]
 0055BECE    mov        eax,dword ptr [ebx]
 0055BED0    mov        edx,55C03C; 'TYPE_NAME'
 0055BED5    mov        esi,dword ptr [eax]
 0055BED7    call       dword ptr [esi+1A8]
 0055BEDD    lea        ecx,[ebp-64]
 0055BEE0    mov        edx,55C050; 'JAVA_CLASS'
 0055BEE5    mov        eax,dword ptr [ebp-14]
 0055BEE8    mov        esi,dword ptr [eax]
 0055BEEA    call       dword ptr [esi+74]
 0055BEED    mov        ecx,dword ptr [ebp-64]
 0055BEF0    mov        eax,dword ptr [ebx]
 0055BEF2    mov        edx,55C050; 'JAVA_CLASS'
 0055BEF7    mov        esi,dword ptr [eax]
 0055BEF9    call       dword ptr [esi+1A8]
 0055BEFF    mov        edx,55C064; 'DATA_TYPE'
 0055BF04    mov        eax,dword ptr [ebp-14]
 0055BF07    mov        ecx,dword ptr [eax]
 0055BF09    call       dword ptr [ecx+84]
 0055BF0F    call       005564B4
 0055BF14    xor        ecx,ecx
 0055BF16    mov        cl,al
 0055BF18    mov        eax,dword ptr [ebx]
 0055BF1A    mov        edx,55C064; 'DATA_TYPE'
 0055BF1F    mov        esi,dword ptr [eax]
 0055BF21    call       dword ptr [esi+18C]
 0055BF27    lea        ecx,[ebp-68]
 0055BF2A    mov        edx,55C078; 'REMARKS'
 0055BF2F    mov        eax,dword ptr [ebp-14]
 0055BF32    mov        esi,dword ptr [eax]
 0055BF34    call       dword ptr [esi+74]
 0055BF37    mov        ecx,dword ptr [ebp-68]
 0055BF3A    mov        eax,dword ptr [ebx]
 0055BF3C    mov        edx,55C078; 'REMARKS'
 0055BF41    mov        esi,dword ptr [eax]
 0055BF43    call       dword ptr [esi+1A8]
 0055BF49    mov        eax,dword ptr [ebx]
 0055BF4B    mov        edx,dword ptr [eax]
 0055BF4D    call       dword ptr [edx+1D0]
 0055BF53    mov        eax,dword ptr [ebp-14]
 0055BF56    mov        edx,dword ptr [eax]
 0055BF58    call       dword ptr [edx+0C]
 0055BF5B    test       al,al
<0055BF5D    jne        0055BE6D
 0055BF63    mov        eax,dword ptr [ebp-14]
 0055BF66    mov        edx,dword ptr [eax]
 0055BF68    call       dword ptr [edx+10]
 0055BF6B    xor        eax,eax
 0055BF6D    pop        edx
 0055BF6E    pop        ecx
 0055BF6F    pop        ecx
 0055BF70    mov        dword ptr fs:[eax],edx
 0055BF73    push       55BFBF
 0055BF78    lea        eax,[ebp-68]
 0055BF7B    mov        edx,5
 0055BF80    call       @LStrArrayClr
 0055BF85    lea        eax,[ebp-54]
 0055BF88    call       @IntfClear
 0055BF8D    lea        eax,[ebp-50]
 0055BF90    mov        edx,4
 0055BF95    call       @LStrArrayClr
 0055BF9A    lea        eax,[ebp-20]
 0055BF9D    mov        edx,3
 0055BFA2    call       @LStrArrayClr
 0055BFA7    lea        eax,[ebp-14]
 0055BFAA    call       @IntfClear
 0055BFAF    lea        eax,[ebp-10]
 0055BFB2    call       @LStrClr
 0055BFB7    ret
<0055BFB8    jmp        @HandleFinally
<0055BFBD    jmp        0055BF78
 0055BFBF    pop        edi
 0055BFC0    pop        esi
 0055BFC1    pop        ebx
 0055BFC2    mov        esp,ebp
 0055BFC4    pop        ebp
 0055BFC5    ret        0C
*}
//end;

//0055C080
//procedure sub_0055C080(?:TZASADatabaseMetadata; ?:?);
//begin
{*
 0055C080    push       ebp
 0055C081    mov        ebp,esp
 0055C083    push       0
 0055C085    push       ebx
 0055C086    push       esi
 0055C087    mov        esi,edx
 0055C089    mov        ebx,eax
 0055C08B    xor        eax,eax
 0055C08D    push       ebp
 0055C08E    push       55C0C6
 0055C093    push       dword ptr fs:[eax]
 0055C096    mov        dword ptr fs:[eax],esp
 0055C099    lea        edx,[ebp-4]
 0055C09C    mov        eax,ebx
 0055C09E    mov        ecx,dword ptr [eax]
 0055C0A0    call       dword ptr [ecx+238]; TZASADatabaseMetadata.sub_004D8E64
 0055C0A6    mov        eax,dword ptr [ebp-4]
 0055C0A9    mov        edx,esi
 0055C0AB    mov        ecx,dword ptr [eax]
 0055C0AD    call       dword ptr [ecx+0C]
 0055C0B0    xor        eax,eax
 0055C0B2    pop        edx
 0055C0B3    pop        ecx
 0055C0B4    pop        ecx
 0055C0B5    mov        dword ptr fs:[eax],edx
 0055C0B8    push       55C0CD
 0055C0BD    lea        eax,[ebp-4]
 0055C0C0    call       @IntfClear
 0055C0C5    ret
<0055C0C6    jmp        @HandleFinally
<0055C0CB    jmp        0055C0BD
 0055C0CD    pop        esi
 0055C0CE    pop        ebx
 0055C0CF    pop        ecx
 0055C0D0    pop        ebp
 0055C0D1    ret
*}
//end;

Initialization
Finalization
//0055C0D4
{*
 0055C0D4    push       ebp
 0055C0D5    mov        ebp,esp
 0055C0D7    xor        eax,eax
 0055C0D9    push       ebp
 0055C0DA    push       55C110
 0055C0DF    push       dword ptr fs:[eax]
 0055C0E2    mov        dword ptr fs:[eax],esp
 0055C0E5    inc        dword ptr ds:[61EF44]
>0055C0EB    jne        0055C102
 0055C0ED    mov        eax,6168E4; gvar_006168E4:array[5] of String
 0055C0F2    mov        ecx,5
 0055C0F7    mov        edx,dword ptr ds:[4010F8]; String
 0055C0FD    call       @FinalizeArray
 0055C102    xor        eax,eax
 0055C104    pop        edx
 0055C105    pop        ecx
 0055C106    pop        ecx
 0055C107    mov        dword ptr fs:[eax],edx
 0055C10A    push       55C117
 0055C10F    ret
<0055C110    jmp        @HandleFinally
<0055C115    jmp        0055C10F
 0055C117    pop        ebp
 0055C118    ret
*}
end.