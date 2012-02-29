{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit dsun;

interface

uses
  Classes, Windows, Graphics, DB;

type
  Tds = class(TDataModule)
    user:TDataSource;//f58
    group:TDataSource;//f5C
    useradd:TDataSource;//f60
    barang:TDataSource;//f64
    kategori:TDataSource;//f68
    supplier:TDataSource;//f6C
    customer:TDataSource;//f70
    beli:TDataSource;//f74
    supplierpic:TDataSource;//f78
    belidetail:TDataSource;//f7C
    custpic:TDataSource;//f80
    custpicview:TDataSource;//f84
    polist:TDataSource;//f88
    footnote:TDataSource;//f8C
    jual:TDataSource;//f90
    jualdetail:TDataSource;//f94
    gudang:TDataSource;//f98
    inventory:TDataSource;//f9C
    invoice:TDataSource;//fA0
    orderdetail:TDataSource;//fA4
    delivery:TDataSource;//fA8
    deliverydetail:TDataSource;//fAC
    project:TDataSource;//fB0
    akun:TDataSource;//fB4
    penawaran:TDataSource;//fB8
    penawaran_detail:TDataSource;//fBC
    footnote_global:TDataSource;//fC0
    general_ledger:TDataSource;//fC4
    jobdes:TDataSource;//fC8
    karyawan:TDataSource;//fCC
    payadjustment:TDataSource;//fD0
    karyawan_detail:TDataSource;//fD4
    ptkp:TDataSource;//fD8
    bank:TDataSource;//fDC
    salary_level:TDataSource;//fE0
    dept:TDataSource;//fE4
    pph:TDataSource;//fE8
    fakturpajak:TDataSource;//fEC
    fakturpajakdetail:TDataSource;//fF0
    fakturpajakrpt:TDataSource;//fF4
    fakturpajakdetailrpt:TDataSource;//fF8
    salary:TDataSource;//fFC
    salaryleveldetail:TDataSource;//f100
    salary_level_detail_t:TDataSource;//f104
    salary_level_detail_k:TDataSource;//f108
    salary_level_tambah:TDataSource;//f10C
    penguranggaji:TDataSource;//f110
    karyawanlookup:TDataSource;//f114
    jurnalUmumDetail:TDataSource;//f118
    akunview:TDataSource;//f11C
    jurnalumum:TDataSource;//f120
    deliveryview:TDataSource;//f124
  end;

implementation

{$R *.DFM}

end.