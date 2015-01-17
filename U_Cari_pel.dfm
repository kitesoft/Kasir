object F_Cari_pelanggan: TF_Cari_pelanggan
  Left = 319
  Top = 167
  BorderStyle = bsDialog
  Caption = 'Cari Pelanggan'
  ClientHeight = 372
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DB_Cari: TDBGrid
    Left = 6
    Top = 5
    Width = 859
    Height = 321
    DataSource = DS_pel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Rockwell'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Rockwell'
    TitleFont.Style = []
    OnDblClick = DB_CariDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'kd_pelanggan'
        Title.Caption = 'Kode Pelanggan'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_pelanggan'
        Title.Caption = 'Nama Pelanggan'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Caption = 'Alamat'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telephone'
        Title.Caption = 'Telephone/ HP'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'limit'
        Title.Caption = 'Limit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'piutang'
        Title.Caption = 'Piutang'
        Width = 78
        Visible = True
      end>
  end
  object ed_cari: TsEdit
    Left = 8
    Top = 331
    Width = 281
    Height = 27
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = ed_cariChange
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
  object B_pilih: TsBitBtn
    Left = 296
    Top = 331
    Width = 81
    Height = 27
    Cursor = crHandPoint
    Caption = 'Pilih'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    OnClick = B_pilihClick
    NumGlyphs = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object DS_pel: TDataSource
    DataSet = dm.Q_show
    Left = 600
    Top = 56
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 688
    Top = 16
  end
end
