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
  IBX.IBCustomDataSet,cxCurrencyEdit, IBX.IBQuery, cxDBEdit, cxDBLabel,
  Vcl.DBCtrls, cxCheckGroup, cxDBCheckGroup, cxMemo;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton1: TcxButton;
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
    cxButton8: TcxButton;
    IBQuery1: TIBQuery;
    IBWIDSNAIM: TIBStringField;
    cxLabel7: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
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
    IBSMSLISTKOL_SMS: TIntegerField;
    IBSMSLISTTEL: TIBStringField;
    IBSMSLISTMESSAGEID: TIBStringField;
    IBSMSLISTFIO: TIBStringField;
    DSSMSLIST: TDataSource;
    IBSMSLISTKOL_ABON: TIntegerField;
    IBSMSORDEREDS: TIBDataSet;
    IBSMSORDEREDSID: TIntegerField;
    IBSMSORDEREDSDATA: TDateTimeField;
    IBSMSORDEREDSSEND: TIntegerField;
    IBSMSORDEREDSPERIOD: TDateField;
    IBSMSORDEREDSDOLG: TFloatField;
    IBSMSORDEREDSKOL_SENDSMS: TIntegerField;
    IBSMSORDEREDSKOL_DOST: TIntegerField;
    IBSMSORDEREDSFIO: TIBStringField;
    IBSMSORDEREDSID_USER: TIntegerField;
    IBSMSORDEREDSCONTROL: TIntegerField;
    IBSMSORDEREDSPOSL: TIBStringField;
    IBSMSORDEREDSTRANSLIT: TIntegerField;
    IBSMSORDEREDSKOL_SEND: TIntegerField;
    IBSMSORDEREDSKOL_ERR: TIntegerField;
    IBSMSORDEREDSKOL_DOSTSMS: TIntegerField;
    DSSMSORDEREDS: TDataSource;
    cxGridDBTableView2MESSAGEID: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    IBSMSORDEREDSVID_SMS: TIntegerField;
    IBSMSORDEREDSTEXT_SMS: TIBStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxButton7: TcxButton;
    IBSMSLISTTEXT: TIBStringField;
    IBSMSLISTTEXTNOTTR: TIBStringField;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel17: TcxLabel;
    cxButton9: TcxButton;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel21: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel15: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel19: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel13: TcxLabel;
    cxDBLabel5: TcxDBLabel;
    cxMemo1: TcxMemo;
    Label7: TLabel;
    IBSMSLISTKOL_CHAR: TIntegerField;
    cxGridDBTableView2KOL_CHAR: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
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
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DBMemo1Change(Sender: TObject);
    procedure cxDBCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure IBSMSLISTTEXTChange(Sender: TField);
    procedure cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);

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

uses Unit16, Unit1, mytools, Unit2, wsdl, Unit18, Unit34;


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
Form18.Caption:='������ �������� '+Form17.Caption;
Form18.cxCheckBox1.Checked:=false;
Form18.Show;
end;


procedure TForm17.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid3,Form17.Caption);
end;


procedure TForm17.cxButton4Click(Sender: TObject);
var ws: ServiceSoap;
sendabon,sendsms1,dostsms,dostabon,errabon:integer;
dolgabon:Double;
stat:string;

begin
  ws := GetServiceSoap();
  // �������� ��������� �������
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

           if IBSMSLISTSTATUS.Value<>'��������� ���������� ����������' then
           begin

               IBSMSLIST.Edit;
               IBSMSLISTSTATUS.Value:=trim(ws.GetMessageStatus(IBSMSLISTMESSAGEID.Value));
               IBSMSLIST.Post;

           end;

           if IBSMSLISTSTATUS.Value='��������� ���������� ����������' then
               begin
                  dostabon:=dostabon+1;
                  dolgabon:=dolgabon+IBSMSLISTDOLG.Value;
                  dostsms:=dostsms+IBSMSLISTKOL_SMS.Value;
               end;


    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
       if Length(IBSMSLISTMESSAGEID.Value)>0 then
       begin
          sendsms1:=sendsms1+IBSMSLISTKOL_SMS.Value;
          sendabon:=sendabon+1;
       end;
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

       IBSMSLIST.Next;
       end;


    end;

    Form17.IBSMSORDEREDS.Edit;
//    Form17.IBSMSORDEREDSSEND.Value:=1;
//    Form17.IBSMSORDEREDSDATA.Value:=now();
//    Form17.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    Form17.IBSMSORDEREDSKOL_DOST.Value:=dostabon;
    Form17.IBSMSORDEREDSDOLG.Value:=dolgabon;
    Form17.IBSMSORDEREDSKOL_DOSTSMS.Value:=dostsms;
    Form17.IBSMSORDEREDSKOL_ERR.Value:=sendabon-dostabon;

    Form17.IBSMSORDEREDSKOL_SEND.Value:=sendabon;
    Form17.IBSMSORDEREDSKOL_SENDSMS.Value:=sendsms1;
    Form17.IBSMSORDEREDS.Post;

    Form1.IBTransaction1.CommitRetaining;
//
//    cxLabel22.Caption:=int2str(sendsms1);

//    cxButton4.Enabled:=true;
    ShowMessage('�������� ������� ��� ��������!!!');


    except
     ShowMessage('���� ���������� �� ������� ��� (������� ������� �"������� � ����������)');

  end;

end;

procedure TForm17.cxButton5Click(Sender: TObject);
var ws: ServiceSoap;
   send:wsdl.ArrayOfString;
   sbal,ssms,sumsend:Double;
   sendsms1,sendabon:integer;

begin

  ws := GetServiceSoap();
  // �������� ��������� �������
//  ws.Auth('tsmsb','tsmsb1234');
  try
    ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
//    ws.Auth('dddsmsddd','Register~99');
    with ws do
    begin
       Form16.balanslabel(ws.GetCreditBalance);
       sbal:=str2float(StringReplace(cxLabel2.Caption,'.',',',[rfReplaceAll, rfIgnoreCase]));
       ssms:=str2float(cxLabel18.Caption);
       if ssms>sbal then
       begin
         ShowMessage('�� �� ������ ��������� �� ��� ��� �� �� ��������� ��������� ��� �� ������');
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
       send:=ws.SendSMS(Form1.IBSERVICESSMSALPHA.Value,IBSMSLISTTEL.AsString,IBSMSLISTTEXT.AsString,'');
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
    IBSMSORDEREDS.Edit;
    IBSMSORDEREDSKOL_SENDSMS.Value:=0;
    IBSMSORDEREDSKOL_SEND.Value:=0;
    IBSMSORDEREDS.Post;


    ShowMessage('³������� �� ��������!!!');

    end
    else
    begin



    IBSMSORDEREDS.Edit;
    IBSMSORDEREDSSEND.Value:=1;
    IBSMSORDEREDSDATA.Value:=now();
    IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
    IBSMSORDEREDSKOL_SENDSMS.Value:=sendsms1;
    IBSMSORDEREDSKOL_SEND.Value:=sendabon;
    IBSMSORDEREDS.Post;

    Form16.balanslabel(ws.GetCreditBalance);

    cxButton4.Enabled:=true;
    cxButton2.Enabled:=false;
    cxButton6.Enabled:=false;
    cxButton5.Enabled:=false;
    ShowMessage('³������� ��� ��������! ����� ������ ��� (10 ��.)������� ��������� ������, ��� ��������� �� ��� ���������� � �� ��. ������ ��� ��� �� �������� �����, ���� � ������ � ���� � �� ���������� ��� ������� ������� ���� ��������� ������ !!!');
    cxButton4.Click;
    end;
    Form1.IBTransaction1.CommitRetaining;
    except
      ShowMessage('���� ���������� �� ������� ��� (������� ������� �"������� � ����������)');

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

                       Form2.Label1.Caption:='������ �������';
                Form2.cxProgressBar1.Properties.Min:=0;
                Form2.cxProgressBar1.Properties.Max:=0;
                Form2.cxProgressBar1.Position:=0;
                Application.ProcessMessages;
                form2.SHOW;
       DSSMSLIST.Enabled:=false;

       IBSMSLIST.First;
       Form2.cxProgressBar1.Properties.Max:=IBSMSLIST.RecordCount-1;
       while not IBSMSLIST.Eof do
       begin
                       Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
                Application.ProcessMessages;


//                   if IBSMSORDEREDSVID_SMS.Value=0 then smstext:=DBMemo1.Text
//                   else smstext:=IBSMSLISTTEXTNOTTR.Value;

                   smstext:=DBMemo1.Text;

//                   if Form17.IBSMSORDEREDSTRANSLIT.Value=1 then
//                   begin
//                     if Length(smstext)>70 then
//                     begin
//                        smstext:=Translit2Lat(smstext);
//                        IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1);
//                     end
//                     else
//                        IBSMSLISTKOL_SMS.Value:=1;
//                   end
//                   else
//                   begin

                 if pos('[date]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[date]',DateToStr(now),[rfReplaceAll, rfIgnoreCase]);
                 if pos('[datefirst]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[datefirst]',DateToStr(Form1.IBPERIODPERIOD.Value),[rfReplaceAll, rfIgnoreCase]);
                 if pos('[datemes]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[datemes]',mon_slovoDt2(now),[rfReplaceAll, rfIgnoreCase]);
                 if pos('[datefirstmes]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[datefirstmes]',mon_slovoDt2(Form1.IBPERIODPERIOD.Value),[rfReplaceAll, rfIgnoreCase]);
                 if pos('[datemesstr]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[datemesstr]',mon_slovoDt(Form1.IBPERIODPERIOD.Value),[rfReplaceAll, rfIgnoreCase]);

                 if pos('[schet]', smstext)>0 then
                    smstext:=StringReplace(smstext,'[schet]',trim(IBSMSLIST.FieldByName('schet').AsString),[rfReplaceAll, rfIgnoreCase]);

                   if pos('[dolg]', smstext)>0 then
                      smstext:=StringReplace(smstext,'[dolg]',FloatToStr(IBSMSLIST.FieldByName('DOLG').AsFloat),[rfReplaceAll, rfIgnoreCase]);

                   if pos('[poslnamsum]', smstext)>0 then
                      smstext:=StringReplace(smstext,'[poslnamsum]',IBSMSLISTTEXTNOTTR.Value,[rfReplaceAll, rfIgnoreCase]);





                     IBSMSLIST.Edit;
//                     IBSMSLISTKOL_SMS.Value:=iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/65))+1);
//                     IBSMSLISTKOL_CHAR.Value:=Length(smstext);

                     //                   end;

                   IBSMSLISTTEXT.Value:=smstext;

                   if IBSMSLIST.State in [dsInsert,dsEdit] then IBSMSLIST.Post;




       IBSMSLIST.Next;
       end;

       Form1.IBTransaction1.CommitRetaining;
       IBSMSLIST.first;

       form2.close;
       DSSMSLIST.Enabled:=true;

end;

procedure TForm17.cxButton7Click(Sender: TObject);
begin
Form34.IBQuery1.Close;
Form34.IBQuery1.ParamByName('id').Value:=id_orders;
Form34.IBQuery1.Open;
Form34.Show;
end;

procedure TForm17.cxButton8Click(Sender: TObject);
begin

    IBSMSLIST.Delete;
    Form1.IBTransaction1.CommitRetaining;
end;

procedure TForm17.cxButton9Click(Sender: TObject);
begin
Form16.balans;
end;

procedure TForm17.cxDBCheckBox1PropertiesChange(Sender: TObject);
begin
DBMemo1Change(Sender);

end;

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form18.IBREP.Close;
Form18.IBWID.Close;


 if IBSMSLIST.State in [dsInsert,dsEdit] then IBSMSLIST.Post;
 if IBSMSORDEREDS.State in [dsInsert,dsEdit] then
 begin
//   IBSMSORDEREDS.Edit;
//   IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
   IBSMSORDEREDS.Post;
 end;
 Form1.IBTransaction1.CommitRetaining;

Form1.IBSMSORDEREDS.Close;
Form1.IBSMSORDEREDS.Open;
Form1.IBSMSORDEREDS.Locate('id',IBSMSORDEREDSID.Value,[]);

IBSMSORDEREDS.Close;
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

  if Form17.IBSMSORDEREDSSEND.Value=1 then
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
     cxButton5.Enabled:=false;

  end;

  IBSMSLIST.Close;
  IBSMSLIST.ParamByName('idord').Value:=id_orders;
  IBSMSLIST.Open;
  if IBSMSLIST.RecordCount=0 then
  begin
    cxButton6.Enabled:=false;

  end;


//  cxLabel9.Caption:=mon_slovoDt(Form17.IBSMSORDEREDSPERIOD.Value);

  Caption:='����� �'+int2str(id_orders);



end
else
exit;

 cxButton3.Enabled:=true


end;



procedure TForm17.FormShow(Sender: TObject);
begin
visible;
end;

procedure TForm17.IBSMSLISTTEXTChange(Sender: TField);
begin
                     IBSMSLIST.Edit;
                     IBSMSLISTKOL_SMS.Value:=iif(Length(IBSMSLISTTEXT.Value)<=70,1,(Trunc(Length(IBSMSLISTTEXT.Value)/65))+1);
                     IBSMSLISTKOL_CHAR.Value:=Length(IBSMSLISTTEXT.Value);
                     IBSMSLIST.Post;
end;

procedure TForm17.cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var editstr:string;
begin

//   editstr:=TcxTextEdit(Sender.ToString).Text;
  if (VarToStr(DisplayValue)[2]<>'0') and (VarToStr(DisplayValue)<>'(___)___-____') then
  begin
//    ShowMessage('������� �� ���������� � 0  - ����.(066)');
    ErrorText:='������� �� ���������� � 0  - ����.(066)';
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
    //    ShowMessage('������� �� ���������� � 0  - ����.(066)');
        ErrorText:='������� �� ���� 10 �������';
        Error:=true;
    //    Error:=false;
      end;


end;

procedure TForm17.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if IBSMSORDEREDSSEND.Value=1 then
begin
  if Length(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView2.GetColumnByFieldName('MESSAGEID').index])=0  then
  ACanvas.Canvas.Brush.Color := $B9B9FF;





//  else
//  ACanvas.Canvas.Brush.Color := $ffffff;
end;
  if (AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView2.GetColumnByFieldName('KOL_CHAR').index]<>'') then
    if (StrToInt(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView2.GetColumnByFieldName('KOL_CHAR').index])>661) then
       ACanvas.Canvas.Brush.Color := $ffdce1;

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
         if IBSMSORDEREDSSEND.Value=0 then
             cxButton5.Enabled:=true;
         cxLabel18.Style.TextColor:=clWindowText;
         cxLabel5.Style.TextColor:=clWindowText;
       end;


end;

procedure TForm17.cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin


       if (str2float(AText)=0) then
       begin
         cxButton5.Enabled:=false;
//         cxButton6.Enabled:=false;
         cxLabel18.Style.TextColor:=clRed;
         cxLabel5.Style.TextColor:=clRed;

       end;

end;

procedure TForm17.cxGridDBTableView2TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
//cxLabel18.Caption:=iif(AText='','0',AText);
//      AText;
       if AValue > 661 then
       begin
         cxButton5.Enabled:=false;
         cxLabel4.Style.TextColor:=clRed;
       end
       else
       begin
         cxButton5.Enabled:=true;
         cxLabel4.Style.TextColor:=clWindowText;
       end;
end;

procedure TForm17.DBMemo1Change(Sender: TObject);
var smstext:string;
begin

Label4.Caption:=IntToStr(Length(DBMemo1.Text));

                   smstext:=DBMemo1.Text;

//                   if Form17.IBSMSORDEREDSTRANSLIT.Value=1 then
//                   begin
//                     if Length(smstext)>70 then
//                     begin
//                        smstext:=Translit2Lat(smstext);
//                         Label5.Caption:=IntToStr(iif(Length(smstext)<=160,1,(Trunc(Length(smstext)/160))+1));
//                     end
//                     else
//                         Label5.Caption:=IntToStr(1);
//                   end
//                   else
//                   begin


                      Label5.Caption:=IntToStr(iif(Length(smstext)<=70,1,(Trunc(Length(smstext)/70))+1));
//                   end;

end;

end.
