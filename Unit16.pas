unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxButtonEdit, cxMaskEdit, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, IBX.IBCustomDataSet, cxContainer, cxLabel,
  cxCheckBox;

type
  TForm16 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    cxButton9: TcxButton;
    cxButton8: TcxButton;
    cxButton5: TcxButton;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1SEND: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD: TcxGridDBColumn;
    cxGrid1DBTableView1DOLG: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_SEND: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_DOST: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Timer1: TTimer;
    cxGrid1DBTableView1KOL_SENDSMS: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_ERR: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_DOSTSMS: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxLabel3: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }


  public
  procedure balanslabel(s:string);
  procedure balans;
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1, wsdl, Unit17, mytools, Unit2, math;

procedure TForm16.balans;
var ws: ServiceSoap;
begin

  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
  ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
//  ws.Auth('dddsmsddd','Register~99');
  with ws do
    balanslabel(ws.GetCreditBalance);
  except
   cxLabel2.Caption:='Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)';
   balanslabel('--');
  end;

end;

procedure TForm16.balanslabel(s:string);
var sbal,ssms,sumsend:Double;
begin

    cxLabel2.Caption:=s;
    Form17.cxLabel8.Caption:=s;
    sbal:=str2float(StringReplace(s,'.',',',[rfReplaceAll, rfIgnoreCase]));
    Form17.cxLabel2.Caption:='0';
    if (s<>'--') and (sbal>=Form1.IBSERVICESSMSCENA.Value) then
         Form17.cxLabel2.Caption:=FloatToStr(Trunc(sbal/Form1.IBSERVICESSMSCENA.Value));

end;



procedure TForm16.cxButton1Click(Sender: TObject);

begin
 balans;
end;

procedure TForm16.cxButton2Click(Sender: TObject);
var ws: ServiceSoap;
sendabon,sendsms1,dostsms,dostabon,errabon:integer;
dolgabon:Double;
stat:string;

begin
  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
    ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
    with ws do
    begin
       Form17.IBSMSLIST.Open;
       Form1.IBSMSORDEREDS.Open;
       sendabon:=0;
       sendsms1:=0;
       dostsms:=0;
       dolgabon:=0;
       dostabon:=0;
       errabon:=0;

      form2.show;
      Application.ProcessMessages;
      Form1.IBSMSORDEREDS.FetchAll;

        form2.cxProgressBar1.Position:=0;
        form2.cxProgressBar1.Properties.Min:=0;
        form2.cxProgressBar1.Properties.Max:=Form1.IBSMSORDEREDS.RecordCount;
        Application.ProcessMessages;

       Form1.IBSMSORDEREDS.First;
        while not Form1.IBSMSORDEREDS.Eof do
       begin
             form2.cxProgressBar1.Position:=form2.cxProgressBar1.Position+1;
        Application.ProcessMessages;



             if Form1.IBSMSORDEREDSKOL_SEND.Value<>Form1.IBSMSORDEREDSKOL_DOST.Value then
             begin


                Form17.IBSMSLIST.Close;
                Form17.IBSMSLIST.ParamByName('idord').Value:=Form1.IBSMSORDEREDSID.Value;
                Form17.IBSMSLIST.Open;

                form2.cxProgressBar2.Position:=0;
                form2.cxProgressBar2.Properties.Min:=0;
                form2.cxProgressBar2.Properties.Max:=Form1.IBSMSORDEREDS.RecordCount;
                Application.ProcessMessages;

                 Form17.IBSMSLIST.First;
                  while not Form17.IBSMSLIST.Eof do
                 begin
                 form2.cxProgressBar2.Position:=form2.cxProgressBar2.Position+1;
                 Application.ProcessMessages;


                     if Form17.IBSMSLISTSTATUS.Value<>'Сообщение доставлено получателю' then
                     begin

                         Form17.IBSMSLIST.Edit;
                         Form17.IBSMSLISTSTATUS.Value:=trim(ws.GetMessageStatus(Form17.IBSMSLISTMESSAGEID.Value));
                         Form17.IBSMSLIST.Post;

                     end;

                     if Form17.IBSMSLISTSTATUS.Value='Сообщение доставлено получателю' then
                         begin
                            dostabon:=dostabon+1;
                            dolgabon:=dolgabon+Form17.IBSMSLISTDOLG.Value;
                            dostsms:=dostsms+Form17.IBSMSLISTKOL_SMS.Value;
                         end;


              //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                 if Length(Form17.IBSMSLISTMESSAGEID.Value)>0 then
                 begin
                    sendsms1:=sendsms1+Form17.IBSMSLISTKOL_SMS.Value;
                    sendabon:=sendabon+1;
                 end;
              //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




                 Form17.IBSMSLIST.Next;
                 end;

                  Form1.IBSMSORDEREDS.Edit;
              //    Form17.IBSMSORDEREDSSEND.Value:=1;
              //    Form17.IBSMSORDEREDSDATA.Value:=now();
              //    Form17.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
                  Form1.IBSMSORDEREDSKOL_DOST.Value:=dostabon;
                  Form1.IBSMSORDEREDSDOLG.Value:=dolgabon;
                  Form1.IBSMSORDEREDSKOL_DOSTSMS.Value:=dostsms;
                  Form1.IBSMSORDEREDSKOL_ERR.Value:=sendabon-dostabon;

                  Form1.IBSMSORDEREDSKOL_SEND.Value:=sendabon;
                  Form1.IBSMSORDEREDSKOL_SENDSMS.Value:=sendsms1;
                  Form1.IBSMSORDEREDS.Post;

                  Form1.IBTransaction1.CommitRetaining;
             end;



       Form1.IBSMSORDEREDS.Next;
       end;
       form2.Close;


    end;


//
//    cxLabel22.Caption:=int2str(sendsms1);

//    cxButton4.Enabled:=true;
    ShowMessage('Перевірка статусу СМС виконана!!!');


    except
     ShowMessage('Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)');

  end;
end;

procedure TForm16.cxButton5Click(Sender: TObject);
begin
if not Form17.Showing then
begin

  Form17.id_orders:=Form1.IBSMSORDEREDSID.Value;
                Form17.IBSMSORDEREDS.close;
              Form17.IBSMSORDEREDS.Open;
              Form17.IBSMSORDEREDS.Locate('id',Form1.IBSMSORDEREDSID.Value,[]);
  Form17.Caption:='Пачка № '+ int2str(Form1.IBSMSORDEREDSID.Value);


  Form17.Show;

end
else
  Form17.Show;


end;

procedure TForm16.cxButton8Click(Sender: TObject);
var str:string;
begin
if not Form17.Showing then
begin
  str:='Ви дійсно бажаєте видалити журнал відправлених СМС №'+IntToStr(Form1.IBSMSORDEREDSID.Value)+'?';
  if application.MessageBox(PWideChar(str),'Підтвердження',MB_YESNO)=IDYES then
  if Form1.IBSMSORDEREDSSEND.Value=0 then
  begin

        Form1.IBQuery1.Close;
        Form1.IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
        Form1.IBQuery1.ParamByName('id').Value:=Form1.IBSMSORDEREDSID.Value;
        Form1.IBQuery1.ExecSQL;
        Form1.IBSMSORDEREDS.Delete;
  end
  else
  begin
    Form1.IBUSER.First;
    if Form1.IBUSER.Lookup('kl',Form1.ActiveUser,'fio')='admin' then
    begin
        Form1.IBQuery1.Close;
        Form1.IBQuery1.SQL.Text:='delete from SMSLIST where ID_SMSORDER=:id';
        Form1.IBQuery1.ParamByName('id').Value:=Form1.IBSMSORDEREDSID.Value;
        Form1.IBQuery1.ExecSQL;
      Form1.IBSMSORDEREDS.Delete;
    end;

  end;
end
else
  Form17.Show;
end;

procedure TForm16.cxButton9Click(Sender: TObject);
begin
if not Form17.Showing then
begin

              Form1.IBSMSORDEREDS.Insert;
              Form1.IBSMSORDEREDS.Edit;
//              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
//              if Form1.translit='1' then
//                 Form1.IBSMSORDEREDSTRANSLIT.Value:=1;
              Form1.IBSMSORDEREDS.Post;
//              Form1.IBSMSORDEREDS.Close;
//              Form1.IBSMSORDEREDS.Open;
              Form17.id_orders:=Form1.IBSMSORDEREDSID.Value;
              Form17.IBSMSORDEREDS.close;
              Form17.IBSMSORDEREDS.Open;
              Form17.IBSMSORDEREDS.Locate('id',Form1.IBSMSORDEREDSID.Value,[]);
              Form17.Caption:='Пачка № '+ int2str(Form1.IBSMSORDEREDSID.Value);

  Form17.Show;

end
else


  Form17.Show;
end;

procedure TForm16.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
cxButton5.Click;
end;

procedure TForm16.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('KOL_SEND').index])<>0 then
begin
  if str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('KOL_SEND').index])=str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('KOL_ERR').index])  then
  ACanvas.Canvas.Brush.Color := $B9B9FF
  else
    if str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('KOL_SEND').index])=str2int(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1.GetColumnByFieldName('KOL_DOST').index])  then
    ACanvas.Canvas.Brush.Color := $7bceb7
    else
      ACanvas.Canvas.Brush.Color := $fbec5d;
end;
end;

procedure TForm16.FormShow(Sender: TObject);
begin
// balans;
Timer1.Enabled:=true;
end;

procedure TForm16.Timer1Timer(Sender: TObject);
begin
  balans;
  Timer1.Enabled:=false;
end;

end.
