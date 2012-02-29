{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZPlainMySqlDriver;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZMySQLOption = (MYSQL_OPT_CONNECT_TIMEOUT, MYSQL_OPT_COMPRESS, MYSQL_OPT_NAMED_PIPE, MYSQL_INIT_COMMAND, MYSQL_READ_DEFAULT_FILE, MYSQL_READ_DEFAULT_GROUP, MYSQL_SET_CHARSET_DIR, MYSQL_SET_CHARSET_NAME);
  TZMySQL41PlainDriver = class(TZAbstractObject)
  public
    //f10:?;//f10
    fEC:dword;//fEC
    //procedure sub_00501FC4(?:?); virtual;
    //procedure sub_00501FF0(?:?); virtual;
    procedure sub_00502034; virtual;
    //function sub_00502238(?:?):?; virtual;
    procedure sub_005026D4(); virtual;
    //constructor Create(?:TZMySQL41PlainDriver; _Dv__:Boolean);
  end;
  TZMySQLD41PlainDriver = class(TZMySQL41PlainDriver)
  public
    //procedure sub_005026D8(?:?); virtual;
    //procedure sub_00502704(?:?); virtual;
    procedure sub_00502788; virtual;
    //function sub_00502750(?:?):?; virtual;
    //procedure sub_005027B8(?:?); virtual;
  end;
  TZMySQL5PlainDriver = class(TZAbstractObject)
  public
    //f10:?;//f10
    fEC:dword;//fEC
    //procedure sub_005027E4(?:?); virtual;
    //procedure sub_0050280C(?:?); virtual;
    procedure sub_00502850; virtual;
    //function sub_00502A54(?:?):?; virtual;
    procedure sub_00502EF0(); virtual;
    //constructor Create(?:TZMySQL5PlainDriver; _Dv__:Boolean);
  end;
  TZMySQLD5PlainDriver = class(TZMySQL5PlainDriver)
  public
    //procedure sub_00502EF4(?:?); virtual;
    //procedure sub_00502F20(?:?); virtual;
    procedure sub_00502FA4; virtual;
    //function sub_00502F6C(?:?):?; virtual;
    //procedure sub_00502FD4(?:?); virtual;
  end;
  _DynArr_205_6 = array of ?;

implementation

{$R *.DFM}

//00501DBC
//procedure sub_00501DBC(?:?);
//begin
{*
 00501DBC    push       ebp
 00501DBD    mov        ebp,esp
 00501DBF    xor        ecx,ecx
 00501DC1    push       ecx
 00501DC2    push       ecx
 00501DC3    push       ecx
 00501DC4    push       ecx
 00501DC5    push       ecx
 00501DC6    push       ecx
 00501DC7    push       ecx
 00501DC8    push       ecx
 00501DC9    push       ebx
 00501DCA    push       esi
 00501DCB    push       edi
 00501DCC    mov        dword ptr [ebp-4],eax
 00501DCF    xor        eax,eax
 00501DD1    push       ebp
 00501DD2    push       501F4C
 00501DD7    push       dword ptr fs:[eax]
 00501DDA    mov        dword ptr fs:[eax],esp
 00501DDD    mov        dl,1
 00501DDF    mov        eax,[0041C8E4]; TStringList
 00501DE4    call       TObject.Create; TStringList.Create
 00501DE9    mov        dword ptr [ebp-8],eax
 00501DEC    xor        eax,eax
 00501DEE    push       ebp
 00501DEF    push       501F2A
 00501DF4    push       dword ptr fs:[eax]
 00501DF7    mov        dword ptr fs:[eax],esp
 00501DFA    lea        edx,[ebp-0C]
 00501DFD    xor        eax,eax
 00501DFF    call       ParamStr
 00501E04    mov        edx,dword ptr [ebp-0C]
 00501E07    mov        eax,dword ptr [ebp-8]
 00501E0A    mov        ecx,dword ptr [eax]
 00501E0C    call       dword ptr [ecx+38]; TStringList.Add
 00501E0F    mov        eax,dword ptr [ebp-4]
 00501E12    mov        edx,dword ptr [eax]
 00501E14    call       dword ptr [edx+14]
 00501E17    mov        esi,eax
 00501E19    sub        esi,1
>00501E1C    jno        00501E23
 00501E1E    call       @IntOver
 00501E23    test       esi,esi
>00501E25    jl         00501E7A
 00501E27    inc        esi
 00501E28    xor        ebx,ebx
 00501E2A    lea        eax,[ebp-10]
 00501E2D    push       eax
 00501E2E    lea        ecx,[ebp-14]
 00501E31    mov        edx,ebx
 00501E33    mov        eax,dword ptr [ebp-4]
 00501E36    call       TStrings.GetName
 00501E3B    mov        eax,dword ptr [ebp-14]
 00501E3E    mov        ecx,0E
 00501E43    mov        edx,1
 00501E48    call       @LStrCopy
 00501E4D    mov        edx,dword ptr [ebp-10]
 00501E50    mov        eax,501F64; 'ServerArgument'
 00501E55    call       SameText
 00501E5A    test       al,al
>00501E5C    je         00501E76
 00501E5E    lea        ecx,[ebp-18]
 00501E61    mov        edx,ebx
 00501E63    mov        eax,dword ptr [ebp-4]
 00501E66    call       TStrings.GetValueFromIndex
 00501E6B    mov        edx,dword ptr [ebp-18]
 00501E6E    mov        eax,dword ptr [ebp-8]
 00501E71    mov        ecx,dword ptr [eax]
 00501E73    call       dword ptr [ecx+38]; TStringList.Add
 00501E76    inc        ebx
 00501E77    dec        esi
<00501E78    jne        00501E2A
 00501E7A    lea        ecx,[ebp-1C]
 00501E7D    mov        edx,501F7C; '--datadir'
 00501E82    mov        eax,dword ptr [ebp-8]
 00501E85    call       TStrings.GetValue
 00501E8A    cmp        dword ptr [ebp-1C],0
>00501E8E    jne        00501E9D
 00501E90    mov        edx,501F90; '--datadir=.\\data\\'
 00501E95    mov        eax,dword ptr [ebp-8]
 00501E98    mov        ecx,dword ptr [eax]
 00501E9A    call       dword ptr [ecx+38]; TStringList.Add
 00501E9D    mov        eax,dword ptr [ebp-8]
 00501EA0    mov        edx,dword ptr [eax]
 00501EA2    call       dword ptr [edx+14]; TStringList.GetCount
 00501EA5    mov        [0061E2D4],eax; gvar_0061E2D4:Integer
 00501EAA    mov        eax,[0061E2D4]; gvar_0061E2D4:Integer
 00501EAF    push       eax
 00501EB0    mov        eax,61E2D0; gvar_0061E2D0:_DynArr_205_6
 00501EB5    mov        ecx,1
 00501EBA    mov        edx,dword ptr ds:[501D90]; _DynArr_205_6
 00501EC0    call       @DynArraySetLength
 00501EC5    add        esp,4
 00501EC8    mov        esi,dword ptr ds:[61E2D4]; gvar_0061E2D4:Integer
 00501ECE    sub        esi,1
>00501ED1    jno        00501ED8
 00501ED3    call       @IntOver
 00501ED8    test       esi,esi
>00501EDA    jl         00501F14
 00501EDC    inc        esi
 00501EDD    xor        ebx,ebx
 00501EDF    lea        ecx,[ebp-20]
 00501EE2    mov        edx,ebx
 00501EE4    mov        eax,dword ptr [ebp-8]
 00501EE7    mov        edi,dword ptr [eax]
 00501EE9    call       dword ptr [edi+0C]; TStringList.Get
 00501EEC    mov        eax,dword ptr [ebp-20]
 00501EEF    call       @LStrToPChar
 00501EF4    call       StrNew
 00501EF9    mov        edx,dword ptr ds:[61E2D0]; gvar_0061E2D0:_DynArr_205_6
 00501EFF    test       edx,edx
>00501F01    je         00501F08
 00501F03    cmp        ebx,dword ptr [edx-4]
>00501F06    jb         00501F0D
 00501F08    call       @BoundErr
 00501F0D    mov        dword ptr [edx+ebx*4],eax
 00501F10    inc        ebx
 00501F11    dec        esi
<00501F12    jne        00501EDF
 00501F14    xor        eax,eax
 00501F16    pop        edx
 00501F17    pop        ecx
 00501F18    pop        ecx
 00501F19    mov        dword ptr fs:[eax],edx
 00501F1C    push       501F31
 00501F21    mov        eax,dword ptr [ebp-8]
 00501F24    call       TObject.Free
 00501F29    ret
<00501F2A    jmp        @HandleFinally
<00501F2F    jmp        00501F21
 00501F31    xor        eax,eax
 00501F33    pop        edx
 00501F34    pop        ecx
 00501F35    pop        ecx
 00501F36    mov        dword ptr fs:[eax],edx
 00501F39    push       501F53
 00501F3E    lea        eax,[ebp-20]
 00501F41    mov        edx,6
 00501F46    call       @LStrArrayClr
 00501F4B    ret
<00501F4C    jmp        @HandleFinally
<00501F51    jmp        00501F3E
 00501F53    pop        edi
 00501F54    pop        esi
 00501F55    pop        ebx
 00501F56    mov        esp,ebp
 00501F58    pop        ebp
 00501F59    ret
*}
//end;

//00501FA4
//constructor TZMySQL41PlainDriver.Create(?:TZMySQL41PlainDriver; _Dv__:Boolean);
//begin
{*
 00501FA4    test       dl,dl
>00501FA6    je         00501FB0
 00501FA8    add        esp,0FFFFFFF0
 00501FAB    call       @ClassCreate
 00501FB0    test       dl,dl
>00501FB2    je         00501FC3
 00501FB4    call       @AfterConstruction
 00501FB9    pop        dword ptr fs:[0]
 00501FC0    add        esp,0C
 00501FC3    ret
*}
//end;

//00501FC4
//procedure sub_00501FC4(?:?);
//begin
{*
 00501FC4    push       ebp
 00501FC5    mov        ebp,esp
 00501FC7    push       ebx
 00501FC8    mov        ebx,edx
 00501FCA    mov        eax,ebx
 00501FCC    mov        edx,501FE4; 'mysql-4.1'
 00501FD1    call       @LStrAsg
 00501FD6    pop        ebx
 00501FD7    pop        ebp
 00501FD8    ret
*}
//end;

//00501FF0
//procedure sub_00501FF0(?:?);
//begin
{*
 00501FF0    push       ebp
 00501FF1    mov        ebp,esp
 00501FF3    push       ebx
 00501FF4    mov        ebx,edx
 00501FF6    mov        eax,ebx
 00501FF8    mov        edx,502010; 'Native Plain Driver for MySQL 4.1+'
 00501FFD    call       @LStrAsg
 00502002    pop        ebx
 00502003    pop        ebp
 00502004    ret
*}
//end;

//00502034
procedure sub_00502034;
begin
{*
 00502034    push       ebp
 00502035    mov        ebp,esp
 00502037    push       ebx
 00502038    push       esi
 00502039    push       edi
 0050203A    mov        ebx,eax
 0050203C    mov        eax,[0061BFCC]; ^gvar_0061E2B4:TZMySQLNativeLibraryLoader
 00502041    mov        eax,dword ptr [eax]
 00502043    mov        edx,dword ptr [eax]
 00502045    call       dword ptr [edx+0C]; TZMySQLNativeLibraryLoader.sub_004EBCDC
 00502048    mov        eax,[0061BFCC]; ^gvar_0061E2B4:TZMySQLNativeLibraryLoader
 0050204D    mov        eax,dword ptr [eax]
 0050204F    lea        esi,[eax+10]; TZMySQLNativeLibraryLoader.?f10:dword
 00502052    lea        edi,[ebx+10]; TZMySQL41PlainDriver.?f10:?
 00502055    mov        ecx,77
 0050205A    rep movs   dword ptr [edi],dword ptr [esi]
 0050205C    pop        edi
 0050205D    pop        esi
 0050205E    pop        ebx
 0050205F    pop        ebp
 00502060    ret
*}
end;

//00502238
//function sub_00502238(?:?):?;
//begin
{*
 00502238    push       ebp
 00502239    mov        ebp,esp
 0050223B    push       ebx
 0050223C    push       esi
 0050223D    mov        esi,edx
 0050223F    mov        ebx,eax
 00502241    cmp        dword ptr [ebx+0EC],0; TZMySQL41PlainDriver.?fEC:dword
>00502248    je         00502256
 0050224A    push       0
 0050224C    push       0
 0050224E    push       1
 00502250    call       dword ptr [ebx+0EC]
 00502256    push       0
 00502258    call       dword ptr [ebx+78]
 0050225B    mov        dword ptr [esi],eax
 0050225D    mov        eax,dword ptr [esi]
 0050225F    pop        esi
 00502260    pop        ebx
 00502261    pop        ebp
 00502262    ret
*}
//end;

//005026D4
procedure sub_005026D4();
begin
{*
 005026D4    ret
*}
end;

//005026D8
//procedure sub_005026D8(?:?);
//begin
{*
 005026D8    push       ebp
 005026D9    mov        ebp,esp
 005026DB    push       ebx
 005026DC    mov        ebx,edx
 005026DE    mov        eax,ebx
 005026E0    mov        edx,5026F8; 'mysqld-4.1'
 005026E5    call       @LStrAsg
 005026EA    pop        ebx
 005026EB    pop        ebp
 005026EC    ret
*}
//end;

//00502704
//procedure sub_00502704(?:?);
//begin
{*
 00502704    push       ebp
 00502705    mov        ebp,esp
 00502707    push       ebx
 00502708    mov        ebx,edx
 0050270A    mov        eax,ebx
 0050270C    mov        edx,502724; 'Native Plain Driver for Embedded MySQL 4.1+'
 00502711    call       @LStrAsg
 00502716    pop        ebx
 00502717    pop        ebp
 00502718    ret
*}
//end;

//00502750
//function sub_00502750(?:?):?;
//begin
{*
 00502750    push       ebp
 00502751    mov        ebp,esp
 00502753    push       ebx
 00502754    push       esi
 00502755    mov        esi,edx
 00502757    mov        ebx,eax
 00502759    cmp        dword ptr [ebx+0EC],0; TZMySQLD41PlainDriver.?fEC:dword
>00502760    je         0050277A
 00502762    mov        eax,[0061C130]
 00502767    push       eax
 00502768    mov        eax,[0061E2D0]; gvar_0061E2D0:_DynArr_205_6
 0050276D    push       eax
 0050276E    mov        eax,[0061E2D4]; gvar_0061E2D4:Integer
 00502773    push       eax
 00502774    call       dword ptr [ebx+0EC]
 0050277A    push       0
 0050277C    call       dword ptr [ebx+78]
 0050277F    mov        dword ptr [esi],eax
 00502781    mov        eax,dword ptr [esi]
 00502783    pop        esi
 00502784    pop        ebx
 00502785    pop        ebp
 00502786    ret
*}
//end;

//00502788
procedure sub_00502788;
begin
{*
 00502788    push       ebp
 00502789    mov        ebp,esp
 0050278B    push       ebx
 0050278C    push       esi
 0050278D    push       edi
 0050278E    mov        ebx,eax
 00502790    mov        eax,[0061B3CC]; ^gvar_0061E2B8:TZMySQLNativeLibraryLoader
 00502795    mov        eax,dword ptr [eax]
 00502797    mov        edx,dword ptr [eax]
 00502799    call       dword ptr [edx+0C]; TZMySQLNativeLibraryLoader.sub_004EBCDC
 0050279C    mov        eax,[0061B3CC]; ^gvar_0061E2B8:TZMySQLNativeLibraryLoader
 005027A1    mov        eax,dword ptr [eax]
 005027A3    lea        esi,[eax+10]; TZMySQLNativeLibraryLoader.?f10:dword
 005027A6    lea        edi,[ebx+10]; TZMySQLD41PlainDriver.?f10:?
 005027A9    mov        ecx,77
 005027AE    rep movs   dword ptr [edi],dword ptr [esi]
 005027B0    pop        edi
 005027B1    pop        esi
 005027B2    pop        ebx
 005027B3    pop        ebp
 005027B4    ret
*}
end;

//005027B8
//procedure sub_005027B8(?:?);
//begin
{*
 005027B8    push       ebp
 005027B9    mov        ebp,esp
 005027BB    mov        eax,edx
 005027BD    call       00501DBC
 005027C2    pop        ebp
 005027C3    ret
*}
//end;

//005027C4
//constructor TZMySQL5PlainDriver.Create(?:TZMySQL5PlainDriver; _Dv__:Boolean);
//begin
{*
 005027C4    test       dl,dl
>005027C6    je         005027D0
 005027C8    add        esp,0FFFFFFF0
 005027CB    call       @ClassCreate
 005027D0    test       dl,dl
>005027D2    je         005027E3
 005027D4    call       @AfterConstruction
 005027D9    pop        dword ptr fs:[0]
 005027E0    add        esp,0C
 005027E3    ret
*}
//end;

//005027E4
//procedure sub_005027E4(?:?);
//begin
{*
 005027E4    push       ebp
 005027E5    mov        ebp,esp
 005027E7    push       ebx
 005027E8    mov        ebx,edx
 005027EA    mov        eax,ebx
 005027EC    mov        edx,502804; 'mysql-5'
 005027F1    call       @LStrAsg
 005027F6    pop        ebx
 005027F7    pop        ebp
 005027F8    ret
*}
//end;

//0050280C
//procedure sub_0050280C(?:?);
//begin
{*
 0050280C    push       ebp
 0050280D    mov        ebp,esp
 0050280F    push       ebx
 00502810    mov        ebx,edx
 00502812    mov        eax,ebx
 00502814    mov        edx,50282C; 'Native Plain Driver for MySQL 5.0+'
 00502819    call       @LStrAsg
 0050281E    pop        ebx
 0050281F    pop        ebp
 00502820    ret
*}
//end;

//00502850
procedure sub_00502850;
begin
{*
 00502850    push       ebp
 00502851    mov        ebp,esp
 00502853    push       ebx
 00502854    push       esi
 00502855    push       edi
 00502856    mov        ebx,eax
 00502858    mov        eax,[0061BFC8]; ^gvar_0061E2C0:TZMySQLNativeLibraryLoader
 0050285D    mov        eax,dword ptr [eax]
 0050285F    mov        edx,dword ptr [eax]
 00502861    call       dword ptr [edx+0C]; TZMySQLNativeLibraryLoader.sub_004EBCDC
 00502864    mov        eax,[0061BFC8]; ^gvar_0061E2C0:TZMySQLNativeLibraryLoader
 00502869    mov        eax,dword ptr [eax]
 0050286B    lea        esi,[eax+10]; TZMySQLNativeLibraryLoader.?f10:dword
 0050286E    lea        edi,[ebx+10]; TZMySQL5PlainDriver.?f10:?
 00502871    mov        ecx,78
 00502876    rep movs   dword ptr [edi],dword ptr [esi]
 00502878    pop        edi
 00502879    pop        esi
 0050287A    pop        ebx
 0050287B    pop        ebp
 0050287C    ret
*}
end;

//00502A54
//function sub_00502A54(?:?):?;
//begin
{*
 00502A54    push       ebp
 00502A55    mov        ebp,esp
 00502A57    push       ebx
 00502A58    push       esi
 00502A59    mov        esi,edx
 00502A5B    mov        ebx,eax
 00502A5D    cmp        dword ptr [ebx+0EC],0; TZMySQL5PlainDriver.?fEC:dword
>00502A64    je         00502A72
 00502A66    push       0
 00502A68    push       0
 00502A6A    push       1
 00502A6C    call       dword ptr [ebx+0EC]
 00502A72    push       0
 00502A74    call       dword ptr [ebx+78]
 00502A77    mov        dword ptr [esi],eax
 00502A79    mov        eax,dword ptr [esi]
 00502A7B    pop        esi
 00502A7C    pop        ebx
 00502A7D    pop        ebp
 00502A7E    ret
*}
//end;

//00502EF0
procedure sub_00502EF0();
begin
{*
 00502EF0    ret
*}
end;

//00502EF4
//procedure sub_00502EF4(?:?);
//begin
{*
 00502EF4    push       ebp
 00502EF5    mov        ebp,esp
 00502EF7    push       ebx
 00502EF8    mov        ebx,edx
 00502EFA    mov        eax,ebx
 00502EFC    mov        edx,502F14; 'mysqld-5'
 00502F01    call       @LStrAsg
 00502F06    pop        ebx
 00502F07    pop        ebp
 00502F08    ret
*}
//end;

//00502F20
//procedure sub_00502F20(?:?);
//begin
{*
 00502F20    push       ebp
 00502F21    mov        ebp,esp
 00502F23    push       ebx
 00502F24    mov        ebx,edx
 00502F26    mov        eax,ebx
 00502F28    mov        edx,502F40; 'Native Plain Driver for Embedded MySQL 5+'
 00502F2D    call       @LStrAsg
 00502F32    pop        ebx
 00502F33    pop        ebp
 00502F34    ret
*}
//end;

//00502F6C
//function sub_00502F6C(?:?):?;
//begin
{*
 00502F6C    push       ebp
 00502F6D    mov        ebp,esp
 00502F6F    push       ebx
 00502F70    push       esi
 00502F71    mov        esi,edx
 00502F73    mov        ebx,eax
 00502F75    cmp        dword ptr [ebx+0EC],0; TZMySQLD5PlainDriver.?fEC:dword
>00502F7C    je         00502F96
 00502F7E    mov        eax,[0061C130]
 00502F83    push       eax
 00502F84    mov        eax,[0061E2D0]; gvar_0061E2D0:_DynArr_205_6
 00502F89    push       eax
 00502F8A    mov        eax,[0061E2D4]; gvar_0061E2D4:Integer
 00502F8F    push       eax
 00502F90    call       dword ptr [ebx+0EC]
 00502F96    push       0
 00502F98    call       dword ptr [ebx+78]
 00502F9B    mov        dword ptr [esi],eax
 00502F9D    mov        eax,dword ptr [esi]
 00502F9F    pop        esi
 00502FA0    pop        ebx
 00502FA1    pop        ebp
 00502FA2    ret
*}
//end;

//00502FA4
procedure sub_00502FA4;
begin
{*
 00502FA4    push       ebp
 00502FA5    mov        ebp,esp
 00502FA7    push       ebx
 00502FA8    push       esi
 00502FA9    push       edi
 00502FAA    mov        ebx,eax
 00502FAC    mov        eax,[0061B3C8]; ^gvar_0061E2C4:TZMySQLNativeLibraryLoader
 00502FB1    mov        eax,dword ptr [eax]
 00502FB3    mov        edx,dword ptr [eax]
 00502FB5    call       dword ptr [edx+0C]; TZMySQLNativeLibraryLoader.sub_004EBCDC
 00502FB8    mov        eax,[0061B3C8]; ^gvar_0061E2C4:TZMySQLNativeLibraryLoader
 00502FBD    mov        eax,dword ptr [eax]
 00502FBF    lea        esi,[eax+10]; TZMySQLNativeLibraryLoader.?f10:dword
 00502FC2    lea        edi,[ebx+10]; TZMySQLD5PlainDriver.?f10:?
 00502FC5    mov        ecx,78
 00502FCA    rep movs   dword ptr [edi],dword ptr [esi]
 00502FCC    pop        edi
 00502FCD    pop        esi
 00502FCE    pop        ebx
 00502FCF    pop        ebp
 00502FD0    ret
*}
end;

//00502FD4
//procedure sub_00502FD4(?:?);
//begin
{*
 00502FD4    push       ebp
 00502FD5    mov        ebp,esp
 00502FD7    mov        eax,edx
 00502FD9    call       00501DBC
 00502FDE    pop        ebp
 00502FDF    ret
*}
//end;

Initialization
Finalization
//00502FE0
{*
 00502FE0    push       ebp
 00502FE1    mov        ebp,esp
 00502FE3    xor        eax,eax
 00502FE5    push       ebp
 00502FE6    push       503017
 00502FEB    push       dword ptr fs:[eax]
 00502FEE    mov        dword ptr fs:[eax],esp
 00502FF1    inc        dword ptr ds:[61E2CC]
>00502FF7    jne        00503009
 00502FF9    mov        eax,61E2D0; gvar_0061E2D0:_DynArr_205_6
 00502FFE    mov        edx,dword ptr ds:[501D90]; _DynArr_205_6
 00503004    call       @DynArrayClear
 00503009    xor        eax,eax
 0050300B    pop        edx
 0050300C    pop        ecx
 0050300D    pop        ecx
 0050300E    mov        dword ptr fs:[eax],edx
 00503011    push       50301E
 00503016    ret
<00503017    jmp        @HandleFinally
<0050301C    jmp        00503016
 0050301E    pop        ebp
 0050301F    ret
*}
end.