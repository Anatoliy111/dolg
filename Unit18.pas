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
  Vcl.ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxCurrencyEdit,cxGrid;

type
  TForm18 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    cxButton3: TcxButton;
    cxLabel14: TcxLabel;
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
  private
      function genSQL():string;
    { Private declarations }
  public
      id_orders:integer;
    { Public declarations }
        procedure OnTELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses mytools, Unit17, Unit1, Unit2;

function TForm18.genSQL():string;
var SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere,whereposl:string;
begin

      SQL:='select 0 as ch,period,kontrol,schet,fio,ulnaim,nomdom,nomkv,tel,';
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
                SQL:=SQL+' group by ch,period,schet,fio,ulnaim,nomdom,nomkv,kontrol,tel';
//                if cxCheckBox2.Checked then
                   SQL:=SQL+' having '+strSUM+' '+cxComboBox2.EditValue+StringReplace(FloatToStr(cxCalcEdit2.EditValue),',','.',[rfReplaceAll, rfIgnoreCase]);
//                else
//                   SQL:=SQL+' having '+strSUM+' <> 0';
//                ss:=#39+IBWIDWID.Value+#39;

     result:=SQL;

end;

procedure TForm18.OnTELPropertiesValidate(Sender: TObject;
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

procedure TForm18.cxButton2Click(Sender: TObject);
var
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
    SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere:string;
    prop:TPersistent;
    ch:integer;
    chh:TcxCheckBoxProperties;
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
                cxLabel9.Caption:=mon_slovoDt(Form1.IBPERIODPERIOD.Value);
                repdt:=Form1.IBPERIODPERIOD.Value;

                IBREP.Open;
                IBREP.FetchAll;
                if IBREP.RecordCount=0 then
                   exit;

                cxButton7.Enabled:=true;





  cxButton3.Enabled:=false;




      IBREP.Filtered:=false;

      form2.show;
      Application.ProcessMessages;

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
      cxGridDBTableView1.EndUpdate;


      acolumn:=cxGrid1DBTableView1.CreateColumn;
      cxGridDBTableView1.BeginUpdate;
      acolumn.DataBinding.FieldName:='kontrol';
      acolumn.DataBinding.valuetype:='string';
      acolumn.Width:=80;
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
      acolumn.Width:=150;
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
      TcxCurrencyEditProperties(acolumn.Properties).DisplayFormat:= ',0.00;-,0.00';
      AColumn.Summary.FooterKind := skSum;
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
                              AColumn.Summary.FooterKind := skSum;

                              cxGrid1DBTableView1.EndUpdate;

//                              AColumn.Summary.GroupFooterKind := skSum;

                              acolumn.Caption:=IBWIDNAIM.Value;

                      end;

                IBWID.Next;
                end;

//            acolumn:=cxGrid1DBTableView1.CreateColumn;
//      cxGridDBTableView1.BeginUpdate;
//      acolumn.DataBinding.FieldName:='SMS';
//      acolumn.Width:=200;
//      acolumn.DataBinding.valuetype:='string';
//      acolumn.Options.Editing:=false;
//      cxGridDBTableView1.EndUpdate;
//
//     acolumn.Caption:='СМС';



                form2.close;

       cxButton3.Enabled:=true;
       cxButton7.Enabled:=false;
//  ShowMessage('Звіт зформовано за '+mon_slovoDt(Form1.IBPERIODPERIOD.Value));

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


          IBREP.Close;
          IBREP.SelectSQL.Text:=StringReplace(IBREP.SelectSQL.Text,'group',sqlfil,[rfReplaceAll, rfIgnoreCase]);
          IBREP.ParamByName('dt').Value:=Form1.IBPERIODPERIOD.Value;
          IBREP.Open;




          IBREP.Last;
          if IBREP.RecordCount=0 then
             exit;



//              if id_orders=0 then
//              begin
//              end
//              else
//              begin
//              Form1.IBSMSORDEREDS.First;
//              Form1.IBSMSORDEREDS.Locate('id',id_orders,[]);
//              Form1.IBSMSORDEREDS.Edit;
//              Form1.IBSMSORDEREDSDATA.Value:=now();
//              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
//              Form1.IBSMSORDEREDSPERIOD.Value:=IBREP.FieldByName('period').Value;
//      //        Form1.IBSMSORDEREDSCONTROL.Value:=1;
//              Form1.IBSMSORDEREDSPOSL.Value:=posl;
//              Form1.IBSMSORDEREDS.Post;
//              IBQuery1.Close;
//              IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
//              IBQuery1.ParamByName('id').Value:=id_orders;
//              IBQuery1.ExecSQL;
//              end;
      //        Form1.IBTransaction3.CommitRetaining;
      //        Form1.IBSMSORDEREDS.Close;
      //        Form1.IBSMSORDEREDS.Open;


              Form1.IBSMSLIST.open;


                  IBREP.First;
//                while (not IBREP.Eof) and (IBREP.FieldByName('ch').Value=1) do
                while (not IBREP.Eof) do

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

                 Form1.IBSMSLIST.First;
                 if not Form1.IBSMSLIST.Locate('schet',IBREP.FieldByName('schet').AsString,[]) then
                     Form1.IBSMSLIST.Insert;

                 Form1.IBSMSLIST.Edit;
                 Form1.IBSMSLISTID_SMSORDER.Value:=Form1.IBSMSORDEREDSID.Value;
                 Form1.IBSMSLISTSCHET.Value:=IBREP.FieldByName('schet').AsString;
                 Form1.IBSMSLISTFIO.Value:=IBREP.FieldByName('FIO').AsString;
                 Form1.IBSMSLISTULNAIM.Value:=IBREP.FieldByName('ULNAIM').AsString;
                 Form1.IBSMSLISTNOMDOM.Value:=IBREP.FieldByName('NOMDOM').AsString;
                 Form1.IBSMSLISTNOMKV.Value:=IBREP.FieldByName('NOMKV').AsString;
                 Form1.IBSMSLISTTEL.Value:='+38'+IBREP.FieldByName('TEL').AsString;
                 Form1.IBSMSLISTDOLG.Value:=IBREP.FieldByName('SAL').AsFloat;
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

                 Form1.IBSMSLISTTEXTNOTTR.Value:=smstext;
//
//                 if Form1.IBSMSORDEREDSTRANSLIT.Value=1 then
//                 begin
//                   if Length(smstext)>70 then
//                   begin
//                      smstext:=Translit2Lat(smstext);
//                      Form1.IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1);
//                   end
//                   else
//                      Form1.IBSMSLISTKOL_SMS.Value:=1;
//                 end
//                 else
//                   Form1.IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/70))+1);

//                 Form1.IBSMSLISTTEXT.Value:=smstext;

                 Form1.IBSMSLIST.Post;
                 IBREP.Next;
                 end;
      //         Form1.IBTransaction3.CommitRetaining;




              Form1.IBSMSORDEREDS.First;
              Form1.IBSMSORDEREDS.Locate('id',id_orders,[]);
              Form1.IBSMSORDEREDS.Edit;
              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
              Form1.IBSMSORDEREDS.Post;

        Form1.IBTransaction1.CommitRetaining;
        Form17.IBSMSLIST.Close;

        Form17.IBSMSLIST.Open;
        if Form17.IBSMSLIST.RecordCount=0 then
        begin
          Form17.cxButton6.Enabled:=true;
          Form17.cxButton5.Enabled:=false;
        end;

        Form18.close;

end;

procedure TForm18.cxCheckBox1PropertiesChange(Sender: TObject);
begin
     if cxCheckBox1.Checked then
     begin
                IBREP.First;
                while not IBREP.eof do
                begin
                  IBREP.Edit;
                  IBREP.FieldByName('ch').Value:=1;
                  IBREP.Post;

                IBREP.Next;
                end;
                IBREP.First;
     end
     else
     begin
                IBREP.First;
                while not IBREP.eof do
                begin
                  IBREP.Edit;
                  IBREP.FieldByName('ch').Value:=0;
                  IBREP.Post;

                IBREP.Next;
                end;
                IBREP.First;

     end;
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
end;

procedure TForm18.FormShow(Sender: TObject);
begin
IBWID.Open;
IBREP.FetchAll;
if IBREP.RecordCount=0 then
begin
  cxButton3.Enabled:=false;
  cxButton7.Enabled:=false;
end;
end;

end.
