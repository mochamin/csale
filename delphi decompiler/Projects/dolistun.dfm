object dolistfrm: Tdolistfrm
  Left = 359
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 442
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 135
      Height = 18
      Caption = 'List Delivery Order'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 833
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 833
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 833
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 7
      Top = 10
      Width = 259
      Height = 16
      Caption = 'Cari No Delivery/No Transaksi/ Customer:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cari: TEdit
      Left = 280
      Top = 8
      Width = 521
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'cari'
      OnChange = cariChange
    end
  end
  object griddo: TDBGrid
    Left = 0
    Top = 86
    Width = 833
    Height = 356
    Align = alClient
    Ctl3D = False
    DataSource = ds.deliveryview
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    PopupMenu = popdo
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'do_kode'
        Title.Caption = '#Delivery Order'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'do_invoice'
        Title.Caption = 'No Transaksi'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'do_tgl'
        Title.Caption = 'Tgl Kirim'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cu_nama'
        Title.Caption = 'Customer'
        Width = 300
        Visible = True
      end>
  end
  object popdo: TPopupMenu
    Left = 176
    Top = 224
    object CetakDeliveryOrder1: TMenuItem
      Caption = 'Cetak Delivery Order'
      OnClick = CetakDeliveryOrder1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object HapusDeliveryOrder1: TMenuItem
      Caption = 'Hapus Transaksi ini'
      OnClick = HapusDeliveryOrder1Click
    end
  end
  object rpDeliver: TRvProject
    Engine = rsdeliver
    Left = 616
    Top = 149
  end
  object rsdeliver: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100
    SystemPrinter.ScaleX = 100
    SystemPrinter.ScaleY = 100
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1
    Left = 616
    Top = 181
  end
  object rdcustdeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.customer
    Left = 656
    Top = 181
  end
  object rdcustpicdeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.custpic
    Left = 688
    Top = 181
  end
  object rddeliverydetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.deliverydetail
    Left = 688
    Top = 149
  end
  object rddeliver: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.delivery
    Left = 656
    Top = 149
  end
end
