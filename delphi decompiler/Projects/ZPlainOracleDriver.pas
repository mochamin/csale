{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainOracleDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZOracle9iPlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZOracle9iPlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00544570
//constructor TZOracle9iPlainDriver.Create(?:TZOracle9iPlainDriver; _Dv__:Boolean);
//begin
{*
 00544570    test       dl,dl
>00544572    je         0054457C
 00544574    add        esp,0FFFFFFF0
 00544577    call       @ClassCreate
 0054457C    test       dl,dl
>0054457E    je         0054458F
 00544580    call       @AfterConstruction
 00544585    pop        dword ptr fs:[0]
 0054458C    add        esp,0C
 0054458F    ret
*}
//end;

end.