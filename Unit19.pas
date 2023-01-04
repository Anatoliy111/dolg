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
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dbf,dbf_common;

type
  TForm19 = class(TForm)
    OpenDialog1: TOpenDialog;
    cxButton1: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxButton2: TcxButton;
    IBQuery1: TIBQuery;
    DSQuery1: TDataSource;
    IBQuery1SCHET: TIBStringField;
    IBQuery1NACH: TFloatField;
    IBQuery1SAL: TFloatField;
    ADOQueryTAB: TADOQuery;
    DSADOQueryTAB: TDataSource;
    ADOQueryOBOR: TADOQuery;
    DSADOQueryOBOR: TDataSource;
    Memo1: TMemo;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel3: TcxLabel;
    ADOCommand1: TADOCommand;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private


    { Private declarations }
  public
  mode:integer;
    { Public declarations }
  end;

var
  Form19: TForm19;
       st1,poslug,tip,path:string;
     MsExcel:Variant;
     period: TDateTime;




implementation

{$R *.dfm}

uses comobj, Unit1, StrUtils, ShellAPI, Unit2;




procedure TForm19.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    st:pchar;
    sss:string;
begin
  poslug:='';
         cxTextEdit2.Text:='';
       cxTextEdit3.Text:='';
       Memo1.Text:='';
       cxTextEdit4.Text:='';
       tip:='';
//       if not VarIsEmpty(MsExcel) then
//         if not MsExcel.Visible then
//         begin
//            MsExcel.Application.Quit;
//            Application.ProcessMessages;
//         end;

  if OpenDialog1.Execute then
  begin
    path:=OpenDialog1.FileName;
    st:=pchar(OpenDialog1.FileName);
    for ns := 0 to Length(OpenDialog1.FileName) - 1 do
    begin
      if st[ns]<>'\' then
         st1:=st1+st[ns]
      else st1:='';
    end;

    cxTextEdit1.Text:=st1;





    MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];

    Form1.IBWID.First;
    while not Form1.IBWID.Eof do
    begin
    sss:= trim(MsExcel.WorkSheets[1].Cells[4,2]);
    if trim(Form1.posl.Values[Form1.IBWIDWID.Value])= sss then
    begin
       poslug:=Form1.IBWIDWID.Value;
       cxTextEdit2.Text:=Form1.IBWIDNAIM.Value;
       cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[1,4];

       Break;
    end;
    Form1.IBWID.Next;
    end;

    Memo1.Text:=sss;


    sss:= trim(MsExcel.WorkSheets[1].Cells[6,3]);
    if  Pos('пільг',sss)<>0 then
    begin
        cxTextEdit4.Text:='Пільга';
        tip:='lg';
    end;
    if  Pos('субс',sss)<>0 then
    begin
        cxTextEdit4.Text:='Субсидія';
        tip:='sub';
    end;




    if (Length(poslug)=0) then
       begin
         ShowMessage('Послуга не знайдена!!!');
         path:='';
         cxTextEdit1.Text:='';
       end;

    if  (Length(tip)=0)then
       begin
         ShowMessage('Тип реєстру не знайдено!!!');
         path:='';
         cxTextEdit1.Text:='';
       end;




              MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;




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
    sum,sumExcel:currency;
    str,nam,sch,klasf,vid_rob,n_kres,gost,dekada,sss:string;
    kolwith,rowh,rowh1:Variant;
    f1:boolean;
    pathDBF:string;
    adostr,cmd:WideString;
    ob,table:TDbf;


begin
  inherited;


  {  with CreateForm.DB do

  begin
    Exclusive:=CB1.Checked;
    TableName:=OpenDialog1.FileName;
    Open; FillSG;
  end;


      }

   if Length(path)=0 then
   begin
     ShowMessage('Виберіть файл');
     exit;
   end;

         MsExcel := CreateOleObject('Excel.Application');
    //    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[path];


      if mode=2 then
   begin
       sss:=LeftStr(st1,2);
//       if (sss<>'RK') or (sss<>'LK') then
       if sss<>'RK' then
         if sss<>'LK' then
         begin
           ShowMessage('Неправильний файл');
          MsExcel.ActiveWorkbook.Close;
          MsExcel.Application.Quit;
          MsExcel := null;
        cxTextEdit1.Text:='';
        st1:='';
          Application.ProcessMessages;
           exit;
         end;
   end;




   Form19.Enabled:=false;
   Form2.Show;

      f1:=true;
      kolst:=7;
   Form2.Label1.Caption:='Обрахування даних';
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=0;
        Form2.cxProgressBar1.Position:=0;
   Application.ProcessMessages;

//        MsExcel.Visible := True;
        while f1 do
        begin
        if (Length(MsExcel.WorkSheets[1].Cells[kolst,4])=0) then
           f1:=False
        else
          begin
          MsExcel.WorkSheets[1].Cells[kolst,9]:='';
          kolst:=kolst+1;
          end;

        end;

   MsExcel.DisplayAlerts := False;






    period:=StrToDate('01.'+MidStr(MsExcel.WorkSheets[1].Cells[1,4],6,2)+'.'+LeftStr(MsExcel.WorkSheets[1].Cells[1,4],4));

   if mode=1 then
   begin
    //  form1.IBWID.First
    //  form1.IBWID.Locate('naim',cxLookupComboBox1.EditValue,[]);
    //  form1.IBWID.Lookup('naim',cxLookupComboBox1.EditValue,'wid');
      IBQuery1.Close;
      if (poslug='sm') then
      begin
      IBQuery1.SQL.Text:='select schet, sum(nach) nach, sum(sal) sal from (select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and (wid=''sm'' or wid=''sn'')) group by schet';
      IBQuery1.ParamByName('dt').AsDate:=period;
      end
      else
      begin
      IBQuery1.SQL.Text:='select trim(schet) as schet, nach+pere+wozw as nach, bgend as sal from vw_obor where period=:dt and wid=:wid';
      IBQuery1.ParamByName('dt').AsDate:=period;
      IBQuery1.ParamByName('wid').Value:=poslug;
      end;
      IBQuery1.Open;


      Form2.Label1.Caption:='Завантаження даних';
      Application.ProcessMessages;
        MsExcel.Visible := True;
        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
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



        MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;


   end;

   if mode=2 then
   begin


        if not DirectoryExists(Form1.PathKvart+'subs') then
             MkDir(Form1.PathKvart+'subs');


        try
      deleteFile(Form1.PathKvart+'subs\subsree.dbf');
      deleteFile(Form1.PathKvart+'subs\slgotree.dbf');
       except
      on E : Exception do
      begin
      ShowMessage('Неможливо видалити файли з '+Form1.PathKvart+'subs.'+E.Message+'  Можливо файли відкриті в іншій програмі!');
      Exit;
      end;

      end;

     Form2.Label1.Caption:='Копіювання файлу реєстру';
     Application.ProcessMessages;

     if tip='sub' then
       CopyFile(PChar(Form1.PathKvart+'dbf\subs.dbf'), PChar(Form1.PathKvart+'subs\subsree.dbf'), false);
     if tip='lg' then
       CopyFile(PChar(Form1.PathKvart+'dbf\slgot.dbf'), PChar(Form1.PathKvart+'subs\slgotree.dbf'), false);







//        if FileExists(data.DatabaseName+format('kvpl%d.dbf',[YM])) then
//        begin
//          copyfile(pchar(data.DatabaseName+format('kvpl%d.dbf',[YM])),
//             pchar(data.DatabaseName+data.TableName),false);
//          break;
//        end;







     try
            Application.ProcessMessages;
            ADOQueryOBOR.Close;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOQueryOBOR.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';






//       table:=TDbf.Create(self);
//
//       if tip='sub' then
//           table.TableName:=Form1.PathKvart+'subs\subsree.dbf';
//
//       if tip='lg' then
//           table.TableName:=Form1.PathKvart+'subs\slgotree.dbf';
//

               if tip='sub' then
                  ADOQueryTAB.SQL.Text:='select * from subsree';
               if tip='lg' then
                  ADOQueryTAB.SQL.Text:='select * from slgotree';



             ADOQueryTAB.Close;
             ADOQueryTAB.ConnectionString:='Provider=VFPOLEDB.1;Data Source='+Form1.PathKvart+'subs\;Mode=ReadWrite;Password="";Collating Sequence=MACHINE;CODEPAGE=866;ANSI=False';
             ADOQueryTAB.Open;





            ADOQueryTAB.Close;
//            ADOConnectionDBF.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'dbf\;Mode=Share Deny Read|Share Deny Write;Extended Properties=dBase IV;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';
            ADOQueryTAB.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'subs\;Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';

            ADOQueryTAB.Open;


            ADOCommand1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Form1.PathKvart+'subs\;Mode=ReadWrite;Extended Properties=dBase III;Persist Security Info=False;Jet OLEDB:Database Locking Mode=0';


//        table.Open;


       if (poslug='sm') then
          ADOQueryOBOR.SQL.Text:='select * from obor where wid=''sm'' or wid=''sn'' and koef<>0'
       else
          ADOQueryOBOR.SQL.Text:='select * from obor where wid='''+poslug+''' or wid='''+poslug+''' and koef<>0';
//
       ADOQueryOBOR.Open;





       except
       on E : Exception do
       begin
        messagedlg('Помилка при підключенні до бази даних!!! - '+E.Message,mtError,[mbCancel],0);
        exit;
       end;
     end;

//            table.First;
//            while not table.Eof do
//            begin
//               table.Edit;
//               table.FieldByName('s_'+poslug).AsFloat:=0;
//               table.Post;
//               table.Next;
//            end;
//
//            if (poslug='sm') then
//            begin
//            table.First;
//              while not table.Eof do
//              begin
//                 table.Edit;
//                 table.FieldByName('s_sn').AsFloat:=0;
//                 table.Post;
//                 table.Next;
//              end;
//
//
//            end;

          Form2.Label1.Caption:='Видалення пустих записів';
          Application.ProcessMessages;

               ADOQueryTAB.Close;

               if tip='sub' then
                  ADOCommand1.CommandText:='delete from subsree where len(schet) is null';
               if tip='lg' then
                  ADOCommand1.CommandText:='delete from slgotree where len(schet) is null';
               ADOCommand1.Execute;

               ADOQueryTAB.Open;








           Form2.Label1.Caption:='Очищення файлу реєстру';
           Application.ProcessMessages;

                   ADOQueryTAB.First;
            while not ADOQueryTAB.Eof do
            begin
               ADOQueryTAB.Edit;
               ADOQueryTAB.FieldByName('s_'+poslug).AsFloat:=0;
               ADOQueryTAB.Post;
               ADOQueryTAB.Next;
            end;

            if (poslug='sm') then
            begin
            ADOQueryTAB.First;
              while not ADOQueryTAB.Eof do
              begin
                 ADOQueryTAB.Edit;
                 ADOQueryTAB.FieldByName('s_sn').AsFloat:=0;
                 ADOQueryTAB.Post;
                 ADOQueryTAB.Next;
              end;


            end;





           Form2.Label1.Caption:='Завантаження даних';
           Application.ProcessMessages;

        Form2.cxProgressBar1.Properties.Min:=0;
        Form2.cxProgressBar1.Properties.Max:=kolst-1;
        Form2.cxProgressBar1.Position:=5;
        for I := 7 to kolst-1 do
        begin
          Form2.cxProgressBar1.Position:=Form2.cxProgressBar1.Position+1;
          Application.ProcessMessages;

//          ADOQueryOBOR.Close;
//          ADOQueryOBOR.CommandText:='select schet from obor where wid='''+cxLookupComboBox1.EditValue+''' and koef=1';

//          sch:=trim(MsExcel.WorkSheets[1].Cells[i,4]);
//          if sch='0113275А' then
             sch:=AnsiLowerCase(trim(MsExcel.WorkSheets[1].Cells[i,4]));

          if i = 204 then
            Application.ProcessMessages;


          sumExcel:=StrToFloat(StringReplace(MsExcel.WorkSheets[1].Cells[i,7],'.',',',[]));


          if sumExcel<>0 then
          begin

            ADOQueryOBOR.First;
//            if ADOQueryOBOR.Locate('wid;schet',VarArrayOf([cxLookupComboBox1.EditValue,sch]),[loPartialKey]) then
            if ADOQueryOBOR.Locate('schet',sch,[]) then
            begin
//               table.First;
//               if not table.Locate('schet',sch,[]) then
//               begin
//                  table.Append;
//                  table.FieldByName('schet').AsString:=sch;
//                  table.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=StrToFloat(MsExcel.WorkSheets[1].Cells[i,7]);
//                  table.Post;
//               end
//               else
//               begin
//                  table.edit;
////                  ADOQueryTAB.FieldByName('schet').AsString:=sch;
//                  table.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=StrToFloat(MsExcel.WorkSheets[1].Cells[i,7]);
//                  table.Post;
//
//               end;

               ADOQueryTAB.First;
               if not ADOQueryTAB.Locate('schet',sch,[]) then
               begin
                  ADOQueryTAB.Append;
                  ADOQueryTAB.FieldByName('schet').AsString:=sch;
                  ADOQueryTAB.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=sumExcel;
                  ADOQueryTAB.Post;
               end
               else
               begin
                  ADOQueryTAB.edit;
//                  ADOQueryTAB.FieldByName('schet').AsString:=sch;
                  ADOQueryTAB.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat:=ADOQueryTAB.FieldByName('s_'+ADOQueryOBOR.FieldByName('wid').AsString).AsFloat+sumExcel;
                  ADOQueryTAB.Post;

               end;


            end
            else
               MsExcel.WorkSheets[1].Cells[i,9]:='рахунок (послуга по рахунку) не знайдено';
          end;
        end;


//        ShellExecute(0, 'open', 'cmd.exe', PChar('/C copy '+Form1.PathDIR+'subs.dbf '+Form1.PathKvart+'dbf\subs.dbf'), nil, SW_HIDE);


     if tip='sub' then
     begin
         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'subs\subsree '+Form1.PathKvart;
         ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_SHOW);
     end;
     if tip='lg' then
     begin
         cmd:=Form1.PathFox+'foxprox.exe -t '+Form1.PathKvart+'subs\slgotree '+Form1.PathKvart;
         ShellExecute(0, 'open', 'cmd.exe', PChar('/C '+cmd), nil, SW_SHOW);
     end;
     Sleep(5000);


        ADOQueryTAB.Close;
        ADOQueryOBOR.Close;
//        table.Close;
//        table.Free;


//        MsExcel.Visible := True;

        MsExcel.ActiveWorkbook.save;
        MsExcel.ActiveWorkbook.Close;
        MsExcel.Application.Quit;
        MsExcel := null;
        Application.ProcessMessages;


   end;

//     if tip='sub' then
//       CopyFile(PChar(Form1.PathDIR+'subs.dbf'), PChar(Form1.PathKvart+'dbf\subs.dbf'), false);
//     if tip='lg' then
//       CopyFile(PChar(Form1.PathDIR+'slgot.dbf'), PChar(Form1.PathKvart+'dbf\slgot.dbf'), false);

      cxTextEdit1.Text:='';
      st1:='';
    //  MsExcel.free;
      form2.Close;
      ShowMessage('Завантаження закінчено');
      Form19.Enabled:=true;
end;

end.
