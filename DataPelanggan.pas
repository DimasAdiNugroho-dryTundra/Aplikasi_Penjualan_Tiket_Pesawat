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
    btnCetakDaftarPlg: TButton;
    Label6: TLabel;
    txtCariData: TEdit;
    btnBatalCari: TButton;
    procedure FormCreate(Sender: TObject);
    procedure dgDataPelangganCellClick(Column: TColumn);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnBackToMMClick(Sender: TObject);
    procedure btnCetakDaftarPlgClick(Sender: TObject);
    procedure txtCariDataChange(Sender: TObject);
    procedure btnBatalCariClick(Sender: TObject);
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
var
  checkConfirm : Boolean;
begin
  if txtIDplg.Text = '' then
  begin
    ShowMessage('Harap isi ID Pelanggan!');
    Exit;
  end;

  if txtNamaPlg.Text = '' then
  begin
    ShowMessage('Harap isi Nama Pelanggan!');
    Exit;
  end;

  if cmbJnsID.ItemIndex = -1 then
  begin
    ShowMessage('Harap pilih Jenis Identitas!');
    Exit;
  end;

  if txtNoId.Text = '' then
  begin
    ShowMessage('Harap isi Nomor Identitas!');
    Exit;
  end;

  if txtKontak.Text = '' then
  begin
    ShowMessage('Harap isi Kontak!');
    Exit;
  end;

  formConnection.zqDataPelanggan.SQL.Text := 'SELECT * FROM pelanggan WHERE id_pelanggan = :idpelanggan';
  formConnection.zqDataPelanggan.ParamByName('idpelanggan').Value := txtIDplg.Text;
  formConnection.zqDataPelanggan.Open;

  checkConfirm := not formConnection.zqDataPelanggan.IsEmpty;

  if checkConfirm then
  begin
    ShowMessage('ID Pelanggan sudah ada! Silakan pilih ID Pelanggan yang lain!');
    formConnection.zqDataPelanggan.Close;
    Exit;
  end;

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

procedure TformDataPelanggan.btnCetakDaftarPlgClick(Sender: TObject);
begin
  formConnection.frxRptDaftarPlg.ShowReport();
end;

procedure TformDataPelanggan.txtCariDataChange(Sender: TObject);
var
  cari : String;
begin
  cari := txtCariData.Text;
  formConnection.zqDataPelanggan.SQL.Clear;
  formConnection.zqDataPelanggan.SQL.Text := 'SELECT * FROM pelanggan WHERE id_pelanggan LIKE ''%'+cari+'%'' OR nm_pelanggan LIKE ''%'+cari+'%'' OR jenis_identitas LIKE ''%' +cari+'%'' OR no_identitas LIKE ''%' +cari+'%'' OR kontak LIKE ''%' +cari+'%''';
  formConnection.zqDataPelanggan.Open;
end;

procedure TformDataPelanggan.btnBatalCariClick(Sender: TObject);
begin
  txtCariData.Clear;
end;

end.
