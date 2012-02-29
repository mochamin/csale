{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit ZSqlStrings;

interface

uses
  Classes, Windows, Graphics, Types, ZAbstractRODataset, Contnrs;

type
  TZSQLStatement = class(TObject)
  public
    f4:String;//f4
    f8:TIntegerDynArray;//f8
    fC:dword;//fC
    //constructor Create(?:TZSQLStatement; _Dv__:Boolean; ?:?; ?:?);
  end;
  TZSQLStrings = class(TStringList)
  public
    f30:TZAbstractRODataset;//f30
    f34:byte;//f34
    f38:TObjectList;//f38
    f3C:TStringList;//f3C
    f40:byte;//f40
    destructor Destroy; virtual;
    procedure Changed; virtual;
    //constructor Create(?:TZSQLStrings; _Dv__:Boolean);
  end;

implementation

{$R *.DFM}

//0056FFC4
//constructor TZSQLStatement.Create(?:TZSQLStatement; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 0056FFC4    push       ebp
 0056FFC5    mov        ebp,esp
 0056FFC7    push       ebx
 0056FFC8    push       esi
 0056FFC9    push       edi
 0056FFCA    test       dl,dl
>0056FFCC    je         0056FFD6
 0056FFCE    add        esp,0FFFFFFF0
 0056FFD1    call       @ClassCreate
 0056FFD6    mov        esi,ecx
 0056FFD8    mov        ebx,edx
 0056FFDA    mov        edi,eax
 0056FFDC    lea        eax,[edi+4]; TZSQLStatement.?f4:String
 0056FFDF    mov        edx,esi
 0056FFE1    call       @LStrAsg
 0056FFE6    lea        eax,[edi+8]; TZSQLStatement.?f8:TIntegerDynArray
 0056FFE9    mov        edx,dword ptr [ebp+0C]
 0056FFEC    mov        ecx,dword ptr ds:[407324]; TIntegerDynArray
 0056FFF2    call       @DynArrayAsg
 0056FFF7    mov        eax,dword ptr [ebp+8]
 0056FFFA    mov        dword ptr [edi+0C],eax; TZSQLStatement.?fC:dword
 0056FFFD    mov        eax,edi
 0056FFFF    test       bl,bl
>00570001    je         00570012
 00570003    call       @AfterConstruction
 00570008    pop        dword ptr fs:[0]
 0057000F    add        esp,0C
 00570012    mov        eax,edi
 00570014    pop        edi
 00570015    pop        esi
 00570016    pop        ebx
 00570017    pop        ebp
 00570018    ret        8
*}
//end;

//00570098
//procedure sub_00570098(?:?; ?:TStringDynArray);
//begin
{*
 00570098    push       ebp
 00570099    mov        ebp,esp
 0057009B    add        esp,0FFFFFFF4
 0057009E    push       ebx
 0057009F    push       esi
 005700A0    push       edi
 005700A1    xor        ecx,ecx
 005700A3    mov        dword ptr [ebp-0C],ecx
 005700A6    mov        dword ptr [ebp-4],edx
 005700A9    mov        esi,eax
 005700AB    xor        eax,eax
 005700AD    push       ebp
 005700AE    push       570165
 005700B3    push       dword ptr fs:[eax]
 005700B6    mov        dword ptr fs:[eax],esp
 005700B9    mov        eax,dword ptr [esi+8]
 005700BC    call       @DynArrayHigh
 005700C1    sub        eax,0
>005700C4    jno        005700CB
 005700C6    call       @IntOver
 005700CB    add        eax,1
>005700CE    jno        005700D5
 005700D0    call       @IntOver
 005700D5    push       eax
 005700D6    mov        eax,dword ptr [ebp-4]
 005700D9    mov        ecx,1
 005700DE    mov        edx,dword ptr ds:[4073AC]; TStringDynArray
 005700E4    call       @DynArraySetLength
 005700E9    add        esp,4
 005700EC    mov        eax,dword ptr [ebp-4]
 005700EF    mov        eax,dword ptr [eax]
 005700F1    call       @DynArrayHigh
 005700F6    test       eax,eax
>005700F8    jl         0057014F
 005700FA    inc        eax
 005700FB    mov        dword ptr [ebp-8],eax
 005700FE    xor        ebx,ebx
 00570100    mov        eax,ebx
 00570102    add        eax,0
>00570105    jno        0057010C
 00570107    call       @IntOver
 0057010C    mov        edx,dword ptr [esi+8]
 0057010F    test       edx,edx
>00570111    je         00570118
 00570113    cmp        eax,dword ptr [edx-4]
>00570116    jb         0057011D
 00570118    call       @BoundErr
 0057011D    mov        edx,dword ptr [edx+eax*4]
 00570120    lea        ecx,[ebp-0C]
 00570123    mov        eax,dword ptr [esi+0C]
 00570126    mov        edi,dword ptr [eax]
 00570128    call       dword ptr [edi+0C]
 0057012B    mov        edx,dword ptr [ebp-0C]
 0057012E    mov        eax,dword ptr [ebp-4]
 00570131    mov        eax,dword ptr [eax]
 00570133    test       eax,eax
>00570135    je         0057013C
 00570137    cmp        ebx,dword ptr [eax-4]
>0057013A    jb         00570141
 0057013C    call       @BoundErr
 00570141    lea        eax,[eax+ebx*4]
 00570144    call       @LStrAsg
 00570149    inc        ebx
 0057014A    dec        dword ptr [ebp-8]
<0057014D    jne        00570100
 0057014F    xor        eax,eax
 00570151    pop        edx
 00570152    pop        ecx
 00570153    pop        ecx
 00570154    mov        dword ptr fs:[eax],edx
 00570157    push       57016C
 0057015C    lea        eax,[ebp-0C]
 0057015F    call       @LStrClr
 00570164    ret
<00570165    jmp        @HandleFinally
<0057016A    jmp        0057015C
 0057016C    pop        edi
 0057016D    pop        esi
 0057016E    pop        ebx
 0057016F    mov        esp,ebp
 00570171    pop        ebp
 00570172    ret
*}
//end;

//00570174
//constructor TZSQLStrings.Create(?:TZSQLStrings; _Dv__:Boolean);
//begin
{*
 00570174    push       ebp
 00570175    mov        ebp,esp
 00570177    push       ebx
 00570178    push       esi
 00570179    test       dl,dl
>0057017B    je         00570185
 0057017D    add        esp,0FFFFFFF0
 00570180    call       @ClassCreate
 00570185    mov        ebx,edx
 00570187    mov        esi,eax
 00570189    mov        dl,1
 0057018B    mov        eax,[0041C8E4]; TStringList
 00570190    call       TObject.Create; TStringList.Create
 00570195    mov        dword ptr [esi+3C],eax; TZSQLStrings.?f3C:TStringList
 00570198    mov        byte ptr [esi+34],1; TZSQLStrings.?f34:byte
 0057019C    mov        dl,1
 0057019E    mov        eax,[00433048]; TObjectList
 005701A3    call       TObjectList.Create; TObjectList.Create
 005701A8    mov        dword ptr [esi+38],eax; TZSQLStrings.?f38:TObjectList
 005701AB    mov        byte ptr [esi+40],1; TZSQLStrings.?f40:byte
 005701AF    mov        eax,esi
 005701B1    test       bl,bl
>005701B3    je         005701C4
 005701B5    call       @AfterConstruction
 005701BA    pop        dword ptr fs:[0]
 005701C1    add        esp,0C
 005701C4    mov        eax,esi
 005701C6    pop        esi
 005701C7    pop        ebx
 005701C8    pop        ebp
 005701C9    ret
*}
//end;

//005701CC
destructor TZSQLStrings.Destroy;
begin
{*
 005701CC    push       ebp
 005701CD    mov        ebp,esp
 005701CF    push       ebx
 005701D0    push       esi
 005701D1    call       @BeforeDestruction
 005701D6    mov        ebx,edx
 005701D8    mov        esi,eax
 005701DA    mov        eax,dword ptr [esi+3C]; TZSQLStrings.?f3C:TStringList
 005701DD    call       TObject.Free
 005701E2    mov        eax,dword ptr [esi+38]; TZSQLStrings.?f38:TObjectList
 005701E5    call       TObject.Free
 005701EA    mov        edx,ebx
 005701EC    and        dl,0FC
 005701EF    mov        eax,esi
 005701F1    call       TStringList.Destroy
 005701F6    test       bl,bl
>005701F8    jle        00570201
 005701FA    mov        eax,esi
 005701FC    call       @ClassDestroy
 00570201    pop        esi
 00570202    pop        ebx
 00570203    pop        ebp
 00570204    ret
*}
end;

//00570208
//function sub_00570208(?:TZSQLStrings):?;
//begin
{*
 00570208    push       ebp
 00570209    mov        ebp,esp
 0057020B    mov        eax,dword ptr [eax+3C]; TZSQLStrings.?f3C:TStringList
 0057020E    mov        edx,dword ptr [eax]
 00570210    call       dword ptr [edx+14]; TStringList.GetCount
 00570213    pop        ebp
 00570214    ret
*}
//end;

//00570218
//procedure sub_00570218(?:TZSQLStrings; ?:?; ?:AnsiString);
//begin
{*
 00570218    push       ebp
 00570219    mov        ebp,esp
 0057021B    push       ecx
 0057021C    push       ebx
 0057021D    push       esi
 0057021E    mov        dword ptr [ebp-4],ecx
 00570221    mov        esi,edx
 00570223    mov        ebx,eax
 00570225    mov        ecx,dword ptr [ebp-4]
 00570228    mov        edx,esi
 0057022A    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 0057022D    mov        ebx,dword ptr [eax]
 0057022F    call       dword ptr [ebx+0C]; TStringList.Get
 00570232    pop        esi
 00570233    pop        ebx
 00570234    pop        ecx
 00570235    pop        ebp
 00570236    ret
*}
//end;

//00570238
//function sub_00570238(?:TZSQLStrings):?;
//begin
{*
 00570238    mov        eax,dword ptr [eax+38]; TZSQLStrings.?f38:TObjectList
 0057023B    mov        eax,dword ptr [eax+8]; TObjectList.FCount:Integer
 0057023E    ret
*}
//end;

//00570240
//function sub_00570240(?:TZSQLStrings; ?:?):?;
//begin
{*
 00570240    push       ebp
 00570241    mov        ebp,esp
 00570243    push       ebx
 00570244    push       esi
 00570245    mov        esi,edx
 00570247    mov        ebx,eax
 00570249    mov        edx,esi
 0057024B    mov        eax,dword ptr [ebx+38]; TZSQLStrings.?f38:TObjectList
 0057024E    call       TObjectList.GetItem
 00570253    pop        esi
 00570254    pop        ebx
 00570255    pop        ebp
 00570256    ret
*}
//end;

//00570258
//procedure sub_00570258(?:TZSQLStrings; ?:?);
//begin
{*
 00570258    push       ebp
 00570259    mov        ebp,esp
 0057025B    cmp        dl,byte ptr [eax+34]; TZSQLStrings.?f34:byte
>0057025E    je         00570268
 00570260    mov        byte ptr [eax+34],dl; TZSQLStrings.?f34:byte
 00570263    call       00570334
 00570268    pop        ebp
 00570269    ret
*}
//end;

//0057026C
//procedure sub_0057026C(?:TZSQLStrings; ?:?);
//begin
{*
 0057026C    push       ebp
 0057026D    mov        ebp,esp
 0057026F    cmp        dl,byte ptr [eax+40]; TZSQLStrings.?f40:byte
>00570272    je         0057027C
 00570274    mov        byte ptr [eax+40],dl; TZSQLStrings.?f40:byte
 00570277    call       00570334
 0057027C    pop        ebp
 0057027D    ret
*}
//end;

//00570280
//procedure sub_00570280(?:TZSQLStrings; ?:TZAbstractRODataset);
//begin
{*
 00570280    push       ebp
 00570281    mov        ebp,esp
 00570283    cmp        edx,dword ptr [eax+30]; TZSQLStrings.?f30:TZAbstractRODataset
>00570286    je         00570290
 00570288    mov        dword ptr [eax+30],edx; TZSQLStrings.?f30:TZAbstractRODataset
 0057028B    call       00570334
 00570290    pop        ebp
 00570291    ret
*}
//end;

//00570294
//function sub_00570294(?:TZSQLStrings; ?:AnsiString):?;
//begin
{*
 00570294    push       ebp
 00570295    mov        ebp,esp
 00570297    push       ebx
 00570298    push       esi
 00570299    mov        esi,edx
 0057029B    mov        ebx,eax
 0057029D    xor        edx,edx
 0057029F    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 005702A2    call       TStringList.SetCaseSensitive
 005702A7    mov        edx,esi
 005702A9    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 005702AC    mov        ecx,dword ptr [eax]
 005702AE    call       dword ptr [ecx+54]; TStringList.IndexOf
 005702B1    pop        esi
 005702B2    pop        ebx
 005702B3    pop        ebp
 005702B4    ret
*}
//end;

//005702B8
//procedure sub_005702B8(?:?);
//begin
{*
 005702B8    push       ebp
 005702B9    mov        ebp,esp
 005702BB    push       0
 005702BD    push       ebx
 005702BE    xor        eax,eax
 005702C0    push       ebp
 005702C1    push       570329
 005702C6    push       dword ptr fs:[eax]
 005702C9    mov        dword ptr fs:[eax],esp
 005702CC    mov        eax,dword ptr [ebp+8]
 005702CF    mov        edx,dword ptr [eax-8]
 005702D2    mov        eax,dword ptr [ebp+8]
 005702D5    mov        eax,dword ptr [eax-4]
 005702D8    mov        ecx,dword ptr [eax]
 005702DA    call       dword ptr [ecx+18]
 005702DD    mov        edx,dword ptr [ebp+8]
 005702E0    mov        byte ptr [edx-9],al
 005702E3    lea        ecx,[ebp-4]
 005702E6    mov        eax,dword ptr [ebp+8]
 005702E9    mov        edx,dword ptr [eax-8]
 005702EC    mov        eax,dword ptr [ebp+8]
 005702EF    mov        eax,dword ptr [eax-4]
 005702F2    mov        ebx,dword ptr [eax]
 005702F4    call       dword ptr [ebx+0C]
 005702F7    mov        edx,dword ptr [ebp-4]
 005702FA    mov        eax,dword ptr [ebp+8]
 005702FD    add        eax,0FFFFFFF0
 00570300    call       @LStrLAsg
 00570305    mov        eax,dword ptr [ebp+8]
 00570308    add        dword ptr [eax-8],1
>0057030C    jno        00570313
 0057030E    call       @IntOver
 00570313    xor        eax,eax
 00570315    pop        edx
 00570316    pop        ecx
 00570317    pop        ecx
 00570318    mov        dword ptr fs:[eax],edx
 0057031B    push       570330
 00570320    lea        eax,[ebp-4]
 00570323    call       @LStrClr
 00570328    ret
<00570329    jmp        @HandleFinally
<0057032E    jmp        00570320
 00570330    pop        ebx
 00570331    pop        ecx
 00570332    pop        ebp
 00570333    ret
*}
//end;

//00570334
//procedure sub_00570334(?:TZSQLStrings);
//begin
{*
 00570334    push       ebp
 00570335    mov        ebp,esp
 00570337    mov        ecx,9
 0057033C    push       0
 0057033E    push       0
 00570340    dec        ecx
<00570341    jne        0057033C
 00570343    push       ebx
 00570344    push       esi
 00570345    push       edi
 00570346    mov        ebx,eax
 00570348    xor        eax,eax
 0057034A    push       ebp
 0057034B    push       570729
 00570350    push       dword ptr fs:[eax]
 00570353    mov        dword ptr fs:[eax],esp
 00570356    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 00570359    mov        edx,dword ptr [eax]
 0057035B    call       dword ptr [edx+44]; TStringList.Clear
 0057035E    mov        eax,dword ptr [ebx+38]; TZSQLStrings.?f38:TObjectList
 00570361    mov        edx,dword ptr [eax]
 00570363    call       dword ptr [edx+8]; TList.Clear
 00570366    lea        eax,[ebp-1C]
 00570369    call       @LStrClr
 0057036E    xor        esi,esi
 00570370    push       esi
 00570371    lea        eax,[ebp-14]
 00570374    mov        ecx,1
 00570379    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0057037F    call       @DynArraySetLength
 00570384    add        esp,4
 00570387    lea        edx,[ebp-2C]
 0057038A    mov        eax,ebx
 0057038C    mov        ecx,dword ptr [eax]
 0057038E    call       dword ptr [ecx+1C]; TStrings.GetTextStr
 00570391    mov        eax,dword ptr [ebp-2C]
 00570394    lea        edx,[ebp-28]
 00570397    call       Trim
 0057039C    mov        eax,dword ptr [ebp-28]
 0057039F    call       @LStrLen
 005703A4    test       eax,eax
>005703A6    je         005706DB
 005703AC    cmp        byte ptr [ebx+34],0; TZSQLStrings.?f34:byte
>005703B0    je         005703CD
 005703B2    lea        edx,[ebp-30]
 005703B5    mov        eax,ebx
 005703B7    mov        ecx,dword ptr [eax]
 005703B9    call       dword ptr [ecx+1C]; TStrings.GetTextStr
 005703BC    mov        edx,dword ptr [ebp-30]
 005703BF    mov        eax,570740; ':'
 005703C4    call       @LStrPos
 005703C9    test       eax,eax
>005703CB    jne        0057041E
 005703CD    cmp        byte ptr [ebx+40],0; TZSQLStrings.?f40:byte
>005703D1    je         005703EE
 005703D3    lea        edx,[ebp-34]
 005703D6    mov        eax,ebx
 005703D8    mov        ecx,dword ptr [eax]
 005703DA    call       dword ptr [ecx+1C]; TStrings.GetTextStr
 005703DD    mov        edx,dword ptr [ebp-34]
 005703E0    mov        eax,57074C; ';'
 005703E5    call       @LStrPos
 005703EA    test       eax,eax
>005703EC    jne        0057041E
 005703EE    mov        eax,dword ptr [ebp-14]
 005703F1    push       eax
 005703F2    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 005703F5    push       eax
 005703F6    lea        edx,[ebp-38]
 005703F9    mov        eax,ebx
 005703FB    mov        ecx,dword ptr [eax]
 005703FD    call       dword ptr [ecx+1C]; TStrings.GetTextStr
 00570400    mov        ecx,dword ptr [ebp-38]
 00570403    mov        dl,1
 00570405    mov        eax,[0056FE2C]; TZSQLStatement
 0057040A    call       TZSQLStatement.Create; TZSQLStatement.Create
 0057040F    mov        edx,eax
 00570411    mov        eax,dword ptr [ebx+38]; TZSQLStrings.?f38:TObjectList
 00570414    call       00433178
>00570419    jmp        005706DB
 0057041E    lea        eax,[ebp-24]
 00570421    mov        edx,dword ptr ds:[61BE9C]; ^gvar_0061EF6C:IInterface
 00570427    mov        edx,dword ptr [edx]
 00570429    call       @IntfCopy
 0057042E    mov        eax,dword ptr [ebx+30]; TZSQLStrings.?f30:TZAbstractRODataset
 00570431    mov        edx,dword ptr ds:[5709E8]; TZAbstractRODataset
 00570437    call       @IsClass
 0057043C    test       al,al
>0057043E    je         0057046A
 00570440    mov        eax,dword ptr [ebx+30]; TZSQLStrings.?f30:TZAbstractRODataset
 00570443    mov        edi,dword ptr [eax+1C0]; TZAbstractRODataset.Connection:TZConnection
 00570449    test       edi,edi
>0057044B    je         005704A1
 0057044D    lea        edx,[ebp-20]
 00570450    mov        eax,edi
 00570452    call       00576DF4
 00570457    cmp        dword ptr [ebp-20],0
>0057045B    je         005704A1
 0057045D    lea        edx,[ebp-24]
 00570460    mov        eax,dword ptr [ebp-20]
 00570463    mov        ecx,dword ptr [eax]
 00570465    call       dword ptr [ecx+2C]
>00570468    jmp        005704A1
 0057046A    mov        eax,dword ptr [ebx+30]; TZSQLStrings.?f30:TZAbstractRODataset
 0057046D    mov        edx,dword ptr ds:[6140DC]; TDragObjectEx:class of TDragObjectEx
 00570473    call       @IsClass
 00570478    test       al,al
>0057047A    je         005704A1
 0057047C    mov        eax,dword ptr [ebx+30]; TZSQLStrings.?f30:TZAbstractRODataset
 0057047F    mov        edi,dword ptr [eax+3C]; TZAbstractRODataset.FFieldDefList:TFieldDefList
 00570482    test       edi,edi
>00570484    je         005704A1
 00570486    lea        edx,[ebp-20]
 00570489    mov        eax,edi
 0057048B    call       00576DF4
 00570490    cmp        dword ptr [ebp-20],0
>00570494    je         005704A1
 00570496    lea        edx,[ebp-24]
 00570499    mov        eax,dword ptr [ebp-20]
 0057049C    mov        ecx,dword ptr [eax]
 0057049E    call       dword ptr [ecx+2C]
 005704A1    lea        edx,[ebp-3C]
 005704A4    mov        eax,ebx
 005704A6    mov        ecx,dword ptr [eax]
 005704A8    call       dword ptr [ecx+1C]; TStrings.GetTextStr
 005704AB    mov        edx,dword ptr [ebp-3C]
 005704AE    mov        cl,byte ptr ds:[570750]; 0x14
 005704B4    mov        eax,dword ptr [ebp-24]
 005704B7    mov        edi,dword ptr [eax]
 005704B9    call       dword ptr [edi+0C]
 005704BC    mov        dword ptr [ebp-4],eax
 005704BF    xor        eax,eax
 005704C1    push       ebp
 005704C2    push       5706D4
 005704C7    push       dword ptr fs:[eax]
 005704CA    mov        dword ptr fs:[eax],esp
 005704CD    xor        eax,eax
 005704CF    mov        dword ptr [ebp-8],eax
 005704D2    push       ebp
 005704D3    call       005702B8
 005704D8    pop        ecx
 005704D9    cmp        byte ptr [ebx+34],0; TZSQLStrings.?f34:byte
>005704DD    je         0057062E
 005704E3    mov        eax,dword ptr [ebp-10]
 005704E6    mov        edx,570740; ':'
 005704EB    call       @LStrCmp
>005704F0    jne        0057062E
 005704F6    push       ebp
 005704F7    call       005702B8
 005704FC    pop        ecx
 005704FD    cmp        byte ptr [ebp-9],1
>00570501    je         0057062E
 00570507    mov        eax,dword ptr [ebp-10]
 0057050A    mov        edx,570740; ':'
 0057050F    call       @LStrCmp
>00570514    je         0057062E
 0057051A    mov        al,byte ptr [ebp-9]
 0057051D    sub        al,7
>0057051F    je         00570546
 00570521    sub        al,2
>00570523    je         00570546
 00570525    lea        edx,[ebp-40]
 00570528    mov        eax,[0061B45C]; ^#122.sResString70:TResStringRec
 0057052D    call       LoadResString
 00570532    mov        ecx,dword ptr [ebp-40]
 00570535    mov        dl,1
 00570537    mov        eax,[0057089C]; EZDatabaseError
 0057053C    call       EZDatabaseError.Create; EZDatabaseError.Create
 00570541    call       @RaiseExcept
 00570546    lea        eax,[ebp-1C]
 00570549    mov        edx,57075C; '?'
 0057054E    call       @LStrCat
 00570553    lea        eax,[ebp-18]
 00570556    mov        edx,dword ptr [ebp-10]
 00570559    call       @LStrLAsg
 0057055E    cmp        dword ptr [ebp-18],0
>00570562    je         005705CB
 00570564    mov        eax,1
 00570569    mov        edx,dword ptr [ebp-18]
 0057056C    dec        eax
 0057056D    test       edx,edx
>0057056F    je         00570576
 00570571    cmp        eax,dword ptr [edx-4]
>00570574    jb         0057057B
 00570576    call       @BoundErr
 0057057B    inc        eax
 0057057C    mov        al,byte ptr [edx+eax-1]
 00570580    sub        al,22
>00570582    je         00570590
 00570584    sub        al,5
>00570586    je         00570590
 00570588    sub        al,34
>0057058A    je         00570590
 0057058C    sub        al,5
>0057058E    jne        005705CB
 00570590    lea        eax,[ebp-44]
 00570593    push       eax
 00570594    mov        eax,dword ptr [ebp-24]
 00570597    mov        edx,dword ptr [eax]
 00570599    call       dword ptr [edx+24]
 0057059C    mov        edx,1
 005705A1    mov        ecx,dword ptr [ebp-18]
 005705A4    dec        edx
 005705A5    test       ecx,ecx
>005705A7    je         005705AE
 005705A9    cmp        edx,dword ptr [ecx-4]
>005705AC    jb         005705B3
 005705AE    call       @BoundErr
 005705B3    inc        edx
 005705B4    mov        cl,byte ptr [ecx+edx-1]
 005705B8    mov        edx,dword ptr [ebp-18]
 005705BB    mov        edi,dword ptr [eax]
 005705BD    call       dword ptr [edi+8]
 005705C0    mov        edx,dword ptr [ebp-44]
 005705C3    lea        eax,[ebp-18]
 005705C6    call       @LStrLAsg
 005705CB    mov        edx,dword ptr [ebp-18]
 005705CE    mov        eax,ebx
 005705D0    call       00570294
 005705D5    mov        edi,eax
 005705D7    test       edi,edi
>005705D9    jge        005705E8
 005705DB    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 005705DE    mov        edx,dword ptr [ebp-18]
 005705E1    mov        ecx,dword ptr [eax]
 005705E3    call       dword ptr [ecx+38]; TStringList.Add
 005705E6    mov        edi,eax
 005705E8    add        esi,1
>005705EB    jno        005705F2
 005705ED    call       @IntOver
 005705F2    push       esi
 005705F3    lea        eax,[ebp-14]
 005705F6    mov        ecx,1
 005705FB    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 00570601    call       @DynArraySetLength
 00570606    add        esp,4
 00570609    mov        eax,esi
 0057060B    sub        eax,1
>0057060E    jno        00570615
 00570610    call       @IntOver
 00570615    mov        edx,dword ptr [ebp-14]
 00570618    test       edx,edx
>0057061A    je         00570621
 0057061C    cmp        eax,dword ptr [edx-4]
>0057061F    jb         00570626
 00570621    call       @BoundErr
 00570626    mov        dword ptr [edx+eax*4],edi
>00570629    jmp        005706B4
 0057062E    cmp        byte ptr [ebp-9],1
>00570632    je         00570649
 00570634    cmp        byte ptr [ebx+40],0; TZSQLStrings.?f40:byte
>00570638    je         005706A9
 0057063A    mov        eax,dword ptr [ebp-10]
 0057063D    mov        edx,57074C; ';'
 00570642    call       @LStrCmp
>00570647    jne        005706A9
 00570649    lea        edx,[ebp-48]
 0057064C    mov        eax,dword ptr [ebp-1C]
 0057064F    call       Trim
 00570654    mov        edx,dword ptr [ebp-48]
 00570657    lea        eax,[ebp-1C]
 0057065A    call       @LStrLAsg
 0057065F    cmp        dword ptr [ebp-1C],0
>00570663    je         00570686
 00570665    mov        eax,dword ptr [ebp-14]
 00570668    push       eax
 00570669    mov        eax,dword ptr [ebx+3C]; TZSQLStrings.?f3C:TStringList
 0057066C    push       eax
 0057066D    mov        ecx,dword ptr [ebp-1C]
 00570670    mov        dl,1
 00570672    mov        eax,[0056FE2C]; TZSQLStatement
 00570677    call       TZSQLStatement.Create; TZSQLStatement.Create
 0057067C    mov        edx,eax
 0057067E    mov        eax,dword ptr [ebx+38]; TZSQLStrings.?f38:TObjectList
 00570681    call       00433178
 00570686    lea        eax,[ebp-1C]
 00570689    call       @LStrClr
 0057068E    xor        esi,esi
 00570690    push       esi
 00570691    lea        eax,[ebp-14]
 00570694    mov        ecx,1
 00570699    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0057069F    call       @DynArraySetLength
 005706A4    add        esp,4
>005706A7    jmp        005706B4
 005706A9    lea        eax,[ebp-1C]
 005706AC    mov        edx,dword ptr [ebp-10]
 005706AF    call       @LStrCat
 005706B4    cmp        byte ptr [ebp-9],1
<005706B8    jne        005704D2
 005706BE    xor        eax,eax
 005706C0    pop        edx
 005706C1    pop        ecx
 005706C2    pop        ecx
 005706C3    mov        dword ptr fs:[eax],edx
 005706C6    push       5706DB
 005706CB    mov        eax,dword ptr [ebp-4]
 005706CE    call       TObject.Free
 005706D3    ret
<005706D4    jmp        @HandleFinally
<005706D9    jmp        005706CB
 005706DB    xor        eax,eax
 005706DD    pop        edx
 005706DE    pop        ecx
 005706DF    pop        ecx
 005706E0    mov        dword ptr fs:[eax],edx
 005706E3    push       570730
 005706E8    lea        eax,[ebp-48]
 005706EB    mov        edx,9
 005706F0    call       @LStrArrayClr
 005706F5    lea        eax,[ebp-24]
 005706F8    call       @IntfClear
 005706FD    lea        eax,[ebp-20]
 00570700    call       @IntfClear
 00570705    lea        eax,[ebp-1C]
 00570708    mov        edx,2
 0057070D    call       @LStrArrayClr
 00570712    lea        eax,[ebp-14]
 00570715    mov        edx,dword ptr ds:[407324]; TIntegerDynArray
 0057071B    call       @DynArrayClear
 00570720    lea        eax,[ebp-10]
 00570723    call       @LStrClr
 00570728    ret
<00570729    jmp        @HandleFinally
<0057072E    jmp        005706E8
 00570730    pop        edi
 00570731    pop        esi
 00570732    pop        ebx
 00570733    mov        esp,ebp
 00570735    pop        ebp
 00570736    ret
*}
//end;

//00570760
procedure TZSQLStrings.Changed;
begin
{*
 00570760    push       ebp
 00570761    mov        ebp,esp
 00570763    push       ebx
 00570764    mov        ebx,eax
 00570766    cmp        dword ptr [ebx+8],0; TZSQLStrings.FUpdateCount:Integer
>0057076A    jne        00570773
 0057076C    mov        eax,ebx
 0057076E    call       00570334
 00570773    mov        eax,ebx
 00570775    call       TStringList.Changed
 0057077A    pop        ebx
 0057077B    pop        ebp
 0057077C    ret
*}
end;

end.