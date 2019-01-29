unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  cxButtonEdit;

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
    cxGrid1DBTableView1TELEF: TcxGridDBColumn;
    cxGrid1DBTableView1ULNAIM: TcxGridDBColumn;
    cxGrid1DBTableView1NOMDOM: TcxGridDBColumn;
    cxGrid1DBTableView1NOMKV: TcxGridDBColumn;
    cxGrid1DBTableView1LIFT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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

end.
