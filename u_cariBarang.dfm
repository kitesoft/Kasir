object f_cariBarang: Tf_cariBarang
  Left = 683
  Top = 197
  Width = 570
  Height = 400
  Caption = 'f_cariBarang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TcxGrid
    Left = 0
    Top = 0
    Width = 554
    Height = 361
    Cursor = crHandPoint
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
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object tableview: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = tableviewCellDblClick
      DataController.DataSource = dm.ds_cari
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '< Data yang dicari  Tidak ada >'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      Styles.Inactive = dm.cxstyl1
      Styles.Selection = dm.cxstyl1
      object clmnColumn1: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kd_barang'
        Width = 93
      end
      object clmnColumn2: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'n_barang'
        Width = 396
      end
      object clmnColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'harga_jual3'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;0'
        Properties.EditFormat = '###,###,##0;0'
      end
    end
    object Level: TcxGridLevel
      GridView = tableview
    end
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
    SkinData.SkinSection = 'FORM'
    ResizeMode = rmBorder
    ShowAppIcon = False
    TitleButtons = <>
    UseGlobalColor = False
    Left = 8
    Top = 8
  end
end
