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
    cxGrid1DBTableView1KOL_SEND: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_ERR: TcxGridDBColumn;
    cxGrid1DBTableView1KOL_DOSTSMS: TcxGridDBColumn;
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
  procedure balanslabel(s:string);
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
    balanslabel(ws.GetCreditBalance);
  except
   cxLabel2.Caption:='Нема підключення до сервера СМС (можливо відсутнє з"єднання з інтернетом)';
   balanslabel('--');
  end;

end;

procedure TForm16.balanslabel(s:string);
begin

    cxLabel2.Caption:=s;
    Form17.cxLabel2.Caption:=s;


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

              Form1.IBSMSORDEREDS.Insert;
              Form1.IBSMSORDEREDS.Edit;
//              Form1.IBSMSORDEREDSDATA.Value:=now();
              Form1.IBSMSORDEREDSID_USER.Value:=Form1.ActiveUser;
              if Form1.translit='1' then
                 Form1.IBSMSORDEREDSTRANSLIT.Value:=1;
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
