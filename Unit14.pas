unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxButtonEdit, cxCurrencyEdit, cxDBLookupComboBox, IBX.IBCustomDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxCheckBox, cxLabel, cxGroupBox,
  Vcl.ExtCtrls, cxCalc, frxClass, frxDBSet;

type
  TForm14 = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxCheckBox2: TcxCheckBox;
    cxButton2: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxComboBox2: TcxComboBox;
    cxTextEdit3: TcxTextEdit;
    cxButton9: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxLabel4: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    IBWID: TIBDataSet;
    DSWID: TDataSource;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    IBREP: TIBDataSet;
    DSREP: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel8: TcxLabel;
    Memo1: TMemo;
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
    cxLabel9: TcxLabel;
    cxButton5: TcxButton;
    cxCheckBox3: TcxCheckBox;
    IBPRINT: TIBDataSet;
    DSPRINT: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    cxButton3: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;
  repdt:variant;

implementation

{$R *.dfm}

uses Unit1, mytools;

procedure TForm14.cxButton1Click(Sender: TObject);
begin
if (cxTextEdit3.Text='') and (cxTextEdit4.Text='') then
   IBREP.Filtered:=false
else
begin
  if IBREP.Filtered then
  begin
  IBREP.Filtered:=false;
  IBREP.Filtered:=true;
  end
  else
  IBREP.Filtered:=true;

end;
end;

procedure TForm14.cxButton2Click(Sender: TObject);
var
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
    SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere:string;
    prop:TPersistent;

begin

      cxGrid1DBTableView1.ClearItems;

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='kontrol';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=110;
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Контролер';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SCHET';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Рахунок';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='FIO';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=200;
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='ПІБ';


      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='ULNAIM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=200;
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Вулиця';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='NOMDOM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Будинок';



      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='NOMKV';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Квартира';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGrid1DBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SAL';
      acolumn.DataBinding.valuetype:='Currency';
      acolumn.Width:=80;
      acolumn.Editing:=false;
      acolumn.PropertiesClass:=TcxCurrencyEditProperties;
      TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
      cxGrid1DBTableView1.EndUpdate;

      AColumn.Summary.GroupFooterKind := skSum;


      acolumn.Caption:='Борг на кін.';

//      SQL:=IBREP.SelectSQL.Text;
//      IBREP.SelectSQL.Text:=SQL;


      SQL:='select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,';
      strSAL:='';
      strMAXFIELD:='';
      strFIELD:='';


                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                      strSUM:=strSUM+'COALESCE(max('+IBWIDWID.Value+'),0)+';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max('+IBWIDWID.Value+'),0) '+IBWIDWID.Value+',';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max(opl_'+IBWIDWID.Value+'),0) opl_'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then sal else null end as '+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';
                      strWhere:=strWhere+IBWIDWID.Value+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' or ';

                              acolumn:=cxGrid1DBTableView1.CreateColumn;
                              cxGrid1DBTableView1.BeginUpdate;
                              acolumn.DataBinding.FieldName:=IBWIDWID.Value;
                              acolumn.DataBinding.valuetype:='Currency';
                              acolumn.Width:=70;
                              acolumn.Editing:=false;
                              acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                              TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                              cxGrid1DBTableView1.EndUpdate;

                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=IBWIDNAIM.Value;


                              acolumn:=cxGrid1DBTableView1.CreateColumn;
                              cxGrid1DBTableView1.BeginUpdate;
                              acolumn.DataBinding.FieldName:='OPL_'+IBWIDWID.Value;
                              acolumn.DataBinding.valuetype:='Currency';
                              acolumn.Width:=70;
                              acolumn.Editing:=false;
                              acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                              TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                              cxGrid1DBTableView1.EndUpdate;

                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:='Опл. '+IBWIDNAIM.Value;
                      end;

                IBWID.Next;
                end;
                Delete(strSUM, Length(strSUM), 1);
                Delete(strMAXFIELD, Length(strMAXFIELD), 1);
                Delete(strFIELD, Length(strFIELD), 1);
                Delete(strWhere, Length(strWhere)-3, 3);
                strWhere:='where '+strWhere;
                strSAL:=strSUM+' as SAL,';
                SQL:=SQL+strSAL+strMAXFIELD+' from(select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,'+strFIELD;
                SQL:=SQL+' from vw_obkr where period=:dt)';
                if cxCheckBox1.Checked then
                   SQL:=SQL+strWhere;
                SQL:=SQL+' group by period,schet,fio,ulnaim,nomdom,nomkv,kontrol';
                if cxCheckBox2.Checked then
                   SQL:=SQL+' having '+strSUM+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])
                else
                   SQL:=SQL+' having '+strSUM+' <> 0';
//                ss:=#39+IBWIDWID.Value+#39;



                IBREP.Close;
                IBREP.SelectSQL.Text:=SQL;
                IBREP.ParamByName('dt').Value:=cxLookupComboBox1.EditValue;
                repdt:=cxLookupComboBox1.EditValue;
                IBREP.Open;

ShowMessage('Звіт зформовано за '+mon_slovoDt(cxLookupComboBox1.EditValue));
end;

procedure TForm14.cxButton3Click(Sender: TObject);
begin
//  Form1.ExportGrid(cxGrid1);
  Form1.ExportGrid(cxGrid1,Form14.Caption);
end;

procedure TForm14.cxButton5Click(Sender: TObject);
var stlFields:TStrings;
    ff:integer;
begin
IBPRINT.Close;
  if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
  begin
   IBPRINT.SelectSQL.Text:=IBREP.SelectSQL.Text+' where '+cxGrid1DBTableView1.DataController.Filter.FilterText;
  end
  else
   IBPRINT.SelectSQL.Text:=IBREP.SelectSQL.Text;



IBPRINT.ParamByName('dt').Value:=repdt;
IBPRINT.Open;

//  frxXLSExport1.FileName:='Звіт за період '+Datename1+' '+Datename2;

//frxDBDataset1.Close;
//frxDBDataset1.FieldAliases.Clear;
//frxDBDataset1.Open;

//   ff:=frxDBDataset1.FieldsCount;
//   frxDBDataset1.GetFieldList(stlFields);

frxReport1.LoadFromFile('report/repposl.fr3');

frxReport1.Variables['datemes']:=''''+mon_slovoDt(repdt)+'''';
frxReport1.Variables['datenow']:=''''+mon_slovoDt(now())+'''';
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.ShowReport;

end;

procedure TForm14.cxCheckBox3PropertiesChange(Sender: TObject);
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

procedure TForm14.IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if (cxTextEdit3.Text<>'') and (cxTextEdit4.Text<>'')then
   Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0) and (Pos(cxTextEdit4.Text, DataSet.FieldByName('schet').AsString) > 0)
else
begin
   if (cxTextEdit3.Text<>'') then
      Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0);
   if (cxTextEdit4.Text<>'') then
      Accept:=(Pos(cxTextEdit4.Text, DataSet.FieldByName('schet').AsString) > 0);
//   if (cxTextEdit1.Text<>'') then
//      Accept:=Accept and (DataSet.FieldByName('dolg').AsFloat,StringCodePage(cxComboBox1.EditValue),str2float(cxTextEdit1.Text));
end;
end;

end.
