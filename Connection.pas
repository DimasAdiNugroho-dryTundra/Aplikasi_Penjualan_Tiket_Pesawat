unit Connection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TformConnection = class(TForm)
    ZConnection: TZConnection;
    GroupBox1: TGroupBox;
    dsLogin: TDataSource;
    zqLogin: TZQuery;
    GroupBox2: TGroupBox;
    dsLaporan: TDataSource;
    zqLaporan: TZQuery;
    frxRptLaporan: TfrxReport;
    frxDsLaporan: TfrxDBDataset;
    GroupBox3: TGroupBox;
    dsDataMaskapai: TDataSource;
    zqDataMaskapai: TZQuery;
    GroupBox4: TGroupBox;
    dsDataPelanggan: TDataSource;
    zqDataPelanggan: TZQuery;
    GroupBox5: TGroupBox;
    dsTransaksi: TDataSource;
    zqTransaksi: TZQuery;
    zqIdMskp: TZQuery;
    zqIdPlg: TZQuery;
    dsIdPlg: TDataSource;
    dsIdMskp: TDataSource;
    frxDsTransaksi: TfrxDBDataset;
    frxRptTransaksi: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConnection: TformConnection;

implementation

{$R *.dfm}

end.
