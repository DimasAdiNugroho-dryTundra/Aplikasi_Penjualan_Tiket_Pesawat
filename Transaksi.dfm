object formTransaksi: TformTransaksi
  Left = 192
  Top = 125
  Width = 1099
  Height = 567
  Caption = 'Transaksi'
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
    Top = 16
    Width = 681
    Height = 409
    Caption = 'Data Transaksi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 344
      Top = 32
      Width = 119
      Height = 19
      Caption = 'Nama Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 344
      Top = 72
      Width = 110
      Height = 19
      Caption = 'Nama Maskapai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 89
      Height = 19
      Caption = 'ID Transaksi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 152
      Width = 57
      Height = 19
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 60
      Height = 19
      Caption = 'No Tiket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 72
      Width = 79
      Height = 19
      Caption = 'ID Laporan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 344
      Top = 112
      Width = 70
      Height = 19
      Caption = 'Berangkat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 344
      Top = 152
      Width = 31
      Height = 19
      Caption = 'Tiba'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 192
      Width = 51
      Height = 19
      Caption = 'Jumlah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 344
      Top = 192
      Width = 42
      Height = 19
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtNmPlg: TEdit
      Left = 480
      Top = 32
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object txtNmMskp: TEdit
      Left = 480
      Top = 72
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object txtIDTransaksi: TEdit
      Left = 120
      Top = 32
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'trx000'
    end
    object dtpTanggal: TDateTimePicker
      Left = 120
      Top = 152
      Width = 177
      Height = 27
      Date = 45207.581196770840000000
      Time = 45207.581196770840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object txtNoTiket: TEdit
      Left = 120
      Top = 112
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '000'
    end
    object txtIDLaporan: TEdit
      Left = 120
      Top = 72
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'inv000'
    end
    object dtpBerangkat: TDateTimePicker
      Left = 480
      Top = 112
      Width = 177
      Height = 27
      Date = 45207.581196770840000000
      Time = 45207.581196770840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dtpTiba: TDateTimePicker
      Left = 480
      Top = 152
      Width = 177
      Height = 27
      Date = 45207.581196770840000000
      Time = 45207.581196770840000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object txtJumlah: TEdit
      Left = 120
      Top = 192
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dgTransaksi: TDBGrid
      Left = 24
      Top = 241
      Width = 633
      Height = 144
      DataSource = formConnection.dsTransaksi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = dgTransaksiCellClick
    end
    object txtHarga: TEdit
      Left = 480
      Top = 192
      Width = 177
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 712
    Top = 24
    Width = 353
    Height = 193
    Caption = 'Pilih Pelanggan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object dgPelanggan: TDBGrid
      Left = 16
      Top = 48
      Width = 320
      Height = 120
      DataSource = formConnection.dsIdPlg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = dgPelangganCellClick
    end
    object txtGetIDPlg: TEdit
      Left = 216
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 712
    Top = 232
    Width = 353
    Height = 193
    Caption = 'Pilih Maskapai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object dgMaskapai: TDBGrid
      Left = 16
      Top = 48
      Width = 320
      Height = 120
      DataSource = formConnection.dsIdMskp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = dgMaskapaiCellClick
    end
    object txtGetIDMskp: TEdit
      Left = 216
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
  object btnTambah: TButton
    Left = 48
    Top = 448
    Width = 97
    Height = 49
    Caption = 'Tambah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnTambahClick
  end
  object btnHapus: TButton
    Left = 288
    Top = 448
    Width = 97
    Height = 49
    Caption = 'Hapus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnHapusClick
  end
  object btnUbah: TButton
    Left = 168
    Top = 448
    Width = 97
    Height = 49
    Caption = 'Ubah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnUbahClick
  end
  object btnBatal: TButton
    Left = 408
    Top = 448
    Width = 97
    Height = 49
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object btnBackToMM: TButton
    Left = 528
    Top = 448
    Width = 217
    Height = 49
    Caption = 'Kembali ke Main Menu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnBackToMMClick
  end
end
