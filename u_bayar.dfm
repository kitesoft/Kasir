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
  object sLabel1: TsLabel
    Left = 70
    Top = 8
    Width = 95
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Kartu Bank'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel2: TsLabel
    Left = 53
    Top = 32
    Width = 112
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Nomer Kartu'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel3: TsLabel
    Left = 33
    Top = 56
    Width = 132
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Non Tunai (Rp)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel4: TsLabel
    Left = 23
    Top = 80
    Width = 142
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Tarik Tunai (Rp)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 26
    Top = 104
    Width = 139
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Total Debit (RP)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel6: TsLabel
    Left = 74
    Top = 128
    Width = 91
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Tunai (Rp)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel7: TsLabel
    Left = 50
    Top = 152
    Width = 115
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Kembali (Rp)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
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
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object cbBank: TsComboBox
    Left = 168
    Top = 8
    Width = 265
    Height = 24
    Anchors = [akTop, akRight]
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'PANEL'
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = [fsBold]
    ItemHeight = 18
    ItemIndex = -1
    ParentFont = False
    Sorted = True
    TabOrder = 1
    OnEnter = CompEnter
  end
  object edNomerKartu: TsEdit
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
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
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
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
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
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
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
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
  object pnlAtas: TsPanel
    Left = 0
    Top = 184
    Width = 441
    Height = 81
    Align = alBottom
    Enabled = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      441
      81)
    object sLabel0: TsLabel
      Left = 71
      Top = 20
      Width = 94
      Height = 42
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      Caption = 'Debit'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -37
      Font.Name = 'Rockwell'
      Font.Style = []
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
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
  end
  object pnlBawah: TsPanel
    Left = 0
    Top = 265
    Width = 441
    Height = 41
    Align = alBottom
    TabOrder = 8
    SkinData.SkinSection = 'PANEL'
    object btnSimpan: TsButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Simpan'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnEnter = CompEnter
      SkinData.SkinSection = 'BUTTON'
    end
    object btnBatal: TsButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Batal (Esc)'
      ModalResult = 2
      TabOrder = 1
      OnEnter = CompEnter
      SkinData.SkinSection = 'BUTTON'
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
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'PANEL'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    DisplayFormat = '###,###,##0;-###,###,##0;0'
  end
end
