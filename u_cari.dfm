object f_cari: Tf_cari
  Left = 306
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Pencarian'
  ClientHeight = 455
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Ed_cari: TsEdit
    Left = 4
    Top = 8
    Width = 573
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Ed_cariChange
    OnKeyDown = Ed_cariKeyDown
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
  object grid: TcxGrid
    Left = 4
    Top = 32
    Width = 573
    Height = 385
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    object t_data: TcxGridDBTableView
      OnDblClick = t_dataDblClick
      OnKeyDown = t_dataKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_cari
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object clm1: TcxGridDBColumn
        Tag = 1
        Visible = False
        Width = 55
        IsCaptionAssigned = True
      end
      object clm2: TcxGridDBColumn
        Tag = 2
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
        IsCaptionAssigned = True
      end
      object clm3: TcxGridDBColumn
        Tag = 3
        Visible = False
        Width = 335
        IsCaptionAssigned = True
      end
      object clm4: TcxGridDBColumn
        Tag = 4
        Visible = False
        Width = 79
        IsCaptionAssigned = True
      end
    end
    object l_data: TcxGridLevel
      GridView = t_data
    end
  end
  object b_keluar: TsButton
    Left = 501
    Top = 424
    Width = 75
    Height = 25
    Caption = '&Keluar'
    ModalResult = 2
    TabOrder = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object B_Ambil: TsButton
    Left = 416
    Top = 424
    Width = 75
    Height = 25
    Caption = '&Ambil'
    ModalResult = 1
    TabOrder = 3
    OnClick = B_AmbilClick
    SkinData.SkinSection = 'BUTTON'
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 352
    Top = 32
  end
  object ds_cari: TDataSource
    DataSet = Q_cari
    Left = 48
    Top = 56
  end
  object Q_cari: TmySQLQuery
    Database = dm.My_Conn
    SQL.Strings = (
      '')
    Left = 8
    Top = 56
  end
end
