{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit100;

interface

uses
  Classes, Windows, Graphics;


implementation

//005999E4
procedure sub_005999E4;
begin
{*
 005999E4    push       ebx
 005999E5    push       esi
 005999E6    push       edi
 005999E7    mov        esi,61F030; gvar_0061F030
 005999EC    mov        ebx,61F448; gvar_0061F448
 005999F1    mov        dl,byte ptr ds:[61F032]; gvar_0061F032:void
 005999F7    mov        al,[0061F02E]; gvar_0061F02E
 005999FC    test       al,al
>005999FE    jbe        00599A7B
 00599A00    mov        cl,byte ptr [esi]
 00599A02    sub        cl,al
 00599A04    mov        eax,ecx
 00599A06    test       al,al
>00599A08    jge        00599A33
 00599A0A    neg        al
 00599A0C    mov        ecx,eax
 00599A0E    movzx      edi,word ptr ds:[61F034]; gvar_0061F034
 00599A15    shr        edi,cl
 00599A17    mov        ecx,edi
 00599A19    and        cl,0FF
 00599A1C    or         dl,cl
 00599A1E    movzx      ecx,word ptr [ebx]
 00599A21    mov        byte ptr [ecx+61F048],dl
 00599A27    inc        word ptr [ebx]
 00599A2A    mov        word ptr [esi],8
 00599A2F    xor        edx,edx
>00599A31    jmp        00599A77
 00599A33    test       al,al
>00599A35    jne        00599A5A
 00599A37    mov        al,[0061F034]; gvar_0061F034
 00599A3C    and        al,0FF
 00599A3E    or         dl,al
 00599A40    movzx      eax,word ptr [ebx]
 00599A43    mov        byte ptr [eax+61F048],dl
 00599A49    inc        word ptr [ebx]
 00599A4C    mov        word ptr [esi],8
 00599A51    mov        byte ptr ds:[61F032],0; gvar_0061F032:void
>00599A58    jmp        00599A7B
 00599A5A    mov        ecx,eax
 00599A5C    mov        bl,byte ptr ds:[61F034]; gvar_0061F034
 00599A62    shl        bl,cl
 00599A64    and        bl,0FF
 00599A67    or         dl,bl
 00599A69    mov        byte ptr ds:[61F032],dl; gvar_0061F032:void
 00599A6F    movsx      eax,al
 00599A72    mov        word ptr [esi],ax
>00599A75    jmp        00599A7B
 00599A77    test       al,al
<00599A79    ja         00599A00
 00599A7B    pop        edi
 00599A7C    pop        esi
 00599A7D    pop        ebx
 00599A7E    ret
*}
end;

//00599A80
//function sub_00599A80:?;
//begin
{*
 00599A80    push       ebx
 00599A81    push       esi
 00599A82    push       edi
 00599A83    push       ebp
 00599A84    mov        esi,61F032; gvar_0061F032:void
 00599A89    mov        edi,61F030; gvar_0061F030
 00599A8E    mov        ebx,61F84C
 00599A93    xor        edx,edx
 00599A95    mov        al,[0061F02E]; gvar_0061F02E
 00599A9A    test       al,al
>00599A9C    jbe        00599B19
 00599A9E    mov        cl,byte ptr [edi]
 00599AA0    sub        cl,al
 00599AA2    mov        eax,ecx
 00599AA4    test       al,al
>00599AA6    jge        00599ACA
 00599AA8    neg        al
 00599AAA    mov        ecx,eax
 00599AAC    movzx      ebp,byte ptr [esi]
 00599AAF    shl        bp,cl
 00599AB2    or         dx,bp
 00599AB5    movzx      ecx,word ptr [ebx]
 00599AB8    mov        cl,byte ptr [ecx+61F44C]
 00599ABE    mov        byte ptr [esi],cl
 00599AC0    mov        word ptr [edi],8
 00599AC5    inc        word ptr [ebx]
>00599AC8    jmp        00599B15
 00599ACA    test       al,al
>00599ACC    jne        00599AEA
 00599ACE    xor        eax,eax
 00599AD0    mov        al,byte ptr [esi]
 00599AD2    or         dx,ax
 00599AD5    movzx      eax,word ptr [ebx]
 00599AD8    mov        al,byte ptr [eax+61F44C]
 00599ADE    mov        byte ptr [esi],al
 00599AE0    mov        word ptr [edi],8
 00599AE5    inc        word ptr [ebx]
>00599AE8    jmp        00599B19
 00599AEA    mov        ecx,eax
 00599AEC    xor        ebx,ebx
 00599AEE    mov        bl,byte ptr [esi]
 00599AF0    mov        ebp,ebx
 00599AF2    shr        ebp,cl
 00599AF4    or         dx,bp
 00599AF7    movsx      ecx,al
 00599AFA    mov        word ptr [edi],cx
 00599AFD    mov        cl,8
 00599AFF    sub        cl,al
 00599B01    mov        eax,ecx
 00599B03    mov        ecx,eax
 00599B05    shl        ebx,cl
 00599B07    and        ebx,0FF
 00599B0D    mov        ecx,eax
 00599B0F    shr        ebx,cl
 00599B11    mov        byte ptr [esi],bl
>00599B13    jmp        00599B19
 00599B15    test       al,al
<00599B17    ja         00599A9E
 00599B19    mov        eax,edx
 00599B1B    pop        ebp
 00599B1C    pop        edi
 00599B1D    pop        esi
 00599B1E    pop        ebx
 00599B1F    ret
*}
//end;

//00599B20
procedure sub_00599B20;
begin
{*
 00599B20    push       ebx
 00599B21    mov        ebx,61F02A; gvar_0061F02A
 00599B26    mov        byte ptr ds:[61F857],0
 00599B2D    mov        word ptr ds:[61F030],8; gvar_0061F030
 00599B36    mov        word ptr ds:[61F448],0; gvar_0061F448
 00599B3F    mov        word ptr [ebx],1
 00599B44    mov        ax,[0061F026]; gvar_0061F026
 00599B4A    test       ax,ax
>00599B4D    jbe        00599B5C
 00599B4F    mov        dx,word ptr [ebx]
 00599B52    add        edx,edx
 00599B54    mov        word ptr [ebx],dx
 00599B57    dec        ax
<00599B5A    jne        00599B4F
 00599B5C    movzx      eax,word ptr [ebx]
 00599B5F    call       @GetMem
 00599B64    mov        [0061F038],eax; gvar_0061F038:Pointer
 00599B69    movzx      eax,word ptr [ebx]
 00599B6C    add        eax,eax
 00599B6E    call       @GetMem
 00599B73    mov        [0061F03C],eax; gvar_0061F03C:Pointer
 00599B78    movzx      eax,word ptr [ebx]
 00599B7B    add        eax,eax
 00599B7D    call       @GetMem
 00599B82    mov        [0061F040],eax; gvar_0061F040:Pointer
 00599B87    mov        eax,61F44C
 00599B8C    mov        dx,400
 00599B90    call       dword ptr ds:[61F860]
 00599B96    mov        [0061F84E],ax; gvar_0061F84E:void
 00599B9C    cmp        word ptr ds:[61F84E],0; gvar_0061F84E:void
 00599BA4    sete       byte ptr ds:[61F850]; gvar_0061F850
 00599BAB    cmp        byte ptr ds:[61F856],0
>00599BB2    je         00599BC6
 00599BB4    mov        byte ptr ds:[61F032],0; gvar_0061F032:void
 00599BBB    mov        word ptr ds:[61F84C],0
 00599BC4    pop        ebx
 00599BC5    ret
 00599BC6    mov        al,[0061F44C]
 00599BCB    mov        [0061F032],al; gvar_0061F032:void
 00599BD0    mov        word ptr ds:[61F84C],1
 00599BD9    pop        ebx
 00599BDA    ret
*}
end;

//00599BDC
procedure sub_00599BDC;
begin
{*
 00599BDC    push       ebx
 00599BDD    push       esi
 00599BDE    mov        eax,61F028; gvar_0061F028
 00599BE3    mov        dx,word ptr ds:[61F02C]; gvar_0061F02C
 00599BEA    inc        edx
 00599BEB    mov        word ptr ds:[61F02E],dx; gvar_0061F02E
 00599BF2    cmp        word ptr ds:[61F02E],2; gvar_0061F02E
>00599BFA    jne        00599C05
 00599BFC    mov        word ptr ds:[61F02E],3; gvar_0061F02E
 00599C05    mov        word ptr [eax],1
 00599C0A    mov        dx,word ptr ds:[61F02E]; gvar_0061F02E
 00599C11    test       dx,dx
>00599C14    jbe        00599C23
 00599C16    mov        cx,word ptr [eax]
 00599C19    add        ecx,ecx
 00599C1B    mov        word ptr [eax],cx
 00599C1E    dec        dx
<00599C21    jne        00599C16
 00599C23    movzx      eax,word ptr [eax]
 00599C26    shr        eax,1
 00599C28    inc        eax
 00599C29    mov        [0061F024],ax; gvar_0061F024
 00599C2F    mov        ax,[0061F024]; gvar_0061F024
 00599C35    dec        eax
 00599C36    mov        [0061F852],ax; gvar_0061F852
 00599C3C    mov        ax,[0061F024]; gvar_0061F024
 00599C42    mov        [0061F854],ax; gvar_0061F854
 00599C48    mov        dx,word ptr ds:[61F024]; gvar_0061F024
 00599C4F    test       dx,dx
>00599C52    jb         00599CC0
 00599C54    inc        edx
 00599C55    xor        eax,eax
 00599C57    cmp        byte ptr ds:[61F856],0
>00599C5E    je         00599C8E
 00599C60    movzx      ecx,ax
 00599C63    mov        ebx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599C69    mov        word ptr [ebx+ecx*2],0FFFF
 00599C6F    mov        ebx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599C75    add        ebx,ecx
 00599C77    push       ebx
 00599C78    mov        ebx,eax
 00599C7A    and        bl,0FF
 00599C7D    pop        esi
 00599C7E    mov        byte ptr [esi],bl
 00599C80    mov        ebx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599C86    mov        word ptr [ebx+ecx*2],0FFFF
>00599C8C    jmp        00599CBA
 00599C8E    movzx      ecx,ax
 00599C91    mov        ebx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599C97    mov        word ptr [ebx+ecx*2],0FFFF
 00599C9D    mov        ebx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599CA3    add        ebx,ecx
 00599CA5    push       ebx
 00599CA6    mov        ebx,eax
 00599CA8    and        bl,0FF
 00599CAB    pop        esi
 00599CAC    mov        byte ptr [esi],bl
 00599CAE    mov        ebx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599CB4    mov        word ptr [ebx+ecx*2],1
 00599CBA    inc        eax
 00599CBB    dec        dx
<00599CBE    jne        00599C57
 00599CC0    pop        esi
 00599CC1    pop        ebx
 00599CC2    ret
*}
end;

//00599CC4
//function sub_00599CC4(?:?; ?:?):?;
//begin
{*
 00599CC4    push       esi
 00599CC5    push       edi
 00599CC6    cmp        ax,0FFFF
>00599CCA    jne        00599CD6
 00599CCC    mov        edi,edx
 00599CCE    and        edi,0FF
>00599CD4    jmp        00599D12
 00599CD6    movzx      eax,ax
 00599CD9    mov        ecx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599CDF    mov        ax,word ptr [ecx+eax*2]
 00599CE3    mov        di,0FFFF
 00599CE7    cmp        ax,0FFFF
>00599CEB    je         00599D12
 00599CED    movzx      esi,ax
 00599CF0    mov        ecx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599CF6    mov        cl,byte ptr [ecx+esi]
 00599CF9    cmp        dl,cl
>00599CFB    jb         00599D12
 00599CFD    cmp        dl,cl
>00599CFF    jne        00599D03
 00599D01    mov        edi,eax
 00599D03    mov        eax,[0061F040]; gvar_0061F040:Pointer
 00599D08    mov        ax,word ptr [eax+esi*2]
 00599D0C    cmp        ax,0FFFF
<00599D10    jne        00599CED
 00599D12    mov        eax,edi
 00599D14    pop        edi
 00599D15    pop        esi
 00599D16    ret
*}
//end;

//00599D18
//procedure sub_00599D18(?:?);
//begin
{*
 00599D18    mov        [0061F034],ax; gvar_0061F034
 00599D1E    call       005999E4
 00599D23    cmp        word ptr ds:[61F448],3FC; gvar_0061F448
>00599D2C    jbe        00599D4F
 00599D2E    mov        eax,61F048
 00599D33    mov        dx,word ptr ds:[61F448]; gvar_0061F448
 00599D3A    call       dword ptr ds:[61F85C]
 00599D40    mov        [0061F858],ax; gvar_0061F858
 00599D46    mov        word ptr ds:[61F448],0; gvar_0061F448
 00599D4F    ret
*}
//end;

//00599D50
//procedure sub_00599D50(?:?; ?:?);
//begin
{*
 00599D50    push       ebx
 00599D51    push       esi
 00599D52    push       edi
 00599D53    push       ebp
 00599D54    mov        ebx,edx
 00599D56    mov        esi,eax
 00599D58    mov        edi,61F024; gvar_0061F024
 00599D5D    inc        word ptr [edi]
 00599D60    cmp        byte ptr ds:[61F856],0
>00599D67    je         00599E74
 00599D6D    movzx      eax,word ptr [edi]
 00599D70    movzx      edx,word ptr ds:[61F028]; gvar_0061F028
 00599D77    dec        edx
 00599D78    cmp        eax,edx
>00599D7A    jne        00599D8C
 00599D7C    mov        dx,word ptr ds:[61F02E]; gvar_0061F02E
 00599D83    cmp        dx,word ptr ds:[61F026]; gvar_0061F026
>00599D8A    je         00599D98
 00599D8C    mov        dx,word ptr [edi]
 00599D8F    cmp        dx,word ptr ds:[61F028]; gvar_0061F028
>00599D96    jne        00599DC8
 00599D98    mov        dx,word ptr ds:[61F02E]; gvar_0061F02E
 00599D9F    cmp        dx,word ptr ds:[61F026]; gvar_0061F026
>00599DA6    jne        00599DB1
 00599DA8    mov        byte ptr ds:[61F857],1
>00599DAF    jmp        00599DC8
 00599DB1    inc        word ptr ds:[61F02E]; gvar_0061F02E
 00599DB8    mov        dx,word ptr ds:[61F028]; gvar_0061F028
 00599DBF    add        edx,edx
 00599DC1    mov        word ptr ds:[61F028],dx; gvar_0061F028
 00599DC8    mov        edx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599DCE    mov        word ptr [edx+eax*2],0FFFF
 00599DD4    movzx      eax,word ptr [edi]
 00599DD7    mov        edx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599DDD    mov        byte ptr [edx+eax],bl
 00599DE0    movzx      eax,word ptr [edi]
 00599DE3    mov        edx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599DE9    mov        word ptr [edx+eax*2],0FFFF
 00599DEF    movzx      edx,si
 00599DF2    mov        eax,[0061F03C]; gvar_0061F03C:Pointer
 00599DF7    mov        ax,word ptr [eax+edx*2]
 00599DFB    cmp        ax,0FFFF
>00599DFF    jne        00599E12
 00599E01    mov        eax,[0061F03C]; gvar_0061F03C:Pointer
 00599E06    mov        cx,word ptr [edi]
 00599E09    mov        word ptr [eax+edx*2],cx
>00599E0D    jmp        00599EE0
 00599E12    mov        dx,0FFFF
>00599E16    jmp        00599E27
 00599E18    mov        edx,eax
 00599E1A    movzx      eax,ax
 00599E1D    mov        ecx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599E23    mov        ax,word ptr [ecx+eax*2]
 00599E27    cmp        ax,0FFFF
>00599E2B    je         00599E3C
 00599E2D    movzx      ecx,ax
 00599E30    mov        ebp,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599E36    cmp        bl,byte ptr [ebp+ecx]
<00599E3A    ja         00599E18
 00599E3C    cmp        dx,0FFFF
>00599E41    je         00599E55
 00599E43    movzx      edx,dx
 00599E46    mov        ecx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599E4C    mov        bx,word ptr [edi]
 00599E4F    mov        word ptr [ecx+edx*2],bx
>00599E53    jmp        00599E65
 00599E55    movzx      edx,si
 00599E58    mov        ecx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599E5E    mov        bx,word ptr [edi]
 00599E61    mov        word ptr [ecx+edx*2],bx
 00599E65    movzx      edx,word ptr [edi]
 00599E68    mov        ecx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 00599E6E    mov        word ptr [ecx+edx*2],ax
>00599E72    jmp        00599EE0
 00599E74    movzx      eax,word ptr [edi]
 00599E77    movzx      edx,word ptr ds:[61F028]; gvar_0061F028
 00599E7E    dec        edx
 00599E7F    cmp        eax,edx
>00599E81    jne        00599EB3
 00599E83    mov        ax,[0061F02E]; gvar_0061F02E
 00599E89    cmp        ax,word ptr ds:[61F026]; gvar_0061F026
>00599E90    jne        00599E9E
 00599E92    mov        eax,599EF0; 'Hash Table overflow.'
 00599E97    call       005998CC
>00599E9C    jmp        00599EB3
 00599E9E    inc        word ptr ds:[61F02E]; gvar_0061F02E
 00599EA5    mov        ax,[0061F028]; gvar_0061F028
 00599EAB    add        eax,eax
 00599EAD    mov        [0061F028],ax; gvar_0061F028
 00599EB3    movzx      eax,word ptr [edi]
 00599EB6    mov        edx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 00599EBC    mov        word ptr [edx+eax*2],si
 00599EC0    movzx      eax,word ptr [edi]
 00599EC3    mov        edx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 00599EC9    mov        byte ptr [edx+eax],bl
 00599ECC    movzx      edx,si
 00599ECF    mov        eax,[0061F040]; gvar_0061F040:Pointer
 00599ED4    mov        dx,word ptr [eax+edx*2]
 00599ED8    inc        edx
 00599ED9    movzx      ecx,word ptr [edi]
 00599EDC    mov        word ptr [eax+ecx*2],dx
 00599EE0    pop        ebp
 00599EE1    pop        edi
 00599EE2    pop        esi
 00599EE3    pop        ebx
 00599EE4    ret
*}
//end;

//00599F08
//function sub_00599F08:?;
//begin
{*
 00599F08    mov        ax,[0061F84C]
 00599F0E    cmp        ax,word ptr ds:[61F84E]; gvar_0061F84E:void
>00599F15    jb         00599F44
 00599F17    mov        eax,61F44C
 00599F1C    mov        dx,400
 00599F20    call       dword ptr ds:[61F860]
 00599F26    mov        [0061F84E],ax; gvar_0061F84E:void
 00599F2C    mov        word ptr ds:[61F84C],0
 00599F35    cmp        word ptr ds:[61F84E],0; gvar_0061F84E:void
 00599F3D    sete       byte ptr ds:[61F850]; gvar_0061F850
 00599F44    movzx      eax,word ptr ds:[61F84C]
 00599F4B    mov        al,byte ptr [eax+61F44C]
 00599F51    inc        word ptr ds:[61F84C]
 00599F58    ret
*}
//end;

//00599F5C
//procedure sub_00599F5C(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00599F5C    push       ebp
 00599F5D    mov        ebp,esp
 00599F5F    push       ebx
 00599F60    push       esi
 00599F61    and        eax,0FF
 00599F66    mov        [0061F02C],ax; gvar_0061F02C
 00599F6C    xor        eax,eax
 00599F6E    mov        al,dl
 00599F70    mov        [0061F026],ax; gvar_0061F026
 00599F76    mov        dword ptr ds:[61F860],ecx; gvar_0061F860
 00599F7C    mov        eax,dword ptr [ebp+8]
 00599F7F    mov        [0061F85C],eax; gvar_0061F85C
 00599F84    mov        byte ptr ds:[61F856],1
 00599F8B    call       00599B20
 00599F90    call       00599BDC
 00599F95    mov        ax,[0061F852]; gvar_0061F852
 00599F9B    call       00599D18
 00599FA0    call       00599F08
 00599FA5    mov        ebx,eax
 00599FA7    mov        si,0FFFF
>00599FAB    jmp        00599FFF
 00599FAD    mov        edx,ebx
 00599FAF    mov        eax,esi
 00599FB1    call       00599CC4
 00599FB6    cmp        ax,0FFFF
>00599FBA    je         00599FC0
 00599FBC    mov        esi,eax
>00599FBE    jmp        00599FF8
 00599FC0    mov        eax,esi
 00599FC2    call       00599D18
 00599FC7    mov        edx,ebx
 00599FC9    mov        eax,esi
 00599FCB    call       00599D50
 00599FD0    cmp        byte ptr ds:[61F857],0
>00599FD7    je         00599FF0
 00599FD9    mov        byte ptr ds:[61F857],0
 00599FE0    mov        ax,[0061F852]; gvar_0061F852
 00599FE6    call       00599D18
 00599FEB    call       00599BDC
 00599FF0    mov        esi,ebx
 00599FF2    and        esi,0FF
 00599FF8    call       00599F08
 00599FFD    mov        ebx,eax
 00599FFF    cmp        byte ptr ds:[61F850],0; gvar_0061F850
<0059A006    je         00599FAD
 0059A008    mov        eax,esi
 0059A00A    call       00599D18
 0059A00F    mov        ax,[0061F854]; gvar_0061F854
 0059A015    call       00599D18
 0059A01A    cmp        word ptr ds:[61F030],8; gvar_0061F030
>0059A022    jae        0059A037
 0059A024    mov        ax,[0061F030]; gvar_0061F030
 0059A02A    mov        [0061F02E],ax; gvar_0061F02E
 0059A030    xor        eax,eax
 0059A032    call       00599D18
 0059A037    mov        eax,61F048
 0059A03C    mov        dx,word ptr ds:[61F448]; gvar_0061F448
 0059A043    call       dword ptr ds:[61F85C]
 0059A049    mov        [0061F858],ax; gvar_0061F858
 0059A04F    movzx      edx,word ptr ds:[61F02A]; gvar_0061F02A
 0059A056    mov        eax,[0061F038]; gvar_0061F038:Pointer
 0059A05B    call       @FreeMem
 0059A060    movzx      eax,word ptr ds:[61F02A]; gvar_0061F02A
 0059A067    mov        edx,eax
 0059A069    add        edx,edx
 0059A06B    mov        eax,[0061F03C]; gvar_0061F03C:Pointer
 0059A070    call       @FreeMem
 0059A075    movzx      eax,word ptr ds:[61F02A]; gvar_0061F02A
 0059A07C    mov        edx,eax
 0059A07E    add        edx,edx
 0059A080    mov        eax,[0061F040]; gvar_0061F040:Pointer
 0059A085    call       @FreeMem
 0059A08A    pop        esi
 0059A08B    pop        ebx
 0059A08C    pop        ebp
 0059A08D    ret        4
*}
//end;

//0059A090
//function sub_0059A090(?:?; ?:?):?;
//begin
{*
 0059A090    push       ebx
 0059A091    push       esi
 0059A092    push       edi
 0059A093    push       ebp
 0059A094    push       ecx
 0059A095    mov        byte ptr [esp+2],dl
 0059A099    mov        word ptr [esp],ax
 0059A09D    mov        ebp,61F448; gvar_0061F448
 0059A0A2    movzx      eax,word ptr [esp]
 0059A0A6    mov        edx,dword ptr ds:[61F040]; gvar_0061F040:Pointer
 0059A0AC    mov        di,word ptr [edx+eax*2]
 0059A0B0    mov        bx,word ptr [esp]
 0059A0B4    mov        esi,edi
 0059A0B6    cmp        si,1
>0059A0BA    jb         0059A0E7
 0059A0BC    movzx      eax,bx
 0059A0BF    mov        edx,dword ptr ds:[61F038]; gvar_0061F038:Pointer
 0059A0C5    mov        dl,byte ptr [edx+eax]
 0059A0C8    push       edx
 0059A0C9    movzx      edx,si
 0059A0CC    mov        ecx,dword ptr ds:[61F044]; gvar_0061F044:Pointer
 0059A0D2    add        ecx,edx
 0059A0D4    pop        edx
 0059A0D5    mov        byte ptr [ecx],dl
 0059A0D7    mov        edx,dword ptr ds:[61F03C]; gvar_0061F03C:Pointer
 0059A0DD    mov        bx,word ptr [edx+eax*2]
 0059A0E1    dec        esi
 0059A0E2    test       si,si
<0059A0E5    jne        0059A0BC
 0059A0E7    cmp        byte ptr [esp+2],0
>0059A0EC    je         0059A104
 0059A0EE    inc        edi
 0059A0EF    movzx      eax,di
 0059A0F2    mov        edx,dword ptr ds:[61F044]; gvar_0061F044:Pointer
 0059A0F8    mov        ecx,dword ptr ds:[61F044]; gvar_0061F044:Pointer
 0059A0FE    mov        cl,byte ptr [ecx+1]
 0059A101    mov        byte ptr [edx+eax],cl
 0059A104    mov        si,1
 0059A108    mov        bx,400
 0059A10C    sub        bx,word ptr [ebp]
 0059A110    cmp        bx,di
>0059A113    jae        0059A166
 0059A115    test       bx,bx
>0059A118    jbe        0059A138
 0059A11A    movzx      eax,si
 0059A11D    mov        edx,dword ptr ds:[61F044]; gvar_0061F044:Pointer
 0059A123    lea        eax,[edx+eax]
 0059A126    movzx      ecx,bx
 0059A129    movzx      edx,word ptr [ebp]
 0059A12D    add        edx,61F048
 0059A133    call       Move
 0059A138    sub        di,bx
 0059A13B    add        si,bx
 0059A13E    mov        eax,61F048
 0059A143    mov        dx,400
 0059A147    call       dword ptr ds:[61F85C]
 0059A14D    mov        [0061F858],ax; gvar_0061F858
 0059A153    mov        word ptr [ebp],0
 0059A159    mov        bx,400
 0059A15D    sub        bx,word ptr [ebp]
 0059A161    cmp        bx,di
<0059A164    jb         0059A115
 0059A166    movzx      eax,si
 0059A169    mov        edx,dword ptr ds:[61F044]; gvar_0061F044:Pointer
 0059A16F    lea        eax,[edx+eax]
 0059A172    movzx      ecx,di
 0059A175    movzx      edx,word ptr [ebp]
 0059A179    add        edx,61F048
 0059A17F    call       Move
 0059A184    add        word ptr [ebp],di
 0059A188    mov        eax,[0061F044]; gvar_0061F044:Pointer
 0059A18D    mov        al,byte ptr [eax+1]
 0059A190    pop        edx
 0059A191    pop        ebp
 0059A192    pop        edi
 0059A193    pop        esi
 0059A194    pop        ebx
 0059A195    ret
*}
//end;

//0059A198
//function sub_0059A198:?;
//begin
{*
 0059A198    push       ebx
 0059A199    push       esi
 0059A19A    push       edi
 0059A19B    push       ebp
 0059A19C    mov        edi,61F84E; gvar_0061F84E:void
 0059A1A1    mov        ebp,61F84C
 0059A1A6    mov        bx,word ptr [edi]
 0059A1A9    sub        bx,word ptr [ebp]
 0059A1AD    cmp        bx,4
>0059A1B1    jae        0059A1EA
 0059A1B3    movzx      esi,bx
 0059A1B6    mov        ecx,esi
 0059A1B8    mov        edx,61F44C
 0059A1BD    movzx      eax,word ptr [ebp]
 0059A1C1    add        eax,61F44C
 0059A1C6    call       Move
 0059A1CB    mov        dx,400
 0059A1CF    sub        dx,bx
 0059A1D2    lea        eax,[esi+61F44C]
 0059A1D8    call       dword ptr ds:[61F860]
 0059A1DE    add        bx,ax
 0059A1E1    mov        word ptr [edi],bx
 0059A1E4    mov        word ptr [ebp],0
 0059A1EA    call       00599A80
 0059A1EF    mov        ebx,eax
 0059A1F1    cmp        bx,word ptr ds:[61F852]; gvar_0061F852
>0059A1F8    jne        0059A206
 0059A1FA    call       00599BDC
 0059A1FF    mov        byte ptr ds:[61F857],1
 0059A206    cmp        bx,word ptr ds:[61F852]; gvar_0061F852
>0059A20D    jne        0059A215
 0059A20F    cmp        word ptr [edi],0
<0059A213    jne        0059A1A6
 0059A215    cmp        word ptr [edi],0
>0059A219    je         0059A228
 0059A21B    cmp        bx,word ptr ds:[61F854]; gvar_0061F854
>0059A222    je         0059A228
 0059A224    xor        eax,eax
>0059A226    jmp        0059A22A
 0059A228    mov        al,1
 0059A22A    mov        [0061F850],al; gvar_0061F850
 0059A22F    mov        eax,ebx
 0059A231    pop        ebp
 0059A232    pop        edi
 0059A233    pop        esi
 0059A234    pop        ebx
 0059A235    ret
*}
//end;

//0059A238
//procedure sub_0059A238(?:?; ?:?; ?:?; ?:?);
//begin
{*
 0059A238    push       ebp
 0059A239    mov        ebp,esp
 0059A23B    push       ebx
 0059A23C    push       esi
 0059A23D    and        eax,0FF
 0059A242    mov        [0061F02C],ax; gvar_0061F02C
 0059A248    xor        eax,eax
 0059A24A    mov        al,dl
 0059A24C    mov        [0061F026],ax; gvar_0061F026
 0059A252    mov        dword ptr ds:[61F860],ecx; gvar_0061F860
 0059A258    mov        eax,dword ptr [ebp+8]
 0059A25B    mov        [0061F85C],eax; gvar_0061F85C
 0059A260    mov        byte ptr ds:[61F856],0
 0059A267    mov        eax,4000
 0059A26C    call       @GetMem
 0059A271    mov        [0061F044],eax; gvar_0061F044:Pointer
 0059A276    call       00599B20
 0059A27B    call       00599BDC
 0059A280    xor        ebx,ebx
>0059A282    jmp        0059A2DE
 0059A284    cmp        byte ptr ds:[61F857],0
>0059A28B    je         0059A29D
 0059A28D    mov        byte ptr ds:[61F857],0
 0059A294    xor        edx,edx
 0059A296    mov        eax,ebx
 0059A298    call       0059A090
 0059A29D    mov        esi,ebx
 0059A29F    call       0059A198
 0059A2A4    mov        ebx,eax
 0059A2A6    cmp        byte ptr ds:[61F857],0
<0059A2AD    jne        0059A284
 0059A2AF    cmp        byte ptr ds:[61F850],0; gvar_0061F850
>0059A2B6    jne        0059A2DE
 0059A2B8    cmp        bx,word ptr ds:[61F024]; gvar_0061F024
>0059A2BF    ja         0059A2CC
 0059A2C1    xor        edx,edx
 0059A2C3    mov        eax,ebx
 0059A2C5    call       0059A090
>0059A2CA    jmp        0059A2D5
 0059A2CC    mov        dl,1
 0059A2CE    mov        eax,esi
 0059A2D0    call       0059A090
 0059A2D5    mov        edx,eax
 0059A2D7    mov        eax,esi
 0059A2D9    call       00599D50
 0059A2DE    cmp        byte ptr ds:[61F850],0; gvar_0061F850
<0059A2E5    je         0059A284
 0059A2E7    mov        eax,61F048
 0059A2EC    mov        dx,word ptr ds:[61F448]; gvar_0061F448
 0059A2F3    call       dword ptr ds:[61F85C]
 0059A2F9    mov        [0061F858],ax; gvar_0061F858
 0059A2FF    movzx      edx,word ptr ds:[61F02A]; gvar_0061F02A
 0059A306    mov        eax,[0061F038]; gvar_0061F038:Pointer
 0059A30B    call       @FreeMem
 0059A310    movzx      eax,word ptr ds:[61F02A]; gvar_0061F02A
 0059A317    mov        edx,eax
 0059A319    add        edx,edx
 0059A31B    mov        eax,[0061F03C]; gvar_0061F03C:Pointer
 0059A320    call       @FreeMem
 0059A325    movzx      eax,word ptr ds:[61F02A]; gvar_0061F02A
 0059A32C    mov        edx,eax
 0059A32E    add        edx,edx
 0059A330    mov        eax,[0061F040]; gvar_0061F040:Pointer
 0059A335    call       @FreeMem
 0059A33A    movzx      edx,word ptr ds:[61F02A]; gvar_0061F02A
 0059A341    mov        eax,[0061F044]; gvar_0061F044:Pointer
 0059A346    call       @FreeMem
 0059A34B    pop        esi
 0059A34C    pop        ebx
 0059A34D    pop        ebp
 0059A34E    ret        4
*}
//end;

end.