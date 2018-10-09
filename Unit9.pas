unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBCtrls, StdCtrls,dbf, dbf_common,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxProgressBar, cxDBLookupComboBox, ComCtrls;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    cxProgressBar1: TcxProgressBar;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1SCHET: TcxGridDBColumn;
    cxGrid1DBTableView1BORG01: TcxGridDBColumn;
    cxGrid1DBTableView1NARAH: TcxGridDBColumn;
    cxGrid1DBTableView1BORG31: TcxGridDBColumn;
    cxGrid1DBTableView1NOMVL: TcxGridDBColumn;
    cxGrid1DBTableView1DATAVL: TcxGridDBColumn;
    cxGrid1DBTableView1PERVL: TcxGridDBColumn;
    cxGrid1DBTableView1SUMVL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMDR: TcxGridDBColumn;
    cxGrid1DBTableView1DATADR: TcxGridDBColumn;
    cxGrid1DBTableView1PERDR: TcxGridDBColumn;
    cxGrid1DBTableView1SUMDR: TcxGridDBColumn;
    cxGrid1DBTableView1ZABORG: TcxGridDBColumn;
    cxGrid1DBTableView1PERIOD: TcxGridDBColumn;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
      CLOSING:Boolean;

implementation

{$R *.dfm}

uses dateutils, Unit1;

procedure TForm9.Button1Click(Sender: TObject);
var bpath,s:string;
  ob:TDbf;
  dpath,sch:string;
  ns:Integer;
  st:pchar;
  st1,ul,dom:string;
  ExB: WORD;
  myLookup: Variant;

begin
  if DateTimePicker1.DateTime = null then
  begin
     ShowMessage('Помилка! Не вибраний період завантаження!');
     Exit;
  end
    else
       DateTimePicker1.DateTime := StrToDate('01.'+FormatDateTime('mm.yyyy', DateTimePicker1.Date));


Button1.Enabled:= false;
DBNavigator1.Enabled:= false;
Button2.Enabled:= false;
CLOSING:=false;

//  if Form1.IBNACH.State in [dsInsert,dsEdit] then
//     Form1.IBNACH.Post;

 Form1.IBQuery1.SQL.Text:= 'select * from strokd where period=:period';
  Form1.IBQuery1.ParamByName('period').Value := DateTimePicker1.DateTime;
  Form1.IBQuery1.Open;
  if Form1.IBQuery1.RecordCount <> 0 then
  begin
    ExB:=MessageBox(handle,pchar('Дані за вибраний період вже існують. Перезаписати?'),pchar('Увага!!!'),52);
    if Exb=IDYES then
    begin

      Form1.IBQuery1.SQL.Text:= 'delete from strokd where period=:period';
      Form1.IBQuery1.ParamByName('period').Value := DateTimePicker1.DateTime;
      Form1.IBQuery1.ExecSQL;
      Form1.IBSTROKD.Close;
      Form1.IBSTROKD.Open;
    end
    else
    begin
    Form1.DSSTROKD.Enabled:=true;
Button1.Enabled:= true;
DBNavigator1.Enabled:= true;
Button2.Enabled:= true;
      Exit;
    end;

  end;


  if OpenDialog1.Execute then
  begin
  dpath:=OpenDialog1.FileName;
    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

//    if st1 <> 'rep326.dbf' then
//    begin
//        ShowMessage('Помилка! Файл повинен бути rep326.dbf');
//        Form1.DSSTROKD.Enabled:=true;
//Button1.Enabled:= true;
//DBNavigator1.Enabled:= true;
//Button2.Enabled:= true;
//        Exit;
//    end;
  Form1.DSSTROKD.Enabled:=false;
  ob:=TDbf.Create(self);

  try



        ob.TableName:=dpath;

        ob.Open;
        cxProgressBar1.Position:=0;
        cxProgressBar1.Properties.Min:=0;
       cxProgressBar1.Properties.Max:=ob.RecordCount-1;


        while not ob.eof do
        begin
        cxProgressBar1.Position:=cxProgressBar1.Position+1;
        Application.ProcessMessages;
        if CLOSING then
        begin
        Form1.DSSTROKD.Enabled:=true;
         Button1.Enabled:= true;
         DBNavigator1.Enabled:= true;
         Button2.Enabled:= true;
           exit;
        end;




            if trim(ob.Fields.FieldByNumber(2).Value) <> '' then
            begin
              sch := trim(ob.Fields.FieldByNumber(2).Value);
            end;

            Form1.IBSTROKD.Insert;
            Form1.IBSTROKDSCHET.Value := sch;
            Form1.IBSTROKDPERIOD.Value := DateTimePicker1.DateTime ;
            Form1.IBSTROKDBORG01.Value := ob.Fields.FieldByNumber(6).Value;
            Form1.IBSTROKDNARAH.Value := ob.Fields.FieldByNumber(7).Value;
            Form1.IBSTROKDBORG31.Value := ob.Fields.FieldByNumber(8).Value;
            Form1.IBSTROKDNOMVL.Value := trim(ob.Fields.FieldByNumber(9).Value);
            Form1.IBSTROKDDATAVL.Value := trim(ob.Fields.FieldByNumber(10).Value);
            Form1.IBSTROKDPERVL.Value := trim(ob.Fields.FieldByNumber(11).Value);
            Form1.IBSTROKDSUMVL.Value := ob.Fields.FieldByNumber(12).Value;
            Form1.IBSTROKDNOMDR.Value := trim(ob.Fields.FieldByNumber(13).Value);
            Form1.IBSTROKDDATADR.Value := trim(ob.Fields.FieldByNumber(14).Value);
            Form1.IBSTROKDPERDR.Value := trim(ob.Fields.FieldByNumber(15).Value);
            Form1.IBSTROKDSUMDR.Value := ob.Fields.FieldByNumber(16).Value;
            Form1.IBSTROKDZABORG.Value := ob.Fields.FieldByNumber(17).Value;
            Form1.IBSTROKD.Post;
//            end;
          ob.Next;
        end;
        ob.Close;
//        if Form1.IBKART.State in [dsInsert,dsEdit] then Form1.IBKART.Post;
//        if Form1.IBNACH.State in [dsInsert,dsEdit] then Form1.IBNACH.Post;
  Form1.IBTransaction1.CommitRetaining;
  ShowMessage('Імпорт виконано!');
  finally
    ob.Free;
  end;
  end;
Form1.DSSTROKD.Enabled:=true;
Form1.IBSTROKD.close;
Form1.IBSTROKD.open;
Button1.Enabled:= true;
DBNavigator1.Enabled:= true;
Button2.Enabled:= true;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
    ExB:=MessageBox(handle,pchar('Таблиця буде повністю очищена. Продовжити?'),pchar('Увага!!!'),52);
    if Exb=IDYES then
    begin
Form1.IBQuery1.SQL.Text:= 'delete from strokd';
Form1.IBQuery1.ExecSQL;
Form1.IBSTROKD.Close;
Form1.IBSTROKD.Open;
    end;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
CLOSING:=true;
Button1.Enabled:= true;
DBNavigator1.Enabled:= true;
Button2.Enabled:= true;
end;

end.
