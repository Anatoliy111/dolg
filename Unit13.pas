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
  frxExportRTF, frxExportXLS, frxExportPDF, cxCheckBox;

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
    RadioButton4: TRadioButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
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
    IBORDERALLKOLI_P: TFloatField;
    IBORDERALLKOLI_PF: TFloatField;
    cxGridDBTableView1KOLI_P: TcxGridDBColumn;
    cxGridDBTableView1KOLI_PF: TcxGridDBColumn;
    IBORDERKOLI_P: TFloatField;
    IBORDERKOLI_PF: TFloatField;
    IBREPALLKOLI_P: TFloatField;
    IBREPALLKOLI_PF: TFloatField;
    IBREPKOLI_P: TFloatField;
    IBREPKOLI_PF: TFloatField;
    IBREPMESKOLI_P: TFloatField;
    IBREPMESKOLI_PF: TFloatField;
    cxGridDBTableView2KOLI_P: TcxGridDBColumn;
    cxGridDBTableView2KOLI_PF: TcxGridDBColumn;
    IBORDERMESKOLI_P: TFloatField;
    IBORDERMESKOLI_PF: TFloatField;
    cxGridDBTableView3KOLI_P: TcxGridDBColumn;
    cxGridDBTableView3KOLI_PF: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxLabel13: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
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
    procedure FormShow(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;
  SQLORDERALL,SQLORDER,SQLORDERMES,SelectSQL:string;
  OrdAlldt1,OrdAlldt2,Ordposldt1,Ordposldt2,Ordposlmesdt1,Ordposlmesdt2:variant;
  OrdAllbg,Ordposlbg,Ordposlmesbg:double;

implementation

{$R *.dfm}

uses Unit1, mytools, Unit2;

procedure TForm13.cxButton1Click(Sender: TObject);
var
  I,k: Integer;
  ss:string;
begin

Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;
IBREPALL.Close;
if cxGridDBTableView1.DataController.Filter.FilterText<>'' then
begin
 IBREPALL.SelectSQL.Text:=IBORDERALL.SelectSQL.Text+' where '+cxGridDBTableView1.DataController.Filter.FilterText;
end
else
 IBREPALL.SelectSQL.Text:=IBORDERALL.SelectSQL.Text;


IBREPALL.ParamByName('dt1').Value:=OrdAlldt1;
IBREPALL.ParamByName('dt2').Value:=OrdAlldt1;
IBREPALL.ParamByName('bg').Value:=OrdAllbg;
IBREPALL.Open;
Form2.close;

  frxReport1.LoadFromFile('report/orderbudall.fr3');
//  frxXLSExport1.FileName:='Звіт за період '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(OrdAlldt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(OrdAlldt2)+'''';
frxReport1.Variables['org']:=''''+Form1.ORG+'''';

                ss:='(';
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                        ss:=ss+trim(IBWIDNAIM.Value)+',';
                      end;
                IBWID.Next;
                end;

                Delete(ss, Length(ss)-1, 1);
                ss:=ss+')';


frxReport1.Variables['posl']:=''''+ss+'''';
frxReport1.ShowReport;

end;

procedure TForm13.cxButton2Click(Sender: TObject);
var strSQL:string;
begin
IBWID.First;
if not IBWID.Locate('ch',1,[]) then
begin
  ShowMessage('Виберіть послугу!!!');
  exit;
end;

Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;

                strSQL:=' and (';
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                        strSQL:=strSQL+'wid='''+IBWIDWID.Value+'''';
                        strSQL:=strSQL+' or ';
                      end;
                IBWID.Next;
                end;

                Delete(strSQL, Length(strSQL)-3, 3);
                strSQL:=strSQL+')';


IBORDERALL.Close;
IBORDERALL.SelectSQL.Text:=StringReplace(SQLORDERALL,'@w',strSQL,[rfReplaceAll, rfIgnoreCase]);
IBORDERALL.ParamByName('dt1').Value:=cxLookupComboBox3.EditValue;
IBORDERALL.ParamByName('dt2').Value:=cxLookupComboBox4.EditValue;
IBORDERALL.ParamByName('bg').Value:=cxCalcEdit1.EditValue;
//Переменные формирования печати
OrdAlldt1:=cxLookupComboBox3.EditValue;
OrdAlldt2:=cxLookupComboBox4.EditValue;
OrdAllbg:=cxCalcEdit1.EditValue;
IBORDERALL.Open;
Form2.close;
ShowMessage('Звіт зформовано за '+mon_slovoDt(cxLookupComboBox3.EditValue)+' по '+mon_slovoDt(cxLookupComboBox4.EditValue));
end;

procedure TForm13.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid2,cxTabSheet1.Caption);
end;

procedure TForm13.cxButton4Click(Sender: TObject);
begin
Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;
IBREP.Close;
if cxGridDBTableView2.DataController.Filter.FilterText<>'' then
begin
 IBREP.SelectSQL.Text:=SQLORDER+' where '+cxGridDBTableView2.DataController.Filter.FilterText;
end
else
 IBREP.SelectSQL.Text:=SQLORDER;

//if RadioButton1.Checked then
//begin
//   IBREP.SelectSQL.Text:=IBREP.SelectSQL.Text+' order by fio,posl,ul,dom';
//   frxReport1.LoadFromFile('report/orderfioposladres.fr3');
//end;
if RadioButton2.Checked then
begin
   IBREP.SelectSQL.Text:=IBREP.SelectSQL.Text+' order by posl,fio,ul,dom';
   frxReport1.LoadFromFile('report/orderposladres.fr3');
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
Form2.close;
//  frxXLSExport1.FileName:='Звіт за період '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(Ordposldt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposldt2)+'''';
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;
end;

procedure TForm13.cxButton5Click(Sender: TObject);
begin
Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;
IBORDER.Close;
IBORDER.ParamByName('dt1').Value:=cxLookupComboBox1.EditValue;
IBORDER.ParamByName('dt2').Value:=cxLookupComboBox2.EditValue;
IBORDER.ParamByName('bg').Value:=cxCalcEdit2.EditValue;
//Переменные формирования печати
Ordposldt1:=cxLookupComboBox1.EditValue;
Ordposldt2:=cxLookupComboBox2.EditValue;
Ordposlbg:=cxCalcEdit2.EditValue;
IBORDER.Open;
Form2.close;
ShowMessage('Звіт зформовано за '+mon_slovoDt(cxLookupComboBox1.EditValue)+' по '+mon_slovoDt(cxLookupComboBox2.EditValue));
end;

procedure TForm13.cxButton6Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid1,cxTabSheet2.Caption);
end;

procedure TForm13.cxButton7Click(Sender: TObject);
begin
Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;
IBREPMES.Close;
if cxGridDBTableView3.DataController.Filter.FilterText<>'' then
begin
 IBREPMES.SelectSQL.Text:=SQLORDERMES+' where '+cxGridDBTableView3.DataController.Filter.FilterText;
end
else
 IBREPMES.SelectSQL.Text:=SQLORDERMES;

//if RadioButton3.Checked then
//begin
//   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,posl,ul,dom';
//   frxReport1.LoadFromFile('report/orderfioposladresmes.fr3');
//end;
if RadioButton4.Checked then
begin
   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by posl,fio,ul,dom';
   frxReport1.LoadFromFile('report/orderposladresmes.fr3');
end;
if RadioButton5.Checked then
begin
   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,ul,dom,posl';
   frxReport1.LoadFromFile('report/orderadresposlmes.fr3');
end;



IBREPMES.ParamByName('dt1').Value:=Ordposlmesdt1;
IBREPMES.ParamByName('dt2').Value:=Ordposlmesdt2;
IBREPMES.ParamByName('bg').Value:=Ordposlmesbg;
IBREPMES.Open;
Form2.close;

//  frxXLSExport1.FileName:='Звіт за період '+Datename1+' '+Datename2;

frxReport1.Variables['datemes1']:=''''+mon_slovoDt(Ordposlmesdt1)+'''';
frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposlmesdt2)+'''';
frxReport1.Variables['dtmes1']:=Ordposlmesdt1;
frxReport1.Variables['dtmes2']:=Ordposlmesdt2;
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;
end;

procedure TForm13.cxButton8Click(Sender: TObject);
begin
Form2.Show;
Form2.Label1.Caption:='Обрахування даних';
Application.ProcessMessages;
IBORDERMES.Close;
IBORDERMES.ParamByName('dt1').Value:=cxLookupComboBox5.EditValue;
IBORDERMES.ParamByName('dt2').Value:=cxLookupComboBox6.EditValue;
IBORDERMES.ParamByName('bg').Value:=cxCalcEdit3.EditValue;
//Переменные формирования печати
Ordposlmesdt1:=cxLookupComboBox5.EditValue;
Ordposlmesdt2:=cxLookupComboBox6.EditValue;
Ordposlmesbg:=cxCalcEdit3.EditValue;
IBORDERMES.Open;
Form2.close;
ShowMessage('Звіт зформовано за '+mon_slovoDt(cxLookupComboBox5.EditValue)+' по '+mon_slovoDt(cxLookupComboBox6.EditValue));
end;

procedure TForm13.cxButton9Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid3,cxTabSheet3.Caption);
end;

procedure TForm13.cxCheckBox3PropertiesChange(Sender: TObject);
begin
     if cxCheckBox3.Checked then
     begin
                IBWID.First;
                while not IBWID.eof do
                begin
                  IBWID.Edit;
                  IBWIDCH.Value:=1;
                  IBWID.Post;

                IBWID.Next;
                end;
                IBWID.First;
     end
     else
     begin
                IBWID.First;
                while not IBWID.eof do
                begin
                  IBWID.Edit;
                  IBWIDCH.Value:=0;
                  IBWID.Post;

                IBWID.Next;
                end;
                IBWID.First;

     end;

end;

procedure TForm13.FormCreate(Sender: TObject);
begin

SQLORDERALL:=IBORDERALL.SelectSQL.Text;
SQLORDER:=IBORDER.SelectSQL.Text;
SQLORDERMES:=IBORDERMES.SelectSQL.Text;



end;

procedure TForm13.FormShow(Sender: TObject);
begin
cxLookupComboBox3.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox4.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox5.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox6.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
