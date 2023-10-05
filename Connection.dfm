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
end
