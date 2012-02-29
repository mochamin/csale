{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit115;

interface

uses
  Classes, Windows, Graphics;

type
  TBaseID = class(TObject)
  public
    f4:dword;//f4
    f8:String;//f8
    //fC:?;//fC
    f10:dword;//f10
    //procedure sub_005C6068(?:?); virtual;
    //constructor sub_005C5F40(?:?); virtual;
    //procedure sub_005C6000(?:?; ?:?); virtual;
  end;
  TTypeID = class(TBaseID)
  end;
  TVarID = class(TBaseID)
  public
    //f14:?;//f14
    f16:word;//f16
    f18:dword;//f18
    //procedure sub_005C60F8(?:?); virtual;
    //constructor sub_005C606C(?:?); virtual;
    //procedure sub_005C60CC(?:?; ?:?); virtual;
  end;
  TConstID = class(TBaseID)
  public
    f14:Pointer;//f14
    f18:dword;//f18
    destructor Destroy; virtual;
    //constructor sub_005C6110(?:?); virtual;
    //procedure sub_005C617C(?:?; ?:?); virtual;
  end;
  TFuncID = class(TBaseID)
  public
    f18:dword;//f18
    f1C:dword;//f1C
    //constructor sub_005C61D8(?:?); virtual;
    //procedure sub_005C6230(?:?; ?:?); virtual;
  end;
  TMethodID = class(TFuncID)
  public
    //constructor sub_005C6258(?:?); virtual;
    procedure sub_005C6298(); virtual;
  end;
  TOpID = class(TBaseID)
  public
    //f14:?;//f14
    //constructor sub_005C62A0(?:?); virtual;
    //procedure sub_005C62F4(?:?; ?:?); virtual;
  end;
  TIDManager = class(TObject)
  public
    f4:TList;//f4
    f8:dword;//f8
    fC:dword;//fC
    destructor Destroy; virtual;
    //constructor Create(?:TIDManager; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//005C5F40
//constructor sub_005C5F40(?:?);
//begin
{*
 005C5F40    push       ebp
 005C5F41    mov        ebp,esp
 005C5F43    add        esp,0FFFFFFF0
 005C5F46    push       ebx
 005C5F47    push       esi
 005C5F48    xor        ebx,ebx
 005C5F4A    mov        dword ptr [ebp-10],ebx
 005C5F4D    test       dl,dl
>005C5F4F    je         005C5F59
 005C5F51    add        esp,0FFFFFFF0
 005C5F54    call       @ClassCreate
 005C5F59    mov        dword ptr [ebp-8],ecx
 005C5F5C    mov        byte ptr [ebp-1],dl
 005C5F5F    mov        ebx,eax
 005C5F61    mov        esi,dword ptr [ebp+8]
 005C5F64    xor        eax,eax
 005C5F66    push       ebp
 005C5F67    push       5C5FD7
 005C5F6C    push       dword ptr fs:[eax]
 005C5F6F    mov        dword ptr fs:[eax],esp
 005C5F72    xor        edx,edx
 005C5F74    mov        eax,ebx
 005C5F76    call       TObject.Create
 005C5F7B    lea        edx,[ebx+0C]; TTypeID.?fC:?
 005C5F7E    mov        ecx,1
 005C5F83    mov        eax,esi
 005C5F85    call       005A62A0
 005C5F8A    lea        edx,[ebp-10]
 005C5F8D    mov        eax,esi
 005C5F8F    call       005A61AC
 005C5F94    mov        edx,dword ptr [ebp-10]
 005C5F97    lea        eax,[ebx+8]; TTypeID.?f8:String
 005C5F9A    call       @LStrAsg
 005C5F9F    mov        eax,esi
 005C5FA1    call       005A61E0
 005C5FA6    mov        dword ptr [ebp-0C],eax
 005C5FA9    mov        eax,esi
 005C5FAB    call       005A61E0
 005C5FB0    mov        esi,eax
 005C5FB2    mov        ecx,esi
 005C5FB4    mov        edx,dword ptr [ebp-0C]
 005C5FB7    mov        eax,dword ptr [ebp-8]
 005C5FBA    mov        esi,dword ptr [eax]
 005C5FBC    call       dword ptr [esi]
 005C5FBE    mov        dword ptr [ebx+4],eax; TTypeID.?f4:dword
 005C5FC1    xor        eax,eax
 005C5FC3    pop        edx
 005C5FC4    pop        ecx
 005C5FC5    pop        ecx
 005C5FC6    mov        dword ptr fs:[eax],edx
 005C5FC9    push       5C5FDE
 005C5FCE    lea        eax,[ebp-10]
 005C5FD1    call       @LStrClr
 005C5FD6    ret
<005C5FD7    jmp        @HandleFinally
<005C5FDC    jmp        005C5FCE
 005C5FDE    mov        eax,ebx
 005C5FE0    cmp        byte ptr [ebp-1],0
>005C5FE4    je         005C5FF5
 005C5FE6    call       @AfterConstruction
 005C5FEB    pop        dword ptr fs:[0]
 005C5FF2    add        esp,0C
 005C5FF5    mov        eax,ebx
 005C5FF7    pop        esi
 005C5FF8    pop        ebx
 005C5FF9    mov        esp,ebp
 005C5FFB    pop        ebp
 005C5FFC    ret        4
*}
//end;

//005C6000
//procedure sub_005C6000(?:?; ?:?);
//begin
{*
 005C6000    push       ebx
 005C6001    push       esi
 005C6002    push       edi
 005C6003    add        esp,0FFFFFFF8
 005C6006    mov        esi,ecx
 005C6008    mov        edi,edx
 005C600A    mov        ebx,eax
 005C600C    lea        edx,[ebx+0C]; TBaseID.?fC:?
 005C600F    mov        ecx,1
 005C6014    mov        eax,esi
 005C6016    call       005A618C
 005C601B    mov        edx,dword ptr [ebx+8]; TBaseID.?f8:String
 005C601E    mov        eax,esi
 005C6020    call       005A6054
 005C6025    mov        eax,dword ptr [ebx+4]; TBaseID.?f4:dword
 005C6028    test       eax,eax
>005C602A    jne        005C6039
 005C602C    xor        eax,eax
 005C602E    mov        dword ptr [esp],eax
 005C6031    xor        eax,eax
 005C6033    mov        dword ptr [esp+4],eax
>005C6037    jmp        005C604B
 005C6039    lea        edx,[esp+4]
 005C603D    push       edx
 005C603E    lea        ecx,[esp+4]
 005C6042    mov        edx,eax
 005C6044    mov        eax,edi
 005C6046    mov        ebx,dword ptr [eax]
 005C6048    call       dword ptr [ebx+4]
 005C604B    mov        edx,dword ptr [esp]
 005C604E    mov        eax,esi
 005C6050    call       005A60C8
 005C6055    mov        edx,dword ptr [esp+4]
 005C6059    mov        eax,esi
 005C605B    call       005A60C8
 005C6060    pop        ecx
 005C6061    pop        edx
 005C6062    pop        edi
 005C6063    pop        esi
 005C6064    pop        ebx
 005C6065    ret
*}
//end;

//005C6068
//procedure sub_005C6068(?:?);
//begin
{*
 005C6068    mov        dword ptr [eax+10],edx; TBaseID.?f10:dword
 005C606B    ret
*}
//end;

//005C606C
//constructor sub_005C606C(?:?);
//begin
{*
 005C606C    push       ebp
 005C606D    mov        ebp,esp
 005C606F    push       ecx
 005C6070    push       ebx
 005C6071    push       esi
 005C6072    test       dl,dl
>005C6074    je         005C607E
 005C6076    add        esp,0FFFFFFF0
 005C6079    call       @ClassCreate
 005C607E    mov        byte ptr [ebp-1],dl
 005C6081    mov        ebx,eax
 005C6083    mov        esi,dword ptr [ebp+8]
 005C6086    push       esi
 005C6087    xor        edx,edx
 005C6089    mov        eax,ebx
 005C608B    call       005C5F40
 005C6090    mov        eax,esi
 005C6092    call       005A61E0
 005C6097    mov        dword ptr [ebx+18],eax; TVarID.?f18:dword
 005C609A    lea        edx,[ebx+14]; TVarID.?f14:?
 005C609D    mov        ecx,1
 005C60A2    mov        eax,esi
 005C60A4    call       005A62A0
 005C60A9    mov        eax,ebx
 005C60AB    cmp        byte ptr [ebp-1],0
>005C60AF    je         005C60C0
 005C60B1    call       @AfterConstruction
 005C60B6    pop        dword ptr fs:[0]
 005C60BD    add        esp,0C
 005C60C0    mov        eax,ebx
 005C60C2    pop        esi
 005C60C3    pop        ebx
 005C60C4    pop        ecx
 005C60C5    pop        ebp
 005C60C6    ret        4
*}
//end;

//005C60CC
//procedure sub_005C60CC(?:?; ?:?);
//begin
{*
 005C60CC    push       ebx
 005C60CD    push       esi
 005C60CE    mov        esi,ecx
 005C60D0    mov        ebx,eax
 005C60D2    mov        ecx,esi
 005C60D4    mov        eax,ebx
 005C60D6    call       005C6000
 005C60DB    mov        edx,dword ptr [ebx+18]; TVarID.?f18:dword
 005C60DE    mov        eax,esi
 005C60E0    call       005A60C8
 005C60E5    lea        edx,[ebx+14]; TVarID.?f14:?
 005C60E8    mov        ecx,1
 005C60ED    mov        eax,esi
 005C60EF    call       005A618C
 005C60F4    pop        esi
 005C60F5    pop        ebx
 005C60F6    ret
*}
//end;

//005C60F8
//procedure sub_005C60F8(?:?);
//begin
{*
 005C60F8    push       ebx
 005C60F9    push       esi
 005C60FA    mov        esi,edx
 005C60FC    mov        ebx,eax
 005C60FE    mov        edx,esi
 005C6100    mov        eax,ebx
 005C6102    call       005C6068
 005C6107    mov        word ptr [ebx+16],si; TVarID.?f16:word
 005C610B    pop        esi
 005C610C    pop        ebx
 005C610D    ret
*}
//end;

//005C6110
//constructor sub_005C6110(?:?);
//begin
{*
 005C6110    push       ebp
 005C6111    mov        ebp,esp
 005C6113    push       ecx
 005C6114    push       ebx
 005C6115    push       esi
 005C6116    push       edi
 005C6117    test       dl,dl
>005C6119    je         005C6123
 005C611B    add        esp,0FFFFFFF0
 005C611E    call       @ClassCreate
 005C6123    mov        byte ptr [ebp-1],dl
 005C6126    mov        ebx,eax
 005C6128    mov        esi,dword ptr [ebp+8]
 005C612B    push       esi
 005C612C    xor        edx,edx
 005C612E    mov        eax,ebx
 005C6130    call       005C5F40
 005C6135    mov        eax,esi
 005C6137    call       005A61E0
 005C613C    mov        edi,eax
 005C613E    mov        dword ptr [ebx+18],edi; TConstID.?f18:dword
 005C6141    mov        eax,edi
 005C6143    call       @GetMem
 005C6148    mov        dword ptr [ebx+14],eax; TConstID.?f14:Pointer
 005C614B    mov        ecx,dword ptr [ebx+18]; TConstID.?f18:dword
 005C614E    mov        edx,dword ptr [ebx+14]; TConstID.?f14:Pointer
 005C6151    mov        eax,esi
 005C6153    call       005A62A0
 005C6158    mov        eax,ebx
 005C615A    cmp        byte ptr [ebp-1],0
>005C615E    je         005C616F
 005C6160    call       @AfterConstruction
 005C6165    pop        dword ptr fs:[0]
 005C616C    add        esp,0C
 005C616F    mov        eax,ebx
 005C6171    pop        edi
 005C6172    pop        esi
 005C6173    pop        ebx
 005C6174    pop        ecx
 005C6175    pop        ebp
 005C6176    ret        4
*}
//end;

//005C617C
//procedure sub_005C617C(?:?; ?:?);
//begin
{*
 005C617C    push       ebx
 005C617D    push       esi
 005C617E    mov        esi,ecx
 005C6180    mov        ebx,eax
 005C6182    mov        ecx,esi
 005C6184    mov        eax,ebx
 005C6186    call       005C6000
 005C618B    mov        edx,dword ptr [ebx+18]; TConstID.?f18:dword
 005C618E    mov        eax,esi
 005C6190    call       005A60C8
 005C6195    mov        edx,dword ptr [ebx+14]; TConstID.?f14:Pointer
 005C6198    mov        ecx,dword ptr [ebx+18]; TConstID.?f18:dword
 005C619B    mov        eax,esi
 005C619D    call       005A618C
 005C61A2    pop        esi
 005C61A3    pop        ebx
 005C61A4    ret
*}
//end;

//005C61A8
destructor TConstID.Destroy;
begin
{*
 005C61A8    push       ebx
 005C61A9    push       esi
 005C61AA    call       @BeforeDestruction
 005C61AF    mov        ebx,edx
 005C61B1    mov        esi,eax
 005C61B3    mov        edx,ebx
 005C61B5    and        dl,0FC
 005C61B8    mov        eax,esi
 005C61BA    call       TObject.Destroy
 005C61BF    mov        edx,dword ptr [esi+18]; TConstID.?f18:dword
 005C61C2    mov        eax,dword ptr [esi+14]; TConstID.?f14:Pointer
 005C61C5    call       @FreeMem
 005C61CA    test       bl,bl
>005C61CC    jle        005C61D5
 005C61CE    mov        eax,esi
 005C61D0    call       @ClassDestroy
 005C61D5    pop        esi
 005C61D6    pop        ebx
 005C61D7    ret
*}
end;

//005C61D8
//constructor sub_005C61D8(?:?);
//begin
{*
 005C61D8    push       ebp
 005C61D9    mov        ebp,esp
 005C61DB    push       ecx
 005C61DC    push       ebx
 005C61DD    push       esi
 005C61DE    test       dl,dl
>005C61E0    je         005C61EA
 005C61E2    add        esp,0FFFFFFF0
 005C61E5    call       @ClassCreate
 005C61EA    mov        byte ptr [ebp-1],dl
 005C61ED    mov        ebx,eax
 005C61EF    mov        esi,dword ptr [ebp+8]
 005C61F2    push       esi
 005C61F3    xor        edx,edx
 005C61F5    mov        eax,ebx
 005C61F7    call       005C5F40
 005C61FC    mov        eax,esi
 005C61FE    call       005A61E0
 005C6203    mov        dword ptr [ebx+1C],eax; TFuncID.?f1C:dword
 005C6206    mov        eax,esi
 005C6208    call       005A61E0
 005C620D    mov        dword ptr [ebx+18],eax; TFuncID.?f18:dword
 005C6210    mov        eax,ebx
 005C6212    cmp        byte ptr [ebp-1],0
>005C6216    je         005C6227
 005C6218    call       @AfterConstruction
 005C621D    pop        dword ptr fs:[0]
 005C6224    add        esp,0C
 005C6227    mov        eax,ebx
 005C6229    pop        esi
 005C622A    pop        ebx
 005C622B    pop        ecx
 005C622C    pop        ebp
 005C622D    ret        4
*}
//end;

//005C6230
//procedure sub_005C6230(?:?; ?:?);
//begin
{*
 005C6230    push       ebx
 005C6231    push       esi
 005C6232    mov        esi,ecx
 005C6234    mov        ebx,eax
 005C6236    mov        ecx,esi
 005C6238    mov        eax,ebx
 005C623A    call       005C6000
 005C623F    mov        edx,dword ptr [ebx+1C]; TFuncID.?f1C:dword
 005C6242    mov        eax,esi
 005C6244    call       005A60C8
 005C6249    mov        edx,dword ptr [ebx+18]; TFuncID.?f18:dword
 005C624C    mov        eax,esi
 005C624E    call       005A60C8
 005C6253    pop        esi
 005C6254    pop        ebx
 005C6255    ret
*}
//end;

//005C6258
//constructor sub_005C6258(?:?);
//begin
{*
 005C6258    push       ebp
 005C6259    mov        ebp,esp
 005C625B    push       ebx
 005C625C    push       esi
 005C625D    test       dl,dl
>005C625F    je         005C6269
 005C6261    add        esp,0FFFFFFF0
 005C6264    call       @ClassCreate
 005C6269    mov        ebx,edx
 005C626B    mov        esi,eax
 005C626D    mov        eax,dword ptr [ebp+8]
 005C6270    push       eax
 005C6271    xor        edx,edx
 005C6273    mov        eax,esi
 005C6275    call       005C61D8
 005C627A    mov        eax,esi
 005C627C    test       bl,bl
>005C627E    je         005C628F
 005C6280    call       @AfterConstruction
 005C6285    pop        dword ptr fs:[0]
 005C628C    add        esp,0C
 005C628F    mov        eax,esi
 005C6291    pop        esi
 005C6292    pop        ebx
 005C6293    pop        ebp
 005C6294    ret        4
*}
//end;

//005C6298
procedure sub_005C6298();
begin
{*
 005C6298    call       005C6230
 005C629D    ret
*}
end;

//005C62A0
//constructor sub_005C62A0(?:?);
//begin
{*
 005C62A0    push       ebp
 005C62A1    mov        ebp,esp
 005C62A3    push       ecx
 005C62A4    push       ebx
 005C62A5    push       esi
 005C62A6    test       dl,dl
>005C62A8    je         005C62B2
 005C62AA    add        esp,0FFFFFFF0
 005C62AD    call       @ClassCreate
 005C62B2    mov        byte ptr [ebp-1],dl
 005C62B5    mov        ebx,eax
 005C62B7    mov        esi,dword ptr [ebp+8]
 005C62BA    push       esi
 005C62BB    xor        edx,edx
 005C62BD    mov        eax,ebx
 005C62BF    call       005C5F40
 005C62C4    lea        edx,[ebx+14]; TOpID.?f14:?
 005C62C7    mov        ecx,1
 005C62CC    mov        eax,esi
 005C62CE    call       005A62A0
 005C62D3    mov        eax,ebx
 005C62D5    cmp        byte ptr [ebp-1],0
>005C62D9    je         005C62EA
 005C62DB    call       @AfterConstruction
 005C62E0    pop        dword ptr fs:[0]
 005C62E7    add        esp,0C
 005C62EA    mov        eax,ebx
 005C62EC    pop        esi
 005C62ED    pop        ebx
 005C62EE    pop        ecx
 005C62EF    pop        ebp
 005C62F0    ret        4
*}
//end;

//005C62F4
//procedure sub_005C62F4(?:?; ?:?);
//begin
{*
 005C62F4    push       ebx
 005C62F5    push       esi
 005C62F6    mov        esi,ecx
 005C62F8    mov        ebx,eax
 005C62FA    mov        ecx,esi
 005C62FC    mov        eax,ebx
 005C62FE    call       005C6000
 005C6303    lea        edx,[ebx+14]; TOpID.?f14:?
 005C6306    mov        ecx,1
 005C630B    mov        eax,esi
 005C630D    call       005A618C
 005C6312    pop        esi
 005C6313    pop        ebx
 005C6314    ret
*}
//end;

//005C6318
//constructor TIDManager.Create(?:TIDManager; _Dv__:Boolean);
//begin
{*
 005C6318    push       ebx
 005C6319    push       esi
 005C631A    push       edi
 005C631B    test       dl,dl
>005C631D    je         005C6327
 005C631F    add        esp,0FFFFFFF0
 005C6322    call       @ClassCreate
 005C6327    mov        esi,ecx
 005C6329    mov        ebx,edx
 005C632B    mov        edi,eax
 005C632D    xor        edx,edx
 005C632F    mov        eax,edi
 005C6331    call       TObject.Create
 005C6336    mov        dl,1
 005C6338    mov        eax,[0041C260]; TList
 005C633D    call       TObject.Create; TList.Create
 005C6342    mov        dword ptr [edi+4],eax; TIDManager.?f4:TList
 005C6345    mov        dword ptr [edi+0C],esi; TIDManager.?fC:dword
 005C6348    mov        eax,edi
 005C634A    test       bl,bl
>005C634C    je         005C635D
 005C634E    call       @AfterConstruction
 005C6353    pop        dword ptr fs:[0]
 005C635A    add        esp,0C
 005C635D    mov        eax,edi
 005C635F    pop        edi
 005C6360    pop        esi
 005C6361    pop        ebx
 005C6362    ret
*}
//end;

//005C6364
destructor TIDManager.Destroy;
begin
{*
 005C6364    push       ebx
 005C6365    push       esi
 005C6366    call       @BeforeDestruction
 005C636B    mov        ebx,edx
 005C636D    mov        esi,eax
 005C636F    mov        eax,esi
 005C6371    call       005C6438
 005C6376    lea        eax,[esi+4]; TIDManager.?f4:TList
 005C6379    call       FreeAndNil
 005C637E    mov        edx,ebx
 005C6380    and        dl,0FC
 005C6383    mov        eax,esi
 005C6385    call       TObject.Destroy
 005C638A    test       bl,bl
>005C638C    jle        005C6395
 005C638E    mov        eax,esi
 005C6390    call       @ClassDestroy
 005C6395    pop        esi
 005C6396    pop        ebx
 005C6397    ret
*}
end;

//005C6398
//procedure sub_005C6398(?:TIDManager; ?:TStreamHelper);
//begin
{*
 005C6398    push       ebx
 005C6399    push       esi
 005C639A    push       edi
 005C639B    push       ecx
 005C639C    mov        ebx,edx
 005C639E    mov        edi,eax
 005C63A0    mov        eax,ebx
 005C63A2    call       005A61E0
 005C63A7    mov        esi,eax
 005C63A9    test       esi,esi
>005C63AB    jle        005C63EB
 005C63AD    mov        eax,ebx
 005C63AF    call       005A601C
 005C63B4    mov        edx,esp
 005C63B6    mov        ecx,1
 005C63BB    mov        eax,ebx
 005C63BD    call       005A62A0
 005C63C2    mov        eax,ebx
 005C63C4    call       005A602C
 005C63C9    push       ebx
 005C63CA    mov        ecx,dword ptr [edi+0C]; TIDManager.?fC:dword
 005C63CD    xor        eax,eax
 005C63CF    mov        al,byte ptr [esp+4]
 005C63D3    mov        eax,dword ptr [eax*4+6172BC]
 005C63DA    mov        dl,1
 005C63DC    call       dword ptr [eax+4]
 005C63DF    mov        edx,eax
 005C63E1    mov        eax,edi
 005C63E3    call       005C6464
 005C63E8    dec        esi
<005C63E9    jne        005C63AD
 005C63EB    pop        edx
 005C63EC    pop        edi
 005C63ED    pop        esi
 005C63EE    pop        ebx
 005C63EF    ret
*}
//end;

//005C63F0
//procedure sub_005C63F0(?:TIDManager; ?:TStreamHelper);
//begin
{*
 005C63F0    push       ebx
 005C63F1    push       esi
 005C63F2    push       edi
 005C63F3    push       ebp
 005C63F4    push       ecx
 005C63F5    mov        dword ptr [esp],edx
 005C63F8    mov        ebx,eax
 005C63FA    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C63FD    mov        edx,dword ptr [eax+8]; TList.FCount:Integer
 005C6400    mov        eax,dword ptr [esp]
 005C6403    call       005A60C8
 005C6408    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C640B    mov        esi,dword ptr [eax+8]; TList.FCount:Integer
 005C640E    dec        esi
 005C640F    test       esi,esi
>005C6411    jl         005C642F
 005C6413    inc        esi
 005C6414    xor        edi,edi
 005C6416    mov        edx,edi
 005C6418    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C641B    call       TList.Get
 005C6420    mov        ecx,dword ptr [esp]
 005C6423    mov        edx,dword ptr [ebx+0C]; TIDManager.?fC:dword
 005C6426    mov        ebp,dword ptr [eax]
 005C6428    call       dword ptr [ebp+8]
 005C642B    inc        edi
 005C642C    dec        esi
<005C642D    jne        005C6416
 005C642F    pop        edx
 005C6430    pop        ebp
 005C6431    pop        edi
 005C6432    pop        esi
 005C6433    pop        ebx
 005C6434    ret
*}
//end;

//005C6438
//procedure sub_005C6438(?:TIDManager);
//begin
{*
 005C6438    push       ebx
 005C6439    push       esi
 005C643A    mov        ebx,dword ptr [eax+4]; TIDManager.?f4:TList
>005C643D    jmp        005C6459
 005C643F    mov        edx,esi
 005C6441    dec        edx
 005C6442    mov        eax,ebx
 005C6444    call       TList.Get
 005C6449    call       TObject.Free
 005C644E    mov        edx,dword ptr [ebx+8]; TList.FCount:Integer
 005C6451    dec        edx
 005C6452    mov        eax,ebx
 005C6454    call       TList.Delete
 005C6459    mov        esi,dword ptr [ebx+8]; TList.FCount:Integer
 005C645C    test       esi,esi
<005C645E    jg         005C643F
 005C6460    pop        esi
 005C6461    pop        ebx
 005C6462    ret
*}
//end;

//005C6464
//function sub_005C6464(?:TIDManager; ?:?):?;
//begin
{*
 005C6464    push       ebx
 005C6465    push       esi
 005C6466    push       edi
 005C6467    mov        esi,edx
 005C6469    mov        ebx,eax
 005C646B    mov        edx,dword ptr [esi+8]
 005C646E    mov        eax,ebx
 005C6470    call       005C6494
 005C6475    test       eax,eax
>005C6477    je         005C647D
 005C6479    xor        edi,edi
>005C647B    jmp        005C648C
 005C647D    mov        edi,esi
 005C647F    mov        ecx,esi
 005C6481    mov        edx,dword ptr [ebx+8]; TIDManager.?f8:dword
 005C6484    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C6487    call       TList.Insert
 005C648C    mov        eax,edi
 005C648E    pop        edi
 005C648F    pop        esi
 005C6490    pop        ebx
 005C6491    ret
*}
//end;

//005C6494
//function sub_005C6494(?:TIDManager; ?:AnsiString):?;
//begin
{*
 005C6494    push       ebp
 005C6495    mov        ebp,esp
 005C6497    add        esp,0FFFFFFF8
 005C649A    push       ebx
 005C649B    push       esi
 005C649C    push       edi
 005C649D    mov        dword ptr [ebp-4],edx
 005C64A0    mov        ebx,eax
 005C64A2    mov        eax,dword ptr [ebp-4]
 005C64A5    call       @LStrAddRef
 005C64AA    xor        eax,eax
 005C64AC    push       ebp
 005C64AD    push       5C6528
 005C64B2    push       dword ptr fs:[eax]
 005C64B5    mov        dword ptr fs:[eax],esp
 005C64B8    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C64BB    xor        esi,esi
 005C64BD    mov        edi,dword ptr [eax+8]; TList.FCount:Integer
 005C64C0    dec        edi
 005C64C1    xor        eax,eax
 005C64C3    cmp        edi,esi
>005C64C5    jl         005C6506
 005C64C7    lea        eax,[edi+esi]
 005C64CA    sar        eax,1
>005C64CC    jns        005C64D1
 005C64CE    adc        eax,0
 005C64D1    mov        dword ptr [ebx+8],eax; TIDManager.?f8:dword
 005C64D4    mov        edx,dword ptr [ebx+8]; TIDManager.?f8:dword
 005C64D7    mov        eax,dword ptr [ebx+4]; TIDManager.?f4:TList
 005C64DA    call       TList.Get
 005C64DF    mov        dword ptr [ebp-8],eax
 005C64E2    mov        eax,dword ptr [ebp-8]
 005C64E5    mov        edx,dword ptr [eax+8]
 005C64E8    mov        eax,dword ptr [ebp-4]
 005C64EB    call       AnsiCompareText
 005C64F0    test       eax,eax
>005C64F2    je         005C6512
 005C64F4    test       eax,eax
>005C64F6    jge        005C64FE
 005C64F8    mov        edi,dword ptr [ebx+8]; TIDManager.?f8:dword
 005C64FB    dec        edi
>005C64FC    jmp        005C6502
 005C64FE    mov        esi,dword ptr [ebx+8]; TIDManager.?f8:dword
 005C6501    inc        esi
 005C6502    cmp        edi,esi
<005C6504    jge        005C64C7
 005C6506    test       eax,eax
>005C6508    jle        005C650D
 005C650A    inc        dword ptr [ebx+8]; TIDManager.?f8:dword
 005C650D    xor        eax,eax
 005C650F    mov        dword ptr [ebp-8],eax
 005C6512    xor        eax,eax
 005C6514    pop        edx
 005C6515    pop        ecx
 005C6516    pop        ecx
 005C6517    mov        dword ptr fs:[eax],edx
 005C651A    push       5C652F
 005C651F    lea        eax,[ebp-4]
 005C6522    call       @LStrClr
 005C6527    ret
<005C6528    jmp        @HandleFinally
<005C652D    jmp        005C651F
 005C652F    mov        eax,dword ptr [ebp-8]
 005C6532    pop        edi
 005C6533    pop        esi
 005C6534    pop        ebx
 005C6535    pop        ecx
 005C6536    pop        ecx
 005C6537    pop        ebp
 005C6538    ret
*}
//end;

end.