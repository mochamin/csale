{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainSqLiteDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZSQLite28PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZSQLite28PlainDriver; _Dv__:Boolean);
  end;
  TZSQLite3PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZSQLite3PlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0053BE74
//constructor TZSQLite28PlainDriver.Create(?:TZSQLite28PlainDriver; _Dv__:Boolean);
//begin
{*
 0053BE74    test       dl,dl
>0053BE76    je         0053BE80
 0053BE78    add        esp,0FFFFFFF0
 0053BE7B    call       @ClassCreate
 0053BE80    test       dl,dl
>0053BE82    je         0053BE93
 0053BE84    call       @AfterConstruction
 0053BE89    pop        dword ptr fs:[0]
 0053BE90    add        esp,0C
 0053BE93    ret
*}
//end;

//0053C2E8
//constructor TZSQLite3PlainDriver.Create(?:TZSQLite3PlainDriver; _Dv__:Boolean);
//begin
{*
 0053C2E8    test       dl,dl
>0053C2EA    je         0053C2F4
 0053C2EC    add        esp,0FFFFFFF0
 0053C2EF    call       @ClassCreate
 0053C2F4    test       dl,dl
>0053C2F6    je         0053C307
 0053C2F8    call       @AfterConstruction
 0053C2FD    pop        dword ptr fs:[0]
 0053C304    add        esp,0C
 0053C307    ret
*}
//end;

end.