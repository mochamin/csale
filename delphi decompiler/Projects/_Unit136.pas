{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit136;

interface

uses
  Classes, Windows, Graphics, ZDbcIntfs, _Unit131, ZSelectSchema;

type
  TZColumnInfo = class(TObject)
  public
    f4:LongBool;//f4
    f5:byte;//f5
    f6:byte;//f6
    f7:byte;//f7
    f8:byte;//f8
    f9:byte;//f9
    fC:dword;//fC
    f10:String;//f10
    f14:String;//f14
    f18:String;//f18
    f1C:Integer;//f1C
    f20:dword;//f20
    f24:String;//f24
    f28:String;//f28
    f2C:byte;//f2C
    f2D:byte;//f2D
    f2E:byte;//f2E
    f2F:byte;//f2F
    f30:String;//f30
    //constructor Create(?:TZColumnInfo; _Dv__:Boolean);
  end;
  TZAbstractResultSetMetadata = class(TContainedObject)
  public
    fC:byte;//fC
    f10:IZDatabaseMetadata;//f10
    f14:TStringList;//f14
    f18:String;//f18
    f1C:TZHashMap;//f1C
    f20:IZIdentifierConvertor;//f20
    f24:dword;//f24
    destructor Destroy; virtual;
    //procedure sub_004D6E10(?:?; ?:?; ?:?); virtual;
    //function sub_004D6440:?; virtual;
    //function sub_004D644C(?:?):?; virtual;
    //function sub_004D6480(?:?):?; virtual;
    //function sub_004D64B4(?:?):?; virtual;
    //function sub_004D64E8(?:?):?; virtual;
    //function sub_004D6510(?:?):?; virtual;
    //function sub_004D6544(?:?):?; virtual;
    //function sub_004D656C(?:?):?; virtual;
    //procedure sub_004D6594(?:?; ?:?); virtual;
    //procedure sub_004D6710(?:?; ?:?); virtual;
    //procedure sub_004D6750(?:?; ?:?); virtual;
    //function sub_004D6790(?:?):?; virtual;
    //function sub_004D67B8(?:?):?; virtual;
    //procedure sub_004D67E0(?:?; ?:?); virtual;
    //procedure sub_004D6820(?:?; ?:?); virtual;
    //function sub_004D6860(?:?):?; virtual;
    //procedure sub_004D6888(?:?; ?:?); virtual;
    //function sub_004D68B8(?:?):?; virtual;
    //function sub_004D68EC(?:?):?; virtual;
    //function sub_004D6920(?:?):?; virtual;
    //procedure sub_004D6954(?:?; ?:?); virtual;
    //procedure sub_004D6994(?:?); virtual;
    //constructor Create(?:TZAbstractResultSetMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//004D6248
//constructor TZColumnInfo.Create(?:TZColumnInfo; _Dv__:Boolean);
//begin
{*
 004D6248    push       ebp
 004D6249    mov        ebp,esp
 004D624B    push       ebx
 004D624C    push       esi
 004D624D    test       dl,dl
>004D624F    je         004D6259
 004D6251    add        esp,0FFFFFFF0
 004D6254    call       @ClassCreate
 004D6259    mov        ebx,edx
 004D625B    mov        esi,eax
 004D625D    mov        byte ptr [esi+4],0; TZColumnInfo.?f4:LongBool
 004D6261    mov        byte ptr [esi+5],0; TZColumnInfo.?f5:byte
 004D6265    mov        byte ptr [esi+6],0; TZColumnInfo.?f6:byte
 004D6269    mov        byte ptr [esi+7],0; TZColumnInfo.?f7:byte
 004D626D    mov        byte ptr [esi+8],2; TZColumnInfo.?f8:byte
 004D6271    mov        byte ptr [esi+9],0; TZColumnInfo.?f9:byte
 004D6275    xor        eax,eax
 004D6277    mov        dword ptr [esi+0C],eax; TZColumnInfo.?fC:dword
 004D627A    lea        eax,[esi+10]; TZColumnInfo.?f10:String
 004D627D    call       @LStrClr
 004D6282    lea        eax,[esi+14]; TZColumnInfo.?f14:String
 004D6285    call       @LStrClr
 004D628A    lea        eax,[esi+18]; TZColumnInfo.?f18:String
 004D628D    call       @LStrClr
 004D6292    xor        eax,eax
 004D6294    mov        dword ptr [esi+1C],eax; TZColumnInfo.?f1C:Integer
 004D6297    xor        eax,eax
 004D6299    mov        dword ptr [esi+20],eax; TZColumnInfo.?f20:dword
 004D629C    lea        eax,[esi+24]; TZColumnInfo.?f24:String
 004D629F    call       @LStrClr
 004D62A4    lea        eax,[esi+28]; TZColumnInfo.?f28:String
 004D62A7    call       @LStrClr
 004D62AC    lea        eax,[esi+30]; TZColumnInfo.?f30:String
 004D62AF    call       @LStrClr
 004D62B4    mov        byte ptr [esi+2C],0; TZColumnInfo.?f2C:byte
 004D62B8    mov        byte ptr [esi+2D],1; TZColumnInfo.?f2D:byte
 004D62BC    mov        byte ptr [esi+2E],0; TZColumnInfo.?f2E:byte
 004D62C0    mov        byte ptr [esi+2F],0; TZColumnInfo.?f2F:byte
 004D62C4    mov        eax,esi
 004D62C6    test       bl,bl
>004D62C8    je         004D62D9
 004D62CA    call       @AfterConstruction
 004D62CF    pop        dword ptr fs:[0]
 004D62D6    add        esp,0C
 004D62D9    mov        eax,esi
 004D62DB    pop        esi
 004D62DC    pop        ebx
 004D62DD    pop        ebp
 004D62DE    ret
*}
//end;

//004D62E0
//procedure sub_004D62E0(?:TObject; ?:?);
//begin
{*
 004D62E0    push       ebp
 004D62E1    mov        ebp,esp
 004D62E3    push       ebx
 004D62E4    push       esi
 004D62E5    mov        esi,edx
 004D62E7    mov        ebx,eax
 004D62E9    mov        edx,esi
 004D62EB    mov        al,byte ptr [ebx+2C]
 004D62EE    call       004D2CF0
 004D62F3    pop        esi
 004D62F4    pop        ebx
 004D62F5    pop        ebp
 004D62F6    ret
*}
//end;

//004D62F8
//constructor TZAbstractResultSetMetadata.Create(?:TZAbstractResultSetMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 004D62F8    push       ebp
 004D62F9    mov        ebp,esp
 004D62FB    push       ecx
 004D62FC    push       ebx
 004D62FD    push       esi
 004D62FE    push       edi
 004D62FF    test       dl,dl
>004D6301    je         004D630B
 004D6303    add        esp,0FFFFFFF0
 004D6306    call       @ClassCreate
 004D630B    mov        dword ptr [ebp-4],ecx
 004D630E    mov        ebx,edx
 004D6310    mov        edi,eax
 004D6312    mov        esi,dword ptr [ebp+8]
 004D6315    mov        eax,dword ptr [ebp-4]
 004D6318    call       @IntfAddRef
 004D631D    mov        eax,dword ptr [ebp+0C]
 004D6320    call       @LStrAddRef
 004D6325    xor        eax,eax
 004D6327    push       ebp
 004D6328    push       4D63B7
 004D632D    push       dword ptr fs:[eax]
 004D6330    mov        dword ptr fs:[eax],esp
 004D6333    mov        ecx,esi
 004D6335    test       ecx,ecx
>004D6337    je         004D633C
 004D6339    sub        ecx,0FFFFFFF8
 004D633C    xor        edx,edx
 004D633E    mov        eax,edi
 004D6340    call       TAggregatedObject.Create
 004D6345    lea        eax,[edi+10]; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D6348    mov        edx,dword ptr [ebp-4]
 004D634B    call       @IntfCopy
 004D6350    lea        eax,[edi+18]; TZAbstractResultSetMetadata.?f18:String
 004D6353    mov        edx,dword ptr [ebp+0C]
 004D6356    call       @LStrAsg
 004D635B    cmp        dword ptr [edi+10],0; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D635F    setne      al
 004D6362    xor        al,1
 004D6364    mov        byte ptr [edi+0C],al; TZAbstractResultSetMetadata.?fC:byte
 004D6367    mov        dl,1
 004D6369    mov        eax,[004BD220]; TZHashMap
 004D636E    call       TZHashMap.Create; TZHashMap.Create
 004D6373    mov        dword ptr [edi+1C],eax; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6376    mov        ecx,dword ptr [edi+10]; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D6379    mov        dl,1
 004D637B    mov        eax,[004D8CEC]; TZDefaultIdentifierConvertor
 004D6380    call       TZDefaultIdentifierConvertor.Create; TZDefaultIdentifierConvertor.Create
 004D6385    mov        edx,eax
 004D6387    test       edx,edx
>004D6389    je         004D638E
 004D638B    sub        edx,0FFFFFFEC
 004D638E    lea        eax,[edi+20]; TZAbstractResultSetMetadata.?f20:IZIdentifierConvertor
 004D6391    call       @IntfCopy
 004D6396    mov        dword ptr [edi+24],esi; TZAbstractResultSetMetadata.?f24:dword
 004D6399    xor        eax,eax
 004D639B    pop        edx
 004D639C    pop        ecx
 004D639D    pop        ecx
 004D639E    mov        dword ptr fs:[eax],edx
 004D63A1    push       4D63BE
 004D63A6    lea        eax,[ebp-4]
 004D63A9    call       @IntfClear
 004D63AE    lea        eax,[ebp+0C]
 004D63B1    call       @LStrClr
 004D63B6    ret
<004D63B7    jmp        @HandleFinally
<004D63BC    jmp        004D63A6
 004D63BE    mov        eax,edi
 004D63C0    test       bl,bl
>004D63C2    je         004D63D3
 004D63C4    call       @AfterConstruction
 004D63C9    pop        dword ptr fs:[0]
 004D63D0    add        esp,0C
 004D63D3    mov        eax,edi
 004D63D5    pop        edi
 004D63D6    pop        esi
 004D63D7    pop        ebx
 004D63D8    pop        ecx
 004D63D9    pop        ebp
 004D63DA    ret        8
*}
//end;

//004D63E0
destructor TZAbstractResultSetMetadata.Destroy;
begin
{*
 004D63E0    push       ebp
 004D63E1    mov        ebp,esp
 004D63E3    push       ebx
 004D63E4    push       esi
 004D63E5    call       @BeforeDestruction
 004D63EA    mov        ebx,edx
 004D63EC    mov        esi,eax
 004D63EE    lea        eax,[esi+20]; TZAbstractResultSetMetadata.?f20:IZIdentifierConvertor
 004D63F1    call       @IntfClear
 004D63F6    lea        eax,[esi+10]; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D63F9    call       @IntfClear
 004D63FE    mov        eax,dword ptr [esi+1C]; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6401    test       eax,eax
>004D6403    je         004D6412
 004D6405    call       004BE514
 004D640A    mov        eax,dword ptr [esi+1C]; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D640D    call       TObject.Free
 004D6412    xor        eax,eax
 004D6414    mov        dword ptr [esi+1C],eax; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6417    mov        eax,dword ptr [esi+14]; TZAbstractResultSetMetadata.?f14:TStringList
 004D641A    test       eax,eax
>004D641C    je         004D6423
 004D641E    call       TObject.Free
 004D6423    mov        edx,ebx
 004D6425    and        dl,0FC
 004D6428    mov        eax,esi
 004D642A    call       TObject.Destroy
 004D642F    test       bl,bl
>004D6431    jle        004D643A
 004D6433    mov        eax,esi
 004D6435    call       @ClassDestroy
 004D643A    pop        esi
 004D643B    pop        ebx
 004D643C    pop        ebp
 004D643D    ret
*}
end;

//004D6440
//function sub_004D6440:?;
//begin
{*
 004D6440    mov        eax,dword ptr [eax+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6443    mov        eax,dword ptr [eax+28]
 004D6446    mov        eax,dword ptr [eax+8]
 004D6449    ret
*}
//end;

//004D644C
//function sub_004D644C(?:?):?;
//begin
{*
 004D644C    push       ebp
 004D644D    mov        ebp,esp
 004D644F    push       ebx
 004D6450    push       esi
 004D6451    mov        esi,edx
 004D6453    mov        ebx,eax
 004D6455    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D6459    jne        004D6462
 004D645B    mov        eax,ebx
 004D645D    call       004D7028
 004D6462    mov        edx,esi
 004D6464    sub        edx,1
>004D6467    jno        004D646E
 004D6469    call       @IntOver
 004D646E    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6471    mov        eax,dword ptr [eax+28]
 004D6474    call       TObjectList.GetItem
 004D6479    mov        al,byte ptr [eax+4]
 004D647C    pop        esi
 004D647D    pop        ebx
 004D647E    pop        ebp
 004D647F    ret
*}
//end;

//004D6480
//function sub_004D6480(?:?):?;
//begin
{*
 004D6480    push       ebp
 004D6481    mov        ebp,esp
 004D6483    push       ebx
 004D6484    push       esi
 004D6485    mov        esi,edx
 004D6487    mov        ebx,eax
 004D6489    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D648D    jne        004D6496
 004D648F    mov        eax,ebx
 004D6491    call       004D7028
 004D6496    mov        edx,esi
 004D6498    sub        edx,1
>004D649B    jno        004D64A2
 004D649D    call       @IntOver
 004D64A2    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D64A5    mov        eax,dword ptr [eax+28]
 004D64A8    call       TObjectList.GetItem
 004D64AD    mov        al,byte ptr [eax+5]
 004D64B0    pop        esi
 004D64B1    pop        ebx
 004D64B2    pop        ebp
 004D64B3    ret
*}
//end;

//004D64B4
//function sub_004D64B4(?:?):?;
//begin
{*
 004D64B4    push       ebp
 004D64B5    mov        ebp,esp
 004D64B7    push       ebx
 004D64B8    push       esi
 004D64B9    mov        esi,edx
 004D64BB    mov        ebx,eax
 004D64BD    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D64C1    jne        004D64CA
 004D64C3    mov        eax,ebx
 004D64C5    call       004D7028
 004D64CA    mov        edx,esi
 004D64CC    sub        edx,1
>004D64CF    jno        004D64D6
 004D64D1    call       @IntOver
 004D64D6    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D64D9    mov        eax,dword ptr [eax+28]
 004D64DC    call       TObjectList.GetItem
 004D64E1    mov        al,byte ptr [eax+6]
 004D64E4    pop        esi
 004D64E5    pop        ebx
 004D64E6    pop        ebp
 004D64E7    ret
*}
//end;

//004D64E8
//function sub_004D64E8(?:?):?;
//begin
{*
 004D64E8    push       ebp
 004D64E9    mov        ebp,esp
 004D64EB    push       ebx
 004D64EC    push       esi
 004D64ED    mov        esi,edx
 004D64EF    mov        ebx,eax
 004D64F1    mov        edx,esi
 004D64F3    sub        edx,1
>004D64F6    jno        004D64FD
 004D64F8    call       @IntOver
 004D64FD    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6500    mov        eax,dword ptr [eax+28]
 004D6503    call       TObjectList.GetItem
 004D6508    mov        al,byte ptr [eax+7]
 004D650B    pop        esi
 004D650C    pop        ebx
 004D650D    pop        ebp
 004D650E    ret
*}
//end;

//004D6510
//function sub_004D6510(?:?):?;
//begin
{*
 004D6510    push       ebp
 004D6511    mov        ebp,esp
 004D6513    push       ebx
 004D6514    push       esi
 004D6515    mov        esi,edx
 004D6517    mov        ebx,eax
 004D6519    cmp        byte ptr [ebx+0C],0; TZAbstractResultSetMetadata.?fC:byte
>004D651D    jne        004D6526
 004D651F    mov        eax,ebx
 004D6521    call       004D7028
 004D6526    mov        edx,esi
 004D6528    sub        edx,1
>004D652B    jno        004D6532
 004D652D    call       @IntOver
 004D6532    mov        eax,dword ptr [ebx+24]; TZAbstractResultSetMetadata.?f24:dword
 004D6535    mov        eax,dword ptr [eax+28]
 004D6538    call       TObjectList.GetItem
 004D653D    mov        al,byte ptr [eax+8]
 004D6540    pop        esi
 004D6541    pop        ebx
 004D6542    pop        ebp
 004D6543    ret
*}
//end;

//004D6544
//function sub_004D6544(?:?):?;
//begin
{*
 004D6544    push       ebp
 004D6545    mov        ebp,esp
 004D6547    push       ebx
 004D6548    push       esi
 004D6549    mov        esi,edx
 004D654B    mov        ebx,eax
 004D654D    mov        edx,esi
 004D654F    sub        edx,1
>004D6552    jno        004D6559
 004D6554    call       @IntOver
 004D6559    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D655C    mov        eax,dword ptr [eax+28]
 004D655F    call       TObjectList.GetItem
 004D6564    mov        al,byte ptr [eax+9]
 004D6567    pop        esi
 004D6568    pop        ebx
 004D6569    pop        ebp
 004D656A    ret
*}
//end;

//004D656C
//function sub_004D656C(?:?):?;
//begin
{*
 004D656C    push       ebp
 004D656D    mov        ebp,esp
 004D656F    push       ebx
 004D6570    push       esi
 004D6571    mov        esi,edx
 004D6573    mov        ebx,eax
 004D6575    mov        edx,esi
 004D6577    sub        edx,1
>004D657A    jno        004D6581
 004D657C    call       @IntOver
 004D6581    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6584    mov        eax,dword ptr [eax+28]
 004D6587    call       TObjectList.GetItem
 004D658C    mov        eax,dword ptr [eax+0C]
 004D658F    pop        esi
 004D6590    pop        ebx
 004D6591    pop        ebp
 004D6592    ret
*}
//end;

//004D6594
//procedure sub_004D6594(?:?; ?:?);
//begin
{*
 004D6594    push       ebp
 004D6595    mov        ebp,esp
 004D6597    add        esp,0FFFFFFE0
 004D659A    push       ebx
 004D659B    push       esi
 004D659C    push       edi
 004D659D    xor        ebx,ebx
 004D659F    mov        dword ptr [ebp-20],ebx
 004D65A2    mov        dword ptr [ebp-18],ebx
 004D65A5    mov        dword ptr [ebp-0C],ecx
 004D65A8    mov        dword ptr [ebp-8],edx
 004D65AB    mov        dword ptr [ebp-4],eax
 004D65AE    xor        eax,eax
 004D65B0    push       ebp
 004D65B1    push       4D66E6
 004D65B6    push       dword ptr fs:[eax]
 004D65B9    mov        dword ptr fs:[eax],esp
 004D65BC    mov        eax,dword ptr [ebp-4]
 004D65BF    cmp        dword ptr [eax+14],0; TZSQLiteResultSetMetadata.?f14:TStringList
>004D65C3    jne        004D66AD
 004D65C9    mov        eax,dword ptr [ebp-4]
 004D65CC    mov        eax,dword ptr [eax+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D65CF    mov        edi,dword ptr [eax+28]
 004D65D2    mov        dl,1
 004D65D4    mov        eax,[0041C8E4]; TStringList
 004D65D9    call       TObject.Create; TStringList.Create
 004D65DE    mov        edx,dword ptr [ebp-4]
 004D65E1    mov        dword ptr [edx+14],eax; TZSQLiteResultSetMetadata.?f14:TStringList
 004D65E4    mov        eax,dword ptr [edi+8]
 004D65E7    sub        eax,1
>004D65EA    jno        004D65F1
 004D65EC    call       @IntOver
 004D65F1    test       eax,eax
>004D65F3    jl         004D66AD
 004D65F9    inc        eax
 004D65FA    mov        dword ptr [ebp-1C],eax
 004D65FD    mov        dword ptr [ebp-10],0
 004D6604    xor        eax,eax
 004D6606    mov        dword ptr [ebp-14],eax
 004D6609    mov        edx,dword ptr [ebp-10]
 004D660C    mov        eax,edi
 004D660E    call       TObjectList.GetItem
 004D6613    mov        edx,dword ptr [eax+10]
 004D6616    lea        eax,[ebp-18]
 004D6619    call       @LStrLAsg
 004D661E    mov        ebx,dword ptr [ebp-10]
 004D6621    sub        ebx,1
>004D6624    jno        004D662B
 004D6626    call       @IntOver
 004D662B    test       ebx,ebx
>004D662D    jl         004D6657
 004D662F    inc        ebx
 004D6630    xor        esi,esi
 004D6632    mov        edx,esi
 004D6634    mov        eax,edi
 004D6636    call       TObjectList.GetItem
 004D663B    mov        eax,dword ptr [eax+10]
 004D663E    mov        edx,dword ptr [ebp-18]
 004D6641    call       @LStrCmp
>004D6646    jne        004D6653
 004D6648    add        dword ptr [ebp-14],1
>004D664C    jno        004D6653
 004D664E    call       @IntOver
 004D6653    inc        esi
 004D6654    dec        ebx
<004D6655    jne        004D6632
 004D6657    cmp        dword ptr [ebp-18],0
>004D665B    jne        004D666A
 004D665D    lea        eax,[ebp-18]
 004D6660    mov        edx,4D66FC; 'Column'
 004D6665    call       @LStrLAsg
 004D666A    cmp        dword ptr [ebp-14],0
>004D666E    jle        004D6693
 004D6670    push       dword ptr [ebp-18]
 004D6673    push       4D670C; '_'
 004D6678    lea        edx,[ebp-20]
 004D667B    mov        eax,dword ptr [ebp-14]
 004D667E    call       IntToStr
 004D6683    push       dword ptr [ebp-20]
 004D6686    lea        eax,[ebp-18]
 004D6689    mov        edx,3
 004D668E    call       @LStrCatN
 004D6693    mov        eax,dword ptr [ebp-4]
 004D6696    mov        eax,dword ptr [eax+14]; TZSQLiteResultSetMetadata.?f14:TStringList
 004D6699    mov        edx,dword ptr [ebp-18]
 004D669C    mov        ecx,dword ptr [eax]
 004D669E    call       dword ptr [ecx+38]; TStringList.Add
 004D66A1    inc        dword ptr [ebp-10]
 004D66A4    dec        dword ptr [ebp-1C]
<004D66A7    jne        004D6604
 004D66AD    mov        ecx,dword ptr [ebp-0C]
 004D66B0    mov        edx,dword ptr [ebp-8]
 004D66B3    sub        edx,1
>004D66B6    jno        004D66BD
 004D66B8    call       @IntOver
 004D66BD    mov        eax,dword ptr [ebp-4]
 004D66C0    mov        eax,dword ptr [eax+14]; TZSQLiteResultSetMetadata.?f14:TStringList
 004D66C3    mov        ebx,dword ptr [eax]
 004D66C5    call       dword ptr [ebx+0C]; TStringList.Get
 004D66C8    xor        eax,eax
 004D66CA    pop        edx
 004D66CB    pop        ecx
 004D66CC    pop        ecx
 004D66CD    mov        dword ptr fs:[eax],edx
 004D66D0    push       4D66ED
 004D66D5    lea        eax,[ebp-20]
 004D66D8    call       @LStrClr
 004D66DD    lea        eax,[ebp-18]
 004D66E0    call       @LStrClr
 004D66E5    ret
<004D66E6    jmp        @HandleFinally
<004D66EB    jmp        004D66D5
 004D66ED    pop        edi
 004D66EE    pop        esi
 004D66EF    pop        ebx
 004D66F0    mov        esp,ebp
 004D66F2    pop        ebp
 004D66F3    ret
*}
//end;

//004D6710
//procedure sub_004D6710(?:?; ?:?);
//begin
{*
 004D6710    push       ebp
 004D6711    mov        ebp,esp
 004D6713    push       ebx
 004D6714    push       esi
 004D6715    push       edi
 004D6716    mov        edi,ecx
 004D6718    mov        esi,edx
 004D671A    mov        ebx,eax
 004D671C    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D6720    jne        004D6729
 004D6722    mov        eax,ebx
 004D6724    call       004D7028
 004D6729    mov        edx,esi
 004D672B    sub        edx,1
>004D672E    jno        004D6735
 004D6730    call       @IntOver
 004D6735    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6738    mov        eax,dword ptr [eax+28]
 004D673B    call       TObjectList.GetItem
 004D6740    mov        edx,dword ptr [eax+14]
 004D6743    mov        eax,edi
 004D6745    call       @LStrAsg
 004D674A    pop        edi
 004D674B    pop        esi
 004D674C    pop        ebx
 004D674D    pop        ebp
 004D674E    ret
*}
//end;

//004D6750
//procedure sub_004D6750(?:?; ?:?);
//begin
{*
 004D6750    push       ebp
 004D6751    mov        ebp,esp
 004D6753    push       ebx
 004D6754    push       esi
 004D6755    push       edi
 004D6756    mov        edi,ecx
 004D6758    mov        esi,edx
 004D675A    mov        ebx,eax
 004D675C    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D6760    jne        004D6769
 004D6762    mov        eax,ebx
 004D6764    call       004D7028
 004D6769    mov        edx,esi
 004D676B    sub        edx,1
>004D676E    jno        004D6775
 004D6770    call       @IntOver
 004D6775    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6778    mov        eax,dword ptr [eax+28]
 004D677B    call       TObjectList.GetItem
 004D6780    mov        edx,dword ptr [eax+18]
 004D6783    mov        eax,edi
 004D6785    call       @LStrAsg
 004D678A    pop        edi
 004D678B    pop        esi
 004D678C    pop        ebx
 004D678D    pop        ebp
 004D678E    ret
*}
//end;

//004D6790
//function sub_004D6790(?:?):?;
//begin
{*
 004D6790    push       ebp
 004D6791    mov        ebp,esp
 004D6793    push       ebx
 004D6794    push       esi
 004D6795    mov        esi,edx
 004D6797    mov        ebx,eax
 004D6799    mov        edx,esi
 004D679B    sub        edx,1
>004D679E    jno        004D67A5
 004D67A0    call       @IntOver
 004D67A5    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D67A8    mov        eax,dword ptr [eax+28]
 004D67AB    call       TObjectList.GetItem
 004D67B0    mov        eax,dword ptr [eax+1C]
 004D67B3    pop        esi
 004D67B4    pop        ebx
 004D67B5    pop        ebp
 004D67B6    ret
*}
//end;

//004D67B8
//function sub_004D67B8(?:?):?;
//begin
{*
 004D67B8    push       ebp
 004D67B9    mov        ebp,esp
 004D67BB    push       ebx
 004D67BC    push       esi
 004D67BD    mov        esi,edx
 004D67BF    mov        ebx,eax
 004D67C1    mov        edx,esi
 004D67C3    sub        edx,1
>004D67C6    jno        004D67CD
 004D67C8    call       @IntOver
 004D67CD    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D67D0    mov        eax,dword ptr [eax+28]
 004D67D3    call       TObjectList.GetItem
 004D67D8    mov        eax,dword ptr [eax+20]
 004D67DB    pop        esi
 004D67DC    pop        ebx
 004D67DD    pop        ebp
 004D67DE    ret
*}
//end;

//004D67E0
//procedure sub_004D67E0(?:?; ?:?);
//begin
{*
 004D67E0    push       ebp
 004D67E1    mov        ebp,esp
 004D67E3    push       ebx
 004D67E4    push       esi
 004D67E5    push       edi
 004D67E6    mov        edi,ecx
 004D67E8    mov        esi,edx
 004D67EA    mov        ebx,eax
 004D67EC    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D67F0    jne        004D67F9
 004D67F2    mov        eax,ebx
 004D67F4    call       004D7028
 004D67F9    mov        edx,esi
 004D67FB    sub        edx,1
>004D67FE    jno        004D6805
 004D6800    call       @IntOver
 004D6805    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6808    mov        eax,dword ptr [eax+28]
 004D680B    call       TObjectList.GetItem
 004D6810    mov        edx,dword ptr [eax+24]
 004D6813    mov        eax,edi
 004D6815    call       @LStrAsg
 004D681A    pop        edi
 004D681B    pop        esi
 004D681C    pop        ebx
 004D681D    pop        ebp
 004D681E    ret
*}
//end;

//004D6820
//procedure sub_004D6820(?:?; ?:?);
//begin
{*
 004D6820    push       ebp
 004D6821    mov        ebp,esp
 004D6823    push       ebx
 004D6824    push       esi
 004D6825    push       edi
 004D6826    mov        edi,ecx
 004D6828    mov        esi,edx
 004D682A    mov        ebx,eax
 004D682C    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D6830    jne        004D6839
 004D6832    mov        eax,ebx
 004D6834    call       004D7028
 004D6839    mov        edx,esi
 004D683B    sub        edx,1
>004D683E    jno        004D6845
 004D6840    call       @IntOver
 004D6845    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6848    mov        eax,dword ptr [eax+28]
 004D684B    call       TObjectList.GetItem
 004D6850    mov        edx,dword ptr [eax+28]
 004D6853    mov        eax,edi
 004D6855    call       @LStrAsg
 004D685A    pop        edi
 004D685B    pop        esi
 004D685C    pop        ebx
 004D685D    pop        ebp
 004D685E    ret
*}
//end;

//004D6860
//function sub_004D6860(?:?):?;
//begin
{*
 004D6860    push       ebp
 004D6861    mov        ebp,esp
 004D6863    push       ebx
 004D6864    push       esi
 004D6865    mov        esi,edx
 004D6867    mov        ebx,eax
 004D6869    mov        edx,esi
 004D686B    sub        edx,1
>004D686E    jno        004D6875
 004D6870    call       @IntOver
 004D6875    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6878    mov        eax,dword ptr [eax+28]
 004D687B    call       TObjectList.GetItem
 004D6880    mov        al,byte ptr [eax+2C]
 004D6883    pop        esi
 004D6884    pop        ebx
 004D6885    pop        ebp
 004D6886    ret
*}
//end;

//004D6888
//procedure sub_004D6888(?:?; ?:?);
//begin
{*
 004D6888    push       ebp
 004D6889    mov        ebp,esp
 004D688B    push       ebx
 004D688C    push       esi
 004D688D    push       edi
 004D688E    mov        edi,ecx
 004D6890    mov        esi,edx
 004D6892    mov        ebx,eax
 004D6894    mov        edx,esi
 004D6896    sub        edx,1
>004D6899    jno        004D68A0
 004D689B    call       @IntOver
 004D68A0    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D68A3    mov        eax,dword ptr [eax+28]
 004D68A6    call       TObjectList.GetItem
 004D68AB    mov        edx,edi
 004D68AD    call       004D62E0
 004D68B2    pop        edi
 004D68B3    pop        esi
 004D68B4    pop        ebx
 004D68B5    pop        ebp
 004D68B6    ret
*}
//end;

//004D68B8
//function sub_004D68B8(?:?):?;
//begin
{*
 004D68B8    push       ebp
 004D68B9    mov        ebp,esp
 004D68BB    push       ebx
 004D68BC    push       esi
 004D68BD    mov        esi,edx
 004D68BF    mov        ebx,eax
 004D68C1    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D68C5    jne        004D68CE
 004D68C7    mov        eax,ebx
 004D68C9    call       004D7028
 004D68CE    mov        edx,esi
 004D68D0    sub        edx,1
>004D68D3    jno        004D68DA
 004D68D5    call       @IntOver
 004D68DA    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D68DD    mov        eax,dword ptr [eax+28]
 004D68E0    call       TObjectList.GetItem
 004D68E5    mov        al,byte ptr [eax+2D]
 004D68E8    pop        esi
 004D68E9    pop        ebx
 004D68EA    pop        ebp
 004D68EB    ret
*}
//end;

//004D68EC
//function sub_004D68EC(?:?):?;
//begin
{*
 004D68EC    push       ebp
 004D68ED    mov        ebp,esp
 004D68EF    push       ebx
 004D68F0    push       esi
 004D68F1    mov        esi,edx
 004D68F3    mov        ebx,eax
 004D68F5    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D68F9    jne        004D6902
 004D68FB    mov        eax,ebx
 004D68FD    call       004D7028
 004D6902    mov        edx,esi
 004D6904    sub        edx,1
>004D6907    jno        004D690E
 004D6909    call       @IntOver
 004D690E    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6911    mov        eax,dword ptr [eax+28]
 004D6914    call       TObjectList.GetItem
 004D6919    mov        al,byte ptr [eax+2E]
 004D691C    pop        esi
 004D691D    pop        ebx
 004D691E    pop        ebp
 004D691F    ret
*}
//end;

//004D6920
//function sub_004D6920(?:?):?;
//begin
{*
 004D6920    push       ebp
 004D6921    mov        ebp,esp
 004D6923    push       ebx
 004D6924    push       esi
 004D6925    mov        esi,edx
 004D6927    mov        ebx,eax
 004D6929    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D692D    jne        004D6936
 004D692F    mov        eax,ebx
 004D6931    call       004D7028
 004D6936    mov        edx,esi
 004D6938    sub        edx,1
>004D693B    jno        004D6942
 004D693D    call       @IntOver
 004D6942    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D6945    mov        eax,dword ptr [eax+28]
 004D6948    call       TObjectList.GetItem
 004D694D    mov        al,byte ptr [eax+2F]
 004D6950    pop        esi
 004D6951    pop        ebx
 004D6952    pop        ebp
 004D6953    ret
*}
//end;

//004D6954
//procedure sub_004D6954(?:?; ?:?);
//begin
{*
 004D6954    push       ebp
 004D6955    mov        ebp,esp
 004D6957    push       ebx
 004D6958    push       esi
 004D6959    push       edi
 004D695A    mov        edi,ecx
 004D695C    mov        esi,edx
 004D695E    mov        ebx,eax
 004D6960    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D6964    jne        004D696D
 004D6966    mov        eax,ebx
 004D6968    call       004D7028
 004D696D    mov        edx,esi
 004D696F    sub        edx,1
>004D6972    jno        004D6979
 004D6974    call       @IntOver
 004D6979    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D697C    mov        eax,dword ptr [eax+28]
 004D697F    call       TObjectList.GetItem
 004D6984    mov        edx,dword ptr [eax+30]
 004D6987    mov        eax,edi
 004D6989    call       @LStrAsg
 004D698E    pop        edi
 004D698F    pop        esi
 004D6990    pop        ebx
 004D6991    pop        ebp
 004D6992    ret
*}
//end;

//004D6994
//procedure sub_004D6994(?:?);
//begin
{*
 004D6994    push       ebp
 004D6995    mov        ebp,esp
 004D6997    push       ebx
 004D6998    push       esi
 004D6999    mov        esi,edx
 004D699B    mov        ebx,eax
 004D699D    cmp        byte ptr [ebx+0C],0; TZSQLiteResultSetMetadata.?fC:byte
>004D69A1    jne        004D69AA
 004D69A3    mov        eax,ebx
 004D69A5    call       004D7028
 004D69AA    mov        edx,esi
 004D69AC    sub        edx,1
>004D69AF    jno        004D69B6
 004D69B1    call       @IntOver
 004D69B6    mov        eax,dword ptr [ebx+24]; TZSQLiteResultSetMetadata.?f24:dword
 004D69B9    mov        eax,dword ptr [eax+28]
 004D69BC    call       TObjectList.GetItem
 004D69C1    cmp        dword ptr [eax+30],0
 004D69C5    sete       al
 004D69C8    xor        al,1
 004D69CA    pop        esi
 004D69CB    pop        ebx
 004D69CC    pop        ebp
 004D69CD    ret
*}
//end;

//004D69D0
//procedure sub_004D69D0(?:TZAbstractResultSetMetadata; ?:?; ?:?);
//begin
{*
 004D69D0    push       ebp
 004D69D1    mov        ebp,esp
 004D69D3    push       0
 004D69D5    push       0
 004D69D7    push       0
 004D69D9    push       0
 004D69DB    push       0
 004D69DD    push       ebx
 004D69DE    push       esi
 004D69DF    mov        dword ptr [ebp-4],ecx
 004D69E2    mov        esi,edx
 004D69E4    mov        ebx,eax
 004D69E6    xor        eax,eax
 004D69E8    push       ebp
 004D69E9    push       4D6AAE
 004D69EE    push       dword ptr fs:[eax]
 004D69F1    mov        dword ptr fs:[eax],esp
 004D69F4    lea        edx,[ebp-0C]
 004D69F7    mov        eax,esi
 004D69F9    call       004C2158
 004D69FE    mov        ecx,dword ptr [ebp-0C]
 004D6A01    mov        dl,1
 004D6A03    mov        eax,[004C46E8]; TZAnyValue
 004D6A08    call       TZAnyValue.Create; TZAnyValue.Create
 004D6A0D    mov        edx,eax
 004D6A0F    test       edx,edx
>004D6A11    je         004D6A16
 004D6A13    sub        edx,0FFFFFFC0
 004D6A16    lea        eax,[ebp-8]
 004D6A19    call       @IntfCopy
 004D6A1E    lea        ecx,[ebp-10]
 004D6A21    mov        edx,dword ptr [ebp-8]
 004D6A24    mov        eax,dword ptr [ebx+1C]; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6A27    call       004BE3E8
 004D6A2C    cmp        dword ptr [ebp-10],0
>004D6A30    jne        004D6A5F
 004D6A32    mov        eax,dword ptr [esi+0C]
 004D6A35    push       eax
 004D6A36    push       0
 004D6A38    mov        eax,dword ptr [ebp-4]
 004D6A3B    push       eax
 004D6A3C    mov        ecx,dword ptr [esi+8]
 004D6A3F    mov        edx,dword ptr [esi+4]
 004D6A42    mov        eax,dword ptr [ebx+10]; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D6A45    mov        esi,dword ptr [eax]
 004D6A47    call       dword ptr [esi+1FC]
 004D6A4D    mov        ecx,dword ptr [ebp-4]
 004D6A50    mov        ecx,dword ptr [ecx]
 004D6A52    mov        edx,dword ptr [ebp-8]
 004D6A55    mov        eax,dword ptr [ebx+1C]; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6A58    call       004BE420
>004D6A5D    jmp        004D6A7D
 004D6A5F    lea        ecx,[ebp-14]
 004D6A62    mov        edx,dword ptr [ebp-8]
 004D6A65    mov        eax,dword ptr [ebx+1C]; TZAbstractResultSetMetadata.?f1C:TZHashMap
 004D6A68    call       004BE3E8
 004D6A6D    mov        edx,dword ptr [ebp-14]
 004D6A70    mov        eax,dword ptr [ebp-4]
 004D6A73    mov        ecx,4D6ABC; ['{8F4C4D10-2425-409E-96A9-7142007CC1B2}']
 004D6A78    call       @IntfCast
 004D6A7D    xor        eax,eax
 004D6A7F    pop        edx
 004D6A80    pop        ecx
 004D6A81    pop        ecx
 004D6A82    mov        dword ptr fs:[eax],edx
 004D6A85    push       4D6AB5
 004D6A8A    lea        eax,[ebp-14]
 004D6A8D    mov        edx,dword ptr ds:[4011A8]; IInterface
 004D6A93    mov        ecx,2
 004D6A98    call       @FinalizeArray
 004D6A9D    lea        eax,[ebp-0C]
 004D6AA0    call       @LStrClr
 004D6AA5    lea        eax,[ebp-8]
 004D6AA8    call       @IntfClear
 004D6AAD    ret
<004D6AAE    jmp        @HandleFinally
<004D6AB3    jmp        004D6A8A
 004D6AB5    pop        esi
 004D6AB6    pop        ebx
 004D6AB7    mov        esp,ebp
 004D6AB9    pop        ebp
 004D6ABA    ret
*}
//end;

//004D6ACC
//procedure sub_004D6ACC(?:TZSQLiteResultSetMetadata; ?:?);
//begin
{*
 004D6ACC    push       ebp
 004D6ACD    mov        ebp,esp
 004D6ACF    push       ebx
 004D6AD0    mov        ebx,edx
 004D6AD2    mov        byte ptr [ebx+2D],1
 004D6AD6    mov        byte ptr [ebx+2E],0
 004D6ADA    mov        byte ptr [ebx+2F],0
 004D6ADE    lea        eax,[ebx+28]
 004D6AE1    call       @LStrClr
 004D6AE6    lea        eax,[ebx+18]
 004D6AE9    call       @LStrClr
 004D6AEE    lea        eax,[ebx+24]
 004D6AF1    call       @LStrClr
 004D6AF6    lea        eax,[ebx+14]
 004D6AF9    call       @LStrClr
 004D6AFE    pop        ebx
 004D6AFF    pop        ebp
 004D6B00    ret
*}
//end;

//004D6B04
//function sub_004D6B04(?:TZSQLiteResultSetMetadata; ?:?; ?:?; ?:?):?;
//begin
{*
 004D6B04    push       ebp
 004D6B05    mov        ebp,esp
 004D6B07    push       ecx
 004D6B08    mov        ecx,5
 004D6B0D    push       0
 004D6B0F    push       0
 004D6B11    dec        ecx
<004D6B12    jne        004D6B0D
 004D6B14    xchg       ecx,dword ptr [ebp-4]
 004D6B17    push       ebx
 004D6B18    push       esi
 004D6B19    push       edi
 004D6B1A    mov        edi,ecx
 004D6B1C    mov        dword ptr [ebp-4],edx
 004D6B1F    mov        esi,eax
 004D6B21    mov        ebx,dword ptr [ebp+8]
 004D6B24    mov        eax,dword ptr [ebp-4]
 004D6B27    call       @LStrAddRef
 004D6B2C    xor        eax,eax
 004D6B2E    push       ebp
 004D6B2F    push       4D6DB9
 004D6B34    push       dword ptr fs:[eax]
 004D6B37    mov        dword ptr fs:[eax],esp
 004D6B3A    mov        byte ptr [ebp-5],0
 004D6B3E    lea        ecx,[ebp-0C]
 004D6B41    mov        edx,edi
 004D6B43    mov        eax,esi
 004D6B45    call       004D69D0
 004D6B4A    cmp        dword ptr [ebp-0C],0
>004D6B4E    je         004D6D8E
 004D6B54    mov        eax,dword ptr [ebp-0C]
 004D6B57    mov        edx,dword ptr [eax]
 004D6B59    call       dword ptr [edx+0E4]
>004D6B5F    jmp        004D6B7E
 004D6B61    lea        ecx,[ebp-10]
 004D6B64    mov        edx,4
 004D6B69    mov        eax,dword ptr [ebp-0C]
 004D6B6C    mov        esi,dword ptr [eax]
 004D6B6E    call       dword ptr [esi+20]
 004D6B71    mov        eax,dword ptr [ebp-10]
 004D6B74    mov        edx,dword ptr [ebp-4]
 004D6B77    call       @LStrCmp
>004D6B7C    je         004D6B8A
 004D6B7E    mov        eax,dword ptr [ebp-0C]
 004D6B81    mov        edx,dword ptr [eax]
 004D6B83    call       dword ptr [edx+0C]
 004D6B86    test       al,al
<004D6B88    jne        004D6B61
 004D6B8A    mov        eax,dword ptr [ebp-0C]
 004D6B8D    mov        edx,dword ptr [eax]
 004D6B8F    call       dword ptr [edx+0D8]
 004D6B95    test       al,al
>004D6B97    je         004D6BFA
 004D6B99    mov        eax,dword ptr [ebp-0C]
 004D6B9C    mov        edx,dword ptr [eax]
 004D6B9E    call       dword ptr [edx+0E4]
>004D6BA4    jmp        004D6BDB
 004D6BA6    lea        ecx,[ebp-18]
 004D6BA9    mov        edx,4
 004D6BAE    mov        eax,dword ptr [ebp-0C]
 004D6BB1    mov        esi,dword ptr [eax]
 004D6BB3    call       dword ptr [esi+20]
 004D6BB6    mov        eax,dword ptr [ebp-18]
 004D6BB9    lea        edx,[ebp-14]
 004D6BBC    call       AnsiUpperCase
 004D6BC1    mov        eax,dword ptr [ebp-14]
 004D6BC4    push       eax
 004D6BC5    lea        edx,[ebp-1C]
 004D6BC8    mov        eax,dword ptr [ebp-4]
 004D6BCB    call       AnsiUpperCase
 004D6BD0    mov        edx,dword ptr [ebp-1C]
 004D6BD3    pop        eax
 004D6BD4    call       @LStrCmp
>004D6BD9    je         004D6BE7
 004D6BDB    mov        eax,dword ptr [ebp-0C]
 004D6BDE    mov        edx,dword ptr [eax]
 004D6BE0    call       dword ptr [edx+0C]
 004D6BE3    test       al,al
<004D6BE5    jne        004D6BA6
 004D6BE7    mov        eax,dword ptr [ebp-0C]
 004D6BEA    mov        edx,dword ptr [eax]
 004D6BEC    call       dword ptr [edx+0D8]
 004D6BF2    test       al,al
>004D6BF4    jne        004D6D8E
 004D6BFA    mov        byte ptr [ebp-5],1
 004D6BFE    lea        ecx,[ebp-20]
 004D6C01    mov        edx,1
 004D6C06    mov        eax,dword ptr [ebp-0C]
 004D6C09    mov        esi,dword ptr [eax]
 004D6C0B    call       dword ptr [esi+20]
 004D6C0E    mov        edx,dword ptr [ebp-20]
 004D6C11    lea        eax,[ebx+28]
 004D6C14    call       @LStrAsg
 004D6C19    lea        ecx,[ebp-24]
 004D6C1C    mov        edx,2
 004D6C21    mov        eax,dword ptr [ebp-0C]
 004D6C24    mov        esi,dword ptr [eax]
 004D6C26    call       dword ptr [esi+20]
 004D6C29    mov        edx,dword ptr [ebp-24]
 004D6C2C    lea        eax,[ebx+18]
 004D6C2F    call       @LStrAsg
 004D6C34    lea        ecx,[ebp-28]
 004D6C37    mov        edx,3
 004D6C3C    mov        eax,dword ptr [ebp-0C]
 004D6C3F    mov        esi,dword ptr [eax]
 004D6C41    call       dword ptr [esi+20]
 004D6C44    mov        edx,dword ptr [ebp-28]
 004D6C47    lea        eax,[ebx+24]
 004D6C4A    call       @LStrAsg
 004D6C4F    lea        eax,[ebx+14]
 004D6C52    mov        edx,dword ptr [ebp-4]
 004D6C55    call       @LStrAsg
 004D6C5A    mov        edx,5
 004D6C5F    mov        eax,dword ptr [ebp-0C]
 004D6C62    mov        ecx,dword ptr [eax]
 004D6C64    call       dword ptr [ecx+18]
 004D6C67    test       al,al
>004D6C69    jne        004D6C7B
 004D6C6B    mov        edx,5
 004D6C70    mov        eax,dword ptr [ebp-0C]
 004D6C73    mov        ecx,dword ptr [eax]
 004D6C75    call       dword ptr [ecx+34]
 004D6C78    mov        byte ptr [ebx+2C],al
 004D6C7B    mov        edx,0B
 004D6C80    mov        eax,dword ptr [ebp-0C]
 004D6C83    mov        ecx,dword ptr [eax]
 004D6C85    call       dword ptr [ecx+18]
 004D6C88    test       al,al
>004D6C8A    jne        004D6C9C
 004D6C8C    mov        edx,0B
 004D6C91    mov        eax,dword ptr [ebp-0C]
 004D6C94    mov        ecx,dword ptr [eax]
 004D6C96    call       dword ptr [ecx+34]
 004D6C99    mov        byte ptr [ebx+8],al
 004D6C9C    mov        edx,13
 004D6CA1    mov        eax,dword ptr [ebp-0C]
 004D6CA4    mov        ecx,dword ptr [eax]
 004D6CA6    call       dword ptr [ecx+18]
 004D6CA9    test       al,al
>004D6CAB    jne        004D6CBD
 004D6CAD    mov        edx,13
 004D6CB2    mov        eax,dword ptr [ebp-0C]
 004D6CB5    mov        ecx,dword ptr [eax]
 004D6CB7    call       dword ptr [ecx+28]
 004D6CBA    mov        byte ptr [ebx+4],al
 004D6CBD    mov        edx,14
 004D6CC2    mov        eax,dword ptr [ebp-0C]
 004D6CC5    mov        ecx,dword ptr [eax]
 004D6CC7    call       dword ptr [ecx+18]
 004D6CCA    test       al,al
>004D6CCC    jne        004D6CDE
 004D6CCE    mov        edx,14
 004D6CD3    mov        eax,dword ptr [ebp-0C]
 004D6CD6    mov        ecx,dword ptr [eax]
 004D6CD8    call       dword ptr [ecx+28]
 004D6CDB    mov        byte ptr [ebx+5],al
 004D6CDE    mov        edx,15
 004D6CE3    mov        eax,dword ptr [ebp-0C]
 004D6CE6    mov        ecx,dword ptr [eax]
 004D6CE8    call       dword ptr [ecx+18]
 004D6CEB    test       al,al
>004D6CED    jne        004D6CFF
 004D6CEF    mov        edx,15
 004D6CF4    mov        eax,dword ptr [ebp-0C]
 004D6CF7    mov        ecx,dword ptr [eax]
 004D6CF9    call       dword ptr [ecx+28]
 004D6CFC    mov        byte ptr [ebx+6],al
 004D6CFF    mov        edx,16
 004D6D04    mov        eax,dword ptr [ebp-0C]
 004D6D07    mov        ecx,dword ptr [eax]
 004D6D09    call       dword ptr [ecx+18]
 004D6D0C    test       al,al
>004D6D0E    jne        004D6D20
 004D6D10    mov        edx,16
 004D6D15    mov        eax,dword ptr [ebp-0C]
 004D6D18    mov        ecx,dword ptr [eax]
 004D6D1A    call       dword ptr [ecx+28]
 004D6D1D    mov        byte ptr [ebx+2E],al
 004D6D20    mov        edx,17
 004D6D25    mov        eax,dword ptr [ebp-0C]
 004D6D28    mov        ecx,dword ptr [eax]
 004D6D2A    call       dword ptr [ecx+18]
 004D6D2D    test       al,al
>004D6D2F    jne        004D6D41
 004D6D31    mov        edx,17
 004D6D36    mov        eax,dword ptr [ebp-0C]
 004D6D39    mov        ecx,dword ptr [eax]
 004D6D3B    call       dword ptr [ecx+28]
 004D6D3E    mov        byte ptr [ebx+2F],al
 004D6D41    mov        edx,18
 004D6D46    mov        eax,dword ptr [ebp-0C]
 004D6D49    mov        ecx,dword ptr [eax]
 004D6D4B    call       dword ptr [ecx+18]
 004D6D4E    test       al,al
>004D6D50    jne        004D6D62
 004D6D52    mov        edx,18
 004D6D57    mov        eax,dword ptr [ebp-0C]
 004D6D5A    mov        ecx,dword ptr [eax]
 004D6D5C    call       dword ptr [ecx+28]
 004D6D5F    mov        byte ptr [ebx+2D],al
 004D6D62    mov        edx,0D
 004D6D67    mov        eax,dword ptr [ebp-0C]
 004D6D6A    mov        ecx,dword ptr [eax]
 004D6D6C    call       dword ptr [ecx+18]
 004D6D6F    test       al,al
>004D6D71    jne        004D6D8E
 004D6D73    lea        ecx,[ebp-2C]
 004D6D76    mov        edx,0D
 004D6D7B    mov        eax,dword ptr [ebp-0C]
 004D6D7E    mov        esi,dword ptr [eax]
 004D6D80    call       dword ptr [esi+20]
 004D6D83    mov        edx,dword ptr [ebp-2C]
 004D6D86    lea        eax,[ebx+30]
 004D6D89    call       @LStrAsg
 004D6D8E    xor        eax,eax
 004D6D90    pop        edx
 004D6D91    pop        ecx
 004D6D92    pop        ecx
 004D6D93    mov        dword ptr fs:[eax],edx
 004D6D96    push       4D6DC0
 004D6D9B    lea        eax,[ebp-2C]
 004D6D9E    mov        edx,8
 004D6DA3    call       @LStrArrayClr
 004D6DA8    lea        eax,[ebp-0C]
 004D6DAB    call       @IntfClear
 004D6DB0    lea        eax,[ebp-4]
 004D6DB3    call       @LStrClr
 004D6DB8    ret
<004D6DB9    jmp        @HandleFinally
<004D6DBE    jmp        004D6D9B
 004D6DC0    mov        al,byte ptr [ebp-5]
 004D6DC3    pop        edi
 004D6DC4    pop        esi
 004D6DC5    pop        ebx
 004D6DC6    mov        esp,ebp
 004D6DC8    pop        ebp
 004D6DC9    ret        4
*}
//end;

//004D6DCC
//function sub_004D6DCC(?:TZSQLiteResultSetMetadata; ?:?; ?:?):?;
//begin
{*
 004D6DCC    push       ebp
 004D6DCD    mov        ebp,esp
 004D6DCF    push       ecx
 004D6DD0    push       ebx
 004D6DD1    push       esi
 004D6DD2    push       edi
 004D6DD3    mov        edi,ecx
 004D6DD5    mov        ebx,edx
 004D6DD7    mov        esi,eax
 004D6DD9    mov        byte ptr [ebp-1],0
 004D6DDD    mov        edx,edi
 004D6DDF    mov        eax,esi
 004D6DE1    call       004D6ACC
 004D6DE6    test       ebx,ebx
>004D6DE8    je         004D6E07
 004D6DEA    cmp        dword ptr [ebx+1C],0
>004D6DEE    je         004D6E07
 004D6DF0    cmp        byte ptr [ebx+4],0
>004D6DF4    je         004D6E07
 004D6DF6    push       edi
 004D6DF7    mov        ecx,dword ptr [ebx+1C]
 004D6DFA    mov        edx,dword ptr [ebx+14]
 004D6DFD    mov        eax,esi
 004D6DFF    call       004D6B04
 004D6E04    mov        byte ptr [ebp-1],al
 004D6E07    mov        al,byte ptr [ebp-1]
 004D6E0A    pop        edi
 004D6E0B    pop        esi
 004D6E0C    pop        ebx
 004D6E0D    pop        ecx
 004D6E0E    pop        ebp
 004D6E0F    ret
*}
//end;

//004D6E10
//procedure sub_004D6E10(?:?; ?:?; ?:?);
//begin
{*
 004D6E10    push       ebp
 004D6E11    mov        ebp,esp
 004D6E13    add        esp,0FFFFFFF8
 004D6E16    push       ebx
 004D6E17    push       esi
 004D6E18    push       edi
 004D6E19    mov        ebx,ecx
 004D6E1B    mov        esi,edx
 004D6E1D    mov        dword ptr [ebp-4],eax
 004D6E20    mov        eax,dword ptr [ebp+8]
 004D6E23    call       @IntfAddRef
 004D6E28    xor        eax,eax
 004D6E2A    push       ebp
 004D6E2B    push       4D6EC9
 004D6E30    push       dword ptr fs:[eax]
 004D6E33    mov        dword ptr fs:[eax],esp
 004D6E36    mov        ecx,dword ptr [ebx+10]
 004D6E39    mov        edx,esi
 004D6E3B    mov        eax,dword ptr [ebp+8]
 004D6E3E    mov        esi,dword ptr [eax]
 004D6E40    call       dword ptr [esi+2C]
 004D6E43    mov        edi,eax
 004D6E45    mov        ecx,ebx
 004D6E47    mov        edx,edi
 004D6E49    mov        eax,dword ptr [ebp-4]
 004D6E4C    call       004D6DCC
 004D6E51    cmp        dword ptr [ebx+14],0
>004D6E55    jne        004D6EB3
 004D6E57    xor        esi,esi
 004D6E59    mov        byte ptr [ebp-5],0
>004D6E5D    jmp        004D6E9B
 004D6E5F    mov        edx,esi
 004D6E61    mov        eax,dword ptr [ebp+8]
 004D6E64    mov        ecx,dword ptr [eax]
 004D6E66    call       dword ptr [ecx+3C]
 004D6E69    test       edi,edi
>004D6E6B    je         004D6E80
 004D6E6D    push       ebx
 004D6E6E    mov        edx,dword ptr [edi+14]
 004D6E71    mov        ecx,eax
 004D6E73    mov        eax,dword ptr [ebp-4]
 004D6E76    call       004D6B04
 004D6E7B    mov        byte ptr [ebp-5],al
>004D6E7E    jmp        004D6E91
 004D6E80    push       ebx
 004D6E81    mov        ecx,eax
 004D6E83    mov        edx,dword ptr [ebx+10]
 004D6E86    mov        eax,dword ptr [ebp-4]
 004D6E89    call       004D6B04
 004D6E8E    mov        byte ptr [ebp-5],al
 004D6E91    add        esi,1
>004D6E94    jno        004D6E9B
 004D6E96    call       @IntOver
 004D6E9B    cmp        dword ptr [ebx+14],0
>004D6E9F    jne        004D6EB3
 004D6EA1    mov        eax,dword ptr [ebp+8]
 004D6EA4    mov        edx,dword ptr [eax]
 004D6EA6    call       dword ptr [edx+34]
 004D6EA9    cmp        esi,eax
>004D6EAB    jge        004D6EB3
 004D6EAD    cmp        byte ptr [ebp-5],0
<004D6EB1    je         004D6E5F
 004D6EB3    xor        eax,eax
 004D6EB5    pop        edx
 004D6EB6    pop        ecx
 004D6EB7    pop        ecx
 004D6EB8    mov        dword ptr fs:[eax],edx
 004D6EBB    push       4D6ED0
 004D6EC0    lea        eax,[ebp+8]
 004D6EC3    call       @IntfClear
 004D6EC8    ret
<004D6EC9    jmp        @HandleFinally
<004D6ECE    jmp        004D6EC0
 004D6ED0    pop        edi
 004D6ED1    pop        esi
 004D6ED2    pop        ebx
 004D6ED3    pop        ecx
 004D6ED4    pop        ecx
 004D6ED5    pop        ebp
 004D6ED6    ret        4
*}
//end;

//004D6EDC
//procedure sub_004D6EDC(?:TZAbstractResultSetMetadata; ?:?);
//begin
{*
 004D6EDC    push       ebp
 004D6EDD    mov        ebp,esp
 004D6EDF    add        esp,0FFFFFFEC
 004D6EE2    push       ebx
 004D6EE3    push       esi
 004D6EE4    push       edi
 004D6EE5    xor        ecx,ecx
 004D6EE7    mov        dword ptr [ebp-14],ecx
 004D6EEA    mov        dword ptr [ebp-10],ecx
 004D6EED    mov        dword ptr [ebp-8],edx
 004D6EF0    mov        dword ptr [ebp-4],eax
 004D6EF3    mov        eax,dword ptr [ebp-8]
 004D6EF6    call       @IntfAddRef
 004D6EFB    xor        eax,eax
 004D6EFD    push       ebp
 004D6EFE    push       4D700E
 004D6F03    push       dword ptr fs:[eax]
 004D6F06    mov        dword ptr fs:[eax],esp
 004D6F09    xor        ebx,ebx
>004D6F0B    jmp        004D6FD8
 004D6F10    mov        edx,ebx
 004D6F12    mov        eax,dword ptr [ebp-8]
 004D6F15    mov        ecx,dword ptr [eax]
 004D6F17    call       dword ptr [ecx+38]
 004D6F1A    mov        dword ptr [ebp-0C],eax
 004D6F1D    mov        eax,dword ptr [ebp-0C]
 004D6F20    mov        eax,dword ptr [eax+14]
 004D6F23    mov        edx,4D7024; '*'
 004D6F28    call       @LStrCmp
>004D6F2D    jne        004D6FCE
 004D6F33    mov        eax,dword ptr [ebp-0C]
 004D6F36    cmp        dword ptr [eax+1C],0
>004D6F3A    je         004D6FCE
 004D6F40    mov        eax,dword ptr [ebp-0C]
 004D6F43    mov        esi,dword ptr [eax+1C]
 004D6F46    lea        ecx,[ebp-10]
 004D6F49    mov        edx,esi
 004D6F4B    mov        eax,dword ptr [ebp-4]
 004D6F4E    call       004D69D0
 004D6F53    cmp        dword ptr [ebp-10],0
>004D6F57    je         004D6FB9
 004D6F59    mov        eax,dword ptr [ebp-10]
 004D6F5C    mov        edx,dword ptr [eax]
 004D6F5E    call       dword ptr [edx+0E4]
>004D6F64    jmp        004D6FAD
 004D6F66    mov        eax,dword ptr [esi+4]
 004D6F69    push       eax
 004D6F6A    mov        eax,dword ptr [esi+8]
 004D6F6D    push       eax
 004D6F6E    mov        eax,dword ptr [esi+0C]
 004D6F71    push       eax
 004D6F72    lea        ecx,[ebp-14]
 004D6F75    mov        edx,4
 004D6F7A    mov        eax,dword ptr [ebp-10]
 004D6F7D    mov        edi,dword ptr [eax]
 004D6F7F    call       dword ptr [edi+20]
 004D6F82    mov        eax,dword ptr [ebp-14]
 004D6F85    push       eax
 004D6F86    push       0
 004D6F88    push       esi
 004D6F89    mov        cl,1
 004D6F8B    mov        dl,1
 004D6F8D    mov        eax,[004C1F14]; TZFieldRef
 004D6F92    call       TZFieldRef.Create; TZFieldRef.Create
 004D6F97    mov        ecx,eax
 004D6F99    mov        edx,ebx
 004D6F9B    mov        eax,dword ptr [ebp-8]
 004D6F9E    mov        edi,dword ptr [eax]
 004D6FA0    call       dword ptr [edi+10]
 004D6FA3    add        ebx,1
>004D6FA6    jno        004D6FAD
 004D6FA8    call       @IntOver
 004D6FAD    mov        eax,dword ptr [ebp-10]
 004D6FB0    mov        edx,dword ptr [eax]
 004D6FB2    call       dword ptr [edx+0C]
 004D6FB5    test       al,al
<004D6FB7    jne        004D6F66
 004D6FB9    mov        edx,dword ptr [ebp-0C]
 004D6FBC    mov        eax,dword ptr [ebp-8]
 004D6FBF    mov        ecx,dword ptr [eax]
 004D6FC1    call       dword ptr [ecx+14]
 004D6FC4    sub        ebx,1
>004D6FC7    jno        004D6FCE
 004D6FC9    call       @IntOver
 004D6FCE    add        ebx,1
>004D6FD1    jno        004D6FD8
 004D6FD3    call       @IntOver
 004D6FD8    mov        eax,dword ptr [ebp-8]
 004D6FDB    mov        edx,dword ptr [eax]
 004D6FDD    call       dword ptr [edx+30]
 004D6FE0    cmp        ebx,eax
<004D6FE2    jl         004D6F10
 004D6FE8    xor        eax,eax
 004D6FEA    pop        edx
 004D6FEB    pop        ecx
 004D6FEC    pop        ecx
 004D6FED    mov        dword ptr fs:[eax],edx
 004D6FF0    push       4D7015
 004D6FF5    lea        eax,[ebp-14]
 004D6FF8    call       @LStrClr
 004D6FFD    lea        eax,[ebp-10]
 004D7000    call       @IntfClear
 004D7005    lea        eax,[ebp-8]
 004D7008    call       @IntfClear
 004D700D    ret
<004D700E    jmp        @HandleFinally
<004D7013    jmp        004D6FF5
 004D7015    pop        edi
 004D7016    pop        esi
 004D7017    pop        ebx
 004D7018    mov        esp,ebp
 004D701A    pop        ebp
 004D701B    ret
*}
//end;

//004D7028
//procedure sub_004D7028(?:TZAbstractResultSetMetadata);
//begin
{*
 004D7028    push       ebp
 004D7029    mov        ebp,esp
 004D702B    xor        ecx,ecx
 004D702D    push       ecx
 004D702E    push       ecx
 004D702F    push       ecx
 004D7030    push       ecx
 004D7031    push       ecx
 004D7032    push       ecx
 004D7033    push       ecx
 004D7034    push       ebx
 004D7035    push       esi
 004D7036    push       edi
 004D7037    mov        ebx,eax
 004D7039    xor        eax,eax
 004D703B    push       ebp
 004D703C    push       4D715D
 004D7041    push       dword ptr fs:[eax]
 004D7044    mov        dword ptr fs:[eax],esp
 004D7047    lea        edx,[ebp-1C]
 004D704A    mov        eax,dword ptr [ebx+10]; TZAbstractResultSetMetadata.?f10:IZDatabaseMetadata
 004D704D    mov        ecx,dword ptr [eax]
 004D704F    call       dword ptr [ecx+23C]
 004D7055    mov        eax,dword ptr [ebp-1C]
 004D7058    lea        edx,[ebp-4]
 004D705B    mov        ecx,dword ptr [eax]
 004D705D    call       dword ptr [ecx+60]
 004D7060    lea        edx,[ebp-8]
 004D7063    mov        eax,dword ptr [ebp-4]
 004D7066    mov        ecx,dword ptr [eax]
 004D7068    call       dword ptr [ecx+2C]
 004D706B    lea        edx,[ebp-0C]
 004D706E    mov        eax,dword ptr [ebp-4]
 004D7071    mov        ecx,dword ptr [eax]
 004D7073    call       dword ptr [ecx+30]
 004D7076    lea        eax,[ebp-10]
 004D7079    push       eax
 004D707A    mov        ecx,dword ptr [ebx+18]; TZAbstractResultSetMetadata.?f18:String
 004D707D    mov        edx,dword ptr [ebp-8]
 004D7080    mov        eax,dword ptr [ebp-0C]
 004D7083    mov        esi,dword ptr [eax]
 004D7085    call       dword ptr [esi+20]
 004D7088    cmp        dword ptr [ebp-10],0
>004D708C    je         004D7123
 004D7092    mov        edx,dword ptr [ebx+20]; TZAbstractResultSetMetadata.?f20:IZIdentifierConvertor
 004D7095    mov        eax,dword ptr [ebp-10]
 004D7098    mov        ecx,dword ptr [eax]
 004D709A    call       dword ptr [ecx+1C]
 004D709D    mov        edx,dword ptr [ebp-10]
 004D70A0    mov        eax,ebx
 004D70A2    call       004D6EDC
 004D70A7    mov        eax,dword ptr [ebp-10]
 004D70AA    mov        edx,dword ptr [eax]
 004D70AC    call       dword ptr [edx+30]
 004D70AF    mov        edx,dword ptr [ebx+24]; TZAbstractResultSetMetadata.?f24:dword
 004D70B2    mov        edx,dword ptr [edx+28]
 004D70B5    mov        esi,dword ptr [edx+8]
 004D70B8    cmp        eax,esi
 004D70BA    sete       byte ptr [ebp-11]
 004D70BE    sub        esi,1
>004D70C1    jno        004D70C8
 004D70C3    call       @IntOver
 004D70C8    test       esi,esi
>004D70CA    jl         004D7123
 004D70CC    inc        esi
 004D70CD    mov        dword ptr [ebp-18],esi
 004D70D0    xor        esi,esi
 004D70D2    cmp        byte ptr [ebp-11],0
>004D70D6    je         004D7100
 004D70D8    mov        eax,dword ptr [ebp-10]
 004D70DB    push       eax
 004D70DC    mov        eax,dword ptr [ebx+24]; TZAbstractResultSetMetadata.?f24:dword
 004D70DF    mov        eax,dword ptr [eax+28]
 004D70E2    mov        edx,esi
 004D70E4    call       TObjectList.GetItem
 004D70E9    mov        ecx,eax
 004D70EB    mov        edx,esi
 004D70ED    add        edx,1
>004D70F0    jno        004D70F7
 004D70F2    call       @IntOver
 004D70F7    mov        eax,ebx
 004D70F9    mov        edi,dword ptr [eax]
 004D70FB    call       dword ptr [edi+4]; TZAbstractResultSetMetadata.sub_004D6E10
>004D70FE    jmp        004D711D
 004D7100    mov        eax,dword ptr [ebp-10]
 004D7103    push       eax
 004D7104    mov        eax,dword ptr [ebx+24]; TZAbstractResultSetMetadata.?f24:dword
 004D7107    mov        eax,dword ptr [eax+28]
 004D710A    mov        edx,esi
 004D710C    call       TObjectList.GetItem
 004D7111    mov        ecx,eax
 004D7113    or         edx,0FFFFFFFF
 004D7116    mov        eax,ebx
 004D7118    mov        edi,dword ptr [eax]
 004D711A    call       dword ptr [edi+4]; TZAbstractResultSetMetadata.sub_004D6E10
 004D711D    inc        esi
 004D711E    dec        dword ptr [ebp-18]
<004D7121    jne        004D70D2
 004D7123    mov        byte ptr [ebx+0C],1; TZAbstractResultSetMetadata.?fC:byte
 004D7127    xor        eax,eax
 004D7129    pop        edx
 004D712A    pop        ecx
 004D712B    pop        ecx
 004D712C    mov        dword ptr fs:[eax],edx
 004D712F    push       4D7164
 004D7134    lea        eax,[ebp-1C]
 004D7137    call       @IntfClear
 004D713C    lea        eax,[ebp-10]
 004D713F    call       @IntfClear
 004D7144    lea        eax,[ebp-0C]
 004D7147    call       @IntfClear
 004D714C    lea        eax,[ebp-8]
 004D714F    call       @IntfClear
 004D7154    lea        eax,[ebp-4]
 004D7157    call       @IntfClear
 004D715C    ret
<004D715D    jmp        @HandleFinally
<004D7162    jmp        004D7134
 004D7164    pop        edi
 004D7165    pop        esi
 004D7166    pop        ebx
 004D7167    mov        esp,ebp
 004D7169    pop        ebp
 004D716A    ret
*}
//end;

end.