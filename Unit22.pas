unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Data.Win.ADODB, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, cxLabel,
  Vcl.StdCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dbf,dbf_common,DateUtils;

type
  TForm22 = class(TForm)
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    ADOCommand1: TADOCommand;
    IBWID: TIBDataSet;
    IBWIDWID: TIBStringField;
    IBWIDNAIM: TIBStringField;
    IBWIDCH: TIntegerField;
    DSWID: TDataSource;
    cxLabel2: TcxLabel;
    SaveDialog1: TSaveDialog;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    MemoLog: TMemo;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    ADOQueryTAB: TADOQuery;
    DSADOQueryTAB: TDataSource;
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
  Form22: TForm22;
  st1,poslug,tip,nfile:string;
       MsExcel:Variant;
     period: TDateTime;
          kolborg,kolschet,kollgcode:integer;
     Rows, Columns: Integer;


implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP;

procedure TForm22.cxButton1Click(Sender: TObject);
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






    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];

    Rows := MsExcel.ActiveSheet.UsedRange.Rows.Count;
    Columns := MsExcel.ActiveSheet.UsedRange.Columns.Count;

              MemoLog.Lines.Add('  Файл:'+OpenDialog1.FileName);
          MemoLog.Lines.Add('  Кіль.записів:'+IntToStr(Rows));
           MemoLog.Lines.Add('  Кіль.колонок:'+IntToStr(Columns));


    kolschet:=0;
    kollgcode:=0;
    kolborg:=0;

    for I := 1 to Columns-1 do
    begin
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='RASH') or (trim(MsExcel.WorkSheets[1].Cells[1,I])='RAH') then
      begin
         kolschet:=i;

      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='LGCODE') then
      begin
         kollgcode:=i;
      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='Sum_Borg') then
      begin
         kolborg:=i;
      end;


    end;

    if kolborg=0 then kolborg:=Columns+1;





       if kolschet=0 then
       begin
          ShowMessage('Неправильний файл, поле рахунок не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

       if kollgcode=0 then
       begin
          ShowMessage('Неправильний файл, поле код категорії не знайдено');
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



procedure TForm22.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,ns,kolst,k,cod,stsch,ii:integer;
    sum,sumExcel,allsum:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss,ppsch:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;
    ss:variant;
    d0,d1,d2,d3,d4:TDate;
    FilePath, FileName,StartFileName,StartFilePath : String;



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
             ADOQueryTAB.ConnectionString:='Provider=VFPOLEDB.1;Data Source='+FilePath+';Mode=ReadWrite;Password="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False';
             ADOQueryTAB.Open;





            ADOQueryTAB.Close;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOQueryTAB.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath+';Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';

            ADOQueryTAB.Open;


            ADOCommand1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath+';Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';



       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
     end;


   Form22.Enabled:=false;
   Form2.Show;

      d0:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d1:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d2:= IncMonth(cxLookupComboBox1.EditValue,-2);
      d3:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d4:= IncMonth(cxLookupComboBox1.EditValue,-1);


      f1:=true;
      kolst:=2;
      i:=0;


   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
   kolst:=Rows;

           Form2.Label1.Caption:='Очищення файлу реєстру';
           Application.ProcessMessages;

                   ADOQueryTAB.First;
            while not ADOQueryTAB.Eof do
            begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('Sum_Borg').AsFloat:=0;
               ADOQueryTAB.Post;
               ADOQueryTAB.Next;
            end;

   Form2.Label1.Caption:='Завантаження даних';
   Application.ProcessMessages;
   k:=0;

    IBQuery1.close;
    IBQuery1.SQL.Text:='select lg.cod, trim(t2.schet) as sch, vo.dolg+t2.nach-t2.fullopl as summa from'+
                       ' (select t1.wid, t1.schet schet, sum(t1.nach) nach, sum(t1.fullopl) fullopl from'+
                       ' (select wid, schet, nach, 0 fullopl from vw_obor where period>=:d1 and period<=:d2'+
                       ' union all'+
                       ' select wid, schet, 0, fullopl from vw_obor where period>=:d3 and period<=:d4) t1'+
                       ' group by t1.wid, t1.schet) t2'+
                       ' left join lg_cod lg on t2.wid=lg.wid'+
                       ' left join vw_obor vo on vo.wid=t2.wid and vo.schet=t2.schet and vo.period=:d0';

      IBQuery1.ParamByName('d0').AsDate:=d0;
      IBQuery1.ParamByName('d1').AsDate:=d1;
      IBQuery1.ParamByName('d2').AsDate:=d2;
      IBQuery1.ParamByName('d3').AsDate:=d3;
      IBQuery1.ParamByName('d4').AsDate:=d4;
      //IBQuery1.ParamByName('wid').Value:=IBWIDWID.Value;

    IBQuery1.open;

        stsch:=0;
        ppsch:='';


        //MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=ADOQueryTAB.RecordCount-1;
        Form2.cxProgressBar1.Position:=5;

           ADOQueryTAB.First;
        while not ADOQueryTAB.Eof do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

          sch:=ADOQueryTAB.FieldByName('RAH').AsString;
          cod:=ADOQueryTAB.FieldByName('LGCODE').AsInteger;

          IBQuery1.First;
         // IBQuery1SCHET.Value;




//          if IBQuery1.Locate('schet',sch,[]) then
//          begin
//             //IBQuery1SCHET.Value;
//             if (CheckBox1.Checked) and (IBQuery1.FieldByName('summa').Value<0) then
//                MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=0
//             else
//                MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=IBQuery1.FieldByName('summa').Value;
//          end
//          else
//             MsExcel.WorkSheets[1].Cells[i,kolborg+k]:=0;


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


           if sum<=0 then sum:=0;


                       ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('Sum_Borg').AsFloat:=sum;
               ADOQueryTAB.Post;


          if sch<>ppsch then
          begin
            if (allsum<340) and (allsum<>0) then
            begin
               for ii := stsch to i-1 do
               begin
                         ADOQueryTAB.Edit;
                 ADOQueryTAB.FieldByName('Sum_Borg').AsFloat:=0;
                 ADOQueryTAB.Post;
               end;
            end;

            ppsch:=sch;
            stsch:=i;
            allsum:=sum;
          end
          else
          begin
          allsum:=allsum+sum;

          end;


        ADOQueryTAB.Next;
        end;





      ADOQueryTAB.Close;
      cxTextEdit1.Text:='';
      st1:='';
      form2.Close;
      CopyFile(PChar(FilePath+FileName),PChar(OpenDialog1.FileName), false);
      ShowMessage('Завантаження закінчено '+OpenDialog1.FileName);
      Form22.Enabled:=true;
end;

procedure TForm22.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
cxLabel3.Caption:='Борг('+DateTostr(IncMonth(cxLookupComboBox1.EditValue,-4))+') + нарахування('+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-4)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-3)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-2)))+') - оплата('+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-4)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-3)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-2)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-1)))+')';

end;

procedure TForm22.FormShow(Sender: TObject);
begin
cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
