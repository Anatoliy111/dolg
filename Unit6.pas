unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, ExtCtrls, Menus, cxContainer,
  cxProgressBar, StdCtrls, cxButtons, cxNavigator, frxDesgn, frxClass, cxLabel,
  cxTextEdit, cxDBEdit, cxCheckBox;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1KL: TcxGridDBColumn;
    cxGrid1DBTableView1PW: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1KL: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxButton3: TcxButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    cxGridDBTableView1SNAIM: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1SMS: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.cxButton3Click(Sender: TObject);
begin

frxReport1.DesignReport();
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Form1.IBSERVICES.State in [dsInsert,dsEdit] then Form1.IBSERVICES.Post;
 if Form1.IBWID.State in [dsInsert,dsEdit] then Form1.IBWID.Post;
 if Form1.IBUSER.State in [dsInsert,dsEdit] then Form1.IBUSER.Post;
  Form1.IBTransaction1.CommitRetaining;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
  Form1.IBWID.Close;
  Form1.IBWID.open;
end;

end.
