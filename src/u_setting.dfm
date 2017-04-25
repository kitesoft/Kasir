object FSetting: TFSetting
  Left = 371
  Top = 221
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pengaturan'
  ClientHeight = 291
  ClientWidth = 636
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
  object Lbl3: TLabel
    Left = 8
    Top = 256
    Width = 162
    Height = 13
    Caption = 'Harga Tambahan (ex: Min. Dingin)'
  end
  object gb1: TGroupBox
    Left = 8
    Top = 8
    Width = 329
    Height = 105
    Caption = 'Skin'
    TabOrder = 0
    object SbSkin: TsSpeedButton
      Left = 8
      Top = 24
      Width = 81
      Height = 21
      Caption = 'Ubah Skin (F3)'
      OnClick = SbSkinClick
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object EdSkin: TEdit
      Left = 96
      Top = 24
      Width = 225
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object TbHue: TTrackBar
      Left = 8
      Top = 56
      Width = 150
      Height = 45
      Hint = 'Hue'
      Max = 360
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = TbHueChange
    end
    object TbSaturation: TTrackBar
      Left = 168
      Top = 56
      Width = 150
      Height = 45
      Hint = 'Saturation'
      Max = 100
      Min = -100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnChange = TbSaturationChange
    end
  end
  object gb2: TGroupBox
    Left = 344
    Top = 8
    Width = 281
    Height = 105
    Caption = 'Pesan'
    TabOrder = 1
    object SbPesan: TsSpeedButton
      Left = 96
      Top = 68
      Width = 177
      Height = 21
      Caption = 'Lihat Pesan (F4)'
      OnClick = SbPesanClick
      SkinData.SkinSection = 'SPEEDBUTTON'
    end
    object cbFontName: TComboBox
      Left = 10
      Top = 20
      Width = 180
      Height = 21
      Style = csDropDownList
      ParentColor = True
      Sorted = True
      TabOrder = 0
    end
    object crb_bg: TColorBox
      Left = 10
      Top = 43
      Width = 90
      Height = 22
      Selected = clRed
      ParentColor = True
      TabOrder = 1
    end
    object cbsize: TComboBox
      Left = 10
      Top = 68
      Width = 44
      Height = 21
      Style = csDropDownList
      ItemIndex = 2
      ParentColor = True
      TabOrder = 2
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
    object cbspeed: TComboBox
      Left = 54
      Top = 68
      Width = 44
      Height = 21
      Style = csDropDownList
      ParentColor = True
      TabOrder = 3
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
    object crb_font: TColorBox
      Left = 100
      Top = 43
      Width = 90
      Height = 22
      Selected = clYellow
      ParentColor = True
      TabOrder = 4
    end
    object cb_aktif: TComboBox
      Left = 194
      Top = 44
      Width = 80
      Height = 21
      Style = csDropDownList
      Color = 14672870
      TabOrder = 5
      Items.Strings = (
        'Mati'
        'Aktif')
    end
    object tlb1: TToolBar
      Left = 194
      Top = 15
      Width = 79
      Height = 31
      Align = alNone
      ButtonWidth = 25
      Caption = 'tlb1'
      Images = dm.gambar
      TabOrder = 6
      object btnBold: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = 'B'
        ImageIndex = 3
        Style = tbsCheck
        OnClick = btnStyleClick
      end
      object btnItalic: TToolButton
        Tag = 2
        Left = 25
        Top = 0
        Caption = 'Italic'
        ImageIndex = 4
        Style = tbsCheck
        OnClick = btnStyleClick
      end
      object btnUnderline: TToolButton
        Tag = 3
        Left = 50
        Top = 0
        Caption = 'Underline'
        ImageIndex = 5
        Style = tbsCheck
        OnClick = btnStyleClick
      end
    end
  end
  object BtnSimpan: TButton
    Left = 552
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = BtnSimpanClick
  end
  object gb3: TGroupBox
    Left = 8
    Top = 120
    Width = 617
    Height = 129
    Caption = 'Struk'
    TabOrder = 3
    object Lbl1: TLabel
      Left = 16
      Top = 16
      Width = 105
      Height = 13
      Caption = 'Jenis Dan Lebar Struk'
    end
    object Lbl2: TLabel
      Left = 16
      Top = 48
      Width = 91
      Height = 13
      Caption = 'Pesan Dalam Struk'
    end
    object cb_jenis_struk: TComboBox
      Left = 130
      Top = 14
      Width = 191
      Height = 21
      Style = csDropDownList
      Color = 14672870
      TabOrder = 0
      Items.Strings = (
        'Struk Kecil'
        'Struk Besar')
    end
    object cb_lebar_struk: TComboBox
      Left = 328
      Top = 14
      Width = 41
      Height = 21
      Color = 14672870
      TabOrder = 1
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
    object MmFooterStruk: TMemo
      Left = 130
      Top = 48
      Width = 479
      Height = 73
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
    end
    object ChkDesign: TCheckBox
      Left = 376
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Design Struk Kecil'
      TabOrder = 3
    end
  end
  object ed_tambahan: TEdit
    Left = 176
    Top = 254
    Width = 89
    Height = 21
    ParentColor = True
    TabOrder = 4
  end
end
