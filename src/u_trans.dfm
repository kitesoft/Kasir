object F_Transaksi: TF_Transaksi
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'transaksi'
  ClientHeight = 571
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Sb: TStatusBar
    Left = 0
    Top = 549
    Width = 1018
    Height = 22
    Panels = <
      item
        Text = 'F1: Pilihan'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'VERSI'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'KONEKSI'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'COMPANY'
        Width = 120
      end
      item
        Alignment = taCenter
        Text = 'USER'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'OPERATOR'
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
        Width = 120
      end>
  end
  object p_pesan: TPanel
    Left = 0
    Top = 381
    Width = 1018
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
    DesignSize = (
      1018
      22)
    object l_pesan: TLabel
      Left = -17
      Top = 2
      Width = 34
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdLeftToRight
      Caption = 'Pesan'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      ExplicitLeft = -7
    end
  end
  object pnlKode: TPanel
    Left = 0
    Top = 197
    Width = 1018
    Height = 38
    Align = alTop
    TabOrder = 0
    object Ed_Code: TEdit
      Left = 186
      Top = 1
      Width = 831
      Height = 36
      Align = alClient
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
      ExplicitHeight = 35
    end
    object pnlRetailTunai: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 36
      Align = alLeft
      Caption = 'Retail | Tunai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 403
    Width = 1018
    Height = 146
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      1018
      146)
    object sLabel9: TLabel
      Left = 272
      Top = 88
      Width = 110
      Height = 21
      Caption = 'Jatuh Tempo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabel8: TLabel
      Left = 272
      Top = 64
      Width = 46
      Height = 21
      Caption = 'Lama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabel7: TLabel
      Left = 272
      Top = 16
      Width = 59
      Height = 21
      Caption = 'ID Pel.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sLabel6: TLabel
      Left = 8
      Top = 112
      Width = 73
      Height = 21
      Caption = 'Kembali'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel5: TLabel
      Left = 8
      Top = 88
      Width = 50
      Height = 21
      Caption = 'Bayar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel4: TLabel
      Left = 8
      Top = 64
      Width = 105
      Height = 21
      Caption = 'Grand Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel3: TLabel
      Left = 8
      Top = 16
      Width = 82
      Height = 21
      Caption = 'Sub Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel2: TLabel
      Left = 8
      Top = 40
      Width = 78
      Height = 21
      Caption = 'Discount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel10: TLabel
      Left = 528
      Top = 88
      Width = 49
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hari'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object sb_cari_pel: TsSpeedButton
      Left = 528
      Top = 16
      Width = 49
      Height = 24
      Visible = False
      OnClick = sb_cari_pelClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = dm.gambar
      ImageIndex = 0
    end
    object L_nm_pel: TLabel
      Left = 392
      Top = 40
      Width = 56
      Height = 21
      Caption = 'Umum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -19
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object L_Bayar: TLabel
      Left = -668
      Top = 88
      Width = 242
      Height = 59
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = 'KEMBALI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2171169
      Font.Height = -53
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Visible = False
      ExplicitLeft = -532
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
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object Ed_Pelanggan: TEdit
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
    end
    object Ed_Lama: TEdit
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
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object Ed_jatuh_tempo: TEdit
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
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object Ed_BK: TsCurrencyEdit
      Left = -420
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
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object cb_pending: TComboBox
      Left = -164
      Top = 12
      Width = 145
      Height = 27
      Style = csDropDownList
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      Sorted = True
      TabOrder = 11
      Visible = False
    end
    object Cb_lama: TComboBox
      Left = 392
      Top = 64
      Width = 137
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '##0.00;(##0.00);0.00'
      MaxValue = 100.000000000000000000
    end
    object b_simpan: TButton
      Left = 392
      Top = 112
      Width = 137
      Height = 25
      Caption = '&Simpan Transaksi'
      TabOrder = 10
      Visible = False
      OnClick = b_simpanClick
    end
  end
  object Grid: TcxGrid
    Left = 0
    Top = 235
    Width = 1018
    Height = 116
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
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Append.Visible = False
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
          Format = '###,###,##0.000;(###,###,##0.000);0.000'
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
        Options.Editing = False
        Width = 25
      end
      object tv_satuan: TcxGridColumn
        Caption = 'Satuan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
      end
      object tv_harga: TcxGridColumn
        Caption = 'Harga'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
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
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '##0.00;(##0.00);0.00'
        Properties.EditFormat = '##0.00;(##0.00);0.00'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Width = 45
      end
      object tv_diskon: TcxGridColumn
        Caption = 'Diskon (Rp)'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
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
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
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
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
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
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '###,###,##0.000;(###,###,##0.000);0.000'
        Visible = False
        Width = 38
      end
      object tv_total_hpp: TcxGridColumn
        Caption = 'total hpp'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '###,###,##0.000;(###,###,##0.000);0.000'
        Visible = False
        Width = 33
      end
      object tv_total_laba: TcxGridColumn
        Caption = 'total laba'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 3
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
  object p_keterangan: TPanel
    Left = 0
    Top = 351
    Width = 1018
    Height = 30
    Align = alBottom
    TabOrder = 5
    Visible = False
    object l_7: TLabel
      Left = 1
      Top = 1
      Width = 223
      Height = 28
      Align = alLeft
      Alignment = taCenter
      Caption = 'Isi Keterangan di sini -->  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 26
    end
    object ed_keterangan: TEdit
      Left = 224
      Top = 1
      Width = 793
      Height = 28
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'sarimi duo'
      OnKeyDown = ed_keteranganKeyDown
      ExplicitHeight = 34
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 97
    Width = 1018
    Height = 100
    Align = alTop
    TabOrder = 6
    object ed_Harga: TsCurrencyEdit
      Left = 616
      Top = 1
      Width = 401
      Height = 98
      Align = alRight
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -80
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '###,###,##0;-###,###,##0;0'
    end
    object mm_nama: TMemo
      Left = 1
      Top = 1
      Width = 615
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
    end
  end
  object pnlPilihan: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 97
    Align = alTop
    TabOrder = 7
    Visible = False
    object Lbl_5: TLabel
      Left = 516
      Top = 63
      Width = 58
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Harga'#13#10'ex. (1000/)'
    end
    object Lbl_2: TLabel
      Left = 584
      Top = 63
      Width = 45
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Qty'#13#10'ex. (5+)'
    end
    object Lbl_3: TLabel
      Left = 640
      Top = 63
      Width = 73
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Diskon %'#13#10'ex. (2.5*)'
    end
    object Lbl_4: TLabel
      Left = 720
      Top = 63
      Width = 79
      Height = 26
      Alignment = taCenter
      Caption = 'Ubah Diskon Rp'#13#10'ex. (500-)'
    end
    object BtnInsert: TButton
      Left = 640
      Top = 4
      Width = 120
      Height = 25
      Action = ac_Insert
      Caption = 'Tambah Harga (Insert)'
      TabOrder = 0
    end
    object BtnVoid: TButton
      Left = 640
      Top = 34
      Width = 120
      Height = 25
      Action = ac_void
      Caption = 'Void (Ctrl + Del)'
      TabOrder = 1
    end
    object BtnBatal: TButton
      Left = 512
      Top = 4
      Width = 120
      Height = 25
      Action = ac_Batal
      Caption = 'Batal (Shift + Del)'
      TabOrder = 2
    end
    object BtnKunci: TButton
      Left = 512
      Top = 34
      Width = 120
      Height = 25
      Action = ac_Kunci
      Caption = 'Kunci (Ctrl + L)'
      TabOrder = 3
    end
    object BtnReturn: TButton
      Left = 4
      Top = 60
      Width = 120
      Height = 25
      Action = ac_Return
      TabOrder = 4
    end
    object BtnPending: TButton
      Left = 128
      Top = 4
      Width = 120
      Height = 25
      Action = ac_Pending
      TabOrder = 5
    end
    object BtnLoad: TButton
      Left = 128
      Top = 32
      Width = 120
      Height = 25
      Action = ac_Load
      TabOrder = 6
    end
    object BtnGroup: TButton
      Left = 128
      Top = 60
      Width = 120
      Height = 25
      Action = ac_Group
      TabOrder = 7
    end
    object BtnSatuan: TButton
      Left = 256
      Top = 4
      Width = 120
      Height = 25
      Action = ac_Satuan
      TabOrder = 8
    end
    object BtnCetak: TButton
      Left = 384
      Top = 4
      Width = 120
      Height = 25
      Action = ac_cetak
      TabOrder = 9
    end
    object BtnPenjualanToko: TButton
      Left = 256
      Top = 32
      Width = 120
      Height = 25
      Action = ac_jual_global
      TabOrder = 10
    end
    object Btnsetting: TButton
      Left = 4
      Top = 32
      Width = 120
      Height = 25
      Action = ac_setting
      TabOrder = 11
    end
    object BtnCariBarang: TButton
      Left = 4
      Top = 4
      Width = 120
      Height = 25
      Action = ac_cari_barang
      TabOrder = 12
    end
    object Btnkartu_kredit: TButton
      Left = 384
      Top = 32
      Width = 120
      Height = 25
      Action = ac_kartu_kredit
      TabOrder = 13
    end
    object BtnDrawer: TButton
      Left = 256
      Top = 60
      Width = 120
      Height = 25
      Action = ac_drawer
      TabOrder = 14
    end
    object BtnKeterangan: TButton
      Left = 384
      Top = 60
      Width = 120
      Height = 25
      Action = ac_keterangan
      TabOrder = 15
    end
    object BtnRetail: TButton
      Left = 768
      Top = 4
      Width = 161
      Height = 25
      Action = ac_retail
      TabOrder = 16
    end
    object BtnTunai: TButton
      Left = 768
      Top = 34
      Width = 161
      Height = 25
      Action = ac_tunai
      TabOrder = 17
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 328
  end
  object t_pesan: TTimer
    Enabled = False
    Interval = 20
    OnTimer = t_pesanTimer
    Left = 32
    Top = 408
  end
  object sknprvdr1: TsSkinProvider
    AllowAnimation = False
    AllowExtBorders = False
    AllowBlendOnMoving = False
    DrawNonClientArea = False
    ShowAppIcon = False
    UseGlobalColor = False
    AddedTitle.ShowMainCaption = False
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
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
    end
    object ac_loadfile: TAction
      Caption = 'Load dari File'
      ImageIndex = 7
    end
    object ac_jual_global: TAction
      Caption = 'Penjualan (F9)'
      OnExecute = ac_jual_globalExecute
    end
    object ac_cek_update: TAction
      Caption = 'Cek Update'
    end
    object ac_setting: TAction
      Caption = 'Setting (F3)'
      OnExecute = ac_settingExecute
    end
    object ac_cari_barang: TAction
      Caption = 'Cari Barang (F2)'
      OnExecute = ac_cari_barangExecute
    end
    object ac_kartu_kredit: TAction
      Caption = 'Kartu Kredit (F12)'
      OnExecute = ac_kartu_kreditExecute
    end
    object ac_drawer: TAction
      Caption = 'Drawer (F10)'
      OnExecute = ac_drawerExecute
    end
    object ac_keterangan: TAction
      Caption = 'Keterangan (Ctrl + K)'
      OnExecute = ac_keteranganExecute
    end
    object ac_retail: TAction
      Caption = 'Ganti Retail/Grosir (Ctrl + R)'
      OnExecute = ac_retailExecute
    end
    object ac_tunai: TAction
      Caption = 'Ganti Tunai/Kredit (Ctrl + T)'
      OnExecute = ac_tunaiExecute
    end
  end
  object Q_time: TMyQuery
    Connection = dm.db_conn
    Left = 16
    Top = 328
  end
end
