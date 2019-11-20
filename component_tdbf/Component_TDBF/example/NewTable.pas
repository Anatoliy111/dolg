unit NewTable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Spin, DBF;

type
  TCreateForm = class(TForm)
    B1: TButton;
    B2: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    SE1: TSpinEdit;
    RG1: TRadioGroup;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    CB1: TComboBox;
    Label6: TLabel;
    SE2: TSpinEdit;
    SE3: TSpinEdit;
    Label7: TLabel;
    DB: TDbf;
    procedure B2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure MSH(Str: String);
  public
    { Public declarations }
  end;

var
  CreateForm: TCreateForm;
  NN: Integer;

implementation

{$R *.DFM}

procedure TCreateForm.MSH(Str: String);
begin
  MessageBox(0, PChar(Str), 'Создание нового файла .dbf', mb_iconhand+mb_ok);
end;

{*** Отказ от создания файла .dbf ***}
procedure TCreateForm.B2Click(Sender: TObject);
begin
  Close;
end;

{*** Исходное состояние элементов формы ***}
procedure TCreateForm.FormShow(Sender: TObject);
begin
  Label1.Caption:='Задайте основные параметры нового файла:';
  Label2.Visible:=True; Label3.Visible:=True;
  Label4.Visible:=False; Label5.Visible:=False;
  Label6.Visible:=False; Label7.Visible:=False;
  Edit2.Visible:=False; CB1.Visible:=False;
  SE2.Visible:=False; SE3.Visible:=False;
  Edit1.Visible:=True; SE1.Visible:=True;
  Edit1.Text:=''; SE1.Value:=0; B1.Caption:='Далее >';
  RG1.Visible:=True; RG1.ItemIndex:=2;
  NN:=0; Edit1.SetFocus;
end;

{*** Очередной шаг создания описаний полей файла .dbf ***}
procedure TCreateForm.B1Click(Sender: TObject);
var
  TT: TFLDType;
  LL: TCodePage;
begin
  TT:=bfUnkown; LL:=NONE;
  if Edit1.Text='' then MSH('Не задано имя файла') else
  if SE1.Value<1 then MSH('Не задано количество полей') else
  begin
    if NN>0 then
    begin
      case CB1.ItemIndex of
        0 : TT:=bfBoolean;
        1 : TT:=bfDate;
        2 : TT:=bfFloat;
        3 : TT:=bfNumber;
        4 : TT:=bfString;
      end;
      // Добавление очередного описания поля
      DB.AddFieldDefs(Edit2.Text, TT, SE2.Value, SE3.Value);
    end;
    if NN=SE1.Value then  // Подготовка к созданию файла завершена
    begin                 
      case RG1.ItemIndex of  // Задание кодовой страницы файла .dbf
        0 : LL:=ANSI;
        1 : LL:=OEM;
        2 : LL:=NONE;
      end;
      if MessageBox(0,
      'Все готово для создания таблицы. Создавать файл?',
      'Создание нового файла .dbf', mb_iconquestion+mb_yesno)=idYes then
      begin DB.TableName:=Edit1.Text+'.dbf'; DB.CreateTable; DB.CodePage:=LL; end;
      Close; Exit; // Готово
    end;
    // Отображение элементов формы для ввода описаний следующего поля
    Inc(NN); Label1.Caption:='Задайте параметры поля №'+IntToStr(NN)+':';
    Label2.Visible:=False; Label3.Visible:=False;
    Edit1.Visible:=False; SE1.Visible:=False; RG1.Visible:=False;
    Label4.Visible:=True; Label5.Visible:=True;
    Label6.Visible:=True; Label7.Visible:=True;
    Edit2.Visible:=True; CB1.Visible:=True;
    SE2.Visible:=True; SE3.Visible:=True; Edit2.SetFocus;
    Edit2.Text:=''; CB1.ItemIndex:=-1;
    SE2.Value:=1; SE3.Value:=0;
    if NN=SE1.Value then B1.Caption:='Готово';
  end;
end;

procedure TCreateForm.CB1Change(Sender: TObject);
begin
  if CB1.ItemIndex>1 then SE2.Value:=1;
  if CB1.ItemIndex=1 then SE2.Value:=8;
end;

{*** Проверка, что имя поля задано ***}
procedure TCreateForm.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text='' then begin MSH('Не задано имя поля'); Edit2.SetFocus; end;
end;

end.
