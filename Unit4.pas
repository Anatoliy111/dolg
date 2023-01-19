unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ExtCtrls,
  cxContainer, cxLabel, cxNavigator;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Button1: TButton;
    cxGridDBTableView1UL: TcxGridDBColumn;
    cxGridDBTableView1DOM: TcxGridDBColumn;
    cxGridDBTableView1CH: TcxGridDBColumn;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
   Form1.IBSP_ADRES.first;
while (not Form1.IBSP_ADRES.eof) do
   begin
     if Form1.IBSP_ADRESCH.Value=1 then
     begin
        Form1.IBSP_ADRES.Edit;
        Form1.IBSP_ADRESKL_KONTROL.Value:=Form1.IBKONTROLKL.Value;
        Form1.IBSP_ADRESCH.Value:=0;
        Form1.IBSP_ADRES.Post;
     end;
     Form1.IBSP_ADRES.Next;
   end;
   Form1.IBADRESKR.Close;
   Form1.IBADRESKR.Open;
   Form4.Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
   Form1.IBSP_ADRES.Close;
   Form1.IBSP_ADRES.Open;

end;

end.
