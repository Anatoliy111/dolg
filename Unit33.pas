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
  cxDropDownEdit, cxCalc, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar;
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
    cxGridDBTableView1wnaim: TcxGridDBColumn;
    cxGridDBTableView1sal: TcxGridDBColumn;
    cxGridDBTableView1ch: TcxGridDBColumn;
    cxGridDBTableView1sumpl: TcxGridDBColumn;
    cxCalcEdit1: TcxCalcEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGridDBTableView1wid: TcxGridDBColumn;
    cxGridDBTableView1schet: TcxGridDBColumn;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    cxButton5: TcxButton;
    ADODataSet1: TADODataSet;
    ADOStoredProc1: TADOStoredProc;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton5Click(Sender: TObject);
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

procedure TForm33.cxButton5Click(Sender: TObject);
begin
ADOConnection1.Connected:=true;
//ADODataSet1.
end;

procedure TForm33.FormClose(Sender: TObject; var Action: TCloseAction);
begin



if closeform=0 then
begin
   Form27.endlistexel;
end;

if closeform=1 then
begin
  Form27.Timer1.Enabled:=True;
end;

if closeform=2 then
begin
     if CheckBox1.Checked then
     begin
        Form27.MsExcel.WorkSheets[1].Cells[Form27.Row,Form27.IBQueryBankCOL_END.Value+2]:='���������';
        Form27.MsExcel.ActiveWorkbook.save;
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
      cxCalcEdit1.SetFocus;

end;

procedure TForm33.cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
var sql,sch:string;
begin
      if Form33.cxTextEdit1.Text<>'' then
      begin
          sch:=Form27.SearchSchet(trim(Form33.cxTextEdit1.Text));
          if sch='' then
          begin
             ShowMessage('�������� ������� �� ��������!!!');
             Form33.ADOQueryOBOR.Close;
             cxTextEdit1.SetFocus;
          end;
//          else
//          begin
//            sql:='select wids.wid, wids.wnaim, obor.schet, obor.sal, 0 as ch, 00000.00 as sumpl from wids,obor where wids.wid=obor.wid and obor.schet=:sch order by wids.npp';
//            Form33.ADOQueryOBOR.Close;
//            Form33.ADOQueryOBOR.SQL.Clear;
//            Form33.ADOQueryOBOR.SQL.Append(sql);
//            Form33.ADOQueryOBOR.Parameters.ParamByName('sch').Value:=trim(sch);
//            Form33.ADOQueryOBOR.Open;
//          end;
      end;

end;

end.