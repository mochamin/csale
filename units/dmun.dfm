object dm: Tdm
  OldCreateOrder = False
  Left = 425
  Top = 48
  Height = 649
  Width = 850
  object conerp: TZConnection
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'merp'
    User = 'mocha'
    Password = 'yaallah'
    Connected = True
    Left = 8
    Top = 8
  end
  object user: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM user ORDER BY us_id ASC')
    Params = <>
    Left = 72
    Top = 8
    object userus_firstname: TStringField
      DisplayLabel = 'Nama Depan'
      FieldName = 'us_firstname'
      Size = 255
    end
    object userus_lastname: TStringField
      DisplayLabel = 'Nama Belakang'
      FieldName = 'us_lastname'
      Size = 255
    end
    object userus_username: TStringField
      DisplayLabel = 'Username'
      FieldName = 'us_username'
      Size = 255
    end
    object userus_password: TStringField
      FieldName = 'us_password'
      Size = 255
    end
    object userus_group: TStringField
      FieldName = 'us_group'
      Size = 255
    end
    object usergroup: TStringField
      FieldKind = fkLookup
      FieldName = 'Group Akses'
      LookupDataSet = group
      LookupKeyFields = 'ga_name'
      LookupResultField = 'ga_name'
      KeyFields = 'us_group'
      Size = 30
      Lookup = True
    end
  end
  object group: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM group_access ORDER BY ga_id ASC')
    Params = <>
    Left = 136
    Top = 8
  end
  object useradd: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM user ORDER BY us_id ASC')
    Params = <>
    Left = 72
    Top = 64
    object StringField1: TStringField
      DisplayLabel = 'Nama Depan'
      FieldName = 'us_firstname'
      Size = 255
    end
    object StringField2: TStringField
      DisplayLabel = 'Nama Belakang'
      FieldName = 'us_lastname'
      Size = 255
    end
    object StringField3: TStringField
      DisplayLabel = 'Username'
      FieldName = 'us_username'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'us_password'
      Size = 255
    end
    object StringField5: TStringField
      FieldName = 'us_group'
      Size = 255
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'Group Akses'
      LookupDataSet = group
      LookupKeyFields = 'ga_name'
      LookupResultField = 'ga_name'
      KeyFields = 'us_group'
      Size = 30
      Lookup = True
    end
  end
  object barang: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT * FROM barang ORDER BY br_id ASC')
    Params = <>
    Left = 136
    Top = 64
  end
  object kategori: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM kategori ORDER BY kg_nama  ASC')
    Params = <>
    Left = 192
    Top = 8
  end
  object vendor: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM vendor ORDER BY ve_id ASC')
    Params = <>
    Left = 192
    Top = 64
  end
  object supplier: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM supplier ORDER BY sp_id ASC')
    Params = <>
    Left = 72
    Top = 120
    object suppliersp_id: TIntegerField
      FieldName = 'sp_id'
    end
    object suppliersp_name: TStringField
      FieldName = 'sp_name'
      Size = 255
    end
    object suppliersp_address: TStringField
      FieldName = 'sp_address'
      Size = 255
    end
    object suppliersp_kota: TStringField
      FieldName = 'sp_kota'
      Size = 255
    end
    object suppliersp_telp: TStringField
      FieldName = 'sp_telp'
      Size = 255
    end
    object suppliersp_refer: TStringField
      FieldName = 'sp_refer'
      ReadOnly = True
      Size = 255
    end
  end
  object customer: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT * FROM customer  ORDER BY cu_id desc ')
    Params = <>
    Left = 136
    Top = 120
  end
  object beli: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM beli ORDER BY be_id DESC LIMIT 1')
    Params = <>
    Left = 192
    Top = 128
    object belibe_kode: TStringField
      FieldName = 'be_kode'
      Size = 18
    end
    object belibe_tgl: TDateField
      FieldName = 'be_tgl'
    end
    object belibe_due: TDateField
      FieldName = 'be_due'
      EditMask = '!99/99/0000;1;_'
    end
    object belibe_supplier_id: TIntegerField
      FieldName = 'be_supplier_id'
    end
    object belibe_pic: TIntegerField
      FieldName = 'be_pic'
    end
    object belibe_post: TSmallintField
      FieldName = 'be_post'
    end
    object belibe_bayar: TStringField
      FieldName = 'be_bayar'
      Size = 10
    end
    object belibe_islangsung: TSmallintField
      FieldName = 'be_islangsung'
    end
    object belibe_project_id: TIntegerField
      FieldName = 'be_project_id'
    end
  end
  object supplierpic: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM supplier_pic ORDER BY sp_id ASC')
    Params = <>
    Left = 256
    Top = 8
  end
  object belidetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = belidetailBeforePost
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    MasterFields = 'be_kode'
    MasterSource = ds.beli
    LinkedFields = 'bd_kode'
    Left = 248
    Top = 128
    object belidetailbd_kode: TStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object belidetailbd_nama_barang: TStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object belidetailbd_qty: TIntegerField
      FieldName = 'bd_qty'
    end
    object belidetailbd_harga: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object belidetailbd_total: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object belidetailbd_chart_account: TStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object belidetailbd_tgl: TDateField
      FieldName = 'bd_tgl'
    end
    object belidetailbd_sendto_nama: TStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object belidetailbd_kd_barang: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object belidetailbd_sendto: TIntegerField
      FieldName = 'bd_sendto'
    end
    object belidetailbd_up: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object custpic: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'SELECT * FROM custpic order by cp_id desc ')
    Params = <>
    Left = 256
    Top = 72
  end
  object custpicview: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from custpic')
    Params = <>
    MasterFields = 'cu_id'
    MasterSource = ds.customer
    LinkedFields = 'cp_custid'
    Left = 328
    Top = 8
  end
  object polistn: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from beli ORDER BY be_id DESC')
    Params = <>
    Left = 328
    Top = 64
    object polistnbe_id: TIntegerField
      FieldName = 'be_id'
      Required = True
    end
    object polistnbe_kode: TStringField
      FieldName = 'be_kode'
      Size = 18
    end
    object polistnbe_tgl: TDateField
      FieldName = 'be_tgl'
    end
    object polistnbe_due: TDateField
      FieldName = 'be_due'
    end
    object polistnSupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'Supplier'
      LookupDataSet = supplier
      LookupKeyFields = 'sp_id'
      LookupResultField = 'sp_name'
      KeyFields = 'be_supplier_id'
      Size = 150
      Lookup = True
    end
    object polistnbe_supplier_id: TIntegerField
      FieldName = 'be_supplier_id'
    end
    object polistnbe_pic: TIntegerField
      FieldName = 'be_pic'
    end
    object polistnbe_post: TSmallintField
      FieldName = 'be_post'
    end
  end
  object footnote: TZQuery
    Connection = conerp
    BeforePost = footnoteBeforePost
    SQL.Strings = (
      'select * from foot_note')
    Params = <>
    Left = 328
    Top = 128
    object footnotefn_id: TIntegerField
      FieldName = 'fn_id'
    end
    object footnotefn_supplier_id: TStringField
      FieldName = 'fn_supplier_id'
      Size = 5
    end
    object footnotefn_blok1: TStringField
      FieldName = 'fn_blok1'
      Size = 255
    end
    object footnotefn_blok2: TStringField
      FieldName = 'fn_blok2'
      Size = 255
    end
    object footnotefn_blok3: TStringField
      FieldName = 'fn_blok3'
      Size = 255
    end
  end
  object jual: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jual order by ju_id desc limit 1')
    Params = <>
    Left = 72
    Top = 176
    object jualju_kode: TStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object jualju_tgl: TDateField
      FieldName = 'ju_tgl'
    end
    object jualju_cust_id: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object jualju_cust_pic: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object jualju_due: TDateField
      FieldName = 'ju_due'
    end
    object jualju_bayar: TStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object jualju_po: TStringField
      FieldName = 'ju_po'
      Size = 255
    end
    object jualju_project: TIntegerField
      FieldName = 'ju_project'
    end
    object jualju_total: TFloatField
      FieldName = 'ju_total'
    end
    object jualju_tax: TFloatField
      FieldName = 'ju_tax'
    end
    object jualju_akun: TStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object jualju_ppn: TStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
  end
  object jualdetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = jualdetailBeforePost
    OnNewRecord = jualdetailNewRecord
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc limit 1')
    Params = <>
    MasterFields = 'ju_kode'
    MasterSource = ds.jual
    LinkedFields = 'jd_kode'
    Left = 136
    Top = 176
    object jualdetailjd_kode: TStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object jualdetailjd_tgl: TDateField
      FieldName = 'jd_tgl'
    end
    object jualdetailjd_kd_barang: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object jualdetailjd_nama_barang: TStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object jualdetailjd_qty: TIntegerField
      FieldName = 'jd_qty'
    end
    object jualdetailjd_harga_pokok: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_harga_jual: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_disc_persen: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object jualdetailjd_total: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object jualdetailjd_discrp: TFloatField
      FieldName = 'jd_discrp'
    end
    object jualdetailjd_margin: TFloatField
      FieldName = 'jd_margin'
    end
    object jualdetailjd_satuan: TStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
  end
  object gudang: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from gudang')
    Params = <>
    Left = 200
    Top = 184
  end
  object inventory: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from inventory left join barang on (in_kd_barang=br_id)')
    Params = <>
    Left = 264
    Top = 184
    object inventoryin_id: TIntegerField
      FieldName = 'in_id'
      Required = True
    end
    object inventoryin_kd_barang: TIntegerField
      FieldName = 'in_kd_barang'
    end
    object inventoryin_kd_gudang: TSmallintField
      FieldName = 'in_kd_gudang'
    end
    object inventoryin_stock: TIntegerField
      FieldName = 'in_stock'
    end
    object inventoryin_harga: TFloatField
      FieldName = 'in_harga'
      DisplayFormat = '#,###'
    end
    object inventorybarang: TStringField
      FieldKind = fkLookup
      FieldName = 'barang'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_nama'
      KeyFields = 'in_kd_barang'
      Lookup = True
    end
    object inventoryType: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_type'
      KeyFields = 'in_kd_barang'
      Size = 30
      Lookup = True
    end
    object inventorygudang: TStringField
      DisplayLabel = 'Gudang'
      FieldKind = fkLookup
      FieldName = 'gudang'
      LookupDataSet = gudang
      LookupKeyFields = 'gd_id'
      LookupResultField = 'gd_nama'
      KeyFields = 'in_kd_gudang'
      Size = 15
      Lookup = True
    end
    object inventoryunit: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_unit'
      KeyFields = 'in_kd_barang'
      Size = 15
      Lookup = True
    end
  end
  object polist: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from beli ORDER BY be_id DESC')
    Params = <>
    Left = 336
    Top = 184
    object polistbe_id: TIntegerField
      FieldName = 'be_id'
      Required = True
    end
    object polistbe_kode: TStringField
      FieldName = 'be_kode'
      Size = 18
    end
    object polistbe_supplier_id: TIntegerField
      FieldName = 'be_supplier_id'
    end
    object polistbe_tgl: TDateField
      FieldName = 'be_tgl'
    end
    object polistbe_pic: TIntegerField
      FieldName = 'be_pic'
    end
    object polistbe_due: TDateField
      FieldName = 'be_due'
    end
    object polistbe_post: TSmallintField
      FieldName = 'be_post'
    end
    object polistsupplier: TStringField
      FieldKind = fkLookup
      FieldName = 'supplier'
      LookupDataSet = supplier
      LookupKeyFields = 'sp_id'
      LookupResultField = 'sp_name'
      KeyFields = 'be_supplier_id'
      Size = 50
      Lookup = True
    end
  end
  object invoice: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jual order by ju_id desc')
    Params = <>
    Left = 70
    Top = 240
    object invoiceju_kode: TStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object invoiceju_tgl: TDateField
      FieldName = 'ju_tgl'
    end
    object invoiceju_cust_id: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object invoiceju_cust_pic: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object invoiceju_due: TDateField
      FieldName = 'ju_due'
    end
    object invoiceju_bayar: TStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object invoiceju_po: TStringField
      FieldName = 'ju_po'
      ReadOnly = True
      Size = 255
    end
    object invoiceCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'Customer'
      LookupDataSet = customer
      LookupKeyFields = 'cu_id'
      LookupResultField = 'cu_nama'
      KeyFields = 'ju_cust_id'
      Size = 30
      Lookup = True
    end
    object invoicePIC: TStringField
      FieldKind = fkLookup
      FieldName = 'PIC'
      LookupDataSet = custpic
      LookupKeyFields = 'cp_id'
      LookupResultField = 'cp_nama'
      KeyFields = 'ju_cust_pic'
      Size = 30
      Lookup = True
    end
    object invoiceju_lunas: TSmallintField
      FieldName = 'ju_lunas'
    end
    object invoiceju_project: TIntegerField
      FieldName = 'ju_project'
    end
    object invoiceju_total: TFloatField
      FieldName = 'ju_total'
      DisplayFormat = '#,###'
    end
    object invoiceju_tax: TFloatField
      FieldName = 'ju_tax'
      DisplayFormat = '#,###'
    end
    object invoiceju_akun: TStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object invoiceju_invoice_sent: TSmallintField
      FieldName = 'ju_invoice_sent'
    end
    object invoiceju_ppn: TStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
  end
  object orderdetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 136
    Top = 240
    object StringField7: TStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField8: TStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField1: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField1: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField2: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField9: TStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField10: TStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField2: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField3: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField4: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object delivery: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from do order by do_id desc ')
    Params = <>
    Left = 200
    Top = 240
    object deliverydo_tgl: TDateField
      FieldName = 'do_tgl'
    end
    object deliverydo_pic: TStringField
      FieldName = 'do_pic'
      Size = 255
    end
    object deliverydo_invoice: TStringField
      FieldName = 'do_invoice'
      Size = 255
    end
    object deliverydo_kode: TStringField
      FieldName = 'do_kode'
      Size = 255
    end
    object deliverydo_cust_id: TIntegerField
      FieldName = 'do_cust_id'
    end
    object deliverydo_cust_pic: TIntegerField
      FieldName = 'do_cust_pic'
    end
  end
  object deliverydetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from dodetail order by dd_id desc limit 1')
    Params = <>
    MasterFields = 'do_kode'
    MasterSource = ds.delivery
    LinkedFields = 'dd_kode'
    Left = 264
    Top = 240
    object deliverydetaildd_kode: TStringField
      FieldName = 'dd_kode'
      Size = 255
    end
    object deliverydetaildd_kd_barang: TStringField
      FieldName = 'dd_kd_barang'
      Size = 255
    end
    object deliverydetaildd_nama_barang: TStringField
      FieldName = 'dd_nama_barang'
      Size = 255
    end
    object deliverydetaildd_type: TStringField
      FieldName = 'dd_type'
      Size = 255
    end
    object deliverydetaildd_qty: TSmallintField
      FieldName = 'dd_qty'
    end
    object deliverydetaildd_satuan: TStringField
      FieldName = 'dd_satuan'
      Size = 255
    end
  end
  object barangdeliver: TZReadOnlyQuery
    Connection = conerp
    SQL.Strings = (
      'select * from jualdetail ')
    Params = <>
    Left = 425
    Top = 240
  end
  object project: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from project')
    Params = <>
    Left = 80
    Top = 312
    object projectpj_name: TStringField
      FieldName = 'pj_name'
      Size = 255
    end
    object projectpj_location: TStringField
      FieldName = 'pj_location'
      Size = 255
    end
    object projectpj_id: TIntegerField
      FieldName = 'pj_id'
    end
    object projectpj_custid: TIntegerField
      FieldName = 'pj_custid'
    end
    object projectcust: TStringField
      FieldKind = fkLookup
      FieldName = 'cust'
      LookupDataSet = customer
      LookupKeyFields = 'cu_id'
      LookupResultField = 'cu_nama'
      KeyFields = 'pj_custid'
      Lookup = True
    end
  end
  object akun: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from akun order by ak_no asc')
    Params = <>
    Left = 608
    Top = 488
    object akunak_no: TStringField
      FieldName = 'ak_no'
      Size = 255
    end
    object akunak_desc: TStringField
      FieldName = 'ak_desc'
      Size = 255
    end
    object akunak_subclass: TSmallintField
      FieldName = 'ak_subclass'
    end
    object akunak_class_id: TSmallintField
      FieldName = 'ak_class_id'
    end
    object akunklas: TStringField
      FieldKind = fkLookup
      FieldName = 'klas'
      LookupDataSet = akun_klas
      LookupKeyFields = 'kl_kode'
      LookupResultField = 'kl_klasifikasi'
      KeyFields = 'ak_class_id'
      Size = 50
      Lookup = True
    end
    object akunsubklas: TStringField
      FieldKind = fkLookup
      FieldName = 'subklas'
      LookupDataSet = akun_subklas
      LookupKeyFields = 'sk_kl'
      LookupResultField = 'sk_desc'
      KeyFields = 'ak_subclass'
      Size = 50
      Lookup = True
    end
  end
  object akun_klas: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from akun_klas')
    Params = <>
    Left = 152
    Top = 312
  end
  object akun_subklas: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from akun_subklas')
    Params = <>
    Left = 224
    Top = 312
  end
  object neraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from neraca')
    Params = <>
    Left = 296
    Top = 312
  end
  object deliveryrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from do')
    Params = <>
    Left = 80
    Top = 376
  end
  object barangrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 136
    Top = 376
  end
  object invoicedetail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc')
    Params = <>
    MasterFields = 'ju_kode'
    MasterSource = ds.invoice
    LinkedFields = 'jd_kode'
    Left = 208
    Top = 376
    object StringField11: TStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object DateField2: TDateField
      FieldName = 'jd_tgl'
    end
    object IntegerField5: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object StringField12: TStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object IntegerField6: TIntegerField
      FieldName = 'jd_qty'
    end
    object FloatField3: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object FloatField4: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object SmallintField1: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object FloatField5: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object FloatField6: TFloatField
      FieldName = 'jd_discrp'
    end
    object FloatField7: TFloatField
      FieldName = 'jd_margin'
    end
    object StringField13: TStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
  end
  object kasneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'110-20'#39)
    Params = <>
    Left = 616
    Top = 16
    object kasneracagl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object kasneracagl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object kasneracagl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object kasneracagl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object kasneracagl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object kasneracagl_desc: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object kasneracagl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object kasneracagl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object kasneracagl_ref: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object penawaran: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from quotation')
    Params = <>
    Left = 80
    Top = 432
    object penawaranqt_kode: TStringField
      FieldName = 'qt_kode'
      Size = 255
    end
    object penawaranqt_date: TDateField
      FieldName = 'qt_date'
    end
    object penawaranqt_up_id: TIntegerField
      FieldName = 'qt_up_id'
    end
    object penawaranqt_pic: TStringField
      FieldName = 'qt_pic'
      Size = 255
    end
    object penawaranqt_project_id: TIntegerField
      FieldName = 'qt_project_id'
    end
    object penawaranqt_cust_id: TIntegerField
      FieldName = 'qt_cust_id'
    end
  end
  object inventory_post: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from inventory')
    Params = <>
    Left = 313
    Top = 432
    object IntegerField7: TIntegerField
      FieldName = 'in_id'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'in_kd_barang'
    end
    object SmallintField2: TSmallintField
      FieldName = 'in_kd_gudang'
    end
    object IntegerField9: TIntegerField
      FieldName = 'in_stock'
    end
    object FloatField8: TFloatField
      FieldName = 'in_harga'
      DisplayFormat = '#,###'
    end
    object StringField14: TStringField
      FieldKind = fkLookup
      FieldName = 'barang'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_nama'
      KeyFields = 'in_kd_barang'
      Lookup = True
    end
    object StringField15: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_type'
      KeyFields = 'in_kd_barang'
      Size = 30
      Lookup = True
    end
    object StringField16: TStringField
      DisplayLabel = 'Gudang'
      FieldKind = fkLookup
      FieldName = 'gudang'
      LookupDataSet = gudang
      LookupKeyFields = 'gd_id'
      LookupResultField = 'gd_nama'
      KeyFields = 'in_kd_gudang'
      Size = 15
      Lookup = True
    end
    object StringField17: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_unit'
      KeyFields = 'in_kd_barang'
      Size = 15
      Lookup = True
    end
  end
  object penawaran_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    BeforePost = penawaran_detailBeforePost
    SQL.Strings = (
      'select * from quotation_detail')
    Params = <>
    MasterFields = 'qt_kode'
    MasterSource = ds.penawaran
    LinkedFields = 'qd_kode'
    Left = 241
    Top = 432
    object penawaran_detailqd_kode: TStringField
      FieldName = 'qd_kode'
      Size = 255
    end
    object penawaran_detailqd_kd_barang: TIntegerField
      FieldName = 'qd_kd_barang'
    end
    object penawaran_detailqd_nama_barang: TStringField
      FieldName = 'qd_nama_barang'
      Size = 255
    end
    object penawaran_detailqd_type: TStringField
      FieldName = 'qd_type'
      Size = 255
    end
    object penawaran_detailqd_unit: TStringField
      FieldName = 'qd_unit'
      Size = 255
    end
    object penawaran_detailqd_qty: TSmallintField
      FieldName = 'qd_qty'
    end
    object penawaran_detailqd_harga: TFloatField
      FieldName = 'qd_harga'
      DisplayFormat = '#,###'
    end
    object penawaran_detailqd_total: TFloatField
      FieldName = 'qd_total'
      DisplayFormat = '#,###'
    end
    object penawaran_detailqd_tgl: TDateField
      FieldName = 'qd_tgl'
    end
  end
  object footnote_global: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from footnote_global')
    Params = <>
    Left = 73
    Top = 496
  end
  object sedianeraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'140-10'#39)
    Params = <>
    Left = 464
    Top = 72
    object sedianeracagl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object sedianeracagl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object sedianeracagl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object sedianeracagl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object sedianeracagl_desc: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object sedianeracagl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object sedianeracagl_ref: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hutangneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select  gl_akun,sum(gl_amount) as totalhutang from general_ledge' +
        'r where gl_akun like '#39'2%'#39
      'group by gl_akun order by gl_akun asc')
    Params = <>
    Left = 544
    Top = 72
    object hutangneracagl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object hutangneracatotalhutang: TFloatField
      FieldName = 'totalhutang'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object general_ledger: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger')
    Params = <>
    Left = 280
    Top = 376
  end
  object glkas: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'110-20'#39)
    Params = <>
    Left = 616
    Top = 240
    object glkasgl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object glkasgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object glkasgl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object glkasgl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object glkasgl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object glkasgl_desc: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object glkasgl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object glkasgl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object glkasgl_ref: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object bd_inventory: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 465
    Top = 416
    object StringField24: TStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField25: TStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField10: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField15: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField16: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField26: TStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField5: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField27: TStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField11: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField12: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField13: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object glpiutang: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'130-20'#39)
    Params = <>
    Left = 464
    Top = 296
    object IntegerField14: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField28: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField17: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField6: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField15: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField29: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField18: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField19: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField30: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glpersediaan: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'140-10'#39)
    Params = <>
    Left = 544
    Top = 240
    object IntegerField16: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField31: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField20: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField7: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField17: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField32: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField21: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField22: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField33: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glhutangusaha: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-20'#39)
    Params = <>
    Left = 480
    Top = 240
    object IntegerField18: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField34: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField23: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField8: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField19: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField35: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField24: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField25: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField36: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glhutangpp: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-80'#39)
    Params = <>
    Left = 544
    Top = 296
    object IntegerField20: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField37: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField26: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField9: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField21: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField38: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField27: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField28: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField39: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object gljualproduk: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'410-10'#39)
    Params = <>
    Left = 616
    Top = 296
    object IntegerField22: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField40: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField29: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField10: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField23: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField41: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField30: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField31: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField42: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object glbiaya: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'510-10'#39)
    Params = <>
    Left = 464
    Top = 352
    object IntegerField24: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField43: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField32: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField11: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField25: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField44: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField33: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField34: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField45: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object piutangneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'130-20'#39)
    Params = <>
    Left = 464
    Top = 120
    object IntegerField26: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField18: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField9: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField3: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField27: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField19: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField10: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField11: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField20: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hartatotalneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun like '#39'1%'#39)
    Params = <>
    Left = 544
    Top = 120
    object IntegerField28: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField21: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField12: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField4: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField29: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField22: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField13: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField14: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField23: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object hutangpajakjual: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from general_ledger where gl_akun='#39'210-80'#39)
    Params = <>
    Left = 632
    Top = 128
    object IntegerField30: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField46: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField35: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField12: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField31: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField47: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField36: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField37: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField48: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object chartofaccount: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun')
    Params = <>
    Left = 464
    Top = 16
  end
  object labaneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_debet) as debet, sum(gl_kredit) as kredit' +
        ' from general_ledger where gl_akun like '#39'4%'#39' or gl_akun like '#39'5%' +
        #39' or gl_akun like '#39'6%'#39
      'or gl_akun like '#39'8%'#39' or gl_akun like '#39'9%'#39
      'group by gl_akun ORDER BY gl_akun asc')
    Params = <>
    Left = 544
    Top = 16
    object labaneracagl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object labaneracadebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
    object labaneracakredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object modalneraca: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as totalmodal from general_ledger' +
        ' where gl_akun like '#39'3%'#39
      'group by gl_akun order by gl_akun asc')
    Params = <>
    Left = 624
    Top = 72
    object modalneracagl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object modalneracatotalmodal: TFloatField
      FieldName = 'totalmodal'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object gl: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM general_ledger'
      'ORDER BY gl_akun,gl_id ASC')
    Params = <>
    Left = 472
    Top = 184
    object glgl_id: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object glgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object glgl_amount: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object glgl_tgl: TDateField
      FieldName = 'gl_tgl'
    end
    object glgl_tran_id: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object glgl_desc: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object glgl_debet: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object glgl_kredit: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object glgl_ref: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object pendapatanlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as pndptntotal from general_ledge' +
        'r where gl_akun like '#39'4%'#39
      'group by gl_akun'
      'order by gl_akun asc')
    Params = <>
    Left = 616
    Top = 360
    object pendapatanlrgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pendapatanlrpndptntotal: TFloatField
      FieldName = 'pndptntotal'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object biayalr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'5%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      ''
      '')
    Params = <>
    Left = 616
    Top = 424
    object biayalrgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object biayalrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object biayaoprlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'6%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      '')
    Params = <>
    Left = 544
    Top = 424
    object biayaoprlrgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object biayaoprlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object pendapatanlainlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select  gl_akun, sum(gl_amount) as gl_amount from general_ledger' +
        ' where gl_akun like '#39'8%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      '')
    Params = <>
    Left = 464
    Top = 456
    object pendapatanlainlrgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pendapatanlainlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object pengeluaranlainlr: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select gl_akun, sum(gl_amount) as gl_amount from general_ledger ' +
        'where gl_akun like '#39'9%'#39
      'group by gl_akun'
      'order by gl_akun asc'
      ''
      '')
    Params = <>
    Left = 536
    Top = 352
    object pengeluaranlainlrgl_akun: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object pengeluaranlainlrgl_amount: TFloatField
      FieldName = 'gl_amount'
      ReadOnly = True
      DisplayFormat = '#,###'
    end
  end
  object coalr: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from akun')
    Params = <>
    Left = 608
    Top = 192
  end
  object jobdes: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from jobdes')
    Params = <>
    Left = 929
    Top = 16
    object jobdesjd_id: TIntegerField
      FieldName = 'jd_id'
      Required = True
    end
    object jobdesjd_nama: TStringField
      FieldName = 'jd_nama'
      Size = 255
    end
    object jobdesjd_description: TStringField
      FieldName = 'jd_description'
      Size = 255
    end
  end
  object karyawan: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 856
    Top = 16
    object karyawankr_id: TIntegerField
      FieldName = 'kr_id'
    end
    object karyawankr_no_induk: TStringField
      FieldName = 'kr_no_induk'
      Size = 255
    end
    object karyawankr_firstname: TStringField
      FieldName = 'kr_firstname'
      Size = 255
    end
    object karyawankr_lastname: TStringField
      FieldName = 'kr_lastname'
      Size = 255
    end
    object karyawankr_jd_id: TIntegerField
      FieldName = 'kr_jd_id'
    end
    object karyawankr_basic: TFloatField
      FieldName = 'kr_basic'
    end
    object karyawankr_dateofbirth: TDateField
      FieldName = 'kr_dateofbirth'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawankr_maritalstatus: TStringField
      FieldName = 'kr_maritalstatus'
    end
    object karyawankr_phone: TStringField
      FieldName = 'kr_phone'
      Size = 255
    end
    object karyawankr_email: TStringField
      FieldName = 'kr_email'
      Size = 255
    end
    object karyawankr_address: TStringField
      FieldName = 'kr_address'
      Size = 255
    end
    object karyawankr_city: TStringField
      FieldName = 'kr_city'
      Size = 255
    end
    object karyawankr_placeofbirth: TStringField
      FieldName = 'kr_placeofbirth'
      Size = 255
    end
    object karyawankr_jk: TStringField
      FieldName = 'kr_jk'
      Size = 30
    end
    object karyawankr_workingstart: TDateField
      FieldName = 'kr_workingstart'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object payadjustment: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from pay_adjustment')
    Params = <>
    Left = 864
    Top = 72
    object payadjustmentpa_amount: TFloatField
      FieldName = 'pa_amount'
    end
    object payadjustmentpa_comment: TStringField
      FieldName = 'pa_comment'
      Size = 255
    end
    object payadjustmentpa_add_or_deduct: TStringField
      FieldName = 'pa_add_or_deduct'
      Size = 255
    end
    object payadjustmentpa_item: TStringField
      FieldName = 'pa_item'
      Size = 255
    end
    object payadjustmentpa_percentage: TSmallintField
      FieldName = 'pa_percentage'
    end
  end
  object karyawan_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan_detail')
    Params = <>
    MasterFields = 'kr_no_induk'
    MasterSource = ds.karyawan
    LinkedFields = 'kd_no_induk'
    Left = 848
    Top = 144
    object karyawan_detailkd_kr_id: TIntegerField
      FieldName = 'kd_kr_id'
    end
    object karyawan_detailkd_tgl_mulaikerja: TDateField
      FieldName = 'kd_tgl_mulaikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_tgl_berhentikerja: TDateField
      FieldName = 'kd_tgl_berhentikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_dp_id: TIntegerField
      FieldName = 'kd_dp_id'
    end
    object karyawan_detailkd_jb_id: TIntegerField
      FieldName = 'kd_jb_id'
    end
    object karyawan_detailkd_cash_transfer: TStringField
      FieldName = 'kd_cash_transfer'
      Size = 255
    end
    object karyawan_detailkd_ba_id: TIntegerField
      FieldName = 'kd_ba_id'
    end
    object karyawan_detailkd_norek: TStringField
      FieldName = 'kd_norek'
      Size = 255
    end
    object karyawan_detailkd_limit_pinjaman: TFloatField
      FieldName = 'kd_limit_pinjaman'
      DisplayFormat = '#,###'
    end
    object karyawan_detailkd_aktif: TSmallintField
      FieldName = 'kd_aktif'
    end
    object karyawan_detailkd_pt_id: TSmallintField
      FieldName = 'kd_pt_id'
    end
    object karyawan_detailkd_npwp: TStringField
      FieldName = 'kd_npwp'
      ReadOnly = True
      Size = 255
    end
    object karyawan_detailkd_tgl_npwp: TDateField
      FieldName = 'kd_tgl_npwp'
      EditMask = '!99/99/0000;1;_'
    end
    object karyawan_detailkd_sl_id: TIntegerField
      FieldName = 'kd_sl_id'
    end
    object karyawan_detailkd_no_induk: TStringField
      FieldName = 'kd_no_induk'
      Size = 255
    end
    object karyawan_detailkd_basic_salary: TFloatField
      FieldName = 'kd_basic_salary'
    end
    object karyawan_detailkd_sl_kode: TStringField
      FieldName = 'kd_sl_kode'
      Size = 255
    end
  end
  object ptkp: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from ptkp')
    Params = <>
    Left = 929
    Top = 136
    object ptkppt_id: TIntegerField
      FieldName = 'pt_id'
    end
    object ptkppt_kode: TStringField
      FieldName = 'pt_kode'
      Size = 255
    end
    object ptkppt_nama: TStringField
      FieldName = 'pt_nama'
      Size = 255
    end
    object ptkppt_nilaipertahun: TFloatField
      FieldName = 'pt_nilaipertahun'
      DisplayFormat = '#,###'
    end
  end
  object dept: TZQuery
    Connection = conerp
    Active = True
    SQL.Strings = (
      'select * from departement')
    Params = <>
    Left = 840
    Top = 384
  end
  object salary_level: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level')
    Params = <>
    Left = 929
    Top = 312
    object salary_levelsl_name: TStringField
      FieldName = 'sl_name'
      Size = 255
    end
    object salary_levelsl_amount: TFloatField
      FieldName = 'sl_amount'
      DisplayFormat = '#,###'
    end
    object salary_levelsl_id: TIntegerField
      FieldName = 'sl_id'
    end
    object salary_levelsl_kode: TStringField
      FieldName = 'sl_kode'
      Size = 255
    end
  end
  object bank: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from bank')
    Params = <>
    Left = 832
    Top = 208
  end
  object pph: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from pph')
    Params = <>
    Left = 889
    Top = 376
    object pphph_id: TIntegerField
      FieldName = 'ph_id'
    end
    object pphph_level: TStringField
      FieldName = 'ph_level'
      Size = 255
    end
    object pphpp_penghasilan: TFloatField
      FieldName = 'pp_penghasilan'
      DisplayFormat = '#,###'
    end
    object pphpp_tarif: TSmallintField
      FieldName = 'pp_tarif'
    end
  end
  object gl_hapus: TZQuery
    Connection = conerp
    SQL.Strings = (
      'SELECT * FROM general_ledger'
      'ORDER BY gl_akun,gl_id ASC')
    Params = <>
    Left = 528
    Top = 184
    object IntegerField32: TIntegerField
      FieldName = 'gl_id'
      Required = True
    end
    object StringField49: TStringField
      FieldName = 'gl_akun'
      Size = 255
    end
    object FloatField38: TFloatField
      FieldName = 'gl_amount'
      DisplayFormat = '#,###'
    end
    object DateField13: TDateField
      FieldName = 'gl_tgl'
    end
    object IntegerField33: TIntegerField
      FieldName = 'gl_tran_id'
    end
    object StringField50: TStringField
      FieldName = 'gl_desc'
      Size = 255
    end
    object FloatField39: TFloatField
      FieldName = 'gl_debet'
      DisplayFormat = '#,###'
    end
    object FloatField40: TFloatField
      FieldName = 'gl_kredit'
      DisplayFormat = '#,###'
    end
    object StringField51: TStringField
      FieldName = 'gl_ref'
      Size = 255
    end
  end
  object jualdetailhapus: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jualdetail order by jd_id desc limit 1')
    Params = <>
    Left = 144
    Top = 440
    object StringField52: TStringField
      FieldName = 'jd_kode'
      Size = 255
    end
    object DateField14: TDateField
      FieldName = 'jd_tgl'
    end
    object IntegerField34: TIntegerField
      FieldName = 'jd_kd_barang'
    end
    object StringField53: TStringField
      FieldName = 'jd_nama_barang'
      Size = 255
    end
    object IntegerField35: TIntegerField
      FieldName = 'jd_qty'
    end
    object FloatField41: TFloatField
      FieldName = 'jd_harga_pokok'
      DisplayFormat = '#,###'
    end
    object FloatField42: TFloatField
      FieldName = 'jd_harga_jual'
      DisplayFormat = '#,###'
    end
    object SmallintField3: TSmallintField
      FieldName = 'jd_disc_persen'
    end
    object FloatField43: TFloatField
      FieldName = 'jd_total'
      DisplayFormat = '#,###'
    end
    object FloatField44: TFloatField
      FieldName = 'jd_discrp'
    end
    object FloatField45: TFloatField
      FieldName = 'jd_margin'
    end
    object StringField54: TStringField
      FieldName = 'jd_satuan'
      Size = 255
    end
  end
  object belidetailhapus: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM belidetail')
    Params = <>
    Left = 177
    Top = 496
    object StringField55: TStringField
      FieldName = 'bd_kode'
      Size = 255
    end
    object StringField56: TStringField
      FieldName = 'bd_nama_barang'
      Size = 255
    end
    object IntegerField36: TIntegerField
      FieldName = 'bd_qty'
    end
    object FloatField46: TFloatField
      FieldName = 'bd_harga'
      DisplayFormat = '#,###'
      EditFormat = '###'
    end
    object FloatField47: TFloatField
      FieldName = 'bd_total'
      DisplayFormat = '#,###'
      EditFormat = '####'
    end
    object StringField57: TStringField
      FieldName = 'bd_chart_account'
      Size = 255
    end
    object DateField15: TDateField
      FieldName = 'bd_tgl'
    end
    object StringField58: TStringField
      FieldName = 'bd_sendto_nama'
      Size = 255
    end
    object IntegerField37: TIntegerField
      FieldName = 'bd_kd_barang'
    end
    object IntegerField38: TIntegerField
      FieldName = 'bd_sendto'
    end
    object IntegerField39: TIntegerField
      FieldName = 'bd_up'
    end
  end
  object fakturpajak: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajak')
    Params = <>
    Left = 736
    Top = 24
  end
  object fakturpajakdetail: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajakdetail')
    Params = <>
    MasterFields = 'fp_kode'
    MasterSource = ds.fakturpajak
    LinkedFields = 'fd_kode'
    Left = 736
    Top = 80
  end
  object fakturpajakrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajak')
    Params = <>
    Left = 736
    Top = 136
  end
  object fakturpajakdetailrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from fakturpajakdetail')
    Params = <>
    Left = 736
    Top = 192
    object fakturpajakdetailrptfd_id: TIntegerField
      FieldName = 'fd_id'
      Required = True
    end
    object fakturpajakdetailrptfd_kode: TStringField
      FieldName = 'fd_kode'
      Size = 255
    end
    object fakturpajakdetailrptfd_kd_barang: TIntegerField
      FieldName = 'fd_kd_barang'
    end
    object fakturpajakdetailrptfd_nama_barang: TStringField
      FieldName = 'fd_nama_barang'
      Size = 255
    end
    object fakturpajakdetailrptfd_qty: TIntegerField
      FieldName = 'fd_qty'
    end
    object fakturpajakdetailrptfd_row_total: TFloatField
      FieldName = 'fd_row_total'
      DisplayFormat = '#,###'
    end
    object fakturpajakdetailrptfd_harga: TFloatField
      FieldName = 'fd_harga'
      DisplayFormat = '#,###'
    end
  end
  object wp: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from customer')
    Params = <>
    Left = 736
    Top = 240
  end
  object barangpajakrpt: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 736
    Top = 304
  end
  object salary: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 929
    Top = 80
    object salarykr_id: TIntegerField
      FieldName = 'kr_id'
      Required = True
    end
    object salarykr_no_induk: TStringField
      FieldName = 'kr_no_induk'
      Size = 255
    end
    object salarykr_firstname: TStringField
      FieldName = 'kr_firstname'
      Size = 255
    end
    object salarykr_lastname: TStringField
      FieldName = 'kr_lastname'
      Size = 255
    end
    object salarykr_jd_id: TIntegerField
      FieldName = 'kr_jd_id'
    end
    object salarykr_basic: TFloatField
      FieldName = 'kr_basic'
    end
    object salarykr_dateofbirth: TDateField
      FieldName = 'kr_dateofbirth'
    end
    object salarykr_maritalstatus: TStringField
      FieldName = 'kr_maritalstatus'
    end
    object salarykr_phone: TStringField
      FieldName = 'kr_phone'
      Size = 255
    end
    object salarykr_email: TStringField
      FieldName = 'kr_email'
      Size = 255
    end
    object salarykr_address: TStringField
      FieldName = 'kr_address'
      Size = 255
    end
    object salarykr_city: TStringField
      FieldName = 'kr_city'
      Size = 255
    end
    object salarykr_placeofbirth: TStringField
      FieldName = 'kr_placeofbirth'
      Size = 255
    end
    object salarykr_jk: TStringField
      FieldName = 'kr_jk'
      Size = 30
    end
    object salarykr_workingstart: TDateField
      FieldName = 'kr_workingstart'
    end
    object salarykr_cek: TStringField
      FieldName = 'kr_cek'
      Size = 1
    end
  end
  object inputsalary: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from salary')
    Params = <>
    Left = 929
    Top = 192
    object inputsalarysa_id: TIntegerField
      FieldName = 'sa_id'
      Required = True
    end
    object inputsalarysa_kr_id: TIntegerField
      FieldName = 'sa_kr_id'
    end
    object inputsalarysa_gross_pay: TFloatField
      FieldName = 'sa_gross_pay'
    end
    object inputsalarysa_net_pay: TFloatField
      FieldName = 'sa_net_pay'
    end
    object inputsalarysa_date: TDateField
      FieldName = 'sa_date'
    end
    object inputsalarysa_period: TStringField
      FieldName = 'sa_period'
      Size = 255
    end
    object inputsalarysa_checked: TSmallintField
      FieldName = 'sa_checked'
    end
    object inputsalarysa_cek: TStringField
      FieldName = 'sa_cek'
      Size = 1
    end
    object inputsalarysa_potongan_pajak: TFloatField
      FieldName = 'sa_potongan_pajak'
    end
    object inputsalarysa_ptkp: TFloatField
      FieldName = 'sa_ptkp'
    end
    object inputsalarysa_pengurangan: TFloatField
      FieldName = 'sa_pengurangan'
    end
    object inputsalarysa_objek_pajak: TFloatField
      FieldName = 'sa_objek_pajak'
    end
    object inputsalarysa_no_induk: TStringField
      FieldName = 'sa_no_induk'
      Size = 255
    end
    object inputsalarysa_take_home_pay: TFloatField
      FieldName = 'sa_take_home_pay'
    end
    object inputsalarysa_pengurang_pajak: TFloatField
      FieldName = 'sa_pengurang_pajak'
    end
    object inputsalarysa_penambahan: TFloatField
      FieldName = 'sa_penambahan'
    end
    object inputsalarysa_kode_level: TStringField
      FieldName = 'sa_kode_level'
      Size = 255
    end
    object inputsalarysa_ref: TStringField
      FieldName = 'sa_ref'
      Size = 255
    end
  end
  object salary_level_tambah: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from salary_level_tambah')
    Params = <>
    Left = 824
    Top = 251
    object salary_level_tambahst_kode: TStringField
      FieldName = 'st_kode'
      Size = 255
    end
    object salary_level_tambahst_kode_item: TStringField
      FieldName = 'st_kode_item'
      Size = 255
    end
    object salary_level_tambahst_amount: TFloatField
      FieldName = 'st_amount'
    end
    object salary_level_tambahst_jenis: TStringField
      FieldName = 'st_jenis'
      Size = 255
    end
    object salary_level_tambahst_nama: TStringField
      FieldName = 'st_nama'
      Size = 255
    end
  end
  object salary_level_detail_t: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_detail'
      'where sd_jenis='#39'tambah'#39)
    Params = <>
    MasterFields = 'sl_kode'
    MasterSource = ds.salary_level
    LinkedFields = 'sd_kode'
    Left = 1048
    Top = 184
    object salary_level_detail_tsd_kode: TStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object salary_level_detail_tsd_kode_item: TStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object salary_level_detail_tsd_nama: TStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object salary_level_detail_tsd_amount: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object salary_level_detail_tsd_jenis: TStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object salary_level_detail_k: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from salary_level_detail'
      'where sd_jenis='#39'kurang'#39)
    Params = <>
    MasterFields = 'sl_kode'
    MasterSource = ds.salary_level
    LinkedFields = 'sd_kode'
    Left = 936
    Top = 424
    object StringField59: TStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object StringField60: TStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object StringField61: TStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object FloatField48: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object StringField62: TStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object penguranggaji: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from salary_level_kurang')
    Params = <>
    Left = 937
    Top = 256
    object penguranggajisk_id: TIntegerField
      FieldName = 'sk_id'
      Required = True
    end
    object penguranggajisk_kode: TStringField
      FieldName = 'sk_kode'
      Size = 255
    end
    object penguranggajisk_amount: TFloatField
      FieldName = 'sk_amount'
    end
    object penguranggajisk_nama: TStringField
      FieldName = 'sk_nama'
      Size = 255
    end
  end
  object salary_level_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary_level_detail'
      '')
    Params = <>
    Left = 1025
    Top = 376
    object StringField63: TStringField
      FieldName = 'sd_kode'
      Size = 255
    end
    object StringField64: TStringField
      FieldName = 'sd_kode_item'
      Size = 255
    end
    object StringField65: TStringField
      FieldName = 'sd_nama'
      Size = 255
    end
    object FloatField49: TFloatField
      FieldName = 'sd_amount'
      DisplayFormat = '#,###'
    end
    object StringField66: TStringField
      FieldName = 'sd_jenis'
      Size = 255
    end
  end
  object salarytambahcount: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      
        'select sum(sd_amount) as tambah from salary_level_detail where s' +
        'd_jenis='#39'tambah'#39' ')
    Params = <>
    Left = 1025
    Top = 304
  end
  object salarykurangcount: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      
        'select sum(sd_amount) as tambah from salary_level_detail where s' +
        'd_jenis='#39'kurang'#39)
    Params = <>
    Left = 1040
    Top = 248
  end
  object karyawanlookup: TZQuery
    Connection = conerp
    SQL.Strings = (
      
        'select kr_id,kr_no_induk,concat(kr_no_induk,'#39' | '#39',kr_firstname,'#39 +
        ' '#39',kr_lastname) as nama from karyawan')
    Params = <>
    Left = 1009
    Top = 16
  end
  object salaryrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from salary')
    Params = <>
    Left = 1009
    Top = 80
    object salaryrptsa_id: TIntegerField
      FieldName = 'sa_id'
      Required = True
    end
    object salaryrptsa_kr_id: TIntegerField
      FieldName = 'sa_kr_id'
    end
    object salaryrptsa_gross_pay: TFloatField
      FieldName = 'sa_gross_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_net_pay: TFloatField
      FieldName = 'sa_net_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_date: TDateField
      FieldName = 'sa_date'
    end
    object salaryrptsa_period: TStringField
      FieldName = 'sa_period'
      Size = 255
    end
    object salaryrptsa_checked: TSmallintField
      FieldName = 'sa_checked'
    end
    object salaryrptsa_cek: TStringField
      FieldName = 'sa_cek'
      Size = 1
    end
    object salaryrptsa_potongan_pajak: TFloatField
      FieldName = 'sa_potongan_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_ptkp: TFloatField
      FieldName = 'sa_ptkp'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_pengurangan: TFloatField
      FieldName = 'sa_pengurangan'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_objek_pajak: TFloatField
      FieldName = 'sa_objek_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_no_induk: TStringField
      FieldName = 'sa_no_induk'
      Size = 255
    end
    object salaryrptsa_take_home_pay: TFloatField
      FieldName = 'sa_take_home_pay'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_pengurang_pajak: TFloatField
      FieldName = 'sa_pengurang_pajak'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_penambahan: TFloatField
      FieldName = 'sa_penambahan'
      DisplayFormat = '#,###'
    end
    object salaryrptsa_kode_level: TStringField
      FieldName = 'sa_kode_level'
      Size = 255
    end
    object salaryrptsa_ref: TStringField
      FieldName = 'sa_ref'
      Size = 255
    end
  end
  object karyawandetailrpt: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from karyawan_detail')
    Params = <>
    Left = 1017
    Top = 136
    object IntegerField40: TIntegerField
      FieldName = 'kd_kr_id'
    end
    object DateField16: TDateField
      FieldName = 'kd_tgl_mulaikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object DateField17: TDateField
      FieldName = 'kd_tgl_berhentikerja'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField41: TIntegerField
      FieldName = 'kd_dp_id'
    end
    object IntegerField42: TIntegerField
      FieldName = 'kd_jb_id'
    end
    object StringField67: TStringField
      FieldName = 'kd_cash_transfer'
      Size = 255
    end
    object IntegerField43: TIntegerField
      FieldName = 'kd_ba_id'
    end
    object StringField68: TStringField
      FieldName = 'kd_norek'
      Size = 255
    end
    object FloatField50: TFloatField
      FieldName = 'kd_limit_pinjaman'
      DisplayFormat = '#,###'
    end
    object SmallintField4: TSmallintField
      FieldName = 'kd_aktif'
    end
    object SmallintField5: TSmallintField
      FieldName = 'kd_pt_id'
    end
    object StringField69: TStringField
      FieldName = 'kd_npwp'
      ReadOnly = True
      Size = 255
    end
    object DateField18: TDateField
      FieldName = 'kd_tgl_npwp'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField44: TIntegerField
      FieldName = 'kd_sl_id'
    end
    object StringField70: TStringField
      FieldName = 'kd_no_induk'
      Size = 255
    end
    object FloatField51: TFloatField
      FieldName = 'kd_basic_salary'
    end
    object StringField71: TStringField
      FieldName = 'kd_sl_kode'
      Size = 255
    end
    object karyawandetailrptjabtan: TStringField
      FieldKind = fkLookup
      FieldName = 'jabtan'
      LookupDataSet = jobdes
      LookupKeyFields = 'jd_id'
      LookupResultField = 'jd_nama'
      KeyFields = 'kd_jb_id'
      Size = 50
      Lookup = True
    end
    object karyawandetailrptDepartemen: TStringField
      FieldKind = fkLookup
      FieldName = 'Departemen'
      LookupDataSet = dept
      LookupKeyFields = 'dp_id'
      LookupResultField = 'dp_nama'
      KeyFields = 'kd_dp_id'
      Size = 30
      Lookup = True
    end
  end
  object salaryref: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select sa_ref from salary order by sa_id desc limit 1')
    Params = <>
    Left = 1040
    Top = 432
  end
  object jurnal_umum_detail: TZQuery
    Connection = conerp
    CachedUpdates = True
    AfterPost = jurnal_umum_detailAfterPost
    SQL.Strings = (
      'select * from jurnal_umum_detail')
    Params = <>
    MasterFields = 'ju_kode'
    MasterSource = ds.jurnalumum
    LinkedFields = 'jl_kode'
    Left = 536
    Top = 488
    object jurnal_umum_detailjl_id: TIntegerField
      FieldName = 'jl_id'
    end
    object jurnal_umum_detailjl_kode: TStringField
      FieldName = 'jl_kode'
      Size = 255
    end
    object jurnal_umum_detailjl_akun: TStringField
      FieldName = 'jl_akun'
      Size = 255
    end
    object jurnal_umum_detailjl_desc: TStringField
      FieldName = 'jl_desc'
      Size = 255
    end
    object jurnal_umum_detailjl_amount: TFloatField
      FieldName = 'jl_amount'
    end
    object jurnal_umum_detailjl_kredit: TFloatField
      FieldName = 'jl_kredit'
      DisplayFormat = '#,###'
    end
    object jurnal_umum_detailjl_debet: TFloatField
      FieldName = 'jl_debet'
      DisplayFormat = '#,###'
    end
  end
  object akunview: TZQuery
    Connection = conerp
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'select * from akun order by ak_no asc')
    Params = <>
    Left = 664
    Top = 488
    object StringField72: TStringField
      FieldName = 'ak_no'
      Size = 255
    end
    object StringField73: TStringField
      FieldName = 'ak_desc'
      Size = 255
    end
    object SmallintField6: TSmallintField
      FieldName = 'ak_subclass'
    end
    object SmallintField7: TSmallintField
      FieldName = 'ak_class_id'
    end
    object StringField74: TStringField
      FieldKind = fkLookup
      FieldName = 'klas'
      LookupDataSet = akun_klas
      LookupKeyFields = 'kl_kode'
      LookupResultField = 'kl_klasifikasi'
      KeyFields = 'ak_class_id'
      Size = 50
      Lookup = True
    end
    object StringField75: TStringField
      FieldKind = fkLookup
      FieldName = 'subklas'
      LookupDataSet = akun_subklas
      LookupKeyFields = 'sk_kl'
      LookupResultField = 'sk_desc'
      KeyFields = 'ak_subclass'
      Size = 50
      Lookup = True
    end
  end
  object jurnalumum: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jurnal_umum')
    Params = <>
    Left = 464
    Top = 528
    object jurnalumumju_id: TIntegerField
      FieldName = 'ju_id'
    end
    object jurnalumumju_kode: TStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object jurnalumumju_amount: TFloatField
      FieldName = 'ju_amount'
    end
    object jurnalumumju_date: TDateField
      FieldName = 'ju_date'
      EditMask = '!99/99/0000;1;_'
    end
    object jurnalumumju_pic: TStringField
      FieldName = 'ju_pic'
      Size = 255
    end
    object jurnalumumju_note: TStringField
      FieldName = 'ju_note'
      Size = 255
    end
  end
  object juref: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jurnal_umum')
    Params = <>
    Left = 536
    Top = 544
    object IntegerField45: TIntegerField
      FieldName = 'ju_id'
    end
    object StringField76: TStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object FloatField52: TFloatField
      FieldName = 'ju_amount'
    end
    object DateField19: TDateField
      FieldName = 'ju_date'
      EditMask = '!99/99/0000;1;_'
    end
    object StringField77: TStringField
      FieldName = 'ju_pic'
      Size = 255
    end
    object StringField78: TStringField
      FieldName = 'ju_note'
      Size = 255
    end
  end
  object jualref: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      'select * from jual order by ju_id desc limit 1')
    Params = <>
    Left = 328
    Top = 248
    object StringField79: TStringField
      FieldName = 'ju_kode'
      Size = 255
    end
    object DateField20: TDateField
      FieldName = 'ju_tgl'
    end
    object IntegerField46: TIntegerField
      FieldName = 'ju_cust_id'
    end
    object IntegerField47: TIntegerField
      FieldName = 'ju_cust_pic'
    end
    object DateField21: TDateField
      FieldName = 'ju_due'
    end
    object StringField80: TStringField
      FieldName = 'ju_bayar'
      Size = 10
    end
    object StringField81: TStringField
      FieldName = 'ju_po'
      Size = 255
    end
    object IntegerField48: TIntegerField
      FieldName = 'ju_project'
    end
    object FloatField53: TFloatField
      FieldName = 'ju_total'
    end
    object FloatField54: TFloatField
      FieldName = 'ju_tax'
    end
    object StringField82: TStringField
      FieldName = 'ju_akun'
      Size = 255
    end
    object StringField83: TStringField
      FieldName = 'ju_ppn'
      Size = 5
    end
  end
  object inventoryref: TZQuery
    Connection = conerp
    SQL.Strings = (
      'select * from inventory ')
    Params = <>
    Left = 264
    Top = 496
    object IntegerField49: TIntegerField
      FieldName = 'in_id'
      Required = True
    end
    object IntegerField50: TIntegerField
      FieldName = 'in_kd_barang'
    end
    object SmallintField8: TSmallintField
      FieldName = 'in_kd_gudang'
    end
    object IntegerField51: TIntegerField
      FieldName = 'in_stock'
    end
    object FloatField55: TFloatField
      FieldName = 'in_harga'
      DisplayFormat = '#,###'
    end
    object StringField84: TStringField
      FieldKind = fkLookup
      FieldName = 'barang'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_nama'
      KeyFields = 'in_kd_barang'
      Lookup = True
    end
    object StringField85: TStringField
      FieldKind = fkLookup
      FieldName = 'Type'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_type'
      KeyFields = 'in_kd_barang'
      Size = 30
      Lookup = True
    end
    object StringField86: TStringField
      DisplayLabel = 'Gudang'
      FieldKind = fkLookup
      FieldName = 'gudang'
      LookupDataSet = gudang
      LookupKeyFields = 'gd_id'
      LookupResultField = 'gd_nama'
      KeyFields = 'in_kd_gudang'
      Size = 15
      Lookup = True
    end
    object StringField87: TStringField
      FieldKind = fkLookup
      FieldName = 'unit'
      LookupDataSet = barang
      LookupKeyFields = 'br_id'
      LookupResultField = 'br_unit'
      KeyFields = 'in_kd_barang'
      Size = 15
      Lookup = True
    end
  end
  object deliveryview: TZQuery
    Connection = conerp
    CachedUpdates = True
    SQL.Strings = (
      
        'select * from do inner join customer on (do_cust_id=cu_id) order' +
        ' by do_id desc ')
    Params = <>
    Left = 344
    Top = 368
    object DateField22: TDateField
      FieldName = 'do_tgl'
    end
    object StringField88: TStringField
      FieldName = 'do_pic'
      Size = 255
    end
    object StringField89: TStringField
      FieldName = 'do_invoice'
      Size = 255
    end
    object StringField90: TStringField
      FieldName = 'do_kode'
      Size = 255
    end
    object IntegerField52: TIntegerField
      FieldName = 'do_cust_id'
    end
    object IntegerField53: TIntegerField
      FieldName = 'do_cust_pic'
    end
    object deliveryviewcu_nama: TStringField
      FieldName = 'cu_nama'
      Size = 255
    end
  end
end
