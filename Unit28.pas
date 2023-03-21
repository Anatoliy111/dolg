unit Unit28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxDBEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, IBX.IBCustomDataSet, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm28 = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DBNavigator1: TDBNavigator;
    IBBANK: TIBDataSet;
    DSBANK: TDataSource;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    IBBANKKL: TIntegerField;
    IBBANKNAIM: TIBStringField;
    IBBANKRAH: TIBStringField;
    IBBANKCOL_POISK_ENDDATA: TIntegerField;
    IBBANKSTR_PRIZN_ENDDATA: TIBStringField;
    IBBANKCOL_PRIZN: TIntegerField;
    IBBANKCOL_SUM: TIntegerField;
    IBBANKCOL_DT: TIntegerField;
    IBBANKCOL_DOK: TIntegerField;
    IBBANKCOL_END: TIntegerField;
    IBBANKCOL_KONTR: TIntegerField;
    IBBANKSTR_POISK_RAH: TIntegerField;
    IBBANKCOL_POISK_RAH: TIntegerField;
    IBBANKCOL_EDRPOU: TIntegerField;
    IBBANKSTR_EDRPOU: TIBStringField;
    IBBANKCOL_DT_VIP: TIntegerField;
    IBBANKSTR_DT_VIP: TIntegerField;
    IBBANKREGEXP_FILE: TIBStringField;
    IBBANKCOL_CODPOSL: TIntegerField;
    IBBANKREGEXP_DATE: TIBStringField;
    IBBANKFORMAT_DATE_SEPARATOR: TIBStringField;
    cxLabel14: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    IBBANKCOL_RAH: TIntegerField;
    IBBANKSTR_PRIZN_STARTDATA: TIBStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form28: TForm28;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm28.cxButton1Click(Sender: TObject);
begin
if IBBANK.State in [dsInsert,dsEdit] then IBBANK.Post;
 Form1.IBTransaction1.CommitRetaining;

end;

procedure TForm28.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if IBBANK.State in [dsInsert,dsEdit] then IBBANK.Post;
end;

procedure TForm28.FormShow(Sender: TObject);
begin
IBBANK.Close;
IBBANK.Open;
end;

end.
