{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZDbcASA;

interface

uses
  Classes, Windows, Graphics, _Unit147, ZPlainASADriver, _Unit139;

type
  TZASADriver = class(TZAbstractDriver)
  public
    f18:IZASA7PlainDriver;//f18
    f1C:IZASA8PlainDriver;//f1C
    f20:IZASA9PlainDriver;//f20
    //procedure sub_00560EA8(?:?); virtual;
    //procedure sub_00560BA8(?:?; ?:?; ?:?); virtual;
    //function sub_00560D34():?; virtual;
    //function sub_00560D3C():?; virtual;
    //procedure sub_00560D40(?:?); virtual;
    //procedure sub_00560D80(?:?); virtual;
    //constructor Create(?:TZASADriver; _Dv__:Boolean);
  end;
  TZASAConnection = class(TZAbstractConnection)
  public
    //f34:?;//f34
    fBC:dword;//fBC
    fC0:IZASAPlainDriver;//fC0
    destructor Destroy; virtual;
    //procedure sub_00561338(?:?; ?:?); virtual;
    //procedure sub_005612E8(?:?; ?:?; ?:?); virtual;
    //procedure sub_00561298(?:?; ?:?; ?:?); virtual;
    procedure sub_00561114; virtual;
    procedure sub_005618C4; virtual;
    procedure sub_005613E0; virtual;
    procedure sub_00560F84; virtual;
    procedure sub_00561B6C; virtual;
    //constructor Create(?:TZASAConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
  end;
  TZASACachedResolver = class(TZGenericCachedResolver)
  public
    //procedure sub_00561C54(?:?; ?:?); virtual;
  end;

implementation

{$R *.DFM}

//00560BA8
//procedure sub_00560BA8(?:?; ?:?; ?:?);
//begin
{*
 00560BA8    push       ebp
 00560BA9    mov        ebp,esp
 00560BAB    push       0
 00560BAD    push       0
 00560BAF    push       0
 00560BB1    push       0
 00560BB3    push       0
 00560BB5    push       0
 00560BB7    push       0
 00560BB9    push       ebx
 00560BBA    push       esi
 00560BBB    push       edi
 00560BBC    mov        edi,ecx
 00560BBE    mov        esi,edx
 00560BC0    mov        ebx,eax
 00560BC2    xor        eax,eax
 00560BC4    push       ebp
 00560BC5    push       560C9C
 00560BCA    push       dword ptr fs:[eax]
 00560BCD    mov        dword ptr fs:[eax],esp
 00560BD0    mov        dl,1
 00560BD2    mov        eax,[0041C8E4]; TStringList
 00560BD7    call       TObject.Create; TStringList.Create
 00560BDC    mov        dword ptr [ebp-4],eax
 00560BDF    xor        eax,eax
 00560BE1    push       ebp
 00560BE2    push       560C72
 00560BE7    push       dword ptr fs:[eax]
 00560BEA    mov        dword ptr fs:[eax],esp
 00560BED    lea        eax,[ebp-18]
 00560BF0    push       eax
 00560BF1    lea        eax,[ebp-0C]
 00560BF4    push       eax
 00560BF5    lea        eax,[ebp-10]
 00560BF8    push       eax
 00560BF9    lea        eax,[ebp-14]
 00560BFC    push       eax
 00560BFD    mov        eax,dword ptr [ebp-4]
 00560C00    push       eax
 00560C01    lea        ecx,[ebp-8]
 00560C04    mov        edx,edi
 00560C06    mov        eax,esi
 00560C08    call       004D28A4
 00560C0D    lea        ecx,[ebp-1C]
 00560C10    mov        edx,esi
 00560C12    mov        eax,ebx
 00560C14    call       00560DBC
 00560C19    push       esi
 00560C1A    mov        eax,dword ptr [ebp-1C]
 00560C1D    push       eax
 00560C1E    mov        eax,dword ptr [ebp-8]
 00560C21    push       eax
 00560C22    mov        eax,dword ptr [ebp-18]
 00560C25    push       eax
 00560C26    mov        eax,dword ptr [ebp-0C]
 00560C29    push       eax
 00560C2A    mov        eax,dword ptr [ebp-10]
 00560C2D    push       eax
 00560C2E    mov        eax,dword ptr [ebp-14]
 00560C31    push       eax
 00560C32    mov        eax,dword ptr [ebp-4]
 00560C35    push       eax
 00560C36    mov        ecx,ebx
 00560C38    test       ecx,ecx
>00560C3A    je         00560C3F
 00560C3C    sub        ecx,0FFFFFFEC
 00560C3F    mov        dl,1
 00560C41    mov        eax,[00560A54]; TZASAConnection
 00560C46    call       TZASAConnection.Create; TZASAConnection.Create
 00560C4B    mov        edx,eax
 00560C4D    test       edx,edx
>00560C4F    je         00560C54
 00560C51    sub        edx,0FFFFFFD0
 00560C54    mov        eax,dword ptr [ebp+8]
 00560C57    call       @IntfCopy
 00560C5C    xor        eax,eax
 00560C5E    pop        edx
 00560C5F    pop        ecx
 00560C60    pop        ecx
 00560C61    mov        dword ptr fs:[eax],edx
 00560C64    push       560C79
 00560C69    mov        eax,dword ptr [ebp-4]
 00560C6C    call       TObject.Free
 00560C71    ret
<00560C72    jmp        @HandleFinally
<00560C77    jmp        00560C69
 00560C79    xor        eax,eax
 00560C7B    pop        edx
 00560C7C    pop        ecx
 00560C7D    pop        ecx
 00560C7E    mov        dword ptr fs:[eax],edx
 00560C81    push       560CA3
 00560C86    lea        eax,[ebp-1C]
 00560C89    call       @IntfClear
 00560C8E    lea        eax,[ebp-14]
 00560C91    mov        edx,4
 00560C96    call       @LStrArrayClr
 00560C9B    ret
<00560C9C    jmp        @HandleFinally
<00560CA1    jmp        00560C86
 00560CA3    pop        edi
 00560CA4    pop        esi
 00560CA5    pop        ebx
 00560CA6    mov        esp,ebp
 00560CA8    pop        ebp
 00560CA9    ret        4
*}
//end;

//00560CAC
//constructor TZASADriver.Create(?:TZASADriver; _Dv__:Boolean);
//begin
{*
 00560CAC    push       ebp
 00560CAD    mov        ebp,esp
 00560CAF    push       ebx
 00560CB0    push       esi
 00560CB1    test       dl,dl
>00560CB3    je         00560CBD
 00560CB5    add        esp,0FFFFFFF0
 00560CB8    call       @ClassCreate
 00560CBD    mov        ebx,edx
 00560CBF    mov        esi,eax
 00560CC1    mov        dl,1
 00560CC3    mov        eax,[0054F2C0]; TZASA7PlainDriver
 00560CC8    call       TZASA7PlainDriver.Create; TZASA7PlainDriver.Create
 00560CCD    mov        edx,eax
 00560CCF    test       edx,edx
>00560CD1    je         00560CD6
 00560CD3    sub        edx,0FFFFFFF0
 00560CD6    lea        eax,[esi+18]; TZASADriver.?f18:IZASA7PlainDriver
 00560CD9    call       @IntfCopy
 00560CDE    mov        dl,1
 00560CE0    mov        eax,[0054F618]; TZASA8PlainDriver
 00560CE5    call       TZASA8PlainDriver.Create; TZASA8PlainDriver.Create
 00560CEA    mov        edx,eax
 00560CEC    test       edx,edx
>00560CEE    je         00560CF3
 00560CF0    sub        edx,0FFFFFFF0
 00560CF3    lea        eax,[esi+1C]; TZASADriver.?f1C:IZASA8PlainDriver
 00560CF6    call       @IntfCopy
 00560CFB    mov        dl,1
 00560CFD    mov        eax,[0054F970]; TZASA9PlainDriver
 00560D02    call       TZASA9PlainDriver.Create; TZASA9PlainDriver.Create
 00560D07    mov        edx,eax
 00560D09    test       edx,edx
>00560D0B    je         00560D10
 00560D0D    sub        edx,0FFFFFFF0
 00560D10    lea        eax,[esi+20]; TZASADriver.?f20:IZASA9PlainDriver
 00560D13    call       @IntfCopy
 00560D18    mov        eax,esi
 00560D1A    test       bl,bl
>00560D1C    je         00560D2D
 00560D1E    call       @AfterConstruction
 00560D23    pop        dword ptr fs:[0]
 00560D2A    add        esp,0C
 00560D2D    mov        eax,esi
 00560D2F    pop        esi
 00560D30    pop        ebx
 00560D31    pop        ebp
 00560D32    ret
*}
//end;

//00560D34
//function sub_00560D34():?;
//begin
{*
 00560D34    mov        eax,1
 00560D39    ret
*}
//end;

//00560D3C
//function sub_00560D3C():?;
//begin
{*
 00560D3C    xor        eax,eax
 00560D3E    ret
*}
//end;

//00560D40
//procedure sub_00560D40(?:?);
//begin
{*
 00560D40    push       ebp
 00560D41    mov        ebp,esp
 00560D43    push       ebx
 00560D44    push       esi
 00560D45    mov        esi,edx
 00560D47    mov        ebx,eax
 00560D49    cmp        dword ptr [ebx+0C],0; TZASADriver.?fC:IZTokenizer
>00560D4D    jne        00560D6F
 00560D4F    mov        dl,1
 00560D51    mov        eax,[004F7734]; TZSybaseTokenizer
 00560D56    call       TZSybaseTokenizer.Create; TZSybaseTokenizer.Create
 00560D5B    mov        edx,eax
 00560D5D    test       edx,edx
>00560D5F    je         00560D67
 00560D61    sub        edx,0FFFFFBD8
 00560D67    lea        eax,[ebx+0C]; TZASADriver.?fC:IZTokenizer
 00560D6A    call       @IntfCopy
 00560D6F    mov        eax,esi
 00560D71    mov        edx,dword ptr [ebx+0C]; TZASADriver.?fC:IZTokenizer
 00560D74    call       @IntfCopy
 00560D79    pop        esi
 00560D7A    pop        ebx
 00560D7B    pop        ebp
 00560D7C    ret
*}
//end;

//00560D80
//procedure sub_00560D80(?:?);
//begin
{*
 00560D80    push       ebp
 00560D81    mov        ebp,esp
 00560D83    push       ebx
 00560D84    push       esi
 00560D85    mov        esi,edx
 00560D87    mov        ebx,eax
 00560D89    cmp        dword ptr [ebx+10],0; TZASADriver.?f10:IZStatementAnalyser
>00560D8D    jne        00560DAC
 00560D8F    mov        dl,1
 00560D91    mov        eax,[004F82A4]; TZSybaseStatementAnalyser
 00560D96    call       TZGenericStatementAnalyser.Create; TZSybaseStatementAnalyser.Create
 00560D9B    mov        edx,eax
 00560D9D    test       edx,edx
>00560D9F    je         00560DA4
 00560DA1    sub        edx,0FFFFFFE0
 00560DA4    lea        eax,[ebx+10]; TZASADriver.?f10:IZStatementAnalyser
 00560DA7    call       @IntfCopy
 00560DAC    mov        eax,esi
 00560DAE    mov        edx,dword ptr [ebx+10]; TZASADriver.?f10:IZStatementAnalyser
 00560DB1    call       @IntfCopy
 00560DB6    pop        esi
 00560DB7    pop        ebx
 00560DB8    pop        ebp
 00560DB9    ret
*}
//end;

//00560DBC
//procedure sub_00560DBC(?:TZASADriver; ?:?; ?:?);
//begin
{*
 00560DBC    push       ebp
 00560DBD    mov        ebp,esp
 00560DBF    push       0
 00560DC1    push       0
 00560DC3    push       0
 00560DC5    push       0
 00560DC7    push       0
 00560DC9    push       ebx
 00560DCA    push       esi
 00560DCB    push       edi
 00560DCC    mov        esi,ecx
 00560DCE    mov        edi,edx
 00560DD0    mov        ebx,eax
 00560DD2    xor        eax,eax
 00560DD4    push       ebp
 00560DD5    push       560E98
 00560DDA    push       dword ptr fs:[eax]
 00560DDD    mov        dword ptr fs:[eax],esp
 00560DE0    lea        edx,[ebp-8]
 00560DE3    mov        eax,ebx
 00560DE5    mov        ecx,dword ptr [eax]
 00560DE7    call       dword ptr [ecx]; TZASADriver.sub_00560EA8
 00560DE9    mov        edx,dword ptr [ebp-8]
 00560DEC    lea        ecx,[ebp-4]
 00560DEF    mov        eax,edi
 00560DF1    call       004D263C
 00560DF6    lea        edx,[ebp-0C]
 00560DF9    mov        eax,dword ptr [ebx+18]; TZASADriver.?f18:IZASA7PlainDriver
 00560DFC    mov        ecx,dword ptr [eax]
 00560DFE    call       dword ptr [ecx+0C]
 00560E01    mov        edx,dword ptr [ebp-0C]
 00560E04    mov        eax,dword ptr [ebp-4]
 00560E07    call       @LStrCmp
>00560E0C    jne        00560E1A
 00560E0E    mov        eax,esi
 00560E10    mov        edx,dword ptr [ebx+18]; TZASADriver.?f18:IZASA7PlainDriver
 00560E13    call       @IntfCopy
>00560E18    jmp        00560E60
 00560E1A    lea        edx,[ebp-10]
 00560E1D    mov        eax,dword ptr [ebx+1C]; TZASADriver.?f1C:IZASA8PlainDriver
 00560E20    mov        ecx,dword ptr [eax]
 00560E22    call       dword ptr [ecx+0C]
 00560E25    mov        edx,dword ptr [ebp-10]
 00560E28    mov        eax,dword ptr [ebp-4]
 00560E2B    call       @LStrCmp
>00560E30    jne        00560E3E
 00560E32    mov        eax,esi
 00560E34    mov        edx,dword ptr [ebx+1C]; TZASADriver.?f1C:IZASA8PlainDriver
 00560E37    call       @IntfCopy
>00560E3C    jmp        00560E60
 00560E3E    lea        edx,[ebp-14]
 00560E41    mov        eax,dword ptr [ebx+20]; TZASADriver.?f20:IZASA9PlainDriver
 00560E44    mov        ecx,dword ptr [eax]
 00560E46    call       dword ptr [ecx+0C]
 00560E49    mov        edx,dword ptr [ebp-14]
 00560E4C    mov        eax,dword ptr [ebp-4]
 00560E4F    call       @LStrCmp
>00560E54    jne        00560E60
 00560E56    mov        eax,esi
 00560E58    mov        edx,dword ptr [ebx+20]; TZASADriver.?f20:IZASA9PlainDriver
 00560E5B    call       @IntfCopy
 00560E60    mov        eax,dword ptr [esi]
 00560E62    mov        edx,dword ptr [eax]
 00560E64    call       dword ptr [edx+14]
 00560E67    xor        eax,eax
 00560E69    pop        edx
 00560E6A    pop        ecx
 00560E6B    pop        ecx
 00560E6C    mov        dword ptr fs:[eax],edx
 00560E6F    push       560E9F
 00560E74    lea        eax,[ebp-14]
 00560E77    mov        edx,3
 00560E7C    call       @LStrArrayClr
 00560E81    lea        eax,[ebp-8]
 00560E84    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00560E8A    call       @DynArrayClear
 00560E8F    lea        eax,[ebp-4]
 00560E92    call       @LStrClr
 00560E97    ret
<00560E98    jmp        @HandleFinally
<00560E9D    jmp        00560E74
 00560E9F    pop        edi
 00560EA0    pop        esi
 00560EA1    pop        ebx
 00560EA2    mov        esp,ebp
 00560EA4    pop        ebp
 00560EA5    ret
*}
//end;

//00560EA8
//procedure sub_00560EA8(?:?);
//begin
{*
 00560EA8    push       ebp
 00560EA9    mov        ebp,esp
 00560EAB    push       0
 00560EAD    push       0
 00560EAF    push       0
 00560EB1    push       ebx
 00560EB2    push       esi
 00560EB3    mov        esi,edx
 00560EB5    mov        ebx,eax
 00560EB7    xor        eax,eax
 00560EB9    push       ebp
 00560EBA    push       560F75
 00560EBF    push       dword ptr fs:[eax]
 00560EC2    mov        dword ptr fs:[eax],esp
 00560EC5    push       3
 00560EC7    mov        eax,esi
 00560EC9    mov        ecx,1
 00560ECE    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 00560ED4    call       @DynArraySetLength
 00560ED9    add        esp,4
 00560EDC    lea        edx,[ebp-4]
 00560EDF    mov        eax,dword ptr [ebx+18]; TZASADriver.?f18:IZASA7PlainDriver
 00560EE2    mov        ecx,dword ptr [eax]
 00560EE4    call       dword ptr [ecx+0C]
 00560EE7    mov        edx,dword ptr [ebp-4]
 00560EEA    xor        eax,eax
 00560EEC    mov        ecx,dword ptr [esi]
 00560EEE    test       ecx,ecx
>00560EF0    je         00560EF7
 00560EF2    cmp        eax,dword ptr [ecx-4]
>00560EF5    jb         00560EFC
 00560EF7    call       @BoundErr
 00560EFC    lea        eax,[ecx+eax*4]
 00560EFF    call       @LStrAsg
 00560F04    lea        edx,[ebp-8]
 00560F07    mov        eax,dword ptr [ebx+1C]; TZASADriver.?f1C:IZASA8PlainDriver
 00560F0A    mov        ecx,dword ptr [eax]
 00560F0C    call       dword ptr [ecx+0C]
 00560F0F    mov        edx,dword ptr [ebp-8]
 00560F12    mov        eax,1
 00560F17    mov        ecx,dword ptr [esi]
 00560F19    test       ecx,ecx
>00560F1B    je         00560F22
 00560F1D    cmp        eax,dword ptr [ecx-4]
>00560F20    jb         00560F27
 00560F22    call       @BoundErr
 00560F27    lea        eax,[ecx+eax*4]
 00560F2A    call       @LStrAsg
 00560F2F    lea        edx,[ebp-0C]
 00560F32    mov        eax,dword ptr [ebx+20]; TZASADriver.?f20:IZASA9PlainDriver
 00560F35    mov        ecx,dword ptr [eax]
 00560F37    call       dword ptr [ecx+0C]
 00560F3A    mov        edx,dword ptr [ebp-0C]
 00560F3D    mov        eax,2
 00560F42    mov        ecx,dword ptr [esi]
 00560F44    test       ecx,ecx
>00560F46    je         00560F4D
 00560F48    cmp        eax,dword ptr [ecx-4]
>00560F4B    jb         00560F52
 00560F4D    call       @BoundErr
 00560F52    lea        eax,[ecx+eax*4]
 00560F55    call       @LStrAsg
 00560F5A    xor        eax,eax
 00560F5C    pop        edx
 00560F5D    pop        ecx
 00560F5E    pop        ecx
 00560F5F    mov        dword ptr fs:[eax],edx
 00560F62    push       560F7C
 00560F67    lea        eax,[ebp-0C]
 00560F6A    mov        edx,3
 00560F6F    call       @LStrArrayClr
 00560F74    ret
<00560F75    jmp        @HandleFinally
<00560F7A    jmp        00560F67
 00560F7C    pop        esi
 00560F7D    pop        ebx
 00560F7E    mov        esp,ebp
 00560F80    pop        ebp
 00560F81    ret
*}
//end;

//00560F84
procedure sub_00560F84;
begin
{*
 00560F84    push       ebp
 00560F85    mov        ebp,esp
 00560F87    xor        ecx,ecx
 00560F89    push       ecx
 00560F8A    push       ecx
 00560F8B    push       ecx
 00560F8C    push       ecx
 00560F8D    push       ecx
 00560F8E    push       ebx
 00560F8F    push       esi
 00560F90    mov        ebx,eax
 00560F92    xor        eax,eax
 00560F94    push       ebp
 00560F95    push       5610AF
 00560F9A    push       dword ptr fs:[eax]
 00560F9D    mov        dword ptr fs:[eax],esp
 00560FA0    cmp        byte ptr [ebx+2B],0; TZASAConnection.?f2B:byte
>00560FA4    jne        0056108C
 00560FAA    cmp        byte ptr [ebx+28],0; TZASAConnection.?f28:byte
>00560FAE    je         00560FB9
 00560FB0    mov        eax,ebx
 00560FB2    mov        edx,dword ptr [eax]
 00560FB4    call       dword ptr [edx+20]; TZASAConnection.sub_00561114
>00560FB7    jmp        00560FC0
 00560FB9    mov        eax,ebx
 00560FBB    mov        edx,dword ptr [eax]
 00560FBD    call       dword ptr [edx+24]; TZASAConnection.sub_005618C4
 00560FC0    xor        ecx,ecx
 00560FC2    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 00560FC8    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00560FCE    mov        esi,dword ptr [eax]
 00560FD0    call       dword ptr [esi+28]
 00560FD3    push       0
 00560FD5    mov        cl,1
 00560FD7    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 00560FDD    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00560FE3    call       00556588
 00560FE8    xor        eax,eax
 00560FEA    mov        dword ptr [ebx+0BC],eax; TZASAConnection.?fBC:dword
 00560FF0    lea        edx,[ebx+34]; TZASAConnection.?f34:?
 00560FF3    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00560FF9    mov        ecx,dword ptr [eax]
 00560FFB    call       dword ptr [ecx+20]
 00560FFE    test       eax,eax
>00561000    jne        00561045
 00561002    push       5610C4; 'Inititalizing SQLCA'
 00561007    push       0
 00561009    push       5610E0; 'Error closing SQLCA'
 0056100E    lea        edx,[ebp-4]
 00561011    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561017    mov        ecx,dword ptr [eax]
 00561019    call       dword ptr [ecx+0C]
 0056101C    mov        ecx,dword ptr [ebp-4]
 0056101F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561024    mov        eax,dword ptr [eax]
 00561026    xor        edx,edx
 00561028    mov        ebx,dword ptr [eax]
 0056102A    call       dword ptr [ebx+40]
 0056102D    push       5610E0; 'Error closing SQLCA'
 00561032    xor        ecx,ecx
 00561034    mov        dl,1
 00561036    mov        eax,[004C6D20]; EZSQLException
 0056103B    call       EZSQLException.Create; EZSQLException.Create
 00561040    call       @RaiseExcept
 00561045    lea        eax,[ebp-8]
 00561048    push       eax
 00561049    mov        eax,dword ptr [ebx+18]; TZASAConnection.?f18:String
 0056104C    mov        dword ptr [ebp-10],eax
 0056104F    mov        byte ptr [ebp-0C],0B
 00561053    lea        edx,[ebp-10]
 00561056    xor        ecx,ecx
 00561058    mov        eax,5610FC; 'DISCONNECT FROM \"%s\"'
 0056105D    call       Format
 00561062    mov        eax,dword ptr [ebp-8]
 00561065    push       eax
 00561066    lea        edx,[ebp-14]
 00561069    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 0056106F    mov        ecx,dword ptr [eax]
 00561071    call       dword ptr [ecx+0C]
 00561074    mov        ecx,dword ptr [ebp-14]
 00561077    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0056107C    mov        eax,dword ptr [eax]
 0056107E    mov        dl,1
 00561080    mov        esi,dword ptr [eax]
 00561082    call       dword ptr [esi+3C]
 00561085    mov        eax,ebx
 00561087    call       004DE1A4
 0056108C    xor        eax,eax
 0056108E    pop        edx
 0056108F    pop        ecx
 00561090    pop        ecx
 00561091    mov        dword ptr fs:[eax],edx
 00561094    push       5610B6
 00561099    lea        eax,[ebp-14]
 0056109C    call       @LStrClr
 005610A1    lea        eax,[ebp-8]
 005610A4    mov        edx,2
 005610A9    call       @LStrArrayClr
 005610AE    ret
<005610AF    jmp        @HandleFinally
<005610B4    jmp        00561099
 005610B6    pop        esi
 005610B7    pop        ebx
 005610B8    mov        esp,ebp
 005610BA    pop        ebp
 005610BB    ret
*}
end;

//00561114
procedure sub_00561114;
begin
{*
 00561114    push       ebp
 00561115    mov        ebp,esp
 00561117    push       0
 00561119    push       ebx
 0056111A    push       esi
 0056111B    mov        ebx,eax
 0056111D    xor        eax,eax
 0056111F    push       ebp
 00561120    push       5611A2
 00561125    push       dword ptr fs:[eax]
 00561128    mov        dword ptr fs:[eax],esp
 0056112B    cmp        byte ptr [ebx+2B],0; TZASAConnection.?f2B:byte
>0056112F    jne        0056118C
 00561131    cmp        byte ptr [ebx+28],0; TZASAConnection.?f28:byte
>00561135    jne        0056118C
 00561137    mov        eax,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 0056113D    test       eax,eax
>0056113F    je         0056118C
 00561141    xor        ecx,ecx
 00561143    mov        edx,eax
 00561145    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 0056114B    mov        esi,dword ptr [eax]
 0056114D    call       dword ptr [esi+0AC]
 00561153    push       0
 00561155    mov        cl,2
 00561157    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 0056115D    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561163    call       00556588
 00561168    push       5611B8; 'TRANSACTION COMMIT'
 0056116D    lea        edx,[ebp-4]
 00561170    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561176    mov        ecx,dword ptr [eax]
 00561178    call       dword ptr [ecx+0C]
 0056117B    mov        ecx,dword ptr [ebp-4]
 0056117E    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561183    mov        eax,dword ptr [eax]
 00561185    mov        dl,2
 00561187    mov        ebx,dword ptr [eax]
 00561189    call       dword ptr [ebx+3C]
 0056118C    xor        eax,eax
 0056118E    pop        edx
 0056118F    pop        ecx
 00561190    pop        ecx
 00561191    mov        dword ptr fs:[eax],edx
 00561194    push       5611A9
 00561199    lea        eax,[ebp-4]
 0056119C    call       @LStrClr
 005611A1    ret
<005611A2    jmp        @HandleFinally
<005611A7    jmp        00561199
 005611A9    pop        esi
 005611AA    pop        ebx
 005611AB    pop        ecx
 005611AC    pop        ebp
 005611AD    ret
*}
end;

//005611CC
//constructor TZASAConnection.Create(?:TZASAConnection; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 005611CC    push       ebp
 005611CD    mov        ebp,esp
 005611CF    add        esp,0FFFFFFF8
 005611D2    push       ebx
 005611D3    push       esi
 005611D4    push       edi
 005611D5    test       dl,dl
>005611D7    je         005611E1
 005611D9    add        esp,0FFFFFFF0
 005611DC    call       @ClassCreate
 005611E1    mov        dword ptr [ebp-8],ecx
 005611E4    mov        byte ptr [ebp-1],dl
 005611E7    mov        ebx,eax
 005611E9    mov        edi,dword ptr [ebp+8]
 005611EC    mov        esi,dword ptr [ebp+24]
 005611EF    mov        eax,dword ptr [ebp-8]
 005611F2    call       @IntfAddRef
 005611F7    mov        eax,dword ptr [ebp+20]
 005611FA    call       @IntfAddRef
 005611FF    xor        eax,eax
 00561201    push       ebp
 00561202    push       56126C
 00561207    push       dword ptr fs:[eax]
 0056120A    mov        dword ptr fs:[eax],esp
 0056120D    push       esi
 0056120E    mov        eax,dword ptr [ebp+1C]
 00561211    push       eax
 00561212    mov        eax,dword ptr [ebp+18]
 00561215    push       eax
 00561216    mov        eax,dword ptr [ebp+14]
 00561219    push       eax
 0056121A    mov        eax,dword ptr [ebp+10]
 0056121D    push       eax
 0056121E    mov        eax,dword ptr [ebp+0C]
 00561221    push       eax
 00561222    push       edi
 00561223    push       esi
 00561224    push       edi
 00561225    mov        ecx,ebx
 00561227    mov        dl,1
 00561229    mov        eax,[0055742C]; TZASADatabaseMetadata
 0056122E    call       TZASADatabaseMetadata.Create; TZASADatabaseMetadata.Create
 00561233    push       eax
 00561234    mov        ecx,dword ptr [ebp-8]
 00561237    xor        edx,edx
 00561239    mov        eax,ebx
 0056123B    call       004DDD88
 00561240    lea        eax,[ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561246    mov        edx,dword ptr [ebp+20]
 00561249    call       @IntfCopy
 0056124E    xor        eax,eax
 00561250    pop        edx
 00561251    pop        ecx
 00561252    pop        ecx
 00561253    mov        dword ptr fs:[eax],edx
 00561256    push       561273
 0056125B    lea        eax,[ebp-8]
 0056125E    call       @IntfClear
 00561263    lea        eax,[ebp+20]
 00561266    call       @IntfClear
 0056126B    ret
<0056126C    jmp        @HandleFinally
<00561271    jmp        0056125B
 00561273    mov        eax,ebx
 00561275    cmp        byte ptr [ebp-1],0
>00561279    je         0056128A
 0056127B    call       @AfterConstruction
 00561280    pop        dword ptr fs:[0]
 00561287    add        esp,0C
 0056128A    mov        eax,ebx
 0056128C    pop        edi
 0056128D    pop        esi
 0056128E    pop        ebx
 0056128F    pop        ecx
 00561290    pop        ecx
 00561291    pop        ebp
 00561292    ret        20
*}
//end;

//00561298
//procedure sub_00561298(?:?; ?:?; ?:?);
//begin
{*
 00561298    push       ebp
 00561299    mov        ebp,esp
 0056129B    push       ebx
 0056129C    push       esi
 0056129D    push       edi
 0056129E    mov        edi,ecx
 005612A0    mov        esi,edx
 005612A2    mov        ebx,eax
 005612A4    mov        eax,ebx
 005612A6    mov        edx,dword ptr [eax]
 005612A8    call       dword ptr [edx+44]; TZASAConnection.sub_004DE1AC
 005612AB    test       al,al
>005612AD    je         005612B6
 005612AF    mov        eax,ebx
 005612B1    mov        edx,dword ptr [eax]
 005612B3    call       dword ptr [edx+3C]; TZASAConnection.sub_005613E0
 005612B6    push       esi
 005612B7    push       edi
 005612B8    mov        ecx,ebx
 005612BA    test       ecx,ecx
>005612BC    je         005612C1
 005612BE    sub        ecx,0FFFFFFD0
 005612C1    mov        dl,1
 005612C3    mov        eax,[0055DEB8]; TZASACallableStatement
 005612C8    call       TZASACallableStatement.Create; TZASACallableStatement.Create
 005612CD    mov        edx,eax
 005612CF    test       edx,edx
>005612D1    je         005612D6
 005612D3    sub        edx,0FFFFFF8C
 005612D6    mov        eax,dword ptr [ebp+8]
 005612D9    call       @IntfCopy
 005612DE    pop        edi
 005612DF    pop        esi
 005612E0    pop        ebx
 005612E1    pop        ebp
 005612E2    ret        4
*}
//end;

//005612E8
//procedure sub_005612E8(?:?; ?:?; ?:?);
//begin
{*
 005612E8    push       ebp
 005612E9    mov        ebp,esp
 005612EB    push       ebx
 005612EC    push       esi
 005612ED    push       edi
 005612EE    mov        edi,ecx
 005612F0    mov        esi,edx
 005612F2    mov        ebx,eax
 005612F4    mov        eax,ebx
 005612F6    mov        edx,dword ptr [eax]
 005612F8    call       dword ptr [edx+44]; TZASAConnection.sub_004DE1AC
 005612FB    test       al,al
>005612FD    je         00561306
 005612FF    mov        eax,ebx
 00561301    mov        edx,dword ptr [eax]
 00561303    call       dword ptr [edx+3C]; TZASAConnection.sub_005613E0
 00561306    push       esi
 00561307    push       edi
 00561308    mov        ecx,ebx
 0056130A    test       ecx,ecx
>0056130C    je         00561311
 0056130E    sub        ecx,0FFFFFFD0
 00561311    mov        dl,1
 00561313    mov        eax,[0055DD44]; TZASAPreparedStatement
 00561318    call       TZASAPreparedStatement.Create; TZASAPreparedStatement.Create
 0056131D    mov        edx,eax
 0056131F    test       edx,edx
>00561321    je         00561326
 00561323    sub        edx,0FFFFFFA4
 00561326    mov        eax,dword ptr [ebp+8]
 00561329    call       @IntfCopy
 0056132E    pop        edi
 0056132F    pop        esi
 00561330    pop        ebx
 00561331    pop        ebp
 00561332    ret        4
*}
//end;

//00561338
//procedure sub_00561338(?:?; ?:?);
//begin
{*
 00561338    push       ebp
 00561339    mov        ebp,esp
 0056133B    push       ebx
 0056133C    push       esi
 0056133D    push       edi
 0056133E    mov        edi,ecx
 00561340    mov        esi,edx
 00561342    mov        ebx,eax
 00561344    mov        eax,ebx
 00561346    mov        edx,dword ptr [eax]
 00561348    call       dword ptr [edx+44]; TZASAConnection.sub_004DE1AC
 0056134B    test       al,al
>0056134D    je         00561356
 0056134F    mov        eax,ebx
 00561351    mov        edx,dword ptr [eax]
 00561353    call       dword ptr [edx+3C]; TZASAConnection.sub_005613E0
 00561356    push       esi
 00561357    mov        ecx,ebx
 00561359    test       ecx,ecx
>0056135B    je         00561360
 0056135D    sub        ecx,0FFFFFFD0
 00561360    mov        dl,1
 00561362    mov        eax,[0055DC54]; TZASAStatement
 00561367    call       TZASAStatement.Create; TZASAStatement.Create
 0056136C    mov        edx,eax
 0056136E    test       edx,edx
>00561370    je         00561375
 00561372    sub        edx,0FFFFFFBC
 00561375    mov        eax,edi
 00561377    call       @IntfCopy
 0056137C    pop        edi
 0056137D    pop        esi
 0056137E    pop        ebx
 0056137F    pop        ebp
 00561380    ret
*}
//end;

//00561384
destructor TZASAConnection.Destroy;
begin
{*
 00561384    push       ebp
 00561385    mov        ebp,esp
 00561387    push       ebx
 00561388    push       esi
 00561389    call       @BeforeDestruction
 0056138E    mov        ebx,edx
 00561390    mov        esi,eax
 00561392    cmp        byte ptr [esi+2B],0; TZASAConnection.?f2B:byte
>00561396    jne        0056139F
 00561398    mov        eax,esi
 0056139A    mov        edx,dword ptr [eax]
 0056139C    call       dword ptr [edx+40]; TZASAConnection.sub_00560F84
 0056139F    mov        edx,ebx
 005613A1    and        dl,0FC
 005613A4    mov        eax,esi
 005613A6    call       TZAbstractConnection.Destroy
 005613AB    test       bl,bl
>005613AD    jle        005613B6
 005613AF    mov        eax,esi
 005613B1    call       @ClassDestroy
 005613B6    pop        esi
 005613B7    pop        ebx
 005613B8    pop        ebp
 005613B9    ret
*}
end;

//005613E0
procedure sub_005613E0;
begin
{*
 005613E0    push       ebp
 005613E1    mov        ebp,esp
 005613E3    mov        ecx,8
 005613E8    push       0
 005613EA    push       0
 005613EC    dec        ecx
<005613ED    jne        005613E8
 005613EF    push       ebx
 005613F0    push       esi
 005613F1    push       edi
 005613F2    mov        dword ptr [ebp-4],eax
 005613F5    xor        eax,eax
 005613F7    push       ebp
 005613F8    push       56176A
 005613FD    push       dword ptr fs:[eax]
 00561400    mov        dword ptr fs:[eax],esp
 00561403    mov        eax,dword ptr [ebp-4]
 00561406    cmp        byte ptr [eax+2B],0; TZASAConnection.?f2B:byte
>0056140A    je         00561747
 00561410    mov        eax,dword ptr [ebp-4]
 00561413    xor        edx,edx
 00561415    mov        dword ptr [eax+0BC],edx; TZASAConnection.?fBC:dword
 0056141B    lea        eax,[ebp-8]
 0056141E    call       @LStrClr
 00561423    xor        edx,edx
 00561425    push       ebp
 00561426    push       5616FC
 0056142B    push       dword ptr fs:[edx]
 0056142E    mov        dword ptr fs:[edx],esp
 00561431    mov        eax,dword ptr [ebp-4]
 00561434    lea        edx,[eax+34]; TZASAConnection.?f34:?
 00561437    mov        eax,dword ptr [ebp-4]
 0056143A    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561440    mov        ecx,dword ptr [eax]
 00561442    call       dword ptr [ecx+1C]
 00561445    test       eax,eax
>00561447    jne        0056148F
 00561449    push       561780; 'Inititalizing SQLCA'
 0056144E    push       0
 00561450    push       56179C; 'Error initializing SQLCA'
 00561455    lea        edx,[ebp-10]
 00561458    mov        eax,dword ptr [ebp-4]
 0056145B    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561461    mov        ecx,dword ptr [eax]
 00561463    call       dword ptr [ecx+0C]
 00561466    mov        ecx,dword ptr [ebp-10]
 00561469    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0056146E    mov        eax,dword ptr [eax]
 00561470    xor        edx,edx
 00561472    mov        ebx,dword ptr [eax]
 00561474    call       dword ptr [ebx+40]
 00561477    push       56179C; 'Error initializing SQLCA'
 0056147C    xor        ecx,ecx
 0056147E    mov        dl,1
 00561480    mov        eax,[004C6D20]; EZSQLException
 00561485    call       EZSQLException.Create; EZSQLException.Create
 0056148A    call       @RaiseExcept
 0056148F    mov        eax,dword ptr [ebp-4]
 00561492    add        eax,34; TZASAConnection.?f34:?
 00561495    mov        edx,dword ptr [ebp-4]
 00561498    mov        dword ptr [edx+0BC],eax; TZASAConnection.?fBC:dword
 0056149E    mov        eax,dword ptr [ebp-4]
 005614A1    cmp        dword ptr [eax+10],0; TZASAConnection.?f10:String
>005614A5    je         005614C7
 005614A7    push       dword ptr [ebp-8]
 005614AA    push       5617C0; 'ENG=\"'
 005614AF    mov        eax,dword ptr [ebp-4]
 005614B2    push       dword ptr [eax+10]; TZASAConnection.?f10:String
 005614B5    push       5617D0; '\"; '
 005614BA    lea        eax,[ebp-8]
 005614BD    mov        edx,4
 005614C2    call       @LStrCatN
 005614C7    mov        eax,dword ptr [ebp-4]
 005614CA    cmp        dword ptr [eax+1C],0; TZASAConnection.?f1C:String
>005614CE    je         005614F0
 005614D0    push       dword ptr [ebp-8]
 005614D3    push       5617DC; 'UID=\"'
 005614D8    mov        eax,dword ptr [ebp-4]
 005614DB    push       dword ptr [eax+1C]; TZASAConnection.?f1C:String
 005614DE    push       5617D0; '\"; '
 005614E3    lea        eax,[ebp-8]
 005614E6    mov        edx,4
 005614EB    call       @LStrCatN
 005614F0    mov        eax,dword ptr [ebp-4]
 005614F3    cmp        dword ptr [eax+20],0; TZASAConnection.?f20:String
>005614F7    je         00561519
 005614F9    push       dword ptr [ebp-8]
 005614FC    push       5617EC; 'PWD=\"'
 00561501    mov        eax,dword ptr [ebp-4]
 00561504    push       dword ptr [eax+20]; TZASAConnection.?f20:String
 00561507    push       5617D0; '\"; '
 0056150C    lea        eax,[ebp-8]
 0056150F    mov        edx,4
 00561514    call       @LStrCatN
 00561519    mov        eax,dword ptr [ebp-4]
 0056151C    cmp        dword ptr [eax+18],0; TZASAConnection.?f18:String
>00561520    je         00561583
 00561522    lea        edx,[ebp-14]
 00561525    mov        eax,dword ptr [ebp-4]
 00561528    mov        eax,dword ptr [eax+18]; TZASAConnection.?f18:String
 0056152B    call       ExtractFileExt
 00561530    mov        eax,dword ptr [ebp-14]
 00561533    mov        edx,5617FC; '.db'
 00561538    call       CompareText
 0056153D    test       eax,eax
>0056153F    jne        00561563
 00561541    push       dword ptr [ebp-8]
 00561544    push       561808; 'DBF=\"'
 00561549    mov        eax,dword ptr [ebp-4]
 0056154C    push       dword ptr [eax+18]; TZASAConnection.?f18:String
 0056154F    push       5617D0; '\"; '
 00561554    lea        eax,[ebp-8]
 00561557    mov        edx,4
 0056155C    call       @LStrCatN
>00561561    jmp        00561583
 00561563    push       dword ptr [ebp-8]
 00561566    push       561818; 'DBN=\"'
 0056156B    mov        eax,dword ptr [ebp-4]
 0056156E    push       dword ptr [eax+18]; TZASAConnection.?f18:String
 00561571    push       5617D0; '\"; '
 00561576    lea        eax,[ebp-8]
 00561579    mov        edx,4
 0056157E    call       @LStrCatN
 00561583    lea        eax,[ebp-0C]
 00561586    call       @LStrClr
 0056158B    lea        ecx,[ebp-18]
 0056158E    mov        eax,dword ptr [ebp-4]
 00561591    mov        eax,dword ptr [eax+24]; TZASAConnection.?f24:dword
 00561594    mov        edx,561828; 'CommLinks'
 00561599    call       TStrings.GetValue
 0056159E    cmp        dword ptr [ebp-18],0
>005615A2    je         005615C7
 005615A4    lea        ecx,[ebp-1C]
 005615A7    mov        eax,dword ptr [ebp-4]
 005615AA    mov        eax,dword ptr [eax+24]; TZASAConnection.?f24:dword
 005615AD    mov        edx,561828; 'CommLinks'
 005615B2    call       TStrings.GetValue
 005615B7    mov        ecx,dword ptr [ebp-1C]
 005615BA    lea        eax,[ebp-0C]
 005615BD    mov        edx,56183C; 'CommLinks='
 005615C2    call       @LStrCat3
 005615C7    lea        ecx,[ebp-20]
 005615CA    mov        eax,dword ptr [ebp-4]
 005615CD    mov        eax,dword ptr [eax+24]; TZASAConnection.?f24:dword
 005615D0    mov        edx,561850; 'LINKS'
 005615D5    call       TStrings.GetValue
 005615DA    cmp        dword ptr [ebp-20],0
>005615DE    je         00561603
 005615E0    lea        ecx,[ebp-24]
 005615E3    mov        eax,dword ptr [ebp-4]
 005615E6    mov        eax,dword ptr [eax+24]; TZASAConnection.?f24:dword
 005615E9    mov        edx,561850; 'LINKS'
 005615EE    call       TStrings.GetValue
 005615F3    mov        ecx,dword ptr [ebp-24]
 005615F6    lea        eax,[ebp-0C]
 005615F9    mov        edx,561860; 'LINKS='
 005615FE    call       @LStrCat3
 00561603    cmp        dword ptr [ebp-0C],0
>00561607    jne        0056163A
 00561609    mov        eax,dword ptr [ebp-4]
 0056160C    cmp        dword ptr [eax+14],0; TZASAConnection.?f14:dword
>00561610    je         0056163A
 00561612    push       561870; 'LINKS=tcpip(PORT='
 00561617    lea        edx,[ebp-28]
 0056161A    mov        eax,dword ptr [ebp-4]
 0056161D    mov        eax,dword ptr [eax+14]; TZASAConnection.?f14:dword
 00561620    call       IntToStr
 00561625    push       dword ptr [ebp-28]
 00561628    push       56188C; ')'
 0056162D    lea        eax,[ebp-0C]
 00561630    mov        edx,3
 00561635    call       @LStrCatN
 0056163A    cmp        dword ptr [ebp-0C],0
>0056163E    je         00561658
 00561640    push       dword ptr [ebp-8]
 00561643    push       dword ptr [ebp-0C]
 00561646    push       561898; '; '
 0056164B    lea        eax,[ebp-8]
 0056164E    mov        edx,3
 00561653    call       @LStrCatN
 00561658    mov        eax,dword ptr [ebp-8]
 0056165B    call       @LStrToPChar
 00561660    mov        ecx,eax
 00561662    mov        eax,dword ptr [ebp-4]
 00561665    mov        edx,dword ptr [eax+0BC]; TZASAConnection.?fBC:dword
 0056166B    mov        eax,dword ptr [ebp-4]
 0056166E    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561674    mov        ebx,dword ptr [eax]
 00561676    call       dword ptr [ebx+24]
 00561679    push       0
 0056167B    mov        eax,dword ptr [ebp-4]
 0056167E    mov        edx,dword ptr [eax+0BC]; TZASAConnection.?fBC:dword
 00561684    mov        eax,dword ptr [ebp-4]
 00561687    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 0056168D    xor        ecx,ecx
 0056168F    call       00556588
 00561694    lea        eax,[ebp-2C]
 00561697    push       eax
 00561698    mov        eax,dword ptr [ebp-4]
 0056169B    mov        eax,dword ptr [eax+18]; TZASAConnection.?f18:String
 0056169E    mov        dword ptr [ebp-3C],eax
 005616A1    mov        byte ptr [ebp-38],0B
 005616A5    mov        eax,dword ptr [ebp-4]
 005616A8    mov        eax,dword ptr [eax+1C]; TZASAConnection.?f1C:String
 005616AB    mov        dword ptr [ebp-34],eax
 005616AE    mov        byte ptr [ebp-30],0B
 005616B2    lea        edx,[ebp-3C]
 005616B5    mov        ecx,1
 005616BA    mov        eax,5618A4; 'CONNECT TO \"%s\" AS USER \"%s\"'
 005616BF    call       Format
 005616C4    mov        eax,dword ptr [ebp-2C]
 005616C7    push       eax
 005616C8    lea        edx,[ebp-40]
 005616CB    mov        eax,dword ptr [ebp-4]
 005616CE    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 005616D4    mov        ecx,dword ptr [eax]
 005616D6    call       dword ptr [ecx+0C]
 005616D9    mov        ecx,dword ptr [ebp-40]
 005616DC    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 005616E1    mov        eax,dword ptr [eax]
 005616E3    xor        edx,edx
 005616E5    mov        ebx,dword ptr [eax]
 005616E7    call       dword ptr [ebx+3C]
 005616EA    mov        eax,dword ptr [ebp-4]
 005616ED    mov        edx,dword ptr [eax]
 005616EF    call       dword ptr [edx+70]; TZASAConnection.sub_00561B6C
 005616F2    xor        eax,eax
 005616F4    pop        edx
 005616F5    pop        ecx
 005616F6    pop        ecx
 005616F7    mov        dword ptr fs:[eax],edx
>005616FA    jmp        0056173F
<005616FC    jmp        @HandleOnException
 00561701    dd        1
 00561705    dd        4087B0;Exception
 00561709    dd        56170D
 0056170D    mov        eax,dword ptr [ebp-4]
 00561710    mov        eax,dword ptr [eax+0BC]; TZASAConnection.?fBC:dword
 00561716    test       eax,eax
>00561718    je         0056172A
 0056171A    mov        edx,eax
 0056171C    mov        eax,dword ptr [ebp-4]
 0056171F    mov        eax,dword ptr [eax+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561725    mov        ecx,dword ptr [eax]
 00561727    call       dword ptr [ecx+20]
 0056172A    mov        eax,dword ptr [ebp-4]
 0056172D    xor        edx,edx
 0056172F    mov        dword ptr [eax+0BC],edx; TZASAConnection.?fBC:dword
 00561735    call       @RaiseAgain
 0056173A    call       @DoneExcept
 0056173F    mov        eax,dword ptr [ebp-4]
 00561742    call       004DDF38
 00561747    xor        eax,eax
 00561749    pop        edx
 0056174A    pop        ecx
 0056174B    pop        ecx
 0056174C    mov        dword ptr fs:[eax],edx
 0056174F    push       561771
 00561754    lea        eax,[ebp-40]
 00561757    call       @LStrClr
 0056175C    lea        eax,[ebp-2C]
 0056175F    mov        edx,0A
 00561764    call       @LStrArrayClr
 00561769    ret
<0056176A    jmp        @HandleFinally
<0056176F    jmp        00561754
 00561771    pop        edi
 00561772    pop        esi
 00561773    pop        ebx
 00561774    mov        esp,ebp
 00561776    pop        ebp
 00561777    ret
*}
end;

//005618C4
procedure sub_005618C4;
begin
{*
 005618C4    push       ebp
 005618C5    mov        ebp,esp
 005618C7    push       0
 005618C9    push       ebx
 005618CA    push       esi
 005618CB    mov        ebx,eax
 005618CD    xor        eax,eax
 005618CF    push       ebp
 005618D0    push       561952
 005618D5    push       dword ptr fs:[eax]
 005618D8    mov        dword ptr fs:[eax],esp
 005618DB    cmp        byte ptr [ebx+2B],0; TZASAConnection.?f2B:byte
>005618DF    jne        0056193C
 005618E1    cmp        byte ptr [ebx+28],0; TZASAConnection.?f28:byte
>005618E5    jne        0056193C
 005618E7    mov        eax,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 005618ED    test       eax,eax
>005618EF    je         0056193C
 005618F1    xor        ecx,ecx
 005618F3    mov        edx,eax
 005618F5    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 005618FB    mov        esi,dword ptr [eax]
 005618FD    call       dword ptr [esi+0B0]
 00561903    push       0
 00561905    mov        cl,2
 00561907    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 0056190D    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561913    call       00556588
 00561918    push       561968; 'TRANSACTION ROLLBACK'
 0056191D    lea        edx,[ebp-4]
 00561920    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561926    mov        ecx,dword ptr [eax]
 00561928    call       dword ptr [ecx+0C]
 0056192B    mov        ecx,dword ptr [ebp-4]
 0056192E    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561933    mov        eax,dword ptr [eax]
 00561935    mov        dl,2
 00561937    mov        ebx,dword ptr [eax]
 00561939    call       dword ptr [ebx+3C]
 0056193C    xor        eax,eax
 0056193E    pop        edx
 0056193F    pop        ecx
 00561940    pop        ecx
 00561941    mov        dword ptr fs:[eax],edx
 00561944    push       561959
 00561949    lea        eax,[ebp-4]
 0056194C    call       @LStrClr
 00561951    ret
<00561952    jmp        @HandleFinally
<00561957    jmp        00561949
 00561959    pop        esi
 0056195A    pop        ebx
 0056195B    pop        ecx
 0056195C    pop        ebp
 0056195D    ret
*}
end;

//00561980
//procedure sub_00561980(?:TZASAConnection; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00561980    push       ebp
 00561981    mov        ebp,esp
 00561983    add        esp,0FFFFFFD0
 00561986    push       ebx
 00561987    push       esi
 00561988    push       edi
 00561989    xor        ebx,ebx
 0056198B    mov        dword ptr [ebp-14],ebx
 0056198E    mov        dword ptr [ebp-30],ebx
 00561991    mov        dword ptr [ebp-10],ebx
 00561994    mov        dword ptr [ebp-8],ecx
 00561997    mov        dword ptr [ebp-4],edx
 0056199A    mov        ebx,eax
 0056199C    mov        esi,dword ptr [ebp+8]
 0056199F    xor        eax,eax
 005619A1    push       ebp
 005619A2    push       561B26
 005619A7    push       dword ptr fs:[eax]
 005619AA    mov        dword ptr fs:[eax],esp
 005619AD    cmp        dword ptr [ebx+0BC],0; TZASAConnection.?fBC:dword
>005619B4    je         00561B03
 005619BA    mov        edi,3C
 005619BF    mov        eax,edi
 005619C1    test       eax,eax
>005619C3    jns        005619CA
 005619C5    call       @BoundErr
 005619CA    call       AllocMem
 005619CF    mov        dword ptr [ebp-0C],eax
 005619D2    xor        eax,eax
 005619D4    push       ebp
 005619D5    push       561AFC
 005619DA    push       dword ptr fs:[eax]
 005619DD    mov        dword ptr fs:[eax],esp
 005619E0    mov        eax,dword ptr [ebp-0C]
 005619E3    mov        ecx,8
 005619E8    mov        edx,561B40; 'SQLDA   '
 005619ED    call       StrPLCopy
 005619F2    test       edi,edi
>005619F4    jns        005619FB
 005619F6    call       @BoundErr
 005619FB    mov        eax,dword ptr [ebp-0C]
 005619FE    mov        dword ptr [eax+8],edi
 00561A01    mov        eax,dword ptr [ebp-0C]
 00561A04    mov        word ptr [eax+0C],1
 00561A0A    mov        eax,dword ptr [ebp-0C]
 00561A0D    mov        word ptr [eax+0E],1
 00561A13    mov        eax,dword ptr [ebp-0C]
 00561A16    mov        word ptr [eax+10],1CC
 00561A1C    mov        eax,esi
 00561A1E    call       @LStrLen
 00561A23    add        eax,1
>00561A26    jno        00561A2D
 00561A28    call       @IntOver
 00561A2D    cmp        eax,0FFFF
>00561A32    jbe        00561A39
 00561A34    call       @BoundErr
 00561A39    mov        edx,dword ptr [ebp-0C]
 00561A3C    mov        word ptr [edx+12],ax
 00561A40    mov        eax,esi
 00561A42    call       @LStrToPChar
 00561A47    mov        edx,dword ptr [ebp-0C]
 00561A4A    mov        dword ptr [edx+14],eax
 00561A4D    mov        eax,dword ptr [ebp-8]
 00561A50    push       eax
 00561A51    mov        eax,dword ptr [ebp+0C]
 00561A54    call       @LStrToPChar
 00561A59    push       eax
 00561A5A    mov        eax,dword ptr [ebp-0C]
 00561A5D    push       eax
 00561A5E    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 00561A64    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561A6A    mov        ecx,dword ptr [ebp-4]
 00561A6D    mov        edi,dword ptr [eax]
 00561A6F    call       dword ptr [edi+60]
 00561A72    push       0
 00561A74    mov        edx,dword ptr [ebx+0BC]; TZASAConnection.?fBC:dword
 00561A7A    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561A80    mov        cl,4
 00561A82    call       00556588
 00561A87    lea        eax,[ebp-10]
 00561A8A    mov        edx,dword ptr [ebp-8]
 00561A8D    call       @LStrFromPChar
 00561A92    lea        eax,[ebp-14]
 00561A95    push       eax
 00561A96    mov        eax,dword ptr [ebp-10]
 00561A99    mov        dword ptr [ebp-2C],eax
 00561A9C    mov        byte ptr [ebp-28],0B
 00561AA0    mov        eax,dword ptr [ebp+0C]
 00561AA3    mov        dword ptr [ebp-24],eax
 00561AA6    mov        byte ptr [ebp-20],0B
 00561AAA    mov        dword ptr [ebp-1C],esi
 00561AAD    mov        byte ptr [ebp-18],0B
 00561AB1    lea        edx,[ebp-2C]
 00561AB4    mov        ecx,2
 00561AB9    mov        eax,561B54; 'SET OPTION %s.%s = %s'
 00561ABE    call       Format
 00561AC3    mov        eax,dword ptr [ebp-14]
 00561AC6    push       eax
 00561AC7    lea        edx,[ebp-30]
 00561ACA    mov        eax,dword ptr [ebx+0C0]; TZASAConnection.?fC0:IZASAPlainDriver
 00561AD0    mov        ecx,dword ptr [eax]
 00561AD2    call       dword ptr [ecx+0C]
 00561AD5    mov        ecx,dword ptr [ebp-30]
 00561AD8    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561ADD    mov        eax,dword ptr [eax]
 00561ADF    mov        dl,4
 00561AE1    mov        ebx,dword ptr [eax]
 00561AE3    call       dword ptr [ebx+3C]
 00561AE6    xor        eax,eax
 00561AE8    pop        edx
 00561AE9    pop        ecx
 00561AEA    pop        ecx
 00561AEB    mov        dword ptr fs:[eax],edx
 00561AEE    push       561B03
 00561AF3    mov        eax,dword ptr [ebp-0C]
 00561AF6    call       @FreeMem
 00561AFB    ret
<00561AFC    jmp        @HandleFinally
<00561B01    jmp        00561AF3
 00561B03    xor        eax,eax
 00561B05    pop        edx
 00561B06    pop        ecx
 00561B07    pop        ecx
 00561B08    mov        dword ptr fs:[eax],edx
 00561B0B    push       561B2D
 00561B10    lea        eax,[ebp-30]
 00561B13    call       @LStrClr
 00561B18    lea        eax,[ebp-14]
 00561B1B    mov        edx,2
 00561B20    call       @LStrArrayClr
 00561B25    ret
<00561B26    jmp        @HandleFinally
<00561B2B    jmp        00561B10
 00561B2D    pop        edi
 00561B2E    pop        esi
 00561B2F    pop        ebx
 00561B30    mov        esp,ebp
 00561B32    pop        ebp
 00561B33    ret        8
*}
//end;

//00561B6C
procedure sub_00561B6C;
begin
{*
 00561B6C    push       ebp
 00561B6D    mov        ebp,esp
 00561B6F    push       0
 00561B71    push       ebx
 00561B72    push       esi
 00561B73    mov        ebx,eax
 00561B75    xor        eax,eax
 00561B77    push       ebp
 00561B78    push       561C05
 00561B7D    push       dword ptr fs:[eax]
 00561B80    mov        dword ptr fs:[eax],esp
 00561B83    cmp        byte ptr [ebx+28],0; TZASAConnection.?f28:byte
>00561B87    je         00561BA3
 00561B89    push       561C1C; 'CHAINED'
 00561B8E    push       561C2C; 'OFF'
 00561B93    xor        ecx,ecx
 00561B95    mov        edx,1
 00561B9A    mov        eax,ebx
 00561B9C    call       00561980
>00561BA1    jmp        00561BBB
 00561BA3    push       561C1C; 'CHAINED'
 00561BA8    push       561C38; 'ON'
 00561BAD    xor        ecx,ecx
 00561BAF    mov        edx,1
 00561BB4    mov        eax,ebx
 00561BB6    call       00561980
 00561BBB    movzx      esi,byte ptr [ebx+2A]; TZASAConnection.?f2A:byte
 00561BBF    cmp        esi,1
>00561BC2    jle        00561BCE
 00561BC4    sub        esi,1
>00561BC7    jno        00561BCE
 00561BC9    call       @IntOver
 00561BCE    push       561C44; 'ISOLATION_LEVEL'
 00561BD3    lea        edx,[ebp-4]
 00561BD6    mov        eax,esi
 00561BD8    call       IntToStr
 00561BDD    mov        eax,dword ptr [ebp-4]
 00561BE0    push       eax
 00561BE1    xor        ecx,ecx
 00561BE3    mov        edx,1
 00561BE8    mov        eax,ebx
 00561BEA    call       00561980
 00561BEF    xor        eax,eax
 00561BF1    pop        edx
 00561BF2    pop        ecx
 00561BF3    pop        ecx
 00561BF4    mov        dword ptr fs:[eax],edx
 00561BF7    push       561C0C
 00561BFC    lea        eax,[ebp-4]
 00561BFF    call       @LStrClr
 00561C04    ret
<00561C05    jmp        @HandleFinally
<00561C0A    jmp        00561BFC
 00561C0C    pop        esi
 00561C0D    pop        ebx
 00561C0E    pop        ecx
 00561C0F    pop        ebp
 00561C10    ret
*}
end;

//00561C54
//procedure sub_00561C54(?:?; ?:?);
//begin
{*
 00561C54    push       ebp
 00561C55    mov        ebp,esp
 00561C57    add        esp,0FFFFFFF8
 00561C5A    push       ebx
 00561C5B    push       esi
 00561C5C    push       edi
 00561C5D    mov        ebx,ecx
 00561C5F    mov        dword ptr [ebp-4],edx
 00561C62    mov        eax,ebx
 00561C64    call       @LStrClr
 00561C69    mov        eax,dword ptr [ebp-4]
 00561C6C    mov        eax,dword ptr [eax+8]
 00561C6F    test       eax,eax
>00561C71    je         00561CDB
 00561C73    mov        edi,eax
 00561C75    sub        edi,1
>00561C78    jno        00561C7F
 00561C7A    call       @IntOver
 00561C7F    test       edi,edi
>00561C81    jl         00561CCD
 00561C83    inc        edi
 00561C84    mov        dword ptr [ebp-8],0
 00561C8B    mov        edx,dword ptr [ebp-8]
 00561C8E    mov        eax,dword ptr [ebp-4]
 00561C91    call       TObjectList.GetItem
 00561C96    mov        esi,eax
 00561C98    cmp        dword ptr [ebx],0
>00561C9B    je         00561CA9
 00561C9D    mov        eax,ebx
 00561C9F    mov        edx,561CEC; ','
 00561CA4    call       @LStrCat
 00561CA9    cmp        dword ptr [esi+10],0
>00561CAD    je         00561CBB
 00561CAF    mov        eax,ebx
 00561CB1    mov        edx,dword ptr [esi+10]
 00561CB4    call       @LStrCat
>00561CB9    jmp        00561CC7
 00561CBB    mov        eax,ebx
 00561CBD    mov        edx,561CF8; 'NULL'
 00561CC2    call       @LStrCat
 00561CC7    inc        dword ptr [ebp-8]
 00561CCA    dec        edi
<00561CCB    jne        00561C8B
 00561CCD    mov        ecx,dword ptr [ebx]
 00561CCF    mov        eax,ebx
 00561CD1    mov        edx,561D08; 'SELECT '
 00561CD6    call       @LStrCat3
 00561CDB    pop        edi
 00561CDC    pop        esi
 00561CDD    pop        ebx
 00561CDE    pop        ecx
 00561CDF    pop        ecx
 00561CE0    pop        ebp
 00561CE1    ret
*}
//end;

Initialization
//00561D70
{*
 00561D70    push       ebp
 00561D71    mov        ebp,esp
 00561D73    xor        eax,eax
 00561D75    push       ebp
 00561D76    push       561DC9
 00561D7B    push       dword ptr fs:[eax]
 00561D7E    mov        dword ptr fs:[eax],esp
 00561D81    sub        dword ptr ds:[61EF54],1
>00561D88    jae        00561DBB
 00561D8A    mov        dl,1
 00561D8C    mov        eax,[005606AC]; TZASADriver
 00561D91    call       TZASADriver.Create; TZASADriver.Create
 00561D96    mov        edx,eax
 00561D98    test       edx,edx
>00561D9A    je         00561D9F
 00561D9C    sub        edx,0FFFFFFEC
 00561D9F    mov        eax,61EF50; gvar_0061EF50:IInterface
 00561DA4    call       @IntfCopy
 00561DA9    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561DAE    mov        eax,dword ptr [eax]
 00561DB0    mov        edx,dword ptr ds:[61EF50]; gvar_0061EF50:IInterface
 00561DB6    mov        ecx,dword ptr [eax]
 00561DB8    call       dword ptr [ecx+20]
 00561DBB    xor        eax,eax
 00561DBD    pop        edx
 00561DBE    pop        ecx
 00561DBF    pop        ecx
 00561DC0    mov        dword ptr fs:[eax],edx
 00561DC3    push       561DD0
 00561DC8    ret
<00561DC9    jmp        @HandleFinally
<00561DCE    jmp        00561DC8
 00561DD0    pop        ebp
 00561DD1    ret
*}
Finalization
//00561D10
{*
 00561D10    push       ebp
 00561D11    mov        ebp,esp
 00561D13    xor        eax,eax
 00561D15    push       ebp
 00561D16    push       561D67
 00561D1B    push       dword ptr fs:[eax]
 00561D1E    mov        dword ptr fs:[eax],esp
 00561D21    inc        dword ptr ds:[61EF54]
>00561D27    jne        00561D59
 00561D29    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561D2E    cmp        dword ptr [eax],0
>00561D31    je         00561D45
 00561D33    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00561D38    mov        eax,dword ptr [eax]
 00561D3A    mov        edx,dword ptr ds:[61EF50]; gvar_0061EF50:IInterface
 00561D40    mov        ecx,dword ptr [eax]
 00561D42    call       dword ptr [ecx+24]
 00561D45    mov        eax,61EF50; gvar_0061EF50:IInterface
 00561D4A    call       @IntfClear
 00561D4F    mov        eax,61EF50; gvar_0061EF50:IInterface
 00561D54    call       @IntfClear
 00561D59    xor        eax,eax
 00561D5B    pop        edx
 00561D5C    pop        ecx
 00561D5D    pop        ecx
 00561D5E    mov        dword ptr fs:[eax],edx
 00561D61    push       561D6E
 00561D66    ret
<00561D67    jmp        @HandleFinally
<00561D6C    jmp        00561D66
 00561D6E    pop        ebp
 00561D6F    ret
*}
end.