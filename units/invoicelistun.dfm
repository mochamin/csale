object invoicelistfrm: Tinvoicelistfrm
  Left = 393
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 499
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 100
      Height = 18
      Caption = 'List Penjualan'
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
    Width = 845
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 845
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
    Width = 845
    Height = 41
    Align = alTop
    Color = 14869218
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 766
      Top = 7
      Width = 25
      Height = 25
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        F9F9F9D8D8D8D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
        D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D8FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        9E9FA0B6B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
        B8B6B7B8B6B6B7B5B6B6B4B5B6B6B6B79B9C9CFFFFFFFFFFFF00FFFFFFAAABAC
        D2D2D3E2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
        E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3DDDDDE9D9E9EFFFFFF00E3E3E3ADAEAF
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3B2B3B4DDDDDD00D8D8D9B4B5B6
        E3E4E4E6E6E7E7E8E8E9E9EAECECEDEEEEEFE1EBEFA1E0F292DDF3B0E3F2D2E8
        F0EEEEEFECECEDE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900D8D8D9B5B6B6
        E5E5E6E7E8E8E9E9EAECECEDEEEEEF85DCF442D1F888E1FA99E6FB79DEF953D4
        F864D6F5EEEEEFECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E9ECECEDEEEEEF70D9F6A8E9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCAF1FC71D9F6EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEBEEEEEF64D6F5CAF1FCF4FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF3FCFEA6E9FB87DCF4EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBECD2E8F053D4F8FFFFFFFFFFFFF7FDFEF2FBFEF2FBFEF2FBFEF7FD
        FEFFFFFFFFFFFF40D0F8E3ECEFEBEBECE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECEDB0E3F279DEF9FFFFFF78DFFB05C4F800C3F800C3F800C3F805C4
        F878DFFBFFFFFF86E1FAA3E1F2ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECED92DDF399E6FBFBFEFE0AC5F800C3F800C3F800C3F800C3F800C3
        F80AC5F8FBFEFE98E6FB93DEF3ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9ECECEDA2E0F287E1FAFFFFFF79DFFB07C4F800C3F800C3F800C3F807C4
        F87ADFFBFFFFFF77DDF9B2E3F2ECECEDE8E9E9B7B7B8D8D8D900D8D8D9B7B7B8
        E8E9E9EBEBECE2EBEF41D1F8FFFFFFFFFFFFF9FDFEF6FCFEF6FCFEF6FCFEF9FD
        FEFFFFFFFFFFFF52D4F8D3E9F0EBEBECE8E9E9B7B7B8D8D8D900D8D8D9B6B7B8
        E7E8E8EAEAEBEEEEEF86DCF4A7E9FBF3FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF3FCFEC9F1FB65D6F5EEEEEFEAEAEBE7E8E8B6B7B8D8D8D900D8D8D9B6B6B7
        E6E7E7E8E9E9ECECEDEEEEEF71D9F6C9F1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA6E9FB72D9F6EEEEEFECECEDE8E9E9E6E7E7B6B6B7D8D8D900D8D8D9B5B6B6
        E5E5E6E7E8E8E9E9EAECECEDEEEEEF65D6F552D4F878DEF998E6FB87E1FA41D1
        F887DCF4EEEEEFECECEDE9E9EAE7E8E8E5E5E6B5B6B6D8D8D900D8D8D9B4B5B6
        E3E4E4E6E6E7E7E8E8E9E9EAECECEDEEEEEFD3E9F0B1E3F293DEF3A2E0F2E2EB
        EFEEEEEFECECEDE9E9EAE7E8E8E6E6E7E3E4E4B4B5B5D9D9D900DCDCDDB3B3B4
        E2E3E3E4E4E5E6E6E7E7E8E8E8E9E9EAEAEBEBEBECECECEDECECEDECECEDEBEB
        ECEAEAEBE8E9E9E7E8E8E6E6E7E4E4E5E2E3E3A6A6A7D2D3D300FFFFFF9D9E9E
        DDDDDEE2E3E3E3E4E4E5E5E6E6E7E7E7E8E8E8E9E9E8E9E9E8E9E9E8E9E9E8E9
        E9E7E8E8E6E7E7E5E5E6E3E4E4E2E3E3D1D2D3AAABACFFFFFF00FFFFFFFFFFFF
        9B9C9CB5B6B7B4B5B6B5B6B6B6B6B7B6B7B8B7B7B8B7B7B8B7B7B8B7B7B8B7B7
        B8B6B7B8B6B6B7B5B6B6B4B5B6B5B6B79E9F9FFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFD8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8
        D9D8D8D9D8D8D9D8D8D9D8D8D9D8D8D9FAFAFAFFFFFFFFFFFF00}
    end
    object Label2: TLabel
      Left = 5
      Top = 12
      Width = 116
      Height = 16
      Caption = 'Cari  PO/No Trans:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cari: TEdit
      Left = 128
      Top = 8
      Width = 625
      Height = 23
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cariChange
    end
  end
  object gridinv: TDBGrid
    Left = 0
    Top = 86
    Width = 845
    Height = 413
    Align = alClient
    DataSource = ds.invoice
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = popinv
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ju_kode'
        Title.Caption = 'No Transaksi'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_po'
        Title.Caption = 'No PO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PIC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_tgl'
        Title.Caption = 'Tgl Transaksi'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ju_due'
        Title.Caption = 'Jth Tempo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ju_bayar'
        Title.Caption = 'Pembayaran'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
  end
  object popinv: TPopupMenu
    OnPopup = popinvPopup
    Left = 256
    Top = 280
    object RefreshData1: TMenuItem
      Caption = 'Refresh Data'
      OnClick = RefreshData1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object cetakinv: TMenuItem
      Caption = 'Cetak Invoice'
      OnClick = cetakinvClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object FakturPajak1: TMenuItem
      Caption = 'Faktur Pajak'
      OnClick = FakturPajak1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object HapusInvoice1: TMenuItem
      Caption = 'Hapus Transaksi Ini'
      OnClick = HapusInvoice1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object InputData1: TMenuItem
      Caption = 'Insert to DO'
      OnClick = InputData1Click
    end
  end
  object rpInvoice: TRvProject
    Engine = RvSystem1
    Left = 224
    Top = 168
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 264
    Top = 168
  end
  object rdinvoice: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.invoice
    Left = 408
    Top = 168
  end
  object rdincust: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.customer
    Left = 344
    Top = 168
  end
  object rdinvoicedetail: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.invoicedetail
    Left = 440
    Top = 168
  end
  object rddeliveryrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.deliveryrpt
    Left = 408
    Top = 200
  end
  object rdbarangrpt: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.barangrpt
    Left = 448
    Top = 200
  end
  object rpPajak: TRvProject
    Engine = rspajak
    Left = 112
    Top = 360
  end
  object rdpajak: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.fakturpajakrpt
    Left = 240
    Top = 360
  end
  object rspajak: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 152
    Top = 360
  end
  object rdpajakdetail: TRvDataSetConnection
    RuntimeVisibility = rtEndUser
    DataSet = dm.fakturpajakdetailrpt
    Left = 280
    Top = 360
  end
  object rdwp: TRvDataSetConnection
    RuntimeVisibility = rtEndUser
    DataSet = dm.wp
    Left = 328
    Top = 360
  end
  object rdbarangpajak: TRvDataSetConnection
    RuntimeVisibility = rtEndUser
    DataSet = dm.barangpajakrpt
    Left = 360
    Top = 360
  end
end
