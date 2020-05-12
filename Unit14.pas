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
    cxCalcEdit1: TcxCalcEdit;
    cxCalcEdit2: TcxCalcEdit;
    cxButton5: TcxButton;
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
    cxLabel10: TcxLabel;
    cxCheckBox7: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxCheckBox6: TcxCheckBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxCheckBox3: TcxCheckBox;
    cxLabel8: TcxLabel;
    cxLabel11: TcxLabel;
    cxCheckBox8: TcxCheckBox;
    cxComboBox3: TcxComboBox;
    cxCalcEdit3: TcxCalcEdit;
    cxLabel12: TcxLabel;
    cxCheckBox9: TcxCheckBox;
    cxComboBox4: TcxComboBox;
    cxCalcEdit4: TcxCalcEdit;
    cxLabel13: TcxLabel;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxCheckBox14: TcxCheckBox;
    cxLabel18: TcxLabel;
    cxCheckBox15: TcxCheckBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    cxCheckBox19: TcxCheckBox;
    cxLabel22: TcxLabel;
    cxLabel19: TcxLabel;
    cxCheckBox16: TcxCheckBox;
    cxCheckBox17: TcxCheckBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxCheckBox18: TcxCheckBox;
    cxCheckBox20: TcxCheckBox;
    cxLabel23: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCheckBox14PropertiesChange(Sender: TObject);
    procedure cxCheckBox15PropertiesChange(Sender: TObject);
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
    SQL,group,strSAL,strFIELD,strMAXFIELD,strSUMSAL,strWhere,strSUMOPL,strOPL,strDOLG,strSUMDOLG,strNACH,strSUMNACH:string;
    chwid:integer;
    prop:TPersistent;

begin

      if cxLookupComboBox1.EditValue>cxLookupComboBox2.EditValue then
      begin
        ShowMessage('Помилка!!! Початковий період більший за кінцевий');
        exit;
      end;

      if cxCheckBox14.Checked then
      begin
        if (cxLookupComboBox3.EditValue<cxLookupComboBox1.EditValue) or (cxLookupComboBox3.EditValue>cxLookupComboBox2.EditValue) then
        begin
          ShowMessage('Помилка!!! Початковий період оплати повинен буди в межах основного періоду ');
          exit;
        end;
        if (cxLookupComboBox4.EditValue<cxLookupComboBox1.EditValue) or (cxLookupComboBox4.EditValue>cxLookupComboBox2.EditValue) then
        begin
          ShowMessage('Помилка!!! Кінцевий період оплати повинен буди в межах основного періоду');
          exit;
        end;
        if cxLookupComboBox3.EditValue>cxLookupComboBox4.EditValue then
        begin
          ShowMessage('Помилка!!! Початковий період оплати більший за кінцевий');
          exit;
        end;
      end;

      if cxCheckBox15.Checked then
      begin
        if (cxLookupComboBox5.EditValue<cxLookupComboBox1.EditValue) or (cxLookupComboBox5.EditValue>cxLookupComboBox2.EditValue) then
        begin
          ShowMessage('Помилка!!! Початковий період нарахування повинен буди в межах основного періоду ');
          exit;
        end;
        if (cxLookupComboBox6.EditValue<cxLookupComboBox1.EditValue) or (cxLookupComboBox6.EditValue>cxLookupComboBox2.EditValue) then
        begin
          ShowMessage('Помилка!!! Кінцевий період нарахування повинен буди в межах основного періоду ');
          exit;
        end;
        if cxLookupComboBox5.EditValue>cxLookupComboBox6.EditValue then
        begin
          ShowMessage('Помилка!!! Початковий період нарахування більший за кінцевий');
          exit;
        end;
      end;






      cxGrid1DBTableView1.ClearItems;

      if cxCheckBox20.Checked then
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

        group:=group+'orgname,';

      end;

      if cxCheckBox10.Checked then
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

      group:=group+'kontrol,';
      end;

      if cxCheckBox19.Checked then
      begin

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='SCHET';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Рахунок';

        group:=group+'schet,';
      end;

      if cxCheckBox11.Checked then
      begin
        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='FIO';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Width:=200;
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='ПІБ';

        group:=group+'fio,';
      end;

      if cxCheckBox12.Checked then
      begin
        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='ULNAIM';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Width:=200;
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Вулиця';

        group:=group+'ULNAIM,';

        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='NOMDOM';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Будинок';

        group:=group+'NOMDOM,';



        acolumn:=cxGrid1DBTableView1.CreateColumn;
        cxGridDBTableView1.BeginUpdate;
        acolumn.DataBinding.FieldName:='NOMKV';
        acolumn.DataBinding.valuetype:='string';
        acolumn.Options.Editing:=false;
        cxGridDBTableView1.EndUpdate;

        //AColumn.Summary.GroupFooterKind := skSum;

        acolumn.Caption:='Квартира';

        group:=group+'NOMKV,';
      end;



        if cxCheckBox13.Checked then
        begin

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
        end;

        if cxCheckBox16.Checked then
        begin

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
        end;

        if cxCheckBox17.Checked then
        begin

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
        end;

                if cxCheckBox18.Checked then
        begin

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
        end;

                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                                if cxCheckBox5.Checked then
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

                              if cxCheckBox6.Checked then
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

                                if cxCheckBox4.Checked then
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

                                if cxCheckBox7.Checked then
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




                      end;
                IBWID.Next;
                end;






















//      SQL:=IBREP.SelectSQL.Text;
//      IBREP.SelectSQL.Text:=SQL;


        SQL:='select '+group;
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
                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period=:dt1 then dolg else null end as d'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period=:dt2 then sal else null end as s'+IBWIDWID.Value+',';
                      if cxCheckBox15.Checked then
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period>=:dtn1 and period<=:dtn2 then nach else null end as nach_'+IBWIDWID.Value+','
                      else
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then nach else null end as nach_'+IBWIDWID.Value+',';
                      if cxCheckBox14.Checked then
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period>=:dto1 and period<=:dto2 then fullopl else null end as opl_'+IBWIDWID.Value+','
                      else
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';

                      strWhere:=strWhere+'s'+IBWIDWID.Value+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' or ';
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
                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period=:dt1 then dolg else null end as d'+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period=:dt2 then sal else null end as s'+IBWIDWID.Value+',';
                      if cxCheckBox15.Checked then
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period>=:dtn1 and period<=:dtn2 then nach else null end as nach_'+IBWIDWID.Value+','
                      else
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then nach else null end as nach_'+IBWIDWID.Value+',';
                      if cxCheckBox14.Checked then
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' and period>=:dto1 and period<=:dto2 then fullopl else null end as opl_'+IBWIDWID.Value+','
                      else
                         strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';



//                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then nach else null end as nach_'+IBWIDWID.Value+',';
//                      strFIELD:=strFIELD+'case when wid='''+IBWIDWID.Value+''' then fullopl else null end as opl_'+IBWIDWID.Value+',';
                   //   strWhere:=strWhere+IBWIDWID.Value+cxComboBox1.EditValue+StringReplace(FloatToStr(cxCalcEdit1.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' or ';

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


                  //SQL:=SQL+strDOLG+strNACH+strOPL+strSAL+strMAXFIELD+' from(select '+group+strFIELD;
                  //if chwid=0 then Delete(SQL, Length(SQL), 1);
                  if cxCheckBox20.Checked then
                  begin
                    SQL:=SQL+strDOLG+strNACH+strOPL+strSAL+strMAXFIELD+' from(select organ.name as '+group+strFIELD;

                    SQL:=SQL+' from vw_obkr left outer join organ on (vw_obkr.org = organ.org) and (organ.upd = 1) where period>=:dt1 and period<=:dt2)';
                  end
                  else
                  begin
                    SQL:=SQL+strDOLG+strNACH+strOPL+strSAL+strMAXFIELD+' from(select '+group+strFIELD;
                    SQL:=SQL+' from vw_obkr where period>=:dt1 and period<=:dt2)';
                  end;
                  if (cxCheckBox1.Checked) and (chwid<>0) then
                    SQL:=SQL+strWhere;
                  SQL:=SQL+' group by '+group;

                  Delete(SQL, Length(SQL), 1);
  
                if (cxCheckBox2.Checked) or (cxCheckBox8.Checked) or (cxCheckBox9.Checked) then
                begin
                  SQL:=SQL+' having ';
                  if cxCheckBox2.Checked then
                     SQL:=SQL+strSUMSAL+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' and ';

                  if cxCheckBox8.Checked then
                     SQL:=SQL+strSUMOPL+' '+cxComboBox3.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' and ';

                  if cxCheckBox9.Checked then
                     SQL:=SQL+strSUMNACH+' '+cxComboBox4.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+' and ';
                  Delete(SQL, Length(SQL)-4, 4);
                    // SQL:=SQL+' having '+strSUM+' <> 0';
                end;
//                ss:=#39+IBWIDWID.Value+#39;



                IBREP.Close;
                IBREP.SelectSQL.Text:=SQL;
                IBREP.ParamByName('dt1').Value:=cxLookupComboBox1.EditValue;
                IBREP.ParamByName('dt2').Value:=cxLookupComboBox2.EditValue;

                if cxCheckBox14.Checked then
                begin
                IBREP.ParamByName('dto1').Value:=cxLookupComboBox3.EditValue;
                IBREP.ParamByName('dto2').Value:=cxLookupComboBox4.EditValue;
                end;
                if cxCheckBox15.Checked then
                begin
                IBREP.ParamByName('dtn1').Value:=cxLookupComboBox5.EditValue;
                IBREP.ParamByName('dtn2').Value:=cxLookupComboBox6.EditValue;
                end;

                repdt:=cxLookupComboBox1.EditValue;
                IBREP.Open;

ShowMessage('Звіт зформовано за '+mon_slovoDt(cxLookupComboBox1.EditValue)+' по '+mon_slovoDt(cxLookupComboBox2.EditValue));
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

procedure TForm14.cxCheckBox14PropertiesChange(Sender: TObject);
begin
        if cxCheckBox14.Checked then
     begin
        cxLookupComboBox3.Enabled:=true;
        cxLookupComboBox4.Enabled:=true;
        if cxLookupComboBox3.EditValue=null then cxLookupComboBox3.EditValue:=Form1.IBPERIODPERIOD.Value;
        if cxLookupComboBox4.EditValue=null then cxLookupComboBox4.EditValue:=Form1.IBPERIODPERIOD.Value;
     end
     else
     begin
        cxLookupComboBox3.Enabled:=false;
        cxLookupComboBox4.Enabled:=false;
     end;
end;

procedure TForm14.cxCheckBox15PropertiesChange(Sender: TObject);
begin
        if cxCheckBox15.Checked then
     begin
        cxLookupComboBox5.Enabled:=true;
        cxLookupComboBox6.Enabled:=true;
        if cxLookupComboBox5.EditValue=null then cxLookupComboBox5.EditValue:=Form1.IBPERIODPERIOD.Value;
        if cxLookupComboBox6.EditValue=null then cxLookupComboBox6.EditValue:=Form1.IBPERIODPERIOD.Value;
     end
     else
     begin
        cxLookupComboBox5.Enabled:=false;
        cxLookupComboBox6.Enabled:=false;
     end;
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
