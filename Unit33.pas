unit Unit33;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxLabel, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, IBX.IBCustomDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Data.Win.ADODB, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxCalc, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxDBLabel;
type
  TForm33 = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel4: TcxLabel;
    ADOQueryOBOR: TADOQuery;
    DSADOQueryOBOR: TDataSource;
    cxGridDBTableView1sal: TcxGridDBColumn;
    cxGridDBTableView1ch: TcxGridDBColumn;
    cxCalcEdit1: TcxCalcEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ADOQueryOBORwid: TWideStringField;
    ADOQueryOBORschet: TWideStringField;
    ADOQueryOBORsal: TFloatField;
    ADOQueryOBORch: TIntegerField;
    ADOQueryOBORnaim: TWideStringField;
    cxGridDBTableView1naim: TcxGridDBColumn;
    cxGridDBTableView1schet: TcxGridDBColumn;
    ADOQueryOBORsumpl: TFloatField;
    cxGridDBTableView1sumpl: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    Memo2: TMemo;
    CheckBox2: TCheckBox;
    ADOQueryOBORfio: TStringField;
    cxLabel7: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel8: TcxLabel;
    cxCalcEdit2: TcxCalcEdit;
    ADOQueryOBORabonpl: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
  private

    { Private declarations }
  public
    closeform:integer;
    { Public declarations }
  end;

var
  Form33: TForm33;


implementation

{$R *.dfm}

uses Unit27, Unit2, comobj, Unit1, StrUtils, ShellAPI, mytools, Unit30, Unit12;


procedure TForm33.cxButton1Click(Sender: TObject);
begin
          closeform:=2;
          Close;
end;

procedure TForm33.cxButton2Click(Sender: TObject);
begin
Form27.addopl;
end;

procedure TForm33.cxButton3Click(Sender: TObject);
begin
Form30.Caption:=Form1.dxBarButton133.Caption;
Form30.Show;
end;

procedure TForm33.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm33.FormClose(Sender: TObject; var Action: TCloseAction);
begin



if closeform=0 then
begin
  Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+1]:='';
  Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+3]:='';

   Form27.endlistexel;
end;

if closeform=1 then
begin
  Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+1]:='';
  Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+3]:='';

  Form27.Timer1.Enabled:=True;
end;

if closeform=2 then
begin
     if CheckBox1.Checked then
     begin
        Form27.ExcelWorkbook.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+2]:='Оброблено';
        Form27.ExcelWorkbook.save;
     end;
     Form27.Timer1.Enabled:=True;
end;



end;

procedure TForm33.FormShow(Sender: TObject);
begin
closeform:=0;
Form2.Visible:=false;
end;

procedure TForm33.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if 13 = ord(key) then
      cxCalcEdit2.SetFocus;

end;

procedure TForm33.cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
var sql,sch:string;
begin
      if trim(Form33.cxTextEdit1.Text)<>'' then
      begin
          sch:=Form27.SearchSchet(trim(Form33.cxTextEdit1.Text));
          if sch='' then
          begin

             Form33.ADOQueryOBOR.Close;
             Form27.err:=true;
             if Form33.Showing then
             begin
               ShowMessage('Особовий рахунок не знайдено!!!');
               cxTextEdit1.SetFocus;
             end;
//             else
//             begin
//              cxLabel1.Caption:='Ос.рахунок не знайдено!';
//              cxTextEdit1.Properties.ReadOnly:=false;
//             end;
          end
          else
          begin
             Form27.SearchAllPosl;
             Form27.SearchSum;
          end;

      end
      else
      begin
              cxLabel1.Caption:='Ос.рахунок не знайдено!';
              cxTextEdit1.Properties.ReadOnly:=false;
              Form27.err:=true;
      end;

end;

end.
