object F_Ubah_Satuan: TF_Ubah_Satuan
  Left = 567
  Top = 293
  BorderStyle = bsDialog
  Caption = 'Ubah Satuan/ Harga'
  ClientHeight = 242
  ClientWidth = 547
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
  object sLabel1: TLabel
    Left = 8
    Top = 8
    Width = 30
    Height = 19
    Caption = 'PID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sLabel2: TLabel
    Left = 8
    Top = 32
    Width = 107
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_kode: TLabel
    Left = 120
    Top = 8
    Width = 95
    Height = 19
    Caption = 'Kode Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object L_nama: TLabel
    Left = 120
    Top = 32
    Width = 101
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Grid: TcxGrid
    Left = 0
    Top = 70
    Width = 547
    Height = 172
    Align = alBottom
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
    object tableview: TcxGridTableView
      OnDblClick = tableviewDblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Append.Visible = False
      FilterBox.CustomizeDialog = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 10
      Styles.Inactive = dm.cxstyl1
      Styles.Selection = dm.cxstyl1
      object tv_barcode: TcxGridColumn
        Caption = 'Barcode'
        Width = 194
      end
      object tv_Qty: TcxGridColumn
        Caption = 'Qty'
      end
      object tv_Satuan: TcxGridColumn
        Caption = 'Satuan'
        GroupSummaryAlignment = taCenter
        Options.Editing = False
        Width = 123
      end
      object tv_Harga: TcxGridColumn
        Caption = 'Harga'
        DataBinding.ValueType = 'Currency'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        FooterAlignmentHorz = taRightJustify
        GroupSummaryAlignment = taRightJustify
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 226
      end
      object tv_Column1: TcxGridColumn
        Visible = False
      end
    end
    object Level: TcxGridLevel
      GridView = tableview
    end
  end
  object sSkinProvider1: TsSkinProvider
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 968
    Top = 192
  end
end
