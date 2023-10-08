unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformMainMenu = class(TForm)
    Label1: TLabel;
    btnFormDataMaskapai: TButton;
    Button4: TButton;
    btnExit: TButton;
    btnFormDataPelanggan: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFormDataMaskapaiClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnFormDataPelangganClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainMenu: TformMainMenu;

implementation

uses
  DataMaskapai,
  DataPelanggan;

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

end.
