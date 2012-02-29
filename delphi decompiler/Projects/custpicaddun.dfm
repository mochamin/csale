inherited custpicaddfrm: Tcustpicaddfrm
  Left = 569
  Top = 199
  ClientHeight = 237
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 88
      Caption = 'Add/Edit PIC'
    end
  end
  inherited Panel2: TPanel
    Width = 508
    Height = 144
    Align = alClient
    object Label2: TLabel
      Left = 21
      Top = 26
      Width = 38
      Height = 16
      Caption = 'Nama:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 50
      Width = 45
      Height = 16
      Caption = 'Alamat:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 74
      Width = 42
      Height = 16
      Caption = 'No HP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 21
      Top = 98
      Width = 37
      Height = 16
      Caption = 'Email:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object namadepan: TDBEdit
      Left = 141
      Top = 24
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cp_nama'
      DataSource = ds.custpic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 141
      Top = 48
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cp_alamat'
      DataSource = ds.custpic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 141
      Top = 72
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cp_hp'
      DataSource = ds.custpic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 141
      Top = 96
      Width = 345
      Height = 22
      Ctl3D = False
      DataField = 'cp_email'
      DataSource = ds.custpic
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited Panel3: TPanel
    Top = 197
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
  end
end
