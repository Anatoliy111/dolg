unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBCtrls, ExtCtrls, Menus, cxContainer,
  cxProgressBar, StdCtrls, cxButtons, cxNavigator, frxDesgn, frxClass, cxLabel,
  cxTextEdit, cxDBEdit, cxCheckBox, IBX.IBCustomDataSet,dbf,dbf_common;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1FIO: TcxGridDBColumn;
    cxGrid1DBTableView1KL: TcxGridDBColumn;
    cxGrid1DBTableView1PW: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1KL: TcxGridDBColumn;
    cxGridDBTableView1WID: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    cxButton3: TcxButton;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    cxGridDBTableView1SNAIM: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1SMS: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton1: TcxButton;
    IBKART: TIBDataSet;
    IBKARTKL: TIntegerField;
    IBKARTKONTROL: TIBStringField;
    IBKARTSCHET: TIBStringField;
    IBKARTFIO: TIBStringField;
    IBKARTIDCOD: TIBStringField;
    IBKARTORGAN: TIBStringField;
    IBKARTLG_NOFAM: TIBStringField;
    IBKARTKOLI_LG: TIBStringField;
    IBKARTKOLI_P: TFloatField;
    IBKARTKOLI_PF: TFloatField;
    IBKARTKOLI_K: TFloatField;
    IBKARTPLOS_BB: TFloatField;
    IBKARTPLOS_OB: TFloatField;
    IBKARTPRIV: TIBStringField;
    IBKARTETAG: TFloatField;
    IBKARTLGOTA: TIBStringField;
    IBKARTLG_POSV: TIBStringField;
    IBKARTLG_SER: TIBStringField;
    IBKARTLG_FIO: TIBStringField;
    IBKARTLG_DATE: TIBStringField;
    IBKARTLG_KAT: TIBStringField;
    IBKARTFL_NOLIFT: TIBStringField;
    IBKARTORG: TFloatField;
    IBKARTFLAG: TIBStringField;
    IBKARTTELEF: TIBStringField;
    IBKARTKL_UL: TFloatField;
    IBKARTULNAIM: TIBStringField;
    IBKARTNOMDOM: TIBStringField;
    IBKARTNOMKV: TIBStringField;
    IBKARTLIFT: TFloatField;
    IBKARTTELEF2: TIBStringField;
    IBKARTNOTETEL: TIBStringField;
    IBKARTNOTETEL2: TIBStringField;
    DSKART: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
  procedure expkvart(schet,val,field:string);
  procedure RunProcessHideCmd(const ACommand: string);
    { Public declarations }
  end;

var
  Form6: TForm6;
  tkart:TDbf;

implementation

uses Unit1, Unit12, Unit2, mytools;

{$R *.dfm}

procedure TForm6.cxButton1Click(Sender: TObject);
begin
IBKART.Close;
IBKART.open;
IBKART.FetchAll;

      Form2.Show;
      Form2.Label1.Caption:='Зачекайте...';
      Application.ProcessMessages;
      Form2.cxProgressBar1.Position:=0;
      Form2.cxProgressBar1.Properties.Min:=0;
      Form2.cxProgressBar1.Properties.Max:=IBKART.RecordCount-1;

      filepath:=Form1.PathTMP+'\';
      DeleteFile(filepath+'kart.mdx');
      CopyFile(PChar(Form1.PathKvart+'dbf\kart.dbf'), PChar(filepath+'\kart.dbf'), false);

   try
    tkart:=TDbf.Create(self);
    tkart.TableName:=filepath+'kart.dbf';
    tkart.Open;
    tkart.AddIndex('kart', 'schet', [ixCaseInsensitive]);

       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
   end;




  while not IBKART.eof do
  begin

    if Length(trim(IBKARTSCHET.AsString))<>0 then
    begin
      tkart.First;
      if tkart.Locate('schet',IBKARTschet.Value,[]) then
      begin
       tkart.Edit;
       tkart.FieldByName('telef').AsString:=IBKARTTELEF.AsString;
       tkart.FieldByName('telef2').AsString:=IBKARTTELEF2.AsString;
       tkart.FieldByName('notetel').AsString:=WinToDos866(IBKARTNOTETEL.AsString);
       tkart.FieldByName('notetel2').AsString:=WinToDos866(IBKARTNOTETEL2.AsString);
       tkart.post;
      end;

//      if Length(trim(IBKARTTELEF.Value))<>0 then
//         expkvart(IBKARTSCHET.Value,IBKARTTELEF.Value,'telef');
//      if Length(trim(IBKARTTELEF2.Value))<>0 then
//         expkvart(IBKARTSCHET.Value,IBKARTTELEF2.Value,'telef2');
//      if Length(trim(IBKARTNOTETEL.Value))<>0 then
//         expkvart(IBKARTSCHET.Value,IBKARTNOTETEL.Value,'notetel');
//      if Length(trim(IBKARTNOTETEL2.Value))<>0 then
//         expkvart(IBKARTSCHET.Value,IBKARTNOTETEL2.Value,'notetel2');
    end;
        Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
        Application.ProcessMessages;
  IBKART.Next;
  end;

  tkart.Close;
  tkart.Free;

  CopyFile(PChar(filepath+'\kart.dbf'), PChar(Form1.PathKvart+'dbf\kart.dbf'), false);

  Form2.Close;

end;

procedure TForm6.expkvart(schet,val,field:string);
var cmd:WideString;
    s:string;
begin
  s:=Form1.PathKvart;
if (Length(s) > 0) and (s[Length(s)] = '\') then
  s := Copy(s, 1, Length(s) - 1);
         val := StringReplace(val, 'і', 'i', [rfReplaceAll]);
         val := StringReplace(val, 'І', 'I', [rfReplaceAll]);
//         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'imp_tel '+Win2Dos(trim(schet))+' '+field+' '+Win2Dos(trim(Val))+' '+s;
         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'imp_tel '+trim(schet)+' '+field+' '+s+' '+trim(Val);
         RunProcessHideCmd(cmd);
         //ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_HIDE);
end;

procedure TForm6.RunProcessHideCmd(const ACommand: string);
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  ret: DWORD;
begin
  ZeroMemory(@StartupInfo, SizeOf(TStartupInfo));
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_HIDE;

  if CreateProcess(nil, PWideChar(ACommand), nil, nil, False,
  CREATE_NO_WINDOW, nil, nil, StartupInfo, ProcessInfo) then
  begin
    // Процесс успешно запущен
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    // Процесс завершился
    GetExitCodeProcess(ProcessInfo.hProcess, ret);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end
  else
  begin
    // Обработка ошибки
  end;
end;

procedure TForm6.cxButton3Click(Sender: TObject);
begin

frxReport1.DesignReport();
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if Form1.IBSERVICES.State in [dsInsert,dsEdit] then Form1.IBSERVICES.Post;
 if Form1.IBWID.State in [dsInsert,dsEdit] then Form1.IBWID.Post;
 if Form1.IBUSER.State in [dsInsert,dsEdit] then Form1.IBUSER.Post;
  Form1.IBTransaction1.CommitRetaining;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
  Form1.IBWID.Close;
  Form1.IBWID.open;
end;

end.
