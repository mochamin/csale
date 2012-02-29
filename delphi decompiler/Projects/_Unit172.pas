{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit172;

interface

uses
  Classes, Windows, Graphics, ZDbcMetadata;

type
  TZSQLiteDatabaseMetadata = class(TZAbstractDatabaseMetadata)
  public
    f24:String;//f24
    destructor Destroy; virtual;
    //procedure sub_00540FA4(?:?; ?:?; ?:?); virtual;
    //procedure sub_005412BC(?:?); virtual;
    //procedure sub_00541318(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00541828(?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00541DB0(?:?; ?:?; ?:?; ?:?; ?:?); virtual;
    //procedure sub_00541BAC(?:?); virtual;
    //procedure sub_0054090C(?:?); virtual;
    //procedure sub_00540934(?:?); virtual;
    //procedure sub_00540944(?:?); virtual;
    //function sub_00540994():?; virtual;
    //function sub_0054099C():?; virtual;
    //function sub_005409A0():?; virtual;
    //function sub_005409A4():?; virtual;
    //function sub_005409A8():?; virtual;
    //function sub_005409AC():?; virtual;
    //function sub_005409B0():?; virtual;
    //function sub_005409B4():?; virtual;
    //function sub_005409B8():?; virtual;
    //function sub_005409BC():?; virtual;
    //function sub_005409C0():?; virtual;
    //procedure sub_005409C4(?:?); virtual;
    //procedure sub_00540C70(?:?); virtual;
    //procedure sub_00540CAC(?:?); virtual;
    //procedure sub_00540CF8(?:?); virtual;
    //procedure sub_00540D40(?:?); virtual;
    //procedure sub_00540D50(?:?); virtual;
    //procedure sub_00540D74(?:?); virtual;
    //function sub_00540D84():?; virtual;
    //function sub_00540D88():?; virtual;
    //function sub_00540D8C():?; virtual;
    //function sub_00540D90():?; virtual;
    //function sub_00540D94():?; virtual;
    //function sub_00540D98():?; virtual;
    //procedure sub_00540D9C(?:?); virtual;
    //procedure sub_00540DAC(?:?); virtual;
    //procedure sub_00540DBC(?:?); virtual;
    //procedure sub_00540DE8(?:?); virtual;
    //function sub_00540E0C():?; virtual;
    //function sub_00540E10():?; virtual;
    //function sub_00540E14():?; virtual;
    //function sub_00540E18():?; virtual;
    //function sub_00540E1C():?; virtual;
    //function sub_00540E20():?; virtual;
    //function sub_00540E24():?; virtual;
    //function sub_00540E28():?; virtual;
    //function sub_00540E2C():?; virtual;
    //function sub_00540E30():?; virtual;
    //function sub_00540E34():?; virtual;
    //function sub_00540E38():?; virtual;
    //function sub_00540E3C():?; virtual;
    //function sub_00540E40():?; virtual;
    //function sub_00540E44():?; virtual;
    //function sub_00540E48():?; virtual;
    //function sub_00540E4C():?; virtual;
    //function sub_00540E50():?; virtual;
    //function sub_00540E54():?; virtual;
    //function sub_00540E58():?; virtual;
    //function sub_00540E5C():?; virtual;
    //function sub_00540E60():?; virtual;
    //function sub_00540E64():?; virtual;
    //function sub_00540E68():?; virtual;
    //function sub_00540E6C():?; virtual;
    //function sub_00540E70():?; virtual;
    //function sub_00540E74():?; virtual;
    //function sub_00540E78():?; virtual;
    //function sub_00540E7C():?; virtual;
    //function sub_00540E80():?; virtual;
    //function sub_00540E84():?; virtual;
    //function sub_00540E88():?; virtual;
    //function sub_00540E8C():?; virtual;
    //function sub_00540E90():?; virtual;
    //function sub_00540E94():?; virtual;
    //function sub_00540E98():?; virtual;
    //function sub_00540E9C():?; virtual;
    //function sub_00540EA0():?; virtual;
    //function sub_00540EA4():?; virtual;
    //function sub_00540EA8():?; virtual;
    //function sub_00540EAC():?; virtual;
    //function sub_00540EB0():?; virtual;
    //function sub_00540EB8():?; virtual;
    //function sub_00540EBC():?; virtual;
    //function sub_00540EC0():?; virtual;
    //function sub_00540EC4():?; virtual;
    //function sub_00540EC8():?; virtual;
    //function sub_00540ECC():?; virtual;
    //function sub_00540ED0():?; virtual;
    //function sub_00540ED4():?; virtual;
    //function sub_00540ED8():?; virtual;
    //function sub_00540EDC():?; virtual;
    //function sub_00540EE0():?; virtual;
    //function sub_00542174(?:?):Boolean; virtual;
    //function sub_0054217C(?:?; ?:?):?; virtual;
    //constructor Create(?:TZSQLiteDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
  end;

implementation

{$R *.DFM}

//005407DC
//constructor TZSQLiteDatabaseMetadata.Create(?:TZSQLiteDatabaseMetadata; _Dv__:Boolean; ?:?; ?:?);
//begin
{*
 005407DC    push       ebp
 005407DD    mov        ebp,esp
 005407DF    add        esp,0FFFFFFE4
 005407E2    push       ebx
 005407E3    push       esi
 005407E4    xor        ebx,ebx
 005407E6    mov        dword ptr [ebp-10],ebx
 005407E9    mov        dword ptr [ebp-14],ebx
 005407EC    mov        dword ptr [ebp-18],ebx
 005407EF    test       dl,dl
>005407F1    je         005407FB
 005407F3    add        esp,0FFFFFFF0
 005407F6    call       @ClassCreate
 005407FB    mov        esi,ecx
 005407FD    mov        byte ptr [ebp-5],dl
 00540800    mov        dword ptr [ebp-4],eax
 00540803    mov        ebx,dword ptr [ebp+8]
 00540806    mov        eax,dword ptr [ebp+0C]
 00540809    call       @LStrAddRef
 0054080E    xor        eax,eax
 00540810    push       ebp
 00540811    push       5408B5
 00540816    push       dword ptr fs:[eax]
 00540819    mov        dword ptr fs:[eax],esp
 0054081C    mov        eax,dword ptr [ebp+0C]
 0054081F    push       eax
 00540820    push       ebx
 00540821    mov        ecx,esi
 00540823    test       ecx,ecx
>00540825    je         0054082A
 00540827    sub        ecx,0FFFFFFD0
 0054082A    xor        edx,edx
 0054082C    mov        eax,dword ptr [ebp-4]
 0054082F    call       004D8D74
 00540834    mov        dl,1
 00540836    mov        eax,[0041C8E4]; TStringList
 0054083B    call       TObject.Create; TStringList.Create
 00540840    mov        dword ptr [ebp-0C],eax
 00540843    xor        eax,eax
 00540845    push       ebp
 00540846    push       54088B
 0054084B    push       dword ptr fs:[eax]
 0054084E    mov        dword ptr fs:[eax],esp
 00540851    lea        eax,[ebp-1C]
 00540854    push       eax
 00540855    mov        eax,dword ptr [ebp-4]
 00540858    add        eax,24; TZSQLiteDatabaseMetadata.?f24:String
 0054085B    push       eax
 0054085C    lea        eax,[ebp-14]
 0054085F    push       eax
 00540860    lea        eax,[ebp-18]
 00540863    push       eax
 00540864    mov        eax,dword ptr [ebp-0C]
 00540867    push       eax
 00540868    lea        ecx,[ebp-10]
 0054086B    mov        edx,ebx
 0054086D    mov        eax,dword ptr [ebp+0C]
 00540870    call       004D28A4
 00540875    xor        eax,eax
 00540877    pop        edx
 00540878    pop        ecx
 00540879    pop        ecx
 0054087A    mov        dword ptr fs:[eax],edx
 0054087D    push       540892
 00540882    mov        eax,dword ptr [ebp-0C]
 00540885    call       TObject.Free
 0054088A    ret
<0054088B    jmp        @HandleFinally
<00540890    jmp        00540882
 00540892    xor        eax,eax
 00540894    pop        edx
 00540895    pop        ecx
 00540896    pop        ecx
 00540897    mov        dword ptr fs:[eax],edx
 0054089A    push       5408BC
 0054089F    lea        eax,[ebp-18]
 005408A2    mov        edx,3
 005408A7    call       @LStrArrayClr
 005408AC    lea        eax,[ebp+0C]
 005408AF    call       @LStrClr
 005408B4    ret
<005408B5    jmp        @HandleFinally
<005408BA    jmp        0054089F
 005408BC    mov        eax,dword ptr [ebp-4]
 005408BF    cmp        byte ptr [ebp-5],0
>005408C3    je         005408D4
 005408C5    call       @AfterConstruction
 005408CA    pop        dword ptr fs:[0]
 005408D1    add        esp,0C
 005408D4    mov        eax,dword ptr [ebp-4]
 005408D7    pop        esi
 005408D8    pop        ebx
 005408D9    mov        esp,ebp
 005408DB    pop        ebp
 005408DC    ret        8
*}
//end;

//005408E0
destructor TZSQLiteDatabaseMetadata.Destroy;
begin
{*
 005408E0    push       ebp
 005408E1    mov        ebp,esp
 005408E3    push       ebx
 005408E4    push       esi
 005408E5    call       @BeforeDestruction
 005408EA    mov        ebx,edx
 005408EC    mov        esi,eax
 005408EE    mov        edx,ebx
 005408F0    and        dl,0FC
 005408F3    mov        eax,esi
 005408F5    call       TZAbstractDatabaseMetadata.Destroy
 005408FA    test       bl,bl
>005408FC    jle        00540905
 005408FE    mov        eax,esi
 00540900    call       @ClassDestroy
 00540905    pop        esi
 00540906    pop        ebx
 00540907    pop        ebp
 00540908    ret
*}
end;

//0054090C
//procedure sub_0054090C(?:?);
//begin
{*
 0054090C    push       ebp
 0054090D    mov        ebp,esp
 0054090F    push       ebx
 00540910    mov        ebx,edx
 00540912    mov        eax,ebx
 00540914    mov        edx,54092C; 'SQLite'
 00540919    call       @LStrAsg
 0054091E    pop        ebx
 0054091F    pop        ebp
 00540920    ret
*}
//end;

//00540934
//procedure sub_00540934(?:?);
//begin
{*
 00540934    push       ebp
 00540935    mov        ebp,esp
 00540937    push       ebx
 00540938    mov        ebx,edx
 0054093A    mov        eax,ebx
 0054093C    call       @LStrClr
 00540941    pop        ebx
 00540942    pop        ebp
 00540943    ret
*}
//end;

//00540944
//procedure sub_00540944(?:?);
//begin
{*
 00540944    push       ebp
 00540945    mov        ebp,esp
 00540947    push       ebx
 00540948    mov        ebx,edx
 0054094A    mov        eax,ebx
 0054094C    mov        edx,540964; 'Zeos Database Connectivity Driver for SQLite'
 00540951    call       @LStrAsg
 00540956    pop        ebx
 00540957    pop        ebp
 00540958    ret
*}
//end;

//00540994
//function sub_00540994():?;
//begin
{*
 00540994    mov        eax,1
 00540999    ret
*}
//end;

//0054099C
//function sub_0054099C():?;
//begin
{*
 0054099C    xor        eax,eax
 0054099E    ret
*}
//end;

//005409A0
//function sub_005409A0():?;
//begin
{*
 005409A0    xor        eax,eax
 005409A2    ret
*}
//end;

//005409A4
//function sub_005409A4():?;
//begin
{*
 005409A4    mov        al,1
 005409A6    ret
*}
//end;

//005409A8
//function sub_005409A8():?;
//begin
{*
 005409A8    xor        eax,eax
 005409AA    ret
*}
//end;

//005409AC
//function sub_005409AC():?;
//begin
{*
 005409AC    xor        eax,eax
 005409AE    ret
*}
//end;

//005409B0
//function sub_005409B0():?;
//begin
{*
 005409B0    mov        al,1
 005409B2    ret
*}
//end;

//005409B4
//function sub_005409B4():?;
//begin
{*
 005409B4    mov        al,1
 005409B6    ret
*}
//end;

//005409B8
//function sub_005409B8():?;
//begin
{*
 005409B8    xor        eax,eax
 005409BA    ret
*}
//end;

//005409BC
//function sub_005409BC():?;
//begin
{*
 005409BC    xor        eax,eax
 005409BE    ret
*}
//end;

//005409C0
//function sub_005409C0():?;
//begin
{*
 005409C0    mov        al,1
 005409C2    ret
*}
//end;

//005409C4
//procedure sub_005409C4(?:?);
//begin
{*
 005409C4    push       ebp
 005409C5    mov        ebp,esp
 005409C7    push       ebx
 005409C8    mov        ebx,edx
 005409CA    mov        eax,ebx
 005409CC    mov        edx,5409E4; 'ALL,AND,AS,BETWEEN,BY,CASE,CHECK,COLLATE,COMMIT,CONSTRAINT,CREATE,DEFAULT,DEFERRABLE,DELETE,DISTINCT,DROP,ELSE,EXCEPT,FOREIGN,FROM,GLOB,GROUP,HAVING,IN,INDEX,INSERT,INTERSECT,INTO,IS,ISNULL,JOIN,LIKE,LIMIT,NOT,NOTNULL,NULL,ON,OR,ORDER,PRIMARY,REFERENCES,ROLLBACK,SELECT,SET,TABLE,THEN,TRANSACTION,UNION,UNIQUE,UPDATE,USING,VALUES,WHEN,WHERE,ABORT,AFTER,ASC,ATTACH,BEFORE,BEGIN,DEFERRED,CASCADE,CLUSTER,CONFLICT,COPY,CROSS,DATABASE,DELIMITERS,DESC,DETACH,EACH,END,EXPLAIN,FAIL,FOR,FULL,IGNORE,IMMEDIATE,INITIALLY,INNER,INSTEAD,KEY,LEFT,MATCH,NATURAL,OF,OFFSET,OUTER,PRAGMA,RAISE,REPLACE,RESTRICT,RIGHT,ROW,STATEMENT,TEMP,TEMPORARY,TRIGGER,VACUUM,VIEW'
 005409D1    call       @LStrAsg
 005409D6    pop        ebx
 005409D7    pop        ebp
 005409D8    ret
*}
//end;

//00540C70
//procedure sub_00540C70(?:?);
//begin
{*
 00540C70    push       ebp
 00540C71    mov        ebp,esp
 00540C73    push       ebx
 00540C74    mov        ebx,edx
 00540C76    mov        eax,ebx
 00540C78    mov        edx,540C90; 'ABS,MAX,MIN,RANDOM,ROUND'
 00540C7D    call       @LStrAsg
 00540C82    pop        ebx
 00540C83    pop        ebp
 00540C84    ret
*}
//end;

//00540CAC
//procedure sub_00540CAC(?:?);
//begin
{*
 00540CAC    push       ebp
 00540CAD    mov        ebp,esp
 00540CAF    push       ebx
 00540CB0    mov        ebx,edx
 00540CB2    mov        eax,ebx
 00540CB4    mov        edx,540CCC; 'LENGTH,LIKE,LOWER,SOUNDEX,SUBSTRING,UPPER'
 00540CB9    call       @LStrAsg
 00540CBE    pop        ebx
 00540CBF    pop        ebp
 00540CC0    ret
*}
//end;

//00540CF8
//procedure sub_00540CF8(?:?);
//begin
{*
 00540CF8    push       ebp
 00540CF9    mov        ebp,esp
 00540CFB    push       ebx
 00540CFC    mov        ebx,edx
 00540CFE    mov        eax,ebx
 00540D00    mov        edx,540D18; 'LAST_INSERT_ROWID,SQLITE_VERSION,TYPEOF'
 00540D05    call       @LStrAsg
 00540D0A    pop        ebx
 00540D0B    pop        ebp
 00540D0C    ret
*}
//end;

//00540D40
//procedure sub_00540D40(?:?);
//begin
{*
 00540D40    push       ebp
 00540D41    mov        ebp,esp
 00540D43    push       ebx
 00540D44    mov        ebx,edx
 00540D46    mov        eax,ebx
 00540D48    call       @LStrClr
 00540D4D    pop        ebx
 00540D4E    pop        ebp
 00540D4F    ret
*}
//end;

//00540D50
//procedure sub_00540D50(?:?);
//begin
{*
 00540D50    push       ebp
 00540D51    mov        ebp,esp
 00540D53    push       ebx
 00540D54    mov        ebx,edx
 00540D56    mov        eax,ebx
 00540D58    mov        edx,540D70; '//'
 00540D5D    call       @LStrAsg
 00540D62    pop        ebx
 00540D63    pop        ebp
 00540D64    ret
*}
//end;

//00540D74
//procedure sub_00540D74(?:?);
//begin
{*
 00540D74    push       ebp
 00540D75    mov        ebp,esp
 00540D77    push       ebx
 00540D78    mov        ebx,edx
 00540D7A    mov        eax,ebx
 00540D7C    call       @LStrClr
 00540D81    pop        ebx
 00540D82    pop        ebp
 00540D83    ret
*}
//end;

//00540D84
//function sub_00540D84():?;
//begin
{*
 00540D84    xor        eax,eax
 00540D86    ret
*}
//end;

//00540D88
//function sub_00540D88():?;
//begin
{*
 00540D88    xor        eax,eax
 00540D8A    ret
*}
//end;

//00540D8C
//function sub_00540D8C():?;
//begin
{*
 00540D8C    mov        al,1
 00540D8E    ret
*}
//end;

//00540D90
//function sub_00540D90():?;
//begin
{*
 00540D90    mov        al,1
 00540D92    ret
*}
//end;

//00540D94
//function sub_00540D94():?;
//begin
{*
 00540D94    mov        al,1
 00540D96    ret
*}
//end;

//00540D98
//function sub_00540D98():?;
//begin
{*
 00540D98    xor        eax,eax
 00540D9A    ret
*}
//end;

//00540D9C
//procedure sub_00540D9C(?:?);
//begin
{*
 00540D9C    push       ebp
 00540D9D    mov        ebp,esp
 00540D9F    push       ebx
 00540DA0    mov        ebx,edx
 00540DA2    mov        eax,ebx
 00540DA4    call       @LStrClr
 00540DA9    pop        ebx
 00540DAA    pop        ebp
 00540DAB    ret
*}
//end;

//00540DAC
//procedure sub_00540DAC(?:?);
//begin
{*
 00540DAC    push       ebp
 00540DAD    mov        ebp,esp
 00540DAF    push       ebx
 00540DB0    mov        ebx,edx
 00540DB2    mov        eax,ebx
 00540DB4    call       @LStrClr
 00540DB9    pop        ebx
 00540DBA    pop        ebp
 00540DBB    ret
*}
//end;

//00540DBC
//procedure sub_00540DBC(?:?);
//begin
{*
 00540DBC    push       ebp
 00540DBD    mov        ebp,esp
 00540DBF    push       ebx
 00540DC0    mov        ebx,edx
 00540DC2    mov        eax,ebx
 00540DC4    mov        edx,540DDC; 'database'
 00540DC9    call       @LStrAsg
 00540DCE    pop        ebx
 00540DCF    pop        ebp
 00540DD0    ret
*}
//end;

//00540DE8
//procedure sub_00540DE8(?:?);
//begin
{*
 00540DE8    push       ebp
 00540DE9    mov        ebp,esp
 00540DEB    push       ebx
 00540DEC    mov        ebx,edx
 00540DEE    mov        eax,ebx
 00540DF0    mov        edx,540E08; '.'
 00540DF5    call       @LStrAsg
 00540DFA    pop        ebx
 00540DFB    pop        ebp
 00540DFC    ret
*}
//end;

//00540E0C
//function sub_00540E0C():?;
//begin
{*
 00540E0C    mov        al,1
 00540E0E    ret
*}
//end;

//00540E10
//function sub_00540E10():?;
//begin
{*
 00540E10    xor        eax,eax
 00540E12    ret
*}
//end;

//00540E14
//function sub_00540E14():?;
//begin
{*
 00540E14    xor        eax,eax
 00540E16    ret
*}
//end;

//00540E18
//function sub_00540E18():?;
//begin
{*
 00540E18    xor        eax,eax
 00540E1A    ret
*}
//end;

//00540E1C
//function sub_00540E1C():?;
//begin
{*
 00540E1C    xor        eax,eax
 00540E1E    ret
*}
//end;

//00540E20
//function sub_00540E20():?;
//begin
{*
 00540E20    mov        al,1
 00540E22    ret
*}
//end;

//00540E24
//function sub_00540E24():?;
//begin
{*
 00540E24    xor        eax,eax
 00540E26    ret
*}
//end;

//00540E28
//function sub_00540E28():?;
//begin
{*
 00540E28    xor        eax,eax
 00540E2A    ret
*}
//end;

//00540E2C
//function sub_00540E2C():?;
//begin
{*
 00540E2C    xor        eax,eax
 00540E2E    ret
*}
//end;

//00540E30
//function sub_00540E30():?;
//begin
{*
 00540E30    mov        al,1
 00540E32    ret
*}
//end;

//00540E34
//function sub_00540E34():?;
//begin
{*
 00540E34    xor        eax,eax
 00540E36    ret
*}
//end;

//00540E38
//function sub_00540E38():?;
//begin
{*
 00540E38    xor        eax,eax
 00540E3A    ret
*}
//end;

//00540E3C
//function sub_00540E3C():?;
//begin
{*
 00540E3C    xor        eax,eax
 00540E3E    ret
*}
//end;

//00540E40
//function sub_00540E40():?;
//begin
{*
 00540E40    xor        eax,eax
 00540E42    ret
*}
//end;

//00540E44
//function sub_00540E44():?;
//begin
{*
 00540E44    mov        al,1
 00540E46    ret
*}
//end;

//00540E48
//function sub_00540E48():?;
//begin
{*
 00540E48    mov        al,1
 00540E4A    ret
*}
//end;

//00540E4C
//function sub_00540E4C():?;
//begin
{*
 00540E4C    mov        al,1
 00540E4E    ret
*}
//end;

//00540E50
//function sub_00540E50():?;
//begin
{*
 00540E50    mov        al,1
 00540E52    ret
*}
//end;

//00540E54
//function sub_00540E54():?;
//begin
{*
 00540E54    mov        al,1
 00540E56    ret
*}
//end;

//00540E58
//function sub_00540E58():?;
//begin
{*
 00540E58    mov        al,1
 00540E5A    ret
*}
//end;

//00540E5C
//function sub_00540E5C():?;
//begin
{*
 00540E5C    mov        al,1
 00540E5E    ret
*}
//end;

//00540E60
//function sub_00540E60():?;
//begin
{*
 00540E60    xor        eax,eax
 00540E62    ret
*}
//end;

//00540E64
//function sub_00540E64():?;
//begin
{*
 00540E64    xor        eax,eax
 00540E66    ret
*}
//end;

//00540E68
//function sub_00540E68():?;
//begin
{*
 00540E68    xor        eax,eax
 00540E6A    ret
*}
//end;

//00540E6C
//function sub_00540E6C():?;
//begin
{*
 00540E6C    xor        eax,eax
 00540E6E    ret
*}
//end;

//00540E70
//function sub_00540E70():?;
//begin
{*
 00540E70    xor        eax,eax
 00540E72    ret
*}
//end;

//00540E74
//function sub_00540E74():?;
//begin
{*
 00540E74    xor        eax,eax
 00540E76    ret
*}
//end;

//00540E78
//function sub_00540E78():?;
//begin
{*
 00540E78    xor        eax,eax
 00540E7A    ret
*}
//end;

//00540E7C
//function sub_00540E7C():?;
//begin
{*
 00540E7C    xor        eax,eax
 00540E7E    ret
*}
//end;

//00540E80
//function sub_00540E80():?;
//begin
{*
 00540E80    xor        eax,eax
 00540E82    ret
*}
//end;

//00540E84
//function sub_00540E84():?;
//begin
{*
 00540E84    xor        eax,eax
 00540E86    ret
*}
//end;

//00540E88
//function sub_00540E88():?;
//begin
{*
 00540E88    xor        eax,eax
 00540E8A    ret
*}
//end;

//00540E8C
//function sub_00540E8C():?;
//begin
{*
 00540E8C    xor        eax,eax
 00540E8E    ret
*}
//end;

//00540E90
//function sub_00540E90():?;
//begin
{*
 00540E90    xor        eax,eax
 00540E92    ret
*}
//end;

//00540E94
//function sub_00540E94():?;
//begin
{*
 00540E94    xor        eax,eax
 00540E96    ret
*}
//end;

//00540E98
//function sub_00540E98():?;
//begin
{*
 00540E98    xor        eax,eax
 00540E9A    ret
*}
//end;

//00540E9C
//function sub_00540E9C():?;
//begin
{*
 00540E9C    xor        eax,eax
 00540E9E    ret
*}
//end;

//00540EA0
//function sub_00540EA0():?;
//begin
{*
 00540EA0    xor        eax,eax
 00540EA2    ret
*}
//end;

//00540EA4
//function sub_00540EA4():?;
//begin
{*
 00540EA4    xor        eax,eax
 00540EA6    ret
*}
//end;

//00540EA8
//function sub_00540EA8():?;
//begin
{*
 00540EA8    xor        eax,eax
 00540EAA    ret
*}
//end;

//00540EAC
//function sub_00540EAC():?;
//begin
{*
 00540EAC    mov        al,1
 00540EAE    ret
*}
//end;

//00540EB0
//function sub_00540EB0():?;
//begin
{*
 00540EB0    mov        eax,0FFFF
 00540EB5    ret
*}
//end;

//00540EB8
//function sub_00540EB8():?;
//begin
{*
 00540EB8    xor        eax,eax
 00540EBA    ret
*}
//end;

//00540EBC
//function sub_00540EBC():?;
//begin
{*
 00540EBC    xor        eax,eax
 00540EBE    ret
*}
//end;

//00540EC0
//function sub_00540EC0():?;
//begin
{*
 00540EC0    xor        eax,eax
 00540EC2    ret
*}
//end;

//00540EC4
//function sub_00540EC4():?;
//begin
{*
 00540EC4    xor        eax,eax
 00540EC6    ret
*}
//end;

//00540EC8
//function sub_00540EC8():?;
//begin
{*
 00540EC8    xor        eax,eax
 00540ECA    ret
*}
//end;

//00540ECC
//function sub_00540ECC():?;
//begin
{*
 00540ECC    mov        al,1
 00540ECE    ret
*}
//end;

//00540ED0
//function sub_00540ED0():?;
//begin
{*
 00540ED0    mov        al,1
 00540ED2    ret
*}
//end;

//00540ED4
//function sub_00540ED4():?;
//begin
{*
 00540ED4    mov        al,1
 00540ED6    ret
*}
//end;

//00540ED8
//function sub_00540ED8():?;
//begin
{*
 00540ED8    mov        al,1
 00540EDA    ret
*}
//end;

//00540EDC
//function sub_00540EDC():?;
//begin
{*
 00540EDC    mov        al,1
 00540EDE    ret
*}
//end;

//00540EE0
//function sub_00540EE0():?;
//begin
{*
 00540EE0    xor        eax,eax
 00540EE2    ret
*}
//end;

//00540EE4
//function sub_00540EE4(?:AnsiString; ?:?):?;
//begin
{*
 00540EE4    push       ebp
 00540EE5    mov        ebp,esp
 00540EE7    add        esp,0FFFFFFF8
 00540EEA    push       ebx
 00540EEB    push       esi
 00540EEC    push       edi
 00540EED    xor        edx,edx
 00540EEF    mov        dword ptr [ebp-8],edx
 00540EF2    mov        dword ptr [ebp-4],eax
 00540EF5    mov        eax,dword ptr [ebp-4]
 00540EF8    call       @LStrAddRef
 00540EFD    xor        eax,eax
 00540EFF    push       ebp
 00540F00    push       540F93
 00540F05    push       dword ptr fs:[eax]
 00540F08    mov        dword ptr fs:[eax],esp
 00540F0B    xor        ebx,ebx
 00540F0D    mov        eax,dword ptr [ebp+8]
 00540F10    mov        eax,dword ptr [eax+0C]
 00540F13    call       @DynArrayHigh
 00540F18    mov        esi,eax
 00540F1A    test       esi,esi
>00540F1C    jl         00540F5D
 00540F1E    inc        esi
 00540F1F    xor        edi,edi
 00540F21    test       bl,bl
>00540F23    jne        00540F55
 00540F25    mov        eax,dword ptr [ebp+8]
 00540F28    mov        eax,dword ptr [eax+0C]
 00540F2B    test       eax,eax
>00540F2D    je         00540F34
 00540F2F    cmp        edi,dword ptr [eax-4]
>00540F32    jb         00540F39
 00540F34    call       @BoundErr
 00540F39    mov        eax,dword ptr [eax+edi*4]
 00540F3C    lea        edx,[ebp-8]
 00540F3F    call       UpperCase
 00540F44    mov        eax,dword ptr [ebp-8]
 00540F47    mov        edx,dword ptr [ebp-4]
 00540F4A    call       @LStrCmp
>00540F4F    je         00540F55
 00540F51    xor        eax,eax
>00540F53    jmp        00540F57
 00540F55    mov        al,1
 00540F57    mov        ebx,eax
 00540F59    inc        edi
 00540F5A    dec        esi
<00540F5B    jne        00540F21
 00540F5D    test       bl,bl
>00540F5F    jne        00540F74
 00540F61    mov        eax,dword ptr [ebp+8]
 00540F64    mov        eax,dword ptr [eax+0C]
 00540F67    call       @DynArrayLength
 00540F6C    test       eax,eax
>00540F6E    je         00540F74
 00540F70    xor        eax,eax
>00540F72    jmp        00540F76
 00540F74    mov        al,1
 00540F76    mov        ebx,eax
 00540F78    xor        eax,eax
 00540F7A    pop        edx
 00540F7B    pop        ecx
 00540F7C    pop        ecx
 00540F7D    mov        dword ptr fs:[eax],edx
 00540F80    push       540F9A
 00540F85    lea        eax,[ebp-8]
 00540F88    mov        edx,2
 00540F8D    call       @LStrArrayClr
 00540F92    ret
<00540F93    jmp        @HandleFinally
<00540F98    jmp        00540F85
 00540F9A    mov        eax,ebx
 00540F9C    pop        edi
 00540F9D    pop        esi
 00540F9E    pop        ebx
 00540F9F    pop        ecx
 00540FA0    pop        ecx
 00540FA1    pop        ebp
 00540FA2    ret
*}
//end;

//00540FA4
//procedure sub_00540FA4(?:?; ?:?; ?:?);
//begin
{*
 00540FA4    push       ebp
 00540FA5    mov        ebp,esp
 00540FA7    push       0
 00540FA9    push       0
 00540FAB    push       0
 00540FAD    push       0
 00540FAF    push       0
 00540FB1    push       0
 00540FB3    push       0
 00540FB5    push       ebx
 00540FB6    push       esi
 00540FB7    mov        esi,edx
 00540FB9    mov        ebx,eax
 00540FBB    xor        eax,eax
 00540FBD    push       ebp
 00540FBE    push       54111F
 00540FC3    push       dword ptr fs:[eax]
 00540FC6    mov        dword ptr fs:[eax],esp
 00540FC9    lea        eax,[ebp-4]
 00540FCC    call       @LStrClr
 00540FD1    push       ebp
 00540FD2    mov        eax,541138; 'TABLE'
 00540FD7    call       00540EE4
 00540FDC    pop        ecx
 00540FDD    test       al,al
>00540FDF    je         00540FEE
 00540FE1    lea        eax,[ebp-4]
 00540FE4    mov        edx,541148; 'TYPE='table''
 00540FE9    call       @LStrLAsg
 00540FEE    push       ebp
 00540FEF    mov        eax,541160; 'VIEW'
 00540FF4    call       00540EE4
 00540FF9    pop        ecx
 00540FFA    test       al,al
>00540FFC    je         0054102D
 00540FFE    cmp        dword ptr [ebp-4],0
>00541002    je         00541020
 00541004    push       541170; '('
 00541009    push       dword ptr [ebp-4]
 0054100C    push       54117C; ' OR TYPE='view')'
 00541011    lea        eax,[ebp-4]
 00541014    mov        edx,3
 00541019    call       @LStrCatN
>0054101E    jmp        0054102D
 00541020    lea        eax,[ebp-4]
 00541023    mov        edx,541198; 'TYPE='view''
 00541028    call       @LStrLAsg
 0054102D    push       5411AC; 'SELECT ''
 00541032    push       esi
 00541033    push       5411C0; '' AS TABLE_CAT, NULL AS TABLE_SCHEM,'
 00541038    push       5411F0; ' TBL_NAME AS TABLE_NAME, UPPER(TYPE) AS TABLE_TYPE, NULL AS REMARKS'
 0054103D    push       54123C; ' FROM '
 00541042    lea        eax,[ebp-8]
 00541045    mov        edx,5
 0054104A    call       @LStrCatN
 0054104F    test       esi,esi
>00541051    je         00541069
 00541053    push       dword ptr [ebp-8]
 00541056    push       esi
 00541057    push       54124C; '.'
 0054105C    lea        eax,[ebp-8]
 0054105F    mov        edx,3
 00541064    call       @LStrCatN
 00541069    push       dword ptr [ebp-8]
 0054106C    push       541258; 'SQLITE_MASTER WHERE '
 00541071    push       dword ptr [ebp-4]
 00541074    push       541278; ' AND TBL_NAME LIKE ''
 00541079    lea        edx,[ebp-0C]
 0054107C    mov        eax,dword ptr [ebp+10]
 0054107F    call       004D31DC
 00541084    push       dword ptr [ebp-0C]
 00541087    push       541298; '''
 0054108C    lea        eax,[ebp-8]
 0054108F    mov        edx,6
 00541094    call       @LStrCatN
 00541099    mov        eax,dword ptr [ebp+8]
 0054109C    push       eax
 0054109D    lea        edx,[ebp-18]
 005410A0    mov        eax,ebx
 005410A2    mov        ecx,dword ptr [eax]
 005410A4    call       dword ptr [ecx+238]; TZSQLiteDatabaseMetadata.sub_004D8E64
 005410AA    mov        eax,dword ptr [ebp-18]
 005410AD    lea        edx,[ebp-14]
 005410B0    mov        ecx,dword ptr [eax]
 005410B2    call       dword ptr [ecx+0C]
 005410B5    mov        eax,dword ptr [ebp-14]
 005410B8    lea        ecx,[ebp-10]
 005410BB    mov        edx,dword ptr [ebp-8]
 005410BE    mov        esi,dword ptr [eax]
 005410C0    call       dword ptr [esi+0C]
 005410C3    mov        eax,dword ptr [ebp-10]
 005410C6    push       eax
 005410C7    lea        ecx,[ebp-1C]
 005410CA    mov        edx,dword ptr ds:[61B684]; ^gvar_0061DD3C:TZMetadataColumnDefs
 005410D0    mov        edx,dword ptr [edx]
 005410D2    mov        eax,ebx
 005410D4    call       004D8E7C
 005410D9    mov        ecx,dword ptr [ebp-1C]
 005410DC    mov        eax,ebx
 005410DE    pop        edx
 005410DF    call       004D9194
 005410E4    xor        eax,eax
 005410E6    pop        edx
 005410E7    pop        ecx
 005410E8    pop        ecx
 005410E9    mov        dword ptr fs:[eax],edx
 005410EC    push       541126
 005410F1    lea        eax,[ebp-1C]
 005410F4    call       @IntfClear
 005410F9    lea        eax,[ebp-18]
 005410FC    call       @IntfClear
 00541101    lea        eax,[ebp-14]
 00541104    call       @IntfClear
 00541109    lea        eax,[ebp-10]
 0054110C    call       @IntfClear
 00541111    lea        eax,[ebp-0C]
 00541114    mov        edx,3
 00541119    call       @LStrArrayClr
 0054111E    ret
<0054111F    jmp        @HandleFinally
<00541124    jmp        005410F1
 00541126    pop        esi
 00541127    pop        ebx
 00541128    mov        esp,ebp
 0054112A    pop        ebp
 0054112B    ret        0C
*}
//end;

//005412BC
//procedure sub_005412BC(?:?);
//begin
{*
 005412BC    push       ebp
 005412BD    mov        ebp,esp
 005412BF    push       ecx
 005412C0    push       ebx
 005412C1    push       esi
 005412C2    push       edi
 005412C3    mov        esi,edx
 005412C5    mov        ebx,eax
 005412C7    mov        ecx,esi
 005412C9    mov        edx,dword ptr ds:[61B074]; ^gvar_0061DD48:TZMetadataColumnDefs
 005412CF    mov        edx,dword ptr [edx]
 005412D1    mov        eax,ebx
 005412D3    call       004D8E7C
 005412D8    mov        dword ptr [ebp-4],2
 005412DF    mov        ebx,616738; gvar_00616738:array[2] of String
 005412E4    mov        eax,dword ptr [esi]
 005412E6    mov        edx,dword ptr [eax]
 005412E8    call       dword ptr [edx+1E4]
 005412EE    mov        eax,dword ptr [esi]
 005412F0    mov        ecx,dword ptr [ebx]
 005412F2    mov        edx,1
 005412F7    mov        edi,dword ptr [eax]
 005412F9    call       dword ptr [edi+158]
 005412FF    mov        eax,dword ptr [esi]
 00541301    mov        edx,dword ptr [eax]
 00541303    call       dword ptr [edx+1D0]
 00541309    add        ebx,4
 0054130C    dec        dword ptr [ebp-4]
<0054130F    jne        005412E4
 00541311    pop        edi
 00541312    pop        esi
 00541313    pop        ebx
 00541314    pop        ecx
 00541315    pop        ebp
 00541316    ret
*}
//end;

//00541318
//procedure sub_00541318(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00541318    push       ebp
 00541319    mov        ebp,esp
 0054131B    push       ecx
 0054131C    mov        ecx,9
 00541321    push       0
 00541323    push       0
 00541325    dec        ecx
<00541326    jne        00541321
 00541328    xchg       ecx,dword ptr [ebp-4]
 0054132B    push       ebx
 0054132C    push       esi
 0054132D    push       edi
 0054132E    mov        esi,ecx
 00541330    mov        dword ptr [ebp-4],eax
 00541333    mov        ebx,dword ptr [ebp+8]
 00541336    xor        eax,eax
 00541338    push       ebp
 00541339    push       541729
 0054133E    push       dword ptr fs:[eax]
 00541341    mov        dword ptr fs:[eax],esp
 00541344    mov        ecx,ebx
 00541346    mov        edx,dword ptr ds:[61BB18]; ^gvar_0061DD4C:TZMetadataColumnDefs
 0054134C    mov        edx,dword ptr [edx]
 0054134E    mov        eax,dword ptr [ebp-4]
 00541351    call       004D8E7C
 00541356    test       esi,esi
>00541358    jne        00541364
 0054135A    lea        eax,[ebp-14]
 0054135D    call       @LStrClr
>00541362    jmp        00541373
 00541364    lea        eax,[ebp-14]
 00541367    mov        ecx,541744; '.'
 0054136C    mov        edx,esi
 0054136E    call       @LStrCat3
 00541373    lea        edx,[ebp-20]
 00541376    mov        eax,dword ptr [ebp-4]
 00541379    mov        ecx,dword ptr [eax]
 0054137B    call       dword ptr [ecx+238]; TZSQLiteDatabaseMetadata.sub_004D8E64
 00541381    mov        eax,dword ptr [ebp-20]
 00541384    lea        edx,[ebp-1C]
 00541387    mov        ecx,dword ptr [eax]
 00541389    call       dword ptr [ecx+0C]
 0054138C    mov        eax,dword ptr [ebp-1C]
 0054138F    push       eax
 00541390    lea        eax,[ebp-24]
 00541393    push       eax
 00541394    mov        eax,dword ptr [ebp-14]
 00541397    mov        dword ptr [ebp-34],eax
 0054139A    mov        byte ptr [ebp-30],0B
 0054139E    mov        eax,dword ptr [ebp+10]
 005413A1    mov        dword ptr [ebp-2C],eax
 005413A4    mov        byte ptr [ebp-28],0B
 005413A8    lea        edx,[ebp-34]
 005413AB    mov        ecx,1
 005413B0    mov        eax,541750; 'PRAGMA %s table_info('%s')'
 005413B5    call       Format
 005413BA    mov        edx,dword ptr [ebp-24]
 005413BD    lea        ecx,[ebp-18]
 005413C0    pop        eax
 005413C1    mov        edi,dword ptr [eax]
 005413C3    call       dword ptr [edi+0C]
>005413C6    jmp        005416C6
 005413CB    mov        eax,dword ptr [ebx]
 005413CD    mov        edx,dword ptr [eax]
 005413CF    call       dword ptr [edx+1E4]
 005413D5    test       esi,esi
>005413D7    je         005413EC
 005413D9    mov        eax,dword ptr [ebx]
 005413DB    mov        ecx,esi
 005413DD    mov        edx,1
 005413E2    mov        edi,dword ptr [eax]
 005413E4    call       dword ptr [edi+158]
>005413EA    jmp        005413FB
 005413EC    mov        eax,dword ptr [ebx]
 005413EE    mov        edx,1
 005413F3    mov        ecx,dword ptr [eax]
 005413F5    call       dword ptr [ecx+130]
 005413FB    mov        eax,dword ptr [ebx]
 005413FD    mov        edx,2
 00541402    mov        ecx,dword ptr [eax]
 00541404    call       dword ptr [ecx+130]
 0054140A    mov        eax,dword ptr [ebx]
 0054140C    mov        ecx,dword ptr [ebp+10]
 0054140F    mov        edx,3
 00541414    mov        edi,dword ptr [eax]
 00541416    call       dword ptr [edi+158]
 0054141C    lea        ecx,[ebp-38]
 0054141F    mov        edx,2
 00541424    mov        eax,dword ptr [ebp-18]
 00541427    mov        edi,dword ptr [eax]
 00541429    call       dword ptr [edi+20]
 0054142C    mov        ecx,dword ptr [ebp-38]
 0054142F    mov        eax,dword ptr [ebx]
 00541431    mov        edx,4
 00541436    mov        edi,dword ptr [eax]
 00541438    call       dword ptr [edi+158]
 0054143E    lea        ecx,[ebp-3C]
 00541441    mov        edx,3
 00541446    mov        eax,dword ptr [ebp-18]
 00541449    mov        edi,dword ptr [eax]
 0054144B    call       dword ptr [edi+20]
 0054144E    mov        eax,dword ptr [ebp-3C]
 00541451    lea        ecx,[ebp-10]
 00541454    lea        edx,[ebp-0C]
 00541457    call       0053CD94
 0054145C    xor        ecx,ecx
 0054145E    mov        cl,al
 00541460    mov        eax,dword ptr [ebx]
 00541462    mov        edx,5
 00541467    mov        edi,dword ptr [eax]
 00541469    call       dword ptr [edi+140]
 0054146F    lea        ecx,[ebp-40]
 00541472    mov        edx,3
 00541477    mov        eax,dword ptr [ebp-18]
 0054147A    mov        edi,dword ptr [eax]
 0054147C    call       dword ptr [edi+20]
 0054147F    mov        eax,dword ptr [ebp-40]
 00541482    lea        edx,[ebp-8]
 00541485    call       UpperCase
 0054148A    mov        edx,dword ptr [ebp-8]
 0054148D    mov        eax,541774; '('
 00541492    call       @LStrPos
 00541497    test       eax,eax
>00541499    jle        005414C5
 0054149B    lea        eax,[ebp-8]
 0054149E    push       eax
 0054149F    mov        edx,dword ptr [ebp-8]
 005414A2    mov        eax,541774; '('
 005414A7    call       @LStrPos
 005414AC    mov        ecx,eax
 005414AE    sub        ecx,1
>005414B1    jno        005414B8
 005414B3    call       @IntOver
 005414B8    mov        edx,1
 005414BD    mov        eax,dword ptr [ebp-8]
 005414C0    call       @LStrCopy
 005414C5    mov        eax,dword ptr [ebx]
 005414C7    mov        ecx,dword ptr [ebp-8]
 005414CA    mov        edx,6
 005414CF    mov        edi,dword ptr [eax]
 005414D1    call       dword ptr [edi+158]
 005414D7    mov        eax,dword ptr [ebx]
 005414D9    mov        ecx,dword ptr [ebp-0C]
 005414DC    mov        edx,7
 005414E1    mov        edi,dword ptr [eax]
 005414E3    call       dword ptr [edi+140]
 005414E9    mov        eax,dword ptr [ebx]
 005414EB    mov        edx,8
 005414F0    mov        ecx,dword ptr [eax]
 005414F2    call       dword ptr [ecx+130]
 005414F8    mov        eax,dword ptr [ebx]
 005414FA    mov        ecx,dword ptr [ebp-10]
 005414FD    mov        edx,9
 00541502    mov        edi,dword ptr [eax]
 00541504    call       dword ptr [edi+140]
 0054150A    mov        eax,dword ptr [ebx]
 0054150C    xor        ecx,ecx
 0054150E    mov        edx,0A
 00541513    mov        edi,dword ptr [eax]
 00541515    call       dword ptr [edi+140]
 0054151B    mov        edx,4
 00541520    mov        eax,dword ptr [ebp-18]
 00541523    mov        ecx,dword ptr [eax]
 00541525    call       dword ptr [ecx+34]
 00541528    test       eax,eax
>0054152A    je         00541553
 0054152C    mov        eax,dword ptr [ebx]
 0054152E    xor        ecx,ecx
 00541530    mov        edx,0B
 00541535    mov        edi,dword ptr [eax]
 00541537    call       dword ptr [edi+140]
 0054153D    mov        eax,dword ptr [ebx]
 0054153F    mov        ecx,541780; 'NO'
 00541544    mov        edx,12
 00541549    mov        edi,dword ptr [eax]
 0054154B    call       dword ptr [edi+158]
>00541551    jmp        0054157B
 00541553    mov        eax,dword ptr [ebx]
 00541555    mov        ecx,1
 0054155A    mov        edx,0B
 0054155F    mov        edi,dword ptr [eax]
 00541561    call       dword ptr [edi+140]
 00541567    mov        eax,dword ptr [ebx]
 00541569    mov        ecx,54178C; 'YES'
 0054156E    mov        edx,12
 00541573    mov        edi,dword ptr [eax]
 00541575    call       dword ptr [edi+158]
 0054157B    mov        eax,dword ptr [ebx]
 0054157D    mov        edx,0C
 00541582    mov        ecx,dword ptr [eax]
 00541584    call       dword ptr [ecx+130]
 0054158A    lea        ecx,[ebp-48]
 0054158D    mov        edx,5
 00541592    mov        eax,dword ptr [ebp-18]
 00541595    mov        edi,dword ptr [eax]
 00541597    call       dword ptr [edi+20]
 0054159A    mov        eax,dword ptr [ebp-48]
 0054159D    lea        edx,[ebp-44]
 005415A0    call       Trim
 005415A5    cmp        dword ptr [ebp-44],0
>005415A9    je         005415CF
 005415AB    lea        ecx,[ebp-4C]
 005415AE    mov        edx,5
 005415B3    mov        eax,dword ptr [ebp-18]
 005415B6    mov        edi,dword ptr [eax]
 005415B8    call       dword ptr [edi+20]
 005415BB    mov        ecx,dword ptr [ebp-4C]
 005415BE    mov        eax,dword ptr [ebx]
 005415C0    mov        edx,0D
 005415C5    mov        edi,dword ptr [eax]
 005415C7    call       dword ptr [edi+158]
>005415CD    jmp        005415DE
 005415CF    mov        eax,dword ptr [ebx]
 005415D1    mov        edx,0D
 005415D6    mov        ecx,dword ptr [eax]
 005415D8    call       dword ptr [ecx+130]
 005415DE    mov        eax,dword ptr [ebx]
 005415E0    mov        edx,0E
 005415E5    mov        ecx,dword ptr [eax]
 005415E7    call       dword ptr [ecx+130]
 005415ED    mov        eax,dword ptr [ebx]
 005415EF    mov        edx,0F
 005415F4    mov        ecx,dword ptr [eax]
 005415F6    call       dword ptr [ecx+130]
 005415FC    mov        eax,dword ptr [ebx]
 005415FE    mov        edx,10
 00541603    mov        ecx,dword ptr [eax]
 00541605    call       dword ptr [ecx+130]
 0054160B    mov        edx,1
 00541610    mov        eax,dword ptr [ebp-18]
 00541613    mov        ecx,dword ptr [eax]
 00541615    call       dword ptr [ecx+34]
 00541618    mov        ecx,eax
 0054161A    add        ecx,1
>0054161D    jno        00541624
 0054161F    call       @IntOver
 00541624    mov        eax,dword ptr [ebx]
 00541626    mov        edx,11
 0054162B    mov        edi,dword ptr [eax]
 0054162D    call       dword ptr [edi+140]
 00541633    mov        edx,6
 00541638    mov        eax,dword ptr [ebp-18]
 0054163B    mov        ecx,dword ptr [eax]
 0054163D    call       dword ptr [ecx+34]
 00541640    dec        eax
>00541641    jne        00541652
 00541643    mov        eax,dword ptr [ebp-8]
 00541646    mov        edx,541798; 'INTEGER'
 0054164B    call       @LStrCmp
>00541650    je         00541656
 00541652    xor        ecx,ecx
>00541654    jmp        00541658
 00541656    mov        cl,1
 00541658    mov        eax,dword ptr [ebx]
 0054165A    mov        edx,5417A8; 'AUTO_INCREMENT'
 0054165F    mov        edi,dword ptr [eax]
 00541661    call       dword ptr [edi+184]
 00541667    mov        eax,dword ptr [ebx]
 00541669    xor        ecx,ecx
 0054166B    mov        edx,5417C0; 'CASE_SENSITIVE'
 00541670    mov        edi,dword ptr [eax]
 00541672    call       dword ptr [edi+184]
 00541678    mov        eax,dword ptr [ebx]
 0054167A    mov        cl,1
 0054167C    mov        edx,5417D8; 'SEARCHABLE'
 00541681    mov        edi,dword ptr [eax]
 00541683    call       dword ptr [edi+184]
 00541689    mov        eax,dword ptr [ebx]
 0054168B    mov        cl,1
 0054168D    mov        edx,5417EC; 'WRITABLE'
 00541692    mov        edi,dword ptr [eax]
 00541694    call       dword ptr [edi+184]
 0054169A    mov        eax,dword ptr [ebx]
 0054169C    mov        cl,1
 0054169E    mov        edx,541800; 'DEFINITELYWRITABLE'
 005416A3    mov        edi,dword ptr [eax]
 005416A5    call       dword ptr [edi+184]
 005416AB    mov        eax,dword ptr [ebx]
 005416AD    xor        ecx,ecx
 005416AF    mov        edx,54181C; 'READONLY'
 005416B4    mov        edi,dword ptr [eax]
 005416B6    call       dword ptr [edi+184]
 005416BC    mov        eax,dword ptr [ebx]
 005416BE    mov        edx,dword ptr [eax]
 005416C0    call       dword ptr [edx+1D0]
 005416C6    mov        eax,dword ptr [ebp-18]
 005416C9    mov        edx,dword ptr [eax]
 005416CB    call       dword ptr [edx+0C]
 005416CE    test       al,al
<005416D0    jne        005413CB
 005416D6    mov        eax,dword ptr [ebp-18]
 005416D9    mov        edx,dword ptr [eax]
 005416DB    call       dword ptr [edx+10]
 005416DE    xor        eax,eax
 005416E0    pop        edx
 005416E1    pop        ecx
 005416E2    pop        ecx
 005416E3    mov        dword ptr fs:[eax],edx
 005416E6    push       541730
 005416EB    lea        eax,[ebp-4C]
 005416EE    mov        edx,6
 005416F3    call       @LStrArrayClr
 005416F8    lea        eax,[ebp-24]
 005416FB    call       @LStrClr
 00541700    lea        eax,[ebp-20]
 00541703    call       @IntfClear
 00541708    lea        eax,[ebp-1C]
 0054170B    call       @IntfClear
 00541710    lea        eax,[ebp-18]
 00541713    call       @IntfClear
 00541718    lea        eax,[ebp-14]
 0054171B    call       @LStrClr
 00541720    lea        eax,[ebp-8]
 00541723    call       @LStrClr
 00541728    ret
<00541729    jmp        @HandleFinally
<0054172E    jmp        005416EB
 00541730    pop        edi
 00541731    pop        esi
 00541732    pop        ebx
 00541733    mov        esp,ebp
 00541735    pop        ebp
 00541736    ret        0C
*}
//end;

//00541828
//procedure sub_00541828(?:?; ?:?; ?:?; ?:?);
//begin
{*
 00541828    push       ebp
 00541829    mov        ebp,esp
 0054182B    push       ecx
 0054182C    mov        ecx,5
 00541831    push       0
 00541833    push       0
 00541835    dec        ecx
<00541836    jne        00541831
 00541838    xchg       ecx,dword ptr [ebp-4]
 0054183B    push       ebx
 0054183C    push       esi
 0054183D    push       edi
 0054183E    mov        dword ptr [ebp-4],ecx
 00541841    mov        esi,eax
 00541843    mov        ebx,dword ptr [ebp+8]
 00541846    xor        eax,eax
 00541848    push       ebp
 00541849    push       5419F6
 0054184E    push       dword ptr fs:[eax]
 00541851    mov        dword ptr fs:[eax],esp
 00541854    mov        ecx,ebx
 00541856    mov        edx,dword ptr ds:[61BBD8]; ^gvar_0061DD60:TZMetadataColumnDefs
 0054185C    mov        edx,dword ptr [edx]
 0054185E    mov        eax,esi
 00541860    call       004D8E7C
 00541865    cmp        dword ptr [ebp-4],0
>00541869    jne        00541875
 0054186B    lea        eax,[ebp-8]
 0054186E    call       @LStrClr
>00541873    jmp        00541885
 00541875    lea        eax,[ebp-8]
 00541878    mov        ecx,541A10; '.'
 0054187D    mov        edx,dword ptr [ebp-4]
 00541880    call       @LStrCat3
 00541885    lea        edx,[ebp-14]
 00541888    mov        eax,esi
 0054188A    mov        ecx,dword ptr [eax]
 0054188C    call       dword ptr [ecx+238]; TZSQLiteDatabaseMetadata.sub_004D8E64
 00541892    mov        eax,dword ptr [ebp-14]
 00541895    lea        edx,[ebp-10]
 00541898    mov        ecx,dword ptr [eax]
 0054189A    call       dword ptr [ecx+0C]
 0054189D    mov        eax,dword ptr [ebp-10]
 005418A0    push       eax
 005418A1    lea        eax,[ebp-18]
 005418A4    push       eax
 005418A5    mov        eax,dword ptr [ebp-8]
 005418A8    mov        dword ptr [ebp-28],eax
 005418AB    mov        byte ptr [ebp-24],0B
 005418AF    mov        eax,dword ptr [ebp+0C]
 005418B2    mov        dword ptr [ebp-20],eax
 005418B5    mov        byte ptr [ebp-1C],0B
 005418B9    lea        edx,[ebp-28]
 005418BC    mov        ecx,1
 005418C1    mov        eax,541A1C; 'PRAGMA %s table_info('%s')'
 005418C6    call       Format
 005418CB    mov        edx,dword ptr [ebp-18]
 005418CE    lea        ecx,[ebp-0C]
 005418D1    pop        eax
 005418D2    mov        esi,dword ptr [eax]
 005418D4    call       dword ptr [esi+0C]
 005418D7    mov        esi,1
>005418DC    jmp        005419A0
 005418E1    mov        edx,6
 005418E6    mov        eax,dword ptr [ebp-0C]
 005418E9    mov        ecx,dword ptr [eax]
 005418EB    call       dword ptr [ecx+34]
 005418EE    test       eax,eax
>005418F0    je         005419A0
 005418F6    mov        eax,dword ptr [ebx]
 005418F8    mov        edx,dword ptr [eax]
 005418FA    call       dword ptr [edx+1E4]
 00541900    cmp        dword ptr [ebp-4],0
>00541904    je         0054191A
 00541906    mov        eax,dword ptr [ebx]
 00541908    mov        ecx,dword ptr [ebp-4]
 0054190B    mov        edx,1
 00541910    mov        edi,dword ptr [eax]
 00541912    call       dword ptr [edi+158]
>00541918    jmp        00541929
 0054191A    mov        eax,dword ptr [ebx]
 0054191C    mov        edx,1
 00541921    mov        ecx,dword ptr [eax]
 00541923    call       dword ptr [ecx+130]
 00541929    mov        eax,dword ptr [ebx]
 0054192B    mov        edx,2
 00541930    mov        ecx,dword ptr [eax]
 00541932    call       dword ptr [ecx+130]
 00541938    mov        eax,dword ptr [ebx]
 0054193A    mov        ecx,dword ptr [ebp+0C]
 0054193D    mov        edx,3
 00541942    mov        edi,dword ptr [eax]
 00541944    call       dword ptr [edi+158]
 0054194A    lea        ecx,[ebp-2C]
 0054194D    mov        edx,2
 00541952    mov        eax,dword ptr [ebp-0C]
 00541955    mov        edi,dword ptr [eax]
 00541957    call       dword ptr [edi+20]
 0054195A    mov        ecx,dword ptr [ebp-2C]
 0054195D    mov        eax,dword ptr [ebx]
 0054195F    mov        edx,4
 00541964    mov        edi,dword ptr [eax]
 00541966    call       dword ptr [edi+158]
 0054196C    mov        eax,dword ptr [ebx]
 0054196E    mov        ecx,esi
 00541970    mov        edx,5
 00541975    mov        edi,dword ptr [eax]
 00541977    call       dword ptr [edi+140]
 0054197D    mov        eax,dword ptr [ebx]
 0054197F    mov        edx,6
 00541984    mov        ecx,dword ptr [eax]
 00541986    call       dword ptr [ecx+130]
 0054198C    add        esi,1
>0054198F    jno        00541996
 00541991    call       @IntOver
 00541996    mov        eax,dword ptr [ebx]
 00541998    mov        edx,dword ptr [eax]
 0054199A    call       dword ptr [edx+1D0]
 005419A0    mov        eax,dword ptr [ebp-0C]
 005419A3    mov        edx,dword ptr [eax]
 005419A5    call       dword ptr [edx+0C]
 005419A8    test       al,al
<005419AA    jne        005418E1
 005419B0    mov        eax,dword ptr [ebp-0C]
 005419B3    mov        edx,dword ptr [eax]
 005419B5    call       dword ptr [edx+10]
 005419B8    xor        eax,eax
 005419BA    pop        edx
 005419BB    pop        ecx
 005419BC    pop        ecx
 005419BD    mov        dword ptr fs:[eax],edx
 005419C0    push       5419FD
 005419C5    lea        eax,[ebp-2C]
 005419C8    call       @LStrClr
 005419CD    lea        eax,[ebp-18]
 005419D0    call       @LStrClr
 005419D5    lea        eax,[ebp-14]
 005419D8    call       @IntfClear
 005419DD    lea        eax,[ebp-10]
 005419E0    call       @IntfClear
 005419E5    lea        eax,[ebp-0C]
 005419E8    call       @IntfClear
 005419ED    lea        eax,[ebp-8]
 005419F0    call       @LStrClr
 005419F5    ret
<005419F6    jmp        @HandleFinally
<005419FB    jmp        005419C5
 005419FD    pop        edi
 005419FE    pop        esi
 005419FF    pop        ebx
 00541A00    mov        esp,ebp
 00541A02    pop        ebp
 00541A03    ret        8
*}
//end;

//00541BAC
//procedure sub_00541BAC(?:?);
//begin
{*
 00541BAC    push       ebp
 00541BAD    mov        ebp,esp
 00541BAF    add        esp,0FFFFFFF4
 00541BB2    push       ebx
 00541BB3    push       esi
 00541BB4    push       edi
 00541BB5    mov        ebx,edx
 00541BB7    mov        dword ptr [ebp-4],16
 00541BBE    mov        esi,616740; gvar_00616740:array[22] of String
 00541BC3    mov        eax,616798
 00541BC8    mov        dword ptr [ebp-8],eax
 00541BCB    mov        eax,6167B0
 00541BD0    mov        dword ptr [ebp-0C],eax
 00541BD3    mov        eax,dword ptr [ebx]
 00541BD5    mov        edx,dword ptr [eax]
 00541BD7    call       dword ptr [edx+1E4]
 00541BDD    mov        eax,dword ptr [ebx]
 00541BDF    mov        ecx,dword ptr [esi]
 00541BE1    mov        edx,1
 00541BE6    mov        edi,dword ptr [eax]
 00541BE8    call       dword ptr [edi+158]
 00541BEE    mov        eax,dword ptr [ebp-8]
 00541BF1    xor        ecx,ecx
 00541BF3    mov        cl,byte ptr [eax]
 00541BF5    mov        eax,dword ptr [ebx]
 00541BF7    mov        edx,2
 00541BFC    mov        edi,dword ptr [eax]
 00541BFE    call       dword ptr [edi+140]
 00541C04    mov        eax,dword ptr [ebp-0C]
 00541C07    mov        eax,dword ptr [eax]
 00541C09    test       eax,eax
>00541C0B    jl         00541C20
 00541C0D    mov        ecx,eax
 00541C0F    mov        eax,dword ptr [ebx]
 00541C11    mov        edx,3
 00541C16    mov        edi,dword ptr [eax]
 00541C18    call       dword ptr [edi+140]
>00541C1E    jmp        00541C2F
 00541C20    mov        eax,dword ptr [ebx]
 00541C22    mov        edx,3
 00541C27    mov        ecx,dword ptr [eax]
 00541C29    call       dword ptr [ecx+130]
 00541C2F    mov        eax,dword ptr [ebp-8]
 00541C32    mov        al,byte ptr [eax]
 00541C34    sub        al,9
>00541C36    je         00541C42
 00541C38    add        al,0FE
 00541C3A    sub        al,5
>00541C3C    jb         00541C42
 00541C3E    sub        al,1
>00541C40    jne        00541C6C
 00541C42    mov        eax,dword ptr [ebx]
 00541C44    mov        ecx,541D9C; '''
 00541C49    mov        edx,4
 00541C4E    mov        edi,dword ptr [eax]
 00541C50    call       dword ptr [edi+158]
 00541C56    mov        eax,dword ptr [ebx]
 00541C58    mov        ecx,541D9C; '''
 00541C5D    mov        edx,5
 00541C62    mov        edi,dword ptr [eax]
 00541C64    call       dword ptr [edi+158]
>00541C6A    jmp        00541C8A
 00541C6C    mov        eax,dword ptr [ebx]
 00541C6E    mov        edx,4
 00541C73    mov        ecx,dword ptr [eax]
 00541C75    call       dword ptr [ecx+130]
 00541C7B    mov        eax,dword ptr [ebx]
 00541C7D    mov        edx,5
 00541C82    mov        ecx,dword ptr [eax]
 00541C84    call       dword ptr [ecx+130]
 00541C8A    mov        eax,dword ptr [ebx]
 00541C8C    mov        edx,6
 00541C91    mov        ecx,dword ptr [eax]
 00541C93    call       dword ptr [ecx+130]
 00541C99    mov        eax,dword ptr [ebx]
 00541C9B    mov        ecx,1
 00541CA0    mov        edx,7
 00541CA5    mov        edi,dword ptr [eax]
 00541CA7    call       dword ptr [edi+140]
 00541CAD    mov        eax,dword ptr [ebx]
 00541CAF    xor        ecx,ecx
 00541CB1    mov        edx,8
 00541CB6    mov        edi,dword ptr [eax]
 00541CB8    call       dword ptr [edi+134]
 00541CBE    mov        eax,dword ptr [ebx]
 00541CC0    xor        ecx,ecx
 00541CC2    mov        edx,9
 00541CC7    mov        edi,dword ptr [eax]
 00541CC9    call       dword ptr [edi+134]
 00541CCF    mov        eax,dword ptr [ebx]
 00541CD1    xor        ecx,ecx
 00541CD3    mov        edx,0B
 00541CD8    mov        edi,dword ptr [eax]
 00541CDA    call       dword ptr [edi+134]
 00541CE0    mov        eax,dword ptr [ebx]
 00541CE2    xor        ecx,ecx
 00541CE4    mov        edx,0C
 00541CE9    mov        edi,dword ptr [eax]
 00541CEB    call       dword ptr [edi+134]
 00541CF1    mov        eax,dword ptr [esi]
 00541CF3    mov        edx,541DA8; 'INTEGER'
 00541CF8    call       @LStrCmp
 00541CFD    sete       cl
 00541D00    mov        eax,dword ptr [ebx]
 00541D02    mov        edx,0C
 00541D07    mov        edi,dword ptr [eax]
 00541D09    call       dword ptr [edi+134]
 00541D0F    mov        eax,dword ptr [ebx]
 00541D11    mov        edx,0D
 00541D16    mov        ecx,dword ptr [eax]
 00541D18    call       dword ptr [ecx+130]
 00541D1E    mov        eax,dword ptr [ebx]
 00541D20    mov        edx,0E
 00541D25    mov        ecx,dword ptr [eax]
 00541D27    call       dword ptr [ecx+130]
 00541D2D    mov        eax,dword ptr [ebx]
 00541D2F    mov        edx,0F
 00541D34    mov        ecx,dword ptr [eax]
 00541D36    call       dword ptr [ecx+130]
 00541D3C    mov        eax,dword ptr [ebx]
 00541D3E    mov        edx,10
 00541D43    mov        ecx,dword ptr [eax]
 00541D45    call       dword ptr [ecx+130]
 00541D4B    mov        eax,dword ptr [ebx]
 00541D4D    mov        edx,11
 00541D52    mov        ecx,dword ptr [eax]
 00541D54    call       dword ptr [ecx+130]
 00541D5A    mov        eax,dword ptr [ebx]
 00541D5C    mov        ecx,0A
 00541D61    mov        edx,12
 00541D66    mov        edi,dword ptr [eax]
 00541D68    call       dword ptr [edi+140]
 00541D6E    mov        eax,dword ptr [ebx]
 00541D70    mov        edx,dword ptr [eax]
 00541D72    call       dword ptr [edx+1D0]
 00541D78    add        dword ptr [ebp-0C],4
 00541D7C    inc        dword ptr [ebp-8]
 00541D7F    add        esi,4
 00541D82    dec        dword ptr [ebp-4]
<00541D85    jne        00541BD3
 00541D8B    pop        edi
 00541D8C    pop        esi
 00541D8D    pop        ebx
 00541D8E    mov        esp,ebp
 00541D90    pop        ebp
 00541D91    ret
*}
//end;

//00541DB0
//procedure sub_00541DB0(?:?; ?:?; ?:?; ?:?; ?:?);
//begin
{*
 00541DB0    push       ebp
 00541DB1    mov        ebp,esp
 00541DB3    push       ecx
 00541DB4    mov        ecx,8
 00541DB9    push       0
 00541DBB    push       0
 00541DBD    dec        ecx
<00541DBE    jne        00541DB9
 00541DC0    push       ecx
 00541DC1    xchg       ecx,dword ptr [ebp-4]
 00541DC4    push       ebx
 00541DC5    push       esi
 00541DC6    push       edi
 00541DC7    mov        esi,ecx
 00541DC9    mov        dword ptr [ebp-4],eax
 00541DCC    mov        ebx,dword ptr [ebp+8]
 00541DCF    xor        eax,eax
 00541DD1    push       ebp
 00541DD2    push       5420EF
 00541DD7    push       dword ptr fs:[eax]
 00541DDA    mov        dword ptr fs:[eax],esp
 00541DDD    mov        ecx,ebx
 00541DDF    mov        edx,dword ptr ds:[61B518]; ^gvar_0061DD74:TZMetadataColumnDefs
 00541DE5    mov        edx,dword ptr [edx]
 00541DE7    mov        eax,dword ptr [ebp-4]
 00541DEA    call       004D8E7C
 00541DEF    test       esi,esi
>00541DF1    jne        00541DFD
 00541DF3    lea        eax,[ebp-0C]
 00541DF6    call       @LStrClr
>00541DFB    jmp        00541E0C
 00541DFD    lea        eax,[ebp-0C]
 00541E00    mov        ecx,542108; '.'
 00541E05    mov        edx,esi
 00541E07    call       @LStrCat3
 00541E0C    lea        edx,[ebp-18]
 00541E0F    mov        eax,dword ptr [ebp-4]
 00541E12    mov        ecx,dword ptr [eax]
 00541E14    call       dword ptr [ecx+238]; TZSQLiteDatabaseMetadata.sub_004D8E64
 00541E1A    mov        eax,dword ptr [ebp-18]
 00541E1D    lea        edx,[ebp-14]
 00541E20    mov        ecx,dword ptr [eax]
 00541E22    call       dword ptr [ecx+0C]
 00541E25    mov        eax,dword ptr [ebp-14]
 00541E28    push       eax
 00541E29    lea        eax,[ebp-1C]
 00541E2C    push       eax
 00541E2D    mov        eax,dword ptr [ebp-0C]
 00541E30    mov        dword ptr [ebp-2C],eax
 00541E33    mov        byte ptr [ebp-28],0B
 00541E37    mov        eax,dword ptr [ebp+14]
 00541E3A    mov        dword ptr [ebp-24],eax
 00541E3D    mov        byte ptr [ebp-20],0B
 00541E41    lea        edx,[ebp-2C]
 00541E44    mov        ecx,1
 00541E49    mov        eax,542114; 'PRAGMA %s index_list('%s')'
 00541E4E    call       Format
 00541E53    mov        edx,dword ptr [ebp-1C]
 00541E56    lea        ecx,[ebp-10]
 00541E59    pop        eax
 00541E5A    mov        edi,dword ptr [eax]
 00541E5C    call       dword ptr [edi+0C]
>00541E5F    jmp        0054206F
 00541E64    lea        ecx,[ebp-30]
 00541E67    mov        edx,2
 00541E6C    mov        eax,dword ptr [ebp-10]
 00541E6F    mov        edi,dword ptr [eax]
 00541E71    call       dword ptr [edi+20]
 00541E74    mov        edx,dword ptr [ebp-30]
 00541E77    mov        eax,542138; ' autoindex '
 00541E7C    call       @LStrPos
 00541E81    test       eax,eax
>00541E83    jne        0054206F
 00541E89    cmp        byte ptr [ebp+10],0
>00541E8D    je         00541EA4
 00541E8F    mov        edx,3
 00541E94    mov        eax,dword ptr [ebp-10]
 00541E97    mov        ecx,dword ptr [eax]
 00541E99    call       dword ptr [ecx+34]
 00541E9C    test       eax,eax
>00541E9E    jne        0054206F
 00541EA4    lea        eax,[ebp-34]
 00541EA7    push       eax
 00541EA8    mov        eax,dword ptr [ebp-0C]
 00541EAB    mov        dword ptr [ebp-2C],eax
 00541EAE    mov        byte ptr [ebp-28],0B
 00541EB2    lea        ecx,[ebp-38]
 00541EB5    mov        edx,2
 00541EBA    mov        eax,dword ptr [ebp-10]
 00541EBD    mov        edi,dword ptr [eax]
 00541EBF    call       dword ptr [edi+20]
 00541EC2    mov        eax,dword ptr [ebp-38]
 00541EC5    mov        dword ptr [ebp-24],eax
 00541EC8    mov        byte ptr [ebp-20],0B
 00541ECC    lea        edx,[ebp-2C]
 00541ECF    mov        ecx,1
 00541ED4    mov        eax,54214C; 'PRAGMA %s index_info('%s')'
 00541ED9    call       Format
 00541EDE    mov        eax,dword ptr [ebp-34]
 00541EE1    push       eax
 00541EE2    lea        edx,[ebp-40]
 00541EE5    mov        eax,dword ptr [ebp-4]
 00541EE8    mov        ecx,dword ptr [eax]
 00541EEA    call       dword ptr [ecx+238]; TZSQLiteDatabaseMetadata.sub_004D8E64
 00541EF0    mov        eax,dword ptr [ebp-40]
 00541EF3    lea        edx,[ebp-3C]
 00541EF6    mov        ecx,dword ptr [eax]
 00541EF8    call       dword ptr [ecx+0C]
 00541EFB    mov        eax,dword ptr [ebp-3C]
 00541EFE    lea        ecx,[ebp-8]
 00541F01    pop        edx
 00541F02    mov        edi,dword ptr [eax]
 00541F04    call       dword ptr [edi+0C]
>00541F07    jmp        00542057
 00541F0C    mov        eax,dword ptr [ebx]
 00541F0E    mov        edx,dword ptr [eax]
 00541F10    call       dword ptr [edx+1E4]
 00541F16    test       esi,esi
>00541F18    je         00541F2D
 00541F1A    mov        eax,dword ptr [ebx]
 00541F1C    mov        ecx,esi
 00541F1E    mov        edx,1
 00541F23    mov        edi,dword ptr [eax]
 00541F25    call       dword ptr [edi+158]
>00541F2B    jmp        00541F3C
 00541F2D    mov        eax,dword ptr [ebx]
 00541F2F    mov        edx,1
 00541F34    mov        ecx,dword ptr [eax]
 00541F36    call       dword ptr [ecx+130]
 00541F3C    mov        eax,dword ptr [ebx]
 00541F3E    mov        edx,2
 00541F43    mov        ecx,dword ptr [eax]
 00541F45    call       dword ptr [ecx+130]
 00541F4B    mov        eax,dword ptr [ebx]
 00541F4D    mov        ecx,dword ptr [ebp+14]
 00541F50    mov        edx,3
 00541F55    mov        edi,dword ptr [eax]
 00541F57    call       dword ptr [edi+158]
 00541F5D    mov        edx,3
 00541F62    mov        eax,dword ptr [ebp-10]
 00541F65    mov        ecx,dword ptr [eax]
 00541F67    call       dword ptr [ecx+34]
 00541F6A    test       eax,eax
 00541F6C    sete       cl
 00541F6F    mov        eax,dword ptr [ebx]
 00541F71    mov        edx,4
 00541F76    mov        edi,dword ptr [eax]
 00541F78    call       dword ptr [edi+134]
 00541F7E    mov        eax,dword ptr [ebx]
 00541F80    mov        edx,5
 00541F85    mov        ecx,dword ptr [eax]
 00541F87    call       dword ptr [ecx+130]
 00541F8D    lea        ecx,[ebp-44]
 00541F90    mov        edx,2
 00541F95    mov        eax,dword ptr [ebp-10]
 00541F98    mov        edi,dword ptr [eax]
 00541F9A    call       dword ptr [edi+20]
 00541F9D    mov        ecx,dword ptr [ebp-44]
 00541FA0    mov        eax,dword ptr [ebx]
 00541FA2    mov        edx,6
 00541FA7    mov        edi,dword ptr [eax]
 00541FA9    call       dword ptr [edi+158]
 00541FAF    mov        eax,dword ptr [ebx]
 00541FB1    mov        edx,7
 00541FB6    mov        ecx,dword ptr [eax]
 00541FB8    call       dword ptr [ecx+130]
 00541FBE    mov        edx,1
 00541FC3    mov        eax,dword ptr [ebp-8]
 00541FC6    mov        ecx,dword ptr [eax]
 00541FC8    call       dword ptr [ecx+34]
 00541FCB    mov        ecx,eax
 00541FCD    add        ecx,1
>00541FD0    jno        00541FD7
 00541FD2    call       @IntOver
 00541FD7    mov        eax,dword ptr [ebx]
 00541FD9    mov        edx,8
 00541FDE    mov        edi,dword ptr [eax]
 00541FE0    call       dword ptr [edi+140]
 00541FE6    lea        ecx,[ebp-48]
 00541FE9    mov        edx,3
 00541FEE    mov        eax,dword ptr [ebp-8]
 00541FF1    mov        edi,dword ptr [eax]
 00541FF3    call       dword ptr [edi+20]
 00541FF6    mov        ecx,dword ptr [ebp-48]
 00541FF9    mov        eax,dword ptr [ebx]
 00541FFB    mov        edx,9
 00542000    mov        edi,dword ptr [eax]
 00542002    call       dword ptr [edi+158]
 00542008    mov        eax,dword ptr [ebx]
 0054200A    mov        ecx,542170; 'A'
 0054200F    mov        edx,0A
 00542014    mov        edi,dword ptr [eax]
 00542016    call       dword ptr [edi+158]
 0054201C    mov        eax,dword ptr [ebx]
 0054201E    xor        ecx,ecx
 00542020    mov        edx,0B
 00542025    mov        edi,dword ptr [eax]
 00542027    call       dword ptr [edi+140]
 0054202D    mov        eax,dword ptr [ebx]
 0054202F    xor        ecx,ecx
 00542031    mov        edx,0C
 00542036    mov        edi,dword ptr [eax]
 00542038    call       dword ptr [edi+140]
 0054203E    mov        eax,dword ptr [ebx]
 00542040    mov        edx,0D
 00542045    mov        ecx,dword ptr [eax]
 00542047    call       dword ptr [ecx+130]
 0054204D    mov        eax,dword ptr [ebx]
 0054204F    mov        edx,dword ptr [eax]
 00542051    call       dword ptr [edx+1D0]
 00542057    mov        eax,dword ptr [ebp-8]
 0054205A    mov        edx,dword ptr [eax]
 0054205C    call       dword ptr [edx+0C]
 0054205F    test       al,al
<00542061    jne        00541F0C
 00542067    mov        eax,dword ptr [ebp-8]
 0054206A    mov        edx,dword ptr [eax]
 0054206C    call       dword ptr [edx+10]
 0054206F    mov        eax,dword ptr [ebp-10]
 00542072    mov        edx,dword ptr [eax]
 00542074    call       dword ptr [edx+0C]
 00542077    test       al,al
<00542079    jne        00541E64
 0054207F    mov        eax,dword ptr [ebp-10]
 00542082    mov        edx,dword ptr [eax]
 00542084    call       dword ptr [edx+10]
 00542087    xor        eax,eax
 00542089    pop        edx
 0054208A    pop        ecx
 0054208B    pop        ecx
 0054208C    mov        dword ptr fs:[eax],edx
 0054208F    push       5420F6
 00542094    lea        eax,[ebp-48]
 00542097    mov        edx,2
 0054209C    call       @LStrArrayClr
 005420A1    lea        eax,[ebp-40]
 005420A4    call       @IntfClear
 005420A9    lea        eax,[ebp-3C]
 005420AC    call       @IntfClear
 005420B1    lea        eax,[ebp-38]
 005420B4    mov        edx,3
 005420B9    call       @LStrArrayClr
 005420BE    lea        eax,[ebp-1C]
 005420C1    call       @LStrClr
 005420C6    lea        eax,[ebp-18]
 005420C9    call       @IntfClear
 005420CE    lea        eax,[ebp-14]
 005420D1    call       @IntfClear
 005420D6    lea        eax,[ebp-10]
 005420D9    call       @IntfClear
 005420DE    lea        eax,[ebp-0C]
 005420E1    call       @LStrClr
 005420E6    lea        eax,[ebp-8]
 005420E9    call       @IntfClear
 005420EE    ret
<005420EF    jmp        @HandleFinally
<005420F4    jmp        00542094
 005420F6    pop        edi
 005420F7    pop        esi
 005420F8    pop        ebx
 005420F9    mov        esp,ebp
 005420FB    pop        ebp
 005420FC    ret        10
*}
//end;

//00542174
//function sub_00542174(?:?):Boolean;
//begin
{*
 00542174    test       dl,dl
 00542176    sete       al
 00542179    ret
*}
//end;

//0054217C
//function sub_0054217C(?:?; ?:?):?;
//begin
{*
 0054217C    test       dl,dl
>0054217E    jne        00542184
 00542180    test       cl,cl
>00542182    je         00542187
 00542184    xor        eax,eax
 00542186    ret
 00542187    mov        al,1
 00542189    ret
*}
//end;

Initialization
Finalization
//0054218C
{*
 0054218C    push       ebp
 0054218D    mov        ebp,esp
 0054218F    xor        eax,eax
 00542191    push       ebp
 00542192    push       5421DD
 00542197    push       dword ptr fs:[eax]
 0054219A    mov        dword ptr fs:[eax],esp
 0054219D    inc        dword ptr ds:[61EBC8]
>005421A3    jne        005421CF
 005421A5    mov        eax,616740; gvar_00616740:array[22] of String
 005421AA    mov        ecx,16
 005421AF    mov        edx,dword ptr ds:[4010F8]; String
 005421B5    call       @FinalizeArray
 005421BA    mov        eax,616738; gvar_00616738:array[2] of String
 005421BF    mov        ecx,2
 005421C4    mov        edx,dword ptr ds:[4010F8]; String
 005421CA    call       @FinalizeArray
 005421CF    xor        eax,eax
 005421D1    pop        edx
 005421D2    pop        ecx
 005421D3    pop        ecx
 005421D4    mov        dword ptr fs:[eax],edx
 005421D7    push       5421E4
 005421DC    ret
<005421DD    jmp        @HandleFinally
<005421E2    jmp        005421DC
 005421E4    pop        ebp
 005421E5    ret
*}
end.