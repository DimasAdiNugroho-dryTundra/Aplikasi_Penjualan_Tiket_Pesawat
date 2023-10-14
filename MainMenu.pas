unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TformMainMenu = class(TForm)
    Label1: TLabel;
    Button4: TButton;
    btnExit: TButton;
    btnFormTransaksi: TButton;
    GroupBox1: TGroupBox;
    btnFormDataMaskapai: TButton;
    btnFormDataPelanggan: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFormDataMaskapaiClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnFormDataPelangganClick(Sender: TObject);
    procedure btnFormTransaksiClick(Sender: TObject);
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
  DataPelanggan,
  Transaksi;

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

procedure TformMainMenu.btnFormTransaksiClick(Sender: TObject);
begin
  formTransaksi.Show;
  formMainMenu.Hide;
end;

end.
