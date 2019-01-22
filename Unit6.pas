unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, ExtCtrls, Menus, cxContainer,
  cxProgressBar, StdCtrls, cxButtons, cxNavigator, frxDesgn, frxClass;

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
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    cxButton1: TcxButton;
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
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);

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

procedure TForm6.FormShow(Sender: TObject);
begin
  Form1.IBWID.Close;
  Form1.IBWID.open;
end;

end.
