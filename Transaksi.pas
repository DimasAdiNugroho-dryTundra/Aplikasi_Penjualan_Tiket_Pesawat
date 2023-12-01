unit Transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TformTransaksi = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtNmPlg: TEdit;
    txtNmMskp: TEdit;
    txtIDTransaksi: TEdit;
    dtpTanggal: TDateTimePicker;
    txtNoTiket: TEdit;
    txtIDLaporan: TEdit;
    dtpBerangkat: TDateTimePicker;
    dtpTiba: TDateTimePicker;
    txtJumlah: TEdit;
    dgTransaksi: TDBGrid;
    txtHarga: TEdit;
    GroupBox2: TGroupBox;
    dgPelanggan: TDBGrid;
    txtGetIDPlg: TEdit;
    GroupBox3: TGroupBox;
    dgMaskapai: TDBGrid;
    txtGetIDMskp: TEdit;
    btnTambah: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnBatal: TButton;
    btnBackToMM: TButton;
    txtGetIDPengguna: TEdit;
    btnRptTransaksi: TButton;
    procedure btnTambahClick(Sender: TObject);
    procedure dgPelangganCellClick(Column: TColumn);
    procedure dgMaskapaiCellClick(Column: TColumn);
    procedure dgTransaksiCellClick(Column: TColumn);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBackToMMClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnRptTransaksiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTransaksi: TformTransaksi;
  //Tanggal: TDateTime;
  userid :string;

implementation

uses
  Connection,
  Login,
  MainMenu;

{$R *.dfm}

procedure TformTransaksi.btnTambahClick(Sender: TObject);
var
  Tanggal: TDateTime;
  IDTransaksi, IDLaporan, IDPelanggan, IDPengguna, NoTiket, IDMskp, Berangkat, Tiba, jumlah: string;
begin
  IDTransaksi := txtIDTransaksi.Text;
  IDLaporan := txtIDLaporan.Text;
  IDPengguna := txtGetIDPengguna.Text;
  Tanggal := dtpTanggal.Date;
  IDPelanggan := txtGetIDPlg.Text;
  NoTiket := txtNoTiket.Text;   
  IDMskp := txtGetIDMskp.Text;
  Berangkat := DateTimeToStr(dtpBerangkat.Date);
  Tiba := DateTimeToStr(dtpTiba.Date);
  jumlah := txtJumlah.Text;

  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('INSERT INTO transaksi (id_transaksi, tanggal, id_pelanggan, no_tiket, id_maskapai, berangkat, tiba) VALUES (:IDTransaksi, :Tanggal, :IDPelanggan, :NoTiket, :IDMskp, :Berangkat, :Tiba)');
  formConnection.zqTransaksi.ParamByName('IDTransaksi').AsString := IDTransaksi;
  formConnection.zqTransaksi.ParamByName('Tanggal').AsDateTime := Tanggal;
  formConnection.zqTransaksi.ParamByName('IDPelanggan').AsString := IDPelanggan;
  formConnection.zqTransaksi.ParamByName('NoTiket').AsString := NoTiket;
  formConnection.zqTransaksi.ParamByName('IDMskp').AsString := IDMskp;
  formConnection.zqTransaksi.ParamByName('Berangkat').AsDateTime := StrToDateTime(Berangkat);
  formConnection.zqTransaksi.ParamByName('Tiba').AsDateTime := StrToDateTime(Tiba);
  formConnection.zqTransaksi.ExecSQL;

  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('INSERT INTO laporan (id_laporan, id_transaksi, id_pengguna, Jumlah) VALUES (:IDLaporan, :IDTransaksi, :jumlah);');
  formConnection.zqTransaksi.ParamByName('IDLaporan').AsString := IDLaporan;
  formConnection.zqTransaksi.ParamByName('IDTransaksi').AsString := IDTransaksi;
  formConnection.zqTransaksi.ParamByName('IDPengguna').AsString := IDPengguna;
  formConnection.zqTransaksi.ParamByName('Jumlah').AsString := jumlah;
  formConnection.zqTransaksi.ExecSQL;

  showMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformTransaksi.btnUbahClick(Sender: TObject);
var
  Tanggal: TDateTime;
  IDTransaksi, IDLaporan, IDPelanggan, IDPengguna, NoTiket, IDMskp, Berangkat, Tiba, Jumlah: string;
begin
  IDTransaksi := txtIDTransaksi.Text;
  IDPengguna := txtGetIDPengguna.Text;
  Tanggal := dtpTanggal.Date;
  IDPelanggan := txtGetIDPlg.Text;
  IDLaporan := txtIDLaporan.Text;
  NoTiket := txtNoTiket.Text;
  IDMskp := txtGetIDMskp.Text;
  Berangkat := DateTimeToStr(dtpBerangkat.Date);
  Tiba := DateTimeToStr(dtpTiba.Date);
  Jumlah := txtJumlah.Text;

  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('UPDATE transaksi SET id_transaksi = :IDTransaksi, tanggal = :Tanggal, id_pelanggan = :IDPelanggan, no_tiket = :NoTiket, id_maskapai = :IDMskp, berangkat = :Berangkat, tiba = :Tiba ' +
    'WHERE id_transaksi = :IDTransaksi');
  formConnection.zqTransaksi.ParamByName('Tanggal').AsDateTime := Tanggal;
  formConnection.zqTransaksi.ParamByName('IDPelanggan').AsString := IDPelanggan;
  formConnection.zqTransaksi.ParamByName('NoTiket').AsString := NoTiket;
  formConnection.zqTransaksi.ParamByName('IDMskp').AsString := IDMskp;
  formConnection.zqTransaksi.ParamByName('Berangkat').AsDateTime := StrToDateTime(Berangkat);
  formConnection.zqTransaksi.ParamByName('Tiba').AsDateTime := StrToDateTime(Berangkat);
  formConnection.zqTransaksi.ParamByName('IDTransaksi').AsString := IDTransaksi;
  formConnection.zqTransaksi.ExecSQL;

  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('UPDATE laporan SET id_laporan = :IDLaporan, id_transaksi = :IDTransaksi, id_pengguna = :IDPengguna, Jumlah = :Jumlah WHERE id_laporan = :IDLaporan');
  formConnection.zqTransaksi.ParamByName('IDLaporan').AsString := IDLaporan;
  formConnection.zqTransaksi.ParamByName('IDTransaksi').AsString := IDTransaksi;
  formConnection.zqTransaksi.ParamByName('IDPengguna').AsString := IDPengguna;
  formConnection.zqTransaksi.ParamByName('Jumlah').AsString := jumlah;
  formConnection.zqTransaksi.ExecSQL;

  showMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformTransaksi.btnHapusClick(Sender: TObject);
begin
  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('DELETE FROM laporan WHERE id_laporan ="'+txtIDLaporan.Text+'"');
  formConnection.zqTransaksi.ExecSQL;

  formConnection.zqTransaksi.SQL.Clear;
  formConnection.zqTransaksi.SQL.Add('DELETE FROM transaksi WHERE id_transaksi ="'+txtIDTransaksi.Text+'"');
  formConnection.zqTransaksi.ExecSQL;

  ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformTransaksi.dgPelangganCellClick(Column: TColumn);
begin
  txtGetIDPlg.Text := formConnection.zqIdPlg.Fields[0].AsString;
  txtNmPlg.Text := formConnection.zqIdPlg.Fields[1].AsString;
end;

procedure TformTransaksi.dgMaskapaiCellClick(Column: TColumn);
begin
  txtGetIDMskp.Text := formConnection.zqIdMskp.Fields[0].AsString;
  txtNmMskp.Text := formConnection.zqIdMskp.Fields[1].AsString;
  txtHarga.Text := formConnection.zqIdMskp.Fields[2].AsString;
end;

procedure TformTransaksi.dgTransaksiCellClick(Column: TColumn);
begin
  txtIDTransaksi.Text := formConnection.zqTransaksi.Fields[0].AsString;
  txtIDLaporan.Text := formConnection.zqTransaksi.Fields[1].AsString;
  dtpTanggal.DateTime := formConnection.zqTransaksi.Fields[2].AsDateTime;
  txtNoTiket.Text := formConnection.zqTransaksi.Fields[3].AsString;
  txtJumlah.Text := formConnection.zqTransaksi.Fields[10].AsString;

  txtNmPlg.Text := formConnection.zqTransaksi.Fields[4].AsString;
  txtNmMskp.Text := formConnection.zqTransaksi.Fields[5].AsString;
  dtpBerangkat.DateTime := formConnection.zqTransaksi.Fields[7].AsDateTime;
  dtpTiba.DateTime := formConnection.zqTransaksi.Fields[8].AsDateTime;
  txtHarga.Text := formConnection.zqTransaksi.Fields[9].AsString;

  txtGetIDPlg.Text := formConnection.zqTransaksi.Fields[12].AsString;
  txtGetIDMskp.Text := formConnection.zqTransaksi.Fields[13].AsString;
end;

procedure TformTransaksi.btnBackToMMClick(Sender: TObject);
begin
  formTransaksi.Hide;
  formMainMenu.Show;
end;

procedure TformTransaksi.FormActivate(Sender: TObject);
begin
  userid := formLogin.lblGetID.Caption;
  txtGetIDPengguna.Text := userid;
end;

procedure TformTransaksi.btnRptTransaksiClick(Sender: TObject);
begin
  formConnection.frxRptTransaksi.ShowReport();
end;

end.
