unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalc, cxTextEdit,
  cxMaskEdit, cxLabel, Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls,
  IBX.IBCustomDataSet,cxCurrencyEdit, IBX.IBQuery, cxDBEdit;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton1: TcxButton;
    cxCalcEdit2: TcxCalcEdit;
    cxLabel4: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxCheckBox3: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton5: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
    IBREP: TIBDataSet;
    DSREP: TDataSource;
    IBSEND: TIBDataSet;
    DSSEND: TDataSource;
    IBSMSLIST: TIBDataSet;
    DSSMSLIST: TDataSource;
    IBSMSLISTID: TIntegerField;
    IBSMSLISTID_SMSORDER: TIntegerField;
    IBSMSLISTSCHET: TIBStringField;
    IBSMSLISTULNAIM: TIBStringField;
    IBSMSLISTNOMDOM: TIBStringField;
    IBSMSLISTNOMKV: TIBStringField;
    IBSMSLISTALPHANAME: TIBStringField;
    IBSMSLISTWAPPUSH: TIBStringField;
    IBSMSLISTDOLG: TFloatField;
    cxButton6: TcxButton;
    cxLabel2: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2SCHET: TcxGridDBColumn;
    cxGridDBTableView2FIO: TcxGridDBColumn;
    cxGridDBTableView2ULNAIM: TcxGridDBColumn;
    cxGridDBTableView2NOMDOM: TcxGridDBColumn;
    cxGridDBTableView2NOMKV: TcxGridDBColumn;
    cxGridDBTableView2TEL: TcxGridDBColumn;
    cxGridDBTableView2TEXT: TcxGridDBColumn;
    cxGridDBTableView2DOLG: TcxGridDBColumn;
    cxGridDBTableView2STATUS: TcxGridDBColumn;
    IBSMSLISTSTATUS: TIBStringField;
    IBSMSLISTTEXT: TIBStringField;
    IBSMSLISTKOL_SMS: TIntegerField;
    cxGridDBTableView2KOL_SMS: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    IBSMSLISTTEL: TIBStringField;
    IBSMSLISTMESSAGEID: TIBStringField;
    cxButton8: TcxButton;
    IBQuery1: TIBQuery;
    IBWIDSNAIM: TIBStringField;
    IBSMSLISTFIO: TIBStringField;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxButton7: TcxButton;
    cxLabel12: TcxLabel;
    cxLabel14: TcxLabel;
    IBSMSLISTTEXTNOTTR: TIBStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxCheckBox3PropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
          procedure cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
      procedure visible;
    procedure cxButton8Click(Sender: TObject);
    function genSQL():string;
    procedure cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxButton7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    fl_new:Boolean;
    id_orders:integer;
        procedure OnTELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);



  end;

var
  Form17: TForm17;
  repdt:variant;
  fl_rep:Boolean;
  posl:string;




implementation

{$R *.dfm}

uses Unit16, Unit1, mytools, Unit2, wsdl;


{$R *.dfm}

procedure TForm17.OnTELPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (VarToStr(DisplayValue)[2]<>'0') and (VarToStr(DisplayValue)<>'(___)___-____') then
  begin

    ErrorText:='Телефон має починатися з 0  - напр.(066)';
    Error:=true;

  end;
  if VarToStr(DisplayValue)='(___)___-____' then
  begin
    Error:=false;
  end
  else
      if pos('_',VarToStr(DisplayValue))>0 then
      begin

        ErrorText:='Телефон має бути 10 символів';
        Error:=true;

      end;
end;

procedure TForm17.cxButton1Click(Sender: TObject);
begin
if cxGrid1.Visible then
begin
   IBREP.First;
   IBREP.LocateNext('schet',cxTextEdit4.Text,[]);
end;
if cxGrid3.Visible then
begin
   IBSMSLIST.First;
   IBSMSLIST.LocateNext('schet',cxTextEdit4.Text,[]);
end;

end;

procedure TForm17.cxButton2Click(Sender: TObject);
var
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
    SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere:string;
    prop:TPersistent;
    ch:integer;
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
                  ShowMessage('Виберіть послугу');
                  exit;
                end;


                IBREP.Close;
                IBREP.SelectSQL.Text:=genSQL();
                IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
                repdt:=Form1.IBPERIODPERIOD.Value;

                IBREP.Open;
                IBREP.FetchAll;
                if IBREP.RecordCount=0 then
                   exit;

                cxButton7.Enabled:=true;
                cxButton5.Enabled:=false;


  cxGrid1.Align:=alClient;
  cxGrid3.Align:=alNone;
  cxGrid3.Visible:=false;
  cxGrid1.Visible:=true;
  cxButton6.Enabled:=true;



      if id_orders<>0 then
      begin
        IBQuery1.Close;
        IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
        IBQuery1.ParamByName('id').Value:=id_orders;
        IBQuery1.ExecSQL;
      end;


      IBREP.Filtered:=false;

      form2.show;
      Application.ProcessMessages;

      cxGrid1DBTableView1.ClearItems;

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

      acolumn.Caption:='ПІП';


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
       acolumn.Caption:='Телефон';



      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGrid1DBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SAL';
      acolumn.DataBinding.valuetype:='Currency';
      acolumn.Width:=80;
      acolumn.Options.Editing:=false;
      acolumn.PropertiesClass:=TcxCurrencyEditProperties;
       AColumn.Summary.FooterKind := skSum;
      TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
      cxGrid1DBTableView1.EndUpdate;


                        acolumn.Caption:='Борг';


                IBWID.First;
                while not IBWID.eof do
                begin
                      if IBWIDCH.Value=1 then
                      begin


                              acolumn:=cxGrid1DBTableView1.CreateColumn;
                              cxGrid1DBTableView1.BeginUpdate;
                              acolumn.DataBinding.FieldName:=IBWIDWID.Value;
                              acolumn.DataBinding.valuetype:='Currency';
                              acolumn.Width:=70;
                              acolumn.Options.Editing:=false;
                              acolumn.PropertiesClass:=TcxCurrencyEditProperties;
                              TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
                              cxGrid1DBTableView1.EndUpdate;

                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=IBWIDNAIM.Value;

                      end;

                IBWID.Next;
                end;

            acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='SMS';
      acolumn.Width:=200;
      acolumn.DataBinding.valuetype:='string';
      acolumn.Options.Editing:=false;
      cxGridDBTableView1.EndUpdate;

     acolumn.Caption:='СМС';



                form2.close;
ShowMessage('Звіт зформовано за '+mon_slovoDt(Form1.IBPERIODPERIOD.Value));

end;

function TForm17.genSQL():string;
var SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere,whereposl:string;
begin

      SQL:='select period,kontrol,schet,fio,ulnaim,nomdom,nomkv,tel,';
      SQL:=SQL+'cast('''+''+''' as varchar(300)) SMS,';

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
                      posl:=posl+IBWIDWID.Value+',';
                      strSUM:=strSUM+'COALESCE(max('+IBWIDWID.Value+'),0)+';
                      strMAXFIELD:=strMAXFIELD+'COALESCE(max('+IBWIDWID.Value+'),0) '+IBWIDWID.Value+',';
                      strFIELD:=strFIELD+'case wid when '''+IBWIDWID.Value+''' then dolg else null end as '+IBWIDWID.Value+',';
                      whereposl:=whereposl+IBWIDWID.Value+cxComboBox2.EditValue+'0 or ';
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
                SQL:=SQL+strSAL+strMAXFIELD+' from(select vw_obkr.period,vw_obkr.kontrol,vw_obkr.schet,vw_obkr.fio,vw_obkr.ulnaim,vw_obkr.nomdom,vw_obkr.nomkv,aboninf.tel,'+strFIELD;
                SQL:=SQL+' from vw_obkr join aboninf on (aboninf.schet=vw_obkr.schet) where vw_obkr.period=:dt)';
//                if cxCheckBox1.Checked then
//                   SQL:=SQL+strWhere;
                SQL:=SQL+strWhere;
                SQL:=SQL+' group by period,schet,fio,ulnaim,nomdom,nomkv,kontrol,tel';
//                if cxCheckBox2.Checked then
                   SQL:=SQL+' having '+strSUM+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase]);
//                else
//                   SQL:=SQL+' having '+strSUM+' <> 0';
//                ss:=#39+IBWIDWID.Value+#39;

     result:=SQL;

end;



procedure TForm17.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid3,Form17.Caption);
end;

procedure TForm17.cxButton5Click(Sender: TObject);
var ws: ServiceSoap;
   send:wsdl.ArrayOfString;

begin

  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
    ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
    with ws do
    begin
       IBSMSLIST.First;
        while not IBSMSLIST.Eof do
       begin
       send:=ws.SendSMS('Msg',IBSMSLISTTEL.AsString,IBSMSLISTTEXT.AsString,'');
       IBSMSLIST.Edit;
       IBSMSLISTMESSAGEID.Value:=send[1];
       IBSMSLISTSTATUS.Value:=send[0];
       IBSMSLIST.Post;
       IBSMSLIST.Next;
       end;

//       Form1.IBTransaction3.CommitRetaining;
       IBSMSLIST.Close;
       IBSMSLIST.Open;

      cxLabel2.Caption:=ws.GetCreditBalance;
    end;

    Form1.IBSMSORDEREDS.Edit;
    Form1.IBSMSORDEREDSSEND.Value:=1;
    Form1.IBSMSORDEREDSDATA.Value:=now();
    Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    Form1.IBSMSORDEREDS.Edit;
    cxButton5.Enabled:=false;
    ShowMessage('Відправка СМС виконана!!!');


    except
     cxLabel3.Caption:='Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)';

  end;

end;

procedure TForm17.cxButton6Click(Sender: TObject);
var r:integer;
    sqlfil,sql,smstext,poslnam1,poslsum1,strposl:string;
    field:tField;
    kol_pos,fl_rep:integer;

begin


     fl_rep:=0;

     if id_orders=0 then
        fl_rep:=1
     else
     begin
         IBSMSLIST.Close;
         IBSMSLIST.ParamByName('idord').Value:=id_orders;
         IBSMSLIST.Open;
         IBSMSLIST.FetchAll;
         if IBSMSLIST.RecordCount=0 then
            fl_rep:=1;
     end;



     if fl_rep=0 then
     Begin
       IBSMSLIST.First;
       while not IBSMSLIST.Eof do
       begin
                   IBSMSLIST.Edit;
                   smstext:=IBSMSLISTTEXTNOTTR.Value;
                   if Form1.IBSMSORDEREDSTRANSLIT.Value=1 then
                   begin
                     if Length(smstext)>70 then
                     begin
                        smstext:=Translit2Lat(smstext);
                        IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1);
                     end
                     else
                        IBSMSLISTKOL_SMS.Value:=1;
                   end
                   else
                   begin


                     IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/70))+1);
                   end;

                   IBSMSLISTTEXT.Value:=smstext;
                   IBSMSLIST.Post;

       IBSMSLIST.Next;
       end;


     End
     else
     begin

            sqlfil:='and CHAR_LENGTH(Trim(tel))>0';
          if cxGrid1DBTableView1.DataController.Filter.FilterText<>'' then
            sqlfil:=sqlfil+' and '+cxGrid1DBTableView1.DataController.Filter.FilterText;

          sqlfil:=sqlfil+' group';


          IBREP.Close;
          IBREP.SelectSQL.Text:=StringReplace(IBREP.SelectSQL.Text,'group',sqlfil,[rfReplaceAll, rfIgnoreCase]);
          IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
          IBREP.Open;




          IBREP.Last;
          if IBREP.RecordCount=0 then
             exit;



              if id_orders=0 then
              begin
              Form1.IBSMSORDEREDS.Insert;
              Form1.IBSMSORDEREDS.Edit;
              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
              Form1.IBSMSORDEREDSPERIOD.Value:=IBREP.FieldByName('period').Value;
              Form1.IBSMSORDEREDSCONTROL.Value:=1;
              Form1.IBSMSORDEREDSPOSL.Value:=posl;
              if Form1.translit='1' then
                 Form1.IBSMSORDEREDSTRANSLIT.Value:=1;
              Form1.IBSMSORDEREDS.Post;
              Form1.IBSMSORDEREDS.Close;
              Form1.IBSMSORDEREDS.Open;
      //        Form1.IBTransaction3.CommitRetaining;
      //        Form1.IBSMSORDEREDS.FetchAll;
              id_orders:=Form1.IBSMSORDEREDSID.Value;
              end
              else
              begin
              Form1.IBSMSORDEREDS.First;
              Form1.IBSMSORDEREDS.Locate('id',id_orders,[]);
              Form1.IBSMSORDEREDS.Edit;
              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
              Form1.IBSMSORDEREDSPERIOD.Value:=IBREP.FieldByName('period').Value;
      //        Form1.IBSMSORDEREDSCONTROL.Value:=1;
              Form1.IBSMSORDEREDSPOSL.Value:=posl;
              Form1.IBSMSORDEREDS.Post;
              IBQuery1.Close;
              IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
              IBQuery1.ParamByName('id').Value:=id_orders;
              IBQuery1.ExecSQL;
              end;
      //        Form1.IBTransaction3.CommitRetaining;
      //        Form1.IBSMSORDEREDS.Close;
      //        Form1.IBSMSORDEREDS.Open;


              IBSMSLIST.open;


                  IBREP.First;
                  while not IBREP.Eof do
                 begin
                 kol_pos:=0;
                 IBWID.First;
                 while not IBWID.eof do
                      begin
                         if IBREP.FindField(IBWIDWID.Value)<>nil then
                            if IBREP.FindField(IBWIDWID.Value).Value<>0 then
                            begin
                             kol_pos:=kol_pos+1;
                             poslnam1:=trim(IBWIDNAIM.Value);
                             poslsum1:=FloatToStr(IBREP.FindField(IBWIDWID.Value).Value);
                            end;
                      IBWID.Next;
                      end;

                 if kol_pos=0 then
                    IBREP.Next;
                 if kol_pos=1 then
                    smstext:=Form1.textsms1
                 else
                    smstext:=Form1.textsms2;

                 IBSMSLIST.Insert;
                 IBSMSLIST.Edit;
                 IBSMSLISTID_SMSORDER.Value:=Form1.IBSMSORDEREDSID.Value;
                 IBSMSLISTSCHET.Value:=IBREP.FieldByName('schet').AsString;
                 IBSMSLISTFIO.Value:=IBREP.FieldByName('FIO').AsString;
                 IBSMSLISTULNAIM.Value:=IBREP.FieldByName('ULNAIM').AsString;
                 IBSMSLISTNOMDOM.Value:=IBREP.FieldByName('NOMDOM').AsString;
                 IBSMSLISTNOMKV.Value:=IBREP.FieldByName('NOMKV').AsString;
                 IBSMSLISTTEL.Value:='+38'+IBREP.FieldByName('TEL').AsString;
                 IBSMSLISTDOLG.Value:=IBREP.FieldByName('SAL').AsFloat;
                 if pos('[period]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[period]',mon_slovoDt(Form1.IBPERIODPERIOD.Value),[rfReplaceAll, rfIgnoreCase]);
                 if pos('[schet]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[schet]',trim(IBREP.FieldByName('schet').AsString),[rfReplaceAll, rfIgnoreCase]);
                 if kol_pos=1 then
                 begin
                   if pos('[poslnam]', smstext)>0 then
                      smstext:=StringReplace(smstext,'[poslnam]',poslnam1,[rfReplaceAll, rfIgnoreCase]);
                   if pos('[poslsum]', smstext)>0 then
                      smstext:=StringReplace(smstext,'[poslsum]',poslsum1,[rfReplaceAll, rfIgnoreCase]);
                 end
                 else
                 begin
                   if pos('[dolg]', smstext)>0 then
                      smstext:=StringReplace(smstext,'[dolg]',FloatToStr(IBREP.FieldByName('SAL').AsFloat),[rfReplaceAll, rfIgnoreCase]);
                   if pos('[poslnamsum]', smstext)>0 then
                   begin
                   strposl:='';
                        IBWID.First;
                        while not IBWID.eof do
                        begin
                           if (IBREP.FindField(IBWIDWID.Value)<>nil) and (IBREP.FindField(IBWIDWID.Value).Value<>0) then
                              strposl:=strposl+IBWIDSNAIM.Value+':'+FloatToStr(IBREP.FindField(IBWIDWID.Value).Value)+' ';
                        IBWID.Next;
                        end;
                      smstext:=StringReplace(smstext,'[poslnamsum]',strposl,[rfReplaceAll, rfIgnoreCase]);
                   end;
                 end;

                 smstext:=Trim(smstext);

                 IBSMSLISTTEXTNOTTR.Value:=smstext;

                 if Form1.IBSMSORDEREDSTRANSLIT.Value=1 then
                 begin
                   if Length(smstext)>70 then
                   begin
                      smstext:=Translit2Lat(smstext);
                      IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1);
                   end
                   else
                      IBSMSLISTKOL_SMS.Value:=1;
                 end
                 else
                   IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/70))+1);

                 IBSMSLISTTEXT.Value:=smstext;

                 IBSMSLIST.Post;
                 IBREP.Next;
                 end;
      //         Form1.IBTransaction3.CommitRetaining;

               visible;
     end;

        ShowMessage('Перевірка пройдена - дозволена відправка');




end;

procedure TForm17.cxButton7Click(Sender: TObject);
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

end;

procedure TForm17.cxButton8Click(Sender: TObject);
begin
if cxGrid1.Visible then
   IBREP.Delete;
if cxGrid3.Visible then
    IBSMSLIST.Delete

end;

procedure TForm17.cxCheckBox3PropertiesChange(Sender: TObject);
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

procedure TForm17.cxGrid1DBTableView1CustomDrawCell(
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
IBREP.FieldByName('tel').AsString;
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

procedure TForm17.cxGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var editstr:string;
begin
//  Sender.CancelUpdate;
//  Sender.Controller.EditingController.Edit.Value;

//cxGrid1DBTableView1.Items[AItem.ID].EditValue;
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
//  AItem.
end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin

IBREP.Close;
 if IBSMSLIST.State in [dsInsert,dsEdit] then IBSMSLIST.Post;
IBSMSLIST.Close;



end;

procedure TForm17.visible;
var strposl:string;
begin

  cxGrid3.Visible:=true;
  cxGrid1.Visible:=false;
  cxGrid1.Align:=alNone;
  cxGrid3.Align:=alClient;

cxButton7.Enabled:=false;
cxButton4.Enabled:=false;
cxButton6.Enabled:=false;


if id_orders<>0 then
begin
   strposl:=Form1.IBSMSORDEREDS.Lookup('id',id_orders,'posl');

                IBWID.First;
                while not IBWID.eof do
                begin
                  if pos(IBWIDWID.Value,strposl)>0 then
                  begin

                  IBWID.Edit;
                  IBWIDCH.Value:=1;
                  IBWID.Post;
                  end;

                IBWID.Next;
                end;
                IBWID.First;

  if var2int(Form1.IBSMSORDEREDS.Lookup('id',id_orders,'send'))=1 then
  begin
     cxButton5.Enabled:=false;
     cxButton8.Enabled:=false;
     cxGrid2.Enabled:=false;
  cxCheckBox3.Enabled:=false;
  cxButton2.Enabled:=false;

  cxButton4.Enabled:=true;
  cxCalcEdit2.Enabled:=false;

  end
  else
  begin
     cxButton5.Enabled:=true;
     cxButton8.Enabled:=true;
     cxGrid2.Enabled:=true;
     cxCheckBox3.Enabled:=true;
     cxButton2.Enabled:=true;
     cxButton6.Enabled:=true;
     cxCalcEdit2.Enabled:=true;
  end;

  Form17.IBSMSLIST.Close;
  Form17.IBSMSLIST.ParamByName('idord').Value:=id_orders;
  Form17.IBSMSLIST.Open;
  cxLabel9.Caption:=mon_slovoDt(Form1.IBSMSORDEREDSPERIOD.Value);

  Caption:='Пачка №'+int2str(id_orders)+' від '+DateTimeToStr(Form1.IBSMSORDEREDSDATA.Value);

end
else
begin

  cxCheckBox3.Enabled:=true;
  cxButton2.Enabled:=true;
  cxButton5.Enabled:=false;
  cxButton4.Enabled:=false;
  cxCalcEdit2.Enabled:=true;
  IBWID.Close;
  IBWID.Open;
  cxLabel9.Caption:=mon_slovoDt(Form1.IBPERIODPERIOD.Value);

end;

if cxGrid3.visible then
   cxButton3.Enabled:=true
else
   cxButton3.Enabled:=false;


end;



procedure TForm17.FormShow(Sender: TObject);
begin
visible;
end;

procedure TForm17.IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
//Accept:=(Pos(cxTextEdit4.Text, DataSet.FieldByName('tel').AsString) > 0);
Accept:=Length(DataSet.FieldByName('tel').AsString) > 0;
//Accept:=(Pos(cxTextEdit3.Text, DataSet.FieldByName('FIO').AsString) > 0) and (Pos(cxTextEdit4.Text, DataSet.FieldByName('schet').AsString) > 0)



end;


procedure TForm17.cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var editstr:string;
begin

//   editstr:=TcxTextEdit(Sender.ToString).Text;
  if (VarToStr(DisplayValue)[2]<>'0') and (VarToStr(DisplayValue)<>'(___)___-____') then
  begin
//    ShowMessage('Телефон має починатися з 0  - напр.(066)');
    ErrorText:='Телефон має починатися з 0  - напр.(066)';
    Error:=true;
//    cxGrid1DBTableView1.DataController.Cancel;
  end;
  if VarToStr(DisplayValue)='(___)___-____' then
  begin
    Error:=false;
  end
  else
      if pos('_',VarToStr(DisplayValue))>0 then
      begin
    //    ShowMessage('Телефон має починатися з 0  - напр.(066)');
        ErrorText:='Телефон має бути 10 символів';
        Error:=true;
    //    Error:=false;
      end;


end;

procedure TForm17.cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
cxLabel2.Caption:=AText;
end;

end.
