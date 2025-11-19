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
  dbf,dbf_common,Data.Win.ADODB,System.RegularExpressions, IBX.IBCustomDataSet,
  frxClass, frxDBSet, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, IBX.IBQuery,inifiles,
  frxDesgn;

type
  TForm37 = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    IBOBOR: TIBDataSet;
    DSOBOR: TDataSource;
    cxGridDBTableView1CH: TcxGridDBColumn;
    cxGridDBTableView1NAIM: TcxGridDBColumn;
    IBOBORPERIOD: TDateField;
    IBOBORSCHET: TIBStringField;
    IBOBORUPD: TIntegerField;
    IBOBORNAIM: TIBStringField;
    IBOBORCH: TIntegerField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    IBOBORDOLG: TFloatField;
    IBOBORDOLGREP: TFloatField;
    cxGridDBTableView1DOLG: TcxGridDBColumn;
    cxGridDBTableView1DOLGREP: TcxGridDBColumn;
    IBQuery1: TIBQuery;
    IBQuery1SCHET: TIBStringField;
    IBQuery1MAXDT: TDateField;
    IBQuery1SUM: TFloatField;
    cxCalcEdit1: TcxCalcEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    frxDesigner1: TfrxDesigner;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure start;
    function SearchSchet2(schet:string):string;
    procedure RecalcFooterSum;
  public
    { Public declarations }
  end;

var
  Form37: TForm37;
  st1,poslug,tip,path,filepath,pathtmp,SotrNach,SotrBuhg:string;
  table,tobor,twid,topl:TDbf;
  iniFile:TIniFile;
implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, DateUtils, math, dprocess,
  Unit12, Unit11,cxGridDBDataDefinitions;


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

procedure TForm37.RecalcFooterSum;
var
  DC: TcxGridDBDataController;
  i, CHIndex, AmountIndex: Integer;
  Sum: Double;
begin
  DC := cxGridDBTableView1.DataController;
  CHIndex := cxGridDBTableView1CH.Index;          // індекс колонки CH
  AmountIndex := cxGridDBTableView1DOLGREP.Index;  // індекс колонки AMOUNT
  //cxGrid1DBTableView1.DataController.GetItemByFieldName('CH').EditValue;

  Sum := 0;

  for i := 0 to DC.RecordCount - 1 do
  begin
//    if not DC.IsRecordDeleted(i) then
//    begin
      if DC.Values[i, CHIndex] = 1 then
        Sum := Sum + DC.Values[i, AmountIndex];
//        Sum := Sum + VarAsType(DC.Values[i, AmountIndex], varDouble);
//    end;
  end;

  // Присвоюємо результат у підсумок
  // 0 — це індекс FooterSummaryItem, який відповідає колонці AMOUNT
  DC.Summary.FooterSummaryValues[7] := Sum;

  // Заносимо результат у FooterSummary
//  cxGridDBTableView1.DataController.Summary.FooterSummaryValues[7] := Sum;

end;

procedure TForm37.cxButton3Click(Sender: TObject);
begin

frxReport1.LoadFromFile('report/виписка.fr3');
frxReport1.Variables['schet']:=''''+trim(Form12.IBKARTSCHET.Value)+'''';
frxReport1.Variables['fio']:=''''+trim(Form12.IBKARTFIO.Value)+'''';
frxReport1.Variables['ul']:=''''+trim(Form12.IBKARTULNAIM.AsString)+' буд.'+trim(Form12.IBKARTNOMDOM.AsString)+iif(trim(Form12.IBKARTNOMKV.AsString)<>'',' кв.'+trim(Form12.IBKARTNOMKV.AsString),'')+'''';
frxReport1.Variables['koli_k']:=Form12.IBKARTKOLI_K.Value;
frxReport1.Variables['plos_ob']:=Form12.IBKARTPLOS_OB.Value;
frxReport1.Variables['koli_p']:=Form12.IBKARTKOLI_P.Value;
frxReport1.Variables['dolg_dt']:=''''+mon_slovoDt2(cxDateEdit1.Date)+'''';
frxReport1.Variables['opl_dt']:=''''+DateToStr(cxDateEdit2.Date)+'''';
frxReport1.Variables['opl']:=cxCalcEdit1.Value;
frxReport1.Variables['nach']:=''''+cxTextEdit2.Text+'''';
frxReport1.Variables['buhg']:=''''+cxTextEdit3.Text+'''';
frxReport1.Variables['dt']:=''''+DateToStr(cxDateEdit3.Date)+'''';
frxReport1.Variables['sum']:=cxGridDBTableView1.DataController.Summary.FooterSummaryValues[7];
frxReport1.Variables['org']:=''''+Form1.ORG+'''';
//TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText;


//     cxCalcEdit1.Value:=IBQuery1SUM.AsCurrency;
//     cxDateEdit2.Date:=IBQuery1MAXDT.AsDateTime;
//     cxDateEdit1.Date:=Form12.IBPERPERIOD.Value;
//     cxDateEdit3.Date:=Now;
//     cxLabel3.Caption:=trim(Form12.IBKARTSCHET.Value);
//     cxLabel4.Caption:=trim(Form12.IBKARTFIO.Value);
//     cxLabel5.Caption:=trim(Form12.IBKARTULNAIM.AsString)+' буд.'+trim(Form12.IBKARTNOMDOM.AsString)+iif(trim(Form12.IBKARTNOMKV.AsString)<>'',' кв.'+trim(Form12.IBKARTNOMKV.AsString),'');
//     cxLabel7.Caption:=trim(Form12.IBKARTKOLI_K.AsString);
//     cxLabel9.Caption:=trim(Form12.IBKARTPLOS_OB.AsString);
//     cxLabel17.Caption:=trim(Form12.IBKARTKOLI_P.AsString);

//frxReport1.Variables['fio']:=''''+mon_slovoDt(Ordposlmesdt2)+'''';
//frxReport1.Variables['dtmes1']:=Ordposlmesdt1;
//frxReport1.Variables['dtmes2']:=Ordposlmesdt2;
//frxReport1.Variables['org']:=''''+Form1.ORG+'''';
//frxReport1.DesignReport();
frxReport1.ShowReport;

end;

procedure TForm37.cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item = cxGridDBTableView1ch then
    cxGridDBTableView1.DataController.Summary.CalculateFooterSummary;
    //#,##0.00
end;

procedure TForm37.cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
var
  si: TcxGridDBTableSummaryItem;
  AValue: Variant;
begin
  AValue := cxGridDBTableView1.DataController.Values[Arguments.RecordIndex, cxGridDBTableView1ch.Index];
  si := Arguments.SummaryItem as TcxGridDBTableSummaryItem;
  if si.Column = cxGridDBTableView1DOLGREP then
    OutArguments.Done := AValue = 0;   //not OutArguments.Value;
end;

procedure TForm37.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if trim(cxTextEdit2.Text)<>SotrNach then
    begin
      Form11.IniFile.WriteString('Sotr','Nach',trim(cxTextEdit2.Text));
    end;
    if trim(cxTextEdit3.Text)<>SotrBuhg then
    begin
      Form11.IniFile.WriteString('Sotr','Buhg',trim(cxTextEdit3.Text));
    end;
end;

procedure TForm37.FormShow(Sender: TObject);
begin
     IBOBOR.Close;
     IBOBOR.ParamByName('sch').Value:=trim(Form12.IBKARTSCHET.Value);
     IBOBOR.ParamByName('dt').Value:=Form12.IBPERPERIOD.Value;
     IBOBOR.open;

     IBQuery1.Close;
     IBQuery1.ParamByName('sch').Value:=trim(Form12.IBKARTSCHET.Value);
     IBQuery1.ParamByName('dt').Value:=Form12.IBPERPERIOD.Value;
     IBQuery1.open;
     cxCalcEdit1.Value:=IBQuery1SUM.AsCurrency;
     cxDateEdit2.Date:=IBQuery1MAXDT.AsDateTime;
     cxDateEdit1.Date:=Form12.IBPERPERIOD.Value;
     cxDateEdit3.Date:=Now;
     cxLabel3.Caption:=trim(Form12.IBKARTSCHET.Value);
     cxLabel4.Caption:=trim(Form12.IBKARTFIO.Value);
     cxLabel5.Caption:=trim(Form12.IBKARTULNAIM.AsString)+' буд.'+trim(Form12.IBKARTNOMDOM.AsString)+iif(trim(Form12.IBKARTNOMKV.AsString)<>'',' кв.'+trim(Form12.IBKARTNOMKV.AsString),'');
     cxLabel7.Caption:=trim(Form12.IBKARTKOLI_K.AsString);
     cxLabel9.Caption:=trim(Form12.IBKARTPLOS_OB.AsString);
     cxLabel17.Caption:=trim(Form12.IBKARTKOLI_P.AsString);
     SotrNach:=Form11.iniFile.ReadString('Sotr','Nach','');
     cxTextEdit2.Text:=SotrNach;
     SotrBuhg:=Form11.iniFile.ReadString('Sotr','Buhg','');
     cxTextEdit3.Text:=SotrBuhg;

     //RecalcFooterSum;
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
