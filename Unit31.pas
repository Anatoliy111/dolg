unit Unit31;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  IBX.IBCustomDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls;

type
  TForm31 = class(TForm)
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1KL_RAION: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridDBTableView1KOL_KV: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form31: TForm31;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Form1.IBADRES.State in [dsInsert,dsEdit] then
    Form1.IBADRES.Post;

 Form1.IBTransaction1.CommitRetaining;
end;

end.
