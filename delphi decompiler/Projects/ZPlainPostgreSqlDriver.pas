{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainPostgreSqlDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZPostgreSQL7PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZPostgreSQL7PlainDriver; _Dv__:Boolean);
  end;
  TZPostgreSQL8PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZPostgreSQL8PlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0050FF70
//constructor TZPostgreSQL7PlainDriver.Create(?:TZPostgreSQL7PlainDriver; _Dv__:Boolean);
//begin
{*
 0050FF70    test       dl,dl
>0050FF72    je         0050FF7C
 0050FF74    add        esp,0FFFFFFF0
 0050FF77    call       @ClassCreate
 0050FF7C    test       dl,dl
>0050FF7E    je         0050FF8F
 0050FF80    call       @AfterConstruction
 0050FF85    pop        dword ptr fs:[0]
 0050FF8C    add        esp,0C
 0050FF8F    ret
*}
//end;

//005105C0
//constructor TZPostgreSQL8PlainDriver.Create(?:TZPostgreSQL8PlainDriver; _Dv__:Boolean);
//begin
{*
 005105C0    test       dl,dl
>005105C2    je         005105CC
 005105C4    add        esp,0FFFFFFF0
 005105C7    call       @ClassCreate
 005105CC    test       dl,dl
>005105CE    je         005105DF
 005105D0    call       @AfterConstruction
 005105D5    pop        dword ptr fs:[0]
 005105DC    add        esp,0C
 005105DF    ret
*}
//end;

end.