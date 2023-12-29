unit Unit35;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxDBLookupComboBox, IBX.IBCustomDataSet, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGroupBox, Vcl.ExtCtrls;

type
  TForm35 = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxButton4: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    cxGrid1DBTableView1NAIM: TcxGridDBColumn;
    cxGrid1DBTableView1ULNAIM: TcxGridDBColumn;
    cxGrid1DBTableView1NOMDOM: TcxGridDBColumn;
    cxGrid1DBTableView1KL_NTAR: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF: TcxGridDBColumn;
    cxGrid1DBTableView1TARIF_BL: TcxGridDBColumn;
    cxGrid1DBTableView1NORMA: TcxGridDBColumn;
    cxButton3: TcxButton;
    IBREPT: TIBDataSet;
    DSREPT: TDataSource;
    IBREPTNAIM: TIBStringField;
    IBREPTNPP: TFloatField;
    IBREPTULNAIM: TIBStringField;
    IBREPTNOMDOM: TIBStringField;
    IBREPTNDOM: TIntegerField;
    IBREPTKL_NTAR: TFloatField;
    IBREPTNAME: TIBStringField;
    IBREPTTARIF: TFloatField;
    IBREPTTARIF_BL: TFloatField;
    IBREPTNORMA: TFloatField;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form35: TForm35;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm35.cxButton2Click(Sender: TObject);
begin
   Form35.Enabled:=false;
   Form2.Show;
   Application.ProcessMessages;
     DSREPT.Enabled:=false;
     IBREPT.close;
     IBREPT.ParamByName('dt').Value:=Form1.cxLookupComboBox1.EditValue;
     IBREPT.open;
     DSREPT.Enabled:=true;
   Form35.Enabled:=true;
   Form2.close;
   Application.ProcessMessages;

end;

procedure TForm35.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid1,'Тарифи по вулицям');
end;

end.
