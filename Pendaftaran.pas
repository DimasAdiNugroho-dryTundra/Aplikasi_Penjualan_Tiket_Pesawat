unit Pendaftaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformPendaftaran = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtIDPengguna: TEdit;
    txtUsername: TEdit;
    txtPassword: TEdit;
    txtPasswordConfirm: TEdit;
    btnDaftar: TButton;
    btnBackToLogin: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
    procedure btnBackToLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPendaftaran: TformPendaftaran;

implementation

uses Connection, Login;

{$R *.dfm}

procedure TformPendaftaran.FormCreate(Sender: TObject);
begin
 Position := poScreenCenter;
end;

procedure TformPendaftaran.btnDaftarClick(Sender: TObject);
var
  checkConfirm : Boolean;
begin
  formConnection.zqPendaftaran.SQL.Text := 'SELECT * FROM pengguna WHERE id_pengguna = :idpengguna';
  formConnection.zqPendaftaran.ParamByName('idpengguna').Value := txtIDPengguna.Text;
  formConnection.zqPendaftaran.Open;

  checkConfirm := not formConnection.zqPendaftaran.IsEmpty;

  if checkConfirm then
  begin
    ShowMessage('ID Pengguna sudah ada! Silakan pilih ID Pengguna yang lain.');
    formConnection.zqPendaftaran.Close;
    Exit;
  end;

  formConnection.zqPendaftaran.Close;

  formConnection.zqPendaftaran.SQL.Text := 'SELECT * FROM pengguna WHERE username = :username';
  formConnection.zqPendaftaran.ParamByName('username').Value := txtUsername.Text;
  formConnection.zqPendaftaran.Open;

  checkConfirm := not formConnection.zqPendaftaran.IsEmpty;

  if checkConfirm then
  begin
    ShowMessage('Username sudah digunakan! Silakan pilih username yang lain.');
    formConnection.zqPendaftaran.Close;
    Exit;
  end;

  formConnection.zqPendaftaran.Close;

  if txtPassword.Text <> txtPasswordConfirm.Text then
  begin
    ShowMessage('Password yang Anda masukkan tidak sesuai!');
    Exit;
  end;

  formConnection.zqPendaftaran.SQL.Text := 'INSERT INTO pengguna (id_pengguna, username, password) VALUES (:idpengguna, :username, :password)';
  formConnection.zqPendaftaran.ParamByName('idpengguna').Value := txtIDPengguna.Text;
  formConnection.zqPendaftaran.ParamByName('username').Value := txtUsername.Text;
  formConnection.zqPendaftaran.ParamByName('password').Value := txtPasswordConfirm.Text;
  formConnection.zqPendaftaran.ExecSQL;
  
  ShowMessage('Selamat! Anda Sudah Terdaftar.');

  formLogin.Show;
  formPendaftaran.Hide;
end;

procedure TformPendaftaran.btnBackToLoginClick(Sender: TObject);
begin
  formLogin.Show;
  formPendaftaran.Hide;
end;

end.
