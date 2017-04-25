object F_Bayar: TF_Bayar
  Left = 19
  Top = 137
  BorderStyle = bsDialog
  Caption = 'Pembayaran Kartu Debit'
  ClientHeight = 306
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    441
    306)
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TLabel
    Left = 70
    Top = 8
    Width = 95
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Kartu Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel2: TLabel
    Left = 53
    Top = 32
    Width = 112
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Nomer Kartu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel3: TLabel
    Left = 33
    Top = 56
    Width = 132
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Non Tunai (Rp)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel4: TLabel
    Left = 23
    Top = 80
    Width = 142
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Tarik Tunai (Rp)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel5: TLabel
    Left = 26
    Top = 104
    Width = 139
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Total Debit (RP)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel6: TLabel
    Left = 74
    Top = 128
    Width = 91
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Tunai (Rp)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object sLabel7: TLabel
    Left = 50
    Top = 152
    Width = 115
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Kembali (Rp)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object edKembali: TsCurrencyEdit
    Left = 168
    Top = 152
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object cbBank: TComboBox
    Left = 168
    Top = 8
    Width = 265
    Height = 23
    Style = csDropDownList
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = [fsBold]
    ParentFont = False
    Sorted = True
    TabOrder = 1
    OnEnter = CompEnter
  end
  object edNomerKartu: TEdit
    Left = 168
    Top = 32
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnEnter = CompEnter
  end
  object edDebit: TsCurrencyEdit
    Left = 168
    Top = 56
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = EditChange
    OnEnter = CompEnter
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object edTarik: TsCurrencyEdit
    Left = 168
    Top = 80
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = EditChange
    OnEnter = CompEnter
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object edTunai: TsCurrencyEdit
    Left = 168
    Top = 128
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnChange = EditChange
    OnEnter = CompEnter
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 184
    Width = 441
    Height = 81
    Align = alBottom
    Enabled = False
    TabOrder = 0
    DesignSize = (
      441
      81)
    object sLabel0: TLabel
      Left = 71
      Top = 20
      Width = 94
      Height = 42
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      Caption = 'Debit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -37
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object edBesar: TsCurrencyEdit
      Left = 168
      Top = 6
      Width = 265
      Height = 67
      Anchors = [akRight, akBottom]
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.ParentFont = False
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 265
    Width = 441
    Height = 41
    Align = alBottom
    TabOrder = 8
    object btnSimpan: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Simpan'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnEnter = CompEnter
    end
    object btnBatal: TButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Batal (Esc)'
      ModalResult = 2
      TabOrder = 1
      OnEnter = CompEnter
    end
  end
  object edTotalDebit: TsCurrencyEdit
    Left = 168
    Top = 104
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
end
