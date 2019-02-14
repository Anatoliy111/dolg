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
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel4: TcxLabel;
    cxLabel9: TcxLabel;
    cxButton5: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
    IBSEND: TIBDataSet;
    DSSEND: TDataSource;
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
    cxGridDBTableView2KOL_SMS: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxButton8: TcxButton;
    IBQuery1: TIBQuery;
    IBWIDSNAIM: TIBStringField;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel5: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxButton9: TcxButton;
    IBSMSLIST: TIBDataSet;
    IBSMSLISTID: TIntegerField;
    IBSMSLISTID_SMSORDER: TIntegerField;
    IBSMSLISTSCHET: TIBStringField;
    IBSMSLISTULNAIM: TIBStringField;
    IBSMSLISTNOMDOM: TIBStringField;
    IBSMSLISTNOMKV: TIBStringField;
    IBSMSLISTALPHANAME: TIBStringField;
    IBSMSLISTWAPPUSH: TIBStringField;
    IBSMSLISTDOLG: TFloatField;
    IBSMSLISTSTATUS: TIBStringField;
    IBSMSLISTTEXT: TIBStringField;
    IBSMSLISTKOL_SMS: TIntegerField;
    IBSMSLISTTEL: TIBStringField;
    IBSMSLISTMESSAGEID: TIBStringField;
    IBSMSLISTFIO: TIBStringField;
    IBSMSLISTTEXTNOTTR: TIBStringField;
    DSSMSLIST: TDataSource;
    IBSMSLISTKOL_ABON: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure IBREPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
          procedure cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
      procedure visible;
    procedure cxButton8Click(Sender: TObject);

    procedure cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    fl_new:Boolean;
    id_orders:integer;




  end;

var
  Form17: TForm17;
  repdt:variant;
  fl_rep:Boolean;
  posl:string;




implementation

{$R *.dfm}

uses Unit16, Unit1, mytools, Unit2, wsdl, Unit18;


{$R *.dfm}

procedure TForm17.cxButton1Click(Sender: TObject);
begin

   IBSMSLIST.First;
   IBSMSLIST.LocateNext('schet',cxTextEdit4.Text,[]);

end;

procedure TForm17.cxButton2Click(Sender: TObject);
var
    colum:TcxGridColumn;
    AColumn: TcxGridDBColumn;
    SQL,strSAL,strFIELD,strMAXFIELD,strSUM,strWhere:string;
    prop:TPersistent;
    ch:integer;
begin
Form18.id_orders:=id_orders;
Form18.Caption:='Додати абонентів '+Form17.Caption;
Form18.Show;


end;


procedure TForm17.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid3,Form17.Caption);
end;

procedure TForm17.cxButton4Click(Sender: TObject);
var ws: ServiceSoap;
sendabon,sendsms1,dostsms,dolgabon,dostabon,errabon:integer;
stat:string;

begin
  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
    ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
    with ws do
    begin

       sendabon:=0;
       sendsms1:=0;
       dostsms:=0;
       dolgabon:=0;
       dostabon:=0;
       errabon:=0;
       IBSMSLIST.First;
        while not IBSMSLIST.Eof do
       begin

           if IBSMSLISTSTATUS.Value<>'Сообщение доставлено получателю' then
           begin

               IBSMSLIST.Edit;
               IBSMSLISTSTATUS.Value:=trim(ws.GetMessageStatus(IBSMSLISTMESSAGEID.Value));
               IBSMSLIST.Post;

           end;

           if IBSMSLISTSTATUS.Value='Сообщение доставлено получателю' then
               begin
                  sendabon:=sendabon+1;
               end;

           if Length(IBSMSLISTMESSAGEID.Value)>0 then
               begin
                  dostabon:=dostabon+1;
               end;

       if Length(IBSMSLISTMESSAGEID.Value)>0 then
       begin
          sendsms1:=sendsms1+IBSMSLISTKOL_SMS.Value;
          sendabon:=sendabon+1;
       end;

       IBSMSLIST.Next;
       end;


//       IBSMSLIST.Close;
//       IBSMSLIST.Open;

//      cxLabel2.Caption:=ws.GetCreditBalance;
    end;

    Form1.IBSMSORDEREDS.Edit;
//    Form1.IBSMSORDEREDSSEND.Value:=1;
//    Form1.IBSMSORDEREDSDATA.Value:=now();
//    Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    Form1.IBSMSORDEREDSKOL_DOST.Value:=dostabon;
    Form1.IBSMSORDEREDSKOL_SEND.Value:=sendabon;
    Form1.IBSMSORDEREDS.Post;

    Form1.IBTransaction1.CommitRetaining;
//
//    cxLabel22.Caption:=int2str(sendsms1);
    cxLabel16.Caption:=int2str(sendabon);
//    cxButton4.Enabled:=true;
//    ShowMessage('Відправка СМС виконана!!!');


    except
     cxLabel3.Caption:='Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)';

  end;

end;

procedure TForm17.cxButton5Click(Sender: TObject);
var ws: ServiceSoap;
   send:wsdl.ArrayOfString;
   sbal,ssms,sumsend:Double;
   sendsms1,sendabon:integer;

begin

  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
    ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
    with ws do
    begin
       cxLabel2.Caption:=ws.GetCreditBalance;
       Form16.cxLabel2.Caption:=cxLabel2.Caption;
       sbal:=str2float(StringReplace(cxLabel2.Caption,'.',',',[rfReplaceAll, rfIgnoreCase]));
       ssms:=str2float(cxLabel18.Caption);
       if ssms>sbal then
       begin
         ShowMessage('Ви не можете відправити ці смс так як не достатньо доступних смс на балансі');
         cxLabel18.Style.TextColor:=clRed;
         cxLabel5.Style.TextColor:=clRed;
         exit;
       end
       else
       begin
         cxLabel18.Style.TextColor:=clWindowText;
         cxLabel5.Style.TextColor:=clWindowText;
       end;

       sendsms1:=0;
       sendabon:=0;
//       sumsend:=0;
       IBSMSLIST.First;
        while not IBSMSLIST.Eof do
       begin
       send:=ws.SendSMS('Msg',IBSMSLISTTEL.AsString,IBSMSLISTTEXT.AsString,'');
       IBSMSLIST.Edit;
       IBSMSLISTMESSAGEID.Value:=send[1];
       IBSMSLISTSTATUS.Value:=send[0];
       IBSMSLIST.Post;
       if Length(IBSMSLISTMESSAGEID.Value)>0 then
       begin
          sendsms1:=sendsms1+IBSMSLISTKOL_SMS.Value;
          sendabon:=sendabon+1;
       end;

       IBSMSLIST.Next;
       end;


//       IBSMSLIST.Close;
//       IBSMSLIST.Open;

//      cxLabel2.Caption:=ws.GetCreditBalance;
    end;

    if sendabon=0 then
    begin
    Form1.IBSMSORDEREDS.Edit;
    Form1.IBSMSORDEREDSDATA.Value:=now();
    Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    Form1.IBSMSORDEREDSKOL_SENDSMS.Value:=sendsms1;
    Form1.IBSMSORDEREDSKOL_SEND.Value:=sendabon;
    Form1.IBSMSORDEREDS.Post;


    cxLabel22.Caption:=int2str(sendsms1);
    cxLabel16.Caption:=int2str(sendabon);
    ShowMessage('Відправка не виконана!!!');

    end
    else
    begin



    Form1.IBSMSORDEREDS.Edit;
    Form1.IBSMSORDEREDSSEND.Value:=1;
    Form1.IBSMSORDEREDSDATA.Value:=now();
    Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    Form1.IBSMSORDEREDSKOL_SENDSMS.Value:=sendsms1;
    Form1.IBSMSORDEREDSKOL_SEND.Value:=sendabon;
    Form1.IBSMSORDEREDS.Post;

    cxLabel22.Caption:=int2str(sendsms1);
    cxLabel16.Caption:=int2str(sendabon);
    cxButton4.Enabled:=true;
    ShowMessage('Відправка СМС виконана! Через деякий час (10 хв.)потрібно перевірити статус, щоб визначити які смс доставлені а які ні. Інколи смс іде до декількох годин, тому в пачках в яких є не доставлені смс потрібно декілька разів перевірити статус !!!');

    end;
    Form1.IBTransaction1.CommitRetaining;
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


         IBSMSLIST.FetchAll;
         if IBSMSLIST.RecordCount=0 then
            exit;



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


              Form1.IBSMSORDEREDS.First;
              Form1.IBSMSORDEREDS.Locate('id',id_orders,[]);
              Form1.IBSMSORDEREDS.Edit;
              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
              Form1.IBSMSORDEREDS.Post;



end;

procedure TForm17.cxButton8Click(Sender: TObject);
begin

    IBSMSLIST.Delete

end;

procedure TForm17.cxButton9Click(Sender: TObject);
begin
Form16.cxButton1.Click;
end;

procedure TForm17.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
ARec: TRect;
val: string;
n:Int64;
begin


end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form18.IBREP.Close;
Form18.IBWID.Close;


 if IBSMSLIST.State in [dsInsert,dsEdit] then IBSMSLIST.Post;
 Form1.IBTransaction1.CommitRetaining;

IBSMSLIST.Close;



end;

procedure TForm17.visible;
var strposl:string;
begin


cxButton4.Enabled:=false;
cxButton6.Enabled:=false;
  cxDBCheckBox1.Enabled:=true;


if id_orders<>0 then
begin

  if var2int(Form1.IBSMSORDEREDS.Lookup('id',id_orders,'send'))=1 then
  begin

     cxButton8.Enabled:=false;

  cxButton2.Enabled:=false;

  cxButton4.Enabled:=true;

  cxDBCheckBox1.Enabled:=false;

  end
  else
  begin

     cxButton8.Enabled:=true;

     cxButton2.Enabled:=true;
     cxButton6.Enabled:=true;

  end;

  IBSMSLIST.Close;
  IBSMSLIST.ParamByName('idord').Value:=id_orders;
  IBSMSLIST.Open;
  if IBSMSLIST.RecordCount=0 then
  begin
    cxButton6.Enabled:=false;

  end;


  cxLabel9.Caption:=mon_slovoDt(Form1.IBSMSORDEREDSPERIOD.Value);

  Caption:='Пачка №'+int2str(id_orders)+' від '+DateTimeToStr(Form1.IBSMSORDEREDSDATA.Value);

end
else
exit;

 cxButton3.Enabled:=true


end;



procedure TForm17.FormShow(Sender: TObject);
begin
cxLabel2.Caption:=Form16.cxLabel2.Caption;
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
cxLabel18.Caption:=iif(AText='','0',AText);

       if (str2float(cxLabel18.Caption)>str2float(StringReplace(cxLabel2.Caption,'.',',',[rfReplaceAll, rfIgnoreCase]))) or (str2float(cxLabel18.Caption)=0) then
       begin
         cxButton5.Enabled:=false;
         cxLabel18.Style.TextColor:=clRed;
         cxLabel5.Style.TextColor:=clRed;

       end
       else
       begin
         cxButton5.Enabled:=true;
         cxLabel18.Style.TextColor:=clWindowText;
         cxLabel5.Style.TextColor:=clWindowText;
       end;


end;

procedure TForm17.cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
cxLabel16.Caption:=AText;

       if (str2float(cxLabel16.Caption)=0) then
       begin
         cxButton5.Enabled:=false;
         cxButton6.Enabled:=false;
         cxLabel18.Style.TextColor:=clRed;
         cxLabel5.Style.TextColor:=clRed;

       end;

end;

end.
