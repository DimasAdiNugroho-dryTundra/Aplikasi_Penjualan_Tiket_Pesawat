object formConnection: TformConnection
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
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
    Database = 'aplikasi_penjualan_tiket_pesawat_rev'
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
    ReportOptions.LastChange = 45204.551355370400000000
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
      object ReportTitle1: TfrxReportTitle
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 313.700990000000000000
          Top = 18.897650000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PEJUALAN TIKET PESAWAT')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 109.606370000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
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
          Left = 68.031540000000000000
          Width = 79.370130000000000000
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
        object Memo4: TfrxMemoView
          Left = 147.401670000000000000
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
          Left = 234.330860000000000000
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
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 430.866420000000000000
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
          Left = 627.401980000000000000
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
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 718.110700000000000000
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
          Left = 332.598640000000000000
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
          Left = 529.134200000000000000
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
          Left = 808.819420000000000000
          Width = 136.063080000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 207.874150000000000000
        Width = 980.410082000000000000
        DataSet = frxDsLaporan
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 30.236240000000000000
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
          Left = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'id_laporan'
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
            '[frxDBDataset1."id_laporan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
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
          Left = 234.330860000000000000
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
          Left = 430.866420000000000000
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
          Left = 627.401980000000000000
          Width = 90.708720000000000000
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
          Left = 718.110700000000000000
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
          Left = 332.598640000000000000
          Width = 98.267780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'nama_maskapai'
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
            '[frxDBDataset1."nama_maskapai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 529.134200000000000000
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
          Left = 808.819420000000000000
          Width = 136.063080000000000000
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
      '    laporan.id_laporan, '
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
end
