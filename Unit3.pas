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
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Button11: TButton;
    Button1: TButton;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1KOL_KV: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
begin
Form1.IBADRES.Delete;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// if Form1.IBADRES.State in [dsInsert,dsEdit] then
//    Form1.IBADRES.Post;
end;

end.
