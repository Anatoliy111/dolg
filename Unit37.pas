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
  dbf,dbf_common,Data.Win.ADODB,System.RegularExpressions, IBX.IBCustomDataSet;

type
  TForm37 = class(TForm)
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    cxButton3: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxLabel4: TcxLabel;
    IBOBOR: TIBDataSet;
    DSOBOR: TDataSource;
    cxGridDBTableView1SAL: TcxGridDBColumn;
    cxGridDBTableView1SALREP: TcxGridDBColumn;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    IBOBORSAL: TFloatField;
    IBOBORSALREP: TFloatField;
    IBOBORNAIM: TIBStringField;
    IBOBORCH: TIntegerField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure start;
    function SearchSchet2(schet:string):string;
  public
    { Public declarations }
  end;

var
  Form37: TForm37;
  st1,poslug,tip,path,filepath,pathtmp:string;
  table,tobor,twid,topl:TDbf;
implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, DateUtils, math, dprocess,
  Unit12;


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


        if SearchSchet2(Form1.IBREPDSCHET.Value)='' then
        begin
           messagedlg('Помилка!!! - рахунок '+Form1.IBREPDSCHET.Value+' не знайдено!',mtError,[mbCancel],0);
           close;
        end;

        cxLabel3.Caption:=Form1.IBREPDSCHET.Value;
        cxLabel4.Caption:=Form1.IBREPDFIO.Value;
end;

procedure TForm37.FormShow(Sender: TObject);
begin
IBOBOR.Close;
     IBOBOR.ParamByName('sch').Value:=trim(Form12.IBKARTSCHET.Value);
     IBOBOR.ParamByName('dt').Value:=Form12.IBPERPERIOD.Value;
     IBOBOR.open;
end;

function TForm37.SearchSchet2(schet:string):string;
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
            tobor.close;
//            tobor.Filter := +format('schet=''%s''',[trim(schet)]);
//            tobor.Filtered:=true;
            tobor.Open;


end;

end.
