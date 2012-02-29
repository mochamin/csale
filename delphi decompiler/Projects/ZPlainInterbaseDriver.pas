{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainInterbaseDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZInterbase6PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZInterbase6PlainDriver; _Dv__:Boolean);
  end;
  TZInterbase5PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZInterbase5PlainDriver; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0052183C
//function sub_0052183C(?:?):?;
//begin
{*
 0052183C    sub        eax,1
>0052183F    jno        00521846
 00521841    call       @IntOver
 00521846    imul       eax,eax,98
>0052184C    jno        00521853
 0052184E    call       @IntOver
 00521853    add        eax,0AC
>00521858    jno        0052185F
 0052185A    call       @IntOver
 0052185F    ret
*}
//end;

//00521860
//constructor TZInterbase6PlainDriver.Create(?:TZInterbase6PlainDriver; _Dv__:Boolean);
//begin
{*
 00521860    test       dl,dl
>00521862    je         0052186C
 00521864    add        esp,0FFFFFFF0
 00521867    call       @ClassCreate
 0052186C    test       dl,dl
>0052186E    je         0052187F
 00521870    call       @AfterConstruction
 00521875    pop        dword ptr fs:[0]
 0052187C    add        esp,0C
 0052187F    ret
*}
//end;

//00521E90
//constructor TZInterbase5PlainDriver.Create(?:TZInterbase5PlainDriver; _Dv__:Boolean);
//begin
{*
 00521E90    test       dl,dl
>00521E92    je         00521E9C
 00521E94    add        esp,0FFFFFFF0
 00521E97    call       @ClassCreate
 00521E9C    test       dl,dl
>00521E9E    je         00521EAF
 00521EA0    call       @AfterConstruction
 00521EA5    pop        dword ptr fs:[0]
 00521EAC    add        esp,0C
 00521EAF    ret
*}
//end;

end.