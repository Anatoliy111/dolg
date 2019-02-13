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
    cxGrid1DBTableView1KOL_SENDSMS: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_ERRSMS: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_DOST: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CONTROL: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1DBTableView1KOL_ROUTE: TcxGridDBColumn;
    Timer1: TTimer;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure balans;
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1, wsdl, Unit17, mytools;

procedure TForm16.balans;
var ws: ServiceSoap;
begin

  ws := GetServiceSoap();
  // вызываем процедуру сервиса
//  ws.Auth('tsmsb','tsmsb1234');
  try
  ws.Auth(Form1.IBSERVICESSMSLOGIN.Value,Form1.IBSERVICESSMSPW.Value);
  with ws do
    cxLabel2.Caption:=ws.GetCreditBalance;

  except
   cxLabel2.Caption:='Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)';
  end;

end;



procedure TForm16.cxButton1Click(Sender: TObject);

begin
 balans;
end;

procedure TForm16.cxButton5Click(Sender: TObject);
begin
if not Form17.Showing then
begin

  Form17.id_orders:=Form1.IBSMSORDEREDSID.Value;
  Form17.Caption:='Пачка № '+ int2str(Form1.IBSMSORDEREDSID.Value)+' від '+DateTimeToStr(Form1.IBSMSORDEREDSDATA.Value);


  Form17.Show;

end
else
  Form17.Show;


end;

procedure TForm16.cxButton8Click(Sender: TObject);
begin
if not Form17.Showing then
begin
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
Form17.id_orders:=0;
Form17.Caption:='Нова пачка';

//  Form17.Caption:='Пачка № '+ int2str(Form1.IBSMSORDEREDSID.Value)+' від '+DateTimeToStr(Form1.IBSMSORDEREDSDATA.Value);

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
