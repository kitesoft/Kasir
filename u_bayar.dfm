object F_Bayar: TF_Bayar
  Left = 19
  Top = 123
  BorderStyle = bsDialog
  Caption = 'Pembayaran Kartu Debit'
  ClientHeight = 293
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
  DesignSize = (
    441
    293)
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 70
    Top = 96
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
    Top = 120
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
    Top = 144
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
    Top = 168
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
    Left = 75
    Top = 192
    Width = 90
    Height = 21
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Tunai (RP)'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2171169
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sLabel6: TsLabel
    Left = 50
    Top = 216
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
    Top = 216
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
    TabOrder = 6
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
    Top = 96
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
    ItemIndex = 0
    ParentFont = False
    Sorted = True
    TabOrder = 1
    Text = 'Bank Central Asia (BCA)'
    Items.Strings = (
      'Bank Central Asia (BCA)'
      'Bank Nasional Indonesia (BNI)')
  end
  object edNomerKartu: TsEdit
    Left = 168
    Top = 120
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
    Top = 144
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
    Top = 168
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
    Top = 192
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
    TabOrder = 5
    OnChange = EditChange
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
    Top = 0
    Width = 441
    Height = 81
    Align = alTop
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
    Top = 252
    Width = 441
    Height = 41
    Align = alBottom
    TabOrder = 7
    SkinData.SkinSection = 'PANEL'
    object btnSimpan: TsButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Simpan'
      ModalResult = 1
      TabOrder = 0
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
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
