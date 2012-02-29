{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainFirebirdDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZFirebird10PlainDriver = class(TZAbstractObject)
    //constructor Create(?:TZFirebird10PlainDriver; _Dv__:Boolean);
  end;
  TZFirebird15PlainDriver = class(TZAbstractObject)
  public
    //procedure sub_005261C0(?:?); virtual;
    //procedure sub_00526178(?:?); virtual;
    procedure sub_005261F0(); virtual;
    //constructor Create(?:TZFirebird15PlainDriver; _Dv__:Boolean);
  end;
  TZFirebirdD15PlainDriver = class(TZFirebird15PlainDriver)
  public
    //procedure sub_0052678C(?:?); virtual;
    //procedure sub_005267BC(?:?); virtual;
    procedure sub_0052680C(); virtual;
  end;
  TZFirebird20PlainDriver = class(TZAbstractObject)
  public
    //procedure sub_00526888(?:?); virtual;
    //procedure sub_00526840(?:?); virtual;
    procedure sub_005268B8(); virtual;
    //constructor Create(?:TZFirebird20PlainDriver; _Dv__:Boolean);
  end;
  TZFirebirdD20PlainDriver = class(TZFirebird20PlainDriver)
  public
    //procedure sub_00526E54(?:?); virtual;
    //procedure sub_00526E84(?:?); virtual;
    procedure sub_00526ED4(); virtual;
  end;
  TZFirebird21PlainDriver = class(TZAbstractObject)
  public
    //procedure sub_00526F50(?:?); virtual;
    //procedure sub_00526F08(?:?); virtual;
    procedure sub_00526F80(); virtual;
    //constructor Create(?:TZFirebird21PlainDriver; _Dv__:Boolean);
  end;
  TZFirebirdD21PlainDriver = class(TZFirebird21PlainDriver)
  public
    //procedure sub_00527524(?:?); virtual;
    //procedure sub_00527554(?:?); virtual;
    procedure sub_005275A4(); virtual;
  end;

implementation

{$R *.DFM}

//00525B28
//constructor TZFirebird10PlainDriver.Create(?:TZFirebird10PlainDriver; _Dv__:Boolean);
//begin
{*
 00525B28    test       dl,dl
>00525B2A    je         00525B34
 00525B2C    add        esp,0FFFFFFF0
 00525B2F    call       @ClassCreate
 00525B34    test       dl,dl
>00525B36    je         00525B47
 00525B38    call       @AfterConstruction
 00525B3D    pop        dword ptr fs:[0]
 00525B44    add        esp,0C
 00525B47    ret
*}
//end;

//00526158
//constructor TZFirebird15PlainDriver.Create(?:TZFirebird15PlainDriver; _Dv__:Boolean);
//begin
{*
 00526158    test       dl,dl
>0052615A    je         00526164
 0052615C    add        esp,0FFFFFFF0
 0052615F    call       @ClassCreate
 00526164    test       dl,dl
>00526166    je         00526177
 00526168    call       @AfterConstruction
 0052616D    pop        dword ptr fs:[0]
 00526174    add        esp,0C
 00526177    ret
*}
//end;

//00526178
//procedure sub_00526178(?:?);
//begin
{*
 00526178    push       ebp
 00526179    mov        ebp,esp
 0052617B    push       ebx
 0052617C    mov        ebx,edx
 0052617E    mov        eax,ebx
 00526180    mov        edx,526198; 'Native Plain Driver for Firebird 1.5'
 00526185    call       @LStrAsg
 0052618A    pop        ebx
 0052618B    pop        ebp
 0052618C    ret
*}
//end;

//005261C0
//procedure sub_005261C0(?:?);
//begin
{*
 005261C0    push       ebp
 005261C1    mov        ebp,esp
 005261C3    push       ebx
 005261C4    mov        ebx,edx
 005261C6    mov        eax,ebx
 005261C8    mov        edx,5261E0; 'firebird-1.5'
 005261CD    call       @LStrAsg
 005261D2    pop        ebx
 005261D3    pop        ebp
 005261D4    ret
*}
//end;

//005261F0
procedure sub_005261F0();
begin
{*
 005261F0    push       ebp
 005261F1    mov        ebp,esp
 005261F3    mov        eax,[0061BFE8]; ^gvar_0061E888:TZFirebirdNativeLibraryLoader
 005261F8    mov        eax,dword ptr [eax]
 005261FA    mov        edx,dword ptr [eax]
 005261FC    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 005261FF    pop        ebp
 00526200    ret
*}
end;

//0052678C
//procedure sub_0052678C(?:?);
//begin
{*
 0052678C    push       ebp
 0052678D    mov        ebp,esp
 0052678F    push       ebx
 00526790    mov        ebx,edx
 00526792    mov        eax,ebx
 00526794    mov        edx,5267AC; 'firebirdd-1.5'
 00526799    call       @LStrAsg
 0052679E    pop        ebx
 0052679F    pop        ebp
 005267A0    ret
*}
//end;

//005267BC
//procedure sub_005267BC(?:?);
//begin
{*
 005267BC    push       ebp
 005267BD    mov        ebp,esp
 005267BF    push       ebx
 005267C0    mov        ebx,edx
 005267C2    mov        eax,ebx
 005267C4    mov        edx,5267DC; 'Native Plain Driver for Firebird Embedded 1.5'
 005267C9    call       @LStrAsg
 005267CE    pop        ebx
 005267CF    pop        ebp
 005267D0    ret
*}
//end;

//0052680C
procedure sub_0052680C();
begin
{*
 0052680C    push       ebp
 0052680D    mov        ebp,esp
 0052680F    mov        eax,[0061B3D8]; ^gvar_0061E88C:TZFirebirdNativeLibraryLoader
 00526814    mov        eax,dword ptr [eax]
 00526816    mov        edx,dword ptr [eax]
 00526818    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 0052681B    pop        ebp
 0052681C    ret
*}
end;

//00526820
//constructor TZFirebird20PlainDriver.Create(?:TZFirebird20PlainDriver; _Dv__:Boolean);
//begin
{*
 00526820    test       dl,dl
>00526822    je         0052682C
 00526824    add        esp,0FFFFFFF0
 00526827    call       @ClassCreate
 0052682C    test       dl,dl
>0052682E    je         0052683F
 00526830    call       @AfterConstruction
 00526835    pop        dword ptr fs:[0]
 0052683C    add        esp,0C
 0052683F    ret
*}
//end;

//00526840
//procedure sub_00526840(?:?);
//begin
{*
 00526840    push       ebp
 00526841    mov        ebp,esp
 00526843    push       ebx
 00526844    mov        ebx,edx
 00526846    mov        eax,ebx
 00526848    mov        edx,526860; 'Native Plain Driver for Firebird 2.0'
 0052684D    call       @LStrAsg
 00526852    pop        ebx
 00526853    pop        ebp
 00526854    ret
*}
//end;

//00526888
//procedure sub_00526888(?:?);
//begin
{*
 00526888    push       ebp
 00526889    mov        ebp,esp
 0052688B    push       ebx
 0052688C    mov        ebx,edx
 0052688E    mov        eax,ebx
 00526890    mov        edx,5268A8; 'firebird-2.0'
 00526895    call       @LStrAsg
 0052689A    pop        ebx
 0052689B    pop        ebp
 0052689C    ret
*}
//end;

//005268B8
procedure sub_005268B8();
begin
{*
 005268B8    push       ebp
 005268B9    mov        ebp,esp
 005268BB    mov        eax,[0061BFE4]; ^gvar_0061E968:TZFirebirdNativeLibraryLoader
 005268C0    mov        eax,dword ptr [eax]
 005268C2    mov        edx,dword ptr [eax]
 005268C4    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 005268C7    pop        ebp
 005268C8    ret
*}
end;

//00526E54
//procedure sub_00526E54(?:?);
//begin
{*
 00526E54    push       ebp
 00526E55    mov        ebp,esp
 00526E57    push       ebx
 00526E58    mov        ebx,edx
 00526E5A    mov        eax,ebx
 00526E5C    mov        edx,526E74; 'firebirdd-2.0'
 00526E61    call       @LStrAsg
 00526E66    pop        ebx
 00526E67    pop        ebp
 00526E68    ret
*}
//end;

//00526E84
//procedure sub_00526E84(?:?);
//begin
{*
 00526E84    push       ebp
 00526E85    mov        ebp,esp
 00526E87    push       ebx
 00526E88    mov        ebx,edx
 00526E8A    mov        eax,ebx
 00526E8C    mov        edx,526EA4; 'Native Plain Driver for Firebird Embedded 2.0'
 00526E91    call       @LStrAsg
 00526E96    pop        ebx
 00526E97    pop        ebp
 00526E98    ret
*}
//end;

//00526ED4
procedure sub_00526ED4();
begin
{*
 00526ED4    push       ebp
 00526ED5    mov        ebp,esp
 00526ED7    mov        eax,[0061B3D4]; ^gvar_0061E96C:TZFirebirdNativeLibraryLoader
 00526EDC    mov        eax,dword ptr [eax]
 00526EDE    mov        edx,dword ptr [eax]
 00526EE0    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 00526EE3    pop        ebp
 00526EE4    ret
*}
end;

//00526EE8
//constructor TZFirebird21PlainDriver.Create(?:TZFirebird21PlainDriver; _Dv__:Boolean);
//begin
{*
 00526EE8    test       dl,dl
>00526EEA    je         00526EF4
 00526EEC    add        esp,0FFFFFFF0
 00526EEF    call       @ClassCreate
 00526EF4    test       dl,dl
>00526EF6    je         00526F07
 00526EF8    call       @AfterConstruction
 00526EFD    pop        dword ptr fs:[0]
 00526F04    add        esp,0C
 00526F07    ret
*}
//end;

//00526F08
//procedure sub_00526F08(?:?);
//begin
{*
 00526F08    push       ebp
 00526F09    mov        ebp,esp
 00526F0B    push       ebx
 00526F0C    mov        ebx,edx
 00526F0E    mov        eax,ebx
 00526F10    mov        edx,526F28; 'Native Plain Driver for Firebird 2.1'
 00526F15    call       @LStrAsg
 00526F1A    pop        ebx
 00526F1B    pop        ebp
 00526F1C    ret
*}
//end;

//00526F50
//procedure sub_00526F50(?:?);
//begin
{*
 00526F50    push       ebp
 00526F51    mov        ebp,esp
 00526F53    push       ebx
 00526F54    mov        ebx,edx
 00526F56    mov        eax,ebx
 00526F58    mov        edx,526F70; 'firebird-2.1'
 00526F5D    call       @LStrAsg
 00526F62    pop        ebx
 00526F63    pop        ebp
 00526F64    ret
*}
//end;

//00526F80
procedure sub_00526F80();
begin
{*
 00526F80    push       ebp
 00526F81    mov        ebp,esp
 00526F83    mov        eax,[0061BFE0]; ^gvar_0061EA4C:TZFirebirdNativeLibraryLoader
 00526F88    mov        eax,dword ptr [eax]
 00526F8A    mov        edx,dword ptr [eax]
 00526F8C    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 00526F8F    pop        ebp
 00526F90    ret
*}
end;

//00527524
//procedure sub_00527524(?:?);
//begin
{*
 00527524    push       ebp
 00527525    mov        ebp,esp
 00527527    push       ebx
 00527528    mov        ebx,edx
 0052752A    mov        eax,ebx
 0052752C    mov        edx,527544; 'firebirdd-2.1'
 00527531    call       @LStrAsg
 00527536    pop        ebx
 00527537    pop        ebp
 00527538    ret
*}
//end;

//00527554
//procedure sub_00527554(?:?);
//begin
{*
 00527554    push       ebp
 00527555    mov        ebp,esp
 00527557    push       ebx
 00527558    mov        ebx,edx
 0052755A    mov        eax,ebx
 0052755C    mov        edx,527574; 'Native Plain Driver for Firebird Embedded 2.1'
 00527561    call       @LStrAsg
 00527566    pop        ebx
 00527567    pop        ebp
 00527568    ret
*}
//end;

//005275A4
procedure sub_005275A4();
begin
{*
 005275A4    push       ebp
 005275A5    mov        ebp,esp
 005275A7    mov        eax,[0061B3D0]; ^gvar_0061EA50:TZFirebirdNativeLibraryLoader
 005275AC    mov        eax,dword ptr [eax]
 005275AE    mov        edx,dword ptr [eax]
 005275B0    call       dword ptr [edx+0C]; TZFirebirdNativeLibraryLoader.sub_004EBCDC
 005275B3    pop        ebp
 005275B4    ret
*}
end;

end.