unit Unit23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox, Vcl.Menus,
  cxContainer, cxClasses, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, IBX.IBCustomDataSet, IBX.IBQuery,IdHTTP,System.JSON;

type
  TForm23 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    cxButton9: TcxButton;
    cxButton8: TcxButton;
    cxButton5: TcxButton;
    cxLabel1: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton1: TcxButton;
    IBQuery1: TIBQuery;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_SEND: TcxGridDBColumn;
    cxGrid1DBTableView1KOLSEND: TcxGridDBColumn;
    cxGrid1DBTableView1SMALLTEXT: TcxGridDBColumn;
    cxButton2: TcxButton;
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

uses Unit24, Unit1;

procedure TForm23.cxButton1Click(Sender: TObject);
begin
IBQuery1.Close;
IBQuery1.SQL.Text:='insert into viber_send (data, text, smalltext) select :new_data, text, smalltext from viber_send where id=:id';
IBQuery1.ParamByName('new_data').Value:=now();
IBQuery1.ParamByName('id').Value:=Form1.IBviber_sendID.Value;
IBQuery1.ExecSQL;
Form1.IBviber_send.Close;
Form1.IBviber_send.Open;
end;

procedure TForm23.cxButton2Click(Sender: TObject);
var HTTP1 :TIdHttp;
    JsonToSend: TStringStream;
    sResponse,stdata,s: string;
    cur,stroka,strmes,strye,pp:string;
    res,js: TJSOnObject;
    id,i:integer;
    jsparce : TJSONArray;
    FST,FS: TFormatSettings;
begin

       js := TJSONObject.Create;
       js.AddPair('org',form1.orgpoint);
       js.AddPair('vidmess','info');
       js.AddPair('mess','info');
//       js.Add('mess','testtest');
//       s:=TlkJSON.GenerateText(js);
//       js.Free;

        HTTP1 := TIdHTTP.Create;
        HTTP1.Request.ContentType := 'application/json';
        HTTP1.Request.ContentEncoding := 'utf-8';

        JsonToSend := TStringStream.Create(js.ToString,TEncoding.UTF8);

    try
      sResponse := HTTP1.Post(Form1.urlsend, JsonToSend);
      if sResponse='OK' then
        ShowMessage('Повідомлення про заборгованість успішно відправлено')
      else cxLabel1.Caption:='Помилка відправки '+sResponse;



//      WriteLog2('Response kppokazn: '+sResponse);
//            cxLabel1.Caption:='Імпорт даних завершено';
  Application.ProcessMessages;

    except
      on E: Exception do
      begin
        ShowMessage('Error on request: '#13#10 + e.Message);
//        WriteLog2('Error on request kppokazn: '#13#10 + e.Message);
      end;
    end;

    jsparce.Free();

    JsonToSend.Free();

    HTTP1.Free;

end;

procedure TForm23.cxButton5Click(Sender: TObject);
begin
  Form24.Show;
  Form24.cxMemo1.Text:=Form1.IBviber_sendTEXT.Value;
end;

procedure TForm23.cxButton8Click(Sender: TObject);
begin
  if application.MessageBox('Ви дійсно бажаєте видалити повідомлення?','Підтвердження',MB_YESNO)=IDYES then
     Form1.IBviber_send.Delete;


end;

procedure TForm23.cxButton9Click(Sender: TObject);
begin
Form1.IBviber_send.Append;
Form1.IBviber_sendDATA.Value:=now();
Form1.IBviber_send.Post;
Form1.IBviber_send.Close;
Form1.IBviber_send.Open;
Form24.cxMemo1.Text:=Form1.IBviber_sendTEXT.Value;
Form24.Show;
end;

procedure TForm23.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Form24.Show;
  Form24.cxMemo1.Text:=Form1.IBviber_sendTEXT.Value;
end;

end.
