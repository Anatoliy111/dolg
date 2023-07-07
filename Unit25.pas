unit Unit25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery,System.DateUtils;

type
  TForm25 = class(TForm)
    cxLabel3: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    cxLookupComboBox2: TcxLookupComboBox;
    frxDBDataset3: TfrxDBDataset;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  sch:string;
  vid:integer;
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

uses Unit1, mytools;

procedure TForm25.cxButton1Click(Sender: TObject);
begin
if vid=1 then
begin
IBQuery1.Close;
IBQuery1.ParamByName('sch').Value:=trim(sch);
IBQuery1.Open;

IBQuery2.Close;
IBQuery2.ParamByName('sch').Value:=trim(sch);
IBQuery2.ParamByName('dat').Value:=cxLookupComboBox1.EditValue;
IBQuery2.Open;


frxReport1.LoadFromFile('report/vipiska.fr3');
frxReport1.Variables['datemes1']:=IncDaY(cxLookupComboBox1.EditValue,-1);
frxReport1.Variables['datemes2']:=IncYear(cxLookupComboBox1.EditValue,-3);
frxReport1.Variables['datemes3']:=IncYear(IncDaY(cxLookupComboBox1.EditValue,-1),-3);
frxReport1.Variables['datemes4']:=IncYear(cxLookupComboBox1.EditValue,-5);
frxReport1.ShowReport;
end;

if vid=2 then
begin

if Date2YearMon(cxLookupComboBox1.EditValue)<Date2YearMon(cxLookupComboBox2.EditValue) then
begin
  ShowMessage('Початкова дата повинна бути меньшою або рівно кінцевій!!!');
  exit;
end;

IBQuery1.Close;
IBQuery1.ParamByName('sch').Value:=trim(sch);
IBQuery1.Open;

if Date2YearMon(cxLookupComboBox1.EditValue)=Date2YearMon(cxLookupComboBox2.EditValue) then
begin
IBQuery3.Close;
IBQuery3.ParamByName('sch').Value:=trim(sch);
IBQuery3.ParamByName('dat1').Value:=cxLookupComboBox2.EditValue;
IBQuery3.ParamByName('dat2').Value:=cxLookupComboBox1.EditValue;
IBQuery3.Open;
end
else
begin
IBQuery3.Close;
IBQuery3.ParamByName('sch').Value:=trim(sch);
IBQuery3.ParamByName('dat1').Value:=cxLookupComboBox2.EditValue;
IBQuery3.ParamByName('dat2').Value:=cxLookupComboBox1.EditValue;
IBQuery3.Open;
end;



frxReport1.LoadFromFile('report/vipiska2.fr3');
frxReport1.Variables['datemes1']:=IncDaY(cxLookupComboBox1.EditValue,-1);
frxReport1.Variables['datemes2']:=cxLookupComboBox2.EditValue;
//frxReport1.Variables['datemes3']:=IncYear(IncDaY(cxLookupComboBox1.EditValue,-1),-3);
//frxReport1.Variables['datemes4']:=IncYear(cxLookupComboBox1.EditValue,-5);
frxReport1.ShowReport;
end;


end;

procedure TForm25.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm25.FormCreate(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
end;

end.
