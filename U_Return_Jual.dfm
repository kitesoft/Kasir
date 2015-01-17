object F_Return_Jual: TF_Return_Jual
  Left = 292
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Return Jual'
  ClientHeight = 420
  ClientWidth = 618
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
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 8
    Top = 11
    Width = 88
    Height = 16
    Caption = 'Kode Transaksi'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object sb_cari_barang: TsSpeedButton
    Left = 297
    Top = 8
    Width = 32
    Height = 25
    Cursor = crHandPoint
    Visible = False
    SkinData.SkinSection = 'SPEEDBUTTON'
    ImageIndex = 0
    Images = F_Transaksi.gambar
  end
  object sLabel2: TsLabel
    Left = 336
    Top = 8
    Width = 273
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Kode Transaksi'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object l_return: TsLabel
    Left = 8
    Top = 384
    Width = 109
    Height = 21
    Caption = 'Kode Return'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Rockwell'
    Font.Style = []
  end
  object Ed_kd_transaksi: TsEdit
    Left = 104
    Top = 8
    Width = 185
    Height = 24
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Ed_kd_transaksiChange
    OnKeyDown = Ed_kd_transaksiKeyDown
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 601
    Height = 137
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Rockwell'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kd_barang'
        Title.Caption = 'PID'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_barang'
        Title.Caption = 'Nama Barang'
        Width = 282
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Qty'
        Title.Alignment = taCenter
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discountRp'
        Title.Alignment = taRightJustify
        Title.Caption = 'Discount'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_netto'
        Title.Alignment = taRightJustify
        Title.Caption = 'Netto'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_harga'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 67
        Visible = True
      end>
  end
  object sGroupBox1: TsGroupBox
    Left = 8
    Top = 184
    Width = 601
    Height = 193
    Caption = '| Daftar Return |'
    TabOrder = 1
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel3: TsLabel
      Left = 8
      Top = 40
      Width = 145
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'PID'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel4: TsLabel
      Left = 160
      Top = 40
      Width = 81
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Qty'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel5: TsLabel
      Left = 248
      Top = 40
      Width = 345
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nama Barang'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object Ed_Kd_Barang: TsEdit
      Left = 8
      Top = 16
      Width = 145
      Height = 24
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = Ed_Kd_BarangKeyDown
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
    object Ed_Nama: TsEdit
      Left = 248
      Top = 16
      Width = 345
      Height = 24
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
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
    object Ed_Qty: TsEdit
      Left = 160
      Top = 16
      Width = 81
      Height = 24
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = Ed_QtyKeyDown
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
    object sg: TStringGrid
      Left = 8
      Top = 56
      Width = 585
      Height = 129
      ColCount = 9
      DefaultRowHeight = 30
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
      ColWidths = (
        64
        112
        64
        64
        64
        64
        64
        64
        64)
    end
  end
  object B_Simpan: TsButton
    Left = 408
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = B_SimpanClick
    SkinData.SkinSection = 'BUTTON'
  end
  object B_baru: TsButton
    Left = 528
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 3
    OnClick = B_baruClick
    SkinData.SkinSection = 'BUTTON'
  end
  object DataSource1: TDataSource
    DataSet = dm.Q_show
    Left = 32
    Top = 40
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 80
    Top = 16
  end
end
