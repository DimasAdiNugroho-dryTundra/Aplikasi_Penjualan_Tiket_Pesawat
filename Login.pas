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
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

uses
  Connection,
  MainMenu;

{$R *.dfm}

procedure TformLogin.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

procedure TformLogin.btnLoginClick(Sender: TObject);
var userid : string;
begin
    formConnection.zqLogin.SQL.Text := 'SELECT * FROM pengguna WHERE username = :username AND password = :password';
    formConnection.zqLogin.ParamByName('username').AsString := txtUsername.Text;
    formConnection.zqLogin.ParamByName('password').AsString := txtPassword.Text;
    formConnection.zqLogin.Open;

    if not formConnection.zqLogin.IsEmpty then
    begin
      userid := formConnection.zqLogin.FieldValues['id_pengguna'];
      lblGetID.Caption := userid;
      ShowMessage('Login berhasil!');
      formMainMenu.Show;
    end
    else
      ShowMessage('Login gagal!');
end;

end.
