unit Unit34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.DBCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, IBX.IBCustomDataSet, IBX.IBQuery, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls;

type
  TForm34 = class(TForm)
    Panel1: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    IBQuery1: TIBQuery;
    IBQuery1TEXT_SMS: TIBStringField;
    DSIBQuery1: TDataSource;
    IBQuery1DATA: TDateTimeField;
    cxGridDBTableView2DATA: TcxGridDBColumn;
    IBQuery1ID: TIntegerField;
    cxGridDBTableView2ID: TcxGridDBColumn;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form34: TForm34;

implementation

{$R *.dfm}

uses Unit17;

procedure TForm34.cxButton2Click(Sender: TObject);
begin
Form17.IBSMSORDEREDS.Edit;
Form17.IBSMSORDEREDSTEXT_SMS.Value:=IBQuery1TEXT_SMS.Value;
Form17.IBSMSORDEREDS.Post;
Close;
end;

end.
