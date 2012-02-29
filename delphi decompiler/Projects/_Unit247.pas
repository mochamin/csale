{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit247;

interface

uses
  Classes, Windows, Graphics;


implementation

//005D859C
//procedure sub_005D859C(?:TForm);
//begin
{*
 005D859C    push       ecx
 005D859D    mov        dword ptr [esp],eax
 005D85A0    cmp        dword ptr [esp],0
>005D85A4    jne        005D85C1
 005D85A6    mov        ecx,esp
 005D85A8    mov        eax,[0061BD04]; ^Application:TApplication
 005D85AD    mov        eax,dword ptr [eax]
 005D85AF    call       TApplication.CreateForm
 005D85B4    mov        eax,dword ptr [esp]
 005D85B7    mov        edx,dword ptr [eax]
 005D85B9    call       dword ptr [edx+0EC]
 005D85BF    pop        edx
 005D85C0    ret
 005D85C1    mov        eax,dword ptr [esp]
 005D85C4    mov        edx,dword ptr [eax]
 005D85C6    call       dword ptr [edx+0EC]
 005D85CC    pop        edx
 005D85CD    ret
*}
//end;

//005D85D0
//procedure sub_005D85D0(?:TZQuery);
//begin
{*
 005D85D0    push       ebx
 005D85D1    mov        ebx,eax
 005D85D3    push       0
 005D85D5    mov        cx,word ptr ds:[5D8600]; 0x3
 005D85DC    mov        dl,3
 005D85DE    mov        eax,5D860C; 'Hapus Data?'
 005D85E3    call       MessageDlg
 005D85E8    cmp        eax,6
>005D85EB    jne        005D85FB
 005D85ED    mov        eax,ebx
 005D85EF    call       TDataSet.Delete
 005D85F4    mov        eax,ebx
 005D85F6    call       0056F648
 005D85FB    pop        ebx
 005D85FC    ret
*}
//end;

//005D8618
//procedure sub_005D8618(?:TZReadOnlyQuery);
//begin
{*
 005D8618    push       ebx
 005D8619    mov        ebx,eax
 005D861B    mov        eax,ebx
 005D861D    call       TDataSet.GetActive
 005D8622    test       al,al
>005D8624    jne        005D8632
 005D8626    mov        dl,1
 005D8628    mov        eax,ebx
 005D862A    mov        ecx,dword ptr [eax]
 005D862C    call       dword ptr [ecx+178]; TDataSet.SetActive
 005D8632    pop        ebx
 005D8633    ret
*}
//end;

//005D8634
//procedure sub_005D8634(?:TZQuery);
//begin
{*
 005D8634    push       ebx
 005D8635    mov        ebx,eax
 005D8637    mov        eax,ebx
 005D8639    call       TDataSet.GetActive
 005D863E    test       al,al
>005D8640    jne        005D864E
 005D8642    mov        dl,1
 005D8644    mov        eax,ebx
 005D8646    mov        ecx,dword ptr [eax]
 005D8648    call       dword ptr [ecx+178]; TDataSet.SetActive
 005D864E    pop        ebx
 005D864F    ret
*}
//end;

//005D8650
//procedure sub_005D8650(?:TZQuery);
//begin
{*
 005D8650    push       ebx
 005D8651    mov        ebx,eax
 005D8653    push       0
 005D8655    mov        cx,word ptr ds:[5D8680]; 0x3
 005D865C    mov        dl,3
 005D865E    mov        eax,5D868C; 'Simpan Record ini?'
 005D8663    call       MessageDlg
 005D8668    cmp        eax,6
>005D866B    jne        005D867E
 005D866D    mov        eax,ebx
 005D866F    mov        edx,dword ptr [eax]
 005D8671    call       dword ptr [edx+24C]; TDataSet.Post
 005D8677    mov        eax,ebx
 005D8679    call       0056F648
 005D867E    pop        ebx
 005D867F    ret
*}
//end;

//005D86A0
//procedure sub_005D86A0(?:TZQuery);
//begin
{*
 005D86A0    push       ebx
 005D86A1    mov        ebx,eax
 005D86A3    push       0
 005D86A5    mov        cx,word ptr ds:[5D86C8]; 0x3
 005D86AC    mov        dl,3
 005D86AE    mov        eax,5D86D4; 'Batalkan Record ini?'
 005D86B3    call       MessageDlg
 005D86B8    cmp        eax,6
>005D86BB    jne        005D86C4
 005D86BD    mov        eax,ebx
 005D86BF    call       0056F70C
 005D86C4    pop        ebx
 005D86C5    ret
*}
//end;

end.