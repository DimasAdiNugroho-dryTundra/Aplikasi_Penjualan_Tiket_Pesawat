unit DataPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformDataPengguna = class(TForm)
    dgDataPengguna: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtIDPengguna: TEdit;
    txtUsername: TEdit;
    txtPassword: TEdit;
    btnTambah: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnBatal: TButton;
    btnBackToMM: TButton;
    btnCetakDaftarPgn: TButton;
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure dgDataPenggunaCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btnBackToMMClick(Sender: TObject);
    procedure btnCetakDaftarPgnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDataPengguna: TformDataPengguna;

implementation

uses Connection, MainMenu;

{$R *.dfm}

procedure TformDataPengguna.btnTambahClick(Sender: TObject);
begin
  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('INSERT INTO pengguna VALUES ("'+txtIDPengguna.Text+'", "'+txtUsername.Text+'", "'+txtPassword.Text+'");');
  formConnection.zqDataPengguna.ExecSQL;

  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('SELECT * FROM pengguna;');
  formConnection.zqDataPengguna.Active;
  formConnection.zqDataPengguna.ExecSQL;

  ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformDataPengguna.btnUbahClick(Sender: TObject);
begin
  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('UPDATE pengguna SET id_pengguna = "'+txtIDPengguna.Text+'", username = "'+txtUsername.Text+'", password = "'+txtPassword.Text+'" WHERE id_pengguna = "'+txtIDPengguna.Text+'"');
  formConnection.zqDataPengguna.ExecSQL;

  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('SELECT * FROM pengguna;');
  formConnection.zqDataPengguna.Active;
  formConnection.zqDataPengguna.ExecSQL;

  ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformDataPengguna.btnHapusClick(Sender: TObject);
begin
  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('DELETE FROM pengguna WHERE id_pengguna="'+txtIDPengguna.Text+'"');
  formConnection.zqDataPengguna.ExecSQL;

  formConnection.zqDataPengguna.SQL.Clear;
  formConnection.zqDataPengguna.SQL.Add('SELECT * FROM pengguna;');
  formConnection.zqDataPengguna.Active;
  formConnection.zqDataPengguna.ExecSQL;

  ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformDataPengguna.btnBatalClick(Sender: TObject);
begin
  txtIDPengguna.Text := 'admin000';
  txtUsername.Clear;
  txtPassword.Clear;

  btnUbah.Enabled := False;
  btnHapus.Enabled := False;

  btnTambah.Enabled := True;
  txtIDPengguna.Enabled := True;
end;

procedure TformDataPengguna.dgDataPenggunaCellClick(Column: TColumn);
begin
  txtIDPengguna.Text := formConnection.zqDataPengguna.Fields[0].AsString;
  txtUsername.Text := formConnection.zqDataPengguna.Fields[1].AsString;
  txtPassword.Text := formConnection.zqDataPengguna.Fields[2].AsString;

  txtIDPengguna.Enabled := False;
  btnTambah.Enabled := False;

  btnUbah.Enabled := True;
  btnHapus.Enabled := True;
end;

procedure TformDataPengguna.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
  //btnBatal.Enabled := False;
  btnUbah.Enabled := False;
  btnHapus.Enabled := False;
end;

procedure TformDataPengguna.btnBackToMMClick(Sender: TObject);
begin
  formDataPengguna.Hide;
  formMainMenu.Show;
end;

procedure TformDataPengguna.btnCetakDaftarPgnClick(Sender: TObject);
begin
  formConnection.frxRptDaftarPggn.ShowReport();
end;

end.
