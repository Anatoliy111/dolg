unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, ExtCtrls, StdCtrls, cxNavigator;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Button11: TButton;
    Button1: TButton;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1UL: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm3.Button11Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
var Null: Variant;
begin
Form1.IBADRESKR.edit;
Form1.IBADRESKRKL_KONTROL.Clear;
Form1.IBADRESKR.post;
Form1.IBADRESKR.Close;
Form1.IBADRESKR.Open;

//cxGridDBTableView1.DataController.ClearSelection;
//cxGridDBTableView1.DataController.ClearSelectionAnchor;
//cxGridDBTableView1.DataController.ClearDetails;
//cxGridDBTableView1.Controller.ClearSelection;
//cxGridDBTableView1.Controller.ClearCellSelection;
//cxGridDBTableView1.Controller.DeleteSelection;
//cxGridDBTableView1.Controller.FocusedRow.Free;

//cxGridDBTableView1.ClearItems;
//cxGrid2.


end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// if Form1.IBADRES.State in [dsInsert,dsEdit] then
//    Form1.IBADRES.Post;
 Form1.IBTransaction1.CommitRetaining;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
Form1.IBADRESKR.Close;
Form1.IBADRESKR.Open;
end;

end.
