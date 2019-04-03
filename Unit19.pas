unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxProgressBar,cxCalc, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm19 = class(TForm)
    OpenDialog1: TOpenDialog;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBQuery1SCHET: TIBStringField;
    IBQuery1NACH: TFloatField;
    IBQuery1SAL: TFloatField;
    cxLabel3: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;
  st1:string;


implementation

{$R *.dfm}

uses comobj, Unit1;

procedure TForm19.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
begin

  if OpenDialog1.Execute then
  begin

    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

    cxTextEdit1.Text:=st1;


    //MsExcel := null;
  end;
end;

procedure TForm19.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst:integer;
    sum:currency;
    str,nam,tip,sch,klasf,vid_rob,n_kres,gost,dekada:string;
    MsExcel,kolwith,rowh,rowh1:Variant;
    f1:boolean;

begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   if cxLookupComboBox1.EditValue=null then
   begin
     ShowMessage('Виберіть послугу');
     exit;
   end;

   if Length(st1)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;

  f1:=true;
  kolst:=7;
//  form1.IBWID.First
//  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
//  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');

  IBQuery1.Close;
  IBQuery1.ParamByName('dt').AsDate:=cxLookupComboBox2.EditValue;
  IBQuery1.ParamByName('wid').Value:=cxLookupComboBox1.EditValue;
  IBQuery1.Open;


    MsExcel := CreateOleObject('Excel.Application');
//    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];
    while f1 do
    begin
    if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
       f1:=False
    else kolst:=kolst+1;
    end;
    MsExcel.Visible := True;
    cxProgressBar1.Properties.Min:=0;
    cxProgressBar1.Properties.Max:=kolst-1;
    cxProgressBar1.Position:=5;
    for I := 7 to kolst-1 do
    begin
      cxProgressBar1.Position:=cxProgressBar1.Position+1;
      Application.ProcessMessages;

      sch:=MsExcel.WorkSheets[1].Cells[i,4];
      IBQuery1.First;
      IBQuery1SCHET.Value;
      if not IBQuery1.Locate('schet',sch,[]) then
      begin
      IBQuery1SCHET.Value;
         MsExcel.WorkSheets[1].Cells[i,5]:='рахунок не знайдено';
         MsExcel.WorkSheets[1].Cells[i,6]:='рахунок не знайдено';
      end
      else
      begin
         IBQuery1SCHET.Value;
         MsExcel.WorkSheets[1].Cells[i,5]:=IBQuery1NACH.Value;
         MsExcel.WorkSheets[1].Cells[i,6]:=IBQuery1SAL.Value;
      end;
    end;




//    MsExcel.ActiveWorkbook.Close;
//    MsExcel.Application.Quit;

    MsExcel := null;


//  ShowMessage('Завантаження закінчено');

end;

procedure TForm19.FormShow(Sender: TObject);
begin
cxLookupComboBox2.EditValue:=Form1.DateKVART;
end;

end.
