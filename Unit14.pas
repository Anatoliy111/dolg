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
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
    cxButton5: TcxButton;
    cxCheckBox3: TcxCheckBox;
    IBPRINT: TIBDataSet;
    DSPRINT: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    cxButton3: TcxButton;
    cxCheckBox4: TcxCheckBox;
    cxLabel7: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxCheckBox5: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxCheckBox6: TcxCheckBox;
    cxLabel10: TcxLabel;
    cxCheckBox7: TcxCheckBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tip:string;
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
    SQL,strSAL,strFIELD,strMAXFIELD,strSUMSAL,strWhere,strSUMOPL,strOPL,strDOLG,strSUMDOLG,strNACH,strSUMNACH:string;
    chwid:integer;
    prop:TPersistent;

begin

      if cxLookupComboBox1.EditValue>cxLookupComboBox2.EditValue then
      begin
        ShowMessage('Помилка!!! Початковий період більший за кінцевий');
        exit;
      end;


      cxGrid1DBTableView1.ClearItems;

      if tip='Abon' then
      begin
      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='kontrol';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=110;
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='Контролер';



        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='SCHET';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Рахунок';


        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='FIO';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Width:=200;
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='ПІБ';


        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='ULNAIM';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Width:=200;
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Вулиця';

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='NOMDOM';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Будинок';



        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='NOMKV';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Квартира';
      end;

      if tip='Org' then
      begin

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='orgname';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Width:=200;
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Організація';

      end;


        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGrid1DBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='DOLG';
        acolumn.DataBinding.valuetype:='Currency';
        acolumn.Width:=80;
        acolumn.Options.Editing:=false;
        acolumn.PropertiesClass:=TcxCurrencyEditProperties;
        TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
        cxGrid1DBTableView1.EndUpdate;

        AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Борг на поч.';

        if cxCheckBox5.Checked then
        begin
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                                acolumn:=cxGrid1DBTableView1.CreateColumn;
                                cxGrid1DBTableView1.BeginUpdate;
                                acolumn.DataBinding.FieldName:='d'+IBWIDWID.Value;
                                acolumn.DataBinding.valuetype:='Currency';
                                acolumn.Width:=70;
                                acolumn.Options.Editing:=false;
                                acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                                TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                                cxGrid1DBTableView1.EndUpdate;

                                AColumn.Summary.GroupFooterKind := skSum;

                                acolumn.Caption:='Борг.п.'+IBWIDNAIM.Value;
                      end;
                IBWID.Next;
                end;
        end;

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGrid1DBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='SNACH';
        acolumn.DataBinding.valuetype:='Currency';
        acolumn.Width:=80;
        acolumn.Options.Editing:=false;
        acolumn.PropertiesClass:=TcxCurrencyEditProperties;
        TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
        cxGrid1DBTableView1.EndUpdate;

        AColumn.Summary.GroupFooterKind := skSum;


        acolumn.Caption:='Нарахування';

        if cxCheckBox6.Checked then
        begin
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                                acolumn:=cxGrid1DBTableView1.CreateColumn;
                                cxGrid1DBTableView1.BeginUpdate;
                                acolumn.DataBinding.FieldName:='nach_'+IBWIDWID.Value;
                                acolumn.DataBinding.valuetype:='Currency';
                                acolumn.Width:=70;
                                acolumn.Options.Editing:=false;
                                acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                                TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                                cxGrid1DBTableView1.EndUpdate;

                                AColumn.Summary.GroupFooterKind := skSum;

                                acolumn.Caption:='Нарах.'+IBWIDNAIM.Value;
                      end;
                IBWID.Next;
                end;
        end;

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGrid1DBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='SOPL';
        acolumn.DataBinding.valuetype:='Currency';
        acolumn.Width:=80;
        acolumn.Options.Editing:=false;
        acolumn.PropertiesClass:=TcxCurrencyEditProperties;
        TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
        cxGrid1DBTableView1.EndUpdate;

        AColumn.Summary.GroupFooterKind := skSum;


        acolumn.Caption:='Оплата';

        if cxCheckBox4.Checked then
        begin
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                                acolumn:=cxGrid1DBTableView1.CreateColumn;
                                cxGrid1DBTableView1.BeginUpdate;
                                acolumn.DataBinding.FieldName:='opl_'+IBWIDWID.Value;
                                acolumn.DataBinding.valuetype:='Currency';
                                acolumn.Width:=70;
                                acolumn.Options.Editing:=false;
                                acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                                TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                                cxGrid1DBTableView1.EndUpdate;

                                AColumn.Summary.GroupFooterKind := skSum;

                                acolumn.Caption:='Опл.'+IBWIDNAIM.Value;
                      end;
                IBWID.Next;
                end;
        end;

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGrid1DBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='SAL';
        acolumn.DataBinding.valuetype:='Currency';
        acolumn.Width:=80;
        acolumn.Options.Editing:=false;
        acolumn.PropertiesClass:=TcxCurrencyEditProperties;
        TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
        cxGrid1DBTableView1.EndUpdate;

        AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Борг на кін.';

        if cxCheckBox7.Checked then
        begin
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                                acolumn:=cxGrid1DBTableView1.CreateColumn;
                                cxGrid1DBTableView1.BeginUpdate;
                                acolumn.DataBinding.FieldName:='s'+IBWIDWID.Value;
                                acolumn.DataBinding.valuetype:='Currency';
                                acolumn.Width:=70;
                                acolumn.Options.Editing:=false;
                                acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                                TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                                cxGrid1DBTableView1.EndUpdate;

                                AColumn.Summary.GroupFooterKind := skSum;

                                acolumn.Caption:='Борг.к.'+IBWIDNAIM.Value;
                      end;
                IBWID.Next;
                end;
        end;





//      SQL:=IBREP.SelectSQL.Text;
//      IBREP.SelectSQL.Text:=SQL;

      if tip='Org' then
      begin
        SQL:='select period,orgname,';
      end;
      if tip='Abon' then
      begin
        SQL:='select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,';
      end;
      strSAL:='';
      strMAXFIELD:='';
      strFIELD:='';
      chwid:=0;

                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                      chwid:=1;
                      strSUMDOLG:=strSUMDOLG+'COALESCE(max(d'+IBWIDWID.Value+'),0)+';
                      strSUMSAL:=strSUMSAL+'COALESCE(max(s'+IBWIDWID.Value+'),0)+';
                      strSUMOPL:=strSUMOPL+'COALESCE(max(opl_'+IBWIDWID.Value+'),0)+';
                      strSUMNACH:=strSUMNACH+'COALESCE(max(nach_'+IBWIDWID.Value+'),0)+';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max(d'+IBWIDWID.Value+'),0) d'+IBWIDWID.Value+',';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max(nach_'+IBWIDWID.Value+'),0) nach_'+IBWIDWID.Value+',';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max(opl_'+IBWIDWID.Value+'),0) opl_'+IBWIDWID.Value+',';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max(s'+IBWIDWID.Value+'),0) s'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then dolg else null end as d'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then sal else null end as s'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then nach else null end as nach_'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';
                      strWhere:=strWhere+IBWIDWID.Value+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' or ';
                      end;
                IBWID.Next;
                end;

                if chwid=0 then
                begin
                  IBWID.First;
                  while not IBWID.eof do
                  begin
                      strSUMDOLG:=strSUMDOLG+'COALESCE(max(d'+IBWIDWID.Value+'),0)+';
                      strSUMSAL:=strSUMSAL+'COALESCE(max(s'+IBWIDWID.Value+'),0)+';
                      strSUMOPL:=strSUMOPL+'COALESCE(max(opl_'+IBWIDWID.Value+'),0)+';
                      strSUMNACH:=strSUMNACH+'COALESCE(max(nach_'+IBWIDWID.Value+'),0)+';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then dolg else null end as d'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then sal else null end as s'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then nach else null end as nach_'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';
                      strWhere:=strWhere+IBWIDWID.Value+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' or ';

                  IBWID.Next;
                  end;
                end;


                Delete(strSUMSAL, Length(strSUMSAL), 1);
                Delete(strSUMDOLG, Length(strSUMDOLG), 1);
                Delete(strSUMNACH, Length(strSUMNACH), 1);
                Delete(strSUMOPL, Length(strSUMOPL), 1);
                Delete(strMAXFIELD, Length(strMAXFIELD), 1);
                Delete(strFIELD, Length(strFIELD), 1);
                Delete(strWhere, Length(strWhere)-3, 3);
                strWhere:='where '+strWhere;
                strDOLG:=strSUMDOLG+' as DOLG,';
                strSAL:=strSUMSAL+' as SAL,';
                strOPL:=strSUMOPL+' as SOPL,';
                strNACH:=strSUMNACH+' as SNACH,';
                if chwid=0 then Delete(strSAL, Length(strSAL), 1);
//                if chwid=0 then
//                begin
//                  Delete(SQL, Length(SQL), 1);
//                  strSAL:='';
//                  strOPL:='';
//                end;

                if tip='Abon' then
                begin
                  SQL:=SQL+strDOLG+strNACH+strOPL+strSAL+strMAXFIELD+' from(select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,'+strFIELD;
                  //if chwid=0 then Delete(SQL, Length(SQL), 1);
                  SQL:=SQL+' from vw_obkr where period>=:dt1 and period<=:dt2)';
                  if cxCheckBox1.Checked then
                    SQL:=SQL+strWhere;
                  SQL:=SQL+' group by period,schet,fio,ulnaim,nomdom,nomkv,kontrol';

                end;
                if tip='Org' then
                begin
                  SQL:=SQL+strDOLG+strNACH+strOPL+strSAL+strMAXFIELD+' from(select period,organ.name as orgname,'+strFIELD;
                  //if chwid=0 then Delete(SQL, Length(SQL), 1);
                  SQL:=SQL+' from vw_obkr left outer join organ on (vw_obkr.org = organ.org) and (organ.upd = 1) where period>=:dt1 and period<=:dt2)';
                  if cxCheckBox1.Checked then
                     SQL:=SQL+strWhere;
                  SQL:=SQL+' group by period,orgname';

                end;
                if chwid<>0 then
                begin
                  if cxCheckBox2.Checked then
                     SQL:=SQL+' having '+strSUMSAL+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])
                  else
                    // SQL:=SQL+' having '+strSUM+' <> 0';
                end;
//                ss:=#39+IBWIDWID.Value+#39;



                IBREP.Close;
                IBREP.SelectSQL.Text:=SQL;
                IBREP.ParamByName('dt1').Value:=cxLookupComboBox1.EditValue;
                IBREP.ParamByName('dt2').Value:=cxLookupComboBox2.EditValue;
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

procedure TForm14.FormShow(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
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
