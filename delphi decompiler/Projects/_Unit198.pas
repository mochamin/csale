{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit198;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZPostgreSQLDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:String;//f24
    destructor Destroy; virtual;
    //procedure sub_00517000(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00517CE0(?:?); virtual;
    //procedure sub_00517E94(?:?); virtual;
    //procedure sub_005180FC(?:?); virtual;
    //procedure sub_00518158(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005192B0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00518BFC(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005199A0(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00519E04(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00519E34(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00519E64(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0051AE88(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0051B4D4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00516004(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005165B8(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_005198B4(?:?); virtual;
    //procedure sub_0051AC5C(?:?); virtual;
    //procedure sub_0051509C(?:?); virtual;
    //procedure sub_005150C8(?:?); virtual;
    //procedure sub_005150D8(?:?); virtual;
    //function sub_0051512C():?; virtual;
    //function sub_00515134():?; virtual;
    //function sub_0051513C():?; virtual;
    //function sub_00515140():?; virtual;
    //function sub_00515144():?; virtual;
    //function sub_00515148():?; virtual;
    //function sub_0051514C():?; virtual;
    //function sub_00515150():?; virtual;
    //function sub_00515154():?; virtual;
    //function sub_00515158():?; virtual;
    //function sub_0051515C():?; virtual;
    //procedure sub_00515160(?:?); virtual;
    //procedure sub_00515CAC(?:?); virtual;
    //procedure sub_00515CBC(?:?); virtual;
    //procedure sub_00515CCC(?:?); virtual;
    //procedure sub_00515CDC(?:?); virtual;
    //procedure sub_00515CEC(?:?); virtual;
    //procedure sub_00515D10(?:?); virtual;
    //function sub_00515D20():?; virtual;
    procedure sub_00515D24(); virtual;
    //function sub_00515D38():?; virtual;
    procedure sub_00515D3C(); virtual;
    procedure sub_00515D50(); virtual;
    //function sub_00515D64():?; virtual;
    //procedure sub_00515D68(?:?); virtual;
    //procedure sub_00515D90(?:?); virtual;
    //procedure sub_00515DBC(?:?); virtual;
    //procedure sub_00515DE8(?:?); virtual;
    procedure sub_00515E0C(); virtual;
    procedure sub_00515E20(); virtual;
    procedure sub_00515E34(); virtual;
    procedure sub_00515E48(); virtual;
    procedure sub_00515E5C(); virtual;
    //function sub_00515E70():?; virtual;
    //function sub_00515E74():?; virtual;
    //function sub_00515E78():?; virtual;
    //function sub_00515E7C():?; virtual;
    //function sub_00515E80():?; virtual;
    //function sub_00515E84():?; virtual;
    //function sub_00515E88():?; virtual;
    procedure sub_00515E8C(); virtual;
    //function sub_00515EA0():?; virtual;
    //function sub_00515EA4():?; virtual;
    //function sub_00515EA8():?; virtual;
    //function sub_00515EAC():?; virtual;
    //function sub_00515EB0():?; virtual;
    procedure sub_00515EB4(); virtual;
    //function sub_00515EC8():?; virtual;
    procedure sub_00515ECC(); virtual;
    //function sub_00515EE0():?; virtual;
    //function sub_00515EE4():?; virtual;
    //function sub_00515EE8():?; virtual;
    //function sub_00515EEC():?; virtual;
    //function sub_00515EF0():?; virtual;
    //function sub_00515EF4():?; virtual;
    procedure sub_00515EF8(); virtual;
    //function sub_00515F04():?; virtual;
    procedure sub_00515F08(); virtual;
    //function sub_00515F14():?; virtual;
    //function sub_00515F18():?; virtual;
    //function sub_00515F1C():?; virtual;
    //function sub_00515F24():?; virtual;
    procedure sub_00515F2C(); virtual;
    //function sub_00515F38():?; virtual;
    procedure sub_00515F3C(); virtual;
    procedure sub_00515F48(); virtual;
    procedure sub_00515F54(); virtual;
    //function sub_00515F60:?; virtual;
    //function sub_00515F8C():?; virtual;
    //function sub_00515F90:?; virtual;
    //function sub_00515FB8():?; virtual;
    procedure sub_00515FC0(); virtual;
    //function sub_00515FCC():?; virtual;
    procedure sub_00515FD0(); virtual;
    //function sub_00515FDC():?; virtual;
    //function sub_00515FE0():?; virtual;
    //function sub_00515FE4(?:?):?; virtual;
    //function sub_00515FF4():?; virtual;
    //function sub_00515FF8():?; virtual;
    //function sub_00515FFC():?; virtual;
    //function sub_00516000():?; virtual;
    //function sub_0051B778(?:?):Boolean; virtual;
    //function sub_0051B780(?:?; ?:?):?; virtual;
    //constructor Create(?:TZPostgreSQLDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00514EA0
//procedure sub_00514EA0(?:TZPostgreSQLDatabaseMetadata; ?:AnsiString; ?:AnsiString);
//begin
{*
 00514EA0    push       ebp
 00514EA1    mov        ebp,esp
 00514EA3    push       ebx
 00514EA4    push       esi
 00514EA5    push       edi
 00514EA6    mov        esi,ecx
 00514EA8    mov        ebx,edx
 00514EAA    mov        edi,eax
 00514EAC    mov        eax,esi
 00514EAE    mov        edx,ebx
 00514EB0    call       @LStrAsg
 00514EB5    mov        eax,dword ptr [esi]
 00514EB7    call       @LStrLen
 00514EBC    mov        ebx,eax
 00514EBE    cmp        ebx,1
>00514EC1    jl         00514F08
 00514EC3    mov        eax,dword ptr [esi]
 00514EC5    dec        ebx
 00514EC6    test       eax,eax
>00514EC8    je         00514ECF
 00514ECA    cmp        ebx,dword ptr [eax-4]
>00514ECD    jb         00514ED4
 00514ECF    call       @BoundErr
 00514ED4    inc        ebx
 00514ED5    cmp        byte ptr [eax+ebx-1],27
>00514EDA    je         00514EF5
 00514EDC    mov        eax,dword ptr [esi]
 00514EDE    dec        ebx
 00514EDF    test       eax,eax
>00514EE1    je         00514EE8
 00514EE3    cmp        ebx,dword ptr [eax-4]
>00514EE6    jb         00514EED
 00514EE8    call       @BoundErr
 00514EED    inc        ebx
 00514EEE    cmp        byte ptr [eax+ebx-1],5C
>00514EF3    jne        00514F03
 00514EF5    mov        edx,esi
 00514EF7    mov        ecx,ebx
 00514EF9    mov        eax,514F50; '\\'
 00514EFE    call       @LStrInsert
 00514F03    dec        ebx
 00514F04    test       ebx,ebx
<00514F06    jne        00514EC3
 00514F08    push       514F5C; '''
 00514F0D    push       dword ptr [esi]
 00514F0F    push       514F5C; '''
 00514F14    mov        eax,esi
 00514F16    mov        edx,3
 00514F1B    call       @LStrCatN
 00514F20    mov        ecx,1
 00514F25    mov        edx,8
 00514F2A    mov        eax,edi
 00514F2C    call       0051B790
 00514F31    test       al,al
>00514F33    je         00514F43
 00514F35    mov        ecx,dword ptr [esi]
 00514F37    mov        eax,esi
 00514F39    mov        edx,514F68; 'E'
 00514F3E    call       @LStrCat3
 00514F43    pop        edi
 00514F44    pop        esi
 00514F45    pop        ebx
 00514F46    pop        ebp
 00514F47    ret
*}
//end;

//00514F6C
//constructor TZPostgreSQLDatabaseMetadata.Create(?:TZPostgreSQLDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00514F6C    push       ebp
 00514F6D    mov        ebp,esp
 00514F6F    add        esp,0FFFFFFE4
 00514F72    push       ebx
 00514F73    push       esi
 00514F74    xor        ebx,ebx
 00514F76    mov        dword ptr [ebp-10],ebx
 00514F79    mov        dword ptr [ebp-14],ebx
 00514F7C    mov        dword ptr [ebp-18],ebx
 00514F7F    test       dl,dl
>00514F81    je         00514F8B
 00514F83    add        esp,0FFFFFFF0
 00514F86    call       @ClassCreate
 00514F8B    mov        esi,ecx
 00514F8D    mov        byte ptr [ebp-5],dl
 00514F90    mov        dword ptr [ebp-4],eax
 00514F93    mov        ebx,dword ptr [ebp+8]
 00514F96    mov        eax,dword ptr [ebp+0C]
 00514F99    call       @LStrAddRef
 00514F9E    xor        eax,eax
 00514FA0    push       ebp
 00514FA1    push       515045
 00514FA6    push       dword ptr fs:[eax]
 00514FA9    mov        dword ptr fs:[eax],esp
 00514FAC    mov        eax,dword ptr [ebp+0C]
 00514FAF    push       eax
 00514FB0    push       ebx
 00514FB1    mov        ecx,esi
 00514FB3    test       ecx,ecx
>00514FB5    je         00514FBA
 00514FB7    sub        ecx,0FFFFFFD0
 00514FBA    xor        edx,edx
 00514FBC    mov        eax,dword ptr [ebp-4]
 00514FBF    call       004D8D74
 00514FC4    mov        dl,1
 00514FC6    mov        eax,[0041C8E4]; TStringList
 00514FCB    call       TObject.Create; TStringList.Create
 00514FD0    mov        dword ptr [ebp-0C],eax
 00514FD3    xor        eax,eax
 00514FD5    push       ebp
 00514FD6    push       51501B
 00514FDB    push       dword ptr fs:[eax]
 00514FDE    mov        dword ptr fs:[eax],esp
 00514FE1    lea        eax,[ebp-1C]
 00514FE4    push       eax
 00514FE5    mov        eax,dword ptr [ebp-4]
 00514FE8    add        eax,24; TZPostgreSQLDatabaseMetadata.?f24:String
 00514FEB    push       eax
 00514FEC    lea        eax,[ebp-14]
 00514FEF    push       eax
 00514FF0    lea        eax,[ebp-18]
 00514FF3    push       eax
 00514FF4    mov        eax,dword ptr [ebp-0C]
 00514FF7    push       eax
 00514FF8    lea        ecx,[ebp-10]
 00514FFB    mov        edx,ebx
 00514FFD    mov        eax,dword ptr [ebp+0C]
 00515000    call       004D28A4
 00515005    xor        eax,eax
 00515007    pop        edx
 00515008    pop        ecx
 00515009    pop        ecx
 0051500A    mov        dword ptr fs:[eax],edx
 0051500D    push       515022
 00515012    mov        eax,dword ptr [ebp-0C]
 00515015    call       TObject.Free
 0051501A    ret
<0051501B    jmp        @HandleFinally
<00515020    jmp        00515012
 00515022    xor        eax,eax
 00515024    pop        edx
 00515025    pop        ecx
 00515026    pop        ecx
 00515027    mov        dword ptr fs:[eax],edx
 0051502A    push       51504C
 0051502F    lea        eax,[ebp-18]
 00515032    mov        edx,3
 00515037    call       @LStrArrayClr
 0051503C    lea        eax,[ebp+0C]
 0051503F    call       @LStrClr
 00515044    ret
<00515045    jmp        @HandleFinally
<0051504A    jmp        0051502F
 0051504C    mov        eax,dword ptr [ebp-4]
 0051504F    cmp        byte ptr [ebp-5],0
>00515053    je         00515064
 00515055    call       @AfterConstruction
 0051505A    pop        dword ptr fs:[0]
 00515061    add        esp,0C
 00515064    mov        eax,dword ptr [ebp-4]
 00515067    pop        esi
 00515068    pop        ebx
 00515069    mov        esp,ebp
 0051506B    pop        ebp
 0051506C    ret        8
*}
//end;

//00515070
destructor TZPostgreSQLDatabaseMetadata.Destroy;
begin
{*
 00515070    push       ebp
 00515071    mov        ebp,esp
 00515073    push       ebx
 00515074    push       esi
 00515075    call       @BeforeDestruction
 0051507A    mov        ebx,edx
 0051507C    mov        esi,eax
 0051507E    mov        edx,ebx
 00515080    and        dl,0FC
 00515083    mov        eax,esi
 00515085    call       TZAbstractDatabaseMetadata.Destroy
 0051508A    test       bl,bl
>0051508C    jle        00515095
 0051508E    mov        eax,esi
 00515090    call       @ClassDestroy
 00515095    pop        esi
 00515096    pop        ebx
 00515097    pop        ebp
 00515098    ret
*}
end;

//0051509C
//procedure sub_0051509C(?:?);
//begin
{*
 0051509C    push       ebp
 0051509D    mov        ebp,esp
 0051509F    push       ebx
 005150A0    mov        ebx,edx
 005150A2    mov        eax,ebx
 005150A4    mov        edx,5150BC; 'PostgreSQL'
 005150A9    call       @LStrAsg
 005150AE    pop        ebx
 005150AF    pop        ebp
 005150B0    ret
*}
//end;

//005150C8
//procedure sub_005150C8(?:?);
//begin
{*
 005150C8    push       ebp
 005150C9    mov        ebp,esp
 005150CB    push       ebx
 005150CC    mov        ebx,edx
 005150CE    mov        eax,ebx
 005150D0    call       @LStrClr
 005150D5    pop        ebx
 005150D6    pop        ebp
 005150D7    ret
*}
//end;

//005150D8
//procedure sub_005150D8(?:?);
//begin
{*
 005150D8    push       ebp
 005150D9    mov        ebp,esp
 005150DB    push       ebx
 005150DC    mov        ebx,edx
 005150DE    mov        eax,ebx
 005150E0    mov        edx,5150F8; 'Zeos Database Connectivity Driver for PostgreSQL'
 005150E5    call       @LStrAsg
 005150EA    pop        ebx
 005150EB    pop        ebp
 005150EC    ret
*}
//end;

//0051512C
//function sub_0051512C():?;
//begin
{*
 0051512C    mov        eax,1
 00515131    ret
*}
//end;

//00515134
//function sub_00515134():?;
//begin
{*
 00515134    mov        eax,1
 00515139    ret
*}
//end;

//0051513C
//function sub_0051513C():?;
//begin
{*
 0051513C    xor        eax,eax
 0051513E    ret
*}
//end;

//00515140
//function sub_00515140():?;
//begin
{*
 00515140    xor        eax,eax
 00515142    ret
*}
//end;

//00515144
//function sub_00515144():?;
//begin
{*
 00515144    xor        eax,eax
 00515146    ret
*}
//end;

//00515148
//function sub_00515148():?;
//begin
{*
 00515148    mov        al,1
 0051514A    ret
*}
//end;

//0051514C
//function sub_0051514C():?;
//begin
{*
 0051514C    xor        eax,eax
 0051514E    ret
*}
//end;

//00515150
//function sub_00515150():?;
//begin
{*
 00515150    mov        al,1
 00515152    ret
*}
//end;

//00515154
//function sub_00515154():?;
//begin
{*
 00515154    xor        eax,eax
 00515156    ret
*}
//end;

//00515158
//function sub_00515158():?;
//begin
{*
 00515158    xor        eax,eax
 0051515A    ret
*}
//end;

//0051515C
//function sub_0051515C():?;
//begin
{*
 0051515C    mov        al,1
 0051515E    ret
*}
//end;

//00515160
//procedure sub_00515160(?:?);
//begin
{*
 00515160    push       ebp
 00515161    mov        ebp,esp
 00515163    push       ebx
 00515164    mov        ebx,edx
 00515166    mov        eax,ebx
 00515168    mov        edx,515180; 'abort,absolute,access,action,add,admin,after,aggregate,all,also,alter,always,analyse,analyze,and,any,array,asc,assertion,assignment,asymmetric,at,authorization,backward,before,begin,between,bigint,binary,bit,boolean,both,cache,called,cascade,cascaded,case,cast,catalog,chain,character,characteristics,check,checkpoint,class,close,cluster,coalesce,collate,column,comment,commit,committed,concurrently,configuration,connect,connection,constraint,constraints,content,continue,conversion,convert,copy,cost,createdb,createrole,createuser,cross,csv,current,current_catalog,current_date,current_role,current_schema,current_time,current_timestamp,current_user,cursor,cycle,data,database,day,deallocate,dec,decimal,declare,default,defaults,deferrable,deferred,definer,delimiter,delimiters,desc,dictionary,disable,discard,distinct,do,document,domain,double,each,else,enable,encoding,encrypted,end,end-exec,enum,escape,except,excluding,exclusive,exec,execute,exists,explain,external,extract,false,family,fetch,first,float,following,for,force,foreign,forward,freeze,full,function,global,grant,granted,greatest,handler,header,hold,hour,identity,if,ilike,immediate,immutable,implicit,in,including,increment,indexes,inherit,inherits,initially,inner,inout,input,insensitive,instead,int,intersect,interval,invoker,isnull,isolation,join,lancompiler,language,large,last,lc_collate,lc_ctype,leading,least,left,level,like,limit,listen,load,local,localtime,localtimestamp,location,lock,login,mapping,match,maxvalue,minute,minvalue,mode,month,move,name,names,national,natural,nchar,new,next,no,nocreatedb,nocreaterole,nocreateuser,noinherit,nologin,none,nosuperuser,not,nothing,notify,notnull,nowait,nullif,nulls,numeric,object,of,off,offset,oids,old,only,operator,option,options,or,out,outer,over,overlaps,overlay,owned,owner,parser,partial,partition,password,placing,plans,position,preceding,precision,prepare,prepared,preserve,prior,privileges,procedural,procedure,quote,range,read,real,reassign,recheck,recursive,references,reindex,relative,release,rename,repeatable,replace,replica,reset,restart,restrict,return,returning,returns,revoke,right,role,rollback,row,rows,rule,savepoint,schema,scroll,search,second,security,sequence,serializable,server,session,session_user,setof,share,show,similar,simple,smallint,some,stable,standalone,start,statement,statistics,stdin,stdout,storage,strict,strip,substring,superuser,symmetric,sysid,system,tablespace,temp,template,temporary,text,then,time,timestamp,to,trailing,transaction,treat,trigger,trim,true,truncate,trusted,type,unbounded,uncommitted,unencrypted,union,unique,unknown,unlisten,until,user,using,vacuum,valid,validator,value,variadic,varying,verbose,version,view,volatile,when,whitespace,window,with,without,work,wrapper,write,xml,xmlattributes,xmlconcat,xmlelement,xmlforest,xmlparse,xmlpi,xmlroot,xmlserialize,year,yes,zone'
 0051516D    call       @LStrAsg
 00515172    pop        ebx
 00515173    pop        ebp
 00515174    ret
*}
//end;

//00515CAC
//procedure sub_00515CAC(?:?);
//begin
{*
 00515CAC    push       ebp
 00515CAD    mov        ebp,esp
 00515CAF    push       ebx
 00515CB0    mov        ebx,edx
 00515CB2    mov        eax,ebx
 00515CB4    call       @LStrClr
 00515CB9    pop        ebx
 00515CBA    pop        ebp
 00515CBB    ret
*}
//end;

//00515CBC
//procedure sub_00515CBC(?:?);
//begin
{*
 00515CBC    push       ebp
 00515CBD    mov        ebp,esp
 00515CBF    push       ebx
 00515CC0    mov        ebx,edx
 00515CC2    mov        eax,ebx
 00515CC4    call       @LStrClr
 00515CC9    pop        ebx
 00515CCA    pop        ebp
 00515CCB    ret
*}
//end;

//00515CCC
//procedure sub_00515CCC(?:?);
//begin
{*
 00515CCC    push       ebp
 00515CCD    mov        ebp,esp
 00515CCF    push       ebx
 00515CD0    mov        ebx,edx
 00515CD2    mov        eax,ebx
 00515CD4    call       @LStrClr
 00515CD9    pop        ebx
 00515CDA    pop        ebp
 00515CDB    ret
*}
//end;

//00515CDC
//procedure sub_00515CDC(?:?);
//begin
{*
 00515CDC    push       ebp
 00515CDD    mov        ebp,esp
 00515CDF    push       ebx
 00515CE0    mov        ebx,edx
 00515CE2    mov        eax,ebx
 00515CE4    call       @LStrClr
 00515CE9    pop        ebx
 00515CEA    pop        ebp
 00515CEB    ret
*}
//end;

//00515CEC
//procedure sub_00515CEC(?:?);
//begin
{*
 00515CEC    push       ebp
 00515CED    mov        ebp,esp
 00515CEF    push       ebx
 00515CF0    mov        ebx,edx
 00515CF2    mov        eax,ebx
 00515CF4    mov        edx,515D0C; '\\'
 00515CF9    call       @LStrAsg
 00515CFE    pop        ebx
 00515CFF    pop        ebp
 00515D00    ret
*}
//end;

//00515D10
//procedure sub_00515D10(?:?);
//begin
{*
 00515D10    push       ebp
 00515D11    mov        ebp,esp
 00515D13    push       ebx
 00515D14    mov        ebx,edx
 00515D16    mov        eax,ebx
 00515D18    call       @LStrClr
 00515D1D    pop        ebx
 00515D1E    pop        ebp
 00515D1F    ret
*}
//end;

//00515D20
//function sub_00515D20():?;
//begin
{*
 00515D20    mov        al,1
 00515D22    ret
*}
//end;

//00515D24
procedure sub_00515D24();
begin
{*
 00515D24    push       ebp
 00515D25    mov        ebp,esp
 00515D27    mov        ecx,4
 00515D2C    mov        edx,6
 00515D31    call       0051B790
 00515D36    pop        ebp
 00515D37    ret
*}
end;

//00515D38
//function sub_00515D38():?;
//begin
{*
 00515D38    mov        al,1
 00515D3A    ret
*}
//end;

//00515D3C
procedure sub_00515D3C();
begin
{*
 00515D3C    push       ebp
 00515D3D    mov        ebp,esp
 00515D3F    mov        ecx,4
 00515D44    mov        edx,6
 00515D49    call       0051B790
 00515D4E    pop        ebp
 00515D4F    ret
*}
end;

//00515D50
procedure sub_00515D50();
begin
{*
 00515D50    push       ebp
 00515D51    mov        ebp,esp
 00515D53    mov        ecx,4
 00515D58    mov        edx,6
 00515D5D    call       0051B790
 00515D62    pop        ebp
 00515D63    ret
*}
end;

//00515D64
//function sub_00515D64():?;
//begin
{*
 00515D64    xor        eax,eax
 00515D66    ret
*}
//end;

//00515D68
//procedure sub_00515D68(?:?);
//begin
{*
 00515D68    push       ebp
 00515D69    mov        ebp,esp
 00515D6B    push       ebx
 00515D6C    mov        ebx,edx
 00515D6E    mov        eax,ebx
 00515D70    mov        edx,515D88; 'schema'
 00515D75    call       @LStrAsg
 00515D7A    pop        ebx
 00515D7B    pop        ebp
 00515D7C    ret
*}
//end;

//00515D90
//procedure sub_00515D90(?:?);
//begin
{*
 00515D90    push       ebp
 00515D91    mov        ebp,esp
 00515D93    push       ebx
 00515D94    mov        ebx,edx
 00515D96    mov        eax,ebx
 00515D98    mov        edx,515DB0; 'function'
 00515D9D    call       @LStrAsg
 00515DA2    pop        ebx
 00515DA3    pop        ebp
 00515DA4    ret
*}
//end;

//00515DBC
//procedure sub_00515DBC(?:?);
//begin
{*
 00515DBC    push       ebp
 00515DBD    mov        ebp,esp
 00515DBF    push       ebx
 00515DC0    mov        ebx,edx
 00515DC2    mov        eax,ebx
 00515DC4    mov        edx,515DDC; 'database'
 00515DC9    call       @LStrAsg
 00515DCE    pop        ebx
 00515DCF    pop        ebp
 00515DD0    ret
*}
//end;

//00515DE8
//procedure sub_00515DE8(?:?);
//begin
{*
 00515DE8    push       ebp
 00515DE9    mov        ebp,esp
 00515DEB    push       ebx
 00515DEC    mov        ebx,edx
 00515DEE    mov        eax,ebx
 00515DF0    mov        edx,515E08; '.'
 00515DF5    call       @LStrAsg
 00515DFA    pop        ebx
 00515DFB    pop        ebp
 00515DFC    ret
*}
//end;

//00515E0C
procedure sub_00515E0C();
begin
{*
 00515E0C    push       ebp
 00515E0D    mov        ebp,esp
 00515E0F    mov        ecx,3
 00515E14    mov        edx,7
 00515E19    call       0051B790
 00515E1E    pop        ebp
 00515E1F    ret
*}
end;

//00515E20
procedure sub_00515E20();
begin
{*
 00515E20    push       ebp
 00515E21    mov        ebp,esp
 00515E23    mov        ecx,3
 00515E28    mov        edx,7
 00515E2D    call       0051B790
 00515E32    pop        ebp
 00515E33    ret
*}
end;

//00515E34
procedure sub_00515E34();
begin
{*
 00515E34    push       ebp
 00515E35    mov        ebp,esp
 00515E37    mov        ecx,3
 00515E3C    mov        edx,7
 00515E41    call       0051B790
 00515E46    pop        ebp
 00515E47    ret
*}
end;

//00515E48
procedure sub_00515E48();
begin
{*
 00515E48    push       ebp
 00515E49    mov        ebp,esp
 00515E4B    mov        ecx,3
 00515E50    mov        edx,7
 00515E55    call       0051B790
 00515E5A    pop        ebp
 00515E5B    ret
*}
end;

//00515E5C
procedure sub_00515E5C();
begin
{*
 00515E5C    push       ebp
 00515E5D    mov        ebp,esp
 00515E5F    mov        ecx,3
 00515E64    mov        edx,7
 00515E69    call       0051B790
 00515E6E    pop        ebp
 00515E6F    ret
*}
end;

//00515E70
//function sub_00515E70():?;
//begin
{*
 00515E70    xor        eax,eax
 00515E72    ret
*}
//end;

//00515E74
//function sub_00515E74():?;
//begin
{*
 00515E74    xor        eax,eax
 00515E76    ret
*}
//end;

//00515E78
//function sub_00515E78():?;
//begin
{*
 00515E78    xor        eax,eax
 00515E7A    ret
*}
//end;

//00515E7C
//function sub_00515E7C():?;
//begin
{*
 00515E7C    xor        eax,eax
 00515E7E    ret
*}
//end;

//00515E80
//function sub_00515E80():?;
//begin
{*
 00515E80    xor        eax,eax
 00515E82    ret
*}
//end;

//00515E84
//function sub_00515E84():?;
//begin
{*
 00515E84    xor        eax,eax
 00515E86    ret
*}
//end;

//00515E88
//function sub_00515E88():?;
//begin
{*
 00515E88    xor        eax,eax
 00515E8A    ret
*}
//end;

//00515E8C
procedure sub_00515E8C();
begin
{*
 00515E8C    push       ebp
 00515E8D    mov        ebp,esp
 00515E8F    mov        ecx,5
 00515E94    mov        edx,6
 00515E99    call       0051B790
 00515E9E    pop        ebp
 00515E9F    ret
*}
end;

//00515EA0
//function sub_00515EA0():?;
//begin
{*
 00515EA0    xor        eax,eax
 00515EA2    ret
*}
//end;

//00515EA4
//function sub_00515EA4():?;
//begin
{*
 00515EA4    mov        al,1
 00515EA6    ret
*}
//end;

//00515EA8
//function sub_00515EA8():?;
//begin
{*
 00515EA8    mov        al,1
 00515EAA    ret
*}
//end;

//00515EAC
//function sub_00515EAC():?;
//begin
{*
 00515EAC    mov        al,1
 00515EAE    ret
*}
//end;

//00515EB0
//function sub_00515EB0():?;
//begin
{*
 00515EB0    mov        al,1
 00515EB2    ret
*}
//end;

//00515EB4
procedure sub_00515EB4();
begin
{*
 00515EB4    push       ebp
 00515EB5    mov        ebp,esp
 00515EB7    mov        ecx,1
 00515EBC    mov        edx,7
 00515EC1    call       0051B790
 00515EC6    pop        ebp
 00515EC7    ret
*}
end;

//00515EC8
//function sub_00515EC8():?;
//begin
{*
 00515EC8    mov        al,1
 00515ECA    ret
*}
//end;

//00515ECC
procedure sub_00515ECC();
begin
{*
 00515ECC    push       ebp
 00515ECD    mov        ebp,esp
 00515ECF    mov        ecx,1
 00515ED4    mov        edx,7
 00515ED9    call       0051B790
 00515EDE    pop        ebp
 00515EDF    ret
*}
end;

//00515EE0
//function sub_00515EE0():?;
//begin
{*
 00515EE0    xor        eax,eax
 00515EE2    ret
*}
//end;

//00515EE4
//function sub_00515EE4():?;
//begin
{*
 00515EE4    xor        eax,eax
 00515EE6    ret
*}
//end;

//00515EE8
//function sub_00515EE8():?;
//begin
{*
 00515EE8    mov        al,1
 00515EEA    ret
*}
//end;

//00515EEC
//function sub_00515EEC():?;
//begin
{*
 00515EEC    mov        al,1
 00515EEE    ret
*}
//end;

//00515EF0
//function sub_00515EF0():?;
//begin
{*
 00515EF0    xor        eax,eax
 00515EF2    ret
*}
//end;

//00515EF4
//function sub_00515EF4():?;
//begin
{*
 00515EF4    xor        eax,eax
 00515EF6    ret
*}
//end;

//00515EF8
procedure sub_00515EF8();
begin
{*
 00515EF8    push       ebp
 00515EF9    mov        ebp,esp
 00515EFB    call       0051BA74
 00515F00    pop        ebp
 00515F01    ret
*}
end;

//00515F04
//function sub_00515F04():?;
//begin
{*
 00515F04    xor        eax,eax
 00515F06    ret
*}
//end;

//00515F08
procedure sub_00515F08();
begin
{*
 00515F08    push       ebp
 00515F09    mov        ebp,esp
 00515F0B    call       0051B83C
 00515F10    pop        ebp
 00515F11    ret
*}
end;

//00515F14
//function sub_00515F14():?;
//begin
{*
 00515F14    xor        eax,eax
 00515F16    ret
*}
//end;

//00515F18
//function sub_00515F18():?;
//begin
{*
 00515F18    xor        eax,eax
 00515F1A    ret
*}
//end;

//00515F1C
//function sub_00515F1C():?;
//begin
{*
 00515F1C    mov        eax,640
 00515F21    ret
*}
//end;

//00515F24
//function sub_00515F24():?;
//begin
{*
 00515F24    mov        eax,2000
 00515F29    ret
*}
//end;

//00515F2C
procedure sub_00515F2C();
begin
{*
 00515F2C    push       ebp
 00515F2D    mov        ebp,esp
 00515F2F    call       0051BA74
 00515F34    pop        ebp
 00515F35    ret
*}
end;

//00515F38
//function sub_00515F38():?;
//begin
{*
 00515F38    xor        eax,eax
 00515F3A    ret
*}
//end;

//00515F3C
procedure sub_00515F3C();
begin
{*
 00515F3C    push       ebp
 00515F3D    mov        ebp,esp
 00515F3F    call       0051BA74
 00515F44    pop        ebp
 00515F45    ret
*}
end;

//00515F48
procedure sub_00515F48();
begin
{*
 00515F48    push       ebp
 00515F49    mov        ebp,esp
 00515F4B    call       0051BA74
 00515F50    pop        ebp
 00515F51    ret
*}
end;

//00515F54
procedure sub_00515F54();
begin
{*
 00515F54    push       ebp
 00515F55    mov        ebp,esp
 00515F57    call       0051BA74
 00515F5C    pop        ebp
 00515F5D    ret
*}
end;

//00515F60
//function sub_00515F60:?;
//begin
{*
 00515F60    push       ebp
 00515F61    mov        ebp,esp
 00515F63    push       ebx
 00515F64    mov        ebx,eax
 00515F66    mov        ecx,1
 00515F6B    mov        edx,7
 00515F70    mov        eax,ebx
 00515F72    call       0051B790
 00515F77    test       al,al
>00515F79    je         00515F83
 00515F7B    mov        eax,40000000
 00515F80    pop        ebx
 00515F81    pop        ebp
 00515F82    ret
 00515F83    mov        eax,2000
 00515F88    pop        ebx
 00515F89    pop        ebp
 00515F8A    ret
*}
//end;

//00515F8C
//function sub_00515F8C():?;
//begin
{*
 00515F8C    mov        al,1
 00515F8E    ret
*}
//end;

//00515F90
//function sub_00515F90:?;
//begin
{*
 00515F90    push       ebp
 00515F91    mov        ebp,esp
 00515F93    push       ebx
 00515F94    mov        ebx,eax
 00515F96    xor        ecx,ecx
 00515F98    mov        edx,7
 00515F9D    mov        eax,ebx
 00515F9F    call       0051B790
 00515FA4    test       al,al
>00515FA6    je         00515FAD
 00515FA8    xor        eax,eax
 00515FAA    pop        ebx
 00515FAB    pop        ebp
 00515FAC    ret
 00515FAD    mov        eax,3FDC
 00515FB2    pop        ebx
 00515FB3    pop        ebp
 00515FB4    ret
*}
//end;

//00515FB8
//function sub_00515FB8():?;
//begin
{*
 00515FB8    mov        eax,1
 00515FBD    ret
*}
//end;

//00515FC0
procedure sub_00515FC0();
begin
{*
 00515FC0    push       ebp
 00515FC1    mov        ebp,esp
 00515FC3    call       0051BA74
 00515FC8    pop        ebp
 00515FC9    ret
*}
end;

//00515FCC
//function sub_00515FCC():?;
//begin
{*
 00515FCC    xor        eax,eax
 00515FCE    ret
*}
//end;

//00515FD0
procedure sub_00515FD0();
begin
{*
 00515FD0    push       ebp
 00515FD1    mov        ebp,esp
 00515FD3    call       0051BA74
 00515FD8    pop        ebp
 00515FD9    ret
*}
end;

//00515FDC
//function sub_00515FDC():?;
//begin
{*
 00515FDC    mov        al,2
 00515FDE    ret
*}
//end;

//00515FE0
//function sub_00515FE0():?;
//begin
{*
 00515FE0    mov        al,1
 00515FE2    ret
*}
//end;

//00515FE4
//function sub_00515FE4(?:?):?;
//begin
{*
 00515FE4    cmp        dl,4
>00515FE7    je         00515FF1
 00515FE9    cmp        dl,2
>00515FEC    je         00515FF1
 00515FEE    xor        eax,eax
 00515FF0    ret
 00515FF1    mov        al,1
 00515FF3    ret
*}
//end;

//00515FF4
//function sub_00515FF4():?;
//begin
{*
 00515FF4    mov        al,1
 00515FF6    ret
*}
//end;

//00515FF8
//function sub_00515FF8():?;
//begin
{*
 00515FF8    xor        eax,eax
 00515FFA    ret
*}
//end;

//00515FFC
//function sub_00515FFC():?;
//begin
{*
 00515FFC    xor        eax,eax
 00515FFE    ret
*}
//end;

//00516000
//function sub_00516000():?;
//begin
{*
 00516000    xor        eax,eax
 00516002    ret
*}
//end;

//00516004
//procedure sub_00516004(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00516004    push       ebp
 00516005    mov        ebp,esp
 00516007    push       ecx
 00516008    mov        ecx,5
 0051600D    push       0
 0051600F    push       0
 00516011    dec        ecx
<00516012    jne        0051600D
 00516014    xchg       ecx,dword ptr [ebp-4]
 00516017    push       ebx
 00516018    push       esi
 00516019    push       edi
 0051601A    mov        edi,ecx
 0051601C    mov        ebx,eax
 0051601E    mov        esi,dword ptr [ebp+0C]
 00516021    xor        eax,eax
 00516023    push       ebp
 00516024    push       5161C5
 00516029    push       dword ptr fs:[eax]
 0051602C    mov        dword ptr fs:[eax],esp
 0051602F    test       esi,esi
>00516031    jne        00516042
 00516033    lea        eax,[ebp-8]
 00516036    mov        edx,5161E0; '%'
 0051603B    call       @LStrLAsg
>00516040    jmp        0051604C
 00516042    lea        eax,[ebp-8]
 00516045    mov        edx,esi
 00516047    call       @LStrLAsg
 0051604C    mov        ecx,3
 00516051    mov        edx,7
 00516056    mov        eax,ebx
 00516058    call       0051B790
 0051605D    test       al,al
>0051605F    je         005160FE
 00516065    push       5161EC; 'SELECT NULL AS PROCEDURE_CAT, n.nspname AS PROCEDURE_SCHEM, p.proname AS PROCEDURE_NAME, NULL AS RESERVED1, NULL AS RESERVED2, NULL AS RESERVED3, d.description AS REMARKS, '
 0051606A    lea        edx,[ebp-0C]
 0051606D    mov        eax,2
 00516072    call       IntToStr
 00516077    push       dword ptr [ebp-0C]
 0051607A    push       5162A4; ' AS PROCEDURE_TYPE '
 0051607F    push       5162C0; ' FROM pg_catalog.pg_namespace n, pg_catalog.pg_proc p  '
 00516084    push       516300; ' LEFT JOIN pg_catalog.pg_description d ON (p.oid=d.objoid) '
 00516089    push       516344; ' LEFT JOIN pg_catalog.pg_class c ON (d.classoid=c.oid AND'
 0051608E    push       516388; ' c.relname='pg_proc') LEFT JOIN pg_catalog.pg_namespace pn ON'
 00516093    push       5163D0; ' (c.relnamespace=pn.oid AND pn.nspname='pg_catalog') '
 00516098    push       516410; ' WHERE p.pronamespace=n.oid'
 0051609D    lea        eax,[ebp-4]
 005160A0    mov        edx,9
 005160A5    call       @LStrCatN
 005160AA    test       edi,edi
>005160AC    je         005160D2
 005160AE    push       dword ptr [ebp-4]
 005160B1    push       516434; ' AND n.nspname LIKE '
 005160B6    lea        ecx,[ebp-10]
 005160B9    mov        edx,edi
 005160BB    mov        eax,ebx
 005160BD    call       00514EA0
 005160C2    push       dword ptr [ebp-10]
 005160C5    lea        eax,[ebp-4]
 005160C8    mov        edx,3
 005160CD    call       @LStrCatN
 005160D2    push       dword ptr [ebp-4]
 005160D5    push       516454; ' AND p.proname LIKE '
 005160DA    lea        ecx,[ebp-14]
 005160DD    mov        edx,dword ptr [ebp-8]
 005160E0    mov        eax,ebx
 005160E2    call       00514EA0
 005160E7    push       dword ptr [ebp-14]
 005160EA    push       516474; ' ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME'
 005160EF    lea        eax,[ebp-4]
 005160F2    mov        edx,4
 005160F7    call       @LStrCatN
>005160FC    jmp        0051613F
 005160FE    push       5164A8; 'SELECT NULL AS PROCEDURE_CAT, NULL AS PROCEDURE_SCHEM, p.proname AS PROCEDURE_NAME, NULL AS RESERVED1, NULL AS RESERVED2, NULL AS RESERVED3, NULL AS REMARKS, '
 00516103    lea        edx,[ebp-18]
 00516106    mov        eax,2
 0051610B    call       IntToStr
 00516110    push       dword ptr [ebp-18]
 00516113    push       516550; ' AS PROCEDURE_TYPE'
 00516118    push       51656C; ' FROM pg_proc p WHERE p.proname LIKE '
 0051611D    lea        ecx,[ebp-1C]
 00516120    mov        edx,dword ptr [ebp-8]
 00516123    mov        eax,ebx
 00516125    call       00514EA0
 0051612A    push       dword ptr [ebp-1C]
 0051612D    push       51659C; ' ORDER BY PROCEDURE_NAME'
 00516132    lea        eax,[ebp-4]
 00516135    mov        edx,6
 0051613A    call       @LStrCatN
 0051613F    mov        eax,dword ptr [ebp+8]
 00516142    push       eax
 00516143    lea        edx,[ebp-28]
 00516146    mov        eax,ebx
 00516148    mov        ecx,dword ptr [eax]
 0051614A    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00516150    mov        eax,dword ptr [ebp-28]
 00516153    lea        edx,[ebp-24]
 00516156    mov        ecx,dword ptr [eax]
 00516158    call       dword ptr [ecx+0C]
 0051615B    mov        eax,dword ptr [ebp-24]
 0051615E    lea        ecx,[ebp-20]
 00516161    mov        edx,dword ptr [ebp-4]
 00516164    mov        esi,dword ptr [eax]
 00516166    call       dword ptr [esi+0C]
 00516169    mov        eax,dword ptr [ebp-20]
 0051616C    push       eax
 0051616D    lea        ecx,[ebp-2C]
 00516170    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 00516176    mov        edx,dword ptr [edx]
 00516178    mov        eax,ebx
 0051617A    call       004D8E7C
 0051617F    mov        ecx,dword ptr [ebp-2C]
 00516182    mov        eax,ebx
 00516184    pop        edx
 00516185    call       004D9194
 0051618A    xor        eax,eax
 0051618C    pop        edx
 0051618D    pop        ecx
 0051618E    pop        ecx
 0051618F    mov        dword ptr fs:[eax],edx
 00516192    push       5161CC
 00516197    lea        eax,[ebp-2C]
 0051619A    call       @IntfClear
 0051619F    lea        eax,[ebp-28]
 005161A2    call       @IntfClear
 005161A7    lea        eax,[ebp-24]
 005161AA    call       @IntfClear
 005161AF    lea        eax,[ebp-20]
 005161B2    call       @IntfClear
 005161B7    lea        eax,[ebp-1C]
 005161BA    mov        edx,7
 005161BF    call       @LStrArrayClr
 005161C4    ret
<005161C5    jmp        @HandleFinally
<005161CA    jmp        00516197
 005161CC    pop        edi
 005161CD    pop        esi
 005161CE    pop        ebx
 005161CF    mov        esp,ebp
 005161D1    pop        ebp
 005161D2    ret        8
*}
//end;

//005165B8
//procedure sub_005165B8(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005165B8    push       ebp
 005165B9    mov        ebp,esp
 005165BB    push       ecx
 005165BC    mov        ecx,13
 005165C1    push       0
 005165C3    push       0
 005165C5    dec        ecx
<005165C6    jne        005165C1
 005165C8    xchg       ecx,dword ptr [ebp-4]
 005165CB    push       ebx
 005165CC    push       esi
 005165CD    push       edi
 005165CE    mov        dword ptr [ebp-4],ecx
 005165D1    mov        esi,eax
 005165D3    mov        ebx,dword ptr [ebp+8]
 005165D6    mov        edi,dword ptr [ebp+10]
 005165D9    xor        eax,eax
 005165DB    push       ebp
 005165DC    push       516CC1
 005165E1    push       dword ptr fs:[eax]
 005165E4    mov        dword ptr fs:[eax],esp
 005165E7    mov        ecx,ebx
 005165E9    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 005165EF    mov        edx,dword ptr [edx]
 005165F1    mov        eax,esi
 005165F3    call       004D8E7C
 005165F8    mov        ecx,3
 005165FD    mov        edx,7
 00516602    mov        eax,esi
 00516604    call       0051B790
 00516609    test       al,al
>0051660B    je         0051667B
 0051660D    lea        eax,[ebp-18]
 00516610    mov        edx,516CDC; 'SELECT n.nspname,p.proname,p.prorettype,p.proargtypes,t.typtype,t.typrelid FROM pg_catalog.pg_proc p, pg_catalog.pg_namespace n, pg_catalog.pg_type t WHERE p.pronamespace=n.oid AND p.prorettype=t.oid'
 00516615    call       @LStrLAsg
 0051661A    cmp        dword ptr [ebp-4],0
>0051661E    je         00516645
 00516620    push       dword ptr [ebp-18]
 00516623    push       516DAC; ' AND n.nspname LIKE '
 00516628    lea        ecx,[ebp-30]
 0051662B    mov        edx,dword ptr [ebp-4]
 0051662E    mov        eax,esi
 00516630    call       00514EA0
 00516635    push       dword ptr [ebp-30]
 00516638    lea        eax,[ebp-18]
 0051663B    mov        edx,3
 00516640    call       @LStrCatN
 00516645    push       dword ptr [ebp-18]
 00516648    push       516DCC; ' AND p.proname LIKE '
 0051664D    lea        edx,[ebp-38]
 00516650    mov        eax,edi
 00516652    call       004D31DC
 00516657    mov        edx,dword ptr [ebp-38]
 0051665A    lea        ecx,[ebp-34]
 0051665D    mov        eax,esi
 0051665F    call       00514EA0
 00516664    push       dword ptr [ebp-34]
 00516667    push       516DEC; ' ORDER BY n.nspname, p.proname'
 0051666C    lea        eax,[ebp-18]
 0051666F    mov        edx,4
 00516674    call       @LStrCatN
>00516679    jmp        005166AC
 0051667B    push       516E14; 'SELECT NULL AS nspname,p.proname,p.prorettype,p.proargtypes,t.typtype,t.typrelid FROM pg_proc p, pg_type t WHERE p.prorettype=t.oid AND p.proname LIKE '
 00516680    lea        edx,[ebp-40]
 00516683    mov        eax,edi
 00516685    call       004D31DC
 0051668A    mov        edx,dword ptr [ebp-40]
 0051668D    lea        ecx,[ebp-3C]
 00516690    mov        eax,esi
 00516692    call       00514EA0
 00516697    push       dword ptr [ebp-3C]
 0051669A    push       516EB4; ' ORDER BY p.proname'
 0051669F    lea        eax,[ebp-18]
 005166A2    mov        edx,3
 005166A7    call       @LStrCatN
 005166AC    mov        dl,1
 005166AE    mov        eax,[0041C8E4]; TStringList
 005166B3    call       TObject.Create; TStringList.Create
 005166B8    mov        dword ptr [ebp-20],eax
 005166BB    xor        eax,eax
 005166BD    push       ebp
 005166BE    push       516C31
 005166C3    push       dword ptr fs:[eax]
 005166C6    mov        dword ptr fs:[eax],esp
 005166C9    lea        edx,[ebp-48]
 005166CC    mov        eax,esi
 005166CE    mov        ecx,dword ptr [eax]
 005166D0    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 005166D6    mov        eax,dword ptr [ebp-48]
 005166D9    lea        edx,[ebp-44]
 005166DC    mov        ecx,dword ptr [eax]
 005166DE    call       dword ptr [ecx+0C]
 005166E1    mov        eax,dword ptr [ebp-44]
 005166E4    lea        ecx,[ebp-24]
 005166E7    mov        edx,dword ptr [ebp-18]
 005166EA    mov        edi,dword ptr [eax]
 005166EC    call       dword ptr [edi+0C]
>005166EF    jmp        00516C03
 005166F4    lea        ecx,[ebp-4C]
 005166F7    mov        edx,516ED0; 'prorettype'
 005166FC    mov        eax,dword ptr [ebp-24]
 005166FF    mov        edi,dword ptr [eax]
 00516701    call       dword ptr [edi+74]
 00516704    mov        eax,dword ptr [ebp-4C]
 00516707    call       StrToInt
 0051670C    mov        dword ptr [ebp-0C],eax
 0051670F    lea        ecx,[ebp-1C]
 00516712    mov        edx,516EE4; 'typtype'
 00516717    mov        eax,dword ptr [ebp-24]
 0051671A    mov        edi,dword ptr [eax]
 0051671C    call       dword ptr [edi+74]
 0051671F    lea        ecx,[ebp-50]
 00516722    mov        edx,516EF4; 'proargtypes'
 00516727    mov        eax,dword ptr [ebp-24]
 0051672A    mov        edi,dword ptr [eax]
 0051672C    call       dword ptr [edi+74]
 0051672F    mov        edx,dword ptr [ebp-50]
 00516732    mov        ecx,516F08; '\n\r\t '
 00516737    mov        eax,dword ptr [ebp-20]
 0051673A    call       004BF370
 0051673F    mov        eax,dword ptr [ebp-1C]
 00516742    mov        edx,516F18; 'c'
 00516747    call       @LStrCmp
>0051674C    je         0051687C
 00516752    mov        eax,dword ptr [ebx]
 00516754    mov        edx,dword ptr [eax]
 00516756    call       dword ptr [edx+1E4]
 0051675C    mov        eax,dword ptr [ebx]
 0051675E    mov        edx,1
 00516763    mov        ecx,dword ptr [eax]
 00516765    call       dword ptr [ecx+130]
 0051676B    lea        ecx,[ebp-54]
 0051676E    mov        edx,516F24; 'nspname'
 00516773    mov        eax,dword ptr [ebp-24]
 00516776    mov        edi,dword ptr [eax]
 00516778    call       dword ptr [edi+74]
 0051677B    mov        ecx,dword ptr [ebp-54]
 0051677E    mov        eax,dword ptr [ebx]
 00516780    mov        edx,2
 00516785    mov        edi,dword ptr [eax]
 00516787    call       dword ptr [edi+158]
 0051678D    lea        ecx,[ebp-58]
 00516790    mov        edx,516F34; 'proname'
 00516795    mov        eax,dword ptr [ebp-24]
 00516798    mov        edi,dword ptr [eax]
 0051679A    call       dword ptr [edi+74]
 0051679D    mov        ecx,dword ptr [ebp-58]
 005167A0    mov        eax,dword ptr [ebx]
 005167A2    mov        edx,3
 005167A7    mov        edi,dword ptr [eax]
 005167A9    call       dword ptr [edi+158]
 005167AF    mov        eax,dword ptr [ebx]
 005167B1    mov        ecx,516F44; 'returnValue'
 005167B6    mov        edx,4
 005167BB    mov        edi,dword ptr [eax]
 005167BD    call       dword ptr [edi+158]
 005167C3    mov        eax,dword ptr [ebx]
 005167C5    mov        ecx,4
 005167CA    mov        edx,5
 005167CF    mov        edi,dword ptr [eax]
 005167D1    call       dword ptr [edi+140]
 005167D7    mov        edx,dword ptr [ebp-0C]
 005167DA    mov        eax,esi
 005167DC    call       0051BCE4
 005167E1    xor        ecx,ecx
 005167E3    mov        cl,al
 005167E5    mov        eax,dword ptr [ebx]
 005167E7    mov        edx,6
 005167EC    mov        edi,dword ptr [eax]
 005167EE    call       dword ptr [edi+140]
 005167F4    lea        ecx,[ebp-5C]
 005167F7    mov        edx,dword ptr [ebp-0C]
 005167FA    mov        eax,esi
 005167FC    call       0051BC5C
 00516801    mov        ecx,dword ptr [ebp-5C]
 00516804    mov        eax,dword ptr [ebx]
 00516806    mov        edx,7
 0051680B    mov        edi,dword ptr [eax]
 0051680D    call       dword ptr [edi+158]
 00516813    mov        eax,dword ptr [ebx]
 00516815    mov        edx,8
 0051681A    mov        ecx,dword ptr [eax]
 0051681C    call       dword ptr [ecx+130]
 00516822    mov        eax,dword ptr [ebx]
 00516824    mov        edx,9
 00516829    mov        ecx,dword ptr [eax]
 0051682B    call       dword ptr [ecx+130]
 00516831    mov        eax,dword ptr [ebx]
 00516833    mov        edx,0A
 00516838    mov        ecx,dword ptr [eax]
 0051683A    call       dword ptr [ecx+130]
 00516840    mov        eax,dword ptr [ebx]
 00516842    mov        edx,0B
 00516847    mov        ecx,dword ptr [eax]
 00516849    call       dword ptr [ecx+130]
 0051684F    mov        eax,dword ptr [ebx]
 00516851    mov        ecx,2
 00516856    mov        edx,0C
 0051685B    mov        edi,dword ptr [eax]
 0051685D    call       dword ptr [edi+140]
 00516863    mov        eax,dword ptr [ebx]
 00516865    mov        edx,0D
 0051686A    mov        ecx,dword ptr [eax]
 0051686C    call       dword ptr [ecx+130]
 00516872    mov        eax,dword ptr [ebx]
 00516874    mov        edx,dword ptr [eax]
 00516876    call       dword ptr [edx+1D0]
 0051687C    mov        eax,dword ptr [ebp-20]
 0051687F    mov        edx,dword ptr [eax]
 00516881    call       dword ptr [edx+14]; TStringList.GetCount
 00516884    sub        eax,1
>00516887    jno        0051688E
 00516889    call       @IntOver
 0051688E    test       eax,eax
>00516890    jl         00516A09
 00516896    inc        eax
 00516897    mov        dword ptr [ebp-2C],eax
 0051689A    mov        dword ptr [ebp-8],0
 005168A1    lea        ecx,[ebp-60]
 005168A4    mov        edx,dword ptr [ebp-8]
 005168A7    mov        eax,dword ptr [ebp-20]
 005168AA    mov        edi,dword ptr [eax]
 005168AC    call       dword ptr [edi+0C]; TStringList.Get
 005168AF    mov        eax,dword ptr [ebp-60]
 005168B2    call       StrToInt
 005168B7    mov        dword ptr [ebp-14],eax
 005168BA    mov        eax,dword ptr [ebx]
 005168BC    mov        edx,dword ptr [eax]
 005168BE    call       dword ptr [edx+1E4]
 005168C4    mov        eax,dword ptr [ebx]
 005168C6    mov        edx,1
 005168CB    mov        ecx,dword ptr [eax]
 005168CD    call       dword ptr [ecx+130]
 005168D3    lea        ecx,[ebp-64]
 005168D6    mov        edx,516F24; 'nspname'
 005168DB    mov        eax,dword ptr [ebp-24]
 005168DE    mov        edi,dword ptr [eax]
 005168E0    call       dword ptr [edi+74]
 005168E3    mov        ecx,dword ptr [ebp-64]
 005168E6    mov        eax,dword ptr [ebx]
 005168E8    mov        edx,2
 005168ED    mov        edi,dword ptr [eax]
 005168EF    call       dword ptr [edi+158]
 005168F5    lea        ecx,[ebp-68]
 005168F8    mov        edx,516F34; 'proname'
 005168FD    mov        eax,dword ptr [ebp-24]
 00516900    mov        edi,dword ptr [eax]
 00516902    call       dword ptr [edi+74]
 00516905    mov        ecx,dword ptr [ebp-68]
 00516908    mov        eax,dword ptr [ebx]
 0051690A    mov        edx,3
 0051690F    mov        edi,dword ptr [eax]
 00516911    call       dword ptr [edi+158]
 00516917    lea        edx,[ebp-70]
 0051691A    mov        eax,dword ptr [ebp-8]
 0051691D    call       IntToStr
 00516922    mov        ecx,dword ptr [ebp-70]
 00516925    lea        eax,[ebp-6C]
 00516928    mov        edx,516F58; '$'
 0051692D    call       @LStrCat3
 00516932    mov        ecx,dword ptr [ebp-6C]
 00516935    mov        eax,dword ptr [ebx]
 00516937    mov        edx,4
 0051693C    mov        edi,dword ptr [eax]
 0051693E    call       dword ptr [edi+158]
 00516944    mov        eax,dword ptr [ebx]
 00516946    mov        ecx,1
 0051694B    mov        edx,5
 00516950    mov        edi,dword ptr [eax]
 00516952    call       dword ptr [edi+140]
 00516958    mov        edx,dword ptr [ebp-14]
 0051695B    mov        eax,esi
 0051695D    call       0051BCE4
 00516962    xor        ecx,ecx
 00516964    mov        cl,al
 00516966    mov        eax,dword ptr [ebx]
 00516968    mov        edx,6
 0051696D    mov        edi,dword ptr [eax]
 0051696F    call       dword ptr [edi+140]
 00516975    lea        ecx,[ebp-74]
 00516978    mov        edx,dword ptr [ebp-14]
 0051697B    mov        eax,esi
 0051697D    call       0051BC5C
 00516982    mov        ecx,dword ptr [ebp-74]
 00516985    mov        eax,dword ptr [ebx]
 00516987    mov        edx,7
 0051698C    mov        edi,dword ptr [eax]
 0051698E    call       dword ptr [edi+158]
 00516994    mov        eax,dword ptr [ebx]
 00516996    mov        edx,8
 0051699B    mov        ecx,dword ptr [eax]
 0051699D    call       dword ptr [ecx+130]
 005169A3    mov        eax,dword ptr [ebx]
 005169A5    mov        edx,9
 005169AA    mov        ecx,dword ptr [eax]
 005169AC    call       dword ptr [ecx+130]
 005169B2    mov        eax,dword ptr [ebx]
 005169B4    mov        edx,0A
 005169B9    mov        ecx,dword ptr [eax]
 005169BB    call       dword ptr [ecx+130]
 005169C1    mov        eax,dword ptr [ebx]
 005169C3    mov        edx,0B
 005169C8    mov        ecx,dword ptr [eax]
 005169CA    call       dword ptr [ecx+130]
 005169D0    mov        eax,dword ptr [ebx]
 005169D2    mov        ecx,2
 005169D7    mov        edx,0C
 005169DC    mov        edi,dword ptr [eax]
 005169DE    call       dword ptr [edi+140]
 005169E4    mov        eax,dword ptr [ebx]
 005169E6    mov        edx,0D
 005169EB    mov        ecx,dword ptr [eax]
 005169ED    call       dword ptr [ecx+130]
 005169F3    mov        eax,dword ptr [ebx]
 005169F5    mov        edx,dword ptr [eax]
 005169F7    call       dword ptr [edx+1D0]
 005169FD    inc        dword ptr [ebp-8]
 00516A00    dec        dword ptr [ebp-2C]
<00516A03    jne        005168A1
 00516A09    mov        eax,dword ptr [ebp-1C]
 00516A0C    mov        edx,516F18; 'c'
 00516A11    call       @LStrCmp
>00516A16    jne        00516C03
 00516A1C    lea        eax,[ebp-78]
 00516A1F    push       eax
 00516A20    lea        ecx,[ebp-84]
 00516A26    mov        edx,516F64; 'typrelid'
 00516A2B    mov        eax,dword ptr [ebp-24]
 00516A2E    mov        edi,dword ptr [eax]
 00516A30    call       dword ptr [edi+74]
 00516A33    mov        eax,dword ptr [ebp-84]
 00516A39    mov        dword ptr [ebp-80],eax
 00516A3C    mov        byte ptr [ebp-7C],0B
 00516A40    lea        edx,[ebp-80]
 00516A43    xor        ecx,ecx
 00516A45    mov        eax,516F78; 'SELECT a.attname,a.atttypid FROM pg_catalog.pg_attribute a WHERE a.attrelid=%s ORDER BY a.attnum'
 00516A4A    call       Format
 00516A4F    mov        eax,dword ptr [ebp-78]
 00516A52    push       eax
 00516A53    lea        edx,[ebp-8C]
 00516A59    mov        eax,esi
 00516A5B    mov        ecx,dword ptr [eax]
 00516A5D    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00516A63    mov        eax,dword ptr [ebp-8C]
 00516A69    lea        edx,[ebp-88]
 00516A6F    mov        ecx,dword ptr [eax]
 00516A71    call       dword ptr [ecx+0C]
 00516A74    mov        eax,dword ptr [ebp-88]
 00516A7A    lea        ecx,[ebp-28]
 00516A7D    pop        edx
 00516A7E    mov        edi,dword ptr [eax]
 00516A80    call       dword ptr [edi+0C]
>00516A83    jmp        00516BEB
 00516A88    mov        edx,516FE4; 'atttypid'
 00516A8D    mov        eax,dword ptr [ebp-28]
 00516A90    mov        ecx,dword ptr [eax]
 00516A92    call       dword ptr [ecx+88]
 00516A98    mov        dword ptr [ebp-10],eax
 00516A9B    mov        eax,dword ptr [ebx]
 00516A9D    mov        edx,dword ptr [eax]
 00516A9F    call       dword ptr [edx+1E4]
 00516AA5    mov        eax,dword ptr [ebx]
 00516AA7    mov        edx,1
 00516AAC    mov        ecx,dword ptr [eax]
 00516AAE    call       dword ptr [ecx+130]
 00516AB4    lea        ecx,[ebp-90]
 00516ABA    mov        edx,516F24; 'nspname'
 00516ABF    mov        eax,dword ptr [ebp-24]
 00516AC2    mov        edi,dword ptr [eax]
 00516AC4    call       dword ptr [edi+74]
 00516AC7    mov        ecx,dword ptr [ebp-90]
 00516ACD    mov        eax,dword ptr [ebx]
 00516ACF    mov        edx,2
 00516AD4    mov        edi,dword ptr [eax]
 00516AD6    call       dword ptr [edi+158]
 00516ADC    lea        ecx,[ebp-94]
 00516AE2    mov        edx,516F34; 'proname'
 00516AE7    mov        eax,dword ptr [ebp-24]
 00516AEA    mov        edi,dword ptr [eax]
 00516AEC    call       dword ptr [edi+74]
 00516AEF    mov        ecx,dword ptr [ebp-94]
 00516AF5    mov        eax,dword ptr [ebx]
 00516AF7    mov        edx,3
 00516AFC    mov        edi,dword ptr [eax]
 00516AFE    call       dword ptr [edi+158]
 00516B04    lea        ecx,[ebp-98]
 00516B0A    mov        edx,516FF8; 'attname'
 00516B0F    mov        eax,dword ptr [ebp-28]
 00516B12    mov        edi,dword ptr [eax]
 00516B14    call       dword ptr [edi+74]
 00516B17    mov        ecx,dword ptr [ebp-98]
 00516B1D    mov        eax,dword ptr [ebx]
 00516B1F    mov        edx,4
 00516B24    mov        edi,dword ptr [eax]
 00516B26    call       dword ptr [edi+158]
 00516B2C    mov        eax,dword ptr [ebx]
 00516B2E    mov        ecx,5
 00516B33    mov        edx,5
 00516B38    mov        edi,dword ptr [eax]
 00516B3A    call       dword ptr [edi+140]
 00516B40    mov        edx,dword ptr [ebp-10]
 00516B43    mov        eax,esi
 00516B45    call       0051BCE4
 00516B4A    xor        ecx,ecx
 00516B4C    mov        cl,al
 00516B4E    mov        eax,dword ptr [ebx]
 00516B50    mov        edx,6
 00516B55    mov        edi,dword ptr [eax]
 00516B57    call       dword ptr [edi+140]
 00516B5D    lea        ecx,[ebp-9C]
 00516B63    mov        edx,dword ptr [ebp-10]
 00516B66    mov        eax,esi
 00516B68    call       0051BC5C
 00516B6D    mov        ecx,dword ptr [ebp-9C]
 00516B73    mov        eax,dword ptr [ebx]
 00516B75    mov        edx,7
 00516B7A    mov        edi,dword ptr [eax]
 00516B7C    call       dword ptr [edi+158]
 00516B82    mov        eax,dword ptr [ebx]
 00516B84    mov        edx,8
 00516B89    mov        ecx,dword ptr [eax]
 00516B8B    call       dword ptr [ecx+130]
 00516B91    mov        eax,dword ptr [ebx]
 00516B93    mov        edx,9
 00516B98    mov        ecx,dword ptr [eax]
 00516B9A    call       dword ptr [ecx+130]
 00516BA0    mov        eax,dword ptr [ebx]
 00516BA2    mov        edx,0A
 00516BA7    mov        ecx,dword ptr [eax]
 00516BA9    call       dword ptr [ecx+130]
 00516BAF    mov        eax,dword ptr [ebx]
 00516BB1    mov        edx,0B
 00516BB6    mov        ecx,dword ptr [eax]
 00516BB8    call       dword ptr [ecx+130]
 00516BBE    mov        eax,dword ptr [ebx]
 00516BC0    mov        ecx,2
 00516BC5    mov        edx,0C
 00516BCA    mov        edi,dword ptr [eax]
 00516BCC    call       dword ptr [edi+140]
 00516BD2    mov        eax,dword ptr [ebx]
 00516BD4    mov        edx,0D
 00516BD9    mov        ecx,dword ptr [eax]
 00516BDB    call       dword ptr [ecx+130]
 00516BE1    mov        eax,dword ptr [ebx]
 00516BE3    mov        edx,dword ptr [eax]
 00516BE5    call       dword ptr [edx+1D0]
 00516BEB    mov        eax,dword ptr [ebp-28]
 00516BEE    mov        edx,dword ptr [eax]
 00516BF0    call       dword ptr [edx+0C]
 00516BF3    test       al,al
<00516BF5    jne        00516A88
 00516BFB    mov        eax,dword ptr [ebp-28]
 00516BFE    mov        edx,dword ptr [eax]
 00516C00    call       dword ptr [edx+10]
 00516C03    mov        eax,dword ptr [ebp-24]
 00516C06    mov        edx,dword ptr [eax]
 00516C08    call       dword ptr [edx+0C]
 00516C0B    test       al,al
<00516C0D    jne        005166F4
 00516C13    mov        eax,dword ptr [ebp-24]
 00516C16    mov        edx,dword ptr [eax]
 00516C18    call       dword ptr [edx+10]
 00516C1B    xor        eax,eax
 00516C1D    pop        edx
 00516C1E    pop        ecx
 00516C1F    pop        ecx
 00516C20    mov        dword ptr fs:[eax],edx
 00516C23    push       516C38
 00516C28    mov        eax,dword ptr [ebp-20]
 00516C2B    call       TObject.Free
 00516C30    ret
<00516C31    jmp        @HandleFinally
<00516C36    jmp        00516C28
 00516C38    xor        eax,eax
 00516C3A    pop        edx
 00516C3B    pop        ecx
 00516C3C    pop        ecx
 00516C3D    mov        dword ptr fs:[eax],edx
 00516C40    push       516CCB
 00516C45    lea        eax,[ebp-9C]
 00516C4B    mov        edx,4
 00516C50    call       @LStrArrayClr
 00516C55    lea        eax,[ebp-8C]
 00516C5B    call       @IntfClear
 00516C60    lea        eax,[ebp-88]
 00516C66    call       @IntfClear
 00516C6B    lea        eax,[ebp-84]
 00516C71    call       @LStrClr
 00516C76    lea        eax,[ebp-78]
 00516C79    mov        edx,0C
 00516C7E    call       @LStrArrayClr
 00516C83    lea        eax,[ebp-48]
 00516C86    call       @IntfClear
 00516C8B    lea        eax,[ebp-44]
 00516C8E    call       @IntfClear
 00516C93    lea        eax,[ebp-40]
 00516C96    mov        edx,5
 00516C9B    call       @LStrArrayClr
 00516CA0    lea        eax,[ebp-28]
 00516CA3    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 00516CA9    mov        ecx,2
 00516CAE    call       @FinalizeArray
 00516CB3    lea        eax,[ebp-1C]
 00516CB6    mov        edx,2
 00516CBB    call       @LStrArrayClr
 00516CC0    ret
<00516CC1    jmp        @HandleFinally
<00516CC6    jmp        00516C45
 00516CCB    pop        edi
 00516CCC    pop        esi
 00516CCD    pop        ebx
 00516CCE    mov        esp,ebp
 00516CD0    pop        ebp
 00516CD1    ret        0C
*}
//end;

//00517000
//procedure sub_00517000(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00517000    push       ebp
 00517001    mov        ebp,esp
 00517003    push       ecx
 00517004    mov        ecx,6
 00517009    push       0
 0051700B    push       0
 0051700D    dec        ecx
<0051700E    jne        00517009
 00517010    push       ecx
 00517011    xchg       ecx,dword ptr [ebp-4]
 00517014    push       ebx
 00517015    push       esi
 00517016    push       edi
 00517017    mov        edi,ecx
 00517019    mov        ebx,eax
 0051701B    mov        esi,dword ptr [ebp+0C]
 0051701E    xor        eax,eax
 00517020    push       ebp
 00517021    push       5172F8
 00517026    push       dword ptr fs:[eax]
 00517029    mov        dword ptr fs:[eax],esp
 0051702C    mov        byte ptr [ebp-0D],1
 00517030    mov        ecx,3
 00517035    mov        edx,7
 0051703A    mov        eax,ebx
 0051703C    call       0051B790
 00517041    test       al,al
>00517043    je         00517090
 00517045    lea        eax,[ebp-0C]
 00517048    mov        edx,517310; ' SELECT NULL AS TABLE_CAT, n.nspname AS TABLE_SCHEM, c.relname AS TABLE_NAME,   CASE (n.nspname LIKE 'pg\\\\_%')   OR (n.nspname='information_schema') WHEN true THEN CASE n.nspname    WHEN 'pg_catalog' THEN CASE c.relkind      WHEN 'r' THEN 'SYSTEM TABLE'     WHEN 'v' THEN 'SYSTEM VIEW'      WHEN 'i' THEN 'SYSTEM INDEX'      ELSE NULL    END    WHEN 'information_schema' THEN CASE c.relkind      WHEN 'r' THEN 'SYSTEM TABLE'     WHEN 'v' THEN 'SYSTEM VIEW'      WHEN 'i' THEN 'SYSTEM INDEX'      ELSE NULL    END    WHEN 'pg_toast' THEN CASE c.relkind      WHEN 'r' THEN 'SYSTEM TOAST TABLE'      WHEN 'i' THEN 'SYSTEM TOAST INDEX'      ELSE NULL    END    ELSE CASE c.relkind \tWHEN 'r' THEN 'TEMPORARY TABLE' \tWHEN 'i' THEN 'TEMPORARY INDEX' \tELSE NULL    END  END  WHEN false THEN CASE c.relkind    WHEN 'r' THEN 'TABLE'    WHEN 'i' THEN 'INDEX'    WHEN 'S' THEN 'SEQUENCE'    WHEN 'v' THEN 'VIEW'    ELSE NULL  END  ELSE NULL  END  AS TABLE_TYPE, d.description AS REMARKS  FROM pg_catalog.pg_namespace n, pg_catalog.pg_class c  LEFT JOIN pg_catalog.pg_description d ON (c.oid = d.objoid AND d.objsubid = 0)  LEFT JOIN pg_catalog.pg_class dc ON (d.classoid=dc.oid AND dc.relname='pg_class') LEFT JOIN pg_catalog.pg_namespace dn ON (dn.oid=dc.relnamespace AND dn.nspname='pg_catalog')  WHERE c.relnamespace = n.oid '
 0051704D    call       @LStrLAsg
 00517052    push       dword ptr [ebp-0C]
 00517055    push       517840; ' AND n.nspname LIKE '
 0051705A    lea        edx,[ebp-1C]
 0051705D    mov        eax,edi
 0051705F    call       004D31DC
 00517064    mov        edx,dword ptr [ebp-1C]
 00517067    lea        ecx,[ebp-18]
 0051706A    mov        eax,ebx
 0051706C    call       00514EA0
 00517071    push       dword ptr [ebp-18]
 00517074    lea        eax,[ebp-0C]
 00517077    mov        edx,3
 0051707C    call       @LStrCatN
 00517081    lea        eax,[ebp-8]
 00517084    mov        edx,517860; ' ORDER BY TABLE_TYPE,TABLE_SCHEM,TABLE_NAME'
 00517089    call       @LStrLAsg
>0051708E    jmp        005170CD
 00517090    mov        byte ptr [ebp-0D],0
 00517094    lea        eax,[ebp-4]
 00517097    mov        edx,517894; ' CASE c.relname LIKE 'pg\\\\_%' WHEN true THEN CASE c.relname LIKE 'pg\\\\_toast\\\\_%' WHEN true THEN CASE c.relkind   WHEN 'r' THEN 'SYSTEM TOAST TABLE'   WHEN 'i' THEN 'SYSTEM TOAST INDEX'   ELSE NULL END WHEN false THEN CASE c.relname LIKE 'pg\\\\_temp\\\\_%'   WHEN true THEN CASE c.relkind     WHEN 'r' THEN 'TEMPORARY TABLE'     WHEN 'i' THEN 'TEMPORARY INDEX'     ELSE NULL   END   WHEN false THEN CASE c.relkind     WHEN 'r' THEN 'SYSTEM TABLE'     WHEN 'v' THEN 'SYSTEM VIEW'     WHEN 'i' THEN 'SYSTEM INDEX'     ELSE NULL   END   ELSE NULL END ELSE NULL END WHEN false THEN CASE c.relkind   WHEN 'r' THEN 'TABLE'   WHEN 'i' THEN 'INDEX'   WHEN 'S' THEN 'SEQUENCE'   WHEN 'v' THEN 'VIEW'   ELSE NULL END ELSE NULL  END '
 0051709C    call       @LStrLAsg
 005170A1    lea        eax,[ebp-8]
 005170A4    mov        edx,517B6C; ' ORDER BY TABLE_TYPE,TABLE_NAME '
 005170A9    call       @LStrLAsg
 005170AE    push       517B98; 'SELECT NULL AS TABLE_CAT, NULL AS TABLE_SCHEM, c.relname AS TABLE_NAME, '
 005170B3    push       dword ptr [ebp-4]
 005170B6    push       517BEC; ' AS TABLE_TYPE,'
 005170BB    push       517C04; ' NULL AS REMARKS FROM pg_class c WHERE true '
 005170C0    lea        eax,[ebp-0C]
 005170C3    mov        edx,4
 005170C8    call       @LStrCatN
 005170CD    test       esi,esi
>005170CF    je         005170E0
 005170D1    mov        eax,esi
 005170D3    call       @DynArrayLength
 005170D8    test       eax,eax
>005170DA    jne        005171A6
 005170E0    push       5
 005170E2    lea        eax,[ebp-14]
 005170E5    mov        ecx,1
 005170EA    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 005170F0    call       @DynArraySetLength
 005170F5    add        esp,4
 005170F8    xor        eax,eax
 005170FA    mov        edx,dword ptr [ebp-14]
 005170FD    test       edx,edx
>005170FF    je         00517106
 00517101    cmp        eax,dword ptr [edx-4]
>00517104    jb         0051710B
 00517106    call       @BoundErr
 0051710B    lea        eax,[edx+eax*4]
 0051710E    mov        edx,517C3C; 'TABLE'
 00517113    call       @LStrAsg
 00517118    mov        eax,1
 0051711D    mov        edx,dword ptr [ebp-14]
 00517120    test       edx,edx
>00517122    je         00517129
 00517124    cmp        eax,dword ptr [edx-4]
>00517127    jb         0051712E
 00517129    call       @BoundErr
 0051712E    lea        eax,[edx+eax*4]
 00517131    mov        edx,517C4C; 'VIEW'
 00517136    call       @LStrAsg
 0051713B    mov        eax,2
 00517140    mov        edx,dword ptr [ebp-14]
 00517143    test       edx,edx
>00517145    je         0051714C
 00517147    cmp        eax,dword ptr [edx-4]
>0051714A    jb         00517151
 0051714C    call       @BoundErr
 00517151    lea        eax,[edx+eax*4]
 00517154    mov        edx,517C5C; 'INDEX'
 00517159    call       @LStrAsg
 0051715E    mov        eax,3
 00517163    mov        edx,dword ptr [ebp-14]
 00517166    test       edx,edx
>00517168    je         0051716F
 0051716A    cmp        eax,dword ptr [edx-4]
>0051716D    jb         00517174
 0051716F    call       @BoundErr
 00517174    lea        eax,[edx+eax*4]
 00517177    mov        edx,517C6C; 'SEQUENCE'
 0051717C    call       @LStrAsg
 00517181    mov        eax,4
 00517186    mov        edx,dword ptr [ebp-14]
 00517189    test       edx,edx
>0051718B    je         00517192
 0051718D    cmp        eax,dword ptr [edx-4]
>00517190    jb         00517197
 00517192    call       @BoundErr
 00517197    lea        eax,[edx+eax*4]
 0051719A    mov        edx,517C80; 'TEMPORARY TABLE'
 0051719F    call       @LStrAsg
>005171A4    jmp        005171B6
 005171A6    lea        eax,[ebp-14]
 005171A9    mov        edx,esi
 005171AB    mov        ecx,dword ptr ds:[4073AC]; TStringDynArray
 005171B1    call       @DynArrayAsg
 005171B6    push       dword ptr [ebp-0C]
 005171B9    push       517C98; ' AND c.relname LIKE '
 005171BE    lea        edx,[ebp-24]
 005171C1    mov        eax,dword ptr [ebp+10]
 005171C4    call       004D31DC
 005171C9    mov        edx,dword ptr [ebp-24]
 005171CC    lea        ecx,[ebp-20]
 005171CF    mov        eax,ebx
 005171D1    call       00514EA0
 005171D6    push       dword ptr [ebp-20]
 005171D9    push       517CB8; ' AND (false'
 005171DE    lea        eax,[ebp-0C]
 005171E1    mov        edx,4
 005171E6    call       @LStrCatN
 005171EB    mov        eax,dword ptr [ebp-14]
 005171EE    call       @DynArrayHigh
 005171F3    mov        esi,eax
 005171F5    test       esi,esi
>005171F7    jl         0051723F
 005171F9    inc        esi
 005171FA    xor        edi,edi
 005171FC    push       dword ptr [ebp-0C]
 005171FF    push       517CCC; ' OR ('
 00517204    lea        eax,[ebp-28]
 00517207    push       eax
 00517208    mov        eax,dword ptr [ebp-14]
 0051720B    test       eax,eax
>0051720D    je         00517214
 0051720F    cmp        edi,dword ptr [eax-4]
>00517212    jb         00517219
 00517214    call       @BoundErr
 00517219    mov        edx,dword ptr [eax+edi*4]
 0051721C    mov        cl,byte ptr [ebp-0D]
 0051721F    mov        eax,ebx
 00517221    call       0051BE14
 00517226    push       dword ptr [ebp-28]
 00517229    push       517CDC; ')'
 0051722E    lea        eax,[ebp-0C]
 00517231    mov        edx,4
 00517236    call       @LStrCatN
 0051723B    inc        edi
 0051723C    dec        esi
<0051723D    jne        005171FC
 0051723F    push       dword ptr [ebp-0C]
 00517242    push       517CDC; ')'
 00517247    push       dword ptr [ebp-8]
 0051724A    lea        eax,[ebp-0C]
 0051724D    mov        edx,3
 00517252    call       @LStrCatN
 00517257    mov        eax,dword ptr [ebp+8]
 0051725A    push       eax
 0051725B    lea        edx,[ebp-34]
 0051725E    mov        eax,ebx
 00517260    mov        ecx,dword ptr [eax]
 00517262    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00517268    mov        eax,dword ptr [ebp-34]
 0051726B    lea        edx,[ebp-30]
 0051726E    mov        ecx,dword ptr [eax]
 00517270    call       dword ptr [ecx+0C]
 00517273    mov        eax,dword ptr [ebp-30]
 00517276    lea        ecx,[ebp-2C]
 00517279    mov        edx,dword ptr [ebp-0C]
 0051727C    mov        esi,dword ptr [eax]
 0051727E    call       dword ptr [esi+0C]
 00517281    mov        eax,dword ptr [ebp-2C]
 00517284    push       eax
 00517285    lea        ecx,[ebp-38]
 00517288    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 0051728E    mov        edx,dword ptr [edx]
 00517290    mov        eax,ebx
 00517292    call       004D8E7C
 00517297    mov        ecx,dword ptr [ebp-38]
 0051729A    mov        eax,ebx
 0051729C    pop        edx
 0051729D    call       004D9194
 005172A2    xor        eax,eax
 005172A4    pop        edx
 005172A5    pop        ecx
 005172A6    pop        ecx
 005172A7    mov        dword ptr fs:[eax],edx
 005172AA    push       5172FF
 005172AF    lea        eax,[ebp-38]
 005172B2    call       @IntfClear
 005172B7    lea        eax,[ebp-34]
 005172BA    call       @IntfClear
 005172BF    lea        eax,[ebp-30]
 005172C2    call       @IntfClear
 005172C7    lea        eax,[ebp-2C]
 005172CA    call       @IntfClear
 005172CF    lea        eax,[ebp-28]
 005172D2    mov        edx,5
 005172D7    call       @LStrArrayClr
 005172DC    lea        eax,[ebp-14]
 005172DF    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 005172E5    call       @DynArrayClear
 005172EA    lea        eax,[ebp-0C]
 005172ED    mov        edx,3
 005172F2    call       @LStrArrayClr
 005172F7    ret
<005172F8    jmp        @HandleFinally
<005172FD    jmp        005172AF
 005172FF    pop        edi
 00517300    pop        esi
 00517301    pop        ebx
 00517302    mov        esp,ebp
 00517304    pop        ebp
 00517305    ret        0C
*}
//end;

//00517CE0
//procedure sub_00517CE0(?:?);
//begin
{*
 00517CE0    push       ebp
 00517CE1    mov        ebp,esp
 00517CE3    xor        ecx,ecx
 00517CE5    push       ecx
 00517CE6    push       ecx
 00517CE7    push       ecx
 00517CE8    push       ecx
 00517CE9    push       ecx
 00517CEA    push       ebx
 00517CEB    push       esi
 00517CEC    mov        esi,edx
 00517CEE    mov        ebx,eax
 00517CF0    xor        eax,eax
 00517CF2    push       ebp
 00517CF3    push       517DAD
 00517CF8    push       dword ptr fs:[eax]
 00517CFB    mov        dword ptr fs:[eax],esp
 00517CFE    mov        ecx,3
 00517D03    mov        edx,7
 00517D08    mov        eax,ebx
 00517D0A    call       0051B790
 00517D0F    test       al,al
>00517D11    je         00517D22
 00517D13    lea        eax,[ebp-4]
 00517D16    mov        edx,517DC4; 'SELECT nspname AS TABLE_SCHEM FROM pg_catalog.pg_namespace WHERE nspname <> 'pg_toast' AND nspname NOT LIKE 'pg\\\\_temp\\\\_%' ORDER BY TABLE_SCHEM'
 00517D1B    call       @LStrLAsg
>00517D20    jmp        00517D2F
 00517D22    lea        eax,[ebp-4]
 00517D25    mov        edx,517E60; 'SELECT ''::text AS TABLE_SCHEM ORDER BY TABLE_SCHEM'
 00517D2A    call       @LStrLAsg
 00517D2F    push       esi
 00517D30    lea        edx,[ebp-10]
 00517D33    mov        eax,ebx
 00517D35    mov        ecx,dword ptr [eax]
 00517D37    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00517D3D    mov        eax,dword ptr [ebp-10]
 00517D40    lea        edx,[ebp-0C]
 00517D43    mov        ecx,dword ptr [eax]
 00517D45    call       dword ptr [ecx+0C]
 00517D48    mov        eax,dword ptr [ebp-0C]
 00517D4B    lea        ecx,[ebp-8]
 00517D4E    mov        edx,dword ptr [ebp-4]
 00517D51    mov        esi,dword ptr [eax]
 00517D53    call       dword ptr [esi+0C]
 00517D56    mov        eax,dword ptr [ebp-8]
 00517D59    push       eax
 00517D5A    lea        ecx,[ebp-14]
 00517D5D    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 00517D63    mov        edx,dword ptr [edx]
 00517D65    mov        eax,ebx
 00517D67    call       004D8E7C
 00517D6C    mov        ecx,dword ptr [ebp-14]
 00517D6F    mov        eax,ebx
 00517D71    pop        edx
 00517D72    call       004D9194
 00517D77    xor        eax,eax
 00517D79    pop        edx
 00517D7A    pop        ecx
 00517D7B    pop        ecx
 00517D7C    mov        dword ptr fs:[eax],edx
 00517D7F    push       517DB4
 00517D84    lea        eax,[ebp-14]
 00517D87    call       @IntfClear
 00517D8C    lea        eax,[ebp-10]
 00517D8F    call       @IntfClear
 00517D94    lea        eax,[ebp-0C]
 00517D97    call       @IntfClear
 00517D9C    lea        eax,[ebp-8]
 00517D9F    call       @IntfClear
 00517DA4    lea        eax,[ebp-4]
 00517DA7    call       @LStrClr
 00517DAC    ret
<00517DAD    jmp        @HandleFinally
<00517DB2    jmp        00517D84
 00517DB4    pop        esi
 00517DB5    pop        ebx
 00517DB6    mov        esp,ebp
 00517DB8    pop        ebp
 00517DB9    ret
*}
//end;

//00517E94
//procedure sub_00517E94(?:?);
//begin
{*
 00517E94    push       ebp
 00517E95    mov        ebp,esp
 00517E97    xor        ecx,ecx
 00517E99    push       ecx
 00517E9A    push       ecx
 00517E9B    push       ecx
 00517E9C    push       ecx
 00517E9D    push       ecx
 00517E9E    push       ebx
 00517E9F    push       esi
 00517EA0    mov        esi,edx
 00517EA2    mov        ebx,eax
 00517EA4    xor        eax,eax
 00517EA6    push       ebp
 00517EA7    push       517F61
 00517EAC    push       dword ptr fs:[eax]
 00517EAF    mov        dword ptr fs:[eax],esp
 00517EB2    mov        ecx,3
 00517EB7    mov        edx,7
 00517EBC    mov        eax,ebx
 00517EBE    call       0051B790
 00517EC3    test       al,al
>00517EC5    je         00517ED6
 00517EC7    lea        eax,[ebp-4]
 00517ECA    mov        edx,517F78; 'SELECT datname AS TABLE_CAT FROM pg_catalog.pg_database ORDER BY TABLE_CAT'
 00517ECF    call       @LStrLAsg
>00517ED4    jmp        00517EE3
 00517ED6    lea        eax,[ebp-4]
 00517ED9    mov        edx,517FCC; 'SELECT datname AS TABLE_CAT FROM pg_database ORDER BY TABLE_CAT'
 00517EDE    call       @LStrLAsg
 00517EE3    push       esi
 00517EE4    lea        edx,[ebp-10]
 00517EE7    mov        eax,ebx
 00517EE9    mov        ecx,dword ptr [eax]
 00517EEB    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00517EF1    mov        eax,dword ptr [ebp-10]
 00517EF4    lea        edx,[ebp-0C]
 00517EF7    mov        ecx,dword ptr [eax]
 00517EF9    call       dword ptr [ecx+0C]
 00517EFC    mov        eax,dword ptr [ebp-0C]
 00517EFF    lea        ecx,[ebp-8]
 00517F02    mov        edx,dword ptr [ebp-4]
 00517F05    mov        esi,dword ptr [eax]
 00517F07    call       dword ptr [esi+0C]
 00517F0A    mov        eax,dword ptr [ebp-8]
 00517F0D    push       eax
 00517F0E    lea        ecx,[ebp-14]
 00517F11    mov        edx,dword ptr ds:[61BB48]; ^gvar_0061DD44:TZMetadataColumnDefs
 00517F17    mov        edx,dword ptr [edx]
 00517F19    mov        eax,ebx
 00517F1B    call       004D8E7C
 00517F20    mov        ecx,dword ptr [ebp-14]
 00517F23    mov        eax,ebx
 00517F25    pop        edx
 00517F26    call       004D9194
 00517F2B    xor        eax,eax
 00517F2D    pop        edx
 00517F2E    pop        ecx
 00517F2F    pop        ecx
 00517F30    mov        dword ptr fs:[eax],edx
 00517F33    push       517F68
 00517F38    lea        eax,[ebp-14]
 00517F3B    call       @IntfClear
 00517F40    lea        eax,[ebp-10]
 00517F43    call       @IntfClear
 00517F48    lea        eax,[ebp-0C]
 00517F4B    call       @IntfClear
 00517F50    lea        eax,[ebp-8]
 00517F53    call       @IntfClear
 00517F58    lea        eax,[ebp-4]
 00517F5B    call       @LStrClr
 00517F60    ret
<00517F61    jmp        @HandleFinally
<00517F66    jmp        00517F38
 00517F68    pop        esi
 00517F69    pop        ebx
 00517F6A    mov        esp,ebp
 00517F6C    pop        ebp
 00517F6D    ret
*}
//end;

//005180FC
//procedure sub_005180FC(?:?);
//begin
{*
 005180FC    push       ebp
 005180FD    mov        ebp,esp
 005180FF    push       ecx
 00518100    push       ebx
 00518101    push       esi
 00518102    push       edi
 00518103    mov        esi,edx
 00518105    mov        ebx,eax
 00518107    mov        ecx,esi
 00518109    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 0051810F    mov        edx,dword ptr [edx]
 00518111    mov        eax,ebx
 00518113    call       004D8E7C
 00518118    mov        dword ptr [ebp-4],0B
 0051811F    mov        ebx,61637C; gvar_0061637C:array[11] of String
 00518124    mov        eax,dword ptr [esi]
 00518126    mov        edx,dword ptr [eax]
 00518128    call       dword ptr [edx+1E4]
 0051812E    mov        eax,dword ptr [esi]
 00518130    mov        ecx,dword ptr [ebx]
 00518132    mov        edx,1
 00518137    mov        edi,dword ptr [eax]
 00518139    call       dword ptr [edi+158]
 0051813F    mov        eax,dword ptr [esi]
 00518141    mov        edx,dword ptr [eax]
 00518143    call       dword ptr [edx+1D0]
 00518149    add        ebx,4
 0051814C    dec        dword ptr [ebp-4]
<0051814F    jne        00518124
 00518151    pop        edi
 00518152    pop        esi
 00518153    pop        ebx
 00518154    pop        ecx
 00518155    pop        ebp
 00518156    ret
*}
//end;

//00518158
//procedure sub_00518158(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00518158    push       ebp
 00518159    mov        ebp,esp
 0051815B    push       ecx
 0051815C    mov        ecx,9
 00518161    push       0
 00518163    push       0
 00518165    dec        ecx
<00518166    jne        00518161
 00518168    xchg       ecx,dword ptr [ebp-4]
 0051816B    push       ebx
 0051816C    push       esi
 0051816D    push       edi
 0051816E    mov        edi,ecx
 00518170    mov        esi,eax
 00518172    mov        ebx,dword ptr [ebp+8]
 00518175    xor        eax,eax
 00518177    push       ebp
 00518178    push       5186C6
 0051817D    push       dword ptr fs:[eax]
 00518180    mov        dword ptr fs:[eax],esp
 00518183    mov        ecx,ebx
 00518185    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 0051818B    mov        edx,dword ptr [edx]
 0051818D    mov        eax,esi
 0051818F    call       004D8E7C
 00518194    mov        ecx,3
 00518199    mov        edx,7
 0051819E    mov        eax,esi
 005181A0    call       0051B790
 005181A5    test       al,al
>005181A7    je         005181E0
 005181A9    lea        eax,[ebp-0C]
 005181AC    mov        edx,5186E0; 'SELECT n.nspname,c.relname,a.attname,a.atttypid,a.attnotnull,a.atttypmod,a.attlen,a.attnum,pg_get_expr(def.adbin, def.adrelid) as adsrc,dsc.description  FROM pg_catalog.pg_namespace n  JOIN pg_catalog.pg_class c ON (c.relnamespace = n.oid)  JOIN pg_catalog.pg_attribute a ON (a.attrelid=c.oid)  LEFT JOIN pg_catalog.pg_attrdef def ON (a.attrelid=def.adrelid AND a.attnum = def.adnum) LEFT JOIN pg_catalog.pg_description dsc ON (c.oid=dsc.objoid AND a.attnum = dsc.objsubid)  LEFT JOIN pg_catalog.pg_class dc ON (dc.oid=dsc.classoid AND dc.relname='pg_class') LEFT JOIN pg_catalog.pg_namespace dn ON (dc.relnamespace=dn.oid AND dn.nspname='pg_catalog')  WHERE a.attnum > 0 AND NOT a.attisdropped'
 005181B1    call       @LStrLAsg
 005181B6    test       edi,edi
>005181B8    je         005181ED
 005181BA    push       dword ptr [ebp-0C]
 005181BD    push       5189A0; ' AND n.nspname LIKE '
 005181C2    lea        ecx,[ebp-18]
 005181C5    mov        edx,edi
 005181C7    mov        eax,esi
 005181C9    call       00514EA0
 005181CE    push       dword ptr [ebp-18]
 005181D1    lea        eax,[ebp-0C]
 005181D4    mov        edx,3
 005181D9    call       @LStrCatN
>005181DE    jmp        005181ED
 005181E0    lea        eax,[ebp-0C]
 005181E3    mov        edx,5189C0; 'SELECT NULL::text AS nspname,c.relname,a.attname,a.atttypid,a.attnotnull,a.atttypmod,a.attlen,a.attnum,NULL AS adsrc,NULL AS descriptionFROM pg_class c, pg_attribute a  WHERE a.attrelid=c.oid AND a.attnum > 0 '
 005181E8    call       @LStrLAsg
 005181ED    push       dword ptr [ebp-0C]
 005181F0    push       518A9C; ' AND c.relname LIKE '
 005181F5    lea        edx,[ebp-20]
 005181F8    mov        eax,dword ptr [ebp+10]
 005181FB    call       004D31DC
 00518200    mov        edx,dword ptr [ebp-20]
 00518203    lea        ecx,[ebp-1C]
 00518206    mov        eax,esi
 00518208    call       00514EA0
 0051820D    push       dword ptr [ebp-1C]
 00518210    push       518ABC; ' AND a.attname LIKE '
 00518215    lea        edx,[ebp-28]
 00518218    mov        eax,dword ptr [ebp+0C]
 0051821B    call       004D31DC
 00518220    mov        edx,dword ptr [ebp-28]
 00518223    lea        ecx,[ebp-24]
 00518226    mov        eax,esi
 00518228    call       00514EA0
 0051822D    push       dword ptr [ebp-24]
 00518230    push       518ADC; ' ORDER BY nspname,relname,attnum'
 00518235    lea        eax,[ebp-0C]
 00518238    mov        edx,6
 0051823D    call       @LStrCatN
 00518242    lea        edx,[ebp-30]
 00518245    mov        eax,esi
 00518247    mov        ecx,dword ptr [eax]
 00518249    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051824F    mov        eax,dword ptr [ebp-30]
 00518252    lea        edx,[ebp-2C]
 00518255    mov        ecx,dword ptr [eax]
 00518257    call       dword ptr [ecx+0C]
 0051825A    mov        eax,dword ptr [ebp-2C]
 0051825D    lea        ecx,[ebp-14]
 00518260    mov        edx,dword ptr [ebp-0C]
 00518263    mov        edi,dword ptr [eax]
 00518265    call       dword ptr [edi+0C]
>00518268    jmp        00518659
 0051826D    mov        edx,6
 00518272    mov        eax,dword ptr [ebp-14]
 00518275    mov        ecx,dword ptr [eax]
 00518277    call       dword ptr [ecx+34]
 0051827A    mov        dword ptr [ebp-8],eax
 0051827D    mov        edx,4
 00518282    mov        eax,dword ptr [ebp-14]
 00518285    mov        ecx,dword ptr [eax]
 00518287    call       dword ptr [ecx+34]
 0051828A    mov        dword ptr [ebp-4],eax
 0051828D    lea        ecx,[ebp-10]
 00518290    mov        edx,dword ptr [ebp-4]
 00518293    mov        eax,esi
 00518295    call       0051BC5C
 0051829A    mov        eax,dword ptr [ebx]
 0051829C    mov        edx,dword ptr [eax]
 0051829E    call       dword ptr [edx+1E4]
 005182A4    mov        eax,dword ptr [ebx]
 005182A6    mov        edx,1
 005182AB    mov        ecx,dword ptr [eax]
 005182AD    call       dword ptr [ecx+130]
 005182B3    lea        ecx,[ebp-34]
 005182B6    mov        edx,1
 005182BB    mov        eax,dword ptr [ebp-14]
 005182BE    mov        edi,dword ptr [eax]
 005182C0    call       dword ptr [edi+20]
 005182C3    mov        ecx,dword ptr [ebp-34]
 005182C6    mov        eax,dword ptr [ebx]
 005182C8    mov        edx,2
 005182CD    mov        edi,dword ptr [eax]
 005182CF    call       dword ptr [edi+158]
 005182D5    lea        ecx,[ebp-38]
 005182D8    mov        edx,2
 005182DD    mov        eax,dword ptr [ebp-14]
 005182E0    mov        edi,dword ptr [eax]
 005182E2    call       dword ptr [edi+20]
 005182E5    mov        ecx,dword ptr [ebp-38]
 005182E8    mov        eax,dword ptr [ebx]
 005182EA    mov        edx,3
 005182EF    mov        edi,dword ptr [eax]
 005182F1    call       dword ptr [edi+158]
 005182F7    lea        ecx,[ebp-3C]
 005182FA    mov        edx,3
 005182FF    mov        eax,dword ptr [ebp-14]
 00518302    mov        edi,dword ptr [eax]
 00518304    call       dword ptr [edi+20]
 00518307    mov        ecx,dword ptr [ebp-3C]
 0051830A    mov        eax,dword ptr [ebx]
 0051830C    mov        edx,4
 00518311    mov        edi,dword ptr [eax]
 00518313    call       dword ptr [edi+158]
 00518319    mov        edx,dword ptr [ebp-4]
 0051831C    mov        eax,esi
 0051831E    call       0051BCE4
 00518323    xor        ecx,ecx
 00518325    mov        cl,al
 00518327    mov        eax,dword ptr [ebx]
 00518329    mov        edx,5
 0051832E    mov        edi,dword ptr [eax]
 00518330    call       dword ptr [edi+140]
 00518336    mov        eax,dword ptr [ebx]
 00518338    mov        ecx,dword ptr [ebp-10]
 0051833B    mov        edx,6
 00518340    mov        edi,dword ptr [eax]
 00518342    call       dword ptr [edi+158]
 00518348    mov        eax,dword ptr [ebx]
 0051834A    xor        ecx,ecx
 0051834C    mov        edx,8
 00518351    mov        edi,dword ptr [eax]
 00518353    call       dword ptr [edi+140]
 00518359    mov        eax,dword ptr [ebp-10]
 0051835C    mov        edx,518B08; 'bpchar'
 00518361    call       @LStrCmp
>00518366    je         00518377
 00518368    mov        eax,dword ptr [ebp-10]
 0051836B    mov        edx,518B18; 'varchar'
 00518370    call       @LStrCmp
>00518375    jne        005183B4
 00518377    cmp        dword ptr [ebp-8],0FFFFFFFF
>0051837B    je         0051839E
 0051837D    mov        ecx,dword ptr [ebp-8]
 00518380    sub        ecx,4
>00518383    jno        0051838A
 00518385    call       @IntOver
 0051838A    mov        eax,dword ptr [ebx]
 0051838C    mov        edx,7
 00518391    mov        edi,dword ptr [eax]
 00518393    call       dword ptr [edi+140]
>00518399    jmp        005184B5
 0051839E    mov        eax,dword ptr [ebx]
 005183A0    xor        ecx,ecx
 005183A2    mov        edx,7
 005183A7    mov        edi,dword ptr [eax]
 005183A9    call       dword ptr [edi+140]
>005183AF    jmp        005184B5
 005183B4    mov        eax,dword ptr [ebp-10]
 005183B7    mov        edx,518B28; 'numeric'
 005183BC    call       @LStrCmp
>005183C1    je         005183D2
 005183C3    mov        eax,dword ptr [ebp-10]
 005183C6    mov        edx,518B38; 'decimal'
 005183CB    call       @LStrCmp
>005183D0    jne        0051843D
 005183D2    mov        ecx,dword ptr [ebp-8]
 005183D5    sub        ecx,4
>005183D8    jno        005183DF
 005183DA    call       @IntOver
 005183DF    test       ecx,ecx
>005183E1    jns        005183E9
 005183E3    add        ecx,0FFFF
 005183E9    sar        ecx,10
 005183EC    mov        eax,dword ptr [ebx]
 005183EE    mov        edx,7
 005183F3    mov        edi,dword ptr [eax]
 005183F5    call       dword ptr [edi+140]
 005183FB    mov        ecx,dword ptr [ebp-8]
 005183FE    sub        ecx,4
>00518401    jno        00518408
 00518403    call       @IntOver
 00518408    and        ecx,8000FFFF
>0051840E    jns        00518418
 00518410    dec        ecx
 00518411    or         ecx,0FFFF0000
 00518417    inc        ecx
 00518418    mov        eax,dword ptr [ebx]
 0051841A    mov        edx,9
 0051841F    mov        edi,dword ptr [eax]
 00518421    call       dword ptr [edi+140]
 00518427    mov        eax,dword ptr [ebx]
 00518429    mov        ecx,0A
 0051842E    mov        edx,0A
 00518433    mov        edi,dword ptr [eax]
 00518435    call       dword ptr [edi+140]
>0051843B    jmp        005184B5
 0051843D    mov        eax,dword ptr [ebp-10]
 00518440    mov        edx,518B48; 'bit'
 00518445    call       @LStrCmp
>0051844A    je         0051845B
 0051844C    mov        eax,dword ptr [ebp-10]
 0051844F    mov        edx,518B54; 'varbit'
 00518454    call       @LStrCmp
>00518459    jne        00518483
 0051845B    mov        eax,dword ptr [ebx]
 0051845D    mov        ecx,dword ptr [ebp-8]
 00518460    mov        edx,7
 00518465    mov        edi,dword ptr [eax]
 00518467    call       dword ptr [edi+140]
 0051846D    mov        eax,dword ptr [ebx]
 0051846F    mov        ecx,2
 00518474    mov        edx,0A
 00518479    mov        edi,dword ptr [eax]
 0051847B    call       dword ptr [edi+140]
>00518481    jmp        005184B5
 00518483    mov        edx,7
 00518488    mov        eax,dword ptr [ebp-14]
 0051848B    mov        ecx,dword ptr [eax]
 0051848D    call       dword ptr [ecx+34]
 00518490    mov        ecx,eax
 00518492    mov        eax,dword ptr [ebx]
 00518494    mov        edx,7
 00518499    mov        edi,dword ptr [eax]
 0051849B    call       dword ptr [edi+140]
 005184A1    mov        eax,dword ptr [ebx]
 005184A3    mov        ecx,2
 005184A8    mov        edx,0A
 005184AD    mov        edi,dword ptr [eax]
 005184AF    call       dword ptr [edi+140]
 005184B5    mov        eax,dword ptr [ebx]
 005184B7    mov        edx,8
 005184BC    mov        ecx,dword ptr [eax]
 005184BE    call       dword ptr [ecx+130]
 005184C4    mov        edx,5
 005184C9    mov        eax,dword ptr [ebp-14]
 005184CC    mov        ecx,dword ptr [eax]
 005184CE    call       dword ptr [ecx+28]
 005184D1    test       al,al
>005184D3    je         005184FC
 005184D5    mov        eax,dword ptr [ebx]
 005184D7    mov        ecx,518B64; 'NO'
 005184DC    mov        edx,12
 005184E1    mov        edi,dword ptr [eax]
 005184E3    call       dword ptr [edi+158]
 005184E9    mov        eax,dword ptr [ebx]
 005184EB    xor        ecx,ecx
 005184ED    mov        edx,0B
 005184F2    mov        edi,dword ptr [eax]
 005184F4    call       dword ptr [edi+140]
>005184FA    jmp        00518524
 005184FC    mov        eax,dword ptr [ebx]
 005184FE    mov        ecx,518B70; 'YES'
 00518503    mov        edx,12
 00518508    mov        edi,dword ptr [eax]
 0051850A    call       dword ptr [edi+158]
 00518510    mov        eax,dword ptr [ebx]
 00518512    mov        ecx,1
 00518517    mov        edx,0B
 0051851C    mov        edi,dword ptr [eax]
 0051851E    call       dword ptr [edi+140]
 00518524    lea        ecx,[ebp-40]
 00518527    mov        edx,0A
 0051852C    mov        eax,dword ptr [ebp-14]
 0051852F    mov        edi,dword ptr [eax]
 00518531    call       dword ptr [edi+20]
 00518534    mov        ecx,dword ptr [ebp-40]
 00518537    mov        eax,dword ptr [ebx]
 00518539    mov        edx,0C
 0051853E    mov        edi,dword ptr [eax]
 00518540    call       dword ptr [edi+158]
 00518546    lea        ecx,[ebp-44]
 00518549    mov        edx,9
 0051854E    mov        eax,dword ptr [ebp-14]
 00518551    mov        edi,dword ptr [eax]
 00518553    call       dword ptr [edi+20]
 00518556    mov        ecx,dword ptr [ebp-44]
 00518559    mov        eax,dword ptr [ebx]
 0051855B    mov        edx,0D
 00518560    mov        edi,dword ptr [eax]
 00518562    call       dword ptr [edi+158]
 00518568    mov        eax,dword ptr [ebx]
 0051856A    mov        edx,0E
 0051856F    mov        ecx,dword ptr [eax]
 00518571    call       dword ptr [ecx+130]
 00518577    mov        eax,dword ptr [ebx]
 00518579    mov        edx,0F
 0051857E    mov        ecx,dword ptr [eax]
 00518580    call       dword ptr [ecx+130]
 00518586    mov        eax,dword ptr [ebx]
 00518588    mov        edx,7
 0051858D    mov        ecx,dword ptr [eax]
 0051858F    call       dword ptr [ecx+34]
 00518592    mov        ecx,eax
 00518594    mov        eax,dword ptr [ebx]
 00518596    mov        edx,10
 0051859B    mov        edi,dword ptr [eax]
 0051859D    call       dword ptr [edi+140]
 005185A3    mov        edx,8
 005185A8    mov        eax,dword ptr [ebp-14]
 005185AB    mov        ecx,dword ptr [eax]
 005185AD    call       dword ptr [ecx+34]
 005185B0    mov        ecx,eax
 005185B2    mov        eax,dword ptr [ebx]
 005185B4    mov        edx,11
 005185B9    mov        edi,dword ptr [eax]
 005185BB    call       dword ptr [edi+140]
 005185C1    mov        eax,dword ptr [ebx]
 005185C3    mov        edx,518B7C; 'AUTO_INCREMENT'
 005185C8    mov        ecx,dword ptr [eax]
 005185CA    call       dword ptr [ecx+180]
 005185D0    lea        ecx,[ebp-48]
 005185D3    mov        edx,3
 005185D8    mov        eax,dword ptr [ebp-14]
 005185DB    mov        edi,dword ptr [eax]
 005185DD    call       dword ptr [edi+20]
 005185E0    mov        eax,dword ptr [ebp-48]
 005185E3    push       eax
 005185E4    lea        edx,[ebp-4C]
 005185E7    mov        eax,esi
 005185E9    mov        ecx,dword ptr [eax]
 005185EB    call       dword ptr [ecx+23C]; TZPostgreSQLDatabaseMetadata.sub_004DAB04
 005185F1    mov        eax,dword ptr [ebp-4C]
 005185F4    pop        edx
 005185F5    mov        ecx,dword ptr [eax]
 005185F7    call       dword ptr [ecx+0C]
 005185FA    mov        ecx,eax
 005185FC    mov        eax,dword ptr [ebx]
 005185FE    mov        edx,518B94; 'CASE_SENSITIVE'
 00518603    mov        edi,dword ptr [eax]
 00518605    call       dword ptr [edi+184]
 0051860B    mov        eax,dword ptr [ebx]
 0051860D    mov        cl,1
 0051860F    mov        edx,518BAC; 'SEARCHABLE'
 00518614    mov        edi,dword ptr [eax]
 00518616    call       dword ptr [edi+184]
 0051861C    mov        eax,dword ptr [ebx]
 0051861E    mov        cl,1
 00518620    mov        edx,518BC0; 'WRITABLE'
 00518625    mov        edi,dword ptr [eax]
 00518627    call       dword ptr [edi+184]
 0051862D    mov        eax,dword ptr [ebx]
 0051862F    mov        cl,1
 00518631    mov        edx,518BD4; 'DEFINITELYWRITABLE'
 00518636    mov        edi,dword ptr [eax]
 00518638    call       dword ptr [edi+184]
 0051863E    mov        eax,dword ptr [ebx]
 00518640    xor        ecx,ecx
 00518642    mov        edx,518BF0; 'READONLY'
 00518647    mov        edi,dword ptr [eax]
 00518649    call       dword ptr [edi+184]
 0051864F    mov        eax,dword ptr [ebx]
 00518651    mov        edx,dword ptr [eax]
 00518653    call       dword ptr [edx+1D0]
 00518659    mov        eax,dword ptr [ebp-14]
 0051865C    mov        edx,dword ptr [eax]
 0051865E    call       dword ptr [edx+0C]
 00518661    test       al,al
<00518663    jne        0051826D
 00518669    mov        eax,dword ptr [ebp-14]
 0051866C    mov        edx,dword ptr [eax]
 0051866E    call       dword ptr [edx+10]
 00518671    xor        eax,eax
 00518673    pop        edx
 00518674    pop        ecx
 00518675    pop        ecx
 00518676    mov        dword ptr fs:[eax],edx
 00518679    push       5186CD
 0051867E    lea        eax,[ebp-4C]
 00518681    call       @IntfClear
 00518686    lea        eax,[ebp-48]
 00518689    mov        edx,6
 0051868E    call       @LStrArrayClr
 00518693    lea        eax,[ebp-30]
 00518696    call       @IntfClear
 0051869B    lea        eax,[ebp-2C]
 0051869E    call       @IntfClear
 005186A3    lea        eax,[ebp-28]
 005186A6    mov        edx,5
 005186AB    call       @LStrArrayClr
 005186B0    lea        eax,[ebp-14]
 005186B3    call       @IntfClear
 005186B8    lea        eax,[ebp-10]
 005186BB    mov        edx,2
 005186C0    call       @LStrArrayClr
 005186C5    ret
<005186C6    jmp        @HandleFinally
<005186CB    jmp        0051867E
 005186CD    pop        edi
 005186CE    pop        esi
 005186CF    pop        ebx
 005186D0    mov        esp,ebp
 005186D2    pop        ebp
 005186D3    ret        0C
*}
//end;

//00518BFC
//procedure sub_00518BFC(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00518BFC    push       ebp
 00518BFD    mov        ebp,esp
 00518BFF    push       ecx
 00518C00    mov        ecx,0B
 00518C05    push       0
 00518C07    push       0
 00518C09    dec        ecx
<00518C0A    jne        00518C05
 00518C0C    push       ecx
 00518C0D    xchg       ecx,dword ptr [ebp-4]
 00518C10    push       ebx
 00518C11    push       esi
 00518C12    push       edi
 00518C13    mov        dword ptr [ebp-8],ecx
 00518C16    mov        dword ptr [ebp-4],eax
 00518C19    mov        ebx,dword ptr [ebp+8]
 00518C1C    xor        eax,eax
 00518C1E    push       ebp
 00518C1F    push       518FBB
 00518C24    push       dword ptr fs:[eax]
 00518C27    mov        dword ptr fs:[eax],esp
 00518C2A    mov        ecx,ebx
 00518C2C    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 00518C32    mov        edx,dword ptr [edx]
 00518C34    mov        eax,dword ptr [ebp-4]
 00518C37    call       004D8E7C
 00518C3C    mov        ecx,3
 00518C41    mov        edx,7
 00518C46    mov        eax,dword ptr [ebp-4]
 00518C49    call       0051B790
 00518C4E    test       al,al
>00518C50    je         00518C8D
 00518C52    lea        eax,[ebp-14]
 00518C55    mov        edx,518FD4; 'SELECT n.nspname,c.relname,u.usename,c.relacl,a.attname  FROM pg_catalog.pg_namespace n, pg_catalog.pg_class c, pg_catalog.pg_user u, pg_catalog.pg_attribute a  WHERE c.relnamespace = n.oid AND u.usesysid = c.relowner  AND c.oid = a.attrelid AND c.relkind = 'r' AND a.attnum > 0 AND NOT a.attisdropped'
 00518C5A    call       @LStrLAsg
 00518C5F    cmp        dword ptr [ebp-8],0
>00518C63    je         00518C9A
 00518C65    push       dword ptr [ebp-14]
 00518C68    push       51910C; ' AND n.nspname = '
 00518C6D    lea        ecx,[ebp-3C]
 00518C70    mov        edx,dword ptr [ebp-8]
 00518C73    mov        eax,dword ptr [ebp-4]
 00518C76    call       00514EA0
 00518C7B    push       dword ptr [ebp-3C]
 00518C7E    lea        eax,[ebp-14]
 00518C81    mov        edx,3
 00518C86    call       @LStrCatN
>00518C8B    jmp        00518C9A
 00518C8D    lea        eax,[ebp-14]
 00518C90    mov        edx,519128; 'SELECT NULL::text AS nspname,c.relname,u.usename,c.relacl,a.attname FROM pg_class c, pg_user u,pg_attribute a  WHERE u.usesysid = c.relowner AND c.oid = a.attrelid  AND a.attnum > 0 AND c.relkind = 'r''
 00518C95    call       @LStrLAsg
 00518C9A    push       dword ptr [ebp-14]
 00518C9D    push       5191FC; ' AND c.relname = '
 00518CA2    lea        ecx,[ebp-40]
 00518CA5    mov        edx,dword ptr [ebp+10]
 00518CA8    mov        eax,dword ptr [ebp-4]
 00518CAB    call       00514EA0
 00518CB0    push       dword ptr [ebp-40]
 00518CB3    push       519218; ' AND a.attname LIKE '
 00518CB8    lea        edx,[ebp-4C]
 00518CBB    mov        eax,dword ptr [ebp+0C]
 00518CBE    call       004D31DC
 00518CC3    mov        eax,dword ptr [ebp-4C]
 00518CC6    lea        edx,[ebp-48]
 00518CC9    call       004D31DC
 00518CCE    mov        edx,dword ptr [ebp-48]
 00518CD1    lea        ecx,[ebp-44]
 00518CD4    mov        eax,dword ptr [ebp-4]
 00518CD7    call       00514EA0
 00518CDC    push       dword ptr [ebp-44]
 00518CDF    push       519238; ' ORDER BY attname'
 00518CE4    lea        eax,[ebp-14]
 00518CE7    mov        edx,6
 00518CEC    call       @LStrCatN
 00518CF1    mov        dl,1
 00518CF3    mov        eax,[0041C8E4]; TStringList
 00518CF8    call       TObject.Create; TStringList.Create
 00518CFD    mov        dword ptr [ebp-2C],eax
 00518D00    mov        dl,1
 00518D02    mov        eax,[0041C8E4]; TStringList
 00518D07    call       TObject.Create; TStringList.Create
 00518D0C    mov        dword ptr [ebp-30],eax
 00518D0F    xor        eax,eax
 00518D11    push       ebp
 00518D12    push       518F67
 00518D17    push       dword ptr fs:[eax]
 00518D1A    mov        dword ptr fs:[eax],esp
 00518D1D    lea        edx,[ebp-54]
 00518D20    mov        eax,dword ptr [ebp-4]
 00518D23    mov        ecx,dword ptr [eax]
 00518D25    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00518D2B    mov        eax,dword ptr [ebp-54]
 00518D2E    lea        edx,[ebp-50]
 00518D31    mov        ecx,dword ptr [eax]
 00518D33    call       dword ptr [ecx+0C]
 00518D36    mov        eax,dword ptr [ebp-50]
 00518D39    lea        ecx,[ebp-34]
 00518D3C    mov        edx,dword ptr [ebp-14]
 00518D3F    mov        esi,dword ptr [eax]
 00518D41    call       dword ptr [esi+0C]
>00518D44    jmp        00518F31
 00518D49    lea        ecx,[ebp-18]
 00518D4C    mov        edx,519254; 'attname'
 00518D51    mov        eax,dword ptr [ebp-34]
 00518D54    mov        esi,dword ptr [eax]
 00518D56    call       dword ptr [esi+74]
 00518D59    lea        ecx,[ebp-1C]
 00518D5C    mov        edx,519264; 'usename'
 00518D61    mov        eax,dword ptr [ebp-34]
 00518D64    mov        esi,dword ptr [eax]
 00518D66    call       dword ptr [esi+74]
 00518D69    mov        eax,dword ptr [ebp-2C]
 00518D6C    mov        edx,dword ptr [eax]
 00518D6E    call       dword ptr [edx+44]; TStringList.Clear
 00518D71    lea        ecx,[ebp-58]
 00518D74    mov        edx,519274; 'relacl'
 00518D79    mov        eax,dword ptr [ebp-34]
 00518D7C    mov        esi,dword ptr [eax]
 00518D7E    call       dword ptr [esi+74]
 00518D81    mov        ecx,dword ptr [ebp-58]
 00518D84    mov        edx,dword ptr [ebp-2C]
 00518D87    mov        eax,dword ptr [ebp-4]
 00518D8A    call       0051C760
 00518D8F    mov        eax,dword ptr [ebp-2C]
 00518D92    mov        edx,dword ptr [eax]
 00518D94    call       dword ptr [edx+14]; TStringList.GetCount
 00518D97    sub        eax,1
>00518D9A    jno        00518DA1
 00518D9C    call       @IntOver
 00518DA1    test       eax,eax
>00518DA3    jl         00518F31
 00518DA9    inc        eax
 00518DAA    mov        dword ptr [ebp-38],eax
 00518DAD    mov        dword ptr [ebp-0C],0
 00518DB4    lea        ecx,[ebp-5C]
 00518DB7    mov        edx,dword ptr [ebp-0C]
 00518DBA    mov        eax,dword ptr [ebp-2C]
 00518DBD    mov        esi,dword ptr [eax]
 00518DBF    call       dword ptr [esi+0C]; TStringList.Get
 00518DC2    mov        edx,dword ptr [ebp-5C]
 00518DC5    mov        ecx,519284; '='
 00518DCA    mov        eax,dword ptr [ebp-30]
 00518DCD    call       004BF370
 00518DD2    mov        eax,dword ptr [ebp-30]
 00518DD5    mov        edx,dword ptr [eax]
 00518DD7    call       dword ptr [edx+14]; TStringList.GetCount
 00518DDA    cmp        eax,2
>00518DDD    jl         00518F25
 00518DE3    lea        ecx,[ebp-28]
 00518DE6    xor        edx,edx
 00518DE8    mov        eax,dword ptr [ebp-30]
 00518DEB    mov        esi,dword ptr [eax]
 00518DED    call       dword ptr [esi+0C]; TStringList.Get
 00518DF0    cmp        dword ptr [ebp-28],0
>00518DF4    jne        00518E03
 00518DF6    lea        eax,[ebp-28]
 00518DF9    mov        edx,519290; 'PUBLIC'
 00518DFE    call       @LStrLAsg
 00518E03    lea        ecx,[ebp-20]
 00518E06    mov        edx,1
 00518E0B    mov        eax,dword ptr [ebp-30]
 00518E0E    mov        esi,dword ptr [eax]
 00518E10    call       dword ptr [esi+0C]; TStringList.Get
 00518E13    mov        eax,dword ptr [ebp-20]
 00518E16    call       @LStrLen
 00518E1B    mov        esi,eax
 00518E1D    test       esi,esi
>00518E1F    jle        00518F25
 00518E25    mov        dword ptr [ebp-10],1
 00518E2C    mov        eax,dword ptr [ebp-1C]
 00518E2F    mov        edx,dword ptr [ebp-28]
 00518E32    call       @LStrCmp
>00518E37    jne        00518E48
 00518E39    lea        eax,[ebp-24]
 00518E3C    mov        edx,5192A0; 'YES'
 00518E41    call       @LStrLAsg
>00518E46    jmp        00518E55
 00518E48    lea        eax,[ebp-24]
 00518E4B    mov        edx,5192AC; 'NO'
 00518E50    call       @LStrLAsg
 00518E55    mov        eax,dword ptr [ebx]
 00518E57    mov        edx,dword ptr [eax]
 00518E59    call       dword ptr [edx+1E4]
 00518E5F    mov        eax,dword ptr [ebx]
 00518E61    mov        edx,1
 00518E66    mov        ecx,dword ptr [eax]
 00518E68    call       dword ptr [ecx+130]
 00518E6E    mov        eax,dword ptr [ebx]
 00518E70    mov        ecx,dword ptr [ebp-8]
 00518E73    mov        edx,2
 00518E78    mov        edi,dword ptr [eax]
 00518E7A    call       dword ptr [edi+158]
 00518E80    mov        eax,dword ptr [ebx]
 00518E82    mov        ecx,dword ptr [ebp+10]
 00518E85    mov        edx,3
 00518E8A    mov        edi,dword ptr [eax]
 00518E8C    call       dword ptr [edi+158]
 00518E92    mov        eax,dword ptr [ebx]
 00518E94    mov        ecx,dword ptr [ebp-18]
 00518E97    mov        edx,4
 00518E9C    mov        edi,dword ptr [eax]
 00518E9E    call       dword ptr [edi+158]
 00518EA4    mov        eax,dword ptr [ebx]
 00518EA6    mov        ecx,dword ptr [ebp-1C]
 00518EA9    mov        edx,5
 00518EAE    mov        edi,dword ptr [eax]
 00518EB0    call       dword ptr [edi+158]
 00518EB6    mov        eax,dword ptr [ebx]
 00518EB8    mov        ecx,dword ptr [ebp-28]
 00518EBB    mov        edx,6
 00518EC0    mov        edi,dword ptr [eax]
 00518EC2    call       dword ptr [edi+158]
 00518EC8    mov        eax,dword ptr [ebp-10]
 00518ECB    mov        edx,dword ptr [ebp-20]
 00518ECE    dec        eax
 00518ECF    test       edx,edx
>00518ED1    je         00518ED8
 00518ED3    cmp        eax,dword ptr [edx-4]
>00518ED6    jb         00518EDD
 00518ED8    call       @BoundErr
 00518EDD    inc        eax
 00518EDE    mov        dl,byte ptr [edx+eax-1]
 00518EE2    lea        ecx,[ebp-60]
 00518EE5    mov        eax,dword ptr [ebp-4]
 00518EE8    call       0051C994
 00518EED    mov        ecx,dword ptr [ebp-60]
 00518EF0    mov        eax,dword ptr [ebx]
 00518EF2    mov        edx,7
 00518EF7    mov        edi,dword ptr [eax]
 00518EF9    call       dword ptr [edi+158]
 00518EFF    mov        eax,dword ptr [ebx]
 00518F01    mov        ecx,dword ptr [ebp-24]
 00518F04    mov        edx,8
 00518F09    mov        edi,dword ptr [eax]
 00518F0B    call       dword ptr [edi+158]
 00518F11    mov        eax,dword ptr [ebx]
 00518F13    mov        edx,dword ptr [eax]
 00518F15    call       dword ptr [edx+1D0]
 00518F1B    inc        dword ptr [ebp-10]
 00518F1E    dec        esi
<00518F1F    jne        00518E2C
 00518F25    inc        dword ptr [ebp-0C]
 00518F28    dec        dword ptr [ebp-38]
<00518F2B    jne        00518DB4
 00518F31    mov        eax,dword ptr [ebp-34]
 00518F34    mov        edx,dword ptr [eax]
 00518F36    call       dword ptr [edx+0C]
 00518F39    test       al,al
<00518F3B    jne        00518D49
 00518F41    mov        eax,dword ptr [ebp-34]
 00518F44    mov        edx,dword ptr [eax]
 00518F46    call       dword ptr [edx+10]
 00518F49    xor        eax,eax
 00518F4B    pop        edx
 00518F4C    pop        ecx
 00518F4D    pop        ecx
 00518F4E    mov        dword ptr fs:[eax],edx
 00518F51    push       518F6E
 00518F56    mov        eax,dword ptr [ebp-2C]
 00518F59    call       TObject.Free
 00518F5E    mov        eax,dword ptr [ebp-30]
 00518F61    call       TObject.Free
 00518F66    ret
<00518F67    jmp        @HandleFinally
<00518F6C    jmp        00518F56
 00518F6E    xor        eax,eax
 00518F70    pop        edx
 00518F71    pop        ecx
 00518F72    pop        ecx
 00518F73    mov        dword ptr fs:[eax],edx
 00518F76    push       518FC2
 00518F7B    lea        eax,[ebp-60]
 00518F7E    mov        edx,3
 00518F83    call       @LStrArrayClr
 00518F88    lea        eax,[ebp-54]
 00518F8B    call       @IntfClear
 00518F90    lea        eax,[ebp-50]
 00518F93    call       @IntfClear
 00518F98    lea        eax,[ebp-4C]
 00518F9B    mov        edx,5
 00518FA0    call       @LStrArrayClr
 00518FA5    lea        eax,[ebp-34]
 00518FA8    call       @IntfClear
 00518FAD    lea        eax,[ebp-28]
 00518FB0    mov        edx,6
 00518FB5    call       @LStrArrayClr
 00518FBA    ret
<00518FBB    jmp        @HandleFinally
<00518FC0    jmp        00518F7B
 00518FC2    pop        edi
 00518FC3    pop        esi
 00518FC4    pop        ebx
 00518FC5    mov        esp,ebp
 00518FC7    pop        ebp
 00518FC8    ret        0C
*}
//end;

//005192B0
//procedure sub_005192B0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005192B0    push       ebp
 005192B1    mov        ebp,esp
 005192B3    push       ecx
 005192B4    mov        ecx,0A
 005192B9    push       0
 005192BB    push       0
 005192BD    dec        ecx
<005192BE    jne        005192B9
 005192C0    push       ecx
 005192C1    xchg       ecx,dword ptr [ebp-4]
 005192C4    push       ebx
 005192C5    push       esi
 005192C6    push       edi
 005192C7    mov        esi,ecx
 005192C9    mov        dword ptr [ebp-4],eax
 005192CC    mov        ebx,dword ptr [ebp+8]
 005192CF    xor        eax,eax
 005192D1    push       ebp
 005192D2    push       519663
 005192D7    push       dword ptr fs:[eax]
 005192DA    mov        dword ptr fs:[eax],esp
 005192DD    mov        ecx,ebx
 005192DF    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 005192E5    mov        edx,dword ptr [edx]
 005192E7    mov        eax,dword ptr [ebp-4]
 005192EA    call       004D8E7C
 005192EF    mov        ecx,3
 005192F4    mov        edx,7
 005192F9    mov        eax,dword ptr [ebp-4]
 005192FC    call       0051B790
 00519301    test       al,al
>00519303    je         0051933D
 00519305    lea        eax,[ebp-10]
 00519308    mov        edx,51967C; 'SELECT n.nspname,c.relname,u.usename,c.relacl  FROM pg_catalog.pg_namespace n, pg_catalog.pg_class c, pg_catalog.pg_user u WHERE c.relnamespace = n.oid  AND u.usesysid = c.relowner AND c.relkind = 'r' '
 0051930D    call       @LStrLAsg
 00519312    test       esi,esi
>00519314    je         0051934A
 00519316    push       dword ptr [ebp-10]
 00519319    push       519750; ' AND n.nspname LIKE '
 0051931E    lea        ecx,[ebp-3C]
 00519321    mov        edx,esi
 00519323    mov        eax,dword ptr [ebp-4]
 00519326    call       00514EA0
 0051932B    push       dword ptr [ebp-3C]
 0051932E    lea        eax,[ebp-10]
 00519331    mov        edx,3
 00519336    call       @LStrCatN
>0051933B    jmp        0051934A
 0051933D    lea        eax,[ebp-10]
 00519340    mov        edx,519770; 'SELECT NULL::text AS nspname,c.relname,u.usename,c.relacl  FROM pg_class c, pg_user u WHERE u.usesysid = c.relowner  AND c.relkind = 'r' '
 00519345    call       @LStrLAsg
 0051934A    push       dword ptr [ebp-10]
 0051934D    push       519804; ' AND c.relname LIKE '
 00519352    lea        edx,[ebp-44]
 00519355    mov        eax,dword ptr [ebp+0C]
 00519358    call       004D31DC
 0051935D    mov        edx,dword ptr [ebp-44]
 00519360    lea        ecx,[ebp-40]
 00519363    mov        eax,dword ptr [ebp-4]
 00519366    call       00514EA0
 0051936B    push       dword ptr [ebp-40]
 0051936E    push       519824; ' ORDER BY nspname, relname'
 00519373    lea        eax,[ebp-10]
 00519376    mov        edx,4
 0051937B    call       @LStrCatN
 00519380    mov        dl,1
 00519382    mov        eax,[0041C8E4]; TStringList
 00519387    call       TObject.Create; TStringList.Create
 0051938C    mov        dword ptr [ebp-2C],eax
 0051938F    mov        dl,1
 00519391    mov        eax,[0041C8E4]; TStringList
 00519396    call       TObject.Create; TStringList.Create
 0051939B    mov        dword ptr [ebp-30],eax
 0051939E    xor        eax,eax
 005193A0    push       ebp
 005193A1    push       51960F
 005193A6    push       dword ptr fs:[eax]
 005193A9    mov        dword ptr fs:[eax],esp
 005193AC    lea        edx,[ebp-4C]
 005193AF    mov        eax,dword ptr [ebp-4]
 005193B2    mov        ecx,dword ptr [eax]
 005193B4    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 005193BA    mov        eax,dword ptr [ebp-4C]
 005193BD    lea        edx,[ebp-48]
 005193C0    mov        ecx,dword ptr [eax]
 005193C2    call       dword ptr [ecx+0C]
 005193C5    mov        eax,dword ptr [ebp-48]
 005193C8    lea        ecx,[ebp-34]
 005193CB    mov        edx,dword ptr [ebp-10]
 005193CE    mov        esi,dword ptr [eax]
 005193D0    call       dword ptr [esi+0C]
>005193D3    jmp        005195D9
 005193D8    lea        ecx,[ebp-14]
 005193DB    mov        edx,519848; 'nspname'
 005193E0    mov        eax,dword ptr [ebp-34]
 005193E3    mov        esi,dword ptr [eax]
 005193E5    call       dword ptr [esi+74]
 005193E8    lea        ecx,[ebp-18]
 005193EB    mov        edx,519858; 'relname'
 005193F0    mov        eax,dword ptr [ebp-34]
 005193F3    mov        esi,dword ptr [eax]
 005193F5    call       dword ptr [esi+74]
 005193F8    lea        ecx,[ebp-1C]
 005193FB    mov        edx,519868; 'usename'
 00519400    mov        eax,dword ptr [ebp-34]
 00519403    mov        esi,dword ptr [eax]
 00519405    call       dword ptr [esi+74]
 00519408    lea        ecx,[ebp-14]
 0051940B    mov        edx,519848; 'nspname'
 00519410    mov        eax,dword ptr [ebp-34]
 00519413    mov        esi,dword ptr [eax]
 00519415    call       dword ptr [esi+74]
 00519418    mov        eax,dword ptr [ebp-2C]
 0051941B    mov        edx,dword ptr [eax]
 0051941D    call       dword ptr [edx+44]; TStringList.Clear
 00519420    lea        ecx,[ebp-50]
 00519423    mov        edx,519878; 'relacl'
 00519428    mov        eax,dword ptr [ebp-34]
 0051942B    mov        esi,dword ptr [eax]
 0051942D    call       dword ptr [esi+74]
 00519430    mov        ecx,dword ptr [ebp-50]
 00519433    mov        edx,dword ptr [ebp-2C]
 00519436    mov        eax,dword ptr [ebp-4]
 00519439    call       0051C760
 0051943E    mov        eax,dword ptr [ebp-2C]
 00519441    mov        edx,dword ptr [eax]
 00519443    call       dword ptr [edx+90]; TStringList.Sort
 00519449    mov        eax,dword ptr [ebp-2C]
 0051944C    mov        edx,dword ptr [eax]
 0051944E    call       dword ptr [edx+14]; TStringList.GetCount
 00519451    sub        eax,1
>00519454    jno        0051945B
 00519456    call       @IntOver
 0051945B    test       eax,eax
>0051945D    jl         005195D9
 00519463    inc        eax
 00519464    mov        dword ptr [ebp-38],eax
 00519467    mov        dword ptr [ebp-8],0
 0051946E    lea        ecx,[ebp-54]
 00519471    mov        edx,dword ptr [ebp-8]
 00519474    mov        eax,dword ptr [ebp-2C]
 00519477    mov        esi,dword ptr [eax]
 00519479    call       dword ptr [esi+0C]; TStringList.Get
 0051947C    mov        edx,dword ptr [ebp-54]
 0051947F    mov        ecx,519888; '='
 00519484    mov        eax,dword ptr [ebp-30]
 00519487    call       004BF370
 0051948C    mov        eax,dword ptr [ebp-30]
 0051948F    mov        edx,dword ptr [eax]
 00519491    call       dword ptr [edx+14]; TStringList.GetCount
 00519494    cmp        eax,2
>00519497    jl         005195CD
 0051949D    lea        ecx,[ebp-28]
 005194A0    xor        edx,edx
 005194A2    mov        eax,dword ptr [ebp-30]
 005194A5    mov        esi,dword ptr [eax]
 005194A7    call       dword ptr [esi+0C]; TStringList.Get
 005194AA    cmp        dword ptr [ebp-28],0
>005194AE    jne        005194BD
 005194B0    lea        eax,[ebp-28]
 005194B3    mov        edx,519894; 'PUBLIC'
 005194B8    call       @LStrLAsg
 005194BD    lea        ecx,[ebp-20]
 005194C0    mov        edx,1
 005194C5    mov        eax,dword ptr [ebp-30]
 005194C8    mov        esi,dword ptr [eax]
 005194CA    call       dword ptr [esi+0C]; TStringList.Get
 005194CD    mov        eax,dword ptr [ebp-20]
 005194D0    call       @LStrLen
 005194D5    mov        esi,eax
 005194D7    test       esi,esi
>005194D9    jle        005195CD
 005194DF    mov        dword ptr [ebp-0C],1
 005194E6    mov        eax,dword ptr [ebp-1C]
 005194E9    mov        edx,dword ptr [ebp-28]
 005194EC    call       @LStrCmp
>005194F1    jne        00519502
 005194F3    lea        eax,[ebp-24]
 005194F6    mov        edx,5198A4; 'YES'
 005194FB    call       @LStrLAsg
>00519500    jmp        0051950F
 00519502    lea        eax,[ebp-24]
 00519505    mov        edx,5198B0; 'NO'
 0051950A    call       @LStrLAsg
 0051950F    mov        eax,dword ptr [ebx]
 00519511    mov        edx,dword ptr [eax]
 00519513    call       dword ptr [edx+1E4]
 00519519    mov        eax,dword ptr [ebx]
 0051951B    mov        edx,1
 00519520    mov        ecx,dword ptr [eax]
 00519522    call       dword ptr [ecx+130]
 00519528    mov        eax,dword ptr [ebx]
 0051952A    mov        ecx,dword ptr [ebp-14]
 0051952D    mov        edx,2
 00519532    mov        edi,dword ptr [eax]
 00519534    call       dword ptr [edi+158]
 0051953A    mov        eax,dword ptr [ebx]
 0051953C    mov        ecx,dword ptr [ebp-18]
 0051953F    mov        edx,3
 00519544    mov        edi,dword ptr [eax]
 00519546    call       dword ptr [edi+158]
 0051954C    mov        eax,dword ptr [ebx]
 0051954E    mov        ecx,dword ptr [ebp-1C]
 00519551    mov        edx,4
 00519556    mov        edi,dword ptr [eax]
 00519558    call       dword ptr [edi+158]
 0051955E    mov        eax,dword ptr [ebx]
 00519560    mov        ecx,dword ptr [ebp-28]
 00519563    mov        edx,5
 00519568    mov        edi,dword ptr [eax]
 0051956A    call       dword ptr [edi+158]
 00519570    mov        eax,dword ptr [ebp-0C]
 00519573    mov        edx,dword ptr [ebp-20]
 00519576    dec        eax
 00519577    test       edx,edx
>00519579    je         00519580
 0051957B    cmp        eax,dword ptr [edx-4]
>0051957E    jb         00519585
 00519580    call       @BoundErr
 00519585    inc        eax
 00519586    mov        dl,byte ptr [edx+eax-1]
 0051958A    lea        ecx,[ebp-58]
 0051958D    mov        eax,dword ptr [ebp-4]
 00519590    call       0051C994
 00519595    mov        ecx,dword ptr [ebp-58]
 00519598    mov        eax,dword ptr [ebx]
 0051959A    mov        edx,6
 0051959F    mov        edi,dword ptr [eax]
 005195A1    call       dword ptr [edi+158]
 005195A7    mov        eax,dword ptr [ebx]
 005195A9    mov        ecx,dword ptr [ebp-24]
 005195AC    mov        edx,7
 005195B1    mov        edi,dword ptr [eax]
 005195B3    call       dword ptr [edi+158]
 005195B9    mov        eax,dword ptr [ebx]
 005195BB    mov        edx,dword ptr [eax]
 005195BD    call       dword ptr [edx+1D0]
 005195C3    inc        dword ptr [ebp-0C]
 005195C6    dec        esi
<005195C7    jne        005194E6
 005195CD    inc        dword ptr [ebp-8]
 005195D0    dec        dword ptr [ebp-38]
<005195D3    jne        0051946E
 005195D9    mov        eax,dword ptr [ebp-34]
 005195DC    mov        edx,dword ptr [eax]
 005195DE    call       dword ptr [edx+0C]
 005195E1    test       al,al
<005195E3    jne        005193D8
 005195E9    mov        eax,dword ptr [ebp-34]
 005195EC    mov        edx,dword ptr [eax]
 005195EE    call       dword ptr [edx+10]
 005195F1    xor        eax,eax
 005195F3    pop        edx
 005195F4    pop        ecx
 005195F5    pop        ecx
 005195F6    mov        dword ptr fs:[eax],edx
 005195F9    push       519616
 005195FE    mov        eax,dword ptr [ebp-2C]
 00519601    call       TObject.Free
 00519606    mov        eax,dword ptr [ebp-30]
 00519609    call       TObject.Free
 0051960E    ret
<0051960F    jmp        @HandleFinally
<00519614    jmp        005195FE
 00519616    xor        eax,eax
 00519618    pop        edx
 00519619    pop        ecx
 0051961A    pop        ecx
 0051961B    mov        dword ptr fs:[eax],edx
 0051961E    push       51966A
 00519623    lea        eax,[ebp-58]
 00519626    mov        edx,3
 0051962B    call       @LStrArrayClr
 00519630    lea        eax,[ebp-4C]
 00519633    call       @IntfClear
 00519638    lea        eax,[ebp-48]
 0051963B    call       @IntfClear
 00519640    lea        eax,[ebp-44]
 00519643    mov        edx,3
 00519648    call       @LStrArrayClr
 0051964D    lea        eax,[ebp-34]
 00519650    call       @IntfClear
 00519655    lea        eax,[ebp-28]
 00519658    mov        edx,7
 0051965D    call       @LStrArrayClr
 00519662    ret
<00519663    jmp        @HandleFinally
<00519668    jmp        00519623
 0051966A    pop        edi
 0051966B    pop        esi
 0051966C    pop        ebx
 0051966D    mov        esp,ebp
 0051966F    pop        ebp
 00519670    ret        8
*}
//end;

//005198B4
//procedure sub_005198B4(?:?);
//begin
{*
 005198B4    push       ebp
 005198B5    mov        ebp,esp
 005198B7    push       ebx
 005198B8    push       esi
 005198B9    push       edi
 005198BA    mov        ebx,eax
 005198BC    mov        esi,dword ptr [ebp+8]
 005198BF    mov        ecx,esi
 005198C1    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 005198C7    mov        edx,dword ptr [edx]
 005198C9    mov        eax,ebx
 005198CB    call       004D8E7C
 005198D0    mov        eax,dword ptr [esi]
 005198D2    mov        edx,dword ptr [eax]
 005198D4    call       dword ptr [edx+1E4]
 005198DA    mov        eax,dword ptr [esi]
 005198DC    mov        edx,1
 005198E1    mov        ecx,dword ptr [eax]
 005198E3    call       dword ptr [ecx+130]
 005198E9    mov        eax,dword ptr [esi]
 005198EB    mov        ecx,51998C; 'ctid'
 005198F0    mov        edx,2
 005198F5    mov        edi,dword ptr [eax]
 005198F7    call       dword ptr [edi+158]
 005198FD    mov        edx,51999C; 'tid'
 00519902    mov        eax,ebx
 00519904    call       0051BD80
 00519909    xor        ecx,ecx
 0051990B    mov        cl,al
 0051990D    mov        eax,dword ptr [esi]
 0051990F    mov        edx,3
 00519914    mov        ebx,dword ptr [eax]
 00519916    call       dword ptr [ebx+140]
 0051991C    mov        eax,dword ptr [esi]
 0051991E    mov        ecx,51999C; 'tid'
 00519923    mov        edx,4
 00519928    mov        ebx,dword ptr [eax]
 0051992A    call       dword ptr [ebx+158]
 00519930    mov        eax,dword ptr [esi]
 00519932    mov        edx,5
 00519937    mov        ecx,dword ptr [eax]
 00519939    call       dword ptr [ecx+130]
 0051993F    mov        eax,dword ptr [esi]
 00519941    mov        edx,6
 00519946    mov        ecx,dword ptr [eax]
 00519948    call       dword ptr [ecx+130]
 0051994E    mov        eax,dword ptr [esi]
 00519950    mov        edx,7
 00519955    mov        ecx,dword ptr [eax]
 00519957    call       dword ptr [ecx+130]
 0051995D    mov        eax,dword ptr [esi]
 0051995F    mov        ecx,2
 00519964    mov        edx,4
 00519969    mov        ebx,dword ptr [eax]
 0051996B    call       dword ptr [ebx+140]
 00519971    mov        eax,dword ptr [esi]
 00519973    mov        edx,dword ptr [eax]
 00519975    call       dword ptr [edx+1D0]
 0051997B    pop        edi
 0051997C    pop        esi
 0051997D    pop        ebx
 0051997E    pop        ebp
 0051997F    ret        8
*}
//end;

//005199A0
//procedure sub_005199A0(?:?; ?:?; ?:?; ?:?);
//begin
{*
 005199A0    push       ebp
 005199A1    mov        ebp,esp
 005199A3    push       ecx
 005199A4    mov        ecx,4
 005199A9    push       0
 005199AB    push       0
 005199AD    dec        ecx
<005199AE    jne        005199A9
 005199B0    push       ecx
 005199B1    xchg       ecx,dword ptr [ebp-4]
 005199B4    push       ebx
 005199B5    push       esi
 005199B6    push       edi
 005199B7    mov        edi,ecx
 005199B9    mov        ebx,eax
 005199BB    mov        esi,dword ptr [ebp+0C]
 005199BE    xor        eax,eax
 005199C0    push       ebp
 005199C1    push       519B39
 005199C6    push       dword ptr fs:[eax]
 005199C9    mov        dword ptr fs:[eax],esp
 005199CC    mov        ecx,3
 005199D1    mov        edx,7
 005199D6    mov        eax,ebx
 005199D8    call       0051B790
 005199DD    test       al,al
>005199DF    je         00519A32
 005199E1    lea        eax,[ebp-8]
 005199E4    mov        edx,519B54; 'SELECT NULL AS TABLE_CAT, n.nspname AS TABLE_SCHEM,'
 005199E9    call       @LStrLAsg
 005199EE    lea        eax,[ebp-0C]
 005199F1    mov        edx,519B90; ' FROM pg_catalog.pg_namespace n, pg_catalog.pg_class ct, pg_catalog.pg_class ci, pg_catalog.pg_attribute a, pg_catalog.pg_index i'
 005199F6    call       @LStrLAsg
 005199FB    lea        eax,[ebp-10]
 005199FE    mov        edx,519C1C; ' AND ct.relnamespace = n.oid'
 00519A03    call       @LStrLAsg
 00519A08    test       edi,edi
>00519A0A    je         00519A4C
 00519A0C    push       dword ptr [ebp-10]
 00519A0F    push       519C44; ' AND n.nspname = '
 00519A14    lea        ecx,[ebp-14]
 00519A17    mov        edx,edi
 00519A19    mov        eax,ebx
 00519A1B    call       00514EA0
 00519A20    push       dword ptr [ebp-14]
 00519A23    lea        eax,[ebp-10]
 00519A26    mov        edx,3
 00519A2B    call       @LStrCatN
>00519A30    jmp        00519A4C
 00519A32    lea        eax,[ebp-8]
 00519A35    mov        edx,519C60; 'SELECT NULL AS TABLE_CAT, NULL AS TABLE_SCHEM,'
 00519A3A    call       @LStrLAsg
 00519A3F    lea        eax,[ebp-0C]
 00519A42    mov        edx,519C98; ' FROM pg_class ct, pg_class ci, pg_attribute a, pg_index i'
 00519A47    call       @LStrLAsg
 00519A4C    push       dword ptr [ebp-8]
 00519A4F    push       519CDC; ' ct.relname AS TABLE_NAME, a.attname AS COLUMN_NAME,'
 00519A54    push       519D1C; ' a.attnum AS KEY_SEQ, ci.relname AS PK_NAME'
 00519A59    push       dword ptr [ebp-0C]
 00519A5C    push       519D50; ' WHERE ct.oid=i.indrelid AND ci.oid=i.indexrelid'
 00519A61    push       519D8C; ' AND a.attrelid=ci.oid AND i.indisprimary'
 00519A66    lea        eax,[ebp-4]
 00519A69    mov        edx,6
 00519A6E    call       @LStrCatN
 00519A73    test       esi,esi
>00519A75    je         00519A9B
 00519A77    push       dword ptr [ebp-4]
 00519A7A    push       519DC0; ' AND ct.relname = '
 00519A7F    lea        ecx,[ebp-18]
 00519A82    mov        edx,esi
 00519A84    mov        eax,ebx
 00519A86    call       00514EA0
 00519A8B    push       dword ptr [ebp-18]
 00519A8E    lea        eax,[ebp-4]
 00519A91    mov        edx,3
 00519A96    call       @LStrCatN
 00519A9B    push       dword ptr [ebp-4]
 00519A9E    push       dword ptr [ebp-10]
 00519AA1    push       519DDC; ' ORDER BY table_name, pk_name, key_seq'
 00519AA6    lea        eax,[ebp-4]
 00519AA9    mov        edx,3
 00519AAE    call       @LStrCatN
 00519AB3    mov        eax,dword ptr [ebp+8]
 00519AB6    push       eax
 00519AB7    lea        edx,[ebp-24]
 00519ABA    mov        eax,ebx
 00519ABC    mov        ecx,dword ptr [eax]
 00519ABE    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 00519AC4    mov        eax,dword ptr [ebp-24]
 00519AC7    lea        edx,[ebp-20]
 00519ACA    mov        ecx,dword ptr [eax]
 00519ACC    call       dword ptr [ecx+0C]
 00519ACF    mov        eax,dword ptr [ebp-20]
 00519AD2    lea        ecx,[ebp-1C]
 00519AD5    mov        edx,dword ptr [ebp-4]
 00519AD8    mov        esi,dword ptr [eax]
 00519ADA    call       dword ptr [esi+0C]
 00519ADD    mov        eax,dword ptr [ebp-1C]
 00519AE0    push       eax
 00519AE1    lea        ecx,[ebp-28]
 00519AE4    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 00519AEA    mov        edx,dword ptr [edx]
 00519AEC    mov        eax,ebx
 00519AEE    call       004D8E7C
 00519AF3    mov        ecx,dword ptr [ebp-28]
 00519AF6    mov        eax,ebx
 00519AF8    pop        edx
 00519AF9    call       004D9194
 00519AFE    xor        eax,eax
 00519B00    pop        edx
 00519B01    pop        ecx
 00519B02    pop        ecx
 00519B03    mov        dword ptr fs:[eax],edx
 00519B06    push       519B40
 00519B0B    lea        eax,[ebp-28]
 00519B0E    call       @IntfClear
 00519B13    lea        eax,[ebp-24]
 00519B16    call       @IntfClear
 00519B1B    lea        eax,[ebp-20]
 00519B1E    call       @IntfClear
 00519B23    lea        eax,[ebp-1C]
 00519B26    call       @IntfClear
 00519B2B    lea        eax,[ebp-18]
 00519B2E    mov        edx,6
 00519B33    call       @LStrArrayClr
 00519B38    ret
<00519B39    jmp        @HandleFinally
<00519B3E    jmp        00519B0B
 00519B40    pop        edi
 00519B41    pop        esi
 00519B42    pop        ebx
 00519B43    mov        esp,ebp
 00519B45    pop        ebp
 00519B46    ret        8
*}
//end;

//00519E04
//procedure sub_00519E04(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00519E04    push       ebp
 00519E05    mov        ebp,esp
 00519E07    push       ecx
 00519E08    push       ebx
 00519E09    push       esi
 00519E0A    mov        dword ptr [ebp-4],ecx
 00519E0D    mov        esi,edx
 00519E0F    mov        ebx,eax
 00519E11    push       0
 00519E13    push       esi
 00519E14    mov        eax,dword ptr [ebp-4]
 00519E17    push       eax
 00519E18    mov        eax,dword ptr [ebp+0C]
 00519E1B    push       eax
 00519E1C    mov        eax,dword ptr [ebp+8]
 00519E1F    push       eax
 00519E20    xor        ecx,ecx
 00519E22    xor        edx,edx
 00519E24    mov        eax,ebx
 00519E26    mov        ebx,dword ptr [eax]
 00519E28    call       dword ptr [ebx+30]; TZPostgreSQLDatabaseMetadata.sub_00519E64
 00519E2B    pop        esi
 00519E2C    pop        ebx
 00519E2D    pop        ecx
 00519E2E    pop        ebp
 00519E2F    ret        8
*}
//end;

//00519E34
//procedure sub_00519E34(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00519E34    push       ebp
 00519E35    mov        ebp,esp
 00519E37    push       ecx
 00519E38    push       ebx
 00519E39    push       esi
 00519E3A    mov        dword ptr [ebp-4],ecx
 00519E3D    mov        esi,edx
 00519E3F    mov        ebx,eax
 00519E41    mov        eax,dword ptr [ebp+0C]
 00519E44    push       eax
 00519E45    push       0
 00519E47    push       0
 00519E49    push       0
 00519E4B    mov        eax,dword ptr [ebp+8]
 00519E4E    push       eax
 00519E4F    mov        ecx,dword ptr [ebp-4]
 00519E52    mov        edx,esi
 00519E54    mov        eax,ebx
 00519E56    mov        ebx,dword ptr [eax]
 00519E58    call       dword ptr [ebx+30]; TZPostgreSQLDatabaseMetadata.sub_00519E64
 00519E5B    pop        esi
 00519E5C    pop        ebx
 00519E5D    pop        ecx
 00519E5E    pop        ebp
 00519E5F    ret        8
*}
//end;

//00519E64
//procedure sub_00519E64(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00519E64    push       ebp
 00519E65    mov        ebp,esp
 00519E67    push       ecx
 00519E68    mov        ecx,0E
 00519E6D    push       0
 00519E6F    push       0
 00519E71    dec        ecx
<00519E72    jne        00519E6D
 00519E74    push       ecx
 00519E75    xchg       ecx,dword ptr [ebp-4]
 00519E78    push       ebx
 00519E79    push       esi
 00519E7A    push       edi
 00519E7B    mov        dword ptr [ebp-4],ecx
 00519E7E    mov        esi,eax
 00519E80    mov        ebx,dword ptr [ebp+8]
 00519E83    mov        edi,dword ptr [ebp+18]
 00519E86    xor        eax,eax
 00519E88    push       ebp
 00519E89    push       51A4FF
 00519E8E    push       dword ptr fs:[eax]
 00519E91    mov        dword ptr fs:[eax],esp
 00519E94    mov        ecx,ebx
 00519E96    mov        edx,dword ptr ds:[61BEA8]; ^gvar_0061DD6C:TZMetadataColumnDefs
 00519E9C    mov        edx,dword ptr [edx]
 00519E9E    mov        eax,esi
 00519EA0    call       004D8E7C
 00519EA5    mov        ecx,3
 00519EAA    mov        edx,7
 00519EAF    mov        eax,esi
 00519EB1    call       0051B790
 00519EB6    test       al,al
>00519EB8    je         00519F34
 00519EBA    lea        eax,[ebp-0C]
 00519EBD    mov        edx,51A518; 'SELECT DISTINCT n1.nspname as pnspname,n2.nspname as fnspname,'
 00519EC2    call       @LStrLAsg
 00519EC7    lea        eax,[ebp-10]
 00519ECA    mov        edx,51A560; ' FROM pg_catalog.pg_namespace n1 JOIN pg_catalog.pg_class c1 ON (c1.relnamespace = n1.oid) JOIN pg_catalog.pg_index i ON (c1.oid=i.indrelid) JOIN pg_catalog.pg_class ic ON (i.indexrelid=ic.oid) JOIN pg_catalog.pg_attribute a ON (ic.oid=a.attrelid), pg_catalog.pg_namespace n2 JOIN pg_catalog.pg_class c2 ON (c2.relnamespace=n2.oid), pg_catalog.pg_trigger t1 JOIN pg_catalog.pg_proc p1 ON (t1.tgfoid=p1.oid), pg_catalog.pg_trigger t2 JOIN pg_catalog.pg_proc p2 ON (t2.tgfoid=p2.oid)'
 00519ECF    call       @LStrLAsg
 00519ED4    lea        eax,[ebp-14]
 00519ED7    call       @LStrClr
 00519EDC    cmp        dword ptr [ebp-4],0
>00519EE0    je         00519F07
 00519EE2    push       dword ptr [ebp-14]
 00519EE5    push       51A74C; ' AND n1.nspname = '
 00519EEA    lea        ecx,[ebp-3C]
 00519EED    mov        edx,dword ptr [ebp-4]
 00519EF0    mov        eax,esi
 00519EF2    call       00514EA0
 00519EF7    push       dword ptr [ebp-3C]
 00519EFA    lea        eax,[ebp-14]
 00519EFD    mov        edx,3
 00519F02    call       @LStrCatN
 00519F07    cmp        dword ptr [ebp+10],0
>00519F0B    je         00519F4E
 00519F0D    push       dword ptr [ebp-14]
 00519F10    push       51A768; ' AND n2.nspname = '
 00519F15    lea        ecx,[ebp-40]
 00519F18    mov        edx,dword ptr [ebp+10]
 00519F1B    mov        eax,esi
 00519F1D    call       00514EA0
 00519F22    push       dword ptr [ebp-40]
 00519F25    lea        eax,[ebp-14]
 00519F28    mov        edx,3
 00519F2D    call       @LStrCatN
>00519F32    jmp        00519F4E
 00519F34    lea        eax,[ebp-0C]
 00519F37    mov        edx,51A784; 'SELECT DISTINCT NULL::text as pnspname, NULL::text as fnspname,'
 00519F3C    call       @LStrLAsg
 00519F41    lea        eax,[ebp-10]
 00519F44    mov        edx,51A7CC; ' FROM pg_class c1 JOIN pg_index i ON (c1.oid=i.indrelid) JOIN pg_class ic ON (i.indexrelid=ic.oid) JOIN pg_attribute a ON (ic.oid=a.attrelid), pg_class c2, pg_trigger t1 JOIN pg_proc p1 ON (t1.tgfoid=p1.oid), pg_trigger t2 JOIN pg_proc p2 ON (t2.tgfoid=p2.oid)'
 00519F49    call       @LStrLAsg
 00519F4E    push       dword ptr [ebp-0C]
 00519F51    push       51A8DC; ' c1.relname as prelname, c2.relname as frelname,'
 00519F56    push       51A918; ' t1.tgconstrname, a.attnum as keyseq, ic.relname as fkeyname,'
 00519F5B    push       51A960; ' t1.tgdeferrable, t1.tginitdeferred, t1.tgnargs,t1.tgargs,'
 00519F60    push       51A9A4; ' p1.proname as updaterule, p2.proname as deleterule'
 00519F65    push       dword ptr [ebp-10]
 00519F68    push       51A9E0; ' WHERE (t1.tgrelid=c1.oid AND t1.tgisconstraint'
 00519F6D    push       51AA18; ' AND t1.tgconstrrelid=c2.oid AND p1.proname'
 00519F72    push       51AA4C; ' LIKE '
 00519F77    lea        ecx,[ebp-44]
 00519F7A    mov        edx,51AA5C; 'RI\\_FKey\\_%\\_upd'
 00519F7F    mov        eax,esi
 00519F81    call       00514EA0
 00519F86    push       dword ptr [ebp-44]
 00519F89    push       51AA78; ') AND (t2.tgrelid=c1.oid'
 00519F8E    push       51AA9C; ' AND t2.tgisconstraint AND t2.tgconstrrelid=c2.oid '
 00519F93    push       51AAD8; ' AND p2.proname LIKE '
 00519F98    lea        ecx,[ebp-48]
 00519F9B    mov        edx,51AAF8; 'RI\\_FKey\\_%\\_del'
 00519FA0    mov        eax,esi
 00519FA2    call       00514EA0
 00519FA7    push       dword ptr [ebp-48]
 00519FAA    push       51AB14; ') AND i.indisprimary'
 00519FAF    push       dword ptr [ebp-14]
 00519FB2    lea        eax,[ebp-8]
 00519FB5    mov        edx,10
 00519FBA    call       @LStrCatN
 00519FBF    test       edi,edi
>00519FC1    je         00519FE7
 00519FC3    push       dword ptr [ebp-8]
 00519FC6    push       51AB34; ' AND c1.relname='
 00519FCB    lea        ecx,[ebp-4C]
 00519FCE    mov        edx,edi
 00519FD0    mov        eax,esi
 00519FD2    call       00514EA0
 00519FD7    push       dword ptr [ebp-4C]
 00519FDA    lea        eax,[ebp-8]
 00519FDD    mov        edx,3
 00519FE2    call       @LStrCatN
 00519FE7    cmp        dword ptr [ebp+0C],0
>00519FEB    je         0051A012
 00519FED    push       dword ptr [ebp-8]
 00519FF0    push       51AB50; ' AND c2.relname='
 00519FF5    lea        ecx,[ebp-50]
 00519FF8    mov        edx,dword ptr [ebp+0C]
 00519FFB    mov        eax,esi
 00519FFD    call       00514EA0
 0051A002    push       dword ptr [ebp-50]
 0051A005    lea        eax,[ebp-8]
 0051A008    mov        edx,3
 0051A00D    call       @LStrCatN
 0051A012    lea        eax,[ebp-8]
 0051A015    mov        edx,51AB6C; ' ORDER BY '
 0051A01A    call       @LStrCat
 0051A01F    test       edi,edi
>0051A021    je         0051A054
 0051A023    mov        ecx,3
 0051A028    mov        edx,7
 0051A02D    mov        eax,esi
 0051A02F    call       0051B790
 0051A034    test       al,al
>0051A036    je         0051A045
 0051A038    lea        eax,[ebp-8]
 0051A03B    mov        edx,51AB80; 'fnspname, '
 0051A040    call       @LStrCat
 0051A045    lea        eax,[ebp-8]
 0051A048    mov        edx,51AB94; 'frelname'
 0051A04D    call       @LStrCat
>0051A052    jmp        0051A083
 0051A054    mov        ecx,3
 0051A059    mov        edx,7
 0051A05E    mov        eax,esi
 0051A060    call       0051B790
 0051A065    test       al,al
>0051A067    je         0051A076
 0051A069    lea        eax,[ebp-8]
 0051A06C    mov        edx,51ABA8; 'pnspname, '
 0051A071    call       @LStrCat
 0051A076    lea        eax,[ebp-8]
 0051A079    mov        edx,51ABBC; 'prelname'
 0051A07E    call       @LStrCat
 0051A083    lea        eax,[ebp-8]
 0051A086    mov        edx,51ABD0; ', keyseq'
 0051A08B    call       @LStrCat
 0051A090    mov        dl,1
 0051A092    mov        eax,[0041C8E4]; TStringList
 0051A097    call       TObject.Create; TStringList.Create
 0051A09C    mov        dword ptr [ebp-30],eax
 0051A09F    xor        edx,edx
 0051A0A1    push       ebp
 0051A0A2    push       51A4AB
 0051A0A7    push       dword ptr fs:[edx]
 0051A0AA    mov        dword ptr fs:[edx],esp
 0051A0AD    lea        edx,[ebp-58]
 0051A0B0    mov        eax,esi
 0051A0B2    mov        ecx,dword ptr [eax]
 0051A0B4    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051A0BA    mov        eax,dword ptr [ebp-58]
 0051A0BD    lea        edx,[ebp-54]
 0051A0C0    mov        ecx,dword ptr [eax]
 0051A0C2    call       dword ptr [ecx+0C]
 0051A0C5    mov        eax,dword ptr [ebp-54]
 0051A0C8    lea        ecx,[ebp-38]
 0051A0CB    mov        edx,dword ptr [ebp-8]
 0051A0CE    mov        esi,dword ptr [eax]
 0051A0D0    call       dword ptr [esi+0C]
>0051A0D3    jmp        0051A47D
 0051A0D8    mov        eax,dword ptr [ebx]
 0051A0DA    mov        edx,dword ptr [eax]
 0051A0DC    call       dword ptr [edx+1E4]
 0051A0E2    lea        ecx,[ebp-5C]
 0051A0E5    mov        edx,1
 0051A0EA    mov        eax,dword ptr [ebp-38]
 0051A0ED    mov        esi,dword ptr [eax]
 0051A0EF    call       dword ptr [esi+20]
 0051A0F2    mov        ecx,dword ptr [ebp-5C]
 0051A0F5    mov        eax,dword ptr [ebx]
 0051A0F7    mov        edx,2
 0051A0FC    mov        esi,dword ptr [eax]
 0051A0FE    call       dword ptr [esi+158]
 0051A104    lea        ecx,[ebp-60]
 0051A107    mov        edx,2
 0051A10C    mov        eax,dword ptr [ebp-38]
 0051A10F    mov        esi,dword ptr [eax]
 0051A111    call       dword ptr [esi+20]
 0051A114    mov        ecx,dword ptr [ebp-60]
 0051A117    mov        eax,dword ptr [ebx]
 0051A119    mov        edx,6
 0051A11E    mov        esi,dword ptr [eax]
 0051A120    call       dword ptr [esi+158]
 0051A126    lea        ecx,[ebp-64]
 0051A129    mov        edx,3
 0051A12E    mov        eax,dword ptr [ebp-38]
 0051A131    mov        esi,dword ptr [eax]
 0051A133    call       dword ptr [esi+20]
 0051A136    mov        ecx,dword ptr [ebp-64]
 0051A139    mov        eax,dword ptr [ebx]
 0051A13B    mov        edx,3
 0051A140    mov        esi,dword ptr [eax]
 0051A142    call       dword ptr [esi+158]
 0051A148    lea        ecx,[ebp-68]
 0051A14B    mov        edx,4
 0051A150    mov        eax,dword ptr [ebp-38]
 0051A153    mov        esi,dword ptr [eax]
 0051A155    call       dword ptr [esi+20]
 0051A158    mov        ecx,dword ptr [ebp-68]
 0051A15B    mov        eax,dword ptr [ebx]
 0051A15D    mov        edx,7
 0051A162    mov        esi,dword ptr [eax]
 0051A164    call       dword ptr [esi+158]
 0051A16A    lea        ecx,[ebp-1C]
 0051A16D    mov        edx,0C
 0051A172    mov        eax,dword ptr [ebp-38]
 0051A175    mov        esi,dword ptr [eax]
 0051A177    call       dword ptr [esi+20]
 0051A17A    cmp        dword ptr [ebp-1C],0
>0051A17E    je         0051A226
 0051A184    lea        eax,[ebp-20]
 0051A187    push       eax
 0051A188    mov        eax,dword ptr [ebp-1C]
 0051A18B    call       @LStrLen
 0051A190    mov        ecx,eax
 0051A192    sub        ecx,0C
>0051A195    jno        0051A19C
 0051A197    call       @IntOver
 0051A19C    mov        edx,9
 0051A1A1    mov        eax,dword ptr [ebp-1C]
 0051A1A4    call       @LStrCopy
 0051A1A9    mov        esi,3
 0051A1AE    cmp        dword ptr [ebp-20],0
>0051A1B2    je         0051A1C3
 0051A1B4    mov        eax,dword ptr [ebp-20]
 0051A1B7    mov        edx,51ABE4; 'noaction'
 0051A1BC    call       @LStrCmp
>0051A1C1    jne        0051A1C8
 0051A1C3    mov        esi,3
 0051A1C8    mov        eax,dword ptr [ebp-20]
 0051A1CB    mov        edx,51ABF8; 'cascade'
 0051A1D0    call       @LStrCmp
>0051A1D5    jne        0051A1D9
 0051A1D7    xor        esi,esi
 0051A1D9    mov        eax,dword ptr [ebp-20]
 0051A1DC    mov        edx,51AC08; 'setnull'
 0051A1E1    call       @LStrCmp
>0051A1E6    jne        0051A1ED
 0051A1E8    mov        esi,2
 0051A1ED    mov        eax,dword ptr [ebp-20]
 0051A1F0    mov        edx,51AC18; 'setdefault'
 0051A1F5    call       @LStrCmp
>0051A1FA    jne        0051A201
 0051A1FC    mov        esi,4
 0051A201    mov        eax,dword ptr [ebp-20]
 0051A204    mov        edx,51AC2C; 'restrict'
 0051A209    call       @LStrCmp
>0051A20E    jne        0051A215
 0051A210    mov        esi,1
 0051A215    mov        eax,dword ptr [ebx]
 0051A217    mov        ecx,esi
 0051A219    mov        edx,0A
 0051A21E    mov        esi,dword ptr [eax]
 0051A220    call       dword ptr [esi+140]
 0051A226    lea        ecx,[ebp-18]
 0051A229    mov        edx,0D
 0051A22E    mov        eax,dword ptr [ebp-38]
 0051A231    mov        esi,dword ptr [eax]
 0051A233    call       dword ptr [esi+20]
 0051A236    cmp        dword ptr [ebp-18],0
>0051A23A    je         0051A2C8
 0051A240    lea        eax,[ebp-20]
 0051A243    push       eax
 0051A244    mov        eax,dword ptr [ebp-18]
 0051A247    call       @LStrLen
 0051A24C    mov        ecx,eax
 0051A24E    sub        ecx,0C
>0051A251    jno        0051A258
 0051A253    call       @IntOver
 0051A258    mov        edx,9
 0051A25D    mov        eax,dword ptr [ebp-18]
 0051A260    call       @LStrCopy
 0051A265    mov        esi,3
 0051A26A    mov        eax,dword ptr [ebp-20]
 0051A26D    mov        edx,51ABF8; 'cascade'
 0051A272    call       @LStrCmp
>0051A277    jne        0051A27B
 0051A279    xor        esi,esi
 0051A27B    mov        eax,dword ptr [ebp-20]
 0051A27E    mov        edx,51AC08; 'setnull'
 0051A283    call       @LStrCmp
>0051A288    jne        0051A28F
 0051A28A    mov        esi,2
 0051A28F    mov        eax,dword ptr [ebp-20]
 0051A292    mov        edx,51AC18; 'setdefault'
 0051A297    call       @LStrCmp
>0051A29C    jne        0051A2A3
 0051A29E    mov        esi,4
 0051A2A3    mov        eax,dword ptr [ebp-20]
 0051A2A6    mov        edx,51AC2C; 'restrict'
 0051A2AB    call       @LStrCmp
>0051A2B0    jne        0051A2B7
 0051A2B2    mov        esi,1
 0051A2B7    mov        eax,dword ptr [ebx]
 0051A2B9    mov        ecx,esi
 0051A2BB    mov        edx,0B
 0051A2C0    mov        esi,dword ptr [eax]
 0051A2C2    call       dword ptr [esi+140]
 0051A2C8    mov        edx,6
 0051A2CD    mov        eax,dword ptr [ebp-38]
 0051A2D0    mov        ecx,dword ptr [eax]
 0051A2D2    call       dword ptr [ecx+34]
 0051A2D5    mov        esi,eax
 0051A2D7    lea        ecx,[ebp-2C]
 0051A2DA    mov        edx,0B
 0051A2DF    mov        eax,dword ptr [ebp-38]
 0051A2E2    mov        edi,dword ptr [eax]
 0051A2E4    call       dword ptr [edi+20]
 0051A2E7    sub        esi,1
>0051A2EA    jno        0051A2F1
 0051A2EC    call       @IntOver
 0051A2F1    imul       eax,esi,2
>0051A2F4    jno        0051A2FB
 0051A2F6    call       @IntOver
 0051A2FB    add        eax,4
>0051A2FE    jno        0051A305
 0051A300    call       @IntOver
 0051A305    mov        esi,eax
 0051A307    mov        ecx,51AC40; '\\000'
 0051A30C    mov        edx,dword ptr [ebp-2C]
 0051A30F    mov        eax,dword ptr [ebp-30]
 0051A312    call       004BF624
 0051A317    mov        eax,dword ptr [ebp-30]
 0051A31A    mov        edx,dword ptr [eax]
 0051A31C    call       dword ptr [edx+14]; TStringList.GetCount
 0051A31F    sub        eax,1
>0051A322    jno        0051A329
 0051A324    call       @IntOver
 0051A329    cmp        esi,eax
>0051A32B    jg         0051A33A
 0051A32D    lea        ecx,[ebp-24]
 0051A330    mov        edx,esi
 0051A332    mov        eax,dword ptr [ebp-30]
 0051A335    mov        edi,dword ptr [eax]
 0051A337    call       dword ptr [edi+0C]; TStringList.Get
 0051A33A    mov        eax,dword ptr [ebp-30]
 0051A33D    mov        edx,dword ptr [eax]
 0051A33F    call       dword ptr [edx+14]; TStringList.GetCount
 0051A342    sub        eax,1
>0051A345    jno        0051A34C
 0051A347    call       @IntOver
 0051A34C    mov        edx,esi
 0051A34E    add        edx,1
>0051A351    jno        0051A358
 0051A353    call       @IntOver
 0051A358    cmp        eax,edx
>0051A35A    jl         0051A373
 0051A35C    lea        ecx,[ebp-28]
 0051A35F    mov        edx,esi
 0051A361    add        edx,1
>0051A364    jno        0051A36B
 0051A366    call       @IntOver
 0051A36B    mov        eax,dword ptr [ebp-30]
 0051A36E    mov        esi,dword ptr [eax]
 0051A370    call       dword ptr [esi+0C]; TStringList.Get
 0051A373    mov        eax,dword ptr [ebx]
 0051A375    mov        ecx,dword ptr [ebp-28]
 0051A378    mov        edx,4
 0051A37D    mov        esi,dword ptr [eax]
 0051A37F    call       dword ptr [esi+158]
 0051A385    mov        eax,dword ptr [ebx]
 0051A387    mov        ecx,dword ptr [ebp-24]
 0051A38A    mov        edx,8
 0051A38F    mov        esi,dword ptr [eax]
 0051A391    call       dword ptr [esi+158]
 0051A397    lea        ecx,[ebp-6C]
 0051A39A    mov        edx,6
 0051A39F    mov        eax,dword ptr [ebp-38]
 0051A3A2    mov        esi,dword ptr [eax]
 0051A3A4    call       dword ptr [esi+20]
 0051A3A7    mov        ecx,dword ptr [ebp-6C]
 0051A3AA    mov        eax,dword ptr [ebx]
 0051A3AC    mov        edx,9
 0051A3B1    mov        esi,dword ptr [eax]
 0051A3B3    call       dword ptr [esi+158]
 0051A3B9    lea        ecx,[ebp-70]
 0051A3BC    xor        edx,edx
 0051A3BE    mov        eax,dword ptr [ebp-30]
 0051A3C1    mov        esi,dword ptr [eax]
 0051A3C3    call       dword ptr [esi+0C]; TStringList.Get
 0051A3C6    mov        eax,dword ptr [ebp-70]
 0051A3C9    mov        edx,51AC50; '<unnamed>'
 0051A3CE    call       @LStrCmp
>0051A3D3    jne        0051A3E9
 0051A3D5    mov        eax,dword ptr [ebx]
 0051A3D7    mov        ecx,dword ptr [ebp-2C]
 0051A3DA    mov        edx,0C
 0051A3DF    mov        esi,dword ptr [eax]
 0051A3E1    call       dword ptr [esi+158]
>0051A3E7    jmp        0051A408
 0051A3E9    lea        ecx,[ebp-74]
 0051A3EC    xor        edx,edx
 0051A3EE    mov        eax,dword ptr [ebp-30]
 0051A3F1    mov        esi,dword ptr [eax]
 0051A3F3    call       dword ptr [esi+0C]; TStringList.Get
 0051A3F6    mov        ecx,dword ptr [ebp-74]
 0051A3F9    mov        eax,dword ptr [ebx]
 0051A3FB    mov        edx,0C
 0051A400    mov        esi,dword ptr [eax]
 0051A402    call       dword ptr [esi+158]
 0051A408    lea        ecx,[ebp-78]
 0051A40B    mov        edx,6
 0051A410    mov        eax,dword ptr [ebp-38]
 0051A413    mov        esi,dword ptr [eax]
 0051A415    call       dword ptr [esi+20]
 0051A418    mov        ecx,dword ptr [ebp-78]
 0051A41B    mov        eax,dword ptr [ebx]
 0051A41D    mov        edx,0D
 0051A422    mov        esi,dword ptr [eax]
 0051A424    call       dword ptr [esi+158]
 0051A42A    mov        esi,7
 0051A42F    mov        edx,8
 0051A434    mov        eax,dword ptr [ebp-38]
 0051A437    mov        ecx,dword ptr [eax]
 0051A439    call       dword ptr [ecx+28]
 0051A43C    mov        byte ptr [ebp-31],al
 0051A43F    mov        edx,9
 0051A444    mov        eax,dword ptr [ebp-38]
 0051A447    mov        ecx,dword ptr [eax]
 0051A449    call       dword ptr [ecx+28]
 0051A44C    cmp        byte ptr [ebp-31],0
>0051A450    je         0051A462
 0051A452    test       al,al
>0051A454    je         0051A45D
 0051A456    mov        esi,5
>0051A45B    jmp        0051A462
 0051A45D    mov        esi,6
 0051A462    mov        eax,dword ptr [ebx]
 0051A464    mov        ecx,esi
 0051A466    mov        edx,0E
 0051A46B    mov        esi,dword ptr [eax]
 0051A46D    call       dword ptr [esi+140]
 0051A473    mov        eax,dword ptr [ebx]
 0051A475    mov        edx,dword ptr [eax]
 0051A477    call       dword ptr [edx+1D0]
 0051A47D    mov        eax,dword ptr [ebp-38]
 0051A480    mov        edx,dword ptr [eax]
 0051A482    call       dword ptr [edx+0C]
 0051A485    test       al,al
<0051A487    jne        0051A0D8
 0051A48D    mov        eax,dword ptr [ebp-38]
 0051A490    mov        edx,dword ptr [eax]
 0051A492    call       dword ptr [edx+10]
 0051A495    xor        eax,eax
 0051A497    pop        edx
 0051A498    pop        ecx
 0051A499    pop        ecx
 0051A49A    mov        dword ptr fs:[eax],edx
 0051A49D    push       51A4B2
 0051A4A2    mov        eax,dword ptr [ebp-30]
 0051A4A5    call       TObject.Free
 0051A4AA    ret
<0051A4AB    jmp        @HandleFinally
<0051A4B0    jmp        0051A4A2
 0051A4B2    xor        eax,eax
 0051A4B4    pop        edx
 0051A4B5    pop        ecx
 0051A4B6    pop        ecx
 0051A4B7    mov        dword ptr fs:[eax],edx
 0051A4BA    push       51A506
 0051A4BF    lea        eax,[ebp-78]
 0051A4C2    mov        edx,8
 0051A4C7    call       @LStrArrayClr
 0051A4CC    lea        eax,[ebp-58]
 0051A4CF    call       @IntfClear
 0051A4D4    lea        eax,[ebp-54]
 0051A4D7    call       @IntfClear
 0051A4DC    lea        eax,[ebp-50]
 0051A4DF    mov        edx,6
 0051A4E4    call       @LStrArrayClr
 0051A4E9    lea        eax,[ebp-38]
 0051A4EC    call       @IntfClear
 0051A4F1    lea        eax,[ebp-2C]
 0051A4F4    mov        edx,0A
 0051A4F9    call       @LStrArrayClr
 0051A4FE    ret
<0051A4FF    jmp        @HandleFinally
<0051A504    jmp        0051A4BF
 0051A506    pop        edi
 0051A507    pop        esi
 0051A508    pop        ebx
 0051A509    mov        esp,ebp
 0051A50B    pop        ebp
 0051A50C    ret        14
*}
//end;

//0051AC5C
//procedure sub_0051AC5C(?:?);
//begin
{*
 0051AC5C    push       ebp
 0051AC5D    mov        ebp,esp
 0051AC5F    xor        ecx,ecx
 0051AC61    push       ecx
 0051AC62    push       ecx
 0051AC63    push       ecx
 0051AC64    push       ecx
 0051AC65    push       ecx
 0051AC66    push       ecx
 0051AC67    push       ebx
 0051AC68    push       esi
 0051AC69    push       edi
 0051AC6A    mov        ebx,edx
 0051AC6C    mov        esi,eax
 0051AC6E    xor        eax,eax
 0051AC70    push       ebp
 0051AC71    push       51AE1C
 0051AC76    push       dword ptr fs:[eax]
 0051AC79    mov        dword ptr fs:[eax],esp
 0051AC7C    mov        ecx,ebx
 0051AC7E    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 0051AC84    mov        edx,dword ptr [edx]
 0051AC86    mov        eax,esi
 0051AC88    call       004D8E7C
 0051AC8D    mov        ecx,3
 0051AC92    mov        edx,7
 0051AC97    mov        eax,esi
 0051AC99    call       0051B790
 0051AC9E    test       al,al
>0051ACA0    je         0051ACB1
 0051ACA2    lea        eax,[ebp-4]
 0051ACA5    mov        edx,51AE34; ' SELECT typname FROM pg_catalog.pg_type '
 0051ACAA    call       @LStrLAsg
>0051ACAF    jmp        0051ACBE
 0051ACB1    lea        eax,[ebp-4]
 0051ACB4    mov        edx,51AE68; ' SELECT typname FROM pg_type '
 0051ACB9    call       @LStrLAsg
 0051ACBE    lea        edx,[ebp-10]
 0051ACC1    mov        eax,esi
 0051ACC3    mov        ecx,dword ptr [eax]
 0051ACC5    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051ACCB    mov        eax,dword ptr [ebp-10]
 0051ACCE    lea        edx,[ebp-0C]
 0051ACD1    mov        ecx,dword ptr [eax]
 0051ACD3    call       dword ptr [ecx+0C]
 0051ACD6    mov        eax,dword ptr [ebp-0C]
 0051ACD9    lea        ecx,[ebp-8]
 0051ACDC    mov        edx,dword ptr [ebp-4]
 0051ACDF    mov        edi,dword ptr [eax]
 0051ACE1    call       dword ptr [edi+0C]
>0051ACE4    jmp        0051ADC9
 0051ACE9    mov        eax,dword ptr [ebx]
 0051ACEB    mov        edx,dword ptr [eax]
 0051ACED    call       dword ptr [edx+1E4]
 0051ACF3    lea        ecx,[ebp-14]
 0051ACF6    mov        edx,1
 0051ACFB    mov        eax,dword ptr [ebp-8]
 0051ACFE    mov        edi,dword ptr [eax]
 0051AD00    call       dword ptr [edi+20]
 0051AD03    mov        ecx,dword ptr [ebp-14]
 0051AD06    mov        eax,dword ptr [ebx]
 0051AD08    mov        edx,1
 0051AD0D    mov        edi,dword ptr [eax]
 0051AD0F    call       dword ptr [edi+158]
 0051AD15    lea        ecx,[ebp-18]
 0051AD18    mov        edx,1
 0051AD1D    mov        eax,dword ptr [ebp-8]
 0051AD20    mov        edi,dword ptr [eax]
 0051AD22    call       dword ptr [edi+20]
 0051AD25    mov        edx,dword ptr [ebp-18]
 0051AD28    mov        eax,esi
 0051AD2A    call       0051BD80
 0051AD2F    xor        ecx,ecx
 0051AD31    mov        cl,al
 0051AD33    mov        eax,dword ptr [ebx]
 0051AD35    mov        edx,2
 0051AD3A    mov        edi,dword ptr [eax]
 0051AD3C    call       dword ptr [edi+140]
 0051AD42    mov        eax,dword ptr [ebx]
 0051AD44    mov        ecx,9
 0051AD49    mov        edx,3
 0051AD4E    mov        edi,dword ptr [eax]
 0051AD50    call       dword ptr [edi+140]
 0051AD56    mov        eax,dword ptr [ebx]
 0051AD58    xor        ecx,ecx
 0051AD5A    mov        edx,7
 0051AD5F    mov        edi,dword ptr [eax]
 0051AD61    call       dword ptr [edi+140]
 0051AD67    mov        eax,dword ptr [ebx]
 0051AD69    xor        ecx,ecx
 0051AD6B    mov        edx,8
 0051AD70    mov        edi,dword ptr [eax]
 0051AD72    call       dword ptr [edi+134]
 0051AD78    mov        eax,dword ptr [ebx]
 0051AD7A    xor        ecx,ecx
 0051AD7C    mov        edx,9
 0051AD81    mov        edi,dword ptr [eax]
 0051AD83    call       dword ptr [edi+134]
 0051AD89    mov        eax,dword ptr [ebx]
 0051AD8B    xor        ecx,ecx
 0051AD8D    mov        edx,0B
 0051AD92    mov        edi,dword ptr [eax]
 0051AD94    call       dword ptr [edi+134]
 0051AD9A    mov        eax,dword ptr [ebx]
 0051AD9C    xor        ecx,ecx
 0051AD9E    mov        edx,0C
 0051ADA3    mov        edi,dword ptr [eax]
 0051ADA5    call       dword ptr [edi+134]
 0051ADAB    mov        eax,dword ptr [ebx]
 0051ADAD    mov        ecx,0A
 0051ADB2    mov        edx,12
 0051ADB7    mov        edi,dword ptr [eax]
 0051ADB9    call       dword ptr [edi+140]
 0051ADBF    mov        eax,dword ptr [ebx]
 0051ADC1    mov        edx,dword ptr [eax]
 0051ADC3    call       dword ptr [edx+1D0]
 0051ADC9    mov        eax,dword ptr [ebp-8]
 0051ADCC    mov        edx,dword ptr [eax]
 0051ADCE    call       dword ptr [edx+0C]
 0051ADD1    test       al,al
<0051ADD3    jne        0051ACE9
 0051ADD9    mov        eax,dword ptr [ebp-8]
 0051ADDC    mov        edx,dword ptr [eax]
 0051ADDE    call       dword ptr [edx+10]
 0051ADE1    xor        eax,eax
 0051ADE3    pop        edx
 0051ADE4    pop        ecx
 0051ADE5    pop        ecx
 0051ADE6    mov        dword ptr fs:[eax],edx
 0051ADE9    push       51AE23
 0051ADEE    lea        eax,[ebp-18]
 0051ADF1    mov        edx,2
 0051ADF6    call       @LStrArrayClr
 0051ADFB    lea        eax,[ebp-10]
 0051ADFE    call       @IntfClear
 0051AE03    lea        eax,[ebp-0C]
 0051AE06    call       @IntfClear
 0051AE0B    lea        eax,[ebp-8]
 0051AE0E    call       @IntfClear
 0051AE13    lea        eax,[ebp-4]
 0051AE16    call       @LStrClr
 0051AE1B    ret
<0051AE1C    jmp        @HandleFinally
<0051AE21    jmp        0051ADEE
 0051AE23    pop        edi
 0051AE24    pop        esi
 0051AE25    pop        ebx
 0051AE26    mov        esp,ebp
 0051AE28    pop        ebp
 0051AE29    ret
*}
//end;

//0051AE88
//procedure sub_0051AE88(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051AE88    push       ebp
 0051AE89    mov        ebp,esp
 0051AE8B    push       ecx
 0051AE8C    mov        ecx,6
 0051AE91    push       0
 0051AE93    push       0
 0051AE95    dec        ecx
<0051AE96    jne        0051AE91
 0051AE98    xchg       ecx,dword ptr [ebp-4]
 0051AE9B    push       ebx
 0051AE9C    push       esi
 0051AE9D    mov        esi,ecx
 0051AE9F    mov        ebx,eax
 0051AEA1    xor        eax,eax
 0051AEA3    push       ebp
 0051AEA4    push       51B067
 0051AEA9    push       dword ptr fs:[eax]
 0051AEAC    mov        dword ptr fs:[eax],esp
 0051AEAF    mov        ecx,3
 0051AEB4    mov        edx,7
 0051AEB9    mov        eax,ebx
 0051AEBB    call       0051B790
 0051AEC0    test       al,al
>0051AEC2    je         0051AF15
 0051AEC4    lea        eax,[ebp-8]
 0051AEC7    mov        edx,51B080; 'SELECT NULL AS TABLE_CAT, n.nspname AS TABLE_SCHEM,'
 0051AECC    call       @LStrLAsg
 0051AED1    lea        eax,[ebp-0C]
 0051AED4    mov        edx,51B0BC; ' FROM pg_catalog.pg_namespace n, pg_catalog.pg_class ct, pg_catalog.pg_class ci, pg_catalog.pg_index i, pg_catalog.pg_attribute a, pg_catalog.pg_am am'
 0051AED9    call       @LStrLAsg
 0051AEDE    lea        eax,[ebp-10]
 0051AEE1    mov        edx,51B15C; ' AND n.oid = ct.relnamespace'
 0051AEE6    call       @LStrLAsg
 0051AEEB    test       esi,esi
>0051AEED    je         0051AF2F
 0051AEEF    push       dword ptr [ebp-10]
 0051AEF2    push       51B184; ' AND n.nspname = '
 0051AEF7    lea        ecx,[ebp-14]
 0051AEFA    mov        edx,esi
 0051AEFC    mov        eax,ebx
 0051AEFE    call       00514EA0
 0051AF03    push       dword ptr [ebp-14]
 0051AF06    lea        eax,[ebp-10]
 0051AF09    mov        edx,3
 0051AF0E    call       @LStrCatN
>0051AF13    jmp        0051AF2F
 0051AF15    lea        eax,[ebp-8]
 0051AF18    mov        edx,51B1A0; 'SELECT NULL AS TABLE_CAT, NULL AS TABLE_SCHEM,'
 0051AF1D    call       @LStrLAsg
 0051AF22    lea        eax,[ebp-0C]
 0051AF25    mov        edx,51B1D8; ' FROM pg_class ct, pg_class ci, pg_index i, pg_attribute a, pg_am am'
 0051AF2A    call       @LStrLAsg
 0051AF2F    push       dword ptr [ebp-8]
 0051AF32    push       51B228; ' ct.relname AS TABLE_NAME, NOT i.indisunique'
 0051AF37    push       51B260; ' AS NON_UNIQUE, NULL AS INDEX_QUALIFIER, ci.relname AS INDEX_NAME,'
 0051AF3C    push       51B2AC; ' CASE i.indisclustered WHEN true THEN '
 0051AF41    lea        edx,[ebp-18]
 0051AF44    mov        eax,1
 0051AF49    call       IntToStr
 0051AF4E    push       dword ptr [ebp-18]
 0051AF51    push       51B2DC; ' ELSE CASE am.amname WHEN 'hash' THEN '
 0051AF56    lea        edx,[ebp-1C]
 0051AF59    mov        eax,2
 0051AF5E    call       IntToStr
 0051AF63    push       dword ptr [ebp-1C]
 0051AF66    push       51B30C; ' ELSE '
 0051AF6B    lea        edx,[ebp-20]
 0051AF6E    mov        eax,3
 0051AF73    call       IntToStr
 0051AF78    push       dword ptr [ebp-20]
 0051AF7B    push       51B31C; ' END END AS TYPE,'
 0051AF80    push       51B338; ' a.attnum AS ORDINAL_POSITION, a.attname AS COLUMN_NAME,'
 0051AF85    push       51B37C; ' NULL AS ASC_OR_DESC, ci.reltuples AS CARDINALITY,'
 0051AF8A    push       51B3B8; ' ci.relpages AS PAGES, NULL AS FILTER_CONDITION'
 0051AF8F    push       dword ptr [ebp-0C]
 0051AF92    push       51B3F0; ' WHERE ct.oid=i.indrelid AND ci.oid=i.indexrelid'
 0051AF97    push       51B42C; ' AND a.attrelid=ci.oid AND ci.relam=am.oid'
 0051AF9C    push       dword ptr [ebp-10]
 0051AF9F    push       51B460; ' AND ct.relname = '
 0051AFA4    lea        ecx,[ebp-24]
 0051AFA7    mov        edx,dword ptr [ebp+14]
 0051AFAA    mov        eax,ebx
 0051AFAC    call       00514EA0
 0051AFB1    push       dword ptr [ebp-24]
 0051AFB4    lea        eax,[ebp-4]
 0051AFB7    mov        edx,13
 0051AFBC    call       @LStrCatN
 0051AFC1    cmp        byte ptr [ebp+10],0
>0051AFC5    je         0051AFD4
 0051AFC7    lea        eax,[ebp-4]
 0051AFCA    mov        edx,51B47C; ' AND i.indisunique'
 0051AFCF    call       @LStrCat
 0051AFD4    lea        eax,[ebp-4]
 0051AFD7    mov        edx,51B498; ' ORDER BY NON_UNIQUE, TYPE, INDEX_NAME, ORDINAL_POSITION'
 0051AFDC    call       @LStrCat
 0051AFE1    mov        eax,dword ptr [ebp+8]
 0051AFE4    push       eax
 0051AFE5    lea        edx,[ebp-30]
 0051AFE8    mov        eax,ebx
 0051AFEA    mov        ecx,dword ptr [eax]
 0051AFEC    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051AFF2    mov        eax,dword ptr [ebp-30]
 0051AFF5    lea        edx,[ebp-2C]
 0051AFF8    mov        ecx,dword ptr [eax]
 0051AFFA    call       dword ptr [ecx+0C]
 0051AFFD    mov        eax,dword ptr [ebp-2C]
 0051B000    lea        ecx,[ebp-28]
 0051B003    mov        edx,dword ptr [ebp-4]
 0051B006    mov        esi,dword ptr [eax]
 0051B008    call       dword ptr [esi+0C]
 0051B00B    mov        eax,dword ptr [ebp-28]
 0051B00E    push       eax
 0051B00F    lea        ecx,[ebp-34]
 0051B012    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 0051B018    mov        edx,dword ptr [edx]
 0051B01A    mov        eax,ebx
 0051B01C    call       004D8E7C
 0051B021    mov        ecx,dword ptr [ebp-34]
 0051B024    mov        eax,ebx
 0051B026    pop        edx
 0051B027    call       004D9194
 0051B02C    xor        eax,eax
 0051B02E    pop        edx
 0051B02F    pop        ecx
 0051B030    pop        ecx
 0051B031    mov        dword ptr fs:[eax],edx
 0051B034    push       51B06E
 0051B039    lea        eax,[ebp-34]
 0051B03C    call       @IntfClear
 0051B041    lea        eax,[ebp-30]
 0051B044    call       @IntfClear
 0051B049    lea        eax,[ebp-2C]
 0051B04C    call       @IntfClear
 0051B051    lea        eax,[ebp-28]
 0051B054    call       @IntfClear
 0051B059    lea        eax,[ebp-24]
 0051B05C    mov        edx,9
 0051B061    call       @LStrArrayClr
 0051B066    ret
<0051B067    jmp        @HandleFinally
<0051B06C    jmp        0051B039
 0051B06E    pop        esi
 0051B06F    pop        ebx
 0051B070    mov        esp,ebp
 0051B072    pop        ebp
 0051B073    ret        10
*}
//end;

//0051B4D4
//procedure sub_0051B4D4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0051B4D4    push       ebp
 0051B4D5    mov        ebp,esp
 0051B4D7    push       ecx
 0051B4D8    mov        ecx,4
 0051B4DD    push       0
 0051B4DF    push       0
 0051B4E1    dec        ecx
<0051B4E2    jne        0051B4DD
 0051B4E4    push       ecx
 0051B4E5    xchg       ecx,dword ptr [ebp-4]
 0051B4E8    push       ebx
 0051B4E9    push       esi
 0051B4EA    push       edi
 0051B4EB    mov        edi,ecx
 0051B4ED    mov        esi,eax
 0051B4EF    mov        ebx,dword ptr [ebp+8]
 0051B4F2    xor        eax,eax
 0051B4F4    push       ebp
 0051B4F5    push       51B67D
 0051B4FA    push       dword ptr fs:[eax]
 0051B4FD    mov        dword ptr fs:[eax],esp
 0051B500    mov        ecx,ebx
 0051B502    mov        edx,dword ptr ds:[61C498]; ^gvar_0061DD78:TZMetadataColumnDefs
 0051B508    mov        edx,dword ptr [edx]
 0051B50A    mov        eax,esi
 0051B50C    call       004D8E7C
 0051B511    lea        eax,[ebp-4]
 0051B514    mov        edx,51B698; ' SELECT nspname, relname FROM pg_catalog.pg_namespace n, pg_catalog.pg_class ct WHERE relkind = 'S' AND n.oid = ct.relnamespace'
 0051B519    call       @LStrLAsg
 0051B51E    cmp        dword ptr [ebp+0C],0
>0051B522    je         0051B559
 0051B524    push       dword ptr [ebp-4]
 0051B527    push       51B720; ' AND '
 0051B52C    lea        eax,[ebp-0C]
 0051B52F    push       eax
 0051B530    mov        eax,dword ptr [ebp+0C]
 0051B533    mov        dword ptr [ebp-14],eax
 0051B536    mov        byte ptr [ebp-10],0B
 0051B53A    lea        edx,[ebp-14]
 0051B53D    xor        ecx,ecx
 0051B53F    mov        eax,51B730; 'relname = '%s''
 0051B544    call       Format
 0051B549    push       dword ptr [ebp-0C]
 0051B54C    lea        eax,[ebp-4]
 0051B54F    mov        edx,3
 0051B554    call       @LStrCatN
 0051B559    test       edi,edi
>0051B55B    je         0051B58F
 0051B55D    push       dword ptr [ebp-4]
 0051B560    push       51B720; ' AND '
 0051B565    lea        eax,[ebp-18]
 0051B568    push       eax
 0051B569    mov        dword ptr [ebp-14],edi
 0051B56C    mov        byte ptr [ebp-10],0B
 0051B570    lea        edx,[ebp-14]
 0051B573    xor        ecx,ecx
 0051B575    mov        eax,51B748; 'nspname = '%s''
 0051B57A    call       Format
 0051B57F    push       dword ptr [ebp-18]
 0051B582    lea        eax,[ebp-4]
 0051B585    mov        edx,3
 0051B58A    call       @LStrCatN
 0051B58F    lea        edx,[ebp-20]
 0051B592    mov        eax,esi
 0051B594    mov        ecx,dword ptr [eax]
 0051B596    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051B59C    mov        eax,dword ptr [ebp-20]
 0051B59F    lea        edx,[ebp-1C]
 0051B5A2    mov        ecx,dword ptr [eax]
 0051B5A4    call       dword ptr [ecx+0C]
 0051B5A7    mov        eax,dword ptr [ebp-1C]
 0051B5AA    lea        ecx,[ebp-8]
 0051B5AD    mov        edx,dword ptr [ebp-4]
 0051B5B0    mov        esi,dword ptr [eax]
 0051B5B2    call       dword ptr [esi+0C]
>0051B5B5    jmp        0051B61E
 0051B5B7    mov        eax,dword ptr [ebx]
 0051B5B9    mov        edx,dword ptr [eax]
 0051B5BB    call       dword ptr [edx+1E4]
 0051B5C1    mov        eax,dword ptr [ebx]
 0051B5C3    mov        edx,1
 0051B5C8    mov        ecx,dword ptr [eax]
 0051B5CA    call       dword ptr [ecx+130]
 0051B5D0    lea        ecx,[ebp-24]
 0051B5D3    mov        edx,51B760; 'nspname'
 0051B5D8    mov        eax,dword ptr [ebp-8]
 0051B5DB    mov        esi,dword ptr [eax]
 0051B5DD    call       dword ptr [esi+74]
 0051B5E0    mov        ecx,dword ptr [ebp-24]
 0051B5E3    mov        eax,dword ptr [ebx]
 0051B5E5    mov        edx,2
 0051B5EA    mov        esi,dword ptr [eax]
 0051B5EC    call       dword ptr [esi+158]
 0051B5F2    lea        ecx,[ebp-28]
 0051B5F5    mov        edx,51B770; 'relname'
 0051B5FA    mov        eax,dword ptr [ebp-8]
 0051B5FD    mov        esi,dword ptr [eax]
 0051B5FF    call       dword ptr [esi+74]
 0051B602    mov        ecx,dword ptr [ebp-28]
 0051B605    mov        eax,dword ptr [ebx]
 0051B607    mov        edx,3
 0051B60C    mov        esi,dword ptr [eax]
 0051B60E    call       dword ptr [esi+158]
 0051B614    mov        eax,dword ptr [ebx]
 0051B616    mov        edx,dword ptr [eax]
 0051B618    call       dword ptr [edx+1D0]
 0051B61E    mov        eax,dword ptr [ebp-8]
 0051B621    mov        edx,dword ptr [eax]
 0051B623    call       dword ptr [edx+0C]
 0051B626    test       al,al
<0051B628    jne        0051B5B7
 0051B62A    mov        eax,dword ptr [ebp-8]
 0051B62D    mov        edx,dword ptr [eax]
 0051B62F    call       dword ptr [edx+10]
 0051B632    xor        eax,eax
 0051B634    pop        edx
 0051B635    pop        ecx
 0051B636    pop        ecx
 0051B637    mov        dword ptr fs:[eax],edx
 0051B63A    push       51B684
 0051B63F    lea        eax,[ebp-28]
 0051B642    mov        edx,2
 0051B647    call       @LStrArrayClr
 0051B64C    lea        eax,[ebp-20]
 0051B64F    call       @IntfClear
 0051B654    lea        eax,[ebp-1C]
 0051B657    call       @IntfClear
 0051B65C    lea        eax,[ebp-18]
 0051B65F    call       @LStrClr
 0051B664    lea        eax,[ebp-0C]
 0051B667    call       @LStrClr
 0051B66C    lea        eax,[ebp-8]
 0051B66F    call       @IntfClear
 0051B674    lea        eax,[ebp-4]
 0051B677    call       @LStrClr
 0051B67C    ret
<0051B67D    jmp        @HandleFinally
<0051B682    jmp        0051B63F
 0051B684    pop        edi
 0051B685    pop        esi
 0051B686    pop        ebx
 0051B687    mov        esp,ebp
 0051B689    pop        ebp
 0051B68A    ret        8
*}
//end;

//0051B778
//function sub_0051B778(?:?):Boolean;
//begin
{*
 0051B778    cmp        dl,1
 0051B77B    sete       al
 0051B77E    ret
*}
//end;

//0051B780
//function sub_0051B780(?:?; ?:?):?;
//begin
{*
 0051B780    cmp        dl,1
>0051B783    jne        0051B789
 0051B785    test       cl,cl
>0051B787    je         0051B78C
 0051B789    xor        eax,eax
 0051B78B    ret
 0051B78C    mov        al,1
 0051B78E    ret
*}
//end;

//0051B790
//function sub_0051B790(?:TZPostgreSQLDatabaseMetadata; ?:?; ?:?):?;
//begin
{*
 0051B790    push       ebp
 0051B791    mov        ebp,esp
 0051B793    push       0
 0051B795    push       0
 0051B797    push       ebx
 0051B798    push       esi
 0051B799    push       edi
 0051B79A    mov        edi,ecx
 0051B79C    mov        esi,edx
 0051B79E    mov        ebx,eax
 0051B7A0    xor        eax,eax
 0051B7A2    push       ebp
 0051B7A3    push       51B81C
 0051B7A8    push       dword ptr fs:[eax]
 0051B7AB    mov        dword ptr fs:[eax],esp
 0051B7AE    lea        edx,[ebp-8]
 0051B7B1    mov        eax,ebx
 0051B7B3    mov        ecx,dword ptr [eax]
 0051B7B5    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051B7BB    mov        edx,dword ptr [ebp-8]
 0051B7BE    lea        eax,[ebp-4]
 0051B7C1    mov        ecx,51B82C; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 0051B7C6    call       @IntfCast
 0051B7CB    mov        eax,dword ptr [ebp-4]
 0051B7CE    mov        edx,dword ptr [eax]
 0051B7D0    call       dword ptr [edx+0A4]
 0051B7D6    cmp        esi,eax
>0051B7D8    jl         0051B7FC
 0051B7DA    mov        eax,dword ptr [ebp-4]
 0051B7DD    mov        edx,dword ptr [eax]
 0051B7DF    call       dword ptr [edx+0A4]
 0051B7E5    cmp        esi,eax
>0051B7E7    jne        0051B7F8
 0051B7E9    mov        eax,dword ptr [ebp-4]
 0051B7EC    mov        edx,dword ptr [eax]
 0051B7EE    call       dword ptr [edx+0A8]
 0051B7F4    cmp        edi,eax
>0051B7F6    jle        0051B7FC
 0051B7F8    xor        ebx,ebx
>0051B7FA    jmp        0051B7FE
 0051B7FC    mov        bl,1
 0051B7FE    xor        eax,eax
 0051B800    pop        edx
 0051B801    pop        ecx
 0051B802    pop        ecx
 0051B803    mov        dword ptr fs:[eax],edx
 0051B806    push       51B823
 0051B80B    lea        eax,[ebp-8]
 0051B80E    call       @IntfClear
 0051B813    lea        eax,[ebp-4]
 0051B816    call       @IntfClear
 0051B81B    ret
<0051B81C    jmp        @HandleFinally
<0051B821    jmp        0051B80B
 0051B823    mov        eax,ebx
 0051B825    pop        edi
 0051B826    pop        esi
 0051B827    pop        ebx
 0051B828    pop        ecx
 0051B829    pop        ecx
 0051B82A    pop        ebp
 0051B82B    ret
*}
//end;

//0051B83C
//function sub_0051B83C(?:?):?;
//begin
{*
 0051B83C    push       ebp
 0051B83D    mov        ebp,esp
 0051B83F    xor        ecx,ecx
 0051B841    push       ecx
 0051B842    push       ecx
 0051B843    push       ecx
 0051B844    push       ecx
 0051B845    push       ecx
 0051B846    push       ecx
 0051B847    push       ebx
 0051B848    mov        ebx,eax
 0051B84A    xor        eax,eax
 0051B84C    push       ebp
 0051B84D    push       51B948
 0051B852    push       dword ptr fs:[eax]
 0051B855    mov        dword ptr fs:[eax],esp
 0051B858    mov        ecx,3
 0051B85D    mov        edx,7
 0051B862    mov        eax,ebx
 0051B864    call       0051B790
 0051B869    test       al,al
>0051B86B    je         0051B87C
 0051B86D    lea        eax,[ebp-8]
 0051B870    mov        edx,51B960; ' pg_catalog.pg_namespace n, pg_catalog.pg_type t1, pg_catalog.pg_type t2 WHERE t1.typnamespace=n.oid AND n.nspname='pg_catalog' AND '
 0051B875    call       @LStrLAsg
>0051B87A    jmp        0051B889
 0051B87C    lea        eax,[ebp-8]
 0051B87F    mov        edx,51B9F0; ' pg_type t1, pg_type t2 WHERE '
 0051B884    call       @LStrLAsg
 0051B889    push       51BA18; ' SELECT t1.typlen/t2.typlen FROM '
 0051B88E    push       dword ptr [ebp-8]
 0051B891    push       51BA44; ' t1.typelem=t2.oid AND t1.typname='oidvector' '
 0051B896    lea        eax,[ebp-4]
 0051B899    mov        edx,3
 0051B89E    call       @LStrCatN
 0051B8A3    lea        edx,[ebp-14]
 0051B8A6    mov        eax,ebx
 0051B8A8    mov        ecx,dword ptr [eax]
 0051B8AA    call       dword ptr [ecx+238]
 0051B8B0    mov        eax,dword ptr [ebp-14]
 0051B8B3    lea        edx,[ebp-10]
 0051B8B6    mov        ecx,dword ptr [eax]
 0051B8B8    call       dword ptr [ecx+0C]
 0051B8BB    mov        eax,dword ptr [ebp-10]
 0051B8BE    lea        ecx,[ebp-0C]
 0051B8C1    mov        edx,dword ptr [ebp-4]
 0051B8C4    mov        ebx,dword ptr [eax]
 0051B8C6    call       dword ptr [ebx+0C]
 0051B8C9    mov        eax,dword ptr [ebp-0C]
 0051B8CC    mov        edx,dword ptr [eax]
 0051B8CE    call       dword ptr [edx+0C]
 0051B8D1    test       al,al
>0051B8D3    jne        0051B8F6
 0051B8D5    lea        edx,[ebp-18]
 0051B8D8    mov        eax,[0061C480]; ^#122.sResString78:TResStringRec
 0051B8DD    call       LoadResString
 0051B8E2    mov        ecx,dword ptr [ebp-18]
 0051B8E5    mov        dl,1
 0051B8E7    mov        eax,[004087B0]; Exception
 0051B8EC    call       Exception.Create; Exception.Create
 0051B8F1    call       @RaiseExcept
 0051B8F6    mov        edx,1
 0051B8FB    mov        eax,dword ptr [ebp-0C]
 0051B8FE    mov        ecx,dword ptr [eax]
 0051B900    call       dword ptr [ecx+34]
 0051B903    mov        ebx,eax
 0051B905    mov        eax,dword ptr [ebp-0C]
 0051B908    mov        edx,dword ptr [eax]
 0051B90A    call       dword ptr [edx+10]
 0051B90D    xor        eax,eax
 0051B90F    pop        edx
 0051B910    pop        ecx
 0051B911    pop        ecx
 0051B912    mov        dword ptr fs:[eax],edx
 0051B915    push       51B94F
 0051B91A    lea        eax,[ebp-18]
 0051B91D    call       @LStrClr
 0051B922    lea        eax,[ebp-14]
 0051B925    call       @IntfClear
 0051B92A    lea        eax,[ebp-10]
 0051B92D    call       @IntfClear
 0051B932    lea        eax,[ebp-0C]
 0051B935    call       @IntfClear
 0051B93A    lea        eax,[ebp-8]
 0051B93D    mov        edx,2
 0051B942    call       @LStrArrayClr
 0051B947    ret
<0051B948    jmp        @HandleFinally
<0051B94D    jmp        0051B91A
 0051B94F    mov        eax,ebx
 0051B951    pop        ebx
 0051B952    mov        esp,ebp
 0051B954    pop        ebp
 0051B955    ret
*}
//end;

//0051BA74
//function sub_0051BA74(?:?):?;
//begin
{*
 0051BA74    push       ebp
 0051BA75    mov        ebp,esp
 0051BA77    xor        ecx,ecx
 0051BA79    push       ecx
 0051BA7A    push       ecx
 0051BA7B    push       ecx
 0051BA7C    push       ecx
 0051BA7D    push       ecx
 0051BA7E    push       ebx
 0051BA7F    mov        ebx,eax
 0051BA81    xor        eax,eax
 0051BA83    push       ebp
 0051BA84    push       51BB63
 0051BA89    push       dword ptr fs:[eax]
 0051BA8C    mov        dword ptr fs:[eax],esp
 0051BA8F    mov        ecx,3
 0051BA94    mov        edx,7
 0051BA99    mov        eax,ebx
 0051BA9B    call       0051B790
 0051BAA0    test       al,al
>0051BAA2    je         0051BAB3
 0051BAA4    lea        eax,[ebp-4]
 0051BAA7    mov        edx,51BB7C; ' SELECT t.typlen FROM pg_catalog.pg_type t, pg_catalog.pg_namespace n WHERE t.typnamespace=n.oid AND t.typname='name' AND n.nspname='pg_catalog' '
 0051BAAC    call       @LStrLAsg
>0051BAB1    jmp        0051BAC0
 0051BAB3    lea        eax,[ebp-4]
 0051BAB6    mov        edx,51BC18; ' SELECT typlen FROM pg_type WHERE typname='name' '
 0051BABB    call       @LStrLAsg
 0051BAC0    lea        edx,[ebp-10]
 0051BAC3    mov        eax,ebx
 0051BAC5    mov        ecx,dword ptr [eax]
 0051BAC7    call       dword ptr [ecx+238]
 0051BACD    mov        eax,dword ptr [ebp-10]
 0051BAD0    lea        edx,[ebp-0C]
 0051BAD3    mov        ecx,dword ptr [eax]
 0051BAD5    call       dword ptr [ecx+0C]
 0051BAD8    mov        eax,dword ptr [ebp-0C]
 0051BADB    lea        ecx,[ebp-8]
 0051BADE    mov        edx,dword ptr [ebp-4]
 0051BAE1    mov        ebx,dword ptr [eax]
 0051BAE3    call       dword ptr [ebx+0C]
 0051BAE6    mov        eax,dword ptr [ebp-8]
 0051BAE9    mov        edx,dword ptr [eax]
 0051BAEB    call       dword ptr [edx+0C]
 0051BAEE    test       al,al
>0051BAF0    jne        0051BB13
 0051BAF2    lea        edx,[ebp-14]
 0051BAF5    mov        eax,[0061C480]; ^#122.sResString78:TResStringRec
 0051BAFA    call       LoadResString
 0051BAFF    mov        ecx,dword ptr [ebp-14]
 0051BB02    mov        dl,1
 0051BB04    mov        eax,[004087B0]; Exception
 0051BB09    call       Exception.Create; Exception.Create
 0051BB0E    call       @RaiseExcept
 0051BB13    mov        edx,51BC54; 'typlen'
 0051BB18    mov        eax,dword ptr [ebp-8]
 0051BB1B    mov        ecx,dword ptr [eax]
 0051BB1D    call       dword ptr [ecx+88]
 0051BB23    mov        ebx,eax
 0051BB25    mov        eax,dword ptr [ebp-8]
 0051BB28    mov        edx,dword ptr [eax]
 0051BB2A    call       dword ptr [edx+10]
 0051BB2D    xor        eax,eax
 0051BB2F    pop        edx
 0051BB30    pop        ecx
 0051BB31    pop        ecx
 0051BB32    mov        dword ptr fs:[eax],edx
 0051BB35    push       51BB6A
 0051BB3A    lea        eax,[ebp-14]
 0051BB3D    call       @LStrClr
 0051BB42    lea        eax,[ebp-10]
 0051BB45    call       @IntfClear
 0051BB4A    lea        eax,[ebp-0C]
 0051BB4D    call       @IntfClear
 0051BB52    lea        eax,[ebp-8]
 0051BB55    call       @IntfClear
 0051BB5A    lea        eax,[ebp-4]
 0051BB5D    call       @LStrClr
 0051BB62    ret
<0051BB63    jmp        @HandleFinally
<0051BB68    jmp        0051BB3A
 0051BB6A    mov        eax,ebx
 0051BB6C    pop        ebx
 0051BB6D    mov        esp,ebp
 0051BB6F    pop        ebp
 0051BB70    ret
*}
//end;

//0051BC5C
//procedure sub_0051BC5C(?:TZPostgreSQLDatabaseMetadata; ?:Integer; ?:AnsiString);
//begin
{*
 0051BC5C    push       ebp
 0051BC5D    mov        ebp,esp
 0051BC5F    push       0
 0051BC61    push       0
 0051BC63    push       0
 0051BC65    push       ebx
 0051BC66    push       esi
 0051BC67    mov        dword ptr [ebp-4],ecx
 0051BC6A    mov        esi,edx
 0051BC6C    mov        ebx,eax
 0051BC6E    xor        eax,eax
 0051BC70    push       ebp
 0051BC71    push       51BCC7
 0051BC76    push       dword ptr fs:[eax]
 0051BC79    mov        dword ptr fs:[eax],esp
 0051BC7C    lea        edx,[ebp-0C]
 0051BC7F    mov        eax,ebx
 0051BC81    mov        ecx,dword ptr [eax]
 0051BC83    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051BC89    mov        edx,dword ptr [ebp-0C]
 0051BC8C    lea        eax,[ebp-8]
 0051BC8F    mov        ecx,51BCD4; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 0051BC94    call       @IntfCast
 0051BC99    mov        eax,dword ptr [ebp-8]
 0051BC9C    mov        ecx,dword ptr [ebp-4]
 0051BC9F    mov        edx,esi
 0051BCA1    mov        ebx,dword ptr [eax]
 0051BCA3    call       dword ptr [ebx+98]
 0051BCA9    xor        eax,eax
 0051BCAB    pop        edx
 0051BCAC    pop        ecx
 0051BCAD    pop        ecx
 0051BCAE    mov        dword ptr fs:[eax],edx
 0051BCB1    push       51BCCE
 0051BCB6    lea        eax,[ebp-0C]
 0051BCB9    call       @IntfClear
 0051BCBE    lea        eax,[ebp-8]
 0051BCC1    call       @IntfClear
 0051BCC6    ret
<0051BCC7    jmp        @HandleFinally
<0051BCCC    jmp        0051BCB6
 0051BCCE    pop        esi
 0051BCCF    pop        ebx
 0051BCD0    mov        esp,ebp
 0051BCD2    pop        ebp
 0051BCD3    ret
*}
//end;

//0051BCE4
//function sub_0051BCE4(?:TZPostgreSQLDatabaseMetadata; ?:Integer):?;
//begin
{*
 0051BCE4    push       ebp
 0051BCE5    mov        ebp,esp
 0051BCE7    push       0
 0051BCE9    push       0
 0051BCEB    push       0
 0051BCED    push       ebx
 0051BCEE    push       esi
 0051BCEF    mov        esi,edx
 0051BCF1    mov        ebx,eax
 0051BCF3    xor        eax,eax
 0051BCF5    push       ebp
 0051BCF6    push       51BD61
 0051BCFB    push       dword ptr fs:[eax]
 0051BCFE    mov        dword ptr fs:[eax],esp
 0051BD01    lea        edx,[ebp-8]
 0051BD04    mov        eax,ebx
 0051BD06    mov        ecx,dword ptr [eax]
 0051BD08    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051BD0E    mov        edx,dword ptr [ebp-8]
 0051BD11    lea        eax,[ebp-4]
 0051BD14    mov        ecx,51BD70; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 0051BD19    call       @IntfCast
 0051BD1E    lea        ecx,[ebp-0C]
 0051BD21    mov        edx,esi
 0051BD23    mov        eax,dword ptr [ebp-4]
 0051BD26    mov        ebx,dword ptr [eax]
 0051BD28    call       dword ptr [ebx+98]
 0051BD2E    mov        edx,dword ptr [ebp-0C]
 0051BD31    mov        eax,dword ptr [ebp-4]
 0051BD34    call       00510FFC
 0051BD39    mov        ebx,eax
 0051BD3B    xor        eax,eax
 0051BD3D    pop        edx
 0051BD3E    pop        ecx
 0051BD3F    pop        ecx
 0051BD40    mov        dword ptr fs:[eax],edx
 0051BD43    push       51BD68
 0051BD48    lea        eax,[ebp-0C]
 0051BD4B    call       @LStrClr
 0051BD50    lea        eax,[ebp-8]
 0051BD53    call       @IntfClear
 0051BD58    lea        eax,[ebp-4]
 0051BD5B    call       @IntfClear
 0051BD60    ret
<0051BD61    jmp        @HandleFinally
<0051BD66    jmp        0051BD48
 0051BD68    mov        eax,ebx
 0051BD6A    pop        esi
 0051BD6B    pop        ebx
 0051BD6C    mov        esp,ebp
 0051BD6E    pop        ebp
 0051BD6F    ret
*}
//end;

//0051BD80
//function sub_0051BD80(?:TZPostgreSQLDatabaseMetadata; ?:AnsiString):?;
//begin
{*
 0051BD80    push       ebp
 0051BD81    mov        ebp,esp
 0051BD83    push       0
 0051BD85    push       0
 0051BD87    push       0
 0051BD89    push       ebx
 0051BD8A    mov        dword ptr [ebp-4],edx
 0051BD8D    mov        ebx,eax
 0051BD8F    mov        eax,dword ptr [ebp-4]
 0051BD92    call       @LStrAddRef
 0051BD97    xor        eax,eax
 0051BD99    push       ebp
 0051BD9A    push       51BDF5
 0051BD9F    push       dword ptr fs:[eax]
 0051BDA2    mov        dword ptr fs:[eax],esp
 0051BDA5    lea        edx,[ebp-0C]
 0051BDA8    mov        eax,ebx
 0051BDAA    mov        ecx,dword ptr [eax]
 0051BDAC    call       dword ptr [ecx+238]; TZPostgreSQLDatabaseMetadata.sub_004D8E64
 0051BDB2    mov        edx,dword ptr [ebp-0C]
 0051BDB5    lea        eax,[ebp-8]
 0051BDB8    mov        ecx,51BE04; ['{8E62EA93-5A49-4F20-928A-0EA44ABCE5DB}']
 0051BDBD    call       @IntfCast
 0051BDC2    mov        eax,dword ptr [ebp-8]
 0051BDC5    mov        edx,dword ptr [ebp-4]
 0051BDC8    call       00510FFC
 0051BDCD    mov        ebx,eax
 0051BDCF    xor        eax,eax
 0051BDD1    pop        edx
 0051BDD2    pop        ecx
 0051BDD3    pop        ecx
 0051BDD4    mov        dword ptr fs:[eax],edx
 0051BDD7    push       51BDFC
 0051BDDC    lea        eax,[ebp-0C]
 0051BDDF    call       @IntfClear
 0051BDE4    lea        eax,[ebp-8]
 0051BDE7    call       @IntfClear
 0051BDEC    lea        eax,[ebp-4]
 0051BDEF    call       @LStrClr
 0051BDF4    ret
<0051BDF5    jmp        @HandleFinally
<0051BDFA    jmp        0051BDDC
 0051BDFC    mov        eax,ebx
 0051BDFE    pop        ebx
 0051BDFF    mov        esp,ebp
 0051BE01    pop        ebp
 0051BE02    ret
*}
//end;

//0051BE14
//procedure sub_0051BE14(?:TZPostgreSQLDatabaseMetadata; ?:?; ?:?; ?:?);
//begin
{*
 0051BE14    push       ebp
 0051BE15    mov        ebp,esp
 0051BE17    push       ecx
 0051BE18    push       ebx
 0051BE19    push       esi
 0051BE1A    mov        ebx,ecx
 0051BE1C    mov        dword ptr [ebp-4],edx
 0051BE1F    mov        esi,dword ptr [ebp+8]
 0051BE22    mov        eax,dword ptr [ebp-4]
 0051BE25    call       @LStrAddRef
 0051BE2A    xor        eax,eax
 0051BE2C    push       ebp
 0051BE2D    push       51C109
 0051BE32    push       dword ptr fs:[eax]
 0051BE35    mov        dword ptr fs:[eax],esp
 0051BE38    test       bl,bl
>0051BE3A    je         0051BFA4
 0051BE40    mov        eax,dword ptr [ebp-4]
 0051BE43    mov        edx,51C120; 'TABLE'
 0051BE48    call       @LStrCmp
>0051BE4D    jne        0051BE60
 0051BE4F    mov        eax,esi
 0051BE51    mov        edx,51C130; ' c.relkind = 'r' AND n.nspname NOT LIKE 'pg\\\\_%' '
 0051BE56    call       @LStrAsg
>0051BE5B    jmp        0051C0F3
 0051BE60    mov        eax,dword ptr [ebp-4]
 0051BE63    mov        edx,51C16C; 'VIEW'
 0051BE68    call       @LStrCmp
>0051BE6D    jne        0051BE80
 0051BE6F    mov        eax,esi
 0051BE71    mov        edx,51C17C; ' c.relkind = 'v' AND n.nspname <> 'pg_catalog' '
 0051BE76    call       @LStrAsg
>0051BE7B    jmp        0051C0F3
 0051BE80    mov        eax,dword ptr [ebp-4]
 0051BE83    mov        edx,51C1B4; 'INDEX'
 0051BE88    call       @LStrCmp
>0051BE8D    jne        0051BEA0
 0051BE8F    mov        eax,esi
 0051BE91    mov        edx,51C1C4; ' c.relkind = 'i' AND n.nspname NOT LIKE 'pg\\\\_%' '
 0051BE96    call       @LStrAsg
>0051BE9B    jmp        0051C0F3
 0051BEA0    mov        eax,dword ptr [ebp-4]
 0051BEA3    mov        edx,51C200; 'SEQUENCE'
 0051BEA8    call       @LStrCmp
>0051BEAD    jne        0051BEC0
 0051BEAF    mov        eax,esi
 0051BEB1    mov        edx,51C214; ' c.relkind = 'S' '
 0051BEB6    call       @LStrAsg
>0051BEBB    jmp        0051C0F3
 0051BEC0    mov        eax,dword ptr [ebp-4]
 0051BEC3    mov        edx,51C230; 'SYSTEM TABLE'
 0051BEC8    call       @LStrCmp
>0051BECD    jne        0051BEE0
 0051BECF    mov        eax,esi
 0051BED1    mov        edx,51C248; ' c.relkind = 'r' AND n.nspname = 'pg_catalog' '
 0051BED6    call       @LStrAsg
>0051BEDB    jmp        0051C0F3
 0051BEE0    mov        eax,dword ptr [ebp-4]
 0051BEE3    mov        edx,51C280; 'SYSTEM TOAST TABLE'
 0051BEE8    call       @LStrCmp
>0051BEED    jne        0051BF00
 0051BEEF    mov        eax,esi
 0051BEF1    mov        edx,51C29C; ' c.relkind = 'r' AND n.nspname = 'pg_toast' '
 0051BEF6    call       @LStrAsg
>0051BEFB    jmp        0051C0F3
 0051BF00    mov        eax,dword ptr [ebp-4]
 0051BF03    mov        edx,51C2D4; 'SYSTEM TOAST INDEX'
 0051BF08    call       @LStrCmp
>0051BF0D    jne        0051BF20
 0051BF0F    mov        eax,esi
 0051BF11    mov        edx,51C2F0; ' c.relkind = 'i' AND n.nspname = 'pg_toast' '
 0051BF16    call       @LStrAsg
>0051BF1B    jmp        0051C0F3
 0051BF20    mov        eax,dword ptr [ebp-4]
 0051BF23    mov        edx,51C328; 'SYSTEM VIEW'
 0051BF28    call       @LStrCmp
>0051BF2D    jne        0051BF40
 0051BF2F    mov        eax,esi
 0051BF31    mov        edx,51C33C; ' c.relkind = 'v' AND n.nspname = 'pg_catalog' '
 0051BF36    call       @LStrAsg
>0051BF3B    jmp        0051C0F3
 0051BF40    mov        eax,dword ptr [ebp-4]
 0051BF43    mov        edx,51C374; 'SYSTEM INDEX'
 0051BF48    call       @LStrCmp
>0051BF4D    jne        0051BF60
 0051BF4F    mov        eax,esi
 0051BF51    mov        edx,51C38C; ' c.relkind = 'i' AND n.nspname = 'pg_catalog' '
 0051BF56    call       @LStrAsg
>0051BF5B    jmp        0051C0F3
 0051BF60    mov        eax,dword ptr [ebp-4]
 0051BF63    mov        edx,51C3C4; 'TEMPORARY TABLE'
 0051BF68    call       @LStrCmp
>0051BF6D    jne        0051BF80
 0051BF6F    mov        eax,esi
 0051BF71    mov        edx,51C3DC; ' c.relkind = 'r' AND n.nspname LIKE 'pg\\\\_temp\\\\_%' '
 0051BF76    call       @LStrAsg
>0051BF7B    jmp        0051C0F3
 0051BF80    mov        eax,dword ptr [ebp-4]
 0051BF83    mov        edx,51C41C; 'TEMPORARY INDEX'
 0051BF88    call       @LStrCmp
>0051BF8D    jne        0051C0F3
 0051BF93    mov        eax,esi
 0051BF95    mov        edx,51C434; 'c.relkind = 'i' AND n.nspname LIKE 'pg\\\\_temp\\\\_%' '
 0051BF9A    call       @LStrAsg
>0051BF9F    jmp        0051C0F3
 0051BFA4    mov        eax,dword ptr [ebp-4]
 0051BFA7    mov        edx,51C120; 'TABLE'
 0051BFAC    call       @LStrCmp
>0051BFB1    jne        0051BFC4
 0051BFB3    mov        eax,esi
 0051BFB5    mov        edx,51C470; ' c.relkind = 'r' AND c.relname NOT LIKE 'pg\\\\_%' '
 0051BFBA    call       @LStrAsg
>0051BFBF    jmp        0051C0F3
 0051BFC4    mov        eax,dword ptr [ebp-4]
 0051BFC7    mov        edx,51C16C; 'VIEW'
 0051BFCC    call       @LStrCmp
>0051BFD1    jne        0051BFE4
 0051BFD3    mov        eax,esi
 0051BFD5    mov        edx,51C4AC; ' c.relkind = 'v' AND c.relname NOT LIKE 'pg\\\\_%' '
 0051BFDA    call       @LStrAsg
>0051BFDF    jmp        0051C0F3
 0051BFE4    mov        eax,dword ptr [ebp-4]
 0051BFE7    mov        edx,51C1B4; 'INDEX'
 0051BFEC    call       @LStrCmp
>0051BFF1    jne        0051C004
 0051BFF3    mov        eax,esi
 0051BFF5    mov        edx,51C4E8; ' c.relkind = 'i' AND c.relname NOT LIKE 'pg\\\\_%' '
 0051BFFA    call       @LStrAsg
>0051BFFF    jmp        0051C0F3
 0051C004    mov        eax,dword ptr [ebp-4]
 0051C007    mov        edx,51C200; 'SEQUENCE'
 0051C00C    call       @LStrCmp
>0051C011    jne        0051C024
 0051C013    mov        eax,esi
 0051C015    mov        edx,51C214; ' c.relkind = 'S' '
 0051C01A    call       @LStrAsg
>0051C01F    jmp        0051C0F3
 0051C024    mov        eax,dword ptr [ebp-4]
 0051C027    mov        edx,51C230; 'SYSTEM TABLE'
 0051C02C    call       @LStrCmp
>0051C031    jne        0051C044
 0051C033    mov        eax,esi
 0051C035    mov        edx,51C524; ' c.relkind = 'r' AND c.relname LIKE 'pg\\\\_%' AND c.relname NOT LIKE 'pg\\\\_toast\\\\_%' AND c.relname NOT LIKE 'pg\\\\_temp\\\\_%' '
 0051C03A    call       @LStrAsg
>0051C03F    jmp        0051C0F3
 0051C044    mov        eax,dword ptr [ebp-4]
 0051C047    mov        edx,51C280; 'SYSTEM TOAST TABLE'
 0051C04C    call       @LStrCmp
>0051C051    jne        0051C064
 0051C053    mov        eax,esi
 0051C055    mov        edx,51C5AC; ' c.relkind = 'r' AND c.relname LIKE 'pg\\\\_toast\\\\_%' '
 0051C05A    call       @LStrAsg
>0051C05F    jmp        0051C0F3
 0051C064    mov        eax,dword ptr [ebp-4]
 0051C067    mov        edx,51C2D4; 'SYSTEM TOAST INDEX'
 0051C06C    call       @LStrCmp
>0051C071    jne        0051C081
 0051C073    mov        eax,esi
 0051C075    mov        edx,51C5EC; ' c.relkind = 'i' AND c.relname LIKE 'pg\\\\_toast\\\\_%' '
 0051C07A    call       @LStrAsg
>0051C07F    jmp        0051C0F3
 0051C081    mov        eax,dword ptr [ebp-4]
 0051C084    mov        edx,51C328; 'SYSTEM VIEW'
 0051C089    call       @LStrCmp
>0051C08E    jne        0051C09E
 0051C090    mov        eax,esi
 0051C092    mov        edx,51C62C; 'c.relkind = 'v' AND c.relname LIKE 'pg\\\\_%''
 0051C097    call       @LStrAsg
>0051C09C    jmp        0051C0F3
 0051C09E    mov        eax,dword ptr [ebp-4]
 0051C0A1    mov        edx,51C374; 'SYSTEM INDEX'
 0051C0A6    call       @LStrCmp
>0051C0AB    jne        0051C0BB
 0051C0AD    mov        eax,esi
 0051C0AF    mov        edx,51C660; ' c.relkind = 'v' AND c.relname LIKE 'pg\\\\_%' AND c.relname NOT LIKE 'pg\\\\_toast\\\\_%' AND c.relname NOT LIKE 'pg\\\\_temp\\\\_%' '
 0051C0B4    call       @LStrAsg
>0051C0B9    jmp        0051C0F3
 0051C0BB    mov        eax,dword ptr [ebp-4]
 0051C0BE    mov        edx,51C3C4; 'TEMPORARY TABLE'
 0051C0C3    call       @LStrCmp
>0051C0C8    jne        0051C0D8
 0051C0CA    mov        eax,esi
 0051C0CC    mov        edx,51C6E8; ' c.relkind = 'r' AND c.relname LIKE 'pg\\\\_temp\\\\_%' '
 0051C0D1    call       @LStrAsg
>0051C0D6    jmp        0051C0F3
 0051C0D8    mov        eax,dword ptr [ebp-4]
 0051C0DB    mov        edx,51C41C; 'TEMPORARY INDEX'
 0051C0E0    call       @LStrCmp
>0051C0E5    jne        0051C0F3
 0051C0E7    mov        eax,esi
 0051C0E9    mov        edx,51C728; ' c.relkind = 'i' AND c.relname LIKE 'pg\\\\_temp\\\\_%' '
 0051C0EE    call       @LStrAsg
 0051C0F3    xor        eax,eax
 0051C0F5    pop        edx
 0051C0F6    pop        ecx
 0051C0F7    pop        ecx
 0051C0F8    mov        dword ptr fs:[eax],edx
 0051C0FB    push       51C110
 0051C100    lea        eax,[ebp-4]
 0051C103    call       @LStrClr
 0051C108    ret
<0051C109    jmp        @HandleFinally
<0051C10E    jmp        0051C100
 0051C110    pop        esi
 0051C111    pop        ebx
 0051C112    pop        ecx
 0051C113    pop        ebp
 0051C114    ret        4
*}
//end;

//0051C760
//procedure sub_0051C760(?:TZPostgreSQLDatabaseMetadata; ?:TStringList; ?:AnsiString);
//begin
{*
 0051C760    push       ebp
 0051C761    mov        ebp,esp
 0051C763    push       ecx
 0051C764    mov        ecx,5
 0051C769    push       0
 0051C76B    push       0
 0051C76D    dec        ecx
<0051C76E    jne        0051C769
 0051C770    xchg       ecx,dword ptr [ebp-4]
 0051C773    push       ebx
 0051C774    push       esi
 0051C775    push       edi
 0051C776    mov        dword ptr [ebp-4],ecx
 0051C779    mov        esi,edx
 0051C77B    mov        eax,dword ptr [ebp-4]
 0051C77E    call       @LStrAddRef
 0051C783    xor        eax,eax
 0051C785    push       ebp
 0051C786    push       51C986
 0051C78B    push       dword ptr fs:[eax]
 0051C78E    mov        dword ptr fs:[eax],esp
 0051C791    cmp        dword ptr [ebp-4],0
>0051C795    je         0051C963
 0051C79B    mov        byte ptr [ebp-6],0
 0051C79F    mov        byte ptr [ebp-5],20
 0051C7A3    mov        edi,2
 0051C7A8    mov        ebx,edi
 0051C7AA    mov        eax,dword ptr [ebp-4]
 0051C7AD    call       @LStrLen
 0051C7B2    sub        eax,ebx
>0051C7B4    jl         0051C85B
 0051C7BA    inc        eax
 0051C7BB    mov        dword ptr [ebp-0C],eax
 0051C7BE    mov        eax,dword ptr [ebp-4]
 0051C7C1    dec        ebx
 0051C7C2    test       eax,eax
>0051C7C4    je         0051C7CB
 0051C7C6    cmp        ebx,dword ptr [eax-4]
>0051C7C9    jb         0051C7D0
 0051C7CB    call       @BoundErr
 0051C7D0    inc        ebx
 0051C7D1    cmp        byte ptr [eax+ebx-1],22
>0051C7D6    jne        0051C7E8
 0051C7D8    cmp        byte ptr [ebp-5],5C
>0051C7DC    je         0051C7E8
 0051C7DE    mov        al,byte ptr [ebp-6]
 0051C7E1    xor        al,1
 0051C7E3    mov        byte ptr [ebp-6],al
>0051C7E6    jmp        0051C837
 0051C7E8    mov        eax,dword ptr [ebp-4]
 0051C7EB    dec        ebx
 0051C7EC    test       eax,eax
>0051C7EE    je         0051C7F5
 0051C7F0    cmp        ebx,dword ptr [eax-4]
>0051C7F3    jb         0051C7FA
 0051C7F5    call       @BoundErr
 0051C7FA    inc        ebx
 0051C7FB    cmp        byte ptr [eax+ebx-1],2C
>0051C800    jne        0051C837
 0051C802    cmp        byte ptr [ebp-6],0
>0051C806    jne        0051C837
 0051C808    lea        eax,[ebp-10]
 0051C80B    push       eax
 0051C80C    mov        ecx,ebx
 0051C80E    sub        ecx,edi
>0051C810    jno        0051C817
 0051C812    call       @IntOver
 0051C817    mov        edx,edi
 0051C819    mov        eax,dword ptr [ebp-4]
 0051C81C    call       @LStrCopy
 0051C821    mov        edx,dword ptr [ebp-10]
 0051C824    mov        eax,esi
 0051C826    mov        ecx,dword ptr [eax]
 0051C828    call       dword ptr [ecx+38]; TStringList.Add
 0051C82B    mov        edi,ebx
 0051C82D    add        edi,1
>0051C830    jno        0051C837
 0051C832    call       @IntOver
 0051C837    mov        eax,dword ptr [ebp-4]
 0051C83A    dec        ebx
 0051C83B    test       eax,eax
>0051C83D    je         0051C844
 0051C83F    cmp        ebx,dword ptr [eax-4]
>0051C842    jb         0051C849
 0051C844    call       @BoundErr
 0051C849    inc        ebx
 0051C84A    mov        al,byte ptr [eax+ebx-1]
 0051C84E    mov        byte ptr [ebp-5],al
 0051C851    inc        ebx
 0051C852    dec        dword ptr [ebp-0C]
<0051C855    jne        0051C7BE
 0051C85B    lea        eax,[ebp-14]
 0051C85E    push       eax
 0051C85F    mov        eax,dword ptr [ebp-4]
 0051C862    call       @LStrLen
 0051C867    mov        ecx,eax
 0051C869    sub        ecx,edi
>0051C86B    jno        0051C872
 0051C86D    call       @IntOver
 0051C872    mov        edx,edi
 0051C874    mov        eax,dword ptr [ebp-4]
 0051C877    call       @LStrCopy
 0051C87C    mov        edx,dword ptr [ebp-14]
 0051C87F    mov        eax,esi
 0051C881    mov        ecx,dword ptr [eax]
 0051C883    call       dword ptr [ecx+38]; TStringList.Add
 0051C886    mov        eax,esi
 0051C888    mov        edx,dword ptr [eax]
 0051C88A    call       dword ptr [edx+14]; TStringList.GetCount
 0051C88D    sub        eax,1
>0051C890    jno        0051C897
 0051C892    call       @IntOver
 0051C897    test       eax,eax
>0051C899    jl         0051C963
 0051C89F    inc        eax
 0051C8A0    mov        dword ptr [ebp-0C],eax
 0051C8A3    xor        ebx,ebx
 0051C8A5    lea        ecx,[ebp-18]
 0051C8A8    mov        edx,ebx
 0051C8AA    mov        eax,esi
 0051C8AC    mov        edi,dword ptr [eax]
 0051C8AE    call       dword ptr [edi+0C]; TStringList.Get
 0051C8B1    mov        eax,dword ptr [ebp-18]
 0051C8B4    mov        edx,1
 0051C8B9    dec        edx
 0051C8BA    test       eax,eax
>0051C8BC    je         0051C8C3
 0051C8BE    cmp        edx,dword ptr [eax-4]
>0051C8C1    jb         0051C8C8
 0051C8C3    call       @BoundErr
 0051C8C8    inc        edx
 0051C8C9    cmp        byte ptr [eax+edx-1],22
>0051C8CE    jne        0051C959
 0051C8D4    lea        ecx,[ebp-1C]
 0051C8D7    mov        edx,ebx
 0051C8D9    mov        eax,esi
 0051C8DB    mov        edi,dword ptr [eax]
 0051C8DD    call       dword ptr [edi+0C]; TStringList.Get
 0051C8E0    mov        eax,dword ptr [ebp-1C]
 0051C8E3    call       @LStrLen
 0051C8E8    push       eax
 0051C8E9    lea        ecx,[ebp-20]
 0051C8EC    mov        edx,ebx
 0051C8EE    mov        eax,esi
 0051C8F0    mov        edi,dword ptr [eax]
 0051C8F2    call       dword ptr [edi+0C]; TStringList.Get
 0051C8F5    mov        eax,dword ptr [ebp-20]
 0051C8F8    pop        edx
 0051C8F9    dec        edx
 0051C8FA    test       eax,eax
>0051C8FC    je         0051C903
 0051C8FE    cmp        edx,dword ptr [eax-4]
>0051C901    jb         0051C908
 0051C903    call       @BoundErr
 0051C908    inc        edx
 0051C909    cmp        byte ptr [eax+edx-1],22
>0051C90E    jne        0051C959
 0051C910    lea        eax,[ebp-24]
 0051C913    push       eax
 0051C914    lea        ecx,[ebp-28]
 0051C917    mov        edx,ebx
 0051C919    mov        eax,esi
 0051C91B    mov        edi,dword ptr [eax]
 0051C91D    call       dword ptr [edi+0C]; TStringList.Get
 0051C920    mov        eax,dword ptr [ebp-28]
 0051C923    call       @LStrLen
 0051C928    sub        eax,2
>0051C92B    jno        0051C932
 0051C92D    call       @IntOver
 0051C932    push       eax
 0051C933    lea        ecx,[ebp-2C]
 0051C936    mov        edx,ebx
 0051C938    mov        eax,esi
 0051C93A    mov        edi,dword ptr [eax]
 0051C93C    call       dword ptr [edi+0C]; TStringList.Get
 0051C93F    mov        eax,dword ptr [ebp-2C]
 0051C942    mov        edx,2
 0051C947    pop        ecx
 0051C948    call       @LStrCopy
 0051C94D    mov        ecx,dword ptr [ebp-24]
 0051C950    mov        edx,ebx
 0051C952    mov        eax,esi
 0051C954    mov        edi,dword ptr [eax]
 0051C956    call       dword ptr [edi+20]; TStringList.Put
 0051C959    inc        ebx
 0051C95A    dec        dword ptr [ebp-0C]
<0051C95D    jne        0051C8A5
 0051C963    xor        eax,eax
 0051C965    pop        edx
 0051C966    pop        ecx
 0051C967    pop        ecx
 0051C968    mov        dword ptr fs:[eax],edx
 0051C96B    push       51C98D
 0051C970    lea        eax,[ebp-2C]
 0051C973    mov        edx,8
 0051C978    call       @LStrArrayClr
 0051C97D    lea        eax,[ebp-4]
 0051C980    call       @LStrClr
 0051C985    ret
<0051C986    jmp        @HandleFinally
<0051C98B    jmp        0051C970
 0051C98D    pop        edi
 0051C98E    pop        esi
 0051C98F    pop        ebx
 0051C990    mov        esp,ebp
 0051C992    pop        ebp
 0051C993    ret
*}
//end;

//0051C994
//procedure sub_0051C994(?:TZPostgreSQLDatabaseMetadata; ?:?; ?:AnsiString);
//begin
{*
 0051C994    push       ebp
 0051C995    mov        ebp,esp
 0051C997    push       ebx
 0051C998    mov        ebx,ecx
 0051C99A    xor        eax,eax
 0051C99C    mov        al,dl
 0051C99E    add        eax,0FFFFFFBD
 0051C9A1    cmp        eax,35
>0051C9A4    ja         0051CAC2
 0051C9AA    mov        al,byte ptr [eax+51C9B7]
 0051C9B0    jmp        dword ptr [eax*4+51C9ED]
 0051C9B0    db         10
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         5
 0051C9B0    db         0
 0051C9B0    db         11
 0051C9B0    db         9
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         8
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         1
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         4
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         2
 0051C9B0    db         0
 0051C9B0    db         7
 0051C9B0    db         0
 0051C9B0    db         0
 0051C9B0    db         3
 0051C9B0    db         6
 0051C9B0    dd         51CAC2
 0051C9B0    dd         51CA1D
 0051C9B0    dd         51CA2C
 0051C9B0    dd         51CA3B
 0051C9B0    dd         51CA4A
 0051C9B0    dd         51CA59
 0051C9B0    dd         51CA68
 0051C9B0    dd         51CA77
 0051C9B0    dd         51CA86
 0051C9B0    dd         51CA95
 0051C9B0    dd         51CAA4
 0051C9B0    dd         51CAB3
 0051CA1D    mov        eax,ebx
 0051CA1F    mov        edx,51CADC; 'INSERT'
 0051CA24    call       @LStrAsg
 0051CA29    pop        ebx
 0051CA2A    pop        ebp
 0051CA2B    ret
 0051CA2C    mov        eax,ebx
 0051CA2E    mov        edx,51CAEC; 'SELECT'
 0051CA33    call       @LStrAsg
 0051CA38    pop        ebx
 0051CA39    pop        ebp
 0051CA3A    ret
 0051CA3B    mov        eax,ebx
 0051CA3D    mov        edx,51CAFC; 'UPDATE'
 0051CA42    call       @LStrAsg
 0051CA47    pop        ebx
 0051CA48    pop        ebp
 0051CA49    ret
 0051CA4A    mov        eax,ebx
 0051CA4C    mov        edx,51CB0C; 'DELETE'
 0051CA51    call       @LStrAsg
 0051CA56    pop        ebx
 0051CA57    pop        ebp
 0051CA58    ret
 0051CA59    mov        eax,ebx
 0051CA5B    mov        edx,51CB1C; 'RULE'
 0051CA60    call       @LStrAsg
 0051CA65    pop        ebx
 0051CA66    pop        ebp
 0051CA67    ret
 0051CA68    mov        eax,ebx
 0051CA6A    mov        edx,51CB2C; 'REFERENCES'
 0051CA6F    call       @LStrAsg
 0051CA74    pop        ebx
 0051CA75    pop        ebp
 0051CA76    ret
 0051CA77    mov        eax,ebx
 0051CA79    mov        edx,51CB40; 'TRIGGER'
 0051CA7E    call       @LStrAsg
 0051CA83    pop        ebx
 0051CA84    pop        ebp
 0051CA85    ret
 0051CA86    mov        eax,ebx
 0051CA88    mov        edx,51CB50; 'EXECUTE'
 0051CA8D    call       @LStrAsg
 0051CA92    pop        ebx
 0051CA93    pop        ebp
 0051CA94    ret
 0051CA95    mov        eax,ebx
 0051CA97    mov        edx,51CB60; 'USAGE'
 0051CA9C    call       @LStrAsg
 0051CAA1    pop        ebx
 0051CAA2    pop        ebp
 0051CAA3    ret
 0051CAA4    mov        eax,ebx
 0051CAA6    mov        edx,51CB70; 'CREATE'
 0051CAAB    call       @LStrAsg
 0051CAB0    pop        ebx
 0051CAB1    pop        ebp
 0051CAB2    ret
 0051CAB3    mov        eax,ebx
 0051CAB5    mov        edx,51CB80; 'CREATE TEMP'
 0051CABA    call       @LStrAsg
 0051CABF    pop        ebx
 0051CAC0    pop        ebp
 0051CAC1    ret
 0051CAC2    mov        eax,ebx
 0051CAC4    mov        edx,51CB94; 'UNKNOWN'
 0051CAC9    call       @LStrAsg
 0051CACE    pop        ebx
 0051CACF    pop        ebp
 0051CAD0    ret
*}
//end;

Initialization
Finalization
//0051CB9C
{*
 0051CB9C    push       ebp
 0051CB9D    mov        ebp,esp
 0051CB9F    xor        eax,eax
 0051CBA1    push       ebp
 0051CBA2    push       51CBD8
 0051CBA7    push       dword ptr fs:[eax]
 0051CBAA    mov        dword ptr fs:[eax],esp
 0051CBAD    inc        dword ptr ds:[61E51C]
>0051CBB3    jne        0051CBCA
 0051CBB5    mov        eax,61637C; gvar_0061637C:array[11] of String
 0051CBBA    mov        ecx,0B
 0051CBBF    mov        edx,dword ptr ds:[4010F8]; String
 0051CBC5    call       @FinalizeArray
 0051CBCA    xor        eax,eax
 0051CBCC    pop        edx
 0051CBCD    pop        ecx
 0051CBCE    pop        ecx
 0051CBCF    mov        dword ptr fs:[eax],edx
 0051CBD2    push       51CBDF
 0051CBD7    ret
<0051CBD8    jmp        @HandleFinally
<0051CBDD    jmp        0051CBD7
 0051CBDF    pop        ebp
 0051CBE0    ret
*}
end.