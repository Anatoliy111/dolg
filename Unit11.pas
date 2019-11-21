unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, Menus, cxButtons,inifiles;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  iniFile:TIniFile;

implementation

uses Unit1, Unit2, SHFolder;

{$R *.dfm}

procedure TForm11.cxButton1Click(Sender: TObject);
begin
if (cxLookupComboBox1.EditValue <> null) or (Length(cxLookupComboBox1.EditValue)<>0) then
begin
     Form1.IBUSER.Locate('FIO',cxLookupComboBox1.EditValue,[]);
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

        if iniFile<>nil then
        IniFile.WriteString('User','Login',trim(cxLookupComboBox1.Text));

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

procedure TForm11.FormCreate(Sender: TObject);
const
  SHGFP_TYPE_CURRENT = 0;
var folder : integer;
    Result:string;
path: array [0..MAX_PATH] of char;
begin
folder:=2;
//  if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
//  begin
    iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'dolg.ini');
    Result:=iniFile.ReadString('User','Login','');
    cxLookupComboBox1.EditValue:=Result;
//  end;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
Form1.Enabled:=false;
end;

end.
