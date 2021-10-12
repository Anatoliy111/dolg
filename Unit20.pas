unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Data.Win.ADODB, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, cxLabel,
  Vcl.StdCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dbf,dbf_common,DateUtils;

type
  TForm20 = class(TForm)
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    OpenDialog1: TOpenDialog;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    ADOCommand1: TADOCommand;
    cxLookupComboBox1: TcxLookupComboBox;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    SaveDialog1: TSaveDialog;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    MemoLog: TMemo;
    cxLabel3: TcxLabel;
    ADOQueryTAB: TADOQuery;
    DSADOQueryTAB: TDataSource;
    cxLabel7: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;
  st1,poslug,tip,nfile:string;
       MsExcel:Variant;
     period: TDateTime;
     kolborg,kolschet:integer;
     Rows, Columns: Integer;

implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP;

procedure TForm20.cxButton1Click(Sender: TObject);
var i,ns,kolst,FileHandle:integer;
    st:pchar;
    sss:string;
begin


       Rows:=0;
       Columns:=0;
//       if not VarIsEmpty(MsExcel) then
//         if not MsExcel.Visible then
//         begin
//            MsExcel.Application.Quit;
//            Application.ProcessMessages;
//         end;

  if OpenDialog1.Execute then
  begin

    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

        FileHandle:=FileOpen(OpenDialog1.FileName, fmShareExclusive);
    FileClose(FileHandle);

    if FileHandle<0 then
       begin
          ShowMessage('Файл зайнятий іншою програмою. Обробка не можлива!!!');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

    kolst:= Pos('.',st1)-1;
   // nfile:=trim(OpenDialog1.FileName);
   // Delete(nfile, Length(nfile)-3, 3);
    //nfile:=nfile+'.xls';
//    if kolst<>0 then
//    begin
//      if (UpperCase(RightStr(st1,3))='DBF') then
//          cxTextEdit4.Text:='Субсидія'
//      else
//         begin
//            ShowMessage('Неправильний файл !!!');
//            exit;
//         end;
//
//
//
//    end
//    else
//    begin
//     ShowMessage('Неправильний файл !!!');
//     exit;
//    end;





    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];
    Rows := MsExcel.ActiveSheet.UsedRange.Rows.Count;
    Columns := MsExcel.ActiveSheet.UsedRange.Columns.Count;

              MemoLog.Lines.Add('  Файл:'+OpenDialog1.FileName);
          MemoLog.Lines.Add('  Кіль.записів:'+IntToStr(Rows));
           MemoLog.Lines.Add('  Кіль.колонок:'+IntToStr(Columns));

    kolschet:=0;
    kolborg:=0;
    for I := 1 to Columns-1 do
    begin
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='RASH') or (trim(MsExcel.WorkSheets[1].Cells[1,I])='RAH') then
      begin
         kolschet:=i;
         kolborg:=Columns+1;
      end;


    end;




       if kolschet=0 then
       begin
          ShowMessage('Неправильний файл, поле рахунок не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

     //CopyFile(PChar(OpenDialog1.FileName), PChar(nfile), false);

          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;


       cxTextEdit1.Text:=st1;
       Application.ProcessMessages;
  end;








end;



procedure TForm20.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst,k,kk:integer;
    sum,sumExcel,ksum,kksum:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;
    d0,d1,d2,d3,d4:TDate;
    FilePath, FileName,StartFileName,StartFilePath : String;
    PrevValue: Variant;

begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }




   if (Length(st1)=0) or (Length(OpenDialog1.FileName)=0) then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;

   Form2.Label1.Caption:='Обрахування даних';
   Application.ProcessMessages;

   StartFilePath := ExtractFilePath(OpenDialog1.FileName);
   StartFileName:= ExtractFileName(OpenDialog1.FileName);

    FilePath:=_GetWindowsDirectory+'\temp\';

//   FileName := StringReplace(ExtractFileName(OpenDialog1.FileName),ExtractFileExt(OpenDialog1.FileName),'.dbf',[rfReplaceAll]);
   FileName := 'temp.dbf';
   CopyFile(PChar(OpenDialog1.FileName), PChar(FilePath+FileName), false);

     try
            Application.ProcessMessages;


                  ADOQueryTAB.SQL.Text:='select * from '+FileName;

             ADOQueryTAB.Close;
             ADOQueryTAB.ConnectionString:='Provider=VFPOLEDB.1;Data Source='+FilePath+';Mode=Share Deny Read|Share Deny Write;Password="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False';
             ADOQueryTAB.Open;





            ADOQueryTAB.Close;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOQueryTAB.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath+';Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';

            ADOQueryTAB.Open;

             ADOQueryTAB.Close;
             ADOQueryTAB.ConnectionString:='Provider=VFPOLEDB.1;Data Source='+FilePath+';Mode=Share Deny Read|Share Deny Write;Password="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False';
             ADOQueryTAB.Open;


            ADOCommand1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath+';Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';



       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
     end;



   Form20.Enabled:=false;
   Form2.Show;

//   PrevValue := ADOQueryTAB.FindField('sum_borg').Value;







      d0:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d1:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d2:= IncMonth(cxLookupComboBox1.EditValue,-2);
      d3:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d4:= IncMonth(cxLookupComboBox1.EditValue,-1);




      f1:=true;
      kolst:=2;

      i:=0;

      IBWID.First;
      while not IBWID.eof do
      begin
        if (IBWIDWID.Value<>'el') and (IBWIDWID.Value<>'om') and (IBWIDWID.Value<>'kv') then
        begin

           if ADOQueryTAB.FindField('sum_'+IBWIDWID.Value)=nil then
           begin
           ADOQueryTAB.Close;
           ADOQueryTAB.sql.clear;
           ADOQueryTAB.sql.add('alter table '+FileName+' add column sum_'+IBWIDWID.Value+' numeric(10,2) NULL');
           ADOQueryTAB.execsql;
           ADOQueryTAB.Close;
           ADOQueryTAB.Open;
           end;

          i:=i+1;
        end;
        IBWID.Next;
      end;



   if ADOQueryTAB.FindField('sum_borg')=nil then
   begin
   ADOQueryTAB.Close;
   ADOQueryTAB.sql.clear;
   ADOQueryTAB.sql.add('alter table '+FileName+' add column sum_borg numeric(10,2) not null');
   ADOQueryTAB.execsql;
              ADOQueryTAB.Close;
           ADOQueryTAB.Open;
   end;


         ADOQueryTAB.Close;

   ADOQueryTAB.sql.clear;
   ADOQueryTAB.SQL.Text:='select * from '+FileName;

            ADOQueryTAB.Close;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOQueryTAB.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath+';Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';

            ADOQueryTAB.Open;


   ADOQueryTAB.Open;




        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;



   kolst:=Rows;
   MsExcel.DisplayAlerts := False;



   Form2.Label1.Caption:='Завантаження даних';
   Application.ProcessMessages;
   k:=0;
   IBWID.First;
   while not IBWID.eof do
   begin
     if (IBWIDWID.Value<>'el') and (IBWIDWID.Value<>'om') and (IBWIDWID.Value<>'kv') then
     begin

     Form2.Label1.Caption:='Завантаження даних '+IBWIDNAIM.Value;
  // period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));


    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
//      IBQuery1.Close;
//      IBQuery1.SQL.Text:='select trim(vo.schet) schet, vo.dolg, op.opl from vw_obkr vo '+
//                         'inner join (select schet, sum(fullopl) opl from vw_obkr where wid=:wid and period>=:dt2 and period<=:dt3 group by schet) op on op.schet=vo.schet where vo.wid=:wid and vo.period=:dt1 and op.opl=0 and vo.dolg>0';
//      IBQuery1.ParamByName('dt1').AsDate:=cxLookupComboBox1.EditValue;
//      IBQuery1.ParamByName('dt2').AsDate:=cxLookupComboBox3.EditValue;
//      IBQuery1.ParamByName('dt3').AsDate:=cxLookupComboBox4.EditValue;
//      IBQuery1.ParamByName('wid').Value:=IBWIDWID.Value;
//      IBQuery1.Open;

      IBQuery1.close;
      IBQuery1.SQL.Text:='select trim(t2.schet) as schet, vo.dolg+t2.nach-t2.fullopl as summa from'+
                       ' (select t1.wid, t1.schet schet, sum(t1.nach) nach, sum(t1.fullopl) fullopl from'+
                       ' (select wid, schet, nach, 0 fullopl from vw_obor where period>=:d1 and period<=:d2 and wid=:wid'+
                       ' union all'+
                       ' select wid, schet, 0, fullopl from vw_obor where period>=:d3 and period<=:d4 and wid=:wid) t1'+
                       ' group by t1.wid, t1.schet) t2'+
                       ' left join vw_obor vo on vo.wid=t2.wid and vo.schet=t2.schet and vo.period=:d0';

      IBQuery1.ParamByName('d0').AsDate:=d0;
      IBQuery1.ParamByName('d1').AsDate:=d1;
      IBQuery1.ParamByName('d2').AsDate:=d2;
      IBQuery1.ParamByName('d3').AsDate:=d3;
      IBQuery1.ParamByName('d4').AsDate:=d4;
      IBQuery1.ParamByName('wid').Value:=IBWIDWID.Value;

      IBQuery1.open;



        //MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        ADOQueryTAB.First;
        while not ADOQueryTAB.Eof do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=ADOQueryTAB.FieldByName('RAH').AsString;
          IBQuery1.First;
         // IBQuery1SCHET.Value;
          if IBQuery1.Locate('schet',sch,[]) then
          begin
             //IBQuery1SCHET.Value;
             if IBQuery1.FieldByName('summa').Value<=0 then
             begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('sum_'+IBWIDWID.Value).AsFloat:=0;
               ADOQueryTAB.Post;
             end
             else
             begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('sum_'+IBWIDWID.Value).AsFloat:=IBQuery1.FieldByName('summa').Value;
               ADOQueryTAB.Post;
             end;
          end
          else
          begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('sum_'+IBWIDWID.Value).AsFloat:=0;
               ADOQueryTAB.Post;
            // MemoLog.Lines.Add('Рахунок '+sch+' - не знайдено' + #13#10);
          end;

        end;

     k:=k+1;
     end;
   IBWID.Next;
   end;

   Form2.Label1.Caption:='Розрахунок ';
   Application.ProcessMessages;

Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        ADOQueryTAB.First;
        while not ADOQueryTAB.Eof do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          kksum:=0;
           IBWID.First;
           while not IBWID.eof do
           begin
             if (IBWIDWID.Value<>'el') and (IBWIDWID.Value<>'om') and (IBWIDWID.Value<>'kv') then
             begin
                    ksum:=ADOQueryTAB.FieldByName('sum_'+IBWIDWID.Value).AsFloat;
                    kksum:=kksum+ksum;
             end;
           end;




          if kksum<340 then
          begin
            if kksum<>0 then
             IBWID.First;
             while not IBWID.eof do
             begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('sum_'+IBWIDWID.Value).AsFloat:=0;
               ADOQueryTAB.Post;
             end;
          end
          else
             begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('sum_borg').AsFloat:=kksum;
               ADOQueryTAB.Post;
             end;
        end;



////     if tip='sub' then
////       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
////     if tip='lg' then
////       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);
//
//       // SaveDialog1.FileName:=cxTextEdit4.Text+' '+' боржники на '+'.xls';
//        SaveDialog1.FileName:=LeftStr(st1,Pos('.',st1)-1)+' Заборгованість на '+DateTostr(cxLookupComboBox1.EditValue)+' субсидія.xls';
//        if SaveDialog1.Execute then begin
//
//     //   MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName);
////        MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName,xlNormal,' ',' ',False,False);
//        MsExcel.Application.Workbooks[1].SaveAs(SaveDialog1.FileName,-4143);
////        MsExcel.ActiveWorkbook.SaveAs('c:\temp\test.xls');
//      //  MsExcel.ActiveWorkbook.save;
//        MsExcel.Application.Workbooks[1].Close;
//        //MsExcel.Application.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;
//        MsExcel := null;
//        ShowMessage('Реєстр збережено в файл:'#10+SaveDialog1.FileName);
//        MemoLog.Lines.Add('Реєстр збережено в файл:'#10+SaveDialog1.FileName);
//        Application.ProcessMessages;
//
//
//        end
//        else begin
//        MsExcel.Application.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;
//        MsExcel := null;
//          ShowMessage('Реєстр не збережено.');
//        end;

     // DeleteFile(nfile);


      ADOQueryTAB.Close;
      cxTextEdit1.Text:='';
      st1:='';
      form2.Close;
      CopyFile(PChar(FilePath+FileName),PChar(OpenDialog1.FileName), false);
      ShowMessage('Завантаження закінчено '+OpenDialog1.FileName);

      cxTextEdit1.Text:='';
      st1:='';

      form2.Close;
      ShowMessage('Завантаження закінчено');
      MemoLog.Lines.Add('Завантаження закінчено');
      MemoLog.Lines.Add('---------------------------------------------');
      Form20.Enabled:=true;
end;

procedure TForm20.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
cxLabel3.Caption:='Борг('+DateTostr(IncMonth(cxLookupComboBox1.EditValue,-4))+') + нарахування('+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-4)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-3)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-2)))+') - оплата('+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-4)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-3)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-2)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-1)))+')';
end;

procedure TForm20.FormShow(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
