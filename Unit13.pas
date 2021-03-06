unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Tabs,
  Vcl.DockTabSet, dxBarBuiltInMenu, cxPC, cxCalc, frxClass, frxDBSet,
  frxExportRTF, frxExportXLS, frxExportPDF;

type
  TForm13 = class(TForm)
    IBORDERALL: TIBDataSet;
    DSORDERALL: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    IBORDER: TIBDataSet;
    DSORDER: TDataSource;
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1KOL_KV: TcxGridDBColumn;
    cxGridDBTableView1DOLG: TcxGridDBColumn;
    cxGridDBTableView1BGST: TcxGridDBColumn;
    cxGridDBTableView1PRST: TcxGridDBColumn;
    cxGridDBTableView1NACH: TcxGridDBColumn;
    cxGridDBTableView1PERE: TcxGridDBColumn;
    cxGridDBTableView1SUBS: TcxGridDBColumn;
    cxGridDBTableView1OPLNOTSUBS: TcxGridDBColumn;
    cxGridDBTableView1SAL: TcxGridDBColumn;
    cxGridDBTableView1BGEND: TcxGridDBColumn;
    cxGridDBTableView1PREND: TcxGridDBColumn;
    cxGridDBTableView1BORGNIKI: TcxGridDBColumn;
    cxGridDBTableView1PROCENT: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxCalcEdit2: TcxCalcEdit;
    cxLabel7: TcxLabel;
    cxCalcEdit1: TcxCalcEdit;
    cxLabel8: TcxLabel;
    cxGridDBTableView2POSL: TcxGridDBColumn;
    IBREPALL: TIBDataSet;
    IBREP: TIBDataSet;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxTabSheet3: TcxTabSheet;
    Panel3: TPanel;
    cxLabel9: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxCalcEdit3: TcxCalcEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    IBORDERMES: TIBDataSet;
    DSORDERMES: TDataSource;
    IBREPMES: TIBDataSet;
    cxGridDBTableView3PERIOD: TcxGridDBColumn;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    IBORDERALLFIO: TIBStringField;
    IBORDERALLKOL_KV: TIntegerField;
    IBORDERALLDOLG: TFloatField;
    IBORDERALLBGST: TFloatField;
    IBORDERALLPRST: TFloatField;
    IBORDERALLNACH: TFloatField;
    IBORDERALLPERE: TFloatField;
    IBORDERALLSUBS: TFloatField;
    IBORDERALLOPLNOTSUBS: TFloatField;
    IBORDERALLSAL: TFloatField;
    IBORDERALLBGEND: TFloatField;
    IBORDERALLPREND: TFloatField;
    IBORDERALLBORGNIKI: TLargeintField;
    IBORDERALLPROCENT: TFloatField;
    IBREPALLFIO: TIBStringField;
    IBREPALLKOL_KV: TIntegerField;
    IBREPALLDOLG: TFloatField;
    IBREPALLBGST: TFloatField;
    IBREPALLPRST: TFloatField;
    IBREPALLNACH: TFloatField;
    IBREPALLPERE: TFloatField;
    IBREPALLSUBS: TFloatField;
    IBREPALLOPLNOTSUBS: TFloatField;
    IBREPALLSAL: TFloatField;
    IBREPALLBGEND: TFloatField;
    IBREPALLPREND: TFloatField;
    IBREPALLBORGNIKI: TLargeintField;
    IBREPALLPROCENT: TFloatField;
    IBORDERALLUL: TIBStringField;
    IBORDERALLDOM: TIBStringField;
    IBREPALLUL: TIBStringField;
    IBREPALLDOM: TIBStringField;
    IBORDERMESPERIOD: TDateField;
    IBORDERMESUL: TIBStringField;
    IBORDERMESDOM: TIBStringField;
    IBORDERMESFIO: TIBStringField;
    IBORDERMESKOL_KV: TIntegerField;
    IBORDERMESPOSL: TIBStringField;
    IBORDERMESDOLG: TFloatField;
    IBORDERMESBGST: TFloatField;
    IBORDERMESPRST: TFloatField;
    IBORDERMESNACH: TFloatField;
    IBORDERMESPERE: TFloatField;
    IBORDERMESSUBS: TFloatField;
    IBORDERMESOPLNOTSUBS: TFloatField;
    IBORDERMESSAL: TFloatField;
    IBORDERMESBGEND: TFloatField;
    IBORDERMESPREND: TFloatField;
    IBORDERMESBORGNIKI: TLargeintField;
    IBORDERMESPROCENT: TFloatField;
    IBREPMESPERIOD: TDateField;
    IBREPMESUL: TIBStringField;
    IBREPMESDOM: TIBStringField;
    IBREPMESFIO: TIBStringField;
    IBREPMESKOL_KV: TIntegerField;
    IBREPMESPOSL: TIBStringField;
    IBREPMESDOLG: TFloatField;
    IBREPMESBGST: TFloatField;
    IBREPMESPRST: TFloatField;
    IBREPMESNACH: TFloatField;
    IBREPMESPERE: TFloatField;
    IBREPMESSUBS: TFloatField;
    IBREPMESOPLNOTSUBS: TFloatField;
    IBREPMESSAL: TFloatField;
    IBREPMESBGEND: TFloatField;
    IBREPMESPREND: TFloatField;
    IBREPMESBORGNIKI: TLargeintField;
    IBREPMESPROCENT: TFloatField;
    IBORDERUL: TIBStringField;
    IBORDERDOM: TIBStringField;
    IBORDERFIO: TIBStringField;
    IBORDERKOL_KV: TIntegerField;
    IBORDERPOSL: TIBStringField;
    IBORDERDOLG: TFloatField;
    IBORDERBGST: TFloatField;
    IBORDERPRST: TFloatField;
    IBORDERNACH: TFloatField;
    IBORDERPERE: TFloatField;
    IBORDERSUBS: TFloatField;
    IBORDEROPLNOTSUBS: TFloatField;
    IBORDERSAL: TFloatField;
    IBORDERBGEND: TFloatField;
    IBORDERPREND: TFloatField;
    IBORDERBORGNIKI: TLargeintField;
    IBORDERPROCENT: TFloatField;
    IBREPUL: TIBStringField;
    IBREPDOM: TIBStringField;
    IBREPFIO: TIBStringField;
    IBREPKOL_KV: TIntegerField;
    IBREPPOSL: TIBStringField;
    IBREPDOLG: TFloatField;
    IBREPBGST: TFloatField;
    IBREPPRST: TFloatField;
    IBREPNACH: TFloatField;
    IBREPPERE: TFloatField;
    IBREPSUBS: TFloatField;
    IBREPOPLNOTSUBS: TFloatField;
    IBREPSAL: TFloatField;
    IBREPBGEND: TFloatField;
    IBREPPREND: TFloatField;
    IBREPBORGNIKI: TLargeintField;
    IBREPPROCENT: TFloatField;
    procedure cxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  SQLORDERALL,SQLORDER,SQLORDERMES:string;
  OrdAlldt1,OrdAlldt2,Ordposldt1,Ordposldt2,Ordposlmesdt1,Ordposlmesdt2:variant;
  OrdAllbg,Ordposlbg,Ordposlmesbg:double;

implementation

{$R *.dfm}

uses Unit1, mytools;

procedure TForm13.cxButton1Click(Sender: TObject);
var
  I,k: Integer;
  ss:string;
begin

IBREPALL.Close;
if cxGridDBTableView1.DataController.Filter.FilterText<>'' then
begin
 IBREPALL.SelectSQL.Text:=SQLORDERALL+' where '+cxGridDBTableView1.DataController.Filter.FilterText;
end
else
 IBREPALL.SelectSQL.Text:=SQLORDERALL;


IBREPALL.ParamByName('dt1').Value:=OrdAlldt1;
IBREPALL.ParamByName('dt2').Value:=OrdAlldt1;
IBREPALL.ParamByName('bg').Value:=OrdAllbg;
IBREPALL.Open;


  frxReport1.LoadFromFile('report/orderbudall.fr3');
//  frxXLSExport1.FileName:='��� �� ����� '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(OrdAlldt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(OrdAlldt2)+'''';
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;

end;

procedure TForm13.cxButton2Click(Sender: TObject);
begin
IBORDERALL.Close;
IBORDERALL.ParamByName('dt1').Value:=cxLookupComboBox3.EditValue;
IBORDERALL.ParamByName('dt2').Value:=cxLookupComboBox4.EditValue;
IBORDERALL.ParamByName('bg').Value:=cxCalcEdit1.EditValue;
//���������� ������������ ������
OrdAlldt1:=cxLookupComboBox3.EditValue;
OrdAlldt2:=cxLookupComboBox4.EditValue;
OrdAllbg:=cxCalcEdit1.EditValue;
IBORDERALL.Open;
ShowMessage('��� ���������� �� '+mon_slovoDt(cxLookupComboBox3.EditValue)+' �� '+mon_slovoDt(cxLookupComboBox4.EditValue));
end;

procedure TForm13.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid2,cxTabSheet1.Caption);
end;

procedure TForm13.cxButton4Click(Sender: TObject);
begin

IBREP.Close;
if cxGridDBTableView2.DataController.Filter.FilterText<>'' then
begin
 IBREP.SelectSQL.Text:=SQLORDER+' where '+cxGridDBTableView2.DataController.Filter.FilterText;
end
else
 IBREP.SelectSQL.Text:=SQLORDER;

if RadioButton1.Checked then
begin
   IBREP.SelectSQL.Text:=IBREP.SelectSQL.Text+' order by fio,posl,ul,dom';
   frxReport1.LoadFromFile('report/orderfioposladres.fr3');
end;
if RadioButton2.Checked then
begin
   IBREP.SelectSQL.Text:=IBREP.SelectSQL.Text+' order by posl,fio,ul,dom';
   frxReport1.LoadFromFile('report/orderposlfioadres.fr3');
end;
if RadioButton6.Checked then
begin
   IBREP.SelectSQL.Text:=IBREP.SelectSQL.Text+' order by fio,ul,dom,posl';
   frxReport1.LoadFromFile('report/orderfioadresposl.fr3');
end;



IBREP.ParamByName('dt1').Value:=Ordposldt1;
IBREP.ParamByName('dt2').Value:=Ordposldt2;
IBREP.ParamByName('bg').Value:=Ordposlbg;
IBREP.Open;

//  frxXLSExport1.FileName:='��� �� ����� '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(Ordposldt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposldt2)+'''';
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;
end;

procedure TForm13.cxButton5Click(Sender: TObject);
begin
IBORDER.Close;
IBORDER.ParamByName('dt1').Value:=cxLookupComboBox1.EditValue;
IBORDER.ParamByName('dt2').Value:=cxLookupComboBox2.EditValue;
IBORDER.ParamByName('bg').Value:=cxCalcEdit2.EditValue;
//���������� ������������ ������
Ordposldt1:=cxLookupComboBox1.EditValue;
Ordposldt2:=cxLookupComboBox2.EditValue;
Ordposlbg:=cxCalcEdit2.EditValue;
IBORDER.Open;
ShowMessage('��� ���������� �� '+mon_slovoDt(cxLookupComboBox1.EditValue)+' �� '+mon_slovoDt(cxLookupComboBox2.EditValue));
end;

procedure TForm13.cxButton6Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid1,cxTabSheet2.Caption);
end;

procedure TForm13.cxButton7Click(Sender: TObject);
begin

IBREPMES.Close;
if cxGridDBTableView3.DataController.Filter.FilterText<>'' then
begin
 IBREPMES.SelectSQL.Text:=SQLORDERMES+' where '+cxGridDBTableView3.DataController.Filter.FilterText;
end
else
 IBREPMES.SelectSQL.Text:=SQLORDERMES;

if RadioButton3.Checked then
begin
   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,posl,ul,dom';
   frxReport1.LoadFromFile('report/orderfioposladresmes.fr3');
end;
if RadioButton4.Checked then
begin
   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by posl,fio,ul,dom';
   frxReport1.LoadFromFile('report/orderposlfioadresmes.fr3');
end;
if RadioButton5.Checked then
begin
   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,ul,dom,posl';
   frxReport1.LoadFromFile('report/orderfioadresposlmes.fr3');
end;



IBREPMES.ParamByName('dt1').Value:=Ordposlmesdt1;
IBREPMES.ParamByName('dt2').Value:=Ordposlmesdt2;
IBREPMES.ParamByName('bg').Value:=Ordposlmesbg;
IBREPMES.Open;


//  frxXLSExport1.FileName:='��� �� ����� '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(Ordposlmesdt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposlmesdt2)+'''';
frxReport1.Variables['dtmes1']:=Ordposlmesdt1;
frxReport1.Variables['dtmes2']:=Ordposlmesdt2;
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;
end;

procedure TForm13.cxButton8Click(Sender: TObject);
begin
IBORDERMES.Close;
IBORDERMES.ParamByName('dt1').Value:=cxLookupComboBox5.EditValue;
IBORDERMES.ParamByName('dt2').Value:=cxLookupComboBox6.EditValue;
IBORDERMES.ParamByName('bg').Value:=cxCalcEdit3.EditValue;
//���������� ������������ ������
Ordposlmesdt1:=cxLookupComboBox5.EditValue;
Ordposlmesdt2:=cxLookupComboBox6.EditValue;
Ordposlmesbg:=cxCalcEdit3.EditValue;
IBORDERMES.Open;
ShowMessage('��� ���������� �� '+mon_slovoDt(cxLookupComboBox5.EditValue)+' �� '+mon_slovoDt(cxLookupComboBox6.EditValue));
end;

procedure TForm13.cxButton9Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid3,cxTabSheet3.Caption);
end;

procedure TForm13.FormCreate(Sender: TObject);
begin

SQLORDERALL:=IBORDERALL.SelectSQL.Text;
SQLORDER:=IBORDER.SelectSQL.Text;
SQLORDERMES:=IBORDERMES.SelectSQL.Text;



end;

end.
