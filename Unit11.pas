unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Menus, cxButtons;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm11.cxButton1Click(Sender: TObject);
begin
if cxLookupComboBox1.EditValue <> null then
begin
     Form1.IBUSER.Locate('KL',cxLookupComboBox1.EditValue,[]);
     if cxMaskEdit1.Text=Form1.IBUSERPW.Value then
     begin
     Form1.ActiveUser:=Form1.IBUSERKL.Value;
       if Form1.IBUSERFIO.Value<>'admin' then
       begin
         Form1.dxBarButton114.Enabled:=false;

       end;

       if Form1.IBUSERSMS.Value=0 then
       begin
         Form1.cxButton4.Enabled:=false;

       end;

     Form1.Enabled:=true;
     Form11.Hide;
//     Form1.REPORT;
     Form2.Timer1.Enabled:=true;
     end
     else
   ShowMessage('Неправильний пароль!');
end
else
   ShowMessage('Виберіть користувача!');
     
end;

procedure TForm11.cxButton2Click(Sender: TObject);
begin
Form1.close;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.close;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
Form1.Enabled:=false;
end;

end.
