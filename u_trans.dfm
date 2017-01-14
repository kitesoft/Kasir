object F_Transaksi: TF_Transaksi
  Left = 181
  Top = 31
  Width = 1024
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
    Width = 1008
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
    Width = 1008
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
      1008
      22)
    object l_pesan: TsLabel
      Left = 64
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
  object pnlKode: TsPanel
    Left = 0
    Top = 172
    Width = 1008
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
      Width = 779
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
  object pnlFooter: TsPanel
    Left = 0
    Top = 459
    Width = 1008
    Height = 146
    Align = alBottom
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      1008
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
      Left = 356
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
      Left = 604
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
      Left = 860
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
    Top = 210
    Width = 1008
    Height = 197
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
        Width = 20
      end
      object tv_pid: TcxGridColumn
        Caption = 'PID'
        GroupSummaryAlignment = taCenter
        Options.Editing = False
        Width = 35
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
        Width = 25
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
        Width = 30
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
        Width = 45
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
        Width = 45
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
        Width = 45
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
        Width = 45
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
  object p_keterangan: TsPanel
    Left = 0
    Top = 407
    Width = 1008
    Height = 30
    Align = alBottom
    TabOrder = 5
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
      Width = 783
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
  object pnlHeader: TsPanel
    Left = 0
    Top = 72
    Width = 1008
    Height = 100
    Align = alTop
    TabOrder = 6
    SkinData.SkinSection = 'PANEL'
    object ed_Harga: TsCurrencyEdit
      Left = 606
      Top = 1
      Width = 401
      Height = 98
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -80
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
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
    object mm_nama: TsMemo
      Left = 1
      Top = 1
      Width = 605
      Height = 98
      Align = alClient
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
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
  end
  object pnlPilihan: TsPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 72
    Align = alTop
    TabOrder = 7
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object Lbl_5: TsLabel
      Left = 4
      Top = 15
      Width = 58
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Harga'#13#10'ex. (1000/)'
    end
    object Lbl_2: TsLabel
      Left = 72
      Top = 15
      Width = 45
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Qty'#13#10'ex. (5+)'
    end
    object Lbl_3: TsLabel
      Left = 128
      Top = 15
      Width = 73
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Diskon %'#13#10'ex. (2.5*)'
    end
    object Lbl_4: TsLabel
      Left = 216
      Top = 15
      Width = 79
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Diskon Rp'#13#10'ex. (500-)'
    end
    object ed_tambahan: TEdit
      Left = 8
      Top = 12
      Width = 55
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 0
      OnExit = ed_tambahanExit
    end
    object BtnInsert: TsButton
      Left = 72
      Top = 8
      Width = 41
      Height = 25
      Action = ac_Insert
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object Btnvoid: TsButton
      Left = 120
      Top = 8
      Width = 41
      Height = 25
      Action = ac_void
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnBatal: TsButton
      Left = 168
      Top = 8
      Width = 41
      Height = 25
      Action = ac_Batal
      TabOrder = 3
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnKunci: TsButton
      Left = 216
      Top = 8
      Width = 41
      Height = 25
      Action = ac_Kunci
      TabOrder = 4
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnReturn1: TsButton
      Left = 312
      Top = 0
      Width = 120
      Height = 25
      Action = ac_Return
      TabOrder = 5
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnPending1: TsButton
      Left = 312
      Top = 24
      Width = 120
      Height = 25
      Action = ac_Pending
      TabOrder = 6
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnLoad1: TsButton
      Left = 312
      Top = 48
      Width = 120
      Height = 25
      Action = ac_Load
      TabOrder = 7
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnGroup: TsButton
      Left = 456
      Top = 0
      Width = 120
      Height = 25
      Action = ac_Group
      TabOrder = 8
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnSatuan2: TsButton
      Left = 456
      Top = 24
      Width = 120
      Height = 25
      Action = ac_Satuan
      TabOrder = 9
      SkinData.SkinSection = 'BUTTON'
    end
    object Btncetak1: TsButton
      Left = 456
      Top = 47
      Width = 120
      Height = 25
      Action = ac_cetak
      TabOrder = 10
      SkinData.SkinSection = 'BUTTON'
    end
    object Btnkecil: TsButton
      Left = 600
      Top = 0
      Width = 120
      Height = 25
      Action = ac_kecil
      TabOrder = 11
      SkinData.SkinSection = 'BUTTON'
    end
    object BtnBesar: TsButton
      Left = 600
      Top = 24
      Width = 120
      Height = 25
      Action = ac_Besar
      TabOrder = 12
      SkinData.SkinSection = 'BUTTON'
    end
    object Btnjual_global: TsButton
      Left = 600
      Top = 47
      Width = 120
      Height = 25
      Action = ac_jual_global
      TabOrder = 13
      SkinData.SkinSection = 'BUTTON'
    end
    object Btnsetting: TsButton
      Left = 784
      Top = 0
      Width = 75
      Height = 25
      Action = ac_setting
      TabOrder = 14
      SkinData.SkinSection = 'BUTTON'
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
    Left = 19
    Top = 365
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
    object ac_setting: TAction
      Caption = 'Setting'
      OnExecute = ac_settingExecute
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
    Left = 16
    Top = 328
  end
end
