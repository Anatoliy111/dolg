unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, ExtCtrls,
  cxDBEdit, DB, IBCustomDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxDBLookupComboBox, cxNavigator;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    Label1: TLabel;
    IBKART: TIBDataSet;
    DSKART: TDataSource;
    IBKOBORMES: TIBDataSet;
    DSKOBORMES: TDataSource;
    IBKTMPOPL: TIBDataSet;
    DSKTMPOPL: TDataSource;
    IBKTMPUDER: TIBDataSet;
    DSKTMPUDER: TDataSource;
    IBKOBOR: TIBDataSet;
    DSKOBOR: TDataSource;
    IBDataSet5: TIBDataSet;
    IntegerField9: TIntegerField;
    DateField5: TDateField;
    IntegerField10: TIntegerField;
    DataSource5: TDataSource;
    IBKARTKL: TIntegerField;
    IBKARTSCHET: TIBStringField;
    IBKARTWID: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTIDCOD: TIBStringField;
    IBKARTUL: TIBStringField;
    IBKARTDOM: TIBStringField;
    IBKARTKV: TIBStringField;
    IBKARTLGOTA: TIBStringField;
    IBKARTKOLI_P: TIntegerField;
    IBKARTPLOS_OB: TIBBCDField;
    IBKARTPLOS_BB: TIBBCDField;
    IBKARTPRIVAT: TIBStringField;
    IBKARTVAL: TIntegerField;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label10: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label11: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label13: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Label12: TLabel;
    IBKOBORMESSCHET: TIBStringField;
    IBKOBORMESWID: TIBStringField;
    IBKOBORMESDOLG: TIBBCDField;
    IBKOBORMESNACH1: TIBBCDField;
    IBKOBORMESOPL: TIBBCDField;
    IBKOBORMESSUBS: TIBBCDField;
    IBKOBORMESUDER: TIBBCDField;
    IBKOBORMESENDDOLG: TIBBCDField;
    cxGrid1DBTableView1WID: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG: TcxGridDBColumn;
    cxGrid1DBTableView1NACH1: TcxGridDBColumn;
    cxGrid1DBTableView1OPL: TcxGridDBColumn;
    cxGrid1DBTableView1SUBS: TcxGridDBColumn;
    cxGrid1DBTableView1UDER: TcxGridDBColumn;
    cxGrid1DBTableView1ENDDOLG: TcxGridDBColumn;
    IBKTMPOPLKL: TIntegerField;
    IBKTMPOPLSCHET: TIBStringField;
    IBKTMPOPLDT: TDateField;
    IBKTMPOPLWID: TIBStringField;
    IBKTMPOPLSUMM: TIBBCDField;
    cxGridDBTableView1DT: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1SUMM: TcxGridDBColumn;
    IBKTMPUDERKL: TIntegerField;
    IBKTMPUDERSCHET: TIBStringField;
    IBKTMPUDERWID: TIBStringField;
    IBKTMPUDERSUMM: TIBBCDField;
    IBKOBORKL: TIntegerField;
    IBKOBORPERIOD: TDateField;
    IBKOBORSCHET: TIBStringField;
    IBKOBORWID: TIBStringField;
    IBKOBORN_DOG: TIBStringField;
    IBKOBORD_DOG: TIBStringField;
    IBKOBORTARIF: TIBBCDField;
    IBKOBORDOLG: TIBBCDField;
    IBKOBORNACH: TIBBCDField;
    IBKOBORSUBS: TIBBCDField;
    IBKOBOROPL: TIBBCDField;
    IBKOBORUDER: TIBBCDField;
    IBKOBORKOMP: TIBBCDField;
    IBKOBORWZMZ: TIBBCDField;
    IBKOBORWOZW: TIBBCDField;
    IBKOBORMOVW: TIBBCDField;
    IBKOBORPERE: TIBBCDField;
    IBKOBORFULLOPL: TIBBCDField;
    IBKOBORSAL: TIBBCDField;
    cxGridDBTableView3PERIOD: TcxGridDBColumn;
    cxGridDBTableView3WID: TcxGridDBColumn;
    cxGridDBTableView3DOLG: TcxGridDBColumn;
    cxGridDBTableView3NACH: TcxGridDBColumn;
    cxGridDBTableView3SUBS: TcxGridDBColumn;
    cxGridDBTableView3OPL: TcxGridDBColumn;
    cxGridDBTableView3UDER: TcxGridDBColumn;
    cxGridDBTableView3KOMP: TcxGridDBColumn;
    cxGridDBTableView3WZMZ: TcxGridDBColumn;
    cxGridDBTableView3WOZW: TcxGridDBColumn;
    cxGridDBTableView3PERE: TcxGridDBColumn;
    cxGridDBTableView3SAL: TcxGridDBColumn;
    cxDBTextEdit10: TcxDBTextEdit;
    Label15: TLabel;
    IBKOBORMESPOSLUG: TIBStringField;
    IBKTMPOPLPOSLUG: TIBStringField;
    IBKTMPUDERPOSLUG: TIBStringField;
    IBKOBORPOSLUG: TIBStringField;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure Find();
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm12.cxButton1Click(Sender: TObject);
begin
 Find();
end;


procedure TForm12.Find();
begin
if cxTextEdit1.EditValue <> null then
begin

     IBKART.Active:=true;
     if IBKART.Locate('schet',cxTextEdit1.EditValue,[]) then
     begin
     IBKOBORMES.Active:=false;
     IBKTMPOPL.Active:=false;
     IBKTMPUDER.Active:=false;
     IBKOBOR.Active:=false;



     IBKOBORMES.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKTMPOPL.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKTMPUDER.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBOR.ParamByName('sch').Value:=IBKARTSCHET.Value;
     IBKOBORMES.Active:=true;
     IBKTMPOPL.Active:=true;
     IBKTMPUDER.Active:=true;
     IBKOBOR.Active:=true;
     end
     else
     begin
//       IBKART.Active:=false;
       ShowMessage('Рахунок не знайдено!');
     end;
end
else
   ShowMessage('Введіть рахунок!');

end;

end.
