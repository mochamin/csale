{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit RpDevice;

interface

uses
  Classes, Windows, Graphics;

type
  TFontBuf = record //size = 16
  f0:TFontName;;
  TRPBaseDevice = class(TObject)
  public
    f4:String;//f4
    f8:byte;//f8
    f9:byte;//f9
    fA:byte;//fA
    fC:dword;//fC
    f10:byte;//f10
    f11:byte;//f11
    f14:dword;//f14
    f18:dword;//f18
    f1C:String;//f1C
    f20:String;//f20
    procedure @AbstractError(); virtual;
    //function sub_0057E228():?; virtual;
    //function sub_0057E230():?; virtual;
    //procedure sub_0057E238(?:?); virtual;
    //function sub_0057DFD4():?; virtual;
    //function sub_0057DFD8():?; virtual;
    //function sub_0057DFDC():?; virtual;
    //function sub_0057DFE0():?; virtual;
    //function sub_0057DFE4:?; virtual;
    //procedure sub_0057DFE8(?:?); virtual;
    //function sub_0057DFEC():?; virtual;
    //procedure sub_0057DFF4(?:?); virtual;
    //function sub_0057DFF8:?; virtual;
    //procedure sub_0057DFFC(?:?); virtual;
    //function sub_0057E000:?; virtual;
    //procedure sub_0057E004(?:?); virtual;
    //function sub_0057E008:?; virtual;
    //function sub_0057E00C:?; virtual;
    //function sub_0057E010:?; virtual;
    //function sub_0057E014():?; virtual;
    procedure sub_0057E044(); virtual;
    procedure sub_0057E048(); virtual;
    procedure sub_0057E04C(); virtual;
    procedure sub_0057E050(); virtual;
    procedure sub_0057E054(); virtual;
    procedure sub_0057E058(); virtual;
    procedure sub_0057E05C(); virtual;
    //function sub_0057E060(?:?):?; virtual;
    //function sub_0057E0B0(?:?):?; virtual;
    procedure sub_0057E100(); virtual;
    //function sub_0057E104(?:?; ?:?; ?:?):?; virtual;
    //function sub_0057E214():?; virtual;
    //function sub_0057E218():?; virtual;
    //function sub_0057E21C():?; virtual;
    //function sub_0057E220():?; virtual;
    //function sub_0057E224():?; virtual;
  end;
  TRPRenderDevice = class(TRPBaseDevice)
  public
    f24:TBitmap;//f24
    f28:TCanvas;//f28
    destructor Destroy; virtual;
    //function sub_0057E300:?; virtual;
    //function sub_0057E304():?; virtual;
    //function sub_0057E30C():?; virtual;
    //function sub_0057E314(?:?):?; virtual;
    procedure sub_0057E374(); virtual;
    procedure sub_0057E378(); virtual;
    procedure sub_0057E37C(); virtual;
    procedure sub_0057E380(); virtual;
    procedure sub_0057E384(); virtual;
    procedure sub_0057E388(); virtual;
    //constructor Create(?:TRPRenderDevice; _Dv__:Boolean);
  end;
  TRPPrinterDevice = class(TRPBaseDevice)
  public
    f24:PChar;//f24
    f28:PChar;//f28
    f2C:PChar;//f2C
    f30:HDC;//f30
    f34:dword;//f34
    f38:THandle;//f38
    f3C:Pointer;//f3C
    f40:byte;//f40
    f44:TStringList;//f44
    f48:TStringList;//f48
    f4C:TStringList;//f4C
    f50:TStringList;//f50
    f54:dword;//f54
    f58:dword;//f58
    f5C:TRPPrinterCanvas;//f5C
    f64:byte;//f64
    f65:byte;//f65
    //f68:?;//f68
    f74:TFontBuf;//f74
    //f84:?;//f84
    f90:byte;//f90
    f91:byte;//f91
    f92:byte;//f92
    destructor Destroy; virtual;
    //function sub_0057EF60:?; virtual;
    //function sub_005806C4:?; virtual;
    //function sub_005806EC:?; virtual;
    //procedure sub_00580714(?:?); virtual;
    //function sub_0057F6C4:?; virtual;
    //function sub_0057F9F8:?; virtual;
    //function sub_0057FD88:?; virtual;
    //function sub_0057FE10:?; virtual;
    //function sub_0058020C:?; virtual;
    //procedure sub_00580234(?:?); virtual;
    procedure sub_0058029C; virtual;
    //procedure sub_005802D0(?:?); virtual;
    //function sub_00580318:?; virtual;
    //procedure sub_0058036C(?:?); virtual;
    //function sub_00580340:?; virtual;
    //procedure sub_00580404(?:?); virtual;
    //function sub_005803E4:?; virtual;
    procedure sub_00580484; virtual;
    procedure sub_005804A8; virtual;
    //function sub_0057E7BC(?:?):?; virtual;
    //procedure sub_0057E844(?:?; ?:?); virtual;
    procedure sub_0057F4D4; virtual;
    procedure sub_0057F4F0; virtual;
    procedure sub_0057F5AC; virtual;
    procedure sub_0057F5EC; virtual;
    procedure sub_0057F644; virtual;
    //procedure sub_0057F674(?:?); virtual;
    //function sub_0057F85C(?:?; ?:?):?; virtual;
    //function sub_0057FB8C(?:?; ?:?):?; virtual;
    //procedure sub_005804CC(?:?; ?:?); virtual;
    //function sub_0058056C(?:?; ?:?; ?:?):?; virtual;
    //function sub_0057F98C(?:?):?; virtual;
    //function sub_0057FCC0(?:?):?; virtual;
    //function sub_00580274:?; virtual;
    //function sub_005803BC:?; virtual;
    //function sub_0058045C:?; virtual;
    //constructor Create(?:TRPPrinterDevice; _Dv__:Boolean);
  end;
  TRPPrinterCanvas = class(TCanvas)
    procedure CreateHandle;
  public
    RPDevice:TRPPrinterDevice;//f58
    procedure CreateHandle; virtual;
    //constructor Create(?:TRPPrinterCanvas; _Dv__:Boolean);
  end;
  TRPDeviceItem = class(TObject)
  public
    f4:PChar;//f4
    f8:PChar;//f8
    fC:PChar;//fC
    destructor Destroy; virtual;
    //constructor Create(?:TRPDeviceItem; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0057DF50
//constructor sub_0057DF50(?:?; _Dv__:Boolean);
//begin
{*
 0057DF50    push       ebp
 0057DF51    mov        ebp,esp
 0057DF53    push       ecx
 0057DF54    push       ebx
 0057DF55    push       esi
 0057DF56    test       dl,dl
>0057DF58    je         0057DF62
 0057DF5A    add        esp,0FFFFFFF0
 0057DF5D    call       @ClassCreate
 0057DF62    mov        ebx,edx
 0057DF64    mov        esi,eax
 0057DF66    xor        edx,edx
 0057DF68    mov        eax,esi
 0057DF6A    call       TObject.Create
 0057DF6F    mov        dword ptr [esi+0C],1
 0057DF76    mov        byte ptr [esi+0A],1
 0057DF7A    mov        eax,esi
 0057DF7C    mov        edx,dword ptr [eax]
 0057DF7E    call       dword ptr [edx+4]
 0057DF81    mov        dword ptr [ebp-4],eax
 0057DF84    fild       dword ptr [ebp-4]
 0057DF87    fmul       dword ptr ds:[57DFCC]; 8,5:Single
 0057DF8D    call       @ROUND
 0057DF92    mov        dword ptr [esi+18],eax
 0057DF95    mov        eax,esi
 0057DF97    mov        edx,dword ptr [eax]
 0057DF99    call       dword ptr [edx+8]
 0057DF9C    mov        dword ptr [ebp-4],eax
 0057DF9F    fild       dword ptr [ebp-4]
 0057DFA2    fmul       dword ptr ds:[57DFD0]; 11:Single
 0057DFA8    call       @ROUND
 0057DFAD    mov        dword ptr [esi+14],eax
 0057DFB0    mov        eax,esi
 0057DFB2    test       bl,bl
>0057DFB4    je         0057DFC5
 0057DFB6    call       @AfterConstruction
 0057DFBB    pop        dword ptr fs:[0]
 0057DFC2    add        esp,0C
 0057DFC5    mov        eax,esi
 0057DFC7    pop        esi
 0057DFC8    pop        ebx
 0057DFC9    pop        ecx
 0057DFCA    pop        ebp
 0057DFCB    ret
*}
//end;

//0057DFD4
//function sub_0057DFD4():?;
//begin
{*
 0057DFD4    xor        eax,eax
 0057DFD6    ret
*}
//end;

//0057DFD8
//function sub_0057DFD8():?;
//begin
{*
 0057DFD8    xor        eax,eax
 0057DFDA    ret
*}
//end;

//0057DFDC
//function sub_0057DFDC():?;
//begin
{*
 0057DFDC    xor        eax,eax
 0057DFDE    ret
*}
//end;

//0057DFE0
//function sub_0057DFE0():?;
//begin
{*
 0057DFE0    xor        eax,eax
 0057DFE2    ret
*}
//end;

//0057DFE4
//function sub_0057DFE4:?;
//begin
{*
 0057DFE4    mov        al,byte ptr [eax+0A]; TRPRenderDevice.?fA:byte
 0057DFE7    ret
*}
//end;

//0057DFE8
//procedure sub_0057DFE8(?:?);
//begin
{*
 0057DFE8    mov        byte ptr [eax+0A],dl; TRPRenderDevice.?fA:byte
 0057DFEB    ret
*}
//end;

//0057DFEC
//function sub_0057DFEC():?;
//begin
{*
 0057DFEC    mov        eax,1
 0057DFF1    ret
*}
//end;

//0057DFF4
//procedure sub_0057DFF4(?:?);
//begin
{*
 0057DFF4    mov        dword ptr [eax+0C],edx; TRPRenderDevice.?fC:dword
 0057DFF7    ret
*}
//end;

//0057DFF8
//function sub_0057DFF8:?;
//begin
{*
 0057DFF8    mov        eax,dword ptr [eax+0C]; TRPRenderDevice.?fC:dword
 0057DFFB    ret
*}
//end;

//0057DFFC
//procedure sub_0057DFFC(?:?);
//begin
{*
 0057DFFC    mov        byte ptr [eax+10],dl; TRPRenderDevice.?f10:byte
 0057DFFF    ret
*}
//end;

//0057E000
//function sub_0057E000:?;
//begin
{*
 0057E000    mov        al,byte ptr [eax+10]; TRPRenderDevice.?f10:byte
 0057E003    ret
*}
//end;

//0057E004
//procedure sub_0057E004(?:?);
//begin
{*
 0057E004    mov        byte ptr [eax+11],dl; TRPRenderDevice.?f11:byte
 0057E007    ret
*}
//end;

//0057E008
//function sub_0057E008:?;
//begin
{*
 0057E008    mov        al,byte ptr [eax+11]; TRPRenderDevice.?f11:byte
 0057E00B    ret
*}
//end;

//0057E00C
//function sub_0057E00C:?;
//begin
{*
 0057E00C    mov        eax,dword ptr [eax+14]; TRPRenderDevice.?f14:dword
 0057E00F    ret
*}
//end;

//0057E010
//function sub_0057E010:?;
//begin
{*
 0057E010    mov        eax,dword ptr [eax+18]; TRPRenderDevice.?f18:dword
 0057E013    ret
*}
//end;

//0057E014
//function sub_0057E014():?;
//begin
{*
 0057E014    push       ebp
 0057E015    mov        ebp,esp
 0057E017    push       ebx
 0057E018    xor        eax,eax
 0057E01A    push       ebp
 0057E01B    push       57E036
 0057E020    push       dword ptr fs:[eax]
 0057E023    mov        dword ptr fs:[eax],esp
 0057E026    xor        ebx,ebx
 0057E028    xor        eax,eax
 0057E02A    pop        edx
 0057E02B    pop        ecx
 0057E02C    pop        ecx
 0057E02D    mov        dword ptr fs:[eax],edx
 0057E030    push       57E03D
 0057E035    ret
<0057E036    jmp        @HandleFinally
<0057E03B    jmp        0057E035
 0057E03D    mov        eax,ebx
 0057E03F    pop        ebx
 0057E040    pop        ebp
 0057E041    ret
*}
//end;

//0057E044
procedure sub_0057E044();
begin
{*
 0057E044    ret
*}
end;

//0057E048
procedure sub_0057E048();
begin
{*
 0057E048    ret
*}
end;

//0057E04C
procedure sub_0057E04C();
begin
{*
 0057E04C    ret
*}
end;

//0057E050
procedure sub_0057E050();
begin
{*
 0057E050    ret
*}
end;

//0057E054
procedure sub_0057E054();
begin
{*
 0057E054    ret
*}
end;

//0057E058
procedure sub_0057E058();
begin
{*
 0057E058    ret
*}
end;

//0057E05C
procedure sub_0057E05C();
begin
{*
 0057E05C    ret
*}
end;

//0057E060
//function sub_0057E060(?:?):?;
//begin
{*
 0057E060    push       ebp
 0057E061    mov        ebp,esp
 0057E063    push       ecx
 0057E064    push       ebx
 0057E065    mov        dword ptr [ebp-4],edx
 0057E068    mov        ebx,eax
 0057E06A    mov        eax,dword ptr [ebp-4]
 0057E06D    call       @LStrAddRef
 0057E072    xor        eax,eax
 0057E074    push       ebp
 0057E075    push       57E0A3
 0057E07A    push       dword ptr fs:[eax]
 0057E07D    mov        dword ptr fs:[eax],esp
 0057E080    lea        eax,[ebx+1C]; TRPRenderDevice.?f1C:String
 0057E083    mov        edx,dword ptr [ebp-4]
 0057E086    call       @LStrAsg
 0057E08B    mov        bl,1
 0057E08D    xor        eax,eax
 0057E08F    pop        edx
 0057E090    pop        ecx
 0057E091    pop        ecx
 0057E092    mov        dword ptr fs:[eax],edx
 0057E095    push       57E0AA
 0057E09A    lea        eax,[ebp-4]
 0057E09D    call       @LStrClr
 0057E0A2    ret
<0057E0A3    jmp        @HandleFinally
<0057E0A8    jmp        0057E09A
 0057E0AA    mov        eax,ebx
 0057E0AC    pop        ebx
 0057E0AD    pop        ecx
 0057E0AE    pop        ebp
 0057E0AF    ret
*}
//end;

//0057E0B0
//function sub_0057E0B0(?:?):?;
//begin
{*
 0057E0B0    push       ebp
 0057E0B1    mov        ebp,esp
 0057E0B3    push       ecx
 0057E0B4    push       ebx
 0057E0B5    mov        dword ptr [ebp-4],edx
 0057E0B8    mov        ebx,eax
 0057E0BA    mov        eax,dword ptr [ebp-4]
 0057E0BD    call       @LStrAddRef
 0057E0C2    xor        eax,eax
 0057E0C4    push       ebp
 0057E0C5    push       57E0F3
 0057E0CA    push       dword ptr fs:[eax]
 0057E0CD    mov        dword ptr fs:[eax],esp
 0057E0D0    lea        eax,[ebx+20]; TRPRenderDevice.?f20:String
 0057E0D3    mov        edx,dword ptr [ebp-4]
 0057E0D6    call       @LStrAsg
 0057E0DB    mov        bl,1
 0057E0DD    xor        eax,eax
 0057E0DF    pop        edx
 0057E0E0    pop        ecx
 0057E0E1    pop        ecx
 0057E0E2    mov        dword ptr fs:[eax],edx
 0057E0E5    push       57E0FA
 0057E0EA    lea        eax,[ebp-4]
 0057E0ED    call       @LStrClr
 0057E0F2    ret
<0057E0F3    jmp        @HandleFinally
<0057E0F8    jmp        0057E0EA
 0057E0FA    mov        eax,ebx
 0057E0FC    pop        ebx
 0057E0FD    pop        ecx
 0057E0FE    pop        ebp
 0057E0FF    ret
*}
//end;

//0057E100
procedure sub_0057E100();
begin
{*
 0057E100    ret
*}
end;

//0057E104
//function sub_0057E104(?:?; ?:?; ?:?):?;
//begin
{*
 0057E104    push       ebp
 0057E105    mov        ebp,esp
 0057E107    add        esp,0FFFFFFF0
 0057E10A    push       ebx
 0057E10B    push       esi
 0057E10C    push       edi
 0057E10D    mov        ebx,ecx
 0057E10F    mov        dword ptr [ebp-4],edx
 0057E112    mov        esi,eax
 0057E114    mov        edi,dword ptr [ebp+8]
 0057E117    mov        byte ptr [ebp-5],1
 0057E11B    test       ebx,ebx
>0057E11D    je         0057E16E
 0057E11F    test       edi,edi
>0057E121    je         0057E16E
 0057E123    mov        eax,esi
 0057E125    mov        edx,dword ptr [eax]
 0057E127    call       dword ptr [edx+4]; TRPRenderDevice.sub_0057E304
 0057E12A    mov        dword ptr [ebp-0C],eax
 0057E12D    fild       dword ptr [ebp-0C]
 0057E130    mov        dword ptr [ebp-10],ebx
 0057E133    fild       dword ptr [ebp-10]
 0057E136    fdiv       dword ptr ds:[57E208]; 254:Single
 0057E13C    fmulp      st(1),st
 0057E13E    call       @ROUND
 0057E143    mov        dword ptr [esi+18],eax; TRPRenderDevice.?f18:dword
 0057E146    mov        eax,esi
 0057E148    mov        edx,dword ptr [eax]
 0057E14A    call       dword ptr [edx+8]; TRPRenderDevice.sub_0057E30C
 0057E14D    mov        dword ptr [ebp-0C],eax
 0057E150    fild       dword ptr [ebp-0C]
 0057E153    mov        dword ptr [ebp-10],edi
 0057E156    fild       dword ptr [ebp-10]
 0057E159    fdiv       dword ptr ds:[57E208]; 254:Single
 0057E15F    fmulp      st(1),st
 0057E161    call       @ROUND
 0057E166    mov        dword ptr [esi+14],eax; TRPRenderDevice.?f14:dword
>0057E169    jmp        0057E1F9
 0057E16E    xor        eax,eax
 0057E170    mov        edi,2B
 0057E175    mov        ebx,dword ptr ds:[61BC6C]; ^gvar_00616B24:array[43] of TPaperSizeName
 0057E17B    add        ebx,4
 0057E17E    mov        edx,dword ptr [ebx]
 0057E180    cmp        edx,dword ptr [ebp-4]
>0057E183    jne        0057E1B9
 0057E185    mov        eax,esi
 0057E187    mov        edx,dword ptr [eax]
 0057E189    call       dword ptr [edx+4]; TRPRenderDevice.sub_0057E304
 0057E18C    mov        dword ptr [ebp-0C],eax
 0057E18F    fild       dword ptr [ebp-0C]
 0057E192    fmul       qword ptr [ebx+4]
 0057E195    call       @ROUND
 0057E19A    mov        dword ptr [esi+18],eax; TRPRenderDevice.?f18:dword
 0057E19D    mov        eax,esi
 0057E19F    mov        edx,dword ptr [eax]
 0057E1A1    call       dword ptr [edx+8]; TRPRenderDevice.sub_0057E30C
 0057E1A4    mov        dword ptr [ebp-0C],eax
 0057E1A7    fild       dword ptr [ebp-0C]
 0057E1AA    fmul       qword ptr [ebx+0C]
 0057E1AD    call       @ROUND
 0057E1B2    mov        dword ptr [esi+14],eax; TRPRenderDevice.?f14:dword
 0057E1B5    mov        al,1
>0057E1B7    jmp        0057E1BF
 0057E1B9    add        ebx,18
 0057E1BC    dec        edi
<0057E1BD    jne        0057E17E
 0057E1BF    test       al,al
>0057E1C1    jne        0057E1F9
 0057E1C3    mov        eax,esi
 0057E1C5    mov        edx,dword ptr [eax]
 0057E1C7    call       dword ptr [edx+4]; TRPRenderDevice.sub_0057E304
 0057E1CA    mov        dword ptr [ebp-0C],eax
 0057E1CD    fild       dword ptr [ebp-0C]
 0057E1D0    fmul       dword ptr ds:[57E20C]; 8,5:Single
 0057E1D6    call       @ROUND
 0057E1DB    mov        dword ptr [esi+18],eax; TRPRenderDevice.?f18:dword
 0057E1DE    mov        eax,esi
 0057E1E0    mov        edx,dword ptr [eax]
 0057E1E2    call       dword ptr [edx+8]; TRPRenderDevice.sub_0057E30C
 0057E1E5    mov        dword ptr [ebp-0C],eax
 0057E1E8    fild       dword ptr [ebp-0C]
 0057E1EB    fmul       dword ptr ds:[57E210]; 11:Single
 0057E1F1    call       @ROUND
 0057E1F6    mov        dword ptr [esi+14],eax; TRPRenderDevice.?f14:dword
 0057E1F9    mov        al,byte ptr [ebp-5]
 0057E1FC    pop        edi
 0057E1FD    pop        esi
 0057E1FE    pop        ebx
 0057E1FF    mov        esp,ebp
 0057E201    pop        ebp
 0057E202    ret        4
*}
//end;

//0057E214
//function sub_0057E214():?;
//begin
{*
 0057E214    mov        al,1
 0057E216    ret
*}
//end;

//0057E218
//function sub_0057E218():?;
//begin
{*
 0057E218    mov        al,1
 0057E21A    ret
*}
//end;

//0057E21C
//function sub_0057E21C():?;
//begin
{*
 0057E21C    mov        al,1
 0057E21E    ret
*}
//end;

//0057E220
//function sub_0057E220():?;
//begin
{*
 0057E220    mov        al,1
 0057E222    ret
*}
//end;

//0057E224
//function sub_0057E224():?;
//begin
{*
 0057E224    mov        al,1
 0057E226    ret
*}
//end;

//0057E228
//function sub_0057E228():?;
//begin
{*
 0057E228    mov        eax,60
 0057E22D    ret
*}
//end;

//0057E230
//function sub_0057E230():?;
//begin
{*
 0057E230    mov        eax,60
 0057E235    ret
*}
//end;

//0057E238
//procedure sub_0057E238(?:?);
//begin
{*
 0057E238    mov        eax,edx
 0057E23A    xor        ecx,ecx
 0057E23C    mov        edx,10
 0057E241    call       @FillChar
 0057E246    ret
*}
//end;

//0057E248
//constructor TRPRenderDevice.Create(?:TRPRenderDevice; _Dv__:Boolean);
//begin
{*
 0057E248    push       ebx
 0057E249    push       esi
 0057E24A    push       edi
 0057E24B    test       dl,dl
>0057E24D    je         0057E257
 0057E24F    add        esp,0FFFFFFF0
 0057E252    call       @ClassCreate
 0057E257    mov        ebx,edx
 0057E259    mov        esi,eax
 0057E25B    xor        edx,edx
 0057E25D    mov        eax,esi
 0057E25F    call       0057DF50
 0057E264    mov        byte ptr [esi+8],1; TRPRenderDevice.?f8:byte
 0057E268    mov        dl,1
 0057E26A    mov        eax,[0042A4BC]; TBitmap
 0057E26F    call       TBitmap.Create; TBitmap.Create
 0057E274    mov        dword ptr [esi+24],eax; TRPRenderDevice.?f24:TBitmap
 0057E277    mov        eax,esi
 0057E279    mov        edx,dword ptr [eax]
 0057E27B    call       dword ptr [edx+8]; TRPRenderDevice.sub_0057E30C
 0057E27E    mov        edi,eax
 0057E280    mov        eax,dword ptr [esi+24]; TRPRenderDevice.?f24:TBitmap
 0057E283    call       TBitmap.GetCanvas
 0057E288    mov        eax,dword ptr [eax+0C]; TCanvas.Font:TFont
 0057E28B    mov        dword ptr [eax+1C],edi; TFont.FPixelsPerInch:Integer
 0057E28E    mov        eax,dword ptr [esi+24]; TRPRenderDevice.?f24:TBitmap
 0057E291    mov        edx,0A
 0057E296    mov        ecx,dword ptr [eax]
 0057E298    call       dword ptr [ecx+40]; TBitmap.SetWidth
 0057E29B    mov        eax,dword ptr [esi+24]; TRPRenderDevice.?f24:TBitmap
 0057E29E    mov        edx,0A
 0057E2A3    mov        ecx,dword ptr [eax]
 0057E2A5    call       dword ptr [ecx+34]; TBitmap.SetHeight
 0057E2A8    mov        eax,dword ptr [esi+24]; TRPRenderDevice.?f24:TBitmap
 0057E2AB    call       TBitmap.GetCanvas
 0057E2B0    mov        dword ptr [esi+28],eax; TRPRenderDevice.?f28:TCanvas
 0057E2B3    mov        eax,esi
 0057E2B5    test       bl,bl
>0057E2B7    je         0057E2C8
 0057E2B9    call       @AfterConstruction
 0057E2BE    pop        dword ptr fs:[0]
 0057E2C5    add        esp,0C
 0057E2C8    mov        eax,esi
 0057E2CA    pop        edi
 0057E2CB    pop        esi
 0057E2CC    pop        ebx
 0057E2CD    ret
*}
//end;

//0057E2D0
destructor TRPRenderDevice.Destroy;
begin
{*
 0057E2D0    push       ebx
 0057E2D1    push       esi
 0057E2D2    call       @BeforeDestruction
 0057E2D7    mov        ebx,edx
 0057E2D9    mov        esi,eax
 0057E2DB    lea        eax,[esi+24]; TRPRenderDevice.?f24:TBitmap
 0057E2DE    call       FreeAndNil
 0057E2E3    mov        edx,ebx
 0057E2E5    and        dl,0FC
 0057E2E8    mov        eax,esi
 0057E2EA    call       TObject.Destroy
 0057E2EF    test       bl,bl
>0057E2F1    jle        0057E2FA
 0057E2F3    mov        eax,esi
 0057E2F5    call       @ClassDestroy
 0057E2FA    pop        esi
 0057E2FB    pop        ebx
 0057E2FC    ret
*}
end;

//0057E300
//function sub_0057E300:?;
//begin
{*
 0057E300    mov        eax,dword ptr [eax+28]; TRPRenderDevice.?f28:TCanvas
 0057E303    ret
*}
//end;

//0057E304
//function sub_0057E304():?;
//begin
{*
 0057E304    mov        eax,258
 0057E309    ret
*}
//end;

//0057E30C
//function sub_0057E30C():?;
//begin
{*
 0057E30C    mov        eax,258
 0057E311    ret
*}
//end;

//0057E314
//function sub_0057E314(?:?):?;
//begin
{*
 0057E314    push       ebp
 0057E315    mov        ebp,esp
 0057E317    push       ecx
 0057E318    push       ebx
 0057E319    mov        dword ptr [ebp-4],edx
 0057E31C    mov        ebx,eax
 0057E31E    mov        eax,dword ptr [ebp-4]
 0057E321    call       @LStrAddRef
 0057E326    xor        eax,eax
 0057E328    push       ebp
 0057E329    push       57E364
 0057E32E    push       dword ptr fs:[eax]
 0057E331    mov        dword ptr fs:[eax],esp
 0057E334    mov        eax,ebx
 0057E336    mov        edx,dword ptr [eax]
 0057E338    call       dword ptr [edx]; TRPRenderDevice.sub_0057E300
 0057E33A    mov        edx,dword ptr [eax+0C]
 0057E33D    mov        eax,[0061BB0C]; ^gvar_0061EFBC:TRPFontManager
 0057E342    mov        eax,dword ptr [eax]
 0057E344    mov        ecx,dword ptr [ebp-4]
 0057E347    call       0057DA64
 0057E34C    mov        ebx,eax
 0057E34E    xor        eax,eax
 0057E350    pop        edx
 0057E351    pop        ecx
 0057E352    pop        ecx
 0057E353    mov        dword ptr fs:[eax],edx
 0057E356    push       57E36B
 0057E35B    lea        eax,[ebp-4]
 0057E35E    call       @LStrClr
 0057E363    ret
<0057E364    jmp        @HandleFinally
<0057E369    jmp        0057E35B
 0057E36B    mov        eax,ebx
 0057E36D    pop        ebx
 0057E36E    pop        ecx
 0057E36F    pop        ebp
 0057E370    ret
*}
//end;

//0057E374
procedure sub_0057E374();
begin
{*
 0057E374    ret
*}
end;

//0057E378
procedure sub_0057E378();
begin
{*
 0057E378    ret
*}
end;

//0057E37C
procedure sub_0057E37C();
begin
{*
 0057E37C    ret
*}
end;

//0057E380
procedure sub_0057E380();
begin
{*
 0057E380    ret
*}
end;

//0057E384
procedure sub_0057E384();
begin
{*
 0057E384    ret
*}
end;

//0057E388
procedure sub_0057E388();
begin
{*
 0057E388    ret
*}
end;

//0057E38C
function winspool.DeviceCapabilitiesA(pDevice:PAnsiChar; pPort:PAnsiChar; fwCapability:Word; pOutput:PAnsiChar; DevMode:PDeviceModeA):Integer; stdcall;
begin
{*
 0057E38C    jmp        dword ptr ds:[62097C]
*}
end;

//0057E394
//constructor TRPPrinterCanvas.Create(?:TRPPrinterCanvas; _Dv__:Boolean);
//begin
{*
 0057E394    push       ebp
 0057E395    mov        ebp,esp
 0057E397    push       ecx
 0057E398    push       ebx
 0057E399    push       esi
 0057E39A    push       edi
 0057E39B    test       dl,dl
>0057E39D    je         0057E3A7
 0057E39F    add        esp,0FFFFFFF0
 0057E3A2    call       @ClassCreate
 0057E3A7    mov        edi,ecx
 0057E3A9    mov        byte ptr [ebp-1],dl
 0057E3AC    mov        ebx,eax
 0057E3AE    xor        edx,edx
 0057E3B0    mov        eax,ebx
 0057E3B2    call       TCanvas.Create
 0057E3B7    mov        esi,edi
 0057E3B9    mov        dword ptr [ebx+58],esi; TRPPrinterCanvas.RPDevice:TRPPrinterDevice
 0057E3BC    push       5A
 0057E3BE    mov        eax,esi
 0057E3C0    call       0057EF4C
 0057E3C5    push       eax
 0057E3C6    call       gdi32.GetDeviceCaps
 0057E3CB    mov        edx,dword ptr [ebx+0C]; TRPPrinterCanvas.Font:TFont
 0057E3CE    mov        dword ptr [edx+1C],eax; TFont.FPixelsPerInch:Integer
 0057E3D1    mov        eax,ebx
 0057E3D3    cmp        byte ptr [ebp-1],0
>0057E3D7    je         0057E3E8
 0057E3D9    call       @AfterConstruction
 0057E3DE    pop        dword ptr fs:[0]
 0057E3E5    add        esp,0C
 0057E3E8    mov        eax,ebx
 0057E3EA    pop        edi
 0057E3EB    pop        esi
 0057E3EC    pop        ebx
 0057E3ED    pop        ecx
 0057E3EE    pop        ebp
 0057E3EF    ret
*}
//end;

//0057E3F0
procedure TRPPrinterCanvas.CreateHandle;
begin
{*
 0057E3F0    push       ebx
 0057E3F1    mov        ebx,eax
 0057E3F3    mov        eax,dword ptr [ebx+58]; TRPPrinterCanvas.RPDevice:TRPPrinterDevice
 0057E3F6    call       0057EF4C
 0057E3FB    mov        edx,eax
 0057E3FD    mov        eax,ebx
 0057E3FF    call       TCanvas.SetHandle
 0057E404    pop        ebx
 0057E405    ret
*}
end;

//0057E464
//constructor TRPDeviceItem.Create(?:TRPDeviceItem; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0057E464    push       ebp
 0057E465    mov        ebp,esp
 0057E467    push       ebx
 0057E468    push       esi
 0057E469    push       edi
 0057E46A    test       dl,dl
>0057E46C    je         0057E476
 0057E46E    add        esp,0FFFFFFF0
 0057E471    call       @ClassCreate
 0057E476    mov        esi,ecx
 0057E478    mov        ebx,edx
 0057E47A    mov        edi,eax
 0057E47C    xor        edx,edx
 0057E47E    mov        eax,edi
 0057E480    call       TObject.Create
 0057E485    mov        eax,esi
 0057E487    call       StrNew
 0057E48C    mov        dword ptr [edi+4],eax; TRPDeviceItem.?f4:PChar
 0057E48F    mov        eax,dword ptr [ebp+0C]
 0057E492    call       StrNew
 0057E497    mov        dword ptr [edi+8],eax; TRPDeviceItem.?f8:PChar
 0057E49A    mov        eax,dword ptr [ebp+8]
 0057E49D    call       StrNew
 0057E4A2    mov        dword ptr [edi+0C],eax; TRPDeviceItem.?fC:PChar
 0057E4A5    mov        eax,edi
 0057E4A7    test       bl,bl
>0057E4A9    je         0057E4BA
 0057E4AB    call       @AfterConstruction
 0057E4B0    pop        dword ptr fs:[0]
 0057E4B7    add        esp,0C
 0057E4BA    mov        eax,edi
 0057E4BC    pop        edi
 0057E4BD    pop        esi
 0057E4BE    pop        ebx
 0057E4BF    pop        ebp
 0057E4C0    ret        8
*}
//end;

//0057E4C4
destructor TRPDeviceItem.Destroy;
begin
{*
 0057E4C4    push       ebx
 0057E4C5    push       esi
 0057E4C6    call       @BeforeDestruction
 0057E4CB    mov        ebx,edx
 0057E4CD    mov        esi,eax
 0057E4CF    mov        eax,dword ptr [esi+0C]; TRPDeviceItem.?fC:PChar
 0057E4D2    call       StrDispose
 0057E4D7    mov        eax,dword ptr [esi+8]; TRPDeviceItem.?f8:PChar
 0057E4DA    call       StrDispose
 0057E4DF    mov        eax,dword ptr [esi+4]; TRPDeviceItem.?f4:PChar
 0057E4E2    call       StrDispose
 0057E4E7    mov        edx,ebx
 0057E4E9    and        dl,0FC
 0057E4EC    mov        eax,esi
 0057E4EE    call       TObject.Destroy
 0057E4F3    test       bl,bl
>0057E4F5    jle        0057E4FE
 0057E4F7    mov        eax,esi
 0057E4F9    call       @ClassDestroy
 0057E4FE    pop        esi
 0057E4FF    pop        ebx
 0057E500    ret
*}
end;

//0057E504
//constructor TRPPrinterDevice.Create(?:TRPPrinterDevice; _Dv__:Boolean);
//begin
{*
 0057E504    push       ebx
 0057E505    push       esi
 0057E506    test       dl,dl
>0057E508    je         0057E512
 0057E50A    add        esp,0FFFFFFF0
 0057E50D    call       @ClassCreate
 0057E512    mov        ebx,edx
 0057E514    mov        esi,eax
 0057E516    mov        dword ptr [esi+54],0FFFFFFFE; TRPPrinterDevice.?f54:dword
 0057E51D    xor        edx,edx
 0057E51F    mov        eax,esi
 0057E521    call       0057DF50
 0057E526    mov        eax,esi
 0057E528    test       bl,bl
>0057E52A    je         0057E53B
 0057E52C    call       @AfterConstruction
 0057E531    pop        dword ptr fs:[0]
 0057E538    add        esp,0C
 0057E53B    mov        eax,esi
 0057E53D    pop        esi
 0057E53E    pop        ebx
 0057E53F    ret
*}
//end;

//0057E540
destructor TRPPrinterDevice.Destroy;
begin
{*
 0057E540    push       ebx
 0057E541    push       esi
 0057E542    push       edi
 0057E543    push       ebp
 0057E544    call       @BeforeDestruction
 0057E549    mov        ebx,edx
 0057E54B    mov        ebp,eax
 0057E54D    xor        edx,edx
 0057E54F    mov        eax,ebp
 0057E551    call       0057EDB4
 0057E556    mov        eax,ebp
 0057E558    call       0057F00C
 0057E55D    mov        esi,dword ptr [ebp+48]; TRPPrinterDevice.?f48:TStringList
 0057E560    test       esi,esi
>0057E562    je         0057E592
 0057E564    mov        eax,esi
 0057E566    mov        edx,dword ptr [eax]
 0057E568    call       dword ptr [edx+14]; TStringList.GetCount
 0057E56B    test       eax,eax
>0057E56D    jle        0057E58A
 0057E56F    mov        esi,eax
 0057E571    mov        edi,1
 0057E576    mov        edx,edi
 0057E578    dec        edx
 0057E579    mov        eax,dword ptr [ebp+48]; TRPPrinterDevice.?f48:TStringList
 0057E57C    mov        ecx,dword ptr [eax]
 0057E57E    call       dword ptr [ecx+18]; TStringList.GetObject
 0057E581    call       TObject.Free
 0057E586    inc        edi
 0057E587    dec        esi
<0057E588    jne        0057E576
 0057E58A    lea        eax,[ebp+48]; TRPPrinterDevice.?f48:TStringList
 0057E58D    call       FreeAndNil
 0057E592    mov        eax,dword ptr [ebp+58]; TRPPrinterDevice.?f58:dword
 0057E595    call       StrDispose
 0057E59A    lea        eax,[ebp+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057E59D    call       FreeAndNil
 0057E5A2    mov        edx,ebx
 0057E5A4    and        dl,0FC
 0057E5A7    mov        eax,ebp
 0057E5A9    call       TObject.Destroy
 0057E5AE    test       bl,bl
>0057E5B0    jle        0057E5B9
 0057E5B2    mov        eax,ebp
 0057E5B4    call       @ClassDestroy
 0057E5B9    pop        ebp
 0057E5BA    pop        edi
 0057E5BB    pop        esi
 0057E5BC    pop        ebx
 0057E5BD    ret
*}
end;

//0057E5C0
//procedure sub_0057E5C0(?:TRPPrinterDevice);
//begin
{*
 0057E5C0    push       ebp
 0057E5C1    mov        ebp,esp
 0057E5C3    push       0
 0057E5C5    push       ebx
 0057E5C6    xor        edx,edx
 0057E5C8    push       ebp
 0057E5C9    push       57E60A
 0057E5CE    push       dword ptr fs:[edx]
 0057E5D1    mov        dword ptr fs:[edx],esp
 0057E5D4    cmp        byte ptr [eax+8],0; TRPPrinterDevice.?f8:byte
>0057E5D8    jne        0057E5F4
 0057E5DA    mov        ebx,dword ptr ds:[61B830]
 0057E5E0    mov        ebx,dword ptr [ebx]
 0057E5E2    lea        edx,[ebp-4]
 0057E5E5    mov        eax,57E620; 'Invalid method call.  Device is not printing.'
 0057E5EA    call       ebx
 0057E5EC    mov        eax,dword ptr [ebp-4]
 0057E5EF    call       00579798
 0057E5F4    xor        eax,eax
 0057E5F6    pop        edx
 0057E5F7    pop        ecx
 0057E5F8    pop        ecx
 0057E5F9    mov        dword ptr fs:[eax],edx
 0057E5FC    push       57E611
 0057E601    lea        eax,[ebp-4]
 0057E604    call       @LStrClr
 0057E609    ret
<0057E60A    jmp        @HandleFinally
<0057E60F    jmp        0057E601
 0057E611    pop        ebx
 0057E612    pop        ecx
 0057E613    pop        ebp
 0057E614    ret
*}
//end;

//0057E650
//procedure sub_0057E650(?:TRPPrinterDevice);
//begin
{*
 0057E650    push       ebp
 0057E651    mov        ebp,esp
 0057E653    push       0
 0057E655    push       ebx
 0057E656    xor        edx,edx
 0057E658    push       ebp
 0057E659    push       57E69A
 0057E65E    push       dword ptr fs:[edx]
 0057E661    mov        dword ptr fs:[edx],esp
 0057E664    cmp        byte ptr [eax+8],0; TRPPrinterDevice.?f8:byte
>0057E668    je         0057E684
 0057E66A    mov        ebx,dword ptr ds:[61B830]
 0057E670    mov        ebx,dword ptr [ebx]
 0057E672    lea        edx,[ebp-4]
 0057E675    mov        eax,57E6B0; 'Invalid method call.  Device already printing.'
 0057E67A    call       ebx
 0057E67C    mov        eax,dword ptr [ebp-4]
 0057E67F    call       00579798
 0057E684    xor        eax,eax
 0057E686    pop        edx
 0057E687    pop        ecx
 0057E688    pop        ecx
 0057E689    mov        dword ptr fs:[eax],edx
 0057E68C    push       57E6A1
 0057E691    lea        eax,[ebp-4]
 0057E694    call       @LStrClr
 0057E699    ret
<0057E69A    jmp        @HandleFinally
<0057E69F    jmp        0057E691
 0057E6A1    pop        ebx
 0057E6A2    pop        ecx
 0057E6A3    pop        ebp
 0057E6A4    ret
*}
//end;

//0057E6E0
//function sub_0057E6E0(?:TRPPrinterDevice; ?:Pointer):?;
//begin
{*
 0057E6E0    push       ebx
 0057E6E1    push       esi
 0057E6E2    mov        ebx,edx
 0057E6E4    cmp        dword ptr [ebx],0
>0057E6E7    jne        0057E6EF
 0057E6E9    xor        esi,esi
>0057E6EB    jmp        0057E712
 0057E6ED    inc        dword ptr [ebx]
 0057E6EF    mov        eax,dword ptr [ebx]
 0057E6F1    cmp        byte ptr [eax],20
<0057E6F4    je         0057E6ED
 0057E6F6    mov        esi,dword ptr [ebx]
 0057E6F8    mov        edx,57E718; ','
 0057E6FD    mov        eax,dword ptr [ebx]
 0057E6FF    call       StrPos
 0057E704    mov        dword ptr [ebx],eax
 0057E706    cmp        dword ptr [ebx],0
>0057E709    je         0057E712
 0057E70B    mov        eax,dword ptr [ebx]
 0057E70D    mov        byte ptr [eax],0
 0057E710    inc        dword ptr [ebx]
 0057E712    mov        eax,esi
 0057E714    pop        esi
 0057E715    pop        ebx
 0057E716    ret
*}
//end;

//0057E71C
//function sub_0057E71C(?:TRPPrinterDevice; ?:?; ?:?):?;
//begin
{*
 0057E71C    push       ebp
 0057E71D    mov        ebp,esp
 0057E71F    add        esp,0FFFFFFF4
 0057E722    push       ebx
 0057E723    push       esi
 0057E724    push       edi
 0057E725    mov        dword ptr [ebp-4],edx
 0057E728    mov        dword ptr [ebp-8],0FFFFFFFF
 0057E72F    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057E732    mov        dword ptr [ebp-0C],eax
 0057E735    mov        eax,dword ptr [ebp-0C]
 0057E738    mov        edx,dword ptr [eax]
 0057E73A    call       dword ptr [edx+14]; TStringList.GetCount
 0057E73D    test       eax,eax
>0057E73F    je         0057E7AF
 0057E741    mov        eax,dword ptr [ebp-0C]
 0057E744    mov        edx,dword ptr [eax]
 0057E746    call       dword ptr [edx+14]; TStringList.GetCount
 0057E749    mov        edi,eax
 0057E74B    dec        edi
 0057E74C    test       edi,edi
>0057E74E    jl         0057E7AF
 0057E750    inc        edi
 0057E751    xor        esi,esi
 0057E753    mov        edx,esi
 0057E755    mov        eax,dword ptr [ebp-0C]
 0057E758    mov        ecx,dword ptr [eax]
 0057E75A    call       dword ptr [ecx+18]; TStringList.GetObject
 0057E75D    mov        edx,dword ptr ds:[57E408]; TRPDeviceItem
 0057E763    call       @AsClass
 0057E768    mov        ebx,eax
 0057E76A    mov        eax,[0061C584]; ^Win32Platform:System.Integer
 0057E76F    cmp        dword ptr [eax],2
>0057E772    jne        0057E788
 0057E774    mov        edx,dword ptr [ebx+4]; TRPDeviceItem.?f4:PChar
 0057E777    mov        eax,dword ptr [ebp-4]
 0057E77A    call       AnsiStrIComp
 0057E77F    test       eax,eax
>0057E781    jne        0057E7AB
 0057E783    mov        dword ptr [ebp-8],esi
>0057E786    jmp        0057E7AF
 0057E788    mov        edx,dword ptr [ebx+4]; TRPDeviceItem.?f4:PChar
 0057E78B    mov        eax,dword ptr [ebp-4]
 0057E78E    call       AnsiStrIComp
 0057E793    test       eax,eax
>0057E795    jne        0057E7AB
 0057E797    mov        edx,dword ptr [ebx+0C]; TRPDeviceItem.?fC:PChar
 0057E79A    mov        eax,dword ptr [ebp+8]
 0057E79D    call       AnsiStrIComp
 0057E7A2    test       eax,eax
>0057E7A4    jne        0057E7AB
 0057E7A6    mov        dword ptr [ebp-8],esi
>0057E7A9    jmp        0057E7AF
 0057E7AB    inc        esi
 0057E7AC    dec        edi
<0057E7AD    jne        0057E753
 0057E7AF    mov        eax,dword ptr [ebp-8]
 0057E7B2    pop        edi
 0057E7B3    pop        esi
 0057E7B4    pop        ebx
 0057E7B5    mov        esp,ebp
 0057E7B7    pop        ebp
 0057E7B8    ret        4
*}
//end;

//0057E7BC
//function sub_0057E7BC(?:?):?;
//begin
{*
 0057E7BC    push       ebp
 0057E7BD    mov        ebp,esp
 0057E7BF    add        esp,0FFFFFFF4
 0057E7C2    push       ebx
 0057E7C3    mov        dword ptr [ebp-4],edx
 0057E7C6    mov        ebx,eax
 0057E7C8    mov        eax,dword ptr [ebp-4]
 0057E7CB    call       @LStrAddRef
 0057E7D0    xor        eax,eax
 0057E7D2    push       ebp
 0057E7D3    push       57E834
 0057E7D8    push       dword ptr fs:[eax]
 0057E7DB    mov        dword ptr fs:[eax],esp
 0057E7DE    cmp        dword ptr [ebp-4],0
>0057E7E2    jne        0057E7EB
 0057E7E4    mov        ebx,1
>0057E7E9    jmp        0057E81E
 0057E7EB    lea        eax,[ebp-0C]
 0057E7EE    push       eax
 0057E7EF    mov        eax,dword ptr [ebp-4]
 0057E7F2    call       @LStrLen
 0057E7F7    push       eax
 0057E7F8    lea        eax,[ebp-4]
 0057E7FB    call       @UniqueStringA
 0057E800    push       eax
 0057E801    mov        eax,ebx
 0057E803    call       0057EF4C
 0057E808    push       eax
 0057E809    call       gdi32.GetTextExtentPoint32A
 0057E80E    cmp        dword ptr [ebp-0C],0
>0057E812    jne        0057E81B
 0057E814    mov        dword ptr [ebp-0C],1
 0057E81B    mov        ebx,dword ptr [ebp-0C]
 0057E81E    xor        eax,eax
 0057E820    pop        edx
 0057E821    pop        ecx
 0057E822    pop        ecx
 0057E823    mov        dword ptr fs:[eax],edx
 0057E826    push       57E83B
 0057E82B    lea        eax,[ebp-4]
 0057E82E    call       @LStrClr
 0057E833    ret
<0057E834    jmp        @HandleFinally
<0057E839    jmp        0057E82B
 0057E83B    mov        eax,ebx
 0057E83D    pop        ebx
 0057E83E    mov        esp,ebp
 0057E840    pop        ebp
 0057E841    ret
*}
//end;

//0057E844
//procedure sub_0057E844(?:?; ?:?);
//begin
{*
 0057E844    push       ebp
 0057E845    mov        ebp,esp
 0057E847    add        esp,0FFFFFFF8
 0057E84A    push       ebx
 0057E84B    push       esi
 0057E84C    mov        word ptr [ebp-2],cx
 0057E850    mov        esi,edx
 0057E852    mov        ebx,eax
 0057E854    movzx      eax,word ptr [ebp-2]
 0057E858    add        eax,2
 0057E85B    call       @GetMem
 0057E860    mov        dword ptr [ebp-8],eax
 0057E863    xor        eax,eax
 0057E865    push       ebp
 0057E866    push       57E8C6
 0057E86B    push       dword ptr fs:[eax]
 0057E86E    mov        dword ptr fs:[eax],esp
 0057E871    mov        edx,dword ptr [ebp-8]
 0057E874    lea        eax,[ebp-2]
 0057E877    mov        ecx,2
 0057E87C    call       Move
 0057E881    movzx      ecx,word ptr [ebp-2]
 0057E885    mov        edx,dword ptr [ebp-8]
 0057E888    add        edx,2
 0057E88B    mov        eax,esi
 0057E88D    call       Move
 0057E892    push       0
 0057E894    mov        eax,dword ptr [ebp-8]
 0057E897    push       eax
 0057E898    push       0
 0057E89A    push       13
 0057E89C    mov        eax,ebx
 0057E89E    call       0057EF4C
 0057E8A3    push       eax
 0057E8A4    call       gdi32.Escape
 0057E8A9    xor        eax,eax
 0057E8AB    pop        edx
 0057E8AC    pop        ecx
 0057E8AD    pop        ecx
 0057E8AE    mov        dword ptr fs:[eax],edx
 0057E8B1    push       57E8CD
 0057E8B6    movzx      edx,word ptr [ebp-2]
 0057E8BA    add        edx,2
 0057E8BD    mov        eax,dword ptr [ebp-8]
 0057E8C0    call       @FreeMem
 0057E8C5    ret
<0057E8C6    jmp        @HandleFinally
<0057E8CB    jmp        0057E8B6
 0057E8CD    pop        esi
 0057E8CE    pop        ebx
 0057E8CF    pop        ecx
 0057E8D0    pop        ecx
 0057E8D1    pop        ebp
 0057E8D2    ret
*}
//end;

//0057E8D4
//function sub_0057E8D4(?:?; ?:?):?;
//begin
{*
 0057E8D4    push       ebp
 0057E8D5    mov        ebp,esp
 0057E8D7    add        esp,0FFFFFFEC
 0057E8DA    push       ebx
 0057E8DB    push       esi
 0057E8DC    push       edi
 0057E8DD    mov        ebx,dword ptr [ebp+8]
 0057E8E0    xor        eax,eax
 0057E8E2    mov        dword ptr [ebp-4],eax
 0057E8E5    xor        eax,eax
 0057E8E7    push       ebp
 0057E8E8    push       57E953
 0057E8ED    push       dword ptr fs:[eax]
 0057E8F0    mov        dword ptr fs:[eax],esp
 0057E8F3    mov        eax,dword ptr [ebp+0C]
 0057E8F6    sub        eax,110
>0057E8FB    jne        0057E949
 0057E8FD    lea        eax,[ebp-14]
 0057E900    push       eax
 0057E901    push       ebx
 0057E902    call       user32.GetWindowRect
 0057E907    mov        esi,dword ptr [ebp-0C]
 0057E90A    sub        esi,dword ptr [ebp-14]
 0057E90D    push       15
 0057E90F    push       0
 0057E911    push       0
 0057E913    push       1
 0057E915    call       user32.GetSystemMetrics
 0057E91A    sub        eax,dword ptr [ebp-8]
 0057E91D    add        eax,dword ptr [ebp-10]
 0057E920    mov        ecx,3
 0057E925    cdq
 0057E926    idiv       eax,ecx
 0057E928    push       eax
 0057E929    push       0
 0057E92B    call       user32.GetSystemMetrics
 0057E930    sub        eax,esi
 0057E932    sar        eax,1
>0057E934    jns        0057E939
 0057E936    adc        eax,0
 0057E939    push       eax
 0057E93A    push       0
 0057E93C    push       ebx
 0057E93D    call       user32.SetWindowPos
 0057E942    mov        dword ptr [ebp-4],1
 0057E949    xor        eax,eax
 0057E94B    pop        edx
 0057E94C    pop        ecx
 0057E94D    pop        ecx
 0057E94E    mov        dword ptr fs:[eax],edx
>0057E951    jmp        0057E96B
<0057E953    jmp        @HandleAnyException
 0057E958    mov        eax,[0061BD04]; ^Application:TApplication
 0057E95D    mov        eax,dword ptr [eax]
 0057E95F    xor        edx,edx
 0057E961    call       TApplication.HandleException
 0057E966    call       @DoneExcept
 0057E96B    mov        eax,dword ptr [ebp-4]
 0057E96E    pop        edi
 0057E96F    pop        esi
 0057E970    pop        ebx
 0057E971    mov        esp,ebp
 0057E973    pop        ebp
 0057E974    ret        10
*}
//end;

//0057E978
//function sub_0057E978(?:?):?;
//begin
{*
 0057E978    push       ebp
 0057E979    mov        ebp,esp
 0057E97B    add        esp,0FFFFFF8C
 0057E97E    push       ebx
 0057E97F    push       esi
 0057E980    push       edi
 0057E981    xor        edx,edx
 0057E983    mov        dword ptr [ebp-70],edx
 0057E986    mov        dword ptr [ebp-74],edx
 0057E989    mov        dword ptr [ebp-6C],edx
 0057E98C    mov        dword ptr [ebp-68],edx
 0057E98F    mov        dword ptr [ebp-64],edx
 0057E992    mov        dword ptr [ebp-60],edx
 0057E995    mov        dword ptr [ebp-5C],edx
 0057E998    mov        dword ptr [ebp-58],edx
 0057E99B    mov        dword ptr [ebp-10],edx
 0057E99E    mov        dword ptr [ebp-4],eax
 0057E9A1    xor        eax,eax
 0057E9A3    push       ebp
 0057E9A4    push       57EC3D
 0057E9A9    push       dword ptr fs:[eax]
 0057E9AC    mov        dword ptr fs:[eax],esp
 0057E9AF    mov        dl,1
 0057E9B1    mov        eax,dword ptr [ebp-4]
 0057E9B4    call       0057EDB4
 0057E9B9    mov        byte ptr [ebp-5],0
 0057E9BD    lea        edx,[ebp-58]
 0057E9C0    mov        eax,dword ptr [ebp-4]
 0057E9C3    call       0057EFA0
 0057E9C8    mov        eax,dword ptr [ebp-58]
 0057E9CB    call       @LStrLen
 0057E9D0    mov        ebx,eax
 0057E9D2    add        ebx,8
 0057E9D5    lea        edx,[ebp-5C]
 0057E9D8    mov        eax,dword ptr [ebp-4]
 0057E9DB    call       0057EFE8
 0057E9E0    mov        eax,dword ptr [ebp-5C]
 0057E9E3    call       @LStrLen
 0057E9E8    add        ebx,eax
 0057E9EA    lea        edx,[ebp-60]
 0057E9ED    mov        eax,dword ptr [ebp-4]
 0057E9F0    call       0057EFC4
 0057E9F5    mov        eax,dword ptr [ebp-60]
 0057E9F8    call       @LStrLen
 0057E9FD    add        ebx,eax
 0057E9FF    add        ebx,5
 0057EA02    push       ebx
 0057EA03    push       42
 0057EA05    call       kernel32.GlobalAlloc
 0057EA0A    mov        dword ptr [ebp-0C],eax
 0057EA0D    xor        edx,edx
 0057EA0F    push       ebp
 0057EA10    push       57EC13
 0057EA15    push       dword ptr fs:[edx]
 0057EA18    mov        dword ptr fs:[edx],esp
 0057EA1B    mov        eax,dword ptr [ebp-0C]
 0057EA1E    push       eax
 0057EA1F    call       kernel32.GlobalLock
 0057EA24    mov        esi,eax
 0057EA26    xor        eax,eax
 0057EA28    push       ebp
 0057EA29    push       57EAC6
 0057EA2E    push       dword ptr fs:[eax]
 0057EA31    mov        dword ptr fs:[eax],esp
 0057EA34    mov        ebx,esi
 0057EA36    add        ebx,8
 0057EA39    mov        edi,esi
 0057EA3B    mov        eax,ebx
 0057EA3D    sub        ax,si
 0057EA40    mov        word ptr [edi],ax
 0057EA43    lea        edx,[ebp-64]
 0057EA46    mov        eax,dword ptr [ebp-4]
 0057EA49    call       0057EFA0
 0057EA4E    mov        eax,dword ptr [ebp-64]
 0057EA51    call       @LStrToPChar
 0057EA56    mov        edx,eax
 0057EA58    mov        eax,ebx
 0057EA5A    call       StrECopy
 0057EA5F    inc        eax
 0057EA60    mov        ebx,eax
 0057EA62    mov        eax,ebx
 0057EA64    sub        ax,si
 0057EA67    mov        word ptr [edi+2],ax
 0057EA6B    lea        edx,[ebp-68]
 0057EA6E    mov        eax,dword ptr [ebp-4]
 0057EA71    call       0057EFE8
 0057EA76    mov        eax,dword ptr [ebp-68]
 0057EA79    call       @LStrToPChar
 0057EA7E    mov        edx,eax
 0057EA80    mov        eax,ebx
 0057EA82    call       StrECopy
 0057EA87    inc        eax
 0057EA88    mov        ebx,eax
 0057EA8A    mov        eax,ebx
 0057EA8C    sub        ax,si
 0057EA8F    mov        word ptr [edi+4],ax
 0057EA93    lea        edx,[ebp-6C]
 0057EA96    mov        eax,dword ptr [ebp-4]
 0057EA99    call       0057EFC4
 0057EA9E    mov        eax,dword ptr [ebp-6C]
 0057EAA1    call       @LStrToPChar
 0057EAA6    mov        edx,eax
 0057EAA8    mov        eax,ebx
 0057EAAA    call       StrCopy
 0057EAAF    xor        eax,eax
 0057EAB1    pop        edx
 0057EAB2    pop        ecx
 0057EAB3    pop        ecx
 0057EAB4    mov        dword ptr fs:[eax],edx
 0057EAB7    push       57EACD
 0057EABC    mov        eax,dword ptr [ebp-0C]
 0057EABF    push       eax
 0057EAC0    call       kernel32.GlobalUnlock
 0057EAC5    ret
<0057EAC6    jmp        @HandleFinally
<0057EACB    jmp        0057EABC
 0057EACD    lea        eax,[ebp-52]
 0057EAD0    xor        ecx,ecx
 0057EAD2    mov        edx,42
 0057EAD7    call       @FillChar
 0057EADC    mov        eax,[0061D668]; HInstance:LongWord
 0057EAE1    mov        dword ptr [ebp-30],eax
 0057EAE4    mov        dword ptr [ebp-52],42
 0057EAEB    call       user32.GetFocus
 0057EAF0    mov        dword ptr [ebp-4E],eax
 0057EAF3    mov        eax,dword ptr [ebp-4]
 0057EAF6    mov        eax,dword ptr [eax+38]
 0057EAF9    mov        dword ptr [ebp-4A],eax
 0057EAFC    mov        edx,dword ptr [ebp-0C]
 0057EAFF    mov        dword ptr [ebp-46],edx
 0057EB02    mov        dword ptr [ebp-3E],2040
 0057EB09    mov        dword ptr [ebp-24],57E8D4; sub_0057E8D4
 0057EB10    push       eax
 0057EB11    call       kernel32.GlobalUnlock
 0057EB16    lea        eax,[ebp-52]
 0057EB19    push       eax
 0057EB1A    call       comdlg32.PrintDlgA
 0057EB1F    test       eax,eax
>0057EB21    je         0057EBEC
 0057EB27    mov        eax,dword ptr [ebp-4]
 0057EB2A    mov        ebx,dword ptr [ebp-4A]
 0057EB2D    mov        dword ptr [eax+38],ebx
 0057EB30    test       ebx,ebx
>0057EB32    jne        0057EB3E
 0057EB34    mov        eax,dword ptr [ebp-4]
 0057EB37    xor        edx,edx
 0057EB39    mov        dword ptr [eax+3C],edx
>0057EB3C    jmp        0057EB4A
 0057EB3E    push       ebx
 0057EB3F    call       kernel32.GlobalLock
 0057EB44    mov        edx,dword ptr [ebp-4]
 0057EB47    mov        dword ptr [edx+3C],eax
 0057EB4A    mov        eax,dword ptr [ebp-46]
 0057EB4D    push       eax
 0057EB4E    call       kernel32.GlobalLock
 0057EB53    mov        esi,eax
 0057EB55    xor        eax,eax
 0057EB57    push       ebp
 0057EB58    push       57EBE5
 0057EB5D    push       dword ptr fs:[eax]
 0057EB60    mov        dword ptr fs:[eax],esp
 0057EB63    mov        eax,[0061C584]; ^Win32Platform:System.Integer
 0057EB68    cmp        dword ptr [eax],2
>0057EB6B    jne        0057EB7D
 0057EB6D    lea        edx,[ebp-10]
 0057EB70    movzx      eax,word ptr [esi+2]
 0057EB74    add        eax,esi
 0057EB76    call       StrPas
>0057EB7B    jmp        0057EBB3
 0057EB7D    lea        edx,[ebp-70]
 0057EB80    movzx      eax,word ptr [esi+2]
 0057EB84    mov        ebx,esi
 0057EB86    add        eax,ebx
 0057EB88    call       StrPas
 0057EB8D    push       dword ptr [ebp-70]
 0057EB90    push       57EC58; ' on '
 0057EB95    lea        edx,[ebp-74]
 0057EB98    movzx      eax,word ptr [esi+4]
 0057EB9C    add        eax,ebx
 0057EB9E    call       StrPas
 0057EBA3    push       dword ptr [ebp-74]
 0057EBA6    lea        eax,[ebp-10]
 0057EBA9    mov        edx,3
 0057EBAE    call       @LStrCatN
 0057EBB3    mov        eax,dword ptr [ebp-4]
 0057EBB6    mov        byte ptr [eax+91],1
 0057EBBD    mov        cl,1
 0057EBBF    mov        edx,dword ptr [ebp-10]
 0057EBC2    mov        eax,dword ptr [ebp-4]
 0057EBC5    call       00580058
 0057EBCA    mov        byte ptr [ebp-5],1
 0057EBCE    xor        eax,eax
 0057EBD0    pop        edx
 0057EBD1    pop        ecx
 0057EBD2    pop        ecx
 0057EBD3    mov        dword ptr fs:[eax],edx
 0057EBD6    push       57EBEC
 0057EBDB    mov        eax,dword ptr [ebp-46]
 0057EBDE    push       eax
 0057EBDF    call       kernel32.GlobalUnlock
 0057EBE4    ret
<0057EBE5    jmp        @HandleFinally
<0057EBEA    jmp        0057EBDB
 0057EBEC    xor        eax,eax
 0057EBEE    pop        edx
 0057EBEF    pop        ecx
 0057EBF0    pop        ecx
 0057EBF1    mov        dword ptr fs:[eax],edx
 0057EBF4    push       57EC1A
 0057EBF9    mov        eax,dword ptr [ebp-0C]
 0057EBFC    push       eax
 0057EBFD    call       kernel32.GlobalUnlock
 0057EC02    mov        eax,dword ptr [ebp-46]
 0057EC05    push       eax
 0057EC06    call       kernel32.GlobalFree
 0057EC0B    mov        eax,dword ptr [ebp-4]
 0057EC0E    mov        byte ptr [eax+65],1
 0057EC12    ret
<0057EC13    jmp        @HandleFinally
<0057EC18    jmp        0057EBF9
 0057EC1A    xor        eax,eax
 0057EC1C    pop        edx
 0057EC1D    pop        ecx
 0057EC1E    pop        ecx
 0057EC1F    mov        dword ptr fs:[eax],edx
 0057EC22    push       57EC44
 0057EC27    lea        eax,[ebp-74]
 0057EC2A    mov        edx,8
 0057EC2F    call       @LStrArrayClr
 0057EC34    lea        eax,[ebp-10]
 0057EC37    call       @LStrClr
 0057EC3C    ret
<0057EC3D    jmp        @HandleFinally
<0057EC42    jmp        0057EC27
 0057EC44    mov        al,byte ptr [ebp-5]
 0057EC47    pop        edi
 0057EC48    pop        esi
 0057EC49    pop        ebx
 0057EC4A    mov        esp,ebp
 0057EC4C    pop        ebp
 0057EC4D    ret
*}
//end;

//0057EC60
//function sub_0057EC60(?:TRPPrinterDevice; ?:?):?;
//begin
{*
 0057EC60    push       ebx
 0057EC61    mov        ebx,eax
 0057EC63    cmp        dword ptr [ebx+54],0; TRPPrinterDevice.?f54:dword
>0057EC67    jge        0057EC7A
 0057EC69    mov        dword ptr [ebx+54],0FFFFFFFE; TRPPrinterDevice.?f54:dword
 0057EC70    or         edx,0FFFFFFFF
 0057EC73    mov        eax,ebx
 0057EC75    call       0057EC80
 0057EC7A    mov        eax,dword ptr [ebx+54]; TRPPrinterDevice.?f54:dword
 0057EC7D    pop        ebx
 0057EC7E    ret
*}
//end;

//0057EC80
//procedure sub_0057EC80(?:TRPPrinterDevice; ?:?);
//begin
{*
 0057EC80    push       ebp
 0057EC81    mov        ebp,esp
 0057EC83    add        esp,0FFFFFFF0
 0057EC86    push       ebx
 0057EC87    push       esi
 0057EC88    mov        ebx,edx
 0057EC8A    mov        dword ptr [ebp-4],eax
 0057EC8D    mov        eax,dword ptr [ebp-4]
 0057EC90    call       0057E650
 0057EC95    mov        eax,dword ptr [ebp-4]
 0057EC98    mov        byte ptr [eax+92],0; TRPPrinterDevice.?f92:byte
 0057EC9F    mov        eax,dword ptr [ebp-4]
 0057ECA2    cmp        ebx,dword ptr [eax+54]; TRPPrinterDevice.?f54:dword
>0057ECA5    je         0057ED9A
 0057ECAB    mov        eax,dword ptr [ebp-4]
 0057ECAE    mov        edx,dword ptr [eax]
 0057ECB0    call       dword ptr [edx+1C]; TRPPrinterDevice.sub_0057FE10
 0057ECB3    mov        edx,dword ptr [eax]
 0057ECB5    call       dword ptr [edx+14]
 0057ECB8    cmp        ebx,eax
>0057ECBA    jge        0057ED9A
 0057ECC0    test       ebx,ebx
>0057ECC2    jge        0057ED86
 0057ECC8    mov        eax,100
 0057ECCD    call       @GetMem
 0057ECD2    mov        dword ptr [ebp-8],eax
 0057ECD5    xor        edx,edx
 0057ECD7    push       ebp
 0057ECD8    push       57ED7F
 0057ECDD    push       dword ptr fs:[edx]
 0057ECE0    mov        dword ptr fs:[edx],esp
 0057ECE3    push       100
 0057ECE8    mov        eax,dword ptr [ebp-8]
 0057ECEB    push       eax
 0057ECEC    push       57EDA0; ''
 0057ECF1    push       57EDA4; 'DEVICE'
 0057ECF6    push       57EDAC; 'WINDOWS'
 0057ECFB    call       kernel32.GetProfileStringA
 0057ED00    mov        eax,dword ptr [ebp-8]
 0057ED03    cmp        byte ptr [eax],0
>0057ED06    jne        0057ED19
 0057ED08    mov        eax,dword ptr [ebp-4]
 0057ED0B    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057ED0E    mov        edx,dword ptr [eax]
 0057ED10    call       dword ptr [edx+14]; TStringList.GetCount
 0057ED13    dec        eax
 0057ED14    mov        dword ptr [ebp-10],eax
>0057ED17    jmp        0057ED69
 0057ED19    mov        eax,dword ptr [ebp-8]
 0057ED1C    mov        dword ptr [ebp-0C],eax
 0057ED1F    lea        edx,[ebp-0C]
 0057ED22    mov        eax,dword ptr [ebp-4]
 0057ED25    call       0057E6E0
 0057ED2A    mov        ebx,eax
 0057ED2C    lea        edx,[ebp-0C]
 0057ED2F    mov        eax,dword ptr [ebp-4]
 0057ED32    call       0057E6E0
 0057ED37    mov        esi,eax
 0057ED39    lea        edx,[ebp-0C]
 0057ED3C    mov        eax,dword ptr [ebp-4]
 0057ED3F    call       0057E6E0
 0057ED44    push       eax
 0057ED45    mov        ecx,esi
 0057ED47    mov        edx,ebx
 0057ED49    mov        eax,dword ptr [ebp-4]
 0057ED4C    call       0057E71C
 0057ED51    mov        dword ptr [ebp-10],eax
 0057ED54    cmp        dword ptr [ebp-10],0
>0057ED58    jge        0057ED69
 0057ED5A    mov        eax,dword ptr [ebp-4]
 0057ED5D    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057ED60    mov        edx,dword ptr [eax]
 0057ED62    call       dword ptr [edx+14]; TStringList.GetCount
 0057ED65    dec        eax
 0057ED66    mov        dword ptr [ebp-10],eax
 0057ED69    xor        eax,eax
 0057ED6B    pop        edx
 0057ED6C    pop        ecx
 0057ED6D    pop        ecx
 0057ED6E    mov        dword ptr fs:[eax],edx
 0057ED71    push       57ED89
 0057ED76    mov        eax,dword ptr [ebp-8]
 0057ED79    call       @FreeMem
 0057ED7E    ret
<0057ED7F    jmp        @HandleFinally
<0057ED84    jmp        0057ED76
 0057ED86    mov        dword ptr [ebp-10],ebx
 0057ED89    cmp        dword ptr [ebp-10],0
>0057ED8D    jl         0057ED9A
 0057ED8F    mov        edx,dword ptr [ebp-10]
 0057ED92    mov        eax,dword ptr [ebp-4]
 0057ED95    call       0057F0A0
 0057ED9A    pop        esi
 0057ED9B    pop        ebx
 0057ED9C    mov        esp,ebp
 0057ED9E    pop        ebp
 0057ED9F    ret
*}
//end;

//0057EDB4
//procedure sub_0057EDB4(?:TRPPrinterDevice; ?:?);
//begin
{*
 0057EDB4    push       ebp
 0057EDB5    mov        ebp,esp
 0057EDB7    add        esp,0FFFFFFDC
 0057EDBA    push       ebx
 0057EDBB    push       esi
 0057EDBC    push       edi
 0057EDBD    xor        ecx,ecx
 0057EDBF    mov        dword ptr [ebp-8],ecx
 0057EDC2    mov        dword ptr [ebp-0C],ecx
 0057EDC5    mov        ebx,edx
 0057EDC7    mov        esi,eax
 0057EDC9    xor        eax,eax
 0057EDCB    push       ebp
 0057EDCC    push       57EF0B
 0057EDD1    push       dword ptr fs:[eax]
 0057EDD4    mov        dword ptr fs:[eax],esp
 0057EDD7    mov        al,byte ptr [esi+40]; TRPPrinterDevice.?f40:byte
 0057EDDA    cmp        al,2
>0057EDDC    jne        0057EDE7
 0057EDDE    cmp        bl,1
>0057EDE1    je         0057EEF0
 0057EDE7    cmp        al,bl
>0057EDE9    je         0057EEF0
 0057EDEF    cmp        dword ptr [esi+30],0; TRPPrinterDevice.?f30:HDC
>0057EDF3    je         0057EE0A
 0057EDF5    mov        eax,esi
 0057EDF7    call       0057F228
 0057EDFC    mov        eax,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057EDFF    push       eax
 0057EE00    call       gdi32.DeleteDC
 0057EE05    xor        eax,eax
 0057EE07    mov        dword ptr [esi+30],eax; TRPPrinterDevice.?f30:HDC
 0057EE0A    test       bl,bl
>0057EE0C    je         0057EEED
 0057EE12    mov        eax,esi
 0057EE14    call       0058068C
 0057EE19    test       al,al
>0057EE1B    jne        0057EEED
 0057EE21    mov        eax,esi
 0057EE23    call       0057EC60
 0057EE28    mov        eax,esi
 0057EE2A    mov        edx,dword ptr [eax]
 0057EE2C    call       dword ptr [edx+1C]; TRPPrinterDevice.sub_0057FE10
 0057EE2F    mov        edx,dword ptr [esi+54]; TRPPrinterDevice.?f54:dword
 0057EE32    mov        ecx,dword ptr [eax]
 0057EE34    call       dword ptr [ecx+18]
 0057EE37    mov        dword ptr [ebp-4],eax
 0057EE3A    cmp        bl,1
>0057EE3D    jne        0057EE62
 0057EE3F    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0057EE42    push       eax
 0057EE43    mov        eax,dword ptr [ebp-4]
 0057EE46    mov        eax,dword ptr [eax+0C]
 0057EE49    push       eax
 0057EE4A    mov        eax,dword ptr [ebp-4]
 0057EE4D    mov        eax,dword ptr [eax+4]
 0057EE50    push       eax
 0057EE51    mov        eax,dword ptr [ebp-4]
 0057EE54    mov        eax,dword ptr [eax+8]
 0057EE57    push       eax
 0057EE58    call       gdi32.CreateICA
 0057EE5D    mov        dword ptr [esi+30],eax; TRPPrinterDevice.?f30:HDC
>0057EE60    jmp        0057EE83
 0057EE62    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0057EE65    push       eax
 0057EE66    mov        eax,dword ptr [ebp-4]
 0057EE69    mov        eax,dword ptr [eax+0C]
 0057EE6C    push       eax
 0057EE6D    mov        eax,dword ptr [ebp-4]
 0057EE70    mov        eax,dword ptr [eax+4]
 0057EE73    push       eax
 0057EE74    mov        eax,dword ptr [ebp-4]
 0057EE77    mov        eax,dword ptr [eax+8]
 0057EE7A    push       eax
 0057EE7B    call       gdi32.CreateDCA
 0057EE80    mov        dword ptr [esi+30],eax; TRPPrinterDevice.?f30:HDC
 0057EE83    cmp        dword ptr [esi+30],0; TRPPrinterDevice.?f30:HDC
>0057EE87    jne        0057EEDE
 0057EE89    lea        eax,[ebp-0C]
 0057EE8C    push       eax
 0057EE8D    mov        eax,dword ptr [ebp-4]
 0057EE90    mov        eax,dword ptr [eax+4]
 0057EE93    mov        dword ptr [ebp-24],eax
 0057EE96    mov        byte ptr [ebp-20],6
 0057EE9A    mov        eax,dword ptr [ebp-4]
 0057EE9D    mov        eax,dword ptr [eax+0C]
 0057EEA0    mov        dword ptr [ebp-1C],eax
 0057EEA3    mov        byte ptr [ebp-18],6
 0057EEA7    mov        eax,dword ptr [ebp-4]
 0057EEAA    mov        eax,dword ptr [eax+8]
 0057EEAD    mov        dword ptr [ebp-14],eax
 0057EEB0    mov        byte ptr [ebp-10],6
 0057EEB4    lea        edx,[ebp-24]
 0057EEB7    mov        ecx,2
 0057EEBC    mov        eax,57EF24; 'Invalid Printer - %0:s on %1:s (%2:s)'
 0057EEC1    call       Format
 0057EEC6    mov        eax,dword ptr [ebp-0C]
 0057EEC9    mov        edi,dword ptr ds:[61B830]
 0057EECF    mov        edi,dword ptr [edi]
 0057EED1    lea        edx,[ebp-8]
 0057EED4    call       edi
 0057EED6    mov        eax,dword ptr [ebp-8]
 0057EED9    call       00579798
 0057EEDE    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057EEE1    test       eax,eax
>0057EEE3    je         0057EEED
 0057EEE5    mov        edx,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057EEE8    call       TCanvas.SetHandle
 0057EEED    mov        byte ptr [esi+40],bl; TRPPrinterDevice.?f40:byte
 0057EEF0    xor        eax,eax
 0057EEF2    pop        edx
 0057EEF3    pop        ecx
 0057EEF4    pop        ecx
 0057EEF5    mov        dword ptr fs:[eax],edx
 0057EEF8    push       57EF12
 0057EEFD    lea        eax,[ebp-0C]
 0057EF00    mov        edx,2
 0057EF05    call       @LStrArrayClr
 0057EF0A    ret
<0057EF0B    jmp        @HandleFinally
<0057EF10    jmp        0057EEFD
 0057EF12    pop        edi
 0057EF13    pop        esi
 0057EF14    pop        ebx
 0057EF15    mov        esp,ebp
 0057EF17    pop        ebp
 0057EF18    ret
*}
//end;

//0057EF4C
//function sub_0057EF4C(?:TRPPrinterDevice):?;
//begin
{*
 0057EF4C    push       ebx
 0057EF4D    mov        ebx,eax
 0057EF4F    mov        dl,1
 0057EF51    mov        eax,ebx
 0057EF53    call       0057EDB4
 0057EF58    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057EF5B    pop        ebx
 0057EF5C    ret
*}
//end;

//0057EF60
//function sub_0057EF60:?;
//begin
{*
 0057EF60    push       ebx
 0057EF61    mov        ebx,eax
 0057EF63    cmp        dword ptr [ebx+5C],0; TRPPrinterDevice.?f5C:TRPPrinterCanvas
>0057EF67    jne        0057EF7A
 0057EF69    mov        ecx,ebx
 0057EF6B    mov        dl,1
 0057EF6D    mov        eax,[0057DE7C]; TRPPrinterCanvas
 0057EF72    call       TRPPrinterCanvas.Create; TRPPrinterCanvas.Create
 0057EF77    mov        dword ptr [ebx+5C],eax; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057EF7A    mov        eax,dword ptr [ebx+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057EF7D    pop        ebx
 0057EF7E    ret
*}
//end;

//0057EF80
//function sub_0057EF80(?:TRPPrinterDevice):?;
//begin
{*
 0057EF80    push       ebx
 0057EF81    mov        ebx,eax
 0057EF83    mov        eax,ebx
 0057EF85    call       0058068C
 0057EF8A    test       al,al
>0057EF8C    je         0057EF92
 0057EF8E    xor        eax,eax
 0057EF90    pop        ebx
 0057EF91    ret
 0057EF92    mov        eax,ebx
 0057EF94    call       0057EC60
 0057EF99    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 0057EF9C    pop        ebx
 0057EF9D    ret
*}
//end;

//0057EFA0
//procedure sub_0057EFA0(?:?; ?:AnsiString);
//begin
{*
 0057EFA0    push       ebx
 0057EFA1    push       esi
 0057EFA2    push       edi
 0057EFA3    mov        esi,edx
 0057EFA5    mov        ebx,eax
 0057EFA7    mov        edi,dword ptr [ebx+28]
 0057EFAA    test       edi,edi
>0057EFAC    je         0057EFB9
 0057EFAE    mov        eax,esi
 0057EFB0    mov        edx,edi
 0057EFB2    call       @LStrFromPChar
>0057EFB7    jmp        0057EFC0
 0057EFB9    mov        eax,esi
 0057EFBB    call       @LStrClr
 0057EFC0    pop        edi
 0057EFC1    pop        esi
 0057EFC2    pop        ebx
 0057EFC3    ret
*}
//end;

//0057EFC4
//procedure sub_0057EFC4(?:?; ?:AnsiString);
//begin
{*
 0057EFC4    push       ebx
 0057EFC5    push       esi
 0057EFC6    push       edi
 0057EFC7    mov        esi,edx
 0057EFC9    mov        ebx,eax
 0057EFCB    mov        edi,dword ptr [ebx+2C]
 0057EFCE    test       edi,edi
>0057EFD0    je         0057EFDD
 0057EFD2    mov        eax,esi
 0057EFD4    mov        edx,edi
 0057EFD6    call       @LStrFromPChar
>0057EFDB    jmp        0057EFE4
 0057EFDD    mov        eax,esi
 0057EFDF    call       @LStrClr
 0057EFE4    pop        edi
 0057EFE5    pop        esi
 0057EFE6    pop        ebx
 0057EFE7    ret
*}
//end;

//0057EFE8
//procedure sub_0057EFE8(?:?; ?:AnsiString);
//begin
{*
 0057EFE8    push       ebx
 0057EFE9    push       esi
 0057EFEA    push       edi
 0057EFEB    mov        esi,edx
 0057EFED    mov        ebx,eax
 0057EFEF    mov        edi,dword ptr [ebx+24]
 0057EFF2    test       edi,edi
>0057EFF4    je         0057F001
 0057EFF6    mov        eax,esi
 0057EFF8    mov        edx,edi
 0057EFFA    call       @LStrFromPChar
>0057EFFF    jmp        0057F008
 0057F001    mov        eax,esi
 0057F003    call       @LStrClr
 0057F008    pop        edi
 0057F009    pop        esi
 0057F00A    pop        ebx
 0057F00B    ret
*}
//end;

//0057F00C
//procedure sub_0057F00C(?:TRPPrinterDevice);
//begin
{*
 0057F00C    push       ebx
 0057F00D    mov        ebx,eax
 0057F00F    xor        edx,edx
 0057F011    mov        eax,ebx
 0057F013    call       0057EDB4
 0057F018    mov        eax,dword ptr [ebx+38]; TRPPrinterDevice.?f38:THandle
 0057F01B    test       eax,eax
>0057F01D    je         0057F04C
 0057F01F    cmp        byte ptr [ebx+91],0; TRPPrinterDevice.?f91:byte
>0057F026    jne        0057F045
 0057F028    push       eax
 0057F029    call       kernel32.GlobalUnlock
 0057F02E    mov        eax,dword ptr [ebx+38]; TRPPrinterDevice.?f38:THandle
 0057F031    push       eax
 0057F032    call       kernel32.GlobalFree
 0057F037    xor        eax,eax
 0057F039    mov        dword ptr [ebx+38],eax; TRPPrinterDevice.?f38:THandle
 0057F03C    xor        eax,eax
 0057F03E    mov        dword ptr [ebx+3C],eax; TRPPrinterDevice.?f3C:Pointer
 0057F041    mov        byte ptr [ebx+65],0; TRPPrinterDevice.?f65:byte
 0057F045    mov        dword ptr [ebx+54],0FFFFFFFE; TRPPrinterDevice.?f54:dword
 0057F04C    mov        eax,dword ptr [ebx+34]; TRPPrinterDevice.?f34:dword
 0057F04F    test       eax,eax
>0057F051    je         0057F05E
 0057F053    push       eax
 0057F054    call       winspool.ClosePrinter
 0057F059    xor        eax,eax
 0057F05B    mov        dword ptr [ebx+34],eax; TRPPrinterDevice.?f34:dword
 0057F05E    lea        eax,[ebx+44]; TRPPrinterDevice.?f44:TStringList
 0057F061    call       FreeAndNil
 0057F066    lea        eax,[ebx+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F069    call       FreeAndNil
 0057F06E    lea        eax,[ebx+50]; TRPPrinterDevice.?f50:TStringList
 0057F071    call       FreeAndNil
 0057F076    mov        eax,dword ptr [ebx+24]; TRPPrinterDevice.?f24:PChar
 0057F079    call       StrDispose
 0057F07E    xor        eax,eax
 0057F080    mov        dword ptr [ebx+24],eax; TRPPrinterDevice.?f24:PChar
 0057F083    mov        eax,dword ptr [ebx+28]; TRPPrinterDevice.?f28:PChar
 0057F086    call       StrDispose
 0057F08B    xor        eax,eax
 0057F08D    mov        dword ptr [ebx+28],eax; TRPPrinterDevice.?f28:PChar
 0057F090    mov        eax,dword ptr [ebx+2C]; TRPPrinterDevice.?f2C:PChar
 0057F093    call       StrDispose
 0057F098    xor        eax,eax
 0057F09A    mov        dword ptr [ebx+2C],eax; TRPPrinterDevice.?f2C:PChar
 0057F09D    pop        ebx
 0057F09E    ret
*}
//end;

//0057F0A0
//procedure sub_0057F0A0(?:TRPPrinterDevice; ?:?);
//begin
{*
 0057F0A0    push       ebp
 0057F0A1    mov        ebp,esp
 0057F0A3    add        esp,0FFFFFFF4
 0057F0A6    push       ebx
 0057F0A7    push       esi
 0057F0A8    mov        ebx,edx
 0057F0AA    mov        dword ptr [ebp-4],eax
 0057F0AD    mov        eax,dword ptr [ebp-4]
 0057F0B0    cmp        ebx,dword ptr [eax+54]; TRPPrinterDevice.?f54:dword
>0057F0B3    je         0057F21F
 0057F0B9    mov        eax,dword ptr [ebp-4]
 0057F0BC    call       0057F00C
 0057F0C1    mov        eax,dword ptr [ebp-4]
 0057F0C4    mov        esi,ebx
 0057F0C6    mov        dword ptr [eax+54],esi; TRPPrinterDevice.?f54:dword
 0057F0C9    mov        edx,esi
 0057F0CB    mov        eax,dword ptr [ebp-4]
 0057F0CE    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057F0D1    mov        ecx,dword ptr [eax]
 0057F0D3    call       dword ptr [ecx+18]; TStringList.GetObject
 0057F0D6    mov        eax,dword ptr [eax+4]
 0057F0D9    call       StrNew
 0057F0DE    mov        edx,dword ptr [ebp-4]
 0057F0E1    mov        dword ptr [edx+24],eax; TRPPrinterDevice.?f24:PChar
 0057F0E4    mov        eax,dword ptr [ebp-4]
 0057F0E7    mov        edx,dword ptr [eax+54]; TRPPrinterDevice.?f54:dword
 0057F0EA    mov        eax,dword ptr [ebp-4]
 0057F0ED    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057F0F0    mov        ecx,dword ptr [eax]
 0057F0F2    call       dword ptr [ecx+18]; TStringList.GetObject
 0057F0F5    mov        eax,dword ptr [eax+8]
 0057F0F8    call       StrNew
 0057F0FD    mov        edx,dword ptr [ebp-4]
 0057F100    mov        dword ptr [edx+28],eax; TRPPrinterDevice.?f28:PChar
 0057F103    mov        eax,dword ptr [ebp-4]
 0057F106    mov        edx,dword ptr [eax+54]; TRPPrinterDevice.?f54:dword
 0057F109    mov        eax,dword ptr [ebp-4]
 0057F10C    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057F10F    mov        ecx,dword ptr [eax]
 0057F111    call       dword ptr [ecx+18]; TStringList.GetObject
 0057F114    mov        eax,dword ptr [eax+0C]
 0057F117    call       StrNew
 0057F11C    mov        edx,dword ptr [ebp-4]
 0057F11F    mov        dword ptr [edx+2C],eax; TRPPrinterDevice.?f2C:PChar
 0057F122    push       0
 0057F124    mov        eax,dword ptr [ebp-4]
 0057F127    add        eax,34; TRPPrinterDevice.?f34:dword
 0057F12A    push       eax
 0057F12B    mov        eax,dword ptr [ebp-4]
 0057F12E    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F131    push       eax
 0057F132    call       winspool.OpenPrinterA
 0057F137    test       eax,eax
>0057F139    jne        0057F143
 0057F13B    mov        eax,dword ptr [ebp-4]
 0057F13E    xor        edx,edx
 0057F140    mov        dword ptr [eax+34],edx; TRPPrinterDevice.?f34:dword
 0057F143    mov        eax,dword ptr [ebp-4]
 0057F146    cmp        dword ptr [eax+34],0; TRPPrinterDevice.?f34:dword
>0057F14A    jbe        0057F215
 0057F150    mov        eax,dword ptr [ebp-4]
 0057F153    cmp        byte ptr [eax+91],0; TRPPrinterDevice.?f91:byte
>0057F15A    jne        0057F215
 0057F160    mov        eax,9C
 0057F165    call       @GetMem
 0057F16A    mov        dword ptr [ebp-8],eax
 0057F16D    xor        eax,eax
 0057F16F    push       ebp
 0057F170    push       57F1B3
 0057F175    push       dword ptr fs:[eax]
 0057F178    mov        dword ptr fs:[eax],esp
 0057F17B    push       0
 0057F17D    mov        eax,dword ptr [ebp-8]
 0057F180    push       eax
 0057F181    mov        eax,dword ptr [ebp-8]
 0057F184    push       eax
 0057F185    mov        eax,dword ptr [ebp-4]
 0057F188    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F18B    push       eax
 0057F18C    mov        eax,dword ptr [ebp-4]
 0057F18F    mov        eax,dword ptr [eax+34]; TRPPrinterDevice.?f34:dword
 0057F192    push       eax
 0057F193    push       0
 0057F195    call       winspool.DocumentPropertiesA
 0057F19A    mov        dword ptr [ebp-0C],eax
 0057F19D    xor        eax,eax
 0057F19F    pop        edx
 0057F1A0    pop        ecx
 0057F1A1    pop        ecx
 0057F1A2    mov        dword ptr fs:[eax],edx
 0057F1A5    push       57F1BA
 0057F1AA    mov        eax,dword ptr [ebp-8]
 0057F1AD    call       @FreeMem
 0057F1B2    ret
<0057F1B3    jmp        @HandleFinally
<0057F1B8    jmp        0057F1AA
 0057F1BA    cmp        dword ptr [ebp-0C],0
>0057F1BE    jle        0057F215
 0057F1C0    mov        eax,dword ptr [ebp-0C]
 0057F1C3    push       eax
 0057F1C4    push       42
 0057F1C6    call       kernel32.GlobalAlloc
 0057F1CB    mov        ebx,eax
 0057F1CD    mov        eax,dword ptr [ebp-4]
 0057F1D0    mov        dword ptr [eax+38],ebx; TRPPrinterDevice.?f38:THandle
 0057F1D3    test       ebx,ebx
>0057F1D5    je         0057F215
 0057F1D7    push       ebx
 0057F1D8    call       kernel32.GlobalLock
 0057F1DD    mov        edx,dword ptr [ebp-4]
 0057F1E0    mov        dword ptr [edx+3C],eax; TRPPrinterDevice.?f3C:Pointer
 0057F1E3    mov        eax,dword ptr [ebp-4]
 0057F1E6    mov        byte ptr [eax+65],0; TRPPrinterDevice.?f65:byte
 0057F1EA    push       2
 0057F1EC    mov        eax,dword ptr [ebp-4]
 0057F1EF    mov        ebx,dword ptr [eax+3C]; TRPPrinterDevice.?f3C:Pointer
 0057F1F2    push       ebx
 0057F1F3    push       ebx
 0057F1F4    mov        eax,dword ptr [ebp-4]
 0057F1F7    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F1FA    push       eax
 0057F1FB    mov        eax,dword ptr [ebp-4]
 0057F1FE    mov        eax,dword ptr [eax+34]; TRPPrinterDevice.?f34:dword
 0057F201    push       eax
 0057F202    push       0
 0057F204    call       winspool.DocumentPropertiesA
 0057F209    test       eax,eax
>0057F20B    jge        0057F215
 0057F20D    mov        eax,dword ptr [ebp-4]
 0057F210    call       0057F00C
 0057F215    mov        eax,dword ptr [ebp-4]
 0057F218    mov        byte ptr [eax+91],0; TRPPrinterDevice.?f91:byte
 0057F21F    pop        esi
 0057F220    pop        ebx
 0057F221    mov        esp,ebp
 0057F223    pop        ebp
 0057F224    ret
*}
//end;

//0057F228
//procedure sub_0057F228(?:TRPPrinterDevice);
//begin
{*
 0057F228    push       ebp
 0057F229    mov        ebp,esp
 0057F22B    push       0
 0057F22D    push       ebx
 0057F22E    push       esi
 0057F22F    push       edi
 0057F230    mov        esi,eax
 0057F232    xor        eax,eax
 0057F234    push       ebp
 0057F235    push       57F379
 0057F23A    push       dword ptr fs:[eax]
 0057F23D    mov        dword ptr fs:[eax],esp
 0057F240    cmp        dword ptr [esi+5C],0; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F244    setne      al
 0057F247    mov        byte ptr [esi+64],al; TRPPrinterDevice.?f64:byte
 0057F24A    test       al,al
>0057F24C    je         0057F363
 0057F252    mov        eax,esi
 0057F254    mov        edx,dword ptr [eax]
 0057F256    call       dword ptr [edx]; TRPPrinterDevice.sub_0057EF60
 0057F258    mov        ebx,eax
 0057F25A    lea        edi,[esi+68]; TRPPrinterDevice.?f68:?
 0057F25D    mov        eax,dword ptr [ebx+14]
 0057F260    call       TBrush.GetColor
 0057F265    mov        dword ptr [edi],eax
 0057F267    mov        eax,dword ptr [ebx+14]
 0057F26A    call       TBrush.GetStyle
 0057F26F    mov        byte ptr [edi+4],al
 0057F272    mov        eax,dword ptr [ebx+14]
 0057F275    call       TBrush.GetBitmap
 0057F27A    test       eax,eax
>0057F27C    je         0057F28F
 0057F27E    mov        eax,dword ptr [ebx+14]
 0057F281    call       TBrush.GetBitmap
 0057F286    mov        edx,dword ptr [eax]
 0057F288    call       dword ptr [edx+1C]; TBitmap.GetEmpty
 0057F28B    test       al,al
>0057F28D    je         0057F296
 0057F28F    xor        eax,eax
 0057F291    mov        dword ptr [edi+8],eax
>0057F294    jmp        0057F2B7
 0057F296    mov        dl,1
 0057F298    mov        eax,[0042A4BC]; TBitmap
 0057F29D    call       TBitmap.Create; TBitmap.Create
 0057F2A2    mov        dword ptr [edi+8],eax
 0057F2A5    mov        eax,dword ptr [ebx+14]
 0057F2A8    call       TBrush.GetBitmap
 0057F2AD    mov        edx,eax
 0057F2AF    mov        eax,dword ptr [edi+8]
 0057F2B2    mov        ecx,dword ptr [eax]
 0057F2B4    call       dword ptr [ecx+8]
 0057F2B7    lea        edi,[esi+84]; TRPPrinterDevice.?f84:?
 0057F2BD    mov        eax,dword ptr [ebx+10]
 0057F2C0    call       TPen.GetColor
 0057F2C5    mov        dword ptr [edi+8],eax
 0057F2C8    mov        eax,dword ptr [ebx+10]
 0057F2CB    mov        al,byte ptr [eax+18]
 0057F2CE    mov        byte ptr [edi],al
 0057F2D0    mov        eax,dword ptr [ebx+10]
 0057F2D3    call       TPen.GetStyle
 0057F2D8    mov        byte ptr [edi+1],al
 0057F2DB    mov        eax,dword ptr [ebx+10]
 0057F2DE    call       TPen.GetWidth
 0057F2E3    mov        dword ptr [edi+4],eax
 0057F2E6    lea        edi,[esi+74]; TRPPrinterDevice.?f74:TFontBuf
 0057F2E9    lea        edx,[ebp-4]
 0057F2EC    mov        eax,dword ptr [ebx+0C]
 0057F2EF    call       TFont.GetName
 0057F2F4    mov        edx,dword ptr [ebp-4]
 0057F2F7    mov        eax,edi
 0057F2F9    call       @LStrAsg
 0057F2FE    mov        eax,dword ptr [ebx+0C]
 0057F301    call       TFont.GetSize
 0057F306    mov        dword ptr [edi+4],eax
 0057F309    mov        eax,dword ptr [ebx+0C]
 0057F30C    mov        eax,dword ptr [eax+18]
 0057F30F    mov        dword ptr [edi+8],eax
 0057F312    mov        eax,dword ptr [ebx+0C]
 0057F315    call       TFont.GetStyle
 0057F31A    mov        byte ptr [edi+0C],al
 0057F31D    xor        edx,edx
 0057F31F    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F322    call       TCanvas.SetHandle
 0057F327    push       7
 0057F329    call       gdi32.GetStockObject
 0057F32E    mov        edx,eax
 0057F330    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F333    mov        eax,dword ptr [eax+10]; TRPPrinterCanvas.Pen:TPen
 0057F336    call       TPen.SetHandle
 0057F33B    push       0D
 0057F33D    call       gdi32.GetStockObject
 0057F342    mov        edx,eax
 0057F344    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F347    mov        eax,dword ptr [eax+0C]; TRPPrinterCanvas.Font:TFont
 0057F34A    call       TFont.SetHandle
 0057F34F    push       4
 0057F351    call       gdi32.GetStockObject
 0057F356    mov        edx,eax
 0057F358    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F35B    mov        eax,dword ptr [eax+14]; TRPPrinterCanvas.Brush:TBrush
 0057F35E    call       TBrush.SetHandle
 0057F363    xor        eax,eax
 0057F365    pop        edx
 0057F366    pop        ecx
 0057F367    pop        ecx
 0057F368    mov        dword ptr fs:[eax],edx
 0057F36B    push       57F380
 0057F370    lea        eax,[ebp-4]
 0057F373    call       @LStrClr
 0057F378    ret
<0057F379    jmp        @HandleFinally
<0057F37E    jmp        0057F370
 0057F380    pop        edi
 0057F381    pop        esi
 0057F382    pop        ebx
 0057F383    pop        ecx
 0057F384    pop        ebp
 0057F385    ret
*}
//end;

//0057F388
//procedure sub_0057F388(?:TRPPrinterDevice);
//begin
{*
 0057F388    push       ebx
 0057F389    push       esi
 0057F38A    push       edi
 0057F38B    mov        esi,eax
 0057F38D    cmp        byte ptr [esi+64],0; TRPPrinterDevice.?f64:byte
>0057F391    je         0057F455
 0057F397    mov        edx,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057F39A    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F39D    call       TCanvas.SetHandle
 0057F3A2    push       5A
 0057F3A4    mov        eax,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057F3A7    push       eax
 0057F3A8    call       gdi32.GetDeviceCaps
 0057F3AD    mov        edx,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F3B0    mov        edx,dword ptr [edx+0C]; TRPPrinterCanvas.Font:TFont
 0057F3B3    mov        dword ptr [edx+1C],eax; TFont.FPixelsPerInch:Integer
 0057F3B6    mov        eax,esi
 0057F3B8    mov        edx,dword ptr [eax]
 0057F3BA    call       dword ptr [edx]; TRPPrinterDevice.sub_0057EF60
 0057F3BC    mov        ebx,eax
 0057F3BE    lea        edi,[esi+68]; TRPPrinterDevice.?f68:?
 0057F3C1    mov        edx,dword ptr [edi]
 0057F3C3    mov        eax,dword ptr [ebx+14]
 0057F3C6    call       TBrush.SetColor
 0057F3CB    mov        dl,byte ptr [edi+4]
 0057F3CE    mov        eax,dword ptr [ebx+14]
 0057F3D1    call       TBrush.SetStyle
 0057F3D6    cmp        dword ptr [edi+8],0
>0057F3DA    je         0057F3F4
 0057F3DC    mov        eax,dword ptr [ebx+14]
 0057F3DF    call       TBrush.GetBitmap
 0057F3E4    mov        edx,dword ptr [edi+8]
 0057F3E7    mov        ecx,dword ptr [eax]
 0057F3E9    call       dword ptr [ecx+8]; TBitmap.Assign
 0057F3EC    lea        eax,[edi+8]
 0057F3EF    call       FreeAndNil
 0057F3F4    lea        edi,[esi+84]; TRPPrinterDevice.?f84:?
 0057F3FA    mov        edx,dword ptr [edi+8]
 0057F3FD    mov        eax,dword ptr [ebx+10]
 0057F400    call       TPen.SetColor
 0057F405    mov        dl,byte ptr [edi]
 0057F407    mov        eax,dword ptr [ebx+10]
 0057F40A    call       TPen.SetMode
 0057F40F    mov        dl,byte ptr [edi+1]
 0057F412    mov        eax,dword ptr [ebx+10]
 0057F415    call       TPen.SetStyle
 0057F41A    mov        edx,dword ptr [edi+4]
 0057F41D    mov        eax,dword ptr [ebx+10]
 0057F420    call       TPen.SetWidth
 0057F425    lea        eax,[esi+74]; TRPPrinterDevice.?f74:TFontBuf
 0057F428    mov        esi,eax
 0057F42A    mov        edx,dword ptr [esi]
 0057F42C    mov        eax,dword ptr [ebx+0C]
 0057F42F    call       TFont.SetName
 0057F434    mov        edx,dword ptr [esi+4]
 0057F437    mov        eax,dword ptr [ebx+0C]
 0057F43A    call       TFont.SetSize
 0057F43F    mov        edx,dword ptr [esi+8]
 0057F442    mov        eax,dword ptr [ebx+0C]
 0057F445    call       TFont.SetColor
 0057F44A    mov        dl,byte ptr [esi+0C]
 0057F44D    mov        eax,dword ptr [ebx+0C]
 0057F450    call       TFont.SetStyle
 0057F455    pop        edi
 0057F456    pop        esi
 0057F457    pop        ebx
 0057F458    ret
*}
//end;

//0057F45C
//procedure sub_0057F45C(?:?; ?:AnsiString);
//begin
{*
 0057F45C    push       ebp
 0057F45D    mov        ebp,esp
 0057F45F    push       ecx
 0057F460    push       ebx
 0057F461    mov        dword ptr [ebp-4],edx
 0057F464    mov        ebx,eax
 0057F466    mov        eax,dword ptr [ebp-4]
 0057F469    call       @LStrAddRef
 0057F46E    xor        eax,eax
 0057F470    push       ebp
 0057F471    push       57F4C7
 0057F476    push       dword ptr fs:[eax]
 0057F479    mov        dword ptr fs:[eax],esp
 0057F47C    mov        eax,ebx
 0057F47E    call       0057E650
 0057F483    mov        eax,dword ptr [ebx+58]
 0057F486    call       StrDispose
 0057F48B    cmp        dword ptr [ebp-4],0
>0057F48F    jne        0057F498
 0057F491    xor        eax,eax
 0057F493    mov        dword ptr [ebx+58],eax
>0057F496    jmp        0057F4B1
 0057F498    mov        eax,dword ptr [ebp-4]
 0057F49B    call       @LStrLen
 0057F4A0    inc        eax
 0057F4A1    call       StrAlloc
 0057F4A6    mov        edx,dword ptr [ebp-4]
 0057F4A9    call       StrPCopy
 0057F4AE    mov        dword ptr [ebx+58],eax
 0057F4B1    xor        eax,eax
 0057F4B3    pop        edx
 0057F4B4    pop        ecx
 0057F4B5    pop        ecx
 0057F4B6    mov        dword ptr fs:[eax],edx
 0057F4B9    push       57F4CE
 0057F4BE    lea        eax,[ebp-4]
 0057F4C1    call       @LStrClr
 0057F4C6    ret
<0057F4C7    jmp        @HandleFinally
<0057F4CC    jmp        0057F4BE
 0057F4CE    pop        ebx
 0057F4CF    pop        ecx
 0057F4D0    pop        ebp
 0057F4D1    ret
*}
//end;

//0057F4D4
procedure sub_0057F4D4;
begin
{*
 0057F4D4    push       ebx
 0057F4D5    mov        ebx,eax
 0057F4D7    mov        eax,ebx
 0057F4D9    mov        edx,dword ptr [eax]
 0057F4DB    call       dword ptr [edx+58]; TRPPrinterDevice.sub_0057F4F0
 0057F4DE    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F4E1    push       eax
 0057F4E2    call       gdi32.StartPage
 0057F4E7    mov        byte ptr [ebx+90],1; TRPPrinterDevice.?f90:byte
 0057F4EE    pop        ebx
 0057F4EF    ret
*}
end;

//0057F4F0
procedure sub_0057F4F0;
begin
{*
 0057F4F0    push       ebp
 0057F4F1    mov        ebp,esp
 0057F4F3    add        esp,0FFFFFFE8
 0057F4F6    push       ebx
 0057F4F7    xor        edx,edx
 0057F4F9    mov        dword ptr [ebp-4],edx
 0057F4FC    mov        ebx,eax
 0057F4FE    xor        eax,eax
 0057F500    push       ebp
 0057F501    push       57F594
 0057F506    push       dword ptr fs:[eax]
 0057F509    mov        dword ptr fs:[eax],esp
 0057F50C    mov        eax,ebx
 0057F50E    call       0057E650
 0057F513    xor        edx,edx
 0057F515    mov        eax,ebx
 0057F517    call       0057F60C
 0057F51C    mov        dl,2
 0057F51E    mov        eax,ebx
 0057F520    call       0057EDB4
 0057F525    mov        byte ptr [ebx+8],1; TRPPrinterDevice.?f8:byte
 0057F529    mov        byte ptr [ebx+9],0; TRPPrinterDevice.?f9:byte
 0057F52D    mov        eax,ebx
 0057F52F    mov        edx,dword ptr [eax]
 0057F531    call       dword ptr [edx]; TRPPrinterDevice.sub_0057EF60
 0057F533    call       0042C360
 0057F538    lea        eax,[ebp-4]
 0057F53B    mov        ecx,57F5A8; '\0'
 0057F540    mov        edx,dword ptr [ebx+4]; TRPPrinterDevice.?f4:String
 0057F543    call       @LStrCat3
 0057F548    mov        dword ptr [ebp-18],14
 0057F54F    lea        eax,[ebp-4]
 0057F552    call       @UniqueStringA
 0057F557    mov        dword ptr [ebp-14],eax
 0057F55A    mov        eax,dword ptr [ebx+58]; TRPPrinterDevice.?f58:dword
 0057F55D    mov        dword ptr [ebp-10],eax
 0057F560    xor        eax,eax
 0057F562    mov        dword ptr [ebp-0C],eax
 0057F565    xor        eax,eax
 0057F567    mov        dword ptr [ebp-8],eax
 0057F56A    lea        eax,[ebp-18]
 0057F56D    push       eax
 0057F56E    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F571    push       eax
 0057F572    call       gdi32.StartDocA
 0057F577    mov        byte ptr [ebx+90],0; TRPPrinterDevice.?f90:byte
 0057F57E    xor        eax,eax
 0057F580    pop        edx
 0057F581    pop        ecx
 0057F582    pop        ecx
 0057F583    mov        dword ptr fs:[eax],edx
 0057F586    push       57F59B
 0057F58B    lea        eax,[ebp-4]
 0057F58E    call       @LStrClr
 0057F593    ret
<0057F594    jmp        @HandleFinally
<0057F599    jmp        0057F58B
 0057F59B    pop        ebx
 0057F59C    mov        esp,ebp
 0057F59E    pop        ebp
 0057F59F    ret
*}
end;

//0057F5AC
procedure sub_0057F5AC;
begin
{*
 0057F5AC    push       ebx
 0057F5AD    mov        ebx,eax
 0057F5AF    mov        eax,ebx
 0057F5B1    call       0057E5C0
 0057F5B6    cmp        byte ptr [ebx+90],0; TRPPrinterDevice.?f90:byte
>0057F5BD    je         0057F5C8
 0057F5BF    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F5C2    push       eax
 0057F5C3    call       gdi32.EndPage
 0057F5C8    cmp        byte ptr [ebx+9],0; TRPPrinterDevice.?f9:byte
>0057F5CC    jne        0057F5D7
 0057F5CE    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F5D1    push       eax
 0057F5D2    call       gdi32.EndDoc
 0057F5D7    xor        edx,edx
 0057F5D9    mov        eax,ebx
 0057F5DB    call       0057EDB4
 0057F5E0    mov        byte ptr [ebx+8],0; TRPPrinterDevice.?f8:byte
 0057F5E4    mov        byte ptr [ebx+9],0; TRPPrinterDevice.?f9:byte
 0057F5E8    pop        ebx
 0057F5E9    ret
*}
end;

//0057F5EC
procedure sub_0057F5EC;
begin
{*
 0057F5EC    push       ebx
 0057F5ED    mov        ebx,eax
 0057F5EF    mov        eax,ebx
 0057F5F1    call       0057E5C0
 0057F5F6    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F5F9    push       eax
 0057F5FA    call       gdi32.AbortDoc
 0057F5FF    mov        byte ptr [ebx+9],1; TRPPrinterDevice.?f9:byte
 0057F603    mov        eax,ebx
 0057F605    mov        edx,dword ptr [eax]
 0057F607    call       dword ptr [edx+5C]; TRPPrinterDevice.sub_0057F5AC
 0057F60A    pop        ebx
 0057F60B    ret
*}
end;

//0057F60C
//procedure sub_0057F60C(?:TRPPrinterDevice; ?:?);
//begin
{*
 0057F60C    push       ebx
 0057F60D    mov        ebx,eax
 0057F60F    cmp        byte ptr [ebx+40],1; TRPPrinterDevice.?f40:byte
>0057F613    jne        0057F61B
 0057F615    cmp        byte ptr [ebx+65],0; TRPPrinterDevice.?f65:byte
>0057F619    jne        0057F61F
 0057F61B    test       dl,dl
>0057F61D    je         0057F642
 0057F61F    mov        byte ptr [ebx+65],0; TRPPrinterDevice.?f65:byte
 0057F623    mov        eax,ebx
 0057F625    call       0057F228
 0057F62A    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 0057F62D    test       eax,eax
>0057F62F    je         0057F63B
 0057F631    push       eax
 0057F632    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F635    push       eax
 0057F636    call       gdi32.ResetDCA
 0057F63B    mov        eax,ebx
 0057F63D    call       0057F388
 0057F642    pop        ebx
 0057F643    ret
*}
//end;

//0057F644
procedure sub_0057F644;
begin
{*
 0057F644    push       ebx
 0057F645    mov        ebx,eax
 0057F647    mov        eax,ebx
 0057F649    call       0057E5C0
 0057F64E    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F651    push       eax
 0057F652    call       gdi32.EndPage
 0057F657    cmp        byte ptr [ebx+65],0; TRPPrinterDevice.?f65:byte
>0057F65B    je         0057F666
 0057F65D    mov        dl,1
 0057F65F    mov        eax,ebx
 0057F661    call       0057F60C
 0057F666    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0057F669    push       eax
 0057F66A    call       gdi32.StartPage
 0057F66F    pop        ebx
 0057F670    ret
*}
end;

//0057F674
//procedure sub_0057F674(?:?);
//begin
{*
 0057F674    push       ebx
 0057F675    push       esi
 0057F676    mov        ebx,edx
 0057F678    mov        esi,eax
 0057F67A    mov        eax,esi
 0057F67C    call       0057E5C0
 0057F681    cmp        byte ptr [esi+90],0; TRPPrinterDevice.?f90:byte
>0057F688    je         0057F693
 0057F68A    mov        eax,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057F68D    push       eax
 0057F68E    call       gdi32.EndPage
 0057F693    cmp        byte ptr [esi+65],0; TRPPrinterDevice.?f65:byte
>0057F697    je         0057F6A4
 0057F699    mov        dl,1
 0057F69B    mov        eax,esi
 0057F69D    call       0057F60C
>0057F6A2    jmp        0057F6AC
 0057F6A4    mov        eax,dword ptr [esi+5C]; TRPPrinterDevice.?f5C:TRPPrinterCanvas
 0057F6A7    call       0042C360
 0057F6AC    test       bl,bl
>0057F6AE    je         0057F6B9
 0057F6B0    mov        eax,dword ptr [esi+30]; TRPPrinterDevice.?f30:HDC
 0057F6B3    push       eax
 0057F6B4    call       gdi32.StartPage
 0057F6B9    mov        byte ptr [esi+90],bl; TRPPrinterDevice.?f90:byte
 0057F6BF    pop        esi
 0057F6C0    pop        ebx
 0057F6C1    ret
*}
//end;

//0057F6C4
//function sub_0057F6C4:?;
//begin
{*
 0057F6C4    push       ebp
 0057F6C5    mov        ebp,esp
 0057F6C7    add        esp,0FFFFFFEC
 0057F6CA    push       ebx
 0057F6CB    push       esi
 0057F6CC    push       edi
 0057F6CD    xor        edx,edx
 0057F6CF    mov        dword ptr [ebp-14],edx
 0057F6D2    mov        dword ptr [ebp-4],eax
 0057F6D5    xor        eax,eax
 0057F6D7    push       ebp
 0057F6D8    push       57F849
 0057F6DD    push       dword ptr fs:[eax]
 0057F6E0    mov        dword ptr fs:[eax],esp
 0057F6E3    mov        eax,dword ptr [ebp-4]
 0057F6E6    cmp        dword ptr [eax+4C],0; TRPPrinterDevice.?f4C:TStringList
>0057F6EA    jne        0057F82D
 0057F6F0    mov        dl,1
 0057F6F2    mov        eax,dword ptr [ebp-4]
 0057F6F5    call       0057EDB4
 0057F6FA    push       0
 0057F6FC    push       0
 0057F6FE    push       0C
 0057F700    mov        eax,dword ptr [ebp-4]
 0057F703    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057F706    push       eax
 0057F707    mov        eax,dword ptr [ebp-4]
 0057F70A    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F70D    push       eax
 0057F70E    call       winspool.DeviceCapabilitiesA
 0057F713    mov        dword ptr [ebp-8],eax
 0057F716    mov        dl,1
 0057F718    mov        eax,[0041C8E4]; TStringList
 0057F71D    call       TObject.Create; TStringList.Create
 0057F722    mov        edx,dword ptr [ebp-4]
 0057F725    mov        dword ptr [edx+4C],eax; TRPPrinterDevice.?f4C:TStringList
 0057F728    mov        eax,dword ptr [ebp-8]
 0057F72B    shl        eax,3
 0057F72E    lea        eax,[eax+eax*2]
 0057F731    call       @GetMem
 0057F736    mov        dword ptr [ebp-0C],eax
 0057F739    mov        eax,dword ptr [ebp-8]
 0057F73C    add        eax,eax
 0057F73E    call       @GetMem
 0057F743    mov        dword ptr [ebp-10],eax
 0057F746    xor        eax,eax
 0057F748    push       ebp
 0057F749    push       57F813
 0057F74E    push       dword ptr fs:[eax]
 0057F751    mov        dword ptr fs:[eax],esp
 0057F754    xor        eax,eax
 0057F756    push       ebp
 0057F757    push       57F802
 0057F75C    push       dword ptr fs:[eax]
 0057F75F    mov        dword ptr fs:[eax],esp
 0057F762    push       0
 0057F764    mov        eax,dword ptr [ebp-0C]
 0057F767    push       eax
 0057F768    push       0C
 0057F76A    mov        eax,dword ptr [ebp-4]
 0057F76D    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057F770    push       eax
 0057F771    mov        eax,dword ptr [ebp-4]
 0057F774    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F777    push       eax
 0057F778    call       winspool.DeviceCapabilitiesA
 0057F77D    test       eax,eax
>0057F77F    jl         0057F7D6
 0057F781    push       0
 0057F783    mov        eax,dword ptr [ebp-10]
 0057F786    push       eax
 0057F787    push       6
 0057F789    mov        eax,dword ptr [ebp-4]
 0057F78C    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057F78F    push       eax
 0057F790    mov        eax,dword ptr [ebp-4]
 0057F793    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057F796    push       eax
 0057F797    call       winspool.DeviceCapabilitiesA
 0057F79C    mov        esi,dword ptr [ebp-8]
 0057F79F    test       esi,esi
>0057F7A1    jle        0057F7D6
 0057F7A3    mov        ebx,1
 0057F7A8    mov        eax,dword ptr [ebp-10]
 0057F7AB    movzx      edi,word ptr [eax+ebx*2-2]
 0057F7B0    lea        eax,[ebx+ebx*2]
 0057F7B3    mov        edx,dword ptr [ebp-0C]
 0057F7B6    lea        eax,[edx+eax*8-18]
 0057F7BA    lea        edx,[ebp-14]
 0057F7BD    call       StrPas
 0057F7C2    mov        edx,dword ptr [ebp-14]
 0057F7C5    mov        ecx,edi
 0057F7C7    mov        eax,dword ptr [ebp-4]
 0057F7CA    mov        eax,dword ptr [eax+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F7CD    mov        edi,dword ptr [eax]
 0057F7CF    call       dword ptr [edi+3C]; TStringList.AddObject
 0057F7D2    inc        ebx
 0057F7D3    dec        esi
<0057F7D4    jne        0057F7A8
 0057F7D6    xor        eax,eax
 0057F7D8    pop        edx
 0057F7D9    pop        ecx
 0057F7DA    pop        ecx
 0057F7DB    mov        dword ptr fs:[eax],edx
 0057F7DE    push       57F809
 0057F7E3    mov        edx,dword ptr [ebp-8]
 0057F7E6    add        edx,edx
 0057F7E8    mov        eax,dword ptr [ebp-10]
 0057F7EB    call       @FreeMem
 0057F7F0    mov        edx,dword ptr [ebp-8]
 0057F7F3    shl        edx,3
 0057F7F6    lea        edx,[edx+edx*2]
 0057F7F9    mov        eax,dword ptr [ebp-0C]
 0057F7FC    call       @FreeMem
 0057F801    ret
<0057F802    jmp        @HandleFinally
<0057F807    jmp        0057F7E3
 0057F809    xor        eax,eax
 0057F80B    pop        edx
 0057F80C    pop        ecx
 0057F80D    pop        ecx
 0057F80E    mov        dword ptr fs:[eax],edx
>0057F811    jmp        0057F82D
<0057F813    jmp        @HandleAnyException
 0057F818    mov        eax,dword ptr [ebp-4]
 0057F81B    add        eax,4C; TRPPrinterDevice.?f4C:TStringList
 0057F81E    call       FreeAndNil
 0057F823    call       @RaiseAgain
 0057F828    call       @DoneExcept
 0057F82D    mov        eax,dword ptr [ebp-4]
 0057F830    mov        ebx,dword ptr [eax+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F833    xor        eax,eax
 0057F835    pop        edx
 0057F836    pop        ecx
 0057F837    pop        ecx
 0057F838    mov        dword ptr fs:[eax],edx
 0057F83B    push       57F850
 0057F840    lea        eax,[ebp-14]
 0057F843    call       @LStrClr
 0057F848    ret
<0057F849    jmp        @HandleFinally
<0057F84E    jmp        0057F840
 0057F850    mov        eax,ebx
 0057F852    pop        edi
 0057F853    pop        esi
 0057F854    pop        ebx
 0057F855    mov        esp,ebp
 0057F857    pop        ebp
 0057F858    ret
*}
//end;

//0057F85C
//function sub_0057F85C(?:?; ?:?):?;
//begin
{*
 0057F85C    push       ebp
 0057F85D    mov        ebp,esp
 0057F85F    add        esp,0FFFFFFE0
 0057F862    push       ebx
 0057F863    push       esi
 0057F864    push       edi
 0057F865    xor        ebx,ebx
 0057F867    mov        dword ptr [ebp-18],ebx
 0057F86A    mov        dword ptr [ebp-20],ebx
 0057F86D    mov        dword ptr [ebp-1C],ebx
 0057F870    mov        dword ptr [ebp-14],ebx
 0057F873    mov        byte ptr [ebp-5],cl
 0057F876    mov        dword ptr [ebp-4],edx
 0057F879    mov        esi,eax
 0057F87B    mov        eax,dword ptr [ebp-4]
 0057F87E    call       @LStrAddRef
 0057F883    xor        eax,eax
 0057F885    push       ebp
 0057F886    push       57F97C
 0057F88B    push       dword ptr fs:[eax]
 0057F88E    mov        dword ptr fs:[eax],esp
 0057F891    mov        eax,esi
 0057F893    mov        edx,dword ptr [eax]
 0057F895    call       dword ptr [edx+10]; TRPPrinterDevice.sub_0057F6C4
 0057F898    xor        ebx,ebx
 0057F89A    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F89D    mov        edx,dword ptr [eax]
 0057F89F    call       dword ptr [edx+14]; TStringList.GetCount
 0057F8A2    test       eax,eax
>0057F8A4    jle        0057F959
 0057F8AA    mov        dword ptr [ebp-10],eax
 0057F8AD    mov        dword ptr [ebp-0C],1
 0057F8B4    cmp        byte ptr [ebp-5],0
>0057F8B8    je         0057F8D9
 0057F8BA    lea        ecx,[ebp-14]
 0057F8BD    mov        edx,dword ptr [ebp-0C]
 0057F8C0    dec        edx
 0057F8C1    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F8C4    mov        ebx,dword ptr [eax]
 0057F8C6    call       dword ptr [ebx+0C]; TStringList.Get
 0057F8C9    mov        eax,dword ptr [ebp-14]
 0057F8CC    mov        edx,dword ptr [ebp-4]
 0057F8CF    call       @LStrCmp
 0057F8D4    sete       bl
>0057F8D7    jmp        0057F910
 0057F8D9    lea        ecx,[ebp-1C]
 0057F8DC    mov        edx,dword ptr [ebp-0C]
 0057F8DF    dec        edx
 0057F8E0    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F8E3    mov        ebx,dword ptr [eax]
 0057F8E5    call       dword ptr [ebx+0C]; TStringList.Get
 0057F8E8    mov        eax,dword ptr [ebp-1C]
 0057F8EB    lea        edx,[ebp-18]
 0057F8EE    call       AnsiUpperCase
 0057F8F3    mov        eax,dword ptr [ebp-18]
 0057F8F6    push       eax
 0057F8F7    lea        edx,[ebp-20]
 0057F8FA    mov        eax,dword ptr [ebp-4]
 0057F8FD    call       AnsiUpperCase
 0057F902    mov        eax,dword ptr [ebp-20]
 0057F905    pop        edx
 0057F906    call       AnsiPos
 0057F90B    test       eax,eax
 0057F90D    setg       bl
 0057F910    test       bl,bl
>0057F912    je         0057F94D
 0057F914    mov        edx,dword ptr [ebp-0C]
 0057F917    dec        edx
 0057F918    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F91B    mov        ecx,dword ptr [eax]
 0057F91D    call       dword ptr [ecx+18]; TStringList.GetObject
 0057F920    mov        edi,eax
 0057F922    mov        eax,esi
 0057F924    call       0057EF80
 0057F929    test       eax,eax
>0057F92B    je         0057F949
 0057F92D    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0057F930    movsx      edx,word ptr [eax+38]
 0057F934    cmp        edi,edx
>0057F936    je         0057F959
 0057F938    mov        word ptr [eax+38],di
 0057F93C    or         dword ptr [eax+28],200
 0057F943    mov        byte ptr [esi+65],1; TRPPrinterDevice.?f65:byte
>0057F947    jmp        0057F959
 0057F949    xor        ebx,ebx
>0057F94B    jmp        0057F959
 0057F94D    inc        dword ptr [ebp-0C]
 0057F950    dec        dword ptr [ebp-10]
<0057F953    jne        0057F8B4
 0057F959    xor        eax,eax
 0057F95B    pop        edx
 0057F95C    pop        ecx
 0057F95D    pop        ecx
 0057F95E    mov        dword ptr fs:[eax],edx
 0057F961    push       57F983
 0057F966    lea        eax,[ebp-20]
 0057F969    mov        edx,4
 0057F96E    call       @LStrArrayClr
 0057F973    lea        eax,[ebp-4]
 0057F976    call       @LStrClr
 0057F97B    ret
<0057F97C    jmp        @HandleFinally
<0057F981    jmp        0057F966
 0057F983    mov        eax,ebx
 0057F985    pop        edi
 0057F986    pop        esi
 0057F987    pop        ebx
 0057F988    mov        esp,ebp
 0057F98A    pop        ebp
 0057F98B    ret
*}
//end;

//0057F98C
//function sub_0057F98C(?:?):?;
//begin
{*
 0057F98C    push       ebx
 0057F98D    push       esi
 0057F98E    push       edi
 0057F98F    push       ebp
 0057F990    push       ecx
 0057F991    mov        dword ptr [esp],edx
 0057F994    mov        esi,eax
 0057F996    mov        eax,esi
 0057F998    call       0057EF80
 0057F99D    test       eax,eax
>0057F99F    je         0057F9B1
 0057F9A1    mov        eax,esi
 0057F9A3    call       0057EF80
 0057F9A8    test       dword ptr [eax+28],200
>0057F9AF    ja         0057F9B5
 0057F9B1    xor        eax,eax
>0057F9B3    jmp        0057F9B7
 0057F9B5    mov        al,1
 0057F9B7    test       al,al
>0057F9B9    je         0057F9F2
 0057F9BB    mov        eax,esi
 0057F9BD    mov        edx,dword ptr [eax]
 0057F9BF    call       dword ptr [edx+10]; TRPPrinterDevice.sub_0057F6C4
 0057F9C2    xor        ebx,ebx
 0057F9C4    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F9C7    mov        edx,dword ptr [eax]
 0057F9C9    call       dword ptr [edx+14]; TStringList.GetCount
 0057F9CC    mov        edi,eax
 0057F9CE    test       edi,edi
>0057F9D0    jle        0057F9F0
 0057F9D2    mov        ebp,1
 0057F9D7    mov        edx,ebp
 0057F9D9    dec        edx
 0057F9DA    mov        eax,dword ptr [esi+4C]; TRPPrinterDevice.?f4C:TStringList
 0057F9DD    mov        ecx,dword ptr [eax]
 0057F9DF    call       dword ptr [ecx+18]; TStringList.GetObject
 0057F9E2    cmp        eax,dword ptr [esp]
 0057F9E5    sete       bl
 0057F9E8    test       bl,bl
>0057F9EA    jne        0057F9F0
 0057F9EC    inc        ebp
 0057F9ED    dec        edi
<0057F9EE    jne        0057F9D7
 0057F9F0    mov        eax,ebx
 0057F9F2    pop        edx
 0057F9F3    pop        ebp
 0057F9F4    pop        edi
 0057F9F5    pop        esi
 0057F9F6    pop        ebx
 0057F9F7    ret
*}
//end;

//0057F9F8
//function sub_0057F9F8:?;
//begin
{*
 0057F9F8    push       ebp
 0057F9F9    mov        ebp,esp
 0057F9FB    add        esp,0FFFFFFEC
 0057F9FE    push       ebx
 0057F9FF    push       esi
 0057FA00    push       edi
 0057FA01    xor        edx,edx
 0057FA03    mov        dword ptr [ebp-14],edx
 0057FA06    mov        dword ptr [ebp-4],eax
 0057FA09    xor        eax,eax
 0057FA0B    push       ebp
 0057FA0C    push       57FB79
 0057FA11    push       dword ptr fs:[eax]
 0057FA14    mov        dword ptr fs:[eax],esp
 0057FA17    mov        eax,dword ptr [ebp-4]
 0057FA1A    cmp        dword ptr [eax+50],0; TRPPrinterDevice.?f50:TStringList
>0057FA1E    jne        0057FB5D
 0057FA24    mov        dl,1
 0057FA26    mov        eax,dword ptr [ebp-4]
 0057FA29    call       0057EDB4
 0057FA2E    push       0
 0057FA30    push       0
 0057FA32    push       10
 0057FA34    mov        eax,dword ptr [ebp-4]
 0057FA37    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057FA3A    push       eax
 0057FA3B    mov        eax,dword ptr [ebp-4]
 0057FA3E    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057FA41    push       eax
 0057FA42    call       winspool.DeviceCapabilitiesA
 0057FA47    mov        dword ptr [ebp-8],eax
 0057FA4A    mov        dl,1
 0057FA4C    mov        eax,[0041C8E4]; TStringList
 0057FA51    call       TObject.Create; TStringList.Create
 0057FA56    mov        edx,dword ptr [ebp-4]
 0057FA59    mov        dword ptr [edx+50],eax; TRPPrinterDevice.?f50:TStringList
 0057FA5C    mov        eax,dword ptr [ebp-8]
 0057FA5F    shl        eax,6
 0057FA62    call       @GetMem
 0057FA67    mov        dword ptr [ebp-0C],eax
 0057FA6A    mov        eax,dword ptr [ebp-8]
 0057FA6D    add        eax,eax
 0057FA6F    call       @GetMem
 0057FA74    mov        dword ptr [ebp-10],eax
 0057FA77    xor        eax,eax
 0057FA79    push       ebp
 0057FA7A    push       57FB43
 0057FA7F    push       dword ptr fs:[eax]
 0057FA82    mov        dword ptr fs:[eax],esp
 0057FA85    xor        eax,eax
 0057FA87    push       ebp
 0057FA88    push       57FB32
 0057FA8D    push       dword ptr fs:[eax]
 0057FA90    mov        dword ptr fs:[eax],esp
 0057FA93    push       0
 0057FA95    mov        eax,dword ptr [ebp-0C]
 0057FA98    push       eax
 0057FA99    push       10
 0057FA9B    mov        eax,dword ptr [ebp-4]
 0057FA9E    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057FAA1    push       eax
 0057FAA2    mov        eax,dword ptr [ebp-4]
 0057FAA5    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057FAA8    push       eax
 0057FAA9    call       winspool.DeviceCapabilitiesA
 0057FAAE    test       eax,eax
>0057FAB0    jl         0057FB09
 0057FAB2    push       0
 0057FAB4    mov        eax,dword ptr [ebp-10]
 0057FAB7    push       eax
 0057FAB8    push       2
 0057FABA    mov        eax,dword ptr [ebp-4]
 0057FABD    mov        eax,dword ptr [eax+2C]; TRPPrinterDevice.?f2C:PChar
 0057FAC0    push       eax
 0057FAC1    mov        eax,dword ptr [ebp-4]
 0057FAC4    mov        eax,dword ptr [eax+24]; TRPPrinterDevice.?f24:PChar
 0057FAC7    push       eax
 0057FAC8    call       winspool.DeviceCapabilitiesA
 0057FACD    mov        esi,dword ptr [ebp-8]
 0057FAD0    test       esi,esi
>0057FAD2    jle        0057FB09
 0057FAD4    mov        ebx,1
 0057FAD9    mov        eax,dword ptr [ebp-10]
 0057FADC    movzx      edi,word ptr [eax+ebx*2-2]
 0057FAE1    mov        eax,ebx
 0057FAE3    shl        eax,3
 0057FAE6    mov        edx,dword ptr [ebp-0C]
 0057FAE9    lea        eax,[edx+eax*8-40]
 0057FAED    lea        edx,[ebp-14]
 0057FAF0    call       StrPas
 0057FAF5    mov        edx,dword ptr [ebp-14]
 0057FAF8    mov        ecx,edi
 0057FAFA    mov        eax,dword ptr [ebp-4]
 0057FAFD    mov        eax,dword ptr [eax+50]; TRPPrinterDevice.?f50:TStringList
 0057FB00    mov        edi,dword ptr [eax]
 0057FB02    call       dword ptr [edi+3C]; TStringList.AddObject
 0057FB05    inc        ebx
 0057FB06    dec        esi
<0057FB07    jne        0057FAD9
 0057FB09    xor        eax,eax
 0057FB0B    pop        edx
 0057FB0C    pop        ecx
 0057FB0D    pop        ecx
 0057FB0E    mov        dword ptr fs:[eax],edx
 0057FB11    push       57FB39
 0057FB16    mov        edx,dword ptr [ebp-8]
 0057FB19    add        edx,edx
 0057FB1B    mov        eax,dword ptr [ebp-10]
 0057FB1E    call       @FreeMem
 0057FB23    mov        edx,dword ptr [ebp-8]
 0057FB26    shl        edx,6
 0057FB29    mov        eax,dword ptr [ebp-0C]
 0057FB2C    call       @FreeMem
 0057FB31    ret
<0057FB32    jmp        @HandleFinally
<0057FB37    jmp        0057FB16
 0057FB39    xor        eax,eax
 0057FB3B    pop        edx
 0057FB3C    pop        ecx
 0057FB3D    pop        ecx
 0057FB3E    mov        dword ptr fs:[eax],edx
>0057FB41    jmp        0057FB5D
<0057FB43    jmp        @HandleAnyException
 0057FB48    mov        eax,dword ptr [ebp-4]
 0057FB4B    add        eax,50; TRPPrinterDevice.?f50:TStringList
 0057FB4E    call       FreeAndNil
 0057FB53    call       @RaiseAgain
 0057FB58    call       @DoneExcept
 0057FB5D    mov        eax,dword ptr [ebp-4]
 0057FB60    mov        ebx,dword ptr [eax+50]; TRPPrinterDevice.?f50:TStringList
 0057FB63    xor        eax,eax
 0057FB65    pop        edx
 0057FB66    pop        ecx
 0057FB67    pop        ecx
 0057FB68    mov        dword ptr fs:[eax],edx
 0057FB6B    push       57FB80
 0057FB70    lea        eax,[ebp-14]
 0057FB73    call       @LStrClr
 0057FB78    ret
<0057FB79    jmp        @HandleFinally
<0057FB7E    jmp        0057FB70
 0057FB80    mov        eax,ebx
 0057FB82    pop        edi
 0057FB83    pop        esi
 0057FB84    pop        ebx
 0057FB85    mov        esp,ebp
 0057FB87    pop        ebp
 0057FB88    ret
*}
//end;

//0057FB8C
//function sub_0057FB8C(?:?; ?:?):?;
//begin
{*
 0057FB8C    push       ebp
 0057FB8D    mov        ebp,esp
 0057FB8F    add        esp,0FFFFFFE0
 0057FB92    push       ebx
 0057FB93    push       esi
 0057FB94    push       edi
 0057FB95    xor        ebx,ebx
 0057FB97    mov        dword ptr [ebp-18],ebx
 0057FB9A    mov        dword ptr [ebp-20],ebx
 0057FB9D    mov        dword ptr [ebp-1C],ebx
 0057FBA0    mov        dword ptr [ebp-14],ebx
 0057FBA3    mov        byte ptr [ebp-5],cl
 0057FBA6    mov        dword ptr [ebp-4],edx
 0057FBA9    mov        esi,eax
 0057FBAB    mov        eax,dword ptr [ebp-4]
 0057FBAE    call       @LStrAddRef
 0057FBB3    xor        eax,eax
 0057FBB5    push       ebp
 0057FBB6    push       57FCB0
 0057FBBB    push       dword ptr fs:[eax]
 0057FBBE    mov        dword ptr fs:[eax],esp
 0057FBC1    mov        eax,esi
 0057FBC3    call       0057E650
 0057FBC8    mov        eax,esi
 0057FBCA    mov        edx,dword ptr [eax]
 0057FBCC    call       dword ptr [edx+14]; TRPPrinterDevice.sub_0057F9F8
 0057FBCF    xor        ebx,ebx
 0057FBD1    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FBD4    mov        edx,dword ptr [eax]
 0057FBD6    call       dword ptr [edx+14]; TStringList.GetCount
 0057FBD9    test       eax,eax
>0057FBDB    jle        0057FC8D
 0057FBE1    mov        dword ptr [ebp-10],eax
 0057FBE4    mov        dword ptr [ebp-0C],1
 0057FBEB    cmp        byte ptr [ebp-5],0
>0057FBEF    je         0057FC10
 0057FBF1    lea        ecx,[ebp-14]
 0057FBF4    mov        edx,dword ptr [ebp-0C]
 0057FBF7    dec        edx
 0057FBF8    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FBFB    mov        ebx,dword ptr [eax]
 0057FBFD    call       dword ptr [ebx+0C]; TStringList.Get
 0057FC00    mov        eax,dword ptr [ebp-14]
 0057FC03    mov        edx,dword ptr [ebp-4]
 0057FC06    call       @LStrCmp
 0057FC0B    sete       bl
>0057FC0E    jmp        0057FC47
 0057FC10    lea        ecx,[ebp-1C]
 0057FC13    mov        edx,dword ptr [ebp-0C]
 0057FC16    dec        edx
 0057FC17    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FC1A    mov        ebx,dword ptr [eax]
 0057FC1C    call       dword ptr [ebx+0C]; TStringList.Get
 0057FC1F    mov        eax,dword ptr [ebp-1C]
 0057FC22    lea        edx,[ebp-18]
 0057FC25    call       AnsiUpperCase
 0057FC2A    mov        eax,dword ptr [ebp-18]
 0057FC2D    push       eax
 0057FC2E    lea        edx,[ebp-20]
 0057FC31    mov        eax,dword ptr [ebp-4]
 0057FC34    call       AnsiUpperCase
 0057FC39    mov        eax,dword ptr [ebp-20]
 0057FC3C    pop        edx
 0057FC3D    call       AnsiPos
 0057FC42    test       eax,eax
 0057FC44    setg       bl
 0057FC47    test       bl,bl
>0057FC49    je         0057FC81
 0057FC4B    mov        edx,dword ptr [ebp-0C]
 0057FC4E    dec        edx
 0057FC4F    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FC52    mov        ecx,dword ptr [eax]
 0057FC54    call       dword ptr [ecx+18]; TStringList.GetObject
 0057FC57    mov        edi,eax
 0057FC59    mov        eax,esi
 0057FC5B    call       0057EF80
 0057FC60    test       eax,eax
>0057FC62    je         0057FC7D
 0057FC64    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0057FC67    movsx      edx,word ptr [eax+2E]
 0057FC6B    cmp        edi,edx
>0057FC6D    je         0057FC8D
 0057FC6F    mov        word ptr [eax+2E],di
 0057FC73    or         dword ptr [eax+28],2
 0057FC77    mov        byte ptr [esi+65],1; TRPPrinterDevice.?f65:byte
>0057FC7B    jmp        0057FC8D
 0057FC7D    xor        ebx,ebx
>0057FC7F    jmp        0057FC8D
 0057FC81    inc        dword ptr [ebp-0C]
 0057FC84    dec        dword ptr [ebp-10]
<0057FC87    jne        0057FBEB
 0057FC8D    xor        eax,eax
 0057FC8F    pop        edx
 0057FC90    pop        ecx
 0057FC91    pop        ecx
 0057FC92    mov        dword ptr fs:[eax],edx
 0057FC95    push       57FCB7
 0057FC9A    lea        eax,[ebp-20]
 0057FC9D    mov        edx,4
 0057FCA2    call       @LStrArrayClr
 0057FCA7    lea        eax,[ebp-4]
 0057FCAA    call       @LStrClr
 0057FCAF    ret
<0057FCB0    jmp        @HandleFinally
<0057FCB5    jmp        0057FC9A
 0057FCB7    mov        eax,ebx
 0057FCB9    pop        edi
 0057FCBA    pop        esi
 0057FCBB    pop        ebx
 0057FCBC    mov        esp,ebp
 0057FCBE    pop        ebp
 0057FCBF    ret
*}
//end;

//0057FCC0
//function sub_0057FCC0(?:?):?;
//begin
{*
 0057FCC0    push       ebx
 0057FCC1    push       esi
 0057FCC2    push       edi
 0057FCC3    push       ebp
 0057FCC4    push       ecx
 0057FCC5    mov        dword ptr [esp],edx
 0057FCC8    mov        esi,eax
 0057FCCA    mov        eax,esi
 0057FCCC    call       0057EF80
 0057FCD1    test       eax,eax
>0057FCD3    je         0057FCE5
 0057FCD5    mov        eax,esi
 0057FCD7    call       0057EF80
 0057FCDC    test       dword ptr [eax+28],2
>0057FCE3    ja         0057FCE9
 0057FCE5    xor        eax,eax
>0057FCE7    jmp        0057FCEB
 0057FCE9    mov        al,1
 0057FCEB    test       al,al
>0057FCED    je         0057FD26
 0057FCEF    mov        eax,esi
 0057FCF1    mov        edx,dword ptr [eax]
 0057FCF3    call       dword ptr [edx+14]; TRPPrinterDevice.sub_0057F9F8
 0057FCF6    xor        ebx,ebx
 0057FCF8    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FCFB    mov        edx,dword ptr [eax]
 0057FCFD    call       dword ptr [edx+14]; TStringList.GetCount
 0057FD00    mov        edi,eax
 0057FD02    test       edi,edi
>0057FD04    jle        0057FD24
 0057FD06    mov        ebp,1
 0057FD0B    mov        edx,ebp
 0057FD0D    dec        edx
 0057FD0E    mov        eax,dword ptr [esi+50]; TRPPrinterDevice.?f50:TStringList
 0057FD11    mov        ecx,dword ptr [eax]
 0057FD13    call       dword ptr [ecx+18]; TStringList.GetObject
 0057FD16    cmp        eax,dword ptr [esp]
 0057FD19    sete       bl
 0057FD1C    test       bl,bl
>0057FD1E    jne        0057FD24
 0057FD20    inc        ebp
 0057FD21    dec        edi
<0057FD22    jne        0057FD0B
 0057FD24    mov        eax,ebx
 0057FD26    pop        edx
 0057FD27    pop        ebp
 0057FD28    pop        edi
 0057FD29    pop        esi
 0057FD2A    pop        ebx
 0057FD2B    ret
*}
//end;

//0057FD2C
//function sub_0057FD2C(?:?; ?:?):?;
//begin
{*
 0057FD2C    push       ebp
 0057FD2D    mov        ebp,esp
 0057FD2F    push       0
 0057FD31    push       ebx
 0057FD32    xor        eax,eax
 0057FD34    push       ebp
 0057FD35    push       57FD79
 0057FD3A    push       dword ptr fs:[eax]
 0057FD3D    mov        dword ptr fs:[eax],esp
 0057FD40    lea        eax,[ebp-4]
 0057FD43    mov        edx,dword ptr [ebp+8]
 0057FD46    add        edx,1C
 0057FD49    mov        ecx,20
 0057FD4E    call       @LStrFromArray
 0057FD53    mov        edx,dword ptr [ebp-4]
 0057FD56    mov        eax,dword ptr [ebp+14]
 0057FD59    mov        ecx,dword ptr [eax]
 0057FD5B    call       dword ptr [ecx+38]
 0057FD5E    mov        ebx,1
 0057FD63    xor        eax,eax
 0057FD65    pop        edx
 0057FD66    pop        ecx
 0057FD67    pop        ecx
 0057FD68    mov        dword ptr fs:[eax],edx
 0057FD6B    push       57FD80
 0057FD70    lea        eax,[ebp-4]
 0057FD73    call       @LStrClr
 0057FD78    ret
<0057FD79    jmp        @HandleFinally
<0057FD7E    jmp        0057FD70
 0057FD80    mov        eax,ebx
 0057FD82    pop        ebx
 0057FD83    pop        ecx
 0057FD84    pop        ebp
 0057FD85    ret        10
*}
//end;

//0057FD88
//function sub_0057FD88:?;
//begin
{*
 0057FD88    push       ebp
 0057FD89    mov        ebp,esp
 0057FD8B    push       ecx
 0057FD8C    push       ebx
 0057FD8D    push       esi
 0057FD8E    push       edi
 0057FD8F    mov        dword ptr [ebp-4],eax
 0057FD92    mov        eax,dword ptr [ebp-4]
 0057FD95    cmp        dword ptr [eax+44],0; TRPPrinterDevice.?f44:TStringList
>0057FD99    jne        0057FE04
 0057FD9B    mov        dl,1
 0057FD9D    mov        eax,dword ptr [ebp-4]
 0057FDA0    call       0057EDB4
 0057FDA5    mov        dl,1
 0057FDA7    mov        eax,[0041C8E4]; TStringList
 0057FDAC    call       TObject.Create; TStringList.Create
 0057FDB1    mov        edx,dword ptr [ebp-4]
 0057FDB4    mov        dword ptr [edx+44],eax; TRPPrinterDevice.?f44:TStringList
 0057FDB7    xor        edx,edx
 0057FDB9    push       ebp
 0057FDBA    push       57FDEA
 0057FDBF    push       dword ptr fs:[edx]
 0057FDC2    mov        dword ptr fs:[edx],esp
 0057FDC5    mov        eax,57FD2C; sub_0057FD2C
 0057FDCA    mov        edx,dword ptr [ebp-4]
 0057FDCD    mov        edx,dword ptr [edx+44]; TRPPrinterDevice.?f44:TStringList
 0057FDD0    push       edx
 0057FDD1    push       eax
 0057FDD2    push       0
 0057FDD4    mov        eax,dword ptr [ebp-4]
 0057FDD7    mov        eax,dword ptr [eax+30]; TRPPrinterDevice.?f30:HDC
 0057FDDA    push       eax
 0057FDDB    call       gdi32.EnumFontsA
 0057FDE0    xor        eax,eax
 0057FDE2    pop        edx
 0057FDE3    pop        ecx
 0057FDE4    pop        ecx
 0057FDE5    mov        dword ptr fs:[eax],edx
>0057FDE8    jmp        0057FE04
<0057FDEA    jmp        @HandleAnyException
 0057FDEF    mov        eax,dword ptr [ebp-4]
 0057FDF2    add        eax,44; TRPPrinterDevice.?f44:TStringList
 0057FDF5    call       FreeAndNil
 0057FDFA    call       @RaiseAgain
 0057FDFF    call       @DoneExcept
 0057FE04    mov        eax,dword ptr [ebp-4]
 0057FE07    mov        eax,dword ptr [eax+44]; TRPPrinterDevice.?f44:TStringList
 0057FE0A    pop        edi
 0057FE0B    pop        esi
 0057FE0C    pop        ebx
 0057FE0D    pop        ecx
 0057FE0E    pop        ebp
 0057FE0F    ret
*}
//end;

//0057FE10
//function sub_0057FE10:?;
//begin
{*
 0057FE10    push       ebp
 0057FE11    mov        ebp,esp
 0057FE13    add        esp,0FFFFFFCC
 0057FE16    push       ebx
 0057FE17    push       esi
 0057FE18    push       edi
 0057FE19    xor        edx,edx
 0057FE1B    mov        dword ptr [ebp-24],edx
 0057FE1E    mov        dword ptr [ebp-20],edx
 0057FE21    mov        dword ptr [ebp-4],eax
 0057FE24    xor        eax,eax
 0057FE26    push       ebp
 0057FE27    push       580033
 0057FE2C    push       dword ptr fs:[eax]
 0057FE2F    mov        dword ptr fs:[eax],esp
 0057FE32    mov        eax,dword ptr [ebp-4]
 0057FE35    cmp        dword ptr [eax+48],0; TRPPrinterDevice.?f48:TStringList
>0057FE39    jne        00580012
 0057FE3F    mov        dl,1
 0057FE41    mov        eax,[0041C8E4]; TStringList
 0057FE46    call       TObject.Create; TStringList.Create
 0057FE4B    mov        ebx,eax
 0057FE4D    mov        eax,dword ptr [ebp-4]
 0057FE50    mov        dword ptr [eax+48],ebx; TRPPrinterDevice.?f48:TStringList
 0057FE53    mov        edi,ebx
 0057FE55    xor        edx,edx
 0057FE57    push       ebp
 0057FE58    push       57FFF8
 0057FE5D    push       dword ptr fs:[edx]
 0057FE60    mov        dword ptr fs:[edx],esp
 0057FE63    mov        eax,[0061C584]; ^Win32Platform:System.Integer
 0057FE68    cmp        dword ptr [eax],2
>0057FE6B    jne        0057FE79
 0057FE6D    mov        esi,4
 0057FE72    mov        ebx,6
>0057FE77    jmp        0057FE83
 0057FE79    mov        esi,5
 0057FE7E    mov        ebx,2
 0057FE83    xor        eax,eax
 0057FE85    mov        dword ptr [ebp-8],eax
 0057FE88    lea        eax,[ebp-10]
 0057FE8B    push       eax
 0057FE8C    lea        eax,[ebp-8]
 0057FE8F    push       eax
 0057FE90    push       0
 0057FE92    push       0
 0057FE94    push       esi
 0057FE95    push       0
 0057FE97    push       ebx
 0057FE98    call       winspool.EnumPrintersA
 0057FE9D    cmp        dword ptr [ebp-8],0
>0057FEA1    jne        0057FEB0
 0057FEA3    xor        eax,eax
 0057FEA5    pop        edx
 0057FEA6    pop        ecx
 0057FEA7    pop        ecx
 0057FEA8    mov        dword ptr fs:[eax],edx
>0057FEAB    jmp        00580018
 0057FEB0    mov        eax,dword ptr [ebp-8]
 0057FEB3    call       @GetMem
 0057FEB8    mov        dword ptr [ebp-0C],eax
 0057FEBB    xor        edx,edx
 0057FEBD    push       ebp
 0057FEBE    push       57FFE7
 0057FEC3    push       dword ptr fs:[edx]
 0057FEC6    mov        dword ptr fs:[edx],esp
 0057FEC9    lea        eax,[ebp-10]
 0057FECC    push       eax
 0057FECD    lea        eax,[ebp-8]
 0057FED0    push       eax
 0057FED1    mov        eax,dword ptr [ebp-8]
 0057FED4    push       eax
 0057FED5    mov        eax,dword ptr [ebp-0C]
 0057FED8    push       eax
 0057FED9    push       esi
 0057FEDA    push       0
 0057FEDC    push       ebx
 0057FEDD    call       winspool.EnumPrintersA
 0057FEE2    test       eax,eax
>0057FEE4    jne        0057FEF8
 0057FEE6    call       @TryFinallyExit
 0057FEEB    xor        eax,eax
 0057FEED    pop        edx
 0057FEEE    pop        ecx
 0057FEEF    pop        ecx
 0057FEF0    mov        dword ptr fs:[eax],edx
>0057FEF3    jmp        00580018
 0057FEF8    mov        eax,dword ptr [ebp-0C]
 0057FEFB    mov        dword ptr [ebp-14],eax
 0057FEFE    mov        eax,dword ptr [ebp-10]
 0057FF01    dec        eax
 0057FF02    test       eax,eax
>0057FF04    jl         0057FFCE
 0057FF0A    inc        eax
 0057FF0B    mov        dword ptr [ebp-1C],eax
 0057FF0E    mov        eax,[0061C584]; ^Win32Platform:System.Integer
 0057FF13    cmp        dword ptr [eax],2
>0057FF16    jne        0057FF4F
 0057FF18    mov        ebx,dword ptr [ebp-14]
 0057FF1B    push       0
 0057FF1D    push       0
 0057FF1F    mov        esi,dword ptr [ebx]
 0057FF21    mov        ecx,esi
 0057FF23    mov        dl,1
 0057FF25    mov        eax,[0057E408]; TRPDeviceItem
 0057FF2A    call       TRPDeviceItem.Create; TRPDeviceItem.Create
 0057FF2F    push       eax
 0057FF30    lea        eax,[ebp-20]
 0057FF33    mov        edx,esi
 0057FF35    call       @LStrFromPChar
 0057FF3A    mov        edx,dword ptr [ebp-20]
 0057FF3D    mov        eax,dword ptr [ebp-4]
 0057FF40    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057FF43    pop        ecx
 0057FF44    mov        ebx,dword ptr [eax]
 0057FF46    call       dword ptr [ebx+3C]; TStringList.AddObject
 0057FF49    add        dword ptr [ebp-14],0C
>0057FF4D    jmp        0057FFC5
 0057FF4F    mov        esi,dword ptr [ebp-14]
 0057FF52    mov        eax,dword ptr [esi+4]
 0057FF55    mov        dword ptr [ebp-18],eax
 0057FF58    lea        edx,[ebp-18]
 0057FF5B    mov        eax,dword ptr [ebp-4]
 0057FF5E    call       0057E6E0
 0057FF63    mov        ebx,eax
 0057FF65    test       ebx,ebx
>0057FF67    je         0057FFC1
 0057FF69    push       0
 0057FF6B    push       ebx
 0057FF6C    mov        ecx,dword ptr [esi]
 0057FF6E    mov        dl,1
 0057FF70    mov        eax,[0057E408]; TRPDeviceItem
 0057FF75    call       TRPDeviceItem.Create; TRPDeviceItem.Create
 0057FF7A    push       eax
 0057FF7B    lea        eax,[ebp-24]
 0057FF7E    push       eax
 0057FF7F    mov        eax,dword ptr [esi]
 0057FF81    mov        dword ptr [ebp-34],eax
 0057FF84    mov        byte ptr [ebp-30],6
 0057FF88    mov        dword ptr [ebp-2C],ebx
 0057FF8B    mov        byte ptr [ebp-28],6
 0057FF8F    lea        edx,[ebp-34]
 0057FF92    mov        ecx,1
 0057FF97    mov        eax,58004C; '%s on %s'
 0057FF9C    call       Format
 0057FFA1    mov        edx,dword ptr [ebp-24]
 0057FFA4    mov        eax,dword ptr [ebp-4]
 0057FFA7    mov        eax,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 0057FFAA    pop        ecx
 0057FFAB    mov        ebx,dword ptr [eax]
 0057FFAD    call       dword ptr [ebx+3C]; TStringList.AddObject
 0057FFB0    lea        edx,[ebp-18]
 0057FFB3    mov        eax,dword ptr [ebp-4]
 0057FFB6    call       0057E6E0
 0057FFBB    mov        ebx,eax
 0057FFBD    test       ebx,ebx
<0057FFBF    jne        0057FF69
 0057FFC1    add        dword ptr [ebp-14],14
 0057FFC5    dec        dword ptr [ebp-1C]
<0057FFC8    jne        0057FF0E
 0057FFCE    xor        eax,eax
 0057FFD0    pop        edx
 0057FFD1    pop        ecx
 0057FFD2    pop        ecx
 0057FFD3    mov        dword ptr fs:[eax],edx
 0057FFD6    push       57FFEE
 0057FFDB    mov        edx,dword ptr [ebp-8]
 0057FFDE    mov        eax,dword ptr [ebp-0C]
 0057FFE1    call       @FreeMem
 0057FFE6    ret
<0057FFE7    jmp        @HandleFinally
<0057FFEC    jmp        0057FFDB
 0057FFEE    xor        eax,eax
 0057FFF0    pop        edx
 0057FFF1    pop        ecx
 0057FFF2    pop        ecx
 0057FFF3    mov        dword ptr fs:[eax],edx
>0057FFF6    jmp        00580012
<0057FFF8    jmp        @HandleAnyException
 0057FFFD    mov        eax,dword ptr [ebp-4]
 00580000    add        eax,48; TRPPrinterDevice.?f48:TStringList
 00580003    call       FreeAndNil
 00580008    call       @RaiseAgain
 0058000D    call       @DoneExcept
 00580012    mov        eax,dword ptr [ebp-4]
 00580015    mov        edi,dword ptr [eax+48]; TRPPrinterDevice.?f48:TStringList
 00580018    xor        eax,eax
 0058001A    pop        edx
 0058001B    pop        ecx
 0058001C    pop        ecx
 0058001D    mov        dword ptr fs:[eax],edx
 00580020    push       58003A
 00580025    lea        eax,[ebp-24]
 00580028    mov        edx,2
 0058002D    call       @LStrArrayClr
 00580032    ret
<00580033    jmp        @HandleFinally
<00580038    jmp        00580025
 0058003A    mov        eax,edi
 0058003C    pop        edi
 0058003D    pop        esi
 0058003E    pop        ebx
 0058003F    mov        esp,ebp
 00580041    pop        ebp
 00580042    ret
*}
//end;

//00580058
//function sub_00580058(?:?; ?:AnsiString; ?:?):?;
//begin
{*
 00580058    push       ebp
 00580059    mov        ebp,esp
 0058005B    push       ecx
 0058005C    mov        ecx,6
 00580061    push       0
 00580063    push       0
 00580065    dec        ecx
<00580066    jne        00580061
 00580068    push       ecx
 00580069    xchg       ecx,dword ptr [ebp-4]
 0058006C    push       ebx
 0058006D    push       esi
 0058006E    push       edi
 0058006F    mov        byte ptr [ebp-5],cl
 00580072    mov        dword ptr [ebp-4],edx
 00580075    mov        esi,eax
 00580077    mov        eax,dword ptr [ebp-4]
 0058007A    call       @LStrAddRef
 0058007F    xor        eax,eax
 00580081    push       ebp
 00580082    push       5801E9
 00580087    push       dword ptr fs:[eax]
 0058008A    mov        dword ptr fs:[eax],esp
 0058008D    mov        eax,esi
 0058008F    call       0057E650
 00580094    mov        eax,esi
 00580096    mov        edx,dword ptr [eax]
 00580098    call       dword ptr [edx+1C]
 0058009B    xor        ebx,ebx
 0058009D    mov        eax,dword ptr [esi+48]
 005800A0    mov        edx,dword ptr [eax]
 005800A2    call       dword ptr [edx+14]
 005800A5    test       eax,eax
>005800A7    jle        005801C6
 005800AD    mov        dword ptr [ebp-0C],eax
 005800B0    mov        edi,1
 005800B5    mov        edx,edi
 005800B7    dec        edx
 005800B8    mov        eax,dword ptr [esi+48]
 005800BB    mov        ecx,dword ptr [eax]
 005800BD    call       dword ptr [ecx+18]
 005800C0    mov        ebx,eax
 005800C2    cmp        byte ptr [ebp-5],0
>005800C6    je         00580154
 005800CC    mov        edx,dword ptr [ebp-4]
 005800CF    mov        eax,580204; ' on '
 005800D4    call       @LStrPos
 005800D9    test       eax,eax
>005800DB    jle        00580137
 005800DD    lea        edx,[ebp-18]
 005800E0    mov        eax,dword ptr [ebx+4]
 005800E3    call       StrPas
 005800E8    push       dword ptr [ebp-18]
 005800EB    push       580204; ' on '
 005800F0    lea        edx,[ebp-1C]
 005800F3    mov        eax,dword ptr [ebx+0C]
 005800F6    call       StrPas
 005800FB    push       dword ptr [ebp-1C]
 005800FE    lea        eax,[ebp-14]
 00580101    mov        edx,3
 00580106    call       @LStrCatN
 0058010B    mov        eax,dword ptr [ebp-14]
 0058010E    lea        edx,[ebp-10]
 00580111    call       AnsiUpperCase
 00580116    mov        eax,dword ptr [ebp-10]
 00580119    push       eax
 0058011A    lea        edx,[ebp-20]
 0058011D    mov        eax,dword ptr [ebp-4]
 00580120    call       AnsiUpperCase
 00580125    mov        eax,dword ptr [ebp-20]
 00580128    pop        edx
 00580129    call       @LStrPos
 0058012E    test       eax,eax
 00580130    setg       al
 00580133    mov        ebx,eax
>00580135    jmp        005801AC
 00580137    lea        eax,[ebp-24]
 0058013A    mov        edx,dword ptr [ebx+4]
 0058013D    call       @LStrFromPChar
 00580142    mov        eax,dword ptr [ebp-24]
 00580145    mov        edx,dword ptr [ebp-4]
 00580148    call       @LStrCmp
 0058014D    sete       al
 00580150    mov        ebx,eax
>00580152    jmp        005801AC
 00580154    lea        eax,[ebp-30]
 00580157    mov        edx,dword ptr [ebx+4]
 0058015A    call       @LStrFromPChar
 0058015F    push       dword ptr [ebp-30]
 00580162    push       580204; ' on '
 00580167    lea        eax,[ebp-34]
 0058016A    mov        edx,dword ptr [ebx+0C]
 0058016D    call       @LStrFromPChar
 00580172    push       dword ptr [ebp-34]
 00580175    lea        eax,[ebp-2C]
 00580178    mov        edx,3
 0058017D    call       @LStrCatN
 00580182    mov        eax,dword ptr [ebp-2C]
 00580185    lea        edx,[ebp-28]
 00580188    call       AnsiUpperCase
 0058018D    mov        eax,dword ptr [ebp-28]
 00580190    push       eax
 00580191    lea        edx,[ebp-38]
 00580194    mov        eax,dword ptr [ebp-4]
 00580197    call       AnsiUpperCase
 0058019C    mov        eax,dword ptr [ebp-38]
 0058019F    pop        edx
 005801A0    call       AnsiPos
 005801A5    test       eax,eax
 005801A7    setg       al
 005801AA    mov        ebx,eax
 005801AC    test       bl,bl
>005801AE    je         005801BC
 005801B0    mov        edx,edi
 005801B2    dec        edx
 005801B3    mov        eax,esi
 005801B5    call       0057EC80
>005801BA    jmp        005801C6
 005801BC    inc        edi
 005801BD    dec        dword ptr [ebp-0C]
<005801C0    jne        005800B5
 005801C6    xor        eax,eax
 005801C8    pop        edx
 005801C9    pop        ecx
 005801CA    pop        ecx
 005801CB    mov        dword ptr fs:[eax],edx
 005801CE    push       5801F0
 005801D3    lea        eax,[ebp-38]
 005801D6    mov        edx,0B
 005801DB    call       @LStrArrayClr
 005801E0    lea        eax,[ebp-4]
 005801E3    call       @LStrClr
 005801E8    ret
<005801E9    jmp        @HandleFinally
<005801EE    jmp        005801D3
 005801F0    mov        eax,ebx
 005801F2    pop        edi
 005801F3    pop        esi
 005801F4    pop        ebx
 005801F5    mov        esp,ebp
 005801F7    pop        ebp
 005801F8    ret
*}
//end;

//0058020C
//function sub_0058020C:?;
//begin
{*
 0058020C    push       ebx
 0058020D    mov        ebx,eax
 0058020F    mov        dl,1
 00580211    mov        eax,ebx
 00580213    call       0057EDB4
 00580218    mov        eax,ebx
 0058021A    call       0057EF80
 0058021F    test       eax,eax
>00580221    je         0058022D
 00580223    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580226    mov        ax,word ptr [eax+2C]
 0058022A    dec        eax
 0058022B    pop        ebx
 0058022C    ret
 0058022D    xor        eax,eax
 0058022F    pop        ebx
 00580230    ret
*}
//end;

//00580234
//procedure sub_00580234(?:?);
//begin
{*
 00580234    push       ebx
 00580235    push       esi
 00580236    mov        ebx,edx
 00580238    mov        esi,eax
 0058023A    mov        eax,esi
 0058023C    call       0057EF80
 00580241    test       eax,eax
>00580243    je         0058026E
 00580245    cmp        bl,2
>00580248    je         0058026E
 0058024A    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0058024D    movsx      eax,word ptr [eax+2C]
 00580251    xor        edx,edx
 00580253    mov        dl,bl
 00580255    inc        edx
 00580256    cmp        eax,edx
>00580258    je         0058026E
 0058025A    xor        edx,edx
 0058025C    mov        dl,bl
 0058025E    inc        edx
 0058025F    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 00580262    mov        word ptr [eax+2C],dx
 00580266    or         dword ptr [eax+28],1
 0058026A    mov        byte ptr [esi+65],1; TRPPrinterDevice.?f65:byte
 0058026E    pop        esi
 0058026F    pop        ebx
 00580270    ret
*}
//end;

//00580274
//function sub_00580274:?;
//begin
{*
 00580274    push       ebx
 00580275    mov        ebx,eax
 00580277    mov        eax,ebx
 00580279    call       0057EF80
 0058027E    test       eax,eax
>00580280    je         00580292
 00580282    mov        eax,ebx
 00580284    call       0057EF80
 00580289    test       dword ptr [eax+28],1
>00580290    ja         00580296
 00580292    xor        eax,eax
 00580294    pop        ebx
 00580295    ret
 00580296    mov        al,1
 00580298    pop        ebx
 00580299    ret
*}
//end;

//0058029C
procedure sub_0058029C;
begin
{*
 0058029C    push       ebx
 0058029D    mov        ebx,eax
 0058029F    mov        eax,ebx
 005802A1    call       0058068C
 005802A6    test       al,al
>005802A8    je         005802B1
 005802AA    mov        eax,1
 005802AF    pop        ebx
 005802B0    ret
 005802B1    mov        dl,1
 005802B3    mov        eax,ebx
 005802B5    call       0057EDB4
 005802BA    push       0
 005802BC    push       0
 005802BE    push       12
 005802C0    mov        eax,dword ptr [ebx+2C]; TRPPrinterDevice.?f2C:PChar
 005802C3    push       eax
 005802C4    mov        eax,dword ptr [ebx+24]; TRPPrinterDevice.?f24:PChar
 005802C7    push       eax
 005802C8    call       winspool.DeviceCapabilitiesA
 005802CD    pop        ebx
 005802CE    ret
*}
end;

//005802D0
//procedure sub_005802D0(?:?);
//begin
{*
 005802D0    push       ebx
 005802D1    push       esi
 005802D2    mov        esi,edx
 005802D4    mov        ebx,eax
 005802D6    mov        eax,ebx
 005802D8    call       0057E650
 005802DD    mov        eax,ebx
 005802DF    call       0057EF80
 005802E4    test       eax,eax
>005802E6    je         00580314
 005802E8    test       esi,esi
>005802EA    jle        00580314
 005802EC    mov        eax,ebx
 005802EE    mov        edx,dword ptr [eax]
 005802F0    call       dword ptr [edx+28]; TRPPrinterDevice.sub_0058029C
 005802F3    cmp        esi,eax
>005802F5    jge        00580314
 005802F7    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 005802FA    movsx      eax,word ptr [eax+36]
 005802FE    cmp        esi,eax
>00580300    je         00580314
 00580302    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580305    mov        word ptr [eax+36],si
 00580309    or         dword ptr [eax+28],100
 00580310    mov        byte ptr [ebx+65],1; TRPPrinterDevice.?f65:byte
 00580314    pop        esi
 00580315    pop        ebx
 00580316    ret
*}
//end;

//00580318
//function sub_00580318:?;
//begin
{*
 00580318    push       ebx
 00580319    mov        ebx,eax
 0058031B    mov        eax,ebx
 0058031D    call       0057EF80
 00580322    test       eax,eax
>00580324    je         00580338
 00580326    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580329    movsx      eax,word ptr [eax+36]
 0058032D    test       eax,eax
>0058032F    jne        0058033D
 00580331    mov        eax,1
 00580336    pop        ebx
 00580337    ret
 00580338    mov        eax,1
 0058033D    pop        ebx
 0058033E    ret
*}
//end;

//00580340
//function sub_00580340:?;
//begin
{*
 00580340    push       ebx
 00580341    mov        ebx,eax
 00580343    mov        eax,ebx
 00580345    call       0057EF80
 0058034A    test       eax,eax
>0058034C    je         00580366
 0058034E    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580351    mov        ax,word ptr [eax+3E]
 00580355    dec        eax
 00580356    sub        ax,3
>0058035A    jae        00580366
 0058035C    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 0058035F    mov        ax,word ptr [eax+3E]
 00580363    dec        eax
 00580364    pop        ebx
 00580365    ret
 00580366    xor        eax,eax
 00580368    pop        ebx
 00580369    ret
*}
//end;

//0058036C
//procedure sub_0058036C(?:?);
//begin
{*
 0058036C    push       ebx
 0058036D    push       esi
 0058036E    mov        ebx,edx
 00580370    mov        esi,eax
 00580372    mov        eax,esi
 00580374    call       0057E650
 00580379    mov        eax,esi
 0058037B    call       0057EF80
 00580380    test       eax,eax
>00580382    je         005803B9
 00580384    mov        eax,esi
 00580386    mov        edx,dword ptr [eax]
 00580388    call       dword ptr [edx+88]; TRPPrinterDevice.sub_005803BC
 0058038E    test       al,al
>00580390    je         005803B9
 00580392    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 00580395    movsx      eax,word ptr [eax+3E]
 00580399    xor        edx,edx
 0058039B    mov        dl,bl
 0058039D    inc        edx
 0058039E    cmp        eax,edx
>005803A0    je         005803B9
 005803A2    xor        edx,edx
 005803A4    mov        dl,bl
 005803A6    inc        edx
 005803A7    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 005803AA    mov        word ptr [eax+3E],dx
 005803AE    or         dword ptr [eax+28],1000
 005803B5    mov        byte ptr [esi+65],1; TRPPrinterDevice.?f65:byte
 005803B9    pop        esi
 005803BA    pop        ebx
 005803BB    ret
*}
//end;

//005803BC
//function sub_005803BC:?;
//begin
{*
 005803BC    push       ebx
 005803BD    mov        ebx,eax
 005803BF    mov        eax,ebx
 005803C1    call       0057EF80
 005803C6    test       eax,eax
>005803C8    je         005803DA
 005803CA    mov        eax,ebx
 005803CC    call       0057EF80
 005803D1    test       dword ptr [eax+28],1000
>005803D8    ja         005803DE
 005803DA    xor        eax,eax
 005803DC    pop        ebx
 005803DD    ret
 005803DE    mov        al,1
 005803E0    pop        ebx
 005803E1    ret
*}
//end;

//005803E4
//function sub_005803E4:?;
//begin
{*
 005803E4    push       ebx
 005803E5    mov        ebx,eax
 005803E7    mov        eax,ebx
 005803E9    call       0057EF80
 005803EE    test       eax,eax
>005803F0    je         005803FF
 005803F2    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 005803F5    cmp        word ptr [eax+44],1
 005803FA    sete       al
 005803FD    pop        ebx
 005803FE    ret
 005803FF    xor        eax,eax
 00580401    pop        ebx
 00580402    ret
*}
//end;

//00580404
//procedure sub_00580404(?:?);
//begin
{*
 00580404    push       ebx
 00580405    push       esi
 00580406    mov        ebx,edx
 00580408    mov        esi,eax
 0058040A    mov        eax,esi
 0058040C    call       0057E650
 00580411    mov        eax,esi
 00580413    call       0057EF80
 00580418    test       eax,eax
>0058041A    je         00580459
 0058041C    mov        eax,esi
 0058041E    mov        edx,dword ptr [eax]
 00580420    call       dword ptr [edx+8C]; TRPPrinterDevice.sub_0058045C
 00580426    test       al,al
>00580428    je         00580459
 0058042A    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0058042D    cmp        word ptr [eax+44],1
 00580432    sete       dl
 00580435    cmp        bl,dl
>00580437    je         00580459
 00580439    test       bl,bl
>0058043B    je         00580445
 0058043D    mov        word ptr [eax+44],1
>00580443    jmp        0058044B
 00580445    mov        word ptr [eax+44],0
 0058044B    mov        eax,dword ptr [esi+3C]; TRPPrinterDevice.?f3C:Pointer
 0058044E    or         dword ptr [eax+28],8000
 00580455    mov        byte ptr [esi+65],1; TRPPrinterDevice.?f65:byte
 00580459    pop        esi
 0058045A    pop        ebx
 0058045B    ret
*}
//end;

//0058045C
//function sub_0058045C:?;
//begin
{*
 0058045C    push       ebx
 0058045D    mov        ebx,eax
 0058045F    mov        eax,ebx
 00580461    call       0057EF80
 00580466    test       eax,eax
>00580468    je         0058047A
 0058046A    mov        eax,ebx
 0058046C    call       0057EF80
 00580471    test       dword ptr [eax+28],8000
>00580478    ja         0058047E
 0058047A    xor        eax,eax
 0058047C    pop        ebx
 0058047D    ret
 0058047E    mov        al,1
 00580480    pop        ebx
 00580481    ret
*}
//end;

//00580484
procedure sub_00580484;
begin
{*
 00580484    push       ebx
 00580485    mov        ebx,eax
 00580487    mov        dl,1
 00580489    mov        eax,ebx
 0058048B    call       0057EDB4
 00580490    xor        edx,edx
 00580492    mov        eax,ebx
 00580494    call       0057F60C
 00580499    push       0A
 0058049B    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 0058049E    push       eax
 0058049F    call       gdi32.GetDeviceCaps
 005804A4    pop        ebx
 005804A5    ret
*}
end;

//005804A8
procedure sub_005804A8;
begin
{*
 005804A8    push       ebx
 005804A9    mov        ebx,eax
 005804AB    mov        dl,1
 005804AD    mov        eax,ebx
 005804AF    call       0057EDB4
 005804B4    xor        edx,edx
 005804B6    mov        eax,ebx
 005804B8    call       0057F60C
 005804BD    push       8
 005804BF    mov        eax,dword ptr [ebx+30]; TRPPrinterDevice.?f30:HDC
 005804C2    push       eax
 005804C3    call       gdi32.GetDeviceCaps
 005804C8    pop        ebx
 005804C9    ret
*}
end;

//005804CC
//procedure sub_005804CC(?:?; ?:?);
//begin
{*
 005804CC    push       ebx
 005804CD    push       esi
 005804CE    push       edi
 005804CF    push       ebp
 005804D0    mov        ebp,ecx
 005804D2    mov        edi,edx
 005804D4    mov        esi,eax
 005804D6    push       0
 005804D8    push       0
 005804DA    push       4
 005804DC    mov        eax,dword ptr [esi+2C]; TRPPrinterDevice.?f2C:PChar
 005804DF    push       eax
 005804E0    mov        eax,dword ptr [esi+24]; TRPPrinterDevice.?f24:PChar
 005804E3    push       eax
 005804E4    call       winspool.DeviceCapabilitiesA
 005804E9    mov        ebx,eax
 005804EB    cmp        ebx,0FFFFFFFF
>005804EE    jne        005804FF
 005804F0    mov        dword ptr [edi],1
 005804F6    mov        dword ptr [edi+4],1
>005804FD    jmp        00580511
 005804FF    movzx      eax,bx
 00580502    mov        dword ptr [edi],eax
 00580504    mov        eax,ebx
 00580506    call       HiWord
 0058050B    movzx      eax,ax
 0058050E    mov        dword ptr [edi+4],eax
 00580511    cmp        dword ptr [edi+4],0
>00580515    jne        0058051C
 00580517    mov        eax,dword ptr [edi]
 00580519    mov        dword ptr [edi+4],eax
 0058051C    push       0
 0058051E    push       0
 00580520    push       5
 00580522    mov        eax,dword ptr [esi+2C]; TRPPrinterDevice.?f2C:PChar
 00580525    push       eax
 00580526    mov        eax,dword ptr [esi+24]; TRPPrinterDevice.?f24:PChar
 00580529    push       eax
 0058052A    call       winspool.DeviceCapabilitiesA
 0058052F    mov        ebx,eax
 00580531    cmp        ebx,0FFFFFFFF
>00580534    jne        00580546
 00580536    mov        dword ptr [ebp],7FFF
 0058053D    mov        dword ptr [ebp+4],7FFF
>00580544    jmp        00580559
 00580546    movzx      eax,bx
 00580549    mov        dword ptr [ebp],eax
 0058054C    mov        eax,ebx
 0058054E    call       HiWord
 00580553    movzx      eax,ax
 00580556    mov        dword ptr [ebp+4],eax
 00580559    cmp        dword ptr [ebp+4],0
>0058055D    jne        00580565
 0058055F    mov        eax,dword ptr [ebp]
 00580562    mov        dword ptr [ebp+4],eax
 00580565    pop        ebp
 00580566    pop        edi
 00580567    pop        esi
 00580568    pop        ebx
 00580569    ret
*}
//end;

//0058056C
//function sub_0058056C(?:?; ?:?; ?:?):?;
//begin
{*
 0058056C    push       ebp
 0058056D    mov        ebp,esp
 0058056F    add        esp,0FFFFFFEC
 00580572    push       ebx
 00580573    push       esi
 00580574    push       edi
 00580575    mov        esi,ecx
 00580577    mov        edi,edx
 00580579    mov        ebx,eax
 0058057B    mov        eax,ebx
 0058057D    call       0057E650
 00580582    mov        byte ptr [ebp-1],0
 00580586    mov        eax,ebx
 00580588    call       0057EF80
 0058058D    test       eax,eax
>0058058F    je         0058067F
 00580595    test       esi,esi
>00580597    je         0058062C
 0058059D    cmp        dword ptr [ebp+8],0
>005805A1    je         0058062C
 005805A7    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 005805AA    cmp        word ptr [eax+2E],100
>005805B0    jne        005805C7
 005805B2    movsx      edx,word ptr [eax+32]
 005805B6    cmp        esi,edx
>005805B8    jne        005805C7
 005805BA    movsx      eax,word ptr [eax+30]
 005805BE    cmp        eax,dword ptr [ebp+8]
>005805C1    je         0058067F
 005805C7    lea        ecx,[ebp-11]
 005805CA    lea        edx,[ebp-9]
 005805CD    mov        eax,ebx
 005805CF    mov        edi,dword ptr [eax]
 005805D1    call       dword ptr [edi+74]; TRPPrinterDevice.sub_005804CC
 005805D4    cmp        esi,dword ptr [ebp-9]
>005805D7    jl         0058067F
 005805DD    cmp        esi,dword ptr [ebp-11]
>005805E0    jg         0058067F
 005805E6    mov        eax,dword ptr [ebp+8]
 005805E9    cmp        eax,dword ptr [ebp-5]
>005805EC    jl         0058067F
 005805F2    mov        eax,dword ptr [ebp+8]
 005805F5    cmp        eax,dword ptr [ebp-0D]
>005805F8    jg         0058067F
 005805FE    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580601    mov        word ptr [eax+2E],100
 00580607    mov        word ptr [eax+32],si
 0058060B    mov        dx,word ptr [ebp+8]
 0058060F    mov        word ptr [eax+30],dx
 00580613    mov        edx,dword ptr [eax+28]
 00580616    or         edx,2
 00580619    or         edx,8
 0058061C    or         edx,4
 0058061F    mov        dword ptr [eax+28],edx
 00580622    mov        byte ptr [ebx+65],1; TRPPrinterDevice.?f65:byte
 00580626    mov        byte ptr [ebp-1],1
>0058062A    jmp        0058067F
 0058062C    mov        edx,edi
 0058062E    mov        eax,ebx
 00580630    mov        ecx,dword ptr [eax]
 00580632    call       dword ptr [ecx+80]; TRPPrinterDevice.sub_0057FCC0
 00580638    test       al,al
>0058063A    je         0058067F
 0058063C    mov        esi,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 0058063F    movsx      eax,word ptr [esi+2E]
 00580643    cmp        edi,eax
>00580645    jne        00580655
 00580647    cmp        word ptr [esi+32],0
>0058064C    jne        00580655
 0058064E    cmp        word ptr [esi+30],0
>00580653    je         0058067F
 00580655    mov        eax,dword ptr [ebx+3C]; TRPPrinterDevice.?f3C:Pointer
 00580658    mov        word ptr [eax+2E],di
 0058065C    mov        word ptr [eax+32],0
 00580662    mov        word ptr [eax+30],0
 00580668    mov        edx,dword ptr [eax+28]
 0058066B    or         edx,2
 0058066E    or         edx,8
 00580671    or         edx,4
 00580674    mov        dword ptr [eax+28],edx
 00580677    mov        byte ptr [ebx+65],1; TRPPrinterDevice.?f65:byte
 0058067B    mov        byte ptr [ebp-1],1
 0058067F    mov        al,byte ptr [ebp-1]
 00580682    pop        edi
 00580683    pop        esi
 00580684    pop        ebx
 00580685    mov        esp,ebp
 00580687    pop        ebp
 00580688    ret        4
*}
//end;

//0058068C
//function sub_0058068C(?:TRPPrinterDevice):?;
//begin
{*
 0058068C    push       ebx
 0058068D    mov        ebx,eax
 0058068F    cmp        byte ptr [ebx+92],0; TRPPrinterDevice.?f92:byte
>00580696    jne        005806B7
 00580698    mov        eax,ebx
 0058069A    mov        edx,dword ptr [eax]
 0058069C    call       dword ptr [edx+1C]; TRPPrinterDevice.sub_0057FE10
 0058069F    mov        edx,dword ptr [eax]
 005806A1    call       dword ptr [edx+14]
 005806A4    test       eax,eax
>005806A6    je         005806B7
 005806A8    mov        eax,ebx
 005806AA    call       0057EC60
 005806AF    test       eax,eax
>005806B1    jl         005806B7
 005806B3    xor        eax,eax
>005806B5    jmp        005806B9
 005806B7    mov        al,1
 005806B9    mov        byte ptr [ebx+92],al; TRPPrinterDevice.?f92:byte
 005806BF    pop        ebx
 005806C0    ret
*}
//end;

//005806C4
//function sub_005806C4:?;
//begin
{*
 005806C4    push       ebx
 005806C5    mov        ebx,eax
 005806C7    mov        dl,1
 005806C9    mov        eax,ebx
 005806CB    call       0057EDB4
 005806D0    push       58
 005806D2    mov        eax,ebx
 005806D4    call       0057EF4C
 005806D9    push       eax
 005806DA    call       gdi32.GetDeviceCaps
 005806DF    test       eax,eax
>005806E1    jne        005806E8
 005806E3    mov        eax,64
 005806E8    pop        ebx
 005806E9    ret
*}
//end;

//005806EC
//function sub_005806EC:?;
//begin
{*
 005806EC    push       ebx
 005806ED    mov        ebx,eax
 005806EF    mov        dl,1
 005806F1    mov        eax,ebx
 005806F3    call       0057EDB4
 005806F8    push       5A
 005806FA    mov        eax,ebx
 005806FC    call       0057EF4C
 00580701    push       eax
 00580702    call       gdi32.GetDeviceCaps
 00580707    test       eax,eax
>00580709    jne        00580710
 0058070B    mov        eax,64
 00580710    pop        ebx
 00580711    ret
*}
//end;

//00580714
//procedure sub_00580714(?:?);
//begin
{*
 00580714    push       ebx
 00580715    push       esi
 00580716    push       edi
 00580717    add        esp,0FFFFFFF0
 0058071A    mov        esi,edx
 0058071C    mov        ebx,eax
 0058071E    mov        dl,1
 00580720    mov        eax,ebx
 00580722    call       0057EDB4
 00580727    push       70
 00580729    mov        eax,ebx
 0058072B    call       0057EF4C
 00580730    push       eax
 00580731    call       gdi32.GetDeviceCaps
 00580736    mov        dword ptr [esp],eax
 00580739    push       71
 0058073B    mov        eax,ebx
 0058073D    call       0057EF4C
 00580742    push       eax
 00580743    call       gdi32.GetDeviceCaps
 00580748    mov        edi,eax
 0058074A    mov        dword ptr [esp+4],edi
 0058074E    push       6E
 00580750    mov        eax,ebx
 00580752    call       0057EF4C
 00580757    push       eax
 00580758    call       gdi32.GetDeviceCaps
 0058075D    mov        dword ptr [esp+8],eax
 00580761    push       6F
 00580763    mov        eax,ebx
 00580765    call       0057EF4C
 0058076A    push       eax
 0058076B    call       gdi32.GetDeviceCaps
 00580770    mov        dword ptr [esp+0C],eax
 00580774    mov        eax,dword ptr [esp]
 00580777    mov        dword ptr [esi],eax
 00580779    push       8
 0058077B    mov        eax,ebx
 0058077D    call       0057EF4C
 00580782    push       eax
 00580783    call       gdi32.GetDeviceCaps
 00580788    add        eax,dword ptr [esp]
 0058078B    mov        edx,dword ptr [esp+8]
 0058078F    sub        edx,eax
 00580791    mov        dword ptr [esi+8],edx
 00580794    mov        dword ptr [esi+4],edi
 00580797    push       0A
 00580799    mov        eax,ebx
 0058079B    call       0057EF4C
 005807A0    push       eax
 005807A1    call       gdi32.GetDeviceCaps
 005807A6    add        eax,dword ptr [esp+4]
 005807AA    mov        edx,dword ptr [esp+0C]
 005807AE    sub        edx,eax
 005807B0    mov        dword ptr [esi+0C],edx
 005807B3    add        esp,10
 005807B6    pop        edi
 005807B7    pop        esi
 005807B8    pop        ebx
 005807B9    ret
*}
//end;

//005807BC
//function sub_005807BC:?;
//begin
{*
 005807BC    cmp        dword ptr ds:[61EFCC],0; gvar_0061EFCC:TRPPrinterDevice
>005807C3    jne        005807D6
 005807C5    mov        dl,1
 005807C7    mov        eax,[0057DD7C]; TRPPrinterDevice
 005807CC    call       TRPPrinterDevice.Create; TRPPrinterDevice.Create
 005807D1    mov        [0061EFCC],eax; gvar_0061EFCC:TRPPrinterDevice
 005807D6    mov        eax,[0061EFCC]; gvar_0061EFCC:TRPPrinterDevice
 005807DB    ret
*}
//end;

//005807DC
//function sub_005807DC:?;
//begin
{*
 005807DC    call       005807BC
 005807E1    mov        eax,[0061EFCC]; gvar_0061EFCC:TRPPrinterDevice
 005807E6    mov        edx,dword ptr ds:[57DD7C]; TRPPrinterDevice
 005807EC    call       @IsClass
 005807F1    test       al,al
>005807F3    je         005807FB
 005807F5    mov        eax,[0061EFCC]; gvar_0061EFCC:TRPPrinterDevice
 005807FA    ret
 005807FB    xor        eax,eax
 005807FD    ret
*}
//end;

Initialization
//00580844
{*
 00580844    sub        dword ptr ds:[61EFC8],1
>0058084B    jae        00580854
 0058084D    xor        eax,eax
 0058084F    mov        [0061EFCC],eax; gvar_0061EFCC:TRPPrinterDevice
 00580854    ret
*}
Finalization
//00580800
{*
 00580800    push       ebp
 00580801    mov        ebp,esp
 00580803    xor        eax,eax
 00580805    push       ebp
 00580806    push       58083A
 0058080B    push       dword ptr fs:[eax]
 0058080E    mov        dword ptr fs:[eax],esp
 00580811    inc        dword ptr ds:[61EFC8]
>00580817    jne        0058082C
 00580819    cmp        dword ptr ds:[61EFCC],0; gvar_0061EFCC:TRPPrinterDevice
>00580820    je         0058082C
 00580822    mov        eax,61EFCC; gvar_0061EFCC:TRPPrinterDevice
 00580827    call       FreeAndNil
 0058082C    xor        eax,eax
 0058082E    pop        edx
 0058082F    pop        ecx
 00580830    pop        ecx
 00580831    mov        dword ptr fs:[eax],edx
 00580834    push       580841
 00580839    ret
<0058083A    jmp        @HandleFinally
<0058083F    jmp        00580839
 00580841    pop        ebp
 00580842    ret
*}
end.