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
    procedure FormCreate(Sender: TObject);
    procedure btnFormDataMaskapaiClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainMenu: TformMainMenu;

implementation

uses DataMaskapai;

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

end.
