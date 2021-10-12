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
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  sch:string;
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm25.cxButton1Click(Sender: TObject);
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

procedure TForm25.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm25.FormCreate(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
end;

end.
