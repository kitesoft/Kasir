object F_Transaksi: TF_Transaksi
  Left = 168
  Top = 45
  Width = 1040
  Height = 666
  Caption = 'transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Sb: TsStatusBar
    Left = 0
    Top = 605
    Width = 1024
    Height = 22
    Panels = <
      item
        Text = 'F1: Help'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'CO'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'USER'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'NAMA USER'
        Width = 120
      end
      item
        Alignment = taCenter
        Text = 'OP'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'NAMA OP'
        Width = 120
      end
      item
        Alignment = taCenter
        Text = '  Jum'#39'at  '
        Width = 100
      end
      item
        Alignment = taCenter
        Text = '27/01/1989'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = '06:00:00'
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Width = 100
      end>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object p_pesan: TsPanel
    Left = 0
    Top = 437
    Width = 1024
    Height = 22
    Align = alBottom
    BevelOuter = bvNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'LABEL'
    DesignSize = (
      1024
      22)
    object l_pesan: TsLabel
      Left = 65
      Top = 2
      Width = 34
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      Caption = 'Pesan'
      Color = clWhite
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      UseSkinColor = False
    end
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 129
    Width = 1024
    Height = 38
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sb_cari_barang: TsSpeedButton
      Left = 193
      Top = 1
      Width = 35
      Height = 36
      Cursor = crArrow
      OnClick = sb_cari_barangClick
      Align = alLeft
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = dm.gambar
    end
    object sb_tunai: TsSpeedButton
      Left = 97
      Top = 1
      Width = 96
      Height = 36
      Cursor = crHandPoint
      Caption = '&Tunai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      OnClick = sb_tunaiClick
      Align = alLeft
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeGlobalDef]
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object sb_retail: TsSpeedButton
      Left = 1
      Top = 1
      Width = 96
      Height = 36
      Cursor = crHandPoint
      Caption = '&Retail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      OnClick = sb_retailClick
      Align = alLeft
      AnimatEvents = [aeMouseEnter, aeMouseLeave, aeMouseDown, aeMouseUp, aeGlobalDef]
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object Ed_Code: TsEdit
      Left = 228
      Top = 1
      Width = 795
      Height = 36
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Ed_CodeChange
      OnExit = Ed_CodeExit
      OnKeyDown = Ed_CodeKeyDown
      OnKeyPress = Ed_CodeKeyPress
      Align = alClient
      SkinData.SkinSection = 'PANEL'
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
  end
  object p4: TsPanel
    Left = 0
    Top = 459
    Width = 1024
    Height = 146
    Align = alBottom
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      1024
      146)
    object sLabel9: TsLabel
      Left = 272
      Top = 88
      Width = 110
      Height = 21
      Caption = 'Jatuh Tempo'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel8: TsLabel
      Left = 272
      Top = 64
      Width = 46
      Height = 21
      Caption = 'Lama'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel7: TsLabel
      Left = 272
      Top = 16
      Width = 59
      Height = 21
      Caption = 'ID Pel.'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel6: TsLabel
      Left = 8
      Top = 112
      Width = 73
      Height = 21
      Caption = 'Kembali'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel5: TsLabel
      Left = 8
      Top = 88
      Width = 50
      Height = 21
      Caption = 'Bayar'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel4: TsLabel
      Left = 8
      Top = 64
      Width = 105
      Height = 21
      Caption = 'Grand Total'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel3: TsLabel
      Left = 8
      Top = 16
      Width = 82
      Height = 21
      Caption = 'Sub Total'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel2: TsLabel
      Left = 8
      Top = 40
      Width = 78
      Height = 21
      Caption = 'Discount'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sLabel10: TsLabel
      Left = 528
      Top = 88
      Width = 49
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hari'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object sb_cari_pel: TsSpeedButton
      Left = 528
      Top = 16
      Width = 49
      Height = 24
      Visible = False
      OnClick = sb_cari_pelClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = dm.gambar
    end
    object L_nm_pel: TsLabel
      Left = 392
      Top = 40
      Width = 56
      Height = 21
      Caption = 'Umum'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object L_Bayar: TsLabel
      Left = 428
      Top = 88
      Width = 242
      Height = 59
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = 'KEMBALI'
      ParentFont = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -53
      Font.Name = 'Rockwell'
      Font.Style = []
    end
    object Ed_Sub: TsCurrencyEdit
      Left = 136
      Top = 16
      Width = 129
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = Ed_SubChange
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
    object Ed_Pelanggan: TsEdit
      Left = 392
      Top = 16
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Visible = False
      OnChange = Ed_PelangganChange
      OnKeyDown = Ed_PelangganKeyDown
      SkinData.SkinSection = 'PANEL'
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
    object Ed_Lama: TsEdit
      Left = 528
      Top = 64
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 8
      Text = '0'
      Visible = False
      OnChange = Ed_LamaChange
      SkinData.SkinSection = 'PANEL'
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
    object Ed_Kembali: TsCurrencyEdit
      Left = 136
      Top = 112
      Width = 129
      Height = 24
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
    object Ed_jatuh_tempo: TsEdit
      Left = 392
      Top = 87
      Width = 137
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
      SkinData.SkinSection = 'PANEL'
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
    object Ed_Grand: TsCurrencyEdit
      Left = 136
      Top = 64
      Width = 129
      Height = 24
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
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
    object Ed_discRp: TsCurrencyEdit
      Left = 184
      Top = 40
      Width = 81
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = Ed_discRpExit
      OnKeyDown = Ed_discRpKeyDown
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
    object Ed_BK: TsCurrencyEdit
      Left = 676
      Top = 41
      Width = 401
      Height = 96
      Anchors = [akRight, akBottom]
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -80
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Visible = False
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
    object Ed_Bayar: TsCurrencyEdit
      Left = 136
      Top = 88
      Width = 129
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = Ed_BayarChange
      OnKeyDown = Ed_BayarKeyDown
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
    object cb_pending: TsComboBox
      Left = 932
      Top = 12
      Width = 145
      Height = 24
      Anchors = [akRight, akBottom]
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
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = -1
      ParentFont = False
      Sorted = True
      TabOrder = 11
      Visible = False
    end
    object Cb_lama: TsComboBox
      Left = 392
      Top = 64
      Width = 137
      Height = 22
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
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = '1 Minggu'
      Visible = False
      OnChange = Cb_lamaChange
      OnKeyDown = Cb_lamaKeyDown
      Items.Strings = (
        '1 Minggu'
        '2 Minggu'
        '3 Minggu'
        '4 Minggu'
        '1 Bulan'
        'Custom...')
    end
    object ed_discP: TsCurrencyEdit
      Left = 136
      Top = 40
      Width = 49
      Height = 24
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = Ed_discPExit
      OnKeyDown = Ed_discPKeyDown
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
      DisplayFormat = '##0.00;(##0.00);0.00'
      MaxValue = 100.000000000000000000
    end
    object b_simpan: TsButton
      Left = 392
      Top = 112
      Width = 137
      Height = 25
      Caption = '&Simpan Transaksi'
      TabOrder = 10
      Visible = False
      OnClick = b_simpanClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object Grid: TcxGrid
    Left = 0
    Top = 167
    Width = 1024
    Height = 240
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object TableView: TcxGridTableView
      OnDblClick = TableViewDblClick
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Append.Visible = False
      FilterBox.CustomizeDialog = False
      OnFocusedRecordChanged = TableViewFocusedRecordChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Total'
          Kind = skCount
          Column = tv_nama
          DisplayText = 'Total'
        end
        item
          Format = '###,###,##0;(###,###,##0);0'
          Kind = skSum
          Column = tv_qtyh
        end
        item
          Format = '###,###,##0;(###,###,##0);0'
          Kind = skSum
          Column = tv_harga
        end
        item
          Format = '###,###,##0;(###,###,##0);0'
          Kind = skSum
          Column = tv_diskon
        end
        item
          Format = '###,###,##0;(###,###,##0);0'
          Kind = skSum
          Column = tv_netto
        end
        item
          Format = '###,###,##0;(###,###,##0);0'
          Kind = skSum
          OnGetText = TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText
          Column = tv_total_harga
        end
        item
          Column = tv_satuan
        end
        item
          Format = '###.00;(###.00);0'
          Kind = skAverage
          Column = tv_diskonp
        end
        item
          Kind = skSum
          Column = tv_total_hpp
        end
        item
          Kind = skSum
          Column = tv_void
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '..< Masih belum ada Data>..'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 10
      Styles.Inactive = dm.cxstyl1
      Styles.Selection = dm.cxstyl1
      object tv_no: TcxGridColumn
        Caption = 'No'
        DataBinding.ValueType = 'Integer'
        Width = 44
      end
      object tv_pid: TcxGridColumn
        Caption = 'PID'
        GroupSummaryAlignment = taCenter
        Options.Editing = False
        Width = 37
      end
      object tv_nama: TcxGridColumn
        Caption = 'Nama Barang'
        GroupSummaryAlignment = taCenter
        Options.Editing = False
        Width = 165
      end
      object tv_qtyh: TcxGridColumn
        Caption = 'Qty'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        Properties.MinValue = 1.000000000000000000
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 41
      end
      object tv_satuan: TcxGridColumn
        Caption = 'Satuan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 46
      end
      object tv_harga: TcxGridColumn
        Caption = 'Harga'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 57
      end
      object tv_diskonp: TcxGridColumn
        Caption = 'Diskon (%)'
        DataBinding.ValueType = 'Float'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '##0.00;(##0.00);0.00'
        Properties.EditFormat = '##0.00;(##0.00);0.00'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Width = 94
      end
      object tv_diskon: TcxGridColumn
        Caption = 'Diskon (Rp)'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 81
      end
      object tv_netto: TcxGridColumn
        Caption = 'Netto'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 45
      end
      object tv_total_harga: TcxGridColumn
        Caption = 'Total Harga'
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 47
      end
      object tv_barcode1: TcxGridColumn
        Caption = 'barcode1'
        Visible = False
        Width = 37
      end
      object tv_barcode2: TcxGridColumn
        Caption = 'barcode2'
        Visible = False
        Width = 38
      end
      object tv_barcode3: TcxGridColumn
        Caption = 'barcode3'
        Visible = False
        Width = 38
      end
      object tv_hpp: TcxGridColumn
        Caption = 'hpp'
        DataBinding.ValueType = 'Integer'
        Visible = False
        Width = 38
      end
      object tv_total_hpp: TcxGridColumn
        Caption = 'total hpp'
        DataBinding.ValueType = 'Integer'
        Visible = False
        Width = 33
      end
      object tv_total_laba: TcxGridColumn
        Caption = 'total laba'
        DataBinding.ValueType = 'Integer'
        Visible = False
        Width = 31
      end
      object tv_kd_satuan: TcxGridColumn
        Caption = 'kd_satuan'
        Visible = False
        Width = 20
      end
      object tv_void: TcxGridColumn
        Caption = 'void'
        DataBinding.ValueType = 'Integer'
        Visible = False
        Width = 32
      end
      object tv_Qty: TcxGridColumn
        Caption = 'Qty_real'
        DataBinding.ValueType = 'Integer'
        Visible = False
        Width = 29
      end
      object tv_ket: TcxGridColumn
        Caption = 'Keterangan'
        Visible = False
      end
    end
    object Level: TcxGridLevel
      GridView = TableView
    end
  end
  object rb1: TAdvToolBarPager
    Left = 0
    Top = 0
    Width = 1024
    Height = 129
    ActivePage = tb_pilihan
    Caption.Visible = False
    CaptionButtons = []
    Hints.MDICloseBtnHint = 'Close'
    Hints.MDIMinimizeBtnHint = 'Minimize'
    Hints.MDIMaximizeBtnHint = 'Maximize'
    Hints.HelpBtnHint = 'Help'
    TabGroups = <>
    TabSettings.EndMargin = 0
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = advtlbrfcstylr1
    ShowHelpButton = False
    PageLeftMargin = 0
    PageRightMargin = 0
    OptionPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFDE3E3E3E3FF000000FDE3FFFDFDE3E3E3FF000000FDE3FFFDFDE3
      E3E3FF000000FDE3FFFDE3FFFDE3FD000000FDE3FFFDFDFDFDFDFD000000FDE3
      FFFFFFFFFFFDFD000000FDE3E3E3E3E3E3FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    OptionDisabledPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFD07070707FF000000FD07FFFDFD070707FF000000FD07FFFDFD07
      0707FF000000FD07FFFD07FFFD07FD000000FD07FFFDFDFDFDFDFD000000FD07
      FFFFFFFFFFFDFD000000FD070707070707FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    TabOrder = 5
    Win7ScenicRibbon = True
    object tb_transaksi: TAdvPage
      Left = 0
      Top = 26
      Width = 1024
      Height = 102
      Caption = 'Transaksi Penjualan'
      object mm_nama: TsMemo
        Left = 0
        Top = 0
        Width = 623
        Height = 102
        Align = alClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
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
        SkinData.SkinSection = 'EDIT'
      end
      object ed_Harga: TsCurrencyEdit
        Left = 623
        Top = 0
        Width = 401
        Height = 102
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Rockwell'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Align = alRight
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
    object tb_pilihan: TAdvPage
      Left = 0
      Top = 26
      Width = 1024
      Height = 102
      Caption = 'Pilihan'
      object tbp_pilihan: TAdvToolBar
        Left = 3
        Top = 3
        Width = 702
        Height = 96
        AllowFloating = True
        AutoArrangeButtons = False
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Pilihan Transaksi'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = advtlbrfcstylr1
        ParentOptionPicture = True
        ToolBarIndex = 0
        object l_2: TsLabel
          Left = 72
          Top = 40
          Width = 45
          Height = 26
          Alignment = taCenter
          Caption = 'Ubah Qty'#13#10'ex. (5+)'
        end
        object l_3: TsLabel
          Left = 128
          Top = 40
          Width = 73
          Height = 26
          Alignment = taCenter
          Caption = 'Ubah Diskon %'#13#10'ex. (2.5*)'
        end
        object l_4: TsLabel
          Left = 216
          Top = 40
          Width = 79
          Height = 26
          Alignment = taCenter
          Caption = 'Ubah Diskon Rp'#13#10'ex. (500-)'
        end
        object l_5: TsLabel
          Left = 4
          Top = 40
          Width = 58
          Height = 26
          Alignment = taCenter
          Caption = 'Ubah Harga'#13#10'ex. (1000/)'
        end
        object btnvoid: TAdvGlowButton
          Left = 124
          Top = 8
          Width = 50
          Height = 22
          Action = ac_void
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnBatal: TAdvGlowButton
          Left = 186
          Top = 8
          Width = 50
          Height = 22
          Action = ac_Batal
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnReturn: TAdvGlowButton
          Left = 312
          Top = 8
          Width = 121
          Height = 22
          Action = ac_Return
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnPending: TAdvGlowButton
          Left = 312
          Top = 32
          Width = 121
          Height = 22
          Action = ac_Pending
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnLoad: TAdvGlowButton
          Left = 312
          Top = 56
          Width = 121
          Height = 22
          Action = ac_Load
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 4
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnPenjualan: TAdvGlowButton
          Left = 440
          Top = 8
          Width = 121
          Height = 22
          Action = ac_Group
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnSatuan: TAdvGlowButton
          Left = 440
          Top = 32
          Width = 121
          Height = 22
          Action = ac_Satuan
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 6
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btncetak: TAdvGlowButton
          Left = 440
          Top = 56
          Width = 121
          Height = 22
          Action = ac_cetak
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 7
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnKunci: TAdvGlowButton
          Left = 248
          Top = 8
          Width = 50
          Height = 22
          Action = ac_Kunci
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 8
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnInsert: TAdvGlowButton
          Left = 64
          Top = 8
          Width = 50
          Height = 22
          Action = ac_Insert
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 9
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnPenjualan1: TAdvGlowButton
          Left = 568
          Top = 56
          Width = 121
          Height = 22
          Action = ac_jual_global
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 10
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnSatuan1: TAdvGlowButton
          Left = 568
          Top = 32
          Width = 121
          Height = 22
          Action = ac_Besar
          ImageIndex = 8
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 11
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object btnPenjualan2: TAdvGlowButton
          Left = 568
          Top = 8
          Width = 121
          Height = 22
          Action = ac_kecil
          ImageIndex = 9
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 12
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
      end
      object ed_tambahan: TEdit
        Left = 8
        Top = 12
        Width = 55
        Height = 21
        Enabled = False
        ParentColor = True
        TabOrder = 1
        OnExit = ed_tambahanExit
      end
    end
    object tb_pengaturan: TAdvPage
      Left = 0
      Top = 26
      Width = 1024
      Height = 102
      Caption = 'Pengaturan'
      object advtlbr1: TAdvToolBar
        Left = 3
        Top = 3
        Width = 246
        Height = 96
        AllowFloating = False
        AutoArrangeButtons = False
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Cetak Struk'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = advtlbrfcstylr1
        ParentOptionPicture = False
        ToolBarIndex = 0
        object cb_lebar_struk: TComboBox
          Left = 200
          Top = 14
          Width = 41
          Height = 21
          Color = 14672870
          ItemHeight = 13
          TabOrder = 0
          OnExit = cb_lebar_strukExit
          Items.Strings = (
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60')
        end
        object ed_footer_struk: TEdit
          Left = 2
          Top = 48
          Width = 241
          Height = 21
          ParentColor = True
          TabOrder = 1
          OnExit = ed_footer_strukExit
        end
        object cb_jenis_struk: TComboBox
          Left = 2
          Top = 14
          Width = 191
          Height = 21
          Style = csDropDownList
          Color = 14672870
          ItemHeight = 13
          TabOrder = 2
          OnExit = cb_jenis_strukExit
          Items.Strings = (
            'Struk Kecil'
            'Struk Besar')
        end
      end
      object advtlbr2: TAdvToolBar
        Left = 252
        Top = 3
        Width = 277
        Height = 96
        AllowFloating = True
        AutoArrangeButtons = False
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Pesan Berjalan'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = advtlbrfcstylr1
        ParentOptionPicture = True
        ShowHint = False
        ToolBarIndex = 1
        object crb_font: TColorBox
          Left = 92
          Top = 34
          Width = 90
          Height = 22
          Selected = clYellow
          ItemHeight = 16
          ParentColor = True
          TabOrder = 0
        end
        object cbsize: TComboBox
          Left = 2
          Top = 58
          Width = 44
          Height = 21
          ItemHeight = 13
          ItemIndex = 2
          ParentColor = True
          TabOrder = 1
          Text = '10'
          Items.Strings = (
            '8'
            '9'
            '10'
            '11'
            '12'
            '14'
            '16'
            '18'
            '20')
        end
        object crb_bg: TColorBox
          Left = 2
          Top = 34
          Width = 90
          Height = 22
          Selected = clRed
          ItemHeight = 16
          ParentColor = True
          TabOrder = 2
        end
        object cbFontName: TComboBox
          Left = 2
          Top = 10
          Width = 180
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ParentColor = True
          Sorted = True
          TabOrder = 3
        end
        object cbspeed: TComboBox
          Left = 46
          Top = 58
          Width = 44
          Height = 21
          ItemHeight = 13
          ParentColor = True
          TabOrder = 4
          Text = '20'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25')
        end
        object btn1: TAdvGlowButton
          Left = 92
          Top = 58
          Width = 89
          Height = 21
          Caption = 'Terapkan'
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 5
          OnClick = btn1Click
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object tlb1: TToolBar
          Left = 186
          Top = 2
          Width = 80
          Height = 31
          Align = alNone
          ButtonWidth = 25
          Caption = 'tlb1'
          Images = dm.gambar
          TabOrder = 6
          object btn2: TToolButton
            Tag = 1
            Left = 0
            Top = 2
            Caption = 'B'
            ImageIndex = 3
            Style = tbsCheck
            OnClick = btn2Click
          end
          object btn3: TToolButton
            Tag = 2
            Left = 25
            Top = 2
            Caption = 'Italic'
            ImageIndex = 4
            Style = tbsCheck
            OnClick = btn2Click
          end
          object btn4: TToolButton
            Tag = 3
            Left = 50
            Top = 2
            Caption = 'Underline'
            ImageIndex = 5
            Style = tbsCheck
            OnClick = btn2Click
          end
        end
        object btn5: TAdvGlowButton
          Left = 186
          Top = 58
          Width = 80
          Height = 21
          Caption = 'Lihat Pesan'
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 7
          OnClick = btn5Click
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object cb_aktif: TComboBox
          Left = 186
          Top = 34
          Width = 80
          Height = 21
          Style = csDropDownList
          Color = 14672870
          ItemHeight = 13
          TabOrder = 8
          OnChange = cb_aktifChange
          Items.Strings = (
            'Mati'
            'Aktif')
        end
      end
      object advtlbr3: TAdvToolBar
        Left = 532
        Top = 3
        Width = 325
        Height = 96
        AllowFloating = True
        AutoPositionControls = False
        AutoSize = False
        Caption = 'Ubah Skin'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionPosition = cpBottom
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowOptionIndicator = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = advtlbrfcstylr1
        ParentOptionPicture = True
        ToolBarIndex = 2
        object l_1: TsLabel
          Left = 2
          Top = 36
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Hue'
        end
        object l_6: TsLabel
          Left = 162
          Top = 36
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Saturation'
        end
        object trb_sat: TAdvTrackBar
          Left = 162
          Top = 50
          Width = 150
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clNone
          Buttons.BorderColor = 9262895
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15653832
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15586496
          Buttons.ColorMirrorTo = 16245200
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          ColorTo = clNone
          ColorDisabled = clNone
          ColorDisabledTo = clNone
          Direction = gdHorizontal
          Color = clNone
          Max = 100
          Min = -100
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 0
          Thumb.BorderColor = 10317632
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clBlack
          Thumb.Color = 15653832
          Thumb.ColorTo = 16178633
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15586496
          Thumb.ColorMirrorTo = 16245200
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggRadial
          Thumb.Shape = tsPointer
          TickMark.Color = clBlack
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'Tahoma'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.5'
          OnChange = trb_satChange
        end
        object trb_hue: TAdvTrackBar
          Left = 2
          Top = 50
          Width = 150
          Height = 26
          BorderColor = clNone
          BorderColorDisabled = clNone
          Buttons.BorderColor = 9262895
          Buttons.BorderColorHot = 10079963
          Buttons.BorderColorDown = 4548219
          Buttons.Color = 15653832
          Buttons.ColorTo = 16178633
          Buttons.ColorHot = 15465983
          Buttons.ColorHotTo = 11332863
          Buttons.ColorDown = 7778289
          Buttons.ColorDownTo = 4296947
          Buttons.ColorMirror = 15586496
          Buttons.ColorMirrorTo = 16245200
          Buttons.ColorMirrorHot = 5888767
          Buttons.ColorMirrorHotTo = 10807807
          Buttons.ColorMirrorDown = 946929
          Buttons.ColorMirrorDownTo = 5021693
          Buttons.GradientMirror = ggVertical
          ColorTo = clNone
          ColorDisabled = clNone
          ColorDisabledTo = clNone
          Direction = gdHorizontal
          Color = clNone
          Max = 360
          Slider.BorderColor = 12752500
          Slider.BorderColorDisabled = clBlack
          Slider.Color = clWhite
          Slider.ColorTo = clBlack
          Slider.ColorDisabled = clBlack
          Slider.ColorDisabledTo = clBlack
          Slider.ColorCompleted = clNone
          Slider.ColorCompletedTo = clNone
          Slider.ColorCompletedDisabled = clNone
          Slider.ColorCompletedDisabledTo = clNone
          Slider.Direction = gdHorizontal
          TabOrder = 1
          Thumb.BorderColor = 10317632
          Thumb.BorderColorHot = 10079963
          Thumb.BorderColorDown = 4548219
          Thumb.BorderColorDisabled = clBlack
          Thumb.Color = 15653832
          Thumb.ColorTo = 16178633
          Thumb.ColorDown = 7778289
          Thumb.ColorDownTo = 4296947
          Thumb.ColorHot = 15465983
          Thumb.ColorHotTo = 11332863
          Thumb.ColorDisabled = clBlack
          Thumb.ColorDisabledTo = clBlack
          Thumb.ColorMirror = 15586496
          Thumb.ColorMirrorTo = 16245200
          Thumb.ColorMirrorHot = 5888767
          Thumb.ColorMirrorHotTo = 10807807
          Thumb.ColorMirrorDown = 946929
          Thumb.ColorMirrorDownTo = 5021693
          Thumb.ColorMirrorDisabled = clBlack
          Thumb.ColorMirrorDisabledTo = clBlack
          Thumb.Gradient = ggVertical
          Thumb.GradientMirror = ggRadial
          Thumb.Shape = tsPointer
          TickMark.Color = clBlack
          TickMark.ColorDisabled = clBlack
          TickMark.Font.Charset = DEFAULT_CHARSET
          TickMark.Font.Color = clWindowText
          TickMark.Font.Height = -11
          TickMark.Font.Name = 'Tahoma'
          TickMark.Font.Style = []
          TrackHint = False
          TrackLabel.Font.Charset = DEFAULT_CHARSET
          TrackLabel.Font.Color = clWindowText
          TrackLabel.Font.Height = -11
          TrackLabel.Font.Name = 'Tahoma'
          TrackLabel.Font.Style = []
          TrackLabel.Format = 'Pos: %d'
          Version = '1.6.3.5'
          OnChange = trb_hueChange
        end
        object btnInsert1: TAdvGlowButton
          Left = 2
          Top = 8
          Width = 95
          Height = 22
          Action = ac_skin
          FocusType = ftHot
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.BorderColorChecked = 4548219
          Appearance.ColorTo = 13226453
          Appearance.ColorChecked = 11918331
          Appearance.ColorCheckedTo = 7915518
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = clWhite
          Appearance.ColorMirrorTo = 13226453
          Appearance.ColorMirrorHot = 5888767
          Appearance.ColorMirrorHotTo = 10807807
          Appearance.ColorMirrorDown = 946929
          Appearance.ColorMirrorDownTo = 5021693
          Appearance.ColorMirrorChecked = 10480637
          Appearance.ColorMirrorCheckedTo = 5682430
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object ed_skin: TEdit
          Left = 112
          Top = 8
          Width = 201
          Height = 21
          ParentColor = True
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object sb1: TAdvShapeButton
      Left = 8
      Top = 4
      Width = 50
      Height = 22
      Appearance.Shape = bsRectangle
      Appearance.BorderColor = 10569759
      Appearance.BorderColorDown = 10569759
      Appearance.InnerBorderColor = 15042372
      Appearance.InnerBorderColorHot = 15966549
      Appearance.InnerBorderColorDown = 15042372
      Appearance.Color = 14318910
      Appearance.ColorTo = 11690024
      Appearance.ColorHot = 14515779
      Appearance.ColorHotTo = 12347186
      Appearance.ColorDown = 14318910
      Appearance.ColorDownTo = 11690024
      Appearance.ShowMenuShape = True
      AdvPreviewMenu = advprvwmn1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Version = '5.4.0.2'
    end
  end
  object p_keterangan: TsPanel
    Left = 0
    Top = 407
    Width = 1024
    Height = 30
    Align = alBottom
    TabOrder = 9
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object l_7: TsLabel
      Left = 1
      Top = 1
      Width = 223
      Height = 28
      Align = alLeft
      Alignment = taCenter
      Caption = 'Isi Keterangan di sini -->  '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
    end
    object ed_keterangan: TsEdit
      Left = 224
      Top = 1
      Width = 799
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'sarimi duo'
      OnKeyDown = ed_keteranganKeyDown
      Align = alClient
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
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 328
  end
  object alert: TAdvAlertWindow
    AlertMessages = <
      item
        Text.Strings = (
          '         ')
        ImageIndex = 0
        Tag = 0
      end>
    AlwaysOnTop = True
    AutoHide = True
    AutoSize = False
    AutoDelete = False
    BorderColor = 6050636
    BtnHoverColor = 14483455
    BtnHoverColorTo = 6013175
    BtnDownColor = 557032
    BtnDownColorTo = 8182519
    CaptionColor = 15921648
    CaptionColorTo = 13222589
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GradientDirection = gdVertical
    HintNextBtn = 'Next'
    HintPrevBtn = 'Previous'
    HintCloseBtn = 'Close'
    HintDeleteBtn = 'Delete'
    HintPopupBtn = 'Popup'
    Hover = True
    MarginX = 50
    MarginY = 50
    PersistPosition = True
    PopupLeft = 1
    PopupTop = 1
    PopupWidth = 300
    PopupHeight = 300
    PositionFormat = '%d of %d'
    WindowColor = 15855846
    WindowColorTo = 13024437
    ShowScrollers = False
    ShowDelete = False
    ShowPopup = False
    AlphaEnd = 255
    AlphaStart = 255
    DisplayTime = 5000
    FadeStep = 5
    WindowPosition = wpRightBottom
    Style = asOffice2007Obsidian
    Version = '1.8.0.0'
    Left = 128
    Top = 272
  end
  object advtlbrfcstylr1: TAdvToolBarOfficeStyler
    Style = bsOffice2003Classic
    AdvMenuStyler = mntransaksi
    BorderColor = 9671313
    BorderColorHot = 14210516
    ButtonAppearance.Color = clBtnFace
    ButtonAppearance.ColorDown = 14857624
    ButtonAppearance.BorderDownColor = clBlack
    ButtonAppearance.BorderHotColor = clBlack
    ButtonAppearance.BorderCheckedColor = 3693887
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -12
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clGray
    CaptionAppearance.CaptionColorTo = clGray
    CaptionAppearance.CaptionBorderColor = clBlack
    CaptionAppearance.CaptionColorHot = 13811126
    CaptionAppearance.CaptionColorHotTo = 13811126
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clWhite
    Color.ColorTo = 13226453
    Color.Direction = gdVertical
    Color.Mirror.Color = 14672870
    Color.Mirror.ColorTo = 14672870
    Color.Mirror.ColorMirror = 13292246
    Color.Mirror.ColorMirrorTo = 15396335
    ColorHot.Color = 16120314
    ColorHot.ColorTo = 16120314
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 15593462
    ColorHot.Mirror.ColorTo = 15593462
    ColorHot.Mirror.ColorMirror = 14672870
    ColorHot.Mirror.ColorMirrorTo = 16053751
    CompactGlowButtonAppearance.BorderColor = clBlack
    CompactGlowButtonAppearance.BorderColorHot = 10079963
    CompactGlowButtonAppearance.BorderColorDown = 4548219
    CompactGlowButtonAppearance.BorderColorChecked = 4548219
    CompactGlowButtonAppearance.ColorTo = 13226453
    CompactGlowButtonAppearance.ColorChecked = 11918331
    CompactGlowButtonAppearance.ColorCheckedTo = 7915518
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7778289
    CompactGlowButtonAppearance.ColorDownTo = 4296947
    CompactGlowButtonAppearance.ColorHot = 15465983
    CompactGlowButtonAppearance.ColorHotTo = 11332863
    CompactGlowButtonAppearance.ColorMirror = clWhite
    CompactGlowButtonAppearance.ColorMirrorTo = 13226453
    CompactGlowButtonAppearance.ColorMirrorHot = 5888767
    CompactGlowButtonAppearance.ColorMirrorHotTo = 10807807
    CompactGlowButtonAppearance.ColorMirrorDown = 946929
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5021693
    CompactGlowButtonAppearance.ColorMirrorChecked = 10480637
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 13811126
    DockColor.ColorTo = 13811126
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = 8556434
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = clBlack
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.ColorTo = 13226453
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = clWhite
    GlowButtonAppearance.ColorMirrorTo = 13226453
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.BorderColor = clWhite
    GroupAppearance.Color = 11899525
    GroupAppearance.ColorTo = 11899525
    GroupAppearance.ColorMirror = 11899525
    GroupAppearance.ColorMirrorTo = 11899525
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -12
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clWhite
    GroupAppearance.CaptionAppearance.CaptionColor = 14281196
    GroupAppearance.CaptionAppearance.CaptionColorTo = 14281196
    GroupAppearance.CaptionAppearance.CaptionTextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColorHot = 13226453
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 13226453
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = clBlack
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 14086910
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = clHighlight
    GroupAppearance.TabAppearance.BorderColorHot = clHighlight
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 13432063
    GroupAppearance.TabAppearance.ColorHotTo = 13432063
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 13432063
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 9556223
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -12
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlack
    GroupAppearance.TabAppearance.TextColorHot = clBlack
    GroupAppearance.TabAppearance.TextColorSelected = clBlack
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 10796223
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = clBlack
    PageAppearance.Color = 14672870
    PageAppearance.ColorTo = 14672870
    PageAppearance.ColorMirror = 13292246
    PageAppearance.ColorMirrorTo = 16448251
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 12172735
    PageAppearance.HighLightColor = 7768722
    PagerCaption.BorderColor = 15780526
    PagerCaption.Color = clGray
    PagerCaption.ColorTo = 8756637
    PagerCaption.ColorMirror = 8756637
    PagerCaption.ColorMirrorTo = 13226453
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 8556434
    QATAppearance.Color = clWhite
    QATAppearance.ColorTo = 13226453
    QATAppearance.FullSizeBorderColor = 8556434
    QATAppearance.FullSizeColor = clGray
    QATAppearance.FullSizeColorTo = 8756637
    RightHandleColorHot = 13811126
    RightHandleColorHotTo = clNone
    RightHandleColorDown = 11899525
    RightHandleColorDownTo = clNone
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 14922381
    TabAppearance.BorderColorSelected = clBlack
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 13226453
    TabAppearance.ColorSelectedTo = clWhite
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13432063
    TabAppearance.ColorHotTo = 13432063
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 13432063
    TabAppearance.ColorMirrorHotTo = 9556223
    TabAppearance.ColorMirrorSelected = clWhite
    TabAppearance.ColorMirrorSelectedTo = clWhite
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -12
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 10594218
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16250099
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 13226453
    TabAppearance.BackGround.ColorTo = clWhite
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 488
  end
  object advprvwmn1: TAdvPreviewMenu
    Buttons = <>
    ButtonSpacing = 0
    ButtonHeight = 0
    MenuItems = <
      item
        Action = ac_simpanfile
        CanSelect = False
        SubItems = <>
        SubMenuCaption = 'Simpan ke file'
        SubMenuItemHeight = 40
        Separator = False
        SubMenuItemSpacing = 10
      end
      item
        Action = ac_loadfile
        CanSelect = False
        SubItems = <>
        Separator = True
        SubMenuItemSpacing = 4
      end
      item
        CanSelect = False
        Caption = 'Cetak'
        ImageIndex = 11
        SubItems = <
          item
            Action = ac_kecil
          end
          item
            Action = ac_Besar
          end>
        SubMenuCaption = 'Cetak Struk'
        SubMenuItemHeight = 30
        Separator = False
        SubMenuItemSpacing = 10
        Visible = True
      end
      item
        Action = ac_cek_update
        CanSelect = False
        SubItems = <>
        SubMenuCaption = 'SubMenuCaption'
        Separator = False
        SubMenuItemSpacing = 4
      end
      item
        Action = ac_close
        CanSelect = False
        SubItems = <>
        Separator = False
        SubMenuItemSpacing = 4
      end>
    MenuSpacing = 10
    MenuWidth = 150
    MenuFont.Charset = DEFAULT_CHARSET
    MenuFont.Color = clWindowText
    MenuFont.Height = -11
    MenuFont.Name = 'MS Sans Serif'
    MenuFont.Style = []
    SubMenuWidth = 150
    SubMenuItems = <>
    SubMenuItemSpacing = 30
    Styler = advprvwmnfcstylr1
    ShowHint = False
    Version = '5.0.1.0'
    Left = 408
  end
  object advprvwmnfcstylr1: TAdvPreviewMenuOfficeStyler
    FrameAppearance.BorderColor = 11841193
    FrameAppearance.CaptionBackground = 15656925
    FrameAppearance.Color = 14143690
    FrameAppearance.ColorTo = 14209484
    FrameAppearance.ColorMirror = 15131353
    FrameAppearance.ColorMirrorTo = 13683139
    FrameAppearance.Gradient = ggVertical
    FrameAppearance.GradientMirror = ggVertical
    LeftFrameColor = clWhite
    RightFrameColor = 15657705
    MenuItemAppearance.BorderColor = clNone
    MenuItemAppearance.BorderColorHot = 10079963
    MenuItemAppearance.BorderColorDown = 4548219
    MenuItemAppearance.BorderColorChecked = 4548219
    MenuItemAppearance.BorderColorDisabled = clNone
    MenuItemAppearance.Color = clNone
    MenuItemAppearance.ColorTo = clNone
    MenuItemAppearance.ColorChecked = 11918331
    MenuItemAppearance.ColorCheckedTo = 7915518
    MenuItemAppearance.ColorDisabled = clNone
    MenuItemAppearance.ColorDisabledTo = clNone
    MenuItemAppearance.ColorDown = 7778289
    MenuItemAppearance.ColorDownTo = 4296947
    MenuItemAppearance.ColorHot = 15465983
    MenuItemAppearance.ColorHotTo = 11332863
    MenuItemAppearance.ColorMirror = clNone
    MenuItemAppearance.ColorMirrorTo = clNone
    MenuItemAppearance.ColorMirrorHot = 5888767
    MenuItemAppearance.ColorMirrorHotTo = 10807807
    MenuItemAppearance.ColorMirrorDown = 946929
    MenuItemAppearance.ColorMirrorDownTo = 5021693
    MenuItemAppearance.ColorMirrorChecked = 10480637
    MenuItemAppearance.ColorMirrorCheckedTo = 5682430
    MenuItemAppearance.ColorMirrorDisabled = clNone
    MenuItemAppearance.ColorMirrorDisabledTo = clNone
    MenuItemAppearance.GradientHot = ggVertical
    MenuItemAppearance.GradientMirrorHot = ggVertical
    MenuItemAppearance.GradientDown = ggVertical
    MenuItemAppearance.GradientMirrorDown = ggVertical
    MenuItemAppearance.GradientChecked = ggVertical
    MenuItemAppearance.GradientDisabled = ggVertical
    MenuItemAppearance.GradientMirrorDisabled = ggVertical
    MenuItemAppearance.TextColorHot = 4605510
    MenuItemAppearance.TextColorDown = 4605510
    MenuItemAppearance.Font.Charset = DEFAULT_CHARSET
    MenuItemAppearance.Font.Color = clWindowText
    MenuItemAppearance.Font.Height = -11
    MenuItemAppearance.Font.Name = 'Segoe UI'
    MenuItemAppearance.Font.Style = []
    MenuItemAppearance.SubMenuCaptionFont.Charset = DEFAULT_CHARSET
    MenuItemAppearance.SubMenuCaptionFont.Color = clWindowText
    MenuItemAppearance.SubMenuCaptionFont.Height = -11
    MenuItemAppearance.SubMenuCaptionFont.Name = 'Segoe UI'
    MenuItemAppearance.SubMenuCaptionFont.Style = []
    MenuItemAppearance.SubItemTitleFont.Charset = DEFAULT_CHARSET
    MenuItemAppearance.SubItemTitleFont.Color = clWindowText
    MenuItemAppearance.SubItemTitleFont.Height = -11
    MenuItemAppearance.SubItemTitleFont.Name = 'Segoe UI'
    MenuItemAppearance.SubItemTitleFont.Style = [fsBold]
    MenuItemAppearance.SubItemFont.Charset = DEFAULT_CHARSET
    MenuItemAppearance.SubItemFont.Color = clWindowText
    MenuItemAppearance.SubItemFont.Height = -11
    MenuItemAppearance.SubItemFont.Name = 'Segoe UI'
    MenuItemAppearance.SubItemFont.Style = []
    MenuItemAppearance.TextColor = 4605510
    MenuItemAppearance.TextColorChecked = clBlack
    MenuItemAppearance.TextColorDisabled = clGray
    MenuItemAppearance.Rounded = True
    ButtonAppearance.BorderColor = 10327181
    ButtonAppearance.BorderColorHot = 10079963
    ButtonAppearance.BorderColorDown = 4548219
    ButtonAppearance.BorderColorChecked = 4548219
    ButtonAppearance.Color = 16117995
    ButtonAppearance.ColorTo = 16117996
    ButtonAppearance.ColorChecked = 11918331
    ButtonAppearance.ColorCheckedTo = 7915518
    ButtonAppearance.ColorDisabled = 15921906
    ButtonAppearance.ColorDisabledTo = 15921906
    ButtonAppearance.ColorDown = 7778289
    ButtonAppearance.ColorDownTo = 4296947
    ButtonAppearance.ColorHot = 15465983
    ButtonAppearance.ColorHotTo = 11332863
    ButtonAppearance.ColorMirror = 16381168
    ButtonAppearance.ColorMirrorTo = 14406347
    ButtonAppearance.ColorMirrorHot = 5888767
    ButtonAppearance.ColorMirrorHotTo = 10807807
    ButtonAppearance.ColorMirrorDown = 946929
    ButtonAppearance.ColorMirrorDownTo = 5021693
    ButtonAppearance.ColorMirrorChecked = 10480637
    ButtonAppearance.ColorMirrorCheckedTo = 5682430
    ButtonAppearance.ColorMirrorDisabled = 11974326
    ButtonAppearance.ColorMirrorDisabledTo = 15921906
    ButtonAppearance.GradientHot = ggVertical
    ButtonAppearance.GradientMirrorHot = ggVertical
    ButtonAppearance.GradientDown = ggVertical
    ButtonAppearance.GradientMirrorDown = ggVertical
    ButtonAppearance.GradientChecked = ggVertical
    Style = psOffice2007Silver
    Left = 440
  end
  object mntransaksi: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2003Blue
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 5149182
    ButtonAppearance.DownColorTo = 9556991
    ButtonAppearance.HoverColor = 13432063
    ButtonAppearance.HoverColorTo = 9556223
    ButtonAppearance.DownBorderColor = clNavy
    ButtonAppearance.HoverBorderColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 16773091
    IconBar.ColorTo = 14986631
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    SelectedItem.BorderColor = clNavy
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = 'Segoe UI'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 16105118
    RootItem.ColorTo = 16240050
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16773091
    RootItem.SelectedColorTo = 15185299
    RootItem.SelectedBorderColor = 9841920
    RootItem.HoverColor = 13432063
    RootItem.HoverColorTo = 10147583
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 13339754
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = 'Segoe UI'
    NotesFont.Style = []
    MenuBorderColor = 9841920
    Left = 528
  end
  object t_pesan: TTimer
    Enabled = False
    Interval = 20
    OnTimer = t_pesanTimer
    Left = 32
    Top = 408
  end
  object sknprvdr1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    AddedTitle.ShowMainCaption = False
    AllowAnimation = False
    AllowExtBorders = False
    AllowBlendOnMoving = False
    DrawNonClientArea = False
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'FORM'
    ShowAppIcon = False
    TitleButtons = <>
    UseGlobalColor = False
    Left = 11
    Top = 197
  end
  object actlst1: TActionList
    Left = 280
    Top = 248
    object ac_Insert: TAction
      Caption = 'Insert'
      OnExecute = ac_InsertExecute
    end
    object ac_void: TAction
      Caption = 'Void'
      OnExecute = ac_voidExecute
    end
    object ac_Batal: TAction
      Caption = 'Batal'
      OnExecute = ac_BatalExecute
    end
    object ac_Kunci: TAction
      Caption = 'Kunci'
      OnExecute = ac_KunciExecute
    end
    object ac_Return: TAction
      Caption = 'Return Jual (F4)'
      OnExecute = ac_ReturnExecute
    end
    object ac_Pending: TAction
      Caption = 'Pending Trans. (F5)'
      OnExecute = ac_PendingExecute
    end
    object ac_Load: TAction
      Caption = 'Load Trans. (F6)'
      OnExecute = ac_LoadExecute
    end
    object ac_Group: TAction
      Caption = 'Group Barang (F7)'
      OnExecute = ac_GroupExecute
    end
    object ac_Satuan: TAction
      Caption = 'Ubah Satuan (F8)'
      OnExecute = ac_SatuanExecute
    end
    object ac_cetak: TAction
      Caption = 'Cetak Ulang (F11)'
      OnExecute = ac_cetakExecute
    end
    object ac_skin: TAction
      Caption = 'Ubah Skin'
      OnExecute = ac_skinExecute
    end
    object ac_close: TAction
      Caption = 'Keluar'
      ImageIndex = 10
      OnExecute = ac_closeExecute
    end
    object ac_simpanfile: TAction
      Caption = 'Simpan ke File'
      ImageIndex = 6
      OnExecute = ac_simpanfileExecute
    end
    object ac_loadfile: TAction
      Caption = 'Load dari File'
      ImageIndex = 7
      OnExecute = ac_loadfileExecute
    end
    object ac_Besar: TAction
      Caption = 'Cetak Struk Besar'
      OnExecute = ac_BesarExecute
    end
    object ac_kecil: TAction
      Caption = 'Cetak Struk Kecil'
      OnExecute = ac_kecilExecute
    end
    object ac_jual_global: TAction
      Caption = 'Penjualan Toko'
      OnExecute = ac_jual_globalExecute
    end
    object ac_cek_update: TAction
      Caption = 'Cek Update'
    end
  end
  object sd: TsSaveDialog
    DefaultExt = '.trs'
    Filter = 'File Transasksi|*.trs'
    Left = 179
    Top = 320
  end
  object od: TsOpenDialog
    DefaultExt = '.trs'
    Filter = 'File Transasksi|*.trs'
    Left = 211
    Top = 320
  end
  object Q_time: TmySQLQuery
    Database = dm.db_conn
    Left = 56
    Top = 192
  end
end
