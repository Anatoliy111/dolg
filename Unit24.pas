unit Unit24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxTextEdit, cxMemo,
  Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls,IdHTTP,System.JSON;

type
  TForm24 = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.dfm}

uses Unit23, Unit1;

procedure TForm24.cxButton1Click(Sender: TObject);
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
       js.AddPair('vidmess','mess');
       js.AddPair('mess',cxMemo1.Text);
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
      begin
        cxLabel1.Caption:='Повідомлення успішно відправлено';
       Form1.IBVIBER_SEND.Edit;
       Form1.IBVIBER_SENDDATE_SEND.Value:=now();
       Form1.IBVIBER_SENDKOLSEND.Value:=Form1.IBVIBER_SENDKOLSEND.Value+1;
       Form1.IBVIBER_SEND.Post;

      end
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



       Form1.IBVIBER_SEND.Edit;
       Form1.IBVIBER_SENDTEXT.Value:=cxMemo1.Text;
       Form1.IBVIBER_SENDSMALLTEXT.Value:=Copy(cxMemo1.Text,1,50);
       Form1.IBVIBER_SEND.Post;
end;

procedure TForm24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form23.Enabled:=true;

  if Form1.IBVIBER_SENDTEXT.Value<>cxMemo1.Text then
  begin
     if application.MessageBox('Зберегти зміни?','Підтвердження',MB_YESNO)=IDYES then
      begin
       Form1.IBVIBER_SEND.Edit;
       Form1.IBVIBER_SENDTEXT.Value:=cxMemo1.Text;
       Form1.IBVIBER_SENDSMALLTEXT.Value:=Copy(StringReplace(cxMemo1.Text, #13#10, ' ',[rfReplaceAll, rfIgnoreCase]),1,50);
       Form1.IBVIBER_SEND.Post;

      end;
  end;



end;

procedure TForm24.FormShow(Sender: TObject);
begin
  cxLabel1.Caption:='';
  Form23.Enabled:=false;
end;

end.
