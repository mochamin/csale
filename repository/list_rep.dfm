object list_rep_frm: Tlist_rep_frm
  Left = 369
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'mERP 1.0'
  ClientHeight = 442
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 54
      Height = 18
      Caption = '[mTitle]'
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
    Width = 526
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    Color = 33023
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 49
    Width = 526
    Height = 4
    Align = alTop
    BevelOuter = bvNone
    Color = 805596
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object caripn: TPanel
    Left = 0
    Top = 53
    Width = 526
    Height = 52
    Align = alTop
    Color = 14869218
    TabOrder = 3
    Visible = False
    object SpeedButton7: TSpeedButton
      Left = 501
      Top = 2
      Width = 23
      Height = 22
      Caption = 'X'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton7Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 402
    Width = 526
    Height = 40
    Align = alBottom
    TabOrder = 4
    object SpeedButton3: TSpeedButton
      Left = 348
      Top = -1
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Edit'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
    object SpeedButton4: TSpeedButton
      Left = 437
      Top = -1
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Tambah'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
    object SpeedButton5: TSpeedButton
      Left = 263
      Top = -1
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Hapus'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 174
      Top = -1
      Width = 89
      Height = 40
      Cursor = crHandPoint
      Caption = '&Cari'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Transparent = False
      OnClick = SpeedButton6Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 526
    Height = 297
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
