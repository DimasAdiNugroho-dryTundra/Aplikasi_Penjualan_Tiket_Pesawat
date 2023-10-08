unit DataPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformDataPelanggan = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtIDplg: TEdit;
    txtNamaPlg: TEdit;
    cmbJnsID: TComboBox;
    txtNoId: TEdit;
    txtKontak: TEdit;
    dgDataPelanggan: TDBGrid;
    btnTambah: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnBatal: TButton;
    btnBackToMM: TButton;
    procedure FormCreate(Sender: TObject);
    procedure dgDataPelangganCellClick(Column: TColumn);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnBackToMMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDataPelanggan: TformDataPelanggan;

implementation

uses
  Connection,
  MainMenu;

{$R *.dfm}

procedure TformDataPelanggan.FormCreate(Sender: TObject);
begin
   Position := poScreenCenter;
  //btnBatal.Enabled := False;
  btnUbah.Enabled := False;
  btnHapus.Enabled := False;
end;

procedure TformDataPelanggan.dgDataPelangganCellClick(Column: TColumn);
begin
  txtIDplg.Text := formConnection.zqDataPelanggan.Fields[0].AsString;
  txtNamaPlg.Text := formConnection.zqDataPelanggan.Fields[1].AsString;
  cmbJnsID.Text := formConnection.zqDataPelanggan.Fields[2].AsString;
  txtNoId.Text := formConnection.zqDataPelanggan.Fields[3].AsString;
  txtKontak.Text := formConnection.zqDataPelanggan.Fields[4].AsString;

  txtIDplg.Enabled := False;
  btnTambah.Enabled := False;

  btnUbah.Enabled := True;
  btnHapus.Enabled := True;
end;

procedure TformDataPelanggan.btnTambahClick(Sender: TObject);
begin
  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('INSERT INTO pelanggan VALUES ("'+txtIDplg.Text+'", "'+txtNamaPlg.Text+'", "'+cmbJnsID.Text+'", "'+txtNoId.Text+'", "'+txtKontak.Text+'");');
  formConnection.zqDataPelanggan.ExecSQL;

  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('SELECT * FROM pelanggan;');
  formConnection.zqDataPelanggan.Active;
  formConnection.zqDataPelanggan.ExecSQL;

  ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformDataPelanggan.btnUbahClick(Sender: TObject);
begin
  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('UPDATE pelanggan SET id_pelanggan = "'+txtIDplg.Text+'", nm_pelanggan = "'+txtNamaPlg.Text+'", jenis_identitas = "'+cmbJnsID.Text+'", no_identitas = "'+txtNoId.Text+'", kontak = "'+txtKontak.Text+'" WHERE id_pelanggan = "'+txtIDplg.Text+'"');
  formConnection.zqDataPelanggan.ExecSQL;

  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('SELECT * FROM pelanggan;');
  formConnection.zqDataPelanggan.Active;
  formConnection.zqDataPelanggan.ExecSQL;

  ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformDataPelanggan.btnHapusClick(Sender: TObject);
begin
  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('DELETE FROM pelanggan WHERE id_pelanggan="'+txtIDplg.Text+'"');
  formConnection.zqDataPelanggan.ExecSQL;

  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Add('SELECT * FROM pelanggan;');
  formConnection.zqDataPelanggan.Active;
  formConnection.zqDataPelanggan.ExecSQL;

  ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformDataPelanggan.btnBatalClick(Sender: TObject);
begin
  txtIDplg.Text := 'plg000';
  txtNamaPlg.Clear;
  cmbJnsID.ItemIndex := 0;
  txtNoId.Clear;
  txtKontak.Clear;

  btnUbah.Enabled := False;
  btnHapus.Enabled := False;

  btnTambah.Enabled := True;
  txtIDplg.Enabled := True;
end;

procedure TformDataPelanggan.btnBackToMMClick(Sender: TObject);
begin
  formDataPelanggan.Hide;
  formMainMenu.Show;
end;

end.
