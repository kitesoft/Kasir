object F_Login: TF_Login
  Left = 358
  Top = 228
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 296
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l_1: TLabel
    Left = 8
    Top = 256
    Width = 216
    Height = 16
    Caption = 'Tekan F2 untuk merubah Perusahaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object gbUser: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 217
    Caption = '| USER |'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object sLabel4: TLabel
      Left = 8
      Top = 40
      Width = 76
      Height = 19
      Caption = 'Kode User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel5: TLabel
      Left = 8
      Top = 96
      Width = 82
      Height = 19
      Caption = 'Nama User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object sLabel6: TLabel
      Left = 8
      Top = 152
      Width = 108
      Height = 19
      Caption = 'Password User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object EdKdUser: TEdit
      Left = 32
      Top = 64
      Width = 201
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EdKdUserChange
      OnKeyDown = EdKdUserKeyDown
    end
    object EdNamaUser: TEdit
      Left = 32
      Top = 120
      Width = 201
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EdPasswordUser: TEdit
      Left = 32
      Top = 176
      Width = 201
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      PasswordChar = '@'
      TabOrder = 1
      OnKeyDown = EdPasswordUserKeyDown
    end
  end
  object sBitBtn2: TBitBtn
    Left = 400
    Top = 240
    Width = 81
    Height = 33
    Cursor = crHandPoint
    Caption = '&Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ModalResult = 2
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = sBitBtn2Click
  end
  object BtnLogin: TButton
    Left = 288
    Top = 240
    Width = 75
    Height = 33
    Caption = '&Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnLoginClick
  end
  object sb: TStatusBar
    Left = 0
    Top = 277
    Width = 506
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Width = 50
      end>
    OnClick = sbClick
  end
  object gbServer: TGroupBox
    Left = 256
    Top = 8
    Width = 241
    Height = 217
    Caption = '| SERVER |'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Lbl1: TLabel
      Left = 8
      Top = 40
      Width = 111
      Height = 19
      Caption = 'Kode Operator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object Lbl2: TLabel
      Left = 8
      Top = 96
      Width = 117
      Height = 19
      Caption = 'Nama Operator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object Lbl3: TLabel
      Left = 8
      Top = 152
      Width = 143
      Height = 19
      Caption = 'Password Operator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
    end
    object EdKdOperator: TEdit
      Left = 32
      Top = 64
      Width = 201
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EdKdOperatorChange
      OnKeyDown = EdKdOperatorKeyDown
    end
    object EdNamaOperator: TEdit
      Left = 32
      Top = 120
      Width = 201
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EdPasswordOperator: TEdit
      Left = 32
      Top = 176
      Width = 201
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Rockwell'
      Font.Style = []
      ParentFont = False
      PasswordChar = '@'
      TabOrder = 1
      OnKeyDown = EdPasswordOperatorKeyDown
    end
  end
end
