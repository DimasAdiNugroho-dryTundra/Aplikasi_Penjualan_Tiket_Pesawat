unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtUsername: TEdit;
    txtPassword: TEdit;
    btnLogin: TButton;
    lblGetID: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnDaftar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
  private
    { Private declarations }
    function IsUsernameExists(const AUsername: string): Boolean;
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

uses
  Connection,
  MainMenu, Pendaftaran;

{$R *.dfm}

procedure TformLogin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

procedure TformLogin.btnLoginClick(Sender: TObject);
var
  userid, username, password: string;
begin

  if txtUsername.Text = '' then
  begin
    ShowMessage('Harap isi Username!');
    Exit;
  end;

  if txtPassword.Text = '' then
  begin
    ShowMessage('Harap isi Password!');
    Exit;
  end;

  username := txtUsername.Text;
  password := txtPassword.Text;

  if not IsUsernameExists(username) then
  begin
    ShowMessage('Username tidak ditemukan!');
    Exit;
  end;

  //formConnection.zqLogin.SQL.Text := 'SELECT id_pengguna, COUNT(*) FROM pengguna WHERE username = :username AND password = :password';
  formConnection.zqLogin.SQL.Text := 'SELECT id_pengguna, COUNT(*) FROM pengguna WHERE username = :username AND password = AES_ENCRYPT(`password`, ''76jV60mkzU'') = :password';
  formConnection.zqLogin.ParamByName('username').AsString := username;
  formConnection.zqLogin.ParamByName('password').AsString := password;
  formConnection.zqLogin.Open;

  try
    if formConnection.zqLogin.Fields[1].AsInteger > 0 then
      begin
      userid := formConnection.zqLogin.FieldValues['id_pengguna'];
      lblGetID.Caption := userid;

      ShowMessage('Login berhasil!');

      formMainMenu.Show;
      formLogin.Hide;
      end
    else
      ShowMessage('Login gagal!');
  finally
    formConnection.zqLogin.Close;
  end;
end;

function TformLogin.IsUsernameExists(const AUsername: string): Boolean;
begin
  formConnection.zqLogin.SQL.Text := 'SELECT COUNT(*) FROM pengguna WHERE username = :username';
  formConnection.zqLogin.ParamByName('username').AsString := AUsername;
  formConnection.zqLogin.Open;
  try
    Result := formConnection.zqLogin.Fields[0].AsInteger > 0;
  finally
    formConnection.zqLogin.Close;
  end;
end;


procedure TformLogin.btnDaftarClick(Sender: TObject);
begin
 formPendaftaran.Show;
 formLogin.Hide;
end;

end.
