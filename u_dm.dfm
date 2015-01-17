object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 324
  Top = 195
  Height = 343
  Width = 397
  object My_Conn: TmySQLDatabase
    DatabaseName = 'profit'
    UserName = 'root'
    UserPassword = 'server'
    Host = 'localhost'
    ConnectOptions = []
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=profit'
      'Host=localhost'
      'UID=root'
      'PWD=server')
    Left = 8
    Top = 8
  end
  object Q_show: TmySQLQuery
    Database = My_Conn
    Left = 8
    Top = 64
  end
  object Q_exe: TmySQLQuery
    Database = My_Conn
    Left = 48
    Top = 64
  end
  object Q_temp: TmySQLQuery
    Database = My_Conn
    Left = 88
    Top = 8
  end
  object Q_print: TmySQLQuery
    Database = My_Conn
    SQL.Strings = (
      '')
    Left = 8
    Top = 112
  end
  object db_laporan: TfrxDBDataset
    UserName = 'db_laporan'
    CloseDataSource = False
    DataSet = Q_print
    BCDToCurrency = False
    Left = 56
    Top = 112
  end
  object laporan: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40974.799996296300000000
    ReportOptions.LastChange = 41383.484545300930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 168
    Datasets = <
      item
        DataSet = db_laporan
        DataSetName = 'db_laporan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        DataSet = db_laporan
        DataSetName = 'db_laporan'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 102.047310000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [db_laporan."n_barang"]')
          ParentFont = False
        end
        object db_laporanQty: TfrxMemoView
          Left = 491.338900000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[db_laporan."Qty_purchase"]')
          ParentFont = False
        end
        object db_laporantotal_harga: TfrxMemoView
          Left = 650.079160000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          DisplayFormat.FormatStr = '###,###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[db_laporan."harga_pokok"] ')
          ParentFont = False
        end
        object db_laporankd_barang: TfrxMemoView
          Left = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [db_laporan."kd_barang"]')
          ParentFont = False
        end
        object db_laporanharga_jual: TfrxMemoView
          Left = 544.252320000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          DisplayFormat.FormatStr = '###,###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[StrToFloat(<db_laporan."harga_pokok">) / StrToFloat(<db_laporan' +
              '."qty_purchase">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [Line]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object db_laporann_perusahaan: TfrxMemoView
          Width = 377.953000000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[db_laporan."kd_perusahaan"] - [db_laporan."n_perusahaan"]')
          ParentFont = False
        end
        object db_laporanalamat: TfrxMemoView
          Top = 18.897650000000000000
          Width = 377.953000000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[db_laporan."alamat"] [db_laporan."telp"]')
          ParentFont = False
        end
        object db_laporanno_transaksi: TfrxMemoView
          Left = 68.031540000000000000
          Top = 60.472480000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ': [db_laporan."kd_purchase"]')
          ParentFont = False
        end
        object db_laporantgl_transaksi: TfrxMemoView
          Left = 608.504330000000000000
          Top = 60.472480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ': [<db_laporan."tgl_purchase">]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 102.047310000000000000
          Top = 83.149660000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            ' Deskripsi Barang')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Top = 83.149660000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 650.079160000000000000
          Top = 83.149660000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          DisplayFormat.FormatStr = '###,###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Jumlah ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 34.015770000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            ' PID')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 544.252320000000000000
          Top = 83.149660000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Harga Sat ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Top = 83.149660000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            ' No')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 377.953000000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Supplier : ([db_laporan."kd_suplier"]) [db_laporan."n_supp"] ')
          ParentFont = False
        end
        object db_laporanNPWP: TfrxMemoView
          Top = 37.795300000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'NPWP : [db_laporan."NPWP"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[db_laporan."alamat_supplier"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'KODE PO')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 521.575140000000000000
          Top = 60.472480000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'TGL. FAKTUR')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 37.795260940000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FORM PURCHASE ORDER')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 17.000000000000000000
        Top = 400.630180000000000000
        Width = 755.906000000000000000
        object Memo13: TfrxMemoView
          Width = 574.488560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Print out pada : [Date] / [Time] oleh : [db_laporan."n_user"] ')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 574.488560000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Halaman [Page] dari [TotalPages#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 117.165430000000000000
        Top = 222.992270000000000000
        Width = 755.906000000000000000
        object db_laporansub_total: TfrxMemoView
          Left = 650.079160000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          DisplayFormat.FormatStr = '###,###,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[sum(<db_laporan."harga_pokok">)] ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 86.929190000000000000
          Top = 22.677180000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ' Terbilang    :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 544.252320000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[sum(<db_laporan."Qty_purchase">)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 41.574830000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ' Keterangan :')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 60.472480000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ' 1. Order dianggap sah bila ada ttd dan stempel pemesan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 79.370130000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ' 2. Pengiriman Barang wajib melampirkan FPO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 98.267780000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8 = (
            ' 3. Jika terjadi perbedaan, maka yang menjadi acuan adalah FPO')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 544.252320000000000000
          Top = 41.574830000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            'Sales')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 438.425480000000000000
          Top = 41.574830000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            'Pengirim')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 650.079160000000000000
          Top = 41.574830000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            'Pemesan')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 438.425480000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            '(......................)')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 544.252320000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            '(......................)')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 650.079160000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = db_laporan
          DataSetName = 'db_laporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8 = (
            '(......................)')
          ParentFont = False
        end
      end
    end
  end
  object ds_Show: TDataSource
    DataSet = Q_show
    Left = 88
    Top = 64
  end
  object ds_temp: TDataSource
    DataSet = Q_temp
    Left = 128
    Top = 8
  end
  object Q_cari: TmySQLQuery
    Database = My_Conn
    Left = 120
    Top = 144
  end
  object ds_cari: TDataSource
    DataSet = Q_cari
    Left = 160
    Top = 144
  end
  object sm: TsSkinManager
    ExtendedBorders = True
    AnimEffects.BlendOnMoving.Active = True
    AnimEffects.DialogShow.Time = 100
    AnimEffects.FormShow.Time = 100
    AnimEffects.FormHide.Time = 100
    AnimEffects.DialogHide.Time = 100
    AnimEffects.PageChange.Time = 60
    AnimEffects.SkinChanging.Time = 200
    Active = False
    InternalSkins = <
      item
        Name = 'WEB (internal)'
        Shadow1Color = clBlack
        Shadow1Offset = 0
        Shadow1Transparency = 0
        Data = {
          41537A66040000000B0000004F7074696F6E732E646174D7310000789CDD1AD9
          6EE3C8F1DD80FE21FA809DF4C903060153124D1143910245D99E5DC483205824
          4F59601FF2E86F4F555F3CD49429C933BBB33300DD6C96EAEEAAEAEAFE252FEB
          555A16D563FD8FC5DD2E3DB459B32ADA5DBA4FF4CBA7D56EBFB87BCA9A435157
          49F849D0C55D7A6CB775931C7EFDFDDFBFFE2DFFEDBFFFFACF3F7FFFED7F8BBB
          755DC2340D68C4258B1677DBBAB55392C254B0B87BAC2B3327C3280862C0B6AA
          9B4DD61840CE1821842DEEDA75993DB6F0CB300C19958BBBC336DDD4CF54C345
          A1084818BBD9FAF1F19001B49B5895C726E188FC65BDCDD69FB34DF24018E30F
          845009A3208211270F3001BFD9A565D981C13F04530F0A0F461F288201AE6335
          C686B01A1BE0EDB0F501353E462D3ECE1CBEBC49BF68640A050272CAC7C81C94
          C604BF379804D7989A7453D41D411A58CE6868E404110C589F33FD5989A08451
          0A01400501DF250B910A7C9702E901930AD1AA58D7D5362BF7C853843842450C
          344BA9C1A1607645A540028D1C40B806EE40D6657DC850033236405C4663A0AA
          6E7689FD82FC0AC134671606B1A4655D212AFD9138B6C580A5F445492E0C3536
          A076E84926B86196881804A044F460B4644CE147100E5F472056321A860688A1
          2A87405632222D22F4843E4C5F32E39AD2FA1363C64D3AC9A630B5455B66AB63
          DBD695438450240A7B56CB9B625FECD21C8971657D7447CED1364C1ABF2D0EFB
          749D253F29953645BE6D1358B1D98B5EC9C9528F3EEDAB7CC99664C997C8283C
          446047F0702B7F576FB2C4BD3D179B769BC41829E08B59D696FD6DA68871A0B6
          CE2A884E06E02786B1EBC57CC6D0B32A9E20AAE595425CB4F53E21185370C039
          6118198ACF59B6DF1E33E41DC58690F6335A5D69060D25D49A14E281A1D40802
          61B045E5292F56DA89D4B2A01AA45DAF6AD0EF2E8904B84C0C781777BFACD246
          F10EE1F5D0A66D7648848B948CC432E2613F2C7601CF454F4965C00557333E40
          AD38881487CFC92B30435FD1BC300A388C82005F4F1EE295BECA57546C935660
          CF26ABD65F124A8822733A09926C8AA702087582506F3C3FFD6D8E8107ECB587
          300F7F92DED4266DD3A4FA7B3A96420900CE870F948230F74A7A0F9880FF54B1
          976D8A76C0DB74EE2113E414A5F01583BF7BED3F901C35E4D03F3B72CC919342
          C62C0ACFA43A4794469632575689F121C60F668976E9D4D11878842363B81BB9
          5DC722E34110CAE81DB7A3240E43C8E533FDEE441AE9918628698891A65B2F54
          32CAE2DE0AA244C624208112266FEAE31EB2A5D7BAB6D898E5895EAB8F6C4DC7
          8FBED5B745E575321E064CCAF8AC9341367DC5980B2301CAA17A29865639CAE7
          283AD9E4CA0406766951EDB2EAE863E26C38192FC2C1CA54CBD0FEFEDE0D98B8
          67F7E47EC607B07ECC63EA3ED8F7F751119C57A2EDD32A2BBF96F5B34F36A8F7
          582CC2B30AA6D2DA93AAD047B97741F5EDB96FEABCC90E87AD87A68BBBB779CD
          C08CC0F33E6D217355C91B56276F88E90D83F61BBAC61BBE2CEE54061E18CABF
          CA5541A7737AC73F9FB536066B9ACC4E038F40B1CAB32A5D955041523B518044
          690B3B04509F36E661DDD465792831636CBD41E81BE43EAE2D0EA601B99D03C8
          F10366F50AF38AE85D76C8FEF100B9FCF2EC37F69E2E8931E73D64F88174DE33
          D616F0D2D67539E66486C57D5E2C5CC693E144C6A39A8F19E1C310BFB7E9E93E
          C6D54DBA7737C059A3D77D966DCE7930053BFBF78DB37DE43D9340758FAAC0B8
          8CB513A59D71FA0F6EE3F26D0BC323EC4D2B60E6C23D51E82C7E274B4B156927
          4A4BA7285DFDCE8CE6137E7A454CD7A10728535F543FBB4606BF7EBAE5D7EC26
          DAEC1ADAD90B98BD2CAACC5B1B5021B8B8BA34908207129636946994725CD954
          6573FD6AFF129CD5650A94284356D8E569E962275735A5DE908A28269164C33A
          93B338B060AABDE4A08065D8421B8E479152063620CAAE42EF6A003A8AD8A76C
          75C650BB28D8CCE77FDE9D83EAFD0C8A6D3E33D1DD1617DB7405BBF3F7A8FAD9
          1E850C86EAA00283076A87FAB443BA2A60BE737936B2BDD96E2FABC5D14EF771
          123162256272E88746AC4B255235779EAD813CC49D31BBD75415944756F52234
          2C9FA87EB8A3EA71A056EE8D0C50B51E22A733EAAD00FB0CB4E89A8FED47D8A9
          B71A2575CB548C8D75859D80C991766EE692582E75F438B1D46DDE3454E97732
          25E0DB66A9EE510D91311E9A4A97F178287317C4E949D9DD0F977A4A04F04EA7
          339547AC59E9D554C8A63072A5B37D7703533A7B82D1384869CC8272D88CC386
          3C8C441038BCE6D5FEED0AF24D93E6D3DB9C898C4C3C396C56DCBFA6296145F0
          7412941079F194D5CF15329D783227B336A7F2FCE6DDF6154DDBF3E96C6110BA
          FA777A2B879DACF4987BCBB3F90531B9BC69D5DF8B3FFDE07B7100B30D14956A
          E17DD02DE9771F566D7512D9BFBBC49EED11790D2F90382FBFECB78A041EEEC4
          FAD4C71CCEB0589FFFF4453ECD137F0599F1CCCBC8CC4E651E578E3FB6C42C52
          47C0311E06ABA3637E2AB1A7B8FC4B082DADD0B473ED75BD5BD520F3F7925627
          0955BCA90249880969CF3584FC651CB6EE3EA8DBF5816DAD699BCD4BE3135A75
          A69B38BAF9060773038F8AD9D8A398F1A8B4DC6FD30F38309C9D852F699F1AFA
          AED0B1EF6EE06D9F7E555745AE3806F89826AAAED1559F4EB8D3AC6FE36DAE89
          FA753BA8A67E984EEA126219B28E77AB967C499764090E44DD83E987749D34C0
          E53D6BA66114C16FDE3BC80DC28007575B562A6756710423DF541CA1672D6B04
          D1417CD4550E6C6E09420CB9E13BED778FDB78A41AA787B9DAF0B77EF243F1B3
          BAA4B2CDE1071822226CA68E2BCF41653AEBD643EF08D2D7F2FDF31F41AA9B33
          6737FAB3F4704AAEE391088E3C321C491C71C3A30A8065817033E35E44621A06
          E282FDFC0D41EA395B8D73FD154D70735DE9C3DBAD4DBAFE3CD8E8CF569C6776
          26777A0BBADEA6559595A3DD7834EDC7AE8FAD7F6FD23B9435F61696BA8F1560
          7A77404F76F7A0AEF7A9EB5CEA6257C034545BAC3FDBEB5C4CDD2AC46B731C51
          9240DF73431073294CDD1404400762AEC2CD56B72A383EA818FAA38B0E937C57
          45FE03E65E5BD32B2DC6F860EF9F62F6FA9A1FD21F8F5D7FBC6BE4533712A716
          1C1FB0475210117507ECE6DD0D6C2BCCE700F6A6CD8DF707547756D5024C9DCB
          4EDD1FB8C217E78AA7CF972785B9E03C4D9D53A8BA95AB765EE41C81F45CC25D
          8618E7D36F7439E2B8DFD4CFD5C4C6F786CDE21F79036262FD5FA441CAF1EE41
          A741F3EE06BDFD5156666B24EE4BC1248EA330A0B754CA17558BDEA342FFA9E2
          A8025769529987B169F3B02E62FD1FF4F4CE280B00000042746E487567652E62
          6D7036200100789CED9D09701455FAC07117B6B4D82DB7083904C25F575D59AA
          B4B616D9554BB15656AB5650231A8810094110145057F100351039420C04E40C
          84809800E190332087441340C21D02E126070990037201010292FFAFFB651ECD
          4C32994C66A6BB23AFBEA99AE97EEFFB7EDDF3F57BDFEB7EFDDE732FFDF3FEBB
          9A29E99F7C3AF0F999CF683E7735F353B737ABD9AF4DD5CEA69B376FFEFAEBAF
          D7AF5FBF72E54A7979797171717E7E7E5656D6B163C70E1D3A74E0C081FDFBF7
          EF53135FF8C9467691816C64A60805298E1254398DD148FE6BD7AE5DBA74E9C2
          850B509D3871E2E0C1837BF7EEFDE5975F5253537FFAE9A72D6AE20B3FD9C82E
          32908DCC14A120C5EFF03B477EF5EA557CA0A0A0203B3B1BDF484B4B4B4E4E4E
          4A4A5ABE7CF9A2458B162C5810171717AB26BEF0938DEC2203D9C84C110A521C
          25A8F2E45160E8C68D1B972F5FE61CE6E6E642B27DFBF6C4C4C4A8A8A84F3EF9
          E4EDB7DF0E0E0E0E0C0C7CF5D5575F51135FF8C9467691816C64A60805298E12
          54A1F00EBF83E4D41BA5A5A579797999999960AC5FBF7EF1E2C593264DFAE8A3
          8F424242BA77EFFEF4D34F3FFAE8A30F3EF8603B35F1859F6C641719C846668A
          5090E22841150A51EBEEA34039351EA7ABB0B090CA70C78E1DF8F6679F7DD6AF
          5FBFAE5DBB76EEDCB943870E007B7979B56CD9B2458B1677A9892FFC6423BBC8
          403632538482144709AA50885A94DFE1AF8B5CD439FCD1A74F9FA63DA21A59BA
          74E9B871E3DE7AEBADE79E7BEE81071E68D5AAD59FFEF4A77BEEB9E70F7FF843
          F3E6CD7FF7BBDF097EBEF0938DEC2203D9C84C110A521C25A842216A51EEA6BA
          48F05756561615151D3D7A148B91919103070EECD2A54BC78E1D7D7D7D39C936
          6D7B9D89CC14A120C551822A14A216E598B8C36F0B8F67D25C9E3D7B964A0F5B
          09090954232FBEF8E2FDF7DF7FEFBDF7DE7DF7DDBFFFFDEF1DE7273345284871
          94A00A85A845392630E4DA0B015534F4656565445FD4789C2E6AC24E9D3A713D
          36E8B4D7FA47A0045528442DCA318121CCDDE117490469252525274F9E443F31
          0C7FF77FFEF31F6F6F6FEA9306B98D6DA2384A508542D4A21C1318C29C08ED5C
          C24FCB48FD4C1547303678F0604E979F9F5F63B06D130A518B724C60087318FD
          8DF38B3A53C053336CDCB871FCF8F1010101547DD41EB44AAE8247150A518B72
          4C600873F2109CBE1044B4466D46CBB86DDBB6B0B03062B0F6EDDBD3A4BA8A5C
          9B508B724C60087318C57463223A53F3CB20FFCC9933F4FB56AD5A3564C890C7
          1E7BEC8F7FFC6323EB9CBA126A518E090C610EA39876BA6B20DA5C3A77A74E9D
          A25A7BF9E59789E189BEDC41AE4D98C010E6308A69009C6B8B4DCD2F3D9F9E11
          7D6DEAB4A0A0A0D6AD5B1303BBC9F9454239263084398C621A0027AE0279F2E9
          59CC9D3BF7F9E79FFFCB5FFEE23E6CDB84398C621A0027FE02B3F3D36A70E1F3
          DFD1B99B32650A21EE9FFFFC6737553BB6094398C328A60100039806B5C5F89B
          38F93367CE7CF6D967DBB66DEB19726DC228A601107F0148BF117E11F3D07670
          F947474777EDDA953ACD85D18E23097318C534006000E378384736AA2CEADE59
          B3663DF3CC3384559E24D7264C0300063020FD16F8455791D895F063DAB469FC
          83C4241E761E91308A6900C0000624473A9564C0D388FD162C58C0E5A3E3C917
          090030800109B0A6CD2F9A5DFACE747F28D2AD5B37CFD73CDA246A2130800109
          30FB0DB174FEB56BD7D27CEB52EDDB26308001A9DE4BC0ECFCA2E63C79F2E486
          0D1BFAF4E94310A2A3F388040018C0800498FD5A945D656565E9E9E9741F3C1C
          70DA4FC0800418784D951FBFBA7AF5EAD9B367B76FDFFEBFFFFD8F4E90C70266
          FB090C6040020C3C206BBD04D85859599995953561C2047AA07A535B27900003
          0FC826C94F805D5A5A4A3341AFE7EF7FFF3BFD68BD916F256040020C3C206BED
          0BD0B41515152D5DBAF4E9A79FF6C07D9286269000030F48509B18BF0CDB9293
          93030303095CDD7A9FA7A10918900003AFD6408E9FF4F18F1E3D4A35D5BE7D7B
          BD796B4F80810724A84D8C9F468DEBFAC08103A3468D22E43648CBA54D200106
          1E90A05AB5C2D4484477B367CFEED4A993A13C5F9B00030F4850ADAA5053F38B
          C8272F2F6FD3A64DFFFDEF7FEFBEFB6EBD496B4F80810724A8DA28485CBC9999
          99DDBB7777F98345D726F08004557B099B9D9F6BB9BCBC9C8DE1E1E1DEDEDEBA
          F7B9EA4A80810724A800CB2A882F172E5C98376F1E5787DE8CF527204105B8C9
          F0130E151414D0BBE9D1A3C73DF7DCA337A0BD041E90A0022CA3B86BD7AEE5E6
          E67EF8E187EDDAB5D31BB0FE0424A80083DD34F80947B3B3B36363631F78E001
          03463EDA041E90A0020CB6E0BF74E9D2860D1BBA74E9D2C8C1549E4940820A30
          D84D809F568CB6807E31A1F5BDF7DEAB375DFD09485001065B8C50A22E8D8E8E
          EED8B1A3DE688E265001164D80D9F909A48B8B8BD3D2D25E7CF145C346CEDA04
          24A800830D3CAD587E7EFEB061C3747F54E478021560B0AFABC9D4FC5555557C
          59B66CD9830F3E68F0C64B24204105186CE0E988E14B5DBB763545E52F12A800
          837D554DA6E6278AC8CACA8A8A8A6AD5AA95DE5C8E265001061B783A92898989
          9D3B77D61BAA610960B02FABC9D4FC4441C78E1D23A230E03DF3BA12A800830D
          3C51D0E4C9933B74E8A03754C312C06097ABC9D4FC151515C4A241414106EFB9
          6B13A800830D7C4949C9C891234DD1F3D52680C12E5193A9F971A103070ED09C
          19EA81A9FD042AC060037FFEFCF977DF7DD7CBCB4B6FA8862580C13EAF2653F3
          979696EEDFBFFF1FFFF847F3E6CDF5867234810A30D8C0171515F5EDDBB765CB
          967A43352C010C76919A4CCDCF5FB06FDFBE871F7ED8B08F2D6C13A800830D7C
          6161616060A0893A2F22010C76A19A4CCD2FFCC7DFDFDFB08F7D6D13A8004BFF
          0908083011BC4800832DFCC7D4FCA2FD32A3FFC8F6CBBCE75FB45FA6E617F1B3
          19DB2F193F9BB7FE17F1B3A9F945FFBD53A74EE68A9F0196FD77F3C69FA2FF6E
          6A7E71FFF085175E3057FF1D6079FF70E8D0A166ECFF822DEE1F9A9A5F3CBFC0
          97CC75FF1060F9FC62D4A85166BCFF06B6787E616A7EF1FC74E4C891E67A7E01
          B07C7E3A73E64C33DEFF075B3C3F3535BF18BF11131363AEE7A700CBF11B4949
          49667CFE08B618BF616A7E317E2C3939F9A1871E32CBF80D500196E3C78E1C39
          62C6F10F608BF163A6E697E3577BF4E86196F163A05A8D5FFDF8E38FCD35FE0A
          60EDF85553F38BF1F3E1E1E16619BF0AAAD5F8F9B8B838738DFF04583B7EDED4
          FCE2FD9DB56BD71A7F08A2187C08AAD5FB3B7BF6EC31D7F873809B0CBF7C7F30
          2424C4E0BD78F080ACF5FDC1D1A3479BA2170C24A8B6EF0F9A975FBEBF1C1B1B
          6BFCF70781ACF5FD65BA036679FF0E54DBF7974DCD2FE64F3875EA54CF9E3D0D
          1B4503061E90B5CE9F5056566696F77F416D62FCD596F95BE6CE9D4B1E034641
          2001069E9DF95BC4256CD867D962FE0171DBA4E9F1CBF9A3060D1A64CCF95B00
          AB77FEA8F1E3C71B79FE13F0ECCF1F655EFE6ACBFC75EBD7AF7FE289270CF538
          15189000AB77FEBADDBB771B79FE25F09A30BF9C3F73CA9429469BBF0E2407E7
          CF4C4C4C34E6FC6F8039327FA679F9E5211414140C1F3EDC38F36702039283F3
          F752C11A73FE493B357F93E1AFB6CC1F9E9E9E1E12126284F97BC100A641F387
          9F3871C268F3DF82F41BE1AFB6AC5F909A9A2AE642D471FE7000C07062FD829D
          3B771A67FE6D601ABA7E81A9F9E5FA29C9C9C93D7BF6D46BFD024C03E0F4FA29
          2929294698FF1F0CE7D64F312FBF74212EFCAD5BB78686867A7EFD148C62BA91
          EB3771ECFAAE3FE2DCC96F02FCD59AF5E30E1D3AF4E9A79F7A72FD26CC61D425
          EBC7D1E5D46BFD234C377EFD38F3F28B24D6AFBC70E1C28C19339E7AEA2977AF
          1F87090C61CE85EB57666565797EFD358CDEE11749AE9FBB65CB9661C386F9F9
          F9B963FD4AD4A21C13EE583FF7EAD5ABCB972FF7CCFA8F18AAEB26F96F93BFFA
          F6F5BB172D5A141C1CECDAF57351885A77AFDF9D9E9E1E1515E5BEF567518E89
          3BFC768E820691B0A4A8A868F1E2C583060D7AF8E1871BB37E37C551822A14A2
          B6F1AD6DBDFCD46C9B376F76C7FAD7A8756DB5D9F4F8E55188BAA8BCBC3C3535
          75F2E4C97DFAF479E491475AB56A45EB497D420CDCBC79735AA5BBD4C4177EB2
          915D64201B992942418AA3C44D758E1D7E7CF5C71F7F8C8888E8D2A54BC78E1D
          E9A836E88F20334528487194A0CA91B5E1EEF05B1D057F3A1E8B697C20232363
          D9B265548043860C09080878F2C9273B74E8D05E4D7CE1271BD94506B29159BC
          BA48714F7A8E2D7F666626B5DF975F7ED9B56BD7CE9D3B83CAF5E8E5E5D5B265
          4B4EB2F07FBEF0938DEC2203D9C84C110A52FC0EBF4B8E85A6A7AAAA0A9720FA
          ADA8A8C03D4A35494C94C72E3290CDDDED544313E7302F2F2F25252521212132
          3272F8F0E103060C080A0A0A50135FF8C9467691816C647655DFC425C9ECFC77
          D26F37357381343C7053924B4CDFE147E883C4C7C71315D4FB948A0C64233345
          8C73CE096F1ACA4F117DFF8B26C03F62C4884D9B36D1FB68588D614914A4384A
          3CCC2F4F5AB76EDDD6AD5B575959E91C3F05298E120FFF0B66E7C7626C6C6C41
          41811626A7B06CDDEE935356EF7E6FCE8F3D22563DF5E9A2BF0D9DF77F03E620
          7CE1271BD94506B291595B16552844AD67CEBCBFBF3F9DBE23478ED47A562F96
          149CCBCAC8CA4839929674307539C2177EB2915DB51641150A51EBEE7FC111FE
          EC926BA9591797A497C4EC289E945288F0859F6C6497BEFCF4A4E6CE9DAB35BD
          FF54C18CA4BD7D27AFEB38747EDBB7E6B41B30B7DDC0B87603E7B77B5BC8B7AA
          A8DFD9C8AE0173C946668A5090E25A6D28C784FBCE3CE9BDF7DE3B7AF4A8D509
          3C7FE6E4D19DEB92623E5C38A66742F86B76840C64233345AC94A016E56EBA96
          EDF3EF3F53397BC7F967661CF7197DB05558861D2103D9C84C110FF3878585E5
          E4E4085BD7AA6EAC4E3B36346633754BDBB762DB0D9C8787F80F5AE03F38DEFF
          1D64A122EF6A446C611719062D50DD4929487194A00A8542332630E45A7E7142
          E809D25C6ACF58C58573D42D6BA60FB3EF33750905298E12AD4E4C60C8B57F41
          5DFC5917AE51B7749E7AACD5A80C278482144789BBF99F7FFEF9952B574A13AB
          761C0BFD667DDBFEB395DA46B80D8EF1EEC2F643162B3234B1FDD025ED872E55
          64982AE2BBB23151E4513DCAE248D448FD67A310B5D204E630EAAA93EFEBEB1B
          1E1E5E5C5C2CF5979CCBDE99346BE157AFB944508542A91C439813E3A6DCC49F
          71EECA076BF29D731B5B41150ADDC4DFBF7F7FA979F7F1331FC525B77F4B78CE
          B76A6DB3D0E233AAABBCB71CF93FE4FDEFAD45DDA5488D4729BEA4544A83E395
          366EC05CD4A21C13D29C62BAD197EDE38F3FBE70E142A9F372F9F983A9CB5644
          0F7095F30841216A512E0D6114D38DB9906BE53F535E3531A5E86F138FB41A75
          D0858242D4A2DCB5FCC3870F17DA6EDEAC9EBF39FDDF9F272A41CEC0F9FE83BF
          B378CE12E136169F59A1C8077588D82B7D69985A29D578D177A845392630246F
          EE02E01CBF38F0175E78213939599E93DCC33B7EFC6EF4C2AF5E7793A01C13D2
          1CA60170EE2FA8957F7566F9CBDF66B9D673B482724CB88A7FE4C891424F7E71
          F9A88494B6A1B3946A4769AD122C9EB3EC96DBDCF293957645EB4BAA230D5B66
          F1A204942BCD59E82CCC61545807A3A1FCE290BB77EFBE6BD72EA1E4C6F5AACC
          6D2B168D79DD038221CC09BB0080D1D0BFC096FFEAF59B93538BDCE7395AC110
          E61AC92F9DE7504EE1E0193FB4ED1F43EF49A9768873687A449DD330CFA9D38B
          2C7551A212172915511CE6308A69E75C485CB9F2E4575694ECD910E719E71182
          398CCABF405CC54EF39FABB8FED9FAB35EA30F794C308751A7F965B3B5EFE4D9
          3727AD519D679E12EDBCBB4853ED38E739757891A522C2841211D13BEB1F8369
          006443E6F8C9A7E196D5FEA5D2A2B43533168F79DDC382514CCB8640C4124EF0
          E796560D5B95EF49E71182514C3BC12F03662EFF3727AD96CEA3B659B6D58E73
          9E63E345B222C2046DD92D175A2D6B2147C269D15B9101279540DADA998BC706
          EA229896B510488EF468ACF8A90474711EE942B21672905FE9355B629EC1D3D7
          2B318FD26CB9CF79ECBB501C0060C858C87EA75E34D3F43D65CCB377E3BCC4B1
          813A0A00321602CC7E2061C54F10F2D9FA735EA333751400642CE408BFB8CF43
          F7272CFEE7B6FD6612CDAA31CF221BE77195E7DCEE451A17521BB2EF9470BADF
          4C60448F0C3CFBFC010101F23EC9E1ED2B12C705EA2E60081EC0C4AD3907F927
          6F2DF60ACFD45DC070903F2C2C4CE49CB7715F9BBED395AE3ABD2D25605EE27E
          E7B1752162A1850080010C48824D81ACFBE2957768F38EEC58322ED020028CA0
          02AFAE4BD88A9F7EB457F8618388ECD4DBE16FD1A285783CB1EB58FEBF3F8D6F
          1B1AA3DCE7A1ABAEF4B69679C4796E7721259C4E543AF503E703031260D5EA03
          8E5A9F9135539F0D59C29EF33F25842F19D7D320020C48824D3C63B2CF7FA6BC
          EA950539BABB8D1460E4ADC5BAF8E583D10FE76C6C133243B45C4AD8336CA9A6
          B7E56EE7D1B890E8D42B8190D28A8104982054506D4EBEBFBFBF7CB07878DBF7
          4BC7F734948024D880144FBAEDF04F4C3DEFF5D51143094876F895B1136A5AB9
          FDB07FC854E5D9D6DBDF2A77986B5A2E9707CCF5F98FEA4235ADD83B0B810109
          30F004A7D5600F0E27222242EC2A2DC85E337590EE0E63252001260841B5F51F
          C97FF0DC958ED1277477182B01E9A0E519992D7F6C6C6CB5FA54BDDFA45596CA
          47ED738996CBA3CEA37521B515137D31B50A024F3CA957806F8F1CE478983D3F
          CC5E16D1D38002982004551B4558F17F90744E776FA95500AB8B5F0C065BF5CB
          E136C153941B3E6FCF17958FC75BAEDA5AB19A2A683E60E00159AD0E39D3F2CB
          FAF362C9B9E511BD0C2BE0C9FAB356FEAC0BD7BCBE3A6A5891833DB4FC23468C
          101B874C4F52BB5DB1FE8316D4443EFA543E5655901A05291DB158F08014B40A
          B6E5FCAF5BB74E6C3CB17BFDF209BD0C2BE0094E80B5FE23F9637696788D396A
          5801CF965FF419F79F38F3C880E9CA3D9F81F3FCDF8957BA5D7A563EB7AA2035
          0AA223A6DE91EE37134850ABD5BEA43CFF720CF0C6391F7C3FA19761053CC109
          B0D67F24FFBF6664B71E73CCB0029E2DBF18003F7DF58E5B8D9772CF47ED76E9
          56F968AAA09ADB89B79A3050ABD5E1F7E2E43FF9E493E2A04ACE9DFA3E32C8E0
          02A4A0956F4048FEFD67AFE8EE21F50A905A7EE53D1A3505472E6FD3776ADBB7
          E6D8345E7A398FAC82B44DD81C204115CCC07308F1F1F1E2E7C93D3FAC880C32
          B8002968C116FE23F9E7EC2A6D3DF6B8C105482DBF80CF3E57D261C0B43621D3
          6FF5BCF46FBC6E6FC26EF5C2A6830AB03C848C8C0C71445BE67FB2F2EB20830B
          9082166CE13F92BFCB9C5CDDDDA35E0152CB2FE093D28EDCD77B921AFCC4DD1E
          FCE8EB3CAADC1602C501092AC0F210E44B73AB2606AFFCFA0D830B9082166CE1
          3F92DF6FFCC9D6634F185C80D4F20BF8E8E55BEFEB13AD3E6DD7F4DCF5AF7C2C
          5590ECC52BCF3266810AB03C04713897CA0A5745BD610A015530D7DC4551534E
          6955EB71274C2139967141127EE8B4D5F7054F569E79D5DCF93148F063F11F42
          20426871172834065480AD0EA138F7D0EAA8374C21A0DAFA4F6A7665EB71274D
          21A05A9DFC57C2E2AD3B5F06F41F4D170C60AB43C83BBC75F5C4DEA610506DFD
          67E9C10ADD1DC34101D5EAE43F316C96C57FBE55FCC7289D2F8DFF0C13FEF3AD
          F01F80AD0EE1D4DE1FD64CEC6D0A01D5D67F66EF2A6B3DFE94290454AB93FFD7
          D0C9E6F21F80AD0EE178DACA35937A9B4240B5F59FE8EDA5DEE34F994240B53A
          F9EDDE9860AEF60B601BFF59B576521F5308A875F84F9629A416FF098A3057FC
          0CB0D52164EDDB9014DDC714026A2DEDD7EE72EF886C5308A8D6ED57BF89E6EA
          BF036C7508F987B7E9EE180E0AA8B6FEB3ECD045DD1DC34101D5EAE4FF6BC874
          73DD3F04D8EA10CE9FCE5C3739D81402AAADFFA4E65CF18EC83185806A75F25F
          FE62FE7D6F4499E5F905A8005B1DC2E5B2C2F593834D21976BBF7F78DD7B428E
          290454AB933F64CA0ABFA048B33C3F0515607908F2FEFF0F5343D64F0936B800
          29686D9F5FDCF775AEF704A30B905AFE9AE7174B7FF6EB196196F11BA0022C0F
          413E7FDC9630E207FE20630B9082D6F6F9E9B3716775778F7A05482D7FCDF3D3
          5F0EF9BE3ED61202197AFC1890A0022CEB7F39FE21277DE3866FDE34B8002968
          6B19BFB1A7C23BF2B4C105482D7FCDF88DB3E7FFDA375209810C3F7E15485001
          968720C75F951766E9EE1EF50A9082B696F163E7AEE9EE1EF50A905A7E397EAC
          CF9804BF5E11C61F3F0F24A882594C22AD1DFFB9F5BB8F374E7DD3B0029EE0AC
          6BFCEA93B1E77C22F30C2BE0D9F28BF1ABD3BE4FF17D7D0CAD8391DFDF511BAF
          31A0565BC6AF5A8D3FCF4DDFB8716A5FC34AAEA5F1AA6BFCFC9C3D177DBECE33
          AC8067CB2FC6CFEF3B9EF77070845FAFC8366F7E63CCF70701030F4850AB6F1F
          3F2FDF7FB95C56B0695A5FC30A7882B3CEF7774AAEFB7C9D6F5801CF965FBEBF
          F34EF45211451BF3FD651139032968B5EFEF34D3BC7F773879DEE6697D0D2880
          0942FBEF0F7EB8A154773FA95500AB8B5FBC3FB83235DDE7D5517EBDD467A906
          9B3F418D7C26800764F5EDEF0F5ABDFF5B519C9B3AEFFDCDD3430C2520012608
          EB797FB9B0EAD119E774F7162B0109B0BAF82DEF2F5FEF3B2EDEF7B5AF2C1D31
          03CDDF021260E001597DFBFBCBB6F30F64ED5EFDE3F41043094882CD91F913A2
          7754F8449D31948064875FB6BF2B52F6DFD763B45FCFF1CAE354C3CC1F058C82
          D4633478B2FDB533FFC9D58B17F6AE9CA0BBCF48010624C1E6D0FC2D15375E5D
          725E779F91020C48F6F9E5FC2D1F4C5DEE8B0BD5B462FACF5F275A2E90001384
          B6F3B7C82842CEBF547872D79619210611600495E3F347AD3976C527EAAC4104
          987AF96FCD1F7538FB99A153682CFC82BE56FB627ACE9FA9F4B982BE060624C0
          AAEB9E3FAADA66FEB79CBD495B66F4D35DC0103C0D9DBF6E4ADA459F89677517
          301CE497F3D7C5ADDDEEF3CA17CAED2025109AAAD7FCBD9856C29ED7C7000392
          60AB6BFE3A7909CBF9277FBD51757C6B42F2CC7E3A0A0060081E27E6CF1CB9A5
          DC67E2391D0500A7E6CFBCF9C59C35AA0B8DD5B89047E70FB738CF58308011EB
          D5DA9F3FB3DA66FEDBAB974A8F24CFD5CB79300D80207172FEDE8BBFBEBFA14C
          2FE7C134000DE297F3F7E615960C8C5CE813F0658D0BD1907970FD02CCD5384F
          C097600023A81C5994A7D9EDF36F5FA928E67FFC69663F0F0B46312D181A337F
          F8E9F21BBAB8104631ED04BF9C3FFCE0A9FCDEE1F34443A6C44284D3FD66BA7B
          FD144C280133318FDA6C010086E0717C399E66B7CFFF4F25707CEBC29F66857A
          4C30276B1E17AC5F70F1D791C915BE930A3C269893354F63D62FD87B34B7F768
          D58508A77B4DA01FADDC170A8D71C7FA4DCA4DC2BED395AE3ABDADD7BE529C67
          F43C000489E3EB17C84042BBFE084148EEBEA49F67857A403024631E17AE9FF2
          CDCE4B9E711E0CB970FD948327F3074E88F77979A4AFB82F445B163CA54DC80C
          D7AE1F8742D4A21C1318C21C46312D189C5E82C76AFDA3A253BBD3D744BACF73
          508E0969CEE5EB37AD3D76A5C7D212F7790ECAD71EBBE22A7EE942841F9FCF5E
          E5FDD2673E0161351551EF498428AA17C53466FD4A254EC67388767A4FAAA976
          02C230843919F338E13CDABFC06AFDB5AB974A72F6AEF9E5BB0F7E8E0975A1A0
          10B5289786DCB47EDCD98A5FA3D32E3D1653EC3BA9D0858242D4A2DCB5FC9AF5
          E36ECE5DB3F5E977265233F8BC3A8AC8D6AF57A4E245D4457D9559EF54477274
          FD5C2533714EDFE94A9DA3784EA4122ABF3A0AE598C0D04DCB02724EAF1FA73D
          0ADBF51F2F9ECF3D9EF26D4A4CA84B04552894CA3DB07EE5C1A2EB1F6DAA7095
          F3A00A856EE2D7AE5FB93333EBFD294BFC5EFECCE795CF552F1AE3D72B8246C7
          E24853DB84A8BE143A8B6046711229FC64233E13325DC9A6BA8DD25AF58A50E2
          643CE795CF518B724C48738D5CBFD2EA42B65D7FB6B2AC303F63F3AEC5235262
          FA3B2114A478A5E5650A913CBA7E6EE98D39FB2E3F35FFBC6F74A11342418AA3
          C4DDFC56EBE7AEF879EF9BE1F3BCBB7FA2D4454A8B16AE54473D23FC8222852F
          1103DF17ACBC502F859FCA46E133419164A60805298E1254A110B5D2840BD7CF
          D5FE05CDEA58FFBAA2283BFFE0E63DCBC2526307A4CCEE6F47C840363253C44A
          898EEB77A7175C8FDD57F9EFEF4ADA4E29F28DB62764201B9929E261FEDBD7EF
          BEBEE2E77D8323131E0AFCD2BBFBA7AA237DA9D4488A2F8DF10D1CEB17388E48
          58712A45C6F3938DCA2E7C86DA86CC8ADB7C4A7194A04A3C55AF76CFFADD56FF
          82BFBF7F4444841C6F6395AE9417959E395C78FC179CE4F4BEB5085FF8C94676
          D55A045528144FA5DD44EE387F4ED98DADA7AB961DBE32675FE5E4B4CB085FF8
          C94676E9CBDFA2450BF99855A47D4773A62EFDF18DB0D8877A7EE1DDED635CC2
          FBA5118A3BD1C0BDF285463E571CE6A5114A866E1F93992214A4B8561BCAEB7A
          B6E5F27FA1993AEA6FDDBA7572EC71431305292E46E2B9FBCC37257E2CC6C6C6
          8A216732659F295EBB2D7DD2A20DEF4625741F3EEDF1FEE31E7CFD73BFEE1F23
          7CE1271BD94506B291595B165528B41D92E1997FA199FA06447C7C7C4646867C
          95AFAE4406B29159BE3DE1C933DFC4F8478C1841B82586DF3B9128487194E8C2
          5FD77FE178D297B929F10F1A34A8A1FE2F5EBD69BCFC3F6788A7730A0000004D
          61737465722E626D70F46A0300789CED9D09581547BAF71B1533E398C904239A
          984C9C38E375E6CBBD337393CCBDB9F35CC79B8C4AD489D198887B34826B40A3
          11175404174445700154507141258A888ACAE216771331EEB288FB02A2A0C80E
          E7FB9F535214BD9D3E4B7316BB9E3FFD146FBDF57675759FFE75F5FAD1BF8A47
          37E6F4E90DFC35C75F5C231FCE856BCDE9B484A47503499C264D9A1C58C78F1F
          1F3264C82BAFBC82E9714392F9D70C7F4D8E2E8E23FBFAA3478FEEDEBD3B3939
          39DDDC84BA8880382C42D6AC59D3B56BD766962544401C75C33EEF06AD1F3469
          D2E4C0029CB9DA34C49064FE35C35F93A3CBC07C00EAC08103F9F9F9E5E5E555
          E626D44504C4A1B803495E7AE925CE1A097128975409CBE9B47ED098AF4993A3
          0B6372CEB057C7F41543A23F73E1BFD45FCA41E8AFC9D165D83A302E05A6949D
          FC35921007D1481E0348AB108924445331ACBE1BB47EB0FDF6A84993264BA431
          5F93BC0C5B4772723246A756611DE2201AC9376BD6CC8A50423415C3EABB41EB
          07DB6F8F9A3469B244EA32DFBC64EB3ED1C4CAB075A4A7A757555559CC397D42
          1C4453114A6A325FEB079B6F8F9A3469B2440DC0FC1A43AAAE4DF4B226B51087
          BABDA1ADFB44132B8DF926327FE3C68DA885A9D3F60367CE7AB7A3A4B5DFB649
          6BBF4D93AACCA7B4AFACACACA8A8282B2B2B2D2D2D292979F6EC19A6C8C3023B
          4AEB91DFD694D3C44A63BE89CCA7159DB61F6A97CCA487022C7CA6C09AD56BDB
          9F9F9F6FD20317BC5B39B4F66BED77C4F6ABCD7CECD94075E0BDB8B8B8B0B0B0
          A0A0000B9E97978729F2B0C08E52F8C05363BE1D4A63BE766E9F0DCB3DEF0A33
          1E0AB0F09902AB5537B49FECB0153E82411EB56077DB5AFBB5F63B68FB55653E
          46EF803986F445454558D8DBB76FE7E6E6666767676565618A3C2CB0A3143EF0
          24A37D9B534E132B8DF9669DDBE79C7D9C6FDE4301163E53609DEAB5AB92EE80
          E92AE3A551A346B1AB8CECB6EDB0FD0A93D67EADFD3A95995F595989313C90FE
          E0C183EBD7AF5FBE7CF9ECD9B3A74F9F3E75EA14A6C8C3023B4AE1034FF86BCC
          B73769CC377D9CAF04FB0EDC0F9CF9C12D6C9B75AAD7AE4A531FC180BF85AB4C
          6BBF68FB65AA3844FBD924DA72BB6ABFAACCC7D0BDB8B818473700FB850B174E
          9C3871F0E0C1D4D4D47DFBF6618A3C2CB0A3143EF024437D9B534E132B8DF98A
          994FFCD93C278D7D07EE07CEFCE076C57C533769CB57997AED97A965FFEDE724
          7E263CBBDDB69FD76692EC76FB5195F9656565858585B76FDFC6781E7807E793
          9292B66EDD1A1F1F8F29F2B0C08E52F8C013FE1AF3ED4D1AF3158342788A58E6
          EE7D07EE07CEFCE01AF3556A3FA7009B76DB7EAE164152C9CEDBEF58DB8FAACC
          2F2D2D2D2828C8CDCD3D7BF62C46F580FCE6CD9BD7AF5F1F1B1B8B29F2B0C08E
          52F8C013FE1AF3ED4D1AF34DF9A1B3D8977F5CCF81FB81333FB8C67C95DACF39
          05F3451BCF3914F3A9B3DD6E3FAA32BFA4A4243F3F3F3B3BFBF4E9D318D2636C
          0FD4C7C4C4444747638A3C2CB0A3143EF084BFBE1B6D4D394DAC34E66BF7EDB3
          61B9E75DA131DFAEDACF69CCB75DFB796D26C96EB71F5599FFECD9B3BCBCBCAC
          ACAC53A74EEDDBB76FC3860D111111414141CB962D5BB56A1546FBF1F1F1B0A3
          143EF084BFC67C7B93F6EE5DEDDDBB6C58EE795768CCB7ABF6730ECE7CA9C42E
          82DDB65FD8E7B4F176B8FD34D8383F2121C1CFCFAF4B972E1F7CF001A693264D
          5AB3668D36CEB77F69DFD8D1BEB1C386E59E7785C67CBB6ABF4C2DFB6FBF7CE3
          3907613E6D30BB4476B8FD34D8F57C101EA86FD5AA15E68B29F2515151DAF57C
          FB97F62D5DED5BBAC26FE96ACCB7B3F6CBD47288F62B5904476CBF1D6E3F0D76
          DFFE9C397330C2274DC514F9D9B3676BF7EDDBBF6A375B000AE3D2E4E464D1D7
          4A2A49A88B0814742499F40649A964E18B2915857DDE0D5A3F3CEF8A668ECF7C
          A779BEDD39DA2F53D121DA2F5C04FBEC7F5599CF3E9FBF61C306DE381FBB11ED
          F97CFB97B1F7C9BD2849EB0692B8E75DE14CEFE15398ECE43D6A5AFBB5F63BC4
          7BF830AC993C7932BD9EEFE7E78741BEF61E3EFB17C7ED0D1FA4093D61F336D8
          839E6F17DAFBF6B5F66BED77CCF6ABCA7CDEFBF631AADFB469D3DCB973E3E2E2
          7EF8E107ED7DFB0EA15AE69F4F595970EB62755585254204C46119B23F72C091
          E8FE47577D7E787977F384BA8880386CD83D4B07252F1BBC23CC73EBFC5EE609
          7511017178CCD7FA41AFDA1D8FF65D3DADFD5AFB1DABFDAA325FFBAE9E13C8C0
          7C00AABAAA52678D8438147700D4A1A51E5BC6BBAFF37E69EDD78DCD13EA2202
          E250DC0150F1F3FE15F2D55B017D5E99D1EB57E6097511017108EE7406E66BFD
          F07CBB70E8A4B5DFB6496BBF4D93AACC1739C1A020D99C729A5819988F71A915
          373A442350C2B814985A33D465CD50CE32B9200EA291B018970253FE9FFDD2BF
          E72F2CD267BF441C44A3CCD7FA816C1436BFC460E1E5099BB7416BBFE3CAD1DB
          AF315F93BC0CCCAFAEAAB022EB108D6C7D47577D8ED1A9C5A0D30B71108D84DD
          11E689D1A9A5A0330871108DFED0B57E201B05899FB87CEEE6155B57471E890C
          3F242FF8C013FEECBE27312A6CE3CA83E18B73836665C90B3EF0843F5B7DDDC2
          398BE7C64F997CD0676CAABCE0034FF8F3F6D9742D281171661BA0FC728C8597
          5DA42E3369EDD7DA6F46FB35E66B92979ACCC7E6BCF6EBC656611DE2201A098B
          CD7C46AF5F5985758883686A33DF683F6C1CF39B1D33FFB2677E274C91B76D3F
          90AE488C981711F683CFD83DC386260D1EBC435EF08127FC518B027FC6F46BED
          DB67346F7ECAD5F584BCE0034FF853EC03E0A346A6B46DBBBA59B3654D9A2C91
          177CE0097F827DD27E43FF9B769986F8D31D36B91CB361F4CBF1137FBB2BE8BF
          F6867CC46AF7DCBF6F9BDC7EC3A8972DBFEC227A99C95AED577239496BBF33B5
          5F63BE267969CCB703E603F58756F447154C91B7623FD0B0A6323F7EE5F6713E
          A94386EC1A3C5891E0097FD4226DDBB8F270FBF6E75C5C4E719C22C113FEA845
          AA63DC0E8CBBB884719C22C113FEA8C5EEB369127E1091A451A34609D71A6900
          BD1CB37EE4AFCE244C175DBF37CF26C57DD3A276D5485E76F9EC3D57D1B9BFF7
          BBC675AB407099C9ECAD8ED77EC53F31CB2E1BA9D67E7A382C54FD03643B6DBF
          E2437BABB55F63BE267969CCB70FE6D35AD6653E0D6B2AF3D7AD3AEDED9D3A74
          E83E221284FE2B6A843F6A91B6852FBEDDBCF9CF1C9741443CE9BFA246F8A316
          A93E65F2418CDE19AA93C4437D3D23FC51CBC27DB6F0724CAC57D32DDFB6D919
          F8010F38BB667FB8D5AFDDFA11CDE8AAB1F0B20BEF3293B5DACFA2461E9BEAB5
          5F8E06C6DACFFE348489FDB148B55F66EE0DD3FF0A7FE64AFA5FB4E5BCF66BCC
          D7242F8DF976C0FCEFBF6BFB43F4571989333145DEB6FD40BA2226EA476FEF03
          C387EF27A20B2563813F6A91B605CDBAE5EA7A81E3CE135167190BFC518B54F7
          199BDAA4C91201DE39190BFC51CBC25569C9A66BE1AA91DF14E576A8C6DAAF10
          9B32ED9799BB92F673122FFE12DA85EDC78109ECF8699C8CF3C5945100EC30D2
          C316A9F673628414DAADB22B90DF7EE499AF64FB1176BBB0FD1AF335C94B63BE
          7D309F9C84474A5FFA99CC257DF3CEEDEB4C1FE7AF597176D4A8232346FC4045
          978B97A7823F6AD532FFAEABEB558EBB4245ABF0F254F0472D09E6F320CFE65F
          14E68B369853C07C824DE09137C8870576649430DF28368D325F8E09D2EDA78D
          97596B849FF2CC97997B83315FFED0DE5ADB8FC67C4DF2D2986F53E6D3F3AED8
          0D28C1BE19FDA004FB42E6C7469F1F3BF6E4E8D12758F11690570A7FD4AA65FE
          7D57D76B1C97C38A579D570A7FD492667E98605712A6319F53CC7CCA762A9EBD
          01982FDA784E01F3C1495DFDC31672144046FB64118C325FB4F10DC97C6D9CAF
          C91EF49CF9D679114DED865FE9B0CC6FE87EA0BB01C3A9CB005A57EAAABEF27E
          2071D8BC4E1AFB42E66F88B93C6E5C868FCF199E68286111FC51AB96F979AEAE
          B739EE164FB4BAB008FEA825CB7CF111BE04F3CD5995966CBAF5564D70CFE9BD
          9A99B429C21FB5A4DAAF98F922ED3787F9F5DBAF84F932ED3785F9FCF6D7325F
          FFD31063FE4C9D28F399F62B64BE7CFF5B65FB61998F637CDE71BD92ED4786F9
          B4FD1AF335C9CB11996FFA0ED5BC1D6D03F403BD639F4D3277EF2BEF07D1B04A
          FA817445DC9AAC0913CE8F1F5F4FBC80BC52F8A3562DF30B5C5DEF735C3DF1AA
          F34AE18F5AD61BE76BCCB7E0DCBEB5992F49039D22E64B2585CC974A0DC67CF6
          741E75E69DCE53B8FDB08DB739F37FF19B562DDABFF787AE7D31455E722DDB9A
          729A5819985F6355D6D5D46EF88796755B3BAC9175983FAC11A291B05BE6F6B0
          C2CBE7883EFB25A2D11F7AC3F7037EF4F8E9B37C465EEEDCBE29FDC00BABB01F
          48576C8ABD3669D2958913EB4443F1F254F047AD5AE63F76752DE0B83AD12ABC
          3C15FC518B54FF666C8A19D7F351CBC25569C9A66BE9262ABB29CA80CB68FBE5
          B159C77CE9F6CBCC5D49FBE51BCF2E82B0FDF23720D63BB72FD17EF9C6D72D82
          35760552DB8F92D379F2DB0FDBDB229DCFB47FC89021D4618821C9FC8B8535C9
          9FED3D40FEAFFD46F65FB569E48E344C9197C2BECD29A78995763DDFD6F7F0F1
          1EA5927F2D4F83DDB71FBFFEE69429397E7ECF45174AC6027FD4AA657E91AB6B
          11C73D177596B1C01FB524C6F93469F7ED0B76A8C6DA6FF3FBF6952F82B0FDE4
          D7217F0F9FFCF57C858BA0EAF57CA955508FF9A6B75F74FB397EFC38E08C3139
          A6C70D49E65F2CAC49FEECDC31B607EA03336F2E7AF81453E461115FBFB6A69C
          2656DABB77B577EF8ABD7B3731FECECC19B7A64EBD49449688FE2B6A843F6AED
          7DFE7C7E71F3E6251CF75CC493FE2B6A843F6AEDB5D2F3F966AF4AB35799759F
          6FB762FB6DF27CBE79CC97EA7F25872DF2ED37CA7CF5FA7F4DEDE93C9E27EF74
          9ED1FE97013EDBFEFC5B972FFD989E73E118A6C8436E337E2622FF9E4A8DCB38
          188F29F258584C775ED31189FAFF6EEAFE77A6FF8029F26C03FED0B52F46F800
          FEB2B21A4C91874563BEFD4BFBC68EF68D1DB16FEC246F3A1632FFBEBFFF5DE5
          823F6A91B66D5C79B67DFB0A1797728E532478C21FB54875EBBE87CFA464EE2A
          7380F7C0396EFB151CB6D875FB858B20389D67B5F603F5F773CF83CF9822EF36
          F31CAB94AD2B007C22E4B1B014F8443CFFB7C76D07F089906749AE8DF31D54DA
          B774B56FE90ABEA5AB0F1EB3FCFBB8FC850BF20303F302021EC80B3EF0843F6A
          91B6254645CD980E8C57376F5EEDEA6A44F08127FC518B54B79FF7ED6BEF7BD7
          DAEF58EDC7089F8CCF21E4D563BE763DDF4165603EC11DC6A50A3F22252544A0
          A0A3DBBEC28F4BA9F4D129533FA6A5F503ED8ABDAB97EF893FB933E161C2967C
          79C1079EF067DB9618B562E3CA9FC3179705CD3222F8C013FE6C75EDBB7A5AFB
          B5F69BD17E01F3CFB352C0FC7AFE32CCE7B4FBF61D53B5CC7FC1A573F08F665B
          B11F1CBD2BB4F66BED7F91DBCF677EC07956C6995FDF5F9EF90A93CD29A78995
          D40AD1E9AAAAAA8A8A8AAE5FBF7EE1C285B367CF666464608A3C2CB0A354EF64
          EBE65B475AD2BDF0FDF0822FBE49C9E63F584DD2E231BF45C005564699CFF3E7
          31DF8496A47B4335E923AAD34756A48F2E4D1B5B9CE6FB386D425EAADF9DD469
          B929015753E69CDB17727A5FD891BD11E97BA277EF59B72D7973DCEEEDAB77EF
          8ED8951ABAF3F0BC9D2766269D99BCE3C2F81D99A313738727DE1EBCFD41BFED
          057D128A7A263CEBBEADCC635B65976DD5FFDC56F3F1361D844CE76DD55DB755
          76DB56FE694249EF84A75F26140ED89E3F74FB3DEFC49B63137326ECB83235E9
          DCACA49F82771E5FBCEB50E4AED435BB77C7252724246FC6DCD3F746A32568CF
          B97D0BAEA4CCC94D0D403BF3D2FCD066B4BC2C7D8CCDD7AC8C4C7CF842344675
          7535C09E9595D5BF7FFF575F7DB551A346385CC31479586047297CD45D9406DB
          3919D29A356BBA76EDDACC7AC9C1C272BAA62F70C2E25BB13379096B0AEB0B6B
          CD396661F33D9C261909987F919502E6D7F3379BF9A0BD9361DFE66B564626BE
          64413446696929C6F3EFBFFFFECB2FBFFCE73FFFD9D3D373CC983198220F0BEC
          28858FBA8B529B8E1D3B3678F0601CA6608ABC10ED920E8A67849DD94B2FBD64
          DE992BC9335A8E1596937B9ACAE993DA8B8FF585B5E61CB3B0F91E4E938CF8CC
          9F75899571E6D7F7E733BF7E02022A2BC5EF74AC4A1FE964D8B7F99A9591892F
          53148D81613C0E0880F79E3D7B666767D335893C2CB0A3143EEA2E8A21656666
          6280419B8C3C2CECC625E7A078466C046B25070BAB315FE5A4C65AB3C92C6CBE
          87D324A306637E4141C1AF7FFDEBD6AD5B1717170B995F9E3EC6C9B04FBAF4C1
          8D8BB7B3CF5EBB7C3AFBE22922E461819D76BB72376BC91ACC7FFCF8B19B9B1B
          46F52CF029F66147297CD4DD7E0DC9DFDF9FB7D781856D8F9C83E219356BD6CC
          EA7B47070BAB315FE5A4C65AB3C92C6C8E354D32E2333FF0322BE3CCAFEF2FC3
          FC5EBD7A914D22282848C8FC92B46F9C0CFB3A85F7B8297653920059A33F49F8
          5889F98D1A35F2F4F4146D08EC286D00E6DFBC79F3DFFEEDDF788B080BECA425
          461C14CFC891E0AC315F85D4008BAF315F530348C0FC2BAC1430BF9EBF14F3C1
          316C0CAEAEAEEDDAB56BDAB429C6FC3C463C491BEF64D857788F9BD25BE16AD3
          B7DF7EEBEEEE4EDD9087C546CC47F998316344990F3B9995BADBAF4EB761C306
          D1A5849DB4C48883E21939129C35E6AB901A60F135E66B6A00F198FF5AD05556
          4699CFF317653E080FCE63633873E60C46B09C18290A52273A19F6E93D6E2E2E
          2EBC1F052CF41E37856EA4973EFAE8235137D81B9CF93816313ACE6F80EBF93E
          3E3EA24B093B69891107C5337224386BCC572135C0E26BCCD7D40012303F9395
          02E6D7F31765BEB7B737B6845EBD7A917FFFFEF7BFE3DF070F1EB08CB89F3AC5
          C9B04FEE7113229A24D8C93D6E0ADDC8085FC68D8CF61B90F9381069D1A285CC
          F57C9436C07DFB38DC115D4A7A1864C441F18C1C09CE1AF355480DB0F8CEC37C
          DB265B43D5CEC567FEEC4C56C6995FDF5FC8FC1B376E7086B3D0F9F9F96485E4
          E4E4C0D2BB776F762DDD4C9DEE64D827F7B8C9FC34C83D6E0ADDD045EEEEEE32
          6E28D53528F3ABABABC78E1D2B73DF3E4A1BE0F9FC77DE794774296127ED31E2
          501B6ACD82F134CF0917D9B1E0AC315F85D4008BEF94CCBF79F3E6E6CD9B274D
          9AD4AD5BB70E1D3A608F82210AA6C8C3023B4AE9DD37C2644E755B43D5CEC567
          FE9C2C56C6995FDF5FC8FCC8C8486C06274F9E64D709A000E3B56BD7EA489112
          E464D827F7B8C9FC34C83D6E0ADDD04546DD1A96F93AC3CD871D3B76147D3E1F
          F686780F9F4ED7BC7973D1A5849D6C59461C0C71007CCA7C522A9C9123C15963
          BE0AA90116DFC9989F9999191010F0A73FFDC96815F8C053F888AD99D56D0D55
          3B9780F9D9AC1430BF9EBFE8B9FDC2C242DEB1DBFDFBF739E6F42BD2A57DC14E
          867D85F855E8A6DF908DA506673E1246F23E3E3E2D5BB6A47715220F4BDD6D87
          AA6EBF3A9DCCE50E327F230EB5C027CCAFEB4BC18C1C09CE1AF355480DB0F8CE
          C4FC63C78E797878985411FEF47D591655B73554ED5C7CE6CFCD61659CF9F5FD
          E5DFC9C3A611234660359D3F7F9EFC9BB12FD4C9B0FF62305F4922CF22666464
          F09E4544C6D2D7F25B3CCEA7C087EAF5A5C67C61588DF92A2767627EFFFEFDCD
          A88B5AE4676B51755B43D5CEC5637ECBB9D75819653ECF5F39F30B0A0A5C5D5D
          FFF297BF9011E1F1BDCB9C0CFBCEC47CE6E5EDC2576A8BB7A5B6943C8B08BC8B
          3E8B48B06FFE657F9DAE6DDBB6A20D809D6C68461CB471BEF2B01AF3554ECEC1
          7CCEB005BEFCF2CB6654442DF2B3B5A8BAADA16AE7E2337F5E2E2BE3CCAFEFAF
          9CF94853A74EC56A3A7CF830F207F7AE7432EC3B11F3C9CBDBF7EEDD3B64C810
          4CD9576A93D90A13578BCDD2D252805DE6B5FC2835FFF67E9DAE63C78EA24B09
          3B69891107AE0EFB7489388DF9A26135E6AB9C9C89F93D7AF430A3226A919FAD
          45D56D0D553B9780F9D75929607E3D7F93985F5858882DF09D77DE29297EBA77
          CF5A27C3BE13311F637BA09EAE37E4C92BB5C93C6B6A6A782B965838C36E1248
          37FA5A7EF898CD7C2F2F2FD1A5849DCCC888436D2827BB6FDFEA31398DF92FF6
          E29B94B0056EDBB68D3C95AD3CC11FB5C8CFD6A2EAB686AA9D8BCFFCE01BAC8C
          33BFBEBF49CC47BA70FE6CD3A64D7372721293373919F69D88F9E0D2B367CFE8
          4A439E904A14F83CEC83E7465FCB6F09F3232222449712763217230E8A67D4B8
          7163A35D6B6A522FACD563722F3CF41A60F1D5D8186C320B6C81C5C5C5A9A9A9
          DEDEDE520FCBB2093EF0843FFD188B45D56D0D553B179FF9F36FB032CEFCFAFE
          A6329FA6CDC9DB9C0CFB4EC47CD1713E2771569F4D9C81F9465FD76709F3CF9F
          3F2FDC2BC042EF0E35E2A07846E45592D64DEA85B57A4C4E63BEFA8BAFC6C660
          9359909F5E5959D9DDBB77D3D3D3E7CE9D3B78F0608CC3DBB66DDBBC79731717
          174C9187057694C2079EF067770EE657B73554ED5C02E6DF64A580F9F5FCCD66
          FEDADDBB9C0CFB4EC47C7A3D1F067A3D1F79F63B0032CCE78CBD96DF12E69797
          9793206C820576320B230E9C4E725A7F468E756E5FA5EBF94D5FE0D400CC778E
          EBF9BC77F2E087F6E8D1A3DBB76F67656591A7757EFCF147F2140F2CB0A394FE
          5A85C99CEAB686AA9D8BC77CF7905BAC8C329FE76F36F3A376A53819F69D88F9
          3AB1FBF63965E37CBAA18937D9C2EDD7908E1E3DCA5EFA431E16B619320EE432
          3EBD695F277A31DF30234782B3C67C1592D4366CC5E434CC67FFFD75B3A6EDDF
          78E5EF7F7CFDD3BFB51DD8A9FD088FFFF74D8F7FC71479586047297CA4A235FE
          C5AF7ED1F2B7CD7FF7E7DFBCDBB1C5FBDD5AFECFE7EEFFEB8929F2B0C08E52F8
          B0556C0E553B9780F9B75929607E3D7FB3991FB6EB909361DF99986FD852AE9C
          DA7BF9E41E4C75B50C975FA5D5D5D55C6D5D2967CEC21FA821959595C5C7C777
          EFDEBD79F3E698222F3C4928E9C0494F19ED0D1FA4E905EF87177CF14D12D979
          B4FA4DB3FFFDD31B43FFF9C709BDFE3AE9F3F7A67CF981BFE77FCD18F0DF3307
          7E8829F2B0C08E52F8C013FEEC8EAAC9CB2D7ED5EE3F5BFC772FF78F86BAFF73
          78AB2E235B7D32A67537DFD6DDC7618A3C2CB0A3143EF084FFF31DA1ADA16AE7
          E2337FC11D56C6995FDFDF6CE607EF3CEE64D8772EE683F60577329F3DBA8B29
          F23A05CCA748E714DCDE6FA66A537171716E6E6E464606A6F43620364939281C
          E7933DD90F6BC765EC98733E79C1CF3BE759AE4B296124ECF155032E6CE89F1D
          F779666C77CB9513DF8F84DDB37450F2B2C13BC23CB7CEEF65B9762F1F8C7EB8
          B86F71C68ED95614025E8BEF7735D6C38A4240B4363EF8532B8A2CFEA675D7A2
          A3B2ACADCCF53199F1AB0F27458662ADAD5C71337056B6D515BEF8FABAC8435B
          9785631681B38EF88C4DB5BAA64E3E1836277EFD823984F9EFBEEDF6D53FFF08
          AA070CFA307878C745A33E0A1FFBCF65BE5D22C67B447EEB8129F2B0C08E52F8
          C013FEA845763CBF78FD0FAFFEF7E72D3DC6B4FAD7C4D69FCF78BDEF9C37FA87
          BC3168719B214BDA0C598A29F2B0C08E52F8C013FEA865D1FEE4C5909D303F20
          E98C9361DF89988FB13D505F52789F0879583865F7ED2B74336FE3A5E38A98C9
          3D8286FCDDF7D33F638ABC70E01130A17FD72FFAFEF61F5F608A3C3B78D327D1
          69FD1901F86777CC3E10357C5F78FFBDA17D2D17A2E9811F3D20739DC799D9EE
          A7A6BE74727263CB95B5AE2B017EFCBC7F857CF556409F5766F4FA95E58A9FD7
          03FDA06F73E89756140266C57639E9D7C88A42C02D737B4CEFD5CC8A42402CFE
          CAE559DEDE67ACAE51A3CE7C37E1E755115781FDA9536FB8BA1EB3BA9A373FD1
          BEFD9919D373807D6FEFB4264D96585DCD9A2D6BDB76F5A89129C07E87B75EF5
          EDF957FC18178FF93872C227AB26758FF6EB212594C2079EFA9F70CFBFA2EE4B
          AD7FEFF6B1977B2FFFD6FD17BD3E34EA8DE1ABDFF05A23A9E1ABE1034FF8A316
          EADA1CAA762E3EF317DE65659CF9F5FDCD66FE94A40B4E867D27623E06F618E1
          53E623CF0EF5E507F09C8997FDCD603EF61993FABC4F4E1E628A3C2C2CF0A78E
          1BD0AE4BFF561F0F6DDDD90B53E4612145CAC7F918E103F87B167D612D652406
          21ECA58DFD7F9EE37EDACFE5B41F671565C77646588CF0017CFFCF7EE9DFF317
          56D1E639DDD00F68B3157B8074021A6CAD65A73D80D65A6BC1D9C58F5A96357C
          F84F6AC86BF84FC03E46FB7E7E3739EE841A727101F6CFAE8B3CFCF5D7A91C17
          A6865C5CC2807D8CF6FB76FCB710AF7FAC9CD86DEDD44F63A7F5542278C21FB5
          50F7E5BFF56EE919DCDA6BCDEBA337BF3E265E91466F863F6AA1AECDA16AE712
          30FF1E2B05CCAFE76F36F3BFDD91E964D87722E68B8EF3C9E6C3D5229D770F3F
          C75CC957727BBF791B2FE0B625E8F3E9033E9C3EE0BFE77B770A1DFD31A6C8C3
          023BA17A44C0C0FFEC39F8F54FC6B6F9DCFFCD2F0331451E16D84D1AE79F4F5E
          80113E0F59FBC2FA1D5831E2D8C6C927E303783A1E37ED50CCD894F081F2CCBF
          BEE5F3B3FE2F9D99CCB1CA98D6F4FCDC3657967D90B9B2134F57233EBCB8A0DD
          D9E9CD7855A8AEADD3337F47982746F83C70CDFCFCD721C3DE899CF8F798695D
          785A31E91FA123FE34EB4B3733982FD309467B0301D160E152C8F480D1AE4040
          51E6CB2CBED17E509BF91046FBEB6332FDFC6E71DC6995D4BCF94FE18B6FA9C7
          7C08A3FDA9930F060CFE70955FF70D337B6D0C3041F0472DD475EB1DE03E7253
          2BDF5DADC6ED3641BEBB500B756D0E553B178FF9AD16DE676594F93C7FB3993F
          2631D7C9B0EF44CCD7D55ECFC71CE8F57C2AF1B630A546573E6701F3C3BFF9A7
          7FFFFF5A34FAA3A5BE5D978DEB8A29F2B0C04E98FF95D7E0D600FE97816F0E08
          7973C0024C9187057693C6F93FEF9CB737B42F0F59294B06661EDD2CB55C0F72
          7E4C5B3ECC08F337763FE7DFF8E7A91CABF301BFBA9F3A5D2A6CD1E5A40BB35B
          F0AA50DD58AF67FED6F9BD66F4FA150F5C817D5BA46D9C2515F6F2A9DD7307BE
          6106F301FCEB67928DAEE5825B17817D6127A0C1C2A5B814DCE6E1B12546633E
          BD76F0F2C276C21E10653E807F7CE772A331AF9D3F0CEC373CF3BDBDCF444765
          F9F9DDE1B8332AC9D5352370D64D5599DFA4C9129FB1A9C3BBFDC7C699BDE267
          F73155A885BA2F7F34B2E5B7FBDC271D3455A885BA3687AA9D8BCFFC45F75919
          677E7D7FB3993F3CF18E9361DFB998AF13DCB7CF972DD2F6E0BEB306FDCF7CAF
          4ECBC7758D18EF41843C2CB0A374FDBC41EFF6F27EA3CFCC370785BE3938ECB9
          0685C2023B4A9FB75C74AA80F9968FF36F6EEA7E7146E30BFE1CAB8B339B5E0D
          699313F9416E4C279EAEADF83033B4DDA559CD7855A86E6E9064BE4AE37C2C3E
          3AEC424A94CC38FF62DA2AF8A04F849D80060B9702CB0EFF3B895EC21EA0BA9B
          340A3EE810610F88321F0B0EFFC4E5A365C6F949913EF0416F98C1FCEAEA9AC7
          8F2B82822E8B96EED973BFA646575959638CF9F738EE9C94AAAA6AEEDCA978EF
          BD2CD1D2E0E0BCEA6A5D79798D547557D7F381B36ECB33DF308BE2F7DE8B132D
          0D0E3E8DC52C2FAF9267FE5F7FEF1E31F1936DF3FA26049B20F8A316EA366DFB
          BEDBA8AD2DA79E6A39EDB4099A7A0AB55097FD5826FB05ADBA3D95495346BC37
          748BEC83AD31174EE5DB1005CC7FC04A01F3EBF99BCD7C40D5C9B0EF44CC3FBA
          337ADDBCE15242A9AD98BF76DAA701833E5CEADB256AC227AC60811DA533270D
          69F5AFEFDE18B8B8CD57CB59C1023B4A2D1CE75B7E3DFFF6E6EE57031A5F99C1
          594B77E22499AFD2F57C201DEB0253998595F241403458B814375777823FA632
          4B2AE58380A2CC07D2E18FA9CC624AF928613E780E01ECA74F3F62EDFEFE1771
          2C0054A2E8E6CD1263CC7FC07197A4049E4388131F5FC4DA3B74C8BE73A7B2AA
          4A87A28C8C52A9EAAEAE970367DD91673E780E196691C9DA3B7488C5B1008E08
          0CB3C893673E7E44FFF3EE9B8BBEE9B26341BFA485FD95089EF0472DB2E379A9
          C3FFFD66F8C6D7669E7B2DE08222CD3C077FD422BF5F29E0B3BF7725531EF079
          D1F83BE0FAD0563EE5019F17AD81999FB83EFC546A1C808F29F24699FFD6E8B8
          DF4DDD0FE0638ABCF2BD77BFED8F9C0CFB4EC47C805D66D5E94B6DC4FCE5E3BB
          8678775AF15DB79593BAB3820576940E19E5D5EACBD96F0C5BF9C6D7ABEA69D8
          4AD851AAF0C85B3DE6DFDBD23D3BB0717600672DDDDFE460CC4783854B7167AD
          9EE798CA2CA9940F02DA84F9BEBE3F5FBDFA14480418CBCAAA232272603C7830
          9F0CEFA1D8D81B0ACEEDE7735CA694DCDC720E1D2A41C08A8A9AE2E2EADEBDEF
          C2181555080B391CF0F27A2053DDD5352B70D63D79E6BBB9451D3A74DB308BEA
          E2E28ADEBD77C1181575CE300BFDE18097579AD173FB64E7D1B6F52B03BABCBB
          C2AFC7EED001C98B074A09A5F08127FCD91D5563F7DFFFB2D3E8DFF824B708CA
          6C313B5B524199F08127FC9FEF082510ADB360042E751051B7F7B5C65CF87B74
          75987FE9C7F4FBB9E7017C4C916F159AC72A62C134A01E237C4C9117617E7DFF
          D7072C02EA31C2C71479E57BEF3E094F9C0CFB4EC77CE1685F3FC21730FFF8F1
          E343860C79A536210F8B70855BC52D74F4474BBEE91C33B98750B0A3F49F5F7D
          D37A50F81BDEB142C18E529B8FF31F7CDFFDFAECC6D703396B296FB383311F0D
          162EC5FD583DCF31955952291F04B409F389C2C2B24A4AAAC8A81E5392C9CA7A
          8A230265D7F30B38EE9ABC3C3CEE15155593730A9892E1FD9123A56E6ED7E52B
          BABAE606CE7AA0E47ABE87C7F6A2A2F2CACA6AC32CAAC9F0FEC8913B38225072
          3D9FDDDFBCF6CA2F3F7CF7CD411EFF317D68C728BF1E5BE77D09CE638A3C2CB0
          A3143E52BBAB46BF6ED5F48F1FFFF263DFE603225FF1DDF7EA8C736E73723145
          1E16D8510A9F7A3BC2FAA37A56E68DF3E52F1608F7189C59E37CF19DBA0ACC07
          ED817A8CF03125A37D0A70F2EFC2C009E1F3FC30459EF853E08BFAB7EA33BBB5
          E77C4CF5FE8A53CF841227C3BED3315FF4C4BE90F9C0326F86B00857B855DCE6
          7BFF2372C2276BA67E2A14EC28FDF701935B7F1DFDFAA84D42C18E52A347DE6A
          333F7F6BF75B731BDF9ACD594B0FE31D8CF968B07029F2D6EB798EA9CC924AF9
          20A00D994FF4F061DD1BE04F9E7CA4A44A2DF30B39EEA612E5E656D259C4C53D
          5352C5D5F556E0AC7CE5F7F0E5E61631B3B8A2FC1E3E45FB7C2DBDD8A94742B9
          9361FF45653E5B9BC610AE70ABB88578FF63F5E41EEBFC7B0A053B4ADFEA17D4
          6A545CEBB15B85821DA5361FE73FDAD6FD5E70E37B73396BE9F1F7B661FEA503
          6B64EEE143A94E82F968B070290A36E8795E94EA8B8C94500A1F64843D20C3FC
          DDD11365EEE143A9CE7AE3FC8A0AFD38192A2828F7F7BFA88CF94F38EEAEBC3C
          3C0A8A8A6A2A2BF5914B4B6BAAAB75D08D1B551D3AE4C9577475BD1B38ABC0D4
          717E696915396171E3C6930E1D629530DFD6DF46B065D2315F27B16EA2DF3A71
          8E59009B4E86FDA2A2A2468D1AC9B017A54586A4C40D5D64D44DBF935416CD59
          98BF7064A775D33FDB30B39750B0A3D47D4068EB6F125BFBEE14D1378928B5F9
          38BF30A17BFEFCC6F9C19CB5F464AB81F9C13DA7F76AD690CC579244998F060B
          97A230AE93C298F014F6800CF39524F3983F72E4994B979E9053FAE024E00FE3
          F6ED77F02F390F7FF4E84305CC2FE6B83C29356D9A979A5A6E38DFAE7BF2A4C6
          C3A310467FFF62FC5B56A69FC5DAB5A532D55D5DF302673D96677ED3A64B5353
          6F9053FA4F9E9403FE30FAFB1FC3BF65655586595C32E9DCFE8B96C85748550A
          4EBE69EA1CB300309D0CFBA5A5A52D5AB490597094961A921237EC88DCDDDD65
          DC500A1F85D19C85F9E1633F8E0BE8B569566FA16047E95B43C35B8D4F6EF5ED
          5E118D4F46A929E3FC603598FF34A1DBE390468FE773D652F1363DF3B7CCED61
          C597F0C9339F3CABA724893EAB87060B97E2C9BA0F14C67CBAFE43610FC83CAB
          A72499F7AC1E46F5E4BAF799338F79F7F6E5E41493638192922A49E67BFDB42A
          12CC2FE1B847522A29A9A9A8D08FEA13122A58BB9BDBE3E3C72BC9B14051518D
          54F5264D1E05CC2C94677E49492516044D4D48C8E6DDDB77FCF83D722C505454
          AE315F2A611CAB767CE79845E76D354E867DFC6CC68E1DEBE2E222BAC8B0A3B4
          DA9094B86147F4EDB7DFCAB8A154A7533A53F62AF9104392F9D78EAFE7478CEF
          BA69D6E75B82FA08053B4ADF1D11EA3E21D5FDBBFD229A908A528577BDE8999F
          8471FE9756677EC9F62E4F16B83C59C0594B25DBF5CC57E9E5B352EFE4B9753E
          DD28481FDFB92AFA4E1E3458B8144F23DB549C8B361AB3EACEB1E255ED843D20
          F54E9E1F53D6188D79F3CA09F3DEC9034E3E7D5A19127255B4342222A7AC4C7F
          502055DD6BF84F2B9683F9651CF7444A5555BA870F6B3A767C265ADABB774971
          B1FEA040AABA8BCB932953CA8C3E9FFFF06169C78EDF8B96F6EEBDABB8B80207
          0552D51B370E1F3B264574F7F382A4662A7FAD989C21778259FC739BCEC9B0AF
          DF23555575ECD8514860586047E9F31D973237A48F3EFA48D40DF6BADDA08268
          F46E78721FBCFCBF767CDFFEAAEFBA6D9ED57BEB9C2F84821DA51FF9CC6B3931
          DD7DF211A16047A972E69FDD317B8F0ACC2F4FECFC6C116745952592717EF706
          63BE85EFDE2D13ED81B0A6252BDA946EFCA02CBE93944AE33E2C8969F72CBC99
          B0071CF1DDBBD08A65603E06F0CFD413E2ABFA1EBE468DF4DFF0B12E1F1C2B39
          07901B86F94E867D42250CAA7D7C7C5AB66C492EB3638A3C2CBC77D02B74D319
          46FBEEEEEED40D7932C237295AFEADCBF173BF24224F5BB8CDF89988FC4B5FB2
          80BC1D3F9F1F3BEDD3B8805EA2EFF4821DA583264D7F6D627ACB69A784821DA5
          F2CFDCF0996F3DE0D7313FA96B59A84B5928672D55ECD0333F7E5EC39DDBB7B0
          13D0602B2E3EE90187FBC60E19E7AF5C9EE9E757C971652AC9C5A56CDAD47255
          99EFE2123662C40B7D6EDF3980DC00B300ED9D0CFBB6A1A0B2F4FDBC2F59B9CD
          3CC78AF732453B7E0FDF96A0CFD7CFE89918E22914ECFACFEFCC1CDFE2DBD4D7
          A66708053B4AD9476DC9C628C5FC0CC36764ADCEFC8A9D1E95E18D2AC3386BA9
          2AC9C0FCE04FD5B8874F8D6FE956EDEC5219E662DD1E7044E67B7BFD141D71C5
          CFAF9AE32A5552E3C69533A6ABCBFCC68DC3478FD298AF6E7CE79845D76DD54E
          867D76F8284C42AC2874134FEC50D590B62D184447F244B03CF7E5B8ADF3FAB2
          7258E6272DE8B7CEFFD31D219EC8B08205767D69C8F03F4EDC22F206CF99E760
          4729FB860D995E074573F62FF969DDA81F63475A4B39FBC311B67257F7EA258D
          ABC3396BA966277956EF33359ED5239D60452160D54E8FEA7017EBF6804332DF
          FB4C4CE4653FBF1A8EAB56494D9A54CF0A30723DDF423569B2E49BB1DAF57C75
          E33BC72C3ED956E964D8E7419897B8FA6451E82697EAC74958388837988785C6
          DC1ADC9795DBCCF3AC04CC57726E9FFD5EBD8CDCE6DD5422CC568910705340AF
          EDC15FEE5AD49F152CB093390E9C36CF0DA3FAC02BAC60819D7C578F8ADD2485
          CC574915BBBA57EEF3B0A2AA0DE3FCDDCB07C7CFEB0152594B08A8523F5877F1
          F53DB0AF335A6BC565A78B0F5AAA2D301F437DF504E607049C50AFFDDEDE6981
          B38EA88A0B3B4FCE01E40698458F843227C33E25B0FEE99DFA895838E613F34A
          DC8C2786F9DB170EE60DE661A1CCDF16DC97955BC079560EC5FCC4F97DB704F5
          DE15DA7FF7E20144C8C3023B99E3F27963FE63DA8E7AAFEC0ECA84057696F9F2
          E3FC1745B5292F2F2F3A3ADAD3D3B35DBB764D9A34C114795860176E003676E6
          743F1D4D495CBF445EF021CBA89EB3262A557161E7C93980DC00B3F82CE19993
          619F63489EFBF381C39BE76C5B300853E4750CCF59B7B8338FFAC45E6B13781E
          53E45937764F187F3473D0F2C31D266EC714F97AD4A7CC5F349837988785FA24
          CCF764D522E0022B8762BEFE3CF69C2F40F8E4C503F6840DC4147958D899FA05
          FABF1D70DC6DCE35B7B9B998220F0B2952783DFF459121A5A5A5F5ECD953F497
          0A3B4AD9B56F73672077F7962899ED9324F8C09338F3BE192214EB4C6E679512
          4A89B3EDD79D41517EFF1259A7F52D5840B59BA17CDFEF7CC93980DC00B300CF
          9D0CFB5C2D7E73CF1DDC1632F0FB797D89908785E297BA01F2AF079EA3F7CF23
          4FB0CF921C69CBE14BBF1FB795520F79586829F54C5C349837984F6498BF3DC4
          93558B808BAC1C8DF9D0762C5F88E7CE85FD30455E38DF1973A67D1C94F07AD0
          054C91A77685F7EDBF283290F66F7FFB9BCC8F15A594B7F6E08C9136DD14AF5F
          3DCBDB386F649DA34FAB90613905FBA6836779A8DF74F85C524E35C91367FA53
          F8DBC4B53CDA7F3031B6DDF443E427A26F83CDD79D01F87CE6EBF8CC274BA776
          4B64569CD327E7007203CCC273FB2327C33E968BEC6D7ED83C97779A1D1696F9
          C4ADCFBA5CB719E758C122647EFFD0E4B77D13EAC0E79B008B90F93B4287F006
          F3B0509FC4907EAC5ACCBAC4CA71984F1E2C7C70E3E2EDECB3D72E9FCEBE788A
          08795860A79F8956EED6C0B2392858E5E5E5490DADD9049F3C43B20767CAFC23
          3B63D64CFFECA7FDDFD32DF3E2A91458D2B72C26BF3096F9B11BF4CEEBB77E4F
          81BF71B7DE796DCC62827D96F95FFA4E5DF4CDFF7D3A7E0EFD59749EB0189621
          BEBEC0BE9D309F00BF1EF3EB760BCF451756EDC6185D774E9C9C03C8AAC62769
          D0F63C27C33E570B73F9D3ECD4ADCDEC8BBC7BE9601132FF0FA3D7BE3D8E61FE
          B804584498BF78484288272B58A8CF8E05FD58392CF3758657101515155DBF7E
          FDC2850B67CF9ECDC8C8C01479586067DF7BA4C44D4952FE55244533B5352B58
          4547472BFCBD461B923D3813E69F3D9ABC7E56EFA485FDE3E77E793A6D332C97
          4EA56C9EFD052C1B03FB1CDBBB91657EEC8E3AE70DDF6F86256E779DF3EA4D1B
          59E67F3C6E61F8B88FD64CFD247262E75EE303F19BE832212C62426758968EFF
          B887CF4C7B603E057E1DF3D9541FF81AF3554D1AF315A6AF13EF3A19F6B95A98
          27860ED936DF93552233E4A66E6FCEBED462E60556B098CDFCA4C55F6D0FE9C7
          0A963AE62FECC7AA45E065568EC37CF41CE0999595D5BF7FFF575F7D95BE8208
          795860472979BFB11237BA44F2EF3D52C87CA53335716F7AE9741A91B0E8EAB9
          E3E77F3C84A94945AC3C3D3D15FE5E3D0DC91E9C09F32B2ACA92564ED91EE2B9
          2B74C0D6797D0F6C9AF7FDBC2F914F5CD06FFBF2F125C54F58E6EFC82C5BB3A4
          CE794B4C9DF3DAD0F1DB2F3E6199FF07FFFDBE3E43A227778DF5EFB662529771
          1347477DD705F998291EDFF9F4EB30751F61BE49AFB65415FB75C6FACCD709C6
          F9D45998D198AF25B5D3A8C41B4E867DAE16E6F2A7D9A9DB9B732EF3AEABC362
          36F377867D853D182B58A84FD2A2FEAC780FB2390EF34B4B4B31667EFFFDF745
          5F350C3B4AC9778C94B891C531FA7E6385CC573A535376A5174EA43CBA975552
          781F53E4D9A233C7D34A9FE457943EC5147985453CB56BD74EE1EFB59D21D983
          333DB75F5951B63BDA1F47B7C98B07EE5E3C704FD840FD59AC880904F8BAFAE7
          F681FDD8657CE7D8B00989979E08AFE7EBB1EF3B14D85F37BD1B68BF7E7AB7D5
          533CFC7CFB7798B68F5ECF37E913166A305F67E2F5FCDC6BD9C45F2AA331DFBC
          D4B87163B5E33BC72C7C77643B19F6B95A98CB0FB9A9DB9B73AFF0CEB1C36236
          F377857FB563617F56B0501FDEE3ECAF055D65E538CCC750197B50994F0AA194
          7CAF58899B4ED9778C14325FE94C4D013EEF5E008A7D90BCAABC0448C7E100A6
          C853B6CB1409D5A44913A38B46521343B20767F61E3E607FCFCA090038B6B43D
          6183762EF12A7DF68496F2EEE14BCA2C8B5F56E7BC75B11705BEF01E3E603FF0
          BB01A0FD8619DDD7CFE8BE6852AF3F1A804F996FD2A72A75F5CFC6CB9D96AFFB
          69D7119B271EF6F9AB55C75FCBB40AD86E3463DEF90B85ABCF2953D3A64DD58E
          EF1CB3F86EC76527C33E570B73F9213757C7FCAB2D665D66058BD9CCDF1DFE55
          D2C2FEAC7633CCDF1D3A80D56B4199AC04CC57F21E3E9B301F6875737393D9B2
          50FAD89094B8E9947DAF5821F395CE5419F02F9D4E13BD0510F6ABE78E03E684
          EA44E45FD8658A44E762274377F3C6F93AFD35FCD4ADC17D8171301CC2E1F591
          1D758FF1F1EFDB4FE63BAF5F1F25C5FCAE13C3564EEA02E6AF37301F63FE81E3
          27B1CC37639C2F0E7C51EC0B06EA5267E995A05E289993FCE69DBF68FA0227E7
          B89EDF00B3F04FFAD9C9B0CFD5C25C7EC84DDDDE9C97C93BC70E8BD9CC4F0E1F
          BA73D10056B0509FE4C50358BD363B939543319F5C27974A2825F855E286BE31
          EA6612F315CDB47637492EB9B362C92C1CE4D3A13E3C2B4A9F52AA1355961593
          205245A2FB7E3BB9446FC6F57C9DE12EFDCDB3BFD8153A407F8CBB78188EAD9F
          5FDBDFB654C8FC8DBBEB9CB72EAA738E5DBB54C8FCCE1316474CE81CEBDF6DF5
          548FF0499FC64CF120D7F607F94EA0CC376F3C2C0E7C1EF60545C211BE254FE9
          C99CE447A9A9E72F34E63B07901B60164149A79D0CFB5C2DCCE587DCD4EDADE0
          4CDE397658CC66FE9E2543B11363050BF5310C6EEAF4DA9C2C568E736E5F397E
          95B8D11522934C62BEA2991AF691F4923B2BA397DFE9C18294149E44A0B2935B
          F1CDB86FFF46D6B935D33FC36F2B915CC37F5AB87FF3420CE3B1E16F0CFCFC44
          EA1696F99B0ED739EBAFE15F2C5C1F53E7BC66CB1696F91F4C8C5DF4CDFFAD99
          FA498CE11AFE9FA6EDF51AE78331FFDA69FAFBF63FF10922CCC7F11745F1F34F
          55D66ECCC24F558A8EB1C5B12F51243CA56FC9837A32E7F6CD1BE72BDC1B687A
          9115B2F39893619FAB85B9FC909BBABD353F8B37DE86C56CE6EF5D3A6CB7E1EE
          242A58A8CFDEF081AC5E9B93CD4A82F96454CFA29EDA6DC5FCA2A222A3636972
          3D5F899B4ED9385F6134E5CC672FB9B3622FBF37CC38DF4E1EB937EFF9FCB42D
          8B3706F6A177E9D75457A76F5964B04C282B29D6D51FE7AF8DD13BAF0D1D4FAE
          E127E554C7C6E89DD7844E48BC5C4C99FFD6E838507A888F2FF0AEBF4BDF700D
          BFDDF443C37C7D6099F0CD80F69393E1C35E3220126ECFEC4F4A3DE65BF8AC9E
          F0DCBE79E72F2EEE5B9CB163B6158580D7E2FB5D8DF5B0A21050FF598AE04FAD
          2804C45E2E2932347EF5E1F53199D15159565226A2212622931DE9D665E1EB22
          0F852FBE1E382BDB5A4234C44464328BF50BE684CD899F3AF9A0CFD8546B09D1
          101391113F7CD74127C33E570B73F9213757C7FC9CD76667B382C56CE6EF5B3A
          2C79F14056FB18E6EF0B1FC4EAB5B939AC64992F9A37753CA944974EA7B1B7A6
          9353DFBC7F4B4B4B5BB4682183059492FBF695B8E9945DCF57184D21F38597DC
          79D82797DF1BE67ABECE3E5EAD6792337B3DFFF8BE4DF42E7D24FCB08EEDDD48
          80AF135CCF5FB37913792CEFF92D7D39D5AB376D24C0A7CC7F7DC022201D3F82
          4F46F8FDC1278EFEECDA8E4BE836E2BBDFFB6E46297C8C329F1C3B90713EF272
          E373E981BACC88DD2A2FE4113DB78F6D8C1EB02B3F7FA1C63797B362BB9CF46B
          644521E096B93DA6F76A66452120B0BC2AE2EA77137E1E35EA8CB7B7D5846888
          89C8880F2CCF989ED3BEFD99E6CD4FB8BA1EB396100D311119F181E5512353DA
          B65DDDACD9B2264D96584B888698888CF82B76A53819F6B95A98CB0FB9A9DB5B
          21D75E9B93C30A16B3999FB2EC6B726B12152CD42765C920562DE75E63257D6E
          9F77259F1A85FB8F5B574FE79C3D78E5D45E4C913715F874584BFEA5A7BE79FF
          A2E7C68E1D2B736F3C4AC9F3F94ADC74CAEEDB57184D21F371E48281B728F089
          B098E460A701EEDBA7BC75ACF7EDB3D8974A66BF6FBF559FD9AD3DE74B09A5C4
          599EF9F4D8811C23F0406D957BF8ACF2D65DE1B97DF9F37452E72F321283F62C
          FAC28A42C0ECD8CEA7FD382B0A01D5F8E63246E380B3970A5F5B464C4446FC75
          9187DBB73FEBE27282E3AC2CC44464C4C7681C707671B1FED796111391111F28
          7632EC73B5304F59368C77FD1C168A5FEAF6DB05B93CF6C2C223B94E31F35397
          7FCDFBB5C2427D52970E66D5725E2E2BD9EBF93CE0EB18E673B5EFAB07E441FB
          823B99CF1EDDC5147993B0CFC28D472DFEBF8677DD75ECD851F41978D8D9F7F0
          2971D329783E5F6134E5CC179E7E1765BE4EFDE7F369D2BEAB67AAB3D1EBF9E4
          D80153B2555BF7593DAB7F5A87069467BED4F90B21F3F785F53BB062C4B18D93
          4FC607F004238AE020CFFC6BEB3A9F99CCB1CA98D6F4FCDC3657967D90B9B213
          4F30A2080EBC2AAC1050C8FC999FFF3A64D83B9113FF1E33AD0B4F30A2080EF2
          CC5F1F938931B9D5814F84C8881FBEF856F3E63F71DC693584C8883F75F2418C
          C9AD0E7C2244467C40D8C9B04F612E8FDF3AE62FBCCE632F2CD48DFEF415323F
          2D62F8BE258359C1427DD2960D66D572DE7556668DF3C99C09F631B607EA29B5
          908745E1CEE6D2E934008D329F77769AF72F6900FACFC7C7A765CB96F45D77C8
          C3C2BE5A4FB99BCED87BF81446B3D6389F77F95DD5F7F0C54CEFE570B213E6DB
          8FB3E562CFEDCB335FF4FC8528F341F5EB679275120945709067FE8DF59D7F9E
          CAB1BA14DCE6E131C9533C288203AF0A2B0414321F543FBE73B9544C14C1419E
          F9D15159DEDE6A311F91113F70D64D57D70C8E3BA3861019F17DC6A63669B244
          25E62332E26F4FDEE464D8A7304F8BF87ADF9241AC60A1F8AD63FEA29B2D836F
          B08285BAD1AD4E21F3D32387A72C1DCC0A16EA93BE7C082BDE7C4DBF9EFF7CB6
          DCF3F018D863844FA9853C2CCA998F2A94F9BC6130EF5FA99FA63D2435C6F96A
          8B6569FAA6F9577F4A2DCCBF5D5D558529F2B04881D724E70DD1F3E3F7A62666
          DCDE995D8529F2B048394F9C32AED7D425EF4F4BF8BDFF014C91878575B0936F
          E9DA4933AC887D92317A3D9F77FE428AF918CC63F12FA44409C7F930D222A931
          3F02DEDCD0F9823FC72A27F20354BC93E8951BD38927186911DCAE86B4B938B3
          29AF3A020A998FC13C2A262E1F2D1CE7C3488BA4C6FC46995F5D5DF3F8714550
          D065D1D23D7BEED7D4E82A2B6B8C31FFB6ABEB798E3B27AAAAAA9A3B772ADE7B
          2F4BB43438380FBC292FAF91AA8EC8882FCF7CC32C8ADF7B2F4EB43438F83416
          B3BCBC4A9EF97BF6C43A19F629CCD32386A72C19CC2A9D197233CCBFD532F826
          2B58A81BDD692864FEFE48AFD4A54358C1427DF6470C61D572FE0D5666DDB76F
          9B717E6D2D51A20A832B74134F4C106210FF4E1E5D0FCA666A94F932B7D99BA1
          FCBBD79E15E5B38285C7FCB8F943CF1D49AC119CFE80057694B2C835C979CDDC
          A15B921277D67EAFB64E39D5B0A394750E9FE6D96F72703BFF833CBEC1023B4A
          899B928BF924F1EEE19317FB7CBEBCC8B37A76D20C990D493D09373321F3C173
          2C3BA6C2313C29A24974CC8F8077E23A5F99C1B1BAB9BA13FC31E5D969114D8F
          4E2CC95ED886E7838042E683E7F0C7543886274534898EF98D321F3C8700F6D3
          A71FB1767FFF8B3816002A5174F3668931E6DF7175BDCC719744059E4388131F
          5FC4DA3B74C8BE73A7B2AA4A87A28C8C52A9EA888CF8F2CC07CF21C32C32597B
          870EB13816C01181611679F2CCDFBF679593619FC25C1EBFD4EDEDD0DBEEF36F
          B18285BAD12D4D21F30F4479A52D1BC20A16EA7320E22B562DE7DF6465D6F3F9
          3AB1EBF92855F77A7E7D08F3128FE70ADDE452FD38F2176D14CE54E17DFB5601
          FE9382BBD9670F5D3E9DCE0A16D859E683D5327D805296CC2639EB812FCD3794
          B2CE9E93E6BCE37F481C71FE87506A9FCC2F2D2DBD77EF5E6EFD040BFDA003DB
          8C6D974BD79DBC17733897152CB00B9BF1BB29E96F8FDFF1DB6FBE67050BEC4E
          C0FC4B07D6D0313F46FB42E6DFDFD4393B80637567AD1EEC98F2ECB4287F8F2F
          327949FA3DDFAD951FF07C10D00CE6EF8E9E48C7FC18ED9BCA7C5FDF9FAF5E7D
          0A24028C6565D5111139301E3C984F86F7506CEC0D05E7F6EFB9BA62189F292A
          37B79C43874A10B0A2A2A6B8B8BA77EFBB30464515C2420E07BCBC1E48D58510
          19F1E599EFE61675E8D06DC32CAA8B8B2B7AF7DE056354D439C32CF487035E5E
          6946CFED1FDD1BE164D8A73097C76F1DF317DF710FB9CD0A963A40D42685CC3F
          B8C28B77021F16EA7330F22B56EE21B75899F51E3EE8C7C410FAA357E3BE7D8C
          7885FF9225D61F57D64FC4C263AF5137E3C914E64B019FF5D1297B3EDF5AC0BF
          76EE07A128F6C9597A3A683F7F625FF29A99EB833C3145FE798F5557D3F3F6AC
          B368629D3744CF1719E1D71FEDD393FC13278D7E67728A1C6C27A7C0C70E990F
          BC47F9FD6B63601F56B0C02E6C06F02EEA0CBBB019C0FBBC911D978EFF98152C
          B03B0AF309D8798251577B382075688080799B3B5F0FE458DD8FD583BD60AF2F
          323CC1882264A81BC9B3424029E613B0F304A3AEF67040EAD040E1F5FCB0B0AC
          92922A32AAC79464B2B29EE28840D9F5FC07AEAEB91C774D461E1EF78A8AAAC9
          39054CC9F0FEC8915237B7EBF2151119F1955CCFF7F0D85E54545E59596D9845
          3519DE1F39720747044AAEE7FFB82FCCC9B04F617E708577FAF2AF58C14277FB
          75CC0FBBEBBEE00E2B58EAE8509B1432FFD00AEFFDCBBF62758899E9A1A8A1AC
          F8C71A7CE63FE7F0D1A41FD3E23015450A800FE8B1D8B7504A9ECF67497EFBD2
          61CC1DD4C514791DC373D62DEE5C719FCD796D16DEC21479D68DE543FCD1CC41
          CB0F7798B81D53E4D92285CC670396161716E5DF7C78FB2AA6C8D70B55FF28A6
          A2F42999F26EB3B7F053ADF977AF49019F621F3E40E8D59F5249DB00F94D73FA
          E9DF1AB97820A6C853ECC38790993ACB24EA1CBF37D52869E1439C7B4E98FBBB
          6907E4AE604F3B001F3B643E46F5E0366FC3800576613330AA1775865DD80C8C
          EA01F90D33BAB382057621F3EF679DCCD8159E16E945843C2C425C1FCCBC3D68
          67D66F965D24421E16A1DBF10B59BE6B8FBC3B39890879584C623EB99E2F93C8
          D85E86F90FE33BDF9ACDB17AB0FA03F99870805BDE7A3DF331E5554740A9EBF9
          32898CED2D643ED1C387E534ECC9938F9454A9657EBEABEB2D8EBB6954B9B995
          74167171CF94544164C4577E0F5F6E6E11338B2BCAEFE13BBF2FC4C9B04F617E
          68A5F7FE88AF58C142BAA83EF3EFB92FB8CB0A16EA467B5529F365677A78C550
          56FC630D11E6FF98BAB1E8E1DDEAAA4A4C911705BECE70972F8BFDB49D714291
          A24DB37A0B4546F8EC4DE9BCBBCD79FFD2C505E453960DA57B4DE409F675F5F1
          0BC8BF1E72ABEEAEE3905B04FBBC3EDE72F8D2EFC76DA57D8C3C2CC23E56C87C
          40FEE1ED2BF46A05F214FBEC6505F9F7ED5BF8A9D66745F9E85819E6A3143E40
          6861FEF30B4A18DB03F574D190878514C18790993ACB24EAACBF69CF2869339E
          3BFFE7B8D59227F66B4FEFC34763BE14F301795E5858843007E41B855E60058B
          D00D90E7BD02131693987F60C5885BE7D3A5560D8AC8357C19E63FFEBEF3BDB9
          1CABBCA56D4ACE464BC544111CE056B0C1703A6043275E750414BD6FFFC79435
          52315144AEE15B719C5F51A11F27430505E5FEFE179531BFC0D5F52EC7C9C9C3
          A3A0A8A8A6B2521FB9B4547F3A0EBA71A3AA43873CF98A888CF8A68EF34B4BAB
          C8098B1B379E74E810AB84F95753E63819F629CC0FAFF4E65D3F3F2CCAFCF0FB
          EE0BEFB18285BAD1AD4E21F30FAF1A712072282B58A8CF0F2B86B132C67C8CED
          817A3A13E485A37DE1385F14F844A2C027E2BD6D8637DCE5FD4B3B8FCC9D95BE
          25823EC6D89EF7B0112CC23EEEBF68F7DB3E75CC471E16611F2B7C0813637BDE
          7D7EB0D485AAEDAE9F8EA51D4E4DDABF3761FF9E6D98220F0B2D251F33215594
          7FEAC40CE657D7BEAA607D90A7FEF551B58B863C2CA4083E84CCD5CC7B0DA412
          75DE995D651CB6D9CF9DDB8E8D333ACE878FC67C29E6636CCF0B0B8B10E618DB
          F3980F8BD00D637B1EF3613189F9BCE7F3C9F9FCAC63F1D09543EB7F4E5E726A
          6B10EF3C3F8FF94FB676CE0FE6EA6941D382E56D1EC77E5018D709C2AE17759F
          1D0978F6C3CCE203DF3D491A50B8B933B523C3AB8E80469FCF27E7F3F76F9A9D
          BE2968EFDA29DF877EB5666677DE797E93983F72E4994B979E9053FAE024E00F
          E3F6ED77F02F390F7FF4E84305CC7FECEA0A748BAB69D3BCD4D472C3F976DD93
          27351E1E8530FAFB17E3DFB232FD2CD6AE2D95AA0B2132E2CB33BF69D3A5A9A9
          37C829FD274FCA017F18FDFD8FE1DFB2B22AC32C2E19653EB906EE4CD8AF63BE
          2C7EA95BDBF007AD16DE67050B8F3248BF1FB5FA6D5F86F9BE09B0D05296F907
          2387B262677A64E53056EE0BEFB21230FFC7B4388CF099BD78252CA2A7F7D97F
          2D613EC53EEFB236EF5F5387DC6D16DEE2311F16611FB71B1EF9DBB1F1B48F91
          8745D8C70A67FAF0F6551EF361A90B65E8AB9387F7943E2BACAEAE22171A3045
          1E16D85FCC71FE5F462FFBDDE45439E64F4E858FC67C4761BE49A7FA45EFE12B
          DED6F9F17C4E464FD6C99DEA4729CF1F018DBE874FFE54BFE83D7CAB22B3BCBD
          24A18D513DB9EE7DE6CC63DEBD7D3939C5E458A0A4A44A92F95E3F217EC0CCC2
          264D1E719CB84A4A6A2A2AF4A3FA84840AD6EEE6F6F8F8F14A722C5054542355
          1D91115F9EF92525955810343521219B776FDFF1E3F7C8B1405151B93CF3E9AD
          6F4E83FD3AFC468F38183594152CA4884543DBF0BC568B1EB08285BAD1CD4C21
          8FE4677A74D53056FCF30BE68CF385F0B790F98FEE659167F54B98DBD779FFD2
          C5951AE763B364FB586A9C4FDCE8027ACE8E7BD32B46DFCD3E5B31451E16611F
          2B9CA951E6633C5F515E227A7F21EC64B46FE1F57CE5CCB793EBF93D464FD1DF
          9A267DDF3E4AE1A331DF41992F73AA9F9EE7E731BF647BE7270B38193D8D6C53
          714EFC543FEC28E5F923A051E6CB9CEAA7E7F979CC5FB13C4BE6C5BBE0E4D3A7
          95212157454B232272CACAF4070552D51119F1A74C29737179C271E2AAAAD23D
          7C58D3B1E333D1D2DEBD4B8A8BF5070552D51119F1C78E4969DC385C0ADA68E1
          C387A51D3B7E2F5ADABBF7AEE2E20A1C1448554764C4CF67EE78770EECD37DFE
          B9DDA187A286B18245274083E7B6C2568BF258C1A2339747F2333DB6EA6B56BC
          F30BA65FCF17021F530B998F7D09657E49EDAB6978FFD2C5B5EEF5FC4DA9A7DF
          EA3FEF8DC14BDB0C8DC2147958847DAC70A6F2CCCFB978AAB4B890005F78AB1F
          ECC8C047FF399D1FD3732E1CC354F4D528A752E3320EC663CAFB542BCB7C99FB
          F629F3EDE4BEFD6FC70D7D6B7874DB89BB45B0EF7F087694C2C70E996F27F7ED
          DBDBF57CF953FD46DFC38B8065899D9F2DE2E414D6B464459BD28D1F94C57762
          050BEC28E5F923A051E64BBD8A57E69D3C2B966529B91BCF6C21BE9F1F06F0CF
          D413E27B7BA7356A24C97C0B85C8885F98F6AD93619FEEF3EF5F3DF243B4F7A1
          15C3889087458886CD174ADF0ACF6F159A47843C2C66F308B33812ED7D78C530
          A223F5677A3CFA6B56AD16DD6765D67DFB361CE7AB71DFFEA694935F4E5FF5DB
          3ED331459E2D3269A63A63CCCF3A7FA2BA5A7F555CEA563F94C207A8BF9F7B1E
          764C91E79DAD48D9BA02C027425EB846F2EF5E43675E3C952AC43E2CB0EBBFDB
          67B86FDF7E9ECFEF33D2A7CDF018FDF3E79353F5D7F6FD0F618A3C2CB0A3B401
          9ECFA7EF9397BCC46078CFBCDACFE79366C83C9F4F9B61B7F7ED5B2804ACD8D1
          B92C94B3A210508D6FECAC5C9EA9C60776E8381FF1A74D2D777129E3385584C8
          883F6244AA1A1FD8214264C42F4EF37532ECB368006FCFEF0E3D12331253C25E
          511E01F29EDB8ADA2E79882901BE253C12CE94FA1C8FF99A15EF9A8218F34FEE
          5DC7BB685F595E4232EC27B848061492B9A44F8AA4EEDB37E97ABECE16CFE72B
          8CA69CF9E49B3C52B7FA21267C30C2A776E479CC4F5C1F4EC7F9C88B1E883D29
          B87BEAC00EF42AEF9D3CB0C04E9FCFB7A3F7F04DF9A2CF88B16D0687BFE9BDF6
          ADB19B7FEBB31553E461811DA50DC07CFA3E7929D16FE9DA493384B86E000937
          3635BEA55BB5B34B65984B6518672D5525A9C2FCE8882B32D7F32D142223FE8C
          E9E58D1B57729C2A4264C41F3D2A55E6DCBE854264C42F4B1BE364D8B7671E9D
          8819CE8AC77CDEC7B2388E001F537ADEFE871D2B09F609F031A5A71029882C61
          3EBD6FBFB2AC98BD519FF72FBBC43AC3858B7ADD21F11E3E7937A31DAC309A72
          E61B75333ACE8F58300DA8C7081F53E4A5CEBF00EC18CF9F484F3CB17F877E6A
          102CBCF7F0D1F3F6F6F0BEFDF13E43BA7DEDF3EE80E96FF49D8B29F2B0B00E76
          F22D5D3B69869D303F67FF929FD68DB2A210B06AA74775B84B7538672DD5EC54
          85F931919755FDC60EE2CF0A286BD2A49AE354112223FE37635354FDC60EE203
          984E867D7BE6D1C998E1ACE8050522DEC7B224C6F904FBF2E37CDE685FB86F60
          694F64D2F3F9EC120B93D96E463B584934EB32DFE8F5FC858113C2E7F9612A7A
          3D9F4AC9FBF61D4B3ABBF9A09D3D38DB09F379B712584595FB3CACABEA7D9D77
          2F1F0C4A5B5108F8F5D7A96A0B4CF6F3AB564F881F38EB88B7779A4AED4764C4
          07249D0DFB76CC2370E1E4EAE144CFBF8E550B7CE1C7B2F435FF3F39AB03DE0A
          0000004578426F72642E706E6711160000789C011116EEE989504E470D0A1A0A
          0000000D494844520000005A000000450806000000CA28F14C00000009704859
          7300000B1300000B1301009A9C1800000A4F6943435050686F746F73686F7020
          4943432070726F66696C65000078DA9D53675453E9163DF7DEF4424B8880944B
          6F5215082052428B801491262A2109104A8821A1D91551C1114545041BC8A088
          038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE17BA36BD6BCF7E6CD
          FEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E11E083C7C4C6E1E4
          2E40810A2470001008B3642173FD230100F87E3C3C2B22C007BE000178D30B08
          00C04D9BC0301C87FF0FEA42995C01808401C07491384B08801400407A8E42A6
          00404601809D98265300A0040060CB6362E300502D0060277FE6D300809DF899
          7B01005B94211501A09100201365884400683B00ACCF568A450058300014664B
          C43900D82D00304957664800B0B700C0CE100BB200080C00305188852900047B
          0060C8232378008499001446F2573CF12BAE10E72A00007899B23CB924394581
          5B082D710757572E1E28CE49172B14366102619A402EC27999193281340FE0F3
          CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEABF06FF226262E3FE
          E5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225EE04685E0BA075F7
          8B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61
          CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D814704F8E0C2CCF4
          4CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9582A14E35112718E
          449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF3500B06A3E017B912D
          A85D6303F64B27105874C0E2F70000F2BB6FC1D4280803806883E1CF77FFEF3F
          FD47A02500806649927100005E44242E54CAB33FC708000044A0812AB0411BF4
          C1182CC0061CC105DCC10BFC6036844224C4C24210420A64801C726029AC8242
          2886CDB01D2A602FD4401D34C051688693700E2EC255B80E3D700FFA61089EC1
          28BC81090441C808136121DA8801628A58238E08179985F821C14804128B2420
          C9881451224B91354831528A542055481DF23D720239875C46BA913BC8003282
          FC86BC47319481B2513DD40CB543B9A8371A8446A20BD06474319A8F16A09BD0
          72B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C46C302EC6C342B138
          2C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704128145C009360477
          4220611E4148584C584ED848A8201C243411DA093709038451C2272293A84BB4
          26BA11F9C4186232318758482C23D6128F132F107B8843C437241289433227B9
          900249B1A454D212D246D26E5223E92CA99B34481A2393C9DA646BB20739942C
          202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853E22852CA6A4A19E5
          10E534E5066598324155A39A52DDA8A15411358F5A42ADA1B652AF5187A81334
          759A39CD8316494BA5ADA295D31A681768F769AFE874BA11DD951E4E97D057D2
          CBE947E897E803F4770C0D861583C7886728199B18071867197718AF984CA619
          D38B19C754303731EB98E7990F996F55582AB62A7C1591CA0A954A9526951B2A
          2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353E3A909D496AB55AA
          9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659C34CC34F43A451A0
          B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CDD97C762ABB98FD1D
          BB8B3DAAA9A13943334A3357B352F394663F07E39871F89C744E09E728A797F3
          7E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48AB51AB47EBBD36AE
          EDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE753D953DDA70AA716
          4D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA
          1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC535716F3C1D2FC7DB
          F151435DC34043A561956197E18491B9D13CA3D5468D460F8C69C65CE324E36D
          C66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD6
          99359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B86549B2E45AA659EE
          B6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711A7B94E934EAB9ED6
          67C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D6167621767B7C5AEC3EE93BD
          937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5
          F496E92F6758CF10CFD833E3B613CB29C4699D539BD347671767B97383F3888B
          894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DB
          AFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5D13F0B9F95306BDF
          AC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761EF173EF63E729FE3
          3EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD1
          00A78025016703898141815B02FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B9
          4115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE690E85507EE8D6D007
          61E6618BC37E0C2785878557863F8E7088581AD131973577D1DC4373DF44FA44
          9644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D
          58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B17982FC85D7079A1
          CEC2F485A716A92E122C3A96404C884E3894F041102AA8168C25F21377258E0A
          79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC91BC357924C533A5
          2CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD31839291907142AA
          214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507C96BB390AC05592D
          0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E2BCDEDCCB3CADB90
          379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39B23C7179DB0AE315
          052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D6B815EC1CA82C1B5
          016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D1B3E15898AAE14DB
          1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E
          5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97CD28DBBB83B643B9
          A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB561D7F86ED1EE1B7B
          BCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49FBB3F73FAE89AAE9
          F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51DD23D54528FD62BEB
          470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9F709DFF71E0D3ADA
          768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B625BBA4FCC3ED1D6
          EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367F2CF8C9D959D7D7E
          2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B8
          74F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9
          EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7
          F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41D943DD87D53F5BFE
          DCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43058F998FCB860D86
          EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECBAE17162F7EF8D5EB
          D7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C61EBEC97833315EF4
          56FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553D0A7FB93199393FF
          040398F3FC63332DDB0000000467414D410000B18E7CFB519300000020634852
          4D00007A25000080830000F9FF000080E9000075300000EA6000003A98000017
          6F925FC54600000B2C4944415478DAEC9CDB6F14D71DC7BF7366BC3B7B315E1B
          B063706DC7D8987B81B0698C622B4A24D44005ADA0120AED8B5545CD4BD497FE
          157DA9FA9256AAF2D224AA6823071212E7A1181184135CCB940236F892350998
          B5137637DE5DCFEE7AE6F4811D737C7666E7B26B58AB7BA4A3DD9D3D73E633BF
          F99EDFB9687E47A094A29AD63E91AA09AA86AE1ABA9A9C270900044128A50E37
          2797D431504AD71533A5F4B1A1CB0429987CA706DF85721A7E3D304B25800A4C
          E68F19A9811AFCA61637596EE33E3366C921300F4AB8638245D363B356E40668
          198D5C11CC924360C2C18ACC71F67FA3A7AD31B01480CAFC1698E3A51ABB2299
          251BC0EC9367610993450E9C876681D5FC27617E5303A5B83176C5324B0E8045
          0ED2289322D03A209F0546212A779E13635734B36403D80CB4267FBE0820B463
          CFBEBE70CFCBE1B6F68E5DA18686768FC75B9FCD6662F1478F22B39199DB23C3
          5746266EDEB80C209E875B0690CBD7AD32C01AE70BED18DB15F3A6B69D7D5B76
          85C3754DADBBE4607DBB58E3A95773D998928C4512D17BB71FDC1E19F96E76BC
          2CCC02372615B8C98CC0814A0C6C0D00CFFE432F9E7CFDC4C9E3ED1D9D3D5E59
          86484410515CA9445355A89A8A8CA220323335FCD9B90FCF5FFFF7B50F0164F3
          D0CBCC27AB1AB6F359D5B397CAFCDCF603273B5F7AFD78A8B9BD47ACF1422022
          044256AC43350D5453A1E63288CF4586A7BEFCECFCC3BB63AE9929A5A686160C
          14B1029ACFADBFFACD5BFD2FBFF2DA197F204844512C3A89A094425555A45349
          EDCAA57FBDFFDE5FDF7917C0BD3C7CD6045CE37C613143DB62DEF7D35FF7FF68
          DFCB676A643F2144048A4D7C2885A6A9C82969ED9B1B57DEBF31F83757CC6686
          E69B9EC4017B01B4FFF677BF7F3BDCD37B5CF6F91CCDD228A55096963032FCC5
          F93FFFF10F7F02100190E1C09719688D1FD3BA657EE1E76FBDBD6557F8B8E491
          1D332F67153CB83D727EF4A3771C33534A57AD75084514C202CB6FF4BFD9EFC6
          C8FA745FF6F910EEE93DFE46FF9BFD00E47CBD9EFC7544AE73122C2620B698F7
          1E39D3EFC6C83AB3E491B16557F8F8DE23675C31131378A326E80120EF3DF0C2
          A9BE578F9C766364DED87DAF1E39BDF7C00BA7F2E01EA6A3120DE0AD3A4353E6
          C6CE7DA75AF7F79D766364DED8ADFBFB4E3776EE73CC4C8A28845586AE8E86A3
          274E1DF30782A4C4451D0882007F20488E9E38750C4003A38E620AB11A711832
          77F51C3D5623FBCBC25C23FB4957CF51C7CCA4883208A70C4F67F7CEDE8EAEED
          61911955949244514447D7F67067F7CE5EA6C392B8EB131B8636656E68E9EAAD
          DFD21126A43CCC8488A8DFD2116E68E972C44C2C06FBAB3A95432F1D3EE895E5
          5297285729C42BCB38F4D2E1838C3A24069C5F8F106C4C50563137EF387450AC
          F1161F5D38838658E345F38E438E98499126C8F7E09EB6E73BBBC532296345D5
          4444DBF39DDD8C322493199B60C36D1430879A5BBB8532330B4444A8B9D51133
          315946244663D18D9B1B5B88585E68228AD8B8B9B1855307DFB158B90E5366DF
          864D2D0221653634816FC32647CCC46439D110DC2BCB756BB12A9FAFB718B060
          637DD99059F27AEB8432F30A0024AFD7117331450B7C5324825036FFCCFA69F2
          B84EBE090A2E145DC02C08A47CFE99F1D382401C311BF9687E59911D23AE65E2
          C7A26291F5E275C74C6CA884ED64D61A9A701D8AE0B045572C33B1F079BCDF7B
          1AEA20261C5606AE686662D3EF395597DB3E4670E09BD715B399A2CD7AF4B54C
          663DB65D45573433B1583F808DB586722BC4ED752B9A99D85C7AC4536A866EAF
          5BF1CCC4E1D3C23352C9D33A77CD98898DC2CFA263717213EB82B9FA36E9534A
          A4C29A5F291C15CD5C55F433567435550D5D357435550D5D35F4FF4D327B6DD7
          D54BE0C1400075A13AD406839065198AA260319944229E4032957253255DA3B2
          2BA9AD2984DDED8DE868AE47632880F9780A337331DC8ACC63361A2F1BB354AE
          27D6505F8FA6A626C8B277E598CFE783CFE7C386DA0D8846A378148B5594CAF6
          6F6BC62BFBDBB1B92EB072ACB9A116CD0DB5D8DEB21197AE47707D7A6E4D5C07
          357942B498628281408191D924CB5E343535211808582981166170A2204BE6B6
          A6508191D9B4B92E8057F6B7A3AD29541666528EE65817AA3335326BECBA50DD
          9ABA0127E7EE6E6F3435326BECDDED8D65B92E297282D96741AA0D066D915894
          737CDD52CEED68AEB7C56C51CEF67589CDA7430140A31446BB21C8B26C0BDAA8
          1CA514DA933A69193BC3FCBBC91A60C0DC180AD8AAD4B01CA58FEB75C04C4C7C
          0EEF7F28006D299D5E34AA4451145BD066E5F2F56A06D78495AFB562CE294B8B
          4627CFC7ED8D828CCA51003965C91133B1805F55D177F30FA39AAA16145E4C26
          6D411B95D35415DFCD3F8CA2307092BA507401733ABE10A59A56507866CEDE08
          C8A81CD534A4E30B8E9849915E94AD4005A04E4FDE89A85AA1A113F104142563
          A1E60C12F144C1715553313D792782C218106A67F460C51CBB3F13A106CCB722
          F358481457F54222855B91790343AB88DD9F71C46C47D12BF176A35F5D9DC828
          4A819F4EA6528846A3A6C656940CA2D168C1A485528A8CA260F4ABAB13581DFF
          51AAA25798E7264627D45CA6C04FCF46E3B8743D626AEC85440A97AE470A272D
          9442CD65303731EA88593270E26C38EEAA80C67B5FCF8C8DDFBC317EF0C59E9D
          92B47AAEF3281643369B753433545515E3376F8CDFFB7A660C85914D7C3859B1
          B1AA2973223A3BB610191F6FEE3EB89388AB99AF4FCF21965C723433D434150B
          91F1F14474D611B364E1E7F493F5A8A3C50B036787BB77EDD9B1A12E24F02F3C
          265329DB536D4A2952C9457A61E0EC308045144636D9F5D596CC93573F19DED4
          D6BDC3E3DF50C03C1B8DDB9E6A534A91535274F2EA278E9949115FC72A430F60
          CC4E4E8C0F0D7E3C30A42C2DC1EDC6577A08DCE0C703439313E343308ED9D36C
          F8695BCC8FBE991C9AFA72706839AB94C4BC9C5530F5E5E0D0A36F261D339322
          EA2800CEE7CCB9B31F0C5EFCFCC23537C6D68D7CF1F30BD7CE9DFD60104FE2F5
          ACC0ED28DA94F9CEE58F0623A317AFB931B66EE4C8E8C56B772E7FE48A593299
          E568064D309BBF8007C083F7DFFDCBC00F3F2494A3274EF60682B582DDC8D954
          72917E7AEEC32F3EFEE7DF3F03F0205FA70E6E161869E5A36D31FFF7F3F70632
          A91F94AEC3477B6BE480603F72364527AF7EFAC5DD2BE75D33B391B3052F71E7
          016500BE7C0E32390020D0D1D5DDF7B35FFC32BCFBC7073AAD62C16FFD676CEA
          93817F8CCC4CDEB90C2095CF49262FE5B36272134F427E4B60AEDFBAADAFEBF0
          B17063C79E4EAB58F0F9999B5393572F8CC4EE4FBB66E64394F9575EF5F8396F
          3EFB00F87558E6BB1F40686B6BDB9E03E19F6CEBDCBE736BD3735B36FA03017F
          3A954A471F3EF87EEAEEF8FDB191AFA6EFDF9BBD89C73B05A4F3C069063E9D07
          D6D592CBE782E6582EE6DACD2D7B9AB71FD856DFB26D6BA0FEB98D1E9FDF9F5D
          4AA753B187DFC7BE9DBE3F77776C7A71E1DB92998D0C0D3C79DF970D23F3722A
          F1E7B3FE9B0DD965C3C028D394F566AC302A4833B0BA2A32581D5FADBB039818
          BAE299CD7609633B165D2DFA45F9CD43D88E47F785A201B4CA741E0A938D9A9D
          D94E015693958A66E63B4381FBD4E1730637C7FE97C5939060FE4D7B163AC774
          220AA31676A700B3ED23CC3AC375C15C4CD17AD3544DCAE8CAF030D07C84123F
          8160875C7CCE19F4DE4E155DB1CC92C5D85435F99F1DB3EA207CBC9D515976E7
          163BBBB9B859EBA84866C9A429F2EB0846CAD061D8A115BFD519BF95193BF459
          669A9D6A31E0B79AB0543CB364E1F760E07BD826B28CD277DC52B9FF8D16D1ED
          A8B9A299259BE0E056A6583FE6760F39CD60C5CB8D91D705B364139C1A80B0BB
          22B2C32AC0F9AE8830E844DCACFE542CB364139C7DCA020AF7782BE73E9F6E8D
          5CD1CC920B707E2FCE72EC5C8B3219B96299FF37002D2B69806B5BAC66000000
          0049454E44AE4260827685C1AA}
      end>
    MenuSupport.IcoLineSkin = 'ICOLINE'
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'MS Sans Serif'
    MenuSupport.ExtraLineFont.Style = []
    SkinDirectory = 'c:\Skins'
    SkinName = 'WEB (internal)'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = 
      'TMemo'#13#10'TMaskEdit'#13#10'TLabeledEdit'#13#10'THotKey'#13#10'TListBox'#13#10'TCheckListBox' +
      #13#10'TRichEdit'#13#10'TDateTimePicker'#13#10'TDBListBox'#13#10'TDBMemo'#13#10'TDBLookupList' +
      'Box'#13#10'TDBRichEdit'#13#10'TDBCtrlGrid'#13#10'TDBEdit'#13#10
    ThirdParty.ThirdButtons = 'TButton'#13#10
    ThirdParty.ThirdBitBtns = 'TBitBtn'#13#10
    ThirdParty.ThirdCheckBoxes = 'TCheckBox'#13#10'TRadioButton'#13#10'TGroupButton'#13#10'TDBCheckBox'#13#10
    ThirdParty.ThirdGroupBoxes = 'TGroupBox'#13#10'TDBRadioGroup'#13#10
    ThirdParty.ThirdListViews = 'TListView'#13#10
    ThirdParty.ThirdPanels = 'TPanel'#13#10'TDBNavigator'#13#10'TDBCtrlPanel'#13#10
    ThirdParty.ThirdGrids = 'TStringGrid'#13#10'TDrawGrid'#13#10'TDBGrid'#13#10'Tcxgrid'#13#10'TAbZipView'#13#10
    ThirdParty.ThirdTreeViews = 'TTreeView'#13#10'TDBTreeView'#13#10
    ThirdParty.ThirdComboBoxes = 'TColorBox'#13#10'TDBComboBox'#13#10
    ThirdParty.ThirdWWEdits = ' '#13#10
    ThirdParty.ThirdVirtualTrees = ' '#13#10
    ThirdParty.ThirdGridEh = ' '#13#10
    ThirdParty.ThirdPageControl = 'TPageControl'#13#10
    ThirdParty.ThirdTabControl = 'TTabControl'#13#10
    ThirdParty.ThirdToolBar = 'TToolBar'#13#10
    ThirdParty.ThirdStatusBar = 'TStatusBar'#13#10
    ThirdParty.ThirdSpeedButton = 'TSpeedButton'#13#10'TNavButton'#13#10
    OnAfterChange = smAfterChange
    Left = 48
    Top = 8
  end
  object frxdsgnr1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 168
    Top = 88
  end
  object Q_jual_global: TmySQLQuery
    Database = My_Conn
    SQL.Strings = (
      'select * from vw_list_sales')
    Left = 240
    Top = 16
  end
  object Q_jual_rinci: TmySQLQuery
    Database = My_Conn
    SQL.Strings = (
      'select * from vw_jual_barang')
    Left = 312
    Top = 16
  end
  object ds_jual_global: TDataSource
    DataSet = Q_jual_global
    Left = 240
    Top = 64
  end
  object ds_jual_rinci: TDataSource
    DataSet = Q_jual_rinci
    Left = 312
    Top = 64
  end
end
