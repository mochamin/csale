{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit222;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZAdoPlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZAdoPlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004DE4DC
//constructor TZAdoPlainDriver.Create(?:TZAdoPlainDriver; _Dv__:Boolean);
//begin
{*
 004DE4DC    test       dl,dl
>004DE4DE    je         004DE4E8
 004DE4E0    add        esp,0FFFFFFF0
 004DE4E3    call       @ClassCreate
 004DE4E8    test       dl,dl
>004DE4EA    je         004DE4FB
 004DE4EC    call       @AfterConstruction
 004DE4F1    pop        dword ptr fs:[0]
 004DE4F8    add        esp,0C
 004DE4FB    ret
*}
//end;

end.