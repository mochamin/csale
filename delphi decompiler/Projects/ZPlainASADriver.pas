{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainASADriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZASA7PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZASA7PlainDriver; _Dv__:Boolean);
  end;
  TZASA8PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZASA8PlainDriver; _Dv__:Boolean);
  end;
  TZASA9PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZASA9PlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0054F9DC
//constructor TZASA7PlainDriver.Create(?:TZASA7PlainDriver; _Dv__:Boolean);
//begin
{*
 0054F9DC    test       dl,dl
>0054F9DE    je         0054F9E8
 0054F9E0    add        esp,0FFFFFFF0
 0054F9E3    call       @ClassCreate
 0054F9E8    test       dl,dl
>0054F9EA    je         0054F9FB
 0054F9EC    call       @AfterConstruction
 0054F9F1    pop        dword ptr fs:[0]
 0054F9F8    add        esp,0C
 0054F9FB    ret
*}
//end;

//0054FEB8
//constructor TZASA8PlainDriver.Create(?:TZASA8PlainDriver; _Dv__:Boolean);
//begin
{*
 0054FEB8    test       dl,dl
>0054FEBA    je         0054FEC4
 0054FEBC    add        esp,0FFFFFFF0
 0054FEBF    call       @ClassCreate
 0054FEC4    test       dl,dl
>0054FEC6    je         0054FED7
 0054FEC8    call       @AfterConstruction
 0054FECD    pop        dword ptr fs:[0]
 0054FED4    add        esp,0C
 0054FED7    ret
*}
//end;

//00550380
//constructor TZASA9PlainDriver.Create(?:TZASA9PlainDriver; _Dv__:Boolean);
//begin
{*
 00550380    test       dl,dl
>00550382    je         0055038C
 00550384    add        esp,0FFFFFFF0
 00550387    call       @ClassCreate
 0055038C    test       dl,dl
>0055038E    je         0055039F
 00550390    call       @AfterConstruction
 00550395    pop        dword ptr fs:[0]
 0055039C    add        esp,0C
 0055039F    ret
*}
//end;

end.