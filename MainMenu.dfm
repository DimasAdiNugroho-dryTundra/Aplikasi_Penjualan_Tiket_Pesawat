object formMainMenu: TformMainMenu
  Left = 256
  Top = 200
  Width = 713
  Height = 435
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
    Left = 144
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
  object btnFormDataMaskapai: TButton
    Left = 64
    Top = 144
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
  object Button4: TButton
    Left = 64
    Top = 216
    Width = 177
    Height = 49
    Caption = 'LAPORAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btnExit: TButton
    Left = 472
    Top = 320
    Width = 177
    Height = 49
    Caption = 'KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnExitClick
  end
end
