{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit _Unit203;

interface

uses
  Classes, Windows, Graphics, _Unit141;

type
  TZMySQLNativeLibraryLoader = class(TZNativeLibraryLoader)
  public
    destructor Destroy; virtual;
    //function sub_004FFC84:?; virtual;
  end;

implementation

{$R *.DFM}

//004FFC84
//function sub_004FFC84:?;
//begin
{*
 004FFC84    push       ebp
 004FFC85    mov        ebp,esp
 004FFC87    push       ebx
 004FFC88    push       esi
 004FFC89    mov        esi,eax
 004FFC8B    mov        eax,esi
 004FFC8D    call       004EBCD0
 004FFC92    mov        ebx,eax
 004FFC94    mov        edx,5004B8
 004FFC99    mov        eax,esi
 004FFC9B    call       004EBE38
 004FFCA0    mov        dword ptr [esi+10],eax; TZMySQLNativeLibraryLoader.?f10:dword
 004FFCA3    mov        edx,5004CC
 004FFCA8    mov        eax,esi
 004FFCAA    call       004EBE38
 004FFCAF    mov        dword ptr [esi+14],eax; TZMySQLNativeLibraryLoader.?f14:dword
 004FFCB2    mov        edx,5004E8
 004FFCB7    mov        eax,esi
 004FFCB9    call       004EBE38
 004FFCBE    mov        dword ptr [esi+18],eax; TZMySQLNativeLibraryLoader.?f18:dword
 004FFCC1    mov        edx,5004F4
 004FFCC6    mov        eax,esi
 004FFCC8    call       004EBE38
 004FFCCD    mov        dword ptr [esi+1C],eax; TZMySQLNativeLibraryLoader.?f1C:dword
 004FFCD0    mov        edx,500504
 004FFCD5    mov        eax,esi
 004FFCD7    call       004EBE38
 004FFCDC    mov        dword ptr [esi+20],eax; TZMySQLNativeLibraryLoader.?f20:dword
 004FFCDF    mov        edx,500514
 004FFCE4    mov        eax,esi
 004FFCE6    call       004EBE38
 004FFCEB    mov        dword ptr [esi+24],eax; TZMySQLNativeLibraryLoader.?f24:dword
 004FFCEE    mov        edx,500524
 004FFCF3    mov        eax,esi
 004FFCF5    call       004EBE38
 004FFCFA    mov        dword ptr [esi+28],eax; TZMySQLNativeLibraryLoader.?f28:dword
 004FFCFD    mov        edx,500530
 004FFD02    mov        eax,esi
 004FFD04    call       004EBE38
 004FFD09    mov        dword ptr [esi+2C],eax; TZMySQLNativeLibraryLoader.?f2C:dword
 004FFD0C    mov        edx,500540
 004FFD11    mov        eax,esi
 004FFD13    call       004EBE38
 004FFD18    mov        dword ptr [esi+30],eax; TZMySQLNativeLibraryLoader.?f30:dword
 004FFD1B    mov        edx,500558
 004FFD20    mov        eax,esi
 004FFD22    call       004EBE38
 004FFD27    mov        dword ptr [esi+34],eax; TZMySQLNativeLibraryLoader.?f34:dword
 004FFD2A    mov        edx,500564
 004FFD2F    mov        eax,esi
 004FFD31    call       004EBE38
 004FFD36    mov        dword ptr [esi+38],eax; TZMySQLNativeLibraryLoader.?f38:dword
 004FFD39    mov        edx,500570
 004FFD3E    mov        eax,esi
 004FFD40    call       004EBE38
 004FFD45    mov        dword ptr [esi+3C],eax; TZMySQLNativeLibraryLoader.?f3C:dword
 004FFD48    mov        edx,50057C
 004FFD4D    mov        eax,esi
 004FFD4F    call       004EBE38
 004FFD54    mov        dword ptr [esi+40],eax; TZMySQLNativeLibraryLoader.?f40:dword
 004FFD57    mov        edx,500590
 004FFD5C    mov        eax,esi
 004FFD5E    call       004EBE38
 004FFD63    mov        dword ptr [esi+44],eax; TZMySQLNativeLibraryLoader.?f44:dword
 004FFD66    mov        edx,5005A4
 004FFD6B    mov        eax,esi
 004FFD6D    call       004EBE38
 004FFD72    mov        dword ptr [esi+48],eax; TZMySQLNativeLibraryLoader.?f48:dword
 004FFD75    mov        edx,5005C0
 004FFD7A    mov        eax,esi
 004FFD7C    call       004EBE38
 004FFD81    mov        dword ptr [esi+4C],eax; TZMySQLNativeLibraryLoader.?f4C:dword
 004FFD84    mov        edx,5005D4
 004FFD89    mov        eax,esi
 004FFD8B    call       004EBE38
 004FFD90    mov        dword ptr [esi+50],eax; TZMySQLNativeLibraryLoader.?f50:dword
 004FFD93    mov        edx,5005E8
 004FFD98    mov        eax,esi
 004FFD9A    call       004EBE38
 004FFD9F    mov        dword ptr [esi+54],eax; TZMySQLNativeLibraryLoader.?f54:dword
 004FFDA2    mov        edx,5005F8
 004FFDA7    mov        eax,esi
 004FFDA9    call       004EBE38
 004FFDAE    mov        dword ptr [esi+58],eax; TZMySQLNativeLibraryLoader.?f58:dword
 004FFDB1    mov        edx,50060C
 004FFDB6    mov        eax,esi
 004FFDB8    call       004EBE38
 004FFDBD    mov        dword ptr [esi+5C],eax; TZMySQLNativeLibraryLoader.?f5C:dword
 004FFDC0    mov        edx,500620
 004FFDC5    mov        eax,esi
 004FFDC7    call       004EBE38
 004FFDCC    mov        dword ptr [esi+60],eax; TZMySQLNativeLibraryLoader.?f60:dword
 004FFDCF    mov        edx,500634
 004FFDD4    mov        eax,esi
 004FFDD6    call       004EBE38
 004FFDDB    mov        dword ptr [esi+64],eax; TZMySQLNativeLibraryLoader.?f64:dword
 004FFDDE    mov        edx,50064C
 004FFDE3    mov        eax,esi
 004FFDE5    call       004EBE38
 004FFDEA    mov        dword ptr [esi+68],eax; TZMySQLNativeLibraryLoader.?f68:dword
 004FFDED    mov        edx,500660
 004FFDF2    mov        eax,esi
 004FFDF4    call       004EBE38
 004FFDF9    mov        dword ptr [esi+6C],eax; TZMySQLNativeLibraryLoader.?f6C:dword
 004FFDFC    mov        edx,500678
 004FFE01    mov        eax,esi
 004FFE03    call       004EBE38
 004FFE08    mov        dword ptr [esi+70],eax; TZMySQLNativeLibraryLoader.?f70:dword
 004FFE0B    mov        edx,500690
 004FFE10    mov        eax,esi
 004FFE12    call       004EBE38
 004FFE17    mov        dword ptr [esi+74],eax; TZMySQLNativeLibraryLoader.?f74:dword
 004FFE1A    mov        edx,50069C
 004FFE1F    mov        eax,esi
 004FFE21    call       004EBE38
 004FFE26    mov        dword ptr [esi+78],eax; TZMySQLNativeLibraryLoader.?f78:dword
 004FFE29    mov        edx,5006A8
 004FFE2E    mov        eax,esi
 004FFE30    call       004EBE38
 004FFE35    mov        dword ptr [esi+7C],eax; TZMySQLNativeLibraryLoader.?f7C:dword
 004FFE38    mov        edx,5006B8
 004FFE3D    mov        eax,esi
 004FFE3F    call       004EBE38
 004FFE44    mov        dword ptr [esi+80],eax; TZMySQLNativeLibraryLoader.?f80:dword
 004FFE4A    mov        edx,5006C4
 004FFE4F    mov        eax,esi
 004FFE51    call       004EBE38
 004FFE56    mov        dword ptr [esi+84],eax; TZMySQLNativeLibraryLoader.?f84:dword
 004FFE5C    mov        edx,5006D4
 004FFE61    mov        eax,esi
 004FFE63    call       004EBE38
 004FFE68    mov        dword ptr [esi+88],eax; TZMySQLNativeLibraryLoader.?f88:dword
 004FFE6E    mov        edx,5006E8
 004FFE73    mov        eax,esi
 004FFE75    call       004EBE38
 004FFE7A    mov        dword ptr [esi+8C],eax; TZMySQLNativeLibraryLoader.?f8C:dword
 004FFE80    mov        edx,500700
 004FFE85    mov        eax,esi
 004FFE87    call       004EBE38
 004FFE8C    mov        dword ptr [esi+90],eax; TZMySQLNativeLibraryLoader.?f90:dword
 004FFE92    mov        edx,500714
 004FFE97    mov        eax,esi
 004FFE99    call       004EBE38
 004FFE9E    mov        dword ptr [esi+94],eax; TZMySQLNativeLibraryLoader.?f94:dword
 004FFEA4    mov        edx,500728
 004FFEA9    mov        eax,esi
 004FFEAB    call       004EBE38
 004FFEB0    mov        dword ptr [esi+98],eax; TZMySQLNativeLibraryLoader.?f98:dword
 004FFEB6    mov        edx,500738
 004FFEBB    mov        eax,esi
 004FFEBD    call       004EBE38
 004FFEC2    mov        dword ptr [esi+9C],eax; TZMySQLNativeLibraryLoader.?f9C:dword
 004FFEC8    mov        edx,500748
 004FFECD    mov        eax,esi
 004FFECF    call       004EBE38
 004FFED4    mov        dword ptr [esi+0A0],eax; TZMySQLNativeLibraryLoader.?fA0:dword
 004FFEDA    mov        edx,500754
 004FFEDF    mov        eax,esi
 004FFEE1    call       004EBE38
 004FFEE6    mov        dword ptr [esi+0A4],eax; TZMySQLNativeLibraryLoader.?fA4:dword
 004FFEEC    mov        edx,500760
 004FFEF1    mov        eax,esi
 004FFEF3    call       004EBE38
 004FFEF8    mov        dword ptr [esi+0A8],eax; TZMySQLNativeLibraryLoader.?fA8:dword
 004FFEFE    mov        edx,500774
 004FFF03    mov        eax,esi
 004FFF05    call       004EBE38
 004FFF0A    mov        dword ptr [esi+0AC],eax; TZMySQLNativeLibraryLoader.?fAC:dword
 004FFF10    mov        edx,500790
 004FFF15    mov        eax,esi
 004FFF17    call       004EBE38
 004FFF1C    mov        dword ptr [esi+0B0],eax; TZMySQLNativeLibraryLoader.?fB0:dword
 004FFF22    mov        edx,5007A4
 004FFF27    mov        eax,esi
 004FFF29    call       004EBE38
 004FFF2E    mov        dword ptr [esi+0B4],eax; TZMySQLNativeLibraryLoader.?fB4:dword
 004FFF34    mov        edx,5007B4
 004FFF39    mov        eax,esi
 004FFF3B    call       004EBE38
 004FFF40    mov        dword ptr [esi+0B8],eax; TZMySQLNativeLibraryLoader.?fB8:dword
 004FFF46    mov        edx,5007C4
 004FFF4B    mov        eax,esi
 004FFF4D    call       004EBE38
 004FFF52    mov        dword ptr [esi+0BC],eax; TZMySQLNativeLibraryLoader.?fBC:dword
 004FFF58    mov        edx,5007D4
 004FFF5D    mov        eax,esi
 004FFF5F    call       004EBE38
 004FFF64    mov        dword ptr [esi+0C0],eax; TZMySQLNativeLibraryLoader.?fC0:dword
 004FFF6A    mov        edx,5007E4
 004FFF6F    mov        eax,esi
 004FFF71    call       004EBE38
 004FFF76    mov        dword ptr [esi+0C4],eax; TZMySQLNativeLibraryLoader.?fC4:dword
 004FFF7C    mov        edx,5007F4
 004FFF81    mov        eax,esi
 004FFF83    call       004EBE38
 004FFF88    mov        dword ptr [esi+0C8],eax; TZMySQLNativeLibraryLoader.?fC8:dword
 004FFF8E    mov        edx,500804
 004FFF93    mov        eax,esi
 004FFF95    call       004EBE38
 004FFF9A    mov        dword ptr [esi+0CC],eax; TZMySQLNativeLibraryLoader.?fCC:dword
 004FFFA0    mov        edx,500810
 004FFFA5    mov        eax,esi
 004FFFA7    call       004EBE38
 004FFFAC    mov        dword ptr [esi+0D0],eax; TZMySQLNativeLibraryLoader.?fD0:dword
 004FFFB2    mov        edx,500824
 004FFFB7    mov        eax,esi
 004FFFB9    call       004EBE38
 004FFFBE    mov        dword ptr [esi+0D4],eax; TZMySQLNativeLibraryLoader.?fD4:dword
 004FFFC4    mov        edx,500834
 004FFFC9    mov        eax,esi
 004FFFCB    call       004EBE38
 004FFFD0    mov        dword ptr [esi+0D8],eax; TZMySQLNativeLibraryLoader.?fD8:dword
 004FFFD6    mov        edx,500848
 004FFFDB    mov        eax,esi
 004FFFDD    call       004EBE38
 004FFFE2    mov        dword ptr [esi+0DC],eax; TZMySQLNativeLibraryLoader.?fDC:dword
 004FFFE8    mov        edx,500850
 004FFFED    mov        eax,esi
 004FFFEF    call       004EBE38
 004FFFF4    mov        dword ptr [esi+0E0],eax; TZMySQLNativeLibraryLoader.?fE0:dword
 004FFFFA    mov        edx,500864
 004FFFFF    mov        eax,esi
 00500001    call       004EBE38
 00500006    mov        dword ptr [esi+0E4],eax; TZMySQLNativeLibraryLoader.?fE4:dword
 0050000C    mov        edx,500878
 00500011    mov        eax,esi
 00500013    call       004EBE38
 00500018    mov        dword ptr [esi+0E8],eax; TZMySQLNativeLibraryLoader.?fE8:dword
 0050001E    mov        edx,50088C
 00500023    mov        eax,esi
 00500025    call       004EBE38
 0050002A    mov        dword ptr [esi+0EC],eax; TZMySQLNativeLibraryLoader.?fEC:dword
 00500030    mov        edx,5008A0
 00500035    mov        eax,esi
 00500037    call       004EBE38
 0050003C    mov        dword ptr [esi+0F0],eax; TZMySQLNativeLibraryLoader.?fF0:dword
 00500042    mov        edx,5008B4
 00500047    mov        eax,esi
 00500049    call       004EBE38
 0050004E    mov        dword ptr [esi+0F4],eax; TZMySQLNativeLibraryLoader.?fF4:dword
 00500054    mov        edx,5008C8
 00500059    mov        eax,esi
 0050005B    call       004EBE38
 00500060    mov        dword ptr [esi+0F8],eax; TZMySQLNativeLibraryLoader.?fF8:dword
 00500066    mov        edx,5008DC
 0050006B    mov        eax,esi
 0050006D    call       004EBE38
 00500072    mov        dword ptr [esi+0FC],eax; TZMySQLNativeLibraryLoader.?fFC:dword
 00500078    mov        edx,5008F8
 0050007D    mov        eax,esi
 0050007F    call       004EBE38
 00500084    mov        dword ptr [esi+100],eax; TZMySQLNativeLibraryLoader.?f100:dword
 0050008A    mov        edx,50090C
 0050008F    mov        eax,esi
 00500091    call       004EBE38
 00500096    mov        dword ptr [esi+104],eax; TZMySQLNativeLibraryLoader.?f104:dword
 0050009C    mov        edx,500924
 005000A1    mov        eax,esi
 005000A3    call       004EBE38
 005000A8    mov        dword ptr [esi+108],eax; TZMySQLNativeLibraryLoader.?f108:dword
 005000AE    mov        edx,500938
 005000B3    mov        eax,esi
 005000B5    call       004EBE38
 005000BA    mov        dword ptr [esi+10C],eax; TZMySQLNativeLibraryLoader.?f10C:dword
 005000C0    mov        edx,500950
 005000C5    mov        eax,esi
 005000C7    call       004EBE38
 005000CC    mov        dword ptr [esi+110],eax; TZMySQLNativeLibraryLoader.?f110:dword
 005000D2    mov        edx,500964
 005000D7    mov        eax,esi
 005000D9    call       004EBE38
 005000DE    mov        dword ptr [esi+114],eax; TZMySQLNativeLibraryLoader.?f114:dword
 005000E4    mov        edx,50097C
 005000E9    mov        eax,esi
 005000EB    call       004EBE38
 005000F0    mov        dword ptr [esi+118],eax; TZMySQLNativeLibraryLoader.?f118:dword
 005000F6    mov        edx,500994
 005000FB    mov        eax,esi
 005000FD    call       004EBE38
 00500102    mov        dword ptr [esi+11C],eax; TZMySQLNativeLibraryLoader.?f11C:dword
 00500108    mov        edx,5009AC
 0050010D    mov        eax,esi
 0050010F    call       004EBE38
 00500114    mov        dword ptr [esi+120],eax; TZMySQLNativeLibraryLoader.?f120:dword
 0050011A    mov        edx,5009C4
 0050011F    mov        eax,esi
 00500121    call       004EBE38
 00500126    mov        dword ptr [esi+124],eax; TZMySQLNativeLibraryLoader.?f124:dword
 0050012C    mov        edx,5009E4
 00500131    mov        eax,esi
 00500133    call       004EBE38
 00500138    mov        dword ptr [esi+128],eax; TZMySQLNativeLibraryLoader.?f128:dword
 0050013E    mov        edx,500A04
 00500143    mov        eax,esi
 00500145    call       004EBE38
 0050014A    mov        dword ptr [esi+12C],eax; TZMySQLNativeLibraryLoader.?f12C:dword
 00500150    mov        edx,500A24
 00500155    mov        eax,esi
 00500157    call       004EBE38
 0050015C    mov        dword ptr [esi+130],eax; TZMySQLNativeLibraryLoader.?f130:dword
 00500162    mov        edx,500A3C
 00500167    mov        eax,esi
 00500169    call       004EBE38
 0050016E    mov        dword ptr [esi+134],eax; TZMySQLNativeLibraryLoader.?f134:dword
 00500174    mov        edx,500A4C
 00500179    mov        eax,esi
 0050017B    call       004EBE38
 00500180    mov        dword ptr [esi+138],eax; TZMySQLNativeLibraryLoader.?f138:dword
 00500186    mov        edx,500A60
 0050018B    mov        eax,esi
 0050018D    call       004EBE38
 00500192    mov        dword ptr [esi+13C],eax; TZMySQLNativeLibraryLoader.?f13C:dword
 00500198    mov        edx,500A70
 0050019D    mov        eax,esi
 0050019F    call       004EBE38
 005001A4    mov        dword ptr [esi+140],eax; TZMySQLNativeLibraryLoader.?f140:dword
 005001AA    mov        edx,500A84
 005001AF    mov        eax,esi
 005001B1    call       004EBE38
 005001B6    mov        dword ptr [esi+144],eax; TZMySQLNativeLibraryLoader.?f144:dword
 005001BC    mov        edx,500A9C
 005001C1    mov        eax,esi
 005001C3    call       004EBE38
 005001C8    mov        dword ptr [esi+148],eax; TZMySQLNativeLibraryLoader.?f148:dword
 005001CE    mov        edx,500AB0
 005001D3    mov        eax,esi
 005001D5    call       004EBE38
 005001DA    mov        dword ptr [esi+14C],eax; TZMySQLNativeLibraryLoader.?f14C:dword
 005001E0    mov        edx,500AC8
 005001E5    mov        eax,esi
 005001E7    call       004EBE38
 005001EC    mov        dword ptr [esi+150],eax; TZMySQLNativeLibraryLoader.?f150:dword
 005001F2    mov        edx,500AE4
 005001F7    mov        eax,esi
 005001F9    call       004EBE38
 005001FE    mov        dword ptr [esi+154],eax; TZMySQLNativeLibraryLoader.?f154:dword
 00500204    mov        edx,500AF8
 00500209    mov        eax,esi
 0050020B    call       004EBE38
 00500210    mov        dword ptr [esi+158],eax; TZMySQLNativeLibraryLoader.?f158:dword
 00500216    mov        edx,500B08
 0050021B    mov        eax,esi
 0050021D    call       004EBE38
 00500222    mov        dword ptr [esi+15C],eax; TZMySQLNativeLibraryLoader.?f15C:dword
 00500228    mov        edx,500B24
 0050022D    mov        eax,esi
 0050022F    call       004EBE38
 00500234    mov        dword ptr [esi+160],eax; TZMySQLNativeLibraryLoader.?f160:dword
 0050023A    mov        edx,500B38
 0050023F    mov        eax,esi
 00500241    call       004EBE38
 00500246    mov        dword ptr [esi+164],eax; TZMySQLNativeLibraryLoader.?f164:dword
 0050024C    mov        edx,500B4C
 00500251    mov        eax,esi
 00500253    call       004EBE38
 00500258    mov        dword ptr [esi+168],eax; TZMySQLNativeLibraryLoader.?f168:dword
 0050025E    mov        edx,500B60
 00500263    mov        eax,esi
 00500265    call       004EBE38
 0050026A    mov        dword ptr [esi+16C],eax; TZMySQLNativeLibraryLoader.?f16C:dword
 00500270    mov        edx,500B70
 00500275    mov        eax,esi
 00500277    call       004EBE38
 0050027C    mov        dword ptr [esi+170],eax; TZMySQLNativeLibraryLoader.?f170:dword
 00500282    mov        edx,500B88
 00500287    mov        eax,esi
 00500289    call       004EBE38
 0050028E    mov        dword ptr [esi+174],eax; TZMySQLNativeLibraryLoader.?f174:dword
 00500294    mov        edx,500BA0
 00500299    mov        eax,esi
 0050029B    call       004EBE38
 005002A0    mov        dword ptr [esi+178],eax; TZMySQLNativeLibraryLoader.?f178:dword
 005002A6    mov        edx,500BB0
 005002AB    mov        eax,esi
 005002AD    call       004EBE38
 005002B2    mov        dword ptr [esi+17C],eax; TZMySQLNativeLibraryLoader.?f17C:dword
 005002B8    mov        edx,500BC4
 005002BD    mov        eax,esi
 005002BF    call       004EBE38
 005002C4    mov        dword ptr [esi+180],eax; TZMySQLNativeLibraryLoader.?f180:dword
 005002CA    mov        edx,500BE0
 005002CF    mov        eax,esi
 005002D1    call       004EBE38
 005002D6    mov        dword ptr [esi+184],eax; TZMySQLNativeLibraryLoader.?f184:dword
 005002DC    mov        edx,500BF4
 005002E1    mov        eax,esi
 005002E3    call       004EBE38
 005002E8    mov        dword ptr [esi+188],eax; TZMySQLNativeLibraryLoader.?f188:dword
 005002EE    mov        edx,500C08
 005002F3    mov        eax,esi
 005002F5    call       004EBE38
 005002FA    mov        dword ptr [esi+18C],eax; TZMySQLNativeLibraryLoader.?f18C:dword
 00500300    mov        edx,500C20
 00500305    mov        eax,esi
 00500307    call       004EBE38
 0050030C    mov        dword ptr [esi+190],eax; TZMySQLNativeLibraryLoader.?f190:dword
 00500312    mov        edx,500C38
 00500317    mov        eax,esi
 00500319    call       004EBE38
 0050031E    mov        dword ptr [esi+194],eax; TZMySQLNativeLibraryLoader.?f194:dword
 00500324    mov        edx,500C4C
 00500329    mov        eax,esi
 0050032B    call       004EBE38
 00500330    mov        dword ptr [esi+198],eax; TZMySQLNativeLibraryLoader.?f198:dword
 00500336    mov        edx,500C64
 0050033B    mov        eax,esi
 0050033D    call       004EBE38
 00500342    mov        dword ptr [esi+19C],eax; TZMySQLNativeLibraryLoader.?f19C:dword
 00500348    mov        edx,500C78
 0050034D    mov        eax,esi
 0050034F    call       004EBE38
 00500354    mov        dword ptr [esi+1A0],eax; TZMySQLNativeLibraryLoader.?f1A0:dword
 0050035A    mov        edx,500C8C
 0050035F    mov        eax,esi
 00500361    call       004EBE38
 00500366    mov        dword ptr [esi+1A4],eax; TZMySQLNativeLibraryLoader.?f1A4:dword
 0050036C    mov        edx,500CA0
 00500371    mov        eax,esi
 00500373    call       004EBE38
 00500378    mov        dword ptr [esi+1A8],eax; TZMySQLNativeLibraryLoader.?f1A8:dword
 0050037E    mov        edx,500CB4
 00500383    mov        eax,esi
 00500385    call       004EBE38
 0050038A    mov        dword ptr [esi+1AC],eax; TZMySQLNativeLibraryLoader.?f1AC:dword
 00500390    mov        edx,500CCC
 00500395    mov        eax,esi
 00500397    call       004EBE38
 0050039C    mov        dword ptr [esi+1B0],eax; TZMySQLNativeLibraryLoader.?f1B0:dword
 005003A2    mov        edx,500CE4
 005003A7    mov        eax,esi
 005003A9    call       004EBE38
 005003AE    mov        dword ptr [esi+1B4],eax; TZMySQLNativeLibraryLoader.?f1B4:dword
 005003B4    mov        edx,500CFC
 005003B9    mov        eax,esi
 005003BB    call       004EBE38
 005003C0    mov        dword ptr [esi+1B8],eax; TZMySQLNativeLibraryLoader.?f1B8:dword
 005003C6    mov        edx,500D0C
 005003CB    mov        eax,esi
 005003CD    call       004EBE38
 005003D2    mov        dword ptr [esi+1BC],eax; TZMySQLNativeLibraryLoader.?f1BC:dword
 005003D8    mov        edx,500D24
 005003DD    mov        eax,esi
 005003DF    call       004EBE38
 005003E4    mov        dword ptr [esi+1C0],eax; TZMySQLNativeLibraryLoader.?f1C0:dword
 005003EA    mov        edx,500D38
 005003EF    mov        eax,esi
 005003F1    call       004EBE38
 005003F6    mov        dword ptr [esi+1C4],eax; TZMySQLNativeLibraryLoader.?f1C4:dword
 005003FC    mov        edx,500D50
 00500401    mov        eax,esi
 00500403    call       004EBE38
 00500408    mov        dword ptr [esi+1C8],eax; TZMySQLNativeLibraryLoader.?f1C8:dword
 0050040E    mov        edx,500D6C
 00500413    mov        eax,esi
 00500415    call       004EBE38
 0050041A    mov        dword ptr [esi+1CC],eax; TZMySQLNativeLibraryLoader.?f1CC:dword
 00500420    mov        edx,500D80
 00500425    mov        eax,esi
 00500427    call       004EBE38
 0050042C    mov        dword ptr [esi+1D0],eax; TZMySQLNativeLibraryLoader.?f1D0:dword
 00500432    mov        edx,500D94
 00500437    mov        eax,esi
 00500439    call       004EBE38
 0050043E    mov        dword ptr [esi+1D4],eax; TZMySQLNativeLibraryLoader.?f1D4:dword
 00500444    mov        edx,500DB0
 00500449    mov        eax,esi
 0050044B    call       004EBE38
 00500450    mov        dword ptr [esi+1D8],eax; TZMySQLNativeLibraryLoader.?f1D8:dword
 00500456    mov        edx,500DC4
 0050045B    mov        eax,esi
 0050045D    call       004EBE38
 00500462    mov        dword ptr [esi+1DC],eax; TZMySQLNativeLibraryLoader.?f1DC:dword
 00500468    mov        edx,500DD8
 0050046D    mov        eax,esi
 0050046F    call       004EBE38
 00500474    mov        dword ptr [esi+1E0],eax; TZMySQLNativeLibraryLoader.?f1E0:dword
 0050047A    mov        edx,500DF4
 0050047F    mov        eax,esi
 00500481    call       004EBE38
 00500486    mov        dword ptr [esi+1E4],eax; TZMySQLNativeLibraryLoader.?f1E4:dword
 0050048C    mov        edx,500E08
 00500491    mov        eax,esi
 00500493    call       004EBE38
 00500498    mov        dword ptr [esi+1E8],eax; TZMySQLNativeLibraryLoader.?f1E8:dword
 0050049E    mov        edx,500E20
 005004A3    mov        eax,esi
 005004A5    call       004EBE38
 005004AA    mov        dword ptr [esi+1EC],eax
 005004B0    mov        eax,ebx
 005004B2    pop        esi
 005004B3    pop        ebx
 005004B4    pop        ebp
 005004B5    ret
*}
//end;

//00500E40
destructor TZMySQLNativeLibraryLoader.Destroy;
begin
{*
 00500E40    push       ebp
 00500E41    mov        ebp,esp
 00500E43    push       ebx
 00500E44    push       esi
 00500E45    call       @BeforeDestruction
 00500E4A    mov        ebx,edx
 00500E4C    mov        esi,eax
 00500E4E    cmp        byte ptr [esi+0C],0; TZMySQLNativeLibraryLoader.?fC:byte
>00500E52    je         00500E63
 00500E54    cmp        dword ptr [esi+0F0],0; TZMySQLNativeLibraryLoader.?fF0:dword
>00500E5B    je         00500E63
 00500E5D    call       dword ptr [esi+0F0]
 00500E63    mov        edx,ebx
 00500E65    and        dl,0FC
 00500E68    mov        eax,esi
 00500E6A    call       TZNativeLibraryLoader.Destroy
 00500E6F    test       bl,bl
>00500E71    jle        00500E7A
 00500E73    mov        eax,esi
 00500E75    call       @ClassDestroy
 00500E7A    pop        esi
 00500E7B    pop        ebx
 00500E7C    pop        ebp
 00500E7D    ret
*}
end;

Initialization
//00500ED8
{*
 00500ED8    push       ebp
 00500ED9    mov        ebp,esp
 00500EDB    add        esp,0FFFFFFF4
 00500EDE    sub        dword ptr ds:[61E2C8],1
>00500EE5    jae        00500F43
 00500EE7    push       2
 00500EE9    mov        eax,500F50; 'libmysql51.dll'
 00500EEE    mov        dword ptr [ebp-0C],eax
 00500EF1    mov        eax,500F68; 'libmysql50.dll'
 00500EF6    mov        dword ptr [ebp-8],eax
 00500EF9    mov        eax,500F80; 'libmysql.dll'
 00500EFE    mov        dword ptr [ebp-4],eax
 00500F01    lea        ecx,[ebp-0C]
 00500F04    mov        dl,1
 00500F06    mov        eax,[004FFC0C]; TZMySQLNativeLibraryLoader
 00500F0B    call       TZSybaseNativeLibraryLoader.Create; TZMySQLNativeLibraryLoader.Create
 00500F10    mov        [0061E2C0],eax; gvar_0061E2C0:TZMySQLNativeLibraryLoader
 00500F15    push       2
 00500F17    mov        eax,500F98; 'libmysqld51.dll'
 00500F1C    mov        dword ptr [ebp-0C],eax
 00500F1F    mov        eax,500FB0; 'libmysqld50.dll'
 00500F24    mov        dword ptr [ebp-8],eax
 00500F27    mov        eax,500FC8; 'libmysqld.dll'
 00500F2C    mov        dword ptr [ebp-4],eax
 00500F2F    lea        ecx,[ebp-0C]
 00500F32    mov        dl,1
 00500F34    mov        eax,[004FFC0C]; TZMySQLNativeLibraryLoader
 00500F39    call       TZSybaseNativeLibraryLoader.Create; TZMySQLNativeLibraryLoader.Create
 00500F3E    mov        [0061E2C4],eax; gvar_0061E2C4:TZMySQLNativeLibraryLoader
 00500F43    mov        esp,ebp
 00500F45    pop        ebp
 00500F46    ret
*}
Finalization
//00500E80
{*
 00500E80    push       ebp
 00500E81    mov        ebp,esp
 00500E83    xor        eax,eax
 00500E85    push       ebp
 00500E86    push       500ECD
 00500E8B    push       dword ptr fs:[eax]
 00500E8E    mov        dword ptr fs:[eax],esp
 00500E91    inc        dword ptr ds:[61E2C8]
>00500E97    jne        00500EBF
 00500E99    cmp        dword ptr ds:[61E2C0],0; gvar_0061E2C0:TZMySQLNativeLibraryLoader
>00500EA0    je         00500EAC
 00500EA2    mov        eax,[0061E2C0]; gvar_0061E2C0:TZMySQLNativeLibraryLoader
 00500EA7    call       TObject.Free
 00500EAC    cmp        dword ptr ds:[61E2C4],0; gvar_0061E2C4:TZMySQLNativeLibraryLoader
>00500EB3    je         00500EBF
 00500EB5    mov        eax,[0061E2C4]; gvar_0061E2C4:TZMySQLNativeLibraryLoader
 00500EBA    call       TObject.Free
 00500EBF    xor        eax,eax
 00500EC1    pop        edx
 00500EC2    pop        ecx
 00500EC3    pop        ecx
 00500EC4    mov        dword ptr fs:[eax],edx
 00500EC7    push       500ED4
 00500ECC    ret
<00500ECD    jmp        @HandleFinally
<00500ED2    jmp        00500ECC
 00500ED4    pop        ebp
 00500ED5    ret
*}
end.