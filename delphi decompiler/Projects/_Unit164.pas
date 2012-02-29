{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit164;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZOracleDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:String;//f24
    destructor Destroy; virtual;
    //procedure sub_0054A050(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0054A610(?:?); virtual;
    //procedure sub_0054A734(?:?); virtual;
    //procedure sub_0054A790(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0054AF3C(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0054ACF8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0054B110(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_0054B410(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00549A80(?:?); virtual;
    //procedure sub_00549AA8(?:?); virtual;
    //procedure sub_00549AB8(?:?); virtual;
    //function sub_00549B08():?; virtual;
    //function sub_00549B10():?; virtual;
    //function sub_00549B14():?; virtual;
    //function sub_00549B18():?; virtual;
    //function sub_00549B1C():?; virtual;
    //function sub_00549B20():?; virtual;
    //function sub_00549B24():?; virtual;
    //function sub_00549B28():?; virtual;
    //function sub_00549B2C():?; virtual;
    //function sub_00549B30():?; virtual;
    //function sub_00549B34():?; virtual;
    //procedure sub_00549B38(?:?); virtual;
    //procedure sub_00549C4C(?:?); virtual;
    //procedure sub_00549CD4(?:?); virtual;
    //procedure sub_00549D40(?:?); virtual;
    //procedure sub_00549D68(?:?); virtual;
    //procedure sub_00549DC8(?:?); virtual;
    //procedure sub_00549DEC(?:?); virtual;
    //function sub_00549E10():?; virtual;
    //function sub_00549E14():?; virtual;
    //function sub_00549E18():?; virtual;
    //function sub_00549E1C():?; virtual;
    //function sub_00549E20():?; virtual;
    //function sub_00549E24():?; virtual;
    //procedure sub_00549E28(?:?); virtual;
    //procedure sub_00549E50(?:?); virtual;
    //procedure sub_00549E7C(?:?); virtual;
    //procedure sub_00549E8C(?:?); virtual;
    //function sub_00549E9C():?; virtual;
    //function sub_00549EA0():?; virtual;
    //function sub_00549EA4():?; virtual;
    //function sub_00549EA8():?; virtual;
    //function sub_00549EAC():?; virtual;
    //function sub_00549EB0():?; virtual;
    //function sub_00549EB4():?; virtual;
    //function sub_00549EB8():?; virtual;
    //function sub_00549EBC():?; virtual;
    //function sub_00549EC0():?; virtual;
    //function sub_00549EC4():?; virtual;
    //function sub_00549EC8():?; virtual;
    //function sub_00549ECC():?; virtual;
    //function sub_00549ED0():?; virtual;
    //function sub_00549ED4():?; virtual;
    //function sub_00549ED8():?; virtual;
    //function sub_00549EDC():?; virtual;
    //function sub_00549EE0():?; virtual;
    //function sub_00549EE4():?; virtual;
    //function sub_00549EE8():?; virtual;
    //function sub_00549EEC():?; virtual;
    //function sub_00549EF0():?; virtual;
    //function sub_00549EF4():?; virtual;
    //function sub_00549EF8():?; virtual;
    //function sub_00549EFC():?; virtual;
    //function sub_00549F00():?; virtual;
    //function sub_00549F08():?; virtual;
    //function sub_00549F10():?; virtual;
    //function sub_00549F18():?; virtual;
    //function sub_00549F1C():?; virtual;
    //function sub_00549F24():?; virtual;
    //function sub_00549F28():?; virtual;
    //function sub_00549F2C():?; virtual;
    //function sub_00549F34():?; virtual;
    //function sub_00549F38():?; virtual;
    //function sub_00549F3C():?; virtual;
    //function sub_00549F40():?; virtual;
    //function sub_00549F48():?; virtual;
    //function sub_00549F50():?; virtual;
    //function sub_00549F54():?; virtual;
    //function sub_00549F5C():?; virtual;
    //function sub_00549F60():?; virtual;
    //function sub_00549F68():?; virtual;
    //function sub_00549F6C():?; virtual;
    //function sub_00549F74():?; virtual;
    //function sub_00549F78():?; virtual;
    //function sub_00549F80():?; virtual;
    //function sub_00549F84():?; virtual;
    //function sub_00549F88():?; virtual;
    //function sub_00549F8C():?; virtual;
    //function sub_00549F90():?; virtual;
    //function sub_00549F94():?; virtual;
    //function sub_00549F98():?; virtual;
    //function sub_0054B920(?:?):Boolean; virtual;
    //function sub_0054B928(?:?; ?:?):?; virtual;
    //constructor Create(?:TZOracleDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00549950
//constructor TZOracleDatabaseMetadata.Create(?:TZOracleDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00549950    push       ebp
 00549951    mov        ebp,esp
 00549953    add        esp,0FFFFFFE4
 00549956    push       ebx
 00549957    push       esi
 00549958    xor        ebx,ebx
 0054995A    mov        dword ptr [ebp-10],ebx
 0054995D    mov        dword ptr [ebp-14],ebx
 00549960    mov        dword ptr [ebp-18],ebx
 00549963    test       dl,dl
>00549965    je         0054996F
 00549967    add        esp,0FFFFFFF0
 0054996A    call       @ClassCreate
 0054996F    mov        esi,ecx
 00549971    mov        byte ptr [ebp-5],dl
 00549974    mov        dword ptr [ebp-4],eax
 00549977    mov        ebx,dword ptr [ebp+8]
 0054997A    mov        eax,dword ptr [ebp+0C]
 0054997D    call       @LStrAddRef
 00549982    xor        eax,eax
 00549984    push       ebp
 00549985    push       549A29
 0054998A    push       dword ptr fs:[eax]
 0054998D    mov        dword ptr fs:[eax],esp
 00549990    mov        eax,dword ptr [ebp+0C]
 00549993    push       eax
 00549994    push       ebx
 00549995    mov        ecx,esi
 00549997    test       ecx,ecx
>00549999    je         0054999E
 0054999B    sub        ecx,0FFFFFFD0
 0054999E    xor        edx,edx
 005499A0    mov        eax,dword ptr [ebp-4]
 005499A3    call       004D8D74
 005499A8    mov        dl,1
 005499AA    mov        eax,[0041C8E4]; TStringList
 005499AF    call       TObject.Create; TStringList.Create
 005499B4    mov        dword ptr [ebp-0C],eax
 005499B7    xor        eax,eax
 005499B9    push       ebp
 005499BA    push       5499FF
 005499BF    push       dword ptr fs:[eax]
 005499C2    mov        dword ptr fs:[eax],esp
 005499C5    lea        eax,[ebp-1C]
 005499C8    push       eax
 005499C9    mov        eax,dword ptr [ebp-4]
 005499CC    add        eax,24; TZOracleDatabaseMetadata.?f24:String
 005499CF    push       eax
 005499D0    lea        eax,[ebp-14]
 005499D3    push       eax
 005499D4    lea        eax,[ebp-18]
 005499D7    push       eax
 005499D8    mov        eax,dword ptr [ebp-0C]
 005499DB    push       eax
 005499DC    lea        ecx,[ebp-10]
 005499DF    mov        edx,ebx
 005499E1    mov        eax,dword ptr [ebp+0C]
 005499E4    call       004D28A4
 005499E9    xor        eax,eax
 005499EB    pop        edx
 005499EC    pop        ecx
 005499ED    pop        ecx
 005499EE    mov        dword ptr fs:[eax],edx
 005499F1    push       549A06
 005499F6    mov        eax,dword ptr [ebp-0C]
 005499F9    call       TObject.Free
 005499FE    ret
<005499FF    jmp        @HandleFinally
<00549A04    jmp        005499F6
 00549A06    xor        eax,eax
 00549A08    pop        edx
 00549A09    pop        ecx
 00549A0A    pop        ecx
 00549A0B    mov        dword ptr fs:[eax],edx
 00549A0E    push       549A30
 00549A13    lea        eax,[ebp-18]
 00549A16    mov        edx,3
 00549A1B    call       @LStrArrayClr
 00549A20    lea        eax,[ebp+0C]
 00549A23    call       @LStrClr
 00549A28    ret
<00549A29    jmp        @HandleFinally
<00549A2E    jmp        00549A13
 00549A30    mov        eax,dword ptr [ebp-4]
 00549A33    cmp        byte ptr [ebp-5],0
>00549A37    je         00549A48
 00549A39    call       @AfterConstruction
 00549A3E    pop        dword ptr fs:[0]
 00549A45    add        esp,0C
 00549A48    mov        eax,dword ptr [ebp-4]
 00549A4B    pop        esi
 00549A4C    pop        ebx
 00549A4D    mov        esp,ebp
 00549A4F    pop        ebp
 00549A50    ret        8
*}
//end;

//00549A54
destructor TZOracleDatabaseMetadata.Destroy;
begin
{*
 00549A54    push       ebp
 00549A55    mov        ebp,esp
 00549A57    push       ebx
 00549A58    push       esi
 00549A59    call       @BeforeDestruction
 00549A5E    mov        ebx,edx
 00549A60    mov        esi,eax
 00549A62    mov        edx,ebx
 00549A64    and        dl,0FC
 00549A67    mov        eax,esi
 00549A69    call       TZAbstractDatabaseMetadata.Destroy
 00549A6E    test       bl,bl
>00549A70    jle        00549A79
 00549A72    mov        eax,esi
 00549A74    call       @ClassDestroy
 00549A79    pop        esi
 00549A7A    pop        ebx
 00549A7B    pop        ebp
 00549A7C    ret
*}
end;

//00549A80
//procedure sub_00549A80(?:?);
//begin
{*
 00549A80    push       ebp
 00549A81    mov        ebp,esp
 00549A83    push       ebx
 00549A84    mov        ebx,edx
 00549A86    mov        eax,ebx
 00549A88    mov        edx,549AA0; 'Oracle'
 00549A8D    call       @LStrAsg
 00549A92    pop        ebx
 00549A93    pop        ebp
 00549A94    ret
*}
//end;

//00549AA8
//procedure sub_00549AA8(?:?);
//begin
{*
 00549AA8    push       ebp
 00549AA9    mov        ebp,esp
 00549AAB    push       ebx
 00549AAC    mov        ebx,edx
 00549AAE    mov        eax,ebx
 00549AB0    call       @LStrClr
 00549AB5    pop        ebx
 00549AB6    pop        ebp
 00549AB7    ret
*}
//end;

//00549AB8
//procedure sub_00549AB8(?:?);
//begin
{*
 00549AB8    push       ebp
 00549AB9    mov        ebp,esp
 00549ABB    push       ebx
 00549ABC    mov        ebx,edx
 00549ABE    mov        eax,ebx
 00549AC0    mov        edx,549AD8; 'Zeos Database Connectivity Driver for Oracle'
 00549AC5    call       @LStrAsg
 00549ACA    pop        ebx
 00549ACB    pop        ebp
 00549ACC    ret
*}
//end;

//00549B08
//function sub_00549B08():?;
//begin
{*
 00549B08    mov        eax,1
 00549B0D    ret
*}
//end;

//00549B10
//function sub_00549B10():?;
//begin
{*
 00549B10    xor        eax,eax
 00549B12    ret
*}
//end;

//00549B14
//function sub_00549B14():?;
//begin
{*
 00549B14    xor        eax,eax
 00549B16    ret
*}
//end;

//00549B18
//function sub_00549B18():?;
//begin
{*
 00549B18    xor        eax,eax
 00549B1A    ret
*}
//end;

//00549B1C
//function sub_00549B1C():?;
//begin
{*
 00549B1C    mov        al,1
 00549B1E    ret
*}
//end;

//00549B20
//function sub_00549B20():?;
//begin
{*
 00549B20    xor        eax,eax
 00549B22    ret
*}
//end;

//00549B24
//function sub_00549B24():?;
//begin
{*
 00549B24    xor        eax,eax
 00549B26    ret
*}
//end;

//00549B28
//function sub_00549B28():?;
//begin
{*
 00549B28    mov        al,1
 00549B2A    ret
*}
//end;

//00549B2C
//function sub_00549B2C():?;
//begin
{*
 00549B2C    xor        eax,eax
 00549B2E    ret
*}
//end;

//00549B30
//function sub_00549B30():?;
//begin
{*
 00549B30    xor        eax,eax
 00549B32    ret
*}
//end;

//00549B34
//function sub_00549B34():?;
//begin
{*
 00549B34    mov        al,1
 00549B36    ret
*}
//end;

//00549B38
//procedure sub_00549B38(?:?);
//begin
{*
 00549B38    push       ebp
 00549B39    mov        ebp,esp
 00549B3B    push       ebx
 00549B3C    mov        ebx,edx
 00549B3E    mov        eax,ebx
 00549B40    mov        edx,549B58; 'ACCESS,ADD,ALTER,AUDIT,CLUSTER,COLUMN,COMMENT,COMPRESS,CONNECT,DATE,DROP,EXCLUSIVE,FILE,IDENTIFIED,IMMEDIATE,INCREMENT,INDEX,INITIAL,INTERSECT,LEVEL,LOCK,LONG,MAXEXTENTS,MINUS,MODE,NOAUDIT,NOCOMPRESS,NOWAIT,NUMBER,OFFLINE,ONLINE,PCTFREE,PRIOR'
 00549B45    call       @LStrAsg
 00549B4A    pop        ebx
 00549B4B    pop        ebp
 00549B4C    ret
*}
//end;

//00549C4C
//procedure sub_00549C4C(?:?);
//begin
{*
 00549C4C    push       ebp
 00549C4D    mov        ebp,esp
 00549C4F    push       ebx
 00549C50    mov        ebx,edx
 00549C52    mov        eax,ebx
 00549C54    mov        edx,549C6C; 'ABS,ACOS,ASIN,ATAN,ATAN2,CEILING,COS,EXP,FLOOR,LOG,LOG10,MOD,PI,POWER,ROUND,SIGN,SIN,SQRT,TAN,TRUNCATE'
 00549C59    call       @LStrAsg
 00549C5E    pop        ebx
 00549C5F    pop        ebp
 00549C60    ret
*}
//end;

//00549CD4
//procedure sub_00549CD4(?:?);
//begin
{*
 00549CD4    push       ebp
 00549CD5    mov        ebp,esp
 00549CD7    push       ebx
 00549CD8    mov        ebx,edx
 00549CDA    mov        eax,ebx
 00549CDC    mov        edx,549CF4; 'ASCII,CHAR,CONCAT,LCASE,LENGTH,LTRIM,REPLACE,RTRIM,SOUNDEX,SUBSTRING,UCASE'
 00549CE1    call       @LStrAsg
 00549CE6    pop        ebx
 00549CE7    pop        ebp
 00549CE8    ret
*}
//end;

//00549D40
//procedure sub_00549D40(?:?);
//begin
{*
 00549D40    push       ebp
 00549D41    mov        ebp,esp
 00549D43    push       ebx
 00549D44    mov        ebx,edx
 00549D46    mov        eax,ebx
 00549D48    mov        edx,549D60; 'USER'
 00549D4D    call       @LStrAsg
 00549D52    pop        ebx
 00549D53    pop        ebp
 00549D54    ret
*}
//end;

//00549D68
//procedure sub_00549D68(?:?);
//begin
{*
 00549D68    push       ebp
 00549D69    mov        ebp,esp
 00549D6B    push       ebx
 00549D6C    mov        ebx,edx
 00549D6E    mov        eax,ebx
 00549D70    mov        edx,549D88; 'CURDATE,CURTIME,DAYOFMONTH,HOUR,MINUTE,MONTH,NOW,SECOND,YEAR'
 00549D75    call       @LStrAsg
 00549D7A    pop        ebx
 00549D7B    pop        ebp
 00549D7C    ret
*}
//end;

//00549DC8
//procedure sub_00549DC8(?:?);
//begin
{*
 00549DC8    push       ebp
 00549DC9    mov        ebp,esp
 00549DCB    push       ebx
 00549DCC    mov        ebx,edx
 00549DCE    mov        eax,ebx
 00549DD0    mov        edx,549DE8; '//'
 00549DD5    call       @LStrAsg
 00549DDA    pop        ebx
 00549DDB    pop        ebp
 00549DDC    ret
*}
//end;

//00549DEC
//procedure sub_00549DEC(?:?);
//begin
{*
 00549DEC    push       ebp
 00549DED    mov        ebp,esp
 00549DEF    push       ebx
 00549DF0    mov        ebx,edx
 00549DF2    mov        eax,ebx
 00549DF4    mov        edx,549E0C; '$#'
 00549DF9    call       @LStrAsg
 00549DFE    pop        ebx
 00549DFF    pop        ebp
 00549E00    ret
*}
//end;

//00549E10
//function sub_00549E10():?;
//begin
{*
 00549E10    mov        al,1
 00549E12    ret
*}
//end;

//00549E14
//function sub_00549E14():?;
//begin
{*
 00549E14    mov        al,1
 00549E16    ret
*}
//end;

//00549E18
//function sub_00549E18():?;
//begin
{*
 00549E18    mov        al,1
 00549E1A    ret
*}
//end;

//00549E1C
//function sub_00549E1C():?;
//begin
{*
 00549E1C    mov        al,1
 00549E1E    ret
*}
//end;

//00549E20
//function sub_00549E20():?;
//begin
{*
 00549E20    mov        al,1
 00549E22    ret
*}
//end;

//00549E24
//function sub_00549E24():?;
//begin
{*
 00549E24    mov        al,1
 00549E26    ret
*}
//end;

//00549E28
//procedure sub_00549E28(?:?);
//begin
{*
 00549E28    push       ebp
 00549E29    mov        ebp,esp
 00549E2B    push       ebx
 00549E2C    mov        ebx,edx
 00549E2E    mov        eax,ebx
 00549E30    mov        edx,549E48; 'schema'
 00549E35    call       @LStrAsg
 00549E3A    pop        ebx
 00549E3B    pop        ebp
 00549E3C    ret
*}
//end;

//00549E50
//procedure sub_00549E50(?:?);
//begin
{*
 00549E50    push       ebp
 00549E51    mov        ebp,esp
 00549E53    push       ebx
 00549E54    mov        ebx,edx
 00549E56    mov        eax,ebx
 00549E58    mov        edx,549E70; 'procedure'
 00549E5D    call       @LStrAsg
 00549E62    pop        ebx
 00549E63    pop        ebp
 00549E64    ret
*}
//end;

//00549E7C
//procedure sub_00549E7C(?:?);
//begin
{*
 00549E7C    push       ebp
 00549E7D    mov        ebp,esp
 00549E7F    push       ebx
 00549E80    mov        ebx,edx
 00549E82    mov        eax,ebx
 00549E84    call       @LStrClr
 00549E89    pop        ebx
 00549E8A    pop        ebp
 00549E8B    ret
*}
//end;

//00549E8C
//procedure sub_00549E8C(?:?);
//begin
{*
 00549E8C    push       ebp
 00549E8D    mov        ebp,esp
 00549E8F    push       ebx
 00549E90    mov        ebx,edx
 00549E92    mov        eax,ebx
 00549E94    call       @LStrClr
 00549E99    pop        ebx
 00549E9A    pop        ebp
 00549E9B    ret
*}
//end;

//00549E9C
//function sub_00549E9C():?;
//begin
{*
 00549E9C    mov        al,1
 00549E9E    ret
*}
//end;

//00549EA0
//function sub_00549EA0():?;
//begin
{*
 00549EA0    mov        al,1
 00549EA2    ret
*}
//end;

//00549EA4
//function sub_00549EA4():?;
//begin
{*
 00549EA4    mov        al,1
 00549EA6    ret
*}
//end;

//00549EA8
//function sub_00549EA8():?;
//begin
{*
 00549EA8    mov        al,1
 00549EAA    ret
*}
//end;

//00549EAC
//function sub_00549EAC():?;
//begin
{*
 00549EAC    mov        al,1
 00549EAE    ret
*}
//end;

//00549EB0
//function sub_00549EB0():?;
//begin
{*
 00549EB0    xor        eax,eax
 00549EB2    ret
*}
//end;

//00549EB4
//function sub_00549EB4():?;
//begin
{*
 00549EB4    xor        eax,eax
 00549EB6    ret
*}
//end;

//00549EB8
//function sub_00549EB8():?;
//begin
{*
 00549EB8    xor        eax,eax
 00549EBA    ret
*}
//end;

//00549EBC
//function sub_00549EBC():?;
//begin
{*
 00549EBC    xor        eax,eax
 00549EBE    ret
*}
//end;

//00549EC0
//function sub_00549EC0():?;
//begin
{*
 00549EC0    xor        eax,eax
 00549EC2    ret
*}
//end;

//00549EC4
//function sub_00549EC4():?;
//begin
{*
 00549EC4    xor        eax,eax
 00549EC6    ret
*}
//end;

//00549EC8
//function sub_00549EC8():?;
//begin
{*
 00549EC8    xor        eax,eax
 00549ECA    ret
*}
//end;

//00549ECC
//function sub_00549ECC():?;
//begin
{*
 00549ECC    mov        al,1
 00549ECE    ret
*}
//end;

//00549ED0
//function sub_00549ED0():?;
//begin
{*
 00549ED0    mov        al,1
 00549ED2    ret
*}
//end;

//00549ED4
//function sub_00549ED4():?;
//begin
{*
 00549ED4    mov        al,1
 00549ED6    ret
*}
//end;

//00549ED8
//function sub_00549ED8():?;
//begin
{*
 00549ED8    mov        al,1
 00549EDA    ret
*}
//end;

//00549EDC
//function sub_00549EDC():?;
//begin
{*
 00549EDC    mov        al,1
 00549EDE    ret
*}
//end;

//00549EE0
//function sub_00549EE0():?;
//begin
{*
 00549EE0    mov        al,1
 00549EE2    ret
*}
//end;

//00549EE4
//function sub_00549EE4():?;
//begin
{*
 00549EE4    mov        al,1
 00549EE6    ret
*}
//end;

//00549EE8
//function sub_00549EE8():?;
//begin
{*
 00549EE8    mov        al,1
 00549EEA    ret
*}
//end;

//00549EEC
//function sub_00549EEC():?;
//begin
{*
 00549EEC    mov        al,1
 00549EEE    ret
*}
//end;

//00549EF0
//function sub_00549EF0():?;
//begin
{*
 00549EF0    xor        eax,eax
 00549EF2    ret
*}
//end;

//00549EF4
//function sub_00549EF4():?;
//begin
{*
 00549EF4    xor        eax,eax
 00549EF6    ret
*}
//end;

//00549EF8
//function sub_00549EF8():?;
//begin
{*
 00549EF8    xor        eax,eax
 00549EFA    ret
*}
//end;

//00549EFC
//function sub_00549EFC():?;
//begin
{*
 00549EFC    xor        eax,eax
 00549EFE    ret
*}
//end;

//00549F00
//function sub_00549F00():?;
//begin
{*
 00549F00    mov        eax,3E8
 00549F05    ret
*}
//end;

//00549F08
//function sub_00549F08():?;
//begin
{*
 00549F08    mov        eax,7D0
 00549F0D    ret
*}
//end;

//00549F10
//function sub_00549F10():?;
//begin
{*
 00549F10    mov        eax,1E
 00549F15    ret
*}
//end;

//00549F18
//function sub_00549F18():?;
//begin
{*
 00549F18    xor        eax,eax
 00549F1A    ret
*}
//end;

//00549F1C
//function sub_00549F1C():?;
//begin
{*
 00549F1C    mov        eax,20
 00549F21    ret
*}
//end;

//00549F24
//function sub_00549F24():?;
//begin
{*
 00549F24    xor        eax,eax
 00549F26    ret
*}
//end;

//00549F28
//function sub_00549F28():?;
//begin
{*
 00549F28    xor        eax,eax
 00549F2A    ret
*}
//end;

//00549F2C
//function sub_00549F2C():?;
//begin
{*
 00549F2C    mov        eax,3E8
 00549F31    ret
*}
//end;

//00549F34
//function sub_00549F34():?;
//begin
{*
 00549F34    xor        eax,eax
 00549F36    ret
*}
//end;

//00549F38
//function sub_00549F38():?;
//begin
{*
 00549F38    xor        eax,eax
 00549F3A    ret
*}
//end;

//00549F3C
//function sub_00549F3C():?;
//begin
{*
 00549F3C    xor        eax,eax
 00549F3E    ret
*}
//end;

//00549F40
//function sub_00549F40():?;
//begin
{*
 00549F40    mov        eax,1E
 00549F45    ret
*}
//end;

//00549F48
//function sub_00549F48():?;
//begin
{*
 00549F48    mov        eax,1E
 00549F4D    ret
*}
//end;

//00549F50
//function sub_00549F50():?;
//begin
{*
 00549F50    xor        eax,eax
 00549F52    ret
*}
//end;

//00549F54
//function sub_00549F54():?;
//begin
{*
 00549F54    mov        eax,7D0
 00549F59    ret
*}
//end;

//00549F5C
//function sub_00549F5C():?;
//begin
{*
 00549F5C    mov        al,1
 00549F5E    ret
*}
//end;

//00549F60
//function sub_00549F60():?;
//begin
{*
 00549F60    mov        eax,0FFFF
 00549F65    ret
*}
//end;

//00549F68
//function sub_00549F68():?;
//begin
{*
 00549F68    xor        eax,eax
 00549F6A    ret
*}
//end;

//00549F6C
//function sub_00549F6C():?;
//begin
{*
 00549F6C    mov        eax,1E
 00549F71    ret
*}
//end;

//00549F74
//function sub_00549F74():?;
//begin
{*
 00549F74    xor        eax,eax
 00549F76    ret
*}
//end;

//00549F78
//function sub_00549F78():?;
//begin
{*
 00549F78    mov        eax,1E
 00549F7D    ret
*}
//end;

//00549F80
//function sub_00549F80():?;
//begin
{*
 00549F80    mov        al,2
 00549F82    ret
*}
//end;

//00549F84
//function sub_00549F84():?;
//begin
{*
 00549F84    mov        al,1
 00549F86    ret
*}
//end;

//00549F88
//function sub_00549F88():?;
//begin
{*
 00549F88    mov        al,1
 00549F8A    ret
*}
//end;

//00549F8C
//function sub_00549F8C():?;
//begin
{*
 00549F8C    mov        al,1
 00549F8E    ret
*}
//end;

//00549F90
//function sub_00549F90():?;
//begin
{*
 00549F90    mov        al,1
 00549F92    ret
*}
//end;

//00549F94
//function sub_00549F94():?;
//begin
{*
 00549F94    mov        al,1
 00549F96    ret
*}
//end;

//00549F98
//function sub_00549F98():?;
//begin
{*
 00549F98    xor        eax,eax
 00549F9A    ret
*}
//end;

//00549F9C
//function sub_00549F9C(?:AnsiString; ?:?):?;
//begin
{*
 00549F9C    push       ebp
 00549F9D    mov        ebp,esp
 00549F9F    add        esp,0FFFFFFF8
 00549FA2    push       ebx
 00549FA3    push       esi
 00549FA4    push       edi
 00549FA5    xor        edx,edx
 00549FA7    mov        dword ptr [ebp-8],edx
 00549FAA    mov        dword ptr [ebp-4],eax
 00549FAD    xor        eax,eax
 00549FAF    push       ebp
 00549FB0    push       54A03E
 00549FB5    push       dword ptr fs:[eax]
 00549FB8    mov        dword ptr fs:[eax],esp
 00549FBB    xor        ebx,ebx
 00549FBD    mov        eax,dword ptr [ebp+8]
 00549FC0    mov        eax,dword ptr [eax+0C]
 00549FC3    call       @DynArrayHigh
 00549FC8    mov        esi,eax
 00549FCA    test       esi,esi
>00549FCC    jl         0054A00D
 00549FCE    inc        esi
 00549FCF    xor        edi,edi
 00549FD1    test       bl,bl
>00549FD3    jne        0054A005
 00549FD5    mov        eax,dword ptr [ebp+8]
 00549FD8    mov        eax,dword ptr [eax+0C]
 00549FDB    test       eax,eax
>00549FDD    je         00549FE4
 00549FDF    cmp        edi,dword ptr [eax-4]
>00549FE2    jb         00549FE9
 00549FE4    call       @BoundErr
 00549FE9    mov        eax,dword ptr [eax+edi*4]
 00549FEC    lea        edx,[ebp-8]
 00549FEF    call       UpperCase
 00549FF4    mov        eax,dword ptr [ebp-8]
 00549FF7    mov        edx,dword ptr [ebp-4]
 00549FFA    call       @LStrCmp
>00549FFF    je         0054A005
 0054A001    xor        eax,eax
>0054A003    jmp        0054A007
 0054A005    mov        al,1
 0054A007    mov        ebx,eax
 0054A009    inc        edi
 0054A00A    dec        esi
<0054A00B    jne        00549FD1
 0054A00D    test       bl,bl
>0054A00F    jne        0054A024
 0054A011    mov        eax,dword ptr [ebp+8]
 0054A014    mov        eax,dword ptr [eax+0C]
 0054A017    call       @DynArrayLength
 0054A01C    test       eax,eax
>0054A01E    je         0054A024
 0054A020    xor        eax,eax
>0054A022    jmp        0054A026
 0054A024    mov        al,1
 0054A026    mov        ebx,eax
 0054A028    xor        eax,eax
 0054A02A    pop        edx
 0054A02B    pop        ecx
 0054A02C    pop        ecx
 0054A02D    mov        dword ptr fs:[eax],edx
 0054A030    push       54A045
 0054A035    lea        eax,[ebp-8]
 0054A038    call       @LStrClr
 0054A03D    ret
<0054A03E    jmp        @HandleFinally
<0054A043    jmp        0054A035
 0054A045    mov        eax,ebx
 0054A047    pop        edi
 0054A048    pop        esi
 0054A049    pop        ebx
 0054A04A    pop        ecx
 0054A04B    pop        ecx
 0054A04C    pop        ebp
 0054A04D    ret
*}
//end;

//0054A050
//procedure sub_0054A050(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054A050    push       ebp
 0054A051    mov        ebp,esp
 0054A053    push       ecx
 0054A054    mov        ecx,6
 0054A059    push       0
 0054A05B    push       0
 0054A05D    dec        ecx
<0054A05E    jne        0054A059
 0054A060    push       ecx
 0054A061    xchg       ecx,dword ptr [ebp-4]
 0054A064    push       ebx
 0054A065    push       esi
 0054A066    push       edi
 0054A067    mov        esi,ecx
 0054A069    mov        ebx,eax
 0054A06B    mov        edi,dword ptr [ebp+10]
 0054A06E    xor        eax,eax
 0054A070    push       ebp
 0054A071    push       54A27E
 0054A076    push       dword ptr fs:[eax]
 0054A079    mov        dword ptr fs:[eax],esp
 0054A07C    push       ebp
 0054A07D    mov        eax,54A298; 'TABLE'
 0054A082    call       00549F9C
 0054A087    pop        ecx
 0054A088    test       al,al
>0054A08A    je         0054A0C4
 0054A08C    push       54A2A8; 'SELECT NULL AS TABLE_CAT, OWNER AS TABLE_SCHEM, TABLE_NAME, 'TABLE' AS TABLE_TYPE, NULL AS REMARKS FROM SYS.ALL_TABLES WHERE OWNER LIKE ''
 0054A091    lea        edx,[ebp-0C]
 0054A094    mov        eax,esi
 0054A096    call       004D31DC
 0054A09B    push       dword ptr [ebp-0C]
 0054A09E    push       54A33C; '' AND TABLE_NAME LIKE ''
 0054A0A3    lea        edx,[ebp-10]
 0054A0A6    mov        eax,edi
 0054A0A8    call       004D31DC
 0054A0AD    push       dword ptr [ebp-10]
 0054A0B0    push       54A35C; '''
 0054A0B5    lea        eax,[ebp-8]
 0054A0B8    mov        edx,5
 0054A0BD    call       @LStrCatN
>0054A0C2    jmp        0054A0CC
 0054A0C4    lea        eax,[ebp-8]
 0054A0C7    call       @LStrClr
 0054A0CC    push       ebp
 0054A0CD    mov        eax,54A368; 'SYNONYM'
 0054A0D2    call       00549F9C
 0054A0D7    pop        ecx
 0054A0D8    test       al,al
>0054A0DA    je         0054A130
 0054A0DC    push       54A378; 'SELECT NULL AS TABLE_CAT, OWNER AS TABLE_SCHEM, SYNONYM_NAME AS TABLE_NAME, 'SYNONYM' AS TABLE_TYPE, NULL AS REMARKS FROM SYS.ALL_SYNONYMS WHERE OWNER LIKE ''
 0054A0E1    lea        edx,[ebp-14]
 0054A0E4    mov        eax,esi
 0054A0E6    call       004D31DC
 0054A0EB    push       dword ptr [ebp-14]
 0054A0EE    push       54A420; '' AND SYNONYM_NAME LIKE ''
 0054A0F3    lea        edx,[ebp-18]
 0054A0F6    mov        eax,edi
 0054A0F8    call       004D31DC
 0054A0FD    push       dword ptr [ebp-18]
 0054A100    push       54A35C; '''
 0054A105    lea        eax,[ebp-4]
 0054A108    mov        edx,5
 0054A10D    call       @LStrCatN
 0054A112    cmp        dword ptr [ebp-8],0
>0054A116    je         0054A125
 0054A118    lea        eax,[ebp-8]
 0054A11B    mov        edx,54A444; ' UNION '
 0054A120    call       @LStrCat
 0054A125    lea        eax,[ebp-8]
 0054A128    mov        edx,dword ptr [ebp-4]
 0054A12B    call       @LStrCat
 0054A130    push       ebp
 0054A131    mov        eax,54A454; 'VIEW'
 0054A136    call       00549F9C
 0054A13B    pop        ecx
 0054A13C    test       al,al
>0054A13E    je         0054A194
 0054A140    push       54A464; 'SELECT NULL AS TABLE_CAT, OWNER AS TABLE_SCHEM, VIEW_NAME AS TABLE_NAME, 'VIEW' AS TABLE_TYPE, NULL AS REMARKS FROM SYS.ALL_VIEWS WHERE OWNER LIKE ''
 0054A145    lea        edx,[ebp-1C]
 0054A148    mov        eax,esi
 0054A14A    call       004D31DC
 0054A14F    push       dword ptr [ebp-1C]
 0054A152    push       54A504; '' AND VIEW_NAME LIKE ''
 0054A157    lea        edx,[ebp-20]
 0054A15A    mov        eax,edi
 0054A15C    call       004D31DC
 0054A161    push       dword ptr [ebp-20]
 0054A164    push       54A35C; '''
 0054A169    lea        eax,[ebp-4]
 0054A16C    mov        edx,5
 0054A171    call       @LStrCatN
 0054A176    cmp        dword ptr [ebp-8],0
>0054A17A    je         0054A189
 0054A17C    lea        eax,[ebp-8]
 0054A17F    mov        edx,54A444; ' UNION '
 0054A184    call       @LStrCat
 0054A189    lea        eax,[ebp-8]
 0054A18C    mov        edx,dword ptr [ebp-4]
 0054A18F    call       @LStrCat
 0054A194    push       ebp
 0054A195    mov        eax,54A524; 'SEQUENCE'
 0054A19A    call       00549F9C
 0054A19F    pop        ecx
 0054A1A0    test       al,al
>0054A1A2    je         0054A1F8
 0054A1A4    push       54A538; 'SELECT NULL AS TABLE_CAT, SEQUENCE_OWNER AS TABLE_SCHEM, SEQUENCE_NAME AS TABLE_NAME, 'SEQUENCE' AS TABLE_TYPE, NULL AS REMARKS FROM SYS.ALL_SEQUENCES WHERE SEQUENCE_OWNER LIKE ''
 0054A1A9    lea        edx,[ebp-24]
 0054A1AC    mov        eax,esi
 0054A1AE    call       004D31DC
 0054A1B3    push       dword ptr [ebp-24]
 0054A1B6    push       54A5F4; '' AND SEQUENCE_NAME LIKE ''
 0054A1BB    lea        edx,[ebp-28]
 0054A1BE    mov        eax,edi
 0054A1C0    call       004D31DC
 0054A1C5    push       dword ptr [ebp-28]
 0054A1C8    push       54A35C; '''
 0054A1CD    lea        eax,[ebp-4]
 0054A1D0    mov        edx,5
 0054A1D5    call       @LStrCatN
 0054A1DA    cmp        dword ptr [ebp-8],0
>0054A1DE    je         0054A1ED
 0054A1E0    lea        eax,[ebp-8]
 0054A1E3    mov        edx,54A444; ' UNION '
 0054A1E8    call       @LStrCat
 0054A1ED    lea        eax,[ebp-8]
 0054A1F0    mov        edx,dword ptr [ebp-4]
 0054A1F3    call       @LStrCat
 0054A1F8    mov        eax,dword ptr [ebp+8]
 0054A1FB    push       eax
 0054A1FC    lea        edx,[ebp-34]
 0054A1FF    mov        eax,ebx
 0054A201    mov        ecx,dword ptr [eax]
 0054A203    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054A209    mov        eax,dword ptr [ebp-34]
 0054A20C    lea        edx,[ebp-30]
 0054A20F    mov        ecx,dword ptr [eax]
 0054A211    call       dword ptr [ecx+0C]
 0054A214    mov        eax,dword ptr [ebp-30]
 0054A217    lea        ecx,[ebp-2C]
 0054A21A    mov        edx,dword ptr [ebp-8]
 0054A21D    mov        esi,dword ptr [eax]
 0054A21F    call       dword ptr [esi+0C]
 0054A222    mov        eax,dword ptr [ebp-2C]
 0054A225    push       eax
 0054A226    lea        ecx,[ebp-38]
 0054A229    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 0054A22F    mov        edx,dword ptr [edx]
 0054A231    mov        eax,ebx
 0054A233    call       004D8E7C
 0054A238    mov        ecx,dword ptr [ebp-38]
 0054A23B    mov        eax,ebx
 0054A23D    pop        edx
 0054A23E    call       004D9194
 0054A243    xor        eax,eax
 0054A245    pop        edx
 0054A246    pop        ecx
 0054A247    pop        ecx
 0054A248    mov        dword ptr fs:[eax],edx
 0054A24B    push       54A285
 0054A250    lea        eax,[ebp-38]
 0054A253    call       @IntfClear
 0054A258    lea        eax,[ebp-34]
 0054A25B    call       @IntfClear
 0054A260    lea        eax,[ebp-30]
 0054A263    call       @IntfClear
 0054A268    lea        eax,[ebp-2C]
 0054A26B    call       @IntfClear
 0054A270    lea        eax,[ebp-28]
 0054A273    mov        edx,0A
 0054A278    call       @LStrArrayClr
 0054A27D    ret
<0054A27E    jmp        @HandleFinally
<0054A283    jmp        0054A250
 0054A285    pop        edi
 0054A286    pop        esi
 0054A287    pop        ebx
 0054A288    mov        esp,ebp
 0054A28A    pop        ebp
 0054A28B    ret        0C
*}
//end;

//0054A610
//procedure sub_0054A610(?:?);
//begin
{*
 0054A610    push       ebp
 0054A611    mov        ebp,esp
 0054A613    xor        ecx,ecx
 0054A615    push       ecx
 0054A616    push       ecx
 0054A617    push       ecx
 0054A618    push       ecx
 0054A619    push       ebx
 0054A61A    push       esi
 0054A61B    mov        esi,edx
 0054A61D    mov        ebx,eax
 0054A61F    xor        eax,eax
 0054A621    push       ebp
 0054A622    push       54A6A5
 0054A627    push       dword ptr fs:[eax]
 0054A62A    mov        dword ptr fs:[eax],esp
 0054A62D    push       esi
 0054A62E    lea        edx,[ebp-0C]
 0054A631    mov        eax,ebx
 0054A633    mov        ecx,dword ptr [eax]
 0054A635    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054A63B    mov        eax,dword ptr [ebp-0C]
 0054A63E    lea        edx,[ebp-8]
 0054A641    mov        ecx,dword ptr [eax]
 0054A643    call       dword ptr [ecx+0C]
 0054A646    mov        eax,dword ptr [ebp-8]
 0054A649    lea        ecx,[ebp-4]
 0054A64C    mov        edx,54A6BC; 'SELECT USERNAME AS TABLE_SCHEM FROM SYS.ALL_USERS'
 0054A651    mov        esi,dword ptr [eax]
 0054A653    call       dword ptr [esi+0C]
 0054A656    mov        eax,dword ptr [ebp-4]
 0054A659    push       eax
 0054A65A    lea        ecx,[ebp-10]
 0054A65D    mov        edx,dword ptr ds:[61B224]; ^gvar_0061DD40:TZMetadataColumnDefs
 0054A663    mov        edx,dword ptr [edx]
 0054A665    mov        eax,ebx
 0054A667    call       004D8E7C
 0054A66C    mov        ecx,dword ptr [ebp-10]
 0054A66F    mov        eax,ebx
 0054A671    pop        edx
 0054A672    call       004D9194
 0054A677    xor        eax,eax
 0054A679    pop        edx
 0054A67A    pop        ecx
 0054A67B    pop        ecx
 0054A67C    mov        dword ptr fs:[eax],edx
 0054A67F    push       54A6AC
 0054A684    lea        eax,[ebp-10]
 0054A687    call       @IntfClear
 0054A68C    lea        eax,[ebp-0C]
 0054A68F    call       @IntfClear
 0054A694    lea        eax,[ebp-8]
 0054A697    call       @IntfClear
 0054A69C    lea        eax,[ebp-4]
 0054A69F    call       @IntfClear
 0054A6A4    ret
<0054A6A5    jmp        @HandleFinally
<0054A6AA    jmp        0054A684
 0054A6AC    pop        esi
 0054A6AD    pop        ebx
 0054A6AE    mov        esp,ebp
 0054A6B0    pop        ebp
 0054A6B1    ret
*}
//end;

//0054A734
//procedure sub_0054A734(?:?);
//begin
{*
 0054A734    push       ebp
 0054A735    mov        ebp,esp
 0054A737    push       ecx
 0054A738    push       ebx
 0054A739    push       esi
 0054A73A    push       edi
 0054A73B    mov        esi,edx
 0054A73D    mov        ebx,eax
 0054A73F    mov        ecx,esi
 0054A741    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 0054A747    mov        edx,dword ptr [edx]
 0054A749    mov        eax,ebx
 0054A74B    call       004D8E7C
 0054A750    mov        dword ptr [ebp-4],4
 0054A757    mov        ebx,616868; gvar_00616868:array[4] of String
 0054A75C    mov        eax,dword ptr [esi]
 0054A75E    mov        edx,dword ptr [eax]
 0054A760    call       dword ptr [edx+1E4]
 0054A766    mov        eax,dword ptr [esi]
 0054A768    mov        ecx,dword ptr [ebx]
 0054A76A    mov        edx,1
 0054A76F    mov        edi,dword ptr [eax]
 0054A771    call       dword ptr [edi+158]
 0054A777    mov        eax,dword ptr [esi]
 0054A779    mov        edx,dword ptr [eax]
 0054A77B    call       dword ptr [edx+1D0]
 0054A781    add        ebx,4
 0054A784    dec        dword ptr [ebp-4]
<0054A787    jne        0054A75C
 0054A789    pop        edi
 0054A78A    pop        esi
 0054A78B    pop        ebx
 0054A78C    pop        ecx
 0054A78D    pop        ebp
 0054A78E    ret
*}
//end;

//0054A790
//procedure sub_0054A790(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054A790    push       ebp
 0054A791    mov        ebp,esp
 0054A793    push       ecx
 0054A794    mov        ecx,8
 0054A799    push       0
 0054A79B    push       0
 0054A79D    dec        ecx
<0054A79E    jne        0054A799
 0054A7A0    xchg       ecx,dword ptr [ebp-4]
 0054A7A3    push       ebx
 0054A7A4    push       esi
 0054A7A5    push       edi
 0054A7A6    mov        edi,ecx
 0054A7A8    mov        esi,eax
 0054A7AA    mov        ebx,dword ptr [ebp+8]
 0054A7AD    xor        eax,eax
 0054A7AF    push       ebp
 0054A7B0    push       54AB8B
 0054A7B5    push       dword ptr fs:[eax]
 0054A7B8    mov        dword ptr fs:[eax],esp
 0054A7BB    mov        ecx,ebx
 0054A7BD    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 0054A7C3    mov        edx,dword ptr [edx]
 0054A7C5    mov        eax,esi
 0054A7C7    call       004D8E7C
 0054A7CC    push       54ABA4; 'SELECT NULL, OWNER, TABLE_NAME, COLUMN_NAME, NULL, DATA_TYPE, DATA_LENGTH, NULL, DATA_PRECISION, DATA_SCALE, NULLABLE, NULL, DATA_DEFAULT, NULL, NULL, NULL, COLUMN_ID, NULLABLE FROM SYS.ALL_TAB_COLUMNS WHERE OWNER LIKE ''
 0054A7D1    lea        edx,[ebp-0C]
 0054A7D4    mov        eax,edi
 0054A7D6    call       004D31DC
 0054A7DB    push       dword ptr [ebp-0C]
 0054A7DE    push       54AC8C; '' AND TABLE_NAME LIKE ''
 0054A7E3    lea        edx,[ebp-10]
 0054A7E6    mov        eax,dword ptr [ebp+10]
 0054A7E9    call       004D31DC
 0054A7EE    push       dword ptr [ebp-10]
 0054A7F1    push       54ACAC; '' AND COLUMN_NAME LIKE ''
 0054A7F6    lea        edx,[ebp-14]
 0054A7F9    mov        eax,dword ptr [ebp+0C]
 0054A7FC    call       004D31DC
 0054A801    push       dword ptr [ebp-14]
 0054A804    push       54ACD0; '''
 0054A809    lea        eax,[ebp-4]
 0054A80C    mov        edx,7
 0054A811    call       @LStrCatN
 0054A816    lea        edx,[ebp-1C]
 0054A819    mov        eax,esi
 0054A81B    mov        ecx,dword ptr [eax]
 0054A81D    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054A823    mov        eax,dword ptr [ebp-1C]
 0054A826    lea        edx,[ebp-18]
 0054A829    mov        ecx,dword ptr [eax]
 0054A82B    call       dword ptr [ecx+0C]
 0054A82E    mov        eax,dword ptr [ebp-18]
 0054A831    lea        ecx,[ebp-8]
 0054A834    mov        edx,dword ptr [ebp-4]
 0054A837    mov        edi,dword ptr [eax]
 0054A839    call       dword ptr [edi+0C]
>0054A83C    jmp        0054AB23
 0054A841    mov        eax,dword ptr [ebx]
 0054A843    mov        edx,dword ptr [eax]
 0054A845    call       dword ptr [edx+1E4]
 0054A84B    mov        eax,dword ptr [ebx]
 0054A84D    mov        edx,1
 0054A852    mov        ecx,dword ptr [eax]
 0054A854    call       dword ptr [ecx+130]
 0054A85A    lea        ecx,[ebp-20]
 0054A85D    mov        edx,2
 0054A862    mov        eax,dword ptr [ebp-8]
 0054A865    mov        edi,dword ptr [eax]
 0054A867    call       dword ptr [edi+20]
 0054A86A    mov        ecx,dword ptr [ebp-20]
 0054A86D    mov        eax,dword ptr [ebx]
 0054A86F    mov        edx,2
 0054A874    mov        edi,dword ptr [eax]
 0054A876    call       dword ptr [edi+158]
 0054A87C    lea        ecx,[ebp-24]
 0054A87F    mov        edx,3
 0054A884    mov        eax,dword ptr [ebp-8]
 0054A887    mov        edi,dword ptr [eax]
 0054A889    call       dword ptr [edi+20]
 0054A88C    mov        ecx,dword ptr [ebp-24]
 0054A88F    mov        eax,dword ptr [ebx]
 0054A891    mov        edx,3
 0054A896    mov        edi,dword ptr [eax]
 0054A898    call       dword ptr [edi+158]
 0054A89E    lea        ecx,[ebp-28]
 0054A8A1    mov        edx,4
 0054A8A6    mov        eax,dword ptr [ebp-8]
 0054A8A9    mov        edi,dword ptr [eax]
 0054A8AB    call       dword ptr [edi+20]
 0054A8AE    mov        ecx,dword ptr [ebp-28]
 0054A8B1    mov        eax,dword ptr [ebx]
 0054A8B3    mov        edx,4
 0054A8B8    mov        edi,dword ptr [eax]
 0054A8BA    call       dword ptr [edi+158]
 0054A8C0    lea        ecx,[ebp-2C]
 0054A8C3    mov        edx,6
 0054A8C8    mov        eax,dword ptr [ebp-8]
 0054A8CB    mov        edi,dword ptr [eax]
 0054A8CD    call       dword ptr [edi+20]
 0054A8D0    mov        eax,dword ptr [ebp-2C]
 0054A8D3    push       eax
 0054A8D4    mov        edx,0A
 0054A8D9    mov        eax,dword ptr [ebp-8]
 0054A8DC    mov        ecx,dword ptr [eax]
 0054A8DE    call       dword ptr [ecx+34]
 0054A8E1    push       eax
 0054A8E2    mov        edx,9
 0054A8E7    mov        eax,dword ptr [ebp-8]
 0054A8EA    mov        ecx,dword ptr [eax]
 0054A8EC    call       dword ptr [ecx+34]
 0054A8EF    mov        edx,eax
 0054A8F1    pop        ecx
 0054A8F2    pop        eax
 0054A8F3    call       005477D4
 0054A8F8    xor        ecx,ecx
 0054A8FA    mov        cl,al
 0054A8FC    mov        eax,dword ptr [ebx]
 0054A8FE    mov        edx,5
 0054A903    mov        edi,dword ptr [eax]
 0054A905    call       dword ptr [edi+140]
 0054A90B    lea        ecx,[ebp-30]
 0054A90E    mov        edx,6
 0054A913    mov        eax,dword ptr [ebp-8]
 0054A916    mov        edi,dword ptr [eax]
 0054A918    call       dword ptr [edi+20]
 0054A91B    mov        ecx,dword ptr [ebp-30]
 0054A91E    mov        eax,dword ptr [ebx]
 0054A920    mov        edx,6
 0054A925    mov        edi,dword ptr [eax]
 0054A927    call       dword ptr [edi+158]
 0054A92D    mov        edx,7
 0054A932    mov        eax,dword ptr [ebp-8]
 0054A935    mov        ecx,dword ptr [eax]
 0054A937    call       dword ptr [ecx+34]
 0054A93A    mov        ecx,eax
 0054A93C    mov        eax,dword ptr [ebx]
 0054A93E    mov        edx,7
 0054A943    mov        edi,dword ptr [eax]
 0054A945    call       dword ptr [edi+140]
 0054A94B    mov        eax,dword ptr [ebx]
 0054A94D    mov        edx,8
 0054A952    mov        ecx,dword ptr [eax]
 0054A954    call       dword ptr [ecx+130]
 0054A95A    mov        edx,9
 0054A95F    mov        eax,dword ptr [ebp-8]
 0054A962    mov        ecx,dword ptr [eax]
 0054A964    call       dword ptr [ecx+34]
 0054A967    mov        ecx,eax
 0054A969    mov        eax,dword ptr [ebx]
 0054A96B    mov        edx,9
 0054A970    mov        edi,dword ptr [eax]
 0054A972    call       dword ptr [edi+140]
 0054A978    mov        edx,0A
 0054A97D    mov        eax,dword ptr [ebp-8]
 0054A980    mov        ecx,dword ptr [eax]
 0054A982    call       dword ptr [ecx+34]
 0054A985    mov        ecx,eax
 0054A987    mov        eax,dword ptr [ebx]
 0054A989    mov        edx,0A
 0054A98E    mov        edi,dword ptr [eax]
 0054A990    call       dword ptr [edi+140]
 0054A996    lea        ecx,[ebp-38]
 0054A999    mov        edx,0B
 0054A99E    mov        eax,dword ptr [ebp-8]
 0054A9A1    mov        edi,dword ptr [eax]
 0054A9A3    call       dword ptr [edi+20]
 0054A9A6    mov        eax,dword ptr [ebp-38]
 0054A9A9    lea        edx,[ebp-34]
 0054A9AC    call       UpperCase
 0054A9B1    mov        eax,dword ptr [ebp-34]
 0054A9B4    mov        edx,54ACDC; 'N'
 0054A9B9    call       @LStrCmp
>0054A9BE    jne        0054A9E7
 0054A9C0    mov        eax,dword ptr [ebx]
 0054A9C2    xor        ecx,ecx
 0054A9C4    mov        edx,0B
 0054A9C9    mov        edi,dword ptr [eax]
 0054A9CB    call       dword ptr [edi+140]
 0054A9D1    mov        eax,dword ptr [ebx]
 0054A9D3    mov        ecx,54ACE8; 'NO'
 0054A9D8    mov        edx,12
 0054A9DD    mov        edi,dword ptr [eax]
 0054A9DF    call       dword ptr [edi+158]
>0054A9E5    jmp        0054AA0F
 0054A9E7    mov        eax,dword ptr [ebx]
 0054A9E9    mov        ecx,1
 0054A9EE    mov        edx,0B
 0054A9F3    mov        edi,dword ptr [eax]
 0054A9F5    call       dword ptr [edi+140]
 0054A9FB    mov        eax,dword ptr [ebx]
 0054A9FD    mov        ecx,54ACF4; 'YES'
 0054AA02    mov        edx,12
 0054AA07    mov        edi,dword ptr [eax]
 0054AA09    call       dword ptr [edi+158]
 0054AA0F    mov        eax,dword ptr [ebx]
 0054AA11    mov        edx,0C
 0054AA16    mov        ecx,dword ptr [eax]
 0054AA18    call       dword ptr [ecx+130]
 0054AA1E    lea        ecx,[ebp-3C]
 0054AA21    mov        edx,0D
 0054AA26    mov        eax,dword ptr [ebp-8]
 0054AA29    mov        edi,dword ptr [eax]
 0054AA2B    call       dword ptr [edi+20]
 0054AA2E    mov        ecx,dword ptr [ebp-3C]
 0054AA31    mov        eax,dword ptr [ebx]
 0054AA33    mov        edx,0D
 0054AA38    mov        edi,dword ptr [eax]
 0054AA3A    call       dword ptr [edi+158]
 0054AA40    mov        eax,dword ptr [ebx]
 0054AA42    mov        edx,0E
 0054AA47    mov        ecx,dword ptr [eax]
 0054AA49    call       dword ptr [ecx+130]
 0054AA4F    mov        eax,dword ptr [ebx]
 0054AA51    mov        edx,0F
 0054AA56    mov        ecx,dword ptr [eax]
 0054AA58    call       dword ptr [ecx+130]
 0054AA5E    mov        eax,dword ptr [ebx]
 0054AA60    mov        edx,10
 0054AA65    mov        ecx,dword ptr [eax]
 0054AA67    call       dword ptr [ecx+130]
 0054AA6D    mov        edx,11
 0054AA72    mov        eax,dword ptr [ebp-8]
 0054AA75    mov        ecx,dword ptr [eax]
 0054AA77    call       dword ptr [ecx+34]
 0054AA7A    mov        ecx,eax
 0054AA7C    mov        eax,dword ptr [ebx]
 0054AA7E    mov        edx,11
 0054AA83    mov        edi,dword ptr [eax]
 0054AA85    call       dword ptr [edi+140]
 0054AA8B    mov        eax,dword ptr [ebx]
 0054AA8D    mov        edx,13
 0054AA92    mov        ecx,dword ptr [eax]
 0054AA94    call       dword ptr [ecx+130]
 0054AA9A    lea        ecx,[ebp-40]
 0054AA9D    mov        edx,4
 0054AAA2    mov        eax,dword ptr [ebp-8]
 0054AAA5    mov        edi,dword ptr [eax]
 0054AAA7    call       dword ptr [edi+20]
 0054AAAA    mov        eax,dword ptr [ebp-40]
 0054AAAD    push       eax
 0054AAAE    lea        edx,[ebp-44]
 0054AAB1    mov        eax,esi
 0054AAB3    mov        ecx,dword ptr [eax]
 0054AAB5    call       dword ptr [ecx+23C]; TZOracleDatabaseMetadata.sub_004DAB04
 0054AABB    mov        eax,dword ptr [ebp-44]
 0054AABE    pop        edx
 0054AABF    mov        ecx,dword ptr [eax]
 0054AAC1    call       dword ptr [ecx+0C]
 0054AAC4    mov        ecx,eax
 0054AAC6    mov        eax,dword ptr [ebx]
 0054AAC8    mov        edx,14
 0054AACD    mov        edi,dword ptr [eax]
 0054AACF    call       dword ptr [edi+134]
 0054AAD5    mov        eax,dword ptr [ebx]
 0054AAD7    mov        cl,1
 0054AAD9    mov        edx,15
 0054AADE    mov        edi,dword ptr [eax]
 0054AAE0    call       dword ptr [edi+134]
 0054AAE6    mov        eax,dword ptr [ebx]
 0054AAE8    mov        cl,1
 0054AAEA    mov        edx,16
 0054AAEF    mov        edi,dword ptr [eax]
 0054AAF1    call       dword ptr [edi+134]
 0054AAF7    mov        eax,dword ptr [ebx]
 0054AAF9    mov        cl,1
 0054AAFB    mov        edx,17
 0054AB00    mov        edi,dword ptr [eax]
 0054AB02    call       dword ptr [edi+134]
 0054AB08    mov        eax,dword ptr [ebx]
 0054AB0A    xor        ecx,ecx
 0054AB0C    mov        edx,18
 0054AB11    mov        edi,dword ptr [eax]
 0054AB13    call       dword ptr [edi+134]
 0054AB19    mov        eax,dword ptr [ebx]
 0054AB1B    mov        edx,dword ptr [eax]
 0054AB1D    call       dword ptr [edx+1D0]
 0054AB23    mov        eax,dword ptr [ebp-8]
 0054AB26    mov        edx,dword ptr [eax]
 0054AB28    call       dword ptr [edx+0C]
 0054AB2B    test       al,al
<0054AB2D    jne        0054A841
 0054AB33    mov        eax,dword ptr [ebp-8]
 0054AB36    mov        edx,dword ptr [eax]
 0054AB38    call       dword ptr [edx+10]
 0054AB3B    xor        eax,eax
 0054AB3D    pop        edx
 0054AB3E    pop        ecx
 0054AB3F    pop        ecx
 0054AB40    mov        dword ptr fs:[eax],edx
 0054AB43    push       54AB92
 0054AB48    lea        eax,[ebp-44]
 0054AB4B    call       @IntfClear
 0054AB50    lea        eax,[ebp-40]
 0054AB53    mov        edx,9
 0054AB58    call       @LStrArrayClr
 0054AB5D    lea        eax,[ebp-1C]
 0054AB60    call       @IntfClear
 0054AB65    lea        eax,[ebp-18]
 0054AB68    call       @IntfClear
 0054AB6D    lea        eax,[ebp-14]
 0054AB70    mov        edx,3
 0054AB75    call       @LStrArrayClr
 0054AB7A    lea        eax,[ebp-8]
 0054AB7D    call       @IntfClear
 0054AB82    lea        eax,[ebp-4]
 0054AB85    call       @LStrClr
 0054AB8A    ret
<0054AB8B    jmp        @HandleFinally
<0054AB90    jmp        0054AB48
 0054AB92    pop        edi
 0054AB93    pop        esi
 0054AB94    pop        ebx
 0054AB95    mov        esp,ebp
 0054AB97    pop        ebp
 0054AB98    ret        0C
*}
//end;

//0054ACF8
//procedure sub_0054ACF8(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054ACF8    push       ebp
 0054ACF9    mov        ebp,esp
 0054ACFB    push       0
 0054ACFD    push       0
 0054ACFF    push       0
 0054AD01    push       0
 0054AD03    push       0
 0054AD05    push       0
 0054AD07    push       ebx
 0054AD08    push       esi
 0054AD09    push       edi
 0054AD0A    mov        esi,ecx
 0054AD0C    mov        ebx,eax
 0054AD0E    mov        edi,dword ptr [ebp+10]
 0054AD11    xor        eax,eax
 0054AD13    push       ebp
 0054AD14    push       54AE18
 0054AD19    push       dword ptr fs:[eax]
 0054AD1C    mov        dword ptr fs:[eax],esp
 0054AD1F    lea        eax,[ebp-4]
 0054AD22    mov        edx,54AE30; 'SELECT NULL AS TABLE_CAT, TABLE_SCHEMA AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, GRANTOR, GRANTEE, PRIVILEGE, GRANTABLE AS IS_GRANTABLE FROM SYS.ALL_COL_PRIVS WHERE'
 0054AD27    call       @LStrLAsg
 0054AD2C    test       esi,esi
>0054AD2E    je         0054AD4B
 0054AD30    push       dword ptr [ebp-4]
 0054AD33    push       54AEDC; ' TABLE_SCHEMA=''
 0054AD38    push       esi
 0054AD39    push       54AEF4; '' AND'
 0054AD3E    lea        eax,[ebp-4]
 0054AD41    mov        edx,4
 0054AD46    call       @LStrCatN
 0054AD4B    test       edi,edi
>0054AD4D    je         0054AD6A
 0054AD4F    push       dword ptr [ebp-4]
 0054AD52    push       54AF04; ' TABLE_NAME=''
 0054AD57    push       edi
 0054AD58    push       54AEF4; '' AND'
 0054AD5D    lea        eax,[ebp-4]
 0054AD60    mov        edx,4
 0054AD65    call       @LStrCatN
 0054AD6A    push       dword ptr [ebp-4]
 0054AD6D    push       54AF1C; ' COLUMN_NAME LIKE ''
 0054AD72    lea        edx,[ebp-8]
 0054AD75    mov        eax,dword ptr [ebp+0C]
 0054AD78    call       004D31DC
 0054AD7D    push       dword ptr [ebp-8]
 0054AD80    push       54AF38; '''
 0054AD85    lea        eax,[ebp-4]
 0054AD88    mov        edx,4
 0054AD8D    call       @LStrCatN
 0054AD92    mov        eax,dword ptr [ebp+8]
 0054AD95    push       eax
 0054AD96    lea        edx,[ebp-14]
 0054AD99    mov        eax,ebx
 0054AD9B    mov        ecx,dword ptr [eax]
 0054AD9D    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054ADA3    mov        eax,dword ptr [ebp-14]
 0054ADA6    lea        edx,[ebp-10]
 0054ADA9    mov        ecx,dword ptr [eax]
 0054ADAB    call       dword ptr [ecx+0C]
 0054ADAE    mov        eax,dword ptr [ebp-10]
 0054ADB1    lea        ecx,[ebp-0C]
 0054ADB4    mov        edx,dword ptr [ebp-4]
 0054ADB7    mov        esi,dword ptr [eax]
 0054ADB9    call       dword ptr [esi+0C]
 0054ADBC    mov        eax,dword ptr [ebp-0C]
 0054ADBF    push       eax
 0054ADC0    lea        ecx,[ebp-18]
 0054ADC3    mov        edx,dword ptr ds:[61B9E4]; ^gvar_0061DD50:TZMetadataColumnDefs
 0054ADC9    mov        edx,dword ptr [edx]
 0054ADCB    mov        eax,ebx
 0054ADCD    call       004D8E7C
 0054ADD2    mov        ecx,dword ptr [ebp-18]
 0054ADD5    mov        eax,ebx
 0054ADD7    pop        edx
 0054ADD8    call       004D9194
 0054ADDD    xor        eax,eax
 0054ADDF    pop        edx
 0054ADE0    pop        ecx
 0054ADE1    pop        ecx
 0054ADE2    mov        dword ptr fs:[eax],edx
 0054ADE5    push       54AE1F
 0054ADEA    lea        eax,[ebp-18]
 0054ADED    call       @IntfClear
 0054ADF2    lea        eax,[ebp-14]
 0054ADF5    call       @IntfClear
 0054ADFA    lea        eax,[ebp-10]
 0054ADFD    call       @IntfClear
 0054AE02    lea        eax,[ebp-0C]
 0054AE05    call       @IntfClear
 0054AE0A    lea        eax,[ebp-8]
 0054AE0D    mov        edx,2
 0054AE12    call       @LStrArrayClr
 0054AE17    ret
<0054AE18    jmp        @HandleFinally
<0054AE1D    jmp        0054ADEA
 0054AE1F    pop        edi
 0054AE20    pop        esi
 0054AE21    pop        ebx
 0054AE22    mov        esp,ebp
 0054AE24    pop        ebp
 0054AE25    ret        0C
*}
//end;

//0054AF3C
//procedure sub_0054AF3C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054AF3C    push       ebp
 0054AF3D    mov        ebp,esp
 0054AF3F    push       0
 0054AF41    push       0
 0054AF43    push       0
 0054AF45    push       0
 0054AF47    push       0
 0054AF49    push       0
 0054AF4B    push       0
 0054AF4D    push       ebx
 0054AF4E    push       esi
 0054AF4F    mov        esi,ecx
 0054AF51    mov        ebx,eax
 0054AF53    xor        eax,eax
 0054AF55    push       ebp
 0054AF56    push       54B01E
 0054AF5B    push       dword ptr fs:[eax]
 0054AF5E    mov        dword ptr fs:[eax],esp
 0054AF61    push       54B038; 'SELECT NULL AS TABLE_CAT, TABLE_SCHEMA AS TABLE_SCHEM, TABLE_NAME, GRANTOR, GRANTEE, PRIVILEGE, GRANTABLE AS IS_GRANTABLE FROM SYS.ALL_TAB_PRIVS WHERE TABLE_SCHEMA LIKE ''
 0054AF66    lea        edx,[ebp-8]
 0054AF69    mov        eax,esi
 0054AF6B    call       004D31DC
 0054AF70    push       dword ptr [ebp-8]
 0054AF73    push       54B0EC; '' AND TABLE_NAME LIKE ''
 0054AF78    lea        edx,[ebp-0C]
 0054AF7B    mov        eax,dword ptr [ebp+0C]
 0054AF7E    call       004D31DC
 0054AF83    push       dword ptr [ebp-0C]
 0054AF86    push       54B10C; '''
 0054AF8B    lea        eax,[ebp-4]
 0054AF8E    mov        edx,5
 0054AF93    call       @LStrCatN
 0054AF98    mov        eax,dword ptr [ebp+8]
 0054AF9B    push       eax
 0054AF9C    lea        edx,[ebp-18]
 0054AF9F    mov        eax,ebx
 0054AFA1    mov        ecx,dword ptr [eax]
 0054AFA3    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054AFA9    mov        eax,dword ptr [ebp-18]
 0054AFAC    lea        edx,[ebp-14]
 0054AFAF    mov        ecx,dword ptr [eax]
 0054AFB1    call       dword ptr [ecx+0C]
 0054AFB4    mov        eax,dword ptr [ebp-14]
 0054AFB7    lea        ecx,[ebp-10]
 0054AFBA    mov        edx,dword ptr [ebp-4]
 0054AFBD    mov        esi,dword ptr [eax]
 0054AFBF    call       dword ptr [esi+0C]
 0054AFC2    mov        eax,dword ptr [ebp-10]
 0054AFC5    push       eax
 0054AFC6    lea        ecx,[ebp-1C]
 0054AFC9    mov        edx,dword ptr ds:[61B538]; ^gvar_0061DD54:TZMetadataColumnDefs
 0054AFCF    mov        edx,dword ptr [edx]
 0054AFD1    mov        eax,ebx
 0054AFD3    call       004D8E7C
 0054AFD8    mov        ecx,dword ptr [ebp-1C]
 0054AFDB    mov        eax,ebx
 0054AFDD    pop        edx
 0054AFDE    call       004D9194
 0054AFE3    xor        eax,eax
 0054AFE5    pop        edx
 0054AFE6    pop        ecx
 0054AFE7    pop        ecx
 0054AFE8    mov        dword ptr fs:[eax],edx
 0054AFEB    push       54B025
 0054AFF0    lea        eax,[ebp-1C]
 0054AFF3    call       @IntfClear
 0054AFF8    lea        eax,[ebp-18]
 0054AFFB    call       @IntfClear
 0054B000    lea        eax,[ebp-14]
 0054B003    call       @IntfClear
 0054B008    lea        eax,[ebp-10]
 0054B00B    call       @IntfClear
 0054B010    lea        eax,[ebp-0C]
 0054B013    mov        edx,3
 0054B018    call       @LStrArrayClr
 0054B01D    ret
<0054B01E    jmp        @HandleFinally
<0054B023    jmp        0054AFF0
 0054B025    pop        esi
 0054B026    pop        ebx
 0054B027    mov        esp,ebp
 0054B029    pop        ebp
 0054B02A    ret        8
*}
//end;

//0054B110
//procedure sub_0054B110(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054B110    push       ebp
 0054B111    mov        ebp,esp
 0054B113    push       0
 0054B115    push       0
 0054B117    push       0
 0054B119    push       0
 0054B11B    push       0
 0054B11D    push       ebx
 0054B11E    push       esi
 0054B11F    push       edi
 0054B120    mov        esi,ecx
 0054B122    mov        ebx,eax
 0054B124    mov        edi,dword ptr [ebp+0C]
 0054B127    xor        eax,eax
 0054B129    push       ebp
 0054B12A    push       54B20E
 0054B12F    push       dword ptr fs:[eax]
 0054B132    mov        dword ptr fs:[eax],esp
 0054B135    lea        eax,[ebp-4]
 0054B138    mov        edx,54B228; 'SELECT NULL AS TABLE_CAT, A.OWNER AS TABLE_SCHEM, A.TABLE_NAME, B.COLUMN_NAME, B.COLUMN_POSITION AS KEY_SEQ, A.INDEX_NAME AS PK_NAME FROM ALL_INDEXES A, ALL_IND_COLUMNS B WHERE A.OWNER=B.INDEX_OWNER AND A.INDEX_NAME=B.INDEX_NAME AND A.TABLE_OWNER=B.TABLE_OWNER AND A.TABLE_NAME=B.TABLE_NAME AND A.UNIQUENESS='UNIQUE' AND A.GENERATED='Y' AND A.INDEX_NAME LIKE 'SYS_%''
 0054B13D    call       @LStrLAsg
 0054B142    test       esi,esi
>0054B144    je         0054B161
 0054B146    push       dword ptr [ebp-4]
 0054B149    push       54B3A0; ' AND A.OWNER=''
 0054B14E    push       esi
 0054B14F    push       54B3B8; '''
 0054B154    lea        eax,[ebp-4]
 0054B157    mov        edx,4
 0054B15C    call       @LStrCatN
 0054B161    test       edi,edi
>0054B163    je         0054B180
 0054B165    push       dword ptr [ebp-4]
 0054B168    push       54B3C4; ' AND A.TABLE_OWNER=''
 0054B16D    push       edi
 0054B16E    push       54B3B8; '''
 0054B173    lea        eax,[ebp-4]
 0054B176    mov        edx,4
 0054B17B    call       @LStrCatN
 0054B180    lea        eax,[ebp-4]
 0054B183    mov        edx,54B3E4; ' ORDER BY A.INDEX_NAME, B.COLUMN_POSITION'
 0054B188    call       @LStrCat
 0054B18D    mov        eax,dword ptr [ebp+8]
 0054B190    push       eax
 0054B191    lea        edx,[ebp-10]
 0054B194    mov        eax,ebx
 0054B196    mov        ecx,dword ptr [eax]
 0054B198    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054B19E    mov        eax,dword ptr [ebp-10]
 0054B1A1    lea        edx,[ebp-0C]
 0054B1A4    mov        ecx,dword ptr [eax]
 0054B1A6    call       dword ptr [ecx+0C]
 0054B1A9    mov        eax,dword ptr [ebp-0C]
 0054B1AC    lea        ecx,[ebp-8]
 0054B1AF    mov        edx,dword ptr [ebp-4]
 0054B1B2    mov        esi,dword ptr [eax]
 0054B1B4    call       dword ptr [esi+0C]
 0054B1B7    mov        eax,dword ptr [ebp-8]
 0054B1BA    push       eax
 0054B1BB    lea        ecx,[ebp-14]
 0054B1BE    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 0054B1C4    mov        edx,dword ptr [edx]
 0054B1C6    mov        eax,ebx
 0054B1C8    call       004D8E7C
 0054B1CD    mov        ecx,dword ptr [ebp-14]
 0054B1D0    mov        eax,ebx
 0054B1D2    pop        edx
 0054B1D3    call       004D9194
 0054B1D8    xor        eax,eax
 0054B1DA    pop        edx
 0054B1DB    pop        ecx
 0054B1DC    pop        ecx
 0054B1DD    mov        dword ptr fs:[eax],edx
 0054B1E0    push       54B215
 0054B1E5    lea        eax,[ebp-14]
 0054B1E8    call       @IntfClear
 0054B1ED    lea        eax,[ebp-10]
 0054B1F0    call       @IntfClear
 0054B1F5    lea        eax,[ebp-0C]
 0054B1F8    call       @IntfClear
 0054B1FD    lea        eax,[ebp-8]
 0054B200    call       @IntfClear
 0054B205    lea        eax,[ebp-4]
 0054B208    call       @LStrClr
 0054B20D    ret
<0054B20E    jmp        @HandleFinally
<0054B213    jmp        0054B1E5
 0054B215    pop        edi
 0054B216    pop        esi
 0054B217    pop        ebx
 0054B218    mov        esp,ebp
 0054B21A    pop        ebp
 0054B21B    ret        8
*}
//end;

//0054B410
//procedure sub_0054B410(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0054B410    push       ebp
 0054B411    mov        ebp,esp
 0054B413    push       ecx
 0054B414    mov        ecx,5
 0054B419    push       0
 0054B41B    push       0
 0054B41D    dec        ecx
<0054B41E    jne        0054B419
 0054B420    xchg       ecx,dword ptr [ebp-4]
 0054B423    push       ebx
 0054B424    push       esi
 0054B425    push       edi
 0054B426    mov        edi,ecx
 0054B428    mov        esi,eax
 0054B42A    mov        ebx,dword ptr [ebp+8]
 0054B42D    xor        eax,eax
 0054B42F    push       ebp
 0054B430    push       54B6FD
 0054B435    push       dword ptr fs:[eax]
 0054B438    mov        dword ptr fs:[eax],esp
 0054B43B    mov        ecx,ebx
 0054B43D    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 0054B443    mov        edx,dword ptr [edx]
 0054B445    mov        eax,esi
 0054B447    call       004D8E7C
 0054B44C    lea        eax,[ebp-4]
 0054B44F    mov        edx,54B718; 'SELECT NULL, A.OWNER, A.TABLE_NAME, A.UNIQUENESS, NULL, A.INDEX_NAME, 3, B.COLUMN_POSITION, B.COLUMN_NAME, B.DESCEND, 0, 0, NULL FROM ALL_INDEXES A, ALL_IND_COLUMNS B WHERE A.OWNER=B.INDEX_OWNER AND A.INDEX_NAME=B.INDEX_NAME AND A.TABLE_OWNER=B.TABLE_OWNER AND A.TABLE_NAME=B.TABLE_NAME'
 0054B454    call       @LStrLAsg
 0054B459    test       edi,edi
>0054B45B    je         0054B478
 0054B45D    push       dword ptr [ebp-4]
 0054B460    push       54B840; ' AND A.TABLE_OWNER=''
 0054B465    push       edi
 0054B466    push       54B860; '''
 0054B46B    lea        eax,[ebp-4]
 0054B46E    mov        edx,4
 0054B473    call       @LStrCatN
 0054B478    cmp        dword ptr [ebp+14],0
>0054B47C    je         0054B49B
 0054B47E    push       dword ptr [ebp-4]
 0054B481    push       54B86C; ' AND A.TABLE_NAME=''
 0054B486    push       dword ptr [ebp+14]
 0054B489    push       54B860; '''
 0054B48E    lea        eax,[ebp-4]
 0054B491    mov        edx,4
 0054B496    call       @LStrCatN
 0054B49B    cmp        byte ptr [ebp+10],0
>0054B49F    je         0054B4AE
 0054B4A1    lea        eax,[ebp-4]
 0054B4A4    mov        edx,54B888; ' AND A.UNIQUENESS='UNIQUE''
 0054B4A9    call       @LStrCat
 0054B4AE    lea        eax,[ebp-4]
 0054B4B1    mov        edx,54B8AC; ' ORDER BY A.UNIQUENESS DESC, A.INDEX_NAME, B.COLUMN_POSITION'
 0054B4B6    call       @LStrCat
 0054B4BB    lea        edx,[ebp-10]
 0054B4BE    mov        eax,esi
 0054B4C0    mov        ecx,dword ptr [eax]
 0054B4C2    call       dword ptr [ecx+238]; TZOracleDatabaseMetadata.sub_004D8E64
 0054B4C8    mov        eax,dword ptr [ebp-10]
 0054B4CB    lea        edx,[ebp-0C]
 0054B4CE    mov        ecx,dword ptr [eax]
 0054B4D0    call       dword ptr [ecx+0C]
 0054B4D3    mov        eax,dword ptr [ebp-0C]
 0054B4D6    lea        ecx,[ebp-8]
 0054B4D9    mov        edx,dword ptr [ebp-4]
 0054B4DC    mov        esi,dword ptr [eax]
 0054B4DE    call       dword ptr [esi+0C]
>0054B4E1    jmp        0054B6AA
 0054B4E6    mov        eax,dword ptr [ebx]
 0054B4E8    mov        edx,dword ptr [eax]
 0054B4EA    call       dword ptr [edx+1E4]
 0054B4F0    mov        eax,dword ptr [ebx]
 0054B4F2    mov        edx,1
 0054B4F7    mov        ecx,dword ptr [eax]
 0054B4F9    call       dword ptr [ecx+130]
 0054B4FF    lea        ecx,[ebp-14]
 0054B502    mov        edx,2
 0054B507    mov        eax,dword ptr [ebp-8]
 0054B50A    mov        esi,dword ptr [eax]
 0054B50C    call       dword ptr [esi+20]
 0054B50F    mov        ecx,dword ptr [ebp-14]
 0054B512    mov        eax,dword ptr [ebx]
 0054B514    mov        edx,2
 0054B519    mov        esi,dword ptr [eax]
 0054B51B    call       dword ptr [esi+158]
 0054B521    lea        ecx,[ebp-18]
 0054B524    mov        edx,3
 0054B529    mov        eax,dword ptr [ebp-8]
 0054B52C    mov        esi,dword ptr [eax]
 0054B52E    call       dword ptr [esi+20]
 0054B531    mov        ecx,dword ptr [ebp-18]
 0054B534    mov        eax,dword ptr [ebx]
 0054B536    mov        edx,3
 0054B53B    mov        esi,dword ptr [eax]
 0054B53D    call       dword ptr [esi+158]
 0054B543    lea        ecx,[ebp-20]
 0054B546    mov        edx,4
 0054B54B    mov        eax,dword ptr [ebp-8]
 0054B54E    mov        esi,dword ptr [eax]
 0054B550    call       dword ptr [esi+20]
 0054B553    mov        eax,dword ptr [ebp-20]
 0054B556    lea        edx,[ebp-1C]
 0054B559    call       UpperCase
 0054B55E    mov        eax,dword ptr [ebp-1C]
 0054B561    mov        edx,54B8F4; 'UNIQUE'
 0054B566    call       @LStrCmp
 0054B56B    setne      cl
 0054B56E    mov        eax,dword ptr [ebx]
 0054B570    mov        edx,4
 0054B575    mov        esi,dword ptr [eax]
 0054B577    call       dword ptr [esi+134]
 0054B57D    mov        eax,dword ptr [ebx]
 0054B57F    mov        edx,5
 0054B584    mov        ecx,dword ptr [eax]
 0054B586    call       dword ptr [ecx+130]
 0054B58C    lea        ecx,[ebp-24]
 0054B58F    mov        edx,6
 0054B594    mov        eax,dword ptr [ebp-8]
 0054B597    mov        esi,dword ptr [eax]
 0054B599    call       dword ptr [esi+20]
 0054B59C    mov        ecx,dword ptr [ebp-24]
 0054B59F    mov        eax,dword ptr [ebx]
 0054B5A1    mov        edx,6
 0054B5A6    mov        esi,dword ptr [eax]
 0054B5A8    call       dword ptr [esi+158]
 0054B5AE    mov        edx,7
 0054B5B3    mov        eax,dword ptr [ebp-8]
 0054B5B6    mov        ecx,dword ptr [eax]
 0054B5B8    call       dword ptr [ecx+34]
 0054B5BB    mov        ecx,eax
 0054B5BD    mov        eax,dword ptr [ebx]
 0054B5BF    mov        edx,7
 0054B5C4    mov        esi,dword ptr [eax]
 0054B5C6    call       dword ptr [esi+140]
 0054B5CC    mov        edx,8
 0054B5D1    mov        eax,dword ptr [ebp-8]
 0054B5D4    mov        ecx,dword ptr [eax]
 0054B5D6    call       dword ptr [ecx+34]
 0054B5D9    mov        ecx,eax
 0054B5DB    mov        eax,dword ptr [ebx]
 0054B5DD    mov        edx,8
 0054B5E2    mov        esi,dword ptr [eax]
 0054B5E4    call       dword ptr [esi+140]
 0054B5EA    lea        ecx,[ebp-28]
 0054B5ED    mov        edx,9
 0054B5F2    mov        eax,dword ptr [ebp-8]
 0054B5F5    mov        esi,dword ptr [eax]
 0054B5F7    call       dword ptr [esi+20]
 0054B5FA    mov        ecx,dword ptr [ebp-28]
 0054B5FD    mov        eax,dword ptr [ebx]
 0054B5FF    mov        edx,9
 0054B604    mov        esi,dword ptr [eax]
 0054B606    call       dword ptr [esi+158]
 0054B60C    lea        ecx,[ebp-2C]
 0054B60F    mov        edx,0A
 0054B614    mov        eax,dword ptr [ebp-8]
 0054B617    mov        esi,dword ptr [eax]
 0054B619    call       dword ptr [esi+20]
 0054B61C    mov        eax,dword ptr [ebp-2C]
 0054B61F    mov        edx,54B904; 'ASC'
 0054B624    call       @LStrCmp
>0054B629    jne        0054B641
 0054B62B    mov        eax,dword ptr [ebx]
 0054B62D    mov        ecx,54B910; 'A'
 0054B632    mov        edx,0A
 0054B637    mov        esi,dword ptr [eax]
 0054B639    call       dword ptr [esi+158]
>0054B63F    jmp        0054B655
 0054B641    mov        eax,dword ptr [ebx]
 0054B643    mov        ecx,54B91C; 'D'
 0054B648    mov        edx,0A
 0054B64D    mov        esi,dword ptr [eax]
 0054B64F    call       dword ptr [esi+158]
 0054B655    mov        edx,0B
 0054B65A    mov        eax,dword ptr [ebp-8]
 0054B65D    mov        ecx,dword ptr [eax]
 0054B65F    call       dword ptr [ecx+34]
 0054B662    mov        ecx,eax
 0054B664    mov        eax,dword ptr [ebx]
 0054B666    mov        edx,0B
 0054B66B    mov        esi,dword ptr [eax]
 0054B66D    call       dword ptr [esi+140]
 0054B673    mov        edx,0C
 0054B678    mov        eax,dword ptr [ebp-8]
 0054B67B    mov        ecx,dword ptr [eax]
 0054B67D    call       dword ptr [ecx+34]
 0054B680    mov        ecx,eax
 0054B682    mov        eax,dword ptr [ebx]
 0054B684    mov        edx,0C
 0054B689    mov        esi,dword ptr [eax]
 0054B68B    call       dword ptr [esi+140]
 0054B691    mov        eax,dword ptr [ebx]
 0054B693    mov        edx,0D
 0054B698    mov        ecx,dword ptr [eax]
 0054B69A    call       dword ptr [ecx+130]
 0054B6A0    mov        eax,dword ptr [ebx]
 0054B6A2    mov        edx,dword ptr [eax]
 0054B6A4    call       dword ptr [edx+1D0]
 0054B6AA    mov        eax,dword ptr [ebp-8]
 0054B6AD    mov        edx,dword ptr [eax]
 0054B6AF    call       dword ptr [edx+0C]
 0054B6B2    test       al,al
<0054B6B4    jne        0054B4E6
 0054B6BA    mov        eax,dword ptr [ebp-8]
 0054B6BD    mov        edx,dword ptr [eax]
 0054B6BF    call       dword ptr [edx+10]
 0054B6C2    xor        eax,eax
 0054B6C4    pop        edx
 0054B6C5    pop        ecx
 0054B6C6    pop        ecx
 0054B6C7    mov        dword ptr fs:[eax],edx
 0054B6CA    push       54B704
 0054B6CF    lea        eax,[ebp-2C]
 0054B6D2    mov        edx,7
 0054B6D7    call       @LStrArrayClr
 0054B6DC    lea        eax,[ebp-10]
 0054B6DF    call       @IntfClear
 0054B6E4    lea        eax,[ebp-0C]
 0054B6E7    call       @IntfClear
 0054B6EC    lea        eax,[ebp-8]
 0054B6EF    call       @IntfClear
 0054B6F4    lea        eax,[ebp-4]
 0054B6F7    call       @LStrClr
 0054B6FC    ret
<0054B6FD    jmp        @HandleFinally
<0054B702    jmp        0054B6CF
 0054B704    pop        edi
 0054B705    pop        esi
 0054B706    pop        ebx
 0054B707    mov        esp,ebp
 0054B709    pop        ebp
 0054B70A    ret        10
*}
//end;

//0054B920
//function sub_0054B920(?:?):Boolean;
//begin
{*
 0054B920    test       dl,dl
 0054B922    sete       al
 0054B925    ret
*}
//end;

//0054B928
//function sub_0054B928(?:?; ?:?):?;
//begin
{*
 0054B928    test       dl,dl
>0054B92A    jne        0054B930
 0054B92C    test       cl,cl
>0054B92E    je         0054B933
 0054B930    xor        eax,eax
 0054B932    ret
 0054B933    mov        al,1
 0054B935    ret
*}
//end;

Initialization
Finalization
//0054B938
{*
 0054B938    push       ebp
 0054B939    mov        ebp,esp
 0054B93B    xor        eax,eax
 0054B93D    push       ebp
 0054B93E    push       54B974
 0054B943    push       dword ptr fs:[eax]
 0054B946    mov        dword ptr fs:[eax],esp
 0054B949    inc        dword ptr ds:[61ED0C]
>0054B94F    jne        0054B966
 0054B951    mov        eax,616868; gvar_00616868:array[4] of String
 0054B956    mov        ecx,4
 0054B95B    mov        edx,dword ptr ds:[4010F8]; String
 0054B961    call       @FinalizeArray
 0054B966    xor        eax,eax
 0054B968    pop        edx
 0054B969    pop        ecx
 0054B96A    pop        ecx
 0054B96B    mov        dword ptr fs:[eax],edx
 0054B96E    push       54B97B
 0054B973    ret
<0054B974    jmp        @HandleFinally
<0054B979    jmp        0054B973
 0054B97B    pop        ebp
 0054B97C    ret
*}
end.