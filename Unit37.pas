unit Unit37;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox, Vcl.Menus,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit, Vcl.StdCtrls, cxButtons,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, Vcl.ExtCtrls,
  dbf,dbf_common,Data.Win.ADODB,System.RegularExpressions;

type
  TForm37 = class(TForm)
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxButton3: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1schet: TcxGridDBColumn;
    cxGridDBTableView1ch: TcxGridDBColumn;
    cxGridDBTableView1naim: TcxGridDBColumn;
    cxGridDBTableView1sal: TcxGridDBColumn;
    cxGridDBTableView1sumpl: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    ADOQueryOBOR: TADOQuery;
    ADOQueryOBORwid: TWideStringField;
    ADOQueryOBORnaim: TWideStringField;
    ADOQueryOBORschet: TWideStringField;
    ADOQueryOBORsal: TFloatField;
    ADOQueryOBORch: TIntegerField;
    ADOQueryOBORsumpl: TFloatField;
    ADOQueryOBORfio: TStringField;
    ADOQueryOBORabonpl: TStringField;
    DSADOQueryOBOR: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure start;
    procedure dataclose;
    function SearchSchet(schet:string):string;
  public
    { Public declarations }
  end;

var
  Form37: TForm37;
  st1,poslug,tip,path,filepath,pathtmp:string;
  table,tobor,twid,topl:TDbf;
implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, DateUtils, math, dprocess;


procedure TForm37.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    tobor.Close;
    tobor.Free;
    Sleep(100);
    ADOQueryOBOR.Close;
    Application.ProcessMessages;
end;

procedure TForm37.FormShow(Sender: TObject);
begin
  start;
end;

procedure TForm37.dataclose;
begin

end;

procedure TForm37.start;
var f1:boolean;
    stroka,strmes,tempDir, strtmp:string;
    dt1,dt2,i,pusto,kol:integer;
    f : TextFile;
    MyFile: TFileStream;
  Excel: Variant;
  Workbooks: Variant;
  Workbook: Variant;
  FileInfo: TSHFileInfo;

begin





    if DirectoryExists(Form1.PathTMP) then
      filepath:=Form1.PathTMP+'\';


   try

       AssignFile(f, Form1.PathKvart+'\cur_date.mem');
       FileMode := fmOpenRead;
       Reset(f);
       Readln(f, stroka);
       strmes:=trim(Copy(stroka, 33, 2));
       CloseFile(f);
       dt2:=0;
       dt1:=StrToInt(strmes);

       if dt1=12 then dt2:=1
       else dt2:=dt1+1;



      CopyFile(PChar(path), PChar(pathtmp), false);


       CopyFile(PChar(Form1.PathKvart+'dbf\obor.dbf'), PChar(filepath+'\obor.dbf'), false);
      CopyFile(PChar(Form1.PathKvart+'dbf\wids.dbf'), PChar(filepath+'\wids.dbf'), false);
//      CopyFile(PChar(Form1.PathKvart+'dbf\opl.dbf'), PChar(filepath+'\opltmp.dbf'), false);
//      CopyFile(PChar(Form1.PathKvart+'dbf\opl.dbf'), PChar(filepath+'\opl.dbf'), false);

    ADOQueryOBOR.Close;
//    Form33.ADOQueryOBOR.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+filepath+';Mode=Read;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;';
//    Form33.ADOQueryOBOR.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=c:\temp\;Mode=ReadWrite;Jet OLEDB:Engine Type=16';
   // Form33.ADOQueryOBOR.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+filepath;
    ADOQueryOBOR.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+filepath;

    DeleteFile(filepath+'obor.mdx');
    DeleteFile(filepath+'wids.mdx');
//    DeleteFile(filepath+'opltmp.mdx');

      try
//    table:=TDbf.Create(self);
//    table.TableName:=filepath+'opltmp.dbf';
//      table.Open;
//    table.TryExclusive;
//    table.CanModify;
//    table.EmptyTable;
//    table.PackTable;
//
//
//    topl:=TDbf.Create(self);
//    topl.TableName:=filepath+'opl.dbf';
//    topl.Open;

      tobor:=TDbf.Create(self);
      tobor.TableName:=filepath+'obor.dbf';
      tobor.Open;

      tobor.AddIndex('obor', 'schet', [ixCaseInsensitive]);

      twid:=TDbf.Create(self);
      twid.TableName:=filepath+'wids.dbf';
      twid.Open;

      twid.AddIndex('wids', 'wid', [ixCaseInsensitive]);

    //tobor.Free;
      twid.close;
      twid.Free;
   // table.Free;



//    table.Exclusive := True;
       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        close;
        exit;
       end;
      end;



   except
               on E : Exception do
               begin
                messagedlg('Помилка!!! - '+E.Message,mtError,[mbCancel],0);
                close;
                exit;
               end;
   end;

//        endlistexel;


        if SearchSchet(Form1.IBREPDSCHET.Value)='' then
        begin
           messagedlg('Помилка!!! - рахунок '+Form1.IBREPDSCHET.Value+' не знайдено!',mtError,[mbCancel],0);
           close;
        end;

        cxLabel3.Caption:=Form1.IBREPDSCHET.Value;
end;

function TForm37.SearchSchet(schet:string):string;
var s,sql:string;
    RegularExpression : TRegEx;
    Match : TMatch;
begin
            s:=RightStr(schet,1);
            Match:=RegularExpression.Match(LowerCase(s),'\b[a-z]\b',[roIgnoreCase]);
            if Match.Success then
            begin
              if LowerCase(s)='a' then schet:=LeftStr(schet,Length(schet)-1)+'а';
              if LowerCase(s)='o' then schet:=LeftStr(schet,Length(schet)-1)+'о';
              if LowerCase(s)='c' then schet:=LeftStr(schet,Length(schet)-1)+'с';
              if LowerCase(s)='p' then schet:=LeftStr(schet,Length(schet)-1)+'р';
              if LowerCase(s)='k' then schet:=LeftStr(schet,Length(schet)-1)+'к';
              if LowerCase(s)='x' then schet:=LeftStr(schet,Length(schet)-1)+'х';
              if LowerCase(s)='m' then schet:=LeftStr(schet,Length(schet)-1)+'м';
            end;

            sql:='select wids.wid, wids.naim, wids.abonpl, obor.fio, obor.schet, obor.sal, 0 as ch, su_dolg as sumpl from wids,obor where wids.wid=obor.wid and obor.schet='''+trim(schet)+''' order by wids.npp';
            ADOQueryOBOR.Close;
            ADOQueryOBOR.SQL.Clear;
            ADOQueryOBOR.SQL.Append(sql);

//            Form33.ADOQueryOBOR.Parameters.ParamByName('sch').Value:=trim(schet);
            ADOQueryOBOR.Open;

//            Form33.ADOQueryOBOR.FetchAll;
            if ADOQueryOBOR.RecordCount<>0 then
               Result:=schet
            else Result:='';

end;

end.
