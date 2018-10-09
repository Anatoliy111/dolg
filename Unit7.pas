unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBCtrls, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxCalendar;

type
  TForm7 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    procedure cxGrid1DBTableView1SCHETPropertiesEditValueChanged(
      Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  ss:string;

implementation

{$R *.dfm}

uses dateutils, Unit1;



procedure TForm7.cxGrid1DBTableView1SCHETPropertiesEditValueChanged(
  Sender: TObject);
begin
    Form1.IBKART.First;
    if Form1.IBKART.Locate('schet',Form7.cxGrid1DBTableView1SCHET.EditValue,[]) then
       Form7.cxGrid1DBTableView1FIO.EditValue := Form1.IBKARTFIO.Value;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//    cxGrid1DBTableView1DATA.Focused:=false;
    cxGrid1DBTableView1.Focused:=false;
//                  Form1.IBPOZ_SUD.Close;
//              Form1.IBPOZ_SUD.SelectSQL.Text := 'select * from poz_sud';
//              Form1.IBPOZ_SUD.Open;
//              Form1.DSPOZ_SUD.UpdateAction();
end;

end.
