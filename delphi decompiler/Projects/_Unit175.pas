{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit175;

interface

uses
  Classes, Windows, Graphics, ZDbcStatement, ZPlainSqLiteDriver;

type
  TZSQLiteStatement = class(TZAbstractStatement)
  public
    f48:dword;//f48
    f4C:IZSQLitePlainDriver;//f4C
    //procedure sub_0053F068(?:?; ?:?); virtual;
    //function sub_0053F1C8(?:?):?; virtual;
    //function sub_0053F274(?:?):?; virtual;
    //constructor Create(?:TZSQLiteStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
  end;
  TZSQLitePreparedStatement = class(TZEmulatedPreparedStatement)
  public
    f6C:dword;//f6C
    f70:IZSQLitePlainDriver;//f70
    //procedure sub_0053F4F4(?:?); virtual;
    //procedure sub_0053F544(?:?; ?:?); virtual;
    //constructor Create(?:TZSQLitePreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//0053EEB8
//constructor TZSQLiteStatement.Create(?:TZSQLiteStatement; _Dv__:Boolean; ?:?; ?:?; ?:?);
//begin
{*
 0053EEB8    push       ebp
 0053EEB9    mov        ebp,esp
 0053EEBB    push       ecx
 0053EEBC    push       ebx
 0053EEBD    push       esi
 0053EEBE    test       dl,dl
>0053EEC0    je         0053EECA
 0053EEC2    add        esp,0FFFFFFF0
 0053EEC5    call       @ClassCreate
 0053EECA    mov        dword ptr [ebp-4],ecx
 0053EECD    mov        ebx,edx
 0053EECF    mov        esi,eax
 0053EED1    mov        eax,dword ptr [ebp-4]
 0053EED4    call       @IntfAddRef
 0053EED9    mov        eax,dword ptr [ebp+10]
 0053EEDC    call       @IntfAddRef
 0053EEE1    xor        eax,eax
 0053EEE3    push       ebp
 0053EEE4    push       53EF32
 0053EEE9    push       dword ptr fs:[eax]
 0053EEEC    mov        dword ptr fs:[eax],esp
 0053EEEF    mov        eax,dword ptr [ebp+0C]
 0053EEF2    push       eax
 0053EEF3    mov        ecx,dword ptr [ebp+10]
 0053EEF6    xor        edx,edx
 0053EEF8    mov        eax,esi
 0053EEFA    call       004DFC94
 0053EEFF    mov        eax,dword ptr [ebp+8]
 0053EF02    mov        dword ptr [esi+48],eax; TZSQLiteStatement.?f48:dword
 0053EF05    lea        eax,[esi+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053EF08    mov        edx,dword ptr [ebp-4]
 0053EF0B    call       @IntfCopy
 0053EF10    mov        byte ptr [esi+2D],1; TZSQLiteStatement.?f2D:byte
 0053EF14    xor        eax,eax
 0053EF16    pop        edx
 0053EF17    pop        ecx
 0053EF18    pop        ecx
 0053EF19    mov        dword ptr fs:[eax],edx
 0053EF1C    push       53EF39
 0053EF21    lea        eax,[ebp-4]
 0053EF24    call       @IntfClear
 0053EF29    lea        eax,[ebp+10]
 0053EF2C    call       @IntfClear
 0053EF31    ret
<0053EF32    jmp        @HandleFinally
<0053EF37    jmp        0053EF21
 0053EF39    mov        eax,esi
 0053EF3B    test       bl,bl
>0053EF3D    je         0053EF4E
 0053EF3F    call       @AfterConstruction
 0053EF44    pop        dword ptr fs:[0]
 0053EF4B    add        esp,0C
 0053EF4E    mov        eax,esi
 0053EF50    pop        esi
 0053EF51    pop        ebx
 0053EF52    pop        ecx
 0053EF53    pop        ebp
 0053EF54    ret        0C
*}
//end;

//0053EF58
//procedure sub_0053EF58(?:TZSQLiteStatement; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053EF58    push       ebp
 0053EF59    mov        ebp,esp
 0053EF5B    add        esp,0FFFFFFF8
 0053EF5E    push       ebx
 0053EF5F    push       esi
 0053EF60    push       edi
 0053EF61    xor        ebx,ebx
 0053EF63    mov        dword ptr [ebp-8],ebx
 0053EF66    mov        dword ptr [ebp-4],ecx
 0053EF69    mov        edi,edx
 0053EF6B    mov        ebx,eax
 0053EF6D    xor        eax,eax
 0053EF6F    push       ebp
 0053EF70    push       53F056
 0053EF75    push       dword ptr fs:[eax]
 0053EF78    mov        dword ptr fs:[eax],esp
 0053EF7B    mov        eax,ebx
 0053EF7D    test       eax,eax
>0053EF7F    je         0053EF84
 0053EF81    sub        eax,0FFFFFFBC
 0053EF84    push       eax
 0053EF85    push       edi
 0053EF86    mov        eax,dword ptr [ebx+48]; TZSQLiteStatement.?f48:dword
 0053EF89    push       eax
 0053EF8A    mov        eax,dword ptr [ebp-4]
 0053EF8D    push       eax
 0053EF8E    mov        eax,dword ptr [ebp+14]
 0053EF91    push       eax
 0053EF92    mov        eax,dword ptr [ebp+10]
 0053EF95    push       eax
 0053EF96    mov        eax,dword ptr [ebp+0C]
 0053EF99    push       eax
 0053EF9A    mov        ecx,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053EF9D    mov        dl,1
 0053EF9F    mov        eax,[0053D704]; TZSQLiteResultSet
 0053EFA4    call       TZSQLiteResultSet.Create; TZSQLiteResultSet.Create
 0053EFA9    mov        esi,eax
 0053EFAB    xor        edx,edx
 0053EFAD    mov        eax,esi
 0053EFAF    call       004D4578
 0053EFB4    mov        eax,dword ptr [ebx+48]; TZSQLiteStatement.?f48:dword
 0053EFB7    push       eax
 0053EFB8    mov        eax,ebx
 0053EFBA    test       eax,eax
>0053EFBC    je         0053EFC1
 0053EFBE    sub        eax,0FFFFFFBC
 0053EFC1    push       eax
 0053EFC2    lea        edx,[ebp-8]
 0053EFC5    mov        eax,esi
 0053EFC7    mov        ecx,dword ptr [eax]
 0053EFC9    call       dword ptr [ecx+0C4]; TZSQLiteResultSet.sub_004D4E80
 0053EFCF    mov        eax,dword ptr [ebp-8]
 0053EFD2    push       eax
 0053EFD3    mov        ecx,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053EFD6    mov        dl,1
 0053EFD8    mov        eax,[0053D9D4]; TZSQLiteCachedResolver
 0053EFDD    call       TZSQLiteCachedResolver.Create; TZSQLiteCachedResolver.Create
 0053EFE2    push       edi
 0053EFE3    test       eax,eax
>0053EFE5    je         0053EFEA
 0053EFE7    sub        eax,0FFFFFFC4
 0053EFEA    push       eax
 0053EFEB    mov        ecx,esi
 0053EFED    test       ecx,ecx
>0053EFEF    je         0053EFF4
 0053EFF1    sub        ecx,0FFFFFFC8
 0053EFF4    mov        dl,1
 0053EFF6    mov        eax,[004D060C]; TZCachedResultSet
 0053EFFB    call       TZCachedResultSet.Create; TZCachedResultSet.Create
 0053F000    mov        esi,eax
 0053F002    mov        dl,1
 0053F004    mov        eax,esi
 0053F006    call       004D457C
 0053F00B    mov        eax,esi
 0053F00D    mov        edx,dword ptr [eax]
 0053F00F    call       dword ptr [edx+0E8]; TZCachedResultSet.sub_004D2584
 0053F015    mov        eax,esi
 0053F017    mov        edx,dword ptr [eax]
 0053F019    call       dword ptr [edx+0DC]; TZCachedResultSet.sub_004D5044
 0053F01F    mov        eax,ebx
 0053F021    mov        edx,dword ptr [eax]
 0053F023    call       dword ptr [edx+58]; TZSQLiteStatement.sub_004DFF74
 0053F026    mov        edx,eax
 0053F028    mov        eax,esi
 0053F02A    call       004D4578
 0053F02F    mov        eax,dword ptr [ebp+8]
 0053F032    mov        edx,esi
 0053F034    test       edx,edx
>0053F036    je         0053F03B
 0053F038    sub        edx,0FFFFFFC8
 0053F03B    call       @IntfCopy
 0053F040    xor        eax,eax
 0053F042    pop        edx
 0053F043    pop        ecx
 0053F044    pop        ecx
 0053F045    mov        dword ptr fs:[eax],edx
 0053F048    push       53F05D
 0053F04D    lea        eax,[ebp-8]
 0053F050    call       @IntfClear
 0053F055    ret
<0053F056    jmp        @HandleFinally
<0053F05B    jmp        0053F04D
 0053F05D    pop        edi
 0053F05E    pop        esi
 0053F05F    pop        ebx
 0053F060    pop        ecx
 0053F061    pop        ecx
 0053F062    pop        ebp
 0053F063    ret        10
*}
//end;

//0053F068
//procedure sub_0053F068(?:?; ?:?);
//begin
{*
 0053F068    push       ebp
 0053F069    mov        ebp,esp
 0053F06B    add        esp,0FFFFFFDC
 0053F06E    push       ebx
 0053F06F    push       esi
 0053F070    push       edi
 0053F071    xor        ebx,ebx
 0053F073    mov        dword ptr [ebp-24],ebx
 0053F076    mov        dword ptr [ebp-8],ecx
 0053F079    mov        ebx,edx
 0053F07B    mov        dword ptr [ebp-4],eax
 0053F07E    xor        eax,eax
 0053F080    push       ebp
 0053F081    push       53F1A3
 0053F086    push       dword ptr fs:[eax]
 0053F089    mov        dword ptr fs:[eax],esp
 0053F08C    mov        eax,53F1B4
 0053F091    mov        dword ptr [ebp-0C],eax
 0053F094    mov        eax,53F1B4
 0053F099    mov        dword ptr [ebp-10],eax
 0053F09C    xor        eax,eax
 0053F09E    mov        dword ptr [ebp-18],eax
 0053F0A1    mov        eax,ebx
 0053F0A3    call       @LStrLen
 0053F0A8    push       eax
 0053F0A9    lea        eax,[ebp-10]
 0053F0AC    push       eax
 0053F0AD    lea        eax,[ebp-14]
 0053F0B0    push       eax
 0053F0B1    lea        eax,[ebp-0C]
 0053F0B4    push       eax
 0053F0B5    mov        eax,ebx
 0053F0B7    call       @LStrToPChar
 0053F0BC    mov        ecx,eax
 0053F0BE    mov        eax,dword ptr [ebp-4]
 0053F0C1    mov        edx,dword ptr [eax+48]; TZSQLiteStatement.?f48:dword
 0053F0C4    mov        eax,dword ptr [ebp-4]
 0053F0C7    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F0CA    mov        esi,dword ptr [eax]
 0053F0CC    call       dword ptr [esi+88]
 0053F0D2    push       3
 0053F0D4    push       ebx
 0053F0D5    mov        edx,dword ptr [ebp-4]
 0053F0D8    mov        edx,dword ptr [edx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F0DB    mov        ecx,dword ptr [ebp-0C]
 0053F0DE    xchg       eax,edx
 0053F0DF    call       0053D304
 0053F0E4    push       ebx
 0053F0E5    lea        edx,[ebp-24]
 0053F0E8    mov        eax,dword ptr [ebp-4]
 0053F0EB    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F0EE    mov        ecx,dword ptr [eax]
 0053F0F0    call       dword ptr [ecx+0C]
 0053F0F3    mov        ecx,dword ptr [ebp-24]
 0053F0F6    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053F0FB    mov        eax,dword ptr [eax]
 0053F0FD    mov        dl,3
 0053F0FF    mov        esi,dword ptr [eax]
 0053F101    call       dword ptr [esi+3C]
 0053F104    xor        edx,edx
 0053F106    push       ebp
 0053F107    push       53F14D
 0053F10C    push       dword ptr fs:[edx]
 0053F10F    mov        dword ptr fs:[edx],esp
 0053F112    lea        eax,[ebp-1C]
 0053F115    push       eax
 0053F116    lea        eax,[ebp-20]
 0053F119    push       eax
 0053F11A    lea        ecx,[ebp-18]
 0053F11D    mov        eax,dword ptr [ebp-4]
 0053F120    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F123    mov        edx,dword ptr [ebp-14]
 0053F126    mov        esi,dword ptr [eax]
 0053F128    call       dword ptr [esi+8C]
 0053F12E    push       4
 0053F130    push       53F1C0; 'FETCH'
 0053F135    mov        edx,dword ptr [ebp-4]
 0053F138    mov        edx,dword ptr [edx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F13B    xor        ecx,ecx
 0053F13D    xchg       eax,edx
 0053F13E    call       0053D304
 0053F143    xor        eax,eax
 0053F145    pop        edx
 0053F146    pop        ecx
 0053F147    pop        ecx
 0053F148    mov        dword ptr fs:[eax],edx
>0053F14B    jmp        0053F170
<0053F14D    jmp        @HandleAnyException
 0053F152    lea        ecx,[ebp-0C]
 0053F155    mov        eax,dword ptr [ebp-4]
 0053F158    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F15B    mov        edx,dword ptr [ebp-14]
 0053F15E    mov        ebx,dword ptr [eax]
 0053F160    call       dword ptr [ebx+90]
 0053F166    call       @RaiseAgain
 0053F16B    call       @DoneExcept
 0053F170    mov        eax,dword ptr [ebp-18]
 0053F173    push       eax
 0053F174    mov        eax,dword ptr [ebp-20]
 0053F177    push       eax
 0053F178    mov        eax,dword ptr [ebp-1C]
 0053F17B    push       eax
 0053F17C    mov        eax,dword ptr [ebp-8]
 0053F17F    push       eax
 0053F180    mov        ecx,dword ptr [ebp-14]
 0053F183    mov        edx,ebx
 0053F185    mov        eax,dword ptr [ebp-4]
 0053F188    call       0053EF58
 0053F18D    xor        eax,eax
 0053F18F    pop        edx
 0053F190    pop        ecx
 0053F191    pop        ecx
 0053F192    mov        dword ptr fs:[eax],edx
 0053F195    push       53F1AA
 0053F19A    lea        eax,[ebp-24]
 0053F19D    call       @LStrClr
 0053F1A2    ret
<0053F1A3    jmp        @HandleFinally
<0053F1A8    jmp        0053F19A
 0053F1AA    pop        edi
 0053F1AB    pop        esi
 0053F1AC    pop        ebx
 0053F1AD    mov        esp,ebp
 0053F1AF    pop        ebp
 0053F1B0    ret
*}
//end;

//0053F1C8
//function sub_0053F1C8(?:?):?;
//begin
{*
 0053F1C8    push       ebp
 0053F1C9    mov        ebp,esp
 0053F1CB    add        esp,0FFFFFFF8
 0053F1CE    push       ebx
 0053F1CF    push       esi
 0053F1D0    push       edi
 0053F1D1    xor        ecx,ecx
 0053F1D3    mov        dword ptr [ebp-8],ecx
 0053F1D6    mov        esi,edx
 0053F1D8    mov        ebx,eax
 0053F1DA    xor        eax,eax
 0053F1DC    push       ebp
 0053F1DD    push       53F25F
 0053F1E2    push       dword ptr fs:[eax]
 0053F1E5    mov        dword ptr fs:[eax],esp
 0053F1E8    mov        eax,53F270
 0053F1ED    mov        dword ptr [ebp-4],eax
 0053F1F0    push       0
 0053F1F2    push       0
 0053F1F4    lea        eax,[ebp-4]
 0053F1F7    push       eax
 0053F1F8    mov        eax,esi
 0053F1FA    call       @LStrToPChar
 0053F1FF    mov        ecx,eax
 0053F201    mov        edx,dword ptr [ebx+48]; TZSQLiteStatement.?f48:dword
 0053F204    mov        eax,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F207    mov        edi,dword ptr [eax]
 0053F209    call       dword ptr [edi+20]
 0053F20C    push       3
 0053F20E    push       esi
 0053F20F    mov        ecx,dword ptr [ebp-4]
 0053F212    mov        edx,eax
 0053F214    mov        eax,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F217    call       0053D304
 0053F21C    push       esi
 0053F21D    lea        edx,[ebp-8]
 0053F220    mov        eax,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F223    mov        ecx,dword ptr [eax]
 0053F225    call       dword ptr [ecx+0C]
 0053F228    mov        ecx,dword ptr [ebp-8]
 0053F22B    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053F230    mov        eax,dword ptr [eax]
 0053F232    mov        dl,3
 0053F234    mov        esi,dword ptr [eax]
 0053F236    call       dword ptr [esi+3C]
 0053F239    mov        edx,dword ptr [ebx+48]; TZSQLiteStatement.?f48:dword
 0053F23C    mov        eax,dword ptr [ebx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F23F    mov        ecx,dword ptr [eax]
 0053F241    call       dword ptr [ecx+28]
 0053F244    mov        esi,eax
 0053F246    mov        dword ptr [ebx+1C],esi; TZSQLiteStatement.?f1C:Integer
 0053F249    xor        eax,eax
 0053F24B    pop        edx
 0053F24C    pop        ecx
 0053F24D    pop        ecx
 0053F24E    mov        dword ptr fs:[eax],edx
 0053F251    push       53F266
 0053F256    lea        eax,[ebp-8]
 0053F259    call       @LStrClr
 0053F25E    ret
<0053F25F    jmp        @HandleFinally
<0053F264    jmp        0053F256
 0053F266    mov        eax,esi
 0053F268    pop        edi
 0053F269    pop        esi
 0053F26A    pop        ebx
 0053F26B    pop        ecx
 0053F26C    pop        ecx
 0053F26D    pop        ebp
 0053F26E    ret
*}
//end;

//0053F274
//function sub_0053F274(?:?):?;
//begin
{*
 0053F274    push       ebp
 0053F275    mov        ebp,esp
 0053F277    add        esp,0FFFFFFDC
 0053F27A    push       ebx
 0053F27B    push       esi
 0053F27C    push       edi
 0053F27D    xor        ecx,ecx
 0053F27F    mov        dword ptr [ebp-24],ecx
 0053F282    mov        dword ptr [ebp-20],ecx
 0053F285    mov        esi,edx
 0053F287    mov        dword ptr [ebp-4],eax
 0053F28A    xor        eax,eax
 0053F28C    push       ebp
 0053F28D    push       53F40E
 0053F292    push       dword ptr fs:[eax]
 0053F295    mov        dword ptr fs:[eax],esp
 0053F298    mov        eax,53F420
 0053F29D    mov        dword ptr [ebp-8],eax
 0053F2A0    mov        eax,53F420
 0053F2A5    mov        dword ptr [ebp-0C],eax
 0053F2A8    xor        eax,eax
 0053F2AA    mov        dword ptr [ebp-14],eax
 0053F2AD    mov        eax,esi
 0053F2AF    call       @LStrLen
 0053F2B4    push       eax
 0053F2B5    lea        eax,[ebp-0C]
 0053F2B8    push       eax
 0053F2B9    lea        eax,[ebp-10]
 0053F2BC    push       eax
 0053F2BD    lea        eax,[ebp-8]
 0053F2C0    push       eax
 0053F2C1    mov        eax,esi
 0053F2C3    call       @LStrToPChar
 0053F2C8    mov        ecx,eax
 0053F2CA    mov        eax,dword ptr [ebp-4]
 0053F2CD    mov        edx,dword ptr [eax+48]; TZSQLiteStatement.?f48:dword
 0053F2D0    mov        eax,dword ptr [ebp-4]
 0053F2D3    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F2D6    mov        ebx,dword ptr [eax]
 0053F2D8    call       dword ptr [ebx+88]
 0053F2DE    push       3
 0053F2E0    push       esi
 0053F2E1    mov        edx,dword ptr [ebp-4]
 0053F2E4    mov        edx,dword ptr [edx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F2E7    mov        ecx,dword ptr [ebp-8]
 0053F2EA    xchg       eax,edx
 0053F2EB    call       0053D304
 0053F2F0    push       esi
 0053F2F1    lea        edx,[ebp-20]
 0053F2F4    mov        eax,dword ptr [ebp-4]
 0053F2F7    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F2FA    mov        ecx,dword ptr [eax]
 0053F2FC    call       dword ptr [ecx+0C]
 0053F2FF    mov        ecx,dword ptr [ebp-20]
 0053F302    mov        eax,[0061C5A8]; ^gvar_0061DD10:IInterface
 0053F307    mov        eax,dword ptr [eax]
 0053F309    mov        dl,3
 0053F30B    mov        ebx,dword ptr [eax]
 0053F30D    call       dword ptr [ebx+3C]
 0053F310    xor        edx,edx
 0053F312    push       ebp
 0053F313    push       53F359
 0053F318    push       dword ptr fs:[edx]
 0053F31B    mov        dword ptr fs:[edx],esp
 0053F31E    lea        eax,[ebp-18]
 0053F321    push       eax
 0053F322    lea        eax,[ebp-1C]
 0053F325    push       eax
 0053F326    lea        ecx,[ebp-14]
 0053F329    mov        eax,dword ptr [ebp-4]
 0053F32C    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F32F    mov        edx,dword ptr [ebp-10]
 0053F332    mov        ebx,dword ptr [eax]
 0053F334    call       dword ptr [ebx+8C]
 0053F33A    push       4
 0053F33C    push       53F42C; 'FETCH'
 0053F341    mov        edx,dword ptr [ebp-4]
 0053F344    mov        edx,dword ptr [edx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F347    xor        ecx,ecx
 0053F349    xchg       eax,edx
 0053F34A    call       0053D304
 0053F34F    xor        eax,eax
 0053F351    pop        edx
 0053F352    pop        ecx
 0053F353    pop        ecx
 0053F354    mov        dword ptr fs:[eax],edx
>0053F357    jmp        0053F37C
<0053F359    jmp        @HandleAnyException
 0053F35E    lea        ecx,[ebp-8]
 0053F361    mov        eax,dword ptr [ebp-4]
 0053F364    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F367    mov        edx,dword ptr [ebp-10]
 0053F36A    mov        ebx,dword ptr [eax]
 0053F36C    call       dword ptr [ebx+90]
 0053F372    call       @RaiseAgain
 0053F377    call       @DoneExcept
 0053F37C    cmp        dword ptr [ebp-14],0
>0053F380    je         0053F3AD
 0053F382    mov        bl,1
 0053F384    mov        eax,dword ptr [ebp-14]
 0053F387    push       eax
 0053F388    mov        eax,dword ptr [ebp-1C]
 0053F38B    push       eax
 0053F38C    mov        eax,dword ptr [ebp-18]
 0053F38F    push       eax
 0053F390    lea        eax,[ebp-24]
 0053F393    push       eax
 0053F394    mov        ecx,dword ptr [ebp-10]
 0053F397    mov        edx,esi
 0053F399    mov        eax,dword ptr [ebp-4]
 0053F39C    call       0053EF58
 0053F3A1    mov        edx,dword ptr [ebp-24]
 0053F3A4    mov        eax,dword ptr [ebp-4]
 0053F3A7    mov        ecx,dword ptr [eax]
 0053F3A9    call       dword ptr [ecx]; TZSQLiteStatement.sub_004DFE2C
>0053F3AB    jmp        0053F3F0
 0053F3AD    xor        ebx,ebx
 0053F3AF    mov        eax,dword ptr [ebp-4]
 0053F3B2    mov        edx,dword ptr [eax+48]; TZSQLiteStatement.?f48:dword
 0053F3B5    mov        eax,dword ptr [ebp-4]
 0053F3B8    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F3BB    mov        ecx,dword ptr [eax]
 0053F3BD    call       dword ptr [ecx+28]
 0053F3C0    mov        edx,dword ptr [ebp-4]
 0053F3C3    mov        dword ptr [edx+1C],eax; TZSQLiteStatement.?f1C:Integer
 0053F3C6    lea        ecx,[ebp-8]
 0053F3C9    mov        eax,dword ptr [ebp-4]
 0053F3CC    mov        eax,dword ptr [eax+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F3CF    mov        edx,dword ptr [ebp-10]
 0053F3D2    mov        esi,dword ptr [eax]
 0053F3D4    call       dword ptr [esi+90]
 0053F3DA    push       4
 0053F3DC    push       53F43C; 'Finalize SQLite VM'
 0053F3E1    mov        edx,dword ptr [ebp-4]
 0053F3E4    mov        edx,dword ptr [edx+4C]; TZSQLiteStatement.?f4C:IZSQLitePlainDriver
 0053F3E7    mov        ecx,dword ptr [ebp-8]
 0053F3EA    xchg       eax,edx
 0053F3EB    call       0053D304
 0053F3F0    xor        eax,eax
 0053F3F2    pop        edx
 0053F3F3    pop        ecx
 0053F3F4    pop        ecx
 0053F3F5    mov        dword ptr fs:[eax],edx
 0053F3F8    push       53F415
 0053F3FD    lea        eax,[ebp-24]
 0053F400    call       @IntfClear
 0053F405    lea        eax,[ebp-20]
 0053F408    call       @LStrClr
 0053F40D    ret
<0053F40E    jmp        @HandleFinally
<0053F413    jmp        0053F3FD
 0053F415    mov        eax,ebx
 0053F417    pop        edi
 0053F418    pop        esi
 0053F419    pop        ebx
 0053F41A    mov        esp,ebp
 0053F41C    pop        ebp
 0053F41D    ret
*}
//end;

//0053F450
//constructor TZSQLitePreparedStatement.Create(?:TZSQLitePreparedStatement; _Dv__:Boolean; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 0053F450    push       ebp
 0053F451    mov        ebp,esp
 0053F453    push       ecx
 0053F454    push       ebx
 0053F455    push       esi
 0053F456    test       dl,dl
>0053F458    je         0053F462
 0053F45A    add        esp,0FFFFFFF0
 0053F45D    call       @ClassCreate
 0053F462    mov        dword ptr [ebp-4],ecx
 0053F465    mov        ebx,edx
 0053F467    mov        esi,eax
 0053F469    mov        eax,dword ptr [ebp-4]
 0053F46C    call       @IntfAddRef
 0053F471    mov        eax,dword ptr [ebp+14]
 0053F474    call       @IntfAddRef
 0053F479    xor        eax,eax
 0053F47B    push       ebp
 0053F47C    push       53F4CE
 0053F481    push       dword ptr fs:[eax]
 0053F484    mov        dword ptr fs:[eax],esp
 0053F487    mov        eax,dword ptr [ebp+10]
 0053F48A    push       eax
 0053F48B    mov        eax,dword ptr [ebp+0C]
 0053F48E    push       eax
 0053F48F    mov        ecx,dword ptr [ebp+14]
 0053F492    xor        edx,edx
 0053F494    mov        eax,esi
 0053F496    call       004E0088
 0053F49B    mov        eax,dword ptr [ebp+8]
 0053F49E    mov        dword ptr [esi+6C],eax; TZSQLitePreparedStatement.?f6C:dword
 0053F4A1    lea        eax,[esi+70]; TZSQLitePreparedStatement.?f70:IZSQLitePlainDriver
 0053F4A4    mov        edx,dword ptr [ebp-4]
 0053F4A7    call       @IntfCopy
 0053F4AC    mov        byte ptr [esi+2D],0; TZSQLitePreparedStatement.?f2D:byte
 0053F4B0    xor        eax,eax
 0053F4B2    pop        edx
 0053F4B3    pop        ecx
 0053F4B4    pop        ecx
 0053F4B5    mov        dword ptr fs:[eax],edx
 0053F4B8    push       53F4D5
 0053F4BD    lea        eax,[ebp-4]
 0053F4C0    call       @IntfClear
 0053F4C5    lea        eax,[ebp+14]
 0053F4C8    call       @IntfClear
 0053F4CD    ret
<0053F4CE    jmp        @HandleFinally
<0053F4D3    jmp        0053F4BD
 0053F4D5    mov        eax,esi
 0053F4D7    test       bl,bl
>0053F4D9    je         0053F4EA
 0053F4DB    call       @AfterConstruction
 0053F4E0    pop        dword ptr fs:[0]
 0053F4E7    add        esp,0C
 0053F4EA    mov        eax,esi
 0053F4EC    pop        esi
 0053F4ED    pop        ebx
 0053F4EE    pop        ecx
 0053F4EF    pop        ebp
 0053F4F0    ret        10
*}
//end;

//0053F4F4
//procedure sub_0053F4F4(?:?);
//begin
{*
 0053F4F4    push       ebp
 0053F4F5    mov        ebp,esp
 0053F4F7    push       ebx
 0053F4F8    push       esi
 0053F4F9    mov        esi,edx
 0053F4FB    mov        ebx,eax
 0053F4FD    mov        eax,dword ptr [ebx+38]; TZSQLitePreparedStatement.?f38:IZConnection
 0053F500    push       eax
 0053F501    mov        eax,dword ptr [ebx+3C]; TZSQLitePreparedStatement.?f3C:dword
 0053F504    push       eax
 0053F505    mov        eax,dword ptr [ebx+6C]; TZSQLitePreparedStatement.?f6C:dword
 0053F508    push       eax
 0053F509    mov        ecx,dword ptr [ebx+70]; TZSQLitePreparedStatement.?f70:IZSQLitePlainDriver
 0053F50C    mov        dl,1
 0053F50E    mov        eax,[0053EC60]; TZSQLiteStatement
 0053F513    call       TZSQLiteStatement.Create; TZSQLiteStatement.Create
 0053F518    mov        edx,eax
 0053F51A    test       edx,edx
>0053F51C    je         0053F521
 0053F51E    sub        edx,0FFFFFFBC
 0053F521    mov        eax,esi
 0053F523    call       @IntfCopy
 0053F528    pop        esi
 0053F529    pop        ebx
 0053F52A    pop        ebp
 0053F52B    ret
*}
//end;

//0053F52C
//procedure sub_0053F52C(?:TZSQLitePreparedStatement; ?:AnsiString; ?:?);
//begin
{*
 0053F52C    push       ebp
 0053F52D    mov        ebp,esp
 0053F52F    push       ebx
 0053F530    push       esi
 0053F531    mov        esi,ecx
 0053F533    mov        ebx,edx
 0053F535    mov        ecx,esi
 0053F537    mov        dl,27
 0053F539    mov        eax,ebx
 0053F53B    call       AnsiQuotedStr
 0053F540    pop        esi
 0053F541    pop        ebx
 0053F542    pop        ebp
 0053F543    ret
*}
//end;

//0053F544
//procedure sub_0053F544(?:?; ?:?);
//begin
{*
 0053F544    push       ebp
 0053F545    mov        ebp,esp
 0053F547    add        esp,0FFFFFFA8
 0053F54A    push       ebx
 0053F54B    push       esi
 0053F54C    push       edi
 0053F54D    xor        ebx,ebx
 0053F54F    mov        dword ptr [ebp-58],ebx
 0053F552    mov        dword ptr [ebp-54],ebx
 0053F555    mov        dword ptr [ebp-50],ebx
 0053F558    mov        dword ptr [ebp-4C],ebx
 0053F55B    mov        dword ptr [ebp-48],ebx
 0053F55E    mov        dword ptr [ebp-44],ebx
 0053F561    mov        dword ptr [ebp-40],ebx
 0053F564    mov        dword ptr [ebp-3C],ebx
 0053F567    mov        dword ptr [ebp-8],ebx
 0053F56A    mov        dword ptr [ebp-0C],ebx
 0053F56D    mov        dword ptr [ebp-4],ecx
 0053F570    mov        esi,edx
 0053F572    mov        ebx,eax
 0053F574    lea        eax,[ebp-38]
 0053F577    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0053F57D    call       @InitializeRecord
 0053F582    xor        eax,eax
 0053F584    push       ebp
 0053F585    push       53F874
 0053F58A    push       dword ptr fs:[eax]
 0053F58D    mov        dword ptr fs:[eax],esp
 0053F590    lea        eax,[ebp-8]
 0053F593    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 0053F599    call       @DynArrayClear
 0053F59E    cmp        esi,dword ptr [ebx+58]; TZSQLitePreparedStatement.?f58:dword
>0053F5A1    jl         0053F5C4
 0053F5A3    lea        edx,[ebp-3C]
 0053F5A6    mov        eax,[0061B5C8]; ^#122.sResString47:TResStringRec
 0053F5AB    call       LoadResString
 0053F5B0    mov        ecx,dword ptr [ebp-3C]
 0053F5B3    mov        dl,1
 0053F5B5    mov        eax,[004C6D20]; EZSQLException
 0053F5BA    call       EZSQLException.Create; EZSQLException.Create
 0053F5BF    call       @RaiseExcept
 0053F5C4    lea        eax,[ebp-38]
 0053F5C7    imul       edx,esi,0B
>0053F5CA    jno        0053F5D1
 0053F5CC    call       @IntOver
 0053F5D1    mov        ecx,dword ptr [ebx+4C]; TZSQLitePreparedStatement.?f4C:TZVariantDynArray
 0053F5D4    lea        edx,[ecx+edx*4]
 0053F5D7    mov        ecx,dword ptr ds:[4C4174]; TZVariant
 0053F5DD    call       @CopyRecord
 0053F5E2    lea        edx,[ebp-38]
 0053F5E5    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0053F5EA    mov        eax,dword ptr [eax]
 0053F5EC    mov        ecx,dword ptr [eax]
 0053F5EE    call       dword ptr [ecx+0C]
 0053F5F1    test       al,al
>0053F5F3    je         0053F607
 0053F5F5    mov        eax,dword ptr [ebp-4]
 0053F5F8    mov        edx,53F88C; 'NULL'
 0053F5FD    call       @LStrAsg
>0053F602    jmp        0053F820
 0053F607    mov        eax,dword ptr [ebx+50]; TZSQLitePreparedStatement.?f50:TZSQLTypeArray
 0053F60A    test       eax,eax
>0053F60C    je         0053F613
 0053F60E    cmp        esi,dword ptr [eax-4]
>0053F611    jb         0053F618
 0053F613    call       @BoundErr
 0053F618    movzx      eax,byte ptr [eax+esi]
 0053F61C    cmp        eax,11
>0053F61F    ja         0053F820
 0053F625    mov        al,byte ptr [eax+53F632]
 0053F62B    jmp        dword ptr [eax*4+53F644]
 0053F62B    db         0
 0053F62B    db         1
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         2
 0053F62B    db         3
 0053F62B    db         0
 0053F62B    db         3
 0053F62B    db         4
 0053F62B    db         5
 0053F62B    db         6
 0053F62B    db         7
 0053F62B    db         7
 0053F62B    db         7
 0053F62B    dd         53F820
 0053F62B    dd         53F664
 0053F62B    dd         53F69B
 0053F62B    dd         53F6B2
 0053F62B    dd         53F6D6
 0053F62B    dd         53F718
 0053F62B    dd         53F75A
 0053F62B    dd         53F79C
 0053F664    lea        edx,[ebp-38]
 0053F667    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F66C    mov        eax,dword ptr [eax]
 0053F66E    mov        ecx,dword ptr [eax]
 0053F670    call       dword ptr [ecx+24]
 0053F673    test       al,al
>0053F675    je         0053F689
 0053F677    mov        eax,dword ptr [ebp-4]
 0053F67A    mov        edx,53F89C; ''Y''
 0053F67F    call       @LStrAsg
>0053F684    jmp        0053F820
 0053F689    mov        eax,dword ptr [ebp-4]
 0053F68C    mov        edx,53F8A8; ''N''
 0053F691    call       @LStrAsg
>0053F696    jmp        0053F820
 0053F69B    mov        ecx,dword ptr [ebp-4]
 0053F69E    lea        edx,[ebp-38]
 0053F6A1    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F6A6    mov        eax,dword ptr [eax]
 0053F6A8    mov        ebx,dword ptr [eax]
 0053F6AA    call       dword ptr [ebx+30]
>0053F6AD    jmp        0053F820
 0053F6B2    lea        ecx,[ebp-40]
 0053F6B5    lea        edx,[ebp-38]
 0053F6B8    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F6BD    mov        eax,dword ptr [eax]
 0053F6BF    mov        esi,dword ptr [eax]
 0053F6C1    call       dword ptr [esi+30]
 0053F6C4    mov        edx,dword ptr [ebp-40]
 0053F6C7    mov        ecx,dword ptr [ebp-4]
 0053F6CA    mov        eax,ebx
 0053F6CC    call       0053F52C
>0053F6D1    jmp        0053F820
 0053F6D6    push       53F8B4; '''
 0053F6DB    lea        edx,[ebp-38]
 0053F6DE    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F6E3    mov        eax,dword ptr [eax]
 0053F6E5    mov        ecx,dword ptr [eax]
 0053F6E7    call       dword ptr [ecx+38]
 0053F6EA    add        esp,0FFFFFFF8
 0053F6ED    fstp       qword ptr [esp]
 0053F6F0    wait
 0053F6F1    lea        edx,[ebp-44]
 0053F6F4    mov        eax,53F8C0; 'yyyy-mm-dd'
 0053F6F9    call       FormatDateTime
 0053F6FE    push       dword ptr [ebp-44]
 0053F701    push       53F8B4; '''
 0053F706    mov        eax,dword ptr [ebp-4]
 0053F709    mov        edx,3
 0053F70E    call       @LStrCatN
>0053F713    jmp        0053F820
 0053F718    push       53F8B4; '''
 0053F71D    lea        edx,[ebp-38]
 0053F720    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F725    mov        eax,dword ptr [eax]
 0053F727    mov        ecx,dword ptr [eax]
 0053F729    call       dword ptr [ecx+38]
 0053F72C    add        esp,0FFFFFFF8
 0053F72F    fstp       qword ptr [esp]
 0053F732    wait
 0053F733    lea        edx,[ebp-48]
 0053F736    mov        eax,53F8D4; 'hh:mm:ss'
 0053F73B    call       FormatDateTime
 0053F740    push       dword ptr [ebp-48]
 0053F743    push       53F8B4; '''
 0053F748    mov        eax,dword ptr [ebp-4]
 0053F74B    mov        edx,3
 0053F750    call       @LStrCatN
>0053F755    jmp        0053F820
 0053F75A    push       53F8B4; '''
 0053F75F    lea        edx,[ebp-38]
 0053F762    mov        eax,[0061B688]; ^gvar_0061DCDC:IInterface
 0053F767    mov        eax,dword ptr [eax]
 0053F769    mov        ecx,dword ptr [eax]
 0053F76B    call       dword ptr [ecx+38]
 0053F76E    add        esp,0FFFFFFF8
 0053F771    fstp       qword ptr [esp]
 0053F774    wait
 0053F775    lea        edx,[ebp-4C]
 0053F778    mov        eax,53F8E8; 'yyyy-mm-dd hh:mm:ss'
 0053F77D    call       FormatDateTime
 0053F782    push       dword ptr [ebp-4C]
 0053F785    push       53F8B4; '''
 0053F78A    mov        eax,dword ptr [ebp-4]
 0053F78D    mov        edx,3
 0053F792    call       @LStrCatN
>0053F797    jmp        0053F820
 0053F79C    lea        ecx,[ebp-50]
 0053F79F    lea        edx,[ebp-38]
 0053F7A2    mov        eax,[0061B078]; ^gvar_0061DCD8:IInterface
 0053F7A7    mov        eax,dword ptr [eax]
 0053F7A9    mov        edi,dword ptr [eax]
 0053F7AB    call       dword ptr [edi+40]
 0053F7AE    mov        edx,dword ptr [ebp-50]
 0053F7B1    lea        eax,[ebp-0C]
 0053F7B4    mov        ecx,53F8FC; ['{47D209F1-D065-49DD-A156-EFD1E523F6BF}']
 0053F7B9    call       @IntfCast
 0053F7BE    mov        eax,dword ptr [ebp-0C]
 0053F7C1    mov        edx,dword ptr [eax]
 0053F7C3    call       dword ptr [edx+0C]
 0053F7C6    test       al,al
>0053F7C8    jne        0053F813
 0053F7CA    mov        eax,dword ptr [ebx+50]; TZSQLitePreparedStatement.?f50:TZSQLTypeArray
 0053F7CD    test       eax,eax
>0053F7CF    je         0053F7D6
 0053F7D1    cmp        esi,dword ptr [eax-4]
>0053F7D4    jb         0053F7DB
 0053F7D6    call       @BoundErr
 0053F7DB    cmp        byte ptr [eax+esi],11
>0053F7DF    jne        0053F7F9
 0053F7E1    lea        edx,[ebp-54]
 0053F7E4    mov        eax,dword ptr [ebp-0C]
 0053F7E7    mov        ecx,dword ptr [eax]
 0053F7E9    call       dword ptr [ecx+18]
 0053F7EC    mov        eax,dword ptr [ebp-54]
 0053F7EF    mov        edx,dword ptr [ebp-4]
 0053F7F2    call       0053D438
>0053F7F7    jmp        0053F820
 0053F7F9    lea        edx,[ebp-58]
 0053F7FC    mov        eax,dword ptr [ebp-0C]
 0053F7FF    mov        ecx,dword ptr [eax]
 0053F801    call       dword ptr [ecx+18]
 0053F804    mov        edx,dword ptr [ebp-58]
 0053F807    mov        ecx,dword ptr [ebp-4]
 0053F80A    mov        eax,ebx
 0053F80C    call       0053F52C
>0053F811    jmp        0053F820
 0053F813    mov        eax,dword ptr [ebp-4]
 0053F816    mov        edx,53F88C; 'NULL'
 0053F81B    call       @LStrAsg
 0053F820    xor        eax,eax
 0053F822    pop        edx
 0053F823    pop        ecx
 0053F824    pop        ecx
 0053F825    mov        dword ptr fs:[eax],edx
 0053F828    push       53F87B
 0053F82D    lea        eax,[ebp-58]
 0053F830    mov        edx,2
 0053F835    call       @LStrArrayClr
 0053F83A    lea        eax,[ebp-50]
 0053F83D    call       @IntfClear
 0053F842    lea        eax,[ebp-4C]
 0053F845    mov        edx,5
 0053F84A    call       @LStrArrayClr
 0053F84F    lea        eax,[ebp-38]
 0053F852    mov        edx,dword ptr ds:[4C4174]; TZVariant
 0053F858    call       @FinalizeRecord
 0053F85D    lea        eax,[ebp-0C]
 0053F860    call       @IntfClear
 0053F865    lea        eax,[ebp-8]
 0053F868    mov        edx,dword ptr ds:[4BC7D8]; TByteDynArray
 0053F86E    call       @DynArrayClear
 0053F873    ret
<0053F874    jmp        @HandleFinally
<0053F879    jmp        0053F82D
 0053F87B    pop        edi
 0053F87C    pop        esi
 0053F87D    pop        ebx
 0053F87E    mov        esp,ebp
 0053F880    pop        ebp
 0053F881    ret
*}
//end;

end.