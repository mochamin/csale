object labarugifrm: Tlabarugifrm
  Left = 515
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 287
  ClientWidth = 344
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
    Width = 344
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 71
      Height = 18
      Caption = 'Laba/Rugi'
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
    Width = 344
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 344
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
    Width = 344
    Height = 193
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
    Top = 246
    Width = 344
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
  object rplr: TRvProject
    Engine = rslr
    Left = 16
    Top = 149
  end
  object pndptnlr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.pendapatanlr
    Left = 112
    Top = 149
  end
  object biayaoprlr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.biayaoprlr
    Left = 152
    Top = 149
  end
  object biayalr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.biayalr
    Left = 192
    Top = 149
  end
  object pndptnlainlr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.pendapatanlainlr
    Left = 240
    Top = 149
  end
  object pnglranlainlr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.pengeluaranlainlr
    Left = 120
    Top = 197
  end
  object rslr: TRvSystem
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
    Left = 48
    Top = 149
  end
  object coalr: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dm.coalr
    Left = 160
    Top = 197
  end
end
