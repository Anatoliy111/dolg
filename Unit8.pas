unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm8 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_POD: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_POV: TcxGridDBColumn;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    procedure cxGrid1DBTableView1SCHETPropertiesEditValueChanged(
      Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses dateutils, Unit1;

procedure TForm8.cxGrid1DBTableView1SCHETPropertiesEditValueChanged(
  Sender: TObject);
begin
    Form1.IBKART.First;
    if Form1.IBKART.Locate('schet',Form8.cxGrid1DBTableView1SCHET.EditValue,[]) then
       Form8.cxGrid1DBTableView1FIO.EditValue := Form1.IBKARTFIO.Value;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    cxGrid1DBTableView1.Focused:=false;
end;

end.
