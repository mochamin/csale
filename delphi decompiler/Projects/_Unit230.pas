{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit230;

interface

uses
  Classes, Windows, Graphics, ZVariant, Contnrs;

type
  TZVariable = class(TObject)
  public
    f4:String;//f4
    f8:TZVariant;//f8
  end;
  TZVariablesList = class(TInterfacedObject)
  public
    fC:TObjectList;//fC
    destructor Destroy; virtual;
    //constructor Create(?:TZVariablesList; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//00563DD8
//constructor TZVariablesList.Create(?:TZVariablesList; _Dv__:Boolean);
//begin
{*
 00563DD8    push       ebp
 00563DD9    mov        ebp,esp
 00563DDB    push       ebx
 00563DDC    push       esi
 00563DDD    test       dl,dl
>00563DDF    je         00563DE9
 00563DE1    add        esp,0FFFFFFF0
 00563DE4    call       @ClassCreate
 00563DE9    mov        ebx,edx
 00563DEB    mov        esi,eax
 00563DED    mov        dl,1
 00563DEF    mov        eax,[00433048]; TObjectList
 00563DF4    call       TObjectList.Create; TObjectList.Create
 00563DF9    mov        dword ptr [esi+0C],eax; TZVariablesList.?fC:TObjectList
 00563DFC    mov        eax,esi
 00563DFE    test       bl,bl
>00563E00    je         00563E11
 00563E02    call       @AfterConstruction
 00563E07    pop        dword ptr fs:[0]
 00563E0E    add        esp,0C
 00563E11    mov        eax,esi
 00563E13    pop        esi
 00563E14    pop        ebx
 00563E15    pop        ebp
 00563E16    ret
*}
//end;

//00563E18
destructor TZVariablesList.Destroy;
begin
{*
 00563E18    push       ebp
 00563E19    mov        ebp,esp
 00563E1B    push       ebx
 00563E1C    push       esi
 00563E1D    call       @BeforeDestruction
 00563E22    mov        ebx,edx
 00563E24    mov        esi,eax
 00563E26    mov        eax,dword ptr [esi+0C]; TZVariablesList.?fC:TObjectList
 00563E29    call       TObject.Free
 00563E2E    mov        edx,ebx
 00563E30    and        dl,0FC
 00563E33    mov        eax,esi
 00563E35    call       TObject.Destroy
 00563E3A    test       bl,bl
>00563E3C    jle        00563E45
 00563E3E    mov        eax,esi
 00563E40    call       @ClassDestroy
 00563E45    pop        esi
 00563E46    pop        ebx
 00563E47    pop        ebp
 00563E48    ret
*}
end;

end.