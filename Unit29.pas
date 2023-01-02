unit Unit29;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Data.Win.ADODB, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, cxLabel,
  Vcl.StdCtrls, cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dbf,dbf_common,DateUtils;

type
  TForm29 = class(TForm)
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    DSQuery1: TDataSource;
    IBWID: TIBDataSet;
    DSWID: TDataSource;
    cxLabel2: TcxLabel;
    SaveDialog1: TSaveDialog;
    cxLabel5: TcxLabel;
    MemoLog: TMemo;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    IBWIDWID: TIBStringField;
    IBWIDCOD: TIBStringField;
    IBQuery1: TIBQuery;
    IBQuery1COD: TIBStringField;
    IBQuery1WID: TIBStringField;
    IBQuery1SCH: TIBStringField;
    IBQuery1TARSUBS: TFloatField;
    IBQuery1DOLG: TFloatField;
    IBQuery1FULLOPL: TFloatField;
    IBQuery1SUMMA: TFloatField;
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
  Form29: TForm29;
  st1,poslug,tip,nfile:string;
       MsExcel:Variant;
     period: TDateTime;
          kolborg,kolschet,kolcod,koltarif,kolpidtverd:integer;
     Rows, Columns, zip: Integer;
     DirExtrFile, FilePath, FileName,StartFileName,StartFilePath : String;

implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2, mytools, ExcelXP, sevenzip, IOUtils;

procedure TForm29.cxButton1Click(Sender: TObject);
var i,ns,kolst,FileHandle,sint:integer;
    st:pchar;
    sss,s2,s3:string;

begin


//       if not VarIsEmpty(MsExcel) then
//         if not MsExcel.Visible then
//         begin
//            MsExcel.Application.Quit;
//            Application.ProcessMessages;
//         end;

  if OpenDialog1.Execute then
  begin
             Rows:=0;
       Columns:=0;
       zip:=0;
       DirExtrFile:='';
   MemoLog.Lines.Add('--------------------------------');
   MemoLog.Lines.Add('  Файл:'+OpenDialog1.FileName);
   StartFilePath := ExtractFilePath(OpenDialog1.FileName);
   StartFileName:= ExtractFileName(OpenDialog1.FileName);

         if (UpperCase(RightStr(StartFileName,3))<>'ZIP') and (UpperCase(RightStr(StartFileName,3))<>'CSV') then
         begin
            ShowMessage('Неправильний файл !!! Файл повинен бути архівом zip або файлом csv');
            exit;
         end;

            if (UpperCase(RightStr(StartFileName,3))='ZIP') then
         begin
            zip:=1;
           // DirExtrFile:=LeftStr(OpenDialog1.FileName,Pos('.',OpenDialog1.FileName)-1);
            DirExtrFile:=StartFilePath+LeftStr(StartFileName,23);
            if DirectoryExists(DirExtrFile) then  TDirectory.Delete(DirExtrFile, true);
            cxLookupComboBox1.EditValue:=StrToDate('01.'+MidStr(StartFileName,20,2)+'.'+MidStr(StartFileName,16,4));
         end;

            if (UpperCase(RightStr(StartFileName,3))='CSV') then
         begin
            zip:=0;
            cxLookupComboBox1.EditValue:=StrToDate('01.'+MidStr(StartFileName,20,2)+'.'+MidStr(StartFileName,16,4));
         end;

//   s2:=MidStr(DirExtrFile,23,2);
//   s3:=MidStr(DirExtrFile,19,4);
//   cxLookupComboBox1.EditValue:=StrToDate('01.'+MidStr(DirExtrFile,23,2)+'.'+MidStr(DirExtrFile,19,4));
   //StrToDate('01.'+MidStr(DirExtrFile,6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));

//    st:=pchar(OpenDialog1.FileName);
//    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
//    begin
//      if st[ns]<>'\' then
//         st1:=st1+st[ns]
//      else st1:='';
//    end;
      if Pos('query_36188893',StartFileName)=0 then
         begin
            ShowMessage('Неправильний файл !!! Файл повинен мати назву query_36188893');
            exit;
         end;

    FileHandle:=FileOpen(OpenDialog1.FileName, fmShareExclusive);
    FileClose(FileHandle);

    if FileHandle<0 then
       begin
          ShowMessage('Файл зайнятий іншою програмою. Обробка не можлива!!!');
          cxTextEdit1.Text:='';
          Application.ProcessMessages;
          exit;
       end;

    if zip=1 then
    begin

            // Распаковывает файлы
        with CreateInArchive(CLSID_CFormatZip) do
         begin

           OpenFile(OpenDialog1.FileName);
           ExtractTo(DirExtrFile);
           MemoLog.Lines.Append('Архів розпакований! '+DirExtrFile);
         end;

       // kolst:= Pos('.',st1)-1;
       // nfile:=trim(OpenDialog1.FileName);
       // Delete(nfile, Length(nfile)-3, 3);

       if not FileExists(DirExtrFile+'\query_36188893.csv') then
       begin
          ShowMessage('Файл реєстру query_36188893.csv не знайдено!!!');
          TDirectory.Delete(DirExtrFile, True);
          exit;
       end;
           MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[DirExtrFile+'\query_36188893.csv'];
    MemoLog.Lines.Add('  Файл реєстру:'+DirExtrFile+'\query_36188893.csv');

    end
    else
    begin

    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];

    MemoLog.Lines.Add('  Файл реєстру:'+OpenDialog1.FileName);

    end;





    Rows := MsExcel.ActiveSheet.UsedRange.Rows.Count;
    Columns := MsExcel.ActiveSheet.UsedRange.Columns.Count;


          MemoLog.Lines.Add('  Кіль.записів:'+IntToStr(Rows));
           MemoLog.Lines.Add('  Кіль.колонок:'+IntToStr(Columns));


    kolschet:=0;
    kolcod:=0;
    kolborg:=0;

    for I := 1 to Columns do
    begin
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='OSOB') then
      begin
         kolschet:=i;

      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='COD') then
      begin
         kolcod:=i;
      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='ZABORG') then
      begin
         kolborg:=i;
      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='PIDTVERD') then
      begin
         kolpidtverd:=i;
      end;
      if (trim(MsExcel.WorkSheets[1].Cells[1,I])='TARIF') then
      begin
         koltarif:=i;
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

       if kolcod=0 then
       begin
          ShowMessage('Неправильний файл, поле код послуги не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

       if koltarif=0 then
       begin
          ShowMessage('Неправильний файл, поле тариф не знайдено');
          cxTextEdit1.Text:='';
          st1:='';
          Application.ProcessMessages;
          exit;
       end;

     //CopyFile(PChar(OpenDialog1.FileName), PChar(nfile), false);

          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;
          if zip=1 then if DirectoryExists(DirExtrFile) then  TDirectory.Delete(DirExtrFile, true);



       cxTextEdit1.Text:=StartFileName;
       Application.ProcessMessages;
  end;








end;



procedure TForm29.cxButton2Click(Sender: TObject);
const
xlContinuous=1;
xlThin=2;
xlTop = -4160;
xlCenter = -4108;
xlHAlignRight=-4152;
xlVAlignBottom=-4107;
var i,nn,kolst,kk,stsch,ii,kolsch:integer;
    sum,sumExcel,allsum,tar:currency;
    cod,sss1,sch,str,nam,klasf,vid_rob,n_kres,gost,dekada,sss,ppsch:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF,Path:string;
    adostr,cmd:WideString;
    ob,table:TDbf;
    ssum,ssch,scod,star:variant;
    d0,d1,d2,d3,d4:TDate;
   // FilePath, FileName,StartFileName,StartFilePath,
    oldsch,strsch : String;
    schchar:pchar;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }




   if (Length(cxTextEdit1.Text)=0) and (Length(OpenDialog1.FileName)=0) and (Length(DirExtrFile)=0) then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;

   if zip=1 then
   begin

       with CreateInArchive(CLSID_CFormatZip) do
     begin

       OpenFile(OpenDialog1.FileName);
       ExtractTo(DirExtrFile);
     end;


    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[DirExtrFile+'\query_36188893.csv'];
   end
   else
   begin
         MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
         MsExcel.Workbooks.Open[OpenDialog1.FileName];
   end;

   Form29.Enabled:=false;
   Form2.Show;

      d0:= IncMonth(cxLookupComboBox1.EditValue,-4);
//      d1:= IncMonth(cxLookupComboBox1.EditValue,-4);
//      d2:= IncMonth(cxLookupComboBox1.EditValue,-2);
      d3:= IncMonth(cxLookupComboBox1.EditValue,-4);
      d4:= IncMonth(cxLookupComboBox1.EditValue,-1);


      f1:=true;



   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
   kolst:=Rows;

   IBQuery1.close;
   IBQuery1.ParamByName('d0').AsDate:=d0;
   IBQuery1.ParamByName('d3').AsDate:=d3;
   IBQuery1.ParamByName('d4').AsDate:=d4;
   IBQuery1.Open;





   Form2.Label1.Caption:='Завантаження даних';
   Application.ProcessMessages;

   stsch:=0;
        MsExcel.columns[kolborg].NumberFormat:='0,00';
        MsExcel.columns[koltarif].NumberFormat:='0,00';

        oldsch:='';

       // IBWID.Open;

        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := 2 to kolst do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;
          MsExcel.WorkSheets[1].Cells[i,kolpidtverd]:='';
          MsExcel.WorkSheets[1].Cells[i,koltarif]:='';
          MsExcel.WorkSheets[1].Cells[i,kolborg]:='';
//          IBWID.First;
//          if not IBWID.Locate('cod',trim(MsExcel.WorkSheets[1].Cells[i,kolcod]),[]) then
//          begin
//            MsExcel.WorkSheets[1].Cells[i,kolpidtverd]:=0;
//            next;
//          end;


          if trim(MsExcel.WorkSheets[1].Cells[i,kolschet])='88117' then
            sss1:='';



          sch:=trim(MsExcel.WorkSheets[1].Cells[i,kolschet]);
          strsch:='';
          schchar:=pchar(sch);
          for nn:=0 to length(sch) do
             if (schchar[nn] in ['0'..'9']) then strsch:=strsch+schchar[nn];

          if length(strsch)<7 then
            for kk := 1 to 7-length(strsch) do
               sch:='0'+sch;

           sum:=0;



           IBQuery1.First;
           ssch := IBQuery1.Lookup('sch', sch, 'sch');
           cod:=MsExcel.WorkSheets[1].Cells[i,kolcod];

           if ssch <> null then
           begin

             scod := IBQuery1.Lookup('sch;cod', VarArrayOf([sch, cod]), 'cod');
             if scod <> null then
                MsExcel.WorkSheets[1].Cells[i,kolpidtverd]:=1
             else
                MsExcel.WorkSheets[1].Cells[i,kolpidtverd]:=0;

             star := IBQuery1.Lookup('sch;cod', VarArrayOf([sch, cod]), 'tarsubs');
             if star <> null then
                begin
                tar:=star;
                sss1:=VarToStr(star);
                MsExcel.WorkSheets[1].Cells[i,koltarif]:=sss1;
                end;

             ssum := IBQuery1.Lookup('sch;cod', VarArrayOf([sch, cod]), 'summa');
             if ssum <> null then
             begin
                 sum:=ssum;
                 if sum<=0 then sum:=0
                 else MsExcel.WorkSheets[1].Cells[i,kolborg]:=sum;
             end;
           end
           else
           begin
            IBWID.First;
            if IBWID.Locate('cod',cod,[]) then
            MemoLog.Lines.Add('Рахунок '+sch+' - не знайдено' + #13#10);
           end;

          if sch<>oldsch then
          begin
            if (allsum<680) and (allsum<>0) then
            begin
               for ii := stsch to i-1 do
               begin
                 MsExcel.WorkSheets[1].Cells[ii,kolborg]:='';
               end;
            end;

            oldsch:=sch;
            stsch:=i;
            allsum:=sum;
          end
          else
            allsum:=allsum+sum;




        end;

            if (allsum<680) and (allsum<>0) then
            begin
               for ii := stsch to i do
               begin
                 MsExcel.WorkSheets[1].Cells[ii,kolborg]:='';
               end;
            end;



     //   SaveDialog1.FileName:=OpenDialog1.FileName;
    //    if SaveDialog1.Execute then begin
          FileName:=DirExtrFile+'\'+LeftStr(StartFileName,23)+'.csv';
     //   MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName);
//        MsExcel.Application.Workbooks[1].SaveCopyAs(SaveDialog1.FileName,xlNormal,' ',' ',False,False);
        MsExcel.Application.Workbooks[1].SaveAs(FileName,-4143);
        MsExcel.Application.Workbooks[1].save;
//        MsExcel.ActiveWorkbook.SaveAs('c:\temp\test.xls');
      //  MsExcel.ActiveWorkbook.save;
        MsExcel.Application.Workbooks[1].Close;
        //MsExcel.Application.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        ShowMessage('Реєстр збережено в файл:'#10+FileName);
        MemoLog.Lines.Add('Реєстр збережено в файл:'#10+FileName);
        Application.ProcessMessages;
        DeleteFile(DirExtrFile+'\query_36188893.csv');
        DeleteFile(DirExtrFile+'\query_36188893.xml');

//
//        end
//        else begin
//        MsExcel.Application.ActiveWorkbook.Close;
//        MsExcel.Application.Quit;
//        MsExcel := null;
//          ShowMessage('Реєстр не збережено.');
//        end;


     //  if zip=1 then if DirectoryExists(DirExtrFile) then  TDirectory.Delete(DirExtrFile, true);
       cxTextEdit1.Text:='';
      st1:='';


      MemoLog.Lines.Add('Завантаження закінчено');
      MemoLog.Lines.Add('---------------------------------------------');
      Form29.Enabled:=true;
      Form2.Close;

end;

procedure TForm29.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
cxLabel3.Caption:='Борг('+DateTostr(IncMonth(cxLookupComboBox1.EditValue,-4))+') - оплата('+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-4)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-3)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-2)))+','+int2str(MonthOf(IncMonth(cxLookupComboBox1.EditValue,-1)))+')';

end;

procedure TForm29.FormShow(Sender: TObject);
begin
//cxLookupComboBox1.EditValue:=Form1.IBPERIODPERIOD.Value;
IBWID.Open;
end;

end.
