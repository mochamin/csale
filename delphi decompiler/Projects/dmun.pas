{***************************************}
{Decompiled by IDR v.2.5.3 beta         }
{IDR home page: http://kpnc.org/idr32/en}
{***************************************}
unit dmun;

interface

uses
  Classes, Windows, Graphics, ZConnection, ZDataset, DB;

type
  Tdm = class(TDataModule)
    conerp:TZConnection;//f58
    user:TZQuery;//f5C
    group:TZQuery;//f60
    userus_firstname:TStringField;//f64
    userus_lastname:TStringField;//f68
    userus_username:TStringField;//f6C
    userus_password:TStringField;//f70
    userus_group:TStringField;//f74
    usergroup:TStringField;//f78
    useradd:TZQuery;//f7C
    StringField1:TStringField;//f80
    StringField2:TStringField;//f84
    StringField3:TStringField;//f88
    StringField4:TStringField;//f8C
    StringField5:TStringField;//f90
    StringField6:TStringField;//f94
    barang:TZQuery;//f98
    kategori:TZQuery;//f9C
    vendor:TZQuery;//fA0
    supplier:TZQuery;//fA4
    customer:TZQuery;//fA8
    beli:TZQuery;//fAC
    supplierpic:TZQuery;//fB0
    belidetail:TZQuery;//fB4
    custpic:TZQuery;//fB8
    custpicview:TZReadOnlyQuery;//fBC
    belidetailbd_kode:TStringField;//fC0
    belidetailbd_nama_barang:TStringField;//fC4
    belidetailbd_qty:TIntegerField;//fC8
    belidetailbd_harga:TFloatField;//fCC
    belidetailbd_total:TFloatField;//fD0
    belidetailbd_chart_account:TStringField;//fD4
    belidetailbd_tgl:TDateField;//fD8
    belidetailbd_sendto_nama:TStringField;//fDC
    belibe_kode:TStringField;//fE0
    belibe_tgl:TDateField;//fE4
    belibe_due:TDateField;//fE8
    polistn:TZReadOnlyQuery;//fEC
    footnote:TZQuery;//fF0
    footnotefn_id:TIntegerField;//fF4
    footnotefn_supplier_id:TStringField;//fF8
    footnotefn_blok1:TStringField;//fFC
    footnotefn_blok2:TStringField;//f100
    footnotefn_blok3:TStringField;//f104
    polistnbe_id:TIntegerField;//f108
    polistnbe_kode:TStringField;//f10C
    polistnbe_tgl:TDateField;//f110
    polistnbe_due:TDateField;//f114
    polistnSupplier:TStringField;//f118
    suppliersp_name:TStringField;//f11C
    suppliersp_address:TStringField;//f120
    suppliersp_kota:TStringField;//f124
    suppliersp_telp:TStringField;//f128
    suppliersp_refer:TStringField;//f12C
    belibe_supplier_id:TIntegerField;//f130
    polistnbe_supplier_id:TIntegerField;//f134
    polistnbe_pic:TIntegerField;//f138
    belibe_pic:TIntegerField;//f13C
    belidetailbd_kd_barang:TIntegerField;//f140
    belidetailbd_sendto:TIntegerField;//f144
    belidetailbd_up:TIntegerField;//f148
    jual:TZQuery;//f14C
    jualdetail:TZQuery;//f150
    gudang:TZQuery;//f154
    inventory:TZQuery;//f158
    inventoryin_id:TIntegerField;//f15C
    inventoryin_kd_barang:TIntegerField;//f160
    inventoryin_kd_gudang:TSmallintField;//f164
    inventoryin_stock:TIntegerField;//f168
    inventoryin_harga:TFloatField;//f16C
    inventorybarang:TStringField;//f170
    inventoryType:TStringField;//f174
    inventorygudang:TStringField;//f178
    belibe_post:TSmallintField;//f17C
    polistnbe_post:TSmallintField;//f180
    polist:TZQuery;//f184
    polistbe_id:TIntegerField;//f188
    polistbe_kode:TStringField;//f18C
    polistbe_supplier_id:TIntegerField;//f190
    polistbe_tgl:TDateField;//f194
    polistbe_pic:TIntegerField;//f198
    polistbe_due:TDateField;//f19C
    polistbe_post:TSmallintField;//f1A0
    polistsupplier:TStringField;//f1A4
    belibe_bayar:TStringField;//f1A8
    suppliersp_id:TIntegerField;//f1AC
    jualdetailjd_kode:TStringField;//f1B0
    jualdetailjd_tgl:TDateField;//f1B4
    jualdetailjd_kd_barang:TIntegerField;//f1B8
    jualdetailjd_nama_barang:TStringField;//f1BC
    jualdetailjd_qty:TIntegerField;//f1C0
    jualdetailjd_harga_pokok:TFloatField;//f1C4
    jualdetailjd_harga_jual:TFloatField;//f1C8
    jualdetailjd_disc_persen:TSmallintField;//f1CC
    jualdetailjd_total:TFloatField;//f1D0
    jualdetailjd_discrp:TFloatField;//f1D4
    jualju_kode:TStringField;//f1D8
    jualju_tgl:TDateField;//f1DC
    jualju_cust_id:TIntegerField;//f1E0
    jualju_cust_pic:TIntegerField;//f1E4
    jualju_due:TDateField;//f1E8
    jualju_bayar:TStringField;//f1EC
    jualju_po:TStringField;//f1F0
    jualdetailjd_margin:TFloatField;//f1F4
    invoice:TZQuery;//f1F8
    invoiceju_kode:TStringField;//f1FC
    invoiceju_tgl:TDateField;//f200
    invoiceju_cust_id:TIntegerField;//f204
    invoiceju_cust_pic:TIntegerField;//f208
    invoiceju_due:TDateField;//f20C
    invoiceju_bayar:TStringField;//f210
    invoiceju_po:TStringField;//f214
    invoiceCustomer:TStringField;//f218
    invoicePIC:TStringField;//f21C
    orderdetail:TZQuery;//f220
    StringField7:TStringField;//f224
    StringField8:TStringField;//f228
    IntegerField1:TIntegerField;//f22C
    FloatField1:TFloatField;//f230
    FloatField2:TFloatField;//f234
    StringField9:TStringField;//f238
    DateField1:TDateField;//f23C
    StringField10:TStringField;//f240
    IntegerField2:TIntegerField;//f244
    IntegerField3:TIntegerField;//f248
    IntegerField4:TIntegerField;//f24C
    delivery:TZQuery;//f250
    deliverydetail:TZQuery;//f254
    barangdeliver:TZReadOnlyQuery;//f258
    deliverydetaildd_kode:TStringField;//f25C
    deliverydetaildd_kd_barang:TStringField;//f260
    deliverydetaildd_nama_barang:TStringField;//f264
    deliverydetaildd_type:TStringField;//f268
    deliverydetaildd_qty:TSmallintField;//f26C
    deliverydo_tgl:TDateField;//f270
    deliverydo_pic:TStringField;//f274
    deliverydo_invoice:TStringField;//f278
    deliverydo_kode:TStringField;//f27C
    deliverydo_cust_id:TIntegerField;//f280
    deliverydo_cust_pic:TIntegerField;//f284
    jualdetailjd_satuan:TStringField;//f288
    inventoryunit:TStringField;//f28C
    deliverydetaildd_satuan:TStringField;//f290
    project:TZQuery;//f294
    projectpj_name:TStringField;//f298
    projectpj_location:TStringField;//f29C
    projectpj_id:TIntegerField;//f2A0
    jualju_project:TIntegerField;//f2A4
    projectpj_custid:TIntegerField;//f2A8
    projectcust:TStringField;//f2AC
    akun:TZQuery;//f2B0
    akunak_no:TStringField;//f2B4
    akunak_desc:TStringField;//f2B8
    akunak_subclass:TSmallintField;//f2BC
    akunak_class_id:TSmallintField;//f2C0
    akun_klas:TZQuery;//f2C4
    akun_subklas:TZQuery;//f2C8
    akunklas:TStringField;//f2CC
    akunsubklas:TStringField;//f2D0
    neraca:TZQuery;//f2D4
    deliveryrpt:TZQuery;//f2D8
    barangrpt:TZQuery;//f2DC
    jualju_total:TFloatField;//f2E0
    jualju_tax:TFloatField;//f2E4
    jualju_akun:TStringField;//f2E8
    invoiceju_lunas:TSmallintField;//f2EC
    invoiceju_project:TIntegerField;//f2F0
    invoiceju_total:TFloatField;//f2F4
    invoiceju_tax:TFloatField;//f2F8
    invoiceju_akun:TStringField;//f2FC
    invoicedetail:TZQuery;//f300
    StringField11:TStringField;//f304
    DateField2:TDateField;//f308
    IntegerField5:TIntegerField;//f30C
    StringField12:TStringField;//f310
    IntegerField6:TIntegerField;//f314
    FloatField3:TFloatField;//f318
    FloatField4:TFloatField;//f31C
    SmallintField1:TSmallintField;//f320
    FloatField5:TFloatField;//f324
    FloatField6:TFloatField;//f328
    FloatField7:TFloatField;//f32C
    StringField13:TStringField;//f330
    kasneraca:TZQuery;//f334
    belibe_islangsung:TSmallintField;//f338
    belibe_project_id:TIntegerField;//f33C
    penawaran:TZQuery;//f340
    inventory_post:TZQuery;//f344
    IntegerField7:TIntegerField;//f348
    IntegerField8:TIntegerField;//f34C
    SmallintField2:TSmallintField;//f350
    IntegerField9:TIntegerField;//f354
    FloatField8:TFloatField;//f358
    StringField14:TStringField;//f35C
    StringField15:TStringField;//f360
    StringField16:TStringField;//f364
    StringField17:TStringField;//f368
    penawaranqt_kode:TStringField;//f36C
    penawaranqt_date:TDateField;//f370
    penawaranqt_up_id:TIntegerField;//f374
    penawaranqt_pic:TStringField;//f378
    penawaranqt_project_id:TIntegerField;//f37C
    penawaranqt_cust_id:TIntegerField;//f380
    penawaran_detail:TZQuery;//f384
    penawaran_detailqd_kode:TStringField;//f388
    penawaran_detailqd_kd_barang:TIntegerField;//f38C
    penawaran_detailqd_nama_barang:TStringField;//f390
    penawaran_detailqd_type:TStringField;//f394
    penawaran_detailqd_unit:TStringField;//f398
    penawaran_detailqd_qty:TSmallintField;//f39C
    penawaran_detailqd_harga:TFloatField;//f3A0
    penawaran_detailqd_total:TFloatField;//f3A4
    penawaran_detailqd_tgl:TDateField;//f3A8
    footnote_global:TZQuery;//f3AC
    sedianeraca:TZQuery;//f3B0
    hutangneraca:TZQuery;//f3B4
    general_ledger:TZQuery;//f3B8
    glkas:TZQuery;//f3BC
    bd_inventory:TZQuery;//f3C0
    StringField24:TStringField;//f3C4
    StringField25:TStringField;//f3C8
    IntegerField10:TIntegerField;//f3CC
    FloatField15:TFloatField;//f3D0
    FloatField16:TFloatField;//f3D4
    StringField26:TStringField;//f3D8
    DateField5:TDateField;//f3DC
    StringField27:TStringField;//f3E0
    IntegerField11:TIntegerField;//f3E4
    IntegerField12:TIntegerField;//f3E8
    IntegerField13:TIntegerField;//f3EC
    glkasgl_id:TIntegerField;//f3F0
    glkasgl_akun:TStringField;//f3F4
    glkasgl_amount:TFloatField;//f3F8
    glkasgl_tgl:TDateField;//f3FC
    glkasgl_tran_id:TIntegerField;//f400
    glkasgl_desc:TStringField;//f404
    glkasgl_debet:TFloatField;//f408
    glkasgl_kredit:TFloatField;//f40C
    glkasgl_ref:TStringField;//f410
    glpiutang:TZQuery;//f414
    IntegerField14:TIntegerField;//f418
    StringField28:TStringField;//f41C
    FloatField17:TFloatField;//f420
    DateField6:TDateField;//f424
    IntegerField15:TIntegerField;//f428
    StringField29:TStringField;//f42C
    FloatField18:TFloatField;//f430
    FloatField19:TFloatField;//f434
    StringField30:TStringField;//f438
    glpersediaan:TZQuery;//f43C
    IntegerField16:TIntegerField;//f440
    StringField31:TStringField;//f444
    FloatField20:TFloatField;//f448
    DateField7:TDateField;//f44C
    IntegerField17:TIntegerField;//f450
    StringField32:TStringField;//f454
    FloatField21:TFloatField;//f458
    FloatField22:TFloatField;//f45C
    StringField33:TStringField;//f460
    glhutangusaha:TZQuery;//f464
    IntegerField18:TIntegerField;//f468
    StringField34:TStringField;//f46C
    FloatField23:TFloatField;//f470
    DateField8:TDateField;//f474
    IntegerField19:TIntegerField;//f478
    StringField35:TStringField;//f47C
    FloatField24:TFloatField;//f480
    FloatField25:TFloatField;//f484
    StringField36:TStringField;//f488
    glhutangpp:TZQuery;//f48C
    IntegerField20:TIntegerField;//f490
    StringField37:TStringField;//f494
    FloatField26:TFloatField;//f498
    DateField9:TDateField;//f49C
    IntegerField21:TIntegerField;//f4A0
    StringField38:TStringField;//f4A4
    FloatField27:TFloatField;//f4A8
    FloatField28:TFloatField;//f4AC
    StringField39:TStringField;//f4B0
    gljualproduk:TZQuery;//f4B4
    IntegerField22:TIntegerField;//f4B8
    StringField40:TStringField;//f4BC
    FloatField29:TFloatField;//f4C0
    DateField10:TDateField;//f4C4
    IntegerField23:TIntegerField;//f4C8
    StringField41:TStringField;//f4CC
    FloatField30:TFloatField;//f4D0
    FloatField31:TFloatField;//f4D4
    StringField42:TStringField;//f4D8
    glbiaya:TZQuery;//f4DC
    IntegerField24:TIntegerField;//f4E0
    StringField43:TStringField;//f4E4
    FloatField32:TFloatField;//f4E8
    DateField11:TDateField;//f4EC
    IntegerField25:TIntegerField;//f4F0
    StringField44:TStringField;//f4F4
    FloatField33:TFloatField;//f4F8
    FloatField34:TFloatField;//f4FC
    StringField45:TStringField;//f500
    kasneracagl_id:TIntegerField;//f504
    kasneracagl_akun:TStringField;//f508
    kasneracagl_amount:TFloatField;//f50C
    kasneracagl_tgl:TDateField;//f510
    kasneracagl_tran_id:TIntegerField;//f514
    kasneracagl_desc:TStringField;//f518
    kasneracagl_debet:TFloatField;//f51C
    kasneracagl_kredit:TFloatField;//f520
    kasneracagl_ref:TStringField;//f524
    sedianeracagl_id:TIntegerField;//f528
    sedianeracagl_akun:TStringField;//f52C
    sedianeracagl_amount:TFloatField;//f530
    sedianeracagl_tgl:TDateField;//f534
    sedianeracagl_tran_id:TIntegerField;//f538
    sedianeracagl_desc:TStringField;//f53C
    sedianeracagl_debet:TFloatField;//f540
    sedianeracagl_kredit:TFloatField;//f544
    sedianeracagl_ref:TStringField;//f548
    piutangneraca:TZQuery;//f54C
    IntegerField26:TIntegerField;//f550
    StringField18:TStringField;//f554
    FloatField9:TFloatField;//f558
    DateField3:TDateField;//f55C
    IntegerField27:TIntegerField;//f560
    StringField19:TStringField;//f564
    FloatField10:TFloatField;//f568
    FloatField11:TFloatField;//f56C
    StringField20:TStringField;//f570
    hartatotalneraca:TZQuery;//f574
    IntegerField28:TIntegerField;//f578
    StringField21:TStringField;//f57C
    FloatField12:TFloatField;//f580
    DateField4:TDateField;//f584
    IntegerField29:TIntegerField;//f588
    StringField22:TStringField;//f58C
    FloatField13:TFloatField;//f590
    FloatField14:TFloatField;//f594
    StringField23:TStringField;//f598
    hutangpajakjual:TZQuery;//f59C
    IntegerField30:TIntegerField;//f5A0
    StringField46:TStringField;//f5A4
    FloatField35:TFloatField;//f5A8
    DateField12:TDateField;//f5AC
    IntegerField31:TIntegerField;//f5B0
    StringField47:TStringField;//f5B4
    FloatField36:TFloatField;//f5B8
    FloatField37:TFloatField;//f5BC
    StringField48:TStringField;//f5C0
    chartofaccount:TZQuery;//f5C4
    hutangneracagl_akun:TStringField;//f5C8
    hutangneracatotalhutang:TFloatField;//f5CC
    labaneraca:TZQuery;//f5D0
    labaneracagl_akun:TStringField;//f5D4
    labaneracadebet:TFloatField;//f5D8
    labaneracakredit:TFloatField;//f5DC
    modalneraca:TZQuery;//f5E0
    modalneracagl_akun:TStringField;//f5E4
    modalneracatotalmodal:TFloatField;//f5E8
    gl:TZQuery;//f5EC
    glgl_id:TIntegerField;//f5F0
    glgl_akun:TStringField;//f5F4
    glgl_amount:TFloatField;//f5F8
    glgl_tgl:TDateField;//f5FC
    glgl_tran_id:TIntegerField;//f600
    glgl_desc:TStringField;//f604
    glgl_debet:TFloatField;//f608
    glgl_kredit:TFloatField;//f60C
    glgl_ref:TStringField;//f610
    pendapatanlr:TZQuery;//f614
    biayalr:TZQuery;//f618
    biayaoprlr:TZQuery;//f61C
    pendapatanlainlr:TZQuery;//f620
    pengeluaranlainlr:TZQuery;//f624
    coalr:TZQuery;//f628
    pendapatanlrgl_akun:TStringField;//f62C
    pendapatanlrpndptntotal:TFloatField;//f630
    biayaoprlrgl_akun:TStringField;//f634
    biayaoprlrgl_amount:TFloatField;//f638
    biayalrgl_akun:TStringField;//f63C
    biayalrgl_amount:TFloatField;//f640
    pendapatanlainlrgl_akun:TStringField;//f644
    pendapatanlainlrgl_amount:TFloatField;//f648
    pengeluaranlainlrgl_akun:TStringField;//f64C
    pengeluaranlainlrgl_amount:TFloatField;//f650
    jobdes:TZQuery;//f654
    karyawan:TZQuery;//f658
    karyawankr_id:TIntegerField;//f65C
    karyawankr_no_induk:TStringField;//f660
    karyawankr_firstname:TStringField;//f664
    karyawankr_lastname:TStringField;//f668
    karyawankr_jd_id:TIntegerField;//f66C
    karyawankr_basic:TFloatField;//f670
    karyawankr_dateofbirth:TDateField;//f674
    karyawankr_maritalstatus:TStringField;//f678
    karyawankr_phone:TStringField;//f67C
    karyawankr_email:TStringField;//f680
    karyawankr_address:TStringField;//f684
    karyawankr_city:TStringField;//f688
    karyawankr_placeofbirth:TStringField;//f68C
    karyawankr_jk:TStringField;//f690
    karyawankr_workingstart:TDateField;//f694
    payadjustment:TZQuery;//f698
    payadjustmentpa_amount:TFloatField;//f69C
    payadjustmentpa_comment:TStringField;//f6A0
    payadjustmentpa_add_or_deduct:TStringField;//f6A4
    payadjustmentpa_item:TStringField;//f6A8
    payadjustmentpa_percentage:TSmallintField;//f6AC
    karyawan_detail:TZQuery;//f6B0
    ptkp:TZQuery;//f6B4
    karyawan_detailkd_kr_id:TIntegerField;//f6B8
    karyawan_detailkd_tgl_mulaikerja:TDateField;//f6BC
    karyawan_detailkd_tgl_berhentikerja:TDateField;//f6C0
    karyawan_detailkd_dp_id:TIntegerField;//f6C4
    karyawan_detailkd_jb_id:TIntegerField;//f6C8
    karyawan_detailkd_cash_transfer:TStringField;//f6CC
    karyawan_detailkd_ba_id:TIntegerField;//f6D0
    karyawan_detailkd_norek:TStringField;//f6D4
    karyawan_detailkd_limit_pinjaman:TFloatField;//f6D8
    karyawan_detailkd_aktif:TSmallintField;//f6DC
    karyawan_detailkd_pt_id:TSmallintField;//f6E0
    karyawan_detailkd_npwp:TStringField;//f6E4
    karyawan_detailkd_tgl_npwp:TDateField;//f6E8
    dept:TZQuery;//f6EC
    salary_level:TZQuery;//f6F0
    karyawan_detailkd_sl_id:TIntegerField;//f6F4
    jobdesjd_id:TIntegerField;//f6F8
    jobdesjd_nama:TStringField;//f6FC
    jobdesjd_description:TStringField;//f700
    bank:TZQuery;//f704
    salary_levelsl_name:TStringField;//f708
    salary_levelsl_amount:TFloatField;//f70C
    salary_levelsl_id:TIntegerField;//f710
    karyawan_detailkd_no_induk:TStringField;//f714
    ptkppt_id:TIntegerField;//f718
    ptkppt_kode:TStringField;//f71C
    ptkppt_nama:TStringField;//f720
    ptkppt_nilaipertahun:TFloatField;//f724
    pph:TZQuery;//f728
    pphph_id:TIntegerField;//f72C
    pphph_level:TStringField;//f730
    pphpp_penghasilan:TFloatField;//f734
    pphpp_tarif:TSmallintField;//f738
    salary_levelsl_kode:TStringField;//f73C
    gl_hapus:TZQuery;//f740
    IntegerField32:TIntegerField;//f744
    StringField49:TStringField;//f748
    FloatField38:TFloatField;//f74C
    DateField13:TDateField;//f750
    IntegerField33:TIntegerField;//f754
    StringField50:TStringField;//f758
    FloatField39:TFloatField;//f75C
    FloatField40:TFloatField;//f760
    StringField51:TStringField;//f764
    jualdetailhapus:TZQuery;//f768
    StringField52:TStringField;//f76C
    DateField14:TDateField;//f770
    IntegerField34:TIntegerField;//f774
    StringField53:TStringField;//f778
    IntegerField35:TIntegerField;//f77C
    FloatField41:TFloatField;//f780
    FloatField42:TFloatField;//f784
    SmallintField3:TSmallintField;//f788
    FloatField43:TFloatField;//f78C
    FloatField44:TFloatField;//f790
    FloatField45:TFloatField;//f794
    StringField54:TStringField;//f798
    belidetailhapus:TZQuery;//f79C
    StringField55:TStringField;//f7A0
    StringField56:TStringField;//f7A4
    IntegerField36:TIntegerField;//f7A8
    FloatField46:TFloatField;//f7AC
    FloatField47:TFloatField;//f7B0
    StringField57:TStringField;//f7B4
    DateField15:TDateField;//f7B8
    StringField58:TStringField;//f7BC
    IntegerField37:TIntegerField;//f7C0
    IntegerField38:TIntegerField;//f7C4
    IntegerField39:TIntegerField;//f7C8
    fakturpajak:TZQuery;//f7CC
    fakturpajakdetail:TZQuery;//f7D0
    fakturpajakrpt:TZQuery;//f7D4
    fakturpajakdetailrpt:TZQuery;//f7D8
    wp:TZQuery;//f7DC
    barangpajakrpt:TZQuery;//f7E0
    fakturpajakdetailrptfd_id:TIntegerField;//f7E4
    fakturpajakdetailrptfd_kode:TStringField;//f7E8
    fakturpajakdetailrptfd_kd_barang:TIntegerField;//f7EC
    fakturpajakdetailrptfd_nama_barang:TStringField;//f7F0
    fakturpajakdetailrptfd_qty:TIntegerField;//f7F4
    fakturpajakdetailrptfd_row_total:TFloatField;//f7F8
    fakturpajakdetailrptfd_harga:TFloatField;//f7FC
    salary:TZQuery;//f800
    salarykr_id:TIntegerField;//f804
    salarykr_no_induk:TStringField;//f808
    salarykr_firstname:TStringField;//f80C
    salarykr_lastname:TStringField;//f810
    salarykr_jd_id:TIntegerField;//f814
    salarykr_basic:TFloatField;//f818
    salarykr_dateofbirth:TDateField;//f81C
    salarykr_maritalstatus:TStringField;//f820
    salarykr_phone:TStringField;//f824
    salarykr_email:TStringField;//f828
    salarykr_address:TStringField;//f82C
    salarykr_city:TStringField;//f830
    salarykr_placeofbirth:TStringField;//f834
    salarykr_jk:TStringField;//f838
    salarykr_workingstart:TDateField;//f83C
    salarykr_cek:TStringField;//f840
    inputsalary:TZQuery;//f844
    inputsalarysa_id:TIntegerField;//f848
    inputsalarysa_kr_id:TIntegerField;//f84C
    inputsalarysa_gross_pay:TFloatField;//f850
    inputsalarysa_net_pay:TFloatField;//f854
    inputsalarysa_date:TDateField;//f858
    inputsalarysa_period:TStringField;//f85C
    inputsalarysa_checked:TSmallintField;//f860
    inputsalarysa_cek:TStringField;//f864
    inputsalarysa_potongan_pajak:TFloatField;//f868
    inputsalarysa_ptkp:TFloatField;//f86C
    karyawan_detailkd_basic_salary:TFloatField;//f870
    inputsalarysa_pengurangan:TFloatField;//f874
    inputsalarysa_objek_pajak:TFloatField;//f878
    inputsalarysa_no_induk:TStringField;//f87C
    inputsalarysa_take_home_pay:TFloatField;//f880
    salary_level_tambah:TZQuery;//f884
    salary_level_detail_t:TZQuery;//f888
    salary_level_detail_tsd_kode:TStringField;//f88C
    salary_level_detail_tsd_kode_item:TStringField;//f890
    salary_level_detail_tsd_nama:TStringField;//f894
    salary_level_detail_tsd_amount:TFloatField;//f898
    salary_level_detail_tsd_jenis:TStringField;//f89C
    salary_level_detail_k:TZQuery;//f8A0
    StringField59:TStringField;//f8A4
    StringField60:TStringField;//f8A8
    StringField61:TStringField;//f8AC
    FloatField48:TFloatField;//f8B0
    StringField62:TStringField;//f8B4
    salary_level_tambahst_kode:TStringField;//f8B8
    salary_level_tambahst_kode_item:TStringField;//f8BC
    salary_level_tambahst_amount:TFloatField;//f8C0
    salary_level_tambahst_jenis:TStringField;//f8C4
    salary_level_tambahst_nama:TStringField;//f8C8
    penguranggaji:TZQuery;//f8CC
    penguranggajisk_id:TIntegerField;//f8D0
    penguranggajisk_kode:TStringField;//f8D4
    penguranggajisk_amount:TFloatField;//f8D8
    penguranggajisk_nama:TStringField;//f8DC
    salary_level_detail:TZQuery;//f8E0
    StringField63:TStringField;//f8E4
    StringField64:TStringField;//f8E8
    StringField65:TStringField;//f8EC
    FloatField49:TFloatField;//f8F0
    StringField66:TStringField;//f8F4
    karyawan_detailkd_sl_kode:TStringField;//f8F8
    salarytambahcount:TZQuery;//f8FC
    salarykurangcount:TZQuery;//f900
    karyawanlookup:TZQuery;//f904
    salaryrpt:TZQuery;//f908
    salaryrptsa_id:TIntegerField;//f90C
    salaryrptsa_kr_id:TIntegerField;//f910
    salaryrptsa_gross_pay:TFloatField;//f914
    salaryrptsa_net_pay:TFloatField;//f918
    salaryrptsa_date:TDateField;//f91C
    salaryrptsa_period:TStringField;//f920
    salaryrptsa_checked:TSmallintField;//f924
    salaryrptsa_cek:TStringField;//f928
    salaryrptsa_potongan_pajak:TFloatField;//f92C
    salaryrptsa_ptkp:TFloatField;//f930
    salaryrptsa_pengurangan:TFloatField;//f934
    salaryrptsa_objek_pajak:TFloatField;//f938
    salaryrptsa_no_induk:TStringField;//f93C
    salaryrptsa_take_home_pay:TFloatField;//f940
    karyawandetailrpt:TZQuery;//f944
    IntegerField40:TIntegerField;//f948
    DateField16:TDateField;//f94C
    DateField17:TDateField;//f950
    IntegerField41:TIntegerField;//f954
    IntegerField42:TIntegerField;//f958
    StringField67:TStringField;//f95C
    IntegerField43:TIntegerField;//f960
    StringField68:TStringField;//f964
    FloatField50:TFloatField;//f968
    SmallintField4:TSmallintField;//f96C
    SmallintField5:TSmallintField;//f970
    StringField69:TStringField;//f974
    DateField18:TDateField;//f978
    IntegerField44:TIntegerField;//f97C
    StringField70:TStringField;//f980
    FloatField51:TFloatField;//f984
    StringField71:TStringField;//f988
    karyawandetailrptjabtan:TStringField;//f98C
    karyawandetailrptDepartemen:TStringField;//f990
    inputsalarysa_pengurang_pajak:TFloatField;//f994
    inputsalarysa_penambahan:TFloatField;//f998
    salaryrptsa_pengurang_pajak:TFloatField;//f99C
    salaryrptsa_penambahan:TFloatField;//f9A0
    salaryrptsa_kode_level:TStringField;//f9A4
    inputsalarysa_kode_level:TStringField;//f9A8
    inputsalarysa_ref:TStringField;//f9AC
    salaryrptsa_ref:TStringField;//f9B0
    salaryref:TZQuery;//f9B4
    jurnal_umum_detail:TZQuery;//f9B8
    jurnal_umum_detailjl_id:TIntegerField;//f9BC
    jurnal_umum_detailjl_kode:TStringField;//f9C0
    jurnal_umum_detailjl_akun:TStringField;//f9C4
    jurnal_umum_detailjl_desc:TStringField;//f9C8
    jurnal_umum_detailjl_amount:TFloatField;//f9CC
    jurnal_umum_detailjl_kredit:TFloatField;//f9D0
    jurnal_umum_detailjl_debet:TFloatField;//f9D4
    akunview:TZQuery;//f9D8
    StringField72:TStringField;//f9DC
    StringField73:TStringField;//f9E0
    SmallintField6:TSmallintField;//f9E4
    SmallintField7:TSmallintField;//f9E8
    StringField74:TStringField;//f9EC
    StringField75:TStringField;//f9F0
    jurnalumum:TZQuery;//f9F4
    jurnalumumju_id:TIntegerField;//f9F8
    jurnalumumju_kode:TStringField;//f9FC
    jurnalumumju_amount:TFloatField;//fA00
    jurnalumumju_date:TDateField;//fA04
    jurnalumumju_pic:TStringField;//fA08
    jurnalumumju_note:TStringField;//fA0C
    juref:TZQuery;//fA10
    IntegerField45:TIntegerField;//fA14
    StringField76:TStringField;//fA18
    FloatField52:TFloatField;//fA1C
    DateField19:TDateField;//fA20
    StringField77:TStringField;//fA24
    StringField78:TStringField;//fA28
    jualju_ppn:TStringField;//fA2C
    jualref:TZQuery;//fA30
    StringField79:TStringField;//fA34
    DateField20:TDateField;//fA38
    IntegerField46:TIntegerField;//fA3C
    IntegerField47:TIntegerField;//fA40
    DateField21:TDateField;//fA44
    StringField80:TStringField;//fA48
    StringField81:TStringField;//fA4C
    IntegerField48:TIntegerField;//fA50
    FloatField53:TFloatField;//fA54
    FloatField54:TFloatField;//fA58
    StringField82:TStringField;//fA5C
    StringField83:TStringField;//fA60
    inventoryref:TZQuery;//fA64
    IntegerField49:TIntegerField;//fA68
    IntegerField50:TIntegerField;//fA6C
    SmallintField8:TSmallintField;//fA70
    IntegerField51:TIntegerField;//fA74
    FloatField55:TFloatField;//fA78
    StringField84:TStringField;//fA7C
    StringField85:TStringField;//fA80
    StringField86:TStringField;//fA84
    StringField87:TStringField;//fA88
    invoiceju_invoice_sent:TSmallintField;//fA8C
    invoiceju_ppn:TStringField;//fA90
    deliveryview:TZQuery;//fA94
    DateField22:TDateField;//fA98
    StringField88:TStringField;//fA9C
    StringField89:TStringField;//fAA0
    StringField90:TStringField;//fAA4
    IntegerField52:TIntegerField;//fAA8
    IntegerField53:TIntegerField;//fAAC
    deliveryviewcu_nama:TStringField;//fAB0
    procedure belidetailBeforePost;
    procedure footnoteBeforePost;
    procedure jualdetailNewRecord;
    procedure jualdetailBeforePost;
    procedure penawaran_detailBeforePost;
    procedure jobdesBeforeOpen;
    procedure jobdesAfterOpen;
    procedure jurnal_umum_detailAfterPost;
  end;

implementation

{$R *.DFM}

//005E0BC0
procedure Tdm.belidetailBeforePost;
begin
{*
 005E0BC0    push       ebp
 005E0BC1    mov        ebp,esp
 005E0BC3    mov        ecx,6
 005E0BC8    push       0
 005E0BCA    push       0
 005E0BCC    dec        ecx
<005E0BCD    jne        005E0BC8
 005E0BCF    push       ebx
 005E0BD0    mov        ebx,eax
 005E0BD2    xor        eax,eax
 005E0BD4    push       ebp
 005E0BD5    push       5E0C85
 005E0BDA    push       dword ptr fs:[eax]
 005E0BDD    mov        dword ptr fs:[eax],esp
 005E0BE0    mov        edx,5E0C9C; 'bd_tgl'
 005E0BE5    mov        eax,dword ptr [ebx+0B4]; Tdm.belidetail:TZQuery
 005E0BEB    call       TDataSet.FieldByName
 005E0BF0    push       eax
 005E0BF1    call       Date
 005E0BF6    lea        eax,[ebp-10]
 005E0BF9    call       @VarFromTDateTime
 005E0BFE    lea        edx,[ebp-10]
 005E0C01    pop        eax
 005E0C02    mov        ecx,dword ptr [eax]
 005E0C04    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0C0A    mov        edx,5E0CAC; 'bd_harga'
 005E0C0F    mov        eax,dword ptr [ebx+0B4]; Tdm.belidetail:TZQuery
 005E0C15    call       TDataSet.FieldByName
 005E0C1A    lea        edx,[ebp-20]
 005E0C1D    mov        ecx,dword ptr [eax]
 005E0C1F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0C22    lea        eax,[ebp-20]
 005E0C25    push       eax
 005E0C26    mov        edx,5E0CC0; 'bd_qty'
 005E0C2B    mov        eax,dword ptr [ebx+0B4]; Tdm.belidetail:TZQuery
 005E0C31    call       TDataSet.FieldByName
 005E0C36    lea        edx,[ebp-30]
 005E0C39    mov        ecx,dword ptr [eax]
 005E0C3B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0C3E    lea        edx,[ebp-30]
 005E0C41    pop        eax
 005E0C42    call       @VarMul
 005E0C47    lea        eax,[ebp-20]
 005E0C4A    push       eax
 005E0C4B    mov        edx,5E0CD0; 'bd_total'
 005E0C50    mov        eax,dword ptr [ebx+0B4]; Tdm.belidetail:TZQuery
 005E0C56    call       TDataSet.FieldByName
 005E0C5B    pop        edx
 005E0C5C    mov        ecx,dword ptr [eax]
 005E0C5E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0C64    xor        eax,eax
 005E0C66    pop        edx
 005E0C67    pop        ecx
 005E0C68    pop        ecx
 005E0C69    mov        dword ptr fs:[eax],edx
 005E0C6C    push       5E0C8C
 005E0C71    lea        eax,[ebp-30]
 005E0C74    mov        edx,dword ptr ds:[401114]; Variant
 005E0C7A    mov        ecx,3
 005E0C7F    call       @FinalizeArray
 005E0C84    ret
<005E0C85    jmp        @HandleFinally
<005E0C8A    jmp        005E0C71
 005E0C8C    pop        ebx
 005E0C8D    mov        esp,ebp
 005E0C8F    pop        ebp
 005E0C90    ret
*}
end;

//005E0CDC
procedure Tdm.footnoteBeforePost;
begin
{*
 005E0CDC    push       ebp
 005E0CDD    mov        ebp,esp
 005E0CDF    xor        ecx,ecx
 005E0CE1    push       ecx
 005E0CE2    push       ecx
 005E0CE3    push       ecx
 005E0CE4    push       ecx
 005E0CE5    push       ecx
 005E0CE6    push       ebx
 005E0CE7    mov        ebx,eax
 005E0CE9    xor        eax,eax
 005E0CEB    push       ebp
 005E0CEC    push       5E0D55
 005E0CF1    push       dword ptr fs:[eax]
 005E0CF4    mov        dword ptr fs:[eax],esp
 005E0CF7    mov        edx,5E0D6C; 'sp_id'
 005E0CFC    mov        eax,dword ptr [ebx+0A4]; Tdm.supplier:TZQuery
 005E0D02    call       TDataSet.FieldByName
 005E0D07    lea        edx,[ebp-14]
 005E0D0A    mov        ecx,dword ptr [eax]
 005E0D0C    call       dword ptr [ecx+60]; TField.GetAsString
 005E0D0F    mov        edx,dword ptr [ebp-14]
 005E0D12    lea        eax,[ebp-10]
 005E0D15    call       @VarFromLStr
 005E0D1A    lea        eax,[ebp-10]
 005E0D1D    push       eax
 005E0D1E    mov        edx,5E0D7C; 'fn_supplier_id'
 005E0D23    mov        eax,dword ptr [ebx+0F0]; Tdm.footnote:TZQuery
 005E0D29    call       TDataSet.FieldByName
 005E0D2E    pop        edx
 005E0D2F    mov        ecx,dword ptr [eax]
 005E0D31    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0D37    xor        eax,eax
 005E0D39    pop        edx
 005E0D3A    pop        ecx
 005E0D3B    pop        ecx
 005E0D3C    mov        dword ptr fs:[eax],edx
 005E0D3F    push       5E0D5C
 005E0D44    lea        eax,[ebp-14]
 005E0D47    call       @LStrClr
 005E0D4C    lea        eax,[ebp-10]
 005E0D4F    call       @VarClr
 005E0D54    ret
<005E0D55    jmp        @HandleFinally
<005E0D5A    jmp        005E0D44
 005E0D5C    pop        ebx
 005E0D5D    mov        esp,ebp
 005E0D5F    pop        ebp
 005E0D60    ret
*}
end;

//005E0D8C
procedure Tdm.jualdetailNewRecord;
begin
{*
 005E0D8C    push       ebp
 005E0D8D    mov        ebp,esp
 005E0D8F    mov        ecx,6
 005E0D94    push       0
 005E0D96    push       0
 005E0D98    dec        ecx
<005E0D99    jne        005E0D94
 005E0D9B    push       ebx
 005E0D9C    mov        ebx,eax
 005E0D9E    xor        eax,eax
 005E0DA0    push       ebp
 005E0DA1    push       5E0E48
 005E0DA6    push       dword ptr fs:[eax]
 005E0DA9    mov        dword ptr fs:[eax],esp
 005E0DAC    mov        edx,5E0E5C; 'jd_disc_persen'
 005E0DB1    mov        eax,dword ptr [ebx+150]; Tdm.jualdetail:TZQuery
 005E0DB7    call       TDataSet.FieldByName
 005E0DBC    push       eax
 005E0DBD    lea        eax,[ebp-10]
 005E0DC0    xor        edx,edx
 005E0DC2    mov        cl,1
 005E0DC4    call       @VarFromInt
 005E0DC9    lea        edx,[ebp-10]
 005E0DCC    pop        eax
 005E0DCD    mov        ecx,dword ptr [eax]
 005E0DCF    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0DD5    mov        edx,5E0E74; 'jd_discrp'
 005E0DDA    mov        eax,dword ptr [ebx+150]; Tdm.jualdetail:TZQuery
 005E0DE0    call       TDataSet.FieldByName
 005E0DE5    push       eax
 005E0DE6    lea        eax,[ebp-20]
 005E0DE9    xor        edx,edx
 005E0DEB    mov        cl,1
 005E0DED    call       @VarFromInt
 005E0DF2    lea        edx,[ebp-20]
 005E0DF5    pop        eax
 005E0DF6    mov        ecx,dword ptr [eax]
 005E0DF8    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0DFE    mov        edx,5E0E88; 'jd_qty'
 005E0E03    mov        eax,dword ptr [ebx+150]; Tdm.jualdetail:TZQuery
 005E0E09    call       TDataSet.FieldByName
 005E0E0E    push       eax
 005E0E0F    lea        eax,[ebp-30]
 005E0E12    xor        edx,edx
 005E0E14    mov        cl,1
 005E0E16    call       @VarFromInt
 005E0E1B    lea        edx,[ebp-30]
 005E0E1E    pop        eax
 005E0E1F    mov        ecx,dword ptr [eax]
 005E0E21    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0E27    xor        eax,eax
 005E0E29    pop        edx
 005E0E2A    pop        ecx
 005E0E2B    pop        ecx
 005E0E2C    mov        dword ptr fs:[eax],edx
 005E0E2F    push       5E0E4F
 005E0E34    lea        eax,[ebp-30]
 005E0E37    mov        edx,dword ptr ds:[401114]; Variant
 005E0E3D    mov        ecx,3
 005E0E42    call       @FinalizeArray
 005E0E47    ret
<005E0E48    jmp        @HandleFinally
<005E0E4D    jmp        005E0E34
 005E0E4F    pop        ebx
 005E0E50    mov        esp,ebp
 005E0E52    pop        ebp
 005E0E53    ret
*}
end;

//005E0E90
procedure Tdm.jualdetailBeforePost;
begin
{*
 005E0E90    push       ebp
 005E0E91    mov        ebp,esp
 005E0E93    mov        ecx,14
 005E0E98    push       0
 005E0E9A    push       0
 005E0E9C    dec        ecx
<005E0E9D    jne        005E0E98
 005E0E9F    push       ebx
 005E0EA0    xor        edx,edx
 005E0EA2    push       ebp
 005E0EA3    push       5E1046
 005E0EA8    push       dword ptr fs:[edx]
 005E0EAB    mov        dword ptr fs:[edx],esp
 005E0EAE    mov        ebx,dword ptr [eax+150]; Tdm.jualdetail:TZQuery
 005E0EB4    mov        edx,5E105C; 'jd_tgl'
 005E0EB9    mov        eax,ebx
 005E0EBB    call       TDataSet.FieldByName
 005E0EC0    push       eax
 005E0EC1    call       Date
 005E0EC6    lea        eax,[ebp-10]
 005E0EC9    call       @VarFromTDateTime
 005E0ECE    lea        edx,[ebp-10]
 005E0ED1    pop        eax
 005E0ED2    mov        ecx,dword ptr [eax]
 005E0ED4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0EDA    mov        edx,5E106C; 'jd_harga_jual'
 005E0EDF    mov        eax,ebx
 005E0EE1    call       TDataSet.FieldByName
 005E0EE6    lea        edx,[ebp-20]
 005E0EE9    mov        ecx,dword ptr [eax]
 005E0EEB    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0EEE    lea        eax,[ebp-20]
 005E0EF1    push       eax
 005E0EF2    mov        edx,5E1084; 'jd_discrp'
 005E0EF7    mov        eax,ebx
 005E0EF9    call       TDataSet.FieldByName
 005E0EFE    lea        edx,[ebp-30]
 005E0F01    mov        ecx,dword ptr [eax]
 005E0F03    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0F06    lea        edx,[ebp-30]
 005E0F09    pop        eax
 005E0F0A    call       @VarSub
 005E0F0F    lea        eax,[ebp-20]
 005E0F12    push       eax
 005E0F13    mov        edx,5E1098; 'jd_harga_pokok'
 005E0F18    mov        eax,ebx
 005E0F1A    call       TDataSet.FieldByName
 005E0F1F    lea        edx,[ebp-40]
 005E0F22    mov        ecx,dword ptr [eax]
 005E0F24    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0F27    lea        edx,[ebp-40]
 005E0F2A    pop        eax
 005E0F2B    call       @VarSub
 005E0F30    lea        eax,[ebp-20]
 005E0F33    push       eax
 005E0F34    mov        edx,5E10B0; 'jd_margin'
 005E0F39    mov        eax,ebx
 005E0F3B    call       TDataSet.FieldByName
 005E0F40    pop        edx
 005E0F41    mov        ecx,dword ptr [eax]
 005E0F43    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E0F49    mov        edx,5E106C; 'jd_harga_jual'
 005E0F4E    mov        eax,ebx
 005E0F50    call       TDataSet.FieldByName
 005E0F55    lea        edx,[ebp-50]
 005E0F58    mov        ecx,dword ptr [eax]
 005E0F5A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0F5D    lea        eax,[ebp-50]
 005E0F60    push       eax
 005E0F61    mov        edx,5E106C; 'jd_harga_jual'
 005E0F66    mov        eax,ebx
 005E0F68    call       TDataSet.FieldByName
 005E0F6D    lea        edx,[ebp-60]
 005E0F70    mov        ecx,dword ptr [eax]
 005E0F72    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0F75    lea        eax,[ebp-60]
 005E0F78    push       eax
 005E0F79    mov        edx,5E10C4; 'jd_disc_persen'
 005E0F7E    mov        eax,ebx
 005E0F80    call       TDataSet.FieldByName
 005E0F85    lea        edx,[ebp-70]
 005E0F88    mov        ecx,dword ptr [eax]
 005E0F8A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0F8D    lea        eax,[ebp-70]
 005E0F90    push       eax
 005E0F91    lea        eax,[ebp-80]
 005E0F94    mov        edx,64
 005E0F99    mov        cl,1
 005E0F9B    call       @VarFromInt
 005E0FA0    lea        edx,[ebp-80]
 005E0FA3    pop        eax
 005E0FA4    call       @VarRDiv
 005E0FA9    lea        edx,[ebp-70]
 005E0FAC    pop        eax
 005E0FAD    call       @VarMul
 005E0FB2    lea        edx,[ebp-60]
 005E0FB5    pop        eax
 005E0FB6    call       @VarSub
 005E0FBB    lea        eax,[ebp-50]
 005E0FBE    push       eax
 005E0FBF    mov        edx,5E1084; 'jd_discrp'
 005E0FC4    mov        eax,ebx
 005E0FC6    call       TDataSet.FieldByName
 005E0FCB    lea        edx,[ebp-90]
 005E0FD1    mov        ecx,dword ptr [eax]
 005E0FD3    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0FD6    lea        edx,[ebp-90]
 005E0FDC    pop        eax
 005E0FDD    call       @VarSub
 005E0FE2    lea        eax,[ebp-50]
 005E0FE5    push       eax
 005E0FE6    mov        edx,5E10DC; 'jd_qty'
 005E0FEB    mov        eax,ebx
 005E0FED    call       TDataSet.FieldByName
 005E0FF2    lea        edx,[ebp-0A0]
 005E0FF8    mov        ecx,dword ptr [eax]
 005E0FFA    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E0FFD    lea        edx,[ebp-0A0]
 005E1003    pop        eax
 005E1004    call       @VarMul
 005E1009    lea        eax,[ebp-50]
 005E100C    push       eax
 005E100D    mov        edx,5E10EC; 'jd_total'
 005E1012    mov        eax,ebx
 005E1014    call       TDataSet.FieldByName
 005E1019    pop        edx
 005E101A    mov        ecx,dword ptr [eax]
 005E101C    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1022    xor        eax,eax
 005E1024    pop        edx
 005E1025    pop        ecx
 005E1026    pop        ecx
 005E1027    mov        dword ptr fs:[eax],edx
 005E102A    push       5E104D
 005E102F    lea        eax,[ebp-0A0]
 005E1035    mov        edx,dword ptr ds:[401114]; Variant
 005E103B    mov        ecx,0A
 005E1040    call       @FinalizeArray
 005E1045    ret
<005E1046    jmp        @HandleFinally
<005E104B    jmp        005E102F
 005E104D    pop        ebx
 005E104E    mov        esp,ebp
 005E1050    pop        ebp
 005E1051    ret
*}
end;

//005E10F8
procedure Tdm.penawaran_detailBeforePost;
begin
{*
 005E10F8    push       ebp
 005E10F9    mov        ebp,esp
 005E10FB    xor        ecx,ecx
 005E10FD    push       ecx
 005E10FE    push       ecx
 005E10FF    push       ecx
 005E1100    push       ecx
 005E1101    push       ecx
 005E1102    push       ecx
 005E1103    push       ecx
 005E1104    push       ecx
 005E1105    push       ebx
 005E1106    mov        ebx,eax
 005E1108    xor        eax,eax
 005E110A    push       ebp
 005E110B    push       5E1191
 005E1110    push       dword ptr fs:[eax]
 005E1113    mov        dword ptr fs:[eax],esp
 005E1116    mov        edx,5E11A8; 'qd_harga'
 005E111B    mov        eax,dword ptr [ebx+384]; Tdm.penawaran_detail:TZQuery
 005E1121    call       TDataSet.FieldByName
 005E1126    lea        edx,[ebp-10]
 005E1129    mov        ecx,dword ptr [eax]
 005E112B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E112E    lea        eax,[ebp-10]
 005E1131    push       eax
 005E1132    mov        edx,5E11BC; 'qd_qty'
 005E1137    mov        eax,dword ptr [ebx+384]; Tdm.penawaran_detail:TZQuery
 005E113D    call       TDataSet.FieldByName
 005E1142    lea        edx,[ebp-20]
 005E1145    mov        ecx,dword ptr [eax]
 005E1147    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E114A    lea        edx,[ebp-20]
 005E114D    pop        eax
 005E114E    call       @VarMul
 005E1153    lea        eax,[ebp-10]
 005E1156    push       eax
 005E1157    mov        edx,5E11CC; 'qd_total'
 005E115C    mov        eax,dword ptr [ebx+384]; Tdm.penawaran_detail:TZQuery
 005E1162    call       TDataSet.FieldByName
 005E1167    pop        edx
 005E1168    mov        ecx,dword ptr [eax]
 005E116A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1170    xor        eax,eax
 005E1172    pop        edx
 005E1173    pop        ecx
 005E1174    pop        ecx
 005E1175    mov        dword ptr fs:[eax],edx
 005E1178    push       5E1198
 005E117D    lea        eax,[ebp-20]
 005E1180    mov        edx,dword ptr ds:[401114]; Variant
 005E1186    mov        ecx,2
 005E118B    call       @FinalizeArray
 005E1190    ret
<005E1191    jmp        @HandleFinally
<005E1196    jmp        005E117D
 005E1198    pop        ebx
 005E1199    mov        esp,ebp
 005E119B    pop        ebp
 005E119C    ret
*}
end;

//005E11D8
procedure Tdm.jobdesBeforeOpen;
begin
{*
 005E11D8    mov        eax,[0061BD54]; ^gvar_0061F960:Tprogressfrm
 005E11DD    mov        eax,dword ptr [eax]
 005E11DF    call       TCustomForm.Show
 005E11E4    ret
*}
end;

//005E11E8
procedure Tdm.jobdesAfterOpen;
begin
{*
 005E11E8    mov        eax,[0061BD54]; ^gvar_0061F960:Tprogressfrm
 005E11ED    mov        eax,dword ptr [eax]
 005E11EF    call       TCustomForm.Close
 005E11F4    ret
*}
end;

//005E11F8
procedure Tdm.jurnal_umum_detailAfterPost;
begin
{*
 005E11F8    push       ebp
 005E11F9    mov        ebp,esp
 005E11FB    mov        ecx,36
 005E1200    push       0
 005E1202    push       0
 005E1204    dec        ecx
<005E1205    jne        005E1200
 005E1207    push       ebx
 005E1208    xor        edx,edx
 005E120A    push       ebp
 005E120B    push       5E19ED
 005E1210    push       dword ptr fs:[edx]
 005E1213    mov        dword ptr fs:[edx],esp
 005E1216    mov        ebx,dword ptr [eax+9B8]; Tdm.jurnal_umum_detail:TZQuery
 005E121C    mov        edx,5E1A04; 'jl_debet'
 005E1221    mov        eax,ebx
 005E1223    call       TDataSet.FieldByName
 005E1228    mov        edx,dword ptr [eax]
 005E122A    call       dword ptr [edx+54]; TField.GetAsFloat
 005E122D    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1233    fnstsw     al
 005E1235    sahf
>005E1236    jbe        005E126E
 005E1238    mov        edx,5E1A1C; 'jl_kredit'
 005E123D    mov        eax,ebx
 005E123F    call       TDataSet.FieldByName
 005E1244    mov        edx,dword ptr [eax]
 005E1246    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1249    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E124F    fnstsw     al
 005E1251    sahf
>005E1252    jbe        005E126E
 005E1254    push       0
 005E1256    mov        cx,word ptr ds:[5E1A28]; 0x4
 005E125D    mov        dl,1
 005E125F    mov        eax,5E1A34; 'Posting Error! Tidak boleh di dua sisi debet dan kredit'
 005E1264    call       MessageDlg
 005E1269    call       Abort
 005E126E    mov        edx,5E1A74; 'jl_akun'
 005E1273    mov        eax,ebx
 005E1275    call       TDataSet.FieldByName
 005E127A    lea        edx,[ebp-18]
 005E127D    mov        ecx,dword ptr [eax]
 005E127F    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1282    lea        edx,[ebp-18]
 005E1285    lea        eax,[ebp-8]
 005E1288    call       @VarToLStr
 005E128D    mov        eax,dword ptr [ebp-8]
 005E1290    lea        ecx,[ebp-4]
 005E1293    mov        edx,1
 005E1298    call       LeftStr
 005E129D    mov        eax,dword ptr [ebp-4]
 005E12A0    mov        edx,5E1A84; '1'
 005E12A5    call       @LStrCmp
>005E12AA    jne        005E136C
 005E12B0    mov        edx,5E1A04; 'jl_debet'
 005E12B5    mov        eax,ebx
 005E12B7    call       TDataSet.FieldByName
 005E12BC    mov        edx,dword ptr [eax]
 005E12BE    call       dword ptr [edx+54]; TField.GetAsFloat
 005E12C1    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E12C7    fnstsw     al
 005E12C9    sahf
>005E12CA    jbe        005E1300
 005E12CC    mov        eax,ebx
 005E12CE    call       TDataSet.Edit
 005E12D3    mov        edx,5E1A04; 'jl_debet'
 005E12D8    mov        eax,ebx
 005E12DA    call       TDataSet.FieldByName
 005E12DF    lea        edx,[ebp-28]
 005E12E2    mov        ecx,dword ptr [eax]
 005E12E4    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E12E7    lea        eax,[ebp-28]
 005E12EA    push       eax
 005E12EB    mov        edx,5E1A90; 'jl_amount'
 005E12F0    mov        eax,ebx
 005E12F2    call       TDataSet.FieldByName
 005E12F7    pop        edx
 005E12F8    mov        ecx,dword ptr [eax]
 005E12FA    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1300    mov        edx,5E1A1C; 'jl_kredit'
 005E1305    mov        eax,ebx
 005E1307    call       TDataSet.FieldByName
 005E130C    mov        edx,dword ptr [eax]
 005E130E    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1311    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1317    fnstsw     al
 005E1319    sahf
>005E131A    jbe        005E136C
 005E131C    mov        eax,ebx
 005E131E    call       TDataSet.Edit
 005E1323    mov        edx,5E1A1C; 'jl_kredit'
 005E1328    mov        eax,ebx
 005E132A    call       TDataSet.FieldByName
 005E132F    lea        edx,[ebp-38]
 005E1332    mov        ecx,dword ptr [eax]
 005E1334    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1337    lea        eax,[ebp-38]
 005E133A    push       eax
 005E133B    lea        eax,[ebp-48]
 005E133E    mov        edx,0FFFFFFFF
 005E1343    mov        cl,0FF
 005E1345    call       @VarFromInt
 005E134A    lea        edx,[ebp-48]
 005E134D    pop        eax
 005E134E    call       @VarMul
 005E1353    lea        eax,[ebp-38]
 005E1356    push       eax
 005E1357    mov        edx,5E1A90; 'jl_amount'
 005E135C    mov        eax,ebx
 005E135E    call       TDataSet.FieldByName
 005E1363    pop        edx
 005E1364    mov        ecx,dword ptr [eax]
 005E1366    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E136C    mov        edx,5E1A74; 'jl_akun'
 005E1371    mov        eax,ebx
 005E1373    call       TDataSet.FieldByName
 005E1378    lea        edx,[ebp-60]
 005E137B    mov        ecx,dword ptr [eax]
 005E137D    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1380    lea        edx,[ebp-60]
 005E1383    lea        eax,[ebp-50]
 005E1386    call       @VarToLStr
 005E138B    mov        eax,dword ptr [ebp-50]
 005E138E    lea        ecx,[ebp-4C]
 005E1391    mov        edx,1
 005E1396    call       LeftStr
 005E139B    mov        eax,dword ptr [ebp-4C]
 005E139E    mov        edx,5E1AA4; '2'
 005E13A3    call       @LStrCmp
>005E13A8    jne        005E1470
 005E13AE    mov        edx,5E1A04; 'jl_debet'
 005E13B3    mov        eax,ebx
 005E13B5    call       TDataSet.FieldByName
 005E13BA    mov        edx,dword ptr [eax]
 005E13BC    call       dword ptr [edx+54]; TField.GetAsFloat
 005E13BF    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E13C5    fnstsw     al
 005E13C7    sahf
>005E13C8    jbe        005E141A
 005E13CA    mov        eax,ebx
 005E13CC    call       TDataSet.Edit
 005E13D1    mov        edx,5E1A04; 'jl_debet'
 005E13D6    mov        eax,ebx
 005E13D8    call       TDataSet.FieldByName
 005E13DD    lea        edx,[ebp-70]
 005E13E0    mov        ecx,dword ptr [eax]
 005E13E2    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E13E5    lea        eax,[ebp-70]
 005E13E8    push       eax
 005E13E9    lea        eax,[ebp-80]
 005E13EC    mov        edx,0FFFFFFFF
 005E13F1    mov        cl,0FF
 005E13F3    call       @VarFromInt
 005E13F8    lea        edx,[ebp-80]
 005E13FB    pop        eax
 005E13FC    call       @VarMul
 005E1401    lea        eax,[ebp-70]
 005E1404    push       eax
 005E1405    mov        edx,5E1A90; 'jl_amount'
 005E140A    mov        eax,ebx
 005E140C    call       TDataSet.FieldByName
 005E1411    pop        edx
 005E1412    mov        ecx,dword ptr [eax]
 005E1414    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E141A    mov        edx,5E1A1C; 'jl_kredit'
 005E141F    mov        eax,ebx
 005E1421    call       TDataSet.FieldByName
 005E1426    mov        edx,dword ptr [eax]
 005E1428    call       dword ptr [edx+54]; TField.GetAsFloat
 005E142B    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1431    fnstsw     al
 005E1433    sahf
>005E1434    jbe        005E1470
 005E1436    mov        eax,ebx
 005E1438    call       TDataSet.Edit
 005E143D    mov        edx,5E1A1C; 'jl_kredit'
 005E1442    mov        eax,ebx
 005E1444    call       TDataSet.FieldByName
 005E1449    lea        edx,[ebp-90]
 005E144F    mov        ecx,dword ptr [eax]
 005E1451    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1454    lea        eax,[ebp-90]
 005E145A    push       eax
 005E145B    mov        edx,5E1A90; 'jl_amount'
 005E1460    mov        eax,ebx
 005E1462    call       TDataSet.FieldByName
 005E1467    pop        edx
 005E1468    mov        ecx,dword ptr [eax]
 005E146A    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1470    mov        edx,5E1A74; 'jl_akun'
 005E1475    mov        eax,ebx
 005E1477    call       TDataSet.FieldByName
 005E147C    lea        edx,[ebp-0A8]
 005E1482    mov        ecx,dword ptr [eax]
 005E1484    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1487    lea        edx,[ebp-0A8]
 005E148D    lea        eax,[ebp-98]
 005E1493    call       @VarToLStr
 005E1498    mov        eax,dword ptr [ebp-98]
 005E149E    lea        ecx,[ebp-94]
 005E14A4    mov        edx,1
 005E14A9    call       LeftStr
 005E14AE    mov        eax,dword ptr [ebp-94]
 005E14B4    mov        edx,5E1AB0; '3'
 005E14B9    call       @LStrCmp
>005E14BE    jne        005E1595
 005E14C4    mov        edx,5E1A04; 'jl_debet'
 005E14C9    mov        eax,ebx
 005E14CB    call       TDataSet.FieldByName
 005E14D0    mov        edx,dword ptr [eax]
 005E14D2    call       dword ptr [edx+54]; TField.GetAsFloat
 005E14D5    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E14DB    fnstsw     al
 005E14DD    sahf
>005E14DE    jbe        005E153F
 005E14E0    mov        eax,ebx
 005E14E2    call       TDataSet.Edit
 005E14E7    mov        edx,5E1A04; 'jl_debet'
 005E14EC    mov        eax,ebx
 005E14EE    call       TDataSet.FieldByName
 005E14F3    lea        edx,[ebp-0B8]
 005E14F9    mov        ecx,dword ptr [eax]
 005E14FB    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E14FE    lea        eax,[ebp-0B8]
 005E1504    push       eax
 005E1505    lea        eax,[ebp-0C8]
 005E150B    mov        edx,0FFFFFFFF
 005E1510    mov        cl,0FF
 005E1512    call       @VarFromInt
 005E1517    lea        edx,[ebp-0C8]
 005E151D    pop        eax
 005E151E    call       @VarMul
 005E1523    lea        eax,[ebp-0B8]
 005E1529    push       eax
 005E152A    mov        edx,5E1A90; 'jl_amount'
 005E152F    mov        eax,ebx
 005E1531    call       TDataSet.FieldByName
 005E1536    pop        edx
 005E1537    mov        ecx,dword ptr [eax]
 005E1539    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E153F    mov        edx,5E1A1C; 'jl_kredit'
 005E1544    mov        eax,ebx
 005E1546    call       TDataSet.FieldByName
 005E154B    mov        edx,dword ptr [eax]
 005E154D    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1550    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1556    fnstsw     al
 005E1558    sahf
>005E1559    jbe        005E1595
 005E155B    mov        eax,ebx
 005E155D    call       TDataSet.Edit
 005E1562    mov        edx,5E1A1C; 'jl_kredit'
 005E1567    mov        eax,ebx
 005E1569    call       TDataSet.FieldByName
 005E156E    lea        edx,[ebp-0D8]
 005E1574    mov        ecx,dword ptr [eax]
 005E1576    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1579    lea        eax,[ebp-0D8]
 005E157F    push       eax
 005E1580    mov        edx,5E1A90; 'jl_amount'
 005E1585    mov        eax,ebx
 005E1587    call       TDataSet.FieldByName
 005E158C    pop        edx
 005E158D    mov        ecx,dword ptr [eax]
 005E158F    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1595    mov        edx,5E1A74; 'jl_akun'
 005E159A    mov        eax,ebx
 005E159C    call       TDataSet.FieldByName
 005E15A1    lea        edx,[ebp-0F0]
 005E15A7    mov        ecx,dword ptr [eax]
 005E15A9    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E15AC    lea        edx,[ebp-0F0]
 005E15B2    lea        eax,[ebp-0E0]
 005E15B8    call       @VarToLStr
 005E15BD    mov        eax,dword ptr [ebp-0E0]
 005E15C3    lea        ecx,[ebp-0DC]
 005E15C9    mov        edx,1
 005E15CE    call       LeftStr
 005E15D3    mov        eax,dword ptr [ebp-0DC]
 005E15D9    mov        edx,5E1ABC; '4'
 005E15DE    call       @LStrCmp
>005E15E3    jne        005E16BA
 005E15E9    mov        edx,5E1A04; 'jl_debet'
 005E15EE    mov        eax,ebx
 005E15F0    call       TDataSet.FieldByName
 005E15F5    mov        edx,dword ptr [eax]
 005E15F7    call       dword ptr [edx+54]; TField.GetAsFloat
 005E15FA    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1600    fnstsw     al
 005E1602    sahf
>005E1603    jbe        005E1664
 005E1605    mov        eax,ebx
 005E1607    call       TDataSet.Edit
 005E160C    mov        edx,5E1A04; 'jl_debet'
 005E1611    mov        eax,ebx
 005E1613    call       TDataSet.FieldByName
 005E1618    lea        edx,[ebp-100]
 005E161E    mov        ecx,dword ptr [eax]
 005E1620    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1623    lea        eax,[ebp-100]
 005E1629    push       eax
 005E162A    lea        eax,[ebp-110]
 005E1630    mov        edx,0FFFFFFFF
 005E1635    mov        cl,0FF
 005E1637    call       @VarFromInt
 005E163C    lea        edx,[ebp-110]
 005E1642    pop        eax
 005E1643    call       @VarMul
 005E1648    lea        eax,[ebp-100]
 005E164E    push       eax
 005E164F    mov        edx,5E1A90; 'jl_amount'
 005E1654    mov        eax,ebx
 005E1656    call       TDataSet.FieldByName
 005E165B    pop        edx
 005E165C    mov        ecx,dword ptr [eax]
 005E165E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1664    mov        edx,5E1A1C; 'jl_kredit'
 005E1669    mov        eax,ebx
 005E166B    call       TDataSet.FieldByName
 005E1670    mov        edx,dword ptr [eax]
 005E1672    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1675    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E167B    fnstsw     al
 005E167D    sahf
>005E167E    jbe        005E16BA
 005E1680    mov        eax,ebx
 005E1682    call       TDataSet.Edit
 005E1687    mov        edx,5E1A1C; 'jl_kredit'
 005E168C    mov        eax,ebx
 005E168E    call       TDataSet.FieldByName
 005E1693    lea        edx,[ebp-120]
 005E1699    mov        ecx,dword ptr [eax]
 005E169B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E169E    lea        eax,[ebp-120]
 005E16A4    push       eax
 005E16A5    mov        edx,5E1A90; 'jl_amount'
 005E16AA    mov        eax,ebx
 005E16AC    call       TDataSet.FieldByName
 005E16B1    pop        edx
 005E16B2    mov        ecx,dword ptr [eax]
 005E16B4    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E16BA    mov        edx,5E1A74; 'jl_akun'
 005E16BF    mov        eax,ebx
 005E16C1    call       TDataSet.FieldByName
 005E16C6    lea        edx,[ebp-138]
 005E16CC    mov        ecx,dword ptr [eax]
 005E16CE    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E16D1    lea        edx,[ebp-138]
 005E16D7    lea        eax,[ebp-128]
 005E16DD    call       @VarToLStr
 005E16E2    mov        eax,dword ptr [ebp-128]
 005E16E8    lea        ecx,[ebp-124]
 005E16EE    mov        edx,1
 005E16F3    call       LeftStr
 005E16F8    mov        eax,dword ptr [ebp-124]
 005E16FE    mov        edx,5E1AC8; '5'
 005E1703    call       @LStrCmp
>005E1708    jne        005E17DF
 005E170E    mov        edx,5E1A04; 'jl_debet'
 005E1713    mov        eax,ebx
 005E1715    call       TDataSet.FieldByName
 005E171A    mov        edx,dword ptr [eax]
 005E171C    call       dword ptr [edx+54]; TField.GetAsFloat
 005E171F    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E1725    fnstsw     al
 005E1727    sahf
>005E1728    jbe        005E1764
 005E172A    mov        eax,ebx
 005E172C    call       TDataSet.Edit
 005E1731    mov        edx,5E1A04; 'jl_debet'
 005E1736    mov        eax,ebx
 005E1738    call       TDataSet.FieldByName
 005E173D    lea        edx,[ebp-148]
 005E1743    mov        ecx,dword ptr [eax]
 005E1745    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E1748    lea        eax,[ebp-148]
 005E174E    push       eax
 005E174F    mov        edx,5E1A90; 'jl_amount'
 005E1754    mov        eax,ebx
 005E1756    call       TDataSet.FieldByName
 005E175B    pop        edx
 005E175C    mov        ecx,dword ptr [eax]
 005E175E    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1764    mov        edx,5E1A1C; 'jl_kredit'
 005E1769    mov        eax,ebx
 005E176B    call       TDataSet.FieldByName
 005E1770    mov        edx,dword ptr [eax]
 005E1772    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1775    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E177B    fnstsw     al
 005E177D    sahf
>005E177E    jbe        005E17DF
 005E1780    mov        eax,ebx
 005E1782    call       TDataSet.Edit
 005E1787    mov        edx,5E1A1C; 'jl_kredit'
 005E178C    mov        eax,ebx
 005E178E    call       TDataSet.FieldByName
 005E1793    lea        edx,[ebp-158]
 005E1799    mov        ecx,dword ptr [eax]
 005E179B    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E179E    lea        eax,[ebp-158]
 005E17A4    push       eax
 005E17A5    lea        eax,[ebp-168]
 005E17AB    mov        edx,0FFFFFFFF
 005E17B0    mov        cl,0FF
 005E17B2    call       @VarFromInt
 005E17B7    lea        edx,[ebp-168]
 005E17BD    pop        eax
 005E17BE    call       @VarMul
 005E17C3    lea        eax,[ebp-158]
 005E17C9    push       eax
 005E17CA    mov        edx,5E1A90; 'jl_amount'
 005E17CF    mov        eax,ebx
 005E17D1    call       TDataSet.FieldByName
 005E17D6    pop        edx
 005E17D7    mov        ecx,dword ptr [eax]
 005E17D9    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E17DF    mov        edx,5E1A74; 'jl_akun'
 005E17E4    mov        eax,ebx
 005E17E6    call       TDataSet.FieldByName
 005E17EB    lea        edx,[ebp-180]
 005E17F1    mov        ecx,dword ptr [eax]
 005E17F3    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E17F6    lea        edx,[ebp-180]
 005E17FC    lea        eax,[ebp-170]
 005E1802    call       @VarToLStr
 005E1807    mov        eax,dword ptr [ebp-170]
 005E180D    lea        ecx,[ebp-16C]
 005E1813    mov        edx,1
 005E1818    call       LeftStr
 005E181D    mov        eax,dword ptr [ebp-16C]
 005E1823    mov        edx,5E1AD4; '6'
 005E1828    call       @LStrCmp
>005E182D    jne        005E1904
 005E1833    mov        edx,5E1A04; 'jl_debet'
 005E1838    mov        eax,ebx
 005E183A    call       TDataSet.FieldByName
 005E183F    mov        edx,dword ptr [eax]
 005E1841    call       dword ptr [edx+54]; TField.GetAsFloat
 005E1844    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E184A    fnstsw     al
 005E184C    sahf
>005E184D    jbe        005E1889
 005E184F    mov        eax,ebx
 005E1851    call       TDataSet.Edit
 005E1856    mov        edx,5E1A04; 'jl_debet'
 005E185B    mov        eax,ebx
 005E185D    call       TDataSet.FieldByName
 005E1862    lea        edx,[ebp-190]
 005E1868    mov        ecx,dword ptr [eax]
 005E186A    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E186D    lea        eax,[ebp-190]
 005E1873    push       eax
 005E1874    mov        edx,5E1A90; 'jl_amount'
 005E1879    mov        eax,ebx
 005E187B    call       TDataSet.FieldByName
 005E1880    pop        edx
 005E1881    mov        ecx,dword ptr [eax]
 005E1883    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1889    mov        edx,5E1A1C; 'jl_kredit'
 005E188E    mov        eax,ebx
 005E1890    call       TDataSet.FieldByName
 005E1895    mov        edx,dword ptr [eax]
 005E1897    call       dword ptr [edx+54]; TField.GetAsFloat
 005E189A    fcomp      dword ptr ds:[5E1A10]; 0:Single
 005E18A0    fnstsw     al
 005E18A2    sahf
>005E18A3    jbe        005E1904
 005E18A5    mov        eax,ebx
 005E18A7    call       TDataSet.Edit
 005E18AC    mov        edx,5E1A1C; 'jl_kredit'
 005E18B1    mov        eax,ebx
 005E18B3    call       TDataSet.FieldByName
 005E18B8    lea        edx,[ebp-1A0]
 005E18BE    mov        ecx,dword ptr [eax]
 005E18C0    call       dword ptr [ecx+64]; TField.GetAsVariant
 005E18C3    lea        eax,[ebp-1A0]
 005E18C9    push       eax
 005E18CA    lea        eax,[ebp-1B0]
 005E18D0    mov        edx,0FFFFFFFF
 005E18D5    mov        cl,0FF
 005E18D7    call       @VarFromInt
 005E18DC    lea        edx,[ebp-1B0]
 005E18E2    pop        eax
 005E18E3    call       @VarMul
 005E18E8    lea        eax,[ebp-1A0]
 005E18EE    push       eax
 005E18EF    mov        edx,5E1A90; 'jl_amount'
 005E18F4    mov        eax,ebx
 005E18F6    call       TDataSet.FieldByName
 005E18FB    pop        edx
 005E18FC    mov        ecx,dword ptr [eax]
 005E18FE    call       dword ptr [ecx+0B4]; TField.SetAsVariant
 005E1904    xor        eax,eax
 005E1906    pop        edx
 005E1907    pop        ecx
 005E1908    pop        ecx
 005E1909    mov        dword ptr fs:[eax],edx
 005E190C    push       5E19F7
 005E1911    lea        eax,[ebp-1B0]
 005E1917    mov        edx,dword ptr ds:[401114]; Variant
 005E191D    mov        ecx,4
 005E1922    call       @FinalizeArray
 005E1927    lea        eax,[ebp-170]
 005E192D    mov        edx,2
 005E1932    call       @LStrArrayClr
 005E1937    lea        eax,[ebp-168]
 005E193D    mov        edx,dword ptr ds:[401114]; Variant
 005E1943    mov        ecx,4
 005E1948    call       @FinalizeArray
 005E194D    lea        eax,[ebp-128]
 005E1953    mov        edx,2
 005E1958    call       @LStrArrayClr
 005E195D    lea        eax,[ebp-120]
 005E1963    mov        edx,dword ptr ds:[401114]; Variant
 005E1969    mov        ecx,4
 005E196E    call       @FinalizeArray
 005E1973    lea        eax,[ebp-0E0]
 005E1979    mov        edx,2
 005E197E    call       @LStrArrayClr
 005E1983    lea        eax,[ebp-0D8]
 005E1989    mov        edx,dword ptr ds:[401114]; Variant
 005E198F    mov        ecx,4
 005E1994    call       @FinalizeArray
 005E1999    lea        eax,[ebp-98]
 005E199F    mov        edx,2
 005E19A4    call       @LStrArrayClr
 005E19A9    lea        eax,[ebp-90]
 005E19AF    mov        edx,dword ptr ds:[401114]; Variant
 005E19B5    mov        ecx,4
 005E19BA    call       @FinalizeArray
 005E19BF    lea        eax,[ebp-50]
 005E19C2    mov        edx,2
 005E19C7    call       @LStrArrayClr
 005E19CC    lea        eax,[ebp-48]
 005E19CF    mov        edx,dword ptr ds:[401114]; Variant
 005E19D5    mov        ecx,4
 005E19DA    call       @FinalizeArray
 005E19DF    lea        eax,[ebp-8]
 005E19E2    mov        edx,2
 005E19E7    call       @LStrArrayClr
 005E19EC    ret
<005E19ED    jmp        @HandleFinally
<005E19F2    jmp        005E1911
 005E19F7    pop        ebx
 005E19F8    mov        esp,ebp
 005E19FA    pop        ebp
 005E19FB    ret
*}
end;

end.