unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxProgressBar,cxCalc, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TForm19 = class(TForm)
    OpenDialog1: TOpenDialog;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxProgressBar1: TcxProgressBar;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBQuery1SCHET: TIBStringField;
    IBQuery1NACH: TFloatField;
    IBQuery1SAL: TFloatField;
    cxLabel3: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    ADOOBOR: TADODataSet;
    DSADOOBOR: TDataSource;
    ADOConnectionDBF1: TADOConnection;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    ADOQuerySUBS: TADOQuery;
    DSADOQuerySUBS: TDataSource;
    ADOConnectionDBF2: TADOConnection;
    ADOQuerySLGOT: TADOQuery;
    DSADOQuerySLGOT: TDataSource;
    ADOQueryOBOR: TADOQuery;
    DSADOQueryOBOR: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOConnectionDBF: TADOConnection;
    ADOSUBS: TADODataSet;
    DSADOSUBS: TDataSource;
    cxGrid1DBTableView1schet: TcxGridDBColumn;
    ADOCommand1: TADOCommand;
    cxButton7: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private

    { Private declarations }
  public
  mode:integer;
    { Public declarations }
  end;

var
  Form19: TForm19;
  st1:string;


implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils;

procedure TForm19.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
begin

  if OpenDialog1.Execute then
  begin

    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

    cxTextEdit1.Text:=st1;


    //MsExcel := null;
  end;
end;

procedure TForm19.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst:integer;
    sum:currency;
    str,nam,tip,sch,klasf,vid_rob,n_kres,gost,dekada:string;
    MsExcel,kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr:WideString;

begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   if cxLookupComboBox1.EditValue=null then
   begin
     ShowMessage('Виберіть послугу');
     exit;
   end;

   if Length(st1)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;


   if mode=1 then
   begin
      f1:=true;
      kolst:=7;
    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
      IBQuery1.Close;
      if (cxLookupComboBox1.EditValue='sm') or (cxLookupComboBox1.EditValue='sn') then
      begin
      IBQuery1.SQL.Text:='select schet, sum(nach) nach, sum(sal) sal from (select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and (wid=''sm'' or wid=''sn'')) group by schet';
      IBQuery1.ParamByName('dt').AsDate:=cxLookupComboBox2.EditValue;
      end
      else
      begin
      IBQuery1.SQL.Text:='select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and wid=:wid';
      IBQuery1.ParamByName('dt').AsDate:=cxLookupComboBox2.EditValue;
      IBQuery1.ParamByName('wid').Value:=cxLookupComboBox1.EditValue;
      end;
      IBQuery1.Open;


        MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
        MsExcel.Workbooks.Open[OpenDialog1.FileName];
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else kolst:=kolst+1;
        end;
        MsExcel.Visible := True;
        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=MsExcel.WorkSheets[1].Cells[i,4];
          IBQuery1.First;
          IBQuery1SCHET.Value;
          if not IBQuery1.Locate('schet',sch,[]) then
          begin
          IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:='рахунок не знайдено';
             MsExcel.WorkSheets[1].Cells[i,6]:='рахунок не знайдено';
          end
          else
          begin
             IBQuery1SCHET.Value;
             MsExcel.WorkSheets[1].Cells[i,5]:=IBQuery1NACH.Value;
             MsExcel.WorkSheets[1].Cells[i,6]:=IBQuery1SAL.Value;
          end;
        end;




        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;

        MsExcel := null;
   end;

   if mode=2 then
   begin

      Path:=Form1.PathDIR+'\subs.dbf';

      try
      deleteFile(Path);
       except
      on E : Exception do
      begin
      ShowMessage('Неможливо видалити '+Path+'.'+E.Message+'  Можливо файл відкритий в іншій програмі. Спробуйте пізніше!');
      Exit;
      end;

      end;



     CopyFile(PChar(Form1.PathKvart+'dbf\subs.dbf'), PChar(Form1.PathDIR+'\subs.dbf'), false);






//        if FileExists(data.DatabaseName+format('kvpl%d.dbf',[YM])) then
//        begin
//          copyfile(pchar(data.DatabaseName+format('kvpl%d.dbf',[YM])),
//             pchar(data.DatabaseName+data.TableName),false);
//          break;
//        end;


     try
       if  not ADOConnectionDBF.Connected then
       begin
            pathDBF:=Form1.PathDIR;
            Application.ProcessMessages;

            ADOConnectionDBF.Connected:=false;
//            pathDBF:=Form1.PathKvart+'dbf';
//            adostr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
//                      pathDBF+';Mode=ReadWrite;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
//                      'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=16;Jet OLEDB:Database Locking Mode=0;'+
//                      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
//                      'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
//                      'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don"t Copy Locale on Compact=False;'+
//                      'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

            adostr:='Provider=MSDASQL.1;Persist Security Info=False;User ID=Admin;Data Source=dBASE Files;Mode=ReadWrite;Initial Catalog='+Form1.PathDIR+';';

            ADOConnectionDBF.ConnectionString:=adostr;

            ADOConnectionDBF.Connected:=true;
       end;


       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних квартплати!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;



     end;


    ADOCommand1.CommandText:='';
    ADOCommand1.CommandText:='CREATE INDEX IndexName ON subs (schet)';
    ADOCommand1.Execute;

    ADOSUBS.Open;


      f1:=true;
      kolst:=7;

        MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
        MsExcel.Workbooks.Open[OpenDialog1.FileName];
//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else
          begin
          MsExcel.WorkSheets[1].Cells[kolst,8]:='';
          kolst:=kolst+1;
          end;

        end;


       ADOQueryOBOR.Open;

       if LeftStr(st1,2)='RK' then
          begin
//            ADOSUBS.Open;
            ADOQuerySUBS.First;
            while not ADOQuerySUBS.Eof do
            begin
               ADOQuerySUBS.Edit;
               ADOQuerySUBS.FieldByName('s_'+cxLookupComboBox1.EditValue).Value:=0;
               ADOQuerySUBS.Post;
               ADOQuerySUBS.Next;
            end;

          end;




        cxProgressBar1.Properties.Min:=0;
        cxProgressBar1.Properties.Max:=kolst-1;
        cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          cxProgressBar1.Position:=cxProgressBar1.Position+1;
          Application.ProcessMessages;

//          ADOOBOR.Close;
//          ADOOBOR.CommandText:='select schet from obor where wid='''+cxLookupComboBox1.EditValue+''' and koef=1';







          sch:=trim(MsExcel.WorkSheets[1].Cells[i,4]);

          if StrToFloat(MsExcel.WorkSheets[1].Cells[i,7])<>0 then
          begin

            ADOOBOR.First;
            if ADOOBOR.Locate('wid;schet',VarArrayOf([cxLookupComboBox1.EditValue,sch]),[loPartialKey]) then
            begin
               ADOQuerySUBS.First;
               if not ADOQuerySUBS.Locate('schet',sch,[]) then
                  ADOQuerySUBS.Append;
               ADOQuerySUBS.Edit;
               ADOQuerySUBS.FieldByName('schet').Value:=sch;
               ADOQuerySUBS.FieldByName('s_'+cxLookupComboBox1.EditValue).Value:=StrToFloat(MsExcel.WorkSheets[1].Cells[i,7]);
               ADOQuerySUBS.Post;
            end
            else
               MsExcel.WorkSheets[1].Cells[i,8]:='рахунок не знайдено';
          end;
          end;

        ADOConnectionDBF.Close;
        MsExcel.Visible := True;
        MsExcel.ActiveWorkbook.save;
//        MsExcel.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;

        MsExcel := null;
   end;



      ShowMessage('Завантаження закінчено');

end;

procedure TForm19.cxButton3Click(Sender: TObject);
begin
ADOQuerySUBS.Append;
end;

procedure TForm19.cxButton4Click(Sender: TObject);
begin
//               ADOSUBS.Append;
//               ADOSUBS.Edit;
//               ADOSUBS.FieldByName('schet').Value:='12345';
//               ADOSUBS.Post;

                           ADOQuerySUBS.First;
            while not ADOQuerySUBS.Eof do
            begin
               ADOQuerySUBS.Edit;
               ADOQuerySUBS.FieldByName('schet').Value:='555555555';
               ADOQuerySUBS.Post;
               ADOQuerySUBS.Next;
            end;



end;

procedure TForm19.cxButton5Click(Sender: TObject);
var tt:integer;
begin
//               ADOConnectionDBF1.BeginTrans;
//                        ADOQuerySUBS.Edit;
//               ADOQuerySUBS.FieldByName('schet').Value:='0000000000';
//               ADOQuerySUBS.Post;
//               ADOConnectionDBF1.CommitTrans;

//                        ADOOBOR.Edit;
//               ADOOBOR.FieldByName('schet').Value:='0000000000';
//               ADOOBOR.Post;
                                       ADOSUBS.Edit;
               ADOSUBS.FieldByName('schet').Value:='жмд';
               ADOSUBS.Post;

end;

procedure TForm19.cxButton6Click(Sender: TObject);
begin
//                 ADOQuerySUBS.Append;
//               ADOQuerySUBS.FieldByName('schet').Value:='1111111111111';
//               ADOQuerySUBS.Post;
                 ADOSUBS.Append;
               ADOSUBS.FieldByName('schet').Value:='1111111111111';
               ADOSUBS.Post;


end;

procedure TForm19.cxButton7Click(Sender: TObject);
begin
    ADOCommand1.CommandText:='';
    ADOCommand1.CommandText:='CREATE INDEX sss ON subs (schet)';
    ADOCommand1.Execute;
end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// ADOConnectionDBF.CommitTrans;
 ADOConnectionDBF.Close;

end;

procedure TForm19.FormShow(Sender: TObject);
begin
cxLookupComboBox2.EditValue:=Form1.DateKVART;
ADOConnectionDBF.Connected:=true;
ADOConnectionDBF1.Connected:=true;
//ADOConnectionDBF.BeginTrans;
ADOSUBS.Open;
ADOQuerySUBS.Open;
end;

end.
