{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit204;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZMySQLNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    f10:dword;//f10
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:dword;//f20
    f24:dword;//f24
    f28:dword;//f28
    f2C:dword;//f2C
    f30:dword;//f30
    f34:dword;//f34
    f38:dword;//f38
    f3C:dword;//f3C
    f40:dword;//f40
    f44:dword;//f44
    f48:dword;//f48
    f4C:dword;//f4C
    f50:dword;//f50
    f54:dword;//f54
    f58:dword;//f58
    f5C:dword;//f5C
    f60:dword;//f60
    f64:dword;//f64
    f68:dword;//f68
    f6C:dword;//f6C
    f70:dword;//f70
    f74:dword;//f74
    f78:dword;//f78
    f7C:dword;//f7C
    f80:dword;//f80
    f84:dword;//f84
    f88:dword;//f88
    f8C:dword;//f8C
    f90:dword;//f90
    f94:dword;//f94
    f98:dword;//f98
    f9C:dword;//f9C
    fA0:dword;//fA0
    fA4:dword;//fA4
    fA8:dword;//fA8
    fAC:dword;//fAC
    fB0:dword;//fB0
    fB4:dword;//fB4
    fB8:dword;//fB8
    fBC:dword;//fBC
    fC0:dword;//fC0
    fC4:dword;//fC4
    fC8:dword;//fC8
    fCC:dword;//fCC
    fD0:dword;//fD0
    fD4:dword;//fD4
    fD8:dword;//fD8
    fDC:dword;//fDC
    fE0:dword;//fE0
    fE4:dword;//fE4
    fE8:dword;//fE8
    fEC:dword;//fEC
    fF0:dword;//fF0
    fF4:dword;//fF4
    fF8:dword;//fF8
    fFC:dword;//fFC
    f100:dword;//f100
    f104:dword;//f104
    f108:dword;//f108
    f10C:dword;//f10C
    f110:dword;//f110
    f114:dword;//f114
    f118:dword;//f118
    f11C:dword;//f11C
    f120:dword;//f120
    f124:dword;//f124
    f128:dword;//f128
    f12C:dword;//f12C
    f130:dword;//f130
    f134:dword;//f134
    f138:dword;//f138
    f13C:dword;//f13C
    f140:dword;//f140
    f144:dword;//f144
    f148:dword;//f148
    f14C:dword;//f14C
    f150:dword;//f150
    f154:dword;//f154
    f158:dword;//f158
    f15C:dword;//f15C
    f160:dword;//f160
    f164:dword;//f164
    f168:dword;//f168
    f16C:dword;//f16C
    f170:dword;//f170
    f174:dword;//f174
    f178:dword;//f178
    f17C:dword;//f17C
    f180:dword;//f180
    f184:dword;//f184
    f188:dword;//f188
    f18C:dword;//f18C
    f190:dword;//f190
    f194:dword;//f194
    f198:dword;//f198
    f19C:dword;//f19C
    f1A0:dword;//f1A0
    f1A4:dword;//f1A4
    f1A8:dword;//f1A8
    f1AC:dword;//f1AC
    f1B0:dword;//f1B0
    f1B4:dword;//f1B4
    f1B8:dword;//f1B8
    f1BC:dword;//f1BC
    f1C0:dword;//f1C0
    f1C4:dword;//f1C4
    f1C8:dword;//f1C8
    f1CC:dword;//f1CC
    f1D0:dword;//f1D0
    f1D4:dword;//f1D4
    f1D8:dword;//f1D8
    f1DC:dword;//f1DC
    f1E0:dword;//f1E0
    f1E4:dword;//f1E4
    f1E8:dword;//f1E8
    destructor Destroy; virtual;
    //function sub_004FE92C:?; virtual;
  end;

implementation

{$R *.DFM}

//004FE92C
//function sub_004FE92C:?;
//begin
{*
 004FE92C    push       ebp
 004FE92D    mov        ebp,esp
 004FE92F    push       ebx
 004FE930    push       esi
 004FE931    mov        esi,eax
 004FE933    mov        eax,esi
 004FE935    call       004EBCD0
 004FE93A    mov        ebx,eax
 004FE93C    mov        edx,4FF14C
 004FE941    mov        eax,esi
 004FE943    call       004EBE38
 004FE948    mov        dword ptr [esi+10],eax; TZMySQLNativeLibraryLoader.?f10:dword
 004FE94B    mov        edx,4FF160
 004FE950    mov        eax,esi
 004FE952    call       004EBE38
 004FE957    mov        dword ptr [esi+14],eax; TZMySQLNativeLibraryLoader.?f14:dword
 004FE95A    mov        edx,4FF17C
 004FE95F    mov        eax,esi
 004FE961    call       004EBE38
 004FE966    mov        dword ptr [esi+18],eax; TZMySQLNativeLibraryLoader.?f18:dword
 004FE969    mov        edx,4FF188
 004FE96E    mov        eax,esi
 004FE970    call       004EBE38
 004FE975    mov        dword ptr [esi+1C],eax; TZMySQLNativeLibraryLoader.?f1C:dword
 004FE978    mov        edx,4FF198
 004FE97D    mov        eax,esi
 004FE97F    call       004EBE38
 004FE984    mov        dword ptr [esi+20],eax; TZMySQLNativeLibraryLoader.?f20:dword
 004FE987    mov        edx,4FF1A8
 004FE98C    mov        eax,esi
 004FE98E    call       004EBE38
 004FE993    mov        dword ptr [esi+24],eax; TZMySQLNativeLibraryLoader.?f24:dword
 004FE996    mov        edx,4FF1B8
 004FE99B    mov        eax,esi
 004FE99D    call       004EBE38
 004FE9A2    mov        dword ptr [esi+28],eax; TZMySQLNativeLibraryLoader.?f28:dword
 004FE9A5    mov        edx,4FF1C4
 004FE9AA    mov        eax,esi
 004FE9AC    call       004EBE38
 004FE9B1    mov        dword ptr [esi+2C],eax; TZMySQLNativeLibraryLoader.?f2C:dword
 004FE9B4    mov        edx,4FF1D4
 004FE9B9    mov        eax,esi
 004FE9BB    call       004EBE38
 004FE9C0    mov        dword ptr [esi+30],eax; TZMySQLNativeLibraryLoader.?f30:dword
 004FE9C3    mov        edx,4FF1EC
 004FE9C8    mov        eax,esi
 004FE9CA    call       004EBE38
 004FE9CF    mov        dword ptr [esi+34],eax; TZMySQLNativeLibraryLoader.?f34:dword
 004FE9D2    mov        edx,4FF1F8
 004FE9D7    mov        eax,esi
 004FE9D9    call       004EBE38
 004FE9DE    mov        dword ptr [esi+38],eax; TZMySQLNativeLibraryLoader.?f38:dword
 004FE9E1    mov        edx,4FF204
 004FE9E6    mov        eax,esi
 004FE9E8    call       004EBE38
 004FE9ED    mov        dword ptr [esi+3C],eax; TZMySQLNativeLibraryLoader.?f3C:dword
 004FE9F0    mov        edx,4FF210
 004FE9F5    mov        eax,esi
 004FE9F7    call       004EBE38
 004FE9FC    mov        dword ptr [esi+40],eax; TZMySQLNativeLibraryLoader.?f40:dword
 004FE9FF    mov        edx,4FF224
 004FEA04    mov        eax,esi
 004FEA06    call       004EBE38
 004FEA0B    mov        dword ptr [esi+44],eax; TZMySQLNativeLibraryLoader.?f44:dword
 004FEA0E    mov        edx,4FF238
 004FEA13    mov        eax,esi
 004FEA15    call       004EBE38
 004FEA1A    mov        dword ptr [esi+48],eax; TZMySQLNativeLibraryLoader.?f48:dword
 004FEA1D    mov        edx,4FF254
 004FEA22    mov        eax,esi
 004FEA24    call       004EBE38
 004FEA29    mov        dword ptr [esi+4C],eax; TZMySQLNativeLibraryLoader.?f4C:dword
 004FEA2C    mov        edx,4FF268
 004FEA31    mov        eax,esi
 004FEA33    call       004EBE38
 004FEA38    mov        dword ptr [esi+50],eax; TZMySQLNativeLibraryLoader.?f50:dword
 004FEA3B    mov        edx,4FF27C
 004FEA40    mov        eax,esi
 004FEA42    call       004EBE38
 004FEA47    mov        dword ptr [esi+54],eax; TZMySQLNativeLibraryLoader.?f54:dword
 004FEA4A    mov        edx,4FF28C
 004FEA4F    mov        eax,esi
 004FEA51    call       004EBE38
 004FEA56    mov        dword ptr [esi+58],eax; TZMySQLNativeLibraryLoader.?f58:dword
 004FEA59    mov        edx,4FF2A0
 004FEA5E    mov        eax,esi
 004FEA60    call       004EBE38
 004FEA65    mov        dword ptr [esi+5C],eax; TZMySQLNativeLibraryLoader.?f5C:dword
 004FEA68    mov        edx,4FF2B4
 004FEA6D    mov        eax,esi
 004FEA6F    call       004EBE38
 004FEA74    mov        dword ptr [esi+60],eax; TZMySQLNativeLibraryLoader.?f60:dword
 004FEA77    mov        edx,4FF2C8
 004FEA7C    mov        eax,esi
 004FEA7E    call       004EBE38
 004FEA83    mov        dword ptr [esi+64],eax; TZMySQLNativeLibraryLoader.?f64:dword
 004FEA86    mov        edx,4FF2E0
 004FEA8B    mov        eax,esi
 004FEA8D    call       004EBE38
 004FEA92    mov        dword ptr [esi+68],eax; TZMySQLNativeLibraryLoader.?f68:dword
 004FEA95    mov        edx,4FF2F4
 004FEA9A    mov        eax,esi
 004FEA9C    call       004EBE38
 004FEAA1    mov        dword ptr [esi+6C],eax; TZMySQLNativeLibraryLoader.?f6C:dword
 004FEAA4    mov        edx,4FF30C
 004FEAA9    mov        eax,esi
 004FEAAB    call       004EBE38
 004FEAB0    mov        dword ptr [esi+70],eax; TZMySQLNativeLibraryLoader.?f70:dword
 004FEAB3    mov        edx,4FF324
 004FEAB8    mov        eax,esi
 004FEABA    call       004EBE38
 004FEABF    mov        dword ptr [esi+74],eax; TZMySQLNativeLibraryLoader.?f74:dword
 004FEAC2    mov        edx,4FF330
 004FEAC7    mov        eax,esi
 004FEAC9    call       004EBE38
 004FEACE    mov        dword ptr [esi+78],eax; TZMySQLNativeLibraryLoader.?f78:dword
 004FEAD1    mov        edx,4FF33C
 004FEAD6    mov        eax,esi
 004FEAD8    call       004EBE38
 004FEADD    mov        dword ptr [esi+7C],eax; TZMySQLNativeLibraryLoader.?f7C:dword
 004FEAE0    mov        edx,4FF34C
 004FEAE5    mov        eax,esi
 004FEAE7    call       004EBE38
 004FEAEC    mov        dword ptr [esi+80],eax; TZMySQLNativeLibraryLoader.?f80:dword
 004FEAF2    mov        edx,4FF358
 004FEAF7    mov        eax,esi
 004FEAF9    call       004EBE38
 004FEAFE    mov        dword ptr [esi+84],eax; TZMySQLNativeLibraryLoader.?f84:dword
 004FEB04    mov        edx,4FF368
 004FEB09    mov        eax,esi
 004FEB0B    call       004EBE38
 004FEB10    mov        dword ptr [esi+88],eax; TZMySQLNativeLibraryLoader.?f88:dword
 004FEB16    mov        edx,4FF37C
 004FEB1B    mov        eax,esi
 004FEB1D    call       004EBE38
 004FEB22    mov        dword ptr [esi+8C],eax; TZMySQLNativeLibraryLoader.?f8C:dword
 004FEB28    mov        edx,4FF394
 004FEB2D    mov        eax,esi
 004FEB2F    call       004EBE38
 004FEB34    mov        dword ptr [esi+90],eax; TZMySQLNativeLibraryLoader.?f90:dword
 004FEB3A    mov        edx,4FF3A8
 004FEB3F    mov        eax,esi
 004FEB41    call       004EBE38
 004FEB46    mov        dword ptr [esi+94],eax; TZMySQLNativeLibraryLoader.?f94:dword
 004FEB4C    mov        edx,4FF3BC
 004FEB51    mov        eax,esi
 004FEB53    call       004EBE38
 004FEB58    mov        dword ptr [esi+98],eax; TZMySQLNativeLibraryLoader.?f98:dword
 004FEB5E    mov        edx,4FF3CC
 004FEB63    mov        eax,esi
 004FEB65    call       004EBE38
 004FEB6A    mov        dword ptr [esi+9C],eax; TZMySQLNativeLibraryLoader.?f9C:dword
 004FEB70    mov        edx,4FF3DC
 004FEB75    mov        eax,esi
 004FEB77    call       004EBE38
 004FEB7C    mov        dword ptr [esi+0A0],eax; TZMySQLNativeLibraryLoader.?fA0:dword
 004FEB82    mov        edx,4FF3E8
 004FEB87    mov        eax,esi
 004FEB89    call       004EBE38
 004FEB8E    mov        dword ptr [esi+0A4],eax; TZMySQLNativeLibraryLoader.?fA4:dword
 004FEB94    mov        edx,4FF3F4
 004FEB99    mov        eax,esi
 004FEB9B    call       004EBE38
 004FEBA0    mov        dword ptr [esi+0A8],eax; TZMySQLNativeLibraryLoader.?fA8:dword
 004FEBA6    mov        edx,4FF408
 004FEBAB    mov        eax,esi
 004FEBAD    call       004EBE38
 004FEBB2    mov        dword ptr [esi+0AC],eax; TZMySQLNativeLibraryLoader.?fAC:dword
 004FEBB8    mov        edx,4FF424
 004FEBBD    mov        eax,esi
 004FEBBF    call       004EBE38
 004FEBC4    mov        dword ptr [esi+0B0],eax; TZMySQLNativeLibraryLoader.?fB0:dword
 004FEBCA    mov        edx,4FF438
 004FEBCF    mov        eax,esi
 004FEBD1    call       004EBE38
 004FEBD6    mov        dword ptr [esi+0B4],eax; TZMySQLNativeLibraryLoader.?fB4:dword
 004FEBDC    mov        edx,4FF448
 004FEBE1    mov        eax,esi
 004FEBE3    call       004EBE38
 004FEBE8    mov        dword ptr [esi+0B8],eax; TZMySQLNativeLibraryLoader.?fB8:dword
 004FEBEE    mov        edx,4FF458
 004FEBF3    mov        eax,esi
 004FEBF5    call       004EBE38
 004FEBFA    mov        dword ptr [esi+0BC],eax; TZMySQLNativeLibraryLoader.?fBC:dword
 004FEC00    mov        edx,4FF468
 004FEC05    mov        eax,esi
 004FEC07    call       004EBE38
 004FEC0C    mov        dword ptr [esi+0C0],eax; TZMySQLNativeLibraryLoader.?fC0:dword
 004FEC12    mov        edx,4FF478
 004FEC17    mov        eax,esi
 004FEC19    call       004EBE38
 004FEC1E    mov        dword ptr [esi+0C4],eax; TZMySQLNativeLibraryLoader.?fC4:dword
 004FEC24    mov        edx,4FF488
 004FEC29    mov        eax,esi
 004FEC2B    call       004EBE38
 004FEC30    mov        dword ptr [esi+0C8],eax; TZMySQLNativeLibraryLoader.?fC8:dword
 004FEC36    mov        edx,4FF498
 004FEC3B    mov        eax,esi
 004FEC3D    call       004EBE38
 004FEC42    mov        dword ptr [esi+0CC],eax; TZMySQLNativeLibraryLoader.?fCC:dword
 004FEC48    mov        edx,4FF4A4
 004FEC4D    mov        eax,esi
 004FEC4F    call       004EBE38
 004FEC54    mov        dword ptr [esi+0D0],eax; TZMySQLNativeLibraryLoader.?fD0:dword
 004FEC5A    mov        edx,4FF4B8
 004FEC5F    mov        eax,esi
 004FEC61    call       004EBE38
 004FEC66    mov        dword ptr [esi+0D4],eax; TZMySQLNativeLibraryLoader.?fD4:dword
 004FEC6C    mov        edx,4FF4C8
 004FEC71    mov        eax,esi
 004FEC73    call       004EBE38
 004FEC78    mov        dword ptr [esi+0D8],eax; TZMySQLNativeLibraryLoader.?fD8:dword
 004FEC7E    mov        edx,4FF4DC
 004FEC83    mov        eax,esi
 004FEC85    call       004EBE38
 004FEC8A    mov        dword ptr [esi+0DC],eax; TZMySQLNativeLibraryLoader.?fDC:dword
 004FEC90    mov        edx,4FF4E4
 004FEC95    mov        eax,esi
 004FEC97    call       004EBE38
 004FEC9C    mov        dword ptr [esi+0E0],eax; TZMySQLNativeLibraryLoader.?fE0:dword
 004FECA2    mov        edx,4FF4F8
 004FECA7    mov        eax,esi
 004FECA9    call       004EBE38
 004FECAE    mov        dword ptr [esi+0E4],eax; TZMySQLNativeLibraryLoader.?fE4:dword
 004FECB4    mov        edx,4FF50C
 004FECB9    mov        eax,esi
 004FECBB    call       004EBE38
 004FECC0    mov        dword ptr [esi+0E8],eax; TZMySQLNativeLibraryLoader.?fE8:dword
 004FECC6    mov        edx,4FF520
 004FECCB    mov        eax,esi
 004FECCD    call       004EBE38
 004FECD2    mov        dword ptr [esi+0EC],eax; TZMySQLNativeLibraryLoader.?fEC:dword
 004FECD8    mov        edx,4FF534
 004FECDD    mov        eax,esi
 004FECDF    call       004EBE38
 004FECE4    mov        dword ptr [esi+0F0],eax; TZMySQLNativeLibraryLoader.?fF0:dword
 004FECEA    mov        edx,4FF548
 004FECEF    mov        eax,esi
 004FECF1    call       004EBE38
 004FECF6    mov        dword ptr [esi+0F4],eax; TZMySQLNativeLibraryLoader.?fF4:dword
 004FECFC    mov        edx,4FF55C
 004FED01    mov        eax,esi
 004FED03    call       004EBE38
 004FED08    mov        dword ptr [esi+0F8],eax; TZMySQLNativeLibraryLoader.?fF8:dword
 004FED0E    mov        edx,4FF570
 004FED13    mov        eax,esi
 004FED15    call       004EBE38
 004FED1A    mov        dword ptr [esi+0FC],eax; TZMySQLNativeLibraryLoader.?fFC:dword
 004FED20    mov        edx,4FF58C
 004FED25    mov        eax,esi
 004FED27    call       004EBE38
 004FED2C    mov        dword ptr [esi+100],eax; TZMySQLNativeLibraryLoader.?f100:dword
 004FED32    mov        edx,4FF5A0
 004FED37    mov        eax,esi
 004FED39    call       004EBE38
 004FED3E    mov        dword ptr [esi+104],eax; TZMySQLNativeLibraryLoader.?f104:dword
 004FED44    mov        edx,4FF5B8
 004FED49    mov        eax,esi
 004FED4B    call       004EBE38
 004FED50    mov        dword ptr [esi+108],eax; TZMySQLNativeLibraryLoader.?f108:dword
 004FED56    mov        edx,4FF5CC
 004FED5B    mov        eax,esi
 004FED5D    call       004EBE38
 004FED62    mov        dword ptr [esi+10C],eax; TZMySQLNativeLibraryLoader.?f10C:dword
 004FED68    mov        edx,4FF5E4
 004FED6D    mov        eax,esi
 004FED6F    call       004EBE38
 004FED74    mov        dword ptr [esi+110],eax; TZMySQLNativeLibraryLoader.?f110:dword
 004FED7A    mov        edx,4FF5F8
 004FED7F    mov        eax,esi
 004FED81    call       004EBE38
 004FED86    mov        dword ptr [esi+114],eax; TZMySQLNativeLibraryLoader.?f114:dword
 004FED8C    mov        edx,4FF610
 004FED91    mov        eax,esi
 004FED93    call       004EBE38
 004FED98    mov        dword ptr [esi+118],eax; TZMySQLNativeLibraryLoader.?f118:dword
 004FED9E    mov        edx,4FF628
 004FEDA3    mov        eax,esi
 004FEDA5    call       004EBE38
 004FEDAA    mov        dword ptr [esi+11C],eax; TZMySQLNativeLibraryLoader.?f11C:dword
 004FEDB0    mov        edx,4FF640
 004FEDB5    mov        eax,esi
 004FEDB7    call       004EBE38
 004FEDBC    mov        dword ptr [esi+120],eax; TZMySQLNativeLibraryLoader.?f120:dword
 004FEDC2    mov        edx,4FF658
 004FEDC7    mov        eax,esi
 004FEDC9    call       004EBE38
 004FEDCE    mov        dword ptr [esi+124],eax; TZMySQLNativeLibraryLoader.?f124:dword
 004FEDD4    mov        edx,4FF678
 004FEDD9    mov        eax,esi
 004FEDDB    call       004EBE38
 004FEDE0    mov        dword ptr [esi+128],eax; TZMySQLNativeLibraryLoader.?f128:dword
 004FEDE6    mov        edx,4FF698
 004FEDEB    mov        eax,esi
 004FEDED    call       004EBE38
 004FEDF2    mov        dword ptr [esi+12C],eax; TZMySQLNativeLibraryLoader.?f12C:dword
 004FEDF8    mov        edx,4FF6B8
 004FEDFD    mov        eax,esi
 004FEDFF    call       004EBE38
 004FEE04    mov        dword ptr [esi+130],eax; TZMySQLNativeLibraryLoader.?f130:dword
 004FEE0A    mov        edx,4FF6D0
 004FEE0F    mov        eax,esi
 004FEE11    call       004EBE38
 004FEE16    mov        dword ptr [esi+134],eax; TZMySQLNativeLibraryLoader.?f134:dword
 004FEE1C    mov        edx,4FF6E0
 004FEE21    mov        eax,esi
 004FEE23    call       004EBE38
 004FEE28    mov        dword ptr [esi+138],eax; TZMySQLNativeLibraryLoader.?f138:dword
 004FEE2E    mov        edx,4FF6F4
 004FEE33    mov        eax,esi
 004FEE35    call       004EBE38
 004FEE3A    mov        dword ptr [esi+13C],eax; TZMySQLNativeLibraryLoader.?f13C:dword
 004FEE40    mov        edx,4FF704
 004FEE45    mov        eax,esi
 004FEE47    call       004EBE38
 004FEE4C    mov        dword ptr [esi+140],eax; TZMySQLNativeLibraryLoader.?f140:dword
 004FEE52    mov        edx,4FF718
 004FEE57    mov        eax,esi
 004FEE59    call       004EBE38
 004FEE5E    mov        dword ptr [esi+144],eax; TZMySQLNativeLibraryLoader.?f144:dword
 004FEE64    mov        edx,4FF730
 004FEE69    mov        eax,esi
 004FEE6B    call       004EBE38
 004FEE70    mov        dword ptr [esi+148],eax; TZMySQLNativeLibraryLoader.?f148:dword
 004FEE76    mov        edx,4FF744
 004FEE7B    mov        eax,esi
 004FEE7D    call       004EBE38
 004FEE82    mov        dword ptr [esi+14C],eax; TZMySQLNativeLibraryLoader.?f14C:dword
 004FEE88    mov        edx,4FF75C
 004FEE8D    mov        eax,esi
 004FEE8F    call       004EBE38
 004FEE94    mov        dword ptr [esi+150],eax; TZMySQLNativeLibraryLoader.?f150:dword
 004FEE9A    mov        edx,4FF778
 004FEE9F    mov        eax,esi
 004FEEA1    call       004EBE38
 004FEEA6    mov        dword ptr [esi+154],eax; TZMySQLNativeLibraryLoader.?f154:dword
 004FEEAC    mov        edx,4FF78C
 004FEEB1    mov        eax,esi
 004FEEB3    call       004EBE38
 004FEEB8    mov        dword ptr [esi+158],eax; TZMySQLNativeLibraryLoader.?f158:dword
 004FEEBE    mov        edx,4FF79C
 004FEEC3    mov        eax,esi
 004FEEC5    call       004EBE38
 004FEECA    mov        dword ptr [esi+15C],eax; TZMySQLNativeLibraryLoader.?f15C:dword
 004FEED0    mov        edx,4FF7B8
 004FEED5    mov        eax,esi
 004FEED7    call       004EBE38
 004FEEDC    mov        dword ptr [esi+160],eax; TZMySQLNativeLibraryLoader.?f160:dword
 004FEEE2    mov        edx,4FF7CC
 004FEEE7    mov        eax,esi
 004FEEE9    call       004EBE38
 004FEEEE    mov        dword ptr [esi+164],eax; TZMySQLNativeLibraryLoader.?f164:dword
 004FEEF4    mov        edx,4FF7E0
 004FEEF9    mov        eax,esi
 004FEEFB    call       004EBE38
 004FEF00    mov        dword ptr [esi+168],eax; TZMySQLNativeLibraryLoader.?f168:dword
 004FEF06    mov        edx,4FF7F4
 004FEF0B    mov        eax,esi
 004FEF0D    call       004EBE38
 004FEF12    mov        dword ptr [esi+16C],eax; TZMySQLNativeLibraryLoader.?f16C:dword
 004FEF18    mov        edx,4FF804
 004FEF1D    mov        eax,esi
 004FEF1F    call       004EBE38
 004FEF24    mov        dword ptr [esi+170],eax; TZMySQLNativeLibraryLoader.?f170:dword
 004FEF2A    mov        edx,4FF81C
 004FEF2F    mov        eax,esi
 004FEF31    call       004EBE38
 004FEF36    mov        dword ptr [esi+174],eax; TZMySQLNativeLibraryLoader.?f174:dword
 004FEF3C    mov        edx,4FF834
 004FEF41    mov        eax,esi
 004FEF43    call       004EBE38
 004FEF48    mov        dword ptr [esi+178],eax; TZMySQLNativeLibraryLoader.?f178:dword
 004FEF4E    mov        edx,4FF844
 004FEF53    mov        eax,esi
 004FEF55    call       004EBE38
 004FEF5A    mov        dword ptr [esi+17C],eax; TZMySQLNativeLibraryLoader.?f17C:dword
 004FEF60    mov        edx,4FF858
 004FEF65    mov        eax,esi
 004FEF67    call       004EBE38
 004FEF6C    mov        dword ptr [esi+180],eax; TZMySQLNativeLibraryLoader.?f180:dword
 004FEF72    mov        edx,4FF874
 004FEF77    mov        eax,esi
 004FEF79    call       004EBE38
 004FEF7E    mov        dword ptr [esi+184],eax; TZMySQLNativeLibraryLoader.?f184:dword
 004FEF84    mov        edx,4FF888
 004FEF89    mov        eax,esi
 004FEF8B    call       004EBE38
 004FEF90    mov        dword ptr [esi+188],eax; TZMySQLNativeLibraryLoader.?f188:dword
 004FEF96    mov        edx,4FF89C
 004FEF9B    mov        eax,esi
 004FEF9D    call       004EBE38
 004FEFA2    mov        dword ptr [esi+18C],eax; TZMySQLNativeLibraryLoader.?f18C:dword
 004FEFA8    mov        edx,4FF8B4
 004FEFAD    mov        eax,esi
 004FEFAF    call       004EBE38
 004FEFB4    mov        dword ptr [esi+190],eax; TZMySQLNativeLibraryLoader.?f190:dword
 004FEFBA    mov        edx,4FF8CC
 004FEFBF    mov        eax,esi
 004FEFC1    call       004EBE38
 004FEFC6    mov        dword ptr [esi+194],eax; TZMySQLNativeLibraryLoader.?f194:dword
 004FEFCC    mov        edx,4FF8E0
 004FEFD1    mov        eax,esi
 004FEFD3    call       004EBE38
 004FEFD8    mov        dword ptr [esi+198],eax; TZMySQLNativeLibraryLoader.?f198:dword
 004FEFDE    mov        edx,4FF8F8
 004FEFE3    mov        eax,esi
 004FEFE5    call       004EBE38
 004FEFEA    mov        dword ptr [esi+19C],eax; TZMySQLNativeLibraryLoader.?f19C:dword
 004FEFF0    mov        edx,4FF90C
 004FEFF5    mov        eax,esi
 004FEFF7    call       004EBE38
 004FEFFC    mov        dword ptr [esi+1A0],eax; TZMySQLNativeLibraryLoader.?f1A0:dword
 004FF002    mov        edx,4FF920
 004FF007    mov        eax,esi
 004FF009    call       004EBE38
 004FF00E    mov        dword ptr [esi+1A4],eax; TZMySQLNativeLibraryLoader.?f1A4:dword
 004FF014    mov        edx,4FF934
 004FF019    mov        eax,esi
 004FF01B    call       004EBE38
 004FF020    mov        dword ptr [esi+1A8],eax; TZMySQLNativeLibraryLoader.?f1A8:dword
 004FF026    mov        edx,4FF948
 004FF02B    mov        eax,esi
 004FF02D    call       004EBE38
 004FF032    mov        dword ptr [esi+1AC],eax; TZMySQLNativeLibraryLoader.?f1AC:dword
 004FF038    mov        edx,4FF960
 004FF03D    mov        eax,esi
 004FF03F    call       004EBE38
 004FF044    mov        dword ptr [esi+1B0],eax; TZMySQLNativeLibraryLoader.?f1B0:dword
 004FF04A    mov        edx,4FF978
 004FF04F    mov        eax,esi
 004FF051    call       004EBE38
 004FF056    mov        dword ptr [esi+1B4],eax; TZMySQLNativeLibraryLoader.?f1B4:dword
 004FF05C    mov        edx,4FF990
 004FF061    mov        eax,esi
 004FF063    call       004EBE38
 004FF068    mov        dword ptr [esi+1B8],eax; TZMySQLNativeLibraryLoader.?f1B8:dword
 004FF06E    mov        edx,4FF9A0
 004FF073    mov        eax,esi
 004FF075    call       004EBE38
 004FF07A    mov        dword ptr [esi+1BC],eax; TZMySQLNativeLibraryLoader.?f1BC:dword
 004FF080    mov        edx,4FF9B8
 004FF085    mov        eax,esi
 004FF087    call       004EBE38
 004FF08C    mov        dword ptr [esi+1C0],eax; TZMySQLNativeLibraryLoader.?f1C0:dword
 004FF092    mov        edx,4FF9CC
 004FF097    mov        eax,esi
 004FF099    call       004EBE38
 004FF09E    mov        dword ptr [esi+1C4],eax; TZMySQLNativeLibraryLoader.?f1C4:dword
 004FF0A4    mov        edx,4FF9E4
 004FF0A9    mov        eax,esi
 004FF0AB    call       004EBE38
 004FF0B0    mov        dword ptr [esi+1C8],eax; TZMySQLNativeLibraryLoader.?f1C8:dword
 004FF0B6    mov        edx,4FFA00
 004FF0BB    mov        eax,esi
 004FF0BD    call       004EBE38
 004FF0C2    mov        dword ptr [esi+1CC],eax; TZMySQLNativeLibraryLoader.?f1CC:dword
 004FF0C8    mov        edx,4FFA14
 004FF0CD    mov        eax,esi
 004FF0CF    call       004EBE38
 004FF0D4    mov        dword ptr [esi+1D0],eax; TZMySQLNativeLibraryLoader.?f1D0:dword
 004FF0DA    mov        edx,4FFA28
 004FF0DF    mov        eax,esi
 004FF0E1    call       004EBE38
 004FF0E6    mov        dword ptr [esi+1D4],eax; TZMySQLNativeLibraryLoader.?f1D4:dword
 004FF0EC    mov        edx,4FFA44
 004FF0F1    mov        eax,esi
 004FF0F3    call       004EBE38
 004FF0F8    mov        dword ptr [esi+1D8],eax; TZMySQLNativeLibraryLoader.?f1D8:dword
 004FF0FE    mov        edx,4FFA58
 004FF103    mov        eax,esi
 004FF105    call       004EBE38
 004FF10A    mov        dword ptr [esi+1DC],eax; TZMySQLNativeLibraryLoader.?f1DC:dword
 004FF110    mov        edx,4FFA6C
 004FF115    mov        eax,esi
 004FF117    call       004EBE38
 004FF11C    mov        dword ptr [esi+1E0],eax; TZMySQLNativeLibraryLoader.?f1E0:dword
 004FF122    mov        edx,4FFA88
 004FF127    mov        eax,esi
 004FF129    call       004EBE38
 004FF12E    mov        dword ptr [esi+1E4],eax; TZMySQLNativeLibraryLoader.?f1E4:dword
 004FF134    mov        edx,4FFA9C
 004FF139    mov        eax,esi
 004FF13B    call       004EBE38
 004FF140    mov        dword ptr [esi+1E8],eax; TZMySQLNativeLibraryLoader.?f1E8:dword
 004FF146    mov        eax,ebx
 004FF148    pop        esi
 004FF149    pop        ebx
 004FF14A    pop        ebp
 004FF14B    ret
*}
//end;

//004FFAB4
destructor TZMySQLNativeLibraryLoader.Destroy;
begin
{*
 004FFAB4    push       ebp
 004FFAB5    mov        ebp,esp
 004FFAB7    push       ebx
 004FFAB8    push       esi
 004FFAB9    call       @BeforeDestruction
 004FFABE    mov        ebx,edx
 004FFAC0    mov        esi,eax
 004FFAC2    cmp        byte ptr [esi+0C],0; TZMySQLNativeLibraryLoader.?fC:byte
>004FFAC6    je         004FFAD7
 004FFAC8    cmp        dword ptr [esi+0F0],0; TZMySQLNativeLibraryLoader.?fF0:dword
>004FFACF    je         004FFAD7
 004FFAD1    call       dword ptr [esi+0F0]
 004FFAD7    mov        edx,ebx
 004FFAD9    and        dl,0FC
 004FFADC    mov        eax,esi
 004FFADE    call       TZNativeLibraryLoader.Destroy
 004FFAE3    test       bl,bl
>004FFAE5    jle        004FFAEE
 004FFAE7    mov        eax,esi
 004FFAE9    call       @ClassDestroy
 004FFAEE    pop        esi
 004FFAEF    pop        ebx
 004FFAF0    pop        ebp
 004FFAF1    ret
*}
end;

Initialization
//004FFB4C
{*
 004FFB4C    push       ebp
 004FFB4D    mov        ebp,esp
 004FFB4F    add        esp,0FFFFFFF8
 004FFB52    sub        dword ptr ds:[61E2BC],1
>004FFB59    jae        004FFBA7
 004FFB5B    push       1
 004FFB5D    mov        eax,4FFBB4; 'libmysql41.dll'
 004FFB62    mov        dword ptr [ebp-8],eax
 004FFB65    mov        eax,4FFBCC; 'libmysql.dll'
 004FFB6A    mov        dword ptr [ebp-4],eax
 004FFB6D    lea        ecx,[ebp-8]
 004FFB70    mov        dl,1
 004FFB72    mov        eax,[004FE8B4]; TZMySQLNativeLibraryLoader
 004FFB77    call       TZSybaseNativeLibraryLoader.Create; TZMySQLNativeLibraryLoader.Create
 004FFB7C    mov        [0061E2B4],eax; gvar_0061E2B4:TZMySQLNativeLibraryLoader
 004FFB81    push       1
 004FFB83    mov        eax,4FFBE4; 'libmysqld41.dll'
 004FFB88    mov        dword ptr [ebp-8],eax
 004FFB8B    mov        eax,4FFBFC; 'libmysqld.dll'
 004FFB90    mov        dword ptr [ebp-4],eax
 004FFB93    lea        ecx,[ebp-8]
 004FFB96    mov        dl,1
 004FFB98    mov        eax,[004FE8B4]; TZMySQLNativeLibraryLoader
 004FFB9D    call       TZSybaseNativeLibraryLoader.Create; TZMySQLNativeLibraryLoader.Create
 004FFBA2    mov        [0061E2B8],eax; gvar_0061E2B8:TZMySQLNativeLibraryLoader
 004FFBA7    pop        ecx
 004FFBA8    pop        ecx
 004FFBA9    pop        ebp
 004FFBAA    ret
*}
Finalization
//004FFAF4
{*
 004FFAF4    push       ebp
 004FFAF5    mov        ebp,esp
 004FFAF7    xor        eax,eax
 004FFAF9    push       ebp
 004FFAFA    push       4FFB41
 004FFAFF    push       dword ptr fs:[eax]
 004FFB02    mov        dword ptr fs:[eax],esp
 004FFB05    inc        dword ptr ds:[61E2BC]
>004FFB0B    jne        004FFB33
 004FFB0D    cmp        dword ptr ds:[61E2B4],0; gvar_0061E2B4:TZMySQLNativeLibraryLoader
>004FFB14    je         004FFB20
 004FFB16    mov        eax,[0061E2B4]; gvar_0061E2B4:TZMySQLNativeLibraryLoader
 004FFB1B    call       TObject.Free
 004FFB20    cmp        dword ptr ds:[61E2B8],0; gvar_0061E2B8:TZMySQLNativeLibraryLoader
>004FFB27    je         004FFB33
 004FFB29    mov        eax,[0061E2B8]; gvar_0061E2B8:TZMySQLNativeLibraryLoader
 004FFB2E    call       TObject.Free
 004FFB33    xor        eax,eax
 004FFB35    pop        edx
 004FFB36    pop        ecx
 004FFB37    pop        ecx
 004FFB38    mov        dword ptr fs:[eax],edx
 004FFB3B    push       4FFB48
 004FFB40    ret
<004FFB41    jmp        @HandleFinally
<004FFB46    jmp        004FFB40
 004FFB48    pop        ebp
 004FFB49    ret
*}
end.