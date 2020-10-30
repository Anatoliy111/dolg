unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ADODB, DB, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls, cxProgressBar,
  inifiles, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm21 = class(TForm)
    FileOpenDialog: TFileOpenDialog;
    ButtonOK: TButton;
    ADOQuery: TADOQuery;
    MemoLog: TMemo;
    ButtonOpen: TButton;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    cxComboBox2: TcxComboBox;
    cxComboBox1: TcxComboBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    CheckBox1: TCheckBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxProgressBar1: TcxProgressBar;
    Label8: TLabel;
    cxComboBox3: TcxComboBox;
    IBQuery1: TIBQuery;
    DSIBQuery1: TDataSource;
    IBQuery1SCH: TIBStringField;
    IBQuery1COD: TIntegerField;
    IBQuery1SUMMA: TFloatField;
    ADOConnection1: TADOConnection;
    RadioButton1: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure EditNumbPkChange(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure EnabledTrue();
    procedure EnabledFalse();
    function GenerateNewFilename(): String;
    procedure ButtonOpenClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;
  iniFile:TIniFile;

implementation

{$R *.dfm}

uses StrUtils, Unit1;

var
  FilePath, FileName: String;
  fl: Boolean;

function TForm21.GenerateNewFilename(): String;
var
  NumbPk: String;
begin
//  if fl then begin
//    case Length(EditNumbPk.Text) of
//      2: NumbPk := EditNumbPk.Text;
//      1: NumbPk := '0' + EditNumbPk.Text;
//      0: NumbPk := '00';
//    end;
//    GenerateNewFilename := Copy(FileName, 1, 4) + FormatDateTime('yymmdd', DateTimePicker1.Date) + NumbPk;
//  end;
end;

procedure TForm21.RadioButton1Click(Sender: TObject);
begin
cxLookupComboBox1.Visible:=true;
cxLookupComboBox2.Visible:=false;
cxLookupComboBox3.Visible:=true;
cxLookupComboBox4.Visible:=true;
Label1.Visible:=true;
Label1.Caption:='Період з';

Label2.Visible:=false;
Label6.Visible:=true;
Label7.Visible:=true;
end;

procedure TForm21.RadioButton2Click(Sender: TObject);
begin
cxLookupComboBox1.Visible:=true;
cxLookupComboBox2.Visible:=false;
cxLookupComboBox3.Visible:=false;
cxLookupComboBox4.Visible:=false;
Label1.Visible:=true;
Label1.Caption:='Період з';

Label2.Visible:=false;
Label6.Visible:=false;
Label7.Visible:=false;
end;

procedure TForm21.RadioButton3Click(Sender: TObject);
begin
cxLookupComboBox1.Visible:=true;
cxLookupComboBox2.Visible:=true;
cxLookupComboBox3.Visible:=true;
cxLookupComboBox4.Visible:=true;
Label1.Visible:=true;
Label1.Caption:='Нарахування з';
Label2.Visible:=true;
Label6.Visible:=true;
Label6.Caption:='Оплата з';
Label7.Visible:=true;
end;

procedure TForm21.RadioButton4Click(Sender: TObject);
begin
cxLookupComboBox1.Visible:=false;
cxLookupComboBox2.Visible:=false;
cxLookupComboBox3.Visible:=true;
cxLookupComboBox4.Visible:=true;
Label1.Visible:=false;
Label1.Caption:='Нарахування з';
Label2.Visible:=false;
Label6.Visible:=true;
Label6.Caption:='Оплата з';
Label7.Visible:=true;
end;

procedure TForm21.RadioButton5Click(Sender: TObject);
begin
cxLookupComboBox1.Visible:=true;
cxLookupComboBox2.Visible:=true;
cxLookupComboBox3.Visible:=false;
cxLookupComboBox4.Visible:=false;
Label1.Visible:=true;
Label1.Caption:='Нарахування з';
Label2.Visible:=true;

Label6.Visible:=false;
Label6.Caption:='Оплата з';
Label7.Visible:=false;
end;

procedure TForm21.EnabledTrue();
begin
//  DateTimePicker1.Enabled := True;
//  EditNumbPk.Enabled := True;
//  UpDown1.Enabled := True;
//  ButtonOk.Enabled := True;
end;

procedure TForm21.EnabledFalse();
begin
//  DateTimePicker1.Enabled := False;
//  EditNumbPk.Enabled := False;
//  UpDown1.Enabled := False;
//  LabelNewFileName.Caption := '';
//  ButtonOk.Enabled := False;
end;

procedure TForm21.FormCreate(Sender: TObject);
begin
  //FileOpenDialog.DefaultFolder := ExtractFileDir(Application.ExeName);
//  DateTimePicker1.Date := Now;
          cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
          cxLookupComboBox2.EditValue:=Form1.IBPERIODPERIOD.Value;
          cxLookupComboBox3.EditValue:=Form1.IBPERIODPERIOD.Value;
          cxLookupComboBox4.EditValue:=Form1.IBPERIODPERIOD.Value;

end;

procedure TForm21.ButtonOpenClick(Sender: TObject);
var
  FilePathSh,newfile: String;
  i:integer;
begin



  if FileOpenDialog.Execute then begin
    MemoLog.Lines.Add('-----' + #13#10 + 'Обработка: ' + FileOpenDialog.FileName);

    FilePath := ExtractFilePath(FileOpenDialog.FileName);
    FilePathSh := Copy(FilePath, 1, Length(FilePath) - 1);
    FileName := ExtractFileName(FileOpenDialog.FileName);

    if (UpperCase(RightStr(FileName,3))<>'DBF') then
    begin
       newfile:=LeftStr(FileName,Length(FileName)-3)+'dbf';
       newfile:=StringReplace(newfile,'(','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,')','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,'-','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,'_','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,'/','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,'\','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,'*','',[rfReplaceAll,rfIgnoreCase]);
       newfile:=StringReplace(newfile,' ','',[rfReplaceAll,rfIgnoreCase]);

       CopyFile(PChar(FilePath+FileName),PChar(FilePath+newfile),false);
       if FileExists(FilePath+newfile) then
       FileName := newfile
       else
       exit;
    end;

//    if (Length(FileName) <> 16) or (Copy(FileName, 1, 1) <> '5') then begin
//      //MessageBox(handle, PChar('Неверный файл!'), PChar('RenamePack'), 16);
//      MemoLog.Lines.Add('Неверный файл!');
//      EnabledFalse();
//      Exit;
//    end else begin
      fl := true;
      ADOConnection1.Connected := False;
      ADOQuery.Active := False;
//      ADOConnection.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source="' + FilePathSh + '";Extended Properties="DBASE IV;";"';
      ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dBASE Files;Initial Catalog='+ FilePath;
      ADOConnection1.Connected := True;
//      ADODataSet1.
     // ADOQuery.SQL.Text := 'SELECT mtime, pachka, sum_pack, count_pack FROM ' + FileName;
     // ADOQuery.Active := True;



      if ADOConnection1.Connected then begin
        cxLookupComboBox1.Visible:=true;
        Label1.Caption:='Період з';
        cxLookupComboBox2.Visible:=false;
        cxLookupComboBox3.Visible:=false;
        cxLookupComboBox4.Visible:=false;
        RadioButton2.Checked:=true;
        ADODataSet1.Active:=false;
        ADODataSet1.CommandText:='select * from '+FileName;
        ADODataSet1.Active:=true;
        if ADODataSet1.Active then begin
//          cxComboBox1.Enabled:=true;
//          cxComboBox2.Enabled:=true;
          GroupBox1.Enabled:=true;
          ButtonOK.Enabled:=true;
          MemoLog.Lines.Add('  Файл:'+FileName);
          MemoLog.Lines.Add('  Кіль.записів:'+IntToStr(ADODataSet1.RecordCount));
          cxComboBox1.Properties.Items.Clear;
          for i := 0 to ADODataSet1.FieldCount - 1 do // Перебираем все поля
          begin
              cxComboBox1.Properties.Items.Add(ADODataSet1.Fields[i].FieldName);
              cxComboBox2.Properties.Items.Add(ADODataSet1.Fields[i].FieldName);
              cxComboBox3.Properties.Items.Add(ADODataSet1.Fields[i].FieldName);
          end;



//              cxComboBox1.Properties.Items.AddObject('Item', ADODataSet1.Fields[i].FieldName);
            // MemoLog.Lines.Add(ADODataSet1.Fields[i].FieldName);
        end;


//        MemoLog.Lines.Add('  Файл:');
//        MemoLog.Lines.Add('  дата пакета:' + #9 + Copy(FileName, 9, 2) + '.' + Copy(FileName, 7, 2) + '.' + Copy(FileName, 5, 2));
//        MemoLog.Lines.Add('  номер пакета: ' + #9 + Copy(FileName, 11, 2));
//
//        MemoLog.Lines.Add('  БД:');
//        MemoLog.Lines.Add('  имя пакета: ' + #9 + ADOQuery.Recordset.Fields.Item[1].Value);
//        MemoLog.Lines.Add('  дата платежей: ' + #9 + Copy(ADOQuery.Recordset.Fields.Item[0].Value, 1, 10));
//        MemoLog.Lines.Add('  кол. платежей: ' + #9 + IntToStr(ADOQuery.Recordset.Fields.Item[3].Value));
//        MemoLog.Lines.Add('  сумма пакета: ' + #9 + FloatToStr(ADOQuery.Recordset.Fields.Item[2].Value));
//
//        EnabledTrue();
//        LabelNewFileName.Caption := GenerateNewFilename();
//      end;
    end;
  end;
end;

procedure TForm21.DateTimePicker1Change(Sender: TObject);
begin
//  LabelNewFileName.Caption := GenerateNewFilename();
end;

procedure TForm21.EditNumbPkChange(Sender: TObject);
begin
//  LabelNewFileName.Caption := GenerateNewFilename();
end;

procedure TForm21.ButtonOKClick(Sender: TObject);
var ex:boolean;
    d1,d2,d3,d4,i,cod,rr:integer;
    s1,s2,s3,s4,sch:string;
    sum:Currency;
    ss:variant;
begin
   ex:=false;
  if cxComboBox1.EditValue=null then
  begin
    ex:=true;
    ShowMessage('Виберіть поле рахунку');
  end;

    if cxComboBox2.EditValue=null then
  begin
    ex:=true;
    ShowMessage('Виберіть поле для заповнення');
  end;

  if cxComboBox3.EditValue=null then
  begin
    ex:=true;
    ShowMessage('Виберіть поле кода послуги');
  end;




//  d1:=StrToInt(Concat(Copy(cxLookupComboBox1.EditValue,4,4),Copy(cxLookupComboBox1.EditValue,1,2)));
//  d2:=StrToInt(Concat(Copy(cxLookupComboBox2.EditValue,4,4),Copy(cxLookupComboBox2.EditValue,1,2)));
//  d3:=StrToInt(Concat(Copy(cxLookupComboBox3.EditValue,4,4),Copy(cxLookupComboBox3.EditValue,1,2)));
//  d4:=StrToInt(Concat(Copy(cxLookupComboBox4.EditValue,4,4),Copy(cxLookupComboBox4.EditValue,1,2)));
//
//  s1:=Concat(Copy(cxLookupComboBox1.EditValue,4,4),'.',Copy(cxLookupComboBox1.EditValue,1,2),'.01');
//  s2:=Concat(Copy(cxLookupComboBox2.EditValue,4,4),'.',Copy(cxLookupComboBox2.EditValue,1,2),'.01');
//  s3:=Concat(Copy(cxLookupComboBox3.EditValue,4,4),'.',Copy(cxLookupComboBox3.EditValue,1,2),'.01');
//  s4:=Concat(Copy(cxLookupComboBox4.EditValue,4,4),'.',Copy(cxLookupComboBox4.EditValue,1,2),'.01');

  d1:=StrToInt(Concat(Copy(cxLookupComboBox1.EditValue,7,4),Copy(cxLookupComboBox1.EditValue,4,2)));
  d2:=StrToInt(Concat(Copy(cxLookupComboBox2.EditValue,7,4),Copy(cxLookupComboBox2.EditValue,4,2)));
  d3:=StrToInt(Concat(Copy(cxLookupComboBox3.EditValue,7,4),Copy(cxLookupComboBox3.EditValue,4,2)));
  d4:=StrToInt(Concat(Copy(cxLookupComboBox4.EditValue,7,4),Copy(cxLookupComboBox4.EditValue,4,2)));

  s1:=cxLookupComboBox1.EditValue;
  s2:=cxLookupComboBox2.EditValue;
  s3:=cxLookupComboBox3.EditValue;
  s4:=cxLookupComboBox4.EditValue;


//  d2:=StrToInt(IntToStr(ADODataSetSQL1year.Value)+IntToStr(ADODataSetSQL1month.Value));
  if RadioButton3.Checked then
    if (d1 > d2) then
    begin
      ex:=true;
      ShowMessage('Початковий період нарахування більший за кінцевий');
    end;

  if RadioButton3.Checked then
    if (d3 > d4) then
    begin
      ex:=true;
      ShowMessage('Початковий період оплати більший за кінцевий');
    end;


  if RadioButton5.Checked then
    if d1 > d2 then
    begin
      ex:=true;
      ShowMessage('Початковий період нарахування більший за кінцевий');
    end;

  if RadioButton4.Checked then
    if d3 > d4 then
    begin
      ex:=true;
      ShowMessage('Початковий період оплати більший за кінцевий');
    end;

  if RadioButton1.Checked then
    if d3 > d4 then
    begin
      ex:=true;
      ShowMessage('Початковий період оплати більший за кінцевий');
    end;

  if not ex then
  begin
    ADODataSet1.Close;
    ADODataSet1.Open;


    if RadioButton2.Checked then
    begin
    IBQuery1.close;
    IBQuery1.SQL.Text:=' select trim(ob.schet) sch, lg.cod cod, ob.dolg summa from vw_obor ob'+
                       ' left join lg_cod lg on ob.wid=lg.wid';
                      // ' where ob.period=:d1';
//    IBQuery1.ParamByName('d1').Value:=s1;
    IBQuery1.open;

    end;

    rr:=IBQuery1.RecordCount;

    if RadioButton3.Checked then
    begin
    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t2.schet) as sch, t2.fullnach-t2.fullopl as summa from'+
                       ' (select t1.wid, t1.schet schet, sum(t1.fullnach) fullnach, sum(t1.fullopl) fullopl from'+
                       ' (select wid, schet, fullnach, 0 fullopl from vw_obor where period>=:d1 and period<=:d2'+
                       '  union all'+
                       ' select wid, schet, 0, fullopl from vw_obor where period>=:d3 and period<=:d4) t1'+
                       ' group by t1.wid, t1.schet) t2'+
                       ' left join lg_cod lg on t2.wid=lg.wid';


    IBQuery1.ParamByName('d1').Value:=s1;
    IBQuery1.ParamByName('d2').Value:=s2;
    IBQuery1.ParamByName('d3').Value:=s3;
    IBQuery1.ParamByName('d4').Value:=s4;

    IBQuery1.open;
    end;

    if RadioButton5.Checked then
    begin
    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t1.schet) schet, sum(t1.fullnach) as summa from'+
                       ' (select wid, schet, fullnach from vw_obor where period>=:d1 and period<=:d2) t1'+
                       ' left join lg_cod lg on t1.wid=lg.wid'+
                       ' group by lg.cod, t1.schet';


    IBQuery1.ParamByName('d1').Value:=s1;
    IBQuery1.ParamByName('d2').Value:=s2;

    IBQuery1.open;
    end;

    if RadioButton4.Checked then
    begin
    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t1.schet) schet, sum(t1.fullopl) as summa from'+
                       ' (select wid, schet, fullopl from vw_obor where period>=:d3 and period<=:d4) t1'+
                       ' left join lg_cod lg on t1.wid=lg.wid'+
                       ' group by lg.cod, t1.schet';


    IBQuery1.ParamByName('d3').Value:=s3;
    IBQuery1.ParamByName('d4').Value:=s4;

    IBQuery1.open;
    end;

    if RadioButton1.Checked then
    begin
    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t2.schet) as sch, t2.dolg-t2.fullopl as summa from'+
                       ' (select t1.wid, t1.schet schet, sum(t1.dolg) dolg, sum(t1.fullopl) fullopl from'+
                       ' (select wid, schet, dolg, 0 fullopl from vw_obor where period=:d1'+
                       ' union all'+
                       ' select wid, schet, 0, fullopl from vw_obor where period>=:d3 and period<=:d4) t1'+
                       ' group by t1.wid, t1.schet) t2'+
                       ' left join lg_cod lg on t2.wid=lg.wid';

    IBQuery1.ParamByName('d1').Value:=s1;
    IBQuery1.ParamByName('d3').Value:=s3;
    IBQuery1.ParamByName('d4').Value:=s4;

    IBQuery1.open;
    end;


    rr:=IBQuery1.RecordCount;
    MemoLog.Lines.Add('-----' + #13#10 + 'Завантаження: ');

//    if (Length(VarToStr(ADODataSet1.FieldByName(cxComboBox1.EditValue).Value))>8) or (Length(VarToStr(ADODataSet1.FieldByName(cxComboBox1.EditValue).Value))<7) then
//    begin
//    ShowMessage('Можливо неправильно вибрано поле рахунку: '+cxComboBox1.EditValue+' значення: '+VarToStr(ADODataSet1.FieldByName(cxComboBox1.EditValue).Value)+' .Рахунок повинен мати вид: '+IBQuery1sch.Value);
//    exit;
//
//    end;
//
//    if (ADODataSet1.FieldByName(cxComboBox3.EditValue).Value<500) or (ADODataSet1.FieldByName(cxComboBox3.EditValue).Value>6000) then
//    begin
//    ShowMessage('Можливо неправильно вибрано поле код: '+cxComboBox3.EditValue+' значення: '+VarToStr(ADODataSet1.FieldByName(cxComboBox3.EditValue).Value)+' .Код повинен мати вид: '+IBQuery1COD.Value);
//    exit;
//
//    end;




//    iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'UpsznDolg.ini');

        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=ADODataSet1.RecordCount;
        Application.ProcessMessages;

    IBQuery1.First;
    ADODataSet1.First;
    while not ADODataSet1.Eof do
       begin
       i:=1;
       sch:=trim(ADODataSet1.FieldByName(cxComboBox1.EditValue).Value);
       cod:=ADODataSet1.FieldByName(cxComboBox3.EditValue).Value;

//       IBQuery1.First;
       ss := IBQuery1.Lookup('sch;cod', VarArrayOf([sch, cod]), 'summa');
//       ss := IBQuery1.Lookup('SCH', sch, 'SUMMA');
       if ss <> null then
          sum:=ss
       else
       begin
         MemoLog.Lines.Add('Рахунок '+sch+' та код '+IntToStr(cod)+' - не знайдено' + #13#10);
         sum:=0;
       end;


//       IBQuery1SCH.Value;
//       IBQuery1.First;
//
//       if IBQuery1.Locate('sch',sch,[]) then
//          ss:=IBQuery1SUMMA.value
//       else
//       begin
//         MemoLog.Lines.Add('Рахунок '+sch+' та код '+IntToStr(cod)+' - не знайдено' + #13#10);
//         sum:=0;
//       end;

       if CheckBox1.Checked then
       begin
         if sum<0 then sum:=0;
       end;

       ADODataSet1.Edit;
       ADODataSet1.FieldByName(cxComboBox2.EditValue).Value:=sum;
       ADODataSet1.Post;

        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;


       ADODataSet1.Next;
       end;

       ADODataSet1.Close;
       ShowMessage('Завантаження даних виконано');

//       sch:=StringReplace(sch,trim(iniFile.ReadString('ReplChr','ch'+IntToStr(i),'')),'')
  end;



//  ADOCommand.CommandText := 'UPDATE ' + FileName + ' SET pachka = ' + LabelNewFileName.Caption;
//  ADOCommand.Execute;
//  MemoLog.Lines.Add('Формирование пакета: ' + LabelNewFileName.Caption + '.dbf' + ' из ' + FileName);
//  if RenameFile(FilePath + FileName, FilePath + LabelNewFileName.Caption + '.dbf')
//  then begin
//    MemoLog.Lines.Add('Формирование выполнено');
//    EditNumbPk.Text := IntToStr(StrToInt(EditNumbPk.Text) - 1);
//  end
//  else MemoLog.Lines.Add('Формирование прошло с ошибкой');
//  EnabledFalse();
end;

end.
