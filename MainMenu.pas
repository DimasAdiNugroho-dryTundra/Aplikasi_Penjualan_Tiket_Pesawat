unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TformMainMenu = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMainMenu: TformMainMenu;

implementation

{$R *.dfm}

procedure TformMainMenu.FormCreate(Sender: TObject);
begin
Position := poScreenCenter;
end;

end.
