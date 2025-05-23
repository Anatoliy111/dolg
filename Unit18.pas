unit Unit18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxCheckBox, Vcl.Menus, IBX.IBCustomDataSet, cxDropDownEdit, cxCalc,
  cxTextEdit, cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxLabel,
  Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxCurrencyEdit,cxGrid,
  dxBarBuiltInMenu, cxPC;

type
  TForm18 = class(TForm)
    Panel1: TPanel;
    cxLabel4: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton1: TcxButton;
    cxCalcEdit2: TcxCalcEdit;
    cxButton7: TcxButton;
    cxLabel12: TcxLabel;
    cxLabel2: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    IBWIDSNAIM: TIBStringField;
    DSWID: TDataSource;
    IBREP: TIBDataSet;
    DSREP: TDataSource;
    cxButton4: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    IBREPDOM: TIBDataSet;
    DSREPDOM: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure IBREPDOMCHChange(Sender: TField);
  private
      function genSQL():string;
      function genDOMSQL(AbonSQL:string):string;
    { Private declarations }
  public
      id_orders:integer;
    { Public declarations }
        procedure OnTELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
        procedure OnCHDOMPropertiesChange(Sender: TObject);
        procedure OnCHPropertiesChange1(Sender: TObject);

  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses mytools, Unit17, Unit1, Unit2;

function TForm18.genSQL():string;
var SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere,whereposl:string;
begin

      SQL:='select 0 as ch,period,schet,fio,ulnaim,nomdom,nomkv,case when tel='''' then null else tel end as tel,1 as kol,';
//      SQL:=SQL+'cast('''+''+''' as varchar(300)) SMS,';

      strSAL:='';
      strMAXFIELD:='';
      strFIELD:='';
      whereposl:='';
      posl:='';
                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                      if IBWIDWID.Value='as' then
                        begin
                          posl:=posl+'ass,';
                          strSUM:=strSUM+'COALESCE(max(ass),0)+';
                          strMAXFIELD:=strMAXFIELD+'COALESCE(max(ass),0) ass,';
                          strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then sal else null end as ass,';
                          whereposl:=whereposl+'ass'+cxComboBox2.EditValue+'0 or ';
                        end
                      else
                        begin
                          posl:=posl+IBWIDWID.Value+',';
                          strSUM:=strSUM+'COALESCE(max('+IBWIDWID.Value+'),0)+';
                          strMAXFIELD:=strMAXFIELD+'COALESCE(max('+IBWIDWID.Value+'),0) '+IBWIDWID.Value+',';
                          strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then sal else null end as '+IBWIDWID.Value+',';
                          whereposl:=whereposl+IBWIDWID.Value+cxComboBox2.EditValue+'0 or ';
                        end;
                      end;

                IBWID.Next;
                end;

//                strWhere:=strWhere+'('+whereposl+')';
                Delete(strSUM, Length(strSUM), 1);
                Delete(strMAXFIELD, Length(strMAXFIELD), 1);
                Delete(strFIELD, Length(strFIELD), 1);
                Delete(whereposl, Length(whereposl)-3, 3);
                strWhere:='where '+strWhere+'('+whereposl+')';
                strSAL:=strSUM+' as SAL,';
                SQL:=SQL+strSAL+strMAXFIELD+' from(select vw_obkrnow.period,vw_obkrnow.schet,vw_obkrnow.fio,vw_obkrnow.ulnaim,vw_obkrnow.nomdom,vw_obkrnow.nomkv,aboninf.tel,'+strFIELD;
                SQL:=SQL+' from vw_obkrnow join aboninf on (aboninf.schet=vw_obkrnow.schet))';
//                if cxCheckBox1.Checked then
//                   SQL:=SQL+strWhere;
                SQL:=SQL+strWhere;
                SQL:=SQL+' group by ch,period,schet,fio,ulnaim,nomdom,nomkv,tel';
//                if cxCheckBox2.Checked then
                   SQL:=SQL+' having '+strSUM+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase]);
//                else
//                   SQL:=SQL+' having '+strSUM+' <> 0';
//                ss:=#39+IBWIDWID.Value+#39;

     result:=SQL;

end;

procedure TForm18.IBREPDOMCHChange(Sender: TField);
var rec:integer;
begin


  rec:=IBREP.RecNo;
  DSREP.Enabled:=false;
  IBREP.First;
  if IBREPDOM.FieldByName('ch').Value=0 then
  begin
    while not IBREP.Eof do
    begin
    if (IBREP.FieldByName('ulnaim').Value=IBREPDOM.FieldByName('ulnaim').Value) and (IBREP.FieldByName('nomdom').Value=IBREPDOM.FieldByName('nomdom').Value) and (IBREP.FieldByName('tel').Value<>null) then
    begin
      IBREP.Edit;
      IBREP.FieldByName('ch').Value:=1;
      IBREP.Post;
    end;
    IBREP.Next;
    end;
  end
  else
  begin
    while not IBREP.Eof do
    begin
    if (IBREP.FieldByName('ulnaim').Value=IBREPDOM.FieldByName('ulnaim').Value) and (IBREP.FieldByName('nomdom').Value=IBREPDOM.FieldByName('nomdom').Value) and (IBREP.FieldByName('tel').Value<>null) then
    begin
      IBREP.Edit;
      IBREP.FieldByName('ch').Value:=0;
      IBREP.Post;
    end;
    IBREP.Next;
    end;

  end;

  IBREP.First;
  IBREP.RecNo:=rec;
  DSREP.Enabled:=true;
end;

function TForm18.genDOMSQL(AbonSQL:string):string;
var SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere,whereposl:string;
begin

      SQL:='select ch, ulnaim, nomdom, sum(SAL) sal,sum(kol) kol,';

//      SQL:=SQL+'cast('''+''+''' as varchar(300)) SMS,';

                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin
                      if IBWIDWID.Value='as' then
                        begin
                          strFIELD:=strFIELD+'sum(ass) ass,';
                        end
                      else
                        begin
                          strFIELD:=strFIELD+'sum('+IBWIDWID.Value+') '+IBWIDWID.Value+',';
                        end;
                      end;

                IBWID.Next;
                end;

                SQL:=SQL+strFIELD+'sum(kol) kol from ('+AbonSQL+') '+'where trim(tel)<>'''' group by ch, ulnaim, nomdom';
     result:=SQL;

end;

procedure TForm18.OnTELPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (VarToStr(DisplayValue)[2]<>'0') and (VarToStr(DisplayValue)<>'(___)___-____') then
  begin

    ErrorText:='������� �� ���������� � 0  - ����.(066)';
    Error:=true;

  end;
  if VarToStr(DisplayValue)='(___)___-____' then
  begin
    Error:=false;
  end
  else
      if pos('_',VarToStr(DisplayValue))>0 then
      begin

        ErrorText:='������� �� ���� 10 �������';
        Error:=true;

      end;
end;

procedure TForm18.OnCHDOMPropertiesChange(Sender: TObject);
var rec:integer;
begin


  rec:=IBREP.RecNo;
  DSREP.Enabled:=false;
  IBREP.First;
  if IBREPDOM.FieldByName('ch').Value=0 then
  begin
    while not IBREP.Eof do
    begin
    if (IBREP.FieldByName('ulnaim').Value=IBREPDOM.FieldByName('ulnaim').Value) and (IBREP.FieldByName('nomdom').Value=IBREPDOM.FieldByName('nomdom').Value) and (IBREP.FieldByName('tel').Value<>null) then
    begin
      IBREP.Edit;
      IBREP.FieldByName('ch').Value:=1;
      IBREP.Post;
    end;
    IBREP.Next;
    end;
  end
  else
  begin
    while not IBREP.Eof do
    begin
    if (IBREP.FieldByName('ulnaim').Value=IBREPDOM.FieldByName('ulnaim').Value) and (IBREP.FieldByName('nomdom').Value=IBREPDOM.FieldByName('nomdom').Value) and (IBREP.FieldByName('tel').Value<>null) then
    begin
      IBREP.Edit;
      IBREP.FieldByName('ch').Value:=0;
      IBREP.Post;
    end;
    IBREP.Next;
    end;

  end;

  IBREP.First;
  IBREP.RecNo:=rec;
  DSREP.Enabled:=true;

end;

procedure TForm18.OnCHPropertiesChange1(Sender: TObject);
begin
  IBREP.FieldByName('tel').Value;
  IBREP.FieldByName('ch').Value;
//

//sender.ToString;
//sender.UnitName;


cxGrid1DBTableView1.DataController.GetItemByFieldName('CH').EditValue;
//cxGrid1DBTableView1.

//cxGrid1DBTableView1CH.EditValue;

//sender.edit
//
//  if (IBREP.FieldByName('ch').Value=1) and (IBREP.FieldByName('tel').Value=null) then
//  begin
//    cxGrid1DBTableView1.DataController.Cancel;
//    ShowMessage('��� ���������� ������ ������� ���� �������!!!');
////
//  end;

  if (IBREP.FieldByName('tel').Value=null) then
  begin
    cxGrid1DBTableView1.DataController.Cancel;
    ShowMessage('��� ���������� ������ ������� ���� �������!!!');
//
  end;
//  else if (DisplayValue=1) and pos('_',VarToStr(IBREP.FieldByName('tel').Value))>0 then
//  begin
//
//    ErrorText:='��� ���������� ������ ������� ���� ������� 10 �������!!!';
//    Error:=true;
//
//  end;
end;

procedure TForm18.cxButton1Click(Sender: TObject);
begin
if not IBREP.LocateNext('SCHET',cxTextEdit4.text,[loCaseInsensitive, loPartialKey]) then
   ShowMessage('����� ���������!!!');

end;

procedure TForm18.cxButton2Click(Sender: TObject);
var
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
    SQL,sqlDom,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere:string;
    prop:TPersistent;
    ch:integer;
    chh:TcxCheckBoxProperties;
    MEM:TMemo;
begin

                ch:=0;
                IBWID.First;
                while not IBWID.eof do
                begin
                  ch:=ch+IBWIDCH.Value;
                IBWID.Next;
                end;

                if ch=0 then
                begin
                  ShowMessage('������� �������');
                  exit;
                end;

                form2.show;
                Application.ProcessMessages;

                cxCheckBox1.Checked:=false;
                DSREP.Enabled:=false;
                DSREPDOM.Enabled:=false;

                IBREPDOM.Close;
                IBREP.Close;
                SQL:=genSQL();
                IBREP.SelectSQL.Text:=SQL;
//                IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
                cxLabel9.Caption:=mon_slovoDt2(Form1.IBPERIODPERIOD.Value);
                repdt:=Form1.IBPERIODPERIOD.Value;

                IBREP.Open;
                IBREP.FetchAll;
                if IBREP.RecordCount=0 then
                   exit;

                DSREP.Enabled:=true;
//  cxButton3.Enabled:=false;




      IBREP.Filtered:=false;



      cxGrid1DBTableView1.ClearItems;

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='ch';
      acolumn.DataBinding.valuetype:='integer';
      acolumn.Width:=5;
      acolumn.PropertiesClassName:='TcxCheckBoxProperties';
      TcxCheckBoxProperties(acolumn.Properties).ValueChecked:=1;
      TcxCheckBoxProperties(acolumn.Properties).ValueUnchecked:=0;
      TcxCheckBoxProperties(acolumn.Properties).DisplayChecked:='1';
      TcxCheckBoxProperties(acolumn.Properties).DisplayUnchecked:='0';

      acolumn.Options.Editing:=true;
      acolumn.Properties.OnChange:=OnCHPropertiesChange1;
      AColumn.Summary.GroupFooterKind := skSum;

      cxGridDBTableView1.EndUpdate;


//      acolumn:=cxGrid1DBTableView1.CreateColumn;
//      cxGridDBTableView1.BeginUpdate;
//      acolumn.DataBinding.FieldName:='kontrol';
//      acolumn.DataBinding.valuetype:='string';
//      acolumn.Width:=80;
//      acolumn.Options.Editing:=false;
//      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

//      acolumn.Caption:='���������';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SCHET';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;
      AColumn.Summary.FooterKind := skCount;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='�������';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='FIO';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=150;
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='ϲ�';


      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='ULNAIM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=200;
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='������';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='NOMDOM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='�������';



      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='NOMKV';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='��������';

      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='TEL';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=100;
      acolumn.PropertiesClassName:='TcxMaskEditProperties';
      TcxMaskEditProperties(acolumn.Properties).EditMask:= '!\(999\)000-0000;0;_';
//      TcxMaskEditProperties(acolumn.Properties).DisplayFormat:= '!\(999\)000-0000;0;_';
      TcxMaskEditProperties(acolumn.Properties).AutoSelect:=true;
      cxGridDBTableView1.EndUpdate;
//      TcxMaskEditProperties(cxGrid1DBTableView1.GetColumnByFieldName('TEL').Properties).DisplayFormat:= '!\(999\)000-0000;0;_';

       acolumn.Properties.OnValidate:=OnTELPropertiesValidate;
//       cxGrid1DBTableView1.GetColumnByFieldName('tel').Properties.OnValidate;
//       cxGrid1DBTableView1.Columns['tel'].ValueItems.Validate := True;
       acolumn.Caption:='�������';



      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGrid1DBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SAL';
      acolumn.DataBinding.valuetype:='Currency';
      acolumn.Width:=80;
      acolumn.Options.Editing:=false;
      acolumn.PropertiesClass:=TcxCurrencyEditProperties;
      TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
      AColumn.Summary.FooterKind := skSum;
      cxGrid1DBTableView1.EndUpdate;
      acolumn.Caption:='����';


                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin


                              acolumn:=cxGrid1DBTableView1.CreateColumn;
                              cxGrid1DBTableView1.BeginUpdate;

                              if IBWIDWID.Value='as' then
                              begin
                                 acolumn.DataBinding.FieldName:='ass';
                              end
                              else
                              begin
                                 acolumn.DataBinding.FieldName:=IBWIDWID.Value;
                              end;

                              acolumn.DataBinding.valuetype:='Currency';
                              acolumn.Width:=70;
                              acolumn.Options.Editing:=false;
                              acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                              TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                              AColumn.Summary.FooterKind := skSum;

                              cxGrid1DBTableView1.EndUpdate;

//                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=IBWIDNAIM.Value;

                      end;

                IBWID.Next;
                end;

//---------------------------------------------------------------------------------------------------------------------

      cxGridDBTableView2.ClearItems;

      acolumn:=cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.BeginUpdate;
      acolumn.DataBinding.FieldName:='ch';
      acolumn.DataBinding.valuetype:='integer';
      acolumn.Width:=5;
      acolumn.PropertiesClassName:='TcxCheckBoxProperties';
      TcxCheckBoxProperties(acolumn.Properties).ValueChecked:=1;
      TcxCheckBoxProperties(acolumn.Properties).ValueUnchecked:=0;
      TcxCheckBoxProperties(acolumn.Properties).DisplayChecked:='1';
      TcxCheckBoxProperties(acolumn.Properties).DisplayUnchecked:='0';

      acolumn.Options.Editing:=true;
      acolumn.Properties.OnChange:=OnCHDOMPropertiesChange;
      AColumn.Summary.GroupFooterKind := skSum;

      cxGridDBTableView2.EndUpdate;

      acolumn:=cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.BeginUpdate;
      acolumn.DataBinding.FieldName:='KOL';
      acolumn.DataBinding.valuetype:='Integer';
      acolumn.Width:=80;
      acolumn.Options.Editing:=false;
      AColumn.Summary.FooterKind := skSum;
      cxGridDBTableView2.EndUpdate;


      acolumn.Caption:='�-�� ����.';


      acolumn:=cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.BeginUpdate;
      acolumn.DataBinding.FieldName:='ULNAIM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=200;
      acolumn.Options.Editing:=false;
      cxGridDBTableView2.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='������';

      acolumn:=cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.BeginUpdate;
      acolumn.DataBinding.FieldName:='NOMDOM';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Options.Editing:=false;
      cxGridDBTableView2.EndUpdate;

      //AColumn.Summary.GroupFooterKind := skSum;

      acolumn.Caption:='�������';




      acolumn:=cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.BeginUpdate;
      acolumn.DataBinding.FieldName:='SAL';
      acolumn.DataBinding.valuetype:='Currency';
      acolumn.Width:=80;
      acolumn.Options.Editing:=false;
      acolumn.PropertiesClass:=TcxCurrencyEditProperties;
      TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
      AColumn.Summary.FooterKind := skSum;
      cxGridDBTableView2.EndUpdate;


      acolumn.Caption:='����';


                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin


                              acolumn:=cxGridDBTableView2.CreateColumn;
                              cxGridDBTableView2.BeginUpdate;

                              if IBWIDWID.Value='as' then
                              begin
                                 acolumn.DataBinding.FieldName:='ass';
                              end
                              else
                              begin
                                 acolumn.DataBinding.FieldName:=IBWIDWID.Value;
                              end;

                              acolumn.DataBinding.valuetype:='Currency';
                              acolumn.Width:=70;
                              acolumn.Options.Editing:=false;
                              acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                              TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                              AColumn.Summary.FooterKind := skSum;

                              cxGridDBTableView2.EndUpdate;

//                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=IBWIDNAIM.Value;

                      end;

                IBWID.Next;
                end;

//---------------------------------------------------------------------------------------------------------------------------------------------


//            acolumn:=cxGrid1DBTableView1.CreateColumn;
//      cxGridDBTableView1.BeginUpdate;
//      acolumn.DataBinding.FieldName:='SMS';
//      acolumn.Width:=200;
//      acolumn.DataBinding.valuetype:='string';
//      acolumn.Options.Editing:=false;
//      cxGridDBTableView1.EndUpdate;
//
//     acolumn.Caption:='���';



//                sqlDom:=sqlDom+'sum(kol) kol from ('+SQL+') where trim(tel)<>'' group by ch, ulnaim, nomdom';
//                Delete(sqlDom, Length(sqlDom)-3, 3);
//                sqlDom:=sqlDom+') group by schet,ulnaim,nomdom,tel having sum(vw_obkrnow.sal)'+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase])+') group by ulnaim,nomdom';

//                sqlDom:='select vw_obkrnow.schet,vw_obkrnow.ulnaim,vw_obkrnow.nomdom, sum(vw_obkrnow.sal) sal,1 as kol from vw_obkrnow';
//                sqlDom:=sqlDom+' where vw_obkrnow.period=:dt and trim(tel)<>'' and (vw_obkrnow.wid = ''ot'') group by schet,ulnaim,nomdom,tel having sum(vw_obkrnow.sal)>=0) group by ulnaim,nomdom';

                IBREPDOM.SelectSQL.Text:=genDOMSQL(SQL);
//                IBREPDOM.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
                IBREPDOM.Open;
                DSREPDOM.Enabled:=true;

                cxButton7.Enabled:=true;


                form2.close;

    //   cxButton3.Enabled:=true;
     //  cxButton7.Enabled:=false;
//  ShowMessage('��� ���������� �� '+mon_slovoDt(Form1.IBPERIODPERIOD.Value));

end;

procedure TForm18.cxButton3Click(Sender: TObject);
var sqlfil:string;
begin
      sqlfil:='and CHAR_LENGTH(Trim(tel))>0';
//    if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
//      sqlfil:=sqlfil+' and '+cxGrid1DBTableView1.DataController.Filter.FilterText;

    sqlfil:=sqlfil+' group';


    IBREP.Close;
    IBREP.SelectSQL.Text:=StringReplace(IBREP.SelectSQL.Text,'group',sqlfil,[rfReplaceAll, rfIgnoreCase]);
    IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
    IBREP.Open;

    cxButton7.Enabled:=true;
end;

procedure TForm18.cxButton4Click(Sender: TObject);
var date:string;
begin

DateTimeToString(date,'dd mm yyyy',now);
Form1.ExportGrid(cxGrid1,'³��� ��������');
end;

procedure TForm18.cxButton7Click(Sender: TObject);
var r:integer;
    sqlfil,sql,smstext,poslnam1,poslsum1,strposl:string;
    field:tField;
    kol_pos,fl_rep:integer;
begin

            sqlfil:='and CHAR_LENGTH(Trim(tel))>0';
          if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
            sqlfil:=sqlfil+' and '+cxGrid1DBTableView1.DataController.Filter.FilterText;

          sqlfil:=sqlfil+' group';


//          IBREP.Close;
//          IBREP.SelectSQL.Text:=StringReplace(IBREP.SelectSQL.Text,'group',sqlfil,[rfReplaceAll, rfIgnoreCase]);
//          IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
//          IBREP.Open;




          IBREP.Last;
          if IBREP.RecordCount=0 then
             exit;

          Form17.IBQuery1.SQL.Text:='delete from smslist where id_smsorder=:id_ord';
          Form17.IBQuery1.ParamByName('id_ord').Value:=id_orders;
          Form17.IBQuery1.ExecSQL;
          Form1.IBTransaction1.CommitRetaining;
          Form17.IBSMSLIST.Close;
          Form17.IBSMSLIST.Open;


//              if id_orders=0 then
//              begin
//              end
//              else
//              begin
//              Form17.IBSMSORDEREDS.First;
//              Form17.IBSMSORDEREDS.Locate('id',id_orders,[]);
//              Form17.IBSMSORDEREDS.Edit;
//              Form17.IBSMSORDEREDSDATA.Value:=now();
//              Form17.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
//              Form17.IBSMSORDEREDSPERIOD.Value:=IBREP.FieldByName('period').Value;
//      //        Form17.IBSMSORDEREDSCONTROL.Value:=1;
//              Form17.IBSMSORDEREDSPOSL.Value:=posl;
//              Form17.IBSMSORDEREDS.Post;
//              IBQuery1.Close;
//              IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
//              IBQuery1.ParamByName('id').Value:=id_orders;
//              IBQuery1.ExecSQL;
//              end;
      //        Form1.IBTransaction3.CommitRetaining;
      //        Form17.IBSMSORDEREDS.Close;
      //        Form17.IBSMSORDEREDS.Open;


//                IBSMSLIST.Close;
//                IBSMSLIST.ParamByName('idord').Value:=id_orders;
//                IBSMSLIST.Open;

                Form2.Label1.Caption:='������ �������';
                Form2.cxProgressBar1.Properties.Min:=0;
                Form2.cxProgressBar1.Position:=0;
                Application.ProcessMessages;
                form2.SHOW;

                DSREP.Enabled:=false;
                DSWID.Enabled:=false;
                Form17.DSSMSLIST.Enabled:=false;

                  IBREP.First;
                  Form2.cxProgressBar1.Properties.Max:=IBREP.RecordCount-1;;
//                while (not IBREP.Eof) and (IBREP.FieldByName('ch').Value=1) do
                while (not IBREP.Eof) do
                begin
                Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;
                if IBREP.FieldByName('ch').AsInteger=0 then
                begin
                  IBREP.Next;
                  Continue;
                end;

//                 kol_pos:=0;
//                 IBWID.First;
//                 while not IBWID.eof do
//                      begin
//                         if IBREP.FindField(IBWIDWID.Value)<>nil then
//                            if IBREP.FindField(IBWIDWID.Value).Value<>0 then
//                            begin
//                             kol_pos:=kol_pos+1;
//                             poslnam1:=trim(IBWIDNAIM.Value);
//                             poslsum1:=FloatToStr(IBREP.FindField(IBWIDWID.Value).Value);
//                            end;
//                      IBWID.Next;
//                      end;
//
////                 if kol_pos=0 then
////                 begin
////                    IBREP.Next;
////                    Continue;
////                 end;
//                 if kol_pos=1 then
//                    smstext:=Form1.textsms1
//                 else
//                    smstext:=Form1.textsms2;

//                 Form17.IBSMSLIST.First;
//                 if not Form17.IBSMSLIST.Locate('schet',IBREP.FieldByName('schet').AsString,[]) then
//                     Form17.IBSMSLIST.Insert;

                 Form17.IBSMSLIST.Append;
                 Form17.IBSMSLIST.Edit;
                 Form17.IBSMSLISTID_SMSORDER.Value:=Form17.IBSMSORDEREDSID.Value;
                 Form17.IBSMSLISTSCHET.Value:=IBREP.FieldByName('schet').AsString;
                 Form17.IBSMSLISTFIO.Value:=IBREP.FieldByName('FIO').AsString;
                 Form17.IBSMSLISTULNAIM.Value:=IBREP.FieldByName('ULNAIM').AsString;
                 Form17.IBSMSLISTNOMDOM.Value:=IBREP.FieldByName('NOMDOM').AsString;
                 Form17.IBSMSLISTNOMKV.Value:=IBREP.FieldByName('NOMKV').AsString;
                 Form17.IBSMSLISTTEL.Value:='+38'+IBREP.FieldByName('TEL').AsString;
                 Form17.IBSMSLISTDOLG.Value:=IBREP.FieldByName('SAL').AsFloat;
//                 if pos('[period]', smstext)>0 then
//                    smstext:=StringReplace(smstext,'[period]',mon_slovoDt(Form1.IBPERIODPERIOD.Value),[rfReplaceAll, rfIgnoreCase]);
//                 if pos('[schet]', smstext)>0 then
//                    smstext:=StringReplace(smstext,'[schet]',trim(IBREP.FieldByName('schet').AsString),[rfReplaceAll, rfIgnoreCase]);
//                 if kol_pos=1 then
//                 begin
//                   if pos('[poslnam]', smstext)>0 then
//                      smstext:=StringReplace(smstext,'[poslnam]',poslnam1,[rfReplaceAll, rfIgnoreCase]);
//                   if pos('[poslsum]', smstext)>0 then
//                      smstext:=StringReplace(smstext,'[poslsum]',poslsum1,[rfReplaceAll, rfIgnoreCase]);
//                 end
//                 else
//                 begin
//                   if pos('[dolg]', smstext)>0 then
//                      smstext:=StringReplace(smstext,'[dolg]',FloatToStr(IBREP.FieldByName('SAL').AsFloat),[rfReplaceAll, rfIgnoreCase]);
//                   if pos('[poslnamsum]', smstext)>0 then
//                   begin
//                   strposl:='';
//                        IBWID.First;
//                        while not IBWID.eof do
//                        begin
//                           if (IBREP.FindField(IBWIDWID.Value)<>nil) and (IBREP.FindField(IBWIDWID.Value).Value<>0) then
//                              strposl:=strposl+trim(IBWIDSNAIM.Value)+':'+FloatToStr(IBREP.FindField(IBWIDWID.Value).Value)+' ';
//                        IBWID.Next;
//                        end;
//                      smstext:=StringReplace(smstext,'[poslnamsum]',strposl,[rfReplaceAll, rfIgnoreCase]);
//                   end;
//                 end;

                   strposl:='';
                        IBWID.First;
                        while not IBWID.eof do
                        begin
                           if (IBREP.FindField(IBWIDWID.Value)<>nil) then
                              strposl:=strposl+trim(IBWIDSNAIM.Value)+':'+FloatToStr(IBREP.FindField(IBWIDWID.Value).Value)+' ';
                        IBWID.Next;
                        end;


                 smstext:=Trim(strposl);

                 Form17.IBSMSLISTTEXTNOTTR.Value:=smstext;
//
//                 if Form17.IBSMSORDEREDSTRANSLIT.Value=1 then
//                 begin
//                   if Length(smstext)>70 then
//                   begin
//                      smstext:=Translit2Lat(smstext);
//                      Form17.IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1);
//                   end
//                   else
//                      Form17.IBSMSLISTKOL_SMS.Value:=1;
//                 end
//                 else
//                   Form17.IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/70))+1);

//                 Form17.IBSMSLISTTEXT.Value:=smstext;

                 Form17.IBSMSLIST.Post;
                 IBREP.Next;
                 end;
      //         Form1.IBTransaction3.CommitRetaining;






        Form1.IBTransaction1.CommitRetaining;
        Form17.IBSMSLIST.Close;
        Form17.IBSMSLIST.ParamByName('idord').Value:=Form17.IBSMSORDEREDSID.Value;
        Form17.IBSMSLIST.Open;
        Form17.IBSMSLIST.FetchAll;
        if Form17.IBSMSLIST.RecordCount<>0 then
        begin
          Form17.cxButton6.Enabled:=true;
          Form17.cxButton5.Enabled:=false;
          Form17.IBSMSORDEREDS.Edit;
          Form17.IBSMSORDEREDSPERIOD.Value:=Form1.IBPERIODPERIOD.Value;
          Form17.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
          Form17.IBSMSORDEREDS.Post;
//              Form17.cxLabel9.Caption:=mon_slovoDt(Form1.IBPERIODPERIOD.Value);
        end;

        Form18.close;
        form2.Close;
        DSREP.Enabled:=true;
        DSWID.Enabled:=true;
        Form17.DSSMSLIST.Enabled:=true;
end;

procedure TForm18.cxCheckBox1PropertiesChange(Sender: TObject);
var recrep,recrepdom:integer;
begin
if not IBREP.Active then
begin
  cxCheckBox1.checked:=false;
  exit;
end;


                Form2.Label1.Caption:='³����� ������';
                Form2.cxProgressBar1.Properties.Min:=0;
                Form2.cxProgressBar1.Properties.Max:=0;
                Form2.cxProgressBar1.Position:=0;
                Application.ProcessMessages;
                form2.SHOW;
                recrep:=IBREP.RecNo;
                recrepdom:=IBREPDOM.RecNo;
                DSREP.Enabled:=false;
                DSREPDOM.Enabled:=false;


     if cxCheckBox1.Checked then
     begin
                IBREP.First;
                Form2.cxProgressBar1.Properties.Max:=IBREP.RecordCount-1;
                while not IBREP.eof do
                begin
                Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;
                  if (not IBREP.FieldByName('tel').IsNull) then
                  begin
                    if Length(Trim(IBREP.FieldByName('tel').Value))<>0 then
                    begin
                    IBREP.Edit;
                    IBREP.FieldByName('ch').Value:=1;
                    IBREP.Post;
                    end;
                  end;
                IBREP.Next;
                end;
                IBREP.First;
     end
     else
     begin
                IBREP.First;
                Form2.cxProgressBar1.Properties.Max:=IBREP.RecordCount-1;
                while not IBREP.eof do
                begin
                Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;
                  IBREP.Edit;
                  IBREP.FieldByName('ch').Value:=0;
                  IBREP.Post;

                IBREP.Next;
                end;
                IBREP.First;

     end;



     if cxCheckBox1.Checked then
     begin
                IBREPDOM.First;
                Form2.cxProgressBar1.Properties.Max:=IBREPDOM.RecordCount-1;
                while not IBREPDOM.eof do
                begin
                Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;
                    IBREPDOM.Edit;
                    IBREPDOM.FieldByName('ch').Value:=1;
                    IBREPDOM.Post;
                IBREPDOM.Next;
                end;
     end
     else
     begin
                IBREPDOM.First;
                Form2.cxProgressBar1.Properties.Max:=IBREPDOM.RecordCount-1;
                while not IBREPDOM.eof do
                begin
                Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;
                    IBREPDOM.Edit;
                    IBREPDOM.FieldByName('ch').Value:=0;
                    IBREPDOM.Post;
                IBREPDOM.Next;
                end;

     end;

     IBREP.RecNo:=recrep;
     IBREPDOM.RecNo:=recrepdom;
     DSREPDOM.Enabled:=true;
     DSREP.Enabled:=true;
     form2.Close;
end;

procedure TForm18.cxCheckBox3PropertiesChange(Sender: TObject);
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

procedure TForm18.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
ARec: TRect;
val: string;
n:Int64;
begin
//ARec := AViewInfo.Bounds;
//val := length(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index])<10;
//or (str2int(IBREP.FieldByName('tel').AsString)=0)
//or (IBREP.FieldByName('tel').AsString[1]<>'0')
//if length(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index])<10  then
//ACanvas.Canvas.Brush.Color := $B9B9FF;
//IBREP.FieldByName('tel').AsString;
//if str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index])=0  then
//ACanvas.Canvas.Brush.Color := $F9B9FF;
//if length(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index])<10  then
//ACanvas.Canvas.Brush.Color := $B9B9FF
//else
//ACanvas.Canvas.Brush.Color := $ffffff;
//
//if AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index][1]<>'0'  then
//ACanvas.Canvas.Brush.Color := $B9B9FF
//else
//ACanvas.Canvas.Brush.Color := $ffffff;
//




//if TryStrToInt64(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index],n) then
//ACanvas.Canvas.Brush.Color := $ffffff00
//else
//ACanvas.Canvas.Brush.Color := $B9B9FF;



// if TryStrToInt(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('tel').index],n)  then
//ACanvas.Canvas.Brush.Color := $F9B9FF
//else
//ACanvas.Canvas.Brush.Color := $ffffff;



//if IBREP.FieldByName('tel').AsString[1]<>'0' then
//ACanvas.Canvas.Brush.Color := $C9B9F0;
//if str2int(IBREP.FieldByName('tel').AsString)=0 then
//ACanvas.Canvas.Brush.Color := $F9B9F0;


//ACanvas.Canvas.FillRect(ARec);
end;

procedure TForm18.cxGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var editstr:string;
begin
if cxGrid1DBTableView1.Items[AItem.ID].DataBinding.FilterFieldName='TEL' then
begin
  editstr:=trim(TcxTextEdit(Sender.Controller.EditingController.Edit).Text);
  Form1.IBABONINF.First;
  if Form1.IBABONINF.Locate('schet',cxGrid1DBTableView1.GetColumnByFieldName('schet').EditValue,[]) then
    begin
      Form1.IBABONINF.Edit;
      Form1.IBABONINFTEL.Value:=editstr;
      Form1.IBABONINF.Post;
//      Form1.IBTransaction1.CommitRetaining;
    end;
end;
if cxGrid1DBTableView1.Items[AItem.ID].DataBinding.FilterFieldName='CH' then
begin
  //ShowMessage(VarToStr(sender.DataController.Values[sender.DataController.EditingRecordIndex, AItem.Index]));
end;

end;

procedure TForm18.FormShow(Sender: TObject);
begin
IBWID.Open;
//IBREP.Open;
//IBREP.FetchAll;
cxCheckBox3.Checked:=false;
cxCheckBox1.Checked:=false;
//if IBREP.RecordCount=0 then
//begin
//  cxButton3.Enabled:=false;
//  cxButton7.Enabled:=false;
//end;
end;

end.
