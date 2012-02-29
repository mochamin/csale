object glfrm: Tglfrm
  Left = 373
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 295
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 199
      Height = 18
      Caption = 'General Ledger/Buku Besar'
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
    Top = 41
    Width = 355
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 355
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
    Top = 53
    Width = 355
    Height = 201
    Align = alClient
    TabOrder = 3
    object cbbulan: TComboBox
      Left = 40
      Top = 48
      Width = 177
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'cbbulan'
      Items.Strings = (
        'Januari'
        'Februari'
        'Maret'
        'April'
        'Mei'
        'Juni'
        'Juli'
        'Agustus'
        'September'
        'Oktober'
        'Nopember'
        'Desember')
    end
    object cbthn: TComboBox
      Left = 216
      Top = 48
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 254
    Width = 355
    Height = 41
    Align = alBottom
    TabOrder = 4
    object SpeedButton2: TSpeedButton
      Left = 260
      Top = 1
      Width = 89
      Height = 38
      Cursor = crHandPoint
      Caption = '&Ok'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton2Click
    end
  end
  object rpgl: TRvProject
    Engine = rsgl
    Left = 40
    Top = 157
  end
  object rsgl: TRvSystem
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
    Left = 80
    Top = 157
  end
  object glkas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glkas
    Left = 128
    Top = 157
  end
  object glpiutang: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glpiutang
    Left = 160
    Top = 157
  end
  object glpersediaan: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glpersediaan
    Left = 200
    Top = 157
  end
  object glhutangusaha: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glhutangusaha
    Left = 248
    Top = 157
  end
  object glhutangpp: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glhutangpp
    Left = 296
    Top = 157
  end
  object gljualproduk: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.gljualproduk
    Left = 288
    Top = 205
  end
  object glbiaya: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.glbiaya
    Left = 248
    Top = 205
  end
  object glpro: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.gl
    Left = 128
    Top = 213
  end
  object glchart: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.chartofaccount
    Left = 160
    Top = 213
  end
end
