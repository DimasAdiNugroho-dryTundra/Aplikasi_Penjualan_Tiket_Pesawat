unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformMainMenu = class(TForm)
    Label1: TLabel;
    btnLaporan: TButton;
    btnExit: TButton;
    btnFormTransaksi: TButton;
    GroupBox1: TGroupBox;
    btnFormDataMaskapai: TButton;
    btnFormDataPelanggan: TButton;
    btnDataPengguna: TButton;
    btnCetakTiket: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFormDataMaskapaiClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnFormDataPelangganClick(Sender: TObject);
    procedure btnFormTransaksiClick(Sender: TObject);
    procedure btnLaporanClick(Sender: TObject);
    procedure btnDataPenggunaClick(Sender: TObject);
    procedure btnCetakTiketClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainMenu: TformMainMenu;

implementation

uses
  Connection,
  DataMaskapai,
  DataPelanggan,
  Transaksi, DataPengguna, CetakTiket;

{$R *.dfm}

procedure TformMainMenu.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

procedure TformMainMenu.btnFormDataMaskapaiClick(Sender: TObject);
begin
  formDataMaskapai.Show;
  formMainMenu.Hide;
end;

procedure TformMainMenu.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformMainMenu.btnFormDataPelangganClick(Sender: TObject);
begin
  formDataPelanggan.Show;
  formMainMenu.Hide;
end;

procedure TformMainMenu.btnFormTransaksiClick(Sender: TObject);
begin
  formTransaksi.Show;
  formMainMenu.Hide;
end;

procedure TformMainMenu.btnLaporanClick(Sender: TObject);
begin
  formConnection.frxRptLaporan.ShowReport();
end;

procedure TformMainMenu.btnDataPenggunaClick(Sender: TObject);
begin
  formDataPengguna.Show;
  formMainMenu.Hide;
end;

procedure TformMainMenu.btnCetakTiketClick(Sender: TObject);
begin
  formCetakTiket.Show;
  formMainMenu.Hide;
end;

end.
