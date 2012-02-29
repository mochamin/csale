{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit191;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZDbcInterbase6, ZDbcInterbase6Utils;

type
  TZInterbase6Statement = class(TZAbstractStatement)
  public
    f48:byte;//f48
    //f4C:?;//f4C
    fA0:IZInterbase6Connection;//fA0
    //procedure sub_00528B9C(?:?; ?:?); virtual;
    //function sub_00528E94(?:?):?; virtual;
    //function sub_00529064(?:?):?; virtual;
    //constructor Create(?:TZInterbase6Statement; _Dv__:Boolean; ?:?);
  end;
  TZInterbase6PreparedStatement = class(TZAbstractPreparedStatement)
  public
    f60:byte;//f60
    f64:IZParamsSQLDA;//f64
    //f68:?;//f68
    fBC:IZInterbase6Connection;//fBC
    //procedure sub_00529910(?:?; ?:?); virtual;
    //procedure sub_00529C74(?:?); virtual;
    //procedure sub_00529588(?:?); virtual;
    //procedure sub_00529938(?:?); virtual;
    //function sub_00529C98:?; virtual;
    //function sub_005295AC:?; virtual;
    //constructor Create(?:TZInterbase6PreparedStatement; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZInterbase6CallableStatement = class(TZAbstractCallableStatement)
  public
    f78:byte;//f78
    f7C:IZParamsSQLDA;//f7C
    //f80:?;//f80
    fD4:IZInterbase6Connection;//fD4
    //procedure sub_0052A410(?:?; ?:?); virtual;
    //procedure sub_0052A768(?:?); virtual;
    //procedure sub_0052A068(?:?); virtual;
    //procedure sub_0052A438(?:?); virtual;
    //function sub_0052A78C:?; virtual;
    //function sub_0052A08C:?; virtual;
    //constructor Create(?:TZInterbase6CallableStatement; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//00528A44
//procedure sub_00528A44(?:TZInterbase6Statement; ?:?);
//begin
{*
 00528A44    push       ebp
 00528A45    mov        ebp,esp
 00528A47    push       0
 00528A49    push       ebx
 00528A4A    push       esi
 00528A4B    mov        esi,edx
 00528A4D    mov        ebx,eax
 00528A4F    xor        eax,eax
 00528A51    push       ebp
 00528A52    push       528A92
 00528A57    push       dword ptr fs:[eax]
 00528A5A    mov        dword ptr fs:[eax],esp
 00528A5D    push       esi
 00528A5E    lea        edx,[ebp-4]
 00528A61    mov        eax,dword ptr [ebx+0A0]; TZInterbase6Statement.?fA0:IZInterbase6Connection
 00528A67    mov        ecx,dword ptr [eax]
 00528A69    call       dword ptr [ecx+0A0]
 00528A6F    mov        eax,dword ptr [ebp-4]
 00528A72    mov        cl,3
 00528A74    lea        edx,[ebx+4C]; TZInterbase6Statement.?f4C:?
 00528A77    call       00532ED0
 00528A7C    xor        eax,eax
 00528A7E    pop        edx
 00528A7F    pop        ecx
 00528A80    pop        ecx
 00528A81    mov        dword ptr fs:[eax],edx
 00528A84    push       528A99
 00528A89    lea        eax,[ebp-4]
 00528A8C    call       @IntfClear
 00528A91    ret
<00528A92    jmp        @HandleFinally
<00528A97    jmp        00528A89
 00528A99    pop        esi
 00528A9A    pop        ebx
 00528A9B    pop        ecx
 00528A9C    pop        ebp
 00528A9D    ret
*}
//end;

//00528AA0
//constructor TZInterbase6Statement.Create(?:TZInterbase6Statement; _Dv__:Boolean; ?:?);
//begin
{*
 00528AA0    push       ebp
 00528AA1    mov        ebp,esp
 00528AA3    add        esp,0FFFFFFF8
 00528AA6    push       ebx
 00528AA7    push       esi
 00528AA8    xor        ebx,ebx
 00528AAA    mov        dword ptr [ebp-8],ebx
 00528AAD    test       dl,dl
>00528AAF    je         00528AB9
 00528AB1    add        esp,0FFFFFFF0
 00528AB4    call       @ClassCreate
 00528AB9    mov        dword ptr [ebp-4],ecx
 00528ABC    mov        ebx,edx
 00528ABE    mov        esi,eax
 00528AC0    mov        eax,dword ptr [ebp-4]
 00528AC3    call       @IntfAddRef
 00528AC8    xor        eax,eax
 00528ACA    push       ebp
 00528ACB    push       528B42
 00528AD0    push       dword ptr fs:[eax]
 00528AD3    mov        dword ptr fs:[eax],esp
 00528AD6    mov        eax,dword ptr [ebp+8]
 00528AD9    push       eax
 00528ADA    mov        ecx,dword ptr [ebp-4]
 00528ADD    xor        edx,edx
 00528ADF    mov        eax,esi
 00528AE1    call       004DFC94
 00528AE6    lea        eax,[esi+0A0]; TZInterbase6Statement.?fA0:IZInterbase6Connection
 00528AEC    mov        edx,dword ptr [ebp-4]
 00528AEF    mov        ecx,528B68; ['{E870E4FE-21EB-4725-B5D8-38B8A2B12D0B}']
 00528AF4    call       @IntfCast
 00528AF9    mov        byte ptr [esi+2D],1; TZInterbase6Statement.?f2D:byte
 00528AFD    lea        eax,[ebp-8]
 00528B00    push       eax
 00528B01    mov        eax,esi
 00528B03    test       eax,eax
>00528B05    je         00528B0A
 00528B07    sub        eax,0FFFFFFBC
 00528B0A    mov        ecx,528B80; 'true'
 00528B0F    mov        edx,528B90; 'cashedblob'
 00528B14    call       004D30D4
 00528B19    mov        eax,dword ptr [ebp-8]
 00528B1C    call       004BEFC0
 00528B21    mov        byte ptr [esi+48],al; TZInterbase6Statement.?f48:byte
 00528B24    xor        eax,eax
 00528B26    pop        edx
 00528B27    pop        ecx
 00528B28    pop        ecx
 00528B29    mov        dword ptr fs:[eax],edx
 00528B2C    push       528B49
 00528B31    lea        eax,[ebp-8]
 00528B34    call       @LStrClr
 00528B39    lea        eax,[ebp-4]
 00528B3C    call       @IntfClear
 00528B41    ret
<00528B42    jmp        @HandleFinally
<00528B47    jmp        00528B31
 00528B49    mov        eax,esi
 00528B4B    test       bl,bl
>00528B4D    je         00528B5E
 00528B4F    call       @AfterConstruction
 00528B54    pop        dword ptr fs:[0]
 00528B5B    add        esp,0C
 00528B5E    mov        eax,esi
 00528B60    pop        esi
 00528B61    pop        ebx
 00528B62    pop        ecx
 00528B63    pop        ecx
 00528B64    pop        ebp
 00528B65    ret        4
*}
//end;

//00528B9C
//procedure sub_00528B9C(?:?; ?:?);
//begin
{*
 00528B9C    push       ebp
 00528B9D    mov        ebp,esp
 00528B9F    push       ecx
 00528BA0    mov        ecx,7
 00528BA5    push       0
 00528BA7    push       0
 00528BA9    dec        ecx
<00528BAA    jne        00528BA5
 00528BAC    xchg       ecx,dword ptr [ebp-4]
 00528BAF    push       ebx
 00528BB0    push       esi
 00528BB1    push       edi
 00528BB2    mov        dword ptr [ebp-4],ecx
 00528BB5    mov        esi,edx
 00528BB7    mov        ebx,eax
 00528BB9    xor        eax,eax
 00528BBB    push       ebp
 00528BBC    push       528E86
 00528BC1    push       dword ptr fs:[eax]
 00528BC4    mov        dword ptr fs:[eax],esp
 00528BC7    xor        eax,eax
 00528BC9    mov        dword ptr [ebp-10],eax
 00528BCC    lea        eax,[ebp-18]
 00528BCF    mov        edx,dword ptr [ebx+0A0]; TZInterbase6Statement.?fA0:IZInterbase6Connection
 00528BD5    call       @IntfCopy
 00528BDA    mov        eax,dword ptr [ebp-18]
 00528BDD    mov        edx,dword ptr [eax]
 00528BDF    call       dword ptr [edx+94]
 00528BE5    push       eax
 00528BE6    mov        eax,dword ptr [ebp-18]
 00528BE9    mov        edx,dword ptr [eax]
 00528BEB    call       dword ptr [edx+98]
 00528BF1    push       eax
 00528BF2    lea        edx,[ebp-1C]
 00528BF5    mov        eax,dword ptr [ebp-18]
 00528BF8    mov        ecx,dword ptr [eax]
 00528BFA    call       dword ptr [ecx+0A0]
 00528C00    mov        ecx,dword ptr [ebp-1C]
 00528C03    mov        dl,1
 00528C05    mov        eax,[00531854]; TZResultSQLDA
 00528C0A    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 00528C0F    mov        edx,eax
 00528C11    test       edx,edx
>00528C13    je         00528C18
 00528C15    sub        edx,0FFFFFFDC
 00528C18    lea        eax,[ebp-0C]
 00528C1B    call       @IntfCopy
 00528C20    xor        edx,edx
 00528C22    push       ebp
 00528C23    push       528DF9
 00528C28    push       dword ptr fs:[edx]
 00528C2B    mov        dword ptr fs:[edx],esp
 00528C2E    mov        eax,dword ptr [ebp-18]
 00528C31    mov        edx,dword ptr [eax]
 00528C33    call       dword ptr [edx+9C]
 00528C39    push       eax
 00528C3A    push       esi
 00528C3B    lea        eax,[ebp-10]
 00528C3E    push       eax
 00528C3F    lea        edx,[ebp-20]
 00528C42    mov        eax,dword ptr [ebp-18]
 00528C45    mov        ecx,dword ptr [eax]
 00528C47    call       dword ptr [ecx+0A0]
 00528C4D    mov        eax,dword ptr [ebp-20]
 00528C50    push       eax
 00528C51    mov        eax,dword ptr [ebp-18]
 00528C54    mov        edx,dword ptr [eax]
 00528C56    call       dword ptr [edx+98]
 00528C5C    push       eax
 00528C5D    mov        eax,dword ptr [ebp-18]
 00528C60    mov        edx,dword ptr [eax]
 00528C62    call       dword ptr [edx+94]
 00528C68    mov        edx,eax
 00528C6A    pop        ecx
 00528C6B    pop        eax
 00528C6C    call       00533184
 00528C71    mov        byte ptr [ebp-11],al
 00528C74    push       esi
 00528C75    lea        eax,[ebp-10]
 00528C78    push       eax
 00528C79    mov        eax,dword ptr [ebp-0C]
 00528C7C    push       eax
 00528C7D    lea        edx,[ebp-24]
 00528C80    mov        eax,dword ptr [ebp-18]
 00528C83    mov        ecx,dword ptr [eax]
 00528C85    call       dword ptr [ecx+0A0]
 00528C8B    mov        eax,dword ptr [ebp-24]
 00528C8E    push       eax
 00528C8F    mov        eax,dword ptr [ebp-18]
 00528C92    mov        edx,dword ptr [eax]
 00528C94    call       dword ptr [edx+9C]
 00528C9A    push       eax
 00528C9B    mov        eax,dword ptr [ebp-18]
 00528C9E    mov        edx,dword ptr [eax]
 00528CA0    call       dword ptr [edx+94]
 00528CA6    mov        edx,eax
 00528CA8    pop        ecx
 00528CA9    pop        eax
 00528CAA    call       0053328C
 00528CAF    lea        eax,[ebp-10]
 00528CB2    push       eax
 00528CB3    mov        eax,dword ptr [ebp-18]
 00528CB6    mov        edx,dword ptr [eax]
 00528CB8    call       dword ptr [edx+9C]
 00528CBE    push       eax
 00528CBF    mov        eax,dword ptr [ebp-0C]
 00528CC2    mov        edx,dword ptr [eax]
 00528CC4    call       dword ptr [edx+18]
 00528CC7    push       eax
 00528CC8    lea        edx,[ebp-28]
 00528CCB    mov        eax,dword ptr [ebp-18]
 00528CCE    mov        ecx,dword ptr [eax]
 00528CD0    call       dword ptr [ecx+0A0]
 00528CD6    mov        eax,dword ptr [ebp-28]
 00528CD9    push       eax
 00528CDA    mov        eax,dword ptr [ebp-18]
 00528CDD    mov        edx,dword ptr [eax]
 00528CDF    call       dword ptr [edx+98]
 00528CE5    mov        ecx,eax
 00528CE7    lea        edx,[ebx+4C]; TZInterbase6Statement.?f4C:?
 00528CEA    pop        eax
 00528CEB    mov        edi,dword ptr [eax]
 00528CED    call       dword ptr [edi+78]
 00528CF0    mov        edx,esi
 00528CF2    mov        eax,ebx
 00528CF4    call       00528A44
 00528CF9    mov        al,byte ptr [ebp-11]
 00528CFC    sub        al,1
>00528CFE    je         00528D08
 00528D00    sub        al,7
>00528D02    jne        00528DA3
 00528D08    mov        eax,dword ptr [ebp-0C]
 00528D0B    mov        edx,dword ptr [eax]
 00528D0D    call       dword ptr [edx+24]
 00528D10    test       eax,eax
>00528D12    je         00528DA3
 00528D18    cmp        dword ptr [ebx+30],0; TZInterbase6Statement.?f30:String
>00528D1C    je         00528D5C
 00528D1E    lea        eax,[ebp-8]
 00528D21    mov        edx,dword ptr [ebx+30]; TZInterbase6Statement.?f30:String
 00528D24    call       @LStrLAsg
 00528D29    mov        eax,dword ptr [ebp-8]
 00528D2C    call       @LStrToPChar
 00528D31    push       eax
 00528D32    push       0
 00528D34    lea        edx,[ebp-2C]
 00528D37    mov        eax,dword ptr [ebp-18]
 00528D3A    mov        ecx,dword ptr [eax]
 00528D3C    call       dword ptr [ecx+0A0]
 00528D42    mov        eax,dword ptr [ebp-2C]
 00528D45    lea        ecx,[ebp-10]
 00528D48    lea        edx,[ebx+4C]; TZInterbase6Statement.?f4C:?
 00528D4B    mov        edi,dword ptr [eax]
 00528D4D    call       dword ptr [edi+90]
 00528D53    mov        edx,esi
 00528D55    mov        eax,ebx
 00528D57    call       00528A44
 00528D5C    mov        eax,dword ptr [ebp-4]
 00528D5F    push       eax
 00528D60    push       esi
 00528D61    lea        eax,[ebp-10]
 00528D64    push       eax
 00528D65    mov        eax,dword ptr [ebp-8]
 00528D68    push       eax
 00528D69    mov        eax,dword ptr [ebp-0C]
 00528D6C    push       eax
 00528D6D    push       0
 00528D6F    mov        al,byte ptr [ebx+48]; TZInterbase6Statement.?f48:byte
 00528D72    push       eax
 00528D73    mov        ecx,ebx
 00528D75    test       ecx,ecx
>00528D77    je         00528D7C
 00528D79    sub        ecx,0FFFFFFBC
 00528D7C    mov        dl,1
 00528D7E    mov        eax,[005275F0]; TZInterbase6ResultSet
 00528D83    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 00528D88    mov        ecx,eax
 00528D8A    test       ecx,ecx
>00528D8C    je         00528D91
 00528D8E    sub        ecx,0FFFFFFC8
 00528D91    mov        edx,ebx
 00528D93    test       edx,edx
>00528D95    je         00528D9A
 00528D97    sub        edx,0FFFFFFBC
 00528D9A    mov        eax,esi
 00528D9C    call       00532320
>00528DA1    jmp        00528DC4
 00528DA3    lea        edx,[ebp-30]
 00528DA6    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 00528DAB    call       LoadResString
 00528DB0    mov        ecx,dword ptr [ebp-30]
 00528DB3    mov        dl,1
 00528DB5    mov        eax,[004C6D20]; EZSQLException
 00528DBA    call       EZSQLException.Create; EZSQLException.Create
 00528DBF    call       @RaiseExcept
 00528DC4    push       esi
 00528DC5    lea        edx,[ebp-38]
 00528DC8    mov        eax,dword ptr [ebp-18]
 00528DCB    mov        ecx,dword ptr [eax]
 00528DCD    call       dword ptr [ecx+0A0]
 00528DD3    mov        eax,dword ptr [ebp-38]
 00528DD6    lea        edx,[ebp-34]
 00528DD9    mov        ecx,dword ptr [eax]
 00528DDB    call       dword ptr [ecx+0C]
 00528DDE    mov        ecx,dword ptr [ebp-34]
 00528DE1    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00528DE6    mov        eax,dword ptr [eax]
 00528DE8    mov        dl,3
 00528DEA    mov        ebx,dword ptr [eax]
 00528DEC    call       dword ptr [ebx+3C]
 00528DEF    xor        eax,eax
 00528DF1    pop        edx
 00528DF2    pop        ecx
 00528DF3    pop        ecx
 00528DF4    mov        dword ptr fs:[eax],edx
>00528DF7    jmp        00528E2D
<00528DF9    jmp        @HandleOnException
 00528DFE    dd        1
 00528E02    dd        4087B0;Exception
 00528E06    dd        528E0A
 00528E0A    lea        edx,[ebp-3C]
 00528E0D    mov        eax,dword ptr [ebp-18]
 00528E10    mov        ecx,dword ptr [eax]
 00528E12    call       dword ptr [ecx+0A0]
 00528E18    mov        eax,dword ptr [ebp-3C]
 00528E1B    mov        edx,dword ptr [ebp-10]
 00528E1E    call       00533438
 00528E23    call       @RaiseAgain
 00528E28    call       @DoneExcept
 00528E2D    xor        eax,eax
 00528E2F    pop        edx
 00528E30    pop        ecx
 00528E31    pop        ecx
 00528E32    mov        dword ptr fs:[eax],edx
 00528E35    push       528E8D
 00528E3A    lea        eax,[ebp-3C]
 00528E3D    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00528E43    mov        ecx,2
 00528E48    call       @FinalizeArray
 00528E4D    lea        eax,[ebp-34]
 00528E50    mov        edx,2
 00528E55    call       @LStrArrayClr
 00528E5A    lea        eax,[ebp-2C]
 00528E5D    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00528E63    mov        ecx,5
 00528E68    call       @FinalizeArray
 00528E6D    lea        eax,[ebp-18]
 00528E70    call       @IntfClear
 00528E75    lea        eax,[ebp-0C]
 00528E78    call       @IntfClear
 00528E7D    lea        eax,[ebp-8]
 00528E80    call       @LStrClr
 00528E85    ret
<00528E86    jmp        @HandleFinally
<00528E8B    jmp        00528E3A
 00528E8D    pop        edi
 00528E8E    pop        esi
 00528E8F    pop        ebx
 00528E90    mov        esp,ebp
 00528E92    pop        ebp
 00528E93    ret
*}
//end;

//00528E94
//function sub_00528E94(?:?):?;
//begin
{*
 00528E94    push       ebp
 00528E95    mov        ebp,esp
 00528E97    mov        ecx,5
 00528E9C    push       0
 00528E9E    push       0
 00528EA0    dec        ecx
<00528EA1    jne        00528E9C
 00528EA3    push       ebx
 00528EA4    push       esi
 00528EA5    push       edi
 00528EA6    mov        esi,edx
 00528EA8    mov        ebx,eax
 00528EAA    xor        eax,eax
 00528EAC    push       ebp
 00528EAD    push       529050
 00528EB2    push       dword ptr fs:[eax]
 00528EB5    mov        dword ptr fs:[eax],esp
 00528EB8    xor        eax,eax
 00528EBA    mov        dword ptr [ebp-8],eax
 00528EBD    lea        eax,[ebp-10]
 00528EC0    mov        edx,dword ptr [ebx+0A0]; TZInterbase6Statement.?fA0:IZInterbase6Connection
 00528EC6    call       @IntfCopy
 00528ECB    xor        eax,eax
 00528ECD    push       ebp
 00528ECE    push       529005
 00528ED3    push       dword ptr fs:[eax]
 00528ED6    mov        dword ptr fs:[eax],esp
 00528ED9    mov        eax,dword ptr [ebp-10]
 00528EDC    mov        edx,dword ptr [eax]
 00528EDE    call       dword ptr [edx+9C]
 00528EE4    push       eax
 00528EE5    push       esi
 00528EE6    lea        eax,[ebp-8]
 00528EE9    push       eax
 00528EEA    lea        edx,[ebp-14]
 00528EED    mov        eax,dword ptr [ebp-10]
 00528EF0    mov        ecx,dword ptr [eax]
 00528EF2    call       dword ptr [ecx+0A0]
 00528EF8    mov        eax,dword ptr [ebp-14]
 00528EFB    push       eax
 00528EFC    mov        eax,dword ptr [ebp-10]
 00528EFF    mov        edx,dword ptr [eax]
 00528F01    call       dword ptr [edx+98]
 00528F07    push       eax
 00528F08    mov        eax,dword ptr [ebp-10]
 00528F0B    mov        edx,dword ptr [eax]
 00528F0D    call       dword ptr [edx+94]
 00528F13    mov        edx,eax
 00528F15    pop        ecx
 00528F16    pop        eax
 00528F17    call       00533184
 00528F1C    mov        byte ptr [ebp-9],al
 00528F1F    lea        eax,[ebp-8]
 00528F22    push       eax
 00528F23    mov        eax,dword ptr [ebp-10]
 00528F26    mov        edx,dword ptr [eax]
 00528F28    call       dword ptr [edx+9C]
 00528F2E    push       eax
 00528F2F    push       0
 00528F31    push       0
 00528F33    lea        edx,[ebp-18]
 00528F36    mov        eax,dword ptr [ebp-10]
 00528F39    mov        ecx,dword ptr [eax]
 00528F3B    call       dword ptr [ecx+0A0]
 00528F41    mov        eax,dword ptr [ebp-18]
 00528F44    push       eax
 00528F45    mov        eax,dword ptr [ebp-10]
 00528F48    mov        edx,dword ptr [eax]
 00528F4A    call       dword ptr [edx+98]
 00528F50    mov        ecx,eax
 00528F52    lea        edx,[ebx+4C]; TZInterbase6Statement.?f4C:?
 00528F55    pop        eax
 00528F56    mov        edi,dword ptr [eax]
 00528F58    call       dword ptr [edi+7C]
 00528F5B    mov        edx,esi
 00528F5D    mov        eax,ebx
 00528F5F    call       00528A44
 00528F64    mov        al,byte ptr [ebp-9]
 00528F67    sub        al,1
>00528F69    jb         00528F71
 00528F6B    add        al,0F7
 00528F6D    sub        al,2
>00528F6F    jae        00528F7A
 00528F71    mov        dword ptr [ebp-4],0FFFFFFFF
>00528F78    jmp        00528F9F
 00528F7A    lea        edx,[ebp-1C]
 00528F7D    mov        eax,dword ptr [ebp-10]
 00528F80    mov        ecx,dword ptr [eax]
 00528F82    call       dword ptr [ecx+0A0]
 00528F88    mov        eax,dword ptr [ebp-1C]
 00528F8B    mov        cl,byte ptr [ebp-9]
 00528F8E    mov        edx,dword ptr [ebp-8]
 00528F91    call       005334A8
 00528F96    mov        dword ptr [ebp-4],eax
 00528F99    mov        eax,dword ptr [ebp-4]
 00528F9C    mov        dword ptr [ebx+1C],eax; TZInterbase6Statement.?f1C:Integer
 00528F9F    mov        eax,dword ptr [ebx+38]; TZInterbase6Statement.?f38:IZConnection
 00528FA2    mov        edx,dword ptr [eax]
 00528FA4    call       dword ptr [edx+34]
 00528FA7    test       al,al
>00528FA9    je         00528FB3
 00528FAB    mov        eax,dword ptr [ebx+38]; TZInterbase6Statement.?f38:IZConnection
 00528FAE    mov        edx,dword ptr [eax]
 00528FB0    call       dword ptr [edx+38]
 00528FB3    push       esi
 00528FB4    lea        edx,[ebp-24]
 00528FB7    mov        eax,dword ptr [ebp-10]
 00528FBA    mov        ecx,dword ptr [eax]
 00528FBC    call       dword ptr [ecx+0A0]
 00528FC2    mov        eax,dword ptr [ebp-24]
 00528FC5    lea        edx,[ebp-20]
 00528FC8    mov        ecx,dword ptr [eax]
 00528FCA    call       dword ptr [ecx+0C]
 00528FCD    mov        ecx,dword ptr [ebp-20]
 00528FD0    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00528FD5    mov        eax,dword ptr [eax]
 00528FD7    mov        dl,3
 00528FD9    mov        ebx,dword ptr [eax]
 00528FDB    call       dword ptr [ebx+3C]
 00528FDE    xor        eax,eax
 00528FE0    pop        edx
 00528FE1    pop        ecx
 00528FE2    pop        ecx
 00528FE3    mov        dword ptr fs:[eax],edx
 00528FE6    push       52900C
 00528FEB    lea        edx,[ebp-28]
 00528FEE    mov        eax,dword ptr [ebp-10]
 00528FF1    mov        ecx,dword ptr [eax]
 00528FF3    call       dword ptr [ecx+0A0]
 00528FF9    mov        eax,dword ptr [ebp-28]
 00528FFC    mov        edx,dword ptr [ebp-8]
 00528FFF    call       00533438
 00529004    ret
<00529005    jmp        @HandleFinally
<0052900A    jmp        00528FEB
 0052900C    xor        eax,eax
 0052900E    pop        edx
 0052900F    pop        ecx
 00529010    pop        ecx
 00529011    mov        dword ptr fs:[eax],edx
 00529014    push       529057
 00529019    lea        eax,[ebp-28]
 0052901C    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529022    mov        ecx,2
 00529027    call       @FinalizeArray
 0052902C    lea        eax,[ebp-20]
 0052902F    call       @LStrClr
 00529034    lea        eax,[ebp-1C]
 00529037    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052903D    mov        ecx,3
 00529042    call       @FinalizeArray
 00529047    lea        eax,[ebp-10]
 0052904A    call       @IntfClear
 0052904F    ret
<00529050    jmp        @HandleFinally
<00529055    jmp        00529019
 00529057    mov        eax,dword ptr [ebp-4]
 0052905A    pop        edi
 0052905B    pop        esi
 0052905C    pop        ebx
 0052905D    mov        esp,ebp
 0052905F    pop        ebp
 00529060    ret
*}
//end;

//00529064
//function sub_00529064(?:?):?;
//begin
{*
 00529064    push       ebp
 00529065    mov        ebp,esp
 00529067    mov        ecx,8
 0052906C    push       0
 0052906E    push       0
 00529070    dec        ecx
<00529071    jne        0052906C
 00529073    push       ecx
 00529074    push       ebx
 00529075    push       esi
 00529076    push       edi
 00529077    mov        dword ptr [ebp-4],edx
 0052907A    mov        esi,eax
 0052907C    xor        eax,eax
 0052907E    push       ebp
 0052907F    push       5293B4
 00529084    push       dword ptr fs:[eax]
 00529087    mov        dword ptr fs:[eax],esp
 0052908A    xor        eax,eax
 0052908C    mov        dword ptr [ebp-14],eax
 0052908F    lea        eax,[ebp-18]
 00529092    mov        edx,dword ptr [esi+0A0]; TZInterbase6Statement.?fA0:IZInterbase6Connection
 00529098    call       @IntfCopy
 0052909D    xor        edx,edx
 0052909F    push       ebp
 005290A0    push       52931C
 005290A5    push       dword ptr fs:[edx]
 005290A8    mov        dword ptr fs:[edx],esp
 005290AB    mov        eax,dword ptr [ebp-18]
 005290AE    mov        edx,dword ptr [eax]
 005290B0    call       dword ptr [edx+9C]
 005290B6    push       eax
 005290B7    mov        eax,dword ptr [ebp-4]
 005290BA    push       eax
 005290BB    lea        eax,[ebp-14]
 005290BE    push       eax
 005290BF    lea        edx,[ebp-1C]
 005290C2    mov        eax,dword ptr [ebp-18]
 005290C5    mov        ecx,dword ptr [eax]
 005290C7    call       dword ptr [ecx+0A0]
 005290CD    mov        eax,dword ptr [ebp-1C]
 005290D0    push       eax
 005290D1    mov        eax,dword ptr [ebp-18]
 005290D4    mov        edx,dword ptr [eax]
 005290D6    call       dword ptr [edx+98]
 005290DC    push       eax
 005290DD    mov        eax,dword ptr [ebp-18]
 005290E0    mov        edx,dword ptr [eax]
 005290E2    call       dword ptr [edx+94]
 005290E8    mov        edx,eax
 005290EA    pop        ecx
 005290EB    pop        eax
 005290EC    call       00533184
 005290F1    mov        ebx,eax
 005290F3    cmp        bl,1
>005290F6    jne        00529180
 005290FC    mov        eax,dword ptr [ebp-18]
 005290FF    mov        edx,dword ptr [eax]
 00529101    call       dword ptr [edx+94]
 00529107    push       eax
 00529108    mov        eax,dword ptr [ebp-18]
 0052910B    mov        edx,dword ptr [eax]
 0052910D    call       dword ptr [edx+98]
 00529113    push       eax
 00529114    lea        edx,[ebp-20]
 00529117    mov        eax,dword ptr [ebp-18]
 0052911A    mov        ecx,dword ptr [eax]
 0052911C    call       dword ptr [ecx+0A0]
 00529122    mov        ecx,dword ptr [ebp-20]
 00529125    mov        dl,1
 00529127    mov        eax,[00531854]; TZResultSQLDA
 0052912C    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 00529131    mov        edx,eax
 00529133    test       edx,edx
>00529135    je         0052913A
 00529137    sub        edx,0FFFFFFDC
 0052913A    lea        eax,[ebp-10]
 0052913D    call       @IntfCopy
 00529142    mov        eax,dword ptr [ebp-4]
 00529145    push       eax
 00529146    lea        eax,[ebp-14]
 00529149    push       eax
 0052914A    mov        eax,dword ptr [ebp-10]
 0052914D    push       eax
 0052914E    lea        edx,[ebp-24]
 00529151    mov        eax,dword ptr [ebp-18]
 00529154    mov        ecx,dword ptr [eax]
 00529156    call       dword ptr [ecx+0A0]
 0052915C    mov        eax,dword ptr [ebp-24]
 0052915F    push       eax
 00529160    mov        eax,dword ptr [ebp-18]
 00529163    mov        edx,dword ptr [eax]
 00529165    call       dword ptr [edx+9C]
 0052916B    push       eax
 0052916C    mov        eax,dword ptr [ebp-18]
 0052916F    mov        edx,dword ptr [eax]
 00529171    call       dword ptr [edx+94]
 00529177    mov        edx,eax
 00529179    pop        ecx
 0052917A    pop        eax
 0052917B    call       0053328C
 00529180    lea        eax,[ebp-14]
 00529183    push       eax
 00529184    mov        eax,dword ptr [ebp-18]
 00529187    mov        edx,dword ptr [eax]
 00529189    call       dword ptr [edx+9C]
 0052918F    push       eax
 00529190    push       0
 00529192    lea        edx,[ebp-28]
 00529195    mov        eax,dword ptr [ebp-18]
 00529198    mov        ecx,dword ptr [eax]
 0052919A    call       dword ptr [ecx+0A0]
 005291A0    mov        eax,dword ptr [ebp-28]
 005291A3    push       eax
 005291A4    mov        eax,dword ptr [ebp-18]
 005291A7    mov        edx,dword ptr [eax]
 005291A9    call       dword ptr [edx+98]
 005291AF    mov        ecx,eax
 005291B1    lea        edx,[esi+4C]; TZInterbase6Statement.?f4C:?
 005291B4    pop        eax
 005291B5    mov        edi,dword ptr [eax]
 005291B7    call       dword ptr [edi+78]
 005291BA    mov        edx,dword ptr [ebp-4]
 005291BD    mov        eax,esi
 005291BF    call       00528A44
 005291C4    lea        edx,[ebp-2C]
 005291C7    mov        eax,dword ptr [ebp-18]
 005291CA    mov        ecx,dword ptr [eax]
 005291CC    call       dword ptr [ecx+0A0]
 005291D2    mov        eax,dword ptr [ebp-2C]
 005291D5    mov        ecx,ebx
 005291D7    mov        edx,dword ptr [ebp-14]
 005291DA    call       005334A8
 005291DF    mov        dword ptr [esi+1C],eax; TZInterbase6Statement.?f1C:Integer
 005291E2    mov        eax,ebx
 005291E4    add        al,0FE
 005291E6    sub        al,3
>005291E8    jb         005291EE
 005291EA    sub        al,7
>005291EC    jne        005291F4
 005291EE    mov        byte ptr [ebp-5],0
>005291F2    jmp        005291F8
 005291F4    mov        byte ptr [ebp-5],1
 005291F8    sub        bl,1
>005291FB    je         00529206
 005291FD    sub        bl,7
>00529200    jne        005292AF
 00529206    mov        eax,dword ptr [ebp-10]
 00529209    mov        edx,dword ptr [eax]
 0052920B    call       dword ptr [edx+24]
 0052920E    test       eax,eax
>00529210    je         005292AF
 00529216    cmp        dword ptr [esi+30],0; TZInterbase6Statement.?f30:String
>0052921A    je         0052925B
 0052921C    lea        eax,[ebp-0C]
 0052921F    mov        edx,dword ptr [esi+30]; TZInterbase6Statement.?f30:String
 00529222    call       @LStrLAsg
 00529227    mov        eax,dword ptr [ebp-0C]
 0052922A    call       @LStrToPChar
 0052922F    push       eax
 00529230    push       0
 00529232    lea        edx,[ebp-30]
 00529235    mov        eax,dword ptr [ebp-18]
 00529238    mov        ecx,dword ptr [eax]
 0052923A    call       dword ptr [ecx+0A0]
 00529240    mov        eax,dword ptr [ebp-30]
 00529243    lea        ecx,[ebp-14]
 00529246    lea        edx,[esi+4C]; TZInterbase6Statement.?f4C:?
 00529249    mov        ebx,dword ptr [eax]
 0052924B    call       dword ptr [ebx+90]
 00529251    mov        edx,dword ptr [ebp-4]
 00529254    mov        eax,esi
 00529256    call       00528A44
 0052925B    lea        eax,[ebp-34]
 0052925E    push       eax
 0052925F    mov        eax,dword ptr [ebp-4]
 00529262    push       eax
 00529263    lea        eax,[ebp-14]
 00529266    push       eax
 00529267    mov        eax,dword ptr [ebp-0C]
 0052926A    push       eax
 0052926B    mov        eax,dword ptr [ebp-10]
 0052926E    push       eax
 0052926F    push       0
 00529271    mov        al,byte ptr [esi+48]; TZInterbase6Statement.?f48:byte
 00529274    push       eax
 00529275    mov        ecx,esi
 00529277    test       ecx,ecx
>00529279    je         0052927E
 0052927B    sub        ecx,0FFFFFFBC
 0052927E    mov        dl,1
 00529280    mov        eax,[005275F0]; TZInterbase6ResultSet
 00529285    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 0052928A    mov        ecx,eax
 0052928C    test       ecx,ecx
>0052928E    je         00529293
 00529290    sub        ecx,0FFFFFFC8
 00529293    mov        edx,esi
 00529295    test       edx,edx
>00529297    je         0052929C
 00529299    sub        edx,0FFFFFFBC
 0052929C    mov        eax,dword ptr [ebp-4]
 0052929F    call       00532320
 005292A4    mov        edx,dword ptr [ebp-34]
 005292A7    mov        eax,esi
 005292A9    mov        ecx,dword ptr [eax]
 005292AB    call       dword ptr [ecx]; TZInterbase6Statement.sub_004DFE2C
>005292AD    jmp        005292D0
 005292AF    xor        edx,edx
 005292B1    mov        eax,esi
 005292B3    mov        ecx,dword ptr [eax]
 005292B5    call       dword ptr [ecx]; TZInterbase6Statement.sub_004DFE2C
 005292B7    lea        edx,[ebp-38]
 005292BA    mov        eax,dword ptr [ebp-18]
 005292BD    mov        ecx,dword ptr [eax]
 005292BF    call       dword ptr [ecx+0A0]
 005292C5    mov        eax,dword ptr [ebp-38]
 005292C8    mov        edx,dword ptr [ebp-14]
 005292CB    call       00533438
 005292D0    mov        eax,dword ptr [esi+38]; TZInterbase6Statement.?f38:IZConnection
 005292D3    mov        edx,dword ptr [eax]
 005292D5    call       dword ptr [edx+34]
 005292D8    test       al,al
>005292DA    je         005292E4
 005292DC    mov        eax,dword ptr [esi+38]; TZInterbase6Statement.?f38:IZConnection
 005292DF    mov        edx,dword ptr [eax]
 005292E1    call       dword ptr [edx+38]
 005292E4    mov        eax,dword ptr [ebp-4]
 005292E7    push       eax
 005292E8    lea        edx,[ebp-40]
 005292EB    mov        eax,dword ptr [ebp-18]
 005292EE    mov        ecx,dword ptr [eax]
 005292F0    call       dword ptr [ecx+0A0]
 005292F6    mov        eax,dword ptr [ebp-40]
 005292F9    lea        edx,[ebp-3C]
 005292FC    mov        ecx,dword ptr [eax]
 005292FE    call       dword ptr [ecx+0C]
 00529301    mov        ecx,dword ptr [ebp-3C]
 00529304    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00529309    mov        eax,dword ptr [eax]
 0052930B    mov        dl,3
 0052930D    mov        ebx,dword ptr [eax]
 0052930F    call       dword ptr [ebx+3C]
 00529312    xor        eax,eax
 00529314    pop        edx
 00529315    pop        ecx
 00529316    pop        ecx
 00529317    mov        dword ptr fs:[eax],edx
>0052931A    jmp        00529350
<0052931C    jmp        @HandleOnException
 00529321    dd        1
 00529325    dd        4087B0;Exception
 00529329    dd        52932D
 0052932D    lea        edx,[ebp-44]
 00529330    mov        eax,dword ptr [ebp-18]
 00529333    mov        ecx,dword ptr [eax]
 00529335    call       dword ptr [ecx+0A0]
 0052933B    mov        eax,dword ptr [ebp-44]
 0052933E    mov        edx,dword ptr [ebp-14]
 00529341    call       00533438
 00529346    call       @RaiseAgain
 0052934B    call       @DoneExcept
 00529350    xor        eax,eax
 00529352    pop        edx
 00529353    pop        ecx
 00529354    pop        ecx
 00529355    mov        dword ptr fs:[eax],edx
 00529358    push       5293BB
 0052935D    lea        eax,[ebp-44]
 00529360    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529366    mov        ecx,2
 0052936B    call       @FinalizeArray
 00529370    lea        eax,[ebp-3C]
 00529373    call       @LStrClr
 00529378    lea        eax,[ebp-38]
 0052937B    call       @IntfClear
 00529380    lea        eax,[ebp-34]
 00529383    call       @IntfClear
 00529388    lea        eax,[ebp-30]
 0052938B    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529391    mov        ecx,6
 00529396    call       @FinalizeArray
 0052939B    lea        eax,[ebp-18]
 0052939E    call       @IntfClear
 005293A3    lea        eax,[ebp-10]
 005293A6    call       @IntfClear
 005293AB    lea        eax,[ebp-0C]
 005293AE    call       @LStrClr
 005293B3    ret
<005293B4    jmp        @HandleFinally
<005293B9    jmp        0052935D
 005293BB    mov        al,byte ptr [ebp-5]
 005293BE    pop        edi
 005293BF    pop        esi
 005293C0    pop        ebx
 005293C1    mov        esp,ebp
 005293C3    pop        ebp
 005293C4    ret
*}
//end;

//005293C8
//procedure sub_005293C8(?:TZInterbase6PreparedStatement; ?:String);
//begin
{*
 005293C8    push       ebp
 005293C9    mov        ebp,esp
 005293CB    push       0
 005293CD    push       ebx
 005293CE    push       esi
 005293CF    mov        esi,edx
 005293D1    mov        ebx,eax
 005293D3    xor        eax,eax
 005293D5    push       ebp
 005293D6    push       529416
 005293DB    push       dword ptr fs:[eax]
 005293DE    mov        dword ptr fs:[eax],esp
 005293E1    push       esi
 005293E2    lea        edx,[ebp-4]
 005293E5    mov        eax,dword ptr [ebx+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 005293EB    mov        ecx,dword ptr [eax]
 005293ED    call       dword ptr [ecx+0A0]
 005293F3    mov        eax,dword ptr [ebp-4]
 005293F6    mov        cl,3
 005293F8    lea        edx,[ebx+68]; TZInterbase6PreparedStatement.?f68:?
 005293FB    call       00532ED0
 00529400    xor        eax,eax
 00529402    pop        edx
 00529403    pop        ecx
 00529404    pop        ecx
 00529405    mov        dword ptr fs:[eax],edx
 00529408    push       52941D
 0052940D    lea        eax,[ebp-4]
 00529410    call       @IntfClear
 00529415    ret
<00529416    jmp        @HandleFinally
<0052941B    jmp        0052940D
 0052941D    pop        esi
 0052941E    pop        ebx
 0052941F    pop        ecx
 00529420    pop        ebp
 00529421    ret
*}
//end;

//00529424
//constructor TZInterbase6PreparedStatement.Create(?:TZInterbase6PreparedStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00529424    push       ebp
 00529425    mov        ebp,esp
 00529427    push       0
 00529429    push       0
 0052942B    push       0
 0052942D    push       0
 0052942F    push       ebx
 00529430    push       esi
 00529431    test       dl,dl
>00529433    je         0052943D
 00529435    add        esp,0FFFFFFF0
 00529438    call       @ClassCreate
 0052943D    mov        dword ptr [ebp-4],ecx
 00529440    mov        ebx,edx
 00529442    mov        esi,eax
 00529444    mov        eax,dword ptr [ebp-4]
 00529447    call       @IntfAddRef
 0052944C    xor        eax,eax
 0052944E    push       ebp
 0052944F    push       52952E
 00529454    push       dword ptr fs:[eax]
 00529457    mov        dword ptr fs:[eax],esp
 0052945A    mov        eax,dword ptr [ebp+0C]
 0052945D    push       eax
 0052945E    mov        eax,dword ptr [ebp+8]
 00529461    push       eax
 00529462    mov        ecx,dword ptr [ebp-4]
 00529465    xor        edx,edx
 00529467    mov        eax,esi
 00529469    call       004E0088
 0052946E    lea        eax,[esi+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 00529474    mov        edx,dword ptr [ebp-4]
 00529477    mov        ecx,529554; ['{E870E4FE-21EB-4725-B5D8-38B8A2B12D0B}']
 0052947C    call       @IntfCast
 00529481    mov        byte ptr [esi+2D],1; TZInterbase6PreparedStatement.?f2D:byte
 00529485    lea        eax,[ebp-0C]
 00529488    push       eax
 00529489    mov        eax,esi
 0052948B    test       eax,eax
>0052948D    je         00529492
 0052948F    sub        eax,0FFFFFFBC
 00529492    mov        ecx,52956C; 'true'
 00529497    mov        edx,52957C; 'cashedblob'
 0052949C    call       004D30D4
 005294A1    mov        eax,dword ptr [ebp-0C]
 005294A4    call       004BEFC0
 005294A9    mov        byte ptr [esi+60],al; TZInterbase6PreparedStatement.?f60:byte
 005294AC    lea        eax,[ebp-8]
 005294AF    mov        edx,dword ptr [esi+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 005294B5    call       @IntfCopy
 005294BA    mov        eax,dword ptr [ebp-8]
 005294BD    mov        edx,dword ptr [eax]
 005294BF    call       dword ptr [edx+94]
 005294C5    push       eax
 005294C6    mov        eax,dword ptr [ebp-8]
 005294C9    mov        edx,dword ptr [eax]
 005294CB    call       dword ptr [edx+98]
 005294D1    push       eax
 005294D2    lea        edx,[ebp-10]
 005294D5    mov        eax,dword ptr [ebp-8]
 005294D8    mov        ecx,dword ptr [eax]
 005294DA    call       dword ptr [ecx+0A0]
 005294E0    mov        ecx,dword ptr [ebp-10]
 005294E3    mov        dl,1
 005294E5    mov        eax,[005315B0]; TZParamsSQLDA
 005294EA    call       TZParamsSQLDA.Create; TZParamsSQLDA.Create
 005294EF    mov        edx,eax
 005294F1    test       edx,edx
>005294F3    je         005294F8
 005294F5    sub        edx,0FFFFFFE0
 005294F8    lea        eax,[esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 005294FB    call       @IntfCopy
 00529500    xor        eax,eax
 00529502    pop        edx
 00529503    pop        ecx
 00529504    pop        ecx
 00529505    mov        dword ptr fs:[eax],edx
 00529508    push       529535
 0052950D    lea        eax,[ebp-10]
 00529510    call       @IntfClear
 00529515    lea        eax,[ebp-0C]
 00529518    call       @LStrClr
 0052951D    lea        eax,[ebp-8]
 00529520    call       @IntfClear
 00529525    lea        eax,[ebp-4]
 00529528    call       @IntfClear
 0052952D    ret
<0052952E    jmp        @HandleFinally
<00529533    jmp        0052950D
 00529535    mov        eax,esi
 00529537    test       bl,bl
>00529539    je         0052954A
 0052953B    call       @AfterConstruction
 00529540    pop        dword ptr fs:[0]
 00529547    add        esp,0C
 0052954A    mov        eax,esi
 0052954C    pop        esi
 0052954D    pop        ebx
 0052954E    mov        esp,ebp
 00529550    pop        ebp
 00529551    ret        8
*}
//end;

//00529588
//procedure sub_00529588(?:?);
//begin
{*
 00529588    push       ebp
 00529589    mov        ebp,esp
 0052958B    push       ebx
 0052958C    push       esi
 0052958D    mov        esi,edx
 0052958F    mov        ebx,eax
 00529591    lea        eax,[ebx+48]; TZInterbase6PreparedStatement.?f48:String
 00529594    mov        edx,esi
 00529596    call       @LStrAsg
 0052959B    mov        eax,ebx
 0052959D    mov        edx,dword ptr [eax]
 0052959F    call       dword ptr [edx+88]; TZInterbase6PreparedStatement.sub_005295AC
 005295A5    pop        esi
 005295A6    pop        ebx
 005295A7    pop        ebp
 005295A8    ret
*}
//end;

//005295AC
//function sub_005295AC:?;
//begin
{*
 005295AC    push       ebp
 005295AD    mov        ebp,esp
 005295AF    mov        ecx,8
 005295B4    push       0
 005295B6    push       0
 005295B8    dec        ecx
<005295B9    jne        005295B4
 005295BB    push       ebx
 005295BC    push       esi
 005295BD    push       edi
 005295BE    mov        esi,eax
 005295C0    xor        eax,eax
 005295C2    push       ebp
 005295C3    push       5298FE
 005295C8    push       dword ptr fs:[eax]
 005295CB    mov        dword ptr fs:[eax],esp
 005295CE    xor        eax,eax
 005295D0    mov        dword ptr [ebp-10],eax
 005295D3    lea        eax,[ebp-14]
 005295D6    mov        edx,dword ptr [esi+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 005295DC    call       @IntfCopy
 005295E1    xor        edx,edx
 005295E3    push       ebp
 005295E4    push       529866
 005295E9    push       dword ptr fs:[edx]
 005295EC    mov        dword ptr fs:[edx],esp
 005295EF    mov        eax,dword ptr [ebp-14]
 005295F2    mov        edx,dword ptr [eax]
 005295F4    call       dword ptr [edx+9C]
 005295FA    push       eax
 005295FB    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 005295FE    push       eax
 005295FF    lea        eax,[ebp-10]
 00529602    push       eax
 00529603    lea        edx,[ebp-18]
 00529606    mov        eax,dword ptr [ebp-14]
 00529609    mov        ecx,dword ptr [eax]
 0052960B    call       dword ptr [ecx+0A0]
 00529611    mov        eax,dword ptr [ebp-18]
 00529614    push       eax
 00529615    mov        eax,dword ptr [ebp-14]
 00529618    mov        edx,dword ptr [eax]
 0052961A    call       dword ptr [edx+98]
 00529620    push       eax
 00529621    mov        eax,dword ptr [ebp-14]
 00529624    mov        edx,dword ptr [eax]
 00529626    call       dword ptr [edx+94]
 0052962C    mov        edx,eax
 0052962E    pop        ecx
 0052962F    pop        eax
 00529630    call       00533184
 00529635    mov        ebx,eax
 00529637    mov        eax,ebx
 00529639    sub        al,1
>0052963B    je         00529645
 0052963D    sub        al,7
>0052963F    jne        005296C9
 00529645    mov        eax,dword ptr [ebp-14]
 00529648    mov        edx,dword ptr [eax]
 0052964A    call       dword ptr [edx+94]
 00529650    push       eax
 00529651    mov        eax,dword ptr [ebp-14]
 00529654    mov        edx,dword ptr [eax]
 00529656    call       dword ptr [edx+98]
 0052965C    push       eax
 0052965D    lea        edx,[ebp-1C]
 00529660    mov        eax,dword ptr [ebp-14]
 00529663    mov        ecx,dword ptr [eax]
 00529665    call       dword ptr [ecx+0A0]
 0052966B    mov        ecx,dword ptr [ebp-1C]
 0052966E    mov        dl,1
 00529670    mov        eax,[00531854]; TZResultSQLDA
 00529675    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 0052967A    mov        edx,eax
 0052967C    test       edx,edx
>0052967E    je         00529683
 00529680    sub        edx,0FFFFFFDC
 00529683    lea        eax,[ebp-0C]
 00529686    call       @IntfCopy
 0052968B    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 0052968E    push       eax
 0052968F    lea        eax,[ebp-10]
 00529692    push       eax
 00529693    mov        eax,dword ptr [ebp-0C]
 00529696    push       eax
 00529697    lea        edx,[ebp-20]
 0052969A    mov        eax,dword ptr [ebp-14]
 0052969D    mov        ecx,dword ptr [eax]
 0052969F    call       dword ptr [ecx+0A0]
 005296A5    mov        eax,dword ptr [ebp-20]
 005296A8    push       eax
 005296A9    mov        eax,dword ptr [ebp-14]
 005296AC    mov        edx,dword ptr [eax]
 005296AE    call       dword ptr [edx+9C]
 005296B4    push       eax
 005296B5    mov        eax,dword ptr [ebp-14]
 005296B8    mov        edx,dword ptr [eax]
 005296BA    call       dword ptr [edx+94]
 005296C0    mov        edx,eax
 005296C2    pop        ecx
 005296C3    pop        eax
 005296C4    call       0053328C
 005296C9    mov        eax,dword ptr [esi+50]; TZInterbase6PreparedStatement.?f50:TZSQLTypeArray
 005296CC    push       eax
 005296CD    mov        eax,dword ptr [esi+58]; TZInterbase6PreparedStatement.?f58:dword
 005296D0    push       eax
 005296D1    mov        eax,dword ptr [ebp-14]
 005296D4    mov        edx,dword ptr [eax]
 005296D6    call       dword ptr [edx+9C]
 005296DC    push       eax
 005296DD    lea        eax,[ebp-10]
 005296E0    push       eax
 005296E1    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 005296E4    push       eax
 005296E5    lea        edx,[ebp-24]
 005296E8    mov        eax,dword ptr [ebp-14]
 005296EB    mov        ecx,dword ptr [eax]
 005296ED    call       dword ptr [ecx+0A0]
 005296F3    mov        eax,dword ptr [ebp-24]
 005296F6    mov        ecx,dword ptr [esi+4C]; TZInterbase6PreparedStatement.?f4C:TZVariantDynArray
 005296F9    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 005296FC    call       005335A4
 00529701    lea        eax,[ebp-10]
 00529704    push       eax
 00529705    mov        eax,dword ptr [ebp-14]
 00529708    mov        edx,dword ptr [eax]
 0052970A    call       dword ptr [edx+9C]
 00529710    push       eax
 00529711    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 00529714    mov        edx,dword ptr [eax]
 00529716    call       dword ptr [edx+18]
 00529719    push       eax
 0052971A    push       0
 0052971C    lea        edx,[ebp-28]
 0052971F    mov        eax,dword ptr [ebp-14]
 00529722    mov        ecx,dword ptr [eax]
 00529724    call       dword ptr [ecx+0A0]
 0052972A    mov        eax,dword ptr [ebp-28]
 0052972D    push       eax
 0052972E    mov        eax,dword ptr [ebp-14]
 00529731    mov        edx,dword ptr [eax]
 00529733    call       dword ptr [edx+98]
 00529739    mov        ecx,eax
 0052973B    lea        edx,[esi+68]; TZInterbase6PreparedStatement.?f68:?
 0052973E    pop        eax
 0052973F    mov        edi,dword ptr [eax]
 00529741    call       dword ptr [edi+7C]
 00529744    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529747    mov        eax,esi
 00529749    call       005293C8
 0052974E    lea        edx,[ebp-2C]
 00529751    mov        eax,dword ptr [ebp-14]
 00529754    mov        ecx,dword ptr [eax]
 00529756    call       dword ptr [ecx+0A0]
 0052975C    mov        eax,dword ptr [ebp-2C]
 0052975F    mov        ecx,ebx
 00529761    mov        edx,dword ptr [ebp-10]
 00529764    call       005334A8
 00529769    mov        dword ptr [esi+1C],eax; TZInterbase6PreparedStatement.?f1C:Integer
 0052976C    mov        eax,ebx
 0052976E    add        al,0FE
 00529770    sub        al,3
>00529772    jb         00529778
 00529774    sub        al,7
>00529776    jne        0052977E
 00529778    mov        byte ptr [ebp-1],0
>0052977C    jmp        00529782
 0052977E    mov        byte ptr [ebp-1],1
 00529782    sub        bl,1
>00529785    je         0052978C
 00529787    sub        bl,7
>0052978A    jne        005297F9
 0052978C    mov        eax,dword ptr [ebp-0C]
 0052978F    mov        edx,dword ptr [eax]
 00529791    call       dword ptr [edx+24]
 00529794    test       eax,eax
>00529796    je         005297F9
 00529798    lea        edx,[ebp-8]
 0052979B    mov        eax,0C
 005297A0    call       00532284
 005297A5    lea        eax,[ebp-30]
 005297A8    push       eax
 005297A9    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 005297AC    push       eax
 005297AD    lea        eax,[ebp-10]
 005297B0    push       eax
 005297B1    mov        eax,dword ptr [ebp-8]
 005297B4    push       eax
 005297B5    mov        eax,dword ptr [ebp-0C]
 005297B8    push       eax
 005297B9    push       0
 005297BB    mov        al,byte ptr [esi+60]; TZInterbase6PreparedStatement.?f60:byte
 005297BE    push       eax
 005297BF    mov        ecx,esi
 005297C1    test       ecx,ecx
>005297C3    je         005297C8
 005297C5    sub        ecx,0FFFFFFBC
 005297C8    mov        dl,1
 005297CA    mov        eax,[005275F0]; TZInterbase6ResultSet
 005297CF    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 005297D4    mov        ecx,eax
 005297D6    test       ecx,ecx
>005297D8    je         005297DD
 005297DA    sub        ecx,0FFFFFFC8
 005297DD    mov        edx,esi
 005297DF    test       edx,edx
>005297E1    je         005297E6
 005297E3    sub        edx,0FFFFFFBC
 005297E6    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 005297E9    call       00532320
 005297EE    mov        edx,dword ptr [ebp-30]
 005297F1    mov        eax,esi
 005297F3    mov        ecx,dword ptr [eax]
 005297F5    call       dword ptr [ecx]; TZInterbase6PreparedStatement.sub_004DFE2C
>005297F7    jmp        0052981A
 005297F9    xor        edx,edx
 005297FB    mov        eax,esi
 005297FD    mov        ecx,dword ptr [eax]
 005297FF    call       dword ptr [ecx]; TZInterbase6PreparedStatement.sub_004DFE2C
 00529801    lea        edx,[ebp-34]
 00529804    mov        eax,dword ptr [ebp-14]
 00529807    mov        ecx,dword ptr [eax]
 00529809    call       dword ptr [ecx+0A0]
 0052980F    mov        eax,dword ptr [ebp-34]
 00529812    mov        edx,dword ptr [ebp-10]
 00529815    call       00533438
 0052981A    mov        eax,dword ptr [esi+38]; TZInterbase6PreparedStatement.?f38:IZConnection
 0052981D    mov        edx,dword ptr [eax]
 0052981F    call       dword ptr [edx+34]
 00529822    test       al,al
>00529824    je         0052982E
 00529826    mov        eax,dword ptr [esi+38]; TZInterbase6PreparedStatement.?f38:IZConnection
 00529829    mov        edx,dword ptr [eax]
 0052982B    call       dword ptr [edx+38]
 0052982E    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529831    push       eax
 00529832    lea        edx,[ebp-3C]
 00529835    mov        eax,dword ptr [ebp-14]
 00529838    mov        ecx,dword ptr [eax]
 0052983A    call       dword ptr [ecx+0A0]
 00529840    mov        eax,dword ptr [ebp-3C]
 00529843    lea        edx,[ebp-38]
 00529846    mov        ecx,dword ptr [eax]
 00529848    call       dword ptr [ecx+0C]
 0052984B    mov        ecx,dword ptr [ebp-38]
 0052984E    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00529853    mov        eax,dword ptr [eax]
 00529855    mov        dl,3
 00529857    mov        ebx,dword ptr [eax]
 00529859    call       dword ptr [ebx+3C]
 0052985C    xor        eax,eax
 0052985E    pop        edx
 0052985F    pop        ecx
 00529860    pop        ecx
 00529861    mov        dword ptr fs:[eax],edx
>00529864    jmp        0052989A
<00529866    jmp        @HandleOnException
 0052986B    dd        1
 0052986F    dd        4087B0;Exception
 00529873    dd        529877
 00529877    lea        edx,[ebp-40]
 0052987A    mov        eax,dword ptr [ebp-14]
 0052987D    mov        ecx,dword ptr [eax]
 0052987F    call       dword ptr [ecx+0A0]
 00529885    mov        eax,dword ptr [ebp-40]
 00529888    mov        edx,dword ptr [ebp-10]
 0052988B    call       00533438
 00529890    call       @RaiseAgain
 00529895    call       @DoneExcept
 0052989A    xor        eax,eax
 0052989C    pop        edx
 0052989D    pop        ecx
 0052989E    pop        ecx
 0052989F    mov        dword ptr fs:[eax],edx
 005298A2    push       529905
 005298A7    lea        eax,[ebp-40]
 005298AA    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 005298B0    mov        ecx,2
 005298B5    call       @FinalizeArray
 005298BA    lea        eax,[ebp-38]
 005298BD    call       @LStrClr
 005298C2    lea        eax,[ebp-34]
 005298C5    call       @IntfClear
 005298CA    lea        eax,[ebp-30]
 005298CD    call       @IntfClear
 005298D2    lea        eax,[ebp-2C]
 005298D5    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 005298DB    mov        ecx,6
 005298E0    call       @FinalizeArray
 005298E5    lea        eax,[ebp-14]
 005298E8    call       @IntfClear
 005298ED    lea        eax,[ebp-0C]
 005298F0    call       @IntfClear
 005298F5    lea        eax,[ebp-8]
 005298F8    call       @LStrClr
 005298FD    ret
<005298FE    jmp        @HandleFinally
<00529903    jmp        005298A7
 00529905    mov        al,byte ptr [ebp-1]
 00529908    pop        edi
 00529909    pop        esi
 0052990A    pop        ebx
 0052990B    mov        esp,ebp
 0052990D    pop        ebp
 0052990E    ret
*}
//end;

//00529910
//procedure sub_00529910(?:?; ?:?);
//begin
{*
 00529910    push       ebp
 00529911    mov        ebp,esp
 00529913    push       ebx
 00529914    push       esi
 00529915    push       edi
 00529916    mov        edi,ecx
 00529918    mov        esi,edx
 0052991A    mov        ebx,eax
 0052991C    lea        eax,[ebx+48]; TZInterbase6PreparedStatement.?f48:String
 0052991F    mov        edx,esi
 00529921    call       @LStrAsg
 00529926    mov        edx,edi
 00529928    mov        eax,ebx
 0052992A    mov        ecx,dword ptr [eax]
 0052992C    call       dword ptr [ecx+80]; TZInterbase6PreparedStatement.sub_00529938
 00529932    pop        edi
 00529933    pop        esi
 00529934    pop        ebx
 00529935    pop        ebp
 00529936    ret
*}
//end;

//00529938
//procedure sub_00529938(?:?);
//begin
{*
 00529938    push       ebp
 00529939    mov        ebp,esp
 0052993B    mov        ecx,7
 00529940    push       0
 00529942    push       0
 00529944    dec        ecx
<00529945    jne        00529940
 00529947    push       ecx
 00529948    push       ebx
 00529949    push       esi
 0052994A    push       edi
 0052994B    mov        dword ptr [ebp-4],edx
 0052994E    mov        esi,eax
 00529950    xor        eax,eax
 00529952    push       ebp
 00529953    push       529C64
 00529958    push       dword ptr fs:[eax]
 0052995B    mov        dword ptr fs:[eax],esp
 0052995E    xor        eax,eax
 00529960    mov        dword ptr [ebp-10],eax
 00529963    lea        eax,[ebp-14]
 00529966    mov        edx,dword ptr [esi+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 0052996C    call       @IntfCopy
 00529971    mov        eax,dword ptr [ebp-14]
 00529974    mov        edx,dword ptr [eax]
 00529976    call       dword ptr [edx+94]
 0052997C    push       eax
 0052997D    mov        eax,dword ptr [ebp-14]
 00529980    mov        edx,dword ptr [eax]
 00529982    call       dword ptr [edx+98]
 00529988    push       eax
 00529989    lea        edx,[ebp-18]
 0052998C    mov        eax,dword ptr [ebp-14]
 0052998F    mov        ecx,dword ptr [eax]
 00529991    call       dword ptr [ecx+0A0]
 00529997    mov        ecx,dword ptr [ebp-18]
 0052999A    mov        dl,1
 0052999C    mov        eax,[00531854]; TZResultSQLDA
 005299A1    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 005299A6    mov        edx,eax
 005299A8    test       edx,edx
>005299AA    je         005299AF
 005299AC    sub        edx,0FFFFFFDC
 005299AF    lea        eax,[ebp-0C]
 005299B2    call       @IntfCopy
 005299B7    xor        edx,edx
 005299B9    push       ebp
 005299BA    push       529BD7
 005299BF    push       dword ptr fs:[edx]
 005299C2    mov        dword ptr fs:[edx],esp
 005299C5    mov        eax,dword ptr [ebp-14]
 005299C8    mov        edx,dword ptr [eax]
 005299CA    call       dword ptr [edx+9C]
 005299D0    push       eax
 005299D1    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 005299D4    push       eax
 005299D5    lea        eax,[ebp-10]
 005299D8    push       eax
 005299D9    lea        edx,[ebp-1C]
 005299DC    mov        eax,dword ptr [ebp-14]
 005299DF    mov        ecx,dword ptr [eax]
 005299E1    call       dword ptr [ecx+0A0]
 005299E7    mov        eax,dword ptr [ebp-1C]
 005299EA    push       eax
 005299EB    mov        eax,dword ptr [ebp-14]
 005299EE    mov        edx,dword ptr [eax]
 005299F0    call       dword ptr [edx+98]
 005299F6    push       eax
 005299F7    mov        eax,dword ptr [ebp-14]
 005299FA    mov        edx,dword ptr [eax]
 005299FC    call       dword ptr [edx+94]
 00529A02    mov        edx,eax
 00529A04    pop        ecx
 00529A05    pop        eax
 00529A06    call       00533184
 00529A0B    mov        ebx,eax
 00529A0D    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529A10    push       eax
 00529A11    lea        eax,[ebp-10]
 00529A14    push       eax
 00529A15    mov        eax,dword ptr [ebp-0C]
 00529A18    push       eax
 00529A19    lea        edx,[ebp-20]
 00529A1C    mov        eax,dword ptr [ebp-14]
 00529A1F    mov        ecx,dword ptr [eax]
 00529A21    call       dword ptr [ecx+0A0]
 00529A27    mov        eax,dword ptr [ebp-20]
 00529A2A    push       eax
 00529A2B    mov        eax,dword ptr [ebp-14]
 00529A2E    mov        edx,dword ptr [eax]
 00529A30    call       dword ptr [edx+9C]
 00529A36    push       eax
 00529A37    mov        eax,dword ptr [ebp-14]
 00529A3A    mov        edx,dword ptr [eax]
 00529A3C    call       dword ptr [edx+94]
 00529A42    mov        edx,eax
 00529A44    pop        ecx
 00529A45    pop        eax
 00529A46    call       0053328C
 00529A4B    mov        eax,dword ptr [esi+50]; TZInterbase6PreparedStatement.?f50:TZSQLTypeArray
 00529A4E    push       eax
 00529A4F    mov        eax,dword ptr [esi+58]; TZInterbase6PreparedStatement.?f58:dword
 00529A52    push       eax
 00529A53    mov        eax,dword ptr [ebp-14]
 00529A56    mov        edx,dword ptr [eax]
 00529A58    call       dword ptr [edx+9C]
 00529A5E    push       eax
 00529A5F    lea        eax,[ebp-10]
 00529A62    push       eax
 00529A63    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 00529A66    push       eax
 00529A67    lea        edx,[ebp-24]
 00529A6A    mov        eax,dword ptr [ebp-14]
 00529A6D    mov        ecx,dword ptr [eax]
 00529A6F    call       dword ptr [ecx+0A0]
 00529A75    mov        eax,dword ptr [ebp-24]
 00529A78    mov        ecx,dword ptr [esi+4C]; TZInterbase6PreparedStatement.?f4C:TZVariantDynArray
 00529A7B    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529A7E    call       005335A4
 00529A83    lea        eax,[ebp-10]
 00529A86    push       eax
 00529A87    mov        eax,dword ptr [ebp-14]
 00529A8A    mov        edx,dword ptr [eax]
 00529A8C    call       dword ptr [edx+9C]
 00529A92    push       eax
 00529A93    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 00529A96    mov        edx,dword ptr [eax]
 00529A98    call       dword ptr [edx+18]
 00529A9B    push       eax
 00529A9C    push       0
 00529A9E    lea        edx,[ebp-28]
 00529AA1    mov        eax,dword ptr [ebp-14]
 00529AA4    mov        ecx,dword ptr [eax]
 00529AA6    call       dword ptr [ecx+0A0]
 00529AAC    mov        eax,dword ptr [ebp-28]
 00529AAF    push       eax
 00529AB0    mov        eax,dword ptr [ebp-14]
 00529AB3    mov        edx,dword ptr [eax]
 00529AB5    call       dword ptr [edx+98]
 00529ABB    mov        ecx,eax
 00529ABD    lea        edx,[esi+68]; TZInterbase6PreparedStatement.?f68:?
 00529AC0    pop        eax
 00529AC1    mov        edi,dword ptr [eax]
 00529AC3    call       dword ptr [edi+7C]
 00529AC6    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529AC9    mov        eax,esi
 00529ACB    call       005293C8
 00529AD0    sub        bl,1
>00529AD3    je         00529ADE
 00529AD5    sub        bl,7
>00529AD8    jne        00529B7E
 00529ADE    mov        eax,dword ptr [ebp-0C]
 00529AE1    mov        edx,dword ptr [eax]
 00529AE3    call       dword ptr [edx+24]
 00529AE6    test       eax,eax
>00529AE8    je         00529B7E
 00529AEE    cmp        dword ptr [esi+30],0; TZInterbase6PreparedStatement.?f30:String
>00529AF2    je         00529B33
 00529AF4    lea        eax,[ebp-8]
 00529AF7    mov        edx,dword ptr [esi+30]; TZInterbase6PreparedStatement.?f30:String
 00529AFA    call       @LStrLAsg
 00529AFF    mov        eax,dword ptr [ebp-8]
 00529B02    call       @LStrToPChar
 00529B07    push       eax
 00529B08    push       0
 00529B0A    lea        edx,[ebp-2C]
 00529B0D    mov        eax,dword ptr [ebp-14]
 00529B10    mov        ecx,dword ptr [eax]
 00529B12    call       dword ptr [ecx+0A0]
 00529B18    mov        eax,dword ptr [ebp-2C]
 00529B1B    lea        ecx,[ebp-10]
 00529B1E    lea        edx,[esi+68]; TZInterbase6PreparedStatement.?f68:?
 00529B21    mov        ebx,dword ptr [eax]
 00529B23    call       dword ptr [ebx+90]
 00529B29    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529B2C    mov        eax,esi
 00529B2E    call       005293C8
 00529B33    mov        eax,dword ptr [ebp-4]
 00529B36    push       eax
 00529B37    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529B3A    push       eax
 00529B3B    lea        eax,[ebp-10]
 00529B3E    push       eax
 00529B3F    mov        eax,dword ptr [ebp-8]
 00529B42    push       eax
 00529B43    mov        eax,dword ptr [ebp-0C]
 00529B46    push       eax
 00529B47    push       0
 00529B49    mov        al,byte ptr [esi+60]; TZInterbase6PreparedStatement.?f60:byte
 00529B4C    push       eax
 00529B4D    mov        ecx,esi
 00529B4F    test       ecx,ecx
>00529B51    je         00529B56
 00529B53    sub        ecx,0FFFFFFBC
 00529B56    mov        dl,1
 00529B58    mov        eax,[005275F0]; TZInterbase6ResultSet
 00529B5D    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 00529B62    mov        ecx,eax
 00529B64    test       ecx,ecx
>00529B66    je         00529B6B
 00529B68    sub        ecx,0FFFFFFC8
 00529B6B    mov        edx,esi
 00529B6D    test       edx,edx
>00529B6F    je         00529B74
 00529B71    sub        edx,0FFFFFFBC
 00529B74    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529B77    call       00532320
>00529B7C    jmp        00529B9F
 00529B7E    lea        edx,[ebp-30]
 00529B81    mov        eax,[0061B544]; ^#122.sResString28:TResStringRec
 00529B86    call       LoadResString
 00529B8B    mov        ecx,dword ptr [ebp-30]
 00529B8E    mov        dl,1
 00529B90    mov        eax,[004C6D20]; EZSQLException
 00529B95    call       EZSQLException.Create; EZSQLException.Create
 00529B9A    call       @RaiseExcept
 00529B9F    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529BA2    push       eax
 00529BA3    lea        edx,[ebp-38]
 00529BA6    mov        eax,dword ptr [ebp-14]
 00529BA9    mov        ecx,dword ptr [eax]
 00529BAB    call       dword ptr [ecx+0A0]
 00529BB1    mov        eax,dword ptr [ebp-38]
 00529BB4    lea        edx,[ebp-34]
 00529BB7    mov        ecx,dword ptr [eax]
 00529BB9    call       dword ptr [ecx+0C]
 00529BBC    mov        ecx,dword ptr [ebp-34]
 00529BBF    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00529BC4    mov        eax,dword ptr [eax]
 00529BC6    mov        dl,3
 00529BC8    mov        ebx,dword ptr [eax]
 00529BCA    call       dword ptr [ebx+3C]
 00529BCD    xor        eax,eax
 00529BCF    pop        edx
 00529BD0    pop        ecx
 00529BD1    pop        ecx
 00529BD2    mov        dword ptr fs:[eax],edx
>00529BD5    jmp        00529C0B
<00529BD7    jmp        @HandleOnException
 00529BDC    dd        1
 00529BE0    dd        4087B0;Exception
 00529BE4    dd        529BE8
 00529BE8    lea        edx,[ebp-3C]
 00529BEB    mov        eax,dword ptr [ebp-14]
 00529BEE    mov        ecx,dword ptr [eax]
 00529BF0    call       dword ptr [ecx+0A0]
 00529BF6    mov        eax,dword ptr [ebp-3C]
 00529BF9    mov        edx,dword ptr [ebp-10]
 00529BFC    call       00533438
 00529C01    call       @RaiseAgain
 00529C06    call       @DoneExcept
 00529C0B    xor        eax,eax
 00529C0D    pop        edx
 00529C0E    pop        ecx
 00529C0F    pop        ecx
 00529C10    mov        dword ptr fs:[eax],edx
 00529C13    push       529C6B
 00529C18    lea        eax,[ebp-3C]
 00529C1B    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529C21    mov        ecx,2
 00529C26    call       @FinalizeArray
 00529C2B    lea        eax,[ebp-34]
 00529C2E    mov        edx,2
 00529C33    call       @LStrArrayClr
 00529C38    lea        eax,[ebp-2C]
 00529C3B    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529C41    mov        ecx,6
 00529C46    call       @FinalizeArray
 00529C4B    lea        eax,[ebp-14]
 00529C4E    call       @IntfClear
 00529C53    lea        eax,[ebp-0C]
 00529C56    call       @IntfClear
 00529C5B    lea        eax,[ebp-8]
 00529C5E    call       @LStrClr
 00529C63    ret
<00529C64    jmp        @HandleFinally
<00529C69    jmp        00529C18
 00529C6B    pop        edi
 00529C6C    pop        esi
 00529C6D    pop        ebx
 00529C6E    mov        esp,ebp
 00529C70    pop        ebp
 00529C71    ret
*}
//end;

//00529C74
//procedure sub_00529C74(?:?);
//begin
{*
 00529C74    push       ebp
 00529C75    mov        ebp,esp
 00529C77    push       ebx
 00529C78    push       esi
 00529C79    mov        esi,edx
 00529C7B    mov        ebx,eax
 00529C7D    lea        eax,[ebx+48]; TZInterbase6PreparedStatement.?f48:String
 00529C80    mov        edx,esi
 00529C82    call       @LStrAsg
 00529C87    mov        eax,ebx
 00529C89    mov        edx,dword ptr [eax]
 00529C8B    call       dword ptr [edx+84]; TZInterbase6PreparedStatement.sub_00529C98
 00529C91    pop        esi
 00529C92    pop        ebx
 00529C93    pop        ebp
 00529C94    ret
*}
//end;

//00529C98
//function sub_00529C98:?;
//begin
{*
 00529C98    push       ebp
 00529C99    mov        ebp,esp
 00529C9B    mov        ecx,5
 00529CA0    push       0
 00529CA2    push       0
 00529CA4    dec        ecx
<00529CA5    jne        00529CA0
 00529CA7    push       ebx
 00529CA8    push       esi
 00529CA9    push       edi
 00529CAA    mov        esi,eax
 00529CAC    xor        eax,eax
 00529CAE    push       ebp
 00529CAF    push       529E92
 00529CB4    push       dword ptr fs:[eax]
 00529CB7    mov        dword ptr fs:[eax],esp
 00529CBA    xor        eax,eax
 00529CBC    mov        dword ptr [ebp-8],eax
 00529CBF    lea        eax,[ebp-0C]
 00529CC2    mov        edx,dword ptr [esi+0BC]; TZInterbase6PreparedStatement.?fBC:IZInterbase6Connection
 00529CC8    call       @IntfCopy
 00529CCD    xor        eax,eax
 00529CCF    push       ebp
 00529CD0    push       529E47
 00529CD5    push       dword ptr fs:[eax]
 00529CD8    mov        dword ptr fs:[eax],esp
 00529CDB    mov        eax,dword ptr [ebp-0C]
 00529CDE    mov        edx,dword ptr [eax]
 00529CE0    call       dword ptr [edx+9C]
 00529CE6    push       eax
 00529CE7    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529CEA    push       eax
 00529CEB    lea        eax,[ebp-8]
 00529CEE    push       eax
 00529CEF    lea        edx,[ebp-10]
 00529CF2    mov        eax,dword ptr [ebp-0C]
 00529CF5    mov        ecx,dword ptr [eax]
 00529CF7    call       dword ptr [ecx+0A0]
 00529CFD    mov        eax,dword ptr [ebp-10]
 00529D00    push       eax
 00529D01    mov        eax,dword ptr [ebp-0C]
 00529D04    mov        edx,dword ptr [eax]
 00529D06    call       dword ptr [edx+98]
 00529D0C    push       eax
 00529D0D    mov        eax,dword ptr [ebp-0C]
 00529D10    mov        edx,dword ptr [eax]
 00529D12    call       dword ptr [edx+94]
 00529D18    mov        edx,eax
 00529D1A    pop        ecx
 00529D1B    pop        eax
 00529D1C    call       00533184
 00529D21    mov        ebx,eax
 00529D23    mov        eax,dword ptr [esi+50]; TZInterbase6PreparedStatement.?f50:TZSQLTypeArray
 00529D26    push       eax
 00529D27    mov        eax,dword ptr [esi+58]; TZInterbase6PreparedStatement.?f58:dword
 00529D2A    push       eax
 00529D2B    mov        eax,dword ptr [ebp-0C]
 00529D2E    mov        edx,dword ptr [eax]
 00529D30    call       dword ptr [edx+9C]
 00529D36    push       eax
 00529D37    lea        eax,[ebp-8]
 00529D3A    push       eax
 00529D3B    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 00529D3E    push       eax
 00529D3F    lea        edx,[ebp-14]
 00529D42    mov        eax,dword ptr [ebp-0C]
 00529D45    mov        ecx,dword ptr [eax]
 00529D47    call       dword ptr [ecx+0A0]
 00529D4D    mov        eax,dword ptr [ebp-14]
 00529D50    mov        ecx,dword ptr [esi+4C]; TZInterbase6PreparedStatement.?f4C:TZVariantDynArray
 00529D53    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529D56    call       005335A4
 00529D5B    lea        eax,[ebp-8]
 00529D5E    push       eax
 00529D5F    mov        eax,dword ptr [ebp-0C]
 00529D62    mov        edx,dword ptr [eax]
 00529D64    call       dword ptr [edx+9C]
 00529D6A    push       eax
 00529D6B    mov        eax,dword ptr [esi+64]; TZInterbase6PreparedStatement.?f64:IZParamsSQLDA
 00529D6E    mov        edx,dword ptr [eax]
 00529D70    call       dword ptr [edx+18]
 00529D73    push       eax
 00529D74    lea        edx,[ebp-18]
 00529D77    mov        eax,dword ptr [ebp-0C]
 00529D7A    mov        ecx,dword ptr [eax]
 00529D7C    call       dword ptr [ecx+0A0]
 00529D82    mov        eax,dword ptr [ebp-18]
 00529D85    push       eax
 00529D86    mov        eax,dword ptr [ebp-0C]
 00529D89    mov        edx,dword ptr [eax]
 00529D8B    call       dword ptr [edx+98]
 00529D91    mov        ecx,eax
 00529D93    lea        edx,[esi+68]; TZInterbase6PreparedStatement.?f68:?
 00529D96    pop        eax
 00529D97    mov        edi,dword ptr [eax]
 00529D99    call       dword ptr [edi+78]
 00529D9C    mov        edx,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529D9F    mov        eax,esi
 00529DA1    call       005293C8
 00529DA6    lea        edx,[ebp-1C]
 00529DA9    mov        eax,dword ptr [ebp-0C]
 00529DAC    mov        ecx,dword ptr [eax]
 00529DAE    call       dword ptr [ecx+0A0]
 00529DB4    mov        eax,dword ptr [ebp-1C]
 00529DB7    mov        ecx,ebx
 00529DB9    mov        edx,dword ptr [ebp-8]
 00529DBC    call       005334A8
 00529DC1    mov        dword ptr [ebp-4],eax
 00529DC4    mov        eax,dword ptr [ebp-4]
 00529DC7    mov        dword ptr [esi+1C],eax; TZInterbase6PreparedStatement.?f1C:Integer
 00529DCA    sub        bl,1
>00529DCD    jb         00529DD7
 00529DCF    add        bl,0F7
 00529DD2    sub        bl,2
>00529DD5    jae        00529DDE
 00529DD7    mov        dword ptr [ebp-4],0FFFFFFFF
 00529DDE    mov        eax,dword ptr [esi+38]; TZInterbase6PreparedStatement.?f38:IZConnection
 00529DE1    mov        edx,dword ptr [eax]
 00529DE3    call       dword ptr [edx+34]
 00529DE6    test       al,al
>00529DE8    je         00529DF2
 00529DEA    mov        eax,dword ptr [esi+38]; TZInterbase6PreparedStatement.?f38:IZConnection
 00529DED    mov        edx,dword ptr [eax]
 00529DEF    call       dword ptr [edx+38]
 00529DF2    mov        eax,dword ptr [esi+48]; TZInterbase6PreparedStatement.?f48:String
 00529DF5    push       eax
 00529DF6    lea        edx,[ebp-24]
 00529DF9    mov        eax,dword ptr [ebp-0C]
 00529DFC    mov        ecx,dword ptr [eax]
 00529DFE    call       dword ptr [ecx+0A0]
 00529E04    mov        eax,dword ptr [ebp-24]
 00529E07    lea        edx,[ebp-20]
 00529E0A    mov        ecx,dword ptr [eax]
 00529E0C    call       dword ptr [ecx+0C]
 00529E0F    mov        ecx,dword ptr [ebp-20]
 00529E12    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 00529E17    mov        eax,dword ptr [eax]
 00529E19    mov        dl,3
 00529E1B    mov        ebx,dword ptr [eax]
 00529E1D    call       dword ptr [ebx+3C]
 00529E20    xor        eax,eax
 00529E22    pop        edx
 00529E23    pop        ecx
 00529E24    pop        ecx
 00529E25    mov        dword ptr fs:[eax],edx
 00529E28    push       529E4E
 00529E2D    lea        edx,[ebp-28]
 00529E30    mov        eax,dword ptr [ebp-0C]
 00529E33    mov        ecx,dword ptr [eax]
 00529E35    call       dword ptr [ecx+0A0]
 00529E3B    mov        eax,dword ptr [ebp-28]
 00529E3E    mov        edx,dword ptr [ebp-8]
 00529E41    call       00533438
 00529E46    ret
<00529E47    jmp        @HandleFinally
<00529E4C    jmp        00529E2D
 00529E4E    xor        eax,eax
 00529E50    pop        edx
 00529E51    pop        ecx
 00529E52    pop        ecx
 00529E53    mov        dword ptr fs:[eax],edx
 00529E56    push       529E99
 00529E5B    lea        eax,[ebp-28]
 00529E5E    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529E64    mov        ecx,2
 00529E69    call       @FinalizeArray
 00529E6E    lea        eax,[ebp-20]
 00529E71    call       @LStrClr
 00529E76    lea        eax,[ebp-1C]
 00529E79    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 00529E7F    mov        ecx,4
 00529E84    call       @FinalizeArray
 00529E89    lea        eax,[ebp-0C]
 00529E8C    call       @IntfClear
 00529E91    ret
<00529E92    jmp        @HandleFinally
<00529E97    jmp        00529E5B
 00529E99    mov        eax,dword ptr [ebp-4]
 00529E9C    pop        edi
 00529E9D    pop        esi
 00529E9E    pop        ebx
 00529E9F    mov        esp,ebp
 00529EA1    pop        ebp
 00529EA2    ret
*}
//end;

//00529EA4
//procedure sub_00529EA4(?:TZInterbase6CallableStatement; ?:AnsiString);
//begin
{*
 00529EA4    push       ebp
 00529EA5    mov        ebp,esp
 00529EA7    push       0
 00529EA9    push       ebx
 00529EAA    push       esi
 00529EAB    mov        esi,edx
 00529EAD    mov        ebx,eax
 00529EAF    xor        eax,eax
 00529EB1    push       ebp
 00529EB2    push       529EF5
 00529EB7    push       dword ptr fs:[eax]
 00529EBA    mov        dword ptr fs:[eax],esp
 00529EBD    push       esi
 00529EBE    lea        edx,[ebp-4]
 00529EC1    mov        eax,dword ptr [ebx+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 00529EC7    mov        ecx,dword ptr [eax]
 00529EC9    call       dword ptr [ecx+0A0]
 00529ECF    mov        eax,dword ptr [ebp-4]
 00529ED2    mov        cl,3
 00529ED4    lea        edx,[ebx+80]; TZInterbase6CallableStatement.?f80:?
 00529EDA    call       00532ED0
 00529EDF    xor        eax,eax
 00529EE1    pop        edx
 00529EE2    pop        ecx
 00529EE3    pop        ecx
 00529EE4    mov        dword ptr fs:[eax],edx
 00529EE7    push       529EFC
 00529EEC    lea        eax,[ebp-4]
 00529EEF    call       @IntfClear
 00529EF4    ret
<00529EF5    jmp        @HandleFinally
<00529EFA    jmp        00529EEC
 00529EFC    pop        esi
 00529EFD    pop        ebx
 00529EFE    pop        ecx
 00529EFF    pop        ebp
 00529F00    ret
*}
//end;

//00529F04
//constructor TZInterbase6CallableStatement.Create(?:TZInterbase6CallableStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 00529F04    push       ebp
 00529F05    mov        ebp,esp
 00529F07    push       0
 00529F09    push       0
 00529F0B    push       0
 00529F0D    push       0
 00529F0F    push       ebx
 00529F10    push       esi
 00529F11    test       dl,dl
>00529F13    je         00529F1D
 00529F15    add        esp,0FFFFFFF0
 00529F18    call       @ClassCreate
 00529F1D    mov        dword ptr [ebp-4],ecx
 00529F20    mov        ebx,edx
 00529F22    mov        esi,eax
 00529F24    mov        eax,dword ptr [ebp-4]
 00529F27    call       @IntfAddRef
 00529F2C    xor        eax,eax
 00529F2E    push       ebp
 00529F2F    push       52A00E
 00529F34    push       dword ptr fs:[eax]
 00529F37    mov        dword ptr fs:[eax],esp
 00529F3A    mov        eax,dword ptr [ebp+0C]
 00529F3D    push       eax
 00529F3E    mov        eax,dword ptr [ebp+8]
 00529F41    push       eax
 00529F42    mov        ecx,dword ptr [ebp-4]
 00529F45    xor        edx,edx
 00529F47    mov        eax,esi
 00529F49    call       004E0C98
 00529F4E    lea        eax,[esi+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 00529F54    mov        edx,dword ptr [ebp-4]
 00529F57    mov        ecx,52A034; ['{E870E4FE-21EB-4725-B5D8-38B8A2B12D0B}']
 00529F5C    call       @IntfCast
 00529F61    mov        byte ptr [esi+2D],1; TZInterbase6CallableStatement.?f2D:byte
 00529F65    lea        eax,[ebp-0C]
 00529F68    push       eax
 00529F69    mov        eax,esi
 00529F6B    test       eax,eax
>00529F6D    je         00529F72
 00529F6F    sub        eax,0FFFFFFBC
 00529F72    mov        ecx,52A04C; 'true'
 00529F77    mov        edx,52A05C; 'cashedblob'
 00529F7C    call       004D30D4
 00529F81    mov        eax,dword ptr [ebp-0C]
 00529F84    call       004BEFC0
 00529F89    mov        byte ptr [esi+78],al; TZInterbase6CallableStatement.?f78:byte
 00529F8C    lea        eax,[ebp-8]
 00529F8F    mov        edx,dword ptr [esi+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 00529F95    call       @IntfCopy
 00529F9A    mov        eax,dword ptr [ebp-8]
 00529F9D    mov        edx,dword ptr [eax]
 00529F9F    call       dword ptr [edx+94]
 00529FA5    push       eax
 00529FA6    mov        eax,dword ptr [ebp-8]
 00529FA9    mov        edx,dword ptr [eax]
 00529FAB    call       dword ptr [edx+98]
 00529FB1    push       eax
 00529FB2    lea        edx,[ebp-10]
 00529FB5    mov        eax,dword ptr [ebp-8]
 00529FB8    mov        ecx,dword ptr [eax]
 00529FBA    call       dword ptr [ecx+0A0]
 00529FC0    mov        ecx,dword ptr [ebp-10]
 00529FC3    mov        dl,1
 00529FC5    mov        eax,[005315B0]; TZParamsSQLDA
 00529FCA    call       TZParamsSQLDA.Create; TZParamsSQLDA.Create
 00529FCF    mov        edx,eax
 00529FD1    test       edx,edx
>00529FD3    je         00529FD8
 00529FD5    sub        edx,0FFFFFFE0
 00529FD8    lea        eax,[esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 00529FDB    call       @IntfCopy
 00529FE0    xor        eax,eax
 00529FE2    pop        edx
 00529FE3    pop        ecx
 00529FE4    pop        ecx
 00529FE5    mov        dword ptr fs:[eax],edx
 00529FE8    push       52A015
 00529FED    lea        eax,[ebp-10]
 00529FF0    call       @IntfClear
 00529FF5    lea        eax,[ebp-0C]
 00529FF8    call       @LStrClr
 00529FFD    lea        eax,[ebp-8]
 0052A000    call       @IntfClear
 0052A005    lea        eax,[ebp-4]
 0052A008    call       @IntfClear
 0052A00D    ret
<0052A00E    jmp        @HandleFinally
<0052A013    jmp        00529FED
 0052A015    mov        eax,esi
 0052A017    test       bl,bl
>0052A019    je         0052A02A
 0052A01B    call       @AfterConstruction
 0052A020    pop        dword ptr fs:[0]
 0052A027    add        esp,0C
 0052A02A    mov        eax,esi
 0052A02C    pop        esi
 0052A02D    pop        ebx
 0052A02E    mov        esp,ebp
 0052A030    pop        ebp
 0052A031    ret        8
*}
//end;

//0052A068
//procedure sub_0052A068(?:?);
//begin
{*
 0052A068    push       ebp
 0052A069    mov        ebp,esp
 0052A06B    push       ebx
 0052A06C    push       esi
 0052A06D    mov        esi,edx
 0052A06F    mov        ebx,eax
 0052A071    lea        eax,[ebx+48]; TZInterbase6CallableStatement.?f48:String
 0052A074    mov        edx,esi
 0052A076    call       @LStrAsg
 0052A07B    mov        eax,ebx
 0052A07D    mov        edx,dword ptr [eax]
 0052A07F    call       dword ptr [edx+88]; TZInterbase6CallableStatement.sub_0052A08C
 0052A085    pop        esi
 0052A086    pop        ebx
 0052A087    pop        ebp
 0052A088    ret
*}
//end;

//0052A08C
//function sub_0052A08C:?;
//begin
{*
 0052A08C    push       ebp
 0052A08D    mov        ebp,esp
 0052A08F    mov        ecx,8
 0052A094    push       0
 0052A096    push       0
 0052A098    dec        ecx
<0052A099    jne        0052A094
 0052A09B    push       ecx
 0052A09C    push       ebx
 0052A09D    push       esi
 0052A09E    push       edi
 0052A09F    mov        esi,eax
 0052A0A1    xor        eax,eax
 0052A0A3    push       ebp
 0052A0A4    push       52A3FD
 0052A0A9    push       dword ptr fs:[eax]
 0052A0AC    mov        dword ptr fs:[eax],esp
 0052A0AF    xor        eax,eax
 0052A0B1    mov        dword ptr [ebp-14],eax
 0052A0B4    lea        eax,[ebp-18]
 0052A0B7    mov        edx,dword ptr [esi+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 0052A0BD    call       @IntfCopy
 0052A0C2    mov        eax,esi
 0052A0C4    call       0052AEDC
 0052A0C9    lea        ecx,[ebp-0C]
 0052A0CC    xor        edx,edx
 0052A0CE    mov        eax,esi
 0052A0D0    call       0052ADE0
 0052A0D5    mov        eax,dword ptr [ebp-18]
 0052A0D8    mov        edx,dword ptr [eax]
 0052A0DA    call       dword ptr [edx+94]
 0052A0E0    push       eax
 0052A0E1    mov        eax,dword ptr [ebp-18]
 0052A0E4    mov        edx,dword ptr [eax]
 0052A0E6    call       dword ptr [edx+98]
 0052A0EC    push       eax
 0052A0ED    lea        edx,[ebp-1C]
 0052A0F0    mov        eax,dword ptr [ebp-18]
 0052A0F3    mov        ecx,dword ptr [eax]
 0052A0F5    call       dword ptr [ecx+0A0]
 0052A0FB    mov        ecx,dword ptr [ebp-1C]
 0052A0FE    mov        dl,1
 0052A100    mov        eax,[00531854]; TZResultSQLDA
 0052A105    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 0052A10A    mov        edx,eax
 0052A10C    test       edx,edx
>0052A10E    je         0052A113
 0052A110    sub        edx,0FFFFFFDC
 0052A113    lea        eax,[ebp-10]
 0052A116    call       @IntfCopy
 0052A11B    xor        edx,edx
 0052A11D    push       ebp
 0052A11E    push       52A360
 0052A123    push       dword ptr fs:[edx]
 0052A126    mov        dword ptr fs:[edx],esp
 0052A129    mov        eax,dword ptr [ebp-18]
 0052A12C    mov        edx,dword ptr [eax]
 0052A12E    call       dword ptr [edx+9C]
 0052A134    push       eax
 0052A135    mov        eax,dword ptr [ebp-0C]
 0052A138    push       eax
 0052A139    lea        eax,[ebp-14]
 0052A13C    push       eax
 0052A13D    lea        edx,[ebp-20]
 0052A140    mov        eax,dword ptr [ebp-18]
 0052A143    mov        ecx,dword ptr [eax]
 0052A145    call       dword ptr [ecx+0A0]
 0052A14B    mov        eax,dword ptr [ebp-20]
 0052A14E    push       eax
 0052A14F    mov        eax,dword ptr [ebp-18]
 0052A152    mov        edx,dword ptr [eax]
 0052A154    call       dword ptr [edx+98]
 0052A15A    push       eax
 0052A15B    mov        eax,dword ptr [ebp-18]
 0052A15E    mov        edx,dword ptr [eax]
 0052A160    call       dword ptr [edx+94]
 0052A166    mov        edx,eax
 0052A168    pop        ecx
 0052A169    pop        eax
 0052A16A    call       00533184
 0052A16F    mov        ebx,eax
 0052A171    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A174    push       eax
 0052A175    lea        eax,[ebp-14]
 0052A178    push       eax
 0052A179    mov        eax,dword ptr [ebp-10]
 0052A17C    push       eax
 0052A17D    lea        edx,[ebp-24]
 0052A180    mov        eax,dword ptr [ebp-18]
 0052A183    mov        ecx,dword ptr [eax]
 0052A185    call       dword ptr [ecx+0A0]
 0052A18B    mov        eax,dword ptr [ebp-24]
 0052A18E    push       eax
 0052A18F    mov        eax,dword ptr [ebp-18]
 0052A192    mov        edx,dword ptr [eax]
 0052A194    call       dword ptr [edx+9C]
 0052A19A    push       eax
 0052A19B    mov        eax,dword ptr [ebp-18]
 0052A19E    mov        edx,dword ptr [eax]
 0052A1A0    call       dword ptr [edx+94]
 0052A1A6    mov        edx,eax
 0052A1A8    pop        ecx
 0052A1A9    pop        eax
 0052A1AA    call       0053328C
 0052A1AF    mov        eax,dword ptr [esi+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052A1B2    push       eax
 0052A1B3    mov        eax,dword ptr [esi+58]; TZInterbase6CallableStatement.?f58:dword
 0052A1B6    push       eax
 0052A1B7    mov        eax,dword ptr [ebp-18]
 0052A1BA    mov        edx,dword ptr [eax]
 0052A1BC    call       dword ptr [edx+9C]
 0052A1C2    push       eax
 0052A1C3    lea        eax,[ebp-14]
 0052A1C6    push       eax
 0052A1C7    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A1CA    push       eax
 0052A1CB    lea        edx,[ebp-28]
 0052A1CE    mov        eax,dword ptr [ebp-18]
 0052A1D1    mov        ecx,dword ptr [eax]
 0052A1D3    call       dword ptr [ecx+0A0]
 0052A1D9    mov        eax,dword ptr [ebp-28]
 0052A1DC    mov        ecx,dword ptr [esi+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052A1DF    mov        edx,dword ptr [ebp-0C]
 0052A1E2    call       005335A4
 0052A1E7    lea        eax,[ebp-14]
 0052A1EA    push       eax
 0052A1EB    mov        eax,dword ptr [ebp-18]
 0052A1EE    mov        edx,dword ptr [eax]
 0052A1F0    call       dword ptr [edx+9C]
 0052A1F6    push       eax
 0052A1F7    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A1FA    mov        edx,dword ptr [eax]
 0052A1FC    call       dword ptr [edx+18]
 0052A1FF    push       eax
 0052A200    mov        eax,dword ptr [ebp-10]
 0052A203    mov        edx,dword ptr [eax]
 0052A205    call       dword ptr [edx+18]
 0052A208    push       eax
 0052A209    lea        edx,[ebp-2C]
 0052A20C    mov        eax,dword ptr [ebp-18]
 0052A20F    mov        ecx,dword ptr [eax]
 0052A211    call       dword ptr [ecx+0A0]
 0052A217    mov        eax,dword ptr [ebp-2C]
 0052A21A    push       eax
 0052A21B    mov        eax,dword ptr [ebp-18]
 0052A21E    mov        edx,dword ptr [eax]
 0052A220    call       dword ptr [edx+98]
 0052A226    mov        ecx,eax
 0052A228    lea        edx,[esi+80]; TZInterbase6CallableStatement.?f80:?
 0052A22E    pop        eax
 0052A22F    mov        edi,dword ptr [eax]
 0052A231    call       dword ptr [edi+7C]
 0052A234    mov        edx,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A237    mov        eax,esi
 0052A239    call       00529EA4
 0052A23E    lea        edx,[ebp-30]
 0052A241    mov        eax,dword ptr [ebp-18]
 0052A244    mov        ecx,dword ptr [eax]
 0052A246    call       dword ptr [ecx+0A0]
 0052A24C    mov        eax,dword ptr [ebp-30]
 0052A24F    mov        ecx,ebx
 0052A251    mov        edx,dword ptr [ebp-14]
 0052A254    call       005334A8
 0052A259    mov        dword ptr [esi+1C],eax; TZInterbase6CallableStatement.?f1C:Integer
 0052A25C    mov        eax,ebx
 0052A25E    add        al,0FE
 0052A260    sub        al,3
>0052A262    jb         0052A268
 0052A264    sub        al,7
>0052A266    jne        0052A26E
 0052A268    mov        byte ptr [ebp-1],0
>0052A26C    jmp        0052A272
 0052A26E    mov        byte ptr [ebp-1],1
 0052A272    sub        bl,1
>0052A275    je         0052A27C
 0052A277    sub        bl,7
>0052A27A    jne        0052A2E9
 0052A27C    mov        eax,dword ptr [ebp-10]
 0052A27F    mov        edx,dword ptr [eax]
 0052A281    call       dword ptr [edx+24]
 0052A284    test       eax,eax
>0052A286    je         0052A2E9
 0052A288    lea        edx,[ebp-8]
 0052A28B    mov        eax,0C
 0052A290    call       00532284
 0052A295    lea        eax,[ebp-34]
 0052A298    push       eax
 0052A299    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A29C    push       eax
 0052A29D    lea        eax,[ebp-14]
 0052A2A0    push       eax
 0052A2A1    mov        eax,dword ptr [ebp-8]
 0052A2A4    push       eax
 0052A2A5    mov        eax,dword ptr [ebp-10]
 0052A2A8    push       eax
 0052A2A9    push       0
 0052A2AB    mov        al,byte ptr [esi+78]; TZInterbase6CallableStatement.?f78:byte
 0052A2AE    push       eax
 0052A2AF    mov        ecx,esi
 0052A2B1    test       ecx,ecx
>0052A2B3    je         0052A2B8
 0052A2B5    sub        ecx,0FFFFFFBC
 0052A2B8    mov        dl,1
 0052A2BA    mov        eax,[005275F0]; TZInterbase6ResultSet
 0052A2BF    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 0052A2C4    mov        ecx,eax
 0052A2C6    test       ecx,ecx
>0052A2C8    je         0052A2CD
 0052A2CA    sub        ecx,0FFFFFFC8
 0052A2CD    mov        edx,esi
 0052A2CF    test       edx,edx
>0052A2D1    je         0052A2D6
 0052A2D3    sub        edx,0FFFFFFBC
 0052A2D6    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A2D9    call       00532320
 0052A2DE    mov        edx,dword ptr [ebp-34]
 0052A2E1    mov        eax,esi
 0052A2E3    mov        ecx,dword ptr [eax]
 0052A2E5    call       dword ptr [ecx]; TZInterbase6CallableStatement.sub_004DFE2C
>0052A2E7    jmp        0052A314
 0052A2E9    mov        edx,dword ptr [ebp-10]
 0052A2EC    mov        eax,esi
 0052A2EE    call       0052AA40
 0052A2F3    lea        edx,[ebp-38]
 0052A2F6    mov        eax,dword ptr [ebp-18]
 0052A2F9    mov        ecx,dword ptr [eax]
 0052A2FB    call       dword ptr [ecx+0A0]
 0052A301    mov        eax,dword ptr [ebp-38]
 0052A304    mov        edx,dword ptr [ebp-14]
 0052A307    call       00533438
 0052A30C    xor        edx,edx
 0052A30E    mov        eax,esi
 0052A310    mov        ecx,dword ptr [eax]
 0052A312    call       dword ptr [ecx]; TZInterbase6CallableStatement.sub_004DFE2C
 0052A314    mov        eax,dword ptr [esi+38]; TZInterbase6CallableStatement.?f38:IZConnection
 0052A317    mov        edx,dword ptr [eax]
 0052A319    call       dword ptr [edx+34]
 0052A31C    test       al,al
>0052A31E    je         0052A328
 0052A320    mov        eax,dword ptr [esi+38]; TZInterbase6CallableStatement.?f38:IZConnection
 0052A323    mov        edx,dword ptr [eax]
 0052A325    call       dword ptr [edx+38]
 0052A328    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A32B    push       eax
 0052A32C    lea        edx,[ebp-40]
 0052A32F    mov        eax,dword ptr [ebp-18]
 0052A332    mov        ecx,dword ptr [eax]
 0052A334    call       dword ptr [ecx+0A0]
 0052A33A    mov        eax,dword ptr [ebp-40]
 0052A33D    lea        edx,[ebp-3C]
 0052A340    mov        ecx,dword ptr [eax]
 0052A342    call       dword ptr [ecx+0C]
 0052A345    mov        ecx,dword ptr [ebp-3C]
 0052A348    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0052A34D    mov        eax,dword ptr [eax]
 0052A34F    mov        dl,3
 0052A351    mov        ebx,dword ptr [eax]
 0052A353    call       dword ptr [ebx+3C]
 0052A356    xor        eax,eax
 0052A358    pop        edx
 0052A359    pop        ecx
 0052A35A    pop        ecx
 0052A35B    mov        dword ptr fs:[eax],edx
>0052A35E    jmp        0052A394
<0052A360    jmp        @HandleOnException
 0052A365    dd        1
 0052A369    dd        4087B0;Exception
 0052A36D    dd        52A371
 0052A371    lea        edx,[ebp-44]
 0052A374    mov        eax,dword ptr [ebp-18]
 0052A377    mov        ecx,dword ptr [eax]
 0052A379    call       dword ptr [ecx+0A0]
 0052A37F    mov        eax,dword ptr [ebp-44]
 0052A382    mov        edx,dword ptr [ebp-14]
 0052A385    call       00533438
 0052A38A    call       @RaiseAgain
 0052A38F    call       @DoneExcept
 0052A394    xor        eax,eax
 0052A396    pop        edx
 0052A397    pop        ecx
 0052A398    pop        ecx
 0052A399    mov        dword ptr fs:[eax],edx
 0052A39C    push       52A404
 0052A3A1    lea        eax,[ebp-44]
 0052A3A4    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052A3AA    mov        ecx,2
 0052A3AF    call       @FinalizeArray
 0052A3B4    lea        eax,[ebp-3C]
 0052A3B7    call       @LStrClr
 0052A3BC    lea        eax,[ebp-38]
 0052A3BF    call       @IntfClear
 0052A3C4    lea        eax,[ebp-34]
 0052A3C7    call       @IntfClear
 0052A3CC    lea        eax,[ebp-30]
 0052A3CF    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052A3D5    mov        ecx,6
 0052A3DA    call       @FinalizeArray
 0052A3DF    lea        eax,[ebp-18]
 0052A3E2    call       @IntfClear
 0052A3E7    lea        eax,[ebp-10]
 0052A3EA    call       @IntfClear
 0052A3EF    lea        eax,[ebp-0C]
 0052A3F2    mov        edx,2
 0052A3F7    call       @LStrArrayClr
 0052A3FC    ret
<0052A3FD    jmp        @HandleFinally
<0052A402    jmp        0052A3A1
 0052A404    mov        al,byte ptr [ebp-1]
 0052A407    pop        edi
 0052A408    pop        esi
 0052A409    pop        ebx
 0052A40A    mov        esp,ebp
 0052A40C    pop        ebp
 0052A40D    ret
*}
//end;

//0052A410
//procedure sub_0052A410(?:?; ?:?);
//begin
{*
 0052A410    push       ebp
 0052A411    mov        ebp,esp
 0052A413    push       ebx
 0052A414    push       esi
 0052A415    push       edi
 0052A416    mov        edi,ecx
 0052A418    mov        esi,edx
 0052A41A    mov        ebx,eax
 0052A41C    lea        eax,[ebx+48]; TZInterbase6CallableStatement.?f48:String
 0052A41F    mov        edx,esi
 0052A421    call       @LStrAsg
 0052A426    mov        edx,edi
 0052A428    mov        eax,ebx
 0052A42A    mov        ecx,dword ptr [eax]
 0052A42C    call       dword ptr [ecx+80]; TZInterbase6CallableStatement.sub_0052A438
 0052A432    pop        edi
 0052A433    pop        esi
 0052A434    pop        ebx
 0052A435    pop        ebp
 0052A436    ret
*}
//end;

//0052A438
//procedure sub_0052A438(?:?);
//begin
{*
 0052A438    push       ebp
 0052A439    mov        ebp,esp
 0052A43B    mov        ecx,7
 0052A440    push       0
 0052A442    push       0
 0052A444    dec        ecx
<0052A445    jne        0052A440
 0052A447    push       ecx
 0052A448    push       ebx
 0052A449    push       esi
 0052A44A    push       edi
 0052A44B    mov        dword ptr [ebp-4],edx
 0052A44E    mov        esi,eax
 0052A450    xor        eax,eax
 0052A452    push       ebp
 0052A453    push       52A75A
 0052A458    push       dword ptr fs:[eax]
 0052A45B    mov        dword ptr fs:[eax],esp
 0052A45E    xor        eax,eax
 0052A460    mov        dword ptr [ebp-14],eax
 0052A463    lea        eax,[ebp-18]
 0052A466    mov        edx,dword ptr [esi+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 0052A46C    call       @IntfCopy
 0052A471    mov        eax,esi
 0052A473    call       0052AEDC
 0052A478    lea        ecx,[ebp-0C]
 0052A47B    mov        dl,1
 0052A47D    mov        eax,esi
 0052A47F    call       0052ADE0
 0052A484    mov        eax,dword ptr [ebp-18]
 0052A487    mov        edx,dword ptr [eax]
 0052A489    call       dword ptr [edx+94]
 0052A48F    push       eax
 0052A490    mov        eax,dword ptr [ebp-18]
 0052A493    mov        edx,dword ptr [eax]
 0052A495    call       dword ptr [edx+98]
 0052A49B    push       eax
 0052A49C    lea        edx,[ebp-1C]
 0052A49F    mov        eax,dword ptr [ebp-18]
 0052A4A2    mov        ecx,dword ptr [eax]
 0052A4A4    call       dword ptr [ecx+0A0]
 0052A4AA    mov        ecx,dword ptr [ebp-1C]
 0052A4AD    mov        dl,1
 0052A4AF    mov        eax,[00531854]; TZResultSQLDA
 0052A4B4    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 0052A4B9    mov        edx,eax
 0052A4BB    test       edx,edx
>0052A4BD    je         0052A4C2
 0052A4BF    sub        edx,0FFFFFFDC
 0052A4C2    lea        eax,[ebp-10]
 0052A4C5    call       @IntfCopy
 0052A4CA    xor        edx,edx
 0052A4CC    push       ebp
 0052A4CD    push       52A6CD
 0052A4D2    push       dword ptr fs:[edx]
 0052A4D5    mov        dword ptr fs:[edx],esp
 0052A4D8    mov        eax,dword ptr [ebp-18]
 0052A4DB    mov        edx,dword ptr [eax]
 0052A4DD    call       dword ptr [edx+9C]
 0052A4E3    push       eax
 0052A4E4    mov        eax,dword ptr [ebp-0C]
 0052A4E7    push       eax
 0052A4E8    lea        eax,[ebp-14]
 0052A4EB    push       eax
 0052A4EC    lea        edx,[ebp-20]
 0052A4EF    mov        eax,dword ptr [ebp-18]
 0052A4F2    mov        ecx,dword ptr [eax]
 0052A4F4    call       dword ptr [ecx+0A0]
 0052A4FA    mov        eax,dword ptr [ebp-20]
 0052A4FD    push       eax
 0052A4FE    mov        eax,dword ptr [ebp-18]
 0052A501    mov        edx,dword ptr [eax]
 0052A503    call       dword ptr [edx+98]
 0052A509    push       eax
 0052A50A    mov        eax,dword ptr [ebp-18]
 0052A50D    mov        edx,dword ptr [eax]
 0052A50F    call       dword ptr [edx+94]
 0052A515    mov        edx,eax
 0052A517    pop        ecx
 0052A518    pop        eax
 0052A519    call       00533184
 0052A51E    mov        ebx,eax
 0052A520    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A523    push       eax
 0052A524    lea        eax,[ebp-14]
 0052A527    push       eax
 0052A528    mov        eax,dword ptr [ebp-10]
 0052A52B    push       eax
 0052A52C    lea        edx,[ebp-24]
 0052A52F    mov        eax,dword ptr [ebp-18]
 0052A532    mov        ecx,dword ptr [eax]
 0052A534    call       dword ptr [ecx+0A0]
 0052A53A    mov        eax,dword ptr [ebp-24]
 0052A53D    push       eax
 0052A53E    mov        eax,dword ptr [ebp-18]
 0052A541    mov        edx,dword ptr [eax]
 0052A543    call       dword ptr [edx+9C]
 0052A549    push       eax
 0052A54A    mov        eax,dword ptr [ebp-18]
 0052A54D    mov        edx,dword ptr [eax]
 0052A54F    call       dword ptr [edx+94]
 0052A555    mov        edx,eax
 0052A557    pop        ecx
 0052A558    pop        eax
 0052A559    call       0053328C
 0052A55E    mov        eax,dword ptr [esi+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052A561    push       eax
 0052A562    mov        eax,dword ptr [esi+58]; TZInterbase6CallableStatement.?f58:dword
 0052A565    push       eax
 0052A566    mov        eax,dword ptr [ebp-18]
 0052A569    mov        edx,dword ptr [eax]
 0052A56B    call       dword ptr [edx+9C]
 0052A571    push       eax
 0052A572    lea        eax,[ebp-14]
 0052A575    push       eax
 0052A576    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A579    push       eax
 0052A57A    lea        edx,[ebp-28]
 0052A57D    mov        eax,dword ptr [ebp-18]
 0052A580    mov        ecx,dword ptr [eax]
 0052A582    call       dword ptr [ecx+0A0]
 0052A588    mov        eax,dword ptr [ebp-28]
 0052A58B    mov        ecx,dword ptr [esi+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052A58E    mov        edx,dword ptr [ebp-0C]
 0052A591    call       005335A4
 0052A596    lea        eax,[ebp-14]
 0052A599    push       eax
 0052A59A    mov        eax,dword ptr [ebp-18]
 0052A59D    mov        edx,dword ptr [eax]
 0052A59F    call       dword ptr [edx+9C]
 0052A5A5    push       eax
 0052A5A6    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A5A9    mov        edx,dword ptr [eax]
 0052A5AB    call       dword ptr [edx+18]
 0052A5AE    push       eax
 0052A5AF    push       0
 0052A5B1    lea        edx,[ebp-2C]
 0052A5B4    mov        eax,dword ptr [ebp-18]
 0052A5B7    mov        ecx,dword ptr [eax]
 0052A5B9    call       dword ptr [ecx+0A0]
 0052A5BF    mov        eax,dword ptr [ebp-2C]
 0052A5C2    push       eax
 0052A5C3    mov        eax,dword ptr [ebp-18]
 0052A5C6    mov        edx,dword ptr [eax]
 0052A5C8    call       dword ptr [edx+98]
 0052A5CE    mov        ecx,eax
 0052A5D0    lea        edx,[esi+80]; TZInterbase6CallableStatement.?f80:?
 0052A5D6    pop        eax
 0052A5D7    mov        edi,dword ptr [eax]
 0052A5D9    call       dword ptr [edi+7C]
 0052A5DC    mov        edx,dword ptr [ebp-0C]
 0052A5DF    mov        eax,esi
 0052A5E1    call       00529EA4
 0052A5E6    sub        bl,1
>0052A5E9    je         0052A5F4
 0052A5EB    sub        bl,7
>0052A5EE    jne        0052A695
 0052A5F4    mov        eax,dword ptr [ebp-10]
 0052A5F7    mov        edx,dword ptr [eax]
 0052A5F9    call       dword ptr [edx+24]
 0052A5FC    test       eax,eax
>0052A5FE    je         0052A695
 0052A604    cmp        dword ptr [esi+30],0; TZInterbase6CallableStatement.?f30:String
>0052A608    je         0052A64C
 0052A60A    lea        eax,[ebp-8]
 0052A60D    mov        edx,dword ptr [esi+30]; TZInterbase6CallableStatement.?f30:String
 0052A610    call       @LStrLAsg
 0052A615    mov        eax,dword ptr [ebp-8]
 0052A618    call       @LStrToPChar
 0052A61D    push       eax
 0052A61E    push       0
 0052A620    lea        edx,[ebp-30]
 0052A623    mov        eax,dword ptr [ebp-18]
 0052A626    mov        ecx,dword ptr [eax]
 0052A628    call       dword ptr [ecx+0A0]
 0052A62E    mov        eax,dword ptr [ebp-30]
 0052A631    lea        ecx,[ebp-14]
 0052A634    lea        edx,[esi+80]; TZInterbase6CallableStatement.?f80:?
 0052A63A    mov        ebx,dword ptr [eax]
 0052A63C    call       dword ptr [ebx+90]
 0052A642    mov        edx,dword ptr [ebp-0C]
 0052A645    mov        eax,esi
 0052A647    call       00529EA4
 0052A64C    mov        eax,dword ptr [ebp-4]
 0052A64F    push       eax
 0052A650    mov        eax,dword ptr [ebp-0C]
 0052A653    push       eax
 0052A654    lea        eax,[ebp-14]
 0052A657    push       eax
 0052A658    mov        eax,dword ptr [ebp-8]
 0052A65B    push       eax
 0052A65C    mov        eax,dword ptr [ebp-10]
 0052A65F    push       eax
 0052A660    push       0
 0052A662    mov        al,byte ptr [esi+78]; TZInterbase6CallableStatement.?f78:byte
 0052A665    push       eax
 0052A666    mov        ecx,esi
 0052A668    test       ecx,ecx
>0052A66A    je         0052A66F
 0052A66C    sub        ecx,0FFFFFFBC
 0052A66F    mov        dl,1
 0052A671    mov        eax,[005275F0]; TZInterbase6ResultSet
 0052A676    call       TZInterbase6ResultSet.Create; TZInterbase6ResultSet.Create
 0052A67B    mov        ecx,eax
 0052A67D    test       ecx,ecx
>0052A67F    je         0052A684
 0052A681    sub        ecx,0FFFFFFC8
 0052A684    mov        edx,esi
 0052A686    test       edx,edx
>0052A688    je         0052A68D
 0052A68A    sub        edx,0FFFFFFBC
 0052A68D    mov        eax,dword ptr [ebp-0C]
 0052A690    call       00532320
 0052A695    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A698    push       eax
 0052A699    lea        edx,[ebp-38]
 0052A69C    mov        eax,dword ptr [ebp-18]
 0052A69F    mov        ecx,dword ptr [eax]
 0052A6A1    call       dword ptr [ecx+0A0]
 0052A6A7    mov        eax,dword ptr [ebp-38]
 0052A6AA    lea        edx,[ebp-34]
 0052A6AD    mov        ecx,dword ptr [eax]
 0052A6AF    call       dword ptr [ecx+0C]
 0052A6B2    mov        ecx,dword ptr [ebp-34]
 0052A6B5    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0052A6BA    mov        eax,dword ptr [eax]
 0052A6BC    mov        dl,3
 0052A6BE    mov        ebx,dword ptr [eax]
 0052A6C0    call       dword ptr [ebx+3C]
 0052A6C3    xor        eax,eax
 0052A6C5    pop        edx
 0052A6C6    pop        ecx
 0052A6C7    pop        ecx
 0052A6C8    mov        dword ptr fs:[eax],edx
>0052A6CB    jmp        0052A701
<0052A6CD    jmp        @HandleOnException
 0052A6D2    dd        1
 0052A6D6    dd        4087B0;Exception
 0052A6DA    dd        52A6DE
 0052A6DE    lea        edx,[ebp-3C]
 0052A6E1    mov        eax,dword ptr [ebp-18]
 0052A6E4    mov        ecx,dword ptr [eax]
 0052A6E6    call       dword ptr [ecx+0A0]
 0052A6EC    mov        eax,dword ptr [ebp-3C]
 0052A6EF    mov        edx,dword ptr [ebp-14]
 0052A6F2    call       00533438
 0052A6F7    call       @RaiseAgain
 0052A6FC    call       @DoneExcept
 0052A701    xor        eax,eax
 0052A703    pop        edx
 0052A704    pop        ecx
 0052A705    pop        ecx
 0052A706    mov        dword ptr fs:[eax],edx
 0052A709    push       52A761
 0052A70E    lea        eax,[ebp-3C]
 0052A711    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052A717    mov        ecx,2
 0052A71C    call       @FinalizeArray
 0052A721    lea        eax,[ebp-34]
 0052A724    call       @LStrClr
 0052A729    lea        eax,[ebp-30]
 0052A72C    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052A732    mov        ecx,6
 0052A737    call       @FinalizeArray
 0052A73C    lea        eax,[ebp-18]
 0052A73F    call       @IntfClear
 0052A744    lea        eax,[ebp-10]
 0052A747    call       @IntfClear
 0052A74C    lea        eax,[ebp-0C]
 0052A74F    mov        edx,2
 0052A754    call       @LStrArrayClr
 0052A759    ret
<0052A75A    jmp        @HandleFinally
<0052A75F    jmp        0052A70E
 0052A761    pop        edi
 0052A762    pop        esi
 0052A763    pop        ebx
 0052A764    mov        esp,ebp
 0052A766    pop        ebp
 0052A767    ret
*}
//end;

//0052A768
//procedure sub_0052A768(?:?);
//begin
{*
 0052A768    push       ebp
 0052A769    mov        ebp,esp
 0052A76B    push       ebx
 0052A76C    push       esi
 0052A76D    mov        esi,edx
 0052A76F    mov        ebx,eax
 0052A771    lea        eax,[ebx+48]; TZInterbase6CallableStatement.?f48:String
 0052A774    mov        edx,esi
 0052A776    call       @LStrAsg
 0052A77B    mov        eax,ebx
 0052A77D    mov        edx,dword ptr [eax]
 0052A77F    call       dword ptr [edx+84]; TZInterbase6CallableStatement.sub_0052A78C
 0052A785    pop        esi
 0052A786    pop        ebx
 0052A787    pop        ebp
 0052A788    ret
*}
//end;

//0052A78C
//function sub_0052A78C:?;
//begin
{*
 0052A78C    push       ebp
 0052A78D    mov        ebp,esp
 0052A78F    mov        ecx,7
 0052A794    push       0
 0052A796    push       0
 0052A798    dec        ecx
<0052A799    jne        0052A794
 0052A79B    push       ebx
 0052A79C    push       esi
 0052A79D    push       edi
 0052A79E    mov        esi,eax
 0052A7A0    xor        eax,eax
 0052A7A2    push       ebp
 0052A7A3    push       52AA2F
 0052A7A8    push       dword ptr fs:[eax]
 0052A7AB    mov        dword ptr fs:[eax],esp
 0052A7AE    xor        eax,eax
 0052A7B0    mov        dword ptr [ebp-10],eax
 0052A7B3    lea        eax,[ebp-14]
 0052A7B6    mov        edx,dword ptr [esi+0D4]; TZInterbase6CallableStatement.?fD4:IZInterbase6Connection
 0052A7BC    call       @IntfCopy
 0052A7C1    mov        eax,esi
 0052A7C3    call       0052AEDC
 0052A7C8    lea        ecx,[ebp-8]
 0052A7CB    xor        edx,edx
 0052A7CD    mov        eax,esi
 0052A7CF    call       0052ADE0
 0052A7D4    mov        eax,dword ptr [ebp-14]
 0052A7D7    mov        edx,dword ptr [eax]
 0052A7D9    call       dword ptr [edx+94]
 0052A7DF    push       eax
 0052A7E0    mov        eax,dword ptr [ebp-14]
 0052A7E3    mov        edx,dword ptr [eax]
 0052A7E5    call       dword ptr [edx+98]
 0052A7EB    push       eax
 0052A7EC    lea        edx,[ebp-18]
 0052A7EF    mov        eax,dword ptr [ebp-14]
 0052A7F2    mov        ecx,dword ptr [eax]
 0052A7F4    call       dword ptr [ecx+0A0]
 0052A7FA    mov        ecx,dword ptr [ebp-18]
 0052A7FD    mov        dl,1
 0052A7FF    mov        eax,[00531854]; TZResultSQLDA
 0052A804    call       TZResultSQLDA.Create; TZResultSQLDA.Create
 0052A809    mov        edx,eax
 0052A80B    test       edx,edx
>0052A80D    je         0052A812
 0052A80F    sub        edx,0FFFFFFDC
 0052A812    lea        eax,[ebp-0C]
 0052A815    call       @IntfCopy
 0052A81A    xor        eax,eax
 0052A81C    push       ebp
 0052A81D    push       52A9D4
 0052A822    push       dword ptr fs:[eax]
 0052A825    mov        dword ptr fs:[eax],esp
 0052A828    mov        eax,dword ptr [ebp-14]
 0052A82B    mov        edx,dword ptr [eax]
 0052A82D    call       dword ptr [edx+9C]
 0052A833    push       eax
 0052A834    mov        eax,dword ptr [ebp-8]
 0052A837    push       eax
 0052A838    lea        eax,[ebp-10]
 0052A83B    push       eax
 0052A83C    lea        edx,[ebp-1C]
 0052A83F    mov        eax,dword ptr [ebp-14]
 0052A842    mov        ecx,dword ptr [eax]
 0052A844    call       dword ptr [ecx+0A0]
 0052A84A    mov        eax,dword ptr [ebp-1C]
 0052A84D    push       eax
 0052A84E    mov        eax,dword ptr [ebp-14]
 0052A851    mov        edx,dword ptr [eax]
 0052A853    call       dword ptr [edx+98]
 0052A859    push       eax
 0052A85A    mov        eax,dword ptr [ebp-14]
 0052A85D    mov        edx,dword ptr [eax]
 0052A85F    call       dword ptr [edx+94]
 0052A865    mov        edx,eax
 0052A867    pop        ecx
 0052A868    pop        eax
 0052A869    call       00533184
 0052A86E    mov        ebx,eax
 0052A870    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A873    push       eax
 0052A874    lea        eax,[ebp-10]
 0052A877    push       eax
 0052A878    mov        eax,dword ptr [ebp-0C]
 0052A87B    push       eax
 0052A87C    lea        edx,[ebp-20]
 0052A87F    mov        eax,dword ptr [ebp-14]
 0052A882    mov        ecx,dword ptr [eax]
 0052A884    call       dword ptr [ecx+0A0]
 0052A88A    mov        eax,dword ptr [ebp-20]
 0052A88D    push       eax
 0052A88E    mov        eax,dword ptr [ebp-14]
 0052A891    mov        edx,dword ptr [eax]
 0052A893    call       dword ptr [edx+9C]
 0052A899    push       eax
 0052A89A    mov        eax,dword ptr [ebp-14]
 0052A89D    mov        edx,dword ptr [eax]
 0052A89F    call       dword ptr [edx+94]
 0052A8A5    mov        edx,eax
 0052A8A7    pop        ecx
 0052A8A8    pop        eax
 0052A8A9    call       0053328C
 0052A8AE    mov        eax,dword ptr [esi+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052A8B1    push       eax
 0052A8B2    mov        eax,dword ptr [esi+58]; TZInterbase6CallableStatement.?f58:dword
 0052A8B5    push       eax
 0052A8B6    mov        eax,dword ptr [ebp-14]
 0052A8B9    mov        edx,dword ptr [eax]
 0052A8BB    call       dword ptr [edx+9C]
 0052A8C1    push       eax
 0052A8C2    lea        eax,[ebp-10]
 0052A8C5    push       eax
 0052A8C6    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A8C9    push       eax
 0052A8CA    lea        edx,[ebp-24]
 0052A8CD    mov        eax,dword ptr [ebp-14]
 0052A8D0    mov        ecx,dword ptr [eax]
 0052A8D2    call       dword ptr [ecx+0A0]
 0052A8D8    mov        eax,dword ptr [ebp-24]
 0052A8DB    mov        ecx,dword ptr [esi+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052A8DE    mov        edx,dword ptr [ebp-8]
 0052A8E1    call       005335A4
 0052A8E6    lea        eax,[ebp-10]
 0052A8E9    push       eax
 0052A8EA    mov        eax,dword ptr [ebp-14]
 0052A8ED    mov        edx,dword ptr [eax]
 0052A8EF    call       dword ptr [edx+9C]
 0052A8F5    push       eax
 0052A8F6    mov        eax,dword ptr [esi+7C]; TZInterbase6CallableStatement.?f7C:IZParamsSQLDA
 0052A8F9    mov        edx,dword ptr [eax]
 0052A8FB    call       dword ptr [edx+18]
 0052A8FE    push       eax
 0052A8FF    mov        eax,dword ptr [ebp-0C]
 0052A902    mov        edx,dword ptr [eax]
 0052A904    call       dword ptr [edx+18]
 0052A907    push       eax
 0052A908    lea        edx,[ebp-28]
 0052A90B    mov        eax,dword ptr [ebp-14]
 0052A90E    mov        ecx,dword ptr [eax]
 0052A910    call       dword ptr [ecx+0A0]
 0052A916    mov        eax,dword ptr [ebp-28]
 0052A919    push       eax
 0052A91A    mov        eax,dword ptr [ebp-14]
 0052A91D    mov        edx,dword ptr [eax]
 0052A91F    call       dword ptr [edx+98]
 0052A925    mov        ecx,eax
 0052A927    lea        edx,[esi+80]; TZInterbase6CallableStatement.?f80:?
 0052A92D    pop        eax
 0052A92E    mov        edi,dword ptr [eax]
 0052A930    call       dword ptr [edi+7C]
 0052A933    mov        edx,dword ptr [ebp-8]
 0052A936    mov        eax,esi
 0052A938    call       00529EA4
 0052A93D    lea        edx,[ebp-2C]
 0052A940    mov        eax,dword ptr [ebp-14]
 0052A943    mov        ecx,dword ptr [eax]
 0052A945    call       dword ptr [ecx+0A0]
 0052A94B    mov        eax,dword ptr [ebp-2C]
 0052A94E    mov        ecx,ebx
 0052A950    mov        edx,dword ptr [ebp-10]
 0052A953    call       005334A8
 0052A958    mov        dword ptr [ebp-4],eax
 0052A95B    mov        eax,dword ptr [ebp-4]
 0052A95E    mov        dword ptr [esi+1C],eax; TZInterbase6CallableStatement.?f1C:Integer
 0052A961    mov        edx,dword ptr [ebp-0C]
 0052A964    mov        eax,esi
 0052A966    call       0052AA40
 0052A96B    mov        eax,dword ptr [esi+38]; TZInterbase6CallableStatement.?f38:IZConnection
 0052A96E    mov        edx,dword ptr [eax]
 0052A970    call       dword ptr [edx+34]
 0052A973    test       al,al
>0052A975    je         0052A97F
 0052A977    mov        eax,dword ptr [esi+38]; TZInterbase6CallableStatement.?f38:IZConnection
 0052A97A    mov        edx,dword ptr [eax]
 0052A97C    call       dword ptr [edx+38]
 0052A97F    mov        eax,dword ptr [esi+48]; TZInterbase6CallableStatement.?f48:String
 0052A982    push       eax
 0052A983    lea        edx,[ebp-34]
 0052A986    mov        eax,dword ptr [ebp-14]
 0052A989    mov        ecx,dword ptr [eax]
 0052A98B    call       dword ptr [ecx+0A0]
 0052A991    mov        eax,dword ptr [ebp-34]
 0052A994    lea        edx,[ebp-30]
 0052A997    mov        ecx,dword ptr [eax]
 0052A999    call       dword ptr [ecx+0C]
 0052A99C    mov        ecx,dword ptr [ebp-30]
 0052A99F    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0052A9A4    mov        eax,dword ptr [eax]
 0052A9A6    mov        dl,3
 0052A9A8    mov        ebx,dword ptr [eax]
 0052A9AA    call       dword ptr [ebx+3C]
 0052A9AD    xor        eax,eax
 0052A9AF    pop        edx
 0052A9B0    pop        ecx
 0052A9B1    pop        ecx
 0052A9B2    mov        dword ptr fs:[eax],edx
 0052A9B5    push       52A9DB
 0052A9BA    lea        edx,[ebp-38]
 0052A9BD    mov        eax,dword ptr [ebp-14]
 0052A9C0    mov        ecx,dword ptr [eax]
 0052A9C2    call       dword ptr [ecx+0A0]
 0052A9C8    mov        eax,dword ptr [ebp-38]
 0052A9CB    mov        edx,dword ptr [ebp-10]
 0052A9CE    call       00533438
 0052A9D3    ret
<0052A9D4    jmp        @HandleFinally
<0052A9D9    jmp        0052A9BA
 0052A9DB    xor        eax,eax
 0052A9DD    pop        edx
 0052A9DE    pop        ecx
 0052A9DF    pop        ecx
 0052A9E0    mov        dword ptr fs:[eax],edx
 0052A9E3    push       52AA36
 0052A9E8    lea        eax,[ebp-38]
 0052A9EB    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052A9F1    mov        ecx,2
 0052A9F6    call       @FinalizeArray
 0052A9FB    lea        eax,[ebp-30]
 0052A9FE    call       @LStrClr
 0052AA03    lea        eax,[ebp-2C]
 0052AA06    mov        edx,dword ptr ds:[521040]; IZInterbasePlainDriver
 0052AA0C    mov        ecx,6
 0052AA11    call       @FinalizeArray
 0052AA16    lea        eax,[ebp-14]
 0052AA19    call       @IntfClear
 0052AA1E    lea        eax,[ebp-0C]
 0052AA21    call       @IntfClear
 0052AA26    lea        eax,[ebp-8]
 0052AA29    call       @LStrClr
 0052AA2E    ret
<0052AA2F    jmp        @HandleFinally
<0052AA34    jmp        0052A9E8
 0052AA36    mov        eax,dword ptr [ebp-4]
 0052AA39    pop        edi
 0052AA3A    pop        esi
 0052AA3B    pop        ebx
 0052AA3C    mov        esp,ebp
 0052AA3E    pop        ebp
 0052AA3F    ret
*}
//end;

//0052AA40
//procedure sub_0052AA40(?:TZInterbase6CallableStatement; ?:IInterface);
//begin
{*
 0052AA40    push       ebp
 0052AA41    mov        ebp,esp
 0052AA43    add        esp,0FFFFFFC0
 0052AA46    push       ebx
 0052AA47    push       esi
 0052AA48    push       edi
 0052AA49    xor        ecx,ecx
 0052AA4B    mov        dword ptr [ebp-3C],ecx
 0052AA4E    mov        dword ptr [ebp-40],ecx
 0052AA51    mov        dword ptr [ebp-38],ecx
 0052AA54    mov        dword ptr [ebp-8],edx
 0052AA57    mov        dword ptr [ebp-4],eax
 0052AA5A    mov        eax,dword ptr [ebp-8]
 0052AA5D    call       @IntfAddRef
 0052AA62    lea        eax,[ebp-34]
 0052AA65    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0052AA6B    call       @InitializeRecord
 0052AA70    xor        eax,eax
 0052AA72    push       ebp
 0052AA73    push       52AD7D
 0052AA78    push       dword ptr fs:[eax]
 0052AA7B    mov        dword ptr fs:[eax],esp
 0052AA7E    mov        eax,dword ptr [ebp-8]
 0052AA81    mov        edx,dword ptr [eax]
 0052AA83    call       dword ptr [edx+24]
 0052AA86    mov        edx,eax
 0052AA88    mov        eax,dword ptr [ebp-4]
 0052AA8B    mov        ecx,dword ptr [eax]
 0052AA8D    call       dword ptr [ecx+0EC]; TZInterbase6CallableStatement.sub_004E0D3C
 0052AA93    mov        eax,dword ptr [ebp-8]
 0052AA96    mov        edx,dword ptr [eax]
 0052AA98    call       dword ptr [edx+24]
 0052AA9B    mov        esi,eax
 0052AA9D    sub        esi,1
>0052AAA0    jno        0052AAA7
 0052AAA2    call       @IntOver
 0052AAA7    test       esi,esi
>0052AAA9    jl         0052AD41
 0052AAAF    inc        esi
 0052AAB0    xor        ebx,ebx
 0052AAB2    mov        edx,ebx
 0052AAB4    mov        eax,dword ptr [ebp-8]
 0052AAB7    mov        ecx,dword ptr [eax]
 0052AAB9    call       dword ptr [ecx+60]
 0052AABC    test       al,al
>0052AABE    je         0052AAD4
 0052AAC0    lea        edx,[ebp-34]
 0052AAC3    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AAC8    mov        eax,dword ptr [eax]
 0052AACA    mov        ecx,dword ptr [eax]
 0052AACC    call       dword ptr [ecx+10]
>0052AACF    jmp        0052AD18
 0052AAD4    mov        edx,ebx
 0052AAD6    cmp        edx,0FFFF
>0052AADC    jbe        0052AAE3
 0052AADE    call       @BoundErr
 0052AAE3    mov        eax,dword ptr [ebp-8]
 0052AAE6    mov        ecx,dword ptr [eax]
 0052AAE8    call       dword ptr [ecx+40]
 0052AAEB    and        eax,7F
 0052AAEE    cmp        eax,0E
>0052AAF1    ja         0052AD18
 0052AAF7    jmp        dword ptr [eax*4+52AAFE]
 0052AAF7    dd         52AD18
 0052AAF7    dd         52AB3A
 0052AAF7    dd         52AB5A
 0052AAF7    dd         52AB7E
 0052AAF7    dd         52ABA2
 0052AAF7    dd         52ABC3
 0052AAF7    dd         52ABE3
 0052AAF7    dd         52AC0B
 0052AAF7    dd         52AC33
 0052AAF7    dd         52AC5B
 0052AAF7    dd         52AC7F
 0052AAF7    dd         52AD18
 0052AAF7    dd         52ACAB
 0052AAF7    dd         52ACD0
 0052AAF7    dd         52ACF5
 0052AB3A    mov        edx,ebx
 0052AB3C    mov        eax,dword ptr [ebp-8]
 0052AB3F    mov        ecx,dword ptr [eax]
 0052AB41    call       dword ptr [ecx+6C]
 0052AB44    mov        ecx,eax
 0052AB46    lea        edx,[ebp-34]
 0052AB49    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AB4E    mov        eax,dword ptr [eax]
 0052AB50    mov        edi,dword ptr [eax]
 0052AB52    call       dword ptr [edi+44]
>0052AB55    jmp        0052AD18
 0052AB5A    mov        edx,ebx
 0052AB5C    mov        eax,dword ptr [ebp-8]
 0052AB5F    mov        ecx,dword ptr [eax]
 0052AB61    call       dword ptr [ecx+70]
 0052AB64    movsx      eax,al
 0052AB67    cdq
 0052AB68    push       edx
 0052AB69    push       eax
 0052AB6A    lea        edx,[ebp-34]
 0052AB6D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AB72    mov        eax,dword ptr [eax]
 0052AB74    mov        ecx,dword ptr [eax]
 0052AB76    call       dword ptr [ecx+48]
>0052AB79    jmp        0052AD18
 0052AB7E    mov        edx,ebx
 0052AB80    mov        eax,dword ptr [ebp-8]
 0052AB83    mov        ecx,dword ptr [eax]
 0052AB85    call       dword ptr [ecx+74]
 0052AB88    movsx      eax,ax
 0052AB8B    cdq
 0052AB8C    push       edx
 0052AB8D    push       eax
 0052AB8E    lea        edx,[ebp-34]
 0052AB91    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AB96    mov        eax,dword ptr [eax]
 0052AB98    mov        ecx,dword ptr [eax]
 0052AB9A    call       dword ptr [ecx+48]
>0052AB9D    jmp        0052AD18
 0052ABA2    mov        edx,ebx
 0052ABA4    mov        eax,dword ptr [ebp-8]
 0052ABA7    mov        ecx,dword ptr [eax]
 0052ABA9    call       dword ptr [ecx+78]
 0052ABAC    cdq
 0052ABAD    push       edx
 0052ABAE    push       eax
 0052ABAF    lea        edx,[ebp-34]
 0052ABB2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ABB7    mov        eax,dword ptr [eax]
 0052ABB9    mov        ecx,dword ptr [eax]
 0052ABBB    call       dword ptr [ecx+48]
>0052ABBE    jmp        0052AD18
 0052ABC3    mov        edx,ebx
 0052ABC5    mov        eax,dword ptr [ebp-8]
 0052ABC8    mov        ecx,dword ptr [eax]
 0052ABCA    call       dword ptr [ecx+7C]
 0052ABCD    push       edx
 0052ABCE    push       eax
 0052ABCF    lea        edx,[ebp-34]
 0052ABD2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ABD7    mov        eax,dword ptr [eax]
 0052ABD9    mov        ecx,dword ptr [eax]
 0052ABDB    call       dword ptr [ecx+48]
>0052ABDE    jmp        0052AD18
 0052ABE3    mov        edx,ebx
 0052ABE5    mov        eax,dword ptr [ebp-8]
 0052ABE8    mov        ecx,dword ptr [eax]
 0052ABEA    call       dword ptr [ecx+80]
 0052ABF0    add        esp,0FFFFFFF4
 0052ABF3    fstp       tbyte ptr [esp]
 0052ABF6    wait
 0052ABF7    lea        edx,[ebp-34]
 0052ABFA    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ABFF    mov        eax,dword ptr [eax]
 0052AC01    mov        ecx,dword ptr [eax]
 0052AC03    call       dword ptr [ecx+4C]
>0052AC06    jmp        0052AD18
 0052AC0B    mov        edx,ebx
 0052AC0D    mov        eax,dword ptr [ebp-8]
 0052AC10    mov        ecx,dword ptr [eax]
 0052AC12    call       dword ptr [ecx+84]
 0052AC18    add        esp,0FFFFFFF4
 0052AC1B    fstp       tbyte ptr [esp]
 0052AC1E    wait
 0052AC1F    lea        edx,[ebp-34]
 0052AC22    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AC27    mov        eax,dword ptr [eax]
 0052AC29    mov        ecx,dword ptr [eax]
 0052AC2B    call       dword ptr [ecx+4C]
>0052AC2E    jmp        0052AD18
 0052AC33    mov        edx,ebx
 0052AC35    mov        eax,dword ptr [ebp-8]
 0052AC38    mov        ecx,dword ptr [eax]
 0052AC3A    call       dword ptr [ecx+88]
 0052AC40    add        esp,0FFFFFFF4
 0052AC43    fstp       tbyte ptr [esp]
 0052AC46    wait
 0052AC47    lea        edx,[ebp-34]
 0052AC4A    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AC4F    mov        eax,dword ptr [eax]
 0052AC51    mov        ecx,dword ptr [eax]
 0052AC53    call       dword ptr [ecx+4C]
>0052AC56    jmp        0052AD18
 0052AC5B    lea        ecx,[ebp-38]
 0052AC5E    mov        edx,ebx
 0052AC60    mov        eax,dword ptr [ebp-8]
 0052AC63    mov        edi,dword ptr [eax]
 0052AC65    call       dword ptr [edi+68]
 0052AC68    mov        ecx,dword ptr [ebp-38]
 0052AC6B    lea        edx,[ebp-34]
 0052AC6E    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AC73    mov        eax,dword ptr [eax]
 0052AC75    mov        edi,dword ptr [eax]
 0052AC77    call       dword ptr [edi+50]
>0052AC7A    jmp        0052AD18
 0052AC7F    lea        ecx,[ebp-40]
 0052AC82    mov        edx,ebx
 0052AC84    mov        eax,dword ptr [ebp-8]
 0052AC87    mov        edi,dword ptr [eax]
 0052AC89    call       dword ptr [edi+68]
 0052AC8C    mov        edx,dword ptr [ebp-40]
 0052AC8F    lea        eax,[ebp-3C]
 0052AC92    call       @WStrFromLStr
 0052AC97    mov        ecx,dword ptr [ebp-3C]
 0052AC9A    lea        edx,[ebp-34]
 0052AC9D    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ACA2    mov        eax,dword ptr [eax]
 0052ACA4    mov        edi,dword ptr [eax]
 0052ACA6    call       dword ptr [edi+54]
>0052ACA9    jmp        0052AD18
 0052ACAB    mov        edx,ebx
 0052ACAD    mov        eax,dword ptr [ebp-8]
 0052ACB0    mov        ecx,dword ptr [eax]
 0052ACB2    call       dword ptr [ecx+90]
 0052ACB8    add        esp,0FFFFFFF8
 0052ACBB    fstp       qword ptr [esp]
 0052ACBE    wait
 0052ACBF    lea        edx,[ebp-34]
 0052ACC2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ACC7    mov        eax,dword ptr [eax]
 0052ACC9    mov        ecx,dword ptr [eax]
 0052ACCB    call       dword ptr [ecx+58]
>0052ACCE    jmp        0052AD18
 0052ACD0    mov        edx,ebx
 0052ACD2    mov        eax,dword ptr [ebp-8]
 0052ACD5    mov        ecx,dword ptr [eax]
 0052ACD7    call       dword ptr [ecx+94]
 0052ACDD    add        esp,0FFFFFFF8
 0052ACE0    fstp       qword ptr [esp]
 0052ACE3    wait
 0052ACE4    lea        edx,[ebp-34]
 0052ACE7    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052ACEC    mov        eax,dword ptr [eax]
 0052ACEE    mov        ecx,dword ptr [eax]
 0052ACF0    call       dword ptr [ecx+58]
>0052ACF3    jmp        0052AD18
 0052ACF5    mov        edx,ebx
 0052ACF7    mov        eax,dword ptr [ebp-8]
 0052ACFA    mov        ecx,dword ptr [eax]
 0052ACFC    call       dword ptr [ecx+98]
 0052AD02    add        esp,0FFFFFFF8
 0052AD05    fstp       qword ptr [esp]
 0052AD08    wait
 0052AD09    lea        edx,[ebp-34]
 0052AD0C    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0052AD11    mov        eax,dword ptr [eax]
 0052AD13    mov        ecx,dword ptr [eax]
 0052AD15    call       dword ptr [ecx+58]
 0052AD18    imul       eax,ebx,0B
>0052AD1B    jno        0052AD22
 0052AD1D    call       @IntOver
 0052AD22    mov        edx,dword ptr [ebp-4]
 0052AD25    mov        edx,dword ptr [edx+60]; TZInterbase6CallableStatement.?f60:TZVariantDynArray
 0052AD28    lea        eax,[edx+eax*4]
 0052AD2B    lea        edx,[ebp-34]
 0052AD2E    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0052AD34    call       @CopyRecord
 0052AD39    inc        ebx
 0052AD3A    dec        esi
<0052AD3B    jne        0052AAB2
 0052AD41    xor        eax,eax
 0052AD43    pop        edx
 0052AD44    pop        ecx
 0052AD45    pop        ecx
 0052AD46    mov        dword ptr fs:[eax],edx
 0052AD49    push       52AD84
 0052AD4E    lea        eax,[ebp-40]
 0052AD51    call       @LStrClr
 0052AD56    lea        eax,[ebp-3C]
 0052AD59    call       @WStrClr
 0052AD5E    lea        eax,[ebp-38]
 0052AD61    call       @LStrClr
 0052AD66    lea        eax,[ebp-34]
 0052AD69    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0052AD6F    call       @FinalizeRecord
 0052AD74    lea        eax,[ebp-8]
 0052AD77    call       @IntfClear
 0052AD7C    ret
<0052AD7D    jmp        @HandleFinally
<0052AD82    jmp        0052AD4E
 0052AD84    pop        edi
 0052AD85    pop        esi
 0052AD86    pop        ebx
 0052AD87    mov        esp,ebp
 0052AD89    pop        ebp
 0052AD8A    ret
*}
//end;

//0052AD8C
//procedure sub_0052AD8C(?:?; ?:AnsiString);
//begin
{*
 0052AD8C    push       ebp
 0052AD8D    mov        ebp,esp
 0052AD8F    push       ebx
 0052AD90    push       esi
 0052AD91    mov        ebx,edx
 0052AD93    mov        esi,eax
 0052AD95    sub        esi,1
>0052AD98    jno        0052AD9F
 0052AD9A    call       @IntOver
 0052AD9F    test       esi,esi
>0052ADA1    jl         0052ADC4
 0052ADA3    inc        esi
 0052ADA4    cmp        dword ptr [ebx],0
>0052ADA7    je         0052ADB5
 0052ADA9    mov        eax,ebx
 0052ADAB    mov        edx,52ADD0; ','
 0052ADB0    call       @LStrCat
 0052ADB5    mov        eax,ebx
 0052ADB7    mov        edx,52ADDC; '?'
 0052ADBC    call       @LStrCat
 0052ADC1    dec        esi
<0052ADC2    jne        0052ADA4
 0052ADC4    pop        esi
 0052ADC5    pop        ebx
 0052ADC6    pop        ebp
 0052ADC7    ret
*}
//end;

//0052ADE0
//procedure sub_0052ADE0(?:TZInterbase6CallableStatement; ?:?; ?:AnsiString);
//begin
{*
 0052ADE0    push       ebp
 0052ADE1    mov        ebp,esp
 0052ADE3    push       0
 0052ADE5    push       ebx
 0052ADE6    push       esi
 0052ADE7    push       edi
 0052ADE8    mov        esi,ecx
 0052ADEA    mov        ebx,edx
 0052ADEC    mov        edi,eax
 0052ADEE    xor        eax,eax
 0052ADF0    push       ebp
 0052ADF1    push       52AE80
 0052ADF6    push       dword ptr fs:[eax]
 0052ADF9    mov        dword ptr fs:[eax],esp
 0052ADFC    mov        eax,dword ptr [edi+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052ADFF    call       @DynArrayHigh
 0052AE04    add        eax,1
>0052AE07    jno        0052AE0E
 0052AE09    call       @IntOver
 0052AE0E    lea        edx,[ebp-4]
 0052AE11    call       0052AD8C
 0052AE16    cmp        dword ptr [ebp-4],0
>0052AE1A    je         0052AE36
 0052AE1C    push       52AE98; '('
 0052AE21    push       dword ptr [ebp-4]
 0052AE24    push       52AEA4; ')'
 0052AE29    lea        eax,[ebp-4]
 0052AE2C    mov        edx,3
 0052AE31    call       @LStrCatN
 0052AE36    test       bl,bl
>0052AE38    je         0052AE53
 0052AE3A    push       52AEB0; 'SELECT * FROM '
 0052AE3F    push       dword ptr [edi+48]; TZInterbase6CallableStatement.?f48:String
 0052AE42    push       dword ptr [ebp-4]
 0052AE45    mov        eax,esi
 0052AE47    mov        edx,3
 0052AE4C    call       @LStrCatN
>0052AE51    jmp        0052AE6A
 0052AE53    push       52AEC8; 'EXECUTE PROCEDURE '
 0052AE58    push       dword ptr [edi+48]; TZInterbase6CallableStatement.?f48:String
 0052AE5B    push       dword ptr [ebp-4]
 0052AE5E    mov        eax,esi
 0052AE60    mov        edx,3
 0052AE65    call       @LStrCatN
 0052AE6A    xor        eax,eax
 0052AE6C    pop        edx
 0052AE6D    pop        ecx
 0052AE6E    pop        ecx
 0052AE6F    mov        dword ptr fs:[eax],edx
 0052AE72    push       52AE87
 0052AE77    lea        eax,[ebp-4]
 0052AE7A    call       @LStrClr
 0052AE7F    ret
<0052AE80    jmp        @HandleFinally
<0052AE85    jmp        0052AE77
 0052AE87    pop        edi
 0052AE88    pop        esi
 0052AE89    pop        ebx
 0052AE8A    pop        ecx
 0052AE8B    pop        ebp
 0052AE8C    ret
*}
//end;

//0052AEDC
//procedure sub_0052AEDC(?:TZInterbase6CallableStatement);
//begin
{*
 0052AEDC    push       ebp
 0052AEDD    mov        ebp,esp
 0052AEDF    push       0
 0052AEE1    push       0
 0052AEE3    push       0
 0052AEE5    push       ebx
 0052AEE6    push       esi
 0052AEE7    push       edi
 0052AEE8    mov        ebx,eax
 0052AEEA    xor        eax,eax
 0052AEEC    push       ebp
 0052AEED    push       52B018
 0052AEF2    push       dword ptr fs:[eax]
 0052AEF5    mov        dword ptr fs:[eax],esp
 0052AEF8    xor        edi,edi
 0052AEFA    mov        eax,dword ptr [ebx+58]; TZInterbase6CallableStatement.?f58:dword
 0052AEFD    push       eax
 0052AEFE    lea        eax,[ebp-4]
 0052AF01    mov        ecx,1
 0052AF06    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0052AF0C    call       @DynArraySetLength
 0052AF11    add        esp,4
 0052AF14    mov        eax,dword ptr [ebx+58]; TZInterbase6CallableStatement.?f58:dword
 0052AF17    push       eax
 0052AF18    lea        eax,[ebp-8]
 0052AF1B    mov        ecx,1
 0052AF20    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 0052AF26    call       @DynArraySetLength
 0052AF2B    add        esp,4
 0052AF2E    mov        eax,dword ptr [ebx+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052AF31    call       @DynArrayHigh
 0052AF36    test       eax,eax
>0052AF38    jl         0052AFBE
 0052AF3E    inc        eax
 0052AF3F    mov        dword ptr [ebp-0C],eax
 0052AF42    xor        esi,esi
 0052AF44    mov        eax,dword ptr [ebx+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052AF47    test       eax,eax
>0052AF49    je         0052AF50
 0052AF4B    cmp        esi,dword ptr [eax-4]
>0052AF4E    jb         0052AF55
 0052AF50    call       @BoundErr
 0052AF55    cmp        byte ptr [eax+esi],0
>0052AF59    je         0052AFB8
 0052AF5B    mov        eax,dword ptr [ebx+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052AF5E    test       eax,eax
>0052AF60    je         0052AF67
 0052AF62    cmp        esi,dword ptr [eax-4]
>0052AF65    jb         0052AF6C
 0052AF67    call       @BoundErr
 0052AF6C    mov        al,byte ptr [eax+esi]
 0052AF6F    mov        edx,dword ptr [ebp-8]
 0052AF72    test       edx,edx
>0052AF74    je         0052AF7B
 0052AF76    cmp        edi,dword ptr [edx-4]
>0052AF79    jb         0052AF80
 0052AF7B    call       @BoundErr
 0052AF80    mov        byte ptr [edx+edi],al
 0052AF83    imul       eax,edi,0B
>0052AF86    jno        0052AF8D
 0052AF88    call       @IntOver
 0052AF8D    mov        edx,dword ptr [ebp-4]
 0052AF90    lea        eax,[edx+eax*4]
 0052AF93    imul       edx,esi,0B
>0052AF96    jno        0052AF9D
 0052AF98    call       @IntOver
 0052AF9D    mov        ecx,dword ptr [ebx+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052AFA0    lea        edx,[ecx+edx*4]
 0052AFA3    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0052AFA9    call       @CopyRecord
 0052AFAE    add        edi,1
>0052AFB1    jno        0052AFB8
 0052AFB3    call       @IntOver
 0052AFB8    inc        esi
 0052AFB9    dec        dword ptr [ebp-0C]
<0052AFBC    jne        0052AF44
 0052AFBE    cmp        edi,dword ptr [ebx+58]; TZInterbase6CallableStatement.?f58:dword
>0052AFC1    je         0052AFEE
 0052AFC3    lea        eax,[ebx+50]; TZInterbase6CallableStatement.?f50:TZSQLTypeArray
 0052AFC6    mov        edx,dword ptr [ebp-8]
 0052AFC9    mov        ecx,dword ptr ds:[4DE944]; TZSQLTypeArray
 0052AFCF    call       @DynArrayAsg
 0052AFD4    lea        eax,[ebx+4C]; TZInterbase6CallableStatement.?f4C:TZVariantDynArray
 0052AFD7    mov        edx,dword ptr [ebp-4]
 0052AFDA    mov        ecx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0052AFE0    call       @DynArrayAsg
 0052AFE5    mov        edx,edi
 0052AFE7    mov        eax,ebx
 0052AFE9    mov        ecx,dword ptr [eax]
 0052AFEB    call       dword ptr [ecx+78]; TZInterbase6CallableStatement.sub_004E0150
 0052AFEE    xor        eax,eax
 0052AFF0    pop        edx
 0052AFF1    pop        ecx
 0052AFF2    pop        ecx
 0052AFF3    mov        dword ptr fs:[eax],edx
 0052AFF6    push       52B01F
 0052AFFB    lea        eax,[ebp-8]
 0052AFFE    mov        edx,dword ptr ds:[4DE944]; TZSQLTypeArray
 0052B004    call       @DynArrayClear
 0052B009    lea        eax,[ebp-4]
 0052B00C    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 0052B012    call       @DynArrayClear
 0052B017    ret
<0052B018    jmp        @HandleFinally
<0052B01D    jmp        0052AFFB
 0052B01F    pop        edi
 0052B020    pop        esi
 0052B021    pop        ebx
 0052B022    mov        esp,ebp
 0052B024    pop        ebp
 0052B025    ret
*}
//end;

end.