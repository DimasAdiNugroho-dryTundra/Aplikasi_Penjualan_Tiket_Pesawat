object formConnection: TformConnection
  Left = 192
  Top = 125
  Width = 1044
  Height = 605
  Caption = 'Connection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 72
    Width = 185
    Height = 105
    Caption = 'formLogin'
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 200
    Width = 185
    Height = 153
    Caption = 'formLaporan'
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 224
    Top = 72
    Width = 185
    Height = 105
    Caption = 'formDataMaskapai'
    TabOrder = 2
  end
  object GroupBox4: TGroupBox
    Left = 432
    Top = 72
    Width = 185
    Height = 105
    Caption = 'formDataPelanggan'
    TabOrder = 3
  end
  object GroupBox5: TGroupBox
    Left = 224
    Top = 200
    Width = 393
    Height = 153
    Caption = 'Transaksi'
    TabOrder = 4
  end
  object GroupBox6: TGroupBox
    Left = 640
    Top = 72
    Width = 185
    Height = 105
    Caption = 'formDataPengguna'
    TabOrder = 5
  end
  object GroupBox7: TGroupBox
    Left = 640
    Top = 208
    Width = 185
    Height = 145
    Caption = 'Cetak Tiket'
    TabOrder = 6
  end
  object GroupBox8: TGroupBox
    Left = 16
    Top = 376
    Width = 185
    Height = 145
    Caption = 'Daftar Pelanggan'
    TabOrder = 7
  end
  object GroupBox9: TGroupBox
    Left = 224
    Top = 376
    Width = 185
    Height = 145
    Caption = 'Daftar Maskapai'
    TabOrder = 8
  end
  object GroupBox10: TGroupBox
    Left = 432
    Top = 376
    Width = 185
    Height = 145
    Caption = 'Daftar Pengguna'
    TabOrder = 9
  end
  object GroupBox11: TGroupBox
    Left = 640
    Top = 376
    Width = 185
    Height = 105
    Caption = 'formPendaftaran'
    TabOrder = 10
  end
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'mysql'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'aplikasi_penjualan_tiket_pesawat'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Aplikasi Penjual' +
      'an Tiket Pesawat\Aplikasi_Penjualan_Tiket_Pesawat\libmysql.dll'
    Left = 32
    Top = 16
  end
  object dsLogin: TDataSource
    DataSet = zqLogin
    Left = 40
    Top = 104
  end
  object zqLogin: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM pengguna')
    Params = <>
    Left = 128
    Top = 104
  end
  object dsLaporan: TDataSource
    DataSet = zqLaporan
    Left = 40
    Top = 240
  end
  object zqLaporan: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT '
      '    laporan.id_laporan,'
      '    laporan.id_transaksi,'
      '    transaksi.tanggal,'
      '    pengguna.username,'
      '    pelanggan.nm_pelanggan AS nama_pelanggan,'
      '    maskapai.nm_maskapai AS nama_maskapai,'
      '    maskapai.rute,'
      '    maskapai.harga_pokok,'
      '    maskapai.harga_jual,'
      '    laporan.Jumlah,'
      '    (maskapai.harga_jual * laporan.Jumlah) AS jumlah_bayar,'
      
        '    (maskapai.harga_jual * laporan.Jumlah - maskapai.harga_pokok' +
        ' * laporan.Jumlah) AS total_untung'
      'FROM '
      '    laporan'
      'INNER JOIN '
      '    transaksi ON laporan.id_transaksi = transaksi.id_transaksi'
      'INNER JOIN '
      '    pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan'
      'INNER JOIN '
      '    maskapai ON transaksi.id_maskapai = maskapai.id_maskapai'
      'INNER JOIN'
      #9'pengguna ON laporan.id_pengguna = pengguna.id_pengguna'
      'ORDER BY'
      #9'laporan.id_laporan ASC;')
    Params = <>
    Left = 128
    Top = 240
  end
  object frxRptLaporan: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45204.551355370400000000
    ReportOptions.LastChange = 45262.674308715280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 296
    Datasets = <
      item
        DataSet = frxDsLaporan
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDouble
      object ReportTitle1: TfrxReportTitle
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 298.582870000000000000
          Top = 18.897650000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PENJUALAN TIKET PESAWAT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 109.606370000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Trx')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 343.937230000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 540.472790000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Pokok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 737.008350000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 442.205010000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Maskapai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 638.740570000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 884.410020000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Untung')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 151.181200000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pelayan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Laporan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 207.874150000000000000
        Width = 980.410082000000000000
        DataSet = frxDsLaporan
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_transaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 343.937230000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'nama_pelanggan'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 540.472790000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_pokok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 737.008350000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'Jumlah'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 793.701300000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 442.205010000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_maskapai"] ([frxDBDataset1."rute"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 638.740570000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 884.410020000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_untung"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 151.181200000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_transaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 192.756030000000000000
        Top = 268.346630000000000000
        Width = 980.410082000000000000
        object Memo22: TfrxMemoView
          Left = 884.410020000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsLaporan
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."total_untung">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 793.701300000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Untung:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 139.842610000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Diperiksa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 139.842610000000000000
          Top = 173.858380000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '........................')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 706.772110000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Disetujui')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 706.772110000000000000
          Top = 173.858380000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '........................')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
  end
  object frxDsLaporan: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqLaporan
    BCDToCurrency = False
    Left = 128
    Top = 296
  end
  object dsDataMaskapai: TDataSource
    DataSet = zqDataMaskapai
    Left = 256
    Top = 104
  end
  object zqDataMaskapai: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM maskapai')
    Params = <>
    Left = 344
    Top = 104
  end
  object dsDataPelanggan: TDataSource
    DataSet = zqDataPelanggan
    Left = 464
    Top = 104
  end
  object zqDataPelanggan: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM pelanggan')
    Params = <>
    Left = 552
    Top = 104
  end
  object dsTransaksi: TDataSource
    DataSet = zqTransaksi
    Left = 248
    Top = 296
  end
  object zqTransaksi: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT '
      '    transaksi.id_transaksi,'
      '    laporan.id_laporan,'
      '    transaksi.tanggal,'
      '    transaksi.no_tiket,'
      '    pelanggan.nm_pelanggan AS nama, '
      '    maskapai.nm_maskapai AS maskapai,'
      '    maskapai.rute,'
      '    transaksi.berangkat,'
      '    transaksi.tiba,'
      '    maskapai.harga_jual AS harga,'
      '    laporan.Jumlah AS jumlah_pesanan,'
      '    (maskapai.harga_jual * laporan.Jumlah) AS total_harga,'
      'pelanggan.id_pelanggan, maskapai.id_maskapai'
      'FROM '
      '    transaksi'
      'JOIN '
      '    pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan'
      'JOIN '
      '    maskapai ON transaksi.id_maskapai = maskapai.id_maskapai'
      'JOIN'
      #9'laporan ON transaksi.id_transaksi = laporan.id_transaksi'
      'ORDER BY'
      #9'transaksi.id_transaksi ASC;')
    Params = <>
    Left = 248
    Top = 232
  end
  object zqIdMskp: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      'id_maskapai, nm_maskapai AS nama_maskapai, harga_jual AS harga'
      'FROM'
      'maskapai')
    Params = <>
    Left = 408
    Top = 232
  end
  object zqIdPlg: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      'id_pelanggan, nm_pelanggan AS nama_pelanggan'
      'FROM'
      'pelanggan')
    Params = <>
    Left = 328
    Top = 232
  end
  object dsIdPlg: TDataSource
    DataSet = zqIdPlg
    Left = 328
    Top = 296
  end
  object dsIdMskp: TDataSource
    DataSet = zqIdMskp
    Left = 408
    Top = 296
  end
  object frxDsTransaksi: TfrxDBDataset
    UserName = 'frxDBDsTransaksi'
    CloseDataSource = False
    DataSet = zqRptTransaksi
    BCDToCurrency = False
    Left = 488
    Top = 232
  end
  object frxRptTransaksi: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45229.480293044000000000
    ReportOptions.LastChange = 45262.681500520830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 488
    Top = 296
    Datasets = <
      item
        DataSet = frxDsTransaksi
        DataSetName = 'frxDBDsTransaksi'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 336.378170000000000000
          Top = 18.897650000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA TRANSAKSI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 204.094620000000000000
        Width = 980.410082000000000000
        DataSet = frxDsTransaksi
        DataSetName = 'frxDBDsTransaksi'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."id_transaksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 238.110390000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'no_tiket'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."no_tiket"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 385.512060000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 740.787880000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jumlah_pesanan'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."jumlah_pesanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 812.598950000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."total_harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 502.677490000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."maskapai"] ([frxDBDsTransaksi."rute"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 619.842920000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 298.582870000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 128.504020000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'pelayan'
          DataSet = frxDsTransaksi
          DataSetName = 'frxDBDsTransaksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDsTransaksi."pelayan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 173.858380000000000000
        Top = 264.567100000000000000
        Width = 980.410082000000000000
        object Memo20: TfrxMemoView
          Left = 154.960730000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Diperiksa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 154.960730000000000000
          Top = 154.960730000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '........................')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo22: TfrxMemoView
          Left = 721.890230000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Disetujui')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 721.890230000000000000
          Top = 154.960730000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '........................')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 105.826840000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Trx')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 238.110390000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No Tiket')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 385.512060000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 740.787880000000000000
          Width = 71.811070000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 812.598950000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 502.677490000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Maskapai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 619.842920000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 298.582870000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 128.504020000000000000
          Width = 109.606370000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pelayan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dsDataPengguna: TDataSource
    DataSet = zqDataPengguna
    Left = 680
    Top = 104
  end
  object zqDataPengguna: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT *  FROM pengguna')
    Params = <>
    Left = 768
    Top = 104
  end
  object dsCetakTiket: TDataSource
    DataSet = zqCetakTiket
    Left = 672
    Top = 240
  end
  object zqCetakTiket: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT'
      '    transaksi.id_transaksi,'
      '    transaksi.no_tiket,'
      #9'  pelanggan.nm_pelanggan AS nama_pelanggan,'
      '    maskapai.nm_maskapai AS nama_maskapai,'
      '    maskapai.rute,'
      '    transaksi.berangkat,'
      '    transaksi.tiba,'
      '    laporan.Jumlah AS jumlah_pesanan,'
      '    (maskapai.harga_jual * laporan.Jumlah) AS total_harga'
      'FROM '
      #9'transaksi'
      'INNER JOIN'
      #9'pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan'
      'INNER JOIN'
      #9'maskapai ON transaksi.id_maskapai = maskapai.id_maskapai'
      'INNER JOIN'
      #9'laporan ON transaksi.id_transaksi = laporan.id_transaksi'
      'ORDER BY'
      #9'id_transaksi ASC')
    Params = <>
    Left = 752
    Top = 240
  end
  object frxRptCetakTiket: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.584380902800000000
    ReportOptions.LastChange = 45261.774901875000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 296
    Datasets = <
      item
        DataSet = frxDsCetakTiket
        DataSetName = 'frxDBDCetakTiket'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 328.819110000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TIKET PESAWAT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 154.960730000000000000
        Top = 151.181200000000000000
        Width = 740.409927000000000000
        DataSet = frxDsCetakTiket
        DataSetName = 'frxDBDCetakTiket'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 94.488250000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_tiket'
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxDBDCetakTiket."no_tiket"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Nomor Tiket :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            ': [frxDBDCetakTiket."nama_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 374.173470000000000000
          Top = 30.236240000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8 = (
            'MASKAPAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 480.000310000000000000
          Top = 30.236240000000000000
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            ': [frxDBDCetakTiket."nama_maskapai"] ([frxDBDCetakTiket."rute"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 374.173470000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8 = (
            'BERANGKAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 374.173470000000000000
          Top = 83.149660000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8 = (
            'TIBA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 480.000310000000000000
          Top = 56.692950000000000000
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            ': [frxDBDCetakTiket."berangkat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 480.000310000000000000
          Top = 83.149660000000000000
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            ': [frxDBDCetakTiket."tiba"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 56.692950000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'JUMLAH KURSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 143.622140000000000000
          Top = 56.692950000000000000
          Width = 192.756030000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frxDsCetakTiket
          DataSetName = 'frxDBDCetakTiket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Memo.UTF8 = (
            ': [frxDBDCetakTiket."jumlah_pesanan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDsCetakTiket: TfrxDBDataset
    UserName = 'frxDBDCetakTiket'
    CloseDataSource = False
    DataSource = dsCetakTiket
    BCDToCurrency = False
    Left = 752
    Top = 296
  end
  object dsDaftarPlg: TDataSource
    DataSet = zqDaftarPlg
    Left = 48
    Top = 408
  end
  object zqDaftarPlg: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM pelanggan')
    Params = <>
    Left = 136
    Top = 408
  end
  object frxRptDaftarPlg: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.841068900500000000
    ReportOptions.LastChange = 45258.359330254600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 464
    Datasets = <
      item
        DataSet = frxDsDaftarPlg
        DataSetName = 'frxDBDDaftarPlg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Width = 733.228820000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 124.724490000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 132.283550000000000000
          Width = 185.196970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 317.480520000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Identitas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nomor Identitas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kontak')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxDsDaftarPlg
        DataSetName = 'frxDBDDaftarPlg'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxDsDaftarPlg
          DataSetName = 'frxDBDDaftarPlg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPlg."id_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Width = 185.196970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nm_pelanggan'
          DataSet = frxDsDaftarPlg
          DataSetName = 'frxDBDDaftarPlg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPlg."nm_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 317.480520000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'jenis_identitas'
          DataSet = frxDsDaftarPlg
          DataSetName = 'frxDBDDaftarPlg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPlg."jenis_identitas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'no_identitas'
          DataSet = frxDsDaftarPlg
          DataSetName = 'frxDBDDaftarPlg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPlg."no_identitas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 608.504330000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'kontak'
          DataSet = frxDsDaftarPlg
          DataSetName = 'frxDBDDaftarPlg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPlg."kontak"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDsDaftarPlg: TfrxDBDataset
    UserName = 'frxDBDDaftarPlg'
    CloseDataSource = False
    DataSource = dsDaftarPlg
    BCDToCurrency = False
    Left = 136
    Top = 464
  end
  object dsDaftarMskp: TDataSource
    DataSet = zqDaftarMskp
    Left = 256
    Top = 400
  end
  object zqDaftarMskp: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM maskapai')
    Params = <>
    Left = 352
    Top = 400
  end
  object frxRptDaftarMskp: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.841068900500000000
    ReportOptions.LastChange = 45258.356411712960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 456
    Datasets = <
      item
        DataSet = frxDsDaftarMskp
        DataSetName = 'frxDBDDaftarMskp'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Width = 733.228820000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR MASKAPAI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 124.724490000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Maskapai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 132.283550000000000000
          Width = 185.196970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 317.480520000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rute')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 147.401670000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Jual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 582.047620000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Pokok')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxDsDaftarMskp
        DataSetName = 'frxDBDDaftarMskp'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'id_maskapai'
          DataSet = frxDsDaftarMskp
          DataSetName = 'frxDBDDaftarMskp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarMskp."id_maskapai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Width = 185.196970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nm_maskapai'
          DataSet = frxDsDaftarMskp
          DataSetName = 'frxDBDDaftarMskp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarMskp."nm_maskapai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 317.480520000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'nm_maskapai'
          DataSet = frxDsDaftarMskp
          DataSetName = 'frxDBDDaftarMskp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarMskp."nm_maskapai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Width = 147.401670000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDsDaftarMskp
          DataSetName = 'frxDBDDaftarMskp'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarMskp."harga_jual"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 582.047620000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxDsDaftarMskp
          DataSetName = 'frxDBDDaftarMskp'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarMskp."harga_pokok"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDsDaftarMskp: TfrxDBDataset
    UserName = 'frxDBDDaftarMskp'
    CloseDataSource = False
    DataSource = dsDaftarMskp
    BCDToCurrency = False
    Left = 352
    Top = 456
  end
  object dsDaftarPggn: TDataSource
    DataSet = zqDaftarPggn
    Left = 464
    Top = 400
  end
  object zqDaftarPggn: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM pengguna')
    Params = <>
    Left = 560
    Top = 400
  end
  object frxRptDaftarPggn: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.841068900500000000
    ReportOptions.LastChange = 45258.360386712960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 456
    Datasets = <
      item
        DataSet = frxDsDaftarPggn
        DataSetName = 'frxDBDDaftarPggn'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Width = 733.228820000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR PENGGUNA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 124.724490000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Pengguna')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 264.567100000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Username')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 491.338900000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Password')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxDsDaftarPggn
        DataSetName = 'frxDBDDaftarPggn'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'id_pengguna'
          DataSet = frxDsDaftarPggn
          DataSetName = 'frxDBDDaftarPggn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPggn."id_pengguna"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 264.567100000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxDsDaftarPggn
          DataSetName = 'frxDBDDaftarPggn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPggn."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 491.338900000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'password'
          DataSet = frxDsDaftarPggn
          DataSetName = 'frxDBDDaftarPggn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDDaftarPggn."password"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDsDaftarPggn: TfrxDBDataset
    UserName = 'frxDBDDaftarPggn'
    CloseDataSource = False
    DataSource = dsDaftarPggn
    BCDToCurrency = False
    Left = 560
    Top = 456
  end
  object zqPendaftaran: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT *  FROM pengguna')
    Params = <>
    Left = 712
    Top = 416
  end
  object zqRptTransaksi: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'SELECT '
      '    transaksi.id_transaksi,'
      '    laporan.id_laporan,'
      '    pengguna.username AS pelayan,'
      '    transaksi.tanggal,'
      '    transaksi.no_tiket,'
      '    pelanggan.nm_pelanggan AS nama, '
      '    maskapai.nm_maskapai AS maskapai,'
      '    maskapai.rute,'
      '    transaksi.berangkat,'
      '    transaksi.tiba,'
      '    maskapai.harga_jual AS harga,'
      '    laporan.Jumlah AS jumlah_pesanan,'
      '    (maskapai.harga_jual * laporan.Jumlah) AS total_harga,'
      'pelanggan.id_pelanggan, maskapai.id_maskapai'
      'FROM '
      '    transaksi'
      'JOIN '
      '    pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan'
      'JOIN '
      '    maskapai ON transaksi.id_maskapai = maskapai.id_maskapai'
      'JOIN'
      #9'laporan ON transaksi.id_transaksi = laporan.id_transaksi'
      'JOIN'
      #9'pengguna ON pengguna.id_pengguna = laporan.id_pengguna'
      'ORDER BY'
      #9'transaksi.id_transaksi ASC;')
    Params = <>
    Left = 568
    Top = 232
  end
end
