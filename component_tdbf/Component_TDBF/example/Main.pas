unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Grids, ExtCtrls, StdCtrls, ComCtrls, NewTable, DBF;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    SB1: TSpeedButton;
    SB2: TSpeedButton;
    SB3: TSpeedButton;
    SB4: TSpeedButton;
    SB5: TSpeedButton;
    SB7: TSpeedButton;
    SB8: TSpeedButton;
    SB9: TSpeedButton;
    CB4: TCheckBox;
    SB10: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RG: TRadioGroup;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DT: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB3Click(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure SGSelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure SB2Click(Sender: TObject);
    procedure SB3Click(Sender: TObject);
    procedure SB4Click(Sender: TObject);
    procedure SB5Click(Sender: TObject);
    procedure SGSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure SB9Click(Sender: TObject);
    procedure SB10Click(Sender: TObject);
    procedure CB4Click(Sender: TObject);
    procedure SB8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RGClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitSG;
    procedure FillSG;
    procedure DisableButt;
  public
    { Public declarations }
  end;

  // Информация о ячейке SG
  TCell = record
    Val   : string;   // Содержимое
    Cl, Rw: Integer;  // Координаты
    Modif : Boolean;  // Признак модифицированности
  end;

  ED = class(Exception);

const Cap = 'Test DBF';

var
  Form1: TForm1;
  CN: TCell;

implementation

{$R *.DFM}

{*** Инициализация (установка в исходное состояние) компонента SG ***}
procedure TForm1.InitSG;
var
 i,N: integer;
begin
  with StringGrid1 do
  begin
    for N:=1 to ColCount do
     for i:=1 to RowCount do
      Cells[N,i]:='';
    ColCount:=2;
    RowCount:=2;
    FixedRows:=1;
  end;
  Caption:=Cap;
  with CN do begin Cl:=1; Rw:=1; Modif:=False; end;
  SB10.Enabled:=False;
end;

{*** Деактивация элементов главной формы ***}
procedure TForm1.DisableButt;
begin
  SB1.Enabled:=False;
  SB2.Enabled:=False;
  SB3.Enabled:=False;
  SB4.Enabled:=False;
  SB5.Enabled:=False;
  SB7.Enabled:=False;
  SB8.Enabled:=False;
  SB9.Enabled:=False;
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button3.Enabled:=False;
  Button4.Enabled:=False;
  Button5.Enabled:=False;
  Button7.Enabled:=False;
  Button8.Enabled:=False;
  DT.Enabled:=False;
  RG.Enabled:=False;
end;

{*** Загрузка ячеек SG из файла ***}
procedure TForm1.FillSG;
var
  K,M,N,Temp,Max: Integer;
  S: String;
begin
  with StringGrid1, CreateForm.DB do
  begin
    Caption:=Cap+' - '+ExtractFileName(TableName);
    ColCount:=FieldCount+1;
    for N:=1 to ColCount-1 do Cells[N,0]:=GetFieldName(N);
    SB5.Enabled:=True;
    if CreateForm.DB.IsEmpty then ShowMessage('В файле нет записей');
    if RecordCount>0 then
    begin
      SB3.Enabled:=True;
      SB4.Enabled:=True;
      SB7.Enabled:=True;
      Button1.Enabled:=True;
      Button2.Enabled:=True;
      Button3.Enabled:=True;
      Button4.Enabled:=True;
      Button5.Enabled:=True;
      Button7.Enabled:=True;
      Button8.Enabled:=True;
      DT.Enabled:=True;
      RG.Enabled:=True;
      with RG do case CodePage of
        ANSI : ItemIndex:=0;
        OEM  : ItemIndex:=1;
        NONE : ItemIndex:=2;
      end;
    end else Exit;
    for M:=0 to ColCount-1 do
    begin
      Max:=Canvas.TextWidth(Cells[M,0])+1;
      First; N:=0;
      for K:=1 to RecordCount do
      begin
        if not Deleted or (Deleted and CB4.Checked) then
        begin
          Inc(N);
          if (N>1) and (M=0)
          then StringGrid1.RowCount:=n+1;
          if M=0 then Cells[M,N]:=IntToStr(RecNo) else
          begin
            S:=GetFieldData(M);
            if CB2.Checked and (GetFieldType(M)=bfString) then Translate(S,S,False);
            Cells[M,N]:=S;
          end;
          Temp:=Canvas.TextWidth(Cells[M,N]);
          if Temp>Max then Max:=Temp;
        end;
        if not Eof then Next;
      end;
      ColWidths[M]:=Max+GridLineWidth+4;
    end;
    with CN do begin Cl:=1; Rw:=1; Modif:=False; Val:=Cells[1,1]; end;
    First;
  end;
  SB10.Enabled:=True;
end;

{*** Открытие файла и заполнение SG данными из файла ***}
procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  InitSG; if CreateForm.DB.Active then CreateForm.DB.Close;
  DisableButt;
  if OpenDialog1.Execute then with CreateForm.DB do
  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  InitSG; DT.Date:=Now;
end;

{*** Установка режима редактирования SG ***}
procedure TForm1.CB3Click(Sender: TObject);
begin
  if CreateForm.DB.IsEmpty then begin CB3.Checked:=False; Exit; end;
  with StringGrid1 do if CB3.Checked then Options:=Options+[goEditing]
                            else Options:=Options-[goEditing];
end;

{*** При переходе к другой ячейке SG производится синхронное перемещение в .dbf ***}
procedure TForm1.SGSelectCell(Sender: TObject; Col, Row: Integer; var CanSelect: Boolean);
var R: Integer;
begin
  if StringGrid1.Cells[0,Row]<>'' then R:=StrToInt(StringGrid1.Cells[0,Row]) else R:=1;
  with CN do if Modif then
  with CreateForm.DB do
  begin
    // Перекодировка (при необходимости) текстовых данных
    if (GetFieldType(Cl)=bfString) and (RG.ItemIndex=1) then Translate(Val, Val, True);
    // Изменение содержимого поля
    SetFieldData(Cl, Val); Modif:=False; Label1.Visible:=Modified;
  end;
  if Row<>CN.Rw then  // Переход к другой записи в .dbf
  begin
    SB8.Enabled:=False; SB9.Enabled:=False;
    // В начало
    if R=1 then
      begin
        CreateForm.DB.First; SB1.Enabled:=False; SB2.Enabled:=False;
        if StringGrid1.RowCount>2 then begin SB3.Enabled:=True; SB4.Enabled:=True; end;
      end;
    // В конец
    if R=CreateForm.DB.RecordCount then
      begin
      CreateForm.DB.Last; SB3.Enabled:=False; SB4.Enabled:=False;
      if StringGrid1.RowCount>2 then begin SB1.Enabled:=True; SB2.Enabled:=True; end;
    end;
  end;
  // К записи № ...
 if (R>1) and (R<CreateForm.DB.RecordCount)
 then
  begin
    if (R-CN.Rw)=1 then CreateForm.DB.Next // К следующей записи
    else if (CN.Rw-R)=1 then CreateForm.DB.Prior // К предыдущей записи
    else if CN.Rw<>R then CreateForm.DB.GoToRecord(R); // К записи № ...
    SB1.Enabled:=True; SB2.Enabled:=True;
    SB3.Enabled:=True; SB4.Enabled:=True;
  end;
  if CreateForm.DB.Bof then Label2.Caption:='Begin'
  else
    if CreateForm.DB.Eof then Label2.Caption:='End'
    else Label2.Caption:='';
  // Установка ширины столбца SG в соответствии с максимальным размером данных
  with StringGrid1, CN do if Canvas.TextWidth(Cells[Cl, Rw])>ColWidths[Cl] then
    ColWidths[Cl]:=Canvas.TextWidth(Cells[Cl, Rw])+GridLineWidth+4;
  with CN do begin Cl:=Col; Rw:=Row; Val:=StringGrid1.Cells[Cl,Rw]; end;
  Label1.Visible:=CreateForm.DB.Modified;
end;

procedure TForm1.SB1Click(Sender: TObject);  // First
begin
  StringGrid1.Row:=1;
end;

procedure TForm1.SB2Click(Sender: TObject);  // Prior
begin
  with StringGrid1 do if Row>1 then Row:=Row-1;
end;

procedure TForm1.SB3Click(Sender: TObject);  // Next
begin
  with StringGrid1 do if Row<(RowCount-1) then Row:=Row+1;
end;

procedure TForm1.SB4Click(Sender: TObject);  // Last
begin
  with StringGrid1 do Row:=RowCount-1;
end;

{*** Добавление новой пустой записи в конец файла .dbf и строки в SG ***}
procedure TForm1.SB5Click(Sender: TObject);
begin
  CreateForm.DB.Append;
  if CreateForm.DB.RecordCount>1
  then StringGrid1.RowCount:=StringGrid1.RowCount+1;
  StringGrid1.Cells[0,StringGrid1.RowCount-1]:=IntToStr(CreateForm.DB.RecordCount);
  StringGrid1.Row:=StringGrid1.RowCount-1;
end;

{*** Фиксирование факта изменения данных в SG (modified) ***}
procedure TForm1.SGSetEditText(Sender: TObject; ACol, ARow: Integer; const Value: String);
begin
  with CN do if (Val<>Value) and (Cl=ACol) and (Rw=ARow) then
  begin
    Modif:=True; Val:=Value;
    SB8.Enabled:=True; SB9.Enabled:=True;
  end;
end;

{*** Отмена изменений, сделанных в текущей записи ***}
procedure TForm1.SB9Click(Sender: TObject);
var N: Integer;
begin
  CreateForm.DB.Cancel; SB8.Enabled:=False; SB9.Enabled:=False;
  with StringGrid1 do
   for N:=1 to ColCount-1 do
    Cells[N, Row]:=CreateForm.DB.GetFieldData(N);
end;

{*** Обновление содержимого SG данными из файла .dbf ***}
procedure TForm1.SB10Click(Sender: TObject);
begin
  with CreateForm.DB do
   if Active
   then
    begin
     InitSG;
     Refresh;
     FillSG;
    end;
end;

{*** Показать (или наоборот) записи .dbf, помеченные как удаленные ***}
procedure TForm1.CB4Click(Sender: TObject);
begin
 SB10.Click;
end;

{*** Записать в текущую запись сделанные изменения ***}
procedure TForm1.SB8Click(Sender: TObject);
begin
  with CN do if Modif then
  begin
    CreateForm.DB.SetFieldData(Cl, Val); Modif:=False; Label1.Visible:=CreateForm.DB.Modified;
  end;
  CreateForm.DB.Post; SB8.Enabled:=False; SB9.Enabled:=False;
end;

{*** Очистить содержимое полей текущей записи ***}
procedure TForm1.Button1Click(Sender: TObject);
var N: Integer;
begin
  CreateForm.DB.ClearFields;
  for N:=1 to CreateForm.DB.FieldCount do StringGrid1.Cells[N,CN.Rw]:=CreateForm.DB.GetFieldData(N);
  SB8.Enabled:=True; SB9.Enabled:=True;
end;

{*** Пометить текущую запись как удаленную ***}
procedure TForm1.SB7Click(Sender: TObject);
begin
  CreateForm.DB.Deleted:=True;
  if not CB4.Checked then SB10.Click;
end;

{*** Пометить текущую запись как неудаленную ***}
procedure TForm1.Button2Click(Sender: TObject);
begin
  with CreateForm.DB do if Deleted then Deleted:=False; 
end;

{*** Получить информацию о поле выделенной ячейки SG ***}
procedure TForm1.Button3Click(Sender: TObject);
var T: String;
begin
  case CreateForm.DB.GetFieldType(CN.Cl) of
    bfBoolean : T:='bfBoolean';
    bfDate    : T:='bfDate';
    bfFloat   : T:='bfFloat';
    bfNumber  : T:='bfNumber';
    bfString  : T:='bfString';
    bfUnkown  : T:='bfUnkown';
  end;                              
  ShowMessage('Имя поля'+#9+': '+CreateForm.DB.GetFieldName(CN.Cl)+#13+
              'Тип поля'+#9+': '+T+#13+
              'Размер поля'+#9+': '+IntToStr(CreateForm.DB.GetFieldSize(CN.Cl))+#13+
              'Точность'+#9+': '+IntToStr(CreateForm.DB.GetFieldPrecision(CN.Cl))+#13+
              'Данные поля'+#9+': '+CreateForm.DB.GetFieldData(CN.Cl));
end;

{*** Изменение кодовой страницы файла .dbf (данные в файле при этом не меняются) ***}
procedure TForm1.RGClick(Sender: TObject);
begin
  with CreateForm.DB do
  case RG.ItemIndex of
    0 : CodePage:=ANSI;
    1 : CodePage:=OEM;
    2 : CodePage:=NONE;
  end;
end;

{*** Удаление всех записей из файла .dbf и очистка SG ***}
procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageBox(0,'Очистить таблицу?', Cap, mb_iconwarning+mb_yesno)=idyes then
    begin CreateForm.DB.EmptyTable; InitSG; FillSG; CB3.Checked:=False; end;
end;

{*** Упаковка файла .dbf (физическое удаление из файла записей, помеченных как удаленные) ***}
procedure TForm1.Button5Click(Sender: TObject);
begin
  CreateForm.DB.PackTable; InitSG; FillSG;
end;

{*** Создание нового файла .dbf ***}
procedure TForm1.Button6Click(Sender: TObject);
begin
  InitSG; if CreateForm.DB.Active then CreateForm.DB.Close;
  DisableButt;
  CreateForm.ShowModal; // Переход к работе в форме определения полей файла
  if CreateForm.DB.Active then FillSG;
end;

{*** Получение даты последней модификации файла .dbf ***}
procedure TForm1.Button7Click(Sender: TObject);
begin
  ShowMessage('Дата последней модификации файла'+#13+
              ExtractFileName(CreateForm.DB.TableName)+' : '+
              DateToStr(CreateForm.DB.DbfDate));
end;

{*** Установка новой даты последней модификации файла .dbf ***}
procedure TForm1.Button8Click(Sender: TObject);
begin
  with CreateForm.DB do
  begin
    DbfDate:=DT.Date;
    ShowMessage('Новая дата последней модификации файла'+#13+
                ExtractFileName(TableName)+' : '+DateToStr(DbfDate));
  end;
end;

end.
