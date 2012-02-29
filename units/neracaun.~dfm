object neracafrm: Tneracafrm
  Left = 558
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 289
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 348
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 50
      Height = 18
      Caption = 'Neraca'
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
    Width = 348
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 348
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 248
    Width = 348
    Height = 41
    Align = alBottom
    TabOrder = 3
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
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 348
    Height = 195
    Align = alClient
    TabOrder = 4
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
  object rpNeraca: TRvProject
    Engine = rsneraca
    Left = 176
    Top = 8
  end
  object rsneraca: TRvSystem
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
    OnAfterPrint = rsneracaAfterPrint
    Left = 208
    Top = 8
  end
  object rdkasneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.kasneraca
    Left = 256
    Top = 8
  end
  object pdfneraca: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 80
    Top = 157
  end
  object rdsedianeraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.sedianeraca
    Left = 288
    Top = 8
  end
  object hutangneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.hutangneraca
    Left = 312
    Top = 56
  end
  object piutangneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.piutangneraca
    Left = 272
    Top = 56
  end
  object hartaneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.hartatotalneraca
    Left = 288
    Top = 152
  end
  object hutangpajakneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.hutangpajakjual
    Left = 248
    Top = 152
  end
  object chartofaccount: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.chartofaccount
    Left = 200
    Top = 152
  end
  object labaneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.labaneraca
    Left = 200
    Top = 192
  end
  object modalneraca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.modalneraca
    Left = 248
    Top = 192
  end
end
