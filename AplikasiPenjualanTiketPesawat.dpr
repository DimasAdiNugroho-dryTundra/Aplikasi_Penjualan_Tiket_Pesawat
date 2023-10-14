program AplikasiPenjualanTiketPesawat;

uses
  Forms,
  Login in 'Login.pas' {formLogin},
  Connection in 'Connection.pas' {formConnection},
  MainMenu in 'MainMenu.pas' {formMainMenu},
  DataMaskapai in 'DataMaskapai.pas' {formDataMaskapai},
  DataPelanggan in 'DataPelanggan.pas' {formDataPelanggan},
  Transaksi in 'Transaksi.pas' {formTransaksi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformTransaksi, formTransaksi);
  Application.CreateForm(TformConnection, formConnection);
  Application.CreateForm(TformMainMenu, formMainMenu);
  Application.CreateForm(TformDataMaskapai, formDataMaskapai);
  Application.CreateForm(TformDataPelanggan, formDataPelanggan);
  Application.Run;
end.
