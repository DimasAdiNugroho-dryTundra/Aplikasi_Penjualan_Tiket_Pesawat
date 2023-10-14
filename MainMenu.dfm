object formMainMenu: TformMainMenu
  Left = 218
  Top = 200
  Width = 717
  Height = 468
  Caption = 'MainMenu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 32
    Width = 413
    Height = 25
    Caption = 'APLIKASI PENJUALAN TIKET PESAWAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button4: TButton
    Left = 400
    Top = 184
    Width = 177
    Height = 49
    Caption = 'LAPORAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnExit: TButton
    Left = 400
    Top = 264
    Width = 177
    Height = 49
    Caption = 'KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnExitClick
  end
  object btnFormTransaksi: TButton
    Left = 400
    Top = 104
    Width = 177
    Height = 49
    Caption = 'TRANSAKSI TIKET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnFormTransaksiClick
  end
  object GroupBox1: TGroupBox
    Left = 96
    Top = 104
    Width = 265
    Height = 209
    Caption = 'ATUR DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object btnFormDataMaskapai: TButton
      Left = 40
      Top = 120
      Width = 177
      Height = 49
      Caption = 'DATA MASKAPAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnFormDataMaskapaiClick
    end
    object btnFormDataPelanggan: TButton
      Left = 40
      Top = 48
      Width = 177
      Height = 49
      Caption = 'DATA PELANGGAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnFormDataPelangganClick
    end
  end
end
