{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZGenericSqlAnalyser;

interface

uses
  Classes, Windows, Graphics, ZClasses;

type
  TZStatementSection = class(TObject)
  public
    f4:String;//f4
    f8:dword;//f8
    destructor Destroy; virtual;
  end;
  TZGenericStatementAnalyser = class(TZAbstractObject)
  public
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    destructor Destroy; virtual;
    //constructor Create(?:TZGenericStatementAnalyser; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//004C2D5C
destructor TZStatementSection.Destroy;
begin
{*
 004C2D5C    push       ebp
 004C2D5D    mov        ebp,esp
 004C2D5F    push       ebx
 004C2D60    push       esi
 004C2D61    call       @BeforeDestruction
 004C2D66    mov        ebx,edx
 004C2D68    mov        esi,eax
 004C2D6A    mov        eax,dword ptr [esi+8]; TZStatementSection.?f8:dword
 004C2D6D    call       TObject.Free
 004C2D72    mov        edx,ebx
 004C2D74    and        dl,0FC
 004C2D77    mov        eax,esi
 004C2D79    call       TObject.Destroy
 004C2D7E    test       bl,bl
>004C2D80    jle        004C2D89
 004C2D82    mov        eax,esi
 004C2D84    call       @ClassDestroy
 004C2D89    pop        esi
 004C2D8A    pop        ebx
 004C2D8B    pop        ebp
 004C2D8C    ret
*}
end;

//004C2EF8
//constructor TZGenericStatementAnalyser.Create(?:TZGenericStatementAnalyser; _Dv__:Boolean);
//begin
{*
 004C2EF8    push       ebp
 004C2EF9    mov        ebp,esp
 004C2EFB    push       ebx
 004C2EFC    push       esi
 004C2EFD    test       dl,dl
>004C2EFF    je         004C2F09
 004C2F01    add        esp,0FFFFFFF0
 004C2F04    call       @ClassCreate
 004C2F09    mov        ebx,edx
 004C2F0B    mov        esi,eax
 004C2F0D    mov        edx,61569C; gvar_0061569C:array[13] of String
 004C2F12    mov        ecx,0C
 004C2F17    mov        eax,esi
 004C2F19    call       004C2FC4
 004C2F1E    mov        dword ptr [esi+10],eax; TZGenericStatementAnalyser.?f10:dword
 004C2F21    mov        edx,6156D0; gvar_006156D0:array[2] of String
 004C2F26    mov        ecx,1
 004C2F2B    mov        eax,esi
 004C2F2D    call       004C2FC4
 004C2F32    mov        dword ptr [esi+14],eax; TZGenericStatementAnalyser.?f14:dword
 004C2F35    mov        edx,6156D8; gvar_006156D8:array[6] of String
 004C2F3A    mov        ecx,5
 004C2F3F    mov        eax,esi
 004C2F41    call       004C2FC4
 004C2F46    mov        dword ptr [esi+18],eax; TZGenericStatementAnalyser.?f18:dword
 004C2F49    mov        edx,6156F0; gvar_006156F0:array[1] of String
 004C2F4E    xor        ecx,ecx
 004C2F50    mov        eax,esi
 004C2F52    call       004C2FC4
 004C2F57    mov        dword ptr [esi+1C],eax; TZGenericStatementAnalyser.?f1C:dword
 004C2F5A    mov        eax,esi
 004C2F5C    test       bl,bl
>004C2F5E    je         004C2F6F
 004C2F60    call       @AfterConstruction
 004C2F65    pop        dword ptr fs:[0]
 004C2F6C    add        esp,0C
 004C2F6F    mov        eax,esi
 004C2F71    pop        esi
 004C2F72    pop        ebx
 004C2F73    pop        ebp
 004C2F74    ret
*}
//end;

//004C2F78
destructor TZGenericStatementAnalyser.Destroy;
begin
{*
 004C2F78    push       ebp
 004C2F79    mov        ebp,esp
 004C2F7B    push       ebx
 004C2F7C    push       esi
 004C2F7D    call       @BeforeDestruction
 004C2F82    mov        ebx,edx
 004C2F84    mov        esi,eax
 004C2F86    mov        eax,dword ptr [esi+10]; TZGenericStatementAnalyser.?f10:dword
 004C2F89    call       TObject.Free
 004C2F8E    mov        eax,dword ptr [esi+14]; TZGenericStatementAnalyser.?f14:dword
 004C2F91    call       TObject.Free
 004C2F96    mov        eax,dword ptr [esi+18]; TZGenericStatementAnalyser.?f18:dword
 004C2F99    call       TObject.Free
 004C2F9E    mov        eax,dword ptr [esi+1C]; TZGenericStatementAnalyser.?f1C:dword
 004C2FA1    call       TObject.Free
 004C2FA6    mov        edx,ebx
 004C2FA8    and        dl,0FC
 004C2FAB    mov        eax,esi
 004C2FAD    call       TObject.Destroy
 004C2FB2    test       bl,bl
>004C2FB4    jle        004C2FBD
 004C2FB6    mov        eax,esi
 004C2FB8    call       @ClassDestroy
 004C2FBD    pop        esi
 004C2FBE    pop        ebx
 004C2FBF    pop        ebp
 004C2FC0    ret
*}
end;

//004C2FC4
//function sub_004C2FC4(?:TZGenericStatementAnalyser; ?:array[13] of String; ?:?):?;
//begin
{*
 004C2FC4    push       ebp
 004C2FC5    mov        ebp,esp
 004C2FC7    add        esp,0FFFFFFF8
 004C2FCA    push       ebx
 004C2FCB    push       esi
 004C2FCC    push       edi
 004C2FCD    mov        edi,ecx
 004C2FCF    mov        dword ptr [ebp-4],edx
 004C2FD2    mov        dl,1
 004C2FD4    mov        eax,[0041C8E4]; TStringList
 004C2FD9    call       TObject.Create; TStringList.Create
 004C2FDE    mov        dword ptr [ebp-8],eax
 004C2FE1    mov        ebx,edi
 004C2FE3    test       ebx,ebx
>004C2FE5    jl         004C3009
 004C2FE7    inc        ebx
 004C2FE8    xor        esi,esi
 004C2FEA    test       esi,esi
>004C2FEC    jl         004C2FF2
 004C2FEE    cmp        esi,edi
>004C2FF0    jle        004C2FF7
 004C2FF2    call       @BoundErr
 004C2FF7    mov        eax,dword ptr [ebp-4]
 004C2FFA    mov        edx,dword ptr [eax+esi*4]
 004C2FFD    mov        eax,dword ptr [ebp-8]
 004C3000    mov        ecx,dword ptr [eax]
 004C3002    call       dword ptr [ecx+38]; TStringList.Add
 004C3005    inc        esi
 004C3006    dec        ebx
<004C3007    jne        004C2FEA
 004C3009    mov        eax,dword ptr [ebp-8]
 004C300C    pop        edi
 004C300D    pop        esi
 004C300E    pop        ebx
 004C300F    pop        ecx
 004C3010    pop        ecx
 004C3011    pop        ebp
 004C3012    ret
*}
//end;

Initialization
Finalization
//004C3F74
{*
 004C3F74    push       ebp
 004C3F75    mov        ebp,esp
 004C3F77    xor        eax,eax
 004C3F79    push       ebp
 004C3F7A    push       4C3FEF
 004C3F7F    push       dword ptr fs:[eax]
 004C3F82    mov        dword ptr fs:[eax],esp
 004C3F85    inc        dword ptr ds:[61DCD0]
>004C3F8B    jne        004C3FE1
 004C3F8D    mov        eax,6156F0; gvar_006156F0:array[1] of String
 004C3F92    mov        ecx,1
 004C3F97    mov        edx,dword ptr ds:[4010F8]; String
 004C3F9D    call       @FinalizeArray
 004C3FA2    mov        eax,6156D8; gvar_006156D8:array[6] of String
 004C3FA7    mov        ecx,6
 004C3FAC    mov        edx,dword ptr ds:[4010F8]; String
 004C3FB2    call       @FinalizeArray
 004C3FB7    mov        eax,6156D0; gvar_006156D0:array[2] of String
 004C3FBC    mov        ecx,2
 004C3FC1    mov        edx,dword ptr ds:[4010F8]; String
 004C3FC7    call       @FinalizeArray
 004C3FCC    mov        eax,61569C; gvar_0061569C:array[13] of String
 004C3FD1    mov        ecx,0D
 004C3FD6    mov        edx,dword ptr ds:[4010F8]; String
 004C3FDC    call       @FinalizeArray
 004C3FE1    xor        eax,eax
 004C3FE3    pop        edx
 004C3FE4    pop        ecx
 004C3FE5    pop        ecx
 004C3FE6    mov        dword ptr fs:[eax],edx
 004C3FE9    push       4C3FF6
 004C3FEE    ret
<004C3FEF    jmp        @HandleFinally
<004C3FF4    jmp        004C3FEE
 004C3FF6    pop        ebp
 004C3FF7    ret
*}
end.