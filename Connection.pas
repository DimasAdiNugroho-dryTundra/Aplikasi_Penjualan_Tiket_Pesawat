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
