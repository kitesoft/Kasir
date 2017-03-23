object f_list_sales: Tf_list_sales
  Left = 181
  Top = 109
  BorderStyle = bsDialog
  Caption = 'Penjualan Global'
  ClientHeight = 524
  ClientWidth = 1008
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
  object grid: TcxGrid
    Left = 0
    Top = 21
    Width = 1008
    Height = 467
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object t_data1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = t_data1CellDblClick
      DataController.DataSource = dm.ds_jual_global
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,###,##0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '[Tidak ada data yang bisa ditampilkan]'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Inactive = dm.cxstyl1
      object clmn_data1kd_transaksi: TcxGridDBColumn
        Caption = 'Kode Transaksi'
        DataBinding.FieldName = 'kd_transaksi'
        Width = 124
      end
      object clmn_data1tgl_transaksi: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tgl_transaksi'
        Width = 70
      end
      object clmn_data1jam_transaksi: TcxGridDBColumn
        Caption = 'Jam'
        DataBinding.FieldName = 'jam_transaksi'
        Width = 60
      end
      object clmn_data1n_pelanggan: TcxGridDBColumn
        Caption = 'Pelanggan'
        DataBinding.FieldName = 'n_pelanggan'
        Width = 130
      end
      object clmn_data1kd_macam_harga: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'kd_macam_harga'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Retail'
            ImageIndex = 0
            Value = 'HETK'
          end
          item
            Description = 'Grosir'
            Value = 'HGTK'
          end>
        Width = 52
      end
      object clmn_data1tunai: TcxGridDBColumn
        Caption = 'Bayar'
        DataBinding.FieldName = 'tunai'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'Tunai'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Kredit'
            Value = '0'
          end>
        Width = 44
      end
      object clmn_data1sub_total: TcxGridDBColumn
        DataBinding.FieldName = 'sub_total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        Width = 51
      end
      object clmn_data1discountGP: TcxGridDBColumn
        Caption = 'Diskon Rp'
        DataBinding.FieldName = 'discountGP'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        Width = 53
      end
      object clmn_data1grand_total: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'grand_total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '###,###,##0;(###,###,##0);0'
        Properties.EditFormat = '###,###,##0;(###,###,##0);0'
        Width = 48
      end
      object clmn_data1kd_user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'kd_user'
        Width = 57
      end
      object clmn_data1KD_pengawas: TcxGridDBColumn
        Caption = 'Pengawas'
        DataBinding.FieldName = 'KD_pengawas'
        Width = 52
      end
      object clmn_data1void: TcxGridDBColumn
        Caption = 'Void'
        DataBinding.FieldName = 'void'
        Width = 41
      end
      object clmn_data1komp: TcxGridDBColumn
        Caption = 'Alamat IP'
        DataBinding.FieldName = 'komp'
        Width = 86
      end
    end
    object l_data: TcxGridLevel
      GridView = t_data1
    end
  end
  object ed_cari: TsEdit
    Left = 0
    Top = 0
    Width = 1008
    Height = 21
    TabOrder = 1
    OnKeyDown = ed_cariKeyDown
    Align = alTop
    SkinData.SkinSection = 'EDIT'
  end
  object p1: TsPanel
    Left = 0
    Top = 488
    Width = 1008
    Height = 36
    Align = alBottom
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object b_kecil: TsButton
      Left = 888
      Top = 4
      Width = 113
      Height = 25
      Caption = 'Cetak Struk &Kecil'
      TabOrder = 0
      OnClick = b_kecilClick
      SkinData.SkinSection = 'BUTTON'
    end
    object b_besar: TsButton
      Left = 784
      Top = 4
      Width = 97
      Height = 25
      Caption = 'Cetak Struk &Besar'
      TabOrder = 1
      OnClick = b_besarClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
