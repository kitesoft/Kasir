object f_returnJual: Tf_returnJual
  Left = 201
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Return Jual'
  ClientHeight = 433
  ClientWidth = 624
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
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 433
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object panel2: TsPanel
      Left = 1
      Top = 1
      Width = 622
      Height = 88
      Align = alTop
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sBevel1: TsBevel
        Left = 1
        Top = 56
        Width = 620
        Height = 31
        Align = alBottom
      end
      object sLabel1: TsLabel
        Left = 240
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Faktur Return'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel4: TsLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 13
        Caption = 'Pelanggan'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sb_pelanggan: TsSpeedButton
        Tag = 9
        Left = 212
        Top = 6
        Width = 24
        Height = 21
        OnClick = sb_pelangganClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 0
        Images = dm.gambar
      end
      object sb_cari: TsSpeedButton
        Tag = 9
        Left = 4
        Top = 62
        Width = 24
        Height = 21
        OnClick = sb_cariClick
        SkinData.SkinSection = 'SPEEDBUTTON'
        ImageIndex = 0
        Images = dm.gambar
      end
      object l_toko: TsLabel
        Left = 64
        Top = 30
        Width = 82
        Height = 13
        Caption = 'Nama Pelanggan'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel5: TsLabel
        Left = 240
        Top = 32
        Width = 52
        Height = 13
        Caption = 'Faktur Jual'
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object ed_no_faktur: TsEdit
        Left = 328
        Top = 8
        Width = 201
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = ed_no_fakturChange
        OnKeyDown = ed_no_fakturKeyDown
        SkinData.CustomColor = True
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
      object ed_pelanggan: TsEdit
        Left = 64
        Top = 6
        Width = 145
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = ed_pelangganChange
        OnKeyDown = ed_pelangganKeyDown
        SkinData.CustomColor = True
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
      object ed_code: TsEdit
        Left = 32
        Top = 62
        Width = 585
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyDown = ed_codeKeyDown
        OnKeyPress = ed_codeKeyPress
        SkinData.CustomColor = True
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
      object ed_fak_jual: TsEdit
        Left = 328
        Top = 32
        Width = 201
        Height = 21
        CharCase = ecUpperCase
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = ed_fak_jualChange
        OnKeyPress = ed_fak_jualKeyPress
        SkinData.CustomColor = True
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
      object b_auto: TsButton
        Left = 540
        Top = 8
        Width = 73
        Height = 21
        Caption = '&Auto Kode'
        TabOrder = 2
        OnClick = b_autoClick
        SkinData.SkinSection = 'BUTTON'
      end
    end
    object panel3: TsPanel
      Left = 1
      Top = 366
      Width = 622
      Height = 66
      Align = alBottom
      TabOrder = 2
      SkinData.SkinSection = 'PANEL'
      object ed_nilai_faktur: TsCurrencyEdit
        Left = 312
        Top = 1
        Width = 309
        Height = 64
        AutoSize = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        Color = 15263976
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -59
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
        SkinData.CustomColor = True
        SkinData.CustomFont = True
        SkinData.SkinSection = 'PANEL'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
        DecimalPlaces = 0
        DisplayFormat = '###,###,##0;-###,###,##0;0'
      end
      object spnl1: TsPanel
        Left = 1
        Top = 1
        Width = 144
        Height = 64
        Align = alLeft
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        object b_print: TsButton
          Left = 8
          Top = 32
          Width = 129
          Height = 25
          Caption = '&Print Preview'
          Enabled = False
          TabOrder = 1
          OnClick = b_printClick
          SkinData.SkinSection = 'BUTTON'
        end
        object b_simpan: TsButton
          Left = 8
          Top = 4
          Width = 129
          Height = 25
          Caption = '&Simpan'
          TabOrder = 0
          OnClick = b_simpanClick
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object Grid: TcxGrid
      Left = 1
      Top = 89
      Width = 622
      Height = 277
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      object TableView: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Append.Visible = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total'
            Kind = skCount
            Column = ableViewColumn1
            DisplayText = 'Total'
          end
          item
            Format = '0 Item Barang'
            Kind = skCount
            Column = ableViewColumn2
          end
          item
            Format = '###,###,##0;(###,###,##0);0'
            Kind = skSum
            Column = t_view_Qty
          end
          item
            Format = '###,###,##0;(###,###,##0);0'
            Kind = skSum
            Column = t_view_harga
          end
          item
            Format = '###,###,##0;(###,###,##0);0'
            Kind = skSum
            OnGetText = TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText
            Column = t_view_total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<Belum ada Data>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 10
        object ableViewColumn1: TcxGridColumn
          Caption = 'PID'
          GroupSummaryAlignment = taCenter
          Options.Editing = False
          Width = 73
        end
        object ableViewColumn2: TcxGridColumn
          Caption = 'Deskripsi'
          GroupSummaryAlignment = taCenter
          Options.Editing = False
          Width = 281
        end
        object t_view_Qty: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
          Properties.EditFormat = '###,###,##0;(###,###,##0);0'
          Properties.MinValue = 1.000000000000000000
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.IncSearch = False
          Width = 77
        end
        object t_view_harga: TcxGridColumn
          Caption = 'Harga'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
          Properties.EditFormat = '###,###,##0;(###,###,##0);0'
          GroupSummaryAlignment = taRightJustify
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 107
        end
        object t_view_total: TcxGridColumn
          Caption = 'Total Harga'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
          Properties.EditFormat = '###,###,##0;(###,###,##0);0'
          GroupSummaryAlignment = taRightJustify
          HeaderAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 85
        end
        object t_view_barcode: TcxGridColumn
          Caption = 'Barcode'
          Visible = False
          Options.Editing = False
        end
      end
      object Level: TcxGridLevel
        GridView = TableView
      end
    end
  end
  object od: TsOpenDialog
    DefaultExt = '.srk'
    Filter = 'RK File|*.srk'
    Left = 883
    Top = 240
  end
  object sd: TsSaveDialog
    DefaultExt = '.srk'
    Filter = 'RK File|*.srk'
    Left = 851
    Top = 240
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 8
    Top = 248
  end
end
