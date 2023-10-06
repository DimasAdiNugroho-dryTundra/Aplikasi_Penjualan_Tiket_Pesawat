unit DataMaskapai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TformDataMaskapai = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtIDMaskapai: TEdit;
    txtNmMaskapai: TEdit;
    txtHrgJual: TEdit;
    txtHrgPokok: TEdit;
    txtRute: TEdit;
    dgMaskapai: TDBGrid;
    btnTambah: TButton;
    btnHapus: TButton;
    btnUbah: TButton;
    btnBatal: TButton;
    btnBackToMM: TButton;
    procedure FormCreate(Sender: TObject);
    procedure dgMaskapaiCellClick(Column: TColumn);
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
  formDataMaskapai: TformDataMaskapai;

implementation

uses
  Connection,
  MainMenu;

{$R *.dfm}

procedure TformDataMaskapai.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
  btnUbah.Enabled := False;
  btnHapus.Enabled := False;
end;

procedure TformDataMaskapai.dgMaskapaiCellClick(Column: TColumn);
begin
  txtIDMaskapai.Text := formConnection.zqDataMaskapai.Fields[0].AsString;
  txtNmMaskapai.Text := formConnection.zqDataMaskapai.Fields[1].AsString;
  txtRute.Text := formConnection.zqDataMaskapai.Fields[2].AsString;
  txtHrgJual.Text := formConnection.zqDataMaskapai.Fields[3].AsString;
  txtHrgPokok.Text := formConnection.zqDataMaskapai.Fields[4].AsString;

  txtIDMaskapai.Enabled := False;
  btnTambah.Enabled := False;

  btnUbah.Enabled := True;
  btnHapus.Enabled := True;
end;

procedure TformDataMaskapai.btnTambahClick(Sender: TObject);
begin
  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('INSERT INTO maskapai VALUES ("'+txtIDMaskapai.Text+'", "'+txtNmMaskapai.Text+'", "'+txtRute.Text+'", "'+txtHrgJual.Text+'", "'+txtHrgPokok.Text+'");');
  formConnection.zqDataMaskapai.ExecSQL;

  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('SELECT * FROM maskapai;');
  formConnection.zqDataMaskapai.Active;
  formConnection.zqDataMaskapai.ExecSQL;

  ShowMessage('DATA BERHASIL DITAMBAH ...');
end;

procedure TformDataMaskapai.btnUbahClick(Sender: TObject);
begin
  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('UPDATE maskapai SET id_maskapai = "'+txtIDMaskapai.Text+'", nm_maskapai = "'+txtNmMaskapai.Text+'", rute = "'+txtRute.Text+'", harga_jual = "'+txtHrgJual.Text+'", harga_pokok = "'+txtHrgPokok.Text+'" WHERE id_maskapai = "'+txtIDMaskapai.Text+'"');
  formConnection.zqDataMaskapai.ExecSQL;

  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('SELECT * FROM maskapai;');
  formConnection.zqDataMaskapai.Active;
  formConnection.zqDataMaskapai.ExecSQL;

  ShowMessage('DATA BERHASIL DIUBAH ...');
end;

procedure TformDataMaskapai.btnHapusClick(Sender: TObject);
begin
  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('DELETE FROM maskapai WHERE id_maskapai="'+txtIDMaskapai.Text+'"');
  formConnection.zqDataMaskapai.ExecSQL;

  formConnection.zqDataMaskapai.SQL.Clear;
  formConnection.zqDataMaskapai.SQL.Add('SELECT * FROM maskapai');
  formConnection.zqDataMaskapai.Active;
  formConnection.zqDataMaskapai.ExecSQL;

  ShowMessage('DATA BERHASIL DIHAPUS ...');
end;

procedure TformDataMaskapai.btnBatalClick(Sender: TObject);
begin
  txtIDMaskapai.Text := 'air000';
  txtNmMaskapai.Clear;
  txtHrgJual.Clear;
  txtHrgPokok.Clear;
  txtRute.Clear;

  btnUbah.Enabled := False;
  btnHapus.Enabled := False;

  btnTambah.Enabled := True;
  txtIDMaskapai.Enabled := True;
end;

procedure TformDataMaskapai.btnBackToMMClick(Sender: TObject);
begin
  formDataMaskapai.Hide;
  formMainMenu.Show;
end;

end.
