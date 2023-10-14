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
    SQL.Strings = (
      'SELECT '
      '    laporan.id_invoice,'
      '    laporan.id_transaksi,'
      '    transaksi.tanggal,'
      '    pelanggan.nm_pelanggan AS nama_pelanggan,'
      '    maskapai.nm_maskapai AS nama_maskapai,'
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
      #9'laporan.id_invoice ASC;')
    Params = <>
    Left = 128
    Top = 240
  end
  object frxRptLaporan: TfrxReport
    Version = '4.12.6'
    DataSet = frxDsLaporan
    DataSetName = 'frxDBDataset1'
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
        Height = 64.252010000000000000
        Top = 109.606370000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
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
          Left = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
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
