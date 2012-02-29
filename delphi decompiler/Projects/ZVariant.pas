{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZVariant;

interface

uses
  Classes, Windows, Graphics, SysUtils, ZClasses;

type
  TZVariant = record //size = 44
  f14:String;
  f18:WideString;
  f28:IInterface;;
  TZVariantDynArray = array of TZVariant;
  EZVariantException = class(Exception)
  end;
  TZDefaultVariantManager = class(TInterfacedObject)
  public
    //procedure sub_004C48C4(?:?; ?:?; ?:?); virtual;
  end;
  TZSoftVariantManager = class(TZDefaultVariantManager)
  public
    //procedure sub_004C5CA4(?:?; ?:?; ?:?); virtual;
  end;
  TZAnyValue = class(TZAbstractObject)
  public
    f10:TZVariant;//f10
    //function sub_004C6508(?:?):?; virtual;
    //procedure sub_004C64DC(?:?); virtual;
    //procedure sub_004C65E4(?:?); virtual;
    //constructor Create(?:TZAnyValue; _Dv__:Boolean);
    //constructor Create(?:TZAnyValue; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004C481C
procedure sub_004C481C;
begin
{*
 004C481C    push       ebp
 004C481D    mov        ebp,esp
 004C481F    push       0
 004C4821    xor        eax,eax
 004C4823    push       ebp
 004C4824    push       4C4866
 004C4829    push       dword ptr fs:[eax]
 004C482C    mov        dword ptr fs:[eax],esp
 004C482F    lea        edx,[ebp-4]
 004C4832    mov        eax,[0061B618]; ^#122.sResString19:TResStringRec
 004C4837    call       LoadResString
 004C483C    mov        ecx,dword ptr [ebp-4]
 004C483F    mov        dl,1
 004C4841    mov        eax,[004C41D4]; EZVariantException
 004C4846    call       Exception.Create; EZVariantException.Create
 004C484B    call       @RaiseExcept
 004C4850    xor        eax,eax
 004C4852    pop        edx
 004C4853    pop        ecx
 004C4854    pop        ecx
 004C4855    mov        dword ptr fs:[eax],edx
 004C4858    push       4C486D
 004C485D    lea        eax,[ebp-4]
 004C4860    call       @LStrClr
 004C4865    ret
<004C4866    jmp        @HandleFinally
<004C486B    jmp        004C485D
 004C486D    pop        ecx
 004C486E    pop        ebp
 004C486F    ret
*}
end;

//004C48C4
//procedure sub_004C48C4(?:?; ?:?; ?:?);
//begin
{*
 004C48C4    push       ebp
 004C48C5    mov        ebp,esp
 004C48C7    push       ecx
 004C48C8    push       ebx
 004C48C9    push       esi
 004C48CA    mov        esi,edx
 004C48CC    mov        dword ptr [ebp-4],eax
 004C48CF    mov        ebx,dword ptr [ebp+8]
 004C48D2    mov        byte ptr [ebx],cl
 004C48D4    xor        eax,eax
 004C48D6    mov        al,cl
 004C48D8    cmp        eax,8
>004C48DB    ja         004C4B34
 004C48E1    jmp        dword ptr [eax*4+4C48E8]
 004C48E1    dd         4C4B34
 004C48E1    dd         4C490C
 004C48E1    dd         4C4937
 004C48E1    dd         4C49A2
 004C48E1    dd         4C4A25
 004C48E1    dd         4C4A6F
 004C48E1    dd         4C4AB6
 004C48E1    dd         4C4AE4
 004C48E1    dd         4C4B09
 004C490C    mov        al,byte ptr [esi]
 004C490E    sub        al,1
>004C4910    jb         004C4916
>004C4912    je         004C491F
>004C4914    jmp        004C492A
 004C4916    mov        byte ptr [ebx+1],0
>004C491A    jmp        004C4B34
 004C491F    mov        al,byte ptr [esi+1]
 004C4922    mov        byte ptr [ebx+1],al
>004C4925    jmp        004C4B34
 004C492A    mov        eax,dword ptr [ebp-4]
 004C492D    call       004C481C
>004C4932    jmp        004C4B34
 004C4937    mov        al,byte ptr [esi]
 004C4939    sub        al,1
>004C493B    jb         004C4945
>004C493D    je         004C4958
 004C493F    dec        al
>004C4941    je         004C4984
>004C4943    jmp        004C4995
 004C4945    mov        dword ptr [ebx+2],0
 004C494C    mov        dword ptr [ebx+6],0
>004C4953    jmp        004C4B34
 004C4958    cmp        byte ptr [esi+1],0
>004C495C    je         004C4971
 004C495E    mov        dword ptr [ebx+2],1
 004C4965    mov        dword ptr [ebx+6],0
>004C496C    jmp        004C4B34
 004C4971    mov        dword ptr [ebx+2],0
 004C4978    mov        dword ptr [ebx+6],0
>004C497F    jmp        004C4B34
 004C4984    mov        eax,dword ptr [esi+2]
 004C4987    mov        dword ptr [ebx+2],eax
 004C498A    mov        eax,dword ptr [esi+6]
 004C498D    mov        dword ptr [ebx+6],eax
>004C4990    jmp        004C4B34
 004C4995    mov        eax,dword ptr [ebp-4]
 004C4998    call       004C481C
>004C499D    jmp        004C4B34
 004C49A2    mov        al,byte ptr [esi]
 004C49A4    sub        al,1
>004C49A6    jb         004C49B4
>004C49A8    je         004C49C5
 004C49AA    dec        al
>004C49AC    je         004C49F3
 004C49AE    dec        al
>004C49B0    je         004C49FF
>004C49B2    jmp        004C4A18
 004C49B4    xor        eax,eax
 004C49B6    mov        dword ptr [ebx+0A],eax
 004C49B9    mov        dword ptr [ebx+0E],eax
 004C49BC    mov        word ptr [ebx+12],ax
>004C49C0    jmp        004C4B34
 004C49C5    cmp        byte ptr [esi+1],0
>004C49C9    je         004C49E2
 004C49CB    xor        eax,eax
 004C49CD    mov        dword ptr [ebx+0A],eax
 004C49D0    mov        dword ptr [ebx+0E],80000000
 004C49D7    mov        word ptr [ebx+12],3FFF
>004C49DD    jmp        004C4B34
 004C49E2    xor        eax,eax
 004C49E4    mov        dword ptr [ebx+0A],eax
 004C49E7    mov        dword ptr [ebx+0E],eax
 004C49EA    mov        word ptr [ebx+12],ax
>004C49EE    jmp        004C4B34
 004C49F3    fild       qword ptr [esi+2]
 004C49F6    fstp       tbyte ptr [ebx+0A]
 004C49F9    wait
>004C49FA    jmp        004C4B34
 004C49FF    mov        eax,dword ptr [esi+0A]
 004C4A02    mov        dword ptr [ebx+0A],eax
 004C4A05    mov        eax,dword ptr [esi+0E]
 004C4A08    mov        dword ptr [ebx+0E],eax
 004C4A0B    mov        ax,word ptr [esi+12]
 004C4A0F    mov        word ptr [ebx+12],ax
>004C4A13    jmp        004C4B34
 004C4A18    mov        eax,dword ptr [ebp-4]
 004C4A1B    call       004C481C
>004C4A20    jmp        004C4B34
 004C4A25    mov        al,byte ptr [esi]
 004C4A27    sub        al,1
>004C4A29    jb         004C4A35
 004C4A2B    sub        al,3
>004C4A2D    je         004C4A42
 004C4A2F    dec        al
>004C4A31    je         004C4A52
>004C4A33    jmp        004C4A62
 004C4A35    lea        eax,[ebx+14]
 004C4A38    call       @LStrClr
>004C4A3D    jmp        004C4B34
 004C4A42    lea        eax,[ebx+14]
 004C4A45    mov        edx,dword ptr [esi+14]
 004C4A48    call       @LStrAsg
>004C4A4D    jmp        004C4B34
 004C4A52    lea        eax,[ebx+14]
 004C4A55    mov        edx,dword ptr [esi+18]
 004C4A58    call       @LStrFromWStr
>004C4A5D    jmp        004C4B34
 004C4A62    mov        eax,dword ptr [ebp-4]
 004C4A65    call       004C481C
>004C4A6A    jmp        004C4B34
 004C4A6F    mov        al,byte ptr [esi]
 004C4A71    sub        al,1
>004C4A73    jb         004C4A7F
 004C4A75    sub        al,3
>004C4A77    je         004C4A8C
 004C4A79    dec        al
>004C4A7B    je         004C4A9C
>004C4A7D    jmp        004C4AAC
 004C4A7F    lea        eax,[ebx+18]
 004C4A82    call       @WStrClr
>004C4A87    jmp        004C4B34
 004C4A8C    lea        eax,[ebx+18]
 004C4A8F    mov        edx,dword ptr [esi+14]
 004C4A92    call       @WStrFromLStr
>004C4A97    jmp        004C4B34
 004C4A9C    lea        eax,[ebx+18]
 004C4A9F    mov        edx,dword ptr [esi+18]
 004C4AA2    call       @WStrAsg
>004C4AA7    jmp        004C4B34
 004C4AAC    mov        eax,dword ptr [ebp-4]
 004C4AAF    call       004C481C
>004C4AB4    jmp        004C4B34
 004C4AB6    mov        al,byte ptr [esi]
 004C4AB8    sub        al,1
>004C4ABA    jb         004C4AC2
 004C4ABC    sub        al,5
>004C4ABE    je         004C4ACC
>004C4AC0    jmp        004C4ADA
 004C4AC2    xor        eax,eax
 004C4AC4    mov        dword ptr [ebx+1C],eax
 004C4AC7    mov        dword ptr [ebx+20],eax
>004C4ACA    jmp        004C4B34
 004C4ACC    mov        eax,dword ptr [esi+1C]
 004C4ACF    mov        dword ptr [ebx+1C],eax
 004C4AD2    mov        eax,dword ptr [esi+20]
 004C4AD5    mov        dword ptr [ebx+20],eax
>004C4AD8    jmp        004C4B34
 004C4ADA    mov        eax,dword ptr [ebp-4]
 004C4ADD    call       004C481C
>004C4AE2    jmp        004C4B34
 004C4AE4    mov        al,byte ptr [esi]
 004C4AE6    sub        al,1
>004C4AE8    jb         004C4AF0
 004C4AEA    sub        al,6
>004C4AEC    je         004C4AF7
>004C4AEE    jmp        004C4AFF
 004C4AF0    xor        eax,eax
 004C4AF2    mov        dword ptr [ebx+24],eax
>004C4AF5    jmp        004C4B34
 004C4AF7    mov        eax,dword ptr [esi+24]
 004C4AFA    mov        dword ptr [ebx+24],eax
>004C4AFD    jmp        004C4B34
 004C4AFF    mov        eax,dword ptr [ebp-4]
 004C4B02    call       004C481C
>004C4B07    jmp        004C4B34
 004C4B09    mov        al,byte ptr [esi]
 004C4B0B    sub        al,1
>004C4B0D    jb         004C4B15
 004C4B0F    sub        al,7
>004C4B11    je         004C4B1F
>004C4B13    jmp        004C4B2C
 004C4B15    lea        eax,[ebx+28]
 004C4B18    call       @IntfClear
>004C4B1D    jmp        004C4B34
 004C4B1F    lea        eax,[ebx+28]
 004C4B22    mov        edx,dword ptr [esi+28]
 004C4B25    call       @IntfCopy
>004C4B2A    jmp        004C4B34
 004C4B2C    mov        eax,dword ptr [ebp-4]
 004C4B2F    call       004C481C
 004C4B34    pop        esi
 004C4B35    pop        ebx
 004C4B36    pop        ecx
 004C4B37    pop        ebp
 004C4B38    ret        4
*}
//end;

//004C5CA4
//procedure sub_004C5CA4(?:?; ?:?; ?:?);
//begin
{*
 004C5CA4    push       ebp
 004C5CA5    mov        ebp,esp
 004C5CA7    push       ecx
 004C5CA8    mov        ecx,5
 004C5CAD    push       0
 004C5CAF    push       0
 004C5CB1    dec        ecx
<004C5CB2    jne        004C5CAD
 004C5CB4    xchg       ecx,dword ptr [ebp-4]
 004C5CB7    push       ebx
 004C5CB8    push       esi
 004C5CB9    mov        ebx,edx
 004C5CBB    mov        dword ptr [ebp-4],eax
 004C5CBE    mov        esi,dword ptr [ebp+8]
 004C5CC1    xor        eax,eax
 004C5CC3    push       ebp
 004C5CC4    push       4C63FF
 004C5CC9    push       dword ptr fs:[eax]
 004C5CCC    mov        dword ptr fs:[eax],esp
 004C5CCF    mov        byte ptr [esi],cl
 004C5CD1    xor        eax,eax
 004C5CD3    mov        al,cl
 004C5CD5    cmp        eax,8
>004C5CD8    ja         004C63E4
 004C5CDE    jmp        dword ptr [eax*4+4C5CE5]
 004C5CDE    dd         4C63E4
 004C5CDE    dd         4C5D09
 004C5CDE    dd         4C5DDD
 004C5CDE    dd         4C5EDE
 004C5CDE    dd         4C5FD9
 004C5CDE    dd         4C60E1
 004C5CDE    dd         4C61E9
 004C5CDE    dd         4C62AB
 004C5CDE    dd         4C6351
 004C5D09    xor        eax,eax
 004C5D0B    mov        al,byte ptr [ebx]
 004C5D0D    cmp        eax,8
>004C5D10    ja         004C63E4
 004C5D16    jmp        dword ptr [eax*4+4C5D1D]
 004C5D16    dd         4C5D41
 004C5D16    dd         4C5D4A
 004C5D16    dd         4C5D55
 004C5D16    dd         4C5D6A
 004C5D16    dd         4C5D81
 004C5D16    dd         4C5D91
 004C5D16    dd         4C5DAC
 004C5D16    dd         4C5DC3
 004C5D16    dd         4C5DD0
 004C5D41    mov        byte ptr [esi+1],0
>004C5D45    jmp        004C63E4
 004C5D4A    mov        al,byte ptr [ebx+1]
 004C5D4D    mov        byte ptr [esi+1],al
>004C5D50    jmp        004C63E4
 004C5D55    cmp        dword ptr [ebx+6],0
>004C5D59    jne        004C5D5F
 004C5D5B    cmp        dword ptr [ebx+2],0
 004C5D5F    setne      al
 004C5D62    mov        byte ptr [esi+1],al
>004C5D65    jmp        004C63E4
 004C5D6A    fld        tbyte ptr [ebx+0A]
 004C5D6D    fcomp      dword ptr ds:[4C6410]; 0:Single
 004C5D73    fnstsw     al
 004C5D75    sahf
 004C5D76    setne      al
 004C5D79    mov        byte ptr [esi+1],al
>004C5D7C    jmp        004C63E4
 004C5D81    mov        eax,dword ptr [ebx+14]
 004C5D84    call       004BEFC0
 004C5D89    mov        byte ptr [esi+1],al
>004C5D8C    jmp        004C63E4
 004C5D91    lea        eax,[ebp-8]
 004C5D94    mov        edx,dword ptr [ebx+18]
 004C5D97    call       @LStrFromWStr
 004C5D9C    mov        eax,dword ptr [ebp-8]
 004C5D9F    call       004BEFC0
 004C5DA4    mov        byte ptr [esi+1],al
>004C5DA7    jmp        004C63E4
 004C5DAC    fld        qword ptr [ebx+1C]
 004C5DAF    fcomp      dword ptr ds:[4C6410]; 0:Single
 004C5DB5    fnstsw     al
 004C5DB7    sahf
 004C5DB8    setne      al
 004C5DBB    mov        byte ptr [esi+1],al
>004C5DBE    jmp        004C63E4
 004C5DC3    mov        eax,dword ptr [ebp-4]
 004C5DC6    call       004C481C
>004C5DCB    jmp        004C63E4
 004C5DD0    mov        eax,dword ptr [ebp-4]
 004C5DD3    call       004C481C
>004C5DD8    jmp        004C63E4
 004C5DDD    xor        eax,eax
 004C5DDF    mov        al,byte ptr [ebx]
 004C5DE1    cmp        eax,8
>004C5DE4    ja         004C63E4
 004C5DEA    jmp        dword ptr [eax*4+4C5DF1]
 004C5DEA    dd         4C5E15
 004C5DEA    dd         4C5E28
 004C5DEA    dd         4C5E54
 004C5DEA    dd         4C5E65
 004C5DEA    dd         4C5E78
 004C5DEA    dd         4C5E8E
 004C5DEA    dd         4C5EAF
 004C5DEA    dd         4C5EC2
 004C5DEA    dd         4C5ED1
 004C5E15    mov        dword ptr [esi+2],0
 004C5E1C    mov        dword ptr [esi+6],0
>004C5E23    jmp        004C63E4
 004C5E28    cmp        byte ptr [ebx+1],0
>004C5E2C    je         004C5E41
 004C5E2E    mov        dword ptr [esi+2],1
 004C5E35    mov        dword ptr [esi+6],0
>004C5E3C    jmp        004C63E4
 004C5E41    mov        dword ptr [esi+2],0
 004C5E48    mov        dword ptr [esi+6],0
>004C5E4F    jmp        004C63E4
 004C5E54    mov        eax,dword ptr [ebx+2]
 004C5E57    mov        dword ptr [esi+2],eax
 004C5E5A    mov        eax,dword ptr [ebx+6]
 004C5E5D    mov        dword ptr [esi+6],eax
>004C5E60    jmp        004C63E4
 004C5E65    fld        tbyte ptr [ebx+0A]
 004C5E68    call       @TRUNC
 004C5E6D    mov        dword ptr [esi+2],eax
 004C5E70    mov        dword ptr [esi+6],edx
>004C5E73    jmp        004C63E4
 004C5E78    mov        eax,dword ptr [ebx+14]
 004C5E7B    xor        edx,edx
 004C5E7D    call       StrToIntDef
 004C5E82    cdq
 004C5E83    mov        dword ptr [esi+2],eax
 004C5E86    mov        dword ptr [esi+6],edx
>004C5E89    jmp        004C63E4
 004C5E8E    lea        eax,[ebp-0C]
 004C5E91    mov        edx,dword ptr [ebx+18]
 004C5E94    call       @LStrFromWStr
 004C5E99    mov        eax,dword ptr [ebp-0C]
 004C5E9C    xor        edx,edx
 004C5E9E    call       StrToIntDef
 004C5EA3    cdq
 004C5EA4    mov        dword ptr [esi+2],eax
 004C5EA7    mov        dword ptr [esi+6],edx
>004C5EAA    jmp        004C63E4
 004C5EAF    fld        qword ptr [ebx+1C]
 004C5EB2    call       @TRUNC
 004C5EB7    mov        dword ptr [esi+2],eax
 004C5EBA    mov        dword ptr [esi+6],edx
>004C5EBD    jmp        004C63E4
 004C5EC2    mov        eax,dword ptr [ebx+24]
 004C5EC5    cdq
 004C5EC6    mov        dword ptr [esi+2],eax
 004C5EC9    mov        dword ptr [esi+6],edx
>004C5ECC    jmp        004C63E4
 004C5ED1    mov        eax,dword ptr [ebp-4]
 004C5ED4    call       004C481C
>004C5ED9    jmp        004C63E4
 004C5EDE    xor        eax,eax
 004C5EE0    mov        al,byte ptr [ebx]
 004C5EE2    cmp        eax,8
>004C5EE5    ja         004C63E4
 004C5EEB    jmp        dword ptr [eax*4+4C5EF2]
 004C5EEB    dd         4C5F16
 004C5EEB    dd         4C5F27
 004C5EEB    dd         4C5F55
 004C5EEB    dd         4C5F61
 004C5EEB    dd         4C5F7A
 004C5EEB    dd         4C5F91
 004C5EEB    dd         4C5FB3
 004C5EEB    dd         4C5FBF
 004C5EEB    dd         4C5FCC
 004C5F16    xor        eax,eax
 004C5F18    mov        dword ptr [esi+0A],eax
 004C5F1B    mov        dword ptr [esi+0E],eax
 004C5F1E    mov        word ptr [esi+12],ax
>004C5F22    jmp        004C63E4
 004C5F27    cmp        byte ptr [ebx+1],0
>004C5F2B    je         004C5F44
 004C5F2D    xor        eax,eax
 004C5F2F    mov        dword ptr [esi+0A],eax
 004C5F32    mov        dword ptr [esi+0E],80000000
 004C5F39    mov        word ptr [esi+12],3FFF
>004C5F3F    jmp        004C63E4
 004C5F44    xor        eax,eax
 004C5F46    mov        dword ptr [esi+0A],eax
 004C5F49    mov        dword ptr [esi+0E],eax
 004C5F4C    mov        word ptr [esi+12],ax
>004C5F50    jmp        004C63E4
 004C5F55    fild       qword ptr [ebx+2]
 004C5F58    fstp       tbyte ptr [esi+0A]
 004C5F5B    wait
>004C5F5C    jmp        004C63E4
 004C5F61    mov        eax,dword ptr [ebx+0A]
 004C5F64    mov        dword ptr [esi+0A],eax
 004C5F67    mov        eax,dword ptr [ebx+0E]
 004C5F6A    mov        dword ptr [esi+0E],eax
 004C5F6D    mov        ax,word ptr [ebx+12]
 004C5F71    mov        word ptr [esi+12],ax
>004C5F75    jmp        004C63E4
 004C5F7A    push       0
 004C5F7C    push       0
 004C5F7E    push       0
 004C5F80    mov        eax,dword ptr [ebx+14]
 004C5F83    call       004BEE6C
 004C5F88    fstp       tbyte ptr [esi+0A]
 004C5F8B    wait
>004C5F8C    jmp        004C63E4
 004C5F91    push       0
 004C5F93    push       0
 004C5F95    push       0
 004C5F97    lea        eax,[ebp-10]
 004C5F9A    mov        edx,dword ptr [ebx+18]
 004C5F9D    call       @LStrFromWStr
 004C5FA2    mov        eax,dword ptr [ebp-10]
 004C5FA5    call       004BEE6C
 004C5FAA    fstp       tbyte ptr [esi+0A]
 004C5FAD    wait
>004C5FAE    jmp        004C63E4
 004C5FB3    fld        qword ptr [ebx+1C]
 004C5FB6    fstp       tbyte ptr [esi+0A]
 004C5FB9    wait
>004C5FBA    jmp        004C63E4
 004C5FBF    mov        eax,dword ptr [ebp-4]
 004C5FC2    call       004C481C
>004C5FC7    jmp        004C63E4
 004C5FCC    mov        eax,dword ptr [ebp-4]
 004C5FCF    call       004C481C
>004C5FD4    jmp        004C63E4
 004C5FD9    xor        eax,eax
 004C5FDB    mov        al,byte ptr [ebx]
 004C5FDD    cmp        eax,8
>004C5FE0    ja         004C63E4
 004C5FE6    jmp        dword ptr [eax*4+4C5FED]
 004C5FE6    dd         4C6011
 004C5FE6    dd         4C601E
 004C5FE6    dd         4C6048
 004C5FE6    dd         4C6066
 004C5FE6    dd         4C6089
 004C5FE6    dd         4C6099
 004C5FE6    dd         4C60A9
 004C5FE6    dd         4C60C7
 004C5FE6    dd         4C60D4
 004C6011    lea        eax,[esi+14]
 004C6014    call       @LStrClr
>004C6019    jmp        004C63E4
 004C601E    cmp        byte ptr [ebx+1],0
>004C6022    je         004C6036
 004C6024    lea        eax,[esi+14]
 004C6027    mov        edx,4C641C; 'TRUE'
 004C602C    call       @LStrAsg
>004C6031    jmp        004C63E4
 004C6036    lea        eax,[esi+14]
 004C6039    mov        edx,4C642C; 'FALSE'
 004C603E    call       @LStrAsg
>004C6043    jmp        004C63E4
 004C6048    push       dword ptr [ebx+6]
 004C604B    push       dword ptr [ebx+2]
 004C604E    lea        eax,[ebp-14]
 004C6051    call       IntToStr
 004C6056    mov        edx,dword ptr [ebp-14]
 004C6059    lea        eax,[esi+14]
 004C605C    call       @LStrAsg
>004C6061    jmp        004C63E4
 004C6066    mov        ax,word ptr [ebx+12]
 004C606A    push       eax
 004C606B    push       dword ptr [ebx+0E]
 004C606E    push       dword ptr [ebx+0A]
 004C6071    lea        eax,[ebp-18]
 004C6074    call       004BF500
 004C6079    mov        edx,dword ptr [ebp-18]
 004C607C    lea        eax,[esi+14]
 004C607F    call       @LStrAsg
>004C6084    jmp        004C63E4
 004C6089    lea        eax,[esi+14]
 004C608C    mov        edx,dword ptr [ebx+14]
 004C608F    call       @LStrAsg
>004C6094    jmp        004C63E4
 004C6099    lea        eax,[esi+14]
 004C609C    mov        edx,dword ptr [ebx+18]
 004C609F    call       @LStrFromWStr
>004C60A4    jmp        004C63E4
 004C60A9    push       dword ptr [ebx+20]
 004C60AC    push       dword ptr [ebx+1C]
 004C60AF    lea        eax,[ebp-1C]
 004C60B2    call       004BFD98
 004C60B7    mov        edx,dword ptr [ebp-1C]
 004C60BA    lea        eax,[esi+14]
 004C60BD    call       @LStrAsg
>004C60C2    jmp        004C63E4
 004C60C7    mov        eax,dword ptr [ebp-4]
 004C60CA    call       004C481C
>004C60CF    jmp        004C63E4
 004C60D4    mov        eax,dword ptr [ebp-4]
 004C60D7    call       004C481C
>004C60DC    jmp        004C63E4
 004C60E1    xor        eax,eax
 004C60E3    mov        al,byte ptr [ebx]
 004C60E5    cmp        eax,8
>004C60E8    ja         004C63E4
 004C60EE    jmp        dword ptr [eax*4+4C60F5]
 004C60EE    dd         4C6119
 004C60EE    dd         4C6126
 004C60EE    dd         4C6150
 004C60EE    dd         4C616E
 004C60EE    dd         4C6191
 004C60EE    dd         4C61A1
 004C60EE    dd         4C61B1
 004C60EE    dd         4C61CF
 004C60EE    dd         4C61DC
 004C6119    lea        eax,[esi+18]
 004C611C    call       @WStrClr
>004C6121    jmp        004C63E4
 004C6126    cmp        byte ptr [ebx+1],0
>004C612A    je         004C613E
 004C612C    lea        eax,[esi+18]
 004C612F    mov        edx,4C6438; 'True\0\0??'
 004C6134    call       @WStrAsg
>004C6139    jmp        004C63E4
 004C613E    lea        eax,[esi+18]
 004C6141    mov        edx,4C6448; 'False\0??\0?'
 004C6146    call       @WStrAsg
>004C614B    jmp        004C63E4
 004C6150    push       dword ptr [ebx+6]
 004C6153    push       dword ptr [ebx+2]
 004C6156    lea        eax,[ebp-20]
 004C6159    call       IntToStr
 004C615E    mov        edx,dword ptr [ebp-20]
 004C6161    lea        eax,[esi+18]
 004C6164    call       @WStrFromLStr
>004C6169    jmp        004C63E4
 004C616E    mov        ax,word ptr [ebx+12]
 004C6172    push       eax
 004C6173    push       dword ptr [ebx+0E]
 004C6176    push       dword ptr [ebx+0A]
 004C6179    lea        eax,[ebp-24]
 004C617C    call       004BF500
 004C6181    mov        edx,dword ptr [ebp-24]
 004C6184    lea        eax,[esi+18]
 004C6187    call       @WStrFromLStr
>004C618C    jmp        004C63E4
 004C6191    lea        eax,[esi+18]
 004C6194    mov        edx,dword ptr [ebx+14]
 004C6197    call       @WStrFromLStr
>004C619C    jmp        004C63E4
 004C61A1    lea        eax,[esi+18]
 004C61A4    mov        edx,dword ptr [ebx+18]
 004C61A7    call       @WStrAsg
>004C61AC    jmp        004C63E4
 004C61B1    push       dword ptr [ebx+20]
 004C61B4    push       dword ptr [ebx+1C]
 004C61B7    lea        eax,[ebp-28]
 004C61BA    call       004BFD98
 004C61BF    mov        edx,dword ptr [ebp-28]
 004C61C2    lea        eax,[esi+18]
 004C61C5    call       @WStrFromLStr
>004C61CA    jmp        004C63E4
 004C61CF    mov        eax,dword ptr [ebp-4]
 004C61D2    call       004C481C
>004C61D7    jmp        004C63E4
 004C61DC    mov        eax,dword ptr [ebp-4]
 004C61DF    call       004C481C
>004C61E4    jmp        004C63E4
 004C61E9    xor        eax,eax
 004C61EB    mov        al,byte ptr [ebx]
 004C61ED    cmp        eax,8
>004C61F0    ja         004C63E4
 004C61F6    jmp        dword ptr [eax*4+4C61FD]
 004C61F6    dd         4C6221
 004C61F6    dd         4C622E
 004C61F6    dd         4C623B
 004C61F6    dd         4C6247
 004C61F6    dd         4C6253
 004C61F6    dd         4C6264
 004C61F6    dd         4C6280
 004C61F6    dd         4C6291
 004C61F6    dd         4C629E
 004C6221    xor        eax,eax
 004C6223    mov        dword ptr [esi+1C],eax
 004C6226    mov        dword ptr [esi+20],eax
>004C6229    jmp        004C63E4
 004C622E    mov        eax,dword ptr [ebp-4]
 004C6231    call       004C481C
>004C6236    jmp        004C63E4
 004C623B    fild       qword ptr [ebx+2]
 004C623E    fstp       qword ptr [esi+1C]
 004C6241    wait
>004C6242    jmp        004C63E4
 004C6247    fld        tbyte ptr [ebx+0A]
 004C624A    fstp       qword ptr [esi+1C]
 004C624D    wait
>004C624E    jmp        004C63E4
 004C6253    mov        eax,dword ptr [ebx+14]
 004C6256    call       004BF8B0
 004C625B    fstp       qword ptr [esi+1C]
 004C625E    wait
>004C625F    jmp        004C63E4
 004C6264    lea        eax,[ebp-2C]
 004C6267    mov        edx,dword ptr [ebx+18]
 004C626A    call       @LStrFromWStr
 004C626F    mov        eax,dword ptr [ebp-2C]
 004C6272    call       004BF8B0
 004C6277    fstp       qword ptr [esi+1C]
 004C627A    wait
>004C627B    jmp        004C63E4
 004C6280    mov        eax,dword ptr [ebx+1C]
 004C6283    mov        dword ptr [esi+1C],eax
 004C6286    mov        eax,dword ptr [ebx+20]
 004C6289    mov        dword ptr [esi+20],eax
>004C628C    jmp        004C63E4
 004C6291    mov        eax,dword ptr [ebp-4]
 004C6294    call       004C481C
>004C6299    jmp        004C63E4
 004C629E    mov        eax,dword ptr [ebp-4]
 004C62A1    call       004C481C
>004C62A6    jmp        004C63E4
 004C62AB    xor        eax,eax
 004C62AD    mov        al,byte ptr [ebx]
 004C62AF    cmp        eax,8
>004C62B2    ja         004C63E4
 004C62B8    jmp        dword ptr [eax*4+4C62BF]
 004C62B8    dd         4C62E3
 004C62B8    dd         4C62ED
 004C62B8    dd         4C62FA
 004C62B8    dd         4C6305
 004C62B8    dd         4C6312
 004C62B8    dd         4C631F
 004C62B8    dd         4C632C
 004C62B8    dd         4C6339
 004C62B8    dd         4C6344
 004C62E3    xor        eax,eax
 004C62E5    mov        dword ptr [esi+24],eax
>004C62E8    jmp        004C63E4
 004C62ED    mov        eax,dword ptr [ebp-4]
 004C62F0    call       004C481C
>004C62F5    jmp        004C63E4
 004C62FA    mov        eax,dword ptr [ebx+2]
 004C62FD    mov        dword ptr [esi+24],eax
>004C6300    jmp        004C63E4
 004C6305    mov        eax,dword ptr [ebp-4]
 004C6308    call       004C481C
>004C630D    jmp        004C63E4
 004C6312    mov        eax,dword ptr [ebp-4]
 004C6315    call       004C481C
>004C631A    jmp        004C63E4
 004C631F    mov        eax,dword ptr [ebp-4]
 004C6322    call       004C481C
>004C6327    jmp        004C63E4
 004C632C    mov        eax,dword ptr [ebp-4]
 004C632F    call       004C481C
>004C6334    jmp        004C63E4
 004C6339    mov        eax,dword ptr [ebx+24]
 004C633C    mov        dword ptr [esi+24],eax
>004C633F    jmp        004C63E4
 004C6344    mov        eax,dword ptr [ebp-4]
 004C6347    call       004C481C
>004C634C    jmp        004C63E4
 004C6351    xor        eax,eax
 004C6353    mov        al,byte ptr [ebx]
 004C6355    cmp        eax,8
>004C6358    ja         004C63E4
 004C635E    jmp        dword ptr [eax*4+4C6365]
 004C635E    dd         4C6389
 004C635E    dd         4C6393
 004C635E    dd         4C639D
 004C635E    dd         4C63A7
 004C635E    dd         4C63B1
 004C635E    dd         4C63BB
 004C635E    dd         4C63C5
 004C635E    dd         4C63CF
 004C635E    dd         4C63D9
 004C6389    lea        eax,[esi+28]
 004C638C    call       @IntfClear
>004C6391    jmp        004C63E4
 004C6393    mov        eax,dword ptr [ebp-4]
 004C6396    call       004C481C
>004C639B    jmp        004C63E4
 004C639D    mov        eax,dword ptr [ebp-4]
 004C63A0    call       004C481C
>004C63A5    jmp        004C63E4
 004C63A7    mov        eax,dword ptr [ebp-4]
 004C63AA    call       004C481C
>004C63AF    jmp        004C63E4
 004C63B1    mov        eax,dword ptr [ebp-4]
 004C63B4    call       004C481C
>004C63B9    jmp        004C63E4
 004C63BB    mov        eax,dword ptr [ebp-4]
 004C63BE    call       004C481C
>004C63C3    jmp        004C63E4
 004C63C5    mov        eax,dword ptr [ebp-4]
 004C63C8    call       004C481C
>004C63CD    jmp        004C63E4
 004C63CF    mov        eax,dword ptr [ebp-4]
 004C63D2    call       004C481C
>004C63D7    jmp        004C63E4
 004C63D9    lea        eax,[esi+28]
 004C63DC    mov        edx,dword ptr [ebx+28]
 004C63DF    call       @IntfCopy
 004C63E4    xor        eax,eax
 004C63E6    pop        edx
 004C63E7    pop        ecx
 004C63E8    pop        ecx
 004C63E9    mov        dword ptr fs:[eax],edx
 004C63EC    push       4C6406
 004C63F1    lea        eax,[ebp-2C]
 004C63F4    mov        edx,0A
 004C63F9    call       @LStrArrayClr
 004C63FE    ret
<004C63FF    jmp        @HandleFinally
<004C6404    jmp        004C63F1
 004C6406    pop        esi
 004C6407    pop        ebx
 004C6408    mov        esp,ebp
 004C640A    pop        ebp
 004C640B    ret        4
*}
//end;

//004C6454
//constructor TZAnyValue.Create(?:TZAnyValue; _Dv__:Boolean);
//begin
{*
 004C6454    push       ebp
 004C6455    mov        ebp,esp
 004C6457    push       ebx
 004C6458    push       esi
 004C6459    push       edi
 004C645A    test       dl,dl
>004C645C    je         004C6466
 004C645E    add        esp,0FFFFFFF0
 004C6461    call       @ClassCreate
 004C6466    mov        esi,ecx
 004C6468    mov        ebx,edx
 004C646A    mov        edi,eax
 004C646C    lea        eax,[edi+10]; TZAnyValue.?f10:TZVariant
 004C646F    mov        edx,esi
 004C6471    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004C6477    call       @CopyRecord
 004C647C    mov        eax,edi
 004C647E    test       bl,bl
>004C6480    je         004C6491
 004C6482    call       @AfterConstruction
 004C6487    pop        dword ptr fs:[0]
 004C648E    add        esp,0C
 004C6491    mov        eax,edi
 004C6493    pop        edi
 004C6494    pop        esi
 004C6495    pop        ebx
 004C6496    pop        ebp
 004C6497    ret
*}
//end;

//004C6498
//constructor TZAnyValue.Create(?:TZAnyValue; _Dv__:Boolean);
//begin
{*
 004C6498    push       ebp
 004C6499    mov        ebp,esp
 004C649B    push       ecx
 004C649C    push       ebx
 004C649D    push       esi
 004C649E    test       dl,dl
>004C64A0    je         004C64AA
 004C64A2    add        esp,0FFFFFFF0
 004C64A5    call       @ClassCreate
 004C64AA    mov        byte ptr [ebp-1],dl
 004C64AD    mov        ebx,eax
 004C64AF    lea        edx,[ebx+10]; TZAnyValue.?f10:TZVariant
 004C64B2    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C64B7    mov        esi,dword ptr [eax]
 004C64B9    call       dword ptr [esi+50]
 004C64BC    mov        eax,ebx
 004C64BE    cmp        byte ptr [ebp-1],0
>004C64C2    je         004C64D3
 004C64C4    call       @AfterConstruction
 004C64C9    pop        dword ptr fs:[0]
 004C64D0    add        esp,0C
 004C64D3    mov        eax,ebx
 004C64D5    pop        esi
 004C64D6    pop        ebx
 004C64D7    pop        ecx
 004C64D8    pop        ebp
 004C64D9    ret
*}
//end;

//004C64DC
//procedure sub_004C64DC(?:?);
//begin
{*
 004C64DC    push       ebp
 004C64DD    mov        ebp,esp
 004C64DF    push       ebx
 004C64E0    push       esi
 004C64E1    mov        esi,edx
 004C64E3    mov        ebx,eax
 004C64E5    lea        ecx,[ebx+10]; TZAnyValue.?f10:TZVariant
 004C64E8    mov        dl,1
 004C64EA    mov        eax,[004C46E8]; TZAnyValue
 004C64EF    call       TZAnyValue.Create; TZAnyValue.Create
 004C64F4    mov        edx,eax
 004C64F6    test       edx,edx
>004C64F8    je         004C64FD
 004C64FA    sub        edx,0FFFFFFF8
 004C64FD    mov        eax,esi
 004C64FF    call       @IntfCopy
 004C6504    pop        esi
 004C6505    pop        ebx
 004C6506    pop        ebp
 004C6507    ret
*}
//end;

//004C6508
//function sub_004C6508(?:?):?;
//begin
{*
 004C6508    push       ebp
 004C6509    mov        ebp,esp
 004C650B    mov        ecx,6
 004C6510    push       0
 004C6512    push       0
 004C6514    dec        ecx
<004C6515    jne        004C6510
 004C6517    push       ebx
 004C6518    push       esi
 004C6519    mov        ebx,edx
 004C651B    mov        esi,eax
 004C651D    xor        eax,eax
 004C651F    push       ebp
 004C6520    push       4C65A3
 004C6525    push       dword ptr fs:[eax]
 004C6528    mov        dword ptr fs:[eax],esp
 004C652B    test       ebx,ebx
>004C652D    je         004C657D
 004C652F    lea        eax,[ebp-4]
 004C6532    call       @IntfClear
 004C6537    push       eax
 004C6538    push       4C65B4
 004C653D    push       ebx
 004C653E    mov        eax,dword ptr [ebx]
 004C6540    call       dword ptr [eax]
 004C6542    test       eax,eax
>004C6544    jne        004C6570
 004C6546    lea        edx,[ebp-30]
 004C6549    mov        eax,dword ptr [ebp-4]
 004C654C    mov        ecx,dword ptr [eax]
 004C654E    call       dword ptr [ecx+24]
 004C6551    lea        ecx,[ebp-30]
 004C6554    lea        edx,[esi+10]; TZAnyValue.?f10:TZVariant
 004C6557    mov        eax,[0061DCDC]; gvar_0061DCDC:IInterface
 004C655C    mov        ebx,dword ptr [eax]
 004C655E    call       dword ptr [ebx+20]
 004C6561    test       eax,eax
 004C6563    sete       bl
 004C6566    lea        eax,[ebp-4]
 004C6569    call       @IntfClear
>004C656E    jmp        004C657F
 004C6570    mov        edx,ebx
 004C6572    mov        eax,esi
 004C6574    call       004BCA48
 004C6579    mov        ebx,eax
>004C657B    jmp        004C657F
 004C657D    xor        ebx,ebx
 004C657F    xor        eax,eax
 004C6581    pop        edx
 004C6582    pop        ecx
 004C6583    pop        ecx
 004C6584    mov        dword ptr fs:[eax],edx
 004C6587    push       4C65AA
 004C658C    lea        eax,[ebp-30]
 004C658F    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004C6595    call       @FinalizeRecord
 004C659A    lea        eax,[ebp-4]
 004C659D    call       @IntfClear
 004C65A2    ret
<004C65A3    jmp        @HandleFinally
<004C65A8    jmp        004C658C
 004C65AA    mov        eax,ebx
 004C65AC    pop        esi
 004C65AD    pop        ebx
 004C65AE    mov        esp,ebp
 004C65B0    pop        ebp
 004C65B1    ret
*}
//end;

//004C65E4
//procedure sub_004C65E4(?:?);
//begin
{*
 004C65E4    push       ebp
 004C65E5    mov        ebp,esp
 004C65E7    push       ebx
 004C65E8    push       esi
 004C65E9    mov        esi,edx
 004C65EB    mov        ebx,eax
 004C65ED    mov        edx,esi
 004C65EF    mov        eax,ebx
 004C65F1    call       004C6654
 004C65F6    pop        esi
 004C65F7    pop        ebx
 004C65F8    pop        ebp
 004C65F9    ret
*}
//end;

//004C6654
//procedure sub_004C6654(?:TZAnyValue; ?:?);
//begin
{*
 004C6654    push       ebp
 004C6655    mov        ebp,esp
 004C6657    push       ebx
 004C6658    push       esi
 004C6659    mov        esi,edx
 004C665B    mov        ebx,eax
 004C665D    mov        ecx,esi
 004C665F    lea        edx,[ebx+10]; TZAnyValue.?f10:TZVariant
 004C6662    mov        eax,[0061DCDC]; gvar_0061DCDC:IInterface
 004C6667    mov        ebx,dword ptr [eax]
 004C6669    call       dword ptr [ebx+30]
 004C666C    pop        esi
 004C666D    pop        ebx
 004C666E    pop        ebp
 004C666F    ret
*}
//end;

//004C66C0
//procedure sub_004C66C0(?:Integer; ?:AnsiString);
//begin
{*
 004C66C0    push       ebp
 004C66C1    mov        ebp,esp
 004C66C3    push       0
 004C66C5    push       ebx
 004C66C6    push       esi
 004C66C7    mov        esi,edx
 004C66C9    mov        ebx,eax
 004C66CB    xor        eax,eax
 004C66CD    push       ebp
 004C66CE    push       4C67D7
 004C66D3    push       dword ptr fs:[eax]
 004C66D6    mov        dword ptr fs:[eax],esp
 004C66D9    xor        eax,eax
 004C66DB    mov        al,byte ptr [ebx]
 004C66DD    cmp        eax,8
>004C66E0    ja         004C67BA
 004C66E6    jmp        dword ptr [eax*4+4C66ED]
 004C66E6    dd         4C67BA
 004C66E6    dd         4C6711
 004C66E6    dd         4C6720
 004C66E6    dd         4C6770
 004C66E6    dd         4C677C
 004C66E6    dd         4C6788
 004C66E6    dd         4C6794
 004C66E6    dd         4C67A0
 004C66E6    dd         4C67AE
 004C6711    mov        eax,esi
 004C6713    mov        dl,byte ptr [ebx+1]
 004C6716    call       @VarFromBool
>004C671B    jmp        004C67C1
 004C6720    cmp        dword ptr [ebx+6],0FFFFFFFF
>004C6724    jne        004C6731
 004C6726    cmp        dword ptr [ebx+2],80000001
>004C672D    jbe        004C6756
>004C672F    jmp        004C6733
>004C6731    jle        004C6756
 004C6733    cmp        dword ptr [ebx+6],0
>004C6737    jne        004C6744
 004C6739    cmp        dword ptr [ebx+2],7FFFFFFF
>004C6740    jae        004C6756
>004C6742    jmp        004C6746
>004C6744    jge        004C6756
 004C6746    mov        eax,dword ptr [ebx+2]
 004C6749    mov        edx,eax
 004C674B    mov        eax,esi
 004C674D    mov        cl,0FC
 004C674F    call       @VarFromInt
>004C6754    jmp        004C67C1
 004C6756    push       dword ptr [ebx+6]
 004C6759    push       dword ptr [ebx+2]
 004C675C    lea        eax,[ebp-4]
 004C675F    call       IntToStr
 004C6764    mov        edx,dword ptr [ebp-4]
 004C6767    mov        eax,esi
 004C6769    call       @VarFromLStr
>004C676E    jmp        004C67C1
 004C6770    fld        tbyte ptr [ebx+0A]
 004C6773    mov        eax,esi
 004C6775    call       @VarFromReal
>004C677A    jmp        004C67C1
 004C677C    mov        eax,esi
 004C677E    mov        edx,dword ptr [ebx+14]
 004C6781    call       @VarFromLStr
>004C6786    jmp        004C67C1
 004C6788    mov        eax,esi
 004C678A    mov        edx,dword ptr [ebx+18]
 004C678D    call       @VarFromWStr
>004C6792    jmp        004C67C1
 004C6794    fld        qword ptr [ebx+1C]
 004C6797    mov        eax,esi
 004C6799    call       @VarFromTDateTime
>004C679E    jmp        004C67C1
 004C67A0    mov        eax,esi
 004C67A2    mov        edx,dword ptr [ebx+24]
 004C67A5    mov        cl,0FC
 004C67A7    call       @VarFromInt
>004C67AC    jmp        004C67C1
 004C67AE    mov        eax,esi
 004C67B0    mov        edx,dword ptr [ebx+28]
 004C67B3    call       @VarFromIntf
>004C67B8    jmp        004C67C1
 004C67BA    mov        eax,esi
 004C67BC    call       Null
 004C67C1    xor        eax,eax
 004C67C3    pop        edx
 004C67C4    pop        ecx
 004C67C5    pop        ecx
 004C67C6    mov        dword ptr fs:[eax],edx
 004C67C9    push       4C67DE
 004C67CE    lea        eax,[ebp-4]
 004C67D1    call       @LStrClr
 004C67D6    ret
<004C67D7    jmp        @HandleFinally
<004C67DC    jmp        004C67CE
 004C67DE    pop        esi
 004C67DF    pop        ebx
 004C67E0    pop        ecx
 004C67E1    pop        ebp
 004C67E2    ret
*}
//end;

//004C67E4
//procedure sub_004C67E4(?:TZVariantDynArray; ?:AnsiString);
//begin
{*
 004C67E4    push       ebp
 004C67E5    mov        ebp,esp
 004C67E7    xor        ecx,ecx
 004C67E9    push       ecx
 004C67EA    push       ecx
 004C67EB    push       ecx
 004C67EC    push       ecx
 004C67ED    push       ecx
 004C67EE    push       ecx
 004C67EF    push       ecx
 004C67F0    push       ebx
 004C67F1    push       esi
 004C67F2    push       edi
 004C67F3    mov        dword ptr [ebp-4],edx
 004C67F6    mov        edi,eax
 004C67F8    xor        eax,eax
 004C67FA    push       ebp
 004C67FB    push       4C6881
 004C6800    push       dword ptr fs:[eax]
 004C6803    mov        dword ptr fs:[eax],esp
 004C6806    mov        eax,edi
 004C6808    call       @DynArrayLength
 004C680D    mov        ebx,eax
 004C680F    mov        eax,dword ptr [ebp-4]
 004C6812    push       eax
 004C6813    xor        eax,eax
 004C6815    mov        dword ptr [ebp-0C],eax
 004C6818    mov        esi,ebx
 004C681A    sub        esi,1
>004C681D    jno        004C6824
 004C681F    call       @IntOver
 004C6824    mov        dword ptr [ebp-8],esi
 004C6827    lea        eax,[ebp-0C]
 004C682A    mov        cx,0C
 004C682E    mov        edx,1
 004C6833    call       VarArrayCreate
 004C6838    test       esi,esi
>004C683A    jl         004C686B
 004C683C    inc        esi
 004C683D    xor        ebx,ebx
 004C683F    push       ebx
 004C6840    push       1
 004C6842    imul       eax,ebx,0B
>004C6845    jno        004C684C
 004C6847    call       @IntOver
 004C684C    lea        eax,[edi+eax*4]
 004C684F    lea        edx,[ebp-1C]
 004C6852    call       004C66C0
 004C6857    lea        eax,[ebp-1C]
 004C685A    push       eax
 004C685B    mov        eax,dword ptr [ebp-4]
 004C685E    push       eax
 004C685F    call       @VarArrayPut
 004C6864    add        esp,10
 004C6867    inc        ebx
 004C6868    dec        esi
<004C6869    jne        004C683F
 004C686B    xor        eax,eax
 004C686D    pop        edx
 004C686E    pop        ecx
 004C686F    pop        ecx
 004C6870    mov        dword ptr fs:[eax],edx
 004C6873    push       4C6888
 004C6878    lea        eax,[ebp-1C]
 004C687B    call       @VarClr
 004C6880    ret
<004C6881    jmp        @HandleFinally
<004C6886    jmp        004C6878
 004C6888    pop        edi
 004C6889    pop        esi
 004C688A    pop        ebx
 004C688B    mov        esp,ebp
 004C688D    pop        ebp
 004C688E    ret
*}
//end;

//004C6890
//procedure sub_004C6890(?:Variant; ?:TZVariant);
//begin
{*
 004C6890    push       ebp
 004C6891    mov        ebp,esp
 004C6893    push       0
 004C6895    push       0
 004C6897    push       0
 004C6899    push       ebx
 004C689A    push       esi
 004C689B    mov        esi,edx
 004C689D    mov        ebx,eax
 004C689F    xor        eax,eax
 004C68A1    push       ebp
 004C68A2    push       4C6A5A
 004C68A7    push       dword ptr fs:[eax]
 004C68AA    mov        dword ptr fs:[eax],esp
 004C68AD    mov        eax,ebx
 004C68AF    call       VarType
 004C68B4    movzx      eax,ax
 004C68B7    cmp        eax,0D
>004C68BA    jg         004C6902
>004C68BC    je         004C69A8
 004C68C2    cmp        eax,0B
>004C68C5    ja         004C6A28
 004C68CB    jmp        dword ptr [eax*4+4C68D2]
 004C68CB    dd         4C6A28
 004C68CB    dd         4C6A28
 004C68CB    dd         4C6936
 004C68CB    dd         4C6936
 004C68CB    dd         4C6989
 004C68CB    dd         4C6989
 004C68CB    dd         4C6989
 004C68CB    dd         4C69DE
 004C68CB    dd         4C69C3
 004C68CB    dd         4C6A28
 004C68CB    dd         4C6A28
 004C68CB    dd         4C6951
 004C6902    cmp        eax,12
>004C6905    jge        004C6918
 004C6907    sub        eax,10
>004C690A    je         004C69FA
 004C6910    dec        eax
>004C6911    je         004C6936
>004C6913    jmp        004C6A28
 004C6918    add        eax,0FFFFFFEE
 004C691B    sub        eax,2
>004C691E    jb         004C69FA
>004C6924    je         004C6A11
 004C692A    sub        eax,0EC
>004C692F    je         004C696B
>004C6931    jmp        004C6A28
 004C6936    mov        eax,ebx
 004C6938    call       @VarToInteger
 004C693D    cdq
 004C693E    push       edx
 004C693F    push       eax
 004C6940    mov        edx,esi
 004C6942    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6947    mov        ecx,dword ptr [eax]
 004C6949    call       dword ptr [ecx+48]
>004C694C    jmp        004C6A34
 004C6951    mov        eax,ebx
 004C6953    call       @VarToBool
 004C6958    mov        ecx,eax
 004C695A    mov        edx,esi
 004C695C    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6961    mov        ebx,dword ptr [eax]
 004C6963    call       dword ptr [ebx+44]
>004C6966    jmp        004C6A34
 004C696B    lea        eax,[ebp-4]
 004C696E    mov        edx,ebx
 004C6970    call       @VarToLStr
 004C6975    mov        ecx,dword ptr [ebp-4]
 004C6978    mov        edx,esi
 004C697A    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C697F    mov        ebx,dword ptr [eax]
 004C6981    call       dword ptr [ebx+50]
>004C6984    jmp        004C6A34
 004C6989    mov        eax,ebx
 004C698B    call       @VarToReal
 004C6990    add        esp,0FFFFFFF4
 004C6993    fstp       tbyte ptr [esp]
 004C6996    wait
 004C6997    mov        edx,esi
 004C6999    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C699E    mov        ecx,dword ptr [eax]
 004C69A0    call       dword ptr [ecx+4C]
>004C69A3    jmp        004C6A34
 004C69A8    lea        eax,[ebp-8]
 004C69AB    mov        edx,ebx
 004C69AD    call       @VarToIntf
 004C69B2    mov        ecx,dword ptr [ebp-8]
 004C69B5    mov        edx,esi
 004C69B7    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C69BC    mov        ebx,dword ptr [eax]
 004C69BE    call       dword ptr [ebx+60]
>004C69C1    jmp        004C6A34
 004C69C3    lea        eax,[ebp-0C]
 004C69C6    mov        edx,ebx
 004C69C8    call       @VarToWStr
 004C69CD    mov        ecx,dword ptr [ebp-0C]
 004C69D0    mov        edx,esi
 004C69D2    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C69D7    mov        ebx,dword ptr [eax]
 004C69D9    call       dword ptr [ebx+54]
>004C69DC    jmp        004C6A34
 004C69DE    mov        eax,ebx
 004C69E0    call       @VarToReal
 004C69E5    add        esp,0FFFFFFF8
 004C69E8    fstp       qword ptr [esp]
 004C69EB    wait
 004C69EC    mov        edx,esi
 004C69EE    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C69F3    mov        ecx,dword ptr [eax]
 004C69F5    call       dword ptr [ecx+58]
>004C69F8    jmp        004C6A34
 004C69FA    mov        eax,ebx
 004C69FC    call       @VarToInt64
 004C6A01    push       edx
 004C6A02    push       eax
 004C6A03    mov        edx,esi
 004C6A05    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6A0A    mov        ecx,dword ptr [eax]
 004C6A0C    call       dword ptr [ecx+48]
>004C6A0F    jmp        004C6A34
 004C6A11    mov        eax,ebx
 004C6A13    call       @VarToInt64
 004C6A18    push       edx
 004C6A19    push       eax
 004C6A1A    mov        edx,esi
 004C6A1C    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6A21    mov        ecx,dword ptr [eax]
 004C6A23    call       dword ptr [ecx+48]
>004C6A26    jmp        004C6A34
 004C6A28    mov        edx,esi
 004C6A2A    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6A2F    mov        ecx,dword ptr [eax]
 004C6A31    call       dword ptr [ecx+10]
 004C6A34    xor        eax,eax
 004C6A36    pop        edx
 004C6A37    pop        ecx
 004C6A38    pop        ecx
 004C6A39    mov        dword ptr fs:[eax],edx
 004C6A3C    push       4C6A61
 004C6A41    lea        eax,[ebp-0C]
 004C6A44    call       @WStrClr
 004C6A49    lea        eax,[ebp-8]
 004C6A4C    call       @IntfClear
 004C6A51    lea        eax,[ebp-4]
 004C6A54    call       @LStrClr
 004C6A59    ret
<004C6A5A    jmp        @HandleFinally
<004C6A5F    jmp        004C6A41
 004C6A61    pop        esi
 004C6A62    pop        ebx
 004C6A63    mov        esp,ebp
 004C6A65    pop        ebp
 004C6A66    ret
*}
//end;

//004C6A68
//procedure sub_004C6A68(?:Variant; ?:TZVariantDynArray);
//begin
{*
 004C6A68    push       ebp
 004C6A69    mov        ebp,esp
 004C6A6B    mov        ecx,0E
 004C6A70    push       0
 004C6A72    push       0
 004C6A74    dec        ecx
<004C6A75    jne        004C6A70
 004C6A77    push       ebx
 004C6A78    push       esi
 004C6A79    push       edi
 004C6A7A    mov        dword ptr [ebp-4],edx
 004C6A7D    mov        edi,eax
 004C6A7F    xor        eax,eax
 004C6A81    push       ebp
 004C6A82    push       4C6BB9
 004C6A87    push       dword ptr fs:[eax]
 004C6A8A    mov        dword ptr fs:[eax],esp
 004C6A8D    mov        eax,edi
 004C6A8F    call       VarIsArray
 004C6A94    test       al,al
>004C6A96    je         004C6B43
 004C6A9C    mov        eax,edi
 004C6A9E    mov        edx,1
 004C6AA3    call       VarArrayLowBound
 004C6AA8    mov        dword ptr [ebp-8],eax
 004C6AAB    mov        eax,edi
 004C6AAD    mov        edx,1
 004C6AB2    call       VarArrayHighBound
 004C6AB7    mov        ebx,eax
 004C6AB9    mov        eax,ebx
 004C6ABB    sub        eax,dword ptr [ebp-8]
>004C6ABE    jno        004C6AC5
 004C6AC0    call       @IntOver
 004C6AC5    add        eax,1
>004C6AC8    jno        004C6ACF
 004C6ACA    call       @IntOver
 004C6ACF    push       eax
 004C6AD0    mov        eax,dword ptr [ebp-4]
 004C6AD3    mov        ecx,1
 004C6AD8    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 004C6ADE    call       @DynArraySetLength
 004C6AE3    add        esp,4
 004C6AE6    mov        eax,dword ptr [ebp-8]
 004C6AE9    mov        esi,ebx
 004C6AEB    sub        esi,eax
>004C6AED    jl         004C6B87
 004C6AF3    inc        esi
 004C6AF4    mov        ebx,eax
 004C6AF6    push       ebx
 004C6AF7    push       1
 004C6AF9    push       edi
 004C6AFA    lea        eax,[ebp-44]
 004C6AFD    push       eax
 004C6AFE    call       @VarArrayGet
 004C6B03    add        esp,10
 004C6B06    lea        eax,[ebp-44]
 004C6B09    lea        edx,[ebp-34]
 004C6B0C    call       004C6890
 004C6B11    lea        edx,[ebp-34]
 004C6B14    mov        eax,ebx
 004C6B16    sub        eax,dword ptr [ebp-8]
>004C6B19    jno        004C6B20
 004C6B1B    call       @IntOver
 004C6B20    imul       eax,eax,0B
>004C6B23    jno        004C6B2A
 004C6B25    call       @IntOver
 004C6B2A    mov        ecx,dword ptr [ebp-4]
 004C6B2D    mov        ecx,dword ptr [ecx]
 004C6B2F    lea        eax,[ecx+eax*4]
 004C6B32    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004C6B38    call       @CopyRecord
 004C6B3D    inc        ebx
 004C6B3E    dec        esi
<004C6B3F    jne        004C6AF6
>004C6B41    jmp        004C6B87
 004C6B43    push       1
 004C6B45    mov        eax,dword ptr [ebp-4]
 004C6B48    mov        ecx,1
 004C6B4D    mov        edx,dword ptr ds:[4C41A4]; TZVariantDynArray
 004C6B53    call       @DynArraySetLength
 004C6B58    add        esp,4
 004C6B5B    lea        edx,[ebp-70]
 004C6B5E    mov        eax,edi
 004C6B60    call       004C6890
 004C6B65    lea        edx,[ebp-70]
 004C6B68    xor        eax,eax
 004C6B6A    imul       eax,eax,0B
>004C6B6D    jno        004C6B74
 004C6B6F    call       @IntOver
 004C6B74    mov        ecx,dword ptr [ebp-4]
 004C6B77    mov        ecx,dword ptr [ecx]
 004C6B79    lea        eax,[ecx+eax*4]
 004C6B7C    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 004C6B82    call       @CopyRecord
 004C6B87    xor        eax,eax
 004C6B89    pop        edx
 004C6B8A    pop        ecx
 004C6B8B    pop        ecx
 004C6B8C    mov        dword ptr fs:[eax],edx
 004C6B8F    push       4C6BC0
 004C6B94    lea        eax,[ebp-70]
 004C6B97    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004C6B9D    call       @FinalizeRecord
 004C6BA2    lea        eax,[ebp-44]
 004C6BA5    call       @VarClr
 004C6BAA    lea        eax,[ebp-34]
 004C6BAD    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004C6BB3    call       @FinalizeRecord
 004C6BB8    ret
<004C6BB9    jmp        @HandleFinally
<004C6BBE    jmp        004C6B94
 004C6BC0    pop        edi
 004C6BC1    pop        esi
 004C6BC2    pop        ebx
 004C6BC3    mov        esp,ebp
 004C6BC5    pop        ebp
 004C6BC6    ret
*}
//end;

Initialization
//004C6C30
{*
 004C6C30    push       ebp
 004C6C31    mov        ebp,esp
 004C6C33    xor        eax,eax
 004C6C35    push       ebp
 004C6C36    push       4C6CA5
 004C6C3B    push       dword ptr fs:[eax]
 004C6C3E    mov        dword ptr fs:[eax],esp
 004C6C41    sub        dword ptr ds:[61DD0C],1
>004C6C48    jae        004C6C97
 004C6C4A    mov        dl,1
 004C6C4C    mov        eax,[004C4490]; TZDefaultVariantManager
 004C6C51    call       TObject.Create; TZDefaultVariantManager.Create
 004C6C56    mov        edx,eax
 004C6C58    test       edx,edx
>004C6C5A    je         004C6C5F
 004C6C5C    sub        edx,0FFFFFFF4
 004C6C5F    mov        eax,61DCD8; gvar_0061DCD8:IInterface
 004C6C64    call       @IntfCopy
 004C6C69    mov        dl,1
 004C6C6B    mov        eax,[004C44F8]; TZSoftVariantManager
 004C6C70    call       TObject.Create; TZSoftVariantManager.Create
 004C6C75    mov        edx,eax
 004C6C77    test       edx,edx
>004C6C79    je         004C6C7E
 004C6C7B    sub        edx,0FFFFFFF4
 004C6C7E    mov        eax,61DCDC; gvar_0061DCDC:IInterface
 004C6C83    call       @IntfCopy
 004C6C88    mov        edx,61DCE0; gvar_0061DCE0:TZVariant
 004C6C8D    mov        eax,[0061DCD8]; gvar_0061DCD8:IInterface
 004C6C92    mov        ecx,dword ptr [eax]
 004C6C94    call       dword ptr [ecx+10]
 004C6C97    xor        eax,eax
 004C6C99    pop        edx
 004C6C9A    pop        ecx
 004C6C9B    pop        ecx
 004C6C9C    mov        dword ptr fs:[eax],edx
 004C6C9F    push       4C6CAC
 004C6CA4    ret
<004C6CA5    jmp        @HandleFinally
<004C6CAA    jmp        004C6CA4
 004C6CAC    pop        ebp
 004C6CAD    ret
*}
Finalization
//004C6BC8
{*
 004C6BC8    push       ebp
 004C6BC9    mov        ebp,esp
 004C6BCB    xor        eax,eax
 004C6BCD    push       ebp
 004C6BCE    push       4C6C27
 004C6BD3    push       dword ptr fs:[eax]
 004C6BD6    mov        dword ptr fs:[eax],esp
 004C6BD9    inc        dword ptr ds:[61DD0C]
>004C6BDF    jne        004C6C19
 004C6BE1    mov        eax,61DCD8; gvar_0061DCD8:IInterface
 004C6BE6    call       @IntfClear
 004C6BEB    mov        eax,61DCDC; gvar_0061DCDC:IInterface
 004C6BF0    call       @IntfClear
 004C6BF5    mov        eax,61DCE0; gvar_0061DCE0:TZVariant
 004C6BFA    mov        edx,dword ptr ds:[4C4174]; TZVariant
 004C6C00    call       @FinalizeRecord
 004C6C05    mov        eax,61DCDC; gvar_0061DCDC:IInterface
 004C6C0A    call       @IntfClear
 004C6C0F    mov        eax,61DCD8; gvar_0061DCD8:IInterface
 004C6C14    call       @IntfClear
 004C6C19    xor        eax,eax
 004C6C1B    pop        edx
 004C6C1C    pop        ecx
 004C6C1D    pop        ecx
 004C6C1E    mov        dword ptr fs:[eax],edx
 004C6C21    push       4C6C2E
 004C6C26    ret
<004C6C27    jmp        @HandleFinally
<004C6C2C    jmp        004C6C26
 004C6C2E    pop        ebp
 004C6C2F    ret
*}
end.