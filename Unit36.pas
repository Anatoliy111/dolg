unit Unit36;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,DateUtils,ExcelXP,comobj;

type
  TForm36 = class(TForm)
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    MemoLog: TMemo;
    XMLDocument1: TXMLDocument;
    IBQuery1: TIBQuery;
    cxLabel2: TcxLabel;
    IBWID: TIBDataSet;
    DSTMPWID: TDataSource;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCOD: TIBStringField;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    SaveDialog1: TSaveDialog;
    IBQuery2: TIBQuery;
    SaveDialog2: TSaveDialog;
    IBQuery2KL: TIntegerField;
    IBQuery2PERIOD: TDateField;
    IBQuery2SCHET: TIBStringField;
    IBQuery2WID: TIBStringField;
    IBQuery2COD: TIBStringField;
    IBQuery2POSLUG: TIBStringField;
    IBQuery2VID: TIBStringField;
    IBQuery2NPP: TFloatField;
    IBQuery2ED_IZMPFU: TIBStringField;
    IBQuery2FIO: TIBStringField;
    IBQuery2FFF: TIBStringField;
    IBQuery2IM: TIBStringField;
    IBQuery2OT: TIBStringField;
    IBQuery2ULNAIM: TIBStringField;
    IBQuery2NOMDOM: TIBStringField;
    IBQuery2NOMKV: TIBStringField;
    IBQuery2ORG: TFloatField;
    IBQuery2IDCOD: TIBStringField;
    IBQuery2KOLI_P: TFloatField;
    IBQuery2KOLI_PF: TFloatField;
    IBQuery2PLOS_BB: TFloatField;
    IBQuery2PLOS_OB: TFloatField;
    IBQuery2PRIV: TIBStringField;
    IBQuery2LGOTA: TIBStringField;
    IBQuery2KOEF: TFloatField;
    IBQuery2N_DOG: TIBStringField;
    IBQuery2D_DOG: TIBStringField;
    IBQuery2TARIF: TFloatField;
    IBQuery2TARSUBS: TFloatField;
    IBQuery2KL_NTAR: TFloatField;
    IBQuery2DOLG: TFloatField;
    IBQuery2NACH: TFloatField;
    IBQuery2SUBS: TFloatField;
    IBQuery2OPL: TFloatField;
    IBQuery2UDER: TFloatField;
    IBQuery2KOMP: TFloatField;
    IBQuery2WZMZ: TFloatField;
    IBQuery2WOZW: TFloatField;
    IBQuery2MOVW: TFloatField;
    IBQuery2PERE: TFloatField;
    IBQuery2SAL: TFloatField;
    IBQuery2BGST: TFloatField;
    IBQuery2PRST: TFloatField;
    IBQuery2BGEND: TFloatField;
    IBQuery2PREND: TFloatField;
    IBQuery2FULLNACH: TFloatField;
    IBQuery2FULLOPL: TFloatField;
    IBQuery2OPLNOTSUBS: TFloatField;
    IBQuery1KL: TIntegerField;
    IBQuery1PERIOD: TDateField;
    IBQuery1SCHET: TIBStringField;
    IBQuery1WID: TIBStringField;
    IBQuery1COD: TIBStringField;
    IBQuery1POSLUG: TIBStringField;
    IBQuery1VID: TIBStringField;
    IBQuery1NPP: TFloatField;
    IBQuery1ED_IZMPFU: TIBStringField;
    IBQuery1FIO: TIBStringField;
    IBQuery1FFF: TIBStringField;
    IBQuery1IM: TIBStringField;
    IBQuery1OT: TIBStringField;
    IBQuery1ULNAIM: TIBStringField;
    IBQuery1NOMDOM: TIBStringField;
    IBQuery1NOMKV: TIBStringField;
    IBQuery1ORG: TFloatField;
    IBQuery1IDCOD: TIBStringField;
    IBQuery1KOLI_P: TFloatField;
    IBQuery1KOLI_PF: TFloatField;
    IBQuery1PLOS_BB: TFloatField;
    IBQuery1PLOS_OB: TFloatField;
    IBQuery1PRIV: TIBStringField;
    IBQuery1LGOTA: TIBStringField;
    IBQuery1KOEF: TFloatField;
    IBQuery1N_DOG: TIBStringField;
    IBQuery1D_DOG: TIBStringField;
    IBQuery1TARIF: TFloatField;
    IBQuery1TARSUBS: TFloatField;
    IBQuery1KL_NTAR: TFloatField;
    IBQuery1DOLG: TFloatField;
    IBQuery1NACH: TFloatField;
    IBQuery1SUBS: TFloatField;
    IBQuery1OPL: TFloatField;
    IBQuery1UDER: TFloatField;
    IBQuery1KOMP: TFloatField;
    IBQuery1WZMZ: TFloatField;
    IBQuery1WOZW: TFloatField;
    IBQuery1MOVW: TFloatField;
    IBQuery1PERE: TFloatField;
    IBQuery1SAL: TFloatField;
    IBQuery1BGST: TFloatField;
    IBQuery1PRST: TFloatField;
    IBQuery1BGEND: TFloatField;
    IBQuery1PREND: TFloatField;
    IBQuery1FULLNACH: TFloatField;
    IBQuery1FULLOPL: TFloatField;
    IBQuery1OPLNOTSUBS: TFloatField;

    procedure FormShow(Sender: TObject);
    procedure repxml;
    procedure repxlsx;
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form36: TForm36;
  MsExcel,ExcelWorkbook:Variant;

implementation

{$R *.dfm}

uses Unit1, mytools, Unit2, ShellAPI;

procedure TForm36.repxml;
var
   XMLDoc: IXMLDocument;
   SERVICES, OSOBS, DATA,RootNode,ParentNode,QUERY,ROW : IXMLNode;
   str,strcod,filename,filenamezip,curdir,code:string;
   adostr,cmd:WideString;
   dt1:tDate;

begin
//XMLDocument1.Create();
//XMLDocument1.Active := True;

if cxLookupComboBox1.EditValue=null then
begin
  ShowMessage('Виберіть період');
  exit;
end;

if cxLookupComboBox1.EditValue=null then
begin
  ShowMessage('Виберіть послугу');
  exit;
end;

cxLookupComboBox2.EditValue;
strcod:=IBWID.Lookup('WID',cxLookupComboBox2.EditValue,'COD');
if strcod='' then
exit;

   Form2.Show;
   Form2.Label1.Caption:='Обрахування даних. Зачекайте...';
   Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

IBQuery1.Close;
IBQuery1.ParamByName('per').Value:=cxLookupComboBox1.EditValue;
IBQuery1.ParamByName('w1').Value:=cxLookupComboBox2.EditValue;
IBQuery1.Open;
IBQuery1.FetchAll;

if IBQuery1.RecordCount=0 then
begin
 Form2.Close;
 exit;
end;

   Form2.Show;
   Form2.Label1.Caption:='Формування файлу';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=IBQuery1.RecordCount-1;
        Form2.cxProgressBar1.Position:=0;
        Application.ProcessMessages;

dt1:=StrToDate(cxLookupComboBox1.EditValue);
code:=inttostr(GenerateCode);
//

XMLDoc := NewXMLDocument;
//XMLDoc.Encoding := 'utf-8';
XMLDoc.Options := [doNodeAutoIndent];
QUERY := XMLDoc.AddChild('QUERY');
ParentNode := QUERY.AddChild('EXTERNAL_ID');
ParentNode.Text := trim(Form1.edrpou+code);
ParentNode := QUERY.AddChild('CREATE_DATE');
ParentNode.Text := trim(DateTimeToStr(Now()));
ParentNode := QUERY.AddChild('ROW_QUANTITY');
ParentNode.Text := trim(IntToStr(IBQuery1.RecordCount));
ParentNode := QUERY.AddChild('CDPR_BAS');
ParentNode.Text := trim(Form1.edrpou);

ROW := QUERY.AddChild('ROW');

SERVICES := ROW.AddChild('SERVICES');
ParentNode := SERVICES.AddChild('COD');
ParentNode.Text := trim(strcod);
ParentNode := SERVICES.AddChild('CDPR_SUB');
ParentNode.Text := '';
ParentNode := SERVICES.AddChild('SERVICE_POINT');
ParentNode.Text := '';
ParentNode := SERVICES.AddChild('CDPR_Rep');
ParentNode.Text := trim(Form1.edrpou);
ParentNode := SERVICES.AddChild('CDPR_Rec');
ParentNode.Text := '';
ParentNode := SERVICES.AddChild('PERIN');
ParentNode.Text := cxLookupComboBox1.EditValue;
ParentNode := SERVICES.AddChild('PEROFF');
ParentNode.Text := DateToStr(LastDayMon(StrToDate(cxLookupComboBox1.EditValue)));
//OSOBS := SERVICES.AddChild('OSOBS');


while not IBQuery1.Eof do
begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
  OSOBS := SERVICES.AddChild('OSOBS');
  ParentNode := OSOBS.AddChild('ROW_NUM');         ParentNode.Text := trim(inttostr(IBQuery1.RecNo));
  ParentNode := OSOBS.AddChild('EIC');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('OSOB');        ParentNode.Text := trim(IBQuery1SCHET.Value);
  ParentNode := OSOBS.AddChild('DIV_PER_ACC'); ParentNode.Text := '0';
  ParentNode := OSOBS.AddChild('LN_NAME');     ParentNode.Text := trim(IBQuery1FFF.Value);
  ParentNode := OSOBS.AddChild('FN_NAME');         ParentNode.Text := trim(IBQuery1IM.Value);
  ParentNode := OSOBS.AddChild('SN_NAME');         ParentNode.Text := trim(IBQuery1OT.Value);
  ParentNode := OSOBS.AddChild('IPN');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('PASS_SERIAL');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('PASS_NUMBER');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('POST_INDEX');         ParentNode.Text := '28500';
  ParentNode := OSOBS.AddChild('KATOTTG');         ParentNode.Text := 'UA35040110010034377';
  ParentNode := OSOBS.AddChild('REGION');         ParentNode.Text := 'Кіровоградська';
  ParentNode := OSOBS.AddChild('DISTRICT');         ParentNode.Text := 'Кропивницький';
  ParentNode := OSOBS.AddChild('LOCAL_COMMUNITY');         ParentNode.Text := 'Долинська';
  ParentNode := OSOBS.AddChild('SETTLEMENT');         ParentNode.Text := 'Долинська';
  ParentNode := OSOBS.AddChild('STREET');         ParentNode.Text := trim(IBQuery1ULNAIM.Value);
  ParentNode := OSOBS.AddChild('HOUSE');         ParentNode.Text := trim(IBQuery1NOMDOM.Value);
  ParentNode := OSOBS.AddChild('CASE');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('APT_NUM');         ParentNode.Text := trim(IBQuery1NOMKV.Value);
  ParentNode := OSOBS.AddChild('APT_FLOOR');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('HOUSE_FLOOR');         ParentNode.Text := '';
  ParentNode := OSOBS.AddChild('PLZAG');         ParentNode.Text := IBQuery1PLOS_OB.AsString;
  ParentNode := OSOBS.AddChild('PLOPL');         ParentNode.Text := IBQuery1PLOS_BB.AsString;
    ParentNode := OSOBS.AddChild('ZONE');            ParentNode.Text := '';
    ParentNode := OSOBS.AddChild('ZABORG');         ParentNode.Text := IBQuery1DOLG.AsString;
    ParentNode := OSOBS.AddChild('RESTRUC');         ParentNode.Text := '0';
    ParentNode := OSOBS.AddChild('TARIF');         ParentNode.Text := IBQuery1TARSUBS.AsString;
    ParentNode := OSOBS.AddChild('REASON');         ParentNode.Text := '';
    ParentNode := OSOBS.AddChild('UNITS');         ParentNode.Text := IBQuery1ED_IZMPFU.Value;
    ParentNode := OSOBS.AddChild('BENEFIT');         ParentNode.Text := '';
    ParentNode := OSOBS.AddChild('SUBSIDY');         ParentNode.Text := '';

  IBQuery1.Next;
end;

Form2.Close;
//filename:='VidomistPFU '+Form1.edrpou+' '+strcod+' '+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.xml';
filename:='query_'+Form1.edrpou+'.xml';
filenamezip:='query_'+Form1.edrpou+'_'+trim(strcod)+'_'+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.zip';
SaveDialog1.FileName:=filenamezip;
curdir:=GetCurrentDir+'\';

  if SaveDialog1.Execute then
  begin
    XMLDoc.SaveToFile(curdir+FileName);
            cmd:=curdir+'\winrar\winrar.exe a -ep -afzip '+SaveDialog1.FileName+' '+curdir+FileName;
            ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_SHOW);
            Sleep(1000);
    DeleteFile(curdir+FileName);
    MemoLog.Lines.Add('Завантаження закінчено');
    MemoLog.Lines.Add('Файл збережено '+SaveDialog1.FileName);
    MemoLog.Lines.Add('---------------------------------------------');
  end;






//XMLDocument1.DocumentElement := XMLDocument1.CreateNode('SERVICES', ntElement, 'Послуги');
//XMLDocument1.DocumentElement.Attributes['attrName'] := 'Послуги';
end;

procedure TForm36.repxlsx;
var
   str,strcod,filenamenew,filename,filenamezip,curdir,code,filepath:string;
   adostr,cmd:WideString;
   dt1:tDate;
   FileHandle,Columns,col,row,i:integer;
   ROW_NUM,CDPR_Bas,OSOB,LN_NAME,FN_NAME,SN_NAME,KATOTTG,REGION,DISTRICT,
   LOCAL_COMMUNITY,SETTLEMENT,STREET,HOUSE,APT_NUM,PLZAG,PLOPAL,ZABORG,
   COD,TARIF,UNITS,PERIN,PEROFF,POST_INDEX:integer;


begin
//XMLDocument1.Create();
//XMLDocument1.Active := True;

if cxLookupComboBox1.EditValue=null then
begin
  ShowMessage('Виберіть період');
  exit;
end;

    if DirectoryExists('c:\temp') then
      filepath:='c:\temp'
    else
    if DirectoryExists('c:\TEMP') then
      filepath:='c:\TEMP'
    else
    if DirectoryExists(Form1.PathTMP) then
      filepath:=Form1.PathTMP;



filename:='';
filenamenew:=LowerCase(filepath+'\query_'+Form1.edrpou+'.xlsx');
//filenamezip:=LowerCase(filepath+'\query_'+Form1.edrpou+'_'+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.zip');
filenamezip:=LowerCase('query_'+Form1.edrpou+'_'+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.zip');
curdir:=LowerCase(GetCurrentDir);

if FileExists(curdir+'\pfu.xlsx') then
begin
  if FileExists(filenamenew) then
  begin
    FileHandle:=FileOpen(filenamenew, fmShareExclusive);
    FileClose(FileHandle);

    if FileHandle<0 then
       begin
          ShowMessage('Файл '+filenamenew+' зайнятий іншою програмою. Обробка не можлива!!!');
          Application.ProcessMessages;
          exit;
       end;
    DeleteFile(filenamenew);


  end;

//  CopyFile(PChar(curdir+'pfu.xlsx'), PChar(filenamenew), false);
  CopyFile(PChar(curdir+'\pfu.xlsx'), PChar(filenamenew), false);
  sleep(1000);
  if FileExists(filenamenew) then
     filename:=filenamenew;
end
else
begin
  ShowMessage('Не знайдено базовий файл pfu.xlsx');
  exit;
end;


if filename='' then
begin
  ShowMessage('Не знайдено вихідний файл '+filenamenew);
  exit;
end;

   Form2.Show;
   Form2.Label1.Caption:='Обрахування даних. Зачекайте...';
   Form2.cxProgressBar1.Position:=0;
   Form2.cxProgressBar1.Properties.Min:=0;
   Form2.cxProgressBar1.Properties.Max:=100;
   Application.ProcessMessages;


Columns:=0;
MsExcel := CreateOleObject('Excel.Application');
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
ExcelWorkbook:= MsExcel.Workbooks.Open[filename];
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
Columns := MsExcel.ActiveSheet.UsedRange.Columns.Count;

    for i := 1 to Columns do
    begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='ROW_NUM') then
          ROW_NUM:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='CDPR_Bas') then
          CDPR_Bas:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='OSOB') then
          OSOB:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='LN_NAME') then
          LN_NAME:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='FN_NAME') then
          FN_NAME:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='SN_NAME') then
          SN_NAME:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='KATOTTG') then
          KATOTTG:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='REGION') then
          REGION:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='DISTRICT') then
          DISTRICT:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='LOCAL_COMMUNITY') then
          LOCAL_COMMUNITY:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='SETTLEMENT') then
          SETTLEMENT:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='STREET') then
          STREET:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='HOUSE') then
          HOUSE:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='APT_NUM') then
          APT_NUM:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='PLZAG') then
          PLZAG:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='PLOPAL') then
          PLOPAL:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='ZABORG') then
          ZABORG:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='COD') then
          COD:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='TARIF') then
          TARIF:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='UNITS') then
          UNITS:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='PERIN') then
          PERIN:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='PEROFF') then
          PEROFF:=i;
      if (trim(MsExcel.WorkSheets[1].Cells[1,i])='POST_INDEX') then
          POST_INDEX:=i;


    end;




          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

IBQuery2.Close;
IBQuery2.ParamByName('per').Value:=cxLookupComboBox1.EditValue;
IBQuery2.Open;

          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+10;
          Application.ProcessMessages;

IBQuery2.FetchAll;

          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

if IBQuery2.RecordCount=0 then
begin
 Form2.Close;
 ShowMessage('Даних за цей період не знайдено');
 exit;
end;

   Form2.Show;
   Form2.Label1.Caption:='Формування файлу';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=IBQuery2.RecordCount-1;
        Form2.cxProgressBar1.Position:=0;
        Application.ProcessMessages;

row:=1;
while not IBQuery2.Eof do
begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
    row:=row+1;

          MsExcel.WorkSheets[1].Cells[row,ROW_NUM]:=IBQuery2.RecNo;
          MsExcel.WorkSheets[1].Cells[row,CDPR_Bas]:=trim(Form1.edrpou);
          MsExcel.WorkSheets[1].Cells[row,OSOB]:=trim(IBQuery2SCHET.Value);
          MsExcel.WorkSheets[1].Cells[row,LN_NAME]:=trim(IBQuery2FFF.Value);
          MsExcel.WorkSheets[1].Cells[row,FN_NAME]:=trim(IBQuery2IM.Value);
          MsExcel.WorkSheets[1].Cells[row,SN_NAME]:=trim(IBQuery2OT.Value);
          MsExcel.WorkSheets[1].Cells[row,KATOTTG]:='UA35040110010034377';
          MsExcel.WorkSheets[1].Cells[row,REGION]:='Кіровоградська';
          MsExcel.WorkSheets[1].Cells[row,DISTRICT]:='Кропивницький';
          MsExcel.WorkSheets[1].Cells[row,LOCAL_COMMUNITY]:='Долинська';
          MsExcel.WorkSheets[1].Cells[row,SETTLEMENT]:='Долинська';
          MsExcel.WorkSheets[1].Cells[row,STREET]:=trim(IBQuery2ULNAIM.Value);
          MsExcel.WorkSheets[1].Cells[row,HOUSE]:=trim(IBQuery2NOMDOM.Value);
          MsExcel.WorkSheets[1].Cells[row,APT_NUM]:=trim(IBQuery2NOMKV.Value);
          //MsExcel.WorkSheets[1].Cells[row,PLZAG]:=IBQuery2PLOS_OB.Value;

          MsExcel.WorkSheets[1].Cells[row,PLZAG]:=StringReplace(FloatToStr(IBQuery2PLOS_OB.Value),',','.',[rfReplaceAll, rfIgnoreCase]);

          MsExcel.WorkSheets[1].Cells[row,PLOPAL]:=StringReplace(FloatToStr(IBQuery2PLOS_BB.Value),',','.',[rfReplaceAll, rfIgnoreCase]);

          MsExcel.WorkSheets[1].Cells[row,ZABORG]:=StringReplace(FloatToStr(IBQuery2DOLG.Value),',','.',[rfReplaceAll, rfIgnoreCase]);

          MsExcel.WorkSheets[1].Cells[row,COD]:=IBQuery2COD.Value;

          MsExcel.WorkSheets[1].Cells[row,TARIF]:=StringReplace(FloatToStr(IBQuery2TARSUBS.Value),',','.',[rfReplaceAll, rfIgnoreCase]);

          MsExcel.WorkSheets[1].Cells[row,UNITS]:=trim(IBQuery2ED_IZMPFU.Value);
        //  MsExcel.WorkSheets[1].Cells[row,PERIN]:=cxLookupComboBox1.EditValue;
          MsExcel.WorkSheets[1].Cells[row,PERIN]:=DateToStr(FirstDayMon(StrToDate(cxLookupComboBox1.EditValue)));
          MsExcel.WorkSheets[1].Cells[row,PEROFF]:=DateToStr(LastDayMon(StrToDate(cxLookupComboBox1.EditValue)));
          MsExcel.WorkSheets[1].Cells[row,POST_INDEX]:='28500';



IBQuery2.next;
end;

Form2.Close;

          MsExcel.ActiveWorkbook.save;
          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;

//filename:='VidomistPFU '+Form1.edrpou+' '+strcod+' '+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.xml';
//filename:='query_'+Form1.edrpou+'.xml';
//filenamezip:='query_'+Form1.edrpou+'_'+trim(strcod)+'_'+IntToStr(Date2YearMon(cxLookupComboBox1.EditValue))+'.zip';
SaveDialog1.FileName:=filenamezip;
//curdir:=GetCurrentDir+'\';

  if SaveDialog1.Execute then
  begin

 // CopyFile(PChar(filename), PChar(SaveDialog1.FileName), false);
            cmd:=curdir+'\winrar\winrar.exe a -ep -afzip '+SaveDialog1.FileName+' '+filename;
            ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_SHOW);
  Sleep(1000);
    DeleteFile(filename);
    MemoLog.Lines.Add('Завантаження закінчено');
    MemoLog.Lines.Add('Файл збережено '+SaveDialog1.FileName);
    MemoLog.Lines.Add('---------------------------------------------');
  end;

end;


procedure TForm36.cxButton2Click(Sender: TObject);
begin
repxlsx;

end;

procedure TForm36.FormShow(Sender: TObject);
begin
IBWID.Close;
IBWID.Open;
//cxLookupComboBox1.EditValue:='';
//cxLookupComboBox2.EditValue:='';
end;

end.
