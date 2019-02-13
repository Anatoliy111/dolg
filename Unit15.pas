unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxButtonEdit, cxCalc, cxMaskEdit, cxContainer, cxLabel;

type
  TForm15 = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1KONTROL: TcxGridDBColumn;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDCOD: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_P: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_PF: TcxGridDBColumn;
    cxGrid1DBTableView1ORGAN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton3: TcxButton;
    cxGrid1DBTableView1KOLI_LG: TcxGridDBColumn;
    cxGrid1DBTableView1KOLI_K: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_BB: TcxGridDBColumn;
    cxGrid1DBTableView1PLOS_OB: TcxGridDBColumn;
    cxGrid1DBTableView1LGOTA: TcxGridDBColumn;
    cxGrid1DBTableView1LG_POSV: TcxGridDBColumn;
    cxGrid1DBTableView1LG_SER: TcxGridDBColumn;
    cxGrid1DBTableView1LG_FIO: TcxGridDBColumn;
    cxGrid1DBTableView1LG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1LG_KAT: TcxGridDBColumn;
    cxGrid1DBTableView1ULNAIM: TcxGridDBColumn;
    cxGrid1DBTableView1NOMDOM: TcxGridDBColumn;
    cxGrid1DBTableView1NOMKV: TcxGridDBColumn;
    cxGrid1DBTableView1LIFT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1TEL: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses Unit1, Unit12;

procedure TForm15.cxButton1Click(Sender: TObject);
begin
Form1.IBKART.LocateNext('schet',cxTextEdit1.Text,[]);

end;

procedure TForm15.cxButton3Click(Sender: TObject);
begin
Form1.ExportGrid(cxGrid1,Form15.Caption);
end;

procedure TForm15.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if Form1.IBKARTSCHET.Value<>null then
  begin
     Form12.cxTextEdit1.EditValue:= Form1.IBKARTSCHET.Value;
     Form12.Find();
//     Form12.Show;
  end;
end;



procedure TForm15.cxGrid1DBTableView1TELPropertiesValidate(Sender: TObject;
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

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.IBTransaction1.CommitRetaining;
end;

end.
