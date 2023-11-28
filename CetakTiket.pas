unit CetakTiket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformCetakTiket = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblNoTiket: TLabel;
    lblNama: TLabel;
    lblMaskapai: TLabel;
    lblBerangkat: TLabel;
    lblRute: TLabel;
    lblTiba: TLabel;
    txtGetIDTrx: TEdit;
    btnCetakTiket: TButton;
    btnBackToMM: TButton;
    GroupBox2: TGroupBox;
    dgPilihIdTiket: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure dgPilihIdTiketCellClick(Column: TColumn);
    procedure btnCetakTiketClick(Sender: TObject);
    procedure btnBackToMMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCetakTiket: TformCetakTiket;

implementation
uses Connection, MainMenu;

{$R *.dfm}

procedure TformCetakTiket.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
  btnCetakTiket.Enabled := False;
end;

procedure TformCetakTiket.dgPilihIdTiketCellClick(Column: TColumn);
begin
  lblNoTiket.Caption := formConnection.zqCetakTiket.Fields[1].AsString;
  lblNama.Caption := formConnection.zqCetakTiket.Fields[2].AsString;
  lblMaskapai.Caption := formConnection.zqCetakTiket.Fields[3].AsString;
  lblRute.Caption := formConnection.zqCetakTiket.Fields[4].AsString;
  lblBerangkat.Caption := formConnection.zqCetakTiket.Fields[5].AsString;
  lblTiba.Caption := formConnection.zqCetakTiket.Fields[6].AsString;

  txtGetIDTrx.Text := formConnection.zqCetakTiket.Fields[0].AsString;
  btnCetakTiket.Enabled := True;
end;

procedure TformCetakTiket.btnCetakTiketClick(Sender: TObject);
begin
  formConnection.zqCetakTiket.SQL.Clear;
  formConnection.zqCetakTiket.SQL.Add('SELECT transaksi.id_transaksi, transaksi.no_tiket, pelanggan.nm_pelanggan AS nama_pelanggan, '
                                      + 'maskapai.nm_maskapai AS nama_maskapai, maskapai.rute, transaksi.berangkat, transaksi.tiba, laporan.Jumlah AS jumlah_pesanan, (maskapai.harga_jual * laporan.Jumlah) AS total_harga FROM transaksi '
                                      + 'INNER JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan INNER JOIN maskapai ON transaksi.id_maskapai = maskapai.id_maskapai INNER JOIN laporan ON transaksi.id_transaksi = laporan.id_transaksi WHERE transaksi.id_transaksi = "'+txtGetIDTrx.Text+'";');
  formConnection.zqCetakTiket.Open;
  formConnection.zqCetakTiket.ExecSQL;

  formConnection.frxRptCetakTiket.ShowReport();
end;

procedure TformCetakTiket.btnBackToMMClick(Sender: TObject);
begin
  formMainMenu.Show;
  formCetakTiket.Hide;
end;

end.
