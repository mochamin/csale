{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainDbLibDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TDBLibError = record //size = 24
  f10:String;
  f14:String;;
  TDBLibMessage = record //size = 32
  f10:String;
  f14:String;
  f18:String;;
  TZDBLibSybaseASE125PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZDBLibSybaseASE125PlainDriver; _Dv__:Boolean);
  end;
  TZDBLibMSSQL7PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZDBLibMSSQL7PlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004EEDD8
//constructor TZDBLibSybaseASE125PlainDriver.Create(?:TZDBLibSybaseASE125PlainDriver; _Dv__:Boolean);
//begin
{*
 004EEDD8    test       dl,dl
>004EEDDA    je         004EEDE4
 004EEDDC    add        esp,0FFFFFFF0
 004EEDDF    call       @ClassCreate
 004EEDE4    test       dl,dl
>004EEDE6    je         004EEDF7
 004EEDE8    call       @AfterConstruction
 004EEDED    pop        dword ptr fs:[0]
 004EEDF4    add        esp,0C
 004EEDF7    ret
*}
//end;

//004EF360
//constructor TZDBLibMSSQL7PlainDriver.Create(?:TZDBLibMSSQL7PlainDriver; _Dv__:Boolean);
//begin
{*
 004EF360    test       dl,dl
>004EF362    je         004EF36C
 004EF364    add        esp,0FFFFFFF0
 004EF367    call       @ClassCreate
 004EF36C    test       dl,dl
>004EF36E    je         004EF37F
 004EF370    call       @AfterConstruction
 004EF375    pop        dword ptr fs:[0]
 004EF37C    add        esp,0C
 004EF37F    ret
*}
//end;

Initialization
//004EF940
{*
 004EF940    push       ebp
 004EF941    mov        ebp,esp
 004EF943    sub        dword ptr ds:[61E288],1
 004EF94A    pop        ebp
 004EF94B    ret
*}
Finalization
end.