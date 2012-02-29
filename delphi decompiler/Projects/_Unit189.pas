{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit189;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata, ZDbcInterbase6;

type
  TZInterbase6DatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:String;//f24
    f28:TZInterbase6Connection;//f28
    destructor Destroy; virtual;
    //procedure sub_0052C598(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052C9A4(?:?); virtual;
    //procedure sub_0052CA00(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052E09C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052DA5C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052E514(?:?; ?:?); virtual;
    //procedure sub_0052E7D4(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052F15C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052FCD0(?:?; ?:?; ?:?); virtual;
    //procedure sub_0053021C(?:?; ?:?); virtual;
    //procedure sub_0052B9A8(?:?; ?:?); virtual;
    //procedure sub_0052BC1C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0052E448(?:?); virtual;
    //procedure sub_0052FAD0(?:?); virtual;
    //procedure sub_0052B3E4(?:?); virtual;
    //procedure sub_0052B418(?:?); virtual;
    //procedure sub_0052B440(?:?); virtual;
    //function sub_0052B4A0():?; virtual;
    //function sub_0052B4A8():?; virtual;
    //function sub_0052B4AC():?; virtual;
    //function sub_0052B4B0():?; virtual;
    //function sub_0052B4B4():?; virtual;
    //function sub_0052B4B8():?; virtual;
    //function sub_0052B4BC():?; virtual;
    //function sub_0052B4C0():?; virtual;
    //function sub_0052B4C4():?; virtual;
    //function sub_0052B4C8():?; virtual;
    //function sub_0052B4CC():?; virtual;
    //procedure sub_0052B4D0(?:?); virtual;
    //procedure sub_0052B784(?:?); virtual;
    //procedure sub_0052B794(?:?); virtual;
    //procedure sub_0052B7A4(?:?); virtual;
    //procedure sub_0052B7B4(?:?); virtual;
    //procedure sub_0052B7C4(?:?); virtual;
    //procedure sub_0052B7E8(?:?); virtual;
    //function sub_0052B80C():?; virtual;
    //function sub_0052B810():?; virtual;
    //function sub_0052B814():?; virtual;
    //function sub_0052B818():?; virtual;
    //function sub_0052B81C():?; virtual;
    //function sub_0052B820():?; virtual;
    //procedure sub_0052B824(?:?); virtual;
    //procedure sub_0052B834(?:?); virtual;
    //procedure sub_0052B860(?:?); virtual;
    //procedure sub_0052B870(?:?); virtual;
    //function sub_0052B880():?; virtual;
    //function sub_0052B884():?; virtual;
    //function sub_0052B888():?; virtual;
    //function sub_0052B88C():?; virtual;
    //function sub_0052B890():?; virtual;
    //function sub_0052B894():?; virtual;
    //function sub_0052B898():?; virtual;
    //function sub_0052B89C():?; virtual;
    //function sub_0052B8A0():?; virtual;
    //function sub_0052B8A4():?; virtual;
    //function sub_0052B8A8():?; virtual;
    //function sub_0052B8AC():?; virtual;
    //function sub_0052B8B0():?; virtual;
    //function sub_0052B8B4():?; virtual;
    //function sub_0052B8B8():?; virtual;
    //function sub_0052B8BC():?; virtual;
    //function sub_0052B8C0():?; virtual;
    //function sub_0052B8C4():?; virtual;
    //function sub_0052B8C8():?; virtual;
    //function sub_0052B8CC():?; virtual;
    //function sub_0052B8D0():?; virtual;
    //function sub_0052B8D4():?; virtual;
    //function sub_0052B8D8():?; virtual;
    //function sub_0052B8DC():?; virtual;
    //function sub_0052B8E0():?; virtual;
    //function sub_0052B8E4():?; virtual;
    //function sub_0052B8E8():?; virtual;
    //function sub_0052B8F0():?; virtual;
    //function sub_0052B8F8():?; virtual;
    //function sub_0052B900():?; virtual;
    //function sub_0052B908():?; virtual;
    //function sub_0052B910():?; virtual;
    //function sub_0052B918():?; virtual;
    //function sub_0052B920():?; virtual;
    //function sub_0052B924():?; virtual;
    //function sub_0052B92C():?; virtual;
    //function sub_0052B934():?; virtual;
    //function sub_0052B938():?; virtual;
    //function sub_0052B93C():?; virtual;
    //function sub_0052B944():?; virtual;
    //function sub_0052B94C():?; virtual;
    //function sub_0052B950():?; virtual;
    //function sub_0052B958():?; virtual;
    //function sub_0052B95C():?; virtual;
    //function sub_0052B964():?; virtual;
    //function sub_0052B96C():?; virtual;
    //function sub_0052B974():?; virtual;
    //function sub_0052B978():?; virtual;
    //function sub_0052B97C(?:?):?; virtual;
    //function sub_0052B998():?; virtual;
    //function sub_0052B99C():?; virtual;
    //function sub_0052B9A0():?; virtual;
    //function sub_0052B9A4():?; virtual;
    //function sub_00530408(?:?):Boolean; virtual;
    //function sub_00530410(?:?; ?:?):?; virtual;
    //constructor Create(?:TZInterbase6DatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0052B324
//constructor TZInterbase6DatabaseMetadata.Create(?:TZInterbase6DatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0052B324    push       ebp
 0052B325    mov        ebp,esp
 0052B327    push       ebx
 0052B328    push       esi
 0052B329    push       edi
 0052B32A    test       dl,dl
>0052B32C    je         0052B336
 0052B32E    add        esp,0FFFFFFF0
 0052B331    call       @ClassCreate
 0052B336    mov        esi,ecx
 0052B338    mov        ebx,edx
 0052B33A    mov        edi,eax
 0052B33C    mov        eax,dword ptr [ebp+0C]
 0052B33F    call       @LStrAddRef
 0052B344    xor        eax,eax
 0052B346    push       ebp
 0052B347    push       52B392
 0052B34C    push       dword ptr fs:[eax]
 0052B34F    mov        dword ptr fs:[eax],esp
 0052B352    mov        eax,dword ptr [ebp+0C]
 0052B355    push       eax
 0052B356    mov        eax,dword ptr [ebp+8]
 0052B359    push       eax
 0052B35A    mov        ecx,esi
 0052B35C    test       ecx,ecx
>0052B35E    je         0052B363
 0052B360    sub        ecx,0FFFFFFD0
 0052B363    xor        edx,edx
 0052B365    mov        eax,edi
 0052B367    call       004D8D74
 0052B36C    mov        eax,esi
 0052B36E    mov        edx,dword ptr ds:[538E5C]; TZInterbase6Connection
 0052B374    call       @AsClass
 0052B379    mov        dword ptr [edi+28],eax; TZInterbase6DatabaseMetadata.?f28:TZInterbase6Connection
 0052B37C    xor        eax,eax
 0052B37E    pop        edx
 0052B37F    pop        ecx
 0052B380    pop        ecx
 0052B381    mov        dword ptr fs:[eax],edx
 0052B384    push       52B399
 0052B389    lea        eax,[ebp+0C]
 0052B38C    call       @LStrClr
 0052B391    ret
<0052B392    jmp        @HandleFinally
<0052B397    jmp        0052B389
 0052B399    mov        eax,edi
 0052B39B    test       bl,bl
>0052B39D    je         0052B3AE
 0052B39F    call       @AfterConstruction
 0052B3A4    pop        dword ptr fs:[0]
 0052B3AB    add        esp,0C
 0052B3AE    mov        eax,edi
 0052B3B0    pop        edi
 0052B3B1    pop        esi
 0052B3B2    pop        ebx
 0052B3B3    pop        ebp
 0052B3B4    ret        8
*}
//end;

//0052B3B8
destructor TZInterbase6DatabaseMetadata.Destroy;
begin
{*
 0052B3B8    push       ebp
 0052B3B9    mov        ebp,esp
 0052B3BB    push       ebx
 0052B3BC    push       esi
 0052B3BD    call       @BeforeDestruction
 0052B3C2    mov        ebx,edx
 0052B3C4    mov        esi,eax
 0052B3C6    mov        edx,ebx
 0052B3C8    and        dl,0FC
 0052B3CB    mov        eax,esi
 0052B3CD    call       TZAbstractDatabaseMetadata.Destroy
 0052B3D2    test       bl,bl
>0052B3D4    jle        0052B3DD
 0052B3D6    mov        eax,esi
 0052B3D8    call       @ClassDestroy
 0052B3DD    pop        esi
 0052B3DE    pop        ebx
 0052B3DF    pop        ebp
 0052B3E0    ret
*}
end;

//0052B3E4
//procedure sub_0052B3E4(?:?);
//begin
{*
 0052B3E4    push       ebp
 0052B3E5    mov        ebp,esp
 0052B3E7    push       ebx
 0052B3E8    mov        ebx,edx
 0052B3EA    mov        eax,ebx
 0052B3EC    mov        edx,52B404; 'Interbase/Firebird'
 0052B3F1    call       @LStrAsg
 0052B3F6    pop        ebx
 0052B3F7    pop        ebp
 0052B3F8    ret
*}
//end;

//0052B418
//procedure sub_0052B418(?:?);
//begin
{*
 0052B418    push       ebp
 0052B419    mov        ebp,esp
 0052B41B    push       ebx
 0052B41C    mov        ebx,edx
 0052B41E    mov        eax,ebx
 0052B420    mov        edx,52B438; '6.0+'
 0052B425    call       @LStrAsg
 0052B42A    pop        ebx
 0052B42B    pop        ebp
 0052B42C    ret
*}
//end;

//0052B440
//procedure sub_0052B440(?:?);
//begin
{*
 0052B440    push       ebp
 0052B441    mov        ebp,esp
 0052B443    push       ebx
 0052B444    mov        ebx,edx
 0052B446    mov        eax,ebx
 0052B448    mov        edx,52B460; 'Zeos Database Connectivity Driver for Interbase and Firebird'
 0052B44D    call       @LStrAsg
 0052B452    pop        ebx
 0052B453    pop        ebp
 0052B454    ret
*}
//end;

//0052B4A0
//function sub_0052B4A0():?;
//begin
{*
 0052B4A0    mov        eax,1
 0052B4A5    ret
*}
//end;

//0052B4A8
//function sub_0052B4A8():?;
//begin
{*
 0052B4A8    xor        eax,eax
 0052B4AA    ret
*}
//end;

//0052B4AC
//function sub_0052B4AC():?;
//begin
{*
 0052B4AC    xor        eax,eax
 0052B4AE    ret
*}
//end;

//0052B4B0
//function sub_0052B4B0():?;
//begin
{*
 0052B4B0    mov        al,1
 0052B4B2    ret
*}
//end;

//0052B4B4
//function sub_0052B4B4():?;
//begin
{*
 0052B4B4    mov        al,1
 0052B4B6    ret
*}
//end;

//0052B4B8
//function sub_0052B4B8():?;
//begin
{*
 0052B4B8    xor        eax,eax
 0052B4BA    ret
*}
//end;

//0052B4BC
//function sub_0052B4BC():?;
//begin
{*
 0052B4BC    xor        eax,eax
 0052B4BE    ret
*}
//end;

//0052B4C0
//function sub_0052B4C0():?;
//begin
{*
 0052B4C0    mov        al,1
 0052B4C2    ret
*}
//end;

//0052B4C4
//function sub_0052B4C4():?;
//begin
{*
 0052B4C4    xor        eax,eax
 0052B4C6    ret
*}
//end;

//0052B4C8
//function sub_0052B4C8():?;
//begin
{*
 0052B4C8    xor        eax,eax
 0052B4CA    ret
*}
//end;

//0052B4CC
//function sub_0052B4CC():?;
//begin
{*
 0052B4CC    mov        al,1
 0052B4CE    ret
*}
//end;

//0052B4D0
//procedure sub_0052B4D0(?:?);
//begin
{*
 0052B4D0    push       ebp
 0052B4D1    mov        ebp,esp
 0052B4D3    push       ebx
 0052B4D4    mov        ebx,edx
 0052B4D6    mov        eax,ebx
 0052B4D8    mov        edx,52B4F0; 'ACTIVE,AFTER,ASCENDING,BASE_NAME,BEFORE,BLOB,CACHE,CHECK_POINT_LENGTH,COMPUTED,CONDITIONAL,CONTAINING,CSTRING,DATABASE,RDB$DB_KEY,DEBUG,DESCENDING,DO,ENTRY_POINT,EXIT,FILE,FILTER,FUNCTION,GDSCODE,GENERATOR,GEN_ID,GROUP_COMMIT_WAIT_TIME,IF,INACTIVE,INPUT_TYPE,INDEX,LOGFILE,LOG_BUFFER_SIZE,MANUAL,MAXIMUM_SEGMENT,MERGE, MESSAGE,MODULE_NAME,NCHAR,NUM_LOG_BUFFERS,OUTPUT_TYPE,OVERFLOW,PAGE,PAGES,PAGE_SIZE,PARAMETER,PASSWORD,PLAN,POST_EVENT,PROTECTED,RAW_PARTITIONS,RESERV,RESERVING,RETAIN,RETURNING_VALUES,RETURNS,SEGMENT,SHADOW,SHARED,SINGULAR,SNAPSHOT,SORT,STABILITY,STARTS,STARTING,STATISTICS,SUB_TYPE,SUSPEND,TRIGGER,VARIABLE,RECORD_VERSION,WAIT,WHILE,WORK'
 0052B4DD    call       @LStrAsg
 0052B4E2    pop        ebx
 0052B4E3    pop        ebp
 0052B4E4    ret
*}
//end;

//0052B784
//procedure sub_0052B784(?:?);
//begin
{*
 0052B784    push       ebp
 0052B785    mov        ebp,esp
 0052B787    push       ebx
 0052B788    mov        ebx,edx
 0052B78A    mov        eax,ebx
 0052B78C    call       @LStrClr
 0052B791    pop        ebx
 0052B792    pop        ebp
 0052B793    ret
*}
//end;

//0052B794
//procedure sub_0052B794(?:?);
//begin
{*
 0052B794    push       ebp
 0052B795    mov        ebp,esp
 0052B797    push       ebx
 0052B798    mov        ebx,edx
 0052B79A    mov        eax,ebx
 0052B79C    call       @LStrClr
 0052B7A1    pop        ebx
 0052B7A2    pop        ebp
 0052B7A3    ret
*}
//end;

//0052B7A4
//procedure sub_0052B7A4(?:?);
//begin
{*
 0052B7A4    push       ebp
 0052B7A5    mov        ebp,esp
 0052B7A7    push       ebx
 0052B7A8    mov        ebx,edx
 0052B7AA    mov        eax,ebx
 0052B7AC    call       @LStrClr
 0052B7B1    pop        ebx
 0052B7B2    pop        ebp
 0052B7B3    ret
*}
//end;

//0052B7B4
//procedure sub_0052B7B4(?:?);
//begin
{*
 0052B7B4    push       ebp
 0052B7B5    mov        ebp,esp
 0052B7B7    push       ebx
 0052B7B8    mov        ebx,edx
 0052B7BA    mov        eax,ebx
 0052B7BC    call       @LStrClr
 0052B7C1    pop        ebx
 0052B7C2    pop        ebp
 0052B7C3    ret
*}
//end;

//0052B7C4
//procedure sub_0052B7C4(?:?);
//begin
{*
 0052B7C4    push       ebp
 0052B7C5    mov        ebp,esp
 0052B7C7    push       ebx
 0052B7C8    mov        ebx,edx
 0052B7CA    mov        eax,ebx
 0052B7CC    mov        edx,52B7E4; '\\'
 0052B7D1    call       @LStrAsg
 0052B7D6    pop        ebx
 0052B7D7    pop        ebp
 0052B7D8    ret
*}
//end;

//0052B7E8
//procedure sub_0052B7E8(?:?);
//begin
{*
 0052B7E8    push       ebp
 0052B7E9    mov        ebp,esp
 0052B7EB    push       ebx
 0052B7EC    mov        ebx,edx
 0052B7EE    mov        eax,ebx
 0052B7F0    mov        edx,52B808; '$'
 0052B7F5    call       @LStrAsg
 0052B7FA    pop        ebx
 0052B7FB    pop        ebp
 0052B7FC    ret
*}
//end;

//0052B80C
//function sub_0052B80C():?;
//begin
{*
 0052B80C    xor        eax,eax
 0052B80E    ret
*}
//end;

//0052B810
//function sub_0052B810():?;
//begin
{*
 0052B810    mov        al,1
 0052B812    ret
*}
//end;

//0052B814
//function sub_0052B814():?;
//begin
{*
 0052B814    mov        al,1
 0052B816    ret
*}
//end;

//0052B818
//function sub_0052B818():?;
//begin
{*
 0052B818    mov        al,1
 0052B81A    ret
*}
//end;

//0052B81C
//function sub_0052B81C():?;
//begin
{*
 0052B81C    mov        al,1
 0052B81E    ret
*}
//end;

//0052B820
//function sub_0052B820():?;
//begin
{*
 0052B820    xor        eax,eax
 0052B822    ret
*}
//end;

//0052B824
//procedure sub_0052B824(?:?);
//begin
{*
 0052B824    push       ebp
 0052B825    mov        ebp,esp
 0052B827    push       ebx
 0052B828    mov        ebx,edx
 0052B82A    mov        eax,ebx
 0052B82C    call       @LStrClr
 0052B831    pop        ebx
 0052B832    pop        ebp
 0052B833    ret
*}
//end;

//0052B834
//procedure sub_0052B834(?:?);
//begin
{*
 0052B834    push       ebp
 0052B835    mov        ebp,esp
 0052B837    push       ebx
 0052B838    mov        ebx,edx
 0052B83A    mov        eax,ebx
 0052B83C    mov        edx,52B854; 'PROCEDURE'
 0052B841    call       @LStrAsg
 0052B846    pop        ebx
 0052B847    pop        ebp
 0052B848    ret
*}
//end;

//0052B860
//procedure sub_0052B860(?:?);
//begin
{*
 0052B860    push       ebp
 0052B861    mov        ebp,esp
 0052B863    push       ebx
 0052B864    mov        ebx,edx
 0052B866    mov        eax,ebx
 0052B868    call       @LStrClr
 0052B86D    pop        ebx
 0052B86E    pop        ebp
 0052B86F    ret
*}
//end;

//0052B870
//procedure sub_0052B870(?:?);
//begin
{*
 0052B870    push       ebp
 0052B871    mov        ebp,esp
 0052B873    push       ebx
 0052B874    mov        ebx,edx
 0052B876    mov        eax,ebx
 0052B878    call       @LStrClr
 0052B87D    pop        ebx
 0052B87E    pop        ebp
 0052B87F    ret
*}
//end;

//0052B880
//function sub_0052B880():?;
//begin
{*
 0052B880    xor        eax,eax
 0052B882    ret
*}
//end;

//0052B884
//function sub_0052B884():?;
//begin
{*
 0052B884    xor        eax,eax
 0052B886    ret
*}
//end;

//0052B888
//function sub_0052B888():?;
//begin
{*
 0052B888    xor        eax,eax
 0052B88A    ret
*}
//end;

//0052B88C
//function sub_0052B88C():?;
//begin
{*
 0052B88C    xor        eax,eax
 0052B88E    ret
*}
//end;

//0052B890
//function sub_0052B890():?;
//begin
{*
 0052B890    xor        eax,eax
 0052B892    ret
*}
//end;

//0052B894
//function sub_0052B894():?;
//begin
{*
 0052B894    xor        eax,eax
 0052B896    ret
*}
//end;

//0052B898
//function sub_0052B898():?;
//begin
{*
 0052B898    xor        eax,eax
 0052B89A    ret
*}
//end;

//0052B89C
//function sub_0052B89C():?;
//begin
{*
 0052B89C    xor        eax,eax
 0052B89E    ret
*}
//end;

//0052B8A0
//function sub_0052B8A0():?;
//begin
{*
 0052B8A0    xor        eax,eax
 0052B8A2    ret
*}
//end;

//0052B8A4
//function sub_0052B8A4():?;
//begin
{*
 0052B8A4    xor        eax,eax
 0052B8A6    ret
*}
//end;

//0052B8A8
//function sub_0052B8A8():?;
//begin
{*
 0052B8A8    mov        al,1
 0052B8AA    ret
*}
//end;

//0052B8AC
//function sub_0052B8AC():?;
//begin
{*
 0052B8AC    mov        al,1
 0052B8AE    ret
*}
//end;

//0052B8B0
//function sub_0052B8B0():?;
//begin
{*
 0052B8B0    mov        al,1
 0052B8B2    ret
*}
//end;

//0052B8B4
//function sub_0052B8B4():?;
//begin
{*
 0052B8B4    mov        al,1
 0052B8B6    ret
*}
//end;

//0052B8B8
//function sub_0052B8B8():?;
//begin
{*
 0052B8B8    mov        al,1
 0052B8BA    ret
*}
//end;

//0052B8BC
//function sub_0052B8BC():?;
//begin
{*
 0052B8BC    mov        al,1
 0052B8BE    ret
*}
//end;

//0052B8C0
//function sub_0052B8C0():?;
//begin
{*
 0052B8C0    xor        eax,eax
 0052B8C2    ret
*}
//end;

//0052B8C4
//function sub_0052B8C4():?;
//begin
{*
 0052B8C4    mov        al,1
 0052B8C6    ret
*}
//end;

//0052B8C8
//function sub_0052B8C8():?;
//begin
{*
 0052B8C8    mov        al,1
 0052B8CA    ret
*}
//end;

//0052B8CC
//function sub_0052B8CC():?;
//begin
{*
 0052B8CC    mov        al,1
 0052B8CE    ret
*}
//end;

//0052B8D0
//function sub_0052B8D0():?;
//begin
{*
 0052B8D0    mov        al,1
 0052B8D2    ret
*}
//end;

//0052B8D4
//function sub_0052B8D4():?;
//begin
{*
 0052B8D4    xor        eax,eax
 0052B8D6    ret
*}
//end;

//0052B8D8
//function sub_0052B8D8():?;
//begin
{*
 0052B8D8    xor        eax,eax
 0052B8DA    ret
*}
//end;

//0052B8DC
//function sub_0052B8DC():?;
//begin
{*
 0052B8DC    mov        al,1
 0052B8DE    ret
*}
//end;

//0052B8E0
//function sub_0052B8E0():?;
//begin
{*
 0052B8E0    mov        al,1
 0052B8E2    ret
*}
//end;

//0052B8E4
//function sub_0052B8E4():?;
//begin
{*
 0052B8E4    xor        eax,eax
 0052B8E6    ret
*}
//end;

//0052B8E8
//function sub_0052B8E8():?;
//begin
{*
 0052B8E8    mov        eax,400
 0052B8ED    ret
*}
//end;

//0052B8F0
//function sub_0052B8F0():?;
//begin
{*
 0052B8F0    mov        eax,1F
 0052B8F5    ret
*}
//end;

//0052B8F8
//function sub_0052B8F8():?;
//begin
{*
 0052B8F8    mov        eax,10
 0052B8FD    ret
*}
//end;

//0052B900
//function sub_0052B900():?;
//begin
{*
 0052B900    mov        eax,10
 0052B905    ret
*}
//end;

//0052B908
//function sub_0052B908():?;
//begin
{*
 0052B908    mov        eax,10
 0052B90D    ret
*}
//end;

//0052B910
//function sub_0052B910():?;
//begin
{*
 0052B910    mov        eax,7FFF
 0052B915    ret
*}
//end;

//0052B918
//function sub_0052B918():?;
//begin
{*
 0052B918    mov        eax,7FFF
 0052B91D    ret
*}
//end;

//0052B920
//function sub_0052B920():?;
//begin
{*
 0052B920    xor        eax,eax
 0052B922    ret
*}
//end;

//0052B924
//function sub_0052B924():?;
//begin
{*
 0052B924    mov        eax,1F
 0052B929    ret
*}
//end;

//0052B92C
//function sub_0052B92C():?;
//begin
{*
 0052B92C    mov        eax,0C6
 0052B931    ret
*}
//end;

//0052B934
//function sub_0052B934():?;
//begin
{*
 0052B934    xor        eax,eax
 0052B936    ret
*}
//end;

//0052B938
//function sub_0052B938():?;
//begin
{*
 0052B938    xor        eax,eax
 0052B93A    ret
*}
//end;

//0052B93C
//function sub_0052B93C():?;
//begin
{*
 0052B93C    mov        eax,1B
 0052B941    ret
*}
//end;

//0052B944
//function sub_0052B944():?;
//begin
{*
 0052B944    mov        eax,7F98
 0052B949    ret
*}
//end;

//0052B94C
//function sub_0052B94C():?;
//begin
{*
 0052B94C    xor        eax,eax
 0052B94E    ret
*}
//end;

//0052B950
//function sub_0052B950():?;
//begin
{*
 0052B950    mov        eax,280
 0052B955    ret
*}
//end;

//0052B958
//function sub_0052B958():?;
//begin
{*
 0052B958    xor        eax,eax
 0052B95A    ret
*}
//end;

//0052B95C
//function sub_0052B95C():?;
//begin
{*
 0052B95C    mov        eax,1F
 0052B961    ret
*}
//end;

//0052B964
//function sub_0052B964():?;
//begin
{*
 0052B964    mov        eax,10
 0052B969    ret
*}
//end;

//0052B96C
//function sub_0052B96C():?;
//begin
{*
 0052B96C    mov        eax,1F
 0052B971    ret
*}
//end;

//0052B974
//function sub_0052B974():?;
//begin
{*
 0052B974    mov        al,4
 0052B976    ret
*}
//end;

//0052B978
//function sub_0052B978():?;
//begin
{*
 0052B978    mov        al,1
 0052B97A    ret
*}
//end;

//0052B97C
//function sub_0052B97C(?:?):?;
//begin
{*
 0052B97C    sub        dl,1
>0052B97F    jb         0052B98F
>0052B981    je         0052B98C
 0052B983    dec        edx
 0052B984    sub        dl,3
>0052B987    jae        0052B992
 0052B989    mov        al,1
 0052B98B    ret
 0052B98C    xor        eax,eax
 0052B98E    ret
 0052B98F    xor        eax,eax
 0052B991    ret
 0052B992    xor        eax,eax
 0052B994    ret
*}
//end;

//0052B998
//function sub_0052B998():?;
//begin
{*
 0052B998    mov        al,1
 0052B99A    ret
*}
//end;

//0052B99C
//function sub_0052B99C():?;
//begin
{*
 0052B99C    xor        eax,eax
 0052B99E    ret
*}
//end;

//0052B9A0
//function sub_0052B9A0():?;
//begin
{*
 0052B9A0    mov        al,1
 0052B9A2    ret
*}
//end;

//0052B9A4
//function sub_0052B9A4():?;
//begin
{*
 0052B9A4    xor        eax,eax
 0052B9A6    ret
*}
//end;

//0052B9A8
//procedure sub_0052B9A8(?:?; ?:?);
//begin
{*
 0052B9A8    push       ebp
 0052B9A9    mov        ebp,esp
 0052B9AB    push       0
 0052B9AD    push       0
 0052B9AF    push       0
 0052B9B1    push       0
 0052B9B3    push       0
 0052B9B5    push       0
 0052B9B7    push       0
 0052B9B9    push       ebx
 0052B9BA    push       esi
 0052B9BB    mov        esi,eax
 0052B9BD    mov        ebx,dword ptr [ebp+8]
 0052B9C0    xor        eax,eax
 0052B9C2    push       ebp
 0052B9C3    push       52BB7E
 0052B9C8    push       dword ptr fs:[eax]
 0052B9CB    mov        dword ptr fs:[eax],esp
 0052B9CE    mov        ecx,ebx
 0052B9D0    mov        edx,dword ptr ds:[61B134]; ^gvar_0061DD34:TZMetadataColumnDefs
 0052B9D6    mov        edx,dword ptr [edx]
 0052B9D8    mov        eax,esi
 0052B9DA    call       004D8E7C
 0052B9DF    lea        eax,[ebp-8]
 0052B9E2    push       eax
 0052B9E3    mov        ecx,52BB98; 'RDB$PROCEDURE_NAME'
 0052B9E8    mov        edx,dword ptr [ebp+0C]
 0052B9EB    mov        eax,esi
 0052B9ED    call       0053058C
 0052B9F2    lea        eax,[ebp-4]
 0052B9F5    mov        edx,52BBB4; 'SELECT RDB$PROCEDURE_NAME, RDB$PROCEDURE_OUTPUTS, RDB$DESCRIPTION FROM RDB$PROCEDURES'
 0052B9FA    call       @LStrLAsg
 0052B9FF    cmp        dword ptr [ebp-8],0
>0052BA03    je         0052BA1D
 0052BA05    push       dword ptr [ebp-4]
 0052BA08    push       52BC14; ' WHERE '
 0052BA0D    push       dword ptr [ebp-8]
 0052BA10    lea        eax,[ebp-4]
 0052BA13    mov        edx,3
 0052BA18    call       @LStrCatN
 0052BA1D    lea        edx,[ebp-14]
 0052BA20    mov        eax,esi
 0052BA22    mov        ecx,dword ptr [eax]
 0052BA24    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052BA2A    mov        eax,dword ptr [ebp-14]
 0052BA2D    lea        edx,[ebp-10]
 0052BA30    mov        ecx,dword ptr [eax]
 0052BA32    call       dword ptr [ecx+0C]
 0052BA35    mov        eax,dword ptr [ebp-10]
 0052BA38    lea        ecx,[ebp-0C]
 0052BA3B    mov        edx,dword ptr [ebp-4]
 0052BA3E    mov        esi,dword ptr [eax]
 0052BA40    call       dword ptr [esi+0C]
>0052BA43    jmp        0052BB26
 0052BA48    mov        eax,dword ptr [ebx]
 0052BA4A    mov        edx,dword ptr [eax]
 0052BA4C    call       dword ptr [edx+1E4]
 0052BA52    mov        eax,dword ptr [ebx]
 0052BA54    mov        edx,1
 0052BA59    mov        ecx,dword ptr [eax]
 0052BA5B    call       dword ptr [ecx+130]
 0052BA61    mov        eax,dword ptr [ebx]
 0052BA63    mov        edx,2
 0052BA68    mov        ecx,dword ptr [eax]
 0052BA6A    call       dword ptr [ecx+130]
 0052BA70    lea        ecx,[ebp-18]
 0052BA73    mov        edx,1
 0052BA78    mov        eax,dword ptr [ebp-0C]
 0052BA7B    mov        esi,dword ptr [eax]
 0052BA7D    call       dword ptr [esi+20]
 0052BA80    mov        ecx,dword ptr [ebp-18]
 0052BA83    mov        eax,dword ptr [ebx]
 0052BA85    mov        edx,3
 0052BA8A    mov        esi,dword ptr [eax]
 0052BA8C    call       dword ptr [esi+158]
 0052BA92    mov        eax,dword ptr [ebx]
 0052BA94    mov        edx,4
 0052BA99    mov        ecx,dword ptr [eax]
 0052BA9B    call       dword ptr [ecx+130]
 0052BAA1    mov        eax,dword ptr [ebx]
 0052BAA3    mov        edx,5
 0052BAA8    mov        ecx,dword ptr [eax]
 0052BAAA    call       dword ptr [ecx+130]
 0052BAB0    mov        eax,dword ptr [ebx]
 0052BAB2    mov        edx,6
 0052BAB7    mov        ecx,dword ptr [eax]
 0052BAB9    call       dword ptr [ecx+130]
 0052BABF    lea        ecx,[ebp-1C]
 0052BAC2    mov        edx,3
 0052BAC7    mov        eax,dword ptr [ebp-0C]
 0052BACA    mov        esi,dword ptr [eax]
 0052BACC    call       dword ptr [esi+20]
 0052BACF    mov        ecx,dword ptr [ebp-1C]
 0052BAD2    mov        eax,dword ptr [ebx]
 0052BAD4    mov        edx,7
 0052BAD9    mov        esi,dword ptr [eax]
 0052BADB    call       dword ptr [esi+158]
 0052BAE1    mov        edx,2
 0052BAE6    mov        eax,dword ptr [ebp-0C]
 0052BAE9    mov        ecx,dword ptr [eax]
 0052BAEB    call       dword ptr [ecx+18]
 0052BAEE    test       al,al
>0052BAF0    je         0052BB08
 0052BAF2    mov        eax,dword ptr [ebx]
 0052BAF4    mov        ecx,1
 0052BAF9    mov        edx,8
 0052BAFE    mov        esi,dword ptr [eax]
 0052BB00    call       dword ptr [esi+140]
>0052BB06    jmp        0052BB1C
 0052BB08    mov        eax,dword ptr [ebx]
 0052BB0A    mov        ecx,2
 0052BB0F    mov        edx,8
 0052BB14    mov        esi,dword ptr [eax]
 0052BB16    call       dword ptr [esi+140]
 0052BB1C    mov        eax,dword ptr [ebx]
 0052BB1E    mov        edx,dword ptr [eax]
 0052BB20    call       dword ptr [edx+1D0]
 0052BB26    mov        eax,dword ptr [ebp-0C]
 0052BB29    mov        edx,dword ptr [eax]
 0052BB2B    call       dword ptr [edx+0C]
 0052BB2E    test       al,al
<0052BB30    jne        0052BA48
 0052BB36    mov        eax,dword ptr [ebp-0C]
 0052BB39    mov        edx,dword ptr [eax]
 0052BB3B    call       dword ptr [edx+10]
 0052BB3E    xor        eax,eax
 0052BB40    pop        edx
 0052BB41    pop        ecx
 0052BB42    pop        ecx
 0052BB43    mov        dword ptr fs:[eax],edx
 0052BB46    push       52BB85
 0052BB4B    lea        eax,[ebp-1C]
 0052BB4E    mov        edx,2
 0052BB53    call       @LStrArrayClr
 0052BB58    lea        eax,[ebp-14]
 0052BB5B    call       @IntfClear
 0052BB60    lea        eax,[ebp-10]
 0052BB63    call       @IntfClear
 0052BB68    lea        eax,[ebp-0C]
 0052BB6B    call       @IntfClear
 0052BB70    lea        eax,[ebp-8]
 0052BB73    mov        edx,2
 0052BB78    call       @LStrArrayClr
 0052BB7D    ret
<0052BB7E    jmp        @HandleFinally
<0052BB83    jmp        0052BB4B
 0052BB85    pop        esi
 0052BB86    pop        ebx
 0052BB87    mov        esp,ebp
 0052BB89    pop        ebp
 0052BB8A    ret        8
*}
//end;

//0052BC1C
//procedure sub_0052BC1C(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052BC1C    push       ebp
 0052BC1D    mov        ebp,esp
 0052BC1F    push       ecx
 0052BC20    mov        ecx,0B
 0052BC25    push       0
 0052BC27    push       0
 0052BC29    dec        ecx
<0052BC2A    jne        0052BC25
 0052BC2C    push       ecx
 0052BC2D    xchg       ecx,dword ptr [ebp-4]
 0052BC30    push       ebx
 0052BC31    push       esi
 0052BC32    push       edi
 0052BC33    mov        dword ptr [ebp-4],eax
 0052BC36    mov        ebx,dword ptr [ebp+8]
 0052BC39    lea        esi,[ebp-40]
 0052BC3C    xor        eax,eax
 0052BC3E    push       ebp
 0052BC3F    push       52C09B
 0052BC44    push       dword ptr fs:[eax]
 0052BC47    mov        dword ptr fs:[eax],esp
 0052BC4A    mov        ecx,ebx
 0052BC4C    mov        edx,dword ptr ds:[61B56C]; ^gvar_0061DD38:TZMetadataColumnDefs
 0052BC52    mov        edx,dword ptr [edx]
 0052BC54    mov        eax,dword ptr [ebp-4]
 0052BC57    call       004D8E7C
 0052BC5C    lea        eax,[ebp-10]
 0052BC5F    push       eax
 0052BC60    mov        ecx,52C0B4; 'P.RDB$PROCEDURE_NAME'
 0052BC65    mov        edx,dword ptr [ebp+10]
 0052BC68    mov        eax,dword ptr [ebp-4]
 0052BC6B    call       0053058C
 0052BC70    lea        eax,[ebp-14]
 0052BC73    push       eax
 0052BC74    mov        ecx,52C0D4; 'PP.RDB$PARAMETER_NAME'
 0052BC79    mov        edx,dword ptr [ebp+0C]
 0052BC7C    mov        eax,dword ptr [ebp-4]
 0052BC7F    call       0053058C
 0052BC84    lea        edx,[ebp-44]
 0052BC87    mov        eax,dword ptr [ebp-4]
 0052BC8A    call       005309F4
 0052BC8F    mov        eax,dword ptr [ebp-44]
 0052BC92    call       @LStrToPChar
 0052BC97    mov        edx,52C0EC; 'Interbase 5'
 0052BC9C    call       StrPos
 0052BCA1    test       eax,eax
>0052BCA3    jne        0052BCC6
 0052BCA5    lea        edx,[ebp-48]
 0052BCA8    mov        eax,dword ptr [ebp-4]
 0052BCAB    call       005309F4
 0052BCB0    mov        eax,dword ptr [ebp-48]
 0052BCB3    call       @LStrToPChar
 0052BCB8    mov        edx,52C0F8; 'V5.'
 0052BCBD    call       StrPos
 0052BCC2    test       eax,eax
>0052BCC4    je         0052BD44
 0052BCC6    lea        eax,[ebp-8]
 0052BCC9    mov        edx,52C104; ' SELECT P.RDB$PROCEDURE_NAME, PP.RDB$PARAMETER_NAME, PP.RDB$PARAMETER_TYPE, F.RDB$FIELD_TYPE, F.RDB$FIELD_SUB_TYPE, F.RDB$FIELD_SCALE, F.RDB$FIELD_LENGTH, F.RDB$NULL_FLAG, PP.RDB$DESCRIPTION, F.RDB$FIELD_SCALE as RDB$FIELD_PRECISION, F.RDB$NULL_FLAG FROM RDB$PROCEDURES P JOIN RDB$PROCEDURE_PARAMETERS PP ON P.RDB$PROCEDURE_NAME=PP.RDB$PROCEDURE_NAME JOIN RDB$FIELDS F ON PP.RDB$FIELD_SOURCE=F.RDB$FIELD_NAME '
 0052BCCE    call       @LStrLAsg
 0052BCD3    lea        eax,[ebp-0C]
 0052BCD6    mov        edx,dword ptr [ebp-10]
 0052BCD9    call       @LStrLAsg
 0052BCDE    cmp        dword ptr [ebp-14],0
>0052BCE2    je         0052BD0F
 0052BCE4    cmp        dword ptr [ebp-0C],0
>0052BCE8    jne        0052BCF7
 0052BCEA    lea        eax,[ebp-0C]
 0052BCED    mov        edx,dword ptr [ebp-14]
 0052BCF0    call       @LStrLAsg
>0052BCF5    jmp        0052BD0F
 0052BCF7    push       dword ptr [ebp-0C]
 0052BCFA    push       52C2A8; ' AND '
 0052BCFF    push       dword ptr [ebp-14]
 0052BD02    lea        eax,[ebp-0C]
 0052BD05    mov        edx,3
 0052BD0A    call       @LStrCatN
 0052BD0F    cmp        dword ptr [ebp-0C],0
>0052BD13    je         0052BD25
 0052BD15    lea        eax,[ebp-0C]
 0052BD18    mov        ecx,dword ptr [ebp-0C]
 0052BD1B    mov        edx,52C2B8; ' WHERE '
 0052BD20    call       @LStrCat3
 0052BD25    push       dword ptr [ebp-8]
 0052BD28    push       dword ptr [ebp-0C]
 0052BD2B    push       52C2C8; ' ORDER BY  P.RDB$PROCEDURE_NAME,'
 0052BD30    push       52C2F4; ' PP.RDB$PARAMETER_TYPE desc, PP.RDB$PARAMETER_NUMBER'
 0052BD35    lea        eax,[ebp-8]
 0052BD38    mov        edx,4
 0052BD3D    call       @LStrCatN
>0052BD42    jmp        0052BDC0
 0052BD44    lea        eax,[ebp-8]
 0052BD47    mov        edx,52C334; ' SELECT P.RDB$PROCEDURE_NAME, PP.RDB$PARAMETER_NAME, PP.RDB$PARAMETER_TYPE, F.RDB$FIELD_TYPE, F.RDB$FIELD_SUB_TYPE, F.RDB$FIELD_SCALE, F.RDB$FIELD_LENGTH, F.RDB$NULL_FLAG, PP.RDB$DESCRIPTION, F.RDB$FIELD_PRECISION, F.RDB$NULL_FLAG  FROM RDB$PROCEDURES P JOIN RDB$PROCEDURE_PARAMETERS PP ON P.RDB$PROCEDURE_NAME = PP.RDB$PROCEDURE_NAME  JOIN RDB$FIELDS F ON PP.RDB$FIELD_SOURCE = F.RDB$FIELD_NAME '
 0052BD4C    call       @LStrLAsg
 0052BD51    lea        eax,[ebp-0C]
 0052BD54    mov        edx,dword ptr [ebp-10]
 0052BD57    call       @LStrLAsg
 0052BD5C    cmp        dword ptr [ebp-14],0
>0052BD60    je         0052BD8D
 0052BD62    cmp        dword ptr [ebp-0C],0
>0052BD66    jne        0052BD75
 0052BD68    lea        eax,[ebp-0C]
 0052BD6B    mov        edx,dword ptr [ebp-14]
 0052BD6E    call       @LStrLAsg
>0052BD73    jmp        0052BD8D
 0052BD75    push       dword ptr [ebp-0C]
 0052BD78    push       52C2A8; ' AND '
 0052BD7D    push       dword ptr [ebp-14]
 0052BD80    lea        eax,[ebp-0C]
 0052BD83    mov        edx,3
 0052BD88    call       @LStrCatN
 0052BD8D    cmp        dword ptr [ebp-0C],0
>0052BD91    je         0052BDA3
 0052BD93    lea        eax,[ebp-0C]
 0052BD96    mov        ecx,dword ptr [ebp-0C]
 0052BD99    mov        edx,52C2B8; ' WHERE '
 0052BD9E    call       @LStrCat3
 0052BDA3    push       dword ptr [ebp-8]
 0052BDA6    push       dword ptr [ebp-0C]
 0052BDA9    push       52C2C8; ' ORDER BY  P.RDB$PROCEDURE_NAME,'
 0052BDAE    push       52C2F4; ' PP.RDB$PARAMETER_TYPE desc, PP.RDB$PARAMETER_NUMBER'
 0052BDB3    lea        eax,[ebp-8]
 0052BDB6    mov        edx,4
 0052BDBB    call       @LStrCatN
 0052BDC0    lea        edx,[ebp-50]
 0052BDC3    mov        eax,dword ptr [ebp-4]
 0052BDC6    mov        ecx,dword ptr [eax]
 0052BDC8    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052BDCE    mov        eax,dword ptr [ebp-50]
 0052BDD1    lea        edx,[ebp-4C]
 0052BDD4    mov        ecx,dword ptr [eax]
 0052BDD6    call       dword ptr [ecx+0C]
 0052BDD9    mov        eax,dword ptr [ebp-4C]
 0052BDDC    lea        ecx,[ebp-20]
 0052BDDF    mov        edx,dword ptr [ebp-8]
 0052BDE2    mov        edi,dword ptr [eax]
 0052BDE4    call       dword ptr [edi+0C]
 0052BDE7    mov        edx,52C4CC; 'RDB$PROCEDURE_NAME'
 0052BDEC    mov        eax,dword ptr [ebp-20]
 0052BDEF    mov        ecx,dword ptr [eax]
 0052BDF1    call       dword ptr [ecx+0D0]
 0052BDF7    mov        dword ptr [esi],eax
 0052BDF9    mov        edx,52C4E8; 'RDB$PARAMETER_NAME'
 0052BDFE    mov        eax,dword ptr [ebp-20]
 0052BE01    mov        ecx,dword ptr [eax]
 0052BE03    call       dword ptr [ecx+0D0]
 0052BE09    mov        dword ptr [esi+4],eax
 0052BE0C    mov        edx,52C504; 'RDB$PARAMETER_TYPE'
 0052BE11    mov        eax,dword ptr [ebp-20]
 0052BE14    mov        ecx,dword ptr [eax]
 0052BE16    call       dword ptr [ecx+0D0]
 0052BE1C    mov        dword ptr [esi+8],eax
 0052BE1F    mov        edx,52C520; 'RDB$FIELD_TYPE'
 0052BE24    mov        eax,dword ptr [ebp-20]
 0052BE27    mov        ecx,dword ptr [eax]
 0052BE29    call       dword ptr [ecx+0D0]
 0052BE2F    mov        dword ptr [esi+0C],eax
 0052BE32    mov        edx,52C538; 'RDB$FIELD_SUB_TYPE'
 0052BE37    mov        eax,dword ptr [ebp-20]
 0052BE3A    mov        ecx,dword ptr [eax]
 0052BE3C    call       dword ptr [ecx+0D0]
 0052BE42    mov        dword ptr [esi+10],eax
 0052BE45    mov        edx,52C554; 'RDB$FIELD_PRECISION'
 0052BE4A    mov        eax,dword ptr [ebp-20]
 0052BE4D    mov        ecx,dword ptr [eax]
 0052BE4F    call       dword ptr [ecx+0D0]
 0052BE55    mov        dword ptr [esi+14],eax
 0052BE58    mov        edx,52C570; 'RDB$FIELD_SCALE'
 0052BE5D    mov        eax,dword ptr [ebp-20]
 0052BE60    mov        ecx,dword ptr [eax]
 0052BE62    call       dword ptr [ecx+0D0]
 0052BE68    mov        dword ptr [esi+18],eax
 0052BE6B    mov        edx,52C588; 'RDB$NULL_FLAG'
 0052BE70    mov        eax,dword ptr [ebp-20]
 0052BE73    mov        ecx,dword ptr [eax]
 0052BE75    call       dword ptr [ecx+0D0]
 0052BE7B    mov        dword ptr [esi+1C],eax
>0052BE7E    jmp        0052C036
 0052BE83    mov        edx,dword ptr [esi+0C]
 0052BE86    mov        eax,dword ptr [ebp-20]
 0052BE89    mov        ecx,dword ptr [eax]
 0052BE8B    call       dword ptr [ecx+34]
 0052BE8E    mov        dword ptr [ebp-18],eax
 0052BE91    mov        edx,dword ptr [esi+10]
 0052BE94    mov        eax,dword ptr [ebp-20]
 0052BE97    mov        ecx,dword ptr [eax]
 0052BE99    call       dword ptr [ecx+34]
 0052BE9C    mov        dword ptr [ebp-1C],eax
 0052BE9F    mov        eax,dword ptr [ebx]
 0052BEA1    mov        edx,dword ptr [eax]
 0052BEA3    call       dword ptr [edx+1E4]
 0052BEA9    mov        eax,dword ptr [ebx]
 0052BEAB    mov        edx,1
 0052BEB0    mov        ecx,dword ptr [eax]
 0052BEB2    call       dword ptr [ecx+130]
 0052BEB8    mov        eax,dword ptr [ebx]
 0052BEBA    mov        edx,2
 0052BEBF    mov        ecx,dword ptr [eax]
 0052BEC1    call       dword ptr [ecx+130]
 0052BEC7    lea        ecx,[ebp-54]
 0052BECA    mov        edx,dword ptr [esi]
 0052BECC    mov        eax,dword ptr [ebp-20]
 0052BECF    mov        edi,dword ptr [eax]
 0052BED1    call       dword ptr [edi+20]
 0052BED4    mov        ecx,dword ptr [ebp-54]
 0052BED7    mov        eax,dword ptr [ebx]
 0052BED9    mov        edx,3
 0052BEDE    mov        edi,dword ptr [eax]
 0052BEE0    call       dword ptr [edi+158]
 0052BEE6    lea        ecx,[ebp-58]
 0052BEE9    mov        edx,dword ptr [esi+4]
 0052BEEC    mov        eax,dword ptr [ebp-20]
 0052BEEF    mov        edi,dword ptr [eax]
 0052BEF1    call       dword ptr [edi+20]
 0052BEF4    mov        ecx,dword ptr [ebp-58]
 0052BEF7    mov        eax,dword ptr [ebx]
 0052BEF9    mov        edx,4
 0052BEFE    mov        edi,dword ptr [eax]
 0052BF00    call       dword ptr [edi+158]
 0052BF06    mov        edx,dword ptr [esi+8]
 0052BF09    mov        eax,dword ptr [ebp-20]
 0052BF0C    mov        ecx,dword ptr [eax]
 0052BF0E    call       dword ptr [ecx+34]
 0052BF11    sub        eax,1
>0052BF14    jb         0052BF1A
>0052BF16    je         0052BF30
>0052BF18    jmp        0052BF46
 0052BF1A    mov        eax,dword ptr [ebx]
 0052BF1C    mov        ecx,1
 0052BF21    mov        edx,5
 0052BF26    mov        edi,dword ptr [eax]
 0052BF28    call       dword ptr [edi+140]
>0052BF2E    jmp        0052BF57
 0052BF30    mov        eax,dword ptr [ebx]
 0052BF32    mov        ecx,4
 0052BF37    mov        edx,5
 0052BF3C    mov        edi,dword ptr [eax]
 0052BF3E    call       dword ptr [edi+140]
>0052BF44    jmp        0052BF57
 0052BF46    mov        eax,dword ptr [ebx]
 0052BF48    xor        ecx,ecx
 0052BF4A    mov        edx,5
 0052BF4F    mov        edi,dword ptr [eax]
 0052BF51    call       dword ptr [edi+140]
 0052BF57    mov        edx,dword ptr [ebp-1C]
 0052BF5A    mov        eax,dword ptr [ebp-18]
 0052BF5D    call       00532A60
 0052BF62    xor        ecx,ecx
 0052BF64    mov        cl,al
 0052BF66    mov        eax,dword ptr [ebx]
 0052BF68    mov        edx,6
 0052BF6D    mov        edi,dword ptr [eax]
 0052BF6F    call       dword ptr [edi+140]
 0052BF75    lea        ecx,[ebp-5C]
 0052BF78    mov        edx,dword ptr [esi+0C]
 0052BF7B    mov        eax,dword ptr [ebp-20]
 0052BF7E    mov        edi,dword ptr [eax]
 0052BF80    call       dword ptr [edi+20]
 0052BF83    mov        ecx,dword ptr [ebp-5C]
 0052BF86    mov        eax,dword ptr [ebx]
 0052BF88    mov        edx,7
 0052BF8D    mov        edi,dword ptr [eax]
 0052BF8F    call       dword ptr [edi+158]
 0052BF95    mov        edx,dword ptr [esi+14]
 0052BF98    mov        eax,dword ptr [ebp-20]
 0052BF9B    mov        ecx,dword ptr [eax]
 0052BF9D    call       dword ptr [ecx+34]
 0052BFA0    mov        ecx,eax
 0052BFA2    mov        eax,dword ptr [ebx]
 0052BFA4    mov        edx,0A
 0052BFA9    mov        edi,dword ptr [eax]
 0052BFAB    call       dword ptr [edi+140]
 0052BFB1    mov        eax,dword ptr [ebx]
 0052BFB3    mov        edx,9
 0052BFB8    mov        ecx,dword ptr [eax]
 0052BFBA    call       dword ptr [ecx+130]
 0052BFC0    mov        edx,dword ptr [esi+18]
 0052BFC3    mov        eax,dword ptr [ebp-20]
 0052BFC6    mov        ecx,dword ptr [eax]
 0052BFC8    call       dword ptr [ecx+34]
 0052BFCB    mov        ecx,eax
 0052BFCD    mov        eax,dword ptr [ebx]
 0052BFCF    mov        edx,0A
 0052BFD4    mov        edi,dword ptr [eax]
 0052BFD6    call       dword ptr [edi+140]
 0052BFDC    mov        eax,dword ptr [ebx]
 0052BFDE    mov        ecx,0A
 0052BFE3    mov        edx,0B
 0052BFE8    mov        edi,dword ptr [eax]
 0052BFEA    call       dword ptr [edi+140]
 0052BFF0    mov        edx,dword ptr [esi+1C]
 0052BFF3    mov        eax,dword ptr [ebp-20]
 0052BFF6    mov        ecx,dword ptr [eax]
 0052BFF8    call       dword ptr [ecx+34]
 0052BFFB    mov        ecx,eax
 0052BFFD    mov        eax,dword ptr [ebx]
 0052BFFF    mov        edx,0C
 0052C004    mov        edi,dword ptr [eax]
 0052C006    call       dword ptr [edi+140]
 0052C00C    lea        ecx,[ebp-60]
 0052C00F    mov        edx,dword ptr [esi+14]
 0052C012    mov        eax,dword ptr [ebp-20]
 0052C015    mov        edi,dword ptr [eax]
 0052C017    call       dword ptr [edi+20]
 0052C01A    mov        ecx,dword ptr [ebp-60]
 0052C01D    mov        eax,dword ptr [ebx]
 0052C01F    mov        edx,0C
 0052C024    mov        edi,dword ptr [eax]
 0052C026    call       dword ptr [edi+158]
 0052C02C    mov        eax,dword ptr [ebx]
 0052C02E    mov        edx,dword ptr [eax]
 0052C030    call       dword ptr [edx+1D0]
 0052C036    mov        eax,dword ptr [ebp-20]
 0052C039    mov        edx,dword ptr [eax]
 0052C03B    call       dword ptr [edx+0C]
 0052C03E    test       al,al
<0052C040    jne        0052BE83
 0052C046    mov        eax,dword ptr [ebp-20]
 0052C049    mov        edx,dword ptr [eax]
 0052C04B    call       dword ptr [edx+10]
 0052C04E    xor        eax,eax
 0052C050    pop        edx
 0052C051    pop        ecx
 0052C052    pop        ecx
 0052C053    mov        dword ptr fs:[eax],edx
 0052C056    push       52C0A2
 0052C05B    lea        eax,[ebp-60]
 0052C05E    mov        edx,4
 0052C063    call       @LStrArrayClr
 0052C068    lea        eax,[ebp-50]
 0052C06B    call       @IntfClear
 0052C070    lea        eax,[ebp-4C]
 0052C073    call       @IntfClear
 0052C078    lea        eax,[ebp-48]
 0052C07B    mov        edx,2
 0052C080    call       @LStrArrayClr
 0052C085    lea        eax,[ebp-20]
 0052C088    call       @IntfClear
 0052C08D    lea        eax,[ebp-14]
 0052C090    mov        edx,4
 0052C095    call       @LStrArrayClr
 0052C09A    ret
<0052C09B    jmp        @HandleFinally
<0052C0A0    jmp        0052C05B
 0052C0A2    pop        edi
 0052C0A3    pop        esi
 0052C0A4    pop        ebx
 0052C0A5    mov        esp,ebp
 0052C0A7    pop        ebp
 0052C0A8    ret        0C
*}
//end;

//0052C598
//procedure sub_0052C598(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052C598    push       ebp
 0052C599    mov        ebp,esp
 0052C59B    push       ecx
 0052C59C    mov        ecx,6
 0052C5A1    push       0
 0052C5A3    push       0
 0052C5A5    dec        ecx
<0052C5A6    jne        0052C5A1
 0052C5A8    xchg       ecx,dword ptr [ebp-4]
 0052C5AB    push       ebx
 0052C5AC    push       esi
 0052C5AD    push       edi
 0052C5AE    mov        esi,eax
 0052C5B0    mov        ebx,dword ptr [ebp+8]
 0052C5B3    xor        eax,eax
 0052C5B5    push       ebp
 0052C5B6    push       52C87A
 0052C5BB    push       dword ptr fs:[eax]
 0052C5BE    mov        dword ptr fs:[eax],esp
 0052C5C1    mov        ecx,ebx
 0052C5C3    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 0052C5C9    mov        edx,dword ptr [edx]
 0052C5CB    mov        eax,esi
 0052C5CD    call       004D8E7C
 0052C5D2    lea        eax,[ebp-0C]
 0052C5D5    push       eax
 0052C5D6    mov        ecx,52C894; 'a.RDB$RELATION_NAME'
 0052C5DB    mov        edx,dword ptr [ebp+10]
 0052C5DE    mov        eax,esi
 0052C5E0    call       0053058C
 0052C5E5    lea        eax,[ebp-4]
 0052C5E8    mov        edx,52C8B0; 'SELECT DISTINCT a.RDB$RELATION_NAME, a.RDB$SYSTEM_FLAG,  a.RDB$VIEW_SOURCE, a.RDB$DESCRIPTION FROM RDB$RELATIONS a'
 0052C5ED    call       @LStrLAsg
 0052C5F2    cmp        dword ptr [ebp-0C],0
>0052C5F6    je         0052C610
 0052C5F8    push       dword ptr [ebp-4]
 0052C5FB    push       52C92C; ' WHERE '
 0052C600    push       dword ptr [ebp-0C]
 0052C603    lea        eax,[ebp-4]
 0052C606    mov        edx,3
 0052C60B    call       @LStrCatN
 0052C610    lea        edx,[ebp-1C]
 0052C613    mov        eax,esi
 0052C615    mov        ecx,dword ptr [eax]
 0052C617    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052C61D    mov        eax,dword ptr [ebp-1C]
 0052C620    lea        edx,[ebp-18]
 0052C623    mov        ecx,dword ptr [eax]
 0052C625    call       dword ptr [ecx+0C]
 0052C628    mov        eax,dword ptr [ebp-18]
 0052C62B    lea        ecx,[ebp-14]
 0052C62E    mov        edx,dword ptr [ebp-4]
 0052C631    mov        esi,dword ptr [eax]
 0052C633    call       dword ptr [esi+0C]
>0052C636    jmp        0052C822
 0052C63B    mov        edx,2
 0052C640    mov        eax,dword ptr [ebp-14]
 0052C643    mov        ecx,dword ptr [eax]
 0052C645    call       dword ptr [ecx+34]
 0052C648    test       eax,eax
>0052C64A    jne        0052C67B
 0052C64C    mov        edx,3
 0052C651    mov        eax,dword ptr [ebp-14]
 0052C654    mov        ecx,dword ptr [eax]
 0052C656    call       dword ptr [ecx+18]
 0052C659    test       al,al
>0052C65B    je         0052C66C
 0052C65D    lea        eax,[ebp-8]
 0052C660    mov        edx,52C93C; 'TABLE'
 0052C665    call       @LStrLAsg
>0052C66A    jmp        0052C688
 0052C66C    lea        eax,[ebp-8]
 0052C66F    mov        edx,52C94C; 'VIEW'
 0052C674    call       @LStrLAsg
>0052C679    jmp        0052C688
 0052C67B    lea        eax,[ebp-8]
 0052C67E    mov        edx,52C95C; 'SYSTEM TABLE'
 0052C683    call       @LStrLAsg
 0052C688    mov        eax,dword ptr [ebp+0C]
 0052C68B    call       @DynArrayLength
 0052C690    test       eax,eax
>0052C692    jne        0052C73B
 0052C698    mov        eax,dword ptr [ebx]
 0052C69A    mov        edx,dword ptr [eax]
 0052C69C    call       dword ptr [edx+1E4]
 0052C6A2    mov        eax,dword ptr [ebx]
 0052C6A4    mov        edx,1
 0052C6A9    mov        ecx,dword ptr [eax]
 0052C6AB    call       dword ptr [ecx+130]
 0052C6B1    mov        eax,dword ptr [ebx]
 0052C6B3    mov        edx,2
 0052C6B8    mov        ecx,dword ptr [eax]
 0052C6BA    call       dword ptr [ecx+130]
 0052C6C0    lea        ecx,[ebp-20]
 0052C6C3    mov        edx,1
 0052C6C8    mov        eax,dword ptr [ebp-14]
 0052C6CB    mov        esi,dword ptr [eax]
 0052C6CD    call       dword ptr [esi+20]
 0052C6D0    mov        ecx,dword ptr [ebp-20]
 0052C6D3    mov        eax,dword ptr [ebx]
 0052C6D5    mov        edx,3
 0052C6DA    mov        esi,dword ptr [eax]
 0052C6DC    call       dword ptr [esi+158]
 0052C6E2    mov        eax,dword ptr [ebx]
 0052C6E4    mov        ecx,dword ptr [ebp-8]
 0052C6E7    mov        edx,4
 0052C6EC    mov        esi,dword ptr [eax]
 0052C6EE    call       dword ptr [esi+158]
 0052C6F4    lea        eax,[ebp-24]
 0052C6F7    push       eax
 0052C6F8    lea        ecx,[ebp-28]
 0052C6FB    mov        edx,4
 0052C700    mov        eax,dword ptr [ebp-14]
 0052C703    mov        esi,dword ptr [eax]
 0052C705    call       dword ptr [esi+20]
 0052C708    mov        eax,dword ptr [ebp-28]
 0052C70B    mov        ecx,0FF
 0052C710    mov        edx,1
 0052C715    call       @LStrCopy
 0052C71A    mov        ecx,dword ptr [ebp-24]
 0052C71D    mov        eax,dword ptr [ebx]
 0052C71F    mov        edx,5
 0052C724    mov        esi,dword ptr [eax]
 0052C726    call       dword ptr [esi+158]
 0052C72C    mov        eax,dword ptr [ebx]
 0052C72E    mov        edx,dword ptr [eax]
 0052C730    call       dword ptr [edx+1D0]
>0052C736    jmp        0052C822
 0052C73B    mov        eax,dword ptr [ebp+0C]
 0052C73E    call       @DynArrayHigh
 0052C743    mov        esi,eax
 0052C745    test       esi,esi
>0052C747    jl         0052C822
 0052C74D    inc        esi
 0052C74E    mov        dword ptr [ebp-10],0
 0052C755    mov        eax,dword ptr [ebp-10]
 0052C758    mov        edx,dword ptr [ebp+0C]
 0052C75B    test       edx,edx
>0052C75D    je         0052C764
 0052C75F    cmp        eax,dword ptr [edx-4]
>0052C762    jb         0052C769
 0052C764    call       @BoundErr
 0052C769    mov        eax,dword ptr [edx+eax*4]
 0052C76C    mov        edx,dword ptr [ebp-8]
 0052C76F    call       @LStrCmp
>0052C774    jne        0052C818
 0052C77A    mov        eax,dword ptr [ebx]
 0052C77C    mov        edx,dword ptr [eax]
 0052C77E    call       dword ptr [edx+1E4]
 0052C784    mov        eax,dword ptr [ebx]
 0052C786    mov        edx,1
 0052C78B    mov        ecx,dword ptr [eax]
 0052C78D    call       dword ptr [ecx+130]
 0052C793    mov        eax,dword ptr [ebx]
 0052C795    mov        edx,2
 0052C79A    mov        ecx,dword ptr [eax]
 0052C79C    call       dword ptr [ecx+130]
 0052C7A2    lea        ecx,[ebp-2C]
 0052C7A5    mov        edx,1
 0052C7AA    mov        eax,dword ptr [ebp-14]
 0052C7AD    mov        edi,dword ptr [eax]
 0052C7AF    call       dword ptr [edi+20]
 0052C7B2    mov        ecx,dword ptr [ebp-2C]
 0052C7B5    mov        eax,dword ptr [ebx]
 0052C7B7    mov        edx,3
 0052C7BC    mov        edi,dword ptr [eax]
 0052C7BE    call       dword ptr [edi+158]
 0052C7C4    mov        eax,dword ptr [ebx]
 0052C7C6    mov        ecx,dword ptr [ebp-8]
 0052C7C9    mov        edx,4
 0052C7CE    mov        edi,dword ptr [eax]
 0052C7D0    call       dword ptr [edi+158]
 0052C7D6    lea        eax,[ebp-30]
 0052C7D9    push       eax
 0052C7DA    lea        ecx,[ebp-34]
 0052C7DD    mov        edx,4
 0052C7E2    mov        eax,dword ptr [ebp-14]
 0052C7E5    mov        edi,dword ptr [eax]
 0052C7E7    call       dword ptr [edi+20]
 0052C7EA    mov        eax,dword ptr [ebp-34]
 0052C7ED    mov        ecx,0FF
 0052C7F2    mov        edx,1
 0052C7F7    call       @LStrCopy
 0052C7FC    mov        ecx,dword ptr [ebp-30]
 0052C7FF    mov        eax,dword ptr [ebx]
 0052C801    mov        edx,5
 0052C806    mov        edi,dword ptr [eax]
 0052C808    call       dword ptr [edi+158]
 0052C80E    mov        eax,dword ptr [ebx]
 0052C810    mov        edx,dword ptr [eax]
 0052C812    call       dword ptr [edx+1D0]
 0052C818    inc        dword ptr [ebp-10]
 0052C81B    dec        esi
<0052C81C    jne        0052C755
 0052C822    mov        eax,dword ptr [ebp-14]
 0052C825    mov        edx,dword ptr [eax]
 0052C827    call       dword ptr [edx+0C]
 0052C82A    test       al,al
<0052C82C    jne        0052C63B
 0052C832    mov        eax,dword ptr [ebp-14]
 0052C835    mov        edx,dword ptr [eax]
 0052C837    call       dword ptr [edx+10]
 0052C83A    xor        eax,eax
 0052C83C    pop        edx
 0052C83D    pop        ecx
 0052C83E    pop        ecx
 0052C83F    mov        dword ptr fs:[eax],edx
 0052C842    push       52C881
 0052C847    lea        eax,[ebp-34]
 0052C84A    mov        edx,6
 0052C84F    call       @LStrArrayClr
 0052C854    lea        eax,[ebp-1C]
 0052C857    call       @IntfClear
 0052C85C    lea        eax,[ebp-18]
 0052C85F    call       @IntfClear
 0052C864    lea        eax,[ebp-14]
 0052C867    call       @IntfClear
 0052C86C    lea        eax,[ebp-0C]
 0052C86F    mov        edx,3
 0052C874    call       @LStrArrayClr
 0052C879    ret
<0052C87A    jmp        @HandleFinally
<0052C87F    jmp        0052C847
 0052C881    pop        edi
 0052C882    pop        esi
 0052C883    pop        ebx
 0052C884    mov        esp,ebp
 0052C886    pop        ebp
 0052C887    ret        0C
*}
//end;

//0052C9A4
//procedure sub_0052C9A4(?:?);
//begin
{*
 0052C9A4    push       ebp
 0052C9A5    mov        ebp,esp
 0052C9A7    push       ecx
 0052C9A8    push       ebx
 0052C9A9    push       esi
 0052C9AA    push       edi
 0052C9AB    mov        esi,edx
 0052C9AD    mov        ebx,eax
 0052C9AF    mov        ecx,esi
 0052C9B1    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 0052C9B7    mov        edx,dword ptr [edx]
 0052C9B9    mov        eax,ebx
 0052C9BB    call       004D8E7C
 0052C9C0    mov        dword ptr [ebp-4],3
 0052C9C7    mov        ebx,61640C; gvar_0061640C:array[3] of String
 0052C9CC    mov        eax,dword ptr [esi]
 0052C9CE    mov        edx,dword ptr [eax]
 0052C9D0    call       dword ptr [edx+1E4]
 0052C9D6    mov        eax,dword ptr [esi]
 0052C9D8    mov        ecx,dword ptr [ebx]
 0052C9DA    mov        edx,1
 0052C9DF    mov        edi,dword ptr [eax]
 0052C9E1    call       dword ptr [edi+158]
 0052C9E7    mov        eax,dword ptr [esi]
 0052C9E9    mov        edx,dword ptr [eax]
 0052C9EB    call       dword ptr [edx+1D0]
 0052C9F1    add        ebx,4
 0052C9F4    dec        dword ptr [ebp-4]
<0052C9F7    jne        0052C9CC
 0052C9F9    pop        edi
 0052C9FA    pop        esi
 0052C9FB    pop        ebx
 0052C9FC    pop        ecx
 0052C9FD    pop        ebp
 0052C9FE    ret
*}
//end;

//0052CA00
//procedure sub_0052CA00(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052CA00    push       ebp
 0052CA01    mov        ebp,esp
 0052CA03    push       ecx
 0052CA04    mov        ecx,13
 0052CA09    push       0
 0052CA0B    push       0
 0052CA0D    dec        ecx
<0052CA0E    jne        0052CA09
 0052CA10    xchg       ecx,dword ptr [ebp-4]
 0052CA13    push       ebx
 0052CA14    push       esi
 0052CA15    push       edi
 0052CA16    mov        esi,eax
 0052CA18    mov        ebx,dword ptr [ebp+8]
 0052CA1B    xor        eax,eax
 0052CA1D    push       ebp
 0052CA1E    push       52D2A9
 0052CA23    push       dword ptr fs:[eax]
 0052CA26    mov        dword ptr fs:[eax],esp
 0052CA29    mov        ecx,ebx
 0052CA2B    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 0052CA31    mov        edx,dword ptr [edx]
 0052CA33    mov        eax,esi
 0052CA35    call       004D8E7C
 0052CA3A    lea        eax,[ebp-1C]
 0052CA3D    push       eax
 0052CA3E    mov        ecx,52D2C4; 'a.RDB$RELATION_NAME'
 0052CA43    mov        edx,dword ptr [ebp+10]
 0052CA46    mov        eax,esi
 0052CA48    call       0053058C
 0052CA4D    lea        eax,[ebp-20]
 0052CA50    push       eax
 0052CA51    mov        ecx,52D2E0; 'a.RDB$FIELD_NAME'
 0052CA56    mov        edx,dword ptr [ebp+0C]
 0052CA59    mov        eax,esi
 0052CA5B    call       0053058C
 0052CA60    lea        edx,[ebp-60]
 0052CA63    mov        eax,esi
 0052CA65    call       005309F4
 0052CA6A    mov        eax,dword ptr [ebp-60]
 0052CA6D    call       @LStrToPChar
 0052CA72    mov        edx,52D2F4; 'Interbase 5'
 0052CA77    call       StrPos
 0052CA7C    test       eax,eax
>0052CA7E    jne        0052CAA0
 0052CA80    lea        edx,[ebp-64]
 0052CA83    mov        eax,esi
 0052CA85    call       005309F4
 0052CA8A    mov        eax,dword ptr [ebp-64]
 0052CA8D    call       @LStrToPChar
 0052CA92    mov        edx,52D300; 'V5.'
 0052CA97    call       StrPos
 0052CA9C    test       eax,eax
>0052CA9E    je         0052CB19
 0052CAA0    lea        eax,[ebp-4]
 0052CAA3    mov        edx,52D30C; 'SELECT a.RDB$RELATION_NAME, a.RDB$FIELD_NAME, a.RDB$FIELD_POSITION, a.RDB$NULL_FLAG, b. RDB$FIELD_LENGTH, b.RDB$FIELD_SCALE, c.RDB$TYPE_NAME, b.RDB$FIELD_TYPE, b.RDB$FIELD_SUB_TYPE, b.RDB$DESCRIPTION, b.RDB$CHARACTER_LENGTH, b.RDB$FIELD_SCALE as RDB$FIELD_PRECISION, a.RDB$DEFAULT_SOURCE, b.RDB$DEFAULT_SOURCE as RDB$DEFAULT_SOURCE_DOMAIN, b.RDB$COMPUTED_SOURCE as RDB$COMPUTED_SOURCE FROM RDB$RELATION_FIELDS a JOIN RDB$FIELDS b ON (b.RDB$FIELD_NAME = a.RDB$FIELD_SOURCE) LEFT JOIN RDB$TYPES c ON b.RDB$FIELD_TYPE = c.RDB$TYPE and c.RDB$FIELD_NAME = 'RDB$FIELD_TYPE''
 0052CAA8    call       @LStrLAsg
 0052CAAD    lea        eax,[ebp-8]
 0052CAB0    mov        edx,dword ptr [ebp-1C]
 0052CAB3    call       @LStrLAsg
 0052CAB8    cmp        dword ptr [ebp-20],0
>0052CABC    je         0052CAE9
 0052CABE    cmp        dword ptr [ebp-8],0
>0052CAC2    jne        0052CAD1
 0052CAC4    lea        eax,[ebp-8]
 0052CAC7    mov        edx,dword ptr [ebp-20]
 0052CACA    call       @LStrLAsg
>0052CACF    jmp        0052CAE9
 0052CAD1    push       dword ptr [ebp-8]
 0052CAD4    push       52D54C; ' AND '
 0052CAD9    push       dword ptr [ebp-20]
 0052CADC    lea        eax,[ebp-8]
 0052CADF    mov        edx,3
 0052CAE4    call       @LStrCatN
 0052CAE9    cmp        dword ptr [ebp-8],0
>0052CAED    je         0052CAFF
 0052CAEF    lea        eax,[ebp-8]
 0052CAF2    mov        ecx,dword ptr [ebp-8]
 0052CAF5    mov        edx,52D55C; ' WHERE '
 0052CAFA    call       @LStrCat3
 0052CAFF    push       dword ptr [ebp-4]
 0052CB02    push       dword ptr [ebp-8]
 0052CB05    push       52D56C; ' ORDER BY a.RDB$RELATION_NAME, a.RDB$FIELD_POSITION'
 0052CB0A    lea        eax,[ebp-4]
 0052CB0D    mov        edx,3
 0052CB12    call       @LStrCatN
>0052CB17    jmp        0052CB90
 0052CB19    lea        eax,[ebp-4]
 0052CB1C    mov        edx,52D5A8; ' SELECT a.RDB$RELATION_NAME, a.RDB$FIELD_NAME, a.RDB$FIELD_POSITION, a.RDB$NULL_FLAG, a.RDB$DEFAULT_VALUE, b. RDB$FIELD_LENGTH, b.RDB$FIELD_SCALE, c.RDB$TYPE_NAME, b.RDB$FIELD_TYPE, b.RDB$FIELD_SUB_TYPE, b.RDB$DESCRIPTION, b.RDB$CHARACTER_LENGTH, b.RDB$FIELD_PRECISION, a.RDB$DEFAULT_SOURCE, b.RDB$DEFAULT_SOURCE as RDB$DEFAULT_SOURCE_DOMAIN,b.RDB$COMPUTED_SOURCE as RDB$COMPUTED_SOURCE FROM RDB$RELATION_FIELDS a JOIN RDB$FIELDS b ON (b.RDB$FIELD_NAME = a.RDB$FIELD_SOURCE) LEFT JOIN RDB$TYPES c ON (b.RDB$FIELD_TYPE = c.RDB$TYPE and c.RDB$FIELD_NAME = 'RDB$FIELD_TYPE')'
 0052CB21    call       @LStrLAsg
 0052CB26    lea        eax,[ebp-8]
 0052CB29    mov        edx,dword ptr [ebp-1C]
 0052CB2C    call       @LStrLAsg
 0052CB31    cmp        dword ptr [ebp-20],0
>0052CB35    je         0052CB62
 0052CB37    cmp        dword ptr [ebp-8],0
>0052CB3B    jne        0052CB4A
 0052CB3D    lea        eax,[ebp-8]
 0052CB40    mov        edx,dword ptr [ebp-20]
 0052CB43    call       @LStrLAsg
>0052CB48    jmp        0052CB62
 0052CB4A    push       dword ptr [ebp-8]
 0052CB4D    push       52D54C; ' AND '
 0052CB52    push       dword ptr [ebp-20]
 0052CB55    lea        eax,[ebp-8]
 0052CB58    mov        edx,3
 0052CB5D    call       @LStrCatN
 0052CB62    cmp        dword ptr [ebp-8],0
>0052CB66    je         0052CB78
 0052CB68    lea        eax,[ebp-8]
 0052CB6B    mov        ecx,dword ptr [ebp-8]
 0052CB6E    mov        edx,52D55C; ' WHERE '
 0052CB73    call       @LStrCat3
 0052CB78    push       dword ptr [ebp-4]
 0052CB7B    push       dword ptr [ebp-8]
 0052CB7E    push       52D56C; ' ORDER BY a.RDB$RELATION_NAME, a.RDB$FIELD_POSITION'
 0052CB83    lea        eax,[ebp-4]
 0052CB86    mov        edx,3
 0052CB8B    call       @LStrCatN
 0052CB90    lea        edx,[ebp-6C]
 0052CB93    mov        eax,esi
 0052CB95    mov        ecx,dword ptr [eax]
 0052CB97    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052CB9D    mov        eax,dword ptr [ebp-6C]
 0052CBA0    lea        edx,[ebp-68]
 0052CBA3    mov        ecx,dword ptr [eax]
 0052CBA5    call       dword ptr [ecx+0C]
 0052CBA8    mov        eax,dword ptr [ebp-68]
 0052CBAB    lea        ecx,[ebp-24]
 0052CBAE    mov        edx,dword ptr [ebp-4]
 0052CBB1    mov        esi,dword ptr [eax]
 0052CBB3    call       dword ptr [esi+0C]
 0052CBB6    mov        edx,52D7EC; 'RDB$FIELD_TYPE'
 0052CBBB    mov        eax,dword ptr [ebp-24]
 0052CBBE    mov        ecx,dword ptr [eax]
 0052CBC0    call       dword ptr [ecx+0D0]
 0052CBC6    mov        dword ptr [ebp-5C],eax
 0052CBC9    mov        edx,52D804; 'RDB$FIELD_SUB_TYPE'
 0052CBCE    mov        eax,dword ptr [ebp-24]
 0052CBD1    mov        ecx,dword ptr [eax]
 0052CBD3    call       dword ptr [ecx+0D0]
 0052CBD9    mov        dword ptr [ebp-58],eax
 0052CBDC    mov        edx,52D820; 'RDB$FIELD_SCALE'
 0052CBE1    mov        eax,dword ptr [ebp-24]
 0052CBE4    mov        ecx,dword ptr [eax]
 0052CBE6    call       dword ptr [ecx+0D0]
 0052CBEC    mov        dword ptr [ebp-54],eax
 0052CBEF    mov        edx,52D838; 'RDB$FIELD_NAME'
 0052CBF4    mov        eax,dword ptr [ebp-24]
 0052CBF7    mov        ecx,dword ptr [eax]
 0052CBF9    call       dword ptr [ecx+0D0]
 0052CBFF    mov        dword ptr [ebp-50],eax
 0052CC02    mov        edx,52D850; 'RDB$DEFAULT_SOURCE'
 0052CC07    mov        eax,dword ptr [ebp-24]
 0052CC0A    mov        ecx,dword ptr [eax]
 0052CC0C    call       dword ptr [ecx+0D0]
 0052CC12    mov        dword ptr [ebp-4C],eax
 0052CC15    mov        edx,52D86C; 'RDB$DEFAULT_SOURCE_DOMAIN'
 0052CC1A    mov        eax,dword ptr [ebp-24]
 0052CC1D    mov        ecx,dword ptr [eax]
 0052CC1F    call       dword ptr [ecx+0D0]
 0052CC25    mov        dword ptr [ebp-48],eax
 0052CC28    mov        edx,52D890; 'RDB$RELATION_NAME'
 0052CC2D    mov        eax,dword ptr [ebp-24]
 0052CC30    mov        ecx,dword ptr [eax]
 0052CC32    call       dword ptr [ecx+0D0]
 0052CC38    mov        dword ptr [ebp-44],eax
 0052CC3B    mov        edx,52D8AC; 'RDB$TYPE_NAME'
 0052CC40    mov        eax,dword ptr [ebp-24]
 0052CC43    mov        ecx,dword ptr [eax]
 0052CC45    call       dword ptr [ecx+0D0]
 0052CC4B    mov        dword ptr [ebp-40],eax
 0052CC4E    mov        edx,52D8C4; 'RDB$FIELD_PRECISION'
 0052CC53    mov        eax,dword ptr [ebp-24]
 0052CC56    mov        ecx,dword ptr [eax]
 0052CC58    call       dword ptr [ecx+0D0]
 0052CC5E    mov        dword ptr [ebp-3C],eax
 0052CC61    mov        edx,52D8E0; 'RDB$FIELD_LENGTH'
 0052CC66    mov        eax,dword ptr [ebp-24]
 0052CC69    mov        ecx,dword ptr [eax]
 0052CC6B    call       dword ptr [ecx+0D0]
 0052CC71    mov        dword ptr [ebp-38],eax
 0052CC74    mov        edx,52D8FC; 'RDB$NULL_FLAG'
 0052CC79    mov        eax,dword ptr [ebp-24]
 0052CC7C    mov        ecx,dword ptr [eax]
 0052CC7E    call       dword ptr [ecx+0D0]
 0052CC84    mov        dword ptr [ebp-34],eax
 0052CC87    mov        edx,52D914; 'RDB$DESCRIPTION'
 0052CC8C    mov        eax,dword ptr [ebp-24]
 0052CC8F    mov        ecx,dword ptr [eax]
 0052CC91    call       dword ptr [ecx+0D0]
 0052CC97    mov        dword ptr [ebp-30],eax
 0052CC9A    mov        edx,52D92C; 'RDB$FIELD_POSITION'
 0052CC9F    mov        eax,dword ptr [ebp-24]
 0052CCA2    mov        ecx,dword ptr [eax]
 0052CCA4    call       dword ptr [ecx+0D0]
 0052CCAA    mov        dword ptr [ebp-2C],eax
 0052CCAD    mov        edx,52D948; 'RDB$COMPUTED_SOURCE'
 0052CCB2    mov        eax,dword ptr [ebp-24]
 0052CCB5    mov        ecx,dword ptr [eax]
 0052CCB7    call       dword ptr [ecx+0D0]
 0052CCBD    mov        dword ptr [ebp-28],eax
>0052CCC0    jmp        0052D234
 0052CCC5    mov        edx,dword ptr [ebp-5C]
 0052CCC8    mov        eax,dword ptr [ebp-24]
 0052CCCB    mov        ecx,dword ptr [eax]
 0052CCCD    call       dword ptr [ecx+34]
 0052CCD0    mov        esi,eax
 0052CCD2    mov        edx,dword ptr [ebp-58]
 0052CCD5    mov        eax,dword ptr [ebp-24]
 0052CCD8    mov        ecx,dword ptr [eax]
 0052CCDA    call       dword ptr [ecx+34]
 0052CCDD    mov        dword ptr [ebp-14],eax
 0052CCE0    mov        edx,dword ptr [ebp-54]
 0052CCE3    mov        eax,dword ptr [ebp-24]
 0052CCE6    mov        ecx,dword ptr [eax]
 0052CCE8    call       dword ptr [ecx+34]
 0052CCEB    mov        dword ptr [ebp-18],eax
 0052CCEE    lea        ecx,[ebp-0C]
 0052CCF1    mov        edx,dword ptr [ebp-50]
 0052CCF4    mov        eax,dword ptr [ebp-24]
 0052CCF7    mov        edi,dword ptr [eax]
 0052CCF9    call       dword ptr [edi+20]
 0052CCFC    mov        edx,0E
 0052CD01    mov        eax,dword ptr [ebp-24]
 0052CD04    mov        ecx,dword ptr [eax]
 0052CD06    call       dword ptr [ecx+18]
 0052CD09    test       al,al
>0052CD0B    jne        0052CD1F
 0052CD0D    cmp        esi,10
>0052CD10    jne        0052CD1F
 0052CD12    cmp        dword ptr [ebp-18],0
>0052CD16    jge        0052CD1F
 0052CD18    mov        dword ptr [ebp-14],1
 0052CD1F    lea        ecx,[ebp-10]
 0052CD22    mov        edx,dword ptr [ebp-4C]
 0052CD25    mov        eax,dword ptr [ebp-24]
 0052CD28    mov        edi,dword ptr [eax]
 0052CD2A    call       dword ptr [edi+20]
 0052CD2D    cmp        dword ptr [ebp-10],0
>0052CD31    jne        0052CD41
 0052CD33    lea        ecx,[ebp-10]
 0052CD36    mov        edx,dword ptr [ebp-48]
 0052CD39    mov        eax,dword ptr [ebp-24]
 0052CD3C    mov        edi,dword ptr [eax]
 0052CD3E    call       dword ptr [edi+20]
 0052CD41    lea        edx,[ebp-74]
 0052CD44    mov        eax,dword ptr [ebp-10]
 0052CD47    call       UpperCase
 0052CD4C    mov        eax,dword ptr [ebp-74]
 0052CD4F    lea        edx,[ebp-70]
 0052CD52    call       Trim
 0052CD57    mov        eax,dword ptr [ebp-70]
 0052CD5A    mov        edx,52D964; 'DEFAULT'
 0052CD5F    call       004BEDE8
 0052CD64    test       al,al
>0052CD66    je         0052CD97
 0052CD68    mov        al,[0052D96C]; 0x2
 0052CD6D    push       eax
 0052CD6E    lea        eax,[ebp-7C]
 0052CD71    push       eax
 0052CD72    xor        ecx,ecx
 0052CD74    mov        edx,52D978; 'DEFAULT '
 0052CD79    mov        eax,dword ptr [ebp-10]
 0052CD7C    call       StringReplace
 0052CD81    mov        eax,dword ptr [ebp-7C]
 0052CD84    lea        edx,[ebp-78]
 0052CD87    call       Trim
 0052CD8C    mov        edx,dword ptr [ebp-78]
 0052CD8F    lea        eax,[ebp-10]
 0052CD92    call       @LStrLAsg
 0052CD97    lea        edx,[ebp-80]
 0052CD9A    mov        eax,dword ptr [ebp-10]
 0052CD9D    call       UpperCase
 0052CDA2    mov        eax,dword ptr [ebp-80]
 0052CDA5    mov        edx,52D98C; ''NOW''
 0052CDAA    call       @LStrCmp
>0052CDAF    je         0052CDD1
 0052CDB1    lea        edx,[ebp-84]
 0052CDB7    mov        eax,dword ptr [ebp-10]
 0052CDBA    call       UpperCase
 0052CDBF    mov        eax,dword ptr [ebp-84]
 0052CDC5    mov        edx,52D99C; '\"NOW\"'
 0052CDCA    call       @LStrCmp
>0052CDCF    jne        0052CE0D
 0052CDD1    mov        eax,esi
 0052CDD3    sub        eax,0C
>0052CDD6    je         0052CDE2
 0052CDD8    dec        eax
>0052CDD9    je         0052CDF1
 0052CDDB    sub        eax,16
>0052CDDE    je         0052CE00
>0052CDE0    jmp        0052CE0D
 0052CDE2    lea        eax,[ebp-10]
 0052CDE5    mov        edx,52D9AC; 'CURRENT_DATE'
 0052CDEA    call       @LStrLAsg
>0052CDEF    jmp        0052CE0D
 0052CDF1    lea        eax,[ebp-10]
 0052CDF4    mov        edx,52D9C4; 'CURRENT_TIME'
 0052CDF9    call       @LStrLAsg
>0052CDFE    jmp        0052CE0D
 0052CE00    lea        eax,[ebp-10]
 0052CE03    mov        edx,52D9DC; 'CURRENT_TIMESTAMP'
 0052CE08    call       @LStrLAsg
 0052CE0D    mov        eax,dword ptr [ebx]
 0052CE0F    mov        edx,dword ptr [eax]
 0052CE11    call       dword ptr [edx+1E4]
 0052CE17    mov        eax,dword ptr [ebx]
 0052CE19    mov        edx,1
 0052CE1E    mov        ecx,dword ptr [eax]
 0052CE20    call       dword ptr [ecx+130]
 0052CE26    mov        eax,dword ptr [ebx]
 0052CE28    mov        edx,2
 0052CE2D    mov        ecx,dword ptr [eax]
 0052CE2F    call       dword ptr [ecx+130]
 0052CE35    lea        ecx,[ebp-88]
 0052CE3B    mov        edx,dword ptr [ebp-44]
 0052CE3E    mov        eax,dword ptr [ebp-24]
 0052CE41    mov        edi,dword ptr [eax]
 0052CE43    call       dword ptr [edi+20]
 0052CE46    mov        ecx,dword ptr [ebp-88]
 0052CE4C    mov        eax,dword ptr [ebx]
 0052CE4E    mov        edx,3
 0052CE53    mov        edi,dword ptr [eax]
 0052CE55    call       dword ptr [edi+158]
 0052CE5B    mov        eax,dword ptr [ebx]
 0052CE5D    mov        ecx,dword ptr [ebp-0C]
 0052CE60    mov        edx,4
 0052CE65    mov        edi,dword ptr [eax]
 0052CE67    call       dword ptr [edi+158]
 0052CE6D    mov        edx,dword ptr [ebp-14]
 0052CE70    mov        eax,esi
 0052CE72    call       00532A60
 0052CE77    xor        ecx,ecx
 0052CE79    mov        cl,al
 0052CE7B    mov        eax,dword ptr [ebx]
 0052CE7D    mov        edx,5
 0052CE82    mov        edi,dword ptr [eax]
 0052CE84    call       dword ptr [edi+140]
 0052CE8A    mov        eax,esi
 0052CE8C    sub        eax,7
>0052CE8F    je         0052CEA7
 0052CE91    dec        eax
>0052CE92    je         0052CEC0
 0052CE94    sub        eax,8
>0052CE97    je         0052CED9
 0052CE99    sub        eax,15
>0052CE9C    je         0052CF3B
>0052CEA2    jmp        0052CF51
 0052CEA7    mov        eax,dword ptr [ebx]
 0052CEA9    mov        ecx,52D9F8; 'SMALLINT'
 0052CEAE    mov        edx,6
 0052CEB3    mov        edi,dword ptr [eax]
 0052CEB5    call       dword ptr [edi+158]
>0052CEBB    jmp        0052CF77
 0052CEC0    mov        eax,dword ptr [ebx]
 0052CEC2    mov        ecx,52DA0C; 'INTEGER'
 0052CEC7    mov        edx,6
 0052CECC    mov        edi,dword ptr [eax]
 0052CECE    call       dword ptr [edi+158]
>0052CED4    jmp        0052CF77
 0052CED9    cmp        dword ptr [ebp-14],0
>0052CEDD    jne        0052CF05
 0052CEDF    lea        ecx,[ebp-8C]
 0052CEE5    mov        edx,dword ptr [ebp-40]
 0052CEE8    mov        eax,dword ptr [ebp-24]
 0052CEEB    mov        edi,dword ptr [eax]
 0052CEED    call       dword ptr [edi+20]
 0052CEF0    mov        ecx,dword ptr [ebp-8C]
 0052CEF6    mov        eax,dword ptr [ebx]
 0052CEF8    mov        edx,6
 0052CEFD    mov        edi,dword ptr [eax]
 0052CEFF    call       dword ptr [edi+158]
 0052CF05    cmp        dword ptr [ebp-14],1
>0052CF09    jne        0052CF1F
 0052CF0B    mov        eax,dword ptr [ebx]
 0052CF0D    mov        ecx,52DA1C; 'NUMERIC'
 0052CF12    mov        edx,6
 0052CF17    mov        edi,dword ptr [eax]
 0052CF19    call       dword ptr [edi+158]
 0052CF1F    cmp        dword ptr [ebp-14],2
>0052CF23    jne        0052CF77
 0052CF25    mov        eax,dword ptr [ebx]
 0052CF27    mov        ecx,52DA2C; 'DECIMAL'
 0052CF2C    mov        edx,6
 0052CF31    mov        edi,dword ptr [eax]
 0052CF33    call       dword ptr [edi+158]
>0052CF39    jmp        0052CF77
 0052CF3B    mov        eax,dword ptr [ebx]
 0052CF3D    mov        ecx,52DA3C; 'VARCHAR'
 0052CF42    mov        edx,6
 0052CF47    mov        edi,dword ptr [eax]
 0052CF49    call       dword ptr [edi+158]
>0052CF4F    jmp        0052CF77
 0052CF51    lea        ecx,[ebp-90]
 0052CF57    mov        edx,dword ptr [ebp-40]
 0052CF5A    mov        eax,dword ptr [ebp-24]
 0052CF5D    mov        edi,dword ptr [eax]
 0052CF5F    call       dword ptr [edi+20]
 0052CF62    mov        ecx,dword ptr [ebp-90]
 0052CF68    mov        eax,dword ptr [ebx]
 0052CF6A    mov        edx,6
 0052CF6F    mov        edi,dword ptr [eax]
 0052CF71    call       dword ptr [edi+158]
 0052CF77    add        esi,0FFFFFFF9
 0052CF7A    sub        esi,2
>0052CF7D    jb         0052CF86
 0052CF7F    sub        esi,7
>0052CF82    je         0052CF99
>0052CF84    jmp        0052CFB7
 0052CF86    mov        eax,dword ptr [ebx]
 0052CF88    xor        ecx,ecx
 0052CF8A    mov        edx,7
 0052CF8F    mov        esi,dword ptr [eax]
 0052CF91    call       dword ptr [esi+140]
>0052CF97    jmp        0052CFD3
 0052CF99    mov        edx,dword ptr [ebp-3C]
 0052CF9C    mov        eax,dword ptr [ebp-24]
 0052CF9F    mov        ecx,dword ptr [eax]
 0052CFA1    call       dword ptr [ecx+34]
 0052CFA4    mov        ecx,eax
 0052CFA6    mov        eax,dword ptr [ebx]
 0052CFA8    mov        edx,7
 0052CFAD    mov        esi,dword ptr [eax]
 0052CFAF    call       dword ptr [esi+140]
>0052CFB5    jmp        0052CFD3
 0052CFB7    mov        edx,dword ptr [ebp-38]
 0052CFBA    mov        eax,dword ptr [ebp-24]
 0052CFBD    mov        ecx,dword ptr [eax]
 0052CFBF    call       dword ptr [ecx+34]
 0052CFC2    mov        ecx,eax
 0052CFC4    mov        eax,dword ptr [ebx]
 0052CFC6    mov        edx,7
 0052CFCB    mov        esi,dword ptr [eax]
 0052CFCD    call       dword ptr [esi+140]
 0052CFD3    mov        eax,dword ptr [ebx]
 0052CFD5    mov        edx,8
 0052CFDA    mov        ecx,dword ptr [eax]
 0052CFDC    call       dword ptr [ecx+130]
 0052CFE2    cmp        dword ptr [ebp-18],0
>0052CFE6    jge        0052D004
 0052CFE8    imul       ecx,dword ptr [ebp-18],0FF
>0052CFEC    jno        0052CFF3
 0052CFEE    call       @IntOver
 0052CFF3    mov        eax,dword ptr [ebx]
 0052CFF5    mov        edx,9
 0052CFFA    mov        esi,dword ptr [eax]
 0052CFFC    call       dword ptr [esi+140]
>0052D002    jmp        0052D015
 0052D004    mov        eax,dword ptr [ebx]
 0052D006    xor        ecx,ecx
 0052D008    mov        edx,9
 0052D00D    mov        esi,dword ptr [eax]
 0052D00F    call       dword ptr [esi+140]
 0052D015    mov        eax,dword ptr [ebx]
 0052D017    mov        ecx,0A
 0052D01C    mov        edx,0A
 0052D021    mov        esi,dword ptr [eax]
 0052D023    call       dword ptr [esi+140]
 0052D029    mov        esi,dword ptr [ebp-34]
 0052D02C    mov        edx,esi
 0052D02E    mov        eax,dword ptr [ebp-24]
 0052D031    mov        ecx,dword ptr [eax]
 0052D033    call       dword ptr [ecx+34]
 0052D036    test       eax,eax
>0052D038    je         0052D04D
 0052D03A    mov        eax,dword ptr [ebx]
 0052D03C    xor        ecx,ecx
 0052D03E    mov        edx,0B
 0052D043    mov        edi,dword ptr [eax]
 0052D045    call       dword ptr [edi+140]
>0052D04B    jmp        0052D061
 0052D04D    mov        eax,dword ptr [ebx]
 0052D04F    mov        ecx,1
 0052D054    mov        edx,0B
 0052D059    mov        edi,dword ptr [eax]
 0052D05B    call       dword ptr [edi+140]
 0052D061    lea        eax,[ebp-94]
 0052D067    push       eax
 0052D068    lea        ecx,[ebp-98]
 0052D06E    mov        edx,dword ptr [ebp-30]
 0052D071    mov        eax,dword ptr [ebp-24]
 0052D074    mov        edi,dword ptr [eax]
 0052D076    call       dword ptr [edi+20]
 0052D079    mov        eax,dword ptr [ebp-98]
 0052D07F    mov        ecx,0FF
 0052D084    mov        edx,1
 0052D089    call       @LStrCopy
 0052D08E    mov        ecx,dword ptr [ebp-94]
 0052D094    mov        eax,dword ptr [ebx]
 0052D096    mov        edx,0C
 0052D09B    mov        edi,dword ptr [eax]
 0052D09D    call       dword ptr [edi+158]
 0052D0A3    mov        eax,dword ptr [ebx]
 0052D0A5    mov        ecx,dword ptr [ebp-10]
 0052D0A8    mov        edx,0D
 0052D0AD    mov        edi,dword ptr [eax]
 0052D0AF    call       dword ptr [edi+158]
 0052D0B5    mov        eax,dword ptr [ebx]
 0052D0B7    mov        edx,0E
 0052D0BC    mov        ecx,dword ptr [eax]
 0052D0BE    call       dword ptr [ecx+130]
 0052D0C4    mov        eax,dword ptr [ebx]
 0052D0C6    mov        edx,0F
 0052D0CB    mov        ecx,dword ptr [eax]
 0052D0CD    call       dword ptr [ecx+130]
 0052D0D3    mov        edx,7
 0052D0D8    mov        eax,dword ptr [ebp-24]
 0052D0DB    mov        ecx,dword ptr [eax]
 0052D0DD    call       dword ptr [ecx+34]
 0052D0E0    mov        ecx,eax
 0052D0E2    mov        eax,dword ptr [ebx]
 0052D0E4    mov        edx,10
 0052D0E9    mov        edi,dword ptr [eax]
 0052D0EB    call       dword ptr [edi+140]
 0052D0F1    mov        edx,dword ptr [ebp-2C]
 0052D0F4    mov        eax,dword ptr [ebp-24]
 0052D0F7    mov        ecx,dword ptr [eax]
 0052D0F9    call       dword ptr [ecx+34]
 0052D0FC    mov        ecx,eax
 0052D0FE    add        ecx,1
>0052D101    jno        0052D108
 0052D103    call       @IntOver
 0052D108    mov        eax,dword ptr [ebx]
 0052D10A    mov        edx,11
 0052D10F    mov        edi,dword ptr [eax]
 0052D111    call       dword ptr [edi+140]
 0052D117    mov        edx,esi
 0052D119    mov        eax,dword ptr [ebp-24]
 0052D11C    mov        ecx,dword ptr [eax]
 0052D11E    call       dword ptr [ecx+18]
 0052D121    test       al,al
>0052D123    je         0052D13B
 0052D125    mov        eax,dword ptr [ebx]
 0052D127    mov        ecx,52DA4C; 'YES'
 0052D12C    mov        edx,12
 0052D131    mov        esi,dword ptr [eax]
 0052D133    call       dword ptr [esi+158]
>0052D139    jmp        0052D14F
 0052D13B    mov        eax,dword ptr [ebx]
 0052D13D    mov        ecx,52DA58; 'NO'
 0052D142    mov        edx,12
 0052D147    mov        esi,dword ptr [eax]
 0052D149    call       dword ptr [esi+158]
 0052D14F    mov        eax,dword ptr [ebx]
 0052D151    mov        edx,13
 0052D156    mov        ecx,dword ptr [eax]
 0052D158    call       dword ptr [ecx+130]
 0052D15E    lea        edx,[ebp-9C]
 0052D164    mov        eax,dword ptr [ebp-0C]
 0052D167    call       UpperCase
 0052D16C    mov        edx,dword ptr [ebp-9C]
 0052D172    mov        eax,dword ptr [ebp-0C]
 0052D175    call       CompareStr
 0052D17A    test       eax,eax
>0052D17C    jne        0052D191
 0052D17E    mov        eax,dword ptr [ebx]
 0052D180    xor        ecx,ecx
 0052D182    mov        edx,14
 0052D187    mov        esi,dword ptr [eax]
 0052D189    call       dword ptr [esi+134]
>0052D18F    jmp        0052D1A2
 0052D191    mov        eax,dword ptr [ebx]
 0052D193    mov        cl,1
 0052D195    mov        edx,14
 0052D19A    mov        esi,dword ptr [eax]
 0052D19C    call       dword ptr [esi+134]
 0052D1A2    mov        eax,dword ptr [ebx]
 0052D1A4    mov        cl,1
 0052D1A6    mov        edx,15
 0052D1AB    mov        esi,dword ptr [eax]
 0052D1AD    call       dword ptr [esi+134]
 0052D1B3    mov        edx,dword ptr [ebp-28]
 0052D1B6    mov        eax,dword ptr [ebp-24]
 0052D1B9    mov        ecx,dword ptr [eax]
 0052D1BB    call       dword ptr [ecx+18]
 0052D1BE    test       al,al
>0052D1C0    je         0052D1F7
 0052D1C2    mov        eax,dword ptr [ebx]
 0052D1C4    mov        cl,1
 0052D1C6    mov        edx,16
 0052D1CB    mov        esi,dword ptr [eax]
 0052D1CD    call       dword ptr [esi+134]
 0052D1D3    mov        eax,dword ptr [ebx]
 0052D1D5    mov        cl,1
 0052D1D7    mov        edx,17
 0052D1DC    mov        esi,dword ptr [eax]
 0052D1DE    call       dword ptr [esi+134]
 0052D1E4    mov        eax,dword ptr [ebx]
 0052D1E6    xor        ecx,ecx
 0052D1E8    mov        edx,18
 0052D1ED    mov        esi,dword ptr [eax]
 0052D1EF    call       dword ptr [esi+134]
>0052D1F5    jmp        0052D22A
 0052D1F7    mov        eax,dword ptr [ebx]
 0052D1F9    xor        ecx,ecx
 0052D1FB    mov        edx,16
 0052D200    mov        esi,dword ptr [eax]
 0052D202    call       dword ptr [esi+134]
 0052D208    mov        eax,dword ptr [ebx]
 0052D20A    xor        ecx,ecx
 0052D20C    mov        edx,17
 0052D211    mov        esi,dword ptr [eax]
 0052D213    call       dword ptr [esi+134]
 0052D219    mov        eax,dword ptr [ebx]
 0052D21B    mov        cl,1
 0052D21D    mov        edx,18
 0052D222    mov        esi,dword ptr [eax]
 0052D224    call       dword ptr [esi+134]
 0052D22A    mov        eax,dword ptr [ebx]
 0052D22C    mov        edx,dword ptr [eax]
 0052D22E    call       dword ptr [edx+1D0]
 0052D234    mov        eax,dword ptr [ebp-24]
 0052D237    mov        edx,dword ptr [eax]
 0052D239    call       dword ptr [edx+0C]
 0052D23C    test       al,al
<0052D23E    jne        0052CCC5
 0052D244    mov        eax,dword ptr [ebp-24]
 0052D247    mov        edx,dword ptr [eax]
 0052D249    call       dword ptr [edx+10]
 0052D24C    xor        eax,eax
 0052D24E    pop        edx
 0052D24F    pop        ecx
 0052D250    pop        ecx
 0052D251    mov        dword ptr fs:[eax],edx
 0052D254    push       52D2B0
 0052D259    lea        eax,[ebp-9C]
 0052D25F    mov        edx,0C
 0052D264    call       @LStrArrayClr
 0052D269    lea        eax,[ebp-6C]
 0052D26C    call       @IntfClear
 0052D271    lea        eax,[ebp-68]
 0052D274    call       @IntfClear
 0052D279    lea        eax,[ebp-64]
 0052D27C    mov        edx,2
 0052D281    call       @LStrArrayClr
 0052D286    lea        eax,[ebp-24]
 0052D289    call       @IntfClear
 0052D28E    lea        eax,[ebp-20]
 0052D291    mov        edx,2
 0052D296    call       @LStrArrayClr
 0052D29B    lea        eax,[ebp-10]
 0052D29E    mov        edx,4
 0052D2A3    call       @LStrArrayClr
 0052D2A8    ret
<0052D2A9    jmp        @HandleFinally
<0052D2AE    jmp        0052D259
 0052D2B0    pop        edi
 0052D2B1    pop        esi
 0052D2B2    pop        ebx
 0052D2B3    mov        esp,ebp
 0052D2B5    pop        ebp
 0052D2B6    ret        0C
*}
//end;

//0052DA5C
//procedure sub_0052DA5C(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052DA5C    push       ebp
 0052DA5D    mov        ebp,esp
 0052DA5F    push       ecx
 0052DA60    mov        ecx,8
 0052DA65    push       0
 0052DA67    push       0
 0052DA69    dec        ecx
<0052DA6A    jne        0052DA65
 0052DA6C    push       ecx
 0052DA6D    xchg       ecx,dword ptr [ebp-4]
 0052DA70    push       ebx
 0052DA71    push       esi
 0052DA72    push       edi
 0052DA73    mov        esi,eax
 0052DA75    mov        ebx,dword ptr [ebp+8]
 0052DA78    xor        eax,eax
 0052DA7A    push       ebp
 0052DA7B    push       52DE26
 0052DA80    push       dword ptr fs:[eax]
 0052DA83    mov        dword ptr fs:[eax],esp
 0052DA86    mov        ecx,ebx
 0052DA88    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 0052DA8E    mov        edx,dword ptr [edx]
 0052DA90    mov        eax,esi
 0052DA92    call       004D8E7C
 0052DA97    lea        eax,[ebp-24]
 0052DA9A    push       eax
 0052DA9B    lea        ecx,[ebp-30]
 0052DA9E    mov        edx,dword ptr [ebp+10]
 0052DAA1    mov        eax,esi
 0052DAA3    call       004DAB38
 0052DAA8    mov        edx,dword ptr [ebp-30]
 0052DAAB    mov        ecx,52DE40; 'a.RDB$RELATION_NAME'
 0052DAB0    mov        eax,esi
 0052DAB2    call       0053058C
 0052DAB7    lea        eax,[ebp-20]
 0052DABA    push       eax
 0052DABB    mov        ecx,52DE5C; 'a.RDB$FIELD_NAME'
 0052DAC0    mov        edx,dword ptr [ebp+0C]
 0052DAC3    mov        eax,esi
 0052DAC5    call       0053058C
 0052DACA    lea        eax,[ebp-4]
 0052DACD    mov        edx,52DE78; 'SELECT a.RDB$USER, a.RDB$GRANTOR, a.RDB$PRIVILEGE, a.RDB$GRANT_OPTION, a.RDB$RELATION_NAME, a.RDB$FIELD_NAME  FROM RDB$USER_PRIVILEGES a, RDB$TYPES b  WHERE a.RDB$OBJECT_TYPE = b.RDB$TYPE AND '
 0052DAD2    call       @LStrLAsg
 0052DAD7    cmp        dword ptr [ebp-24],0
>0052DADB    je         0052DAF5
 0052DADD    push       dword ptr [ebp-4]
 0052DAE0    push       dword ptr [ebp-24]
 0052DAE3    push       52DF44; ' AND '
 0052DAE8    lea        eax,[ebp-4]
 0052DAEB    mov        edx,3
 0052DAF0    call       @LStrCatN
 0052DAF5    cmp        dword ptr [ebp-20],0
>0052DAF9    je         0052DB13
 0052DAFB    push       dword ptr [ebp-4]
 0052DAFE    push       dword ptr [ebp-20]
 0052DB01    push       52DF44; ' AND '
 0052DB06    lea        eax,[ebp-4]
 0052DB09    mov        edx,3
 0052DB0E    call       @LStrCatN
 0052DB13    push       dword ptr [ebp-4]
 0052DB16    push       52DF54; ' b.RDB$TYPE_NAME IN ('RELATION', 'VIEW','
 0052DB1B    push       52DF88; ' 'COMPUTED_FIELD', 'FIELD' ) AND b.RDB$FIELD_NAME'
 0052DB20    push       52DFC4; '='RDB$OBJECT_TYPE' ORDER BY a.RDB$FIELD_NAME, a.RDB$PRIVILEGE  '
 0052DB25    lea        eax,[ebp-4]
 0052DB28    mov        edx,4
 0052DB2D    call       @LStrCatN
 0052DB32    lea        edx,[ebp-38]
 0052DB35    mov        eax,esi
 0052DB37    mov        ecx,dword ptr [eax]
 0052DB39    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052DB3F    mov        eax,dword ptr [ebp-38]
 0052DB42    lea        edx,[ebp-34]
 0052DB45    mov        ecx,dword ptr [eax]
 0052DB47    call       dword ptr [ecx+0C]
 0052DB4A    mov        eax,dword ptr [ebp-34]
 0052DB4D    lea        ecx,[ebp-28]
 0052DB50    mov        edx,dword ptr [ebp-4]
 0052DB53    mov        edi,dword ptr [eax]
 0052DB55    call       dword ptr [edi+0C]
>0052DB58    jmp        0052DDA8
 0052DB5D    lea        ecx,[ebp-8]
 0052DB60    mov        edx,5
 0052DB65    mov        eax,dword ptr [ebp-28]
 0052DB68    mov        edi,dword ptr [eax]
 0052DB6A    call       dword ptr [edi+20]
 0052DB6D    lea        ecx,[ebp-0C]
 0052DB70    mov        edx,6
 0052DB75    mov        eax,dword ptr [ebp-28]
 0052DB78    mov        edi,dword ptr [eax]
 0052DB7A    call       dword ptr [edi+20]
 0052DB7D    lea        ecx,[ebp-3C]
 0052DB80    mov        edx,3
 0052DB85    mov        eax,dword ptr [ebp-28]
 0052DB88    mov        edi,dword ptr [eax]
 0052DB8A    call       dword ptr [edi+20]
 0052DB8D    mov        edx,dword ptr [ebp-3C]
 0052DB90    lea        ecx,[ebp-10]
 0052DB93    mov        eax,esi
 0052DB95    call       00530420
 0052DB9A    lea        ecx,[ebp-14]
 0052DB9D    mov        edx,2
 0052DBA2    mov        eax,dword ptr [ebp-28]
 0052DBA5    mov        edi,dword ptr [eax]
 0052DBA7    call       dword ptr [edi+20]
 0052DBAA    lea        ecx,[ebp-18]
 0052DBAD    mov        edx,1
 0052DBB2    mov        eax,dword ptr [ebp-28]
 0052DBB5    mov        edi,dword ptr [eax]
 0052DBB7    call       dword ptr [edi+20]
 0052DBBA    mov        eax,dword ptr [ebp-14]
 0052DBBD    mov        edx,dword ptr [ebp-18]
 0052DBC0    call       @LStrCmp
>0052DBC5    jne        0052DBD6
 0052DBC7    lea        eax,[ebp-1C]
 0052DBCA    mov        edx,52E00C; 'YES'
 0052DBCF    call       @LStrLAsg
>0052DBD4    jmp        0052DBE3
 0052DBD6    lea        eax,[ebp-1C]
 0052DBD9    mov        edx,52E018; 'NO'
 0052DBDE    call       @LStrLAsg
 0052DBE3    cmp        dword ptr [ebp-0C],0
>0052DBE7    jne        0052DD0A
 0052DBED    push       52E024; 'SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS  WHERE RDB$RELATION_NAME = ''
 0052DBF2    push       dword ptr [ebp-8]
 0052DBF5    push       52E078; '' AND '
 0052DBFA    push       52E088; ' RDB$FIELD_NAME = ''
 0052DBFF    push       dword ptr [ebp-20]
 0052DC02    push       52E078; '' AND '
 0052DC07    lea        eax,[ebp-4]
 0052DC0A    mov        edx,6
 0052DC0F    call       @LStrCatN
 0052DC14    lea        edx,[ebp-44]
 0052DC17    mov        eax,esi
 0052DC19    mov        ecx,dword ptr [eax]
 0052DC1B    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052DC21    mov        eax,dword ptr [ebp-44]
 0052DC24    lea        edx,[ebp-40]
 0052DC27    mov        ecx,dword ptr [eax]
 0052DC29    call       dword ptr [ecx+0C]
 0052DC2C    mov        eax,dword ptr [ebp-40]
 0052DC2F    lea        ecx,[ebp-2C]
 0052DC32    mov        edx,dword ptr [ebp-4]
 0052DC35    mov        edi,dword ptr [eax]
 0052DC37    call       dword ptr [edi+0C]
>0052DC3A    jmp        0052DCED
 0052DC3F    mov        eax,dword ptr [ebx]
 0052DC41    mov        edx,dword ptr [eax]
 0052DC43    call       dword ptr [edx+1E4]
 0052DC49    mov        eax,dword ptr [ebx]
 0052DC4B    mov        edx,1
 0052DC50    mov        ecx,dword ptr [eax]
 0052DC52    call       dword ptr [ecx+130]
 0052DC58    mov        eax,dword ptr [ebx]
 0052DC5A    mov        edx,2
 0052DC5F    mov        ecx,dword ptr [eax]
 0052DC61    call       dword ptr [ecx+130]
 0052DC67    mov        eax,dword ptr [ebx]
 0052DC69    mov        ecx,dword ptr [ebp-8]
 0052DC6C    mov        edx,3
 0052DC71    mov        edi,dword ptr [eax]
 0052DC73    call       dword ptr [edi+158]
 0052DC79    lea        ecx,[ebp-48]
 0052DC7C    mov        edx,1
 0052DC81    mov        eax,dword ptr [ebp-2C]
 0052DC84    mov        edi,dword ptr [eax]
 0052DC86    call       dword ptr [edi+20]
 0052DC89    mov        ecx,dword ptr [ebp-48]
 0052DC8C    mov        eax,dword ptr [ebx]
 0052DC8E    mov        edx,4
 0052DC93    mov        edi,dword ptr [eax]
 0052DC95    call       dword ptr [edi+158]
 0052DC9B    mov        eax,dword ptr [ebx]
 0052DC9D    mov        ecx,dword ptr [ebp-14]
 0052DCA0    mov        edx,5
 0052DCA5    mov        edi,dword ptr [eax]
 0052DCA7    call       dword ptr [edi+158]
 0052DCAD    mov        eax,dword ptr [ebx]
 0052DCAF    mov        ecx,dword ptr [ebp-18]
 0052DCB2    mov        edx,6
 0052DCB7    mov        edi,dword ptr [eax]
 0052DCB9    call       dword ptr [edi+158]
 0052DCBF    mov        eax,dword ptr [ebx]
 0052DCC1    mov        ecx,dword ptr [ebp-10]
 0052DCC4    mov        edx,7
 0052DCC9    mov        edi,dword ptr [eax]
 0052DCCB    call       dword ptr [edi+158]
 0052DCD1    mov        eax,dword ptr [ebx]
 0052DCD3    mov        ecx,dword ptr [ebp-1C]
 0052DCD6    mov        edx,8
 0052DCDB    mov        edi,dword ptr [eax]
 0052DCDD    call       dword ptr [edi+158]
 0052DCE3    mov        eax,dword ptr [ebx]
 0052DCE5    mov        edx,dword ptr [eax]
 0052DCE7    call       dword ptr [edx+1D0]
 0052DCED    mov        eax,dword ptr [ebp-2C]
 0052DCF0    mov        edx,dword ptr [eax]
 0052DCF2    call       dword ptr [edx+0C]
 0052DCF5    test       al,al
<0052DCF7    jne        0052DC3F
 0052DCFD    mov        eax,dword ptr [ebp-2C]
 0052DD00    mov        edx,dword ptr [eax]
 0052DD02    call       dword ptr [edx+10]
>0052DD05    jmp        0052DDA8
 0052DD0A    mov        eax,dword ptr [ebx]
 0052DD0C    mov        edx,dword ptr [eax]
 0052DD0E    call       dword ptr [edx+1E4]
 0052DD14    mov        eax,dword ptr [ebx]
 0052DD16    mov        edx,1
 0052DD1B    mov        ecx,dword ptr [eax]
 0052DD1D    call       dword ptr [ecx+130]
 0052DD23    mov        eax,dword ptr [ebx]
 0052DD25    mov        edx,2
 0052DD2A    mov        ecx,dword ptr [eax]
 0052DD2C    call       dword ptr [ecx+130]
 0052DD32    mov        eax,dword ptr [ebx]
 0052DD34    mov        ecx,dword ptr [ebp-8]
 0052DD37    mov        edx,3
 0052DD3C    mov        edi,dword ptr [eax]
 0052DD3E    call       dword ptr [edi+158]
 0052DD44    mov        eax,dword ptr [ebx]
 0052DD46    mov        ecx,dword ptr [ebp-0C]
 0052DD49    mov        edx,4
 0052DD4E    mov        edi,dword ptr [eax]
 0052DD50    call       dword ptr [edi+158]
 0052DD56    mov        eax,dword ptr [ebx]
 0052DD58    mov        ecx,dword ptr [ebp-14]
 0052DD5B    mov        edx,5
 0052DD60    mov        edi,dword ptr [eax]
 0052DD62    call       dword ptr [edi+158]
 0052DD68    mov        eax,dword ptr [ebx]
 0052DD6A    mov        ecx,dword ptr [ebp-18]
 0052DD6D    mov        edx,6
 0052DD72    mov        edi,dword ptr [eax]
 0052DD74    call       dword ptr [edi+158]
 0052DD7A    mov        eax,dword ptr [ebx]
 0052DD7C    mov        ecx,dword ptr [ebp-10]
 0052DD7F    mov        edx,7
 0052DD84    mov        edi,dword ptr [eax]
 0052DD86    call       dword ptr [edi+158]
 0052DD8C    mov        eax,dword ptr [ebx]
 0052DD8E    mov        ecx,dword ptr [ebp-1C]
 0052DD91    mov        edx,8
 0052DD96    mov        edi,dword ptr [eax]
 0052DD98    call       dword ptr [edi+158]
 0052DD9E    mov        eax,dword ptr [ebx]
 0052DDA0    mov        edx,dword ptr [eax]
 0052DDA2    call       dword ptr [edx+1D0]
 0052DDA8    mov        eax,dword ptr [ebp-28]
 0052DDAB    mov        edx,dword ptr [eax]
 0052DDAD    call       dword ptr [edx+0C]
 0052DDB0    test       al,al
<0052DDB2    jne        0052DB5D
 0052DDB8    mov        eax,dword ptr [ebp-28]
 0052DDBB    mov        edx,dword ptr [eax]
 0052DDBD    call       dword ptr [edx+10]
 0052DDC0    xor        eax,eax
 0052DDC2    pop        edx
 0052DDC3    pop        ecx
 0052DDC4    pop        ecx
 0052DDC5    mov        dword ptr fs:[eax],edx
 0052DDC8    push       52DE2D
 0052DDCD    lea        eax,[ebp-48]
 0052DDD0    call       @LStrClr
 0052DDD5    lea        eax,[ebp-44]
 0052DDD8    call       @IntfClear
 0052DDDD    lea        eax,[ebp-40]
 0052DDE0    call       @IntfClear
 0052DDE5    lea        eax,[ebp-3C]
 0052DDE8    call       @LStrClr
 0052DDED    lea        eax,[ebp-38]
 0052DDF0    call       @IntfClear
 0052DDF5    lea        eax,[ebp-34]
 0052DDF8    call       @IntfClear
 0052DDFD    lea        eax,[ebp-30]
 0052DE00    call       @LStrClr
 0052DE05    lea        eax,[ebp-2C]
 0052DE08    mov        edx,dword ptr ds:[4C6FF4]; IZResultSet
 0052DE0E    mov        ecx,2
 0052DE13    call       @FinalizeArray
 0052DE18    lea        eax,[ebp-24]
 0052DE1B    mov        edx,9
 0052DE20    call       @LStrArrayClr
 0052DE25    ret
<0052DE26    jmp        @HandleFinally
<0052DE2B    jmp        0052DDCD
 0052DE2D    pop        edi
 0052DE2E    pop        esi
 0052DE2F    pop        ebx
 0052DE30    mov        esp,ebp
 0052DE32    pop        ebp
 0052DE33    ret        0C
*}
//end;

//0052E09C
//procedure sub_0052E09C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052E09C    push       ebp
 0052E09D    mov        ebp,esp
 0052E09F    push       ecx
 0052E0A0    mov        ecx,5
 0052E0A5    push       0
 0052E0A7    push       0
 0052E0A9    dec        ecx
<0052E0AA    jne        0052E0A5
 0052E0AC    xchg       ecx,dword ptr [ebp-4]
 0052E0AF    push       ebx
 0052E0B0    push       esi
 0052E0B1    push       edi
 0052E0B2    mov        esi,eax
 0052E0B4    mov        ebx,dword ptr [ebp+8]
 0052E0B7    xor        eax,eax
 0052E0B9    push       ebp
 0052E0BA    push       52E2A1
 0052E0BF    push       dword ptr fs:[eax]
 0052E0C2    mov        dword ptr fs:[eax],esp
 0052E0C5    mov        ecx,ebx
 0052E0C7    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 0052E0CD    mov        edx,dword ptr [edx]
 0052E0CF    mov        eax,esi
 0052E0D1    call       004D8E7C
 0052E0D6    lea        eax,[ebp-1C]
 0052E0D9    push       eax
 0052E0DA    mov        ecx,52E2BC; 'a.RDB$RELATION_NAME'
 0052E0DF    mov        edx,dword ptr [ebp+0C]
 0052E0E2    mov        eax,esi
 0052E0E4    call       0053058C
 0052E0E9    lea        eax,[ebp-4]
 0052E0EC    mov        edx,52E2D8; 'SELECT a.RDB$USER, a.RDB$GRANTOR, a.RDB$PRIVILEGE, a.RDB$GRANT_OPTION, a.RDB$RELATION_NAME FROM RDB$USER_PRIVILEGES a, RDB$TYPES b WHERE a.RDB$OBJECT_TYPE = b.RDB$TYPE AND  b.RDB$TYPE_NAME IN ('RELATION', 'VIEW', 'COMPUTED_FIELD', 'FIELD' ) AND a.RDB$FIELD_NAME IS NULL '
 0052E0F1    call       @LStrLAsg
 0052E0F6    cmp        dword ptr [ebp-1C],0
>0052E0FA    je         0052E114
 0052E0FC    push       dword ptr [ebp-4]
 0052E0FF    push       52E3F0; ' AND '
 0052E104    push       dword ptr [ebp-1C]
 0052E107    lea        eax,[ebp-4]
 0052E10A    mov        edx,3
 0052E10F    call       @LStrCatN
 0052E114    lea        eax,[ebp-4]
 0052E117    mov        edx,52E400; ' ORDER BY a.RDB$RELATION_NAME, a.RDB$PRIVILEGE'
 0052E11C    call       @LStrCat
 0052E121    lea        edx,[ebp-28]
 0052E124    mov        eax,esi
 0052E126    mov        ecx,dword ptr [eax]
 0052E128    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052E12E    mov        eax,dword ptr [ebp-28]
 0052E131    lea        edx,[ebp-24]
 0052E134    mov        ecx,dword ptr [eax]
 0052E136    call       dword ptr [ecx+0C]
 0052E139    mov        eax,dword ptr [ebp-24]
 0052E13C    lea        ecx,[ebp-20]
 0052E13F    mov        edx,dword ptr [ebp-4]
 0052E142    mov        edi,dword ptr [eax]
 0052E144    call       dword ptr [edi+0C]
>0052E147    jmp        0052E24E
 0052E14C    lea        ecx,[ebp-8]
 0052E14F    mov        edx,5
 0052E154    mov        eax,dword ptr [ebp-20]
 0052E157    mov        edi,dword ptr [eax]
 0052E159    call       dword ptr [edi+20]
 0052E15C    lea        ecx,[ebp-2C]
 0052E15F    mov        edx,3
 0052E164    mov        eax,dword ptr [ebp-20]
 0052E167    mov        edi,dword ptr [eax]
 0052E169    call       dword ptr [edi+20]
 0052E16C    mov        edx,dword ptr [ebp-2C]
 0052E16F    lea        ecx,[ebp-0C]
 0052E172    mov        eax,esi
 0052E174    call       00530420
 0052E179    lea        ecx,[ebp-10]
 0052E17C    mov        edx,2
 0052E181    mov        eax,dword ptr [ebp-20]
 0052E184    mov        edi,dword ptr [eax]
 0052E186    call       dword ptr [edi+20]
 0052E189    lea        ecx,[ebp-14]
 0052E18C    mov        edx,1
 0052E191    mov        eax,dword ptr [ebp-20]
 0052E194    mov        edi,dword ptr [eax]
 0052E196    call       dword ptr [edi+20]
 0052E199    mov        eax,dword ptr [ebp-10]
 0052E19C    mov        edx,dword ptr [ebp-14]
 0052E19F    call       @LStrCmp
>0052E1A4    jne        0052E1B5
 0052E1A6    lea        eax,[ebp-18]
 0052E1A9    mov        edx,52E438; 'YES'
 0052E1AE    call       @LStrLAsg
>0052E1B3    jmp        0052E1C2
 0052E1B5    lea        eax,[ebp-18]
 0052E1B8    mov        edx,52E444; 'NO'
 0052E1BD    call       @LStrLAsg
 0052E1C2    mov        eax,dword ptr [ebx]
 0052E1C4    mov        edx,dword ptr [eax]
 0052E1C6    call       dword ptr [edx+1E4]
 0052E1CC    mov        eax,dword ptr [ebx]
 0052E1CE    mov        edx,1
 0052E1D3    mov        ecx,dword ptr [eax]
 0052E1D5    call       dword ptr [ecx+130]
 0052E1DB    mov        eax,dword ptr [ebx]
 0052E1DD    mov        edx,2
 0052E1E2    mov        ecx,dword ptr [eax]
 0052E1E4    call       dword ptr [ecx+130]
 0052E1EA    mov        eax,dword ptr [ebx]
 0052E1EC    mov        ecx,dword ptr [ebp-8]
 0052E1EF    mov        edx,3
 0052E1F4    mov        edi,dword ptr [eax]
 0052E1F6    call       dword ptr [edi+158]
 0052E1FC    mov        eax,dword ptr [ebx]
 0052E1FE    mov        ecx,dword ptr [ebp-10]
 0052E201    mov        edx,4
 0052E206    mov        edi,dword ptr [eax]
 0052E208    call       dword ptr [edi+158]
 0052E20E    mov        eax,dword ptr [ebx]
 0052E210    mov        ecx,dword ptr [ebp-14]
 0052E213    mov        edx,5
 0052E218    mov        edi,dword ptr [eax]
 0052E21A    call       dword ptr [edi+158]
 0052E220    mov        eax,dword ptr [ebx]
 0052E222    mov        ecx,dword ptr [ebp-0C]
 0052E225    mov        edx,6
 0052E22A    mov        edi,dword ptr [eax]
 0052E22C    call       dword ptr [edi+158]
 0052E232    mov        eax,dword ptr [ebx]
 0052E234    mov        ecx,dword ptr [ebp-18]
 0052E237    mov        edx,7
 0052E23C    mov        edi,dword ptr [eax]
 0052E23E    call       dword ptr [edi+158]
 0052E244    mov        eax,dword ptr [ebx]
 0052E246    mov        edx,dword ptr [eax]
 0052E248    call       dword ptr [edx+1D0]
 0052E24E    mov        eax,dword ptr [ebp-20]
 0052E251    mov        edx,dword ptr [eax]
 0052E253    call       dword ptr [edx+0C]
 0052E256    test       al,al
<0052E258    jne        0052E14C
 0052E25E    mov        eax,dword ptr [ebp-20]
 0052E261    mov        edx,dword ptr [eax]
 0052E263    call       dword ptr [edx+10]
 0052E266    xor        eax,eax
 0052E268    pop        edx
 0052E269    pop        ecx
 0052E26A    pop        ecx
 0052E26B    mov        dword ptr fs:[eax],edx
 0052E26E    push       52E2A8
 0052E273    lea        eax,[ebp-2C]
 0052E276    call       @LStrClr
 0052E27B    lea        eax,[ebp-28]
 0052E27E    call       @IntfClear
 0052E283    lea        eax,[ebp-24]
 0052E286    call       @IntfClear
 0052E28B    lea        eax,[ebp-20]
 0052E28E    call       @IntfClear
 0052E293    lea        eax,[ebp-1C]
 0052E296    mov        edx,7
 0052E29B    call       @LStrArrayClr
 0052E2A0    ret
<0052E2A1    jmp        @HandleFinally
<0052E2A6    jmp        0052E273
 0052E2A8    pop        edi
 0052E2A9    pop        esi
 0052E2AA    pop        ebx
 0052E2AB    mov        esp,ebp
 0052E2AD    pop        ebp
 0052E2AE    ret        8
*}
//end;

//0052E448
//procedure sub_0052E448(?:?);
//begin
{*
 0052E448    push       ebp
 0052E449    mov        ebp,esp
 0052E44B    push       ebx
 0052E44C    push       esi
 0052E44D    mov        esi,eax
 0052E44F    mov        ebx,dword ptr [ebp+8]
 0052E452    mov        ecx,ebx
 0052E454    mov        edx,dword ptr ds:[61BF88]; ^gvar_0061DD5C:TZMetadataColumnDefs
 0052E45A    mov        edx,dword ptr [edx]
 0052E45C    mov        eax,esi
 0052E45E    call       004D8E7C
 0052E463    mov        eax,dword ptr [ebx]
 0052E465    mov        edx,dword ptr [eax]
 0052E467    call       dword ptr [edx+1E4]
 0052E46D    mov        eax,dword ptr [ebx]
 0052E46F    mov        edx,1
 0052E474    mov        ecx,dword ptr [eax]
 0052E476    call       dword ptr [ecx+130]
 0052E47C    mov        eax,dword ptr [ebx]
 0052E47E    mov        ecx,52E500; 'ctid'
 0052E483    mov        edx,2
 0052E488    mov        esi,dword ptr [eax]
 0052E48A    call       dword ptr [esi+158]
 0052E490    mov        eax,dword ptr [ebx]
 0052E492    mov        ecx,52E510; 'tid'
 0052E497    mov        edx,4
 0052E49C    mov        esi,dword ptr [eax]
 0052E49E    call       dword ptr [esi+158]
 0052E4A4    mov        eax,dword ptr [ebx]
 0052E4A6    mov        edx,5
 0052E4AB    mov        ecx,dword ptr [eax]
 0052E4AD    call       dword ptr [ecx+130]
 0052E4B3    mov        eax,dword ptr [ebx]
 0052E4B5    mov        edx,6
 0052E4BA    mov        ecx,dword ptr [eax]
 0052E4BC    call       dword ptr [ecx+130]
 0052E4C2    mov        eax,dword ptr [ebx]
 0052E4C4    mov        edx,7
 0052E4C9    mov        ecx,dword ptr [eax]
 0052E4CB    call       dword ptr [ecx+130]
 0052E4D1    mov        eax,dword ptr [ebx]
 0052E4D3    mov        ecx,2
 0052E4D8    mov        edx,4
 0052E4DD    mov        esi,dword ptr [eax]
 0052E4DF    call       dword ptr [esi+140]
 0052E4E5    mov        eax,dword ptr [ebx]
 0052E4E7    mov        edx,dword ptr [eax]
 0052E4E9    call       dword ptr [edx+1D0]
 0052E4EF    pop        esi
 0052E4F0    pop        ebx
 0052E4F1    pop        ebp
 0052E4F2    ret        8
*}
//end;

//0052E514
//procedure sub_0052E514(?:?; ?:?);
//begin
{*
 0052E514    push       ebp
 0052E515    mov        ebp,esp
 0052E517    push       0
 0052E519    push       0
 0052E51B    push       0
 0052E51D    push       0
 0052E51F    push       0
 0052E521    push       0
 0052E523    push       0
 0052E525    push       ebx
 0052E526    push       esi
 0052E527    mov        ebx,eax
 0052E529    xor        eax,eax
 0052E52B    push       ebp
 0052E52C    push       52E615
 0052E531    push       dword ptr fs:[eax]
 0052E534    mov        dword ptr fs:[eax],esp
 0052E537    lea        eax,[ebp-8]
 0052E53A    push       eax
 0052E53B    lea        ecx,[ebp-0C]
 0052E53E    mov        edx,dword ptr [ebp+0C]
 0052E541    mov        eax,ebx
 0052E543    call       004DAB38
 0052E548    mov        edx,dword ptr [ebp-0C]
 0052E54B    mov        ecx,52E62C; 'a.RDB$RELATION_NAME'
 0052E550    mov        eax,ebx
 0052E552    call       0053058C
 0052E557    lea        eax,[ebp-4]
 0052E55A    mov        edx,52E648; ' SELECT null as TABLE_CAT, null as TABLE_SCHEM, a.RDB$RELATION_NAME as TABLE_NAME, b.RDB$FIELD_NAME as COLUMN_NAME, b.RDB$FIELD_POSITION+1 as KEY_SEQ, a.RDB$INDEX_NAME as PK_NAME FROM RDB$RELATION_CONSTRAINTS a JOIN RDB$INDEX_SEGMENTS b ON (a.RDB$INDEX_NAME = b.RDB$INDEX_NAME) WHERE  RDB$CONSTRAINT_TYPE = 'PRIMARY KEY''
 0052E55F    call       @LStrLAsg
 0052E564    cmp        dword ptr [ebp-8],0
>0052E568    je         0052E582
 0052E56A    push       dword ptr [ebp-4]
 0052E56D    push       52E794; ' AND '
 0052E572    push       dword ptr [ebp-8]
 0052E575    lea        eax,[ebp-4]
 0052E578    mov        edx,3
 0052E57D    call       @LStrCatN
 0052E582    lea        eax,[ebp-4]
 0052E585    mov        edx,52E7A4; ' ORDER BY a.RDB$RELATION_NAME, b.RDB$FIELD_NAME'
 0052E58A    call       @LStrCat
 0052E58F    mov        eax,dword ptr [ebp+8]
 0052E592    push       eax
 0052E593    lea        edx,[ebp-18]
 0052E596    mov        eax,ebx
 0052E598    mov        ecx,dword ptr [eax]
 0052E59A    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052E5A0    mov        eax,dword ptr [ebp-18]
 0052E5A3    lea        edx,[ebp-14]
 0052E5A6    mov        ecx,dword ptr [eax]
 0052E5A8    call       dword ptr [ecx+0C]
 0052E5AB    mov        eax,dword ptr [ebp-14]
 0052E5AE    lea        ecx,[ebp-10]
 0052E5B1    mov        edx,dword ptr [ebp-4]
 0052E5B4    mov        esi,dword ptr [eax]
 0052E5B6    call       dword ptr [esi+0C]
 0052E5B9    mov        eax,dword ptr [ebp-10]
 0052E5BC    push       eax
 0052E5BD    lea        ecx,[ebp-1C]
 0052E5C0    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 0052E5C6    mov        edx,dword ptr [edx]
 0052E5C8    mov        eax,ebx
 0052E5CA    call       004D8E7C
 0052E5CF    mov        ecx,dword ptr [ebp-1C]
 0052E5D2    mov        eax,ebx
 0052E5D4    pop        edx
 0052E5D5    call       004D9194
 0052E5DA    xor        eax,eax
 0052E5DC    pop        edx
 0052E5DD    pop        ecx
 0052E5DE    pop        ecx
 0052E5DF    mov        dword ptr fs:[eax],edx
 0052E5E2    push       52E61C
 0052E5E7    lea        eax,[ebp-1C]
 0052E5EA    call       @IntfClear
 0052E5EF    lea        eax,[ebp-18]
 0052E5F2    call       @IntfClear
 0052E5F7    lea        eax,[ebp-14]
 0052E5FA    call       @IntfClear
 0052E5FF    lea        eax,[ebp-10]
 0052E602    call       @IntfClear
 0052E607    lea        eax,[ebp-0C]
 0052E60A    mov        edx,3
 0052E60F    call       @LStrArrayClr
 0052E614    ret
<0052E615    jmp        @HandleFinally
<0052E61A    jmp        0052E5E7
 0052E61C    pop        esi
 0052E61D    pop        ebx
 0052E61E    mov        esp,ebp
 0052E620    pop        ebp
 0052E621    ret        8
*}
//end;

//0052E7D4
//procedure sub_0052E7D4(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052E7D4    push       ebp
 0052E7D5    mov        ebp,esp
 0052E7D7    push       ecx
 0052E7D8    mov        ecx,0A
 0052E7DD    push       0
 0052E7DF    push       0
 0052E7E1    dec        ecx
<0052E7E2    jne        0052E7DD
 0052E7E4    push       ecx
 0052E7E5    xchg       ecx,dword ptr [ebp-4]
 0052E7E8    push       ebx
 0052E7E9    push       esi
 0052E7EA    mov        esi,eax
 0052E7EC    mov        ebx,dword ptr [ebp+8]
 0052E7EF    xor        eax,eax
 0052E7F1    push       ebp
 0052E7F2    push       52EC83
 0052E7F7    push       dword ptr fs:[eax]
 0052E7FA    mov        dword ptr fs:[eax],esp
 0052E7FD    mov        ecx,ebx
 0052E7FF    mov        edx,dword ptr ds:[61B820]; ^gvar_0061DD64:TZMetadataColumnDefs
 0052E805    mov        edx,dword ptr [edx]
 0052E807    mov        eax,esi
 0052E809    call       004D8E7C
 0052E80E    lea        eax,[ebp-8]
 0052E811    push       eax
 0052E812    lea        ecx,[ebp-10]
 0052E815    mov        edx,dword ptr [ebp+0C]
 0052E818    mov        eax,esi
 0052E81A    call       004DAB38
 0052E81F    mov        edx,dword ptr [ebp-10]
 0052E822    mov        ecx,52EC9C; 'RELC_FOR.RDB$RELATION_NAME'
 0052E827    mov        eax,esi
 0052E829    call       0053058C
 0052E82E    lea        eax,[ebp-4]
 0052E831    mov        edx,52ECC0; 'SELECT RELC_PRIM.RDB$RELATION_NAME,  IS_PRIM.RDB$FIELD_NAME,  RELC_FOR.RDB$RELATION_NAME,  IS_FOR.RDB$FIELD_NAME,  IS_FOR.RDB$FIELD_POSITION,  REFC_PRIM.RDB$UPDATE_RULE,  REFC_PRIM.RDB$DELETE_RULE,  RELC_FOR.RDB$CONSTRAINT_NAME,  RELC_PRIM.RDB$CONSTRAINT_NAME  FROM RDB$RELATION_CONSTRAINTS RELC_FOR, RDB$REF_CONSTRAINTS REFC_FOR,  RDB$RELATION_CONSTRAINTS RELC_PRIM, RDB$REF_CONSTRAINTS REFC_PRIM,  RDB$INDEX_SEGMENTS IS_PRIM,  RDB$INDEX_SEGMENTS IS_FOR  WHERE RELC_FOR.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY' AND '
 0052E836    call       @LStrLAsg
 0052E83B    cmp        dword ptr [ebp-8],0
>0052E83F    je         0052E859
 0052E841    push       dword ptr [ebp-4]
 0052E844    push       dword ptr [ebp-8]
 0052E847    push       52EEC8; ' AND '
 0052E84C    lea        eax,[ebp-4]
 0052E84F    mov        edx,3
 0052E854    call       @LStrCatN
 0052E859    push       dword ptr [ebp-4]
 0052E85C    push       52EED8; ' RELC_FOR.RDB$CONSTRAINT_NAME=REFC_FOR.RDB$CONSTRAINT_NAME'
 0052E861    push       52EF1C; ' and REFC_FOR.RDB$CONST_NAME_UQ = RELC_PRIM.RDB$CONSTRAINT_NAME and '
 0052E866    push       52EF6C; ' RELC_PRIM.RDB$CONSTRAINT_TYPE = 'PRIMARY KEY' and '
 0052E86B    push       52EFA8; ' RELC_PRIM.RDB$INDEX_NAME = IS_PRIM.RDB$INDEX_NAME and '
 0052E870    push       52EFE8; ' IS_FOR.RDB$INDEX_NAME = RELC_FOR.RDB$INDEX_NAME   and '
 0052E875    push       52F028; ' IS_PRIM.RDB$FIELD_POSITION = IS_FOR.RDB$FIELD_POSITION  and '
 0052E87A    push       52F070; ' REFC_PRIM.RDB$CONSTRAINT_NAME = RELC_FOR.RDB$CONSTRAINT_NAME '
 0052E87F    push       52F0B8; ' ORDER BY RELC_PRIM.RDB$RELATION_NAME, IS_FOR.RDB$FIELD_POSITION '
 0052E884    lea        eax,[ebp-4]
 0052E887    mov        edx,9
 0052E88C    call       @LStrCatN
 0052E891    lea        edx,[ebp-18]
 0052E894    mov        eax,esi
 0052E896    mov        ecx,dword ptr [eax]
 0052E898    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052E89E    mov        eax,dword ptr [ebp-18]
 0052E8A1    lea        edx,[ebp-14]
 0052E8A4    mov        ecx,dword ptr [eax]
 0052E8A6    call       dword ptr [ecx+0C]
 0052E8A9    mov        eax,dword ptr [ebp-14]
 0052E8AC    lea        ecx,[ebp-0C]
 0052E8AF    mov        edx,dword ptr [ebp-4]
 0052E8B2    mov        esi,dword ptr [eax]
 0052E8B4    call       dword ptr [esi+0C]
>0052E8B7    jmp        0052EC23
 0052E8BC    mov        eax,dword ptr [ebx]
 0052E8BE    mov        edx,dword ptr [eax]
 0052E8C0    call       dword ptr [edx+1E4]
 0052E8C6    mov        eax,dword ptr [ebx]
 0052E8C8    mov        edx,1
 0052E8CD    mov        ecx,dword ptr [eax]
 0052E8CF    call       dword ptr [ecx+130]
 0052E8D5    mov        eax,dword ptr [ebx]
 0052E8D7    mov        edx,2
 0052E8DC    mov        ecx,dword ptr [eax]
 0052E8DE    call       dword ptr [ecx+130]
 0052E8E4    lea        ecx,[ebp-1C]
 0052E8E7    mov        edx,1
 0052E8EC    mov        eax,dword ptr [ebp-0C]
 0052E8EF    mov        esi,dword ptr [eax]
 0052E8F1    call       dword ptr [esi+20]
 0052E8F4    mov        ecx,dword ptr [ebp-1C]
 0052E8F7    mov        eax,dword ptr [ebx]
 0052E8F9    mov        edx,3
 0052E8FE    mov        esi,dword ptr [eax]
 0052E900    call       dword ptr [esi+158]
 0052E906    lea        ecx,[ebp-20]
 0052E909    mov        edx,2
 0052E90E    mov        eax,dword ptr [ebp-0C]
 0052E911    mov        esi,dword ptr [eax]
 0052E913    call       dword ptr [esi+20]
 0052E916    mov        ecx,dword ptr [ebp-20]
 0052E919    mov        eax,dword ptr [ebx]
 0052E91B    mov        edx,4
 0052E920    mov        esi,dword ptr [eax]
 0052E922    call       dword ptr [esi+158]
 0052E928    mov        eax,dword ptr [ebx]
 0052E92A    mov        edx,5
 0052E92F    mov        ecx,dword ptr [eax]
 0052E931    call       dword ptr [ecx+130]
 0052E937    mov        eax,dword ptr [ebx]
 0052E939    mov        edx,6
 0052E93E    mov        ecx,dword ptr [eax]
 0052E940    call       dword ptr [ecx+130]
 0052E946    lea        ecx,[ebp-24]
 0052E949    mov        edx,3
 0052E94E    mov        eax,dword ptr [ebp-0C]
 0052E951    mov        esi,dword ptr [eax]
 0052E953    call       dword ptr [esi+20]
 0052E956    mov        ecx,dword ptr [ebp-24]
 0052E959    mov        eax,dword ptr [ebx]
 0052E95B    mov        edx,7
 0052E960    mov        esi,dword ptr [eax]
 0052E962    call       dword ptr [esi+158]
 0052E968    lea        ecx,[ebp-28]
 0052E96B    mov        edx,4
 0052E970    mov        eax,dword ptr [ebp-0C]
 0052E973    mov        esi,dword ptr [eax]
 0052E975    call       dword ptr [esi+20]
 0052E978    mov        ecx,dword ptr [ebp-28]
 0052E97B    mov        eax,dword ptr [ebx]
 0052E97D    mov        edx,8
 0052E982    mov        esi,dword ptr [eax]
 0052E984    call       dword ptr [esi+158]
 0052E98A    mov        edx,5
 0052E98F    mov        eax,dword ptr [ebp-0C]
 0052E992    mov        ecx,dword ptr [eax]
 0052E994    call       dword ptr [ecx+34]
 0052E997    mov        ecx,eax
 0052E999    add        ecx,1
>0052E99C    jno        0052E9A3
 0052E99E    call       @IntOver
 0052E9A3    mov        eax,dword ptr [ebx]
 0052E9A5    mov        edx,9
 0052E9AA    mov        esi,dword ptr [eax]
 0052E9AC    call       dword ptr [esi+140]
 0052E9B2    lea        ecx,[ebp-2C]
 0052E9B5    mov        edx,6
 0052E9BA    mov        eax,dword ptr [ebp-0C]
 0052E9BD    mov        esi,dword ptr [eax]
 0052E9BF    call       dword ptr [esi+20]
 0052E9C2    mov        eax,dword ptr [ebp-2C]
 0052E9C5    mov        edx,52F104; 'RESTRICT'
 0052E9CA    call       @LStrCmp
>0052E9CF    jne        0052E9EA
 0052E9D1    mov        eax,dword ptr [ebx]
 0052E9D3    mov        ecx,1
 0052E9D8    mov        edx,0A
 0052E9DD    mov        esi,dword ptr [eax]
 0052E9DF    call       dword ptr [esi+140]
>0052E9E5    jmp        0052EABC
 0052E9EA    lea        ecx,[ebp-30]
 0052E9ED    mov        edx,6
 0052E9F2    mov        eax,dword ptr [ebp-0C]
 0052E9F5    mov        esi,dword ptr [eax]
 0052E9F7    call       dword ptr [esi+20]
 0052E9FA    mov        eax,dword ptr [ebp-30]
 0052E9FD    mov        edx,52F118; 'NO ACTION'
 0052EA02    call       @LStrCmp
>0052EA07    jne        0052EA22
 0052EA09    mov        eax,dword ptr [ebx]
 0052EA0B    mov        ecx,3
 0052EA10    mov        edx,0A
 0052EA15    mov        esi,dword ptr [eax]
 0052EA17    call       dword ptr [esi+140]
>0052EA1D    jmp        0052EABC
 0052EA22    lea        ecx,[ebp-34]
 0052EA25    mov        edx,6
 0052EA2A    mov        eax,dword ptr [ebp-0C]
 0052EA2D    mov        esi,dword ptr [eax]
 0052EA2F    call       dword ptr [esi+20]
 0052EA32    mov        eax,dword ptr [ebp-34]
 0052EA35    mov        edx,52F12C; 'SET DEFAULT'
 0052EA3A    call       @LStrCmp
>0052EA3F    jne        0052EA57
 0052EA41    mov        eax,dword ptr [ebx]
 0052EA43    mov        ecx,4
 0052EA48    mov        edx,0A
 0052EA4D    mov        esi,dword ptr [eax]
 0052EA4F    call       dword ptr [esi+140]
>0052EA55    jmp        0052EABC
 0052EA57    lea        ecx,[ebp-38]
 0052EA5A    mov        edx,6
 0052EA5F    mov        eax,dword ptr [ebp-0C]
 0052EA62    mov        esi,dword ptr [eax]
 0052EA64    call       dword ptr [esi+20]
 0052EA67    mov        eax,dword ptr [ebp-38]
 0052EA6A    mov        edx,52F140; 'CASCADE'
 0052EA6F    call       @LStrCmp
>0052EA74    jne        0052EA89
 0052EA76    mov        eax,dword ptr [ebx]
 0052EA78    xor        ecx,ecx
 0052EA7A    mov        edx,0A
 0052EA7F    mov        esi,dword ptr [eax]
 0052EA81    call       dword ptr [esi+140]
>0052EA87    jmp        0052EABC
 0052EA89    lea        ecx,[ebp-3C]
 0052EA8C    mov        edx,6
 0052EA91    mov        eax,dword ptr [ebp-0C]
 0052EA94    mov        esi,dword ptr [eax]
 0052EA96    call       dword ptr [esi+20]
 0052EA99    mov        eax,dword ptr [ebp-3C]
 0052EA9C    mov        edx,52F150; 'SET NULL'
 0052EAA1    call       @LStrCmp
>0052EAA6    jne        0052EABC
 0052EAA8    mov        eax,dword ptr [ebx]
 0052EAAA    mov        ecx,2
 0052EAAF    mov        edx,0A
 0052EAB4    mov        esi,dword ptr [eax]
 0052EAB6    call       dword ptr [esi+140]
 0052EABC    lea        ecx,[ebp-40]
 0052EABF    mov        edx,7
 0052EAC4    mov        eax,dword ptr [ebp-0C]
 0052EAC7    mov        esi,dword ptr [eax]
 0052EAC9    call       dword ptr [esi+20]
 0052EACC    mov        eax,dword ptr [ebp-40]
 0052EACF    mov        edx,52F104; 'RESTRICT'
 0052EAD4    call       @LStrCmp
>0052EAD9    jne        0052EAF4
 0052EADB    mov        eax,dword ptr [ebx]
 0052EADD    mov        ecx,1
 0052EAE2    mov        edx,0B
 0052EAE7    mov        esi,dword ptr [eax]
 0052EAE9    call       dword ptr [esi+140]
>0052EAEF    jmp        0052EBC6
 0052EAF4    lea        ecx,[ebp-44]
 0052EAF7    mov        edx,7
 0052EAFC    mov        eax,dword ptr [ebp-0C]
 0052EAFF    mov        esi,dword ptr [eax]
 0052EB01    call       dword ptr [esi+20]
 0052EB04    mov        eax,dword ptr [ebp-44]
 0052EB07    mov        edx,52F118; 'NO ACTION'
 0052EB0C    call       @LStrCmp
>0052EB11    jne        0052EB2C
 0052EB13    mov        eax,dword ptr [ebx]
 0052EB15    mov        ecx,3
 0052EB1A    mov        edx,0B
 0052EB1F    mov        esi,dword ptr [eax]
 0052EB21    call       dword ptr [esi+140]
>0052EB27    jmp        0052EBC6
 0052EB2C    lea        ecx,[ebp-48]
 0052EB2F    mov        edx,7
 0052EB34    mov        eax,dword ptr [ebp-0C]
 0052EB37    mov        esi,dword ptr [eax]
 0052EB39    call       dword ptr [esi+20]
 0052EB3C    mov        eax,dword ptr [ebp-48]
 0052EB3F    mov        edx,52F12C; 'SET DEFAULT'
 0052EB44    call       @LStrCmp
>0052EB49    jne        0052EB61
 0052EB4B    mov        eax,dword ptr [ebx]
 0052EB4D    mov        ecx,4
 0052EB52    mov        edx,0B
 0052EB57    mov        esi,dword ptr [eax]
 0052EB59    call       dword ptr [esi+140]
>0052EB5F    jmp        0052EBC6
 0052EB61    lea        ecx,[ebp-4C]
 0052EB64    mov        edx,7
 0052EB69    mov        eax,dword ptr [ebp-0C]
 0052EB6C    mov        esi,dword ptr [eax]
 0052EB6E    call       dword ptr [esi+20]
 0052EB71    mov        eax,dword ptr [ebp-4C]
 0052EB74    mov        edx,52F140; 'CASCADE'
 0052EB79    call       @LStrCmp
>0052EB7E    jne        0052EB93
 0052EB80    mov        eax,dword ptr [ebx]
 0052EB82    xor        ecx,ecx
 0052EB84    mov        edx,0B
 0052EB89    mov        esi,dword ptr [eax]
 0052EB8B    call       dword ptr [esi+140]
>0052EB91    jmp        0052EBC6
 0052EB93    lea        ecx,[ebp-50]
 0052EB96    mov        edx,7
 0052EB9B    mov        eax,dword ptr [ebp-0C]
 0052EB9E    mov        esi,dword ptr [eax]
 0052EBA0    call       dword ptr [esi+20]
 0052EBA3    mov        eax,dword ptr [ebp-50]
 0052EBA6    mov        edx,52F150; 'SET NULL'
 0052EBAB    call       @LStrCmp
>0052EBB0    jne        0052EBC6
 0052EBB2    mov        eax,dword ptr [ebx]
 0052EBB4    mov        ecx,2
 0052EBB9    mov        edx,0B
 0052EBBE    mov        esi,dword ptr [eax]
 0052EBC0    call       dword ptr [esi+140]
 0052EBC6    lea        ecx,[ebp-54]
 0052EBC9    mov        edx,8
 0052EBCE    mov        eax,dword ptr [ebp-0C]
 0052EBD1    mov        esi,dword ptr [eax]
 0052EBD3    call       dword ptr [esi+20]
 0052EBD6    mov        ecx,dword ptr [ebp-54]
 0052EBD9    mov        eax,dword ptr [ebx]
 0052EBDB    mov        edx,0C
 0052EBE0    mov        esi,dword ptr [eax]
 0052EBE2    call       dword ptr [esi+158]
 0052EBE8    lea        ecx,[ebp-58]
 0052EBEB    mov        edx,9
 0052EBF0    mov        eax,dword ptr [ebp-0C]
 0052EBF3    mov        esi,dword ptr [eax]
 0052EBF5    call       dword ptr [esi+20]
 0052EBF8    mov        ecx,dword ptr [ebp-58]
 0052EBFB    mov        eax,dword ptr [ebx]
 0052EBFD    mov        edx,0D
 0052EC02    mov        esi,dword ptr [eax]
 0052EC04    call       dword ptr [esi+158]
 0052EC0A    mov        eax,dword ptr [ebx]
 0052EC0C    mov        edx,0E
 0052EC11    mov        ecx,dword ptr [eax]
 0052EC13    call       dword ptr [ecx+130]
 0052EC19    mov        eax,dword ptr [ebx]
 0052EC1B    mov        edx,dword ptr [eax]
 0052EC1D    call       dword ptr [edx+1D0]
 0052EC23    mov        eax,dword ptr [ebp-0C]
 0052EC26    mov        edx,dword ptr [eax]
 0052EC28    call       dword ptr [edx+0C]
 0052EC2B    test       al,al
<0052EC2D    jne        0052E8BC
 0052EC33    mov        eax,dword ptr [ebp-0C]
 0052EC36    mov        edx,dword ptr [eax]
 0052EC38    call       dword ptr [edx+10]
 0052EC3B    xor        eax,eax
 0052EC3D    pop        edx
 0052EC3E    pop        ecx
 0052EC3F    pop        ecx
 0052EC40    mov        dword ptr fs:[eax],edx
 0052EC43    push       52EC8A
 0052EC48    lea        eax,[ebp-58]
 0052EC4B    mov        edx,10
 0052EC50    call       @LStrArrayClr
 0052EC55    lea        eax,[ebp-18]
 0052EC58    call       @IntfClear
 0052EC5D    lea        eax,[ebp-14]
 0052EC60    call       @IntfClear
 0052EC65    lea        eax,[ebp-10]
 0052EC68    call       @LStrClr
 0052EC6D    lea        eax,[ebp-0C]
 0052EC70    call       @IntfClear
 0052EC75    lea        eax,[ebp-8]
 0052EC78    mov        edx,2
 0052EC7D    call       @LStrArrayClr
 0052EC82    ret
<0052EC83    jmp        @HandleFinally
<0052EC88    jmp        0052EC48
 0052EC8A    pop        esi
 0052EC8B    pop        ebx
 0052EC8C    mov        esp,ebp
 0052EC8E    pop        ebp
 0052EC8F    ret        8
*}
//end;

//0052F15C
//procedure sub_0052F15C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0052F15C    push       ebp
 0052F15D    mov        ebp,esp
 0052F15F    push       ecx
 0052F160    mov        ecx,0A
 0052F165    push       0
 0052F167    push       0
 0052F169    dec        ecx
<0052F16A    jne        0052F165
 0052F16C    push       ecx
 0052F16D    xchg       ecx,dword ptr [ebp-4]
 0052F170    push       ebx
 0052F171    push       esi
 0052F172    mov        esi,eax
 0052F174    mov        ebx,dword ptr [ebp+8]
 0052F177    xor        eax,eax
 0052F179    push       ebp
 0052F17A    push       52F60B
 0052F17F    push       dword ptr fs:[eax]
 0052F182    mov        dword ptr fs:[eax],esp
 0052F185    mov        ecx,ebx
 0052F187    mov        edx,dword ptr ds:[61B150]; ^gvar_0061DD68:TZMetadataColumnDefs
 0052F18D    mov        edx,dword ptr [edx]
 0052F18F    mov        eax,esi
 0052F191    call       004D8E7C
 0052F196    lea        eax,[ebp-8]
 0052F199    push       eax
 0052F19A    lea        ecx,[ebp-10]
 0052F19D    mov        edx,dword ptr [ebp+0C]
 0052F1A0    mov        eax,esi
 0052F1A2    call       004DAB38
 0052F1A7    mov        edx,dword ptr [ebp-10]
 0052F1AA    mov        ecx,52F624; 'RC_PRIM.RDB$RELATION_NAME'
 0052F1AF    mov        eax,esi
 0052F1B1    call       0053058C
 0052F1B6    lea        eax,[ebp-4]
 0052F1B9    mov        edx,52F648; ' SELECT RC_PRIM.RDB$RELATION_NAME,  IS_PRIM.RDB$FIELD_NAME,  RC_FOR.RDB$RELATION_NAME,  IS_FOR.RDB$FIELD_NAME,  IS_FOR.RDB$FIELD_POSITION,  REFC_PRIM.RDB$UPDATE_RULE,  REFC_PRIM.RDB$DELETE_RULE,  RC_FOR.RDB$CONSTRAINT_NAME,  RC_PRIM.RDB$CONSTRAINT_NAME  FROM RDB$RELATION_CONSTRAINTS RC_FOR, RDB$REF_CONSTRAINTS REFC_FOR,  RDB$RELATION_CONSTRAINTS RC_PRIM, RDB$REF_CONSTRAINTS REFC_PRIM,  RDB$INDEX_SEGMENTS IS_PRIM, RDB$INDEX_SEGMENTS IS_FOR  WHERE RC_PRIM.RDB$CONSTRAINT_TYPE = 'PRIMARY KEY' and '
 0052F1BE    call       @LStrLAsg
 0052F1C3    cmp        dword ptr [ebp-8],0
>0052F1C7    je         0052F1E1
 0052F1C9    push       dword ptr [ebp-4]
 0052F1CC    push       dword ptr [ebp-8]
 0052F1CF    push       52F844; ' AND '
 0052F1D4    lea        eax,[ebp-4]
 0052F1D7    mov        edx,3
 0052F1DC    call       @LStrCatN
 0052F1E1    push       dword ptr [ebp-4]
 0052F1E4    push       52F854; ' REFC_FOR.RDB$CONST_NAME_UQ = RC_PRIM.RDB$CONSTRAINT_NAME'
 0052F1E9    push       52F898; ' and RC_FOR.RDB$CONSTRAINT_NAME = REFC_FOR.RDB$CONSTRAINT_NAME and '
 0052F1EE    push       52F8E4; ' RC_FOR.RDB$CONSTRAINT_TYPE = 'FOREIGN KEY' and '
 0052F1F3    push       52F920; ' RC_PRIM.RDB$INDEX_NAME = IS_PRIM.RDB$INDEX_NAME and '
 0052F1F8    push       52F960; ' IS_FOR.RDB$INDEX_NAME = RC_FOR.RDB$INDEX_NAME   and '
 0052F1FD    push       52F9A0; ' IS_PRIM.RDB$FIELD_POSITION = IS_FOR.RDB$FIELD_POSITION  and '
 0052F202    push       52F9E8; ' REFC_PRIM.RDB$CONSTRAINT_NAME = RC_FOR.RDB$CONSTRAINT_NAME '
 0052F207    push       52FA30; ' ORDER BY RC_FOR.RDB$RELATION_NAME, IS_FOR.RDB$FIELD_POSITION '
 0052F20C    lea        eax,[ebp-4]
 0052F20F    mov        edx,9
 0052F214    call       @LStrCatN
 0052F219    lea        edx,[ebp-18]
 0052F21C    mov        eax,esi
 0052F21E    mov        ecx,dword ptr [eax]
 0052F220    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052F226    mov        eax,dword ptr [ebp-18]
 0052F229    lea        edx,[ebp-14]
 0052F22C    mov        ecx,dword ptr [eax]
 0052F22E    call       dword ptr [ecx+0C]
 0052F231    mov        eax,dword ptr [ebp-14]
 0052F234    lea        ecx,[ebp-0C]
 0052F237    mov        edx,dword ptr [ebp-4]
 0052F23A    mov        esi,dword ptr [eax]
 0052F23C    call       dword ptr [esi+0C]
>0052F23F    jmp        0052F5AB
 0052F244    mov        eax,dword ptr [ebx]
 0052F246    mov        edx,dword ptr [eax]
 0052F248    call       dword ptr [edx+1E4]
 0052F24E    mov        eax,dword ptr [ebx]
 0052F250    mov        edx,1
 0052F255    mov        ecx,dword ptr [eax]
 0052F257    call       dword ptr [ecx+130]
 0052F25D    mov        eax,dword ptr [ebx]
 0052F25F    mov        edx,2
 0052F264    mov        ecx,dword ptr [eax]
 0052F266    call       dword ptr [ecx+130]
 0052F26C    lea        ecx,[ebp-1C]
 0052F26F    mov        edx,1
 0052F274    mov        eax,dword ptr [ebp-0C]
 0052F277    mov        esi,dword ptr [eax]
 0052F279    call       dword ptr [esi+20]
 0052F27C    mov        ecx,dword ptr [ebp-1C]
 0052F27F    mov        eax,dword ptr [ebx]
 0052F281    mov        edx,3
 0052F286    mov        esi,dword ptr [eax]
 0052F288    call       dword ptr [esi+158]
 0052F28E    lea        ecx,[ebp-20]
 0052F291    mov        edx,2
 0052F296    mov        eax,dword ptr [ebp-0C]
 0052F299    mov        esi,dword ptr [eax]
 0052F29B    call       dword ptr [esi+20]
 0052F29E    mov        ecx,dword ptr [ebp-20]
 0052F2A1    mov        eax,dword ptr [ebx]
 0052F2A3    mov        edx,4
 0052F2A8    mov        esi,dword ptr [eax]
 0052F2AA    call       dword ptr [esi+158]
 0052F2B0    mov        eax,dword ptr [ebx]
 0052F2B2    mov        edx,5
 0052F2B7    mov        ecx,dword ptr [eax]
 0052F2B9    call       dword ptr [ecx+130]
 0052F2BF    mov        eax,dword ptr [ebx]
 0052F2C1    mov        edx,6
 0052F2C6    mov        ecx,dword ptr [eax]
 0052F2C8    call       dword ptr [ecx+130]
 0052F2CE    lea        ecx,[ebp-24]
 0052F2D1    mov        edx,3
 0052F2D6    mov        eax,dword ptr [ebp-0C]
 0052F2D9    mov        esi,dword ptr [eax]
 0052F2DB    call       dword ptr [esi+20]
 0052F2DE    mov        ecx,dword ptr [ebp-24]
 0052F2E1    mov        eax,dword ptr [ebx]
 0052F2E3    mov        edx,7
 0052F2E8    mov        esi,dword ptr [eax]
 0052F2EA    call       dword ptr [esi+158]
 0052F2F0    lea        ecx,[ebp-28]
 0052F2F3    mov        edx,4
 0052F2F8    mov        eax,dword ptr [ebp-0C]
 0052F2FB    mov        esi,dword ptr [eax]
 0052F2FD    call       dword ptr [esi+20]
 0052F300    mov        ecx,dword ptr [ebp-28]
 0052F303    mov        eax,dword ptr [ebx]
 0052F305    mov        edx,8
 0052F30A    mov        esi,dword ptr [eax]
 0052F30C    call       dword ptr [esi+158]
 0052F312    mov        edx,5
 0052F317    mov        eax,dword ptr [ebp-0C]
 0052F31A    mov        ecx,dword ptr [eax]
 0052F31C    call       dword ptr [ecx+34]
 0052F31F    mov        ecx,eax
 0052F321    add        ecx,1
>0052F324    jno        0052F32B
 0052F326    call       @IntOver
 0052F32B    mov        eax,dword ptr [ebx]
 0052F32D    mov        edx,9
 0052F332    mov        esi,dword ptr [eax]
 0052F334    call       dword ptr [esi+140]
 0052F33A    lea        ecx,[ebp-2C]
 0052F33D    mov        edx,6
 0052F342    mov        eax,dword ptr [ebp-0C]
 0052F345    mov        esi,dword ptr [eax]
 0052F347    call       dword ptr [esi+20]
 0052F34A    mov        eax,dword ptr [ebp-2C]
 0052F34D    mov        edx,52FA78; 'RESTRICT'
 0052F352    call       @LStrCmp
>0052F357    jne        0052F372
 0052F359    mov        eax,dword ptr [ebx]
 0052F35B    mov        ecx,1
 0052F360    mov        edx,0A
 0052F365    mov        esi,dword ptr [eax]
 0052F367    call       dword ptr [esi+140]
>0052F36D    jmp        0052F444
 0052F372    lea        ecx,[ebp-30]
 0052F375    mov        edx,6
 0052F37A    mov        eax,dword ptr [ebp-0C]
 0052F37D    mov        esi,dword ptr [eax]
 0052F37F    call       dword ptr [esi+20]
 0052F382    mov        eax,dword ptr [ebp-30]
 0052F385    mov        edx,52FA8C; 'NO ACTION'
 0052F38A    call       @LStrCmp
>0052F38F    jne        0052F3AA
 0052F391    mov        eax,dword ptr [ebx]
 0052F393    mov        ecx,3
 0052F398    mov        edx,0A
 0052F39D    mov        esi,dword ptr [eax]
 0052F39F    call       dword ptr [esi+140]
>0052F3A5    jmp        0052F444
 0052F3AA    lea        ecx,[ebp-34]
 0052F3AD    mov        edx,6
 0052F3B2    mov        eax,dword ptr [ebp-0C]
 0052F3B5    mov        esi,dword ptr [eax]
 0052F3B7    call       dword ptr [esi+20]
 0052F3BA    mov        eax,dword ptr [ebp-34]
 0052F3BD    mov        edx,52FAA0; 'SET DEFAULT'
 0052F3C2    call       @LStrCmp
>0052F3C7    jne        0052F3DF
 0052F3C9    mov        eax,dword ptr [ebx]
 0052F3CB    mov        ecx,4
 0052F3D0    mov        edx,0A
 0052F3D5    mov        esi,dword ptr [eax]
 0052F3D7    call       dword ptr [esi+140]
>0052F3DD    jmp        0052F444
 0052F3DF    lea        ecx,[ebp-38]
 0052F3E2    mov        edx,6
 0052F3E7    mov        eax,dword ptr [ebp-0C]
 0052F3EA    mov        esi,dword ptr [eax]
 0052F3EC    call       dword ptr [esi+20]
 0052F3EF    mov        eax,dword ptr [ebp-38]
 0052F3F2    mov        edx,52FAB4; 'CASCADE'
 0052F3F7    call       @LStrCmp
>0052F3FC    jne        0052F411
 0052F3FE    mov        eax,dword ptr [ebx]
 0052F400    xor        ecx,ecx
 0052F402    mov        edx,0A
 0052F407    mov        esi,dword ptr [eax]
 0052F409    call       dword ptr [esi+140]
>0052F40F    jmp        0052F444
 0052F411    lea        ecx,[ebp-3C]
 0052F414    mov        edx,6
 0052F419    mov        eax,dword ptr [ebp-0C]
 0052F41C    mov        esi,dword ptr [eax]
 0052F41E    call       dword ptr [esi+20]
 0052F421    mov        eax,dword ptr [ebp-3C]
 0052F424    mov        edx,52FAC4; 'SET NULL'
 0052F429    call       @LStrCmp
>0052F42E    jne        0052F444
 0052F430    mov        eax,dword ptr [ebx]
 0052F432    mov        ecx,2
 0052F437    mov        edx,0A
 0052F43C    mov        esi,dword ptr [eax]
 0052F43E    call       dword ptr [esi+140]
 0052F444    lea        ecx,[ebp-40]
 0052F447    mov        edx,7
 0052F44C    mov        eax,dword ptr [ebp-0C]
 0052F44F    mov        esi,dword ptr [eax]
 0052F451    call       dword ptr [esi+20]
 0052F454    mov        eax,dword ptr [ebp-40]
 0052F457    mov        edx,52FA78; 'RESTRICT'
 0052F45C    call       @LStrCmp
>0052F461    jne        0052F47C
 0052F463    mov        eax,dword ptr [ebx]
 0052F465    mov        ecx,1
 0052F46A    mov        edx,0B
 0052F46F    mov        esi,dword ptr [eax]
 0052F471    call       dword ptr [esi+140]
>0052F477    jmp        0052F54E
 0052F47C    lea        ecx,[ebp-44]
 0052F47F    mov        edx,7
 0052F484    mov        eax,dword ptr [ebp-0C]
 0052F487    mov        esi,dword ptr [eax]
 0052F489    call       dword ptr [esi+20]
 0052F48C    mov        eax,dword ptr [ebp-44]
 0052F48F    mov        edx,52FA8C; 'NO ACTION'
 0052F494    call       @LStrCmp
>0052F499    jne        0052F4B4
 0052F49B    mov        eax,dword ptr [ebx]
 0052F49D    mov        ecx,3
 0052F4A2    mov        edx,0B
 0052F4A7    mov        esi,dword ptr [eax]
 0052F4A9    call       dword ptr [esi+140]
>0052F4AF    jmp        0052F54E
 0052F4B4    lea        ecx,[ebp-48]
 0052F4B7    mov        edx,7
 0052F4BC    mov        eax,dword ptr [ebp-0C]
 0052F4BF    mov        esi,dword ptr [eax]
 0052F4C1    call       dword ptr [esi+20]
 0052F4C4    mov        eax,dword ptr [ebp-48]
 0052F4C7    mov        edx,52FAA0; 'SET DEFAULT'
 0052F4CC    call       @LStrCmp
>0052F4D1    jne        0052F4E9
 0052F4D3    mov        eax,dword ptr [ebx]
 0052F4D5    mov        ecx,4
 0052F4DA    mov        edx,0B
 0052F4DF    mov        esi,dword ptr [eax]
 0052F4E1    call       dword ptr [esi+140]
>0052F4E7    jmp        0052F54E
 0052F4E9    lea        ecx,[ebp-4C]
 0052F4EC    mov        edx,7
 0052F4F1    mov        eax,dword ptr [ebp-0C]
 0052F4F4    mov        esi,dword ptr [eax]
 0052F4F6    call       dword ptr [esi+20]
 0052F4F9    mov        eax,dword ptr [ebp-4C]
 0052F4FC    mov        edx,52FAB4; 'CASCADE'
 0052F501    call       @LStrCmp
>0052F506    jne        0052F51B
 0052F508    mov        eax,dword ptr [ebx]
 0052F50A    xor        ecx,ecx
 0052F50C    mov        edx,0B
 0052F511    mov        esi,dword ptr [eax]
 0052F513    call       dword ptr [esi+140]
>0052F519    jmp        0052F54E
 0052F51B    lea        ecx,[ebp-50]
 0052F51E    mov        edx,7
 0052F523    mov        eax,dword ptr [ebp-0C]
 0052F526    mov        esi,dword ptr [eax]
 0052F528    call       dword ptr [esi+20]
 0052F52B    mov        eax,dword ptr [ebp-50]
 0052F52E    mov        edx,52FAC4; 'SET NULL'
 0052F533    call       @LStrCmp
>0052F538    jne        0052F54E
 0052F53A    mov        eax,dword ptr [ebx]
 0052F53C    mov        ecx,2
 0052F541    mov        edx,0B
 0052F546    mov        esi,dword ptr [eax]
 0052F548    call       dword ptr [esi+140]
 0052F54E    lea        ecx,[ebp-54]
 0052F551    mov        edx,8
 0052F556    mov        eax,dword ptr [ebp-0C]
 0052F559    mov        esi,dword ptr [eax]
 0052F55B    call       dword ptr [esi+20]
 0052F55E    mov        ecx,dword ptr [ebp-54]
 0052F561    mov        eax,dword ptr [ebx]
 0052F563    mov        edx,0C
 0052F568    mov        esi,dword ptr [eax]
 0052F56A    call       dword ptr [esi+158]
 0052F570    lea        ecx,[ebp-58]
 0052F573    mov        edx,9
 0052F578    mov        eax,dword ptr [ebp-0C]
 0052F57B    mov        esi,dword ptr [eax]
 0052F57D    call       dword ptr [esi+20]
 0052F580    mov        ecx,dword ptr [ebp-58]
 0052F583    mov        eax,dword ptr [ebx]
 0052F585    mov        edx,0D
 0052F58A    mov        esi,dword ptr [eax]
 0052F58C    call       dword ptr [esi+158]
 0052F592    mov        eax,dword ptr [ebx]
 0052F594    mov        edx,0E
 0052F599    mov        ecx,dword ptr [eax]
 0052F59B    call       dword ptr [ecx+130]
 0052F5A1    mov        eax,dword ptr [ebx]
 0052F5A3    mov        edx,dword ptr [eax]
 0052F5A5    call       dword ptr [edx+1D0]
 0052F5AB    mov        eax,dword ptr [ebp-0C]
 0052F5AE    mov        edx,dword ptr [eax]
 0052F5B0    call       dword ptr [edx+0C]
 0052F5B3    test       al,al
<0052F5B5    jne        0052F244
 0052F5BB    mov        eax,dword ptr [ebp-0C]
 0052F5BE    mov        edx,dword ptr [eax]
 0052F5C0    call       dword ptr [edx+10]
 0052F5C3    xor        eax,eax
 0052F5C5    pop        edx
 0052F5C6    pop        ecx
 0052F5C7    pop        ecx
 0052F5C8    mov        dword ptr fs:[eax],edx
 0052F5CB    push       52F612
 0052F5D0    lea        eax,[ebp-58]
 0052F5D3    mov        edx,10
 0052F5D8    call       @LStrArrayClr
 0052F5DD    lea        eax,[ebp-18]
 0052F5E0    call       @IntfClear
 0052F5E5    lea        eax,[ebp-14]
 0052F5E8    call       @IntfClear
 0052F5ED    lea        eax,[ebp-10]
 0052F5F0    call       @LStrClr
 0052F5F5    lea        eax,[ebp-0C]
 0052F5F8    call       @IntfClear
 0052F5FD    lea        eax,[ebp-8]
 0052F600    mov        edx,2
 0052F605    call       @LStrArrayClr
 0052F60A    ret
<0052F60B    jmp        @HandleFinally
<0052F610    jmp        0052F5D0
 0052F612    pop        esi
 0052F613    pop        ebx
 0052F614    mov        esp,ebp
 0052F616    pop        ebp
 0052F617    ret        8
*}
//end;

//0052FAD0
//procedure sub_0052FAD0(?:?);
//begin
{*
 0052FAD0    push       ebp
 0052FAD1    mov        ebp,esp
 0052FAD3    xor        ecx,ecx
 0052FAD5    push       ecx
 0052FAD6    push       ecx
 0052FAD7    push       ecx
 0052FAD8    push       ecx
 0052FAD9    push       ecx
 0052FADA    push       ebx
 0052FADB    push       esi
 0052FADC    mov        ebx,edx
 0052FADE    mov        esi,eax
 0052FAE0    xor        eax,eax
 0052FAE2    push       ebp
 0052FAE3    push       52FC5F
 0052FAE8    push       dword ptr fs:[eax]
 0052FAEB    mov        dword ptr fs:[eax],esp
 0052FAEE    mov        ecx,ebx
 0052FAF0    mov        edx,dword ptr ds:[61C074]; ^gvar_0061DD70:TZMetadataColumnDefs
 0052FAF6    mov        edx,dword ptr [edx]
 0052FAF8    mov        eax,esi
 0052FAFA    call       004D8E7C
 0052FAFF    lea        eax,[ebp-4]
 0052FB02    mov        edx,52FC74; ' SELECT RDB$TYPE, RDB$TYPE_NAME FROM RDB$TYPES  WHERE RDB$FIELD_NAME = 'RDB$FIELD_TYPE' '
 0052FB07    call       @LStrLAsg
 0052FB0C    lea        edx,[ebp-10]
 0052FB0F    mov        eax,esi
 0052FB11    mov        ecx,dword ptr [eax]
 0052FB13    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052FB19    mov        eax,dword ptr [ebp-10]
 0052FB1C    lea        edx,[ebp-0C]
 0052FB1F    mov        ecx,dword ptr [eax]
 0052FB21    call       dword ptr [ecx+0C]
 0052FB24    mov        eax,dword ptr [ebp-0C]
 0052FB27    lea        ecx,[ebp-8]
 0052FB2A    mov        edx,dword ptr [ebp-4]
 0052FB2D    mov        esi,dword ptr [eax]
 0052FB2F    call       dword ptr [esi+0C]
>0052FB32    jmp        0052FC11
 0052FB37    mov        eax,dword ptr [ebx]
 0052FB39    mov        edx,dword ptr [eax]
 0052FB3B    call       dword ptr [edx+1E4]
 0052FB41    lea        ecx,[ebp-14]
 0052FB44    mov        edx,2
 0052FB49    mov        eax,dword ptr [ebp-8]
 0052FB4C    mov        esi,dword ptr [eax]
 0052FB4E    call       dword ptr [esi+20]
 0052FB51    mov        ecx,dword ptr [ebp-14]
 0052FB54    mov        eax,dword ptr [ebx]
 0052FB56    mov        edx,1
 0052FB5B    mov        esi,dword ptr [eax]
 0052FB5D    call       dword ptr [esi+158]
 0052FB63    mov        edx,1
 0052FB68    mov        eax,dword ptr [ebp-8]
 0052FB6B    mov        ecx,dword ptr [eax]
 0052FB6D    call       dword ptr [ecx+34]
 0052FB70    xor        edx,edx
 0052FB72    call       00532A60
 0052FB77    xor        ecx,ecx
 0052FB79    mov        cl,al
 0052FB7B    mov        eax,dword ptr [ebx]
 0052FB7D    mov        edx,2
 0052FB82    mov        esi,dword ptr [eax]
 0052FB84    call       dword ptr [esi+140]
 0052FB8A    mov        eax,dword ptr [ebx]
 0052FB8C    mov        ecx,9
 0052FB91    mov        edx,3
 0052FB96    mov        esi,dword ptr [eax]
 0052FB98    call       dword ptr [esi+140]
 0052FB9E    mov        eax,dword ptr [ebx]
 0052FBA0    xor        ecx,ecx
 0052FBA2    mov        edx,7
 0052FBA7    mov        esi,dword ptr [eax]
 0052FBA9    call       dword ptr [esi+140]
 0052FBAF    mov        eax,dword ptr [ebx]
 0052FBB1    xor        ecx,ecx
 0052FBB3    mov        edx,8
 0052FBB8    mov        esi,dword ptr [eax]
 0052FBBA    call       dword ptr [esi+134]
 0052FBC0    mov        eax,dword ptr [ebx]
 0052FBC2    xor        ecx,ecx
 0052FBC4    mov        edx,9
 0052FBC9    mov        esi,dword ptr [eax]
 0052FBCB    call       dword ptr [esi+134]
 0052FBD1    mov        eax,dword ptr [ebx]
 0052FBD3    xor        ecx,ecx
 0052FBD5    mov        edx,0B
 0052FBDA    mov        esi,dword ptr [eax]
 0052FBDC    call       dword ptr [esi+134]
 0052FBE2    mov        eax,dword ptr [ebx]
 0052FBE4    xor        ecx,ecx
 0052FBE6    mov        edx,0C
 0052FBEB    mov        esi,dword ptr [eax]
 0052FBED    call       dword ptr [esi+134]
 0052FBF3    mov        eax,dword ptr [ebx]
 0052FBF5    mov        ecx,0A
 0052FBFA    mov        edx,12
 0052FBFF    mov        esi,dword ptr [eax]
 0052FC01    call       dword ptr [esi+140]
 0052FC07    mov        eax,dword ptr [ebx]
 0052FC09    mov        edx,dword ptr [eax]
 0052FC0B    call       dword ptr [edx+1D0]
 0052FC11    mov        eax,dword ptr [ebp-8]
 0052FC14    mov        edx,dword ptr [eax]
 0052FC16    call       dword ptr [edx+0C]
 0052FC19    test       al,al
<0052FC1B    jne        0052FB37
 0052FC21    mov        eax,dword ptr [ebp-8]
 0052FC24    mov        edx,dword ptr [eax]
 0052FC26    call       dword ptr [edx+10]
 0052FC29    xor        eax,eax
 0052FC2B    pop        edx
 0052FC2C    pop        ecx
 0052FC2D    pop        ecx
 0052FC2E    mov        dword ptr fs:[eax],edx
 0052FC31    push       52FC66
 0052FC36    lea        eax,[ebp-14]
 0052FC39    call       @LStrClr
 0052FC3E    lea        eax,[ebp-10]
 0052FC41    call       @IntfClear
 0052FC46    lea        eax,[ebp-0C]
 0052FC49    call       @IntfClear
 0052FC4E    lea        eax,[ebp-8]
 0052FC51    call       @IntfClear
 0052FC56    lea        eax,[ebp-4]
 0052FC59    call       @LStrClr
 0052FC5E    ret
<0052FC5F    jmp        @HandleFinally
<0052FC64    jmp        0052FC36
 0052FC66    pop        esi
 0052FC67    pop        ebx
 0052FC68    mov        esp,ebp
 0052FC6A    pop        ebp
 0052FC6B    ret
*}
//end;

//0052FCD0
//procedure sub_0052FCD0(?:?; ?:?; ?:?);
//begin
{*
 0052FCD0    push       ebp
 0052FCD1    mov        ebp,esp
 0052FCD3    push       0
 0052FCD5    push       0
 0052FCD7    push       0
 0052FCD9    push       0
 0052FCDB    push       0
 0052FCDD    push       0
 0052FCDF    push       0
 0052FCE1    push       ebx
 0052FCE2    push       esi
 0052FCE3    mov        esi,eax
 0052FCE5    mov        ebx,dword ptr [ebp+8]
 0052FCE8    xor        eax,eax
 0052FCEA    push       ebp
 0052FCEB    push       52FF1D
 0052FCF0    push       dword ptr fs:[eax]
 0052FCF3    mov        dword ptr fs:[eax],esp
 0052FCF6    mov        ecx,ebx
 0052FCF8    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 0052FCFE    mov        edx,dword ptr [edx]
 0052FD00    mov        eax,esi
 0052FD02    call       004D8E7C
 0052FD07    lea        eax,[ebp-4]
 0052FD0A    mov        edx,52FF34; ' SELECT I.RDB$RELATION_NAME, I.RDB$UNIQUE_FLAG, I.RDB$INDEX_NAME, ISGMT.RDB$FIELD_POSITION,\tISGMT.RDB$FIELD_NAME, I.RDB$INDEX_TYPE, I.RDB$SEGMENT_COUNT, COUNT (DISTINCT P.RDB$PAGE_NUMBER)  FROM RDB$INDICES I JOIN RDB$INDEX_SEGMENTS ISGMT ON I.RDB$INDEX_NAME = ISGMT.RDB$INDEX_NAME JOIN RDB$RELATIONS R ON (R.RDB$RELATION_NAME = I.RDB$RELATION_NAME) JOIN RDB$PAGES P ON (P.RDB$RELATION_ID = R.RDB$RELATION_ID AND P.RDB$PAGE_TYPE = 7 OR P.RDB$PAGE_TYPE = 6) WHERE '
 0052FD0F    call       @LStrLAsg
 0052FD14    cmp        byte ptr [ebp+10],0
>0052FD18    je         0052FD27
 0052FD1A    lea        eax,[ebp-4]
 0052FD1D    mov        edx,53010C; ' I.RDB$UNIQUE_FLAG = 1 AND '
 0052FD22    call       @LStrCat
 0052FD27    push       dword ptr [ebp-4]
 0052FD2A    push       530130; ' I.RDB$RELATION_NAME = ''
 0052FD2F    push       dword ptr [ebp+14]
 0052FD32    push       530154; '' GROUP BY '
 0052FD37    push       530168; ' I.RDB$INDEX_NAME, I.RDB$RELATION_NAME, I.RDB$UNIQUE_FLAG, '
 0052FD3C    push       5301AC; ' ISGMT.RDB$FIELD_POSITION, ISGMT.RDB$FIELD_NAME, I.RDB$INDEX_TYPE, '
 0052FD41    push       5301F8; ' I.RDB$SEGMENT_COUNT ORDER BY 2,3,4'
 0052FD46    lea        eax,[ebp-4]
 0052FD49    mov        edx,7
 0052FD4E    call       @LStrCatN
 0052FD53    lea        edx,[ebp-10]
 0052FD56    mov        eax,esi
 0052FD58    mov        ecx,dword ptr [eax]
 0052FD5A    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0052FD60    mov        eax,dword ptr [ebp-10]
 0052FD63    lea        edx,[ebp-0C]
 0052FD66    mov        ecx,dword ptr [eax]
 0052FD68    call       dword ptr [ecx+0C]
 0052FD6B    mov        eax,dword ptr [ebp-0C]
 0052FD6E    lea        ecx,[ebp-8]
 0052FD71    mov        edx,dword ptr [ebp-4]
 0052FD74    mov        esi,dword ptr [eax]
 0052FD76    call       dword ptr [esi+0C]
>0052FD79    jmp        0052FECA
 0052FD7E    mov        eax,dword ptr [ebx]
 0052FD80    mov        edx,dword ptr [eax]
 0052FD82    call       dword ptr [edx+1E4]
 0052FD88    mov        eax,dword ptr [ebx]
 0052FD8A    mov        edx,1
 0052FD8F    mov        ecx,dword ptr [eax]
 0052FD91    call       dword ptr [ecx+130]
 0052FD97    mov        eax,dword ptr [ebx]
 0052FD99    mov        edx,2
 0052FD9E    mov        ecx,dword ptr [eax]
 0052FDA0    call       dword ptr [ecx+130]
 0052FDA6    lea        ecx,[ebp-14]
 0052FDA9    mov        edx,1
 0052FDAE    mov        eax,dword ptr [ebp-8]
 0052FDB1    mov        esi,dword ptr [eax]
 0052FDB3    call       dword ptr [esi+20]
 0052FDB6    mov        ecx,dword ptr [ebp-14]
 0052FDB9    mov        eax,dword ptr [ebx]
 0052FDBB    mov        edx,3
 0052FDC0    mov        esi,dword ptr [eax]
 0052FDC2    call       dword ptr [esi+158]
 0052FDC8    mov        edx,2
 0052FDCD    mov        eax,dword ptr [ebp-8]
 0052FDD0    mov        ecx,dword ptr [eax]
 0052FDD2    call       dword ptr [ecx+28]
 0052FDD5    mov        ecx,eax
 0052FDD7    xor        cl,1
 0052FDDA    mov        eax,dword ptr [ebx]
 0052FDDC    mov        edx,4
 0052FDE1    mov        esi,dword ptr [eax]
 0052FDE3    call       dword ptr [esi+134]
 0052FDE9    mov        eax,dword ptr [ebx]
 0052FDEB    mov        edx,5
 0052FDF0    mov        ecx,dword ptr [eax]
 0052FDF2    call       dword ptr [ecx+130]
 0052FDF8    lea        ecx,[ebp-18]
 0052FDFB    mov        edx,3
 0052FE00    mov        eax,dword ptr [ebp-8]
 0052FE03    mov        esi,dword ptr [eax]
 0052FE05    call       dword ptr [esi+20]
 0052FE08    mov        ecx,dword ptr [ebp-18]
 0052FE0B    mov        eax,dword ptr [ebx]
 0052FE0D    mov        edx,6
 0052FE12    mov        esi,dword ptr [eax]
 0052FE14    call       dword ptr [esi+158]
 0052FE1A    mov        eax,dword ptr [ebx]
 0052FE1C    xor        ecx,ecx
 0052FE1E    mov        edx,7
 0052FE23    mov        esi,dword ptr [eax]
 0052FE25    call       dword ptr [esi+140]
 0052FE2B    mov        edx,4
 0052FE30    mov        eax,dword ptr [ebp-8]
 0052FE33    mov        ecx,dword ptr [eax]
 0052FE35    call       dword ptr [ecx+34]
 0052FE38    mov        ecx,eax
 0052FE3A    add        ecx,1
>0052FE3D    jno        0052FE44
 0052FE3F    call       @IntOver
 0052FE44    mov        eax,dword ptr [ebx]
 0052FE46    mov        edx,8
 0052FE4B    mov        esi,dword ptr [eax]
 0052FE4D    call       dword ptr [esi+140]
 0052FE53    lea        ecx,[ebp-1C]
 0052FE56    mov        edx,5
 0052FE5B    mov        eax,dword ptr [ebp-8]
 0052FE5E    mov        esi,dword ptr [eax]
 0052FE60    call       dword ptr [esi+20]
 0052FE63    mov        ecx,dword ptr [ebp-1C]
 0052FE66    mov        eax,dword ptr [ebx]
 0052FE68    mov        edx,9
 0052FE6D    mov        esi,dword ptr [eax]
 0052FE6F    call       dword ptr [esi+158]
 0052FE75    mov        eax,dword ptr [ebx]
 0052FE77    mov        edx,0A
 0052FE7C    mov        ecx,dword ptr [eax]
 0052FE7E    call       dword ptr [ecx+130]
 0052FE84    mov        eax,dword ptr [ebx]
 0052FE86    mov        edx,0B
 0052FE8B    mov        ecx,dword ptr [eax]
 0052FE8D    call       dword ptr [ecx+130]
 0052FE93    mov        edx,7
 0052FE98    mov        eax,dword ptr [ebp-8]
 0052FE9B    mov        ecx,dword ptr [eax]
 0052FE9D    call       dword ptr [ecx+34]
 0052FEA0    mov        ecx,eax
 0052FEA2    mov        eax,dword ptr [ebx]
 0052FEA4    mov        edx,0C
 0052FEA9    mov        esi,dword ptr [eax]
 0052FEAB    call       dword ptr [esi+140]
 0052FEB1    mov        eax,dword ptr [ebx]
 0052FEB3    mov        edx,0D
 0052FEB8    mov        ecx,dword ptr [eax]
 0052FEBA    call       dword ptr [ecx+130]
 0052FEC0    mov        eax,dword ptr [ebx]
 0052FEC2    mov        edx,dword ptr [eax]
 0052FEC4    call       dword ptr [edx+1D0]
 0052FECA    mov        eax,dword ptr [ebp-8]
 0052FECD    mov        edx,dword ptr [eax]
 0052FECF    call       dword ptr [edx+0C]
 0052FED2    test       al,al
<0052FED4    jne        0052FD7E
 0052FEDA    mov        eax,dword ptr [ebp-8]
 0052FEDD    mov        edx,dword ptr [eax]
 0052FEDF    call       dword ptr [edx+10]
 0052FEE2    xor        eax,eax
 0052FEE4    pop        edx
 0052FEE5    pop        ecx
 0052FEE6    pop        ecx
 0052FEE7    mov        dword ptr fs:[eax],edx
 0052FEEA    push       52FF24
 0052FEEF    lea        eax,[ebp-1C]
 0052FEF2    mov        edx,3
 0052FEF7    call       @LStrArrayClr
 0052FEFC    lea        eax,[ebp-10]
 0052FEFF    call       @IntfClear
 0052FF04    lea        eax,[ebp-0C]
 0052FF07    call       @IntfClear
 0052FF0C    lea        eax,[ebp-8]
 0052FF0F    call       @IntfClear
 0052FF14    lea        eax,[ebp-4]
 0052FF17    call       @LStrClr
 0052FF1C    ret
<0052FF1D    jmp        @HandleFinally
<0052FF22    jmp        0052FEEF
 0052FF24    pop        esi
 0052FF25    pop        ebx
 0052FF26    mov        esp,ebp
 0052FF28    pop        ebp
 0052FF29    ret        10
*}
//end;

//0053021C
//procedure sub_0053021C(?:?; ?:?);
//begin
{*
 0053021C    push       ebp
 0053021D    mov        ebp,esp
 0053021F    push       0
 00530221    push       0
 00530223    push       0
 00530225    push       0
 00530227    push       0
 00530229    push       0
 0053022B    push       ebx
 0053022C    push       esi
 0053022D    mov        esi,eax
 0053022F    mov        ebx,dword ptr [ebp+8]
 00530232    xor        eax,eax
 00530234    push       ebp
 00530235    push       53035A
 0053023A    push       dword ptr fs:[eax]
 0053023D    mov        dword ptr fs:[eax],esp
 00530240    mov        ecx,ebx
 00530242    mov        edx,dword ptr ds:[61C498]; ^gvar_0061DD78:TZMetadataColumnDefs
 00530248    mov        edx,dword ptr [edx]
 0053024A    mov        eax,esi
 0053024C    call       004D8E7C
 00530251    lea        eax,[ebp-8]
 00530254    push       eax
 00530255    mov        ecx,530374; 'RDB$GENERATOR_NAME'
 0053025A    mov        edx,dword ptr [ebp+0C]
 0053025D    mov        eax,esi
 0053025F    call       0053058C
 00530264    lea        eax,[ebp-4]
 00530267    mov        edx,530390; ' SELECT RDB$GENERATOR_NAME FROM RDB$GENERATORS WHERE (RDB$SYSTEM_FLAG IS NULL OR RDB$SYSTEM_FLAG = 0)'
 0053026C    call       @LStrLAsg
 00530271    cmp        dword ptr [ebp-8],0
>00530275    je         0053028F
 00530277    push       dword ptr [ebp-4]
 0053027A    push       530400; ' AND '
 0053027F    push       dword ptr [ebp-8]
 00530282    lea        eax,[ebp-4]
 00530285    mov        edx,3
 0053028A    call       @LStrCatN
 0053028F    lea        edx,[ebp-14]
 00530292    mov        eax,esi
 00530294    mov        ecx,dword ptr [eax]
 00530296    call       dword ptr [ecx+238]; TZInterbase6DatabaseMetadata.sub_004D8E64
 0053029C    mov        eax,dword ptr [ebp-14]
 0053029F    lea        edx,[ebp-10]
 005302A2    mov        ecx,dword ptr [eax]
 005302A4    call       dword ptr [ecx+0C]
 005302A7    mov        eax,dword ptr [ebp-10]
 005302AA    lea        ecx,[ebp-0C]
 005302AD    mov        edx,dword ptr [ebp-4]
 005302B0    mov        esi,dword ptr [eax]
 005302B2    call       dword ptr [esi+0C]
>005302B5    jmp        0053030B
 005302B7    mov        eax,dword ptr [ebx]
 005302B9    mov        edx,dword ptr [eax]
 005302BB    call       dword ptr [edx+1E4]
 005302C1    mov        eax,dword ptr [ebx]
 005302C3    mov        edx,1
 005302C8    mov        ecx,dword ptr [eax]
 005302CA    call       dword ptr [ecx+130]
 005302D0    mov        eax,dword ptr [ebx]
 005302D2    mov        edx,2
 005302D7    mov        ecx,dword ptr [eax]
 005302D9    call       dword ptr [ecx+130]
 005302DF    lea        ecx,[ebp-18]
 005302E2    mov        edx,1
 005302E7    mov        eax,dword ptr [ebp-0C]
 005302EA    mov        esi,dword ptr [eax]
 005302EC    call       dword ptr [esi+20]
 005302EF    mov        ecx,dword ptr [ebp-18]
 005302F2    mov        eax,dword ptr [ebx]
 005302F4    mov        edx,3
 005302F9    mov        esi,dword ptr [eax]
 005302FB    call       dword ptr [esi+158]
 00530301    mov        eax,dword ptr [ebx]
 00530303    mov        edx,dword ptr [eax]
 00530305    call       dword ptr [edx+1D0]
 0053030B    mov        eax,dword ptr [ebp-0C]
 0053030E    mov        edx,dword ptr [eax]
 00530310    call       dword ptr [edx+0C]
 00530313    test       al,al
<00530315    jne        005302B7
 00530317    mov        eax,dword ptr [ebp-0C]
 0053031A    mov        edx,dword ptr [eax]
 0053031C    call       dword ptr [edx+10]
 0053031F    xor        eax,eax
 00530321    pop        edx
 00530322    pop        ecx
 00530323    pop        ecx
 00530324    mov        dword ptr fs:[eax],edx
 00530327    push       530361
 0053032C    lea        eax,[ebp-18]
 0053032F    call       @LStrClr
 00530334    lea        eax,[ebp-14]
 00530337    call       @IntfClear
 0053033C    lea        eax,[ebp-10]
 0053033F    call       @IntfClear
 00530344    lea        eax,[ebp-0C]
 00530347    call       @IntfClear
 0053034C    lea        eax,[ebp-8]
 0053034F    mov        edx,2
 00530354    call       @LStrArrayClr
 00530359    ret
<0053035A    jmp        @HandleFinally
<0053035F    jmp        0053032C
 00530361    pop        esi
 00530362    pop        ebx
 00530363    mov        esp,ebp
 00530365    pop        ebp
 00530366    ret        8
*}
//end;

//00530408
//function sub_00530408(?:?):Boolean;
//begin
{*
 00530408    cmp        dl,1
 0053040B    sete       al
 0053040E    ret
*}
//end;

//00530410
//function sub_00530410(?:?; ?:?):?;
//begin
{*
 00530410    cmp        dl,1
>00530413    jne        00530419
 00530415    test       cl,cl
>00530417    je         0053041C
 00530419    xor        eax,eax
 0053041B    ret
 0053041C    mov        al,1
 0053041E    ret
*}
//end;

//00530420
//procedure sub_00530420(?:TZInterbase6DatabaseMetadata; ?:AnsiString; ?:AnsiString);
//begin
{*
 00530420    push       ebp
 00530421    mov        ebp,esp
 00530423    push       ecx
 00530424    push       ebx
 00530425    mov        ebx,ecx
 00530427    mov        dword ptr [ebp-4],edx
 0053042A    mov        eax,dword ptr [ebp-4]
 0053042D    call       @LStrAddRef
 00530432    xor        eax,eax
 00530434    push       ebp
 00530435    push       5304EE
 0053043A    push       dword ptr fs:[eax]
 0053043D    mov        dword ptr fs:[eax],esp
 00530440    mov        eax,dword ptr [ebp-4]
 00530443    mov        edx,530504; 'S'
 00530448    call       @LStrCmp
>0053044D    jne        0053045D
 0053044F    mov        eax,ebx
 00530451    mov        edx,530510; 'SELECT'
 00530456    call       @LStrAsg
>0053045B    jmp        005304D8
 0053045D    mov        eax,dword ptr [ebp-4]
 00530460    mov        edx,530520; 'I'
 00530465    call       @LStrCmp
>0053046A    jne        0053047A
 0053046C    mov        eax,ebx
 0053046E    mov        edx,53052C; 'INSERT'
 00530473    call       @LStrAsg
>00530478    jmp        005304D8
 0053047A    mov        eax,dword ptr [ebp-4]
 0053047D    mov        edx,53053C; 'U'
 00530482    call       @LStrCmp
>00530487    jne        00530497
 00530489    mov        eax,ebx
 0053048B    mov        edx,530548; 'UPDATE'
 00530490    call       @LStrAsg
>00530495    jmp        005304D8
 00530497    mov        eax,dword ptr [ebp-4]
 0053049A    mov        edx,530558; 'D'
 0053049F    call       @LStrCmp
>005304A4    jne        005304B4
 005304A6    mov        eax,ebx
 005304A8    mov        edx,530564; 'DELETE'
 005304AD    call       @LStrAsg
>005304B2    jmp        005304D8
 005304B4    mov        eax,dword ptr [ebp-4]
 005304B7    mov        edx,530574; 'R'
 005304BC    call       @LStrCmp
>005304C1    jne        005304D1
 005304C3    mov        eax,ebx
 005304C5    mov        edx,530580; 'REFERENCE'
 005304CA    call       @LStrAsg
>005304CF    jmp        005304D8
 005304D1    mov        eax,ebx
 005304D3    call       @LStrClr
 005304D8    xor        eax,eax
 005304DA    pop        edx
 005304DB    pop        ecx
 005304DC    pop        ecx
 005304DD    mov        dword ptr fs:[eax],edx
 005304E0    push       5304F5
 005304E5    lea        eax,[ebp-4]
 005304E8    call       @LStrClr
 005304ED    ret
<005304EE    jmp        @HandleFinally
<005304F3    jmp        005304E5
 005304F5    pop        ebx
 005304F6    pop        ecx
 005304F7    pop        ebp
 005304F8    ret
*}
//end;

//0053058C
//procedure sub_0053058C(?:TZInterbase6DatabaseMetadata; ?:AnsiString; ?:AnsiString; ?:?);
//begin
{*
 0053058C    push       ebp
 0053058D    mov        ebp,esp
 0053058F    add        esp,0FFFFFFC0
 00530592    push       ebx
 00530593    push       esi
 00530594    xor        ebx,ebx
 00530596    mov        dword ptr [ebp-10],ebx
 00530599    mov        dword ptr [ebp-0C],ebx
 0053059C    mov        dword ptr [ebp-8],ecx
 0053059F    mov        dword ptr [ebp-4],edx
 005305A2    mov        ebx,eax
 005305A4    mov        esi,dword ptr [ebp+8]
 005305A7    mov        eax,dword ptr [ebp-4]
 005305AA    call       @LStrAddRef
 005305AF    mov        eax,dword ptr [ebp-8]
 005305B2    call       @LStrAddRef
 005305B7    xor        eax,eax
 005305B9    push       ebp
 005305BA    push       5306A4
 005305BF    push       dword ptr fs:[eax]
 005305C2    mov        dword ptr fs:[eax],esp
 005305C5    mov        eax,dword ptr [ebp-4]
 005305C8    call       @LStrLen
 005305CD    cmp        eax,3E
>005305D0    jle        005305F3
 005305D2    lea        edx,[ebp-10]
 005305D5    mov        eax,[0061B238]; ^#122.sResString71:TResStringRec
 005305DA    call       LoadResString
 005305DF    mov        ecx,dword ptr [ebp-10]
 005305E2    mov        dl,1
 005305E4    mov        eax,[004C6D20]; EZSQLException
 005305E9    call       EZSQLException.Create; EZSQLException.Create
 005305EE    call       @RaiseExcept
 005305F3    mov        eax,dword ptr [ebp-4]
 005305F6    mov        edx,5306BC; '%'
 005305FB    call       @LStrCmp
>00530600    je         00530689
 00530606    cmp        dword ptr [ebp-4],0
>0053060A    je         00530689
 0053060C    mov        edx,dword ptr [ebp-4]
 0053060F    mov        eax,ebx
 00530611    call       005306F8
 00530616    test       al,al
>00530618    je         00530650
 0053061A    lea        ecx,[ebp-0C]
 0053061D    mov        edx,dword ptr [ebp-4]
 00530620    mov        eax,ebx
 00530622    call       00530868
 00530627    push       esi
 00530628    mov        eax,dword ptr [ebp-8]
 0053062B    mov        dword ptr [ebp-20],eax
 0053062E    mov        byte ptr [ebp-1C],0B
 00530632    mov        eax,dword ptr [ebp-0C]
 00530635    mov        dword ptr [ebp-18],eax
 00530638    mov        byte ptr [ebp-14],0B
 0053063C    lea        edx,[ebp-20]
 0053063F    mov        ecx,1
 00530644    mov        eax,5306C8; '%s = '%s''
 00530649    call       Format
>0053064E    jmp        00530689
 00530650    push       esi
 00530651    mov        eax,dword ptr [ebp-8]
 00530654    mov        dword ptr [ebp-40],eax
 00530657    mov        byte ptr [ebp-3C],0B
 0053065B    xor        eax,eax
 0053065D    mov        dword ptr [ebp-38],eax
 00530660    mov        byte ptr [ebp-34],0B
 00530664    mov        eax,dword ptr [ebp-4]
 00530667    mov        dword ptr [ebp-30],eax
 0053066A    mov        byte ptr [ebp-2C],0B
 0053066E    xor        eax,eax
 00530670    mov        dword ptr [ebp-28],eax
 00530673    mov        byte ptr [ebp-24],0B
 00530677    lea        edx,[ebp-40]
 0053067A    mov        ecx,3
 0053067F    mov        eax,5306DC; '%s || '%s' like '%s%s%%''
 00530684    call       Format
 00530689    xor        eax,eax
 0053068B    pop        edx
 0053068C    pop        ecx
 0053068D    pop        ecx
 0053068E    mov        dword ptr fs:[eax],edx
 00530691    push       5306AB
 00530696    lea        eax,[ebp-10]
 00530699    mov        edx,4
 0053069E    call       @LStrArrayClr
 005306A3    ret
<005306A4    jmp        @HandleFinally
<005306A9    jmp        00530696
 005306AB    pop        esi
 005306AC    pop        ebx
 005306AD    mov        esp,ebp
 005306AF    pop        ebp
 005306B0    ret        4
*}
//end;

//005306F8
//function sub_005306F8(?:TZInterbase6DatabaseMetadata; ?:AnsiString):?;
//begin
{*
 005306F8    push       ebp
 005306F9    mov        ebp,esp
 005306FB    add        esp,0FFFFFFC4
 005306FE    push       ebx
 005306FF    push       esi
 00530700    push       edi
 00530701    xor        ecx,ecx
 00530703    mov        dword ptr [ebp-38],ecx
 00530706    mov        dword ptr [ebp-34],ecx
 00530709    mov        dword ptr [ebp-30],ecx
 0053070C    mov        dword ptr [ebp-8],ecx
 0053070F    mov        esi,edx
 00530711    mov        edi,eax
 00530713    xor        eax,eax
 00530715    push       ebp
 00530716    push       530855
 0053071B    push       dword ptr fs:[eax]
 0053071E    mov        dword ptr fs:[eax],esp
 00530721    mov        byte ptr [ebp-1],0
 00530725    mov        byte ptr [ebp-3],0
 00530729    xor        ebx,ebx
 0053072B    lea        edx,[ebp-8]
 0053072E    mov        eax,edi
 00530730    mov        ecx,dword ptr [eax]
 00530732    call       dword ptr [ecx+0D0]; TZInterbase6DatabaseMetadata.sub_0052B7C4
 00530738    lea        edx,[ebp-2C]
 0053073B    mov        eax,edi
 0053073D    call       004DACE4
 00530742    mov        eax,esi
 00530744    call       @LStrLen
 00530749    test       eax,eax
>0053074B    jle        0053082E
 00530751    mov        dword ptr [ebp-0C],eax
 00530754    mov        edi,1
 00530759    test       bl,bl
>0053075B    jne        00530780
 0053075D    dec        edi
 0053075E    test       esi,esi
>00530760    je         00530767
 00530762    cmp        edi,dword ptr [esi-4]
>00530765    jb         0053076C
 00530767    call       @BoundErr
 0053076C    inc        edi
 0053076D    mov        al,byte ptr [esi+edi-1]
 00530771    and        eax,0FF
 00530776    bt         dword ptr [ebp-2C],eax
>0053077A    jb         00530832
 00530780    lea        eax,[ebp-30]
 00530783    dec        edi
 00530784    test       esi,esi
>00530786    je         0053078D
 00530788    cmp        edi,dword ptr [esi-4]
>0053078B    jb         00530792
 0053078D    call       @BoundErr
 00530792    inc        edi
 00530793    mov        dl,byte ptr [esi+edi-1]
 00530797    call       @LStrFromChar
 0053079C    mov        eax,dword ptr [ebp-30]
 0053079F    mov        edx,dword ptr [ebp-8]
 005307A2    call       @LStrCmp
>005307A7    jne        005307C1
 005307A9    lea        eax,[ebp-34]
 005307AC    lea        edx,[ebp-3]
 005307AF    call       @LStrFromString
 005307B4    mov        eax,dword ptr [ebp-34]
 005307B7    mov        edx,dword ptr [ebp-8]
 005307BA    call       @LStrCmp
>005307BF    jne        005307C5
 005307C1    xor        ebx,ebx
>005307C3    jmp        005307C7
 005307C5    mov        bl,1
 005307C7    test       bl,bl
>005307C9    je         005307FA
 005307CB    lea        eax,[ebp-38]
 005307CE    dec        edi
 005307CF    test       esi,esi
>005307D1    je         005307D8
 005307D3    cmp        edi,dword ptr [esi-4]
>005307D6    jb         005307DD
 005307D8    call       @BoundErr
 005307DD    inc        edi
 005307DE    mov        dl,byte ptr [esi+edi-1]
 005307E2    call       @LStrFromChar
 005307E7    mov        eax,dword ptr [ebp-38]
 005307EA    mov        edx,dword ptr [ebp-8]
 005307ED    call       @LStrCmp
>005307F2    jne        005307FA
 005307F4    mov        byte ptr [ebp-3],0
>005307F8    jmp        00530824
 005307FA    lea        eax,[ebp-3C]
 005307FD    dec        edi
 005307FE    test       esi,esi
>00530800    je         00530807
 00530802    cmp        edi,dword ptr [esi-4]
>00530805    jb         0053080C
 00530807    call       @BoundErr
 0053080C    inc        edi
 0053080D    mov        dl,byte ptr [esi+edi-1]
 00530811    mov        byte ptr [eax+1],dl
 00530814    mov        byte ptr [eax],1
 00530817    lea        edx,[ebp-3C]
 0053081A    lea        eax,[ebp-3]
 0053081D    mov        cl,1
 0053081F    call       @PStrNCpy
 00530824    inc        edi
 00530825    dec        dword ptr [ebp-0C]
<00530828    jne        00530759
 0053082E    mov        byte ptr [ebp-1],1
 00530832    xor        eax,eax
 00530834    pop        edx
 00530835    pop        ecx
 00530836    pop        ecx
 00530837    mov        dword ptr fs:[eax],edx
 0053083A    push       53085C
 0053083F    lea        eax,[ebp-38]
 00530842    mov        edx,3
 00530847    call       @LStrArrayClr
 0053084C    lea        eax,[ebp-8]
 0053084F    call       @LStrClr
 00530854    ret
<00530855    jmp        @HandleFinally
<0053085A    jmp        0053083F
 0053085C    mov        al,byte ptr [ebp-1]
 0053085F    pop        edi
 00530860    pop        esi
 00530861    pop        ebx
 00530862    mov        esp,ebp
 00530864    pop        ebp
 00530865    ret
*}
//end;

//00530868
//procedure sub_00530868(?:TZInterbase6DatabaseMetadata; ?:AnsiString; ?:AnsiString);
//begin
{*
 00530868    push       ebp
 00530869    mov        ebp,esp
 0053086B    push       0
 0053086D    push       0
 0053086F    push       0
 00530871    push       0
 00530873    push       0
 00530875    push       0
 00530877    push       0
 00530879    push       0
 0053087B    push       ebx
 0053087C    push       esi
 0053087D    push       edi
 0053087E    mov        dword ptr [ebp-4],ecx
 00530881    mov        esi,edx
 00530883    mov        ebx,eax
 00530885    xor        eax,eax
 00530887    push       ebp
 00530888    push       5309E3
 0053088D    push       dword ptr fs:[eax]
 00530890    mov        dword ptr fs:[eax],esp
 00530893    mov        byte ptr [ebp-6],0
 00530897    mov        eax,dword ptr [ebp-4]
 0053089A    call       @LStrClr
 0053089F    lea        edx,[ebp-0C]
 005308A2    mov        eax,ebx
 005308A4    mov        ecx,dword ptr [eax]
 005308A6    call       dword ptr [ecx+0D0]; TZInterbase6DatabaseMetadata.sub_0052B7C4
 005308AC    mov        eax,esi
 005308AE    call       @LStrLen
 005308B3    mov        edi,eax
 005308B5    test       edi,edi
>005308B7    jle        005309BB
 005308BD    mov        ebx,1
 005308C2    lea        eax,[ebp-10]
 005308C5    dec        ebx
 005308C6    test       esi,esi
>005308C8    je         005308CF
 005308CA    cmp        ebx,dword ptr [esi-4]
>005308CD    jb         005308D4
 005308CF    call       @BoundErr
 005308D4    inc        ebx
 005308D5    mov        dl,byte ptr [esi+ebx-1]
 005308D9    call       @LStrFromChar
 005308DE    mov        eax,dword ptr [ebp-10]
 005308E1    mov        edx,dword ptr [ebp-0C]
 005308E4    call       @LStrCmp
>005308E9    je         00530941
 005308EB    lea        eax,[ebp-14]
 005308EE    dec        ebx
 005308EF    test       esi,esi
>005308F1    je         005308F8
 005308F3    cmp        ebx,dword ptr [esi-4]
>005308F6    jb         005308FD
 005308F8    call       @BoundErr
 005308FD    inc        ebx
 005308FE    mov        dl,byte ptr [esi+ebx-1]
 00530902    call       @LStrFromChar
 00530907    mov        edx,dword ptr [ebp-14]
 0053090A    mov        eax,dword ptr [ebp-4]
 0053090D    call       @LStrCat
 00530912    mov        eax,dword ptr [ebp-4]
 00530915    lea        eax,[ebp-18]
 00530918    dec        ebx
 00530919    test       esi,esi
>0053091B    je         00530922
 0053091D    cmp        ebx,dword ptr [esi-4]
>00530920    jb         00530927
 00530922    call       @BoundErr
 00530927    inc        ebx
 00530928    mov        dl,byte ptr [esi+ebx-1]
 0053092C    mov        byte ptr [eax+1],dl
 0053092F    mov        byte ptr [eax],1
 00530932    lea        edx,[ebp-18]
 00530935    lea        eax,[ebp-6]
 00530938    mov        cl,1
 0053093A    call       @PStrNCpy
>0053093F    jmp        005309B3
 00530941    lea        eax,[ebp-1C]
 00530944    lea        edx,[ebp-6]
 00530947    call       @LStrFromString
 0053094C    mov        eax,dword ptr [ebp-1C]
 0053094F    mov        edx,dword ptr [ebp-0C]
 00530952    call       @LStrCmp
>00530957    jne        00530989
 00530959    lea        eax,[ebp-20]
 0053095C    dec        ebx
 0053095D    test       esi,esi
>0053095F    je         00530966
 00530961    cmp        ebx,dword ptr [esi-4]
>00530964    jb         0053096B
 00530966    call       @BoundErr
 0053096B    inc        ebx
 0053096C    mov        dl,byte ptr [esi+ebx-1]
 00530970    call       @LStrFromChar
 00530975    mov        edx,dword ptr [ebp-20]
 00530978    mov        eax,dword ptr [ebp-4]
 0053097B    call       @LStrCat
 00530980    mov        eax,dword ptr [ebp-4]
 00530983    mov        byte ptr [ebp-6],0
>00530987    jmp        005309B3
 00530989    lea        eax,[ebp-18]
 0053098C    dec        ebx
 0053098D    test       esi,esi
>0053098F    je         00530996
 00530991    cmp        ebx,dword ptr [esi-4]
>00530994    jb         0053099B
 00530996    call       @BoundErr
 0053099B    inc        ebx
 0053099C    mov        dl,byte ptr [esi+ebx-1]
 005309A0    mov        byte ptr [eax+1],dl
 005309A3    mov        byte ptr [eax],1
 005309A6    lea        edx,[ebp-18]
 005309A9    lea        eax,[ebp-6]
 005309AC    mov        cl,1
 005309AE    call       @PStrNCpy
 005309B3    inc        ebx
 005309B4    dec        edi
<005309B5    jne        005308C2
 005309BB    xor        eax,eax
 005309BD    pop        edx
 005309BE    pop        ecx
 005309BF    pop        ecx
 005309C0    mov        dword ptr fs:[eax],edx
 005309C3    push       5309EA
 005309C8    lea        eax,[ebp-20]
 005309CB    mov        edx,2
 005309D0    call       @LStrArrayClr
 005309D5    lea        eax,[ebp-14]
 005309D8    mov        edx,3
 005309DD    call       @LStrArrayClr
 005309E2    ret
<005309E3    jmp        @HandleFinally
<005309E8    jmp        005309C8
 005309EA    pop        edi
 005309EB    pop        esi
 005309EC    pop        ebx
 005309ED    mov        esp,ebp
 005309EF    pop        ebp
 005309F0    ret
*}
//end;

//005309F4
//procedure sub_005309F4(?:TZInterbase6DatabaseMetadata; ?:AnsiString);
//begin
{*
 005309F4    push       ebp
 005309F5    mov        ebp,esp
 005309F7    push       0
 005309F9    push       0
 005309FB    push       ebx
 005309FC    push       esi
 005309FD    mov        esi,edx
 005309FF    mov        ebx,eax
 00530A01    xor        eax,eax
 00530A03    push       ebp
 00530A04    push       530A6A
 00530A09    push       dword ptr fs:[eax]
 00530A0C    mov        dword ptr fs:[eax],esp
 00530A0F    cmp        dword ptr [ebx+24],0; TZInterbase6DatabaseMetadata.?f24:String
>00530A13    jne        00530A42
 00530A15    lea        edx,[ebp-8]
 00530A18    mov        eax,dword ptr [ebx+28]; TZInterbase6DatabaseMetadata.?f28:TZInterbase6Connection
 00530A1B    call       00539D50
 00530A20    mov        eax,dword ptr [ebp-8]
 00530A23    push       eax
 00530A24    mov        eax,dword ptr [ebx+28]; TZInterbase6DatabaseMetadata.?f28:TZInterbase6Connection
 00530A27    call       00539D44
 00530A2C    mov        edx,eax
 00530A2E    lea        ecx,[ebp-4]
 00530A31    pop        eax
 00530A32    call       00533F04
 00530A37    mov        edx,dword ptr [ebp-4]
 00530A3A    lea        eax,[ebx+24]; TZInterbase6DatabaseMetadata.?f24:String
 00530A3D    call       @LStrAsg
 00530A42    mov        eax,esi
 00530A44    mov        edx,dword ptr [ebx+24]; TZInterbase6DatabaseMetadata.?f24:String
 00530A47    call       @LStrAsg
 00530A4C    xor        eax,eax
 00530A4E    pop        edx
 00530A4F    pop        ecx
 00530A50    pop        ecx
 00530A51    mov        dword ptr fs:[eax],edx
 00530A54    push       530A71
 00530A59    lea        eax,[ebp-8]
 00530A5C    call       @IntfClear
 00530A61    lea        eax,[ebp-4]
 00530A64    call       @LStrClr
 00530A69    ret
<00530A6A    jmp        @HandleFinally
<00530A6F    jmp        00530A59
 00530A71    pop        esi
 00530A72    pop        ebx
 00530A73    pop        ecx
 00530A74    pop        ecx
 00530A75    pop        ebp
 00530A76    ret
*}
//end;

Initialization
Finalization
//00530A78
{*
 00530A78    push       ebp
 00530A79    mov        ebp,esp
 00530A7B    xor        eax,eax
 00530A7D    push       ebp
 00530A7E    push       530AB4
 00530A83    push       dword ptr fs:[eax]
 00530A86    mov        dword ptr fs:[eax],esp
 00530A89    inc        dword ptr ds:[61EA64]
>00530A8F    jne        00530AA6
 00530A91    mov        eax,61640C; gvar_0061640C:array[3] of String
 00530A96    mov        ecx,3
 00530A9B    mov        edx,dword ptr ds:[4010F8]; String
 00530AA1    call       @FinalizeArray
 00530AA6    xor        eax,eax
 00530AA8    pop        edx
 00530AA9    pop        ecx
 00530AAA    pop        ecx
 00530AAB    mov        dword ptr fs:[eax],edx
 00530AAE    push       530ABB
 00530AB3    ret
<00530AB4    jmp        @HandleFinally
<00530AB9    jmp        00530AB3
 00530ABB    pop        ebp
 00530ABC    ret
*}
end.